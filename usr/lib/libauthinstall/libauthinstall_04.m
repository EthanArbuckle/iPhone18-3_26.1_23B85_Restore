id MantaMCURestoreInfoCoreCreateRequest(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = 0;
  v77 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v72 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_18;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v72 = 0;
  v13 = 0;
  v14 = 0;
  if (!a2)
  {
    goto LABEL_18;
  }

  v5 = a1;
  v16 = [[MRULogHelper alloc] initWithOptions:v5 logFunction:a2 logContext:a3];
  v7 = [v5 objectForKeyedSubscript:@"DeviceInfo"];
  v72 = v16;
  if (!v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
LABEL_17:
    v14 = 0;
    goto LABEL_18;
  }

  v13 = [v5 objectForKeyedSubscript:@"FirmwareData"];
  if (!v13)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
LABEL_16:
    v11 = 0;
    v12 = 0;
    goto LABEL_17;
  }

  v17 = [v7 objectForKeyedSubscript:@"PersonalizationInfoArray"];
  v10 = v17;
  if (!v17)
  {
    v8 = 0;
    v9 = 0;
    goto LABEL_16;
  }

  [v17 firstObject];
  v71 = v73 = 0;
  v9 = [[MRUPersonalizationInfo alloc] initWithOptions:v71 error:&v73];
  v18 = v73;
  v14 = v18;
  if (!v9)
  {
    v11 = 0;
    v12 = 0;
    v8 = v71;
    goto LABEL_18;
  }

  v70 = v18;
  v19 = [v7 objectForKeyedSubscript:@"LocalSigningID"];
  if (v19)
  {
    v12 = v19;
  }

  else
  {
    v12 = MEMORY[0x29EDB8EA8];
  }

  if (([v12 BOOLValue] & 1) == 0)
  {
    v11 = [MEMORY[0x29EDB8E00] dictionary];
    v23 = [(MRUPersonalizationInfo *)v9 ticketName];
    v24 = [@"@" stringByAppendingString:v23];
    [v11 setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:v24];

    v25 = MEMORY[0x29EDBA070];
    v63 = [(MRUPersonalizationInfo *)v9 hardwareInfo];
    v26 = [v25 numberWithUnsignedInt:{objc_msgSend(v63, "boardID")}];
    v27 = [(MRUPersonalizationInfo *)v9 boardIDPropertyName];
    [v11 setObject:v26 forKeyedSubscript:v27];

    v28 = MEMORY[0x29EDBA070];
    v64 = [(MRUPersonalizationInfo *)v9 hardwareInfo];
    v29 = [v28 numberWithUnsignedInt:{objc_msgSend(v64, "chipID")}];
    v30 = [(MRUPersonalizationInfo *)v9 chipIDPropertyName];
    [v11 setObject:v29 forKeyedSubscript:v30];

    v31 = MEMORY[0x29EDBA070];
    v65 = [(MRUPersonalizationInfo *)v9 hardwareInfo];
    v32 = [v31 numberWithUnsignedLongLong:{objc_msgSend(v65, "ecid")}];
    v33 = [(MRUPersonalizationInfo *)v9 ecidPropertyName];
    [v11 setObject:v32 forKeyedSubscript:v33];

    v34 = [(MRUPersonalizationInfo *)v9 nonce];
    v35 = [(MRUPersonalizationInfo *)v9 noncePropertyName];
    [v11 setObject:v34 forKeyedSubscript:v35];

    v66 = [(MRUPersonalizationInfo *)v9 hardwareInfo];
    if ([v66 productionStatus])
    {
      v36 = MEMORY[0x29EDB8EB0];
    }

    else
    {
      v36 = MEMORY[0x29EDB8EA8];
    }

    v37 = [(MRUPersonalizationInfo *)v9 productionModePropertyName];
    [v11 setObject:v36 forKeyedSubscript:v37];

    v38 = MEMORY[0x29EDBA070];
    v67 = [(MRUPersonalizationInfo *)v9 hardwareInfo];
    v39 = [v38 numberWithUnsignedInt:{objc_msgSend(v67, "securityDomain")}];
    v40 = [(MRUPersonalizationInfo *)v9 securityDomainPropertyName];
    [v11 setObject:v39 forKeyedSubscript:v40];

    v68 = [(MRUPersonalizationInfo *)v9 hardwareInfo];
    if ([v68 securityMode])
    {
      v41 = MEMORY[0x29EDB8EB0];
    }

    else
    {
      v41 = MEMORY[0x29EDB8EA8];
    }

    v42 = [(MRUPersonalizationInfo *)v9 securityModePropertyName];
    [v11 setObject:v41 forKeyedSubscript:v42];

    v43 = [(MRUPersonalizationInfo *)v9 objectName];
    v69 = v43;
    if ([v43 isEqualToString:@"RestoreRTKitOS"])
    {
      v44 = &kMantaFTABSubfileRRKO;
    }

    else
    {
      if (![v43 isEqualToString:@"RTKitOS"])
      {
        goto LABEL_37;
      }

      v44 = &kMantaFTABSubfileRKOS;
    }

    v45 = *v44;
    if (v45)
    {
      v46 = v45;
      [(MRULogHelper *)v72 verboseLog:@"[%@]: %@ is FTAB subfile with tag '%@', extracting\n", @"MantaMRI", v43, v45];
      v47 = [[MantaFTABFile alloc] initWithData:v13];
      if (v47)
      {
        v48 = v47;
        v62 = v46;
        v49 = [(MantaFTABFile *)v47 subfileWithTag:v46];
        if (v49)
        {
          v50 = v49;
          v51 = [MEMORY[0x29EDB8DA0] dataWithBytes:objc_msgSend(v49 length:{"dataPointer"), objc_msgSend(v49, "dataLength")}];

          [(MRULogHelper *)v72 verboseLog:@"[%@]: Extracted %@ from FTAB", @"MantaMRI", v69];
          v13 = v51;
LABEL_38:
          ccsha384_di();
          [v13 length];
          [v13 bytes];
          ccdigest();
          v74[0] = @"Digest";
          v61 = [MEMORY[0x29EDB8DA0] dataWithBytes:v76 length:48];
          v75[0] = v61;
          v74[1] = @"EPRO";
          v60 = [(MRUPersonalizationInfo *)v9 hardwareInfo];
          v52 = [v60 productionStatus];
          v53 = MEMORY[0x29EDB8EA8];
          v54 = MEMORY[0x29EDB8EB0];
          if (v52)
          {
            v55 = MEMORY[0x29EDB8EB0];
          }

          else
          {
            v55 = MEMORY[0x29EDB8EA8];
          }

          v75[1] = v55;
          v74[2] = @"ESEC";
          v56 = [(MRUPersonalizationInfo *)v9 hardwareInfo];
          if ([v56 securityMode])
          {
            v57 = v54;
          }

          else
          {
            v57 = v53;
          }

          v74[3] = @"Trusted";
          v75[2] = v57;
          v75[3] = v54;
          v58 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v75 forKeys:v74 count:4];
          v59 = [(MRUPersonalizationInfo *)v9 tag];
          [v11 setObject:v58 forKeyedSubscript:v59];

          v11 = v11;
          v20 = v11;
LABEL_20:
          v16 = v72;
          goto LABEL_21;
        }
      }

      v14 = v70;
      v8 = v71;
LABEL_18:
      v70 = v14;
      v71 = v8;
      v20 = 0;
      if (a4)
      {
        *a4 = 0;
      }

      goto LABEL_20;
    }

LABEL_37:
    v62 = 0;
    goto LABEL_38;
  }

  v11 = 0;
  v20 = MEMORY[0x29EDB8EA0];
LABEL_21:

  v21 = *MEMORY[0x29EDCA608];
  return v20;
}

uint64_t RoseRestoreHost::create@<X0>(RoseRestoreHost *this@<X0>, const __CFString *a2@<X1>, ACFURestoreHost **a3@<X8>)
{
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: RoseUpdater Version: %s\n", v8, v9, v10, v11, v12, "RoseRestoreHost");
  v13 = operator new(0xF8uLL);
  ACFURestoreHost::ACFURestoreHost(v13);
  *v13 = &unk_2A1EE8AD0;
  *(v13 + 29) = 0;
  *(v13 + 30) = 0;
  *a3 = v13;
  result = RoseRestoreHost::init(v13, this, a2);
  if ((result & 1) == 0)
  {
    *a3 = 0;
    v15 = *(*v13 + 24);

    return v15(v13);
  }

  return result;
}

void sub_2984F3454(_Unwind_Exception *a1)
{
  *v1 = 0;
  (*(*v2 + 24))(v2);
  _Unwind_Resume(a1);
}

__CFDictionary *RoseRestoreHost::createRequest(ACFULogging *a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 17))
  {
    RoseRestoreHost::createRequest(a1);
    return 0;
  }

  else
  {
    v4 = *(a2 + 8);
    v8 = *a2;
    v9 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = ACFURestoreHost::createRequest(a1, &v8, a3);
    v6 = v9;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (v5)
    {
      if (*(a3 + 16) == 1)
      {
        CFDictionaryRemoveValue(v5, @"Rap,RestoreRTKitOS");
      }
    }

    else
    {
      RoseRestoreHost::createRequest(v6);
    }
  }

  return v5;
}

void sub_2984F3538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void RoseRestoreHost::~RoseRestoreHost(RoseRestoreHost *this)
{
  *this = &unk_2A1EE8AD0;
  v2 = *(this + 30);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  ACFURestoreHost::~ACFURestoreHost(this);
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
  v42 = xmmword_29EE9C0B8;
  v43 = *&off_29EE9C0C8;
  std::vector<__CFString const*>::__assign_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(v5 + 5, &v42, &v44, 4uLL);
  if (RoseCapabilities::supportsRTKitIOConfig(*(v5 + 29)))
  {
    std::vector<__CFString const*>::push_back[abi:ne200100](v5 + 40, &kRoseRtkitosICNF);
  }

  if (RoseCapabilities::requiresSeparateFirmwareTargetForCertification(*(v5 + 29)))
  {
    std::vector<__CFString const*>::push_back[abi:ne200100](v5 + 40, &kRoseRestoreRtkitos);
  }

  v42 = xmmword_29EE9C0E8;
  v43 = *&off_29EE9C0F8;
  v44 = xmmword_29EE9C108;
  v45 = @"Rap,SecurityDomain";
  std::vector<__CFString const*>::__assign_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(v5 + 8, &v42, &v46, 7uLL);
  *&v42 = @"@Rap,Ticket";
  std::vector<__CFString const*>::__assign_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(v5 + 11, &v42, &v42 + 8, 1uLL);
  *&v42 = @"Rap,Ticket";
  std::vector<__CFString const*>::__assign_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(v5 + 14, &v42, &v42 + 8, 1uLL);
  v42 = xmmword_29EE9C120;
  v43 = *&off_29EE9C130;
  v44 = xmmword_29EE9C140;
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

const void *RoseRestoreHost::copyFirmwareUpdater(uint64_t a1, const __CFDictionary *a2, int a3)
{
  GetRoseTatsuTagToFileNameMap(&v202);
  v5 = std::map<__CFString const*,std::string>::at(&v202, &kRoseRestoreRtkitos);
  if (*(v5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v203, *v5, v5[1]);
  }

  else
  {
    v6 = *v5;
    v203.__r_.__value_.__r.__words[2] = v5[2];
    *&v203.__r_.__value_.__l.__data_ = v6;
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v202, v202.__r_.__value_.__l.__size_);
  GetRoseTatsuTagToFileNameMap(&v201);
  v7 = std::map<__CFString const*,std::string>::at(&v201, &kRoseRtkitos);
  if (*(v7 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v202, *v7, v7[1]);
  }

  else
  {
    v8 = *v7;
    v202.__r_.__value_.__r.__words[2] = v7[2];
    *&v202.__r_.__value_.__l.__data_ = v8;
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v201, v201.__r_.__value_.__l.__size_);
  GetRoseTatsuTagToFileNameMap(&v200);
  v9 = std::map<__CFString const*,std::string>::at(&v200, &kRoseSwDsp1);
  if (*(v9 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v201, *v9, v9[1]);
  }

  else
  {
    v10 = *v9;
    v201.__r_.__value_.__r.__words[2] = v9[2];
    *&v201.__r_.__value_.__l.__data_ = v10;
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v200, v200.__r_.__value_.__l.__size_);
  GetRoseTatsuTagToFileNameMap(&v198);
  v11 = std::map<__CFString const*,std::string>::at(&v198, &kRoseRtkitosICNF);
  if (*(v11 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v200, *v11, v11[1]);
  }

  else
  {
    v12 = *v11;
    v200.__r_.__value_.__r.__words[2] = v11[2];
    *&v200.__r_.__value_.__l.__data_ = v12;
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v198, *(&v198 + 1));
  Value = CFDictionaryGetValue(*(a1 + 16), @"DeviceInfo");
  v14 = Value;
  if (!Value || (v15 = CFGetTypeID(Value), v15 != CFDictionaryGetTypeID()))
  {
    std::string::basic_string[abi:ne200100]<0>(v196, "copyFirmwareUpdater: failed to get device info list");
    v102 = ACFUError::addError(a1 + 24, v196, 0xFA1uLL, 0);
    if (v197 < 0)
    {
      operator delete(v196[0]);
    }

    LogInstance = ACFULogging::getLogInstance(v102);
    v101 = "%s::%s: failed to get device info list\n";
    goto LABEL_110;
  }

  v16 = CFDictionaryGetValue(v14, @"Rap,RestoreBootNonce");
  if (v16)
  {
    TypeID = CFDataGetTypeID();
    v18 = CFGetTypeID(v16);
    if (TypeID == v18)
    {
      v19 = ACFULogging::getLogInstance(v18);
      ACFULogging::handleMessage(v19, 0, "%s::%s: Restore boot nonce present!\n", v20, v21, v22, v23, v24, "RoseRestoreHost");
      if (CFDataGetLength(v16) != 8)
      {
        std::string::basic_string[abi:ne200100]<0>(v194, "copyFirmwareUpdater: nonce is of unexpected size");
        v163 = ACFUError::addError(a1 + 24, v194, 0x3EDuLL, 0);
        if (v195 < 0)
        {
          operator delete(v194[0]);
        }

        LogInstance = ACFULogging::getLogInstance(v163);
        v101 = "%s::%s: nonce is of unexpected size\n";
        goto LABEL_110;
      }

      v16 = *CFDataGetBytePtr(v16);
    }

    else
    {
      v16 = 0;
    }
  }

  v25 = CFDictionaryGetValue(v14, @"Rap,ChipRev");
  v26 = CFDictionaryGetValue(v14, @"Rap,BoardID");
  if (!v25 || (v27 = v26) == 0 || (v28 = CFDataGetTypeID(), v28 != CFGetTypeID(v25)) || (v29 = CFDataGetTypeID(), v29 != CFGetTypeID(v27)))
  {
    std::string::basic_string[abi:ne200100]<0>(v192, "copyFirmwareUpdater: unexpected device info parameters");
    v94 = ACFUError::addError(a1 + 24, v192, 0x3EDuLL, 0);
    if (v193 < 0)
    {
      operator delete(v192[0]);
    }

    LogInstance = ACFULogging::getLogInstance(v94);
    v101 = "%s::%s: unexpected device info parameters\n";
    goto LABEL_110;
  }

  if (CFDataGetLength(v25) != 2 || CFDataGetLength(v27) != 2)
  {
    std::string::basic_string[abi:ne200100]<0>(v190, "copyFirmwareUpdater: bad device info parameters");
    v103 = ACFUError::addError(a1 + 24, v190, 0x3EDuLL, 0);
    if (v191 < 0)
    {
      operator delete(v190[0]);
    }

    LogInstance = ACFULogging::getLogInstance(v103);
    v101 = "%s::%s: bad device info parameters\n";
LABEL_110:
    v47 = 0;
    v77 = 0;
    v59 = 0;
    ACFULogging::handleMessage(LogInstance, 2u, v101, v96, v97, v98, v99, v100, "RoseRestoreHost");
    v85 = 0;
    goto LABEL_86;
  }

  v30 = *CFDataGetBytePtr(v25);
  BytePtr = CFDataGetBytePtr(v27);
  v32 = *BytePtr;
  v33 = ACFULogging::getLogInstance(BytePtr);
  ACFULogging::handleMessage(v33, 0, "%s::%s: Rose Hardware Info (Board ID: 0x%04x, Chip Revision: 0x%04x)\n", v34, v35, v36, v37, v38, "RoseRestoreHost");
  v40 = ACFULogging::getLogInstance(v39);
  std::string::basic_string[abi:ne200100]<0>(&v188, "RoseRestoreHost");
  v41 = std::string::append(&v188, "::");
  v42 = *&v41->__r_.__value_.__l.__data_;
  v189.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
  *&v189.__r_.__value_.__l.__data_ = v42;
  v41->__r_.__value_.__l.__size_ = 0;
  v41->__r_.__value_.__r.__words[2] = 0;
  v41->__r_.__value_.__r.__words[0] = 0;
  v43 = std::string::append(&v189, "copyFirmwareUpdater");
  v44 = *&v43->__r_.__value_.__l.__data_;
  v199 = v43->__r_.__value_.__r.__words[2];
  v198 = v44;
  v43->__r_.__value_.__l.__size_ = 0;
  v43->__r_.__value_.__r.__words[2] = 0;
  v43->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(v40, &v198, 0, "Firmware File Dictionary: ", a2);
  if (SHIBYTE(v199) < 0)
  {
    operator delete(v198);
  }

  if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v189.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v188.__r_.__value_.__l.__data_);
  }

  v45 = ACFURestoreHost::copyDataFromFileDictionary(@"Rap,RTKitOS", a2, a3);
  cf = v45;
  if (v45)
  {
    v46 = CFGetTypeID(v45);
    if (v46 == CFDataGetTypeID())
    {
      ACFUFTABFile::create(cf, 0, v30, &v198);
      v47 = v198;
      if (!v198)
      {
        std::string::basic_string[abi:ne200100]<0>(v184, "copyFirmware: failed to init bundle firmware");
        v134 = ACFUError::addError(a1 + 24, v184, 0xFA0uLL, 0);
        if (v185 < 0)
        {
          operator delete(v184[0]);
        }

        v135 = ACFULogging::getLogInstance(v134);
        v47 = 0;
        v77 = 0;
        v59 = 0;
        ACFULogging::handleMessage(v135, 2u, "%s::%s: failed to init bundle firmware\n", v136, v137, v138, v139, v140, "RoseRestoreHost");
        v84 = 0;
        v57 = 0;
        v75 = 0;
        v85 = 0;
        goto LABEL_80;
      }

      if (!(*(*v198 + 16))(v198, &v201) || ((*(*v47 + 16))(v47, &v202) & 1) == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(v182, "copyFirmware: bundle firmware specified is invalid");
        v111 = ACFUError::addError(a1 + 24, v182, 0x3E8uLL, 0);
        if (v183 < 0)
        {
          operator delete(v182[0]);
        }

        v112 = ACFULogging::getLogInstance(v111);
        v77 = 0;
        v59 = 0;
        ACFULogging::handleMessage(v112, 2u, "%s::%s: bundle firmware specified is invalid\n", v113, v114, v115, v116, v117, "RoseRestoreHost");
        v84 = 0;
        v57 = 0;
        v75 = 0;
        v85 = 0;
        goto LABEL_80;
      }

      if (RoseCapabilities::supportsRTKitIOConfig(*(a1 + 232)))
      {
        v48 = (*(*v47 + 16))(v47, &v200);
        if ((v48 & 1) == 0)
        {
          v49 = ACFULogging::getLogInstance(v48);
          ACFULogging::handleMessage(v49, 3u, "%s::%s: copyfirmware: ICNF missing in bundle firmware\n", v50, v51, v52, v53, v54, "RoseRestoreHost");
        }
      }

      v55 = CFDictionaryContainsKey(a2, *(a1 + 8));
      if (v55)
      {
        v56 = ACFURestoreHost::copyDataFromFileDictionary(*(a1 + 8), a2, a3);
        v57 = v56;
        if (!v56 || (v58 = CFGetTypeID(v56), v58 != CFDataGetTypeID()))
        {
          std::string::basic_string[abi:ne200100]<0>(v180, "copyFirmware: rooted override data unavailable");
          v125 = ACFUError::addError(a1 + 24, v180, 0x3E8uLL, 0);
          if (v181 < 0)
          {
            operator delete(v180[0]);
          }

          v61 = ACFULogging::getLogInstance(v125);
          v67 = "%s::%s: rooted override data unavailable\n";
          goto LABEL_124;
        }

        ACFUFTABFile::create(v57, 0, v30, &v198);
        v59 = v198;
        if (!v198)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "copyFirmware: failed to init ftab file object");
          v60 = ACFUError::addError(a1 + 24, __p, 0xFA0uLL, 0);
          if (v179 < 0)
          {
            operator delete(__p[0]);
          }

          v61 = ACFULogging::getLogInstance(v60);
          v67 = "%s::%s: failed to init ftab file object\n";
LABEL_124:
          v77 = 0;
          v59 = 0;
          ACFULogging::handleMessage(v61, 2u, v67, v62, v63, v64, v65, v66, "RoseRestoreHost");
          v84 = 0;
          v75 = 0;
          v85 = 0;
LABEL_80:
          CFRelease(cf);
          if (v75)
          {
            CFRelease(v75);
          }

          if (v57)
          {
            CFRelease(v57);
          }

          if (v84)
          {
            CFRelease(v84);
          }

          goto LABEL_86;
        }
      }

      else
      {
        v68 = ACFULogging::getLogInstance(v55);
        v59 = 0;
        ACFULogging::handleMessage(v68, 0, "%s::%s: no firmware override specified\n", v69, v70, v71, v72, v73, "RoseRestoreHost");
        v57 = 0;
      }

      if (CFDictionaryContainsKey(a2, @"Rap,RestoreRTKitOS"))
      {
        v74 = ACFURestoreHost::copyDataFromFileDictionary(@"Rap,RestoreRTKitOS", a2, a3);
        v75 = v74;
        if (v74 && (v76 = CFGetTypeID(v74), v76 == CFDataGetTypeID()))
        {
          ACFUFTABFile::create(v75, 0, v30, &v198);
          v77 = v198;
          if (v198)
          {
            if (((*(*v198 + 16))(v198, &v203) & 1) == 0)
            {
              std::string::basic_string[abi:ne200100]<0>(v172, "copyFirmware: bundle cert firmware doesn't have rrko");
              v142 = ACFUError::addError(a1 + 24, v172, 0x3E8uLL, 0);
              if (v173 < 0)
              {
                operator delete(v172[0]);
              }

              v143 = ACFULogging::getLogInstance(v142);
              ACFULogging::handleMessage(v143, 2u, "%s::%s: bundle cert firmware doesn't have 'rrko'\n", v144, v145, v146, v147, v148, "RoseRestoreHost");
              goto LABEL_141;
            }

            if (v59)
            {
              goto LABEL_54;
            }

            goto LABEL_61;
          }

          std::string::basic_string[abi:ne200100]<0>(v174, "copyFirmware: failed to init certification firmware");
          v141 = ACFUError::addError(a1 + 24, v174, 0xFA0uLL, 0);
          if (v175 < 0)
          {
            operator delete(v174[0]);
          }

          v127 = ACFULogging::getLogInstance(v141);
          v133 = "%s::%s: failed to init certification firmware\n";
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(v176, "copyFirmware: rrko bundle data unavailable");
          v126 = ACFUError::addError(a1 + 24, v176, 0x3E8uLL, 0);
          if (v177 < 0)
          {
            operator delete(v176[0]);
          }

          v127 = ACFULogging::getLogInstance(v126);
          v133 = "%s::%s: rrko bundle data unavailable\n";
        }

        v77 = 0;
        ACFULogging::handleMessage(v127, 2u, v133, v128, v129, v130, v131, v132, "RoseRestoreHost");
        v84 = 0;
        v85 = 0;
        goto LABEL_80;
      }

      v77 = 0;
      v75 = 0;
      if (v59)
      {
LABEL_54:
        v78 = (*v59)[2](v59, &v203);
        v79 = (*v59)[2](v59, &v202);
        if (v78)
        {
          v80 = v59;
        }

        else
        {
          v80 = v77;
        }

        if (v79)
        {
          v81 = v59;
        }

        else
        {
          v81 = v47;
        }

        goto LABEL_62;
      }

LABEL_61:
      v80 = v77;
      v81 = v47;
LABEL_62:
      v82 = (*(*v81 + 16))(v81, &v203);
      if (v80)
      {
        v83 = v82;
      }

      else
      {
        v83 = 1;
      }

      if (v83)
      {
        v84 = 0;
LABEL_69:
        if (v16)
        {
          ACFUFTABFile::setBootNonce(v81, v16);
        }

        v85 = (*(*v81 + 40))(v81);
        if (v85 && (v86 = CFDataGetTypeID(), v87 = CFGetTypeID(v85), v86 == v87))
        {
          v88 = ACFULogging::getLogInstance(v87);
          std::string::basic_string[abi:ne200100]<0>(&v188, "RoseRestoreHost");
          v89 = std::string::append(&v188, "::");
          v90 = *&v89->__r_.__value_.__l.__data_;
          v189.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
          *&v189.__r_.__value_.__l.__data_ = v90;
          v89->__r_.__value_.__l.__size_ = 0;
          v89->__r_.__value_.__r.__words[2] = 0;
          v89->__r_.__value_.__r.__words[0] = 0;
          v91 = std::string::append(&v189, "copyFirmwareUpdater");
          v92 = *&v91->__r_.__value_.__l.__data_;
          v199 = v91->__r_.__value_.__r.__words[2];
          v198 = v92;
          v91->__r_.__value_.__l.__size_ = 0;
          v91->__r_.__value_.__r.__words[2] = 0;
          v91->__r_.__value_.__r.__words[0] = 0;
          ACFULogging::handleMessageCFType(v88, &v198, 3, "outData", v85);
          if (SHIBYTE(v199) < 0)
          {
            operator delete(v198);
          }

          if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v189.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v188.__r_.__value_.__l.__data_);
          }

          (*(*v81 + 24))(v81);
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(v166, "copyFirmware: could not create output data");
          v118 = ACFUError::addError(a1 + 24, v166, 0x3E8uLL, 0);
          if (v167 < 0)
          {
            operator delete(v166[0]);
          }

          v119 = ACFULogging::getLogInstance(v118);
          ACFULogging::handleMessage(v119, 2u, "%s::%s: could not create output data\n", v120, v121, v122, v123, v124, "RoseRestoreHost");
        }

        goto LABEL_80;
      }

      v84 = (**v80)(v80, &v203);
      if (v84)
      {
        if (ACFUFTABFile::addNewFileToFTAB(v81, &v203, v84))
        {
          goto LABEL_69;
        }

        std::string::basic_string[abi:ne200100]<0>(v168, "copyFirmware: could not add 'rrko' object to final ftab");
        v156 = ACFUError::addError(a1 + 24, v168, 0x3E8uLL, 0);
        if (v169 < 0)
        {
          operator delete(v168[0]);
        }

        v157 = ACFULogging::getLogInstance(v156);
        ACFULogging::handleMessage(v157, 2u, "%s::%s: could not add 'rrko' object to final ftab\n", v158, v159, v160, v161, v162, "RoseRestoreHost");
LABEL_145:
        v85 = 0;
        goto LABEL_80;
      }

      std::string::basic_string[abi:ne200100]<0>(v170, "copyFirmware: could not get 'rrko' object from ftab");
      v149 = ACFUError::addError(a1 + 24, v170, 0x3E8uLL, 0);
      if (v171 < 0)
      {
        operator delete(v170[0]);
      }

      v150 = ACFULogging::getLogInstance(v149);
      ACFULogging::handleMessage(v150, 2u, "%s::%s: could not get 'rrko' object from ftab\n", v151, v152, v153, v154, v155, "RoseRestoreHost");
LABEL_141:
      v84 = 0;
      goto LABEL_145;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(v186, "copyFirmware: rkos bundle data unavailable");
  v104 = ACFUError::addError(a1 + 24, v186, 0x3E8uLL, 0);
  if (v187 < 0)
  {
    operator delete(v186[0]);
  }

  v105 = ACFULogging::getLogInstance(v104);
  ACFULogging::handleMessage(v105, 2u, "%s::%s: rkos bundle data unavailable\n", v106, v107, v108, v109, v110, "RoseRestoreHost");
  v84 = 0;
  v57 = 0;
  v75 = 0;
  v85 = 0;
  v59 = 0;
  v77 = 0;
  v47 = 0;
  if (cf)
  {
    goto LABEL_80;
  }

LABEL_86:
  if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v200.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v201.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v201.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v202.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v202.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v203.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v203.__r_.__value_.__l.__data_);
  }

  if (v59)
  {
    ((*v59)[7])(v59);
  }

  if (v77)
  {
    ((*v77)[7])(v77);
  }

  if (v47)
  {
    (*(*v47 + 56))(v47);
  }

  return v85;
}

void sub_2984F4C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p, uint64_t a62, int a63)
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

void sub_2984F5230(_Unwind_Exception *a1, uint64_t a2, ...)
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

void RoseRestoreHost::createRequest(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: security mode demotion disallowed for Rose\n", v2, v3, v4, v5, v6, "RoseRestoreHost");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create output request dictionary\n", v2, v3, v4, v5, v6, "RoseRestoreHost");
}

void RoseRestoreHost::init(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Bad chip ID size\n", v2, v3, v4, v5, v6, "RoseRestoreHost");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to initialize base class\n", v2, v3, v4, v5, v6, "RoseRestoreHost");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create capabilities\n", v2, v3, v4, v5, v6, "RoseRestoreHost");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: No chip ID\n", v2, v3, v4, v5, v6, "RoseRestoreHost");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: No device info\n", v2, v3, v4, v5, v6, "RoseRestoreHost");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Bad options\n", v2, v3, v4, v5, v6, "RoseRestoreHost");
}

uint64_t RoseUpdaterGetTags(ACFULogging *a1, void (*a2)(void *, const char *), void *a3, CFErrorRef *a4)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  inited = ACFULogging::initLog(LogInstance, a1, a2, a3);
  if (inited)
  {
    RoseUpdaterGetTags_cold_1(inited, a4);
    return 0;
  }

  RoseRestoreHost::create(a1, @"RoseRestoreInfo", &v19);
  v10 = v19;
  if (!v19)
  {
    RoseUpdaterGetTags_cold_2(a4);
    return 0;
  }

  v11 = (**v19)(v19);
  if (!v11)
  {
    v13 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v13, 2u, "%s::%s: failed to get tags\n", v14, v15, v16, v17, v18, "RoseRestoreInfo");
    *a4 = ACFURestoreHost::getError(v10);
  }

  (*(*v10 + 24))(v10);
  return v11;
}

const __CFData *RoseUpdaterCopyFirmware(ACFULogging *a1, void (*a2)(void *, const char *), void *a3, CFErrorRef *a4)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  inited = ACFULogging::initLog(LogInstance, a1, a2, a3);
  if (inited)
  {
    RoseUpdaterCopyFirmware_cold_1(inited, a4);
    return 0;
  }

  RoseRestoreHost::create(a1, @"RoseRestoreInfo", &v19);
  v10 = v19;
  if (!v19)
  {
    RoseUpdaterCopyFirmware_cold_2(a4);
    return 0;
  }

  v11 = ACFURestoreHost::copyFirmware(v19);
  if (!v11)
  {
    v13 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v13, 2u, "%s::%s: failed to copy firmware\n", v14, v15, v16, v17, v18, "RoseRestoreInfo");
    *a4 = ACFURestoreHost::getError(v10);
  }

  (*(*v10 + 24))(v10);
  return v11;
}

uint64_t RoseUpdaterCreateRequest(const __CFDictionary *a1, void (*a2)(void *, const char *), void *a3, CFErrorRef *a4)
{
  v8 = ACFUError::ACFUError(v75, @"RoseRestoreInfo");
  v73 = 0;
  v74 = 0;
  v72 = 0;
  v71[0] = @"Rap,ProductionMode";
  v71[1] = @"Rap,SecurityMode";
  LogInstance = ACFULogging::getLogInstance(v8);
  inited = ACFULogging::initLog(LogInstance, a1, a2, a3);
  v11 = inited;
  if (inited)
  {
    v43 = ACFULogging::getLogInstance(inited);
    ACFULogging::handleMessage(v43, 2u, "%s::%s: failed to init logging\n", v44, v45, v46, v47, v48, "RoseRestoreInfo");
    v49 = v11;
  }

  else
  {
    ACFUCommon::parseDebugArgs(a1, "demoteProd", &v70);
    v13 = v70;
    if (HIDWORD(v70) != 4006)
    {
      if (HIDWORD(v70))
      {
        v56 = ACFULogging::getLogInstance(v12);
        ACFULogging::handleMessage(v56, 2u, "%s::%s: failed to parse debug arguments\n", v57, v58, v59, v60, v61, "RoseRestoreInfo");
        v49 = v13 >> 32;
        goto LABEL_31;
      }

      LOBYTE(v72) = v70 == 1;
    }

    v14 = RoseRestoreHost::create(a1, @"RoseRestoreInfo", &v70);
    v15 = v70;
    if (v70)
    {
      Value = CFDictionaryGetValue(a1, @"FirmwareData");
      v17 = Value;
      if (Value && (TypeID = CFDataGetTypeID(), Value = CFGetTypeID(v17), TypeID == Value))
      {
        GetRoseTatsuTagToFileNameMap(v68);
        RTKitFirmware::create(v68, v17, 0, &v70);
        std::shared_ptr<RTKitFirmware>::operator=[abi:ne200100]<RTKitFirmware,std::default_delete<RTKitFirmware>,0>(&v73, &v70);
        v19 = v70;
        v70 = 0;
        if (v19)
        {
          (*(*v19 + 56))(v19);
        }

        std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v68, v69);
        if (v73)
        {
          v64 = v73;
          v65 = v74;
          if (v74)
          {
            atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v21 = (*(*v15 + 8))(v15, &v64, v71);
          v22 = v65;
          if (v65)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v65);
          }

          if (v21)
          {
            goto LABEL_23;
          }

          v23 = ACFULogging::getLogInstance(v22);
          ACFULogging::handleMessage(v23, 2u, "%s::%s: failed to create request dict\n", v24, v25, v26, v27, v28, "RoseRestoreInfo");
          std::string::basic_string[abi:ne200100]<0>(__p, "RoseUpdaterCreateRequest: failed to create request dict");
          ACFUError::addError(v75, __p, 0xFA1uLL, 0);
          if (v63 < 0)
          {
            operator delete(__p[0]);
          }

          Error = ACFURestoreHost::getError(v15);
        }

        else
        {
          v30 = ACFULogging::getLogInstance(v20);
          ACFULogging::handleMessage(v30, 2u, "%s::%s: Failed to find firmware\n", v31, v32, v33, v34, v35, "RoseRestoreInfo");
          std::string::basic_string[abi:ne200100]<0>(v66, "RoseUpdaterCreateRequest: failed to open firmware");
          ACFUError::addError(v75, v66, 0x3E8uLL, 0);
          if (v67 < 0)
          {
            operator delete(v66[0]);
          }

          Error = ACFUError::getCFError(v75);
        }

        v21 = 0;
        *a4 = Error;
      }

      else
      {
        v37 = ACFULogging::getLogInstance(Value);
        ACFULogging::handleMessage(v37, 0, "%s::%s: Invalid or no firmware file present in restore options\n", v38, v39, v40, v41, v42, "RoseRestoreInfo");
        v21 = 0;
      }

LABEL_23:
      (*(*v15 + 24))(v15);
      goto LABEL_24;
    }

    v50 = ACFULogging::getLogInstance(v14);
    ACFULogging::handleMessage(v50, 2u, "%s::%s: failed to create host object\n", v51, v52, v53, v54, v55, "RoseRestoreInfo");
    v49 = 4000;
  }

LABEL_31:
  v21 = 0;
  *a4 = CFErrorCreate(*MEMORY[0x29EDB8ED8], @"RoseRestoreInfo", v49, 0);
LABEL_24:
  if (v74)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v74);
  }

  ACFUError::~ACFUError(v75);
  return v21;
}

void sub_2984F5B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  (*(*v27 + 24))(v27);
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  ACFUError::~ACFUError((v28 - 48));
  _Unwind_Resume(a1);
}

__CFDictionary *RoseUpdaterGetSharedInfo(const __CFDictionary *a1, void (*a2)(void *, const char *), void *a3, CFErrorRef *a4)
{
  v8 = ACFUError::ACFUError(v161, @"RoseRestoreInfo");
  LogInstance = ACFULogging::getLogInstance(v8);
  inited = ACFULogging::initLog(LogInstance, a1, a2, a3);
  v11 = inited;
  if (inited)
  {
    v79 = ACFULogging::getLogInstance(inited);
    ACFULogging::handleMessage(v79, 2u, "%s::%s: failed to init logging\n", v80, v81, v82, v83, v84, "RoseRestoreInfo");
    v85 = CFErrorCreate(*MEMORY[0x29EDB8ED8], @"RoseRestoreInfo", v11, 0);
    v69 = 0;
    Mutable = 0;
    *a4 = v85;
    goto LABEL_38;
  }

  v12 = ACFULogging::getLogInstance(inited);
  ACFULogging::handleMessage(v12, 0, "%s::%s: performing Rose pairing operation -- sharing digest dictionary\n", v13, v14, v15, v16, v17, "RoseRestoreInfo");
  v18 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    std::string::basic_string[abi:ne200100]<0>(v159, "RoseUpdaterGetSharedInfo: Failed to allocate shared info dict");
    v86 = ACFUError::addError(v161, v159, 0xFA0uLL, 0);
    if (v160 < 0)
    {
      operator delete(v159[0]);
    }

    v87 = ACFULogging::getLogInstance(v86);
    v69 = 0;
    ACFULogging::handleMessage(v87, 2u, "%s::%s: Failed to allocate shared info dictionary\n", v88, v89, v90, v91, v92, "RoseRestoreInfo");
    Mutable = 0;
    goto LABEL_38;
  }

  LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
  LOWORD(v135.__r_.__value_.__l.__data_) = 0;
  Value = CFDictionaryGetValue(a1, @"DeviceInfo");
  v21 = Value;
  if (!Value || (v22 = CFGetTypeID(Value), Value = CFDictionaryGetTypeID(), v22 != Value))
  {
    v44 = ACFULogging::getLogInstance(Value);
    ACFULogging::handleMessage(v44, 0, "%s::%s: Could not obtain deviceInfo dictionary. Sharing all digest information.\n", v45, v46, v47, v48, v49, "RoseRestoreInfo");
    goto LABEL_17;
  }

  TypeID = CFDictionaryGetValue(v21, @"Rap,ChipID");
  v24 = TypeID;
  if (!TypeID || (v25 = CFGetTypeID(TypeID), TypeID = CFDataGetTypeID(), v25 != TypeID))
  {
    v108 = ACFULogging::getLogInstance(TypeID);
    v114 = "%s::%s: chipID is empty or isn't data type\n";
LABEL_81:
    ACFULogging::handleMessage(v108, 2u, v114, v109, v110, v111, v112, v113, "RoseRestoreInfo");
    goto LABEL_15;
  }

  Length = CFDataGetLength(v24);
  if (Length != 2)
  {
    v108 = ACFULogging::getLogInstance(Length);
    v114 = "%s::%s: chipID is not 2 bytes in length. Assuming Rose-SE pairing is not supported.\n";
    goto LABEL_81;
  }

  BytePtr = CFDataGetBytePtr(v24);
  v28 = CFDataGetLength(v24);
  memcpy(&__dst, BytePtr, v28);
  v29 = CFDictionaryGetValue(v21, @"Rap,BoardID");
  v30 = v29;
  if (!v29 || (v31 = CFGetTypeID(v29), v29 = CFDataGetTypeID(), v31 != v29))
  {
    v108 = ACFULogging::getLogInstance(v29);
    v114 = "%s::%s: boardID is empty or isn't data type\n";
    goto LABEL_81;
  }

  v32 = CFDataGetLength(v30);
  if (v32 != 2)
  {
    v108 = ACFULogging::getLogInstance(v32);
    v114 = "%s::%s: boardID is not 2 bytes in length. Assuming Rose-SE pairing is not supported.\n";
    goto LABEL_81;
  }

  v33 = CFDataGetBytePtr(v30);
  v34 = CFDataGetLength(v30);
  memcpy(&v135, v33, v34);
  RoseCapabilities::create(LOWORD(__dst.__r_.__value_.__l.__data_), __p);
  v35 = __p[1];
  if (!__p[0])
  {
    v129 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v129, 2u, "%s::%s: failed to create capabilities\n", v130, v131, v132, v133, v134, "RoseRestoreInfo");
    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    goto LABEL_15;
  }

  v36 = RoseCapabilities::supportsRoseSEPairing(__p[0], LOWORD(v135.__r_.__value_.__l.__data_));
  v37 = v36;
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if ((v37 & 1) == 0)
  {
LABEL_15:
    v38 = ACFULogging::getLogInstance(v36);
    ACFULogging::handleMessage(v38, 0, "%s::%s: Returning empty sharing digest dictionary -- Rose-SE pairing not supported for this device.\n", v39, v40, v41, v42, v43, "RoseRestoreInfo");
    goto LABEL_43;
  }

LABEL_17:
  v50 = ACFULogging::getLogInstance(v36);
  ACFULogging::handleMessage(v50, 0, "%s::%s: Rose-SE pairing is supported for this device\n", v51, v52, v53, v54, v55, "RoseRestoreInfo");
  ACFUCommon::parseDebugArgs(a1, "buildIDRoseSEPair", __p);
  if (__p[0] >> 32 || !LODWORD(__p[0]))
  {
    v70 = CFDictionaryGetValue(a1, @"FirmwareData");
    if (v70 && (v71 = CFDataGetTypeID(), v71 == CFGetTypeID(v70)))
    {
      GetRoseTatsuTagToFileNameMap(v143);
      RTKitFirmware::create(v143, v70, 0, __p);
      v69 = __p[0];
      __p[0] = 0;
      std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v143, v144);
      if (v69)
      {
        MeasureDataWithTag = ACFUFirmware::getMeasureDataWithTag(v69, @"Rap,RTKitOS");
        ValueForKeyPathInDict = ACFUFirmware::getMeasureDataWithTag(v69, @"Rap,SoftwareBinaryDsp1");
        goto LABEL_30;
      }

      std::string::basic_string[abi:ne200100]<0>(v141, "RoseUpdaterGetSharedInfo: Failed to open firmware");
      v124 = ACFUError::addError(v161, v141, 0x3E8uLL, 0);
      if (v142 < 0)
      {
        operator delete(v141[0]);
      }

      v94 = ACFULogging::getLogInstance(v124);
      v100 = "%s::%s: Failed to open firmware\n";
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v145, "RoseUpdaterGetSharedInfo: Invalid or no firmware file present in restore options");
      v93 = ACFUError::addError(v161, v145, 0x3E8uLL, 0);
      if (v146 < 0)
      {
        operator delete(v145[0]);
      }

      v94 = ACFULogging::getLogInstance(v93);
      v100 = "%s::%s: Invalid or no firmware file present in restore options\n";
    }

    v69 = 0;
    ACFULogging::handleMessage(v94, 2u, v100, v95, v96, v97, v98, v99, "RoseRestoreInfo");
  }

  else
  {
    v57 = ACFULogging::getLogInstance(v56);
    ACFULogging::handleMessage(v57, 0, "%s::%s: forcing pairing with build ID: %u\n", v58, v59, v60, v61, v62, "RoseRestoreInfo");
    v63 = CFStringCreateWithFormat(v18, 0, @"%@.%@.%@", @"BuildIdentity", @"Rap,RTKitOS", @"Digest", v135.__r_.__value_.__r.__words[0]);
    if (v63)
    {
      MeasureDataWithTag = AMSupportGetValueForKeyPathInDict();
      CFRelease(v63);
      if (MeasureDataWithTag)
      {
        v65 = CFDataGetTypeID();
        if (v65 == CFGetTypeID(MeasureDataWithTag))
        {
          v66 = CFStringCreateWithFormat(v18, 0, @"%@.%@.%@", @"BuildIdentity", @"Rap,SoftwareBinaryDsp1", @"Digest");
          if (v66)
          {
            ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict();
            CFRelease(v66);
            if (ValueForKeyPathInDict)
            {
              v68 = CFDataGetTypeID();
              if (v68 == CFGetTypeID(ValueForKeyPathInDict))
              {
                v69 = 0;
LABEL_30:
                if (MeasureDataWithTag && ValueForKeyPathInDict)
                {
                  CFDictionarySetValue(Mutable, @"SE,RapSwBinDsp", ValueForKeyPathInDict);
                  CFDictionarySetValue(Mutable, @"SE,RapRTKitOS", MeasureDataWithTag);
                  v73 = ACFULogging::getLogInstance(v72);
                  std::string::basic_string[abi:ne200100]<0>(&v135, "RoseRestoreInfo");
                  v74 = std::string::append(&v135, "::");
                  v75 = *&v74->__r_.__value_.__l.__data_;
                  __dst.__r_.__value_.__r.__words[2] = v74->__r_.__value_.__r.__words[2];
                  *&__dst.__r_.__value_.__l.__data_ = v75;
                  v74->__r_.__value_.__l.__size_ = 0;
                  v74->__r_.__value_.__r.__words[2] = 0;
                  v74->__r_.__value_.__r.__words[0] = 0;
                  v76 = std::string::append(&__dst, "RoseUpdaterGetSharedInfo");
                  v77 = *&v76->__r_.__value_.__l.__data_;
                  v138 = v76->__r_.__value_.__r.__words[2];
                  *__p = v77;
                  v76->__r_.__value_.__l.__size_ = 0;
                  v76->__r_.__value_.__r.__words[2] = 0;
                  v76->__r_.__value_.__r.__words[0] = 0;
                  ACFULogging::handleMessageCFType(v73, __p, 0, "Rose-SE Shared Info: ", Mutable);
                  if (SHIBYTE(v138) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__dst.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v135.__r_.__value_.__l.__data_);
                  }
                }

                else
                {
                  std::string::basic_string[abi:ne200100]<0>(v139, "RoseUpdaterGetSharedInfo: Missing required firmware measurements");
                  v101 = ACFUError::addError(v161, v139, 0xFA1uLL, 0);
                  if (v140 < 0)
                  {
                    operator delete(v139[0]);
                  }

                  v102 = ACFULogging::getLogInstance(v101);
                  ACFULogging::handleMessage(v102, 2u, "%s::%s: Missing required firmware measurements\n", v103, v104, v105, v106, v107, "RoseRestoreInfo");
                }

                goto LABEL_38;
              }

              std::string::basic_string[abi:ne200100]<0>(v147, "RoseUpdaterGetSharedInfo: sbd1 digest is of an unexpected type");
              v128 = ACFUError::addError(v161, v147, 0x3EDuLL, 0);
              if (v148 < 0)
              {
                operator delete(v147[0]);
              }

              v116 = ACFULogging::getLogInstance(v128);
              v122 = "%s::%s: sbd1 digest is of an unexpected type\n";
            }

            else
            {
              std::string::basic_string[abi:ne200100]<0>(v149, "RoseUpdaterGetSharedInfo: failed to get dict entry for sbd1 digest");
              v127 = ACFUError::addError(v161, v149, 0x3EDuLL, 0);
              if (v150 < 0)
              {
                operator delete(v149[0]);
              }

              v116 = ACFULogging::getLogInstance(v127);
              v122 = "%s::%s: failed to get dict entry for sbd1 digest\n";
            }
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(v151, "RoseUpdaterGetSharedInfo: failed to create build ID key path for sdb1");
            v126 = ACFUError::addError(v161, v151, 0x3EDuLL, 0);
            if (v152 < 0)
            {
              operator delete(v151[0]);
            }

            v116 = ACFULogging::getLogInstance(v126);
            v122 = "%s::%s: failed to create build ID key path for sdb1\n";
          }
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(v153, "RoseUpdaterGetSharedInfo: rkos digest is of an unexpected type");
          v125 = ACFUError::addError(v161, v153, 0x3EDuLL, 0);
          if (v154 < 0)
          {
            operator delete(v153[0]);
          }

          v116 = ACFULogging::getLogInstance(v125);
          v122 = "%s::%s: rkos digest is of an unexpected type\n";
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(v155, "RoseUpdaterGetSharedInfo: failed to get dict entry rkos digest");
        v123 = ACFUError::addError(v161, v155, 0xFA0uLL, 0);
        if (v156 < 0)
        {
          operator delete(v155[0]);
        }

        v116 = ACFULogging::getLogInstance(v123);
        v122 = "%s::%s: failed to get dict entry rkos digest\n";
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v157, "RoseUpdaterGetSharedInfo: failed to create build ID key path for rkos");
      v115 = ACFUError::addError(v161, v157, 0x3EDuLL, 0);
      if (v158 < 0)
      {
        operator delete(v157[0]);
      }

      v116 = ACFULogging::getLogInstance(v115);
      v122 = "%s::%s: failed to create build ID key path for rkos\n";
    }

    ACFULogging::handleMessage(v116, 2u, v122, v117, v118, v119, v120, v121, "RoseRestoreInfo");
    v69 = 0;
  }

LABEL_38:
  if (ACFUError::hasError(v161))
  {
    *a4 = ACFUError::getCFError(v161);
    if (Mutable)
    {
      CFRelease(Mutable);
      Mutable = 0;
    }
  }

  if (v69)
  {
    (*(*v69 + 7))(v69);
  }

LABEL_43:
  ACFUError::~ACFUError(v161);
  return Mutable;
}

void sub_2984F65D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  ACFUError::~ACFUError((v40 - 104));
  _Unwind_Resume(a1);
}

CFErrorRef RoseUpdaterGetTags_cold_1(ACFULogging *a1, CFErrorRef *a2)
{
  v3 = a1;
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to init logging\n", v5, v6, v7, v8, v9, "RoseRestoreInfo");
  result = CFErrorCreate(*MEMORY[0x29EDB8ED8], @"RoseRestoreInfo", v3, 0);
  *a2 = result;
  return result;
}

CFErrorRef RoseUpdaterGetTags_cold_2(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create host object\n", v3, v4, v5, v6, v7, "RoseRestoreInfo");
  result = CFErrorCreate(*MEMORY[0x29EDB8ED8], @"RoseRestoreInfo", 4000, 0);
  *a1 = result;
  return result;
}

CFErrorRef RoseUpdaterCopyFirmware_cold_1(ACFULogging *a1, CFErrorRef *a2)
{
  v3 = a1;
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to init logging\n", v5, v6, v7, v8, v9, "RoseRestoreInfo");
  result = CFErrorCreate(*MEMORY[0x29EDB8ED8], @"RoseRestoreInfo", v3, 0);
  *a2 = result;
  return result;
}

CFErrorRef RoseUpdaterCopyFirmware_cold_2(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create host object\n", v3, v4, v5, v6, v7, "RoseRestoreInfo");
  result = CFErrorCreate(*MEMORY[0x29EDB8ED8], @"RoseRestoreInfo", 4000, 0);
  *a1 = result;
  return result;
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
      LogInstance = ACFULogging::getLogInstance(v5);
      ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to initialize object\n", v13, v14, v15, v16, v17, "RoseCapabilities");
      v18 = a2[1];
      *a2 = 0;
      a2[1] = 0;
      if (v18)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }
    }
  }

  else
  {
    v6 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v6, 2u, "%s::%s: failed to create capabilities object\n", v7, v8, v9, v10, v11, "RoseCapabilities");
  }
}

void sub_2984F6A10(_Unwind_Exception *exception_object)
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
    LogInstance = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Identified chip as R2\n", v11, v12, v13, v14, v15, "RoseCapabilities");
    result = 1;
    *this = 1;
  }

  else if (a2 == 8198)
  {
    v3 = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(v3, 0, "%s::%s: Identified chip as R1\n", v4, v5, v6, v7, v8, "RoseCapabilities");
    *this = 0;
    return 1;
  }

  else
  {
    v16 = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(v16, 2u, "%s::%s: Unrecognized chipID 0x%x\n", v17, v18, v19, v20, v21, "RoseCapabilities");
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

void *std::shared_ptr<RoseCapabilities>::shared_ptr[abi:ne200100]<RoseCapabilities,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A1EE8B28;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_2984F6BC0(_Unwind_Exception *exception_object)
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

void GetRoseTatsuTagToFileNameMap(uint64_t a1@<X8>)
{
  v7[4] = *MEMORY[0x29EDCA608];
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(v4, &kRoseSwDsp1, "sbd1");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v5, &kRoseRtkitos, "rkos");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v6, &kRoseRestoreRtkitos, "rrko");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(v7, &kRoseRtkitosICNF, "icnf");
  std::map<__CFString const*,std::string>::map[abi:ne200100](a1, v4, 4);
  for (i = 0; i != -16; i -= 4)
  {
    if (SHIBYTE(v7[i + 3]) < 0)
    {
      operator delete(v7[i + 1]);
    }
  }

  v3 = *MEMORY[0x29EDCA608];
}

void sub_2984F6D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = v10 + 104;
  v13 = -128;
  while (1)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    v12 -= 32;
    v13 += 32;
    if (!v13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

SERestoreInfo::SN300V2DeviceInfo *SERestoreInfo::SN300V2DeviceInfo::SN300V2DeviceInfo(SERestoreInfo::SN300V2DeviceInfo *this, const SERestoreInfo::BLOB *a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A1EE8BA0;
  if (*(v3 + 14) != 54)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

void SERestoreInfo::P73BaseDeviceInfo::~P73BaseDeviceInfo(SERestoreInfo::P73BaseDeviceInfo *this)
{
  *this = &unk_2A1EE8CD0;
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
  *this = &unk_2A1EE8CD0;
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
  *this = &unk_2A1EE8CD0;
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

  operator delete(this);
}

SERestoreInfo::SN300V2DeviceInfo *SERestoreInfo::SN300V2DeviceInfo::SN300V2DeviceInfo(SERestoreInfo::SN300V2DeviceInfo *this, SERestoreInfo **a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A1EE8BA0;
  if (*(v3 + 14) != 54)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

void SERestoreInfo::SN300V2DeviceInfo::~SN300V2DeviceInfo(SERestoreInfo::SN300V2DeviceInfo *this)
{
  *this = &unk_2A1EE8CD0;
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

  operator delete(this);
}

void *SERestoreInfo::P73BaseDeviceInfo::getOsKeyId@<X0>(SERestoreInfo::P73BaseDeviceInfo *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a2, *(this + 14), *(this + 15), *(this + 15) - *(this + 14));
}

SERestoreInfo::SEWrongDeviceInfo *SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(SERestoreInfo::SEWrongDeviceInfo *this)
{
  v4 = 16;
  strcpy(__p, "Wrong DeviceInfo");
  SERestoreInfo::SEException::SEException(this, __p, 2, @"SEUpdaterErrorDomain");
  if (v4 < 0)
  {
    operator delete(*__p);
  }

  *this = &unk_2A1EE8C08;
  return this;
}

void SERestoreInfo::SEWrongDeviceInfo::~SEWrongDeviceInfo(std::exception *this)
{
  SERestoreInfo::SEException::~SEException(this);

  operator delete(v1);
}

uint64_t SERestoreInfo::SEException::what(SERestoreInfo::SEException *this)
{
  result = this + 8;
  if (*(this + 31) < 0)
  {
    return *result;
  }

  return result;
}

void *std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(void *result, const void *a2, uint64_t a3, size_t __sz)
{
  if (__sz)
  {
    v6 = result;
    result = std::vector<unsigned char>::__vallocate[abi:ne200100](result, __sz);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_2984F71DC(_Unwind_Exception *exception_object)
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

SERestoreInfo::SN210VDeviceInfo *SERestoreInfo::SN210VDeviceInfo::SN210VDeviceInfo(SERestoreInfo::SN210VDeviceInfo *this, const SERestoreInfo::BLOB *a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A1EE8C30;
  if (*(v3 + 14) != 210)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

SERestoreInfo::SN210VDeviceInfo *SERestoreInfo::SN210VDeviceInfo::SN210VDeviceInfo(SERestoreInfo::SN210VDeviceInfo *this, SERestoreInfo **a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A1EE8C30;
  if (*(v3 + 14) != 210)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

SERestoreInfo::SE310SDeviceInfo *SERestoreInfo::SE310SDeviceInfo::SE310SDeviceInfo(SERestoreInfo::SE310SDeviceInfo *this, const SERestoreInfo::BLOB *a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A1EE8C80;
  if (*(v3 + 14) != 55)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

SERestoreInfo::SE310SDeviceInfo *SERestoreInfo::SE310SDeviceInfo::SE310SDeviceInfo(SERestoreInfo::SE310SDeviceInfo *this, SERestoreInfo **a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A1EE8C80;
  if (*(v3 + 14) != 55)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

void *RootCA::getRootKeyId@<X0>(int a1@<W0>, int a2@<W1>, void *a3@<X8>)
{
  if (a2 > 199)
  {
    if (a2 != 210 && a2 != 200)
    {
LABEL_14:
      if (a1 == 1)
      {
        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
        v4 = &RootCA::getRootKeyId(RootCAId,SEChipType)::prodCA;
      }

      else
      {
        if (a1)
        {
          exception = __cxa_allocate_exception(0x48uLL);
          std::to_string(&v29, a1);
          v19 = std::string::insert(&v29, 0, "Unknown RootCAId: ");
          v20 = *&v19->__r_.__value_.__l.__data_;
          v30.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
          *&v30.__r_.__value_.__l.__data_ = v20;
          v19->__r_.__value_.__l.__size_ = 0;
          v19->__r_.__value_.__r.__words[2] = 0;
          v19->__r_.__value_.__r.__words[0] = 0;
          v21 = std::string::append(&v30, " for SEChipType ");
          v22 = *&v21->__r_.__value_.__l.__data_;
          v31.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
          *&v31.__r_.__value_.__l.__data_ = v22;
          v21->__r_.__value_.__l.__size_ = 0;
          v21->__r_.__value_.__r.__words[2] = 0;
          v21->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v28, a2);
          if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = &v28;
          }

          else
          {
            v23 = v28.__r_.__value_.__r.__words[0];
          }

          if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v28.__r_.__value_.__l.__size_;
          }

          v25 = std::string::append(&v31, v23, size);
          v26 = *&v25->__r_.__value_.__l.__data_;
          v33 = v25->__r_.__value_.__r.__words[2];
          v32 = v26;
          v25->__r_.__value_.__l.__size_ = 0;
          v25->__r_.__value_.__r.__words[2] = 0;
          v25->__r_.__value_.__r.__words[0] = 0;
          v27 = SERestoreInfo::SEException::SEException(exception, &v32, 16, @"SEUpdaterErrorDomain");
        }

        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
        v4 = &RootCA::getRootKeyId(RootCAId,SEChipType)::localCA;
      }

      goto LABEL_11;
    }
  }

  else if (a2 != 100 && a2 != 115)
  {
    goto LABEL_14;
  }

  if (a1 == 1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v4 = &RootCA::getRootKeyId(RootCAId,SEChipType)::prodCA;
  }

  else
  {
    if (a1)
    {
      v7 = __cxa_allocate_exception(0x48uLL);
      std::to_string(&v29, a1);
      v8 = std::string::insert(&v29, 0, "Unknown RootCAId: ");
      v9 = *&v8->__r_.__value_.__l.__data_;
      v30.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
      *&v30.__r_.__value_.__l.__data_ = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      v10 = std::string::append(&v30, " for SEChipType ");
      v11 = *&v10->__r_.__value_.__l.__data_;
      v31.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
      *&v31.__r_.__value_.__l.__data_ = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v28, a2);
      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v28;
      }

      else
      {
        v12 = v28.__r_.__value_.__r.__words[0];
      }

      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v13 = v28.__r_.__value_.__l.__size_;
      }

      v14 = std::string::append(&v31, v12, v13);
      v15 = *&v14->__r_.__value_.__l.__data_;
      v33 = v14->__r_.__value_.__r.__words[2];
      v32 = v15;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      v16 = SERestoreInfo::SEException::SEException(v7, &v32, 16, @"SEUpdaterErrorDomain");
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v4 = &RootCA::getRootKeyId(RootCAId,SEChipType)::localCA;
  }

LABEL_11:

  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a3, v4, v4 + 32, 0x20uLL);
}

void sub_2984F77CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(char *result, char *a2, char *a3, size_t __sz)
{
  if (__sz)
  {
    v6 = result;
    result = std::vector<unsigned char>::__vallocate[abi:ne200100](result, __sz);
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

void sub_2984F7958(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void SERestoreInfo::P73BaseDeviceInfo::parseManifest(SERestoreInfo::P73BaseDeviceInfo *this@<X0>, unsigned __int8 **a2@<X8>)
{
  v4 = *(this + 2);
  v29[0] = *(this + 1);
  v29[1] = v4;
  v5 = DERDecodeItem(v29, &v30);
  std::string::basic_string[abi:ne200100]<0>(v27, "Fail to parse MQR: cannot decode top level tag");
  SERestoreInfo::CallAndThrow<DERReturn>(v5, v27);
  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  if (v30 != P73BaseManifestQueryResponseDerSpec::ManifestResponseSequenceTag)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v25, "Fail to parse MQR: wrong top level tag");
    v11 = SERestoreInfo::SEException::SEException(exception, &v25, 2, @"SEUpdaterErrorDomain");
  }

  v24[0] = 0;
  v24[1] = 0;
  v6 = DERParseSequenceContent(&v31, 1u, &P73BaseManifestQueryResponseDerSpec::ManifestResponseItemSpec, v24, 0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(__p, "Fail to parse MQR");
  SERestoreInfo::CallAndThrow<DERReturn>(v6, __p);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  *(a2 + 13) = 0u;
  *(a2 + 14) = 0u;
  *(a2 + 11) = 0u;
  *(a2 + 12) = 0u;
  *(a2 + 9) = 0u;
  *(a2 + 10) = 0u;
  *(a2 + 7) = 0u;
  *(a2 + 8) = 0u;
  *(a2 + 5) = 0u;
  *(a2 + 6) = 0u;
  *(a2 + 3) = 0u;
  *(a2 + 4) = 0u;
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  v7 = DERParseSequenceContent(v24, 0xFu, &P73BaseManifestQueryResponseDerSpec::ManifestResponseDataItemSpec, a2, 0xF0uLL);
  std::string::basic_string[abi:ne200100]<0>(v20, "Fail to parse MQR.data");
  SERestoreInfo::CallAndThrow<DERReturn>(v7, v20);
  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (a2[1] != 1 || a2[3] > 2 || a2[5] > 2 || a2[7] > 2 || a2[9] > 2 || a2[15] != 1 || a2[25] > 2 || a2[13] != 24 || a2[17] != 20 || a2[19] != 32 || a2[21] != 32 || a2[11] != 2 || a2[23] != 1)
  {
    v8 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v25, "size of MQRD doesn't match");
    v9 = SERestoreInfo::SEException::SEException(v8, &v25, 2, @"SEUpdaterErrorDomain");
  }

  if (**a2 == 1)
  {
    if (a2[27] != 3 || a2[29] != 32)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (**a2)
    {
      v14 = **a2;
      v15 = __cxa_allocate_exception(0x48uLL);
      std::to_string(&v19, v14);
      v16 = std::string::insert(&v19, 0, "Unsupported manifest query version: ");
      v17 = *&v16->__r_.__value_.__l.__data_;
      v26 = v16->__r_.__value_.__r.__words[2];
      v25 = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      v18 = SERestoreInfo::SEException::SEException(v15, &v25, 7, @"SEUpdaterErrorDomain");
    }

    if (a2[27] | a2[29])
    {
LABEL_30:
      v12 = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(&v25, "size of factoryPostflightState or cometRootKeyId doesn't match");
      v13 = SERestoreInfo::SEException::SEException(v12, &v25, 2, @"SEUpdaterErrorDomain");
    }
  }
}

void sub_2984F7D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SERestoreInfo::CallAndThrow<DERReturn>(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    exception = __cxa_allocate_exception(0x48uLL);
    v5 = SERestoreInfo::SEException::SEException(exception, a2, v2, @"libDERErrorDomain");
  }

  return result;
}

double SERestoreInfo::P73BaseDeviceInfo::init(SERestoreInfo::P73BaseDeviceInfo *this)
{
  *(this + 14) = 0;
  *(this + 2) = 1;
  v7 = 0;
  std::vector<unsigned char>::assign(this + 4, 0x18uLL, &v7);
  v6 = 0;
  std::vector<unsigned char>::assign(this + 8, 0x14uLL, &v6);
  v5 = 0;
  std::vector<unsigned char>::assign(this + 11, 0x20uLL, &v5);
  v4 = 0;
  std::vector<unsigned char>::assign(this + 14, 0x20uLL, &v4);
  *(this + 17) = 0;
  *(this + 20) = 0;
  *(this + 12) = 0;
  *(this + 7) = 23195;
  *(this + 36) = 0;
  v3 = 0;
  std::vector<unsigned char>::assign(this + 19, 0x20uLL, &v3);
  result = 0.0;
  *(this + 22) = 0;
  *(this + 46) = 0;
  return result;
}

SERestoreInfo::P73BaseDeviceInfo *SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(SERestoreInfo::P73BaseDeviceInfo *this, const SERestoreInfo::BLOB *a2)
{
  *(this + 4) = 0;
  *this = &unk_2A1EE8CD0;
  *(this + 4) = 0u;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 16) = 0;
  SERestoreInfo::P73BaseDeviceInfo::init(this);
  memset(v5, 0, sizeof(v5));
  SERestoreInfo::P73BaseDeviceInfo::parseManifest(a2, v5);
  SERestoreInfo::P73BaseDeviceInfo::updateDeviceInfo(this, v5);
  return this;
}

void sub_2984F7FCC(_Unwind_Exception *exception_object)
{
  v6 = v1[25];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *v4;
  if (*v4)
  {
    v1[20] = v7;
    operator delete(v7);
  }

  v8 = v1[14];
  if (v8)
  {
    v1[15] = v8;
    operator delete(v8);
  }

  v9 = v1[11];
  if (v9)
  {
    v1[12] = v9;
    operator delete(v9);
  }

  v10 = *v3;
  if (*v3)
  {
    v1[9] = v10;
    operator delete(v10);
  }

  v11 = *v2;
  if (*v2)
  {
    v1[5] = v11;
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void *SERestoreInfo::P73BaseDeviceInfo::updateDeviceInfo(uint64_t a1, unsigned __int8 **a2)
{
  v79[3] = *MEMORY[0x29EDCA608];
  v4 = a2[1];
  if (v4)
  {
    v5 = 0;
    v6 = *a2;
    do
    {
      v7 = *v6++;
      v5 = v7 | (v5 << 8);
      --v4;
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 8) = v5;
  v8 = a2[3];
  if (v8)
  {
    v9 = 0;
    v10 = a2[2];
    do
    {
      v11 = *v10++;
      v9 = v11 | (v9 << 8);
      --v8;
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 12) = v9;
  v12 = a2[5];
  if (v12)
  {
    v13 = 0;
    v14 = a2[4];
    do
    {
      v15 = *v14++;
      v13 = v15 | (v13 << 8);
      --v12;
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 16) = v13;
  v16 = a2[7];
  if (v16)
  {
    v17 = 0;
    v18 = a2[6];
    do
    {
      v19 = *v18++;
      v17 = v19 | (v17 << 8);
      --v16;
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  *(a1 + 20) = v17;
  v20 = a2[9];
  if (v20)
  {
    v21 = 0;
    v22 = a2[8];
    do
    {
      v23 = *v22++;
      v21 = v23 | (v21 << 8);
      --v20;
    }

    while (v20);
  }

  else
  {
    v21 = 0;
  }

  *(a1 + 24) = v21;
  v24 = a2[15];
  if (!v24)
  {
    *(a1 + 56) = 0;
    goto LABEL_83;
  }

  v25 = 0;
  v26 = a2[14];
  do
  {
    v27 = *v26++;
    v25 = v27 | (v25 << 8);
    --v24;
  }

  while (v24);
  *(a1 + 56) = v25;
  if (v25 > 99)
  {
    if (v25 > 199)
    {
      if (v25 != 210 && v25 != 200)
      {
        goto LABEL_83;
      }
    }

    else if (v25 != 100)
    {
      if (v25 == 115)
      {
        v28 = 2;
        goto LABEL_43;
      }

LABEL_83:
      exception = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(&v72, "Unsupported chip ID");
      v57 = SERestoreInfo::SEException::SEException(exception, &v72, 2, @"SEUpdaterErrorDomain");
    }

    v28 = 3;
    goto LABEL_43;
  }

  if ((v25 - 54) < 2)
  {
    v28 = 5;
    goto LABEL_43;
  }

  if (v25 == 44)
  {
    v28 = 4;
    goto LABEL_43;
  }

  if (v25 != 56)
  {
    goto LABEL_83;
  }

  v28 = 6;
LABEL_43:
  *(a1 + 180) = v28;
  v67 = v28;
  {
    v71 = xmmword_298561C10;
    std::map<unsigned int,unsigned int>::map[abi:ne200100](v65, &v71, 2);
    LODWORD(v72) = 3;
    std::map<unsigned int,unsigned int>::map[abi:ne200100](v73, v65);
    v70 = xmmword_298561C20;
    std::map<unsigned int,unsigned int>::map[abi:ne200100](v63, &v70, 2);
    v74 = 4;
    std::map<unsigned int,unsigned int>::map[abi:ne200100](v75, v63);
    v69 = xmmword_298561C30;
    std::map<unsigned int,unsigned int>::map[abi:ne200100](v61, &v69, 2);
    v76 = 5;
    std::map<unsigned int,unsigned int>::map[abi:ne200100](v77, v61);
    v68 = xmmword_298561C40;
    std::map<unsigned int,unsigned int>::map[abi:ne200100](v59, &v68, 2);
    v78 = 6;
    std::map<unsigned int,unsigned int>::map[abi:ne200100](v79, v59);
    std::map<unsigned int,std::map<unsigned int,unsigned int>>::map[abi:ne200100](&SERestoreInfo::getJCOPTrain(unsigned int,unsigned int)::JCOP_TRAIN, &v72, 4);
    for (i = 0; i != -16; i -= 4)
    {
      std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(&v79[i], v79[i + 1]);
    }

    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(v59, v60);
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(v61, v62);
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(v63, v64);
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(v65, v66);
  }

  v29 = qword_2A13BA240;
  if (!qword_2A13BA240)
  {
LABEL_49:
    v31 = -1;
    goto LABEL_60;
  }

  while (1)
  {
    v30 = *(v29 + 32);
    if (v67 >= v30)
    {
      break;
    }

LABEL_48:
    v29 = *v29;
    if (!v29)
    {
      goto LABEL_49;
    }
  }

  if (v30 < v67)
  {
    v29 += 8;
    goto LABEL_48;
  }

  v32 = std::map<unsigned int,std::map<unsigned int,unsigned int>>::at(&SERestoreInfo::getJCOPTrain(unsigned int,unsigned int)::JCOP_TRAIN, &v67);
  std::map<unsigned int,unsigned int>::map[abi:ne200100](&v72, v32);
  v33 = v72;
  v31 = -1;
  if (v72 != v73)
  {
    do
    {
      if (*(v33 + 7) <= v9)
      {
        v31 = *(v33 + 8);
      }

      v34 = v33[1];
      if (v34)
      {
        do
        {
          v35 = v34;
          v34 = *v34;
        }

        while (v34);
      }

      else
      {
        do
        {
          v35 = v33[2];
          v36 = *v35 == v33;
          v33 = v35;
        }

        while (!v36);
      }

      v33 = v35;
    }

    while (v35 != v73);
  }

  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(&v72, v73[0]);
LABEL_60:
  *(a1 + 184) = v31;
  v37 = a2[25];
  if (v37)
  {
    v38 = 0;
    v39 = a2[24];
    do
    {
      v40 = *v39++;
      v38 = v40 | (v38 << 8);
      --v37;
    }

    while (v37);
  }

  else
  {
    v38 = 0;
  }

  *(a1 + 140) = v38;
  v41 = a2[23];
  if (v41)
  {
    v42 = 0;
    v43 = a2[22];
    do
    {
      v44 = *v43++;
      v42 = v44 | (v42 << 8);
      --v41;
    }

    while (v41);
  }

  else
  {
    v42 = 0;
  }

  *(a1 + 136) = v42;
  v45 = a2[27];
  if (v45)
  {
    v46 = 0;
    v47 = a2[26];
    do
    {
      v48 = *v47++;
      v46 = v48 | (v46 << 8);
      --v45;
    }

    while (v45);
    *(a1 + 144) = v46;
  }

  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 32), a2[12], &a2[13][a2[12]], a2[13]);
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 64), a2[16], &a2[17][a2[16]], a2[17]);
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 88), a2[18], &a2[19][a2[18]], a2[19]);
  result = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 112), a2[20], &a2[21][a2[20]], a2[21]);
  v50 = a2[29];
  if (v50)
  {
    result = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 152), a2[28], &a2[28][v50], v50);
  }

  v51 = a2[11];
  if (v51)
  {
    v52 = 0;
    v53 = a2[10];
    do
    {
      v54 = *v53++;
      v52 = v54 | (v52 << 8);
      --v51;
    }

    while (v51);
  }

  else
  {
    v52 = 0;
  }

  *(a1 + 28) = v52;
  v55 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2984F85C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, void *a12, uint64_t a13, uint64_t a14, char a15, void *a16, uint64_t a17, uint64_t a18, char a19, void *a20, uint64_t a21, uint64_t a22, char a23, void *a24)
{
  v26 = v24 + 104;
  v27 = -128;
  do
  {
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(v26, *(v26 + 8));
    v26 -= 32;
    v27 += 32;
  }

  while (v27);
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(&a11, a12);
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(&a15, a16);
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(&a19, a20);
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(&a23, a24);
  _Unwind_Resume(a1);
}

SERestoreInfo::P73BaseDeviceInfo *SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(SERestoreInfo::P73BaseDeviceInfo *this, SERestoreInfo **a2)
{
  v29 = *MEMORY[0x29EDCA608];
  *this = &unk_2A1EE8CD0;
  *(this + 4) = 0;
  v4 = this + 32;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0u;
  v5 = this + 64;
  *(this + 7) = 0u;
  v6 = this + 112;
  *(this + 19) = 0;
  v7 = this + 88;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 16) = 0;
  v11[0] = @"SE,ChipID";
  v11[1] = CFNumberGetTypeID();
  v11[2] = this + 56;
  v12 = 4;
  v13 = @"SE,ID";
  TypeID = CFDataGetTypeID();
  v15 = v4;
  v16 = 24;
  v17 = @"SE,Nonce";
  v18 = CFDataGetTypeID();
  v19 = v5;
  v20 = 20;
  v21 = @"SE,RootKeyIdentifier";
  v22 = CFDataGetTypeID();
  v23 = v7;
  v24 = 32;
  v25 = @"SE,OSUPubKeyID";
  v26 = CFDataGetTypeID();
  v27 = v6;
  v28 = 32;
  SERestoreInfo::P73BaseDeviceInfo::init(this);
  for (i = 0; i != 20; i += 4)
  {
    SERestoreInfo::getValueFromCFDict(*a2, v11[i], v11[i + 1], v11[i + 2], LODWORD(v11[i + 3]));
  }

  v9 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_2984F8894(_Unwind_Exception *exception_object)
{
  v8 = v1[25];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *v6;
  if (*v6)
  {
    v1[20] = v9;
    operator delete(v9);
  }

  v10 = *v5;
  if (*v5)
  {
    v1[15] = v10;
    operator delete(v10);
  }

  v11 = *v4;
  if (*v4)
  {
    v1[12] = v11;
    operator delete(v11);
  }

  v12 = *v3;
  if (*v3)
  {
    v1[9] = v12;
    operator delete(v12);
  }

  v13 = *v2;
  if (*v2)
  {
    v1[5] = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void SERestoreInfo::P73BaseDeviceInfo::updateDict(SERestoreInfo::P73BaseDeviceInfo *this, __CFDictionary *a2, char a3)
{
  valuePtr = *(this + 14);
  v6 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt32Type, &valuePtr);
  if (!v6)
  {
    SERestoreInfo::P73BaseDeviceInfo::updateDict();
  }

  v7 = v6;
  CFDictionarySetValue(a2, @"SE,ChipID", v6);
  CFRelease(v7);
  v8 = CFDataCreate(0, *(this + 4), *(this + 5) - *(this + 4));
  if (!v8)
  {
    SERestoreInfo::P73BaseDeviceInfo::updateDict();
  }

  v9 = v8;
  CFDictionarySetValue(a2, @"SE,ID", v8);
  CFRelease(v9);
  v10 = CFDataCreate(0, *(this + 8), *(this + 9) - *(this + 8));
  if (!v10)
  {
    SERestoreInfo::P73BaseDeviceInfo::updateDict();
  }

  v11 = v10;
  CFDictionarySetValue(a2, @"SE,Nonce", v10);
  CFRelease(v11);
  v12 = CFDataCreate(0, *(this + 11), *(this + 12) - *(this + 11));
  if (!v12)
  {
    SERestoreInfo::P73BaseDeviceInfo::updateDict();
  }

  v13 = v12;
  CFDictionarySetValue(a2, @"SE,RootKeyIdentifier", v12);
  CFRelease(v13);
  if ((a3 & 1) == 0)
  {
    v14 = CFDataCreate(0, *(this + 14), *(this + 15) - *(this + 14));
    if (!v14)
    {
      SERestoreInfo::P73BaseDeviceInfo::updateDict();
    }

    v15 = v14;
    CFDictionarySetValue(a2, @"SE,OSUPubKeyID", v14);
    CFRelease(v15);
  }
}

void SERestoreInfo::P73BaseDeviceInfo::getStateName(int a1@<W0>, std::string *a2@<X8>)
{
  v28[3] = *MEMORY[0x29EDCA608];
  v12 = a1;
  v13 = 23195;
  std::string::basic_string[abi:ne200100]<0>(v14, "EXPORT_REQUIRED");
  v15 = 47411;
  std::string::basic_string[abi:ne200100]<0>(v16, "IMPORT_REQUIRED");
  v17 = 47361;
  std::string::basic_string[abi:ne200100]<0>(v18, "UOS1");
  v19 = 47362;
  std::string::basic_string[abi:ne200100]<0>(v20, "UOS2");
  v21 = 42241;
  std::string::basic_string[abi:ne200100]<0>(v22, "UOS1_ERROR");
  v23 = 42242;
  std::string::basic_string[abi:ne200100]<0>(v24, "UOS2_ERROR");
  v25 = 47545;
  std::string::basic_string[abi:ne200100]<0>(v26, "EXPORT_FINISHED");
  v27 = 47377;
  std::string::basic_string[abi:ne200100]<0>(v28, "UOS1_KTP");
  std::map<SERestoreInfo::AMS_UOS_ID,std::string>::map[abi:ne200100](v10, &v13, 8);
  for (i = 0; i != -32; i -= 4)
  {
    if (SHIBYTE(v28[i + 2]) < 0)
    {
      operator delete(v28[i]);
    }
  }

  v5 = v11;
  if (!v11)
  {
LABEL_11:
    std::string::basic_string[abi:ne200100]<0>(a2, "UNK_STATE");
    goto LABEL_12;
  }

  while (1)
  {
    v6 = *(v5 + 8);
    if (v6 <= a1)
    {
      break;
    }

LABEL_10:
    v5 = *v5;
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  if (v6 < a1)
  {
    v5 += 8;
    goto LABEL_10;
  }

  v8 = std::map<SERestoreInfo::AMS_UOS_ID,std::string>::at(v10, &v12);
  if (*(v8 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *v8, v8[1]);
  }

  else
  {
    v9 = *v8;
    a2->__r_.__value_.__r.__words[2] = v8[2];
    *&a2->__r_.__value_.__l.__data_ = v9;
  }

LABEL_12:
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v10, v11);
  v7 = *MEMORY[0x29EDCA608];
}

void sub_2984F8C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v16 = v14 + 232;
  v17 = -256;
  while (1)
  {
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    v16 -= 32;
    v17 += 32;
    if (!v17)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t *std::map<SERestoreInfo::AMS_UOS_ID,std::string>::at(uint64_t a1, int *a2)
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

void sub_2984F8EA8(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x29C28BCE0](v1);
  _Unwind_Resume(a1);
}

BOOL SERestoreInfo::P73BaseDeviceInfo::isDevIM4(SERestoreInfo::P73BaseDeviceInfo *this)
{
  v2 = (*(*this + 32))(this);
  v3 = 1;
  RootCA::getRootKeyId(1, v2, &v8);
  v4 = *(this + 11);
  v5 = *(this + 12) - v4;
  v6 = v8;
  if (v5 == v9 - v8)
  {
    v3 = memcmp(v4, v8, v5) != 0;
  }

  if (v6)
  {
    v9 = v6;
    operator delete(v6);
  }

  return v3;
}

_BYTE *std::vector<unsigned char>::assign(void **a1, size_t a2, unsigned __int8 *a3)
{
  v6 = a1[2];
  result = *a1;
  if (v6 - result >= a2)
  {
    v12 = a1[1];
    v13 = v12 - result;
    if (v12 - result >= a2)
    {
      v14 = a2;
    }

    else
    {
      v14 = v12 - result;
    }

    if (v14)
    {
      result = memset(result, *a3, v14);
    }

    v15 = a2 >= v13;
    v16 = a2 - v13;
    if (v16 != 0 && v15)
    {
      v17 = a1[1];
      result = memset(v17, *a3, v16);
      v11 = &v17[v16];
    }

    else
    {
      v11 = *a1 + a2;
    }
  }

  else
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a2 & 0x8000000000000000) != 0)
    {
      std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
    }

    v8 = 2 * v6;
    if (2 * v6 <= a2)
    {
      v8 = a2;
    }

    if (v6 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    std::vector<unsigned char>::__vallocate[abi:ne200100](a1, v9);
    v10 = a1[1];
    result = memset(v10, *a3, a2);
    v11 = &v10[a2];
  }

  a1[1] = v11;
  return result;
}

uint64_t *std::map<unsigned int,std::map<unsigned int,unsigned int>>::at(uint64_t a1, unsigned int *a2)
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

uint64_t std::map<unsigned int,unsigned int>::map[abi:ne200100](uint64_t a1, unsigned int *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int> const&>(a1, v4, a2, a2);
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int> const&>(uint64_t **a1, uint64_t *a2, unsigned int *a3, uint64_t *a4)
{
  v6 = std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__find_equal<unsigned int>(a1, a2, &v11, &v10, a3);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x28uLL);
    *(v7 + 28) = *a4;
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(a1, v11, v8, v7);
  }

  return v7;
}

uint64_t *std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__find_equal<unsigned int>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
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

uint64_t std::map<unsigned int,std::map<unsigned int,unsigned int>>::map[abi:ne200100](uint64_t a1, unsigned int *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,std::map<unsigned int,unsigned int>> const&>(a1, v4, a2, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,std::map<unsigned int,unsigned int>> const&>(uint64_t **a1, uint64_t *a2, unsigned int *a3, _DWORD *a4)
{
  v6 = std::__tree<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>>>::__find_equal<unsigned int>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>>>::__construct_node<std::pair<unsigned int const,std::map<unsigned int,unsigned int>> const&>(a1, a4, &v8);
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>>>::__find_equal<unsigned int>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
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

uint64_t *std::__tree<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>>>::__construct_node<std::pair<unsigned int const,std::map<unsigned int,unsigned int>> const&>@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *(v6 + 8) = *a2;
  result = std::map<unsigned int,unsigned int>::map[abi:ne200100](v6 + 5, (a2 + 2));
  *(a3 + 16) = 1;
  return result;
}

void sub_2984F97C8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **a2)
{
  if (*(a1 + 8) == 1)
  {
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy((a2 + 5), a2[6]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void std::__tree<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,unsigned int>>>>::destroy(a1, a2[1]);
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

uint64_t *std::map<unsigned int,unsigned int>::map[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  std::map<unsigned int,unsigned int>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned int,unsigned int>,std::__tree_node<std::__value_type<unsigned int,unsigned int>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *std::map<unsigned int,unsigned int>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned int,unsigned int>,std::__tree_node<std::__value_type<unsigned int,unsigned int>,void *> *,long>>>(uint64_t *result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int> const&>(v5, v5 + 1, v4 + 7, (v4 + 7));
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

void *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result >= a4)
  {
    v15 = result[1];
    v16 = v15 - v9;
    if (v15 - v9 >= a4)
    {
      v18 = a3 - __src;
      if (v18)
      {
        result = memmove(*result, __src, v18);
      }

      v14 = &v9[v18];
    }

    else
    {
      v17 = &__src[v16];
      if (v15 != v9)
      {
        result = memmove(*result, __src, v16);
        v15 = *(v7 + 8);
      }

      if (a3 != v17)
      {
        result = memmove(v15, v17, a3 - v17);
      }

      v14 = &v15[a3 - v17];
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
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
    }

    if ((a4 & 0x8000000000000000) != 0)
    {
      std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
    }

    v10 = 2 * v8;
    if (2 * v8 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = std::vector<unsigned char>::__vallocate[abi:ne200100](v7, v11);
    v12 = *(v7 + 8);
    v13 = a3 - __src;
    if (v13)
    {
      result = memmove(*(v7 + 8), __src, v13);
    }

    v14 = (v12 + v13);
  }

  *(v7 + 8) = v14;
  return result;
}

uint64_t std::map<SERestoreInfo::AMS_UOS_ID,std::string>::map[abi:ne200100](uint64_t a1, int *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>,std::__map_value_compare<SERestoreInfo::AMS_UOS_ID,std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>,std::less<SERestoreInfo::AMS_UOS_ID>,true>,std::allocator<std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>>>::__emplace_hint_unique_key_args<SERestoreInfo::AMS_UOS_ID,std::pair<SERestoreInfo::AMS_UOS_ID const,std::string> const&>(a1, v4, a2, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>,std::__map_value_compare<SERestoreInfo::AMS_UOS_ID,std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>,std::less<SERestoreInfo::AMS_UOS_ID>,true>,std::allocator<std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>>>::__emplace_hint_unique_key_args<SERestoreInfo::AMS_UOS_ID,std::pair<SERestoreInfo::AMS_UOS_ID const,std::string> const&>(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  v6 = std::__tree<std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>,std::__map_value_compare<SERestoreInfo::AMS_UOS_ID,std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>,std::less<SERestoreInfo::AMS_UOS_ID>,true>,std::allocator<std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>>>::__find_equal<SERestoreInfo::AMS_UOS_ID>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>,std::__map_value_compare<SERestoreInfo::AMS_UOS_ID,std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>,std::less<SERestoreInfo::AMS_UOS_ID>,true>,std::allocator<std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>>>::__construct_node<std::pair<SERestoreInfo::AMS_UOS_ID const,std::string> const&>(a1, a4, &v8);
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>,std::__map_value_compare<SERestoreInfo::AMS_UOS_ID,std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>,std::less<SERestoreInfo::AMS_UOS_ID>,true>,std::allocator<std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>>>::__find_equal<SERestoreInfo::AMS_UOS_ID>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
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

void std::__tree<std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>,std::__map_value_compare<SERestoreInfo::AMS_UOS_ID,std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>,std::less<SERestoreInfo::AMS_UOS_ID>,true>,std::allocator<std::__value_type<SERestoreInfo::AMS_UOS_ID,std::string>>>::__construct_node<std::pair<SERestoreInfo::AMS_UOS_ID const,std::string> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *(v6 + 8) = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 40), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *(v6 + 40) = *(a2 + 8);
    *(v6 + 7) = *(a2 + 24);
  }

  *(a3 + 16) = 1;
}

void sub_2984F9DE4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<__CFString const*,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void SERestoreInfo::P73BaseDeviceInfo::updateDict()
{
  __assert_rtn("_CFDictionarySetData", "SERestoreInfoHelpers.hpp", 59, "tmpData");
}

{
  __assert_rtn("_CFDictionarySetInteger32", "SERestoreInfoHelpers.hpp", 42, "num != nullptr");
}

SERestoreInfo::IcefallDeviceInfo *SERestoreInfo::IcefallDeviceInfo::IcefallDeviceInfo(SERestoreInfo::IcefallDeviceInfo *this, SERestoreInfo **a2)
{
  v44 = *MEMORY[0x29EDCA608];
  *(this + 1) = 0u;
  v4 = this + 16;
  *this = &unk_2A1EE8D30;
  v5 = this + 40;
  *(this + 4) = 0u;
  v6 = this + 64;
  v7 = this + 88;
  *(this + 7) = 0u;
  v8 = this + 112;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 16) = 0;
  v14[0] = @"SE,ChipID";
  v9 = (this + 144);
  v14[1] = CFNumberGetTypeID();
  v14[2] = v9;
  v15 = 4;
  v16 = @"SE,FactoryMode";
  TypeID = CFBooleanGetTypeID();
  v18 = this + 153;
  v19 = 1;
  v20 = @"SE,ID";
  v21 = CFDataGetTypeID();
  v22 = v4;
  v23 = 24;
  v24 = @"SE,Nonce";
  v25 = CFDataGetTypeID();
  v26 = v5;
  v27 = 20;
  v28 = @"SE,RootKeyIdentifier";
  v29 = CFDataGetTypeID();
  v30 = v6;
  v31 = 32;
  v32 = @"SE,OsKeysIdentifier";
  v33 = CFDataGetTypeID();
  v34 = v7;
  v35 = 32;
  v36 = @"SE,BLFWKeysIdentifier";
  v37 = CFDataGetTypeID();
  v38 = v8;
  v39 = 32;
  v40 = @"SE,IsDev";
  v10 = 0;
  v41 = CFBooleanGetTypeID();
  v42 = this + 10;
  v43 = 1;
  *(this + 37) = 6;
  *(this + 76) = 7;
  do
  {
    SERestoreInfo::getValueFromCFDict(*a2, v14[v10], v14[v10 + 1], v14[v10 + 2], LODWORD(v14[v10 + 3]));
    v10 += 4;
  }

  while (v10 != 32);
  if (*v9 != 131601)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  v11 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_2984FA0A8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v9 = *v7;
  if (*v7)
  {
    v1[15] = v9;
    operator delete(v9);
  }

  v10 = *v6;
  if (*v6)
  {
    v1[12] = v10;
    operator delete(v10);
  }

  v11 = *v5;
  if (*v5)
  {
    v1[9] = v11;
    operator delete(v11);
  }

  v12 = *v4;
  if (*v4)
  {
    v1[6] = v12;
    operator delete(v12);
  }

  v13 = *v3;
  if (*v3)
  {
    v1[3] = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

SERestoreInfo::IcefallDeviceInfo *SERestoreInfo::IcefallDeviceInfo::IcefallDeviceInfo(SERestoreInfo::IcefallDeviceInfo *this, const SERestoreInfo::BLOB *a2)
{
  *(this + 1) = 0u;
  *this = &unk_2A1EE8D30;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 16) = 0;
  *(this + 37) = 6;
  *(this + 76) = 7;
  SERestoreInfo::IcefallDeviceInfo::updateFromMQ(this, a2);
  if (*(this + 36) != 131601)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

void sub_2984FA1DC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v5 = v1[14];
  if (v5)
  {
    v1[15] = v5;
    operator delete(v5);
  }

  v6 = v1[11];
  if (v6)
  {
    v1[12] = v6;
    operator delete(v6);
  }

  v7 = v1[8];
  if (v7)
  {
    v1[9] = v7;
    operator delete(v7);
  }

  v8 = v1[5];
  if (v8)
  {
    v1[6] = v8;
    operator delete(v8);
  }

  v9 = *v3;
  if (*v3)
  {
    v1[3] = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t SERestoreInfo::IcefallDeviceInfo::updateFromMQ(SERestoreInfo::IcefallDeviceInfo *this, const SERestoreInfo::BLOB *a2)
{
  v2 = *(a2 + 1);
  if (!v2 || (*(a2 + 2) & 0xFFFFFFFFFFFFFFFDLL) != 0x9D || *v2 != 257)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
    SERestoreInfo::IcefallDeviceInfo::updateFromMQ(exception);
  }

  *(this + 10) = *(v2 + 3) == 0;
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 2, (v2 + 4), (v2 + 28), 0x18uLL);
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 5, (v2 + 28), (v2 + 48), 0x14uLL);
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 8, (v2 + 48), (v2 + 80), 0x20uLL);
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 11, (v2 + 112), (v2 + 144), 0x20uLL);
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 14, (v2 + 80), (v2 + 112), 0x20uLL);
  *(this + 17) = *(v2 + 144);
  v4 = *(v2 + 2);
  *(this + 36) = *(v2 + 153);
  *(this + 37) = v4;
  return 1;
}

void SERestoreInfo::IcefallDeviceInfo::updateDict(SERestoreInfo::IcefallDeviceInfo *this, __CFDictionary *a2, char a3)
{
  valuePtr = *(this + 36);
  v6 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt32Type, &valuePtr);
  if (!v6)
  {
    SERestoreInfo::P73BaseDeviceInfo::updateDict();
  }

  v7 = v6;
  CFDictionarySetValue(a2, @"SE,ChipID", v6);
  CFRelease(v7);
  v8 = CFDataCreate(0, *(this + 2), *(this + 3) - *(this + 2));
  if (!v8)
  {
    SERestoreInfo::P73BaseDeviceInfo::updateDict();
  }

  v9 = v8;
  CFDictionarySetValue(a2, @"SE,ID", v8);
  CFRelease(v9);
  v10 = CFDataCreate(0, *(this + 5), *(this + 6) - *(this + 5));
  if (!v10)
  {
    SERestoreInfo::P73BaseDeviceInfo::updateDict();
  }

  v11 = v10;
  CFDictionarySetValue(a2, @"SE,Nonce", v10);
  CFRelease(v11);
  if (*(this + 153) == 1)
  {
    CFDictionarySetValue(a2, @"SE,FactoryMode", *MEMORY[0x29EDB8F00]);
  }

  v12 = CFDataCreate(0, *(this + 8), *(this + 9) - *(this + 8));
  if (!v12)
  {
    SERestoreInfo::P73BaseDeviceInfo::updateDict();
  }

  v13 = v12;
  CFDictionarySetValue(a2, @"SE,RootKeyIdentifier", v12);
  CFRelease(v13);
  if ((a3 & 1) == 0)
  {
    v14 = MEMORY[0x29EDB8F00];
    if (!*(this + 10))
    {
      v14 = MEMORY[0x29EDB8EF8];
    }

    CFDictionarySetValue(a2, @"SE,IsDev", *v14);
    v15 = CFDataCreate(0, *(this + 14), *(this + 15) - *(this + 14));
    if (!v15)
    {
      SERestoreInfo::P73BaseDeviceInfo::updateDict();
    }

    v16 = v15;
    CFDictionarySetValue(a2, @"SE,BLFWKeysIdentifier", v15);
    CFRelease(v16);
    v17 = CFDataCreate(0, *(this + 11), *(this + 12) - *(this + 11));
    if (!v17)
    {
      SERestoreInfo::P73BaseDeviceInfo::updateDict();
    }

    v18 = v17;
    CFDictionarySetValue(a2, @"SE,OsKeysIdentifier", v17);
    CFRelease(v18);
  }
}

void SERestoreInfo::IcefallDeviceInfo::~IcefallDeviceInfo(SERestoreInfo::IcefallDeviceInfo *this)
{
  SERestoreInfo::IcefallDeviceInfo::~IcefallDeviceInfo(this);

  operator delete(v1);
}

{
  *this = &unk_2A1EE8D30;
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    *(this + 9) = v4;
    operator delete(v4);
  }

  v5 = *(this + 5);
  if (v5)
  {
    *(this + 6) = v5;
    operator delete(v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    *(this + 3) = v6;
    operator delete(v6);
  }
}

void *SERestoreInfo::IcefallDeviceInfo::getOsKeyId@<X0>(SERestoreInfo::IcefallDeviceInfo *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a2, *(this + 11), *(this + 12), *(this + 12) - *(this + 11));
}

void *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = __src;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result >= a4)
  {
    v14 = result[1];
    v15 = v14 - v9;
    if (v14 - v9 >= a4)
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
          v19 = *v16++;
          *v18++ = v19;
          ++v17;
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

    if ((a4 & 0x8000000000000000) != 0)
    {
      std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
    }

    v10 = 2 * v8;
    if (2 * v8 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = std::vector<unsigned char>::__vallocate[abi:ne200100](v7, v11);
    v12 = v7[1];
    while (v6 != a3)
    {
      v13 = *v6++;
      *v12++ = v13;
    }
  }

  v7[1] = v12;
  return result;
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *a1, size_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](a1, a2);
    v4 = a1[1];
    v5 = &v4[a2];
    bzero(v4, a2);
    a1[1] = v5;
  }

  return a1;
}

void sub_2984FA7D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

SERestoreInfo::UpdateTable *SERestoreInfo::UpdateTable::UpdateTable(SERestoreInfo::UpdateTable *this, DERItem *a2)
{
  v2 = this;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v63 = (this + 8);
  *(this + 3) = 0;
  v3 = DERParseSequenceContent(a2, 3u, &P73BaseFirmwareDERSpec::UpdateTableItemSpec, v71, 0x30uLL);
  if (v3)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v64, "Cannot parse UpdateTable.");
    v55 = SERestoreInfo::SEException::SEException(exception, &v64, v3, @"libDERErrorDomain");
  }

  v4 = DERParseInteger(&v72, v2);
  if (v4)
  {
    v56 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v64, "Cannot parse UpdateTable.bsn.");
    v57 = SERestoreInfo::SEException::SEException(v56, &v64, v4, @"libDERErrorDomain");
  }

  v5 = DERDecodeSeqContentInit(&v73, v70);
  if (v5)
  {
    v58 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v64, "Cannot parse UpdateTable entries");
    v59 = SERestoreInfo::SEException::SEException(v58, &v64, v5, @"libDERErrorDomain");
  }

  v62 = v2;
  while (1)
  {
    v6 = DERDecodeSeqNext(v70, &v67);
    v7 = v6;
    if (v6)
    {
      break;
    }

    v8 = v68;
    if (v68)
    {
      v9 = v69 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v42 = __cxa_allocate_exception(0x10uLL);
      v43 = std::string::basic_string[abi:ne200100]<0>(v74, "Assertion: ");
      v44 = std::string::append(v43, "entry.data && entry.length");
      v45 = *&v44->__r_.__value_.__l.__data_;
      v76 = v44->__r_.__value_.__r.__words[2];
      v75 = v45;
      v44->__r_.__value_.__l.__size_ = 0;
      v44->__r_.__value_.__r.__words[2] = 0;
      v44->__r_.__value_.__r.__words[0] = 0;
      MEMORY[0x29C28BB00](v42, &v75);
      __cxa_throw(v42, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    v10 = 0;
    *__p = 0u;
    v66 = 0u;
    v64 = 0u;
    do
    {
      if (v8 >= &v68[v69])
      {
        break;
      }

      v11 = *v8;
      if (*v8)
      {
        v12 = (v11 & 1) == 0;
      }

      else
      {
        v12 = 0;
      }

      if (!v12)
      {
        v46 = __cxa_allocate_exception(0x48uLL);
        std::string::basic_string[abi:ne200100]<0>(&v75, "Wrong length for updateTableEnry");
        v47 = SERestoreInfo::SEException::SEException(v46, &v75, 2, @"SEUpdaterErrorDomain");
      }

      v13 = 0;
      v14 = (v8 + 1);
      v75 = 0uLL;
      v76 = 0;
      do
      {
        v8 = (v14 + 1);
        v15 = bswap32(*v14) >> 16;
        if (v13 >= v76)
        {
          v16 = v75;
          v17 = &v13[-v75];
          v18 = &v13[-v75] >> 1;
          if (v18 <= -2)
          {
            std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
          }

          if (&v76[-v75] <= v18 + 1)
          {
            v19 = v18 + 1;
          }

          else
          {
            v19 = &v76[-v75];
          }

          if (&v76[-v75] >= 0x7FFFFFFFFFFFFFFELL)
          {
            v20 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v19;
          }

          if (v20)
          {
            v21 = std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(&v75, v20);
            v20 = v22;
            v16 = v75;
            v17 = *(&v75 + 1) - v75;
            v23 = (*(&v75 + 1) - v75) >> 1;
          }

          else
          {
            v21 = 0;
            v23 = &v13[-v75] >> 1;
          }

          v24 = &v21[2 * v18];
          v25 = &v21[2 * v20];
          v26 = &v24[-2 * v23];
          *v24 = v15;
          v13 = v24 + 2;
          memcpy(v26, v16, v17);
          v27 = v75;
          *&v75 = v26;
          *(&v75 + 1) = v13;
          v76 = v25;
          if (v27)
          {
            operator delete(v27);
          }
        }

        else
        {
          *v13 = v15;
          v13 += 2;
        }

        *(&v75 + 1) = v13;
        v11 -= 2;
        ++v14;
      }

      while (v11);
      v28 = *(&v64 + 1);
      if (*(&v64 + 1) >= __p[0])
      {
        v29 = std::vector<std::vector<unsigned short>>::__emplace_back_slow_path<std::vector<unsigned short>&>(&v64, &v75);
      }

      else
      {
        **(&v64 + 1) = 0;
        v28[1] = 0;
        v28[2] = 0;
        std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(v28, v75, *(&v75 + 1), (*(&v75 + 1) - v75) >> 1);
        v29 = v28 + 3;
      }

      *(&v64 + 1) = v29;
      if (v75)
      {
        *(&v75 + 1) = v75;
        operator delete(v75);
      }

      ++v10;
    }

    while (v10 != 4);
    v31 = v8 + 1;
    v30 = *v8;
    if (*v8)
    {
      v32 = 0;
      v33 = *v8;
      do
      {
        --v33;
        v34 = *v31++;
        v32 = v34 | (v32 << 8);
      }

      while (v33);
      v35 = &v8[(v30 - 1)];
      v8 += v30;
      v31 = v35 + 2;
    }

    else
    {
      v32 = 0;
    }

    v75 = 0uLL;
    v76 = 0;
    v36 = operator new(2uLL);
    *v36 = v32;
    *(&v75 + 1) = v36 + 1;
    v76 = (v36 + 1);
    v37 = *(&v64 + 1);
    *&v75 = v36;
    if (*(&v64 + 1) >= __p[0])
    {
      v38 = std::vector<std::vector<unsigned short>>::__emplace_back_slow_path<std::vector<unsigned short>&>(&v64, &v75);
    }

    else
    {
      **(&v64 + 1) = 0;
      v37[1] = 0;
      v37[2] = 0;
      std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(v37, v75, *(&v75 + 1), (*(&v75 + 1) - v75) >> 1);
      v38 = v37 + 3;
    }

    *(&v64 + 1) = v38;
    if (v75)
    {
      *(&v75 + 1) = v75;
      operator delete(v75);
    }

    if (*v31 != 32)
    {
      v52 = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(&v75, "wrong updateTableEnry with wrong hash size");
      v53 = SERestoreInfo::SEException::SEException(v52, &v75, 15, @"SEUpdaterErrorDomain");
    }

    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p[1], v8 + 2, v8 + 34, 0x20uLL);
    v2 = v62;
    if (*(&v64 + 1) - v64 != 120)
    {
      v50 = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(&v75, "Missing element in updateTableEnry");
      v51 = SERestoreInfo::SEException::SEException(v50, &v75, 15, @"SEUpdaterErrorDomain");
    }

    v39 = *(v62 + 2);
    if (v39 >= *(v62 + 3))
    {
      updated = std::vector<SERestoreInfo::UpdateTableEntry>::__emplace_back_slow_path<SERestoreInfo::UpdateTableEntry&>(v63, &v64);
    }

    else
    {
      std::vector<SERestoreInfo::UpdateTableEntry>::__construct_one_at_end[abi:ne200100]<SERestoreInfo::UpdateTableEntry&>(v63, &v64);
      updated = v39 + 48;
    }

    *(v62 + 2) = updated;
    if (__p[1])
    {
      *&v66 = __p[1];
      operator delete(__p[1]);
    }

    *&v75 = &v64;
    std::vector<std::vector<unsigned short>>::__destroy_vector::operator()[abi:ne200100](&v75);
  }

  if (v6 != 1)
  {
    v48 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v64, "Wrong UpdateTable entries");
    v49 = SERestoreInfo::SEException::SEException(v48, &v64, v7, @"libDERErrorDomain");
  }

  if (*(v2 + 1) == *(v2 + 2))
  {
    v60 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v64, "Size of UpdateTable.entries is zero");
    v61 = SERestoreInfo::SEException::SEException(v60, &v64, 15, @"SEUpdaterErrorDomain");
  }

  return v2;
}

void sub_2984FAEE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  a25 = a10;
  std::vector<SERestoreInfo::UpdateTableEntry>::__destroy_vector::operator()[abi:ne200100](&a25);
  _Unwind_Resume(a1);
}

void SERestoreInfo::UpdateTableEntry::~UpdateTableEntry(SERestoreInfo::UpdateTableEntry *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = this;
  std::vector<std::vector<unsigned short>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

uint64_t SERestoreInfo::ImageBinary::print(int *a1, uint64_t a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v22);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "[", 1);
  v9 = MEMORY[0x29C28BBF0](v8, a1[10]);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "] ", 2);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "{", 1);
  v12 = strlen(off_29EE9C180[*a1]);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, off_29EE9C180[*a1], v12);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "}: ", 3);
  std::string::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(__p, *(a1 + 2), (*(a1 + 2) + *(a1 + 3)), *(a1 + 3));
  if ((v21 & 0x80u) == 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v16 = v21;
  }

  else
  {
    v16 = __p[1];
  }

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
  std::ios_base::getloc((v17 + *(*v17 - 24)));
  v18 = std::locale::use_facet(&v27, MEMORY[0x29EDC93D0]);
  (v18->__vftable[2].~facet_0)(v18, 10);
  std::locale::~locale(&v27);
  std::ostream::put();
  std::ostream::flush();
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  v22 = *MEMORY[0x29EDC9538];
  *(&v22 + *(v22 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v23 = MEMORY[0x29EDC9570] + 16;
  if (v25 < 0)
  {
    operator delete(v24[7].__locale_);
  }

  v23 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v24);
  std::ostream::~ostream();
  return MEMORY[0x29C28BCE0](&v26);
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
  MEMORY[0x29C28BCE0](a1 + 112);
  return a1;
}

uint64_t SERestoreInfo::UpdateTableEntry::print(unsigned __int16 ***a1, uint64_t a2)
{
  v45[4] = *MEMORY[0x29EDCA608];
  std::ostringstream::basic_ostringstream[abi:ne200100](&v36);
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
    v5 = *(a2 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, v4, v5);
  if (a1[1] == *a1)
  {
    std::vector<std::vector<unsigned short>>::__throw_out_of_range[abi:ne200100]();
  }

  v6 = ***a1;
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, "|", 1);
  SERestoreInfo::P73BaseDeviceInfo::getStateName(v6, &v41);
  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v41;
  }

  else
  {
    v8 = v41.__r_.__value_.__r.__words[0];
  }

  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v41.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v41.__r_.__value_.__l.__size_;
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, size);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "| ", 2);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  *&v41.__r_.__value_.__l.__data_ = xmmword_298561E40;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  std::vector<SERestoreInfo::UT>::__init_with_size[abi:ne200100]<SERestoreInfo::UT const*,SERestoreInfo::UT const*>(&v33, &v41, &v41.__r_.__value_.__r.__words[2], 4uLL);
  std::string::basic_string[abi:ne200100]<0>(&v41, "AMS");
  std::string::basic_string[abi:ne200100]<0>(v42, "RSN");
  std::string::basic_string[abi:ne200100]<0>(v43, "CSN");
  std::string::basic_string[abi:ne200100]<0>(v44, "FSN");
  std::string::basic_string[abi:ne200100]<0>(v45, "ACTION");
  v11 = v33;
  v28 = v34;
  if (v33 != v34)
  {
    do
    {
      v12 = &v41 + *v11;
      v13 = SHIBYTE(v12->__r_.__value_.__r.__words[2]);
      if (v13 >= 0)
      {
        v14 = &v41 + *v11;
      }

      else
      {
        v14 = v12->__r_.__value_.__r.__words[0];
      }

      if (v13 >= 0)
      {
        v15 = HIBYTE(v12->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v15 = v12->__r_.__value_.__l.__size_;
      }

      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, v14, v15);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " { ", 3);
      v17 = *v11;
      if (0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) <= v17)
      {
        std::vector<std::vector<unsigned short>>::__throw_out_of_range[abi:ne200100]();
      }

      v18 = &(*a1)[3 * v17];
      __p = 0;
      v31 = 0;
      v32 = 0;
      std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(&__p, *v18, *(v18 + 8), (*(v18 + 8) - *v18) >> 1);
      v19 = __p;
      v20 = v31;
      if (__p != v31)
      {
        v21 = 0;
        do
        {
          if (v21)
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, ",", 1);
          }

          *(&v38[-1].__locale_ + *(v36 - 24)) = *(&v38[-1].__locale_ + *(v36 - 24)) & 0xFFFFFFB5 | 8;
          v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, "0x", 2);
          v23 = MEMORY[0x29C28BC00](v22, *v19);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " ", 1);
          ++v19;
          --v21;
        }

        while (v19 != v20);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, "} ", 2);
      if (__p)
      {
        v31 = __p;
        operator delete(__p);
      }

      ++v11;
    }

    while (v11 != v28);
  }

  std::ios_base::getloc((&v36 + *(v36 - 24)));
  v24 = std::locale::use_facet(&__p, MEMORY[0x29EDC93D0]);
  (v24->__vftable[2].~facet_0)(v24, 10);
  std::locale::~locale(&__p);
  std::ostream::put();
  std::ostream::flush();
  std::stringbuf::str();
  for (i = 0; i != -15; i -= 3)
  {
    if (SHIBYTE(v45[i + 2]) < 0)
    {
      operator delete(v45[i]);
    }
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  v36 = *MEMORY[0x29EDC9538];
  *(&v36 + *(v36 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v37 = MEMORY[0x29EDC9570] + 16;
  if (v39 < 0)
  {
    operator delete(v38[7].__locale_);
  }

  v37 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v38);
  std::ostream::~ostream();
  result = MEMORY[0x29C28BCE0](&v40);
  v27 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2984FB978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a18);
  _Unwind_Resume(a1);
}

uint64_t SERestoreInfo::UpdateTable::print(unsigned int *a1, uint64_t a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v21);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "BSN: ", 5);
  *(v8 + *(*v8 - 24) + 8) = *(v8 + *(*v8 - 24) + 8) & 0xFFFFFFB5 | 8;
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "0x", 2);
  v10 = MEMORY[0x29C28BBF0](v9, *a1);
  std::ios_base::getloc((v10 + *(*v10 - 24)));
  v11 = std::locale::use_facet(&v18, MEMORY[0x29EDC93D0]);
  (v11->__vftable[2].~facet_0)(v11, 10);
  std::locale::~locale(&v18);
  std::ostream::put();
  std::ostream::flush();
  v13 = *(a1 + 1);
  for (i = *(a1 + 2); v13 != i; v13 += 6)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    SERestoreInfo::UpdateTableEntry::print(v13, &__p);
    if ((v20 & 0x80u) == 0)
    {
      locale = &v18;
    }

    else
    {
      locale = v18.__locale_;
    }

    if ((v20 & 0x80u) == 0)
    {
      v15 = v20;
    }

    else
    {
      v15 = v19;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, locale, v15);
    if (v20 < 0)
    {
      operator delete(v18.__locale_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::stringbuf::str();
  v21 = *MEMORY[0x29EDC9538];
  *(&v21 + *(v21 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v22 = MEMORY[0x29EDC9570] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v23);
  std::ostream::~ostream();
  return MEMORY[0x29C28BCE0](&v25);
}

void sub_2984FBD38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::locale a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::locale::~locale(&a16);
  std::ostringstream::~ostringstream(&a22);
  _Unwind_Resume(a1);
}

uint64_t SERestoreInfo::P73BaseDeliveryObject::updateMeasurement(SERestoreInfo::P73BaseDeliveryObject *this, CFDictionaryRef theDict, __CFError **a3)
{
  if (!theDict || !a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&value, "Assertion: ");
    v21 = std::string::append(&value, "outError && outMeasurementDict");
    v22 = *&v21->__r_.__value_.__l.__data_;
    v29 = v21->__r_.__value_.__r.__words[2];
    *__p = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C28BB00](exception, __p);
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  value.__r_.__value_.__r.__words[0] = 0;
  if (CFDictionaryGetValueIfPresent(theDict, @"SE,UpdatePayload", &value.__r_.__value_.__l.__data_))
  {
    v6 = value.__r_.__value_.__r.__words[0] == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = CFGetTypeID(value.__r_.__value_.__l.__data_);
    if (v7 == CFDictionaryGetTypeID())
    {
      if (value.__r_.__value_.__r.__words[0])
      {
        v8 = CFRetain(value.__r_.__value_.__l.__data_);
      }

      else
      {
        v8 = 0;
      }

LABEL_12:
      v10 = ccsha256_di();
      __p[0] = 0;
      __p[1] = 0;
      v29 = 0;
      v11 = *v10;
      v30 = 0;
      if (v11)
      {
        std::vector<unsigned char>::__append(__p, v11, &v30);
      }

      v13 = *(this + 5);
      v12 = *(this + 6);
      ccdigest();
      v14 = CFDataCreate(0, __p[0], __p[1] - __p[0]);
      if (v14)
      {
        isDev = SERestoreInfo::P73BaseDeliveryObject::isDev(this);
        v16 = kSETagMeasurementDevHash;
        if (!isDev)
        {
          v16 = kSETagMeasurementProdHash;
        }

        CFDictionarySetValue(v8, *v16, v14);
        v17 = 0;
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(v23, "Fail to allocate tmpData");
        *a3 = SERestoreInfo::CreateCFError(v23, 3, 0, @"SEUpdaterErrorDomain");
        if (v24 < 0)
        {
          operator delete(v23[0]);
        }

        v17 = 6;
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v17 == 6)
      {
        v18 = 0;
        if (!v8)
        {
LABEL_23:
          if (v14)
          {
            CFRelease(v14);
          }

          return v18 & 1;
        }
      }

      else
      {
        v18 = 1;
        if (!v8)
        {
          goto LABEL_23;
        }
      }

      CFRelease(v8);
      goto LABEL_23;
    }
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v8 = Mutable;
    CFDictionarySetValue(theDict, @"SE,UpdatePayload", Mutable);
    goto LABEL_12;
  }

  std::string::basic_string[abi:ne200100]<0>(v25, "Fail to allocate imageProps");
  *a3 = SERestoreInfo::CreateCFError(v25, 3, 0, @"SEUpdaterErrorDomain");
  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  v18 = 0;
  return v18 & 1;
}

void sub_2984FC050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL SERestoreInfo::P73BaseDeliveryObject::isDev(SERestoreInfo::P73BaseDeliveryObject *this)
{
  v1 = *(this + 8);
  if (*(this + 9) - v1 != 32)
  {
    return 0;
  }

  if (*v1 == 0x7B77E47DEC309FF8 && v1[1] == 0x8BF8D2A44AE3A97CLL && v1[2] == 0xAD34DB13A59CC364 && v1[3] == 0xAC0A2E6B4C223984)
  {
    return 1;
  }

  v5 = *v1 == 0x74975A216330E276 && v1[1] == 0x1F7F7DD3B6FB8D34;
  v6 = v5 && v1[2] == 0x3FA240FAC488FFFLL;
  if (v6 && v1[3] == 0x21EC7881080683DALL)
  {
    return 1;
  }

  v8 = *v1 == 0xD314CD88B2A173ABLL && v1[1] == 0xD0014B39DB0B4552;
  v9 = v8 && v1[2] == 0xC3B3802C47832D1BLL;
  if (v9 && v1[3] == 0x102CA645D536B9F3)
  {
    return 1;
  }

  v11 = *v1 == 0x43028028D9EE140FLL && v1[1] == 0x764EF91F0B455B82;
  v12 = v11 && v1[2] == 0x74D2E6CF8CD1659BLL;
  if (v12 && v1[3] == 0xBD4FC5BCF7FB4792)
  {
    return 1;
  }

  v14 = *v1 == 0x19016EC184635976 && v1[1] == 0xD25BD62A9019D9A3;
  v15 = v14 && v1[2] == 0xFD6855BA8DAED7D1;
  if (v15 && v1[3] == 0x3E6F156DACCAB98)
  {
    return 1;
  }

  v17 = *v1 == 0x4B4B6EEF8151F8B0 && v1[1] == 0x80D0BF7EE34277A5;
  v18 = v17 && v1[2] == 0xA6421FFAFBC6C2D3;
  if (v18 && v1[3] == 0x11CF79E52F051694)
  {
    return 1;
  }

  v20 = *v1 == 0x3B369AD4F6E8946ALL && v1[1] == 0x3A6B9A9BB3089AACLL;
  v21 = v20 && v1[2] == 0x8FA19016C1B6DB7CLL;
  if (v21 && v1[3] == 0x40ACEFB5D4F4787)
  {
    return 1;
  }

  v23 = *v1 == 0xFC41962122793EF7 && v1[1] == 0xB912209BBCCC0208;
  v24 = v23 && v1[2] == 0xA845838AEC9D85B0;
  if (v24 && v1[3] == 0x1DAD2E5A3D9AD8A8)
  {
    return 1;
  }

  v26 = *v1;
  v27 = v1[1];
  v29 = v1[2];
  v28 = v1[3];
  return v26 == 0xCBD1BDB61BAAD564 && v27 == 0x957F8100699D3DAALL && v29 == 0xB07184D6337E1DBCLL && v28 == 0x710CE2BFF2A6DF1CLL;
}

uint64_t SERestoreInfo::P73BaseDeliveryObject::updateVersionDict(SERestoreInfo::P73BaseDeliveryObject *this, __CFDictionary *a2, __CFError **a3)
{
  if (!a2 || !a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v12, "Assertion: ");
    v10 = std::string::append(&v12, "outError && outDict");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v14 = v10->__r_.__value_.__r.__words[2];
    v13 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C28BB00](exception, &v13);
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v5 = CFStringCreateWithBytes(0, *(this + 12), *(this + 13), 0x8000100u, 0);
  isDev = SERestoreInfo::P73BaseDeliveryObject::isDev(this);
  v7 = kSETagVersionDev;
  if (!isDev)
  {
    v7 = kSETagVersionProd;
  }

  CFDictionarySetValue(a2, *v7, v5);
  if (v5)
  {
    CFRelease(v5);
  }

  return 1;
}

void sub_2984FC570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

BOOL SERestoreInfo::P73BaseDeliveryObject::matchID(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*(a2 + 8) - *a2 != 32)
  {
    return 0;
  }

  v3 = *(a1 + 64);
  v4 = *v3;
  v5 = v3[1];
  v6 = *v2;
  v7 = v2[1];
  v9 = v3[2];
  v8 = v3[3];
  v11 = v2[2];
  v10 = v2[3];
  return v4 == v6 && v5 == v7 && v9 == v11 && v8 == v10;
}

uint64_t SERestoreInfo::P73BaseDeliveryObject::print(SERestoreInfo::P73BaseDeliveryObject *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v32);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "Details: ", 9);
  std::string::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, *(this + 12), (*(this + 12) + *(this + 13)), *(this + 13));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, p_p, size);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v6 = std::locale::use_facet(&v37, MEMORY[0x29EDC93D0]);
  (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(&v37);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "FactoryPostflight revision: ", 28);
  std::to_string(&__p, *(this + 152));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = __p.__r_.__value_.__l.__size_;
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
  std::ios_base::getloc((v10 + *(*v10 - 24)));
  v11 = std::locale::use_facet(&v37, MEMORY[0x29EDC93D0]);
  (v11->__vftable[2].~facet_0)(v11, 10);
  std::locale::~locale(&v37);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "UpdateTable: ", 13);
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  v13 = std::locale::use_facet(&__p, MEMORY[0x29EDC93D0]);
  (v13->__vftable[2].~facet_0)(v13, 10);
  std::locale::~locale(&__p);
  std::ostream::put();
  std::ostream::flush();
  std::string::basic_string[abi:ne200100]<0>(v29, "\t");
  SERestoreInfo::UpdateTable::print(this + 30, v29);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = __p.__r_.__value_.__l.__size_;
  }

  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v37, MEMORY[0x29EDC93D0]);
  (v17->__vftable[2].~facet_0)(v17, 10);
  std::locale::~locale(&v37);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "Binaries: ", 10);
  std::ios_base::getloc((v18 + *(*v18 - 24)));
  v19 = std::locale::use_facet(&__p, MEMORY[0x29EDC93D0]);
  (v19->__vftable[2].~facet_0)(v19, 10);
  std::locale::~locale(&__p);
  std::ostream::put();
  std::ostream::flush();
  v20 = *(this + 1);
  if (v20 != (this + 16))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v27, "\t");
      SERestoreInfo::ImageBinary::print(v20 + 10, v27);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v22 = __p.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, v21, v22);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v28 < 0)
      {
        operator delete(v27[0]);
      }

      v23 = *(v20 + 1);
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = *(v20 + 2);
          v25 = *v24 == v20;
          v20 = v24;
        }

        while (!v25);
      }

      v20 = v24;
    }

    while (v24 != (this + 16));
  }

  std::stringbuf::str();
  v32 = *MEMORY[0x29EDC9538];
  *(&v32 + *(v32 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v33 = MEMORY[0x29EDC9570] + 16;
  if (v35 < 0)
  {
    operator delete(v34[7].__locale_);
  }

  v33 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v34);
  std::ostream::~ostream();
  return MEMORY[0x29C28BCE0](&v36);
}

void sub_2984FCBC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::locale a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a28);
  _Unwind_Resume(a1);
}

uint64_t SERestoreInfo::P73BaseDeliveryObject::parseFPRev(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1 || (v2 = *(a1 + 16)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v12, "Assertion: ");
    v10 = std::string::append(&v12, "data.data && data.length");
    v11 = *&v10->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C28BB00](exception, &__str);
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  std::string::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__str, v1, &v1[v2], v2);
  v3 = std::string::rfind(&__str, 45, 0xFFFFFFFFFFFFFFFFLL);
  if (v3 == -1)
  {
    goto LABEL_16;
  }

  std::string::basic_string(&v12, &__str, v3 + 1, 0xFFFFFFFFFFFFFFFFLL, &v14);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str = v12;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__str.__r_.__value_.__l.__size_ != 2)
    {
      goto LABEL_16;
    }

    p_str = __str.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) != 2)
    {
      goto LABEL_16;
    }

    p_str = &__str;
  }

  v5 = 0;
  while (1)
  {
    v6 = p_str->__r_.__value_.__s.__data_[v5];
    if (v6 < 0 || (*(MEMORY[0x29EDCA600] + 4 * v6 + 60) & 0x400) == 0)
    {
      break;
    }

    if (++v5 == 2)
    {
      v7 = std::stoul(&__str, 0, 10);
      goto LABEL_17;
    }
  }

LABEL_16:
  v7 = -18;
LABEL_17:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_2984FCE30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SERestoreInfo::P73BaseFirmware::updateMeasurementDict(__CFError *a1, uint64_t a2, uint64_t a3)
{
  v46 = *MEMORY[0x29EDCA608];
  v41 = 0;
  if (!*a3)
  {
    goto LABEL_24;
  }

  (*(**a3 + 16))(&v43);
  v6 = operator new(0x18uLL);
  *v6 = 0;
  v6[1] = 0;
  v6[2] = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v6, v43, *(&v43 + 1), *(&v43 + 1) - v43);
  v38 = 0;
  v7 = v41;
  v41 = v6;
  if (v7)
  {
    std::default_delete<std::vector<unsigned char>>::operator()[abi:ne200100](&v41, v7);
    v38 = 0;
  }

  if (v43)
  {
    *(&v43 + 1) = v43;
    operator delete(v43);
  }

  if ((*(**a3 + 32))() == 54)
  {
    v43 = xmmword_298561E98;
    v44 = unk_298561EA8;
    v39 = 0;
    v40 = 0;
    v38 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v38, &v43, v45, 0x20uLL);
    v43 = xmmword_298561EB8;
    v44 = unk_298561EC8;
    v37 = 0;
    __p = 0uLL;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, &v43, v45, 0x20uLL);
    v8 = *v41;
    v9 = *(v41 + 1) - *v41;
    if (v9 == v39 - v38)
    {
      v8 = memcmp(v8, v38, v9);
      v10 = v8 == 0;
    }

    else
    {
      v10 = 0;
    }

    v14 = SERestoreInfo::SERestoreInfoLog::get(v8);
    SERestoreInfo::SERestoreInfoLog::printLog(v14, 2, "updateMeasurementDict", "KeyID 0x%X, overwriting with dev %d", bswap32(**v41), v10);
    if (!v10)
    {
      goto LABEL_20;
    }

    v15 = v41;
    if (v41 == &__p)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if ((*(**a3 + 32))() != 56)
  {
    goto LABEL_24;
  }

  v43 = xmmword_298561ED8;
  v44 = unk_298561EE8;
  v39 = 0;
  v40 = 0;
  v38 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v38, &v43, v45, 0x20uLL);
  v43 = xmmword_298561EF8;
  v44 = unk_298561F08;
  v37 = 0;
  __p = 0uLL;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, &v43, v45, 0x20uLL);
  v11 = *v41;
  v12 = *(v41 + 1) - *v41;
  if (v12 == v39 - v38)
  {
    v11 = memcmp(v11, v38, v12);
    v13 = v11 == 0;
  }

  else
  {
    v13 = 0;
  }

  v16 = SERestoreInfo::SERestoreInfoLog::get(v11);
  SERestoreInfo::SERestoreInfoLog::printLog(v16, 2, "updateMeasurementDict", "KeyID 0x%X, overwriting with dev %d", bswap32(**v41), v13);
  if (v13)
  {
    v15 = v41;
    if (v41 != &__p)
    {
LABEL_19:
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v15, __p.n128_u64[0], __p.n128_u64[1], __p.n128_u64[1] - __p.n128_u64[0]);
    }
  }

LABEL_20:
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

LABEL_24:
  *(&v43 + 1) = 0;
  *&v44 = 0;
  *&v43 = &v43 + 8;
  v38 = 0;
  v39 = a1;
  v17 = (*(a1 + 3) - *(a1 + 2)) >> 5;
  if (!v17)
  {
    goto LABEL_53;
  }

  do
  {
    SERestoreInfo::SEFirmwareIter::operator*(&v38);
    v18 = __p.n128_u64[0];
    v35 = __p;
    if (__p.n128_u64[1])
    {
      atomic_fetch_add_explicit((__p.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
    }

    if (!v41 || (v19 = *(v18 + 64), v20 = *(v18 + 72) - v19, v20 == *(v41 + 1) - *v41) && !memcmp(v19, *v41, v20))
    {
      v21 = std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::find<std::vector<unsigned char>>(&v43, (v18 + 64));
      if ((&v43 + 8) == v21)
      {
        std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::__emplace_unique_key_args<std::vector<unsigned char>,std::vector<unsigned char> const&,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>(&v43, v35.n128_u64[0] + 64, v35.n128_u64[0] + 64, &v35);
      }

      else if (*(v35.n128_u64[0] + 160) > *(*(v21 + 56) + 160))
      {
        v42 = v35.n128_u64[0] + 64;
        v22 = std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::__emplace_unique_key_args<std::vector<unsigned char>,std::piecewise_construct_t const&,std::tuple<std::vector<unsigned char> const&>,std::tuple<>>(&v43, v35.n128_u64[0] + 64, &std::piecewise_construct, &v42);
        v23 = v35;
        v35 = 0uLL;
        v24 = v22[8];
        *(v22 + 7) = v23;
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }
      }
    }

    if (v35.n128_u64[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35.n128_u64[1]);
    }

    if (__p.n128_u64[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.n128_u64[1]);
    }

    LODWORD(v38) = v38 + 1;
  }

  while (v38 != v17);
  if (!v44)
  {
LABEL_53:
    exception = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v38, "No matching delivery object found.");
    v34 = SERestoreInfo::SEException::SEException(exception, &v38, 24, @"SEUpdaterErrorDomain");
  }

  v25 = v43;
  if (v43 != (&v43 + 8))
  {
    do
    {
      v38 = 0;
      (*(**(v25 + 7) + 16))(*(v25 + 7), a2, &v38);
      if (v38)
      {
        v31 = __cxa_allocate_exception(0x48uLL);
        v32 = SERestoreInfo::SEException::SEException(v31, v38);
      }

      v26 = *(v25 + 1);
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = *(v25 + 2);
          v28 = *v27 == v25;
          v25 = v27;
        }

        while (!v28);
      }

      v25 = v27;
    }

    while (v27 != (&v43 + 8));
  }

  std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::destroy(&v43, *(&v43 + 1));
  v29 = v41;
  v41 = 0;
  if (v29)
  {
    std::default_delete<std::vector<unsigned char>>::operator()[abi:ne200100](&v41, v29);
  }

  v30 = *MEMORY[0x29EDCA608];
}

void sub_2984FD434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void **a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  v24 = a23;
  a23 = 0;
  if (v24)
  {
    std::default_delete<std::vector<unsigned char>>::operator()[abi:ne200100](&a23, v24);
  }

  _Unwind_Resume(exception_object);
}

double SERestoreInfo::P73BaseFirmware::makeDeliveryObject@<D0>(DERItem *a1@<X1>, _OWORD *a2@<X8>)
{
  if (a1->data)
  {
    v4 = a1->length == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v107, "Assertion: ");
    v41 = std::string::append(&v107, "input.data && input.length");
    v42 = *&v41->__r_.__value_.__l.__data_;
    v95 = v41->__r_.__value_.__r.__words[2];
    v94 = v42;
    v41->__r_.__value_.__l.__size_ = 0;
    v41->__r_.__value_.__r.__words[2] = 0;
    v41->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C28BB00](exception, &v94);
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v5 = DERParseSequenceContent(a1, 5u, &P73BaseFirmwareDERSpec::DeliveryObjectItemSpec, &v94, 0x50uLL);
  if (v5)
  {
    v67 = v5;
    v68 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v107, "Failed to parse as per DeliveryObjectItemSpec");
    v69 = SERestoreInfo::SEException::SEException(v68, &v107, v67, @"libDERErrorDomain");
  }

  LODWORD(v107.__r_.__value_.__l.__data_) = 0;
  if (DERParseInteger(&v94, &v107) || LODWORD(v107.__r_.__value_.__l.__data_) || v96 != 32)
  {
    v70 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v107, "Failed to validate delivery object");
    v71 = SERestoreInfo::SEException::SEException(v70, &v107, 15, @"SEUpdaterErrorDomain");
  }

  _ZNSt3__115allocate_sharedB8ne200100IN13SERestoreInfo21P73BaseDeliveryObjectENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&v85);
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>((v85 + 64), v95, &v95[v96], v96);
  v107.__r_.__value_.__r.__words[0] = &unk_2A1EE8E30;
  *&v107.__r_.__value_.__r.__words[1] = v97;
  v108 = 0;
  SERestoreInfo::BLOB::operator=((v85 + 88), &v107);
  SERestoreInfo::BLOB::~BLOB(&v107);
  v82 = &unk_2A1EE8E30;
  v83 = *(v85 + 96);
  v84 = *(v85 + 112);
  v6 = SERestoreInfo::P73BaseDeliveryObject::parseFPRev(&v82);
  *(v85 + 152) = v6;
  SERestoreInfo::BLOB::~BLOB(&v82);
  v7 = DERParseSequence(&v98, 3u, &P73BaseFirmwareDERSpec::UpdatePayloadItemSpec, v92, 0x30uLL);
  if (v7)
  {
    v72 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v107, "Failed to parse updatePayload as per UpdatePayloadItemSpec");
    v73 = SERestoreInfo::SEException::SEException(v72, &v107, v7, @"libDERErrorDomain");
  }

  v8 = DERParseSequenceContent(v93, 2u, &P73BaseFirmwareDERSpec::SignedSectionItemSpec, &v90, 0x20uLL);
  if (v8)
  {
    v74 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v107, "Failed to parse signedSection as per SignedSectionItemSpec");
    v75 = SERestoreInfo::SEException::SEException(v74, &v107, v8, @"libDERErrorDomain");
  }

  SERestoreInfo::UpdateTable::UpdateTable(&v107, &v90);
  v9 = v85;
  *(v85 + 120) = v107.__r_.__value_.__l.__data_;
  std::vector<SERestoreInfo::UpdateTableEntry>::__vdeallocate((v9 + 128));
  *(v9 + 128) = *&v107.__r_.__value_.__r.__words[1];
  *(v9 + 144) = v108;
  v108 = 0;
  *&v107.__r_.__value_.__r.__words[1] = 0uLL;
  v114[0] = &v107.__r_.__value_.__l.__size_;
  std::vector<SERestoreInfo::UpdateTableEntry>::__destroy_vector::operator()[abi:ne200100](v114);
  if (!v99[0] || !v99[1])
  {
    v43 = __cxa_allocate_exception(0x10uLL);
    v44 = std::string::basic_string[abi:ne200100]<0>(v114, "Assertion: ");
    v45 = std::string::append(v44, "binaryItem.data && binaryItem.length");
    v46 = *&v45->__r_.__value_.__l.__data_;
    v107.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
    *&v107.__r_.__value_.__l.__data_ = v46;
    v45->__r_.__value_.__l.__size_ = 0;
    v45->__r_.__value_.__r.__words[2] = 0;
    v45->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C28BB00](v43, &v107);
    __cxa_throw(v43, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v10 = v85;
  v11 = DERDecodeSeqContentInit(v99, v119);
  if (v11)
  {
    v76 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v107, "Cannot init sequence for DeliveryObject.binaries");
    v77 = SERestoreInfo::SEException::SEException(v76, &v107, v11, @"libDERErrorDomain");
  }

  while (1)
  {
    v12 = DERDecodeSeqNext(v119, &v117);
    if (v12)
    {
      break;
    }

    LODWORD(v107.__r_.__value_.__l.__data_) = 0;
    v107.__r_.__value_.__l.__size_ = &unk_2A1EE8E30;
    v109 = 0;
    v110 = 0;
    v112 = 0;
    v113 = 0;
    v111 = 0;
    v106 = 0;
    v13 = DERParseSequenceContent(&v118, 4u, &P73BaseFirmwareDERSpec::ImageBinaryItemSpec, v114, 0x40uLL);
    if (v13)
    {
      v52 = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(&v120, "Cannot parse ImageBinary.");
      v53 = SERestoreInfo::SEException::SEException(v52, &v120, v13, @"libDERErrorDomain");
    }

    v14 = DERParseInteger(v114, &v106);
    if (v14 || v106 >= 5)
    {
      v47 = v14;
      v48 = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(&v120, "ImageBinary.type is out of range.");
      v49 = SERestoreInfo::SEException::SEException(v48, &v120, v47, @"libDERErrorDomain");
    }

    LODWORD(v107.__r_.__value_.__l.__data_) = v106;
    v120 = &unk_2A1EE8E30;
    v121 = v114[2];
    v122 = v114[3];
    v123 = 0;
    SERestoreInfo::BLOB::operator=(&v107.__r_.__value_.__l.__size_, &v120);
    SERestoreInfo::BLOB::~BLOB(&v120);
    v15 = DERParseInteger(&v115, &v110);
    if (v15)
    {
      v50 = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(&v120, "Cannot parse ImageBinary.index.");
      v51 = SERestoreInfo::SEException::SEException(v50, &v120, v15, @"libDERErrorDomain");
    }

    v16 = DERDecodeSeqContentInit(&v116, v105);
    if (v16)
    {
      v54 = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(&v120, "Cannot init sequence for ImageBinary.apdus");
      v55 = SERestoreInfo::SEException::SEException(v54, &v120, v16, @"libDERErrorDomain");
    }

    while (1)
    {
      v17 = DERDecodeSeqNext(v105, &v103);
      v18 = v17;
      if (v17)
      {
        break;
      }

      v100 = &unk_2A1EE8E30;
      v101 = v104;
      v102 = 0;
      v19 = v112;
      if (v112 >= v113)
      {
        v22 = (v112 - v111) >> 5;
        v23 = v22 + 1;
        if ((v22 + 1) >> 59)
        {
          std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
        }

        v24 = v113 - v111;
        if ((v113 - v111) >> 4 > v23)
        {
          v23 = v24 >> 4;
        }

        if (v24 >= 0x7FFFFFFFFFFFFFE0)
        {
          v25 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v23;
        }

        v124 = &v111;
        if (v25)
        {
          v26 = std::__allocate_at_least[abi:ne200100]<std::allocator<SERestoreInfo::BLOB>>(&v111, v25);
        }

        else
        {
          v26 = 0;
        }

        v27 = &v26[4 * v22];
        v120 = v26;
        v121 = v27;
        v123 = &v26[4 * v25];
        *v27 = &unk_2A1EE8E30;
        v28 = v101;
        v27[3] = v102;
        *(v27 + 1) = v28;
        v122 = v27 + 4;
        std::vector<SERestoreInfo::BLOB>::__swap_out_circular_buffer(&v111, &v120);
        v21 = v112;
        std::__split_buffer<SERestoreInfo::BLOB>::~__split_buffer(&v120);
      }

      else
      {
        *v112 = &unk_2A1EE8E30;
        v20 = v101;
        *(v19 + 3) = v102;
        *(v19 + 8) = v20;
        v21 = v19 + 32;
      }

      v112 = v21;
      SERestoreInfo::BLOB::~BLOB(&v100);
    }

    if (v17 != 1)
    {
      v38 = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(&v120, "Cannot parse ImageBinary.apdus");
      v39 = SERestoreInfo::SEException::SEException(v38, &v120, v18, @"libDERErrorDomain");
    }

    std::__tree<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>>>::__emplace_unique_impl<unsigned int &,SERestoreInfo::ImageBinary&>(v10 + 8, &v110, &v107);
    v120 = &v111;
    std::vector<SERestoreInfo::BLOB>::__destroy_vector::operator()[abi:ne200100](&v120);
    SERestoreInfo::BLOB::~BLOB(&v107.__r_.__value_.__r.__words[1]);
  }

  if (v12 != 1)
  {
    v56 = v12;
    v57 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v107, "Cannot parse DeliveryObject.binaries");
    v58 = SERestoreInfo::SEException::SEException(v57, &v107, v56, @"libDERErrorDomain");
  }

  v107.__r_.__value_.__r.__words[0] = &unk_2A1EE8E30;
  *&v107.__r_.__value_.__r.__words[1] = v98;
  v108 = 0;
  SERestoreInfo::BLOB::operator=((v85 + 32), &v107);
  SERestoreInfo::BLOB::~BLOB(&v107);
  v29 = v85;
  *(v85 + 156) = 0;
  *(v29 + 160) = 0;
  v30 = DERParseSequenceContent(&v91, 2u, &P73BaseFirmwareDERSpec::UpdatePropertiesItemSpec, v88, 0x20uLL);
  v31 = v30;
  if (v30)
  {
    if (v30 != 5)
    {
      v78 = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(&v107, "Failed to parse updateProperties as per UpdatePropertiesItemSpec.");
      v79 = SERestoreInfo::SEException::SEException(v78, &v107, v31, @"libDERErrorDomain");
    }
  }

  else
  {
    v100 = 0;
    v33 = DERDecodeSeqInit(&v89, &v100, &v120);
    if (v33)
    {
      v80 = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(&v107, "Cannot parse properties entries");
      v81 = SERestoreInfo::SEException::SEException(v80, &v107, v33, @"libDERErrorDomain");
    }

    while (!DERDecodeSeqNext(&v120, &v107))
    {
      v34 = DERDecodeItem(&v107.__r_.__value_.__l.__size_, &v107);
      if (v34)
      {
        v59 = __cxa_allocate_exception(0x48uLL);
        std::string::basic_string[abi:ne200100]<0>(v114, "Cannot parse property");
        v60 = SERestoreInfo::SEException::SEException(v59, v114, v34, @"libDERErrorDomain");
      }

      v35 = DERParseSequenceContent(&v107.__r_.__value_.__l.__size_, 2u, &P73BaseFirmwareDERSpec::PropertyItemSpec, v86, 0x20uLL);
      if (v35)
      {
        v61 = __cxa_allocate_exception(0x48uLL);
        std::string::basic_string[abi:ne200100]<0>(v114, "Failed to parse as per PropertyItemSpec");
        v62 = SERestoreInfo::SEException::SEException(v61, v114, v35, @"libDERErrorDomain");
      }

      if (v86[1] == 4)
      {
        if (*v86[0] == 1768121715)
        {
          LODWORD(v117) = 0;
          v37 = DERParseInteger(v87, &v117);
          if (v37)
          {
            v63 = __cxa_allocate_exception(0x48uLL);
            std::string::basic_string[abi:ne200100]<0>(v114, "Failed to parse 'seci' value");
            v64 = SERestoreInfo::SEException::SEException(v63, v114, v37, @"libDERErrorDomain");
          }

          *(v85 + 156) = v117;
        }

        else if (*v86[0] == 1986553203)
        {
          LODWORD(v117) = 0;
          v36 = DERParseInteger(v87, &v117);
          if (v36)
          {
            v65 = __cxa_allocate_exception(0x48uLL);
            std::string::basic_string[abi:ne200100]<0>(v114, "Failed to parse 'sehv' value");
            v66 = SERestoreInfo::SEException::SEException(v65, v114, v36, @"libDERErrorDomain");
          }

          *(v85 + 160) = v117;
        }
      }
    }
  }

  result = *&v85;
  *a2 = v85;
  return result;
}

void sub_2984FE20C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *__p, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a63 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void *SERestoreInfo::BLOB::operator=(void *a1, void *a2)
{
  if (a2 != a1)
  {
    v4 = a2[2];
    a1[1] = a2[1];
    a1[2] = v4;
    v5 = a1[3];
    if (v5)
    {
      CFRelease(v5);
      a1[3] = 0;
    }

    v6 = a2[3];
    if (v6)
    {
      a1[3] = CFRetain(v6);
    }
  }

  return a1;
}

void SERestoreInfo::P73BaseFirmware::~P73BaseFirmware(SERestoreInfo::P73BaseFirmware *this)
{
  SERestoreInfo::SEFirmwareBase::~SEFirmwareBase(this);

  operator delete(v1);
}

void SERestoreInfo::P73BaseDeliveryObject::~P73BaseDeliveryObject(SERestoreInfo::P73BaseDeliveryObject *this)
{
  *this = &unk_2A1EE8DC8;
  v3 = (this + 128);
  std::vector<SERestoreInfo::UpdateTableEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  SERestoreInfo::BLOB::~BLOB((this + 88));
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  SERestoreInfo::BLOB::~BLOB((this + 32));
  std::__tree<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>>>::destroy(this + 8, *(this + 2));
}

{
  *this = &unk_2A1EE8DC8;
  v3 = (this + 128);
  std::vector<SERestoreInfo::UpdateTableEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  SERestoreInfo::BLOB::~BLOB((this + 88));
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  SERestoreInfo::BLOB::~BLOB((this + 32));
  std::__tree<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>>>::destroy(this + 8, *(this + 2));
  operator delete(this);
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(2 * a2);
}

void *std::vector<std::vector<unsigned short>>::__emplace_back_slow_path<std::vector<unsigned short>&>(uint64_t a1, uint64_t a2)
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

  v19 = a1;
  if (v6)
  {
    v7 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[24 * v2];
  v15 = v7;
  v16 = v8;
  v17 = v8;
  v18 = &v7[24 * v6];
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(v8, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
  v9 = v17 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = v16 - v10;
  memcpy(v16 - v10, *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v9;
  v13 = *(a1 + 16);
  *(a1 + 16) = v18;
  v17 = v12;
  v18 = v13;
  v15 = v12;
  v16 = v12;
  std::__split_buffer<std::vector<unsigned short>>::~__split_buffer(&v15);
  return v9;
}

void sub_2984FE724(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<unsigned short>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::vector<unsigned short>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<unsigned short>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<unsigned short>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void std::vector<std::vector<unsigned short>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<unsigned short>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<unsigned short>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
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

void SERestoreInfo::BLOB::~BLOB(SERestoreInfo::BLOB *this)
{
  SERestoreInfo::BLOB::~BLOB(this);

  operator delete(v1);
}

{
  *this = &unk_2A1EE8E30;
  v2 = *(this + 3);
  if (v2)
  {
    CFRelease(v2);
    *(this + 3) = 0;
  }
}

void std::vector<SERestoreInfo::UpdateTableEntry>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 48;
        std::allocator<SERestoreInfo::UpdateTableEntry>::destroy[abi:ne200100](a1, v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::allocator<SERestoreInfo::UpdateTableEntry>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    *(a2 + 32) = v3;
    operator delete(v3);
  }

  v4 = a2;
  std::vector<std::vector<unsigned short>>::__destroy_vector::operator()[abi:ne200100](&v4);
}

void SERestoreInfo::ImageBinary::~ImageBinary(SERestoreInfo::ImageBinary *this)
{
  v2 = (this + 48);
  std::vector<SERestoreInfo::BLOB>::__destroy_vector::operator()[abi:ne200100](&v2);
  SERestoreInfo::BLOB::~BLOB((this + 8));
}

void (***std::vector<SERestoreInfo::BLOB>::__swap_out_circular_buffer(void (****a1)(void), void *a2))(void)
{
  v4 = a2[1];
  result = *a1;
  v6 = a1[1];
  v8 = (v4 - (v6 - result));
  if (v6 != result)
  {
    v9 = v4 - 32 * ((v6 - result) >> 5);
    v10 = result;
    v11 = v8;
    do
    {
      *v11 = &unk_2A1EE8E30;
      v12 = *(v10 + 1);
      v11[3] = v10[3];
      *(v11 + 1) = v12;
      v10 += 4;
      v11 += 4;
      v9 += 32;
    }

    while (v10 != v6);
    v13 = result;
    v14 = result;
    do
    {
      v15 = *v14;
      v14 += 4;
      (*v15)();
      v13 += 4;
      result = v14;
    }

    while (v14 != v6);
  }

  a2[1] = v8;
  v16 = *a1;
  *a1 = v8;
  a1[1] = v16;
  a2[1] = v16;
  v17 = a1[1];
  a1[1] = a2[2];
  a2[2] = v17;
  v18 = a1[2];
  a1[2] = a2[3];
  a2[3] = v18;
  *a2 = a2[1];
  return result;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<SERestoreInfo::BLOB>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 59)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(32 * a2);
}

uint64_t std::__split_buffer<SERestoreInfo::BLOB>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 32);
    *(a1 + 16) = i - 32;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t **std::__tree<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>>>::__emplace_unique_impl<unsigned int &,SERestoreInfo::ImageBinary&>(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  std::__tree<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>>>::__construct_node<unsigned int &,SERestoreInfo::ImageBinary&>(a1, a2, a3, &__p);
  v4 = __p;
  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = *(__p + 16);
    while (1)
    {
      while (1)
      {
        v8 = v6;
        v9 = *(v6 + 16);
        if (v7 >= v9)
        {
          break;
        }

        v6 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_10;
        }
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = v8[1];
      if (!v6)
      {
        v5 = v8 + 1;
        goto LABEL_10;
      }
    }

    __p = 0;
    if (v4)
    {
      std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,void *>>>::operator()[abi:ne200100](&v12, v4);
    }
  }

  else
  {
    v8 = (a1 + 8);
LABEL_10:
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(a1, v8, v5, __p);
    return __p;
  }

  return v8;
}

char *std::__tree<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>>>::__construct_node<unsigned int &,SERestoreInfo::ImageBinary&>@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x70uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *(v8 + 16) = *a2;
  *(v8 + 10) = *a3;
  *(v8 + 6) = &unk_2A1EE8E30;
  *(v8 + 56) = *(a3 + 16);
  *(v8 + 9) = *(a3 + 32);
  *(v8 + 20) = *(a3 + 40);
  *(v8 + 12) = 0;
  *(v8 + 13) = 0;
  *(v8 + 11) = 0;
  result = std::vector<SERestoreInfo::BLOB>::__init_with_size[abi:ne200100]<SERestoreInfo::BLOB*,SERestoreInfo::BLOB*>(v8 + 88, *(a3 + 48), *(a3 + 56), (*(a3 + 56) - *(a3 + 48)) >> 5);
  *(a4 + 16) = 1;
  return result;
}

void sub_2984FEE38(_Unwind_Exception *a1)
{
  SERestoreInfo::BLOB::~BLOB(v4);
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

char *std::vector<SERestoreInfo::BLOB>::__init_with_size[abi:ne200100]<SERestoreInfo::BLOB*,SERestoreInfo::BLOB*>(char *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<SERestoreInfo::BLOB>::__vallocate[abi:ne200100](result, a4);
    v7 = *(v6 + 1);
    if (a2 != a3)
    {
      v8 = *(v6 + 1);
      do
      {
        *v7 = &unk_2A1EE8E30;
        v9 = *(a2 + 8);
        *(v7 + 24) = *(a2 + 24);
        *(v7 + 8) = v9;
        a2 += 32;
        v7 += 32;
        v8 += 32;
      }

      while (a2 != a3);
    }

    *(v6 + 1) = v7;
  }

  return result;
}

char *std::vector<SERestoreInfo::BLOB>::__vallocate[abi:ne200100](void *a1, unint64_t a2)
{
  if (a2 >> 59)
  {
    std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<SERestoreInfo::BLOB>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[32 * v4];
  return result;
}

void std::vector<SERestoreInfo::BLOB>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 32;
      v7 = v4 - 32;
      v8 = v4 - 32;
      do
      {
        v9 = *v8;
        v8 -= 32;
        (*v9)(v7);
        v6 -= 32;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 11;
    std::vector<SERestoreInfo::BLOB>::__destroy_vector::operator()[abi:ne200100](&v3);
    SERestoreInfo::BLOB::~BLOB((__p + 6));
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void SERestoreInfo::SEFirmwareBase::~SEFirmwareBase(SERestoreInfo::SEFirmwareBase *this)
{
  *this = &unk_2A1EE9120;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
    *(this + 1) = 0;
  }

  v3 = (this + 16);
  std::vector<SERestoreInfo::BLOB>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::__tree<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SERestoreInfo::ImageBinary>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SERestoreInfo::ImageBinary>>>::destroy(a1, *(a2 + 1));
    v4 = (a2 + 88);
    std::vector<SERestoreInfo::BLOB>::__destroy_vector::operator()[abi:ne200100](&v4);
    SERestoreInfo::BLOB::~BLOB((a2 + 48));
    operator delete(a2);
  }
}

void std::vector<SERestoreInfo::UpdateTableEntry>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::allocator<SERestoreInfo::UpdateTableEntry>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::vector<SERestoreInfo::UpdateTableEntry>::__construct_one_at_end[abi:ne200100]<SERestoreInfo::UpdateTableEntry&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  std::vector<std::vector<unsigned short>>::__init_with_size[abi:ne200100]<std::vector<unsigned short>*,std::vector<unsigned short>*>(v4, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  result = std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v4 + 3, *(a2 + 24), *(a2 + 32), *(a2 + 32) - *(a2 + 24));
  *(a1 + 8) = v4 + 6;
  return result;
}

void sub_2984FF244(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::vector<unsigned short>>::__destroy_vector::operator()[abi:ne200100](va);
  *(v2 + 8) = v3;
  _Unwind_Resume(a1);
}

uint64_t std::vector<SERestoreInfo::UpdateTableEntry>::__emplace_back_slow_path<SERestoreInfo::UpdateTableEntry&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    updated = std::__allocate_at_least[abi:ne200100]<std::allocator<SERestoreInfo::UpdateTableEntry>>(a1, v6);
  }

  else
  {
    updated = 0;
  }

  v8 = &updated[48 * v2];
  v15 = updated;
  v16 = v8;
  *&v17 = v8;
  *(&v17 + 1) = &updated[48 * v6];
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  std::vector<std::vector<unsigned short>>::__init_with_size[abi:ne200100]<std::vector<unsigned short>*,std::vector<unsigned short>*>(v8, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  *(v8 + 3) = 0;
  *(v8 + 4) = 0;
  *(v8 + 5) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v8 + 3, *(a2 + 24), *(a2 + 32), *(a2 + 32) - *(a2 + 24));
  *&v17 = v17 + 48;
  v9 = a1[1];
  v10 = (v16 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SERestoreInfo::UpdateTableEntry>,SERestoreInfo::UpdateTableEntry*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<SERestoreInfo::UpdateTableEntry>::~__split_buffer(&v15);
  return v14;
}

void sub_2984FF3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v4 - 40) = v3;
  std::vector<std::vector<unsigned short>>::__destroy_vector::operator()[abi:ne200100]((v4 - 40));
  std::__split_buffer<SERestoreInfo::UpdateTableEntry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::vector<std::vector<unsigned short>>::__init_with_size[abi:ne200100]<std::vector<unsigned short>*,std::vector<unsigned short>*>(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    std::vector<std::vector<unsigned short>>::__vallocate[abi:ne200100](result, a4);
    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<unsigned short>>,std::vector<unsigned short>*,std::vector<unsigned short>*,std::vector<unsigned short>*>(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_2984FF448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<unsigned short>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

char *std::vector<std::vector<unsigned short>>::__vallocate[abi:ne200100](void *a1, unint64_t a2)
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

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<unsigned short>>,std::vector<unsigned short>*,std::vector<unsigned short>*,std::vector<unsigned short>*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 1);
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned short>>,std::vector<unsigned short>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned short>>,std::vector<unsigned short>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned short>>,std::vector<unsigned short>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned short>>,std::vector<unsigned short>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<SERestoreInfo::UpdateTableEntry>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x555555555555556)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(48 * a2);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SERestoreInfo::UpdateTableEntry>,SERestoreInfo::UpdateTableEntry*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v7;
      a4[2] = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      *(a4 + 3) = *(v7 + 24);
      a4[5] = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      v7 += 48;
      a4 += 6;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator<SERestoreInfo::UpdateTableEntry>::destroy[abi:ne200100](a1, v5);
      v5 += 48;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<SERestoreInfo::UpdateTableEntry>,SERestoreInfo::UpdateTableEntry*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<SERestoreInfo::UpdateTableEntry>,SERestoreInfo::UpdateTableEntry*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<SERestoreInfo::UpdateTableEntry>,SERestoreInfo::UpdateTableEntry*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<SERestoreInfo::UpdateTableEntry>,SERestoreInfo::UpdateTableEntry*>::operator()[abi:ne200100](uint64_t *a1)
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
      std::allocator<SERestoreInfo::UpdateTableEntry>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<SERestoreInfo::UpdateTableEntry>::~__split_buffer(void **a1)
{
  std::__split_buffer<SERestoreInfo::UpdateTableEntry>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<SERestoreInfo::UpdateTableEntry>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    std::allocator<SERestoreInfo::UpdateTableEntry>::destroy[abi:ne200100](v4, i - 48);
  }
}

void *std::string::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(void *result, char *a2, char *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = result;
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

    result = operator new(v8);
    v7[1] = a4;
    v7[2] = v8 | 0x8000000000000000;
    *v7 = result;
    v7 = result;
  }

  else
  {
    *(result + 23) = a4;
  }

  while (a2 != a3)
  {
    v9 = *a2++;
    *v7 = v9;
    v7 = (v7 + 1);
  }

  *v7 = 0;
  return result;
}

char *std::vector<SERestoreInfo::UT>::__init_with_size[abi:ne200100]<SERestoreInfo::UT const*,SERestoreInfo::UT const*>(char *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<SERestoreInfo::UT>::__vallocate[abi:ne200100](result, a4);
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

void sub_2984FF92C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<SERestoreInfo::UT>::__vallocate[abi:ne200100](void *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<SERestoreInfo::UT>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[4 * v4];
  return result;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<SERestoreInfo::UT>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(4 * a2);
}

void *std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(void *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<unsigned short>::__vallocate[abi:ne200100](result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_2984FFA1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<unsigned short>::__vallocate[abi:ne200100](void *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[2 * v4];
  return result;
}

void std::default_delete<std::vector<unsigned char>>::operator()[abi:ne200100](int a1, void **__p)
{
  if (__p)
  {
    v3 = *__p;
    if (*__p)
    {
      __p[1] = v3;
      operator delete(v3);
    }

    operator delete(__p);
  }
}

void std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::vector<unsigned char> const,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::vector<unsigned char> const,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

uint64_t std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::find<std::vector<unsigned char>>(uint64_t a1, const void **a2)
{
  v3 = a1 + 8;
  v4 = std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::__lower_bound<std::vector<unsigned char>>(a1, a2, *(a1 + 8), a1 + 8);
  if (v3 == v4)
  {
    return v3;
  }

  v5 = v4;
  v6 = *a2;
  v7 = *(v5 + 32);
  v8 = *(v5 + 40);
  v9 = a2[1] - *a2;
  v10 = v8 - v7;
  v11 = v8 - v7 >= v9 ? v9 : v8 - v7;
  v12 = memcmp(v6, v7, v11);
  v13 = v9 < v10;
  if (v12)
  {
    v13 = v12 < 0;
  }

  if (v13)
  {
    return v3;
  }

  return v5;
}

uint64_t std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::__lower_bound<std::vector<unsigned char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    v6 = *a2;
    v7 = *(a2 + 8) - *a2;
    do
    {
      v8 = *(v5 + 32);
      v9 = *(v5 + 40);
      v10 = v9 - v8;
      if (v7 >= v9 - v8)
      {
        v11 = v9 - v8;
      }

      else
      {
        v11 = v7;
      }

      v12 = memcmp(v8, v6, v11);
      v13 = v10 < v7;
      if (v12)
      {
        v13 = v12 < 0;
      }

      v14 = !v13;
      if (v13)
      {
        v15 = 8;
      }

      else
      {
        v15 = 0;
      }

      if (v14)
      {
        a4 = v5;
      }

      v5 = *(v5 + v15);
    }

    while (v5);
  }

  return a4;
}

uint64_t *std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::__emplace_unique_key_args<std::vector<unsigned char>,std::piecewise_construct_t const&,std::tuple<std::vector<unsigned char> const&>,std::tuple<>>(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::__find_equal<std::vector<unsigned char>>(a1, &v11, a2);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::vector<unsigned char> const&>,std::tuple<>>(a1, a4, v10);
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(a1, v11, v8, v10[0]);
    v7 = v10[0];
    v10[0] = 0;
    std::unique_ptr<std::__tree_node<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,void *>>>>::~unique_ptr[abi:ne200100](v10);
  }

  return v7;
}

void *std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::__find_equal<std::vector<unsigned char>>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *a3;
    v7 = *(a3 + 8) - *a3;
    do
    {
      while (1)
      {
        v8 = v4;
        v10 = v4[4];
        v9 = v4[5];
        v11 = v9 - v10;
        if (v9 - v10 >= v7)
        {
          v12 = v7;
        }

        else
        {
          v12 = v9 - v10;
        }

        v13 = memcmp(v6, v10, v12);
        v14 = v7 < v11;
        if (v13)
        {
          v14 = v13 < 0;
        }

        if (!v14)
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_17;
        }
      }

      v15 = memcmp(v10, v6, v12);
      v16 = v11 < v7;
      if (v15)
      {
        v16 = v15 < 0;
      }

      if (!v16)
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_17:
  *a2 = v8;
  return v5;
}

void *std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::vector<unsigned char> const&>,std::tuple<>>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x48uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v7 = *a2;
  v6[5] = 0;
  v6[6] = 0;
  v6[4] = 0;
  result = std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v6 + 4, *v7, *(v7 + 8), *(v7 + 8) - *v7);
  v6[7] = 0;
  v6[8] = 0;
  *(a3 + 16) = 1;
  return result;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::vector<unsigned char> const,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::__emplace_unique_key_args<std::vector<unsigned char>,std::vector<unsigned char> const&,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>(uint64_t **a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v7 = std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::__find_equal<std::vector<unsigned char>>(a1, &v12, a2);
  v8 = *v7;
  if (!*v7)
  {
    v9 = v7;
    std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::__construct_node<std::vector<unsigned char> const&,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>(a1, a3, a4, v11);
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(a1, v12, v9, v11[0]);
    v8 = v11[0];
    v11[0] = 0;
    std::unique_ptr<std::__tree_node<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,void *>>>>::~unique_ptr[abi:ne200100](v11);
  }

  return v8;
}

__n128 std::__tree<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::__map_value_compare<std::vector<unsigned char>,std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>,std::less<std::vector<unsigned char>>,true>,std::allocator<std::__value_type<std::vector<unsigned char>,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>>>::__construct_node<std::vector<unsigned char> const&,std::shared_ptr<SERestoreInfo::P73BaseDeliveryObject const>>@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x48uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *(v8 + 5) = 0;
  *(v8 + 6) = 0;
  *(v8 + 4) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v8 + 4, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  result = *a3;
  *(v8 + 56) = *a3;
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  *(a4 + 16) = 1;
  return result;
}

double _ZNSt3__115allocate_sharedB8ne200100IN13SERestoreInfo21P73BaseDeliveryObjectENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_@<D0>(void *a1@<X8>)
{
  v2 = operator new(0xC0uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A1EE8E60;
  result = 0.0;
  *(v2 + 8) = 0u;
  *(v2 + 9) = 0u;
  *(v2 + 10) = 0u;
  *(v2 + 11) = 0u;
  *(v2 + 7) = 0u;
  v2[5] = 0;
  v2[3] = &unk_2A1EE8DC8;
  v2[4] = v2 + 5;
  v2[6] = 0;
  v2[7] = &unk_2A1EE8E30;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 6) = 0u;
  v2[14] = &unk_2A1EE8E30;
  v2[19] = 0;
  v2[20] = 0;
  v2[21] = 0;
  *a1 = v2 + 3;
  a1[1] = v2;
  return result;
}

void std::__shared_ptr_emplace<SERestoreInfo::P73BaseDeliveryObject>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EE8E60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

char *SERestoreInfo::P73BaseRestoreInfo::getImageTag@<X0>(uint64_t a1@<X8>)
{
  v3 = a1;
  if ((atomic_load_explicit(&qword_2A13BA260, memory_order_acquire) & 1) == 0)
  {
    SERestoreInfo::P73BaseRestoreInfo::getImageTag();
    v3 = a1;
  }

  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;

  return std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(v3, &_MergedGlobals_0, &qword_2A13BA260, 1uLL);
}

char *SERestoreInfo::P73BaseRestoreInfo::getTagsInBI@<X0>(uint64_t a1@<X8>)
{
  v3 = a1;
  if ((atomic_load_explicit(&qword_2A13BA268, memory_order_acquire) & 1) == 0)
  {
    SERestoreInfo::P73BaseRestoreInfo::getTagsInBI();
    v3 = a1;
  }

  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;

  return std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(v3, &qword_2A13BA270, &_MergedGlobals_1, 2uLL);
}

void SERestoreInfo::P73BaseRestoreInfo::~P73BaseRestoreInfo(SERestoreInfo::P73BaseRestoreInfo *this)
{
  SERestoreInfo::SERestoreInfoBase::~SERestoreInfoBase(this);

  operator delete(v1);
}

__CFString *SERestoreInfo::P73BaseRestoreInfo::getImagePropertyTag(SERestoreInfo::P73BaseRestoreInfo *this)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  isDevIM4 = SERestoreInfo::P73BaseDeviceInfo::isDevIM4(v2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (isDevIM4)
  {
    return @"DevelopmentUpdatePayloadHash";
  }

  else
  {
    return @"ProductionUpdatePayloadHash";
  }
}

void sub_2985002C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(char *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<__CFString const*>::__vallocate[abi:ne200100](result, a4);
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

void sub_298500338(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void SERestoreInfo::P73BaseRestoreInfo::getImageTag()
{
  if (__cxa_guard_acquire(&qword_2A13BA260))
  {
    _MergedGlobals_0 = @"SE,UpdatePayload";

    __cxa_guard_release(&qword_2A13BA260);
  }
}

void SERestoreInfo::P73BaseRestoreInfo::getTagsInBI()
{
  if (__cxa_guard_acquire(&qword_2A13BA268))
  {
    qword_2A13BA270 = @"SE,ChipID";
    unk_2A13BA278 = @"SE,UpdatePayload";

    __cxa_guard_release(&qword_2A13BA268);
  }
}

char *SERestoreInfo::IcefallRestoreInfo::getImageTag@<X0>(uint64_t a1@<X8>)
{
  v3 = a1;
  if ((atomic_load_explicit(&_MergedGlobals_1, memory_order_acquire) & 1) == 0)
  {
    SERestoreInfo::IcefallRestoreInfo::getImageTag();
    v3 = a1;
  }

  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;

  return std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(v3, &qword_2A13BA290, &qword_2A13BA2B0, 4uLL);
}

char *SERestoreInfo::IcefallRestoreInfo::getTagsInBI@<X0>(uint64_t a1@<X8>)
{
  v3 = a1;
  if ((atomic_load_explicit(&qword_2A13BA288, memory_order_acquire) & 1) == 0)
  {
    SERestoreInfo::IcefallRestoreInfo::getTagsInBI();
    v3 = a1;
  }

  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;

  return std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(v3, &qword_2A13BA2B0, &SERestoreInfo::SERestoreInfoLog::get(void)::onceToken, 5uLL);
}

__CFString *SERestoreInfo::IcefallRestoreInfo::getImagePropertyTag(SERestoreInfo::IcefallRestoreInfo *this)
{
  v2 = *(this + 2);
  v1 = *(this + 3);
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    if (*(v2 + 10))
    {
      v3 = kSETagMeasurementDevCMAC;
    }

    else
    {
      v3 = kSETagMeasurementProdCMAC;
    }

    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  else
  {
    if (*(v2 + 10))
    {
      v5 = kSETagMeasurementDevCMAC;
    }

    else
    {
      v5 = kSETagMeasurementProdCMAC;
    }

    return *v5;
  }

  return v4;
}

void SERestoreInfo::IcefallRestoreInfo::getImageTag()
{
  if (__cxa_guard_acquire(&_MergedGlobals_1))
  {
    qword_2A13BA290 = @"SE,Bootloader";
    unk_2A13BA298 = @"SE,Firmware";
    qword_2A13BA2A0 = @"SE,MigrationOS";
    unk_2A13BA2A8 = @"SE,OS";

    __cxa_guard_release(&_MergedGlobals_1);
  }
}

void SERestoreInfo::IcefallRestoreInfo::getTagsInBI()
{
  if (__cxa_guard_acquire(&qword_2A13BA288))
  {
    qword_2A13BA2B0 = @"SE,ChipID";
    unk_2A13BA2B8 = @"SE,Bootloader";
    qword_2A13BA2C0 = @"SE,Firmware";
    unk_2A13BA2C8 = @"SE,MigrationOS";
    qword_2A13BA2D0 = @"SE,OS";

    __cxa_guard_release(&qword_2A13BA288);
  }
}

void **SERestoreInfo::P73DeviceInfo::P73DeviceInfo(void **this, const SERestoreInfo::BLOB *a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A1EE8F50;
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

void sub_298500724(_Unwind_Exception *a1)
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
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v7, SERestoreInfo::isDummyRootCaKeyId(std::vector<unsigned char> const&)::dummyRootCaKeyIdArray, SERestoreInfo::isProdCometIm4KeyId(std::vector<unsigned char> const&)::prodCometIm4KeyIdArray, 0x20uLL);
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
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v10, SERestoreInfo::isProdCometIm4KeyId(std::vector<unsigned char> const&)::prodCometIm4KeyIdArray, "N13SERestoreInfo11SEExceptionE", 0x20uLL);
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

void sub_2985008AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void **SERestoreInfo::P73DeviceInfo::P73DeviceInfo(void **this, SERestoreInfo **a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A1EE8F50;
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

void sub_298500970(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  SERestoreInfo::P73BaseDeviceInfo::~P73BaseDeviceInfo(v1);
  _Unwind_Resume(a1);
}

uint64_t SERestoreInfo::SEException::SEException(uint64_t a1, __int128 *a2, int a3, CFTypeRef cf)
{
  v27[2] = *MEMORY[0x29EDCA608];
  *a1 = &unk_2A1EE8FA0;
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

void sub_298500B70(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

SERestoreInfo::SEException *SERestoreInfo::SEException::SEException(SERestoreInfo::SEException *this, CFErrorRef err)
{
  v26[2] = *MEMORY[0x29EDCA608];
  *this = &unk_2A1EE8FA0;
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
    v27.location = 0;
    v27.length = Length;
    Bytes = CFStringGetBytes(v6, v27, 0x8000100u, 0, 0, 0, 0, &usedBufLen);
    if (usedBufLen.__r_.__value_.__r.__words[0] && Bytes)
    {
      std::vector<unsigned char>::vector[abi:ne200100](&__p, usedBufLen.__r_.__value_.__r.__words[0]);
      v28.location = 0;
      v28.length = Length;
      if (CFStringGetBytes(v6, v28, 0x8000100u, 0, 0, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0], 0))
      {
        std::string::__assign_trivial[abi:ne200100]<unsigned char *,unsigned char *>((this + 32), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]);
      }

      if (__p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    CFRelease(v6);
  }

  *(this + 16) = CFErrorGetCode(err);
  Domain = CFErrorGetDomain(err);
  if (Domain)
  {
    Domain = CFRetain(Domain);
  }

  *(this + 7) = Domain;
  std::to_string(&v23, *(this + 16));
  v10 = std::string::insert(&v23, 0, "CF=(");
  v11 = *&v10->__r_.__value_.__l.__data_;
  usedBufLen.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&usedBufLen.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&usedBufLen, ") ");
  v13 = *&v12->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = *(this + 55);
  if (v14 >= 0)
  {
    v15 = this + 32;
  }

  else
  {
    v15 = *(this + 4);
  }

  if (v14 >= 0)
  {
    v16 = *(this + 55);
  }

  else
  {
    v16 = *(this + 5);
  }

  v17 = std::string::append(&__p, v15, v16);
  v18 = v17->__r_.__value_.__r.__words[0];
  v26[0] = v17->__r_.__value_.__l.__size_;
  *(v26 + 7) = *(&v17->__r_.__value_.__r.__words[1] + 7);
  v19 = HIBYTE(v17->__r_.__value_.__r.__words[2]);
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (*(this + 31) < 0)
  {
    operator delete(*v4);
  }

  v20 = v26[0];
  *(this + 1) = v18;
  *(this + 2) = v20;
  *(this + 23) = *(v26 + 7);
  *(this + 31) = v19;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(usedBufLen.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(usedBufLen.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  v21 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_298500DEC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void SERestoreInfo::SEException::~SEException(std::exception *this)
{
  this->__vftable = &unk_2A1EE8FA0;
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

  operator delete(v1);
}

CFErrorRef SERestoreInfo::SEException::CreateCFError(SERestoreInfo::SEException *this)
{
  v2 = this + 32;
  if (*(this + 55) < 0)
  {
    v2 = *v2;
  }

  v3 = strlen(v2);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = v3;
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
    __dst[1] = v4;
    v10 = v6 | 0x8000000000000000;
    __dst[0] = v5;
    goto LABEL_11;
  }

  HIBYTE(v10) = v3;
  v5 = __dst;
  if (v3)
  {
LABEL_11:
    memmove(v5, v2, v4);
  }

  *(v4 + v5) = 0;
  CFError = SERestoreInfo::CreateCFError(__dst, *(this + 16), 0, *(this + 7));
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__dst[0]);
  }

  return CFError;
}

void std::string::__assign_trivial[abi:ne200100]<unsigned char *,unsigned char *>(std::string *this, std::string::value_type *a2, std::string::value_type *a3, std::string::size_type a4)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    v9 = this;
    if (a4 <= 0x16)
    {
      goto LABEL_11;
    }

    v10 = 22;
    goto LABEL_6;
  }

  v11 = this->__r_.__value_.__r.__words[2];
  v10 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v10 < a4)
  {
    size = this->__r_.__value_.__l.__size_;
LABEL_6:
    std::string::__grow_by(this, v10, a4 - v10, size, 0, size, 0);
    this->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v12) = *(&this->__r_.__value_.__s + 23);
    goto LABEL_8;
  }

  v12 = HIBYTE(v11);
LABEL_8:
  v9 = this;
  if ((v12 & 0x80) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
  }

LABEL_11:
  while (a2 != a3)
  {
    v13 = *a2++;
    v9->__r_.__value_.__s.__data_[0] = v13;
    v9 = (v9 + 1);
  }

  v9->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = a4;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = a4 & 0x7F;
  }
}

SERestoreInfo::SN300VDeviceInfo *SERestoreInfo::SN300VDeviceInfo::SN300VDeviceInfo(SERestoreInfo::SN300VDeviceInfo *this, const SERestoreInfo::BLOB *a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A1EE8FE0;
  if (*(v3 + 14) != 44)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

SERestoreInfo::SN300VDeviceInfo *SERestoreInfo::SN300VDeviceInfo::SN300VDeviceInfo(SERestoreInfo::SN300VDeviceInfo *this, SERestoreInfo **a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A1EE8FE0;
  if (*(v3 + 14) != 44)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

void SERestoreInfo::IcefallDeliveryObject::addApdu(uint64_t a1, int a2, unint64_t *a3)
{
  v34 = a2;
  v4 = DERDecodeSeqContentInit(a3, v33);
  if (v4)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v23, "Cannot decode APDUs.");
    v22 = SERestoreInfo::SEException::SEException(exception, &v23, v4, @"libDERErrorDomain");
  }

  while (!v4)
  {
    v4 = DERDecodeSeqNext(v33, &v31);
    if (!v4)
    {
      v5 = DERParseSequenceContent(&v32, 2u, &IcefallFirmwareDERSpec::ApduItemSpec, &v29, 0x20uLL);
      if (v5)
      {
        v14 = v5;
        v15 = __cxa_allocate_exception(0x48uLL);
        std::string::basic_string[abi:ne200100]<0>(&v23, "Cannot parse per ApduItemSpec");
        v16 = SERestoreInfo::SEException::SEException(v15, &v23, v14, @"libDERErrorDomain");
      }

      if (*(&v29 + 1) != 5)
      {
        v19 = __cxa_allocate_exception(0x48uLL);
        std::string::basic_string[abi:ne200100]<0>(&v23, "wrong apdu header size");
        v20 = SERestoreInfo::SEException::SEException(v19, &v23, 15, @"SEUpdaterErrorDomain");
      }

      if ((*(&v30 + 1) - 8242) <= 0xFFFFFFFFFFFFDFC8)
      {
        v17 = __cxa_allocate_exception(0x48uLL);
        std::string::basic_string[abi:ne200100]<0>(&v23, "wrong apdu size");
        v18 = SERestoreInfo::SEException::SEException(v17, &v23, 15, @"SEUpdaterErrorDomain");
      }

      v23 = &v34;
      v6 = std::__tree<std::__value_type<SERestoreInfo::ApduType_t,std::vector<SERestoreInfo::ApduBLOB>>,std::__map_value_compare<SERestoreInfo::ApduType_t,std::__value_type<SERestoreInfo::ApduType_t,std::vector<SERestoreInfo::ApduBLOB>>,std::less<SERestoreInfo::ApduType_t>,true>,std::allocator<std::__value_type<SERestoreInfo::ApduType_t,std::vector<SERestoreInfo::ApduBLOB>>>>::__emplace_unique_key_args<SERestoreInfo::ApduType_t,std::piecewise_construct_t const&,std::tuple<SERestoreInfo::ApduType_t const&>,std::tuple<>>((a1 + 8), &v34, &std::piecewise_construct, &v23);
      v7 = v6;
      v23 = &unk_2A1EE8E30;
      v24 = v29;
      v25 = 0;
      v26 = &unk_2A1EE8E30;
      v27 = v30;
      v28 = 0;
      v8 = v6[6];
      if (v8 >= v6[7])
      {
        v11 = std::vector<SERestoreInfo::ApduBLOB>::__emplace_back_slow_path<SERestoreInfo::ApduBLOB>(v6 + 5, &v23);
      }

      else
      {
        *v8 = &unk_2A1EE8E30;
        v9 = v25;
        *(v8 + 8) = v24;
        *(v8 + 24) = v9;
        *(v8 + 32) = &unk_2A1EE8E30;
        v10 = v27;
        *(v8 + 56) = v28;
        *(v8 + 40) = v10;
        v11 = v8 + 64;
      }

      v7[6] = v11;
      SERestoreInfo::BLOB::~BLOB(&v26);
      SERestoreInfo::BLOB::~BLOB(&v23);
    }
  }

  if (v4 != 1)
  {
    v12 = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(&v23, "Fail to parse Apdu]");
    v13 = SERestoreInfo::SEException::SEException(v12, &v23, v4, @"libDERErrorDomain");
  }
}

void sub_298501564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SERestoreInfo::IcefallDeliveryObject::addMac(uint64_t a1, int a2, uint64_t *a3)
{
  v11 = a2;
  for (i = *(a1 + 40); i; i = *i)
  {
    v4 = *(i + 8);
    if (v4 <= a2)
    {
      if (v4 >= a2)
      {
        exception = __cxa_allocate_exception(0x48uLL);
        std::string::basic_string[abi:ne200100]<0>(v10, "Fail to addMac");
        v9 = SERestoreInfo::SEException::SEException(exception, v10, 15, @"SEUpdaterErrorDomain");
      }

      ++i;
    }
  }

  v5 = *a3;
  v6 = a3[1];
  v10[0] = &unk_2A1EE8E30;
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = 0;
  v12 = &v11;
  v7 = std::__tree<std::__value_type<ImageType_t,SERestoreInfo::BLOB>,std::__map_value_compare<ImageType_t,std::__value_type<ImageType_t,SERestoreInfo::BLOB>,std::less<ImageType_t>,true>,std::allocator<std::__value_type<ImageType_t,SERestoreInfo::BLOB>>>::__emplace_unique_key_args<ImageType_t,std::piecewise_construct_t const&,std::tuple<ImageType_t const&>,std::tuple<>>(a1 + 32, &v11, &std::piecewise_construct, &v12);
  SERestoreInfo::BLOB::operator=(v7 + 5, v10);
  SERestoreInfo::BLOB::~BLOB(v10);
}

uint64_t SERestoreInfo::IcefallDeliveryObject::updateMeasurement(SERestoreInfo::IcefallDeliveryObject *this, CFDictionaryRef theDict, __CFError **a3)
{
  if (!theDict)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v31 = std::string::basic_string[abi:ne200100]<0>(&v49, "Assertion: ");
    v32 = std::string::append(v31, "outMeasurementDict");
    v33 = *&v32->__r_.__value_.__l.__data_;
    v45 = v32->__r_.__value_.__r.__words[2];
    v44 = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C28BB00](exception, &v44);
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (!a3)
  {
    v34 = __cxa_allocate_exception(0x10uLL);
    v35 = std::string::basic_string[abi:ne200100]<0>(&v49, "Assertion: ");
    v36 = std::string::append(v35, "outError");
    v37 = *&v36->__r_.__value_.__l.__data_;
    v45 = v36->__r_.__value_.__r.__words[2];
    v44 = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C28BB00](v34, &v44);
    __cxa_throw(v34, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  *&v44 = @"SE,Bootloader";
  *(&v44 + 1) = @"SE,Bootloader";
  v45 = @"SE,OS";
  v46 = @"SE,MigrationOS";
  v47 = @"SE,Firmware";
  v5 = *(this + 4);
  v6 = this + 40;
  if (v5 == this + 40)
  {
    return 1;
  }

  while (1)
  {
    v8 = *(v5 + 8);
    if (v8 >= 5)
    {
      std::string::basic_string[abi:ne200100]<0>(v42, "cmac.first is out of range");
      *a3 = SERestoreInfo::CreateCFError(v42, 2, 0, @"SEUpdaterErrorDomain");
      if ((v43 & 0x80000000) == 0)
      {
        return 0;
      }

      v23 = *v42;
      goto LABEL_37;
    }

    v9 = *(&v44 + v8);
    if (CFDictionaryContainsKey(theDict, v9))
    {
      break;
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (!Mutable)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "imageProps is nullptr");
      *a3 = SERestoreInfo::CreateCFError(__p, 3, 0, @"SEUpdaterErrorDomain");
      if ((v39 & 0x80000000) == 0)
      {
        return 0;
      }

      v23 = __p[0];
      goto LABEL_37;
    }

LABEL_9:
    v12 = Mutable;
    v13 = *(v5 + 6);
    if (!v13)
    {
      v24 = __cxa_allocate_exception(0x10uLL);
      std::string::basic_string[abi:ne200100]<0>(&v48, "Assertion: ");
      v25 = std::string::append(&v48, "cmac");
      v26 = *&v25->__r_.__value_.__l.__data_;
      v50 = v25->__r_.__value_.__r.__words[2];
      v49 = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      MEMORY[0x29C28BB00](v24, &v49);
      __cxa_throw(v24, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    if (*(v5 + 7) != 16)
    {
      v27 = __cxa_allocate_exception(0x10uLL);
      std::string::basic_string[abi:ne200100]<0>(&v48, "Assertion: ");
      v28 = std::string::append(&v48, "cmac_len == CMAC_SIZE");
      v29 = *&v28->__r_.__value_.__l.__data_;
      v50 = v28->__r_.__value_.__r.__words[2];
      v49 = v29;
      v28->__r_.__value_.__l.__size_ = 0;
      v28->__r_.__value_.__r.__words[2] = 0;
      v28->__r_.__value_.__r.__words[0] = 0;
      MEMORY[0x29C28BB00](v27, &v49);
      __cxa_throw(v27, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    v14 = *(this + 80);
    v15 = CFDataCreate(0, v13, 16);
    if (v15)
    {
      v16 = v15;
      if (v14)
      {
        CFDictionarySetValue(v12, @"DevelopmentCMAC", v15);
      }

      else
      {
        CFDictionaryAddValue(v12, @"ProductionCMAC", v15);
      }

      CFRelease(v16);
      goto LABEL_16;
    }

    v21 = std::string::basic_string[abi:ne200100]<0>(&v49, "Cannot allocate for tmpData");
    CFError = SERestoreInfo::CreateCFError(v21, 3, 0, @"SEUpdaterErrorDomain");
    *a3 = CFError;
    if (SHIBYTE(v50) < 0)
    {
      operator delete(v49);
LABEL_16:
      CFError = *a3;
    }

    if (CFError)
    {
      CFRelease(v12);
      return 0;
    }

    CFDictionarySetValue(theDict, v9, v12);
    CFRelease(v12);
    v18 = *(v5 + 1);
    if (v18)
    {
      do
      {
        v19 = v18;
        v18 = *v18;
      }

      while (v18);
    }

    else
    {
      do
      {
        v19 = *(v5 + 2);
        v20 = *v19 == v5;
        v5 = v19;
      }

      while (!v20);
    }

    v5 = v19;
    if (v19 == v6)
    {
      return 1;
    }
  }

  Value = CFDictionaryGetValue(theDict, v9);
  Mutable = CFRetain(Value);
  if (Mutable)
  {
    goto LABEL_9;
  }

  std::string::basic_string[abi:ne200100]<0>(v40, "imageProps is nullptr");
  *a3 = SERestoreInfo::CreateCFError(v40, 2, 0, @"SEUpdaterErrorDomain");
  if (v41 < 0)
  {
    v23 = *v40;
LABEL_37:
    operator delete(v23);
  }

  return 0;
}

void sub_298501BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SERestoreInfo::IcefallDeliveryObject::updateVersionDict(SERestoreInfo::IcefallDeliveryObject *this, __CFDictionary *a2, __CFError **a3)
{
  if (!a2 || !a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v19, "Assertion: ");
    v12 = std::string::append(&v19, "outError && outDict");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v21 = v12->__r_.__value_.__r.__words[2];
    v20 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C28BB00](exception, &v20);
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v18 = 0;
  *__str = 0;
  LODWORD(v20) = 2;
  v5 = *(std::map<ImageType_t,unsigned short>::at(this + 56, &v20) + 1);
  LODWORD(v20) = 2;
  v6 = std::map<ImageType_t,unsigned short>::at(this + 56, &v20);
  v7 = snprintf(__str, 6uLL, "%d.%d", *v6, v5);
  if (v7 - 6 <= 0xFFFFFFFA)
  {
    v14 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v19, "Assertion: ");
    v15 = std::string::append(&v19, "nchar>0 && nchar<sizeof(buffer)");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v21 = v15->__r_.__value_.__r.__words[2];
    v20 = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C28BB00](v14, &v20);
    __cxa_throw(v14, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v8 = CFStringCreateWithBytes(0, __str, v7, 0x8000100u, 0);
  v9 = kSETagVersionDev;
  if (!*(this + 80))
  {
    v9 = kSETagVersionProd;
  }

  CFDictionarySetValue(a2, *v9, v8);
  if (v8)
  {
    CFRelease(v8);
  }

  return 1;
}