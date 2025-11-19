uint64_t PrefiltererWordIdPronCollArray::mergeLargeSortedArray(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 2);
  v39 = 0;
  v40 = 0;
  DgnPrimArray<int>::copyArraySlice(&v39, a1, 0, v4);
  v6 = *(a2 + 2);
  if ((v40 + v6) > HIDWORD(v40))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v39, (v40 + v6 - HIDWORD(v40)), 1);
    v6 = *(a2 + 2);
  }

  v7 = v5 + v4;
  if (v6)
  {
    v8 = 0;
    v9 = *a2;
    v10 = v39;
    do
    {
      v10[(v8 + v40)] = *(v9 + 4 * v8);
      ++v8;
      v11 = *(a2 + 2);
    }

    while (v8 < v11);
  }

  else
  {
    LODWORD(v11) = 0;
  }

  LODWORD(v40) = v40 + v11;
  v12 = *(a1 + 12);
  if (v7 > v12)
  {
    DgnPrimArray<unsigned int>::reallocElts(a1, v7 - v12, 0);
  }

  *(a1 + 8) = v7;
  v13 = v39;
  v14 = &v39[v4];
  v15 = &v39[v7];
  v16 = *a1;
  v17 = *(a1 + 16);
  if (*(v17 + 292) || *(v17 + 296))
  {
    if (v4 && v4 < v7)
    {
      v18 = &v39[v4];
      do
      {
        v19 = *v13;
        v20 = *v18;
        v21 = PrefPicModelIdPronCmp(*v13, *v18, *(a1 + 16));
        v22 = v19 - v20;
        if (v21)
        {
          v22 = v21;
        }

        v23 = v22 < 1;
        v24 = v22 <= 0;
        v25 = v22 > 0;
        if (v24)
        {
          v26 = v13;
        }

        else
        {
          v26 = v18;
        }

        v13 += v23;
        v18 += v25;
        *v16++ = *v26;
      }

      while (v13 < v14 && v18 < v15);
      goto LABEL_42;
    }

LABEL_40:
    v18 = &v39[v4];
    goto LABEL_42;
  }

  if (!v4 || v4 >= v7)
  {
    goto LABEL_40;
  }

  v18 = &v39[v4];
  do
  {
    v28 = *v13;
    v29 = *v18;
    v30 = PrefPronCmp(*v13, *v18, *(a1 + 16));
    v31 = v28 - v29;
    if (v30)
    {
      v31 = -v30;
    }

    v32 = v31 < 1;
    v24 = v31 <= 0;
    v33 = v31 > 0;
    if (v24)
    {
      v34 = v13;
    }

    else
    {
      v34 = v18;
    }

    v13 += v32;
    v18 += v33;
    *v16++ = *v34;
  }

  while (v13 < v14 && v18 < v15);
LABEL_42:
  while (v13 < v14)
  {
    v36 = *v13++;
    *v16++ = v36;
  }

  while (v18 < v15)
  {
    v37 = *v18++;
    *v16++ = v37;
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v39);
}

uint64_t PrefiltererWordIdPronCollArray::mergeSmallSortedArray(unsigned int *a1, uint64_t *a2)
{
  v4 = a1[2];
  v5 = *(a2 + 2);
  v19 = 0;
  v20 = 0;
  if (v5 + v4)
  {
    v21 = 0;
    HIDWORD(v20) = realloc_array(0, &v21, 4 * (v5 + v4), 0, 0, 1) >> 2;
    v6 = v21;
    v19 = v21;
  }

  else
  {
    v6 = 0;
  }

  LODWORD(v20) = v5 + v4;
  v7 = *a1;
  if (v5)
  {
    v8 = 0;
    v9 = 0;
    v10 = *a2;
    do
    {
      InsertIndex = PrefiltererWordIdPronCollArray::getInsertIndex(a1, *(v10 + 4 * v8), v9);
      if (v9 < InsertIndex)
      {
        v12 = (v7 + 4 * v9);
        v13 = InsertIndex - v9;
        do
        {
          v14 = *v12++;
          *v6++ = v14;
          --v13;
        }

        while (v13);
      }

      *v6++ = *(v10 + 4 * v8++);
      v9 = InsertIndex;
    }

    while (v8 != v5);
  }

  else
  {
    LODWORD(InsertIndex) = 0;
  }

  if (InsertIndex < v4)
  {
    v15 = (v7 + 4 * InsertIndex);
    v16 = v4 - InsertIndex;
    do
    {
      v17 = *v15++;
      *v6++ = v17;
      --v16;
    }

    while (v16);
  }

  if (*a1)
  {
    MemChunkFree(*a1, 0);
    *a1 = 0;
  }

  *a1 = v19;
  *(a1 + 1) = v20;
  v19 = 0;
  v20 = 0;
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v19);
}

void sub_2626C9848(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t PrefiltererWordIdPronCollArray::removeSortedArray(uint64_t a1, int **a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 2);
  v6 = *(a1 + 16);
  v18 = **a2;
  v19 = v6;
  if (*(v6 + 292) || (v7 = PrefWordIdPronSearchCmpFunc, *(v6 + 296)))
  {
    v7 = PrefWordIdPicModelIdPronSearchCmpFunc;
  }

  v8 = v4 - v5;
  Equal = DgnPrimArray<unsigned int>::searchFirstEqual(a1, 0, v4, &v18, v7);
  v17[0] = 0;
  v17[1] = 0;
  DgnPrimArray<int>::copyArraySlice(v17, a1, 0, *(a1 + 8));
  if (Equal < v4)
  {
    v10 = 0;
    v11 = v17[0] + 4 * v4;
    v12 = (v17[0] + 4 * Equal);
    v13 = (*a1 + 4 * Equal);
    v14 = *a2;
    do
    {
      if (*v12 == v14[v10])
      {
        if ((v10 + 1) < *(a2 + 2))
        {
          ++v10;
        }
      }

      else
      {
        *v13++ = *v12;
      }

      ++v12;
    }

    while (v12 < v11);
  }

  v15 = *(a1 + 12);
  if (v8 > v15)
  {
    DgnPrimArray<unsigned int>::reallocElts(a1, v8 - v15, 0);
  }

  *(a1 + 8) = v8;
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v17);
}

unsigned int *PrefiltererWordIdPronCollArray::addArray(unsigned int *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v4 = result;
    v5 = result[3];
    v6 = result[2] + v2;
    if (v6 > v5)
    {
      DgnPrimArray<unsigned int>::reallocElts(result, v6 - v5, 0);
      v2 = *(a2 + 8);
    }

    v9[0] = 0;
    v9[1] = 0;
    DgnPrimArray<int>::copyArraySlice(v9, a2, 0, v2);
    PrefiltererWordIdPronCollArray::sortArray(v4, v9);
    v7 = v4[2];
    if (v7 && (v8 = *(a2 + 8), onePlusHighestSet32(v7) * v8 <= v4[2]))
    {
      PrefiltererWordIdPronCollArray::mergeSmallSortedArray(v4, v9);
    }

    else
    {
      PrefiltererWordIdPronCollArray::mergeLargeSortedArray(v4, v9);
    }

    return DgnPrimArray<unsigned int>::~DgnPrimArray(v9);
  }

  return result;
}

uint64_t PrefiltererWordIdPronCollArray::removeArray(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v3 = result;
    v4[0] = 0;
    v4[1] = 0;
    DgnPrimArray<int>::copyArraySlice(v4, a2, 0, v2);
    PrefiltererWordIdPronCollArray::sortArray(v3, v4);
    PrefiltererWordIdPronCollArray::removeSortedArray(v3, v4);
    return DgnPrimArray<unsigned int>::~DgnPrimArray(v4);
  }

  return result;
}

uint64_t PrefiltererWordIdPronCollArray::sizeObject(uint64_t a1, int a2)
{
  v3 = sizeObject<unsigned int>(a1, a2);
  v4 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v4 = 4;
  }

  if (a2 == 3)
  {
    v4 = 0;
  }

  return v4 + v3;
}

void TRegExpCompiler::TRegExpCompiler(TRegExpCompiler *this, const TLocaleInfo *a2)
{
  *this = &unk_287527718;
  v4 = (this + 232);
  TFsa::TFsa((this + 8));
  TAllocator::TAllocator(v4, 2048);
  *(this + 34) = a2;
  v5 = TFsa::newState((this + 8), 0);
  TFsa::addExtremity(this + 8, v5, 0);
}

void TRegExpCompiler::~TRegExpCompiler(TRegExpCompiler *this)
{
  *this = &unk_287527718;
  TAllocator::clear((this + 232));
  TFsa::~TFsa((this + 8));
}

{
  TRegExpCompiler::~TRegExpCompiler(this);

  JUMPOUT(0x26672B1B0);
}

void *TRegExpCompiler::mergeStateData(uint64_t a1, void *a2)
{
  v3 = a2 + 1;
  v2 = *a2;
  if (*a2 == a2 + 1)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = v2[4];
    if (v6)
    {
      v5 += *v6;
    }

    v7 = v2[1];
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
        v8 = v2[2];
        v9 = *v8 == v2;
        v2 = v8;
      }

      while (!v9);
    }

    v2 = v8;
  }

  while (v8 != v3);
  if (!v5)
  {
    return 0;
  }

  if ((v5 + 1) >> 61)
  {
    v10 = -1;
  }

  else
  {
    v10 = 8 * (v5 + 1);
  }

  result = TAllocator::allocate((a1 + 232), v10);
  *result = v5;
  v12 = *a2;
  if (*a2 != v3)
  {
    v13 = 1;
    do
    {
      v14 = v12[4];
      if (v14 && *v14)
      {
        v15 = 0;
        v16 = v13;
        do
        {
          v13 = v16 + 1;
          result[v16++] = v14[++v15];
        }

        while (v15 < *v14);
      }

      v17 = v12[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v12[2];
          v9 = *v18 == v12;
          v12 = v18;
        }

        while (!v9);
      }

      v12 = v18;
    }

    while (v18 != v3);
  }

  return result;
}

void *TRegExpCompiler::compileCharacter(uint64_t a1, unsigned int **a2, int a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  v11 = **a2;
  if (v11 != 92)
  {
    v18 = *(a1 + 272);
    if (a3 == 2)
    {
      v20 = *(v18 + 32);
      if (v20 && v11 < 0x10000)
      {
        LODWORD(v11) = *(v20 + 4 * v11);
      }
    }

    else if (a3 == 1)
    {
      LODWORD(v11) = TLocaleInfo::toLower(v18, v11);
    }

    v21 = v11;
    v22 = v11 == 0;
    goto LABEL_19;
  }

  v13 = v10[1];
  v12 = v13;
  *a2 = v10 + 1;
  if (!v13)
  {
    std::string::basic_string[abi:ne200100]<0>(v32, "search pattern not terminated");
    *__p = &unk_287529580;
    if (SHIBYTE(v33) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], v32[0], v32[1]);
    }

    else
    {
      *&__p[8] = *v32;
      v35 = v33;
    }

    *__p = &unk_287527330;
    if (v35 >= 0)
    {
      v28 = &__p[8];
    }

    else
    {
      v28 = *&__p[8];
    }

    conditionalAssert(v28, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/regexp.cpp", 336, v26, v27);
    *__p = &unk_287529580;
    if (SHIBYTE(v35) < 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, "search pattern not terminated");
    *exception = &unk_287529580;
    v30 = (exception + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v30, *__p, *&__p[8]);
    }

    else
    {
      v31 = *__p;
      exception[3] = *&__p[16];
      *&v30->__r_.__value_.__l.__data_ = v31;
    }

    *exception = &unk_287527330;
  }

  if (wcschr("a", v12))
  {
    v14 = TFsa::newState((a1 + 8), 0);
    TFsa::newTrans((a1 + 8), a4, v14, 0xFFFFLL);
    if (**a2)
    {
      v15 = **a2;
    }

    else
    {
      v15 = -1;
    }

    v16 = (a1 + 8);
    v17 = v14;
LABEL_23:
    v19 = a5;
    goto LABEL_24;
  }

  if (v12 == 116)
  {
    v16 = (a1 + 8);
    v17 = a4;
    v19 = a5;
    v15 = 9;
    goto LABEL_24;
  }

  if (v12 == 114)
  {
    v16 = (a1 + 8);
    v17 = a4;
    v19 = a5;
    v15 = 13;
    goto LABEL_24;
  }

  if (v12 != 110)
  {
    v24 = *(a1 + 272);
    if (a3 == 2)
    {
      v25 = *(v24 + 32);
      if (v25 && v12 < 0x10000)
      {
        LODWORD(v12) = *(v25 + 4 * v12);
      }
    }

    else if (a3 == 1)
    {
      LODWORD(v12) = TLocaleInfo::toLower(v24, v12);
    }

    v21 = v12;
    v22 = v12 == 0;
LABEL_19:
    if (v22)
    {
      v15 = -1;
    }

    else
    {
      v15 = v21;
    }

    v16 = (a1 + 8);
    v17 = a4;
    goto LABEL_23;
  }

  v16 = (a1 + 8);
  v17 = a4;
  v19 = a5;
  v15 = 10;
LABEL_24:
  result = TFsa::newTrans(v16, v17, v19, v15);
  ++*a2;
  return result;
}

void sub_2626CA0FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, void *a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v25);
  goto LABEL_6;
}

void *TRegExpCompiler::compileRange(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v10 = a2;
  v12 = *(a1 + 272);
  if (a4 == 2)
  {
    v15 = *(v12 + 32);
    v13 = a2;
    v14 = a3;
    if (v15)
    {
      v13 = a2;
      if (a2 < 0x10000)
      {
        v13 = *(v15 + 4 * a2);
      }

      if (a3 >= 0x10000)
      {
        v14 = a3;
      }

      else
      {
        v14 = *(v15 + 4 * a3);
      }
    }
  }

  else
  {
    v13 = a2;
    v14 = a3;
    if (a4 == 1)
    {
      v13 = TLocaleInfo::toLower(v12, a2);
      v14 = TLocaleInfo::toLower(*(a1 + 272), v9);
    }
  }

  if (v13 > v14)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v42);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "invalid [", 9);
    v29 = MEMORY[0x26672B060](v28, v10);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ",", 1);
    v31 = MEMORY[0x26672B060](v30, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "] range", 7);
    std::stringbuf::str();
    if (SHIBYTE(v39) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], v38[0], v38[1]);
    }

    else
    {
      *&__p[8] = *v38;
      v41 = v39;
    }

    if (v41 >= 0)
    {
      v34 = &__p[8];
    }

    else
    {
      v34 = *&__p[8];
    }

    conditionalAssert(v34, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/regexp.cpp", 386, v32, v33);
    *__p = byte_287529580;
    if (SHIBYTE(v41) < 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v39) < 0)
    {
      operator delete(v38[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::stringbuf::str();
    *exception = byte_287529580;
    v36 = (exception + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v36, byte_287529580, *&__p[8]);
    }

    else
    {
      v37 = *__p;
      exception[3] = *&__p[16];
      *&v36->__r_.__value_.__l.__data_ = v37;
    }

    *exception = &unk_287527330;
  }

  v16 = TFsa::newState((a1 + 8), 0);
  TFsa::newTrans((a1 + 8), a5, v16, 0xFFFFLL);
  v17 = TFsa::newState((a1 + 8), 0);
  TFsa::newTrans((a1 + 8), v16, v17, 114);
  v18 = TFsa::newState((a1 + 8), 0);
  v19 = *(a1 + 272);
  if (a4 == 2)
  {
    v22 = *(v19 + 32);
    if (v22 && v10 < 0x10000)
    {
      LODWORD(v10) = *(v22 + 4 * v10);
    }

    if (v10)
    {
      v23 = v10;
    }

    else
    {
      v23 = -1;
    }

    TFsa::newTrans((a1 + 8), v17, v18, v23);
    v24 = *(*(a1 + 272) + 32);
    if (v24 && v9 < 0x10000)
    {
      LODWORD(v9) = *(v24 + 4 * v9);
    }
  }

  else if (a4 == 1)
  {
    v20 = TLocaleInfo::toLower(v19, v10);
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = -1;
    }

    TFsa::newTrans((a1 + 8), v17, v18, v21);
    LODWORD(v9) = TLocaleInfo::toLower(*(a1 + 272), v9);
  }

  else
  {
    if (v10)
    {
      v25 = v10;
    }

    else
    {
      v25 = -1;
    }

    TFsa::newTrans((a1 + 8), v17, v18, v25);
  }

  if (v9)
  {
    v26 = v9;
  }

  else
  {
    v26 = -1;
  }

  return TFsa::newTrans((a1 + 8), v18, a6, v26);
}

void sub_2626CA540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, void *a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a25);
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v25);
  goto LABEL_6;
}

void *TRegExpCompiler::compileNegatedSet(uint64_t a1, unsigned int **a2, int a3, uint64_t a4, uint64_t a5)
{
  v10 = TFsa::newState((a1 + 8), 0);
  TFsa::newTrans((a1 + 8), a4, v10, 0xFFFFLL);
  v11 = TFsa::newState((a1 + 8), 0);
  TFsa::newTrans((a1 + 8), v10, v11, 110);
  v12 = TFsa::newState((a1 + 8), 0);
  TFsa::newTrans((a1 + 8), v12, a5, 110);
  v13 = TFsa::newState((a1 + 8), 0);
  TFsa::newTrans((a1 + 8), v13, v12, 0xFFFFLL);
  v14 = *a2;
  v15 = *a2;
  while (*v15 != 93)
  {
    if (!*v15)
    {
      goto LABEL_10;
    }

LABEL_6:
    v16 = TFsa::newState((a1 + 8), 0);
    v17 = *a2;
    if ((*a2)[1] == 45 && (v18 = v17[2], v18 != 93))
    {
      TRegExpCompiler::compileRange(a1, *v17, v18, a3, v11, v16);
      v15 = *a2 + 3;
      *a2 = v15;
      v11 = v16;
    }

    else
    {
      TRegExpCompiler::compileCharacter(a1, a2, a3, v11, v16);
      v15 = *a2;
      v11 = v16;
    }
  }

  if (v15 == v14)
  {
    goto LABEL_6;
  }

LABEL_10:

  return TFsa::newTrans((a1 + 8), v11, v13, -1);
}

void *TRegExpCompiler::compileSet(void *result, unsigned int **a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = result;
  v10 = *a2;
  v11 = *a2;
  while (1)
  {
    v12 = *v11;
    if (v12 == 93)
    {
      break;
    }

    if (!v12)
    {
      return result;
    }

LABEL_6:
    if (v11[1] == 45 && (v13 = v11[2], v13 != 93))
    {
      result = TRegExpCompiler::compileRange(v9, v12, v13, a3, a4, a5);
      v11 = *a2 + 3;
      *a2 = v11;
    }

    else
    {
      result = TRegExpCompiler::compileCharacter(v9, a2, a3, a4, a5);
      v11 = *a2;
    }
  }

  if (v11 == v10)
  {
    goto LABEL_6;
  }

  return result;
}

void *TRegExpCompiler::compile(void *a1, __int32 **a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  v9 = **a2;
  if (wcschr("*", v9))
  {
    std::string::basic_string[abi:ne200100]<0>(&v66, "*+?{ follows nothing");
    *__p = byte_287529580;
    if (SHIBYTE(v67) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], v66, *(&v66 + 1));
    }

    else
    {
      *&__p[8] = v66;
      v63[0] = v67;
    }

    *__p = &unk_287527330;
    if (v63[0] >= 0)
    {
      v52 = &__p[8];
    }

    else
    {
      v52 = *&__p[8];
    }

    conditionalAssert(v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/regexp.cpp", 468, v50, v51);
    *__p = byte_287529580;
    if (SHIBYTE(v63[0]) < 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v67) < 0)
    {
      operator delete(v66);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, "*+?{ follows nothing");
    *exception = byte_287529580;
    v54 = (exception + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v54, *__p, *&__p[8]);
    }

    else
    {
      v58 = *__p;
      exception[3] = *&__p[16];
      *&v54->__r_.__value_.__l.__data_ = v58;
    }

    *exception = &unk_287527330;
  }

  for (i = a4; v9; a4 = v11)
  {
    if (v9 == 41)
    {
      return TFsa::newTrans((a1 + 1), a4, a5, -1);
    }

    v10 = TFsa::newState((a1 + 1), 0);
    TFsa::newTrans((a1 + 1), a4, v10, -1);
    v11 = TFsa::newState((a1 + 1), 0);
    v12 = *a2;
    v13 = **a2;
    if (v13 == 91)
    {
      v15 = v12[1];
      *a2 = v12 + 1;
      if (v15 == 94)
      {
        *a2 = v12 + 2;
        TRegExpCompiler::compileNegatedSet(a1, a2, a3, v10, v11);
      }

      else
      {
        TRegExpCompiler::compileSet(a1, a2, a3, v10, v11);
      }

      v14 = *a2;
      if (**a2 != 93)
      {
        std::string::basic_string[abi:ne200100]<0>(&v66, "unmatched []");
        *__p = byte_287529580;
        if (SHIBYTE(v67) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[8], v66, *(&v66 + 1));
        }

        else
        {
          *&__p[8] = v66;
          v63[0] = v67;
        }

        *__p = &unk_287527330;
        if (v63[0] >= 0)
        {
          v47 = &__p[8];
        }

        else
        {
          v47 = *&__p[8];
        }

        conditionalAssert(v47, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/regexp.cpp", 509, v39, v40);
        *__p = byte_287529580;
        if (SHIBYTE(v63[0]) < 0)
        {
          operator delete(*&__p[8]);
        }

        if (SHIBYTE(v67) < 0)
        {
          operator delete(v66);
        }

        v48 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, "unmatched []");
        *v48 = byte_287529580;
        v49 = (v48 + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v49, *__p, *&__p[8]);
        }

        else
        {
          v57 = *__p;
          v48[3] = *&__p[16];
          *&v49->__r_.__value_.__l.__data_ = v57;
        }

        *v48 = &unk_287527330;
      }
    }

    else if (v13 == 40)
    {
      *a2 = v12 + 1;
      TRegExpCompiler::compile(a1, a2, a3, v10, v11);
      v14 = *a2;
      if (**a2 != 41)
      {
        std::string::basic_string[abi:ne200100]<0>(&v66, "unmatched ()");
        *__p = byte_287529580;
        if (SHIBYTE(v67) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[8], v66, *(&v66 + 1));
        }

        else
        {
          *&__p[8] = v66;
          v63[0] = v67;
        }

        *__p = &unk_287527330;
        if (v63[0] >= 0)
        {
          v44 = &__p[8];
        }

        else
        {
          v44 = *&__p[8];
        }

        conditionalAssert(v44, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/regexp.cpp", 489, v37, v38);
        *__p = byte_287529580;
        if (SHIBYTE(v63[0]) < 0)
        {
          operator delete(*&__p[8]);
        }

        if (SHIBYTE(v67) < 0)
        {
          operator delete(v66);
        }

        v45 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, "unmatched ()");
        *v45 = byte_287529580;
        v46 = (v45 + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v46, *__p, *&__p[8]);
        }

        else
        {
          v56 = *__p;
          v45[3] = *&__p[16];
          *&v46->__r_.__value_.__l.__data_ = v56;
        }

        *v45 = &unk_287527330;
      }
    }

    else
    {
      if (wcschr("*", **a2))
      {
        std::string::basic_string[abi:ne200100]<0>(&v66, "nested *+?{");
        *__p = byte_287529580;
        if (SHIBYTE(v67) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[8], v66, *(&v66 + 1));
        }

        else
        {
          *&__p[8] = v66;
          v63[0] = v67;
        }

        *__p = &unk_287527330;
        if (v63[0] >= 0)
        {
          v41 = &__p[8];
        }

        else
        {
          v41 = *&__p[8];
        }

        conditionalAssert(v41, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/regexp.cpp", 516, v35, v36);
        *__p = byte_287529580;
        if (SHIBYTE(v63[0]) < 0)
        {
          operator delete(*&__p[8]);
        }

        if (SHIBYTE(v67) < 0)
        {
          operator delete(v66);
        }

        v42 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, "nested *+?{");
        *v42 = byte_287529580;
        v43 = (v42 + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v43, *__p, *&__p[8]);
        }

        else
        {
          v55 = *__p;
          v42[3] = *&__p[16];
          *&v43->__r_.__value_.__l.__data_ = v55;
        }

        *v42 = &unk_287527330;
      }

      if (v13 == 124)
      {
        TFsa::newTrans((a1 + 1), a4, a5, -1);
        v11 = TFsa::newState((a1 + 1), 0);
        TFsa::newTrans((a1 + 1), i, v11, -1);
        ++*a2;
        goto LABEL_61;
      }

      if (!wcschr("^", v13))
      {
        TRegExpCompiler::compileCharacter(a1, a2, a3, v10, v11);
        v18 = *a2;
        goto LABEL_22;
      }

      v16 = TFsa::newState((a1 + 1), 0);
      TFsa::newTrans((a1 + 1), v10, v16, 0xFFFFLL);
      if (**a2)
      {
        v17 = **a2;
      }

      else
      {
        v17 = -1;
      }

      TFsa::newTrans((a1 + 1), v16, v11, v17);
      v14 = *a2;
    }

    v18 = (v14 + 1);
    *a2 = (v14 + 1);
LABEL_22:
    v19 = *v18;
    if (*v18 == 123)
    {
      *a2 = v18 + 1;
      v65 = 0;
      *&v66 = 0;
      parseRepetition(a2, &v66, &v65);
      *__p = v63;
      *&__p[8] = xmmword_26286B6F0;
      v64 = 1;
      v20 = v66;
      if (v66 >= 2)
      {
        v21 = v66 - 1;
        do
        {
          TBuffer<wchar_t>::insert(__p, *&__p[16], v8, v18 - v8);
          --v21;
        }

        while (v21);
      }

      v22 = v65;
      if (v65 == -1)
      {
        v25 = *&__p[16];
        if (v20)
        {
          TBuffer<wchar_t>::insert(__p, *&__p[16], v8, v18 - v8);
          v25 = *&__p[16];
        }

        v68[0] = 42;
        TBuffer<wchar_t>::insert(__p, v25, v68, 1uLL);
      }

      else if (v65 > v20)
      {
        if (!v20)
        {
          v68[0] = 63;
          TBuffer<wchar_t>::insert(__p, *&__p[16], v68, 1uLL);
          *&v66 = 1;
          v20 = 1;
        }

        v23 = v22 - v20;
        if (v23)
        {
          v24 = v18 - v8;
          do
          {
            TBuffer<wchar_t>::insert(__p, *&__p[16], v8, v24);
            v68[0] = 63;
            TBuffer<wchar_t>::insert(__p, *&__p[16], v68, 1uLL);
            --v23;
          }

          while (v23);
        }
      }

      v26 = 0;
      v27 = *a2;
        ;
      }

      TBuffer<wchar_t>::insert(__p, *&__p[16], v27, v26 - 1);
      if ((*&__p[16] + 1) >> 62)
      {
        v29 = -1;
      }

      else
      {
        v29 = 4 * (*&__p[16] + 1);
      }

      v18 = TAllocator::allocate((a1 + 29), v29);
      if (*&__p[16] >= *&__p[8])
      {
        if (v64)
        {
          v68[0] = 0;
          TBuffer<wchar_t>::insert(__p, *&__p[16], v68, 1uLL);
          v30 = *__p;
          --*&__p[16];
        }

        else
        {
          v30 = *__p;
          if (*&__p[8])
          {
            *(*__p + 4 * *&__p[8] - 4) = 0;
          }
        }
      }

      else
      {
        v30 = *__p;
        *(*__p + 4 * *&__p[16]) = 0;
      }

      wcscpy(v18, v30);
      *a2 = v18;
      if (v64 == 1 && *__p != v63 && *__p)
      {
        MEMORY[0x26672B1B0]();
        v18 = *a2;
      }

      v19 = *v18;
    }

    switch(v19)
    {
      case '?':
        *a2 = v18 + 1;
LABEL_59:
        v31 = (a1 + 1);
        v32 = a4;
        v33 = v11;
LABEL_60:
        TFsa::newTrans(v31, v32, v33, -1);
        break;
      case '+':
        *a2 = v18 + 1;
        v31 = (a1 + 1);
        v32 = v11;
        v33 = v10;
        goto LABEL_60;
      case '*':
        *a2 = v18 + 1;
        TFsa::newTrans((a1 + 1), v11, v10, -1);
        goto LABEL_59;
    }

LABEL_61:
    v8 = *a2;
    v9 = **a2;
  }

  return TFsa::newTrans((a1 + 1), a4, a5, -1);
}

void sub_2626CB2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, void *a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

uint64_t parseRepetition(unsigned int **a1, void *a2, void *a3)
{
  *a2 = 0;
  *a3 = 0;
  v6 = **a1;
  {
    operator new();
  }

  if (v6 < 48 || v6 >= 0x3A && (v6 < 0x660 || TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v6) == -1))
  {
    std::string::basic_string[abi:ne200100]<0>(v64, "expected a digit after {");
    *__p = byte_287529580;
    if ((v64[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], *v64, *&v64[8]);
    }

    else
    {
      *&__p[8] = *v64;
      v67 = *&v64[16];
    }

    *__p = &unk_287527330;
    if (v67 >= 0)
    {
      v16 = &__p[8];
    }

    else
    {
      v16 = *&__p[8];
    }

    conditionalAssert(v16, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/regexp.cpp", 264, v14, v15);
    *__p = byte_287529580;
    if (SHIBYTE(v67) < 0)
    {
      operator delete(*&__p[8]);
    }

    if ((v64[23] & 0x80000000) != 0)
    {
      operator delete(*v64);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, "expected a digit after {");
    *exception = byte_287529580;
    v18 = (exception + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v18, *__p, *&__p[8]);
    }

    else
    {
      v46 = *__p;
      exception[3] = *&__p[16];
      *&v18->__r_.__value_.__l.__data_ = v46;
    }

    *exception = &unk_287527330;
  }

  v7 = *a1;
  {
    operator new();
  }

  result = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v7, a1);
  *a2 = result;
  v9 = *a1;
  v10 = **a1;
  if (v10 != 44)
  {
    if (v10 != 125)
    {
      if (!v10)
      {
        std::string::basic_string[abi:ne200100]<0>(v64, "search pattern not terminated");
        *__p = byte_287529580;
        if ((v64[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(&__p[8], *v64, *&v64[8]);
        }

        else
        {
          *&__p[8] = *v64;
          v67 = *&v64[16];
        }

        *__p = &unk_287527330;
        if (v67 >= 0)
        {
          v29 = &__p[8];
        }

        else
        {
          v29 = *&__p[8];
        }

        conditionalAssert(v29, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/regexp.cpp", 270, v19, v20);
        *__p = byte_287529580;
        if (SHIBYTE(v67) < 0)
        {
          operator delete(*&__p[8]);
        }

        if ((v64[23] & 0x80000000) != 0)
        {
          operator delete(*v64);
        }

        v30 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, "search pattern not terminated");
        *v30 = byte_287529580;
        v31 = (v30 + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v31, *__p, *&__p[8]);
        }

        else
        {
          v50 = *__p;
          v30[3] = *&__p[16];
          *&v31->__r_.__value_.__l.__data_ = v50;
        }

        *v30 = &unk_287527330;
      }

      std::string::basic_string[abi:ne200100]<0>(v64, "invalid {} range");
      *__p = byte_287529580;
      if ((v64[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&__p[8], *v64, *&v64[8]);
      }

      else
      {
        *&__p[8] = *v64;
        v67 = *&v64[16];
      }

      *__p = &unk_287527330;
      if (v67 >= 0)
      {
        v32 = &__p[8];
      }

      else
      {
        v32 = *&__p[8];
      }

      conditionalAssert(v32, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/regexp.cpp", 285, v21, v22);
      *__p = byte_287529580;
      if (SHIBYTE(v67) < 0)
      {
        operator delete(*&__p[8]);
      }

      if ((v64[23] & 0x80000000) != 0)
      {
        operator delete(*v64);
      }

      v33 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__p, "invalid {} range");
      *v33 = byte_287529580;
      v34 = (v33 + 1);
      if ((__p[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v34, *__p, *&__p[8]);
      }

      else
      {
        v51 = *__p;
        v33[3] = *&__p[16];
        *&v34->__r_.__value_.__l.__data_ = v51;
      }

      *v33 = &unk_287527330;
    }

    if (!result)
    {
      std::string::basic_string[abi:ne200100]<0>(v64, "invalid {0} range");
      *__p = byte_287529580;
      if ((v64[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&__p[8], *v64, *&v64[8]);
      }

      else
      {
        *&__p[8] = *v64;
        v67 = *&v64[16];
      }

      *__p = &unk_287527330;
      if (v67 >= 0)
      {
        v35 = &__p[8];
      }

      else
      {
        v35 = *&__p[8];
      }

      conditionalAssert(v35, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/regexp.cpp", 276, v23, v24);
      *__p = byte_287529580;
      if (SHIBYTE(v67) < 0)
      {
        operator delete(*&__p[8]);
      }

      if ((v64[23] & 0x80000000) != 0)
      {
        operator delete(*v64);
      }

      v36 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__p, "invalid {0} range");
      *v36 = byte_287529580;
      v37 = (v36 + 1);
      if ((__p[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v37, *__p, *&__p[8]);
      }

      else
      {
        v52 = *__p;
        v36[3] = *&__p[16];
        *&v37->__r_.__value_.__l.__data_ = v52;
      }

      *v36 = &unk_287527330;
    }

    *a3 = result;
LABEL_21:
    v12 = v9 + 1;
    goto LABEL_22;
  }

  v11 = v9[1];
  *a1 = v9 + 1;
  if (v11 != 125)
  {
    {
      operator new();
    }

    if (v11 < 48 || v11 >= 0x3A && (v11 < 0x660 || TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v11) == -1))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](__p);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "expected a digit after {", 24);
      v26 = MEMORY[0x26672B080](v25, *a2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ",", 1);
      std::stringbuf::str();
      *v64 = byte_287529580;
      if (SHIBYTE(v63) < 0)
      {
        std::string::__init_copy_ctor_external(&v64[8], v62[0], v62[1]);
      }

      else
      {
        *&v64[8] = *v62;
        v65 = v63;
      }

      *v64 = &unk_287527330;
      if (v65 >= 0)
      {
        v54 = &v64[8];
      }

      else
      {
        v54 = *&v64[8];
      }

      conditionalAssert(v54, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/regexp.cpp", 300, v27, v28);
      *v64 = byte_287529580;
      if (SHIBYTE(v65) < 0)
      {
        operator delete(*&v64[8]);
      }

      if (SHIBYTE(v63) < 0)
      {
        operator delete(v62[0]);
      }

      v55 = __cxa_allocate_exception(0x20uLL);
      std::stringbuf::str();
      *v55 = byte_287529580;
      v56 = (v55 + 1);
      if ((v64[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v56, *v64, *&v64[8]);
      }

      else
      {
        v57 = *v64;
        v55[3] = *&v64[16];
        *&v56->__r_.__value_.__l.__data_ = v57;
      }

      *v55 = &unk_287527330;
    }

    v13 = *a1;
    {
      operator new();
    }

    result = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v13, a1);
    *a3 = result;
    v9 = *a1;
    if (**a1 != 125)
    {
      std::string::basic_string[abi:ne200100]<0>(v64, "search pattern not terminated");
      *__p = byte_287529580;
      if ((v64[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&__p[8], *v64, *&v64[8]);
      }

      else
      {
        *&__p[8] = *v64;
        v67 = *&v64[16];
      }

      *__p = &unk_287527330;
      if (v67 >= 0)
      {
        v47 = &__p[8];
      }

      else
      {
        v47 = *&__p[8];
      }

      conditionalAssert(v47, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/regexp.cpp", 306, v38, v39);
      *__p = byte_287529580;
      if (SHIBYTE(v67) < 0)
      {
        operator delete(*&__p[8]);
      }

      if ((v64[23] & 0x80000000) != 0)
      {
        operator delete(*v64);
      }

      v48 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__p, "search pattern not terminated");
      *v48 = byte_287529580;
      v49 = (v48 + 1);
      if ((__p[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v49, *__p, *&__p[8]);
      }

      else
      {
        v53 = *__p;
        v48[3] = *&__p[16];
        *&v49->__r_.__value_.__l.__data_ = v53;
      }

      *v48 = &unk_287527330;
    }

    if (*a2 > result)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](__p);
      v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "invalid {", 9);
      v41 = MEMORY[0x26672B080](v40, *a2);
      v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ",", 1);
      v43 = MEMORY[0x26672B080](v42, *a3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "} range", 7);
      std::stringbuf::str();
      *v64 = byte_287529580;
      if (SHIBYTE(v63) < 0)
      {
        std::string::__init_copy_ctor_external(&v64[8], v62[0], v62[1]);
      }

      else
      {
        *&v64[8] = *v62;
        v65 = v63;
      }

      *v64 = &unk_287527330;
      if (v65 >= 0)
      {
        v58 = &v64[8];
      }

      else
      {
        v58 = *&v64[8];
      }

      conditionalAssert(v58, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/regexp.cpp", 313, v44, v45);
      *v64 = byte_287529580;
      if (SHIBYTE(v65) < 0)
      {
        operator delete(*&v64[8]);
      }

      if (SHIBYTE(v63) < 0)
      {
        operator delete(v62[0]);
      }

      v59 = __cxa_allocate_exception(0x20uLL);
      std::stringbuf::str();
      *v59 = byte_287529580;
      v60 = (v59 + 1);
      if ((v64[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v60, *v64, *&v64[8]);
      }

      else
      {
        v61 = *v64;
        v59[3] = *&v64[16];
        *&v60->__r_.__value_.__l.__data_ = v61;
      }

      *v59 = &unk_287527330;
    }

    goto LABEL_21;
  }

  *a3 = -1;
  v12 = v9 + 2;
LABEL_22:
  *a1 = v12;
  return result;
}

void sub_2626CC0D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, void *a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, void *a25, void *a26, int a27, __int16 a28, char a29, char a30, int a31, __int16 a32, char a33, char a34)
{
  MEMORY[0x26672B1B0](v34, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

__int32 *TRegExpCompiler::compileFlags(uint64_t a1, __int32 **a2, uint64_t a3, uint64_t *a4, int *a5)
{
  *a4 = a3;
  v9 = *a2;
  result = wcschr(*a2, 58);
  if (result)
  {
    v11 = result;
    if (result == v9 || *(result - 1) != 92)
    {
      while (v9 < v11)
      {
        v12 = *v9;
        switch(v12)
        {
          case 'z':
            v13 = 0;
            break;
          case 'i':
            v13 = 1;
            break;
          case 'c':
            v13 = 2;
            break;
          default:
            std::ostringstream::basic_ostringstream[abi:ne200100](v28);
            v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "invalid flag '", 14);
            v17 = MEMORY[0x26672B060](v16, **a2);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "'", 1);
            std::stringbuf::str();
            if (SHIBYTE(v25) < 0)
            {
              std::string::__init_copy_ctor_external(&__p[8], v24[0], v24[1]);
            }

            else
            {
              *&__p[8] = *v24;
              v27 = v25;
            }

            if (v27 >= 0)
            {
              v20 = &__p[8];
            }

            else
            {
              v20 = *&__p[8];
            }

            conditionalAssert(v20, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/regexp.cpp", 663, v18, v19);
            *__p = byte_287529580;
            if (SHIBYTE(v27) < 0)
            {
              operator delete(*&__p[8]);
            }

            if (SHIBYTE(v25) < 0)
            {
              operator delete(v24[0]);
            }

            exception = __cxa_allocate_exception(0x20uLL);
            std::stringbuf::str();
            *exception = byte_287529580;
            v22 = (exception + 1);
            if ((__p[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(v22, byte_287529580, *&__p[8]);
            }

            else
            {
              v23 = *__p;
              exception[3] = *&__p[16];
              *&v22->__r_.__value_.__l.__data_ = v23;
            }

            *exception = &unk_287527330;
        }

        *a5 = v13;
        v14 = TFsa::newState((a1 + 8), 0);
        TFsa::newTrans((a1 + 8), *a4, v14, 0xFFFFLL);
        *a4 = v14;
        v15 = TFsa::newState((a1 + 8), 0);
        result = TFsa::newTrans((a1 + 8), *a4, v15, v12);
        *a4 = v15;
        v9 = *a2 + 1;
        *a2 = v9;
      }

      *a2 = v9 + 1;
    }
  }

  return result;
}

void sub_2626CC524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, void *a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a25);
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v25);
  goto LABEL_6;
}

void TRegExpCompiler::add(void *a1, __int32 *a2, uint64_t a3)
{
  v21 = 0;
  v15[0] = 0;
  v20 = a2;
  v5 = a1[20];
  v6 = a1[21];
  if (v5 != v6)
  {
    while (!*v5)
    {
      if (++v5 == v6)
      {
        v5 = a1[21];
        break;
      }
    }
  }

  TRegExpCompiler::compileFlags(a1, &v20, *v5, v15, &v21);
  v7 = TFsa::newState((a1 + 1), 0);
  TRegExpCompiler::compile(a1, &v20, v21, v15[0], v7);
  if (*v20)
  {
    std::string::basic_string[abi:ne200100]<0>(v16, "unmatched ()");
    *__p = byte_287529580;
    if (SHIBYTE(v17) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], v16[0], v16[1]);
    }

    else
    {
      *&__p[8] = *v16;
      v19 = v17;
    }

    *__p = &unk_287527330;
    if (v19 >= 0)
    {
      v11 = &__p[8];
    }

    else
    {
      v11 = *&__p[8];
    }

    conditionalAssert(v11, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/regexp.cpp", 697, v9, v10);
    *__p = byte_287529580;
    if (SHIBYTE(v19) < 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v17) < 0)
    {
      operator delete(v16[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, "unmatched ()");
    *exception = byte_287529580;
    v13 = (exception + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v13, *__p, *&__p[8]);
    }

    else
    {
      v14 = *__p;
      exception[3] = *&__p[16];
      *&v13->__r_.__value_.__l.__data_ = v14;
    }

    *exception = &unk_287527330;
  }

  v8 = TAllocator::allocate((a1 + 29), 16);
  *v8 = 1;
  v8[1] = a3;
  v7[1] = v8;
  TFsa::addExtremity((a1 + 1), v7, 1u);
}

void sub_2626CCAA0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, void *a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v26)
  {
LABEL_6:
    std::ostringstream::~ostringstream(&a25);
    __cxa_end_catch();
    JUMPOUT(0x2626CCB3CLL);
  }

  __cxa_free_exception(v25);
  goto LABEL_6;
}

uint64_t TRegExpCompiler::compressDfaRec(uint64_t result, uint64_t *a2, void **a3, void *a4, void *a5, void *a6)
{
  v6 = *a2;
  if (!*(*a6 + 8 * *a2))
  {
    v12 = result;
    v13 = *a3;
    v14 = *a5;
    *v13 = *a4;
    v13[1] = v14;
    v15 = *a3;
    *a3 += 2;
    *(*a6 + 8 * v6) = v15;
    v16 = a2[1];
    if (v16 && *v16)
    {
      v17 = 0;
      v18 = *a5;
      do
      {
        *v18++ = v16[++v17];
      }

      while (v17 < *v16);
      *a5 = v18;
    }

    v19 = *a4;
    result = TState::getTransCount(a2, 1u);
    *a4 += 16 * result;
    for (i = a2[3]; i; v19 += 16)
    {
      v21 = i[2];
      result = TRegExpCompiler::compressDfaRec(v12, v21, a3, a4, a5, a6);
      v22 = *(*a6 + 8 * *v21);
      *v19 = *i;
      *(v19 + 8) = v22;
      i = i[5];
    }
  }

  return result;
}

void TRegExpCompiler::compressDfa(TRegExpCompiler *this, const TFsa *a2)
{
  v2 = *(a2 + 12);
  v3 = *(a2 + 5);
  v4 = *(a2 + 6);
  v5 = *(a2 + 7);
  if (v4 != v5)
  {
    while (!*v4)
    {
      if (++v4 == v5)
      {
        goto LABEL_13;
      }
    }
  }

  if (v4 != v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = *(*v4 + 8);
      if (v7)
      {
        v6 += *v7;
      }

      v8 = v4 + 1;
      do
      {
        if (v8 == v5)
        {
          goto LABEL_13;
        }
      }

      while (!*v8++);
      v4 = v8 - 1;
    }
  }

LABEL_13:
  operator new[]();
}

void sub_2626CCE70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TRegExpCompiler::compile(TRegExpCompiler *this)
{
  TFsa::TFsa(v2);
  TFsa::nfaToDfa(this + 8, v2, this);
  TRegExpCompiler::compressDfa(this, v2);
}

uint64_t TRegExpSearch::searchNegatedRange(uint64_t *a1, unint64_t *a2, unsigned int *a3, uint64_t a4)
{
  result = *a1;
  v9 = *a3;
  if (a4 == 2)
  {
    v10 = *(result + 32);
    if (v10 && v9 < 0x10000)
    {
      v9 = *(v10 + 4 * v9);
    }
  }

  else if (a4 == 1)
  {
    result = TLocaleInfo::toLower(result, *a3);
    v9 = result;
  }

  v11 = *a2;
  v12 = a2[2];
  while (v11 < v12)
  {
    v13 = *(v11 + 8);
    v14 = *v13;
    v15 = v13[2];
    if (*v13 < v15)
    {
      do
      {
        if (v9 < *v11 || v9 > *v14)
        {
          result = TRegExpSearch::searchNegated(a1, *(v14 + 8), a3, a4);
          v15 = v13[2];
        }

        v14 += 16;
      }

      while (v14 < v15);
      v12 = a2[2];
    }

    v11 += 16;
  }

  return result;
}

uint64_t TRegExpSearch::searchNegated(uint64_t *a1, unint64_t *a2, unsigned int *a3, uint64_t a4)
{
  result = *a1;
  v9 = *a3;
  if (a4 == 2)
  {
    v10 = *(result + 32);
    if (v10 && v9 < 0x10000)
    {
      v9 = *(v10 + 4 * v9);
    }
  }

  else if (a4 == 1)
  {
    result = TLocaleInfo::toLower(result, *a3);
    v9 = result;
  }

  for (i = *a2; i < a2[2]; i += 16)
  {
    if (*i == 0xFFFF)
    {
      result = TRegExpSearch::searchNegatedCommand(a1, *(i + 8), a3, a4);
    }

    else if (v9 != *i)
    {
      result = TRegExpSearch::searchNegated(a1, *(i + 8), a3, a4);
    }
  }

  return result;
}

uint64_t TRegExpSearch::searchNegatedCommand(uint64_t result, unint64_t *a2, unsigned int *a3, uint64_t a4)
{
  v4 = *a2;
  if (*a2 < a2[2])
  {
    v8 = result;
    do
    {
      v9 = *v4;
      if (*v4 == 114)
      {
        result = TRegExpSearch::searchNegatedRange(v8, *(v4 + 8), a3, a4);
      }

      else if (v9 == 110)
      {
        result = TRegExpSearch::search(v8, *(v4 + 8), a3 + 1, a4);
      }

      else
      {
        result = testCharClass(v9, *a3);
        if ((result & 1) == 0)
        {
          result = TRegExpSearch::searchNegated(v8, *(v4 + 8), a3, a4);
        }
      }

      v4 += 16;
    }

    while (v4 < a2[2]);
  }

  return result;
}

void TRegExpSearch::search(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned int a4)
{
  while (1)
  {
    if ((*(a1 + 44) & 1) == 0 || !*a3)
    {
      for (i = a2[1]; i < a2[3]; ++i)
      {
        *(a1 + 41) = 1;
        v12 = *(a1 + 16);
        if (v12)
        {
          v14 = *v12;
          v13 = v12[1];
          v15 = *i;
          v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *v12) >> 3);
          if (v13 == *v12)
          {
LABEL_18:
            v20 = *(a1 + 32);
            v21 = v12[2];
            if (v13 >= v21)
            {
              v23 = v16 + 1;
              if (v16 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
              }

              v24 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v14) >> 3);
              if (2 * v24 > v23)
              {
                v23 = 2 * v24;
              }

              if (v24 >= 0x555555555555555)
              {
                v25 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v25 = v23;
              }

              if (v25)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<TRegExpMatch>>(*(a1 + 16), v25);
              }

              v26 = 24 * v16;
              *v26 = v20;
              *(v26 + 8) = a3;
              *(v26 + 16) = v15;
              v22 = 24 * v16 + 24;
              v27 = v12[1] - *v12;
              v28 = v26 - v27;
              memcpy((v26 - v27), *v12, v27);
              v29 = *v12;
              *v12 = v28;
              v12[1] = v22;
              v12[2] = 0;
              if (v29)
              {
                operator delete(v29);
              }
            }

            else
            {
              *v13 = v20;
              *(v13 + 1) = a3;
              v22 = (v13 + 24);
              *(v13 + 2) = v15;
            }

            v12[1] = v22;
          }

          else
          {
            if (v16 <= 1)
            {
              v17 = 1;
            }

            else
            {
              v17 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *v12) >> 3);
            }

            v18 = v14 + 16;
            while (1)
            {
              if (*v18 == v15)
              {
                v19 = *(a1 + 32);
                if (*(v18 - 2) == v19 && *(v18 - 1) < a3)
                {
                  break;
                }
              }

              v18 += 3;
              if (!--v17)
              {
                goto LABEL_18;
              }
            }

            *(v18 - 2) = v19;
            *(v18 - 1) = a3;
            *v18 = v15;
          }
        }
      }
    }

    v7 = a2[2];
    v8 = *a2;
    v9 = v7 - *a2;
    if (v7 == *a2)
    {
      break;
    }

    if (*v8 == 0xFFFF)
    {
      TRegExpSearch::searchCommand(a1, *(v8 + 8), a3, a4);
      v10 = 1;
    }

    else
    {
      v10 = 0;
    }

    v30 = v9 >> 4;
    v31 = *a3;
    if (!v31 && v10 < v30)
    {
      *(a1 + 40) = 1;
      return;
    }

    v32 = *a1;
    if (a4 == 2)
    {
      v33 = *(v32 + 32);
      if (v33)
      {
        v34 = v31 < 0x10000;
      }

      else
      {
        v34 = 0;
      }

      if (v34)
      {
        LODWORD(v31) = *(v33 + 4 * v31);
      }
    }

    else if (a4 == 1)
    {
      LODWORD(v31) = TLocaleInfo::toLower(v32, v31);
    }

    v35 = v30 - 1;
    if (v10 < v30)
    {
      v36 = *a2;
      do
      {
        v37 = (v35 + v10) >> 1;
        v38 = *(v36 + 16 * v37);
        if (v31 == v38)
        {
          break;
        }

        if (v31 > v38)
        {
          v35 = v37 - 1;
        }

        else
        {
          v10 = v37 + 1;
        }
      }

      while (v10 <= v35);
      v8 = v36 + 16 * v37;
    }

    if (v10 > v35)
    {
      return;
    }

    a2 = *(v8 + 8);
    ++a3;
  }
}

uint64_t testCharClass(int a1, int a2)
{
  result = 0;
  if (a1 <= 96)
  {
    if (a1 > 79)
    {
      if (a1 <= 84)
      {
        if (a1 != 80)
        {
          if (a1 != 83)
          {
            return result;
          }

          {
            operator new();
          }

          result = 0;
          if (a2 > 159)
          {
            if (a2 >= 12288)
            {
              if (a2 == 12288)
              {
                return result;
              }

              v15 = 65279;
            }

            else
            {
              if (a2 == 160)
              {
                return result;
              }

              v15 = 8203;
            }

            if (a2 != v15)
            {
              return 1;
            }
          }

          else if (a2 > 0x20 || ((1 << a2) & 0x100002600) == 0)
          {
            return 1;
          }

          return result;
        }

        {
          operator new();
        }

        isPunct = TLocaleInfo::isPunct(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a2);
        return isPunct ^ 1u;
      }

      if (a1 == 85)
      {
        {
          operator new();
        }

        isPunct = TLocaleInfo::isUpper(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a2);
        return isPunct ^ 1u;
      }

      if (a1 != 87)
      {
        return result;
      }

      {
        operator new();
      }

      v7 = TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo;
      if (a2 < 48 || a2 >= 0x3A && (a2 < 0x660 || TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a2) == -1))
      {
        v8 = v7;
LABEL_62:
        isPunct = TLocaleInfo::isAlpha(v8, a2);
        return isPunct ^ 1u;
      }

      return 0;
    }

    if (a1 == 65)
    {
      {
        operator new();
      }

      v8 = TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo;
      goto LABEL_62;
    }

    if (a1 != 68)
    {
      if (a1 != 76)
      {
        return result;
      }

      {
        operator new();
      }

      isPunct = TLocaleInfo::isLower(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a2);
      return isPunct ^ 1u;
    }

    {
      operator new();
    }

    DigitExtended = a2 - 48;
    if (a2 >= 48)
    {
      if (a2 <= 0x39)
      {
        return DigitExtended == -1;
      }

      if (a2 >= 0x660)
      {
        DigitExtended = TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a2);
        return DigitExtended == -1;
      }
    }

    DigitExtended = -1;
    return DigitExtended == -1;
  }

  if (a1 <= 111)
  {
    if (a1 == 97)
    {
      {
        operator new();
      }

      v10 = TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo;
      goto LABEL_67;
    }

    if (a1 != 100)
    {
      if (a1 == 108)
      {
        {
          operator new();
        }

        v6 = TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo;

        return TLocaleInfo::isLower(v6, a2);
      }

      return result;
    }

    {
      operator new();
    }

    v14 = a2 - 48;
    if (a2 >= 48)
    {
      if (a2 <= 0x39)
      {
        return v14 != -1;
      }

      if (a2 >= 0x660)
      {
        v14 = TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a2);
        return v14 != -1;
      }
    }

    v14 = -1;
    return v14 != -1;
  }

  if (a1 > 116)
  {
    if (a1 == 117)
    {
      {
        operator new();
      }

      v12 = TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo;

      return TLocaleInfo::isUpper(v12, a2);
    }

    if (a1 != 119)
    {
      return result;
    }

    {
      operator new();
    }

    v9 = TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo;
    if (a2 >= 48 && (a2 < 0x3A || a2 >= 0x660 && TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a2) != -1))
    {
      return 1;
    }

    v10 = v9;
LABEL_67:

    return TLocaleInfo::isAlpha(v10, a2);
  }

  if (a1 == 112)
  {
    {
      operator new();
    }

    v11 = TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo;

    return TLocaleInfo::isPunct(v11, a2);
  }

  if (a1 != 115)
  {
    return result;
  }

  {
    operator new();
  }

  result = 1;
  if (a2 <= 159)
  {
    if (a2 <= 0x20 && ((1 << a2) & 0x100002600) != 0)
    {
      return result;
    }

    return 0;
  }

  if (a2 >= 12288)
  {
    if (a2 == 12288)
    {
      return result;
    }

    v16 = 65279;
  }

  else
  {
    if (a2 == 160)
    {
      return result;
    }

    v16 = 8203;
  }

  if (a2 != v16)
  {
    return 0;
  }

  return result;
}

void sub_2626CDCEC(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

uint64_t TRegExpSearch::searchRange(uint64_t *a1, unint64_t *a2, unsigned int *a3, uint64_t a4)
{
  result = *a1;
  v9 = *a3;
  if (a4 == 2)
  {
    v10 = *(result + 32);
    if (v10 && v9 < 0x10000)
    {
      v9 = *(v10 + 4 * v9);
    }
  }

  else if (a4 == 1)
  {
    result = TLocaleInfo::toLower(result, *a3);
    v9 = result;
  }

  v11 = *a2;
  v12 = a2[2];
  while (v11 < v12)
  {
    if (v9 >= *v11)
    {
      v13 = *(v11 + 8);
      v14 = *v13;
      v15 = v13[2];
      if (*v13 < v15)
      {
        do
        {
          if (v9 <= *v14)
          {
            result = TRegExpSearch::search(a1, *(v14 + 8), a3 + 1, a4);
            v15 = v13[2];
          }

          v14 += 16;
        }

        while (v14 < v15);
        v12 = a2[2];
      }
    }

    v11 += 16;
  }

  return result;
}

uint64_t TRegExpSearch::searchCommand(uint64_t result, unsigned int **a2, unsigned int *a3, uint64_t a4)
{
  v4 = *a2;
  if (*a2 < a2[2])
  {
    v8 = result;
    while (1)
    {
      result = *v4;
      if (result > 98)
      {
        break;
      }

      if (result == 36)
      {
        if (!*a3)
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (result != 94)
        {
          goto LABEL_16;
        }

        if (*(v8 + 24) == a3)
        {
LABEL_15:
          v9 = *(v4 + 1);
          v10 = v8;
          v11 = a3;
          goto LABEL_22;
        }
      }

LABEL_24:
      v4 += 4;
      if (v4 >= a2[2])
      {
        return result;
      }
    }

    switch(result)
    {
      case 'c':
        v9 = *(v4 + 1);
        v10 = v8;
        v11 = a3;
        v12 = 2;
        break;
      case 'i':
        v9 = *(v4 + 1);
        v10 = v8;
        v11 = a3;
        v12 = 1;
        break;
      case 'z':
        v9 = *(v4 + 1);
        v10 = v8;
        v11 = a3;
        v12 = 0;
        break;
      default:
LABEL_16:
        if (!*a3)
        {
          *(v8 + 40) = 1;
          goto LABEL_24;
        }

        if (result == 114)
        {
          result = TRegExpSearch::searchRange(v8, *(v4 + 1), a3, a4);
          goto LABEL_24;
        }

        if (result == 110)
        {
          result = TRegExpSearch::searchNegated(v8, *(v4 + 1), a3, a4);
          goto LABEL_24;
        }

        if (result != 46)
        {
          result = testCharClass(result, *a3);
          if (!result)
          {
            goto LABEL_24;
          }
        }

        v9 = *(v4 + 1);
        v11 = a3 + 1;
        v10 = v8;
LABEL_22:
        v12 = a4;
        break;
    }

    result = TRegExpSearch::search(v10, v9, v11, v12);
    goto LABEL_24;
  }

  return result;
}

uint64_t TRegExpSearch::operator()(uint64_t a1, unsigned int *a2, int a3, uint64_t a4)
{
  v4 = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a2;
  *(a1 + 40) = 0;
  *(a1 + 44) = a3;
  *(a1 + 32) = a2;
  v5 = *a2;
  if (*a2)
  {
    v6 = a2;
    do
    {
      TRegExpSearch::search(a1, **(a1 + 8), v6, 0);
      if ((v4 & 2) != 0)
      {
        break;
      }

      v8 = *(a1 + 32);
      v9 = *(v8 + 4);
      v6 = (v8 + 4);
      *(a1 + 32) = v6;
    }

    while (v9);
    LOBYTE(v5) = *(a1 + 40);
  }

  return v5 & 1;
}

uint64_t TRegExpSearch::operator()(uint64_t a1, unsigned int *a2, int a3)
{
  v3 = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 40) = 0;
  *(a1 + 44) = a3;
  *(a1 + 32) = a2;
  if (!*a2)
  {
    return 0;
  }

  v4 = a2;
  do
  {
    TRegExpSearch::search(a1, **(a1 + 8), v4, 0);
    result = *(a1 + 41);
    if ((v3 & 2) != 0)
    {
      break;
    }

    if (result)
    {
      break;
    }

    v7 = *(a1 + 32);
    v8 = *(v7 + 4);
    v4 = (v7 + 4);
    *(a1 + 32) = v4;
  }

  while (v8);
  return result;
}

void *TRegExp::TRegExp(void *result, uint64_t a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = a2;
  return result;
}

void TRegExp::add(uint64_t a1, __int32 *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    operator new();
  }

  v4 = *(a1 + 8);

  TRegExpCompiler::add(v3, a2, a3);
}

TRegExpCompiler *TRegExp::doneAdding(TRegExp *this)
{
  result = *(this + 1);
  if (result)
  {
    TRegExpCompiler::compile(result);
  }

  return result;
}

TRegExp *TRegExp::TRegExp(TRegExp *a1, __int32 *a2, uint64_t a3)
{
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = a3;
  TRegExp::add(a1, a2, 0);
  TRegExp::doneAdding(a1);
  return a1;
}

void TRegExp::~TRegExp(TRegExp *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    TRegExpGraph::~TRegExpGraph(v3);
    MEMORY[0x26672B1B0]();
  }
}

uint64_t TRegExp::match(void *a1, unsigned int *a2, int a3, uint64_t a4)
{
  v4 = a1[2];
  if (!v4)
  {
    return 0;
  }

  v6[0] = *a1;
  v6[1] = v4;
  return TRegExpSearch::operator()(v6, a2, a3, a4);
}

uint64_t TRegExp::match(void *a1, unsigned int *a2, int a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return 0;
  }

  v5[0] = *a1;
  v5[1] = v3;
  return TRegExpSearch::operator()(v5, a2, a3);
}

uint64_t TRegExp::stringToRegExp(uint64_t result, uint64_t a2, int a3, char a4)
{
  v6 = result;
  if (a3 == 1)
  {
    v7 = "i";
  }

  else
  {
    if (a3 != 2)
    {
      goto LABEL_6;
    }

    v7 = "c";
  }

  *(a2 + 16) = 0;
  result = TBuffer<wchar_t>::insert(a2, 0, v7, 2uLL);
LABEL_6:
  if ((a4 & 2) != 0)
  {
    v11 = 94;
    result = TBuffer<wchar_t>::insert(a2, *(a2 + 16), &v11, 1uLL);
  }

  v8 = *v6;
  if (*v6)
  {
    v9 = v6 + 1;
    do
    {
      if (wcschr("?", v8))
      {
        v11 = 92;
        TBuffer<wchar_t>::insert(a2, *(a2 + 16), &v11, 1uLL);
        v8 = *(v9 - 1);
      }

      v11 = v8;
      result = TBuffer<wchar_t>::insert(a2, *(a2 + 16), &v11, 1uLL);
      v10 = *v9++;
      v8 = v10;
    }

    while (v10);
  }

  if (a4)
  {
    v11 = 36;
    return TBuffer<wchar_t>::insert(a2, *(a2 + 16), &v11, 1uLL);
  }

  return result;
}

void TRegExpGraph::~TRegExpGraph(TRegExpGraph *this)
{
  if (*this)
  {
    MEMORY[0x26672B190](*this - 16, 0x70C80105F9A77);
  }

  v2 = *(this + 1);
  if (v2)
  {
    MEMORY[0x26672B190](v2 - 16, 0x1060C807B16006ELL);
  }

  v3 = *(this + 2);
  if (v3)
  {
    MEMORY[0x26672B190](v3, 0x1000C8000313F17);
  }
}

uint64_t callBackParam(int a1, int a2, char **lpsrc, uint64_t *a4, TAllocator *a5)
{
  if (a4)
  {
    v7 = *a4;
  }

  else
  {
    v7 = 1;
  }

  if (*(lpsrc + 2))
  {
    v17 = v19;
    v18 = xmmword_26286B6F0;
    v20 = 1;
    (*(*lpsrc + 2))(lpsrc, v7, &v17);
    v8 = *lpsrc;
    if (*(lpsrc + 2) == 4)
    {
      v9 = *v8;
      TStringParam::getGrammarValue(v10, v7, &v17);
    }

    else
    {
      (*(v8 + 2))(lpsrc, v7, &v17);
    }

    if ((*(&v18 + 1) + 1) >> 62)
    {
      v13 = -1;
    }

    else
    {
      v13 = 4 * (*(&v18 + 1) + 1);
    }

    v14 = TAllocator::allocate(a5, v13);
    if (*(&v18 + 1) >= v18)
    {
      if (v20)
      {
        v21 = 0;
        TBuffer<wchar_t>::insert(&v17, *(&v18 + 1), &v21, 1uLL);
        v15 = v17;
        --*(&v18 + 1);
      }

      else
      {
        v15 = v17;
        if (v18)
        {
          v17[v18 - 1] = 0;
        }
      }
    }

    else
    {
      v15 = v17;
      v17[*(&v18 + 1)] = 0;
    }

    wcscpy(v14, v15);
    if (v20 == 1 && v17 != v19 && v17)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  else
  {
    v11 = **lpsrc;
    *(v12 + TParam::getValidConfig(v12, v7) + 152);
  }

  return 1;
}

void sub_2626CE710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (LOBYTE(STACK[0x420]) == 1 && a10 != v10)
  {
    if (a10)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t callBackGetLength(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, TAllocator *a5)
{
  if (a2 != 1 || *a1 > 1uLL)
  {
    return 0;
  }

  v11 = v13;
  v12 = xmmword_26286B6F0;
  v14 = 1;
  v7 = wcslen(*(a1 + 8));
  {
    operator new();
  }

  TLocaleInfo::valueToString(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v7, &v11, 0);
  if ((*(&v12 + 1) + 1) >> 62)
  {
    v8 = -1;
  }

  else
  {
    v8 = 4 * (*(&v12 + 1) + 1);
  }

  v9 = TAllocator::allocate(a5, v8);
  if (*(&v12 + 1) >= v12)
  {
    if (v14)
    {
      v15 = 0;
      TBuffer<wchar_t>::insert(&v11, *(&v12 + 1), &v15, 1uLL);
      v10 = v11;
      --*(&v12 + 1);
    }

    else
    {
      v10 = v11;
      if (v12)
      {
        v11[v12 - 1] = 0;
      }
    }
  }

  else
  {
    v10 = v11;
    v11[*(&v12 + 1)] = 0;
  }

  wcscpy(v9, v10);
  if (v14 == 1 && v11 != v13)
  {
    if (v11)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  return 1;
}

void sub_2626CE900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  MEMORY[0x26672B1B0](v10, 0x1070C40ADD13FEBLL);
  if (LOBYTE(STACK[0x420]) == 1 && a10 != v11)
  {
    if (a10)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t callBackRomanToDigit(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, TAllocator *a5)
{
  if (a2 != 1 || *a1 > 1uLL)
  {
    return 0;
  }

  v5 = a1[1];
  if (*v5)
  {
    v16 = 0;
    if (romanToArabic(v5, &v16))
    {
      return 0;
    }

    v12 = v14;
    v13 = xmmword_26286B6F0;
    v15 = 1;
    v8 = v16;
    {
      operator new();
    }

    TLocaleInfo::valueToString(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v8, &v12, 0);
    if ((*(&v13 + 1) + 1) >> 62)
    {
      v9 = -1;
    }

    else
    {
      v9 = 4 * (*(&v13 + 1) + 1);
    }

    v10 = TAllocator::allocate(a5, v9);
    if (*(&v13 + 1) >= v13)
    {
      if (v15)
      {
        v17 = 0;
        TBuffer<wchar_t>::insert(&v12, *(&v13 + 1), &v17, 1uLL);
        v11 = v12;
        --*(&v13 + 1);
      }

      else
      {
        v11 = v12;
        if (v13)
        {
          v12[v13 - 1] = 0;
        }
      }
    }

    else
    {
      v11 = v12;
      v12[*(&v13 + 1)] = 0;
    }

    wcscpy(v10, v11);
    if (v15 == 1 && v12 != v14)
    {
      if (v12)
      {
        MEMORY[0x26672B1B0]();
      }
    }
  }

  return 1;
}

void sub_2626CEB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x26672B1B0](v9, 0x1070C40ADD13FEBLL);
  if (LOBYTE(STACK[0x418]) == 1 && a9 != v10)
  {
    if (a9)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t callBackDigitToRoman(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, TAllocator *a5)
{
  if (a2 != 1 || *a1 > 1uLL)
  {
    return 0;
  }

  v7 = a1[1];
  if (!*v7)
  {
    return 1;
  }

  v17 = 0;
  {
    operator new();
  }

  v9 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v7, &v17);
  v5 = 1;
  if (!v17)
  {
    v13 = v15;
    v14 = xmmword_26286B6F0;
    v16 = 1;
    if (arabicToRoman(v9, &v13))
    {
      v5 = 0;
    }

    else
    {
      if ((*(&v14 + 1) + 1) >> 62)
      {
        v10 = -1;
      }

      else
      {
        v10 = 4 * (*(&v14 + 1) + 1);
      }

      v11 = TAllocator::allocate(a5, v10);
      if (*(&v14 + 1) >= v14)
      {
        if (v16)
        {
          v18 = 0;
          TBuffer<wchar_t>::insert(&v13, *(&v14 + 1), &v18, 1uLL);
          v12 = v13;
          --*(&v14 + 1);
        }

        else
        {
          v12 = v13;
          if (v14)
          {
            v13[v14 - 1] = 0;
          }
        }
      }

      else
      {
        v12 = v13;
        v13[*(&v14 + 1)] = 0;
      }

      wcscpy(v11, v12);
      v5 = 1;
    }

    if (v16 == 1 && v13 != v15 && v13)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  return v5;
}

void sub_2626CEDA0(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

uint64_t callBackAllCaps(uint64_t a1, uint64_t a2, uint64_t a3, int a4, TAllocator *this)
{
  if (a2 != 1 || *a1 > 1uLL)
  {
    return 0;
  }

  v24 = v26;
  v25 = xmmword_26286B6F0;
  v27 = 1;
  v8 = *(a1 + 8);
  v9 = *v8;
  if (v9)
  {
    v11 = 0;
    do
    {
      while (!wcsncmp(v8, &unk_262888710, 1uLL))
      {
        while (1)
        {
          v11 = 1;
          if (!wcsncmp(v8, &unk_262888718, 1uLL))
          {
            break;
          }

          LODWORD(__p[0]) = v9;
          TBuffer<wchar_t>::insert(&v24, *(&v25 + 1), __p, 1uLL);
          v13 = v8[1];
          ++v8;
          v9 = v13;
          if (!v13)
          {
            goto LABEL_13;
          }
        }
      }

      LODWORD(__p[0]) = TLocaleInfo::toUpper(a3 + 240, v9);
      TBuffer<wchar_t>::insert(&v24, *(&v25 + 1), __p, 1uLL);
      v12 = v8[1];
      ++v8;
      v9 = v12;
    }

    while (v12);
    if (v11)
    {
LABEL_13:
      loggableUnicode(*(a1 + 8), __p);
      if (v23 >= 0)
      {
        v18 = __p;
      }

      else
      {
        v18 = __p[0];
      }

      tknPrintf("Warning: '%s' : Performing AllCaps string function on a tagged value.\n", v14, v15, v16, v17, v18);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if ((*(&v25 + 1) + 1) >> 62)
  {
    v19 = -1;
  }

  else
  {
    v19 = 4 * (*(&v25 + 1) + 1);
  }

  v20 = TAllocator::allocate(this, v19);
  if (*(&v25 + 1) >= v25)
  {
    if (v27)
    {
      LODWORD(__p[0]) = 0;
      TBuffer<wchar_t>::insert(&v24, *(&v25 + 1), __p, 1uLL);
      v21 = v24;
      --*(&v25 + 1);
    }

    else
    {
      v21 = v24;
      if (v25)
      {
        v24[v25 - 1] = 0;
      }
    }
  }

  else
  {
    v21 = v24;
    v24[*(&v25 + 1)] = 0;
  }

  wcscpy(v20, v21);
  if (v27 == 1 && v24 != v26)
  {
    if (v24)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  return 1;
}

void sub_2626CF044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (LOBYTE(STACK[0x438]) == 1 && a16 != v16)
  {
    if (a16)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t callBackNoCaps(uint64_t a1, uint64_t a2, uint64_t a3, int a4, TAllocator *this)
{
  if (a2 != 1 || *a1 > 1uLL)
  {
    return 0;
  }

  v24 = v26;
  v25 = xmmword_26286B6F0;
  v27 = 1;
  v8 = *(a1 + 8);
  v9 = *v8;
  if (v9)
  {
    v11 = 0;
    do
    {
      while (!wcsncmp(v8, &unk_262888710, 1uLL))
      {
        while (1)
        {
          v11 = 1;
          if (!wcsncmp(v8, &unk_262888718, 1uLL))
          {
            break;
          }

          LODWORD(__p[0]) = v9;
          TBuffer<wchar_t>::insert(&v24, *(&v25 + 1), __p, 1uLL);
          v13 = v8[1];
          ++v8;
          v9 = v13;
          if (!v13)
          {
            goto LABEL_13;
          }
        }
      }

      LODWORD(__p[0]) = TLocaleInfo::toLower(a3 + 240, v9);
      TBuffer<wchar_t>::insert(&v24, *(&v25 + 1), __p, 1uLL);
      v12 = v8[1];
      ++v8;
      v9 = v12;
    }

    while (v12);
    if (v11)
    {
LABEL_13:
      loggableUnicode(*(a1 + 8), __p);
      if (v23 >= 0)
      {
        v18 = __p;
      }

      else
      {
        v18 = __p[0];
      }

      tknPrintf("Warning: '%s' : Performing NoCaps string function on a tagged value.\n", v14, v15, v16, v17, v18);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if ((*(&v25 + 1) + 1) >> 62)
  {
    v19 = -1;
  }

  else
  {
    v19 = 4 * (*(&v25 + 1) + 1);
  }

  v20 = TAllocator::allocate(this, v19);
  if (*(&v25 + 1) >= v25)
  {
    if (v27)
    {
      LODWORD(__p[0]) = 0;
      TBuffer<wchar_t>::insert(&v24, *(&v25 + 1), __p, 1uLL);
      v21 = v24;
      --*(&v25 + 1);
    }

    else
    {
      v21 = v24;
      if (v25)
      {
        v24[v25 - 1] = 0;
      }
    }
  }

  else
  {
    v21 = v24;
    v24[*(&v25 + 1)] = 0;
  }

  wcscpy(v20, v21);
  if (v27 == 1 && v24 != v26)
  {
    if (v24)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  return 1;
}

void sub_2626CF2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (LOBYTE(STACK[0x438]) == 1 && a16 != v16)
  {
    if (a16)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t callBackCapitalize(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, TAllocator *a5)
{
  if (a2 != 1 || *a1 > 1uLL)
  {
    return 0;
  }

  v8 = a1[1];
  v9 = wcslen(v8);
  if ((v9 + 1) >> 62)
  {
    v10 = -1;
  }

  else
  {
    v10 = 4 * (v9 + 1);
  }

  v11 = TAllocator::allocate(a5, v10);
  wcscpy(v11, v8);
  v12 = *v11;
  if (v12)
  {
    *v11 = TLocaleInfo::toUpper(a3 + 240, v12);
  }

  return 1;
}

uint64_t callBackRemoveDiacritics(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, TAllocator *a5)
{
  if (a2 != 1 || *a1 > 1uLL)
  {
    return 0;
  }

  v15 = v17;
  v16 = xmmword_26286B6F0;
  v18 = 1;
  v7 = a1[1];
  v8 = *v7;
  if (v8)
  {
    v10 = v7 + 1;
    do
    {
      v19 = TLocaleInfo::removeDiacritics(a3 + 240, v8);
      TBuffer<wchar_t>::insert(&v15, *(&v16 + 1), &v19, 1uLL);
      v11 = *v10++;
      v8 = v11;
    }

    while (v11);
    if ((*(&v16 + 1) + 1) >> 62)
    {
      v12 = -1;
    }

    else
    {
      v12 = 4 * (*(&v16 + 1) + 1);
    }
  }

  else
  {
    v12 = 4;
  }

  v13 = TAllocator::allocate(a5, v12);
  if (*(&v16 + 1) >= v16)
  {
    if (v18)
    {
      v19 = 0;
      TBuffer<wchar_t>::insert(&v15, *(&v16 + 1), &v19, 1uLL);
      v14 = v15;
      --*(&v16 + 1);
    }

    else
    {
      v14 = v15;
      if (v16)
      {
        v15[v16 - 1] = 0;
      }
    }
  }

  else
  {
    v14 = v15;
    v15[*(&v16 + 1)] = 0;
  }

  wcscpy(v13, v14);
  if (v18 == 1 && v15 != v17)
  {
    if (v15)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  return 1;
}

void sub_2626CF544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (LOBYTE(STACK[0x420]) == 1 && a10 != v10 && a10 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

uint64_t callBackFormat(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, TAllocator *a5)
{
  if (a2 <= 1 && *a1 > 1uLL)
  {
    return 0;
  }

  v25 = v27;
  v26 = xmmword_26286B6F0;
  v28 = 1;
  v7 = a1[1];
  v8 = *v7;
  if (*v7)
  {
    v23 = a5;
    v24 = (a1 + 3);
    while (1)
    {
      while (1)
      {
        v9 = v7;
        {
          operator new();
        }

        if (v8 > 159)
        {
          break;
        }

        if (v8 > 0x20 || ((1 << v8) & 0x100002600) == 0)
        {
          goto LABEL_19;
        }

LABEL_17:
        v10 = v7[1];
        v8 = v10;
        ++v7;
        if (!v10)
        {
          goto LABEL_49;
        }
      }

      if (v8 >= 12288)
      {
        if (v8 == 65279 || v8 == 12288)
        {
          goto LABEL_17;
        }
      }

      else if (v8 == 160 || v8 == 8203)
      {
        goto LABEL_17;
      }

LABEL_19:
      v11 = *v7;
      if (!*v7)
      {
        goto LABEL_49;
      }

      while (1)
      {
        {
          operator new();
        }

        if (v11 <= 159)
        {
          if (v11 <= 0x20 && ((1 << v11) & 0x100002600) != 0)
          {
            goto LABEL_35;
          }

          goto LABEL_31;
        }

        if (v11 >= 12288)
        {
          break;
        }

        if (v11 == 160 || v11 == 8203)
        {
          goto LABEL_35;
        }

LABEL_31:
        v12 = v7[1];
        ++v7;
        v11 = v12;
        if (!v12)
        {
          goto LABEL_35;
        }
      }

      if (v11 != 12288 && v11 != 65279)
      {
        goto LABEL_31;
      }

LABEL_35:
      if (a2 >= 3)
      {
        v13 = 2;
        v14 = v24;
        while (1)
        {
          if (*(v14 - 1) > 1)
          {
            v6 = 0;
            goto LABEL_62;
          }

          if (v7 - v9 == wcslen(*v14) && !wcsncmp(v9, *v14, v7 - v9))
          {
            break;
          }

          v14 += 4;
          v13 += 2;
          if (v13 >= a2)
          {
            goto LABEL_45;
          }
        }

        v15 = 0;
        v16 = v14[2];
          ;
        }

        TBuffer<wchar_t>::insert(&v25, *(&v26 + 1), v16, v15 - 1);
      }

LABEL_45:
      v8 = *v7;
      if (!*v7)
      {
LABEL_49:
        if ((*(&v26 + 1) + 1) >> 62)
        {
          v18 = -1;
        }

        else
        {
          v18 = 4 * (*(&v26 + 1) + 1);
        }

        a5 = v23;
        goto LABEL_54;
      }
    }
  }

  v18 = 4;
LABEL_54:
  v19 = TAllocator::allocate(a5, v18);
  if (*(&v26 + 1) >= v26)
  {
    if (v28)
    {
      v29[0] = 0;
      TBuffer<wchar_t>::insert(&v25, *(&v26 + 1), v29, 1uLL);
      v20 = v25;
      --*(&v26 + 1);
    }

    else
    {
      v20 = v25;
      if (v26)
      {
        v25[v26 - 1] = 0;
      }
    }
  }

  else
  {
    v20 = v25;
    v25[*(&v26 + 1)] = 0;
  }

  wcscpy(v19, v20);
  v6 = 1;
LABEL_62:
  if (v28 == 1 && v25 != v27 && v25 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  return v6;
}

void sub_2626CF91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  MEMORY[0x26672B1B0](v13, 0x1070C40ADD13FEBLL);
  if (LOBYTE(STACK[0x438]) == 1 && a13 != a12)
  {
    if (a13)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t callBackGetCategoryTag(void *a1, uint64_t a2, void *a3, uint64_t a4, TAllocator *a5)
{
  if (a2 != 1 || *a1 > 1uLL)
  {
    return 0;
  }

  v6 = a1[1];
  if (!*v6)
  {
    return 1;
  }

  HeadClone = TLexicon::findHeadClone(a3, v6);
  result = 1;
  if (HeadClone)
  {
    v12 = v14;
    v13 = xmmword_26286B6F0;
    v15 = 1;
    TWord::getCategoryTag(HeadClone, &v12);
    if ((*(&v13 + 1) + 1) >> 62)
    {
      v9 = -1;
    }

    else
    {
      v9 = 4 * (*(&v13 + 1) + 1);
    }

    v10 = TAllocator::allocate(a5, v9);
    if (*(&v13 + 1) >= v13)
    {
      if (v15)
      {
        v16 = 0;
        TBuffer<wchar_t>::insert(&v12, *(&v13 + 1), &v16, 1uLL);
        v11 = v12;
        --*(&v13 + 1);
      }

      else
      {
        v11 = v12;
        if (v13)
        {
          v12[v13 - 1] = 0;
        }
      }
    }

    else
    {
      v11 = v12;
      v12[*(&v13 + 1)] = 0;
    }

    wcscpy(v10, v11);
    if (v15 == 1 && v12 != v14)
    {
      if (v12)
      {
        MEMORY[0x26672B1B0]();
      }
    }

    return 1;
  }

  return result;
}

void sub_2626CFB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (LOBYTE(STACK[0x420]) == 1 && a10 != v10)
  {
    if (a10)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t callBackGetWrittenForm(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, TAllocator *a5)
{
  if (a2 != 1 || *a1 > 1uLL)
  {
    return 0;
  }

  v6 = a1[1];
  if (*v6)
  {
    v8 = a3;
    if (TLexicon::checkName(a3, v6, 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      loggableUnicode(v6, &__p);
      if (v18 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      tknPrintf("Error: '%s' : Written form requested for an invalid word name.\n", v9, v10, v11, v12, p_p);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p);
      }

      return 0;
    }

    __p = v19;
    v18 = xmmword_26286B6F0;
    v20 = 1;
    TLexicon::getWrittenForm(v8, v6, &__p);
    if ((*(&v18 + 1) + 1) >> 62)
    {
      v14 = -1;
    }

    else
    {
      v14 = 4 * (*(&v18 + 1) + 1);
    }

    v15 = TAllocator::allocate(a5, v14);
    if (*(&v18 + 1) >= v18)
    {
      if (v20)
      {
        v21 = 0;
        TBuffer<wchar_t>::insert(&__p, *(&v18 + 1), &v21, 1uLL);
        v16 = __p;
        --*(&v18 + 1);
      }

      else
      {
        v16 = __p;
        if (v18)
        {
          *(__p + v18 - 1) = 0;
        }
      }
    }

    else
    {
      v16 = __p;
      *(__p + *(&v18 + 1)) = 0;
    }

    wcscpy(v15, v16);
    if (v20 == 1 && __p != v19 && __p)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  return 1;
}

void sub_2626CFD04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p)
{
  if (LOBYTE(STACK[0x420]) == 1 && __p != v10)
  {
    if (__p)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t callBackFind(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, TAllocator *a5)
{
  if (a2 != 2 || *a1 > 1uLL || *(a1 + 16) > 1uLL)
  {
    return 0;
  }

  v8 = wcsstr(*(a1 + 8), *(a1 + 24));
  result = 1;
  if (v8)
  {
    v13 = v15;
    v14 = xmmword_26286B6F0;
    v16 = 1;
    v9 = *(a1 + 8);
    {
      operator new();
    }

    TLocaleInfo::valueToString(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, (v8 - v9) >> 2, &v13, 0);
    if ((*(&v14 + 1) + 1) >> 62)
    {
      v10 = -1;
    }

    else
    {
      v10 = 4 * (*(&v14 + 1) + 1);
    }

    v11 = TAllocator::allocate(a5, v10);
    if (*(&v14 + 1) >= v14)
    {
      if (v16)
      {
        v17 = 0;
        TBuffer<wchar_t>::insert(&v13, *(&v14 + 1), &v17, 1uLL);
        v12 = v13;
        --*(&v14 + 1);
      }

      else
      {
        v12 = v13;
        if (v14)
        {
          v13[v14 - 1] = 0;
        }
      }
    }

    else
    {
      v12 = v13;
      v13[*(&v14 + 1)] = 0;
    }

    wcscpy(v11, v12);
    if (v16 == 1 && v13 != v15)
    {
      if (v13)
      {
        MEMORY[0x26672B1B0]();
      }
    }

    return 1;
  }

  return result;
}

void sub_2626CFF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  MEMORY[0x26672B1B0](v10, 0x1070C40ADD13FEBLL);
  if (LOBYTE(STACK[0x420]) == 1 && a10 != v11)
  {
    if (a10)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t callBackCopy(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, TAllocator *a5)
{
  if ((a2 & 0xFFFFFFFFFFFFFFFELL) != 2 || *a1 > 1uLL || a1[2] > 1uLL || a2 == 3 && a1[4] > 1uLL)
  {
    return 0;
  }

  v8 = a1[1];
  v23 = 0;
  v9 = a1[3];
  {
    operator new();
  }

  v10 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v9, &v23);
  if (v23)
  {
    return 0;
  }

  v12 = v10;
  v13 = wcslen(v8);
  v14 = v13 - v12;
  if (v13 >= v12)
  {
    v15 = v13;
    v16 = v13;
    if (a2 == 3)
    {
      v17 = a1[5];
      GlobalLocaleInfo = TLocaleInfo::getGlobalLocaleInfo(v13);
      v19 = TLocaleInfo::stringToUInt(GlobalLocaleInfo, v17, &v23);
      if (v23)
      {
        return 0;
      }

      v16 = v19;
    }

    if (v16 + v12 <= v15)
    {
      v20 = v16;
    }

    else
    {
      v20 = v14;
    }

    if ((v20 + 1) >> 62)
    {
      v21 = -1;
    }

    else
    {
      v21 = 4 * (v20 + 1);
    }

    v22 = TAllocator::allocate(a5, v21);
    wcsncpy(v22, &v8[v12], v20);
    v22[v20] = 0;
  }

  return 1;
}

void sub_2626D0148(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

uint64_t BasisAccum::sizeObject(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    v2 = 0;
    v3 = 0;
  }

  else
  {
    v3 = 12;
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v3 = 8;
    }

    if ((a2 & 0xFFFFFFFE) == 2)
    {
      v2 = v3 | 0x10;
    }

    else
    {
      v4 = *(a1 + 24);
      if (v4 <= 0)
      {
        v5 = 0;
      }

      else
      {
        v5 = 8 * v4;
      }

      v2 = v5 + v3 + 16;
      v6 = *(a1 + 40);
      if (v6 >= 1)
      {
        v3 += 8 * v6;
      }
    }
  }

  return v3 + v2;
}

uint64_t WeightAccum::sizeObject(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    v2 = 0;
    v3 = 0;
  }

  else
  {
    v3 = 12;
    v2 = 8;
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v3 = 8;
    }

    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v4 = *(a1 + 16);
      if (v4 >= 1)
      {
        v3 += 8 * v4;
      }

      v2 = 8;
    }
  }

  return v3 + v2;
}

uint64_t anyTagsMatch(void *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[1];
  v5 = v4 - *a2;
  v6 = v4 == *a2 && v2 == *a1;
  v7 = v2 - v3;
  if (v2 != v3 && v4 != *a2)
  {
    if (v7 <= v5)
    {
      v9 = *a1;
    }

    else
    {
      v9 = *a2;
    }

    if (v7 <= v5)
    {
      v10 = a1;
    }

    else
    {
      v10 = a2;
    }

    v11 = v10[1];
    v12 = v11 - v9;
    if (v11 == v9)
    {
      return 0;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = v12 >> 3;
      if (v7 > v5)
      {
        v16 = a1;
      }

      else
      {
        v3 = *a2;
        v16 = a2;
      }

      v17 = ((v16[1] - v3) >> 3) - 1;
      if (v15 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v15;
      }

      while (v13 > v17)
      {
LABEL_29:
        if (++v14 == v18)
        {
          return 0;
        }
      }

      v19 = *(v9 + 8 * v14);
      v20 = v17;
      while (1)
      {
        v21 = (v13 + v20) >> 1;
        v22 = *(v3 + 8 * v21);
        if (v22 == v19)
        {
          return 1;
        }

        if (v22 > v19)
        {
          if (v13 + v20 < 2)
          {
            goto LABEL_29;
          }

          v20 = v21 - 1;
        }

        else
        {
          v13 = v21 + 1;
        }

        if (v13 > v20)
        {
          goto LABEL_29;
        }
      }
    }
  }

  return v6;
}

void TTag::TTag(TTag *this, const TFileObject *a2, const TTagManager *a3)
{
  v69 = *MEMORY[0x277D85DE8];
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  v52 = this + 48;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v57 = dword_262888720;
  v58 = xmmword_26286B680;
  v59 = -1;
  v60 = dword_262888734;
  v61 = xmmword_26286B680;
  v62 = -1;
  v63 = dword_262888764;
  v64 = xmmword_26286B6A0;
  v65 = -1;
  v66 = dword_262888790;
  v67 = xmmword_26286B6A0;
  v68 = -1;
  if (TFileObject::verify(a2, &v57, 4, 1))
  {
    std::string::basic_string[abi:ne200100]<0>(v53, &byte_262899963);
    *__p = byte_287529580;
    if (SHIBYTE(v54) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], v53[0], v53[1]);
    }

    else
    {
      *&__p[8] = *v53;
      v56 = v54;
    }

    *__p = &unk_287528000;
    if (v56 >= 0)
    {
      v41 = &__p[8];
    }

    else
    {
      v41 = *&__p[8];
    }

    conditionalAssert(v41, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/itn/tagmgr.cpp", 127, v32, v33);
    *__p = byte_287529580;
    if (SHIBYTE(v56) < 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v54) < 0)
    {
      operator delete(v53[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *exception = byte_287529580;
    v43 = (exception + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v43, *__p, *&__p[8]);
    }

    else
    {
      v50 = *__p;
      exception[3] = *&__p[16];
      *&v43->__r_.__value_.__l.__data_ = v50;
    }

    *exception = &unk_287528000;
  }

  *(this + 4) = -1;
  *(this + 10) = 0;
  *(this + 9) = 0;
  for (i = *(a2 + 3); i; i = *(i + 16))
  {
    v7 = *(i + 8);
    if (!wcscmp(v7, dword_262888720))
    {
      if (TFileObject::verify(i, 0, 0))
      {
        std::string::basic_string[abi:ne200100]<0>(v53, &byte_262899963);
        *__p = byte_287529580;
        if (SHIBYTE(v54) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[8], v53[0], v53[1]);
        }

        else
        {
          *&__p[8] = *v53;
          v56 = v54;
        }

        *__p = &unk_287528000;
        if (v56 >= 0)
        {
          v24 = &__p[8];
        }

        else
        {
          v24 = *&__p[8];
        }

        conditionalAssert(v24, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/itn/tagmgr.cpp", 137, v11, v12);
        *__p = byte_287529580;
        if (SHIBYTE(v56) < 0)
        {
          operator delete(*&__p[8]);
        }

        if (SHIBYTE(v54) < 0)
        {
          operator delete(v53[0]);
        }

        v25 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v25 = byte_287529580;
        v26 = (v25 + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v26, *__p, *&__p[8]);
        }

        else
        {
          v40 = *__p;
          v25[3] = *&__p[16];
          *&v26->__r_.__value_.__l.__data_ = v40;
        }

        *v25 = &unk_287528000;
      }

      MEMORY[0x26672AF30](this, *(i + 24));
    }

    else if (!wcscmp(v7, dword_262888734))
    {
      if (TFileObject::verify(i, 0, 0))
      {
        std::string::basic_string[abi:ne200100]<0>(v53, &byte_262899963);
        *__p = byte_287529580;
        if (SHIBYTE(v54) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[8], v53[0], v53[1]);
        }

        else
        {
          *&__p[8] = *v53;
          v56 = v54;
        }

        *__p = &unk_287528000;
        if (v56 >= 0)
        {
          v29 = &__p[8];
        }

        else
        {
          v29 = *&__p[8];
        }

        conditionalAssert(v29, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/itn/tagmgr.cpp", 142, v13, v14);
        *__p = byte_287529580;
        if (SHIBYTE(v56) < 0)
        {
          operator delete(*&__p[8]);
        }

        if (SHIBYTE(v54) < 0)
        {
          operator delete(v53[0]);
        }

        v30 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v30 = byte_287529580;
        v31 = (v30 + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v31, *__p, *&__p[8]);
        }

        else
        {
          v44 = *__p;
          v30[3] = *&__p[16];
          *&v31->__r_.__value_.__l.__data_ = v44;
        }

        *v30 = &unk_287528000;
      }

      MEMORY[0x26672AF30](v52, *(i + 24));
    }

    else if (!wcscmp(v7, dword_262888790))
    {
      if (TFileObject::verify(i, 0, 0))
      {
        std::string::basic_string[abi:ne200100]<0>(v53, &byte_262899963);
        *__p = byte_287529580;
        if (SHIBYTE(v54) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[8], v53[0], v53[1]);
        }

        else
        {
          *&__p[8] = *v53;
          v56 = v54;
        }

        *__p = &unk_287528000;
        if (v56 >= 0)
        {
          v34 = &__p[8];
        }

        else
        {
          v34 = *&__p[8];
        }

        conditionalAssert(v34, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/itn/tagmgr.cpp", 147, v22, v23);
        *__p = byte_287529580;
        if (SHIBYTE(v56) < 0)
        {
          operator delete(*&__p[8]);
        }

        if (SHIBYTE(v54) < 0)
        {
          operator delete(v53[0]);
        }

        v35 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v35 = byte_287529580;
        v36 = (v35 + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v36, *__p, *&__p[8]);
        }

        else
        {
          v48 = *__p;
          v35[3] = *&__p[16];
          *&v36->__r_.__value_.__l.__data_ = v48;
        }

        *v35 = &unk_287528000;
      }

      v9 = (*(*a3 + 16))(a3, *(i + 24));
      *(this + 4) = v9;
      if (v9 == -1)
      {
        loggableUnicode(*(i + 24), __p);
        if (__p[23] >= 0)
        {
          v19 = __p;
        }

        else
        {
          v19 = *__p;
        }

        tknPrintf("Error: %sTag hasn't been defined.\n", v15, v16, v17, v18, v19);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        std::string::basic_string[abi:ne200100]<0>(v53, &byte_262899963);
        *__p = byte_287529580;
        if (SHIBYTE(v54) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[8], v53[0], v53[1]);
        }

        else
        {
          *&__p[8] = *v53;
          v56 = v54;
        }

        *__p = &unk_287528000;
        if (v56 >= 0)
        {
          v45 = &__p[8];
        }

        else
        {
          v45 = *&__p[8];
        }

        conditionalAssert(v45, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/itn/tagmgr.cpp", 153, v20, v21);
        *__p = byte_287529580;
        if (SHIBYTE(v56) < 0)
        {
          operator delete(*&__p[8]);
        }

        if (SHIBYTE(v54) < 0)
        {
          operator delete(v53[0]);
        }

        v46 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v46 = byte_287529580;
        v47 = (v46 + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v47, *__p, *&__p[8]);
        }

        else
        {
          v51 = *__p;
          v46[3] = *&__p[16];
          *&v47->__r_.__value_.__l.__data_ = v51;
        }

        *v46 = &unk_287528000;
      }
    }

    else if (!wcscmp(v7, dword_262888764))
    {
      if (TFileObject::verify(i, 0, 0))
      {
        std::string::basic_string[abi:ne200100]<0>(v53, &byte_262899963);
        *__p = byte_287529580;
        if (SHIBYTE(v54) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[8], v53[0], v53[1]);
        }

        else
        {
          *&__p[8] = *v53;
          v56 = v54;
        }

        *__p = &unk_287528000;
        if (v56 >= 0)
        {
          v37 = &__p[8];
        }

        else
        {
          v37 = *&__p[8];
        }

        conditionalAssert(v37, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/itn/tagmgr.cpp", 158, v27, v28);
        *__p = byte_287529580;
        if (SHIBYTE(v56) < 0)
        {
          operator delete(*&__p[8]);
        }

        if (SHIBYTE(v54) < 0)
        {
          operator delete(v53[0]);
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
          v49 = *__p;
          v38[3] = *&__p[16];
          *&v39->__r_.__value_.__l.__data_ = v49;
        }

        *v38 = &unk_287528000;
      }

      __p[0] = 0;
      v8 = *(i + 24);
      {
        operator new();
      }

      *(this + 10) = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v8, __p);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2626D0EE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  MEMORY[0x26672B1B0](a10, 0x1070C40ADD13FEBLL);
  if (*(v27 + 71) < 0)
  {
    operator delete(*a11);
  }

  if (*(v27 + 23) < 0)
  {
    operator delete(*v27);
  }

  _Unwind_Resume(a1);
}

uint64_t TTag::TTag(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 16) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 32) = a4;
  *(a1 + 40) = 0;
  *(a1 + 72) = a3;
  MEMORY[0x26672AF30]();
  return a1;
}

void sub_2626D108C(_Unwind_Exception *a1)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*v2);
  }

  TTag::TTag(v1);
  _Unwind_Resume(a1);
}

void TTagManager::TTagManager(TTagManager *this, TInputStream *a2, TLexiconParamManager *a3, TItnParamManager *a4)
{
  *this = &unk_287528EB8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 66) = 1;
  *(this + 4) = &unk_2875233E8;
  *(this + 5) = 0;
  *(this + 9) = a4;
  ActiveConfigHandle = TParam::getActiveConfigHandle((a4 + 5768));
  if (*(a4 + TParam::getValidConfig((a4 + 5768), ActiveConfigHandle) + 5920) == 1)
  {
    *__p = &v84;
    *&__p[8] = xmmword_26286B6F0;
    v85 = 1;
    TParamManager::begin(a4, v81);
    while (1)
    {
      TParamManager::end(a4, v79);
      if (*v81 == *v79)
      {
        break;
      }

      v9 = *(*v81 + 40);
      if (v9 && (v10 = v9 - 1, v11 = *(a4 + 3), v10 < (*(a4 + 4) - v11) >> 3))
      {
        v12 = *(v11 + 8 * v10);
      }

      else
      {
        v12 = 0;
      }

      if ((v12[111] & 0x8000000000000000) != 0)
      {
        if (*(v12 + 12))
        {
          goto LABEL_50;
        }
      }

      else if (v12[111])
      {
        goto LABEL_50;
      }

      v13 = *(v12 + 2);
      if (v13 == 4)
      {
        v18 = **v12;
        if (v19[164] != v19[163])
        {
          v20 = v19;
          TBuffer<wchar_t>::assign(__p, dword_2628887BC);
          v21 = (v12 + 16);
          if (v12[39] < 0)
          {
            v21 = *v21;
          }

          v22 = 0;
            ;
          }

          TBuffer<wchar_t>::insert(__p, *&__p[16], v21, v22 - 1);
          *v79 = 61;
          TBuffer<wchar_t>::insert(__p, *&__p[16], v79, 1uLL);
          v24 = v20[163];
          if (v20[164] != v24)
          {
            v25 = 0;
            v26 = *&__p[16];
            do
            {
              v27 = (v24 + 24 * v25);
              if (*(v27 + 23) < 0)
              {
                v27 = *v27;
              }

              v28 = 0;
                ;
              }

              TBuffer<wchar_t>::insert(__p, *&__p[16], v27, v28 - 1);
              if (*&__p[16] >= *&__p[8])
              {
                if (v85)
                {
                  *v79 = 0;
                  TBuffer<wchar_t>::insert(__p, *&__p[16], v79, 1uLL);
                  --*&__p[16];
                }

                else if (*&__p[8])
                {
                  *(*__p + 4 * *&__p[8] - 4) = 0;
                }
              }

              else
              {
                *(*__p + 4 * *&__p[16]) = 0;
              }

              TTagManager::addParamTag(this);
              TBuffer<wchar_t>::resize(__p, v26);
              ++v25;
              v24 = v20[163];
            }

            while (v25 < 0xAAAAAAAAAAAAAAABLL * ((v20[164] - v24) >> 3));
          }
        }
      }

      else if (!v13)
      {
        TBuffer<wchar_t>::assign(__p, dword_2628887A0);
        v14 = (v12 + 16);
        if (v12[39] < 0)
        {
          v14 = *v14;
        }

        v15 = 0;
          ;
        }

        TBuffer<wchar_t>::insert(__p, *&__p[16], v14, v15 - 1);
        *v79 = 61;
        TBuffer<wchar_t>::insert(__p, *&__p[16], v79, 1uLL);
        v17 = *&__p[16];
        *v79 = 48;
        TBuffer<wchar_t>::insert(__p, *&__p[16], v79, 1uLL);
        if (*&__p[16] >= *&__p[8])
        {
          if (v85)
          {
            *v79 = 0;
            TBuffer<wchar_t>::insert(__p, *&__p[16], v79, 1uLL);
            --*&__p[16];
          }

          else if (*&__p[8])
          {
            *(*__p + 4 * *&__p[8] - 4) = 0;
          }
        }

        else
        {
          *(*__p + 4 * *&__p[16]) = 0;
        }

        TTagManager::addParamTag(this);
        TBuffer<wchar_t>::resize(__p, v17);
        *v79 = 49;
        TBuffer<wchar_t>::insert(__p, *&__p[16], v79, 1uLL);
        if (*&__p[16] >= *&__p[8])
        {
          if (v85)
          {
            *v79 = 0;
            TBuffer<wchar_t>::insert(__p, *&__p[16], v79, 1uLL);
            --*&__p[16];
          }

          else if (*&__p[8])
          {
            *(*__p + 4 * *&__p[8] - 4) = 0;
          }
        }

        else
        {
          *(*__p + 4 * *&__p[16]) = 0;
        }

        TTagManager::addParamTag(this);
      }

LABEL_50:
      v30 = *v81;
      v31 = *(*v81 + 8);
      if (v31)
      {
        do
        {
          v32 = v31;
          v31 = *v31;
        }

        while (v31);
      }

      else
      {
        do
        {
          v32 = v30[2];
          v33 = *v32 == v30;
          v30 = v32;
        }

        while (!v33);
      }

      *v81 = v32;
    }

    TParamManager::begin(a3, v81);
    while (1)
    {
      TParamManager::end(a3, v79);
      if (*v81 == *v79)
      {
        TTagManager::addTag(this, dword_2628887D8);
      }

      v34 = *(*v81 + 40);
      if (v34 && (v35 = v34 - 1, v36 = *(a3 + 3), v35 < (*(a3 + 4) - v36) >> 3))
      {
        v37 = *(v36 + 8 * v35);
      }

      else
      {
        v37 = 0;
      }

      v38 = (v37 + 16);
      v39 = (v37 + 16);
      if (v37[39] < 0)
      {
        v39 = *v38;
      }

      TParamManager::find(a4, v39, v79);
      TParamManager::end(a4, v77);
      if (*v79 != v77[0])
      {
        v40 = *(*v79 + 40);
        if (v40)
        {
          v41 = v40 - 1;
          v42 = *(a4 + 3);
          if (v41 >= (*(a4 + 4) - v42) >> 3)
          {
            v40 = 0;
          }

          else
          {
            v40 = *(v42 + 8 * v41);
          }
        }

        if ((*(v40 + 111) & 0x8000000000000000) != 0)
        {
          if (!*(v40 + 96))
          {
            goto LABEL_111;
          }
        }

        else if (!*(v40 + 111))
        {
          goto LABEL_111;
        }
      }

      v43 = *(v37 + 2);
      if (v43 == 4)
      {
        v47 = **v37;
        if (v48[164] != v48[163])
        {
          v49 = v48;
          TBuffer<wchar_t>::assign(__p, dword_2628887BC);
          if (v37[39] < 0)
          {
            v38 = *v38;
          }

          v50 = 0;
            ;
          }

          TBuffer<wchar_t>::insert(__p, *&__p[16], v38, v50 - 1);
          LODWORD(v77[0]) = 61;
          TBuffer<wchar_t>::insert(__p, *&__p[16], v77, 1uLL);
          v52 = v49[163];
          if (v49[164] != v52)
          {
            v53 = 0;
            v54 = *&__p[16];
            do
            {
              v55 = (v52 + 24 * v53);
              if (*(v55 + 23) < 0)
              {
                v55 = *v55;
              }

              v56 = 0;
                ;
              }

              TBuffer<wchar_t>::insert(__p, *&__p[16], v55, v56 - 1);
              if (*&__p[16] >= *&__p[8])
              {
                if (v85)
                {
                  LODWORD(v77[0]) = 0;
                  TBuffer<wchar_t>::insert(__p, *&__p[16], v77, 1uLL);
                  --*&__p[16];
                }

                else if (*&__p[8])
                {
                  *(*__p + 4 * *&__p[8] - 4) = 0;
                }
              }

              else
              {
                *(*__p + 4 * *&__p[16]) = 0;
              }

              TTagManager::addParamTag(this);
              TBuffer<wchar_t>::resize(__p, v54);
              ++v53;
              v52 = v49[163];
            }

            while (v53 < 0xAAAAAAAAAAAAAAABLL * ((v49[164] - v52) >> 3));
          }
        }
      }

      else if (!v43)
      {
        TBuffer<wchar_t>::assign(__p, dword_2628887A0);
        if (v37[39] < 0)
        {
          v38 = *v38;
        }

        v44 = 0;
          ;
        }

        TBuffer<wchar_t>::insert(__p, *&__p[16], v38, v44 - 1);
        LODWORD(v77[0]) = 61;
        TBuffer<wchar_t>::insert(__p, *&__p[16], v77, 1uLL);
        v46 = *&__p[16];
        LODWORD(v77[0]) = 48;
        TBuffer<wchar_t>::insert(__p, *&__p[16], v77, 1uLL);
        if (*&__p[16] >= *&__p[8])
        {
          if (v85)
          {
            LODWORD(v77[0]) = 0;
            TBuffer<wchar_t>::insert(__p, *&__p[16], v77, 1uLL);
            --*&__p[16];
          }

          else if (*&__p[8])
          {
            *(*__p + 4 * *&__p[8] - 4) = 0;
          }
        }

        else
        {
          *(*__p + 4 * *&__p[16]) = 0;
        }

        TTagManager::addParamTag(this);
        TBuffer<wchar_t>::resize(__p, v46);
        LODWORD(v77[0]) = 49;
        TBuffer<wchar_t>::insert(__p, *&__p[16], v77, 1uLL);
        if (*&__p[16] >= *&__p[8])
        {
          if (v85)
          {
            LODWORD(v77[0]) = 0;
            TBuffer<wchar_t>::insert(__p, *&__p[16], v77, 1uLL);
            --*&__p[16];
          }

          else if (*&__p[8])
          {
            *(*__p + 4 * *&__p[8] - 4) = 0;
          }
        }

        else
        {
          *(*__p + 4 * *&__p[16]) = 0;
        }

        TTagManager::addParamTag(this);
      }

LABEL_111:
      v58 = *v81;
      v59 = *(*v81 + 8);
      if (v59)
      {
        do
        {
          v60 = v59;
          v59 = *v59;
        }

        while (v59);
      }

      else
      {
        do
        {
          v60 = v58[2];
          v33 = *v60 == v58;
          v58 = v60;
        }

        while (!v33);
      }

      *v81 = v60;
    }
  }

  if (*(a2 + 8) == 1)
  {
    v61 = *getItnTagVersion();
    ItnTagVersion = getItnTagVersion();
    if (TInputStream::verifyHeader(a2, "ItnTag", v61, (ItnTagVersion[1] - *ItnTagVersion) >> 5))
    {
      std::string::basic_string[abi:ne200100]<0>(v81, &byte_262899963);
      *__p = byte_287529580;
      if ((v81[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&__p[8], *v81, *&v81[8]);
      }

      else
      {
        *&__p[8] = *v81;
        v84 = *&v81[16];
      }

      *__p = &unk_287528000;
      if (v84 >= 0)
      {
        v69 = &__p[8];
      }

      else
      {
        v69 = *&__p[8];
      }

      conditionalAssert(v69, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/itn/tagmgr.cpp", 286, v65, v66);
      *__p = byte_287529580;
      if (SHIBYTE(v84) < 0)
      {
        operator delete(*&__p[8]);
      }

      if ((v81[23] & 0x80000000) != 0)
      {
        operator delete(*v81);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *exception = byte_287529580;
      v71 = (exception + 1);
      if ((__p[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v71, *__p, *&__p[8]);
      }

      else
      {
        v75 = *__p;
        exception[3] = *&__p[16];
        *&v71->__r_.__value_.__l.__data_ = v75;
      }

      *exception = &unk_287528000;
    }

    TFileObjectParser::TFileObjectParser(__p, a2);
    v63 = *__p;
    *v81 = &unk_262888AC8;
    *&v81[8] = xmmword_26286B6D0;
    v82 = -1;
    if (TFileObject::verify(*__p, v81, 1, 1))
    {
      std::string::basic_string[abi:ne200100]<0>(v77, &byte_262899963);
      *v79 = byte_287529580;
      if (SHIBYTE(v78) < 0)
      {
        std::string::__init_copy_ctor_external(&v79[8], v77[0], v77[1]);
      }

      else
      {
        *&v79[8] = *v77;
        v80 = v78;
      }

      *v79 = &unk_287528000;
      if (v80 >= 0)
      {
        v72 = &v79[8];
      }

      else
      {
        v72 = *&v79[8];
      }

      conditionalAssert(v72, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/itn/tagmgr.cpp", 298, v67, v68);
      *v79 = byte_287529580;
      if (SHIBYTE(v80) < 0)
      {
        operator delete(*&v79[8]);
      }

      if (SHIBYTE(v78) < 0)
      {
        operator delete(v77[0]);
      }

      v73 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v79, &byte_262899963);
      *v73 = byte_287529580;
      v74 = (v73 + 1);
      if ((v79[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v74, *v79, *&v79[8]);
      }

      else
      {
        v76 = *v79;
        v73[3] = *&v79[16];
        *&v74->__r_.__value_.__l.__data_ = v76;
      }

      *v73 = &unk_287528000;
    }

    v64 = *(v63 + 24);
    if (v64)
    {
      TTagManager::addTag(this, v64);
    }

    TFileObjectParser::~TFileObjectParser(__p);
  }
}

void sub_2626D2134(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  THashBase<std::pair<wchar_t const* const,TTag const*>,THashMapCompare<std::pair<wchar_t const* const,TTag const*>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TTag const*>,THash<wchar_t const*>>>::~THashBase(v4);
  v3 = *v5;
  if (*v5)
  {
    *(v1 + 16) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void sub_2626D2178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (LOBYTE(STACK[0x490]) == 1 && a24 != a9 && a24 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  (THashBase<std::pair<wchar_t const* const,TTag const*>,THashMapCompare<std::pair<wchar_t const* const,TTag const*>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TTag const*>,THash<wchar_t const*>>>::~THashBase)();
  v27 = *v28;
  if (*v28)
  {
    *(v24 + 16) = v27;
    operator delete(v27);
  }

  _Unwind_Resume(a1);
}

uint64_t TTagManager::addParamTag(uint64_t a1)
{
  result = (*(*a1 + 16))(a1);
  if (result == -1)
  {
    operator new();
  }

  return result;
}

void TTagManager::addTag(uint64_t a1, unsigned int *a2)
{
  if ((*(*a1 + 16))(a1) == -1)
  {
    operator new();
  }

  loggableUnicode(a2, __p);
  if (__p[23] >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = *__p;
  }

  tknPrintf("Error: Tag name already defined: '%s'\n", v3, v4, v5, v6, v7);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  std::string::basic_string[abi:ne200100]<0>(v14, &byte_262899963);
  *__p = byte_287529580;
  if (SHIBYTE(v15) < 0)
  {
    std::string::__init_copy_ctor_external(&__p[8], v14[0], v14[1]);
  }

  else
  {
    *&__p[8] = *v14;
    v17 = v15;
  }

  *__p = &unk_287528000;
  if (v17 >= 0)
  {
    v10 = &__p[8];
  }

  else
  {
    v10 = *&__p[8];
  }

  conditionalAssert(v10, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/itn/tagmgr.cpp", 364, v8, v9);
  *__p = byte_287529580;
  if (SHIBYTE(v17) < 0)
  {
    operator delete(*&__p[8]);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
  *exception = byte_287529580;
  v12 = (exception + 1);
  if ((__p[23] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(v12, *__p, *&__p[8]);
  }

  else
  {
    v13 = *__p;
    exception[3] = *&__p[16];
    *&v12->__r_.__value_.__l.__data_ = v13;
  }

  *exception = &unk_287528000;
}

void sub_2626D250C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, void *a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v25);
  goto LABEL_6;
}

uint64_t getItnTagVersion(void)
{
  v2 = *MEMORY[0x277D85DE8];
  {
    operator new();
  }

  result = getItnTagVersion(void)::pItnTagVersion;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2626D267C(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v1, 0x20C40960023A9);
  _Unwind_Resume(a1);
}

void sub_2626D2928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, void *a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v25);
  goto LABEL_6;
}

void *TTagManager::freeMemory(TTagManager *this)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 8 * v4);
      if (v5)
      {
        TTag::~TTag(v5);
        MEMORY[0x26672B1B0]();
        v3 = *(this + 1);
        v2 = *(this + 2);
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  return THashBase<std::pair<wchar_t const* const,TTag const*>,THashMapCompare<std::pair<wchar_t const* const,TTag const*>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TTag const*>,THash<wchar_t const*>>>::clear(this + 4);
}

void TTagManager::~TTagManager(TTagManager *this)
{
  *this = &unk_287528EB8;
  TTagManager::freeMemory(this);
  THashBase<std::pair<wchar_t const* const,TTag const*>,THashMapCompare<std::pair<wchar_t const* const,TTag const*>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TTag const*>,THash<wchar_t const*>>>::~THashBase(this + 4);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  TTagManager::~TTagManager(this);

  JUMPOUT(0x26672B1B0);
}

void *THashBase<std::pair<wchar_t const* const,TTag const*>,THashMapCompare<std::pair<wchar_t const* const,TTag const*>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TTag const*>,THash<wchar_t const*>>>::clear(void *result)
{
  v1 = result;
  v2 = result[2];
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = v1[1];
      result = *(v4 + 8 * i);
      if (result)
      {
        do
        {
          v5 = *result;
          MEMORY[0x26672B1B0]();
          result = v5;
        }

        while (v5);
        v4 = v1[1];
        v2 = v1[2];
      }

      *(v4 + 8 * i) = 0;
    }
  }

  v1[3] = 0;
  return result;
}

unint64_t TTagManager::storeTag(TTagManager *this, TTag *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(this + 1);
  v9 = *(this + 2);
  v7 = this + 8;
  v10 = *(v7 + 2);
  v11 = (v9 - v8) >> 3;
  v12 = v11 + 1;
  *(a2 + 3) = v11 + 1;
  if (v9 >= v10)
  {
    if (v12 >> 61)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v14 = v10 - v8;
    v15 = v14 >> 2;
    if (v14 >> 2 <= v12)
    {
      v15 = v11 + 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v16 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v15;
    }

    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TParam *>>(v7, v16);
    }

    *(8 * v11) = a2;
    v13 = 8 * v11 + 8;
    v17 = *(this + 1);
    v18 = *(this + 2) - v17;
    v19 = (8 * v11 - v18);
    memcpy(v19, v17, v18);
    v20 = *(this + 1);
    *(this + 1) = v19;
    *(this + 2) = v13;
    *(this + 3) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v9 = a2;
    v13 = (v9 + 1);
  }

  *(this + 2) = v13;
  v21 = a2;
  if (*(a2 + 23) < 0)
  {
    v21 = *a2;
  }

  v24[0] = v21;
  v24[1] = a2;
  THashBase<std::pair<wchar_t const* const,TTag const*>,THashMapCompare<std::pair<wchar_t const* const,TTag const*>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TTag const*>,THash<wchar_t const*>>>::insert(this + 32, v24, a3, a4, a5, &v23);
  return v12;
}

uint64_t TTagManager::addWordRuleTag(uint64_t a1)
{
  result = (*(*a1 + 16))(a1);
  if (result == -1)
  {
    operator new();
  }

  return result;
}

uint64_t THashBase<std::pair<wchar_t const* const,TTag const*>,THashMapCompare<std::pair<wchar_t const* const,TTag const*>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TTag const*>,THash<wchar_t const*>>>::insert@<X0>(uint64_t a1@<X0>, const __int32 **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *(a1 + 24);
  if (v8 == *(a1 + 16))
  {
    if (v8)
    {
      if (*(a1 + 34) == 1)
      {
        tknPrintf("Warning: hashtable resizing, size was %llu\n", a2, a3, a4, a5, *(a1 + 24));
        v8 = *(a1 + 16);
      }

      v9 = 2 * v8;
    }

    else
    {
      v9 = 10781;
    }

    THashBase<std::pair<wchar_t const* const,TWord *>,THashMapCompare<std::pair<wchar_t const* const,TWord *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TWord *>,THash<wchar_t const*>>>::resize(a1, v9);
  }

  v10 = *a2;
  v11 = wcslen(*a2);
  v12 = 0;
  v13 = 4 * v11;
  if (4 * v11)
  {
    v14 = v10;
    do
    {
      v15 = *v14;
      v14 = (v14 + 1);
      v12 = 33 * v12 + v15;
      --v13;
    }

    while (v13);
  }

  v17 = *(a1 + 8);
  v16 = *(a1 + 16);
  v18 = (v17 + 8 * (v12 % v16));
  v19 = v18;
  do
  {
    v19 = *v19;
    if (!v19)
    {
      operator new();
    }

    result = wcscmp(v19[1], v10);
  }

  while (result);
  *a6 = v18;
  *(a6 + 8) = v17 + 8 * v16;
  *(a6 + 16) = v19;
  *(a6 + 24) = 0;
  return result;
}

uint64_t TTagManager::getAllTags(uint64_t result, uint64_t a2)
{
  if (*(result + 16) != *(result + 8))
  {
    v7[5] = v2;
    v7[6] = v3;
    v5 = result;
    v6 = 0;
    do
    {
      v7[0] = ++v6;
      result = TBuffer<TPItnRuleHandle_fake **>::insert(a2, *(a2 + 16), v7, 1uLL);
    }

    while (v6 < (*(v5 + 16) - *(v5 + 8)) >> 3);
  }

  return result;
}

uint64_t TTagManager::getTag(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (a2 - 1 >= ((*(a1 + 16) - v2) >> 3))
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * (a2 - 1));
  }
}

uint64_t TTagManager::getTag(uint64_t a1, const __int32 *a2)
{
  v5[0] = a2;
  v5[1] = 0;
  THashBase<std::pair<wchar_t const* const,TWord *>,THashMapCompare<std::pair<wchar_t const* const,TWord *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TWord *>,THash<wchar_t const*>>>::find(a1 + 32, v5, &v3);
  if (v4)
  {
    return *(*(v4 + 16) + 24);
  }

  else
  {
    return -1;
  }
}

uint64_t TTagManager::getTagName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (a2 - 1 >= ((*(a1 + 16) - v3) >> 3))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v3 + 8 * (a2 - 1));
  }

  if (*(v4 + 23) < 0)
  {
    v4 = *v4;
  }

  return TBuffer<wchar_t>::assign(a3, v4);
}

uint64_t TTagManager::getTagDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 8) + 8 * a2 - 8);
  v4 = (v3 + 48);
  if (*(v3 + 71) < 0)
  {
    v4 = *v4;
  }

  return TBuffer<wchar_t>::assign(a3, v4);
}

uint64_t std::vector<TFileVersionDescriptor>::__init_with_size[abi:ne200100]<TFileVersionDescriptor const*,TFileVersionDescriptor const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<TFileVersionDescriptor>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2626D3074(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<TFileVersionDescriptor>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TFileVersionDescriptor>>(a1, a2);
  }

  std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TFileVersionDescriptor>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *THashBase<std::pair<wchar_t const* const,TTag const*>,THashMapCompare<std::pair<wchar_t const* const,TTag const*>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TTag const*>,THash<wchar_t const*>>>::~THashBase(void *a1)
{
  *a1 = &unk_287522D28;
  THashBase<std::pair<wchar_t const* const,TTag const*>,THashMapCompare<std::pair<wchar_t const* const,TTag const*>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TTag const*>,THash<wchar_t const*>>>::clear(a1);
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x26672B190](v2, 0x20C8093837F09);
  }

  return a1;
}

void THashBase<std::pair<wchar_t const* const,TTag const*>,THashMapCompare<std::pair<wchar_t const* const,TTag const*>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TTag const*>,THash<wchar_t const*>>>::~THashBase(void *a1)
{
  THashBase<std::pair<wchar_t const* const,TTag const*>,THashMapCompare<std::pair<wchar_t const* const,TTag const*>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TTag const*>,THash<wchar_t const*>>>::~THashBase(a1);

  JUMPOUT(0x26672B1B0);
}

void TTag::~TTag(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void THashMap<wchar_t const*,TTag const*,THash<wchar_t const*>,TWideCharEqualTo>::~THashMap(void *a1)
{
  THashBase<std::pair<wchar_t const* const,TTag const*>,THashMapCompare<std::pair<wchar_t const* const,TTag const*>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TTag const*>,THash<wchar_t const*>>>::~THashBase(a1);

  JUMPOUT(0x26672B1B0);
}

DgnString *GetFullMrecDescription(DgnString *a1)
{
  DgnString::operator=(a1, "MREC");
  DgnString::operator+=(a1, " ");
  DgnString::operator+=(a1, "v1.24.000.15488");
  DgnString::operator+=(a1, " - The modular recognizer\n");
  DgnString::operator+=(a1, "MREC");
  DgnString::operator+=(a1, " Build ");
  DgnString::operator+=(a1, "imgls");
  DgnString::operator+=(a1, " (");
  DgnString::operator+=(a1, "ARM");
  DgnString::operator+=(a1, " ");
  DgnString::operator+=(a1, "MacOS");
  DgnString::operator+=(a1, " ");
  DgnString::operator+=(a1, "GNU_C/C++");
  DgnString::operator+=(a1, " ");
  DgnString::operator+=(a1, "4.2.1");
  DgnString::operator+=(a1, " ");
  DgnString::operator+=(a1, "Large");
  DgnString::operator+=(a1, " ");
  DgnString::operator+=(a1, "Ship");
  DgnString::operator+=(a1, ")\n");
  DgnString::operator+=(a1, "MREC");
  DgnString::operator+=(a1, " Compiled ");
  MrecTime::MrecTime(v3);
  MrecTime::setToPreprocessorStyleDateAndTime(v3, "Oct 10 2025", "21:28:25");
  MrecTime::formatAndAppendToString(v3, a1);
  DgnString::operator+=(a1, "\n");
  DgnString::operator+=(a1, "MREC");
  DgnString::operator+=(a1, " ");
  DgnString::operator+=(a1, "Copyright (c) -  All rights reserved.");
  return DgnString::operator+=(a1, "\n");
}

uint64_t InternalCompareMrecVersions(const char *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = 0;
  v26 = 0;
  ParseMrecVersion(a1, &v25, a3, a4, a5, a6, a7, a8);
  v24[0] = 0;
  v24[1] = 0;
  ParseMrecVersion(a2, v24, v9, v10, v11, v12, v13, v14);
  v15 = v26;
  if (v26)
  {
    v16 = v25;
    v17 = v24[0];
    while (1)
    {
      v19 = *v16++;
      v18 = v19;
      v20 = *v17++;
      v21 = v18 >= v20;
      if (v18 > v20)
      {
        break;
      }

      if (!v21)
      {
        v22 = 0xFFFFFFFFLL;
        goto LABEL_9;
      }

      if (!--v15)
      {
        goto LABEL_7;
      }
    }

    v22 = 1;
  }

  else
  {
LABEL_7:
    v22 = 0;
  }

LABEL_9:
  DgnPrimArray<unsigned int>::~DgnPrimArray(v24);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v25);
  return v22;
}

void sub_2626D34DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a11);
  _Unwind_Resume(a1);
}

void ParseMrecVersion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 0;
  v10 = MEMORY[0x277D85DE0];
  *(a2 + 8) = 0;
  do
  {
    while (1)
    {
      v11 = 0;
      v12 = *(a1 + v9);
      do
      {
        if ((v12 & 0x80) != 0 || (*(v10 + 4 * v12 + 60) & 0x400) == 0)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/mrecver.cpp", 215, "mrecutil/mrecver", 1, "%.500s", a7, a8, a1);
          LOBYTE(v12) = *(a1 + v9);
        }

        v13 = v12 - 48;
        if ((~(v12 - 48) | 0xFFFFFF01) / 0xA < v11)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/mrecver.cpp", 219, "mrecutil/mrecver", 1, "%.500s", a7, a8, a1);
        }

        v11 = v13 + 10 * v11;
        v12 = *(a1 + ++v9);
        if (v12 == 46)
        {
          v14 = 1;
        }

        else
        {
          v14 = v12 == 0;
          *(a1 + v9);
        }
      }

      while (!v14);
      v15 = *(a2 + 8);
      if (v15 == *(a2 + 12))
      {
        DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
        v15 = *(a2 + 8);
      }

      v16 = *a2;
      *(*a2 + 4 * v15) = v11;
      v17 = *(a2 + 8);
      v18 = v17 + 1;
      *(a2 + 8) = v17 + 1;
      if (*(a1 + v9) != 46)
      {
        break;
      }

      ++v9;
    }
  }

  while (*(a1 + v9));
  if (v17 == 3)
  {
    if (v18 == *(a2 + 12))
    {
      DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
      v21 = *(a2 + 8);
      v16 = *a2;
    }

    else
    {
      v21 = 4;
    }

    *(v16 + 4 * v21) = 0;
  }

  else
  {
    if (v17 != 2)
    {
      goto LABEL_34;
    }

    v19 = *(v16 + 8);
    if (v18 == *(a2 + 12))
    {
      DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
      v20 = *(a2 + 8);
      v16 = *a2;
    }

    else
    {
      v20 = 3;
    }

    *(v16 + 4 * v20) = v19;
    ++*(a2 + 8);
    *(v16 + 8) = 0;
    v22 = *(a2 + 8);
    if (v22 == *(a2 + 12))
    {
      DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
      v22 = *(a2 + 8);
      v16 = *a2;
    }

    *(v16 + 4 * v22) = 0;
  }

  v23 = *(a2 + 12);
  v24 = *(a2 + 8) + 1;
  *(a2 + 8) = v24;
  if (v24 == v23)
  {
    DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
    v24 = *(a2 + 8);
    v16 = *a2;
  }

  *(v16 + 4 * v24) = 0;
  v18 = *(a2 + 8) + 1;
  *(a2 + 8) = v18;
LABEL_34:
  if (v18 != 6)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/mrecver.cpp", 247, "mrecutil/mrecver", 1, "%.500s", a7, a8, a1);
  }
}

uint64_t InternalCompareMrecForkVersions(const char *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[0] = 0;
  v23[1] = 0;
  ParseMrecVersion(a1, v23, a3, a4, a5, a6, a7, a8);
  v22[0] = 0;
  v22[1] = 0;
  ParseMrecVersion(a2, v22, v9, v10, v11, v12, v13, v14);
  v15 = 0;
  v16 = 0;
  do
  {
    v17 = *(v23[0] + 4 * v16);
    v18 = *(v22[0] + 4 * v16);
    if (v17 > v18)
    {
      v20 = 1;
      goto LABEL_8;
    }

    v19 = v15 ^ 1;
    v15 = 1;
    v16 = 1;
  }

  while (((v17 >= v18) & v19) != 0);
  if (v17 >= v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = 0xFFFFFFFFLL;
  }

LABEL_8:
  DgnPrimArray<unsigned int>::~DgnPrimArray(v22);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v23);
  return v20;
}

void sub_2626D382C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a11);
  _Unwind_Resume(a1);
}

void MrecInitModule_fmpe_pel(void)
{
  if (!gParDebugFmpe)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugFmpe", &unk_262888BC0, &unk_262888BC0, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugFmpe = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugFmpe);
  }
}

void FmpeMgr::~FmpeMgr(PelMgr **this)
{
  DgnDelete<PelMgr>(this[14]);
  DgnPrimFixArray<double>::~DgnPrimFixArray((this + 18));
  DgnPrimFixArray<double>::~DgnPrimFixArray((this + 15));
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll((this + 11));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 8));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 6));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 4));
}

void FmpeMgr::printSize(FmpeMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/fmpe.cpp", 231, &v144);
  if (v145)
  {
    v16 = v144;
  }

  else
  {
    v16 = &unk_262888BC0;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_262888BC0, a3, &unk_262888BC0, v16);
  DgnString::~DgnString(&v144);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_262888BC0);
  v21 = *(this + 14);
  if (v21)
  {
    v143 = 0;
    v144 = 0;
    v22 = (a3 + 1);
    v142 = 0;
    PelMgr::printSize(v21, 0xFFFFFFFFLL, v22, &v144, &v143, &v142);
    *a4 += v144;
    *a5 += v143;
    *a6 += v142;
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
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/fmpe.cpp", 233, &v144);
  if (v145)
  {
    v29 = v144;
  }

  else
  {
    v29 = &unk_262888BC0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, v26, v27, v28, v22, &unk_262888BC0, (34 - a3), (34 - a3), v29, v23, v23, 0);
  DgnString::~DgnString(&v144);
  *a4 += v23;
  *a5 += v23;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/fmpe.cpp", 235, &v144);
  if (v145)
  {
    v34 = v144;
  }

  else
  {
    v34 = &unk_262888BC0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, v31, v32, v33, v22, &unk_262888BC0, (34 - a3), (34 - a3), v34, 4, 4, 0);
  DgnString::~DgnString(&v144);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/fmpe.cpp", 235, &v144);
  if (v145)
  {
    v39 = v144;
  }

  else
  {
    v39 = &unk_262888BC0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, v36, v37, v38, v22, &unk_262888BC0, (34 - a3), (34 - a3), v39, 4, 4, 0);
  DgnString::~DgnString(&v144);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/fmpe.cpp", 235, &v144);
  if (v145)
  {
    v44 = v144;
  }

  else
  {
    v44 = &unk_262888BC0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, v41, v42, v43, v22, &unk_262888BC0, (34 - a3), (34 - a3), v44, 4, 4, 0);
  DgnString::~DgnString(&v144);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/fmpe.cpp", 235, &v144);
  if (v145)
  {
    v49 = v144;
  }

  else
  {
    v49 = &unk_262888BC0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v45, v46, v47, v48, v22, &unk_262888BC0, (34 - a3), (34 - a3), v49, 4, 4, 0);
  v141 = a3;
  DgnString::~DgnString(&v144);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/fmpe.cpp", 235, &v144);
  if (v145)
  {
    v54 = v144;
  }

  else
  {
    v54 = &unk_262888BC0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v50, v51, v52, v53, v22, &unk_262888BC0, (34 - a3), (34 - a3), v54, 4, 4, 0);
  DgnString::~DgnString(&v144);
  *a4 += 4;
  *a5 += 4;
  v55 = sizeObject<DgnPrimArray<double>>(this + 88, 0);
  v56 = sizeObject<DgnPrimArray<double>>(this + 88, 1);
  v144 = 0;
  v145 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v144);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/fmpe.cpp", 235, &v144);
  if (v145)
  {
    v61 = v144;
  }

  else
  {
    v61 = &unk_262888BC0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v57, v58, v59, v60, v22, &unk_262888BC0, v24, v24, v61, v55, v56, 0);
  DgnString::~DgnString(&v144);
  *a4 += v55;
  *a5 += v56;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/fmpe.cpp", 235, &v144);
  if (v145)
  {
    v66 = v144;
  }

  else
  {
    v66 = &unk_262888BC0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v62, v63, v64, v65, v22, &unk_262888BC0, v24, v24, v66, 4, 4, 0);
  DgnString::~DgnString(&v144);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/fmpe.cpp", 235, &v144);
  if (v145)
  {
    v71 = v144;
  }

  else
  {
    v71 = &unk_262888BC0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v67, v68, v69, v70, v22, &unk_262888BC0, v24, v24, v71, 4, 4, 0);
  DgnString::~DgnString(&v144);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v72 = 12;
  }

  else
  {
    v72 = 16;
  }

  v73 = *(this + 10);
  v74 = *(this + 11);
  if (v74 >= v73)
  {
    v75 = 0;
    if (v73 > 0)
    {
      v72 += 2 * (v73 - 1) + 2;
    }

    v76 = v72 + 2 * (v74 - v73);
  }

  else
  {
    v75 = 2 * v73;
    v76 = v72;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/fmpe.cpp", 235, &v144);
  if (v145)
  {
    v81 = v144;
  }

  else
  {
    v81 = &unk_262888BC0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v77, v78, v79, v80, v22, &unk_262888BC0, v24, v24, v81, v76, v72, v75);
  DgnString::~DgnString(&v144);
  *a4 += v76;
  *a5 += v72;
  *a6 += v75;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v82 = 12;
  }

  else
  {
    v82 = 16;
  }

  v83 = *(this + 18);
  v84 = *(this + 19);
  if (v84 >= v83)
  {
    v85 = 0;
    if (v83 > 0)
    {
      v82 += 2 * (v83 - 1) + 2;
    }

    v86 = v82 + 2 * (v84 - v83);
  }

  else
  {
    v85 = 2 * v83;
    v86 = v82;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/fmpe.cpp", 235, &v144);
  if (v145)
  {
    v91 = v144;
  }

  else
  {
    v91 = &unk_262888BC0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v87, v88, v89, v90, v22, &unk_262888BC0, v24, v24, v91, v86, v82, v85);
  DgnString::~DgnString(&v144);
  *a4 += v86;
  *a5 += v82;
  *a6 += v85;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v92 = 12;
  }

  else
  {
    v92 = 16;
  }

  v93 = *(this + 14);
  v94 = *(this + 15);
  if (v94 >= v93)
  {
    v95 = 0;
    if (v93 > 0)
    {
      v92 += 4 * (v93 - 1) + 4;
    }

    v96 = v92 + 4 * (v94 - v93);
  }

  else
  {
    v95 = 4 * v93;
    v96 = v92;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/fmpe.cpp", 235, &v144);
  if (v145)
  {
    v101 = v144;
  }

  else
  {
    v101 = &unk_262888BC0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v97, v98, v99, v100, v22, &unk_262888BC0, v24, v24, v101, v96, v92, v95);
  DgnString::~DgnString(&v144);
  *a4 += v96;
  *a5 += v92;
  *a6 += v95;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/fmpe.cpp", 235, &v144);
  if (v145)
  {
    v106 = v144;
  }

  else
  {
    v106 = &unk_262888BC0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v102, v103, v104, v105, v22, &unk_262888BC0, v24, v24, v106, 8, 8, 0);
  DgnString::~DgnString(&v144);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/fmpe.cpp", 235, &v144);
  if (v145)
  {
    v111 = v144;
  }

  else
  {
    v111 = &unk_262888BC0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v107, v108, v109, v110, v22, &unk_262888BC0, v24, v24, v111, 4, 4, 0);
  DgnString::~DgnString(&v144);
  *a4 += 4;
  *a5 += 4;
  v112 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v112 = 8;
  }

  v113 = *(this + 32);
  if (v113 <= 0)
  {
    v114 = 0;
  }

  else
  {
    v114 = 8 * v113;
  }

  v115 = v114 + v112;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/fmpe.cpp", 235, &v144);
  if (v145)
  {
    v120 = v144;
  }

  else
  {
    v120 = &unk_262888BC0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v116, v117, v118, v119, v22, &unk_262888BC0, v24, v24, v120, v115, v115, 0);
  DgnString::~DgnString(&v144);
  *a4 += v115;
  *a5 += v115;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/fmpe.cpp", 235, &v144);
  if (v145)
  {
    v125 = v144;
  }

  else
  {
    v125 = &unk_262888BC0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v121, v122, v123, v124, v22, &unk_262888BC0, v24, v24, v125, 4, 4, 0);
  DgnString::~DgnString(&v144);
  *a4 += 4;
  *a5 += 4;
  v126 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v126 = 8;
  }

  v127 = *(this + 38);
  if (v127 <= 0)
  {
    v128 = 0;
  }

  else
  {
    v128 = 8 * v127;
  }

  v129 = v128 + v126;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/fmpe.cpp", 235, &v144);
  if (v145)
  {
    v134 = v144;
  }

  else
  {
    v134 = &unk_262888BC0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v130, v131, v132, v133, v22, &unk_262888BC0, v24, v24, v134, v129, v129, 0);
  DgnString::~DgnString(&v144);
  *a4 += v129;
  *a5 += v129;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/fmpe.cpp", 236, &v144);
  if (v145)
  {
    v139 = v144;
  }

  else
  {
    v139 = &unk_262888BC0;
  }

  v140 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v135, v136, v137, v138, v141, &unk_262888BC0, (35 - v141), (35 - v141), v139, *a4, *a5, *a6);
  DgnString::~DgnString(&v144);
}

void sub_2626D4390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

char *writeSharedObject<short>(DgnSharedMemStream *a1, uint64_t a2, _DWORD *a3)
{
  v18 = *(a2 + 8);
  result = writeObject(a1, &v18, a3);
  if (v18)
  {
    v12 = 2 * v18;
    result = DgnSharedMemStream::writeSharedBytes(a1, *a2, (2 * v18), v7, v8, v9, v10, v11);
    if (result)
    {
      v13 = result;
      v14 = v18;
      if (*(a2 + 8) <= *(a2 + 12))
      {
        result = *a2;
        if (*a2)
        {
          result = MemChunkFree(result, 0);
        }

        *(a2 + 12) = 0;
      }

      *(a2 + 8) = v14;
      *a2 = v13;
    }

    else
    {
      v13 = *a2;
    }

    if ((v12 + 3) >= 4)
    {
      v15 = 0;
      v16 = (v12 + 3) >> 2;
      do
      {
        v17 = *v13;
        v13 += 4;
        v15 ^= v17;
        --v16;
      }

      while (v16);
    }

    else
    {
      v15 = 0;
    }

    *a3 ^= v15;
  }

  return result;
}

char *writeSharedObject<unsigned int>(DgnSharedMemStream *a1, uint64_t a2, _DWORD *a3)
{
  v18 = *(a2 + 8);
  result = writeObject(a1, &v18, a3);
  v12 = v18;
  if (v18)
  {
    result = DgnSharedMemStream::writeSharedBytes(a1, *a2, (4 * v18), v7, v8, v9, v10, v11);
    if (result)
    {
      v13 = result;
      v14 = v18;
      if (*(a2 + 8) <= *(a2 + 12))
      {
        result = *a2;
        if (*a2)
        {
          result = MemChunkFree(result, 0);
        }

        *(a2 + 12) = 0;
      }

      *(a2 + 8) = v14;
      *a2 = v13;
    }

    else
    {
      v13 = *a2;
    }

    v15 = 0;
    v16 = v12 & 0x3FFFFFFF;
    if ((v12 & 0x3FFFFFFF) != 0)
    {
      do
      {
        v17 = *v13;
        v13 += 4;
        v15 ^= v17;
        --v16;
      }

      while (v16);
    }

    *a3 ^= v15;
  }

  return result;
}

int *readSharedObject<short>(DgnSharedMemStream *a1, uint64_t a2, _DWORD *a3)
{
  v19 = 0;
  result = readObject(a1, &v19, a3);
  if (v19)
  {
    v13 = 2 * v19;
    result = DgnSharedMemStream::readSharedBytes(a1, 2 * v19, v7, v8, v9, v10, v11, v12);
    v14 = result;
    v15 = v19;
    if (*(a2 + 8) <= *(a2 + 12))
    {
      result = *a2;
      if (*a2)
      {
        result = MemChunkFree(result, 0);
      }

      *(a2 + 12) = 0;
    }

    *(a2 + 8) = v15;
    *a2 = v14;
    if ((v13 + 3) >= 4)
    {
      v16 = 0;
      v17 = (v13 + 3) >> 2;
      do
      {
        v18 = *v14++;
        v16 ^= v18;
        --v17;
      }

      while (v17);
    }

    else
    {
      v16 = 0;
    }

    *a3 ^= v16;
  }

  else
  {
    if (*(a2 + 8) <= *(a2 + 12))
    {
      result = *a2;
      if (*a2)
      {
        result = MemChunkFree(result, 0);
      }

      *(a2 + 12) = 0;
    }

    *(a2 + 8) = 0;
    *a2 = 0;
  }

  return result;
}

int *readSharedObject<unsigned int>(DgnSharedMemStream *a1, uint64_t a2, _DWORD *a3)
{
  v19 = 0;
  result = readObject(a1, &v19, a3);
  v13 = v19;
  if (v19)
  {
    result = DgnSharedMemStream::readSharedBytes(a1, 4 * v19, v7, v8, v9, v10, v11, v12);
    v14 = result;
    v15 = v19;
    if (*(a2 + 8) <= *(a2 + 12))
    {
      result = *a2;
      if (*a2)
      {
        result = MemChunkFree(result, 0);
      }

      *(a2 + 12) = 0;
    }

    *(a2 + 8) = v15;
    *a2 = v14;
    v16 = 0;
    v17 = v13 & 0x3FFFFFFF;
    if ((v13 & 0x3FFFFFFF) != 0)
    {
      do
      {
        v18 = *v14++;
        v16 ^= v18;
        --v17;
      }

      while (v17);
    }

    *a3 ^= v16;
  }

  else
  {
    if (*(a2 + 8) <= *(a2 + 12))
    {
      result = *a2;
      if (*a2)
      {
        result = MemChunkFree(result, 0);
      }

      *(a2 + 12) = 0;
    }

    *(a2 + 8) = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t FmpeMgr::saveFmpeModel(FmpeMgr *this, DFile *a2, DFileChecksums *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v9 = a4;
  v22 = 0xFFFFFFFF00000003;
  DFile::pushCurrentSubDirComponent(a2, &v22, a3, a4, a5, a6, a7, a8);
  PelMgr::savePelMgr(*(this + 14), a2, a3, v9, v8);
  if (v9)
  {
    FmpeMgr::saveProjectionMatrix(this, a2, v8);
  }

  else
  {
    v13 = OpenAndWriteMrecHeader(a2, 0x17u, v8, "MRFPB!?", 24, 7);
    v21 = 0;
    writeObject(v13, this, &v21);
    writeObject(v13, this + 1, &v21);
    writeObject(v13, this + 2, &v21);
    writeObject(v13, this + 3, &v21);
    writeObject(v13, this + 5, &v21);
    writeObject<DgnPrimArray<long long>>(v13, this + 88, &v21);
    writeObject(v13, this + 4, &v21);
    writeObject(v13, this + 6, &v21);
    writeObject<short>(v13, this + 32, &v21);
    writeObject<short>(v13, this + 64, &v21);
    writeObject<unsigned int>(v13, this + 48, &v21);
    writeObject(v13, this + 10, &v21, v14, v15, v16, v17, v18);
    writeObject(v13, this + 26, &v21);
    writeObjectChecksum(v13, &v21);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x17u, v21);
    DgnDelete<DgnStream>(v13);
  }

  return DFile::popCurrentSubDirComponent(a2);
}

void FmpeMgr::saveProjectionMatrix(FmpeMgr *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v53);
  DgnTextFileWriter::openDgnTextFileWriter(v53, a2, 0x18u, a3);
  v51 = 0;
  v52 = 0;
  DgnTextFile::legalDgnTextFileVersions(v53, sFPT_Versions, &v51, v6, v7, v8, v9, v10);
  DgnTextFileWriter::setFileType(v53, "FMPEProjectionMatrixText", (v51 + 8 * (v52 - 1)));
  DgnTextFileWriter::setHeaderFieldUnsigned(v53, "NumberOfMatrixMixtureComponents", *this);
  DgnTextFileWriter::setHeaderFieldUnsigned(v53, "NumberOfFeatures", *(this + 1));
  DgnTextFileWriter::setHeaderFieldUnsigned(v53, "InputContextWindowSize", *(this + 2));
  DgnTextFileWriter::setHeaderFieldUnsigned(v53, "OutputContextWindowSize", *(this + 3));
  DgnTextFileWriter::setHeaderFieldUnsigned(v53, "ProjectionMatrixIntScale", *(this + 4));
  DgnTextFileWriter::setHeaderFieldUnsigned(v53, "TimeAveragingMatrixIntScale", *(this + 5));
  DgnTextFileWriter::setHeaderFieldUnsigned(v53, "ProjectionMatrixQuantLevels", *(this + 6));
  DgnTextFileWriter::setHeaderFieldReal(v53, "ProjectionMatrixPostScale", *(this + 10));
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  DgnString::DgnString(v46, "TableName");
  v11 = v50;
  if (v50 == HIDWORD(v50))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v49, 1, 1);
    v11 = v50;
  }

  DgnString::DgnString((v49 + 16 * v11), v46);
  LODWORD(v50) = v50 + 1;
  DgnString::~DgnString(v46);
  v12 = v48;
  if (v48 == HIDWORD(v48))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v47, 1, 1);
    v12 = v48;
  }

  *(v47 + 4 * v12) = 0;
  LODWORD(v48) = v12 + 1;
  v13 = v50;
  DgnString::DgnString(v46, "RowNum");
  v14 = v50;
  if (v50 == HIDWORD(v50))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v49, 1, 1);
    v14 = v50;
  }

  DgnString::DgnString((v49 + 16 * v14), v46);
  LODWORD(v50) = v50 + 1;
  DgnString::~DgnString(v46);
  v15 = v48;
  if (v48 == HIDWORD(v48))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v47, 1, 1);
    v15 = v48;
  }

  *(v47 + 4 * v15) = 3;
  LODWORD(v48) = v15 + 1;
  v45 = v50;
  DgnString::DgnString(v46, "ColNum");
  v16 = v50;
  if (v50 == HIDWORD(v50))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v49, 1, 1);
    v16 = v50;
  }

  DgnString::DgnString((v49 + 16 * v16), v46);
  LODWORD(v50) = v50 + 1;
  DgnString::~DgnString(v46);
  v17 = v48;
  if (v48 == HIDWORD(v48))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v47, 1, 1);
    v17 = v48;
  }

  *(v47 + 4 * v17) = 3;
  LODWORD(v48) = v17 + 1;
  v18 = v50;
  DgnString::DgnString(v46, "Value");
  v19 = v50;
  if (v50 == HIDWORD(v50))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v49, 1, 1);
    v19 = v50;
  }

  DgnString::DgnString((v49 + 16 * v19), v46);
  LODWORD(v50) = v50 + 1;
  DgnString::~DgnString(v46);
  v20 = v48;
  if (v48 == HIDWORD(v48))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v47, 1, 1);
    v20 = v48;
  }

  *(v47 + 4 * v20) = 1;
  LODWORD(v48) = v20 + 1;
  DgnTextFileWriter::setLineFieldFormat(v53, &v47, &v49);
  v21 = *(this + 1);
  v22 = *this + *this * v21;
  v43 = *(this + 3) * v21;
  if (*(this + 6))
  {
    if (v21)
    {
      v23 = 0;
      v24 = 1;
      do
      {
        if (v24)
        {
          for (i = 0; i < v24; ++i)
          {
            DgnTextFileWriter::setLineFieldValue(v53, 0, "ProjectionMatrixQuant");
            DgnTextFileWriter::setLineFieldUnsignedValue(v53, v13, v23);
            DgnTextFileWriter::setLineFieldUnsignedValue(v53, v45, i);
            DgnTextFileWriter::setLineFieldIntegerValue(v53, v18, *(*(this + 4) + 2 * (i + v23 * *(this + 6))));
            DgnTextFileWriter::writeNextLine(v53);
            v24 = *(this + 6);
          }

          v21 = *(this + 1);
        }

        ++v23;
      }

      while (v23 < v21);
    }

    v42 = v22;
    if (v22)
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = **(this + 6);
      do
      {
        if (v43)
        {
          v30 = 0;
          do
          {
            if (v27 == *(this + 26))
            {
              v27 = 0;
              LODWORD(v29) = *(*(this + 6) + 4 * ++v28);
            }

            v31 = *(this + 6);
            DgnTextFileWriter::setLineFieldValue(v53, 0, "ProjectionMatrix");
            DgnTextFileWriter::setLineFieldUnsignedValue(v53, v13, v26);
            DgnTextFileWriter::setLineFieldUnsignedValue(v53, v45, v30);
            v32 = v29 / v31;
            DgnTextFileWriter::setLineFieldIntegerValue(v53, v18, v29 % v31);
            DgnTextFileWriter::writeNextLine(v53);
            ++v27;
            ++v30;
            LODWORD(v29) = v29 / v31;
          }

          while (v43 != v30);
        }

        else
        {
          v32 = v29;
        }

        ++v26;
        v29 = v32;
      }

      while (v26 != v42);
    }
  }

  else if (v22)
  {
    v33 = 0;
    for (j = 0; j != v22; ++j)
    {
      if (v43)
      {
        v35 = 0;
        v36 = v33;
        do
        {
          DgnTextFileWriter::setLineFieldValue(v53, 0, "ProjectionMatrix");
          DgnTextFileWriter::setLineFieldUnsignedValue(v53, v13, j);
          DgnTextFileWriter::setLineFieldUnsignedValue(v53, v45, v35);
          DgnTextFileWriter::setLineFieldIntegerValue(v53, v18, *(*(this + 8) + 2 * v36));
          DgnTextFileWriter::writeNextLine(v53);
          ++v35;
          ++v36;
        }

        while (v43 != v35);
      }

      v33 += v43;
    }
  }

  v44 = *(this + 24);
  if (v44)
  {
    v37 = 0;
    v38 = (*(this + 3) * *(this + 1));
    do
    {
      if (v38)
      {
        for (k = 0; k != v38; ++k)
        {
          v40 = *(this + 3);
          v41 = *(this + 1);
          DgnTextFileWriter::setLineFieldValue(v53, 0, "TimeAveragingMatrix");
          DgnTextFileWriter::setLineFieldUnsignedValue(v53, v13, k / v41 + v40 * v37);
          DgnTextFileWriter::setLineFieldUnsignedValue(v53, v45, k % v41);
          DgnTextFileWriter::setLineFieldIntegerValue(v53, v18, *(*(*(this + 11) + 16 * v37) + 8 * k));
          DgnTextFileWriter::writeNextLine(v53);
        }
      }

      ++v37;
    }

    while (v37 != v44);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v47);
  DgnArray<DgnString>::releaseAll(&v49);
  DgnIArray<Utterance *>::~DgnIArray(&v51);
  DgnTextFileWriter::~DgnTextFileWriter(v53);
}

void sub_2626D4F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va3, a7);
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  va_copy(va3, va2);
  v14 = va_arg(va3, void);
  v16 = va_arg(va3, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnArray<DgnString>::releaseAll(va1);
  DgnIArray<Utterance *>::~DgnIArray(va2);
  DgnTextFileWriter::~DgnTextFileWriter(va3);
  _Unwind_Resume(a1);
}

uint64_t FmpeMgr::getSelectedComponentsWithProbabilities(uint64_t a1, int a2, unsigned __int8 **a3, ReproData *this, unsigned __int16 *a5, uint64_t a6, uint64_t a7)
{
  ReproData::setOptionalPronStateId(this, a2);
  PelScorer::setFrameStaticsNoMic(this, 0, a3, 0, 0);
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  *a5 = 0;
  if (*(*(a1 + 112) + 140) == 1)
  {
    PelScorer::getComponentProbs(this, 0, &v43, 0x10000u);
    v13 = *(a1 + 112);
    v14 = *a5;
    v16 = *(*(v13 + 456) + 4 * v14);
    v15 = *(*(v13 + 456) + 4 * v14 + 4);
    v17 = (v15 - v16);
    if (v15 == v16)
    {
      goto LABEL_33;
    }

    v18 = v43;
    v19 = 0.0;
    do
    {
      v20 = *v18++;
      v21 = v20;
      if (v20 > v19)
      {
        v19 = v21;
      }

      --v17;
    }

    while (v17);
    goto LABEL_20;
  }

  PelScorer::getComponentProbs(this, 0, &v41, 0x10000u);
  v22 = (*(*(*(a1 + 112) + 456) + 4 * *a5 + 4) - *(*(*(a1 + 112) + 456) + 4 * *a5));
  if (v22)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0.0;
    do
    {
      if (*(v41 + 8 * v24) > v26)
      {
        v26 = *(v41 + 8 * v24);
        v25 = v24;
      }

      ++v24;
    }

    while (v22 != v24);
    v23 = v25 + 1;
  }

  else
  {
    v23 = 1;
  }

  *a5 = v23;
  PelScorer::getComponentProbs(this, v23, &v43, 0x10000u);
  v13 = *(a1 + 112);
  v14 = *a5;
  v16 = *(*(v13 + 456) + 4 * v14);
  v15 = *(*(v13 + 456) + 4 * v14 + 4);
  v27 = (v15 - v16);
  if (v15 != v16)
  {
    v28 = v43;
    v19 = 0.0;
    do
    {
      v29 = *v28++;
      v30 = v29;
      if (v29 > v19)
      {
        v19 = v30;
      }

      --v27;
    }

    while (v27);
LABEL_20:
    if (v19 != 0.0)
    {
      v31 = 0.0;
      if (v15 != v16)
      {
        v32 = 0;
        v33 = v19 * *(this + 18);
        do
        {
          v34 = v43[v32];
          if (v34 > v33)
          {
            v35 = *(a6 + 8);
            if (v35 == *(a6 + 12))
            {
              DgnPrimArray<unsigned int>::reallocElts(a6, 1, 1);
              v35 = *(a6 + 8);
              v13 = *(a1 + 112);
              v14 = *a5;
            }

            v31 = v31 + v34;
            *(*a6 + 4 * v35) = v32;
            ++*(a6 + 8);
          }

          ++v32;
        }

        while (v32 < (*(*(v13 + 456) + 4 * v14 + 4) - *(*(v13 + 456) + 4 * v14)));
      }

      v36 = *(a6 + 8);
      if (v36)
      {
        v37 = 0;
        v38 = *(a7 + 8);
        do
        {
          v39 = v43[*(*a6 + 4 * v37)];
          if (v38 == *(a7 + 12))
          {
            DgnPrimArray<unsigned long long>::reallocElts(a7, 1, 1);
            v38 = *(a7 + 8);
            v36 = *(a6 + 8);
          }

          *(*a7 + 8 * v38++) = v39 / v31;
          *(a7 + 8) = v38;
          ++v37;
        }

        while (v37 < v36);
      }
    }
  }

LABEL_33:
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v41);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v43);
}

void sub_2626D52CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a9);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a11);
  _Unwind_Resume(a1);
}

uint64_t FmpeMgr::fmpeStage1(uint64_t a1, int a2, unsigned __int8 **a3, void **a4, ReproData *this)
{
  v9 = (*(a1 + 4) * *(a1 + 12));
  if (v9)
  {
    bzero(*a4, 8 * (*(a1 + 4) * *(a1 + 12)));
  }

  v68 = 0;
  v66 = 0;
  v67 = 0;
  v65[0] = 0;
  v65[1] = 0;
  FmpeMgr::getSelectedComponentsWithProbabilities(a1, a2, a3, this, &v68, &v66, v65);
  if (v67)
  {
    v10 = 0;
    v11 = v68;
    do
    {
      v12 = *(a1 + 112);
      v13 = *(v12 + 272);
      if (v11)
      {
        v14 = *v13 - v13[1];
      }

      else
      {
        v14 = 0;
      }

      v15 = *(v66 + 4 * v10);
      v16 = *(v12 + 288);
      v17 = v13[*(v16 + 2 * v11)];
      v18 = *(v65[0] + 8 * v10);
      v19 = *(a1 + 80);
      v64[0] = 0;
      v64[1] = 0;
      v63[0] = 0;
      v63[1] = 0;
      PelMgr::unpackGenoneComponent(v12, *(v16 + 2 * v11), v15, v64, v63);
      v21 = v18 * 6.38307649;
      v22 = v18 * v19;
      v23 = *(a1 + 4);
      LODWORD(v24) = v23 + 1;
      v25 = (v14 + v15 + v17) * v9 * (v23 + 1);
      v26 = *(a1 + 24);
      if (v26)
      {
        v27 = *(a1 + 104);
        v28 = v25 / v27;
        v29 = v25 % v27;
        v30 = *(*(a1 + 48) + 4 * (v25 / v27));
        if (v25 % v27)
        {
          v31 = 0;
          do
          {
            ++v31;
            v30 /= v26;
          }

          while (v31 < v29);
        }

        v32 = *(a1 + 40);
        v33 = *(a1 + 144);
        v61 = 0;
        v62 = 0;
        if (v32)
        {
          v69 = 0;
          HIDWORD(v62) = realloc_array(0, &v69, 8 * v32, 0, 0, 1) >> 3;
          v34 = v69;
          v61 = v69;
          LODWORD(v23) = *(a1 + 4);
          LODWORD(v24) = v23 + 1;
        }

        else
        {
          v34 = 0;
        }

        v44 = 0;
        LODWORD(v62) = v32;
        v45 = *a3;
        v46 = v64[0];
        v47 = v63[0];
        if (v24 <= 1)
        {
          v24 = 1;
        }

        else
        {
          v24 = v24;
        }

        do
        {
          v48 = v22;
          if (v44 < v23)
          {
            LODWORD(v20) = *(v47 + 4 * v44);
            v20 = *&v20;
            v48 = v21 * (v45[v44] - *(v46 + 4 * v44)) / v20;
          }

          v49 = v32;
          v50 = v34;
          v51 = v33;
          if (v32)
          {
            do
            {
              v52 = *v51++;
              v20 = v48 * v52;
              *v50++ = v48 * v52;
              --v49;
            }

            while (v49);
          }

          if (v9)
          {
            v53 = 0;
            v54 = *(a1 + 104);
            v55 = *a4;
            v56 = v9;
            v57 = *(a1 + 24);
            do
            {
              if (v29 == v54)
              {
                v29 = 0;
                v30 = *(*(a1 + 48) + 4 * ++v28);
              }

              ++v29;
              v58 = v30 & 3;
              v30 >>= 2;
              if (v53 == v32)
              {
                v53 = 0;
              }

              v20 = *v55;
              *v55 = v34[v58 + v53] + *v55;
              ++v55;
              v53 += v57;
              --v56;
            }

            while (v56);
          }

          ++v44;
        }

        while (v44 != v24);
        DgnPrimArray<unsigned int>::~DgnPrimArray(&v61);
      }

      else
      {
        v35 = 0;
        v36 = *a3;
        v37 = v64[0];
        v38 = v63[0];
        if (v24 <= 1)
        {
          v24 = 1;
        }

        else
        {
          v24 = v24;
        }

        do
        {
          v39 = v22;
          if (v35 < v23)
          {
            LODWORD(v20) = *(v38 + 4 * v35);
            v20 = *&v20;
            v39 = v21 * (v36[v35] - *(v37 + 4 * v35)) / v20;
          }

          if (v9)
          {
            v40 = *(a1 + 64);
            v41 = *a4;
            v42 = v9;
            v43 = v25;
            do
            {
              v20 = *v41 + v39 * *(v40 + 2 * v43);
              *v41++ = v20;
              ++v43;
              --v42;
            }

            while (v42);
          }

          ++v35;
          v25 += v9;
        }

        while (v35 != v24);
      }

      DgnPrimArray<unsigned int>::~DgnPrimArray(v63);
      DgnPrimArray<unsigned int>::~DgnPrimArray(v64);
      ++v10;
    }

    while (v10 < v67);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v65);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v66);
}

void sub_2626D5664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  _Unwind_Resume(a1);
}

uint64_t FmpeMgr::fmpeStage2(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v10 = *(a1 + 8);
  v11 = *(*(a1 + 112) + 132);
  v12 = (v11 * *(a1 + 12));
  v35 = 0;
  v36 = 0;
  if (v12)
  {
    v37 = 0;
    v13 = realloc_array(0, &v37, 8 * v12, 0, 0, 1);
    v14 = v37;
    v35 = v37;
    LODWORD(v36) = v12;
    HIDWORD(v36) = v13 >> 3;
    bzero(v37, 8 * v12);
    if (!v10)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v14 = 0;
    LODWORD(v36) = 0;
    if (!v10)
    {
      goto LABEL_12;
    }
  }

  v15 = 0;
  v16 = a2 - (v10 >> 1);
  v17 = *(a4 + 4) - 1;
  v18 = *(a4 + 2);
  v19 = *a4;
  do
  {
    v20 = v16 + v15;
    if ((v16 + v15) >= 0 && v20 <= v17 && v12)
    {
      v21 = *(v19 + 16 * (v20 % v18));
      v22 = *(*(a1 + 88) + 16 * v15);
      v23 = v12;
      v24 = v14;
      do
      {
        v25 = *v22++;
        v26 = v25;
        v27 = *v21++;
        *v24 = *v24 + v26 * v27;
        ++v24;
        --v23;
      }

      while (v23);
    }

    ++v15;
  }

  while (v15 != v10);
LABEL_12:
  if (v11 < v12)
  {
    v28 = v11;
    do
    {
      v14[v28 % v11] = v14[v28] + v14[v28 % v11];
      ++v28;
    }

    while (v12 != v28);
  }

  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      v30 = v14[i];
      v31 = v30 / (*(a1 + 16) * *(a1 + 20));
      v14[i] = v31;
      LOBYTE(v30) = *(*(*a3 + 16 * (a2 % *(a3 + 8))) + i);
      v32 = v31 + *&v30;
      if (v32 + 0.5 <= 255.0)
      {
        if (v32 + 0.5 >= 0.0)
        {
          v33 = v32;
        }

        else
        {
          LOBYTE(v33) = 0;
        }
      }

      else
      {
        LOBYTE(v33) = -1;
      }

      *(*a5 + i) = v33;
    }
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v35);
}

void SDLm_LmScore(unsigned int a1, unsigned int a2, unsigned int a3, uint64_t *a4, unsigned int a5, uint64_t *a6, unsigned int a7, uint64_t a8, unsigned int a9, uint64_t a10, unsigned int a11, void *a12, unsigned int a13, unsigned int *a14, void **a15, unsigned int *a16, void (*a17)(unint64_t, unsigned int, unsigned int, void *, unsigned int, void **, unsigned int *), unint64_t a18)
{
  SdapiInsurance::SdapiInsurance(v143, "SDLm_LmScore", 1, 1, 131);
  if (v143[97] == 1)
  {
    v118 = a3;
    if (gbShowCalls == 1)
    {
      v29 = "SD_TRUE";
      if (a1)
      {
        v30 = "SD_TRUE";
      }

      else
      {
        v30 = "SD_FALSE";
      }

      if (a2)
      {
        v31 = "SD_TRUE";
      }

      else
      {
        v31 = "SD_FALSE";
      }

      v32 = a8;
      if (!a3)
      {
        v29 = "SD_FALSE";
      }

      if (gbShowCallPointerArguments)
      {
        v33 = a4;
      }

      else
      {
        v33 = 0;
      }

      if (gbShowCallPointerArguments)
      {
        v34 = a6;
      }

      else
      {
        v34 = 0;
      }

      if (!gbShowCallPointerArguments)
      {
        v32 = 0;
      }

      v35 = a10;
      if (!gbShowCallPointerArguments)
      {
        v35 = 0;
      }

      v37 = a12;
      v36 = a16;
      if (gbShowCallPointerArguments)
      {
        v38 = a14;
      }

      else
      {
        v37 = 0;
        v38 = 0;
      }

      v39 = a15;
      if (!gbShowCallPointerArguments)
      {
        v39 = 0;
        v36 = 0;
      }

      v40 = a17;
      v41 = a18;
      if (!gbShowCallPointerArguments)
      {
        v40 = 0;
        v41 = 0;
      }

      xlprintf("Entering sdapi call %.500s(%.500s, %.500s, %.500s, Masked:0x%016llx, %llu, Masked:0x%016llx, %llu, Masked:0x%016llx, %llu, Masked:0x%016llx, %llu, Masked:0x%016llx, %llu, Masked:0x%016llx, Masked:0x%016llx, Masked:0x%016llx, Masked:0x%016llx, Masked:0x%016llx)\n", v39, v36, v40, v41, "SDLm_LmScore", v30, v31, v29, v33, a5, v34, a7, v32, a9, v35, a11, v37, a13, v38, v39, v36, v40, v41);
    }

    if (!a4 && a5)
    {
      throwBadLengthForNullPointer(a5, "DgnVerifyReadPtr", v23, v24, v25, v26, v27, v28);
    }

    LOBYTE(v126[0]) = 0;
    if (!a6 && a7)
    {
      throwBadLengthForNullPointer(a7, "DgnVerifyReadPtr", v23, v24, v25, v26, v27, v28);
    }

    LOBYTE(v126[0]) = 0;
    if (!a8 && a9)
    {
      throwBadLengthForNullPointer(a9, "DgnVerifyWritePtr", v23, v24, v25, v26, v27, v28);
    }

    if (a3 >= 2)
    {
      throwBadSdapiArgument("SDBool", a3, v23, v24, v25, v26, v27, v28);
    }

    else if (a3 == 1)
    {
      if (!a10 && a11)
      {
        throwBadLengthForNullPointer(a11, "DgnVerifyWritePtr", v23, v24, v25, v26, v27, v28);
      }

      if (!a12 && a13)
      {
        throwBadLengthForNullPointer(a13, "DgnVerifyWritePtr", v23, v24, v25, v26, v27, v28);
      }

      if (!a14)
      {
        throwBadLengthForNullPointer(1, "DgnVerifyWritePtr", v23, v24, v25, v26, v27, v28);
      }

      if (!a15)
      {
        throwBadLengthForNullPointer(1, "DgnVerifyWritePtr", v23, v24, v25, v26, v27, v28);
      }

      if (!a16)
      {
        throwBadLengthForNullPointer(1, "DgnVerifyWritePtr", v23, v24, v25, v26, v27, v28);
      }

      if (a11 != a9)
      {
        v113 = a9;
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdlm.cpp", 212, "sdapi/sdlm", 21, "%u %u", v27, v28, a11);
      }

      v116 = 1;
      goto LABEL_71;
    }

    if (a10)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdlm.cpp", 216, "sdapi/sdlm", 22, "%s", v27, v28, &unk_262888C1F);
    }

    if (a11)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdlm.cpp", 217, "sdapi/sdlm", 23, "%s", v27, v28, &errStr_sdapi_sdlm_E_INVALID_COUNT_ARG);
    }

    if (a12)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdlm.cpp", 218, "sdapi/sdlm", 22, "%s", v27, v28, &unk_262888C1F);
    }

    if (a13)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdlm.cpp", 219, "sdapi/sdlm", 23, "%s", v27, v28, &errStr_sdapi_sdlm_E_INVALID_COUNT_ARG);
    }

    if (a14)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdlm.cpp", 220, "sdapi/sdlm", 22, "%s", v27, v28, &unk_262888C1F);
    }

    if (a15)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdlm.cpp", 221, "sdapi/sdlm", 22, "%s", v27, v28, &unk_262888C1F);
    }

    if (a16)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdlm.cpp", 222, "sdapi/sdlm", 22, "%s", v27, v28, &unk_262888C1F);
    }

    v116 = 0;
LABEL_71:
    if (a7 != a9)
    {
      v113 = a9;
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdlm.cpp", 226, "sdapi/sdlm", 14, "%u %u", v27, v28, a7);
    }

    if (!a7)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdlm.cpp", 227, "sdapi/sdlm", 5, "%s", v27, v28, &errStr_sdapi_sdlm_E_EMPTY_TRANSCRIPTION);
    }

    v141 = 0;
    v142 = 0;
    sdUtilConvertSDWordSpecsToCwids(a4, a5, &v141, 1, 0, 0, 1, v28);
    v140[1] = 0;
    v140[0] = 0;
    sdUtilConvertSDWordSpecsToCwids(a6, a7, v140, 0, 1, 0, 1, v42);
    v139 = 0;
    v138 = 0;
    v49 = *(*VocMgr::smpVocMgr + 8);
    if (v49)
    {
      v126[0] = 0;
      HIDWORD(v139) = realloc_array(0, v126, 8 * v49, 0, 0, 1) >> 3;
      v138 = v126[0];
      LODWORD(v50) = v139;
      if (v139 > v49)
      {
        if (v139 > v49)
        {
          v51 = v139 - 1;
          do
          {
            DgnDelete<LMContextData>(v138[v51]);
            v138[v51] = 0;
          }

          while (v51-- > v49);
        }

LABEL_86:
        LODWORD(v139) = v49;
        v53 = ModelMgr::smpModelMgr;
        if (v142)
        {
          v54 = 4 * v142 - 4;
          do
          {
            v55 = *(v141 + v54);
            if (v55 >> 27 != 31 && *(ModelMgr::getVocOrThrow(v53, v55 >> 25, v43, v44, v45, v46, v47, v48) + 136))
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdlm.cpp", 253, "sdapi/sdlm", 24, "%s", v47, v48, &errStr_sdapi_sdlm_E_VOC_UNLOADEDLM);
            }

            v54 -= 4;
          }

          while (v54 != -4);
        }

        v136 = 0u;
        v137 = 0u;
        *v135 = 0u;
        v134 = 0;
        v133 = 0;
        if (a7)
        {
          v56 = 0;
          v57 = a7;
          do
          {
            v58 = v142;
            v59 = *(v140[0] + 4 * v56);
            if (v59 == -50331651)
            {
              LODWORD(v60) = 16777213;
              if (!v142)
              {
                goto LABEL_105;
              }

              v61 = 4 * v142 - 4;
              do
              {
                v62 = *(v141 + v61);
                v63 = v62 >> 27 != 31 || v61 == 0;
                v61 -= 4;
              }

              while (!v63);
              LODWORD(v60) = 16777213;
              if (v62 >> 27 == 31)
              {
                goto LABEL_105;
              }

              v59 = v62 & 0xFE000000 | 0xFFFFFD;
              *(v140[0] + 4 * v56) = v59;
            }

            v60 = v59 & 0xFFFFFF;
            if (v59 >> 27 != 31)
            {
              v64 = v59 >> 25;
              if (*(ModelMgr::getVocOrThrow(v53, v59 >> 25, v43, v44, v45, v46, v47, v48) + 136))
              {
                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdlm.cpp", 300, "sdapi/sdlm", 24, "%s", v69, v70, &errStr_sdapi_sdlm_E_VOC_UNLOADEDLM);
              }

              LODWORD(v134) = 0;
              if (v58)
              {
                v71 = 0;
                v72 = v58 - 1;
                if (v58 >= 3)
                {
                  v58 = 3;
                }

                do
                {
                  v73 = *(v141 + v72);
                  if (v73 >> 25 != v64 && (v73 >> 25) - 125 >= 2)
                  {
                    break;
                  }

                  if (v71 == HIDWORD(v134))
                  {
                    DgnPrimArray<unsigned int>::reallocElts(&v133, 1, 1);
                    v71 = v134;
                  }

                  *(v133 + 4 * v71) = v73 & 0xFFFFFF;
                  v71 = v134 + 1;
                  LODWORD(v134) = v134 + 1;
                  --v72;
                  --v58;
                }

                while (v58);
              }

              v75 = *(ModelMgr::getVocOrThrow(v53, v64, v65, v66, v67, v68, v69, v70) + 72);
              v132 = 0u;
              v131 = 0u;
              v130 = 0u;
              v129 = 0u;
              v128 = 0u;
              v127 = 0u;
              LMStats::resetStats(v126);
              v123 = xmmword_262888C00;
              v124 = 1;
              v125 = 1;
              v76 = v138[v64];
              if (!v76)
              {
                v77 = (*(*v75 + 464))(v75);
                v138[v64] = v77;
                v76 = v138[v64];
              }

              (*(*v75 + 472))(v75, &v133, 0, v126, &v123, v76);
              v122 = 0;
              v120 = 0u;
              v121 = 0u;
              v119 = 0u;
              if (a1 >= 2)
              {
                throwBadSdapiArgument("SDBool", a1, v78, v79, v80, v81, v82, v83);
              }

              if (a2 >= 2)
              {
                throwBadSdapiArgument("SDBool", a2, v78, v79, v80, v81, v82, v83);
              }

              v84 = (*(*v75 + 504))(v75, v60, 0xFFFFLL, v126, v76, &v119, a1 == 1, a2 == 1, &v122, v113);
              (*(*v75 + 480))(v75, v76);
              *(a8 + 4 * v56) = v84;
              if (v118 >= 2)
              {
                throwBadSdapiArgument("SDBool", v118, v85, v86, v87, v88, v89, v90);
              }

              if (v116)
              {
                *(a10 + 4 * v56) = DWORD2(v119);
                LMScoreDetails::appendDetails(v135, &v119);
              }

              DgnPrimArray<unsigned int>::~DgnPrimArray(&v121);
              DgnPrimArray<unsigned int>::~DgnPrimArray(&v120);
              DgnPrimArray<unsigned int>::~DgnPrimArray(&v119);
              goto LABEL_132;
            }

LABEL_105:
            *(a8 + 4 * v56) = 0;
            if (v118 >= 2)
            {
              throwBadSdapiArgument("SDBool", v118, v43, v44, v45, v46, v47, v48);
            }

            if (v116)
            {
              *(a10 + 4 * v56) = 0;
            }

LABEL_132:
            if (v60 == 16777213)
            {
              v91 = v141;
              if (!HIDWORD(v142))
              {
                v126[0] = 0;
                HIDWORD(v142) = realloc_array(v141, v126, 4uLL, 4 * v142, 4 * v142, 1) >> 2;
                v91 = v126[0];
                v141 = v126[0];
              }

              LODWORD(v142) = 1;
              *v91 = -50331650;
            }

            else
            {
              v92 = *(v140[0] + 4 * v56);
              v93 = v142;
              if (v142 == HIDWORD(v142))
              {
                DgnPrimArray<unsigned int>::reallocElts(&v141, 1, 1);
                v93 = v142;
              }

              *(v141 + v93) = v92;
              LODWORD(v142) = v142 + 1;
            }

            ++v56;
          }

          while (v56 != v57);
        }

        if (v118 >= 2)
        {
          throwBadSdapiArgument("SDBool", v118, v43, v44, v45, v46, v47, v48);
        }

        if (!v116)
        {
          goto LABEL_171;
        }

        v94 = v135[2];
        if (v135[2] <= a13)
        {
          *a15 = a12;
          *a16 = a13;
          v101 = v94;
          if (!v94)
          {
LABEL_170:
            *a14 = v94;
LABEL_171:
            DgnPrimArray<unsigned int>::~DgnPrimArray(&v133);
            DgnPrimArray<unsigned int>::~DgnPrimArray(&v137);
            DgnPrimArray<unsigned int>::~DgnPrimArray(&v136);
            DgnPrimArray<unsigned int>::~DgnPrimArray(v135);
            DgnIOwnArray<LMContextData *>::releaseAll(&v138);
            DgnPrimArray<unsigned int>::~DgnPrimArray(v140);
            DgnPrimArray<unsigned int>::~DgnPrimArray(&v141);
            goto LABEL_172;
          }
        }

        else
        {
          ApiState::callReallocateArrayCallback(ApiState::smpApiState, a17, a18, 16, v135[2], a12, a13, a15, a16);
          if (!*a15 && *a16)
          {
            throwBadLengthForNullPointer(*a16, "DgnVerifyWritePtr", v95, v96, v97, v98, v99, v100);
          }

          v101 = v135[2];
          if (!v135[2])
          {
            goto LABEL_170;
          }
        }

        v102 = 0;
        v103 = v136;
        v104 = *v135;
        v105 = 16 * v101;
        v106 = v137;
        while (1)
        {
          v108 = *v103++;
          v107 = v108;
          if (v108 > 3)
          {
            if (v107 > 5)
            {
              if (v107 == 6)
              {
                v109 = 7;
                goto LABEL_169;
              }

LABEL_164:
              v109 = 8;
              goto LABEL_169;
            }

            if (v107 == 4)
            {
              v109 = 5;
              goto LABEL_169;
            }

            if (v107 != 5)
            {
              goto LABEL_164;
            }

            v109 = 6;
          }

          else if (v107 > 1)
          {
            if (v107 == 2)
            {
              v109 = 3;
              goto LABEL_169;
            }

            if (v107 != 3)
            {
              goto LABEL_164;
            }

            v109 = 4;
          }

          else
          {
            if (!v107)
            {
              v109 = 1;
              goto LABEL_169;
            }

            if (v107 != 1)
            {
              goto LABEL_164;
            }

            v109 = 2;
          }

LABEL_169:
          *(*a15 + v102) = v109;
          v110 = *v104++;
          v111 = *a15 + v102;
          *(v111 + 2) = v110;
          v112 = *v106++;
          *(v111 + 3) = v112;
          v102 += 16;
          if (v105 == v102)
          {
            goto LABEL_170;
          }
        }
      }
    }

    else
    {
      LODWORD(v50) = 0;
    }

    if (v50 < v49)
    {
      v50 = v50;
      do
      {
        v138[v50++] = 0;
      }

      while (v49 != v50);
    }

    goto LABEL_86;
  }

LABEL_172:
  SdapiInsurance::~SdapiInsurance(v143);
}

void sub_2626D6540(_Unwind_Exception *a1, int a2)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(&STACK[0x220]);
  LMScoreDetails::~LMScoreDetails(&STACK[0x230]);
  DgnIOwnArray<LMContextData *>::releaseAll(&STACK[0x268]);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&STACK[0x278]);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 - 248);
  if (a2 == 2)
  {
    v5 = __cxa_begin_catch(a1);
    ApiState::handleDgnException(v5, v6);
  }

  else
  {
    if (a2 != 1)
    {
      SdapiInsurance::~SdapiInsurance((v2 - 232));
      _Unwind_Resume(a1);
    }

    v7 = __cxa_begin_catch(a1);
    ApiState::handleDgnMemoryException(v7);
  }

  __cxa_end_catch();
  JUMPOUT(0x2626D6518);
}

unint64_t LMScoreDetails::appendDetails(unint64_t this, const LMScoreDetails *a2)
{
  if (*(a2 + 2))
  {
    v3 = this;
    v4 = 0;
    do
    {
      v5 = *(*a2 + 2 * v4);
      v6 = *(v3 + 8);
      if (v6 == *(v3 + 12))
      {
        this = DgnPrimArray<short>::reallocElts(v3, 1, 1);
        v6 = *(v3 + 8);
      }

      *(*v3 + 2 * v6) = v5;
      *(v3 + 8) = v6 + 1;
      v7 = *(*(a2 + 2) + 4 * v4);
      v8 = *(v3 + 24);
      if (v8 == *(v3 + 28))
      {
        this = DgnPrimArray<unsigned int>::reallocElts(v3 + 16, 1, 1);
        v8 = *(v3 + 24);
      }

      *(*(v3 + 16) + 4 * v8) = v7;
      *(v3 + 24) = v8 + 1;
      v9 = *(*(a2 + 4) + 4 * v4);
      v10 = *(v3 + 40);
      if (v10 == *(v3 + 44))
      {
        this = DgnPrimArray<unsigned int>::reallocElts(v3 + 32, 1, 1);
        v10 = *(v3 + 40);
      }

      *(*(v3 + 32) + 4 * v10) = v9;
      ++*(v3 + 40);
      ++v4;
    }

    while (v4 < *(a2 + 2));
  }

  return this;
}

void LMScoreDetails::~LMScoreDetails(LMScoreDetails *this)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 32);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 16);

  DgnPrimArray<unsigned int>::~DgnPrimArray(this);
}

void SDLm_ClearLoadedData(unint64_t a1, unint64_t a2)
{
  SdapiInsurance::SdapiInsurance(v20, "SDLm_ClearLoadedData", 1, 0, 164);
  if (v20[97] == 1)
  {
    if (gbShowCalls == 1)
    {
      xlprintf("Entering sdapi call %.500s(<SDh %lld>, <SDh %lld>)\n", v4, v5, v6, v7, "SDLm_ClearLoadedData", a1, a2);
    }

    if (HIDWORD(a1) || (a1 & 0xFFFF0000) != 0)
    {
      throwBadSdapiArgument("SDhVoc", a1, v5, v6, v7, v8, v9, v10);
    }

    if (a1 - 1 >= 0x7B)
    {
      throwBadSdapiArgument("SDhVoc", a1, v5, v6, v7, v8, v9, v10);
    }

    VocOrThrow = ModelMgr::getVocOrThrow(ModelMgr::smpModelMgr, a1, v5, v6, v7, v8, v9, v10);
    if (*(VocOrThrow + 136))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdlm.cpp", 1369, "sdapi/sdlm", 24, "%s", v15, v16, &errStr_sdapi_sdlm_E_VOC_UNLOADEDLM);
    }

    v18 = *(VocOrThrow + 72);
    v19 = a2 - 1;
    if (a2 - 1 >= 4)
    {
      throwBadSdapiArgument("SDLmClearLoadedType", a2, v11, v12, v13, v14, v15, v16);
      v19 = 0;
    }

    (*(*v18 + 432))(v18, v19);
  }

  SdapiInsurance::~SdapiInsurance(v20);
}

void sub_2626D68E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2 == 2)
  {
    v14 = __cxa_begin_catch(a1);
    ApiState::handleDgnException(v14, v15);
  }

  else
  {
    if (a2 != 1)
    {
      SdapiInsurance::~SdapiInsurance(&a13);
      _Unwind_Resume(a1);
    }

    v16 = __cxa_begin_catch(a1);
    ApiState::handleDgnMemoryException(v16);
  }

  __cxa_end_catch();
  JUMPOUT(0x2626D68C8);
}

void MrecInitModule_dthread_mrecutil(void)
{
  if (!gParDiagnosticChecksumMemChunkRegionsOnSyncThread)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DiagnosticChecksumMemChunkRegionsOnSyncThread", &unk_262888C56, &unk_262888C56, 0, SetShadowDiagnosticChecksumMemChunkRegionsOnSyncThread, 0);
    *v2 = &unk_287527EA0;
    gParDiagnosticChecksumMemChunkRegionsOnSyncThread = v2;
    gShadowDiagnosticChecksumMemChunkRegionsOnSyncThread = 0;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDiagnosticChecksumMemChunkRegionsOnSyncThread);
  }
}

uint64_t DgnEvent::signal(DgnEvent *this)
{
  pthread_mutex_lock((this + 48));
  *(this + 112) = 1;
  pthread_cond_signal(this);

  return pthread_mutex_unlock((this + 48));
}

uint64_t DgnEvent::wait(DgnEvent *this)
{
  pthread_mutex_lock((this + 48));
  if ((*(this + 112) & 1) == 0)
  {
    pthread_cond_wait(this, (this + 48));
  }

  *(this + 112) = 0;

  return pthread_mutex_unlock((this + 48));
}

BOOL DgnEvent::timedWait(DgnEvent *this, int a2)
{
  v3 = ClockTimer::getPlatformAbsoluteTime(this) + (1000 * a2);
  v12.tv_sec = v3 / 0xF4240;
  v12.tv_nsec = 1000 * (v3 % 0xF4240);
  pthread_mutex_lock((this + 48));
  if (*(this + 112))
  {
    v4 = 0;
    v5 = 1;
  }

  else
  {
    v4 = pthread_cond_timedwait(this, (this + 48), &v12);
    v5 = v4 == 0;
  }

  *(this + 112) = 0;
  pthread_mutex_unlock((this + 48));
  if (!v5 && v4 != 60)
  {
    v6 = __error();
    v7 = strerror(*v6);
    DgnString::DgnString(&v11, v7);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 318, "mrecutil/dthread", 10, "%.500s %.500s %.500s %.500s %d %.500s", v8, v9, "acquire a DgnEvent lock");
    DgnString::~DgnString(&v11);
  }

  return v5;
}

void sub_2626D6C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t recursive_mutex_init(_opaque_pthread_mutex_t *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  pthread_mutexattr_init(&v5);
  pthread_mutexattr_settype(&v5, 2);
  v2 = pthread_mutex_init(a1, &v5);
  pthread_mutexattr_destroy(&v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void DgnLock::~DgnLock(pthread_mutex_t *this)
{
  while (LODWORD(this[1].__sig))
  {
    v2 = *this[1].__opaque;
    if (v2 != pthread_self())
    {
      break;
    }

    v3 = LODWORD(this[1].__sig) - 1;
    LODWORD(this[1].__sig) = v3;
    if (!v3)
    {
      *this[1].__opaque = 0;
    }

    pthread_mutex_unlock(this);
  }

  pthread_mutex_destroy(this);
}

void DgnSharedLock::create(DgnSharedLock *this, const char *a2)
{
  v3 = sem_open(a2, 512, 384, 1);
  *this = v3;
  if (v3 == -1)
  {
    v4 = *__error();
    v5 = __error();
    v6 = strerror(*v5);
    DgnString::DgnString(&v9, v6);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 606, "mrecutil/dthread", 10, "%.500s %.500s %.500s %.500s %d %.500s", v7, v8, "create the global shared lock");
    DgnString::~DgnString(&v9);
  }
}

BOOL DgnSharedLock::acquire(sem_t **this, unsigned int a2)
{
  if (a2 >= 0x7D0)
  {
    v2 = a2 >> 1;
  }

  else
  {
    v2 = 1000;
  }

  __rqtp = xmmword_262888C20;
  if (!v2)
  {
    return 1;
  }

  if (sem_trywait(*this))
  {
    v4 = 0;
    while (1)
    {
      if (*__error() != 35)
      {
        v5 = *__error();
        v6 = __error();
        v7 = strerror(*v6);
        DgnString::DgnString(&v12, v7);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 647, "mrecutil/dthread", 10, "%.500s %.500s %.500s %.500s %d %.500s", v8, v9, "acquire the global shared lock");
        DgnString::~DgnString(&v12);
      }

      nanosleep(&__rqtp, 0);
      if (v2 - 1 == v4)
      {
        return 1;
      }

      ++v4;
      if (!sem_trywait(*this))
      {
        v10 = v4 >= v2;
        goto LABEL_14;
      }
    }
  }

  v10 = 0;
LABEL_14:
  this[1] = pthread_self();
  return v10;
}

void sub_2626D7060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void DgnThreadTrace::DgnThreadTrace(DgnThreadTrace *this, const DgnThreadTrace *a2, MemChunkRegion *a3)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  v5 = this + 32;
  *(this + 3) = 0u;
  v6 = this + 48;
  *(this + 4) = 0u;
  v7 = this + 64;
  *(this + 5) = 0u;
  v8 = this + 80;
  *(this + 6) = 0u;
  v9 = this + 96;
  *(this + 1) = a3;
  *this = *a2;
  DgnPrimArray<unsigned char>::copyArraySlice(this + 16, a2 + 2, 0, *(a2 + 6));
  DgnPrimArray<unsigned long long>::copyArraySlice(v5, a2 + 4, 0, *(a2 + 10));
  DgnPrimArray<int>::copyArraySlice(v6, a2 + 6, 0, *(a2 + 14));
  *(this + 1) = *(a2 + 1);
  if (*this == 1)
  {
    DgnPrimArray<unsigned long long>::copyArraySlice(v7, a2 + 8, 0, *(a2 + 18));
    DgnPrimArray<unsigned long long>::copyArraySlice(v8, a2 + 10, 0, *(a2 + 22));
  }

  if (*(this + 1) == 1)
  {
    DgnPrimArray<unsigned long long>::copyArraySlice(v9, a2 + 12, 0, *(a2 + 26));
  }
}

void sub_2626D7244(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v6);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v4);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1);
  _Unwind_Resume(a1);
}

void DgnThreadTrace::~DgnThreadTrace(DgnThreadTrace *this)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 96);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 80);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 64);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 32);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 16);
}

uint64_t CurryDgnThreadMain(unsigned int *a1)
{
  v18 = 0;
  pthread_setcancelstate(1, &v18);
  pthread_setcanceltype(0, &v18);
  *(a1 + 12) = 1;
  v2 = DgnThreadMgr::smpThreadMgr;
  v3 = a1[4];
  DgnThreadMgr::validateDgnThreadId(DgnThreadMgr::smpThreadMgr, a1[4], v4, v5, v6, v7, v8, v9);
  pthread_setspecific(DgnThreadMgr::smTlsID, *(*(*(v2 + 8) + 8 * v3) + 32));
  v10 = *(a1 + 5);
  if (MemChunkRegion::smTlsID == -1)
  {
    v12 = &gGlobalMemChunkRegion;
    goto LABEL_7;
  }

  v11 = pthread_getspecific(MemChunkRegion::smTlsID);
  if (!v11)
  {
    goto LABEL_5;
  }

  v12 = *v11;
  if (!*v11)
  {
    pthread_setspecific(MemChunkRegion::smTlsID, 0);
LABEL_5:
    v12 = &gGlobalMemChunkRegion;
  }

LABEL_7:
  if (v12 != v10 && (v10 || v12 != &gGlobalMemChunkRegion))
  {
    if (!v10 || v10 == &gGlobalMemChunkRegion)
    {
      v13 = MemChunkRegion::smTlsID;
      v14 = 0;
    }

    else
    {
      *(v10 + 1288) = v10;
      v13 = MemChunkRegion::smTlsID;
      v14 = (v10 + 1288);
    }

    pthread_setspecific(v13, v14);
  }

  v15 = DgnThreadWorker::main(a1);
  if (MemChunkRegion::smTlsID != -1)
  {
    v16 = pthread_getspecific(MemChunkRegion::smTlsID);
    if (v16)
    {
      if (*v16 != &gGlobalMemChunkRegion)
      {
        pthread_setspecific(MemChunkRegion::smTlsID, 0);
      }
    }
  }

  pthread_setspecific(DgnThreadMgr::smTlsID, 0);
  *(a1 + 12) = 0;
  DgnEvent::signal((*(a1 + 6) + 1312));
  return v15;
}

uint64_t DgnThreadWorker::main(DgnThreadWorker *this)
{
  if (*(this + 136) == 1)
  {
    DgnThreadTrace::add(this + 144, -1, 2);
  }

  *(this + 16) = 1;
  v2 = MemChunkAlloc(0x20D8uLL, 0);
  DgnPrinter::DgnPrinter(v2);
  *(this + 7) = v3;
  DgnPrinterMgr::setAsCurrentPrinter(v3, v4);
  v5 = *(this + 7);
  DgnString::makeStringPrintf("DThread %u: ", v6, v7, v8, v9, *(this + 4));
  if (v27)
  {
    v10 = v26;
  }

  else
  {
    v10 = &unk_262888C56;
  }

  DgnPrinter::setInstancePrefix(v5, v10);
  DgnString::~DgnString(&v26);
  (*(*this + 72))(this);
  *(this + 16) = 2;
  DgnEvent::signal((*(this + 6) + 320));
  while (1)
  {
    while (1)
    {
      *(this + 16) = 2;
      if (*(this + 136) == 1)
      {
        DgnThreadTrace::add(this + 144, -1, 7);
      }

      DgnEvent::wait((*(this + 6) + 72));
      if (*(this + 136) == 1)
      {
        DgnThreadTrace::add(this + 144, -1, 6);
      }

      v14 = *(this + 6);
      if ((*(v14 + 1564) & 1) != 0 || (v15 = *(v14 + 56)) != 0 && *(v15 + 68) == 1)
      {
LABEL_37:
        *(this + 16) = 7;
        v24 = 1;
        DgnThreadWorker::reportErrorAsWarning(this, 1, v11, v12, v13);
        goto LABEL_39;
      }

      v16 = *(v14 + 1560);
      if ((v16 - 2) < 3)
      {
        break;
      }

      if (v16 == 6)
      {
        *(this + 16) = 5;
        (*(*this + 88))(this);
        DgnEvent::signal((*(this + 6) + 568));
        v24 = 0;
        goto LABEL_39;
      }
    }

    *(this + 16) = 3;
    (*(*this + 80))(this);
    DgnEvent::signal((*(this + 6) + 568));
    if (*(this + 88) == 1 && *(this + 2) == 1)
    {
      if (*(this + 136) == 1)
      {
        DgnThreadTrace::add(this + 144, -1, 8);
      }

      DgnEvent::wait((*(this + 6) + 72));
      RegionChecksum = GetRegionChecksum(&gGlobalMemChunkRegion);
      if (*(this + 136) == 1)
      {
        DgnThreadTrace::add(this + 144, -1, 6);
      }
    }

    else
    {
      RegionChecksum = 0;
    }

    v18 = (*(*this + 96))(this, v16);
    if (*(this + 88) == 1 && *(this + 2) == 1)
    {
      if (*(this + 136) == 1)
      {
        DgnThreadTrace::add(this + 144, -1, 8);
      }

      if (RegionChecksum != GetRegionChecksum(&gGlobalMemChunkRegion))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1829, "mrecutil/dthread", 8, "%u %u %u", v19, v20, *(this + 4));
      }

      if (*(this + 136) == 1)
      {
        DgnThreadTrace::add(this + 144, -1, 6);
      }
    }

    if (v18 == 1)
    {
      break;
    }

    if (v18 == 2)
    {
      goto LABEL_37;
    }

    *(this + 16) = 4;
    if (*(this + 136) == 1)
    {
      DgnThreadTrace::add(this + 144, -1, 4);
    }

    DgnEvent::signal((*(this + 6) + 320));
    DgnEvent::wait((*(this + 6) + 816));
  }

  *(this + 16) = 5;
  (*(*this + 88))(this);
  v24 = 0;
  DgnEvent::signal((*(this + 6) + 568));
LABEL_39:
  result = *(this + 18);
  if (result != 2 && !*(this + 10) || (*(this + 16) = 7, *(this + 68) = 1, DgnThreadWorker::reportErrorAsWarning(this, v24, v21, v22, v23), DgnEvent::signal((*(this + 6) + 320)), DgnEvent::signal((*(this + 6) + 568)), result = *(this + 18), result != 2))
  {
    if (!*(this + 10))
    {
      if (*(this + 136) == 1)
      {
        DgnThreadTrace::add(this + 144, -1, 3);
      }

      return 0;
    }
  }

  return result;
}

void sub_2626D7918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2 == 3)
  {
    v14 = __cxa_begin_catch(exception_object);
    v15 = 1;
  }

  else if (a2 == 2)
  {
    v14 = __cxa_begin_catch(exception_object);
    v15 = 0;
  }

  else
  {
    if (a2 != 1)
    {
      _Unwind_Resume(exception_object);
    }

    __cxa_begin_catch(exception_object);
    v14 = 0;
    v15 = 2;
  }

  *(v13 + 80) = v14;
  *(v13 + 72) = v15;
  __cxa_end_catch();
  JUMPOUT(0x2626D787CLL);
}

uint64_t DgnThreadClient::DgnThreadClient(uint64_t a1, int a2, uint64_t a3, char *a4)
{
  *a1 = &unk_287527C78;
  *(a1 + 12) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
  *(a1 + 28) = -1;
  v7 = a1 + 28;
  *(a1 + 32) = 0u;
  v8 = (a1 + 32);
  *(a1 + 48) = 0u;
  *(a1 + 64) = -1;
  pthread_cond_init((a1 + 72), 0);
  pthread_mutex_init((a1 + 120), 0);
  *(a1 + 184) = 0;
  pthread_cond_init((a1 + 320), 0);
  pthread_mutex_init((a1 + 368), 0);
  *(a1 + 432) = 0;
  pthread_cond_init((a1 + 568), 0);
  pthread_mutex_init((a1 + 616), 0);
  *(a1 + 680) = 0;
  pthread_cond_init((a1 + 816), 0);
  pthread_mutex_init((a1 + 864), 0);
  *(a1 + 928) = 0;
  pthread_cond_init((a1 + 1064), 0);
  pthread_mutex_init((a1 + 1112), 0);
  *(a1 + 1176) = 0;
  pthread_cond_init((a1 + 1312), 0);
  pthread_mutex_init((a1 + 1360), 0);
  *(a1 + 1424) = 0;
  *(a1 + 1568) = 0;
  *(a1 + 1572) = 0;
  *(a1 + 1560) = 0;
  *(a1 + 1563) = 0;
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v21, &gGlobalMemChunkRegion);
  *v8 = v7;
  v9 = DgnThreadMgr::smpThreadMgr;
  NewThreadId = DgnThreadMgr::getNewThreadId(DgnThreadMgr::smpThreadMgr);
  v15 = *(v9 + 76);
  *(a1 + 28) = NewThreadId;
  *(a1 + 1572) = v15;
  *(a1 + 1573) = v15;
  *(*(v9 + 8) + 8 * NewThreadId) = a1;
  ++*v9;
  if (!a3)
  {
    DgnString::makeStringPrintf("Region for DThread %u", v11, v12, v13, v14, NewThreadId);
    if (a4)
    {
      DgnString::operator+=(&v19, ", ");
      DgnString::operator+=(&v19, a4);
    }

    if (v20)
    {
      v17 = v19;
    }

    else
    {
      v17 = &unk_262888C56;
    }

    *(a1 + 16) = MemChunkRegion::newMemChunkRegion(v17, v16);
    *(a1 + 24) = 1;
    DgnString::~DgnString(&v19);
  }

  *(a1 + 1566) = gShadowDiagnosticChecksumMemChunkRegionsOnSyncThread;
  Latch<MemChunkRegion,LatchAdapter>::~Latch(&v21);
  return a1;
}

void sub_2626D7BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  DgnEvent::~DgnEvent((v4 + 1312));
  DgnEvent::~DgnEvent((v4 + 1064));
  DgnEvent::~DgnEvent((v4 + 816));
  DgnEvent::~DgnEvent((v4 + 568));
  DgnEvent::~DgnEvent((v4 + 320));
  DgnEvent::~DgnEvent((v4 + 72));
  _Unwind_Resume(a1);
}

void DgnThreadClient::~DgnThreadClient(DgnThreadClient *this)
{
  *this = &unk_287527C78;
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v16, &gGlobalMemChunkRegion);
  v2 = *(this + 7);
  DgnThreadMgr::removeThread(DgnThreadMgr::smpThreadMgr, v2, v3, v4, v5, v6, v7, v8);
  *(this + 4) = 0;
  v10 = *(this + 7);
  if (*(this + 1564))
  {
    if (!v10 || (*(v10 + 12) & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_8:
    v11 = 1;
    goto LABEL_17;
  }

  if (!v10)
  {
    goto LABEL_23;
  }

  v11 = *(v10 + 68);
  if ((*(v10 + 12) & 1) == 0)
  {
    goto LABEL_20;
  }

  if (*(v10 + 68))
  {
    goto LABEL_8;
  }

  errWarnInternal("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 952, "mrecutil/dthread", 4, "%u %.500s", v2, "Notifying worker of potential error");
  v12 = *(this + 7);
  if (!v12 || *(v12 + 12) != 1 || (*(this + 1564) & 1) != 0 || (*(v12 + 68) & 1) != 0)
  {
LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  v11 = 0;
  if (!*(this + 390) && *(v12 + 64) == 3)
  {
    DgnThreadClient::error(this);
    goto LABEL_16;
  }

LABEL_17:
  pthread_yield_np();
  ClockTimer::useFreeTimeVoid(&ClockTimer::smClockTimer);
  v13 = *(this + 7);
  if (v13 && *(v13 + 12) == 1)
  {
    pthread_yield_np();
    *(this + 7) = v2;
    (*(*this + 32))(this);
    *(this + 7) = -1;
  }

LABEL_20:
  if ((v11 & 1) == 0 && *(this + 7))
  {
    pthread_yield_np();
    Latch<MemChunkRegion,LatchAdapter>::Latch(&v15, *(this + 2));
    DgnDelete<DgnThreadWorker>(*(this + 7));
    *(this + 7) = 0;
    Latch<MemChunkRegion,LatchAdapter>::~Latch(&v15);
  }

LABEL_23:
  if (*(this + 6))
  {
    *(this + 6) = 0;
  }

  if (*(this + 24) == 1)
  {
    v14 = *(this + 2);
    if (v14)
    {
      MemChunkRegion::deleteMemChunkRegion(v14, v9);
      *(this + 2) = 0;
    }
  }

  Latch<MemChunkRegion,LatchAdapter>::~Latch(&v16);
  DgnEvent::~DgnEvent((this + 1312));
  DgnEvent::~DgnEvent((this + 1064));
  DgnEvent::~DgnEvent((this + 816));
  DgnEvent::~DgnEvent((this + 568));
  DgnEvent::~DgnEvent((this + 320));
  DgnEvent::~DgnEvent((this + 72));
}

{
  DgnThreadClient::~DgnThreadClient(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t DgnThreadMgr::removeThread(DgnThreadMgr *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  DgnThreadMgr::validateDgnThreadId(this, a2, a3, a4, a5, a6, a7, a8);
  v10 = *(this + 1);
  v11 = *(v10 + 8 * a2);
  *(v10 + 8 * a2) = 0;
  if (*(v11 + 1573) == 1)
  {
    v12 = MemChunkAlloc(0x70uLL, 0);
    DgnThreadTrace::DgnThreadTrace(v12, (*(v11 + 56) + 144), &gGlobalMemChunkRegion);
    v13 = *(this + 50);
    if (v13 == *(this + 51))
    {
      DgnPrimArray<unsigned long long>::reallocElts(this + 192, 1, 1);
      v13 = *(this + 50);
    }

    *(*(this + 24) + 8 * v13) = v12;
    *(this + 50) = v13 + 1;
  }

  *(v11 + 28) = -1;
  IdMgr<unsigned int>::recycleId(this + 6, a2);
  --*this;
  return v11;
}

uint64_t DgnThreadClient::hasErrored(DgnThreadClient *this)
{
  if (*(this + 1564))
  {
    LOBYTE(v1) = 1;
  }

  else
  {
    v1 = *(this + 7);
    if (v1)
    {
      LOBYTE(v1) = *(v1 + 68);
    }
  }

  return v1 & 1;
}

uint64_t DgnThreadClient::isLive(DgnThreadClient *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 12);
  }

  return v1 & 1;
}

uint64_t DgnThreadClient::error(uint64_t this)
{
  v1 = this;
  if ((*(this + 1564) & 1) == 0)
  {
    *(this + 1564) = 1;
    v2 = *(*(this + 56) + 64);
    v3 = *(this + 1560);
    *(this + 1560) = 6;
    DgnEvent::signal((this + 72));
    if (v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = v2 == 2;
    }

    if (v4)
    {
      this = DgnEvent::signal((v1 + 1064));
    }

    else
    {
      DgnEvent::signal((v1 + 816));
      DgnEvent::signal((v1 + 568));
      DgnEvent::signal((v1 + 320));
      this = DgnEvent::signal((v1 + 1064));
      *(v1 + 1560) = 6;
    }
  }

  *(v1 + 1564) = 1;
  return this;
}

uint64_t DgnDelete<DgnThreadWorker>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    (*(*result + 48))(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void DgnThreadClient::printSize(DgnThreadClient *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1019, &v150);
  if (v151)
  {
    v16 = v150;
  }

  else
  {
    v16 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_262888C56, a3, &unk_262888C56, v16);
  DgnString::~DgnString(&v150);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_262888C56);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1021, &v150);
  if (v151)
  {
    v25 = v150;
  }

  else
  {
    v25 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, v22, v23, v24, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v25, 4, 4, 0);
  DgnString::~DgnString(&v150);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1022, &v150);
  if (v151)
  {
    v30 = v150;
  }

  else
  {
    v30 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, v27, v28, v29, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v30, 4, 4, 0);
  DgnString::~DgnString(&v150);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v31 = 4;
  }

  else
  {
    v31 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1023, &v150);
  if (v151)
  {
    v36 = v150;
  }

  else
  {
    v36 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, v33, v34, v35, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v36, v31, v31, 0);
  DgnString::~DgnString(&v150);
  *a4 += v31;
  *a5 += v31;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1024, &v150);
  if (v151)
  {
    v41 = v150;
  }

  else
  {
    v41 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, v38, v39, v40, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v41, 1, 1, 0);
  DgnString::~DgnString(&v150);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1025, &v150);
  if (v151)
  {
    v46 = v150;
  }

  else
  {
    v46 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v43, v44, v45, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v46, 4, 4, 0);
  DgnString::~DgnString(&v150);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v47 = 4;
  }

  else
  {
    v47 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1026, &v150);
  if (v151)
  {
    v52 = v150;
  }

  else
  {
    v52 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v48, v49, v50, v51, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v52, v47, v47, 0);
  DgnString::~DgnString(&v150);
  *a4 += v47;
  *a5 += v47;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v53 = 4;
  }

  else
  {
    v53 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1027, &v150);
  if (v151)
  {
    v58 = v150;
  }

  else
  {
    v58 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v54, v55, v56, v57, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v58, v53, v53, 0);
  DgnString::~DgnString(&v150);
  *a4 += v53;
  *a5 += v53;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v59 = 4;
  }

  else
  {
    v59 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1028, &v150);
  if (v151)
  {
    v64 = v150;
  }

  else
  {
    v64 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v60, v61, v62, v63, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v64, v59, v59, 0);
  DgnString::~DgnString(&v150);
  *a4 += v59;
  *a5 += v59;
  v65 = *(this + 7);
  if (v65)
  {
    if (*(v65 + 12) == 1 && (*(this + 1564) & 1) == 0 && (*(v65 + 68) & 1) == 0 && !*(this + 390) && *(v65 + 64) == 3)
    {
      if (gShadowDiagnosticShowIdealizedObjectSizes)
      {
        v66 = 4;
      }

      else
      {
        v66 = 8;
      }

      getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1031, &v150);
      if (v151)
      {
        v147 = v150;
      }

      else
      {
        v147 = &unk_262888C56;
      }

      xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v143, v144, v145, v146, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v147, v66, v66, 0);
      goto LABEL_54;
    }

    v149 = 0;
    v150 = 0;
    v148 = 0;
    (*(*v65 + 104))(v65, 0xFFFFFFFFLL, (a3 + 1), &v150, &v149, &v148);
    *a4 += v150;
    *a5 += v149;
    *a6 += v148;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v66 = 4;
  }

  else
  {
    v66 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1036, &v150);
  if (v151)
  {
    v71 = v150;
  }

  else
  {
    v71 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v67, v68, v69, v70, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v71, v66, v66, 0);
LABEL_54:
  DgnString::~DgnString(&v150);
  *a4 += v66;
  *a5 += v66;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v72 = 4;
  }

  else
  {
    v72 = 113;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1039, &v150);
  if (v151)
  {
    v77 = v150;
  }

  else
  {
    v77 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v73, v74, v75, v76, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v77, v72, v72, 0);
  DgnString::~DgnString(&v150);
  *a4 += v72;
  *a5 += v72;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v78 = 4;
  }

  else
  {
    v78 = 113;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1040, &v150);
  if (v151)
  {
    v83 = v150;
  }

  else
  {
    v83 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v79, v80, v81, v82, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v83, v78, v78, 0);
  DgnString::~DgnString(&v150);
  *a4 += v78;
  *a5 += v78;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v84 = 4;
  }

  else
  {
    v84 = 113;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1041, &v150);
  if (v151)
  {
    v89 = v150;
  }

  else
  {
    v89 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v85, v86, v87, v88, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v89, v84, v84, 0);
  DgnString::~DgnString(&v150);
  *a4 += v84;
  *a5 += v84;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v90 = 4;
  }

  else
  {
    v90 = 113;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1042, &v150);
  if (v151)
  {
    v95 = v150;
  }

  else
  {
    v95 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v91, v92, v93, v94, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v95, v90, v90, 0);
  DgnString::~DgnString(&v150);
  *a4 += v90;
  *a5 += v90;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v96 = 4;
  }

  else
  {
    v96 = 113;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1044, &v150);
  if (v151)
  {
    v101 = v150;
  }

  else
  {
    v101 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v97, v98, v99, v100, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v101, v96, v96, 0);
  DgnString::~DgnString(&v150);
  *a4 += v96;
  *a5 += v96;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1045, &v150);
  if (v151)
  {
    v106 = v150;
  }

  else
  {
    v106 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v102, v103, v104, v105, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v106, 4, 4, 0);
  DgnString::~DgnString(&v150);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1047, &v150);
  if (v151)
  {
    v111 = v150;
  }

  else
  {
    v111 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v107, v108, v109, v110, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v111, 1, 1, 0);
  DgnString::~DgnString(&v150);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1049, &v150);
  if (v151)
  {
    v116 = v150;
  }

  else
  {
    v116 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v112, v113, v114, v115, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v116, 1, 1, 0);
  DgnString::~DgnString(&v150);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1051, &v150);
  if (v151)
  {
    v121 = v150;
  }

  else
  {
    v121 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v117, v118, v119, v120, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v121, 1, 1, 0);
  DgnString::~DgnString(&v150);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1053, &v150);
  if (v151)
  {
    v126 = v150;
  }

  else
  {
    v126 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v122, v123, v124, v125, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v126, 4, 4, 0);
  DgnString::~DgnString(&v150);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1056, &v150);
  if (v151)
  {
    v131 = v150;
  }

  else
  {
    v131 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v127, v128, v129, v130, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v131, 1, 1, 0);
  DgnString::~DgnString(&v150);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1058, &v150);
  if (v151)
  {
    v136 = v150;
  }

  else
  {
    v136 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v132, v133, v134, v135, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v136, 1, 1, 0);
  DgnString::~DgnString(&v150);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1060, &v150);
  if (v151)
  {
    v141 = v150;
  }

  else
  {
    v141 = &unk_262888C56;
  }

  v142 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v137, v138, v139, v140, a3, &unk_262888C56, (35 - a3), (35 - a3), v141, *a4, *a5, *a6);
  DgnString::~DgnString(&v150);
}