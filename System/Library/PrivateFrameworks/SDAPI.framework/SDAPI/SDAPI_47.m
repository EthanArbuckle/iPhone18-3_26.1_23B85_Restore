uint64_t TRule::test(uint64_t *a1, uint64_t a2, int *a3, int *a4)
{
  v4 = *a1;
  if (a1[1] == *a1)
  {
    return 1;
  }

  v9 = 0;
  do
  {
    result = TCondition::test(*(v4 + 8 * v9), a2, a3, a4);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v9;
    v4 = *a1;
  }

  while (v9 < (a1[1] - *a1) >> 3);
  return result;
}

void TGroup::TGroup(TGroup *this, const TFileObject *a2, TRegExp *a3, uint64_t a4, TLexicon *a5, TAllocator *a6)
{
  v78 = *MEMORY[0x277D85DE8];
  *(this + 32) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  std::vector<TState *>::reserve(this, 0xAuLL);
  v70 = xmmword_26286B680;
  v69 = dword_26288FAA0;
  v73 = xmmword_26286B6D0;
  v71 = -1;
  v72 = dword_26288FABC;
  v76 = xmmword_26286B6A0;
  v74 = -1;
  v75 = dword_26288FA80;
  v77 = -1;
  if (TFileObject::verify(a2, &v69, 3, 1))
  {
    std::string::basic_string[abi:ne200100]<0>(v66, &byte_262899963);
    *__p = byte_287529580;
    if ((v66[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], *v66, *&v66[8]);
    }

    else
    {
      *&__p[8] = *v66;
      v57[0] = *&v66[16];
    }

    *__p = &unk_287528000;
    if (v57[0] >= 0)
    {
      v48 = &__p[8];
    }

    else
    {
      v48 = *&__p[8];
    }

    conditionalAssert(v48, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/tkn/mungemapmgr.cpp", 586, v46, v47);
    *__p = byte_287529580;
    if (SHIBYTE(v57[0]) < 0)
    {
      operator delete(*&__p[8]);
    }

    if ((v66[23] & 0x80000000) != 0)
    {
      operator delete(*v66);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *exception = byte_287529580;
    v50 = (exception + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v50, *__p, *&__p[8]);
    }

    else
    {
      v51 = *__p;
      exception[3] = *&__p[16];
      *&v50->__r_.__value_.__l.__data_ = v51;
    }

    *exception = &unk_287528000;
  }

  v11 = *(a2 + 3);
  if (v11)
  {
    while (1)
    {
      v12 = *(v11 + 1);
      if (wcscmp(v12, dword_26288FAA0))
      {
        if (!wcscmp(v12, dword_26288FABC))
        {
          operator new();
        }

        if (!wcscmp(v12, dword_26288FA80))
        {
          *(this + 3) = buildReplaceObject(v11, a5, a6);
          *(this + 32) = 1;
        }

        goto LABEL_51;
      }

      *&v66[8] = vdupq_n_s64(1uLL);
      *v66 = &unk_26288FAF0;
      v67 = -1;
      if (TFileObject::verify(v11, v66, 1, 1))
      {
        std::string::basic_string[abi:ne200100]<0>(&__sz, &byte_262899963);
        v64 = byte_287529580;
        if (SHIBYTE(__sz.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v65, __sz.__r_.__value_.__l.__data_, __sz.__r_.__value_.__l.__size_);
        }

        else
        {
          v65 = __sz;
        }

        v64 = &unk_287528000;
        if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v37 = &v65;
        }

        else
        {
          v37 = v65.__r_.__value_.__r.__words[0];
        }

        conditionalAssert(v37, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/tkn/mungemapmgr.cpp", 517, v35, v36);
        v64 = byte_287529580;
        if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v65.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__sz.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__sz.__r_.__value_.__l.__data_);
        }

        v38 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v38 = byte_287529580;
        v39 = (v38 + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v39, *__p, *&__p[8]);
        }

        else
        {
          v43 = *__p;
          v38[3] = *&__p[16];
          *&v39->__r_.__value_.__l.__data_ = v43;
        }

        *v38 = &unk_287528000;
      }

      v13 = *(v11 + 3);
      if (v13)
      {
        break;
      }

LABEL_51:
      v11 = *(v11 + 2);
      if (!v11)
      {
        goto LABEL_79;
      }
    }

    v14 = 0;
    while (1)
    {
      if ((TFileObject::verify(v13, 1, 0) & 1) == 0)
      {
        v15 = *(v13 + 24);
        if (*(v13 + 40) == 2)
        {
          TRegExp::add(a3, v15, a4);
          goto LABEL_14;
        }

        if (!TLexicon::checkName(a5, v15, 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          if (*(getPropCheckTokenExistence() + 8) == 1 && !TLexicon::findHeadClone(a5, *(v13 + 24)))
          {
            loggableFileObject(v13);
            v24 = v60;
            v25 = v59;
            loggableUnicode(*(v13 + 24), __p);
            v30 = &v59;
            if (v24 < 0)
            {
              v30 = v25;
            }

            if (__p[23] >= 0)
            {
              v31 = __p;
            }

            else
            {
              v31 = *__p;
            }

            tknPrintf("Warning: %s'%s' isn't lexicalized.\n", v26, v27, v28, v29, v30, v31);
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }

            if (v60 < 0)
            {
              operator delete(v59);
            }
          }

          *__p = v57;
          *&__p[8] = xmmword_26286B6F0;
          v58 = 1;
          TRegExp::stringToRegExp(*(v13 + 24), __p, 0, 3);
          if (*&__p[16] >= *&__p[8])
          {
            if (v58)
            {
              v68 = 0;
              TBuffer<wchar_t>::insert(__p, *&__p[16], &v68, 1uLL);
              v32 = *__p;
              --*&__p[16];
            }

            else
            {
              v32 = *__p;
              if (*&__p[8])
              {
                *(*__p + 4 * *&__p[8] - 4) = 0;
              }
            }
          }

          else
          {
            v32 = *__p;
            *(*__p + 4 * *&__p[16]) = 0;
          }

          TRegExp::add(a3, v32, a4);
          if (v58 == 1 && *__p != v57 && *__p)
          {
            MEMORY[0x26672B1B0]();
          }

          goto LABEL_14;
        }

        loggableFileObject(v13);
        v16 = v62;
        v17 = v61;
        loggableUnicode(*(v13 + 24), __p);
        v22 = &v61;
        if (v16 < 0)
        {
          v22 = v17;
        }

        if (__p[23] >= 0)
        {
          v23 = __p;
        }

        else
        {
          v23 = *__p;
        }

        tknPrintf("Error: %s'%s' is an invalid token name.\n", v18, v19, v20, v21, v22, v23);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        if (v62 < 0)
        {
          operator delete(v61);
        }
      }

      v14 = 1;
LABEL_14:
      v13 = *(v13 + 16);
      if (!v13)
      {
        if (v14)
        {
          std::string::basic_string[abi:ne200100]<0>(&v53, &byte_262899963);
          v54 = byte_287529580;
          if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v55, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
          }

          else
          {
            v55 = v53;
          }

          v54 = &unk_287528000;
          if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v40 = &v55;
          }

          else
          {
            v40 = v55.__r_.__value_.__r.__words[0];
          }

          conditionalAssert(v40, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/tkn/mungemapmgr.cpp", 564, v33, v34);
          v54 = byte_287529580;
          if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v55.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v53.__r_.__value_.__l.__data_);
          }

          v41 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
          *v41 = byte_287529580;
          v42 = (v41 + 1);
          if ((__p[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v42, *__p, *&__p[8]);
          }

          else
          {
            v44 = *__p;
            v41[3] = *&__p[16];
            *&v42->__r_.__value_.__l.__data_ = v44;
          }

          *v41 = &unk_287528000;
        }

        goto LABEL_51;
      }
    }
  }

LABEL_79:
  v45 = *MEMORY[0x277D85DE8];
}

void sub_262802AC0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, void *a33, int a34, __int16 a35, char a36, char a37, int a38, __int16 a39, char a40, char a41)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    TGroup::freeMemory(v41);
    __cxa_rethrow();
  }

  JUMPOUT(0x262802BC8);
}

void sub_262802BB8(_Unwind_Exception *a1)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t *TGroup::freeMemory(uint64_t *this)
{
  v2 = *this;
  v1 = this[1];
  if (v1 != *this)
  {
    v3 = this;
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        TRule::~TRule(this);
        this = MEMORY[0x26672B1B0]();
        v2 = *v3;
        v1 = v3[1];
      }

      ++v4;
    }

    while (v4 < (v1 - v2) >> 3);
  }

  return this;
}

void TGroup::~TGroup(TGroup *this)
{
  TGroup::freeMemory(this);
  v2 = *this;
  if (*this)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

uint64_t TGroup::munge(uint64_t *a1, uint64_t a2, int *a3, int *a4)
{
  v4 = a1;
  v5 = *a1;
  if (a1[1] != *a1)
  {
    v9 = 0;
    while ((TRule::test(*(v5 + 8 * v9), a2, a3, a4) & 1) == 0)
    {
      ++v9;
      v5 = *v4;
      if (v9 >= (v4[1] - *v4) >> 3)
      {
        goto LABEL_7;
      }
    }

    v4 = *(*v4 + 8 * v9);
  }

LABEL_7:
  v10 = *(v4 + 32);
  return v4[3];
}

void TMungeMapManager::TMungeMapManager(TMungeMapManager *this, TInputStream *a2, TLexicon *a3)
{
  TAllocator::TAllocator(this, 2048);
  v4[5] = 0;
  v4[6] = 0;
  v4[7] = 0;
  v4[8] = a3;
  operator new();
}

void sub_262803528(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v3, 0x60C40CE5A77A8);
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 6) = v5;
    operator delete(v5);
  }

  TAllocator::clear(v1);
  _Unwind_Resume(a1);
}

TRegExp *TMungeMapManager::freeMemory(TMungeMapManager *this)
{
  result = *(this + 9);
  if (result)
  {
    TRegExp::~TRegExp(result);
    result = MEMORY[0x26672B1B0]();
  }

  v4 = *(this + 5);
  v3 = *(this + 6);
  if (v3 != v4)
  {
    v5 = 0;
    do
    {
      result = *(v4 + 8 * v5);
      if (result)
      {
        TGroup::~TGroup(result);
        result = MEMORY[0x26672B1B0]();
        v4 = *(this + 5);
        v3 = *(this + 6);
      }

      ++v5;
    }

    while (v5 < (v3 - v4) >> 3);
  }

  return result;
}

void TMungeMapManager::~TMungeMapManager(TMungeMapManager *this)
{
  TMungeMapManager::freeMemory(this);
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  TAllocator::clear(this);
}

void TMungeMapManager::mungeWithGroups(uint64_t a1, TVertex *this, TGraph *a3, int *a4, int *a5, TSegmenter *a6, unint64_t a7, unint64_t a8)
{
  v54 = v56;
  v55 = xmmword_26286B6F0;
  v57 = 1;
  v13 = *(this + 2);
  if (v13)
  {
    PreviousSegment = TSegmenter::getPreviousSegment(a6, v13);
    if (PreviousSegment)
    {
      if (*(PreviousSegment + 24) == 5)
      {
        goto LABEL_6;
      }

      a4 = *PreviousSegment;
    }

    TBuffer<wchar_t>::assign(&v54, a4);
  }

LABEL_6:
  __p[1] = 0;
  __p[0] = 0;
  v53 = 0;
  v48 = v50;
  v49 = xmmword_26286B6F0;
  v51 = 1;
  OutEdge = TVertex::getOutEdge(this);
  if (OutEdge)
  {
    v17 = &v46;
LABEL_8:
    v18 = *(OutEdge + 40);
    if (v18 >= a7 && v18 < a8)
    {
      v20 = *(OutEdge + 48);
      v21 = v20 > 5;
      v22 = (1 << v20) & 0x2C;
      if (v21 || v22 == 0)
      {
        TWord::getTokenName(*(OutEdge + 56), &v48);
        std::vector<TRegExpMatch>::resize(__p, 0);
        v24 = *(a1 + 72);
        if (*(&v49 + 1) >= v49)
        {
          if (v51)
          {
            LODWORD(v44) = 0;
            TBuffer<wchar_t>::insert(&v48, *(&v49 + 1), &v44, 1uLL);
            v25 = v48;
            --*(&v49 + 1);
          }

          else
          {
            v25 = v48;
            if (v49)
            {
              v48[v49 - 1] = 0;
            }
          }
        }

        else
        {
          v25 = v48;
          v48[*(&v49 + 1)] = 0;
        }

        TRegExp::match(v24, v25, 0, __p);
        if (__p[0] != __p[1])
        {
          v44 = sortMatch;
          std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(TItnControl const&,TItnControl const&),TItnControl*,false>(__p[0], __p[1], &v44, 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3)), 1, *__p);
          v44 = v17;
          v45 = xmmword_26286B6F0;
          v47 = 1;
          v26 = *(*(OutEdge + 24) + 24);
          v40 = v17;
          if (v26)
          {
            if (*v26)
            {
              Segment = TSegmenter::getSegment(a6, v26);
              if (*(Segment + 24) != 5)
              {
                TBuffer<wchar_t>::assign(&v44, *Segment);
              }
            }

            else
            {
              TBuffer<wchar_t>::assign(&v44, a5);
            }
          }

          v28 = __p[0];
          if (__p[1] == __p[0])
          {
            goto LABEL_68;
          }

          v29 = 0;
          v41 = *(OutEdge + 24);
          while (1)
          {
            v30 = *(*(a1 + 40) + 8 * v28[3 * v29 + 2]);
            if (*(&v55 + 1) >= v55)
            {
              if (v57)
              {
                v58[0] = 0;
                TBuffer<wchar_t>::insert(&v54, *(&v55 + 1), v58, 1uLL);
                v31 = v54;
                --*(&v55 + 1);
              }

              else
              {
                v31 = v54;
                if (v55)
                {
                  v54[v55 - 1] = 0;
                }
              }
            }

            else
            {
              v31 = v54;
              v54[*(&v55 + 1)] = 0;
            }

            if (*(&v45 + 1) >= v45)
            {
              if (v47)
              {
                v58[0] = 0;
                TBuffer<wchar_t>::insert(&v44, *(&v45 + 1), v58, 1uLL);
                v32 = v44;
                --*(&v45 + 1);
              }

              else
              {
                v32 = v44;
                if (v45)
                {
                  *(v44 + v45 - 1) = 0;
                }
              }
            }

            else
            {
              v32 = v44;
              *(v44 + *(&v45 + 1)) = 0;
            }

            v34 = TGroup::munge(v30, OutEdge, v31, v32);
            if (v34)
            {
              break;
            }

            if (v33)
            {
              v35 = TVertex::getOutEdge(this);
              if (v35)
              {
                v36 = 0;
LABEL_49:
                if (*(v35 + 48) != 5)
                {
                  ++v36;
                }

                while (1)
                {
                  v35 = *(v35 + 8);
                  if (!v35)
                  {
                    break;
                  }

                  if ((*(v35 + 32) & 1) == 0)
                  {
                    goto LABEL_49;
                  }
                }

                if (v36 >= 2)
                {
                  v37 = TVertex::getInEdge(v41);
                  if (v37)
                  {
                    v38 = 0;
LABEL_57:
                    if (*(v37 + 48) != 5)
                    {
                      ++v38;
                    }

                    while (1)
                    {
                      v37 = *v37;
                      if (!v37)
                      {
                        break;
                      }

                      if ((*(v37 + 32) & 1) == 0)
                      {
                        goto LABEL_57;
                      }
                    }

                    if (v38 >= 2)
                    {
                      TGraph::deleteEdge(a3, OutEdge);
LABEL_68:
                      v17 = v40;
                      if (v47 == 1 && v44 != v40 && v44)
                      {
                        MEMORY[0x26672B1B0]();
                      }

                      goto LABEL_16;
                    }
                  }
                }
              }
            }

            ++v29;
            v28 = __p[0];
            if (v29 >= 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3))
            {
              goto LABEL_68;
            }
          }

          if (v33)
          {
            TGraph::deleteEdge(a3, OutEdge);
          }

          addSequence(v34, this, v41, a3, *(a1 + 64), 0, 0, 0);
          goto LABEL_68;
        }
      }
    }

LABEL_16:
    while (1)
    {
      OutEdge = *(OutEdge + 8);
      if (!OutEdge)
      {
        break;
      }

      if ((*(OutEdge + 32) & 1) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  if (v51 == 1 && v48 != v50 && v48 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v57 == 1 && v54 != v56)
  {
    if (v54)
    {
      MEMORY[0x26672B1B0]();
    }
  }
}

void sub_262803B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (LOBYTE(STACK[0x458]) == 1 && a17 != a10 && a17)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0x878]) == 1)
  {
    v20 = STACK[0x460];
    if (STACK[0x460] != v18)
    {
      if (v20)
      {
        MEMORY[0x26672B1B0](v20, 0x1000C4052888210);
      }
    }
  }

  v21 = STACK[0x880];
  if (STACK[0x880])
  {
    STACK[0x888] = v21;
    operator delete(v21);
  }

  if (LOBYTE(STACK[0xCB8]) == 1)
  {
    v22 = STACK[0x8A0];
    if (STACK[0x8A0] != v17)
    {
      if (v22)
      {
        MEMORY[0x26672B1B0](v22, 0x1000C4052888210);
      }
    }
  }

  _Unwind_Resume(a1);
}

void TMungeMapManager::munge(uint64_t a1, TGraph *a2, int *a3, int *a4, TSegmenter *a5, unint64_t a6)
{
  if (*a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = &unk_26288FAE8;
  }

  if (*a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = &unk_26288FAE8;
  }

  v8 = *(a2 + 11) - *(a2 + 10);
  if (v8)
  {
    v13 = 0;
    v14 = (*(a2 + 14) - *(a2 + 13)) >> 3;
    v15 = v8 >> 3;
    if (v15 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v15;
    }

    do
    {
      v17 = *(*(a2 + 10) + 8 * v13);
      if ((*(v17 + 32) & 1) == 0)
      {
        TMungeMapManager::mungeWithGroups(a1, v17, a2, v6, v7, a5, a6, v14);
      }

      ++v13;
    }

    while (v16 != v13);
  }
}

void TGrammarManager::TGrammarManager(TGrammarManager *this, TInputStream *a2, const TTagManager *a3, TLexicon *a4, TItnParamManager *a5)
{
  *this = &unk_287523E50;
  *(this + 2) = &unk_287523E50;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 8) = -1;
  *(this + 7) = a5;
  *(this + 4) = a4;
  operator new();
}

void sub_262804D80(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

uint64_t callBackToken(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, TAllocator *a5)
{
  if (a2 != 1 || *a1 > 1uLL)
  {
    return 0;
  }

  v10 = *(a1 + 8);
  v11 = wcslen(v10);
  if (v11)
  {
    v12 = v11;
    if (TLexicon::checkName(a3, v10, *a4 > 3uLL, 0xFFFFFFFFFFFFFFFFLL))
    {
      loggableUnicode(*(a1 + 8), &__p);
      if (v24 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      tknPrintf("Warning: $Token('%s') : The formatter grammar constructed an invalid token.\n", v13, v14, v15, v16, p_p);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p);
      }

      return 0;
    }

    if ((v12 + 9) >> 62)
    {
      v18 = -1;
    }

    else
    {
      v18 = 4 * (v12 + 9);
    }

    __p = TAllocator::allocate(a5, v18);
    v23 = v12 + 9;
    v24 = 0;
    v26 = 0;
    TBuffer<wchar_t>::assign(&__p, dword_26288FD88);
    v19 = 0;
    v20 = *(a1 + 8);
      ;
    }

    TBuffer<wchar_t>::insert(&__p, v24, v20, v19 - 1);
    TBuffer<wchar_t>::insert(&__p, v24, &unk_26288FDA8, 1uLL);
    if (v24 >= v23)
    {
      if (v26)
      {
        v27 = 0;
        TBuffer<wchar_t>::insert(&__p, v24--, &v27, 1uLL);
      }

      else if (v23)
      {
        *(__p + v23 - 1) = 0;
      }
    }

    else
    {
      *(__p + v24) = 0;
    }

    if (v26 == 1 && __p != &v25 && __p)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  return 1;
}

void sub_26280501C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_262805238(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (LOBYTE(STACK[0x420]) == 1)
  {
    callBackSync(va);
  }

  _Unwind_Resume(a1);
}

void TWideChartSeeder::makeTerminals(uint64_t a1, uint64_t a2, uint64_t *a3, const void **a4, uint64_t a5, TAllocator *a6)
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 16) + a2;
  if (v6 < *(a1 + 24))
  {
    v8 = **(a1 + 8);
    if (v6 < 0x6DB6DB6DB6DB6DB7 * ((*(*(a1 + 8) + 8) - v8) >> 4) && (!a2 || (*(v8 + 112 * v6 + 32) & 1) == 0))
    {
      v53 = v55;
      v54 = xmmword_26286B6F0;
      v56 = 1;
      TWord::getTokenName(*(v8 + 112 * v6 + 16), &v53);
      v15 = *a3;
      v14 = a3[1];
      v16 = *(a1 + 32);
      if (*(&v54 + 1) >= v54)
      {
        if (v56)
        {
          LODWORD(v49) = 0;
          TBuffer<wchar_t>::insert(&v53, *(&v54 + 1), &v49, 1uLL);
          v17 = v53;
          --*(&v54 + 1);
        }

        else
        {
          v17 = v53;
          if (v54)
          {
            v53[v54 - 1] = 0;
          }
        }
      }

      else
      {
        v17 = v53;
        v53[*(&v54 + 1)] = 0;
      }

      TGrammar::getTerminals(v16, v17, a3);
      v18 = v14 - v15;
      if (a3[1] - *a3 != v18)
      {
        if ((*(&v54 + 1) + 1) >> 62)
        {
          v19 = -1;
        }

        else
        {
          v19 = 4 * (*(&v54 + 1) + 1);
        }

        v20 = TAllocator::allocate(a6, v19);
        if (*(&v54 + 1) >= v54)
        {
          if (v56)
          {
            LODWORD(v49) = 0;
            TBuffer<wchar_t>::insert(&v53, *(&v54 + 1), &v49, 1uLL);
            v21 = v53;
            --*(&v54 + 1);
          }

          else
          {
            v21 = v53;
            if (v54)
            {
              v53[v54 - 1] = 0;
            }
          }
        }

        else
        {
          v21 = v53;
          v53[*(&v54 + 1)] = 0;
        }

        wcscpy(v20, v21);
        v49 = v51;
        v50 = xmmword_26286B6F0;
        v52 = 1;
        TWord::getOptionalTagBits(*(**(a1 + 8) + 112 * *(a1 + 16) + 112 * a2 + 16), &v49);
        if ((*(&v50 + 1) + 1) >> 62)
        {
          v22 = -1;
        }

        else
        {
          v22 = 4 * (*(&v50 + 1) + 1);
        }

        v23 = TAllocator::allocate(a6, v22);
        if (*(&v50 + 1) >= v50)
        {
          if (v52)
          {
            LODWORD(v58) = 0;
            TBuffer<wchar_t>::insert(&v49, *(&v50 + 1), &v58, 1uLL);
            v24 = v49;
            --*(&v50 + 1);
          }

          else
          {
            v24 = v49;
            if (v50)
            {
              v49[v50 - 1] = 0;
            }
          }
        }

        else
        {
          v24 = v49;
          v49[*(&v50 + 1)] = 0;
        }

        wcscpy(v23, v24);
        *&v58 = 1;
        *(&v58 + 1) = v20;
        v59 = 1;
        v60 = v23;
        v57 = xmmword_279B40DF8;
        if (v18 < (a3[1] - *a3))
        {
          v25 = v18 >> 3;
          do
          {
            ClientData = TGrammarCompiler::makeClientData(&v57, &v58, 2, a6);
            v28 = *(a5 + 8);
            v27 = *(a5 + 16);
            if (v28 >= v27)
            {
              v30 = (v28 - *a5) >> 3;
              if ((v30 + 1) >> 61)
              {
                std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
              }

              v31 = v27 - *a5;
              v32 = v31 >> 2;
              if (v31 >> 2 <= (v30 + 1))
              {
                v32 = v30 + 1;
              }

              if (v31 >= 0x7FFFFFFFFFFFFFF8)
              {
                v33 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v33 = v32;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(a5, v33);
              }

              v34 = (8 * v30);
              *v34 = ClientData;
              v29 = 8 * v30 + 8;
              v35 = *(a5 + 8) - *a5;
              v36 = v34 - v35;
              memcpy(v34 - v35, *a5, v35);
              v37 = *a5;
              *a5 = v36;
              *(a5 + 8) = v29;
              *(a5 + 16) = 0;
              if (v37)
              {
                operator delete(v37);
              }
            }

            else
            {
              *v28 = ClientData;
              v29 = (v28 + 1);
            }

            *(a5 + 8) = v29;
            v39 = a4[1];
            v38 = a4[2];
            if (v39 >= v38)
            {
              v41 = *a4;
              v42 = v39 - *a4;
              v43 = v42 >> 3;
              v44 = (v42 >> 3) + 1;
              if (v44 >> 61)
              {
                std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
              }

              v45 = v38 - v41;
              if (v45 >> 2 > v44)
              {
                v44 = v45 >> 2;
              }

              if (v45 >= 0x7FFFFFFFFFFFFFF8)
              {
                v46 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v46 = v44;
              }

              if (v46)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a4, v46);
              }

              *(8 * v43) = 1;
              v40 = 8 * v43 + 8;
              memcpy(0, v41, v42);
              v47 = *a4;
              *a4 = 0;
              a4[1] = v40;
              a4[2] = 0;
              if (v47)
              {
                operator delete(v47);
              }
            }

            else
            {
              *v39 = 1;
              v40 = (v39 + 8);
            }

            a4[1] = v40;
            ++v25;
          }

          while (v25 < (a3[1] - *a3) >> 3);
        }

        if (v52 == 1 && v49 != v51 && v49)
        {
          MEMORY[0x26672B1B0]();
        }
      }

      if (v56 == 1 && v53 != v55 && v53)
      {
        MEMORY[0x26672B1B0]();
      }
    }
  }

  v48 = *MEMORY[0x277D85DE8];
}

void sub_262805768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (LOBYTE(STACK[0x448]) == 1 && a15 != a10 && a15 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0x868]) == 1)
  {
    v17 = STACK[0x450];
    if (STACK[0x450] != a14)
    {
      if (v17)
      {
        MEMORY[0x26672B1B0](v17, 0x1000C4052888210);
      }
    }
  }

  _Unwind_Resume(a1);
}

uint64_t TGrammarManager::getLMScore(uint64_t a1, __int32 *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v45[97] = *MEMORY[0x277D85DE8];
  v9 = a4;
  if (a4)
  {
    v10 = a4 - 1;
    if (a4 != 1 && TWord::getWordSpec(*(*a3 + 112 * a4 - 208)) != -1 && TWord::getWordSpec(*(*a3 + 112 * a4 - 96)) != -1)
    {
      v11 = v45;
      WordSpec = TWord::getWordSpec(*(*a3 + 112 * (a4 - 2) + 16));
      v44[0] = v12;
      v44[1] = TWord::getWordSpec(*(*a3 + 112 * v10 + 16));
      v9 = 2;
LABEL_8:
      *v11 = v13;
      goto LABEL_10;
    }

    if (TWord::getWordSpec(*(*a3 + 112 * a4 - 96)) != -1)
    {
      v11 = v44;
      WordSpec = TWord::getWordSpec(*(*a3 + 112 * v10 + 16));
      v9 = 1;
      goto LABEL_8;
    }

    v9 = 0;
  }

LABEL_10:
  v38 = v40;
  v39 = xmmword_26286B6F0;
  v41 = 1;
  if (*a2)
  {
    v14 = &v44[2 * v9];
    while (!wcsncmp(a2, dword_26288FD88, 7uLL))
    {
      v15 = a2 + 7;
      v16 = wcsstr(a2 + 7, &unk_26288FDA8);
      TBuffer<wchar_t>::resize(&v38, 0);
      TBuffer<wchar_t>::insert(&v38, 0, v15, v16 - v15);
      v17 = *(a1 + 32);
      if (*(&v39 + 1) >= v39)
      {
        if (v41)
        {
          v42[0] = 0;
          TBuffer<wchar_t>::insert(&v38, *(&v39 + 1), v42, 1uLL);
          v18 = v38;
          --*(&v39 + 1);
        }

        else
        {
          v18 = v38;
          if (v39)
          {
            v38[v39 - 1] = 0;
          }
        }
      }

      else
      {
        v18 = v38;
        v38[*(&v39 + 1)] = 0;
      }

      HeadClone = TLexicon::findHeadClone(v17, v18);
      if (!HeadClone)
      {
        break;
      }

      ++v9;
      *(v14 - 1) = TWord::getWordSpec(HeadClone);
      *v14 = v20;
      v21 = v16[1];
      a2 = v16 + 1;
      v14 += 2;
      if (!v21)
      {
        goto LABEL_21;
      }
    }

    v31 = 0;
  }

  else
  {
LABEL_21:
    v22 = a5 + a4;
    v23 = *a3;
    if (a5 + a4 < (0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 4)))
    {
      v24 = 112 * v22 + 16;
      v25 = &v44[2 * v9];
      v26 = v22 + 1;
      v27 = 1;
      do
      {
        if (TWord::getWordSpec(*(v23 + v24)) == -1)
        {
          break;
        }

        v28 = TWord::getWordSpec(*(*a3 + v24));
        v23 = *a3;
        v29 = (v26 < 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 4)) & v27;
        ++v9;
        *(v25 - 1) = v28;
        *v25 = v30;
        v24 += 112;
        v25 += 2;
        ++v26;
        v27 = 0;
      }

      while ((v29 & 1) != 0);
    }

    SDLm_LmScore(0, 0, 0, 0, 0, &WordSpec, v9, v42, v9, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    v31 = 0;
    if (v9)
    {
      v32 = v42;
      do
      {
        v33 = *v32++;
        v31 = (v33 + v31);
        --v9;
      }

      while (v9);
    }
  }

  if (v41 == 1 && v38 != v40 && v38 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  v35 = *MEMORY[0x277D85DE8];
  return v31;
}

void sub_262805BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (LOBYTE(STACK[0x470]) == 1 && a20 != v20 && a20 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

void *TGrammarManager::search(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 64) = a5;
  v8 = *(*(a1 + 40) + 56);
  v108[0] = &unk_287527308;
  v108[1] = a2;
  v108[2] = a3;
  v108[3] = a4;
  v108[4] = v8;
  v9 = *(a1 + 56);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v9 + 18256));
  v11 = *(v9 + TParam::getValidConfig((v9 + 18256), ActiveConfigHandle) + 18408);
  v12 = *(a1 + 48);
  v12[8] = v11;
  (*(*v12 + 16))(v12);
  v13 = *(a1 + 56);
  v14 = TParam::getActiveConfigHandle((v13 + 4040));
  v15 = *(v13 + 4 * TParam::getValidConfig((v13 + 4040), v14) + 4200);
  v16 = *(a1 + 48);
  v17 = *(v16 + 16);
  *(v16 + 24) = v15;
  (*(v17 + 16))();
  AllProductions = TParser::getAllProductions(*(a1 + 48), v108);
  TAllocator::TAllocator(v107, 2048);
  if (AllProductions)
  {
    v96 = 0;
    v23 = a2;
    while (1)
    {
      if (TGrammarCompiler::getAttributeValue(AllProductions, dword_26288FDB0, v107, 0) > 1)
      {
        goto LABEL_57;
      }

      v24 = v19;
      if (*v19)
      {
        LOBYTE(v98[0]) = 0;
        {
          operator new();
        }

        v25 = TLocaleInfo::stringToFloat(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v24, v98);
        if (LOBYTE(v98[0]) == 1)
        {
          loggableUnicode(v24, &__p);
          p_p = &__p;
          if (SHIBYTE(v102[0].__locale_) < 0)
          {
            p_p = __p;
          }

          tknPrintf("Error: 'priority' was '%s'. Expected a double-precision value.\n", v26, v27, v28, v29, p_p);
          goto LABEL_10;
        }

        v31 = v25;
      }

      else
      {
        v31 = 0.0;
      }

      if (TGrammarCompiler::getAttributeValue(AllProductions, dword_26288FDD4, v107, 0) > 1)
      {
        goto LABEL_57;
      }

      v32 = v19;
      if (!*v19)
      {
        tknPrintString("Error: 'result' was ''. Ignored production.\n");
        goto LABEL_57;
      }

      v33 = AllProductions[2];
      LOBYTE(v98[0]) = 0;
      AttributeValue = TGrammarCompiler::getAttributeValue(AllProductions, dword_26288FDF0, v107, v98);
      v36 = 0;
      if (LOBYTE(v98[0]) != 1 || AttributeValue > 1)
      {
        goto LABEL_25;
      }

      v37 = v35;
      v106 = 0;
      {
        operator new();
      }

      v38 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v37, &v106);
      if (!v106)
      {
        v36 = v38;
        if (v33 <= v38)
        {
          loggableUnicode(v37, &__p);
          v67 = &__p;
          if (SHIBYTE(v102[0].__locale_) < 0)
          {
            v67 = __p;
          }

          tknPrintf("Error: 'resultStart' was '%s'. Expected an integer value in the range [0,%lld).\n", v63, v64, v65, v66, v67, v33);
          goto LABEL_52;
        }

LABEL_25:
        LOBYTE(v98[0]) = 0;
        v44 = TGrammarCompiler::getAttributeValue(AllProductions, dword_26288FE20, v107, v98);
        v46 = 0;
        if (LOBYTE(v98[0]) != 1 || v44 > 1)
        {
LABEL_34:
          LMScore = TGrammarManager::getLMScore(a1, v32, v23, v36 + a3, v33 - (v36 + v46));
          v55 = v96;
          if (v96 <= LMScore)
          {
            v55 = LMScore;
          }

          v96 = v55;
          v56 = *(a6 + 8);
          v57 = *(a6 + 16);
          if (v56 >= v57)
          {
            v59 = 0x6DB6DB6DB6DB6DB7 * ((v56 - *a6) >> 3);
            v60 = v59 + 1;
            if ((v59 + 1) > 0x492492492492492)
            {
              std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
            }

            v61 = 0x6DB6DB6DB6DB6DB7 * ((v57 - *a6) >> 3);
            if (2 * v61 > v60)
            {
              v60 = 2 * v61;
            }

            if (v61 >= 0x249249249249249)
            {
              v62 = 0x492492492492492;
            }

            else
            {
              v62 = v60;
            }

            if (v62)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<TGrammarManager2Result>>(a6, v62);
            }

            v73 = 56 * v59;
            *v73 = AllProductions;
            *(v73 + 8) = v32;
            *(v73 + 16) = v33;
            *(v73 + 24) = v36;
            *(v73 + 32) = v46;
            *(v73 + 40) = v31;
            *(v73 + 48) = LMScore;
            v58 = 56 * v59 + 56;
            v74 = *(a6 + 8) - *a6;
            v75 = v73 - v74;
            memcpy((v73 - v74), *a6, v74);
            v76 = *a6;
            *a6 = v75;
            *(a6 + 8) = v58;
            *(a6 + 16) = 0;
            if (v76)
            {
              operator delete(v76);
            }
          }

          else
          {
            *v56 = AllProductions;
            *(v56 + 8) = v32;
            *(v56 + 16) = v33;
            *(v56 + 24) = v36;
            *(v56 + 32) = v46;
            *(v56 + 40) = v31;
            v58 = v56 + 56;
            *(v56 + 48) = LMScore;
          }

          *(a6 + 8) = v58;
          v23 = a2;
          goto LABEL_57;
        }

        v47 = v45;
        v106 = 0;
        {
          operator new();
        }

        v48 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v47, &v106);
        if (!v106)
        {
          if (v36 < v48)
          {
            v46 = v33 - v48;
            if (v33 >= v48)
            {
              goto LABEL_34;
            }
          }

          loggableUnicode(v47, &__p);
          v72 = &__p;
          if (SHIBYTE(v102[0].__locale_) < 0)
          {
            v72 = __p;
          }

          tknPrintf("Error: 'resultEnd' was '%s'. Expected an integer value in the range (%lld,%lld).\n", v68, v69, v70, v71, v72, v36, v33);
LABEL_52:
          if ((SHIBYTE(v102[0].__locale_) & 0x80000000) == 0)
          {
            goto LABEL_57;
          }

LABEL_11:
          operator delete(__p);
          goto LABEL_57;
        }

        loggableUnicode(v47, &__p);
        v53 = &__p;
        if (SHIBYTE(v102[0].__locale_) < 0)
        {
          v53 = __p;
        }

        tknPrintf("Error: 'resultEnd' was '%s'. Expected an integer value.\n", v49, v50, v51, v52, v53);
        goto LABEL_10;
      }

      loggableUnicode(v37, &__p);
      v43 = &__p;
      if (SHIBYTE(v102[0].__locale_) < 0)
      {
        v43 = __p;
      }

      tknPrintf("Error: 'resultStart' was '%s'. Expected an integer value.\n", v39, v40, v41, v42, v43);
LABEL_10:
      if (SHIBYTE(v102[0].__locale_) < 0)
      {
        goto LABEL_11;
      }

LABEL_57:
      AllProductions = *AllProductions;
      if (!AllProductions)
      {
        v77 = (v96 + 1);
        goto LABEL_66;
      }
    }
  }

  v77 = 1.0;
  v23 = a2;
LABEL_66:
  if (*(a1 + 24) == 1)
  {
    tknPrintf("Parse chart at index %llu:\n", v19, v20, v21, v22, a3);
    std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
    TParser::logChart(*(a1 + 48), &__p);
    std::stringbuf::str();
    if (v99 >= 0)
    {
      v78 = v98;
    }

    else
    {
      v78 = v98[0];
    }

    tknPrintString(v78);
    v23 = a2;
    if (v99 < 0)
    {
      operator delete(v98[0]);
    }

    __p = *MEMORY[0x277D82828];
    *(&__p + *(__p - 3)) = *(MEMORY[0x277D82828] + 24);
    v101 = MEMORY[0x277D82878] + 16;
    if (v104 < 0)
    {
      operator delete(v103);
    }

    v101 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v102);
    std::ostream::~ostream();
    MEMORY[0x26672B160](v105);
  }

  v79 = *a6;
  v80 = *(a6 + 8);
  v81 = *a6;
  if (*a6 != v80)
  {
    v82 = 0x6DB6DB6DB6DB6DB7 * ((v80 - v81) >> 3);
    v83 = v82 <= 1 ? 1 : 0x6DB6DB6DB6DB6DB7 * ((v80 - v81) >> 3);
    v84 = v81 + 40;
    do
    {
      v79.n128_u32[0] = *(v84 + 2);
      v79.n128_f64[0] = *v84 + v79.n128_u64[0] / v77;
      *v84 = v79.n128_u64[0];
      v84 += 56;
      --v83;
    }

    while (v83);
    __p = sortResult;
    std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(TGrammarManager2Result const&,TGrammarManager2Result const&),TGrammarManager2Result*,false>(v81, v80, &__p, 126 - 2 * __clz(v82), 1, v79);
    if (*(a1 + 8) == 1)
    {
      tknPrintString("Parse tree for word sequence:");
      if (*(*a6 + 16))
      {
        v85 = 0;
        v86 = 112 * a3 + 16;
        do
        {
          tknPrintString(" ");
          loggableUnicode(**(*v23 + v86), &__p);
          if (SHIBYTE(v102[0].__locale_) >= 0)
          {
            v87 = &__p;
          }

          else
          {
            v87 = __p;
          }

          tknPrintString(v87);
          if (SHIBYTE(v102[0].__locale_) < 0)
          {
            operator delete(__p);
          }

          ++v85;
          v86 += 112;
        }

        while (v85 < *(*a6 + 16));
      }

      tknPrintString("\n");
      std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
      v89 = *a6;
      v88 = *(a6 + 8);
      if (v88 != *a6)
      {
        v90 = 0;
        v91 = 0;
        do
        {
          v92 = &v89[v90];
          if (*(v89 + 2) != *&v89[v90 + 2] || v89[5] != v92[5])
          {
            break;
          }

          if (*(v89 + 3) == *&v89[v90 + 3] && *(v89 + 4) == *&v89[v90 + 4])
          {
            TParser::logTree(*(a1 + 48), *v92, &__p);
            std::stringbuf::str();
            if (v99 >= 0)
            {
              v93 = v98;
            }

            else
            {
              v93 = v98[0];
            }

            tknPrintString(v93);
            if (v99 < 0)
            {
              operator delete(v98[0]);
            }

            v89 = *a6;
            v88 = *(a6 + 8);
          }

          ++v91;
          v90 += 7;
        }

        while (v91 < 0x6DB6DB6DB6DB6DB7 * ((v88 - v89) >> 3));
      }

      __p = *MEMORY[0x277D82828];
      *(&__p + *(__p - 3)) = *(MEMORY[0x277D82828] + 24);
      v101 = MEMORY[0x277D82878] + 16;
      if (v104 < 0)
      {
        operator delete(v103);
      }

      v101 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v102);
      std::ostream::~ostream();
      MEMORY[0x26672B160](v105);
    }
  }

  return TAllocator::clear(v107);
}

void sub_262806764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  MEMORY[0x26672B1B0](v28, 0x1070C40ADD13FEBLL);
  TAllocator::clear((v29 - 184));
  _Unwind_Resume(a1);
}

void TLmScore::TLmScore(unint64_t *a1, unint64_t a2)
{
  a1[4] = 0;
  *a1 = a2;
  SDVoc_GetInfo(a2, v3);
  a1[2] = v4;
  operator new[]();
}

uint64_t TLmScore::getClass(TLmScore *this, const char *a2)
{
  Handle = SDWord_GetHandle(*this, a2);
  if (Handle == -1)
  {
    return *(this + 4);
  }

  SDWord_GetTagBits(*this, Handle, 1uLL, *(this + 3), (*(this + 2) + 7) >> 3);
  v4 = *(this + 2);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  result = 0;
  do
  {
    result |= ((*(*(this + 3) + (v5 >> 3)) >> (v5 & 7) << 63) >> 63) & (1 << v5);
    ++v5;
  }

  while (v4 != v5);
  return result;
}

void TLmScore::~TLmScore(TLmScore *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x26672B1B0](v2, 0x1000C4077774924);
  }

  if (*this != -1)
  {
    SDWord_DeleteList(*this, this + 8, 1u);
    SDVoc_Delete(*this);
  }
}

double TLmScore::getLmScore(unint64_t *a1, uint64_t *a2, const char *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = *a1;
  if (a2[1] == *a2)
  {
    LODWORD(v9) = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = (v5 + v8);
      if (*(v5 + v8 + 23) < 0)
      {
        v10 = *v10;
      }

      Handle = SDWord_GetHandle(v6, v10);
      if (Handle == -1)
      {
        Handle = a1[1];
      }

      v6 = *a1;
      v12 = &v18[2 * v9++];
      *v12 = *a1;
      v12[1] = Handle;
      v5 = *a2;
      v8 += 24;
    }

    while (v9 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  v13 = SDWord_GetHandle(v6, a3);
  if (v13 == -1)
  {
    v13 = a1[1];
  }

  v17[0] = *a1;
  v17[1] = v13;
  v16 = 0;
  SDLm_LmScore(0, 0, 0, v18, v9, v17, 1u, &v16, 1u, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  v14 = *MEMORY[0x277D85DE8];
  return v16;
}

double TLmScore::getLmScore(TLmScore *this, const char *a2)
{
  Handle = SDWord_GetHandle(*this, a2);
  if (Handle == -1)
  {
    Handle = *(this + 1);
  }

  v6[0] = *this;
  v6[1] = Handle;
  v5 = 0;
  SDLm_LmScore(0, 0, 0, 0, 0, v6, 1u, &v5, 1u, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  return v5;
}

void TCompounderParamManager::TCompounderParamManager(TCompounderParamManager *this, TLocaleInfo *a2)
{
  TLattProcParamManager::TLattProcParamManager(this, a2);
  *v3 = &unk_2875251D0;
  TBoolParam::TBoolParam((v3 + 62), &unk_26288FE90, &unk_26288FED0, 0, 0, &unk_26288FF70, &unk_26288FFA8);
  TBoolParam::TBoolParam(this + 744, &unk_26288FFAC, &unk_26288FFF4, 0, 0, &unk_26288FF70, &unk_26288FFA8);
  TBoolParam::TBoolParam(this + 992, &unk_262890108, &unk_262890154, 0, 0, &unk_2628902D4, &unk_26288FFA8);
  TBoolParam::TBoolParam(this + 1240, &unk_262890314, &unk_262890370, 0, 0, &unk_2628904C8, &unk_26288FFA8);
  TIntParam::TIntParam((this + 1488), &unk_262890508, &unk_262890574, 0, -1, 10000, -1, &unk_262890BD0, &unk_26288FFA8);
  TParamManager::add(this, (this + 496));
  TParamManager::add(this, (this + 744));
  TParamManager::add(this, (this + 992));
  TParamManager::add(this, (this + 1240));
  TParamManager::add(this, (this + 1488));
}

void sub_262806DE8(_Unwind_Exception *a1)
{
  TBoolParam::~TBoolParam(v1 + 155);
  TBoolParam::~TBoolParam(v1 + 124);
  TBoolParam::~TBoolParam(v1 + 93);
  TBoolParam::~TBoolParam(v1 + 62);
  TLattProcParamManager::~TLattProcParamManager(v1);
  _Unwind_Resume(a1);
}

void TCompounder::TCompounder(TCompounder *this, TInputStream *a2, const char *a3, TLexicon *a4)
{
  v4 = TLatticeProcessor::TLatticeProcessor(this, a4, 0);
  *v4 = &unk_287528F98;
  *(v4 + 64) = 0u;
  *(v4 + 248) = v4 + 256;
  *(v4 + 256) = 0;
  *(v4 + 264) = 0;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  *(v4 + 160) = 0u;
  *(v4 + 176) = 0u;
  *(v4 + 192) = 0u;
  *(v4 + 208) = 0u;
  *(v4 + 224) = 0u;
  *(v4 + 240) = 0;
  *(v4 + 272) = v4 + 280;
  *(v4 + 280) = 0;
  *(v4 + 392) = 0;
  *(v4 + 400) = 0;
  *(v4 + 408) = 0;
  *(v4 + 288) = 0;
  *(v4 + 296) = 0;
  *(v4 + 328) = 0u;
  *(v4 + 344) = 0u;
  *(v4 + 304) = 3;
  *(v4 + 312) = 0x3FE0000000000000;
  *(v4 + 368) = 0;
  *(v4 + 376) = 0;
  operator new();
}

void sub_262806F84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x26672B1B0](v4, 0x10F3C407200CA0FLL);
  v9 = *(v2 + 49);
  if (v9)
  {
    *(v2 + 50) = v9;
    operator delete(v9);
  }

  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](va);
  std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::destroy(v2 + 272, *v7);
  std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::destroy(v3, *v6);
  v10 = *v5;
  if (*v5)
  {
    *(v2 + 9) = v10;
    operator delete(v10);
  }

  TLatticeProcessor::~TLatticeProcessor(v2);
  _Unwind_Resume(a1);
}

void TCompounder::initFugenSEndings(TCompounder *this)
{
  v27 = *MEMORY[0x277D85DE8];
  *(this + 40) = 14;
  std::vector<std::string>::resize((this + 328), 0xEuLL);
  std::wstring::basic_string[abi:ne200100]<0>(&v13, dword_2628911E4);
  std::wstring::basic_string[abi:ne200100]<0>(v14, dword_2628911F0);
  std::wstring::basic_string[abi:ne200100]<0>(v15, dword_262891200);
  std::wstring::basic_string[abi:ne200100]<0>(v16, dword_262891214);
  std::wstring::basic_string[abi:ne200100]<0>(v17, dword_262891224);
  std::wstring::basic_string[abi:ne200100]<0>(v18, dword_262891234);
  std::wstring::basic_string[abi:ne200100]<0>(v19, dword_262891248);
  std::wstring::basic_string[abi:ne200100]<0>(v20, dword_26289125C);
  std::wstring::basic_string[abi:ne200100]<0>(v21, dword_262891274);
  std::wstring::basic_string[abi:ne200100]<0>(v22, dword_262891290);
  std::wstring::basic_string[abi:ne200100]<0>(v23, dword_2628912A8);
  std::wstring::basic_string[abi:ne200100]<0>(v24, dword_2628912B8);
  std::wstring::basic_string[abi:ne200100]<0>(v25, dword_2628912C4);
  std::wstring::basic_string[abi:ne200100]<0>(v26, dword_2628912D4);
  if (*(this + 40))
  {
    v2 = 0;
    v3 = *(this + 41);
    do
    {
      std::wstring::operator=((v3 + 24 * v2), &v13 + v2);
      v3 = *(this + 41);
      v4 = v3 + 24 * v2;
      v5 = *(v4 + 23);
      if (v5 < 0)
      {
        v4 = *v4;
        v5 = *(v3 + 24 * v2 + 8);
      }

      v6 = (v4 + 4 * v5 - 4);
      if (v5)
      {
        v7 = v6 > v4;
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        v8 = v4 + 4;
        do
        {
          v9 = *(v8 - 4);
          *(v8 - 4) = *v6;
          *v6-- = v9;
          v10 = v8 >= v6;
          v8 += 4;
        }

        while (!v10);
      }

      ++v2;
    }

    while (v2 < *(this + 40));
  }

  v11 = 336;
  do
  {
    if (*(&v13.__r_.__value_.__l + v11 - 1) < 0)
    {
      operator delete(*(&v13.__r_.__value_.__l + v11 - 24));
    }

    v11 -= 24;
  }

  while (v11);
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t TCompounder::loadModel(uint64_t this, TInputStream *a2, const char *a3)
{
  v266 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) != 1)
  {
    goto LABEL_142;
  }

  v4 = this;
  if (TInputStream::verifyHeader(a2, "FeatureConfig", &pFeatureConfigVersion, 3))
  {
    std::string::basic_string[abi:ne200100]<0>(v250, &byte_262899963);
    *__s = byte_287529580;
    if ((v250[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&__s[8], *v250, *&v250[8]);
    }

    else
    {
      *&__s[8] = *v250;
      v254[0] = *&v250[16];
    }

    *__s = &unk_287528000;
    if (v254[0] >= 0)
    {
      v219 = &__s[8];
    }

    else
    {
      v219 = *&__s[8];
    }

    conditionalAssert(v219, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2477, v200, v201);
    *__s = byte_287529580;
    if (SHIBYTE(v254[0]) < 0)
    {
      operator delete(*&__s[8]);
    }

    if ((v250[23] & 0x80000000) != 0)
    {
      operator delete(*v250);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__s, &byte_262899963);
    *exception = byte_287529580;
    v221 = (exception + 1);
    if ((__s[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v221, *__s, *&__s[8]);
    }

    else
    {
      v241 = *__s;
      exception[3] = *&__s[16];
      *&v221->__r_.__value_.__l.__data_ = v241;
    }

    *exception = &unk_287528000;
  }

  *__s = v254;
  *&__s[8] = xmmword_26286B6F0;
  v255 = 1;
  *v250 = v251;
  *&v250[8] = xmmword_26286B6F0;
  v252 = 1;
  v262 = v264;
  v263 = xmmword_26286B6F0;
  v265 = 1;
  v258 = v260;
  v259 = xmmword_26286B6F0;
  v261 = 1;
  v249 = 0;
  MEMORY[0x26672AF30](a2 + 128, &unk_262890C98);
  while (1)
  {
    this = TInputStream::getNextLine(a2, v250);
    if ((this & 1) == 0)
    {
      break;
    }

    if (*&v250[16] >= *&v250[8])
    {
      if (v252)
      {
        *__p = 0;
        TBuffer<wchar_t>::insert(v250, *&v250[16], __p, 1uLL);
        v5 = *v250;
        --*&v250[16];
      }

      else
      {
        v5 = *v250;
        if (*&v250[8])
        {
          *(*v250 + 4 * *&v250[8] - 4) = 0;
        }
      }
    }

    else
    {
      v5 = *v250;
      *(*v250 + 4 * *&v250[16]) = 0;
    }

    NextToken = getNextToken(v5, __s, dword_262890CA4);
    if (NextToken)
    {
      v7 = *&__s[16];
      if (*&__s[16] >= *&__s[8])
      {
        if (v255)
        {
          *__p = 0;
          TBuffer<wchar_t>::insert(__s, *&__s[16], __p, 1uLL);
          v8 = *__s;
          v7 = --*&__s[16];
        }

        else
        {
          v8 = *__s;
          if (*&__s[8])
          {
            *(*__s + 4 * *&__s[8] - 4) = 0;
          }
        }
      }

      else
      {
        v8 = *__s;
        *(*__s + 4 * *&__s[16]) = 0;
      }

      if (!wcscmp(v8, dword_262890CB0))
      {
        if (*(a2 + 12) >= 3uLL)
        {
          if (*(a2 + 39) >= 0)
          {
            v127 = a2 + 16;
          }

          else
          {
            v127 = *(a2 + 2);
          }

          v128 = *(a2 + 8);
          v129 = TBuffer<wchar_t>::c_str(__s);
          loggableUnicode(v129, __p);
          if (__p[23] >= 0)
          {
            v134 = __p;
          }

          else
          {
            v134 = *__p;
          }

          tknPrintf("Error: %s (%llu) : Feature name '%s' is not supported in version %llu.  This was renamed to 'wordsucc' in version 3.\n", v130, v131, v132, v133, v127, v128, v134, *(a2 + 12));
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          std::string::basic_string[abi:ne200100]<0>(v247, &byte_262899963);
          *__p = byte_287529580;
          if (SHIBYTE(v248) < 0)
          {
            std::string::__init_copy_ctor_external(&__p[8], v247[0], v247[1]);
          }

          else
          {
            *&__p[8] = *v247;
            v257 = v248;
          }

          *__p = &unk_287528000;
          if (v257 >= 0)
          {
            v222 = &__p[8];
          }

          else
          {
            v222 = *&__p[8];
          }

          conditionalAssert(v222, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2501, v135, v136);
          *__p = byte_287529580;
          if (SHIBYTE(v257) < 0)
          {
            operator delete(*&__p[8]);
          }

          if (SHIBYTE(v248) < 0)
          {
            operator delete(v247[0]);
          }

          v223 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
          *v223 = byte_287529580;
          v224 = (v223 + 1);
          if ((__p[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v224, *__p, *&__p[8]);
          }

          else
          {
            v242 = *__p;
            v223[3] = *&__p[16];
            *&v224->__r_.__value_.__l.__data_ = v242;
          }

          *v223 = &unk_287528000;
        }

LABEL_55:
        v9 = 1;
        goto LABEL_56;
      }

      if (v7 >= *&__s[8])
      {
        if (v255)
        {
          *__p = 0;
          TBuffer<wchar_t>::insert(__s, v7, __p, 1uLL);
          v8 = *__s;
          v7 = --*&__s[16];
        }

        else if (*&__s[8])
        {
          v8[*&__s[8] - 1] = 0;
        }
      }

      else
      {
        v8[v7] = 0;
      }

      if (wcscmp(v8, dword_262890CC4))
      {
        if (v7 >= *&__s[8])
        {
          if (v255)
          {
            *__p = 0;
            TBuffer<wchar_t>::insert(__s, v7, __p, 1uLL);
            v8 = *__s;
            v7 = --*&__s[16];
          }

          else if (*&__s[8])
          {
            v8[*&__s[8] - 1] = 0;
          }
        }

        else
        {
          v8[v7] = 0;
        }

        if (!wcscmp(v8, dword_262890CDC))
        {
          if (*(a2 + 12) <= 1uLL)
          {
            if (*(a2 + 39) >= 0)
            {
              v168 = a2 + 16;
            }

            else
            {
              v168 = *(a2 + 2);
            }

            v169 = *(a2 + 8);
            v170 = TBuffer<wchar_t>::c_str(__s);
            loggableUnicode(v170, __p);
            if (__p[23] >= 0)
            {
              v175 = __p;
            }

            else
            {
              v175 = *__p;
            }

            tknPrintf("Error: %s (%llu) : Feature name '%s' is not supported in version %llu.  Must be version 2 or higher.\n", v171, v172, v173, v174, v168, v169, v175, *(a2 + 12));
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }

            std::string::basic_string[abi:ne200100]<0>(v247, &byte_262899963);
            *__p = byte_287529580;
            if (SHIBYTE(v248) < 0)
            {
              std::string::__init_copy_ctor_external(&__p[8], v247[0], v247[1]);
            }

            else
            {
              *&__p[8] = *v247;
              v257 = v248;
            }

            *__p = &unk_287528000;
            if (v257 >= 0)
            {
              v235 = &__p[8];
            }

            else
            {
              v235 = *&__p[8];
            }

            conditionalAssert(v235, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2519, v176, v177);
            *__p = byte_287529580;
            if (SHIBYTE(v257) < 0)
            {
              operator delete(*&__p[8]);
            }

            if (SHIBYTE(v248) < 0)
            {
              operator delete(v247[0]);
            }

            v236 = __cxa_allocate_exception(0x20uLL);
            std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
            *v236 = byte_287529580;
            v237 = (v236 + 1);
            if ((__p[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(v237, *__p, *&__p[8]);
            }

            else
            {
              v245 = *__p;
              v236[3] = *&__p[16];
              *&v237->__r_.__value_.__l.__data_ = v245;
            }

            *v236 = &unk_287528000;
          }

          v9 = 3;
          v10 = 1;
          goto LABEL_57;
        }

        if (v7 >= *&__s[8])
        {
          if (v255)
          {
            *__p = 0;
            TBuffer<wchar_t>::insert(__s, v7, __p, 1uLL);
            v8 = *__s;
            v7 = --*&__s[16];
          }

          else if (*&__s[8])
          {
            v8[*&__s[8] - 1] = 0;
          }
        }

        else
        {
          v8[v7] = 0;
        }

        if (wcscmp(v8, dword_262890CFC))
        {
          if (v7 >= *&__s[8])
          {
            if (v255)
            {
              *__p = 0;
              TBuffer<wchar_t>::insert(__s, v7, __p, 1uLL);
              v8 = *__s;
              --*&__s[16];
            }

            else if (*&__s[8])
            {
              v8[*&__s[8] - 1] = 0;
            }
          }

          else
          {
            v8[v7] = 0;
          }

          if (wcscmp(v8, dword_262890D20))
          {
            v147 = *(a2 + 2);
            v146 = a2 + 16;
            v145 = v147;
            if (v146[23] >= 0)
            {
              v148 = v146;
            }

            else
            {
              v148 = v145;
            }

            v149 = *(v146 + 6);
            v150 = TBuffer<wchar_t>::c_str(__s);
            loggableUnicode(v150, __p);
            if (__p[23] >= 0)
            {
              v155 = __p;
            }

            else
            {
              v155 = *__p;
            }

            tknPrintf("Error: %s (%llu) : Unsupported feature name '%s'\n", v151, v152, v153, v154, v148, v149, v155);
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }

            std::string::basic_string[abi:ne200100]<0>(v247, &byte_262899963);
            *__p = byte_287529580;
            if (SHIBYTE(v248) < 0)
            {
              std::string::__init_copy_ctor_external(&__p[8], v247[0], v247[1]);
            }

            else
            {
              *&__p[8] = *v247;
              v257 = v248;
            }

            *__p = &unk_287528000;
            if (v257 >= 0)
            {
              v229 = &__p[8];
            }

            else
            {
              v229 = *&__p[8];
            }

            conditionalAssert(v229, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2555, v156, v157);
            *__p = byte_287529580;
            if (SHIBYTE(v257) < 0)
            {
              operator delete(*&__p[8]);
            }

            if (SHIBYTE(v248) < 0)
            {
              operator delete(v247[0]);
            }

            v230 = __cxa_allocate_exception(0x20uLL);
            std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
            *v230 = byte_287529580;
            v231 = (v230 + 1);
            if ((__p[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(v231, *__p, *&__p[8]);
            }

            else
            {
              v243 = *__p;
              v230[3] = *&__p[16];
              *&v231->__r_.__value_.__l.__data_ = v243;
            }

            *v230 = &unk_287528000;
          }

          if (*(a2 + 12) <= 2uLL)
          {
            if (*(a2 + 39) >= 0)
            {
              v158 = a2 + 16;
            }

            else
            {
              v158 = *(a2 + 2);
            }

            v159 = *(a2 + 8);
            v160 = TBuffer<wchar_t>::c_str(__s);
            loggableUnicode(v160, __p);
            if (__p[23] >= 0)
            {
              v165 = __p;
            }

            else
            {
              v165 = *__p;
            }

            tknPrintf("Error: %s (%llu) : Feature name '%s' is not supported in version %llu.  Must be version 3 or higher.\n", v161, v162, v163, v164, v158, v159, v165, *(a2 + 12));
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }

            std::string::basic_string[abi:ne200100]<0>(v247, &byte_262899963);
            *__p = byte_287529580;
            if (SHIBYTE(v248) < 0)
            {
              std::string::__init_copy_ctor_external(&__p[8], v247[0], v247[1]);
            }

            else
            {
              *&__p[8] = *v247;
              v257 = v248;
            }

            *__p = &unk_287528000;
            if (v257 >= 0)
            {
              v232 = &__p[8];
            }

            else
            {
              v232 = *&__p[8];
            }

            conditionalAssert(v232, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2545, v166, v167);
            *__p = byte_287529580;
            if (SHIBYTE(v257) < 0)
            {
              operator delete(*&__p[8]);
            }

            if (SHIBYTE(v248) < 0)
            {
              operator delete(v247[0]);
            }

            v233 = __cxa_allocate_exception(0x20uLL);
            std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
            *v233 = byte_287529580;
            v234 = (v233 + 1);
            if ((__p[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(v234, *__p, *&__p[8]);
            }

            else
            {
              v244 = *__p;
              v233[3] = *&__p[16];
              *&v234->__r_.__value_.__l.__data_ = v244;
            }

            *v233 = &unk_287528000;
          }

          goto LABEL_55;
        }

        if (*(a2 + 12) <= 2uLL)
        {
          if (*(a2 + 39) >= 0)
          {
            v190 = a2 + 16;
          }

          else
          {
            v190 = *(a2 + 2);
          }

          v191 = *(a2 + 8);
          v192 = TBuffer<wchar_t>::c_str(__s);
          loggableUnicode(v192, __p);
          if (__p[23] >= 0)
          {
            v197 = __p;
          }

          else
          {
            v197 = *__p;
          }

          tknPrintf("Error: %s (%llu) : Feature name '%s' is not supported in version %llu.  Must be version 3 or higher.\n", v193, v194, v195, v196, v190, v191, v197, *(a2 + 12));
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          std::string::basic_string[abi:ne200100]<0>(v247, &byte_262899963);
          *__p = byte_287529580;
          if (SHIBYTE(v248) < 0)
          {
            std::string::__init_copy_ctor_external(&__p[8], v247[0], v247[1]);
          }

          else
          {
            *&__p[8] = *v247;
            v257 = v248;
          }

          *__p = &unk_287528000;
          if (v257 >= 0)
          {
            v238 = &__p[8];
          }

          else
          {
            v238 = *&__p[8];
          }

          conditionalAssert(v238, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2532, v198, v199);
          *__p = byte_287529580;
          if (SHIBYTE(v257) < 0)
          {
            operator delete(*&__p[8]);
          }

          if (SHIBYTE(v248) < 0)
          {
            operator delete(v247[0]);
          }

          v239 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
          *v239 = byte_287529580;
          v240 = (v239 + 1);
          if ((__p[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v240, *__p, *&__p[8]);
          }

          else
          {
            v246 = *__p;
            v239[3] = *&__p[16];
            *&v240->__r_.__value_.__l.__data_ = v246;
          }

          *v239 = &unk_287528000;
        }

        v9 = 0;
LABEL_56:
        v10 = 2;
        goto LABEL_57;
      }

      v9 = 2;
      v10 = 4;
LABEL_57:
      v15 = getNextToken(NextToken, __s, dword_262890CA4);
      if (!v15)
      {
        v93 = *(a2 + 2);
        v92 = a2 + 16;
        v91 = v93;
        if (v92[23] >= 0)
        {
          v91 = v92;
        }

        tknPrintf("Error: %s (%llu) : Syntax error. Expected 4 columns.\n", v11, v12, v13, v14, v91, *(v92 + 6));
        std::string::basic_string[abi:ne200100]<0>(v247, &byte_262899963);
        *__p = byte_287529580;
        if (SHIBYTE(v248) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[8], v247[0], v247[1]);
        }

        else
        {
          *&__p[8] = *v247;
          v257 = v248;
        }

        *__p = &unk_287528000;
        if (v257 >= 0)
        {
          v181 = &__p[8];
        }

        else
        {
          v181 = *&__p[8];
        }

        conditionalAssert(v181, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2563, v94, v95);
        *__p = byte_287529580;
        if (SHIBYTE(v257) < 0)
        {
          operator delete(*&__p[8]);
        }

        if (SHIBYTE(v248) < 0)
        {
          operator delete(v247[0]);
        }

        v182 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v182 = byte_287529580;
        v183 = (v182 + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v183, *__p, *&__p[8]);
        }

        else
        {
          v216 = *__p;
          v182[3] = *&__p[16];
          *&v183->__r_.__value_.__l.__data_ = v216;
        }

        *v182 = &unk_287528000;
      }

      if (*&__s[16] >= *&__s[8])
      {
        if (v255)
        {
          *__p = 0;
          TBuffer<wchar_t>::insert(__s, *&__s[16], __p, 1uLL);
          v16 = *__s;
          --*&__s[16];
        }

        else
        {
          v16 = *__s;
          if (*&__s[8])
          {
            *(*__s + 4 * *&__s[8] - 4) = 0;
          }
        }
      }

      else
      {
        v16 = *__s;
        *(*__s + 4 * *&__s[16]) = 0;
      }

      {
        operator new();
      }

      v17 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v16, &v249);
      if (v249)
      {
        v98 = *(a2 + 2);
        v97 = a2 + 16;
        v96 = v98;
        if (v97[23] >= 0)
        {
          v99 = v97;
        }

        else
        {
          v99 = v96;
        }

        v100 = *(v97 + 6);
        v101 = TBuffer<wchar_t>::c_str(__s);
        loggableUnicode(v101, __p);
        if (__p[23] >= 0)
        {
          v106 = __p;
        }

        else
        {
          v106 = *__p;
        }

        tknPrintf("Error: %s (%llu) : Invalid Ngram order. Was '%s'. Expected an integer value in range [1,%llu].\n", v102, v103, v104, v105, v99, v100, v106, v10);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        std::string::basic_string[abi:ne200100]<0>(v247, &byte_262899963);
        *__p = byte_287529580;
        if (SHIBYTE(v248) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[8], v247[0], v247[1]);
        }

        else
        {
          *&__p[8] = *v247;
          v257 = v248;
        }

        *__p = &unk_287528000;
        if (v257 >= 0)
        {
          v209 = &__p[8];
        }

        else
        {
          v209 = *&__p[8];
        }

        conditionalAssert(v209, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2572, v107, v108);
        *__p = byte_287529580;
        if (SHIBYTE(v257) < 0)
        {
          operator delete(*&__p[8]);
        }

        if (SHIBYTE(v248) < 0)
        {
          operator delete(v247[0]);
        }

        v210 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v210 = byte_287529580;
        v211 = (v210 + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v211, *__p, *&__p[8]);
        }

        else
        {
          v227 = *__p;
          v210[3] = *&__p[16];
          *&v211->__r_.__value_.__l.__data_ = v227;
        }

        *v210 = &unk_287528000;
      }

      v22 = v17;
      if (v17 - 1 >= v10)
      {
        v88 = *(a2 + 2);
        v87 = a2 + 16;
        v86 = v88;
        if (v87[23] >= 0)
        {
          v86 = v87;
        }

        tknPrintf("Error: %s (%llu) : Bad Ngram order. Was %llu. Expected an integer value in the range [1,%llu].\n", v18, v19, v20, v21, v86, *(v87 + 6), v17, v10);
        std::string::basic_string[abi:ne200100]<0>(v247, &byte_262899963);
        *__p = byte_287529580;
        if (SHIBYTE(v248) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[8], v247[0], v247[1]);
        }

        else
        {
          *&__p[8] = *v247;
          v257 = v248;
        }

        *__p = &unk_287528000;
        if (v257 >= 0)
        {
          v178 = &__p[8];
        }

        else
        {
          v178 = *&__p[8];
        }

        conditionalAssert(v178, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2580, v89, v90);
        *__p = byte_287529580;
        if (SHIBYTE(v257) < 0)
        {
          operator delete(*&__p[8]);
        }

        if (SHIBYTE(v248) < 0)
        {
          operator delete(v247[0]);
        }

        v179 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v179 = byte_287529580;
        v180 = (v179 + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v180, *__p, *&__p[8]);
        }

        else
        {
          v215 = *__p;
          v179[3] = *&__p[16];
          *&v180->__r_.__value_.__l.__data_ = v215;
        }

        *v179 = &unk_287528000;
      }

      v27 = getNextToken(v15, __s, dword_262890CA4);
      if (!v27)
      {
        v111 = *(a2 + 2);
        v110 = a2 + 16;
        v109 = v111;
        if (v110[23] >= 0)
        {
          v109 = v110;
        }

        tknPrintf("Error: %s (%llu) : Syntax error. Expected 4 columns.\n", v23, v24, v25, v26, v109, *(v110 + 6));
        std::string::basic_string[abi:ne200100]<0>(v247, &byte_262899963);
        *__p = byte_287529580;
        if (SHIBYTE(v248) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[8], v247[0], v247[1]);
        }

        else
        {
          *&__p[8] = *v247;
          v257 = v248;
        }

        *__p = &unk_287528000;
        if (v257 >= 0)
        {
          v184 = &__p[8];
        }

        else
        {
          v184 = *&__p[8];
        }

        conditionalAssert(v184, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2588, v112, v113);
        *__p = byte_287529580;
        if (SHIBYTE(v257) < 0)
        {
          operator delete(*&__p[8]);
        }

        if (SHIBYTE(v248) < 0)
        {
          operator delete(v247[0]);
        }

        v185 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v185 = byte_287529580;
        v186 = (v185 + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v186, *__p, *&__p[8]);
        }

        else
        {
          v217 = *__p;
          v185[3] = *&__p[16];
          *&v186->__r_.__value_.__l.__data_ = v217;
        }

        *v185 = &unk_287528000;
      }

      if (*&__s[16] >= *&__s[8])
      {
        if (v255)
        {
          *__p = 0;
          TBuffer<wchar_t>::insert(__s, *&__s[16], __p, 1uLL);
          v28 = *__s;
          --*&__s[16];
        }

        else
        {
          v28 = *__s;
          if (*&__s[8])
          {
            *(*__s + 4 * *&__s[8] - 4) = 0;
          }
        }
      }

      else
      {
        v28 = *__s;
        *(*__s + 4 * *&__s[16]) = 0;
      }

      {
        operator new();
      }

      v29 = TLocaleInfo::stringToFloat(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v28, &v249);
      if (v249)
      {
        v116 = *(a2 + 2);
        v115 = a2 + 16;
        v114 = v116;
        if (v115[23] >= 0)
        {
          v117 = v115;
        }

        else
        {
          v117 = v114;
        }

        v118 = *(v115 + 6);
        v119 = TBuffer<wchar_t>::c_str(__s);
        loggableUnicode(v119, __p);
        if (__p[23] >= 0)
        {
          v124 = __p;
        }

        else
        {
          v124 = *__p;
        }

        tknPrintf("Error: %s (%llu) : Invalid weight. Was '%s'. Expected a numerical decimal value.\n", v120, v121, v122, v123, v117, v118, v124);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        std::string::basic_string[abi:ne200100]<0>(v247, &byte_262899963);
        *__p = byte_287529580;
        if (SHIBYTE(v248) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[8], v247[0], v247[1]);
        }

        else
        {
          *&__p[8] = *v247;
          v257 = v248;
        }

        *__p = &unk_287528000;
        if (v257 >= 0)
        {
          v212 = &__p[8];
        }

        else
        {
          v212 = *&__p[8];
        }

        conditionalAssert(v212, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2597, v125, v126);
        *__p = byte_287529580;
        if (SHIBYTE(v257) < 0)
        {
          operator delete(*&__p[8]);
        }

        if (SHIBYTE(v248) < 0)
        {
          operator delete(v247[0]);
        }

        v213 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v213 = byte_287529580;
        v214 = (v213 + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v214, *__p, *&__p[8]);
        }

        else
        {
          v228 = *__p;
          v213[3] = *&__p[16];
          *&v214->__r_.__value_.__l.__data_ = v228;
        }

        *v213 = &unk_287528000;
      }

      if (v29 != 0.0)
      {
        if (!getNextToken(v27, __s, dword_262890CA4))
        {
          v139 = *(a2 + 2);
          v138 = a2 + 16;
          v137 = v139;
          if (v138[23] >= 0)
          {
            v137 = v138;
          }

          tknPrintf("Error: %s (%llu) : Syntax error. Expected 4 columns.\n", v30, v31, v32, v33, v137, *(v138 + 6));
          std::string::basic_string[abi:ne200100]<0>(v247, &byte_262899963);
          *__p = byte_287529580;
          if (SHIBYTE(v248) < 0)
          {
            std::string::__init_copy_ctor_external(&__p[8], v247[0], v247[1]);
          }

          else
          {
            *&__p[8] = *v247;
            v257 = v248;
          }

          *__p = &unk_287528000;
          if (v257 >= 0)
          {
            v205 = &__p[8];
          }

          else
          {
            v205 = *&__p[8];
          }

          conditionalAssert(v205, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2609, v140, v141);
          *__p = byte_287529580;
          if (SHIBYTE(v257) < 0)
          {
            operator delete(*&__p[8]);
          }

          if (SHIBYTE(v248) < 0)
          {
            operator delete(v247[0]);
          }

          v206 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
          *v206 = byte_287529580;
          v207 = (v206 + 1);
          if ((__p[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v207, *__p, *&__p[8]);
          }

          else
          {
            v226 = *__p;
            v206[3] = *&__p[16];
            *&v207->__r_.__value_.__l.__data_ = v226;
          }

          *v206 = &unk_287528000;
        }

        v34 = v4[8];
        if (v4[9] == v34)
        {
LABEL_113:
          operator new();
        }

        v35 = 0;
        while (2)
        {
          v36 = *(v34 + 8 * v35);
          v37 = *(v36 + 11);
          if (v37 == 3)
          {
            if (*&__s[16] >= *&__s[8])
            {
              if (v255)
              {
                *__p = 0;
                TBuffer<wchar_t>::insert(__s, *&__s[16], __p, 1uLL);
                v38 = *__s;
                --*&__s[16];
              }

              else
              {
                v38 = *__s;
                if (*&__s[8])
                {
                  *(*__s + 4 * *&__s[8] - 4) = 0;
                }
              }
            }

            else
            {
              v38 = *__s;
              *(*__s + 4 * *&__s[16]) = 0;
            }

            v40 = wcslen(v38);
            v31 = v40;
            v41 = *(v36 + 23);
            if (v41 < 0)
            {
              if (v40 == v36[1])
              {
                if (v40 == -1)
                {
                  std::wstring::__throw_out_of_range[abi:ne200100]();
                }

                v36 = *v36;
                if (!v40)
                {
LABEL_143:
                  v56 = *(a2 + 2);
                  v55 = a2 + 16;
                  v54 = v56;
                  if (v55[23] >= 0)
                  {
                    v57 = v55;
                  }

                  else
                  {
                    v57 = v54;
                  }

                  v58 = *(v55 + 6);
                  v59 = TBuffer<wchar_t>::c_str(__s);
                  loggableUnicode(v59, __p);
                  if (__p[23] >= 0)
                  {
                    v64 = __p;
                  }

                  else
                  {
                    v64 = *__p;
                  }

                  tknPrintf("Error: %s (%llu) : Binding feature already defined for '%s'.\n", v60, v61, v62, v63, v57, v58, v64);
                  if ((__p[23] & 0x80000000) != 0)
                  {
                    operator delete(*__p);
                  }

                  std::string::basic_string[abi:ne200100]<0>(v247, &byte_262899963);
                  *__p = byte_287529580;
                  if (SHIBYTE(v248) < 0)
                  {
                    std::string::__init_copy_ctor_external(&__p[8], v247[0], v247[1]);
                  }

                  else
                  {
                    *&__p[8] = *v247;
                    v257 = v248;
                  }

                  *__p = &unk_287528000;
                  if (v257 >= 0)
                  {
                    v187 = &__p[8];
                  }

                  else
                  {
                    v187 = *&__p[8];
                  }

                  conditionalAssert(v187, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2624, v65, v66);
                  *__p = byte_287529580;
                  if (SHIBYTE(v257) < 0)
                  {
                    operator delete(*&__p[8]);
                  }

                  if (SHIBYTE(v248) < 0)
                  {
                    operator delete(v247[0]);
                  }

                  v188 = __cxa_allocate_exception(0x20uLL);
                  std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
                  *v188 = byte_287529580;
                  v189 = (v188 + 1);
                  if ((__p[23] & 0x80000000) != 0)
                  {
                    std::string::__init_copy_ctor_external(v189, *__p, *&__p[8]);
                  }

                  else
                  {
                    v218 = *__p;
                    v188[3] = *&__p[16];
                    *&v189->__r_.__value_.__l.__data_ = v218;
                  }

                  *v188 = &unk_287528000;
                }

LABEL_98:
                if (!wmemcmp(v36, v38, v40))
                {
                  goto LABEL_143;
                }
              }
            }

            else if (v40 == v41)
            {
              if (!v40)
              {
                goto LABEL_143;
              }

              goto LABEL_98;
            }

LABEL_112:
            ++v35;
            v34 = v4[8];
            if (v35 >= (v4[9] - v34) >> 3)
            {
              goto LABEL_113;
            }

            continue;
          }

          break;
        }

        if (v37 != v9)
        {
          goto LABEL_112;
        }

        if (*(v36 + 10) == v22)
        {
          v83 = *(a2 + 2);
          v82 = a2 + 16;
          v81 = v83;
          if (v82[23] >= 0)
          {
            v81 = v82;
          }

          tknPrintf("Error: %s (%llu) : Feature already defined for Ngram order %llu.\n", v30, v31, v32, v33, v81, *(v82 + 6), v22);
          std::string::basic_string[abi:ne200100]<0>(v247, &byte_262899963);
          *__p = byte_287529580;
          if (SHIBYTE(v248) < 0)
          {
            std::string::__init_copy_ctor_external(&__p[8], v247[0], v247[1]);
          }

          else
          {
            *&__p[8] = *v247;
            v257 = v248;
          }

          *__p = &unk_287528000;
          if (v257 >= 0)
          {
            v142 = &__p[8];
          }

          else
          {
            v142 = *&__p[8];
          }

          conditionalAssert(v142, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2635, v84, v85);
          *__p = byte_287529580;
          if (SHIBYTE(v257) < 0)
          {
            operator delete(*&__p[8]);
          }

          if (SHIBYTE(v248) < 0)
          {
            operator delete(v247[0]);
          }

          v143 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
          *v143 = byte_287529580;
          v144 = (v143 + 1);
          if ((__p[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v144, *__p, *&__p[8]);
          }

          else
          {
            v208 = *__p;
            v143[3] = *&__p[16];
            *&v144->__r_.__value_.__l.__data_ = v208;
          }

          *v143 = &unk_287528000;
        }

        if (*&__s[16] >= *&__s[8])
        {
          if (v255)
          {
            *__p = 0;
            TBuffer<wchar_t>::insert(__s, *&__s[16], __p, 1uLL);
            v39 = *__s;
            --*&__s[16];
          }

          else
          {
            v39 = *__s;
            if (*&__s[8])
            {
              *(*__s + 4 * *&__s[8] - 4) = 0;
            }
          }
        }

        else
        {
          v39 = *__s;
          *(*__s + 4 * *&__s[16]) = 0;
        }

        v42 = wcslen(v39);
        v31 = v42;
        v43 = *(v36 + 23);
        if (v43 < 0)
        {
          if (v42 != v36[1])
          {
            goto LABEL_153;
          }

          if (v42 == -1)
          {
            std::wstring::__throw_out_of_range[abi:ne200100]();
          }

          v44 = *v36;
          if (!v31)
          {
            goto LABEL_112;
          }
        }

        else
        {
          v44 = v36;
          if (v31 != v43)
          {
            goto LABEL_153;
          }

          if (!v31)
          {
            goto LABEL_112;
          }
        }

        if (wmemcmp(v44, v39, v31))
        {
LABEL_153:
          v69 = *(a2 + 2);
          v68 = a2 + 16;
          v67 = v69;
          if (v68[23] >= 0)
          {
            v70 = v68;
          }

          else
          {
            v70 = v67;
          }

          v71 = *(v68 + 6);
          v72 = TBuffer<wchar_t>::c_str(__s);
          v73 = __p;
          loggableUnicode(v72, __p);
          if (__p[23] < 0)
          {
            v73 = *__p;
          }

          if (*(v36 + 23) < 0)
          {
            v36 = *v36;
          }

          loggableUnicode(v36, v247);
          if (v248 >= 0)
          {
            v78 = v247;
          }

          else
          {
            v78 = v247[0];
          }

          tknPrintf("Error: %s (%llu) : Model %s specified for feature that is already associated with model %s.\n", v74, v75, v76, v77, v70, v71, v73, v78);
          if (SHIBYTE(v248) < 0)
          {
            operator delete(v247[0]);
          }

          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          std::string::basic_string[abi:ne200100]<0>(v247, &byte_262899963);
          *__p = byte_287529580;
          if (SHIBYTE(v248) < 0)
          {
            std::string::__init_copy_ctor_external(&__p[8], v247[0], v247[1]);
          }

          else
          {
            *&__p[8] = *v247;
            v257 = v248;
          }

          *__p = &unk_287528000;
          if (v257 >= 0)
          {
            v202 = &__p[8];
          }

          else
          {
            v202 = *&__p[8];
          }

          conditionalAssert(v202, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2643, v79, v80);
          *__p = byte_287529580;
          if (SHIBYTE(v257) < 0)
          {
            operator delete(*&__p[8]);
          }

          if (SHIBYTE(v248) < 0)
          {
            operator delete(v247[0]);
          }

          v203 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
          *v203 = byte_287529580;
          v204 = (v203 + 1);
          if ((__p[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v204, *__p, *&__p[8]);
          }

          else
          {
            v225 = *__p;
            v203[3] = *&__p[16];
            *&v204->__r_.__value_.__l.__data_ = v225;
          }

          *v203 = &unk_287528000;
        }

        goto LABEL_112;
      }
    }
  }

  v45 = v4[8];
  v46 = v4[9];
  v47 = v46 - v45;
  if (v46 == v45)
  {
    v52 = 0xFFFFFFFFLL;
  }

  else
  {
    v48 = 0;
    v49 = v47 >> 3;
    if (v49 <= 1)
    {
      v49 = 1;
    }

    do
    {
      v50 = *v45;
      v45 += 8;
      v51 = *(v50 + 40);
      if (v51 > v48)
      {
        v48 = v51;
      }

      --v49;
    }

    while (v49);
    v52 = v48 - 1;
  }

  v4[38] = v52;
  if (v261 == 1)
  {
    this = v258;
    if (v258 != v260)
    {
      if (v258)
      {
        this = MEMORY[0x26672B1B0]();
      }
    }
  }

  if (v265 == 1)
  {
    this = v262;
    if (v262 != v264)
    {
      if (v262)
      {
        this = MEMORY[0x26672B1B0]();
      }
    }
  }

  if (v252 == 1)
  {
    this = *v250;
    if (*v250 != v251)
    {
      if (*v250)
      {
        this = MEMORY[0x26672B1B0]();
      }
    }
  }

  if (v255 == 1)
  {
    this = *__s;
    if (*__s != v254)
    {
      if (*__s)
      {
        this = MEMORY[0x26672B1B0]();
      }
    }
  }

LABEL_142:
  v53 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_262809C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  MEMORY[0x26672B1B0](v24, 0x1070C40ADD13FEBLL);
  if (LOBYTE(STACK[0xA30]) == 1 && STACK[0x918] != a13 && STACK[0x918] != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0xB50]) == 1)
  {
    v27 = STACK[0xA38];
    if (STACK[0xA38] != a14)
    {
      if (v27)
      {
        MEMORY[0x26672B1B0](v27, 0x1000C4077774924);
      }
    }
  }

  if (LOBYTE(STACK[0x490]) == 1 && a24 != a15 && a24)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0x8B0]) == 1)
  {
    v28 = STACK[0x498];
    if (STACK[0x498] != a16)
    {
      if (v28)
      {
        MEMORY[0x26672B1B0](v28, 0x1000C4052888210);
      }
    }
  }

  _Unwind_Resume(a1);
}

void TCompounder::loadOptionalLists(TCompounder *this, TInputStream *a2)
{
  v122 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) == 1)
  {
    if (TInputStream::verifyHeader(a2, "WordFlag", &pWordFlagVersion, 4))
    {
      std::string::basic_string[abi:ne200100]<0>(v89, &byte_262899963);
      *__p = byte_287529580;
      if (SHIBYTE(v90) < 0)
      {
        std::string::__init_copy_ctor_external(&__p[8], v89[0], v89[1]);
      }

      else
      {
        *&__p[8] = *v89;
        v94[0] = v90;
      }

      *__p = &unk_287528000;
      if (v94[0] >= 0)
      {
        v61 = &__p[8];
      }

      else
      {
        v61 = *&__p[8];
      }

      conditionalAssert(v61, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2834, v50, v51);
      *__p = byte_287529580;
      if (SHIBYTE(v94[0]) < 0)
      {
        operator delete(*&__p[8]);
      }

      if (SHIBYTE(v90) < 0)
      {
        operator delete(v89[0]);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *exception = byte_287529580;
      v63 = (exception + 1);
      if ((__p[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v63, *__p, *&__p[8]);
      }

      else
      {
        v72 = *__p;
        exception[3] = *&__p[16];
        *&v63->__r_.__value_.__l.__data_ = v72;
      }

      *exception = &unk_287528000;
    }

    TFileObjectParser::TFileObjectParser(v89, a2);
    v4 = *(a2 + 12);
    *(this + 48) = v4;
    v5 = v89[0];
    if (v4 > 2)
    {
      if (*(v89[0] + 10))
      {
        loggableFileObject(v89[0]);
        if (__p[23] >= 0)
        {
          v58 = __p;
        }

        else
        {
          v58 = *__p;
        }

        tknPrintf("Error: %sBad attribute declaration, expected an object\n", v54, v55, v56, v57, v58);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        std::string::basic_string[abi:ne200100]<0>(v87, &byte_262899963);
        *__p = byte_287529580;
        if ((v87[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(&__p[8], *v87, *&v87[8]);
        }

        else
        {
          *&__p[8] = *v87;
          v94[0] = *&v87[16];
        }

        *__p = &unk_287528000;
        if (v94[0] >= 0)
        {
          v73 = &__p[8];
        }

        else
        {
          v73 = *&__p[8];
        }

        conditionalAssert(v73, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2866, v59, v60);
        *__p = byte_287529580;
        if (SHIBYTE(v94[0]) < 0)
        {
          operator delete(*&__p[8]);
        }

        if ((v87[23] & 0x80000000) != 0)
        {
          operator delete(*v87);
        }

        v74 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v74 = byte_287529580;
        v75 = (v74 + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v75, *__p, *&__p[8]);
        }

        else
        {
          v81 = *__p;
          v74[3] = *&__p[16];
          *&v75->__r_.__value_.__l.__data_ = v81;
        }

        *v74 = &unk_287528000;
      }
    }

    else
    {
      *&__p[8] = xmmword_26286B6A0;
      *__p = dword_262890D44;
      v94[0] = -1;
      v94[1] = dword_262890D58;
      v95 = xmmword_26286B6A0;
      v96 = -1;
      v97 = dword_262890D7C;
      v98 = xmmword_26286B6A0;
      v99 = -1;
      v100 = dword_262890D98;
      v101 = xmmword_26286B6A0;
      v102 = -1;
      v103 = dword_262890E08;
      v104 = xmmword_26286B6A0;
      v105 = -1;
      v106 = dword_262890E78;
      v107 = xmmword_26286B6A0;
      v108 = -1;
      v109 = dword_262890EF8;
      v110 = xmmword_26286B6A0;
      v111 = 1;
      v112 = dword_262890F10;
      v113 = vdupq_n_s64(2uLL);
      v114 = -1;
      v115 = dword_262890F38;
      v116 = 2;
      v117 = xmmword_26288FE80;
      v118 = dword_262890F74;
      v119 = 2;
      v120 = xmmword_26288FE80;
      if (TFileObject::verify(v89[0], __p, 10, 1))
      {
        std::string::basic_string[abi:ne200100]<0>(v91, &byte_262899963);
        *v87 = byte_287529580;
        if (SHIBYTE(v92) < 0)
        {
          std::string::__init_copy_ctor_external(&v87[8], v91[0], v91[1]);
        }

        else
        {
          *&v87[8] = *v91;
          v88 = v92;
        }

        *v87 = &unk_287528000;
        if (v88 >= 0)
        {
          v69 = &v87[8];
        }

        else
        {
          v69 = *&v87[8];
        }

        conditionalAssert(v69, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2861, v6, v7);
        *v87 = byte_287529580;
        if (SHIBYTE(v88) < 0)
        {
          operator delete(*&v87[8]);
        }

        if (SHIBYTE(v92) < 0)
        {
          operator delete(v91[0]);
        }

        v70 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v87, &byte_262899963);
        *v70 = byte_287529580;
        v71 = (v70 + 1);
        if ((v87[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v71, *v87, *&v87[8]);
        }

        else
        {
          v77 = *v87;
          v70[3] = *&v87[16];
          *&v71->__r_.__value_.__l.__data_ = v77;
        }

        *v70 = &unk_287528000;
      }
    }

    v8 = *(v5 + 3);
    if (v8)
    {
      v85 = 0;
      v9 = this + 280;
      v83 = this;
      v84 = this + 280;
      while (1)
      {
        v10 = v8[1];
        if (!wcscmp(v10, dword_262890EF8))
        {
          v11 = dword_262890F10;
        }

        else
        {
          v11 = v10;
        }

        std::wstring::basic_string[abi:ne200100]<0>(__p, v11);
        v12 = std::__tree<std::__value_type<std::wstring const,TLmScore const*>,std::__map_value_compare<std::wstring const,std::__value_type<std::wstring const,TLmScore const*>,std::less<std::wstring const>,true>,std::allocator<std::__value_type<std::wstring const,TLmScore const*>>>::find<std::wstring>(this + 272, __p);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        if (v9 != v12)
        {
          loggableFileObject(v8);
          if (__p[23] >= 0)
          {
            v17 = __p;
          }

          else
          {
            v17 = *__p;
          }

          tknPrintf("Error: %sRedefinition\n", v13, v14, v15, v16, v17);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          v85 = 1;
          goto LABEL_87;
        }

        v86 = *(this + 2);
        v18 = *(this + 48);
        *__p = v94;
        *&__p[8] = xmmword_26286B6F0;
        v121 = 1;
        v19 = v8[3];
        if (!v19)
        {
          v43 = 0;
          goto LABEL_58;
        }

        do
        {
          v20 = wcscmp(*(v19 + 8), "T");
          v21 = v20;
          if (v18 > 2 || v20)
          {
            if (TFileObject::verify(v19, 1, 0))
            {
              goto LABEL_31;
            }

            if (*(v19 + 40) == 2)
            {
              if (v21)
              {
                operator new();
              }

              operator new();
            }

            if (!TLexicon::checkName(v86, *(v19 + 24), 1, 0xFFFFFFFFFFFFFFFFLL))
            {
              if (*(getPropCheckTokenExistence() + 8) == 1 && !TLexicon::findHeadClone(v86, *(v19 + 24)))
              {
                loggableFileObject(v19);
                v35 = v87[23];
                v36 = *v87;
                loggableUnicode(*(v19 + 24), v91);
                v41 = v87;
                if (v35 < 0)
                {
                  v41 = v36;
                }

                v42 = v91;
                if (v92 < 0)
                {
                  v42 = v91[0];
                }

                tknPrintf("Warning: %s'%s' isn't lexicalized.\n", v37, v38, v39, v40, v41, v42);
                if (SHIBYTE(v92) < 0)
                {
                  operator delete(v91[0]);
                }

                if ((v87[23] & 0x80000000) != 0)
                {
                  operator delete(*v87);
                }
              }

              TBuffer<wchar_t>::resize(__p, 0);
              TRegExp::stringToRegExp(*(v19 + 24), __p, 0, 3);
              if (v21)
              {
                operator new();
              }

              operator new();
            }

            loggableFileObject(v19);
            v27 = v87[23];
            v28 = *v87;
            loggableUnicode(*(v19 + 24), v91);
            v33 = v87;
            if (v27 < 0)
            {
              v33 = v28;
            }

            v34 = v91;
            if (v92 < 0)
            {
              v34 = v91[0];
            }

            tknPrintf("Error: %s'%s' is an invalid token name.\n", v29, v30, v31, v32, v33, v34);
            if (SHIBYTE(v92) < 0)
            {
              operator delete(v91[0]);
            }
          }

          else
          {
            loggableFileObject(v19);
            v26 = v87;
            if (v87[23] < 0)
            {
              v26 = *v87;
            }

            tknPrintf("Error: %sTag attribute not supported in version %lld.  Must be version 3 or higher.\n", v22, v23, v24, v25, v26, v18);
          }

          if ((v87[23] & 0x80000000) != 0)
          {
            operator delete(*v87);
          }

LABEL_31:
          v19 = *(v19 + 16);
        }

        while (v19);
        this = v83;
        v43 = 1;
LABEL_58:
        if (v121 == 1 && *__p != v94 && *__p)
        {
          MEMORY[0x26672B1B0]();
        }

        if (v43)
        {
          v85 = 1;
          v9 = v84;
        }

        else
        {
          std::wstring::basic_string[abi:ne200100]<0>(__p, v11);
          *v87 = __p;
          v44 = std::__tree<std::__value_type<std::wstring const,std::pair<TRegExp const*,TRegExp const*>>,std::__map_value_compare<std::wstring const,std::__value_type<std::wstring const,std::pair<TRegExp const*,TRegExp const*>>,std::less<std::wstring const>,true>,std::allocator<std::__value_type<std::wstring const,std::pair<TRegExp const*,TRegExp const*>>>>::__emplace_unique_key_args<std::wstring,std::piecewise_construct_t const&,std::tuple<std::wstring const&&>,std::tuple<>>(this + 272, __p);
          *(v44 + 56) = 0;
          *(v44 + 64) = 0;
          v9 = v84;
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          if (!wcscmp(v11, dword_262890D44))
          {
            *(this + 11) = 0;
            *(this + 12) = 0;
          }

          else if (!wcscmp(v11, dword_262890D58))
          {
            *(this + 13) = 0;
            *(this + 14) = 0;
          }

          else if (!wcscmp(v11, dword_262890F10))
          {
            *(this + 15) = 0;
            *(this + 16) = 0;
          }

          else if (!wcscmp(v11, dword_262890F38))
          {
            *(this + 17) = 0;
            *(this + 18) = 0;
          }

          else if (!wcscmp(v11, dword_262890F74))
          {
            *(this + 19) = 0;
            *(this + 20) = 0;
          }

          else if (!wcscmp(v11, dword_262890FAC))
          {
            if (*(this + 48) <= 3uLL)
            {
              tknPrintf("Error: BadMiddlePieces is not supported prior to CompounderWordFlag version 4.\n", v45, v46, v47, v48);
              std::string::basic_string[abi:ne200100]<0>(v87, &byte_262899963);
              *__p = byte_287529580;
              if ((v87[23] & 0x80000000) != 0)
              {
                std::string::__init_copy_ctor_external(&__p[8], *v87, *&v87[8]);
              }

              else
              {
                *&__p[8] = *v87;
                v94[0] = *&v87[16];
              }

              *__p = &unk_287528000;
              if (v94[0] >= 0)
              {
                v78 = &__p[8];
              }

              else
              {
                v78 = *&__p[8];
              }

              conditionalAssert(v78, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2920, v67, v68);
              *__p = byte_287529580;
              if (SHIBYTE(v94[0]) < 0)
              {
                operator delete(*&__p[8]);
              }

              if ((v87[23] & 0x80000000) != 0)
              {
                operator delete(*v87);
              }

              v79 = __cxa_allocate_exception(0x20uLL);
              std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
              *v79 = byte_287529580;
              v80 = (v79 + 1);
              if ((__p[23] & 0x80000000) != 0)
              {
                std::string::__init_copy_ctor_external(v80, *__p, *&__p[8]);
              }

              else
              {
                v82 = *__p;
                v79[3] = *&__p[16];
                *&v80->__r_.__value_.__l.__data_ = v82;
              }

              *v79 = &unk_287528000;
            }

            *(this + 21) = 0;
            *(this + 22) = 0;
          }

          else if (!wcscmp(v11, dword_262890D7C))
          {
            *(this + 23) = 0;
            *(this + 24) = 0;
          }

          else if (!wcscmp(v11, dword_262890D98))
          {
            *(this + 25) = 0;
            *(this + 26) = 0;
          }

          else if (!wcscmp(v11, dword_262890E08))
          {
            *(this + 27) = 0;
            *(this + 28) = 0;
          }

          else if (!wcscmp(v11, dword_262890E78))
          {
            *(this + 29) = 0;
            *(this + 30) = 0;
          }
        }

LABEL_87:
        v8 = v8[2];
        if (!v8)
        {
          if (v85)
          {
            std::string::basic_string[abi:ne200100]<0>(v87, &byte_262899963);
            *__p = byte_287529580;
            if ((v87[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(&__p[8], *v87, *&v87[8]);
            }

            else
            {
              *&__p[8] = *v87;
              v94[0] = *&v87[16];
            }

            *__p = &unk_287528000;
            if (v94[0] >= 0)
            {
              v64 = &__p[8];
            }

            else
            {
              v64 = *&__p[8];
            }

            conditionalAssert(v64, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2942, v52, v53);
            *__p = byte_287529580;
            if (SHIBYTE(v94[0]) < 0)
            {
              operator delete(*&__p[8]);
            }

            if ((v87[23] & 0x80000000) != 0)
            {
              operator delete(*v87);
            }

            v65 = __cxa_allocate_exception(0x20uLL);
            std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
            *v65 = byte_287529580;
            v66 = (v65 + 1);
            if ((__p[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(v66, *__p, *&__p[8]);
            }

            else
            {
              v76 = *__p;
              v65[3] = *&__p[16];
              *&v66->__r_.__value_.__l.__data_ = v76;
            }

            *v65 = &unk_287528000;
          }

          break;
        }
      }
    }

    TFileObjectParser::~TFileObjectParser(v89);
  }

  v49 = *MEMORY[0x277D85DE8];
}

void sub_26280B1A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, void *a21, int a22, __int16 a23, char a24, char a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, void *a50, int a51, __int16 a52, char a53, char a54, int a55, __int16 a56, char a57, char a58)
{
  if (v62 == 1 && v61 != v59)
  {
    if (v61)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  TFileObjectParser::~TFileObjectParser(&v60);
  _Unwind_Resume(a1);
}

void TCompounder::loadRules(TCompounder *this, TInputStream *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) == 1)
  {
    if (TInputStream::verifyHeader(a2, "Rules", &pRulesVersion, 1))
    {
      std::string::basic_string[abi:ne200100]<0>(__s, &byte_262899963);
      *v28 = byte_287529580;
      if (SHIBYTE(__s[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v28[8], __s[0], __s[1]);
      }

      else
      {
        *&v28[8] = *__s;
        v29[0] = __s[2];
      }

      *v28 = &unk_287528000;
      if (v29[0] >= 0)
      {
        v16 = &v28[8];
      }

      else
      {
        v16 = *&v28[8];
      }

      conditionalAssert(v16, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2951, v11, v12);
      *v28 = byte_287529580;
      if (SHIBYTE(v29[0]) < 0)
      {
        operator delete(*&v28[8]);
      }

      if (SHIBYTE(__s[2]) < 0)
      {
        operator delete(__s[0]);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v28, &byte_262899963);
      *exception = byte_287529580;
      v18 = (exception + 1);
      if ((v28[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v18, *v28, *&v28[8]);
      }

      else
      {
        v22 = *v28;
        exception[3] = *&v28[16];
        *&v18->__r_.__value_.__l.__data_ = v22;
      }

      *exception = &unk_287528000;
    }

    TFileObjectParser::TFileObjectParser(v31, a2);
    v3 = v31[0];
    v51 = xmmword_26286B6D0;
    v50 = &unk_262890FEC;
    v52 = -1;
    if (TFileObject::verify(v31[0], &v50, 1, 1))
    {
      std::string::basic_string[abi:ne200100]<0>(__s, &byte_262899963);
      *v28 = byte_287529580;
      if (SHIBYTE(__s[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v28[8], __s[0], __s[1]);
      }

      else
      {
        *&v28[8] = *__s;
        v29[0] = __s[2];
      }

      *v28 = &unk_287528000;
      if (v29[0] >= 0)
      {
        v19 = &v28[8];
      }

      else
      {
        v19 = *&v28[8];
      }

      conditionalAssert(v19, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2964, v13, v14);
      *v28 = byte_287529580;
      if (SHIBYTE(v29[0]) < 0)
      {
        operator delete(*&v28[8]);
      }

      if (SHIBYTE(__s[2]) < 0)
      {
        operator delete(__s[0]);
      }

      v20 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v28, &byte_262899963);
      *v20 = byte_287529580;
      v21 = (v20 + 1);
      if ((v28[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v21, *v28, *&v28[8]);
      }

      else
      {
        v23 = *v28;
        v20[3] = *&v28[16];
        *&v21->__r_.__value_.__l.__data_ = v23;
      }

      *v20 = &unk_287528000;
    }

    *&__s[1] = xmmword_26286B6A0;
    __s[0] = &unk_262891000;
    __s[3] = -1;
    v33 = xmmword_26286B6A0;
    __s[4] = &unk_262891030;
    v34 = -1;
    v36 = xmmword_26286B6A0;
    v35 = &unk_262891064;
    v37 = -1;
    v39 = xmmword_26286B6A0;
    v38 = &unk_262891094;
    v40 = -1;
    v42 = xmmword_26286B6A0;
    v41 = &unk_2628910C8;
    v43 = -1;
    v45 = xmmword_26286B6A0;
    v44 = &unk_2628910E0;
    v46 = -1;
    v48 = xmmword_26286B6A0;
    v47 = &unk_2628910F4;
    v49 = -1;
    *v28 = v29;
    *&v28[8] = xmmword_26286B6F0;
    v30 = 1;
    v4 = *(v3 + 24);
    if (v4)
    {
      while ((TFileObject::verify(v4, __s, 7, 1) & 1) != 0)
      {
        v4 = *(v4 + 16);
        if (!v4)
        {
          std::string::basic_string[abi:ne200100]<0>(v26, &byte_262899963);
          *__p = byte_287529580;
          if (SHIBYTE(v27) < 0)
          {
            std::string::__init_copy_ctor_external(&__p[8], v26[0], v26[1]);
          }

          else
          {
            *&__p[8] = *v26;
            v25 = v27;
          }

          *__p = &unk_287528000;
          if (v25 >= 0)
          {
            v8 = &__p[8];
          }

          else
          {
            v8 = *&__p[8];
          }

          conditionalAssert(v8, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 3070, v6, v7);
          *__p = byte_287529580;
          if (SHIBYTE(v25) < 0)
          {
            operator delete(*&__p[8]);
          }

          if (SHIBYTE(v27) < 0)
          {
            operator delete(v26[0]);
          }

          v9 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
          *v9 = byte_287529580;
          v10 = (v9 + 1);
          if ((__p[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v10, *__p, *&__p[8]);
          }

          else
          {
            v15 = *__p;
            v9[3] = *&__p[16];
            *&v10->__r_.__value_.__l.__data_ = v15;
          }

          *v9 = &unk_287528000;
        }
      }

      operator new();
    }

    if (*v28 != v29 && *v28)
    {
      MEMORY[0x26672B1B0]();
    }

    TFileObjectParser::~TFileObjectParser(v31);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_26280BF50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, void *a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      TFileObjectParser::~TFileObjectParser(&STACK[0x470]);
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

uint64_t TCompounder::freeMemory(TCompounder *this)
{
  v2 = *(this + 49);
  v3 = *(this + 50);
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(v2 + 8 * v4);
      if (v5)
      {
        if (*(v5 + 55) < 0)
        {
          operator delete(*(v5 + 32));
        }

        MEMORY[0x26672B1B0](v5, 0x1072C406F7C4BA3);
        v2 = *(this + 49);
        v3 = *(this + 50);
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 3);
  }

  *(this + 50) = v2;
  v6 = *(this + 34);
  v7 = this + 280;
  if (v6 != this + 280)
  {
    do
    {
      v8 = *(v6 + 7);
      if (v8)
      {
        TRegExp::~TRegExp(v8);
        MEMORY[0x26672B1B0]();
      }

      v9 = *(v6 + 8);
      if (v9)
      {
        TRegExp::~TRegExp(v9);
        MEMORY[0x26672B1B0]();
      }

      v10 = *(v6 + 1);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = *(v6 + 2);
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
      }

      v6 = v11;
    }

    while (v11 != v7);
  }

  std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::destroy(this + 272, *(this + 35));
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 34) = v7;
  v13 = *(this + 46);
  if (v13)
  {
    TDataSaver::~TDataSaver(v13);
    MEMORY[0x26672B1B0]();
  }

  v14 = *(this + 45);
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  result = *(this + 47);
  if (result)
  {
    v16 = *(*result + 8);

    return v16();
  }

  return result;
}

void TCompounder::~TCompounder(TCompounder *this)
{
  *this = &unk_287528F98;
  v3 = *(this + 8);
  v2 = *(this + 9);
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 8 * v4);
      if (v5)
      {
        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        MEMORY[0x26672B1B0](v5, 0x1072C406A9B7475);
        v3 = *(this + 8);
        v2 = *(this + 9);
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = *(this + 31);
  v7 = this + 256;
  if (v6 != this + 256)
  {
    do
    {
      v8 = *(v6 + 7);
      if (v8)
      {
        TLmScore::~TLmScore(v8);
        MEMORY[0x26672B1B0]();
      }

      v9 = *(v6 + 1);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(v6 + 2);
          v11 = *v10 == v6;
          v6 = v10;
        }

        while (!v11);
      }

      v6 = v10;
    }

    while (v10 != v7);
  }

  std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::destroy(this + 248, *(this + 32));
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 31) = v7;
  TCompounder::freeMemory(this);
  v12 = *(this + 49);
  if (v12)
  {
    *(this + 50) = v12;
    operator delete(v12);
  }

  v14 = (this + 328);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v14);
  std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::destroy(this + 272, *(this + 35));
  std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::destroy(this + 248, *(this + 32));
  v13 = *(this + 8);
  if (v13)
  {
    *(this + 9) = v13;
    operator delete(v13);
  }

  TLatticeProcessor::~TLatticeProcessor(this);
}

{
  TCompounder::~TCompounder(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t TCompounder::save(TCompounder *this, TDataManager *a2, TDataManager *a3)
{
  v31[3] = *MEMORY[0x277D85DE8];
  v6 = *(this + 2);
  v7 = (v6 + 72);
  if (*(v6 + 95) < 0)
  {
    v7 = *v7;
  }

  TOutputModel::TOutputModel(v29, a2, a3, v7, *(this + 47));
  if (a2)
  {
    TDataManager::setIntVar(a2, "CompounderVersion", 1);
    std::ostringstream::basic_ostringstream[abi:ne200100](&v23);
    TOutputStream::TOutputStream(v31, &v23, "CompounderParam", *(this + 2) + 240);
    TParamManager::save(*(this + 45), v31, 0);
    std::stringbuf::str();
    if ((v22 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v22 & 0x80u) == 0)
    {
      v9 = v22;
    }

    else
    {
      v9 = v21;
    }

    (*(*a2 + 48))(a2, "CompounderParam", p_p, v9);
    if (v22 < 0)
    {
      operator delete(__p);
    }

    if (v30 == 1)
    {
      v10 = *(this + 46);
      if (v10)
      {
        TDataSaver::save(v10, a2);
      }
    }

    v23 = *MEMORY[0x277D82828];
    *(&v23 + *(v23 - 3)) = *(MEMORY[0x277D82828] + 24);
    v24 = MEMORY[0x277D82878] + 16;
    if (v27 < 0)
    {
      operator delete(v26);
    }

    v24 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(&v25);
    std::ostream::~ostream();
    MEMORY[0x26672B160](v28);
  }

  if (a3)
  {
    TDataManager::setIntVar(a3, "CompounderVersion", 1);
    if (v30 >= 2)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&v23);
      TOutputStream::TOutputStream(v31, &v23, "CompounderParam", *(this + 2) + 240);
      TParamManager::save(*(this + 45), v31, 1);
      std::stringbuf::str();
      if ((v22 & 0x80u) == 0)
      {
        v11 = &__p;
      }

      else
      {
        v11 = __p;
      }

      if ((v22 & 0x80u) == 0)
      {
        v12 = v22;
      }

      else
      {
        v12 = v21;
      }

      (*(*a3 + 48))(a3, "CompounderParam", v11, v12);
      if (v22 < 0)
      {
        operator delete(__p);
      }

      v13 = *(this + 46);
      if (v13)
      {
        TDataSaver::save(v13, a3);
      }

      v23 = *MEMORY[0x277D82828];
      *(&v23 + *(v23 - 3)) = *(MEMORY[0x277D82828] + 24);
      v24 = MEMORY[0x277D82878] + 16;
      if (v27 < 0)
      {
        operator delete(v26);
      }

      v24 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v25);
      std::ostream::~ostream();
      MEMORY[0x26672B160](v28);
    }

    if (!*(this + 46))
    {
      v14 = 0;
      v23 = 0;
      v24 = 0;
      v25.__locale_ = 0;
      v31[0] = "CompounderFeatureConfig";
      v31[1] = "CompounderWordFlag";
      v31[2] = "CompounderRules";
      do
      {
        v15 = v31[v14];
        if ((*(**(this + 47) + 40))(*(this + 47), v15, 0, 0))
        {
          TDataManager::getStringVar(*(this + 47));
          if (SHIBYTE(v25.__locale_) >= 0)
          {
            v16 = &v23;
          }

          else
          {
            v16 = v23;
          }

          if (SHIBYTE(v25.__locale_) >= 0)
          {
            locale_high = HIBYTE(v25.__locale_);
          }

          else
          {
            locale_high = v24;
          }

          (*(*a3 + 48))(a3, v15, v16, locale_high);
        }

        ++v14;
      }

      while (v14 != 3);
      if (SHIBYTE(v25.__locale_) < 0)
      {
        operator delete(v23);
      }
    }
  }

  result = *(this + 47);
  if (result)
  {
    result = (*(*result + 24))(result);
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26280CA2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

uint64_t TCompounder::compoundGerman(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5);
  v7 = v6;
  v9 = v8;
  v52 = v10;
  v53 = v5;
  v12 = v11;
  v70 = v72;
  v71 = xmmword_26286B6F0;
  v73 = 1;
  v13 = 16 * v8;
  TWord::getWrittenForm(*(*v11 + 16 * v8), &v70);
  v66 = v68;
  v67 = xmmword_26286B6F0;
  v69 = 1;
  v62 = v64;
  v63 = xmmword_26286B6F0;
  v65 = 1;
  SpokenForm = TWord::getSpokenForm(*(*v12 + v13), &v62);
  v15 = *(&v63 + 1) != 0;
  if (!*(&v63 + 1))
  {
    SpokenForm = TBuffer<wchar_t>::operator=(&v62, &v70);
  }

  v58 = v60;
  v59 = xmmword_26286B6F0;
  v61 = 1;
  v54 = v56;
  v55 = xmmword_26286B6F0;
  v57 = 1;
  v16 = v9 + 1;
  if (v9 + 1 < v7)
  {
    v17 = 0;
    v18 = v9;
    while (1)
    {
      v19 = v16;
      v20 = *(*v12 + 16 * v9);
      v21 = *(*v12 + 16 * v16);
      v22 = *(*v52 + 16 * v9);
      if (v22)
      {
        TWord::getWrittenForm(v22, &v58);
        BindingLetter = *v58;
        if (v61 == 1 && v58 != v60)
        {
          MEMORY[0x26672B1B0]();
          v58 = v60;
          *&v59 = 256;
        }

        *(&v59 + 1) = 0;
      }

      else
      {
        BindingLetter = TCompounder::getBindingLetter(v53, *(*v12 + 16 * v9), v21);
      }

      TWord::getWrittenForm(v21, &v58);
      TWord::getSpokenForm(v21, &v54);
      TWord::getWordSense(v21, &v66);
      v74[0] = 32;
      TBuffer<wchar_t>::insert(&v62, *(&v63 + 1), v74, 1uLL);
      if (*(&v55 + 1))
      {
        v25 = &v54;
      }

      else
      {
        v25 = &v58;
      }

      v26 = TBuffer<wchar_t>::operator+=(&v62, v25);
      v27 = *(&v55 + 1) != 0;
      if (!BindingLetter)
      {
        goto LABEL_27;
      }

      if (BindingLetter != 45)
      {
        break;
      }

      if (*(&v71 + 1) && *(&v59 + 1) && v70[*(&v71 + 1) - 1] != 45 && *v58 != 45)
      {
        v74[0] = 45;
        v26 = TBuffer<wchar_t>::insert(&v70, *(&v71 + 1), v74, 1uLL);
      }

      if (v19 > v18 + 1)
      {
        Capitalization = TCompounder::getCapitalization(v26, v20);
        v29 = v70[v17];
        v30 = *(v53 + 2);
        if (Capitalization)
        {
          v31 = TLocaleInfo::toUpper(v30 + 240, v29);
        }

        else
        {
          v31 = TLocaleInfo::toLower(v30 + 240, v29);
        }

        v70[v17] = v31;
      }

      v17 = *(&v71 + 1);
      SpokenForm = TBuffer<wchar_t>::operator+=(&v70, &v58);
      v18 = v9 + 2;
LABEL_39:
      v15 |= v27;
      v16 = v19 + 1;
      v9 = v19;
      if (v19 + 1 == v7)
      {
        v16 = v18 + 1;
        goto LABEL_42;
      }
    }

    v74[0] = BindingLetter;
    TBuffer<wchar_t>::insert(&v70, *(&v71 + 1), v74, 1uLL);
LABEL_27:
    v74[0] = TLocaleInfo::toLower(*(v53 + 2) + 240, *v58);
    TBuffer<wchar_t>::insert(&v70, *(&v71 + 1), v74, 1uLL);
    if (*(&v59 + 1) >= v59)
    {
      if (v61)
      {
        v74[0] = 0;
        TBuffer<wchar_t>::insert(&v58, *(&v59 + 1), v74, 1uLL);
        v32 = v58;
        --*(&v59 + 1);
      }

      else
      {
        v32 = v58;
        if (v59)
        {
          *&v58[4 * v59 - 4] = 0;
        }
      }
    }

    else
    {
      v32 = v58;
      *&v58[4 * *(&v59 + 1)] = 0;
    }

    v33 = (v32 + 4);
    v34 = -1;
    v35 = (v32 + 4);
    do
    {
      v36 = *v35++;
      ++v34;
    }

    while (v36);
    SpokenForm = TBuffer<wchar_t>::insert(&v70, *(&v71 + 1), v33, v34);
    goto LABEL_39;
  }

  v17 = 0;
LABEL_42:
  if (v16 < v7)
  {
    v37 = TCompounder::getCapitalization(SpokenForm, *(*v12 + 16 * v7 - 16));
    v38 = v70[v17];
    v39 = *(v53 + 2);
    if (v37)
    {
      v40 = TLocaleInfo::toUpper(v39 + 240, v38);
      v70[v17] = v40;
      if (!v17)
      {
        goto LABEL_48;
      }

      v41 = TLocaleInfo::toUpper(*(v53 + 2) + 240, v40);
    }

    else
    {
      v41 = TLocaleInfo::toLower(v39 + 240, v38);
    }

    v70[v17] = v41;
  }

LABEL_48:
  if (*(&v71 + 1))
  {
    v42 = 0;
    while (1)
    {
      v43 = v70[v42];
      {
        operator new();
      }

      if (v43 <= 8202)
      {
        if (v43 != 32 && v43 != 160)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v44 = v43 == 8203 || v43 == 65279;
        if (!v44 && v43 != 12288)
        {
          goto LABEL_61;
        }
      }

      v70[v42] = 45;
LABEL_61:
      ++v42;
      v45 = *(&v71 + 1);
      if (v42 >= *(&v71 + 1))
      {
        goto LABEL_66;
      }
    }
  }

  v45 = 0;
LABEL_66:
  if (v15 & 1 | (*(&v67 + 1) != 0))
  {
    v74[0] = 92;
    TBuffer<wchar_t>::insert(&v70, v45, v74, 1uLL);
    TBuffer<wchar_t>::operator+=(&v70, &v66);
    v45 = *(&v71 + 1);
    if (v15)
    {
      v74[0] = 92;
      TBuffer<wchar_t>::insert(&v70, *(&v71 + 1), v74, 1uLL);
      TBuffer<wchar_t>::operator+=(&v70, &v62);
      v45 = *(&v71 + 1);
    }
  }

  v46 = *(v53 + 2);
  if (v45 >= v71)
  {
    if (v73)
    {
      v74[0] = 0;
      TBuffer<wchar_t>::insert(&v70, v45, v74, 1uLL);
      v47 = v70;
      --*(&v71 + 1);
    }

    else
    {
      v47 = v70;
      if (v71)
      {
        v70[v71 - 1] = 0;
      }
    }
  }

  else
  {
    v47 = v70;
    v70[v45] = 0;
  }

  Word = TLexicon::findWord(v46, v47);
  if (!Word)
  {
    v49 = *(v53 + 2);
    if (*(&v71 + 1) >= v71)
    {
      if (v73)
      {
        v74[0] = 0;
        TBuffer<wchar_t>::insert(&v70, *(&v71 + 1), v74, 1uLL);
        v50 = v70;
        --*(&v71 + 1);
      }

      else
      {
        v50 = v70;
        if (v71)
        {
          v70[v71 - 1] = 0;
        }
      }
    }

    else
    {
      v50 = v70;
      v70[*(&v71 + 1)] = 0;
    }

    Word = TLexicon::addTempWord(v49, v50, 0, 0, 0);
  }

  if (v57 == 1 && v54 != v56 && v54)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v61 == 1 && v58 != v60 && v58)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v65 == 1 && v62 != v64 && v62)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v69 == 1 && v66 != v68 && v66)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v73 == 1 && v70 != v72 && v70)
  {
    MEMORY[0x26672B1B0]();
  }

  return Word;
}

void sub_26280D264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  MEMORY[0x26672B1B0](a17, 0x1070C40ADD13FEBLL);
  if (LOBYTE(STACK[0x468]) == 1 && a19 != a9 && a19)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0x888]) == 1)
  {
    v20 = STACK[0x470];
    if (STACK[0x470] != a16)
    {
      if (v20)
      {
        MEMORY[0x26672B1B0](v20, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0xCA8]) == 1)
  {
    v21 = STACK[0x890];
    if (STACK[0x890] != a10)
    {
      if (v21)
      {
        MEMORY[0x26672B1B0](v21, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0x10C8]) == 1)
  {
    v22 = STACK[0xCB0];
    if (STACK[0xCB0] != a11)
    {
      if (v22)
      {
        MEMORY[0x26672B1B0](v22, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0x14E8]) == 1 && STACK[0x10D0] != a12 && STACK[0x10D0] != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

uint64_t TCompounder::getBindingLetter(TCompounder *this, __int32 **a2, signed int **a3)
{
  v6 = *a2;
  v7 = **a2;
  {
    operator new();
  }

  if (!TLocaleInfo::isAlpha(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v7))
  {
    return 45;
  }

  v8 = v6 + 1;
  while (1)
  {
    v10 = *v8++;
    v9 = v10;
    if (!v10)
    {
      break;
    }

    {
      operator new();
    }

    if ((TLocaleInfo::isLower(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v9) & 1) == 0)
    {
      return 45;
    }
  }

  v11 = *a3;
  v12 = **a3;
  {
    operator new();
  }

  if (!TLocaleInfo::isAlpha(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v12))
  {
    return 45;
  }

  v13 = v11 + 1;
  while (1)
  {
    v15 = *v13++;
    v14 = v15;
    if (!v15)
    {
      break;
    }

    {
      operator new();
    }

    if ((TLocaleInfo::isLower(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v14) & 1) == 0)
    {
      return 45;
    }
  }

  v31 = v33;
  v32 = xmmword_26286B6F0;
  v34 = 1;
  TWord::getCategoryTag(a3, &v31);
  if (*(v31 + 1) != 80)
  {
    v27 = v29;
    v28 = xmmword_26286B6F0;
    v30 = 1;
    TWord::getCategoryTag(a2, &v27);
    if (*v27 == 86 && *(v27 + 2) == 86 && *v31 == 83)
    {
      v16 = 115;
LABEL_46:
      if (v30 == 1 && v27 != v29 && v27)
      {
        MEMORY[0x26672B1B0]();
      }

      goto LABEL_50;
    }

    v23 = v25;
    v24 = xmmword_26286B6F0;
    v26 = 1;
    v18 = *(this + 23);
    if (v18)
    {
      TWord::getTokenName(a2, &v23);
      v18 = *(this + 23);
      v19 = *(&v24 + 1);
      if (*(&v24 + 1) >= v24)
      {
        if (v26)
        {
          v35 = 0;
          TBuffer<wchar_t>::insert(&v23, *(&v24 + 1), &v35, 1uLL);
          v20 = v23;
          --*(&v24 + 1);
        }

        else
        {
          v20 = v23;
          if (v24)
          {
            v23[v24 - 1] = 0;
          }
        }

        goto LABEL_33;
      }
    }

    else
    {
      v19 = 0;
    }

    v20 = v23;
    v23[v19] = 0;
LABEL_33:
    if (v18 && v20 && (TRegExp::match(v18, v20, 0) & 1) != 0)
    {
      v16 = 45;
    }

    else if (!wcscmp(*a3, dword_262891114))
    {
      v16 = 0;
    }

    else
    {
      v21 = *a2;
      v22 = TBuffer<wchar_t>::c_str(&v27);
      if (TCompounder::takesFugenS(this, v21, v22))
      {
        v16 = 115;
      }

      else
      {
        v16 = 0;
      }
    }

    if (v26 == 1 && v23 != v25 && v23)
    {
      MEMORY[0x26672B1B0]();
    }

    goto LABEL_46;
  }

  v16 = 0;
LABEL_50:
  if (v34 == 1 && v31 != v33 && v31)
  {
    MEMORY[0x26672B1B0]();
  }

  return v16;
}

void sub_26280D80C(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

BOOL TCompounder::getCapitalization(TCompounder *this, __int32 **a2)
{
  v7 = v9;
  v8 = xmmword_26286B6F0;
  v10 = 1;
  TWord::getWrittenForm(a2, &v7);
  v3 = *v7;
  {
    operator new();
  }

  if (TLocaleInfo::isUpper(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v3))
  {
    v4 = 1;
  }

  else
  {
    TWord::getCategoryTag(a2, &v7);
    v4 = *v7 == 83 || *v7 == 78;
  }

  if (v10 == 1 && v7 != v9 && v7)
  {
    MEMORY[0x26672B1B0]();
  }

  return v4;
}

void sub_26280DA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x26672B1B0](v9, 0x1070C40ADD13FEBLL);
  if (LOBYTE(STACK[0x418]) == 1 && a9 != v10 && a9 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

uint64_t TCompounder::compoundNordic(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5);
  v50 = v10;
  v51 = v9;
  v11 = v5;
  v81 = v83;
  v82 = xmmword_26286B6F0;
  v84 = 1;
  v77 = v79;
  v78 = xmmword_26286B6F0;
  v80 = 1;
  v73 = v75;
  v74 = xmmword_26286B6F0;
  v76 = 1;
  v69 = v71;
  v70 = xmmword_26286B6F0;
  v72 = 1;
  v65 = v67;
  v66 = xmmword_26286B6F0;
  v68 = 1;
  v61 = v63;
  v62 = xmmword_26286B6F0;
  v64 = 1;
  v56 = v7;
  v57 = v59;
  v58 = xmmword_26286B6F0;
  if (v8 == 1)
  {
    v12 = &TCompounder::compoundNordic(std::vector<std::pair<TWord const*,unsigned int>> const&,std::vector<std::pair<TWord const*,unsigned long>> const&,unsigned long,unsigned long,TCompounder::TLanguage)::pszVowelsDutch;
  }

  else
  {
    v12 = &TCompounder::compoundNordic(std::vector<std::pair<TWord const*,unsigned int>> const&,std::vector<std::pair<TWord const*,unsigned long>> const&,unsigned long,unsigned long,TCompounder::TLanguage)::pszVowels;
  }

  v60 = 1;
  if (v6 >= v7)
  {
    v15 = 0;
    goto LABEL_78;
  }

  v13 = v8;
  v14 = 0;
  v49 = 0;
  v15 = 0;
  v16 = v6;
  v17 = v6;
  v55 = v6;
  do
  {
    v53 = v14;
    v18 = *(*v51 + 16 * v16);
    TWord::getWrittenForm(v18, &v77);
    TWord::getSpokenForm(v18, &v73);
    TWord::getWordSense(v18, &v69);
    TWord::getTokenName(v18, &v65);
    if (v16 > v17)
    {
      v85[0] = 32;
      TBuffer<wchar_t>::insert(&v61, *(&v62 + 1), v85, 1uLL);
    }

    if (*(&v74 + 1))
    {
      v19 = &v73;
    }

    else
    {
      v19 = &v77;
    }

    TBuffer<wchar_t>::operator+=(&v61, v19);
    v20 = *(&v74 + 1) != 0;
    if (!*(&v82 + 1))
    {
      goto LABEL_18;
    }

    if (v13 == 1)
    {
      v21 = *v77;
    }

    else
    {
      if (v13 != 4)
      {
        goto LABEL_18;
      }

      v21 = v81[*(&v82 + 1) - 1];
      if (v21 != *v77)
      {
        goto LABEL_18;
      }
    }

    v22 = TLocaleInfo::removeDiacritics(v11[2] + 240, v21);
    if (wcschr(v12, v22))
    {
      v23 = TLocaleInfo::removeDiacritics(v11[2] + 240, v81[*(&v82 + 1) - 1]);
      v52 = wcschr(v12, v23) != 0;
      goto LABEL_19;
    }

LABEL_18:
    v52 = 0;
LABEL_19:
    v54 = v20;
    if (*(&v78 + 1))
    {
      v24 = 0;
      v25 = 0;
      while (1)
      {
        v26 = *&v77[4 * v24];
        {
          operator new();
        }

        v27 = TLocaleInfo::isLower(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v26) ^ 1;
        if (v13 == 4)
        {
          LOBYTE(v27) = 0;
        }

        if (v27)
        {
          break;
        }

        v28 = TLocaleInfo::removeDiacritics(v11[2] + 240, *&v77[4 * v24]);
        v25 |= wcschr(v12, v28) != 0;
        if (++v24 >= *(&v78 + 1))
        {
          v30 = 0;
          goto LABEL_31;
        }
      }

      v30 = 1;
LABEL_31:
      v29 = v30 | ((v25 & 1) == 0);
    }

    else
    {
      v29 = 1;
    }

    v31 = v16 + 1;
    if (v16 + 1 == v56)
    {
      v32 = v11[27];
      if (*(&v66 + 1) >= v66)
      {
        if (v68)
        {
          v85[0] = 0;
          TBuffer<wchar_t>::insert(&v65, *(&v66 + 1), v85, 1uLL);
          v33 = v65;
          --*(&v66 + 1);
        }

        else
        {
          v33 = v65;
          if (v66)
          {
            v65[v66 - 1] = 0;
          }
        }
      }

      else
      {
        v33 = v65;
        v65[*(&v66 + 1)] = 0;
      }

      v34 = v32 && v33 && (TRegExp::match(v32, v33, 0) & 1) != 0;
      v35 = v11[29];
      if (*(&v66 + 1) >= v66)
      {
        if (v68)
        {
          v85[0] = 0;
          TBuffer<wchar_t>::insert(&v65, *(&v66 + 1), v85, 1uLL);
          v36 = v65;
          --*(&v66 + 1);
        }

        else
        {
          v36 = v65;
          if (v66)
          {
            v65[v66 - 1] = 0;
          }
        }
      }

      else
      {
        v36 = v65;
        v65[*(&v66 + 1)] = 0;
      }

      v29 |= v34;
      v49 = v35 && v36 && (TRegExp::match(v35, v36, 0) & 1) != 0;
      v17 = v55;
    }

    if (v16 != v17)
    {
      v37 = *(*v50 + 16 * v16 - 16);
      if (v37)
      {
        TWord::getWrittenForm(v37, &v57);
        v85[0] = *v57;
        TBuffer<wchar_t>::insert(&v81, *(&v82 + 1), v85, 1uLL);
      }

      else if ((v29 | v53 | v52))
      {
        v85[0] = 45;
        TBuffer<wchar_t>::insert(&v81, *(&v82 + 1), v85, 1uLL);
      }
    }

    TBuffer<wchar_t>::operator+=(&v81, &v77);
    v14 = v29;
    v17 = v55;
    if (v16 == v55)
    {
      v38 = v11[25];
      if (*(&v66 + 1) >= v66)
      {
        if (v68)
        {
          v85[0] = 0;
          TBuffer<wchar_t>::insert(&v65, *(&v66 + 1), v85, 1uLL);
          v39 = v65;
          --*(&v66 + 1);
        }

        else
        {
          v39 = v65;
          if (v66)
          {
            v65[v66 - 1] = 0;
          }
        }
      }

      else
      {
        v39 = v65;
        v65[*(&v66 + 1)] = 0;
      }

      v40 = v38 && v39 && (TRegExp::match(v38, v39, 0) & 1) != 0;
      v14 = v40 | v29;
      v17 = v55;
    }

    v15 |= v54;
    ++v16;
  }

  while (v31 != v56);
  if (v49)
  {
    v41 = TLocaleInfo::toUpper(v11[2] + 240, *v81);
    *v81 = v41;
  }

LABEL_78:
  v42 = *(&v82 + 1);
  if ((v15 & 1) != 0 || *(&v70 + 1))
  {
    v85[0] = 92;
    TBuffer<wchar_t>::insert(&v81, *(&v82 + 1), v85, 1uLL);
    TBuffer<wchar_t>::operator+=(&v81, &v69);
    v42 = *(&v82 + 1);
    if (v15)
    {
      v85[0] = 92;
      TBuffer<wchar_t>::insert(&v81, *(&v82 + 1), v85, 1uLL);
      TBuffer<wchar_t>::operator+=(&v81, &v61);
      v42 = *(&v82 + 1);
    }
  }

  v43 = v11[2];
  if (v42 >= v82)
  {
    if (v84)
    {
      v85[0] = 0;
      TBuffer<wchar_t>::insert(&v81, v42, v85, 1uLL);
      v44 = v81;
      --*(&v82 + 1);
    }

    else
    {
      v44 = v81;
      if (v82)
      {
        v81[v82 - 1] = 0;
      }
    }
  }

  else
  {
    v44 = v81;
    v81[v42] = 0;
  }

  Word = TLexicon::findWord(v43, v44);
  if (!Word)
  {
    v46 = v11[2];
    if (*(&v82 + 1) >= v82)
    {
      if (v84)
      {
        v85[0] = 0;
        TBuffer<wchar_t>::insert(&v81, *(&v82 + 1), v85, 1uLL);
        v47 = v81;
        --*(&v82 + 1);
      }

      else
      {
        v47 = v81;
        if (v82)
        {
          v81[v82 - 1] = 0;
        }
      }
    }

    else
    {
      v47 = v81;
      v81[*(&v82 + 1)] = 0;
    }

    Word = TLexicon::addTempWord(v46, v47, 0, 0, 0);
  }

  if (v60 == 1 && v57 != v59 && v57)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v64 == 1 && v61 != v63 && v61)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v68 == 1 && v65 != v67 && v65)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v72 == 1 && v69 != v71 && v69)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v76 == 1 && v73 != v75 && v73)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v80 == 1 && v77 != v79 && v77)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v84 == 1 && v81 != v83 && v81)
  {
    MEMORY[0x26672B1B0]();
  }

  return Word;
}

void sub_26280E3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  MEMORY[0x26672B1B0](v23, 0x1070C40ADD13FEBLL);
  if (LOBYTE(STACK[0x488]) == 1 && a23 != a13 && a23 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0x8A8]) == 1)
  {
    v26 = STACK[0x490];
    if (STACK[0x490] != a14)
    {
      if (v26)
      {
        MEMORY[0x26672B1B0](v26, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0xCC8]) == 1)
  {
    v27 = STACK[0x8B0];
    if (STACK[0x8B0] != a15)
    {
      if (v27)
      {
        MEMORY[0x26672B1B0](v27, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0x10E8]) == 1)
  {
    v28 = STACK[0xCD0];
    if (STACK[0xCD0] != a9)
    {
      if (v28)
      {
        MEMORY[0x26672B1B0](v28, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0x1508]) == 1)
  {
    v29 = STACK[0x10F0];
    if (STACK[0x10F0] != a10)
    {
      if (v29)
      {
        MEMORY[0x26672B1B0](v29, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0x1928]) == 1)
  {
    v30 = STACK[0x1510];
    if (STACK[0x1510] != a11)
    {
      if (v30)
      {
        MEMORY[0x26672B1B0](v30, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0x1D48]) == 1)
  {
    v31 = STACK[0x1930];
    if (STACK[0x1930] != a12)
    {
      if (v31)
      {
        MEMORY[0x26672B1B0](v31, 0x1000C4052888210);
      }
    }
  }

  _Unwind_Resume(a1);
}

uint64_t TCompounder::compoundWithRules(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5);
  v86 = v6;
  v8 = v7;
  v84 = v9;
  v11 = v10;
  v12 = v5;
  v120 = v122;
  v121 = xmmword_26286B6F0;
  v123 = 1;
  v83 = v13;
  v14 = 16 * v13;
  TWord::getWrittenForm(*(*v10 + 16 * v13), &v120);
  v87 = v8;
  v116 = v118;
  v117 = xmmword_26286B6F0;
  v119 = 1;
  v112 = v114;
  v113 = xmmword_26286B6F0;
  v115 = 1;
  v85 = v11;
  TWord::getSpokenForm(*(*v11 + v14), &v112);
  v15 = *(&v113 + 1) != 0;
  if (!*(&v113 + 1))
  {
    TBuffer<wchar_t>::operator=(&v112, &v120);
  }

  v108 = v110;
  v109 = xmmword_26286B6F0;
  v111 = 1;
  v104 = v106;
  v105 = xmmword_26286B6F0;
  v107 = 1;
  v100 = v102;
  v101 = xmmword_26286B6F0;
  v103 = 1;
  v96 = v98;
  v97 = xmmword_26286B6F0;
  v99 = 1;
  v92 = v94;
  v93 = xmmword_26286B6F0;
  v95 = 1;
  v88 = v90;
  v89 = xmmword_26286B6F0;
  v91 = 1;
  if (*(&v121 + 1) >= v121)
  {
    if (v123)
    {
      v124[0] = 0;
      TBuffer<wchar_t>::insert(&v120, *(&v121 + 1), v124, 1uLL);
      v16 = v120;
      --*(&v121 + 1);
    }

    else
    {
      v16 = v120;
      if (v121)
      {
        v120[v121 - 1] = 0;
      }
    }
  }

  else
  {
    v16 = v120;
    v120[*(&v121 + 1)] = 0;
  }

  TBuffer<wchar_t>::assign(&v104, v16);
  TWord::getCategoryTag(*(*v85 + v14), &v92);
  v18 = v83 + 1;
  if (v83 + 1 >= v87)
  {
    v19 = 0;
    v65 = 1;
    goto LABEL_128;
  }

  v19 = 0;
  v20 = 0;
  v21 = v87 - 1;
  v22 = v83 + 1;
  do
  {
    v23 = 16 * (v22 - 1);
    v24 = *(*v85 + v23);
    v25 = *(*v85 + 16 * v22);
    TWord::getWrittenForm(v25, &v100);
    TWord::getSpokenForm(v25, &v96);
    TWord::getCategoryTag(v25, &v88);
    TWord::getWordSense(v25, &v116);
    v124[0] = 32;
    TBuffer<wchar_t>::insert(&v112, *(&v113 + 1), v124, 1uLL);
    if (*(&v97 + 1))
    {
      v26 = &v96;
    }

    else
    {
      v26 = &v100;
    }

    TBuffer<wchar_t>::operator+=(&v112, v26);
    v27 = *(&v97 + 1) != 0;
    v28 = *(*v84 + v23);
    if (v28)
    {
      TWord::getWrittenForm(v28, &v108);
      if (*(&v109 + 1) >= v109)
      {
        if (v111)
        {
          v124[0] = 0;
          TBuffer<wchar_t>::insert(&v108, *(&v109 + 1), v124, 1uLL);
          v29 = v108;
          --*(&v109 + 1);
        }

        else
        {
          v29 = v108;
          if (v109)
          {
            v108[v109 - 1] = 0;
          }
        }
      }

      else
      {
        v29 = v108;
        v108[*(&v109 + 1)] = 0;
      }

      goto LABEL_67;
    }

    v30 = v12[49];
    if (v12[50] == v30)
    {
      v29 = &unk_26288FFA8;
      goto LABEL_67;
    }

    v82 = v20;
    v31 = 0;
    while (1)
    {
      v32 = *(v30 + 8 * v31);
      v33 = *(v32 + 56);
      if (v22 == v18)
      {
        if ((v33 & 0x10) != 0)
        {
          goto LABEL_59;
        }
      }

      else if (v33)
      {
        goto LABEL_59;
      }

      if (v22 != v21)
      {
        break;
      }

      if ((v33 & 0x20) == 0)
      {
        goto LABEL_27;
      }

LABEL_59:
      if (++v31 >= ((v12[50] - v30) >> 3))
      {
        v29 = &unk_26288FFA8;
        goto LABEL_61;
      }
    }

    if ((v33 & 2) != 0)
    {
      goto LABEL_59;
    }

LABEL_27:
    v34 = *v32;
    if (*v32)
    {
      if (*(&v105 + 1) >= v105)
      {
        if (v107)
        {
          v124[0] = 0;
          TBuffer<wchar_t>::insert(&v104, *(&v105 + 1), v124, 1uLL);
          v35 = v104;
          --*(&v105 + 1);
        }

        else
        {
          v35 = v104;
          if (v105)
          {
            v104[v105 - 1] = 0;
          }
        }
      }

      else
      {
        v35 = v104;
        v104[*(&v105 + 1)] = 0;
      }

      v36 = TRegExp::match(v34, v35, 0);
      v30 = v12[49];
      v32 = *(v30 + 8 * v31);
      if ((v36 ^ ((*(v32 + 56) & 4) == 0)))
      {
        goto LABEL_59;
      }
    }

    v37 = *(v32 + 8);
    if (v37)
    {
      if (*(&v93 + 1) >= v93)
      {
        if (v95)
        {
          v124[0] = 0;
          TBuffer<wchar_t>::insert(&v92, *(&v93 + 1), v124, 1uLL);
          v38 = v92;
          --*(&v93 + 1);
        }

        else
        {
          v38 = v92;
          if (v93)
          {
            v92[v93 - 1] = 0;
          }
        }
      }

      else
      {
        v38 = v92;
        v92[*(&v93 + 1)] = 0;
      }

      v39 = TRegExp::match(v37, v38, 0);
      v30 = v12[49];
      v32 = *(v30 + 8 * v31);
      if ((v39 ^ ((*(v32 + 56) & 4) == 0)))
      {
        goto LABEL_59;
      }
    }

    v40 = *(v32 + 16);
    if (v40)
    {
      if (*(&v101 + 1) >= v101)
      {
        if (v103)
        {
          v124[0] = 0;
          TBuffer<wchar_t>::insert(&v100, *(&v101 + 1), v124, 1uLL);
          v41 = v100;
          --*(&v101 + 1);
        }

        else
        {
          v41 = v100;
          if (v101)
          {
            v100[v101 - 1] = 0;
          }
        }
      }

      else
      {
        v41 = v100;
        v100[*(&v101 + 1)] = 0;
      }

      v42 = TRegExp::match(v40, v41, 0);
      v30 = v12[49];
      v32 = *(v30 + 8 * v31);
      if ((v42 ^ ((*(v32 + 56) & 8) == 0)))
      {
        goto LABEL_59;
      }
    }

    v43 = *(v32 + 24);
    if (v43)
    {
      if (*(&v89 + 1) >= v89)
      {
        if (v91)
        {
          v124[0] = 0;
          TBuffer<wchar_t>::insert(&v88, *(&v89 + 1), v124, 1uLL);
          v44 = v88;
          --*(&v89 + 1);
        }

        else
        {
          v44 = v88;
          if (v89)
          {
            v88[v89 - 1] = 0;
          }
        }
      }

      else
      {
        v44 = v88;
        v88[*(&v89 + 1)] = 0;
      }

      v45 = TRegExp::match(v43, v44, 0);
      v30 = v12[49];
      v32 = *(v30 + 8 * v31);
      if ((v45 ^ ((*(v32 + 56) & 8) == 0)))
      {
        goto LABEL_59;
      }
    }

    v29 = (v32 + 32);
    if (*(v32 + 55) < 0)
    {
      v29 = *v29;
    }

LABEL_61:
    v20 = v82;
LABEL_67:
    v46 = 0;
    v15 |= v27;
      ;
    }

    v48 = TBuffer<wchar_t>::insert(&v120, *(&v121 + 1), v29, v46 - 1);
    if (v86)
    {
      if (v120[*(&v121 + 1) - 1] == 45 || (v49 = *v100, *(&v101 + 1)) && v49 == 45)
      {
        if (v22 > v83 + 1)
        {
          Capitalization = TCompounder::getCapitalization(v48, v24);
          v51 = v120[v19];
          v52 = v12[2];
          if (Capitalization)
          {
            v53 = TLocaleInfo::toUpper(v52 + 240, v51);
          }

          else
          {
            v53 = TLocaleInfo::toLower(v52 + 240, v51);
          }

          v120[v19] = v53;
        }

        v19 = *(&v121 + 1);
        v17 = TBuffer<wchar_t>::operator+=(&v120, &v100);
        v83 = v22 + 1;
      }

      else
      {
        v124[0] = TLocaleInfo::toLower(v12[2] + 240, v49);
        TBuffer<wchar_t>::insert(&v120, *(&v121 + 1), v124, 1uLL);
        if (*(&v101 + 1) >= v101)
        {
          if (v103)
          {
            v124[0] = 0;
            TBuffer<wchar_t>::insert(&v100, *(&v101 + 1), v124, 1uLL);
            v54 = v100;
            --*(&v101 + 1);
          }

          else
          {
            v54 = v100;
            if (v101)
            {
              v100[v101 - 1] = 0;
            }
          }
        }

        else
        {
          v54 = v100;
          v100[*(&v101 + 1)] = 0;
        }

        v55 = (v54 + 1);
        v56 = -1;
        v57 = (v54 + 1);
        do
        {
          v58 = *v57++;
          ++v56;
        }

        while (v58);
        v17 = TBuffer<wchar_t>::insert(&v120, *(&v121 + 1), v55, v56);
      }
    }

    else
    {
      v17 = TBuffer<wchar_t>::operator+=(&v120, &v100);
    }

    if (v22 == v21)
    {
      v60 = v12[29];
      v59 = v12[30];
      if (*(&v101 + 1) >= v101)
      {
        if (v103)
        {
          v124[0] = 0;
          v17 = TBuffer<wchar_t>::insert(&v100, *(&v101 + 1), v124, 1uLL);
          v61 = v100;
          --*(&v101 + 1);
        }

        else
        {
          v61 = v100;
          if (v101)
          {
            v100[v101 - 1] = 0;
          }
        }
      }

      else
      {
        v61 = v100;
        v100[*(&v101 + 1)] = 0;
      }

      if (*(&v89 + 1) >= v89)
      {
        if (v91)
        {
          v124[0] = 0;
          v17 = TBuffer<wchar_t>::insert(&v88, *(&v89 + 1), v124, 1uLL);
          v63 = v88;
          --*(&v89 + 1);
        }

        else
        {
          v63 = v88;
          if (v89)
          {
            v88[v89 - 1] = 0;
          }
        }
      }

      else
      {
        v63 = v88;
        v88[*(&v89 + 1)] = 0;
      }

      v20 = 1;
      if (!v60 || !v61 || (v17 = TRegExp::match(v60, v61, 0), (v17 & 1) == 0))
      {
        if (!v59 || !v63 || (v17 = TRegExp::match(v59, v63, 0), (v17 & 1) == 0))
        {
          v20 = 0;
        }
      }
    }

    else
    {
      if (*(&v101 + 1) >= v101)
      {
        if (v103)
        {
          v124[0] = 0;
          TBuffer<wchar_t>::insert(&v100, *(&v101 + 1), v124, 1uLL);
          v62 = v100;
          --*(&v101 + 1);
        }

        else
        {
          v62 = v100;
          if (v101)
          {
            v100[v101 - 1] = 0;
          }
        }
      }

      else
      {
        v62 = v100;
        v100[*(&v101 + 1)] = 0;
      }

      TBuffer<wchar_t>::assign(&v104, v62);
      if (*(&v89 + 1) >= v89)
      {
        if (v91)
        {
          v124[0] = 0;
          TBuffer<wchar_t>::insert(&v88, *(&v89 + 1), v124, 1uLL);
          v64 = v88;
          --*(&v89 + 1);
        }

        else
        {
          v64 = v88;
          if (v89)
          {
            v88[v89 - 1] = 0;
          }
        }
      }

      else
      {
        v64 = v88;
        v88[*(&v89 + 1)] = 0;
      }

      v17 = TBuffer<wchar_t>::assign(&v92, v64);
    }

    ++v22;
  }

  while (v22 != v87);
  v18 = v83 + 1;
  v65 = !v20;
LABEL_128:
  if (v86 && v18 < v87)
  {
    v66 = TCompounder::getCapitalization(v17, *(*v85 + 16 * v87 - 16));
    v67 = v120[v19];
    v68 = v12[2];
    if (v66)
    {
      v69 = TLocaleInfo::toUpper(v68 + 240, v67);
      v120[v19] = v69;
      if (v19)
      {
        v70 = TLocaleInfo::toUpper(v12[2] + 240, v69);
        goto LABEL_134;
      }
    }

    else
    {
      v70 = TLocaleInfo::toLower(v68 + 240, v67);
LABEL_134:
      v120[v19] = v70;
    }
  }

  if (*(&v121 + 1))
  {
    v71 = 0;
    while (1)
    {
      v72 = v120[v71];
      {
        operator new();
      }

      if (v72 <= 8202)
      {
        if (v72 != 32 && v72 != 160)
        {
          goto LABEL_148;
        }
      }

      else
      {
        v73 = v72 == 8203 || v72 == 65279;
        if (!v73 && v72 != 12288)
        {
          goto LABEL_148;
        }
      }

      v120[v71] = 45;
LABEL_148:
      ++v71;
      v74 = *(&v121 + 1);
      if (v71 >= *(&v121 + 1))
      {
        goto LABEL_153;
      }
    }
  }

  v74 = 0;
LABEL_153:
  if (((v86 | v65) & 1) == 0)
  {
    v75 = TLocaleInfo::toUpper(v12[2] + 240, *v120);
    *v120 = v75;
    v74 = *(&v121 + 1);
  }

  if (v15 & 1 | (*(&v117 + 1) != 0))
  {
    v124[0] = 92;
    TBuffer<wchar_t>::insert(&v120, v74, v124, 1uLL);
    TBuffer<wchar_t>::operator+=(&v120, &v116);
    v74 = *(&v121 + 1);
    if (v15)
    {
      v124[0] = 92;
      TBuffer<wchar_t>::insert(&v120, *(&v121 + 1), v124, 1uLL);
      TBuffer<wchar_t>::operator+=(&v120, &v112);
      v74 = *(&v121 + 1);
    }
  }

  v76 = v12[2];
  if (v74 >= v121)
  {
    if (v123)
    {
      v124[0] = 0;
      TBuffer<wchar_t>::insert(&v120, v74, v124, 1uLL);
      v77 = v120;
      --*(&v121 + 1);
    }

    else
    {
      v77 = v120;
      if (v121)
      {
        v120[v121 - 1] = 0;
      }
    }
  }

  else
  {
    v77 = v120;
    v120[v74] = 0;
  }

  Word = TLexicon::findWord(v76, v77);
  if (!Word)
  {
    v79 = v12[2];
    if (*(&v121 + 1) >= v121)
    {
      if (v123)
      {
        v124[0] = 0;
        TBuffer<wchar_t>::insert(&v120, *(&v121 + 1), v124, 1uLL);
        v80 = v120;
        --*(&v121 + 1);
      }

      else
      {
        v80 = v120;
        if (v121)
        {
          v120[v121 - 1] = 0;
        }
      }
    }

    else
    {
      v80 = v120;
      v120[*(&v121 + 1)] = 0;
    }

    Word = TLexicon::addTempWord(v79, v80, 0, 0, 0);
  }

  if (v91 == 1 && v88 != v90 && v88)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v95 == 1 && v92 != v94 && v92)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v99 == 1 && v96 != v98 && v96)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v103 == 1 && v100 != v102 && v100)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v107 == 1 && v104 != v106 && v104)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v111 == 1 && v108 != v110 && v108)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v115 == 1 && v112 != v114 && v112)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v119 == 1 && v116 != v118 && v116)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v123 == 1 && v120 != v122 && v120)
  {
    MEMORY[0x26672B1B0]();
  }

  return Word;
}

void sub_26280F3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  MEMORY[0x26672B1B0](a26, 0x1070C40ADD13FEBLL);
  if (LOBYTE(STACK[0x4A8]) == 1 && a27 != a10 && a27)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0x8C8]) == 1)
  {
    v28 = STACK[0x4B0];
    if (STACK[0x4B0] != a11)
    {
      if (v28)
      {
        MEMORY[0x26672B1B0](v28, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0xCE8]) == 1)
  {
    v29 = STACK[0x8D0];
    if (STACK[0x8D0] != a12)
    {
      if (v29)
      {
        MEMORY[0x26672B1B0](v29, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0x1108]) == 1)
  {
    v30 = STACK[0xCF0];
    if (STACK[0xCF0] != a13)
    {
      if (v30)
      {
        MEMORY[0x26672B1B0](v30, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0x1528]) == 1)
  {
    v31 = STACK[0x1110];
    if (STACK[0x1110] != a14)
    {
      if (v31)
      {
        MEMORY[0x26672B1B0](v31, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0x1948]) == 1)
  {
    v32 = STACK[0x1530];
    if (STACK[0x1530] != a15)
    {
      if (v32)
      {
        MEMORY[0x26672B1B0](v32, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0x1D68]) == 1)
  {
    v33 = STACK[0x1950];
    if (STACK[0x1950] != a16)
    {
      if (v33)
      {
        MEMORY[0x26672B1B0](v33, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0x2188]) == 1)
  {
    v34 = STACK[0x1D70];
    if (STACK[0x1D70] != a17)
    {
      if (v34)
      {
        MEMORY[0x26672B1B0](v34, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0x25A8]) == 1)
  {
    v35 = STACK[0x2190];
    if (STACK[0x2190] != a18)
    {
      if (v35)
      {
        MEMORY[0x26672B1B0](v35, 0x1000C4052888210);
      }
    }
  }

  _Unwind_Resume(a1);
}

void TCompounder::makeResult(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, void *a6, void *a7)
{
  v62 = v64;
  v63 = xmmword_26286B6F0;
  v65 = 1;
  v61 = 0uLL;
  v7 = *a4;
  if (a4[1] != *a4)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = 16 * v13;
      while (1)
      {
        v15 = *(v7 + v14);
        if (!v15)
        {
          break;
        }

        *&v61 = v15;
        *(&v61 + 1) = 1;
        std::vector<std::pair<TWord const*,unsigned long>>::push_back[abi:ne200100](a2, &v61);
        if (*(a1 + 56) == 1)
        {
          TBuffer<wchar_t>::resize(&v62, 0);
          tildeEscape(**(*a4 + v14), &v62);
          v16 = *(a1 + 360);
          v17 = (v16 + 512);
          if (*(v16 + 535) < 0)
          {
            v17 = *v17;
          }

          loggableUnicode(v17, v59);
          if (v60 >= 0)
          {
            v18 = v59;
          }

          else
          {
            v18 = v59[0];
          }

          if (*(&v63 + 1) >= v63)
          {
            if (v65)
            {
              v66[0] = 0;
              TBuffer<wchar_t>::insert(&v62, *(&v63 + 1), v66, 1uLL);
              v19 = v62;
              --*(&v63 + 1);
            }

            else
            {
              v19 = v62;
              if (v63)
              {
                v62[v63 - 1] = 0;
              }
            }
          }

          else
          {
            v19 = v62;
            v62[*(&v63 + 1)] = 0;
          }

          loggableUnicode(v19, __p);
          v24 = __p;
          if (v58 < 0)
          {
            v24 = __p[0];
          }

          tknPrintf("%s: 0 %s %s\n", v20, v21, v22, v23, v18, v24, TCompounder::ms_tagName[0]);
          if (v58 < 0)
          {
            operator delete(__p[0]);
          }

          if (v60 < 0)
          {
            operator delete(v59[0]);
          }
        }

        ++v13;
        v7 = *a4;
        v14 += 16;
        if (v13 >= (a4[1] - *a4) >> 4)
        {
          goto LABEL_82;
        }
      }

      v25 = 16 * v12;
      v26 = -1;
      v52 = 16 * v12;
      v53 = v12;
      do
      {
        v27 = v26;
        if (*(a1 + 56) == 1)
        {
          TBuffer<wchar_t>::resize(&v62, 0);
          v28 = *(*a3 + v25);
          if (v28)
          {
            tildeEscape(*v28, &v62);
          }

          if (*(*a7 + 8 * v12) == 0.0)
          {
            v29 = *(a1 + 360);
            v30 = (v29 + 512);
            if (*(v29 + 535) < 0)
            {
              v30 = *v30;
            }

            loggableUnicode(v30, v59);
            if (v60 >= 0)
            {
              v31 = v59;
            }

            else
            {
              v31 = v59[0];
            }

            if (*(&v63 + 1) >= v63)
            {
              if (v65)
              {
                v66[0] = 0;
                TBuffer<wchar_t>::insert(&v62, *(&v63 + 1), v66, 1uLL);
                v32 = v62;
                --*(&v63 + 1);
              }

              else
              {
                v32 = v62;
                if (v63)
                {
                  v62[v63 - 1] = 0;
                }
              }
            }

            else
            {
              v32 = v62;
              v62[*(&v63 + 1)] = 0;
            }

            loggableUnicode(v32, __p);
            v42 = __p;
            if (v58 < 0)
            {
              v42 = __p[0];
            }

            tknPrintf("%s: 0 %s %s\n", v38, v39, v40, v41, v31, v42, TCompounder::ms_tagName[(*(*a6 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v12) & 1]);
          }

          else
          {
            v33 = *(a1 + 360);
            v34 = (v33 + 512);
            if (*(v33 + 535) < 0)
            {
              v34 = *v34;
            }

            loggableUnicode(v34, v59);
            if (v60 >= 0)
            {
              v35 = v59;
            }

            else
            {
              v35 = v59[0];
            }

            v36 = *(*a7 + 8 * v12);
            if (*(&v63 + 1) >= v63)
            {
              if (v65)
              {
                v66[0] = 0;
                TBuffer<wchar_t>::insert(&v62, *(&v63 + 1), v66, 1uLL);
                v37 = v62;
                --*(&v63 + 1);
              }

              else
              {
                v37 = v62;
                if (v63)
                {
                  v62[v63 - 1] = 0;
                }
              }
            }

            else
            {
              v37 = v62;
              v62[*(&v63 + 1)] = 0;
            }

            loggableUnicode(v37, __p);
            v47 = __p;
            if (v58 < 0)
            {
              v47 = __p[0];
            }

            tknPrintf("%s: %e %s %s\n", v43, v44, v45, v46, v35, v36, v47, TCompounder::ms_tagName[(*(*a6 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v12) & 1]);
          }

          if (v58 < 0)
          {
            operator delete(__p[0]);
          }

          if (v60 < 0)
          {
            operator delete(v59[0]);
          }
        }

        if (++v12 >= a6[1])
        {
          break;
        }

        v26 = v27 - 1;
        v25 += 16;
      }

      while (((*(*a6 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
      if (v27 == -1)
      {
        *&v61 = *(*a3 + v52);
        *(&v61 + 1) = 1;
        std::vector<std::pair<TWord const*,unsigned long>>::push_back[abi:ne200100](a2, &v61);
      }

      else
      {
        v48 = TStringParam::get((*(*(a1 + 16) + 336) + 3280));
        if (!wcsncmp(v48, dword_262890C4C, 2uLL))
        {
          v49 = 0;
        }

        else if (!wcscmp(v48, dword_262890C58))
        {
          v49 = 0;
        }

        else
        {
          v49 = wcscmp(v48, dword_262890C68) && wcscmp(v48, dword_262890C78) && wcscmp(v48, dword_262890C88) != 0;
        }

        if (*(a1 + 384) > 2uLL)
        {
          v50 = TCompounder::compoundWithRules(a1, a3, a5, v53, v12);
        }

        else if (v49)
        {
          v50 = TCompounder::compoundGerman(a1, a3, a5, v53, v12);
        }

        else
        {
          v50 = TCompounder::compoundNordic(a1, a3, a5, v53, v12);
        }

        *&v61 = v50;
        *(&v61 + 1) = -v27;
        std::vector<std::pair<TWord const*,unsigned long>>::push_back[abi:ne200100](a2, &v61);
      }

      v13 -= v27;
      v7 = *a4;
    }

    while (v13 < (a4[1] - *a4) >> 4);
  }

LABEL_82:
  if (v65 == 1 && v62 != v64 && v62 != 0)
  {
    MEMORY[0x26672B1B0]();
  }
}

void sub_26280FC48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (LOBYTE(STACK[0x4A8]) == 1 && a27 != a15)
  {
    if (a27)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  _Unwind_Resume(a1);
}

void TCompounder::applyModelMBR(void *a1, uint64_t *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v100 = *MEMORY[0x277D85DE8];
  v92 = 0;
  v91 = 0;
  v93 = 0;
  std::vector<std::pair<TWord const*,unsigned int>>::__init_with_size[abi:ne200100]<std::pair<TWord const*,unsigned int>*,std::pair<TWord const*,unsigned int>*>(&v91, *a2, a2[1], (a2[1] - *a2) >> 4);
  v89 = 0;
  v88 = 0;
  v90 = 0;
  std::vector<std::pair<TWord const*,unsigned int>>::reserve(&v88, (a2[1] - *a2) >> 4);
  v86 = 0;
  v85 = 0;
  v87 = 0;
  std::vector<std::pair<TWord const*,unsigned long>>::reserve(&v85, (a4[1] - *a4) >> 4);
  v81 = v83;
  v82 = xmmword_26286B6F0;
  v84 = 1;
  v77 = v79;
  v78 = xmmword_26286B6F0;
  v80 = 1;
  v9 = *a2;
  if (a2[1] != *a2)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = (v9 + v10);
      v13 = *(v9 + v10);
      if (v13)
      {
        if (a1[11])
        {
          TWord::getTokenName(v13, &v81);
        }

        v14 = a1[12];
        if (v14)
        {
          TWord::getCategoryTag(v13, &v77);
          v14 = a1[12];
        }

        v15 = a1[11];
        if (*(&v82 + 1) >= v82)
        {
          if (v84)
          {
            LODWORD(v96) = 0;
            TBuffer<wchar_t>::insert(&v81, *(&v82 + 1), &v96, 1uLL);
            v16 = v81;
            --*(&v82 + 1);
          }

          else
          {
            v16 = v81;
            if (v82)
            {
              v81[v82 - 1] = 0;
            }
          }
        }

        else
        {
          v16 = v81;
          v81[*(&v82 + 1)] = 0;
        }

        if (*(&v78 + 1) >= v78)
        {
          if (v80)
          {
            LODWORD(v96) = 0;
            TBuffer<wchar_t>::insert(&v77, *(&v78 + 1), &v96, 1uLL);
            v17 = v77;
            --*(&v78 + 1);
          }

          else
          {
            v17 = v77;
            if (v78)
            {
              v77[v78 - 1] = 0;
            }
          }
        }

        else
        {
          v17 = v77;
          v77[*(&v78 + 1)] = 0;
        }

        if (v15 && v16 && (TRegExp::match(v15, v16, 0) & 1) != 0 || v14 && v17 && (TRegExp::match(v14, v17, 0) & 1) != 0)
        {
          goto LABEL_28;
        }

        v12 = (*a2 + 16 * v11);
      }

      std::vector<std::pair<TWord const*,unsigned int>>::push_back[abi:ne200100](&v88, v12);
      std::vector<std::pair<TWord const*,unsigned long>>::push_back[abi:ne200100](&v85, (*a4 + v10));
      *(v91 + v10) = 0;
LABEL_28:
      ++v11;
      v9 = *a2;
      v10 += 16;
    }

    while (v11 < (a2[1] - *a2) >> 4);
  }

  memset(v76, 0, sizeof(v76));
  std::vector<BOOL>::reserve(v76, (v89 - v88) >> 4);
  v74 = 0;
  __p = 0;
  v75 = 0;
  std::vector<unsigned long>::reserve(&__p, (v89 - v88) >> 4);
  if (v88 != v89)
  {
    v18 = a1[45];
    ActiveConfigHandle = TParam::getActiveConfigHandle((v18 + 992));
    if (*(v18 + TParam::getValidConfig((v18 + 992), ActiveConfigHandle) + 1144) != 1)
    {
      memset(&v72, 0, sizeof(v72));
      std::vector<int>::reserve(&v72, ((v89 - v88) >> 4) + ((a3[1] - *a3) >> 3));
      memset(v71, 0, sizeof(v71));
      std::vector<unsigned long>::reserve(v71, ((v89 - v88) >> 4) + ((a3[1] - *a3) >> 3));
      memset(v70, 0, sizeof(v70));
      std::vector<BOOL>::reserve(v70, ((v89 - v88) >> 4) + ((a3[1] - *a3) >> 3));
      memset(v69, 0, sizeof(v69));
      std::vector<BOOL>::reserve(v69, ((v89 - v88) >> 4) + ((a3[1] - *a3) >> 3));
      memset(v68, 0, sizeof(v68));
      std::vector<BOOL>::reserve(v68, ((v89 - v88) >> 4) + ((a3[1] - *a3) >> 3));
      memset(v67, 0, sizeof(v67));
      std::vector<BOOL>::reserve(v67, ((v89 - v88) >> 4) + ((a3[1] - *a3) >> 3));
      memset(v66, 0, sizeof(v66));
      std::vector<std::pair<TWord const*,unsigned int>>::reserve(v66, ((v89 - v88) >> 4) + ((a3[1] - *a3) >> 3));
      v22 = *a3;
      v23 = a3[1];
      if (v23 != *a3)
      {
        v24 = 0;
        do
        {
          v25 = *(v22 + 8 * v24);
          std::vector<int>::push_back[abi:ne200100](&v72.__begin_, (v25 + 16));
          std::vector<unsigned long>::push_back[abi:ne200100](v71, (v25 + 8));
          LOBYTE(v96) = 0;
          std::vector<BOOL>::push_back(v70, &v96);
          LOBYTE(v96) = 0;
          std::vector<BOOL>::push_back(v69, &v96);
          LOBYTE(v96) = 0;
          std::vector<BOOL>::push_back(v68, &v96);
          LOBYTE(v96) = 0;
          std::vector<BOOL>::push_back(v67, &v96);
          v96 = *v25;
          LODWORD(v97) = 0;
          std::vector<std::pair<TWord const*,unsigned int>>::push_back[abi:ne200100](v66, &v96);
          ++v24;
          v22 = *a3;
          v23 = a3[1];
        }

        while (v24 < (v23 - *a3) >> 3);
      }

      v96 = &v98;
      v97 = xmmword_26286B6F0;
      v99 = 1;
      v26 = v88;
      if (v89 != v88)
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        do
        {
          v30 = &v26[16 * v29];
          v31 = *v30;
          std::vector<std::pair<TWord const*,unsigned int>>::push_back[abi:ne200100](v66, v30);
          if (v31)
          {
            TBuffer<char>::resize(&v96, 0);
            TLocaleInfo::unicodeToMultiByte(a1[2] + 240, *v31, &v96);
            v32 = a1[44];
            if (*(&v97 + 1) >= v97)
            {
              if (v99)
              {
                LOBYTE(v94.__first_) = 0;
                TBuffer<char>::insert(&v96, *(&v97 + 1), &v94, 1uLL);
                --*(&v97 + 1);
              }

              else if (v97)
              {
                v96[v97 - 1] = 0;
              }
            }

            else
            {
              v96[*(&v97 + 1)] = 0;
            }

            *__s1 = TLmScore::getClass(v32, v96);
            std::vector<unsigned long>::push_back[abi:ne200100](v71, __s1);
            if (a1[15] || a1[17] || a1[19] || a1[21])
            {
              TWord::getTokenName(v31, &v81);
            }

            if (a1[16] || a1[18] || a1[20] || a1[22])
            {
              TWord::getCategoryTag(v31, &v77);
            }

            if (*(v88 + 16 * v29 + 8))
            {
              goto LABEL_103;
            }

            v34 = a1[45];
            v35 = TParam::getActiveConfigHandle((v34 + 1240));
            if (*(v34 + TParam::getValidConfig((v34 + 1240), v35) + 1392) == 1)
            {
              v36 = a1[44];
              if (*(&v97 + 1) >= v97)
              {
                if (v99)
                {
                  __s1[0] = 0;
                  TBuffer<char>::insert(&v96, *(&v97 + 1), __s1, 1uLL);
                  --*(&v97 + 1);
                }

                else if (v97)
                {
                  v96[v97 - 1] = 0;
                }
              }

              else
              {
                v96[*(&v97 + 1)] = 0;
              }

              if (SDWord_GetHandle(*v36, v96) == -1)
              {
                goto LABEL_103;
              }
            }

            v38 = a1[15];
            v37 = a1[16];
            if (*(&v82 + 1) >= v82)
            {
              if (v84)
              {
                *__s1 = 0;
                TBuffer<wchar_t>::insert(&v81, *(&v82 + 1), __s1, 1uLL);
                v39 = v81;
                --*(&v82 + 1);
              }

              else
              {
                v39 = v81;
                if (v82)
                {
                  v81[v82 - 1] = 0;
                }
              }
            }

            else
            {
              v39 = v81;
              v81[*(&v82 + 1)] = 0;
            }

            if (*(&v78 + 1) >= v78)
            {
              if (v80)
              {
                *__s1 = 0;
                TBuffer<wchar_t>::insert(&v77, *(&v78 + 1), __s1, 1uLL);
                v40 = v77;
                --*(&v78 + 1);
              }

              else
              {
                v40 = v77;
                if (v78)
                {
                  v77[v78 - 1] = 0;
                }
              }
            }

            else
            {
              v40 = v77;
              v77[*(&v78 + 1)] = 0;
            }

            if (v38 && v39 && (TRegExp::match(v38, v39, 0) & 1) != 0 || v37 && v40 && (TRegExp::match(v37, v40, 0) & 1) != 0)
            {
LABEL_103:
              v33 = 0;
            }

            else
            {
              v33 = 1;
            }

            v42 = a1[17];
            v41 = a1[18];
            if (*(&v82 + 1) >= v82)
            {
              if (v84)
              {
                *__s1 = 0;
                TBuffer<wchar_t>::insert(&v81, *(&v82 + 1), __s1, 1uLL);
                v43 = v81;
                --*(&v82 + 1);
              }

              else
              {
                v43 = v81;
                if (v82)
                {
                  v81[v82 - 1] = 0;
                }
              }
            }

            else
            {
              v43 = v81;
              v81[*(&v82 + 1)] = 0;
            }

            if (*(&v78 + 1) >= v78)
            {
              if (v80)
              {
                *__s1 = 0;
                TBuffer<wchar_t>::insert(&v77, *(&v78 + 1), __s1, 1uLL);
                v44 = v77;
                --*(&v78 + 1);
              }

              else
              {
                v44 = v77;
                if (v78)
                {
                  v77[v78 - 1] = 0;
                }
              }
            }

            else
            {
              v44 = v77;
              v77[*(&v78 + 1)] = 0;
            }

            v45 = (!v42 || !v43 || (TRegExp::match(v42, v43, 0) & 1) == 0) && (!v41 || !v44 || (TRegExp::match(v41, v44, 0) & 1) == 0);
            LOBYTE(v94.__first_) = v45;
            std::vector<BOOL>::push_back(v69, &v94);
            v47 = a1[19];
            v46 = a1[20];
            if (*(&v82 + 1) >= v82)
            {
              if (v84)
              {
                *__s1 = 0;
                TBuffer<wchar_t>::insert(&v81, *(&v82 + 1), __s1, 1uLL);
                v48 = v81;
                --*(&v82 + 1);
              }

              else
              {
                v48 = v81;
                if (v82)
                {
                  v81[v82 - 1] = 0;
                }
              }
            }

            else
            {
              v48 = v81;
              v81[*(&v82 + 1)] = 0;
            }

            if (*(&v78 + 1) >= v78)
            {
              if (v80)
              {
                *__s1 = 0;
                TBuffer<wchar_t>::insert(&v77, *(&v78 + 1), __s1, 1uLL);
                v49 = v77;
                --*(&v78 + 1);
              }

              else
              {
                v49 = v77;
                if (v78)
                {
                  v77[v78 - 1] = 0;
                }
              }
            }

            else
            {
              v49 = v77;
              v77[*(&v78 + 1)] = 0;
            }

            v50 = (!v47 || !v48 || (TRegExp::match(v47, v48, 0) & 1) == 0) && (!v46 || !v49 || (TRegExp::match(v46, v49, 0) & 1) == 0);
            LOBYTE(v94.__first_) = v50;
            std::vector<BOOL>::push_back(v68, &v94);
            v52 = a1[21];
            v51 = a1[22];
            if (*(&v82 + 1) >= v82)
            {
              if (v84)
              {
                *__s1 = 0;
                TBuffer<wchar_t>::insert(&v81, *(&v82 + 1), __s1, 1uLL);
                v53 = v81;
                --*(&v82 + 1);
              }

              else
              {
                v53 = v81;
                if (v82)
                {
                  v81[v82 - 1] = 0;
                }
              }
            }

            else
            {
              v53 = v81;
              v81[*(&v82 + 1)] = 0;
            }

            if (*(&v78 + 1) >= v78)
            {
              if (v80)
              {
                *__s1 = 0;
                TBuffer<wchar_t>::insert(&v77, *(&v78 + 1), __s1, 1uLL);
                v54 = v77;
                --*(&v78 + 1);
              }

              else
              {
                v54 = v77;
                if (v78)
                {
                  v77[v78 - 1] = 0;
                }
              }
            }

            else
            {
              v54 = v77;
              v77[*(&v78 + 1)] = 0;
            }

            v55 = (!v52 || !v53 || (TRegExp::match(v52, v53, 0) & 1) == 0) && (!v51 || !v54 || (TRegExp::match(v51, v54, 0) & 1) == 0);
            LOBYTE(v94.__first_) = v55;
            std::vector<BOOL>::push_back(v67, &v94);
          }

          else
          {
            *__s1 = 0;
            std::vector<unsigned long>::push_back[abi:ne200100](v71, __s1);
            __s1[0] = 0;
            std::vector<BOOL>::push_back(v69, __s1);
            __s1[0] = 0;
            std::vector<BOOL>::push_back(v68, __s1);
            __s1[0] = 0;
            std::vector<BOOL>::push_back(v67, __s1);
            v33 = 0;
          }

          v56 = v27;
          if (v27 < (v92 - v91) >> 4)
          {
            v56 = v27;
            v57 = v91 + 16 * v27;
            do
            {
              if (!*v57)
              {
                goto LABEL_171;
              }

              ++v56;
              v57 += 2;
            }

            while ((v92 - v91) >> 4 != v56);
            v56 = (v92 - v91) >> 4;
          }

LABEL_171:
          __s1[0] = v33 & v28 & (v56 == v27);
          std::vector<BOOL>::push_back(v70, __s1);
          v27 = v56 + 1;
          ++v29;
          v26 = v88;
          v28 = v33;
        }

        while (v29 < (v89 - v88) >> 4);
        v22 = *a3;
        v23 = a3[1];
      }

      if (v23 != v22)
      {
        v58 = 0;
        do
        {
          v59 = *(v22 + 8 * v58);
          if (v59)
          {
            MEMORY[0x26672B1B0](v59, 0x1060C408A10481FLL);
            v22 = *a3;
            v23 = a3[1];
          }

          ++v58;
        }

        while (v58 < (v23 - v22) >> 3);
      }

      std::vector<TItnRule *>::resize(a3, 0);
      v63 = 0;
      v64 = 0;
      v65 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v63, v72.__begin_, v72.__end_, v72.__end_ - v72.__begin_);
      *__s1 = 0;
      std::vector<int>::push_back[abi:ne200100](&v63, __s1);
      v60 = v63;
      if (a1[38] + 1 == (v64 - v63) >> 2)
      {
        v61 = v64 - (v63 + 4);
        if (v64 != v63 + 4)
        {
          memmove(v63, v63 + 4, v64 - (v63 + 4));
        }

        v64 = &v60[v61];
      }

      operator new();
    }

    if (v89 != v88)
    {
      v20 = 0;
      do
      {
        LOBYTE(v96) = 0;
        std::vector<BOOL>::push_back(v76, &v96);
        v96 = 0;
        std::vector<double>::push_back[abi:ne200100](&__p, &v96);
        ++v20;
      }

      while (v20 < (v89 - v88) >> 4);
    }
  }

  TCompounder::makeResult(a1, a5, &v88, &v91, &v85, v76, &__p);
  if (__p)
  {
    v74 = __p;
    operator delete(__p);
  }

  if (v76[0])
  {
    operator delete(v76[0]);
  }

  if (v80 == 1 && v77 != v79 && v77)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v84 == 1 && v81 != v83 && v81)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void sub_262811C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a49)
  {
    operator delete(a49);
  }

  if (a52)
  {
    operator delete(a52);
  }

  if (a55)
  {
    operator delete(a55);
  }

  if (LOBYTE(STACK[0xD40]) == 1 && STACK[0xC28] != a12 && STACK[0xC28] != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  if (a58)
  {
    operator delete(a58);
  }

  if (a61)
  {
    operator delete(a61);
  }

  if (a64)
  {
    operator delete(a64);
  }

  if (a67)
  {
    operator delete(a67);
  }

  if (a70)
  {
    operator delete(a70);
  }

  v72 = STACK[0x200];
  if (STACK[0x200])
  {
    STACK[0x208] = v72;
    operator delete(v72);
  }

  v73 = STACK[0x218];
  if (STACK[0x218])
  {
    STACK[0x220] = v73;
    operator delete(v73);
  }

  v74 = STACK[0x230];
  if (STACK[0x230])
  {
    STACK[0x238] = v74;
    operator delete(v74);
  }

  if (STACK[0x248])
  {
    operator delete(STACK[0x248]);
  }

  if (LOBYTE(STACK[0x678]) == 1)
  {
    v75 = STACK[0x260];
    if (STACK[0x260] != a13)
    {
      if (v75)
      {
        MEMORY[0x26672B1B0](v75, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0xA98]) == 1)
  {
    v76 = STACK[0x680];
    if (STACK[0x680] != a14)
    {
      if (v76)
      {
        MEMORY[0x26672B1B0](v76, 0x1000C4052888210);
      }
    }
  }

  v77 = STACK[0xAA0];
  if (STACK[0xAA0])
  {
    STACK[0xAA8] = v77;
    operator delete(v77);
  }

  v78 = STACK[0xAB8];
  if (STACK[0xAB8])
  {
    STACK[0xAC0] = v78;
    operator delete(v78);
  }

  v79 = STACK[0xAD0];
  if (STACK[0xAD0])
  {
    STACK[0xAD8] = v79;
    operator delete(v79);
  }

  _Unwind_Resume(a1);
}

void *std::vector<std::pair<TWord const*,unsigned long>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<TWord const*,unsigned long>>>(result, a2);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::vector<BOOL>::reserve(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:ne200100](&v2, a2);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_26281213C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<BOOL>::push_back(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = std::vector<BOOL>::reserve(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

void std::vector<double>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void std::vector<int>::reserve(std::vector<int> *this, std::vector<int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      v2 = this->__end_ - this->__begin_;
      std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(this, __n);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void TCompounder::applyInternal(void *a1, void *a2, unint64_t a3, unint64_t a4, uint64_t *a5, void *a6, uint64_t a7)
{
  v9 = a3;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v12 = a4 - a3;
  std::vector<std::pair<TWord const*,unsigned int>>::reserve(&v47, a4 - a3);
  v44 = 0;
  v45 = 0;
  v46 = 0;
  std::vector<std::pair<TWord const*,unsigned long>>::reserve(&v44, v12);
  v40 = v42;
  v41 = xmmword_26286B6F0;
  v43 = 1;
  v36 = v38;
  v37 = xmmword_26286B6F0;
  v39 = 1;
  if (a4 > v9)
  {
    do
    {
      std::vector<std::pair<TWord const*,unsigned int>>::push_back[abi:ne200100](&v47, (*a2 + 16 * v9));
      std::vector<std::pair<TWord const*,unsigned long>>::push_back[abi:ne200100](&v44, (*a6 + 16 * v9));
      v13 = *(*a2 + 16 * v9);
      if (v13)
      {
        if (a1[13])
        {
          TWord::getTokenName(*(*a2 + 16 * v9), &v40);
        }

        v14 = a1[14];
        if (v14)
        {
          TWord::getCategoryTag(v13, &v36);
          v14 = a1[14];
        }

        v15 = a1[13];
        if (*(&v41 + 1) >= v41)
        {
          if (v43)
          {
            v50[0] = 0;
            TBuffer<wchar_t>::insert(&v40, *(&v41 + 1), v50, 1uLL);
            v16 = v40;
            --*(&v41 + 1);
          }

          else
          {
            v16 = v40;
            if (v41)
            {
              v40[v41 - 1] = 0;
            }
          }
        }

        else
        {
          v16 = v40;
          v40[*(&v41 + 1)] = 0;
        }

        if (*(&v37 + 1) >= v37)
        {
          if (v39)
          {
            v50[0] = 0;
            TBuffer<wchar_t>::insert(&v36, *(&v37 + 1), v50, 1uLL);
            v17 = v36;
            --*(&v37 + 1);
          }

          else
          {
            v17 = v36;
            if (v37)
            {
              v36[v37 - 1] = 0;
            }
          }
        }

        else
        {
          v17 = v36;
          v36[*(&v37 + 1)] = 0;
        }

        if (v15 && v16 && (TRegExp::match(v15, v16, 0) & 1) != 0 || v14 && v17 && TRegExp::match(v14, v17, 0))
        {
          TCompounder::applyModelMBR(a1, &v47, a5, &v44, a7);
          v19 = *a5;
          v18 = a5[1];
          if ((v18 - *a5) >= 9)
          {
            v20 = 0;
            v21 = *(v18 - 8);
            do
            {
              v22 = *(v19 + 8 * v20);
              if (v22)
              {
                MEMORY[0x26672B1B0](v22, 0x1060C408A10481FLL);
                v19 = *a5;
                v18 = a5[1];
              }

              ++v20;
            }

            while (v20 < ((v18 - v19) >> 3) - 1);
            std::vector<TItnRule *>::resize(a5, 0);
            v24 = a5[1];
            v23 = a5[2];
            if (v24 >= v23)
            {
              v26 = (v24 - *a5) >> 3;
              if ((v26 + 1) >> 61)
              {
                std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
              }

              v27 = v23 - *a5;
              v28 = v27 >> 2;
              if (v27 >> 2 <= (v26 + 1))
              {
                v28 = v26 + 1;
              }

              if (v27 >= 0x7FFFFFFFFFFFFFF8)
              {
                v29 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v29 = v28;
              }

              if (v29)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<TParam *>>(a5, v29);
              }

              v30 = (8 * v26);
              *v30 = v21;
              v25 = 8 * v26 + 8;
              v31 = a5[1] - *a5;
              v32 = v30 - v31;
              memcpy(v30 - v31, *a5, v31);
              v33 = *a5;
              *a5 = v32;
              a5[1] = v25;
              a5[2] = 0;
              if (v33)
              {
                operator delete(v33);
              }
            }

            else
            {
              *v24 = v21;
              v25 = (v24 + 1);
            }

            a5[1] = v25;
          }

          std::vector<std::pair<TWord const*,unsigned int>>::resize(&v47, 0);
          std::vector<std::pair<TWord const*,unsigned long>>::resize(&v44, 0);
        }
      }

      ++v9;
    }

    while (v9 != a4);
  }

  if (v47 != v48)
  {
    TCompounder::applyModelMBR(a1, &v47, a5, &v44, a7);
  }

  if (v39 == 1 && v36 != v38 && v36)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v43 == 1 && v40 != v42 && v40)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }
}

void sub_262812868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (LOBYTE(STACK[0x438]) == 1 && a13 != a9 && a13 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0x858]) == 1)
  {
    v16 = STACK[0x440];
    if (STACK[0x440] != a10)
    {
      if (v16)
      {
        MEMORY[0x26672B1B0](v16, 0x1000C4052888210);
      }
    }
  }

  v17 = *(v13 - 144);
  if (v17)
  {
    *(v13 - 136) = v17;
    operator delete(v17);
  }

  v18 = *(v13 - 120);
  if (v18)
  {
    *(v13 - 112) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::pair<TWord const*,unsigned int>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<std::pair<TWord const*,unsigned int>>::__append(a1, a2 - v2);
  }
}

void std::vector<std::pair<TWord const*,unsigned long>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<std::pair<TWord const*,unsigned long>>::__append(a1, a2 - v2);
  }
}

void TCompounder::apply(uint64_t a1, uint64_t *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6)
{
  v35 = 0;
  v36 = 0;
  v37 = 0;
  __p = 0;
  v33 = 0;
  v34 = 0;
  std::vector<std::pair<TWord const*,unsigned long>>::reserve(&v35, (a2[1] - *a2) >> 3);
  std::vector<std::pair<TWord const*,unsigned int>>::reserve(&__p, (a2[1] - *a2) >> 3);
  v12 = *a2;
  if (a2[1] == *a2)
  {
    v14 = 0;
    v15 = a4;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = a4;
    do
    {
      if (v13 < a3 || v13 >= a4)
      {
        *&v31 = *(v12 + 8 * v13);
        DWORD2(v31) = 0;
        std::vector<std::pair<TWord const*,unsigned int>>::push_back[abi:ne200100](&__p, &v31);
        v31 = 0uLL;
        std::vector<std::pair<TWord const*,unsigned long>>::push_back[abi:ne200100](&v35, &v31);
      }

      else if ((*TWord::getOptionalTagBits(*(v12 + 8 * v13)) & 0x80) != 0)
      {
        if (a3 == (v36 - v35) >> 4)
        {
          ++v14;
        }

        else
        {
          v16 = v36;
          v17 = *(v36 - 1) + 1;
          *(v36 - 2) = *(*a2 + 8 * v13);
          *(v16 - 1) = v17;
        }

        --v15;
      }

      else
      {
        *&v31 = *(*a2 + 8 * v13);
        DWORD2(v31) = 0;
        std::vector<std::pair<TWord const*,unsigned int>>::push_back[abi:ne200100](&__p, &v31);
        v31 = 0uLL;
        std::vector<std::pair<TWord const*,unsigned long>>::push_back[abi:ne200100](&v35, &v31);
      }

      ++v13;
      v12 = *a2;
    }

    while (v13 < (a2[1] - *a2) >> 3);
  }

  TCompounder::apply(a1, &__p, a3, v15, a5, &v35, a6);
  v18 = *a6;
  v19 = a6[1];
  if (*a6 == v19)
  {
    if (v14)
    {
      *&v31 = 0;
      *(&v31 + 1) = v14;
      std::vector<std::pair<TWord const*,unsigned long>>::push_back[abi:ne200100](a6, &v31);
    }
  }

  else
  {
    v20 = 0;
    v21 = (v19 - v18) >> 4;
    if (v21 <= 1)
    {
      v21 = 1;
    }

    v22 = v35 + 8;
    do
    {
      v23 = v18 + 16 * v20;
      v26 = *(v23 + 8);
      v24 = (v23 + 8);
      v25 = v26;
      if (v26)
      {
        v27 = 0;
        v28 = &v22[16 * a3];
        v29 = v25;
        do
        {
          v30 = *v28;
          v28 += 16;
          v27 += v30;
          --v29;
        }

        while (v29);
        a3 += v25;
      }

      else
      {
        v27 = 0;
      }

      *v24 = v25 + v27;
      if (a3 >= v15)
      {
        break;
      }

      ++v20;
    }

    while (v20 != v21);
    *(v18 + 8) += v14;
  }

  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }
}

void sub_262812BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void TCompounder::apply(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v13 = *(a1 + 360);
  v14 = *(v13 + 136);
  *(v13 + 136) = a5;
  *(a1 + 56) = 0;
  TCompounder::applyInternal(a1, a2, 0, a3, &v29, a6, a7);
  v15 = *(a1 + 360);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v15 + 496));
  *(a1 + 56) = *(v15 + TParam::getValidConfig((v15 + 496), ActiveConfigHandle) + 648);
  std::vector<std::pair<TWord const*,unsigned long>>::resize(a7, 0);
  TCompounder::applyInternal(a1, a2, a3, a4, &v29, a6, a7);
  v17 = v29;
  v18 = v30;
  if (v30 != v29)
  {
    v19 = 0;
    do
    {
      if (v17[v19])
      {
        MEMORY[0x26672B1B0](v17[v19], 0x1060C408A10481FLL);
        v17 = v29;
        v18 = v30;
      }

      ++v19;
    }

    while (v19 < (v18 - v17) >> 3);
  }

  if (*(a1 + 56))
  {
    v20 = *(a1 + 360);
    v21 = (v20 + 512);
    if (*(v20 + 535) < 0)
    {
      v21 = *v21;
    }

    loggableUnicode(v21, __p);
    if (v28 >= 0)
    {
      v26 = __p;
    }

    else
    {
      v26 = __p[0];
    }

    tknPrintf("%s: UTT_BOUNDARY\n", v22, v23, v24, v25, v26);
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }

    v17 = v29;
  }

  *(v13 + 136) = v14;
  if (v17)
  {
    v30 = v17;
    operator delete(v17);
  }
}

void sub_262812DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  *(v18 + 136) = v19;
  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void TCompounder::apply(uint64_t a1, uint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 360);
  v79 = *(v5 + 136);
  *(v5 + 136) = a4;
  if (*(a3[32] + 8) != *(*(a1 + 16) + 8))
  {
    tknPrintf("Error: The lattice lexicon handle does not match the lattice processor's lexicon handle.\n", a2, a3, a4, a5);
    std::string::basic_string[abi:ne200100]<0>(v98, &byte_262899963);
    *v88 = byte_287529580;
    if (SHIBYTE(v99) < 0)
    {
      std::string::__init_copy_ctor_external(&v88[8], v98[0], v98[1]);
    }

    else
    {
      *&v88[8] = *v98;
      v89 = v99;
    }

    *v88 = &unk_287528000;
    if (v89 >= 0)
    {
      v75 = &v88[8];
    }

    else
    {
      v75 = *&v88[8];
    }

    conditionalAssert(v75, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/compounder/compounder.cpp", 2091, v73, v74);
    *v88 = byte_287529580;
    if (SHIBYTE(v89) < 0)
    {
      operator delete(*&v88[8]);
    }

    if (SHIBYTE(v99) < 0)
    {
      operator delete(v98[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v88, &byte_262899963);
    *exception = byte_287529580;
    v77 = (exception + 1);
    if ((v88[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v77, *v88, *&v88[8]);
    }

    else
    {
      v78 = *v88;
      exception[3] = *&v88[16];
      *&v77->__r_.__value_.__l.__data_ = v78;
    }

    *exception = &unk_287528000;
  }

  v7 = a3;
  v9 = a3[15];
  v87 = a3[8];
  v112 = 0;
  v113 = 0;
  v114 = 0;
  v10 = *a2;
  if (a2[1] == *a2)
  {
    v13 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      Word = TLexicon::findWord(*(a1 + 16), *(v10 + 8 * v11));
      if (!Word)
      {
        Word = TLexicon::addTempWord(*(a1 + 16), *(*a2 + 8 * v11), 0, 0, 0);
      }

      *v88 = Word;
      *&v88[8] = 0;
      std::vector<std::pair<TWord const*,unsigned int>>::push_back[abi:ne200100](&v112, v88);
      ++v11;
      v10 = *a2;
    }

    while (v11 < (a2[1] - *a2) >> 3);
    v13 = v113 - v112;
  }

  v109 = 0;
  v110 = 0;
  v111 = 0;
  TFsa::topologicalSort(v7 + 3, &v109);
  v15 = v109;
  v14 = v110;
  v16 = (v110 - v109) >> 3;
  v18 = v7[16];
  v17 = v7[17];
  v106 = 0;
  v107 = 0;
  v108 = 0;
  std::vector<unsigned long>::vector[abi:ne200100](&v105, v16 + 1);
  std::vector<TCompoundPath>::vector[abi:ne200100](&v104, (v14 - v15) >> 3);
  std::vector<unsigned long>::vector[abi:ne200100](&v103, (v14 - v15) >> 3);
  std::vector<std::pair<std::pair<TWord const*,unsigned int>,BOOL>>::vector[abi:ne200100](&v102, (v17 - v18) >> 3);
  v82 = v14 - v15;
  memset(&v101[3], 0, 24);
  *v88 = -1;
  std::vector<unsigned long>::vector[abi:ne200100](v101, (v14 - v15) >> 3);
  v80 = a4;
  v81 = v13;
  v100 = 0;
  TAllocator::TAllocator(v98, 2048);
  v86 = v9 + 1;
  v19 = v7;
  if (v14 != v15)
  {
    v20 = 0;
    if (v16 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = (v14 - v15) >> 3;
    }

    v84 = v21;
    while (1)
    {
      v22 = *(v109 + 8 * v20);
      *(v103 + 8 * *v22) = v20;
      *(v105 + 8 * v20) = (v107 - v106) >> 3;
      v23 = v22[2];
      if (v23)
      {
        break;
      }

LABEL_40:
      if (++v20 == v84)
      {
        goto LABEL_41;
      }
    }

    while (1)
    {
      v24 = *v23;
      if (**v23 != 2)
      {
        break;
      }

      v26 = v24[1];
      v25 = TLexicon::findWord(*(a1 + 16), v26);
      if (!v25)
      {
        v25 = TLexicon::addTempWord(*(a1 + 16), v26, 0, 0, 0);
      }

      if (v24[2])
      {
        goto LABEL_21;
      }

      v27 = *TWord::getOptionalTagBits(v25) >> 7;
LABEL_22:
      v28 = *(v23 + 8);
      v29 = *(v103 + 8 * **(v23 + 24));
      v30 = v104;
      v31 = *(v104 + 24 * v29 + 16);
      if (v31 == -1)
      {
        v31 = 0;
      }

      v32 = v31 + v24[5];
      v33 = *(v24 + 4);
      v34 = v102 + 24 * v28;
      *v34 = v25;
      *(v34 + 8) = v33;
      *(v34 + 16) = v27;
      v35 = (v30 + 24 * v20);
      if (v32 < v35[2])
      {
        *v35 = v29;
        v35[1] = v28;
        v35[2] = v32;
      }

      v36 = (v105 + 8 * v29);
      v38 = *v36;
      v37 = v36[1];
      v39 = *v36 == v37;
      if (*v36 < v37)
      {
        v39 = 0;
        do
        {
          v40 = *(v106 + 8 * v38);
          if (*(v40 + 16) == 1)
          {
            v41 = TAllocator::allocate(v98, 24);
            *(v41 + 17) = 0;
            *v41 = v40;
            *(v41 + 8) = v28;
            *(v41 + 16) = v27;
            *v88 = v41;
            std::vector<TItnRule *>::push_back[abi:ne200100](&v106, v88);
          }

          else if (v27)
          {
            v42 = TAllocator::allocate(v98, 24);
            *v42 = v40;
            *(v42 + 8) = v28;
            *(v42 + 16) = 0;
            *v88 = v42;
            std::vector<TItnRule *>::push_back[abi:ne200100](&v106, v88);
          }

          else
          {
            if (v86 != v87 && (*(v40 + 17) & 1) == 0)
            {
              createTransitionForProduction(v19, *(v106 + 8 * v38), &v102, v101, &v100);
            }

            v39 = 1;
          }

          ++v38;
        }

        while (v37 != v38);
      }

      if (v39)
      {
        v43 = TAllocator::allocate(v98, 24);
        *(v43 + 17) = 0;
        *v43 = 0;
        *(v43 + 8) = v28;
        *(v43 + 16) = v27;
        *v88 = v43;
        std::vector<TItnRule *>::push_back[abi:ne200100](&v106, v88);
      }

      v23 = *(v23 + 32);
      v7 = v19;
      if (!v23)
      {
        goto LABEL_40;
      }
    }

    v25 = 0;
LABEL_21:
    v27 = 0;
    goto LABEL_22;
  }

LABEL_41:
  *(v105 + v82) = (v107 - v106) >> 3;
  v45 = v7[25];
  v44 = v7[26];
  if (v45 != v44)
  {
    while (!*v45)
    {
      if (++v45 == v44)
      {
        goto LABEL_71;
      }
    }
  }

  if (v45 == v44)
  {
LABEL_71:
    v46 = 0;
    v57 = 0;
    v95 = 0;
    v96 = 0;
    v97 = 0;
  }

  else
  {
    v46 = 0;
    v47 = -1;
    v48 = -1;
    do
    {
      v49 = *(v103 + 8 * **v45);
      if (*(v104 + 24 * v49 + 16) < v48)
      {
        v46 = **(v109 + 8 * v49);
        v48 = *(v104 + 24 * v49 + 16);
        v47 = *(v103 + 8 * **v45);
      }

      if (v86 != v87)
      {
        v50 = (v105 + 8 * v49);
        v51 = *v50;
        v52 = v50[1];
        if (*v50 < v52)
        {
          do
          {
            v53 = *(v106 + 8 * v51);
            if ((*(v53 + 17) & 1) == 0 && (*(v53 + 16) & 1) == 0)
            {
              createTransitionForProduction(v19, v53, &v102, v101, &v100);
            }

            ++v51;
          }

          while (v52 != v51);
        }
      }

      v54 = v45 + 1;
      do
      {
        v45 = v54;
        if (v54 == v44)
        {
          break;
        }

        ++v54;
      }

      while (!*v45);
    }

    while (v45 != *(v19 + 208));
    v7 = v19;
    v95 = 0;
    v96 = 0;
    v97 = 0;
    if (v47 != -1)
    {
      v55 = (v104 + 24 * v47);
      v56 = v81;
      if (*v55 == -1)
      {
        v57 = **(v109 + 8 * v47);
      }

      else
      {
        do
        {
          std::vector<unsigned long>::push_back[abi:ne200100](&v95, v55 + 1);
          v47 = *(v104 + 24 * v47);
          v55 = (v104 + 24 * v47);
        }

        while (*v55 != -1);
        v57 = **(v109 + 8 * v47);
        v58 = v96 - 8;
        if (v95 != v96 && v58 > v95)
        {
          v60 = v95 + 8;
          do
          {
            v61 = *(v60 - 1);
            *(v60 - 1) = *v58;
            *v58 = v61;
            v58 -= 8;
            v62 = v60 >= v58;
            v60 += 8;
          }

          while (!v62);
        }
      }

LABEL_74:
      *v88 = 0;
      *&v88[8] = 0;
      std::vector<std::pair<TWord const*,unsigned long>>::vector[abi:ne200100](&v93, v56 >> 4);
      v64 = v95;
      v63 = v96;
      if (v96 != v95)
      {
        v65 = 0;
        do
        {
          v66 = v102 + 24 * *&v64[8 * v65];
          if (*(v66 + 16) == 1)
          {
            if (v94 - v93 > v56)
            {
              v67 = v94;
              v68 = *(v94 - 8) + 1;
              *(v94 - 16) = *v66;
              *(v67 - 8) = v68;
            }
          }

          else
          {
            std::vector<std::pair<TWord const*,unsigned int>>::push_back[abi:ne200100](&v112, v66);
            *v88 = 0;
            *&v88[8] = 0;
            std::vector<std::pair<TWord const*,unsigned long>>::push_back[abi:ne200100](&v93, v88);
            v64 = v95;
            v63 = v96;
          }

          ++v65;
        }

        while (v65 < (v63 - v64) >> 3);
      }

      __p = 0;
      v91 = 0;
      v92 = 0;
      TCompounder::apply(a1, &v112, v56 >> 4, (v113 - v112) >> 4, v80, &v93, &__p);
      if (v91 == __p)
      {
        v69 = v100;
        if (v100 <= 1)
        {
          v69 = 1;
        }
      }

      else
      {
        if (v86 != v87 && (v91 - __p) >> 4 >= (((v113 - v112) >> 4) - (v56 >> 4)))
        {
LABEL_97:
          operator new();
        }

        if (v86 != v87)
        {
          v70 = *(v101[0] + v57);
          v83 = *(v101[0] + v46);
        }

        if (v96 != v95)
        {
          v71 = **(v7[16] + 8 * *v95);
          operator new();
        }

        if (v86 == v87)
        {
          v72 = v100 + 1;
        }

        else
        {
          v72 = v100 - 1;
        }

        v69 = v72 + ((v91 - __p) >> 4);
      }

      v100 = v69;
      goto LABEL_97;
    }

    v57 = 0;
  }

  v56 = v81;
  goto LABEL_74;
}

void sub_262813AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, void *a22, int a23, __int16 a24, char a25, char a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if ((v63 & 1) == 0)
    {
LABEL_6:
      *(a13 + 136) = a12;
      _Unwind_Resume(a1);
    }
  }

  else if (!v63)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v62);
  goto LABEL_6;
}

void createTransitionForProduction(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void *a5)
{
  v5 = a4;
  *(a2 + 17) = 1;
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(*(a1 + 128) + 8 * v6);
  v9 = *v8[3];
  v10 = *v8[2];
  v11 = *v8;
  v36 = *(v11 + 4);
  v12 = v11[3];
  v37 = *v11;
  v38 = v11[4];
  v13 = v11[5];
  v14 = *(v11 + 4);
  v39[0] = *(v11 + 3);
  v39[1] = v14;
  v15 = *(v11 + 8);
  v16 = *(v11 + 5);
  v17 = *(v11 + 6);
  v39[4] = *(v11 + 7);
  v39[5] = v15;
  v39[2] = v16;
  v39[3] = v17;
  v18 = *(*a3 + 24 * v6);
  v19 = v11[1];
  if (v7)
  {
    v33 = v10;
    v34 = a5;
    do
    {
      v22 = v7[1];
      v23 = *(*(a1 + 128) + 8 * v22);
      v24 = *v23;
      v25 = *a3 + 24 * v22;
      if ((*(v25 + 16) & 1) == 0)
      {
        v26 = *v25;
        v27 = v24[1];
      }

      v9 = *v23[3];
      v28 = v24[3];
      v29 = v24[5];
      if (*(a1 + 248) == 1)
      {
        TLatticeProcessor::combineMrecData(v39, (v24 + 6), 0);
      }

      v13 += v29;
      v7 = *v7;
    }

    while (v7);
    a5 = v34;
    v5 = a4;
    v10 = v33;
  }

  v30 = *v5;
  if (*(*v5 + 8 * v9) == -1)
  {
    v31 = *a5;
    *(v30 + 8 * v9) = *a5;
    *a5 = v31 + 1;
  }

  if (*(v30 + 8 * v10) == -1)
  {
    v32 = *a5;
    *(v30 + 8 * v10) = *a5;
    *a5 = v32 + 1;
  }

  operator new();
}

uint64_t TCompounder::takesFugenS(uint64_t a1, __int32 *a2, _DWORD *a3)
{
  if (*a3 != 83 || a3[8] == 50 || a3[7] == 71)
  {
    return 0;
  }

  v8 = wcslen(a2);
  std::wstring::basic_string[abi:ne200100]<0>(__p, a2);
  if ((v29 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if ((v29 & 0x80u) == 0)
  {
    v10 = v29;
  }

  else
  {
    v10 = __p[1];
  }

  v11 = v9 + 4 * v10 - 4;
  if (v10)
  {
    v12 = v11 > v9;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = v9 + 4;
    do
    {
      v14 = *(v13 - 1);
      *(v13 - 1) = *v11;
      *v11 = v14;
      v11 -= 4;
      v15 = v13 >= v11;
      v13 += 4;
    }

    while (!v15);
  }

  if (v8 < 4 || wcschr(dword_262891130, a2[v8 - 1]) || !wcscmp(a2, dword_262891140) || !wcscmp(a2, dword_26289115C))
  {
    goto LABEL_22;
  }

  v16 = (v29 & 0x80u) == 0 ? __p : __p[0];
  if (!wcsncasecmp(v16, dword_26289117C, 2uLL))
  {
    goto LABEL_22;
  }

  v17 = (v29 & 0x80u) == 0 ? __p : __p[0];
  if (!wcsncasecmp(v17, dword_262891188, 3uLL))
  {
    goto LABEL_22;
  }

  v18 = v29;
  if (v29 < 0)
  {
    v19 = __p[0];
    if (!wcsncmp(__p[0], dword_262891198, 3uLL))
    {
      goto LABEL_22;
    }

    v20 = v19;
  }

  else
  {
    if (!wcsncmp(__p, dword_262891198, 3uLL))
    {
      return 0;
    }

    v19 = __p;
    v20 = __p;
  }

  if (!wcsncmp(v20, dword_2628911A8, 3uLL) || !wcsncmp(v19, dword_2628911B8, 3uLL))
  {
    goto LABEL_22;
  }

  v21 = *(a1 + 320);
  if (v21)
  {
    if (v18 >= 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = __p[0];
    }

    v23 = *(a1 + 328);
    do
    {
      v24 = *(v23 + 23);
      if ((v24 & 0x8000000000000000) != 0)
      {
        v25 = *v23;
        v24 = *(v23 + 8);
      }

      else
      {
        v25 = v23;
      }

      if (!wcsncmp(v22, v25, v24))
      {
        goto LABEL_61;
      }

      v23 += 24;
    }

    while (--v21);
  }

  if (v8 == 4)
  {
    goto LABEL_22;
  }

  if (wcsncasecmp(a2, dword_2628911C8, 2uLL))
  {
    goto LABEL_22;
  }

  v26 = a3[7];
  if (v26 != 66 && (v26 != 76 || a3[4] != 70))
  {
    goto LABEL_22;
  }

  v27 = __p;
  if ((v29 & 0x80u) != 0)
  {
    v27 = __p[0];
  }

  if (*v27 == 101 || wcschr(dword_2628911D4, a2[2]))
  {
LABEL_22:
    v4 = 0;
    goto LABEL_23;
  }

LABEL_61:
  v4 = 1;
LABEL_23:
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}