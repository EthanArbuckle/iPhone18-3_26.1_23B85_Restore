void sub_26266C0FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t TPLexicon_Close(unint64_t a1)
{
  TReentrancyHandler::TReentrancyHandler(&v18, "TPLexicon_Close");
  TLocaleHandler::TLocaleHandler(&v16);
  MrecInitModule_sdpres_sdapi();
  if ((g_bInitialized & 1) == 0)
  {
    conditionalAssert("Not initialized", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tplexicon.cpp", 86, v2, v3);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v14, "Not initialized");
    *exception = byte_287529580;
    v9 = (exception + 1);
    if (SHIBYTE(v15) < 0)
    {
      std::string::__init_copy_ctor_external(v9, v14, *(&v14 + 1));
    }

    else
    {
      v12 = v14;
      exception[3] = v15;
      *&v9->__r_.__value_.__l.__data_ = v12;
    }

    *exception = &unk_2875282E0;
    exception[4] = 4;
  }

  v4 = verifyLexiconHandle(a1, "Bad input lexicon handle");
  if (v4[90])
  {
    conditionalAssert("Lexicon is referenced", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tplexicon.cpp", 89, v5, v6);
    v10 = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v14, "Lexicon is referenced");
    *v10 = byte_287529580;
    v11 = (v10 + 1);
    if (SHIBYTE(v15) < 0)
    {
      std::string::__init_copy_ctor_external(v11, v14, *(&v14 + 1));
    }

    else
    {
      v13 = v14;
      v10[3] = v15;
      *&v11->__r_.__value_.__l.__data_ = v13;
    }

    *v10 = &unk_2875282E0;
    v10[4] = 7;
  }

  (*(*v4 + 8))(v4);
  MrecInitModule_sdpres_sdapi();
  if ((v17 & 1) == 0)
  {
    uselocale(v16);
  }

  TReentrancyHandler::ms_bIn = 0;
  return 0;
}

void sub_26266C38C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, locale_t a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v21)
  {
LABEL_6:
    MrecInitModule_sdpres_sdapi();
    TLocaleHandler::~TLocaleHandler(&a20);
    TReentrancyHandler::ms_bIn = 0;
    switch(a2)
    {
      case 7:
        v26 = __cxa_begin_catch(a1);
        v27 = v26 + 8;
        if (v26[31] < 0)
        {
          v27 = *v27;
        }

        handleException(v27, "TPLexicon_Close", *(v26 + 4), v24, v25);
        break;
      case 6:
        v30 = __cxa_begin_catch(a1);
        v31 = v30 + 8;
        if (v30[31] < 0)
        {
          v31 = *v31;
        }

        handleException(v31, "TPLexicon_Close", 6, v28, v29);
        break;
      case 5:
        v34 = __cxa_begin_catch(a1);
        v35 = v34 + 8;
        if (v34[31] < 0)
        {
          v35 = *v35;
        }

LABEL_17:
        handleException(v35, "TPLexicon_Close", 2, v32, v33);
        break;
      case 4:
        v38 = __cxa_begin_catch(a1);
        v39 = v38 + 8;
        if (v38[31] < 0)
        {
          v39 = *v39;
        }

        handleException(v39, "TPLexicon_Close", 11, v36, v37);
        break;
      case 3:
        v40 = __cxa_begin_catch(a1);
        v35 = v40 + 8;
        if (v40[31] < 0)
        {
          v35 = *v35;
        }

        goto LABEL_17;
      case 2:
        v41 = __cxa_begin_catch(a1);
        v42 = (*(*v41 + 16))(v41);
        handleException(v42, "TPLexicon_Close", 1, v43, v44);
        break;
      default:
        if (a2 != 1)
        {
          _Unwind_Resume(a1);
        }

        v45 = __cxa_begin_catch(a1);
        v46 = (*(*v45 + 16))(v45);
        handleException(v46, "TPLexicon_Close", 2, v47, v48);
        break;
    }

    __cxa_end_catch();
    JUMPOUT(0x26266C1E4);
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

uint64_t TPLexicon_GetInfo(unint64_t a1, uint64_t a2)
{
  TReentrancyHandler::TReentrancyHandler(&v21, "TPLexicon_GetInfo");
  TLocaleHandler::TLocaleHandler(&v19);
  MrecInitModule_sdpres_sdapi();
  if ((g_bInitialized & 1) == 0)
  {
    conditionalAssert("Not initialized", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tplexicon.cpp", 134, v4, v5);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v17, "Not initialized");
    *exception = byte_287529580;
    v15 = (exception + 1);
    if (SHIBYTE(v18) < 0)
    {
      std::string::__init_copy_ctor_external(v15, v17, *(&v17 + 1));
    }

    else
    {
      v16 = v17;
      exception[3] = v18;
      *&v15->__r_.__value_.__l.__data_ = v16;
    }

    *exception = &unk_2875282E0;
    exception[4] = 4;
  }

  v6 = verifyLexiconHandle(a1, "Bad input lexicon handle");
  verifyPointerArgument<TPLexiconInfo>(a2, 0, "Bad output lexicon info pointer", v7, v8);
  *(a2 + 8) = *(v6 + 104);
  v9 = *(v6 + 336);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v9 + 144));
  ValidConfig = TParam::getValidConfig((v9 + 144), ActiveConfigHandle);
  v12 = *(v6 + 360);
  *(a2 + 16) = *(v9 + 4 * ValidConfig + 304);
  *(a2 + 20) = v12;
  *a2 = *(*(v6 + 336) + 8);
  MrecInitModule_sdpres_sdapi();
  if ((v20 & 1) == 0)
  {
    uselocale(v19);
  }

  TReentrancyHandler::ms_bIn = 0;
  return 0;
}

void sub_26266C7E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, locale_t a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v21)
  {
LABEL_6:
    MrecInitModule_sdpres_sdapi();
    TLocaleHandler::~TLocaleHandler(&a20);
    TReentrancyHandler::ms_bIn = 0;
    switch(a2)
    {
      case 7:
        v26 = __cxa_begin_catch(a1);
        v27 = v26 + 8;
        if (v26[31] < 0)
        {
          v27 = *v27;
        }

        handleException(v27, "TPLexicon_GetInfo", *(v26 + 4), v24, v25);
        break;
      case 6:
        v30 = __cxa_begin_catch(a1);
        v31 = v30 + 8;
        if (v30[31] < 0)
        {
          v31 = *v31;
        }

        handleException(v31, "TPLexicon_GetInfo", 6, v28, v29);
        break;
      case 5:
        v34 = __cxa_begin_catch(a1);
        v35 = v34 + 8;
        if (v34[31] < 0)
        {
          v35 = *v35;
        }

LABEL_17:
        handleException(v35, "TPLexicon_GetInfo", 2, v32, v33);
        break;
      case 4:
        v38 = __cxa_begin_catch(a1);
        v39 = v38 + 8;
        if (v38[31] < 0)
        {
          v39 = *v39;
        }

        handleException(v39, "TPLexicon_GetInfo", 11, v36, v37);
        break;
      case 3:
        v40 = __cxa_begin_catch(a1);
        v35 = v40 + 8;
        if (v40[31] < 0)
        {
          v35 = *v35;
        }

        goto LABEL_17;
      case 2:
        v41 = __cxa_begin_catch(a1);
        v42 = (*(*v41 + 16))(v41);
        handleException(v42, "TPLexicon_GetInfo", 1, v43, v44);
        break;
      default:
        if (a2 != 1)
        {
          _Unwind_Resume(a1);
        }

        v45 = __cxa_begin_catch(a1);
        v46 = (*(*v45 + 16))(v45);
        handleException(v46, "TPLexicon_GetInfo", 2, v47, v48);
        break;
    }

    __cxa_end_catch();
    JUMPOUT(0x26266C708);
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

uint64_t verifyPointerArgument<TPLexiconInfo>(uint64_t result, char a2, char *a3, uint64_t a4, uint64_t a5)
{
  if (!result && (a2 & 1) == 0)
  {
    conditionalAssert(a3, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/api.h", 279, a4, a5);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v9, a3);
    *exception = byte_287529580;
    v7 = (exception + 1);
    if (SHIBYTE(v10) < 0)
    {
      std::string::__init_copy_ctor_external(v7, v9, *(&v9 + 1));
    }

    else
    {
      v8 = v9;
      exception[3] = v10;
      *&v7->__r_.__value_.__l.__data_ = v8;
    }

    *exception = &unk_2875282E0;
    exception[4] = 3;
  }

  return result;
}

void sub_26266CB78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t TPLexicon_GetHeadClone(unint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, _DWORD *a5)
{
  v46 = *MEMORY[0x277D85DE8];
  TReentrancyHandler::TReentrancyHandler(&v41, "TPLexicon_GetHeadClone");
  TLocaleHandler::TLocaleHandler(&v39);
  MrecInitModule_sdpres_sdapi();
  if ((g_bInitialized & 1) == 0)
  {
    conditionalAssert("Not initialized", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tplexicon.cpp", 314, v10, v11);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(v36, "Not initialized");
    *exception = byte_287529580;
    v26 = (exception + 1);
    if ((v36[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v26, *v36, *&v36[8]);
    }

    else
    {
      v31 = *v36;
      exception[3] = *&v36[16];
      *&v26->__r_.__value_.__l.__data_ = v31;
    }

    *exception = &unk_2875282E0;
    exception[4] = 4;
  }

  v12 = verifyLexiconHandle(a1, "Bad input lexicon handle");
  verifyStringArgument(a2, 0, 0, "Bad input word name pointer", v13);
  *v36 = v37;
  *&v36[8] = xmmword_26286B6F0;
  v38 = 1;
  if (TLocaleInfo::multiByteToUnicode((v12 + 30), a2, v36))
  {
    conditionalAssert("Bad input wordname", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tplexicon.cpp", 320, v14, v15);
    v27 = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&__s, "Bad input wordname");
    *v27 = byte_287529580;
    v28 = (v27 + 1);
    if (SHIBYTE(v43) < 0)
    {
      std::string::__init_copy_ctor_external(v28, __s, *(&__s + 1));
    }

    else
    {
      v32 = __s;
      v27[3] = v43;
      *&v28->__r_.__value_.__l.__data_ = v32;
    }

    *v27 = &unk_2875282E0;
    v27[4] = 3;
  }

  verifyPointerArgument<char,unsigned int>(a3, a4, 1, "Bad output head clone buffer", v15);
  *&__s = a3;
  *(&__s + 1) = a4;
  v43 = 0;
  v45 = 0;
  if (*&v36[16] >= *&v36[8])
  {
    if (v38)
    {
      LODWORD(v34) = 0;
      TBuffer<wchar_t>::insert(v36, *&v36[16], &v34, 1uLL);
      v16 = *v36;
      --*&v36[16];
    }

    else
    {
      v16 = *v36;
      if (*&v36[8])
      {
        *(*v36 + 4 * *&v36[8] - 4) = 0;
      }
    }
  }

  else
  {
    v16 = *v36;
    *(*v36 + 4 * *&v36[16]) = 0;
  }

  if (TLexicon::checkName(v12, v16, 0, 0xFFFFFFFFFFFFFFFFLL))
  {
    conditionalAssert("Bad wordname format", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tplexicon.cpp", 326, v17, v18);
    v29 = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v34, "Bad wordname format");
    *v29 = byte_287529580;
    v30 = (v29 + 1);
    if (SHIBYTE(v35) < 0)
    {
      std::string::__init_copy_ctor_external(v30, v34, *(&v34 + 1));
    }

    else
    {
      v33 = v34;
      v29[3] = v35;
      *&v30->__r_.__value_.__l.__data_ = v33;
    }

    *v29 = &unk_2875282E0;
    v29[4] = 3;
  }

  if (*&v36[16] >= *&v36[8])
  {
    if (v38)
    {
      LODWORD(v34) = 0;
      TBuffer<wchar_t>::insert(v36, *&v36[16], &v34, 1uLL);
      v19 = *v36;
      --*&v36[16];
    }

    else
    {
      v19 = *v36;
      if (*&v36[8])
      {
        *(*v36 + 4 * *&v36[8] - 4) = 0;
      }
    }
  }

  else
  {
    v19 = *v36;
    *(*v36 + 4 * *&v36[16]) = 0;
  }

  HeadClone = TLexicon::findHeadClone(v12, v19);
  if (HeadClone)
  {
    TLocaleInfo::unicodeToMultiByte((v12 + 30), *HeadClone, &__s);
  }

  else
  {
    v21 = 0;
    v43 = 0;
      ;
    }

    TBuffer<char>::insert(&__s, 0, a2, v21 - 1);
  }

  if (v43 >= *(&__s + 1))
  {
    if (v45)
    {
      LOBYTE(v34) = 0;
      TBuffer<char>::insert(&__s, v43--, &v34, 1uLL);
    }

    else if (*(&__s + 1))
    {
      *(__s + *(&__s + 1) - 1) = 0;
    }
  }

  else
  {
    *(__s + v43) = 0;
  }

  if (a5)
  {
    *a5 = v43 + 1;
  }

  if (v45 == 1 && __s != &v44 && __s)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v38 == 1 && *v36 != v37 && *v36)
  {
    MEMORY[0x26672B1B0]();
  }

  MrecInitModule_sdpres_sdapi();
  if ((v40 & 1) == 0)
  {
    uselocale(v39);
  }

  TReentrancyHandler::ms_bIn = 0;
  v23 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_26266D158(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_7:
      if (LOBYTE(STACK[0x570]) == 1)
      {
        v20 = STACK[0x458];
        if (STACK[0x458] != &STACK[0x470])
        {
          if (v20)
          {
            MEMORY[0x26672B1B0](v20, 0x1000C4077774924);
          }
        }
      }

      if (LOBYTE(STACK[0x430]) == 1 && a15 != v17 && a15)
      {
        MEMORY[0x26672B1B0]();
      }

      MrecInitModule_sdpres_sdapi();
      TLocaleHandler::~TLocaleHandler(&STACK[0x440]);
      TReentrancyHandler::ms_bIn = 0;
      switch(a2)
      {
        case 7:
          v23 = __cxa_begin_catch(a1);
          v24 = v23 + 8;
          if (v23[31] < 0)
          {
            v24 = *v24;
          }

          handleException(v24, "TPLexicon_GetHeadClone", *(v23 + 4), v21, v22);
          __cxa_end_catch();
          break;
        case 6:
          v27 = __cxa_begin_catch(a1);
          v28 = v27 + 8;
          if (v27[31] < 0)
          {
            v28 = *v28;
          }

          handleException(v28, "TPLexicon_GetHeadClone", 6, v25, v26);
          __cxa_end_catch();
          break;
        case 5:
          v31 = __cxa_begin_catch(a1);
          v32 = v31 + 8;
          if (v31[31] < 0)
          {
            v32 = *v32;
          }

LABEL_26:
          handleException(v32, "TPLexicon_GetHeadClone", 2, v29, v30);
          __cxa_end_catch();
          break;
        case 4:
          v35 = __cxa_begin_catch(a1);
          v36 = v35 + 8;
          if (v35[31] < 0)
          {
            v36 = *v36;
          }

          handleException(v36, "TPLexicon_GetHeadClone", 11, v33, v34);
          __cxa_end_catch();
          break;
        case 3:
          v37 = __cxa_begin_catch(a1);
          v32 = v37 + 8;
          if (v37[31] < 0)
          {
            v32 = *v32;
          }

          goto LABEL_26;
        case 2:
          v38 = __cxa_begin_catch(a1);
          v39 = (*(*v38 + 16))(v38);
          handleException(v39, "TPLexicon_GetHeadClone", 1, v40, v41);
          __cxa_end_catch();
          break;
        default:
          if (a2 != 1)
          {
            _Unwind_Resume(a1);
          }

          v42 = __cxa_begin_catch(a1);
          v43 = (*(*v42 + 16))(v42);
          handleException(v43, "TPLexicon_GetHeadClone", 2, v44, v45);
          __cxa_end_catch();
          break;
      }

      JUMPOUT(0x26266CEBCLL);
    }
  }

  else if (!v16)
  {
    goto LABEL_7;
  }

  __cxa_free_exception(v15);
  goto LABEL_7;
}

void std::vector<wchar_t const*>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t const*>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void DgnException::DgnException(DgnException *this, int CurrentThreadId, char *a3, int a4, char *a5, int a6, char *a7)
{
  *this = &unk_287528CC0;
  v14 = (this + 32);
  DgnString::DgnString((this + 8));
  DgnString::DgnString(v14);
  DgnString::DgnString((this + 56));
  if (CurrentThreadId == -1)
  {
    CurrentThreadId = DgnThreadMgr::getCurrentThreadId(v15);
  }

  *(this + 18) = CurrentThreadId;
  DgnString::preAllocate(this + 8, 96);
  DgnString::operator=((this + 8), a3);
  *(this + 6) = a4;
  DgnString::operator=(v14, a5);
  *(this + 12) = a6;
  DgnString::preAllocate(this + 56, 512);
  DgnString::operator=((this + 56), a7);
}

void sub_26266D6EC(_Unwind_Exception *a1)
{
  DgnString::~DgnString(v2);
  DgnString::~DgnString((v1 + 8));
  _Unwind_Resume(a1);
}

void DgnException::~DgnException(DgnException *this)
{
  *this = &unk_287528CC0;
  v2 = (this + 8);
  DgnString::~DgnString((this + 56));
  DgnString::~DgnString((this + 32));
  DgnString::~DgnString(v2);
}

{
  DgnException::~DgnException(this);

  JUMPOUT(0x26672B1B0);
}

void DgnFileIOException::~DgnFileIOException(DgnFileIOException *this)
{
  DgnException::~DgnException(this);

  JUMPOUT(0x26672B1B0);
}

void EncryptBuffer(unsigned __int8 *a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    if (a3 == 2)
    {
      if (a2)
      {
        v9 = a2;
        do
        {
          *a1 = sEncryptPerm256Table[*a1];
          ++a1;
          --v9;
        }

        while (v9);
      }
    }

    else if (a3 == 1)
    {
      if (a2)
      {
        v8 = a2;
        do
        {
          *a1++ ^= 0x80u;
          --v8;
        }

        while (v8);
      }
    }

    else
    {
      errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/encrypt.cpp", 60, "dfutil/encrypt", 1, &errStr_dfutil_encrypt_E_BADENCRYPTION, a7, a8, a3);
    }
  }
}

void DecryptBuffer(unsigned __int8 *a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    if (a3 == 2)
    {
      if (a2)
      {
        v9 = a2;
        do
        {
          *a1 = sDecryptPerm256Table[*a1];
          ++a1;
          --v9;
        }

        while (v9);
      }
    }

    else if (a3 == 1)
    {
      if (a2)
      {
        v8 = a2;
        do
        {
          *a1++ ^= 0x80u;
          --v8;
        }

        while (v8);
      }
    }

    else
    {
      errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/encrypt.cpp", 87, "dfutil/encrypt", 1, &errStr_dfutil_encrypt_E_BADENCRYPTION, a7, a8, a3);
    }
  }
}

void MrecInitModule_active_kernel(void)
{
  if (!gParDebugActive)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugActive", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugActive = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugActive);
  }
}

uint64_t ActiveWordCoartN::unpackEndFromCallBack(ActiveWordCoartN *this)
{
  ActiveWordCoartBase::getEndPics(this, 0xFFFF, *(this + 2) + 302992);
  v2 = *(this + 2);
  v3 = (*(**(this + 1) + 256))();
  (*(**(this + 1) + 120))(*(this + 1), *(this + 9), v3);
  v4 = *(**(this + 1) + 176);

  return v4();
}

uint64_t ActiveWordCoartN::unpackMidFromCallBack(ActiveWordCoartN *this)
{
  v2 = ActiveWordCoartN::unpackMid(this);
  (*(**(this + 1) + 120))(*(this + 1), *(this + 8), v2);
  v3 = *(**(this + 1) + 176);

  return v3();
}

void ActiveWordMgr::~ActiveWordMgr(ActiveWordMgr *this)
{
  DgnIArray<Utterance *>::~DgnIArray(this + 302992);

  NetMgr::~NetMgr(this);
}

void ActiveWordMgr::newActiveWordNonAcoustic(ActiveWordMgr *a1, uint64_t a2)
{
  NetMgr::addEmptyNet(a1, a2);
  v4 = v3;
  v5 = MemChunkAlloc(0x28uLL, 0);

  ActiveWordNonAcoustic::ActiveWordNonAcoustic(v5, a1, v4);
}

void ActiveWordMgr::newActiveWordSilence(ActiveWordMgr *a1, uint64_t a2)
{
  v3 = NetMgr::addSilNet(a1, a2);
  v4 = (*(*v3 + 200))(v3);
  BitArray::operator=(v4, a1 + 40);
  v5 = MemChunkAlloc(0x28uLL, 0);

  ActiveWordSilence::ActiveWordSilence(v5, a1, v3);
}

void ActiveWordMgr::newActiveWord(uint64_t a1, unsigned int *a2, int a3, int a4, int a5)
{
  v10 = a1 + 299008;
  v11 = *a2;
  v12 = *(*(**VocMgr::smpVocMgr + ((v11 >> 22) & 0x3F8)) + 48);
  v13 = v11 & 0xFFFFFF;
  if (a2[2] == -1)
  {
    v16 = 1;
    v14 = v11 & 0xFFFFFF;
  }

  else
  {
    v14 = v13;
    if (*(v12[74] + 2 * v13) || *(v12[76] + 2 * v13))
    {
      v15 = *(a1 + 302984);
      v16 = (*(v15 + 68) & 0xFFFFFFFD) != 0 || Constraint::isCoartAllowedForState(v15, a2);
    }

    else
    {
      v16 = 0;
    }
  }

  v17 = v12[4];
  v18 = *(v17 + 2 * v14);
  if (*(v17 + 2 * v14))
  {
    v19 = 0;
    v20 = v18 + 1;
    v21 = (2 * *(v12[6] + 4 * v14) + 2 * v18 + v12[9] - 2);
    do
    {
      v22 = *v21--;
      v19 += *(*(*(v10 + 3968) + 16) + v22);
      --v20;
    }

    while (v20 > 1);
  }

  else
  {
    v19 = 0;
  }

  NetMgr::addNonSilNet(a1, a2, v16, a5, v18, v19, a3, a4);
  v24 = v23;
  v25 = (*(*v23 + 200))(v23);
  v26 = v25;
  if ((v16 & 1) == 0 && *(a1 + 12) == 1)
  {
    BitArray::operator=(v25, a1 + 40);
LABEL_26:
    v31 = MemChunkAlloc(0x28uLL, 0);
    ActiveWordNoCoart::ActiveWordNoCoart(v31, a1, v24);
    return;
  }

  v27 = a2[2] == -1 || a2[3] == -3;
  if (v27 || (v28 = *(v10 + 3976), v33 = *(a1 + 4), (Constraint::getNextPhones(v28, a2, &v33, v26) & 1) == 0))
  {
    PhnMgr::getFullAcousticExitContext(**(v10 + 3968), v26);
  }

  if ((v16 & 1) == 0)
  {
    goto LABEL_26;
  }

  if (v18 == 1)
  {
    v29 = MemChunkAlloc(0x40uLL, 0);
    ActiveWordCoartBase::ActiveWordCoartBase(v29, a1, v24);
    *v30 = &unk_287527600;
  }

  else
  {
    v32 = MemChunkAlloc(0x50uLL, 0);
    ActiveWordCoartN::ActiveWordCoartN(v32, a1, v24);
  }
}

uint64_t Constraint::getNextPhones(uint64_t a1, unsigned int *a2, int *a3, BitArray *a4)
{
  if ((*(a1 + 68) - 1) > 1)
  {
    v5 = *a3;
    return Constraint::getStateNextPhones(a1, a2, &v5, a4);
  }

  else
  {
    v6 = *a3;
    return Constraint::getTraceNextPhones(a1, a2, &v6, a4);
  }
}

void (***DgnDelete<ActiveWord>(void (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    (**result)(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void ActiveWordMgr::printSize(ActiveWordMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/active.cpp", 224, &v52);
  if (v53)
  {
    v16 = v52;
  }

  else
  {
    v16 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &byte_262899963, a3, &byte_262899963, v16);
  DgnString::~DgnString(&v52);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &byte_262899963);
  if (this)
  {
    v51 = 0;
    v52 = 0;
    v21 = (a3 + 1);
    v50 = 0;
    NetMgr::printSize(this, 0xFFFFFFFFLL, v21, &v52, &v51, &v50);
    *a4 += v52;
    *a5 += v51;
    *a6 += v50;
  }

  else
  {
    v21 = (a3 + 1);
  }

  v22 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v22 = 12;
  }

  v23 = *(this + 75750);
  v24 = 12 * v23;
  if (v23 <= 0)
  {
    v24 = 0;
  }

  v25 = v24 + v22;
  v26 = v24 + v22 + 12 * (*(this + 75751) - v23);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/active.cpp", 226, &v52);
  if (v53)
  {
    v31 = v52;
  }

  else
  {
    v31 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v27, v28, v29, v30, v21, &byte_262899963, (34 - a3), (34 - a3), v31, v26, v25, 0);
  DgnString::~DgnString(&v52);
  *a4 += v26;
  *a5 += v25;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v32 = 4;
  }

  else
  {
    v32 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/active.cpp", 227, &v52);
  if (v53)
  {
    v37 = v52;
  }

  else
  {
    v37 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, v34, v35, v36, v21, &byte_262899963, (34 - a3), (34 - a3), v37, v32, v32, 0);
  DgnString::~DgnString(&v52);
  *a4 += v32;
  *a5 += v32;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v38 = 4;
  }

  else
  {
    v38 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/active.cpp", 228, &v52);
  if (v53)
  {
    v43 = v52;
  }

  else
  {
    v43 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v39, v40, v41, v42, v21, &byte_262899963, (34 - a3), (34 - a3), v43, v38, v38, 0);
  DgnString::~DgnString(&v52);
  *a4 += v38;
  *a5 += v38;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/active.cpp", 229, &v52);
  if (v53)
  {
    v48 = v52;
  }

  else
  {
    v48 = &byte_262899963;
  }

  v49 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v44, v45, v46, v47, a3, &byte_262899963, (35 - a3), (35 - a3), v48, *a4, *a5, *a6);
  DgnString::~DgnString(&v52);
}

void sub_26266E2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void ActiveWord::ActiveWord(ActiveWord *this, ActiveWordMgr *a2, HmmNet *a3)
{
  *this = &unk_287529628;
  *(this + 1) = a3;
  *(this + 2) = a2;
  if (*(a3 + 6) == -1 || *(a3 + 7) == -3)
  {
    v5 = MemChunkAlloc(0x38uLL, 0);
    *v5 = 0;
    v5[1] = 0;
    *(v5 + 4) = -1;
    *(v5 + 3) = 0u;
    *(v5 + 5) = 0u;
    *(this + 3) = v5;
    *(this + 8) = 0;
  }

  else
  {
    *(this + 3) = 0;
    v6 = *(a2 + 37873);
    if (*(v6 + 68) & 0xFFFFFFFD) == 0 && (*(v6 + 64))
    {
      *(this + 8) = Constraint::getMaxEndTime(v6, a3 + 4);
      *(this + 36) = Constraint::getSuccessorRecursivePrefilteringAllowed(v6, a3 + 4, v7, v8, v9, v10, v11, v12);
      return;
    }

    *(this + 8) = 268435200;
  }

  *(this + 36) = 0;
}

void ActiveWord::~ActiveWord(ActiveWord *this)
{
  *this = &unk_287529628;
  DgnDelete<MergedStateTransition>(*(this + 3));
  *(this + 3) = 0;
}

uint64_t DgnDelete<MergedStateTransition>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    DgnArray<PhnIndexSet>::releaseAll(result + 40);
    DgnIArray<Utterance *>::~DgnIArray(v1 + 24);
    v2 = DgnIArray<Utterance *>::~DgnIArray(v1);

    return MemChunkFree(v2, 0);
  }

  return result;
}

uint64_t ActiveWord::sizeObject(uint64_t a1, uint64_t a2)
{
  v2 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 4;
  }

  if (a2 == 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  if (a2 == 2)
  {
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v4 = 8;
    }

    else
    {
      v4 = 16;
    }

    v3 = v2;
  }

  else
  {
    v5 = a2;
    v7 = *(a1 + 8);
    if (v7)
    {
      v8 = (*(*v7 + 280))(v7, a2) + v3;
      v9 = 8;
      if (gShadowDiagnosticShowIdealizedObjectSizes)
      {
        v9 = 4;
      }

      if (v5 == 3)
      {
        v3 = 0;
      }

      else
      {
        v3 = v9;
      }
    }

    else
    {
      v8 = v3;
    }

    v4 = v3 + v8;
    v10 = *(a1 + 24);
    if (v10)
    {
      v3 += sizeObject(v10, v5);
    }
  }

  return v3 + v4;
}

uint64_t ActiveWordNoCoartBase::sizeObject(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  result = ActiveWord::sizeObject(a1, a2);
  if (v2 != 3)
  {
    ++result;
  }

  return result;
}

void ActiveWordNonAcoustic::ActiveWordNonAcoustic(ActiveWordNonAcoustic *this, ActiveWordMgr *a2, HmmNet *a3)
{
  ActiveWord::ActiveWord(this, a2, a3);
  *v4 = &unk_2875259A8;
  *(this + 37) = HmmNet::unpackNonAcoustic(*(v4 + 8));
}

void ActiveWordNonAcoustic::~ActiveWordNonAcoustic(ActiveWordNonAcoustic *this)
{
  ActiveWord::~ActiveWord(this);

  JUMPOUT(0x26672B1B0);
}

void ActiveWordSilence::ActiveWordSilence(ActiveWordSilence *this, ActiveWordMgr *a2, HmmNet *a3)
{
  ActiveWord::ActiveWord(this, a2, a3);
  *v4 = &unk_287527288;
  *(this + 37) = HmmNet::unpackSilence(*(v4 + 8));
}

void ActiveWordSilence::~ActiveWordSilence(ActiveWordSilence *this)
{
  ActiveWord::~ActiveWord(this);

  JUMPOUT(0x26672B1B0);
}

void ActiveWordNoCoart::ActiveWordNoCoart(ActiveWordNoCoart *this, ActiveWordMgr *a2, HmmNet *a3)
{
  ActiveWord::ActiveWord(this, a2, a3);
  *v4 = &unk_2875272C8;
  v5 = v4[1];
  v7 = v5 + 4;
  v6 = v5[4];
  v13[0] = *(**(*(this + 2) + 302976) + 56);
  v13[1] = v13[0];
  v12[0] = v13[0];
  v12[1] = v13[0];
  v8 = *(**VocMgr::smpVocMgr + ((v6 >> 22) & 0x3F8));
  v10 = 0;
  v11 = 0;
  v9 = (*(*v5 + 40))(v5);
  Voc::getPics(v8, v7, 0, v13, v12, v9, &v10);
  *(this + 37) = HmmNet::unpackNoCoart(*(this + 1), v10, v11);
  DgnIArray<Utterance *>::~DgnIArray(&v10);
}

void sub_26266E824(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DgnIArray<Utterance *>::~DgnIArray(va);
  ActiveWord::~ActiveWord(v2);
  _Unwind_Resume(a1);
}

void ActiveWordNoCoart::~ActiveWordNoCoart(ActiveWordNoCoart *this)
{
  ActiveWord::~ActiveWord(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t ActiveWordNoCoartBase::seedInPort(uint64_t this, unsigned __int16 a2, int a3, int a4)
{
  v4 = *(this + 8);
  v5 = *(*(v4 + 56) + 8 * *(this + 37));
  if (*(v5 + 8) > a3)
  {
    v6 = *(v4 + 114);
    *(v5 + 8) = a3;
    *v5 = a4;
    if ((v6 & 1) == 0)
    {
      *(v5 + 4) = 0;
    }

    *(v4 + 112) = 1;
  }

  return this;
}

void ActiveWordCoartBase::ActiveWordCoartBase(ActiveWordCoartBase *this, ActiveWordMgr *a2, HmmNet *a3)
{
  ActiveWord::ActiveWord(this, a2, a3);
  *v4 = &unk_287526250;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 38) = -1;
  *(v4 + 42) = -1;
  v5 = **(*(v4 + 16) + 302976);
  v6 = *(v5 + 28);
  *(v4 + 44) = v6;
  *(v4 + 40) = v6;
  v7 = *v5;
  v8 = (v7 - 2);
  if (v7 == 2)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v9 = MemChunkAlloc((v7 - 2), 0);
    *(this + 6) = v9;
    *(this + 14) = v8;
  }

  memset(v9, 255, v8);
}

void sub_26266E974(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  ActiveWord::~ActiveWord(v1);
  _Unwind_Resume(a1);
}

void ActiveWordCoartBase::~ActiveWordCoartBase(ActiveWordCoartBase *this)
{
  *this = &unk_287526250;
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 48);

  ActiveWord::~ActiveWord(this);
}

uint64_t ActiveWordCoartBase::sizeObject(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = ActiveWord::sizeObject(a1, a2);
  if (v2 == 3)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v6 = 12;
    v5 = 8;
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v6 = 8;
    }

    if ((v2 & 0xFFFFFFFE) != 2)
    {
      v7 = *(a1 + 56);
      v8 = __OFSUB__(v7, 1);
      v9 = (v7 - 1);
      if (v9 < 0 == v8)
      {
        v6 += v9 + 1;
        v5 = 8;
      }
    }
  }

  return v5 + v6 + v4;
}

uint64_t ActiveWordCoartBase::getEndPics(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(**VocMgr::smpVocMgr + ((v5[4] >> 22) & 0x3F8));
  v8 = **(v6 + 302976);
  v9 = *(v8 + 56);
  LODWORD(v6) = *(v6 + 4);
  *(a1 + 44) = v9;
  *(a1 + 40) = v9;
  v10 = v6 == 1;
  if (v6 == 1)
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  if (v10)
  {
    v12 = 38;
  }

  else
  {
    v12 = 42;
  }

  if (v10)
  {
    v13 = 42;
  }

  else
  {
    v13 = 38;
  }

  if (a2 != 0xFFFF)
  {
    v9 = a2;
  }

  *(a1 + v12) = v9;
  if (a2 == 0xFFFF)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  v15 = *v8 - 2;
  *(a3 + 8) = 0;
  v16 = *(a3 + 12);
  v17 = v15 - v16;
  if (v15 > v16)
  {
    DgnArray<RuleDesc>::reallocElts(a3, v17, 0);
    v5 = *(a1 + 8);
  }

  v18 = (*(*v5 + 192))(v5, v17);
  v19 = *(a1 + 8);
  if (v19[6] == -1)
  {
    v20 = 1;
  }

  else
  {
    v20 = (*(*v19 + 40))(v19);
  }

  v26[0] = 0;
  v26[1] = 0;
  if (v15)
  {
    v21 = 0;
    do
    {
      if ((*(*v18 + 4 * (v21 >> 5)) >> v21))
      {
        *(a1 + v13) = v21;
        Voc::getPics(v7, (*(a1 + 8) + 16), v14, (a1 + 38), (a1 + 42), v20, v26);
        v22 = v26[0];
        v23 = *a3 + 12 * *(a3 + 8);
        v24 = *v26[0];
        *(v23 + 8) = *(v26[0] + 8);
        *v23 = v24;
        *(v23 + 10) = *(v22 + 10);
        *(v23 + 11) = *(v22 + 11);
        ++*(a3 + 8);
      }

      ++v21;
    }

    while (v15 > v21);
  }

  return DgnIArray<Utterance *>::~DgnIArray(v26);
}

uint64_t ActiveWordCoartBase::seedInPort(ActiveWordCoartBase *this, unsigned int a2, int a3, int a4)
{
  result = *(*(this + 6) + a2);
  if (result == 255)
  {
    result = (*(*this + 48))(this);
    *(*(this + 6) + a2) = result;
  }

  v9 = *(this + 1);
  v10 = *(*(v9 + 56) + 8 * result);
  if (*(v10 + 8) > a3)
  {
    v11 = *(v9 + 114);
    *(v10 + 8) = a3;
    *v10 = a4;
    if ((v11 & 1) == 0)
    {
      *(v10 + 4) = 0;
    }

    *(v9 + 112) = 1;
  }

  return result;
}

void ActiveWordCoart1::~ActiveWordCoart1(ActiveWordCoart1 *this)
{
  *this = &unk_287526250;
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 48);

  ActiveWord::~ActiveWord(this);
}

{
  *this = &unk_287526250;
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 48);
  ActiveWord::~ActiveWord(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t ActiveWordCoart1::addInPort(ActiveWordCoart1 *this, int a2)
{
  ActiveWordCoartBase::getEndPics(this, a2, *(this + 2) + 302992);
  v3 = *(this + 2);
  v4 = (*(**(this + 1) + 256))();
  v5 = HmmNet::newInPort(*(this + 1));
  (*(**(this + 1) + 160))(*(this + 1), v5, v4);
  return v5;
}

uint64_t HmmNet::newInPort(HmmNet *this)
{
  v2 = *(this + 16);
  if (*(this + 11))
  {
    v3 = 0;
    v4 = *(this + 16);
  }

  else
  {
    v3 = MemChunkAlloc(0xCuLL, 0);
    *v3 = 0x100000001;
    *(v3 + 2) = 1310740000;
    v4 = *(this + 16);
  }

  if (v4 == *(this + 17))
  {
    DgnPrimArray<unsigned long long>::reallocElts(this + 56, 1, 1);
    v4 = *(this + 16);
  }

  *(*(this + 7) + 8 * v4) = v3;
  *(this + 16) = v4 + 1;
  return v2;
}

uint64_t ActiveWordCoartN::unpackMid(ActiveWordCoartN *this)
{
  v12 = 0;
  v2 = *(**(*(this + 2) + 302976) + 56);
  *(this + 19) = v2;
  v3 = (this + 38);
  v4 = *(this + 1);
  v5 = v4 + 4;
  v6 = *(**VocMgr::smpVocMgr + ((v4[4] >> 22) & 0x3F8));
  v3[2] = v2;
  v10 = 0;
  v11 = 0;
  if (v4[6] == -1)
  {
    v7 = 1;
  }

  else
  {
    v7 = (*(*v4 + 40))(v4);
  }

  Voc::getPics(v6, v5, 1, v3, v3 + 2, v7, &v10);
  (*(**(this + 1) + 208))(*(this + 1), v10, v11, &v12, this + 72, 2);
  v8 = v12;
  DgnIArray<Utterance *>::~DgnIArray(&v10);
  return v8;
}

void sub_26266F080(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DgnIArray<Utterance *>::~DgnIArray(va);
  _Unwind_Resume(a1);
}

void ActiveWordCoartN::ActiveWordCoartN(ActiveWordCoartN *this, ActiveWordMgr *a2, HmmNet *a3)
{
  ActiveWordCoartBase::ActiveWordCoartBase(this, a2, a3);
  *v5 = &unk_2875275B8;
  v5[8] = 0;
  v6 = v5 + 8;
  v5[9] = 0;
  v7 = *(v5[1] + 16);
  v8 = *(*(*(*(**VocMgr::smpVocMgr + ((v7 >> 22) & 0x3F8)) + 48) + 32) + 2 * (v7 & 0xFFFFFF));
  if ((*(*a3 + 168))(a3))
  {
    v9 = (*(**(this + 1) + 128))(*(this + 1));
    *v9 = 0x100000001;
    *(v9 + 8) = 1310740000;
    *(v9 + 12) = 0;
    *(v9 + 20) = -65536;
    *v6 = v9;
    v10 = unpackMidCallBack;
    if (v8 == 2)
    {
      *(this + 9) = v9;
      v10 = unpackEndCallBack;
    }

    (*(*a3 + 176))(a3, v10, this, 3);
  }

  else
  {
    ActiveWordCoartBase::getEndPics(this, 0xFFFF, *(this + 2) + 302992);
    (*(**(this + 1) + 256))(*(this + 1), *(this + 2) + 302992, 1);
    if (v8 == 2)
    {
      v11 = (*(**(this + 1) + 128))(*(this + 1));
      *v11 = 0x100000001;
      *(v11 + 8) = 1310740000;
      *(v11 + 12) = 0;
      *(v11 + 20) = -65536;
      *(this + 8) = v11;
      *(this + 9) = v11;
    }

    else
    {
      ActiveWordCoartN::unpackMid(this);
      v12 = (*(**(this + 1) + 128))(*(this + 1));
      *v12 = 0x100000001;
      *(v12 + 8) = 1310740000;
      *(v12 + 12) = 0;
      *(v12 + 20) = -65536;
      *(this + 8) = v12;
      (*(**(this + 1) + 120))(*(this + 1));
      v13 = *(this + 9);
    }

    (*(**(this + 1) + 120))(*(this + 1));
  }
}

uint64_t ActiveWordCoartN::addInPort(ActiveWordCoartN *this, __int16 a2)
{
  v3 = *(this + 2);
  v4 = *(**(v3 + 302976) + 56);
  LODWORD(v3) = *(v3 + 4);
  v5 = v3 == 1;
  if (v3 == 1)
  {
    v6 = a2;
  }

  else
  {
    v6 = v4;
  }

  if (!v5)
  {
    v4 = a2;
  }

  *(this + 21) = v4;
  v7 = (this + 42);
  *(this + 19) = v6;
  v8 = (this + 38);
  v9 = *(this + 1);
  v10 = v9 + 4;
  if (v5)
  {
    v11 = 2;
  }

  else
  {
    v11 = 3;
  }

  v12 = *(**VocMgr::smpVocMgr + ((v9[4] >> 22) & 0x3F8));
  v16[0] = 0;
  v16[1] = 0;
  if (v9[6] == -1)
  {
    v13 = 1;
  }

  else
  {
    v13 = (*(*v9 + 40))(v9);
  }

  Voc::getPics(v12, v10, v11, v8, v7, v13, v16);
  v14 = HmmNet::unpackInPort(*(this + 1), v16[0], *(this + 8));
  DgnIArray<Utterance *>::~DgnIArray(v16);
  return v14;
}

void ActiveWordCoartN::~ActiveWordCoartN(ActiveWordCoartN *this)
{
  *this = &unk_287526250;
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 48);

  ActiveWord::~ActiveWord(this);
}

{
  *this = &unk_287526250;
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 48);
  ActiveWord::~ActiveWord(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t ActiveWordCoartN::sizeObject(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = ActiveWordCoartBase::sizeObject(a1, a2);
  v4 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v4 = 8;
  }

  if (v2 == 3)
  {
    v4 = 0;
  }

  return v4 + v3;
}

void ActiveWordEmbeddedFst::ActiveWordEmbeddedFst(ActiveWordEmbeddedFst *this, ActiveWordMgr *a2, HmmNet *a3)
{
  ActiveWord::ActiveWord(this, a2, a3);
  *v4 = &unk_2875259E8;
  *(this + 37) = HmmNet::unpackEmbeddedFst(*(v4 + 8));
}

void ActiveWordEmbeddedFst::~ActiveWordEmbeddedFst(ActiveWordEmbeddedFst *this)
{
  ActiveWord::~ActiveWord(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t Active::Active(uint64_t a1, int a2, int *a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2 == 2;
  *(a1 + 8) = 0;
  *(a1 + 4) = 0;
  v8 = *a3;
  NetMgr::NetMgr(a1 + 16);
  *(a1 + 302992) = a5;
  *(a1 + 303008) = 0;
  *(a1 + 303016) = 0;
  *(a1 + 303000) = 0;
  Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::Hash(a1 + 303024, 0, 256);
  HashKEV<CWIDAC,CWIDAC,CWIDAC>::HashKEV(a1 + 303136, 0, 1);
  *(a1 + 303240) = 0u;
  return a1;
}

void sub_26266F74C(_Unwind_Exception *a1)
{
  Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::~Hash(v1 + 303024);
  DgnIArray<Utterance *>::~DgnIArray(v1 + 303008);
  NetMgr::~NetMgr((v1 + 16));
  _Unwind_Resume(a1);
}

void Active::printSize(Active *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/active.cpp", 898, &v101);
  if (v102)
  {
    v16 = v101;
  }

  else
  {
    v16 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &byte_262899963, a3, &byte_262899963, v16);
  DgnString::~DgnString(&v101);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &byte_262899963);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/active.cpp", 899, &v101);
  if (v102)
  {
    v25 = v101;
  }

  else
  {
    v25 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, v22, v23, v24, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v25, 4, 4, 0);
  v95 = a3;
  DgnString::~DgnString(&v101);
  *a4 += 4;
  *a5 += 4;
  v100 = 0;
  v101 = 0;
  v99 = 0;
  ActiveWordMgr::printSize((this + 16), 0xFFFFFFFFLL, (a3 + 1), &v101, &v100, &v99);
  *a4 += v101;
  *a5 += v100;
  v96 = a6;
  *a6 += v99;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/active.cpp", 902, &v101);
  if (v102)
  {
    v30 = v101;
  }

  else
  {
    v30 = &byte_262899963;
  }

  v97 = (34 - a3);
  v98 = (a3 + 1);
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, v27, v28, v29, v98, &byte_262899963, v97, v97, v30, 1, 1, 0);
  v31 = (this + 303104);
  DgnString::~DgnString(&v101);
  ++*a4;
  ++*a5;
  v32 = this;
  v33 = sizeObject(this + 303048);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v34 = 8;
  }

  else
  {
    v34 = 12;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v35 = 2;
  }

  else
  {
    v35 = 3;
  }

  v36 = *(this + 75778) << v35;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v37 = 8;
  }

  else
  {
    v37 = 16;
  }

  v38 = v33 + v37 + v34 + v36 + 13;
  v39 = sizeObject(this + 303048);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v40 = 8;
  }

  else
  {
    v40 = 12;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v41 = 2;
  }

  else
  {
    v41 = 3;
  }

  v42 = *(this + 75778) << v41;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v43 = 8;
  }

  else
  {
    v43 = 16;
  }

  v44 = v39 + v43 + v40 + v42 + 13;
  v45 = sizeObject(this + 303048);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/active.cpp", 903, &v101);
  if (v102)
  {
    v50 = v101;
  }

  else
  {
    v50 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v46, v47, v48, v49, v98, &byte_262899963, v97, v97, v50, v38, v44, v45);
  DgnString::~DgnString(&v101);
  *a4 += v38;
  *a5 += v44;
  *v96 += v45;
  v51 = sizeObject(v32 + 303160);
  v52 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v52 = 8;
    v53 = 2;
  }

  else
  {
    v53 = 3;
  }

  v54 = v31[30] << v53;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v55 = 4;
  }

  else
  {
    v55 = 8;
  }

  v56 = v51 + v55 + v52 + v54 + 13;
  v57 = sizeObject(v32 + 303160);
  v58 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v58 = 8;
    v59 = 2;
  }

  else
  {
    v59 = 3;
  }

  v60 = v31[30] << v59;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v61 = 4;
  }

  else
  {
    v61 = 8;
  }

  v62 = v57 + v61 + v58 + v60 + 13;
  v63 = sizeObject(v32 + 303160);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/active.cpp", 904, &v101);
  if (v102)
  {
    v68 = v101;
  }

  else
  {
    v68 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v64, v65, v66, v67, v98, &byte_262899963, v97, v97, v68, v56, v62, v63);
  DgnString::~DgnString(&v101);
  *a4 += v56;
  *a5 += v62;
  *v96 += v63;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/active.cpp", 906, &v101);
  if (v102)
  {
    v73 = v101;
  }

  else
  {
    v73 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v69, v70, v71, v72, v98, &byte_262899963, v97, v97, v73, 4, 4, 0);
  DgnString::~DgnString(&v101);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/active.cpp", 908, &v101);
  if (v102)
  {
    v78 = v101;
  }

  else
  {
    v78 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v74, v75, v76, v77, v98, &byte_262899963, v97, v97, v78, 4, 4, 0);
  DgnString::~DgnString(&v101);
  *a4 += 4;
  *a5 += 4;
  v79 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v79 = 12;
  }

  v80 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v80 = 3;
  }

  v81 = v31[36];
  v82 = ((v31[37] - v81 + v81) << v80) + v79;
  v83 = (v81 << v80) + v79;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/active.cpp", 910, &v101);
  if (v102)
  {
    v88 = v101;
  }

  else
  {
    v88 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v84, v85, v86, v87, v98, &byte_262899963, v97, v97, v88, v82, v83, 0);
  DgnString::~DgnString(&v101);
  *a4 += v82;
  *a5 += v83;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/active.cpp", 911, &v101);
  if (v102)
  {
    v93 = v101;
  }

  else
  {
    v93 = &byte_262899963;
  }

  v94 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v89, v90, v91, v92, v95, &byte_262899963, (35 - v95), (35 - v95), v93, *a4, *a5, *v96);
  DgnString::~DgnString(&v101);
}

void (***Active::removeActiveWord(Active *this, ActiveWord *a2, unsigned int a3))(void)
{
  v6 = this + 303104;
  Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::remove(this + 303024, *(a2 + 1) + 16);
  v7 = *(a2 + 1);
  *(a2 + 1) = 0;
  NetMgr::removeNet((this + 16), v7);
  result = DgnDelete<ActiveWord>(a2);
  v9 = *(v6 + 36) - 1;
  *(*(v6 + 17) + 8 * a3) = *(*(v6 + 17) + 8 * v9);
  *(v6 + 36) = v9;
  return result;
}

uint64_t *Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::remove(uint64_t a1, uint64_t a2)
{
  result = Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::findBucket(a1, a2);
  if (*result)
  {

    return Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::removeBucket(a1, result);
  }

  return result;
}

Active *Active::prune(Active *this)
{
  v1 = (this + 303104);
  v2 = *(this + 75812);
  if (v2 >= 1)
  {
    v3 = this;
    do
    {
      v4 = v1[17][v2 - 1];
      v5 = *(v4 + 1);
      if (!*(v5 + 104) && (*(v5 + 112) & 1) == 0)
      {
        this = Active::removeActiveWord(v3, v4, v2 - 1);
      }

      --v2;
    }

    while ((v2 + 1) > 1);
  }

  return this;
}

uint64_t Active::pruneTimeConstrained(Active *this, int a2)
{
  v2 = this + 303104;
  v3 = *(this + 75812);
  if (v3 < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *(*(v2 + 17) + 8 * v3 - 8);
      if (*(v7 + 8) <= a2)
      {
        Active::removeActiveWord(this, v7, v3 - 1);
        v6 = 1;
      }

      --v3;
    }

    while ((v3 + 1) > 1);
  }

  return v6 & 1;
}

uint64_t Active::newActiveWordNonAcoustic(uint64_t a1, uint64_t a2)
{
  ActiveWordMgr::newActiveWordNonAcoustic((a1 + 16), a2);
  v5 = v4;
  Active::addActiveWord(a1, a2, v4);
  return v5;
}

void *Active::addActiveWord(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + 303104;
  v10 = a3;
  v7 = *(a1 + 303248);
  if (v7 == *(a1 + 303252) && v7 + (v7 >> 1) + 256 > v7)
  {
    DgnPrimArray<unsigned long long>::reallocElts(a1 + 303240, (v7 >> 1) + 256, 0);
    v7 = *(v6 + 144);
  }

  *(*(v6 + 136) + 8 * v7) = a3;
  *(v6 + 144) = v7 + 1;
  result = Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::add(a1 + 303024, a2, &v10);
  if (*a1 == 1)
  {
    result = Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::findBucket(a1 + 303136, a2);
    if (!*result)
    {
      return HashKEV<CWIDAC,CWIDAC,CWIDAC>::add(a1 + 303136, a2);
    }
  }

  return result;
}

uint64_t Active::newActiveWordSilence(uint64_t a1, uint64_t a2)
{
  ActiveWordMgr::newActiveWordSilence((a1 + 16), a2);
  v5 = v4;
  Active::addActiveWord(a1, a2, v4);
  return v5;
}

uint64_t Active::newActiveWord(uint64_t a1, unsigned int *a2, int a3, int a4, int a5)
{
  ActiveWordMgr::newActiveWord(a1 + 16, a2, a3, a4, a5);
  v8 = v7;
  Active::addActiveWord(a1, a2, v7);
  return v8;
}

uint64_t Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::add(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 12);
  if (*(a1 + 8) >= v6 >> 1)
  {
    HashKEV<unsigned int,unsigned int,CWIDScope>::upSize(a1, 2 * v6);
  }

  result = CWIDAC::computeHash(a2);
  v8 = result;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = (-1640531527 * result) >> -v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 80);
  v12 = *(a1 + 32);
  if (!v12)
  {
    result = DgnPool::addChunk((a1 + 24));
    v12 = *(a1 + 32);
  }

  v13 = (v11 + 8 * v10);
  *(a1 + 32) = *v12;
  v14 = *a2;
  *(v12 + 8) = 0;
  *(v12 + 12) = v14;
  *(v12 + 16) = *(a2 + 4);
  *(v12 + 20) = *(a2 + 8);
  *(v12 + 40) = *a3;
  *(v12 + 8) = v8;
  ++*(a1 + 8);
  if (*(a1 + 20))
  {
    *v12 = *v13;
  }

  else
  {
    *v12 = 0;
    v15 = *v13;
    if (*v13)
    {
      do
      {
        v13 = v15;
        v15 = *v15;
      }

      while (v15);
    }
  }

  *v13 = v12;
  return result;
}

uint64_t HashKEV<CWIDAC,CWIDAC,CWIDAC>::add(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 12);
  if (*(a1 + 8) >= v4 >> 1)
  {
    HashKEV<unsigned int,unsigned int,CWIDScope>::upSize(a1, 2 * v4);
  }

  result = CWIDAC::computeHash(a2);
  v6 = result;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (-1640531527 * result) >> -v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 80);
  v10 = *(a1 + 32);
  if (!v10)
  {
    result = DgnPool::addChunk((a1 + 24));
    v10 = *(a1 + 32);
  }

  v11 = (v9 + 8 * v8);
  *(a1 + 32) = *v10;
  v12 = *a2;
  *(v10 + 8) = 0;
  *(v10 + 12) = v12;
  *(v10 + 16) = *(a2 + 4);
  *(v10 + 20) = *(a2 + 8);
  *(v10 + 8) = v6;
  ++*(a1 + 8);
  if (*(a1 + 20))
  {
    *v10 = *v11;
  }

  else
  {
    *v10 = 0;
    v13 = *v11;
    if (*v11)
    {
      do
      {
        v11 = v13;
        v13 = *v13;
      }

      while (v13);
    }
  }

  *v11 = v10;
  return result;
}

uint64_t Active::scoreActiveWords(uint64_t this, uint64_t a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v7 = this + 303104;
  *(this + 8) = 0;
  v8 = *(this + 303248);
  if (v8 >= 1)
  {
    v15 = this;
    v16 = v8 - 1;
    do
    {
      v17 = *(*(v7 + 136) + 8 * v16);
      v18 = v17[1];
      if (*(v18 + 104) || *(v18 + 112) == 1)
      {
        if (*(v18 + 16) == -50331651)
        {
          v19 = a5;
        }

        else
        {
          v19 = 0;
        }

        (*(*v17 + 16))(*(*(v7 + 136) + 8 * v16), a2, (v19 + a3), (v19 + a4), a6, a7);
        v20 = v17[1];
        *(v15 + 8) += v20[26];
        this = (*(*v20 + 72))(v20);
        *(v15 + 12) += this;
      }

      v21 = v16-- + 1;
    }

    while (v21 > 1);
  }

  return this;
}

BOOL Active::thresholdActiveWords(Active *this, int a2, __int16 a3, __int16 a4)
{
  v4 = this + 303104;
  v5 = *(this + 75812);
  if (v5 < 1)
  {
    return 0;
  }

  else
  {
    v9 = 0;
    v10 = *(this + 132);
    v11 = v5 - 1;
    do
    {
      v12 = *(*(*(v4 + 17) + 8 * v11) + 8);
      if (*(v12 + 104) || *(v12 + 112) == 1)
      {
        v13 = *(v12 + 16);
        v9 = v9 || *(v12 + 108) <= v10 && v13 != -50331651;
        if (v13 == -50331651)
        {
          v15 = a4;
        }

        else
        {
          v15 = 0;
        }

        HmmNet::thresholdNet(v12, a2, v15 + a3);
      }

      v16 = v11-- + 1;
    }

    while (v16 > 1);
  }

  return v9;
}

void *Active::endActiveSyncRecog(Active *this)
{
  v2 = this + 303104;
  Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::removeAll(this + 303024);
  HashKEV<unsigned int,unsigned int,CWIDScope>::removeAll(this + 303136);
  v3 = *(v2 + 36);
  if (v3 >= 1)
  {
    v4 = v3 - 1;
    do
    {
      v5 = *(*(v2 + 17) + 8 * v4);
      v6 = *(v5 + 8);
      *(v5 + 8) = 0;
      NetMgr::removeNet((this + 16), v6);
      DgnDelete<ActiveWord>(v5);
      v7 = v4-- + 1;
    }

    while (v7 > 1);
  }

  *(v2 + 36) = 0;

  return NetMgr::endNetMgrSyncRecog((this + 16));
}

uint64_t Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::removeAll(uint64_t result)
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
            result = v8(v5 + 5);
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

uint64_t Active::estimateActivePelsThisFrame(Active *this, BitArray *a2)
{
  v3 = this + 303104;
  result = NetMgr::estimateActivePelsPrevFrame(this + 16, a2);
  v5 = *(v3 + 36);
  if (v5 >= 1)
  {
    v6 = v5 - 1;
    do
    {
      result = *(*(*(v3 + 17) + 8 * v6) + 8);
      if (*(result + 104) || *(result + 112) == 1)
      {
        result = (*(*result + 16))(result, a2);
      }

      v7 = v6-- + 1;
    }

    while (v7 > 1);
  }

  return result;
}

uint64_t HmmNet::thresholdNet(HmmNet *this, int a2, __int16 a3)
{
  result = (*(*this + 304))(this);
  if (*(this + 54) > a3)
  {
    *(this + 54) = 20000;
  }

  v6 = *(this + 16);
  if (v6 >= 1)
  {
    v7 = v6 + 1;
    v8 = (*(this + 7) + 8 * v6 - 8);
    do
    {
      v9 = *v8--;
      *(v9 + 8) = 20000;
      --v7;
    }

    while (v7 > 1);
  }

  *(this + 112) = 0;
  return result;
}

uint64_t Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::Hash(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_287524090;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  v6 = RoundUpToPowerOf2(a3, (v5 + 16));
  *(a1 + 8) = 0;
  *(a1 + 12) = v6;
  HashKEV<unsigned int,unsigned int,CWIDScope>::initBuckets(a1);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v13[1] = 0x3FFF;
  v14 = xmmword_26286CC40;
  v7 = gShadowDiagnosticShowIdealizedObjectSizes;
  v8 = sizeObject(v13, 2);
  if (v7)
  {
    v9 = 8;
  }

  else
  {
    v9 = 12;
  }

  v10 = v9 + v8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v11 = 4;
  }

  else
  {
    v11 = 8;
  }

  *(a1 + 24) = 48;
  *(a1 + 28) = v10 + v11;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_2626709AC(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::~Hash(uint64_t a1)
{
  Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::~Hash(a1);

  JUMPOUT(0x26672B1B0);
}

uint64_t HashKEV<CWIDAC,CWIDAC,CWIDAC>::HashKEV(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_287523AC8;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  v6 = RoundUpToPowerOf2(a3, (v5 + 16));
  *(a1 + 8) = 0;
  *(a1 + 12) = v6;
  HashKEV<unsigned int,unsigned int,CWIDScope>::initBuckets(a1);
  *(a1 + 96) = 0;
  v10[1] = 0x3FFF;
  v11 = xmmword_26286CC40;
  LOBYTE(a3) = gShadowDiagnosticShowIdealizedObjectSizes;
  v7 = sizeObject(v10, 2);
  if (a3)
  {
    v8 = 8;
  }

  else
  {
    v8 = 12;
  }

  *(a1 + 24) = 48;
  *(a1 + 28) = v8 + v7;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_262670AFC(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void HashKEV<CWIDAC,CWIDAC,CWIDAC>::~HashKEV(uint64_t a1)
{
  HashKEV<CWIDAC,CWIDAC,CWIDAC>::~HashKEV(a1);

  JUMPOUT(0x26672B1B0);
}

uint64_t Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::~Hash(uint64_t a1)
{
  *a1 = &unk_287524090;
  if (*(a1 + 8))
  {
    Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  return MrecInitModule_sdpres_sdapi();
}

uint64_t HashKEV<CWIDAC,CWIDAC,CWIDAC>::~HashKEV(uint64_t a1)
{
  *a1 = &unk_287523AC8;
  if (*(a1 + 8))
  {
    HashKEV<unsigned int,unsigned int,CWIDScope>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  return MrecInitModule_sdpres_sdapi();
}

uint64_t Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::removeBucket(uint64_t result, char **a2)
{
  v2 = result;
  v3 = *a2;
  *a2 = **a2;
  v4 = *(result + 96);
  if (v4)
  {
    result = v4(v3 + 12);
  }

  v5 = *(v2 + 104);
  if (v5)
  {
    result = v5(v3 + 5);
  }

  *v3 = *(v2 + 32);
  *(v2 + 32) = v3;
  --*(v2 + 8);
  return result;
}

__n128 AcousticFormat::AcousticFormat(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

uint64_t AcousticFormat::getMicrosecPerFrame(AcousticFormat *this)
{
  v1 = *(this + 3);
  if (v1 && (v2 = *(this + 6)) != 0)
  {
    return 1000000 * v2 / v1;
  }

  else
  {
    return 0;
  }
}

void MrecInitModule_user_user(void)
{
  if (!gParDebugUserDelta)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugUserDelta", &unk_26287FEB9, &unk_26287FEB9, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugUserDelta = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugUserDelta);
  }
}

void User::~User(User *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 51))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 243, "user/user", 2, &errStr_user_user_E_HAS_ADAPTER, a7, a8, *(this + 92));
  }

  if (*(this + 52))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 244, "user/user", 6, &errStr_user_user_E_HAS_PREFILTERER, a7, a8, *(this + 92));
  }

  if (*(this + 53))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 245, "user/user", 39, &errStr_user_user_E_HAS_TRANSDUCER, a7, a8, *(this + 92));
  }

  DgnDelete<EnvMgr>(*this);
  DgnDelete<MulTable>(*(this + 1));
  DgnDelete<Imelda>(*(this + 2));
  DgnDelete<VarClassMgr>(*(this + 3));
  DgnDelete<FmpeMgr>(*(this + 4));
  DgnDelete<OnlineConstrainedTransAccMgr>(*(this + 5));
  DgnDelete<PicMgr>(*(this + 6));
  DgnDelete<PelMgr>(*(this + 7));
  DgnDelete<GenoneClassTree>(*(this + 8));
  DgnDelete<SigProcDescriptor>(*(this + 9));
  DgnDelete<Lookahead>(*(this + 18));
  DgnDelete<AdaptStatsHistory>(*(this + 22));
  DgnDelete<NeuralNet>(*(this + 46));
  v9 = *(this + 24);
  if (v9)
  {
    DgnSharedMemSet::unrefDSMEx(v9, *(this + 50));
  }

  DgnArray<BandwidthTransform>::releaseAll(this + 352);
  DgnArray<SigProcDescriptor>::releaseAll(this + 336);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 280);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 264);
  DgnArray<DgnString>::releaseAll(this + 248);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 224);
  FileHistory::~FileHistory((this + 152));
  PhnMgr::~PhnMgr((this + 80));
}

MulTable *DgnDelete<MulTable>(MulTable *result)
{
  if (result)
  {
    MulTable::~MulTable(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t DgnDelete<Imelda>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    LinearTransform::~LinearTransform((result + 8));

    return MemChunkFree(v1, 0);
  }

  return result;
}

VarClassMgr *DgnDelete<VarClassMgr>(VarClassMgr *result)
{
  if (result)
  {
    VarClassMgr::~VarClassMgr(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

FmpeMgr *DgnDelete<FmpeMgr>(FmpeMgr *result)
{
  if (result)
  {
    FmpeMgr::~FmpeMgr(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t DgnDelete<OnlineConstrainedTransAccMgr>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    DgnPrimArray<unsigned int>::~DgnPrimArray(result + 32);
    DgnPrimArray<unsigned int>::~DgnPrimArray((v1 + 2));

    return MemChunkFree(v1, 0);
  }

  return result;
}

PicMgr *DgnDelete<PicMgr>(PicMgr *result)
{
  if (result)
  {
    PicMgr::~PicMgr(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

PelMgr *DgnDelete<PelMgr>(PelMgr *result)
{
  if (result)
  {
    PelMgr::~PelMgr(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

GenoneClassTree *DgnDelete<GenoneClassTree>(GenoneClassTree *result)
{
  if (result)
  {
    GenoneClassTree::~GenoneClassTree(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

SigProcDescriptor *DgnDelete<SigProcDescriptor>(SigProcDescriptor *result)
{
  if (result)
  {
    SigProcDescriptor::~SigProcDescriptor(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

Lookahead *DgnDelete<Lookahead>(Lookahead *result)
{
  if (result)
  {
    Lookahead::~Lookahead(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

AdaptStatsHistory *DgnDelete<AdaptStatsHistory>(AdaptStatsHistory *result)
{
  if (result)
  {
    AdaptStatsHistory::~AdaptStatsHistory(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

NeuralNet *DgnDelete<NeuralNet>(NeuralNet *result)
{
  if (result)
  {
    NeuralNet::~NeuralNet(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void User::printSize(User *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 273, &v213);
  if (v214)
  {
    v16 = v213;
  }

  else
  {
    v16 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26287FEB9, a3, &unk_26287FEB9, v16);
  DgnString::~DgnString(&v213);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26287FEB9);
  v21 = *this;
  if (*this)
  {
    v212 = 0;
    v213 = 0;
    v22 = (a3 + 1);
    v211 = 0;
    EnvMgr::printSize(v21, 0xFFFFFFFFLL, v22, &v213, &v212, &v211);
    *a4 += v213;
    *a5 += v212;
    *a6 += v211;
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
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 274, &v213);
  if (v214)
  {
    v29 = v213;
  }

  else
  {
    v29 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, v26, v27, v28, v22, &unk_26287FEB9, (34 - a3), (34 - a3), v29, v23, v23, 0);
  DgnString::~DgnString(&v213);
  *a4 += v23;
  *a5 += v23;
  v30 = *(this + 1);
  if (v30)
  {
    v212 = 0;
    v213 = 0;
    v211 = 0;
    MulTable::printSize(v30, 0xFFFFFFFFLL, v22, &v213, &v212, &v211);
    *a4 += v213;
    *a5 += v212;
    *a6 += v211;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v31 = 4;
  }

  else
  {
    v31 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 276, &v213);
  if (v214)
  {
    v36 = v213;
  }

  else
  {
    v36 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, v33, v34, v35, v22, &unk_26287FEB9, (34 - a3), (34 - a3), v36, v31, v31, 0);
  DgnString::~DgnString(&v213);
  *a4 += v31;
  *a5 += v31;
  v37 = *(this + 2);
  if (v37)
  {
    v212 = 0;
    v213 = 0;
    v211 = 0;
    Imelda::printSize(v37, 0xFFFFFFFFLL, v22, &v213, &v212, &v211);
    *a4 += v213;
    *a5 += v212;
    *a6 += v211;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v38 = 4;
  }

  else
  {
    v38 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 277, &v213);
  if (v214)
  {
    v43 = v213;
  }

  else
  {
    v43 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v39, v40, v41, v42, v22, &unk_26287FEB9, (34 - a3), (34 - a3), v43, v38, v38, 0);
  DgnString::~DgnString(&v213);
  *a4 += v38;
  *a5 += v38;
  v44 = *(this + 3);
  if (v44)
  {
    v212 = 0;
    v213 = 0;
    v211 = 0;
    VarClassMgr::printSize(v44, 0xFFFFFFFFLL, v22, &v213, &v212, &v211);
    *a4 += v213;
    *a5 += v212;
    *a6 += v211;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v45 = 4;
  }

  else
  {
    v45 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 279, &v213);
  if (v214)
  {
    v50 = v213;
  }

  else
  {
    v50 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v46, v47, v48, v49, v22, &unk_26287FEB9, (34 - a3), (34 - a3), v50, v45, v45, 0);
  DgnString::~DgnString(&v213);
  *a4 += v45;
  *a5 += v45;
  v51 = *(this + 4);
  if (v51)
  {
    v212 = 0;
    v213 = 0;
    v211 = 0;
    FmpeMgr::printSize(v51, 0xFFFFFFFFLL, v22, &v213, &v212, &v211);
    *a4 += v213;
    *a5 += v212;
    *a6 += v211;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v52 = 4;
  }

  else
  {
    v52 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 280, &v213);
  if (v214)
  {
    v57 = v213;
  }

  else
  {
    v57 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, v54, v55, v56, v22, &unk_26287FEB9, (34 - a3), (34 - a3), v57, v52, v52, 0);
  DgnString::~DgnString(&v213);
  *a4 += v52;
  *a5 += v52;
  v58 = *(this + 5);
  if (v58)
  {
    v212 = 0;
    v213 = 0;
    v211 = 0;
    OnlineConstrainedTransAccMgr::printSize(v58, 0xFFFFFFFFLL, v22, &v213, &v212, &v211);
    *a4 += v213;
    *a5 += v212;
    *a6 += v211;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v59 = 4;
  }

  else
  {
    v59 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 282, &v213);
  if (v214)
  {
    v64 = v213;
  }

  else
  {
    v64 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v60, v61, v62, v63, v22, &unk_26287FEB9, (34 - a3), (34 - a3), v64, v59, v59, 0);
  DgnString::~DgnString(&v213);
  *a4 += v59;
  *a5 += v59;
  v65 = *(this + 6);
  if (v65)
  {
    v212 = 0;
    v213 = 0;
    v211 = 0;
    PicMgr::printSize(v65, 0xFFFFFFFFLL, v22, &v213, &v212, &v211);
    *a4 += v213;
    *a5 += v212;
    *a6 += v211;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v66 = 4;
  }

  else
  {
    v66 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 283, &v213);
  if (v214)
  {
    v71 = v213;
  }

  else
  {
    v71 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v67, v68, v69, v70, v22, &unk_26287FEB9, (34 - a3), (34 - a3), v71, v66, v66, 0);
  DgnString::~DgnString(&v213);
  *a4 += v66;
  *a5 += v66;
  v72 = *(this + 7);
  if (v72)
  {
    v212 = 0;
    v213 = 0;
    v211 = 0;
    PelMgr::printSize(v72, 0xFFFFFFFFLL, v22, &v213, &v212, &v211);
    *a4 += v213;
    *a5 += v212;
    *a6 += v211;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v73 = 4;
  }

  else
  {
    v73 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 284, &v213);
  if (v214)
  {
    v78 = v213;
  }

  else
  {
    v78 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v74, v75, v76, v77, v22, &unk_26287FEB9, (34 - a3), (34 - a3), v78, v73, v73, 0);
  DgnString::~DgnString(&v213);
  *a4 += v73;
  *a5 += v73;
  v79 = *(this + 8);
  if (v79)
  {
    v212 = 0;
    v213 = 0;
    v211 = 0;
    GenoneClassTree::printSize(v79, 0xFFFFFFFFLL, v22, &v213, &v212, &v211);
    *a4 += v213;
    *a5 += v212;
    *a6 += v211;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v80 = 4;
  }

  else
  {
    v80 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 285, &v213);
  if (v214)
  {
    v85 = v213;
  }

  else
  {
    v85 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v81, v82, v83, v84, v22, &unk_26287FEB9, (34 - a3), (34 - a3), v85, v80, v80, 0);
  DgnString::~DgnString(&v213);
  *a4 += v80;
  *a5 += v80;
  v86 = *(this + 9);
  if (v86)
  {
    v212 = 0;
    v213 = 0;
    v211 = 0;
    SigProcDescriptor::printSize(v86, 0xFFFFFFFFLL, v22, &v213, &v212, &v211);
    *a4 += v213;
    *a5 += v212;
    *a6 += v211;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v87 = 4;
  }

  else
  {
    v87 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 287, &v213);
  if (v214)
  {
    v92 = v213;
  }

  else
  {
    v92 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v88, v89, v90, v91, v22, &unk_26287FEB9, (34 - a3), (34 - a3), v92, v87, v87, 0);
  DgnString::~DgnString(&v213);
  *a4 += v87;
  *a5 += v87;
  v212 = 0;
  v213 = 0;
  v211 = 0;
  PhnMgr::printSize((this + 80), 0xFFFFFFFFLL, v22, &v213, &v212, &v211);
  *a4 += v213;
  *a5 += v212;
  *a6 += v211;
  v93 = *(this + 18);
  if (v93)
  {
    v212 = 0;
    v213 = 0;
    v211 = 0;
    Lookahead::printSize(v93, 0xFFFFFFFFLL, v22, &v213, &v212, &v211);
    *a4 += v213;
    *a5 += v212;
    *a6 += v211;
  }

  v210 = a3;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v94 = 4;
  }

  else
  {
    v94 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 290, &v213);
  if (v214)
  {
    v99 = v213;
  }

  else
  {
    v99 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v95, v96, v97, v98, v22, &unk_26287FEB9, (34 - a3), (34 - a3), v99, v94, v94, 0);
  DgnString::~DgnString(&v213);
  *a4 += v94;
  *a5 += v94;
  v100 = sizeObject(this + 152, 0);
  v101 = sizeObject(this + 152, 1);
  v102 = sizeObject(this + 152, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 292, &v213);
  if (v214)
  {
    v107 = v213;
  }

  else
  {
    v107 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v103, v104, v105, v106, v22, &unk_26287FEB9, v24, v24, v107, v100, v101, v102);
  DgnString::~DgnString(&v213);
  *a4 += v100;
  *a5 += v101;
  *a6 += v102;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v108 = 4;
  }

  else
  {
    v108 = 8;
  }

  v109 = *(this + 22);
  if (v109)
  {
    v110 = sizeObject(v109, 0) + v108;
    v111 = *(this + 22);
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v108 = 4;
    }

    else
    {
      v108 = 8;
    }

    if (v111 && (v108 += sizeObject(v111, 1), (v112 = *(this + 22)) != 0))
    {
      v113 = sizeObject(v112, 3);
    }

    else
    {
      v113 = 0;
    }
  }

  else
  {
    v113 = 0;
    v110 = v108;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 294, &v213);
  if (v214)
  {
    v118 = v213;
  }

  else
  {
    v118 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v114, v115, v116, v117, v22, &unk_26287FEB9, v24, v24, v118, v110, v108, v113);
  DgnString::~DgnString(&v213);
  *a4 += v110;
  *a5 += v108;
  *a6 += v113;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 295, &v213);
  if (v214)
  {
    v123 = v213;
  }

  else
  {
    v123 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v119, v120, v121, v122, v22, &unk_26287FEB9, v24, v24, v123, 2, 2, 0);
  DgnString::~DgnString(&v213);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 297, &v213);
  if (v214)
  {
    v128 = v213;
  }

  else
  {
    v128 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v124, v125, v126, v127, v22, &unk_26287FEB9, v24, v24, v128, 1, 1, 0);
  DgnString::~DgnString(&v213);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v129 = 4;
  }

  else
  {
    v129 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 298, &v213);
  if (v214)
  {
    v134 = v213;
  }

  else
  {
    v134 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v130, v131, v132, v133, v22, &unk_26287FEB9, v24, v24, v134, v129, v129, 0);
  DgnString::~DgnString(&v213);
  *a4 += v129;
  *a5 += v129;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 299, &v213);
  if (v214)
  {
    v139 = v213;
  }

  else
  {
    v139 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v135, v136, v137, v138, v22, &unk_26287FEB9, v24, v24, v139, 4, 4, 0);
  DgnString::~DgnString(&v213);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 300, &v213);
  if (v214)
  {
    v144 = v213;
  }

  else
  {
    v144 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v140, v141, v142, v143, v22, &unk_26287FEB9, v24, v24, v144, 4, 4, 0);
  DgnString::~DgnString(&v213);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 302, &v213);
  if (v214)
  {
    v149 = v213;
  }

  else
  {
    v149 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v145, v146, v147, v148, v22, &unk_26287FEB9, v24, v24, v149, 4, 4, 0);
  DgnString::~DgnString(&v213);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 304, &v213);
  if (v214)
  {
    v154 = v213;
  }

  else
  {
    v154 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v150, v151, v152, v153, v22, &unk_26287FEB9, v24, v24, v154, 4, 4, 0);
  DgnString::~DgnString(&v213);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 306, &v213);
  if (v214)
  {
    v159 = v213;
  }

  else
  {
    v159 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v155, v156, v157, v158, v22, &unk_26287FEB9, v24, v24, v159, 4, 4, 0);
  DgnString::~DgnString(&v213);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v160 = 12;
  }

  else
  {
    v160 = 16;
  }

  v161 = *(this + 58);
  v162 = *(this + 59);
  if (v162 >= v161)
  {
    v163 = 0;
    if (v161 > 0)
    {
      v160 += 4 * (v161 - 1) + 4;
    }

    v164 = v160 + 4 * (v162 - v161);
  }

  else
  {
    v163 = 4 * v161;
    v164 = v160;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 308, &v213);
  if (v214)
  {
    v169 = v213;
  }

  else
  {
    v169 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v165, v166, v167, v168, v22, &unk_26287FEB9, v24, v24, v169, v164, v160, v163);
  DgnString::~DgnString(&v213);
  *a4 += v164;
  *a5 += v160;
  *a6 += v163;
  v170 = sizeObject(this + 240, 0);
  v171 = sizeObject(this + 240, 1);
  v172 = sizeObject(this + 240, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 310, &v213);
  if (v214)
  {
    v177 = v213;
  }

  else
  {
    v177 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v173, v174, v175, v176, v22, &unk_26287FEB9, v24, v24, v177, v170, v171, v172);
  DgnString::~DgnString(&v213);
  *a4 += v170;
  *a5 += v171;
  *a6 += v172;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 312, &v213);
  if (v214)
  {
    v182 = v213;
  }

  else
  {
    v182 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v178, v179, v180, v181, v22, &unk_26287FEB9, v24, v24, v182, 4, 4, 0);
  DgnString::~DgnString(&v213);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 314, &v213);
  if (v214)
  {
    v187 = v213;
  }

  else
  {
    v187 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v183, v184, v185, v186, v22, &unk_26287FEB9, v24, v24, v187, 4, 4, 0);
  DgnString::~DgnString(&v213);
  *a4 += 4;
  *a5 += 4;
  v188 = sizeObject<SigProcDescriptor>(this + 336, 0);
  v189 = sizeObject<SigProcDescriptor>(this + 336, 1);
  v190 = sizeObject<SigProcDescriptor>(this + 336, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 316, &v213);
  if (v214)
  {
    v195 = v213;
  }

  else
  {
    v195 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v191, v192, v193, v194, v22, &unk_26287FEB9, v24, v24, v195, v188, v189, v190);
  DgnString::~DgnString(&v213);
  *a4 += v188;
  *a5 += v189;
  *a6 += v190;
  v196 = sizeObject<BandwidthTransform>(this + 352, 0);
  v197 = sizeObject<BandwidthTransform>(this + 352, 1);
  v198 = sizeObject<BandwidthTransform>(this + 352, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 318, &v213);
  if (v214)
  {
    v203 = v213;
  }

  else
  {
    v203 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v199, v200, v201, v202, v22, &unk_26287FEB9, v24, v24, v203, v196, v197, v198);
  DgnString::~DgnString(&v213);
  *a4 += v196;
  *a5 += v197;
  *a6 += v198;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 319, &v213);
  if (v214)
  {
    v208 = v213;
  }

  else
  {
    v208 = &unk_26287FEB9;
  }

  v209 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v204, v205, v206, v207, v210, &unk_26287FEB9, (35 - v210), (35 - v210), v208, *a4, *a5, *a6);
  DgnString::~DgnString(&v213);
}

void sub_2626724E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<SigProcDescriptor>(uint64_t a1, uint64_t a2)
{
  SigProcDescriptor::SigProcDescriptor(v11);
  v4 = sizeObject(v11, 2);
  if (a2 == 3)
  {
    v5 = 0;
  }

  else
  {
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v5 = 12;
    }

    else
    {
      v5 = 16;
    }

    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v6 = v4;
      v7 = *(a1 + 8);
      if (v7 >= 1)
      {
        v8 = v7 + 1;
        v9 = 344 * v7 - 344;
        do
        {
          v5 += sizeObject(*a1 + v9, a2);
          --v8;
          v9 -= 344;
        }

        while (v8 > 1);
      }

      if (!a2)
      {
        v5 += v6 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  SigProcDescriptor::~SigProcDescriptor(v11);
  return v5;
}

void sub_262672654(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SigProcDescriptor::~SigProcDescriptor(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<BandwidthTransform>(uint64_t a1, int a2)
{
  LinearTransform::LinearTransform(v12);
  v4 = sizeObject(&v11, 2);
  if (a2 == 3)
  {
    v5 = 0;
  }

  else
  {
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v5 = 12;
    }

    else
    {
      v5 = 16;
    }

    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v6 = v4;
      v7 = *(a1 + 8);
      if (v7 >= 1)
      {
        v8 = v7 + 1;
        v9 = 80 * v7 - 80;
        do
        {
          v5 += sizeObject(*a1 + v9, a2);
          --v8;
          v9 -= 80;
        }

        while (v8 > 1);
      }

      if (!a2)
      {
        v5 += v6 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  LinearTransform::~LinearTransform(v12);
  return v5;
}

void User::saveUser(uint64_t a1, uint64_t a2, _DWORD *a3, int a4, uint64_t a5, ProgressCallbackHandler *a6)
{
  v37 = 0u;
  v38 = 0u;
  SnapTime::recordTime(&v37, 1, 1, 1, 1);
  LoadSaveTracker::LoadSaveTracker(&v36);
  DFileProgressInfo::attachProgressHandler((a1 + 240), a6, v12);
  if (a4)
  {
    v13 = a4 != 2;
  }

  else if (*(a1 + 186) == 1)
  {
    v13 = *(*a1 + 264);
  }

  else
  {
    v13 = 0;
  }

  DFileOwner::DFileOwner(v35);
  *a3 = 1;
  v14 = DFile::openDFile(a2, 1, 3, v35);
  *a3 = 2;
  (*(*v14 + 96))(v14, a1 + 240);
  DFileProgressInfo::resetReportedInfo((a1 + 240));
  DFileChecksums::DFileChecksums(v34);
  AdaptStatsHistory::saveASB(*(a1 + 176), v14, v34, v13 & 1, a5);
  EnvMgr::saveEnvMgr(*a1, v14, v34, v13 & 1, a5);
  PhnMgr::savePhnMgr((a1 + 80), v14, v34, v13 & 1, a5);
  MulTable::saveMulTable(*(a1 + 8), v14, v34, v13 & 1, a5);
  v15 = *(a1 + 144);
  if (v15)
  {
    Lookahead::saveLookahead(v15, v14, v34, v13 & 1, a5);
  }

  SigProcDescriptor::saveSigProcDescriptor(*(a1 + 72), v14, v34, v13 & 1, a5);
  if (*(a1 + 360))
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    do
    {
      v32.i32[0] = 2;
      v32.i32[1] = v24;
      DFile::pushCurrentSubDirComponent(v14, &v32, v16, v17, v18, v19, v20, v21);
      SigProcDescriptor::saveSigProcDescriptor((*(a1 + 336) + v23), v14, v34, v13 & 1, a5);
      BandwidthTransform::saveBandwidthTransform((*(a1 + 352) + v22), v14, v34, v13 & 1, a5);
      DFile::popCurrentSubDirComponent(v14);
      ++v24;
      v23 += 344;
      v22 += 80;
    }

    while (v24 < *(a1 + 360));
  }

  v25 = *(a1 + 368);
  if (v25)
  {
    NeuralNet::saveNeuralNet(v25, v14, v34, v13 & 1, a5);
  }

  v26 = *(a1 + 16);
  if (v26)
  {
    Imelda::saveImelda(v26, v14, v34, v13 & 1, a5);
  }

  v27 = *(a1 + 32);
  if (v27)
  {
    FmpeMgr::saveFmpeModel(v27, v14, v34, v13 & 1, a5, v19, v20, v21);
  }

  v28 = *(a1 + 40);
  if (v28)
  {
    OnlineConstrainedTransAccMgr::saveOnlineConstrainedTransAcc(v28, v14, v34, v13 & 1, a5);
  }

  v29 = *(a1 + 24);
  if (v29)
  {
    VarClassMgr::saveVarClassMgr(v29, v14, v34, v13 & 1, a5);
  }

  PelMgr::savePelMgr(*(a1 + 56), v14, v34, v13 & 1, a5);
  PicMgr::savePicMgr(*(a1 + 48), v14, v34, v13 & 1, a5);
  GenoneClassTree::saveGenoneClassTree(*(a1 + 64), v14, v34, v13 & 1, a5);
  if ((v13 & 1) == 0)
  {
    if (*(a1 + 232))
    {
      User::saveChecksums(a1, v14, v34, a5);
    }

    v30 = OpenAndWriteMrecHeader(v14, 0x63u, 0, "MRUCH!? ", 19, 2);
    v32.i32[0] = 0;
    writeObject(v30, v34, &v32);
    writeObjectChecksum(v30, v32.i32);
    DgnDelete<DgnStream>(v30);
  }

  v32 = 0u;
  v33 = 0u;
  SnapTime::recordTime(&v32, 1, 1, 1, 1);
  v32 = vsubq_s64(v32, v37);
  v33 = vsubq_s64(v33, v38);
  FileHistory::addEntryWithElapsedTime((a1 + 152), " saveUser time: ", &v32);
  FileHistory::saveFileHistory((a1 + 152), v14, v13 & 1);
  DFileOwner::setRemoveFileOnDestruction(v35, 0);
  *a3 = 0;
  DFileChecksums::~DFileChecksums(v34);
  DFileOwner::~DFileOwner(v35, v31);
  LoadSaveTracker::~LoadSaveTracker(&v36);
}

void sub_262672B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  DFileChecksums::~DFileChecksums(&a13);
  DFileOwner::~DFileOwner(&a16, v22);
  LoadSaveTracker::~LoadSaveTracker(&a21);
  _Unwind_Resume(a1);
}

void (***User::saveChecksums(User *this, DFile *a2, DFileChecksums *a3, int a4))(void)
{
  v7 = OpenAndWriteMrecHeader(a2, 0x12u, a4, "MRCXM!? ", 15, 3);
  v10 = 0;
  writeObject(v7, this + 54, &v10);
  writeObject<unsigned int>(v7, this + 224, &v10);
  writeObjectChecksum(v7, &v10);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x12u, v10);
  return DgnDelete<DgnStream>(v7);
}

uint64_t *User::newPelScorer(User *this, int a2, double a3, BOOL a4, double a5, char *a6, char *a7, int a8, int a9)
{
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  v16 = *(*(this + 7) + 620);
  if (v16)
  {
    v17 = a9 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    v29 = 0;
    v20 = realloc_array(0, &v29, 4 * v16, 0, 0, 1);
    v27 = v29;
    LODWORD(v28) = v16;
    HIDWORD(v28) = v20 >> 2;
    DgnSplitStringParValueIntoUintArray("(Search|PrefiltererBuild)HierScorerBeamList", "recognizer configuration", a6, 3000, 0, 0xBB8u, &v27);
    v21 = *(*(this + 7) + 620);
    if (HIDWORD(v26) < v21)
    {
      v29 = 0;
      HIDWORD(v26) = realloc_array(v25, &v29, 4 * v21, 4 * v26, 4 * v26, 1) >> 2;
      v25 = v29;
    }

    LODWORD(v26) = v21;
    DgnSplitStringParValueIntoUintArray("(Search|PrefiltererBuild)HierScorerCutoffRatioList", "recognizer configuration", a7, 10, 0, 0x64u, &v25);
    LODWORD(v16) = *(*(this + 7) + 620);
  }

  if (v16)
  {
    v22 = a9 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = MemChunkAlloc(0x298uLL, 0);
    OnDemandPelScorer::OnDemandPelScorer(v23, *(this + 7), *(this + 8), *(this + 3), *(this + 4), *(this + 46), *(this + 2), a2, a3, a5, a4);
  }

  else
  {
    v23 = MemChunkAlloc(0x320uLL, 0);
    HScorer::HScorer(v23, *(this + 7), *(this + 8), *(this + 3), *(this + 4), *(this + 46), *(this + 2), a2, a3, a5, a4, &v27, &v25, a8);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v25);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v27);
  return v23;
}

void sub_262672E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  _Unwind_Resume(a1);
}

void User::decrementAdapterCount(User *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(this + 51);
  if (!v9)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 1488, "user/user", 3, &errStr_user_user_E_NO_ADAPTER, a7, a8, *(this + 92));
    v9 = *(this + 51);
  }

  *(this + 51) = v9 - 1;
}

void *DgnArray<SigProcDescriptor>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 344 * v2 - 344;
    do
    {
      SigProcDescriptor::~SigProcDescriptor((*a1 + v3));
      v3 -= 344;
    }

    while (v3 != -344);
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

void *DgnArray<BandwidthTransform>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 80 * v2 - 72;
    do
    {
      LinearTransform::~LinearTransform((*a1 + v3));
      v3 -= 80;
    }

    while (v3 != -72);
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

void VarClassMgr::~VarClassMgr(VarClassMgr *this)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 32);
  DgnArray<LinearTransform>::releaseAll(this + 16);
}

void PicMgr::~PicMgr(PicMgr *this)
{
  BitArray::~BitArray((this + 216));
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 200);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 184);
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 168);
  DgnArray<DgnArray<ParseToken>>::releaseAll(this + 152);
  DgnArray<DgnArray<ParseToken>>::releaseAll(this + 128);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 112);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 96);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 72);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 56);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 40);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 16);
}

void *DgnIOwnArray<DgnSharedMemStream *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<DgnStream>(*(*a1 + v3));
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

void *TAllocator::clear(TAllocator *this)
{
  result = *(this + 4);
  if (result)
  {
    do
    {
      v3 = *result;
      MEMORY[0x26672B190]();
      result = v3;
    }

    while (v3);
  }

  *this = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  return result;
}

void TAllocator::TAllocator(TAllocator *this, uint64_t a2)
{
  *this = 0;
  *(this + 1) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
}

uint64_t TAllocator::allocate(TAllocator *this, uint64_t a2)
{
  v3 = (a2 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v5 = this + 16;
  result = *(this + 2);
  if (*(v5 + 1) - result < v3)
  {
    if (v3 + 8 <= *(this + 1))
    {
      v6 = *(this + 1);
    }

    else
    {
      v6 = v3 + 8;
    }

    *this += v6;
    operator new[]();
  }

  *(this + 2) = result + v3;
  return result;
}

uint64_t StartupConfidenceParamSpecMgr(void)
{
  v69 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v69, "ConfidenceEnableWordLevel", &byte_262899963, &byte_262899963, &sConfidenceEnableWordLevelBoolHistory);
  v68 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v68, "ConfidenceEnableUttLevel", &byte_262899963, &byte_262899963, &sConfidenceEnableUttLevelBoolHistory);
  v66 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v66, "ConfidenceEnableForAllNBest", &byte_262899963, &byte_262899963, &sConfidenceEnableForAllNBestBoolHistory);
  v65 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v65, "ConfidenceUttNBestHighThresh", &byte_262899963, &byte_262899963, &sConfidenceUttNBestHighThreshDoubleHistory);
  v64 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v64, "ConfidenceUttNBestLowThresh", &byte_262899963, &byte_262899963, &sConfidenceUttNBestLowThreshDoubleHistory);
  v74 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v74, "ConfidenceWordProbConstantTerm", &byte_262899963, &byte_262899963, &sConfidenceWordProbConstantTermDoubleHistory);
  v62 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v62, "ConfidenceUttProbConstantTerm", &byte_262899963, &byte_262899963, &sConfidenceUttProbConstantTermDoubleHistory);
  v67 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v67, "ConfidenceUttProbTotalLMScoreFactor", &byte_262899963, &byte_262899963, &sConfidenceUttProbTotalLMScoreFactorDoubleHistory);
  v60 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v60, "ConfidenceUttProbAverageLMScoreFactor", &byte_262899963, &byte_262899963, &sConfidenceUttProbAverageLMScoreFactorDoubleHistory);
  v63 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v63, "ConfidenceUttProbUttAverageAMinusBScoreFactor", &byte_262899963, &byte_262899963, &sConfidenceUttProbUttAverageAMinusBScoreFactorDoubleHistory);
  v61 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v61, "ConfidenceUttProbNBestWordAverageFactor", &byte_262899963, &byte_262899963, &sConfidenceUttProbNBestWordAverageFactorDoubleHistory);
  v59 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v59, "ConfidenceUttProbNBestMaxFactor", &byte_262899963, &byte_262899963, &sConfidenceUttProbNBestMaxFactorDoubleHistory);
  v57 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v57, "ConfidenceUttProbNBestMinFactor", &byte_262899963, &byte_262899963, &sConfidenceUttProbNBestMinFactorDoubleHistory);
  v53 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v53, "ConfidenceUttProbNBestHighCountFactor", &byte_262899963, &byte_262899963, &sConfidenceUttProbNBestHighCountFactorDoubleHistory);
  v51 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v51, "ConfidenceUttProbNBestLowCountFactor", &byte_262899963, &byte_262899963, &sConfidenceUttProbNBestLowCountFactorDoubleHistory);
  v49 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v49, "ConfidenceUttProbAverageActiveNodeCountFactor", &byte_262899963, &byte_262899963, &sConfidenceUttProbAverageActiveNodeCountFactorDoubleHistory);
  v50 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v50, "ConfidenceUttProbMaxWordsEndingFactor", &byte_262899963, &byte_262899963, &sConfidenceUttProbMaxWordsEndingFactorDoubleHistory);
  v47 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v47, "ConfidenceUttProbAverageDurationFactor", &byte_262899963, &byte_262899963, &sConfidenceUttProbAverageDurationFactorDoubleHistory);
  v48 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v48, "ConfidenceUttProbLogWordCountFactor", &byte_262899963, &byte_262899963, &sConfidenceUttProbLogWordCountFactorDoubleHistory);
  v71 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v71, "ConfidenceWordProbLeftContextIndicator2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbLeftContextIndicator2FactorDoubleHistory);
  v70 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v70, "ConfidenceWordProbLeftContextIndicator1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbLeftContextIndicator1FactorDoubleHistory);
  v73 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v73, "ConfidenceWordProbRightContextIndicator1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbRightContextIndicator1FactorDoubleHistory);
  v72 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v72, "ConfidenceWordProbRightContextIndicator2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbRightContextIndicator2FactorDoubleHistory);
  v58 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v58, "ConfidenceWordProbDurationFactor", &byte_262899963, &byte_262899963, &sConfidenceWordProbDurationFactorDoubleHistory);
  v56 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v56, "ConfidenceWordProbDurationLCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbDurationLCntx2FactorDoubleHistory);
  v55 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v55, "ConfidenceWordProbDurationLCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbDurationLCntx1FactorDoubleHistory);
  v54 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v54, "ConfidenceWordProbDurationRCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbDurationRCntx1FactorDoubleHistory);
  v52 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v52, "ConfidenceWordProbDurationRCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbDurationRCntx2FactorDoubleHistory);
  v46 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v46, "ConfidenceWordProbAverageActiveNodeCountFactor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageActiveNodeCountFactorDoubleHistory);
  v45 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v45, "ConfidenceWordProbAverageActiveNodeCountLCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageActiveNodeCountLCntx2FactorDoubleHistory);
  v44 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v44, "ConfidenceWordProbAverageActiveNodeCountLCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageActiveNodeCountLCntx1FactorDoubleHistory);
  v43 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v43, "ConfidenceWordProbAverageActiveNodeCountRCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageActiveNodeCountRCntx1FactorDoubleHistory);
  v42 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v42, "ConfidenceWordProbAverageActiveNodeCountRCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageActiveNodeCountRCntx2FactorDoubleHistory);
  v28 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v28, "ConfidenceWordProbAverageAMinusBScoreFactor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageAMinusBScoreFactorDoubleHistory);
  v26 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v26, "ConfidenceWordProbAverageAMinusBScoreLCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageAMinusBScoreLCntx2FactorDoubleHistory);
  v24 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v24, "ConfidenceWordProbAverageAMinusBScoreLCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageAMinusBScoreLCntx1FactorDoubleHistory);
  v23 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v23, "ConfidenceWordProbAverageAMinusBScoreRCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageAMinusBScoreRCntx1FactorDoubleHistory);
  v22 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v22, "ConfidenceWordProbAverageAMinusBScoreRCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageAMinusBScoreRCntx2FactorDoubleHistory);
  v41 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v41, "ConfidenceWordProbLMScoreFactor", &byte_262899963, &byte_262899963, &sConfidenceWordProbLMScoreFactorDoubleHistory);
  v40 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v40, "ConfidenceWordProbLMScoreLCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbLMScoreLCntx2FactorDoubleHistory);
  v37 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v37, "ConfidenceWordProbLMScoreLCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbLMScoreLCntx1FactorDoubleHistory);
  v36 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v36, "ConfidenceWordProbLMScoreRCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbLMScoreRCntx1FactorDoubleHistory);
  v33 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v33, "ConfidenceWordProbLMScoreRCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbLMScoreRCntx2FactorDoubleHistory);
  v39 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v39, "ConfidenceWordProbNBestScoreFactor", &byte_262899963, &byte_262899963, &sConfidenceWordProbNBestScoreFactorDoubleHistory);
  v38 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v38, "ConfidenceWordProbNBestScoreLCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbNBestScoreLCntx2FactorDoubleHistory);
  v35 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v35, "ConfidenceWordProbNBestScoreLCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbNBestScoreLCntx1FactorDoubleHistory);
  v34 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v34, "ConfidenceWordProbNBestScoreRCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbNBestScoreRCntx1FactorDoubleHistory);
  v31 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v31, "ConfidenceWordProbNBestScoreRCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbNBestScoreRCntx2FactorDoubleHistory);
  v32 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v32, "ConfidenceWordProbWordsEndingCountFactor", &byte_262899963, &byte_262899963, &sConfidenceWordProbWordsEndingCountFactorDoubleHistory);
  v30 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v30, "ConfidenceWordProbWordsEndingCountLCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbWordsEndingCountLCntx2FactorDoubleHistory);
  v29 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v29, "ConfidenceWordProbWordsEndingCountLCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbWordsEndingCountLCntx1FactorDoubleHistory);
  v27 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v27, "ConfidenceWordProbWordsEndingCountRCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbWordsEndingCountRCntx1FactorDoubleHistory);
  v25 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v25, "ConfidenceWordProbWordsEndingCountRCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbWordsEndingCountRCntx2FactorDoubleHistory);
  v21 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v21, "ConfidenceWordProbAverageBestScoreFactor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageBestScoreFactorDoubleHistory);
  v20 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v20, "ConfidenceWordProbAverageBestScoreLCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageBestScoreLCntx2FactorDoubleHistory);
  v19 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v19, "ConfidenceWordProbAverageBestScoreLCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageBestScoreLCntx1FactorDoubleHistory);
  v18 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v18, "ConfidenceWordProbAverageBestScoreRCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageBestScoreRCntx1FactorDoubleHistory);
  v17 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v17, "ConfidenceWordProbAverageBestScoreRCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageBestScoreRCntx2FactorDoubleHistory);
  v11 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v11, "ConfidenceWordProbAcousticScoreFactor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAcousticScoreFactorDoubleHistory);
  v0 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v0, "ConfidenceWordProbAcousticScoreLCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAcousticScoreLCntx2FactorDoubleHistory);
  v1 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v1, "ConfidenceWordProbAcousticScoreLCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAcousticScoreLCntx1FactorDoubleHistory);
  v2 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v2, "ConfidenceWordProbAcousticScoreRCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAcousticScoreRCntx1FactorDoubleHistory);
  v3 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v3, "ConfidenceWordProbAcousticScoreRCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAcousticScoreRCntx2FactorDoubleHistory);
  v4 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v4, "ConfidenceWordProbAverageAcousticScoreFactor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageAcousticScoreFactorDoubleHistory);
  v5 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v5, "ConfidenceWordProbAverageAcousticScoreLCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageAcousticScoreLCntx2FactorDoubleHistory);
  v6 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v6, "ConfidenceWordProbAverageAcousticScoreLCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageAcousticScoreLCntx1FactorDoubleHistory);
  v7 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v7, "ConfidenceWordProbAverageAcousticScoreRCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageAcousticScoreRCntx1FactorDoubleHistory);
  v8 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v8, "ConfidenceWordProbAverageAcousticScoreRCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageAcousticScoreRCntx2FactorDoubleHistory);
  v16 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v16, "ConfidenceWordProbLogWordCountFactor", &byte_262899963, &byte_262899963, &sConfidenceWordProbLogWordCountFactorDoubleHistory);
  v15 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v15, "ConfidenceWordProbLogWordCountLCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbLogWordCountLCntx2FactorDoubleHistory);
  v14 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v14, "ConfidenceWordProbLogWordCountLCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbLogWordCountLCntx1FactorDoubleHistory);
  v13 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v13, "ConfidenceWordProbLogWordCountRCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbLogWordCountRCntx1FactorDoubleHistory);
  v12 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v12, "ConfidenceWordProbLogWordCountRCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbLogWordCountRCntx2FactorDoubleHistory);
  ParamSpecMgr::addParam(qword_281051F80, v69);
  ParamSpecMgr::addParam(qword_281051F80, v68);
  ParamSpecMgr::addParam(qword_281051F80, v66);
  ParamSpecMgr::addParam(qword_281051F80, v65);
  ParamSpecMgr::addParam(qword_281051F80, v64);
  ParamSpecMgr::addParam(qword_281051F80, v49);
  ParamSpecMgr::addParam(qword_281051F80, v47);
  ParamSpecMgr::addParam(qword_281051F80, v60);
  ParamSpecMgr::addParam(qword_281051F80, v62);
  ParamSpecMgr::addParam(qword_281051F80, v48);
  ParamSpecMgr::addParam(qword_281051F80, v50);
  ParamSpecMgr::addParam(qword_281051F80, v53);
  ParamSpecMgr::addParam(qword_281051F80, v51);
  ParamSpecMgr::addParam(qword_281051F80, v59);
  ParamSpecMgr::addParam(qword_281051F80, v57);
  ParamSpecMgr::addParam(qword_281051F80, v61);
  ParamSpecMgr::addParam(qword_281051F80, v67);
  ParamSpecMgr::addParam(qword_281051F80, v63);
  ParamSpecMgr::addParam(qword_281051F80, v11);
  ParamSpecMgr::addParam(qword_281051F80, v1);
  ParamSpecMgr::addParam(qword_281051F80, v0);
  ParamSpecMgr::addParam(qword_281051F80, v2);
  ParamSpecMgr::addParam(qword_281051F80, v3);
  ParamSpecMgr::addParam(qword_281051F80, v28);
  ParamSpecMgr::addParam(qword_281051F80, v24);
  ParamSpecMgr::addParam(qword_281051F80, v26);
  ParamSpecMgr::addParam(qword_281051F80, v23);
  ParamSpecMgr::addParam(qword_281051F80, v22);
  ParamSpecMgr::addParam(qword_281051F80, v4);
  ParamSpecMgr::addParam(qword_281051F80, v6);
  ParamSpecMgr::addParam(qword_281051F80, v5);
  ParamSpecMgr::addParam(qword_281051F80, v7);
  ParamSpecMgr::addParam(qword_281051F80, v8);
  ParamSpecMgr::addParam(qword_281051F80, v46);
  ParamSpecMgr::addParam(qword_281051F80, v44);
  ParamSpecMgr::addParam(qword_281051F80, v45);
  ParamSpecMgr::addParam(qword_281051F80, v43);
  ParamSpecMgr::addParam(qword_281051F80, v42);
  ParamSpecMgr::addParam(qword_281051F80, v21);
  ParamSpecMgr::addParam(qword_281051F80, v19);
  ParamSpecMgr::addParam(qword_281051F80, v20);
  ParamSpecMgr::addParam(qword_281051F80, v18);
  ParamSpecMgr::addParam(qword_281051F80, v17);
  ParamSpecMgr::addParam(qword_281051F80, v74);
  ParamSpecMgr::addParam(qword_281051F80, v58);
  ParamSpecMgr::addParam(qword_281051F80, v55);
  ParamSpecMgr::addParam(qword_281051F80, v56);
  ParamSpecMgr::addParam(qword_281051F80, v54);
  ParamSpecMgr::addParam(qword_281051F80, v52);
  ParamSpecMgr::addParam(qword_281051F80, v41);
  ParamSpecMgr::addParam(qword_281051F80, v37);
  ParamSpecMgr::addParam(qword_281051F80, v40);
  ParamSpecMgr::addParam(qword_281051F80, v36);
  ParamSpecMgr::addParam(qword_281051F80, v33);
  ParamSpecMgr::addParam(qword_281051F80, v70);
  ParamSpecMgr::addParam(qword_281051F80, v71);
  ParamSpecMgr::addParam(qword_281051F80, v16);
  ParamSpecMgr::addParam(qword_281051F80, v14);
  ParamSpecMgr::addParam(qword_281051F80, v15);
  ParamSpecMgr::addParam(qword_281051F80, v13);
  ParamSpecMgr::addParam(qword_281051F80, v12);
  ParamSpecMgr::addParam(qword_281051F80, v39);
  ParamSpecMgr::addParam(qword_281051F80, v35);
  ParamSpecMgr::addParam(qword_281051F80, v38);
  ParamSpecMgr::addParam(qword_281051F80, v34);
  ParamSpecMgr::addParam(qword_281051F80, v31);
  ParamSpecMgr::addParam(qword_281051F80, v73);
  ParamSpecMgr::addParam(qword_281051F80, v72);
  ParamSpecMgr::addParam(qword_281051F80, v32);
  ParamSpecMgr::addParam(qword_281051F80, v29);
  ParamSpecMgr::addParam(qword_281051F80, v30);
  ParamSpecMgr::addParam(qword_281051F80, v27);
  ParamSpecMgr::addParam(qword_281051F80, v25);
  v9 = qword_281051F80;

  return ParamSpecMgr::sortParams(v9);
}

_DWORD *ConfidenceParamSet::ConfidenceParamSet(_DWORD *a1, const char *a2, int a3, int a4, int a5)
{
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 2), a2);
  a1[6] = a3;
  a1[7] = a4;
  a1[8] = a5;
  a1[9] = 0;
  *a1 = &unk_287526980;
  ConfidenceParamSet::setDefaults(a1, v9, v10, v11, v12, v13, v14, v15);
  return a1;
}

void sub_2626742DC(_Unwind_Exception *a1)
{
  *v1 = v2;
  DgnString::~DgnString((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t ConfidenceParamSet::ConfidenceParamSet(uint64_t a1, uint64_t a2, char *a3, int a4, int a5, int a6)
{
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 8), a3);
  *(a1 + 24) = a4;
  *(a1 + 28) = a5;
  *(a1 + 32) = a6;
  *(a1 + 36) = 0;
  *a1 = &unk_287526980;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 512) = *(a2 + 512);
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 592) = *(a2 + 592);
  return a1;
}

void ConfidenceParamSet::setDefaults(ConfidenceParamSet *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(this + 40) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F80, 1, 0, 0, a5, a6, a7, a8);
  *(this + 41) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F80, 2, 0, 0, v9, v10, v11, v12);
  *(this + 42) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F80, 3, 0, 0, v13, v14, v15, v16);
  *(this + 6) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 4, 0, 0, v17, v18, v19, v20);
  *(this + 7) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 5, 0, 0, v21, v22, v23, v24);
  *(this + 8) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 6, 0, 0, v25, v26, v27, v28);
  *(this + 9) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 7, 0, 0, v29, v30, v31, v32);
  *(this + 10) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 8, 0, 0, v33, v34, v35, v36);
  *(this + 11) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 9, 0, 0, v37, v38, v39, v40);
  *(this + 12) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 10, 0, 0, v41, v42, v43, v44);
  *(this + 13) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 11, 0, 0, v45, v46, v47, v48);
  *(this + 14) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 12, 0, 0, v49, v50, v51, v52);
  *(this + 15) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 13, 0, 0, v53, v54, v55, v56);
  *(this + 16) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 14, 0, 0, v57, v58, v59, v60);
  *(this + 17) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 15, 0, 0, v61, v62, v63, v64);
  *(this + 18) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 16, 0, 0, v65, v66, v67, v68);
  *(this + 19) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 17, 0, 0, v69, v70, v71, v72);
  *(this + 20) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 18, 0, 0, v73, v74, v75, v76);
  *(this + 21) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 19, 0, 0, v77, v78, v79, v80);
  *(this + 22) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 20, 0, 0, v81, v82, v83, v84);
  *(this + 23) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 21, 0, 0, v85, v86, v87, v88);
  *(this + 24) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 22, 0, 0, v89, v90, v91, v92);
  *(this + 25) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 23, 0, 0, v93, v94, v95, v96);
  *(this + 26) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 24, 0, 0, v97, v98, v99, v100);
  *(this + 27) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 25, 0, 0, v101, v102, v103, v104);
  *(this + 28) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 26, 0, 0, v105, v106, v107, v108);
  *(this + 29) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 27, 0, 0, v109, v110, v111, v112);
  *(this + 30) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 28, 0, 0, v113, v114, v115, v116);
  *(this + 31) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 29, 0, 0, v117, v118, v119, v120);
  *(this + 32) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 30, 0, 0, v121, v122, v123, v124);
  *(this + 33) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 31, 0, 0, v125, v126, v127, v128);
  *(this + 34) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 32, 0, 0, v129, v130, v131, v132);
  *(this + 35) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 33, 0, 0, v133, v134, v135, v136);
  *(this + 36) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 34, 0, 0, v137, v138, v139, v140);
  *(this + 37) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 35, 0, 0, v141, v142, v143, v144);
  *(this + 38) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 36, 0, 0, v145, v146, v147, v148);
  *(this + 39) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 37, 0, 0, v149, v150, v151, v152);
  *(this + 40) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 38, 0, 0, v153, v154, v155, v156);
  *(this + 41) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 39, 0, 0, v157, v158, v159, v160);
  *(this + 42) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 40, 0, 0, v161, v162, v163, v164);
  *(this + 43) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 41, 0, 0, v165, v166, v167, v168);
  *(this + 44) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 42, 0, 0, v169, v170, v171, v172);
  *(this + 45) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 43, 0, 0, v173, v174, v175, v176);
  *(this + 46) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 44, 0, 0, v177, v178, v179, v180);
  *(this + 47) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 45, 0, 0, v181, v182, v183, v184);
  *(this + 48) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 46, 0, 0, v185, v186, v187, v188);
  *(this + 49) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 47, 0, 0, v189, v190, v191, v192);
  *(this + 50) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 48, 0, 0, v193, v194, v195, v196);
  *(this + 51) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 49, 0, 0, v197, v198, v199, v200);
  *(this + 52) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 50, 0, 0, v201, v202, v203, v204);
  *(this + 53) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 51, 0, 0, v205, v206, v207, v208);
  *(this + 54) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 52, 0, 0, v209, v210, v211, v212);
  *(this + 55) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 53, 0, 0, v213, v214, v215, v216);
  *(this + 56) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 54, 0, 0, v217, v218, v219, v220);
  *(this + 57) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 55, 0, 0, v221, v222, v223, v224);
  *(this + 58) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 56, 0, 0, v225, v226, v227, v228);
  *(this + 59) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 57, 0, 0, v229, v230, v231, v232);
  *(this + 60) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 58, 0, 0, v233, v234, v235, v236);
  *(this + 61) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 59, 0, 0, v237, v238, v239, v240);
  *(this + 62) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 60, 0, 0, v241, v242, v243, v244);
  *(this + 63) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 61, 0, 0, v245, v246, v247, v248);
  *(this + 64) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 62, 0, 0, v249, v250, v251, v252);
  *(this + 65) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 63, 0, 0, v253, v254, v255, v256);
  *(this + 66) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 64, 0, 0, v257, v258, v259, v260);
  *(this + 67) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 65, 0, 0, v261, v262, v263, v264);
  *(this + 68) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 66, 0, 0, v265, v266, v267, v268);
  *(this + 69) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 67, 0, 0, v269, v270, v271, v272);
  *(this + 70) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 68, 0, 0, v273, v274, v275, v276);
  *(this + 71) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 69, 0, 0, v277, v278, v279, v280);
  *(this + 72) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 70, 0, 0, v281, v282, v283, v284);
  *(this + 73) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 71, 0, 0, v285, v286, v287, v288);
  *(this + 74) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 72, 0, 0, v289, v290, v291, v292);
  *(this + 75) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 73, 0, 0, v293, v294, v295, v296);
}

uint64_t ConfidenceParamSet::sizeObject(uint64_t a1, int a2)
{
  v3 = a2 != 3;
  v4 = sizeObject(a1 + 8);
  v5 = 560;
  if (a2 == 3)
  {
    v5 = 0;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    return v4 + 16 * v3;
  }

  else
  {
    return ((a2 != 3) | (2 * (a2 != 3)) | v5) + v4 + 16 * v3;
  }
}

uint64_t ConfidenceParamSet::getBoolParameter(_BYTE *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 1:
      if (a3 == 1)
      {
        v11 = qword_281051F80;
        v12 = 1;
        goto LABEL_89;
      }

      if (a3)
      {
        goto LABEL_60;
      }

      v8 = a1[40];
      return v8 & 1;
    case 2:
      if (a3 == 1)
      {
        v11 = qword_281051F80;
        v12 = 2;
        goto LABEL_89;
      }

      if (a3)
      {
        goto LABEL_60;
      }

      v8 = a1[41];
      return v8 & 1;
    case 3:
      if (a3 == 1)
      {
        v11 = qword_281051F80;
        v12 = 3;
LABEL_89:
        ParamByParamId = ParamSpecMgr::getParamByParamId(v11, v12, a3, a4, a5, a6, a7, a8);
        v14 = **ParamByParamId;
      }

      else
      {
        if (a3)
        {
LABEL_60:
          throwWrongQueryMode(a3, "BOOL", a3, a4, a5, a6, a7, a8);
          break;
        }

        v8 = a1[42];
      }

      return v8 & 1;
    case 4:
      v9 = 4;
      goto LABEL_83;
    case 5:
      v9 = 5;
      goto LABEL_83;
    case 6:
      v9 = 6;
      goto LABEL_83;
    case 7:
      v9 = 7;
      goto LABEL_83;
    case 8:
      v9 = 8;
      goto LABEL_83;
    case 9:
      v9 = 9;
      goto LABEL_83;
    case 10:
      v9 = 10;
      goto LABEL_83;
    case 11:
      v9 = 11;
      goto LABEL_83;
    case 12:
      v9 = 12;
      goto LABEL_83;
    case 13:
      v9 = 13;
      goto LABEL_83;
    case 14:
      v9 = 14;
      goto LABEL_83;
    case 15:
      v9 = 15;
      goto LABEL_83;
    case 16:
      v9 = 16;
      goto LABEL_83;
    case 17:
      v9 = 17;
      goto LABEL_83;
    case 18:
      v9 = 18;
      goto LABEL_83;
    case 19:
      v9 = 19;
      goto LABEL_83;
    case 20:
      v9 = 20;
      goto LABEL_83;
    case 21:
      v9 = 21;
      goto LABEL_83;
    case 22:
      v9 = 22;
      goto LABEL_83;
    case 23:
      v9 = 23;
      goto LABEL_83;
    case 24:
      v9 = 24;
      goto LABEL_83;
    case 25:
      v9 = 25;
      goto LABEL_83;
    case 26:
      v9 = 26;
      goto LABEL_83;
    case 27:
      v9 = 27;
      goto LABEL_83;
    case 28:
      v9 = 28;
      goto LABEL_83;
    case 29:
      v9 = 29;
      goto LABEL_83;
    case 30:
      v9 = 30;
      goto LABEL_83;
    case 31:
      v9 = 31;
      goto LABEL_83;
    case 32:
      v9 = 32;
      goto LABEL_83;
    case 33:
      v9 = 33;
      goto LABEL_83;
    case 34:
      v9 = 34;
      goto LABEL_83;
    case 35:
      v9 = 35;
      goto LABEL_83;
    case 36:
      v9 = 36;
      goto LABEL_83;
    case 37:
      v9 = 37;
      goto LABEL_83;
    case 38:
      v9 = 38;
      goto LABEL_83;
    case 39:
      v9 = 39;
      goto LABEL_83;
    case 40:
      v9 = 40;
      goto LABEL_83;
    case 41:
      v9 = 41;
      goto LABEL_83;
    case 42:
      v9 = 42;
      goto LABEL_83;
    case 43:
      v9 = 43;
      goto LABEL_83;
    case 44:
      v9 = 44;
      goto LABEL_83;
    case 45:
      v9 = 45;
      goto LABEL_83;
    case 46:
      v9 = 46;
      goto LABEL_83;
    case 47:
      v9 = 47;
      goto LABEL_83;
    case 48:
      v9 = 48;
      goto LABEL_83;
    case 49:
      v9 = 49;
      goto LABEL_83;
    case 50:
      v9 = 50;
      goto LABEL_83;
    case 51:
      v9 = 51;
      goto LABEL_83;
    case 52:
      v9 = 52;
      goto LABEL_83;
    case 53:
      v9 = 53;
      goto LABEL_83;
    case 54:
      v9 = 54;
      goto LABEL_83;
    case 55:
      v9 = 55;
      goto LABEL_83;
    case 56:
      v9 = 56;
      goto LABEL_83;
    case 57:
      v9 = 57;
      goto LABEL_83;
    case 58:
      v9 = 58;
      goto LABEL_83;
    case 59:
      v9 = 59;
      goto LABEL_83;
    case 60:
      v9 = 60;
      goto LABEL_83;
    case 61:
      v9 = 61;
      goto LABEL_83;
    case 62:
      v9 = 62;
      goto LABEL_83;
    case 63:
      v9 = 63;
      goto LABEL_83;
    case 64:
      v9 = 64;
      goto LABEL_83;
    case 65:
      v9 = 65;
      goto LABEL_83;
    case 66:
      v9 = 66;
      goto LABEL_83;
    case 67:
      v9 = 67;
      goto LABEL_83;
    case 68:
      v9 = 68;
      goto LABEL_83;
    case 69:
      v9 = 69;
      goto LABEL_83;
    case 70:
      v9 = 70;
      goto LABEL_83;
    case 71:
      v9 = 71;
      goto LABEL_83;
    case 72:
      v9 = 72;
      goto LABEL_83;
    case 73:
      v9 = 73;
LABEL_83:
      throwWrongTypeForParamId(v9, "double", "BOOL", a4, a5, a6, a7, a8);
      break;
    default:
      throwWrongParamIdValue(a2, "BOOL", a3, a4, a5, a6, a7, a8);
      break;
  }

  v8 = 0;
  return v8 & 1;
}

uint64_t ConfidenceParamSet::getIntParameter(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 1:
      v8 = "BOOL";
      v9 = 1;
      goto LABEL_76;
    case 2:
      v8 = "BOOL";
      v9 = 2;
      goto LABEL_76;
    case 3:
      v8 = "BOOL";
      v9 = 3;
      goto LABEL_76;
    case 4:
      v8 = "double";
      v9 = 4;
      goto LABEL_76;
    case 5:
      v8 = "double";
      v9 = 5;
      goto LABEL_76;
    case 6:
      v8 = "double";
      v9 = 6;
      goto LABEL_76;
    case 7:
      v8 = "double";
      v9 = 7;
      goto LABEL_76;
    case 8:
      v8 = "double";
      v9 = 8;
      goto LABEL_76;
    case 9:
      v8 = "double";
      v9 = 9;
      goto LABEL_76;
    case 10:
      v8 = "double";
      v9 = 10;
      goto LABEL_76;
    case 11:
      v8 = "double";
      v9 = 11;
      goto LABEL_76;
    case 12:
      v8 = "double";
      v9 = 12;
      goto LABEL_76;
    case 13:
      v8 = "double";
      v9 = 13;
      goto LABEL_76;
    case 14:
      v8 = "double";
      v9 = 14;
      goto LABEL_76;
    case 15:
      v8 = "double";
      v9 = 15;
      goto LABEL_76;
    case 16:
      v8 = "double";
      v9 = 16;
      goto LABEL_76;
    case 17:
      v8 = "double";
      v9 = 17;
      goto LABEL_76;
    case 18:
      v8 = "double";
      v9 = 18;
      goto LABEL_76;
    case 19:
      v8 = "double";
      v9 = 19;
      goto LABEL_76;
    case 20:
      v8 = "double";
      v9 = 20;
      goto LABEL_76;
    case 21:
      v8 = "double";
      v9 = 21;
      goto LABEL_76;
    case 22:
      v8 = "double";
      v9 = 22;
      goto LABEL_76;
    case 23:
      v8 = "double";
      v9 = 23;
      goto LABEL_76;
    case 24:
      v8 = "double";
      v9 = 24;
      goto LABEL_76;
    case 25:
      v8 = "double";
      v9 = 25;
      goto LABEL_76;
    case 26:
      v8 = "double";
      v9 = 26;
      goto LABEL_76;
    case 27:
      v8 = "double";
      v9 = 27;
      goto LABEL_76;
    case 28:
      v8 = "double";
      v9 = 28;
      goto LABEL_76;
    case 29:
      v8 = "double";
      v9 = 29;
      goto LABEL_76;
    case 30:
      v8 = "double";
      v9 = 30;
      goto LABEL_76;
    case 31:
      v8 = "double";
      v9 = 31;
      goto LABEL_76;
    case 32:
      v8 = "double";
      v9 = 32;
      goto LABEL_76;
    case 33:
      v8 = "double";
      v9 = 33;
      goto LABEL_76;
    case 34:
      v8 = "double";
      v9 = 34;
      goto LABEL_76;
    case 35:
      v8 = "double";
      v9 = 35;
      goto LABEL_76;
    case 36:
      v8 = "double";
      v9 = 36;
      goto LABEL_76;
    case 37:
      v8 = "double";
      v9 = 37;
      goto LABEL_76;
    case 38:
      v8 = "double";
      v9 = 38;
      goto LABEL_76;
    case 39:
      v8 = "double";
      v9 = 39;
      goto LABEL_76;
    case 40:
      v8 = "double";
      v9 = 40;
      goto LABEL_76;
    case 41:
      v8 = "double";
      v9 = 41;
      goto LABEL_76;
    case 42:
      v8 = "double";
      v9 = 42;
      goto LABEL_76;
    case 43:
      v8 = "double";
      v9 = 43;
      goto LABEL_76;
    case 44:
      v8 = "double";
      v9 = 44;
      goto LABEL_76;
    case 45:
      v8 = "double";
      v9 = 45;
      goto LABEL_76;
    case 46:
      v8 = "double";
      v9 = 46;
      goto LABEL_76;
    case 47:
      v8 = "double";
      v9 = 47;
      goto LABEL_76;
    case 48:
      v8 = "double";
      v9 = 48;
      goto LABEL_76;
    case 49:
      v8 = "double";
      v9 = 49;
      goto LABEL_76;
    case 50:
      v8 = "double";
      v9 = 50;
      goto LABEL_76;
    case 51:
      v8 = "double";
      v9 = 51;
      goto LABEL_76;
    case 52:
      v8 = "double";
      v9 = 52;
      goto LABEL_76;
    case 53:
      v8 = "double";
      v9 = 53;
      goto LABEL_76;
    case 54:
      v8 = "double";
      v9 = 54;
      goto LABEL_76;
    case 55:
      v8 = "double";
      v9 = 55;
      goto LABEL_76;
    case 56:
      v8 = "double";
      v9 = 56;
      goto LABEL_76;
    case 57:
      v8 = "double";
      v9 = 57;
      goto LABEL_76;
    case 58:
      v8 = "double";
      v9 = 58;
      goto LABEL_76;
    case 59:
      v8 = "double";
      v9 = 59;
      goto LABEL_76;
    case 60:
      v8 = "double";
      v9 = 60;
      goto LABEL_76;
    case 61:
      v8 = "double";
      v9 = 61;
      goto LABEL_76;
    case 62:
      v8 = "double";
      v9 = 62;
      goto LABEL_76;
    case 63:
      v8 = "double";
      v9 = 63;
      goto LABEL_76;
    case 64:
      v8 = "double";
      v9 = 64;
      goto LABEL_76;
    case 65:
      v8 = "double";
      v9 = 65;
      goto LABEL_76;
    case 66:
      v8 = "double";
      v9 = 66;
      goto LABEL_76;
    case 67:
      v8 = "double";
      v9 = 67;
      goto LABEL_76;
    case 68:
      v8 = "double";
      v9 = 68;
      goto LABEL_76;
    case 69:
      v8 = "double";
      v9 = 69;
      goto LABEL_76;
    case 70:
      v8 = "double";
      v9 = 70;
      goto LABEL_76;
    case 71:
      v8 = "double";
      v9 = 71;
      goto LABEL_76;
    case 72:
      v8 = "double";
      v9 = 72;
      goto LABEL_76;
    case 73:
      v8 = "double";
      v9 = 73;
LABEL_76:
      throwWrongTypeForParamId(v9, v8, "int", a4, a5, a6, a7, a8);
      break;
    default:
      throwWrongParamIdValue(a2, "int", a3, a4, a5, a6, a7, a8);
      break;
  }

  return 0;
}

double ConfidenceParamSet::getDoubleParameter(double *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 1:
      v8 = 1;
      goto LABEL_145;
    case 2:
      v8 = 2;
      goto LABEL_145;
    case 3:
      v8 = 3;
LABEL_145:
      throwWrongTypeForParamId(v8, "BOOL", "double", a4, a5, a6, a7, a8);
      return 0.0;
    case 4:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[6];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 4;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 4;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 4;
      goto LABEL_498;
    case 5:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[7];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 5;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 5;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 5;
      goto LABEL_498;
    case 6:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[8];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 6;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 6;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 6;
      goto LABEL_498;
    case 7:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[9];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 7;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 7;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 7;
      goto LABEL_498;
    case 8:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[10];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 8;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 8;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 8;
      goto LABEL_498;
    case 9:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[11];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 9;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 9;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 9;
      goto LABEL_498;
    case 10:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[12];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 10;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 10;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 10;
      goto LABEL_498;
    case 11:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[13];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 11;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 11;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 11;
      goto LABEL_498;
    case 12:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[14];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 12;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 12;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 12;
      goto LABEL_498;
    case 13:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[15];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 13;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 13;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 13;
      goto LABEL_498;
    case 14:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[16];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 14;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 14;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 14;
      goto LABEL_498;
    case 15:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[17];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 15;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 15;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 15;
      goto LABEL_498;
    case 16:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[18];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 16;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 16;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 16;
      goto LABEL_498;
    case 17:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[19];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 17;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 17;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 17;
      goto LABEL_498;
    case 18:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[20];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 18;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 18;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 18;
      goto LABEL_498;
    case 19:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[21];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 19;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 19;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 19;
      goto LABEL_498;
    case 20:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[22];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 20;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 20;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 20;
      goto LABEL_498;
    case 21:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[23];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 21;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 21;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 21;
      goto LABEL_498;
    case 22:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[24];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 22;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 22;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 22;
      goto LABEL_498;
    case 23:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[25];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 23;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 23;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 23;
      goto LABEL_498;
    case 24:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[26];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 24;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 24;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 24;
      goto LABEL_498;
    case 25:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[27];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 25;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 25;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 25;
      goto LABEL_498;
    case 26:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[28];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 26;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 26;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 26;
      goto LABEL_498;
    case 27:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[29];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 27;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 27;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 27;
      goto LABEL_498;
    case 28:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[30];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 28;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 28;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 28;
      goto LABEL_498;
    case 29:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[31];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 29;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 29;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 29;
      goto LABEL_498;
    case 30:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[32];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 30;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 30;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 30;
      goto LABEL_498;
    case 31:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[33];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 31;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 31;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 31;
      goto LABEL_498;
    case 32:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[34];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 32;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 32;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 32;
      goto LABEL_498;
    case 33:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[35];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 33;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 33;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 33;
      goto LABEL_498;
    case 34:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[36];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 34;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 34;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 34;
      goto LABEL_498;
    case 35:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[37];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 35;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 35;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 35;
      goto LABEL_498;
    case 36:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[38];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 36;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 36;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 36;
      goto LABEL_498;
    case 37:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[39];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 37;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 37;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 37;
      goto LABEL_498;
    case 38:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[40];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 38;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 38;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 38;
      goto LABEL_498;
    case 39:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[41];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 39;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 39;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 39;
      goto LABEL_498;
    case 40:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[42];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 40;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 40;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 40;
      goto LABEL_498;
    case 41:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[43];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 41;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 41;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 41;
      goto LABEL_498;
    case 42:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[44];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 42;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 42;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 42;
      goto LABEL_498;
    case 43:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[45];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 43;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 43;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 43;
      goto LABEL_498;
    case 44:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[46];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 44;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 44;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 44;
      goto LABEL_498;
    case 45:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[47];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 45;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 45;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 45;
      goto LABEL_498;
    case 46:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[48];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 46;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 46;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 46;
      goto LABEL_498;
    case 47:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[49];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 47;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 47;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 47;
      goto LABEL_498;
    case 48:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[50];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 48;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 48;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 48;
      goto LABEL_498;
    case 49:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[51];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 49;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 49;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 49;
      goto LABEL_498;
    case 50:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[52];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 50;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 50;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 50;
      goto LABEL_498;
    case 51:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[53];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 51;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 51;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 51;
      goto LABEL_498;
    case 52:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[54];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 52;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 52;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 52;
      goto LABEL_498;
    case 53:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[55];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 53;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 53;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 53;
      goto LABEL_498;
    case 54:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[56];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 54;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 54;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 54;
      goto LABEL_498;
    case 55:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[57];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 55;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 55;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 55;
      goto LABEL_498;
    case 56:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[58];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 56;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 56;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 56;
      goto LABEL_498;
    case 57:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[59];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 57;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 57;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 57;
      goto LABEL_498;
    case 58:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[60];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 58;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 58;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 58;
      goto LABEL_498;
    case 59:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[61];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 59;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 59;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 59;
      goto LABEL_498;
    case 60:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[62];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 60;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 60;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 60;
      goto LABEL_498;
    case 61:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[63];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 61;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 61;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 61;
      goto LABEL_498;
    case 62:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[64];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 62;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 62;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 62;
      goto LABEL_498;
    case 63:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[65];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 63;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 63;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 63;
      goto LABEL_498;
    case 64:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[66];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 64;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 64;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 64;
      goto LABEL_498;
    case 65:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[67];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 65;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 65;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 65;
      goto LABEL_498;
    case 66:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[68];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 66;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 66;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 66;
      goto LABEL_498;
    case 67:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[69];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 67;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 67;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 67;
      goto LABEL_498;
    case 68:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[70];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 68;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 68;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 68;
      goto LABEL_498;
    case 69:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[71];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 69;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 69;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 69;
      goto LABEL_498;
    case 70:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[72];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 70;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 70;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 70;
      goto LABEL_498;
    case 71:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[73];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 71;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 71;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 71;
      goto LABEL_498;
    case 72:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[74];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v9 = qword_281051F80;
        v10 = 72;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 72;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 72;
      goto LABEL_498;
    case 73:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[75];
        }

        if (a3 == 1)
        {
          v9 = qword_281051F80;
          v10 = 73;
LABEL_287:
          ParamByParamId = ParamSpecMgr::getParamByParamId(v9, v10, a3, a4, a5, a6, a7, a8);
          v12 = **ParamByParamId;
        }

LABEL_499:
        throwWrongQueryMode(a3, "double", a3, a4, a5, a6, a7, a8);
        return 0.0;
      }

      if (a3 == 2)
      {
        v18 = qword_281051F80;
        v19 = 73;
LABEL_641:
        v20 = ParamSpecMgr::getParamByParamId(v18, v19, a3, a4, a5, a6, a7, a8);
        v21 = **v20;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v14 = qword_281051F80;
      v15 = 73;
LABEL_498:
      v16 = ParamSpecMgr::getParamByParamId(v14, v15, a3, a4, a5, a6, a7, a8);
      v17 = **v16;
    default:
      throwWrongParamIdValue(a2, "double", a3, a4, a5, a6, a7, a8);
      return 0.0;
  }
}

uint64_t ConfidenceParamSet::getStringParameter(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 1:
      v8 = "BOOL";
      v9 = 1;
      goto LABEL_76;
    case 2:
      v8 = "BOOL";
      v9 = 2;
      goto LABEL_76;
    case 3:
      v8 = "BOOL";
      v9 = 3;
      goto LABEL_76;
    case 4:
      v8 = "double";
      v9 = 4;
      goto LABEL_76;
    case 5:
      v8 = "double";
      v9 = 5;
      goto LABEL_76;
    case 6:
      v8 = "double";
      v9 = 6;
      goto LABEL_76;
    case 7:
      v8 = "double";
      v9 = 7;
      goto LABEL_76;
    case 8:
      v8 = "double";
      v9 = 8;
      goto LABEL_76;
    case 9:
      v8 = "double";
      v9 = 9;
      goto LABEL_76;
    case 10:
      v8 = "double";
      v9 = 10;
      goto LABEL_76;
    case 11:
      v8 = "double";
      v9 = 11;
      goto LABEL_76;
    case 12:
      v8 = "double";
      v9 = 12;
      goto LABEL_76;
    case 13:
      v8 = "double";
      v9 = 13;
      goto LABEL_76;
    case 14:
      v8 = "double";
      v9 = 14;
      goto LABEL_76;
    case 15:
      v8 = "double";
      v9 = 15;
      goto LABEL_76;
    case 16:
      v8 = "double";
      v9 = 16;
      goto LABEL_76;
    case 17:
      v8 = "double";
      v9 = 17;
      goto LABEL_76;
    case 18:
      v8 = "double";
      v9 = 18;
      goto LABEL_76;
    case 19:
      v8 = "double";
      v9 = 19;
      goto LABEL_76;
    case 20:
      v8 = "double";
      v9 = 20;
      goto LABEL_76;
    case 21:
      v8 = "double";
      v9 = 21;
      goto LABEL_76;
    case 22:
      v8 = "double";
      v9 = 22;
      goto LABEL_76;
    case 23:
      v8 = "double";
      v9 = 23;
      goto LABEL_76;
    case 24:
      v8 = "double";
      v9 = 24;
      goto LABEL_76;
    case 25:
      v8 = "double";
      v9 = 25;
      goto LABEL_76;
    case 26:
      v8 = "double";
      v9 = 26;
      goto LABEL_76;
    case 27:
      v8 = "double";
      v9 = 27;
      goto LABEL_76;
    case 28:
      v8 = "double";
      v9 = 28;
      goto LABEL_76;
    case 29:
      v8 = "double";
      v9 = 29;
      goto LABEL_76;
    case 30:
      v8 = "double";
      v9 = 30;
      goto LABEL_76;
    case 31:
      v8 = "double";
      v9 = 31;
      goto LABEL_76;
    case 32:
      v8 = "double";
      v9 = 32;
      goto LABEL_76;
    case 33:
      v8 = "double";
      v9 = 33;
      goto LABEL_76;
    case 34:
      v8 = "double";
      v9 = 34;
      goto LABEL_76;
    case 35:
      v8 = "double";
      v9 = 35;
      goto LABEL_76;
    case 36:
      v8 = "double";
      v9 = 36;
      goto LABEL_76;
    case 37:
      v8 = "double";
      v9 = 37;
      goto LABEL_76;
    case 38:
      v8 = "double";
      v9 = 38;
      goto LABEL_76;
    case 39:
      v8 = "double";
      v9 = 39;
      goto LABEL_76;
    case 40:
      v8 = "double";
      v9 = 40;
      goto LABEL_76;
    case 41:
      v8 = "double";
      v9 = 41;
      goto LABEL_76;
    case 42:
      v8 = "double";
      v9 = 42;
      goto LABEL_76;
    case 43:
      v8 = "double";
      v9 = 43;
      goto LABEL_76;
    case 44:
      v8 = "double";
      v9 = 44;
      goto LABEL_76;
    case 45:
      v8 = "double";
      v9 = 45;
      goto LABEL_76;
    case 46:
      v8 = "double";
      v9 = 46;
      goto LABEL_76;
    case 47:
      v8 = "double";
      v9 = 47;
      goto LABEL_76;
    case 48:
      v8 = "double";
      v9 = 48;
      goto LABEL_76;
    case 49:
      v8 = "double";
      v9 = 49;
      goto LABEL_76;
    case 50:
      v8 = "double";
      v9 = 50;
      goto LABEL_76;
    case 51:
      v8 = "double";
      v9 = 51;
      goto LABEL_76;
    case 52:
      v8 = "double";
      v9 = 52;
      goto LABEL_76;
    case 53:
      v8 = "double";
      v9 = 53;
      goto LABEL_76;
    case 54:
      v8 = "double";
      v9 = 54;
      goto LABEL_76;
    case 55:
      v8 = "double";
      v9 = 55;
      goto LABEL_76;
    case 56:
      v8 = "double";
      v9 = 56;
      goto LABEL_76;
    case 57:
      v8 = "double";
      v9 = 57;
      goto LABEL_76;
    case 58:
      v8 = "double";
      v9 = 58;
      goto LABEL_76;
    case 59:
      v8 = "double";
      v9 = 59;
      goto LABEL_76;
    case 60:
      v8 = "double";
      v9 = 60;
      goto LABEL_76;
    case 61:
      v8 = "double";
      v9 = 61;
      goto LABEL_76;
    case 62:
      v8 = "double";
      v9 = 62;
      goto LABEL_76;
    case 63:
      v8 = "double";
      v9 = 63;
      goto LABEL_76;
    case 64:
      v8 = "double";
      v9 = 64;
      goto LABEL_76;
    case 65:
      v8 = "double";
      v9 = 65;
      goto LABEL_76;
    case 66:
      v8 = "double";
      v9 = 66;
      goto LABEL_76;
    case 67:
      v8 = "double";
      v9 = 67;
      goto LABEL_76;
    case 68:
      v8 = "double";
      v9 = 68;
      goto LABEL_76;
    case 69:
      v8 = "double";
      v9 = 69;
      goto LABEL_76;
    case 70:
      v8 = "double";
      v9 = 70;
      goto LABEL_76;
    case 71:
      v8 = "double";
      v9 = 71;
      goto LABEL_76;
    case 72:
      v8 = "double";
      v9 = 72;
      goto LABEL_76;
    case 73:
      v8 = "double";
      v9 = 73;
LABEL_76:
      throwWrongTypeForParamId(v9, v8, "string", a4, a5, a6, a7, a8);
      break;
    default:
      throwWrongParamIdValue(a2, "string", a3, a4, a5, a6, a7, a8);
      break;
  }

  return 0;
}

uint64_t ConfidenceParamSet::getEnumParameter(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 1:
      v8 = "BOOL";
      v9 = 1;
      goto LABEL_77;
    case 2:
      v8 = "BOOL";
      v9 = 2;
      goto LABEL_77;
    case 3:
      v8 = "BOOL";
      v9 = 3;
      goto LABEL_77;
    case 4:
      v8 = "double";
      v9 = 4;
      goto LABEL_77;
    case 5:
      v8 = "double";
      v9 = 5;
      goto LABEL_77;
    case 6:
      v8 = "double";
      v9 = 6;
      goto LABEL_77;
    case 7:
      v8 = "double";
      v9 = 7;
      goto LABEL_77;
    case 8:
      v8 = "double";
      v9 = 8;
      goto LABEL_77;
    case 9:
      v8 = "double";
      v9 = 9;
      goto LABEL_77;
    case 10:
      v8 = "double";
      v9 = 10;
      goto LABEL_77;
    case 11:
      v8 = "double";
      v9 = 11;
      goto LABEL_77;
    case 12:
      v8 = "double";
      v9 = 12;
      goto LABEL_77;
    case 13:
      v8 = "double";
      v9 = 13;
      goto LABEL_77;
    case 14:
      v8 = "double";
      v9 = 14;
      goto LABEL_77;
    case 15:
      v8 = "double";
      v9 = 15;
      goto LABEL_77;
    case 16:
      v8 = "double";
      v9 = 16;
      goto LABEL_77;
    case 17:
      v8 = "double";
      v9 = 17;
      goto LABEL_77;
    case 18:
      v8 = "double";
      v9 = 18;
      goto LABEL_77;
    case 19:
      v8 = "double";
      v9 = 19;
      goto LABEL_77;
    case 20:
      v8 = "double";
      v9 = 20;
      goto LABEL_77;
    case 21:
      v8 = "double";
      v9 = 21;
      goto LABEL_77;
    case 22:
      v8 = "double";
      v9 = 22;
      goto LABEL_77;
    case 23:
      v8 = "double";
      v9 = 23;
      goto LABEL_77;
    case 24:
      v8 = "double";
      v9 = 24;
      goto LABEL_77;
    case 25:
      v8 = "double";
      v9 = 25;
      goto LABEL_77;
    case 26:
      v8 = "double";
      v9 = 26;
      goto LABEL_77;
    case 27:
      v8 = "double";
      v9 = 27;
      goto LABEL_77;
    case 28:
      v8 = "double";
      v9 = 28;
      goto LABEL_77;
    case 29:
      v8 = "double";
      v9 = 29;
      goto LABEL_77;
    case 30:
      v8 = "double";
      v9 = 30;
      goto LABEL_77;
    case 31:
      v8 = "double";
      v9 = 31;
      goto LABEL_77;
    case 32:
      v8 = "double";
      v9 = 32;
      goto LABEL_77;
    case 33:
      v8 = "double";
      v9 = 33;
      goto LABEL_77;
    case 34:
      v8 = "double";
      v9 = 34;
      goto LABEL_77;
    case 35:
      v8 = "double";
      v9 = 35;
      goto LABEL_77;
    case 36:
      v8 = "double";
      v9 = 36;
      goto LABEL_77;
    case 37:
      v8 = "double";
      v9 = 37;
      goto LABEL_77;
    case 38:
      v8 = "double";
      v9 = 38;
      goto LABEL_77;
    case 39:
      v8 = "double";
      v9 = 39;
      goto LABEL_77;
    case 40:
      v8 = "double";
      v9 = 40;
      goto LABEL_77;
    case 41:
      v8 = "double";
      v9 = 41;
      goto LABEL_77;
    case 42:
      v8 = "double";
      v9 = 42;
      goto LABEL_77;
    case 43:
      v8 = "double";
      v9 = 43;
      goto LABEL_77;
    case 44:
      v8 = "double";
      v9 = 44;
      goto LABEL_77;
    case 45:
      v8 = "double";
      v9 = 45;
      goto LABEL_77;
    case 46:
      v8 = "double";
      v9 = 46;
      goto LABEL_77;
    case 47:
      v8 = "double";
      v9 = 47;
      goto LABEL_77;
    case 48:
      v8 = "double";
      v9 = 48;
      goto LABEL_77;
    case 49:
      v8 = "double";
      v9 = 49;
      goto LABEL_77;
    case 50:
      v8 = "double";
      v9 = 50;
      goto LABEL_77;
    case 51:
      v8 = "double";
      v9 = 51;
      goto LABEL_77;
    case 52:
      v8 = "double";
      v9 = 52;
      goto LABEL_77;
    case 53:
      v8 = "double";
      v9 = 53;
      goto LABEL_77;
    case 54:
      v8 = "double";
      v9 = 54;
      goto LABEL_77;
    case 55:
      v8 = "double";
      v9 = 55;
      goto LABEL_77;
    case 56:
      v8 = "double";
      v9 = 56;
      goto LABEL_77;
    case 57:
      v8 = "double";
      v9 = 57;
      goto LABEL_77;
    case 58:
      v8 = "double";
      v9 = 58;
      goto LABEL_77;
    case 59:
      v8 = "double";
      v9 = 59;
      goto LABEL_77;
    case 60:
      v8 = "double";
      v9 = 60;
      goto LABEL_77;
    case 61:
      v8 = "double";
      v9 = 61;
      goto LABEL_77;
    case 62:
      v8 = "double";
      v9 = 62;
      goto LABEL_77;
    case 63:
      v8 = "double";
      v9 = 63;
      goto LABEL_77;
    case 64:
      v8 = "double";
      v9 = 64;
      goto LABEL_77;
    case 65:
      v8 = "double";
      v9 = 65;
      goto LABEL_77;
    case 66:
      v8 = "double";
      v9 = 66;
      goto LABEL_77;
    case 67:
      v8 = "double";
      v9 = 67;
      goto LABEL_77;
    case 68:
      v8 = "double";
      v9 = 68;
      goto LABEL_77;
    case 69:
      v8 = "double";
      v9 = 69;
      goto LABEL_77;
    case 70:
      v8 = "double";
      v9 = 70;
      goto LABEL_77;
    case 71:
      v8 = "double";
      v9 = 71;
      goto LABEL_77;
    case 72:
      v8 = "double";
      v9 = 72;
      goto LABEL_77;
    case 73:
      v8 = "double";
      v9 = 73;
LABEL_77:
      throwWrongTypeForParamId(v9, v8, "BOOL", a4, a5, a6, a7, a8);
      break;
    default:
      throwWrongParamIdValue(a2, "enum", a3, a4, a5, a6, a7, a8);
      break;
  }

  return 0;
}

void ConfidenceParamSet::setBoolParameter(ConfidenceParamSet *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  switch(a2)
  {
    case 1:
      if (*(this + 9))
      {
        v9 = "ConfidenceEnableWordLevel";
        goto LABEL_8;
      }

      *(this + 40) = a3;
      return;
    case 2:
      if (*(this + 9))
      {
        v9 = "ConfidenceEnableUttLevel";
        goto LABEL_8;
      }

      *(this + 41) = a3;
      return;
    case 3:
      if (*(this + 9))
      {
        v9 = "ConfidenceEnableForAllNBest";
LABEL_8:

        throwParamSetSetFailed(v9, "BOOL", a3, a4, a5, a6, a7, a8);
      }

      else
      {
        *(this + 42) = a3;
      }

      return;
    case 4:
      throwWrongTypeForParamId(4, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_12;
    case 5:
LABEL_12:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_13;
    case 6:
LABEL_13:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_14;
    case 7:
LABEL_14:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_15;
    case 8:
LABEL_15:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_16;
    case 9:
LABEL_16:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_17;
    case 10:
LABEL_17:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_18;
    case 11:
LABEL_18:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_19;
    case 12:
LABEL_19:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_20;
    case 13:
LABEL_20:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_21;
    case 14:
LABEL_21:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_22;
    case 15:
LABEL_22:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_23;
    case 16:
LABEL_23:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_24;
    case 17:
LABEL_24:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_25;
    case 18:
LABEL_25:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_26;
    case 19:
LABEL_26:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_27;
    case 20:
LABEL_27:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_28;
    case 21:
LABEL_28:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_29;
    case 22:
LABEL_29:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_30;
    case 23:
LABEL_30:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_31;
    case 24:
LABEL_31:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_32;
    case 25:
LABEL_32:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_33;
    case 26:
LABEL_33:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_34;
    case 27:
LABEL_34:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_35;
    case 28:
LABEL_35:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_36;
    case 29:
LABEL_36:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_37;
    case 30:
LABEL_37:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_38;
    case 31:
LABEL_38:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_39;
    case 32:
LABEL_39:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_40;
    case 33:
LABEL_40:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_41;
    case 34:
LABEL_41:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_42;
    case 35:
LABEL_42:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_43;
    case 36:
LABEL_43:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_44;
    case 37:
LABEL_44:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_45;
    case 38:
LABEL_45:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_46;
    case 39:
LABEL_46:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_47;
    case 40:
LABEL_47:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_48;
    case 41:
LABEL_48:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_49;
    case 42:
LABEL_49:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_50;
    case 43:
LABEL_50:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_51;
    case 44:
LABEL_51:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_52;
    case 45:
LABEL_52:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_53;
    case 46:
LABEL_53:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_54;
    case 47:
LABEL_54:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_55;
    case 48:
LABEL_55:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_56;
    case 49:
LABEL_56:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_57;
    case 50:
LABEL_57:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_58;
    case 51:
LABEL_58:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_59;
    case 52:
LABEL_59:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_60;
    case 53:
LABEL_60:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_61;
    case 54:
LABEL_61:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_62;
    case 55:
LABEL_62:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_63;
    case 56:
LABEL_63:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_64;
    case 57:
LABEL_64:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_65;
    case 58:
LABEL_65:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_66;
    case 59:
LABEL_66:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_67;
    case 60:
LABEL_67:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_68;
    case 61:
LABEL_68:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_69;
    case 62:
LABEL_69:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_70;
    case 63:
LABEL_70:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_71;
    case 64:
LABEL_71:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_72;
    case 65:
LABEL_72:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_73;
    case 66:
LABEL_73:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_74;
    case 67:
LABEL_74:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_75;
    case 68:
LABEL_75:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_76;
    case 69:
LABEL_76:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_77;
    case 70:
LABEL_77:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_78;
    case 71:
LABEL_78:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_79;
    case 72:
LABEL_79:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_80;
    case 73:
LABEL_80:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      break;
    default:
      break;
  }

  throwWrongParamIdValue(v8, "BOOL", a3, a4, a5, a6, a7, a8);
}

void ConfidenceParamSet::setIntParameter(ConfidenceParamSet *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  switch(a2)
  {
    case 1:
      throwWrongTypeForParamId(1, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_3;
    case 2:
LABEL_3:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_4;
    case 3:
LABEL_4:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_5;
    case 4:
LABEL_5:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_6;
    case 5:
LABEL_6:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_7;
    case 6:
LABEL_7:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_8;
    case 7:
LABEL_8:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_9;
    case 8:
LABEL_9:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_10;
    case 9:
LABEL_10:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_11;
    case 10:
LABEL_11:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_12;
    case 11:
LABEL_12:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_13;
    case 12:
LABEL_13:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_14;
    case 13:
LABEL_14:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_15;
    case 14:
LABEL_15:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_16;
    case 15:
LABEL_16:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_17;
    case 16:
LABEL_17:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_18;
    case 17:
LABEL_18:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_19;
    case 18:
LABEL_19:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_20;
    case 19:
LABEL_20:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_21;
    case 20:
LABEL_21:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_22;
    case 21:
LABEL_22:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_23;
    case 22:
LABEL_23:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_24;
    case 23:
LABEL_24:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_25;
    case 24:
LABEL_25:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_26;
    case 25:
LABEL_26:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_27;
    case 26:
LABEL_27:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_28;
    case 27:
LABEL_28:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_29;
    case 28:
LABEL_29:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_30;
    case 29:
LABEL_30:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_31;
    case 30:
LABEL_31:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_32;
    case 31:
LABEL_32:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_33;
    case 32:
LABEL_33:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_34;
    case 33:
LABEL_34:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_35;
    case 34:
LABEL_35:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_36;
    case 35:
LABEL_36:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_37;
    case 36:
LABEL_37:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_38;
    case 37:
LABEL_38:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_39;
    case 38:
LABEL_39:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_40;
    case 39:
LABEL_40:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_41;
    case 40:
LABEL_41:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_42;
    case 41:
LABEL_42:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_43;
    case 42:
LABEL_43:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_44;
    case 43:
LABEL_44:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_45;
    case 44:
LABEL_45:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_46;
    case 45:
LABEL_46:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_47;
    case 46:
LABEL_47:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_48;
    case 47:
LABEL_48:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_49;
    case 48:
LABEL_49:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_50;
    case 49:
LABEL_50:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_51;
    case 50:
LABEL_51:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_52;
    case 51:
LABEL_52:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_53;
    case 52:
LABEL_53:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_54;
    case 53:
LABEL_54:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_55;
    case 54:
LABEL_55:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_56;
    case 55:
LABEL_56:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_57;
    case 56:
LABEL_57:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_58;
    case 57:
LABEL_58:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_59;
    case 58:
LABEL_59:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_60;
    case 59:
LABEL_60:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_61;
    case 60:
LABEL_61:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_62;
    case 61:
LABEL_62:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_63;
    case 62:
LABEL_63:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_64;
    case 63:
LABEL_64:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_65;
    case 64:
LABEL_65:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_66;
    case 65:
LABEL_66:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_67;
    case 66:
LABEL_67:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_68;
    case 67:
LABEL_68:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_69;
    case 68:
LABEL_69:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_70;
    case 69:
LABEL_70:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_71;
    case 70:
LABEL_71:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_72;
    case 71:
LABEL_72:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_73;
    case 72:
LABEL_73:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_74;
    case 73:
LABEL_74:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      break;
    default:
      break;
  }

  throwWrongParamIdValue(v8, "int", a3, a4, a5, a6, a7, a8);
}

void ConfidenceParamSet::setDoubleParameter(ConfidenceParamSet *this, int a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a2;
  switch(a2)
  {
    case 1:
      throwWrongTypeForParamId(1, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_3;
    case 2:
LABEL_3:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_4;
    case 3:
LABEL_4:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_5;
    case 4:
LABEL_5:
      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051F80, 4, a4, a5, a6, a7, a8, a9);
      if (ParamByParamId)
      {
        v18 = **ParamByParamId;
      }

      DoubleParamSpec::validateValue(ParamByParamId, a3, 0, 0, v13, v14, v15, v16, v17);
      if (*(this + 9))
      {
        v25 = "ConfidenceUttNBestHighThresh";
        goto LABEL_289;
      }

      *(this + 6) = a3;
      return;
    case 5:
      v187 = ParamSpecMgr::getParamByParamId(qword_281051F80, 5, a4, a5, a6, a7, a8, a9);
      if (v187)
      {
        v193 = **v187;
      }

      DoubleParamSpec::validateValue(v187, a3, 0, 0, v188, v189, v190, v191, v192);
      if (*(this + 9))
      {
        v25 = "ConfidenceUttNBestLowThresh";
        goto LABEL_289;
      }

      *(this + 7) = a3;
      return;
    case 6:
      v299 = ParamSpecMgr::getParamByParamId(qword_281051F80, 6, a4, a5, a6, a7, a8, a9);
      if (v299)
      {
        v305 = **v299;
      }

      DoubleParamSpec::validateValue(v299, a3, 0, 0, v300, v301, v302, v303, v304);
      if (*(this + 9))
      {
        v25 = "ConfidenceUttProbAverageActiveNodeCountFactor";
        goto LABEL_289;
      }

      *(this + 8) = a3;
      return;
    case 7:
      v334 = ParamSpecMgr::getParamByParamId(qword_281051F80, 7, a4, a5, a6, a7, a8, a9);
      if (v334)
      {
        v340 = **v334;
      }

      DoubleParamSpec::validateValue(v334, a3, 0, 0, v335, v336, v337, v338, v339);
      if (*(this + 9))
      {
        v25 = "ConfidenceUttProbAverageDurationFactor";
        goto LABEL_289;
      }

      *(this + 9) = a3;
      return;
    case 8:
      v257 = ParamSpecMgr::getParamByParamId(qword_281051F80, 8, a4, a5, a6, a7, a8, a9);
      if (v257)
      {
        v263 = **v257;
      }

      DoubleParamSpec::validateValue(v257, a3, 0, 0, v258, v259, v260, v261, v262);
      if (*(this + 9))
      {
        v25 = "ConfidenceUttProbAverageLMScoreFactor";
        goto LABEL_289;
      }

      *(this + 10) = a3;
      return;
    case 9:
      v355 = ParamSpecMgr::getParamByParamId(qword_281051F80, 9, a4, a5, a6, a7, a8, a9);
      if (v355)
      {
        v361 = **v355;
      }

      DoubleParamSpec::validateValue(v355, a3, 0, 0, v356, v357, v358, v359, v360);
      if (*(this + 9))
      {
        v25 = "ConfidenceUttProbConstantTerm";
        goto LABEL_289;
      }

      *(this + 11) = a3;
      return;
    case 10:
      v222 = ParamSpecMgr::getParamByParamId(qword_281051F80, 10, a4, a5, a6, a7, a8, a9);
      if (v222)
      {
        v228 = **v222;
      }

      DoubleParamSpec::validateValue(v222, a3, 0, 0, v223, v224, v225, v226, v227);
      if (*(this + 9))
      {
        v25 = "ConfidenceUttProbLogWordCountFactor";
        goto LABEL_289;
      }

      *(this + 12) = a3;
      return;
    case 11:
      v348 = ParamSpecMgr::getParamByParamId(qword_281051F80, 11, a4, a5, a6, a7, a8, a9);
      if (v348)
      {
        v354 = **v348;
      }

      DoubleParamSpec::validateValue(v348, a3, 0, 0, v349, v350, v351, v352, v353);
      if (*(this + 9))
      {
        v25 = "ConfidenceUttProbMaxWordsEndingFactor";
        goto LABEL_289;
      }

      *(this + 13) = a3;
      return;
    case 12:
      v173 = ParamSpecMgr::getParamByParamId(qword_281051F80, 12, a4, a5, a6, a7, a8, a9);
      if (v173)
      {
        v179 = **v173;
      }

      DoubleParamSpec::validateValue(v173, a3, 0, 0, v174, v175, v176, v177, v178);
      if (*(this + 9))
      {
        v25 = "ConfidenceUttProbNBestHighCountFactor";
        goto LABEL_289;
      }

      *(this + 14) = a3;
      return;
    case 13:
      v215 = ParamSpecMgr::getParamByParamId(qword_281051F80, 13, a4, a5, a6, a7, a8, a9);
      if (v215)
      {
        v221 = **v215;
      }

      DoubleParamSpec::validateValue(v215, a3, 0, 0, v216, v217, v218, v219, v220);
      if (*(this + 9))
      {
        v25 = "ConfidenceUttProbNBestLowCountFactor";
        goto LABEL_289;
      }

      *(this + 15) = a3;
      return;
    case 14:
      v327 = ParamSpecMgr::getParamByParamId(qword_281051F80, 14, a4, a5, a6, a7, a8, a9);
      if (v327)
      {
        v333 = **v327;
      }

      DoubleParamSpec::validateValue(v327, a3, 0, 0, v328, v329, v330, v331, v332);
      if (*(this + 9))
      {
        v25 = "ConfidenceUttProbNBestMaxFactor";
        goto LABEL_289;
      }

      *(this + 16) = a3;
      return;
    case 15:
      v145 = ParamSpecMgr::getParamByParamId(qword_281051F80, 15, a4, a5, a6, a7, a8, a9);
      if (v145)
      {
        v151 = **v145;
      }

      DoubleParamSpec::validateValue(v145, a3, 0, 0, v146, v147, v148, v149, v150);
      if (*(this + 9))
      {
        v25 = "ConfidenceUttProbNBestMinFactor";
        goto LABEL_289;
      }

      *(this + 17) = a3;
      return;
    case 16:
      v243 = ParamSpecMgr::getParamByParamId(qword_281051F80, 16, a4, a5, a6, a7, a8, a9);
      if (v243)
      {
        v249 = **v243;
      }

      DoubleParamSpec::validateValue(v243, a3, 0, 0, v244, v245, v246, v247, v248);
      if (*(this + 9))
      {
        v25 = "ConfidenceUttProbNBestWordAverageFactor";
        goto LABEL_289;
      }

      *(this + 18) = a3;
      return;
    case 17:
      v124 = ParamSpecMgr::getParamByParamId(qword_281051F80, 17, a4, a5, a6, a7, a8, a9);
      if (v124)
      {
        v130 = **v124;
      }

      DoubleParamSpec::validateValue(v124, a3, 0, 0, v125, v126, v127, v128, v129);
      if (*(this + 9))
      {
        v25 = "ConfidenceUttProbTotalLMScoreFactor";
        goto LABEL_289;
      }

      *(this + 19) = a3;
      return;
    case 18:
      v271 = ParamSpecMgr::getParamByParamId(qword_281051F80, 18, a4, a5, a6, a7, a8, a9);
      if (v271)
      {
        v277 = **v271;
      }

      DoubleParamSpec::validateValue(v271, a3, 0, 0, v272, v273, v274, v275, v276);
      if (*(this + 9))
      {
        v25 = "ConfidenceUttProbUttAverageAMinusBScoreFactor";
        goto LABEL_289;
      }

      *(this + 20) = a3;
      return;
    case 19:
      v341 = ParamSpecMgr::getParamByParamId(qword_281051F80, 19, a4, a5, a6, a7, a8, a9);
      if (v341)
      {
        v347 = **v341;
      }

      DoubleParamSpec::validateValue(v341, a3, 0, 0, v342, v343, v344, v345, v346);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbAcousticScoreFactor";
        goto LABEL_289;
      }

      *(this + 21) = a3;
      return;
    case 20:
      v397 = ParamSpecMgr::getParamByParamId(qword_281051F80, 20, a4, a5, a6, a7, a8, a9);
      if (v397)
      {
        v403 = **v397;
      }

      DoubleParamSpec::validateValue(v397, a3, 0, 0, v398, v399, v400, v401, v402);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbAcousticScoreLCntx1Factor";
        goto LABEL_289;
      }

      *(this + 22) = a3;
      return;
    case 21:
      v285 = ParamSpecMgr::getParamByParamId(qword_281051F80, 21, a4, a5, a6, a7, a8, a9);
      if (v285)
      {
        v291 = **v285;
      }

      DoubleParamSpec::validateValue(v285, a3, 0, 0, v286, v287, v288, v289, v290);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbAcousticScoreLCntx2Factor";
        goto LABEL_289;
      }

      *(this + 23) = a3;
      return;
    case 22:
      v320 = ParamSpecMgr::getParamByParamId(qword_281051F80, 22, a4, a5, a6, a7, a8, a9);
      if (v320)
      {
        v326 = **v320;
      }

      DoubleParamSpec::validateValue(v320, a3, 0, 0, v321, v322, v323, v324, v325);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbAcousticScoreRCntx1Factor";
        goto LABEL_289;
      }

      *(this + 24) = a3;
      return;
    case 23:
      v383 = ParamSpecMgr::getParamByParamId(qword_281051F80, 23, a4, a5, a6, a7, a8, a9);
      if (v383)
      {
        v389 = **v383;
      }

      DoubleParamSpec::validateValue(v383, a3, 0, 0, v384, v385, v386, v387, v388);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbAcousticScoreRCntx2Factor";
        goto LABEL_289;
      }

      *(this + 25) = a3;
      return;
    case 24:
      v425 = ParamSpecMgr::getParamByParamId(qword_281051F80, 24, a4, a5, a6, a7, a8, a9);
      if (v425)
      {
        v431 = **v425;
      }

      DoubleParamSpec::validateValue(v425, a3, 0, 0, v426, v427, v428, v429, v430);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbAverageAMinusBScoreFactor";
        goto LABEL_289;
      }

      *(this + 26) = a3;
      return;
    case 25:
      v236 = ParamSpecMgr::getParamByParamId(qword_281051F80, 25, a4, a5, a6, a7, a8, a9);
      if (v236)
      {
        v242 = **v236;
      }

      DoubleParamSpec::validateValue(v236, a3, 0, 0, v237, v238, v239, v240, v241);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbAverageAMinusBScoreLCntx1Factor";
        goto LABEL_289;
      }

      *(this + 27) = a3;
      return;
    case 26:
      v229 = ParamSpecMgr::getParamByParamId(qword_281051F80, 26, a4, a5, a6, a7, a8, a9);
      if (v229)
      {
        v235 = **v229;
      }

      DoubleParamSpec::validateValue(v229, a3, 0, 0, v230, v231, v232, v233, v234);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbAverageAMinusBScoreLCntx2Factor";
        goto LABEL_289;
      }

      *(this + 28) = a3;
      return;
    case 27:
      v453 = ParamSpecMgr::getParamByParamId(qword_281051F80, 27, a4, a5, a6, a7, a8, a9);
      if (v453)
      {
        v459 = **v453;
      }

      DoubleParamSpec::validateValue(v453, a3, 0, 0, v454, v455, v456, v457, v458);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbAverageAMinusBScoreRCntx1Factor";
        goto LABEL_289;
      }

      *(this + 29) = a3;
      return;
    case 28:
      v110 = ParamSpecMgr::getParamByParamId(qword_281051F80, 28, a4, a5, a6, a7, a8, a9);
      if (v110)
      {
        v116 = **v110;
      }

      DoubleParamSpec::validateValue(v110, a3, 0, 0, v111, v112, v113, v114, v115);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbAverageAMinusBScoreRCntx2Factor";
        goto LABEL_289;
      }

      *(this + 30) = a3;
      return;
    case 29:
      v432 = ParamSpecMgr::getParamByParamId(qword_281051F80, 29, a4, a5, a6, a7, a8, a9);
      if (v432)
      {
        v438 = **v432;
      }

      DoubleParamSpec::validateValue(v432, a3, 0, 0, v433, v434, v435, v436, v437);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbAverageAcousticScoreFactor";
        goto LABEL_289;
      }

      *(this + 31) = a3;
      return;
    case 30:
      v439 = ParamSpecMgr::getParamByParamId(qword_281051F80, 30, a4, a5, a6, a7, a8, a9);
      if (v439)
      {
        v445 = **v439;
      }

      DoubleParamSpec::validateValue(v439, a3, 0, 0, v440, v441, v442, v443, v444);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbAverageAcousticScoreLCntx1Factor";
        goto LABEL_289;
      }

      *(this + 32) = a3;
      return;
    case 31:
      v362 = ParamSpecMgr::getParamByParamId(qword_281051F80, 31, a4, a5, a6, a7, a8, a9);
      if (v362)
      {
        v368 = **v362;
      }

      DoubleParamSpec::validateValue(v362, a3, 0, 0, v363, v364, v365, v366, v367);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbAverageAcousticScoreLCntx2Factor";
        goto LABEL_289;
      }

      *(this + 33) = a3;
      return;
    case 32:
      v264 = ParamSpecMgr::getParamByParamId(qword_281051F80, 32, a4, a5, a6, a7, a8, a9);
      if (v264)
      {
        v270 = **v264;
      }

      DoubleParamSpec::validateValue(v264, a3, 0, 0, v265, v266, v267, v268, v269);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbAverageAcousticScoreRCntx1Factor";
        goto LABEL_289;
      }

      *(this + 34) = a3;
      return;
    case 33:
      v369 = ParamSpecMgr::getParamByParamId(qword_281051F80, 33, a4, a5, a6, a7, a8, a9);
      if (v369)
      {
        v375 = **v369;
      }

      DoubleParamSpec::validateValue(v369, a3, 0, 0, v370, v371, v372, v373, v374);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbAverageAcousticScoreRCntx2Factor";
        goto LABEL_289;
      }

      *(this + 35) = a3;
      return;
    case 34:
      v152 = ParamSpecMgr::getParamByParamId(qword_281051F80, 34, a4, a5, a6, a7, a8, a9);
      if (v152)
      {
        v158 = **v152;
      }

      DoubleParamSpec::validateValue(v152, a3, 0, 0, v153, v154, v155, v156, v157);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbAverageActiveNodeCountFactor";
        goto LABEL_289;
      }

      *(this + 36) = a3;
      return;
    case 35:
      v117 = ParamSpecMgr::getParamByParamId(qword_281051F80, 35, a4, a5, a6, a7, a8, a9);
      if (v117)
      {
        v123 = **v117;
      }

      DoubleParamSpec::validateValue(v117, a3, 0, 0, v118, v119, v120, v121, v122);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbAverageActiveNodeCountLCntx1Factor";
        goto LABEL_289;
      }

      *(this + 37) = a3;
      return;
    case 36:
      v89 = ParamSpecMgr::getParamByParamId(qword_281051F80, 36, a4, a5, a6, a7, a8, a9);
      if (v89)
      {
        v95 = **v89;
      }

      DoubleParamSpec::validateValue(v89, a3, 0, 0, v90, v91, v92, v93, v94);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbAverageActiveNodeCountLCntx2Factor";
        goto LABEL_289;
      }

      *(this + 38) = a3;
      return;
    case 37:
      v96 = ParamSpecMgr::getParamByParamId(qword_281051F80, 37, a4, a5, a6, a7, a8, a9);
      if (v96)
      {
        v102 = **v96;
      }

      DoubleParamSpec::validateValue(v96, a3, 0, 0, v97, v98, v99, v100, v101);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbAverageActiveNodeCountRCntx1Factor";
        goto LABEL_289;
      }

      *(this + 39) = a3;
      return;
    case 38:
      v61 = ParamSpecMgr::getParamByParamId(qword_281051F80, 38, a4, a5, a6, a7, a8, a9);
      if (v61)
      {
        v67 = **v61;
      }

      DoubleParamSpec::validateValue(v61, a3, 0, 0, v62, v63, v64, v65, v66);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbAverageActiveNodeCountRCntx2Factor";
        goto LABEL_289;
      }

      *(this + 40) = a3;
      return;
    case 39:
      v446 = ParamSpecMgr::getParamByParamId(qword_281051F80, 39, a4, a5, a6, a7, a8, a9);
      if (v446)
      {
        v452 = **v446;
      }

      DoubleParamSpec::validateValue(v446, a3, 0, 0, v447, v448, v449, v450, v451);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbAverageBestScoreFactor";
        goto LABEL_289;
      }

      *(this + 41) = a3;
      return;
    case 40:
      v390 = ParamSpecMgr::getParamByParamId(qword_281051F80, 40, a4, a5, a6, a7, a8, a9);
      if (v390)
      {
        v396 = **v390;
      }

      DoubleParamSpec::validateValue(v390, a3, 0, 0, v391, v392, v393, v394, v395);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbAverageBestScoreLCntx1Factor";
        goto LABEL_289;
      }

      *(this + 42) = a3;
      return;
    case 41:
      v194 = ParamSpecMgr::getParamByParamId(qword_281051F80, 41, a4, a5, a6, a7, a8, a9);
      if (v194)
      {
        v200 = **v194;
      }

      DoubleParamSpec::validateValue(v194, a3, 0, 0, v195, v196, v197, v198, v199);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbAverageBestScoreLCntx2Factor";
        goto LABEL_289;
      }

      *(this + 43) = a3;
      return;
    case 42:
      v278 = ParamSpecMgr::getParamByParamId(qword_281051F80, 42, a4, a5, a6, a7, a8, a9);
      if (v278)
      {
        v284 = **v278;
      }

      DoubleParamSpec::validateValue(v278, a3, 0, 0, v279, v280, v281, v282, v283);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbAverageBestScoreRCntx1Factor";
        goto LABEL_289;
      }

      *(this + 44) = a3;
      return;
    case 43:
      v411 = ParamSpecMgr::getParamByParamId(qword_281051F80, 43, a4, a5, a6, a7, a8, a9);
      if (v411)
      {
        v417 = **v411;
      }

      DoubleParamSpec::validateValue(v411, a3, 0, 0, v412, v413, v414, v415, v416);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbAverageBestScoreRCntx2Factor";
        goto LABEL_289;
      }

      *(this + 45) = a3;
      return;
    case 44:
      v40 = ParamSpecMgr::getParamByParamId(qword_281051F80, 44, a4, a5, a6, a7, a8, a9);
      if (v40)
      {
        v46 = **v40;
      }

      DoubleParamSpec::validateValue(v40, a3, 0, 0, v41, v42, v43, v44, v45);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbConstantTerm";
        goto LABEL_289;
      }

      *(this + 46) = a3;
      return;
    case 45:
      v138 = ParamSpecMgr::getParamByParamId(qword_281051F80, 45, a4, a5, a6, a7, a8, a9);
      if (v138)
      {
        v144 = **v138;
      }

      DoubleParamSpec::validateValue(v138, a3, 0, 0, v139, v140, v141, v142, v143);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbDurationFactor";
        goto LABEL_289;
      }

      *(this + 47) = a3;
      return;
    case 46:
      v376 = ParamSpecMgr::getParamByParamId(qword_281051F80, 46, a4, a5, a6, a7, a8, a9);
      if (v376)
      {
        v382 = **v376;
      }

      DoubleParamSpec::validateValue(v376, a3, 0, 0, v377, v378, v379, v380, v381);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbDurationLCntx1Factor";
        goto LABEL_289;
      }

      *(this + 48) = a3;
      return;
    case 47:
      v488 = ParamSpecMgr::getParamByParamId(qword_281051F80, 47, a4, a5, a6, a7, a8, a9);
      if (v488)
      {
        v494 = **v488;
      }

      DoubleParamSpec::validateValue(v488, a3, 0, 0, v489, v490, v491, v492, v493);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbDurationLCntx2Factor";
        goto LABEL_289;
      }

      *(this + 49) = a3;
      return;
    case 48:
      v75 = ParamSpecMgr::getParamByParamId(qword_281051F80, 48, a4, a5, a6, a7, a8, a9);
      if (v75)
      {
        v81 = **v75;
      }

      DoubleParamSpec::validateValue(v75, a3, 0, 0, v76, v77, v78, v79, v80);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbDurationRCntx1Factor";
        goto LABEL_289;
      }

      *(this + 50) = a3;
      return;
    case 49:
      v159 = ParamSpecMgr::getParamByParamId(qword_281051F80, 49, a4, a5, a6, a7, a8, a9);
      if (v159)
      {
        v165 = **v159;
      }

      DoubleParamSpec::validateValue(v159, a3, 0, 0, v160, v161, v162, v163, v164);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbDurationRCntx2Factor";
        goto LABEL_289;
      }

      *(this + 51) = a3;
      return;
    case 50:
      v180 = ParamSpecMgr::getParamByParamId(qword_281051F80, 50, a4, a5, a6, a7, a8, a9);
      if (v180)
      {
        v186 = **v180;
      }

      DoubleParamSpec::validateValue(v180, a3, 0, 0, v181, v182, v183, v184, v185);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbLMScoreFactor";
        goto LABEL_289;
      }

      *(this + 52) = a3;
      return;
    case 51:
      v33 = ParamSpecMgr::getParamByParamId(qword_281051F80, 51, a4, a5, a6, a7, a8, a9);
      if (v33)
      {
        v39 = **v33;
      }

      DoubleParamSpec::validateValue(v33, a3, 0, 0, v34, v35, v36, v37, v38);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbLMScoreLCntx1Factor";
        goto LABEL_289;
      }

      *(this + 53) = a3;
      return;
    case 52:
      v495 = ParamSpecMgr::getParamByParamId(qword_281051F80, 52, a4, a5, a6, a7, a8, a9);
      if (v495)
      {
        v501 = **v495;
      }

      DoubleParamSpec::validateValue(v495, a3, 0, 0, v496, v497, v498, v499, v500);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbLMScoreLCntx2Factor";
        goto LABEL_289;
      }

      *(this + 54) = a3;
      return;
    case 53:
      v481 = ParamSpecMgr::getParamByParamId(qword_281051F80, 53, a4, a5, a6, a7, a8, a9);
      if (v481)
      {
        v487 = **v481;
      }

      DoubleParamSpec::validateValue(v481, a3, 0, 0, v482, v483, v484, v485, v486);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbLMScoreRCntx1Factor";
        goto LABEL_289;
      }

      *(this + 55) = a3;
      return;
    case 54:
      v68 = ParamSpecMgr::getParamByParamId(qword_281051F80, 54, a4, a5, a6, a7, a8, a9);
      if (v68)
      {
        v74 = **v68;
      }

      DoubleParamSpec::validateValue(v68, a3, 0, 0, v69, v70, v71, v72, v73);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbLMScoreRCntx2Factor";
        goto LABEL_289;
      }

      *(this + 56) = a3;
      return;
    case 55:
      v460 = ParamSpecMgr::getParamByParamId(qword_281051F80, 55, a4, a5, a6, a7, a8, a9);
      if (v460)
      {
        v466 = **v460;
      }

      DoubleParamSpec::validateValue(v460, a3, 0, 0, v461, v462, v463, v464, v465);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbLeftContextIndicator1Factor";
        goto LABEL_289;
      }

      *(this + 57) = a3;
      return;
    case 56:
      v474 = ParamSpecMgr::getParamByParamId(qword_281051F80, 56, a4, a5, a6, a7, a8, a9);
      if (v474)
      {
        v480 = **v474;
      }

      DoubleParamSpec::validateValue(v474, a3, 0, 0, v475, v476, v477, v478, v479);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbLeftContextIndicator2Factor";
        goto LABEL_289;
      }

      *(this + 58) = a3;
      return;
    case 57:
      v82 = ParamSpecMgr::getParamByParamId(qword_281051F80, 57, a4, a5, a6, a7, a8, a9);
      if (v82)
      {
        v88 = **v82;
      }

      DoubleParamSpec::validateValue(v82, a3, 0, 0, v83, v84, v85, v86, v87);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbLogWordCountFactor";
        goto LABEL_289;
      }

      *(this + 59) = a3;
      return;
    case 58:
      v404 = ParamSpecMgr::getParamByParamId(qword_281051F80, 58, a4, a5, a6, a7, a8, a9);
      if (v404)
      {
        v410 = **v404;
      }

      DoubleParamSpec::validateValue(v404, a3, 0, 0, v405, v406, v407, v408, v409);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbLogWordCountLCntx1Factor";
        goto LABEL_289;
      }

      *(this + 60) = a3;
      return;
    case 59:
      v166 = ParamSpecMgr::getParamByParamId(qword_281051F80, 59, a4, a5, a6, a7, a8, a9);
      if (v166)
      {
        v172 = **v166;
      }

      DoubleParamSpec::validateValue(v166, a3, 0, 0, v167, v168, v169, v170, v171);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbLogWordCountLCntx2Factor";
        goto LABEL_289;
      }

      *(this + 61) = a3;
      return;
    case 60:
      v418 = ParamSpecMgr::getParamByParamId(qword_281051F80, 60, a4, a5, a6, a7, a8, a9);
      if (v418)
      {
        v424 = **v418;
      }

      DoubleParamSpec::validateValue(v418, a3, 0, 0, v419, v420, v421, v422, v423);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbLogWordCountRCntx1Factor";
        goto LABEL_289;
      }

      *(this + 62) = a3;
      return;
    case 61:
      v201 = ParamSpecMgr::getParamByParamId(qword_281051F80, 61, a4, a5, a6, a7, a8, a9);
      if (v201)
      {
        v207 = **v201;
      }

      DoubleParamSpec::validateValue(v201, a3, 0, 0, v202, v203, v204, v205, v206);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbLogWordCountRCntx2Factor";
        goto LABEL_289;
      }

      *(this + 63) = a3;
      return;
    case 62:
      v292 = ParamSpecMgr::getParamByParamId(qword_281051F80, 62, a4, a5, a6, a7, a8, a9);
      if (v292)
      {
        v298 = **v292;
      }

      DoubleParamSpec::validateValue(v292, a3, 0, 0, v293, v294, v295, v296, v297);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbNBestScoreFactor";
        goto LABEL_289;
      }

      *(this + 64) = a3;
      return;
    case 63:
      v313 = ParamSpecMgr::getParamByParamId(qword_281051F80, 63, a4, a5, a6, a7, a8, a9);
      if (v313)
      {
        v319 = **v313;
      }

      DoubleParamSpec::validateValue(v313, a3, 0, 0, v314, v315, v316, v317, v318);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbNBestScoreLCntx1Factor";
        goto LABEL_289;
      }

      *(this + 65) = a3;
      return;
    case 64:
      v250 = ParamSpecMgr::getParamByParamId(qword_281051F80, 64, a4, a5, a6, a7, a8, a9);
      if (v250)
      {
        v256 = **v250;
      }

      DoubleParamSpec::validateValue(v250, a3, 0, 0, v251, v252, v253, v254, v255);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbNBestScoreLCntx2Factor";
        goto LABEL_289;
      }

      *(this + 66) = a3;
      return;
    case 65:
      v208 = ParamSpecMgr::getParamByParamId(qword_281051F80, 65, a4, a5, a6, a7, a8, a9);
      if (v208)
      {
        v214 = **v208;
      }

      DoubleParamSpec::validateValue(v208, a3, 0, 0, v209, v210, v211, v212, v213);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbNBestScoreRCntx1Factor";
        goto LABEL_289;
      }

      *(this + 67) = a3;
      return;
    case 66:
      v306 = ParamSpecMgr::getParamByParamId(qword_281051F80, 66, a4, a5, a6, a7, a8, a9);
      if (v306)
      {
        v312 = **v306;
      }

      DoubleParamSpec::validateValue(v306, a3, 0, 0, v307, v308, v309, v310, v311);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbNBestScoreRCntx2Factor";
        goto LABEL_289;
      }

      *(this + 68) = a3;
      return;
    case 67:
      v47 = ParamSpecMgr::getParamByParamId(qword_281051F80, 67, a4, a5, a6, a7, a8, a9);
      if (v47)
      {
        v53 = **v47;
      }

      DoubleParamSpec::validateValue(v47, a3, 0, 0, v48, v49, v50, v51, v52);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbRightContextIndicator1Factor";
        goto LABEL_289;
      }

      *(this + 69) = a3;
      return;
    case 68:
      v131 = ParamSpecMgr::getParamByParamId(qword_281051F80, 68, a4, a5, a6, a7, a8, a9);
      if (v131)
      {
        v137 = **v131;
      }

      DoubleParamSpec::validateValue(v131, a3, 0, 0, v132, v133, v134, v135, v136);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbRightContextIndicator2Factor";
        goto LABEL_289;
      }

      *(this + 70) = a3;
      return;
    case 69:
      v502 = ParamSpecMgr::getParamByParamId(qword_281051F80, 69, a4, a5, a6, a7, a8, a9);
      if (v502)
      {
        v508 = **v502;
      }

      DoubleParamSpec::validateValue(v502, a3, 0, 0, v503, v504, v505, v506, v507);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbWordsEndingCountFactor";
        goto LABEL_289;
      }

      *(this + 71) = a3;
      return;
    case 70:
      v103 = ParamSpecMgr::getParamByParamId(qword_281051F80, 70, a4, a5, a6, a7, a8, a9);
      if (v103)
      {
        v109 = **v103;
      }

      DoubleParamSpec::validateValue(v103, a3, 0, 0, v104, v105, v106, v107, v108);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbWordsEndingCountLCntx1Factor";
        goto LABEL_289;
      }

      *(this + 72) = a3;
      return;
    case 71:
      v26 = ParamSpecMgr::getParamByParamId(qword_281051F80, 71, a4, a5, a6, a7, a8, a9);
      if (v26)
      {
        v32 = **v26;
      }

      DoubleParamSpec::validateValue(v26, a3, 0, 0, v27, v28, v29, v30, v31);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbWordsEndingCountLCntx2Factor";
        goto LABEL_289;
      }

      *(this + 73) = a3;
      return;
    case 72:
      v54 = ParamSpecMgr::getParamByParamId(qword_281051F80, 72, a4, a5, a6, a7, a8, a9);
      if (v54)
      {
        v60 = **v54;
      }

      DoubleParamSpec::validateValue(v54, a3, 0, 0, v55, v56, v57, v58, v59);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbWordsEndingCountRCntx1Factor";
        goto LABEL_289;
      }

      *(this + 74) = a3;
      break;
    case 73:
      v467 = ParamSpecMgr::getParamByParamId(qword_281051F80, 73, a4, a5, a6, a7, a8, a9);
      if (v467)
      {
        v473 = **v467;
      }

      DoubleParamSpec::validateValue(v467, a3, 0, 0, v468, v469, v470, v471, v472);
      if (*(this + 9))
      {
        v25 = "ConfidenceWordProbWordsEndingCountRCntx2Factor";
LABEL_289:

        throwParamSetSetFailed(v25, "double", v19, v20, v21, v22, v23, v24);
      }

      else
      {
        *(this + 75) = a3;
      }

      break;
    default:

      throwWrongParamIdValue(a2, "double", a4, a5, a6, a7, a8, a9);
      return;
  }
}