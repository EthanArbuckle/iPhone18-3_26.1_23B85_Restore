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

  v12 = *(&xmmword_2A18BBCD0 + 1);
  if (byte_2A18BBCE7 >= 0)
  {
    v12 = byte_2A18BBCE7;
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
    if (byte_2A18BBCE7 >= 0)
    {
      v17 = &xmmword_2A18BBCD0;
    }

    else
    {
      v17 = xmmword_2A18BBCD0;
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
      v43[0] = &unk_2A1EA0938;
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
      v10 = MEMORY[0x29C2811A0]();
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "-", 1);
      v18 = 48;
      v12 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v11, &v18);
      v13 = *v12;
      *(v12 + *(*v12 - 24) + 24) = 16;
      *(v12 + *(v13 - 24) + 8) = *(v12 + *(v13 - 24) + 8) & 0xFFFFFFB5 | 8;
      MEMORY[0x29C2811A0]();
      std::stringbuf::str();
      if (byte_2A18BBCE7 < 0)
      {
        operator delete(xmmword_2A18BBCD0);
      }

      xmmword_2A18BBCD0 = v16;
      unk_2A18BBCE0 = v17;
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
  return MEMORY[0x29C281270](&v26);
}

void sub_2980CEE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18, MEMORY[0x29EDC9528]);
  MEMORY[0x29C281270](&a34);
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

void sub_2980CF0E0(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x29C281270](v1);
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
  *this = &unk_2A1EA0630;
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

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void std::unique_ptr<ACFUSynchronize::Syncher>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    std::mutex::~mutex((v2 + 48));
    std::condition_variable::~condition_variable(v2);

    operator delete(v3);
  }
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

void sub_2980CF9E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::allocate_shared[abi:ne200100]<ACFUCommon::PersonalizeParams,std::allocator<ACFUCommon::PersonalizeParams>,std::vector<__CFString const*> &,0>@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0xE8uLL);
  result = std::__shared_ptr_emplace<ACFUCommon::PersonalizeParams>::__shared_ptr_emplace[abi:ne200100]<std::vector<__CFString const*> &,std::allocator<ACFUCommon::PersonalizeParams>,0>(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *std::__shared_ptr_emplace<ACFUCommon::PersonalizeParams>::__shared_ptr_emplace[abi:ne200100]<std::vector<__CFString const*> &,std::allocator<ACFUCommon::PersonalizeParams>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1EA06C8;
  std::allocator<ACFUCommon::PersonalizeParams>::construct[abi:ne200100]<ACFUCommon::PersonalizeParams,std::vector<__CFString const*> &>(&v4, (a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<ACFUCommon::PersonalizeParams>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EA06C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::allocator<ACFUCommon::PersonalizeParams>::construct[abi:ne200100]<ACFUCommon::PersonalizeParams,std::vector<__CFString const*> &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __p = 0;
  v5 = 0;
  v6 = 0;
  std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const**,__CFString const**>(&__p, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 3);
  MEMORY[0x29C280E50](a2, &__p);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_2980CFBBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const**,__CFString const**>(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<__CFString const*>::__vallocate[abi:ne200100](result, a4);
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

void sub_2980CFC38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<RoseTransport::pushFirmware(std::shared_ptr<ACFUFirmware>)::$_0,std::allocator<RoseTransport::pushFirmware(std::shared_ptr<ACFUFirmware>)::$_0>,BOOL ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A1EA0718;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<RoseTransport::pushFirmware(std::shared_ptr<ACFUFirmware>)::$_0,std::allocator<RoseTransport::pushFirmware(std::shared_ptr<ACFUFirmware>)::$_0>,BOOL ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1EA0718;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<RoseTransport::pushFirmware(std::shared_ptr<ACFUFirmware>)::$_0,std::allocator<RoseTransport::pushFirmware(std::shared_ptr<ACFUFirmware>)::$_0>,BOOL ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 64);
  if (!v2)
  {
    return 0;
  }

  v3 = *v2;
  v4 = **v2;
  if (!v5)
  {
    v6 = 0;
    *(v1 + 64) = 0;
    goto LABEL_7;
  }

  v6 = (**v5)(v5);
  v2 = *(v1 + 64);
  *(v1 + 64) = 0;
  if (v2)
  {
    v3 = *v2;
LABEL_7:
    (*(v3 + 2))(v2);
  }

  return v6;
}

uint64_t std::__function::__func<RoseTransport::pushFirmware(std::shared_ptr<ACFUFirmware>)::$_0,std::allocator<RoseTransport::pushFirmware(std::shared_ptr<ACFUFirmware>)::$_0>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *_ZNKSt3__110__function6__funcIZN15ACFUSynchronize7Syncher4waitEjNS_8functionIFbvEEEEd_UlvE_NS_9allocatorIS7_EES5_E7__cloneEv()
{
  result = operator new(0x10uLL);
  *result = &unk_2A1EA07A8;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN15ACFUSynchronize7Syncher4waitEjNS_8functionIFbvEEEEd_UlvE_NS_9allocatorIS7_EES5_E6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN15ACFUSynchronize7Syncher4waitEjNSt3__18functionIFbvEEEEd_UlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
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

void *_ZNKSt3__110__function6__funcIZN15ACFUSynchronize7Syncher6notifyEbNS_8functionIFvvEEEEd_UlvE_NS_9allocatorIS7_EES5_E7__cloneEv()
{
  result = operator new(0x10uLL);
  *result = &unk_2A1EA0828;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN15ACFUSynchronize7Syncher6notifyEbNS_8functionIFvvEEEEd_UlvE_NS_9allocatorIS7_EES5_E6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN15ACFUSynchronize7Syncher6notifyEbNSt3__18functionIFvvEEEEd_UlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<RoseTransport::eventHandler(void *,unsigned long)::$_0,std::allocator<RoseTransport::eventHandler(void *,unsigned long)::$_0>,void ()(void)>::__clone(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A1EA08B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  *(v2 + 3) = *(a1 + 24);
  return result;
}

__n128 std::__function::__func<RoseTransport::eventHandler(void *,unsigned long)::$_0,std::allocator<RoseTransport::eventHandler(void *,unsigned long)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1EA08B8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<RoseTransport::eventHandler(void *,unsigned long)::$_0,std::allocator<RoseTransport::eventHandler(void *,unsigned long)::$_0>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = a1[3];
  v4 = RoseCapabilities::supportsRTKitIOConfig(*(v2 + 104));
  RoseEvent::create(v1, v3, v4, &v7);
  v5 = v7;
  v7 = 0;
  result = *(v2 + 64);
  *(v2 + 64) = v5;
  if (result)
  {
    (*(*result + 16))(result);
    result = v7;
    v7 = 0;
    if (result)
    {
      return (*(*result + 16))(result);
    }
  }

  return result;
}

uint64_t std::__function::__func<RoseTransport::eventHandler(void *,unsigned long)::$_0,std::allocator<RoseTransport::eventHandler(void *,unsigned long)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C281220](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x29EDC9570] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_2980D02B8(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x29C281180](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x29EDC93D0]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x29C281190](v13);
  return a1;
}

void sub_2980D0528(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x29C281190](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2980D0508);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        v14 = (v12 | 7) == 0x17 ? 25 : (v12 | 7) + 1;
        v13 = operator new(v14);
        __b[1] = v12;
        v20 = v14 | 0x8000000000000000;
        __b[0] = v13;
      }

      else
      {
        HIBYTE(v20) = v12;
        v13 = __b;
      }

      memset(v13, __c, v12);
      *(v13 + v12) = 0;
      v15 = v20 >= 0 ? __b : __b[0];
      v16 = (*(*v6 + 96))(v6, v15, v12);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__b[0]);
      }

      if (v16 != v12)
      {
        return 0;
      }
    }

    v17 = a4 - a3;
    if (v17 < 1 || (*(*v6 + 96))(v6, a3, v17) == v17)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_2980D074C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<RoseTransport::sendCalibration(__CFData const*,BOOL,std::string const&)::$_0,std::allocator<RoseTransport::sendCalibration(__CFData const*,BOOL,std::string const&)::$_0>,BOOL ()(void)>::__clone(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A1EA0938;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  *(v2 + 5) = 0;
  *(v2 + 17) = 0;
  return result;
}

__n128 std::__function::__func<RoseTransport::sendCalibration(__CFData const*,BOOL,std::string const&)::$_0,std::allocator<RoseTransport::sendCalibration(__CFData const*,BOOL,std::string const&)::$_0>,BOOL ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1EA0938;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

uint64_t std::__function::__func<RoseTransport::sendCalibration(__CFData const*,BOOL,std::string const&)::$_0,std::allocator<RoseTransport::sendCalibration(__CFData const*,BOOL,std::string const&)::$_0>,BOOL ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 64);
  if (!v3)
  {
    return 0;
  }

  v4 = **v3;
  if (*(a1 + 16) == 1)
  {
    if (v5)
    {
      v6 = (**v5)(v5);
LABEL_8:
      v7 = v6;
      goto LABEL_10;
    }
  }

  else
  {
    if (v8)
    {
      v6 = RoseCommandCompleteEvent::validate(v8, 32);
      goto LABEL_8;
    }
  }

  v7 = 0;
LABEL_10:
  v9 = *(v2 + 64);
  *(v2 + 64) = 0;
  if (v9)
  {
    (*(*v9 + 16))(v9);
  }

  return v7;
}

uint64_t std::__function::__func<RoseTransport::sendCalibration(__CFData const*,BOOL,std::string const&)::$_0,std::allocator<RoseTransport::sendCalibration(__CFData const*,BOOL,std::string const&)::$_0>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t RoseBooterPerformHealing()
{
  v0 = isHealed();
  if (v0)
  {
    return 1;
  }

  ACFULogging::getLogInstance(v0);
  ACFULogging::handleMessage();
  DaemonDataStore = getDaemonDataStore();
  v4 = RoseBootstrappedPreflight::bootstrappedPreflight(DaemonDataStore, 0, 0, v3);
  v1 = v4 != 0;
  if (v4)
  {
    CFRelease(v4);
  }

  usleep(0x30D40u);
  return v1;
}

uint64_t isHealed(void)
{
  v0 = MEMORY[0x29EDBA0F8];
  v1 = getDaemonDataStore();
  v2 = [v0 stringWithFormat:@"%@/ftab.bin", v1];

  v3 = [MEMORY[0x29EDB8E70] URLWithString:v2];
  v5 = v3;
  if (v3)
  {
    doesPathExist = ACFUCommon::doesPathExist(v3, v4);
    if (doesPathExist)
    {
      cf = 0;
      v13 = 0;
      v7 = MEMORY[0x29EDB8E70];
      v8 = RoseBootstrappedPreflight::copyUnsignedFirmwarePath(doesPathExist);
      v9 = [v7 URLWithString:v8];

      v10 = *MEMORY[0x29EDB8ED8];
      AMSupportCreateDataFromFileURL();
      AMSupportCreateDataFromFileURL();
    }
  }

  return 0;
}

void sub_2980D0D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v18)
  {
    (*(*v18 + 56))(v18);
  }

  _Unwind_Resume(a1);
}

id getDaemonDataStore(void)
{
  if (getDaemonDataStore(void)::onceToken != -1)
  {
    getDaemonDataStore();
  }

  v1 = getDaemonDataStore(void)::systemGroupContainerPath;

  return v1;
}

uint64_t RoseBooterHasFailedForward(ACFULogging *a1)
{
  if (hasRoseChip(void)::onceToken != -1)
  {
    RoseBooterHasFailedForward_cold_1();
  }

  if ((hasRoseChip(void)::hasChip & 1) == 0)
  {
    ACFULogging::getLogInstance(a1);
    v16 = ACFULogging::handleMessage();
    v12 = 0;
    v9 = 0;
    v17 = 2;
    goto LABEL_17;
  }

  v1 = dlopen("/System/Library/PrivateFrameworks/MobileSoftwareUpdate.framework/MobileSoftwareUpdate", 1);
  if (!v1)
  {
    RoseBooterHasFailedForward_cold_6(0);
    return 0;
  }

  v2 = v1;
  v3 = dlsym(v1, "MSUParsedToleratedFailureForStep");
  v4 = dlerror();
  if (v4 || !v3 || (v5 = dlsym(v2, "MSUCopyToleratedStatusForStep"), (v4 = dlerror()) != 0) || !v5)
  {
    RoseBooterHasFailedForward_cold_4(v4);
    return 0;
  }

  PersonalizedFirmwarePath = ACFUDataAccess::createPersonalizedFirmwarePath(@"Rose", v6);
  if (!PersonalizedFirmwarePath)
  {
    RoseBooterHasFailedForward_cold_3(0);
    return 0;
  }

  v9 = PersonalizedFirmwarePath;
  URLByAppendingStrings = ACFUCommon::createURLByAppendingStrings(PersonalizedFirmwarePath, @"ftab.bin", v8);
  if (!URLByAppendingStrings)
  {
    RoseBooterHasFailedForward_cold_2(0);
    v17 = 0;
LABEL_20:
    CFRelease(v9);
    return v17;
  }

  v12 = URLByAppendingStrings;
  doesPathExist = ACFUCommon::doesPathExist(URLByAppendingStrings, v11);
  v14 = doesPathExist;
  ACFULogging::getLogInstance(doesPathExist);
  ACFULogging::handleMessage();
  v15 = isHealed();
  v16 = v3(@"update_rose");
  if ((v16 - 1) >= 2)
  {
    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = 2;
      if ((v14 & 1) == 0)
      {
        ACFULogging::getLogInstance(v16);
        if (v15)
        {
          v17 = 2;
        }

        else
        {
          v17 = 3;
        }

        v16 = ACFULogging::handleMessage();
      }
    }
  }

  else
  {
    ACFULogging::getLogInstance(v16);
    if (v15)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    v16 = ACFULogging::handleMessage();
  }

LABEL_17:
  ACFULogging::getLogInstance(v16);
  ACFULogging::handleMessage();
  if (v12)
  {
    CFRelease(v12);
  }

  if (v9)
  {
    goto LABEL_20;
  }

  return v17;
}

uint64_t RoseBooterAllocate(ACFULogging *a1, void *a2)
{
  ACFULogging::getLogInstance(a1);
  v4 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v4);
  v5 = ACFULogging::handleMessage();
  if (!a1 || !a2)
  {
    RoseBooterAllocate_cold_4(v5);
    return 0;
  }

  v6 = operator new(0x30uLL);
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  v35 = 0;
  v36 = 0;
  v34 = 1;
  if (isHealed())
  {
    PersonalizedFirmwarePath = getDaemonDataStore();
  }

  else
  {
    PersonalizedFirmwarePath = ACFUDataAccess::createPersonalizedFirmwarePath(@"Rose", v7);
  }

  v9 = PersonalizedFirmwarePath;
  if (!PersonalizedFirmwarePath)
  {
    ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage();
    v22 = 0;
    goto LABEL_38;
  }

  GetRoseTatsuTagToFileNameMap(v32);
  RTKitFirmware::create();
  std::shared_ptr<RTKitFirmware>::operator=[abi:ne200100]<RTKitFirmware,std::default_delete<RTKitFirmware>,0>(&v35, &v30);
  v10 = v30;
  v30 = 0;
  if (v10)
  {
    (*(*v10 + 56))(v10);
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v32, v33);
  if (!v35)
  {
    goto LABEL_46;
  }

  ACFUDiagnostics::create(0, 1);
  std::shared_ptr<ACFUDiagnostics>::operator=[abi:ne200100]<ACFUDiagnostics,std::default_delete<ACFUDiagnostics>,0>(v6 + 4, &v30);
  v11 = v30;
  v30 = 0;
  if (v11)
  {
    v14 = MEMORY[0x29C280FF0](v11, v12, v13);
    operator delete(v14);
  }

  if (!v6[4])
  {
LABEL_46:
    ACFULogging::getLogInstance(v11);
LABEL_49:
    ACFULogging::handleMessage();
    v22 = 0;
    goto LABEL_37;
  }

  v15 = v6[5];
  v30 = v6[4];
  v31 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  RoseTransport::create(&v30, a1, 0, &v29);
  std::shared_ptr<RoseTransport>::operator=[abi:ne200100]<RoseTransport,std::default_delete<RoseTransport>,0>(v6 + 2, &v29);
  v16 = v29;
  *&v29 = 0;
  if (v16)
  {
    (*(*v16 + 64))(v16);
  }

  v17 = v31;
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (!v6[2])
  {
    goto LABEL_48;
  }

  v18 = v6[3];
  v27 = v6[2];
  v28 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v26 = v36;
  if (v36)
  {
    atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = v6[5];
  v24 = v6[4];
  v25 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ACFURTKitROM::create();
  v20 = v29;
  v29 = 0uLL;
  v21 = v6[1];
  *v6 = v20;
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    if (*(&v29 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v29 + 1));
    }
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v17 = v28;
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (!*v6)
  {
LABEL_48:
    ACFULogging::getLogInstance(v17);
    goto LABEL_49;
  }

  v22 = 1;
LABEL_37:
  CFRelease(v9);
LABEL_38:
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (v22)
  {
    *a2 = v6;
    return 1;
  }

  RoseBooterAllocate_cold_3(v6);
  return 0;
}

void sub_2980D14DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  v24 = *(v22 - 56);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RoseBooterPreflight(uint64_t a1)
{
  if (!a1)
  {
    RoseBooterPreflight_cold_4(0);
    return 0;
  }

  v2 = *a1;
  if (!v2)
  {
    RoseBooterPreflight_cold_3(0);
    return 0;
  }

  if (!*(a1 + 16))
  {
    RoseBooterPreflight_cold_2(v2);
    return 0;
  }

  if (!*(a1 + 32))
  {
    RoseBooterPreflight_cold_1(v2);
    return 0;
  }

  v3 = (**v2)(&v10);
  v5 = v10;
  v4 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v3 = v11;
    v6 = v12;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (v6)
    {
      goto LABEL_26;
    }

    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else if (v12)
  {
    goto LABEL_26;
  }

  v3 = (*(*v5 + 8))(v5);
  v7 = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    if ((v7 & 1) == 0)
    {
      goto LABEL_26;
    }

    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else if ((v3 & 1) == 0)
  {
    goto LABEL_26;
  }

  v3 = (**v5)(v5);
  v8 = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (!v8)
  {
LABEL_26:
    ACFULogging::getLogInstance(v3);
    ACFULogging::handleMessage();
    v8 = 0;
    if (!v4)
    {
      return v8;
    }

    goto LABEL_19;
  }

  if (v4)
  {
LABEL_19:
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v8;
}

void sub_2980D178C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RoseBooterBootChip(uint64_t a1, int *a2, int *a3)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (!a1)
  {
    RoseBooterBootChip_cold_4(0);
    return 1005;
  }

  if (!*a1)
  {
    RoseBooterBootChip_cold_3(a1);
    return 1005;
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    RoseBooterBootChip_cold_2(0);
    return 1005;
  }

  if (!*(a1 + 32))
  {
    RoseBooterBootChip_cold_1(v6);
    return 1005;
  }

  v7 = **v6;
  if (v8)
  {
    v9 = *(a1 + 24);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v9 = 0;
  }

  RoseTransport::getCapabilities(v8, &valuePtr);
  v10 = RoseCapabilities::supportsRTKitIOConfig(valuePtr);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v10)
  {
    v11 = isHealed();
    if (v11)
    {
      v13 = RoseBootstrappedPreflight::copyUnsignedFirmwarePath(v11);
    }

    else
    {
      v13 = ACFUBootInterface<RoseControllerInterfaceV1Vtbl **,RTKitFirmware,RoseTransport,ACFURTKitROM>::copyFWPath(@"Rose", v12);
    }

    v15 = v13;
    if (v13)
    {
      Symlink = ACFUCommon::createSymlink(@"/tmp/FTABHarvest/", v13, @"rose-symlink-ftab.bin", v14);
      ACFULogging::getLogInstance(Symlink);
    }

    else
    {
      ACFULogging::getLogInstance(0);
    }

    ACFULogging::handleMessage();
  }

  else
  {
    v15 = 0;
  }

  v17 = ACFURTKitROM::bootFirmware(*a1);
  v18 = v17;
  if (!v17)
  {
    goto LABEL_39;
  }

  ACFULogging::getLogInstance(v17);
  ACFULogging::handleMessage();
  v19 = *(a1 + 16);
  v36 = 0;
  v37 = 0;
  v20 = (*(*v19 + 40))(v19, &v36, 0);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  v21 = ACFUDiagnostics::copyItem(*(a1 + 32), @"RoseControllerState");
  v22 = v21;
  if (!v20 && v21 && (TypeID = CFDictionaryGetTypeID(), v21 = CFGetTypeID(v22), TypeID == v21))
  {
    ACFULogging::getLogInstance(v21);
    ACFULogging::handleMessage();
    CFDictionaryApplyFunction(v22, RoseBooterBootChip::$_0::__invoke, 0);
    ACFULogging::getLogInstance(v24);
    ACFULogging::handleMessage();
    if (a2)
    {
      Value = CFDictionaryGetValue(v22, @"RoseServiceState");
      if (Value)
      {
        v26 = Value;
        v27 = CFGetTypeID(Value);
        if (v27 == CFNumberGetTypeID())
        {
          valuePtr = 0;
          v28 = CFNumberGetValue(v26, kCFNumberSInt64Type, &valuePtr);
          if (v28)
          {
            v29 = valuePtr;
          }

          else
          {
            ACFULogging::getLogInstance(v28);
            ACFULogging::handleMessage();
            v29 = -1;
          }

          *a2 = v29;
        }
      }
    }

    if (a3)
    {
      v31 = CFDictionaryGetValue(v22, @"SecureROMStatus");
      if (v31)
      {
        v32 = v31;
        v33 = CFGetTypeID(v31);
        if (v33 == CFNumberGetTypeID())
        {
          valuePtr = 0;
          v34 = CFNumberGetValue(v32, kCFNumberSInt64Type, &valuePtr);
          if (v34)
          {
            v35 = valuePtr;
          }

          else
          {
            ACFULogging::getLogInstance(v34);
            ACFULogging::handleMessage();
            v35 = -1;
          }

          *a3 = v35;
        }
      }
    }
  }

  else
  {
    ACFULogging::getLogInstance(v21);
    ACFULogging::handleMessage();
    if (!v22)
    {
      goto LABEL_39;
    }
  }

  CFRelease(v22);
LABEL_39:
  if (v15)
  {
    CFRelease(v15);
  }

  return v18;
}

void sub_2980D1BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef ACFUBootInterface<RoseControllerInterfaceV1Vtbl **,RTKitFirmware,RoseTransport,ACFURTKitROM>::copyFWPath(ACFUDataAccess *a1, const __CFString *a2)
{
  if (!a1)
  {
    ACFUBootInterface<RoseControllerInterfaceV1Vtbl **,RTKitFirmware,RoseTransport,ACFURTKitROM>::copyFWPath(0);
    return 0;
  }

  PersonalizedFirmwarePath = ACFUDataAccess::createPersonalizedFirmwarePath(a1, a2);
  if (!PersonalizedFirmwarePath)
  {
    ACFUBootInterface<RoseControllerInterfaceV1Vtbl **,RTKitFirmware,RoseTransport,ACFURTKitROM>::copyFWPath(0);
    return 0;
  }

  v3 = PersonalizedFirmwarePath;
  v4 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@/%@", PersonalizedFirmwarePath, @"ftab.bin");
  if (!v4)
  {
    ACFUBootInterface<RoseControllerInterfaceV1Vtbl **,RTKitFirmware,RoseTransport,ACFURTKitROM>::copyFWPath(0);
  }

  CFRelease(v3);
  return v4;
}

uint64_t RoseBooterSendCalWithOptions(uint64_t *a1, int a2, int *a3, __int16 a4)
{
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v61 = 0;
  v62 = 0;
  v60 = &v61;
  v57 = a4 & 0x101;
  v58 = 0;
  v7 = a1[2];
  {
    v9 = a1[3];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v9 = 0;
  }

  RoseTransport::getCapabilities(v7, &v54);
  v59 = RoseCapabilities::supportsRTKitIOConfig(v54);
  v10 = v55[0];
  if (v55[0])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55[0]);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v55[0] = 0;
  v55[1] = 0;
  v54 = v55;
  if (a3 && *a1 && a1[2])
  {
    ACFULogging::getLogInstance(v10);
    ACFULogging::handleMessage();
    *a3 = 0;
    v11 = (*(*a1[2] + 24))(a1[2]);
    v12 = v11;
    if (v11)
    {
      ACFULogging::getLogInstance(v11);
      ACFULogging::handleMessage();
    }

    else
    {
      v43 = a3;
      for (i = 1; i < 7; i *= 2)
      {
        if ((i & a2) != 0)
        {
          switch(i)
          {
            case 1:
              v14 = 0;
              break;
            case 4:
              v14 = 2;
              break;
            case 2:
              v14 = 1;
              break;
            default:
              ACFULogging::getLogInstance(v11);
              ACFULogging::handleMessage();
              v12 = 5001;
              goto LABEL_73;
          }

          v15 = v64;
          if (v64 >= v65)
          {
            v17 = v63;
            v18 = v64 - v63;
            v19 = v64 - v63;
            v20 = v19 + 1;
            if ((v19 + 1) >> 62)
            {
              std::vector<ACFUCommon::FDRDataClass>::__throw_length_error[abi:ne200100]();
            }

            v21 = v65 - v63;
            if ((v65 - v63) >> 1 > v20)
            {
              v20 = v21 >> 1;
            }

            if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v22 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v22 = v20;
            }

            if (v22)
            {
              v23 = std::__allocate_at_least[abi:ne200100]<std::allocator<RoseCapabilities::CalibrationType>>(&v63, v22);
              v22 = v24;
              v17 = v63;
              v18 = v64 - v63;
            }

            else
            {
              v23 = 0;
            }

            v25 = &v23[4 * v19];
            v26 = &v23[4 * v22];
            v27 = &v25[-(v64 - v63)];
            *v25 = v14;
            v16 = v25 + 1;
            memcpy(v27, v17, v18);
            v11 = v63;
            v63 = v27;
            v64 = v16;
            v65 = v26;
            if (v11)
            {
              operator delete(v11);
            }
          }

          else
          {
            *v64 = v14;
            v16 = v15 + 1;
          }

          v64 = v16;
        }
      }

      v28 = a1[3];
      v48 = a1[2];
      v49 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v29 = a1[1];
      v46 = *a1;
      v47 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v30 = a1[2];
      {
        v32 = a1[3];
        if (v32)
        {
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v32 = 0;
      }

      RoseTransport::getCapabilities(v30, &v44);
      RoseCalibration::sendCalibration(&v48, &v46, &v44, &v57, &v63, &v50);
      std::__tree<RoseCapabilities::CalibrationType>::__assign_multi<std::__tree_const_iterator<RoseCapabilities::CalibrationType,std::__tree_node<RoseCapabilities::CalibrationType,void *> *,long>>(&v54, v50, &v51);
      v56 = v53;
      std::__tree<RoseCapabilities::CalibrationType>::destroy(&v50, v51);
      if (v45)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v45);
      }

      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }

      if (v47)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v47);
      }

      if (v49)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v49);
      }

      std::set<RoseCapabilities::CalibrationType>::set[abi:ne200100](&v50, &v54);
      std::__tree<RoseCapabilities::CalibrationType>::destroy(&v60, v61);
      v33 = v51;
      v60 = v50;
      v61 = v51;
      v62 = v52;
      if (v52)
      {
        v51[2] = &v61;
        v50 = &v51;
        v51 = 0;
        v52 = 0;
        v33 = 0;
      }

      else
      {
        v60 = &v61;
      }

      std::__tree<RoseCapabilities::CalibrationType>::destroy(&v50, v33);
      v34 = v60;
      if (v60 != &v61)
      {
        v35 = *v43;
        do
        {
          v36 = v34[7];
          if (v36 == 1)
          {
            v37 = 2;
          }

          else
          {
            v37 = 1;
          }

          if (v36 == 2)
          {
            v38 = 4;
          }

          else
          {
            v38 = v37;
          }

          v39 = *(v34 + 1);
          if (v39)
          {
            do
            {
              v40 = v39;
              v39 = *v39;
            }

            while (v39);
          }

          else
          {
            do
            {
              v40 = *(v34 + 2);
              v41 = *v40 == v34;
              v34 = v40;
            }

            while (!v41);
          }

          v35 |= v38;
          v34 = v40;
        }

        while (v40 != &v61);
        *v43 = v35;
      }

      v12 = v56;
    }
  }

  else
  {
    ACFULogging::getLogInstance(v10);
    ACFULogging::handleMessage();
    v12 = 1005;
  }

LABEL_73:
  std::__tree<RoseCapabilities::CalibrationType>::destroy(&v54, v55[0]);
  std::__tree<RoseCapabilities::CalibrationType>::destroy(&v60, v61);
  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

  return v12;
}

void sub_2980D21B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, void *a24)
{
  std::__tree<RoseCapabilities::CalibrationType>::destroy(&a23, a24);
  std::__tree<RoseCapabilities::CalibrationType>::destroy(v24 - 136, *(v24 - 128));
  v26 = *(v24 - 112);
  if (v26)
  {
    *(v24 - 104) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(a1);
}

std::string::size_type RoseBooterGetCal(ACFULogging *a1, int a2)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v22 = 0;
  LOWORD(v20[0]) = 0;
  v20[1] = 0;
  v21 = 0;
  if (!a1)
  {
    goto LABEL_41;
  }

  if (!*a1)
  {
    ACFULogging::getLogInstance(a1);
    goto LABEL_45;
  }

  v3 = *(a1 + 2);
  if (!v3)
  {
LABEL_41:
    ACFULogging::getLogInstance(0);
LABEL_45:
    ACFULogging::handleMessage();
    goto LABEL_39;
  }

  switch(a2)
  {
    case 1:
      v4 = 0;
      break;
    case 4:
      v4 = 2;
      break;
    case 2:
      v4 = 1;
      break;
    default:
      ACFULogging::getLogInstance(v3);
      ACFULogging::handleMessage();
LABEL_39:
      v15 = 0;
      goto LABEL_52;
  }

  v5 = **v3;
  if (v6)
  {
    v7 = *(a1 + 3);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v7 = 0;
  }

  RoseTransport::getCapabilities(v6, &v17);
  RoseCapabilities::supportedFDRDataClassesForCalibrationType(v17, v4, &v19);
  std::vector<ACFUCommon::FDRDataClass>::__assign_with_size[abi:ne200100]<ACFUCommon::FDRDataClass*,ACFUCommon::FDRDataClass*>(&v24, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v19.__r_.__value_.__l.__size_ - v19.__r_.__value_.__r.__words[0]) >> 4));
  v27 = &v19;
  std::vector<ACFUCommon::FDRDataClass>::__destroy_vector::operator()[abi:ne200100](&v27);
  v8 = v18;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v24 == v25)
  {
    ACFULogging::getLogInstance(v8);
    goto LABEL_45;
  }

  size = (***(a1 + 2))(&v19);
  v10 = *&v19.__r_.__value_.__l.__data_;
  if (v19.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v19.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    size = v19.__r_.__value_.__l.__size_;
    v11 = v19.__r_.__value_.__r.__words[2];
    if (v19.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19.__r_.__value_.__l.__size_);
    }

    if (!v11)
    {
      atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1uLL, memory_order_relaxed);
      if (*(v10 + 16))
      {
        atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1uLL, memory_order_relaxed);
        v12 = *(v10 + 48);
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
        if (v12)
        {
          atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1uLL, memory_order_relaxed);
          goto LABEL_29;
        }
      }

      else
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
      }
    }
  }

  else if (!LODWORD(v19.__r_.__value_.__r.__words[2]) && (*(v19.__r_.__value_.__r.__words[0] + 16) & 1) != 0 && (*(v19.__r_.__value_.__r.__words[0] + 48) & 1) != 0)
  {
LABEL_29:
    ACFUCommon::Parameter::GetDataAsType<unsigned short>(v10 + 8, &v23);
    if (*(&v10 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
      atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    ACFUCommon::Parameter::GetDataAsType<unsigned long long>(v10 + 40, &v22);
    if (*(&v10 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
    }

    v13 = v24;
    v14 = v25;
    while (v13 != v14)
    {
      size = ACFUFDR::getDataLocalCopy();
      if (v19.__r_.__value_.__l.__size_)
      {
        goto LABEL_48;
      }

      v15 = v19.__r_.__value_.__r.__words[0];
      if (v19.__r_.__value_.__r.__words[0])
      {
        goto LABEL_50;
      }

      v13 += 48;
    }

    goto LABEL_49;
  }

LABEL_48:
  ACFULogging::getLogInstance(size);
  ACFULogging::handleMessage();
LABEL_49:
  v15 = 0;
LABEL_50:
  if (*(&v10 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
  }

LABEL_52:
  v20[0] = &v24;
  std::vector<ACFUCommon::FDRDataClass>::__destroy_vector::operator()[abi:ne200100](v20);
  return v15;
}

void sub_2980D2638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  a18 = (v19 - 64);
  std::vector<ACFUCommon::FDRDataClass>::__destroy_vector::operator()[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

BOOL RoseBooterDestroy(void *__p)
{
  if (__p)
  {
    v2 = __p[5];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    v3 = __p[3];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = __p[1];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(__p);
  }

  else
  {
    RoseBooterDestroy_cold_1(0);
  }

  return __p != 0;
}

uint64_t ___ZL18getDaemonDataStorev_block_invoke()
{
  v0 = getDaemonDataStore(void)::systemGroupContainerPath;
  getDaemonDataStore(void)::systemGroupContainerPath = @"/var/db/nearbyd/";

  ACFULogging::getLogInstance(v1);
  [@"/var/db/nearbyd/" UTF8String];
  return ACFULogging::handleMessage();
}

void ___ZL11hasRoseChipv_block_invoke()
{
  v0 = *MEMORY[0x29EDBB110];
  v1 = IOServiceNameMatching("rose");
  MatchingService = IOServiceGetMatchingService(v0, v1);
  if (MatchingService && (CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"ECID", *MEMORY[0x29EDB8ED8], 0)) != 0)
  {
    CFRelease(CFProperty);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  hasRoseChip(void)::hasChip = v4;
}

void RoseBooter::~RoseBooter(RoseBooter *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void RoseBooterBootChip::$_0::__invoke(RoseBooterBootChip::$_0 *this, void *a2, const void *a3, void *a4)
{
  v6 = CFGetTypeID(this);
  TypeID = CFStringGetTypeID();
  if (v6 == TypeID)
  {
    ACFUCommon::stringFromCFString(&v20, this, v8);
    v9 = CFGetTypeID(a2);
    v10 = CFStringGetTypeID();
    if (v9 == v10)
    {
      ACFULogging::getLogInstance(v10);
      ACFUCommon::stringFromCFString(valuePtr, a2, v11);
      if ((v19 & 0x80u) == 0)
      {
        v15 = v19;
      }

      else
      {
        v15 = valuePtr[1];
      }

      if (v15)
      {
        ACFUCommon::stringFromCFString(&__p, a2, v14);
      }

      ACFULogging::handleMessage();
      if (v15 && v17 < 0)
      {
        operator delete(__p);
      }

      if (v19 < 0)
      {
        operator delete(valuePtr[0]);
      }
    }

    else
    {
      v12 = CFNumberGetTypeID();
      if (v9 == v12)
      {
        valuePtr[0] = 0;
        Value = CFNumberGetValue(a2, kCFNumberSInt64Type, valuePtr);
        ACFULogging::getLogInstance(Value);
        ACFULogging::handleMessage();
      }

      else
      {
        ACFULogging::getLogInstance(v12);
        ACFULogging::handleMessage();
      }
    }

    if (v21 < 0)
    {
      operator delete(v20);
    }
  }

  else
  {
    ACFULogging::getLogInstance(TypeID);
    ACFULogging::handleMessage();
  }
}

void sub_2980D2B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (*(v25 - 49) < 0)
  {
    operator delete(*(v25 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::__tree<RoseCapabilities::CalibrationType>::__assign_multi<std::__tree_const_iterator<RoseCapabilities::CalibrationType,std::__tree_node<RoseCapabilities::CalibrationType,void *> *,long>>(uint64_t **result, int *a2, int *a3)
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

    v14 = result;
    v15 = v8;
    v16 = v8;
    if (v8)
    {
      v15 = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 7) = v9[7];
          std::__tree<RoseCapabilities::CalibrationType>::__node_insert_multi(v5, v8);
          v8 = v15;
          v16 = v15;
          if (v15)
          {
            v15 = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::__detach_next(v15);
          }

          v10 = *(v9 + 1);
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = *(v9 + 2);
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v14);
  }

  if (a2 != a3)
  {
    do
    {
      result = std::__tree<RoseCapabilities::CalibrationType>::__emplace_multi<RoseCapabilities::CalibrationType const&>(v5, a2 + 7);
      v12 = *(a2 + 1);
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = *(a2 + 2);
          v11 = *v13 == a2;
          a2 = v13;
        }

        while (!v11);
      }

      a2 = v13;
    }

    while (v13 != a3);
  }

  return result;
}

void sub_2980D2CEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<RoseCapabilities::CalibrationType>::__node_insert_multi(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 28) >= *(v4 + 7))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  std::__tree<RoseCapabilities::CalibrationType>::__insert_node_at(a1, v3, v5, a2);
  return a2;
}

uint64_t *std::__tree<RoseCapabilities::CalibrationType>::__emplace_multi<RoseCapabilities::CalibrationType const&>(uint64_t **a1, int *a2)
{
  v4 = operator new(0x20uLL);
  v5 = *a2;
  *(v4 + 7) = *a2;
  v6 = a1 + 1;
  v7 = a1[1];
  if (v7)
  {
    do
    {
      while (1)
      {
        v6 = v7;
        if (v5 >= *(v7 + 7))
        {
          break;
        }

        v7 = *v7;
        v8 = v6;
        if (!*v6)
        {
          goto LABEL_8;
        }
      }

      v7 = v7[1];
    }

    while (v7);
    v8 = v6 + 1;
  }

  else
  {
    v8 = a1 + 1;
  }

LABEL_8:
  std::__tree<RoseCapabilities::CalibrationType>::__insert_node_at(a1, v6, v8, v4);
  return v4;
}

void std::vector<ACFUCommon::FDRDataClass>::__assign_with_size[abi:ne200100]<ACFUCommon::FDRDataClass*,ACFUCommon::FDRDataClass*>(uint64_t a1, ACFUCommon::FDRDataClass *a2, ACFUCommon::FDRDataClass *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    std::vector<ACFUCommon::FDRDataClass>::__vdeallocate(a1);
    if (a4 > 0x555555555555555)
    {
      std::vector<ACFUCommon::FDRDataClass>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
    {
      v10 = 0x555555555555555;
    }

    else
    {
      v10 = v9;
    }

    std::vector<ACFUCommon::FDRDataClass>::__vallocate[abi:ne200100](a1, v10);
    v11 = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ACFUCommon::FDRDataClass>,ACFUCommon::FDRDataClass*,ACFUCommon::FDRDataClass*,ACFUCommon::FDRDataClass*>(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v12 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v12 >> 4) < a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<ACFUCommon::FDRDataClass *,ACFUCommon::FDRDataClass *,ACFUCommon::FDRDataClass *>(&v16, a2, (a2 + v12), v8);
    v11 = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ACFUCommon::FDRDataClass>,ACFUCommon::FDRDataClass*,ACFUCommon::FDRDataClass*,ACFUCommon::FDRDataClass*>(a1, (a2 + v12), a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = v11;
    return;
  }

  std::__copy_impl::operator()[abi:ne200100]<ACFUCommon::FDRDataClass *,ACFUCommon::FDRDataClass *,ACFUCommon::FDRDataClass *>(&v17, a2, a3, v8);
  v14 = v13;
  v15 = *(a1 + 8);
  if (v15 != v13)
  {
    do
    {
      v15 -= 48;
      std::allocator<ACFUCommon::FDRDataClass>::destroy[abi:ne200100](a1, v15);
    }

    while (v15 != v14);
  }

  *(a1 + 8) = v14;
}

void std::vector<ACFUCommon::FDRDataClass>::__vdeallocate(void **a1)
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
        std::allocator<ACFUCommon::FDRDataClass>::destroy[abi:ne200100](a1, v3);
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

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ACFUCommon::FDRDataClass>,ACFUCommon::FDRDataClass*,ACFUCommon::FDRDataClass*,ACFUCommon::FDRDataClass*>(uint64_t a1, ACFUCommon::FDRDataClass *a2, ACFUCommon::FDRDataClass *a3, std::string *this)
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

ACFUCommon::FDRDataClass *std::__copy_impl::operator()[abi:ne200100]<ACFUCommon::FDRDataClass *,ACFUCommon::FDRDataClass *,ACFUCommon::FDRDataClass *>(int a1, ACFUCommon::FDRDataClass *a2, ACFUCommon::FDRDataClass *a3, std::string *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      ACFUCommon::FDRDataClass::FDRDataClass(&v8, v5);
      ACFUCommon::FDRDataClass::operator=(a4, &v8);
      if (v10 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v8.__r_.__value_.__l.__data_);
      }

      v5 = (v5 + 48);
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

std::string *ACFUCommon::FDRDataClass::operator=(std::string *this, std::string *__str)
{
  v4 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v4 >= 0)
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  v6 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = this->__r_.__value_.__l.__size_;
  }

  if (size != v6)
  {
    goto LABEL_27;
  }

  v8 = v4 >= 0 ? __str : __str->__r_.__value_.__r.__words[0];
  v9 = this->__r_.__value_.__r.__words[0];
  v10 = v7 >= 0 ? this : this->__r_.__value_.__r.__words[0];
  if (memcmp(v8, v10, size))
  {
    goto LABEL_27;
  }

  v11 = SHIBYTE(__str[1].__r_.__value_.__r.__words[2]);
  if (v11 >= 0)
  {
    v12 = HIBYTE(__str[1].__r_.__value_.__r.__words[2]);
  }

  else
  {
    v12 = __str[1].__r_.__value_.__l.__size_;
  }

  v13 = HIBYTE(this[1].__r_.__value_.__r.__words[2]);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = this[1].__r_.__value_.__l.__size_;
  }

  if (v12 != v13 || (v11 >= 0 ? (data = __str + 1) : (data = __str[1].__r_.__value_.__l.__data_), v14 >= 0 ? (v16 = this + 1) : (v16 = this[1].__r_.__value_.__l.__data_), memcmp(data, v16, v12)))
  {
LABEL_27:
    std::string::operator=(this, __str);
    std::string::operator=(this + 1, __str + 1);
  }

  return this;
}

uint64_t RoseRestoreHost::createRequest(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t RoseRestoreHost::init(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t RoseEvent::init(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t RoseEvent::validate(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t RoseCommandCompleteEvent::validate(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  OUTLINED_FUNCTION_1(a1);
  OUTLINED_FUNCTION_0();
  return ACFULogging::handleMessage();
}

uint64_t RoseCommandCompleteEvent::validate(ACFULogging *a1, unsigned __int16 *a2, uint64_t a3)
{
  ACFULogging::getLogInstance(a1);
  v8 = *a1;
  v9 = *a2;
  ACFULogging::handleMessage();
  v6 = *(*a3 + 24);

  return v6(a3);
}

uint64_t RoseFDRTrustEvaluationCompleteEvent::validate(ACFULogging *a1, uint64_t *a2, uint64_t a3)
{
  ACFULogging::getLogInstance(a1);
  v8 = *a1;
  v9 = *a2;
  ACFULogging::handleMessage();
  v6 = *(*a3 + 24);

  return v6(a3);
}

uint64_t RoseInitDoneEvent::validate(ACFULogging *a1)
{
  OUTLINED_FUNCTION_1(a1);
  v5 = *v2;
  ACFULogging::handleMessage();
  v3 = *(*v1 + 24);

  return v3(v1);
}

const __CFData *ACFUCommon::Parameter::GetDataAsType<unsigned short>(uint64_t a1, _WORD *a2)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  result = *a1;
  if (result)
  {
    BytePtr = CFDataGetBytePtr(result);
    Length = CFDataGetLength(*a1);
    if (Length > 2)
    {
      return 0;
    }

    else
    {
      *a2 = 0;
      memcpy(a2, BytePtr, Length);
      return 1;
    }
  }

  return result;
}

uint64_t RoseBootstrappedPreflight::bootstrappedPreflight(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_0_0(a1);
  return (*(v2 + 64))(v1);
}

{
  v1 = OUTLINED_FUNCTION_0_0(a1);
  return (*(v2 + 56))(v1);
}

{
  v1 = OUTLINED_FUNCTION_0_0(a1);
  return (*(v2 + 56))(v1);
}

uint64_t RoseTransport::init(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

uint64_t RoseTransport::createRoseController(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t RoseTransport::getPowerState(const void *a1)
{
  CFRelease(a1);
  ACFULogging::getLogInstance(v1);
  return ACFULogging::handleMessage();
}

uint64_t RoseTransport::getBootNonceHash(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  v2 = *a1;
  OUTLINED_FUNCTION_1_0();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  v2 = *a1;
  OUTLINED_FUNCTION_1_0();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  v2 = *a1;
  OUTLINED_FUNCTION_1_0();
  return ACFULogging::handleMessage();
}

uint64_t RoseTransport::setNonce(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t RoseTransport::pushFirmware(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  v3 = *a1;
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t RoseTransport::isCrashLogAvailable(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  v2 = *a1;
  OUTLINED_FUNCTION_1_0();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t RoseTransport::collectFirmwareLogs(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  v3 = *a1;
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t RoseTransport::logCrashLogReason(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  v3 = *a1;
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t RoseTransport::logCrashLogReason(unsigned int *a1)
{
  ACFULogging::getLogInstance(a1);
  v4 = a1[2];
  v5 = a1[3];
  v3 = *a1;
  return ACFULogging::handleMessage();
}

uint64_t RoseTransport::collectIOReport(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t RoseTransport::getDebugInfo(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t RoseTransport::getRoseDebugInfoDict(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t RoseTransport::sendRoseCommand(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t RoseTransport::parsePingResponse(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

void RoseTransport::sendCalibration()
{
  if (__cxa_guard_acquire(&_MergedGlobals))
  {
    unk_2A18BBCE0 = 0;
    xmmword_2A18BBCD0 = 0uLL;
    __cxa_atexit(MEMORY[0x29EDC9388], &xmmword_2A18BBCD0, &dword_2980C0000);

    __cxa_guard_release(&_MergedGlobals);
  }
}

{
  dispatch_once(&RoseTransport::sendCalibration(__CFData const*,BOOL,std::string const&)::only_once, &__block_literal_global_1);
}

uint64_t RoseTransport::runCertification(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_1();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

const __CFData *ACFUCommon::Parameter::GetDataAsType<unsigned long long>(uint64_t a1, void *a2)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  result = *a1;
  if (result)
  {
    BytePtr = CFDataGetBytePtr(result);
    Length = CFDataGetLength(*a1);
    if (Length > 8)
    {
      return 0;
    }

    else
    {
      *a2 = 0;
      memcpy(a2, BytePtr, Length);
      return 1;
    }
  }

  return result;
}

uint64_t RoseBooterAllocate_cold_3(RoseBooter *a1)
{
  RoseBooter::~RoseBooter(a1);
  operator delete(v1);
  ACFULogging::getLogInstance(v2);
  return ACFULogging::handleMessage();
}

uint64_t ACFUBootInterface<RoseControllerInterfaceV1Vtbl **,RTKitFirmware,RoseTransport,ACFURTKitROM>::copyFWPath(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2A1C59700](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

uint64_t RTKitFirmware::create()
{
  return MEMORY[0x2A1C5F128]();
}

{
  return MEMORY[0x2A1C5F130]();
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}