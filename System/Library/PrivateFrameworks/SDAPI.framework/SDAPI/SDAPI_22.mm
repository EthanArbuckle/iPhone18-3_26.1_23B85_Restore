uint64_t TLocaleInfo::toLower(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2 <= 127)
  {
    if (a2 == 73 && (*(a1 + 80) & 1) != 0)
    {
      return 305;
    }

    else
    {
      return __tolower(a2);
    }
  }

  if (!TLocaleInfo::isUpper(a1, a2))
  {
    return v2;
  }

  if (BYTE1(v2) <= 0x1Du)
  {
    if (BYTE1(v2) <= 2u)
    {
      if (BYTE1(v2))
      {
        if (BYTE1(v2) == 1 || v2 <= 0x24F)
        {
          return s_szTableLowercase0100to024F[v2 - 256];
        }
      }

      else if (v2 != 215 && (v2 - 192) <= 0x1E)
      {
        return v2 | 0x20;
      }

      return v2;
    }

    if (BYTE1(v2) - 4 >= 2)
    {
      if (BYTE1(v2) != 3)
      {
        if (BYTE1(v2) == 16 && (v2 - 4256) <= 0x25)
        {
          return (v2 + 7264);
        }

        return v2;
      }

      v4 = v2 - 880;
      if (v2 < 0x370)
      {
        return v2;
      }

      v5 = s_szTableLowercase0370to03FF;
      return v5[v4];
    }

    if ((v2 - 1120) <= 0x21 || (v2 - 1162) <= 0x35)
    {
      return v2 | 1;
    }

    if ((v2 - 1217) > 0xD)
    {
      if ((v2 - 1232) > 0x55)
      {
        if ((v2 & 0x7FFFFFF0) == 0x400)
        {
          return v2 | 0x50;
        }

        if ((v2 - 1040) > 0x1F)
        {
          if (v2 == 1216)
          {
            return 1231;
          }

          if ((v2 - 1329) > 0x25)
          {
            return v2;
          }

          return (v2 + 48);
        }

        return (v2 + 32);
      }

      return v2 | 1;
    }

    return (v2 & 1) + v2;
  }

  if (BYTE1(v2) <= 0x2Bu)
  {
    switch(BYTE1(v2))
    {
      case 0x1Eu:
        if (v2 >> 1 <= 0xF4A || v2 >> 5 >= 0xF5)
        {
          return v2 | 1;
        }

        if (v2 == 7838)
        {
          return 223;
        }

        break;
      case 0x1Fu:
        if (v2 <= 0x1FFC)
        {
          return s_szTableLowercase1F00to1FFC[v2 - 7936];
        }

        break;
      case 0x21u:
        if (v2 == 8498)
        {
          return 8526;
        }

        else if (v2 == 8579)
        {
          return 8580;
        }

        break;
    }
  }

  else
  {
    if (BYTE1(v2) <= 0xA6u)
    {
      if (BYTE1(v2) == 44)
      {
        if ((v2 & 0x7FFFFFE0) == 0x2C60)
        {
          v4 = v2 - 11360;
          v5 = s_szTableLowercase2C60to2C7F;
          return v5[v4];
        }

        if ((v2 - 11392) > 0xE && (v2 - 11499) > 3)
        {
          if ((v2 - 11264) > 0x2E)
          {
            return v2;
          }

          return (v2 + 48);
        }
      }

      else if (BYTE1(v2) != 166 || (v2 - 42560) > 0x2D && (v2 - 42624) > 0x17)
      {
        return v2;
      }

      return v2 | 1;
    }

    if (BYTE1(v2) != 167)
    {
      if (BYTE1(v2) != 255 || (v2 - 65313) > 0x19)
      {
        return v2;
      }

      return (v2 + 32);
    }

    if ((v2 - 42786) <= 0xD || (v2 - 42802) <= 0x3D)
    {
      return (v2 & 1) + v2;
    }

    if ((v2 - 42873) <= 3)
    {
      return v2 | 1;
    }

    if ((v2 - 42878) <= 9)
    {
      return (v2 & 1) + v2;
    }

    if (v2 == 42877)
    {
      return 7545;
    }

    else if (v2 == 42891)
    {
      return 42892;
    }
  }

  return v2;
}

double TLocaleInfo::stringToFloat(int a1, __int32 *a2, BOOL *a3)
{
  v16 = 0.0;
  v5 = wcslen(a2);
  if (v5 >= 0x3FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 5)
  {
    if ((v5 | 1) == 5)
    {
      v7 = 7;
    }

    else
    {
      v7 = (v5 | 1) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(&__p, v7);
  }

  *(&__p.__r_.__value_.__s + 23) = v5;
  if (v5)
  {
    memmove(&__p, a2, 4 * v5);
  }

  __p.__r_.__value_.__s.__data_[v6] = 0;
  std::wistringstream::basic_istringstream[abi:ne200100](v11, &__p, 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  MEMORY[0x26672B000](v11, &v16);
  *a3 = (*(&v13[1].__locale_ + *(v11[0] - 24)) & 7) != 2;
  v8 = v16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(v13);
  std::wistream::~wistream();
  MEMORY[0x26672B170](&v15);
  return v8;
}

void sub_26269AE58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x26672B170](v15 + 120);
  _Unwind_Resume(a1);
}

uint64_t std::wistringstream::basic_istringstream[abi:ne200100](uint64_t a1, const std::wstring *a2, int a3)
{
  *(a1 + 168) = 0;
  *a1 = &unk_28752B040;
  *(a1 + 8) = 0;
  *(a1 + 120) = &unk_28752B068;
  std::ios_base::init((a1 + 120), (a1 + 16));
  *(a1 + 256) = 0;
  *(a1 + 264) = -1;
  std::wstringbuf::basic_stringbuf[abi:ne200100](a1 + 16, a2, a3 | 8);
  return a1;
}

void sub_26269AF6C(_Unwind_Exception *a1)
{
  std::wistream::~wistream();
  MEMORY[0x26672B170](v1);
  _Unwind_Resume(a1);
}

uint64_t std::wistringstream::~wistringstream(uint64_t a1)
{
  MEMORY[0x26672B170](v2 + 120);
  return a1;
}

uint64_t TLocaleInfo::stringToULong(uint64_t a1, uint64_t a2, BOOL *a3, int a4)
{
  for (i = (a2 + 4); ; ++i)
  {
    v7 = *(i - 1);
    {
      operator new();
    }

    if (v7 > 159)
    {
      break;
    }

    v8 = v7 > 0x20 || ((1 << v7) & 0x100002600) == 0;
    if (v8)
    {
      goto LABEL_21;
    }

LABEL_18:
    ;
  }

  if (v7 >= 12288)
  {
    if (v7 != 65279 && v7 != 12288)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v7 == 160 || v7 == 8203)
  {
    goto LABEL_18;
  }

LABEL_21:
  v10 = *(i - 1);
  if (!a4)
  {
    {
      operator new();
    }

    v12 = v10 - 48;
    if (v10 >= 48)
    {
      if (v10 <= 0x39)
      {
        goto LABEL_34;
      }

      if (v10 >= 0x660)
      {
        LODWORD(v12) = TLocaleInfo::getDigitExtended(v12, v10);
        goto LABEL_33;
      }
    }

LABEL_83:
    result = 0;
    *a3 = 1;
    return result;
  }

  {
    operator new();
  }

  LODWORD(v12) = v10 - 48;
  if (v10 < 48)
  {
    goto LABEL_83;
  }

  if (v10 <= 0x39)
  {
    goto LABEL_34;
  }

  if (v10 < 0x41)
  {
    goto LABEL_83;
  }

  if (v10 <= 0x46)
  {
    LODWORD(v12) = v10 - 55;
    goto LABEL_34;
  }

  if (v10 - 97 >= 6)
  {
    goto LABEL_83;
  }

  LODWORD(v12) = v10 - 87;
LABEL_33:
  if (v12 == -1)
  {
    goto LABEL_83;
  }

LABEL_34:
  v13 = v12;
  v14 = *i;
  if (!*i)
  {
    goto LABEL_59;
  }

  if (a4)
  {
    v15 = 16;
  }

  else
  {
    v15 = 10;
  }

  while (2)
  {
    if (a4)
    {
      {
        operator new();
      }

      LODWORD(v17) = v14 - 48;
      if (v14 < 48)
      {
        break;
      }

      if (v14 <= 0x39)
      {
        goto LABEL_53;
      }

      if (v14 < 0x41)
      {
        break;
      }

      if (v14 <= 0x46)
      {
        LODWORD(v17) = v14 - 55;
        goto LABEL_53;
      }

      if (v14 - 97 >= 6)
      {
        break;
      }

      LODWORD(v17) = v14 - 87;
      goto LABEL_52;
    }

    {
      operator new();
    }

    v17 = v14 - 48;
    if (v14 >= 48)
    {
      if (v14 <= 0x39)
      {
LABEL_53:
        v13 = v13 * v15 + v17;
        v18 = i[1];
        ++i;
        v14 = v18;
        if (!v18)
        {
          break;
        }

        continue;
      }

      if (v14 < 0x660)
      {
        break;
      }

      LODWORD(v17) = TLocaleInfo::getDigitExtended(v17, v14);
LABEL_52:
      if (v17 == -1)
      {
        break;
      }

      goto LABEL_53;
    }

    break;
  }

LABEL_59:
  while (2)
  {
    v19 = *i;
    {
      operator new();
    }

    if (v19 <= 159)
    {
      if (v19 > 0x20 || ((1 << v19) & 0x100002600) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_75;
    }

    if (v19 >= 12288)
    {
      if (v19 != 65279 && v19 != 12288)
      {
        goto LABEL_78;
      }

LABEL_75:
      ++i;
      continue;
    }

    break;
  }

  if (v19 == 160 || v19 == 8203)
  {
    goto LABEL_75;
  }

LABEL_78:
  v8 = *i == 0;
  *a3 = *i != 0;
  if (v8)
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

void sub_26269B3E8(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

uint64_t TLocaleInfo::valueToString(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v5 = a2;
  if (a4)
  {
    v6 = 16;
  }

  else
  {
    v6 = 10;
  }

  if (v6 <= a2)
  {
    v7 = 1;
    v8 = a2;
    do
    {
      v8 /= v6;
      v7 *= v6;
    }

    while (v6 <= v8);
    if (v7)
    {
      do
      {
        v9 = (v5 / v7) | 0x30;
        if (v5 / v7 >= 0xA)
        {
          v9 = v5 / v7 + 55;
        }

        v12 = v9;
        TBuffer<wchar_t>::insert(a3, *(a3 + 16), &v12, 1uLL);
        v5 %= v7;
        v7 /= v6;
      }

      while (v7 > 1);
    }
  }

  v10 = v5 | 0x30;
  if (v5 >= 0xA)
  {
    v10 = v5 + 55;
  }

  v13 = v10;
  return TBuffer<wchar_t>::insert(a3, *(a3 + 16), &v13, 1uLL);
}

uint64_t std::wistringstream::~wistringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82870] + 16;
  std::locale::~locale((a1 + 24));

  return std::wistream::~wistream();
}

void virtual thunk tostd::wistringstream::~wistringstream(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  if (SHIBYTE(v1[12].__locale_) < 0)
  {
    operator delete(v1[10].__locale_);
  }

  v1[2].__locale_ = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(v1 + 3);
  std::wistream::~wistream();

  JUMPOUT(0x26672B170);
}

{
  v1 = (a1 + *(*a1 - 24));
  if (SHIBYTE(v1[12].__locale_) < 0)
  {
    operator delete(v1[10].__locale_);
  }

  v1[2].__locale_ = (MEMORY[0x277D82870] + 16);
  std::locale::~locale(v1 + 3);
  std::wistream::~wistream();
  MEMORY[0x26672B170](&v1[15]);

  JUMPOUT(0x26672B1B0);
}

void std::wistringstream::~wistringstream(uint64_t a1)
{
  v2 = a1 + 120;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82870] + 16;
  std::locale::~locale((a1 + 24));
  std::wistream::~wistream();
  MEMORY[0x26672B170](v2);

  JUMPOUT(0x26672B1B0);
}

uint64_t std::wstringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::wstring *a2, int a3)
{
  *a1 = MEMORY[0x277D82870] + 16;
  MEMORY[0x26672B0F0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::wstring::operator=((a1 + 64), a2);
  std::wstringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_26269BA0C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void MrecInitModule_voc_voc(void)
{
  if (!gParDebugVocGetPics)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugVocGetPics", &unk_26288830E, &unk_26288830E, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugVocGetPics = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugVocGetPics);
  }
}

void Voc::Voc(Voc *this, __int16 a2)
{
  SvcCompatData::SvcCompatData((this + 40));
  *(this + 10) = 0;
  *(this + 11) = 0;
  FileSpec::FileSpec((this + 104));
  FileHistory::FileHistory((this + 144));
  PhnMgr::PhnMgr((this + 184));
  *(this + 34) = 0;
  *(this + 35) = 0;
  HashProbeKEV<unsigned int,DgnArray<OpaquePelIdAndDurId>,Voc>::HashProbeKEV(this + 312, 0, 16);
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  MrecTime::MrecTime((this + 416));
  DgnString::DgnString((this + 448));
  DgnString::DgnString((this + 464));
  DgnString::DgnString((this + 488));
  DgnString::DgnString((this + 504));
  DFileProgressInfo::DFileProgressInfo((this + 520));
  *(this + 84) = a2;
  *(this + 66) = 0;
  *(this + 288) = 0;
  *(this + 170) = 0;
  *(this + 31) = 0;
  *(this + 253) = 0;
  *(this + 77) = 0;
  *(this + 300) = 0;
  *(this + 292) = 0;
  *(this + 43) = this;
  *(this + 54) = this;
  *(this + 178) = 0;
  *(this + 15) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 32) = -1;
  *(this + 17) = 0;
  *(this + 110) = 0;
  *(this + 120) = 0;
  *(this + 152) = 0;
}

void sub_26269BBD8(_Unwind_Exception *a1)
{
  DgnString::~DgnString((v1 + 504));
  DgnString::~DgnString((v1 + 488));
  DgnString::~DgnString((v1 + 464));
  DgnString::~DgnString((v1 + 448));
  DgnString::~DgnString((v1 + 416));
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 400);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 384);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 368);
  DgnIArray<Utterance *>::~DgnIArray(v1 + 352);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 328);
  MrecInitModule_sdpres_sdapi();
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 272);
  PhnMgr::~PhnMgr((v1 + 184));
  FileHistory::~FileHistory((v1 + 144));
  FileSpec::~FileSpec((v2 + 24));
  DgnIOwnArray<WordNgramTemplate *>::releaseAll(v2);
  SvcCompatData::SvcCompatData((v1 + 40));
  _Unwind_Resume(a1);
}

void Voc::~Voc(Voc *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 85))
  {
    v17 = *(this + 85);
    v10 = *(this + 84);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 196, "voc/voc", 1, "%.500s %d %.500s %d", a7, a8, "delete voc");
  }

  if (*(this + 86))
  {
    v18 = *(this + 86);
    v11 = *(this + 84);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 200, "voc/voc", 1, "%.500s %d %.500s %d", a7, a8, "delete voc");
  }

  if (*(this + 87))
  {
    v19 = *(this + 87);
    v12 = *(this + 84);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 203, "voc/voc", 1, "%.500s %d %.500s %d", a7, a8, "delete voc");
  }

  if (*(this + 88))
  {
    v20 = *(this + 88);
    v13 = *(this + 84);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 206, "voc/voc", 1, "%.500s %d %.500s %d", a7, a8, "delete voc");
  }

  if (*(this + 62))
  {
    v21 = *(this + 62);
    v14 = *(this + 84);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 210, "voc/voc", 1, "%.500s %d %.500s %d", a7, a8, "delete voc");
  }

  if (*(this + 63))
  {
    v22 = *(this + 63);
    v15 = *(this + 84);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 214, "voc/voc", 1, "%.500s %d %.500s %d", a7, a8, "delete voc");
  }

  if (*(this + 64))
  {
    v23 = *(this + 64);
    v16 = *(this + 84);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 218, "voc/voc", 1, "%.500s %d %.500s %d", a7, a8, "delete voc");
  }

  DgnDelete<RuleMgr>(*(this + 8));
  *(this + 8) = 0;
  DgnDelete<StateMgr>(*(this + 7));
  *(this + 7) = 0;
  DgnDelete<EnvMgr>(*this);
  *this = 0;
  DgnDelete<CharInfo>(*(this + 1));
  *(this + 1) = 0;
  DgnDelete<CollMgr>(*(this + 2));
  *(this + 2) = 0;
  DgnDelete<PronCollMgr>(*(this + 3));
  *(this + 3) = 0;
  DgnDelete<LanguageModel>(*(this + 9));
  *(this + 9) = 0;
  DgnDelete<WordList>(*(this + 6));
  *(this + 6) = 0;
  DgnDelete<CharInfo>(*(this + 4));
  *(this + 4) = 0;
  v9 = *(this + 15);
  if (v9)
  {
    DgnSharedMemSet::unrefDSMEx(v9, *(this + 32));
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 560);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 544);
  DgnArray<DgnString>::releaseAll(this + 528);
  DgnString::~DgnString((this + 504));
  DgnString::~DgnString((this + 488));
  DgnString::~DgnString((this + 464));
  DgnString::~DgnString((this + 448));
  DgnString::~DgnString((this + 416));
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 400);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 384);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 368);
  DgnIArray<Utterance *>::~DgnIArray(this + 352);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 328);
  MrecInitModule_sdpres_sdapi();
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 272);
  PhnMgr::~PhnMgr((this + 184));
  FileHistory::~FileHistory((this + 144));
  FileSpec::~FileSpec((this + 104));
  DgnIOwnArray<WordNgramTemplate *>::releaseAll(this + 80);
  SvcCompatData::SvcCompatData((this + 40));
}

CollMgr *DgnDelete<CollMgr>(CollMgr *result)
{
  if (result)
  {
    CollMgr::~CollMgr(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

PronCollMgr *DgnDelete<PronCollMgr>(PronCollMgr *result)
{
  if (result)
  {
    PronCollMgr::~PronCollMgr(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void (***DgnDelete<LanguageModel>(void (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    (**result)(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

WordList *DgnDelete<WordList>(WordList *result)
{
  if (result)
  {
    WordList::~WordList(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t Voc::computePrefLmScores(Voc *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = 0;
  v35 = 0;
  v9 = *(this + 66);
  if (!v9)
  {
    v20 = *(*(this + 6) + 388);
    v21 = *(this + 71);
    if (v20 <= v21)
    {
      *(this + 70) = v20;
      if (!v20)
      {
LABEL_25:
        v11 = &v34;
        goto LABEL_26;
      }
    }

    else
    {
      DgnPrimArray<short>::reallocElts(this + 272, v20 - v21, 0);
      *(this + 70) = v20;
    }

    v22 = 0;
    do
    {
      v23 = *(this + 6);
      if (v22 < *(v23 + 388) && *(*(v23 + 104) + v22))
      {
        v24 = v35;
        if (v35 == HIDWORD(v35))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v34, 1, 1);
          v24 = v35;
        }

        *(v34 + 4 * v24) = v22;
        LODWORD(v35) = v35 + 1;
      }

      else
      {
        *(*(this + 34) + 2 * v22) = 20000;
      }

      ++v22;
    }

    while (v20 != v22);
    goto LABEL_25;
  }

  CollWords = StateMgr::getCollWords(*(this + 7), v9, 0xFFFFu, 1, a5, a6, a7, a8);
  v11 = CollWords;
  v12 = *(CollWords + 8);
  if (!v12)
  {
    v18 = (this + 272);
    v19 = *(this + 71);
    v17 = 1;
    if (v19)
    {
LABEL_14:
      *(this + 70) = v17;
      goto LABEL_15;
    }

LABEL_13:
    DgnPrimArray<short>::reallocElts(v18, v17 - v19, 0);
    goto LABEL_14;
  }

  v13 = 0;
  v14 = *CollWords;
  do
  {
    v16 = *v14++;
    v15 = v16;
    if (v13 <= v16)
    {
      v13 = v15;
    }

    --v12;
  }

  while (v12);
  v17 = v13 + 1;
  v18 = (this + 272);
  v19 = *(this + 71);
  if (v19 < v13 + 1)
  {
    goto LABEL_13;
  }

  *(this + 70) = v17;
  if (v13 != -1)
  {
LABEL_15:
    memset_pattern16(*v18, &unk_262888330, 2 * v17);
  }

LABEL_26:
  if (*(v11 + 2))
  {
    v33[0] = 0;
    v33[1] = 0;
    (*(**(this + 9) + 520))(*(this + 9), v11, v33);
    v25 = *(v11 + 2);
    if (v25)
    {
      v26 = *v11;
      v27 = v33[0];
      v28 = **(this + 4);
      v29 = *(this + 34);
      do
      {
        v31 = *v26++;
        v30 = v31;
        LOWORD(v31) = *v27++;
        *(v29 + 2 * v30) = v31 + v28;
        --v25;
      }

      while (v25);
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(v33);
  }

  *(this + 260) = 1;
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v34);
}

void sub_26269C2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void *Voc::notifyPrefLmScoresBad(Voc *this)
{
  *(this + 260) = 0;
  result = *(this + 34);
  if (result)
  {
    result = MemChunkFree(result, 0);
    *(this + 34) = 0;
  }

  *(this + 35) = 0;
  return result;
}

uint64_t Voc::getPrefPron(uint64_t this, unsigned int a2, const unsigned __int16 **a3, unsigned int *a4)
{
  *a3 = (*(*(this + 48) + 72) + 2 * *(*(*(this + 48) + 48) + 4 * a2));
  v4 = *(*(*(this + 48) + 32) + 2 * a2);
  *a4 = v4;
  v5 = *(this + 300);
  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = *(this + 300);
  }

  if (v5)
  {
    v4 = v6;
  }

  *a4 = v4;
  return this;
}

uint64_t Voc::computePrefWordIdsSortedByPron(Voc *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CollWords = StateMgr::getCollWords(*(this + 7), *(this + 76), 0xFFFFu, 1, a5, a6, a7, a8);
  v17 = 0;
  v18 = 0;
  v10 = *(CollWords + 8);
  if (v10)
  {
    v11 = CollWords;
    v12 = 0;
    v13 = 0;
    for (i = 0; i < v10; ++i)
    {
      v15 = *(*v11 + 4 * i);
      if (*(*(*(this + 6) + 32) + 2 * v15))
      {
        if (v13 == HIDWORD(v18))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v17, 1, 1);
          v13 = v18;
          v12 = v17;
        }

        *(v12 + 4 * v13) = v15;
        v13 = v18 + 1;
        LODWORD(v18) = v18 + 1;
        v10 = *(v11 + 8);
      }
    }
  }

  PrefiltererWordIdPronCollArray::addArray(this + 104, &v17);
  *(this + 288) = 1;
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v17);
}

void *Voc::notifyPrefWordIdsSortedByPronBad(Voc *this)
{
  *(this + 288) = 0;
  PrefiltererWordIdPronCollArray::removeAll(this + 416);
  PrefiltererWordIdPronCollArray::compact((this + 416));

  return Voc::clearPrefPicModels(this);
}

void *Voc::clearPrefPicModels(Voc *this)
{
  *(this + 78) = 0;
  if (*(this + 84))
  {
    v2 = 0;
    v3 = *(this + 41);
    do
    {
      *(v3 + 4 * v2++) = -1;
    }

    while (v2 < *(this + 84));
  }

  v4 = *(this + 44);
  if (v4)
  {
    MemChunkFree(v4, 0);
    *(this + 44) = 0;
  }

  *(this + 45) = 0;
  v5 = *(this + 46);
  if (v5)
  {
    MemChunkFree(v5, 0);
    *(this + 46) = 0;
  }

  *(this + 47) = 0;
  v6 = *(this + 48);
  if (v6)
  {
    MemChunkFree(v6, 0);
    *(this + 48) = 0;
  }

  *(this + 49) = 0;
  result = *(this + 50);
  if (result)
  {
    result = MemChunkFree(result, 0);
    *(this + 50) = 0;
  }

  *(this + 51) = 0;
  return result;
}

void *Voc::loadPrefLmScores(Voc *this, char **a2, DFileChecksums *a3)
{
  v22 = 0;
  v8 = OpenAndReadMrecHeader(a2, 0x40u, 1, "MRPRLM!?", &v22 + 1, &v22);
  if (HIDWORD(v22) == 17 && v22 == 2)
  {
    MrecHeaderCheckLatestVersionIfShared(a2, "MRPRLM!?", 17, 2, 23, 4, v6, v7);
    v21 = 0;
    v14 = (this + 272);
    readObject<short>(v8, this + 272, &v21);
    v20 = 0;
    readObject(v8, &v20, &v21);
    readObjectChecksumAndVerify(v8, v21);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x40u, v21);
    DgnDelete<DgnStream>(v8);
    *(this + 260) = 0;
    v16 = *(this + 34);
    if (v16)
    {
      MemChunkFree(v16, 0);
      *v14 = 0;
    }

    *(this + 35) = 0;
    goto LABEL_22;
  }

  v10 = HIDWORD(v22) == 23 && v22 == 3;
  v11 = v10;
  if (v10)
  {
    v12 = 23;
    v13 = 3;
  }

  else
  {
    if (*(a2 + 6))
    {
      v17 = a2[2];
    }

    else
    {
      v17 = &unk_26288830E;
    }

    MrecHeaderCheckVersions(v17, "MRPRLM!?", HIDWORD(v22), v22, 0x17u, 4u);
    v13 = v22;
    v12 = HIDWORD(v22);
  }

  MrecHeaderCheckLatestVersionIfShared(a2, "MRPRLM!?", v12, v13, 23, 4, v6, v7);
  v21 = 0;
  readObject(v8, this + 66, &v21);
  v14 = (this + 272);
  readObject<short>(v8, this + 272, &v21);
  v20 = 0;
  readObjectChecksumAndVerify(v8, v21);
  v18 = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, v18, 0x40u, v21);
  result = DgnDelete<DgnStream>(v8);
  *(this + 260) = *(this + 70) != 0;
  if (v11)
  {
LABEL_22:
    *(this + 66) = 0;
    *(this + 260) = 0;
    result = *(this + 34);
    if (result)
    {
      result = MemChunkFree(result, 0);
      *v14 = 0;
    }

    *(this + 35) = 0;
  }

  return result;
}

void (***Voc::savePrefLmScores(Voc *this, DFile *a2, DFileChecksums *a3, int a4))(void)
{
  v7 = OpenAndWriteMrecHeader(a2, 0x40u, a4, "MRPRLM!?", 23, 4);
  v10 = 0;
  writeObject(v7, this + 66, &v10);
  writeObject<short>(v7, this + 272, &v10);
  writeObjectChecksum(v7, &v10);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x40u, v10);
  return DgnDelete<DgnStream>(v7);
}

void *Voc::loadPrefWordIdsSortedByPron(Voc *this, DFile *a2, DFileChecksums *a3)
{
  v21 = 0;
  v8 = OpenAndReadMrecHeader(a2, 0x48u, 1, "MRPRWD!?", &v21 + 1, &v21);
  v9 = v21;
  v10 = v21 == 2 && HIDWORD(v21) == 23;
  v11 = (v21 & 0xFFFFFFFE) == 2 && HIDWORD(v21) == 23;
  if (v11 || v21 == 0x1700000004)
  {
    v12 = 0;
    v13 = 23;
  }

  else
  {
    if (*(a2 + 6))
    {
      v14 = *(a2 + 2);
    }

    else
    {
      v14 = &unk_26288830E;
    }

    MrecHeaderCheckVersions(v14, "MRPRWD!?", HIDWORD(v21), v21, 0x18u, 5u);
    v9 = v21;
    v13 = HIDWORD(v21);
    v12 = 1;
  }

  MrecHeaderCheckLatestVersionIfShared(a2, "MRPRWD!?", v13, v9, 24, 5, v6, v7);
  v20 = 0;
  if (!v10)
  {
    v19 = 0;
    readObject(v8, &v19, &v20);
    v15 = v19 - 1;
    if ((v19 - 2) >= 4)
    {
      v15 = 0;
    }

    *(this + 73) = v15;
  }

  if (v12)
  {
    v19 = 0;
    readObject(v8, &v19, &v20);
    v16 = v19 - 1;
    if ((v19 - 2) >= 3)
    {
      v16 = 0;
    }

    *(this + 74) = v16;
  }

  readObject(v8, this + 75, &v20);
  readObject(v8, this + 76, &v20);
  if (!v10)
  {
    readObject(v8, this + 77, &v20);
    readObject<unsigned int,DgnArray<OpaquePelIdAndDurId>,Voc>(v8, this + 78, &v20);
    readObject<OpaquePelIdAndDurId>(v8, this + 352, &v20);
    readObject<unsigned short>(v8, this + 368, &v20);
    readObject<unsigned int>(v8, this + 384, &v20);
    readObject<unsigned int>(v8, this + 400, &v20);
  }

  PrefiltererWordIdPronCollArray::readObject((this + 416), v8, &v20);
  readObjectChecksumAndVerify(v8, v20);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x48u, v20);
  result = DgnDelete<DgnStream>(v8);
  *(this + 288) = 1;
  if (v11)
  {
    *(this + 76) = 0;
    return Voc::notifyPrefWordIdsSortedByPronBad(this);
  }

  return result;
}

void readObject<unsigned int,DgnArray<OpaquePelIdAndDurId>,Voc>(DgnStream *a1, _DWORD *a2, unsigned int *a3)
{
  readObject(a1, a2, a3);
  readObject(a1, a2 + 1, a3);
  readObject(a1, a2 + 2, a3);

  readObject<unsigned int>(a1, (a2 + 4), a3);
}

uint64_t readObject<OpaquePelIdAndDurId>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v11 = 0;
  result = readObject(a1, &v11, a3);
  v7 = v11;
  v8 = *(a2 + 12);
  if (v11 <= v8)
  {
    *(a2 + 8) = v11;
    if (!v7)
    {
      return result;
    }
  }

  else
  {
    DgnPrimArray<unsigned int>::reallocElts(a2, v11 - v8, 0);
    *(a2 + 8) = v7;
  }

  v9 = 0;
  v10 = 0;
  do
  {
    result = readObject(a1, (*a2 + v9), a3);
    ++v10;
    v9 += 4;
  }

  while (v10 < *(a2 + 8));
  return result;
}

void (***Voc::savePrefWordIdsSortedByPron(Voc *this, DFile *a2, DFileChecksums *a3, int a4))(void)
{
  v7 = OpenAndWriteMrecHeader(a2, 0x48u, a4, "MRPRWD!?", 24, 5);
  v8 = v7;
  v9 = *(this + 73);
  if (v9 < 5)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 0;
  }

  v16 = v10;
  v17 = 0;
  writeObject(v7, &v16, &v17);
  v11 = *(this + 74);
  if (v11 < 4)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 0;
  }

  v15 = v12;
  writeObject(v8, &v15, &v17);
  writeObject(v8, this + 75, &v17);
  writeObject(v8, this + 76, &v17);
  writeObject(v8, this + 77, &v17);
  writeObject<unsigned int,DgnArray<OpaquePelIdAndDurId>,Voc>(v8, this + 78, &v17);
  writeObject<OpaquePelIdAndDurId>(v8, this + 352, &v17);
  writeObject<unsigned short>(v8, this + 368, &v17);
  writeObject<unsigned int>(v8, this + 384, &v17);
  writeObject<unsigned int>(v8, this + 400, &v17);
  PrefiltererWordIdPronCollArray::writeObject((this + 416), v8, &v17);
  writeObjectChecksum(v8, &v17);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x48u, v17);
  return DgnDelete<DgnStream>(v8);
}

uint64_t writeObject<unsigned int,DgnArray<OpaquePelIdAndDurId>,Voc>(uint64_t a1, int *a2, _DWORD *a3)
{
  v9 = *a2;
  writeObject(a1, &v9, a3);
  v8 = a2[1];
  writeObject(a1, &v8, a3);
  v7 = a2[2];
  writeObject(a1, &v7, a3);
  return writeObject<unsigned int>(a1, (a2 + 4), a3);
}

uint64_t writeObject<OpaquePelIdAndDurId>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = writeObject(a1, (*a2 + v7), a3);
      ++v8;
      v7 += 4;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

void Voc::loadAndDiscardReproData(Voc *this, DFile *a2)
{
  DgnTextFileParser::DgnTextFileParser(v3);
  DgnTextFileParser::openDgnTextFileParser(v3, a2, 0x4Cu, 1);
  DgnTextFileParser::verifyMatchingFileType(v3, "ReproData");
  DgnTextFileParser::~DgnTextFileParser(v3);
}

void sub_26269CE64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DgnTextFileParser::~DgnTextFileParser(va);
  _Unwind_Resume(a1);
}

void Voc::loadAndDiscardReproResult(Voc *this, DFile *a2)
{
  DgnTextFileParser::DgnTextFileParser(v6);
  DgnTextFileParser::openDgnTextFileParser(v6, a2, 0x4Du, 1);
  DgnTextFileParser::verifyMatchingFileType(v6, "ResultData");
  FileVersion = DgnTextFile::getFileVersion(v6);
  if (FileVersion != 19 || (HIDWORD(FileVersion) - 5) >= 7)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 692, "voc/voc", 31, "%s", v4, v5, &errStr_voc_voc_E_RSD_PRESENT);
  }

  DgnTextFileParser::~DgnTextFileParser(v6);
}

void sub_26269CF28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DgnTextFileParser::~DgnTextFileParser(va);
  _Unwind_Resume(a1);
}

uint64_t Voc::getVocSvcCompatibility(Voc *this, DFile *a2, DFile *a3)
{
  v3 = a3;
  if (DFile::subFileExists(this, 0x2Fu))
  {
    v8 = DFile::subFileExists(this, 0x51u);
    v11 = v8;
    if (a2)
    {
      v12 = DFile::subFileExists(a2, 0x51u);
      if (v11)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v12 = 0;
      if (v8)
      {
LABEL_4:
        SvcCompatData::SvcCompatData(&v38);
        SvcCompatData::loadSvcCompatData(&v38, this, 0);
        if (v38 != 2)
        {
          if (v38 != 1)
          {
            if (v38)
            {
              if (v3)
              {
                if (*(this + 6))
                {
                  v25 = *(this + 2);
                }

                else
                {
                  v25 = &unk_26288830E;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 837, "voc/voc", 18, "%.500s", v13, v14, v25);
              }

              goto LABEL_80;
            }

            if (a2)
            {
              v15 = 3;
            }

            else
            {
              v15 = 1;
            }

            if (!a2 || !v3)
            {
              goto LABEL_81;
            }

            if (*(this + 6))
            {
              v16 = *(this + 2);
            }

            else
            {
              v16 = &unk_26288830E;
            }

            v29 = "%.500s %.500s";
            v30 = 20;
            v31 = 758;
            if (!*(a2 + 6))
            {
              goto LABEL_79;
            }

            goto LABEL_73;
          }

          if (a2)
          {
            v21 = v12 & v3;
            if (v12)
            {
              v15 = 3;
            }

            else
            {
              v15 = 4;
            }

            if (v21 != 1)
            {
              goto LABEL_81;
            }

            if (*(this + 6))
            {
              v16 = *(this + 2);
            }

            else
            {
              v16 = &unk_26288830E;
            }

            v29 = "%.500s %.500s";
            v30 = 19;
            v31 = 781;
            if (!*(a2 + 6))
            {
              goto LABEL_79;
            }

            goto LABEL_73;
          }

          if (v3)
          {
            v27 = 772;
            if (*(this + 6))
            {
LABEL_60:
              v28 = *(this + 2);
LABEL_64:
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", v27, "voc/voc", 21, "%.500s", v13, v14, v28);
              goto LABEL_65;
            }

LABEL_63:
            v28 = &unk_26288830E;
            goto LABEL_64;
          }

          goto LABEL_65;
        }

        if (!a2)
        {
          if (v3)
          {
            v27 = 795;
            if (*(this + 6))
            {
              goto LABEL_60;
            }

            goto LABEL_63;
          }

LABEL_65:
          v15 = 2;
LABEL_81:
          SvcCompatData::SvcCompatData(&v38);
          return v15;
        }

        if ((v12 & 1) == 0)
        {
          if (!v3)
          {
LABEL_80:
            v15 = 3;
            goto LABEL_81;
          }

          if (*(this + 6))
          {
            v16 = *(this + 2);
          }

          else
          {
            v16 = &unk_26288830E;
          }

          v29 = "%.500s %.500s";
          v30 = 19;
          v31 = 804;
          if (!*(a2 + 6))
          {
LABEL_79:
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", v31, "voc/voc", v30, v29, v13, v14, v16);
            goto LABEL_80;
          }

LABEL_73:
          v32 = *(a2 + 2);
          goto LABEL_79;
        }

        SvcCompatData::SvcCompatData(&v36);
        SvcCompatData::loadSvcCompatData(&v36, a2, 0);
        if (v36 == 3)
        {
          if (v39 == v37)
          {
            v15 = 0;
          }

          else
          {
            v15 = 3;
          }

          if (v39 == v37 || !v3)
          {
            goto LABEL_93;
          }

          if (*(this + 6))
          {
            v24 = *(this + 2);
          }

          else
          {
            v24 = &unk_26288830E;
          }

          if (*(a2 + 6))
          {
            v35 = *(a2 + 2);
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 824, "voc/voc", 17, "%.500s %.500s", v22, v23, v24);
        }

        else if (v3)
        {
          if (*(a2 + 6))
          {
            v33 = *(a2 + 2);
          }

          else
          {
            v33 = &unk_26288830E;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 814, "voc/voc", 18, "%.500s", v22, v23, v33);
        }

        v15 = 3;
LABEL_93:
        SvcCompatData::SvcCompatData(&v36);
        goto LABEL_81;
      }
    }

    v18 = a2 == 0 || (v12 & 1) == 0;
    if (a2 == 0 || (v12 & 1) == 0)
    {
      v15 = 4;
    }

    else
    {
      v15 = 3;
    }

    if (!v18 && v3)
    {
      if (*(this + 6))
      {
        v19 = *(this + 2);
      }

      else
      {
        v19 = &unk_26288830E;
      }

      if (*(a2 + 6))
      {
        v26 = *(a2 + 2);
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 741, "voc/voc", 19, "%.500s %.500s", v9, v10, v19);
      return 3;
    }
  }

  else
  {
    if (a2)
    {
      v15 = 3;
    }

    else
    {
      v15 = 1;
    }

    if (a2 && v3)
    {
      if (*(this + 6))
      {
        v17 = *(this + 2);
      }

      else
      {
        v17 = &unk_26288830E;
      }

      if (*(a2 + 6))
      {
        v20 = *(a2 + 2);
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 715, "voc/voc", 19, "%.500s %.500s", v6, v7, v17);
      return 3;
    }
  }

  return v15;
}

void sub_26269D38C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  SvcCompatData::SvcCompatData(va);
  _Unwind_Resume(a1);
}

void *Voc::loadVoc(Voc *this, DFile *a2, DFile *a3, DgnSharedMemSet *a4, uint64_t a5, uint64_t a6, int a7, char a8, BOOL *a9, DFileChecksums *a10, BOOL *a11)
{
  v105 = 0u;
  v106 = 0u;
  SnapTime::recordTime(&v105, 1, 1, 1, 1);
  EnvHolder::errorIfFileObviouslyIsNotOfTypeVoc(a2, v19);
  *(this + 6) = 0;
  if (a8)
  {
    if (a3)
    {
      if (*(a3 + 6))
      {
        v23 = *(a3 + 2);
      }

      else
      {
        v23 = &unk_26288830E;
      }

      if (*(a2 + 6))
      {
        v26 = *(a2 + 2);
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 866, "voc/voc", 22, "%.500s %.500s", v21, v22, v23);
      *(this + 12) = a6;
      v24 = (this + 96);
      goto LABEL_18;
    }

    *(this + 12) = a6;
    v24 = (this + 96);
    if (a6)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  Voc::getVocSvcCompatibility(a2, a3, 1);
  *(this + 12) = a6;
  v24 = (this + 96);
  if (!a3 && a6)
  {
LABEL_10:
    if (*(a2 + 6))
    {
      v25 = *(a2 + 2);
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 872, "voc/voc", 28, "%lld %.500s", v21, v22, a6);
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    v97 = 1;
    goto LABEL_25;
  }

LABEL_18:
  if (a6 <= -2)
  {
    if (*(a2 + 6))
    {
      v27 = *(a2 + 2);
    }

    if (*(a3 + 6))
    {
      v28 = *(a3 + 2);
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 877, "voc/voc", 27, "%lld %.500s %.500s", v21, v22, a6);
  }

  v97 = 0;
LABEL_25:
  if (a7)
  {
    *v24 = 0;
  }

  WordListInTextFormat = WordList::willLoadWordListInTextFormat(a2, v20);
  if (WordListInTextFormat && *(this + 32) != -1 && *(DgnSharedMemSet::getSetCacheDir(*(this + 15)) + 8) <= 1u)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 884, "voc/voc", 32, "%s", v30, v31, &errStr_voc_voc_E_VOC_UNSHARABLE);
  }

  v32 = MemChunkAlloc(0x110uLL, 0);
  v33 = EnvMgr::EnvMgr(v32, 2u);
  *this = v33;
  EnvMgr::loadEnvMgr(v33, a2, a10);
  v34 = MemChunkAlloc(4uLL, 0);
  CharInfo::CharInfo(v34);
  *(this + 1) = v35;
  CharInfo::loadCharInfo(v35, a2, a10, WordListInTextFormat);
  v36 = MemChunkAlloc(0x148uLL, 0);
  v37 = CollMgr::CollMgr(v36, *(this + 1));
  *(this + 2) = v37;
  CollMgr::loadCollMgr(v37, a2, a10, WordListInTextFormat);
  PhnMgr::loadPhnMgr((this + 184), a2, a10, WordListInTextFormat);
  v38 = MemChunkAlloc(0x18uLL, 0);
  v39 = TRegExp::TRegExp(v38, this + 184);
  *(this + 3) = v39;
  PronCollMgr::loadPronCollMgr(v39, a2, a10, WordListInTextFormat);
  v40 = MemChunkAlloc(0x10uLL, 0);
  DgnString::DgnString(v40);
  *(this + 4) = v41;
  VocCompatData::loadVocCompatData(v41, a2, a10, WordListInTextFormat);
  v42 = MemChunkAlloc(0x290uLL, 0);
  v43 = WordList::WordList(v42, *(this + 2), *(this + 3), (this + 184));
  *(this + 6) = v43;
  WordList::loadWordList(v43, a2, a10);
  v103 = 0;
  v104 = 0;
  v98[0] = 0;
  HIDWORD(v104) = realloc_array(0, v98, 8uLL, 0, 0, 1) >> 3;
  v103 = v98[0];
  if (v104 <= 1)
  {
    if (!v104)
    {
      *v98[0] = 0;
    }
  }

  else if (v104 >= 2)
  {
    v44 = v104 - 1;
    do
    {
      DgnDelete<DgnStream>(v103[v44]);
      v103[v44] = 0;
      v45 = v44-- + 1;
    }

    while (v45 > 2);
  }

  LODWORD(v104) = 1;
  if (a4)
  {
    v46 = MemChunkAlloc(0x50uLL, 0);
    v47 = DgnSharedMemStream::DgnSharedMemStream(v46, a4, a5, 0);
    *v103 = v47;
  }

  v102 = 0;
  v48 = *v103;
  if (*(this + 32) == -1)
  {
    v49 = 0;
  }

  else
  {
    v49 = (*(DgnSharedMemSet::getSetCacheDir(*(this + 15)) + 8) < 2u);
  }

  HIBYTE(v96) = a8;
  LOBYTE(v96) = a7;
  v50 = LanguageModel::CreateAndLoadLanguageModel(a2, a3, a10, v48, v49, WordListInTextFormat, 1, 0, *(*(this + 4) + 4), v94, *(this + 6), 0, 0xFFFFFFu, 0xFFFFFFu, v96, a9, &v102, 0);
  *(this + 9) = v50;
  if (a4)
  {
    v51 = 0;
  }

  else
  {
    v51 = (*(*v50 + 32))(v50);
    v50 = *(this + 9);
  }

  v100 = 0;
  v101 = 0;
  (*(*v50 + 152))(v50, &v101, &v100);
  v58 = 0;
  do
  {
    LODWORD(v98[0]) = 4;
    HIDWORD(v98[0]) = v58;
    DFile::pushCurrentSubDirComponent(a2, v98, v52, v53, v54, v55, v56, v57);
    if ((DFile::subFileExists(a2, 0x76u) & 1) != 0 || DFile::subFileExists(a2, 0x75u))
    {
      v59 = MemChunkAlloc(0xB0uLL, 0);
      WordNgramTemplate::WordNgramTemplate(v59, *(this + 6), v101, v100);
      v60 = *(this + 22);
      if (v60 == *(this + 23))
      {
        DgnPrimArray<unsigned long long>::reallocElts(this + 80, 1, 1);
        v60 = *(this + 22);
      }

      *(*(this + 10) + 8 * v60) = v59;
      *(this + 22) = v60 + 1;
      WordNgramTemplate::loadWordNgramTemplate(*(*(this + 10) + 8 * v58), a2, a10, WordListInTextFormat);
      v61 = 1;
    }

    else
    {
      v61 = 0;
    }

    DFile::popCurrentSubDirComponent(a2);
    ++v58;
  }

  while ((v61 & 1) != 0);
  LOBYTE(v95) = *a9;
  v93[4] = *(this + 22) != 0;
  *v93 = 0xFFFFFF;
  (*(**(this + 9) + 48))(*(this + 9), *(this + 9), a2, a10, *v103, WordListInTextFormat, 0, 0xFFFFFFLL, *v93, this + 80, v95, v51, *(this + 12));
  if (WordListInTextFormat)
  {
    if (*(a2 + 6))
    {
      v62 = *(a2 + 2);
    }

    else
    {
      v62 = &unk_26288830E;
    }

    (*(**(this + 9) + 216))(*(this + 9), 1, v62);
  }

  if (((v97 | a7) & 1) == 0 && !v102 && (a8 & 1) == 0 && !*a9)
  {
    FileSpec::operator=((this + 104), (a3 + 16));
  }

  if (v104 >= 1)
  {
    v63 = 8 * v104 - 8;
    do
    {
      DgnDelete<DgnStream>(*(v103 + v63));
      *(v103 + v63) = 0;
      v63 -= 8;
    }

    while (v63 != -8);
  }

  LODWORD(v104) = 0;
  if (v102 || *a9 || (a8 & 1) != 0)
  {
    if (!DFile::subFileExists(a2, 0x51u))
    {
      goto LABEL_71;
    }

    SvcCompatData::SvcCompatData(v98);
    SvcCompatData::loadSvcCompatData(v98, a2, a10);
    goto LABEL_70;
  }

  if (!DFile::subFileExists(a2, 0x51u))
  {
    if (v97)
    {
      goto LABEL_71;
    }

    if ((DFile::subFileExists(a3, 0x51u) & 1) == 0)
    {
      *(this + 10) = 1;
      goto LABEL_71;
    }

    if (*(a2 + 6))
    {
      v85 = *(a2 + 2);
    }

    else
    {
      v85 = &unk_26288830E;
    }

    v89 = 1061;
    if (!*(a3 + 6))
    {
      goto LABEL_118;
    }

    goto LABEL_115;
  }

  SvcCompatData::loadSvcCompatData((this + 40), a2, a10);
  if ((v97 & 1) == 0)
  {
    if (DFile::subFileExists(a3, 0x51u))
    {
      SvcCompatData::SvcCompatData(v98);
      SvcCompatData::loadSvcCompatData(v98, a3, 0);
      if (LODWORD(v98[0]) != 3)
      {
        if (*(a3 + 6))
        {
          v88 = *(a3 + 2);
        }

        else
        {
          v88 = &unk_26288830E;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1028, "voc/voc", 18, "%.500s", v86, v87, v88);
      }

      if (HIDWORD(v98[0]) != *(this + 11))
      {
        if (*(a2 + 6))
        {
          v91 = *(a2 + 2);
        }

        else
        {
          v91 = &unk_26288830E;
        }

        if (*(a3 + 6))
        {
          v92 = *(a3 + 2);
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1032, "voc/voc", 17, "%.500s %.500s", v86, v87, v91);
      }

LABEL_70:
      SvcCompatData::SvcCompatData(v98);
      goto LABEL_71;
    }

    if (*(this + 10) == 1)
    {
      goto LABEL_71;
    }

    if (*(a2 + 6))
    {
      v85 = *(a2 + 2);
    }

    else
    {
      v85 = &unk_26288830E;
    }

    v89 = 1039;
    if (!*(a3 + 6))
    {
LABEL_118:
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", v89, "voc/voc", 19, "%.500s %.500s", v83, v84, v85);
      goto LABEL_71;
    }

LABEL_115:
    v90 = *(a3 + 2);
    goto LABEL_118;
  }

  if (*(this + 10))
  {
    if (*(a2 + 6))
    {
      v82 = *(a2 + 2);
    }

    else
    {
      v82 = &unk_26288830E;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1046, "voc/voc", 21, "%.500s", v80, v81, v82);
  }

LABEL_71:
  v64 = MemChunkAlloc(0x300uLL, 0);
  *(this + 7) = StateMgr::StateMgr(v64, this);
  if (DFile::subFileExists(a2, 0x59u))
  {
    StateMgr::loadStateMgr(*(this + 7), a2, a10, WordListInTextFormat, *(this + 84));
  }

  v65 = MemChunkAlloc(0x58uLL, 0);
  *(this + 8) = RuleMgr::RuleMgr(v65, this);
  if (DFile::subFileExists(a2, 0x4Eu))
  {
    v73 = *(this + 7);
    if (!*(v73 + 181))
    {
      StateMgr::makeSpecialEouStateId(v73, v66, v67, v68, v69, v70, v71, v72);
    }

    RuleMgr::loadRuleMgr(*(this + 8), a2, a10, WordListInTextFormat, a11, *(this + 84));
  }

  if (DFile::subFileExists(a2, 0x40u))
  {
    if (WordListInTextFormat)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1103, "voc/voc", 16, "%s", v74, v75, &errStr_voc_voc_E_LOADING_MIXED_TEXT_AND_BINARY_SUBFILES);
    }

    Voc::loadPrefLmScores(this, a2, a10);
  }

  if (DFile::subFileExists(a2, 0x48u))
  {
    if (WordListInTextFormat)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1110, "voc/voc", 16, "%s", v76, v77, &errStr_voc_voc_E_LOADING_MIXED_TEXT_AND_BINARY_SUBFILES);
    }

    Voc::loadPrefWordIdsSortedByPron(this, a2, a10);
  }

  if ((WordListInTextFormat & 1) == 0)
  {
    *(this + 152) = 0;
    SubFileExtensionString = GetSubFileExtensionString(0x2Fu);
    *(this + 152) ^= DFileChecksums::getChecksum(a10, SubFileExtensionString);
  }

  FileHistory::loadFileHistory((this + 144), a2, WordListInTextFormat);
  *v98 = 0u;
  v99 = 0u;
  SnapTime::recordTime(v98, 1, 1, 1, 1);
  *v98 = vsubq_s64(*v98, v105);
  v99 = vsubq_s64(v99, v106);
  FileHistory::addEntryWithElapsedTime((this + 144), " loadVoc time: ", v98);
  if (*a9)
  {
    FileHistory::addEntry((this + 144), " Lobotomized one or more LMs without matching static components");
  }

  if (v102)
  {
    FileHistory::addEntry((this + 144), " Reabsorbed one or more static LM components into dynamic LM");
  }

  *(this + 178) = WordListInTextFormat;
  return DgnIOwnArray<DgnSharedMemStream *>::releaseAll(&v103);
}

void Voc::saveVocShared(Voc *this, DgnSharedMemSet *a2, uint64_t a3, const FileSpec *a4, uint64_t a5)
{
  DgnSharedMemStream::DgnSharedMemStream(v32, a2, a3);
  DgnSharedMemStream::openDSM(v32, 0, -1, v9, v10, v11, v12, v13);
  (*(**(this + 9) + 80))(*(this + 9), v32, a5);
  v21 = DgnSharedMemStream::tell(v32, v14, v15, v16, v17, v18, v19, v20);
  DgnSharedMemStream::closeDSM(v32);
  DgnSharedMemStream::openDSM(v32, 1, v21, v22, v23, v24, v25, v26);
  (*(**(this + 9) + 80))(*(this + 9), v32, a5);
  DgnSharedMemStream::closeDSM(v32);
  if (DgnSharedMemSet::createMaybeRemapDSMEx(a2, a3, 0))
  {
    DgnSharedMemStream::openDSM(v32, 3, -1, v27, v28, v29, v30, v31);
    (*(**(this + 9) + 88))(*(this + 9), v32, a5);
    DgnSharedMemStream::closeDSM(v32);
  }

  DgnSharedMemStream::~DgnSharedMemStream(v32);
}

void Voc::writeVocGroupInfo(uint64_t a1, VocGroupInfo *a2, uint64_t a3)
{
  DFileOwner::DFileOwner(v7);
  v5 = DFile::openDFile(a3, 2, 2, v7);
  VocGroupInfo::saveVocGroupInfo(a2, v5);
  DFileOwner::setRemoveFileOnDestruction(v7, 0);
  DFileOwner::~DFileOwner(v7, v6);
}

uint64_t Voc::shouldSaveSubFilesInTextFormat(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 != 2)
    {
      if (a2 == 1 && ((*(**(a1 + 72) + 64))(*(a1 + 72)) & 1) == 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1207, "voc/voc", 23, "%s", v2, v3, &errStr_voc_voc_E_LM_SAVE_TEXT);
      }

      return 1;
    }

    return 0;
  }

  if (*(a1 + 178) != 1 || *(*a1 + 264) != 1)
  {
    return 0;
  }

  v5 = *(**(a1 + 72) + 64);

  return v5();
}

void Voc::saveVoc(uint64_t a1, uint64_t a2, char **a3, _DWORD *a4, DFileChecksums *a5, uint64_t a6, DFileChecksums *a7, unsigned int a8, unsigned int a9)
{
  v53 = *MEMORY[0x277D85DE8];
  v49 = 0u;
  v50 = 0u;
  SnapTime::recordTime(&v49, 1, 1, 1, 1);
  DFileOwner::DFileOwner(v48);
  DFileOwner::DFileOwner(v47);
  *a4 = 1;
  v17 = DFile::openDFile(a2, 1, 2, v48);
  if (FileSpec::isValid(a3))
  {
    if (a6)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1260, "voc/voc", 26, "%s", v18, v19, &errStr_voc_voc_E_NO_TEXT_SVC);
    }

    v20 = DFile::openDFile(a3, 1, 9, v47);
  }

  else
  {
    v20 = 0;
  }

  (*(*v17 + 96))(v17, a1 + 520);
  *a4 = 2;
  DFileProgressInfo::resetReportedInfo((a1 + 520));
  EnvMgr::saveEnvMgr(*a1, v17, a5, a6, a7);
  CharInfo::saveCharInfo(*(a1 + 8), v17, a5, a6, a7);
  CollMgr::saveCollMgr(*(a1 + 16), v17, a5, a6, a7);
  PhnMgr::savePhnMgr((a1 + 184), v17, a5, a6, a7);
  PronCollMgr::savePronCollMgr(*(a1 + 24), v17, a5, a6, a7);
  VocCompatData::saveVocCompatData(*(a1 + 32), v17, a5, a6, a7);
  WordList::saveWordList(*(a1 + 48), v17, a5, a6, a7);
  SvcCompatData::SvcCompatData(v46, (a1 + 40));
  if (v20)
  {
    DFileChecksums::DFileChecksums(__str);
    v21 = *(a1 + 72);
    v22 = (*(*v21 + 40))(v21);
    (*(*v21 + 96))(v21, v17, v20, a5, __str, a7, v22, *(*(a1 + 32) + 8), __PAIR64__(a9, a8));
    v46[0] = 2;
    v46[1] = v52.i32[0];
    SvcCompatData::SvcCompatData(&v44, 3, v52.i32[0]);
    SvcCompatData::saveSvcCompatData(&v44, v20, 0);
    SvcCompatData::SvcCompatData(&v44);
    DFileChecksums::~DFileChecksums(__str);
  }

  else
  {
    (*(**(a1 + 72) + 72))(*(a1 + 72), v17, a5, a6, a7);
  }

  if (*(a1 + 88))
  {
    v29 = 0;
    do
    {
      *__str = 4;
      *&__str[4] = v29;
      DFile::pushCurrentSubDirComponent(v17, __str, v23, v24, v25, v26, v27, v28);
      WordNgramTemplate::saveWordNgramTemplate(*(*(a1 + 80) + 8 * v29), v17, a5, a6, a7);
      DFile::popCurrentSubDirComponent(v17);
      ++v29;
    }

    while (v29 < *(a1 + 88));
  }

  if ((a6 & 1) == 0)
  {
    SvcCompatData::saveSvcCompatData(v46, v17, a5);
    StateMgr::saveStateMgr(*(a1 + 56), v17, a5, 0, a7, v30, v31, v32);
    RuleMgr::saveRuleMgr(*(a1 + 64), v17, a5, 0, a7, v33, v34, v35);
    if (*(a1 + 260) == 1)
    {
      Voc::savePrefLmScores(a1, v17, a5, a7);
    }

    if (*(a1 + 288) == 1)
    {
      Voc::savePrefWordIdsSortedByPron(a1, v17, a5, a7);
    }
  }

  v36 = *(a1 + 480);
  if (*(a1 + 440) | v36)
  {
    snprintf(__str, 0x64uLL, " %u words added, %u words deleted since last save", *(a1 + 440), v36);
    FileHistory::addEntry((a1 + 144), __str);
    if (*(a1 + 440))
    {
      DgnString::DgnString(&v44, " First added word: ");
      DgnString::operator+=(&v44, a1 + 448);
      if (v45)
      {
        v37 = v44;
      }

      else
      {
        v37 = &unk_26288830E;
      }

      FileHistory::addEntry((a1 + 144), v37);
      DgnString::operator=(&v44, " Last added word: ");
      DgnString::operator+=(&v44, a1 + 464);
      if (v45)
      {
        v38 = v44;
      }

      else
      {
        v38 = &unk_26288830E;
      }

      FileHistory::addEntry((a1 + 144), v38);
      DgnString::~DgnString(&v44);
    }

    if (*(a1 + 480))
    {
      DgnString::DgnString(&v44, " First deleted word: ");
      DgnString::operator+=(&v44, a1 + 488);
      if (v45)
      {
        v39 = v44;
      }

      else
      {
        v39 = &unk_26288830E;
      }

      FileHistory::addEntry((a1 + 144), v39);
      DgnString::operator=(&v44, " Last deleted word: ");
      DgnString::operator+=(&v44, a1 + 504);
      if (v45)
      {
        v40 = v44;
      }

      else
      {
        v40 = &unk_26288830E;
      }

      FileHistory::addEntry((a1 + 144), v40);
      DgnString::~DgnString(&v44);
    }
  }

  *(a1 + 440) = 0;
  *(a1 + 480) = 0;
  *(a1 + 456) = 0;
  *(a1 + 472) = 0;
  *(a1 + 496) = 0;
  *(a1 + 512) = 0;
  if (v20)
  {
    FileHistory::addEntry((a1 + 144), " Saved voc as static and dynamic parts");
  }

  *__str = 0u;
  v52 = 0u;
  SnapTime::recordTime(__str, 1, 1, 1, 1);
  *__str = vsubq_s64(*__str, v49);
  v52 = vsubq_s64(v52, v50);
  FileHistory::addEntryWithElapsedTime((a1 + 144), " saveVoc time: ", __str);
  FileHistory::saveFileHistory((a1 + 144), v17, a6);
  DFileOwner::setRemoveFileOnDestruction(v48, 0);
  DFileOwner::setRemoveFileOnDestruction(v47, 0);
  *a4 = 0;
  SvcCompatData::SvcCompatData(v46);
  DFileOwner::~DFileOwner(v47, v41);
  DFileOwner::~DFileOwner(v48, v42);
  v43 = *MEMORY[0x277D85DE8];
}

void sub_26269E824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va2, a6);
  va_start(va1, a6);
  va_start(va, a6);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  SvcCompatData::SvcCompatData(va);
  DFileOwner::~DFileOwner(va1, v7);
  DFileOwner::~DFileOwner(va2, v8);
  _Unwind_Resume(a1);
}

void Voc::printSize(Voc *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1445, &v377);
  if (v378)
  {
    v16 = v377;
  }

  else
  {
    v16 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26288830E, a3, &unk_26288830E, v16);
  DgnString::~DgnString(&v377);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26288830E);
  v21 = *this;
  if (*this)
  {
    v376 = 0;
    v377 = 0;
    v22 = (a3 + 1);
    v375 = 0;
    EnvMgr::printSize(v21, 0xFFFFFFFFLL, v22, &v377, &v376, &v375);
    *a4 += v377;
    *a5 += v376;
    *a6 += v375;
  }

  else
  {
    v22 = (a3 + 1);
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v23 = 4;
  }

  else
  {
    v23 = 8;
  }

  v24 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1446, &v377);
  if (v378)
  {
    v29 = v377;
  }

  else
  {
    v29 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, v26, v27, v28, v22, &unk_26288830E, (34 - a3), (34 - a3), v29, v23, v23, 0);
  DgnString::~DgnString(&v377);
  *a4 += v23;
  *a5 += v23;
  v30 = *(this + 1);
  if (v30)
  {
    v376 = 0;
    v377 = 0;
    v375 = 0;
    CharInfo::printSize(v30, 0xFFFFFFFFLL, v22, &v377, &v376, &v375);
    *a4 += v377;
    *a5 += v376;
    *a6 += v375;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v31 = 4;
  }

  else
  {
    v31 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1448, &v377);
  if (v378)
  {
    v36 = v377;
  }

  else
  {
    v36 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, v33, v34, v35, v22, &unk_26288830E, (34 - a3), (34 - a3), v36, v31, v31, 0);
  DgnString::~DgnString(&v377);
  *a4 += v31;
  *a5 += v31;
  v37 = *(this + 2);
  if (v37)
  {
    v376 = 0;
    v377 = 0;
    v375 = 0;
    CollMgr::printSize(v37, 0xFFFFFFFFLL, v22, &v377, &v376, &v375);
    *a4 += v377;
    *a5 += v376;
    *a6 += v375;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v38 = 4;
  }

  else
  {
    v38 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1449, &v377);
  if (v378)
  {
    v43 = v377;
  }

  else
  {
    v43 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v39, v40, v41, v42, v22, &unk_26288830E, (34 - a3), (34 - a3), v43, v38, v38, 0);
  DgnString::~DgnString(&v377);
  *a4 += v38;
  *a5 += v38;
  v44 = *(this + 3);
  if (v44)
  {
    v376 = 0;
    v377 = 0;
    v375 = 0;
    PronCollMgr::printSize(v44, 0xFFFFFFFFLL, v22, &v377, &v376, &v375);
    *a4 += v377;
    *a5 += v376;
    *a6 += v375;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v45 = 4;
  }

  else
  {
    v45 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1451, &v377);
  if (v378)
  {
    v50 = v377;
  }

  else
  {
    v50 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v46, v47, v48, v49, v22, &unk_26288830E, (34 - a3), (34 - a3), v50, v45, v45, 0);
  DgnString::~DgnString(&v377);
  *a4 += v45;
  *a5 += v45;
  v51 = *(this + 4);
  if (v51)
  {
    v376 = 0;
    v377 = 0;
    v375 = 0;
    VocCompatData::printSize(v51, 0xFFFFFFFFLL, v22, &v377, &v376, &v375);
    *a4 += v377;
    *a5 += v376;
    *a6 += v375;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v52 = 4;
  }

  else
  {
    v52 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1453, &v377);
  if (v378)
  {
    v57 = v377;
  }

  else
  {
    v57 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, v54, v55, v56, v22, &unk_26288830E, (34 - a3), (34 - a3), v57, v52, v52, 0);
  DgnString::~DgnString(&v377);
  *a4 += v52;
  *a5 += v52;
  v58 = *(this + 6);
  if (v58)
  {
    v376 = 0;
    v377 = 0;
    v375 = 0;
    WordList::printSize(v58, 0xFFFFFFFFLL, v22, &v377, &v376, &v375);
    *a4 += v377;
    *a5 += v376;
    *a6 += v375;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v59 = 4;
  }

  else
  {
    v59 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1455, &v377);
  if (v378)
  {
    v64 = v377;
  }

  else
  {
    v64 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v60, v61, v62, v63, v22, &unk_26288830E, (34 - a3), (34 - a3), v64, v59, v59, 0);
  DgnString::~DgnString(&v377);
  *a4 += v59;
  *a5 += v59;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1457, &v377);
  if (v378)
  {
    v69 = v377;
  }

  else
  {
    v69 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v65, v66, v67, v68, v22, &unk_26288830E, v22, &unk_26288830E, v69);
  v373 = a6;
  v374 = a3;
  DgnString::~DgnString(&v377);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v70, v71, v72, v73, v22, &unk_26288830E);
  v74 = *(this + 22);
  if (v74)
  {
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    do
    {
      v79 = *(this + 10);
      if (*(v79 + 8 * v75))
      {
        v376 = 0;
        v377 = 0;
        v375 = 0;
        WordNgramTemplate::printSize(*(v79 + 8 * v75), v75, (v374 + 2), &v377, &v376, &v375);
        v76 += v377;
        v77 += v376;
        v78 += v375;
        v74 = *(this + 22);
      }

      ++v75;
    }

    while (v75 < v74);
  }

  else
  {
    v78 = 0;
    v77 = 0;
    v76 = 0;
    v74 = 0;
  }

  v80 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v80 = 12;
  }

  v81 = v80 + v76;
  v82 = v80 + v77;
  v83 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v83 = 3;
  }

  v84 = v81 + (*(this + 23) << v83);
  v85 = v82 + (v74 << v83);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1457, &v377);
  if (v378)
  {
    v90 = v377;
  }

  else
  {
    v90 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v86, v87, v88, v89, v22, &unk_26288830E, v24, v24, v90, v84, v85, v78);
  DgnString::~DgnString(&v377);
  *a4 += v84;
  *a5 += v85;
  *v373 += v78;
  v91 = *(this + 7);
  if (v91)
  {
    v376 = 0;
    v377 = 0;
    v375 = 0;
    StateMgr::printSize(v91, 0xFFFFFFFFLL, v22, &v377, &v376, &v375);
    *a4 += v377;
    *a5 += v376;
    *v373 += v375;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v92 = 4;
  }

  else
  {
    v92 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1459, &v377);
  if (v378)
  {
    v97 = v377;
  }

  else
  {
    v97 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v93, v94, v95, v96, v22, &unk_26288830E, v24, v24, v97, v92, v92, 0);
  DgnString::~DgnString(&v377);
  *a4 += v92;
  *a5 += v92;
  v98 = *(this + 8);
  if (v98)
  {
    v376 = 0;
    v377 = 0;
    v375 = 0;
    RuleMgr::printSize(v98, 0xFFFFFFFFLL, v22, &v377, &v376, &v375);
    *a4 += v377;
    *a5 += v376;
    *v373 += v375;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v99 = 4;
  }

  else
  {
    v99 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1460, &v377);
  if (v378)
  {
    v104 = v377;
  }

  else
  {
    v104 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v100, v101, v102, v103, v22, &unk_26288830E, v24, v24, v104, v99, v99, 0);
  DgnString::~DgnString(&v377);
  *a4 += v99;
  *a5 += v99;
  v105 = *(this + 9);
  if (v105)
  {
    v376 = 0;
    v377 = 0;
    v375 = 0;
    (*(*v105 + 16))(v105, 0xFFFFFFFFLL, v22, &v377, &v376, &v375);
    *a4 += v377;
    *a5 += v376;
    *v373 += v375;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v106 = 4;
  }

  else
  {
    v106 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1462, &v377);
  if (v378)
  {
    v111 = v377;
  }

  else
  {
    v111 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v107, v108, v109, v110, v22, &unk_26288830E, v24, v24, v111, v106, v106, 0);
  DgnString::~DgnString(&v377);
  *a4 += v106;
  *a5 += v106;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1464, &v377);
  if (v378)
  {
    v116 = v377;
  }

  else
  {
    v116 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v112, v113, v114, v115, v22, &unk_26288830E, v24, v24, v116, 8, 8, 0);
  DgnString::~DgnString(&v377);
  *a4 += 8;
  *a5 += 8;
  v376 = 0;
  v377 = 0;
  v375 = 0;
  PhnMgr::printSize((this + 184), 0xFFFFFFFFLL, v22, &v377, &v376, &v375);
  *a4 += v377;
  *a5 += v376;
  *v373 += v375;
  v117 = FileSpec::sizeObject(this + 104);
  v118 = FileSpec::sizeObject(this + 104);
  v119 = FileSpec::sizeObject(this + 104);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1467, &v377);
  if (v378)
  {
    v124 = v377;
  }

  else
  {
    v124 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v120, v121, v122, v123, v22, &unk_26288830E, v24, v24, v124, v117, v118, v119);
  DgnString::~DgnString(&v377);
  *a4 += v117;
  *a5 += v118;
  *v373 += v119;
  v125 = sizeObject(this + 144, 0);
  v126 = sizeObject(this + 144, 1);
  v127 = sizeObject(this + 144, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1468, &v377);
  if (v378)
  {
    v132 = v377;
  }

  else
  {
    v132 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v128, v129, v130, v131, v22, &unk_26288830E, v24, v24, v132, v125, v126, v127);
  DgnString::~DgnString(&v377);
  *a4 += v125;
  *a5 += v126;
  *v373 += v127;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1469, &v377);
  if (v378)
  {
    v137 = v377;
  }

  else
  {
    v137 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v133, v134, v135, v136, v22, &unk_26288830E, v24, v24, v137, 2, 2, 0);
  DgnString::~DgnString(&v377);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1471, &v377);
  if (v378)
  {
    v142 = v377;
  }

  else
  {
    v142 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v138, v139, v140, v141, v22, &unk_26288830E, v24, v24, v142, 2, 2, 0);
  DgnString::~DgnString(&v377);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1473, &v377);
  if (v378)
  {
    v147 = v377;
  }

  else
  {
    v147 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v143, v144, v145, v146, v22, &unk_26288830E, v24, v24, v147, 2, 2, 0);
  DgnString::~DgnString(&v377);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1475, &v377);
  if (v378)
  {
    v152 = v377;
  }

  else
  {
    v152 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v148, v149, v150, v151, v22, &unk_26288830E, v24, v24, v152, 2, 2, 0);
  DgnString::~DgnString(&v377);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1477, &v377);
  if (v378)
  {
    v157 = v377;
  }

  else
  {
    v157 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v153, v154, v155, v156, v22, &unk_26288830E, v24, v24, v157, 2, 2, 0);
  DgnString::~DgnString(&v377);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1479, &v377);
  if (v378)
  {
    v162 = v377;
  }

  else
  {
    v162 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v158, v159, v160, v161, v22, &unk_26288830E, v24, v24, v162, 4, 4, 0);
  DgnString::~DgnString(&v377);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1481, &v377);
  if (v378)
  {
    v167 = v377;
  }

  else
  {
    v167 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v163, v164, v165, v166, v22, &unk_26288830E, v24, v24, v167, 4, 4, 0);
  DgnString::~DgnString(&v377);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1483, &v377);
  if (v378)
  {
    v172 = v377;
  }

  else
  {
    v172 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v168, v169, v170, v171, v22, &unk_26288830E, v24, v24, v172, 4, 4, 0);
  DgnString::~DgnString(&v377);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1485, &v377);
  if (v378)
  {
    v177 = v377;
  }

  else
  {
    v177 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v173, v174, v175, v176, v22, &unk_26288830E, v24, v24, v177, 1, 1, 0);
  DgnString::~DgnString(&v377);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1487, &v377);
  if (v378)
  {
    v182 = v377;
  }

  else
  {
    v182 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v178, v179, v180, v181, v22, &unk_26288830E, v24, v24, v182, 4, 4, 0);
  DgnString::~DgnString(&v377);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v183 = 12;
  }

  else
  {
    v183 = 16;
  }

  v184 = *(this + 70);
  v185 = *(this + 71);
  if (v185 >= v184)
  {
    v186 = 0;
    if (v184 > 0)
    {
      v183 += 2 * (v184 - 1) + 2;
    }

    v187 = v183 + 2 * (v185 - v184);
  }

  else
  {
    v186 = 2 * v184;
    v187 = v183;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1489, &v377);
  if (v378)
  {
    v192 = v377;
  }

  else
  {
    v192 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v188, v189, v190, v191, v22, &unk_26288830E, v24, v24, v192, v187, v183, v186);
  DgnString::~DgnString(&v377);
  *a4 += v187;
  *a5 += v183;
  *v373 += v186;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1491, &v377);
  if (v378)
  {
    v197 = v377;
  }

  else
  {
    v197 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v193, v194, v195, v196, v22, &unk_26288830E, v24, v24, v197, 1, 1, 0);
  DgnString::~DgnString(&v377);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1493, &v377);
  if (v378)
  {
    v202 = v377;
  }

  else
  {
    v202 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v198, v199, v200, v201, v22, &unk_26288830E, v24, v24, v202, 4, 4, 0);
  DgnString::~DgnString(&v377);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1495, &v377);
  if (v378)
  {
    v207 = v377;
  }

  else
  {
    v207 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v203, v204, v205, v206, v22, &unk_26288830E, v24, v24, v207, 4, 4, 0);
  DgnString::~DgnString(&v377);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1497, &v377);
  if (v378)
  {
    v212 = v377;
  }

  else
  {
    v212 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v208, v209, v210, v211, v22, &unk_26288830E, v24, v24, v212, 4, 4, 0);
  DgnString::~DgnString(&v377);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1499, &v377);
  if (v378)
  {
    v217 = v377;
  }

  else
  {
    v217 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v213, v214, v215, v216, v22, &unk_26288830E, v24, v24, v217, 4, 4, 0);
  DgnString::~DgnString(&v377);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1501, &v377);
  if (v378)
  {
    v222 = v377;
  }

  else
  {
    v222 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v218, v219, v220, v221, v22, &unk_26288830E, v24, v24, v222, 4, 4, 0);
  DgnString::~DgnString(&v377);
  *a4 += 4;
  *a5 += 4;
  v223 = 12;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v223 = 16;
  }

  v224 = *(this + 84);
  v225 = *(this + 85);
  if (v225 >= v224)
  {
    v228 = 0;
    if (v224 > 0)
    {
      v223 += 4 * (v224 - 1) + 4;
    }

    v230 = v225 - v224;
    v231 = 20;
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v231 = 16;
    }

    v227 = v231 + v223;
    v229 = v231 + v223 + 4 * v230;
  }

  else
  {
    v226 = 8;
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v226 = 4;
    }

    v227 = v223 + v226 + 12;
    v228 = 4 * v224;
    v229 = v227;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1503, &v377);
  if (v378)
  {
    v236 = v377;
  }

  else
  {
    v236 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v232, v233, v234, v235, v22, &unk_26288830E, v24, v24, v236, v229, v227, v228);
  DgnString::~DgnString(&v377);
  *a4 += v229;
  *a5 += v227;
  *v373 += v228;
  v237 = sizeObject<ParseToken>(this + 352, 0);
  v238 = sizeObject<ParseToken>(this + 352, 1);
  sizeObject(&v377, 2);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1505, &v377);
  if (v378)
  {
    v243 = v377;
  }

  else
  {
    v243 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v239, v240, v241, v242, v22, &unk_26288830E, v24, v24, v243, v237, v238, 0);
  DgnString::~DgnString(&v377);
  *a4 += v237;
  *a5 += v238;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v244 = 12;
  }

  else
  {
    v244 = 16;
  }

  v245 = *(this + 94);
  v246 = *(this + 95);
  if (v246 >= v245)
  {
    v247 = 0;
    if (v245 > 0)
    {
      v244 += 2 * (v245 - 1) + 2;
    }

    v248 = v244 + 2 * (v246 - v245);
  }

  else
  {
    v247 = 2 * v245;
    v248 = v244;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1507, &v377);
  if (v378)
  {
    v253 = v377;
  }

  else
  {
    v253 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v249, v250, v251, v252, v22, &unk_26288830E, v24, v24, v253, v248, v244, v247);
  DgnString::~DgnString(&v377);
  *a4 += v248;
  *a5 += v244;
  *v373 += v247;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v254 = 12;
  }

  else
  {
    v254 = 16;
  }

  v255 = *(this + 98);
  v256 = *(this + 99);
  if (v256 >= v255)
  {
    v257 = 0;
    if (v255 > 0)
    {
      v254 += 4 * (v255 - 1) + 4;
    }

    v258 = v254 + 4 * (v256 - v255);
  }

  else
  {
    v257 = 4 * v255;
    v258 = v254;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1509, &v377);
  if (v378)
  {
    v263 = v377;
  }

  else
  {
    v263 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v259, v260, v261, v262, v22, &unk_26288830E, v24, v24, v263, v258, v254, v257);
  DgnString::~DgnString(&v377);
  *a4 += v258;
  *a5 += v254;
  *v373 += v257;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v264 = 12;
  }

  else
  {
    v264 = 16;
  }

  v265 = *(this + 102);
  v266 = *(this + 103);
  if (v266 >= v265)
  {
    v267 = 0;
    if (v265 > 0)
    {
      v264 += 4 * (v265 - 1) + 4;
    }

    v268 = v264 + 4 * (v266 - v265);
  }

  else
  {
    v267 = 4 * v265;
    v268 = v264;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1511, &v377);
  if (v378)
  {
    v273 = v377;
  }

  else
  {
    v273 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v269, v270, v271, v272, v22, &unk_26288830E, v24, v24, v273, v268, v264, v267);
  DgnString::~DgnString(&v377);
  *a4 += v268;
  *a5 += v264;
  *v373 += v267;
  v274 = PrefiltererWordIdPronCollArray::sizeObject(this + 416, 0);
  v275 = PrefiltererWordIdPronCollArray::sizeObject(this + 416, 1);
  v276 = PrefiltererWordIdPronCollArray::sizeObject(this + 416, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1513, &v377);
  if (v378)
  {
    v281 = v377;
  }

  else
  {
    v281 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v277, v278, v279, v280, v22, &unk_26288830E, v24, v24, v281, v274, v275, v276);
  DgnString::~DgnString(&v377);
  *a4 += v274;
  *a5 += v275;
  *v373 += v276;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1515, &v377);
  if (v378)
  {
    v286 = v377;
  }

  else
  {
    v286 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v282, v283, v284, v285, v22, &unk_26288830E, v24, v24, v286, 1, 1, 0);
  DgnString::~DgnString(&v377);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v287 = 4;
  }

  else
  {
    v287 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1516, &v377);
  if (v378)
  {
    v292 = v377;
  }

  else
  {
    v292 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v288, v289, v290, v291, v22, &unk_26288830E, v24, v24, v292, v287, v287, 0);
  DgnString::~DgnString(&v377);
  *a4 += v287;
  *a5 += v287;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1517, &v377);
  if (v378)
  {
    v297 = v377;
  }

  else
  {
    v297 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v293, v294, v295, v296, v22, &unk_26288830E, v24, v24, v297, 4, 4, 0);
  DgnString::~DgnString(&v377);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v298 = 4;
  }

  else
  {
    v298 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1519, &v377);
  if (v378)
  {
    v303 = v377;
  }

  else
  {
    v303 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v299, v300, v301, v302, v22, &unk_26288830E, v24, v24, v303, v298, v298, 0);
  DgnString::~DgnString(&v377);
  *a4 += v298;
  *a5 += v298;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1521, &v377);
  if (v378)
  {
    v308 = v377;
  }

  else
  {
    v308 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v304, v305, v306, v307, v22, &unk_26288830E, v24, v24, v308, 4, 4, 0);
  DgnString::~DgnString(&v377);
  *a4 += 4;
  *a5 += 4;
  v309 = sizeObject(this + 448);
  v310 = sizeObject(this + 448);
  v311 = sizeObject(this + 448);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1523, &v377);
  if (v378)
  {
    v316 = v377;
  }

  else
  {
    v316 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v312, v313, v314, v315, v22, &unk_26288830E, v24, v24, v316, v309, v310, v311);
  DgnString::~DgnString(&v377);
  *a4 += v309;
  *a5 += v310;
  *v373 += v311;
  v317 = sizeObject(this + 464);
  v318 = sizeObject(this + 464);
  v319 = sizeObject(this + 464);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1525, &v377);
  if (v378)
  {
    v324 = v377;
  }

  else
  {
    v324 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v320, v321, v322, v323, v22, &unk_26288830E, v24, v24, v324, v317, v318, v319);
  DgnString::~DgnString(&v377);
  *a4 += v317;
  *a5 += v318;
  *v373 += v319;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1527, &v377);
  if (v378)
  {
    v329 = v377;
  }

  else
  {
    v329 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v325, v326, v327, v328, v22, &unk_26288830E, v24, v24, v329, 4, 4, 0);
  DgnString::~DgnString(&v377);
  *a4 += 4;
  *a5 += 4;
  v330 = sizeObject(this + 488);
  v331 = sizeObject(this + 488);
  v332 = sizeObject(this + 488);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1529, &v377);
  if (v378)
  {
    v337 = v377;
  }

  else
  {
    v337 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v333, v334, v335, v336, v22, &unk_26288830E, v24, v24, v337, v330, v331, v332);
  DgnString::~DgnString(&v377);
  *a4 += v330;
  *a5 += v331;
  *v373 += v332;
  v338 = sizeObject(this + 504);
  v339 = sizeObject(this + 504);
  v340 = sizeObject(this + 504);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1531, &v377);
  if (v378)
  {
    v345 = v377;
  }

  else
  {
    v345 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v341, v342, v343, v344, v22, &unk_26288830E, v24, v24, v345, v338, v339, v340);
  DgnString::~DgnString(&v377);
  *a4 += v338;
  *a5 += v339;
  *v373 += v340;
  v346 = sizeObject(this + 520, 0);
  v347 = sizeObject(this + 520, 1);
  v348 = sizeObject(this + 520, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1533, &v377);
  if (v378)
  {
    v353 = v377;
  }

  else
  {
    v353 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v349, v350, v351, v352, v22, &unk_26288830E, v24, v24, v353, v346, v347, v348);
  DgnString::~DgnString(&v377);
  *a4 += v346;
  *a5 += v347;
  *v373 += v348;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1535, &v377);
  if (v378)
  {
    v358 = v377;
  }

  else
  {
    v358 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v354, v355, v356, v357, v22, &unk_26288830E, v24, v24, v358, 4, 4, 0);
  DgnString::~DgnString(&v377);
  *a4 += 4;
  *a5 += 4;
  v359 = sizeObject(this + 40, 0);
  v360 = sizeObject(this + 40, 1);
  v361 = sizeObject(this + 40, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1537, &v377);
  if (v378)
  {
    v366 = v377;
  }

  else
  {
    v366 = &unk_26288830E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v362, v363, v364, v365, v22, &unk_26288830E, v24, v24, v366, v359, v360, v361);
  DgnString::~DgnString(&v377);
  *a4 += v359;
  *a5 += v360;
  *v373 += v361;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1538, &v377);
  if (v378)
  {
    v371 = v377;
  }

  else
  {
    v371 = &unk_26288830E;
  }

  v372 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v367, v368, v369, v370, v374, &unk_26288830E, (35 - v374), (35 - v374), v371, *a4, *a5, *v373);
  DgnString::~DgnString(&v377);
}

void sub_2626A07F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

DgnSharedMemSet *Voc::canUnloadCachedLM(Voc *this)
{
  result = *(this + 15);
  if (result)
  {
    return (*(DgnSharedMemSet::getSetCacheDir(result) + 8) > 1u);
  }

  return result;
}

uint64_t Voc::isPhonemeSetCompatibleWithVoc(Voc *this, const Voc *a2, int a3)
{
  if ((PhnMgr::operator==(this + 184, a2 + 184) & 1) == 0)
  {
    if (a3)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1655, "voc/voc", 25, "%.500s", v6, v7, "phoneme sets");
    }

    return 0;
  }

  if ((DgnArray<DgnPrimArray<BOOL>>::operator==((*(this + 6) + 400), (*(a2 + 6) + 400)) & 1) == 0)
  {
    if (a3)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1661, "voc/voc", 25, "%.500s", v8, v9, "liaison seed tables");
    }

    return 0;
  }

  result = PronCollMgr::operator==(*(this + 3), *(a2 + 3));
  if ((result & 1) == 0 && a3)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1666, "voc/voc", 25, "%.500s", v11, v12, "pron collations");
    return 0;
  }

  return result;
}

uint64_t Voc::removePrefWordIdsSortedByPron(uint64_t a1, uint64_t a2)
{
  result = PrefiltererWordIdPronCollArray::removeArray(a1 + 416, a2);
  if (*(a1 + 376) && *(a2 + 8))
  {
    v5 = 0;
    v6 = *a2;
    v7 = *(a1 + 368);
    v8 = *(a1 + 384);
    do
    {
      v9 = *(v6 + 4 * v5);
      *(v7 + 2 * v9) = 0;
      *(v8 + 4 * v9) = 0;
      ++v5;
    }

    while (v5 < *(a2 + 8));
  }

  return result;
}

uint64_t Voc::notifyWordFamilyAdded(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  StateMgr::addWordIdsToStatesWithId(*(a1 + 56), a3, a2, a4, a5, a6, a7, a8);
  v12 = *(a1 + 48);
  v13 = (*(v12 + 28) + *(*(v12 + 25) + 4 * a2));
  result = WordList::numAltProns(v12, v13);
  if (*(a3 + 8))
  {
    v15 = result;
    v16 = 0;
    do
    {
      v17 = *(*a3 + 4 * v16);
      result = (*(**(a1 + 72) + 360))(*(a1 + 72), v17, a4);
      if (*(a1 + 88))
      {
        v24 = 0;
        do
        {
          result = WordNgramTemplate::addWord(*(*(a1 + 80) + 8 * v24++), v17, a4);
        }

        while (v24 < *(a1 + 88));
      }

      ++v16;
      v25 = *(a3 + 8);
    }

    while (v16 < v25);
    if (v25)
    {
      if (*(a1 + 260))
      {
        v26 = *(a1 + 264);
        if (!v26 || (result = StateMgr::isWordIdInState(*(a1 + 56), v26, a2, 1, v20, v21, v22, v23), result))
        {
          v34[0] = 0;
          v34[1] = 0;
          (*(**(a1 + 72) + 520))(*(a1 + 72), a3, v34);
          v27 = *(a3 + 8);
          if (v27)
          {
            v28 = 0;
            v29 = *(a1 + 280);
            do
            {
              v30 = *(*a3 + 4 * v28);
              if (v30 >= v29)
              {
                do
                {
                  if (v29 == *(a1 + 284))
                  {
                    DgnPrimArray<short>::reallocElts(a1 + 272, 1, 1);
                    v29 = *(a1 + 280);
                  }

                  v31 = *(a1 + 272);
                  *(v31 + 2 * v29++) = 20000;
                  *(a1 + 280) = v29;
                }

                while (v30 >= v29);
                v27 = *(a3 + 8);
              }

              else
              {
                v31 = *(a1 + 272);
              }

              *(v31 + 2 * v30) = *(v34[0] + 2 * v28++) + **(a1 + 32);
            }

            while (v28 < v27);
          }

          result = DgnPrimArray<unsigned int>::~DgnPrimArray(v34);
        }
      }
    }

    v32 = *(a3 + 8);
    if (v32)
    {
      v33 = *(a1 + 440);
      if (v33)
      {
        *(a1 + 440) = v33 + v32;
        if (a4 != 0xFFFFFF)
        {
          return DgnString::stringPrintf((a1 + 464), "%.500s pron %u (cloned from %u)", v18, v19, v20, v13, (v15 + v32 - 1), a4);
        }
      }

      else
      {
        if (a4 != 0xFFFFFF)
        {
          DgnString::stringPrintf((a1 + 448), "%.500s pron %u (cloned from %u)", v18, v19, v20, v13, v15, a4);
          v32 = *(a3 + 8);
          *(a1 + 440) += v32;
          return DgnString::stringPrintf((a1 + 464), "%.500s pron %u (cloned from %u)", v18, v19, v20, v13, (v15 + v32 - 1), a4);
        }

        DgnString::stringPrintf((a1 + 448), "%.500s pron %u", v18, v19, v20, v13, v15);
        v32 = *(a3 + 8);
        *(a1 + 440) += v32;
      }

      return DgnString::stringPrintf((a1 + 464), "%.500s pron %u", v18, v19, v20, v13, (v15 + v32 - 1));
    }
  }

  return result;
}

void sub_2626A0D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t Voc::notifyWordFamilyAboutToDeleteProns(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(result + 288) == 1)
  {
    v8 = result;
    if (*(*(*(result + 48) + 32) + 2 * a3))
    {
      v13 = 0;
      v14 = 0;
      if (*(a2 + 8))
      {
        v10 = 0;
        do
        {
          if (StateMgr::isWordIdInState(*(v8 + 56), *(v8 + 304), *(*a2 + 4 * v10), 1, a5, a6, a7, a8))
          {
            v11 = *(*a2 + 4 * v10);
            v12 = v14;
            if (v14 == HIDWORD(v14))
            {
              DgnPrimArray<unsigned int>::reallocElts(&v13, 1, 1);
              v12 = v14;
            }

            *(v13 + 4 * v12) = v11;
            LODWORD(v14) = v14 + 1;
          }

          ++v10;
        }

        while (v10 < *(a2 + 8));
      }

      Voc::removePrefWordIdsSortedByPron(v8, &v13);
      return DgnPrimArray<unsigned int>::~DgnPrimArray(&v13);
    }
  }

  return result;
}

void Voc::notifyWordFamilyDeleted(uint64_t a1, unsigned int **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  DgnString::stringPrintf((a1 + 504), "%.500s pron %u", a3, a4, a5, *(*(a1 + 48) + 224) + *(*(*(a1 + 48) + 200) + 4 * a3), *(*(*(a1 + 48) + 104) + **a2));
  v15 = *(a1 + 480);
  if (!v15)
  {
    DgnString::operator=((a1 + 488), (a1 + 504));
    v15 = *(a1 + 480);
  }

  *(a1 + 480) = v15 + *(a2 + 2);
  StateMgr::deleteWordIdsFromStatesWithId(*(a1 + 56), a2, v7, v10, v11, v12, v13, v14);
  LODWORD(v20) = *(a2 + 2);
  if (v20)
  {
    v21 = 0;
    do
    {
      v22 = (*a2)[v21];
      (*(**(a1 + 72) + 376))(*(a1 + 72), v22, a4, a5);
      if (*(a1 + 88))
      {
        v23 = 0;
        do
        {
          WordNgramTemplate::deleteWord(*(*(a1 + 80) + 8 * v23++), v22);
        }

        while (v23 < *(a1 + 88));
      }

      ++v21;
      v20 = *(a2 + 2);
    }

    while (v21 < v20);
  }

  if (*(a1 + 260))
  {
    v24 = *(a1 + 264);
    if (v24)
    {
      if (!StateMgr::isWordIdInState(*(a1 + 56), v24, v7, 1, v16, v17, v18, v19))
      {
        return;
      }

      LODWORD(v20) = *(a2 + 2);
    }

    if (v20)
    {
      v25 = *a2;
      v26 = *(a1 + 272);
      v20 = v20;
      do
      {
        v27 = *v25++;
        *(v26 + 2 * v27) = 20000;
        --v20;
      }

      while (v20);
    }
  }
}

unint64_t Voc::addPrefPicModelIdPron(unint64_t result, unsigned int a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(result + 376);
  if (v6 <= a2)
  {
    do
    {
      if (v6 == *(v5 + 380))
      {
        result = DgnPrimArray<short>::reallocElts(v5 + 368, 1, 1);
        v6 = *(v5 + 376);
      }

      *(*(v5 + 368) + 2 * v6) = 0;
      *(v5 + 376) = v6 + 1;
      v8 = *(v5 + 392);
      if (v8 == *(v5 + 396))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(v5 + 384, 1, 1);
        v8 = *(v5 + 392);
      }

      v7 = *(v5 + 384);
      *(v7 + 4 * v8) = 0;
      ++*(v5 + 392);
      v6 = *(v5 + 376);
    }

    while (v6 <= a2);
  }

  else
  {
    v7 = *(result + 384);
  }

  *(*(v5 + 368) + 2 * a2) = *(a3 + 2);
  v9 = *(v5 + 408);
  *(v7 + 4 * a2) = v9;
  v10 = *(a3 + 2);
  v11 = v9 + v10;
  v12 = *(v5 + 412);
  if (v11 > v12)
  {
    result = DgnPrimArray<unsigned int>::reallocElts(v5 + 400, v11 - v12, 1);
    v10 = *(a3 + 2);
  }

  if (v10)
  {
    v13 = 0;
    v14 = *a3;
    v15 = *(v5 + 400);
    do
    {
      *(v15 + 4 * (v13 + *(v5 + 408))) = *(v14 + 4 * v13);
      ++v13;
      v16 = *(a3 + 2);
    }

    while (v13 < v16);
  }

  else
  {
    LODWORD(v16) = 0;
  }

  *(v5 + 408) += v16;
  return result;
}

void *Voc::getPrefPicModelIdPron(void *this, unsigned int a2, const unsigned int **a3, unsigned int *a4)
{
  *a3 = (this[50] + 4 * *(this[48] + 4 * a2));
  *a4 = *(this[46] + 2 * a2);
  return this;
}

uint64_t Voc::findOrAddPrefPicModel(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 360) | (a2[2] << 24);
  v5 = HashProbeKEV<unsigned int,DgnArray<OpaquePelIdAndDurId>,Voc>::insert(a1 + 312, v4, a2);
  if (v5 == v4)
  {
    v6 = a2[2];
    v7 = *(a1 + 360) + v6;
    v8 = *(a1 + 364);
    if (v7 > v8)
    {
      DgnPrimArray<unsigned int>::reallocElts(a1 + 352, v7 - v8, 1);
      v6 = a2[2];
    }

    if (v6)
    {
      v9 = 0;
      do
      {
        *(*(a1 + 352) + 4 * (v9 + *(a1 + 360))) = *(*a2 + 4 * v9);
        ++v9;
        v10 = a2[2];
      }

      while (v9 < v10);
    }

    else
    {
      LODWORD(v10) = 0;
    }

    *(a1 + 360) += v10;
  }

  return v5;
}

uint64_t HashProbeKEV<unsigned int,DgnArray<OpaquePelIdAndDurId>,Voc>::insert(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  v6 = *(a1 + 4);
  if (*a1 >= v6 >> 1)
  {
    HashProbeKEV<unsigned int,DgnArray<OpaquePelIdAndDurId>,Voc>::upSize(a1, 2 * v6);
  }

  v7 = a3[2];
  if (v7)
  {
    v8 = 0;
    v9 = (*a3 + 2);
    do
    {
      HIDWORD(v10) = v8;
      LODWORD(v10) = v8;
      v11 = (v10 >> 19) + *(v9 - 1);
      v12 = *v9;
      v9 += 2;
      HIDWORD(v10) = v11;
      LODWORD(v10) = v11;
      v8 = (v10 >> 19) + v12;
      --v7;
    }

    while (v7);
    LODWORD(v7) = -1640531527 * v8;
  }

  v13 = *(a1 + 8);
  v14 = v7 >> -v13;
  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a1 + 16);
  v17 = *(v16 + 4 * v15);
  if (v17 == -1)
  {
LABEL_18:
    v19 = (v16 + 4 * v15);
    *v19 = a2;
    ++*a1;
    return *v19;
  }

  if ((Voc::equalKeys(*(a1 + 32), v17, a3) & 1) == 0)
  {
    do
    {
      v15 = v15 + 1 == *(a1 + 4) ? 0 : (v15 + 1);
      v16 = *(a1 + 16);
      v18 = *(v16 + 4 * v15);
      if (v18 == -1)
      {
        goto LABEL_18;
      }
    }

    while (!Voc::equalKeys(*(a1 + 32), v18, a3));
  }

  v19 = (*(a1 + 16) + 4 * v15);
  return *v19;
}

void Voc::deleteWordsFromWordList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 0;
  WordList::deleteWords(*(a1 + 48), a2, &v9, a4, a5, a6, a7, a8);
  if (v9)
  {
    (*(**(a1 + 72) + 400))(*(a1 + 72));
  }
}

void Voc::verifyCanDeleteWords(Voc *this, unsigned int a2)
{
  if ((*(**(this + 9) + 192))(*(this + 9)))
  {
    v6 = *(*(this + 6) + 224) + *(*(*(this + 6) + 200) + 4 * a2);
    v7 = *(this + 84);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 1970, "voc/voc", 2, "%d %.500s %d", v4, v5, a2);
  }
}

uint64_t Voc::deleteWordIdArrayFamily(Voc *a1, uint64_t a2, void *a3)
{
  Voc::verifyCanDeleteWords(a1, **a2);
  v12 = *(a2 + 8);
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = *(*a3 + 16 * v14 + 8);
      if (HIDWORD(v26) < v15)
      {
        break;
      }

      LODWORD(v26) = *(*a3 + 16 * v14 + 8);
      if (v15)
      {
        goto LABEL_6;
      }

LABEL_8:
      Voc::notifyWordFamilyAboutToDeleteProns(a1, &v25, *(*a2 + 4 * v14), v7, v8, v9, v10, v11);
      Voc::notifyWordFamilyDeleted(a1, &v25, *(*a2 + 4 * v14), &v24 + 1, &v24);
      v13 = v26;
      if ((v28 + v26) > HIDWORD(v28))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v27, (v28 + v26 - HIDWORD(v28)), 1);
        v13 = v26;
      }

      if (v13)
      {
        v20 = 0;
        v21 = v25;
        v22 = v27;
        do
        {
          *(v22 + 4 * (v20 + v28)) = v21[v20];
          ++v20;
        }

        while (v20 < v26);
        v13 = v26;
      }

      LODWORD(v28) = v28 + v13;
      if (++v14 == v12)
      {
        goto LABEL_15;
      }
    }

    v29 = 0;
    v16 = realloc_array(v25, &v29, 4 * v15, 4 * v13, 4 * v13, 1);
    v25 = v29;
    LODWORD(v26) = v15;
    HIDWORD(v26) = v16 >> 2;
LABEL_6:
    v17 = *(*a3 + 16 * v14);
    v18 = v25;
    v19 = v15 - 1;
    do
    {
      *v18++ = *(v17 + 4 * v19--);
      --v15;
    }

    while (v15);
    goto LABEL_8;
  }

LABEL_15:
  Voc::deleteWordsFromWordList(a1, &v27, v6, v7, v8, v9, v10, v11);
  if (HIBYTE(v24) == 1)
  {
    (*(**(a1 + 9) + 384))(*(a1 + 9));
  }

  if (v24 == 1)
  {
    (*(**(a1 + 9) + 392))(*(a1 + 9));
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v25);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v27);
}

void sub_2626A164C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  _Unwind_Resume(a1);
}

uint64_t Voc::createWord(Voc *this, char *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2 || !*a2)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 2020, "voc/voc", 15, "%s", a7, a8, &errStr_voc_voc_E_BAD_WORDNAME);
  }

  if (WordList::lookupWord(*(this + 6), a2) != 0xFFFFFF)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/voc.cpp", 2023, "voc/voc", 5, "%d %.500s", v12, v13, *(this + 84));
  }

  v14 = WordList::addWord(*(this + 6), a2, 1, 1, 1, a4);
  v20 = 0;
  v21 = 0;
  DgnPrimArray<unsigned int>::reallocElts(&v20, 1, 1);
  *(v20 + 4 * v21) = v14;
  LODWORD(v21) = v21 + 1;
  Voc::notifyWordFamilyAdded(this, v14, &v20, a3, v15, v16, v17, v18);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v20);
  return v14;
}

void sub_2626A179C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t Voc::addClientPronsAvoidDuplicates(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, int a8, uint64_t a9, uint64_t a10)
{
  *(a3 + 8) = 0;
  *(a4 + 8) = 0;
  return WordList::addClientPronsAvoidDuplicates(*(a1 + 48), a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t Voc::deleteWordClientProns(WordList **a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  WordList::verifyModifiable(a1[6], a2, a3, a4, a5, a6, a7, a8);
  v12 = a1[6];
  v13 = *(v12[25] + 4 * a2);
  v14 = v12[28];
  v37[0] = 0;
  v37[1] = 0;
  WordList::lookupAllClientAddedProns(v12, v14 + v13, v37);
  Voc::notifyWordFamilyAboutToDeleteProns(a1, v37, a2, v15, v16, v17, v18, v19);
  WordList::deleteWordClientProns(a1[6], a2, v37, a3, a4, v20, v21, v22);
  if (*(a4 + 8))
  {
    Voc::verifyCanDeleteWords(a1, a2);
    v36 = 0;
    Voc::notifyWordFamilyDeleted(a1, a4, a2, &v36 + 1, &v36);
    Voc::deleteWordsFromWordList(a1, a4, v29, v30, v31, v32, v33, v34);
  }

  if (*(a3 + 8))
  {
    StateMgr::notifyPronsChanged(a1[7], a3, v23, v24, v25, v26, v27, v28);
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(v37);
}

void sub_2626A18AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t Voc::getPics(uint64_t a1, _DWORD *a2, int a3, __int16 *a4, __int16 *a5, char a6, _DWORD *a7)
{
  result = *a2 & 0xFFFFFF;
  v12 = a4[1];
  v13 = *a4;
  v14 = *a5;
  v15 = a5[1];
  v16 = *(a1 + 48);
  v17 = *(v16[4] + 2 * result);
  v18 = (v16[9] + 2 * *(v16[6] + 4 * result));
  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v18 += v17 - 1;
      if (v17 >= 2)
      {
        if (v17 != 2)
        {
          v13 = *(v18 - 2);
        }

        v12 = v13;
        v13 = *(v18 - 1);
      }
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_12;
      }

      if (v17 >= 2)
      {
        if (v17 != 2)
        {
          v14 = v18[2];
        }

        v19 = v18[1];
        v21 = 1;
        goto LABEL_11;
      }
    }

    v21 = 1;
    v19 = *a5;
  }

  else
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v19 = v18[v17 - 1];
        v12 = *a4;
        v20 = *v18++;
        v13 = v20;
        v21 = v17 - 2;
LABEL_11:
        v15 = v14;
        goto LABEL_19;
      }

LABEL_12:
      v21 = 0;
      v22 = *v18;
      a7[2] = 0;
      v23 = v14;
LABEL_28:
      v19 = v15;
      goto LABEL_30;
    }

    v19 = *a5;
    v21 = *(v16[4] + 2 * result);
  }

LABEL_19:
  v22 = *v18;
  v24 = a7[3];
  if (v21 > v24)
  {
    v48 = a1;
    v49 = *a2 & 0xFFFFFF;
    v46 = v15;
    v47 = a3;
    v25 = a6;
    v45 = v21;
    DgnArray<RuleDesc>::reallocElts(a7, v21 - v24, 0);
    a3 = v47;
    a6 = v25;
    v21 = v45;
    v15 = v46;
    a1 = v48;
    result = v49;
  }

  v26 = a7[2];
  if (v26 < v21)
  {
    v27 = v21 - v26;
    v28 = 12 * v26;
    do
    {
      v29 = *a7 + v28;
      *v29 = -1;
      *(v29 + 8) = 0xFFFF;
      v28 += 12;
      --v27;
    }

    while (v27);
  }

  a7[2] = v21;
  if (v21 < 2)
  {
    v14 = v19;
    v23 = v19;
    goto LABEL_28;
  }

  v23 = v18[1];
  v14 = v19;
  if (v21 != 2)
  {
    v19 = v18[2];
  }

LABEL_30:
  v30 = *a7;
  *v30 = v12;
  v30[1] = v13;
  v30[2] = v22;
  v30[3] = v23;
  v30[4] = v19;
  v30[5] = 0;
  if (v21 >= 2)
  {
    v31 = 12;
    v32 = 3;
    do
    {
      v33 = v13;
      v13 = v22;
      v22 = v23;
      v23 = v19;
      v19 = v14;
      if (12 * (v21 - 2) != v31)
      {
        v19 = v15;
        if (12 * (v21 - 1) != v31)
        {
          v19 = v18[v32];
        }
      }

      v34 = (*a7 + v31);
      *v34 = v33;
      v34[1] = v13;
      v34[2] = v22;
      v34[3] = v23;
      v34[4] = v19;
      v34[5] = 0;
      ++v32;
      v31 += 12;
    }

    while (12 * v21 != v31);
  }

  if ((a6 & 1) != 0 || (v35 = a2[2], !v35))
  {
    v37 = 1;
    v38 = 1;
  }

  else
  {
    v36 = *(a1 + 56);
    v37 = *(*(v36 + 352) + v35) != 0;
    v38 = *(*(v36 + 368) + v35) != 0;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      if (v37)
      {
        *(*a7 + 10) = 1;
      }

      if (v38)
      {
        v44 = *(v16[6] + 4 * result);
        if ((*(v16[11] + ((v44 >> 3) & 0x1FFFFFFC)) >> v44))
        {
          *(*a7 + 11) = 1;
        }
      }
    }

    else if (a3 == 3)
    {
      if (v38)
      {
        *(*a7 + 11) = 1;
      }

      if (v37)
      {
        if (v17 == 1 || (v39 = v17 + *(v16[6] + 4 * result) - 2, ((*(v16[11] + 4 * (v39 >> 5)) >> v39) & 1) != 0))
        {
          *(*a7 + 10) = 1;
        }
      }
    }
  }

  else
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return result;
      }

      --v21;
    }

    else
    {
      if (v37)
      {
        *(*a7 + 10) = 1;
      }

      if (v38)
      {
        *(*a7 + 12 * (v21 - 1) + 11) = 1;
      }
    }

    if (v21 > a3)
    {
      v40 = v21 - a3;
      v41 = 11;
      v42 = 1;
      do
      {
        v43 = a3 + v42 + *(v16[6] + 4 * result) - 1;
        if ((*(v16[11] + 4 * (v43 >> 5)) >> v43))
        {
          if (v38)
          {
            *(*a7 + v41) = 1;
          }

          if (v37)
          {
            *(*a7 + 12 * v42 + 10) = 1;
          }
        }

        v41 += 12;
        ++v42;
        --v40;
      }

      while (v40);
    }
  }

  return result;
}

uint64_t HashProbeKEV<unsigned int,DgnArray<OpaquePelIdAndDurId>,Voc>::HashProbeKEV(uint64_t a1, const char *a2, int a3)
{
  HashProbeBase::HashProbeBase(a1, a2);
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v6 = RoundUpToPowerOf2(a3, (v5 + 8));
  *a1 = 0;
  *(a1 + 4) = v6;
  HashProbeKEV<unsigned int,DgnArray<OpaquePelIdAndDurId>,Voc>::initBuckets(a1);
  *(a1 + 32) = 0;
  return a1;
}

void sub_2626A1D90(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

_DWORD *HashProbeKEV<unsigned int,DgnArray<OpaquePelIdAndDurId>,Voc>::initBuckets(_DWORD *result)
{
  v1 = result;
  v2 = result[1];
  v3 = result[7];
  if (v2 <= v3)
  {
    result[6] = v2;
    v4 = result + 6;
    if (!v2)
    {
      return result;
    }
  }

  else
  {
    result = DgnPrimArray<unsigned int>::reallocElts((result + 4), v2 - v3, 0);
    v1[6] = v2;
    v4 = v1 + 6;
  }

  v5 = 0;
  v6 = *(v1 + 2);
  do
  {
    *(v6 + 4 * v5++) = -1;
  }

  while (v5 < *v4);
  return result;
}

void *DgnIOwnArray<WordNgramTemplate *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<WordNgramTemplate>(*(*a1 + v3));
      *(*a1 + v3) = 0;
      v3 -= 8;
    }

    while (v3 != -8);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

uint64_t DgnDelete<WordNgramTemplate>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    DgnPrimArray<unsigned int>::~DgnPrimArray(result + 144);
    Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::~Hash((v1 + 4));

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::~Hash(uint64_t a1)
{
  *a1 = &unk_287523F78;
  if (*(a1 + 8))
  {
    Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  return MrecInitModule_sdpres_sdapi();
}

uint64_t Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::removeAll(uint64_t result)
{
  v1 = result;
  v2 = *(result + 88);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(v1 + 80);
      v5 = *(v4 + 8 * i);
      if (v5)
      {
        do
        {
          v6 = *v5;
          v7 = *(v1 + 96);
          if (v7)
          {
            result = v7(v5 + 12);
          }

          v8 = *(v1 + 104);
          if (v8)
          {
            result = v8(v5 + 2);
          }

          *v5 = *(v1 + 32);
          *(v1 + 32) = v5;
          v5 = v6;
        }

        while (v6);
        v4 = *(v1 + 80);
        v2 = *(v1 + 88);
      }

      *(v4 + 8 * i) = 0;
    }
  }

  *(v1 + 8) = 0;
  return result;
}

void Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::~Hash(uint64_t a1)
{
  Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::~Hash(a1);

  JUMPOUT(0x26672B1B0);
}

uint64_t HashProbeKEV<unsigned int,DgnArray<OpaquePelIdAndDurId>,Voc>::upSize(uint64_t a1, int a2)
{
  v22 = 0;
  RoundUpToPowerOf2(a2, &v22);
  v20 = 0;
  v21 = 0;
  DgnPrimArray<int>::copyArraySlice(&v20, (a1 + 16), 0, *(a1 + 24));
  v4 = *(a1 + 16);
  if (v4)
  {
    MemChunkFree(v4, 0);
    *(a1 + 16) = 0;
  }

  *(a1 + 24) = 0;
  v5 = v22;
  *(a1 + 4) = a2;
  *(a1 + 8) = v5;
  HashProbeKEV<unsigned int,DgnArray<OpaquePelIdAndDurId>,Voc>::initBuckets(a1);
  v6 = v21;
  if (v21)
  {
    v7 = 0;
    v8 = v20;
    do
    {
      v9 = *(v8 + 4 * v7);
      if (v9 != -1)
      {
        v10 = HIBYTE(v9);
        if (HIBYTE(v9))
        {
          v11 = 0;
          v12 = *&v9 & 0xFFFFFFLL;
          v13 = (*(*(a1 + 32) + 352) + 4 * (*&v9 & 0xFFFFFFLL) + 2);
          do
          {
            HIDWORD(v14) = v11;
            LODWORD(v14) = v11;
            v15 = (v14 >> 19) + *(v13 - 1);
            v16 = *v13;
            v13 += 2;
            HIDWORD(v14) = v15;
            LODWORD(v14) = v15;
            v11 = (v14 >> 19) + v16;
            ++v12;
          }

          while (v12 < (v9 & 0xFFFFFF) + HIBYTE(v9));
          v10 = -1640531527 * v11;
        }

        LODWORD(v17) = v10 >> -v22;
        if (v22)
        {
          v17 = v17;
        }

        else
        {
          v17 = 0;
        }

        v18 = *(a1 + 16);
        while (*(v18 + 4 * v17) != -1)
        {
          if (v17 + 1 == *(a1 + 4))
          {
            v17 = 0;
          }

          else
          {
            v17 = (v17 + 1);
          }
        }

        *(v18 + 4 * v17) = v9;
        v6 = v21;
      }

      ++v7;
    }

    while (v7 < v6);
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v20);
}

void sub_2626A2168(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t Voc::equalKeys(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  v3 = HIBYTE(a2);
  if (v3 == a3[2])
  {
    if (!v3)
    {
      return 1;
    }

    v4 = (*(a1 + 352) + 4 * (a2 & 0xFFFFFF) + 2);
    for (i = (*a3 + 2); *(v4 - 1) == *(i - 1) && *v4 == *i; i += 2)
    {
      v4 += 2;
      if (!--v3)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t *TransducerGrammarMgr::startupTransducerGrammarMgr(uint64_t a1)
{
  result = MemChunkAlloc(8uLL, 0);
  *result = a1;
  TransducerGrammarMgr::smpTransducerGrammarMgr = result;
  return result;
}

void TransducerGrammarMgr::printSize(TransducerGrammarMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/trgrmmgr.cpp", 67, &v32);
  if (v33)
  {
    v15 = v32;
  }

  else
  {
    v15 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, v12, v13, v14, a3, &byte_262899963, a3, &byte_262899963, v15);
  DgnString::~DgnString(&v32);
  if (a2 != -1)
  {
    xlprintf("%d ", v16, v17, v18, v19, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v16, v17, v18, v19, a3, &byte_262899963);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v20 = 4;
  }

  else
  {
    v20 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/trgrmmgr.cpp", 69, &v32);
  if (v33)
  {
    v25 = v32;
  }

  else
  {
    v25 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, v22, v23, v24, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v25, v20, v20, 0);
  DgnString::~DgnString(&v32);
  *a4 += v20;
  *a5 += v20;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/trgrmmgr.cpp", 71, &v32);
  if (v33)
  {
    v30 = v32;
  }

  else
  {
    v30 = &byte_262899963;
  }

  v31 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, v27, v28, v29, a3, &byte_262899963, (35 - a3), (35 - a3), v30, *a4, *a5, *a6);
  DgnString::~DgnString(&v32);
}

void sub_2626A23D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void OnePhonemeSyncNet::~OnePhonemeSyncNet(OnePhonemeSyncNet *this)
{
  *this = &unk_287526F30;
  HmmNet::deleteInPorts(this);

  BaseSyncNet::~BaseSyncNet(this, v2);
}

{
  OnePhonemeSyncNet::~OnePhonemeSyncNet(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t OnePhonemeSyncNet::sizeObject(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = BaseSyncNet::sizeObject(a1, a2);
  v5 = *(a1 + 64);
  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      v7 = *(*(a1 + 56) + 8 * i);
      if (v7)
      {
        v4 += sizeObject(v7, v2);
        v5 = *(a1 + 64);
      }
    }
  }

  return v4;
}

double OnePhonemeSyncNet::addEpsilonNode(OnePhonemeSyncNet *this)
{
  v1 = MemChunkAlloc(0x18uLL, 0);
  *&result = 0x100000001;
  *v1 = 0x100000001;
  *(v1 + 2) = 1310740000;
  *(v1 + 12) = 0;
  *(v1 + 5) = -65536;
  return result;
}

uint64_t OnePhonemeSyncNet::scoreNetInternal(OnePhonemeSyncNet *this, int a2, int a3, int a4, int a5, int a6)
{
  v8 = *(this + 26);
  v49 = *(this + 38);
  v50 = 0;
  if (v8)
  {
    v9 = *(this + 71) <= a3;
  }

  else
  {
    v9 = 0;
  }

  *(this + 282) = v9;
  *(this + 71) = 20000;
  v10 = BaseSyncNet::scoreIntSilNode1<false>(this, v9, *(this + 114), a3, a4, a5, a6, &v50);
  v11 = v10;
  if (v10 != 20000)
  {
    v12 = **(this + 9);
    v13 = *(v12 + 16);
    *(v12 + 8) = v10;
    *v12 = *v13;
    *(v12 + 4) = v13[1];
  }

  if (*(this + 282))
  {
    v15 = *(this + 26);
    v14 = *(this + 27);
    v16 = *(this + 56);
    v17 = *(this + 25);
    v18 = *(this + 1);
    v19 = -25056;
    goto LABEL_10;
  }

  if (*(this + 112))
  {
    v14 = *(this + 27);
    v16 = *(this + 56);
    v17 = *(this + 23);
    v15 = *(this + 24);
    v18 = *(this + 1);
    v19 = -25052;
LABEL_10:
    *(v18 + (v19 | 0x40000u)) += v16;
    v20 = v15 >> 1;
    v46 = v17;
    v47 = v17;
    do
    {
      v22 = *v14++;
      v21 = v22;
      if (v15)
      {
        v23 = *(*(v21 + v20) + v46);
      }

      else
      {
        v23 = v47;
      }

      v24 = *(*v21 + 8) != 20000;
      v25 = *(this + 1);
      v26 = *(this + 29);
      v27 = v23(v21 + v20);
      if (v27 < *(this + 71))
      {
        *(this + 71) = v27;
      }

      --v16;
    }

    while (v16);
    *(this + 281) = 1;
    v28 = *(this + 20);
    if (*(this + 114) == 1)
    {
      if (v28 >= 1)
      {
        v29 = v28 - 1;
        do
        {
          v30 = *(*(this + 9) + 8 * v29);
          v31 = *(this + 1);
          LODWORD(v48) = 0;
          BestPredWithTrace = PredStruct::getBestPredWithTrace((v30 + 16), &v48, v31 + 302936, a4);
          v33 = *(BestPredWithTrace + 4);
          *(v30 + 8) = *(BestPredWithTrace + 4);
          *v30 = *BestPredWithTrace;
          *(v30 + 4) = v48;
          if (v11 >= v33)
          {
            v11 = v33;
          }

          v34 = v29-- + 1;
        }

        while (v34 > 1);
      }
    }

    else if (v28 >= 1)
    {
      v35 = v28 - 1;
      do
      {
        v36 = *(*(this + 9) + 8 * v35);
        v48 = 0;
        v37 = ExternalOutPort::seedOutPort<false>(v36, &v48);
        if (v37 < v11)
        {
          v11 = v37;
        }

        v38 = v35-- + 1;
      }

      while (v38 > 1);
    }

    goto LABEL_34;
  }

  if (*(this + 281) == 1)
  {
    *(this + 281) = 0;
    v39 = *(this + 20);
    if (v39 >= 2)
    {
      v40 = v39 + 1;
      v41 = (*(this + 9) + 8 * v39 - 8);
      do
      {
        v42 = *v41--;
        *(v42 + 8) = 20000;
        --v40;
      }

      while (v40 > 2);
    }
  }

LABEL_34:
  v43 = *(this + 1) + 299008;
  *(v43 + 3572) = *(*(this + 1) + 302580) + 1;
  *(v43 + 3592) += v50;
  *(this + 26) = v49;
  result = (*(*this + 328))(this);
  *(this + 55) = result;
  *(this + 54) = v11;
  v45 = *(this + 1);
  if (v11 < *(v45 + 246))
  {
    *(v45 + 246) = v11;
  }

  return result;
}

uint64_t BaseSyncNet::scoreIntSilNode1<false>(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, _DWORD *a8)
{
  *(a1 + 113) = 0;
  v14 = (a1 + 113);
  v25 = -1;
  v15 = *(a1 + 152);
  if (!a2)
  {
    BestPredWithTrace = 0;
    goto LABEL_12;
  }

  if (a3)
  {
    BestPredWithTrace = PredStruct::getBestPredWithTrace((a1 + 264), &v25, *(a1 + 8) + 302936, a4);
  }

  else
  {
    v18 = *(a1 + 272);
    if (v18 == 1)
    {
      BestPredWithTrace = *(a1 + 264);
    }

    else
    {
      v19 = *(a1 + 264);
      v20 = (v18 - 1);
      BestPredWithTrace = *(v19 + 8 * v20);
      v21 = *(BestPredWithTrace + 4);
      v22 = v19 - 8;
      do
      {
        if (v21 >= *(*(v22 + 8 * v20) + 8))
        {
          BestPredWithTrace = *(v22 + 8 * v20);
          v21 = *(BestPredWithTrace + 4);
        }

        --v20;
      }

      while (v20);
    }
  }

  if (*(BestPredWithTrace + 4) > a4)
  {
LABEL_12:
    if (!v15)
    {
      *(a1 + 248) = 1310740000;
      return 20000;
    }

    v23 = 1;
    if (a3)
    {
      goto LABEL_14;
    }

LABEL_17:
    Node::scoreNodeWithPattern(a1 + 240, BestPredWithTrace, v23, a5, a6, *(a1 + 8), 0, a7, v14, a1);
    goto LABEL_18;
  }

  v23 = (v15 != 0) | 0x20;
  if (!a3)
  {
    goto LABEL_17;
  }

LABEL_14:
  Node::scoreNodeWithPatternNBest(a1 + 240, BestPredWithTrace, v25, v23, a5, a6, *(a1 + 8), 0, a7, v14, a1);
LABEL_18:
  ++*a8;
  return *(a1 + 248);
}

uint64_t ExternalOutPort::seedOutPort<false>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  if (v2 == 1)
  {
    v3 = *(a1 + 16);
  }

  else
  {
    v4 = *(a1 + 16);
    v5 = (v2 - 1);
    v3 = *(v4 + 8 * v5);
    v6 = *(v3 + 8);
    v7 = v4 - 8;
    do
    {
      if (v6 >= *(*(v7 + 8 * v5) + 8))
      {
        v3 = *(v7 + 8 * v5);
        v6 = *(v3 + 8);
      }

      --v5;
    }

    while (v5);
  }

  v8 = *(v3 + 8);
  *(a1 + 8) = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 4) = *(v3 + 4);
  *a2 = v3;
  return v8;
}

uint64_t OnePhonemeSyncNet::thresholdNetInternal(OnePhonemeSyncNet *this, uint64_t a2, int a3)
{
  result = BaseSyncNet::scoreIntSilNode2(this, a2, a3);
  *(this + 26) = 1;
  if (*(this + 55) > a3)
  {
    *(this + 26) = 0;
    *(this + 55) = 20000;
  }

  return result;
}

uint64_t OnePhonemeSyncNet::calcNumActiveNodes(OnePhonemeSyncNet *this, int a2)
{
  v2 = *(this + 38);
  if (*(this + 71) <= a2)
  {
    v3 = *(this + 56);
    if (v3)
    {
      v5 = *(this + 27);
      do
      {
        v6 = *v5++;
        v2 = Sequence::calcNumActiveNodes(v6, a2) + v2;
        --v3;
      }

      while (v3);
    }
  }

  return v2;
}

uint64_t *OnePhonemeSyncNet::addNodesSequential(uint64_t a1, Sequence *a2, int a3)
{
  if (a3 == 2)
  {
    v5 = Sequence::newSequence(a2);
    v6 = *(a1 + 224);
    if (v6 == *(a1 + 228))
    {
      DgnPrimArray<unsigned long long>::reallocElts(a1 + 216, 1, 1);
      v6 = *(a1 + 224);
    }

    *(*(a1 + 216) + 8 * v6) = v5;
    *(a1 + 224) = v6 + 1;
    return v5 + 2;
  }

  else if (a3)
  {
    return 0;
  }

  else
  {
    result = (a1 + 240);
    *(a1 + 280) = 1;
  }

  return result;
}

uint64_t BaseSyncNet::addCallBack(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  *(result + 160) = a2;
  *(result + 168) = a3;
  *(result + 176) = a4;
  return result;
}

uint64_t *Sequence::newSequence(Sequence *this)
{
  v1 = this;
  result = MemChunkAlloc(24 * this + 16, 0);
  *result = 0;
  *(result + 4) = 0;
  *(result + 5) = v1;
  if (v1)
  {
    v3 = result + 3;
    v4 = v1;
    do
    {
      *(v3 - 1) = 0x100000001;
      *v3 = 1310740000;
      *(v3 + 4) = 0;
      *(v3 + 3) = -65536;
      v3 += 3;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t ustrcmp(_BYTE *a1, unsigned __int8 *a2)
{
  while (1)
  {
    v2 = *a1;
    if (!*a1)
    {
      break;
    }

    ++a1;
    v3 = *a2++;
    v4 = (v2 - v3);
    if (v4)
    {
      return v4;
    }
  }

  return -*a2;
}

uint64_t ustrncmp(_BYTE *a1, unsigned __int8 *a2, int a3)
{
  while (1)
  {
    if (!a3)
    {
      return 0;
    }

    v3 = *a1;
    if (!*a1)
    {
      break;
    }

    ++a1;
    v4 = *a2++;
    --a3;
    v5 = (v3 - v4);
    if (v5)
    {
      return v5;
    }
  }

  return -*a2;
}

uint64_t Uns8StringLength(uint64_t result)
{
  v1 = result;
  LODWORD(result) = -1;
  do
  {
    result = (result + 1);
  }

  while (*(v1 + result));
  return result;
}

uint64_t Uns32StringLength(uint64_t result)
{
  v1 = result;
  LODWORD(result) = -1;
  do
  {
    result = (result + 1);
  }

  while (*(v1 + 4 * result));
  return result;
}

uint64_t isValidName(const char *a1)
{
  v1 = *a1;
  if ((v1 & 0x8000000000000000) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v1 + 60) & 0x500) != 0)
  {
    v2 = *(a1 + 1);
    if (!a1[1])
    {
      return 1;
    }

    v3 = a1 + 2;
    while ((v2 & 0x80) == 0 && ((*(MEMORY[0x277D85DE0] + 4 * v2 + 60) & 0x500) != 0 || v2 == 95))
    {
      v4 = *v3++;
      v2 = v4;
      if (!v4)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t isValidRestrictedName(const char *a1)
{
  result = isValidName(a1);
  if (result)
  {
    return *a1 - 58 < 0xFFFFFFF6;
  }

  return result;
}

uint64_t SDColl_StringCompare(unint64_t a1, unint64_t a2, CharInfo *a3, CharInfo *a4)
{
  v8 = SdapiInsurance::SdapiInsurance(v26, "SDColl_StringCompare", 1, 1, 39);
  if (v26[97] == 1)
  {
    if (!a3)
    {
      throwBadStringPointer(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    v27 = 0;
    if (!a4)
    {
      throwBadStringPointer(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    v27 = 0;
    if (gbShowCalls == 1)
    {
      xlprintf("Entering sdapi call %.500s(<SDh %lld>, <SDh %lld>, '%.500s', '%.500s')\n", v9, v10, v11, v12, "SDColl_StringCompare", a1, a2, a3, a4);
    }

    v16 = ModelMgr::smpModelMgr;
    if (HIDWORD(a1) || (a1 & 0xFFFF0000) != 0)
    {
      throwBadSdapiArgument("SDhVoc", a1, v10, v11, v12, v13, v14, v15);
    }

    if (a1 - 1 >= 0x7B)
    {
      throwBadSdapiArgument("SDhVoc", a1, v10, v11, v12, v13, v14, v15);
    }

    v23 = *(ModelMgr::getVocOrThrow(v16, a1, v10, v11, v12, v13, v14, v15) + 16);
    if (a2 == -1)
    {
      LOWORD(a2) = -1;
    }

    else if (a2 == -2)
    {
      LOWORD(a2) = -2;
    }

    else
    {
      if (HIDWORD(a2) || (a2 & 0xFFFF0000) != 0)
      {
        throwBadSdapiArgument("SDhColl", a2, v17, v18, v19, v20, v21, v22);
      }

      if (a2 == 0xFFFF || !a2)
      {
        throwBadSdapiArgument("SDhColl", a2, v17, v18, v19, v20, v21, v22);
      }
    }

    v24 = CollMgr::collStrcmpUns8(v23, a2, a3, a4, v19, v20, v21, v22);
  }

  else
  {
    v24 = 0;
  }

  SdapiInsurance::~SdapiInsurance(v26);
  return v24;
}

void MrecInitModule_wavedata_frame(void)
{
  if (!gParDebugWaveCompression)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugWaveCompression", byte_262888354, byte_262888354, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugWaveCompression = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugWaveCompression);
  }
}

void WaveData::WaveData(WaveData *this, const WaveData *a2)
{
  BitArray::BitArray(this, a2);
  v4 = *(a2 + 12);
  *(v5 + 32) = 0;
  *(v5 + 24) = v4;
  *(v5 + 26) = 0;
  *(v5 + 28) = 0;
  *(v5 + 16) = *(a2 + 4);
  *(v5 + 20) = 0;
  *(v5 + 40) = 0;
  *(v5 + 52) = *(a2 + 26);
  DgnPrimFixArray<short>::copyArraySlice((v5 + 32), a2 + 4, 0, *(a2 + 10));
  *(this + 12) = *(a2 + 12);
  *(this + 7) = *(a2 + 7);
}

void sub_2626A30A8(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  BitArray::~BitArray(v1);
  _Unwind_Resume(a1);
}

void WaveData::~WaveData(WaveData *this)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 32);

  BitArray::~BitArray(this);
}

uint64_t *DgnPrimFixArray<short>::copyArraySlice(uint64_t *result, uint64_t *a2, unsigned int a3, unsigned int a4)
{
  v7 = result;
  if (!a4 || *(result + 2))
  {
    if (!a4)
    {
      return result;
    }
  }

  else
  {
    result = MemChunkAlloc(2 * a4, 0);
    *v7 = result;
    *(v7 + 2) = a4;
  }

  v8 = *a2;
  v9 = *v7;
  v10 = a4;
  do
  {
    *v9++ = *(v8 + 2 * a3++);
    --v10;
  }

  while (v10);
  return result;
}

unint64_t DgnPRandom::normalizedNext(DgnPRandom *this, unsigned int a2)
{
  v2 = *(this + 58);
  v3 = *(this + v2 + 1) + *(this + *(this + 57) + 1);
  *(this + v2 + 1) = v3;
  v4 = vadd_s32(*(this + 228), -1);
  *(this + 228) = vbsl_s8(vceqz_s32(v4), 0x3700000037, v4);
  return (v3 * a2) >> 32;
}

uint64_t DgnPRandom::initialize(uint64_t this, int a2)
{
  v2 = &sPRandTable;
  for (i = 224; i != 4; i -= 4)
  {
    v4 = *v2++;
    *(this + i) = v4;
  }

  *(this + 228) = 0x3700000018;
  if (a2)
  {
    *(this + 8) = a2;
  }

  *this = 1;
  v5 = a2 + 10001;
  v6 = 24;
  v7 = 55;
  do
  {
    *(this + 4 + 4 * v7) += *(this + 4 + 4 * v6);
    v8 = vadd_s32(*(this + 228), -1);
    v9 = vbsl_s8(vceqz_s32(v8), 0x3700000037, v8);
    *(this + 228) = v9;
    v7 = v9.i32[1];
    v6 = v9.i32[0];
    --v5;
  }

  while (v5 > 1);
  return this;
}

void IntruderSet::~IntruderSet(IntruderSet *this)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 112);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 96);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 80);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 64);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 32);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 16);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this);
}

uint64_t writeObject<DgnPrimArray<unsigned char>>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = writeObject<unsigned char>(a1, *a2 + v7, a3);
      ++v8;
      v7 += 16;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

void readObject<DgnPrimArray<unsigned char>>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v16 = 0;
  readObject(a1, &v16, a3);
  v6 = v16;
  v7 = *(a2 + 12);
  if (v16 > v7)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a2, v16 - v7, 0);
  }

  v8 = *(a2 + 8);
  if (v8 <= v6)
  {
    if (v8 < v6)
    {
      v11 = v6 - v8;
      v12 = 16 * v8;
      do
      {
        v13 = (*a2 + v12);
        *v13 = 0;
        v13[1] = 0;
        v12 += 16;
        --v11;
      }

      while (v11);
    }
  }

  else if (v8 > v6)
  {
    v9 = v8;
    v10 = 16 * v8 - 16;
    do
    {
      --v9;
      DgnPrimArray<unsigned int>::~DgnPrimArray(*a2 + v10);
      v10 -= 16;
    }

    while (v9 > v6);
  }

  *(a2 + 8) = v6;
  if (v6)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      readObject<unsigned char>(a1, *a2 + v14, a3);
      ++v15;
      v14 += 16;
    }

    while (v15 < *(a2 + 8));
  }
}

uint64_t IntruderSet::sizeObject(uint64_t a1, int a2)
{
  v4 = sizeObject<DgnPrimArray<unsigned char>>(a1, a2);
  v5 = sizeObject<unsigned short>(a1 + 16, a2) + v4;
  v6 = sizeObject<unsigned short>(a1 + 32, a2);
  v7 = v5 + v6 + sizeObject<unsigned int>(a1 + 48, a2);
  v8 = sizeObject<unsigned int>(a1 + 64, a2);
  v9 = v8 + sizeObject<unsigned short>(a1 + 80, a2);
  v10 = v7 + v9 + sizeObject<unsigned short>(a1 + 96, a2);
  return v10 + sizeObject<unsigned short>(a1 + 112, a2);
}

uint64_t sizeObject<DgnPrimArray<unsigned char>>(uint64_t a1, int a2)
{
  v2 = 0;
  v10[0] = 0;
  v10[1] = 0;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v3 = 12;
  }

  else
  {
    v3 = 16;
  }

  if (a2 != 3)
  {
    if ((a2 & 0xFFFFFFFE) == 2)
    {
      v2 = v3;
    }

    else
    {
      v6 = *(a1 + 8);
      v2 = v3;
      if (v6 >= 1)
      {
        v7 = v6 + 1;
        v8 = 16 * v6 - 16;
        v2 = v3;
        do
        {
          v2 += sizeObject<unsigned char>(*a1 + v8, a2);
          --v7;
          v8 -= 16;
        }

        while (v7 > 1);
      }

      if (!a2)
      {
        v2 += v3 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v10);
  return v2;
}

void IntruderMgr::~IntruderMgr(IntruderMgr *this)
{
  *(this + 1) = 0;
  DgnDelete<PelScorer>(*(this + 2));
  *(this + 2) = 0;
  *(this + 17) = 0;
  *(this + 44) = 0;
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 176);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 160);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 144);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 128);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 112);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 96);
  DgnIOwnArray<IntruderSet *>::releaseAll(this + 72);
  AdaptConfig::clear(this + 5);
  FileSpec::~FileSpec((this + 24));
}

void IntruderMgr::printSize(IntruderMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 388, &v154);
  if (v155)
  {
    v16 = v154;
  }

  else
  {
    v16 = &unk_262888448;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_262888448, a3, &unk_262888448, v16);
  DgnString::~DgnString(&v154);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_262888448);
  v21 = (a3 + 1);
  v22 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 389, &v154);
  if (v155)
  {
    v27 = v154;
  }

  else
  {
    v27 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v24, v25, v26, (a3 + 1), &unk_262888448, (34 - a3), (34 - a3), v27, 2, 2, 0);
  DgnString::~DgnString(&v154);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 390, &v154);
  if (v155)
  {
    v32 = v154;
  }

  else
  {
    v32 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, v29, v30, v31, (a3 + 1), &unk_262888448, (34 - a3), (34 - a3), v32, 4, 4, 0);
  DgnString::~DgnString(&v154);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v33 = 4;
  }

  else
  {
    v33 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 391, &v154);
  if (v155)
  {
    v38 = v154;
  }

  else
  {
    v38 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, v35, v36, v37, (a3 + 1), &unk_262888448, (34 - a3), (34 - a3), v38, v33, v33, 0);
  DgnString::~DgnString(&v154);
  *a4 += v33;
  *a5 += v33;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v39 = 4;
  }

  else
  {
    v39 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 392, &v154);
  if (v155)
  {
    v44 = v154;
  }

  else
  {
    v44 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, v41, v42, v43, (a3 + 1), &unk_262888448, (34 - a3), (34 - a3), v44, v39, v39, 0);
  v153 = a3;
  DgnString::~DgnString(&v154);
  *a4 += v39;
  *a5 += v39;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v45 = 4;
  }

  else
  {
    v45 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 393, &v154);
  if (v155)
  {
    v50 = v154;
  }

  else
  {
    v50 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v46, v47, v48, v49, (a3 + 1), &unk_262888448, (34 - a3), (34 - a3), v50, v45, v45, 0);
  DgnString::~DgnString(&v154);
  *a4 += v45;
  *a5 += v45;
  v51 = sizeObject(this + 40, 0);
  v52 = sizeObject(this + 40, 1);
  v53 = sizeObject(this + 40, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 394, &v154);
  if (v155)
  {
    v58 = v154;
  }

  else
  {
    v58 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v54, v55, v56, v57, v21, &unk_262888448, v22, v22, v58, v51, v52, v53);
  DgnString::~DgnString(&v154);
  *a4 += v51;
  *a5 += v52;
  *a6 += v53;
  v59 = FileSpec::sizeObject(this + 24);
  v60 = FileSpec::sizeObject(this + 24);
  v61 = FileSpec::sizeObject(this + 24);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 395, &v154);
  if (v155)
  {
    v66 = v154;
  }

  else
  {
    v66 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v62, v63, v64, v65, v21, &unk_262888448, v22, v22, v66, v59, v60, v61);
  DgnString::~DgnString(&v154);
  *a4 += v59;
  *a5 += v60;
  *a6 += v61;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 397, &v154);
  if (v155)
  {
    v71 = v154;
  }

  else
  {
    v71 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v67, v68, v69, v70, v21, &unk_262888448, v22, v22, v71, 4, 4, 0);
  DgnString::~DgnString(&v154);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 399, &v154);
  if (v155)
  {
    v76 = v154;
  }

  else
  {
    v76 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v72, v73, v74, v75, v21, &unk_262888448, v22, v22, v76, 4, 4, 0);
  DgnString::~DgnString(&v154);
  *a4 += 4;
  *a5 += 4;
  v77 = sizeObject<IntruderSet *>(this + 72, 0);
  v78 = sizeObject<IntruderSet *>(this + 72, 1);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 401, &v154);
  if (v155)
  {
    v83 = v154;
  }

  else
  {
    v83 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v79, v80, v81, v82, v21, &unk_262888448, v22, v22, v83, v77, v78, 0);
  DgnString::~DgnString(&v154);
  *a4 += v77;
  *a5 += v78;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v84 = 12;
  }

  else
  {
    v84 = 16;
  }

  v85 = *(this + 26);
  v86 = *(this + 27);
  if (v86 >= v85)
  {
    v87 = 0;
    if (v85 > 0)
    {
      v84 += 8 * (v85 - 1) + 8;
    }

    v88 = v84 + 8 * (v86 - v85);
  }

  else
  {
    v87 = 8 * v85;
    v88 = v84;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 403, &v154);
  if (v155)
  {
    v93 = v154;
  }

  else
  {
    v93 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v89, v90, v91, v92, v21, &unk_262888448, v22, v22, v93, v88, v84, v87);
  DgnString::~DgnString(&v154);
  *a4 += v88;
  *a5 += v84;
  *a6 += v87;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v94 = 12;
  }

  else
  {
    v94 = 16;
  }

  v95 = *(this + 30);
  v96 = *(this + 31);
  if (v96 >= v95)
  {
    v97 = 0;
    if (v95 > 0)
    {
      v94 += 8 * (v95 - 1) + 8;
    }

    v98 = v94 + 8 * (v96 - v95);
  }

  else
  {
    v97 = 8 * v95;
    v98 = v94;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 405, &v154);
  if (v155)
  {
    v103 = v154;
  }

  else
  {
    v103 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v99, v100, v101, v102, v21, &unk_262888448, v22, v22, v103, v98, v94, v97);
  DgnString::~DgnString(&v154);
  *a4 += v98;
  *a5 += v94;
  *a6 += v97;
  v104 = sizeObject<DgnPrimArray<double>>(this + 128, 0);
  v105 = sizeObject<DgnPrimArray<double>>(this + 128, 1);
  v154 = 0;
  v155 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v154);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 407, &v154);
  if (v155)
  {
    v110 = v154;
  }

  else
  {
    v110 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v106, v107, v108, v109, v21, &unk_262888448, v22, v22, v110, v104, v105, 0);
  DgnString::~DgnString(&v154);
  *a4 += v104;
  *a5 += v105;
  v111 = sizeObject<DgnPrimArray<double>>(this + 144, 0);
  v112 = sizeObject<DgnPrimArray<double>>(this + 144, 1);
  v154 = 0;
  v155 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v154);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 409, &v154);
  if (v155)
  {
    v117 = v154;
  }

  else
  {
    v117 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v113, v114, v115, v116, v21, &unk_262888448, v22, v22, v117, v111, v112, 0);
  DgnString::~DgnString(&v154);
  *a4 += v111;
  *a5 += v112;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 411, &v154);
  if (v155)
  {
    v122 = v154;
  }

  else
  {
    v122 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v118, v119, v120, v121, v21, &unk_262888448, v22, v22, v122, 1, 1, 0);
  DgnString::~DgnString(&v154);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 413, &v154);
  if (v155)
  {
    v127 = v154;
  }

  else
  {
    v127 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v123, v124, v125, v126, v21, &unk_262888448, v22, v22, v127, 1, 1, 0);
  DgnString::~DgnString(&v154);
  ++*a4;
  ++*a5;
  v128 = sizeObject<DgnPrimArray<unsigned int>>(this + 160, 0);
  v129 = sizeObject<DgnPrimArray<unsigned int>>(this + 160, 1);
  v154 = 0;
  v155 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v154);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 414, &v154);
  if (v155)
  {
    v134 = v154;
  }

  else
  {
    v134 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v130, v131, v132, v133, v21, &unk_262888448, v22, v22, v134, v128, v129, 0);
  DgnString::~DgnString(&v154);
  *a4 += v128;
  *a5 += v129;
  v135 = sizeObject<DgnPrimArray<unsigned int>>(this + 176, 0);
  v136 = sizeObject<DgnPrimArray<unsigned int>>(this + 176, 1);
  v154 = 0;
  v155 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v154);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 415, &v154);
  if (v155)
  {
    v141 = v154;
  }

  else
  {
    v141 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v137, v138, v139, v140, v21, &unk_262888448, v22, v22, v141, v135, v136, 0);
  DgnString::~DgnString(&v154);
  *a4 += v135;
  *a5 += v136;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 416, &v154);
  if (v155)
  {
    v146 = v154;
  }

  else
  {
    v146 = &unk_262888448;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v142, v143, v144, v145, v21, &unk_262888448, v22, v22, v146, 8, 8, 0);
  DgnString::~DgnString(&v154);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/intruder.cpp", 417, &v154);
  if (v155)
  {
    v151 = v154;
  }

  else
  {
    v151 = &unk_262888448;
  }

  v152 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v147, v148, v149, v150, v153, &unk_262888448, (35 - v153), (35 - v153), v151, *a4, *a5, *a6);
  DgnString::~DgnString(&v154);
}

void sub_2626A4224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<IntruderSet *>(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  v4 = gShadowDiagnosticShowIdealizedObjectSizes;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 12;
  }

  else
  {
    v2 = 16;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v6 = *(a1 + 8);
    if (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = gShadowDiagnosticShowIdealizedObjectSizes;
      do
      {
        if (v8)
        {
          v9 = 4;
        }

        else
        {
          v9 = 8;
        }

        v10 = *(*a1 + 8 * v7);
        if (v10)
        {
          v9 += IntruderSet::sizeObject(v10, a2);
          v8 = gShadowDiagnosticShowIdealizedObjectSizes;
        }

        v2 += v9;
        v11 = v7-- + 1;
      }

      while (v11 > 1);
    }

    if (!a2)
    {
      v12 = 2;
      if ((v4 & 1) == 0)
      {
        v12 = 3;
      }

      v2 += (*(a1 + 12) - *(a1 + 8)) << v12;
    }
  }

  return v2;
}

uint64_t DgnArray<DgnPrimArray<unsigned char>>::copyArraySlice(uint64_t result, void *a2, unsigned int a3, unsigned int a4)
{
  v7 = result;
  v8 = *(result + 8);
  if (v8 >= 1)
  {
    v9 = 16 * v8 - 16;
    do
    {
      result = DgnPrimArray<unsigned int>::~DgnPrimArray(*v7 + v9);
      v9 -= 16;
    }

    while (v9 != -16);
  }

  *(v7 + 8) = 0;
  v10 = *(v7 + 12);
  if (a4 <= v10)
  {
    v11 = 0;
    v12 = 0;
    if (!a4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(v7, a4 - v10, 0);
    v11 = *(v7 + 8);
  }

  v13 = a4;
  v12 = v11;
  do
  {
    v14 = *a2 + 16 * a3;
    v15 = (*v7 + 16 * v12);
    *v15 = 0;
    v15[1] = 0;
    result = DgnPrimArray<unsigned char>::copyArraySlice(v15, v14, 0, *(v14 + 8));
    v12 = *(v7 + 8) + 1;
    *(v7 + 8) = v12;
    ++a3;
    --v13;
  }

  while (v13);
  if (v12 > a4)
  {
    if (v12 > a4)
    {
      v16 = v12;
      v17 = 16 * v12 - 16;
      do
      {
        --v16;
        result = DgnPrimArray<unsigned int>::~DgnPrimArray(*v7 + v17);
        v17 -= 16;
      }

      while (v16 > a4);
    }

    goto LABEL_17;
  }

LABEL_14:
  if (v12 < a4)
  {
    v18 = a4 - v12;
    v19 = 16 * v12;
    do
    {
      v20 = (*v7 + v19);
      *v20 = 0;
      v20[1] = 0;
      v19 += 16;
      --v18;
    }

    while (v18);
  }

LABEL_17:
  *(v7 + 8) = a4;
  return result;
}

void *DgnIOwnArray<IntruderSet *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<IntruderSet>(*(*a1 + v3));
      *(*a1 + v3) = 0;
      v3 -= 8;
    }

    while (v3 != -8);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

uint64_t TInputStream::verifyVersion(TInputStream *this, char *a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v14 = std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::find<std::string>(this + 152, __p);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (this + 160 != v14)
  {
    LOBYTE(__p[0]) = 0;
    v15 = (v14 + 56);
    if (v14[79] < 0)
    {
      v15 = *v15;
    }

    {
      operator new();
    }

    v16 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v15, __p);
    if (LOBYTE(__p[0]) == 1)
    {
      v17 = (this + 16);
      if (*(this + 39) < 0)
      {
        v17 = *v17;
      }

      tknPrintf("Error: %s : Expected %s in range [%llu,%llu]\n", v10, v11, v12, v13, v17, a2, a3, a4);
      return 1;
    }

    a5 = v16;
  }

  if (a5 >= a3 && a5 <= a4)
  {
    return 0;
  }

  v19 = (this + 16);
  if (*(this + 39) < 0)
  {
    v19 = *v19;
  }

  tknPrintf("Error: %s : %llu : Expected %s in range [%llu,%llu]\n", v10, v11, v12, v13, v19, a5, a2, a3, a4);
  return 1;
}

void sub_2626A46A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  MEMORY[0x26672B1B0](v19, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

uint64_t TInputStream::verifyHeader(uint64_t a1, char *__s, uint64_t a3, uint64_t a4)
{
  v8 = (a1 + 40);
  v9 = strlen(__s);
  v13 = v9;
  v14 = *(a1 + 63);
  if (v14 < 0)
  {
    if (v9 != *(a1 + 48))
    {
      goto LABEL_8;
    }

    if (v9 == -1)
    {
      std::wstring::__throw_out_of_range[abi:ne200100]();
    }

    v15 = *v8;
  }

  else
  {
    v15 = v8;
    if (v13 != v14)
    {
LABEL_8:
      v16 = (a1 + 16);
      if (*(a1 + 39) < 0)
      {
        v16 = *v16;
        if ((v14 & 0x80000000) == 0)
        {
          goto LABEL_10;
        }
      }

      else if ((v14 & 0x80000000) == 0)
      {
LABEL_10:
        tknPrintf("Error: File '%s' : '%s' : Bad file type, expected '%s'\n", v10, v13, v11, v12, v16, v8, __s);
        return 1;
      }

      v8 = *v8;
      goto LABEL_10;
    }
  }

  if (memcmp(v15, __s, v13))
  {
    goto LABEL_8;
  }

  if (!a4)
  {
LABEL_36:
    v28 = (a1 + 16);
    if (*(a1 + 39) < 0)
    {
      v28 = *v28;
    }

    v29 = (a1 + 72);
    if (*(a1 + 95) < 0)
    {
      v29 = *v29;
    }

    tknPrintf("Error: File '%s' : '%s' : Unsupported file version prefix. Supported file versions: ", v10, v13, v11, v12, v28, v29);
    if (a4)
    {
      v34 = (a3 + 24);
      v35 = 1;
      do
      {
        if (!*(v34 - 2))
        {
          if ((v35 & 1) == 0)
          {
            tknPrintString(", ");
          }

          if (**(v34 - 1))
          {
            tknPrintf("%s.", v30, v31, v32, v33, *(v34 - 1));
          }

          tknPrintf("%llu", v30, v31, v32, v33, *v34);
          v35 = 0;
        }

        v34 += 4;
        --a4;
      }

      while (a4);
    }

    tknPrintString("\n");
    return 1;
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = *(a1 + 95);
  v38 = a3;
  v22 = (a3 + 24);
  v23 = a4;
  do
  {
    v24 = strlen(*(v22 - 1));
    v13 = v24;
    if ((v21 & 0x80) != 0)
    {
      if (v24 != *(a1 + 80))
      {
        goto LABEL_30;
      }

      if (v24 == -1)
      {
        std::wstring::__throw_out_of_range[abi:ne200100]();
      }

      v25 = *(a1 + 72);
    }

    else
    {
      v25 = (a1 + 72);
      if (v13 != v21)
      {
        goto LABEL_30;
      }
    }

    if (!memcmp(v25, *(v22 - 1), v13))
    {
      if (*(a1 + 96) == *v22)
      {
        v23 = v18;
      }

      if (v20)
      {
        v26 = v20;
      }

      else
      {
        v26 = *v22;
      }

      if (!*(v22 - 2))
      {
        v20 = v26;
        v19 = *v22;
      }
    }

LABEL_30:
    ++v18;
    v22 += 4;
  }

  while (a4 != v18);
  a3 = v38;
  if (!v20)
  {
    goto LABEL_36;
  }

  if (v23 == a4)
  {
    v27 = (a1 + 16);
    if (*(a1 + 39) < 0)
    {
      v27 = *v27;
    }

    tknPrintf("Error: %s : %llu : Expected file version in range [%llu,%llu]\n", v10, v13, v11, v12, v27, *(a1 + 96), v20, v19);
    return 1;
  }

  v36 = *(v38 + 32 * v23 + 8);
  if (v36)
  {
    v37 = (a1 + 16);
    if (*(a1 + 39) < 0)
    {
      v37 = *v37;
    }

    tknPrintf("Error: %s : %llu : Deprecated in or around TextProc version %s. Expected file version in range [%llu,%llu]\n", v10, v13, v11, v12, v37, *(a1 + 96), v36, v20, v19);
    return 1;
  }

  return 0;
}

uint64_t TInputStream::readHeader(std::string *this)
{
  v254 = *MEMORY[0x277D85DE8];
  if (this->__r_.__value_.__s.__data_[8] != 1)
  {
    v2 = 0;
    goto LABEL_269;
  }

  MEMORY[0x26672AEC0](&this[3], &byte_262899963);
  this[4].__r_.__value_.__r.__words[0] = 1;
  if (this[2].__r_.__value_.__s.__data_[15] < 0)
  {
    *this[1].__r_.__value_.__r.__words[2] = 0;
    this[2].__r_.__value_.__r.__words[0] = 0;
  }

  else
  {
    this[1].__r_.__value_.__s.__data_[16] = 0;
    this[2].__r_.__value_.__s.__data_[15] = 0;
  }

  std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::destroy(&this[6].__r_.__value_.__l.__size_, this[6].__r_.__value_.__r.__words[2]);
  this[6].__r_.__value_.__l.__size_ = &this[6].__r_.__value_.__r.__words[2];
  this[7].__r_.__value_.__r.__words[0] = 0;
  this[6].__r_.__value_.__r.__words[2] = 0;
  v3 = this->__r_.__value_.__r.__words[0];
  std::istream::tellg();
  v4 = v241;
  __s1 = v252;
  v251 = xmmword_26286B6F0;
  v253 = 1;
  TInputStream::getNextLine(this, &__s1);
  if (*(&v251 + 1) >= v251)
  {
    if (v253)
    {
      __str[0].__r_.__value_.__s.__data_[0] = 0;
      TBuffer<char>::insert(&__s1, *(&v251 + 1), __str, 1uLL);
      --*(&v251 + 1);
    }

    else if (v251)
    {
      __s1[v251 - 1] = 0;
    }
  }

  else
  {
    __s1[*(&v251 + 1)] = 0;
  }

  v5 = __s1;
  if (!strncmp(__s1, "TKNHEADER_", 0xAuLL))
  {
    __str[0].__r_.__value_.__r.__words[0] = &__str[1];
    *&__str[0].__r_.__value_.__r.__words[1] = xmmword_26286B6F0;
    v242 = 1;
    while (1)
    {
      if (*(&v251 + 1) >= v251)
      {
        if (v253)
        {
          v247[0] = 0;
          TBuffer<char>::insert(&__s1, *(&v251 + 1), v247, 1uLL);
          --*(&v251 + 1);
        }

        else if (v251)
        {
          __s1[v251 - 1] = 0;
        }
      }

      else
      {
        __s1[*(&v251 + 1)] = 0;
      }

      NextToken = getNextToken(__s1, __str, " ");
      if (__str[0].__r_.__value_.__r.__words[2] >= __str[0].__r_.__value_.__l.__size_)
      {
        if (v242)
        {
          v247[0] = 0;
          TBuffer<char>::insert(__str, __str[0].__r_.__value_.__r.__words[2]--, v247, 1uLL);
        }

        else if (__str[0].__r_.__value_.__l.__size_)
        {
          *(__str[0].__r_.__value_.__r.__words[0] + __str[0].__r_.__value_.__l.__size_ - 1) = 0;
        }
      }

      else
      {
        *(__str[0].__r_.__value_.__r.__words[0] + __str[0].__r_.__value_.__r.__words[2]) = 0;
      }

      v7 = __str[0].__r_.__value_.__r.__words[0];
      if (!strcmp(__str[0].__r_.__value_.__l.__data_, "TKNHEADER_END"))
      {
        break;
      }

      if (!NextToken)
      {
        v88 = &this->__r_.__value_.__r.__words[2];
        if (this[1].__r_.__value_.__s.__data_[15] < 0)
        {
          v88 = *v88;
        }

        v89 = TBuffer<char>::c_str(&__s1);
        tknPrintf("Error: File '%s' : '%s' : Bad entry in file header\n", v90, v91, v92, v93, v88, v89);
        std::string::basic_string[abi:ne200100]<0>(__s, &byte_262899963);
        *v247 = byte_287529580;
        if ((__s[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(&v247[8], *__s, *&__s[8]);
        }

        else
        {
          *&v247[8] = *__s;
          v248[0] = *&__s[16];
        }

        *v247 = &unk_287527330;
        if (v248[0] >= 0)
        {
          v141 = &v247[8];
        }

        else
        {
          v141 = *&v247[8];
        }

        conditionalAssert(v141, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 239, v94, v95);
        *v247 = byte_287529580;
        if (SHIBYTE(v248[0]) < 0)
        {
          operator delete(*&v247[8]);
        }

        if ((__s[23] & 0x80000000) != 0)
        {
          operator delete(*__s);
        }

        exception = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v247, &byte_262899963);
        *exception = byte_287529580;
        v143 = (exception + 1);
        if ((v247[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v143, *v247, *&v247[8]);
        }

        else
        {
          v179 = *v247;
          exception[3] = *&v247[16];
          *&v143->__r_.__value_.__l.__data_ = v179;
        }

        *exception = &unk_287527330;
      }

      if (__str[0].__r_.__value_.__r.__words[2] >= __str[0].__r_.__value_.__l.__size_)
      {
        if (v242)
        {
          v247[0] = 0;
          TBuffer<char>::insert(__str, __str[0].__r_.__value_.__r.__words[2]--, v247, 1uLL);
        }

        else if (__str[0].__r_.__value_.__l.__size_)
        {
          v7->__r_.__value_.__s.__data_[__str[0].__r_.__value_.__l.__size_ - 1] = 0;
        }
      }

      else
      {
        v7->__r_.__value_.__s.__data_[__str[0].__r_.__value_.__r.__words[2]] = 0;
      }

      v12 = __str[0].__r_.__value_.__r.__words[0];
      if (!strcmp(__str[0].__r_.__value_.__l.__data_, "TKNHEADER_FILETYPE"))
      {
        getNextToken(NextToken, __str, " ");
        if (__str[0].__r_.__value_.__r.__words[2] >= __str[0].__r_.__value_.__l.__size_)
        {
          if (v242)
          {
            v247[0] = 0;
            TBuffer<char>::insert(__str, __str[0].__r_.__value_.__r.__words[2]--, v247, 1uLL);
          }

          else if (__str[0].__r_.__value_.__l.__size_)
          {
            *(__str[0].__r_.__value_.__r.__words[0] + __str[0].__r_.__value_.__l.__size_ - 1) = 0;
          }
        }

        else
        {
          *(__str[0].__r_.__value_.__r.__words[0] + __str[0].__r_.__value_.__r.__words[2]) = 0;
        }

        MEMORY[0x26672AEC0](&this[1].__r_.__value_.__r.__words[2], __str[0].__r_.__value_.__r.__words[0]);
      }

      else
      {
        if (__str[0].__r_.__value_.__r.__words[2] >= __str[0].__r_.__value_.__l.__size_)
        {
          if (v242)
          {
            v247[0] = 0;
            TBuffer<char>::insert(__str, __str[0].__r_.__value_.__r.__words[2]--, v247, 1uLL);
          }

          else if (__str[0].__r_.__value_.__l.__size_)
          {
            *(v12 + __str[0].__r_.__value_.__l.__size_ - 1) = 0;
          }
        }

        else
        {
          *(v12 + __str[0].__r_.__value_.__r.__words[2]) = 0;
        }

        if (strcmp(__str[0].__r_.__value_.__l.__data_, "TKNHEADER_FILEVERSION"))
        {
          v99 = &this->__r_.__value_.__r.__words[2];
          if (this[1].__r_.__value_.__s.__data_[15] < 0)
          {
            v99 = *v99;
          }

          v100 = TBuffer<char>::c_str(__str);
          tknPrintf("Error: File '%s' : '%s' : Bad entry in file header\n", v101, v102, v103, v104, v99, v100);
          std::string::basic_string[abi:ne200100]<0>(__s, &byte_262899963);
          *v247 = byte_287529580;
          if ((__s[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v247[8], *__s, *&__s[8]);
          }

          else
          {
            *&v247[8] = *__s;
            v248[0] = *&__s[16];
          }

          *v247 = &unk_287527330;
          if (v248[0] >= 0)
          {
            v147 = &v247[8];
          }

          else
          {
            v147 = *&v247[8];
          }

          conditionalAssert(v147, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 255, v105, v106);
          *v247 = byte_287529580;
          if (SHIBYTE(v248[0]) < 0)
          {
            operator delete(*&v247[8]);
          }

          if ((__s[23] & 0x80000000) != 0)
          {
            operator delete(*__s);
          }

          v148 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v247, &byte_262899963);
          *v148 = byte_287529580;
          v149 = (v148 + 1);
          if ((v247[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v149, *v247, *&v247[8]);
          }

          else
          {
            v181 = *v247;
            v148[3] = *&v247[16];
            *&v149->__r_.__value_.__l.__data_ = v181;
          }

          *v148 = &unk_287527330;
        }

        this[4].__r_.__value_.__r.__words[0] = atol(NextToken);
      }

      if (!TInputStream::getNextLine(this, &__s1))
      {
        v17 = &this->__r_.__value_.__r.__words[2];
        if (this[1].__r_.__value_.__s.__data_[15] < 0)
        {
          v17 = *v17;
        }

        tknPrintf("Error: File '%s' : Missing TKNHEADER_END\n", v13, v14, v15, v16, v17);
        std::string::basic_string[abi:ne200100]<0>(__s, &byte_262899963);
        *v247 = byte_287529580;
        if ((__s[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(&v247[8], *__s, *&__s[8]);
        }

        else
        {
          *&v247[8] = *__s;
          v248[0] = *&__s[16];
        }

        *v247 = &unk_287527330;
        if (v248[0] >= 0)
        {
          v127 = &v247[8];
        }

        else
        {
          v127 = *&v247[8];
        }

        conditionalAssert(v127, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 263, v18, v19);
        *v247 = byte_287529580;
        if (SHIBYTE(v248[0]) < 0)
        {
          operator delete(*&v247[8]);
        }

        if ((__s[23] & 0x80000000) != 0)
        {
          operator delete(*__s);
        }

        v128 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v247, &byte_262899963);
        *v128 = byte_287529580;
        v129 = (v128 + 1);
        if ((v247[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v129, *v247, *&v247[8]);
        }

        else
        {
          v162 = *v247;
          v128[3] = *&v247[16];
          *&v129->__r_.__value_.__l.__data_ = v162;
        }

        *v128 = &unk_287527330;
      }
    }

    if (!NextToken)
    {
      v156 = &this->__r_.__value_.__r.__words[2];
      if (this[1].__r_.__value_.__s.__data_[15] < 0)
      {
        v156 = *v156;
      }

      tknPrintf("Error: '%s' : TKNHEADER_END does not take a parameter\n", v8, v9, v10, v11, v156);
      std::string::basic_string[abi:ne200100]<0>(__s, &byte_262899963);
      *v247 = byte_287529580;
      if ((__s[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v247[8], *__s, *&__s[8]);
      }

      else
      {
        *&v247[8] = *__s;
        v248[0] = *&__s[16];
      }

      *v247 = &unk_287527330;
      if (v248[0] >= 0)
      {
        v195 = &v247[8];
      }

      else
      {
        v195 = *&v247[8];
      }

      conditionalAssert(v195, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 228, v157, v158);
      *v247 = byte_287529580;
      if (SHIBYTE(v248[0]) < 0)
      {
        operator delete(*&v247[8]);
      }

      if ((__s[23] & 0x80000000) != 0)
      {
        operator delete(*__s);
      }

      v196 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v247, &byte_262899963);
      *v196 = byte_287529580;
      v197 = (v196 + 1);
      if ((v247[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v197, *v247, *&v247[8]);
      }

      else
      {
        v217 = *v247;
        v196[3] = *&v247[16];
        *&v197->__r_.__value_.__l.__data_ = v217;
      }

      *v196 = &unk_287527330;
    }

    data = this[2].__r_.__value_.__s.__data_[15];
    if ((data & 0x8000000000000000) != 0)
    {
      data = this[2].__r_.__value_.__l.__data_;
    }

    if (!data)
    {
      v159 = &this->__r_.__value_.__r.__words[2];
      if (this[1].__r_.__value_.__s.__data_[15] < 0)
      {
        v159 = *v159;
      }

      tknPrintf("Error: File '%s' : Missing TKNHEADER_FILETYPE\n", v8, v9, v10, v11, v159);
      std::string::basic_string[abi:ne200100]<0>(__s, &byte_262899963);
      *v247 = byte_287529580;
      if ((__s[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v247[8], *__s, *&__s[8]);
      }

      else
      {
        *&v247[8] = *__s;
        v248[0] = *&__s[16];
      }

      *v247 = &unk_287527330;
      if (v248[0] >= 0)
      {
        v198 = &v247[8];
      }

      else
      {
        v198 = *&v247[8];
      }

      conditionalAssert(v198, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 269, v160, v161);
      *v247 = byte_287529580;
      if (SHIBYTE(v248[0]) < 0)
      {
        operator delete(*&v247[8]);
      }

      if ((__s[23] & 0x80000000) != 0)
      {
        operator delete(*__s);
      }

      v199 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v247, &byte_262899963);
      *v199 = byte_287529580;
      v200 = (v199 + 1);
      if ((v247[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v200, *v247, *&v247[8]);
      }

      else
      {
        v218 = *v247;
        v199[3] = *&v247[16];
        *&v200->__r_.__value_.__l.__data_ = v218;
      }

      *v199 = &unk_287527330;
    }

    if (v242 == 1 && v7 != &__str[1] && v7)
    {
      v21 = v7;
      goto LABEL_263;
    }

LABEL_264:
    v2 = 1;
    goto LABEL_265;
  }

  if (*(&v251 + 1) >= v251)
  {
    if (v253)
    {
      __str[0].__r_.__value_.__s.__data_[0] = 0;
      TBuffer<char>::insert(&__s1, *(&v251 + 1), __str, 1uLL);
      --*(&v251 + 1);
    }

    else if (v251)
    {
      v5[v251 - 1] = 0;
    }
  }

  else
  {
    v5[*(&v251 + 1)] = 0;
  }

  if (!strcmp(__s1, "HEADER_BEGIN"))
  {
    *v247 = v248;
    *&v247[8] = xmmword_26286B6F0;
    v23 = 1;
    v249 = 1;
    *__s = v245;
    *&__s[8] = xmmword_26286B6F0;
    v246 = 1;
    v228 = *(this[7].__r_.__value_.__l.__size_ + 64);
    v231 = 0;
    v232 = 0;
    v233 = 0;
    while (1)
    {
      if (!TInputStream::getNextLine(this, &__s1))
      {
        v96 = &this->__r_.__value_.__r.__words[2];
        if (this[1].__r_.__value_.__s.__data_[15] < 0)
        {
          v96 = *v96;
        }

        tknPrintf("Error: File '%s' : Missing HEADER_END\n", v24, v25, v26, v27, v96);
        std::string::basic_string[abi:ne200100]<0>(&v234, &byte_262899963);
        __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
        if (SHIBYTE(v234.__end_) < 0)
        {
          std::string::__init_copy_ctor_external(&__str[0].__r_.__value_.__r.__words[1], v234.__first_, v234.__begin_);
        }

        else
        {
          *&__str[0].__r_.__value_.__r.__words[1] = *&v234.__first_;
          __str[1].__r_.__value_.__r.__words[0] = v234.__end_;
        }

        __str[0].__r_.__value_.__r.__words[0] = &unk_287527330;
        if (__str[1].__r_.__value_.__s.__data_[7] >= 0)
        {
          size = &__str[0].__r_.__value_.__s.__data_[8];
        }

        else
        {
          size = __str[0].__r_.__value_.__l.__size_;
        }

        conditionalAssert(size, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 384, v97, v98);
        __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
        if (__str[1].__r_.__value_.__s.__data_[7] < 0)
        {
          operator delete(__str[0].__r_.__value_.__l.__size_);
        }

        if (SHIBYTE(v234.__end_) < 0)
        {
          operator delete(v234.__first_);
        }

        v131 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__str, &byte_262899963);
        *v131 = byte_287529580;
        v132 = (v131 + 1);
        if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(v132, __str[0].__r_.__value_.__l.__data_, __str[0].__r_.__value_.__l.__size_);
        }

        else
        {
          v178 = *&__str[0].__r_.__value_.__l.__data_;
          v131[3] = *(&__str[0].__r_.__value_.__l + 2);
          *&v132->__r_.__value_.__l.__data_ = v178;
        }

        *v131 = &unk_287527330;
      }

      if (*(&v251 + 1) >= v251)
      {
        if (v253)
        {
          LOBYTE(v234.__first_) = 0;
          TBuffer<char>::insert(&__s1, *(&v251 + 1), &v234, 1uLL);
          --*(&v251 + 1);
        }

        else if (v251)
        {
          __s1[v251 - 1] = 0;
        }
      }

      else
      {
        __s1[*(&v251 + 1)] = 0;
      }

      v28 = getNextToken(__s1, v247, " ");
      v29 = getNextToken(v28, __s, " ");
      if (*&v247[16] >= *&v247[8])
      {
        if (v249)
        {
          LOBYTE(v234.__first_) = 0;
          TBuffer<char>::insert(v247, *&v247[16], &v234, 1uLL);
          --*&v247[16];
        }

        else if (*&v247[8])
        {
          *(*v247 + *&v247[8] - 1) = 0;
        }
      }

      else
      {
        *(*v247 + *&v247[16]) = 0;
      }

      v30 = *v247;
      if (!strcmp(*v247, "HEADER_END"))
      {
        if (v29)
        {
          v163 = &this->__r_.__value_.__r.__words[2];
          if (this[1].__r_.__value_.__s.__data_[15] < 0)
          {
            v163 = *v163;
          }

          tknPrintf("Error: '%s' : HEADER_END does not take a parameter\n", v31, v32, v33, v34, v163);
          std::string::basic_string[abi:ne200100]<0>(&v234, &byte_262899963);
          __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
          if (SHIBYTE(v234.__end_) < 0)
          {
            std::string::__init_copy_ctor_external(&__str[0].__r_.__value_.__r.__words[1], v234.__first_, v234.__begin_);
          }

          else
          {
            *&__str[0].__r_.__value_.__r.__words[1] = *&v234.__first_;
            __str[1].__r_.__value_.__r.__words[0] = v234.__end_;
          }

          __str[0].__r_.__value_.__r.__words[0] = &unk_287527330;
          if (__str[1].__r_.__value_.__s.__data_[7] >= 0)
          {
            v201 = &__str[0].__r_.__value_.__s.__data_[8];
          }

          else
          {
            v201 = __str[0].__r_.__value_.__l.__size_;
          }

          conditionalAssert(v201, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 297, v164, v165);
          __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
          if (__str[1].__r_.__value_.__s.__data_[7] < 0)
          {
            operator delete(__str[0].__r_.__value_.__l.__size_);
          }

          if (SHIBYTE(v234.__end_) < 0)
          {
            operator delete(v234.__first_);
          }

          v202 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(__str, &byte_262899963);
          *v202 = byte_287529580;
          v203 = (v202 + 1);
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(v203, __str[0].__r_.__value_.__l.__data_, __str[0].__r_.__value_.__l.__size_);
          }

          else
          {
            v219 = *&__str[0].__r_.__value_.__l.__data_;
            v202[3] = *(&__str[0].__r_.__value_.__l + 2);
            *&v203->__r_.__value_.__l.__data_ = v219;
          }

          *v202 = &unk_287527330;
        }

        v75 = this[2].__r_.__value_.__s.__data_[15];
        if ((v75 & 0x8000000000000000) != 0)
        {
          v75 = this[2].__r_.__value_.__l.__data_;
        }

        if (!v75)
        {
          v166 = &this->__r_.__value_.__r.__words[2];
          if (this[1].__r_.__value_.__s.__data_[15] < 0)
          {
            v166 = *v166;
          }

          tknPrintf("Error: File '%s' : Missing FILE_TYPE\n", v31, v32, v33, v34, v166);
          std::string::basic_string[abi:ne200100]<0>(&v234, &byte_262899963);
          __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
          if (SHIBYTE(v234.__end_) < 0)
          {
            std::string::__init_copy_ctor_external(&__str[0].__r_.__value_.__r.__words[1], v234.__first_, v234.__begin_);
          }

          else
          {
            *&__str[0].__r_.__value_.__r.__words[1] = *&v234.__first_;
            __str[1].__r_.__value_.__r.__words[0] = v234.__end_;
          }

          __str[0].__r_.__value_.__r.__words[0] = &unk_287527330;
          if (__str[1].__r_.__value_.__s.__data_[7] >= 0)
          {
            v204 = &__str[0].__r_.__value_.__s.__data_[8];
          }

          else
          {
            v204 = __str[0].__r_.__value_.__l.__size_;
          }

          conditionalAssert(v204, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 390, v167, v168);
          __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
          if (__str[1].__r_.__value_.__s.__data_[7] < 0)
          {
            operator delete(__str[0].__r_.__value_.__l.__size_);
          }

          if (SHIBYTE(v234.__end_) < 0)
          {
            operator delete(v234.__first_);
          }

          v205 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(__str, &byte_262899963);
          *v205 = byte_287529580;
          v206 = (v205 + 1);
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(v206, __str[0].__r_.__value_.__l.__data_, __str[0].__r_.__value_.__l.__size_);
          }

          else
          {
            v220 = *&__str[0].__r_.__value_.__l.__data_;
            v205[3] = *(&__str[0].__r_.__value_.__l + 2);
            *&v206->__r_.__value_.__l.__data_ = v220;
          }

          *v205 = &unk_287527330;
        }

        if (*(this[7].__r_.__value_.__l.__size_ + 64) != v228)
        {
          v169 = &this->__r_.__value_.__r.__words[2];
          if (this[1].__r_.__value_.__s.__data_[15] < 0)
          {
            v169 = *v169;
          }

          tknPrintf("Error: File '%s' : File codepage does not match the voc codepage\n", v31, v32, v33, v34, v169);
          std::string::basic_string[abi:ne200100]<0>(&v234, &byte_262899963);
          __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
          if (SHIBYTE(v234.__end_) < 0)
          {
            std::string::__init_copy_ctor_external(&__str[0].__r_.__value_.__r.__words[1], v234.__first_, v234.__begin_);
          }

          else
          {
            *&__str[0].__r_.__value_.__r.__words[1] = *&v234.__first_;
            __str[1].__r_.__value_.__r.__words[0] = v234.__end_;
          }

          __str[0].__r_.__value_.__r.__words[0] = &unk_287526298;
          if (__str[1].__r_.__value_.__s.__data_[7] >= 0)
          {
            v207 = &__str[0].__r_.__value_.__s.__data_[8];
          }

          else
          {
            v207 = __str[0].__r_.__value_.__l.__size_;
          }

          conditionalAssert(v207, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 397, v170, v171);
          __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
          if (__str[1].__r_.__value_.__s.__data_[7] < 0)
          {
            operator delete(__str[0].__r_.__value_.__l.__size_);
          }

          if (SHIBYTE(v234.__end_) < 0)
          {
            operator delete(v234.__first_);
          }

          v208 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(__str, &byte_262899963);
          *v208 = byte_287529580;
          v209 = (v208 + 1);
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(v209, __str[0].__r_.__value_.__l.__data_, __str[0].__r_.__value_.__l.__size_);
          }

          else
          {
            v221 = *&__str[0].__r_.__value_.__l.__data_;
            v208[3] = *(&__str[0].__r_.__value_.__l + 2);
            *&v209->__r_.__value_.__l.__data_ = v221;
          }

          *v208 = &unk_287526298;
        }

        __str[0].__r_.__value_.__r.__words[0] = &__str[1];
        *&__str[0].__r_.__value_.__r.__words[1] = xmmword_26286B6F0;
        v243 = 1;
        if (v232 == v231)
        {
          goto LABEL_254;
        }

        v76 = 0;
        v77 = 0;
        do
        {
          TBuffer<wchar_t>::resize(__str, 0);
          p_second = &v231[v76].second;
          if (SHIBYTE(v231[v76].second.__r_.__value_.__r.__words[2]) < 0)
          {
            p_second = *p_second;
          }

          TLocaleInfo::multiByteToUnicode(this[7].__r_.__value_.__l.__size_, p_second, __str);
          v79 = &v231[v76];
          if (SHIBYTE(v231[v76].first.__r_.__value_.__r.__words[2]) < 0)
          {
            v79 = *v79;
          }

          if (TInputStream::isParameter(this, v79))
          {
            v123 = &this->__r_.__value_.__r.__words[2];
            if (this[1].__r_.__value_.__s.__data_[15] < 0)
            {
              v123 = *v123;
            }

            v124 = &v231[v76];
            if (SHIBYTE(v231[v76].first.__r_.__value_.__r.__words[2]) < 0)
            {
              v124 = *v124;
            }

            tknPrintf("Error: %s : Duplicate setting for %s parameter\n", v80, v81, v82, v83, v123, v124);
            std::string::basic_string[abi:ne200100]<0>(v229, &byte_262899963);
            v234.__first_ = byte_287529580;
            if (SHIBYTE(v230) < 0)
            {
              std::string::__init_copy_ctor_external(&v234.__begin_, v229[0], v229[1]);
            }

            else
            {
              *&v234.__begin_ = *v229;
              v234.__end_cap_.__value_ = v230;
            }

            v234.__first_ = &unk_287528000;
            if (SHIBYTE(v234.__end_cap_.__value_) >= 0)
            {
              p_begin = &v234.__begin_;
            }

            else
            {
              p_begin = v234.__begin_;
            }

            conditionalAssert(p_begin, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 414, v125, v126);
            v234.__first_ = byte_287529580;
            if (SHIBYTE(v234.__end_cap_.__value_) < 0)
            {
              operator delete(v234.__begin_);
            }

            if (SHIBYTE(v230) < 0)
            {
              operator delete(v229[0]);
            }

            v145 = __cxa_allocate_exception(0x20uLL);
            std::string::basic_string[abi:ne200100]<0>(&v234, &byte_262899963);
            *v145 = byte_287529580;
            v146 = (v145 + 1);
            if (SHIBYTE(v234.__end_) < 0)
            {
              std::string::__init_copy_ctor_external(v146, v234.__first_, v234.__begin_);
            }

            else
            {
              v180 = *&v234.__first_;
              v145[3] = v234.__end_;
              *&v146->__r_.__value_.__l.__data_ = v180;
            }

            *v145 = &unk_287528000;
          }

          if (__str[0].__r_.__value_.__r.__words[2] >= __str[0].__r_.__value_.__l.__size_)
          {
            if (v243)
            {
              LODWORD(v234.__first_) = 0;
              TBuffer<wchar_t>::insert(__str, __str[0].__r_.__value_.__r.__words[2], &v234, 1uLL);
              v84 = __str[0].__r_.__value_.__r.__words[0];
              --__str[0].__r_.__value_.__r.__words[2];
            }

            else
            {
              v84 = __str[0].__r_.__value_.__r.__words[0];
              if (__str[0].__r_.__value_.__l.__size_)
              {
                *(__str[0].__r_.__value_.__r.__words[0] + 4 * __str[0].__r_.__value_.__l.__size_ - 4) = 0;
              }
            }
          }

          else
          {
            v84 = __str[0].__r_.__value_.__r.__words[0];
            *(__str[0].__r_.__value_.__r.__words[0] + 4 * __str[0].__r_.__value_.__r.__words[2]) = 0;
          }

          v234.__first_ = &v231[v76];
          v85 = std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&this[6].__r_.__value_.__l.__size_, &v231[v76].first.__r_.__value_.__l.__data_);
          MEMORY[0x26672AF30](v85 + 56, v84);
          ++v77;
          ++v76;
        }

        while (v77 < 0xAAAAAAAAAAAAAAABLL * ((v232 - v231) >> 4));
        if (v243)
        {
LABEL_254:
          if (__str[0].__r_.__value_.__l.__data_ != &__str[1] && __str[0].__r_.__value_.__r.__words[0])
          {
            MEMORY[0x26672B1B0]();
          }
        }

        __str[0].__r_.__value_.__r.__words[0] = &v231;
        std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](__str);
        if (v246 == 1 && *__s != v245 && *__s)
        {
          MEMORY[0x26672B1B0]();
        }

        if (v249 == 1)
        {
          v21 = *v247;
          if (*v247 != v248)
          {
            if (*v247)
            {
LABEL_263:
              MEMORY[0x26672B1B0](v21, 0x1000C4077774924);
            }
          }
        }

        goto LABEL_264;
      }

      if (!v29)
      {
        v107 = &this->__r_.__value_.__r.__words[2];
        if (this[1].__r_.__value_.__s.__data_[15] < 0)
        {
          v107 = *v107;
        }

        v108 = TBuffer<char>::c_str(&__s1);
        tknPrintf("Error: File '%s' : %s : Syntax error in header\n", v109, v110, v111, v112, v107, v108);
        std::string::basic_string[abi:ne200100]<0>(&v234, &byte_262899963);
        __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
        if (SHIBYTE(v234.__end_) < 0)
        {
          std::string::__init_copy_ctor_external(&__str[0].__r_.__value_.__r.__words[1], v234.__first_, v234.__begin_);
        }

        else
        {
          *&__str[0].__r_.__value_.__r.__words[1] = *&v234.__first_;
          __str[1].__r_.__value_.__r.__words[0] = v234.__end_;
        }

        __str[0].__r_.__value_.__r.__words[0] = &unk_287527330;
        if (__str[1].__r_.__value_.__s.__data_[7] >= 0)
        {
          v150 = &__str[0].__r_.__value_.__s.__data_[8];
        }

        else
        {
          v150 = __str[0].__r_.__value_.__l.__size_;
        }

        conditionalAssert(v150, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 308, v113, v114);
        __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
        if (__str[1].__r_.__value_.__s.__data_[7] < 0)
        {
          operator delete(__str[0].__r_.__value_.__l.__size_);
        }

        if (SHIBYTE(v234.__end_) < 0)
        {
          operator delete(v234.__first_);
        }

        v151 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__str, &byte_262899963);
        *v151 = byte_287529580;
        v152 = (v151 + 1);
        if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(v152, __str[0].__r_.__value_.__l.__data_, __str[0].__r_.__value_.__l.__size_);
        }

        else
        {
          v182 = *&__str[0].__r_.__value_.__l.__data_;
          v151[3] = *(&__str[0].__r_.__value_.__l + 2);
          *&v152->__r_.__value_.__l.__data_ = v182;
        }

        *v151 = &unk_287527330;
      }

      if (*&v247[16] >= *&v247[8])
      {
        if (v249)
        {
          LOBYTE(v234.__first_) = 0;
          TBuffer<char>::insert(v247, *&v247[16], &v234, 1uLL);
          --*&v247[16];
        }

        else if (*&v247[8])
        {
          *(v30 + *&v247[8] - 1) = 0;
        }
      }

      else
      {
        *(v30 + *&v247[16]) = 0;
      }

      v35 = *v247;
      if (!strcmp(*v247, "VERSION"))
      {
        break;
      }

      if (*&v247[16] >= *&v247[8])
      {
        if (v249)
        {
          LOBYTE(v234.__first_) = 0;
          TBuffer<char>::insert(v247, *&v247[16], &v234, 1uLL);
          --*&v247[16];
        }

        else if (*&v247[8])
        {
          *(v35 + *&v247[8] - 1) = 0;
        }
      }

      else
      {
        *(v35 + *&v247[16]) = 0;
      }

      v40 = *v247;
      if (!strcmp(*v247, "FILE_TYPE"))
      {
        if (*&__s[16] >= *&__s[8])
        {
          if (v246)
          {
            LOBYTE(v234.__first_) = 0;
            TBuffer<char>::insert(__s, *&__s[16], &v234, 1uLL);
            --*&__s[16];
          }

          else if (*&__s[8])
          {
            *(*__s + *&__s[8] - 1) = 0;
          }
        }

        else
        {
          *(*__s + *&__s[16]) = 0;
        }

        MEMORY[0x26672AEC0](&this[1].__r_.__value_.__r.__words[2], *__s);
        goto LABEL_194;
      }

      if (*&v247[16] >= *&v247[8])
      {
        if (v249)
        {
          LOBYTE(v234.__first_) = 0;
          TBuffer<char>::insert(v247, *&v247[16], &v234, 1uLL);
          --*&v247[16];
        }

        else if (*&v247[8])
        {
          *(v40 + *&v247[8] - 1) = 0;
        }
      }

      else
      {
        *(v40 + *&v247[16]) = 0;
      }

      v41 = *v247;
      if (!strcmp(*v247, "FILE_VERSION"))
      {
        if (*&__s[16] >= *&__s[8])
        {
          if (v246)
          {
            LOBYTE(v234.__first_) = 0;
            TBuffer<char>::insert(__s, *&__s[16], &v234, 1uLL);
            --*&__s[16];
          }

          else if (*&__s[8])
          {
            *(*__s + *&__s[8] - 1) = 0;
          }
        }

        else
        {
          *(*__s + *&__s[16]) = 0;
        }

        v60 = *__s;
        v61 = strrchr(*__s, 46);
        if (v61)
        {
          v62 = v61;
          if (*&__s[16] >= *&__s[8])
          {
            if (v246)
            {
              LOBYTE(v234.__first_) = 0;
              TBuffer<char>::insert(__s, *&__s[16], &v234, 1uLL);
              --*&__s[16];
            }

            else if (*&__s[8])
            {
              *(v60 + *&__s[8] - 1) = 0;
            }
          }

          else
          {
            *(v60 + *&__s[16]) = 0;
          }

          std::string::basic_string[abi:ne200100]<0>(__str, *__s);
          if (*&__s[16] >= *&__s[8])
          {
            if (v246)
            {
              LOBYTE(v234.__first_) = 0;
              TBuffer<char>::insert(__s, *&__s[16], &v234, 1uLL);
              --*&__s[16];
            }

            else if (*&__s[8])
            {
              *(*__s + *&__s[8] - 1) = 0;
            }
          }

          else
          {
            *(*__s + *&__s[16]) = 0;
          }

          std::string::assign(this + 3, __str, 0, &v62[-*__s]);
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str[0].__r_.__value_.__l.__data_);
          }

          v63 = v62 + 1;
        }

        else
        {
          if (*&__s[16] >= *&__s[8])
          {
            if (v246)
            {
              LOBYTE(v234.__first_) = 0;
              TBuffer<char>::insert(__s, *&__s[16], &v234, 1uLL);
              --*&__s[16];
            }

            else if (*&__s[8])
            {
              *(v60 + *&__s[8] - 1) = 0;
            }
          }

          else
          {
            *(v60 + *&__s[16]) = 0;
          }

          v63 = *__s;
        }

        this[4].__r_.__value_.__r.__words[0] = atol(v63);
        goto LABEL_194;
      }

      if (*&v247[16] >= *&v247[8])
      {
        if (v249)
        {
          LOBYTE(v234.__first_) = 0;
          TBuffer<char>::insert(v247, *&v247[16], &v234, 1uLL);
          --*&v247[16];
        }

        else if (*&v247[8])
        {
          *(v41 + *&v247[8] - 1) = 0;
        }
      }

      else
      {
        *(v41 + *&v247[16]) = 0;
      }

      v42 = *v247;
      if (!strcmp(*v247, "PARAMETER"))
      {
        v43 = getNextToken(v28 + 1, v247, "=");
        if (!v43)
        {
          v115 = &this->__r_.__value_.__r.__words[2];
          if (this[1].__r_.__value_.__s.__data_[15] < 0)
          {
            v115 = *v115;
          }

          v116 = TBuffer<char>::c_str(&__s1);
          tknPrintf("Error: File '%s' : %s : PARAMETER must contain 'name=value'\n", v117, v118, v119, v120, v115, v116);
          std::string::basic_string[abi:ne200100]<0>(&v234, &byte_262899963);
          __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
          if (SHIBYTE(v234.__end_) < 0)
          {
            std::string::__init_copy_ctor_external(&__str[0].__r_.__value_.__r.__words[1], v234.__first_, v234.__begin_);
          }

          else
          {
            *&__str[0].__r_.__value_.__r.__words[1] = *&v234.__first_;
            __str[1].__r_.__value_.__r.__words[0] = v234.__end_;
          }

          __str[0].__r_.__value_.__r.__words[0] = &unk_287527330;
          if (__str[1].__r_.__value_.__s.__data_[7] >= 0)
          {
            v153 = &__str[0].__r_.__value_.__s.__data_[8];
          }

          else
          {
            v153 = __str[0].__r_.__value_.__l.__size_;
          }

          conditionalAssert(v153, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 353, v121, v122);
          __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
          if (__str[1].__r_.__value_.__s.__data_[7] < 0)
          {
            operator delete(__str[0].__r_.__value_.__l.__size_);
          }

          if (SHIBYTE(v234.__end_) < 0)
          {
            operator delete(v234.__first_);
          }

          v154 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(__str, &byte_262899963);
          *v154 = byte_287529580;
          v155 = (v154 + 1);
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(v155, __str[0].__r_.__value_.__l.__data_, __str[0].__r_.__value_.__l.__size_);
          }

          else
          {
            v183 = *&__str[0].__r_.__value_.__l.__data_;
            v154[3] = *(&__str[0].__r_.__value_.__l + 2);
            *&v155->__r_.__value_.__l.__data_ = v183;
          }

          *v154 = &unk_287527330;
        }

        if (*&v247[16] >= *&v247[8])
        {
          if (v249)
          {
            LOBYTE(v234.__first_) = 0;
            TBuffer<char>::insert(v247, *&v247[16], &v234, 1uLL);
            --*&v247[16];
          }

          else if (*&v247[8])
          {
            *(*v247 + *&v247[8] - 1) = 0;
          }
        }

        else
        {
          *(*v247 + *&v247[16]) = 0;
        }

        v229[0] = *v247;
        v229[1] = v43 + 1;
        std::pair<std::string,std::string>::pair[abi:ne200100]<char const*,char const*,0>(__str, v229);
        v44 = v232;
        if (v232 >= v233)
        {
          v47 = 0xAAAAAAAAAAAAAAABLL * ((v232 - v231) >> 4);
          v48 = v47 + 1;
          if (v47 + 1 > 0x555555555555555)
          {
            std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v233 - v231) >> 4) > v48)
          {
            v48 = 0x5555555555555556 * ((v233 - v231) >> 4);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v233 - v231) >> 4) >= 0x2AAAAAAAAAAAAAALL)
          {
            v49 = 0x555555555555555;
          }

          else
          {
            v49 = v48;
          }

          v234.__end_cap_.__value_ = &v231;
          if (v49)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(&v231, v49);
          }

          v50 = 16 * ((v232 - v231) >> 4);
          v51 = *&__str[0].__r_.__value_.__l.__data_;
          *(v50 + 16) = *(&__str[0].__r_.__value_.__l + 2);
          *v50 = v51;
          memset(__str, 0, 24);
          v52 = *&__str[1].__r_.__value_.__l.__data_;
          *(v50 + 40) = *(&__str[1].__r_.__value_.__l + 2);
          *(v50 + 24) = v52;
          memset(&__str[1], 0, sizeof(std::string));
          v53 = (48 * v47 - (v232 - v231));
          memcpy(v53, v231, v232 - v231);
          v54 = v231;
          v55 = v233;
          v231 = v53;
          v232 = (48 * v47 + 48);
          v233 = 0;
          v234.__first_ = v54;
          v234.__end_ = v54;
          v234.__end_cap_.__value_ = v55;
          v234.__begin_ = v54;
          std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(&v234);
          v232 = (48 * v47 + 48);
          if (SHIBYTE(__str[1].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str[1].__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v45 = *&__str[0].__r_.__value_.__l.__data_;
          *(v232 + 2) = *(&__str[0].__r_.__value_.__l + 2);
          *v44 = v45;
          memset(__str, 0, 24);
          v46 = __str[1].__r_.__value_.__r.__words[2];
          *(v44 + 24) = *&__str[1].__r_.__value_.__l.__data_;
          *(v44 + 5) = v46;
          memset(&__str[1], 0, sizeof(std::string));
          v232 = v44 + 48;
        }

        if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str[0].__r_.__value_.__l.__data_);
        }

        v23 = 0;
      }

      else
      {
        if (*&v247[16] >= *&v247[8])
        {
          if (v249)
          {
            LOBYTE(v234.__first_) = 0;
            TBuffer<char>::insert(v247, *&v247[16], &v234, 1uLL);
            --*&v247[16];
          }

          else if (*&v247[8])
          {
            *(v42 + *&v247[8] - 1) = 0;
          }
        }

        else
        {
          *(v42 + *&v247[16]) = 0;
        }

        if (!strcmp(*v247, "CODEPAGE"))
        {
          if (*&__s[16] >= *&__s[8])
          {
            if (v246)
            {
              LOBYTE(v234.__first_) = 0;
              TBuffer<char>::insert(__s, *&__s[16], &v234, 1uLL);
              --*&__s[16];
            }

            else if (*&__s[8])
            {
              *(*__s + *&__s[8] - 1) = 0;
            }
          }

          else
          {
            *(*__s + *&__s[16]) = 0;
          }

          std::string::basic_string[abi:ne200100]<0>(__str, *__s);
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            if (__str[0].__r_.__value_.__l.__size_ != 4)
            {
              if (__str[0].__r_.__value_.__l.__size_ == 7)
              {
                v69 = __str[0].__r_.__value_.__r.__words[0];
                if (*__str[0].__r_.__value_.__l.__data_ != 1769234764 || *(__str[0].__r_.__value_.__r.__words[0] + 3) != 1227714153)
                {
                  goto LABEL_414;
                }

LABEL_224:
                v73 = 1;
              }

              else
              {
                v69 = __str[0].__r_.__value_.__r.__words[0];
                if (__str[0].__r_.__value_.__l.__size_ != 5)
                {
                  goto LABEL_414;
                }

                if (*__str[0].__r_.__value_.__l.__data_ != 759583829 || *(__str[0].__r_.__value_.__r.__words[0] + 4) != 56)
                {
                  goto LABEL_414;
                }

                v73 = 2;
              }

              v228 = v73;
              operator delete(__str[0].__r_.__value_.__l.__data_);
              goto LABEL_194;
            }

            v69 = __str[0].__r_.__value_.__r.__words[0];
            if (*__str[0].__r_.__value_.__l.__data_ != 842347057)
            {
              goto LABEL_414;
            }

            goto LABEL_224;
          }

          if (HIBYTE(__str[0].__r_.__value_.__r.__words[2]) != 4)
          {
            if (HIBYTE(__str[0].__r_.__value_.__r.__words[2]) == 5)
            {
              if (LODWORD(__str[0].__r_.__value_.__l.__data_) != 759583829 || __str[0].__r_.__value_.__s.__data_[4] != 56)
              {
LABEL_413:
                v69 = __str;
LABEL_414:
                tknPrintf("Error: '%s' : Invalid codepage.\n", v64, v65, v66, v67, v69);
                if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str[0].__r_.__value_.__l.__data_);
                }

                v184 = &this->__r_.__value_.__r.__words[2];
                if (this[1].__r_.__value_.__s.__data_[15] < 0)
                {
                  v184 = *v184;
                }

                v185 = TBuffer<char>::c_str(__s);
                tknPrintf("Error: File '%s' : '%s' : Invalid codepage\n", v186, v187, v188, v189, v184, v185);
                std::string::basic_string[abi:ne200100]<0>(&v234, &byte_262899963);
                __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
                if (SHIBYTE(v234.__end_) < 0)
                {
                  std::string::__init_copy_ctor_external(&__str[0].__r_.__value_.__r.__words[1], v234.__first_, v234.__begin_);
                }

                else
                {
                  *&__str[0].__r_.__value_.__r.__words[1] = *&v234.__first_;
                  __str[1].__r_.__value_.__r.__words[0] = v234.__end_;
                }

                __str[0].__r_.__value_.__r.__words[0] = &unk_287526298;
                if (__str[1].__r_.__value_.__s.__data_[7] >= 0)
                {
                  v224 = &__str[0].__r_.__value_.__s.__data_[8];
                }

                else
                {
                  v224 = __str[0].__r_.__value_.__l.__size_;
                }

                conditionalAssert(v224, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 367, v190, v191);
                __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
                if (__str[1].__r_.__value_.__s.__data_[7] < 0)
                {
                  operator delete(__str[0].__r_.__value_.__l.__size_);
                }

                if (SHIBYTE(v234.__end_) < 0)
                {
                  operator delete(v234.__first_);
                }

                v225 = __cxa_allocate_exception(0x20uLL);
                std::string::basic_string[abi:ne200100]<0>(__str, &byte_262899963);
                *v225 = byte_287529580;
                v226 = (v225 + 1);
                if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external(v226, __str[0].__r_.__value_.__l.__data_, __str[0].__r_.__value_.__l.__size_);
                }

                else
                {
                  v227 = *&__str[0].__r_.__value_.__l.__data_;
                  v225[3] = *(&__str[0].__r_.__value_.__l + 2);
                  *&v226->__r_.__value_.__l.__data_ = v227;
                }

                *v225 = &unk_287526298;
              }

              v72 = 2;
            }

            else
            {
              if (HIBYTE(__str[0].__r_.__value_.__r.__words[2]) != 7)
              {
                goto LABEL_413;
              }

              if (LODWORD(__str[0].__r_.__value_.__l.__data_) != 1769234764 || *(__str[0].__r_.__value_.__r.__words + 3) != 1227714153)
              {
                goto LABEL_413;
              }

LABEL_221:
              v72 = 1;
            }

            v228 = v72;
            goto LABEL_194;
          }

          if (LODWORD(__str[0].__r_.__value_.__l.__data_) != 842347057)
          {
            goto LABEL_413;
          }

          goto LABEL_221;
        }

LABEL_194:
        v23 = 0;
        if (getNextToken(v29, __s, " "))
        {
          v133 = &this->__r_.__value_.__r.__words[2];
          if (this[1].__r_.__value_.__s.__data_[15] < 0)
          {
            v133 = *v133;
          }

          v134 = TBuffer<char>::c_str(&__s1);
          tknPrintf("Error: File '%s' : %s : Syntax error in header\n", v135, v136, v137, v138, v133, v134);
          std::string::basic_string[abi:ne200100]<0>(&v234, &byte_262899963);
          __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
          if (SHIBYTE(v234.__end_) < 0)
          {
            std::string::__init_copy_ctor_external(&__str[0].__r_.__value_.__r.__words[1], v234.__first_, v234.__begin_);
          }

          else
          {
            *&__str[0].__r_.__value_.__r.__words[1] = *&v234.__first_;
            __str[1].__r_.__value_.__r.__words[0] = v234.__end_;
          }

          __str[0].__r_.__value_.__r.__words[0] = &unk_287527330;
          if (__str[1].__r_.__value_.__s.__data_[7] >= 0)
          {
            v192 = &__str[0].__r_.__value_.__s.__data_[8];
          }

          else
          {
            v192 = __str[0].__r_.__value_.__l.__size_;
          }

          conditionalAssert(v192, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 375, v139, v140);
          __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
          if (__str[1].__r_.__value_.__s.__data_[7] < 0)
          {
            operator delete(__str[0].__r_.__value_.__l.__size_);
          }

          if (SHIBYTE(v234.__end_) < 0)
          {
            operator delete(v234.__first_);
          }

          v193 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(__str, &byte_262899963);
          *v193 = byte_287529580;
          v194 = (v193 + 1);
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(v194, __str[0].__r_.__value_.__l.__data_, __str[0].__r_.__value_.__l.__size_);
          }

          else
          {
            v216 = *&__str[0].__r_.__value_.__l.__data_;
            v193[3] = *(&__str[0].__r_.__value_.__l + 2);
            *&v194->__r_.__value_.__l.__data_ = v216;
          }

          *v193 = &unk_287527330;
        }
      }
    }

    if ((v23 & 1) == 0)
    {
      v172 = &this->__r_.__value_.__r.__words[2];
      if (this[1].__r_.__value_.__s.__data_[15] < 0)
      {
        v172 = *v172;
      }

      tknPrintf("Error: '%s' : VERSION must be the first line in header\n", v36, v37, v38, v39, v172);
      std::string::basic_string[abi:ne200100]<0>(&v234, &byte_262899963);
      __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
      if (SHIBYTE(v234.__end_) < 0)
      {
        std::string::__init_copy_ctor_external(&__str[0].__r_.__value_.__r.__words[1], v234.__first_, v234.__begin_);
      }

      else
      {
        *&__str[0].__r_.__value_.__r.__words[1] = *&v234.__first_;
        __str[1].__r_.__value_.__r.__words[0] = v234.__end_;
      }

      __str[0].__r_.__value_.__r.__words[0] = &unk_287527330;
      if (__str[1].__r_.__value_.__s.__data_[7] >= 0)
      {
        v210 = &__str[0].__r_.__value_.__s.__data_[8];
      }

      else
      {
        v210 = __str[0].__r_.__value_.__l.__size_;
      }

      conditionalAssert(v210, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 317, v173, v174);
      __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
      if (__str[1].__r_.__value_.__s.__data_[7] < 0)
      {
        operator delete(__str[0].__r_.__value_.__l.__size_);
      }

      if (SHIBYTE(v234.__end_) < 0)
      {
        operator delete(v234.__first_);
      }

      v211 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__str, &byte_262899963);
      *v211 = byte_287529580;
      v212 = (v211 + 1);
      if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v212, __str[0].__r_.__value_.__l.__data_, __str[0].__r_.__value_.__l.__size_);
      }

      else
      {
        v222 = *&__str[0].__r_.__value_.__l.__data_;
        v211[3] = *(&__str[0].__r_.__value_.__l + 2);
        *&v212->__r_.__value_.__l.__data_ = v222;
      }

      *v211 = &unk_287527330;
    }

    if (*&__s[16] >= *&__s[8])
    {
      if (v246)
      {
        LOBYTE(v234.__first_) = 0;
        TBuffer<char>::insert(__s, *&__s[16], &v234, 1uLL);
        --*&__s[16];
      }

      else if (*&__s[8])
      {
        *(*__s + *&__s[8] - 1) = 0;
      }
    }

    else
    {
      *(*__s + *&__s[16]) = 0;
    }

    if (atol(*__s) != 1)
    {
      v175 = &this->__r_.__value_.__r.__words[2];
      if (this[1].__r_.__value_.__s.__data_[15] < 0)
      {
        v175 = *v175;
      }

      tknPrintf("Error: '%s' : VERSION must be 1\n", v56, v57, v58, v59, v175);
      std::string::basic_string[abi:ne200100]<0>(&v234, &byte_262899963);
      __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
      if (SHIBYTE(v234.__end_) < 0)
      {
        std::string::__init_copy_ctor_external(&__str[0].__r_.__value_.__r.__words[1], v234.__first_, v234.__begin_);
      }

      else
      {
        *&__str[0].__r_.__value_.__r.__words[1] = *&v234.__first_;
        __str[1].__r_.__value_.__r.__words[0] = v234.__end_;
      }

      __str[0].__r_.__value_.__r.__words[0] = &unk_287526298;
      if (__str[1].__r_.__value_.__s.__data_[7] >= 0)
      {
        v213 = &__str[0].__r_.__value_.__s.__data_[8];
      }

      else
      {
        v213 = __str[0].__r_.__value_.__l.__size_;
      }

      conditionalAssert(v213, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 325, v176, v177);
      __str[0].__r_.__value_.__r.__words[0] = byte_287529580;
      if (__str[1].__r_.__value_.__s.__data_[7] < 0)
      {
        operator delete(__str[0].__r_.__value_.__l.__size_);
      }

      if (SHIBYTE(v234.__end_) < 0)
      {
        operator delete(v234.__first_);
      }

      v214 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__str, &byte_262899963);
      *v214 = byte_287529580;
      v215 = (v214 + 1);
      if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v215, __str[0].__r_.__value_.__l.__data_, __str[0].__r_.__value_.__l.__size_);
      }

      else
      {
        v223 = *&__str[0].__r_.__value_.__l.__data_;
        v214[3] = *(&__str[0].__r_.__value_.__l + 2);
        *&v215->__r_.__value_.__l.__data_ = v223;
      }

      *v214 = &unk_287526298;
    }

    goto LABEL_194;
  }

  v22 = this->__r_.__value_.__r.__words[0];
  v239 = 0u;
  v240 = 0u;
  v237 = 0u;
  v238 = 0u;
  v236 = 0u;
  memset(__str, 0, sizeof(__str));
  v241 = v4;
  std::istream::seekg();
  v2 = 0;
LABEL_265:
  if (v253 == 1 && __s1 != v252 && __s1)
  {
    MEMORY[0x26672B1B0]();
  }

LABEL_269:
  v86 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_2626A73D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void *a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, void *a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
    if ((v35 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v35)
  {
LABEL_6:
    __p = &a21;
    std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
    if (LOBYTE(STACK[0x5E0]) == 1 && STACK[0x4C8] != a11 && STACK[0x4C8] != 0)
    {
      MEMORY[0x26672B1B0]();
    }

    if (LOBYTE(STACK[0x700]) == 1)
    {
      v38 = STACK[0x5E8];
      if (STACK[0x5E8] != a12)
      {
        if (v38)
        {
          MEMORY[0x26672B1B0](v38, 0x1000C4077774924);
        }
      }
    }

    if (LOBYTE(STACK[0x820]) == 1)
    {
      v39 = STACK[0x708];
      if (STACK[0x708] != a14)
      {
        if (v39)
        {
          MEMORY[0x26672B1B0](v39, 0x1000C4077774924);
        }
      }
    }

    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v34);
  goto LABEL_6;
}

BOOL TInputStream::getNextLine(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 104);
  v4 = MEMORY[0x277D82680];
  v5 = MEMORY[0x277D85DE0];
  while (1)
  {
    std::ios_base::getloc((*a1 + *(**a1 - 24)));
    v6 = std::locale::use_facet(&v24, v4);
    (v6->__vftable[2].~facet_0)(v6, 10);
    std::locale::~locale(&v24);
    v7 = std::istream::getline();
    v8 = *(v7 + *(*v7 - 24) + 32) & 5;
    if (v8)
    {
      break;
    }

    ++*(a1 + 64);
    if (*(a1 + 127) < 0)
    {
      if (*(a1 + 112))
      {
        v9 = *v3;
LABEL_8:
        v10 = strstr(__s1, v9);
        if (v10)
        {
          *v10 = 0;
        }
      }
    }

    else
    {
      v9 = v3;
      if (*(a1 + 127))
      {
        goto LABEL_8;
      }
    }

    v11 = __s1[0];
    if (__s1[0])
    {
      v12 = __s1;
      do
      {
        if ((v11 & 0x80) != 0)
        {
          v13 = __maskrune(v11, 0x4000uLL);
        }

        else
        {
          v13 = *(v5 + 4 * v11 + 60) & 0x4000;
        }

        if (!v13)
        {
          break;
        }

        v14 = *++v12;
        v11 = v14;
      }

      while (v14);
    }

    else
    {
      v12 = __s1;
    }

    v15 = &__s1[strlen(__s1)];
    v16 = v15 - v12;
    do
    {
      v17 = v15;
      v18 = v16;
      if (v15 <= v12)
      {
        break;
      }

      --v15;
      v19 = *(v17 - 1);
      v20 = v19 < 0 ? __maskrune(*(v17 - 1), 0x4000uLL) : *(v5 + 4 * v19 + 60) & 0x4000;
      v16 = v18 - 1;
    }

    while (v20);
    if (v17 != v12)
    {
      TBuffer<char>::resize(a2, 0);
      TBuffer<char>::insert(a2, 0, v12, v18);
      break;
    }
  }

  result = v8 == 0;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v30 = *MEMORY[0x277D85DE8];
  v23 = (a1 + 128);
  __s1 = v26;
  v25 = xmmword_26286B6F0;
  v27 = 1;
  while (1)
  {
    std::ios_base::getloc((*a1 + *(**a1 - 24)));
    v3 = std::locale::use_facet(&v28, MEMORY[0x277D82680]);
    (v3->__vftable[2].~facet_0)(v3, 10);
    std::locale::~locale(&v28);
    v4 = std::istream::getline();
    v5 = *(v4 + *(*v4 - 24) + 32) & 5;
    if (v5)
    {
      goto LABEL_78;
    }

    ++*(a1 + 64);
    TBuffer<wchar_t>::resize(&__s1, 0);
    TLocaleInfo::multiByteToUnicode(*(a1 + 176), v29, &__s1);
    if ((*(a1 + 151) & 0x8000000000000000) != 0)
    {
      if (*(a1 + 136))
      {
LABEL_7:
        if (*(&v25 + 1) >= v25)
        {
          if (v27)
          {
            LODWORD(v28.__locale_) = 0;
            TBuffer<wchar_t>::insert(&__s1, *(&v25 + 1), &v28, 1uLL);
            v6 = __s1;
            --*(&v25 + 1);
          }

          else
          {
            v6 = __s1;
            if (v25)
            {
              __s1[v25 - 1] = 0;
            }
          }
        }

        else
        {
          v6 = __s1;
          __s1[*(&v25 + 1)] = 0;
        }

        v7 = v23;
        if (*(a1 + 151) < 0)
        {
          v7 = *v23;
        }

        v8 = wcsstr(v6, v7);
        if (v8)
        {
          if (*(&v25 + 1) >= v25)
          {
            if (v27)
            {
              LODWORD(v28.__locale_) = 0;
              TBuffer<wchar_t>::insert(&__s1, *(&v25 + 1), &v28, 1uLL);
              v9 = __s1;
              --*(&v25 + 1);
            }

            else
            {
              v9 = __s1;
              if (v25)
              {
                __s1[v25 - 1] = 0;
              }
            }
          }

          else
          {
            v9 = __s1;
            __s1[*(&v25 + 1)] = 0;
          }

          TBuffer<wchar_t>::resize(&__s1, v8 - v9);
        }
      }
    }

    else if (*(a1 + 151))
    {
      goto LABEL_7;
    }

    if (*(&v25 + 1))
    {
      v10 = 0;
      while (1)
      {
        v11 = __s1[v10];
        {
          operator new();
        }

        if (v11 <= 159)
        {
          if (v11 > 0x20 || ((1 << v11) & 0x100002600) == 0)
          {
            goto LABEL_48;
          }

          goto LABEL_44;
        }

        if (v11 >= 12288)
        {
          break;
        }

        if (v11 != 160 && v11 != 8203)
        {
          goto LABEL_48;
        }

LABEL_44:
        ++v10;
        v15 = *(&v25 + 1);
        if (v10 >= *(&v25 + 1))
        {
          goto LABEL_49;
        }
      }

      if (v11 == 12288 || v11 == 65279)
      {
        goto LABEL_44;
      }

LABEL_48:
      v15 = *(&v25 + 1);
LABEL_49:
      if (v15 > v10)
      {
        do
        {
          v16 = __s1[v15 - 1];
          {
            operator new();
          }

          if (v16 > 159)
          {
            if (v16 >= 12288)
            {
              if (v16 != 65279 && v16 != 12288)
              {
                goto LABEL_70;
              }
            }

            else if (v16 != 160 && v16 != 8203)
            {
              goto LABEL_70;
            }
          }

          else if (v16 > 0x20 || ((1 << v16) & 0x100002600) == 0)
          {
            goto LABEL_70;
          }

          --v15;
        }

        while (v15 > v10);
        v15 = v10;
      }

LABEL_70:
      if (v15 != v10)
      {
        break;
      }
    }
  }

  if (*(&v25 + 1) >= v25)
  {
    if (v27)
    {
      LODWORD(v28.__locale_) = 0;
      TBuffer<wchar_t>::insert(&__s1, *(&v25 + 1), &v28, 1uLL);
      v19 = __s1;
      --*(&v25 + 1);
    }

    else
    {
      v19 = __s1;
      if (v25)
      {
        __s1[v25 - 1] = 0;
      }
    }
  }

  else
  {
    v19 = __s1;
    __s1[*(&v25 + 1)] = 0;
  }

  TBuffer<wchar_t>::resize(a2, 0);
  TBuffer<wchar_t>::insert(a2, 0, &v19[v10], v15 - v10);
LABEL_78:
  if (v27 == 1 && __s1 != v26 && __s1)
  {
    MEMORY[0x26672B1B0]();
  }

  result = v5 == 0;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL TInputStream::isParameter(TInputStream *this, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v3 = std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::find<std::string>(this + 152, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return (this + 160) != v3;
}

void sub_2626A7A54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2626A7F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  MEMORY[0x26672B1B0](a10, 0x1070C40ADD13FEBLL);
  if (LOBYTE(STACK[0x440]) == 1 && a14 != a11 && a14 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

uint64_t TInputStream::getBoolParameter(TInputStream *this, char *a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v6 = std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::find<std::string>(this + 152, __p);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (this + 160 != v6)
  {
    v24 = 0;
    v7 = v6 + 56;
    if (v6[79] < 0)
    {
      v7 = *v7;
    }

    {
      operator new();
    }

    v8 = TLocaleInfo::stringToBool(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v7, &v24);
    if (v24)
    {
      tknPrintf("Error: Expected Boolean value for '%s'\n", v9, v10, v11, v12, a2);
      std::string::basic_string[abi:ne200100]<0>(v20, &byte_262899963);
      *__p = byte_287529580;
      if (SHIBYTE(v21) < 0)
      {
        std::string::__init_copy_ctor_external(&__p[8], v20[0], v20[1]);
      }

      else
      {
        *&__p[8] = *v20;
        v23 = v21;
      }

      *__p = &unk_287528000;
      if (v23 >= 0)
      {
        v16 = &__p[8];
      }

      else
      {
        v16 = *&__p[8];
      }

      conditionalAssert(v16, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 525, v14, v15);
      *__p = byte_287529580;
      if (SHIBYTE(v23) < 0)
      {
        operator delete(*&__p[8]);
      }

      if (SHIBYTE(v21) < 0)
      {
        operator delete(v20[0]);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *exception = byte_287529580;
      v18 = (exception + 1);
      if ((__p[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v18, *__p, *&__p[8]);
      }

      else
      {
        v19 = *__p;
        exception[3] = *&__p[16];
        *&v18->__r_.__value_.__l.__data_ = v19;
      }

      *exception = &unk_287528000;
    }

    return v8;
  }

  return a3;
}

void sub_2626A8240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, void *a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26)
{
  MEMORY[0x26672B1B0](v26, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

uint64_t TInputStream::getStringParameter(uint64_t a1, char *a2, uint64_t a3, int *a4)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v7 = std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::find<std::string>(a1 + 152, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 160 != v7)
  {
    a4 = (v7 + 56);
    if (*(v7 + 79) < 0)
    {
      a4 = *a4;
    }
  }

  return TBuffer<wchar_t>::assign(a3, a4);
}

void sub_2626A837C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TOutputStream::operator<<(uint64_t a1, unsigned int *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  __s = v10;
  v9 = xmmword_26286B6F0;
  v11 = 1;
  TLocaleInfo::unicodeToMultiByte(*(a1 + 16), a2, &__s);
  v3 = *a1;
  if (*(&v9 + 1) >= v9)
  {
    if (v11)
    {
      v7 = 0;
      TBuffer<char>::insert(&__s, *(&v9 + 1), &v7, 1uLL);
      --*(&v9 + 1);
    }

    else if (v9)
    {
      __s[v9 - 1] = 0;
    }
  }

  else
  {
    __s[*(&v9 + 1)] = 0;
  }

  v4 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, __s, v4);
  if (v11 == 1 && __s != v10 && __s)
  {
    MEMORY[0x26672B1B0]();
  }

  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2626A84D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (a45 == 1)
  {
    TPToken_Tokenize_cold_1(&a10, v45);
  }

  _Unwind_Resume(exception_object);
}

void *TOutputStream::writeHeader(void **a1, const char *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3 + 32 * a4;
  v10 = *(v8 - 16);
  v9 = *(v8 - 8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a1, "HEADER_BEGIN\n", 13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a1, "  VERSION 1\n", 12);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a1, "  FILE_TYPE ", 12);
  v12 = strlen(a2);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, a2, v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "\n", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a1, "  FILE_VERSION ", 15);
  if (*v10)
  {
    v14 = strlen(v10);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a1, v10, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ".", 1);
  }

  v16 = MEMORY[0x26672B080](*a1, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "\n", 1);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a1, "  CODEPAGE ", 11);
  if (*(a1[2] + 16) == 2)
  {
    v18 = "UTF-8";
  }

  else
  {
    v18 = "1252";
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, v18);
  if (v41 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v41 >= 0)
  {
    v20 = HIBYTE(v41);
  }

  else
  {
    v20 = v41;
  }

  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, p_p, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "\n", 1);
  if (SHIBYTE(v41) < 0)
  {
    operator delete(__p);
    if (!a5)
    {
      goto LABEL_43;
    }
  }

  else if (!a5)
  {
    goto LABEL_43;
  }

  v24 = *a5;
  v22 = a5 + 1;
  v23 = v24;
  __p = v42;
  v41 = xmmword_26286B6F0;
  v43 = 1;
  if (v24 == v22)
  {
    goto LABEL_38;
  }

  do
  {
    TBuffer<char>::resize(&__p, 0);
    v25 = (v23 + 7);
    if (*(v23 + 79) < 0)
    {
      v25 = *v25;
    }

    TLocaleInfo::unicodeToMultiByte(a1[2], v25, &__p);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a1, "  PARAMETER ", 12);
    v27 = *(v23 + 55);
    if (v27 >= 0)
    {
      v28 = (v23 + 4);
    }

    else
    {
      v28 = v23[4];
    }

    if (v27 >= 0)
    {
      v29 = *(v23 + 55);
    }

    else
    {
      v29 = v23[5];
    }

    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v28, v29);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "=", 1);
    if (*(&v41 + 1) >= v41)
    {
      if (v43)
      {
        v39 = 0;
        TBuffer<char>::insert(&__p, *(&v41 + 1), &v39, 1uLL);
        --*(&v41 + 1);
      }

      else if (v41)
      {
        *(__p + v41 - 1) = 0;
      }
    }

    else
    {
      *(__p + *(&v41 + 1)) = 0;
    }

    v32 = strlen(__p);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, __p, v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "\n", 1);
    v34 = v23[1];
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
        v35 = v23[2];
        v36 = *v35 == v23;
        v23 = v35;
      }

      while (!v36);
    }

    v23 = v35;
  }

  while (v35 != v22);
  if (v43)
  {
LABEL_38:
    v36 = __p == v42 || __p == 0;
    if (!v36)
    {
      MEMORY[0x26672B1B0]();
    }
  }

LABEL_43:
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a1, "HEADER_END\n", 11);
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2626A887C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TInputModel::TInputModel(TInputModel *this, const TDataManager *a2, const TDataManager *a3, char a4, const char *a5)
{
  *this = a2;
  *(this + 1) = a3;
  IntVar = TInputModel::getIntVar(this, "Version", 1);
  *(this + 2) = IntVar;
  if ((IntVar - 3) <= 0xFFFFFFFD)
  {
    tknPrintf("Error: %llu : Expected %s in range [%llu,%llu]\n", v9, v10, v11, v12, IntVar, "Version", 1, 2);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *v139 = byte_287529580;
    if (SHIBYTE(v138) < 0)
    {
      std::string::__init_copy_ctor_external(&v139[8], __p[0], __p[1]);
    }

    else
    {
      *&v139[8] = *__p;
      v140 = v138;
    }

    *v139 = &unk_287528000;
    if (v140 >= 0)
    {
      v49 = &v139[8];
    }

    else
    {
      v49 = *&v139[8];
    }

    conditionalAssert(v49, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 609, v45, v46);
    *v139 = byte_287529580;
    if (SHIBYTE(v140) < 0)
    {
      operator delete(*&v139[8]);
    }

    if (SHIBYTE(v138) < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v139, &byte_262899963);
    *exception = byte_287529580;
    v51 = (exception + 1);
    if ((v139[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v51, *v139, *&v139[8]);
    }

    else
    {
      v106 = *v139;
      exception[3] = *&v139[16];
      *&v51->__r_.__value_.__l.__data_ = v106;
    }

    *exception = &unk_287528000;
  }

  if (IntVar != 1)
  {
    v17 = *(this + 1);
    if (v17)
    {
      if (!(*(*v17 + 40))(v17, "Version", 0, 0))
      {
        tknPrintf("Error: bad model. Couldn't locate %s in static component.\n", v18, v19, v20, v21, "Version");
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v139 = byte_287529580;
        if (SHIBYTE(v138) < 0)
        {
          std::string::__init_copy_ctor_external(&v139[8], __p[0], __p[1]);
        }

        else
        {
          *&v139[8] = *__p;
          v140 = v138;
        }

        *v139 = &unk_287528000;
        if (v140 >= 0)
        {
          v83 = &v139[8];
        }

        else
        {
          v83 = *&v139[8];
        }

        conditionalAssert(v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 683, v58, v59);
        *v139 = byte_287529580;
        if (SHIBYTE(v140) < 0)
        {
          operator delete(*&v139[8]);
        }

        if (SHIBYTE(v138) < 0)
        {
          operator delete(__p[0]);
        }

        v84 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v139, &byte_262899963);
        *v84 = byte_287529580;
        v85 = (v84 + 1);
        if ((v139[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v85, *v139, *&v139[8]);
        }

        else
        {
          v122 = *v139;
          v84[3] = *&v139[16];
          *&v85->__r_.__value_.__l.__data_ = v122;
        }

        *v84 = &unk_287528000;
      }

      if ((TDataManager::getBoolVar(*(this + 1), "IsStaticComponent", 0) & 1) == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "Bad static data spec");
        *v139 = byte_287529580;
        if (SHIBYTE(v138) < 0)
        {
          std::string::__init_copy_ctor_external(&v139[8], __p[0], __p[1]);
        }

        else
        {
          *&v139[8] = *__p;
          v140 = v138;
        }

        *v139 = &unk_287528000;
        if (v140 >= 0)
        {
          v86 = &v139[8];
        }

        else
        {
          v86 = *&v139[8];
        }

        conditionalAssert(v86, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 689, v60, v61);
        *v139 = byte_287529580;
        if (SHIBYTE(v140) < 0)
        {
          operator delete(*&v139[8]);
        }

        if (SHIBYTE(v138) < 0)
        {
          operator delete(__p[0]);
        }

        v87 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v139, "Bad static data spec");
        *v87 = byte_287529580;
        v88 = (v87 + 1);
        if ((v139[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v88, *v139, *&v139[8]);
        }

        else
        {
          v123 = *v139;
          v87[3] = *&v139[16];
          *&v88->__r_.__value_.__l.__data_ = v123;
        }

        *v87 = &unk_287528000;
      }
    }

    if (*this)
    {
      if (!(*(**this + 40))(*this, "Version", 0, 0))
      {
        tknPrintf("Error: bad model. Couldn't locate %s in dynamic component.\n", v22, v23, v24, v25, "Version");
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v139 = byte_287529580;
        if (SHIBYTE(v138) < 0)
        {
          std::string::__init_copy_ctor_external(&v139[8], __p[0], __p[1]);
        }

        else
        {
          *&v139[8] = *__p;
          v140 = v138;
        }

        *v139 = &unk_287528000;
        if (v140 >= 0)
        {
          v89 = &v139[8];
        }

        else
        {
          v89 = *&v139[8];
        }

        conditionalAssert(v89, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 699, v62, v63);
        *v139 = byte_287529580;
        if (SHIBYTE(v140) < 0)
        {
          operator delete(*&v139[8]);
        }

        if (SHIBYTE(v138) < 0)
        {
          operator delete(__p[0]);
        }

        v90 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v139, &byte_262899963);
        *v90 = byte_287529580;
        v91 = (v90 + 1);
        if ((v139[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v91, *v139, *&v139[8]);
        }

        else
        {
          v124 = *v139;
          v90[3] = *&v139[16];
          *&v91->__r_.__value_.__l.__data_ = v124;
        }

        *v90 = &unk_287528000;
      }

      if (TDataManager::getBoolVar(*this, "IsStaticComponent", 0))
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "Bad dynamic data spec");
        *v139 = byte_287529580;
        if (SHIBYTE(v138) < 0)
        {
          std::string::__init_copy_ctor_external(&v139[8], __p[0], __p[1]);
        }

        else
        {
          *&v139[8] = *__p;
          v140 = v138;
        }

        *v139 = &unk_287528000;
        if (v140 >= 0)
        {
          v92 = &v139[8];
        }

        else
        {
          v92 = *&v139[8];
        }

        conditionalAssert(v92, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 705, v64, v65);
        *v139 = byte_287529580;
        if (SHIBYTE(v140) < 0)
        {
          operator delete(*&v139[8]);
        }

        if (SHIBYTE(v138) < 0)
        {
          operator delete(__p[0]);
        }

        v93 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v139, "Bad dynamic data spec");
        *v93 = byte_287529580;
        v94 = (v93 + 1);
        if ((v139[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v94, *v139, *&v139[8]);
        }

        else
        {
          v125 = *v139;
          v93[3] = *&v139[16];
          *&v94->__r_.__value_.__l.__data_ = v125;
        }

        *v93 = &unk_287528000;
      }

      if (*this)
      {
        v26 = *(this + 1);
        if (v26)
        {
          v27 = TDataManager::getIntVar(v26, "Version", 1);
          if (v27 != TDataManager::getIntVar(*this, "Version", 1))
          {
            tknPrintf("Error: %s : Unmatched dynamic and static data specs\n", v28, v29, v30, v31, "Version");
            std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
            *v139 = byte_287529580;
            if (SHIBYTE(v138) < 0)
            {
              std::string::__init_copy_ctor_external(&v139[8], __p[0], __p[1]);
            }

            else
            {
              *&v139[8] = *__p;
              v140 = v138;
            }

            *v139 = &unk_287528000;
            if (v140 >= 0)
            {
              v110 = &v139[8];
            }

            else
            {
              v110 = *&v139[8];
            }

            conditionalAssert(v110, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 715, v104, v105);
            *v139 = byte_287529580;
            if (SHIBYTE(v140) < 0)
            {
              operator delete(*&v139[8]);
            }

            if (SHIBYTE(v138) < 0)
            {
              operator delete(__p[0]);
            }

            v111 = __cxa_allocate_exception(0x20uLL);
            std::string::basic_string[abi:ne200100]<0>(v139, &byte_262899963);
            *v111 = byte_287529580;
            v112 = (v111 + 1);
            if ((v139[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(v112, *v139, *&v139[8]);
            }

            else
            {
              v130 = *v139;
              v111[3] = *&v139[16];
              *&v112->__r_.__value_.__l.__data_ = v130;
            }

            *v111 = &unk_287528000;
          }

          __p[0] = 0;
          __p[1] = 0;
          v138 = 0;
          TDataManager::getStringVar(*this);
          v135[0] = 0;
          v135[1] = 0;
          v136 = 0;
          TDataManager::getStringVar(*(this + 1));
          if (memcmp(__p, v135, 0))
          {
            tknPrintf("Error: %s : Unmatched dynamic and static data specs\n", v32, v33, v34, v35, "EnhVersion");
            std::string::basic_string[abi:ne200100]<0>(v133, &byte_262899963);
            *v139 = byte_287529580;
            if (SHIBYTE(v134) < 0)
            {
              std::string::__init_copy_ctor_external(&v139[8], v133[0], v133[1]);
            }

            else
            {
              *&v139[8] = *v133;
              v140 = v134;
            }

            *v139 = &unk_287528000;
            if (v140 >= 0)
            {
              v119 = &v139[8];
            }

            else
            {
              v119 = *&v139[8];
            }

            conditionalAssert(v119, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 726, v79, v80);
            *v139 = byte_287529580;
            if (SHIBYTE(v140) < 0)
            {
              operator delete(*&v139[8]);
            }

            if (SHIBYTE(v134) < 0)
            {
              operator delete(v133[0]);
            }

            v120 = __cxa_allocate_exception(0x20uLL);
            std::string::basic_string[abi:ne200100]<0>(v139, &byte_262899963);
            *v120 = byte_287529580;
            v121 = (v120 + 1);
            if ((v139[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(v121, *v139, *&v139[8]);
            }

            else
            {
              v132 = *v139;
              v120[3] = *&v139[16];
              *&v121->__r_.__value_.__l.__data_ = v132;
            }

            *v120 = &unk_287528000;
          }
        }
      }
    }

    if (g_bCheckVocCompatibility != 1)
    {
      return;
    }

    __p[0] = 0;
    __p[1] = 0;
    v138 = 0;
    TInputModel::getStringVar(this, "VocVersionID");
    v36 = HIBYTE(v138);
    if (v138 >= 0)
    {
      v37 = HIBYTE(v138);
    }

    else
    {
      v37 = __p[1];
    }

    if (!v37 || !*a5)
    {
LABEL_40:
      if (v36 < 0)
      {
        operator delete(__p[0]);
      }

      return;
    }

    v38 = strlen(a5);
    v39 = v38;
    if (v138 < 0)
    {
      if (v38 != __p[1])
      {
        goto LABEL_107;
      }

      if (__p[1] == -1)
      {
        std::wstring::__throw_out_of_range[abi:ne200100]();
      }

      v40 = __p[0];
    }

    else
    {
      if (v38 != HIBYTE(v138))
      {
        goto LABEL_107;
      }

      v40 = __p;
    }

    if (!memcmp(v40, a5, v39))
    {
      goto LABEL_40;
    }

LABEL_107:
    std::string::basic_string[abi:ne200100]<0>(v135, "The model and lexicon are incompatible (different VocVersionID)");
    *v139 = byte_287529580;
    if (SHIBYTE(v136) < 0)
    {
      std::string::__init_copy_ctor_external(&v139[8], v135[0], v135[1]);
    }

    else
    {
      *&v139[8] = *v135;
      v140 = v136;
    }

    *v139 = &unk_287528000;
    if (v140 >= 0)
    {
      v113 = &v139[8];
    }

    else
    {
      v113 = *&v139[8];
    }

    conditionalAssert(v113, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 740, v81, v82);
    *v139 = byte_287529580;
    if (SHIBYTE(v140) < 0)
    {
      operator delete(*&v139[8]);
    }

    if (SHIBYTE(v136) < 0)
    {
      operator delete(v135[0]);
    }

    v114 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v139, "The model and lexicon are incompatible (different VocVersionID)");
    *v114 = byte_287529580;
    v115 = (v114 + 1);
    if ((v139[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v115, *v139, *&v139[8]);
    }

    else
    {
      v131 = *v139;
      v114[3] = *&v139[16];
      *&v115->__r_.__value_.__l.__data_ = v131;
    }

    *v114 = &unk_287528000;
  }

  if (!*this)
  {
    tknPrintf("Error: Bad model. %s is 1 but there is not dynamic component.\n", v9, v10, v11, v12, "Version");
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *v139 = byte_287529580;
    if (SHIBYTE(v138) < 0)
    {
      std::string::__init_copy_ctor_external(&v139[8], __p[0], __p[1]);
    }

    else
    {
      *&v139[8] = *__p;
      v140 = v138;
    }

    *v139 = &unk_287528000;
    if (v140 >= 0)
    {
      v70 = &v139[8];
    }

    else
    {
      v70 = *&v139[8];
    }

    conditionalAssert(v70, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 617, v52, v53);
    *v139 = byte_287529580;
    if (SHIBYTE(v140) < 0)
    {
      operator delete(*&v139[8]);
    }

    if (SHIBYTE(v138) < 0)
    {
      operator delete(__p[0]);
    }

    v71 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v139, &byte_262899963);
    *v71 = byte_287529580;
    v72 = (v71 + 1);
    if ((v139[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v72, *v139, *&v139[8]);
    }

    else
    {
      v116 = *v139;
      v71[3] = *&v139[16];
      *&v72->__r_.__value_.__l.__data_ = v116;
    }

    *v71 = &unk_287528000;
  }

  if (!(*(**this + 40))(*this, "Version", 0, 0))
  {
    tknPrintf("Error: Bad model. Couldn't locate %s\n", v13, v14, v15, v16, "Version");
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *v139 = byte_287529580;
    if (SHIBYTE(v138) < 0)
    {
      std::string::__init_copy_ctor_external(&v139[8], __p[0], __p[1]);
    }

    else
    {
      *&v139[8] = *__p;
      v140 = v138;
    }

    *v139 = &unk_287528000;
    if (v140 >= 0)
    {
      v73 = &v139[8];
    }

    else
    {
      v73 = *&v139[8];
    }

    conditionalAssert(v73, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 624, v54, v55);
    *v139 = byte_287529580;
    if (SHIBYTE(v140) < 0)
    {
      operator delete(*&v139[8]);
    }

    if (SHIBYTE(v138) < 0)
    {
      operator delete(__p[0]);
    }

    v74 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v139, &byte_262899963);
    *v74 = byte_287529580;
    v75 = (v74 + 1);
    if ((v139[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v75, *v139, *&v139[8]);
    }

    else
    {
      v117 = *v139;
      v74[3] = *&v139[16];
      *&v75->__r_.__value_.__l.__data_ = v117;
    }

    *v74 = &unk_287528000;
  }

  if (g_bCheckVocCompatibility == 1)
  {
    __p[0] = 0;
    __p[1] = 0;
    v138 = 0;
    TDataManager::getStringVar(*this);
  }

  if (TDataManager::getBoolVar(*this, "IsStaticComponent", 0))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "Bad data spec");
    *v139 = byte_287529580;
    if (SHIBYTE(v138) < 0)
    {
      std::string::__init_copy_ctor_external(&v139[8], __p[0], __p[1]);
    }

    else
    {
      *&v139[8] = *__p;
      v140 = v138;
    }

    *v139 = &unk_287528000;
    if (v140 >= 0)
    {
      v76 = &v139[8];
    }

    else
    {
      v76 = *&v139[8];
    }

    conditionalAssert(v76, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 641, v56, v57);
    *v139 = byte_287529580;
    if (SHIBYTE(v140) < 0)
    {
      operator delete(*&v139[8]);
    }

    if (SHIBYTE(v138) < 0)
    {
      operator delete(__p[0]);
    }

    v77 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v139, "Bad data spec");
    *v77 = byte_287529580;
    v78 = (v77 + 1);
    if ((v139[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v78, *v139, *&v139[8]);
    }

    else
    {
      v118 = *v139;
      v77[3] = *&v139[16];
      *&v78->__r_.__value_.__l.__data_ = v118;
    }

    *v77 = &unk_287528000;
  }

  v41 = *(this + 1);
  BoolVar = TDataManager::getBoolVar(*this, "HasStaticComponent", 0);
  if (v41)
  {
    if ((BoolVar & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "Bad static data spec");
      *v139 = byte_287529580;
      if (SHIBYTE(v138) < 0)
      {
        std::string::__init_copy_ctor_external(&v139[8], __p[0], __p[1]);
      }

      else
      {
        *&v139[8] = *__p;
        v140 = v138;
      }

      *v139 = &unk_287528000;
      if (v140 >= 0)
      {
        v95 = &v139[8];
      }

      else
      {
        v95 = *&v139[8];
      }

      conditionalAssert(v95, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 657, v66, v67);
      *v139 = byte_287529580;
      if (SHIBYTE(v140) < 0)
      {
        operator delete(*&v139[8]);
      }

      if (SHIBYTE(v138) < 0)
      {
        operator delete(__p[0]);
      }

      v96 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v139, "Bad static data spec");
      *v96 = byte_287529580;
      v97 = (v96 + 1);
      if ((v139[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v97, *v139, *&v139[8]);
      }

      else
      {
        v126 = *v139;
        v96[3] = *&v139[16];
        *&v97->__r_.__value_.__l.__data_ = v126;
      }

      *v96 = &unk_287528000;
    }

    if ((TDataManager::getBoolVar(*(this + 1), "IsStaticComponent", 0) & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "Bad static data spec");
      *v139 = byte_287529580;
      if (SHIBYTE(v138) < 0)
      {
        std::string::__init_copy_ctor_external(&v139[8], __p[0], __p[1]);
      }

      else
      {
        *&v139[8] = *__p;
        v140 = v138;
      }

      *v139 = &unk_287528000;
      if (v140 >= 0)
      {
        v98 = &v139[8];
      }

      else
      {
        v98 = *&v139[8];
      }

      conditionalAssert(v98, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 662, v68, v69);
      *v139 = byte_287529580;
      if (SHIBYTE(v140) < 0)
      {
        operator delete(*&v139[8]);
      }

      if (SHIBYTE(v138) < 0)
      {
        operator delete(__p[0]);
      }

      v99 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v139, "Bad static data spec");
      *v99 = byte_287529580;
      v100 = (v99 + 1);
      if ((v139[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v100, *v139, *&v139[8]);
      }

      else
      {
        v127 = *v139;
        v99[3] = *&v139[16];
        *&v100->__r_.__value_.__l.__data_ = v127;
      }

      *v99 = &unk_287528000;
    }

    __p[0] = 0;
    __p[1] = 0;
    v138 = 0;
    TDataManager::getStringVar(*this);
    v135[0] = 0;
    v135[1] = 0;
    v136 = 0;
    TDataManager::getStringVar(*(this + 1));
    v36 = 0;
    if (memcmp(__p, v135, 0))
    {
      std::string::basic_string[abi:ne200100]<0>(v133, "Unmatched data spec and static data spec");
      *v139 = byte_287529580;
      if (SHIBYTE(v134) < 0)
      {
        std::string::__init_copy_ctor_external(&v139[8], v133[0], v133[1]);
      }

      else
      {
        *&v139[8] = *v133;
        v140 = v134;
      }

      *v139 = &unk_287528000;
      if (v140 >= 0)
      {
        v101 = &v139[8];
      }

      else
      {
        v101 = *&v139[8];
      }

      conditionalAssert(v101, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 671, v47, v48);
      *v139 = byte_287529580;
      if (SHIBYTE(v140) < 0)
      {
        operator delete(*&v139[8]);
      }

      if (SHIBYTE(v134) < 0)
      {
        operator delete(v133[0]);
      }

      v102 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v139, "Unmatched data spec and static data spec");
      *v102 = byte_287529580;
      v103 = (v102 + 1);
      if ((v139[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v103, *v139, *&v139[8]);
      }

      else
      {
        v128 = *v139;
        v102[3] = *&v139[16];
        *&v103->__r_.__value_.__l.__data_ = v128;
      }

      *v102 = &unk_287528000;
    }

    goto LABEL_40;
  }

  if ((a4 & 1) == 0 && ((BoolVar ^ 1) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "The data spec has a static component but it was not specified");
    *v139 = byte_287529580;
    if (SHIBYTE(v138) < 0)
    {
      std::string::__init_copy_ctor_external(&v139[8], __p[0], __p[1]);
    }

    else
    {
      *&v139[8] = *__p;
      v140 = v138;
    }

    *v139 = &unk_287528000;
    if (v140 >= 0)
    {
      v107 = &v139[8];
    }

    else
    {
      v107 = *&v139[8];
    }

    conditionalAssert(v107, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/misc.cpp", 649, v43, v44);
    *v139 = byte_287529580;
    if (SHIBYTE(v140) < 0)
    {
      operator delete(*&v139[8]);
    }

    if (SHIBYTE(v138) < 0)
    {
      operator delete(__p[0]);
    }

    v108 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v139, "The data spec has a static component but it was not specified");
    *v108 = byte_287529580;
    v109 = (v108 + 1);
    if ((v139[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v109, *v139, *&v139[8]);
    }

    else
    {
      v129 = *v139;
      v108[3] = *&v139[16];
      *&v109->__r_.__value_.__l.__data_ = v129;
    }

    *v108 = &unk_287528000;
  }
}