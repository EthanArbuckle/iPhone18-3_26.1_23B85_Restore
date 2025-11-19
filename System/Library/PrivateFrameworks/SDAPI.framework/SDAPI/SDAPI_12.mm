uint64_t TLexerLexicon::findLongestMatch(uint64_t a1, unsigned int **a2, TAllocator *this)
{
  v4 = a2;
  v6 = *(a1 + 24);
  v7 = *a2;
  v8 = *(a1 + 32) - v6;
  if (v8)
  {
    v9 = 0;
    v10 = v8 >> 4;
    v11 = *v7;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v12 = v6 + 8;
    while (v11 != *(v12 + v9))
    {
      v9 += 16;
      if (!--v10)
      {
        goto LABEL_47;
      }
    }

    v13 = (v7 + 1);
    v14 = v7[1];
    v15 = v14 == v11;
    for (i = v7 + 1; !v15 && v14 != 0; v15 = *i == v11)
    {
      if (v14 == 92 && i[1])
      {
        v18 = 8;
      }

      else
      {
        v18 = 4;
      }

      i = (i + v18);
      v14 = *i;
    }

    if (v14 == v11)
    {
      *v4 = v13;
      v19 = (i - v13);
      v20 = i - v13;
      if ((v20 + 1) >> 62)
      {
        v21 = -1;
      }

      else
      {
        v21 = 4 * (v20 + 1);
      }

      v22 = TAllocator::allocate(this, v21);
      wcsncpy(v22, *v4, v20);
      *&v19[v22] = 0;
      v23 = *(a1 + 24) + v9;
      v24 = *(v23 + 8);
      v25 = *(v23 + 12);
      v26 = v22;
      for (j = v22; ; ++j)
      {
        v28 = *v26;
        if (*v26 == 92)
        {
          if (v25 == 2)
          {
            v32 = v26[1];
            if (v32 == v24)
            {
              v28 = v26[1];
            }

            else
            {
              v28 = 92;
            }

            if (v32 == 92 || v32 == v24)
            {
              ++v26;
            }
          }

          else if (v25 == 1)
          {
            v30 = v26[1];
            ++v26;
            v29 = v30;
            if (v30 == 114)
            {
              v31 = 13;
            }

            else
            {
              v31 = v29;
            }

            if (v29 == 116)
            {
              v31 = 9;
            }

            if (v29 == 110)
            {
              v28 = 10;
            }

            else
            {
              v28 = v31;
            }
          }

          else
          {
            v28 = 92;
          }
        }

        else if (!v28)
        {
          *j = 0;
          *v4 = i + 1;
          return *(*(a1 + 24) + v9);
        }

        *j = v28;
        ++v26;
      }
    }
  }

LABEL_47:
  __p = 0;
  v61 = 0;
  v62 = 0;
  TRegExp::match(*(a1 + 48), v7, 2, &__p);
  v34 = __p;
  if (v61 == __p)
  {
    goto LABEL_70;
  }

  v58 = a1;
  v59 = v4;
  v35 = 0;
  v36 = 0;
  v37 = 0xAAAAAAAAAAAAAAABLL * ((v61 - __p) >> 3);
  do
  {
    v38 = &v34[v35];
    v39 = *(*&v34[v35 + 8] - 4);
    {
      operator new();
    }

    if (!TLocaleInfo::isAlpha(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v39))
    {
      goto LABEL_63;
    }

    v40 = **(v38 + 1);
    {
      operator new();
    }

    v41 = TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo;
    if ((v40 < 48 || v40 >= 0x3A && (v40 < 0x660 || TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v40) == -1)) && (TLocaleInfo::isAlpha(v41, v40) & 1) == 0)
    {
LABEL_63:
      if (v37 == 0xAAAAAAAAAAAAAAABLL * ((v61 - __p) >> 3) || (v42 = *(v38 + 1), v43 = __p + 24 * v37, v44 = *(v43 + 1), v42 > v44) || v42 == v44 && *&v34[v35 + 16] < *(v43 + 2))
      {
        v37 = v36;
      }
    }

    ++v36;
    v34 = __p;
    v45 = 0xAAAAAAAAAAAAAAABLL * ((v61 - __p) >> 3);
    v35 += 24;
  }

  while (v36 < v45);
  v4 = v59;
  if (v37 == v45)
  {
LABEL_70:
    v46 = TAllocator::allocate(this, 8);
    v47 = (*v4 + 1);
    *v46 = **v4;
    *v4 = v47;
    v48 = __p;
    v56 = -1;
    if (!__p)
    {
      return v56;
    }
  }

  else
  {
    v49 = *(__p + 3 * v37 + 1) - *v59;
    v50 = (v49 >> 2) + 1;
    if (v50 >> 62)
    {
      v51 = -1;
    }

    else
    {
      v51 = 4 * v50;
    }

    v52 = TAllocator::allocate(this, v51);
    wcsncpy(v52, *v59, v49 >> 2);
    *(v52 + v49) = 0;
    v48 = __p;
    v53 = __p + 24 * v37;
    v55 = *(v53 + 1);
    v54 = *(v53 + 2);
    *v59 = v55;
    v56 = *(*v58 + 8 * v54);
  }

  v61 = v48;
  operator delete(v48);
  return v56;
}

void sub_2626155D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  MEMORY[0x26672B1B0](v13, 0x1070C40ADD13FEBLL);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t TLexer::TLexer(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v9 = a1 + 32;
  TAllocator::TAllocator((a1 + 32), 2048);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  if (a5)
  {
    v10 = a5;
  }

  else
  {
    v10 = v9;
  }

  *(a1 + 72) = v10;
  *(a1 + 80) = a4;
  *(a1 + 24) = 0;
  MEMORY[0x26672AEC0](a1, "'string'");
  v19 = a2;
  v11 = *a2;
  if (*a2)
  {
    do
    {
      {
        operator new();
      }

      if (v11 > 159)
      {
        if (v11 >= 12288)
        {
          if (v11 != 65279 && v11 != 12288)
          {
LABEL_19:
            LongestMatch = TLexerLexicon::findLongestMatch(*(a1 + 80), &v19, *(a1 + 72));
            v15 = v14;
            v16 = TAllocator::allocate(*(a1 + 72), 24);
            *v16 = LongestMatch;
            v16[1] = v15;
            v16[2] = 0;
            v18 = v16;
            std::vector<TWord const*>::push_back[abi:ne200100](a1 + 88, &v18);
            v12 = v19;
            goto LABEL_17;
          }
        }

        else if (v11 != 160 && v11 != 8203)
        {
          goto LABEL_19;
        }
      }

      else if (v11 > 0x20 || ((1 << v11) & 0x100002600) == 0)
      {
        goto LABEL_19;
      }

      v12 = ++v19;
LABEL_17:
      v11 = *v12;
    }

    while (*v12);
  }

  return a1;
}

void sub_2626157EC(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v4, 0x1070C40ADD13FEBLL);
  v6 = *v3;
  if (*v3)
  {
    *(v1 + 96) = v6;
    operator delete(v6);
  }

  TAllocator::clear(v2);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void TLexer::TLexer(TLexer *this, TInputStream *a2, unint64_t a3, const TLexerLexicon *a4, TAllocator *a5)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  TAllocator::TAllocator((this + 32), 2048);
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  if (a5)
  {
    v10 = a5;
  }

  else
  {
    v10 = v9;
  }

  *(this + 9) = v10;
  *(this + 10) = a4;
  *(this + 3) = 0;
  if (*(a2 + 39) >= 0)
  {
    v11 = a2 + 16;
  }

  else
  {
    v11 = *(a2 + 2);
  }

  MEMORY[0x26672AEC0](this, v11);
  MEMORY[0x26672AF30](a2 + 128, &unk_26287F798);
  __s1 = v41;
  v40 = xmmword_26286B6F0;
  v42 = 1;
LABEL_8:
  while (TInputStream::getNextLine(a2, &__s1))
  {
    if (*(&v40 + 1) >= v40)
    {
      if (v42)
      {
        *__p = 0;
        TBuffer<wchar_t>::insert(&__s1, *(&v40 + 1), __p, 1uLL);
        v12 = __s1;
        --*(&v40 + 1);
      }

      else
      {
        v12 = __s1;
        if (v40)
        {
          __s1[v40 - 1] = 0;
        }
      }
    }

    else
    {
      v12 = __s1;
      __s1[*(&v40 + 1)] = 0;
    }

    v38 = v12;
    v13 = *v12;
    if (*v12)
    {
      while (1)
      {
        {
          operator new();
        }

        if (v13 > 159)
        {
          if (v13 >= 12288)
          {
            if (v13 == 65279 || v13 == 12288)
            {
LABEL_27:
              v14 = ++v38;
              goto LABEL_28;
            }
          }

          else if (v13 == 160 || v13 == 8203)
          {
            goto LABEL_27;
          }
        }

        else if (v13 <= 0x20 && ((1 << v13) & 0x100002600) != 0)
        {
          goto LABEL_27;
        }

        v14 = v38;
        if (!wcsncmp(v38, "/", 2uLL))
        {
          goto LABEL_8;
        }

        if (!wcsncmp(v14, "/", 2uLL))
        {
          while (TInputStream::getNextLine(a2, &__s1))
          {
            if (*(&v40 + 1) >= v40)
            {
              if (v42)
              {
                *__p = 0;
                TBuffer<wchar_t>::insert(&__s1, *(&v40 + 1), __p, 1uLL);
                v24 = __s1;
                --*(&v40 + 1);
              }

              else
              {
                v24 = __s1;
                if (v40)
                {
                  __s1[v40 - 1] = 0;
                }
              }
            }

            else
            {
              v24 = __s1;
              __s1[*(&v40 + 1)] = 0;
            }

            v25 = wcsstr(v24, "*");
            if (v25)
            {
              v14 = v25 + 2;
              v38 = v25 + 2;
              break;
            }
          }

          if ((*(*a2 + *(**a2 - 24) + 32) & 2) != 0)
          {
            v27 = a2 + 16;
            if (*(a2 + 39) < 0)
            {
              v27 = *(a2 + 2);
            }

            tknPrintf("Error: %s (%llu) : /* */ mismatch", v20, v21, v22, v23, v27, *(a2 + 8));
            std::string::basic_string[abi:ne200100]<0>(v34, &byte_262899963);
            *__p = byte_287529580;
            if (SHIBYTE(v35) < 0)
            {
              std::string::__init_copy_ctor_external(&__p[8], v34[0], v34[1]);
            }

            else
            {
              *&__p[8] = *v34;
              v37 = v35;
            }

            *__p = &unk_287527330;
            if (v37 >= 0)
            {
              v30 = &__p[8];
            }

            else
            {
              v30 = *&__p[8];
            }

            conditionalAssert(v30, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/lexer.cpp", 339, v28, v29);
            *__p = byte_287529580;
            if (SHIBYTE(v37) < 0)
            {
              operator delete(*&__p[8]);
            }

            if (SHIBYTE(v35) < 0)
            {
              operator delete(v34[0]);
            }

            exception = __cxa_allocate_exception(0x20uLL);
            std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
            *exception = byte_287529580;
            v32 = (exception + 1);
            if ((__p[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(v32, *__p, *&__p[8]);
            }

            else
            {
              v33 = *__p;
              exception[3] = *&__p[16];
              *&v32->__r_.__value_.__l.__data_ = v33;
            }

            *exception = &unk_287527330;
          }
        }

        else
        {
          LongestMatch = TLexerLexicon::findLongestMatch(*(this + 10), &v38, *(this + 9));
          v17 = v16;
          v18 = TAllocator::allocate(*(this + 9), 24);
          v19 = *(a2 + 8);
          *v18 = LongestMatch;
          v18[1] = v17;
          v18[2] = v19;
          *__p = v18;
          std::vector<TWord const*>::push_back[abi:ne200100](this + 88, __p);
          v14 = v38;
        }

LABEL_28:
        v13 = *v14;
        if (!v13)
        {
          goto LABEL_8;
        }
      }
    }
  }

  if (v42 == 1 && __s1 != v41 && __s1 != 0)
  {
    MEMORY[0x26672B1B0]();
  }
}

void sub_262615D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, TAllocator *a13, uint64_t a14, void **a15, void *a16, uint64_t a17, uint64_t a18, void *__p, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (LOBYTE(STACK[0x490]) == 1 && a24 != a14 && a24 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  v27 = *a15;
  if (*a15)
  {
    *(v24 + 96) = v27;
    operator delete(v27);
  }

  TAllocator::clear(a13);
  if (*(v24 + 23) < 0)
  {
    operator delete(*v24);
  }

  _Unwind_Resume(a1);
}

uint64_t *ArcGraphMgr::startupArcGraphMgr(uint64_t a1)
{
  result = MemChunkAlloc(8uLL, 0);
  *result = a1;
  ArcGraphMgr::smpArcGraphMgr = result;
  return result;
}

void ArcGraphMgr::printSize(ArcGraphMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/agmgr.cpp", 64, &v32);
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

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/agmgr.cpp", 65, &v32);
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
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/agmgr.cpp", 66, &v32);
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

void sub_2626160B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t ArcGraphMgr::getArcGraphOrThrow(ArcGraphMgr *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(*this + 8) <= a2 || (result = *(**this + 8 * a2)) == 0)
  {
    v10 = a2;
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/agmgr.cpp", 73, "fst/agmgr", 1, "%u", a7, a8, a2);
    return *(**this + 8 * v10);
  }

  return result;
}

void checkValidityOfDouble(const double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 6);
  if ((*(a1 + 7) & 0x7F) != 0 || v8 > 0xF)
  {
    if ((*(a1 + 7) & 0x7F) == 0x7F && v8 >= 0xF0)
    {
      v22 = *(a1 + 6);
      v24 = *(a1 + 7);
      v18 = *(a1 + 4);
      v20 = *(a1 + 5);
      v14 = *(a1 + 2);
      v16 = *(a1 + 3);
      v11 = *a1;
      v13 = *(a1 + 1);
      errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/littlend.cpp", 93, "dfutil/littlend", 2, "%.500s %02x %02x %02x %02x %02x %02x %02x %02x", a7, a8, "illegal (NaN/infinity)");
    }
  }

  else
  {
    if (*a1)
    {
      v10 = *(a1 + 1);
LABEL_15:
      v23 = *(a1 + 6);
      v25 = *(a1 + 7);
      v19 = *(a1 + 4);
      v21 = *(a1 + 5);
      v15 = *(a1 + 2);
      v17 = *(a1 + 3);
      v12 = *a1;
      errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/littlend.cpp", 89, "dfutil/littlend", 2, "%.500s %02x %02x %02x %02x %02x %02x %02x %02x", a7, a8, "denormalized");
      return;
    }

    if (*(a1 + 2) || *(a1 + 3) || *(a1 + 4) || *(a1 + 5) || *(a1 + 6))
    {
      goto LABEL_15;
    }
  }
}

void RecogCtlMgr::RecogCtlMgr(RecogCtlMgr *this)
{
  *this = 0x100010000001DLL;
  *(this + 1) = 0;
  *(this + 1) = 0u;
  *(this + 8) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0x10000001DLL;
  *(this + 13) = 0;
  *(this + 24) = 1;
  *(this + 7) = 0u;
  *(this + 32) = 0;
  *(this + 136) = 0u;
  *(this + 19) = 0x10000001DLL;
  *(this + 21) = 0;
  *(this + 40) = 1;
  *(this + 48) = 0;
  *(this + 11) = 0u;
  *(this + 248) = 0u;
  v2 = this + 248;
  *(this + 25) = 0x10000001DLL;
  *(this + 27) = 0;
  *(this + 52) = 1;
  *(this + 14) = 0u;
  *(this + 60) = 0;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  v3 = this + 280;
  *(this + 39) = 0;
  *(this + 37) = 0x10000001DLL;
  *(this + 76) = 1;
  *(this + 20) = 0u;
  *(this + 344) = 0u;
  v4 = this + 344;
  *(this + 84) = 0;
  *(this + 45) = 0x10000001DLL;
  *(this + 47) = 0;
  *(this + 92) = 1;
  *(this + 100) = 0;
  *(this + 24) = 0u;
  *(this + 408) = 0u;
  v5 = this + 408;
  *(this + 53) = 0x10000001DLL;
  *(this + 55) = 0;
  *(this + 108) = 1;
  *(this + 116) = 0;
  *(this + 28) = 0u;
  *(this + 472) = 0u;
  *(this + 61) = 0x10000001DLL;
  *(this + 63) = 0;
  *(this + 124) = 1;
  *(this + 132) = 0;
  *(this + 32) = 0u;
  *(this + 536) = 0u;
  DgnPrimArray<unsigned long long>::reallocElts(this + 56, 1, 1);
  v6 = *(this + 65);
  v7 = *(this + 64);
  v8 = *(this + 16);
  *(*(this + 7) + 8 * v8) = 0;
  *(this + 16) = v8 + 1;
  if (v7 == v6)
  {
    DgnPrimArray<unsigned long long>::reallocElts(v2, 1, 1);
    v7 = *(this + 64);
  }

  *(*(this + 31) + 8 * v7) = 0;
  *(this + 64) = v7 + 1;
  v9 = *(this + 72);
  if (v9 == *(this + 73))
  {
    DgnPrimArray<unsigned long long>::reallocElts(v3, 1, 1);
    v9 = *(this + 72);
  }

  *(*(this + 35) + 8 * v9) = 0;
  *(this + 72) = v9 + 1;
  v10 = *(this + 88);
  if (v10 == *(this + 89))
  {
    DgnPrimArray<unsigned long long>::reallocElts(v4, 1, 1);
    v10 = *(this + 88);
  }

  *(*(this + 43) + 8 * v10) = 0;
  *(this + 88) = v10 + 1;
  v11 = *(this + 104);
  if (v11 == *(this + 105))
  {
    DgnPrimArray<unsigned long long>::reallocElts(v5, 1, 1);
    v11 = *(this + 104);
  }

  *(*(this + 51) + 8 * v11) = 0;
  *(this + 104) = v11 + 1;
  v12 = *(this + 120);
  if (v12 == *(this + 121))
  {
    DgnPrimArray<unsigned long long>::reallocElts((v2 + 224), 1, 1);
    v12 = *(this + 120);
  }

  *(*(this + 59) + 8 * v12) = 0;
  *(this + 120) = v12 + 1;
}

void sub_26261653C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  DgnIOwnArray<VirtMap *>::releaseAll(v22 + 288);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v22 + 256);
  DgnIOwnArray<AdaptControllerResults *>::releaseAll(v22 + 224);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v22 + 192);
  DgnIOwnArray<Sausage *>::releaseAll(v20);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v19);
  DgnIOwnArray<PrefilterResult *>::releaseAll(v18);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v17);
  DgnIOwnArray<WordLattice *>::releaseAll(v15);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v14);
  DgnIOwnArray<RecogControllerBase *>::releaseAll(v22);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v21);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a9);
  DgnIOwnArray<AdaptApplyResult *>::releaseAll(a10);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a11);
  DgnIOwnArray<AdaptAccumResult *>::releaseAll(a12);
  DgnIOwnArray<AdaptController *>::releaseAll(v16);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a13);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a14);
  _Unwind_Resume(a1);
}

void RecogCtlMgr::deleteRecogController(RecogCtlMgr *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  RecogController = RecogCtlMgr::getRecogController(this, a2, a3, a4, a5, a6, a7, a8);
  if (((*(*RecogController + 104))(RecogController) & 1) == 0 && (*(*RecogController + 96))(RecogController))
  {
    (*(*RecogController + 120))(RecogController);
  }

  DgnDelete<RecogControllerBase>(*(*(this + 31) + 8 * a2));
  *(*(this + 31) + 8 * a2) = 0;
  if (a2)
  {
    v11 = *(this + 68);
    if (v11)
    {
      v12 = *(this + 68);
      v13 = *(this + 33);
      while (*v13 != a2)
      {
        ++v13;
        if (!--v12)
        {
          goto LABEL_11;
        }
      }

      v14 = v11 - 1;
      *v13 = *(*(this + 33) + 4 * v14);
      *(this + 68) = v14;
    }
  }

LABEL_11:

  IdMgr<unsigned int>::recycleId(this + 50, a2);
}

void *DgnIOwnArray<AdaptAccumResult *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<AdaptAccumResult>(*(*a1 + v3));
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

void *DgnIOwnArray<AdaptApplyResult *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<AdaptApplyResult>(*(*a1 + v3));
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

void *DgnIOwnArray<WordLattice *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<WordLattice>(*(*a1 + v3));
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

void *DgnIOwnArray<PrefilterResult *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<PrefilterResult>(*(*a1 + v3));
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

void *DgnIOwnArray<Sausage *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<Sausage>(*(*a1 + v3));
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

void *DgnIOwnArray<AdaptControllerResults *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<AdaptControllerResults>(*(*a1 + v3));
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

void *DgnIOwnArray<VirtMap *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<VirtMap>(*(*a1 + v3));
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

void RecogCtlMgr::startupRecogCtlMgr(RecogCtlMgr *this)
{
  v1 = MemChunkAlloc(0x228uLL, 0);
  RecogCtlMgr::RecogCtlMgr(v1);
  RecogCtlMgr::smpRecogCtlMgr = v2;
}

void RecogCtlMgr::printSize(RecogCtlMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 210, &v332);
  if (v333)
  {
    v15 = v332;
  }

  else
  {
    v15 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, v12, v13, v14, a3, &unk_26287F806, a3, &unk_26287F806, v15);
  DgnString::~DgnString(&v332);
  if (a2 != -1)
  {
    xlprintf("%d ", v16, v17, v18, v19, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v16, v17, v18, v19, a3, &unk_26287F806);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 212, &v332);
  if (v333)
  {
    v24 = v332;
  }

  else
  {
    v24 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v20, v21, v22, v23, (a3 + 1), &unk_26287F806, (a3 + 1), &unk_26287F806, v24);
  v329 = a6;
  DgnString::~DgnString(&v332);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v25, v26, v27, v28, (a3 + 1), &unk_26287F806);
  v29 = *(this + 16);
  if (v29)
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    do
    {
      v34 = *(this + 7);
      if (*(v34 + 8 * v30))
      {
        v331 = 0;
        v332 = 0;
        v330 = 0;
        AdaptController::printSize(*(v34 + 8 * v30), v30, (a3 + 2), &v332, &v331, &v330);
        v31 += v332;
        v32 += v331;
        v33 += v330;
        v29 = *(this + 16);
      }

      ++v30;
    }

    while (v30 < v29);
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v29 = 0;
  }

  v35 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v35 = 12;
  }

  v36 = v35 + v31;
  v37 = v35 + v32;
  v38 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v38 = 3;
  }

  v39 = v36 + (*(this + 17) << v38);
  v40 = v37 + (v29 << v38);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 212, &v332);
  if (v333)
  {
    v45 = v332;
  }

  else
  {
    v45 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v41, v42, v43, v44, (a3 + 1), &unk_26287F806, (34 - a3), (34 - a3), v45, v39, v40, v33);
  DgnString::~DgnString(&v332);
  *a4 += v39;
  *a5 += v40;
  *v329 += v33;
  v46 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v46 = 12;
  }

  v47 = *(this + 12);
  v48 = *(this + 13);
  v49 = v46 + 2 * (v47 - 1) + 2;
  if (v47 <= 0)
  {
    v49 = v46;
  }

  if (v48 >= v47)
  {
    v50 = v49;
  }

  else
  {
    v50 = v46;
  }

  if (v48 >= v47)
  {
    v51 = v49 + 2 * (v48 - v47);
  }

  else
  {
    v51 = v46;
  }

  if (v48 >= v47)
  {
    v52 = 0;
  }

  else
  {
    v52 = 2 * v47;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 213, &v332);
  if (v333)
  {
    v57 = v332;
  }

  else
  {
    v57 = &unk_26287F806;
  }

  v327 = (34 - a3);
  v325 = (a3 + 1);
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, v54, v55, v56, v325, &unk_26287F806, v327, v327, v57, v51, v50, v52);
  DgnString::~DgnString(&v332);
  v326 = a4;
  *a4 += v51;
  *a5 += v50;
  *v329 += v52;
  v58 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v58 = 12;
  }

  v59 = *(this + 4);
  v60 = *(this + 5);
  v61 = v60 >= v59;
  v62 = v60 - v59;
  if (v61)
  {
    if (v59 > 0)
    {
      v58 += 2 * (v59 - 1) + 2;
    }

    v58 += 2 * v62;
  }

  v63 = v58 + 20;
  v64 = DgnPrimQueue<unsigned short,DgnPrimArray<unsigned short>>::sizeObject(this + 2, 1u) + 8;
  v65 = *(this + 4);
  if (v65 <= *(this + 5))
  {
    v66 = 0;
  }

  else
  {
    v66 = 2 * v65;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 215, &v332);
  if (v333)
  {
    v71 = v332;
  }

  else
  {
    v71 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v67, v68, v69, v70, v325, &unk_26287F806, v327, v327, v71, v63, v64, v66);
  DgnString::~DgnString(&v332);
  *a4 += v63;
  *a5 += v64;
  *v329 += v66;
  v72 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v72 = 12;
  }

  v73 = *(this + 28);
  v74 = *(this + 29);
  v61 = v74 >= v73;
  v75 = v74 - v73;
  if (v61)
  {
    if (v73 > 0)
    {
      v72 += 4 * (v73 - 1) + 4;
    }

    v72 += 4 * v75;
  }

  v76 = v72 + 24;
  v77 = DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::sizeObject(this + 26, 1u) + 12;
  v78 = *(this + 28);
  if (v78 <= *(this + 29))
  {
    v79 = 0;
  }

  else
  {
    v79 = 4 * v78;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 217, &v332);
  if (v333)
  {
    v84 = v332;
  }

  else
  {
    v84 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v80, v81, v82, v83, v325, &unk_26287F806, v327, v327, v84, v76, v77, v79);
  DgnString::~DgnString(&v332);
  *a4 += v76;
  *a5 += v77;
  *v329 += v79;
  v85 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v85 = 12;
  }

  v86 = *(this + 44);
  v87 = *(this + 45);
  v61 = v87 >= v86;
  v88 = v87 - v86;
  if (v61)
  {
    if (v86 > 0)
    {
      v85 += 4 * (v86 - 1) + 4;
    }

    v85 += 4 * v88;
  }

  v89 = v85 + 24;
  v90 = DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::sizeObject(this + 42, 1u) + 12;
  v91 = *(this + 44);
  if (v91 <= *(this + 45))
  {
    v92 = 0;
  }

  else
  {
    v92 = 4 * v91;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 219, &v332);
  if (v333)
  {
    v97 = v332;
  }

  else
  {
    v97 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v93, v94, v95, v96, v325, &unk_26287F806, v327, v327, v97, v89, v90, v92);
  DgnString::~DgnString(&v332);
  *a4 += v89;
  *a5 += v90;
  *v329 += v92;
  v98 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v98 = 12;
  }

  v99 = *(this + 56);
  v100 = *(this + 57);
  v61 = v100 >= v99;
  v101 = v100 - v99;
  if (v61)
  {
    if (v99 > 0)
    {
      v98 += 4 * (v99 - 1) + 4;
    }

    v98 += 4 * v101;
  }

  v102 = v98 + 24;
  v103 = DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::sizeObject(this + 54, 1u) + 12;
  v104 = *(this + 56);
  if (v104 <= *(this + 57))
  {
    v105 = 0;
  }

  else
  {
    v105 = 4 * v104;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 221, &v332);
  if (v333)
  {
    v110 = v332;
  }

  else
  {
    v110 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v106, v107, v108, v109, v325, &unk_26287F806, v327, v327, v110, v102, v103, v105);
  DgnString::~DgnString(&v332);
  *a4 += v102;
  *a5 += v103;
  *v329 += v105;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 223, &v332);
  if (v333)
  {
    v115 = v332;
  }

  else
  {
    v115 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v111, v112, v113, v114, v325, &unk_26287F806, v325, &unk_26287F806, v115);
  DgnString::~DgnString(&v332);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v116, v117, v118, v119, v325, &unk_26287F806);
  v120 = *(this + 64);
  if (v120)
  {
    v121 = 0;
    v122 = 0;
    v123 = 0;
    v124 = 0;
    do
    {
      v125 = *(this + 31);
      if (*(v125 + 8 * v121))
      {
        v331 = 0;
        v332 = 0;
        v330 = 0;
        (*(**(v125 + 8 * v121) + 280))();
        v122 += v332;
        v123 += v331;
        v124 += v330;
        v120 = *(this + 64);
      }

      ++v121;
    }

    while (v121 < v120);
  }

  else
  {
    v124 = 0;
    v123 = 0;
    v122 = 0;
    v120 = 0;
  }

  v126 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v126 = 12;
  }

  v127 = v126 + v122;
  v128 = v126 + v123;
  v129 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v129 = 3;
  }

  v130 = v127 + (*(this + 65) << v129);
  v131 = v128 + (v120 << v129);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 223, &v332);
  if (v333)
  {
    v136 = v332;
  }

  else
  {
    v136 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v132, v133, v134, v135, v325, &unk_26287F806, v327, v327, v136, v130, v131, v124);
  DgnString::~DgnString(&v332);
  *a4 += v130;
  *a5 += v131;
  *v329 += v124;
  v137 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v137 = 12;
  }

  v138 = *(this + 68);
  v139 = *(this + 69);
  v140 = v137 + 4 * (v138 - 1) + 4;
  if (v138 <= 0)
  {
    v140 = v137;
  }

  if (v139 >= v138)
  {
    v141 = v140;
  }

  else
  {
    v141 = v137;
  }

  if (v139 >= v138)
  {
    v142 = v140 + 4 * (v139 - v138);
  }

  else
  {
    v142 = v137;
  }

  if (v139 >= v138)
  {
    v143 = 0;
  }

  else
  {
    v143 = 4 * v138;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 225, &v332);
  if (v333)
  {
    v148 = v332;
  }

  else
  {
    v148 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v144, v145, v146, v147, v325, &unk_26287F806, v327, v327, v148, v142, v141, v143);
  DgnString::~DgnString(&v332);
  *a4 += v142;
  *a5 += v141;
  *v329 += v143;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 226, &v332);
  if (v333)
  {
    v153 = v332;
  }

  else
  {
    v153 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v149, v150, v151, v152, v325, &unk_26287F806, v325, &unk_26287F806, v153);
  DgnString::~DgnString(&v332);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v154, v155, v156, v157, v325, &unk_26287F806);
  v158 = *(this + 72);
  if (v158)
  {
    v159 = 0;
    v160 = 0;
    v161 = 0;
    v162 = 0;
    v164 = a4;
    v163 = (34 - a3);
    do
    {
      v165 = *(this + 35);
      if (*(v165 + 8 * v159))
      {
        v331 = 0;
        v332 = 0;
        v330 = 0;
        (*(**(v165 + 8 * v159) + 64))(*(v165 + 8 * v159), v159, (a3 + 2), &v332, &v331, &v330);
        v160 += v332;
        v161 += v331;
        v162 += v330;
        v158 = *(this + 72);
      }

      ++v159;
    }

    while (v159 < v158);
  }

  else
  {
    v162 = 0;
    v161 = 0;
    v160 = 0;
    v158 = 0;
    v164 = a4;
    v163 = (34 - a3);
  }

  v166 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v166 = 12;
  }

  v167 = v166 + v160;
  v168 = v166 + v161;
  v169 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v169 = 3;
  }

  v170 = v167 + (*(this + 73) << v169);
  v171 = v168 + (v158 << v169);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 226, &v332);
  if (v333)
  {
    v175 = v332;
  }

  else
  {
    v175 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v172, &unk_26287F806, v173, v174, v325, &unk_26287F806, v163, v163, v175, v170, v171, v162);
  DgnString::~DgnString(&v332);
  *v164 += v170;
  *a5 += v171;
  *v329 += v162;
  v176 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v176 = 12;
  }

  v177 = *(this + 80);
  v178 = *(this + 81);
  v179 = v176 + 4 * (v177 - 1) + 4;
  if (v177 <= 0)
  {
    v179 = v176;
  }

  v61 = v178 >= v177;
  v180 = v179 + 4 * (v178 - v177);
  if (v61)
  {
    v176 = v180;
  }

  v181 = v176 + 24;
  v182 = DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::sizeObject(this + 78, 1u) + 12;
  v183 = *(this + 80);
  if (v183 <= *(this + 81))
  {
    v184 = 0;
  }

  else
  {
    v184 = 4 * v183;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 228, &v332);
  if (v333)
  {
    v189 = v332;
  }

  else
  {
    v189 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v185, v186, v187, v188, v325, &unk_26287F806, v163, v163, v189, v181, v182, v184);
  DgnString::~DgnString(&v332);
  *v164 += v181;
  *a5 += v182;
  *v329 += v184;
  v190 = sizeObject<PrefilterResult *>(this + 344, 0);
  v191 = sizeObject<PrefilterResult *>(this + 344, 1);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 230, &v332);
  if (v333)
  {
    v196 = v332;
  }

  else
  {
    v196 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v192, v193, v194, v195, v325, &unk_26287F806, v163, v163, v196, v190, v191, 0);
  DgnString::~DgnString(&v332);
  *v164 += v190;
  *a5 += v191;
  v197 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v197 = 12;
  }

  v198 = *(this + 96);
  v199 = *(this + 97);
  v61 = v199 >= v198;
  v200 = v199 - v198;
  if (v61)
  {
    if (v198 > 0)
    {
      v197 += 4 * (v198 - 1) + 4;
    }

    v197 += 4 * v200;
  }

  v201 = v197 + 24;
  v202 = DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::sizeObject(this + 94, 1u) + 12;
  v203 = *(this + 96);
  if (v203 <= *(this + 97))
  {
    v204 = 0;
  }

  else
  {
    v204 = 4 * v203;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 232, &v332);
  if (v333)
  {
    v209 = v332;
  }

  else
  {
    v209 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v205, v206, v207, v208, v325, &unk_26287F806, v327, v327, v209, v201, v202, v204);
  DgnString::~DgnString(&v332);
  *v326 += v201;
  *a5 += v202;
  *v329 += v204;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 233, &v332);
  if (v333)
  {
    v214 = v332;
  }

  else
  {
    v214 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v210, v211, v212, v213, v325, &unk_26287F806, v325, &unk_26287F806, v214);
  DgnString::~DgnString(&v332);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v215, v216, v217, v218, v325, &unk_26287F806);
  v219 = *(this + 104);
  if (v219)
  {
    v220 = 0;
    v221 = 0;
    v222 = 0;
    v223 = 0;
    do
    {
      v224 = *(this + 51);
      if (*(v224 + 8 * v220))
      {
        v331 = 0;
        v332 = 0;
        v330 = 0;
        Sausage::printSize(*(v224 + 8 * v220), v220, (a3 + 2), &v332, &v331, &v330);
        v223 += v332;
        v222 += v331;
        v221 += v330;
        v219 = *(this + 104);
      }

      ++v220;
    }

    while (v220 < v219);
  }

  else
  {
    v223 = 0;
    v222 = 0;
    v221 = 0;
    v219 = 0;
  }

  v225 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v225 = 12;
  }

  v226 = v225 + v223;
  v227 = v225 + v222;
  v228 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v228 = 3;
  }

  v229 = v226 + (*(this + 105) << v228);
  v230 = v227 + (v219 << v228);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 233, &v332);
  if (v333)
  {
    v235 = v332;
  }

  else
  {
    v235 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v231, v232, v233, v234, v325, &unk_26287F806, v327, v327, v235, v229, v230, v221);
  v236 = (a3 + 1);
  DgnString::~DgnString(&v332);
  *v326 += v229;
  *a5 += v230;
  *v329 += v221;
  v237 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v237 = 12;
  }

  v238 = *(this + 112);
  v239 = *(this + 113);
  v240 = v237 + 4 * (v238 - 1) + 4;
  if (v238 <= 0)
  {
    v240 = v237;
  }

  v61 = v239 >= v238;
  v241 = v240 + 4 * (v239 - v238);
  if (v61)
  {
    v237 = v241;
  }

  v242 = v237 + 24;
  v243 = DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::sizeObject(this + 110, 1u) + 12;
  v244 = *(this + 112);
  if (v244 <= *(this + 113))
  {
    v245 = 0;
  }

  else
  {
    v245 = 4 * v244;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 235, &v332);
  if (v333)
  {
    v250 = v332;
  }

  else
  {
    v250 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v246, v247, v248, v249, v325, &unk_26287F806, v327, v327, v250, v242, v243, v245);
  DgnString::~DgnString(&v332);
  *v326 += v242;
  *a5 += v243;
  *v329 += v245;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 237, &v332);
  if (v333)
  {
    v255 = v332;
  }

  else
  {
    v255 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v251, v252, v253, v254, v325, &unk_26287F806, v325, &unk_26287F806, v255);
  DgnString::~DgnString(&v332);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v256, v257, v258, v259, v325, &unk_26287F806);
  v260 = *(this + 120);
  if (v260)
  {
    v261 = 0;
    v262 = 0;
    v263 = 0;
    v264 = 0;
    v265 = v326;
    do
    {
      v266 = *(this + 59);
      if (*(v266 + 8 * v261))
      {
        v331 = 0;
        v332 = 0;
        v330 = 0;
        AdaptControllerResults::printSize(*(v266 + 8 * v261), v261, (a3 + 2), &v332, &v331, &v330);
        v264 += v332;
        v263 += v331;
        v262 += v330;
        v260 = *(this + 120);
      }

      ++v261;
    }

    while (v261 < v260);
  }

  else
  {
    v264 = 0;
    v263 = 0;
    v262 = 0;
    v260 = 0;
    v265 = v326;
  }

  v267 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v267 = 12;
  }

  v268 = v267 + v264;
  v269 = v267 + v263;
  v270 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v270 = 3;
  }

  v271 = v268 + (*(this + 121) << v270);
  v272 = v269 + (v260 << v270);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 237, &v332);
  if (v333)
  {
    v277 = v332;
  }

  else
  {
    v277 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v273, v274, v275, v276, v236, &unk_26287F806, v327, v327, v277, v271, v272, v262);
  DgnString::~DgnString(&v332);
  *v265 += v271;
  *a5 += v272;
  *v329 += v262;
  v278 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v278 = 12;
  }

  v279 = *(this + 128);
  v280 = *(this + 129);
  v281 = v278 + 4 * (v279 - 1) + 4;
  if (v279 <= 0)
  {
    v281 = v278;
  }

  v61 = v280 >= v279;
  v282 = v281 + 4 * (v280 - v279);
  if (v61)
  {
    v278 = v282;
  }

  v283 = v278 + 24;
  v284 = DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::sizeObject(this + 126, 1u) + 12;
  v285 = *(this + 128);
  if (v285 <= *(this + 129))
  {
    v286 = 0;
  }

  else
  {
    v286 = 4 * v285;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 239, &v332);
  if (v333)
  {
    v291 = v332;
  }

  else
  {
    v291 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v287, v288, v289, v290, v236, &unk_26287F806, v327, v327, v291, v283, v284, v286);
  DgnString::~DgnString(&v332);
  *v265 += v283;
  *a5 += v284;
  *v329 += v286;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 240, &v332);
  if (v333)
  {
    v296 = v332;
  }

  else
  {
    v296 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v292, v293, v294, v295, v236, &unk_26287F806, v236, &unk_26287F806, v296);
  DgnString::~DgnString(&v332);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v297, v298, v299, v300, v236, &unk_26287F806);
  v301 = *(this + 136);
  if (v301)
  {
    v302 = 0;
    v303 = 0;
    v304 = 0;
    v305 = 0;
    v306 = v326;
    do
    {
      v307 = *(this + 67);
      if (*(v307 + 8 * v302))
      {
        v331 = 0;
        v332 = 0;
        v330 = 0;
        VirtMap::printSize(*(v307 + 8 * v302), v302, (a3 + 2), &v332, &v331, &v330);
        v305 += v332;
        v304 += v331;
        v303 += v330;
        v301 = *(this + 136);
      }

      ++v302;
    }

    while (v302 < v301);
  }

  else
  {
    v305 = 0;
    v304 = 0;
    v303 = 0;
    v301 = 0;
    v306 = v326;
  }

  v308 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v308 = 12;
  }

  v309 = v308 + v305;
  v310 = v308 + v304;
  v311 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v311 = 3;
  }

  v312 = v309 + (*(this + 137) << v311);
  v313 = v310 + (v301 << v311);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 240, &v332);
  if (v333)
  {
    v318 = v332;
  }

  else
  {
    v318 = &unk_26287F806;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v314, v315, v316, v317, v236, &unk_26287F806, v327, v327, v318, v312, v313, v303);
  DgnString::~DgnString(&v332);
  *v306 += v312;
  *a5 += v313;
  *v329 += v303;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 241, &v332);
  if (v333)
  {
    v323 = v332;
  }

  else
  {
    v323 = &unk_26287F806;
  }

  v324 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v319, v320, v321, v322, a3, &unk_26287F806, (35 - a3), (35 - a3), v323, *v306, *a5, *v329);
  DgnString::~DgnString(&v332);
}

uint64_t sizeObject<PrefilterResult *>(uint64_t a1, int a2)
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
          v9 += PrefilterResult::sizeObject(v10, a2);
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

uint64_t IdMgr<unsigned short>::getNextId(uint64_t a1)
{
  if (*(a1 + 32) <= *a1)
  {
    v2 = *(a1 + 6);
    do
    {
      DgnPrimQueue<unsigned short,DgnPrimArray<unsigned short>>::enqueue(a1 + 8, v2);
      v2 = *(a1 + 6) + 1;
      *(a1 + 6) = v2;
    }

    while (*(a1 + 32) <= *a1);
  }

  return DgnPrimQueue<unsigned short,DgnPrimArray<unsigned short>>::dequeue(a1 + 8);
}

AdaptController *DgnDelete<AdaptController>(AdaptController *result)
{
  if (result)
  {
    AdaptController::~AdaptController(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void IdMgr<unsigned short>::recycleId(unsigned int *a1, __int16 a2)
{
  DgnPrimQueue<unsigned short,DgnPrimArray<unsigned short>>::enqueue((a1 + 2), a2);
  v4 = *a1;
  v5 = a1[8];
  if (v5 > *a1)
  {
    v6 = a2 + 1;
    v7 = *(a1 + 3);
    v8 = v5 - 1;
    do
    {
      if (v6 != v7)
      {
        break;
      }

      a1[8] = v8;
      v9 = a1[7];
      if (!v9)
      {
        v9 = a1[4];
      }

      v10 = v9 - 1;
      a1[7] = v9 - 1;
      v11 = v7 - 1;
      *(a1 + 3) = v7 - 1;
      if (v8)
      {
        if (!v10)
        {
          v10 = a1[4];
        }

        LOWORD(v7) = *(*(a1 + 1) + 2 * (v10 - 1)) + 1;
      }

      v6 = v7;
      v7 = v11;
    }

    while (v8-- > v4);
  }
}

AdaptAccumResult *DgnDelete<AdaptAccumResult>(AdaptAccumResult *result)
{
  if (result)
  {
    AdaptAccumResult::~AdaptAccumResult(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

AdaptApplyResult *DgnDelete<AdaptApplyResult>(AdaptApplyResult *result)
{
  if (result)
  {
    AdaptApplyResult::~AdaptApplyResult(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t RecogCtlMgr::newRecogController(uint64_t a1, uint64_t a2, const RecogSpec *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, PrefiltererSearchParamSet *a8, SearchCrossLayerParamSet *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  NextId = IdMgr<unsigned int>::getNextId((a1 + 200));
  for (i = *(a1 + 256); i <= NextId; *(a1 + 256) = i)
  {
    if (i == *(a1 + 260))
    {
      DgnPrimArray<unsigned long long>::reallocElts(a1 + 248, 1, 1);
      i = *(a1 + 256);
    }

    *(*(a1 + 248) + 8 * i++) = 0;
  }

  RecogControllerBase::makeRecogController(a2, a3, a7, a8, a9);
  v22 = v21;
  (*(*v21 + 16))(v21, a4, a5, a6, a10, a11, a12, a13, a14);
  *(*(a1 + 248) + 8 * NextId) = v22;
  v23 = *(a1 + 272);
  if (v23 == *(a1 + 276))
  {
    DgnPrimArray<unsigned int>::reallocElts(a1 + 264, 1, 1);
    v23 = *(a1 + 272);
  }

  *(*(a1 + 264) + 4 * v23) = NextId;
  ++*(a1 + 272);
  return NextId;
}

uint64_t RecogCtlMgr::getRecogController(RecogCtlMgr *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 64) <= a2 || (result = *(*(this + 31) + 8 * a2)) == 0)
  {
    v10 = a2;
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/rctlmgr.cpp", 408, "recogctl/rctlmgr", 8, "%u", a7, a8, a2);
    return *(*(this + 31) + 8 * v10);
  }

  return result;
}

void (***DgnDelete<RecogControllerBase>(void (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    (**result)(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t RecogCtlMgr::getVirtMap(RecogCtlMgr *this, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = (this + 536);
  v5 = *(this + 136);
  v6 = a2 >> 6;
  if (!v5)
  {
    goto LABEL_11;
  }

  v7 = 0;
  v8 = -1;
  do
  {
    result = *(*v4 + 8 * v7);
    if ((*(result + 60) & 1) == 0)
    {
      if (v6 + 1 == *(result + 56))
      {
        goto LABEL_29;
      }

      v8 = v7;
    }

    ++v7;
  }

  while (v5 != v7);
  if (v8 == -1)
  {
LABEL_11:
    v11 = MemChunkAlloc(0x40uLL, 0);
    VirtMap::VirtMap(v11);
    v10 = *(this + 136);
    v12 = v10;
    if (v10 == *(this + 137))
    {
      DgnPrimArray<unsigned long long>::reallocElts(v4, 1, 1);
      v12 = *(this + 136);
    }

    *(*(this + 67) + 8 * v12) = 0;
    *(this + 136) = v12 + 1;
    *(*(this + 67) + 8 * v10) = v11;
  }

  else
  {
    v10 = v8;
  }

  v13 = *(*v4 + 8 * v10);
  v14 = *(v13 + 56);
  if (v6 >= v14)
  {
    v15 = v6 + 1;
    *(v13 + 56) = v15;
    v16 = *(v13 + 12);
    if (v16 <= v6)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(v13, v15 - v16, 0);
    }

    v17 = *(v13 + 8);
    if (v17 <= v15)
    {
      if (v17 <= v6)
      {
        v19 = (a2 >> 6) - v17 + 1;
        v20 = (*v13 + 16 * v17 + 8);
        do
        {
          *(v20 - 1) = 0;
          *v20 = 0;
          v20 += 4;
          --v19;
        }

        while (v19);
      }
    }

    else if (v17 > v15)
    {
      v18 = 16 * v17 - 16;
      do
      {
        --v17;
        DgnPrimFixArray<double>::~DgnPrimFixArray(*v13 + v18);
        v18 -= 16;
      }

      while (v17 > v15);
    }

    *(v13 + 8) = v15;
    v21 = *(v13 + 56);
    v22 = *(v13 + 28);
    v14 = v21;
    if (v21 > v22)
    {
      DgnPrimArray<unsigned long long>::reallocElts(v13 + 16, v21 - v22, 0);
      v14 = *(v13 + 56);
    }

    *(v13 + 24) = v21;
    *(v13 + 52) = 0;
  }

  bzero(*(v13 + 16), 8 * v14);
  result = *(*v4 + 8 * v10);
LABEL_29:
  *(result + 60) = 1;
  return result;
}

uint64_t RecogCtlMgr::releaseVirtMap(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 544);
    if (v2)
    {
      for (i = *(result + 536); *i != a2; i += 8)
      {
        if (!--v2)
        {
          return result;
        }
      }

      *(*i + 60) = 0;
    }
  }

  return result;
}

PrefilterResult *DgnDelete<PrefilterResult>(PrefilterResult *result)
{
  if (result)
  {
    PrefilterResult::~PrefilterResult(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

Sausage *DgnDelete<Sausage>(Sausage *result)
{
  if (result)
  {
    Sausage::~Sausage(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t DgnThreadTrace::add(uint64_t a1, int a2, char a3)
{
  v6 = *(a1 + 24);
  if (v6 == *(a1 + 28))
  {
    DgnPrimArray<char>::reallocElts(a1 + 16, 1, 1);
    v6 = *(a1 + 24);
  }

  *(*(a1 + 16) + v6) = a3;
  ++*(a1 + 24);
  result = mach_absolute_time();
  v8 = result;
  v9 = *(a1 + 40);
  if (v9 == *(a1 + 44))
  {
    result = DgnPrimArray<unsigned long long>::reallocElts(a1 + 32, 1, 1);
    v9 = *(a1 + 40);
  }

  *(*(a1 + 32) + 8 * v9) = v8;
  *(a1 + 40) = v9 + 1;
  v10 = *(a1 + 56);
  if (v10 == *(a1 + 60))
  {
    result = DgnPrimArray<unsigned int>::reallocElts(a1 + 48, 1, 1);
    v10 = *(a1 + 56);
  }

  *(*(a1 + 48) + 4 * v10) = a2;
  ++*(a1 + 56);
  if (*a1 == 1)
  {
    CurrentCpuMicrosec = ClockTimer::getCurrentCpuMicrosec(&ClockTimer::smClockTimer);
    v12 = *(a1 + 72);
    if (v12 == *(a1 + 76))
    {
      DgnPrimArray<unsigned long long>::reallocElts(a1 + 64, 1, 1);
      v12 = *(a1 + 72);
    }

    *(*(a1 + 64) + 8 * v12) = CurrentCpuMicrosec;
    *(a1 + 72) = v12 + 1;
    result = ClockTimer::getCurrentCpuMicrosec(&ClockTimer::smClockTimer);
    v13 = result;
    v14 = *(a1 + 88);
    if (v14 == *(a1 + 92))
    {
      result = DgnPrimArray<unsigned long long>::reallocElts(a1 + 80, 1, 1);
      v14 = *(a1 + 88);
    }

    *(*(a1 + 80) + 8 * v14) = v13;
    *(a1 + 88) = v14 + 1;
  }

  if (*(a1 + 1) == 1)
  {
    result = ClockTimer::getCurrentMicrosec(&ClockTimer::smClockTimer);
    v15 = result;
    v16 = *(a1 + 104);
    if (v16 == *(a1 + 108))
    {
      result = DgnPrimArray<unsigned long long>::reallocElts(a1 + 96, 1, 1);
      v16 = *(a1 + 104);
    }

    *(*(a1 + 96) + 8 * v16) = v15;
    *(a1 + 104) = v16 + 1;
  }

  return result;
}

void *DgnIOwnArray<AdaptController *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<AdaptController>(*(*a1 + v3));
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

void *DgnIOwnArray<RecogControllerBase *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<RecogControllerBase>(*(*a1 + v3));
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

VirtMap *DgnDelete<VirtMap>(VirtMap *result)
{
  if (result)
  {
    VirtMap::~VirtMap(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t DgnPrimQueue<unsigned short,DgnPrimArray<unsigned short>>::sizeObject(_DWORD *a1, unsigned int a2)
{
  v4 = sizeObject<unsigned short>(a1, a2);
  v5 = 12;
  if (a2 == 3)
  {
    v5 = 0;
  }

  result = v5 + v4;
  if (a2 > 3 || a2 == 1)
  {
    v7 = a1[2];
    if (a1[6] < v7)
    {
      v8 = 0;
      v10 = a1[4];
      v9 = a1[5];
      do
      {
        if (v9 >= v10)
        {
          if (v8 >= v10 && v8 < v9)
          {
            goto LABEL_15;
          }
        }

        else if (v8 < v9 || v8 >= v10)
        {
          goto LABEL_15;
        }

        result -= 2;
LABEL_15:
        ++v8;
      }

      while (v7 != v8);
    }
  }

  return result;
}

void DgnPrimQueue<unsigned short,DgnPrimArray<unsigned short>>::enqueue(uint64_t a1, __int16 a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 8);
  if (v4 == v5)
  {
    v6 = *(a1 + 12);
    if (v4 == v6)
    {
      DgnPrimArray<short>::reallocElts(a1, 1, 1);
      v6 = *(a1 + 12);
      v4 = *(a1 + 24);
    }

    *(a1 + 8) = v6;
    v7 = v6 - v4;
    if (v4)
    {
      v8 = *(a1 + 16);
      if (v8)
      {
        memmove((*a1 + 2 * v8 + 2 * v7), (*a1 + 2 * v8), 2 * (v4 - v8));
        v4 = *(a1 + 20);
        *(a1 + 16) += v7;
      }

      else
      {
        *(a1 + 20) = v4;
      }
    }

    else
    {
      *(a1 + 16) = 0;
    }

    bzero((*a1 + 2 * v4), 2 * v7);
    v5 = *(a1 + 8);
    v4 = *(a1 + 24);
  }

  v9 = *(a1 + 20);
  *(*a1 + 2 * v9) = a2;
  if (v9 + 1 == v5)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 + 1;
  }

  *(a1 + 20) = v10;
  *(a1 + 24) = v4 + 1;
}

uint64_t DgnPrimQueue<unsigned short,DgnPrimArray<unsigned short>>::dequeue(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*a1 + 2 * v1);
  *(*a1 + 2 * v1) = 0;
  v3 = v1 + 1;
  *(a1 + 16) = v3;
  v4 = *(a1 + 24) - 1;
  *(a1 + 24) = v4;
  if (v4)
  {
    v5 = *(a1 + 8);
    v6 = v3 >= v5;
    v7 = v3 - v5;
    if (v6)
    {
      *(a1 + 16) = v7;
    }
  }

  else
  {
    *(a1 + 16) = 0;
  }

  return v2;
}

void AdaptAccumResult::~AdaptAccumResult(AdaptAccumResult *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    MemChunkFree(v1, 0);
  }
}

void AdaptApplyResult::~AdaptApplyResult(AdaptApplyResult *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    MemChunkFree(v1, 0);
  }
}

uint64_t SDEnv_GetData(int64_t *a1, EnvMgr *a2, void *a3, unsigned int a4)
{
  v8 = SdapiInsurance::SdapiInsurance(v90, "SDEnv_GetData", 1, 1, 91);
  if (v90[97] != 1)
  {
    goto LABEL_119;
  }

  if (!a2)
  {
    throwBadStringPointer(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  v91 = 0;
  if (gbShowCalls == 1)
  {
    if (gbShowCallPointerArguments)
    {
      v16 = a1;
    }

    else
    {
      v16 = 0;
    }

    if (gbShowCallPointerArguments)
    {
      v17 = a3;
    }

    else
    {
      v17 = 0;
    }

    xlprintf("Entering sdapi call %.500s(Masked:0x%016llx, '%.500s', Masked:0x%016llx, %llu)\n", v9, v10, v11, v12, "SDEnv_GetData", v16, a2, v17, a4);
  }

  if (!a1)
  {
    throwBadLengthForNullPointer(1, "DgnVerifyReadPtr", v10, v11, v12, v13, v14, v15);
  }

  v91 = 0;
  if (!a3 && a4)
  {
    throwBadLengthForNullPointer(a4, "DgnVerifyWritePtr", v10, v11, v12, v13, v14, v15);
  }

  if (!*a2)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdenv.cpp", 48, "sdapi/sdenv", 1, "%s", v14, v15, &errStr_sdapi_sdenv_E_EMPTYNAME);
  }

  v18 = *a1;
  if (*a1 > 5)
  {
    if (v18 <= 7)
    {
      if (v18 == 6)
      {
        v61 = ModelMgr::smpModelMgr;
        v62 = a1[1];
        if (HIDWORD(v62) || (v62 & 0xFFFF0000) != 0)
        {
          throwBadSdapiArgument("SDhUser", v62, v10, v11, v12, v13, v14, v15);
        }

        if (v62 == 0xFFFF || !v62)
        {
          throwBadSdapiArgument("SDhUser", v62, v10, v11, v12, v13, v14, v15);
        }

        EnvMgr = *ModelMgr::getUserOrThrow(v61, v62, v10, v11, v12, v13, v14, v15);
        TopEnvId = EnvMgr::getTopEnvId(EnvMgr);
      }

      else
      {
        if (v18 != 7)
        {
          goto LABEL_111;
        }

        v56 = ChannelMgr::smpChannelMgr;
        v57 = a1[1];
        if (HIDWORD(v57))
        {
          throwBadSdapiArgument("SDhUtt", v57, v10, v11, v12, v13, v14, v15);
        }

        if ((v57 + 1) <= 1)
        {
          throwBadSdapiArgument("SDhUtt", v57, v10, v11, v12, v13, v14, v15);
        }

        Utterance = ChannelMgr::getUtterance(v56, v57, v10, v11, v12, v13, v14, v15);
        EnvMgr = Utterance::getEnvMgr(Utterance);
        TopEnvId = EnvMgr::getTopEnvId(EnvMgr);
      }
    }

    else
    {
      switch(v18)
      {
        case 8:
          v65 = ModelMgr::smpModelMgr;
          v66 = a1[1];
          if (HIDWORD(v66) || (v66 & 0xFFFF0000) != 0)
          {
            throwBadSdapiArgument("SDhVoc", v66, v10, v11, v12, v13, v14, v15);
          }

          if (v66 - 1 >= 0x7B)
          {
            throwBadSdapiArgument("SDhVoc", v66, v10, v11, v12, v13, v14, v15);
          }

          EnvMgr = *ModelMgr::getVocOrThrow(v65, v66, v10, v11, v12, v13, v14, v15);
          TopEnvId = EnvMgr::getTopEnvId(EnvMgr);
          break;
        case 9:
          v77 = ModelMgr::smpModelMgr;
          v78 = a1[1];
          if (HIDWORD(v78) || (v78 & 0xFFFF0000) != 0)
          {
            throwBadSdapiArgument("SDhVoc", a1[1], v10, v11, v12, v13, v14, v15);
          }

          if (v78 - 1 >= 0x7B)
          {
            throwBadSdapiArgument("SDhVoc", v78, v10, v11, v12, v13, v14, v15);
          }

          v85 = *(ModelMgr::getVocOrThrow(v77, v78, v10, v11, v12, v13, v14, v15) + 48);
          EnvMgr = *(v85 + 3);
          v86 = a1[2];
          if ((v86 - 1) >> 32)
          {
            throwBadSdapiArgument("SDhWord", v86, v79, v80, v81, v82, v83, v84);
          }

          if ((v86 - 1) >= 0xFFFFF4)
          {
            throwBadSdapiArgument("SDhWord", v86, v79, v80, v81, v82, v83, v84);
          }

          WordList::verifyVisible(v85, v86 - 1, v79, v80, v81, v82, v83, v84);
          TopEnvId = EnvMgr::getItemEnvId(EnvMgr, v86 - 1);
          break;
        case 10:
          v44 = ParamSetHolderMgr::smpParamSetHolderMgr;
          v45 = a1[1];
          if (HIDWORD(v45))
          {
            throwBadSdapiArgument("SDhParamSetHolder", v45, v10, v11, v12, v13, v14, v15);
          }

          if ((v45 + 1) <= 1)
          {
            throwBadSdapiArgument("SDhParamSetHolder", v45, v10, v11, v12, v13, v14, v15);
          }

          EnvMgr = *(ParamSetHolderMgr::getParamSetHolder(v44, v45, v10, v11, v12, v13, v14, v15) + 1112);
          TopEnvId = EnvMgr::getTopEnvId(EnvMgr);
          break;
        default:
          goto LABEL_111;
      }
    }
  }

  else if (v18 <= 2)
  {
    if (v18 == 1)
    {
      v59 = EnvHolderMgr::smpEnvHolderMgr;
      v60 = a1[1];
      if (v60 == -1)
      {
        LODWORD(v60) = -1;
      }

      else
      {
        if (HIDWORD(v60))
        {
          throwBadSdapiArgument("SDhEnvHolder", v60, v10, v11, v12, v13, v14, v15);
        }

        if ((v60 + 1) <= 1)
        {
          throwBadSdapiArgument("SDhEnvHolder", v60, v10, v11, v12, v13, v14, v15);
        }
      }

      EnvMgr = *EnvHolderMgr::getEnvHolder(v59, v60, v10, v11, v12, v13, v14, v15);
      TopEnvId = EnvMgr::getTopEnvId(EnvMgr);
    }

    else
    {
      if (v18 != 2)
      {
        goto LABEL_111;
      }

      v46 = ModelMgr::smpModelMgr;
      v47 = a1[1];
      if (HIDWORD(v47) || (v47 & 0xFFFF0000) != 0)
      {
        throwBadSdapiArgument("SDhVoc", a1[1], v10, v11, v12, v13, v14, v15);
      }

      if (v47 - 1 >= 0x7B)
      {
        throwBadSdapiArgument("SDhVoc", v47, v10, v11, v12, v13, v14, v15);
      }

      v54 = *(ModelMgr::getVocOrThrow(v46, v47, v10, v11, v12, v13, v14, v15) + 64);
      EnvMgr = *(v54 + 10);
      v55 = a1[2];
      if (HIDWORD(v55) || (v55 & 0xFFFF0000) != 0)
      {
        throwBadSdapiArgument("SDhRule", v55, v48, v49, v50, v51, v52, v53);
      }

      if (v55 == 0xFFFF || !v55)
      {
        throwBadSdapiArgument("SDhRule", v55, v48, v49, v50, v51, v52, v53);
      }

      RuleMgr::verifyRule(v54, v55, 1, v49, v50, v51, v52, v53);
      TopEnvId = EnvMgr::getItemEnvId(EnvMgr, v55);
    }
  }

  else
  {
    switch(v18)
    {
      case 3:
        v63 = ChannelMgr::smpChannelMgr;
        v64 = a1[1];
        if (v64 == -1)
        {
          LODWORD(v64) = -1;
        }

        else
        {
          if (HIDWORD(v64))
          {
            throwBadSdapiArgument("SDhSigProc", v64, v10, v11, v12, v13, v14, v15);
          }

          if ((v64 + 1) <= 1)
          {
            throwBadSdapiArgument("SDhSigProc", v64, v10, v11, v12, v13, v14, v15);
          }
        }

        EnvMgr = *(ChannelMgr::getSigProc(v63, v64, v10, v11, v12, v13, v14, v15) + 424);
        TopEnvId = EnvMgr::getTopEnvId(EnvMgr);
        break;
      case 4:
        v67 = ModelMgr::smpModelMgr;
        v68 = a1[1];
        if (HIDWORD(v68) || (v68 & 0xFFFF0000) != 0)
        {
          throwBadSdapiArgument("SDhVoc", a1[1], v10, v11, v12, v13, v14, v15);
        }

        if (v68 - 1 >= 0x7B)
        {
          throwBadSdapiArgument("SDhVoc", v68, v10, v11, v12, v13, v14, v15);
        }

        v75 = *(ModelMgr::getVocOrThrow(v67, v68, v10, v11, v12, v13, v14, v15) + 56);
        EnvMgr = *(v75 + 94);
        v76 = a1[2];
        if (HIDWORD(v76))
        {
          throwBadSdapiArgument("SDhState", v76, v69, v70, v71, v72, v73, v74);
        }

        if ((v76 + 1) <= 1)
        {
          throwBadSdapiArgument("SDhState", v76, v69, v70, v71, v72, v73, v74);
        }

        StateMgr::verifyVisible(v75, v76, v69, v70, v71, v72, v73, v74);
        TopEnvId = EnvMgr::getItemEnvId(EnvMgr, v76);
        break;
      case 5:
        v19 = ModelMgr::smpModelMgr;
        v20 = a1[1];
        if (HIDWORD(v20) || (v20 & 0xFFFF0000) != 0)
        {
          throwBadSdapiArgument("SDhVoc", a1[1], v10, v11, v12, v13, v14, v15);
        }

        if (v20 - 1 >= 0x7B)
        {
          throwBadSdapiArgument("SDhVoc", v20, v10, v11, v12, v13, v14, v15);
        }

        VocOrThrow = ModelMgr::getVocOrThrow(v19, v20, v10, v11, v12, v13, v14, v15);
        v28 = *(VocOrThrow + 56);
        EnvMgr = *(v28 + 95);
        v30 = a1[2];
        if (HIDWORD(v30))
        {
          throwBadSdapiArgument("SDhState", a1[2], v21, v22, v23, v24, v25, v26);
        }

        if ((v30 + 1) <= 1)
        {
          throwBadSdapiArgument("SDhState", v30, v21, v22, v23, v24, v25, v26);
        }

        StateMgr::verifyVisible(v28, v30, v21, v22, v23, v24, v25, v26);
        v37 = a1[3];
        if ((v37 - 1) >> 32)
        {
          throwBadSdapiArgument("SDhWord", v37, v31, v32, v33, v34, v35, v36);
        }

        if ((v37 - 1) >= 0xFFFFF4)
        {
          throwBadSdapiArgument("SDhWord", v37, v31, v32, v33, v34, v35, v36);
        }

        WordList::verifyVisible(*(VocOrThrow + 48), v37 - 1, v31, v32, v33, v34, v35, v36);
        TopEnvId = EnvMgr::getItemPairEnvId(EnvMgr, v30, v37 - 1);
        break;
      default:
LABEL_111:
        throwBadSdapiArgument("SDEnvContainerType", v18, v10, v11, v12, v13, v14, v15);
LABEL_119:
        v88 = 0;
        goto LABEL_120;
    }
  }

  if (!TopEnvId)
  {
    goto LABEL_119;
  }

  Data = EnvMgr::getData(EnvMgr, TopEnvId, a2, v39, v40, v41, v42, v43);
  if (!Data)
  {
    goto LABEL_119;
  }

  v88 = sdUtilItemMove(1, *Data, *(Data + 8), a3, a4);
LABEL_120:
  SdapiInsurance::~SdapiInsurance(v90);
  return v88;
}

void SDEnv_SetData(int64_t *a1, EnvMgr *a2, const unsigned __int8 *a3, uint64_t a4)
{
  v8 = SdapiInsurance::SdapiInsurance(v281, "SDEnv_SetData", 1, 1, 92);
  if (v281[97] != 1)
  {
    goto LABEL_148;
  }

  if (!a2)
  {
    throwBadStringPointer(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  v282 = 0;
  if (gbShowCalls == 1)
  {
    if (gbShowCallPointerArguments)
    {
      v16 = a1;
    }

    else
    {
      v16 = 0;
    }

    if (gbShowCallPointerArguments)
    {
      v17 = a3;
    }

    else
    {
      v17 = 0;
    }

    xlprintf("Entering sdapi call %.500s(Masked:0x%016llx, '%.500s', Masked:0x%016llx, %llu)\n", v9, v10, v11, v12, "SDEnv_SetData", v16, a2, v17, a4);
  }

  if (!a1)
  {
    throwBadLengthForNullPointer(1, "DgnVerifyReadPtr", v10, v11, v12, v13, v14, v15);
  }

  v282 = 0;
  if (!a3 && a4)
  {
    throwBadLengthForNullPointer(a4, "DgnVerifyReadPtr", v10, v11, v12, v13, v14, v15);
  }

  v282 = 0;
  v18 = *a2;
  if (!*a2)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdenv.cpp", 166, "sdapi/sdenv", 1, "%s", v14, v15, &errStr_sdapi_sdenv_E_EMPTYNAME);
    v18 = *a2;
  }

  if (v18 == 95)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdenv.cpp", 167, "sdapi/sdenv", 2, "%.500s", v14, v15, a2);
  }

  v19 = *a1;
  if (*a1 <= 5)
  {
    if (v19 <= 2)
    {
      if (v19 != 1)
      {
        if (v19 != 2)
        {
          goto LABEL_137;
        }

        v86 = ModelMgr::smpModelMgr;
        v87 = a1[1];
        if (HIDWORD(v87) || (v87 & 0xFFFF0000) != 0)
        {
          throwBadSdapiArgument("SDhVoc", a1[1], v10, v11, v12, v13, v14, v15);
        }

        if (v87 - 1 >= 0x7B)
        {
          throwBadSdapiArgument("SDhVoc", v87, v10, v11, v12, v13, v14, v15);
        }

        v94 = *(ModelMgr::getVocOrThrow(v86, v87, v10, v11, v12, v13, v14, v15) + 64);
        v95 = *(v94 + 10);
        v96 = a1[2];
        if (HIDWORD(v96) || (v96 & 0xFFFF0000) != 0)
        {
          throwBadSdapiArgument("SDhRule", v96, v88, v89, v90, v91, v92, v93);
        }

        if (v96 == 0xFFFF || !v96)
        {
          throwBadSdapiArgument("SDhRule", v96, v88, v89, v90, v91, v92, v93);
        }

        RuleMgr::verifyRule(v94, v96, 1, v89, v90, v91, v92, v93);
        ItemEnvIdMaybeNew = EnvMgr::getItemEnvIdMaybeNew(v95, v96, a4 != 0, v97, v98, v99, v100, v101);
        if (ItemEnvIdMaybeNew)
        {
          EnvMgr::setData(v95, ItemEnvIdMaybeNew, a2, a3, a4, 0, v102, v103);
          if (!a4 && !*(EnvMgr::getNameIds(v95, ItemEnvIdMaybeNew, v105, v106, v107, v108, v109, v110) + 8))
          {
            EnvMgr::killEnv(v95, ItemEnvIdMaybeNew, v111, v112, v113, v114, v115, v116);
            EnvMgr::setItemEnvId(v95, v96, 0, v117, v118, v119, v120, v121);
          }
        }

        goto LABEL_148;
      }

      v139 = EnvHolderMgr::smpEnvHolderMgr;
      v140 = a1[1];
      if (v140 == -1)
      {
        LODWORD(v140) = -1;
      }

      else
      {
        if (HIDWORD(v140))
        {
          throwBadSdapiArgument("SDhEnvHolder", v140, v10, v11, v12, v13, v14, v15);
        }

        if ((v140 + 1) <= 1)
        {
          throwBadSdapiArgument("SDhEnvHolder", v140, v10, v11, v12, v13, v14, v15);
        }
      }

      EnvMgr = *EnvHolderMgr::getEnvHolder(v139, v140, v10, v11, v12, v13, v14, v15);
      TopEnvIdMaybeNew = EnvMgr::getTopEnvIdMaybeNew(EnvMgr, a4 != 0, v247, v248, v249, v250, v251, v252);
      if (!TopEnvIdMaybeNew)
      {
        goto LABEL_148;
      }

      EnvMgr::setData(EnvMgr, TopEnvIdMaybeNew, a2, a3, a4, 0, v253, v254);
      if (a4 || *(EnvMgr::getNameIds(EnvMgr, TopEnvIdMaybeNew, v255, v256, v257, v258, v259, v260) + 8))
      {
        goto LABEL_148;
      }
    }

    else
    {
      if (v19 != 3)
      {
        if (v19 != 4)
        {
          if (v19 == 5)
          {
            v20 = ModelMgr::smpModelMgr;
            v21 = a1[1];
            if (HIDWORD(v21) || (v21 & 0xFFFF0000) != 0)
            {
              throwBadSdapiArgument("SDhVoc", a1[1], v10, v11, v12, v13, v14, v15);
            }

            if (v21 - 1 >= 0x7B)
            {
              throwBadSdapiArgument("SDhVoc", v21, v10, v11, v12, v13, v14, v15);
            }

            VocOrThrow = ModelMgr::getVocOrThrow(v20, v21, v10, v11, v12, v13, v14, v15);
            v29 = *(VocOrThrow + 56);
            v30 = *(v29 + 95);
            v31 = a1[2];
            if (HIDWORD(v31))
            {
              throwBadSdapiArgument("SDhState", a1[2], v22, v23, v24, v25, v26, v27);
            }

            if ((v31 + 1) <= 1)
            {
              throwBadSdapiArgument("SDhState", v31, v22, v23, v24, v25, v26, v27);
            }

            StateMgr::verifyVisible(v29, v31, v22, v23, v24, v25, v26, v27);
            v38 = a1[3];
            if ((v38 - 1) >> 32)
            {
              throwBadSdapiArgument("SDhWord", v38, v32, v33, v34, v35, v36, v37);
            }

            if ((v38 - 1) >= 0xFFFFF4)
            {
              throwBadSdapiArgument("SDhWord", v38, v32, v33, v34, v35, v36, v37);
            }

            WordList::verifyVisible(*(VocOrThrow + 48), v38 - 1, v32, v33, v34, v35, v36, v37);
            ItemPairEnvIdMaybeNew = EnvMgr::getItemPairEnvIdMaybeNew(v30, v31, v38 - 1, a4 != 0, v39, v40, v41, v42);
            if (ItemPairEnvIdMaybeNew)
            {
              EnvMgr::setData(v30, ItemPairEnvIdMaybeNew, a2, a3, a4, 0, v43, v44);
              if (!a4 && !*(EnvMgr::getNameIds(v30, ItemPairEnvIdMaybeNew, v46, v47, v48, v49, v50, v51) + 8))
              {
                EnvMgr::killEnv(v30, ItemPairEnvIdMaybeNew, v52, v53, v54, v55, v56, v57);
                EnvMgr::setItemPairEnvId(v30, v31, v38 - 1, 0, v58, v59, v60, v61);
              }
            }

            goto LABEL_148;
          }

LABEL_137:
          throwBadSdapiArgument("SDEnvContainerType", v19, v10, v11, v12, v13, v14, v15);
          goto LABEL_148;
        }

        v175 = ModelMgr::smpModelMgr;
        v176 = a1[1];
        if (HIDWORD(v176) || (v176 & 0xFFFF0000) != 0)
        {
          throwBadSdapiArgument("SDhVoc", a1[1], v10, v11, v12, v13, v14, v15);
        }

        if (v176 - 1 >= 0x7B)
        {
          throwBadSdapiArgument("SDhVoc", v176, v10, v11, v12, v13, v14, v15);
        }

        v183 = *(ModelMgr::getVocOrThrow(v175, v176, v10, v11, v12, v13, v14, v15) + 56);
        v184 = *(v183 + 94);
        v185 = a1[2];
        if (HIDWORD(v185))
        {
          throwBadSdapiArgument("SDhState", v185, v177, v178, v179, v180, v181, v182);
        }

        if ((v185 + 1) <= 1)
        {
          throwBadSdapiArgument("SDhState", v185, v177, v178, v179, v180, v181, v182);
        }

        StateMgr::verifyVisible(v183, v185, v177, v178, v179, v180, v181, v182);
        v193 = EnvMgr::getItemEnvIdMaybeNew(v184, v185, a4 != 0, v186, v187, v188, v189, v190);
        if (v193)
        {
          EnvMgr::setData(v184, v193, a2, a3, a4, 0, v191, v192);
          if (!a4 && !*(EnvMgr::getNameIds(v184, v193, v194, v195, v196, v197, v198, v199) + 8))
          {
            EnvMgr::killEnv(v184, v193, v200, v201, v202, v203, v204, v205);
            EnvMgr::setItemEnvId(v184, v185, 0, v206, v207, v208, v209, v210);
          }
        }

        goto LABEL_148;
      }

      v157 = ChannelMgr::smpChannelMgr;
      v158 = a1[1];
      if (v158 == -1)
      {
        LODWORD(v158) = -1;
      }

      else
      {
        if (HIDWORD(v158))
        {
          throwBadSdapiArgument("SDhSigProc", v158, v10, v11, v12, v13, v14, v15);
        }

        if ((v158 + 1) <= 1)
        {
          throwBadSdapiArgument("SDhSigProc", v158, v10, v11, v12, v13, v14, v15);
        }
      }

      EnvMgr = *(ChannelMgr::getSigProc(v157, v158, v10, v11, v12, v13, v14, v15) + 424);
      TopEnvIdMaybeNew = EnvMgr::getTopEnvIdMaybeNew(EnvMgr, a4 != 0, v261, v262, v263, v264, v265, v266);
      if (!TopEnvIdMaybeNew)
      {
        goto LABEL_148;
      }

      EnvMgr::setData(EnvMgr, TopEnvIdMaybeNew, a2, a3, a4, 0, v267, v268);
      if (a4 || *(EnvMgr::getNameIds(EnvMgr, TopEnvIdMaybeNew, v269, v270, v271, v272, v273, v274) + 8))
      {
        goto LABEL_148;
      }
    }

LABEL_147:
    EnvMgr::killEnv(EnvMgr, TopEnvIdMaybeNew, v80, v81, v82, v83, v84, v85);
    EnvMgr::setTopEnvId(EnvMgr, 0, v275, v276, v277, v278, v279, v280);
    goto LABEL_148;
  }

  if (v19 <= 7)
  {
    if (v19 == 6)
    {
      v141 = ModelMgr::smpModelMgr;
      v142 = a1[1];
      if (HIDWORD(v142) || (v142 & 0xFFFF0000) != 0)
      {
        throwBadSdapiArgument("SDhUser", v142, v10, v11, v12, v13, v14, v15);
      }

      if (v142 == 0xFFFF || !v142)
      {
        throwBadSdapiArgument("SDhUser", v142, v10, v11, v12, v13, v14, v15);
      }

      EnvMgr = *ModelMgr::getUserOrThrow(v141, v142, v10, v11, v12, v13, v14, v15);
      TopEnvIdMaybeNew = EnvMgr::getTopEnvIdMaybeNew(EnvMgr, a4 != 0, v143, v144, v145, v146, v147, v148);
      if (!TopEnvIdMaybeNew)
      {
        goto LABEL_148;
      }

      EnvMgr::setData(EnvMgr, TopEnvIdMaybeNew, a2, a3, a4, 0, v149, v150);
      if (a4 || *(EnvMgr::getNameIds(EnvMgr, TopEnvIdMaybeNew, v151, v152, v153, v154, v155, v156) + 8))
      {
        goto LABEL_148;
      }
    }

    else
    {
      if (v19 != 7)
      {
        goto LABEL_137;
      }

      v122 = ChannelMgr::smpChannelMgr;
      v123 = a1[1];
      if (HIDWORD(v123))
      {
        throwBadSdapiArgument("SDhUtt", v123, v10, v11, v12, v13, v14, v15);
      }

      if ((v123 + 1) <= 1)
      {
        throwBadSdapiArgument("SDhUtt", v123, v10, v11, v12, v13, v14, v15);
      }

      Utterance = ChannelMgr::getUtterance(v122, v123, v10, v11, v12, v13, v14, v15);
      EnvMgr = Utterance::getEnvMgr(Utterance);
      TopEnvIdMaybeNew = EnvMgr::getTopEnvIdMaybeNew(EnvMgr, a4 != 0, v125, v126, v127, v128, v129, v130);
      if (!TopEnvIdMaybeNew)
      {
        goto LABEL_148;
      }

      EnvMgr::setData(EnvMgr, TopEnvIdMaybeNew, a2, a3, a4, 0, v131, v132);
      if (a4 || *(EnvMgr::getNameIds(EnvMgr, TopEnvIdMaybeNew, v133, v134, v135, v136, v137, v138) + 8))
      {
        goto LABEL_148;
      }
    }

    goto LABEL_147;
  }

  if (v19 == 8)
  {
    v159 = ModelMgr::smpModelMgr;
    v160 = a1[1];
    if (HIDWORD(v160) || (v160 & 0xFFFF0000) != 0)
    {
      throwBadSdapiArgument("SDhVoc", v160, v10, v11, v12, v13, v14, v15);
    }

    if (v160 - 1 >= 0x7B)
    {
      throwBadSdapiArgument("SDhVoc", v160, v10, v11, v12, v13, v14, v15);
    }

    EnvMgr = *ModelMgr::getVocOrThrow(v159, v160, v10, v11, v12, v13, v14, v15);
    TopEnvIdMaybeNew = EnvMgr::getTopEnvIdMaybeNew(EnvMgr, a4 != 0, v161, v162, v163, v164, v165, v166);
    if (!TopEnvIdMaybeNew)
    {
      goto LABEL_148;
    }

    EnvMgr::setData(EnvMgr, TopEnvIdMaybeNew, a2, a3, a4, 0, v167, v168);
    if (a4 || *(EnvMgr::getNameIds(EnvMgr, TopEnvIdMaybeNew, v169, v170, v171, v172, v173, v174) + 8))
    {
      goto LABEL_148;
    }

    goto LABEL_147;
  }

  if (v19 == 9)
  {
    v211 = ModelMgr::smpModelMgr;
    v212 = a1[1];
    if (HIDWORD(v212) || (v212 & 0xFFFF0000) != 0)
    {
      throwBadSdapiArgument("SDhVoc", a1[1], v10, v11, v12, v13, v14, v15);
    }

    if (v212 - 1 >= 0x7B)
    {
      throwBadSdapiArgument("SDhVoc", v212, v10, v11, v12, v13, v14, v15);
    }

    v219 = *(ModelMgr::getVocOrThrow(v211, v212, v10, v11, v12, v13, v14, v15) + 48);
    v220 = *(v219 + 3);
    v221 = a1[2];
    if ((v221 - 1) >> 32)
    {
      throwBadSdapiArgument("SDhWord", v221, v213, v214, v215, v216, v217, v218);
    }

    if ((v221 - 1) >= 0xFFFFF4)
    {
      throwBadSdapiArgument("SDhWord", v221, v213, v214, v215, v216, v217, v218);
    }

    WordList::verifyVisible(v219, v221 - 1, v213, v214, v215, v216, v217, v218);
    v229 = EnvMgr::getItemEnvIdMaybeNew(v220, v221 - 1, a4 != 0, v222, v223, v224, v225, v226);
    if (v229)
    {
      EnvMgr::setData(v220, v229, a2, a3, a4, 0, v227, v228);
      if (!a4 && !*(EnvMgr::getNameIds(v220, v229, v230, v231, v232, v233, v234, v235) + 8))
      {
        EnvMgr::killEnv(v220, v229, v236, v237, v238, v239, v240, v241);
        EnvMgr::setItemEnvId(v220, v221 - 1, 0, v242, v243, v244, v245, v246);
      }
    }

    goto LABEL_148;
  }

  if (v19 != 10)
  {
    goto LABEL_137;
  }

  v62 = ParamSetHolderMgr::smpParamSetHolderMgr;
  v63 = a1[1];
  if (HIDWORD(v63))
  {
    throwBadSdapiArgument("SDhParamSetHolder", v63, v10, v11, v12, v13, v14, v15);
  }

  if ((v63 + 1) <= 1)
  {
    throwBadSdapiArgument("SDhParamSetHolder", v63, v10, v11, v12, v13, v14, v15);
  }

  EnvMgr = *(ParamSetHolderMgr::getParamSetHolder(v62, v63, v10, v11, v12, v13, v14, v15) + 1112);
  TopEnvIdMaybeNew = EnvMgr::getTopEnvIdMaybeNew(EnvMgr, a4 != 0, v65, v66, v67, v68, v69, v70);
  if (TopEnvIdMaybeNew)
  {
    EnvMgr::setData(EnvMgr, TopEnvIdMaybeNew, a2, a3, a4, 0, v71, v72);
    if (!a4 && !*(EnvMgr::getNameIds(EnvMgr, TopEnvIdMaybeNew, v74, v75, v76, v77, v78, v79) + 8))
    {
      goto LABEL_147;
    }
  }

LABEL_148:
  SdapiInsurance::~SdapiInsurance(v281);
}

void sub_262619F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2 == 2)
  {
    v15 = __cxa_begin_catch(a1);
    ApiState::handleDgnException(v15, v16);
  }

  else
  {
    if (a2 != 1)
    {
      SdapiInsurance::~SdapiInsurance(&a14);
      _Unwind_Resume(a1);
    }

    v17 = __cxa_begin_catch(a1);
    ApiState::handleDgnMemoryException(v17);
  }

  __cxa_end_catch();
  JUMPOUT(0x262619F68);
}

uint64_t onePlusHighestSet32(unsigned int a1)
{
  v1 = 32 - __clz(a1);
  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t SearchItf::beginTopRecPassSyncRecogBase(uint64_t result, uint64_t a2)
{
  *(result + 32) = *(a2 + 120);
  *(result + 80) = 0;
  return result;
}

uint64_t SearchItf::endTopRecPassSyncRecogBase(uint64_t this)
{
  *(this + 32) = 0;
  *(this + 80) = 1879048192;
  return this;
}

uint64_t SearchItf::unsetArcGraph(SearchItf *this)
{
  result = (*(*this + 136))(this);
  *(this + 5) = 0;
  *(this + 6) = 0;
  return result;
}

uint64_t SearchItf::setArcGraph(SearchItf *this, const ArcGraph *a2)
{
  *(this + 5) = a2;
  (*(*this + 128))(this);
  result = VocMgr::getVocOrThrow(VocMgr::smpVocMgr, *(*(this + 5) + 174), v3, v4, v5, v6, v7, v8);
  *(this + 6) = *(result + 48);
  return result;
}

void SearchItf::SearchItf(SearchItf *this)
{
  *this = &unk_287522DA8;
  *(this + 8) = xmmword_26287F820;
  *(this + 3) = 0x4E2000000000;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 16) = 0;
  *(this + 34) = -1;
  *(this + 9) = 0x4E2000000064;
  *(this + 20) = 1879048192;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
}

void SearchItf::~SearchItf(SearchItf *this)
{
  *this = &unk_287522DA8;
  v1 = this + 88;
  DgnIArray<Utterance *>::~DgnIArray(this + 120);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1);
}

void SearchItf::printSize(SearchItf *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 104, &v142);
  if (v143)
  {
    v15 = v142;
  }

  else
  {
    v15 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, v12, v13, v14, a3, &byte_262899963, a3, &byte_262899963, v15);
  DgnString::~DgnString(&v142);
  if (a2 != -1)
  {
    xlprintf("%d ", v16, v17, v18, v19, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v16, v17, v18, v19, a3, &byte_262899963);
  v20 = (a3 + 1);
  v21 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 105, &v142);
  if (v143)
  {
    v26 = v142;
  }

  else
  {
    v26 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v22, v23, v24, v25, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v26, 4, 4, 0);
  DgnString::~DgnString(&v142);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 106, &v142);
  if (v143)
  {
    v31 = v142;
  }

  else
  {
    v31 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v27, v28, v29, v30, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v31, 4, 4, 0);
  DgnString::~DgnString(&v142);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 107, &v142);
  if (v143)
  {
    v36 = v142;
  }

  else
  {
    v36 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, v33, v34, v35, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v36, 4, 4, 0);
  DgnString::~DgnString(&v142);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 108, &v142);
  if (v143)
  {
    v41 = v142;
  }

  else
  {
    v41 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, v38, v39, v40, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v41, 4, 4, 0);
  DgnString::~DgnString(&v142);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 110, &v142);
  if (v143)
  {
    v46 = v142;
  }

  else
  {
    v46 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v43, v44, v45, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v46, 4, 4, 0);
  DgnString::~DgnString(&v142);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 112, &v142);
  if (v143)
  {
    v51 = v142;
  }

  else
  {
    v51 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v47, v48, v49, v50, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v51, 4, 4, 0);
  DgnString::~DgnString(&v142);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v52 = 4;
  }

  else
  {
    v52 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 113, &v142);
  if (v143)
  {
    v57 = v142;
  }

  else
  {
    v57 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, v54, v55, v56, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v57, v52, v52, 0);
  DgnString::~DgnString(&v142);
  *a4 += v52;
  *a5 += v52;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v58 = 4;
  }

  else
  {
    v58 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 114, &v142);
  if (v143)
  {
    v63 = v142;
  }

  else
  {
    v63 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v59, v60, v61, v62, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v63, v58, v58, 0);
  DgnString::~DgnString(&v142);
  *a4 += v58;
  *a5 += v58;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v64 = 4;
  }

  else
  {
    v64 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 115, &v142);
  if (v143)
  {
    v69 = v142;
  }

  else
  {
    v69 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v65, v66, v67, v68, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v69, v64, v64, 0);
  DgnString::~DgnString(&v142);
  *a4 += v64;
  *a5 += v64;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v70 = 4;
  }

  else
  {
    v70 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 116, &v142);
  if (v143)
  {
    v75 = v142;
  }

  else
  {
    v75 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v71, v72, v73, v74, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v75, v70, v70, 0);
  DgnString::~DgnString(&v142);
  *a4 += v70;
  *a5 += v70;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 117, &v142);
  if (v143)
  {
    v80 = v142;
  }

  else
  {
    v80 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v76, v77, v78, v79, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v80, 4, 4, 0);
  DgnString::~DgnString(&v142);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 119, &v142);
  if (v143)
  {
    v85 = v142;
  }

  else
  {
    v85 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v81, v82, v83, v84, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v85, 2, 2, 0);
  DgnString::~DgnString(&v142);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 121, &v142);
  if (v143)
  {
    v90 = v142;
  }

  else
  {
    v90 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v86, v87, v88, v89, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v90, 4, 4, 0);
  DgnString::~DgnString(&v142);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 123, &v142);
  if (v143)
  {
    v95 = v142;
  }

  else
  {
    v95 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v91, v92, v93, v94, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v95, 4, 4, 0);
  v140 = a3;
  v96 = a6;
  DgnString::~DgnString(&v142);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 125, &v142);
  if (v143)
  {
    v101 = v142;
  }

  else
  {
    v101 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v97, v98, v99, v100, v20, &byte_262899963, v21, v21, v101, 4, 4, 0);
  DgnString::~DgnString(&v142);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v102 = 12;
  }

  else
  {
    v102 = 16;
  }

  v103 = *(this + 24);
  v104 = *(this + 25);
  if (v104 >= v103)
  {
    v105 = 0;
    if (v103 > 0)
    {
      v102 += 4 * (v103 - 1) + 4;
    }

    v106 = v102 + 4 * (v104 - v103);
  }

  else
  {
    v105 = 4 * v103;
    v106 = v102;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 127, &v142);
  if (v143)
  {
    v111 = v142;
  }

  else
  {
    v111 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v107, v108, v109, v110, v20, &byte_262899963, v21, v21, v111, v106, v102, v105);
  DgnString::~DgnString(&v142);
  *a4 += v106;
  *a5 += v102;
  *v96 += v105;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v112 = 4;
  }

  else
  {
    v112 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 128, &v142);
  if (v143)
  {
    v117 = v142;
  }

  else
  {
    v117 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v113, v114, v115, v116, v20, &byte_262899963, v21, v21, v117, v112, v112, 0);
  DgnString::~DgnString(&v142);
  *a4 += v112;
  *a5 += v112;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v118 = 4;
  }

  else
  {
    v118 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 129, &v142);
  if (v143)
  {
    v123 = v142;
  }

  else
  {
    v123 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v119, v120, v121, v122, v20, &byte_262899963, v21, v21, v123, v118, v118, 0);
  DgnString::~DgnString(&v142);
  *a4 += v118;
  *a5 += v118;
  v124 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v124 = 12;
  }

  v125 = *(this + 32);
  v126 = 8 * v125;
  if (v125 <= 0)
  {
    v126 = 0;
  }

  v127 = v126 + v124;
  v128 = v126 + v124 + 8 * (*(this + 33) - v125);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 131, &v142);
  if (v143)
  {
    v133 = v142;
  }

  else
  {
    v133 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v129, v130, v131, v132, v20, &byte_262899963, v21, v21, v133, v128, v127, 0);
  DgnString::~DgnString(&v142);
  *a4 += v128;
  *a5 += v127;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/srchitf.cpp", 132, &v142);
  if (v143)
  {
    v138 = v142;
  }

  else
  {
    v138 = &byte_262899963;
  }

  v139 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v134, v135, v136, v137, v140, &byte_262899963, (35 - v140), (35 - v140), v138, *a4, *a5, *v96);
  DgnString::~DgnString(&v142);
}

void sub_26261ABA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t SearchItf::normalizeBestAndComputeEstimatedThresh(SearchItf *this, int a2, int a3)
{
  if (a3 == 20000 || a2 <= -1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a3;
  }

  v6 = *(this + 20) + v5;
  *(this + 20) = v6;
  v7 = *(this + 24);
  if (v7 == *(this + 25))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 88, 1, 1);
    v7 = *(this + 24);
  }

  *(*(this + 11) + 4 * v7) = v6;
  ++*(this + 24);
  *(*(this + 4) + 256) = v5;
  return 20000;
}

void MrecInitModule_adaptctl_recogctl(void)
{
  if (!gParDebugShowSegmentation)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugShowSegmentation", byte_26287F84B, byte_26287F84B, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugShowSegmentation = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowSegmentation);
  }

  if (!gParDebugAdaptationStartup)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugAdaptationStartup", byte_26287F84B, byte_26287F84B, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugAdaptationStartup = v3;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugAdaptationStartup);
  }

  if (!gParDebugAdaptationAccumulate)
  {
    v4 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v4, "DebugAdaptationAccumulate", byte_26287F84B, byte_26287F84B, 0, 0, 0);
    *v5 = &unk_287527EA0;
    gParDebugAdaptationAccumulate = v5;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugAdaptationAccumulate);
  }

  if (!gParDebugAdaptationApply)
  {
    v6 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v6, "DebugAdaptationApply", byte_26287F84B, byte_26287F84B, 0, 0, 0);
    *v7 = &unk_287527EA0;
    gParDebugAdaptationApply = v7;
    v8 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v8, &gParDebugAdaptationApply);
  }
}

void AdaptControllerResults::~AdaptControllerResults(AdaptControllerResults *this)
{
  DgnDelete<Segmentation>(*(this + 4));
  *(this + 4) = 0;
  DgnDelete<PelScoreCacheData>(*(this + 5));
  *(this + 5) = 0;
  DgnDelete<PelScoreCacheData>(*(this + 6));
  *(this + 6) = 0;
  DgnDelete<NBestChoiceList>(*(this + 7));
  *(this + 7) = 0;
  PhnMgr::~PhnMgr((this + 64));
  DgnString::~DgnString((this + 16));
}

PelScoreCacheData *DgnDelete<PelScoreCacheData>(PelScoreCacheData *result)
{
  if (result)
  {
    PelScoreCacheData::~PelScoreCacheData(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void AdaptControllerResults::printSize(AdaptControllerResults *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 427, &v81);
  if (v82)
  {
    v16 = v81;
  }

  else
  {
    v16 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26287F84B, a3, &unk_26287F84B, v16);
  DgnString::~DgnString(&v81);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26287F84B);
  v21 = (a3 + 1);
  v78 = a3;
  v22 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 429, &v81);
  if (v82)
  {
    v27 = v81;
  }

  else
  {
    v27 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v24, v25, v26, v21, &unk_26287F84B, v22, v22, v27, 4, 4, 0);
  DgnString::~DgnString(&v81);
  *a4 += 4;
  *a5 += 4;
  v28 = sizeObject(this + 4, 0);
  v29 = sizeObject(this + 4, 1);
  v30 = sizeObject(this + 4, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 431, &v81);
  if (v82)
  {
    v35 = v81;
  }

  else
  {
    v35 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v31, v32, v33, v34, v21, &unk_26287F84B, v22, v22, v35, v28, v29, v30);
  DgnString::~DgnString(&v81);
  *a4 += v28;
  *a5 += v29;
  *a6 += v30;
  v36 = sizeObject(this + 16);
  v37 = sizeObject(this + 16);
  v38 = sizeObject(this + 16);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 433, &v81);
  if (v82)
  {
    v43 = v81;
  }

  else
  {
    v43 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v39, v40, v41, v42, v21, &unk_26287F84B, v22, v22, v43, v36, v37, v38);
  DgnString::~DgnString(&v81);
  *a4 += v36;
  *a5 += v37;
  *a6 += v38;
  v44 = *(this + 4);
  if (v44)
  {
    v80 = 0;
    v81 = 0;
    v79 = 0;
    Segmentation::printSize(v44, 0xFFFFFFFFLL, v21, &v81, &v80, &v79);
    *a4 += v81;
    *a5 += v80;
    *a6 += v79;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v45 = 4;
  }

  else
  {
    v45 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 435, &v81);
  if (v82)
  {
    v50 = v81;
  }

  else
  {
    v50 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v46, v47, v48, v49, v21, &unk_26287F84B, v22, v22, v50, v45, v45, 0);
  DgnString::~DgnString(&v81);
  *a4 += v45;
  *a5 += v45;
  v80 = 0;
  v81 = 0;
  v79 = 0;
  PhnMgr::printSize((this + 64), 0xFFFFFFFFLL, v21, &v81, &v80, &v79);
  *a4 += v81;
  *a5 += v80;
  *a6 += v79;
  v51 = *(this + 5);
  if (v51)
  {
    v80 = 0;
    v81 = 0;
    v79 = 0;
    PelScoreCacheData::printSize(v51, 0xFFFFFFFFLL, v21, &v81, &v80, &v79);
    *a4 += v81;
    *a5 += v80;
    *a6 += v79;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v52 = 4;
  }

  else
  {
    v52 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 438, &v81);
  if (v82)
  {
    v57 = v81;
  }

  else
  {
    v57 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, v54, v55, v56, v21, &unk_26287F84B, v22, v22, v57, v52, v52, 0);
  DgnString::~DgnString(&v81);
  *a4 += v52;
  *a5 += v52;
  v58 = *(this + 6);
  if (v58)
  {
    v80 = 0;
    v81 = 0;
    v79 = 0;
    PelScoreCacheData::printSize(v58, 0xFFFFFFFFLL, v21, &v81, &v80, &v79);
    *a4 += v81;
    *a5 += v80;
    *a6 += v79;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v59 = 4;
  }

  else
  {
    v59 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 440, &v81);
  if (v82)
  {
    v64 = v81;
  }

  else
  {
    v64 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v60, v61, v62, v63, v21, &unk_26287F84B, v22, v22, v64, v59, v59, 0);
  DgnString::~DgnString(&v81);
  *a4 += v59;
  *a5 += v59;
  v65 = *(this + 7);
  if (v65)
  {
    v80 = 0;
    v81 = 0;
    v79 = 0;
    NBestChoiceList::printSize(v65, 0xFFFFFFFFLL, v21, &v81, &v80, &v79);
    *a4 += v81;
    *a5 += v80;
    *a6 += v79;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v66 = 4;
  }

  else
  {
    v66 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 442, &v81);
  if (v82)
  {
    v71 = v81;
  }

  else
  {
    v71 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v67, v68, v69, v70, v21, &unk_26287F84B, v22, v22, v71, v66, v66, 0);
  DgnString::~DgnString(&v81);
  *a4 += v66;
  *a5 += v66;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 444, &v81);
  if (v82)
  {
    v76 = v81;
  }

  else
  {
    v76 = &unk_26287F84B;
  }

  v77 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v72, v73, v74, v75, v78, &unk_26287F84B, (35 - v78), (35 - v78), v76, *a4, *a5, *a6);
  DgnString::~DgnString(&v81);
}

void sub_26261B5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void AdaptAccumStats::printSize(AdaptAccumStats *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 455, &v70);
  if (v71)
  {
    v16 = v70;
  }

  else
  {
    v16 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26287F84B, a3, &unk_26287F84B, v16);
  DgnString::~DgnString(&v70);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26287F84B);
  v21 = SnapTime::sizeObject(this, 0);
  v22 = SnapTime::sizeObject(this, 1);
  v23 = SnapTime::sizeObject(this, 3);
  v24 = (a3 + 1);
  v69 = a3;
  v25 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 457, &v70);
  if (v71)
  {
    v30 = v70;
  }

  else
  {
    v30 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, v27, v28, v29, v24, &unk_26287F84B, v25, v25, v30, v21, v22, v23);
  DgnString::~DgnString(&v70);
  *a4 += v21;
  *a5 += v22;
  *a6 += v23;
  v31 = SnapTime::sizeObject(this + 32, 0);
  v32 = SnapTime::sizeObject(this + 32, 1);
  v33 = SnapTime::sizeObject(this + 32, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 459, &v70);
  if (v71)
  {
    v38 = v70;
  }

  else
  {
    v38 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, v35, v36, v37, v24, &unk_26287F84B, v25, v25, v38, v31, v32, v33);
  DgnString::~DgnString(&v70);
  *a4 += v31;
  *a5 += v32;
  *a6 += v33;
  v39 = SnapTime::sizeObject(this + 64, 0);
  v40 = SnapTime::sizeObject(this + 64, 1);
  v41 = SnapTime::sizeObject(this + 64, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 461, &v70);
  if (v71)
  {
    v46 = v70;
  }

  else
  {
    v46 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v43, v44, v45, v24, &unk_26287F84B, v25, v25, v46, v39, v40, v41);
  DgnString::~DgnString(&v70);
  *a4 += v39;
  *a5 += v40;
  *a6 += v41;
  v47 = SnapTime::sizeObject(this + 96, 0);
  v48 = SnapTime::sizeObject(this + 96, 1);
  v49 = SnapTime::sizeObject(this + 96, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 463, &v70);
  if (v71)
  {
    v54 = v70;
  }

  else
  {
    v54 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v50, v51, v52, v53, v24, &unk_26287F84B, v25, v25, v54, v47, v48, v49);
  DgnString::~DgnString(&v70);
  *a4 += v47;
  *a5 += v48;
  *a6 += v49;
  v55 = SnapTime::sizeObject(this + 128, 0);
  v56 = SnapTime::sizeObject(this + 128, 1);
  v57 = SnapTime::sizeObject(this + 128, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 465, &v70);
  if (v71)
  {
    v62 = v70;
  }

  else
  {
    v62 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v58, v59, v60, v61, v24, &unk_26287F84B, v25, v25, v62, v55, v56, v57);
  DgnString::~DgnString(&v70);
  *a4 += v55;
  *a5 += v56;
  *a6 += v57;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 466, &v70);
  if (v71)
  {
    v67 = v70;
  }

  else
  {
    v67 = &unk_26287F84B;
  }

  v68 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v63, v64, v65, v66, v69, &unk_26287F84B, (35 - v69), (35 - v69), v67, *a4, *a5, *a6);
  DgnString::~DgnString(&v70);
}

void sub_26261BA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void AdaptApplyStats::printSize(AdaptApplyStats *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 585, &v70);
  if (v71)
  {
    v16 = v70;
  }

  else
  {
    v16 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26287F84B, a3, &unk_26287F84B, v16);
  DgnString::~DgnString(&v70);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26287F84B);
  v21 = SnapTime::sizeObject(this, 0);
  v22 = SnapTime::sizeObject(this, 1);
  v23 = SnapTime::sizeObject(this, 3);
  v24 = (a3 + 1);
  v69 = a3;
  v25 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 587, &v70);
  if (v71)
  {
    v30 = v70;
  }

  else
  {
    v30 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, v27, v28, v29, v24, &unk_26287F84B, v25, v25, v30, v21, v22, v23);
  DgnString::~DgnString(&v70);
  *a4 += v21;
  *a5 += v22;
  *a6 += v23;
  v31 = SnapTime::sizeObject(this + 32, 0);
  v32 = SnapTime::sizeObject(this + 32, 1);
  v33 = SnapTime::sizeObject(this + 32, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 589, &v70);
  if (v71)
  {
    v38 = v70;
  }

  else
  {
    v38 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, v35, v36, v37, v24, &unk_26287F84B, v25, v25, v38, v31, v32, v33);
  DgnString::~DgnString(&v70);
  *a4 += v31;
  *a5 += v32;
  *a6 += v33;
  v39 = SnapTime::sizeObject(this + 64, 0);
  v40 = SnapTime::sizeObject(this + 64, 1);
  v41 = SnapTime::sizeObject(this + 64, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 591, &v70);
  if (v71)
  {
    v46 = v70;
  }

  else
  {
    v46 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v43, v44, v45, v24, &unk_26287F84B, v25, v25, v46, v39, v40, v41);
  DgnString::~DgnString(&v70);
  *a4 += v39;
  *a5 += v40;
  *a6 += v41;
  v47 = SnapTime::sizeObject(this + 96, 0);
  v48 = SnapTime::sizeObject(this + 96, 1);
  v49 = SnapTime::sizeObject(this + 96, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 593, &v70);
  if (v71)
  {
    v54 = v70;
  }

  else
  {
    v54 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v50, v51, v52, v53, v24, &unk_26287F84B, v25, v25, v54, v47, v48, v49);
  DgnString::~DgnString(&v70);
  *a4 += v47;
  *a5 += v48;
  *a6 += v49;
  v55 = SnapTime::sizeObject(this + 128, 0);
  v56 = SnapTime::sizeObject(this + 128, 1);
  v57 = SnapTime::sizeObject(this + 128, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 595, &v70);
  if (v71)
  {
    v62 = v70;
  }

  else
  {
    v62 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v58, v59, v60, v61, v24, &unk_26287F84B, v25, v25, v62, v55, v56, v57);
  DgnString::~DgnString(&v70);
  *a4 += v55;
  *a5 += v56;
  *a6 += v57;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 596, &v70);
  if (v71)
  {
    v67 = v70;
  }

  else
  {
    v67 = &unk_26287F84B;
  }

  v68 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v63, v64, v65, v66, v69, &unk_26287F84B, (35 - v69), (35 - v69), v67, *a4, *a5, *a6);
  DgnString::~DgnString(&v70);
}

void sub_26261BEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void AdaptController::~AdaptController(AdaptController *this)
{
  AdaptController::releaseAccumulators(this);
  if (*(this + 10))
  {
    SigProc = ChannelMgr::getSigProc(ChannelMgr::smpChannelMgr, *(this + 1), v2, v3, v4, v5, v6, v7);
    SigProc::decrementAdapterCount(SigProc, v9, v10, v11, v12, v13, v14, v15);
    UserOrThrow = ModelMgr::getUserOrThrow(ModelMgr::smpModelMgr, *(this + 1), v16, v17, v18, v19, v20, v21);
    User::decrementAdapterCount(UserOrThrow, v23, v24, v25, v26, v27, v28, v29);
  }

  v30 = *(this + 1);
  if (v30)
  {
    --*(v30 + 36);
    *(this + 1) = 0;
  }

  v31 = *(this + 2);
  if (v31)
  {
    --*(v31 + 36);
    *(this + 2) = 0;
  }

  v32 = *(this + 3);
  if (v32)
  {
    --*(v32 + 36);
    *(this + 3) = 0;
  }

  DgnDelete<PelScorer>(*(this + 4));
  *(this + 4) = 0;
  v33 = *(this + 20);
  if (v33)
  {
    MemChunkFree(v33, 0);
  }

  *(this + 20) = 0;
  v34 = *(this + 21);
  if (v34)
  {
    MemChunkFree(v34, 0);
  }

  *(this + 21) = 0;
  DgnIOwnArray<WeightAccum *>::releaseAll(this + 96);
  DgnArray<DgnIOwnArray<BasisAccum *>>::releaseAll(this + 80);
  AdaptConfig::clear(this + 5);
}

void *AdaptController::releaseAccumulators(AdaptController *this)
{
  DgnDelete<DgnPrimArray<unsigned int>>(*(this + 18));
  *(this + 18) = 0;
  DgnDelete<DgnPrimArray<unsigned int>>(*(this + 19));
  *(this + 19) = 0;
  DgnDelete<ConstrainedTransAccMgr>(*(this + 7));
  *(this + 7) = 0;
  DgnDelete<IntruderMgr>(*(this + 8));
  *(this + 8) = 0;
  DgnDelete<WarpChooser>(*(this + 9));
  *(this + 9) = 0;
  DgnDelete<DurAccum>(*(this + 14));
  *(this + 14) = 0;
  DgnArray<DgnIOwnArray<BasisAccum *>>::releaseAll(this + 80);
  result = DgnIOwnArray<WeightAccum *>::releaseAll(this + 96);
  *(this + 137) = 0;
  return result;
}

void AdaptController::printSize(AdaptController *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 798, &v191);
  if (v192)
  {
    v16 = v191;
  }

  else
  {
    v16 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26287F84B, a3, &unk_26287F84B, v16);
  DgnString::~DgnString(&v191);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26287F84B);
  v21 = (a3 + 1);
  v22 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 799, &v191);
  if (v192)
  {
    v27 = v191;
  }

  else
  {
    v27 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v24, v25, v26, (a3 + 1), &unk_26287F84B, (34 - a3), (34 - a3), v27, 2, 2, 0);
  DgnString::~DgnString(&v191);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 800, &v191);
  if (v192)
  {
    v32 = v191;
  }

  else
  {
    v32 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, v29, v30, v31, (a3 + 1), &unk_26287F84B, (34 - a3), (34 - a3), v32, 2, 2, 0);
  DgnString::~DgnString(&v191);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 801, &v191);
  if (v192)
  {
    v37 = v191;
  }

  else
  {
    v37 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, v34, v35, v36, (a3 + 1), &unk_26287F84B, (34 - a3), (34 - a3), v37, 4, 4, 0);
  v188 = a3;
  DgnString::~DgnString(&v191);
  *a4 += 4;
  *a5 += 4;
  v38 = *(this + 4);
  if (v38)
  {
    v190 = 0;
    v191 = 0;
    v189 = 0;
    (*(*v38 + 32))(v38, 0xFFFFFFFFLL, (a3 + 1), &v191, &v190, &v189);
    *a4 += v191;
    *a5 += v190;
    *a6 += v189;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v39 = 4;
  }

  else
  {
    v39 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 803, &v191);
  if (v192)
  {
    v44 = v191;
  }

  else
  {
    v44 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, v41, v42, v43, v21, &unk_26287F84B, v22, v22, v44, v39, v39, 0);
  DgnString::~DgnString(&v191);
  *a4 += v39;
  *a5 += v39;
  v45 = sizeObject(this + 40, 0);
  v46 = sizeObject(this + 40, 1);
  v47 = sizeObject(this + 40, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 804, &v191);
  if (v192)
  {
    v52 = v191;
  }

  else
  {
    v52 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v48, v49, v50, v51, v21, &unk_26287F84B, v22, v22, v52, v45, v46, v47);
  DgnString::~DgnString(&v191);
  *a4 += v45;
  *a5 += v46;
  *a6 += v47;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v53 = 4;
  }

  else
  {
    v53 = 8;
  }

  v54 = *(this + 1);
  if (v54)
  {
    v55 = (*(*v54 + 104))(v54, 0) + v53;
    v56 = *(this + 1);
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v53 = 4;
    }

    else
    {
      v53 = 8;
    }

    if (v56 && (v53 += (*(*v56 + 104))(v56, 1), (v57 = *(this + 1)) != 0))
    {
      v58 = (*(*v57 + 104))(v57, 3);
    }

    else
    {
      v58 = 0;
    }
  }

  else
  {
    v58 = 0;
    v55 = v53;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 806, &v191);
  if (v192)
  {
    v63 = v191;
  }

  else
  {
    v63 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v59, v60, v61, v62, v21, &unk_26287F84B, v22, v22, v63, v55, v53, v58);
  DgnString::~DgnString(&v191);
  *a4 += v55;
  *a5 += v53;
  *a6 += v58;
  v64 = *(this + 8);
  if (v64)
  {
    v190 = 0;
    v191 = 0;
    v189 = 0;
    IntruderMgr::printSize(v64, 0xFFFFFFFFLL, v21, &v191, &v190, &v189);
    *a4 += v191;
    *a5 += v190;
    *a6 += v189;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v65 = 4;
  }

  else
  {
    v65 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 808, &v191);
  if (v192)
  {
    v70 = v191;
  }

  else
  {
    v70 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v66, v67, v68, v69, v21, &unk_26287F84B, v22, v22, v70, v65, v65, 0);
  DgnString::~DgnString(&v191);
  *a4 += v65;
  *a5 += v65;
  v71 = *(this + 9);
  if (v71)
  {
    v190 = 0;
    v191 = 0;
    v189 = 0;
    WarpChooser::printSize(v71, 0xFFFFFFFFLL, v21, &v191, &v190, &v189);
    *a4 += v191;
    *a5 += v190;
    *a6 += v189;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v72 = 4;
  }

  else
  {
    v72 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 810, &v191);
  if (v192)
  {
    v77 = v191;
  }

  else
  {
    v77 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v73, v74, v75, v76, v21, &unk_26287F84B, v22, v22, v77, v72, v72, 0);
  DgnString::~DgnString(&v191);
  *a4 += v72;
  *a5 += v72;
  v78 = *(this + 7);
  if (v78)
  {
    v190 = 0;
    v191 = 0;
    v189 = 0;
    ConstrainedTransAccMgr::printSize(v78, 0xFFFFFFFFLL, v21, &v191, &v190, &v189);
    *a4 += v191;
    *a5 += v190;
    *a6 += v189;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v79 = 4;
  }

  else
  {
    v79 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 812, &v191);
  if (v192)
  {
    v84 = v191;
  }

  else
  {
    v84 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v80, v81, v82, v83, v21, &unk_26287F84B, v22, v22, v84, v79, v79, 0);
  DgnString::~DgnString(&v191);
  *a4 += v79;
  *a5 += v79;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 814, &v191);
  if (v192)
  {
    v89 = v191;
  }

  else
  {
    v89 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v85, v86, v87, v88, v21, &unk_26287F84B, v22, v22, v89, 4, 4, 0);
  DgnString::~DgnString(&v191);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 816, &v191);
  if (v192)
  {
    v94 = v191;
  }

  else
  {
    v94 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v90, v91, v92, v93, v21, &unk_26287F84B, v22, v22, v94, 4, 4, 0);
  DgnString::~DgnString(&v191);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 818, &v191);
  if (v192)
  {
    v99 = v191;
  }

  else
  {
    v99 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v95, v96, v97, v98, v21, &unk_26287F84B, v22, v22, v99, 8, 8, 0);
  DgnString::~DgnString(&v191);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 819, &v191);
  if (v192)
  {
    v104 = v191;
  }

  else
  {
    v104 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v100, v101, v102, v103, v21, &unk_26287F84B, v22, v22, v104, 1, 1, 0);
  DgnString::~DgnString(&v191);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 821, &v191);
  if (v192)
  {
    v109 = v191;
  }

  else
  {
    v109 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v105, v106, v107, v108, v21, &unk_26287F84B, v22, v22, v109, 1, 1, 0);
  DgnString::~DgnString(&v191);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 823, &v191);
  if (v192)
  {
    v114 = v191;
  }

  else
  {
    v114 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v110, v111, v112, v113, v21, &unk_26287F84B, v22, v22, v114, 1, 1, 0);
  DgnString::~DgnString(&v191);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 824, &v191);
  if (v192)
  {
    v119 = v191;
  }

  else
  {
    v119 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v115, v116, v117, v118, v21, &unk_26287F84B, v22, v22, v119, 1, 1, 0);
  DgnString::~DgnString(&v191);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v120 = 4;
  }

  else
  {
    v120 = 8;
  }

  v121 = *(this + 18);
  if (v121)
  {
    v122 = sizeObject(v121, 0) + v120;
    v123 = *(this + 18);
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v120 = 4;
    }

    else
    {
      v120 = 8;
    }

    if (v123 && (v120 += sizeObject(v123, 1), (v124 = *(this + 18)) != 0))
    {
      v125 = sizeObject(v124, 3);
    }

    else
    {
      v125 = 0;
    }
  }

  else
  {
    v125 = 0;
    v122 = v120;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 825, &v191);
  if (v192)
  {
    v130 = v191;
  }

  else
  {
    v130 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v126, v127, v128, v129, v21, &unk_26287F84B, v22, v22, v130, v122, v120, v125);
  DgnString::~DgnString(&v191);
  *a4 += v122;
  *a5 += v120;
  *a6 += v125;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v131 = 4;
  }

  else
  {
    v131 = 8;
  }

  v132 = *(this + 19);
  if (v132)
  {
    v133 = sizeObject(v132, 0) + v131;
    v134 = *(this + 19);
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v131 = 4;
    }

    else
    {
      v131 = 8;
    }

    if (v134 && (v131 += sizeObject(v134, 1), (v135 = *(this + 19)) != 0))
    {
      v136 = sizeObject(v135, 3);
    }

    else
    {
      v136 = 0;
    }
  }

  else
  {
    v136 = 0;
    v133 = v131;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 827, &v191);
  if (v192)
  {
    v141 = v191;
  }

  else
  {
    v141 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v137, v138, v139, v140, v21, &unk_26287F84B, v22, v22, v141, v133, v131, v136);
  DgnString::~DgnString(&v191);
  *a4 += v133;
  *a5 += v131;
  *a6 += v136;
  v142 = sizeObject<DgnIOwnArray<BasisAccum *>>(this + 80, 0);
  v143 = sizeObject<DgnIOwnArray<BasisAccum *>>(this + 80, 1);
  v144 = sizeObject<DgnIOwnArray<BasisAccum *>>(this + 80, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 829, &v191);
  if (v192)
  {
    v149 = v191;
  }

  else
  {
    v149 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v145, v146, v147, v148, v21, &unk_26287F84B, v22, v22, v149, v142, v143, v144);
  DgnString::~DgnString(&v191);
  *a4 += v142;
  *a5 += v143;
  *a6 += v144;
  v150 = sizeObject<WeightAccum *>(this + 96, 0);
  v151 = sizeObject<WeightAccum *>(this + 96, 1);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 831, &v191);
  if (v192)
  {
    v156 = v191;
  }

  else
  {
    v156 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v152, v153, v154, v155, v21, &unk_26287F84B, v22, v22, v156, v150, v151, 0);
  DgnString::~DgnString(&v191);
  *a4 += v150;
  *a5 += v151;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v157 = 4;
  }

  else
  {
    v157 = 8;
  }

  v158 = *(this + 14);
  if (v158)
  {
    v159 = DurAccum::sizeObject(v158, 0) + v157;
    v160 = *(this + 14);
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v157 = 4;
    }

    else
    {
      v157 = 8;
    }

    if (v160 && (v157 += DurAccum::sizeObject(v160, 1), (v161 = *(this + 14)) != 0))
    {
      v162 = DurAccum::sizeObject(v161, 3);
    }

    else
    {
      v162 = 0;
    }
  }

  else
  {
    v162 = 0;
    v159 = v157;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 832, &v191);
  if (v192)
  {
    v167 = v191;
  }

  else
  {
    v167 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v163, v164, v165, v166, v21, &unk_26287F84B, v22, v22, v167, v159, v157, v162);
  DgnString::~DgnString(&v191);
  *a4 += v159;
  *a5 += v157;
  *a6 += v162;
  v168 = *(this + 20);
  if (v168)
  {
    v190 = 0;
    v191 = 0;
    v189 = 0;
    AdaptAccumStats::printSize(v168, 0xFFFFFFFFLL, v21, &v191, &v190, &v189);
    *a4 += v191;
    *a5 += v190;
    *a6 += v189;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v169 = 4;
  }

  else
  {
    v169 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 834, &v191);
  if (v192)
  {
    v174 = v191;
  }

  else
  {
    v174 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v170, v171, v172, v173, v21, &unk_26287F84B, v22, v22, v174, v169, v169, 0);
  DgnString::~DgnString(&v191);
  *a4 += v169;
  *a5 += v169;
  v175 = *(this + 21);
  if (v175)
  {
    v190 = 0;
    v191 = 0;
    v189 = 0;
    AdaptApplyStats::printSize(v175, 0xFFFFFFFFLL, v21, &v191, &v190, &v189);
    *a4 += v191;
    *a5 += v190;
    *a6 += v189;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v176 = 4;
  }

  else
  {
    v176 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 836, &v191);
  if (v192)
  {
    v181 = v191;
  }

  else
  {
    v181 = &unk_26287F84B;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v177, v178, v179, v180, v21, &unk_26287F84B, v22, v22, v181, v176, v176, 0);
  DgnString::~DgnString(&v191);
  *a4 += v176;
  *a5 += v176;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/adaptctl.cpp", 837, &v191);
  if (v192)
  {
    v186 = v191;
  }

  else
  {
    v186 = &unk_26287F84B;
  }

  v187 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v182, v183, v184, v185, v188, &unk_26287F84B, (35 - v188), (35 - v188), v186, *a4, *a5, *a6);
  DgnString::~DgnString(&v191);
}

void sub_26261D0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<DgnIOwnArray<BasisAccum *>>(uint64_t a1, int a2)
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
          v2 += sizeObject<BasisAccum *>(*a1 + v8, a2);
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

  DgnIOwnArray<BasisAccum *>::releaseAll(v10);
  return v2;
}

uint64_t sizeObject<WeightAccum *>(uint64_t a1, int a2)
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
          v9 += WeightAccum::sizeObject(v10, a2);
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

ConstrainedTransAccMgr *DgnDelete<ConstrainedTransAccMgr>(ConstrainedTransAccMgr *result)
{
  if (result)
  {
    ConstrainedTransAccMgr::~ConstrainedTransAccMgr(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

IntruderMgr *DgnDelete<IntruderMgr>(IntruderMgr *result)
{
  if (result)
  {
    IntruderMgr::~IntruderMgr(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

WarpChooser *DgnDelete<WarpChooser>(WarpChooser *result)
{
  if (result)
  {
    WarpChooser::~WarpChooser(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t DgnDelete<DurAccum>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    DgnPrimArray<unsigned int>::~DgnPrimArray(result + 24);
    DgnPrimArray<unsigned int>::~DgnPrimArray((v1 + 1));

    return MemChunkFree(v1, 0);
  }

  return result;
}

void *DgnArray<DgnIOwnArray<BasisAccum *>>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = v2 + 1;
    v4 = 16 * v2 - 16;
    do
    {
      DgnIOwnArray<BasisAccum *>::releaseAll(*a1 + v4);
      --v3;
      v4 -= 16;
    }

    while (v3 > 1);
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

void *DgnIOwnArray<WeightAccum *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<WeightAccum>(*(*a1 + v3));
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

IntruderSet *DgnDelete<IntruderSet>(IntruderSet *result)
{
  if (result)
  {
    IntruderSet::~IntruderSet(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t *Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::findBucket(uint64_t a1, uint64_t a2)
{
  v4 = CWIDAC::computeHash(a2);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (-1640531527 * v4) >> -v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(a1 + 80) + 8 * v6);
  v8 = *v7;
  if (*v7)
  {
    v9 = v4;
    do
    {
      v10 = v8;
      if (*(v8 + 8) == v9 && CWIDAC::operator==(v8 + 12, a2))
      {
        break;
      }

      v8 = *v10;
      v7 = v10;
    }

    while (*v10);
  }

  return v7;
}

uint64_t HmmNet::getNonSilOutPort(HmmNet *this, unsigned int a2)
{
  v2 = *(this + 10);
  if (v2 < 2)
  {
    v3 = 0;
  }

  else if (v2 - 3 >= 2)
  {
    v4 = v2 == 2;
    v3 = 1;
    if (!v4)
    {
      v3 = 255;
    }
  }

  else
  {
    v3 = *(*(this + 11) + a2);
  }

  return *(*(this + 9) + 8 * v3);
}

uint64_t sizeObject<BasisAccum *>(uint64_t a1, int a2)
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
          v9 += BasisAccum::sizeObject(v10, a2);
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

void *DgnIOwnArray<BasisAccum *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<BasisAccum>(*(*a1 + v3));
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

uint64_t DgnDelete<BasisAccum>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    DgnPrimFixArray<double>::~DgnPrimFixArray(result + 32);
    DgnPrimFixArray<double>::~DgnPrimFixArray((v1 + 2));

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t DgnDelete<WeightAccum>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    DgnPrimFixArray<double>::~DgnPrimFixArray(result + 8);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void MrecInitModule_fstsrch_fst(void)
{
  if (!gParDebugFstBestPath)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugFstBestPath", &unk_26287F8B0, &unk_26287F8B0, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugFstBestPath = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugFstBestPath);
  }

  if (!gParDebugFstRecognition)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugFstRecognition", &unk_26287F8B0, &unk_26287F8B0, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugFstRecognition = v3;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugFstRecognition);
  }

  if (!gParDebugFstSeeding)
  {
    v4 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v4, "DebugFstSeeding", &unk_26287F8B0, &unk_26287F8B0, 0, 0, 0);
    *v5 = &unk_287527EA0;
    gParDebugFstSeeding = v5;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugFstSeeding);
  }

  if (!gParDebugFstSeedingMini)
  {
    v6 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v6, "DebugFstSeedingMini", &unk_26287F8B0, &unk_26287F8B0, 0, 0, 0);
    *v7 = &unk_287527EA0;
    gParDebugFstSeedingMini = v7;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugFstSeedingMini);
  }

  if (!gParDebugFstScoring)
  {
    v8 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v8, "DebugFstScoring", &unk_26287F8B0, &unk_26287F8B0, 0, 0, 0);
    *v9 = &unk_287527EA0;
    gParDebugFstScoring = v9;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugFstScoring);
  }

  if (!gParDebugFstDumpTraces)
  {
    v10 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v10, "DebugFstDumpTraces", &unk_26287F8B0, &unk_26287F8B0, 0, 0, 0);
    *v11 = &unk_287527EA0;
    gParDebugFstDumpTraces = v11;
    v12 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v12, &gParDebugFstDumpTraces);
  }
}

int64x2_t FstSearchLateLatticeHashBackoff::advanceDeltas(FstSearchLateLatticeHashBackoff *this, int a2, int a3, SearchStats *a4, int a5)
{
  v94[0] = a2;
  v92 = 0u;
  v93 = 0u;
  SnapTime::recordTime(&v92, 1, 0, 0, 0);
  v90.n128_u64[0] = 0xFFFFFFFF00000000;
  v90.n128_u32[2] = -1;
  v90.n128_u16[6] = -2;
  v91 = 0;
  *(this + 58) = a3;
  v10 = *(this + 2);
  v70 = (this + 232);
  v11 = *(this + 50);
  if (v11)
  {
    v69 = a4;
    for (i = 0; i < v11; ++i)
    {
      v13 = *(this + 24) + 24 * i;
      v14 = *(v13 + 4);
      v15 = *(this + 5);
      if (*(v15 + 160) != v14)
      {
        if (*(v15 + 140) > v14)
        {
          v16 = *(this + 19) + *(this + 58) >= 5000 ? 5000 : *(this + 19) + *(this + 58);
          ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(this + 4), *(v13 + 12), *v13, v16);
          v18 = *(this + 58);
          if (ScoreAllowBackoff_updateNodeInSequence - v10 <= v18)
          {
            if (v18 > ScoreAllowBackoff_updateNodeInSequence)
            {
              *v70 = ScoreAllowBackoff_updateNodeInSequence;
            }

            v19 = (*(this + 24) + 24 * i);
            v20 = v19[1].n128_u64[0];
            v90 = *v19;
            v91 = v20;
            v90.n128_u32[0] = ScoreAllowBackoff_updateNodeInSequence;
            FstSearchLateLatticeHashBackoff::maybeInsertHashedToken(this, &v90);
          }
        }

        v21 = v14;
        do
        {
          v22 = *(this + 5);
          v23 = *(v22 + 152);
          v24 = *(v23 + 4 * v21);
          v25 = *(v23 + 4 * (v21 + 1));
          v26 = *(v22 + 140);
          if (v26 <= v25)
          {
            if (v26 <= v14 && (*(this + 356) & 1) != 0)
            {
              v33 = (v24 & 0xFFFFF) <= 0xFFFF3 ? v24 & 0xFFFFF : v24 & 0xFFFFF | 0xF00000;
              if (v33 != 16777210)
              {
                DgnString::DgnString(&v87);
                ArcGraph::getNameAndHumanReadablePron(*(this + 5), v33, &v87, v34, v35, v36, v37, v38);
                v43 = &unk_26287F8B0;
                if (v87.i32[2])
                {
                  v43 = v87.i64[0];
                }

                xprintf("Seed from state %d score %d trace %d, %s\n", v39, v40, v41, v42, v14, *(*(this + 24) + 24 * i), *(*(this + 24) + 24 * i + 8), v43);
                MiniFst::seed(this + 240, *(*(this + 24) + 24 * i), *(*(this + 24) + 24 * i + 20), *(*(this + 24) + 24 * i + 8), v25);
                DgnString::~DgnString(&v87);
              }
            }
          }

          else
          {
            v27 = (v24 >> 20) & 0x3FF;
            if (*(this + 19) + *(this + 58) >= 5000)
            {
              v28 = 5000;
            }

            else
            {
              v28 = *(this + 19) + *(this + 58);
            }

            v29 = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(this + 4), *(v23 + 4 * v21), *(*(this + 24) + 24 * i) + v27, v28);
            v30 = *(this + 58);
            if (v29 - v10 <= v30)
            {
              if (v30 > v29)
              {
                *v70 = v29;
              }

              v31 = (*(this + 24) + 24 * i);
              v32 = v31[1].n128_u64[0];
              v90 = *v31;
              HIDWORD(v91) = HIDWORD(v32);
              v90.n128_u64[0] = __PAIR64__(v25, v29);
              v90.n128_u16[6] = v24;
              LODWORD(v91) = v32 + v27;
              FstSearchLateLatticeHashBackoff::maybeInsertHashedToken(this, &v90);
            }
          }

          v21 += 2;
        }

        while ((v24 & 0x80000000) == 0);
        v11 = *(this + 50);
      }
    }

    a3 = *v70;
    a4 = v69;
  }

  v89 = a3 + v10;
  if (*(this + 356) == 1)
  {
    MiniFst::updateFrame(this + 240, v70, v10, a2);
  }

  v87 = 0u;
  v88 = 0u;
  SnapTime::recordTime(&v87, 1, 0, 0, 0);
  v87 = vsubq_s64(v87, v92);
  v88 = vsubq_s64(v88, v93);
  v44 = *(this + 13);
  v45 = vaddq_s64(v44[1], v88);
  *v44 = vaddq_s64(*v44, v87);
  v44[1] = v45;
  v85 = 0u;
  v86 = 0u;
  SnapTime::recordTime(&v85, 1, 0, 0, 0);
  FstSearchLateLatticeHashBackoff::applyCutoffOnEmitting(this, *(this + 4), &v89);
  v83 = 0u;
  v84 = 0u;
  SnapTime::recordTime(&v83, 1, 0, 0, 0);
  v46 = vsubq_s64(v83, v85);
  v47 = *(this + 13);
  v48 = v47[3];
  v49 = vaddq_s64(v47[2], v46);
  v83 = v46;
  v84 = vsubq_s64(v84, v86);
  v50 = vaddq_s64(v48, v84);
  v47[2] = v49;
  v47[3] = v50;
  v81 = 0u;
  v82 = 0u;
  SnapTime::recordTime(&v81, 1, 0, 0, 0);
  v51 = *(this + 24);
  v52 = *(this + 26);
  *(this + 24) = v52;
  *(this + 26) = v51;
  LODWORD(v51) = *(this + 51);
  v53 = *(this + 27);
  *(this + 25) = v53;
  *(this + 54) = 0;
  *(this + 55) = v51;
  v54 = *(this + 6);
  if (v54 && v54 < v53)
  {
    mrec_nth_element<FstSearchLateLatticeHashBackoffcmpTok>(v52, v54, v53);
  }

  v79 = 0u;
  v80 = 0u;
  SnapTime::recordTime(&v79, 1, 0, 0, 0);
  v55 = vsubq_s64(v79, v81);
  v56 = *(this + 13);
  v57 = v56[5];
  v58 = vaddq_s64(v56[4], v55);
  v79 = v55;
  v80 = vsubq_s64(v80, v82);
  v59 = vaddq_s64(v57, v80);
  v56[4] = v58;
  v56[5] = v59;
  v77 = 0u;
  v78 = 0u;
  SnapTime::recordTime(&v77, 1, 0, 0, 0);
  VirtMap::setEmpty(*(this + 14));
  v75 = 0u;
  v76 = 0u;
  SnapTime::recordTime(&v75, 1, 0, 0, 0);
  v60 = vsubq_s64(v75, v77);
  v61 = *(this + 13);
  v62 = v61[9];
  v63 = vaddq_s64(v61[8], v60);
  v75 = v60;
  v76 = vsubq_s64(v76, v78);
  v64 = vaddq_s64(v62, v76);
  v61[8] = v63;
  v61[9] = v64;
  v73 = 0u;
  v74 = 0u;
  SnapTime::recordTime(&v73, 1, 0, 0, 0);
  *(this + 54) = 0;
  v65 = *(this + 50);
  *(this + 38) = v65;
  if (a4)
  {
    *(a4 + 2) += v65;
    if (*(a4 + 2) > v65)
    {
      LODWORD(v65) = *(a4 + 2);
    }

    *(a4 + 2) = v65;
  }

  if (*(this + 356) == 1)
  {
    FstSearchLateLatticeHashBackoff::seedFromMiniFst(this, v94);
  }

  if (a5)
  {
    FstSearchLateLatticeHashBackoff::propagateNulls(this, v89, a2, a4);
  }

  *(this + 56) = a2;
  v71 = 0u;
  v72 = 0u;
  SnapTime::recordTime(&v71, 1, 0, 0, 0);
  v66 = *(this + 13);
  result = vaddq_s64(v66[6], vsubq_s64(v71, v73));
  v68 = vaddq_s64(v66[7], vsubq_s64(v72, v74));
  v66[6] = result;
  v66[7] = v68;
  return result;
}

uint64_t PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(PelScoreCache *this, uint64_t a2, int a3, int a4)
{
  if (*(this + 494) != 1)
  {
    v8 = PelScoreCache::computePelScoreNoCache(this, a2);
    return (v8 + a3 - *(this + 64));
  }

  v7 = *(this + 8);
  v8 = *(v7 + 2 * a2);
  if (v8 != 20046)
  {
    return (v8 + a3 - *(this + 64));
  }

  v9 = *(**(this + 2) + 2 * a2);
  if (v9 == 0xFFFF)
  {
    goto LABEL_14;
  }

  v11 = *(v7 + 2 * v9);
  if (v11 == 20046)
  {
    if (*(this + 492) == 1)
    {
      v12 = *(**(this + 3) + 2 * v9);
      if (*(*(this + 18) + 4 * v12) == -1)
      {
        PelScoreCache::computeGenScores(this, *(**(this + 3) + 2 * v9));
      }

      v11 = PelScoreCache::computePelScoreFromGenScores(this, v9, v12);
    }

    else
    {
      v11 = PelScoreCache::computePelScore(this, *(**(this + 2) + 2 * a2));
    }
  }

  result = (a3 - *(this + 64) + v11);
  if (result < a4)
  {
LABEL_14:
    if (*(this + 492) == 1)
    {
      v14 = *(**(this + 3) + 2 * a2);
      if (*(*(this + 18) + 4 * v14) == -1)
      {
        PelScoreCache::computeGenScores(this, *(**(this + 3) + 2 * a2));
      }

      v8 = PelScoreCache::computePelScoreFromGenScores(this, a2, v14);
    }

    else
    {
      v8 = PelScoreCache::computePelScore(this, a2);
    }

    return (v8 + a3 - *(this + 64));
  }

  return result;
}

__n128 FstSearchLateLatticeHashBackoff::maybeInsertHashedToken(uint64_t a1, __n128 *a2)
{
  v4 = a2->n128_u32[1];
  v5 = v4 >> 6;
  v6 = v4 & 0x3F;
  v7 = *(a1 + 112);
  v8 = v7[2];
  v9 = *(v8 + 8 * v5);
  if (!v9)
  {
    v10 = *(v7 + 12);
    v11 = *(v7 + 13);
    v12 = *v7;
    if (v10 >= v11)
    {
      v13 = v12 + 16 * v11;
      if (!*(v13 + 8))
      {
        *v13 = MemChunkAlloc(0x100uLL, 0);
        *(v13 + 8) = 64;
        v12 = *v7;
        v8 = v7[2];
        LODWORD(v10) = *(v7 + 12);
        v11 = *(v7 + 13);
      }

      *(v8 + 8 * v5) = v12 + 16 * v11;
      *(v7 + 13) = v11 + 1;
    }

    else
    {
      *(v8 + 8 * v5) = v12 + 16 * v10;
    }

    *(v7 + 12) = v10 + 1;
    v14 = *(v7[2] + 8 * v5);
    memset(*v14, 255, 4 * *(v14 + 8));
    v16 = *(v7 + 10);
    if (v16 == *(v7 + 11))
    {
      DgnPrimArray<unsigned int>::reallocElts((v7 + 4), 1, 1);
      v16 = *(v7 + 10);
    }

    *(v7[4] + 4 * v16) = v5;
    ++*(v7 + 10);
    v9 = *(v7[2] + 8 * v5);
  }

  v17 = *v9;
  v18 = *(v17 + 4 * v6);
  if (v18 == -1)
  {
    v20 = *(a1 + 216);
    *(v17 + 4 * v6) = v20;
    if (v20 == *(a1 + 220))
    {
      DgnArray<CWIDAC>::reallocElts(a1 + 208, 1, 1);
      v20 = *(a1 + 216);
    }

    v21 = (*(a1 + 208) + 24 * v20);
    result = *a2;
    v21[1].n128_u64[0] = a2[1].n128_u64[0];
    *v21 = result;
    ++*(a1 + 216);
  }

  else
  {
    v19 = (*(a1 + 208) + 24 * v18);
    if (v19->n128_u32[0] > a2->n128_u32[0])
    {
      result = *a2;
      v19[1].n128_u64[0] = a2[1].n128_u64[0];
      *v19 = result;
    }
  }

  return result;
}

uint64_t FstSearchLateLatticeHashBackoff::applyCutoffOnEmitting(uint64_t this, unsigned int a2, int *a3)
{
  v4 = *(this + 216);
  if (v4 > a2)
  {
    v6 = this;
    v7 = a2;
    this = mrec_nth_element<FstSearchLateLatticeHashBackoffcmpTok>(*(this + 208), a2, v4);
    v8 = *(*(v6 + 208) + 24 * a2);
    if (*a3 > v8)
    {
      *a3 = v8;
    }

    v9 = *(v6 + 220);
    if (a2 > v9)
    {
      this = DgnArray<CWIDAC>::reallocElts(v6 + 208, a2 - v9, 0);
    }

    v10 = *(v6 + 216);
    if (v10 < a2)
    {
      v11 = v7 - v10;
      v12 = (*(v6 + 208) + 24 * v10 + 16);
      do
      {
        *(v12 - 2) = 0xFFFFFFFF00000000;
        *(v12 - 2) = -1;
        *(v12 - 2) = -2;
        *v12 = 0;
        v12 += 3;
        --v11;
      }

      while (v11);
    }

    *(v6 + 216) = a2;
  }

  return this;
}

uint64_t mrec_nth_element<FstSearchLateLatticeHashBackoffcmpTok>(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = 0;
    do
    {
      v4 = (result + 24 * v3);
      v5 = (result + 24 * (v3 + (a3 >> 1)));
      if ((result & 7) != 0)
      {
        v6 = 24;
        v7 = (result + 24 * v3);
        do
        {
          v8 = *v7;
          *v7++ = *v5;
          *v5++ = v8;
          --v6;
        }

        while (v6);
      }

      else
      {
        for (i = 0; i != 6; i += 2)
        {
          v10 = *&v4[i];
          *&v4[i] = *&v5[i * 4];
          *&v5[i * 4] = v10;
        }
      }

      v11 = (result - 24 + 24 * (v3 + a3));
      v12 = (result + 24 * v3);
      do
      {
        v13 = v12 + 6;
        while (1)
        {
          v12 = v13;
          if (v13 >= v11)
          {
            break;
          }

          v13 += 6;
          if (*v12 > *v4)
          {
            v14 = v12;
            while (*v11 >= *v4)
            {
              v11 -= 6;
              if (v12 >= v11)
              {
                goto LABEL_22;
              }
            }

            v15 = 0;
            if ((result & 7) != 0)
            {
              do
              {
                v16 = *v14;
                *v14++ = *(v11 + v15);
                *(v11 + v15++) = v16;
              }

              while (v15 != 24);
            }

            else
            {
              do
              {
                v17 = *v14;
                *v14 = *(v11 + v15);
                v14 += 8;
                *(v11 + v15) = v17;
                v15 += 8;
              }

              while (v15 != 24);
            }

            v11 -= 6;
            break;
          }
        }

LABEL_22:
        ;
      }

      while (v12 < v11);
      if (*v12 > *v4)
      {
        v12 -= 6;
      }

      if (v12 > v4)
      {
        v18 = 0;
        if ((result & 7) != 0)
        {
          do
          {
            v19 = *(v12 + v18);
            *(v12 + v18) = *(v4 + v18);
            *(v4 + v18++) = v19;
          }

          while (v18 != 24);
        }

        else
        {
          do
          {
            v20 = *(v12 + v18);
            *(v12 + v18) = *(v4 + v18);
            *(v4 + v18) = v20;
            v18 += 8;
          }

          while (v18 != 24);
        }
      }

      v21 = (v12 - v4) / 0x18uLL;
      if (v21 <= a2)
      {
        if (v21 >= a2)
        {
          return result;
        }

        v22 = v21 + 1;
        v3 += v22;
        a2 -= v22;
        v21 = a3 - v22;
      }

      a3 = v21;
    }

    while (v21 > 1);
  }

  return result;
}

uint64_t FstSearchLateLatticeHashBackoff::seedFromMiniFst(uint64_t this, int *a2)
{
  if (*(this + 356) == 1)
  {
    v2 = this;
    v3 = *(this + 264);
    if (v3 >= *(this + 20))
    {
      v3 = *(this + 20);
    }

    if (v3)
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = (*(v2 + 256) + v4);
        v7 = *v6;
        v8 = v6[4];
        v9 = v6[5];
        v10 = v6[6];
        v11 = v6[7];
        LODWORD(v6) = v6[2];
        v23[0] = 0;
        v23[1] = 0;
        v12 = -2 - v6;
        if (v11 == 16777213)
        {
          v13 = (*(v2 + 160) + 36 * v12);
          v11 = 16777209;
          if (*v13 == 16777209)
          {
            v12 = *(*(v2 + 176) + 16 * v13[2] + 12);
          }
        }

        v14 = *a2;
        v15 = *(v2 + 168);
        if (v15 == *(v2 + 172))
        {
          DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(v2 + 160, 1, 1);
          LODWORD(v15) = *(v2 + 168);
        }

        v16 = *(v2 + 160);
        v17 = v16 + 36 * v15;
        *v17 = v11;
        *(v17 + 4) = v14;
        *(v17 + 8) = 0xFFFFFFFFLL;
        *(v17 + 16) = v7;
        *(v17 + 20) = v12;
        *(v17 + 24) = v8;
        *(v17 + 28) = v9;
        *(v17 + 32) = -2;
        v18 = *(v2 + 168);
        *(v2 + 168) = v18 + 1;
        *(v16 + 36 * v18 + 12) = 1;
        v19 = *(v2 + 200);
        if (v19 == *(v2 + 204))
        {
          DgnArray<CWIDAC>::reallocElts(v2 + 192, 1, 1);
          LODWORD(v19) = *(v2 + 200);
        }

        v20 = *(v2 + 192) + 24 * v19;
        *v20 = v7;
        *(v20 + 4) = v10;
        *(v20 + 8) = v18;
        *(v20 + 12) = -2;
        *(v20 + 16) = v8;
        *(v20 + 20) = v9;
        ++*(v2 + 200);
        this = DgnPrimArray<unsigned int>::~DgnPrimArray(v23);
        ++v5;
        v21 = *(v2 + 264);
        if (v21 >= *(v2 + 20))
        {
          v21 = *(v2 + 20);
        }

        v4 += 36;
      }

      while (v5 < v21);
    }
  }

  return this;
}

void sub_26261E7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t FstSearchLateLatticeHashBackoff::propagateNulls(uint64_t this, int a2, int a3, SearchStats *a4)
{
  v4 = this;
  v5 = *(this + 168);
  v6 = *(this + 200);
  if (!v6)
  {
    v39 = *(this + 152);
    if (a4)
    {
      goto LABEL_48;
    }

    goto LABEL_49;
  }

  v50 = *(this + 168);
  v51 = a4;
  v7 = 0;
  v58 = a2;
  do
  {
    v8 = *(*(v4 + 192) + 24 * v7 + 4);
    v9 = *(v4 + 40);
    if (*(v9 + 160) != v8 && (*(v9 + 140) <= v8 || (*(*(v9 + 152) + 4 * v8) & 0x40000000) != 0))
    {
      v10 = *(*(v4 + 192) + 24 * v7 + 4);
      v57 = v7;
      do
      {
        v11 = *(v4 + 40);
        v12 = *(v11 + 152);
        v13 = *(v12 + 4 * v10);
        v14 = *(v12 + 4 * (v10 + 1));
        v15 = *(v11 + 140);
        if (v15 > v14)
        {
          goto LABEL_38;
        }

        v16 = (v13 & 0xFFFFF) <= 0xFFFF3 ? v13 & 0xFFFFF : v13 & 0xFFFFF | 0xF00000;
        if (v15 <= v8 && v16 != 16777210)
        {
          goto LABEL_38;
        }

        v18 = (v13 >> 20) & 0x3FF;
        v19 = *(v4 + 192);
        v20 = v19 + 24 * v7;
        v21 = *v20 + v18;
        if (v21 > a2)
        {
          goto LABEL_38;
        }

        v22 = *(v20 + 8);
        this = *(v20 + 12);
        v23 = *(v20 + 14);
        v24 = *(v20 + 16);
        v25 = *(v20 + 20);
        v26 = v24 + v18;
        if (v16 == 16777210)
        {
          if (v6 != *(v4 + 204))
          {
            goto LABEL_37;
          }
        }

        else
        {
          v27 = *v20 - v24;
          if (v16 == 16777214)
          {
            v28 = 0;
          }

          else
          {
            v27 = *v20 + v18;
            v28 = v24 + v18;
          }

          if (v16 == 16777214)
          {
            v29 = v24 + v18;
          }

          else
          {
            v29 = 0;
          }

          if (v16 == 16777209)
          {
            v30 = v24 + v18;
          }

          else
          {
            v21 = v27;
            v30 = v28;
          }

          if (v16 == 16777209)
          {
            v29 = 0;
          }

          else
          {
            v25 = v16 + 2 * v25 + 1;
          }

          v31 = *(v4 + 168);
          if (v31 == *(v4 + 172))
          {
            v59 = *(v20 + 12);
            v54 = *(v20 + 8);
            v55 = *(v20 + 14);
            v52 = v30;
            v53 = v29;
            DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(v4 + 160, 1, 1);
            v30 = v52;
            v29 = v53;
            v22 = v54;
            v23 = v55;
            a2 = v58;
            this = v59;
            LODWORD(v31) = *(v4 + 168);
          }

          v32 = *(v4 + 160) + 36 * v31;
          *v32 = v16;
          *(v32 + 4) = a3;
          *(v32 + 8) = 0xFFFFFFFFLL;
          *(v32 + 16) = v21;
          *(v32 + 20) = v22;
          *(v32 + 24) = v30;
          *(v32 + 28) = v25;
          *(v32 + 32) = this;
          v22 = *(v4 + 168);
          *(v4 + 168) = v22 + 1;
          v21 += v29;
          v6 = *(v4 + 200);
          if (v6 != *(v4 + 204))
          {
            goto LABEL_36;
          }
        }

        v60 = v25;
        v33 = this;
        v34 = v8;
        v35 = v26;
        v36 = v23;
        v37 = v22;
        DgnArray<CWIDAC>::reallocElts(v4 + 192, 1, 1);
        v22 = v37;
        v23 = v36;
        v26 = v35;
        v8 = v34;
        a2 = v58;
        v25 = v60;
        v7 = v57;
        this = v33;
        v6 = *(v4 + 200);
LABEL_36:
        v19 = *(v4 + 192);
LABEL_37:
        v38 = v19 + 24 * v6;
        *v38 = v21;
        *(v38 + 4) = v14;
        *(v38 + 8) = v22;
        *(v38 + 12) = this;
        *(v38 + 14) = v23;
        *(v38 + 16) = v26;
        *(v38 + 20) = v25;
        v6 = *(v4 + 200) + 1;
        *(v4 + 200) = v6;
LABEL_38:
        v10 += 2;
      }

      while ((v13 & 0x80000000) == 0);
    }

    ++v7;
  }

  while (v7 < v6);
  v39 = *(v4 + 152);
  if (v6 > v39)
  {
    this = mrec_qsort_r<FstSearchLateLatticeHashBackoffActiveToken>((*(v4 + 192) + 24 * v39), v6 - v39, 24);
    v39 = *(v4 + 152);
    v6 = *(v4 + 200);
  }

  a4 = v51;
  v5 = v50;
  if (v39 < v6)
  {
    v40 = v39;
    v41 = v39 - 1;
    v42 = 24 * v39;
    do
    {
      v43 = *(v4 + 192);
      v44 = (v43 + v42);
      if (*(v43 + v42 + 4) != *(v43 + 24 * v41 + 4))
      {
        v45 = v43 + 24 * v39;
        v46 = *v44;
        *(v45 + 16) = *(v44 + 2);
        *v45 = v46;
        ++v39;
        v6 = *(v4 + 200);
      }

      ++v40;
      ++v41;
      v42 += 24;
    }

    while (v40 < v6);
  }

  if (v51)
  {
LABEL_48:
    *(a4 + 1) += *(v4 + 168) - v5;
  }

LABEL_49:
  v47 = *(v4 + 204);
  if (v39 > v47)
  {
    this = DgnArray<CWIDAC>::reallocElts(v4 + 192, v39 - v47, 0);
    v6 = *(v4 + 200);
  }

  if (v6 < v39)
  {
    v48 = v39 - v6;
    v49 = (*(v4 + 192) + 24 * v6 + 16);
    do
    {
      *(v49 - 2) = 0xFFFFFFFF00000000;
      *(v49 - 2) = -1;
      *(v49 - 2) = -2;
      *v49 = 0;
      v49 += 3;
      --v48;
    }

    while (v48);
  }

  *(v4 + 200) = v39;
  return this;
}

char *mrec_qsort_r<FstSearchLateLatticeHashBackoffActiveToken>(char *result, unint64_t a2, int64_t a3)
{
  v4 = -a3;
  v5 = a3 != 8;
  v6 = ((result | a3) & 7) == 0;
  if (((result | a3) & 7) != 0)
  {
    v7 = 2;
  }

  else
  {
    v7 = a3 != 8;
  }

  if (a2 < 7)
  {
LABEL_5:
    if ((a2 * a3) > a3)
    {
      v8 = &result[a2 * a3];
      v9 = &result[a3];
      v10 = result;
      do
      {
        if (v9 > result)
        {
          v11 = v10;
          v12 = v9;
          do
          {
            v13 = v12;
            v12 = (v12 + v4);
            v14 = v12[1];
            v15 = v13[1];
            if (v14 == v15)
            {
              if (*v13 >= *v12)
              {
                break;
              }
            }

            else if (v14 < v15)
            {
              break;
            }

            if (v7)
            {
              v16 = 0;
              if (v6)
              {
                v17 = v12;
                do
                {
                  v18 = *&v13[2 * v16];
                  *&v13[2 * v16] = *v17;
                  *v17++ = v18;
                  ++v16;
                }

                while (a3 >> 3 != v16);
              }

              else
              {
                v20 = a3;
                do
                {
                  v21 = *(v13 + v16);
                  *(v13 + v16) = *(v11 + v16);
                  *(v11 + v16++) = v21;
                  --v20;
                }

                while (v20);
              }
            }

            else
            {
              v19 = *v13;
              *v13 = *v12;
              *v12 = v19;
            }

            v11 = (v11 + v4);
          }

          while (v12 > result);
        }

        v9 += a3;
        v10 = (v10 + a3);
      }

      while (v9 < v8);
    }

    return result;
  }

  v22 = a3 >> 3;
  while (2)
  {
    v23 = &result[(a2 >> 1) * a3];
    if (a2 == 7)
    {
      goto LABEL_26;
    }

    v27 = &result[(a2 - 1) * a3];
    if (a2 < 0x29)
    {
      v29 = result;
      goto LABEL_111;
    }

    v28 = (a2 >> 3) * a3;
    v29 = &result[v28];
    v30 = &result[2 * v28];
    v31 = *(result + 1);
    v32 = *&result[v28 + 4];
    if (v31 == v32)
    {
      if (*v29 <= *result)
      {
        goto LABEL_34;
      }
    }

    else if (v31 >= v32)
    {
LABEL_34:
      v33 = *(v30 + 1);
      if (v32 == v33)
      {
        if (*v30 < *v29)
        {
          goto LABEL_130;
        }
      }

      else if (v32 >= v33)
      {
        goto LABEL_130;
      }

      if (v31 == v33)
      {
        if (*result != *v30)
        {
          v29 = result;
          if (*v30 > *result)
          {
            goto LABEL_130;
          }
        }
      }

      else
      {
        v29 = result;
        if (v31 < v33)
        {
          goto LABEL_130;
        }
      }

      v29 = &result[2 * v28];
      goto LABEL_130;
    }

    v79 = *(v30 + 1);
    if (v32 == v79)
    {
      if (*v30 > *v29)
      {
        goto LABEL_130;
      }
    }

    else if (v32 < v79)
    {
      goto LABEL_130;
    }

    if (v31 != v79)
    {
      v29 = &result[2 * v28];
      if (v31 < v79)
      {
        goto LABEL_130;
      }

      goto LABEL_129;
    }

    v29 = result;
    if (*result != *v30)
    {
      v29 = &result[2 * v28];
      if (*v30 <= *result)
      {
LABEL_129:
        v29 = result;
      }
    }

LABEL_130:
    v80 = &v23[-v28];
    v81 = &v23[v28];
    v82 = *&v23[-v28 + 4];
    v83 = *(v23 + 1);
    if (v82 == v83)
    {
      if (*v23 <= *v80)
      {
        goto LABEL_132;
      }
    }

    else if (v82 >= v83)
    {
LABEL_132:
      v84 = *(v81 + 1);
      if (v83 == v84)
      {
        if (*v81 < *v23)
        {
          goto LABEL_153;
        }
      }

      else if (v83 >= v84)
      {
        goto LABEL_153;
      }

      if (v82 == v84)
      {
        if (*v80 != *v81)
        {
          v23 -= v28;
          if (*v81 > *v80)
          {
            goto LABEL_153;
          }
        }
      }

      else
      {
        v23 -= v28;
        if (v82 < v84)
        {
          goto LABEL_153;
        }
      }

      v23 = v81;
      goto LABEL_153;
    }

    v85 = *(v81 + 1);
    if (v83 == v85)
    {
      if (*v81 > *v23)
      {
        goto LABEL_153;
      }
    }

    else if (v83 < v85)
    {
      goto LABEL_153;
    }

    if (v82 != v85)
    {
      v23 += v28;
      if (v82 < v85)
      {
        goto LABEL_153;
      }

      goto LABEL_152;
    }

    if (*v80 == *v81 || (v23 += v28, *v81 <= *v80))
    {
LABEL_152:
      v23 = v80;
    }

LABEL_153:
    v86 = -v28;
    v78 = &v27[-2 * v28];
    v87 = &v27[v86];
    v88 = *(v78 + 1);
    v89 = *(v87 + 1);
    if (v88 == v89)
    {
      if (*v87 <= *v78)
      {
LABEL_155:
        v90 = *(v27 + 1);
        if (v89 == v90)
        {
          if (*v27 < *v87)
          {
            goto LABEL_168;
          }

LABEL_163:
          if (v88 == v90)
          {
            if (*v78 != *v27 && *v27 > *v78)
            {
              goto LABEL_169;
            }
          }

          else if (v88 < v90)
          {
            goto LABEL_169;
          }

LABEL_111:
          v78 = &result[(a2 - 1) * a3];
          goto LABEL_169;
        }

        if (v89 < v90)
        {
          goto LABEL_163;
        }

LABEL_168:
        v78 = v87;
        goto LABEL_169;
      }
    }

    else if (v88 >= v89)
    {
      goto LABEL_155;
    }

    v91 = *(v27 + 1);
    if (v89 == v91)
    {
      if (*v27 > *v87)
      {
        goto LABEL_168;
      }
    }

    else if (v89 < v91)
    {
      goto LABEL_168;
    }

    if (v88 != v91)
    {
      if (v88 >= v91)
      {
        goto LABEL_169;
      }

      goto LABEL_111;
    }

    if (*v78 != *v27 && *v27 > *v78)
    {
      goto LABEL_111;
    }

LABEL_169:
    v92 = *(v29 + 1);
    v93 = *(v23 + 1);
    if (v92 != v93)
    {
      if (v92 >= v93)
      {
        goto LABEL_171;
      }

LABEL_175:
      v95 = *(v78 + 1);
      if (v93 == v95)
      {
        if (*v78 > *v23)
        {
          goto LABEL_26;
        }
      }

      else if (v93 < v95)
      {
        goto LABEL_26;
      }

      if (v92 == v95)
      {
        if (*v29 != *v78)
        {
          v23 = v78;
          if (*v78 > *v29)
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
        v23 = v78;
        if (v92 < v95)
        {
          goto LABEL_26;
        }
      }

      v23 = v29;
      goto LABEL_26;
    }

    if (*v23 > *v29)
    {
      goto LABEL_175;
    }

LABEL_171:
    v94 = *(v78 + 1);
    if (v93 == v94)
    {
      if (*v78 < *v23)
      {
        goto LABEL_26;
      }
    }

    else if (v93 >= v94)
    {
      goto LABEL_26;
    }

    if (v92 == v94)
    {
      if (*v29 == *v78)
      {
        goto LABEL_193;
      }

      v23 = v29;
      if (*v78 <= *v29)
      {
        goto LABEL_193;
      }
    }

    else
    {
      v23 = v29;
      if (v92 >= v94)
      {
LABEL_193:
        v23 = v78;
      }
    }

LABEL_26:
    if (v7)
    {
      if (v6)
      {
        v24 = result;
        v25 = a3 >> 3;
        do
        {
          v26 = *v24;
          *v24 = *v23;
          v24 += 8;
          *v23 = v26;
          v23 += 8;
          --v25;
        }

        while (v25);
      }

      else
      {
        v35 = a3;
        v36 = result;
        do
        {
          v37 = *v36;
          *v36++ = *v23;
          *v23++ = v37;
          --v35;
        }

        while (v35);
      }
    }

    else
    {
      v34 = *result;
      *result = *v23;
      *v23 = v34;
    }

    v38 = 0;
    v39 = &result[a3];
    v40 = &result[(a2 - 1) * a3];
    v41 = v40;
    v42 = &result[a3];
    v43 = &result[a3];
    while (1)
    {
LABEL_41:
      if (v42 > v41)
      {
        goto LABEL_57;
      }

      v44 = *(v42 + 1);
      v45 = *(result + 1);
      if (v44 == v45)
      {
        break;
      }

      if (v44 >= v45)
      {
        goto LABEL_57;
      }

LABEL_77:
      v42 += a3;
    }

    if (*v42 == *result)
    {
      if (v7)
      {
        v46 = 0;
        if (v6)
        {
          do
          {
            v47 = *&v43[8 * v46];
            *&v43[8 * v46] = *&v42[8 * v46];
            *&v42[8 * v46++] = v47;
          }

          while (v22 != v46);
        }

        else
        {
          do
          {
            v48 = v43[v46];
            v43[v46] = v42[v46];
            v42[v46++] = v48;
          }

          while (a3 != v46);
        }
      }

      else
      {
        v58 = *v43;
        *v43 = *v42;
        *v42 = v58;
      }

      v43 += a3;
      v38 = 1;
      goto LABEL_77;
    }

    if (*result > *v42)
    {
      goto LABEL_77;
    }

LABEL_57:
    while (v42 <= v41)
    {
      v50 = *(v41 + 1);
      v51 = *(result + 1);
      if (v50 == v51)
      {
        if (*v41 == *result)
        {
          if (v7)
          {
            v52 = 0;
            if (v6)
            {
              do
              {
                v53 = *&v41[8 * v52];
                *&v41[8 * v52] = *&v40[8 * v52];
                *&v40[8 * v52++] = v53;
              }

              while (v22 != v52);
            }

            else
            {
              do
              {
                v54 = v41[v52];
                v41[v52] = v40[v52];
                v40[v52++] = v54;
              }

              while (a3 != v52);
            }
          }

          else
          {
            v49 = *v41;
            *v41 = *v40;
            *v40 = v49;
          }

          v40 += v4;
          v38 = 1;
        }

        else if (*result > *v41)
        {
LABEL_69:
          if (v7)
          {
            v55 = 0;
            if (v6)
            {
              do
              {
                v56 = *&v42[8 * v55];
                *&v42[8 * v55] = *&v41[8 * v55];
                *&v41[8 * v55++] = v56;
              }

              while (v22 != v55);
            }

            else
            {
              do
              {
                v57 = v42[v55];
                v42[v55] = v41[v55];
                v41[v55++] = v57;
              }

              while (a3 != v55);
            }
          }

          else
          {
            v59 = *v42;
            *v42 = *v41;
            *v41 = v59;
          }

          v42 += a3;
          v41 += v4;
          v38 = 1;
          goto LABEL_41;
        }
      }

      else if (v50 < v51)
      {
        goto LABEL_69;
      }

      v41 += v4;
    }

    v60 = &result[a2 * a3];
    if (v38)
    {
      v61 = v42 - v43;
      if (v43 - result >= v42 - v43)
      {
        v62 = v42 - v43;
      }

      else
      {
        v62 = v43 - result;
      }

      if (v62)
      {
        if (v6)
        {
          v63 = &v42[-v62];
          v64 = v62 >> 3;
          v65 = result;
          do
          {
            v66 = *v65;
            *v65 = *v63;
            v65 += 8;
            *v63 = v66;
            v63 += 8;
            --v64;
          }

          while (v64);
        }

        else
        {
          v67 = -v62;
          v68 = result;
          do
          {
            v69 = *v68;
            *v68++ = v42[v67];
            v42[v67] = v69;
            v70 = __CFADD__(v67++, 1);
          }

          while (!v70);
        }
      }

      v71 = v40 - v41;
      v72 = v60 - &v40[a3];
      if (v40 - v41 < v72)
      {
        v72 = v40 - v41;
      }

      if (v72)
      {
        if (v6)
        {
          v73 = &v60[-v72];
          v74 = v72 >> 3;
          do
          {
            v75 = *v42;
            *v42 = *v73;
            v42 += 8;
            *v73 = v75;
            v73 += 8;
            --v74;
          }

          while (v74);
        }

        else
        {
          v76 = -v72;
          do
          {
            v77 = *v42;
            *v42++ = v60[v76];
            v60[v76] = v77;
            v70 = __CFADD__(v76++, 1);
          }

          while (!v70);
        }
      }

      if (v61 > a3)
      {
        result = mrec_qsort_r<FstSearchLateLatticeHashBackoffActiveToken>();
      }

      if (v71 > a3)
      {
        result = &v60[-v71];
        a2 = v71 / a3;
        v6 = (((v60 - v71) | a3) & 7) == 0;
        if ((((v60 - v71) | a3) & 7) != 0)
        {
          v7 = 2;
        }

        else
        {
          v7 = v5;
        }

        if (a2 < 7)
        {
          goto LABEL_5;
        }

        continue;
      }
    }

    else if ((a2 * a3) > a3)
    {
      v96 = result;
      do
      {
        if (v39 > result)
        {
          v97 = v96;
          v98 = v39;
          do
          {
            v99 = v98;
            v98 = (v98 + v4);
            v100 = v98[1];
            v101 = v99[1];
            if (v100 == v101)
            {
              if (*v99 >= *v98)
              {
                break;
              }
            }

            else if (v100 < v101)
            {
              break;
            }

            if (v7)
            {
              v102 = 0;
              if (v6)
              {
                v103 = v98;
                do
                {
                  v104 = *&v99[2 * v102];
                  *&v99[2 * v102] = *v103;
                  *v103++ = v104;
                  ++v102;
                }

                while (v22 != v102);
              }

              else
              {
                v106 = a3;
                do
                {
                  v107 = *(v99 + v102);
                  *(v99 + v102) = *(v97 + v102);
                  *(v97 + v102++) = v107;
                  --v106;
                }

                while (v106);
              }
            }

            else
            {
              v105 = *v99;
              *v99 = *v98;
              *v98 = v105;
            }

            v97 = (v97 + v4);
          }

          while (v98 > result);
        }

        v39 += a3;
        v96 = (v96 + a3);
      }

      while (v39 < v60);
    }

    return result;
  }
}

uint64_t FstSearchLateLatticeHashBackoff::getTraceTimeBoundaries(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v5 = *(result + 168);
  if (v5)
  {
    v6 = result;
    v7 = *(*(result + 160) + 36 * (v5 - 1) + 4) + 1;
    if (*(*(result + 160) + 36 * (v5 - 1) + 4) != -1 && *(a2 + 2) == 0)
    {
      result = MemChunkAlloc(4 * (*(*(result + 160) + 36 * (v5 - 1) + 4) + 1), 0);
      *a2 = result;
      *(a2 + 2) = v7;
    }

    v9 = *(a3 + 12);
    if (v7 > v9)
    {
      result = DgnPrimArray<unsigned int>::reallocElts(a3, v7 - v9, 0);
    }

    v10 = *(v6 + 168);
    *(a3 + 8) = v7;
    v11 = *a2;
    v12 = *a3;
    if (v10)
    {
      v13 = 0;
      LODWORD(v14) = 0;
      v15 = *(v6 + 160);
      v16 = *(v6 + 176);
      v17 = 1879048192;
      do
      {
        result = v15 + 36 * v13;
        v18 = *(result + 4);
        v19 = *(v16 + 16 * *(result + 8));
        if (v14 == v18)
        {
          if (v17 >= v19)
          {
            v17 = *(v16 + 16 * *(result + 8));
          }
        }

        else
        {
          if (v14 < v18)
          {
            do
            {
              *(v12 + 4 * v14) = v17;
              *(v11 + 4 * v14) = v13;
              LODWORD(v14) = v14 + 1;
              v17 = 1879048192;
            }

            while (v14 < *(result + 4));
            v10 = *(v6 + 168);
          }

          v17 = v19;
        }

        ++v13;
      }

      while (v13 < v10);
      v14 = v14;
    }

    else
    {
      v14 = 0;
      LODWORD(v10) = 0;
      v17 = 1879048192;
    }
  }

  else
  {
    v14 = 0;
    LODWORD(v10) = 0;
    *(a3 + 8) = 0;
    v11 = *a2;
    v17 = 1879048192;
    v12 = *a3;
  }

  *(v11 + 4 * v14) = v10;
  *(v12 + 4 * v14) = v17;
  return result;
}

int64x2_t FstSearchLateLatticeHashBackoff::vite(int64x2_t **this, int a2, int a3, SearchStats *a4, int a5)
{
  FstSearchLateLatticeHashBackoff::advanceDeltas(this, a2, a3, a4, a5);
  v11 = 0u;
  v12 = 0u;
  SnapTime::recordTime(&v11, 1, 0, 0, 0);
  v9 = 0u;
  v10 = 0u;
  SnapTime::recordTime(&v9, 1, 0, 0, 0);
  v6 = this[13];
  result = vaddq_s64(v6[14], vsubq_s64(v9, v11));
  v8 = vaddq_s64(v6[15], vsubq_s64(v10, v12));
  v6[14] = result;
  v6[15] = v8;
  return result;
}

int64x2_t FstSearchLateLatticeHashBackoff::reset(FstSearchLateLatticeHashBackoff *this)
{
  *(this + 42) = 0;
  *(this + 46) = 0;
  *(this + 50) = 0;
  v7 = 0u;
  v8 = 0u;
  SnapTime::recordTime(&v7, 1, 0, 0, 0);
  v5 = 0u;
  v6 = 0u;
  SnapTime::recordTime(&v5, 1, 0, 0, 0);
  v2 = *(this + 13);
  result = vaddq_s64(v2[10], vsubq_s64(v5, v7));
  v4 = vaddq_s64(v2[11], vsubq_s64(v6, v8));
  v2[10] = result;
  v2[11] = v4;
  return result;
}

double FstSearchLateLatticeHashBackoff::doFrame(int64x2_t **this, int a2, int a3, SearchStats *a4, int a5)
{
  if (a3 >= 20000)
  {
    a3 = 20000;
  }

  *&result = FstSearchLateLatticeHashBackoff::vite(this, a2, a3, a4, a5).u64[0];
  return result;
}

uint64_t FstSearchLateLatticeHashBackoff::beginTopRecPassSyncRecog(FstSearchLateLatticeHashBackoff *this, PelScorer *a2, const ArcGraph *a3)
{
  result = SearchItf::beginTopRecPassSyncRecogBase(this, a2);
  if (a3)
  {
    MiniFst::init(this + 240, a3, *(this + 4));
    result = ArcGraph::findBackoffState(*(this + 5));
    *(this + 88) = result;
    *(this + 356) = 1;
  }

  return result;
}

uint64_t FstSearchLateLatticeHashBackoff::endTopRecPassSyncRecog(int64x2_t **this)
{
  v10 = 0u;
  v11 = 0u;
  SnapTime::recordTime(&v10, 1, 0, 0, 0);
  FstSearchLateLatticeHashBackoff::generateTraceTokensFromTraces(this);
  FstSearchLateLatticeHashBackoff::generateTraceTokensForLateLattice(this);
  v8 = 0u;
  v9 = 0u;
  SnapTime::recordTime(&v8, 1, 0, 0, 0);
  v2 = vsubq_s64(v8, v10);
  v3 = this[13];
  v4 = v3[13];
  v5 = vaddq_s64(v3[12], v2);
  v8 = v2;
  v9 = vsubq_s64(v9, v11);
  v6 = vaddq_s64(v4, v9);
  v3[12] = v5;
  v3[13] = v6;
  *(this + 58) = 1879048192;
  return SearchItf::endTopRecPassSyncRecogBase(this);
}

int32x4_t FstSearchLateLatticeHashBackoff::generateTraceTokensFromTraces(FstSearchLateLatticeHashBackoff *this)
{
  v2 = *(this + 42);
  v3 = *(this + 47);
  if (v2 > v3)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 176, v2 - v3, 0);
  }

  v5 = *(this + 46);
  if (v5 < v2)
  {
    v6 = v2 - v5;
    v7 = (*(this + 22) + 16 * v5);
    result.i64[0] = 0;
    do
    {
      *v7++ = xmmword_26287F850;
      --v6;
    }

    while (v6);
  }

  *(this + 46) = v2;
  v8 = *(this + 42);
  if (v8)
  {
    v9 = 0;
    v10 = *(this + 22);
    v11 = (*(this + 20) + 16);
    do
    {
      *(v11 - 2) = v9;
      v12 = *v11;
      v11 = (v11 + 36);
      result = vuzp1q_s32(v12, vextq_s8(v12, v12, 0xCuLL));
      *(v10 + 16 * v9++) = result;
    }

    while (v8 != v9);
  }

  return result;
}

uint64_t FstSearchLateLatticeHashBackoff::generateTraceTokensForLateLattice(FstSearchLateLatticeHashBackoff *this)
{
  v1 = this;
  v128[1] = 0;
  v129 = 0;
  v130 = 0;
  v128[0] = 0;
  FstSearchLateLatticeHashBackoff::getTraceTimeBoundaries(this, &v129, v128);
  v126 = 0;
  v127 = 0;
  v124 = 0;
  v125 = 0;
  v123[0] = 0;
  v123[1] = 0;
  v122 = 1879048192;
  v2 = (*(*v1 + 80))(v1, &v126, &v124, &v122, v123);
  v9 = *(v1 + 7);
  v10 = *(v1 + 2);
  v119 = -1;
  v121 = 256;
  v120 = *(v1 + 34);
  if (v2)
  {
    v117 = 0;
    v118 = 0;
    v11 = *(v1 + 42);
    if (v11)
    {
      v12 = 0;
      v102 = v10;
      v103 = v9;
      while (1)
      {
        while (1)
        {
          while (1)
          {
            --v11;
            v13 = *(v1 + 20);
            if (*(v126 + v11))
            {
              break;
            }

            *(v13 + 36 * v11 + 8) = -1;
            if (!v11)
            {
              goto LABEL_76;
            }
          }

          v14 = (v13 + 36 * v11);
          v15 = *v14;
          v16 = *(v1 + 6);
          if (*(v16 + 388) > v15 && *(*(v16 + 104) + v15))
          {
            v17 = *(*(v16 + 72) + 2 * *(*(v16 + 48) + 4 * v15));
          }

          else
          {
            v17 = 0;
          }

          v18 = *(v1 + 11);
          v19 = *(v18 + 4 * v14[1]);
          v20 = *(v1 + 22);
          v21 = (v20 + 16 * v14[2]);
          v22 = *(v1 + 3);
          v23 = *(v123[0] + 4 * v11);
          HIWORD(v119) = v17;
          v107 = v21;
          v24 = v21[1].u32[1];
          if ((v24 & 0x80000000) == 0)
          {
            break;
          }

          v14[2] = v12;
          if (v12 == HIDWORD(v118))
          {
            DgnArray<DgnPrimArray<double>>::reallocElts(&v117, 1, 1);
            v12 = v118;
          }

          *(v117 + v12) = *v107->i8;
          v12 = v118 + 1;
          LODWORD(v118) = v118 + 1;
          *(*(v1 + 20) + 36 * v11 + 12) = 1;
          if (!v11)
          {
            goto LABEL_76;
          }
        }

        v25 = v13 + 36 * v24;
        v26 = *(v25 + 4);
        v27 = v26 ? *(v129 + 4 * (v26 - 1)) : 0;
        v112 = v22 + v122 - v23;
        v105 = (v20 + 16 * *(v25 + 8));
        v106 = v19 + v107->i32[0] - *(v18 + 4 * v26) - v105->i32[0];
        v104 = v105->i32[0] - *(v128[0] + 4 * v26);
        v28 = v12;
        v109 = v24;
        if (v27 < *(v129 + 4 * v26))
        {
          break;
        }

LABEL_42:
        if (v12 >= v28)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 150, "fst/fstsrch", 2, "%s", v7, v8, &unk_26287F8B0);
          v28 = v118;
        }

        mrec_qsort_r<FstSearchLateLatticeHashBackoffcmpTokLmhst>(v117 + 16 * v12, v28 - v12, 16);
        v43 = v12 + 1;
        v44 = v118;
        if (v43 < v118)
        {
          v45 = 16 * (v12 + 1);
          v46 = v12;
          do
          {
            if (*(v117 + v45 + 8) != *(v117 + 4 * v46 + 2))
            {
              *(v117 + ++v46) = *(v117 + v45);
              v44 = v118;
            }

            ++v43;
            v45 += 16;
          }

          while (v43 < v44);
          LODWORD(v43) = v46 + 1;
        }

        v47 = v117;
        if (HIDWORD(v118) < v43)
        {
          v115 = 0;
          HIDWORD(v118) = realloc_array(v117, &v115, 16 * v43, 16 * v44, 16 * v44, 1) >> 4;
          v47 = v115;
          v117 = v115;
          v44 = v118;
        }

        if (v44 < v43)
        {
          v48 = v43 - v44;
          v49 = &v47[16 * v44];
          do
          {
            *v49 = xmmword_26287F850;
            v49 += 16;
            --v48;
          }

          while (v48);
        }

        LODWORD(v118) = v43;
        mrec_qsort_r<FstSearchLateLatticeHashBackoffcmpTok>(&v47[16 * v12], v43 - v12, 16);
        v50 = 16 * v12;
        v51 = *(v117 + v50) + v10;
        if (v51 >= v112)
        {
          v51 = v112;
        }

        v52 = v118;
        v53 = *(v1 + 5) + v12;
        if (v118 < v53)
        {
          v53 = v118;
        }

        v54 = *(v1 + 20);
        *(v54 + 36 * v11 + 8) = v12;
        if (v12 < v53)
        {
          while (*(v117 + v50) <= v51)
          {
            v55 = *(v117 + v50 + 12);
            if ((v55 & 0x80000000) == 0)
            {
              *(v126 + v55) = 1;
              v56 = v55 == v109 ? 0 : v104 + v9;
              v57 = v56 + v106 + *(v123[0] + 4 * v11);
              if (*(v123[0] + 4 * v55) > v57)
              {
                *(v123[0] + 4 * v55) = v57;
              }
            }

            ++v12;
            v50 += 16;
            if (v53 == v12)
            {
              v12 = v53;
              break;
            }
          }

          v54 = *(v1 + 20);
          v52 = v118;
        }

        *(v54 + 36 * v11 + 12) = v12 - *(v54 + 36 * v11 + 8);
        if (HIDWORD(v118) < v12)
        {
          v115 = 0;
          HIDWORD(v118) = realloc_array(v117, &v115, 16 * v12, 16 * v52, 16 * v52, 1) >> 4;
          v117 = v115;
          v52 = v118;
        }

        if (v52 < v12)
        {
          v58 = v12 - v52;
          v59 = v117 + 16 * v52;
          do
          {
            *v59++ = xmmword_26287F850;
            --v58;
          }

          while (v58);
        }

        LODWORD(v118) = v12;
        if (!v11)
        {
LABEL_76:
          v60 = v117;
          v61 = HIDWORD(v118);
          v62 = *(v1 + 42);
          goto LABEL_78;
        }
      }

      v108 = v11;
      v111 = v104 + v9;
      v110 = v19 + v107->i32[0] - v105->i32[0];
      v29 = 36 * v27;
      while (1)
      {
        if (v24 == v27)
        {
          v30 = 0;
        }

        else
        {
          v30 = v111;
        }

        v31 = *(v1 + 20);
        v32 = (*(v1 + 22) + 16 * *(v31 + v29 + 8));
        if ((v110 + v30 + *v32) <= v112)
        {
          v33 = v1;
          v34 = *(v31 + 36 * v108);
          v35 = *(v31 + v29);
          v36 = v35 != 16777209 && ArcGraph::lexToCWID(v33[5], *(v31 + v29), v3, v4, v5, v6, v7, v8) >> 25 != 126;
          if (v34 == 16777209)
          {
            v1 = v33;
            v24 = v109;
            if (v36)
            {
              goto LABEL_35;
            }
          }

          else
          {
            v37 = v34 == 16777214 || v35 == 16777213;
            v1 = v33;
            v24 = v109;
            if (!v37)
            {
LABEL_35:
              isLexPelPhnMatch = FstSearchLateLatticeHashBackoff::isLexPelPhnMatch(v1, v27, &v119);
              v1 = v33;
              v24 = v109;
              if (isLexPelPhnMatch)
              {
                v39 = v118;
                if (v118 == HIDWORD(v118))
                {
                  DgnArray<DgnPrimArray<double>>::reallocElts(&v117, 1, 1);
                  v39 = v118;
                  v1 = v33;
                  v24 = v109;
                }

                *(v117 + v39) = *v32;
                v40 = v118;
                LODWORD(v118) = v118 + 1;
                v41 = (v117 + 16 * v40);
                v41[1].i32[1] = v27;
                *v41 = vadd_s32(vsub_s32(vadd_s32(*v107, vdup_n_s32(v30)), *v105), *v41);
                v42 = *(*(v1 + 20) + 36 * v108);
                if (v42 != 16777209)
                {
                  v41[1].i32[0] = v42 + 2 * v41[1].i32[0] + 1;
                }
              }
            }
          }
        }

        ++v27;
        v29 += 36;
        if (v27 >= *(v129 + 4 * v26))
        {
          v28 = v118;
          v10 = v102;
          v9 = v103;
          v11 = v108;
          goto LABEL_42;
        }
      }
    }

    v62 = 0;
    v12 = 0;
    v61 = 0;
    v60 = 0;
LABEL_78:
    v63 = *(v1 + 22);
    *(v1 + 22) = v60;
    v117 = v63;
    v64 = *(v1 + 47);
    *(v1 + 46) = v12;
    *(v1 + 47) = v61;
    LODWORD(v118) = 0;
    HIDWORD(v118) = v64;
    v116 = 0;
    v115 = 0;
    if (v62)
    {
      v65 = MemChunkAlloc(4 * v62, 0);
      v115 = v65;
      v116 = v62;
      if (*(v1 + 42))
      {
        v66 = 0;
        v67 = 0;
        v62 = 0;
        do
        {
          v68 = *(v1 + 20);
          v69 = (v68 + v66);
          if (*(v68 + v66 + 8) == -1)
          {
            *(v65 + v67) = -1;
          }

          else
          {
            if (v67 != v62)
            {
              v70 = v68 + 36 * v62;
              v71 = *v69;
              v72 = v69[1];
              *(v70 + 32) = *(v69 + 16);
              *v70 = v71;
              *(v70 + 16) = v72;
            }

            *(v65 + v67) = v62++;
          }

          ++v67;
          v73 = *(v1 + 42);
          v66 += 36;
        }

        while (v67 < v73);
        v74 = *(v1 + 43);
        if (v62 > v74)
        {
          DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(v1 + 160, v62 - v74, 0);
          LODWORD(v73) = *(v1 + 42);
        }

        if (v73 < v62)
        {
          v75 = v62 - v73;
          v76 = (*(v1 + 20) + 36 * v73 + 32);
          do
          {
            *(v76 - 2) = xmmword_26287F860;
            *(v76 - 1) = xmmword_26287F870;
            *v76 = -2;
            v76 += 18;
            --v75;
          }

          while (v75);
        }
      }

      else
      {
        v62 = 0;
      }
    }

    *(v1 + 42) = v62;
    v77 = *(v1 + 46);
    if (v77)
    {
      v78 = v115;
      v79 = (*(v1 + 22) + 12);
      do
      {
        v80 = *v79;
        if ((v80 & 0x80000000) == 0)
        {
          *v79 = v78[v80];
        }

        v79 += 4;
        --v77;
      }

      while (v77);
    }

    v81 = *(v1 + 50);
    v113 = 0;
    v114 = 0;
    if (v81)
    {
      v131[0] = 0;
      v82 = realloc_array(0, v131, 24 * v81, 0, 0, 1) / 0x18;
      HIDWORD(v114) = v82;
      v83 = v131[0];
      v113 = v131[0];
      v84 = v131[0] + 16;
      v85 = v81;
      do
      {
        *(v84 - 2) = 0xFFFFFFFF00000000;
        *(v84 - 2) = -1;
        *(v84 - 2) = -2;
        *v84 = 0;
        v84 += 3;
        --v85;
      }

      while (v85);
    }

    else
    {
      v83 = 0;
      LODWORD(v82) = 0;
    }

    LODWORD(v114) = v81;
    v86 = *(v1 + 50);
    if (v86)
    {
      v87 = 0;
      v88 = 0;
      v89 = 0;
      v90 = v115;
      do
      {
        v91 = *(v1 + 38);
        if (v89 < v91 && v88 == v91)
        {
          *(v1 + 38) = v89;
        }

        v93 = (*(v1 + 24) + v87);
        v94 = *(v93 + 2);
        if (v94 == -1 || v90[v94] != -1)
        {
          v95 = &v83[3 * v89];
          v96 = *v93;
          v95[2] = *(v93 + 2);
          *v95 = v96;
          v97 = *(*(v1 + 24) + v87 + 8);
          if (v97 != -1)
          {
            LODWORD(v97) = v90[v97];
          }

          *(v95 + 2) = v97;
          ++v89;
          v86 = *(v1 + 50);
        }

        ++v88;
        v87 += 24;
      }

      while (v88 < v86);
    }

    else
    {
      v89 = 0;
    }

    if (v89 < *(v1 + 38))
    {
      *(v1 + 38) = v89;
    }

    if (v82 < v89)
    {
      v131[0] = 0;
      v82 = realloc_array(v83, v131, 24 * v89, 24 * v81, 24 * v81, 1) / 0x18;
      v83 = v131[0];
      LODWORD(v81) = v114;
    }

    if (v81 < v89)
    {
      v98 = v89 - v81;
      v99 = &v83[3 * v81 + 2];
      do
      {
        *(v99 - 2) = 0xFFFFFFFF00000000;
        *(v99 - 2) = -1;
        *(v99 - 2) = -2;
        *v99 = 0;
        v99 += 3;
        --v98;
      }

      while (v98);
    }

    v100 = *(v1 + 24);
    *(v1 + 24) = v83;
    v113 = v100;
    LODWORD(v100) = *(v1 + 51);
    *(v1 + 50) = v89;
    *(v1 + 51) = v82;
    LODWORD(v114) = 0;
    HIDWORD(v114) = v100;
    DgnIArray<Utterance *>::~DgnIArray(&v113);
    DgnPrimFixArray<double>::~DgnPrimFixArray(&v115);
    DgnIArray<Utterance *>::~DgnIArray(&v117);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v123);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v124);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v126);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v128);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v129);
}

void sub_26262034C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a25);
  DgnIArray<Utterance *>::~DgnIArray(&a27);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a31);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v31 - 160);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v31 - 144);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v31 - 128);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v31 - 112);
  _Unwind_Resume(a1);
}

void FstSearchLateLatticeHashBackoff::printSize(FstSearchLateLatticeHashBackoff *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2950, &v117);
  if (v118)
  {
    v16 = v117;
  }

  else
  {
    v16 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26287F8B0, a3, &unk_26287F8B0, v16);
  DgnString::~DgnString(&v117);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26287F8B0);
  v21 = (a3 + 1);
  v22 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2952, &v117);
  if (v118)
  {
    v27 = v117;
  }

  else
  {
    v27 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v24, v25, v26, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v27, 4, 4, 0);
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2954, &v117);
  if (v118)
  {
    v32 = v117;
  }

  else
  {
    v32 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, v29, v30, v31, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v32, 4, 4, 0);
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2955, &v117);
  if (v118)
  {
    v37 = v117;
  }

  else
  {
    v37 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, v34, v35, v36, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v37, 4, 4, 0);
  v112 = a2;
  v113 = a6;
  v114 = a3;
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2956, &v117);
  if (v118)
  {
    v42 = v117;
  }

  else
  {
    v42 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v38, v39, v40, v41, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v42, 4, 4, 0);
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  v43 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v43 = 12;
  }

  v44 = *(this + 42);
  v45 = 24 * v44;
  if (v44 <= 0)
  {
    v45 = 0;
  }

  v46 = v45 + v43;
  v47 = v45 + v43 + 24 * (*(this + 43) - v44);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2957, &v117);
  if (v118)
  {
    v52 = v117;
  }

  else
  {
    v52 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v48, v49, v50, v51, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v52, v47, v46, 0);
  DgnString::~DgnString(&v117);
  *a4 += v47;
  *a5 += v46;
  v53 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v53 = 12;
  }

  v54 = *(this + 46);
  v55 = 16 * v54;
  if (v54 <= 0)
  {
    v55 = 0;
  }

  v56 = v55 + v53;
  v57 = v55 + v53 + 16 * (*(this + 47) - v54);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2959, &v117);
  if (v118)
  {
    v62 = v117;
  }

  else
  {
    v62 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v58, v59, v60, v61, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v62, v57, v56, 0);
  DgnString::~DgnString(&v117);
  *a4 += v57;
  *a5 += v56;
  v63 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v63 = 12;
  }

  v64 = *(this + 50);
  v65 = 22 * v64;
  if (v64 <= 0)
  {
    v65 = 0;
  }

  v66 = v65 + v63;
  v67 = v65 + v63 + 22 * (*(this + 51) - v64);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2964, &v117);
  if (v118)
  {
    v72 = v117;
  }

  else
  {
    v72 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v68, v69, v70, v71, v21, &unk_26287F8B0, v22, v22, v72, v67, v66, 0);
  DgnString::~DgnString(&v117);
  *a4 += v67;
  *a5 += v66;
  v73 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v73 = 12;
  }

  v74 = *(this + 54);
  v75 = 22 * v74;
  if (v74 <= 0)
  {
    v75 = 0;
  }

  v76 = v75 + v73;
  v77 = v75 + v73 + 22 * (*(this + 55) - v74);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2966, &v117);
  if (v118)
  {
    v82 = v117;
  }

  else
  {
    v82 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v78, v79, v80, v81, v21, &unk_26287F8B0, v22, v22, v82, v77, v76, 0);
  DgnString::~DgnString(&v117);
  *a4 += v77;
  *a5 += v76;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2968, &v117);
  if (v118)
  {
    v87 = v117;
  }

  else
  {
    v87 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v83, v84, v85, v86, v21, &unk_26287F8B0, v22, v22, v87, 4, 4, 0);
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2970, &v117);
  if (v118)
  {
    v92 = v117;
  }

  else
  {
    v92 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v88, v89, v90, v91, v21, &unk_26287F8B0, v22, v22, v92, 4, 4, 0);
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2972, &v117);
  if (v118)
  {
    v97 = v117;
  }

  else
  {
    v97 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v93, v94, v95, v96, v21, &unk_26287F8B0, v22, v22, v97, 4, 4, 0);
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  v98 = sizeObject(this + 240, 0);
  v99 = sizeObject(this + 240, 1);
  v100 = sizeObject(this + 240, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2974, &v117);
  if (v118)
  {
    v105 = v117;
  }

  else
  {
    v105 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v101, v102, v103, v104, v21, &unk_26287F8B0, v22, v22, v105, v98, v99, v100);
  DgnString::~DgnString(&v117);
  *a4 += v98;
  *a5 += v99;
  *v113 += v100;
  v115 = 0;
  v116 = 0;
  SearchItf::printSize(this, v112, v21, &v116, &v115, &v115);
  *a4 += v116;
  *a5 += v115;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2985, &v117);
  if (v118)
  {
    v110 = v117;
  }

  else
  {
    v110 = &unk_26287F8B0;
  }

  v111 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v106, v107, v108, v109, v114, &unk_26287F8B0, (35 - v114), (35 - v114), v110, *a4, *a5, *v113);
  DgnString::~DgnString(&v117);
}

uint64_t FstSearchLateLatticeHashBackoff::getBestTrace(uint64_t a1, void *a2, void *a3, int a4)
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 152);
  }

  v5 = *(a1 + 200);
  if (v4 >= v5)
  {
    goto LABEL_21;
  }

  v6 = 24 * v4;
  v7 = 1879048192;
  v8 = 0xFFFFFFFFLL;
  do
  {
    v9 = *(a1 + 192);
    if (!a4 || (v10 = *(v9 + v6 + 8), v10 == -1))
    {
      if (*(*(a1 + 40) + 160) != *(v9 + v6 + 4))
      {
        goto LABEL_19;
      }

      v10 = *(v9 + v6 + 8);
    }

    if (a2)
    {
      *(*a2 + v10) = 1;
    }

    if (a3)
    {
      *(*a3 + v10) = 1;
    }

    v11 = *(a1 + 160) + 36 * v10;
    v12 = *(v11 + 16) + *(*(a1 + 88) + 4 * *(v11 + 4));
    v13 = v7 <= v12;
    if (v7 >= v12)
    {
      v7 = v12;
    }

    if (!v13)
    {
      v8 = v10;
    }

    v5 = *(a1 + 200);
LABEL_19:
    ++v4;
    v6 += 24;
  }

  while (v4 < v5);
  if (v8 == 0xFFFFFFFFLL)
  {
LABEL_21:
    v14 = *(a1 + 168);
    v8 = 0xFFFFFFFFLL;
    while (v14)
    {
      --v14;
      if ((a4 & 1) != 0 || *(*(a1 + 160) + 36 * v14) == 16777213)
      {
        if (a2)
        {
          *(*a2 + v14) = 1;
        }

        v8 = v14;
        if (a3)
        {
          *(*a3 + v14) = 1;
        }

        return v8;
      }
    }
  }

  return v8;
}

BOOL FstSearchLateLatticeHashBackoff::findBestPath(uint64_t a1, uint64_t **a2, uint64_t a3, int *a4, uint64_t a5)
{
  v10 = *(a1 + 168);
  if (v10)
  {
    v11 = *(a3 + 8) == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    *a3 = MemChunkAlloc(*(a1 + 168), 0);
    *(a3 + 8) = v10;
  }

  if (v10)
  {
    v12 = *(a2 + 2) == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    *a2 = MemChunkAlloc(v10, 0);
    *(a2 + 2) = v10;
  }

  else if (!v10)
  {
    goto LABEL_16;
  }

  v13 = 0;
  do
  {
    *(*a2 + v13) = 0;
    *(*a3 + v13++) = 0;
  }

  while (v10 != v13);
LABEL_16:
  BestTrace = FstSearchLateLatticeHashBackoff::getBestTrace(a1, a2, a3, 0);
  *a4 = 1879048192;
  if (BestTrace == -1 || (v15 = *(a1 + 160), v16 = *(v15 + 36 * BestTrace + 16) + *(*(a1 + 88) + 4 * *(v15 + 36 * BestTrace + 4)), *a4 = v16, v16 == 1879048192))
  {
    v17 = 1879048192;
  }

  else
  {
    v18 = *(a1 + 168);
    if (v18)
    {
      v19 = v18 - 1;
      v20 = 36 * v18;
      v21 = *(v15 + 36 * BestTrace + 4);
      v22 = 1879048192;
      do
      {
        if (*(v15 + v20 - 32) == v21 && *(v15 + v20 - 36) == 16777213 && !*(*a2 + v19))
        {
          *(*a2 + v19) = 2;
          *(*a3 + v19) = 1;
          v15 = *(a1 + 160);
          if (v22 >= *(*(a1 + 176) + 16 * *(v15 + v20 - 28)) + *(*(a1 + 88) + 4 * *(v15 + v20 - 32)))
          {
            v22 = *(*(a1 + 176) + 16 * *(v15 + v20 - 28)) + *(*(a1 + 88) + 4 * *(v15 + v20 - 32));
          }
        }

        --v19;
        v20 -= 36;
      }

      while (v19 != -1);
      v16 = *a4;
      v23 = *(a1 + 168);
    }

    else
    {
      v23 = 0;
      v22 = 1879048192;
    }

    v24 = *(a1 + 28);
    if (v16 <= v22)
    {
      v25 = 0;
    }

    else
    {
      v25 = v16 - v22;
    }

    v26 = *(a5 + 12);
    v27 = v23;
    if (v23 > v26)
    {
      DgnPrimArray<unsigned int>::reallocElts(a5, v23 - v26, 0);
      v27 = *(a1 + 168);
    }

    *(a5 + 8) = v23;
    v17 = *a4;
    if (v27)
    {
      v28 = 0;
      v29 = 0;
      v30 = v17 - (v25 + v24) + *(a1 + 12);
      do
      {
        v31 = *a2;
        v32 = *(*a2 + v29);
        if (v32 == 2)
        {
          v33 = *a5;
          if (*(*(a1 + 176) + 16 * *(*(a1 + 160) + v28 + 8)) + *(*(a1 + 88) + 4 * *(*(a1 + 160) + v28 + 4)) <= v30)
          {
            *(v33 + 4 * v29) = v25 + v24;
            *(v31 + v29) = 1;
          }

          else
          {
            *(v33 + 4 * v29) = 1879048192;
            *(v31 + v29) = 0;
          }
        }

        else if (v32 == 1)
        {
          *(*a5 + 4 * v29) = 0;
        }

        else
        {
          *(*a5 + 4 * v29) = 1879048192;
        }

        ++v29;
        v28 += 36;
      }

      while (v29 < *(a1 + 168));
      v17 = *a4;
    }
  }

  return v17 != 1879048192;
}

unint64_t FstSearchLateLatticeHashBackoff::createLatticeNodes(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v8 = a2;
  v10 = *(a1 + 168);
  if (v10)
  {
    v11 = *(a2 + 2) == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    *a2 = MemChunkAlloc(4 * v10, 0);
    *(v8 + 2) = v10;
  }

  Node = Lattice<WordLatticeLC>::createNode(a4);
  result = a3;
  v14 = *(a3 + 8);
  if (v14 == *(a3 + 12))
  {
    DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
    result = a3;
    v14 = *(a3 + 8);
  }

  *(*result + 4 * v14) = Node;
  ++*(result + 8);
  v15 = *(a1 + 168);
  v16 = a7;
  if (v15)
  {
    v17 = -1;
    v39 = v8;
    do
    {
      --v15;
      v18 = *v8;
      *(*v8 + v15) = -1;
      if (*(*a6 + v15))
      {
        v19 = *(a1 + 160);
        v20 = *(*(a1 + 88) + 4 * *(v19 + 36 * v15 + 4));
        if (*(*v16 + v15) == 1)
        {
          if (*(*a6 + v15) != 1 || v17 == -1)
          {
            v22 = Lattice<WordLatticeLC>::createNode(a4);
            result = a3;
            v23 = *(a3 + 8);
            *(*v8 + v15) = v23;
            if (v23 == *(a3 + 12))
            {
              DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
              result = a3;
              v23 = *(a3 + 8);
            }

            *(*result + 4 * v23) = v22;
            v24 = *(result + 8);
            *(result + 8) = v24 + 1;
            if (*(*a6 + v15) == 1)
            {
              v17 = v24;
            }

            v19 = *(a1 + 160);
            v16 = a7;
          }

          else
          {
            *(v18 + v15) = v17;
          }
        }

        v25 = (v19 + 36 * v15);
        if (v25[3] >= 1)
        {
          v40 = v17;
          v26 = *v25;
          v27 = v25[2];
          do
          {
            v28 = *(a1 + 176);
            v29 = (v28 + 16 * v27);
            v30 = v29[3];
            if ((v30 & 0x80000000) != 0)
            {
              *v29 += v20;
            }

            else
            {
              if (v26 == 16777209)
              {
                v31 = *a5 + 16 * v30;
                v32 = *(v31 + 8);
                if (v32 == *(v31 + 12))
                {
                  result = DgnPrimArray<unsigned int>::reallocElts(v31, 1, 1);
                  v16 = a7;
                  v32 = *(v31 + 8);
                  v19 = *(a1 + 160);
                  v28 = *(a1 + 176);
                }

                *(*v31 + 4 * v32) = v15;
                ++*(v31 + 8);
                v30 = v29[3];
              }

              else
              {
                *(*v16 + v30) = 1;
              }

              v33 = v19 + 36 * v30;
              v34 = *(*(a1 + 88) + 4 * *(v33 + 4));
              v35 = (v28 + 16 * *(v33 + 8));
              v36 = v20 + *v29 - v34 - *v35;
              LODWORD(v35) = v29[1] - v35[1];
              *v29 = v36;
              v29[1] = v35;
              *(*a6 + v30) = 2;
              v19 = *(a1 + 160);
            }

            ++v27;
          }

          while (v27 < *(v19 + 36 * v15 + 12) + *(v19 + 36 * v15 + 8));
          v8 = v39;
          v17 = v40;
        }
      }
    }

    while (v15);
  }

  return result;
}

uint64_t FstSearchLateLatticeHashBackoff::buildWordLattice(uint64_t a1, unint64_t a2, void *a3, void *a4, char a5)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v26, *(a1 + 168));
  v9 = MemChunkAlloc(0x28uLL, 0);
  HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::HashProbeKEV(v9, 0, 128);
  v9[4] = a2;
  FstSearchLateLatticeHashBackoff::createLatticeNodes(a1, &v29, &v27, a2, v26, a3, a4);
  v23 = v9;
  v24 = *(a1 + 168);
  if (v24)
  {
    v11 = 0;
    v12 = v28;
    do
    {
      if (*(*a3 + v11))
      {
        v13 = (*(a1 + 160) + 36 * v11);
        if ((*v13 - 16777209) >= 2 && v13[3] >= 1)
        {
          v14 = v13[2];
          do
          {
            v15 = *(a1 + 176) + 16 * v14;
            v16 = *(v15 + 12);
            if (v16 == -1)
            {
              v17 = 0;
            }

            else
            {
              v17 = (v12 - *(v29 + v16));
            }

            v18 = *(v27 + 4 * v17);
            if (*(*a4 + v11) == 1)
            {
              FstSearchLateLatticeHashBackoff::createLatticeLink(a1, v11, v15, 0xFFFFFFFFLL, v18, *(v27 + 4 * (v12 - *(v29 + v11))), a2, v10, a5);
            }

            v19 = v26[0] + 16 * v11;
            if (*(v19 + 8))
            {
              v20 = 0;
              do
              {
                v21 = *(*v19 + 4 * v20);
                FstSearchLateLatticeHashBackoff::createLatticeLink(a1, v11, v15, v21, v18, *(v27 + 4 * (v12 - *(v29 + v21))), a2, v10, a5);
                ++v20;
                v19 = v26[0] + 16 * v11;
              }

              while (v20 < *(v19 + 8));
            }

            ++v14;
          }

          while (v14 < *(*(a1 + 160) + 36 * v11 + 12) + *(*(a1 + 160) + 36 * v11 + 8));
        }
      }

      ++v11;
    }

    while (v11 != v24);
  }

  DgnDelete<HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>>(v23);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v26);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v27);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v29);
}

void sub_262621440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va2);
  _Unwind_Resume(a1);
}

void FstSearchLateLatticeHashBackoff::createLatticeLink(uint64_t a1, unsigned int a2, int *a3, uint64_t a4, uint64_t a5, const WordLatticeLC *a6, unint64_t a7, uint64_t a8, char a9)
{
  v11 = a5;
  v12 = a4;
  v16 = *(a1 + 160);
  if ((a4 & 0x80000000) != 0 || (v17 = v16 + 36 * a4, v18 = *(v17 + 12), v18 < 1))
  {
    v22 = 0;
  }

  else
  {
    v19 = *(v17 + 8);
    v20 = v18 + v19;
    do
    {
      v21 = *(a1 + 176);
      if (*(v21 + 16 * v19 + 12) == a2)
      {
        v22 = (v21 + 16 * v19);
      }

      else
      {
        v22 = 0;
      }

      ++v19;
    }

    while (v19 < v20 && !v22);
  }

  ArcGraph::lexToCWIDAC(*(a1 + 40), *(v16 + 36 * a2), a3, a4, a5, a6, a7, a8, v44);
  v23 = a3[1];
  if (v22)
  {
    v23 += v22[1];
    v24 = *v22 + *a3;
  }

  else
  {
    v24 = *a3;
  }

  if (v44[0] >> 25 == 126)
  {
    v25 = 0;
    v26 = v23;
  }

  else
  {
    v25 = *(a1 + 136);
    v26 = v23 - v25;
  }

  v27 = v24 - v23;
  if ((v12 & 0x80000000) != 0)
  {
    v28 = 0;
  }

  else
  {
    v28 = *(a1 + 140);
    v26 -= v28;
  }

  v38 = v26;
  v39 = 0;
  v40 = v25;
  v41 = v27;
  v42 = 0;
  v43 = v28;
  v29 = a3[3];
  v30 = *(a1 + 160);
  if (v29 != -1)
  {
    v31 = *(v30 + 36 * v29 + 4);
    if (a9)
    {
      v32 = (v31 - 1) / 2 + 1;
      goto LABEL_24;
    }

    v32 = v31 + 1;
LABEL_27:
    v33 = *(v30 + 36 * a2 + 4);
    v34 = v33 - v32 + 1;
    if ((v12 & 0x80000000) == 0)
    {
      v35 = *(v30 + 36 * v12 + 4);
      goto LABEL_29;
    }

LABEL_30:
    v36 = 0;
    goto LABEL_31;
  }

  v32 = 0;
  if (!a9)
  {
    goto LABEL_27;
  }

LABEL_24:
  v33 = (*(v30 + 36 * a2 + 4) - 1) / 2;
  v34 = v33 - v32 + 1;
  if ((v12 & 0x80000000) != 0)
  {
    goto LABEL_30;
  }

  v35 = (*(v30 + 36 * v12 + 4) - 1) / 2;
LABEL_29:
  v36 = v35 - v33;
LABEL_31:
  WordLatticeLC::WordLatticeLC(v37, v44, v32, v34, v36, &v38);
  Lattice<WordLatticeLC>::maybeCreateAndConnectLinkAvoidMultiLinks(a7, v11, a6, v37);
  WordLatticeLC::~WordLatticeLC(v37);
}

void sub_26262168C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WordLatticeLC::~WordLatticeLC(va);
  _Unwind_Resume(a1);
}

uint64_t DgnDelete<HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>>(uint64_t result)
{
  if (result)
  {
    DgnPrimArray<unsigned int>::~DgnPrimArray(result + 16);
    inited = MrecInitModule_sdpres_sdapi();

    return MemChunkFree(inited, 0);
  }

  return result;
}

uint64_t Lattice<WordLatticeLC>::maybeCreateAndConnectLinkAvoidMultiLinks(unint64_t a1, unsigned int a2, const WordLatticeLC *a3, WordLatticeLC *this)
{
  v8 = *(*(a1 + 80) + 24 * a2 + 20);
  while (v8 != -2)
  {
    v9 = *(a1 + 128);
    v10 = v8;
    if (*(v9 + 136 * v8 + 120) == a3)
    {
      result = WordLatticeLC::cmpForMultiLinkCheck((v9 + 136 * v8), this, a3);
      if (result > 0)
      {
        return result;
      }

      v8 = *(*(a1 + 128) + 136 * v8 + 128);
      if ((result & 0x80000000) != 0)
      {
        Lattice<WordLatticeLC>::disconnectAndDestroyLink(a1, v10);
      }
    }

    else
    {
      v8 = *(v9 + 136 * v8 + 128);
    }
  }

  return Lattice<WordLatticeLC>::maybeCreateAndConnectLink(a1, a2, a3, this, 1, 0);
}

uint64_t FstSearchLateLatticeHashBackoff::beginTopRecSyncRecog(uint64_t this, VirtMap *a2)
{
  *(this + 112) = a2;
  if (*(this + 356) == 1)
  {
    return MiniFst::beginTopFstSyncRecog(this + 240);
  }

  return this;
}

uint64_t FstSearchLateLatticeHashBackoff::endTopRecSyncRecog(FstSearchLateLatticeHashBackoff *this)
{
  VirtMap::setEmpty(*(this + 14));
  result = *(this + 14);
  *(this + 14) = 0;
  return result;
}

uint64_t FstSearchLateLatticeHashBackoff::getBestExitScore(FstSearchLateLatticeHashBackoff *this)
{
  v17 = 0;
  v18 = 0;
  *(this + 57) = -1;
  v1 = *(this + 38);
  v2 = *(this + 50);
  if (v1 >= v2)
  {
    goto LABEL_16;
  }

  v4 = 0;
  v5 = 0;
  v6 = 24 * v1;
  do
  {
    v7 = *(this + 24) + v6;
    if (*(*(this + 5) + 160) == *(v7 + 4))
    {
      v8 = *(v7 + 8);
      if (v8 != -1 && *(*(this + 20) + 36 * v8 + 4) == *(this + 56))
      {
        if (v5 == HIDWORD(v18))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v17, 1, 1);
          v5 = v18;
          v4 = v17;
        }

        v4[v5] = v8;
        v5 = v18 + 1;
        LODWORD(v18) = v18 + 1;
        v2 = *(this + 50);
      }
    }

    ++v1;
    v6 += 24;
  }

  while (v1 < v2);
  if (v5)
  {
    v9 = *(this + 20);
    v10 = v5;
    v11 = 1879048192;
    do
    {
      v12 = *v4++;
      v13 = v9 + 36 * v12;
      v14 = *(v13 + 16);
      if (v11 > v14)
      {
        *(this + 57) = *(v13 + 20);
        v11 = v14;
      }

      --v10;
    }

    while (v10);
  }

  else
  {
LABEL_16:
    v11 = 1879048192;
  }

  if (v11 >= 20000)
  {
    v15 = 20000;
  }

  else
  {
    v15 = v11;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v17);
  return v15;
}

uint64_t FstSearchLateLatticeHashBackoff::getBestScoreMaybeUpdateFstNode(FstSearchLateLatticeHashBackoff *this, Node *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v2 = *(this + 50);
  if (v2)
  {
    v3 = *(this + 24);
    v4 = -1;
    v5 = 1879048192;
    do
    {
      if (v5 > *v3)
      {
        v4 = *(v3 + 12);
        v5 = *v3;
      }

      v3 += 24;
      --v2;
    }

    while (v2);
    v6 = 20000;
    if (v5 != 1879048192)
    {
      *(a2 + 5) = v5;
      *(a2 + 11) = v4;
      if (v5 >= 20000)
      {
        v6 = 20000;
      }

      else
      {
        v6 = v5;
      }
    }
  }

  else
  {
    v6 = 20000;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v8);
  return v6;
}