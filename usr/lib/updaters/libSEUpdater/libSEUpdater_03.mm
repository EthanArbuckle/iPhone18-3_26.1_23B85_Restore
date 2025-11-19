void sub_299F1A760(_Unwind_Exception *exception_object)
{
  if (*(v2 + 31) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,SERestoreInfo::CApdu>>>::find<unsigned char>(void *a1, unsigned __int8 a2)
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
      v4 = a2 % a1[1];
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
      if (*(result + 16) == a2)
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

uint64_t std::vector<SEUpdaterUtil::JCOPConfigItem>::__init_with_size[abi:ne200100]<SEUpdaterUtil::JCOPConfigItem const*,SEUpdaterUtil::JCOPConfigItem const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<SEUpdaterUtil::JCOPConfigItem>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_299F1A8F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<SEUpdaterUtil::JCOPConfigItem>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<SEUpdaterUtil::JCOPConfigItem>>(a1, a2);
  }

  std::vector<SEUpdaterUtil::JCOPConfigItem>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SEUpdaterUtil::JCOPConfigItem>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void _GLOBAL__sub_I_JCOPConfigManager_cpp()
{
  v12 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(&xmmword_2A197EEE0, "4143_WeakPullDown");
  std::string::basic_string[abi:ne200100]<0>(&xmmword_2A197EEF8, "4143_HiZ");
  std::string::basic_string[abi:ne200100]<0>(&xmmword_2A197EF10, "412A_Default");
  std::string::basic_string[abi:ne200100]<0>(&xmmword_2A197EF28, "415E_Value0C");
  std::string::basic_string[abi:ne200100]<0>(byte_2A197EF40, "415E_Value00");
  std::string::basic_string[abi:ne200100]<0>(&xmmword_2A197EF58, "40BD_EnableInFPM_EnableLogging");
  std::string::basic_string[abi:ne200100]<0>(byte_2A197EF70, "40BD_DisableInFPM_EnableLogging");
  std::string::basic_string[abi:ne200100]<0>(&xmmword_2A197EF88, "4108_EnableInFPM_EnableLogging");
  std::string::basic_string[abi:ne200100]<0>(byte_2A197EFA0, "4108_DisableInFPM_EnableLogging");
  std::string::basic_string[abi:ne200100]<0>(&xmmword_2A197EFB8, "40D0_Disable");
  std::string::basic_string[abi:ne200100]<0>(byte_2A197EFD0, "40D0_Enable_WithFilters_SW");
  std::string::basic_string[abi:ne200100]<0>(byte_2A197EFE8, "40D0_Enable_WithFilters_SW_ISO");
  std::string::basic_string[abi:ne200100]<0>(byte_2A197F000, "40D0_Enable_WithFilters_SW_ISO_Type");
  LODWORD(v1) = 0;
  WORD2(v1) = -28672;
  BYTE6(v1) = 0;
  qword_2A197F020 = 0;
  unk_2A197F028 = 0;
  qword_2A197F018 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F018, &v1, &v1 + 7, 7);
  LODWORD(v1) = 21185023;
  WORD2(v1) = -28670;
  BYTE6(v1) = 0;
  qword_2A197F038 = 0;
  unk_2A197F040 = 0;
  qword_2A197F030 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F030, &v1, &v1 + 7, 7);
  LODWORD(v1) = 21185023;
  WORD2(v1) = -28671;
  BYTE6(v1) = 0;
  qword_2A197F050 = 0;
  unk_2A197F058 = 0;
  qword_2A197F048 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F048, &v1, &v1 + 7, 7);
  v3 = xmmword_299F2D168;
  *v4 = unk_299F2D178;
  *&v4[14] = 0x90000000000000;
  v1 = xmmword_299F2D148;
  v2 = unk_299F2D158;
  qword_2A197F068 = 0;
  unk_2A197F070 = 0;
  qword_2A197F060 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F060, &v1, &v4[22], 70);
  v3 = xmmword_299F2D1AE;
  *v4 = unk_299F2D1BE;
  *&v4[14] = 0x90000000000000;
  v1 = xmmword_299F2D18E;
  v2 = unk_299F2D19E;
  qword_2A197F080 = 0;
  unk_2A197F088 = 0;
  qword_2A197F078 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F078, &v1, &v4[22], 70);
  v3 = xmmword_299F2D1F4;
  *v4 = unk_299F2D204;
  *&v4[14] = 0x90000000000000;
  v1 = xmmword_299F2D1D4;
  v2 = unk_299F2D1E4;
  qword_2A197F098 = 0;
  unk_2A197F0A0 = 0;
  qword_2A197F090 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F090, &v1, &v4[22], 70);
  *&v1 = 0x90000000000000;
  qword_2A197F0B0 = 0;
  unk_2A197F0B8 = 0;
  qword_2A197F0A8 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F0A8, &v1, &v1 + 8, 8);
  *&v1 = 0x900000025E4103;
  qword_2A197F0C8 = 0;
  unk_2A197F0D0 = 0;
  qword_2A197F0C0 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F0C0, &v1, &v1 + 8, 8);
  *&v1 = 0x900C00025E4103;
  qword_2A197F0E8 = 0;
  qword_2A197F0D8 = 0;
  unk_2A197F0E0 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F0D8, &v1, &v1 + 8, 8);
  *&v1 = 0xA5A5A5A504BD40FFLL;
  WORD4(v1) = 144;
  qword_2A197F0F0 = 0;
  qword_2A197F100 = 0;
  qword_2A197F0F8 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F0F0, &v1, &v1 + 10, 10);
  *&v1 = 0x5AA5A5A504BD40FFLL;
  WORD4(v1) = 144;
  qword_2A197F108 = 0;
  qword_2A197F118 = 0;
  qword_2A197F110 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F108, &v1, &v1 + 10, 10);
  *&v1 = 0xA5A5A5A5040841FFLL;
  WORD4(v1) = 144;
  qword_2A197F120 = 0;
  qword_2A197F130 = 0;
  qword_2A197F128 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F120, &v1, &v1 + 10, 10);
  *&v1 = 0x5AA5A5A5040841FFLL;
  WORD4(v1) = 144;
  qword_2A197F138 = 0;
  qword_2A197F148 = 0;
  qword_2A197F140 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F138, &v1, &v1 + 10, 10);
  *&v1 = 0x5A5A5A5A05D04003;
  WORD4(v1) = -28664;
  BYTE10(v1) = 0;
  qword_2A197F150 = 0;
  qword_2A197F160 = 0;
  qword_2A197F158 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F150, &v1, &v1 + 11, 11);
  *&v1 = 0x5A5AA5A505D04003;
  WORD4(v1) = -28664;
  BYTE10(v1) = 0;
  qword_2A197F168 = 0;
  qword_2A197F178 = 0;
  qword_2A197F170 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F168, &v1, &v1 + 11, 11);
  *&v1 = 0x5AA5A5A505D04003;
  WORD4(v1) = -28664;
  BYTE10(v1) = 0;
  qword_2A197F180 = 0;
  qword_2A197F190 = 0;
  qword_2A197F188 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F180, &v1, &v1 + 11, 11);
  *&v1 = 0xA5A5A5A505D04003;
  WORD4(v1) = -28664;
  BYTE10(v1) = 0;
  qword_2A197F198 = 0;
  qword_2A197F1A8 = 0;
  qword_2A197F1A0 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F198, &v1, &v1 + 11, 11);
  v7 = unk_299F2D28A;
  v8 = xmmword_299F2D29A;
  v9 = unk_299F2D2AA;
  v10 = xmmword_299F2D2BA;
  v5 = unk_299F2D26A;
  v6 = xmmword_299F2D27A;
  v1 = xmmword_299F2D21A;
  v2 = unk_299F2D22A;
  *v4 = unk_299F2D24A;
  *&v4[16] = xmmword_299F2D25A;
  v3 = xmmword_299F2D23A;
  v11 = -57;
  SERestoreInfo::CApdu::CApdu(&v0);
}

uint64_t SEUpdaterUtil::SN300V3Image4Signer::getSigningKey@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a1, &SEUpdaterUtil::SN300V3Image4Signer::getSigningKey(void)const::signingKey, &SEUpdaterUtil::SN300V3Image4Signer::getSigningCert(void)const::signingCert, 167);
}

uint64_t SEUpdaterUtil::SN300V3Image4Signer::getSigningCert@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a1, &SEUpdaterUtil::SN300V3Image4Signer::getSigningCert(void)const::signingCert, "N13SEUpdaterUtil19SN300V3Image4SignerE", 736);
}

void SEUpdaterUtil::SN300V3Image4Signer::~SN300V3Image4Signer(SEUpdaterUtil::SN300V3Image4Signer *this)
{
  SEUpdaterUtil::SEImage4Signer::~SEImage4Signer(this);

  JUMPOUT(0x29C2B5F30);
}

SERestoreInfo::IcefallDeviceInfo *SERestoreInfo::IcefallDeviceInfo::IcefallDeviceInfo(SERestoreInfo::IcefallDeviceInfo *this, const SERestoreInfo::BLOB *a2)
{
  *this = &unk_2A20296E0;
  *(this + 1) = 0u;
  *(this + 4) = 0u;
  v3 = (this + 64);
  *(this + 7) = 0u;
  v4 = (this + 112);
  *(this + 16) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 37) = 6;
  *(this + 76) = 7;
  v5 = *(a2 + 1);
  if (!v5)
  {
    goto LABEL_6;
  }

  if ((*(a2 + 2) & 0xFFFFFFFFFFFFFFFDLL) != 0x9D)
  {
    goto LABEL_6;
  }

  if (*v5 != 257)
  {
    goto LABEL_6;
  }

  *(this + 10) = *(v5 + 3) == 0;
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 2, (v5 + 4), (v5 + 28), 0x18uLL);
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 5, (v5 + 28), (v5 + 48), 0x14uLL);
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v3, (v5 + 48), (v5 + 80), 0x20uLL);
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 11, (v5 + 112), (v5 + 144), 0x20uLL);
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v4, (v5 + 80), (v5 + 112), 0x20uLL);
  *(this + 17) = *(v5 + 144);
  v6 = *(v5 + 153);
  v7 = *(v5 + 2);
  *(this + 36) = v6;
  *(this + 37) = v7;
  if (v6 != 131601)
  {
LABEL_6:
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

void sub_299F1B5A0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v5);
  v7 = *v4;
  if (*v4)
  {
    v1[15] = v7;
    operator delete(v7);
  }

  v8 = v1[11];
  if (v8)
  {
    v1[12] = v8;
    operator delete(v8);
  }

  v9 = *v3;
  if (*v3)
  {
    v1[9] = v9;
    operator delete(v9);
  }

  v10 = v1[5];
  if (v10)
  {
    v1[6] = v10;
    operator delete(v10);
  }

  v11 = *v2;
  if (*v2)
  {
    v1[3] = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void SERestoreInfo::IcefallDeviceInfo::updateDict(SERestoreInfo::IcefallDeviceInfo *this, __CFDictionary *a2, char a3)
{
  valuePtr = *(this + 36);
  v6 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt32Type, &valuePtr);
  if (!v6)
  {
    __assert_rtn("_CFDictionarySetInteger32", "SERestoreInfoHelpers.hpp", 42, "num != nullptr");
  }

  v7 = v6;
  CFDictionarySetValue(a2, @"SE,ChipID", v6);
  CFRelease(v7);
  v8 = CFDataCreate(0, *(this + 2), *(this + 3) - *(this + 2));
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = v8;
  CFDictionarySetValue(a2, @"SE,ID", v8);
  CFRelease(v9);
  v10 = CFDataCreate(0, *(this + 5), *(this + 6) - *(this + 5));
  if (!v10)
  {
    goto LABEL_14;
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
    goto LABEL_14;
  }

  v13 = v12;
  CFDictionarySetValue(a2, @"SE,RootKeyIdentifier", v12);
  CFRelease(v13);
  if (a3)
  {
    return;
  }

  v14 = MEMORY[0x29EDB8F00];
  if (!*(this + 10))
  {
    v14 = MEMORY[0x29EDB8EF8];
  }

  CFDictionarySetValue(a2, @"SE,IsDev", *v14);
  v15 = CFDataCreate(0, *(this + 14), *(this + 15) - *(this + 14));
  if (!v15 || (v16 = v15, CFDictionarySetValue(a2, @"SE,BLFWKeysIdentifier", v15), CFRelease(v16), (v17 = CFDataCreate(0, *(this + 11), *(this + 12) - *(this + 11))) == 0))
  {
LABEL_14:
    __assert_rtn("_CFDictionarySetData", "SERestoreInfoHelpers.hpp", 59, "tmpData");
  }

  v18 = v17;
  CFDictionarySetValue(a2, @"SE,OsKeysIdentifier", v17);
  CFRelease(v18);
}

void SERestoreInfo::IcefallDeviceInfo::~IcefallDeviceInfo(SERestoreInfo::IcefallDeviceInfo *this)
{
  SERestoreInfo::IcefallDeviceInfo::~IcefallDeviceInfo(this);

  JUMPOUT(0x29C2B5F30);
}

{
  *this = &unk_2A20296E0;
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

uint64_t SERestoreInfo::IcefallDeviceInfo::getOsKeyId@<X0>(SERestoreInfo::IcefallDeviceInfo *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a2, *(this + 11), *(this + 12), *(this + 12) - *(this + 11));
}

SERestoreInfo::SN300VDeviceInfo *SERestoreInfo::SN300VDeviceInfo::SN300VDeviceInfo(SERestoreInfo::SN300VDeviceInfo *this, const SERestoreInfo::BLOB *a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A2029730;
  if (*(v3 + 14) != 44)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

void SERestoreInfo::SN300VDeviceInfo::~SN300VDeviceInfo(SERestoreInfo::SN300VDeviceInfo *this)
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

void getAlohaPairingOptions(id *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = *a1;
  v3 = [v16 objectForKeyedSubscript:@"Options"];
  if (!v3)
  {
    _ObjCLog(2, "getAlohaPairingOptions", &cfstr_OptionsNotPres.isa);
  }

  v4 = [v3 objectForKeyedSubscript:@"DebugLogPath"];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    _ObjCLog(2, "getAlohaPairingOptions", &cfstr_DebuglogpathNo.isa);
  }

  v7 = [v16 objectForKeyedSubscript:@"RestoreOptions"];
  v8 = v7;
  if (!v7)
  {
    _ObjCLog(2, "getAlohaPairingOptions", &cfstr_SkipPairingDue.isa);
LABEL_15:
    *a2 = 0;
    *(a2 + 40) = 0;
    goto LABEL_31;
  }

  v9 = [v7 objectForKeyedSubscript:@"PairStockholm"];
  v10 = [v9 BOOLValue];

  if ((v10 & 1) == 0)
  {
    _ObjCLog(2, "getAlohaPairingOptions", &cfstr_PairingNotEnab.isa);
    goto LABEL_15;
  }

  v11 = [v8 objectForKeyedSubscript:@"StockholmPairingProtocolVersion"];
  v12 = [MEMORY[0x29EDBA070] numberWithInteger:{objc_msgSend(v11, "integerValue")}];
  if ([v12 integerValue] > 1)
  {
    v13 = [v8 objectForKeyedSubscript:@"StockholmPairingServerURL"];
    if (!v13)
    {
      _ObjCLog(0, "getAlohaPairingOptions", &cfstr_PairingIsReque.isa);
      exception = __cxa_allocate_exception(0x48uLL);
      std::string::basic_string[abi:ne200100]<0>(&v17, "Pairing is requested but no server URL is provided\n");
      v15 = SERestoreInfo::SEException::SEException(exception, &v17, 2, @"SEUpdaterErrorDomain");
    }

    if (v12)
    {
      CFRetain(v12);
    }

    CFRetain(v13);
    if (v5)
    {
      CFRetain(v5);
    }

    if (v12)
    {
      CFRetain(v12);
    }

    CFRetain(v13);
    if (v5)
    {
      CFRetain(v5);
    }

    *a2 = v10;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;
    *(a2 + 24) = v5;
    *(a2 + 32) = 1;
    *(a2 + 34) = 1;
    *(a2 + 40) = 1;
    if (v5)
    {
      CFRelease(v5);
    }

    CFRelease(v13);
    if (v12)
    {
      CFRelease(v12);
    }
  }

  else
  {
    _ObjCLog(2, "getAlohaPairingOptions", &cfstr_SkipPairingDue_0.isa, v11);
    *a2 = 0;
    *(a2 + 40) = 0;
  }

LABEL_31:
}

void sub_299F1BE34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void doAlohaPairing(unsigned __int8 *a1, uint64_t *a2)
{
  v4 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v5 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global(v4);
  }

  v6 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  SEUpdaterUtil::SELogObj::printLog(v5, 2, 0, 1, "print", "Pairing options:\n");
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v8 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global(v7);
  }

  v9 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  SEUpdaterUtil::SELogObj::printLog(v8, 2, 0, 1, "print", "Pairing selected: %d\n", *a1);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v11 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global(v10);
  }

  v12 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v14 = *(a1 + 1);
  if (v14)
  {
    ctu::cf::show(1, *(a1 + 1), v13);
    if (v63 >= 0)
    {
      v15 = &v62;
    }

    else
    {
      v15 = v62;
    }
  }

  else
  {
    v15 = 0;
  }

  SEUpdaterUtil::SELogObj::printLog(v11, 2, 0, 1, "print", "Pairing protocol version: %s\n", v15);
  if (v14 && v63 < 0)
  {
    operator delete(v62);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
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
  v20 = *(a1 + 2);
  if (v20)
  {
    ctu::cf::show(1, *(a1 + 2), v19);
    if (v61 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }
  }

  else
  {
    v21 = 0;
  }

  SEUpdaterUtil::SELogObj::printLog(v17, 2, 0, 1, "print", "Pairing hostname URL: %s\n", v21);
  if (v20 && v61 < 0)
  {
    operator delete(__p[0]);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v22 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v23 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global(v22);
  }

  v24 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v26 = *(a1 + 3);
  if (v26)
  {
    ctu::cf::show(1, *(a1 + 3), v25);
    if (v59 >= 0)
    {
      v27 = v58;
    }

    else
    {
      v27 = v58[0];
    }
  }

  else
  {
    v27 = 0;
  }

  SEUpdaterUtil::SELogObj::printLog(v23, 2, 0, 1, "print", "Pairing error debug log path: %s\n", v27);
  if (v26 && v59 < 0)
  {
    operator delete(v58[0]);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v28 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v29 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global(v28);
  }

  v30 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  SEUpdaterUtil::SELogObj::printLog(v29, 2, 0, 1, "print", "Pairing with reverse proxy: %d\n", a1[32]);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v32 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global(v31);
  }

  v33 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  SEUpdaterUtil::SELogObj::printLog(v32, 2, 0, 1, "print", "Submitting sePK to FDR: %d\n", a1[34]);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  v34 = [AlohaPairingController alloc];
  v35 = a2[1];
  v56 = *a2;
  v57 = v35;
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v36 = [(AlohaPairingController *)v34 initWithOptions:a1 seController:&v56];
  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  }

  v37 = [(AlohaPairingController *)v36 performAlohaPairing];
  v38 = v37;
  _ObjCLog(2, "doAlohaPairing", &cfstr_ApcFinishedWit.isa, v37);
  if (v38)
  {
    v42 = [(AlohaPairingController *)v36 debugRecordPath];

    if (v42)
    {
      v49 = [(AlohaPairingController *)v36 transceiver];
      v50 = [v49 capduRecord];
      [(AlohaPairingController *)v36 writeRecord:v50 fileExtension:@"capdu"];

      v51 = [(AlohaPairingController *)v36 transceiver];
      v52 = [v51 rapduRecord];
      [(AlohaPairingController *)v36 writeRecord:v52 fileExtension:@"rapdu"];

      v53 = [(AlohaPairingController *)v36 alohaPlistRecord];
      [(AlohaPairingController *)v36 writeRecord:v53 fileExtension:@"plist"];
    }

    else
    {
      _ObjCLog(2, "doAlohaPairing", &cfstr_DebuglogpathIs.isa);
    }

    [(AlohaPairingController *)v36 invalidate];
    exception = __cxa_allocate_exception(0x48uLL);
    std::string::basic_string[abi:ne200100]<0>(v55, "Aloha Pairing failed with return code\n");
    v44 = SERestoreInfo::SEException::SEException(exception, v55, v38, @"SEUpdaterErrorDomain");
  }

  if (a1[34] == 1)
  {
    v54 = 0;
    v39 = [(AlohaPairingController *)v36 submitPairingRecord:&v54];
    v40 = v54;
    if (v40)
    {
      v41 = 0;
    }

    else
    {
      v41 = v39;
    }

    if (!v41)
    {
      v45 = v40;
      v46 = [(__CFError *)v40 description];
      _ObjCLog(0, "doAlohaPairing", &cfstr_FailedToQueryS_1.isa, [v46 UTF8String]);

      [(AlohaPairingController *)v36 invalidate];
      v47 = __cxa_allocate_exception(0x48uLL);
      v48 = SERestoreInfo::SEException::SEException(v47, v45);
    }
  }

  [(AlohaPairingController *)v36 invalidate];
}

void sub_299F1C92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_299F1C9AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = AlohaPairingController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_299F1E560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27)
{
  _Block_object_dispose(&a22, 8);

  _Block_object_dispose((v34 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_299F1EC94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, id);
  std::exception_ptr::~exception_ptr((v11 - 112));
  if (*(v11 - 96) == 1)
  {
    std::mutex::unlock(*(v11 - 104));
  }

  if (!atomic_fetch_add(v9 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v9 + 16))(v9);
  }

  _Block_object_dispose(va, 8);

  _Block_object_dispose(va1, 8);
  std::promise<BOOL>::~promise((v10 + 48));

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__187(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  return result;
}

void std::__assoc_state<BOOL>::~__assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x29EDC9580] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x29EDC9580] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x29C2B5F30);
}

uint64_t *std::promise<BOOL>::~promise(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if ((*(v2 + 136) & 1) == 0)
    {
      v12.__ptr_ = 0;
      v3 = *(v2 + 16);
      std::exception_ptr::~exception_ptr(&v12);
      v2 = *a1;
      if (!v3 && *(v2 + 8) >= 1)
      {
        v4 = std::future_category();
        MEMORY[0x29C2B5C20](v10, 4, v4);
        exception = __cxa_allocate_exception(0x20uLL);
        __cxa_init_primary_exception();
        v6 = std::logic_error::logic_error(exception, v10);
        exception->__vftable = (MEMORY[0x29EDC9548] + 16);
        exception[1] = v10[1];
        std::exception_ptr::__from_native_exception_pointer(&v11, v6, v7);
        v8.__ptr_ = &v11;
        std::__assoc_sub_state::set_exception(v2, v8);
        std::exception_ptr::~exception_ptr(&v11);
        MEMORY[0x29C2B5C30](v10);
        v2 = *a1;
      }
    }

    if (!atomic_fetch_add((v2 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v2 + 16))(v2);
    }
  }

  return a1;
}

void std::__throw_future_error[abi:ne200100](unsigned int a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v3 = std::future_category();
  MEMORY[0x29C2B5C20](exception, a1, v3);
  __cxa_throw(exception, MEMORY[0x29EDC9430], MEMORY[0x29EDC9390]);
}

void _GLOBAL__sub_I_AlohaPairingController_mm()
{
  v0 = objc_autoreleasePoolPush();
  _MergedGlobals_7 = [MEMORY[0x29EDBA070] numberWithInt:1];
  qword_2A197F330 = [MEMORY[0x29EDBA070] numberWithInt:1];
  qword_2A197F338 = [MEMORY[0x29EDBA070] numberWithInt:0];

  objc_autoreleasePoolPop(v0);
}

SERestoreInfo::SN300V3DeviceInfo *SERestoreInfo::SN300V3DeviceInfo::SN300V3DeviceInfo(SERestoreInfo::SN300V3DeviceInfo *this, const SERestoreInfo::BLOB *a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A20297C8;
  if (*(v3 + 14) != 56)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

void SERestoreInfo::SN300V3DeviceInfo::~SN300V3DeviceInfo(SERestoreInfo::SN300V3DeviceInfo *this)
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

CFErrorRef SERestoreInfo::CreateCFError(const UInt8 *a1, int a2, const void *a3, const __CFString *a4)
{
  v8 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v23, "Assertion: ");
    v18 = std::string::append(&v23, "userInfo");
    v19 = *&v18->__r_.__value_.__l.__data_;
    v25 = v18->__r_.__value_.__r.__words[2];
    v24 = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](exception, &v24);
  }

  v10 = Mutable;
  v11 = *(a1 + 23);
  if (v11 < 0)
  {
    v12 = a1;
    a1 = *a1;
    v11 = *(v12 + 1);
  }

  v13 = CFStringCreateWithBytes(v8, a1, v11, 0x8000100u, 0);
  if (!v13)
  {
    v20 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v23, "Assertion: ");
    v21 = std::string::append(&v23, "description");
    v22 = *&v21->__r_.__value_.__l.__data_;
    v25 = v21->__r_.__value_.__r.__words[2];
    v24 = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](v20, &v24);
  }

  v14 = v13;
  CFDictionaryAddValue(v10, *MEMORY[0x29EDB8F58], v13);
  CFRelease(v14);
  if (a3)
  {
    CFDictionaryAddValue(v10, *MEMORY[0x29EDB8F68], a3);
  }

  v15 = CFErrorCreate(v8, a4, a2, v10);
  CFRelease(v10);
  return v15;
}

void sub_299F1FD68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (v22)
  {
    __cxa_free_exception(v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SEUpdaterUtil::SN210VImage4Signer::getSigningKey@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a1, &SEUpdaterUtil::SN210VImage4Signer::getSigningKey(void)const::signingKey, &SEUpdaterUtil::SN210VImage4Signer::getSigningCert(void)const::signingCert, 121);
}

uint64_t SEUpdaterUtil::SN210VImage4Signer::getSigningCert@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a1, &SEUpdaterUtil::SN210VImage4Signer::getSigningCert(void)const::signingCert, "N13SEUpdaterUtil18SN210VImage4SignerE", 630);
}

void SEUpdaterUtil::SN210VImage4Signer::~SN210VImage4Signer(SEUpdaterUtil::SN210VImage4Signer *this)
{
  SEUpdaterUtil::SEImage4Signer::~SEImage4Signer(this);

  JUMPOUT(0x29C2B5F30);
}

SERestoreInfo::SE310SDeviceInfo *SERestoreInfo::SE310SDeviceInfo::SE310SDeviceInfo(SERestoreInfo::SE310SDeviceInfo *this, const SERestoreInfo::BLOB *a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A2029878;
  if (*(v3 + 14) != 55)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

void SERestoreInfo::SE310SDeviceInfo::~SE310SDeviceInfo(SERestoreInfo::SE310SDeviceInfo *this)
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

void SERestoreInfo::SERestoreInfoLog::printToOsLog(SERestoreInfo::SERestoreInfoLog *this, char *a2, const char *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(&__str, a2);
  v3 = 0;
  v4 = MEMORY[0x29EDCA988];
  while ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (v3 >= SHIBYTE(__str.__r_.__value_.__r.__words[2]))
    {
      goto LABEL_14;
    }

LABEL_6:
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      std::string::basic_string(&v7, &__str, v3, 0x3E8uLL, &v9);
      if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v5 = &v7;
      }

      else
      {
        v5 = v7.__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      v11 = v5;
      _os_log_impl(&dword_299EC0000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
      if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v7.__r_.__value_.__l.__data_);
      }
    }

    v3 += 1000;
  }

  if (v3 < __str.__r_.__value_.__l.__size_)
  {
    goto LABEL_6;
  }

  operator delete(__str.__r_.__value_.__l.__data_);
LABEL_14:
  v6 = *MEMORY[0x29EDCA608];
}

char *SERestoreInfo::SERestoreInfoLog::FormatMsg(SERestoreInfo::SERestoreInfoLog *this, const char *a2, ...)
{
  va_start(va, a2);
  v3 = 0;
  if (vasprintf(&v3, "[%3.3ld.%1.1d] [%s] %s: %s", va) <= 0)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

char *SERestoreInfo::SERestoreInfoLog::createVerboseLogString(SERestoreInfo::SERestoreInfoLog *this, unsigned int a2, const char *a3, const char *a4)
{
  if (a2 >= 5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v13, "Assertion: ");
    v11 = std::string::append(&v13, "level >= 0 && level < _LOG_LEVEL_MAX && level is not good");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v15 = v11->__r_.__value_.__r.__words[2];
    v14 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](exception, &v14);
  }

  v14.tv_sec = 0;
  *&v14.tv_usec = 0;
  v7 = gettimeofday(&v14, 0);
  return SERestoreInfo::SERestoreInfoLog::FormatMsg(v7, v8, v14.tv_sec, (v14.tv_usec / 1000), SERestoreInfo::logLevelNames[a2], a3, a4);
}

void sub_299F20394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
    if ((v26 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v25);
  goto LABEL_8;
}

void SERestoreInfo::SERestoreInfoLog::printLogv(SERestoreInfo::SERestoreInfoLog *this, unsigned int a2, const char *a3, const char *a4, va_list a5)
{
  v12 = 0;
  v8 = vasprintf(&v12, a4, a5);
  v9 = v12;
  if (v8 >= 1 && v12 != 0)
  {
    VerboseLogString = SERestoreInfo::SERestoreInfoLog::createVerboseLogString(v8, a2, a3, v12);
    free(v9);
    if (VerboseLogString)
    {
      std::mutex::lock((this + 24));
      (*this)(*(this + 1), VerboseLogString);
      std::mutex::unlock((this + 24));
      free(VerboseLogString);
    }
  }
}

void SERestoreInfo::SERestoreInfoLog::printLog(SERestoreInfo::SERestoreInfoLog *this, signed int a2, const char *a3, const char *a4, ...)
{
  va_start(va, a4);
  if (*(this + 4) >= a2)
  {
    SERestoreInfo::SERestoreInfoLog::printLogv(this, a2, a3, a4, va);
  }
}

void SEUpdaterCreate(const __CFDictionary *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    v7 = off_2A14F2360;
    if (!off_2A14F2360)
    {
      SEUpdaterUtil::SELogObj::create_default_global(v6);
    }

    v8 = *(&off_2A14F2360 + 1);
    if (*(&off_2A14F2360 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    __p[0] = MEMORY[0x29EDCA5F8];
    __p[1] = 0x40000000;
    v32 = ___ZN13SEUpdaterUtil8SELogObj15registerLogSinkEPvPFvS1_PKcE_block_invoke;
    v33 = &__block_descriptor_tmp_26;
    v34 = v7;
    v35 = a2;
    v36 = a3;
    v37 = __p;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZNK3ctu20SharedSynchronizableIN13SEUpdaterUtil8SELogObjEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke_0;
    block[3] = &__block_descriptor_tmp_27;
    block[4] = v7;
    block[5] = &v37;
    v9 = *(v7 + 16);
    if (*(v7 + 24))
    {
      dispatch_async_and_wait(v9, block);
      if (!v8)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    dispatch_sync(v9, block);
    if (v8)
    {
LABEL_8:
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

LABEL_9:
  v10 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v11 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global(v10);
  }

  v12 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  std::string::basic_string[abi:ne200100]<0>(__p, "root");
  if (SHIBYTE(v32) >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  SEUpdaterUtil::SELogObj::printLog(v11, 2, 0, 1, "SEUpdaterCreate", "Project version%s: %s\n", &unk_299F305FF, v13);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[0]);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  Value = CFDictionaryGetValue(a1, @"Options");
  v15 = Value;
  if (Value && (v16 = CFGetTypeID(Value), v16 == CFDictionaryGetTypeID()))
  {
    v17 = CFDictionaryGetValue(v15, @"PreflightContext");
    v18 = v17;
    if (v17)
    {
      v19 = CFGetTypeID(v17);
      if (v19 == CFStringGetTypeID())
      {
        v20 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
        v21 = off_2A14F2360;
        if (!off_2A14F2360)
        {
          SEUpdaterUtil::SELogObj::create_default_global(v20);
        }

        v22 = *(&off_2A14F2360 + 1);
        if (*(&off_2A14F2360 + 1))
        {
          atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
        ctu::cf::show(__p, v18, v23);
        if (SHIBYTE(v32) >= 0)
        {
          v24 = __p;
        }

        else
        {
          v24 = __p[0];
        }

        SEUpdaterUtil::SELogObj::printLog(v21, 1, 0, 1, "IsBootedOS", "Got Updater Context %s\n", v24);
        if (SHIBYTE(v32) < 0)
        {
          operator delete(__p[0]);
        }

        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }

        v25 = CFStringCompare(v18, @"BootedOS", 0) == kCFCompareEqualTo;
        goto LABEL_51;
      }
    }

    v29 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    v30 = off_2A14F2360;
    if (!off_2A14F2360)
    {
      SEUpdaterUtil::SELogObj::create_default_global(v29);
    }

    v28 = *(&off_2A14F2360 + 1);
    if (*(&off_2A14F2360 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    SEUpdaterUtil::SELogObj::printLog(v30, 1, 0, 1, "IsBootedOS", "No updater context hint, defaulting to limited environment\n");
  }

  else
  {
    v26 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    v27 = off_2A14F2360;
    if (!off_2A14F2360)
    {
      SEUpdaterUtil::SELogObj::create_default_global(v26);
    }

    v28 = *(&off_2A14F2360 + 1);
    if (*(&off_2A14F2360 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    SEUpdaterUtil::SELogObj::printLog(v27, 1, 0, 1, "IsBootedOS", "No RestoreOptions dictionary? Defaulting to limited environment\n");
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  v25 = 0;
LABEL_51:
  SEUpdater::makeUpdateController(v25);
}

void sub_299F20B08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  if (a2 == 3)
  {
    v18 = __cxa_begin_catch(a1);
    v19 = v18[16];
    (*(*v18 + 16))(v18);
    SEUpdaterUtil::_AddError(v19, 1, "SEUpdaterCreate", "%s", v20);
  }

  else
  {
    if (a2 != 2)
    {
      _Unwind_Resume(a1);
    }

    v21 = __cxa_begin_catch(a1);
    (*(*v21 + 16))(v21);
    SEUpdaterUtil::_AddError(0x1F, 1, "SEUpdaterCreate", "%s", v22);
  }

  __cxa_end_catch();
  JUMPOUT(0x299F209D8);
}

uint64_t __SEUpdaterCreate_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_2A197F348 = result;
  return result;
}

void SEUpdaterDestroy(const void *a1)
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
  SEUpdaterUtil::SELogObj::printLog(v3, 2, 0, 1, "SEUpdaterDestroy", "Called SEUpdaterDestroy updater %p\n", a1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (a1)
  {
    pthread_mutex_lock(&ctu::Singleton<SEUpdater::UpdateControllerBase,SEUpdater::UpdateControllerBase,ctu::PthreadMutexGuardPolicy<SEUpdater::UpdateControllerBase>>::sInstance);
    v5 = qword_2A14F24B0;
    qword_2A14F24A8 = 0;
    qword_2A14F24B0 = 0;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    pthread_mutex_unlock(&ctu::Singleton<SEUpdater::UpdateControllerBase,SEUpdater::UpdateControllerBase,ctu::PthreadMutexGuardPolicy<SEUpdater::UpdateControllerBase>>::sInstance);
    pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::Error,SEUpdaterUtil::Error,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::Error>>::sInstance);
    v6 = *(&xmmword_2A14F23B0 + 1);
    xmmword_2A14F23B0 = 0uLL;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::Error,SEUpdaterUtil::Error,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::Error>>::sInstance);
    pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    v7 = *(&off_2A14F2360 + 1);
    off_2A14F2360 = 0;
    *(&off_2A14F2360 + 1) = 0;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  }
}

CFStringRef SEUpdaterCreateDescribe(CFStringRef result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetAllocator(result);
    v3 = CFGetAllocator(v1);
    return CFStringCreateWithFormat(v2, 0, @"<libSEUpdater %p [%p]>{}", v1, v3);
  }

  return result;
}

uint64_t SEUpdaterUtil::GetErrorCode(SEUpdaterUtil *this)
{
  v1 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::Error,SEUpdaterUtil::Error,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::Error>>::sInstance);
  v2 = xmmword_2A14F23B0;
  if (!xmmword_2A14F23B0)
  {
    SEUpdaterUtil::Error::create_default_global(v1);
  }

  v3 = *(&xmmword_2A14F23B0 + 1);
  if (*(&xmmword_2A14F23B0 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A14F23B0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::Error,SEUpdaterUtil::Error,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::Error>>::sInstance);
  ErrorCode = SEUpdaterUtil::Error::getErrorCode(v2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return ErrorCode;
}

uint64_t SEUpdaterUtil::CreateCFError(SEUpdaterUtil *this)
{
  v1 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::Error,SEUpdaterUtil::Error,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::Error>>::sInstance);
  v2 = xmmword_2A14F23B0;
  if (!xmmword_2A14F23B0)
  {
    SEUpdaterUtil::Error::create_default_global(v1);
  }

  v3 = *(&xmmword_2A14F23B0 + 1);
  if (*(&xmmword_2A14F23B0 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A14F23B0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::Error,SEUpdaterUtil::Error,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::Error>>::sInstance);
  CFError = SEUpdaterUtil::Error::CreateCFError(v2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return CFError;
}

BOOL SEUpdaterExecCommand(uint64_t a1, const __CFString *a2, const __CFDictionary *a3, const __CFDictionary **a4, char *a5)
{
  if (!a1 || !a2)
  {
    v15 = 2;
    SEUpdaterUtil::_AddError(2, 0, "SEUpdaterExecCommand", "Invalid input", a5);
    goto LABEL_14;
  }

  pthread_mutex_lock(&ctu::Singleton<SEUpdater::UpdateControllerBase,SEUpdater::UpdateControllerBase,ctu::PthreadMutexGuardPolicy<SEUpdater::UpdateControllerBase>>::sInstance);
  v9 = qword_2A14F24A8;
  if (!qword_2A14F24A8)
  {
    v10 = qword_2A14F24B0;
    qword_2A14F24B0 = 0;
    if (!v10)
    {
      v9 = 0;
      v11 = 0;
      goto LABEL_9;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    v9 = qword_2A14F24A8;
  }

  v11 = qword_2A14F24B0;
  if (qword_2A14F24B0)
  {
    v12 = 0;
    atomic_fetch_add_explicit((qword_2A14F24B0 + 8), 1uLL, memory_order_relaxed);
    goto LABEL_10;
  }

LABEL_9:
  v12 = 1;
LABEL_10:
  pthread_mutex_unlock(&ctu::Singleton<SEUpdater::UpdateControllerBase,SEUpdater::UpdateControllerBase,ctu::PthreadMutexGuardPolicy<SEUpdater::UpdateControllerBase>>::sInstance);
  if (v9)
  {
    v14 = SEUpdater::UpdateControllerBase::execCommand(v9, a2, a3, a4);
    v15 = v14;
  }

  else
  {
    v15 = 2;
    SEUpdaterUtil::_AddError(2, 0, "SEUpdaterExecCommand", "no controller instance", v13);
  }

  if ((v12 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

LABEL_14:
  if (a5 && v15)
  {
    *a5 = SEUpdaterUtil::CreateCFError(v14);
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
    SEUpdaterUtil::SELogObj::printLog(v17, 2, 0, 1, "SEUpdaterExecCommand", "Returning outError:\n");
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    SEUpdaterUtil::SELogPrintCFType(2, 1, *a5, v19);
  }

  return v15 == 0;
}

void sub_299F212E8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if ((v10 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (a2 == 2)
  {
    v13 = __cxa_begin_catch(a1);
    v14 = v13[16];
    (*(*v13 + 16))(v13);
    SEUpdaterUtil::_AddError(v14, 1, "SEUpdaterExecCommand", "%s", v15);
    __cxa_end_catch();
  }

  else
  {
    if (a2 != 1)
    {
      JUMPOUT(0x299F212DCLL);
    }

    v16 = __cxa_begin_catch(a1);
    (*(*v16 + 16))(v16);
    SEUpdaterUtil::_AddError(0x1F, 1, "SEUpdaterExecCommand", "%s", v17);
    __cxa_end_catch();
  }

  JUMPOUT(0x299F21190);
}

void SEUpdaterUtil::SELogPrintCFType(SEUpdaterUtil *this, ctu::cf *a2, const void *a3, const void *a4)
{
  ctu::cf::show(a2, a3, a3);
  v5 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v6 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global(v5);
  }

  v7 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  p_p = &__p;
  if (v10 < 0)
  {
    p_p = __p;
  }

  SEUpdaterUtil::SELogObj::printLog(v6, this, 0, 1, 0, "%s\n", p_p);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v10 < 0)
  {
    operator delete(__p);
  }
}

void sub_299F214E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t SEUpdaterIsDone(uint64_t a1, CFErrorRef *a2)
{
  if (!a1)
  {
    v7 = 0;
    return v7 & 1;
  }

  pthread_mutex_lock(&ctu::Singleton<SEUpdater::UpdateControllerBase,SEUpdater::UpdateControllerBase,ctu::PthreadMutexGuardPolicy<SEUpdater::UpdateControllerBase>>::sInstance);
  v3 = qword_2A14F24A8;
  if (!qword_2A14F24A8)
  {
    v4 = qword_2A14F24B0;
    qword_2A14F24B0 = 0;
    if (!v4)
    {
      v3 = 0;
      v5 = 0;
      goto LABEL_8;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    v3 = qword_2A14F24A8;
  }

  v5 = qword_2A14F24B0;
  if (qword_2A14F24B0)
  {
    v6 = 0;
    atomic_fetch_add_explicit((qword_2A14F24B0 + 8), 1uLL, memory_order_relaxed);
    goto LABEL_9;
  }

LABEL_8:
  v6 = 1;
LABEL_9:
  pthread_mutex_unlock(&ctu::Singleton<SEUpdater::UpdateControllerBase,SEUpdater::UpdateControllerBase,ctu::PthreadMutexGuardPolicy<SEUpdater::UpdateControllerBase>>::sInstance);
  if (v3)
  {
    v7 = *(v3 + 80);
    if (v6)
    {
      return v7 & 1;
    }

    goto LABEL_16;
  }

  if (a2)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "no controller instance");
    *a2 = SERestoreInfo::CreateCFError(__p, 3, 0, @"SEUpdaterErrorDomain");
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v7 = 1;
  if ((v6 & 1) == 0)
  {
LABEL_16:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v7 & 1;
}

void sub_299F21634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if ((v16 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

void *___ZN13SEUpdaterUtil8SELogObj15registerLogSinkEPvPFvS1_PKcE_block_invoke(void *result)
{
  v1 = result[5];
  if (!v1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v6, "Assertion: ");
    v4 = std::string::append(&v6, "logSink");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v8 = v4->__r_.__value_.__r.__words[2];
    v7 = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](exception, &v7);
  }

  v2 = result[4];
  *(v2 + 32) = v1;
  *(v2 + 40) = result[6];
  return result;
}

void sub_299F21728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void SEUpdater::cbNfRestoreSEEnumerate(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v23, "Assertion: ");
    v21 = std::string::append(&v23, "ctx");
    v22 = *&v21->__r_.__value_.__l.__data_;
    v25 = v21->__r_.__value_.__r.__words[2];
    v24 = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](exception, &v24);
  }

  if (a2)
  {
    v5 = a2;
    while (1)
    {
      v6 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
      v7 = off_2A14F2360;
      if (!off_2A14F2360)
      {
        SEUpdaterUtil::SELogObj::create_default_global(v6);
      }

      v8 = *(&off_2A14F2360 + 1);
      if (*(&off_2A14F2360 + 1))
      {
        atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
      SEUpdaterUtil::SELogObj::printLog(v7, 3, 0, 1, "cbNfRestoreSEEnumerate", "found SE with ID: %d \n", *a1);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      if (*(a1 + 4))
      {
        break;
      }

      a1 += 42;
      if (!--v5)
      {
        return;
      }
    }

    v9 = *a1;
    v10 = *(a1 + 2);
    *(a3 + 16) = *(a1 + 1);
    *(a3 + 32) = v10;
    *a3 = v9;
    v11 = *(a1 + 3);
    v12 = *(a1 + 4);
    v13 = *(a1 + 6);
    *(a3 + 80) = *(a1 + 5);
    *(a3 + 96) = v13;
    *(a3 + 48) = v11;
    *(a3 + 64) = v12;
    v14 = *(a1 + 7);
    v15 = *(a1 + 8);
    v16 = *(a1 + 9);
    *(a3 + 160) = *(a1 + 20);
    *(a3 + 128) = v15;
    *(a3 + 144) = v16;
    *(a3 + 112) = v14;
    v17 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    v18 = off_2A14F2360;
    if (!off_2A14F2360)
    {
      SEUpdaterUtil::SELogObj::create_default_global(v17);
    }

    v19 = *(&off_2A14F2360 + 1);
    if (*(&off_2A14F2360 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    SEUpdaterUtil::SELogObj::printLog(v18, 3, 0, 1, "cbNfRestoreSEEnumerate", "Selecting SE with ID: %d \n", *a1);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }
  }
}

void SEUpdater::makeUpdateController(SEUpdater *this)
{
  v1 = this;
  pthread_mutex_lock(&ctu::Singleton<SEUpdater::UpdateControllerBase,SEUpdater::UpdateControllerBase,ctu::PthreadMutexGuardPolicy<SEUpdater::UpdateControllerBase>>::sInstance);
  v2 = qword_2A14F24B0;
  qword_2A14F24A8 = 0;
  qword_2A14F24B0 = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdater::UpdateControllerBase,SEUpdater::UpdateControllerBase,ctu::PthreadMutexGuardPolicy<SEUpdater::UpdateControllerBase>>::sInstance);
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
  SEUpdaterUtil::SELogObj::printLog(v4, 2, 0, 1, "makeUpdateController", "Are we in booted OS? %d\n", v1);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v1)
  {
    operator new();
  }

  v6 = NfRestoreSEEnumerate();
  if (v6 == 1)
  {
    v7 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    v8 = off_2A14F2360;
    if (!off_2A14F2360)
    {
      SEUpdaterUtil::SELogObj::create_default_global(v7);
    }

    v9 = *(&off_2A14F2360 + 1);
    if (*(&off_2A14F2360 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    SEUpdaterUtil::SELogObj::printLog(v8, 0, 0, 1, "getSEInfo", "Ignoring NFC load stack error\n");
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  else
  {
    v10 = v6;
    std::string::basic_string[abi:ne200100]<0>(&v14, "Failed to load NFC stack");
    SERestoreInfo::CallAndThrow<NfResult>(v10, &v14);
    if (v15 < 0)
    {
      operator delete(v14);
    }
  }

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
  SEUpdaterUtil::SELogObj::printLog(v12, 2, 0, 1, "makeUpdateController", "No personalizable SE found\n");
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _ZNSt3__115allocate_sharedB8ne200100IN9SEUpdater19NOPUpdateControllerENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void std::__shared_ptr_emplace<SEUpdater::PreflightUpdateController>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2029968;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2B5F30);
}

void sub_299F223BC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<SEUpdater::NOPUpdateController>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20299B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2B5F30);
}

void SEUpdater::NOPUpdateController::~NOPUpdateController(SEUpdater::NOPUpdateController *this)
{
  SEUpdater::UpdateControllerBase::~UpdateControllerBase(this);

  JUMPOUT(0x29C2B5F30);
}

void std::__shared_ptr_emplace<SEUpdater::P73BaseUpdateController>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2029A50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C2B5F30);
}

void _GLOBAL__sub_I_SEUpdaterFactory_cpp()
{
  v12 = *MEMORY[0x29EDCA608];
  std::string::basic_string[abi:ne200100]<0>(_MergedGlobals_9, "4143_WeakPullDown");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_9[24], "4143_HiZ");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_9[48], "412A_Default");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_9[72], "415E_Value0C");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_9[96], "415E_Value00");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_9[120], "40BD_EnableInFPM_EnableLogging");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_9[144], "40BD_DisableInFPM_EnableLogging");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_9[168], "4108_EnableInFPM_EnableLogging");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_9[192], "4108_DisableInFPM_EnableLogging");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_9[216], "40D0_Disable");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_9[240], "40D0_Enable_WithFilters_SW");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_9[264], "40D0_Enable_WithFilters_SW_ISO");
  std::string::basic_string[abi:ne200100]<0>(&_MergedGlobals_9[288], "40D0_Enable_WithFilters_SW_ISO_Type");
  LODWORD(v1) = 0;
  WORD2(v1) = -28672;
  BYTE6(v1) = 0;
  qword_2A197F490 = 0;
  unk_2A197F498 = 0;
  qword_2A197F488 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F488, &v1, &v1 + 7, 7);
  LODWORD(v1) = 21185023;
  WORD2(v1) = -28670;
  BYTE6(v1) = 0;
  qword_2A197F4A8 = 0;
  unk_2A197F4B0 = 0;
  qword_2A197F4A0 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F4A0, &v1, &v1 + 7, 7);
  LODWORD(v1) = 21185023;
  WORD2(v1) = -28671;
  BYTE6(v1) = 0;
  qword_2A197F4C0 = 0;
  unk_2A197F4C8 = 0;
  qword_2A197F4B8 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F4B8, &v1, &v1 + 7, 7);
  v3 = xmmword_299F2FE98;
  *v4 = unk_299F2FEA8;
  *&v4[14] = 0x90000000000000;
  v1 = xmmword_299F2FE78;
  v2 = unk_299F2FE88;
  qword_2A197F4D8 = 0;
  unk_2A197F4E0 = 0;
  qword_2A197F4D0 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F4D0, &v1, &v4[22], 70);
  v3 = xmmword_299F2FEDE;
  *v4 = unk_299F2FEEE;
  *&v4[14] = 0x90000000000000;
  v1 = xmmword_299F2FEBE;
  v2 = unk_299F2FECE;
  qword_2A197F4F0 = 0;
  unk_2A197F4F8 = 0;
  qword_2A197F4E8 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F4E8, &v1, &v4[22], 70);
  v3 = xmmword_299F2FF24;
  *v4 = unk_299F2FF34;
  *&v4[14] = 0x90000000000000;
  v1 = xmmword_299F2FF04;
  v2 = unk_299F2FF14;
  qword_2A197F508 = 0;
  unk_2A197F510 = 0;
  qword_2A197F500 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F500, &v1, &v4[22], 70);
  *&v1 = 0x90000000000000;
  qword_2A197F520 = 0;
  unk_2A197F528 = 0;
  qword_2A197F518 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F518, &v1, &v1 + 8, 8);
  *&v1 = 0x900000025E4103;
  qword_2A197F538 = 0;
  unk_2A197F540 = 0;
  qword_2A197F530 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F530, &v1, &v1 + 8, 8);
  *&v1 = 0x900C00025E4103;
  qword_2A197F558 = 0;
  qword_2A197F548 = 0;
  unk_2A197F550 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F548, &v1, &v1 + 8, 8);
  *&v1 = 0xA5A5A5A504BD40FFLL;
  WORD4(v1) = 144;
  qword_2A197F560 = 0;
  qword_2A197F570 = 0;
  qword_2A197F568 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F560, &v1, &v1 + 10, 10);
  *&v1 = 0x5AA5A5A504BD40FFLL;
  WORD4(v1) = 144;
  qword_2A197F578 = 0;
  qword_2A197F588 = 0;
  qword_2A197F580 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F578, &v1, &v1 + 10, 10);
  *&v1 = 0xA5A5A5A5040841FFLL;
  WORD4(v1) = 144;
  qword_2A197F590 = 0;
  qword_2A197F5A0 = 0;
  qword_2A197F598 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F590, &v1, &v1 + 10, 10);
  *&v1 = 0x5AA5A5A5040841FFLL;
  WORD4(v1) = 144;
  qword_2A197F5A8 = 0;
  qword_2A197F5B8 = 0;
  qword_2A197F5B0 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F5A8, &v1, &v1 + 10, 10);
  *&v1 = 0x5A5A5A5A05D04003;
  WORD4(v1) = -28664;
  BYTE10(v1) = 0;
  qword_2A197F5C0 = 0;
  qword_2A197F5D0 = 0;
  qword_2A197F5C8 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F5C0, &v1, &v1 + 11, 11);
  *&v1 = 0x5A5AA5A505D04003;
  WORD4(v1) = -28664;
  BYTE10(v1) = 0;
  qword_2A197F5D8 = 0;
  qword_2A197F5E8 = 0;
  qword_2A197F5E0 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F5D8, &v1, &v1 + 11, 11);
  *&v1 = 0x5AA5A5A505D04003;
  WORD4(v1) = -28664;
  BYTE10(v1) = 0;
  qword_2A197F5F0 = 0;
  qword_2A197F600 = 0;
  qword_2A197F5F8 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F5F0, &v1, &v1 + 11, 11);
  *&v1 = 0xA5A5A5A505D04003;
  WORD4(v1) = -28664;
  BYTE10(v1) = 0;
  qword_2A197F608 = 0;
  qword_2A197F618 = 0;
  qword_2A197F610 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&qword_2A197F608, &v1, &v1 + 11, 11);
  v7 = unk_299F2FFBA;
  v8 = xmmword_299F2FFCA;
  v9 = unk_299F2FFDA;
  v10 = xmmword_299F2FFEA;
  v5 = unk_299F2FF9A;
  v6 = xmmword_299F2FFAA;
  v1 = xmmword_299F2FF4A;
  v2 = unk_299F2FF5A;
  *v4 = unk_299F2FF7A;
  *&v4[16] = xmmword_299F2FF8A;
  v3 = xmmword_299F2FF6A;
  v11 = -57;
  SERestoreInfo::CApdu::CApdu(&v0);
}

uint64_t SEUpdaterUtil::RegisterDebugSignals(SEUpdaterUtil *this)
{
  v1 = 0;
  v3.__sigaction_u.__sa_handler = SEUpdaterUtil::_handleSignals;
  *&v3.sa_mask = 0;
  do
  {
    result = sigaction(dword_299F3049C[v1++], &v3, 0);
  }

  while (v1 != 6);
  return result;
}

void SEUpdaterUtil::parseArgs(uint64_t a1)
{
  v116 = *MEMORY[0x29EDCA608];
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v49, *a1, *(a1 + 8));
  }

  else
  {
    v49 = *a1;
  }

  MEMORY[0x29C2B5E20](&v84);
  LODWORD(v88) = 0x4000;
  std::locale::locale(&v89, &v84);
  LODWORD(v95) = v88;
  std::locale::locale(v96, &v89);
  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v1 = &v49;
  }

  else
  {
    v1 = v49.__r_.__value_.__r.__words[0];
  }

  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v49.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v49.__r_.__value_.__l.__size_;
  }

  v3 = (v1 + size);
  LODWORD(v97) = v95;
  std::locale::locale(&v98, v96);
  LODWORD(v106) = v97;
  std::locale::locale(&v107, &v98);
  v4 = MEMORY[0x29EDC93D0];
  while (size)
  {
    v5 = size;
    v6 = v1->__r_.__value_.__s.__data_[size - 1];
    v7 = std::locale::use_facet(&v107, v4);
    if ((v6 & 0x80) != 0)
    {
      v1 = v3;
      break;
    }

    v3 = (v3 - 1);
    v8 = *(&v7[1].~facet + v6);
    size = v5 - 1;
    if ((v8 & v106) == 0)
    {
      v1 = (v1 + v5);
      break;
    }
  }

  std::locale::~locale(&v107);
  v9 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v49;
  }

  else
  {
    v10 = v49.__r_.__value_.__r.__words[0];
  }

  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v9 = v49.__r_.__value_.__l.__size_;
  }

  std::string::erase(&v49, v1 - v10, v10 + v9 - v1);
  std::locale::~locale(&v98);
  std::locale::~locale(v96);
  LODWORD(v97) = v88;
  std::locale::locale(&v98, &v89);
  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v49;
  }

  else
  {
    v11 = v49.__r_.__value_.__r.__words[0];
  }

  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = SHIBYTE(v49.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v12 = v49.__r_.__value_.__l.__size_;
  }

  LODWORD(v106) = v97;
  std::locale::locale(&v107, &v98);
  if (v12)
  {
    v13 = (v11 + v12);
    v14 = MEMORY[0x29EDC93D0];
    v15 = v11;
    while (1)
    {
      v16 = v15->__r_.__value_.__s.__data_[0];
      v17 = std::locale::use_facet(&v107, v14);
      if ((v16 & 0x80) != 0 || (*(&v17[1].~facet + v16) & v106) == 0)
      {
        break;
      }

      v15 = (v15 + 1);
      if (!--v12)
      {
        v15 = v13;
        break;
      }
    }
  }

  else
  {
    v15 = v11;
  }

  v18 = &v49;
  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v18 = v49.__r_.__value_.__r.__words[0];
  }

  std::string::erase(&v49, v11 - v18, v15 - v11);
  std::locale::~locale(&v107);
  std::locale::~locale(&v98);
  std::locale::~locale(&v89);
  std::locale::~locale(&v84);
  v19 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
  v20 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v19 = v49.__r_.__value_.__l.__size_;
  }

  if (v19)
  {
    v47 = 0uLL;
    v48 = 0;
    MEMORY[0x29C2B5E20](&v70);
    v45 = 0x4000;
    std::locale::locale(&v46, &v70);
    std::locale::locale(&v43 + 1, &v46);
    LODWORD(v106) = 0x4000;
    std::locale::locale(&v107, &v43 + 1);
    v50 = v106;
    std::locale::locale(&v51, &v107);
    LODWORD(v52) = 0;
    std::locale::~locale(&v107);
    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v49;
    }

    else
    {
      v21 = v49.__r_.__value_.__r.__words[0];
    }

    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = SHIBYTE(v49.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v22 = v49.__r_.__value_.__l.__size_;
    }

    LODWORD(v76) = v50;
    std::locale::locale(&v77, &v51);
    LODWORD(v78) = v52;
    LODWORD(v53) = v76;
    std::locale::locale(&v54, &v77);
    v55 = v78;
    LODWORD(v80) = v53;
    std::locale::locale(&v81, &v54);
    LODWORD(end) = v55;
    v59 = 0;
    LODWORD(v84.__locale_) = v80;
    std::locale::locale(&v85, &v81);
    LODWORD(v86) = end;
    LODWORD(v88) = v84.__locale_;
    std::locale::locale(&v89, &v85);
    LODWORD(v90) = v86;
    LODWORD(v97) = v88;
    std::locale::locale(&v98, &v89);
    LODWORD(v99) = v90;
    LODWORD(v106) = v97;
    std::locale::locale(&v107, &v98);
    LODWORD(v108) = v99;
    LODWORD(v60) = v106;
    std::locale::locale(&v61, &v107);
    v62 = v108;
    std::locale::~locale(&v107);
    std::locale::~locale(&v98);
    std::locale::~locale(&v89);
    v59 = &boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::assign_to<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_classifiedF>>(boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_classifiedF>)::stored_vtable;
    std::locale::~locale(&v85);
    std::locale::~locale(&v81);
    std::locale::~locale(&v54);
    v63 = v21;
    v64 = v21;
    v65 = v21;
    v66 = v21 + v22;
    v67 = 0;
    if (v22)
    {
      boost::algorithm::split_iterator<std::__wrap_iter<char *>>::increment(&v59);
    }

    boost::algorithm::split_iterator<std::__wrap_iter<char *>>::split_iterator(&v95, &v59);
    boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::~function2(&v59);
    std::locale::~locale(&v77);
    v53 = 0;
    v56 = 0u;
    v57 = 0u;
    v58 = 1;
    boost::algorithm::split_iterator<std::__wrap_iter<char *>>::split_iterator(&v88, &v53);
    boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::~function2(&v53);
    boost::algorithm::split_iterator<std::__wrap_iter<char *>>::split_iterator(&v84, &v95);
    boost::algorithm::split_iterator<std::__wrap_iter<char *>>::split_iterator(&v80, &v88);
    v69 = 0;
    v68 = 0uLL;
    boost::algorithm::split_iterator<std::__wrap_iter<char *>>::split_iterator(&v106, &v84);
    boost::algorithm::split_iterator<std::__wrap_iter<char *>>::split_iterator(&v97, &v80);
    v73 = &v68;
    v74 = 0;
    while (v106)
    {
      v23 = v114;
      if (!v97)
      {
        goto LABEL_59;
      }

      if ((v114 & 1) != 0 || v105)
      {
        if (v114 == v105)
        {
          goto LABEL_81;
        }

        goto LABEL_62;
      }

      v24 = v110;
      v25 = v111;
      v26 = v111 - v110;
      if (v111 - v110 == v102 - __s2 && !memcmp(v110, __s2, v111 - v110) && v112 == v103 && v113 == v104)
      {
LABEL_81:
        boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::~function2(&v97);
        boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::~function2(&v106);
        boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::~function2(&v80);
        boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::~function2(&v84);
        v36 = v47;
        v47 = v68;
        v68 = v36;
        v37 = v48;
        v48 = v69;
        v69 = v37;
        v106 = &v68;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v106);
        boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::~function2(&v88);
        boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::~function2(&v95);
        std::locale::~locale(&v51);
        std::locale::~locale(&v43 + 1);
        std::locale::~locale(&v46);
        std::locale::~locale(&v70);
        v38 = v47;
        if (v47 != *(&v47 + 1))
        {
          v43 = 0uLL;
          v44 = 0;
          __n = 1;
          __src = 61;
          std::__sort<std::__less<char,char> &,char *>();
          v75 = __n;
          v73 = 0;
          if (__n < 0x11)
          {
            memcpy(&v73, &__src, __n);
            v108 = v75;
            v106 = 0;
            if (v75 < 0x11)
            {
              memcpy(&v106, &v73, v75);
              v78 = v108;
              v76 = 0;
              if (v108 <= 0x10)
              {
                memcpy(&v76, &v106, v108);
                v79 = 1;
                v39 = *(v38 + 23);
                if (v39 < 0)
                {
                  v40 = *v38;
                }

                if (v39 >= 0)
                {
                  v41 = *(v38 + 23);
                }

                else
                {
                  v41 = v38[1];
                }

                v93 = v78;
                *&__dst = 0;
                if (v78 < 0x11)
                {
                  memcpy(&__dst, &v76, v78);
                  v94 = 1;
                  v115.__end_ = v93;
                  v115.__first_ = 0;
                  if (v93 < 0x11)
                  {
                    memcpy(&v115, &__dst, v93);
                    LODWORD(v115.__end_cap_.__value_) = 1;
                    end = v115.__end_;
                    v80 = 0;
                    if (v115.__end_ < 0x11)
                    {
                      memcpy(&v80, &v115, v115.__end_);
                      v83 = 1;
                      v59 = 0;
                      v86 = end;
                      v84.__locale_ = 0;
                      if (end < 0x11)
                      {
                        memcpy(&v84, &v80, end);
                        v87 = 1;
                        v90 = v86;
                        v88 = 0;
                        if (v86 < 0x11)
                        {
                          memcpy(&v88, &v84, v86);
                          v91 = 1;
                          v99 = v90;
                          v97 = 0;
                          if (v90 < 0x11)
                          {
                            memcpy(&v97, &v88, v90);
                            v100 = 1;
                            v108 = v99;
                            v106 = 0;
                            if (v99 < 0x11)
                            {
                              memcpy(&v106, &v97, v99);
                              v109 = 1;
                              operator new();
                            }

                            operator new[]();
                          }

                          operator new[]();
                        }

                        operator new[]();
                      }

                      operator new[]();
                    }

                    operator new[]();
                  }

                  operator new[]();
                }

                operator new[]();
              }

              operator new[]();
            }

            operator new[]();
          }

          operator new[]();
        }

        v106 = &v47;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v106);
        v20 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
        goto LABEL_118;
      }

LABEL_63:
      if (v26 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v26 > 0x16)
      {
        operator new();
      }

      HIBYTE(v93) = v26;
      if (v25 != v24)
      {
        memmove(&__dst, v24, v26);
      }

      *(&__dst + v26) = 0;
      v27 = *(&v68 + 1);
      if (*(&v68 + 1) >= v69)
      {
        v29 = 0xAAAAAAAAAAAAAAABLL * ((*(&v68 + 1) - v68) >> 3);
        v30 = v29 + 1;
        if (v29 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<SEUpdater::PackageInfo>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v69 - v68) >> 3) > v30)
        {
          v30 = 0x5555555555555556 * ((v69 - v68) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v69 - v68) >> 3) >= 0x555555555555555)
        {
          v31 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v31 = v30;
        }

        v115.__end_cap_.__value_ = &v68;
        if (v31)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v68, v31);
        }

        v32 = 8 * ((*(&v68 + 1) - v68) >> 3);
        *v32 = __dst;
        *(v32 + 16) = v93;
        v28 = 24 * v29 + 24;
        v33 = 24 * v29 - (*(&v68 + 1) - v68);
        memcpy((v32 - (*(&v68 + 1) - v68)), v68, *(&v68 + 1) - v68);
        v34 = v68;
        v35 = v69;
        *&v68 = v33;
        *(&v68 + 1) = v28;
        v69 = 0;
        v115.__end_ = v34;
        v115.__end_cap_.__value_ = v35;
        v115.__first_ = v34;
        v115.__begin_ = v34;
        std::__split_buffer<std::string>::~__split_buffer(&v115);
      }

      else
      {
        **(&v68 + 1) = __dst;
        *(v27 + 16) = v93;
        v28 = v27 + 24;
      }

      *(&v68 + 1) = v28;
      boost::algorithm::split_iterator<std::__wrap_iter<char *>>::increment(&v106);
    }

    if (!v97)
    {
      goto LABEL_81;
    }

    v23 = v105;
LABEL_59:
    if (v23)
    {
      goto LABEL_81;
    }

LABEL_62:
    v24 = v110;
    v25 = v111;
    v26 = v111 - v110;
    goto LABEL_63;
  }

LABEL_118:
  if (v20 < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  v42 = *MEMORY[0x29EDCA608];
}

void SEUpdaterUtil::cbPrintLog(SEUpdaterUtil *this, void *a2, SEUpdaterUtil::SELogObj *a3, const char *a4, ...)
{
  va_start(va, a4);
  v5 = a2;
  v6 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v7 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global(v6);
  }

  v8 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  if (v5 > 6)
  {
    v9 = 3;
  }

  else
  {
    v9 = dword_299F30534[v5];
  }

  SEUpdaterUtil::SELogObj::printLogv(v7, v9, 0, 1, 0, a3, va);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

uint64_t SEUpdaterUtil::assertSW(uint64_t this, const SERestoreInfo::RApdu *a2, const char *a3)
{
  v3 = *(*(this + 8) + 8);
  if ((v3 - **(this + 8)) < 2)
  {
    v4 = 43947;
LABEL_5:
    SEUpdaterUtil::SELogToStr(&v7, a2, v4);
    exception = __cxa_allocate_exception(0x48uLL);
    v6 = SERestoreInfo::SEException::SEException(exception, &v7, 8, @"SEUpdaterErrorDomain");
  }

  v4 = *(v3 - 1) | (*(v3 - 2) << 8);
  if (v4 != 36864)
  {
    goto LABEL_5;
  }

  return this;
}

void sub_299F2483C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void *a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t boost::algorithm::split_iterator<std::__wrap_iter<char *>>::split_iterator(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  v4 = *a2;
  if (*a2)
  {
    *a1 = v4;
    if (v4)
    {
      v5 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v5;
    }

    else
    {
      (*v4)(a2 + 8, a1 + 8, 0);
    }
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t boost::algorithm::split_iterator<std::__wrap_iter<char *>>::increment(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*a1)
  {
    result = (*((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8))(a1 + 8, *(a1 + 48), v2);
    v2 = *(a1 + 56);
  }

  else
  {
    v4 = *(a1 + 56);
    result = v4;
  }

  v5 = result == v2 && v4 == v2;
  if (v5 && *(a1 + 40) == v2)
  {
    *(a1 + 64) = 1;
  }

  *(a1 + 32) = *(a1 + 48);
  *(a1 + 40) = result;
  *(a1 + 48) = v4;
  return result;
}

void boost::detail::function::functor_manager<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_classifiedF>>::manage(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    *a2 = *a1;
    std::locale::locale((a2 + 8), (a1 + 8));
    *(a2 + 16) = *(a1 + 16);
    if (a3 != 1)
    {
      return;
    }

    v6 = (a1 + 8);
    goto LABEL_10;
  }

  if (a3 != 3)
  {
    if (a3 != 2)
    {
LABEL_2:
      *(a2 + 8) = 0;
      return;
    }

    v6 = (a2 + 8);
LABEL_10:

    std::locale::~locale(v6);
    return;
  }

  v7 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
  if (v7 == (0x8000000299F304B4 & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v7, (0x8000000299F304B4 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    *a2 = a1;
  }

  else
  {
    *a2 = 0;
  }
}

unsigned __int8 *boost::detail::function::function_obj_invoker2<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_classifiedF>,boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::invoke(std::locale *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = a1 + 1;
  locale = a1->__locale_;
  std::locale::locale(&v16, a1 + 1);
  if (a3 == a2)
  {
    std::locale::~locale(&v16);
  }

  else
  {
    v7 = MEMORY[0x29EDC93D0];
    while (1)
    {
      v8 = *a2;
      v9 = std::locale::use_facet(&v16, v7);
      if ((v8 & 0x80) == 0 && (*(&v9[1].~facet + v8) & locale) != 0)
      {
        break;
      }

      if (++a2 == a3)
      {
        a2 = a3;
        break;
      }
    }

    std::locale::~locale(&v16);
    if (a2 != a3)
    {
      if (!LODWORD(a1[2].__locale_))
      {
        v11 = MEMORY[0x29EDC93D0];
        v12 = a2;
        while (1)
        {
          v13 = *v12;
          v14 = std::locale::use_facet(v6, v11);
          if (v13 < 0 || (*(&v14[1].~facet + v13) & a1->__locale_) == 0)
          {
            break;
          }

          if (++v12 == a3)
          {
            return a2;
          }
        }
      }

      return a2;
    }
  }

  return a3;
}

void (***boost::function2<boost::iterator_range<std::__wrap_iter<char *>>,std::__wrap_iter<char *>,std::__wrap_iter<char *>>::~function2(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
{
  v2 = *a1;
  if (*a1)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 1, a1 + 1, 2);
      }
    }

    *a1 = 0;
  }

  return a1;
}

uint64_t boost::detail::function::functor_manager<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>>::manage(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      v6 = *result;
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    v5 = *a2;
    if (*a2)
    {
      if (v5[2] >= 0x11uLL && *v5)
      {
        MEMORY[0x29C2B5F10](*v5, 0x1000C8077774924);
      }

      result = MEMORY[0x29C2B5F30](v5, 0x1012C405C87E9CELL);
    }

LABEL_16:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != (0x8000000299F304F4 & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, (0x8000000299F304F4 & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_16;
    }
  }

  *a2 = *v4;
  return result;
}

char *boost::detail::function::function_obj_invoker2<boost::algorithm::detail::token_finderF<boost::algorithm::detail::is_any_ofF<char>>,boost::iterator_range<std::__wrap_iter<char const*>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>::invoke(uint64_t a1, char *a2, char *a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v5 = *a1;
  v6 = *(*a1 + 16);
  v12 = v6;
  v11[0] = 0;
  if (v6 >= 0x11)
  {
    operator new[]();
  }

  memcpy(v11, v5, v6);
  v7 = a3;
  v8 = a3;
  if (a2 != a3)
  {
    v7 = a2;
    while (!boost::algorithm::detail::is_any_ofF<char>::operator()<char>(v11, *v7))
    {
      if (++v7 == a3)
      {
        v7 = a3;
        break;
      }
    }

    v8 = v7;
  }

  if (v12 >= 0x11 && v11[0])
  {
    MEMORY[0x29C2B5F10](v11[0], 0x1000C8077774924);
  }

  if (v8 != a3)
  {
    if (!v5[6])
    {
      do
      {
        if (!boost::algorithm::detail::is_any_ofF<char>::operator()<char>(v5, *v7))
        {
          break;
        }

        ++v7;
      }

      while (v7 != a3);
    }

    a3 = v8;
  }

  v9 = *MEMORY[0x29EDCA608];
  return a3;
}

BOOL boost::algorithm::detail::is_any_ofF<char>::operator()<char>(void *a1, int a2)
{
  v2 = a1[2];
  if (v2 >= 0x11)
  {
    a1 = *a1;
    v3 = (a1 + v2);
  }

  else
  {
    v3 = (a1 + v2);
    if (!v2)
    {
      return a1 != v3 && *a1 <= a2;
    }
  }

  do
  {
    v4 = a1 + (v2 >> 1);
    v6 = *v4;
    v5 = v4 + 1;
    v7 = v2 >> 1;
    v2 += ~(v2 >> 1);
    if (v6 < a2)
    {
      a1 = v5;
    }

    else
    {
      v2 = v7;
    }
  }

  while (v2);
  return a1 != v3 && *a1 <= a2;
}

void (***boost::function2<boost::iterator_range<std::__wrap_iter<char const*>>,std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>::~function2(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
{
  v2 = *a1;
  if (*a1)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 1, a1 + 1, 2);
      }
    }

    *a1 = 0;
  }

  return a1;
}

SERestoreInfo::SN100VDeviceInfo *SERestoreInfo::SN100VDeviceInfo::SN100VDeviceInfo(SERestoreInfo::SN100VDeviceInfo *this, const SERestoreInfo::BLOB *a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A2029AE0;
  if (*(v3 + 14) != 100)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

void SERestoreInfo::SN100VDeviceInfo::~SN100VDeviceInfo(SERestoreInfo::SN100VDeviceInfo *this)
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

SERestoreInfo::SN200VDeviceInfo *SERestoreInfo::SN200VDeviceInfo::SN200VDeviceInfo(SERestoreInfo::SN200VDeviceInfo *this, const SERestoreInfo::BLOB *a2)
{
  v3 = SERestoreInfo::P73BaseDeviceInfo::P73BaseDeviceInfo(this, a2);
  *v3 = &unk_2A2029B30;
  if (*(v3 + 14) != 200)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    SERestoreInfo::SEWrongDeviceInfo::SEWrongDeviceInfo(exception);
  }

  return this;
}

void SERestoreInfo::SN200VDeviceInfo::~SN200VDeviceInfo(SERestoreInfo::SN200VDeviceInfo *this)
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

SEUpdater::UpdateControllerBase *SEUpdater::UpdateControllerBase::UpdateControllerBase(SEUpdater::UpdateControllerBase *this)
{
  *this = &unk_2A20283A8;
  *(this + 16) = 0;
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 66) = 0;
  *(this + 9) = 0;
  *(this + 12) = 0;
  *(this + 11) = this + 96;
  *(this + 80) = 0;
  *(this + 13) = 0;
  *(this + 2) = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<__CFDictionary,void>(this + 14, &Mutable);
  *(this + 15) = 0;
  return this;
}

void sub_299F25710(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v3, *v4);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(v2);
  std::optional<AlohaPairingOptions>::~optional(v1);
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void SEUpdater::UpdateControllerBase::start(const void **this, const __CFDictionary *a2, uint64_t a3, const void *a4)
{
  if (a2)
  {
    SEUpdaterUtil::SELogPrintCFType(3, 1, a2, a4);
  }

  *&v9[0].var0 = a2;
  ctu::cf::CFSharedRef<__CFDictionary const>::reset(this + 9, v9);
  SEUpdater::UpdateControllerBase::setDebugOptions(this);
  (*(*this + 2))(this);
  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef(&cf, this + 9);
  getAlohaPairingOptions(&cf, v9);
  std::__optional_storage_base<AlohaPairingOptions,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<AlohaPairingOptions,false>>(this + 2, v9);
  if (v13 == 1)
  {
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v12);
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v11);
    ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef(&v7, this + 9);
  v9[0] = 256;
  AlohaVerificationOptions::print(v9);
  v6 = v9[0];
  *(this + 66) = 1;
  *(this + 32) = v6;
  if (v7)
  {
    CFRelease(v7);
  }
}

void ctu::cf::CFSharedRef<__CFDictionary const>::reset(const void **a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    CFRelease(v4);
  }
}

void SEUpdater::UpdateControllerBase::setDebugOptions(SEUpdater::UpdateControllerBase *this)
{
  *(this + 5) = SEUpdater::UpdateControllerBase::getBooleanOption(this, @"RestoreInternal", 0) | 0x100;
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
  if ((*(this + 11) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if (*(this + 10))
  {
    v5 = "YES";
  }

  else
  {
    v5 = "NO";
  }

  SEUpdaterUtil::SELogObj::printLog(v3, 1, 0, 1, "setDebugOptions", "Internal Restore? %s\n", v5);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  SEUpdater::UpdateControllerBase::getStringfromOption(this, __p);
  SEUpdaterUtil::parseArgs(__p);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *(this + 9);
  if (v6)
  {
    v7 = v6;
    v8 = [v7 objectForKeyedSubscript:@"Options"];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 objectForKeyedSubscript:@"DebugLogPath"];
      v11 = v10;
      if (v10)
      {
        CFRetain(v10);
      }

      v12 = *(this + 15);
      *(this + 15) = v11;
      __p[0] = v12;
      ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(__p);

      if (*(this + 15))
      {
        v13 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
        v14 = off_2A14F2360;
        if (!off_2A14F2360)
        {
          SEUpdaterUtil::SELogObj::create_default_global(v13);
        }

        v15 = *(&off_2A14F2360 + 1);
        if (*(&off_2A14F2360 + 1))
        {
          atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
        SEUpdaterUtil::SELogObj::printLog(v14, 2, 0, 1, "setDebugOptions", "EVENT LOGGING: debugLogPath obtained\n");
      }

      else
      {
        v21 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
        v22 = off_2A14F2360;
        if (!off_2A14F2360)
        {
          SEUpdaterUtil::SELogObj::create_default_global(v21);
        }

        v15 = *(&off_2A14F2360 + 1);
        if (*(&off_2A14F2360 + 1))
        {
          atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
        SEUpdaterUtil::SELogObj::printLog(v22, 2, 0, 1, "setDebugOptions", "EVENT LOGGING: debugLogPath not present\n");
      }
    }

    else
    {
      v19 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
      v20 = off_2A14F2360;
      if (!off_2A14F2360)
      {
        SEUpdaterUtil::SELogObj::create_default_global(v19);
      }

      v15 = *(&off_2A14F2360 + 1);
      if (*(&off_2A14F2360 + 1))
      {
        atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
      SEUpdaterUtil::SELogObj::printLog(v20, 2, 0, 1, "setDebugOptions", "EVENT LOGGING: Options not present\n");
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  else
  {
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
    SEUpdaterUtil::SELogObj::printLog(v17, 2, 0, 1, "setDebugOptions", "EVENT LOGGING: Invalid options parameter\n");
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }
  }
}

void sub_299F25CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);

  _Unwind_Resume(a1);
}

uint64_t SEUpdater::UpdateControllerBase::execCommand(const void **this, const __CFString *a2, const __CFDictionary *a3, const __CFDictionary **a4)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&__p, "Assertion: ");
    v33 = std::string::append(&__p, "command");
    v34 = *&v33->__r_.__value_.__l.__data_;
    v37 = v33->__r_.__value_.__r.__words[2];
    v36 = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x29C2B5B50](exception, &v36);
  }

  v36 = 0uLL;
  v37 = 0;
  ctu::cf::assign();
  memset(&__p, 0, sizeof(__p));
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
  p_p = &__p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  SEUpdaterUtil::SELogObj::printLog(v9, 2, 0, 1, "execCommand", "Start processing command: %s\n", p_p);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (a3)
  {
    SEUpdaterUtil::SELogPrintCFType(2, 1, a3, v12);
    *&v36 = a3;
    ctu::cf::CFSharedRef<__CFDictionary const>::reset(this + 9, &v36);
  }

  if (((*(*this + 3))(this, a2, a4) & 1) == 0)
  {
    v14 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v14 = __p.__r_.__value_.__r.__words[0];
    }

    SEUpdaterUtil::_AddError(2, 1, "execCommand", "Unrecognized command %s", v13, v14);
  }

  if (a4)
  {
    if (CFDictionaryGetCount(this[14]))
    {
      v15 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
      v16 = off_2A14F2360;
      if (!off_2A14F2360)
      {
        SEUpdaterUtil::SELogObj::create_default_global(v15);
      }

      v17 = *(&off_2A14F2360 + 1);
      if (*(&off_2A14F2360 + 1))
      {
        atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
      SEUpdaterUtil::SELogObj::printLog(v16, 2, 0, 1, "execCommand", "Command output:\n");
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      SEUpdaterUtil::SELogPrintCFType(2, 1, this[14], v18);
      v19 = CFRetain(this[14]);
      *a4 = v19;
    }

    else
    {
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
      v19 = SEUpdaterUtil::SELogObj::printLog(v24, 2, 0, 1, "execCommand", "No command output, returning NULL\n");
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      *a4 = 0;
    }
  }

  else
  {
    v20 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    v21 = off_2A14F2360;
    if (!off_2A14F2360)
    {
      SEUpdaterUtil::SELogObj::create_default_global(v20);
    }

    v22 = *(&off_2A14F2360 + 1);
    if (*(&off_2A14F2360 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    v19 = SEUpdaterUtil::SELogObj::printLog(v21, 1, 0, 1, "execCommand", "Caller did not provide an output dictionary\n");
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }
  }

  ErrorCode = SEUpdaterUtil::GetErrorCode(v19);
  v27 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v28 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global(v27);
  }

  v29 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v30 = &__p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v30 = __p.__r_.__value_.__r.__words[0];
  }

  SEUpdaterUtil::SELogObj::printLog(v28, 2, 0, 1, "execCommand", "Finish processing command: %s and returning %d \n", v30, ErrorCode);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return ErrorCode;
}

void sub_299F262F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void SEUpdater::UpdateControllerBase::parseStartOptions(SEUpdater::UpdateControllerBase *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "logLevel");
  v2 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__count_unique<std::string>(this + 88, __p);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[0]);
  }

  if (v2)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "logLevel");
    v35[0] = __p;
    v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 88, __p);
    v4 = std::stoi((v3 + 56), 0, 10);
    if (SHIBYTE(v38) < 0)
    {
      operator delete(__p[0]);
    }

    v5 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    v6 = off_2A14F2360;
    if (!off_2A14F2360)
    {
      SEUpdaterUtil::SELogObj::create_default_global(v5);
    }

    v7 = *(&off_2A14F2360 + 1);
    if (*(&off_2A14F2360 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    SEUpdaterUtil::SELogObj::printLog(v6, 0, 0, 1, "parseStartOptions", "Setting loglevel to %d\n", v4);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

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
    __p[0] = MEMORY[0x29EDCA5F8];
    __p[1] = 3221225472;
    v38 = ___ZN13SEUpdaterUtil8SELogObj11setLogLevelEi_block_invoke;
    v39 = &__block_descriptor_44_e5_v8__0l;
    v40 = v9;
    v41 = v4;
    v35[0] = __p;
    ctu::SharedSynchronizable<SEUpdaterUtil::SELogObj>::execute_wrapped_sync<void({block_pointer} {__strong}&)(void)>(v9, v35);

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  if ((*(this + 11) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if (*(this + 10) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v35, "haltOnCrash");
    v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__count_unique<std::string>(this + 88, v35);
    v12 = v11;
    if (v36 < 0)
    {
      operator delete(v35[0]);
      if (!v12)
      {
        goto LABEL_31;
      }
    }

    else if (!v11)
    {
      goto LABEL_31;
    }

    v13 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    v14 = off_2A14F2360;
    if (!off_2A14F2360)
    {
      SEUpdaterUtil::SELogObj::create_default_global(v13);
    }

    v15 = *(&off_2A14F2360 + 1);
    if (*(&off_2A14F2360 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
    v16 = SEUpdaterUtil::SELogObj::printLog(v14, 0, 0, 1, "parseStartOptions", "Install signal handlers\n");
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    SEUpdaterUtil::RegisterDebugSignals(v16);
  }

LABEL_31:
  *(this + 8) = SEUpdater::UpdateControllerBase::getBooleanOption(this, @"FactoryRFTest", 0);
  std::string::basic_string[abi:ne200100]<0>(v35, "setActivateFTA");
  v17 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__count_unique<std::string>(this + 88, v35);
  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  if (v17)
  {
    *(this + 8) = 1;
  }

  v18 = *(this + 9);
  if (v18)
  {
    Value = CFDictionaryGetValue(v18, @"RestoreOptions");
    if (Value)
    {
      v20 = Value;
      v21 = CFGetTypeID(Value);
      if (v21 != CFDictionaryGetTypeID())
      {
        exception = __cxa_allocate_exception(0x48uLL);
        std::string::basic_string[abi:ne200100]<0>(v35, "RestoreOptions not a dict?");
        v34 = SERestoreInfo::SEException::SEException(exception, v35, 2, @"SEUpdaterErrorDomain");
      }

      v22 = CFDictionaryGetValue(v20, @"CreateFilesystemPartitions");
      if (!v22 || (v23 = v22, v24 = CFGetTypeID(v22), v24 != CFBooleanGetTypeID()))
      {
        v31 = __cxa_allocate_exception(0x48uLL);
        std::string::basic_string[abi:ne200100]<0>(v35, "CreateFilesystemPartitions missing or wrong type");
        v32 = SERestoreInfo::SEException::SEException(v31, v35, 2, @"SEUpdaterErrorDomain");
      }

      *(this + 9) = CFBooleanGetValue(v23) != 0;
    }

    else
    {
      *(this + 9) = 0;
    }

    std::string::basic_string[abi:ne200100]<0>(v35, "setEraseInstall");
    v25 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__count_unique<std::string>(this + 88, v35);
    if (v36 < 0)
    {
      operator delete(v35[0]);
    }

    if (v25)
    {
      *(this + 9) = 1;
    }
  }

  v26 = pthread_mutex_lock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v27 = off_2A14F2360;
  if (!off_2A14F2360)
  {
    SEUpdaterUtil::SELogObj::create_default_global(v26);
  }

  v28 = *(&off_2A14F2360 + 1);
  if (*(&off_2A14F2360 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F2360 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SEUpdaterUtil::SELogObj,SEUpdaterUtil::SELogObj,ctu::PthreadMutexGuardPolicy<SEUpdaterUtil::SELogObj>>::sInstance);
  v29 = "deactivated";
  if (*(this + 8))
  {
    v29 = "activated";
  }

  if (*(this + 9))
  {
    v30 = &unk_299F305FF;
  }

  else
  {
    v30 = "not ";
  }

  SEUpdaterUtil::SELogObj::printLog(v27, 1, 0, 1, "parseStartOptions", "Additional actions: FTA will be %s, MFD will %sbe performed\n", v29, v30);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }
}

BOOL SEUpdater::UpdateControllerBase::getBooleanOption(CFDictionaryRef *this, const __CFString *a2, uint64_t a3)
{
  Value = CFDictionaryGetValue(this[9], @"Options");
  if (Value)
  {
    v6 = Value;
    v7 = CFGetTypeID(Value);
    if (v7 == CFDictionaryGetTypeID())
    {
      v8 = CFDictionaryGetValue(v6, a2);
      if (v8)
      {
        v9 = v8;
        v10 = CFGetTypeID(v8);
        if (v10 == CFBooleanGetTypeID())
        {
          return CFBooleanGetValue(v9) != 0;
        }
      }
    }
  }

  return a3;
}

const void *SEUpdater::UpdateControllerBase::getStringfromOption@<X0>(CFDictionaryRef *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = CFDictionaryGetValue(this[9], @"Options");
  if (result)
  {
    v5 = result;
    TypeID = CFDictionaryGetTypeID();
    result = CFGetTypeID(v5);
    if (TypeID == result)
    {
      ctu::cf::dict_adapter::dict_adapter(v9, v5);
      ctu::cf::map_adapter::getString();
      *a2 = v7;
      a2[2] = v8;
      return MEMORY[0x29C2B5A30](v9);
    }
  }

  return result;
}

void sub_299F26C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C2B5A30](&a18);
  _Unwind_Resume(a1);
}

BOOL SEUpdater::UpdateControllerBase::usesPORSecureElement(SEUpdater::UpdateControllerBase *this, int a2)
{
  v3 = 1;
  v4 = MGGetProductType();
  if (v4 <= 1625491064)
  {
    if (v4 <= 347088859)
    {
      if (v4 == -1)
      {
        return a2 == 56;
      }

      v5 = 248718555;
    }

    else
    {
      if (v4 == 347088860 || v4 == 861924853)
      {
        return a2 == 56;
      }

      v5 = 1260109173;
    }
  }

  else if (v4 > 2443002097)
  {
    if (v4 == 2443002098 || v4 == 4018315120)
    {
      return a2 == 56;
    }

    v5 = 3564012492;
  }

  else
  {
    if (v4 == 1625491065 || v4 == 1747059280)
    {
      return a2 == 56;
    }

    v5 = 2390434178;
  }

  if (v4 == v5)
  {
    return a2 == 56;
  }

  return v3;
}

uint64_t std::optional<AlohaPairingOptions>::~optional(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef((a1 + 24));
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef((a1 + 16));
    ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef((a1 + 8));
  }

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

const void **ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **std::__optional_storage_base<AlohaPairingOptions,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<AlohaPairingOptions,false>>(const void **result, uint64_t a2)
{
  v3 = result;
  if (*(result + 40) == *(a2 + 40))
  {
    if (*(result + 40))
    {
      *result = *a2;
      if (result != a2)
      {
        v4 = result[1];
        result[1] = 0;
        v9 = v4;
        result[1] = *(a2 + 8);
        *(a2 + 8) = 0;
        ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v9);
        v5 = v3[2];
        v3[2] = 0;
        v9 = v5;
        v3[2] = *(a2 + 16);
        *(a2 + 16) = 0;
        ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v9);
        v6 = v3[3];
        v3[3] = 0;
        v9 = v6;
        v3[3] = *(a2 + 24);
        *(a2 + 24) = 0;
        result = ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v9);
      }

      v7 = *(a2 + 32);
      *(v3 + 34) = *(a2 + 34);
      *(v3 + 16) = v7;
    }
  }

  else if (*(result + 40))
  {
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(result + 3);
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(v3 + 2);
    result = ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(v3 + 1);
    *(v3 + 40) = 0;
  }

  else
  {
    *result = *a2;
    result[1] = 0;
    result[1] = *(a2 + 8);
    *(a2 + 8) = 0;
    result[2] = 0;
    result[2] = *(a2 + 16);
    *(a2 + 16) = 0;
    result[3] = 0;
    result[3] = *(a2 + 24);
    *(a2 + 24) = 0;
    v8 = *(a2 + 32);
    *(result + 34) = *(a2 + 34);
    *(result + 16) = v8;
    *(result + 40) = 1;
  }

  return result;
}

uint64_t ___ZN13SEUpdaterUtil8SELogObj11setLogLevelEi_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (v2 >= 6)
  {
    v2 = 5;
LABEL_4:
    *(v1 + 48) = v2;
    return result;
  }

  if ((v2 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  *(v1 + 48) = 0;
  return result;
}

void *ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<__CFDictionary,void>(void *a1, CFTypeRef *a2)
{
  v4 = *a2;
  if (*a2 && (v5 = CFGetTypeID(*a2), v5 == CFDictionaryGetTypeID()))
  {
    *a1 = v4;
  }

  else
  {
    *a1 = 0;
    if (*a2)
    {
      CFRelease(*a2);
    }
  }

  return a1;
}

void _GLOBAL__sub_I_UpdateControllerBase_cpp()
{
  v0 = objc_autoreleasePoolPush();
  qword_2A197F778 = [MEMORY[0x29EDBA070] numberWithInt:1];
  qword_2A197F780 = [MEMORY[0x29EDBA070] numberWithInt:1];
  qword_2A197F788 = [MEMORY[0x29EDBA070] numberWithInt:0];

  objc_autoreleasePoolPop(v0);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2A1C6FE20]();
}

{
  return MEMORY[0x2A1C6FE40]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}