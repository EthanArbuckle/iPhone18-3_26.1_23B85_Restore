unsigned int *WordIdPronCollArray::remove(unsigned int *this, int a2)
{
  v2 = this[2];
  if (v2)
  {
    v3 = 0;
    v4 = (*this + 4);
    while (*(v4 - 1) != a2)
    {
      ++v3;
      ++v4;
      if (v2 == v3)
      {
        goto LABEL_5;
      }
    }

    LODWORD(v2) = v2 - 1;
    if (v2 > v3)
    {
      do
      {
        ++v3;
        *(v4 - 1) = *v4;
        v2 = this[2] - 1;
        ++v4;
      }

      while (v3 < v2);
    }
  }

  else
  {
LABEL_5:
    LODWORD(v2) = v2 - 1;
  }

  this[2] = v2;
  return this;
}

uint64_t WordIdPronCollArray::add(WordIdPronCollArray *this, int a2)
{
  v4 = *(this + 2);
  v13 = a2;
  v14 = v4;
  result = DgnPrimArray<unsigned int>::searchLastOrBefore(this, 0, *(this + 2), &v13, WordIdPronSearchCmpFunc);
  v6 = (result + 1);
  v7 = *(this + 2);
  if (v7 == *(this + 3))
  {
    result = DgnPrimArray<unsigned int>::reallocElts(this, 1, 1);
    v7 = *(this + 2);
  }

  v8 = *this;
  if (v7 > v6)
  {
    v9 = v7;
    v10 = (v8 + 4 * v7);
    v11 = v10;
    do
    {
      --v9;
      v12 = *--v11;
      *v10 = v12;
      v10 = v11;
    }

    while (v9 > v6);
  }

  *(v8 + 4 * v6) = a2;
  ++*(this + 2);
  return result;
}

uint64_t WordIdPronCollArray::mergeLargeSortedArray(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 2);
  v28 = 0;
  v29 = 0;
  DgnPrimArray<int>::copyArraySlice(&v28, a1, 0, v4);
  v6 = *(a2 + 2);
  if ((v29 + v6) > HIDWORD(v29))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v28, (v29 + v6 - HIDWORD(v29)), 1);
    v6 = *(a2 + 2);
  }

  v7 = v5 + v4;
  if (v6)
  {
    v8 = 0;
    v9 = *a2;
    v10 = v28;
    do
    {
      v10[(v8 + v29)] = *(v9 + 4 * v8);
      ++v8;
      v11 = *(a2 + 2);
    }

    while (v8 < v11);
  }

  else
  {
    LODWORD(v11) = 0;
  }

  LODWORD(v29) = v29 + v11;
  v12 = *(a1 + 12);
  if (v7 > v12)
  {
    DgnPrimArray<unsigned int>::reallocElts(a1, v7 - v12, 0);
  }

  *(a1 + 8) = v7;
  v13 = v28;
  v14 = &v28[v4];
  v15 = &v28[v7];
  v16 = *a1;
  if (v4 && v4 < v7)
  {
    v17 = *(a1 + 16);
    v18 = &v28[v4];
    do
    {
      v19 = *v13;
      v20 = *v18;
      v21 = PronCmp(*v13, *v18, v17);
      v22 = v19 - v20;
      if (v21)
      {
        v22 = v21;
      }

      v13 += v22 < 1;
      v18 += v22 > 0;
      if (v22 <= 0)
      {
        v23 = v19;
      }

      else
      {
        v23 = v20;
      }

      *v16++ = v23;
    }

    while (v13 < v14 && v18 < v15);
  }

  else
  {
    v18 = &v28[v4];
  }

  while (v13 < v14)
  {
    v25 = *v13++;
    *v16++ = v25;
  }

  while (v18 < v15)
  {
    v26 = *v18++;
    *v16++ = v26;
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v28);
}

uint64_t WordIdPronCollArray::mergeSmallSortedArray(void **a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *(a2 + 2);
  v21 = 0;
  v22 = 0;
  if (v5 + v4)
  {
    v23[0] = 0;
    HIDWORD(v22) = realloc_array(0, v23, 4 * (v5 + v4), 0, 0, 1) >> 2;
    v6 = v23[0];
    v21 = v23[0];
  }

  else
  {
    v6 = 0;
  }

  LODWORD(v22) = v5 + v4;
  v7 = *a1;
  if (v5)
  {
    v8 = 0;
    v9 = 0;
    v10 = *a2;
    do
    {
      v11 = a1[2];
      LODWORD(v23[0]) = *(v10 + 4 * v8);
      v23[1] = v11;
      v12 = DgnPrimArray<unsigned int>::searchLastOrBefore(a1, v9, *(a1 + 2), v23, WordIdPronSearchCmpFunc);
      LODWORD(v13) = v12 + 1;
      if (v12 == -1)
      {
        v13 = v9;
      }

      else
      {
        v13 = v13;
      }

      if (v9 < v13)
      {
        v14 = (v7 + 4 * v9);
        v15 = v13 - v9;
        do
        {
          v16 = *v14++;
          *v6++ = v16;
          --v15;
        }

        while (v15);
      }

      *v6++ = *(v10 + 4 * v8++);
      v9 = v13;
    }

    while (v8 != v5);
  }

  else
  {
    LODWORD(v13) = 0;
  }

  if (v13 < v4)
  {
    v17 = (v7 + 4 * v13);
    v18 = v4 - v13;
    do
    {
      v19 = *v17++;
      *v6++ = v19;
      --v18;
    }

    while (v18);
  }

  if (*a1)
  {
    MemChunkFree(*a1, 0);
    *a1 = 0;
  }

  *a1 = v21;
  a1[1] = v22;
  v21 = 0;
  v22 = 0;
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v21);
}

uint64_t WordIdPronCollArray::removeSortedArray(uint64_t a1, int **a2)
{
  v4 = *(a1 + 8);
  v5 = v4 - *(a2 + 2);
  v6 = *(a1 + 16);
  v16 = **a2;
  v17 = v6;
  Equal = DgnPrimArray<unsigned int>::searchFirstEqual(a1, 0, v4, &v16, WordIdPronSearchCmpFunc);
  v15[0] = 0;
  v15[1] = 0;
  DgnPrimArray<int>::copyArraySlice(v15, a1, 0, *(a1 + 8));
  if (Equal < v4)
  {
    v8 = 0;
    v9 = v15[0] + 4 * v4;
    v10 = (v15[0] + 4 * Equal);
    v11 = (*a1 + 4 * Equal);
    v12 = *a2;
    do
    {
      if (*v10 == v12[v8])
      {
        if ((v8 + 1) < *(a2 + 2))
        {
          ++v8;
        }
      }

      else
      {
        *v11++ = *v10;
      }

      ++v10;
    }

    while (v10 < v9);
  }

  v13 = *(a1 + 12);
  if (v5 > v13)
  {
    DgnPrimArray<unsigned int>::reallocElts(a1, v5 - v13, 0);
  }

  *(a1 + 8) = v5;
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v15);
}

uint64_t WordIdPronCollArray::addArray(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v4 = result;
    v5 = *(result + 12);
    v6 = *(result + 8) + v2;
    if (v6 > v5)
    {
      DgnPrimArray<unsigned int>::reallocElts(result, v6 - v5, 0);
      v2 = *(a2 + 8);
    }

    v9 = 0;
    v10 = 0;
    DgnPrimArray<int>::copyArraySlice(&v9, a2, 0, v2);
    mrec_qsort_r<WordIdPronCollArray>(v9, v10, 4uLL, *(v4 + 16));
    v7 = *(v4 + 8);
    if (v7 && (v8 = *(a2 + 8), onePlusHighestSet32(v7) * v8 <= *(v4 + 8)))
    {
      WordIdPronCollArray::mergeSmallSortedArray(v4, &v9);
    }

    else
    {
      WordIdPronCollArray::mergeLargeSortedArray(v4, &v9);
    }

    return DgnPrimArray<unsigned int>::~DgnPrimArray(&v9);
  }

  return result;
}

uint64_t WordIdPronCollArray::removeArray(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    DgnPrimArray<int>::copyArraySlice(&v4, a2, 0, v2);
    mrec_qsort_r<WordIdPronCollArray>(v4, v5, 4uLL, *(v3 + 16));
    WordIdPronCollArray::removeSortedArray(v3, &v4);
    return DgnPrimArray<unsigned int>::~DgnPrimArray(&v4);
  }

  return result;
}

uint64_t WordIdPronCollArray::getWordsWithCommonPron(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  *(a3 + 8) = 0;
  v36 = 0;
  v37 = 0;
  WordList::lookupAll(a1[2], a2, &v36);
  v34 = v37;
  if (v37)
  {
    v5 = 0;
    do
    {
      v35 = v5;
      v6 = *(v36 + 4 * v5);
      v7 = a1[2];
      v8 = *(a1 + 2);
      v9 = v8 - 1;
      if (v8 < 1)
      {
LABEL_12:
        v13 = -1;
      }

      else
      {
        v10 = 0;
        v11 = *a1;
        v12 = v8 - 1;
        while (1)
        {
          v13 = (v12 + v10) / 2;
          v14 = *(v11 + 4 * v13);
          v15 = PronCmp(v14, v6, v7);
          v16 = v14 - v6;
          if (v15)
          {
            v16 = v15;
          }

          if (!v16)
          {
            break;
          }

          if (v16 < 0)
          {
            v10 = v13 + 1;
          }

          else
          {
            v12 = v13 - 1;
          }

          if (v10 > v12)
          {
            goto LABEL_12;
          }
        }
      }

      v17 = v13;
      v18 = v13 + 1;
      v19 = 4 * v13;
      v20 = v19 - 4;
      while (v20 != -4)
      {
        v21 = PronCmp(v6, *(*a1 + v20), v7);
        --v18;
        v20 -= 4;
        if (v21)
        {
          goto LABEL_18;
        }
      }

      v18 = 0;
LABEL_18:
      if (v17 <= v9)
      {
        v22 = v9;
      }

      else
      {
        v22 = v17;
      }

      v23 = v17 - 1;
      v24 = v22 - v17;
      v25 = v19 + 4;
      while (v24)
      {
        v26 = PronCmp(v6, *(*a1 + v25), v7);
        ++v23;
        --v24;
        v25 += 4;
        if (v26)
        {
          goto LABEL_26;
        }
      }

      v23 = v22;
LABEL_26:
      if (v18 <= v23)
      {
        v27 = *(a3 + 8);
        do
        {
          v28 = *(*(a1[2] + 256) + 4 * *(*a1 + 4 * v18));
          if (!v27)
          {
            goto LABEL_34;
          }

          v29 = *a3;
          v30 = v27;
          v31 = 0xFFFFFFFFLL;
          while (1)
          {
            v32 = *v29++;
            if (v32 == v28)
            {
              break;
            }

            --v31;
            if (!--v30)
            {
              goto LABEL_34;
            }
          }

          if (!v31)
          {
LABEL_34:
            if (v27 == *(a3 + 12))
            {
              DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
              v27 = *(a3 + 8);
            }

            *(*a3 + 4 * v27) = v28;
            v27 = *(a3 + 8) + 1;
            *(a3 + 8) = v27;
          }

          ++v18;
        }

        while (v18 <= v23);
        v34 = v37;
      }

      v5 = v35 + 1;
    }

    while (v35 + 1 < v34);
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v36);
}

void sub_262848ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t StartupSausageParamSpecMgr(void)
{
  v0 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v0, "SausageGenerationPruneGlobalThresh", &byte_262899963, &byte_262899963, &sSausageGenerationPruneGlobalThreshDoubleHistory);
  v1 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v1, "SausageGenerationMinEpsilonPostProb", &byte_262899963, &byte_262899963, &sSausageGenerationMinEpsilonPostProbDoubleHistory);
  v2 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v2, "SausageGenerationAbortOnNumLatticeLinks", &byte_262899963, &byte_262899963, &sSausageGenerationAbortOnNumLatticeLinksIntHistory);
  v3 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v3, "SausageGenerationNewAlgorithm", &byte_262899963, &byte_262899963, &sSausageGenerationNewAlgorithmBoolHistory);
  ParamSpecMgr::addParam(qword_281051FB0, v2);
  ParamSpecMgr::addParam(qword_281051FB0, v1);
  ParamSpecMgr::addParam(qword_281051FB0, v0);
  ParamSpecMgr::addParam(qword_281051FB0, v3);
  v4 = qword_281051FB0;

  return ParamSpecMgr::sortParams(v4);
}

_DWORD *SausageParamSet::SausageParamSet(_DWORD *a1, const char *a2, int a3, int a4, int a5)
{
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 2), a2);
  a1[6] = a3;
  a1[7] = a4;
  a1[8] = a5;
  a1[9] = 0;
  *a1 = &unk_287527860;
  SausageParamSet::setDefaults(a1, v9, v10, v11, v12, v13, v14, v15);
  return a1;
}

void sub_262848C94(_Unwind_Exception *a1)
{
  *v1 = v2;
  DgnString::~DgnString((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t SausageParamSet::SausageParamSet(uint64_t a1, uint64_t a2, char *a3, int a4, int a5, int a6)
{
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 8), a3);
  *(a1 + 24) = a4;
  *(a1 + 28) = a5;
  *(a1 + 32) = a6;
  *(a1 + 36) = 0;
  *a1 = &unk_287527860;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t SausageParamSet::setDefaults(SausageParamSet *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(this + 10) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB0, 1, 0, 0, a5, a6, a7, a8);
  *(this + 6) = ParamSpecMgr::ParamGetDefault_double(qword_281051FB0, 2, 0, 0, v9, v10, v11, v12);
  *(this + 7) = ParamSpecMgr::ParamGetDefault_double(qword_281051FB0, 3, 0, 0, v13, v14, v15, v16);
  result = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB0, 4, 0, 0, v17, v18, v19, v20);
  *(this + 64) = result;
  return result;
}

uint64_t SausageParamSet::sizeObject(uint64_t a1, int a2)
{
  v3 = sizeObject(a1 + 8) + 16 * (a2 != 3);
  if (a2 == 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 21;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  return v3 + v5;
}

uint64_t SausageParamSet::getBoolParameter(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      v8 = "int";
      v9 = 1;
      goto LABEL_13;
    }

    if (a2 == 2)
    {
      v8 = "double";
      v9 = 2;
LABEL_13:
      throwWrongTypeForParamId(v9, v8, "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_14;
    }

LABEL_10:
    throwWrongParamIdValue(a2, "BOOL", a3, a4, a5, a6, a7, a8);
LABEL_14:
    v10 = 0;
    return v10 & 1;
  }

  if (a2 == 3)
  {
    v8 = "double";
    v9 = 3;
    goto LABEL_13;
  }

  if (a2 != 4)
  {
    goto LABEL_10;
  }

  if (a3 == 1)
  {
    ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051FB0, 4, a3, a4, a5, a6, a7, a8);
    v13 = **ParamByParamId;
    return v10 & 1;
  }

  if (a3)
  {
    throwWrongQueryMode(a3, "BOOL", a3, a4, a5, a6, a7, a8);
    goto LABEL_14;
  }

  v10 = *(a1 + 64);
  return v10 & 1;
}

uint64_t SausageParamSet::getIntParameter(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v8 = "double";
      v9 = 3;
      goto LABEL_14;
    }

    if (a2 == 4)
    {
      v8 = "BOOL";
      v9 = 4;
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  if (a2 != 1)
  {
    if (a2 == 2)
    {
      v8 = "double";
      v9 = 2;
LABEL_14:
      throwWrongTypeForParamId(v9, v8, "int", a4, a5, a6, a7, a8);
      return 0;
    }

LABEL_8:
    throwWrongParamIdValue(a2, "int", a3, a4, a5, a6, a7, a8);
    return 0;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051FB0, 1, a3, a4, a5, a6, a7, a8);
      v16 = **ParamByParamId;
    }

    if (a3 == 3)
    {
      v13 = ParamSpecMgr::getParamByParamId(qword_281051FB0, 1, a3, a4, a5, a6, a7, a8);
      v14 = **v13;
    }
  }

  else
  {
    if (!a3)
    {
      return *(a1 + 40);
    }

    if (a3 == 1)
    {
      v10 = ParamSpecMgr::getParamByParamId(qword_281051FB0, 1, a3, a4, a5, a6, a7, a8);
      v11 = **v10;
    }
  }

  throwWrongQueryMode(a3, "int", a3, a4, a5, a6, a7, a8);
  return 0;
}

double SausageParamSet::getDoubleParameter(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      if (a3 <= 1)
      {
        if (!a3)
        {
          return *(a1 + 56);
        }

        if (a3 == 1)
        {
          v8 = qword_281051FB0;
          v9 = 3;
          goto LABEL_20;
        }

        goto LABEL_28;
      }

      if (a3 != 2)
      {
        if (a3 == 3)
        {
          v15 = qword_281051FB0;
          v16 = 3;
          goto LABEL_27;
        }

LABEL_28:
        throwWrongQueryMode(a3, "double", a3, a4, a5, a6, a7, a8);
        return 0.0;
      }

      v19 = qword_281051FB0;
      v20 = 3;
LABEL_33:
      ParamByParamId = ParamSpecMgr::getParamByParamId(v19, v20, a3, a4, a5, a6, a7, a8);
      v22 = **ParamByParamId;
    }

    if (a2 != 4)
    {
      goto LABEL_11;
    }

    v10 = "BOOL";
    v11 = 4;
LABEL_13:
    throwWrongTypeForParamId(v11, v10, "double", a4, a5, a6, a7, a8);
    return 0.0;
  }

  if (a2 == 1)
  {
    v10 = "int";
    v11 = 1;
    goto LABEL_13;
  }

  if (a2 == 2)
  {
    if (a3 <= 1)
    {
      if (!a3)
      {
        return *(a1 + 48);
      }

      if (a3 == 1)
      {
        v8 = qword_281051FB0;
        v9 = 2;
LABEL_20:
        v13 = ParamSpecMgr::getParamByParamId(v8, v9, a3, a4, a5, a6, a7, a8);
        v14 = **v13;
      }

      goto LABEL_28;
    }

    if (a3 != 2)
    {
      if (a3 == 3)
      {
        v15 = qword_281051FB0;
        v16 = 2;
LABEL_27:
        v17 = ParamSpecMgr::getParamByParamId(v15, v16, a3, a4, a5, a6, a7, a8);
        v18 = **v17;
      }

      goto LABEL_28;
    }

    v19 = qword_281051FB0;
    v20 = 2;
    goto LABEL_33;
  }

LABEL_11:
  throwWrongParamIdValue(a2, "double", a3, a4, a5, a6, a7, a8);
  return 0.0;
}

uint64_t SausageParamSet::getStringParameter(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v8 = "double";
      v9 = 3;
      goto LABEL_11;
    }

    if (a2 == 4)
    {
      v8 = "BOOL";
      v9 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (a2 == 1)
    {
      v8 = "int";
      v9 = 1;
      goto LABEL_11;
    }

    if (a2 == 2)
    {
      v8 = "double";
      v9 = 2;
LABEL_11:
      throwWrongTypeForParamId(v9, v8, "string", a4, a5, a6, a7, a8);
      return 0;
    }
  }

  throwWrongParamIdValue(a2, "string", a3, a4, a5, a6, a7, a8);
  return 0;
}

uint64_t SausageParamSet::getEnumParameter(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v8 = "double";
      v9 = 3;
      goto LABEL_11;
    }

    if (a2 == 4)
    {
      v8 = "BOOL";
      v9 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (a2 == 1)
    {
      v8 = "int";
      v9 = 1;
      goto LABEL_11;
    }

    if (a2 == 2)
    {
      v8 = "double";
      v9 = 2;
LABEL_11:
      throwWrongTypeForParamId(v9, v8, "BOOL", a4, a5, a6, a7, a8);
      return 0;
    }
  }

  throwWrongParamIdValue(a2, "enum", a3, a4, a5, a6, a7, a8);
  return 0;
}

void SausageParamSet::setBoolParameter(SausageParamSet *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v9 = a2;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      throwWrongTypeForParamId(1, "int", "BOOL", a4, a5, a6, a7, a8);
    }

    else if (a2 != 2)
    {
      goto LABEL_7;
    }

    throwWrongTypeForParamId(v9, "double", "BOOL", a4, a5, a6, a7, a8);
    goto LABEL_12;
  }

  if (a2 == 3)
  {
LABEL_12:
    throwWrongTypeForParamId(v9, "double", "BOOL", a4, a5, a6, a7, a8);
    goto LABEL_13;
  }

  if (a2 != 4)
  {
LABEL_7:

    throwWrongParamIdValue(a2, "BOOL", a3, a4, a5, a6, a7, a8);
    return;
  }

LABEL_13:
  if (*(this + 9))
  {

    throwParamSetSetFailed("SausageGenerationNewAlgorithm", "BOOL", a3, a4, a5, a6, a7, a8);
  }

  else
  {
    *(this + 64) = v8;
  }
}

void SausageParamSet::setIntParameter(SausageParamSet *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (a2 > 2)
  {
    if (a2 != 3)
    {
      if (a2 != 4)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

LABEL_8:
    throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
LABEL_9:
    throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
    goto LABEL_10;
  }

  if (a2 != 1)
  {
    if (a2 != 2)
    {
LABEL_10:

      throwWrongParamIdValue(v8, "int", a3, a4, a5, a6, a7, a8);
      return;
    }

    throwWrongTypeForParamId(2, "double", "int", a4, a5, a6, a7, a8);
    goto LABEL_8;
  }

  v9 = a3;
  ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051FB0, 1, a3, a4, a5, a6, a7, a8);
  if (ParamByParamId)
  {
    v16 = **ParamByParamId;
  }

  IntParamSpec::validateValue(ParamByParamId, v9, 0, 0, v12, v13, v14, v15);
  if (*(this + 9))
  {

    throwParamSetSetFailed("SausageGenerationAbortOnNumLatticeLinks", "int", v17, v18, v19, v20, v21, v22);
  }

  else
  {
    *(this + 10) = v9;
  }
}

void SausageParamSet::setDoubleParameter(SausageParamSet *this, int a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a2;
  if (a2 > 2)
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        throwWrongTypeForParamId(4, "BOOL", "double", a5, a6, a7, a8, a9);
      }

      goto LABEL_8;
    }

    ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051FB0, 3, a4, a5, a6, a7, a8, a9);
    if (ParamByParamId)
    {
      v32 = **ParamByParamId;
    }

    DoubleParamSpec::validateValue(ParamByParamId, a3, 0, 0, v27, v28, v29, v30, v31);
    if (!*(this + 9))
    {
      *(this + 7) = a3;
      return;
    }

    v25 = "SausageGenerationPruneGlobalThresh";
  }

  else
  {
    if (a2 == 1)
    {
      throwWrongTypeForParamId(1, "int", "double", a5, a6, a7, a8, a9);
    }

    else if (a2 != 2)
    {
LABEL_8:

      throwWrongParamIdValue(v10, "double", a4, a5, a6, a7, a8, a9);
      return;
    }

    v12 = ParamSpecMgr::getParamByParamId(qword_281051FB0, 2, a4, a5, a6, a7, a8, a9);
    if (v12)
    {
      v18 = **v12;
    }

    DoubleParamSpec::validateValue(v12, a3, 0, 0, v13, v14, v15, v16, v17);
    if (!*(this + 9))
    {
      *(this + 6) = a3;
      return;
    }

    v25 = "SausageGenerationMinEpsilonPostProb";
  }

  throwParamSetSetFailed(v25, "double", v19, v20, v21, v22, v23, v24);
}

void SausageParamSet::setStringParameter(SausageParamSet *this, int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      throwWrongTypeForParamId(1, "int", "string", a4, a5, a6, a7, a8);
    }

    else if (a2 != 2)
    {
      goto LABEL_12;
    }

    throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
    goto LABEL_10;
  }

  if (a2 == 3)
  {
LABEL_10:
    throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
    goto LABEL_11;
  }

  if (a2 == 4)
  {
LABEL_11:
    throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
  }

LABEL_12:

  throwWrongParamIdValue(v8, "string", a3, a4, a5, a6, a7, a8);
}

void SausageParamSet::setEnumParameter(SausageParamSet *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      throwWrongTypeForParamId(1, "int", "BOOL", a4, a5, a6, a7, a8);
    }

    else if (a2 != 2)
    {
      goto LABEL_12;
    }

    throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
    goto LABEL_10;
  }

  if (a2 == 3)
  {
LABEL_10:
    throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
    goto LABEL_11;
  }

  if (a2 == 4)
  {
LABEL_11:
    throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
  }

LABEL_12:

  throwWrongParamIdValue(v8, "enum", a3, a4, a5, a6, a7, a8);
}

void SausageParamSet::~SausageParamSet(SausageParamSet *this)
{
  *this = &unk_287528C00;
  DgnString::~DgnString((this + 8));
}

{
  *this = &unk_287528C00;
  DgnString::~DgnString((this + 8));

  JUMPOUT(0x26672B1B0);
}

uint64_t Sequence::scoreNoSkipDeadSeq(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, PelScoreCache **a7, int a8, int a9, _DWORD *a10)
{
  v10 = *(a1 + 10);
  if (*(a1 + 10))
  {
    v11 = a1 + 26;
    do
    {
      *(v11 - 2) = 1310740000;
      v11 += 24;
      --v10;
    }

    while (v10);
  }

  if (!a3)
  {
    return 20000;
  }

  ++*a10;
  return Node::scoreNodeInactiveCurrActiveSeed(a1 + 16, a2, a5, a6, a7, a8, a9, 0);
}

uint64_t Sequence::scoreOneSkipDeadSeq(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, uint64_t a7, int a8, int a9, _DWORD *a10, _DWORD *a11)
{
  v12 = *(a1 + 10);
  if (*(a1 + 10))
  {
    v13 = a1 + 26;
    v14 = *(a1 + 10);
    do
    {
      *(v13 - 2) = 1310740000;
      v13 += 24;
      --v14;
    }

    while (v14);
  }

  if (!a3)
  {
    return 20000;
  }

  if (v12 >= 2)
  {
    v15 = 2;
  }

  else
  {
    v15 = v12;
  }

  return Node::scoreNodeSuccessorsSkipOne((a1 + 16), a2, 1, a4, a5, a6, v15, a7, a8, a9, a10, a11);
}

uint64_t Sequence::scoreMultiSkipDeadSeq(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, uint64_t a7, int a8, int a9, _DWORD *a10, _DWORD *a11)
{
  v12 = *(a1 + 10);
  if (*(a1 + 10))
  {
    v13 = a1 + 26;
    v14 = *(a1 + 10);
    do
    {
      *(v13 - 2) = 1310740000;
      v13 += 24;
      --v14;
    }

    while (v14);
  }

  return Node::scoreNodeSuccessorsSkipMany((a1 + 16), a2, a3, a4, a5, a6, v12, a7, a8, a9, a10, a11);
}

uint64_t Sequence::calcNumActiveNodes(uint64_t this, int a2)
{
  v2 = *(this + 10);
  if (!*(this + 10))
  {
    return 0;
  }

  v3 = this;
  LODWORD(this) = 0;
  v4 = (v3 + 26);
  do
  {
    v5 = *v4;
    v4 += 12;
    if (v5 > a2)
    {
      this = this;
    }

    else
    {
      this = (this + 1);
    }

    --v2;
  }

  while (v2);
  return this;
}

uint64_t Sequence::scoreNoSkipDeadSeqNBest(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, uint64_t a7, int a8, int a9, _DWORD *a10)
{
  v10 = *(a1 + 10);
  if (*(a1 + 10))
  {
    v11 = a1 + 26;
    do
    {
      *(v11 - 2) = 1310740000;
      v11 += 24;
      --v10;
    }

    while (v10);
  }

  if (!a3)
  {
    return 20000;
  }

  v13 = 0;
  ++*a10;
  return Node::scoreNodeWithPatternNBest(a1 + 16, a2, *(a2 + 4), 32, a5, a6, a7, a8, a9, &v13, 0);
}

uint64_t Sequence::scoreOneSkipDeadSeqNBest(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, uint64_t a7, int a8, int a9, _DWORD *a10, _DWORD *a11)
{
  v12 = *(a1 + 10);
  if (*(a1 + 10))
  {
    v13 = a1 + 26;
    v14 = *(a1 + 10);
    do
    {
      *(v13 - 2) = 1310740000;
      v13 += 24;
      --v14;
    }

    while (v14);
  }

  if (!a3)
  {
    return 20000;
  }

  if (v12 >= 2)
  {
    v15 = 2;
  }

  else
  {
    v15 = v12;
  }

  return Node::scoreNodeSuccessorsSkipOneNBest((a1 + 16), a2, 1, a4, a5, a6, v15, a7, a8, a9, a10, a11);
}

uint64_t Sequence::scoreMultiSkipDeadSeqNBest(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, uint64_t a7, int a8, int a9, _DWORD *a10, _DWORD *a11)
{
  v12 = *(a1 + 10);
  if (*(a1 + 10))
  {
    v13 = a1 + 26;
    v14 = *(a1 + 10);
    do
    {
      *(v13 - 2) = 1310740000;
      v13 += 24;
      --v14;
    }

    while (v14);
  }

  return Node::scoreNodeSuccessorsSkipManyNBest((a1 + 16), a2, a3, a4, a5, a6, v12, a7, a8, a9, a10, a11);
}

uint64_t Sequence::getBestScore(uint64_t a1, void *a2)
{
  v2 = *(a1 + 10);
  if (!*(a1 + 10))
  {
    return 20000;
  }

  v3 = 0;
  v4 = a1 + 16;
  v5 = 20000;
  do
  {
    v6 = *(v4 + 10);
    if (v5 > v6)
    {
      *a2 = v4;
      v2 = *(a1 + 10);
      v5 = v6;
    }

    v4 += 24;
    ++v3;
  }

  while (v3 < v2);
  return v5;
}

uint64_t DgnFileStream::DgnFileStream(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (*(a4 + 8))
  {
    v7 = *a4;
  }

  else
  {
    v7 = &unk_262891880;
  }

  v8 = DgnStream::DgnStream(a1, a2, v7);
  *v8 = &unk_2875287D8;
  *(v8 + 64) = 0;
  *(v8 + 72) = 0;
  if (!FileSpec::isValid(a4))
  {
    if (*(a1 + 24))
    {
      v12 = *(a1 + 16);
    }

    else
    {
      v12 = &unk_262891880;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfstream.cpp", 72, "dfutil/dfstream", 2, "%.500s", v10, v11, v12);
  }

  *(a1 + 48) = a3;
  v13 = *(a1 + 8);
  if (v13 == 1)
  {
    *(a1 + 52) = 1;
    *(a1 + 56) = 0;
    *(a1 + 96) = 0;
  }

  else
  {
    *(a1 + 52) = 0;
    *(a1 + 56) = 0;
    *(a1 + 96) = 0;
    if (!*(a1 + 72))
    {
      *(a1 + 64) = MemChunkAlloc(0x1000uLL, 0);
      *(a1 + 72) = 4096;
      v13 = *(a1 + 8);
    }

    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    if (v13 == 2 && !OsFile::fileExists(a4, v9))
    {
      if (*(a1 + 24))
      {
        v14 = *(a1 + 16);
      }

      else
      {
        v14 = &unk_262891880;
      }

      v15 = fopen(v14, "wb");
      if (!v15)
      {
        if (*(a1 + 24))
        {
          v16 = *(a1 + 16);
        }

        v17 = *__error();
        v18 = __error();
        v19 = strerror(*v18);
        DgnString::DgnString(&v40, v19);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfstream.cpp", 107, "dfutil/dfstream", 10, "%.500s %.500s %d %.500s", v20, v21, "fopen");
        DgnString::~DgnString(&v40);
      }

      if (fclose(v15))
      {
        if (*(a1 + 24))
        {
          v24 = *(a1 + 16);
        }

        else
        {
          v24 = &unk_262891880;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfstream.cpp", 109, "dfutil/dfstream", 1, "%.500s", v22, v23, v24);
      }
    }
  }

  v25 = "wb";
  v26 = *(a1 + 8);
  if (v26 != 1)
  {
    v25 = "r+b";
  }

  v27 = "r+";
  if (v26 == 1)
  {
    v27 = "w";
  }

  v28 = v26 == 0;
  v29 = "r";
  if (v28)
  {
    v25 = "rb";
  }

  else
  {
    v29 = v27;
  }

  if (*(a1 + 48))
  {
    v30 = v29;
  }

  else
  {
    v30 = v25;
  }

  *(a1 + 40) = 0;
  if (*(a1 + 24))
  {
    v31 = *(a1 + 16);
  }

  else
  {
    v31 = &unk_262891880;
  }

  v32 = fopen(v31, v30);
  *(a1 + 40) = v32;
  if (!v32)
  {
    if (*(a1 + 24))
    {
      v33 = *(a1 + 16);
    }

    v34 = *__error();
    v35 = __error();
    v36 = strerror(*v35);
    DgnString::DgnString(&v40, v36);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfstream.cpp", 151, "dfutil/dfstream", 10, "%.500s %.500s %d %.500s", v37, v38, "fopen");
    DgnString::~DgnString(&v40);
  }

  if (*(a1 + 8) == 2)
  {
    (*(*a1 + 32))(a1);
  }

  return a1;
}

void sub_26284A368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnString::~DgnString(va);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v6);
  DgnStream::~DgnStream(v5);
  _Unwind_Resume(a1);
}

void DgnFileStream::~DgnFileStream(DgnFileStream *this)
{
  *this = &unk_2875287D8;
  v2 = *(this + 5);
  if (v2 && fclose(v2))
  {
    if (*(this + 6))
    {
      v5 = *(this + 2);
    }

    else
    {
      v5 = &unk_262891880;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfstream.cpp", 164, "dfutil/dfstream", 1, "%.500s", v3, v4, v5);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 64);

  DgnStream::~DgnStream(this);
}

{
  DgnFileStream::~DgnFileStream(this);

  JUMPOUT(0x26672B1B0);
}

void DgnFileStream::printSize(DgnFileStream *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfstream.cpp", 176, &v73);
  if (v74)
  {
    v16 = v73;
  }

  else
  {
    v16 = &unk_262891880;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_262891880, a3, &unk_262891880, v16);
  DgnString::~DgnString(&v73);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_262891880);
  v72 = 0;
  v73 = 0;
  v71 = 0;
  DgnStream::printSize(this, 0xFFFFFFFFLL, (a3 + 1), &v73, &v72, &v71);
  *a4 += v73;
  *a5 += v72;
  *a6 += v71;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v21 = 4;
  }

  else
  {
    v21 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfstream.cpp", 180, &v73);
  if (v74)
  {
    v26 = v73;
  }

  else
  {
    v26 = &unk_262891880;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v22, v23, v24, v25, (a3 + 1), &unk_262891880, (34 - a3), (34 - a3), v26, v21, v21, 0);
  DgnString::~DgnString(&v73);
  *a4 += v21;
  *a5 += v21;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfstream.cpp", 182, &v73);
  if (v74)
  {
    v31 = v73;
  }

  else
  {
    v31 = &unk_262891880;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v27, v28, v29, v30, (a3 + 1), &unk_262891880, (34 - a3), (34 - a3), v31, 4, 4, 0);
  DgnString::~DgnString(&v73);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfstream.cpp", 184, &v73);
  if (v74)
  {
    v36 = v73;
  }

  else
  {
    v36 = &unk_262891880;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, v33, v34, v35, (a3 + 1), &unk_262891880, (34 - a3), (34 - a3), v36, 4, 4, 0);
  DgnString::~DgnString(&v73);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfstream.cpp", 186, &v73);
  if (v74)
  {
    v41 = v73;
  }

  else
  {
    v41 = &unk_262891880;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, v38, v39, v40, (a3 + 1), &unk_262891880, (34 - a3), (34 - a3), v41, 1, 1, 0);
  DgnString::~DgnString(&v73);
  ++*a4;
  ++*a5;
  v42 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v42 = 8;
  }

  v43 = *(this + 18);
  if (v43 > 0)
  {
    v44 = (v43 - 1) + v42 + 1;
  }

  else
  {
    v44 = v42;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfstream.cpp", 188, &v73);
  if (v74)
  {
    v49 = v73;
  }

  else
  {
    v49 = &unk_262891880;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v45, v46, v47, v48, (a3 + 1), &unk_262891880, (34 - a3), (34 - a3), v49, v44, v44, 0);
  DgnString::~DgnString(&v73);
  *a4 += v44;
  *a5 += v44;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfstream.cpp", 190, &v73);
  if (v74)
  {
    v54 = v73;
  }

  else
  {
    v54 = &unk_262891880;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v50, v51, v52, v53, (a3 + 1), &unk_262891880, (34 - a3), (34 - a3), v54, 4, 4, 0);
  DgnString::~DgnString(&v73);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfstream.cpp", 192, &v73);
  if (v74)
  {
    v59 = v73;
  }

  else
  {
    v59 = &unk_262891880;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v55, v56, v57, v58, (a3 + 1), &unk_262891880, (34 - a3), (34 - a3), v59, 8, 8, 0);
  DgnString::~DgnString(&v73);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfstream.cpp", 194, &v73);
  if (v74)
  {
    v64 = v73;
  }

  else
  {
    v64 = &unk_262891880;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v60, v61, v62, v63, (a3 + 1), &unk_262891880, (34 - a3), (34 - a3), v64, 8, 8, 0);
  DgnString::~DgnString(&v73);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfstream.cpp", 196, &v73);
  if (v74)
  {
    v69 = v73;
  }

  else
  {
    v69 = &unk_262891880;
  }

  v70 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v65, v66, v67, v68, a3, &unk_262891880, (35 - a3), (35 - a3), v69, *a4, *a5, *a6);
  DgnString::~DgnString(&v73);
}

void sub_26284A998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void DgnFileStream::seekFromBeg(DgnFileStream *this, off_t a2)
{
  if (*(this + 2) != 1)
  {
    *(this + 20) = 0;
    *(this + 11) = 0;
  }

  if (fseeko(*(this + 5), a2, 0))
  {
    if (*(this + 6))
    {
      v3 = *(this + 2);
    }

    v4 = *__error();
    v5 = __error();
    v6 = strerror(*v5);
    DgnString::DgnString(&v9, v6);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfstream.cpp", 216, "dfutil/dfstream", 10, "%.500s %.500s %d %.500s", v7, v8, "fseek");
    DgnString::~DgnString(&v9);
  }

  *(this + 56) = 0;
}

void sub_26284AAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void DgnFileStream::seekToEnd(DgnFileStream *this)
{
  if (*(this + 2) != 1)
  {
    *(this + 20) = 0;
    *(this + 11) = 0;
  }

  if (fseeko(*(this + 5), 0, 2))
  {
    if (*(this + 6))
    {
      v2 = *(this + 2);
    }

    v3 = *__error();
    v4 = __error();
    v5 = strerror(*v4);
    DgnString::DgnString(&v8, v5);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfstream.cpp", 232, "dfutil/dfstream", 10, "%.500s %.500s %d %.500s", v6, v7, "fseek");
    DgnString::~DgnString(&v8);
  }

  *(this + 56) = 0;
}

void sub_26284ABB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

off_t DgnFileStream::tell(DgnFileStream *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 12) == 1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfstream.cpp", 241, "dfutil/dfstream", 12, "%s", a7, a8, &unk_262891880);
  }

  if (*(this + 2) != 1 && *(this + 11))
  {
    return *(this + 12) + *(this + 20);
  }

  return DgnFileStream::basicTell(this, a2, a3, a4, a5, a6, a7, a8);
}

off_t DgnFileStream::basicTell(DgnFileStream *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(this + 5);
  if (!v9)
  {
    if (*(this + 6))
    {
      v10 = *(this + 2);
    }

    else
    {
      v10 = &unk_262891880;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfstream.cpp", 429, "dfutil/dfstream", 6, "%.500s", a7, a8, v10);
    v9 = *(this + 5);
  }

  v13 = ftello(v9);
  if (v13 == -1)
  {
    if (*(this + 6))
    {
      v14 = *(this + 2);
    }

    else
    {
      v14 = &unk_262891880;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfstream.cpp", 432, "dfutil/dfstream", 7, "%.500s", v11, v12, v14);
  }

  return v13;
}

unint64_t DgnFileStream::tell32(DgnFileStream *this)
{
  v3 = (*(*this + 40))(this);
  if (HIDWORD(v3))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfstream.cpp", 254, "dfutil/dfstream", 11, "%s", v1, v2, &errStr_dfutil_dfstream_E_STREAM_OVERFLOW);
  }

  return v3;
}

uint64_t DgnFileStream::peekForChar(DgnFileStream *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 2) == 1)
  {
    if (*(this + 6))
    {
      v9 = *(this + 2);
    }

    else
    {
      v9 = &unk_262891880;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfstream.cpp", 272, "dfutil/dfstream", 15, "%.500s", a7, a8, v9);
  }

  if (*(this + 11))
  {
    return *(*(this + 8) + *(this + 20));
  }

  v11 = *(this + 56);
  DgnFileStream::fillInputBuffer(this, a2, a3, a4, a5, a6, a7, a8);
  if (*(this + 56))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = *(*(this + 8) + *(this + 20));
  }

  *(this + 56) = v11;
  return result;
}

size_t DgnFileStream::fillInputBuffer(DgnFileStream *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 2) == 1)
  {
    if (*(this + 6))
    {
      v9 = *(this + 2);
    }

    else
    {
      v9 = &unk_262891880;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfstream.cpp", 463, "dfutil/dfstream", 15, "%.500s", a7, a8, v9);
  }

  if (*(this + 13) == 1)
  {
    (*(*this + 88))(this);
    *(this + 13) = 0;
  }

  *(this + 12) = DgnFileStream::basicTell(this, a2, a3, a4, a5, a6, a7, a8);
  result = DgnFileStream::basicRead(this, *(this + 8), *(this + 18), v10, v11, v12, v13, v14);
  *(this + 20) = 0;
  *(this + 11) = result;
  if (result)
  {
    v16 = result >= *(this + 18);
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    *(this + 56) = 0;
  }

  return result;
}

size_t DgnFileStream::readWithMode(DgnFileStream *this, uint64_t __dst, size_t __n, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v10 = __dst;
  if (*(this + 2) == 1 && (!*(this + 6) ? (v12 = &unk_262891880) : (v12 = *(this + 2)), errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfstream.cpp", 307, "dfutil/dfstream", 15, "%.500s", a7, a8, v12), *(this + 2) == 1) || (*(this + 56) & 1) != 0)
  {
    if (*(this + 13) == 1)
    {
      (*(*this + 88))(this);
      *(this + 13) = 0;
    }

    v13 = DgnFileStream::basicRead(this, v10, __n, a4, a5, a6, a7, a8);
  }

  else if (__n == 1)
  {
    if (*(this + 11) || (DgnFileStream::fillInputBuffer(this, __dst, __n, a4, a5, a6, a7, a8), (*(this + 56) & 1) == 0))
    {
      *v10 = *(*(this + 8) + (*(this + 20))++);
      --*(this + 11);
      v13 = 1;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v15 = *(this + 11);
    v16 = __n;
    if (v15)
    {
      goto LABEL_21;
    }

    while (1)
    {
      DgnFileStream::fillInputBuffer(this, __dst, v15, a4, a5, a6, a7, a8);
      if (*(this + 56))
      {
        break;
      }

      v15 = *(this + 11);
LABEL_21:
      v17 = *(this + 20);
      v18 = *(this + 8);
      if (v15 >= v16)
      {
        memcpy(v10, (v18 + v17), v16);
        *(this + 20) += v16;
        *(this + 11) -= v16;
        return __n;
      }

      memcpy(v10, (v18 + v17), v15);
      v15 = 0;
      v19 = *(this + 11);
      v10 += v19;
      v16 -= v19;
      *(this + 11) = 0;
    }

    v13 = __n - v16;
  }

  if (v8 == 1 && v13 < __n)
  {
    if (*(this + 6))
    {
      v14 = *(this + 2);
    }

    else
    {
      v14 = &unk_262891880;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfstream.cpp", 390, "dfutil/dfstream", 13, "%.500s %llu %llu", a7, a8, v14);
  }

  return v13;
}

size_t DgnFileStream::basicRead(DgnFileStream *this, char *__ptr, size_t __nitems, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __nitems;
  v11 = *(this + 5);
  if (!v11)
  {
    if (*(this + 6))
    {
      v12 = *(this + 2);
    }

    else
    {
      v12 = &unk_262891880;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfstream.cpp", 440, "dfutil/dfstream", 4, "%.500s", a7, a8, v12);
    v11 = *(this + 5);
  }

  v13 = fread(__ptr, 1uLL, v8, v11);
  if (v13 < v8)
  {
    if (!feof(*(this + 5)) && ferror(*(this + 5)))
    {
      if (*(this + 6))
      {
        v16 = *(this + 2);
      }

      else
      {
        v16 = &unk_262891880;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfstream.cpp", 449, "dfutil/dfstream", 9, "%.500s %llu", v14, v15, v16);
    }

    *(this + 56) = 1;
  }

  return v13;
}

void DgnFileStream::writeBytes(DgnFileStream *this, const char *__ptr, size_t __nitems, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __nitems;
  if (!*(this + 2))
  {
    if (*(this + 6))
    {
      v11 = *(this + 2);
    }

    else
    {
      v11 = &unk_262891880;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfstream.cpp", 400, "dfutil/dfstream", 14, "%.500s", a7, a8, v11);
  }

  if (v8)
  {
    if (!*(this + 13))
    {
      v12 = (*(*this + 40))(this);
      (*(*this + 24))(this, v12);
      *(this + 13) = 1;
    }

    v13 = *(this + 5);
    if (!v13)
    {
      if (*(this + 6))
      {
        v14 = *(this + 2);
      }

      else
      {
        v14 = &unk_262891880;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfstream.cpp", 409, "dfutil/dfstream", 5, "%.500s", a7, a8, v14);
      v13 = *(this + 5);
    }

    if (fwrite(__ptr, 1uLL, v8, v13) != v8)
    {
      if (*(this + 6))
      {
        v17 = *(this + 2);
      }

      else
      {
        v17 = &unk_262891880;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfstream.cpp", 411, "dfutil/dfstream", 8, "%.500s", v15, v16, v17);
    }
  }
}

void DgnFileStream::flush(DgnFileStream *this)
{
  v2 = *(this + 5);
  if (v2 && fflush(v2))
  {
    if (*(this + 6))
    {
      v5 = *(this + 2);
    }

    else
    {
      v5 = &unk_262891880;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dfstream.cpp", 421, "dfutil/dfstream", 3, "%.500s", v3, v4, v5);
  }
}

void MrecInitModule_channel_channel(void)
{
  if (!gParDebugChannel)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugChannel", &unk_2628918E7, &unk_2628918E7, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugChannel = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugChannel);
  }
}

void FeatureGeneratorSpec::FeatureGeneratorSpec(FeatureGeneratorSpec *this)
{
  *this = 1;
  *(this + 4) = 0u;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  *(this + 13) = 0;
  *(this + 28) = 1;
  *(this + 8) = 0;
  *(this + 18) = 0;
}

uint64_t FeatureGeneratorSpec::writeObject(FeatureGeneratorSpec *this, DgnStream *a2, unsigned int *a3)
{
  writeObject(a2, this, a3);
  writeObject(a2, this + 1, a3);
  writeObject(a2, this + 2, a3);
  writeObject(a2, this + 3, a3);
  writeObject(a2, this + 3, a3, v6, v7, v8, v9, v10);
  writeObject(a2, this + 8, a3);
  writeObject(a2, this + 9, a3);
  writeObject(a2, this + 10, a3);
  writeObject(a2, this + 11, a3);
  writeObject(a2, this + 6, a3, v11, v12, v13, v14, v15);
  writeObject(a2, this + 28, a3);
  writeObject(a2, this + 8, a3, v16, v17, v18, v19, v20);

  return writeObject(a2, this + 18, a3);
}

void FeatureFilterSpec::FeatureFilterSpec(FeatureFilterSpec *this)
{
  *(this + 8) = 0;
  *this = 0u;
  *(this + 1) = 0u;
}

uint64_t FeatureFilterSpec::writeObject(FeatureFilterSpec *this, DgnStream *a2, unsigned int *a3)
{
  writeObject(a2, this, a3);
  writeObject(a2, this + 1, a3);
  writeObject(a2, this + 2, a3);
  writeObject(a2, this + 3, a3);
  writeObject<unsigned int>(a2, this + 16, a3);

  return writeObject(a2, this + 8, a3);
}

void FeatureSelectorSpec::FeatureSelectorSpec(FeatureSelectorSpec *this)
{
  DgnString::DgnString((this + 8));
  *this = 0;
  BitArray::setSize((this + 8), 0);
}

uint64_t FeatureSelectorSpec::writeObject(FeatureSelectorSpec *this, DgnStream *a2, unsigned int *a3)
{
  writeObject(a2, this, a3);
  writeObject(a2, this + 1, a3);

  return writeObject(a2, this + 8, a3);
}

uint64_t FeatureScaleSpec::writeObject(FeatureScaleSpec *this, DgnStream *a2, unsigned int *a3)
{
  writeObject<unsigned int>(a2, this, a3);
  writeObject<unsigned int>(a2, this + 16, a3);

  return writeObject(a2, this + 8, a3);
}

uint64_t FeatureScaleSpec::sizeObject(uint64_t a1, int a2)
{
  v4 = sizeObject<unsigned int>(a1, a2);
  v5 = sizeObject<unsigned int>(a1 + 16, a2) + v4;
  return v5 + sizeObject(a1 + 32, a2);
}

uint64_t writeObject<WarpCoordinates>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v10 = *(a2 + 8);
  result = writeObject(a1, &v10, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 4;
    do
    {
      v9 = (*a2 + v8);
      writeObject(a1, v9 - 1, a3);
      result = writeObject(a1, v9, a3);
      ++v7;
      v8 += 8;
    }

    while (v7 < *(a2 + 8));
  }

  return result;
}

void ChanStatsSpec::ChanStatsSpec(ChanStatsSpec *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *this = 1;
  *(this + 12) = 1;
  *(this + 40) = 1;
  *(this + 26) = 0;
  *(this + 54) = 1;
  *(this + 14) = 0;
  *(this + 15) = 0;
}

void ChanStatsSpec::~ChanStatsSpec(ChanStatsSpec *this)
{
  DgnArray<WarpChoice>::releaseAll(this + 128);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 88);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 64);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 32);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 8);
}

uint64_t ChanStatsSpec::writeObject(ChanStatsSpec *this, DgnStream *a2, unsigned int *a3)
{
  writeObject(a2, this, a3);
  writeObject<unsigned char>(a2, this + 8, a3);
  writeObject(a2, this + 12, a3);
  writeObject<unsigned char>(a2, this + 32, a3);
  writeObject<unsigned char>(a2, this + 48, a3);
  writeObject<unsigned char>(a2, this + 64, a3);
  writeObject(a2, this + 40, a3);
  writeObject<unsigned int>(a2, this + 88, a3);
  writeObject(a2, this + 26, a3);
  writeObject(a2, this + 54, a3);
  writeObject(a2, this + 28, a3);
  writeObject(a2, this + 29, a3);
  writeObject(a2, this + 30, a3);
  writeObject(a2, this + 31, a3);

  return writeObject<WarpChoice>(a2, this + 128, a3);
}

uint64_t writeObject<WarpChoice>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v10 = *(a2 + 8);
  result = writeObject(a1, &v10, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 8;
    do
    {
      v9 = *a2 + v8;
      writeObject(a1, (v9 - 8), a3);
      result = writeObject<WarpCoordinates>(a1, v9, a3);
      ++v7;
      v8 += 24;
    }

    while (v7 < *(a2 + 8));
  }

  return result;
}

uint64_t ChanStatsSpec::sizeObject(uint64_t a1, int a2)
{
  v4 = a2 != 3;
  v5 = sizeObject<unsigned char>(a1 + 8, a2);
  v6 = sizeObject<unsigned char>(a1 + 32, a2);
  v7 = sizeObject<unsigned char>(a1 + 48, a2);
  v8 = sizeObject<unsigned char>(a1 + 64, a2);
  v9 = sizeObject<unsigned int>(a1 + 88, a2);
  return v5 + 4 * v4 + v6 + v7 + v8 + v9 + sizeObject<WarpChoice>(a1 + 128, a2) + (16 * v4 || 8 * v4);
}

uint64_t sizeObject<WarpChoice>(uint64_t a1, int a2)
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
      goto LABEL_11;
    }

    v6 = *(a1 + 8);
    if (v6 < 1)
    {
      v2 = v3;
      if (a2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v7 = v6 + 1;
      v8 = 24 * v6 - 16;
      v2 = v3;
      do
      {
        v2 += sizeObject<EnergyInfo>(*a1 + v8, a2) + 1;
        --v7;
        v8 -= 24;
      }

      while (v7 > 1);
      if (a2)
      {
        goto LABEL_11;
      }
    }

    v2 += (v3 | 1) * (*(a1 + 12) - *(a1 + 8));
  }

LABEL_11:
  DgnIArray<Utterance *>::~DgnIArray(v10);
  return v2;
}

void *DgnArray<WarpChoice>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 24 * v2 - 16;
    do
    {
      DgnIArray<Utterance *>::~DgnIArray(*a1 + v3);
      v3 -= 24;
    }

    while (v3 != -16);
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

uint64_t MrecInitLibrary_net(void)
{
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_history_net();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_netmgr_net();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();

  return MrecInitModule_sdpres_sdapi();
}

uint64_t MrecInitLibrarySet_throughNet(void)
{
  MrecInitLibrarySet_throughUser();
  MrecInitLibrarySet_throughVoc();

  return MrecInitLibrary_net();
}

void TItnParamManager::TItnParamManager(TItnParamManager *this, TLocaleInfo *a2)
{
  TParamManager::TParamManager(this, 1, a2);
  *v3 = &unk_287527380;
  v4 = (v3 + 18);
  TStringParam::TStringParam(v3 + 18, &unk_2628918F0, &unk_262891928, 0, &dword_262891CBC, &unk_262891CC0, &dword_262891CBC);
  TIntParam::TIntParam((this + 1520), &unk_262891CF4, &unk_262891D94, 0, 0, 100, 10, &unk_262891CC0, &dword_262891CBC);
  TIntParam::TIntParam((this + 1872), &unk_262891F78, &unk_262891FC8, 0, 0, 100, 20, &unk_262891CC0, &dword_262891CBC);
  TBoolParam::TBoolParam(this + 2224, &unk_2628920E0, &unk_262892144, 0, 1, &unk_2628927F0, &dword_262891CBC);
  TBoolParam::TBoolParam(this + 2472, &unk_262892824, &unk_26289289C, 0, 0, &unk_2628929E8, &dword_262891CBC);
  TFloatParam::TFloatParam(this + 2720, &unk_262892A1C, &unk_262892A4C, 0, &unk_262892A80, &dword_262891CBC, 100.0);
  TFloatParam::TFloatParam(this + 3256, &unk_262892AB4, &unk_262892AF0, 0, &unk_262892A80, &dword_262891CBC, 300.0);
  TBoolParam::TBoolParam(this + 3792, &unk_262892B34, &unk_262892B5C, 0, 0, &unk_262892C5C, &dword_262891CBC);
  TIntParam::TIntParam((this + 4040), &unk_262892C94, &unk_262892D40, 0, 1, 100, 10, &unk_262892E90, &dword_262891CBC);
  TStringParam::TStringParam(this + 4392, &unk_262892ED0, &unk_262892F30, 0, &unk_262893A88, &unk_262893A98, &dword_262891CBC);
  TBoolParam::TBoolParam(this + 5768, &unk_262893AD0, &unk_262893B20, 256, 0, &unk_262893CE8, &dword_262891CBC);
  TBoolParam::TBoolParam(this + 6016, &unk_262893D28, &unk_262893D74, 0, 0, &unk_262893ED8, &dword_262891CBC);
  TStringParam::TStringParam(this + 6264, &unk_262893F0C, &unk_262893F4C, 256, &dword_262891CBC, &unk_262893ED8, &dword_262891CBC);
  TBoolParam::TBoolParam(this + 7640, &unk_2628941C4, &unk_262894204, 0, 0, &unk_262893ED8, &dword_262891CBC);
  TStringParam::TStringParam(this + 7888, &unk_262894298, &unk_2628942D8, 0, &unk_262894374, &unk_26289437C, &unk_2628943B4);
  TBoolParam::TBoolParam(this + 9264, &unk_2628943F4, &unk_26289442C, 0, 1, &unk_26289456C, &dword_262891CBC);
  TBoolParam::TBoolParam(this + 9512, &unk_2628945A0, &unk_2628945BC, 0, 0, &unk_262894698, &dword_262891CBC);
  TIntParam::TIntParam((this + 9760), &unk_2628946D8, &unk_262894744, 0, 0, 0x7FFFFFFF, 66017, &unk_26289484C, &dword_262891CBC);
  TIntParam::TIntParam((this + 10112), &unk_26289488C, &unk_262894904, 0, 0, 30, 20, &unk_26289484C, &dword_262891CBC);
  TIntParam::TIntParam((this + 10464), &unk_2628949F8, &unk_262894A68, 0, 0, 30, 8, &unk_26289484C, &dword_262891CBC);
  TIntParam::TIntParam((this + 10816), &unk_262894B80, &unk_262894BF4, 0, 0, 30, 9, &unk_26289484C, &dword_262891CBC);
  TIntParam::TIntParam((this + 11168), &unk_262894D10, &unk_262894D88, 0, 0, 30, 10, &unk_26289484C, &dword_262891CBC);
  TIntParam::TIntParam((this + 11520), &unk_262894EA8, &unk_262894F14, 0, 0, 30, 24, &unk_26289484C, &dword_262891CBC);
  TIntParam::TIntParam((this + 11872), &unk_262895028, &unk_262895098, 0, 0, 30, 26, &unk_26289484C, &dword_262891CBC);
  TIntParam::TIntParam((this + 12224), &unk_2628951B0, &unk_262895210, 0, 0, 30, 25, &unk_26289484C, &dword_262891CBC);
  TIntParam::TIntParam((this + 12576), &unk_262895318, &unk_262895384, 0, 0, 30, 5, &unk_26289484C, &dword_262891CBC);
  TIntParam::TIntParam((this + 12928), &unk_262895498, &unk_26289550C, 0, 0, 30, 6, &unk_26289484C, &dword_262891CBC);
  TIntParam::TIntParam((this + 13280), &unk_262895628, &unk_262895690, 0, 0, 30, 7, &unk_26289484C, &dword_262891CBC);
  TIntParam::TIntParam((this + 13632), &unk_2628957A0, &unk_262895814, 0, 0, 30, 11, &unk_262895924, &dword_262891CBC);
  TIntParam::TIntParam((this + 13984), &unk_262895964, &unk_2628959D8, 0, 0, 30, 12, &unk_262895924, &dword_262891CBC);
  TIntParam::TIntParam((this + 14336), &unk_262895AE8, &unk_262895B54, 0, 0, 30, 13, &unk_262895924, &dword_262891CBC);
  TIntParam::TIntParam((this + 14688), &unk_262895C5C, &unk_262895CCC, 0, 0, 30, 16, &unk_262895DC4, &dword_262891CBC);
  TStringParam::TStringParam(this + 15040, &unk_262895E04, &unk_262895E84, 0, &dword_262891CBC, &unk_2628962F4, &dword_262891CBC);
  TBoolParam::TBoolParam(this + 16416, &unk_262896334, &unk_2628963C4, 0, 0, &unk_262896564, &dword_262891CBC);
  TBoolParam::TBoolParam(this + 16664, &unk_2628965A4, &unk_2628965EC, 0, 1, &unk_2628968DC, &dword_262891CBC);
  TBoolParam::TBoolParam(this + 16912, &unk_262896914, &unk_26289697C, 0, 1, &unk_2628968DC, &dword_262891CBC);
  TBoolParam::TBoolParam(this + 17160, &unk_262896CE0, &unk_262896D2C, 0, 1, &unk_2628968DC, &dword_262891CBC);
  TIntParam::TIntParam((this + 17408), &unk_26289741C, &unk_262897474, 0, -1, 50, 0, &unk_262897FAC, &dword_262891CBC);
  TBoolParam::TBoolParam(this + 17760, &unk_262897FEC, &unk_262898024, 0, 0, &unk_262891CC0, &dword_262891CBC);
  TBoolParam::TBoolParam(this + 18008, &unk_26289814C, &unk_262898180, 0, 0, &unk_262891CC0, &dword_262891CBC);
  TBoolParam::TBoolParam(this + 18256, &unk_262898284, &unk_2628982D8, 0, 0, &unk_2628985F0, &dword_262891CBC);
  TBoolParam::TBoolParam(this + 18504, &unk_262898624, &unk_262898664, 0, 0, &unk_262898704, &dword_262891CBC);
  TBoolParam::TBoolParam(this + 18752, &unk_262898738, &unk_262898780, 0, 0, &unk_262898894, &dword_262891CBC);
  TBoolParam::TBoolParam(this + 19000, &unk_2628988C8, &unk_262898910, 0, 0, &unk_262898A0C, &dword_262891CBC);
  TBoolParam::TBoolParam(this + 19248, &unk_262898A44, &unk_262898A90, 0, 0, &unk_262898B8C, &dword_262891CBC);
  TBoolParam::TBoolParam(this + 19496, &unk_262898BC4, &unk_262898C00, 32, 1, &unk_262898CB4, &dword_262891CBC);
  TBoolParam::TBoolParam(this + 19744, &unk_262898CE8, &unk_262898D44, 288, 1, &unk_262898E20, &dword_262891CBC);
  TStringParam::TStringParam(this + 19992, &unk_262898E58, &unk_262898C00, 32, &dword_262891CBC, &unk_262898CB4, &dword_262891CBC);
  TStringParam::TStringParam(this + 21368, &unk_262898E9C, &unk_262898D44, 288, &dword_262891CBC, &unk_262898E20, &dword_262891CBC);
  TIntParam::TIntParam((this + 22744), &unk_262898F00, &unk_262898C00, 32, -1, 10, 5, &unk_262898CB4, &dword_262891CBC);
  TIntParam::TIntParam((this + 23096), &unk_262898F38, &unk_262898D44, 288, -1, 10, 5, &unk_262898E20, &dword_262891CBC);
  TStringParam::TStringParam(this + 23448, &unk_262898F90);
  TStringParam::TStringParam(this + 24824, &unk_262898FCC);
  TFloatParam::TFloatParam(this + 26200, &unk_262899028, &unk_262898C00, 32, &unk_262898CB4, &dword_262891CBC, 0.0);
  TFloatParam::TFloatParam(this + 26736, &unk_262899068, &unk_262898D44, 288, &unk_262898E20, &dword_262891CBC, 0.0);
  TParamManager::add(this, v4);
  TParamManager::add(this, (this + 1520));
  TParamManager::add(this, (this + 1872));
  TParamManager::add(this, (this + 2224));
  TParamManager::add(this, (this + 2472));
  TParamManager::add(this, (this + 2720));
  TParamManager::add(this, (this + 3256));
  TParamManager::add(this, (this + 3792));
  TParamManager::add(this, (this + 4040));
  TParamManager::add(this, (this + 4392));
  TParamManager::add(this, (this + 5768));
  TParamManager::add(this, (this + 6016));
  TParamManager::add(this, (this + 6264));
  TParamManager::add(this, (this + 7640));
  TParamManager::add(this, (this + 7888));
  TParamManager::add(this, (this + 9264));
  TParamManager::add(this, (this + 9512));
  TParamManager::add(this, (this + 9760));
  TParamManager::add(this, (this + 10112));
  TParamManager::add(this, (this + 10464));
  TParamManager::add(this, (this + 10816));
  TParamManager::add(this, (this + 11168));
  TParamManager::add(this, (this + 11520));
  TParamManager::add(this, (this + 11872));
  TParamManager::add(this, (this + 12224));
  TParamManager::add(this, (this + 12576));
  TParamManager::add(this, (this + 12928));
  TParamManager::add(this, (this + 13280));
  TParamManager::add(this, (this + 13632));
  TParamManager::add(this, (this + 13984));
  TParamManager::add(this, (this + 14336));
  TParamManager::add(this, (this + 14688));
  TParamManager::add(this, (this + 15040));
  TParamManager::add(this, (this + 16416));
  TParamManager::add(this, (this + 16664));
  TParamManager::add(this, (this + 16912));
  TParamManager::add(this, (this + 17160));
  TParamManager::add(this, (this + 17408));
  TParamManager::add(this, (this + 17760));
  TParamManager::add(this, (this + 18008));
  TParamManager::add(this, (this + 18256));
  TParamManager::add(this, (this + 18504));
  TParamManager::add(this, (this + 18752));
  TParamManager::add(this, (this + 19000));
  TParamManager::add(this, (this + 19248));
  TParamManager::add(this, (this + 19496));
  TParamManager::add(this, (this + 19744));
  TParamManager::add(this, (this + 19992));
  TParamManager::add(this, (this + 21368));
  TParamManager::add(this, (this + 22744));
  TParamManager::add(this, (this + 23096));
  MEMORY[0x26672AF30](this + 23488, &unk_262898C00);
  MEMORY[0x26672AF30](this + 23512, &unk_262898CB4);
  MEMORY[0x26672AF30](this + 23536, &dword_262891CBC);
  *(this + 2945) |= 0x20uLL;
  std::vector<std::wstring>::vector[abi:ne200100](v10, 4uLL);
  std::vector<std::wstring>::vector[abi:ne200100](v9, 4uLL);
  v5 = 0;
  v6 = &unk_2628990C8;
  do
  {
    MEMORY[0x26672AF30](&v10[0][v5], v6);
    v6 += wcslen(v6) + 1;
    ++v5;
  }

  while (v5 != 4);
  TStringParam::setAllowables(this + 23448, v10, 0, 0);
  TStringParam::setOriginal(this + 2931, 0, &dword_262891CBC);
  TParamManager::add(this, (this + 23448));
  v11 = v9;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v11);
  v9[0] = v10;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](v9);
  MEMORY[0x26672AF30](this + 24864, &unk_262898D44);
  MEMORY[0x26672AF30](this + 24888, &unk_262898E20);
  MEMORY[0x26672AF30](this + 24912, &dword_262891CBC);
  *(this + 3117) |= 0x120uLL;
  std::vector<std::wstring>::vector[abi:ne200100](v10, 4uLL);
  std::vector<std::wstring>::vector[abi:ne200100](v9, 4uLL);
  v7 = 0;
  v8 = &unk_2628990C8;
  do
  {
    MEMORY[0x26672AF30](&v10[0][v7], v8);
    v8 += wcslen(v8) + 1;
    ++v7;
  }

  while (v7 != 4);
  TStringParam::setAllowables(this + 24824, v10, 0, 0);
  TStringParam::setOriginal(this + 3103, 0, &dword_262891CBC);
  TParamManager::add(this, (this + 24824));
  v11 = v9;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v11);
  v9[0] = v10;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](v9);
  TParamManager::add(this, (this + 26200));
  TParamManager::add(this, (this + 26736));
  *(this + 3410) = -1;
  *(this + 3409) = -1;
}

void sub_26284CFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&a10);
  TParam::~TParam((v13 + v18));
  TParam::~TParam((v13 + v17));
  TStringParam::~TStringParam((v13 + v16));
  TStringParam::~TStringParam((v13 + v15));
  TParam::~TParam((v13 + v20));
  TParam::~TParam((v13 + v19));
  TStringParam::~TStringParam(v13 + 2671);
  TStringParam::~TStringParam(v13 + 2499);
  TBoolParam::~TBoolParam(v13 + 2468);
  TBoolParam::~TBoolParam(v13 + 2437);
  TBoolParam::~TBoolParam(v13 + 2406);
  TBoolParam::~TBoolParam(v13 + 2375);
  TBoolParam::~TBoolParam(v13 + 2344);
  TBoolParam::~TBoolParam(v13 + 2313);
  TBoolParam::~TBoolParam(v13 + 2282);
  TBoolParam::~TBoolParam(v13 + 2251);
  TBoolParam::~TBoolParam(v13 + 2220);
  TParam::~TParam(v13 + 2176);
  TBoolParam::~TBoolParam(v13 + 2145);
  TBoolParam::~TBoolParam(v13 + 2114);
  TBoolParam::~TBoolParam(v13 + 2083);
  TBoolParam::~TBoolParam(v13 + 2052);
  TStringParam::~TStringParam(v13 + 1880);
  TParam::~TParam(v13 + 1836);
  TParam::~TParam(v13 + 1792);
  TParam::~TParam(v13 + 1748);
  TParam::~TParam(v13 + 1704);
  TParam::~TParam(v13 + 1660);
  TParam::~TParam(v13 + 1616);
  TParam::~TParam(v13 + 1572);
  TParam::~TParam(v13 + 1528);
  TParam::~TParam(v13 + 1484);
  TParam::~TParam(v13 + 1440);
  TParam::~TParam(v13 + 1396);
  TParam::~TParam(v13 + 1352);
  TParam::~TParam(v13 + 1308);
  TParam::~TParam(v13 + 1264);
  TParam::~TParam(v13 + 1220);
  TBoolParam::~TBoolParam(v13 + 1189);
  TBoolParam::~TBoolParam(v13 + 1158);
  TStringParam::~TStringParam(v13 + 986);
  TBoolParam::~TBoolParam(v13 + 955);
  TStringParam::~TStringParam(v13 + 783);
  TBoolParam::~TBoolParam(v13 + 752);
  TBoolParam::~TBoolParam(v13 + 721);
  TStringParam::~TStringParam(v13 + 549);
  TParam::~TParam(v13 + 505);
  TBoolParam::~TBoolParam(v13 + 474);
  TParam::~TParam(v13 + 407);
  TParam::~TParam(v13 + 340);
  TBoolParam::~TBoolParam(v13 + 309);
  TBoolParam::~TBoolParam(v13 + 278);
  TParam::~TParam(v13 + 234);
  TParam::~TParam(v13 + 190);
  TStringParam::~TStringParam(v14);
  TParamManager::~TParamManager(v13);
  _Unwind_Resume(a1);
}

void TItnParamManager::initialize(TItnParamManager *this, TInputStream *a2, char a3)
{
  if (*(a2 + 8) == 1)
  {
    if (*(a2 + 12) <= 4uLL)
    {
      *(this + 3409) = TParamManager::newConfig(this, dword_2628990E8, 1);
      *(this + 3410) = TParamManager::newConfig(this, dword_262899104, 1);
    }

    TParamManager::initialize(this, a2, a3);
  }
}

uint64_t TItnParamManager::initializeParamConfigs(uint64_t this)
{
  v1 = this;
  if (*(this + 27272) == -1)
  {
    this = TParamManager::getConfig(this, dword_2628990E8);
    if (this == -1)
    {
      v2 = 1;
    }

    else
    {
      v2 = this;
    }

    *(v1 + 27272) = v2;
  }

  if (*(v1 + 27280) == -1)
  {
    this = TParamManager::getConfig(v1, dword_262899104);
    if (this == -1)
    {
      v3 = 1;
    }

    else
    {
      v3 = this;
    }

    *(v1 + 27280) = v3;
  }

  return this;
}

void TItnParamManager::~TItnParamManager(void **this)
{
  TItnParamManager::~TItnParamManager(this);

  JUMPOUT(0x26672B1B0);
}

{
  *this = &unk_287527380;
  TParam::~TParam(this + 3342);
  TParam::~TParam(this + 3275);
  this[3103] = &unk_287528A10;
  v58 = this + 3272;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v58);
  v58 = this + 3269;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v58);
  v58 = this + 3266;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v58);
  v2 = this + 3263;
  v3 = -1152;
  do
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    v2 -= 3;
    v3 += 24;
  }

  while (v3);
  TParam::~TParam(this + 3103);
  this[2931] = &unk_287528A10;
  v58 = this + 3100;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v58);
  v58 = this + 3097;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v58);
  v58 = this + 3094;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v58);
  v4 = this + 3091;
  v5 = -1152;
  do
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    v4 -= 3;
    v5 += 24;
  }

  while (v5);
  TParam::~TParam(this + 2931);
  TParam::~TParam(this + 2887);
  TParam::~TParam(this + 2843);
  this[2671] = &unk_287528A10;
  v58 = this + 2840;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v58);
  v58 = this + 2837;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v58);
  v58 = this + 2834;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v58);
  v6 = this + 2831;
  v7 = -1152;
  do
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    v6 -= 3;
    v7 += 24;
  }

  while (v7);
  TParam::~TParam(this + 2671);
  this[2499] = &unk_287528A10;
  v58 = this + 2668;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v58);
  v58 = this + 2665;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v58);
  v58 = this + 2662;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v58);
  v8 = this + 2659;
  v9 = -1152;
  do
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    v8 -= 3;
    v9 += 24;
  }

  while (v9);
  TParam::~TParam(this + 2499);
  this[2468] = &unk_2875295A0;
  v10 = this + 2496;
  v11 = -48;
  do
  {
    if (*(v10 + 23) < 0)
    {
      operator delete(*v10);
    }

    v10 -= 3;
    v11 += 24;
  }

  while (v11);
  TParam::~TParam(this + 2468);
  this[2437] = &unk_2875295A0;
  v12 = this + 2465;
  v13 = -48;
  do
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    v12 -= 3;
    v13 += 24;
  }

  while (v13);
  TParam::~TParam(this + 2437);
  this[2406] = &unk_2875295A0;
  v14 = this + 2434;
  v15 = -48;
  do
  {
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    v14 -= 3;
    v15 += 24;
  }

  while (v15);
  TParam::~TParam(this + 2406);
  this[2375] = &unk_2875295A0;
  v16 = this + 2403;
  v17 = -48;
  do
  {
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    v16 -= 3;
    v17 += 24;
  }

  while (v17);
  TParam::~TParam(this + 2375);
  this[2344] = &unk_2875295A0;
  v18 = this + 2372;
  v19 = -48;
  do
  {
    if (*(v18 + 23) < 0)
    {
      operator delete(*v18);
    }

    v18 -= 3;
    v19 += 24;
  }

  while (v19);
  TParam::~TParam(this + 2344);
  this[2313] = &unk_2875295A0;
  v20 = this + 2341;
  v21 = -48;
  do
  {
    if (*(v20 + 23) < 0)
    {
      operator delete(*v20);
    }

    v20 -= 3;
    v21 += 24;
  }

  while (v21);
  TParam::~TParam(this + 2313);
  this[2282] = &unk_2875295A0;
  v22 = this + 2310;
  v23 = -48;
  do
  {
    if (*(v22 + 23) < 0)
    {
      operator delete(*v22);
    }

    v22 -= 3;
    v23 += 24;
  }

  while (v23);
  TParam::~TParam(this + 2282);
  this[2251] = &unk_2875295A0;
  v24 = this + 2279;
  v25 = -48;
  do
  {
    if (*(v24 + 23) < 0)
    {
      operator delete(*v24);
    }

    v24 -= 3;
    v25 += 24;
  }

  while (v25);
  TParam::~TParam(this + 2251);
  this[2220] = &unk_2875295A0;
  v26 = this + 2248;
  v27 = -48;
  do
  {
    if (*(v26 + 23) < 0)
    {
      operator delete(*v26);
    }

    v26 -= 3;
    v27 += 24;
  }

  while (v27);
  TParam::~TParam(this + 2220);
  TParam::~TParam(this + 2176);
  this[2145] = &unk_2875295A0;
  v28 = this + 2173;
  v29 = -48;
  do
  {
    if (*(v28 + 23) < 0)
    {
      operator delete(*v28);
    }

    v28 -= 3;
    v29 += 24;
  }

  while (v29);
  TParam::~TParam(this + 2145);
  this[2114] = &unk_2875295A0;
  v30 = this + 2142;
  v31 = -48;
  do
  {
    if (*(v30 + 23) < 0)
    {
      operator delete(*v30);
    }

    v30 -= 3;
    v31 += 24;
  }

  while (v31);
  TParam::~TParam(this + 2114);
  this[2083] = &unk_2875295A0;
  v32 = this + 2111;
  v33 = -48;
  do
  {
    if (*(v32 + 23) < 0)
    {
      operator delete(*v32);
    }

    v32 -= 3;
    v33 += 24;
  }

  while (v33);
  TParam::~TParam(this + 2083);
  this[2052] = &unk_2875295A0;
  v34 = this + 2080;
  v35 = -48;
  do
  {
    if (*(v34 + 23) < 0)
    {
      operator delete(*v34);
    }

    v34 -= 3;
    v35 += 24;
  }

  while (v35);
  TParam::~TParam(this + 2052);
  this[1880] = &unk_287528A10;
  v58 = this + 2049;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v58);
  v58 = this + 2046;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v58);
  v58 = this + 2043;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v58);
  v36 = this + 2040;
  v37 = -1152;
  do
  {
    if (*(v36 + 23) < 0)
    {
      operator delete(*v36);
    }

    v36 -= 3;
    v37 += 24;
  }

  while (v37);
  TParam::~TParam(this + 1880);
  TParam::~TParam(this + 1836);
  TParam::~TParam(this + 1792);
  TParam::~TParam(this + 1748);
  TParam::~TParam(this + 1704);
  TParam::~TParam(this + 1660);
  TParam::~TParam(this + 1616);
  TParam::~TParam(this + 1572);
  TParam::~TParam(this + 1528);
  TParam::~TParam(this + 1484);
  TParam::~TParam(this + 1440);
  TParam::~TParam(this + 1396);
  TParam::~TParam(this + 1352);
  TParam::~TParam(this + 1308);
  TParam::~TParam(this + 1264);
  TParam::~TParam(this + 1220);
  this[1189] = &unk_2875295A0;
  v38 = this + 1217;
  v39 = -48;
  do
  {
    if (*(v38 + 23) < 0)
    {
      operator delete(*v38);
    }

    v38 -= 3;
    v39 += 24;
  }

  while (v39);
  TParam::~TParam(this + 1189);
  this[1158] = &unk_2875295A0;
  v40 = this + 1186;
  v41 = -48;
  do
  {
    if (*(v40 + 23) < 0)
    {
      operator delete(*v40);
    }

    v40 -= 3;
    v41 += 24;
  }

  while (v41);
  TParam::~TParam(this + 1158);
  this[986] = &unk_287528A10;
  v58 = this + 1155;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v58);
  v58 = this + 1152;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v58);
  v58 = this + 1149;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v58);
  v42 = this + 1146;
  v43 = -1152;
  do
  {
    if (*(v42 + 23) < 0)
    {
      operator delete(*v42);
    }

    v42 -= 3;
    v43 += 24;
  }

  while (v43);
  TParam::~TParam(this + 986);
  this[955] = &unk_2875295A0;
  v44 = this + 983;
  v45 = -48;
  do
  {
    if (*(v44 + 23) < 0)
    {
      operator delete(*v44);
    }

    v44 -= 3;
    v45 += 24;
  }

  while (v45);
  TParam::~TParam(this + 955);
  this[783] = &unk_287528A10;
  v58 = this + 952;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v58);
  v58 = this + 949;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v58);
  v58 = this + 946;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v58);
  v46 = this + 943;
  v47 = -1152;
  do
  {
    if (*(v46 + 23) < 0)
    {
      operator delete(*v46);
    }

    v46 -= 3;
    v47 += 24;
  }

  while (v47);
  TParam::~TParam(this + 783);
  this[752] = &unk_2875295A0;
  v48 = this + 780;
  v49 = -48;
  do
  {
    if (*(v48 + 23) < 0)
    {
      operator delete(*v48);
    }

    v48 -= 3;
    v49 += 24;
  }

  while (v49);
  TParam::~TParam(this + 752);
  this[721] = &unk_2875295A0;
  v50 = this + 749;
  v51 = -48;
  do
  {
    if (*(v50 + 23) < 0)
    {
      operator delete(*v50);
    }

    v50 -= 3;
    v51 += 24;
  }

  while (v51);
  TParam::~TParam(this + 721);
  this[549] = &unk_287528A10;
  v58 = this + 718;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v58);
  v58 = this + 715;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v58);
  v58 = this + 712;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v58);
  v52 = this + 709;
  v53 = -1152;
  do
  {
    if (*(v52 + 23) < 0)
    {
      operator delete(*v52);
    }

    v52 -= 3;
    v53 += 24;
  }

  while (v53);
  TParam::~TParam(this + 549);
  TParam::~TParam(this + 505);
  v54 = 0;
  this[474] = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v54 + 504]) < 0)
    {
      operator delete(this[v54 + 502]);
    }

    v54 -= 3;
  }

  while (v54 != -6);
  TParam::~TParam(this + 474);
  TParam::~TParam(this + 407);
  TParam::~TParam(this + 340);
  v55 = 0;
  this[309] = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v55 + 339]) < 0)
    {
      operator delete(this[v55 + 337]);
    }

    v55 -= 3;
  }

  while (v55 != -6);
  TParam::~TParam(this + 309);
  v56 = 0;
  this[278] = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v56 + 308]) < 0)
    {
      operator delete(this[v56 + 306]);
    }

    v56 -= 3;
  }

  while (v56 != -6);
  TParam::~TParam(this + 278);
  TParam::~TParam(this + 234);
  TParam::~TParam(this + 190);
  this[18] = &unk_287528A10;
  v58 = this + 187;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v58);
  v58 = this + 184;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v58);
  v58 = this + 181;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v58);
  v57 = 144;
  do
  {
    if (SHIBYTE(this[v57 + 36]) < 0)
    {
      operator delete(this[v57 + 34]);
    }

    v57 -= 3;
  }

  while (v57 * 8);
  TParam::~TParam(this + 18);
  TParamManager::~TParamManager(this);
}

void MrecInitModule_history_net(void)
{
  if (!gParDebugShowFinalHistoryStats)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugShowFinalHistoryStats", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugShowFinalHistoryStats = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugShowFinalHistoryStats);
  }
}

uint64_t HistoryMgr::HistoryMgr(uint64_t a1, _DWORD *a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  HashKEVTLT<unsigned int,History const*,HistoryMgr>::HashKEVTLT(a1 + 24, 0, 2040);
  *(a1 + 44) = 1;
  *(a1 + 128) = a1;
  return a1;
}

void HistoryMgr::~HistoryMgr(HistoryMgr *this)
{
  *(this + 4) = 0;
  HashKEVTLT<unsigned int,History const*,HistoryMgr>::releaseAllQuick(this + 24);
  HashKEVTLT<unsigned int,History const*,HistoryMgr>::~HashKEVTLT(this + 24);
  DgnIArray<Utterance *>::~DgnIArray(this + 8);
}

void HistoryMgr::printSize(HistoryMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/history.cpp", 225, &v53);
  if (v54)
  {
    v16 = v53;
  }

  else
  {
    v16 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &byte_262899963, a3, &byte_262899963, v16);
  DgnString::~DgnString(&v53);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &byte_262899963);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/history.cpp", 227, &v53);
  if (v54)
  {
    v25 = v53;
  }

  else
  {
    v25 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, v22, v23, v24, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v25, 4, 4, 0);
  DgnString::~DgnString(&v53);
  *a4 += 4;
  *a5 += 4;
  v26 = sizeObject<History>(this + 8, 0);
  v27 = sizeObject<History>(this + 8, 1);
  v53 = 0x3FFFFAFFFFFFLL;
  v54 = xmmword_26286CC40;
  v55 = 0x1F0000001FLL;
  sizeObject(&v53, 2);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/history.cpp", 229, &v53);
  if (v54)
  {
    v32 = v53;
  }

  else
  {
    v32 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, v29, v30, v31, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v32, v26, v27, 0);
  DgnString::~DgnString(&v53);
  *a4 += v26;
  *a5 += v27;
  v33 = sizeObject(this + 48);
  v34 = sizeObject<DgnIFixArray<BucketLinkKEVTLT<unsigned int> *>>(this + 104, 0);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v35 = 8;
  }

  else
  {
    v35 = 16;
  }

  v36 = v33 + v34 + v35 + 13;
  v37 = sizeObject(this + 48);
  v38 = sizeObject<DgnIFixArray<BucketLinkKEVTLT<unsigned int> *>>(this + 104, 1);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v39 = 8;
  }

  else
  {
    v39 = 16;
  }

  v40 = v37 + v38 + v39 + 13;
  v41 = sizeObject(this + 48);
  v53 = 0;
  LODWORD(v54) = 0;
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v53);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/history.cpp", 231, &v53);
  if (v54)
  {
    v46 = v53;
  }

  else
  {
    v46 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v43, v44, v45, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v46, v36, v40, v41);
  DgnString::~DgnString(&v53);
  *a4 += v36;
  *a5 += v40;
  *a6 += v41;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/net/history.cpp", 232, &v53);
  if (v54)
  {
    v51 = v53;
  }

  else
  {
    v51 = &byte_262899963;
  }

  v52 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v47, v48, v49, v50, a3, &byte_262899963, (35 - a3), (35 - a3), v51, *a4, *a5, *a6);
  DgnString::~DgnString(&v53);
}

void sub_26284E7C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<History>(uint64_t a1, int a2)
{
  v11 = 0x3FFFFAFFFFFFLL;
  v12 = xmmword_26286CC40;
  v13 = 0x1F0000001FLL;
  v4 = sizeObject(&v11, 2);
  if (a2 == 3)
  {
    return 0;
  }

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
      v9 = 36 * v7 - 36;
      do
      {
        v5 += sizeObject(*a1 + v9, a2) + 12;
        --v8;
        v9 -= 36;
      }

      while (v8 > 1);
    }

    if (!a2)
    {
      v5 += (v6 + 12) * (*(a1 + 12) - *(a1 + 8));
    }
  }

  return v5;
}

void *HashKEVTLT<unsigned int,History const*,HistoryMgr>::releaseAllQuick(uint64_t a1)
{
  *(a1 + 8) = 0;
  v1 = *(a1 + 88);
  if (v1)
  {
    v2 = 0;
    v3 = *(a1 + 80);
    do
    {
      v4 = v3 + 16 * v2;
      if (*(v4 + 8))
      {
        v5 = 0;
        do
        {
          *(*v4 + 8 * v5++) = 0;
          v3 = *(a1 + 80);
          v4 = v3 + 16 * v2;
        }

        while (v5 < *(v4 + 8));
      }

      ++v2;
    }

    while (v2 != v1);
  }

  return DgnPool::deleteAllWithoutDestroying((a1 + 24));
}

uint64_t HistoryMgr::copyAndOverrideToBigramHistories(HistoryMgr *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v3 = 0;
    do
    {
      v4 = *(this + 1);
      v5 = *(v4 + v3);
      v6 = *(v4 + v3 + 4);
      v7 = *(v4 + v3 + 6);
      v8 = *(v4 + v3 + 8);
      v9 = *(v4 + v3 + 20);
      v11 = *(v4 + v3 + 28);
      v10 = *(v4 + v3 + 32);
      if (v10 == -2)
      {
        v12 = -2;
      }

      else
      {
        v12 = v10 + v1;
      }

      v13 = *(this + 4);
      v14 = *(this + 5);
      v17 = v13;
      if (v13 == v14)
      {
        DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(this + 8, 1, 1);
        v13 = *(this + 4);
        v4 = *(this + 1);
      }

      v15 = v4 + 36 * v13;
      *v15 = v5;
      *(v15 + 4) = v6;
      v3 += 36;
      *(v15 + 6) = v7;
      *(v15 + 8) = v8;
      *(v15 + 16) = -83886084;
      *(v15 + 20) = v9;
      *(v15 + 28) = v11;
      *(v15 + 32) = v12;
      *(this + 4) = v13 + 1;
      HashKEVTLT<unsigned int,History const*,HistoryMgr>::add(this + 24, &v17);
    }

    while (36 * v1 != v3);
  }

  return v1;
}

uint64_t HashKEVTLT<unsigned int,History const*,HistoryMgr>::add(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 12);
  if (*(a1 + 8) >= v4 >> 1)
  {
    HashKEVTLT<unsigned int,History const*,HistoryMgr>::upSize(a1, 2 * v4);
  }

  v5 = (*(*(a1 + 104) + 8) + 36 * *a2);
  v6 = v5[8];
  HIDWORD(v7) = v5[6];
  LODWORD(v7) = HIDWORD(v7);
  v8 = (v7 >> 19) + v5[7];
  result = CWIDAC::computeHash(v5);
  HIDWORD(v7) = v8;
  LODWORD(v7) = v8;
  v10 = v7 >> 19;
  HIDWORD(v7) = v6;
  LODWORD(v7) = v6;
  v11 = result + (v7 >> 19) + v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = (-1640531527 * v11) >> -v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13 & 0x3FFFF;
  v15 = *(*(a1 + 80) + 16 * (v13 >> 18));
  v16 = *(a1 + 32);
  if (!v16)
  {
    result = DgnPool::addChunk((a1 + 24));
    v16 = *(a1 + 32);
  }

  v17 = (v15 + 8 * v14);
  *(a1 + 32) = *v16;
  *(v16 + 8) = 0;
  v18 = *a2;
  *(v16 + 8) = v11;
  *(v16 + 12) = v18;
  ++*(a1 + 8);
  if (*(a1 + 20))
  {
    *v16 = *v17;
  }

  else
  {
    *v16 = 0;
    v19 = *v17;
    if (*v17)
    {
      do
      {
        v17 = v19;
        v19 = *v19;
      }

      while (v19);
    }
  }

  *v17 = v16;
  return result;
}

uint64_t HistoryMgr::extendHistory(uint64_t a1, int a2, int *a3, int a4, int a5, int a6, _BYTE *a7)
{
  if (a6 == -32 || a5 == -32)
  {
    v10 = -48;
  }

  else
  {
    v10 = a5;
  }

  v11 = a3[1];
  v18 = *a3;
  v19 = v11;
  v20 = *(a3 + 2);
  if (!a4)
  {
    v10 = a6;
  }

  v21 = __PAIR64__(a6, v10);
  v22 = a2;
  v17 = &v18;
  v12 = *HashKEVTLT<unsigned int,History const*,HistoryMgr>::findBucket(a1 + 24, &v17);
  if (v12)
  {
    *a7 = 0;
    return *(v12 + 12);
  }

  else
  {
    v14 = *(a1 + 16);
    v15 = *(a1 + 20);
    LODWORD(v17) = v14;
    if (v14 == v15)
    {
      DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(a1 + 8, 1, 1);
      v14 = *(a1 + 16);
    }

    v16 = *(a1 + 8) + 36 * v14;
    *v16 = v18;
    *(v16 + 4) = v19;
    *(v16 + 8) = v20;
    *(v16 + 24) = v21;
    *(v16 + 32) = v22;
    *(a1 + 16) = v14 + 1;
    HashKEVTLT<unsigned int,History const*,HistoryMgr>::add(a1 + 24, &v17);
    *a7 = 1;
    return v17;
  }
}

double HistoryMgr::getForwardContents(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == -2)
  {
    *(a3 + 8) = 0;
  }

  else
  {
    LODWORD(v5) = 0;
    v6 = a2;
    v7 = a2;
    do
    {
      v5 = (v5 + 1);
      LODWORD(v7) = *(*(a1 + 8) + 36 * v7 + 32);
    }

    while (v7 != -2);
    v8 = *(a3 + 12);
    if (v8 < v5)
    {
      DgnArray<PrefilterResultFrame>::reallocElts(a3, v5 - v8, 0);
    }

    v10 = *(a3 + 8);
    if (v10 < v5)
    {
      v11 = v5 - v10;
      v12 = *a3 + 32 * v10;
      result = NAN;
      do
      {
        *v12 = 0x3FFFFAFFFFFFLL;
        *(v12 + 8) = xmmword_26286CC40;
        *(v12 + 24) = 0x1F0000001FLL;
        v12 += 32;
        --v11;
      }

      while (v11);
    }

    *(a3 + 8) = v5;
    if (v5)
    {
      v13 = v5 - 1;
      v14 = *(a1 + 8);
      v15 = *a3;
      do
      {
        v16 = v14 + 36 * v6;
        v17 = v15 + 32 * v13;
        *v17 = *v16;
        *(v17 + 4) = *(v16 + 4);
        *(v17 + 8) = *(v16 + 8);
        result = *(v16 + 24);
        *(v17 + 24) = result;
        v6 = *(v16 + 32);
        --v13;
      }

      while (v6 != -2);
    }
  }

  return result;
}

uint64_t HashKEVTLT<unsigned int,History const*,HistoryMgr>::HashKEVTLT(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_287529600;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  v6 = RoundUpToPowerOf2(a3, (v5 + 16));
  *(a1 + 8) = 0;
  *(a1 + 12) = v6;
  HashKEVTLT<unsigned int,History const*,HistoryMgr>::initBuckets(a1);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v7 = 12;
  }

  else
  {
    v7 = 16;
  }

  *(a1 + 24) = 16;
  *(a1 + 28) = v7;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  return a1;
}

void sub_26284EE48(_Unwind_Exception *a1)
{
  DgnFixArray<DgnIFixArray<BucketLinkKEVTLT<unsigned int> *>>::releaseAll(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void HashKEVTLT<unsigned int,History const*,HistoryMgr>::~HashKEVTLT(uint64_t a1)
{
  HashKEVTLT<unsigned int,History const*,HistoryMgr>::~HashKEVTLT(a1);

  JUMPOUT(0x26672B1B0);
}

uint64_t HashKEVTLT<unsigned int,History const*,HistoryMgr>::computeDepth(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  result = 0;
  v5 = *(a1 + 80);
  do
  {
    v6 = (v5 + 16 * v3);
    v7 = *(v6 + 2);
    if (v7)
    {
      v8 = 0;
      v9 = *v6;
      do
      {
        v10 = *(v9 + 8 * v8);
        if (v10)
        {
          v11 = 0;
          do
          {
            v10 = *v10;
            ++v11;
          }

          while (v10);
          if (v11 <= result)
          {
            result = result;
          }

          else
          {
            result = v11;
          }
        }

        ++v8;
      }

      while (v8 != v7);
    }

    ++v3;
  }

  while (v3 != v1);
  return result;
}

uint64_t *HashKEVTLT<unsigned int,History const*,HistoryMgr>::initBuckets(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 3);
  v3 = *(result + 22);
  if (v2 >= 0x40000)
  {
    if (v3 || (result = DgnFixArray<DgnIFixArray<BucketLinkKEVTLT<unsigned int> *>>::allocElts((result + 10), v2 >> 18), *(v1 + 22)))
    {
      v4 = 0;
      v5 = v1[10];
      do
      {
        v6 = v5 + 16 * v4;
        if (*(v6 + 8) || (result = MemChunkAlloc(0x200000uLL, 0), *v6 = result, *(v6 + 8) = 0x40000, v5 = v1[10], *(v5 + 16 * v4 + 8)))
        {
          v7 = 0;
          v8 = v5 + 16 * v4;
          do
          {
            *(*v8 + 8 * v7++) = 0;
            v5 = v1[10];
            v8 = v5 + 16 * v4;
          }

          while (v7 < *(v8 + 8));
        }

        ++v4;
      }

      while (v4 < *(v1 + 22));
    }

    return result;
  }

  if (!v3)
  {
    result = MemChunkAlloc(0x10uLL, 0);
    v9 = result;
    v10 = 0;
    v1[10] = result;
    *result = 0;
    *(result + 2) = 0;
    *(v1 + 22) = 1;
    v2 = *(v1 + 3);
    if (!v2)
    {
      goto LABEL_17;
    }

LABEL_15:
    if (!v10)
    {
      result = MemChunkAlloc(8 * v2, 0);
      *v9 = result;
      *(v9 + 2) = v2;
      v9 = v1[10];
      v10 = *(v9 + 2);
    }

    goto LABEL_17;
  }

  v9 = result[10];
  v10 = *(v9 + 2);
  if (v2)
  {
    goto LABEL_15;
  }

LABEL_17:
  if (v10)
  {
    v11 = 0;
    do
    {
      *(*v9 + 8 * v11++) = 0;
      v9 = v1[10];
    }

    while (v11 < *(v9 + 2));
  }

  return result;
}

uint64_t *DgnFixArray<DgnIFixArray<BucketLinkKEVTLT<unsigned int> *>>::allocElts(uint64_t a1, unsigned int a2)
{
  result = MemChunkAlloc(16 * a2, 0);
  *a1 = result;
  if (a2)
  {
    v5 = a2;
    v6 = result + 1;
    do
    {
      *(v6 - 1) = 0;
      *v6 = 0;
      v6 += 4;
      --v5;
    }

    while (v5);
  }

  *(a1 + 8) = a2;
  return result;
}

void *DgnFixArray<DgnIFixArray<BucketLinkKEVTLT<unsigned int> *>>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 16 * v2 - 16;
    do
    {
      DgnPrimFixArray<double>::~DgnPrimFixArray(*a1 + v3);
      v3 -= 16;
    }

    while (v3 != -16);
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

uint64_t HashKEVTLT<unsigned int,History const*,HistoryMgr>::~HashKEVTLT(uint64_t a1)
{
  *a1 = &unk_287529600;
  if (*(a1 + 8))
  {
    HashKEVTLT<unsigned int,History const*,HistoryMgr>::removeAll(a1);
  }

  DgnFixArray<DgnIFixArray<BucketLinkKEVTLT<unsigned int> *>>::releaseAll(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  return MrecInitModule_sdpres_sdapi();
}

uint64_t HashKEVTLT<unsigned int,History const*,HistoryMgr>::removeAll(uint64_t result)
{
  v1 = result;
  v2 = *(result + 88);
  if (v2)
  {
    v3 = 0;
    v4 = *(result + 80);
    do
    {
      v5 = v4 + 16 * v3;
      if (*(v5 + 8))
      {
        v6 = 0;
        do
        {
          v7 = *(*v5 + 8 * v6);
          if (v7)
          {
            do
            {
              v8 = *v7;
              v9 = *(v1 + 96);
              if (v9)
              {
                result = v9(v7 + 12);
              }

              *v7 = *(v1 + 32);
              *(v1 + 32) = v7;
              v7 = v8;
            }

            while (v8);
            v4 = *(v1 + 80);
          }

          *(*(v4 + 16 * v3) + 8 * v6++) = 0;
          v4 = *(v1 + 80);
          v5 = v4 + 16 * v3;
        }

        while (v6 < *(v5 + 8));
        v2 = *(v1 + 88);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t sizeObject<DgnIFixArray<BucketLinkKEVTLT<unsigned int> *>>(uint64_t a1, int a2)
{
  v2 = 0;
  v10 = 0;
  v11 = 0;
  if (a2 != 3)
  {
    v3 = 12;
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v3 = 8;
    }

    if ((a2 & 0xFFFFFFFE) == 2 || (v4 = *(a1 + 8), v4 < 1))
    {
      v2 = v3;
    }

    else
    {
      v5 = 2;
      if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
      {
        v5 = 3;
      }

      v6 = v4 + 1;
      v7 = (*a1 + 16 * v4 - 8);
      v2 = v3;
      do
      {
        v8 = *v7;
        v7 -= 4;
        v2 += (v8 << v5) + v3;
        --v6;
      }

      while (v6 > 1);
    }
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(&v10);
  return v2;
}

void *HashKEVTLT<unsigned int,History const*,HistoryMgr>::upSize(uint64_t a1, int a2)
{
  v21 = 0;
  RoundUpToPowerOf2(a2, &v21);
  v19 = 0;
  v20 = 0;
  DgnFixArray<DgnIFixArray<BucketLinkKEVTLT<unsigned int> *>>::copyArraySlice(&v19, (a1 + 80), 0, *(a1 + 88));
  DgnFixArray<DgnIFixArray<BucketLinkKEVTLT<unsigned int> *>>::releaseAll(a1 + 80);
  v4 = v21;
  *(a1 + 12) = a2;
  *(a1 + 16) = v4;
  HashKEVTLT<unsigned int,History const*,HistoryMgr>::initBuckets(a1);
  v5 = v20;
  if (v20)
  {
    v6 = 0;
    v7 = v21;
    v8 = 32 - v21;
    v9 = v19;
    do
    {
      v10 = v9 + 16 * v6;
      if (*(v10 + 8))
      {
        v11 = 0;
        do
        {
          v12 = *(*v10 + 8 * v11);
          if (v12)
          {
            do
            {
              v13 = *v12;
              v14 = (-1640531527 * *(v12 + 2)) >> v8;
              if (!v7)
              {
                v14 = 0;
              }

              v15 = 16 * (v14 >> 18);
              v16 = v14 & 0x3FFFF;
              v17 = *(*(a1 + 80) + v15);
              *v12 = *(v17 + 8 * v16);
              *(v17 + 8 * v16) = v12;
              v12 = v13;
            }

            while (v13);
            v9 = v19;
          }

          ++v11;
          v10 = v9 + 16 * v6;
        }

        while (v11 < *(v10 + 8));
      }

      ++v6;
    }

    while (v6 != v5);
  }

  return DgnFixArray<DgnIFixArray<BucketLinkKEVTLT<unsigned int> *>>::releaseAll(&v19);
}

void sub_26284F434(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DgnFixArray<DgnIFixArray<BucketLinkKEVTLT<unsigned int> *>>::releaseAll(va);
  _Unwind_Resume(a1);
}

uint64_t *DgnFixArray<DgnIFixArray<BucketLinkKEVTLT<unsigned int> *>>::copyArraySlice(uint64_t *result, void *a2, unsigned int a3, unsigned int a4)
{
  LODWORD(v4) = a4;
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
    DgnFixArray<DgnIFixArray<BucketLinkKEVTLT<unsigned int> *>>::allocElts(result, a4);
  }

  v8 = 0;
  v4 = v4;
  do
  {
    result = DgnIFixArray<BucketLinkKEV<unsigned int> *>::copyArraySlice((*v7 + v8), (*a2 + 16 * a3), 0, *(*a2 + 16 * a3 + 8));
    ++a3;
    v8 += 16;
    --v4;
  }

  while (v4);
  return result;
}

void *HashKEVTLT<unsigned int,History const*,HistoryMgr>::findBucket(uint64_t a1, uint64_t *a2)
{
  v4 = *(*a2 + 32);
  HIDWORD(v5) = *(*a2 + 24);
  LODWORD(v5) = HIDWORD(v5);
  v6 = (v5 >> 19) + *(*a2 + 28);
  v7 = CWIDAC::computeHash(*a2);
  HIDWORD(v5) = v6;
  LODWORD(v5) = v6;
  v8 = v5 >> 19;
  HIDWORD(v5) = v4;
  LODWORD(v5) = v4;
  v9 = v7 + (v5 >> 19) + v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = (-1640531527 * v9) >> -v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*(a1 + 80) + 16 * (v11 >> 18)) + 8 * (v11 & 0x3FFFF));
  v13 = *v12;
  if (!*v12)
  {
    return v12;
  }

  do
  {
    v14 = v12;
    v12 = v13;
    if (*(v13 + 8) == v9)
    {
      v15 = *a2;
      v16 = (*(*(a1 + 104) + 8) + 36 * *(v13 + 12));
      if (CWIDAC::operator==(v16, *a2) && v16[6] == v15[6] && v16[7] == v15[7] && v16[8] == v15[8])
      {
        break;
      }
    }

    v13 = *v12;
    v14 = v12;
  }

  while (*v12);
  return v14;
}

void MrecInitModule_crumb_kernel(void)
{
  if (!gParDebugCrumbBank)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugCrumbBank", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugCrumbBank = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugCrumbBank);
  }
}

uint64_t CWIDCrumbWACS::CWIDCrumbWACS(uint64_t a1, uint64_t a2, __int16 a3, _DWORD *a4, uint64_t *a5)
{
  *(a1 + 16) = 0u;
  v7 = (a1 + 16);
  *a1 = 0u;
  *(a1 + 32) = *a2;
  *(a1 + 36) = *(a2 + 4);
  *(a1 + 40) = *(a2 + 8);
  *(a1 + 56) = a3;
  *(a1 + 60) = *a4;
  *(a1 + 64) = a4[1];
  *(a1 + 68) = a4[2];
  v31 = 0;
  v32 = 0;
  DgnPrimArray<unsigned char>::DgnPrimArray(&v29, *(a5 + 2));
  if (*(a5 + 2))
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *a5;
      v11 = *a5 + v8;
      if (*(v11 + 8) == 1879048192)
      {
        *(v29 + v9) = -1;
      }

      else
      {
        v12 = DgnArray<HistoryAndBigScore>::find(&v31, (*a5 + v8));
        if (v12 < 0)
        {
          *(v29 + v9) = v32;
          v13 = v32;
          if (v32 == HIDWORD(v32))
          {
            DgnArray<RuleDesc>::reallocElts(&v31, 1, 1);
            v13 = v32;
          }

          v14 = (v31 + 12 * v13);
          *v14 = *(v10 + v8);
          v14[1] = *(v10 + v8 + 4);
          v14[2] = *(v11 + 8);
          LODWORD(v32) = v32 + 1;
        }

        else
        {
          *(v29 + v9) = v12;
        }
      }

      ++v9;
      v8 += 12;
    }

    while (v9 < *(a5 + 2));
  }

  v15 = v30;
  if (*(a1 + 28) < v30)
  {
    v33 = 0;
    *(a1 + 28) = realloc_array(*(a1 + 16), &v33, v30, *(a1 + 24), *(a1 + 24), 1);
    *(a1 + 16) = v33;
  }

  *(a1 + 24) = v15;
  if (v15 >= 1)
  {
    v16 = v15 - 1;
    do
    {
      *(*v7 + v16) = *(v29 + v16);
      v17 = v16-- + 1;
    }

    while (v17 > 1);
  }

  v18 = v32;
  v19 = *(a1 + 12);
  if (v32 > v19)
  {
    DgnArray<RuleDesc>::reallocElts(a1, v32 - v19, 0);
  }

  v20 = *(a1 + 8);
  if (v20 < v18)
  {
    v21 = v18 - v20;
    v22 = 12 * v20;
    do
    {
      v23 = *a1 + v22;
      *v23 = 0x70000000FFFFFFFELL;
      *(v23 + 8) = 1879048192;
      v22 += 12;
      --v21;
    }

    while (v21);
  }

  *(a1 + 8) = v18;
  if (v18 >= 1)
  {
    v24 = v18 + 1;
    v25 = 12 * v18;
    do
    {
      v26 = v31 + v25;
      v27 = *a1 + v25;
      *(v27 - 12) = *(v31 + v25 - 12);
      *(v27 - 4) = *(v26 - 4);
      *(v27 - 8) = *(v26 - 8);
      --v24;
      v25 -= 12;
    }

    while (v24 > 1);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v29);
  DgnIArray<Utterance *>::~DgnIArray(&v31);
  return a1;
}

void sub_26284F930(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnIArray<Utterance *>::~DgnIArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v3);
  DgnIArray<Utterance *>::~DgnIArray(v2);
  _Unwind_Resume(a1);
}

uint64_t DgnArray<HistoryAndBigScore>::find(unsigned int *a1, _DWORD *a2)
{
  v2 = a1[2];
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  for (i = (*a1 + 8); *i != a2[2] || *(i - 1) != a2[1] || *(i - 2) != *a2; i += 3)
  {
    if (v2 == ++result)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t CWIDCrumbWACS::mergeCrumb(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 28);
  if (*(a1 + 56) > v4)
  {
    *(a1 + 56) = v4;
  }

  v5 = *(a2 + 17);
  if (*(a1 + 68) > v5)
  {
    *(a1 + 60) = *(a2 + 15);
    *(a1 + 68) = v5;
    *(a1 + 64) = *(a2 + 16);
  }

  v6 = *(a1 + 24);
  v7 = *(a2 + 6);
  if (v6 <= v7)
  {
    v8 = *(a2 + 6);
  }

  else
  {
    v8 = *(a1 + 24);
  }

  if (v6 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  v44 = 0;
  v45 = 0;
  DgnPrimArray<unsigned char>::DgnPrimArray(&v42, v8);
  if (v9)
  {
    for (i = 0; v9 != i; ++i)
    {
      v11 = *(a2[2] + i);
      if (*(*(a1 + 16) + i) == 255)
      {
        if (v11 == 255)
        {
          *(v42 + i) = -1;
          continue;
        }

        v14 = DgnArray<HistoryAndBigScore>::find(&v44, (*a2 + 12 * *(a2[2] + i)));
        if (v14 < 0)
        {
          *(v42 + i) = v45;
          v15 = *(a2[2] + i);
          v16 = *a2;
          v17 = v45;
          if (v45 != HIDWORD(v45))
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }
      }

      else
      {
        v12 = (*a1 + 12 * *(*(a1 + 16) + i));
        if (v11 == 255)
        {
          v14 = DgnArray<HistoryAndBigScore>::find(&v44, v12);
          if (v14 < 0)
          {
            *(v42 + i) = v45;
            v15 = *(*(a1 + 16) + i);
            v16 = *a1;
            v17 = v45;
            if (v45 != HIDWORD(v45))
            {
              goto LABEL_31;
            }

            goto LABEL_30;
          }
        }

        else
        {
          v13 = (*a2 + 12 * *(a2[2] + i));
          if (v12[2] <= v13[2])
          {
            v14 = DgnArray<HistoryAndBigScore>::find(&v44, v12);
            if (v14 < 0)
            {
              *(v42 + i) = v45;
              v15 = *(*(a1 + 16) + i);
              v16 = *a1;
              v17 = v45;
              if (v45 == HIDWORD(v45))
              {
                goto LABEL_30;
              }

LABEL_31:
              v18 = (v16 + 12 * v15);
              v19 = (v44 + 12 * v17);
              *v19 = *v18;
              v19[1] = v18[1];
              v19[2] = v18[2];
              LODWORD(v45) = v45 + 1;
              continue;
            }
          }

          else
          {
            v14 = DgnArray<HistoryAndBigScore>::find(&v44, v13);
            if (v14 < 0)
            {
              *(v42 + i) = v45;
              v15 = *(a2[2] + i);
              v16 = *a2;
              v17 = v45;
              if (v45 != HIDWORD(v45))
              {
                goto LABEL_31;
              }

LABEL_30:
              DgnArray<RuleDesc>::reallocElts(&v44, 1, 1);
              v17 = v45;
              goto LABEL_31;
            }
          }
        }
      }

      *(v42 + i) = v14;
    }
  }

  if (v9 < v8)
  {
    if (v6 <= v7)
    {
      v20 = v7;
    }

    else
    {
      v20 = v6;
    }

    for (j = v20 - v9; j; --j)
    {
      if (v7 <= v6)
      {
        if (*(*(a1 + 16) + v9) == 255)
        {
LABEL_46:
          *(v42 + v9) = -1;
          goto LABEL_50;
        }

        v22 = DgnArray<HistoryAndBigScore>::find(&v44, (*a1 + 12 * *(*(a1 + 16) + v9)));
        if (v22 < 0)
        {
          *(v42 + v9) = v45;
          v23 = *(*(a1 + 16) + v9);
          v24 = *a1;
          v25 = v45;
          if (v45 == HIDWORD(v45))
          {
            goto LABEL_48;
          }

          goto LABEL_49;
        }
      }

      else
      {
        if (*(a2[2] + v9) == 255)
        {
          goto LABEL_46;
        }

        v22 = DgnArray<HistoryAndBigScore>::find(&v44, (*a2 + 12 * *(a2[2] + v9)));
        if (v22 < 0)
        {
          *(v42 + v9) = v45;
          v23 = *(a2[2] + v9);
          v24 = *a2;
          v25 = v45;
          if (v45 == HIDWORD(v45))
          {
LABEL_48:
            DgnArray<RuleDesc>::reallocElts(&v44, 1, 1);
            v25 = v45;
          }

LABEL_49:
          v26 = (v24 + 12 * v23);
          v27 = (v44 + 12 * v25);
          *v27 = *v26;
          v27[1] = v26[1];
          v27[2] = v26[2];
          LODWORD(v45) = v45 + 1;
          goto LABEL_50;
        }
      }

      *(v42 + v9) = v22;
LABEL_50:
      ++v9;
    }
  }

  v28 = v43;
  if (*(a1 + 28) < v43)
  {
    v46 = 0;
    *(a1 + 28) = realloc_array(*(a1 + 16), &v46, v43, *(a1 + 24), *(a1 + 24), 1);
    *(a1 + 16) = v46;
  }

  *(a1 + 24) = v28;
  if (v28 >= 1)
  {
    v29 = v28 - 1;
    do
    {
      *(*(a1 + 16) + v29) = *(v42 + v29);
      v30 = v29-- + 1;
    }

    while (v30 > 1);
  }

  v31 = v45;
  v32 = *(a1 + 12);
  if (v45 > v32)
  {
    DgnArray<RuleDesc>::reallocElts(a1, v45 - v32, 0);
  }

  v33 = *(a1 + 8);
  if (v33 < v31)
  {
    v34 = v31 - v33;
    v35 = 12 * v33;
    do
    {
      v36 = *a1 + v35;
      *v36 = 0x70000000FFFFFFFELL;
      *(v36 + 8) = 1879048192;
      v35 += 12;
      --v34;
    }

    while (v34);
  }

  *(a1 + 8) = v31;
  if (v31 >= 1)
  {
    v37 = v31 + 1;
    v38 = 12 * v31;
    do
    {
      v39 = v44 + v38;
      v40 = *a1 + v38;
      *(v40 - 12) = *(v44 + v38 - 12);
      *(v40 - 4) = *(v39 - 4);
      *(v40 - 8) = *(v39 - 8);
      --v37;
      v38 -= 12;
    }

    while (v37 > 1);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v42);
  return DgnIArray<Utterance *>::~DgnIArray(&v44);
}

void sub_26284FE8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnIArray<Utterance *>::~DgnIArray(va1);
  _Unwind_Resume(a1);
}

__n128 CWIDCrumbWACSFrame::copy(CWIDCrumbWACSFrame *this, __n128 *a2)
{
  DgnArray<CWIDCrumbWACS>::copyArraySlice(this, a2, 0, a2->n128_u32[2]);
  DgnDelete<Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>>(*(this + 4));
  *(this + 4) = 0;
  result = a2[1];
  *(this + 1) = result;
  *(this + 10) = a2[2].n128_u32[2];
  *(this + 22) = a2[2].n128_u16[6];
  return result;
}

void (***CWIDCrumbWACSFrame::mergeCrumbs(void (***this)(void), const HistoryMgr *a2))(void)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = this;
    v4 = (v2 + 3) & 0x1FFFFFFFCLL;
    v5 = vdupq_n_s64(v2 - 1);
    v6 = xmmword_26286BF80;
    v7 = xmmword_26286B680;
    v8 = *this + 24;
    v9 = vdupq_n_s64(4uLL);
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v5, v7));
      if (vuzp1_s16(v10, *v5.i8).u8[0])
      {
        *(v8 - 36) = -83886084;
      }

      if (vuzp1_s16(v10, *&v5).i8[2])
      {
        *(v8 - 18) = -83886084;
      }

      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v6))).i32[1])
      {
        *v8 = -83886084;
        v8[18] = -83886084;
      }

      v6 = vaddq_s64(v6, v9);
      v7 = vaddq_s64(v7, v9);
      v8 += 72;
      v4 -= 4;
    }

    while (v4);
    v11 = MemChunkAlloc(0x70uLL, 0);
    Hash<CWIDAC,CWIDAC,CWIDAC,unsigned int>::Hash(v11, 0, 2 * *(v3 + 8));
    v12 = *(v3 + 8);
    if (v12 >= 1)
    {
      v25 = v11;
      do
      {
        v13 = v12 - 1;
        v14 = (*v3 + 72 * (v12 - 1));
        if (*Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::findBucket(v11, (v14 + 4)))
        {
          Bucket = Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::findBucket(v11, (v14 + 4));
          CWIDCrumbWACS::mergeCrumb(*v3 + 72 * *(*Bucket + 36), v14);
          *(*Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::findBucket(v11, *v3 + 72 * (*(v3 + 8) - 1) + 32) + 36) = v13;
          v16 = (*(v3 + 8) - 1);
          CWIDCrumbWACS::operator=(*v3 + 72 * v13, *v3 + 72 * v16);
          v17 = *(v3 + 8);
          if (v17 <= v16)
          {
            if (v17 < v16)
            {
              v21 = v16 - v17;
              v22 = 72 * v17 + 68;
              do
              {
                v23 = (*v3 + v22);
                *(v23 - 13) = 0u;
                *(v23 - 17) = 0u;
                *(v23 - 8) = 0x3FFF;
                *(v23 - 7) = xmmword_26286CC40;
                *(v23 - 6) = 20000;
                *(v23 - 1) = 0x70000000FFFFFFFELL;
                *v23 = 1879048192;
                v22 += 72;
                --v21;
              }

              while (v21);
            }
          }

          else if (v17 > v16)
          {
            v18 = v17;
            v19 = 72 * v17 - 72;
            do
            {
              --v18;
              v20 = *v3 + v19;
              DgnPrimArray<unsigned int>::~DgnPrimArray(v20 + 16);
              DgnIArray<Utterance *>::~DgnIArray(v20);
              v19 -= 72;
            }

            while (v18 > v16);
          }

          *(v3 + 8) = v16;
          v11 = v25;
        }

        else
        {
          v26 = v12 - 1;
          Hash<CWIDAC,CWIDAC,CWIDAC,unsigned int>::add(v11, (v14 + 4), &v26);
        }
      }

      while (v12-- > 1);
      LODWORD(v12) = *(v3 + 8);
    }

    mrec_qsort_r<CWIDCrumbWACS>(*v3, v12, 0x48uLL, 0);
    DgnDelete<Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>>(v11);
    this = DgnDelete<Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>>(*(v3 + 32));
    *(v3 + 32) = 0;
  }

  return this;
}

uint64_t Hash<CWIDAC,CWIDAC,CWIDAC,unsigned int>::add(uint64_t a1, uint64_t a2, _DWORD *a3)
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
  *(v12 + 36) = *a3;
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

uint64_t mrec_qsort_r<CWIDCrumbWACS>(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = -a3;
  v145 = a3 != 8;
  v146 = ((result | a3) & 7) == 0;
  if (((result | a3) & 7) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = a3 != 8;
  }

  v147 = v8;
  if (a2 < 7)
  {
LABEL_185:
    if ((v5 * a3) > a3)
    {
      v115 = v6 + a3;
      v116 = v6;
      do
      {
        if (v115 > v6)
        {
          v117 = v116;
          v118 = v115;
          do
          {
            v119 = v118;
            v118 += v7;
            v120 = *(v118 + 56);
            v121 = *(v119 + 28);
            if (v120 == v121)
            {
              result = CWIDAC::cmp(v118 + 32, (v119 + 4));
            }

            else
            {
              result = (v120 - v121);
            }

            if (result < 1)
            {
              break;
            }

            if (v147)
            {
              if (v146)
              {
                v122 = 0;
                v123 = v118;
                do
                {
                  v124 = v119[v122];
                  v119[v122] = *v123;
                  *v123++ = v124;
                  ++v122;
                }

                while (a3 >> 3 != v122);
              }

              else
              {
                v126 = 0;
                v127 = a3;
                do
                {
                  v128 = *(v119 + v126);
                  *(v119 + v126) = *(v117 + v126);
                  *(v117 + v126++) = v128;
                  --v127;
                }

                while (v127);
              }
            }

            else
            {
              v125 = *v119;
              *v119 = *v118;
              *v118 = v125;
            }

            v117 += v7;
          }

          while (v118 > v6);
        }

        v115 += a3;
        v116 += a3;
      }

      while (v115 < v6 + v5 * a3);
    }

    return result;
  }

  v9 = a3 >> 3;
  while (1)
  {
    v10 = (v6 + (v5 >> 1) * a3);
    if (v5 == 7)
    {
      goto LABEL_106;
    }

    v11 = v6 + (v5 - 1) * a3;
    if (v5 < 0x29)
    {
      v13 = v6;
      v15 = v6 + (v5 - 1) * a3;
      goto LABEL_82;
    }

    v12 = (v5 >> 3) * a3;
    v13 = v6 + v12;
    v14 = *(v6 + 56);
    v143 = v5;
    if (v14 == *(v6 + v12 + 56))
    {
      v18 = CWIDAC::cmp(v6 + 32, v13 + 32);
      v17 = *(v13 + 56);
    }

    else
    {
      v16 = v14;
      v17 = *(v6 + v12 + 56);
      v18 = v16 - *(v6 + v12 + 56);
    }

    v19 = v6 + 2 * v12;
    v20 = *(v19 + 56);
    if (v18 < 0)
    {
      if (v17 == *(v19 + 56))
      {
        if ((CWIDAC::cmp(v13 + 32, v19 + 32) & 0x80000000) != 0)
        {
          goto LABEL_33;
        }
      }

      else if (v17 - v20 < 0)
      {
        goto LABEL_33;
      }

      v25 = *(v6 + 56);
      v26 = *(v19 + 56);
      v27 = v25 == v26 ? CWIDAC::cmp(v6 + 32, v19 + 32) : v25 - v26;
      v13 = v27 >= 0 ? v6 : v6 + 2 * v12;
    }

    else
    {
      if (v17 == *(v19 + 56))
      {
        v21 = CWIDAC::cmp(v13 + 32, v19 + 32);
      }

      else
      {
        v21 = v17 - v20;
      }

      if (v21 <= 0)
      {
        v22 = *(v6 + 56);
        v23 = *(v19 + 56);
        if (v22 == v23)
        {
          v24 = CWIDAC::cmp(v6 + 32, v19 + 32);
        }

        else
        {
          v24 = v22 - v23;
        }

        if (v24 >= 0)
        {
          v13 = v6 + 2 * v12;
        }

        else
        {
          v13 = v6;
        }
      }
    }

LABEL_33:
    v28 = &v10[-v12];
    v29 = *&v10[-v12 + 56];
    if (v29 == *(v10 + 28))
    {
      v30 = CWIDAC::cmp((v28 + 32), (v10 + 32));
      v31 = *(v10 + 28);
    }

    else
    {
      v32 = v29;
      v31 = *(v10 + 28);
      v30 = v32 - *(v10 + 28);
    }

    v33 = &v10[v12];
    v34 = *&v10[v12 + 56];
    if (v30 < 0)
    {
      if (v31 == *&v10[v12 + 56])
      {
        if ((CWIDAC::cmp((v10 + 32), (v33 + 32)) & 0x80000000) != 0)
        {
          goto LABEL_57;
        }
      }

      else if (v31 - v34 < 0)
      {
        goto LABEL_57;
      }

      v39 = *(v28 + 28);
      v40 = *(v33 + 28);
      v41 = v39 == v40 ? CWIDAC::cmp((v28 + 32), (v33 + 32)) : v39 - v40;
      if (v41 >= 0)
      {
        v10 -= v12;
      }

      else
      {
        v10 += v12;
      }
    }

    else
    {
      if (v31 == *&v10[v12 + 56])
      {
        v35 = CWIDAC::cmp((v10 + 32), (v33 + 32));
      }

      else
      {
        v35 = v31 - v34;
      }

      if (v35 <= 0)
      {
        v36 = *(v28 + 28);
        v37 = *(v33 + 28);
        if (v36 == v37)
        {
          v38 = CWIDAC::cmp((v28 + 32), (v33 + 32));
        }

        else
        {
          v38 = v36 - v37;
        }

        if (v38 >= 0)
        {
          v10 += v12;
        }

        else
        {
          v10 -= v12;
        }
      }
    }

LABEL_57:
    v42 = v11 - 2 * v12;
    v15 = v11 - v12;
    v43 = *(v42 + 56);
    if (v43 == *(v15 + 56))
    {
      v44 = CWIDAC::cmp(v42 + 32, v15 + 32);
      v45 = *(v15 + 56);
    }

    else
    {
      v46 = v43;
      v45 = *(v15 + 56);
      v44 = v46 - *(v15 + 56);
    }

    v47 = *(v11 + 56);
    if ((v44 & 0x80000000) == 0)
    {
      if (v45 == *(v11 + 56))
      {
        v48 = CWIDAC::cmp(v15 + 32, v11 + 32);
      }

      else
      {
        v48 = v45 - v47;
      }

      if (v48 <= 0)
      {
        v49 = *(v42 + 56);
        v50 = *(v11 + 56);
        if (v49 == v50)
        {
          v51 = CWIDAC::cmp(v42 + 32, v11 + 32);
        }

        else
        {
          v51 = v49 - v50;
        }

        if (v51 >= 0)
        {
          v15 = v11;
        }

        else
        {
          v15 = v42;
        }
      }

      goto LABEL_81;
    }

    if (v45 == *(v11 + 56))
    {
      if ((CWIDAC::cmp(v15 + 32, v11 + 32) & 0x80000000) == 0)
      {
        goto LABEL_71;
      }
    }

    else if (((v45 - v47) & 0x80000000) == 0)
    {
LABEL_71:
      v52 = *(v42 + 56);
      v53 = *(v11 + 56);
      if (v52 == v53)
      {
        v54 = CWIDAC::cmp(v42 + 32, v11 + 32);
      }

      else
      {
        v54 = v52 - v53;
      }

      if (v54 >= 0)
      {
        v15 = v42;
      }

      else
      {
        v15 = v11;
      }
    }

LABEL_81:
    v5 = v143;
LABEL_82:
    v55 = *(v13 + 56);
    if (v55 == *(v10 + 28))
    {
      v56 = CWIDAC::cmp(v13 + 32, (v10 + 32));
      v57 = *(v10 + 28);
    }

    else
    {
      v58 = v55;
      v57 = *(v10 + 28);
      v56 = v58 - *(v10 + 28);
    }

    v59 = *(v15 + 56);
    if (v56 < 0)
    {
      if (v57 == *(v15 + 56))
      {
        result = CWIDAC::cmp((v10 + 32), v15 + 32);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_106;
        }
      }

      else
      {
        result = (v57 - v59);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_106;
        }
      }

      v62 = *(v13 + 56);
      v63 = *(v15 + 56);
      result = v62 == v63 ? CWIDAC::cmp(v13 + 32, v15 + 32) : (v62 - v63);
      v10 = (result >= 0 ? v13 : v15);
    }

    else
    {
      if (v57 == *(v15 + 56))
      {
        result = CWIDAC::cmp((v10 + 32), v15 + 32);
      }

      else
      {
        result = (v57 - v59);
      }

      if (result <= 0)
      {
        v60 = *(v13 + 56);
        v61 = *(v15 + 56);
        if (v60 == v61)
        {
          result = CWIDAC::cmp(v13 + 32, v15 + 32);
        }

        else
        {
          result = (v60 - v61);
        }

        if (result >= 0)
        {
          v10 = v15;
        }

        else
        {
          v10 = v13;
        }
      }
    }

LABEL_106:
    if (v147)
    {
      if (v146)
      {
        v64 = v6;
        v65 = a3 >> 3;
        do
        {
          v66 = *v64;
          *v64++ = *v10;
          *v10 = v66;
          v10 += 8;
          --v65;
        }

        while (v65);
      }

      else
      {
        v68 = a3;
        v69 = v6;
        do
        {
          v70 = *v69;
          *v69++ = *v10;
          *v10++ = v70;
          --v68;
        }

        while (v68);
      }
    }

    else
    {
      v67 = *v6;
      *v6 = *v10;
      *v10 = v67;
    }

    v71 = 0;
    v72 = (v6 + a3);
    v73 = (v6 + (v5 - 1) * a3);
    v74 = v73;
    v75 = (v6 + a3);
LABEL_115:
    while (v75 <= v74)
    {
      v76 = *(v75 + 28);
      v77 = *(v6 + 56);
      result = v76 == v77 ? CWIDAC::cmp((v75 + 32), v6 + 32) : (v76 - v77);
      if (result > 0)
      {
        break;
      }

      if (!result)
      {
        if (v147)
        {
          if (v146)
          {
            v78 = 0;
            do
            {
              v79 = v72[v78];
              v72[v78] = *&v75[8 * v78];
              *&v75[8 * v78++] = v79;
            }

            while (v9 != v78);
          }

          else
          {
            v88 = 0;
            do
            {
              v89 = *(v72 + v88);
              *(v72 + v88) = v75[v88];
              v75[v88++] = v89;
            }

            while (a3 != v88);
          }
        }

        else
        {
          v87 = *v72;
          *v72 = *v75;
          *v75 = v87;
        }

        v72 = (v72 + a3);
        v71 = 1;
      }

      v75 += a3;
    }

    while (v75 <= v74)
    {
      v80 = *(v74 + 28);
      v81 = *(v6 + 56);
      if (v80 == v81)
      {
        result = CWIDAC::cmp((v74 + 4), v6 + 32);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_147;
        }
      }

      else
      {
        result = (v80 - v81);
        if ((result & 0x80000000) != 0)
        {
LABEL_147:
          if (v147)
          {
            if (v146)
            {
              v90 = 0;
              do
              {
                v91 = *&v75[8 * v90];
                *&v75[8 * v90] = v74[v90];
                v74[v90++] = v91;
              }

              while (v9 != v90);
            }

            else
            {
              v93 = 0;
              do
              {
                v94 = v75[v93];
                v75[v93] = *(v74 + v93);
                *(v74 + v93++) = v94;
              }

              while (a3 != v93);
            }
          }

          else
          {
            v92 = *v75;
            *v75 = *v74;
            *v74 = v92;
          }

          v75 += a3;
          v74 = (v74 + v7);
          v71 = 1;
          goto LABEL_115;
        }
      }

      if (!result)
      {
        if (v147)
        {
          if (v146)
          {
            v82 = 0;
            do
            {
              v83 = v74[v82];
              v74[v82] = v73[v82];
              v73[v82++] = v83;
            }

            while (v9 != v82);
          }

          else
          {
            v85 = 0;
            do
            {
              v86 = *(v74 + v85);
              *(v74 + v85) = *(v73 + v85);
              *(v73 + v85++) = v86;
            }

            while (a3 != v85);
          }
        }

        else
        {
          v84 = *v74;
          *v74 = *v73;
          *v73 = v84;
        }

        v73 = (v73 + v7);
        v71 = 1;
      }

      v74 = (v74 + v7);
    }

    v95 = v5 * a3;
    v96 = v6 + v5 * a3;
    if (!v71)
    {
      break;
    }

    v97 = v75 - v72;
    if ((v72 - v6) >= v75 - v72)
    {
      v98 = v75 - v72;
    }

    else
    {
      v98 = v72 - v6;
    }

    if (v98)
    {
      if (v146)
      {
        v99 = &v75[-v98];
        v100 = v98 >> 3;
        v101 = v6;
        do
        {
          v102 = *v101;
          *v101++ = *v99;
          *v99++ = v102;
          --v100;
        }

        while (v100);
      }

      else
      {
        v103 = -v98;
        v104 = v6;
        do
        {
          v105 = *v104;
          *v104++ = v75[v103];
          v75[v103] = v105;
          v106 = __CFADD__(v103++, 1);
        }

        while (!v106);
      }
    }

    v107 = v73 - v74;
    if (v73 - v74 >= (v96 - (v73 + a3)))
    {
      v108 = v96 - (v73 + a3);
    }

    else
    {
      v108 = v73 - v74;
    }

    if (v108)
    {
      if (v146)
      {
        v109 = (v96 - v108);
        v110 = v108 >> 3;
        do
        {
          v111 = *v75;
          *v75 = *v109;
          v75 += 8;
          *v109++ = v111;
          --v110;
        }

        while (v110);
      }

      else
      {
        v112 = -v108;
        do
        {
          v113 = *v75;
          *v75++ = *(v96 + v112);
          *(v96 + v112) = v113;
          v106 = __CFADD__(v112++, 1);
        }

        while (!v106);
      }
    }

    if (v97 > a3)
    {
      result = mrec_qsort_r<CWIDCrumbWACS>(v6, v97 / a3, a3, a4);
    }

    if (v107 <= a3)
    {
      return result;
    }

    v6 = v96 - v107;
    v5 = v107 / a3;
    v114 = v145;
    if (((v6 | a3) & 7) != 0)
    {
      v114 = 2;
    }

    v146 = ((v6 | a3) & 7) == 0;
    v147 = v114;
    if (v5 < 7)
    {
      goto LABEL_185;
    }
  }

  v129 = v6 + a3;
  if (v95 > a3)
  {
    v130 = v6;
    do
    {
      if (v129 > v6)
      {
        v131 = v130;
        v132 = v129;
        do
        {
          v133 = v132;
          v132 += v7;
          v134 = *(v132 + 56);
          v135 = *(v133 + 28);
          if (v134 == v135)
          {
            result = CWIDAC::cmp(v132 + 32, (v133 + 4));
          }

          else
          {
            result = (v134 - v135);
          }

          if (result < 1)
          {
            break;
          }

          if (v147)
          {
            if (v146)
            {
              v136 = 0;
              v137 = v132;
              do
              {
                v138 = v133[v136];
                v133[v136] = *v137;
                *v137++ = v138;
                ++v136;
              }

              while (v9 != v136);
            }

            else
            {
              v140 = 0;
              v141 = a3;
              do
              {
                v142 = *(v133 + v140);
                *(v133 + v140) = *(v131 + v140);
                *(v131 + v140++) = v142;
                --v141;
              }

              while (v141);
            }
          }

          else
          {
            v139 = *v133;
            *v133 = *v132;
            *v132 = v139;
          }

          v131 += v7;
        }

        while (v132 > v6);
      }

      v129 += a3;
      v130 += a3;
    }

    while (v129 < v96);
  }

  return result;
}

uint64_t *CWIDCrumbWACSFrame::updateCrumbHistory(uint64_t *result, int a2)
{
  v2 = *(result + 4);
  if (v2 != -2)
  {
    *(result + 4) = v2 + a2;
  }

  v3 = *(result + 2);
  if (v3)
  {
    v4 = 0;
    v5 = *result;
    do
    {
      v6 = (v5 + 72 * v4);
      v7 = *(v6 + 15);
      if (v7 != -2)
      {
        *(v6 + 15) = v7 + a2;
      }

      v8 = *(v6 + 2);
      if (v8 >= 1)
      {
        v9 = *v6;
        v10 = v8 + 1;
        v11 = (v9 + 12 * v8 - 12);
        do
        {
          if (*v11 != -2)
          {
            *v11 += a2;
          }

          --v10;
          v11 -= 3;
        }

        while (v10 > 1);
      }

      ++v4;
    }

    while (v4 != v3);
  }

  return result;
}

uint64_t CWIDCrumbWACSFrame::addCrumbWACSRecord(uint64_t a1, uint64_t a2, __int16 a3, _DWORD *a4, uint64_t *a5)
{
  CWIDCrumbWACS::CWIDCrumbWACS(v8, a2, a3, a4, a5);
  v6 = *(a1 + 8);
  if (v6 == *(a1 + 12))
  {
    DgnArray<LinearTransform>::reallocElts(a1, 1, 1);
    v6 = *(a1 + 8);
  }

  CWIDCrumbWACS::CWIDCrumbWACS(*a1 + 72 * v6, v8);
  ++*(a1 + 8);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v9);
  return DgnIArray<Utterance *>::~DgnIArray(v8);
}

void sub_262850EB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnIArray<Utterance *>::~DgnIArray(va);
  _Unwind_Resume(a1);
}

uint64_t CWIDCrumbWACSFrame::addCrumbWACSRecordEFst(uint64_t a1, uint64_t a2, __int16 a3, _DWORD *a4, uint64_t *a5, unsigned int a6)
{
  v12 = *(a1 + 32);
  if (v12)
  {
    result = Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::findBucket(v12, a2);
    if (!*result)
    {
      goto LABEL_17;
    }

    v14 = *(*result + 36);
  }

  else
  {
    if (!*(a1 + 8))
    {
      goto LABEL_17;
    }

    v15 = 0;
    v14 = -1;
    v16 = 32;
    do
    {
      result = CWIDAC::operator==(*a1 + v16, a2);
      if (result)
      {
        v14 = v15;
      }

      ++v15;
      v16 += 72;
    }

    while (v15 < *(a1 + 8));
  }

  if (v14 != -1)
  {
    if (a6 == 0xFFFF)
    {
      return result;
    }

    v17 = *a1 + 72 * v14;
    if (*(v17 + 56) > a3)
    {
      *(v17 + 56) = a3;
    }

    v18 = *(v17 + 24);
    if (v18 <= a6)
    {
      if (*(v17 + 28) <= a6)
      {
        v28[0] = 0;
        result = realloc_array(*(v17 + 16), v28, a6 + 1, v18, v18, 1);
        *(v17 + 28) = result;
        *(v17 + 16) = v28[0];
      }

      *(v17 + 24) = a6 + 1;
      v23 = a6 - v18 + 1;
      do
      {
        *(*(v17 + 16) + v18++) = -1;
        --v23;
      }

      while (v23);
      v19 = (*a5 + 12 * a6);
      v24 = *(v17 + 8);
      if (v24 == *(v17 + 12))
      {
        result = DgnArray<RuleDesc>::reallocElts(v17, 1, 1);
        v24 = *(v17 + 8);
      }

      v25 = (*v17 + 12 * v24);
    }

    else
    {
      v19 = (*a5 + 12 * a6);
      if (*(*(v17 + 16) + a6) != 255)
      {
        v20 = v19[2];
        v21 = (*v17 + 12 * *(*(v17 + 16) + a6));
        if (v20 < v21[2])
        {
          *v21 = *v19;
          v21[2] = v20;
          v21[1] = v19[1];
        }

        return result;
      }

      v26 = *(v17 + 8);
      if (v26 == *(v17 + 12))
      {
        result = DgnArray<RuleDesc>::reallocElts(v17, 1, 1);
        v26 = *(v17 + 8);
      }

      v25 = (*v17 + 12 * v26);
    }

    *v25 = *v19;
    v25[1] = v19[1];
    v25[2] = v19[2];
    v27 = *(v17 + 8);
    *(v17 + 8) = v27 + 1;
    *(*(v17 + 16) + a6) = v27;
    return result;
  }

LABEL_17:
  CWIDCrumbWACS::CWIDCrumbWACS(v28, a2, a3, a4, a5);
  v22 = *(a1 + 8);
  if (v22 == *(a1 + 12))
  {
    DgnArray<LinearTransform>::reallocElts(a1, 1, 1);
    v22 = *(a1 + 8);
  }

  CWIDCrumbWACS::CWIDCrumbWACS(*a1 + 72 * v22, v28);
  ++*(a1 + 8);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v29);
  DgnIArray<Utterance *>::~DgnIArray(v28);
  result = *(a1 + 32);
  if (result)
  {
    LODWORD(v28[0]) = *(a1 + 8) - 1;
    return Hash<CWIDAC,CWIDAC,CWIDAC,unsigned int>::add(result, a2, v28);
  }

  return result;
}

void sub_2628511A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnIArray<Utterance *>::~DgnIArray(va);
  _Unwind_Resume(a1);
}

uint64_t *CWIDCrumbWACSFrame::maybeBuildHashTable(uint64_t *this, MemChunkRegion *a2)
{
  if (this[4])
  {
    return this;
  }

  v3 = this;
  if (MemChunkRegion::smTlsID == -1)
  {
    v5 = &gGlobalMemChunkRegion;
  }

  else
  {
    v4 = pthread_getspecific(MemChunkRegion::smTlsID);
    if (v4)
    {
      v5 = *v4;
      if (*v4)
      {
        goto LABEL_8;
      }

      pthread_setspecific(MemChunkRegion::smTlsID, 0);
    }

    v5 = &gGlobalMemChunkRegion;
  }

LABEL_8:
  if (v5 != a2 && (a2 || v5 != &gGlobalMemChunkRegion))
  {
    if (!a2 || a2 == &gGlobalMemChunkRegion)
    {
      v6 = MemChunkRegion::smTlsID;
      v7 = 0;
    }

    else
    {
      *(a2 + 161) = a2;
      v6 = MemChunkRegion::smTlsID;
      v7 = a2 + 1288;
    }

    pthread_setspecific(v6, v7);
  }

  v14 = v5;
  v8 = MemChunkAlloc(0x70uLL, 0);
  *(v3 + 32) = Hash<CWIDAC,CWIDAC,CWIDAC,unsigned int>::Hash(v8, 0, 2 * *(v3 + 8));
  v9 = *(v3 + 8);
  if (v9 >= 1)
  {
    v10 = 72 * v9 - 40;
    do
    {
      --v9;
      v11 = *(v3 + 32);
      v12 = *v3;
      v13 = v9;
      Hash<CWIDAC,CWIDAC,CWIDAC,unsigned int>::add(v11, v12 + v10, &v13);
      v10 -= 72;
    }

    while ((v9 + 1) > 1);
  }

  return Latch<MemChunkRegion,LatchAdapter>::~Latch(&v14);
}

void sub_2628512F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

uint64_t *CWIDCrumbWACSFrame::setTopChoiceWord(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v7 = *(a2 + 8) + 36 * a3;
  *(a1 + 44) = *(v7 + 24) != *(v7 + 28);
  result = Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::findBucket(*(a1 + 32), v7);
  v9 = *(*result + 36);
  *(a1 + 40) = v9;
  if (a4)
  {
    v10 = *a1 + 72 * v9;
    v11 = *(v10 + 8);
    if (v11)
    {
      v12 = 12 * v11 - 12;
      while (v11 >= 1)
      {
        --v11;
        v13 = *(*v10 + v12);
        v12 -= 12;
        if (v13 == a3)
        {
          goto LABEL_8;
        }
      }
    }

    LOBYTE(v11) = -2;
LABEL_8:
    **(v10 + 16) = v11;
    *(a1 + 44) = 0;
  }

  return result;
}

uint64_t CWIDCrumbWACSFrame::getHistScore(void *a1, uint64_t a2, unsigned int a3)
{
  v4 = *a1 + 72 * *(*Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::findBucket(a1[4], *(a2 + 8) + 36 * a3) + 36);
  v5 = *(v4 + 8);
  if (v5)
  {
    v6 = 12 * v5 - 12;
    v7 = v5 + 1;
    while (--v7 >= 1)
    {
      v8 = v6 - 12;
      v9 = *(*v4 + v6);
      v6 -= 12;
      if (v9 == a3)
      {
        v10 = (*v4 + v8 + 20);
        return *v10;
      }
    }
  }

  v10 = (v4 + 68);
  return *v10;
}

unint64_t CWIDCrumbWACSFrame::getFrameInfo(unint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = result;
  if (a2)
  {
    if (*(result + 40) == -1)
    {
      *(a3 + 8) = 0;
      *(a4 + 8) = 0;
      *(a5 + 8) = 0;
    }

    else
    {
      if (!*(a3 + 12))
      {
        result = DgnArray<CWIDAC>::reallocElts(a3, 1, 0);
      }

      if (!*(a3 + 8))
      {
        v9 = *a3;
        *(v9 + 4) = 0x3FFF;
        *(v9 + 8) = xmmword_26286CC40;
      }

      *(a3 + 8) = 1;
      if (!*(a4 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a4, 1, 0);
      }

      *(a4 + 8) = 1;
      if (!*(a5 + 12))
      {
        result = DgnArray<CWIDAC>::reallocElts(a5, 1, 0);
      }

      if (!*(a5 + 8))
      {
        v10 = *a5;
        *v10 = 0;
        v10[1] = 0;
        v10[2] = 0;
      }

      *(a5 + 8) = 1;
      v11 = *v8 + 72 * *(v8 + 40);
      v12 = *a3;
      *v12 = *(v11 + 32);
      *(v12 + 4) = *(v11 + 36);
      *(v12 + 8) = *(v11 + 40);
      **a4 = *(v8 + 24) + *(v11 + 56);
      if (*(v8 + 44) == 1)
      {
        v13 = 0;
        v14 = v11 + 60;
        v11 = 0;
      }

      else
      {
        v13 = v11 + 16;
        if (**(v11 + 16) == 254)
        {
          v14 = v11 + 60;
        }

        else
        {
          v14 = 0;
        }
      }

      v31 = *a5;
      *v31 = v11;
      v31[1] = v13;
      v31[2] = v14;
    }
  }

  else
  {
    v15 = *(result + 8);
    v16 = *(a3 + 12);
    if (v15 > v16)
    {
      result = DgnArray<CWIDAC>::reallocElts(a3, v15 - v16, 0);
    }

    v17 = *(a3 + 8);
    if (v17 < v15)
    {
      v18 = v15 - v17;
      v19 = (*a3 + 24 * v17 + 8);
      do
      {
        *(v19 - 1) = 0x3FFF;
        *v19 = xmmword_26286CC40;
        v19 = (v19 + 24);
        --v18;
      }

      while (v18);
    }

    *(a3 + 8) = v15;
    v20 = *(a4 + 12);
    if (v15 > v20)
    {
      result = DgnPrimArray<unsigned int>::reallocElts(a4, v15 - v20, 0);
    }

    *(a4 + 8) = v15;
    v21 = *(a5 + 12);
    if (v15 > v21)
    {
      result = DgnArray<CWIDAC>::reallocElts(a5, v15 - v21, 0);
    }

    v22 = *(a5 + 8);
    if (v22 < v15)
    {
      v23 = v15 - v22;
      v24 = 24 * v22;
      do
      {
        v25 = (*a5 + v24);
        *v25 = 0;
        v25[1] = 0;
        v25[2] = 0;
        v24 += 24;
        --v23;
      }

      while (v23);
    }

    *(a5 + 8) = v15;
    if (v15)
    {
      v26 = 0;
      v27 = *v8;
      v28 = *a4;
      v29 = (*a3 + 8);
      v30 = (*a5 + 8);
      do
      {
        *(v29 - 2) = *(v27 + v26 + 32);
        *(v29 - 1) = *(v27 + v26 + 36);
        *v29 = *(v27 + v26 + 40);
        v29 = (v29 + 24);
        *v28++ = *(v8 + 24) + *(v27 + v26 + 56);
        *(v30 - 1) = v27 + v26;
        *v30 = v27 + v26 + 16;
        v30[1] = v27 + v26 + 60;
        v26 += 72;
        v30 += 3;
      }

      while (72 * v15 != v26);
    }
  }

  return result;
}

uint64_t CWIDCrumbWACSFrame::getAccumHistScore(uint64_t *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v6 = *(a2 + 8) + 36 * a3;
  v7 = *(*Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::findBucket(a1[4], v6) + 36);
  v8 = *a1;
  if (*(v6 + 24) == *(v6 + 28))
  {
    v9 = (v8 + 72 * v7);
    if (*(v9[2] + a4) == 254)
    {
      v10 = v9 + 60;
    }

    else
    {
      v10 = *v9 + 12 * *(v9[2] + a4);
    }

    v11 = (v10 + 8);
  }

  else
  {
    v11 = (v8 + 72 * v7 + 68);
  }

  return *v11;
}

uint64_t CWIDCrumbWACSFrame::getHistory(void *a1, uint64_t a2, unsigned int a3)
{
  Bucket = Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::findBucket(a1[4], a2);
  if (!*Bucket)
  {
    return 4294967294;
  }

  v6 = *a1 + 72 * *(*Bucket + 36);
  if (*(v6 + 24) <= a3)
  {
    return 4294967294;
  }

  v7 = *(*(v6 + 16) + a3);
  if (v7 == 254)
  {
    v9 = (v6 + 60);
    return *v9;
  }

  if (v7 == 255)
  {
    return 4294967294;
  }

  v8 = *v6;
  if (!v8)
  {
    return 4294967294;
  }

  v9 = (v8 + 12 * v7);
  return *v9;
}

uint64_t sizeObject<CWIDCrumbWACS>(uint64_t a1, int a2)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0x3FFF;
  v14 = xmmword_26286CC40;
  v15 = 20000;
  v16 = 0x70000000FFFFFFFELL;
  v17 = 1879048192;
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
        v9 = 72 * v7 - 72;
        do
        {
          v5 += sizeObject(*a1 + v9, a2);
          --v8;
          v9 -= 72;
        }

        while (v8 > 1);
      }

      if (!a2)
      {
        v5 += v6 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v12);
  DgnIArray<Utterance *>::~DgnIArray(&v11);
  return v5;
}

void sub_2628519F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a11);
  DgnIArray<Utterance *>::~DgnIArray(&a9);
  _Unwind_Resume(a1);
}

uint64_t CWIDCrumbBank::CWIDCrumbBank(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 20) = 4294967280;
  *(a1 + 32) = a2;
  if (MemChunkRegion::smTlsID == -1)
  {
    goto LABEL_5;
  }

  v3 = pthread_getspecific(MemChunkRegion::smTlsID);
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = *v3;
  if (!*v3)
  {
    pthread_setspecific(MemChunkRegion::smTlsID, 0);
LABEL_5:
    v4 = &gGlobalMemChunkRegion;
  }

  *(a1 + 40) = v4;
  *(a1 + 48) = 0;
  *(a1 + 16) = -1;
  *(a1 + 24) = 0;
  return a1;
}

double CWIDCrumbBank::copy(CWIDCrumbBank *this, const CWIDCrumbBank *a2)
{
  v4 = *(a2 + 2);
  DgnIOwnArray<CWIDCrumbWACSFrame *>::releaseAll(this);
  v5 = *(this + 3);
  if (v4 > v5)
  {
    DgnPrimArray<unsigned long long>::reallocElts(this, v4 - v5, 0);
  }

  v6 = *(this + 2);
  if (v6 <= v4)
  {
    if (v6 < v4)
    {
      do
      {
        *(*this + 8 * v6++) = 0;
      }

      while (v4 != v6);
    }
  }

  else
  {
    DgnIOwnArray<CWIDCrumbWACSFrame *>::destructAt(this, v4, v6 - v4);
  }

  *(this + 2) = v4;
  if (v4)
  {
    v7 = 0;
    v8 = 8 * v4;
    do
    {
      v9 = MemChunkAlloc(0x30uLL, 0);
      *v9 = 0;
      v9[1] = 0;
      *(v9 + 1) = xmmword_262899170;
      v9[4] = 0;
      *(v9 + 10) = -1;
      *(v9 + 22) = 0;
      *(*this + v7) = v9;
      CWIDCrumbWACSFrame::copy(*(*this + v7), *(*a2 + v7));
      v7 += 8;
    }

    while (v8 != v7);
  }

  result = *(a2 + 2);
  *(this + 2) = result;
  *(this + 6) = *(a2 + 6);
  return result;
}

_DWORD *CWIDCrumbBank::ensureCrumbFrame(_DWORD *this, int a2)
{
  v2 = this;
  v3 = this[5];
  v4 = a2 - v3;
  v5 = v3 - a2;
  if (this[6] == 1)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  for (i = this[2]; i <= v6; *(v2 + 8) = i)
  {
    if (i == *(v2 + 12))
    {
      this = DgnPrimArray<unsigned long long>::reallocElts(v2, 1, 1);
      i = *(v2 + 8);
    }

    *(*v2 + 8 * i++) = 0;
  }

  v8 = *(v2 + 16);
  if (v8 <= v6)
  {
    v8 = v6;
  }

  *(v2 + 16) = v8;
  return this;
}

uint64_t CWIDCrumbBank::getCrumbFrame(CWIDCrumbBank *this, int a2)
{
  v3 = *(this + 5);
  v4 = a2 - v3;
  v5 = v3 - a2;
  if (*(this + 6) == 1)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  result = *(*this + 8 * v6);
  if (!result)
  {
    v8 = MemChunkAlloc(0x30uLL, 0);
    *v8 = 0;
    v8[1] = 0;
    *(v8 + 1) = xmmword_262899170;
    v8[4] = 0;
    *(v8 + 10) = -1;
    *(v8 + 22) = 0;
    *(*this + 8 * v6) = v8;
    return *(*this + 8 * v6);
  }

  return result;
}

{
  v2 = *(this + 5);
  v3 = a2 - v2;
  v4 = v2 - a2;
  if (*(this + 6) == 1)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  return *(*this + 8 * v5);
}

void *CWIDCrumbBank::setFirstFrame(void *result, int *a2, int a3)
{
  v5 = result;
  if (*(result + 4) != -1)
  {
    result = DgnIOwnArray<CWIDCrumbWACSFrame *>::releaseAll(result);
  }

  v6 = *a2;
  v5[5] = a3;
  v5[6] = v6;
  v5[4] = -1;
  return result;
}

uint64_t CWIDCrumbBank::getLastFrame(CWIDCrumbBank *this)
{
  if (*(this + 6) == 1)
  {
    v1 = *(this + 4);
  }

  else
  {
    v1 = -*(this + 4);
  }

  return (v1 + *(this + 5));
}

uint64_t CWIDCrumbBank::setBestAccumScore(CWIDCrumbBank *this, int a2, int a3)
{
  result = CWIDCrumbBank::getCrumbFrame(this, a2);
  *(result + 24) = a3;
  return result;
}

uint64_t CWIDCrumbBank::endCrumbFrame(CWIDCrumbBank *this, int a2, int a3)
{
  result = CWIDCrumbBank::getCrumbFrame(this, a2);
  v5 = result;
  v6 = *(result + 8);
  if (v6)
  {
    result = mrec_qsort_r<CWIDCrumbWACS>(*result, v6, 0x48uLL, 0);
  }

  *(v5 + 28) = a3;
  return result;
}

uint64_t CWIDCrumbBank::addCrumbWACSRecord(CWIDCrumbBank *a1, int a2, uint64_t a3, __int16 a4, _DWORD *a5, uint64_t *a6)
{
  CrumbFrame = CWIDCrumbBank::getCrumbFrame(a1, a2);

  return CWIDCrumbWACSFrame::addCrumbWACSRecord(CrumbFrame, a3, a4, a5, a6);
}

uint64_t CWIDCrumbBank::addCrumbWACSRecordEFst(CWIDCrumbBank *a1, int a2, uint64_t a3, __int16 a4, _DWORD *a5, uint64_t *a6, unsigned int a7)
{
  CrumbFrame = CWIDCrumbBank::getCrumbFrame(a1, a2);

  return CWIDCrumbWACSFrame::addCrumbWACSRecordEFst(CrumbFrame, a3, a4, a5, a6, a7);
}

uint64_t CWIDCrumbBank::addFinalSilHABS(CWIDCrumbBank *a1, int a2, uint64_t a3, int a4, int a5)
{
  result = CWIDCrumbBank::getCrumbFrame(a1, a2);
  *(result + 16) = a4;
  *(result + 20) = a5;
  *(result + 45) = 1;
  return result;
}

uint64_t CWIDCrumbBank::addZeroFrameFinalSilHABS(uint64_t a1, int a2, uint64_t a3, int a4, int a5)
{
  CWIDCrumbBank::ensureCrumbFrame(a1, a2);
  CrumbFrame = CWIDCrumbBank::getCrumbFrame(a1, a2);
  *(CrumbFrame + 16) = a4;
  *(CrumbFrame + 20) = a5;
  *(CrumbFrame + 45) = 1;
  result = CWIDCrumbBank::endCrumbFrame(a1, a2, 0);
  *(a1 + 48) = 1;
  return result;
}

uint64_t *CWIDCrumbBank::setTopChoiceHistory(uint64_t *this, unsigned int a2)
{
  v2 = *(*(this[4] + 8) + 36 * a2 + 32);
  if (v2 != -2)
  {
    v3 = this;
    do
    {
      v4 = 9 * v2;
      v5 = *(*(v3 + 32) + 8) + 36 * v2;
      v6 = *(v5 + 28) - 1;
      v7 = *(v3 + 20);
      v8 = v6 - v7;
      v9 = v7 - v6;
      if (*(v3 + 24) != 1)
      {
        v8 = v9;
      }

      CWIDCrumbWACSFrame::maybeBuildHashTable(*(*v3 + 8 * v8), *(v3 + 40));
      CrumbFrame = CWIDCrumbBank::getCrumbFrame(v3, v6);
      v11 = *(*(v3 + 32) + 8) + 4 * v4;
      *(CrumbFrame + 44) = *(v11 + 24) != *(v11 + 28);
      this = Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::findBucket(*(CrumbFrame + 32), v11);
      *(CrumbFrame + 40) = *(*this + 36);
      v2 = *(v5 + 32);
    }

    while (v2 != -2);
  }

  return this;
}

BOOL CWIDCrumbBank::setTopChoiceHistoryExtendToEnd(CWIDCrumbBank *this, unsigned int a2, int a3)
{
  v4 = a2;
  v6 = *(*(this + 4) + 8);
  v7 = *(v6 + 36 * a2 + 32);
  v8 = a3 - 1;
  CWIDCrumbBank::ensureCrumbFrame(this, a3 - 1);
  v9 = 0;
  v10 = v6 + 36 * v7;
  do
  {
    v11 = v9;
    v12 = a3 + v9;
    v13 = *(v10 + 28);
    v14 = a3 + v9 <= v13;
    if (a3 + v9 <= v13)
    {
      v21 = *(this + 5);
      v22 = v13 - 1 - v21;
      v23 = v21 - (v13 - 1);
      if (*(this + 6) == 1)
      {
        v24 = v22;
      }

      else
      {
        v24 = v23;
      }

      CWIDCrumbWACSFrame::maybeBuildHashTable(*(*this + 8 * v24), *(this + 5));
      CrumbFrame = CWIDCrumbBank::getCrumbFrame(this, v13 - 1);
      HistScore = CWIDCrumbWACSFrame::getHistScore(CrumbFrame, *(this + 4), v7);
      goto LABEL_11;
    }

    v15 = CWIDCrumbBank::getCrumbFrame(this, v8 + v9);
    v9 = v11 - 1;
  }

  while (*(v15 + 45) != 1);
  v16 = *(this + 5);
  v17 = a3 - v16 + v9;
  v18 = v16 - a3 - v9;
  if (*(this + 6) == 1)
  {
    v18 = v17;
  }

  v19 = *(*this + 8 * v18);
  v4 = *(v19 + 16);
  HistScore = *(v19 + 20);
LABEL_11:
  v26 = a3 + v11;
  if (a3 + v11 < a3)
  {
    v27 = -v11;
    do
    {
      v28 = CWIDCrumbBank::getCrumbFrame(this, v26);
      v29 = *(v28 + 28);
      if (v29 == 1879048192)
      {
        *(v28 + 28) = 0;
      }

      else
      {
        HistScore += v29;
      }

      *(v28 + 16) = v4;
      *(v28 + 20) = HistScore;
      ++v26;
      *(v28 + 45) = 1;
      --v27;
    }

    while (v27);
  }

  for (i = *(*(*(this + 4) + 8) + 36 * v4 + 32); i != -2; i = *(v31 + 32))
  {
    v31 = *(*(this + 4) + 8) + 36 * i;
    v32 = *(v31 + 28) - 1;
    v33 = *(this + 5);
    v34 = v32 - v33;
    v35 = v33 - v32;
    if (*(this + 6) == 1)
    {
      v36 = v34;
    }

    else
    {
      v36 = v35;
    }

    CWIDCrumbWACSFrame::maybeBuildHashTable(*(*this + 8 * v36), *(this + 5));
    v37 = CWIDCrumbBank::getCrumbFrame(this, v32);
    CWIDCrumbWACSFrame::setTopChoiceWord(v37, *(this + 4), i, v14);
    v14 = 0;
  }

  return v12 <= v13;
}

uint64_t CWIDCrumbBank::getRightSilenceInfo(uint64_t this, int a2, unsigned int *a3, int *a4)
{
  v4 = *(this + 20);
  v5 = a2 - v4;
  v6 = v4 - a2;
  if (*(this + 24) == 1)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*this + 8 * v7);
  *a4 = *(v8 + 20);
  *a3 = *(v8 + 16);
  return this;
}

unint64_t CWIDCrumbBank::getFrameInfo(unint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(result + 20);
  v6 = *(result + 24);
  v8 = *(result + 16);
  if (v6 != 1)
  {
    v8 = -v8;
  }

  v9 = v8 + v7;
  v10 = v8 < 0;
  if (v8 >= 0)
  {
    v11 = v8 + v7;
  }

  else
  {
    v11 = *(result + 20);
  }

  if (!v10)
  {
    v9 = *(result + 20);
  }

  if (a3 == -1 || (v9 <= a3 ? (v13 = __OFSUB__(v11, a3), v12 = v11 - a3 < 0) : (v13 = 0, v12 = 1), v12 ^ v13))
  {
    *(a4 + 8) = 0;
  }

  else
  {
    v14 = a3 - v7;
    v15 = v7 - a3;
    if (v6 == 1)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    return CWIDCrumbWACSFrame::getFrameInfo(*(*result + 8 * v16), a2, a4, a5, a6);
  }

  return result;
}

uint64_t CWIDCrumbBank::getScore(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 20);
  v5 = a3 - v4;
  v6 = v4 - a3;
  if (*(a1 + 24) == 1)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*a1 + 8 * v7);
  if (*(v8 + 8) && ((CWIDCrumbWACSFrame::maybeBuildHashTable(v8, *(a1 + 40)), v11 = *(a1 + 20), v12 = a3 - v11, v13 = v11 - a3, *(a1 + 24) != 1) ? (v14 = v13) : (v14 = v12), v15 = *(*a1 + 8 * v14), Bucket = Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::findBucket(v15[4], a2), *Bucket))
  {
    return *(*v15 + 72 * *(*Bucket + 36) + 56);
  }

  else
  {
    return 20000;
  }
}

void CWIDCrumbBank::getFrameInfoForBTLat(_DWORD *a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, void **a7, int a8)
{
  CWIDCrumbBank::getFrameInfo(a1, a2, a3, a4, a5, a6);
  v12 = *(a4 + 8);
  if (*(a7 + 3) < v12)
  {
    v25 = 0;
    *(a7 + 3) = realloc_array(*a7, &v25, v12, *(a7 + 2), *(a7 + 2), 1);
    *a7 = v25;
  }

  *(a7 + 2) = v12;
  if (a8 < 0)
  {
    if (v12)
    {
      bzero(*a7, v12);
    }
  }

  else
  {
    if (v12)
    {
      memset(*a7, 1, v12);
    }

    v23 = a7;
    if (a8 && *(a4 + 8))
    {
      v13 = 0;
      do
      {
        v14 = *a4 + 24 * v13;
        Score = CWIDCrumbBank::getScore(a1, v14, a3);
        v16 = 1;
        v17 = a3 - 1;
        v18 = a3 + 1;
        v19 = a8;
        while (1)
        {
          if (v16 > a3)
          {
            v20 = -1;
          }

          else
          {
            v20 = v17;
          }

          v21 = a1[5];
          if (v20 >= v21)
          {
            if (CWIDCrumbBank::getScore(a1, v14, v20) <= Score)
            {
              break;
            }

            v21 = a1[5];
          }

          v22 = a1[6] == 1 ? a1[4] : -a1[4];
          if (v18 <= v22 + v21 && CWIDCrumbBank::getScore(a1, v14, v18) < Score)
          {
            break;
          }

          ++v16;
          ++v18;
          --v17;
          if (!--v19)
          {
            goto LABEL_24;
          }
        }

        *(*v23 + v13) = 0;
LABEL_24:
        ++v13;
      }

      while (v13 < *(a4 + 8));
    }
  }
}

uint64_t CWIDCrumbBank::hasRightSilenceCrumb(CWIDCrumbBank *this, int a2)
{
  v2 = *(this + 5);
  v3 = a2 - v2;
  v4 = v2 - a2;
  if (*(this + 6) == 1)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  return *(*(*this + 8 * v5) + 45);
}

uint64_t CWIDCrumbBank::getAccumHistScore(CWIDCrumbBank *this, int a2, unsigned int a3, unsigned int a4)
{
  v8 = *(this + 5);
  v9 = a2 - v8;
  v10 = v8 - a2;
  if (*(this + 6) == 1)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  CWIDCrumbWACSFrame::maybeBuildHashTable(*(*this + 8 * v11), *(this + 5));
  v12 = *(this + 5);
  v13 = a2 - v12;
  v14 = v12 - a2;
  if (*(this + 6) == 1)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(*this + 8 * v15);
  v17 = *(this + 4);

  return CWIDCrumbWACSFrame::getAccumHistScore(v16, v17, a3, a4);
}

uint64_t CWIDCrumbBank::getHistory(uint64_t a1, int a2, uint64_t a3, unsigned int a4)
{
  v8 = *(a1 + 20);
  v9 = a2 - v8;
  v10 = v8 - a2;
  if (*(a1 + 24) == 1)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  CWIDCrumbWACSFrame::maybeBuildHashTable(*(*a1 + 8 * v11), *(a1 + 40));
  v12 = *(a1 + 20);
  v13 = a2 - v12;
  v14 = v12 - a2;
  if (*(a1 + 24) == 1)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(*a1 + 8 * v15);

  return CWIDCrumbWACSFrame::getHistory(v16, a3, a4);
}

uint64_t CWIDCrumbBank::getSilHistory(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a1 + 20);
  v7 = a2 - v6;
  v8 = v6 - a2;
  if (*(a1 + 24) == 1)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  CWIDCrumbWACSFrame::maybeBuildHashTable(*(*a1 + 8 * v9), *(a1 + 40));
  v10 = *(a1 + 20);
  v11 = a2 - v10;
  v12 = v10 - a2;
  if (*(a1 + 24) == 1)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(*a1 + 8 * v13);
  Bucket = Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::findBucket(v14[4], a3);
  if (*Bucket)
  {
    return *(*v14 + 72 * *(*Bucket + 36) + 60);
  }

  else
  {
    return 4294967294;
  }
}

uint64_t CWIDCrumbBank::getFinalSilFrameScore(CWIDCrumbBank *this, int a2)
{
  v2 = *(this + 5);
  v3 = a2 - v2;
  v4 = v2 - a2;
  if (*(this + 6) == 1)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  return *(*(*this + 8 * v5) + 28);
}

void (***CWIDCrumbBank::mergeCrumbs(void (***this)(void), const HistoryMgr *a2))(void)
{
  if (*(this + 2))
  {
    v2 = this;
    v3 = 0;
    do
    {
      this = CWIDCrumbWACSFrame::mergeCrumbs(*(*v2 + 8 * v3++), a2);
    }

    while (v3 < *(v2 + 8));
  }

  return this;
}

uint64_t *CWIDCrumbBank::updateCrumbHistory(uint64_t *this, int a2)
{
  if (*(this + 2))
  {
    v3 = this;
    v4 = 0;
    do
    {
      this = CWIDCrumbWACSFrame::updateCrumbHistory(*(*v3 + 8 * v4++), a2);
    }

    while (v4 < *(v3 + 8));
  }

  return this;
}

void CWIDCrumbBank::printSize(CWIDCrumbBank *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/crumb.cpp", 1584, &v52);
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
  v21 = sizeObject<CWIDCrumbWACSFrame *>(this, 0);
  v22 = sizeObject<CWIDCrumbWACSFrame *>(this, 1);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/crumb.cpp", 1586, &v52);
  if (v53)
  {
    v27 = v52;
  }

  else
  {
    v27 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v24, v25, v26, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v27, v21, v22, 0);
  DgnString::~DgnString(&v52);
  *a4 += v21;
  *a5 += v22;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/crumb.cpp", 1588, &v52);
  if (v53)
  {
    v32 = v52;
  }

  else
  {
    v32 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, v29, v30, v31, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v32, 4, 4, 0);
  DgnString::~DgnString(&v52);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/crumb.cpp", 1589, &v52);
  if (v53)
  {
    v37 = v52;
  }

  else
  {
    v37 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, v34, v35, v36, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v37, 4, 4, 0);
  DgnString::~DgnString(&v52);
  *a4 += 4;
  *a5 += 4;
  v38 = sizeObject(this + 24, 0);
  v39 = sizeObject(this + 24, 1);
  v40 = sizeObject(this + 24, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/crumb.cpp", 1590, &v52);
  if (v53)
  {
    v45 = v52;
  }

  else
  {
    v45 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v41, v42, v43, v44, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v45, v38, v39, v40);
  DgnString::~DgnString(&v52);
  *a4 += v38;
  *a5 += v39;
  *a6 += v40;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/crumb.cpp", 1591, &v52);
  if (v53)
  {
    v50 = v52;
  }

  else
  {
    v50 = &byte_262899963;
  }

  v51 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v46, v47, v48, v49, a3, &byte_262899963, (35 - a3), (35 - a3), v50, *a4, *a5, *a6);
  DgnString::~DgnString(&v52);
}

void sub_262852A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<CWIDCrumbWACSFrame *>(uint64_t a1, int a2)
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
          v9 += sizeObject(v10, a2);
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

double CWIDACRecogGermIterator::getCurrentGermInternal(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = **(a1 + 40) + 24 * v2;
  *a2 = *v3;
  *(a2 + 4) = *(v3 + 4);
  *(a2 + 8) = *(v3 + 8);
  *(a2 + 24) = 0;
  *(a2 + 26) = 1310720000;
  *(a2 + 30) = 0;
  result = 3.10503915e231;
  *(a2 + 32) = 0x70000000FFFFFFFELL;
  *(a2 + 40) = v2;
  return result;
}

void CWIDACRecogGermIterator::~CWIDACRecogGermIterator(CWIDACRecogGermIterator *this)
{
  MrecInitModule_sdpres_sdapi();

  JUMPOUT(0x26672B1B0);
}

void *DgnArray<CWIDCrumbWACS>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 72 * v2 - 72;
    do
    {
      v4 = *a1 + v3;
      DgnPrimArray<unsigned int>::~DgnPrimArray(v4 + 16);
      DgnIArray<Utterance *>::~DgnIArray(v4);
      v3 -= 72;
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

uint64_t DgnArray<CWIDCrumbWACS>::copyArraySlice(uint64_t result, void *a2, unsigned int a3, unsigned int a4)
{
  v7 = result;
  v8 = *(result + 8);
  if (v8 >= 1)
  {
    v9 = 72 * v8 - 72;
    do
    {
      v10 = *v7 + v9;
      DgnPrimArray<unsigned int>::~DgnPrimArray(v10 + 16);
      result = DgnIArray<Utterance *>::~DgnIArray(v10);
      v9 -= 72;
    }

    while (v9 != -72);
  }

  *(v7 + 8) = 0;
  v11 = *(v7 + 12);
  if (a4 <= v11)
  {
    v12 = 0;
    v13 = 0;
    if (!a4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    DgnArray<LinearTransform>::reallocElts(v7, a4 - v11, 0);
    v12 = *(v7 + 8);
  }

  v14 = a4;
  v13 = v12;
  do
  {
    result = CWIDCrumbWACS::CWIDCrumbWACS(*v7 + 72 * v13, *a2 + 72 * a3);
    v13 = *(v7 + 8) + 1;
    *(v7 + 8) = v13;
    ++a3;
    --v14;
  }

  while (v14);
  if (v13 > a4)
  {
    if (v13 > a4)
    {
      v15 = v13;
      v16 = 72 * v13 - 72;
      do
      {
        --v15;
        v17 = *v7 + v16;
        DgnPrimArray<unsigned int>::~DgnPrimArray(v17 + 16);
        result = DgnIArray<Utterance *>::~DgnIArray(v17);
        v16 -= 72;
      }

      while (v15 > a4);
    }

    goto LABEL_17;
  }

LABEL_14:
  if (v13 < a4)
  {
    v18 = a4 - v13;
    v19 = 72 * v13 + 68;
    do
    {
      v20 = (*v7 + v19);
      *(v20 - 13) = 0uLL;
      *(v20 - 17) = 0uLL;
      *(v20 - 8) = 0x3FFF;
      *(v20 - 7) = xmmword_26286CC40;
      *(v20 - 6) = 20000;
      *(v20 - 1) = 0x70000000FFFFFFFELL;
      *v20 = 1879048192;
      v19 += 72;
      --v18;
    }

    while (v18);
  }

LABEL_17:
  *(v7 + 8) = a4;
  return result;
}

unint64_t CWIDCrumbWACS::CWIDCrumbWACS(unint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  DgnArray<HistoryAndBigScore>::copyArraySlice(a1, a2, 0, *(a2 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  DgnPrimArray<unsigned char>::copyArraySlice(a1 + 16, (a2 + 16), 0, *(a2 + 24));
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  return a1;
}

unint64_t DgnArray<HistoryAndBigScore>::copyArraySlice(unint64_t result, void *a2, unsigned int a3, unsigned int a4)
{
  v7 = result;
  *(result + 8) = 0;
  v8 = *(result + 12);
  if (a4 <= v8)
  {
    v9 = 0;
    v10 = 0;
    if (!a4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    result = DgnArray<RuleDesc>::reallocElts(result, a4 - v8, 0);
    v9 = *(v7 + 8);
  }

  v11 = a4;
  v10 = v9;
  do
  {
    v12 = (*a2 + 12 * a3);
    v13 = (*v7 + 12 * v10);
    *v13 = *v12;
    v13[1] = v12[1];
    v13[2] = v12[2];
    v10 = *(v7 + 8) + 1;
    *(v7 + 8) = v10;
    ++a3;
    --v11;
  }

  while (v11);
LABEL_6:
  if (v10 < a4)
  {
    v14 = a4 - v10;
    v15 = 12 * v10;
    do
    {
      v16 = *v7 + v15;
      *v16 = 0x70000000FFFFFFFELL;
      *(v16 + 8) = 1879048192;
      v15 += 12;
      --v14;
    }

    while (v14);
  }

  *(v7 + 8) = a4;
  return result;
}

uint64_t Hash<CWIDAC,CWIDAC,CWIDAC,unsigned int>::Hash(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_287524068;
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
  v10[1] = 0x3FFF;
  v11 = xmmword_26286CC40;
  LOBYTE(a3) = gShadowDiagnosticShowIdealizedObjectSizes;
  v7 = sizeObject(v10, 2);
  if (a3)
  {
    v8 = 4;
  }

  else
  {
    v8 = 8;
  }

  *(a1 + 24) = 48;
  *(a1 + 28) = v7 + v8 + 8;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_2628530DC(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void Hash<CWIDAC,CWIDAC,CWIDAC,unsigned int>::~Hash(uint64_t a1)
{
  Hash<CWIDAC,CWIDAC,CWIDAC,unsigned int>::~Hash(a1);

  JUMPOUT(0x26672B1B0);
}

uint64_t Hash<CWIDAC,CWIDAC,CWIDAC,unsigned int>::~Hash(uint64_t a1)
{
  *a1 = &unk_287524068;
  if (*(a1 + 8))
  {
    Hash<CWIDAC,CWIDAC,CWIDAC,unsigned int>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  return MrecInitModule_sdpres_sdapi();
}

uint64_t Hash<CWIDAC,CWIDAC,CWIDAC,unsigned int>::removeAll(uint64_t result)
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
            result = v8(v5 + 36);
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

unint64_t CWIDCrumbWACS::operator=(unint64_t a1, uint64_t a2)
{
  DgnArray<HistoryAndBigScore>::copyArraySlice(a1, a2, 0, *(a2 + 8));
  DgnPrimArray<unsigned char>::copyArraySlice(a1 + 16, (a2 + 16), 0, *(a2 + 24));
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

CWIDCrumbWACSFrame *DgnIOwnArray<CWIDCrumbWACSFrame *>::destructAt(CWIDCrumbWACSFrame *result, int a2, int a3)
{
  if (a3 + a2 > a2)
  {
    v3 = result;
    v4 = a2;
    v5 = a3 + a2 - 1;
    do
    {
      result = DgnDelete<CWIDCrumbWACSFrame>(*(*v3 + 8 * v5));
      *(*v3 + 8 * v5) = 0;
    }

    while (v5-- > v4);
  }

  return result;
}

void CollMgr::CollMgr(CollMgr *this, const CharInfo *a2)
{
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  v16 = this + 24;
  *(this + 40) = 0u;
  v15 = this + 40;
  *(this + 56) = 0u;
  v14 = this + 56;
  *(this + 72) = 0u;
  v3 = this + 72;
  *(this + 88) = 0u;
  v4 = (this + 88);
  *(this + 104) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  DgnPrimArray<unsigned int>::reallocElts(this + 8, 1, 1);
  *(*(this + 1) + 4 * (*(this + 4))++) = 0;
  v5 = *(this + 8);
  if (v5 == *(this + 9))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(v16, 1, 1);
    v5 = *(this + 8);
  }

  v6 = (*(this + 3) + 16 * v5);
  *v6 = 0;
  v6[1] = 0;
  ++*(this + 8);
  v7 = *(this + 12);
  if (v7 == *(this + 13))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(v15, 1, 1);
    v7 = *(this + 12);
  }

  v8 = (*(this + 5) + 16 * v7);
  *v8 = 0;
  v8[1] = 0;
  ++*(this + 12);
  v9 = *(this + 16);
  if (v9 == *(this + 17))
  {
    DgnArray<PrefilterResultFrame>::reallocElts(v14, 1, 1);
    v9 = *(this + 16);
  }

  v10 = (*(this + 7) + 32 * v9);
  *v10 = 0u;
  v10[1] = 0u;
  ++*(this + 16);
  v11 = *(this + 20);
  if (v11 == *(this + 21))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(v3, 1, 1);
    v11 = *(this + 20);
  }

  v12 = (*(this + 9) + 16 * v11);
  *v12 = 0;
  v12[1] = 0;
  ++*(this + 20);
  v13 = *(this + 24);
  if (v13 == *(this + 25))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(v4, 1, 1);
    v13 = *(this + 24);
  }

  DgnString::DgnString((*v4 + 16 * v13));
  ++*(this + 24);
  *this = a2;
  *(this + 60) = 1;
  *(this + 104) = 0;
}

void sub_262853734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v15 + 304);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v15 + 288);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v15 + 272);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v15 + 256);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v17);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v22);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v21);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v16);
  DgnArray<DgnString>::releaseAll(v20);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v23);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a10);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a11);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a12);
  DgnArray<DgnString>::releaseAll(v19);
  DgnArray<DgnArray<ParseToken>>::releaseAll(v18);
  DgnArray<Uns32OneToOneMap>::releaseAll(a13);
  DgnArray<DgnArray<ParseToken>>::releaseAll(a14);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(a15);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v15);
  _Unwind_Resume(a1);
}

void CollMgr::~CollMgr(CollMgr *this)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 312);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 296);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 280);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 264);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 248);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 232);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 216);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnArray<DgnString>::releaseAll(this + 176);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 160);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 144);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 128);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 104);
  DgnArray<DgnString>::releaseAll(this + 88);
  DgnArray<DgnArray<ParseToken>>::releaseAll(this + 72);
  DgnArray<Uns32OneToOneMap>::releaseAll(this + 56);
  DgnArray<DgnArray<ParseToken>>::releaseAll(this + 40);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 24);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 8);
}

uint64_t CollMgr::flushPendingCollation(CollMgr *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (*(a3 + 8))
  {
    v17 = *a3;
  }

  else
  {
    v17 = &unk_2628991E4;
  }

  result = strcmp(v17, "TwoLevel");
  if (result)
  {
    if (!strcmp(v17, "Char"))
    {
      if (*(a2 + 8))
      {
        v20 = *a2;
      }

      else
      {
        v20 = &unk_2628991E4;
      }

      result = CollMgr::newUns8Collation(a1, v20, a4, a5, a6, a7);
    }

    else
    {
      result = strcmp(v17, "WideChar");
      if (!result)
      {
        if (*(a2 + 8))
        {
          v19 = *a2;
        }

        else
        {
          v19 = &unk_2628991E4;
        }

        result = CollMgr::newUns32Collation(a1, v19, a8, a9, a10, a11);
      }
    }
  }

  *(a4 + 8) = 0;
  *(a5 + 8) = 0;
  *(a6 + 8) = 0;
  *(a7 + 8) = 0;
  *(a8 + 8) = 0;
  *(a9 + 8) = 0;
  *(a10 + 8) = 0;
  *(a11 + 8) = 0;
  v21 = *(a11 + 24);
  if (v21 >= 1)
  {
    v22 = 16 * v21 - 16;
    do
    {
      result = DgnPrimArray<unsigned int>::~DgnPrimArray(*(a11 + 16) + v22);
      v22 -= 16;
    }

    while (v22 != -16);
  }

  *(a11 + 24) = 0;
  return result;
}

uint64_t CollMgr::newUns8Collation(CollMgr *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 **a6)
{
  v91 = *MEMORY[0x277D85DE8];
  if ((checkValidCollName(a2) & 1) == 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1036, "word/collmgr", 24, "%.500s", v16, v17, a2);
  }

  if (CollMgr::lookupCollation(a1, a2, v12, v13, v14, v15, v16, v17))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1038, "word/collmgr", 11, "%.500s", v18, v19, a2);
  }

  if (**a1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1040, "word/collmgr", 4, "%s", v18, v19, &errStr_word_collmgr_E_COLLATION_BAD_TYPE);
  }

  __s = a2;
  v86 = a1;
  memset(v90, 0, sizeof(v90));
  memset(v89, 0, sizeof(v89));
  v84 = a6;
  if (*(a6 + 2) != 256)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1051, "word/collmgr", 19, "%d", v18, v19, 0);
  }

  v20 = *(a3 + 8);
  if (v20)
  {
    v21 = a3;
    v22 = 0;
    v23 = 4;
    v24 = 1;
    do
    {
      v25 = (*v21 + 4 * v22);
      *(v90 + *v25) = 1;
      *(v89 + v25[2]) = 1;
      *(v89 + v25[3]) = 1;
      v87 = v23;
      v88 = v22 + 1;
      v26 = v24;
      if (v22 + 1 < v20)
      {
        do
        {
          if (*(*a3 + v23) == *v25)
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1061, "word/collmgr", 12, "%.500s", v18, v19, "more than one oneToTwo.");
            v20 = *(a3 + 8);
          }

          ++v26;
          v23 += 4;
        }

        while (v26 < v20);
      }

      v27 = *(a4 + 8);
      if (v27)
      {
        v28 = 0;
        for (i = 0; i < v27; ++i)
        {
          if (*(*a4 + v28) == *v25)
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1066, "word/collmgr", 12, "%.500s", v18, v19, "both a oneToTwo and a twoToOne.");
            v27 = *(a4 + 8);
          }

          v28 += 4;
        }
      }

      v30 = *(a5 + 8);
      if (v30)
      {
        v31 = 0;
        for (j = 0; j < v30; ++j)
        {
          if (*(*a5 + v31) == *v25)
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1071, "word/collmgr", 12, "%.500s", v18, v19, "both a oneToTwo and a twoToTwo.");
            v30 = *(a5 + 8);
          }

          v31 += 4;
        }
      }

      v21 = a3;
      v20 = *(a3 + 8);
      ++v24;
      v22 = v88;
      v23 = v87 + 4;
    }

    while (v88 < v20);
  }

  v33 = *(a4 + 8);
  if (!v33)
  {
    v41 = *(a5 + 8);
    if (!*(a5 + 8))
    {
      goto LABEL_53;
    }

    goto LABEL_45;
  }

  v34 = 0;
  v35 = 0;
  v36 = 1;
  do
  {
    v37 = (*a4 + 4 * v35);
    *(v90 + *v37) = 1;
    *(v90 + v37[1]) = 1;
    *(v89 + v37[2]) = 1;
    ++v35;
    v38 = v34;
    v39 = v36;
    if (v35 < v33)
    {
      do
      {
        v40 = *a4 + v38;
        if (*(v40 + 4) == *v37 && *(v40 + 5) == v37[1])
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1084, "word/collmgr", 13, "%.500s", v18, v19, "more than one twoToOne.");
          v33 = *(a4 + 8);
        }

        ++v39;
        v38 += 4;
      }

      while (v39 < v33);
    }

    v41 = *(a5 + 8);
    if (v41)
    {
      v42 = 0;
      for (k = 0; k < v41; ++k)
      {
        if (*(*a5 + v42) == *v37 && *(*a5 + v42 + 1) == v37[1])
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1090, "word/collmgr", 13, "%.500s", v18, v19, "both a twoToOne and a twoToTwo.");
          v41 = *(a5 + 8);
        }

        v42 += 4;
      }

      v33 = *(a4 + 8);
    }

    else
    {
      v41 = 0;
    }

    ++v36;
    v34 += 4;
  }

  while (v35 < v33);
  if (v41)
  {
LABEL_45:
    v44 = 0;
    v45 = 0;
    v46 = 1;
    do
    {
      v47 = (*a5 + 4 * v45);
      *(v90 + *v47) = 1;
      *(v90 + v47[1]) = 1;
      *(v89 + v47[2]) = 1;
      *(v89 + v47[3]) = 1;
      if (++v45 < v41)
      {
        v48 = v44;
        v49 = v46;
        do
        {
          v50 = *a5 + v48;
          if (*(v50 + 4) == *v47 && *(v50 + 5) == v47[1])
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1104, "word/collmgr", 13, "%.500s", v18, v19, "more than one twoToTwo.");
            v41 = *(a5 + 8);
          }

          ++v49;
          v48 += 4;
        }

        while (v49 < v41);
      }

      ++v46;
      v44 += 4;
    }

    while (v45 < v41);
  }

LABEL_53:
  if ((v90[0] & 1) != 0 || LOBYTE(v89[0]) == 1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1108, "word/collmgr", 16, "%s", v18, v19, &errStr_word_collmgr_E_FROM_OR_TO_IS_ZERO);
  }

  for (m = 0; m != 256; ++m)
  {
    if (*(v90 + m) == 1 && *(v89 + m) == 1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1111, "word/collmgr", 17, "%u", v18, v19, m);
    }
  }

  for (n = 0; n != 256; ++n)
  {
    v53 = *v84;
    if (n)
    {
      if (!v53[n])
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1122, "word/collmgr", 15, "%u", v18, v19, n);
      }
    }

    else
    {
      v54 = *v53;
      if (v54)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1118, "word/collmgr", 14, "%u", v18, v19, v54);
      }
    }
  }

  v55 = *(v86 + 28);
  if (v55)
  {
    v56 = v55 - 1;
    v57 = *(*(v86 + 13) + 2 * v56);
    *(v86 + 28) = v56;
  }

  else
  {
    if (*(v86 + 60) >= 0x4000u)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1136, "word/collmgr", 2, "%s", v18, v19, &errStr_word_collmgr_E_TOO_MANY);
    }

    v58 = *(v86 + 4);
    if (v58 == *(v86 + 5))
    {
      DgnPrimArray<unsigned int>::reallocElts(v86 + 8, 1, 1);
      v58 = *(v86 + 4);
    }

    *(v86 + 4) = v58 + 1;
    v59 = *(v86 + 8);
    if (v59 == *(v86 + 9))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(v86 + 24, 1, 1);
      v59 = *(v86 + 8);
    }

    v60 = (*(v86 + 3) + 16 * v59);
    *v60 = 0;
    v60[1] = 0;
    ++*(v86 + 8);
    v61 = *(v86 + 12);
    if (v61 == *(v86 + 13))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(v86 + 40, 1, 1);
      v61 = *(v86 + 12);
    }

    v62 = (*(v86 + 5) + 16 * v61);
    *v62 = 0;
    v62[1] = 0;
    ++*(v86 + 12);
    v63 = *(v86 + 24);
    if (v63 == *(v86 + 25))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(v86 + 88, 1, 1);
      v63 = *(v86 + 24);
    }

    DgnString::DgnString((*(v86 + 11) + 16 * v63));
    ++*(v86 + 24);
    v57 = *(v86 + 60);
    *(v86 + 60) = v57 + 1;
  }

  *(*(v86 + 1) + 4 * v57) = 1;
  DgnPrimArray<unsigned char>::copyArraySlice(*(v86 + 3) + 16 * v57, v84, 0, *(v84 + 2));
  v64 = *(v86 + 5) + 16 * v57;
  *(v64 + 8) = 0;
  v65 = *(a3 + 8);
  v66 = *(v64 + 12);
  if (v65 > v66)
  {
    DgnPrimArray<unsigned int>::reallocElts(v64, v65 - v66, 1);
    v65 = *(a3 + 8);
  }

  if (v65)
  {
    v67 = 0;
    do
    {
      *(*v64 + 4 * (v67 + *(v64 + 8))) = *(*a3 + 4 * v67);
      ++v67;
      v68 = *(a3 + 8);
    }

    while (v67 < v68);
  }

  else
  {
    LODWORD(v68) = 0;
  }

  *(v64 + 8) += v68;
  v69 = *(v86 + 5) + 16 * v57;
  v70 = *(a4 + 8);
  v71 = *(v69 + 12);
  v72 = *(v69 + 8) + v70;
  if (v72 > v71)
  {
    DgnPrimArray<unsigned int>::reallocElts(*(v86 + 5) + 16 * v57, v72 - v71, 1);
    v70 = *(a4 + 8);
  }

  if (v70)
  {
    v73 = 0;
    do
    {
      *(*v69 + 4 * (v73 + *(v69 + 8))) = *(*a4 + 4 * v73);
      ++v73;
      v74 = *(a4 + 8);
    }

    while (v73 < v74);
  }

  else
  {
    LODWORD(v74) = 0;
  }

  *(v69 + 8) += v74;
  v75 = *(v86 + 5) + 16 * v57;
  v76 = *(a5 + 8);
  v77 = *(v75 + 12);
  v78 = *(v75 + 8) + v76;
  if (v78 > v77)
  {
    DgnPrimArray<unsigned int>::reallocElts(*(v86 + 5) + 16 * v57, v78 - v77, 1);
    v76 = *(a5 + 8);
  }

  if (v76)
  {
    v79 = 0;
    do
    {
      *(*v75 + 4 * (v79 + *(v75 + 8))) = *(*a5 + 4 * v79);
      ++v79;
      v80 = *(a5 + 8);
    }

    while (v79 < v80);
  }

  else
  {
    LODWORD(v80) = 0;
  }

  *(v75 + 8) += v80;
  DgnString::operator=((*(v86 + 11) + 16 * v57), __s);
  v81 = *(v86 + 56);
  if (v81 == *(v86 + 57))
  {
    DgnPrimArray<short>::reallocElts(v86 + 216, 1, 1);
    v81 = *(v86 + 56);
  }

  *(*(v86 + 27) + 2 * v81) = v57;
  *(v86 + 56) = v81 + 1;
  v82 = *MEMORY[0x277D85DE8];
  return v57;
}

uint64_t CollMgr::newUns32Collation(CollMgr *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((checkValidCollName(a2) & 1) == 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1166, "word/collmgr", 24, "%.500s", v16, v17, a2);
  }

  if (CollMgr::lookupCollation(a1, a2, v12, v13, v14, v15, v16, v17))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1168, "word/collmgr", 11, "%.500s", v18, v19, a2);
  }

  if (!**a1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1170, "word/collmgr", 4, "%s", v18, v19, &errStr_word_collmgr_E_COLLATION_BAD_TYPE);
  }

  v113 = a2;
  v114 = a1;
  HashKEV<unsigned int,unsigned int,Uns32Scope>::HashKEV(v122, 0, 16);
  HashKEV<unsigned int,unsigned int,Uns32Scope>::HashKEV(v120, 0, 16);
  v118 = 0;
  v119 = 0;
  v22 = a3;
  if (*(a3 + 8))
  {
    v23 = 0;
    v117 = 1;
    v116 = 16;
    do
    {
      v24 = (*a3 + 16 * v23);
      if (!*HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(v122, v24))
      {
        HashKEV<unsigned int,unsigned int,CWIDScope>::add(v122, v24);
        v25 = *v24;
        v26 = v119;
        if (v119 == HIDWORD(v119))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v118, 1, 1);
          v26 = v119;
        }

        *(v118 + 4 * v26) = v25;
        LODWORD(v119) = v119 + 1;
      }

      if (!*HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(v120, v24 + 2))
      {
        HashKEV<unsigned int,unsigned int,CWIDScope>::add(v120, v24 + 2);
      }

      if (!*HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(v120, v24 + 3))
      {
        HashKEV<unsigned int,unsigned int,CWIDScope>::add(v120, v24 + 3);
      }

      v27 = v23 + 1;
      v28 = *(v22 + 8);
      v29 = v116;
      v30 = v117;
      v115 = v27;
      if (v27 < v28)
      {
        do
        {
          if (*(*v22 + v29) == *v24)
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1194, "word/collmgr", 12, "%.500s", v20, v21, "more than one oneToTwo.");
            v28 = *(v22 + 8);
          }

          ++v30;
          v29 += 16;
        }

        while (v30 < v28);
      }

      v31 = *(a4 + 8);
      if (v31)
      {
        v32 = 0;
        for (i = 0; i < v31; ++i)
        {
          if (*(*a4 + v32) == *v24)
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1199, "word/collmgr", 12, "%.500s", v20, v21, "both a oneToTwo and a twoToOne.");
            v31 = *(a4 + 8);
          }

          v32 += 16;
        }
      }

      v34 = *(a5 + 8);
      if (v34)
      {
        v35 = 0;
        for (j = 0; j < v34; ++j)
        {
          if (*(*a5 + v35) == *v24)
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1204, "word/collmgr", 12, "%.500s", v20, v21, "both a oneToTwo and a twoToTwo.");
            v34 = *(a5 + 8);
          }

          v35 += 16;
        }
      }

      a3 = v22;
      v23 = v115;
      v116 += 16;
      ++v117;
    }

    while (v115 < *(v22 + 8));
  }

  if (!*(a4 + 8))
  {
    if (!*(a5 + 8))
    {
      goto LABEL_80;
    }

    goto LABEL_61;
  }

  v37 = 0;
  v38 = 0;
  v39 = 1;
  do
  {
    v40 = (*a4 + 16 * v38);
    if (!*HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(v122, v40))
    {
      HashKEV<unsigned int,unsigned int,CWIDScope>::add(v122, v40);
      v41 = *v40;
      v42 = v119;
      if (v119 == HIDWORD(v119))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v118, 1, 1);
        v42 = v119;
      }

      *(v118 + 4 * v42) = v41;
      LODWORD(v119) = v119 + 1;
    }

    if (!*HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(v122, v40 + 1))
    {
      HashKEV<unsigned int,unsigned int,CWIDScope>::add(v122, v40 + 1);
      v43 = *v40;
      v44 = v119;
      if (v119 == HIDWORD(v119))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v118, 1, 1);
        v44 = v119;
      }

      *(v118 + 4 * v44) = v43;
      LODWORD(v119) = v119 + 1;
    }

    if (!*HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(v120, v40 + 2))
    {
      HashKEV<unsigned int,unsigned int,CWIDScope>::add(v120, v40 + 2);
    }

    ++v38;
    v45 = *(a4 + 8);
    v46 = v37;
    v47 = v39;
    if (v38 < v45)
    {
      do
      {
        v48 = *a4 + v46;
        if (*(v48 + 16) == *v40 && *(v48 + 20) == v40[1])
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1228, "word/collmgr", 13, "%.500s", v20, v21, "more than one twoToOne.");
          v45 = *(a4 + 8);
        }

        ++v47;
        v46 += 16;
      }

      while (v47 < v45);
    }

    v49 = *(a5 + 8);
    if (v49)
    {
      v50 = 0;
      for (k = 0; k < v49; ++k)
      {
        if (*(*a5 + v50) == *v40 && *(*a5 + v50 + 4) == v40[1])
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1234, "word/collmgr", 13, "%.500s", v20, v21, "both a twoToOne and a twoToTwo.");
          v49 = *(a5 + 8);
        }

        v50 += 16;
      }

      v45 = *(a4 + 8);
    }

    else
    {
      v49 = 0;
    }

    ++v39;
    v37 += 16;
  }

  while (v38 < v45);
  if (v49)
  {
LABEL_61:
    v52 = 0;
    v53 = 0;
    v54 = 1;
    do
    {
      v55 = (*a5 + 16 * v53);
      if (!*HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(v122, v55))
      {
        HashKEV<unsigned int,unsigned int,CWIDScope>::add(v122, v55);
        v56 = *v55;
        v57 = v119;
        if (v119 == HIDWORD(v119))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v118, 1, 1);
          v57 = v119;
        }

        *(v118 + 4 * v57) = v56;
        LODWORD(v119) = v119 + 1;
      }

      if (!*HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(v122, v55 + 1))
      {
        HashKEV<unsigned int,unsigned int,CWIDScope>::add(v122, v55 + 1);
        v58 = *v55;
        v59 = v119;
        if (v119 == HIDWORD(v119))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v118, 1, 1);
          v59 = v119;
        }

        *(v118 + 4 * v59) = v58;
        LODWORD(v119) = v119 + 1;
      }

      if (!*HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(v120, v55 + 2))
      {
        HashKEV<unsigned int,unsigned int,CWIDScope>::add(v120, v55 + 2);
      }

      if (!*HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(v120, v55 + 3))
      {
        HashKEV<unsigned int,unsigned int,CWIDScope>::add(v120, v55 + 3);
      }

      ++v53;
      v60 = *(a5 + 8);
      v61 = v52;
      v62 = v54;
      if (v53 < v60)
      {
        do
        {
          v63 = *a5 + v61;
          if (*(v63 + 16) == *v55 && *(v63 + 20) == v55[1])
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1262, "word/collmgr", 13, "%.500s", v20, v21, "more than one twoToTwo.");
            v60 = *(a5 + 8);
          }

          ++v62;
          v61 += 16;
        }

        while (v62 < v60);
      }

      ++v54;
      v52 += 16;
    }

    while (v53 < v60);
  }

LABEL_80:
  v64 = v123;
  while (1)
  {
    v64 = *v64;
    if (!v64)
    {
      break;
    }

    if (!*(v64 + 2) && !*(v64 + 3))
    {
LABEL_89:
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1267, "word/collmgr", 16, "%s", v20, v21, &errStr_word_collmgr_E_FROM_OR_TO_IS_ZERO);
      goto LABEL_90;
    }
  }

  v65 = v121;
  while (1)
  {
    v65 = *v65;
    if (!v65)
    {
      break;
    }

    if (!*(v65 + 2) && !*(v65 + 3))
    {
      goto LABEL_89;
    }
  }

LABEL_90:
  v66 = v22;
  if (v119)
  {
    v67 = 0;
    v68 = 0;
    do
    {
      if (*HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(v120, (v118 + v67)))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1271, "word/collmgr", 17, "%u", v20, v21, *(v118 + v67));
      }

      ++v68;
      v67 += 4;
    }

    while (v68 < v119);
  }

  v69 = *(a6 + 8);
  if (!v69)
  {
    goto LABEL_108;
  }

  v70 = 0;
  v71 = *(a6 + 16);
  do
  {
    v72 = v71 + 16 * v70;
    if (!*(v72 + 8))
    {
      goto LABEL_107;
    }

    v73 = 0;
    do
    {
      v74 = *(*v72 + 4 * v73);
      if (v73 + *(*a6 + 4 * v70))
      {
        if (v74)
        {
          goto LABEL_105;
        }

        v75 = 15;
        v76 = 1286;
        v77 = "%u";
        v74 = v73 + *(*a6 + 4 * v70);
      }

      else
      {
        if (!v74)
        {
          goto LABEL_105;
        }

        v75 = 14;
        v76 = 1281;
        v77 = "%u";
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", v76, "word/collmgr", v75, v77, v20, v21, v74);
LABEL_105:
      ++v73;
      v71 = *(a6 + 16);
      v72 = v71 + 16 * v70;
    }

    while (v73 < *(v72 + 8));
    v69 = *(a6 + 8);
    v66 = v22;
LABEL_107:
    ++v70;
  }

  while (v70 < v69);
LABEL_108:
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v118);
  HashKEV<unsigned int,unsigned int,Uns32Scope>::~HashKEV(v120);
  HashKEV<unsigned int,unsigned int,Uns32Scope>::~HashKEV(v122);
  v80 = *(v114 + 28);
  if (v80)
  {
    v81 = v80 - 1;
    v82 = *(*(v114 + 13) + 2 * v81);
    *(v114 + 28) = v81;
    v83 = v113;
  }

  else
  {
    v83 = v113;
    if (*(v114 + 60) >= 0x4000u)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1301, "word/collmgr", 2, "%s", v78, v79, &errStr_word_collmgr_E_TOO_MANY);
    }

    v84 = *(v114 + 4);
    if (v84 == *(v114 + 5))
    {
      DgnPrimArray<unsigned int>::reallocElts(v114 + 8, 1, 1);
      v84 = *(v114 + 4);
    }

    *(v114 + 4) = v84 + 1;
    v85 = *(v114 + 16);
    if (v85 == *(v114 + 17))
    {
      DgnArray<PrefilterResultFrame>::reallocElts(v114 + 56, 1, 1);
      v85 = *(v114 + 16);
    }

    v86 = (*(v114 + 7) + 32 * v85);
    *v86 = 0u;
    v86[1] = 0u;
    ++*(v114 + 16);
    v87 = *(v114 + 20);
    if (v87 == *(v114 + 21))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(v114 + 72, 1, 1);
      v87 = *(v114 + 20);
    }

    v88 = (*(v114 + 9) + 16 * v87);
    *v88 = 0;
    v88[1] = 0;
    ++*(v114 + 20);
    v89 = *(v114 + 24);
    if (v89 == *(v114 + 25))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(v114 + 88, 1, 1);
      v89 = *(v114 + 24);
    }

    DgnString::DgnString((*(v114 + 11) + 16 * v89));
    ++*(v114 + 24);
    v82 = *(v114 + 60);
    *(v114 + 60) = v82 + 1;
  }

  *(*(v114 + 1) + 4 * v82) = 1;
  v90 = *(v114 + 7) + 32 * v82;
  DgnPrimArray<int>::copyArraySlice(v90, a6, 0, *(a6 + 8));
  DgnArray<DgnPrimArray<unsigned int>>::copyArraySlice(v90 + 16, (a6 + 16), 0, *(a6 + 24));
  v91 = *(v114 + 9) + 16 * v82;
  *(v91 + 8) = 0;
  v92 = *(v66 + 8);
  v93 = *(v91 + 12);
  if (v92 > v93)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(v91, v92 - v93, 1);
    v92 = *(v66 + 8);
  }

  if (v92)
  {
    v94 = 0;
    v95 = 0;
    do
    {
      *(*v91 + 16 * (v95++ + *(v91 + 8))) = *(*v66 + v94);
      v96 = *(v66 + 8);
      v94 += 16;
    }

    while (v95 < v96);
  }

  else
  {
    LODWORD(v96) = 0;
  }

  *(v91 + 8) += v96;
  v97 = *(v114 + 9) + 16 * v82;
  v98 = *(a4 + 8);
  v99 = *(v97 + 12);
  v100 = *(v97 + 8) + v98;
  if (v100 > v99)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(*(v114 + 9) + 16 * v82, v100 - v99, 1);
    v98 = *(a4 + 8);
  }

  if (v98)
  {
    v101 = 0;
    v102 = 0;
    do
    {
      *(*v97 + 16 * (v102++ + *(v97 + 8))) = *(*a4 + v101);
      v103 = *(a4 + 8);
      v101 += 16;
    }

    while (v102 < v103);
  }

  else
  {
    LODWORD(v103) = 0;
  }

  *(v97 + 8) += v103;
  v104 = *(v114 + 9) + 16 * v82;
  v105 = *(a5 + 8);
  v106 = *(v104 + 12);
  v107 = *(v104 + 8) + v105;
  if (v107 > v106)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(*(v114 + 9) + 16 * v82, v107 - v106, 1);
    v105 = *(a5 + 8);
  }

  if (v105)
  {
    v108 = 0;
    v109 = 0;
    do
    {
      *(*v104 + 16 * (v109++ + *(v104 + 8))) = *(*a5 + v108);
      v110 = *(a5 + 8);
      v108 += 16;
    }

    while (v109 < v110);
  }

  else
  {
    LODWORD(v110) = 0;
  }

  *(v104 + 8) += v110;
  DgnString::operator=((*(v114 + 11) + 16 * v82), v83);
  v111 = *(v114 + 56);
  if (v111 == *(v114 + 57))
  {
    DgnPrimArray<short>::reallocElts(v114 + 216, 1, 1);
    v111 = *(v114 + 56);
  }

  *(*(v114 + 27) + 2 * v111) = v82;
  *(v114 + 56) = v111 + 1;
  return v82;
}

void sub_262855030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a16);
  HashKEV<unsigned int,unsigned int,Uns32Scope>::~HashKEV(&a18);
  HashKEV<unsigned int,unsigned int,Uns32Scope>::~HashKEV(&a31);
  _Unwind_Resume(a1);
}

void CollMgr::loadCollMgrFromText(CollMgr *this, DFile *a2)
{
  DgnTextFileParser::DgnTextFileParser(v272);
  DgnTextFileParser::openDgnTextFileParser(v272, a2, 0x5Bu, 1);
  DgnTextFileParser::verifyMatchingFileType(v272, "Collation");
  v271[0] = 0;
  v271[1] = 0;
  DgnTextFile::legalDgnTextFileVersions(v272, sTCO_Versions, v271, v4, v5, v6, v7, v8);
  DgnTextFileParser::verifyFileVersionInRange(v272, v271, v9, v10, v11, v12, v13, v14);
  DgnTextFileParser::verifyNoUnknownHeaderFields(v272, v15, v16, v17, v18, v19, v20, v21);
  v250 = 0uLL;
  DgnTextFile::getLineFieldNames(v272, &v250);
  v269 = 0;
  v270 = 0;
  DgnTextFile::getLineFieldFormats(v272, &v269);
  DgnTextFileParser::verifyMatchingNumFieldSpecs(v272, 9, v22, v23, v24, v25, v26, v27);
  v28 = v250;
  if (*(v250 + 8))
  {
    v29 = *v250;
  }

  else
  {
    v29 = &unk_2628991E4;
  }

  if (strcmp(v29, "CollName"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 412, "word/collmgr", 8, "%.500s %.500s", v30, v31, "CollName");
    v28 = v250;
  }

  if (*v269)
  {
    if (*(v28 + 8))
    {
      v32 = *v28;
    }

    else
    {
      v32 = &unk_2628991E4;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 415, "word/collmgr", 9, "%.500s %.500s", v30, v31, v32);
    v28 = v250;
  }

  if (*(v28 + 24))
  {
    v33 = *(v28 + 16);
  }

  else
  {
    v33 = &unk_2628991E4;
  }

  if (strcmp(v33, "CollType"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 419, "word/collmgr", 8, "%.500s %.500s", v34, v35, "CollType");
    v28 = v250;
  }

  if (*(v269 + 1))
  {
    if (*(v28 + 24))
    {
      v36 = *(v28 + 16);
    }

    else
    {
      v36 = &unk_2628991E4;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 422, "word/collmgr", 9, "%.500s %.500s", v34, v35, v36);
    v28 = v250;
  }

  if (*(v28 + 40))
  {
    v37 = *(v28 + 32);
  }

  else
  {
    v37 = &unk_2628991E4;
  }

  if (strcmp(v37, "ComponentCollName1"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 426, "word/collmgr", 8, "%.500s %.500s", v38, v39, "ComponentCollName1");
    v28 = v250;
  }

  if (*(v269 + 2))
  {
    if (*(v28 + 40))
    {
      v40 = *(v28 + 32);
    }

    else
    {
      v40 = &unk_2628991E4;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 429, "word/collmgr", 9, "%.500s %.500s", v38, v39, v40);
    v28 = v250;
  }

  if (*(v28 + 56))
  {
    v41 = *(v28 + 48);
  }

  else
  {
    v41 = &unk_2628991E4;
  }

  if (strcmp(v41, "ComponentCollName2"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 433, "word/collmgr", 8, "%.500s %.500s", v42, v43, "ComponentCollName2");
    v28 = v250;
  }

  if (*(v269 + 3))
  {
    if (*(v28 + 56))
    {
      v44 = *(v28 + 48);
    }

    else
    {
      v44 = &unk_2628991E4;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 436, "word/collmgr", 9, "%.500s %.500s", v42, v43, v44);
    v28 = v250;
  }

  if (*(v28 + 72))
  {
    v45 = *(v28 + 64);
  }

  else
  {
    v45 = &unk_2628991E4;
  }

  if (strcmp(v45, "MapType"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 440, "word/collmgr", 8, "%.500s %.500s", v46, v47, "MapType");
    v28 = v250;
  }

  if (*(v269 + 4))
  {
    if (*(v28 + 72))
    {
      v48 = *(v28 + 64);
    }

    else
    {
      v48 = &unk_2628991E4;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 443, "word/collmgr", 9, "%.500s %.500s", v46, v47, v48);
    v28 = v250;
  }

  if (*(v28 + 88))
  {
    v49 = *(v28 + 80);
  }

  else
  {
    v49 = &unk_2628991E4;
  }

  if (strcmp(v49, "MapFrom1"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 447, "word/collmgr", 8, "%.500s %.500s", v50, v51, "MapFrom1");
    v28 = v250;
  }

  if (*(v269 + 5) != 3)
  {
    if (*(v28 + 88))
    {
      v52 = *(v28 + 80);
    }

    else
    {
      v52 = &unk_2628991E4;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 450, "word/collmgr", 9, "%.500s %.500s", v50, v51, v52);
    v28 = v250;
  }

  if (*(v28 + 104))
  {
    v53 = *(v28 + 96);
  }

  else
  {
    v53 = &unk_2628991E4;
  }

  if (strcmp(v53, "MapFrom2"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 454, "word/collmgr", 8, "%.500s %.500s", v54, v55, "MapFrom2");
    v28 = v250;
  }

  if (*(v269 + 6) != 3)
  {
    if (*(v28 + 104))
    {
      v56 = *(v28 + 96);
    }

    else
    {
      v56 = &unk_2628991E4;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 457, "word/collmgr", 9, "%.500s %.500s", v54, v55, v56);
    v28 = v250;
  }

  if (*(v28 + 120))
  {
    v57 = *(v28 + 112);
  }

  else
  {
    v57 = &unk_2628991E4;
  }

  if (strcmp(v57, "MapTo1"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 461, "word/collmgr", 8, "%.500s %.500s", v58, v59, "MapTo1");
    v28 = v250;
  }

  if (*(v269 + 7) != 3)
  {
    if (*(v28 + 120))
    {
      v60 = *(v28 + 112);
    }

    else
    {
      v60 = &unk_2628991E4;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 464, "word/collmgr", 9, "%.500s %.500s", v58, v59, v60);
    v28 = v250;
  }

  if (*(v28 + 136))
  {
    v61 = *(v28 + 128);
  }

  else
  {
    v61 = &unk_2628991E4;
  }

  if (strcmp(v61, "MapTo2"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 468, "word/collmgr", 8, "%.500s %.500s", v62, v63, "MapTo2");
  }

  if (*(v269 + 8) != 3)
  {
    if (*(v250 + 136))
    {
      v64 = *(v250 + 128);
    }

    else
    {
      v64 = &unk_2628991E4;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 471, "word/collmgr", 9, "%.500s %.500s", v62, v63, v64);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v269);
  DgnArray<DgnString>::releaseAll(&v250);
  DgnString::DgnString(&v269);
  DgnString::DgnString(&v267);
  DgnString::DgnString(v266);
  v236 = 0;
  v237 = 0;
  v264 = 0;
  v265 = 0;
  v262 = 0;
  v263 = 0;
  v260 = 0;
  v261 = 0;
  v65 = 1;
  v258 = 0;
  v259 = 0;
  v256 = 0;
  v257 = 0;
  v254 = 0;
  v255 = 0;
  v252 = 0;
  v253 = 0;
  v250 = 0u;
  v251 = 0u;
  v248 = 0;
  v249 = 0;
  while (DgnTextFileParser::parseNextLine(v272))
  {
    LineFieldString = DgnTextFileParser::getLineFieldString(v272, 0);
    DgnString::DgnString(&v246, LineFieldString);
    v67 = DgnTextFileParser::getLineFieldString(v272, 1u);
    DgnString::DgnString(&v244, v67);
    v68 = DgnTextFileParser::getLineFieldString(v272, 2u);
    DgnString::DgnString(&v242, v68);
    v69 = DgnTextFileParser::getLineFieldString(v272, 3u);
    DgnString::DgnString(&v240, v69);
    v70 = DgnTextFileParser::getLineFieldString(v272, 4u);
    DgnString::DgnString(&__s1, v70);
    LineFieldUnsigned = DgnTextFileParser::getLineFieldUnsigned(v272, 5u, v71, v72, v73, v74, v75, v76);
    v84 = DgnTextFileParser::getLineFieldUnsigned(v272, 6u, v78, v79, v80, v81, v82, v83);
    v91 = DgnTextFileParser::getLineFieldUnsigned(v272, 7u, v85, v86, v87, v88, v89, v90);
    v98 = DgnTextFileParser::getLineFieldUnsigned(v272, 8u, v92, v93, v94, v95, v96, v97);
    if (v65)
    {
      DgnString::operator=(&v269, &v246);
      DgnString::operator=(&v267, &v244);
      DgnString::operator=(v266, &__s1);
    }

    if (v247)
    {
      v99 = v246;
    }

    else
    {
      v99 = &unk_2628991E4;
    }

    if ((checkValidCollName(v99) & 1) == 0)
    {
      CurrentLine = DgnTextFile::getCurrentLine(v272);
      if (*(CurrentLine + 8))
      {
        v103 = *CurrentLine;
      }

      else
      {
        v103 = &unk_2628991E4;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 515, "word/collmgr", 10, "%.500s", v101, v102, v103);
    }

    if (v245)
    {
      v104 = v244;
    }

    else
    {
      v104 = &unk_2628991E4;
    }

    if (strcmp(v104, "TwoLevel") && strcmp(v104, "Char") && strcmp(v104, "WideChar"))
    {
      v105 = DgnTextFile::getCurrentLine(v272);
      if (*(v105 + 8))
      {
        v108 = *v105;
      }

      else
      {
        v108 = &unk_2628991E4;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 520, "word/collmgr", 10, "%.500s", v106, v107, v108);
    }

    v109 = v247;
    v110 = v246;
    if (v247)
    {
      v111 = v246;
    }

    else
    {
      v111 = &unk_2628991E4;
    }

    v112 = v270;
    v113 = v269;
    if (v270)
    {
      v114 = v269;
    }

    else
    {
      v114 = &unk_2628991E4;
    }

    if (!strcmp(v111, v114))
    {
      v115 = v245 ? v244 : &unk_2628991E4;
      v116 = (v268 ? v267 : &unk_2628991E4);
      if (strcmp(v115, v116))
      {
        v117 = DgnTextFile::getCurrentLine(v272);
        if (*(v117 + 8))
        {
          v120 = *v117;
        }

        else
        {
          v120 = &unk_2628991E4;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 524, "word/collmgr", 10, "%.500s", v118, v119, v120);
        v109 = v247;
        v110 = v246;
        v112 = v270;
        v113 = v269;
      }
    }

    if (v109)
    {
      v121 = v110;
    }

    else
    {
      v121 = &unk_2628991E4;
    }

    if (v112)
    {
      v122 = v113;
    }

    else
    {
      v122 = &unk_2628991E4;
    }

    if (strcmp(v121, v122))
    {
      if (v249)
      {
        v123 = DWORD2(v250);
        if (DWORD2(v250) == HIDWORD(v250))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v250, 1, 1);
          v123 = DWORD2(v250);
        }

        *(v250 + 4 * v123) = HIDWORD(v237);
        ++DWORD2(v250);
        v124 = DWORD2(v251);
        if (DWORD2(v251) == HIDWORD(v251))
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(&v251, 1, 1);
          v124 = DWORD2(v251);
        }

        v125 = (v251 + 16 * v124);
        *v125 = 0;
        v125[1] = 0;
        DgnPrimArray<int>::copyArraySlice(v125, &v248, 0, v249);
        HIDWORD(v237) = 0;
        ++DWORD2(v251);
        LODWORD(v249) = 0;
      }

      CollMgr::flushPendingCollation(this, &v269, &v267, &v264, &v262, &v260, &v258, &v256, &v254, &v252, &v250);
      v236 = 0;
      LOBYTE(v237) = 0;
    }

    if (v245)
    {
      v126 = v244;
    }

    else
    {
      v126 = &unk_2628991E4;
    }

    if (!strcmp(v126, "TwoLevel"))
    {
      if (v243 < 2 || v241 < 2)
      {
        v158 = DgnTextFile::getCurrentLine(v272);
        if (*(v158 + 8))
        {
          v161 = *v158;
        }

        else
        {
          v161 = &unk_2628991E4;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 555, "word/collmgr", 10, "%.500s", v159, v160, v161);
        if (v243)
        {
          v145 = v242;
        }

        else
        {
          v145 = &unk_2628991E4;
        }
      }

      else
      {
        v145 = v242;
      }

      v162 = CollMgr::lookupCollation(this, v145, v127, v128, v129, v130, v131, v132);
      if (v241)
      {
        v163 = v240;
      }

      else
      {
        v163 = &unk_2628991E4;
      }

      if (!strcmp(v163, "_IDENTITY"))
      {
        v170 = 65534;
      }

      else
      {
        v170 = CollMgr::lookupCollation(this, v163, v164, v165, v166, v167, v168, v169);
      }

      if (v239 > 1 || LineFieldUnsigned || v84 || v91 || v98)
      {
        v171 = DgnTextFile::getCurrentLine(v272);
        if (*(v171 + 8))
        {
          v174 = *v171;
        }

        else
        {
          v174 = &unk_2628991E4;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 568, "word/collmgr", 10, "%.500s", v172, v173, v174);
      }

      if (v247)
      {
        v175 = v246;
      }

      else
      {
        v175 = &unk_2628991E4;
      }

      CollMgr::newTwoLevelCollation(this, v175, v162, v170, v166, v167, v168, v169);
    }

    else if (!strcmp(v126, "Char"))
    {
      if (**this)
      {
        v146 = DgnTextFile::getCurrentLine(v272);
        if (*(v146 + 8))
        {
          v149 = *v146;
        }

        else
        {
          v149 = &unk_2628991E4;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 575, "word/collmgr", 10, "%.500s", v147, v148, v149);
      }

      if (v243 > 1 || v241 >= 2)
      {
        v150 = DgnTextFile::getCurrentLine(v272);
        if (*(v150 + 8))
        {
          v153 = *v150;
        }

        else
        {
          v153 = &unk_2628991E4;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 579, "word/collmgr", 10, "%.500s", v151, v152, v153);
      }

      if (v239 < 2 || (v176 = __s1, strcmp(__s1, "OneToTwo")) && strcmp(v176, "TwoToOne") && strcmp(v176, "TwoToTwo") && strcmp(v176, "OneToOne"))
      {
        v154 = DgnTextFile::getCurrentLine(v272);
        if (*(v154 + 8))
        {
          v157 = *v154;
        }

        else
        {
          v157 = &unk_2628991E4;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 586, "word/collmgr", 10, "%.500s", v155, v156, v157);
      }

      if (LineFieldUnsigned > 0xFF || v84 > 0xFF || v91 > 0xFF || v98 >= 0x100)
      {
        v177 = DgnTextFile::getCurrentLine(v272);
        if (*(v177 + 8))
        {
          v180 = *v177;
        }

        else
        {
          v180 = &unk_2628991E4;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 592, "word/collmgr", 10, "%.500s", v178, v179, v180);
      }

      if (v239)
      {
        v181 = __s1;
      }

      else
      {
        v181 = &unk_2628991E4;
      }

      if (!strcmp(v181, "OneToTwo"))
      {
        if (v263 || v261 || v259)
        {
          v186 = DgnTextFile::getCurrentLine(v272);
          if (*(v186 + 8))
          {
            v189 = *v186;
          }

          else
          {
            v189 = &unk_2628991E4;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 599, "word/collmgr", 10, "%.500s", v187, v188, v189);
        }

        v190 = v265;
        if (v265 == HIDWORD(v265))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v264, 1, 1);
          v190 = v265;
        }

        *(v264 + 4 * v190) = (v91 << 16) | (v98 << 24) | (v84 << 8) | LineFieldUnsigned;
        LODWORD(v265) = v265 + 1;
      }

      else if (!strcmp(v181, "TwoToOne"))
      {
        if (v261 | v259)
        {
          v207 = DgnTextFile::getCurrentLine(v272);
          if (*(v207 + 8))
          {
            v210 = *v207;
          }

          else
          {
            v210 = &unk_2628991E4;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 612, "word/collmgr", 10, "%.500s", v208, v209, v210);
        }

        v211 = v263;
        if (v263 == HIDWORD(v263))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v262, 1, 1);
          v211 = v263;
        }

        *(v262 + 4 * v211) = (v91 << 16) | (v98 << 24) | (v84 << 8) | LineFieldUnsigned;
        LODWORD(v263) = v263 + 1;
      }

      else if (!strcmp(v181, "TwoToTwo"))
      {
        if (v259)
        {
          v218 = DgnTextFile::getCurrentLine(v272);
          if (*(v218 + 8))
          {
            v221 = *v218;
          }

          else
          {
            v221 = &unk_2628991E4;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 624, "word/collmgr", 10, "%.500s", v219, v220, v221);
        }

        v222 = v261;
        if (v261 == HIDWORD(v261))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v260, 1, 1);
          v222 = v261;
        }

        *(v260 + 4 * v222) = (v91 << 16) | (v98 << 24) | (v84 << 8) | LineFieldUnsigned;
        LODWORD(v261) = v261 + 1;
      }

      else if (!strcmp(v181, "OneToOne"))
      {
        if (LineFieldUnsigned != v259 || v84 || v98)
        {
          v182 = DgnTextFile::getCurrentLine(v272);
          if (*(v182 + 8))
          {
            v185 = *v182;
          }

          else
          {
            v185 = &unk_2628991E4;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 638, "word/collmgr", 10, "%.500s", v183, v184, v185);
          LineFieldUnsigned = v259;
        }

        if (LineFieldUnsigned == HIDWORD(v259))
        {
          DgnPrimArray<char>::reallocElts(&v258, 1, 1);
          LineFieldUnsigned = v259;
        }

        *(v258 + LineFieldUnsigned) = v91;
        LODWORD(v259) = v259 + 1;
      }
    }

    else
    {
      if (strcmp(v126, "WideChar"))
      {
        goto LABEL_211;
      }

      if (!**this)
      {
        v133 = DgnTextFile::getCurrentLine(v272);
        if (*(v133 + 8))
        {
          v136 = *v133;
        }

        else
        {
          v136 = &unk_2628991E4;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 646, "word/collmgr", 10, "%.500s", v134, v135, v136);
      }

      if (v243 > 1 || v241 >= 2)
      {
        v137 = DgnTextFile::getCurrentLine(v272);
        if (*(v137 + 8))
        {
          v140 = *v137;
        }

        else
        {
          v140 = &unk_2628991E4;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 650, "word/collmgr", 10, "%.500s", v138, v139, v140);
      }

      if (v239 < 2 || (v191 = __s1, strcmp(__s1, "OneToTwo")) && strcmp(v191, "TwoToOne") && strcmp(v191, "TwoToTwo") && strcmp(v191, "OneToOne"))
      {
        v141 = DgnTextFile::getCurrentLine(v272);
        if (*(v141 + 8))
        {
          v144 = *v141;
        }

        else
        {
          v144 = &unk_2628991E4;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 657, "word/collmgr", 10, "%.500s", v142, v143, v144);
      }

      if (HIWORD(LineFieldUnsigned) || HIWORD(v84) || HIWORD(v91) || v98 >= 0x10000)
      {
        v192 = DgnTextFile::getCurrentLine(v272);
        if (*(v192 + 8))
        {
          v195 = *v192;
        }

        else
        {
          v195 = &unk_2628991E4;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 663, "word/collmgr", 10, "%.500s", v193, v194, v195);
      }

      if (v239)
      {
        v196 = __s1;
      }

      else
      {
        v196 = &unk_2628991E4;
      }

      if (!strcmp(v196, "OneToTwo"))
      {
        if (v255 || (v253 != 0) | v237 & 1)
        {
          v201 = DgnTextFile::getCurrentLine(v272);
          if (*(v201 + 8))
          {
            v204 = *v201;
          }

          else
          {
            v204 = &unk_2628991E4;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 670, "word/collmgr", 10, "%.500s", v202, v203, v204);
        }

        v205 = v257;
        if (v257 == HIDWORD(v257))
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(&v256, 1, 1);
          v205 = v257;
        }

        v206 = (v256 + 16 * v205);
        *v206 = LineFieldUnsigned;
        v206[1] = v84;
        v206[2] = v91;
        v206[3] = v98;
        LODWORD(v257) = v257 + 1;
      }

      else if (!strcmp(v196, "TwoToOne"))
      {
        if ((v253 != 0) | v237 & 1)
        {
          v212 = DgnTextFile::getCurrentLine(v272);
          if (*(v212 + 8))
          {
            v215 = *v212;
          }

          else
          {
            v215 = &unk_2628991E4;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 680, "word/collmgr", 10, "%.500s", v213, v214, v215);
        }

        v216 = v255;
        if (v255 == HIDWORD(v255))
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(&v254, 1, 1);
          v216 = v255;
        }

        v217 = (v254 + 16 * v216);
        *v217 = LineFieldUnsigned;
        v217[1] = v84;
        v217[2] = v91;
        v217[3] = v98;
        LODWORD(v255) = v255 + 1;
      }

      else
      {
        if (strcmp(v196, "TwoToTwo"))
        {
          if (strcmp(v196, "OneToOne"))
          {
            goto LABEL_211;
          }

          if ((v237 & (v236 == 0)) != 0 || LineFieldUnsigned < v236 || v84 || v98)
          {
            v197 = DgnTextFile::getCurrentLine(v272);
            if (*(v197 + 8))
            {
              v200 = *v197;
            }

            else
            {
              v200 = &unk_2628991E4;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 702, "word/collmgr", 10, "%.500s", v198, v199, v200);
          }

          v229 = v249;
          if (v249)
          {
            if (LineFieldUnsigned != v249 + HIDWORD(v237))
            {
              v230 = DWORD2(v250);
              if (DWORD2(v250) == HIDWORD(v250))
              {
                DgnPrimArray<unsigned int>::reallocElts(&v250, 1, 1);
                v230 = DWORD2(v250);
              }

              *(v250 + 4 * v230) = HIDWORD(v237);
              ++DWORD2(v250);
              v231 = DWORD2(v251);
              if (DWORD2(v251) == HIDWORD(v251))
              {
                DgnArray<DgnPrimArray<double>>::reallocElts(&v251, 1, 1);
                v231 = DWORD2(v251);
              }

              v232 = (v251 + 16 * v231);
              *v232 = 0;
              v232[1] = 0;
              DgnPrimArray<int>::copyArraySlice(v232, &v248, 0, v249);
              v229 = 0;
              ++DWORD2(v251);
              LODWORD(v249) = 0;
              goto LABEL_326;
            }
          }

          else
          {
LABEL_326:
            HIDWORD(v237) = LineFieldUnsigned;
          }

          if (v229 == HIDWORD(v249))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v248, 1, 1);
            v229 = v249;
          }

          *(v248 + 4 * v229) = v91;
          LODWORD(v249) = v249 + 1;
          v236 = LineFieldUnsigned + 1;
          LOBYTE(v237) = 1;
          goto LABEL_211;
        }

        if (v237)
        {
          v223 = DgnTextFile::getCurrentLine(v272);
          if (*(v223 + 8))
          {
            v226 = *v223;
          }

          else
          {
            v226 = &unk_2628991E4;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 689, "word/collmgr", 10, "%.500s", v224, v225, v226);
        }

        v227 = v253;
        if (v253 == HIDWORD(v253))
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(&v252, 1, 1);
          v227 = v253;
        }

        v228 = (v252 + 16 * v227);
        *v228 = LineFieldUnsigned;
        v228[1] = v84;
        v228[2] = v91;
        v228[3] = v98;
        LODWORD(v253) = v253 + 1;
      }
    }

LABEL_211:
    DgnString::operator=(&v269, &v246);
    DgnString::operator=(&v267, &v244);
    DgnString::operator=(v266, &__s1);
    DgnString::~DgnString(&__s1);
    DgnString::~DgnString(&v240);
    DgnString::~DgnString(&v242);
    DgnString::~DgnString(&v244);
    DgnString::~DgnString(&v246);
    v65 = 0;
  }

  if ((v65 & 1) == 0)
  {
    if (v249)
    {
      v233 = DWORD2(v250);
      if (DWORD2(v250) == HIDWORD(v250))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v250, 1, 1);
        v233 = DWORD2(v250);
      }

      *(v250 + 4 * v233) = HIDWORD(v237);
      ++DWORD2(v250);
      v234 = DWORD2(v251);
      if (DWORD2(v251) == HIDWORD(v251))
      {
        DgnArray<DgnPrimArray<double>>::reallocElts(&v251, 1, 1);
        v234 = DWORD2(v251);
      }

      v235 = (v251 + 16 * v234);
      *v235 = 0;
      v235[1] = 0;
      DgnPrimArray<int>::copyArraySlice(v235, &v248, 0, v249);
      ++DWORD2(v251);
      LODWORD(v249) = 0;
    }

    CollMgr::flushPendingCollation(this, &v269, &v267, &v264, &v262, &v260, &v258, &v256, &v254, &v252, &v250);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v248);
  Uns32OneToOneMap::~Uns32OneToOneMap(&v250);
  DgnIArray<Utterance *>::~DgnIArray(&v252);
  DgnIArray<Utterance *>::~DgnIArray(&v254);
  DgnIArray<Utterance *>::~DgnIArray(&v256);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v258);
  DgnIArray<Utterance *>::~DgnIArray(&v260);
  DgnIArray<Utterance *>::~DgnIArray(&v262);
  DgnIArray<Utterance *>::~DgnIArray(&v264);
  DgnString::~DgnString(v266);
  DgnString::~DgnString(&v267);
  DgnString::~DgnString(&v269);
  DgnIArray<Utterance *>::~DgnIArray(v271);
  DgnTextFileParser::~DgnTextFileParser(v272);
}

void sub_262856848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, char a33, uint64_t a34, char a35, uint64_t a36, char a37, uint64_t a38, char a39, uint64_t a40, char a41, uint64_t a42, char a43, uint64_t a44, char a45, uint64_t a46, char a47, uint64_t a48, char a49, uint64_t a50, char a51, uint64_t a52, char a53)
{
  DgnString::~DgnString(&a15);
  DgnString::~DgnString(&a17);
  DgnString::~DgnString(&a19);
  DgnString::~DgnString(&a21);
  DgnString::~DgnString(&a23);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a25);
  Uns32OneToOneMap::~Uns32OneToOneMap(&a27);
  DgnIArray<Utterance *>::~DgnIArray(&a31);
  DgnIArray<Utterance *>::~DgnIArray(&a33);
  DgnIArray<Utterance *>::~DgnIArray(&a35);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a37);
  DgnIArray<Utterance *>::~DgnIArray(&a39);
  DgnIArray<Utterance *>::~DgnIArray(&a41);
  DgnIArray<Utterance *>::~DgnIArray(&a43);
  DgnString::~DgnString(&a45);
  DgnString::~DgnString(&a47);
  DgnString::~DgnString(&a49);
  DgnIArray<Utterance *>::~DgnIArray(&a51);
  DgnTextFileParser::~DgnTextFileParser(&a53);
  _Unwind_Resume(a1);
}

uint64_t checkValidCollName(const char *a1)
{
  result = 0;
  v3 = *a1;
  if (*a1 && v3 != 95)
  {
    v4 = a1 + 1;
    while ((v3 & 0x80) == 0 && ((*(MEMORY[0x277D85DE0] + 4 * v3 + 60) & 0x500) != 0 || v3 == 95))
    {
      v5 = *v4++;
      v3 = v5;
      if (!v5)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t CollMgr::lookupCollation(CollMgr *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(this + 56))
  {
    return 0;
  }

  v10 = 0;
  while (1)
  {
    CollationName = CollMgr::getCollationName(this, *(*(this + 27) + 2 * v10), a3, a4, a5, a6, a7, a8);
    if (!strcmp(CollationName, a2))
    {
      break;
    }

    if (++v10 >= *(this + 56))
    {
      return 0;
    }
  }

  return *(*(this + 27) + 2 * v10);
}

uint64_t CollMgr::newTwoLevelCollation(CollMgr *this, char *a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  CollMgr::verifyCollId(this, a3, 0, 2u, a5, a6, a7, a8);
  CollMgr::verifyCollId(this, a4, 2, 2u, v12, v13, v14, v15);
  if ((checkValidCollName(a2) & 1) == 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1329, "word/collmgr", 24, "%.500s", v20, v21, a2);
  }

  if (CollMgr::lookupCollation(this, a2, v16, v17, v18, v19, v20, v21))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1331, "word/collmgr", 11, "%.500s", v22, v23, a2);
  }

  if (a4 == 0xFFFF)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1333, "word/collmgr", 23, "%s", v22, v23, &errStr_word_collmgr_E_CANT_USE_NOCOLLATION_AS_TWO_LEVEL_COMPONENT);
  }

  v24 = *(this + 50);
  if (v24)
  {
    v25 = v24 - 1;
    v26 = *(*(this + 24) + 2 * v25);
    *(this + 50) = v25;
  }

  else
  {
    v27 = *(this + 104);
    if (v27 >> 14 || (v27 & 0xFFFFBFFF) == 0xBFFF)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1342, "word/collmgr", 2, "%s", v22, v23, &errStr_word_collmgr_E_TOO_MANY);
    }

    v28 = *(this + 34);
    if (v28 == *(this + 35))
    {
      DgnPrimArray<unsigned int>::reallocElts(this + 128, 1, 1);
      v28 = *(this + 34);
    }

    *(this + 34) = v28 + 1;
    v29 = *(this + 38);
    if (v29 == *(this + 39))
    {
      DgnPrimArray<short>::reallocElts(this + 144, 1, 1);
      v29 = *(this + 38);
    }

    *(this + 38) = v29 + 1;
    v30 = *(this + 42);
    if (v30 == *(this + 43))
    {
      DgnPrimArray<short>::reallocElts(this + 160, 1, 1);
      v30 = *(this + 42);
    }

    *(this + 42) = v30 + 1;
    v31 = *(this + 46);
    if (v31 == *(this + 47))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 176, 1, 1);
      v31 = *(this + 46);
    }

    DgnString::DgnString((*(this + 22) + 16 * v31));
    ++*(this + 46);
    v26 = *(this + 104);
    *(this + 104) = v26 + 1;
  }

  *(*(this + 16) + 4 * v26) = 1;
  *(*(this + 18) + 2 * v26) = v9;
  *(*(this + 20) + 2 * v26) = a4;
  DgnString::operator=((*(this + 22) + 16 * v26), a2);
  v32 = *(this + 56);
  if (v32 == *(this + 57))
  {
    DgnPrimArray<short>::reallocElts(this + 216, 1, 1);
    v32 = *(this + 56);
  }

  result = v26 | 0x4000;
  *(*(this + 27) + 2 * v32) = v26 | 0x4000;
  *(this + 56) = v32 + 1;
  return result;
}

void CollMgr::loadCollMgr(CollMgr *this, char **a2, DFileChecksums *a3, int a4)
{
  if (DFile::subFileExists(a2, 0x5Bu))
  {
    if ((a4 & 1) == 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 764, "word/collmgr", 20, "%s", v8, v9, &unk_2628991E4);
    }

    CollMgr::loadCollMgrFromText(this, a2);
  }

  else if (DFile::subFileExists(a2, 0xEu))
  {
    if (a4)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 770, "word/collmgr", 22, "%s", v10, v11, &errStr_word_collmgr_E_LOADING_MIXED_TEXT_AND_BINARY_SUBFILES);
    }

    v18 = 0;
    v12 = OpenAndReadMrecHeader(a2, 0xEu, 1, "MRCOLL!?", &v18 + 1, &v18);
    if (*(a2 + 6))
    {
      v13 = a2[2];
    }

    else
    {
      v13 = &unk_2628991E4;
    }

    MrecHeaderCheckVersions(v13, "MRCOLL!?", HIDWORD(v18), v18, 0x12u, 9u);
    MrecHeaderCheckLatestVersionIfShared(a2, "MRCOLL!?", SHIDWORD(v18), v18, 18, 9, v14, v15);
    v17 = 0;
    readObject<unsigned int>(v12, this + 8, &v17);
    readObject<DgnPrimArray<unsigned char>>(v12, this + 24, &v17);
    readObject<DgnArray<Uns8SpecialMapItem>>(v12, this + 40, &v17);
    readObject<Uns32OneToOneMap>(v12, this + 56, &v17);
    readObject<DgnArray<Uns32SpecialMapItem>>(v12, this + 72, &v17);
    readObject<DgnString>(v12, this + 88, &v17);
    readObject<unsigned short>(v12, this + 104, &v17);
    readObject(v12, this + 60, &v17);
    readObject<unsigned int>(v12, this + 128, &v17);
    readObject<unsigned short>(v12, this + 144, &v17);
    readObject<unsigned short>(v12, this + 160, &v17);
    readObject<DgnString>(v12, this + 176, &v17);
    readObject<unsigned short>(v12, this + 192, &v17);
    readObject(v12, this + 104, &v17);
    readObject<unsigned short>(v12, this + 216, &v17);
    readObjectChecksumAndVerify(v12, v17);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0xEu, v17);
    DgnDelete<DgnStream>(v12);
  }
}

unint64_t readObject<DgnArray<Uns8SpecialMapItem>>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v17 = 0;
  result = readObject(a1, &v17, a3);
  v7 = v17;
  v8 = *(a2 + 12);
  if (v17 > v8)
  {
    result = DgnArray<DgnPrimArray<double>>::reallocElts(a2, v17 - v8, 0);
  }

  v9 = *(a2 + 8);
  if (v9 <= v7)
  {
    if (v9 < v7)
    {
      v12 = v7 - v9;
      v13 = 16 * v9;
      do
      {
        v14 = (*a2 + v13);
        *v14 = 0;
        v14[1] = 0;
        v13 += 16;
        --v12;
      }

      while (v12);
    }
  }

  else if (v9 > v7)
  {
    v10 = v9;
    v11 = 16 * v9 - 16;
    do
    {
      --v10;
      result = DgnIArray<Utterance *>::~DgnIArray(*a2 + v11);
      v11 -= 16;
    }

    while (v10 > v7);
  }

  *(a2 + 8) = v7;
  if (v7)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      result = readObject<Uns8SpecialMapItem>(a1, *a2 + v15, a3);
      ++v16;
      v15 += 16;
    }

    while (v16 < *(a2 + 8));
  }

  return result;
}

void readObject<Uns32OneToOneMap>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v17 = 0;
  readObject(a1, &v17, a3);
  v6 = v17;
  v7 = *(a2 + 12);
  if (v17 > v7)
  {
    DgnArray<PrefilterResultFrame>::reallocElts(a2, v17 - v7, 0);
  }

  v8 = *(a2 + 8);
  if (v8 <= v6)
  {
    if (v8 < v6)
    {
      v11 = v6 - v8;
      v12 = 32 * v8;
      do
      {
        v13 = (*a2 + v12);
        *v13 = 0uLL;
        v13[1] = 0uLL;
        v12 += 32;
        --v11;
      }

      while (v11);
    }
  }

  else if (v8 > v6)
  {
    v9 = v8;
    v10 = 32 * v8 - 32;
    do
    {
      --v9;
      Uns32OneToOneMap::~Uns32OneToOneMap((*a2 + v10));
      v10 -= 32;
    }

    while (v9 > v6);
  }

  *(a2 + 8) = v6;
  if (v6)
  {
    v14 = 0;
    v15 = 16;
    do
    {
      v16 = *a2 + v15;
      readObject<unsigned int>(a1, v16 - 16, a3);
      readObject<DgnPrimArray<unsigned int>>(a1, v16, a3);
      ++v14;
      v15 += 32;
    }

    while (v14 < *(a2 + 8));
  }
}

unint64_t readObject<DgnArray<Uns32SpecialMapItem>>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v17 = 0;
  result = readObject(a1, &v17, a3);
  v7 = v17;
  v8 = *(a2 + 12);
  if (v17 > v8)
  {
    result = DgnArray<DgnPrimArray<double>>::reallocElts(a2, v17 - v8, 0);
  }

  v9 = *(a2 + 8);
  if (v9 <= v7)
  {
    if (v9 < v7)
    {
      v12 = v7 - v9;
      v13 = 16 * v9;
      do
      {
        v14 = (*a2 + v13);
        *v14 = 0;
        v14[1] = 0;
        v13 += 16;
        --v12;
      }

      while (v12);
    }
  }

  else if (v9 > v7)
  {
    v10 = v9;
    v11 = 16 * v9 - 16;
    do
    {
      --v10;
      result = DgnIArray<Utterance *>::~DgnIArray(*a2 + v11);
      v11 -= 16;
    }

    while (v10 > v7);
  }

  *(a2 + 8) = v7;
  if (v7)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      result = readObject<Uns32SpecialMapItem>(a1, *a2 + v15, a3);
      ++v16;
      v15 += 16;
    }

    while (v16 < *(a2 + 8));
  }

  return result;
}

void CollMgr::saveCollMgrToText(CollMgr *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v93);
  DgnTextFileWriter::openDgnTextFileWriter(v93, a2, 0x5Bu, a3);
  v91 = 0;
  v92 = 0;
  DgnTextFile::legalDgnTextFileVersions(v93, sTCO_Versions, &v91, v6, v7, v8, v9, v10);
  DgnTextFileWriter::setFileType(v93, "Collation", (v91 + 8 * (v92 - 1)));
  v89 = 0;
  v90 = 0;
  v87 = 0;
  v88 = 0;
  DgnString::DgnString(v86, "CollName");
  v11 = v88;
  if (v88 == HIDWORD(v88))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v87, 1, 1);
    v11 = v88;
  }

  DgnString::DgnString((v87 + 16 * v11), v86);
  LODWORD(v88) = v88 + 1;
  DgnString::~DgnString(v86);
  v12 = v90;
  if (v90 == HIDWORD(v90))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v89, 1, 1);
    v12 = v90;
  }

  *(v89 + 4 * v12) = 0;
  LODWORD(v90) = v12 + 1;
  DgnString::DgnString(v86, "CollType");
  v13 = v88;
  if (v88 == HIDWORD(v88))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v87, 1, 1);
    v13 = v88;
  }

  DgnString::DgnString((v87 + 16 * v13), v86);
  LODWORD(v88) = v88 + 1;
  DgnString::~DgnString(v86);
  v14 = v90;
  if (v90 == HIDWORD(v90))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v89, 1, 1);
    v14 = v90;
  }

  *(v89 + 4 * v14) = 0;
  LODWORD(v90) = v14 + 1;
  DgnString::DgnString(v86, "ComponentCollName1");
  v15 = v88;
  if (v88 == HIDWORD(v88))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v87, 1, 1);
    v15 = v88;
  }

  DgnString::DgnString((v87 + 16 * v15), v86);
  LODWORD(v88) = v88 + 1;
  DgnString::~DgnString(v86);
  v16 = v90;
  if (v90 == HIDWORD(v90))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v89, 1, 1);
    v16 = v90;
  }

  *(v89 + 4 * v16) = 0;
  LODWORD(v90) = v16 + 1;
  DgnString::DgnString(v86, "ComponentCollName2");
  v17 = v88;
  if (v88 == HIDWORD(v88))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v87, 1, 1);
    v17 = v88;
  }

  DgnString::DgnString((v87 + 16 * v17), v86);
  LODWORD(v88) = v88 + 1;
  DgnString::~DgnString(v86);
  v18 = v90;
  if (v90 == HIDWORD(v90))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v89, 1, 1);
    v18 = v90;
  }

  *(v89 + 4 * v18) = 0;
  LODWORD(v90) = v18 + 1;
  DgnString::DgnString(v86, "MapType");
  v19 = v88;
  if (v88 == HIDWORD(v88))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v87, 1, 1);
    v19 = v88;
  }

  DgnString::DgnString((v87 + 16 * v19), v86);
  LODWORD(v88) = v88 + 1;
  DgnString::~DgnString(v86);
  v20 = v90;
  if (v90 == HIDWORD(v90))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v89, 1, 1);
    v20 = v90;
  }

  *(v89 + 4 * v20) = 0;
  LODWORD(v90) = v20 + 1;
  DgnString::DgnString(v86, "MapFrom1");
  v21 = v88;
  if (v88 == HIDWORD(v88))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v87, 1, 1);
    v21 = v88;
  }

  DgnString::DgnString((v87 + 16 * v21), v86);
  LODWORD(v88) = v88 + 1;
  DgnString::~DgnString(v86);
  v22 = v90;
  if (v90 == HIDWORD(v90))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v89, 1, 1);
    v22 = v90;
  }

  *(v89 + 4 * v22) = 3;
  LODWORD(v90) = v22 + 1;
  DgnString::DgnString(v86, "MapFrom2");
  v23 = v88;
  if (v88 == HIDWORD(v88))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v87, 1, 1);
    v23 = v88;
  }

  DgnString::DgnString((v87 + 16 * v23), v86);
  LODWORD(v88) = v88 + 1;
  DgnString::~DgnString(v86);
  v24 = v90;
  if (v90 == HIDWORD(v90))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v89, 1, 1);
    v24 = v90;
  }

  *(v89 + 4 * v24) = 3;
  LODWORD(v90) = v24 + 1;
  DgnString::DgnString(v86, "MapTo1");
  v25 = v88;
  if (v88 == HIDWORD(v88))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v87, 1, 1);
    v25 = v88;
  }

  DgnString::DgnString((v87 + 16 * v25), v86);
  LODWORD(v88) = v88 + 1;
  DgnString::~DgnString(v86);
  v26 = v90;
  if (v90 == HIDWORD(v90))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v89, 1, 1);
    v26 = v90;
  }

  *(v89 + 4 * v26) = 3;
  LODWORD(v90) = v26 + 1;
  DgnString::DgnString(v86, "MapTo2");
  v27 = v88;
  if (v88 == HIDWORD(v88))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v87, 1, 1);
    v27 = v88;
  }

  DgnString::DgnString((v87 + 16 * v27), v86);
  LODWORD(v88) = v88 + 1;
  DgnString::~DgnString(v86);
  v28 = v90;
  if (v90 == HIDWORD(v90))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v89, 1, 1);
    v28 = v90;
  }

  *(v89 + 4 * v28) = 3;
  LODWORD(v90) = v28 + 1;
  DgnTextFileWriter::setLineFieldFormat(v93, &v89, &v87);
  v35 = *(this + 56);
  if (**this)
  {
    if (!v35)
    {
      goto LABEL_81;
    }

    v36 = 0;
    while (1)
    {
      v37 = *(*(this + 27) + 2 * v36);
      if ((v37 & 0x4000) == 0)
      {
        if (*(*(this + 9) + 16 * v37 + 8))
        {
          v38 = 0;
          v39 = 0;
          while (1)
          {
            CollationName = CollMgr::getCollationName(this, v37, v29, v30, v31, v32, v33, v34);
            DgnTextFileWriter::setLineFieldValue(v93, 0, CollationName);
            DgnTextFileWriter::setLineFieldValue(v93, 1u, "WideChar");
            DgnTextFileWriter::setLineFieldValue(v93, 2u, &unk_2628991E4);
            DgnTextFileWriter::setLineFieldValue(v93, 3u, &unk_2628991E4);
            v41 = *(*(this + 9) + 16 * v37) + v38;
            v42 = *(v41 + 4);
            v43 = *(v41 + 12);
            if (v42)
            {
              break;
            }

            v44 = "OneToTwo";
            if (v43)
            {
              goto LABEL_48;
            }

LABEL_49:
            DgnTextFileWriter::setLineFieldUnsignedValue(v93, 5u, *(*(*(this + 9) + 16 * v37) + v38));
            DgnTextFileWriter::setLineFieldUnsignedValue(v93, 6u, *(*(*(this + 9) + 16 * v37) + v38 + 4));
            DgnTextFileWriter::setLineFieldUnsignedValue(v93, 7u, *(*(*(this + 9) + 16 * v37) + v38 + 8));
            DgnTextFileWriter::setLineFieldUnsignedValue(v93, 8u, *(*(*(this + 9) + 16 * v37) + v38 + 12));
            DgnTextFileWriter::writeNextLine(v93);
            ++v39;
            v38 += 16;
            if (v39 >= *(*(this + 9) + 16 * v37 + 8))
            {
              goto LABEL_50;
            }
          }

          if (v43)
          {
            v44 = "TwoToTwo";
          }

          else
          {
            v44 = "TwoToOne";
          }

LABEL_48:
          DgnTextFileWriter::setLineFieldValue(v93, 4u, v44);
          goto LABEL_49;
        }

LABEL_50:
        v45 = *(this + 7);
        if (*(v45 + 32 * v37 + 8))
        {
          v46 = 0;
          do
          {
            if (*(*(v45 + 32 * v37 + 16) + 16 * v46 + 8))
            {
              v47 = 0;
              do
              {
                v48 = CollMgr::getCollationName(this, v37, v29, v30, v31, v32, v33, v34);
                DgnTextFileWriter::setLineFieldValue(v93, 0, v48);
                DgnTextFileWriter::setLineFieldValue(v93, 1u, "WideChar");
                DgnTextFileWriter::setLineFieldValue(v93, 2u, &unk_2628991E4);
                DgnTextFileWriter::setLineFieldValue(v93, 3u, &unk_2628991E4);
                DgnTextFileWriter::setLineFieldValue(v93, 4u, "OneToOne");
                DgnTextFileWriter::setLineFieldUnsignedValue(v93, 5u, v47 + *(*(*(this + 7) + 32 * v37) + 4 * v46));
                DgnTextFileWriter::setLineFieldUnsignedValue(v93, 6u, 0);
                DgnTextFileWriter::setLineFieldUnsignedValue(v93, 7u, *(*(*(*(this + 7) + 32 * v37 + 16) + 16 * v46) + 4 * v47));
                DgnTextFileWriter::setLineFieldUnsignedValue(v93, 8u, 0);
                DgnTextFileWriter::writeNextLine(v93);
                ++v47;
                v45 = *(this + 7);
              }

              while (v47 < *(*(v45 + 32 * v37 + 16) + 16 * v46 + 8));
            }

            ++v46;
          }

          while (v46 < *(v45 + 32 * v37 + 8));
        }
      }

      ++v36;
      v49 = *(this + 56);
      if (v36 >= v49)
      {
        goto LABEL_74;
      }
    }
  }

  if (!v35)
  {
    goto LABEL_81;
  }

  v50 = 0;
  do
  {
    v51 = *(*(this + 27) + 2 * v50);
    if ((v51 & 0x4000) == 0)
    {
      if (*(*(this + 5) + 16 * v51 + 8))
      {
        v52 = 0;
        v53 = 0;
        while (1)
        {
          v54 = CollMgr::getCollationName(this, v51, v29, v30, v31, v32, v33, v34);
          DgnTextFileWriter::setLineFieldValue(v93, 0, v54);
          DgnTextFileWriter::setLineFieldValue(v93, 1u, "Char");
          DgnTextFileWriter::setLineFieldValue(v93, 2u, &unk_2628991E4);
          DgnTextFileWriter::setLineFieldValue(v93, 3u, &unk_2628991E4);
          v55 = *(*(this + 5) + 16 * v51) + v52;
          v56 = *(v55 + 1);
          v57 = *(v55 + 3);
          if (v56)
          {
            break;
          }

          v58 = "OneToTwo";
          if (v57)
          {
            goto LABEL_68;
          }

LABEL_69:
          DgnTextFileWriter::setLineFieldUnsignedValue(v93, 5u, *(*(*(this + 5) + 16 * v51) + v52));
          DgnTextFileWriter::setLineFieldUnsignedValue(v93, 6u, *(*(*(this + 5) + 16 * v51) + v52 + 1));
          DgnTextFileWriter::setLineFieldUnsignedValue(v93, 7u, *(*(*(this + 5) + 16 * v51) + v52 + 2));
          DgnTextFileWriter::setLineFieldUnsignedValue(v93, 8u, *(*(*(this + 5) + 16 * v51) + v52 + 3));
          DgnTextFileWriter::writeNextLine(v93);
          ++v53;
          v52 += 4;
          if (v53 >= *(*(this + 5) + 16 * v51 + 8))
          {
            goto LABEL_70;
          }
        }

        if (v57)
        {
          v58 = "TwoToTwo";
        }

        else
        {
          v58 = "TwoToOne";
        }

LABEL_68:
        DgnTextFileWriter::setLineFieldValue(v93, 4u, v58);
        goto LABEL_69;
      }

LABEL_70:
      if (*(*(this + 3) + 16 * v51 + 8))
      {
        v59 = 0;
        do
        {
          v60 = CollMgr::getCollationName(this, v51, v29, v30, v31, v32, v33, v34);
          DgnTextFileWriter::setLineFieldValue(v93, 0, v60);
          DgnTextFileWriter::setLineFieldValue(v93, 1u, "Char");
          DgnTextFileWriter::setLineFieldValue(v93, 2u, &unk_2628991E4);
          DgnTextFileWriter::setLineFieldValue(v93, 3u, &unk_2628991E4);
          DgnTextFileWriter::setLineFieldValue(v93, 4u, "OneToOne");
          DgnTextFileWriter::setLineFieldUnsignedValue(v93, 5u, v59);
          DgnTextFileWriter::setLineFieldUnsignedValue(v93, 6u, 0);
          DgnTextFileWriter::setLineFieldUnsignedValue(v93, 7u, *(*(*(this + 3) + 16 * v51) + v59));
          DgnTextFileWriter::setLineFieldUnsignedValue(v93, 8u, 0);
          DgnTextFileWriter::writeNextLine(v93);
          ++v59;
        }

        while (v59 < *(*(this + 3) + 16 * v51 + 8));
      }
    }

    ++v50;
    v49 = *(this + 56);
  }

  while (v50 < v49);
LABEL_74:
  if (v49)
  {
    for (i = 0; i < v49; ++i)
    {
      v62 = *(this + 27);
      v63 = *(v62 + 2 * i);
      if ((v63 & 0x4000) != 0)
      {
        CollMgr::verifyCollId(this, *(v62 + 2 * i), 0, 3u, v31, v32, v33, v34);
        v64 = *(*(this + 18) + 2 * (v63 & 0xBFFF));
        v65 = *(*(this + 20) + 2 * (v63 & 0xBFFF));
        v72 = CollMgr::getCollationName(this, v63, v66, v67, v68, v69, v70, v71);
        DgnTextFileWriter::setLineFieldValue(v93, 0, v72);
        DgnTextFileWriter::setLineFieldValue(v93, 1u, "TwoLevel");
        v79 = CollMgr::getCollationName(this, v64, v73, v74, v75, v76, v77, v78);
        DgnTextFileWriter::setLineFieldValue(v93, 2u, v79);
        v85 = "_IDENTITY";
        if (v65 != 65534)
        {
          v85 = CollMgr::getCollationName(this, v65, "_IDENTITY", v80, v81, v82, v83, v84);
        }

        DgnTextFileWriter::setLineFieldValue(v93, 3u, v85);
        DgnTextFileWriter::setLineFieldValue(v93, 4u, &unk_2628991E4);
        DgnTextFileWriter::setLineFieldUnsignedValue(v93, 5u, 0);
        DgnTextFileWriter::setLineFieldUnsignedValue(v93, 6u, 0);
        DgnTextFileWriter::setLineFieldUnsignedValue(v93, 7u, 0);
        DgnTextFileWriter::setLineFieldUnsignedValue(v93, 8u, 0);
        DgnTextFileWriter::writeNextLine(v93);
        v49 = *(this + 56);
      }
    }
  }

LABEL_81:
  DgnArray<DgnString>::releaseAll(&v87);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v89);
  DgnIArray<Utterance *>::~DgnIArray(&v91);
  DgnTextFileWriter::~DgnTextFileWriter(v93);
}

void sub_262857EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  va_copy(va3, va2);
  v10 = va_arg(va3, void);
  v12 = va_arg(va3, void);
  DgnArray<DgnString>::releaseAll(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnIArray<Utterance *>::~DgnIArray(va2);
  DgnTextFileWriter::~DgnTextFileWriter(va3);
  _Unwind_Resume(a1);
}

void *CollMgr::getCollationName(CollMgr *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CollMgr::verifyCollId(this, a2, 0, 4u, a5, a6, a7, a8);
  if ((a2 & 0x4000) != 0)
  {
    v10 = (*(this + 22) + 16 * (a2 & 0xBFFF));
  }

  else
  {
    v10 = (*(this + 11) + 16 * a2);
  }

  if (v10[2])
  {
    return *v10;
  }

  else
  {
    return &unk_2628991E4;
  }
}

void CollMgr::saveCollMgr(CollMgr *this, DFile *a2, DFileChecksums *a3, int a4, int a5)
{
  if (a4)
  {

    CollMgr::saveCollMgrToText(this, a2, a5);
  }

  else if (*(this + 60) != 1 || *(this + 104))
  {
    v8 = OpenAndWriteMrecHeader(a2, 0xEu, a5, "MRCOLL!?", 18, 9);
    v10 = 0;
    writeObject<unsigned int>(v8, this + 8, &v10);
    writeObject<DgnPrimArray<unsigned char>>(v8, this + 24, &v10);
    writeObject<DgnArray<Uns8SpecialMapItem>>(v8, this + 40, &v10);
    writeObject<Uns32OneToOneMap>(v8, this + 56, &v10);
    writeObject<DgnArray<Uns32SpecialMapItem>>(v8, this + 72, &v10);
    writeObject<DgnString>(v8, this + 88, &v10);
    writeObject<unsigned short>(v8, this + 104, &v10);
    writeObject(v8, this + 60, &v10);
    writeObject<unsigned int>(v8, this + 128, &v10);
    writeObject<unsigned short>(v8, this + 144, &v10);
    writeObject<unsigned short>(v8, this + 160, &v10);
    writeObject<DgnString>(v8, this + 176, &v10);
    writeObject<unsigned short>(v8, this + 192, &v10);
    writeObject(v8, this + 104, &v10);
    writeObject<unsigned short>(v8, this + 216, &v10);
    writeObjectChecksum(v8, &v10);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0xEu, v10);
    DgnDelete<DgnStream>(v8);
  }
}

uint64_t writeObject<DgnArray<Uns8SpecialMapItem>>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = writeObject<Uns8SpecialMapItem>(a1, *a2 + v7, a3);
      ++v8;
      v7 += 16;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

uint64_t writeObject<Uns32OneToOneMap>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v10 = *(a2 + 8);
  result = writeObject(a1, &v10, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 16;
    do
    {
      v9 = *a2 + v8;
      writeObject<unsigned int>(a1, v9 - 16, a3);
      result = writeObject<DgnPrimArray<unsigned int>>(a1, v9, a3);
      ++v7;
      v8 += 32;
    }

    while (v7 < *(a2 + 8));
  }

  return result;
}

uint64_t writeObject<DgnArray<Uns32SpecialMapItem>>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = writeObject<Uns32SpecialMapItem>(a1, *a2 + v7, a3);
      ++v8;
      v7 += 16;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

void CollMgr::printSize(CollMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1010, v223);
  if (DWORD2(v223[0]))
  {
    v16 = *&v223[0];
  }

  else
  {
    v16 = &unk_2628991E4;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_2628991E4, a3, &unk_2628991E4, v16);
  DgnString::~DgnString(v223);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_2628991E4);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v21 = 4;
  }

  else
  {
    v21 = 8;
  }

  v22 = (a3 + 1);
  v23 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1011, v223);
  if (DWORD2(v223[0]))
  {
    v28 = *&v223[0];
  }

  else
  {
    v28 = &unk_2628991E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, v25, v26, v27, (a3 + 1), &unk_2628991E4, (34 - a3), (34 - a3), v28, v21, v21, 0);
  v222 = a3;
  DgnString::~DgnString(v223);
  *a4 += v21;
  *a5 += v21;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v29 = 12;
  }

  else
  {
    v29 = 16;
  }

  v30 = *(this + 4);
  v31 = *(this + 5);
  if (v31 >= v30)
  {
    v32 = 0;
    if (v30 > 0)
    {
      v29 += 4 * (v30 - 1) + 4;
    }

    v33 = v29 + 4 * (v31 - v30);
  }

  else
  {
    v32 = 4 * v30;
    v33 = v29;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1013, v223);
  if (DWORD2(v223[0]))
  {
    v38 = *&v223[0];
  }

  else
  {
    v38 = &unk_2628991E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, v35, v36, v37, v22, &unk_2628991E4, v23, v23, v38, v33, v29, v32);
  DgnString::~DgnString(v223);
  *a4 += v33;
  *a5 += v29;
  *a6 += v32;
  v39 = sizeObject<DgnPrimArray<unsigned char>>(this + 24, 0);
  v40 = sizeObject<DgnPrimArray<unsigned char>>(this + 24, 1);
  v223[0] = 0uLL;
  DgnPrimArray<unsigned int>::~DgnPrimArray(v223);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1013, v223);
  if (DWORD2(v223[0]))
  {
    v45 = *&v223[0];
  }

  else
  {
    v45 = &unk_2628991E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v41, v42, v43, v44, v22, &unk_2628991E4, v23, v23, v45, v39, v40, 0);
  DgnString::~DgnString(v223);
  *a4 += v39;
  *a5 += v40;
  v46 = sizeObject<DgnArray<PicNode>>(this + 40, 0);
  v47 = sizeObject<DgnArray<PicNode>>(this + 40, 1);
  v223[0] = 0uLL;
  DgnIArray<Utterance *>::~DgnIArray(v223);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1013, v223);
  if (DWORD2(v223[0]))
  {
    v52 = *&v223[0];
  }

  else
  {
    v52 = &unk_2628991E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v48, v49, v50, v51, v22, &unk_2628991E4, v23, v23, v52, v46, v47, 0);
  DgnString::~DgnString(v223);
  *a4 += v46;
  *a5 += v47;
  v53 = sizeObject<Uns32OneToOneMap>(this + 56, 0);
  v54 = sizeObject<Uns32OneToOneMap>(this + 56, 1);
  memset(v223, 0, sizeof(v223));
  v224[0] = 0;
  v224[1] = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(v224);
  Uns32OneToOneMap::~Uns32OneToOneMap(v223);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1013, v223);
  if (DWORD2(v223[0]))
  {
    v59 = *&v223[0];
  }

  else
  {
    v59 = &unk_2628991E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v55, v56, v57, v58, v22, &unk_2628991E4, v23, v23, v59, v53, v54, 0);
  DgnString::~DgnString(v223);
  *a4 += v53;
  *a5 += v54;
  v60 = sizeObject<DgnArray<Uns32SpecialMapItem>>(this + 72, 0);
  v61 = sizeObject<DgnArray<Uns32SpecialMapItem>>(this + 72, 1);
  v223[0] = 0uLL;
  DgnIArray<Utterance *>::~DgnIArray(v223);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1013, v223);
  if (DWORD2(v223[0]))
  {
    v66 = *&v223[0];
  }

  else
  {
    v66 = &unk_2628991E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v62, v63, v64, v65, v22, &unk_2628991E4, v23, v23, v66, v60, v61, 0);
  DgnString::~DgnString(v223);
  *a4 += v60;
  *a5 += v61;
  v67 = sizeObject<DgnString>(this + 88, 0);
  v68 = sizeObject<DgnString>(this + 88, 1);
  v69 = sizeObject<DgnString>(this + 88, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1013, v223);
  if (DWORD2(v223[0]))
  {
    v74 = *&v223[0];
  }

  else
  {
    v74 = &unk_2628991E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v70, v71, v72, v73, v22, &unk_2628991E4, v23, v23, v74, v67, v68, v69);
  DgnString::~DgnString(v223);
  *a4 += v67;
  *a5 += v68;
  *a6 += v69;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v75 = 12;
  }

  else
  {
    v75 = 16;
  }

  v76 = *(this + 28);
  v77 = *(this + 29);
  if (v77 >= v76)
  {
    v78 = 0;
    if (v76 > 0)
    {
      v75 += 2 * (v76 - 1) + 2;
    }

    v79 = v75 + 2 * (v77 - v76);
  }

  else
  {
    v78 = 2 * v76;
    v79 = v75;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1013, v223);
  if (DWORD2(v223[0]))
  {
    v84 = *&v223[0];
  }

  else
  {
    v84 = &unk_2628991E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v80, v81, v82, v83, v22, &unk_2628991E4, v23, v23, v84, v79, v75, v78);
  DgnString::~DgnString(v223);
  *a4 += v79;
  *a5 += v75;
  *a6 += v78;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1013, v223);
  if (DWORD2(v223[0]))
  {
    v89 = *&v223[0];
  }

  else
  {
    v89 = &unk_2628991E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v85, v86, v87, v88, v22, &unk_2628991E4, v23, v23, v89, 2, 2, 0);
  DgnString::~DgnString(v223);
  *a4 += 2;
  *a5 += 2;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v90 = 12;
  }

  else
  {
    v90 = 16;
  }

  v91 = *(this + 34);
  v92 = *(this + 35);
  if (v92 >= v91)
  {
    v93 = 0;
    if (v91 > 0)
    {
      v90 += 4 * (v91 - 1) + 4;
    }

    v94 = v90 + 4 * (v92 - v91);
  }

  else
  {
    v93 = 4 * v91;
    v94 = v90;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1013, v223);
  if (DWORD2(v223[0]))
  {
    v99 = *&v223[0];
  }

  else
  {
    v99 = &unk_2628991E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v95, v96, v97, v98, v22, &unk_2628991E4, v23, v23, v99, v94, v90, v93);
  DgnString::~DgnString(v223);
  *a4 += v94;
  *a5 += v90;
  *a6 += v93;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v100 = 12;
  }

  else
  {
    v100 = 16;
  }

  v101 = *(this + 38);
  v102 = *(this + 39);
  if (v102 >= v101)
  {
    v103 = 0;
    if (v101 > 0)
    {
      v100 += 2 * (v101 - 1) + 2;
    }

    v104 = v100 + 2 * (v102 - v101);
  }

  else
  {
    v103 = 2 * v101;
    v104 = v100;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1013, v223);
  if (DWORD2(v223[0]))
  {
    v109 = *&v223[0];
  }

  else
  {
    v109 = &unk_2628991E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v105, v106, v107, v108, v22, &unk_2628991E4, v23, v23, v109, v104, v100, v103);
  DgnString::~DgnString(v223);
  *a4 += v104;
  *a5 += v100;
  *a6 += v103;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v110 = 12;
  }

  else
  {
    v110 = 16;
  }

  v111 = *(this + 42);
  v112 = *(this + 43);
  if (v112 >= v111)
  {
    v113 = 0;
    if (v111 > 0)
    {
      v110 += 2 * (v111 - 1) + 2;
    }

    v114 = v110 + 2 * (v112 - v111);
  }

  else
  {
    v113 = 2 * v111;
    v114 = v110;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1013, v223);
  if (DWORD2(v223[0]))
  {
    v119 = *&v223[0];
  }

  else
  {
    v119 = &unk_2628991E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v115, v116, v117, v118, v22, &unk_2628991E4, v23, v23, v119, v114, v110, v113);
  DgnString::~DgnString(v223);
  *a4 += v114;
  *a5 += v110;
  *a6 += v113;
  v120 = sizeObject<DgnString>(this + 176, 0);
  v121 = sizeObject<DgnString>(this + 176, 1);
  v122 = sizeObject<DgnString>(this + 176, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1013, v223);
  if (DWORD2(v223[0]))
  {
    v127 = *&v223[0];
  }

  else
  {
    v127 = &unk_2628991E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v123, v124, v125, v126, v22, &unk_2628991E4, v23, v23, v127, v120, v121, v122);
  DgnString::~DgnString(v223);
  *a4 += v120;
  *a5 += v121;
  *a6 += v122;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v128 = 12;
  }

  else
  {
    v128 = 16;
  }

  v129 = *(this + 50);
  v130 = *(this + 51);
  if (v130 >= v129)
  {
    v131 = 0;
    if (v129 > 0)
    {
      v128 += 2 * (v129 - 1) + 2;
    }

    v132 = v128 + 2 * (v130 - v129);
  }

  else
  {
    v131 = 2 * v129;
    v132 = v128;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1013, v223);
  if (DWORD2(v223[0]))
  {
    v137 = *&v223[0];
  }

  else
  {
    v137 = &unk_2628991E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v133, v134, v135, v136, v22, &unk_2628991E4, v23, v23, v137, v132, v128, v131);
  DgnString::~DgnString(v223);
  *a4 += v132;
  *a5 += v128;
  *a6 += v131;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1013, v223);
  if (DWORD2(v223[0]))
  {
    v142 = *&v223[0];
  }

  else
  {
    v142 = &unk_2628991E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v138, v139, v140, v141, v22, &unk_2628991E4, v23, v23, v142, 2, 2, 0);
  DgnString::~DgnString(v223);
  *a4 += 2;
  *a5 += 2;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v143 = 12;
  }

  else
  {
    v143 = 16;
  }

  v144 = *(this + 56);
  v145 = *(this + 57);
  if (v145 >= v144)
  {
    v146 = 0;
    if (v144 > 0)
    {
      v143 += 2 * (v144 - 1) + 2;
    }

    v147 = v143 + 2 * (v145 - v144);
  }

  else
  {
    v146 = 2 * v144;
    v147 = v143;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1013, v223);
  if (DWORD2(v223[0]))
  {
    v152 = *&v223[0];
  }

  else
  {
    v152 = &unk_2628991E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v148, v149, v150, v151, v22, &unk_2628991E4, v23, v23, v152, v147, v143, v146);
  DgnString::~DgnString(v223);
  *a4 += v147;
  *a5 += v143;
  *a6 += v146;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v153 = 12;
  }

  else
  {
    v153 = 16;
  }

  v154 = *(this + 60);
  v155 = *(this + 61);
  v156 = v155 >= v154;
  v157 = v155 - v154;
  if (v156)
  {
    if (v154 > 0)
    {
      v158 = (v154 - 1) + v153 + 1;
    }

    else
    {
      v158 = v153;
    }

    v153 = v158 + v157;
    v154 = 0;
  }

  else
  {
    v158 = v153;
  }

  v159 = v154;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1014, v223);
  if (DWORD2(v223[0]))
  {
    v164 = *&v223[0];
  }

  else
  {
    v164 = &unk_2628991E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v160, v161, v162, v163, v22, &unk_2628991E4, v23, v23, v164, v153, v158, v159);
  DgnString::~DgnString(v223);
  *a4 += v153;
  *a5 += v158;
  *a6 += v159;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v165 = 12;
  }

  else
  {
    v165 = 16;
  }

  v166 = *(this + 64);
  v167 = *(this + 65);
  v156 = v167 >= v166;
  v168 = v167 - v166;
  if (v156)
  {
    if (v166 > 0)
    {
      v169 = (v166 - 1) + v165 + 1;
    }

    else
    {
      v169 = v165;
    }

    v165 = v169 + v168;
    v166 = 0;
  }

  else
  {
    v169 = v165;
  }

  v170 = v166;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1015, v223);
  if (DWORD2(v223[0]))
  {
    v175 = *&v223[0];
  }

  else
  {
    v175 = &unk_2628991E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v171, v172, v173, v174, v22, &unk_2628991E4, v23, v23, v175, v165, v169, v170);
  DgnString::~DgnString(v223);
  *a4 += v165;
  *a5 += v169;
  *a6 += v170;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v176 = 12;
  }

  else
  {
    v176 = 16;
  }

  v177 = *(this + 68);
  v178 = *(this + 69);
  if (v178 >= v177)
  {
    v179 = 0;
    if (v177 > 0)
    {
      v176 += 4 * (v177 - 1) + 4;
    }

    v180 = v176 + 4 * (v178 - v177);
  }

  else
  {
    v179 = 4 * v177;
    v180 = v176;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1016, v223);
  if (DWORD2(v223[0]))
  {
    v185 = *&v223[0];
  }

  else
  {
    v185 = &unk_2628991E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v181, v182, v183, v184, v22, &unk_2628991E4, v23, v23, v185, v180, v176, v179);
  DgnString::~DgnString(v223);
  *a4 += v180;
  *a5 += v176;
  *a6 += v179;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v186 = 12;
  }

  else
  {
    v186 = 16;
  }

  v187 = *(this + 72);
  v188 = *(this + 73);
  if (v188 >= v187)
  {
    v189 = 0;
    if (v187 > 0)
    {
      v186 += 4 * (v187 - 1) + 4;
    }

    v190 = v186 + 4 * (v188 - v187);
  }

  else
  {
    v189 = 4 * v187;
    v190 = v186;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1017, v223);
  if (DWORD2(v223[0]))
  {
    v195 = *&v223[0];
  }

  else
  {
    v195 = &unk_2628991E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v191, v192, v193, v194, v22, &unk_2628991E4, v23, v23, v195, v190, v186, v189);
  DgnString::~DgnString(v223);
  *a4 += v190;
  *a5 += v186;
  *a6 += v189;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v196 = 12;
  }

  else
  {
    v196 = 16;
  }

  v197 = *(this + 76);
  v198 = *(this + 77);
  if (v198 >= v197)
  {
    v199 = 0;
    if (v197 > 0)
    {
      v196 += 4 * (v197 - 1) + 4;
    }

    v200 = v196 + 4 * (v198 - v197);
  }

  else
  {
    v199 = 4 * v197;
    v200 = v196;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1018, v223);
  if (DWORD2(v223[0]))
  {
    v205 = *&v223[0];
  }

  else
  {
    v205 = &unk_2628991E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v201, v202, v203, v204, v22, &unk_2628991E4, v23, v23, v205, v200, v196, v199);
  DgnString::~DgnString(v223);
  *a4 += v200;
  *a5 += v196;
  *a6 += v199;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v206 = 12;
  }

  else
  {
    v206 = 16;
  }

  v207 = *(this + 80);
  v208 = *(this + 81);
  if (v208 >= v207)
  {
    v209 = 0;
    if (v207 > 0)
    {
      v206 += 4 * (v207 - 1) + 4;
    }

    v210 = v206 + 4 * (v208 - v207);
  }

  else
  {
    v209 = 4 * v207;
    v210 = v206;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1019, v223);
  if (DWORD2(v223[0]))
  {
    v215 = *&v223[0];
  }

  else
  {
    v215 = &unk_2628991E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v211, v212, v213, v214, v22, &unk_2628991E4, v23, v23, v215, v210, v206, v209);
  DgnString::~DgnString(v223);
  *a4 += v210;
  *a5 += v206;
  *a6 += v209;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1020, v223);
  if (DWORD2(v223[0]))
  {
    v220 = *&v223[0];
  }

  else
  {
    v220 = &unk_2628991E4;
  }

  v221 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v216, v217, v218, v219, v222, &unk_2628991E4, (35 - v222), (35 - v222), v220, *a4, *a5, *a6);
  DgnString::~DgnString(v223);
}

void sub_26285933C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<Uns32OneToOneMap>(uint64_t a1, int a2)
{
  memset(v13, 0, sizeof(v13));
  v4 = gShadowDiagnosticShowIdealizedObjectSizes;
  v14[0] = 0;
  v14[1] = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(v14);
  v5 = 0;
  if (v4)
  {
    v6 = 24;
  }

  else
  {
    v6 = 32;
  }

  if (a2 != 3)
  {
    v5 = (gShadowDiagnosticShowIdealizedObjectSizes & 1) != 0 ? 12 : 16;
    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v7 = *(a1 + 8);
      if (v7 >= 1)
      {
        v8 = v7 + 1;
        v9 = 32 * v7 - 32;
        do
        {
          v10 = *a1 + v9;
          v11 = sizeObject<unsigned int>(v10, a2);
          v5 += v11 + sizeObject<DgnPrimArray<unsigned int>>(v10 + 16, a2);
          --v8;
          v9 -= 32;
        }

        while (v8 > 1);
      }

      if (!a2)
      {
        v5 += v6 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  Uns32OneToOneMap::~Uns32OneToOneMap(v13);
  return v5;
}

uint64_t sizeObject<DgnArray<Uns32SpecialMapItem>>(uint64_t a1, int a2)
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
          v2 += sizeObject<Uns32SpecialMapItem>(*a1 + v8, a2);
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

  DgnIArray<Utterance *>::~DgnIArray(v10);
  return v2;
}

void CollMgr::verifyCollId(uint64_t a1, unsigned int a2, int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 >= 0xFFFE && a3 == 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1764, "word/collmgr", 6, "%s", a7, a8, &errStr_word_collmgr_E_COLLATION_BAD_USER_DEFINEDNESS);
    goto LABEL_9;
  }

  if (a2 <= 0xFFFD && a3 == 1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1766, "word/collmgr", 6, "%s", a7, a8, &errStr_word_collmgr_E_COLLATION_BAD_USER_DEFINEDNESS);
    goto LABEL_13;
  }

  if (a2 > 0xFFFD)
  {
LABEL_9:
    if (a4 != 3)
    {
      return;
    }

    v14 = &errStr_word_collmgr_E_COLLATION_BAD_TYPE;
    v12 = 1802;
    goto LABEL_11;
  }

LABEL_13:
  if ((a2 & 0x4000) != 0)
  {
    if (a4 <= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1774, "word/collmgr", 4, "%s", a7, a8, &errStr_word_collmgr_E_COLLATION_BAD_TYPE);
    }

    if ((a2 & 0xFFFFBFFF) >= *(a1 + 208) || !*(*(a1 + 128) + 4 * (a2 & 0xFFFFBFFF)))
    {
      v14 = &errStr_word_collmgr_E_NO_SUCH_COLLATION;
      v12 = 1778;
      v13 = 5;
      goto LABEL_28;
    }
  }

  else
  {
    if (a4 == 3)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1783, "word/collmgr", 4, "%s", a7, a8, &errStr_word_collmgr_E_COLLATION_BAD_TYPE);
    }

    if (*(a1 + 120) <= a2 || !*(*(a1 + 8) + 4 * a2))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", 1786, "word/collmgr", 5, "%s", a7, a8, &errStr_word_collmgr_E_NO_SUCH_COLLATION);
    }

    if (a4 == 1)
    {
      if (!**a1)
      {
        v14 = &errStr_word_collmgr_E_COLLATION_BAD_TYPE;
        v12 = 1792;
        goto LABEL_11;
      }
    }

    else if (!a4 && **a1)
    {
      v14 = &errStr_word_collmgr_E_COLLATION_BAD_TYPE;
      v12 = 1789;
LABEL_11:
      v13 = 4;
LABEL_28:
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/collmgr.cpp", v12, "word/collmgr", v13, "%s", a7, a8, v14);
    }
  }
}

uint64_t CollMgr::collationCanGetWordsWithPrefix(CollMgr *this, unsigned __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  while (1)
  {
    CollMgr::verifyCollId(this, a2, 2, 4u, a5, a6, a7, a8);
    if (a2 == 65534)
    {
      return 1;
    }

    if (a2 == 0xFFFF)
    {
      break;
    }

    if ((a2 & 0x4000) == 0)
    {
      return 1;
    }

    CollMgr::verifyCollId(this, a2, 0, 3u, v10, v11, v12, v13);
    a2 = *(*(this + 18) + 2 * (a2 & 0xBFFF));
  }

  return 0;
}

uint64_t CollMgr::collStrcmpUns8(unsigned int **this, unsigned __int16 a2, CharInfo *a3, CharInfo *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  while (1)
  {
    CollMgr::verifyCollId(this, a2, 2, 4u, a5, a6, a7, a8);
    if (a2 == 0xFFFF)
    {
      return 0;
    }

    if (a2 == 65534)
    {
      if (**this)
      {
        v20 = 0;
        v21 = 0;
        v93 = 0;
        LODWORD(v94) = 0;
        do
        {
          v22 = CharInfo::decodeOneChar(a3, v21, &v94, v13, v14, v15, v16, v17);
          v28 = CharInfo::decodeOneChar(a4, v20, &v93, v23, v24, v25, v26, v27);
          v29 = (v22 - v28);
          if (!v28)
          {
            break;
          }

          v21 = (v94 + v21);
          v20 = (v93 + v20);
        }

        while (!v29);
      }

      else
      {
        v51 = 0;
        do
        {
          v52 = *(a3 + v51);
          v53 = *(a4 + v51++);
          v29 = (v52 - v53);
          if (v53)
          {
            v54 = v29 == 0;
          }

          else
          {
            v54 = 0;
          }
        }

        while (v54);
      }

      return v29;
    }

    if ((a2 & 0x4000) == 0)
    {
      break;
    }

    v18 = a2 & 0xBFFF;
    v19 = CollMgr::collStrcmpUns8(this, *(this[18] + v18), a3, a4);
    if (v19)
    {
      return v19;
    }

    a2 = *(this[20] + v18);
  }

  v30 = a2;
  if (**this)
  {
    if (this[9][4 * a2 + 2])
    {
      CharInfo::decodeCharString(a3, (this + 33), v12, v13, v14, v15, v16, v17);
      CharInfo::decodeCharString(a4, (this + 35), v31, v32, v33, v34, v35, v36);
      v37 = this[33];
      v38 = this[35];
      v39 = Uns32StringLength(v37);
      v40 = (2 * v39) | 1;
      v41 = *(this + 77);
      if (v41 <= 2 * v39)
      {
        DgnPrimArray<unsigned int>::reallocElts((this + 37), v40 - v41, 0);
      }

      *(this + 76) = v40;
      v42 = Uns32StringLength(v38);
      v43 = (2 * v42) | 1;
      v44 = *(this + 81);
      if (v44 <= 2 * v42)
      {
        DgnPrimArray<unsigned int>::reallocElts((this + 39), v43 - v44, 0);
      }

      *(this + 80) = v43;
      v45 = this[37];
      v46 = this[39];
      CollMgr::collTransformUns32(this, a2, v37, v45);
      CollMgr::collTransformUns32(this, a2, v38, v46);
      v47 = 0;
      do
      {
        v48 = v45[v47];
        v49 = v46[v47++];
        v29 = v48 - v49;
        if (v49)
        {
          v50 = v29 == 0;
        }

        else
        {
          v50 = 0;
        }
      }

      while (v50);
      *(this + 68) = 0;
      *(this + 72) = 0;
      *(this + 76) = 0;
      *(this + 80) = 0;
    }

    else
    {
      v65 = 0;
      v66 = 0;
      v93 = 0;
      LODWORD(v94) = 0;
      do
      {
        v67 = CharInfo::decodeOneChar(a3, v66, &v94, v13, v14, v15, v16, v17);
        v73 = CharInfo::decodeOneChar(a4, v65, &v93, v68, v69, v70, v71, v72);
        v74 = &this[7][8 * v30];
        v75 = *(v74 + 8);
        if (v75)
        {
          v76 = 0;
          v77 = *v74;
          v78 = *v74;
          do
          {
            v79 = *v78++;
            v80 = v67 - v79;
            if (v67 < v79)
            {
              break;
            }

            v81 = *(v74 + 16);
            if (v80 < *(v81 + v76 + 8))
            {
              v67 = *(*(v81 + v76) + 4 * v80);
              break;
            }

            v76 += 16;
          }

          while (16 * v75 != v76);
          v82 = 0;
          do
          {
            v83 = *v77++;
            v84 = v73 - v83;
            if (v73 < v83)
            {
              break;
            }

            v85 = *(v74 + 16);
            if (v84 < *(v85 + v82 + 8))
            {
              v86 = *(*(v85 + v82) + 4 * v84);
              goto LABEL_56;
            }

            v82 += 16;
            --v75;
          }

          while (v75);
        }

        v86 = v73;
LABEL_56:
        v29 = v67 - v86;
        if (v29)
        {
          break;
        }

        v66 = (v94 + v66);
        v65 = (v93 + v65);
      }

      while (v73);
    }
  }

  else if (this[5][4 * a2 + 2])
  {
    v55 = Uns8StringLength(a3);
    v56 = (2 * v55) | 1u;
    if (*(this + 61) <= (2 * v55))
    {
      v94 = 0;
      *(this + 61) = realloc_array(this[29], &v94, v56, *(this + 60), *(this + 60), 1);
      this[29] = v94;
    }

    *(this + 60) = v56;
    v57 = Uns8StringLength(a4);
    v58 = (2 * v57) | 1u;
    v59 = this[31];
    if (*(this + 65) <= (2 * v57))
    {
      v94 = 0;
      *(this + 65) = realloc_array(v59, &v94, v58, *(this + 64), *(this + 64), 1);
      v59 = v94;
      this[31] = v94;
    }

    *(this + 64) = v58;
    v60 = this[29];
    CollMgr::collTransformUns8(this, a2, a3, v60);
    CollMgr::collTransformUns8(this, a2, a4, v59);
    v61 = 0;
    do
    {
      v62 = v60[v61];
      v63 = v59[v61++];
      v29 = (v62 - v63);
      if (v63)
      {
        v64 = v29 == 0;
      }

      else
      {
        v64 = 0;
      }
    }

    while (v64);
    *(this + 60) = 0;
    *(this + 64) = 0;
  }

  else
  {
    v87 = 0;
    v88 = *&this[3][4 * a2];
    do
    {
      v89 = *(a4 + v87);
      v90 = *(v88 + *(a3 + v87++));
      v29 = v90 - *(v88 + v89);
      if (v89)
      {
        v91 = v29 == 0;
      }

      else
      {
        v91 = 0;
      }
    }

    while (v91);
  }

  return v29;
}

uint64_t CollMgr::collTransformUns32(uint64_t this, unsigned int a2, unsigned int *a3, unsigned int *a4)
{
  v4 = *a3;
  if (a2 == 65534)
  {
    if (v4)
    {
      v5 = 0;
      v6 = 1;
      do
      {
        a4[v5] = v4;
        v5 = v6;
        v4 = a3[v6++];
      }

      while (v4);
      goto LABEL_59;
    }

LABEL_58:
    v5 = 0;
    goto LABEL_59;
  }

  if (!v4)
  {
    goto LABEL_58;
  }

  v7 = 0;
  v8 = 0;
  v9 = a2;
  v10 = *(this + 72) + 16 * a2;
  do
  {
    v11 = *(v10 + 8);
    if (v11)
    {
      v12 = v8 + 1;
      v13 = (*v10 + 8);
      while (1)
      {
        if (*(v13 - 2) == v4)
        {
          v14 = *(v13 - 1);
          if (!v14)
          {
            v23 = *(this + 56) + 32 * v9;
            v24 = *v13;
            v25 = *(v23 + 8);
            if (v25)
            {
              v26 = 0;
              v27 = *v23;
              v28 = 16 * v25;
              do
              {
                v29 = *v27++;
                v30 = v24 - v29;
                if (v24 < v29)
                {
                  break;
                }

                v31 = *(v23 + 16);
                if (v30 < *(v31 + v26 + 8))
                {
                  v24 = *(*(v31 + v26) + 4 * v30);
                  break;
                }

                v26 += 16;
              }

              while (v28 != v26);
            }

            a4[v7] = v24;
            v41 = v13[1];
            v42 = *(v23 + 8);
            if (v42)
            {
              v43 = 0;
              v44 = *v23;
              v45 = 16 * v42;
              do
              {
                v46 = *v44++;
                v47 = v41 - v46;
                if (v41 < v46)
                {
                  break;
                }

                v48 = *(v23 + 16);
                if (v47 < *(v48 + v43 + 8))
                {
                  v41 = *(*(v48 + v43) + 4 * v47);
                  break;
                }

                v43 += 16;
              }

              while (v45 != v43);
            }

            v49 = v7 + 1;
            v7 += 2;
            a4[v49] = v41;
            goto LABEL_36;
          }

          if (v14 == a3[v12])
          {
            v32 = *(this + 56) + 32 * v9;
            v33 = *v13;
            v34 = *(v32 + 8);
            if (v34)
            {
              v35 = 0;
              v36 = *v32;
              v37 = 16 * v34;
              do
              {
                v38 = *v36++;
                v39 = v33 - v38;
                if (v33 < v38)
                {
                  break;
                }

                v40 = *(v32 + 16);
                if (v39 < *(v40 + v35 + 8))
                {
                  v33 = *(*(v40 + v35) + 4 * v39);
                  break;
                }

                v35 += 16;
              }

              while (v37 != v35);
            }

            v50 = v7 + 1;
            a4[v7] = v33;
            v51 = v13[1];
            if (v51)
            {
              v52 = *(v32 + 8);
              if (v52)
              {
                v53 = 0;
                v54 = *v32;
                v55 = 16 * v52;
                do
                {
                  v56 = *v54++;
                  v57 = v51 - v56;
                  if (v51 < v56)
                  {
                    break;
                  }

                  v58 = *(v32 + 16);
                  if (v57 < *(v58 + v53 + 8))
                  {
                    v51 = *(*(v58 + v53) + 4 * v57);
                    break;
                  }

                  v53 += 16;
                }

                while (v55 != v53);
              }

              a4[v50] = v51;
              v50 = v7 + 2;
            }

            v12 = v8 + 2;
            v7 = v50;
            goto LABEL_36;
          }
        }

        v13 += 4;
        if (!--v11)
        {
          goto LABEL_16;
        }
      }
    }

    v12 = v8 + 1;
LABEL_16:
    v15 = *(this + 56) + 32 * v9;
    v16 = *(v15 + 8);
    if (v16)
    {
      v17 = 0;
      v18 = *v15;
      v19 = 16 * v16;
      do
      {
        v20 = *v18++;
        v21 = v4 - v20;
        if (v4 < v20)
        {
          break;
        }

        v22 = *(v15 + 16);
        if (v21 < *(v22 + v17 + 8))
        {
          v4 = *(*(v22 + v17) + 4 * v21);
          break;
        }

        v17 += 16;
      }

      while (v19 != v17);
    }

    a4[v7++] = v4;
LABEL_36:
    v4 = a3[v12];
    v8 = v12;
  }

  while (v4);
  v5 = v7;
LABEL_59:
  a4[v5] = 0;
  return this;
}

uint64_t CollMgr::collTransformUns8(uint64_t this, unsigned int a2, const unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = *a3;
  if (a2 == 65534)
  {
    if (*a3)
    {
      v5 = 0;
      v6 = 1;
      do
      {
        a4[v5] = v4;
        v5 = v6;
        v4 = a3[v6++];
      }

      while (v4);
      goto LABEL_24;
    }

LABEL_23:
    v5 = 0;
    goto LABEL_24;
  }

  if (!*a3)
  {
    goto LABEL_23;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    v9 = *(this + 40) + 16 * a2;
    v10 = *(v9 + 8);
    if (v10)
    {
      v11 = *v9;
      v12 = v8 + 1;
      v13 = (v11 + 3);
      while (1)
      {
        if (*(v13 - 3) == v4)
        {
          if (!*(v13 - 2))
          {
            v14 = v7 + 1;
            a4[v7] = *(*(*(this + 24) + 16 * a2) + *(v13 - 1));
            v7 += 2;
            a4[v14] = *(*(*(this + 24) + 16 * a2) + *v13);
            goto LABEL_17;
          }

          if (*(v13 - 2) == a3[v12])
          {
            break;
          }
        }

        v13 += 4;
        if (!--v10)
        {
          goto LABEL_16;
        }
      }

      v15 = v7 + 1;
      a4[v7] = *(*(*(this + 24) + 16 * a2) + *(v13 - 1));
      if (*v13)
      {
        a4[v15] = *(*(*(this + 24) + 16 * a2) + *v13);
        v15 = v7 + 2;
      }

      v12 = v8 + 2;
      v7 = v15;
    }

    else
    {
      v12 = v8 + 1;
LABEL_16:
      a4[v7++] = *(*(*(this + 24) + 16 * a2) + v4);
    }

LABEL_17:
    v4 = a3[v12];
    v8 = v12;
  }

  while (a3[v12]);
  v5 = v7;
LABEL_24:
  a4[v5] = 0;
  return this;
}

uint64_t CollMgr::collPrefixcmpUns8(CollMgr *this, unsigned int a2, CharInfo *a3, CharInfo *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  CollMgr::verifyCollId(this, a2, 2, 4u, a5, a6, a7, a8);
  while (v10 != 0xFFFF)
  {
    v18 = *a4;
    if (!*a4)
    {
      break;
    }

    if (v10 == 65534)
    {
      if (**this)
      {
        v20 = 0;
        v21 = 0;
        v85 = 0;
        LODWORD(v86) = 0;
        do
        {
          v22 = CharInfo::decodeOneChar(a3, v21, &v86, v13, v14, v15, v16, v17);
          v28 = CharInfo::decodeOneChar(a4, v20, &v85, v23, v24, v25, v26, v27);
          result = (v22 - v28);
          if (!v28)
          {
            break;
          }

          if (result)
          {
            break;
          }

          v20 = (v85 + v20);
          v21 = (v86 + v21);
        }

        while (*(a4 + v20));
      }

      else
      {
        v48 = 1;
        do
        {
          v49 = *(a3 + (v48 - 1));
          result = v49 - v18;
          if (v49 != v18)
          {
            break;
          }

          v18 = *(a4 + v48++);
        }

        while (v18);
      }

      return result;
    }

    if ((v10 & 0x4000) == 0)
    {
      v29 = v10;
      if (**this)
      {
        if (*(*(this + 9) + 16 * v10 + 8))
        {
          CharInfo::decodeCharString(a3, this + 264, v12, v13, v14, v15, v16, v17);
          CharInfo::decodeCharString(a4, this + 280, v30, v31, v32, v33, v34, v35);
          v36 = *(this + 33);
          v37 = *(this + 35);
          v38 = Uns32StringLength(v36);
          v39 = (2 * v38) | 1;
          v40 = *(this + 77);
          if (v40 <= 2 * v38)
          {
            DgnPrimArray<unsigned int>::reallocElts(this + 296, v39 - v40, 0);
          }

          *(this + 76) = v39;
          v41 = Uns32StringLength(v37);
          v42 = (2 * v41) | 1;
          v43 = *(this + 81);
          if (v43 <= 2 * v41)
          {
            DgnPrimArray<unsigned int>::reallocElts(this + 312, v42 - v43, 0);
          }

          *(this + 80) = v42;
          v44 = *(this + 37);
          v45 = *(this + 39);
          CollMgr::collTransformUns32(this, v10, v36, v44);
          CollMgr::collTransformUns32(this, v10, v37, v45);
          v46 = *v45;
          v47 = 1;
          do
          {
            result = v44[v47 - 1] - v46;
            if (!v46)
            {
              break;
            }

            if (result)
            {
              break;
            }

            v46 = v45[v47++];
          }

          while (v46);
          *(this + 68) = 0;
          *(this + 72) = 0;
          *(this + 76) = 0;
          *(this + 80) = 0;
        }

        else
        {
          v58 = 0;
          v59 = 0;
          v85 = 0;
          LODWORD(v86) = 0;
          do
          {
            v60 = CharInfo::decodeOneChar(a3, v59, &v86, v13, v14, v15, v16, v17);
            v66 = CharInfo::decodeOneChar(a4, v58, &v85, v61, v62, v63, v64, v65);
            v67 = v66;
            v68 = *(this + 7) + 32 * v29;
            v69 = *(v68 + 8);
            if (v69)
            {
              v70 = 0;
              v71 = *v68;
              v72 = *v68;
              do
              {
                v73 = *v72++;
                v74 = v60 - v73;
                if (v60 < v73)
                {
                  break;
                }

                v75 = *(v68 + 16);
                if (v74 < *(v75 + v70 + 8))
                {
                  v60 = *(*(v75 + v70) + 4 * v74);
                  break;
                }

                v70 += 16;
              }

              while (16 * v69 != v70);
              v76 = 0;
              do
              {
                v77 = *v71++;
                v78 = v66 - v77;
                if (v66 < v77)
                {
                  break;
                }

                v79 = *(v68 + 16);
                if (v78 < *(v79 + v76 + 8))
                {
                  v80 = *(*(v79 + v76) + 4 * v78);
                  goto LABEL_53;
                }

                v76 += 16;
                --v69;
              }

              while (v69);
            }

            v80 = v66;
LABEL_53:
            result = v60 - v80;
            if (v60 != v80)
            {
              break;
            }

            if (!v67)
            {
              break;
            }

            v59 = (v86 + v59);
            v58 = (v85 + v58);
          }

          while (*(a4 + v58));
        }
      }

      else if (*(*(this + 5) + 16 * v10 + 8))
      {
        v50 = Uns8StringLength(a3);
        v51 = (2 * v50) | 1u;
        if (*(this + 61) <= (2 * v50))
        {
          v86 = 0;
          *(this + 61) = realloc_array(*(this + 29), &v86, v51, *(this + 60), *(this + 60), 1);
          *(this + 29) = v86;
        }

        *(this + 60) = v51;
        v52 = Uns8StringLength(a4);
        v53 = (2 * v52) | 1u;
        v54 = *(this + 31);
        if (*(this + 65) <= (2 * v52))
        {
          v86 = 0;
          *(this + 65) = realloc_array(v54, &v86, v53, *(this + 64), *(this + 64), 1);
          v54 = v86;
          *(this + 31) = v86;
        }

        *(this + 64) = v53;
        v55 = *(this + 29);
        CollMgr::collTransformUns8(this, v10, a3, v55);
        CollMgr::collTransformUns8(this, v10, a4, v54);
        v56 = *v54;
        v57 = 1;
        do
        {
          result = v55[v57 - 1] - v56;
          if (!v56)
          {
            break;
          }

          if (result)
          {
            break;
          }

          v56 = v54[v57++];
        }

        while (v56);
        *(this + 60) = 0;
        *(this + 64) = 0;
      }

      else
      {
        v81 = *(*(this + 3) + 16 * v10);
        v82 = 1;
        do
        {
          v83 = *(v81 + *(a3 + (v82 - 1)));
          v84 = *(v81 + v18);
          result = (v83 - v84);
          if (v83 != v84)
          {
            break;
          }

          v18 = *(a4 + v82++);
        }

        while (v18);
      }

      return result;
    }

    v10 = *(*(this + 18) + 2 * (v10 & 0xBFFF));
    CollMgr::verifyCollId(this, v10, 2, 4u, v14, v15, v16, v17);
  }

  return 0;
}

void Uns32OneToOneMap::~Uns32OneToOneMap(Uns32OneToOneMap *this)
{
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 16);

  DgnPrimArray<unsigned int>::~DgnPrimArray(this);
}

void *DgnArray<Uns32OneToOneMap>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 32 * v2 - 32;
    do
    {
      Uns32OneToOneMap::~Uns32OneToOneMap((*a1 + v3));
      v3 -= 32;
    }

    while (v3 != -32);
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

uint64_t readObject<Uns8SpecialMapItem>(uint64_t a1, uint64_t a2, _DWORD *a3)
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

uint64_t readObject<Uns32SpecialMapItem>(uint64_t a1, uint64_t a2, _DWORD *a3)
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
    DgnArray<DgnPrimArray<double>>::reallocElts(a2, v11 - v8, 0);
    *(a2 + 8) = v7;
  }

  v9 = 0;
  v10 = 0;
  do
  {
    result = readObject(a1, (*a2 + v9), a3);
    ++v10;
    v9 += 16;
  }

  while (v10 < *(a2 + 8));
  return result;
}

uint64_t writeObject<Uns8SpecialMapItem>(uint64_t a1, uint64_t a2, _DWORD *a3)
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

uint64_t writeObject<Uns32SpecialMapItem>(uint64_t a1, uint64_t a2, _DWORD *a3)
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
      v7 += 16;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

uint64_t sizeObject<Uns32SpecialMapItem>(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  v2 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 12;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v3 = *(a1 + 8);
    v4 = 16 * v3;
    if (v3 <= 0)
    {
      v4 = 0;
    }

    v2 += v4;
    if (!a2)
    {
      v2 += 16 * (*(a1 + 12) - v3);
    }
  }

  return v2;
}

void MrecInitModule_treepref_prefilt(void)
{
  if (!gParDebugShowPrefiltererOperationTimes)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugShowPrefiltererOperationTimes", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugShowPrefiltererOperationTimes = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowPrefiltererOperationTimes);
  }

  if (!gParDebugPrefiltererBuild)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugPrefiltererBuild", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugPrefiltererBuild = v3;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugPrefiltererBuild);
  }

  if (!gParDebugShowPrefiltererBuildShape)
  {
    v4 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v4, "DebugShowPrefiltererBuildShape", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v5 = &unk_287527EA0;
    gParDebugShowPrefiltererBuildShape = v5;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowPrefiltererBuildShape);
  }

  if (!gParDebugPrefiltererWatchTheseWords)
  {
    v6 = MemChunkAlloc(0x48uLL, 0);
    StringGlobalParamBase::StringGlobalParamBase(v6, "DebugPrefiltererWatchTheseWords", &byte_262899963, &byte_262899963, &byte_262899963, 0, 0);
    *v7 = &unk_287526E40;
    gParDebugPrefiltererWatchTheseWords = v7;
    v8 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v8, &gParDebugPrefiltererWatchTheseWords);
  }
}

void TreePrefilterer::TreePrefilterer(TreePrefilterer *this)
{
  Prefilterer::Prefilterer(this);
  *v2 = &unk_287527648;
  LexTreeNetScorer::LexTreeNetScorer((v2 + 4));
  *(this + 152312) = 0u;
  *(this + 2) = 0;
  *(this + 24) = 0;
  *(this + 152232) = 0u;
  *(this + 152264) = 0u;
  *(this + 152280) = 0u;
  *(this + 38064) = -1;
  *(this + 38062) = 0;
  *(this + 19037) = 0;
  *(this + 38076) = 0;
  *(this + 152216) = 0;
}

void TreePrefilterer::~TreePrefilterer(TreePrefilterer *this)
{
  v2 = this + 151552;
  *this = &unk_287527648;
  *(this + 38064) = -1;
  DgnDelete<PelScorer>(*(this + 19029));
  *(v2 + 85) = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 152312);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 152280);
  DgnIArray<Utterance *>::~DgnIArray(this + 152264);
  LexTreeNetScorer::~LexTreeNetScorer((this + 32));

  MrecInitModule_sdpres_sdapi();
}

{
  TreePrefilterer::~TreePrefilterer(this);

  JUMPOUT(0x26672B1B0);
}

void TreePrefilterer::printSize(TreePrefilterer *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/treepref.cpp", 281, &v106);
  if (v107)
  {
    v16 = v106;
  }

  else
  {
    v16 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &byte_262899963, a3, &byte_262899963, v16);
  DgnString::~DgnString(&v106);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &byte_262899963);
  v105 = 0;
  v106 = 0;
  v21 = (a3 + 1);
  v104 = 0;
  Prefilterer::printSize(this, 0xFFFFFFFFLL, v21, &v106, &v105, &v104);
  *a4 += v106;
  *a5 += v105;
  *a6 += v104;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v22 = 4;
  }

  else
  {
    v22 = 8;
  }

  v102 = a3;
  v23 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/treepref.cpp", 284, &v106);
  if (v107)
  {
    v28 = v106;
  }

  else
  {
    v28 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, v25, v26, v27, v21, &byte_262899963, v23, v23, v28, v22, v22, 0);
  DgnString::~DgnString(&v106);
  *a4 += v22;
  *a5 += v22;
  v103 = this + 151552;
  v29 = *(this + 19029);
  if (v29)
  {
    v105 = 0;
    v106 = 0;
    v104 = 0;
    (*(*v29 + 32))(v29, 0xFFFFFFFFLL, v21, &v106, &v105, &v104);
    *a4 += v106;
    *a5 += v105;
    *a6 += v104;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v30 = 4;
  }

  else
  {
    v30 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/treepref.cpp", 286, &v106);
  if (v107)
  {
    v35 = v106;
  }

  else
  {
    v35 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v31, v32, v33, v34, v21, &byte_262899963, v23, v23, v35, v30, v30, 0);
  DgnString::~DgnString(&v106);
  *a4 += v30;
  *a5 += v30;
  v105 = 0;
  v106 = 0;
  v104 = 0;
  LexTreeNetScorer::printSize((this + 32), 0xFFFFFFFFLL, v21, &v106, &v105, &v104);
  *a4 += v106;
  *a5 += v105;
  *a6 += v104;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/treepref.cpp", 296, &v106);
  if (v107)
  {
    v40 = v106;
  }

  else
  {
    v40 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v36, v37, v38, v39, v21, &byte_262899963, v23, v23, v40, 1, 1, 0);
  DgnString::~DgnString(&v106);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v41 = 4;
  }

  else
  {
    v41 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/treepref.cpp", 297, &v106);
  if (v107)
  {
    v46 = v106;
  }

  else
  {
    v46 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v43, v44, v45, v21, &byte_262899963, v23, v23, v46, v41, v41, 0);
  DgnString::~DgnString(&v106);
  *a4 += v41;
  *a5 += v41;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v47 = 4;
  }

  else
  {
    v47 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/treepref.cpp", 298, &v106);
  if (v107)
  {
    v52 = v106;
  }

  else
  {
    v52 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v48, v49, v50, v51, v21, &byte_262899963, v23, v23, v52, v47, v47, 0);
  DgnString::~DgnString(&v106);
  *a4 += v47;
  *a5 += v47;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/treepref.cpp", 300, &v106);
  if (v107)
  {
    v57 = v106;
  }

  else
  {
    v57 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, v54, v55, v56, v21, &byte_262899963, v23, v23, v57, 4, 4, 0);
  DgnString::~DgnString(&v106);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/treepref.cpp", 301, &v106);
  if (v107)
  {
    v62 = v106;
  }

  else
  {
    v62 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v58, v59, v60, v61, v21, &byte_262899963, v23, v23, v62, 4, 4, 0);
  DgnString::~DgnString(&v106);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/treepref.cpp", 303, &v106);
  if (v107)
  {
    v67 = v106;
  }

  else
  {
    v67 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v63, v64, v65, v66, v21, &byte_262899963, v23, v23, v67, 4, 4, 0);
  DgnString::~DgnString(&v106);
  *a4 += 4;
  *a5 += 4;
  v68 = sizeObject<TreePhoneRec>(this + 152264, 0);
  v69 = sizeObject<TreePhoneRec>(this + 152264, 1);
  v106 = 0;
  v107 = -1;
  v108 = 0xFFFF;
  v109 = 0x1FFF;
  TreePhoneRec::sizeObject(&v106, 2);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/treepref.cpp", 305, &v106);
  if (v107)
  {
    v74 = v106;
  }

  else
  {
    v74 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v70, v71, v72, v73, v21, &byte_262899963, v23, v23, v74, v68, v69, 0);
  DgnString::~DgnString(&v106);
  *a4 += v68;
  *a5 += v69;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v75 = 12;
  }

  else
  {
    v75 = 16;
  }

  v76 = *(v103 + 184);
  v77 = *(v103 + 185);
  if (v77 >= v76)
  {
    v78 = 0;
    if (v76 > 0)
    {
      v75 += 4 * (v76 - 1) + 4;
    }

    v79 = v75 + 4 * (v77 - v76);
  }

  else
  {
    v78 = 4 * v76;
    v79 = v75;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/treepref.cpp", 307, &v106);
  if (v107)
  {
    v84 = v106;
  }

  else
  {
    v84 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v80, v81, v82, v83, v21, &byte_262899963, v23, v23, v84, v79, v75, v78);
  DgnString::~DgnString(&v106);
  *a4 += v79;
  *a5 += v75;
  *a6 += v78;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v85 = 4;
  }

  else
  {
    v85 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/treepref.cpp", 309, &v106);
  if (v107)
  {
    v90 = v106;
  }

  else
  {
    v90 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v86, v87, v88, v89, v21, &byte_262899963, v23, v23, v90, v85, v85, 0);
  DgnString::~DgnString(&v106);
  *a4 += v85;
  *a5 += v85;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/treepref.cpp", 311, &v106);
  if (v107)
  {
    v95 = v106;
  }

  else
  {
    v95 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v91, v92, v93, v94, v21, &byte_262899963, v23, v23, v95, 1, 1, 0);
  DgnString::~DgnString(&v106);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/treepref.cpp", 312, &v106);
  if (v107)
  {
    v100 = v106;
  }

  else
  {
    v100 = &byte_262899963;
  }

  v101 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v96, v97, v98, v99, v102, &byte_262899963, (35 - v102), (35 - v102), v100, *a4, *a5, *a6);
  DgnString::~DgnString(&v106);
}

void sub_26285B4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<TreePhoneRec>(uint64_t a1, int a2)
{
  v11[0] = 0;
  v11[1] = -1;
  v12 = 0xFFFF;
  v13 = 0x1FFF;
  v4 = TreePhoneRec::sizeObject(v11, 2);
  v5 = 0;
  if (a2 != 3)
  {
    v5 = (gShadowDiagnosticShowIdealizedObjectSizes & 1) != 0 ? 12 : 16;
    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v6 = v4;
      v7 = *(a1 + 8);
      if (v7 >= 1)
      {
        v8 = v7 + 1;
        v9 = 24 * v7 - 24;
        do
        {
          v5 += TreePhoneRec::sizeObject(*a1 + v9, a2);
          --v8;
          v9 -= 24;
        }

        while (v8 > 1);
      }

      if (!a2)
      {
        v5 += v6 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  return v5;
}

uint64_t TreePrefilterer::setPrefiltererBuildParamSet(uint64_t result, uint64_t a2)
{
  *(result + 152296) = a2;
  *(result + 152304) = *(a2 + 72);
  return result;
}

uint64_t TreePrefilterer::getUserId(TreePrefilterer *this)
{
  v1 = *(this + 19028);
  if (v1)
  {
    return *(v1 + 184);
  }

  else
  {
    return 0xFFFFLL;
  }
}

void LexTreeNetScorer::getPrefiltererStats(LexTreeNetScorer *this, PelStats *a2, PrefStats *a3, PelStats *a4, PrefStats *a5)
{
  v9 = (this + 151552);
  PelStats::operator=(a2, this + 151928);
  PrefStats::operator=(a3, (v9 + 138));
  PelStats::operator=(a4, this + 151672);
  PelStats::operator-=(a4, this + 151928);
  PrefStats::operator=(a5, (v9 + 74));
  *a5 = v9[138];
  *(a5 + 18) = v9[156];
  PrefStats::operator-=(a5, (v9 + 138));
  *a5 = v9[74];
  *(a5 + 18) = v9[92];
}

void LexTreeNetScorer::setSynchronousPrefiltererStats(LexTreeNetScorer *this)
{
  v1 = (this + 151552);
  PelStats::operator=(this + 151928, this + 151672);
  v2 = v1[138];
  v3 = v1[74];
  v4 = v1[156];
  v5 = v1[92];
  PrefStats::operator=((v1 + 138), (v1 + 74));
  if (v2 <= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v2;
  }

  v1[138] = v6;
  v1[74] = 0;
  if (v4 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v1[156] = v7;
  v1[92] = 0;
}

void TreePrefilterer::scoreFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, ReturnListQueue *a5)
{
  v6 = a2;
  LexTreeNetScorer::scoreFrame(a1 + 32, a2, a3, a4);
  NextFrameTime = ReturnListQueue::getNextFrameTime(a5);
  if (NextFrameTime <= v6)
  {
    v9 = NextFrameTime;
    v10 = v6 - NextFrameTime + 1;
    do
    {
      if (!LexTreeNetScorer::isPrefilteringListAvailable((a1 + 32), v9))
      {
        break;
      }

      v11 = MemChunkAlloc(0x10uLL, 0);
      *v11 = 0;
      v11[1] = 0;
      LexTreeNetScorer::getList((a1 + 32), v9, v11, v10);
      ReturnListQueue::enqueue(a5, v9++, v11);
      --v10;
    }

    while (v10);
  }
}

uint64_t TreePrefilterer::completeUtterance(int32x4_t *this, signed int a2, ReturnListQueue *a3)
{
  NextFrameTime = ReturnListQueue::getNextFrameTime(a3);
  if (NextFrameTime <= a2)
  {
    v7 = NextFrameTime;
    v8 = a2 - NextFrameTime + 1;
    do
    {
      v9 = MemChunkAlloc(0x10uLL, 0);
      *v9 = 0;
      v9[1] = 0;
      LexTreeNetScorer::getList(this + 2, v7, v9, v8);
      ReturnListQueue::enqueue(a3, v7++, v9);
      --v8;
    }

    while (v8);
  }

  return ReturnListQueue::setComplete(a3);
}

uint64_t TreePrefilterer::scoreFramesUntil(int32x4_t *a1, int a2, uint64_t a3, uint64_t a4, ReturnListQueue *a5, uint64_t a6)
{
  v12 = (*(a1->i64[0] + 96))(a1);
  v25[0] = 0;
  v25[1] = 0;
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  for (i = (*(*a1[9514].i64[1] + 72))(a1[9514].i64[1], v12, a3, a6); ((ReturnListQueue::getNextFrameTime(a5) <= a2) & i) == 1; i = (*(*a1[9514].i64[1] + 72))(a1[9514].i64[1], v12, a3, a6))
  {
    if (LexTreeNetScorer::needLookaheadToScoreFrame(&a1[2]) && *(a4 + 16) <= v12)
    {
      i = 1;
      break;
    }

    v14 = LexTreeNetScorer::needLookaheadToScoreFrame(&a1[2]);
    if (v14)
    {
      v15 = *(a4 + 8) + 16 * v12;
      DgnPrimFixArray<short>::copyArraySlice(&v23, v15, 0, *(v15 + 8));
      v16 = v12;
      if (*(a5 + 1) == -16)
      {
        v17 = *(a4 + 4);
        if (v17 != -16 && v17 <= v12)
        {
          *(a5 + 1) = ReturnListQueue::getNextFrameTime(a5);
          (*(a1->i64[0] + 88))(a1);
        }
      }
    }

    else
    {
      v16 = v12;
    }

    DgnPrimArray<unsigned char>::copyArraySlice(v25, (*(a3 + 8) + 16 * v16), 0, *(*(a3 + 8) + 16 * v16 + 8));
    if (v14)
    {
      v18 = &v23;
    }

    else
    {
      v18 = &v21;
    }

    TreePrefilterer::scoreFrame(a1, v12, v25, v18, a5);
    v12 = (v12 + 1);
  }

  if (*(a3 + 16) <= v12 && *a3 == 1)
  {
    if (*(a5 + 1) == -16)
    {
      *(a5 + 1) = ReturnListQueue::getNextFrameTime(a5);
      (*(a1->i64[0] + 88))(a1);
    }

    TreePrefilterer::completeUtterance(a1, v12, a5);
    v19 = 0;
  }

  else if (ReturnListQueue::getNextFrameTime(a5) <= a2)
  {
    if (LexTreeNetScorer::needLookaheadToScoreFrame(&a1[2]) && *(a4 + 16) <= v12)
    {
      v19 = 3;
    }

    else if (i)
    {
      v19 = 0;
    }

    else
    {
      v19 = 2;
    }
  }

  else
  {
    v19 = 1;
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(&v21);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v23);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v25);
  return v19;
}

void sub_26285BC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a9);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a11);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a13);
  _Unwind_Resume(a1);
}

uint64_t TreePrefilterer::initPrefilterer(TreePrefilterer *this, int ***a2, unsigned int a3, int a4, char a5, int a6)
{
  v10 = this + 151552;
  *(this + 3) = a4;
  *(this + 4) = a3;
  *(this + 2) = *(**VocMgr::smpVocMgr + 8 * a3);
  *(this + 19028) = a2;
  v11 = *(this + 19037);
  v12 = *(v11 + 141);
  if (*(v11 + 112))
  {
    v13 = *(v11 + 104);
  }

  else
  {
    v13 = &byte_262899963;
  }

  if (*(v11 + 128))
  {
    v14 = *(v11 + 120);
  }

  else
  {
    v14 = &byte_262899963;
  }

  *(this + 19029) = User::newPelScorer(a2, 0, *(v11 + 56), *(v11 + 80), *(v11 + 64), v13, v14, *(v11 + 136), (*(v11 + 140) & 1) == 0);
  v15 = a2[6];
  *(v10 + 86) = v15;
  v16 = **v15;
  v33 = 0;
  v34 = 0;
  v17 = v16 - 2;
  *(v10 + 174) = v16 - 2;
  if (v16 == 2)
  {
    v21 = 0;
    LODWORD(v34) = 0;
  }

  else
  {
    v35 = 0;
    v18 = realloc_array(0, &v35, 4 * (v16 - 2), 0, 0, 1);
    v19 = v35;
    v33 = v35;
    v20 = *(v10 + 174);
    LODWORD(v34) = v17;
    HIDWORD(v34) = v18 >> 2;
    v21 = 0;
    if (v20)
    {
      v22 = 0;
      v23 = *(*(v10 + 86) + 16);
      do
      {
        v24 = *(v23 + v22);
        v19[v22] = v24;
        if (v21 <= v24)
        {
          v21 = v24;
        }

        ++v22;
      }

      while (*(v10 + 174) > v22);
    }
  }

  *(v10 + 175) = 0xFE / v21;
  TreePrefilterer::populateUsingCwidList(this, a6);
  v25 = *(v10 + 93);
  v26 = *(v25 + 44);
  v27 = *(v25 + 76);
  if (v27 == -1)
  {
    v27 = 20000;
  }

  v28 = *(v25 + 48);
  if (*(v25 + 144))
  {
    v29 = 1;
  }

  else
  {
    v30 = *(v25 + 148);
    v29 = v30 != 0;
    if (!v30)
    {
      v31 = 0;
      goto LABEL_21;
    }
  }

  v31 = *(this + 2) + 352;
LABEL_21:
  LexTreeNetScorer::initScorer(this + 32, *(this + 4), a5, *(v10 + 85), *(v10 + 86), *(v10 + 176), this + 152264, this + 152280, v28, &v33, __SPAIR64__(v21, *(v10 + 174)), v26, v27, v29, v31);
  v10[664] = 1;
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v33);
}

void sub_26285BE50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t TreePrefilterer::populateUsingCwidList(TreePrefilterer *this, int a2)
{
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v199, 0, a2);
  v4 = *(this + 2);
  if (*(v4 + 260) != 1 || *(v4 + 264) != *(this + 3))
  {
    Voc::notifyPrefLmScoresBad(v4);
    v12 = *(this + 2);
    *(v12 + 264) = *(this + 3);
    if ((*(v12 + 260) & 1) == 0)
    {
      Voc::computePrefLmScores(v12, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v13 = this + 151552;
  Latch<MemChunkRegion,LatchAdapter>::~Latch(&v199);
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v199, 0, a2);
  v14 = *(this + 19037);
  v15 = v14[18];
  v16 = *(this + 2);
  if (*(v16 + 288) != 1 || *(v16 + 300) != v15 || *(v16 + 304) != *(this + 3) || (v17 = *(v16 + 292), v17 != v14[36]) || (v18 = *(v16 + 296), v18 != v14[37]) || v18 | v17 && *(v16 + 308) != *(*(this + 19028) + 216))
  {
    Voc::notifyPrefWordIdsSortedByPronBad(v16);
    v24 = *(this + 2);
    *(v24 + 300) = v15;
    v25 = *(this + 3);
    *(v24 + 304) = v25;
    v26 = *(this + 19037);
    v27 = *(v26 + 144);
    *(v24 + 292) = v27;
    v28 = *(v26 + 148);
    *(v24 + 296) = v28;
    v29 = v27 | v28;
    if (v27 | v28)
    {
      v29 = *(*(this + 19028) + 216);
    }

    *(v24 + 308) = v29;
    if ((*(v24 + 288) & 1) == 0)
    {
      if (v27 | v28)
      {
        TreePrefilterer::computePicModelIds(this, v24, v25);
        v24 = *(this + 2);
      }

      Voc::computePrefWordIdsSortedByPron(v24, v24, v25, v19, v20, v21, v22, v23);
    }
  }

  Latch<MemChunkRegion,LatchAdapter>::~Latch(&v199);
  v215 = 0;
  v216 = 0;
  v30 = *(this + 2);
  v31 = *(v30 + 424);
  if (v31)
  {
    v199 = 0;
    v32 = realloc_array(0, &v199, 4 * v31, 0, 0, 1);
    v33 = v199;
    v215 = v199;
    v34 = *(v30 + 424);
    LODWORD(v216) = v31;
    HIDWORD(v216) = v32 >> 2;
    if (v34)
    {
      v35 = 0;
      v36 = *(this + 4) << 25;
      v37 = *(v30 + 416);
      do
      {
        v33[v35] = *(v37 + 4 * v35) & 0xFFFFFF | v36;
        ++v35;
      }

      while (v35 < *(v30 + 424));
    }
  }

  else
  {
    LODWORD(v216) = 0;
  }

  v213 = 0;
  v214 = 0;
  v211 = 0;
  v212 = 0;
  v209 = 0;
  v210 = 0;
  v38 = *(this + 19037);
  if (*(v38 + 144) || *(v38 + 148))
  {
    v39 = *(this + 2);
    if (*(v39 + 424))
    {
      v40 = 0;
      v41 = 0;
      v42 = 0;
      do
      {
        v43 = *(*(v39 + 416) + 4 * v40);
        v199 = 0;
        v205[0] = 0;
        Voc::getPrefPicModelIdPron(*(this + 2), v43, &v199, v205);
        v44 = v205[0];
        if (v42 >= v205[0])
        {
          v45 = v205[0];
        }

        else
        {
          v45 = v42;
        }

        if (v45)
        {
          v46 = 0;
          while (v199[v46] == v41[v46])
          {
            if (v45 == ++v46)
            {
              goto LABEL_37;
            }
          }

          LODWORD(v45) = v46;
        }

LABEL_37:
        if (v45 < v205[0])
        {
          v47 = v45;
          do
          {
            v48 = v214;
            if (v47 >= v214)
            {
              do
              {
                if (v48 == HIDWORD(v214))
                {
                  DgnPrimArray<unsigned int>::reallocElts(&v213, 1, 1);
                  v48 = v214;
                }

                v49 = v213;
                v213[v48] = 0;
                LODWORD(v214) = v214 + 1;
                v48 = v214;
              }

              while (v47 >= v214);
            }

            else
            {
              v49 = v213;
            }

            ++v49[v47++];
            v44 = v205[0];
          }

          while (v47 < v205[0]);
        }

        v41 = v199;
        ++v40;
        v42 = v44;
      }

      while (v40 < *(v39 + 424));
      v50 = v214;
      v51 = v214;
      if (HIDWORD(v212) < v214)
      {
        v199 = 0;
        HIDWORD(v212) = realloc_array(v211, &v199, 4 * v214, 4 * v212, 4 * v212, 1) >> 2;
        v211 = v199;
        v51 = v214;
      }

      LODWORD(v212) = v50;
      v52 = v51;
      if (HIDWORD(v210) < v51)
      {
        v199 = 0;
        HIDWORD(v210) = realloc_array(v209, &v199, 4 * v51, 4 * v210, 4 * v210, 1) >> 2;
        v209 = v199;
        v52 = v214;
      }

      LODWORD(v210) = v51;
      if (v52)
      {
        v53 = 0;
        v54 = v211;
        v55 = v213;
        v56 = 1;
        v57 = v209;
        do
        {
          v54[v53] = v56;
          v56 += v55[v53];
          v57[v53++] = 0;
        }

        while (v53 < v214);
        goto LABEL_90;
      }

LABEL_89:
      v56 = 1;
      goto LABEL_90;
    }

LABEL_88:
    LODWORD(v212) = 0;
    goto LABEL_89;
  }

  v58 = v216;
  if (!v216)
  {
    goto LABEL_88;
  }

  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  LODWORD(v63) = 0;
  do
  {
    v64 = *(*(this + 2) + 48);
    v66 = v215[v61] & 0xFFFFFF;
    v65 = v64[9] + 2 * *(v64[6] + 4 * v66);
    LOWORD(v66) = *(v64[4] + 2 * v66);
    v67 = v66;
    v68 = *(this + 38076);
    if (v68 >= v66)
    {
      LODWORD(v66) = v66;
    }

    else
    {
      LODWORD(v66) = *(this + 38076);
    }

    if (v68)
    {
      v69 = v66;
    }

    else
    {
      v69 = v67;
    }

    if (v63 >= v69)
    {
      v63 = v69;
    }

    else
    {
      v63 = v63;
    }

    if (v63)
    {
      v70 = 0;
      while (*(v65 + 2 * v70) == *(v62 + 2 * v70))
      {
        if (v63 == ++v70)
        {
          goto LABEL_71;
        }
      }

      LODWORD(v63) = v70;
    }

LABEL_71:
    if (v63 < v69)
    {
      v71 = v63;
      do
      {
        for (i = v214; v71 >= v214; i = v214)
        {
          if (i == HIDWORD(v214))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v213, 1, 1);
            i = v214;
            v59 = v213;
            v60 = v213;
          }

          v60[i] = 0;
          LODWORD(v214) = v214 + 1;
        }

        ++v59[v71++];
        v60 = v59;
      }

      while (v69 != v71);
      v58 = v216;
      v60 = v59;
    }

    ++v61;
    v62 = v65;
    LODWORD(v63) = v69;
  }

  while (v61 < v58);
  v73 = v214;
  v74 = v214;
  if (HIDWORD(v212) < v214)
  {
    v199 = 0;
    HIDWORD(v212) = realloc_array(v211, &v199, 4 * v214, 4 * v212, 4 * v212, 1) >> 2;
    v211 = v199;
    v74 = v214;
  }

  LODWORD(v212) = v73;
  v75 = v74;
  if (HIDWORD(v210) < v74)
  {
    v199 = 0;
    HIDWORD(v210) = realloc_array(v209, &v199, 4 * v74, 4 * v210, 4 * v210, 1) >> 2;
    v209 = v199;
    v75 = v214;
  }

  LODWORD(v210) = v74;
  if (!v75)
  {
    goto LABEL_89;
  }

  v76 = 0;
  v77 = v211;
  v78 = v213;
  v56 = 1;
  v79 = v209;
  do
  {
    v77[v76] = v56;
    v56 += v78[v76];
    v79[v76++] = 0;
  }

  while (v76 < v214);
LABEL_90:
  v80 = *(this + 19037);
  if (*(v80 + 144) || *(v80 + 148))
  {
    v81 = *(this + 2);
    v82 = (this + 152264);
    v83 = *(this + 38068);
    *(this + 38064) = v83;
    v84 = *(this + 38069);
    if (v56 > v84)
    {
      DgnArray<CWIDAC>::reallocElts(this + 152264, v56 - v84, 0);
      v83 = *(this + 38068);
    }

    if (v83 < v56)
    {
      v85 = v56 - v83;
      v86 = 24 * v83;
      do
      {
        v87 = *v82 + v86;
        *v87 = 0;
        *(v87 + 8) = -1;
        *(v87 + 16) = 0xFFFF;
        *(v87 + 20) = 0x1FFF;
        v86 += 24;
        --v85;
      }

      while (v85);
    }

    *(this + 38068) = v56;
    v88 = *(this + 19033) + 24 * *(this + 38064);
    *(v88 + 20) |= 0x8000u;
    v89 = v213;
    v90 = *v213;
    if (*v213)
    {
      v91 = *(v88 + 18);
      v92 = 1;
      do
      {
        if (v91)
        {
          ++v91;
        }

        else
        {
          *(v88 + 8) = v92;
          v90 = *v89;
          v91 = 1;
        }

        ++v92;
      }

      while (v92 <= v90);
      *(v88 + 18) = v91;
    }

    v199 = 0;
    v200 = 0;
    if (!*(v81 + 424))
    {
      goto LABEL_207;
    }

    v198 = v81;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = -1;
    while (1)
    {
      v97 = *(*(v81 + 416) + 4 * v93);
      v208 = 0;
      v207 = 0;
      Voc::getPrefPicModelIdPron(*(this + 2), v97, &v208, &v207);
      v98 = v207;
      if (v94 >= v207)
      {
        v99 = v207;
      }

      else
      {
        v99 = v94;
      }

      if (v99)
      {
        if (*v208 == *v95)
        {
          v100 = 0;
          v101 = v211;
          v102 = v209;
          while (v99 - 1 != v100)
          {
            v103 = v208[v100 + 1];
            v104 = v95[v100 + 1];
            ++v102;
            ++v101;
            ++v100;
            if (v103 != v104)
            {
              v105 = *(v101 - 1) + *(v102 - 1) - 1;
              LODWORD(v99) = v100;
              goto LABEL_117;
            }
          }

          v105 = *v101 + *v102 - 1;
          goto LABEL_117;
        }

        LODWORD(v99) = 0;
      }

      v105 = -1;
LABEL_117:
      v106 = v99 != v94;
      if (v99 != v207)
      {
        v106 = 1;
      }

      if (v99 >= v207)
      {
        v112 = v105;
      }

      else
      {
        v107 = *(*(*(this + 2) + 48) + 72) + 2 * *(*(*(*(this + 2) + 48) + 48) + 4 * (*&v97 & 0xFFFFFFLL));
        v108 = v211;
        v110 = v208;
        v109 = v209;
        v111 = *v82;
        v99 = v99;
        do
        {
          v112 = v109[v99] + v108[v99];
          v113 = v111 + 24 * v112;
          *(v113 + 16) = *(v107 + 2 * v99);
          *(v113 + 12) = v110[v99];
          if (v99)
          {
            v114 = v111 + 24 * v105;
            if (*(v114 + 18))
            {
              v115 = *(v114 + 18) + 1;
            }

            else
            {
              *(v114 + 8) = v112;
              v115 = 1;
            }

            *(v114 + 18) = v115;
          }

          ++v109[v99++];
          v98 = v207;
          v105 = v112;
        }

        while (v99 < v207);
      }

      v116 = v96 != -1 && v106;
      v94 = v98;
      if (v116)
      {
        *v205 = 0;
        v206 = 0;
        if (v200)
        {
          v117 = v82;
          v118 = 0;
          LODWORD(v119) = 0;
          v120 = 0;
          do
          {
            v121 = *(this + 4);
            v122 = v199[v120];
            if (v119 == HIDWORD(v206))
            {
              DgnPrimArray<unsigned int>::reallocElts(v205, 1, 1);
              LODWORD(v119) = v206;
              v118 = *v205;
            }

            *&v118[4 * v119] = v122 & 0xFFFFFF | (v121 << 25);
            v119 = (v206 + 1);
            LODWORD(v206) = v206 + 1;
            ++v120;
          }

          while (v120 < v200);
          v82 = v117;
          v81 = v198;
        }

        else
        {
          v119 = 0;
          v118 = 0;
        }

        mrec_qsort_r<SortCwidsByWordEndScope>(v118, v119, 4, this);
        TreePrefilterer::checkAndAddEndingWords(this, v96, v205, v123, v124, v125, v126, v127);
        LODWORD(v200) = 0;
        DgnPrimArray<unsigned int>::~DgnPrimArray(v205);
        v94 = v207;
      }

      v95 = v208;
      v128 = v200;
      if (v200 == HIDWORD(v200))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v199, 1, 1);
        v128 = v200;
      }

      v199[v128] = v97;
      v129 = v200 + 1;
      LODWORD(v200) = v200 + 1;
      ++v93;
      v96 = v112;
      if (v93 >= *(v81 + 424))
      {
        v13 = this + 151552;
        if (v112 != -1)
        {
          *v205 = 0;
          v206 = 0;
          if (v129)
          {
            v130 = 0;
            LODWORD(v131) = 0;
            v132 = 0;
            do
            {
              v133 = *(this + 4);
              v134 = v199[v132];
              if (v131 == HIDWORD(v206))
              {
                DgnPrimArray<unsigned int>::reallocElts(v205, 1, 1);
                LODWORD(v131) = v206;
                v130 = *v205;
              }

              *&v130[4 * v131] = v134 & 0xFFFFFF | (v133 << 25);
              v131 = (v206 + 1);
              LODWORD(v206) = v206 + 1;
              ++v132;
            }

            while (v132 < v200);
          }

          else
          {
            v131 = 0;
            v130 = 0;
          }

          mrec_qsort_r<SortCwidsByWordEndScope>(v130, v131, 4, this);
          TreePrefilterer::checkAndAddEndingWords(this, v112, v205, v179, v180, v181, v182, v183);
          LODWORD(v200) = 0;
          DgnPrimArray<unsigned int>::~DgnPrimArray(v205);
        }

        goto LABEL_207;
      }
    }
  }

  v135 = (this + 152264);
  v136 = *(this + 38068);
  *(this + 38064) = v136;
  v137 = *(this + 38069);
  if (v56 > v137)
  {
    DgnArray<CWIDAC>::reallocElts(this + 152264, v56 - v137, 0);
    v136 = *(this + 38068);
  }

  if (v136 < v56)
  {
    v138 = v56 - v136;
    v139 = 24 * v136;
    do
    {
      v140 = *v135 + v139;
      *v140 = 0;
      *(v140 + 8) = -1;
      *(v140 + 16) = 0xFFFF;
      *(v140 + 20) = 0x1FFF;
      v139 += 24;
      --v138;
    }

    while (v138);
  }

  *(this + 38068) = v56;
  v141 = *(this + 19033) + 24 * *(this + 38064);
  *(v141 + 20) |= 0x8000u;
  v142 = v213;
  v143 = *v213;
  if (*v213)
  {
    v144 = *(v141 + 18);
    v145 = 1;
    do
    {
      if (v144)
      {
        ++v144;
      }

      else
      {
        *(v141 + 8) = v145;
        v143 = *v142;
        v144 = 1;
      }

      ++v145;
    }

    while (v145 <= v143);
    *(v141 + 18) = v144;
  }

  v199 = 0;
  v200 = 0;
  if (v216)
  {
    LODWORD(v146) = 0;
    v147 = 0;
    v148 = 0;
    v149 = 0;
    v150 = 0;
    v151 = -1;
    while (1)
    {
      v152 = v215[v148];
      v154 = *(*(this + 2) + 48);
      v153 = (v154[9] + 2 * *(v154[6] + 4 * (*&v152 & 0xFFFFFFLL)));
      LOWORD(v154) = *(v154[4] + 2 * (*&v152 & 0xFFFFFFLL));
      v155 = v154;
      v156 = *(this + 38076);
      if (v156 >= v154)
      {
        LODWORD(v154) = v154;
      }

      else
      {
        LODWORD(v154) = *(this + 38076);
      }

      if (v156)
      {
        v157 = v154;
      }

      else
      {
        v157 = v155;
      }

      if (v149 >= v157)
      {
        v158 = v157;
      }

      else
      {
        v158 = v149;
      }

      if (v158)
      {
        if (*v153 == *v150)
        {
          v159 = 0;
          v160 = v211;
          v161 = v209;
          v162 = v150 + 1;
          while (v158 - 1 != v159)
          {
            v163 = v153[v159 + 1];
            v164 = v162[v159];
            ++v161;
            ++v160;
            ++v159;
            if (v163 != v164)
            {
              v165 = *(v160 - 1) + *(v161 - 1) - 1;
              LODWORD(v158) = v159;
              goto LABEL_184;
            }
          }

          v165 = *v160 + *v161 - 1;
          goto LABEL_184;
        }

        LODWORD(v158) = 0;
      }

      v165 = -1;
LABEL_184:
      v166 = v158 != v149;
      if (v158 != v157)
      {
        v166 = 1;
      }

      if (v158 >= v157)
      {
        v171 = v165;
      }

      else
      {
        v167 = v211;
        v168 = v209;
        v158 = v158;
        v169 = *v135;
        do
        {
          v170 = v168[v158];
          v171 = v170 + v167[v158];
          *(v169 + 24 * v171 + 16) = v153[v158];
          if (v158)
          {
            v172 = v169 + 24 * v165;
            if (*(v172 + 18))
            {
              v173 = *(v172 + 18) + 1;
            }

            else
            {
              *(v172 + 8) = v171;
              v170 = v168[v158];
              v173 = 1;
            }

            *(v172 + 18) = v173;
          }

          v168[v158++] = v170 + 1;
          v165 = v171;
        }

        while (v157 != v158);
        LODWORD(v146) = v200;
      }

      if (v151 == -1)
      {
        v166 = 0;
      }

      if (v166)
      {
        mrec_qsort_r<SortCwidsByWordEndScope>(v147, v146, 4, this);
        TreePrefilterer::checkAndAddEndingWords(this, v151, &v199, v174, v175, v176, v177, v178);
        LODWORD(v146) = 0;
        LODWORD(v200) = 0;
      }

      if (v146 == HIDWORD(v200))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v199, 1, 1);
        LODWORD(v146) = v200;
      }

      v147 = v199;
      v199[v146] = v152;
      v146 = (v200 + 1);
      LODWORD(v200) = v200 + 1;
      ++v148;
      v151 = v171;
      v149 = v157;
      v150 = v153;
      if (v148 >= v216)
      {
        if (v171 != -1)
        {
          mrec_qsort_r<SortCwidsByWordEndScope>(v147, v146, 4, this);
          TreePrefilterer::checkAndAddEndingWords(this, v171, &v199, v193, v194, v195, v196, v197);
          LODWORD(v200) = 0;
        }

        break;
      }
    }
  }

LABEL_207:
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v199);
  v184 = *(v13 + 93);
  if (*(v184 + 40) == 1)
  {
    v185 = *(v13 + 175) - 1;
  }

  else
  {
    v185 = 0;
  }

  v186 = *(v184 + 44);
  v187 = v13 + 712;
  LexTreePathIter::LexTreePathIter(&v199, (v13 + 712), *(v13 + 176));
  v188 = -1;
  while (v204)
  {
    if (*(*v187 + 24 * (*(v203 + 4 * (v204 - 2)) + *(v200 + 4 * (v201 - 2))) + 20) < 0)
    {
      v188 = v204;
    }

    v189 = *v187 + 24 * (*(v203 + 4 * (v204 - 1)) + *(v200 + 4 * (v201 - 1)));
    if ((*(v189 + 20) & 0x2000) != 0 || (*(v189 + 18) == 1 ? (v190 = v204 - 1 == v186) : (v190 = 1), !v190 ? (v191 = v204 - v188 == v185) : (v191 = 1), v191))
    {
      *(v189 + 20) |= 0x8000u;
    }

    LexTreePathIter::nextStandard(&v199);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v203);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v202);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v200);
  TreePrefilterer::setAllPhoneRecBestLms(this);
  TreePrefilterer::setupAllEffectiveLms(this);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v209);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v211);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v213);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v215);
}

void sub_26285CCDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va1, a14);
  va_start(va, a14);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v14 - 120);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v14 - 104);
  _Unwind_Resume(a1);
}

void TreePrefilterer::beginPrefSyncRecog(TreePrefilterer *this, uint64_t a2, int a3, uint64_t a4, const CTFTMgr *a5, const PrefiltererSearchParamSet *a6)
{
  (*(**(this + 19029) + 40))(*(this + 19029), a4, 0, a5, 1, a2, *(a6 + 96), *(a6 + 11));
  *(this + 24) = 1;

  LexTreeNetScorer::beginScorerSyncRecog((this + 32), a3, a6);
}

uint64_t TreePrefilterer::endPrefSyncRecog(TreePrefilterer *this)
{
  LexTreeNetScorer::endScorerSyncRecog((this + 32));
  result = (*(**(this + 19029) + 48))(*(this + 19029));
  *(this + 24) = 0;
  return result;
}

uint64_t TreePrefilterer::getPhoneStringFromCWID(TreePrefilterer *this, int a2, DgnString *a3)
{
  v5 = *(*(this + 2) + 48);
  v13 = 0;
  v14 = 0;
  WordList::getPron(v5, a2 & 0xFFFFFF, &v13);
  v6 = *(this + 38076);
  v7 = v14;
  if (v6)
  {
    v8 = v6 >= v14;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    *(a3 + 2) = 0;
    if (!v7)
    {
      return DgnPrimArray<unsigned int>::~DgnPrimArray(&v13);
    }
  }

  else
  {
    LODWORD(v14) = *(this + 38076);
    *(a3 + 2) = 0;
  }

  v9 = 0;
  do
  {
    if (v9)
    {
      DgnString::operator+=(a3, " ");
    }

    v10 = *(**(this + 19030) + 8) + 16 * *(v13 + 2 * v9);
    if (*(v10 + 8))
    {
      v11 = *v10;
    }

    else
    {
      v11 = &byte_262899963;
    }

    DgnString::operator+=(a3, v11);
    ++v9;
  }

  while (v9 < v14);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v13);
}

void TreePrefilterer::checkAndAddEndingWords(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a3 + 8);
  if (v11 >= 0x400)
  {
    v12 = *(*a3 + 4 * (v11 - 1));
    DgnString::DgnString(&v34);
    TreePrefilterer::getPhoneStringFromCWID(a1, v12, &v34);
    v13 = *(*(a1 + 16) + 48);
    v31 = v13[28] + *(v13[25] + 4 * (*&v12 & 0xFFFFFFLL));
    v33 = *(v13[13] + (*&v12 & 0xFFFFFFLL));
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/treepref.cpp", 918, "prefilt/treepref", 3, "%u %.500s 0x%08x %.500s %u", v14, v15, *(a3 + 8));
    DgnString::~DgnString(&v34);
    v11 = *(a3 + 8);
  }

  v16 = *(a1 + 152288);
  if (v16 >= 0x400000)
  {
    v17 = *(*(a1 + 16) + 48);
    v18 = *(*a3 + 4 * (v11 - 1));
    v30 = v17[28] + *(v17[25] + 4 * (*&v18 & 0xFFFFFFLL));
    v32 = *(v17[13] + (*&v18 & 0xFFFFFFLL));
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/treepref.cpp", 929, "prefilt/treepref", 4, "%u 0x%08x %.500s %u", a7, a8, v16);
    v11 = *(a3 + 8);
  }

  if (v11 == 1)
  {
    v19 = **a3;
    v20 = *(*(*(a1 + 16) + 272) + 2 * (*&v19 & 0xFFFFFFLL));
    v21 = *(a1 + 152264) + 24 * a2;
    IndexForCwid = getIndexForCwid(*(a1 + 8), v19);
    TreePhoneRec::setSingleEndingWord(v21, IndexForCwid, v20);
  }

  else
  {
    v23 = *(a1 + 152288);
    if (v11)
    {
      v24 = 0;
      do
      {
        v25 = *(*a3 + 4 * v24);
        v26 = *(*(*(a1 + 16) + 272) + 2 * (*&v25 & 0xFFFFFFLL));
        v27 = getIndexForCwid(*(a1 + 8), v25);
        v28 = *(a1 + 152288);
        if (v28 == *(a1 + 152292))
        {
          DgnPrimArray<unsigned int>::reallocElts(a1 + 152280, 1, 1);
          v28 = *(a1 + 152288);
        }

        *(*(a1 + 152280) + 4 * v28) = v27 & 0x3FFFFF | (v26 << 22);
        ++*(a1 + 152288);
        ++v24;
      }

      while (v24 < *(a3 + 8));
    }

    TreePhoneRec::setMultipleEndingWords(*(a1 + 152264) + 24 * a2, v23, v11);
  }

  if (*(a3 + 8))
  {
    v29 = 0;
    do
    {
      ReturnListMgr::setEffectiveLmForCwid((a1 + 151552), *(*a3 + 4 * v29), *(*(*(a1 + 16) + 272) + 2 * (*(*a3 + 4 * v29) & 0xFFFFFF)));
      ++v29;
    }

    while (v29 < *(a3 + 8));
  }
}

void sub_26285D248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t TreePrefilterer::setAllPhoneRecBestLms(uint64_t this)
{
  v1 = *(this + 152272);
  v2 = v1 - 1;
  if (v1 != 1)
  {
    v3 = this;
    v4 = (*(this + 152264) + 24 * v2 + 20);
    do
    {
      this = TreePrefilterer::calcBestLm(v3, v2);
      *v4 = *v4 & 0xE000 | this;
      v4 -= 12;
      --v2;
    }

    while (v2);
  }

  return this;
}

uint64_t TreePrefilterer::calcBestLm(TreePrefilterer *this, unsigned int a2)
{
  v2 = *(this + 19033);
  v3 = v2 + 24 * a2;
  if ((*(v3 + 20) & 0x2000) != 0)
  {
    v5 = (v3 + 4);
    if ((*(v3 + 20) & 0x4000) == 0)
    {
      v5 = (*(this + 19035) + 4 * (*v5 & 0x3FFFFF));
    }

    result = *v5 >> 22;
  }

  else
  {
    result = 0x7FFFFFFFLL;
  }

  v6 = *(v3 + 18);
  if (*(v3 + 18))
  {
    v7 = *(v3 + 8);
    do
    {
      if (result >= (*(v2 + 24 * v7 + 20) & 0x1FFF))
      {
        result = *(v2 + 24 * v7 + 20) & 0x1FFF;
      }

      else
      {
        result = result;
      }

      ++v7;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t TreePrefilterer::computePicModelIds(TreePrefilterer *this, StateMgr **a2, unsigned int a3)
{
  v5 = this + 151552;
  Voc::clearPrefPicModels(a2);
  v6 = *(v5 + 93);
  v7 = *(v6 + 144);
  v8 = *(v6 + 148);
  CollWords = StateMgr::getCollWords(a2[7], a3, 0xFFFFu, 1, v9, v10, v11, v12);
  v30[0] = 0;
  v30[1] = 0;
  v28 = 0;
  v29 = 0;
  v14 = *(CollWords + 8);
  if (v14)
  {
    v15 = 0;
    v16 = a2[6];
    v24 = CollWords;
    do
    {
      v17 = *(*CollWords + 4 * v15);
      if (*(*(v16 + 4) + 2 * v17))
      {
        v27 = 0;
        v26 = 0;
        Voc::getPrefPron(a2, v17, &v27, &v26);
        v25 = v17;
        v18 = *(*(v16 + 6) + 4 * v17);
        LODWORD(v29) = 0;
        v19 = v26;
        if (v26)
        {
          for (i = 0; i < v26; ++i)
          {
            PicMgr::getPrefContextPelIdAndDurIds(*(v5 + 86), v7, v8, v16 + 11, v18, v27, v19, i, v30);
            v21 = Voc::findOrAddPrefPicModel(a2, v30);
            v22 = v29;
            if (v29 == HIDWORD(v29))
            {
              DgnPrimArray<unsigned int>::reallocElts(&v28, 1, 1);
              v22 = v29;
            }

            *(v28 + 4 * v22) = v21;
            LODWORD(v29) = v29 + 1;
            v19 = v26;
          }
        }

        Voc::addPrefPicModelIdPron(a2, v25, &v28);
        CollWords = v24;
        v14 = *(v24 + 8);
      }

      ++v15;
    }

    while (v15 < v14);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v28);
  return DgnIArray<Utterance *>::~DgnIArray(v30);
}

void sub_26285D4C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnIArray<Utterance *>::~DgnIArray(va1);
  _Unwind_Resume(a1);
}

void *Latch<MemChunkRegion,LatchAdapter>::Latch(void *a1, uint64_t a2, int a3)
{
  *a1 = 0;
  if (!a3)
  {
    return a1;
  }

  *a1 = a2;
  if (MemChunkRegion::smTlsID == -1)
  {
    v6 = &gGlobalMemChunkRegion;
  }

  else
  {
    v5 = pthread_getspecific(MemChunkRegion::smTlsID);
    if (v5)
    {
      v6 = *v5;
      if (*v5)
      {
        goto LABEL_8;
      }

      pthread_setspecific(MemChunkRegion::smTlsID, 0);
    }

    v6 = &gGlobalMemChunkRegion;
  }

LABEL_8:
  if (v6 != a2 && (a2 || v6 != &gGlobalMemChunkRegion))
  {
    if (!a2 || a2 == &gGlobalMemChunkRegion)
    {
      v7 = MemChunkRegion::smTlsID;
      v8 = 0;
    }

    else
    {
      *(a2 + 1288) = a2;
      v7 = MemChunkRegion::smTlsID;
      v8 = (a2 + 1288);
    }

    pthread_setspecific(v7, v8);
  }

  *a1 = v6;
  return a1;
}

char *mrec_qsort_r<SortCwidsByWordEndScope>(char *result, unint64_t a2, int64_t a3, uint64_t a4)
{
  v6 = -a3;
  v7 = a3 != 8;
  v8 = ((result | a3) & 7) == 0;
  if (((result | a3) & 7) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = a3 != 8;
  }

  if (a2 < 7)
  {
LABEL_5:
    if ((a2 * a3) > a3)
    {
      v10 = &result[a2 * a3];
      v11 = &result[a3];
      v12 = result;
      do
      {
        if (v11 > result)
        {
          v13 = v12;
          v14 = v11;
          do
          {
            v15 = v14;
            v14 = (v14 + v6);
            v16 = *(*(a4 + 16) + 272);
            v17 = *(v16 + 2 * (*v14 & 0xFFFFFF));
            v18 = *(v16 + 2 * (*v15 & 0xFFFFFF));
            if (v17 < v18)
            {
              break;
            }

            if (*v14 <= *v15 && v17 <= v18)
            {
              break;
            }

            if (v9)
            {
              v20 = 0;
              if (v8)
              {
                v21 = v14;
                do
                {
                  v22 = *&v15[2 * v20];
                  *&v15[2 * v20] = *v21;
                  *v21++ = v22;
                  ++v20;
                }

                while (a3 >> 3 != v20);
              }

              else
              {
                v24 = a3;
                do
                {
                  v25 = *(v15 + v20);
                  *(v15 + v20) = *(v13 + v20);
                  *(v13 + v20++) = v25;
                  --v24;
                }

                while (v24);
              }
            }

            else
            {
              v23 = *v15;
              *v15 = *v14;
              *v14 = v23;
            }

            v13 = (v13 + v6);
          }

          while (v14 > result);
        }

        v11 += a3;
        v12 = (v12 + a3);
      }

      while (v11 < v10);
    }

    return result;
  }

  v26 = a3 >> 3;
  while (2)
  {
    v27 = &result[(a2 >> 1) * a3];
    if (a2 == 7)
    {
      goto LABEL_134;
    }

    v28 = &result[(a2 - 1) * a3];
    v29 = *(a4 + 16);
    if (a2 <= 0x28)
    {
      v35 = *(v29 + 272);
      v31 = result;
    }

    else
    {
      v30 = (a2 >> 3) * a3;
      v31 = &result[v30];
      v32 = &result[2 * v30];
      v33 = *result;
      v34 = *&result[v30];
      v35 = *(v29 + 272);
      v36 = *(v35 + 2 * (*result & 0xFFFFFF));
      v37 = *(v35 + 2 * (*&v34 & 0xFFFFFFLL));
      if (v36 < v37 || (v33 < v34 ? (v38 = v36 <= v37) : (v38 = 0), v38))
      {
        v43 = *v32;
        v44 = *(v35 + 2 * (*v32 & 0xFFFFFF));
        if (v37 >= v44 && (v34 >= v43 || v37 > v44))
        {
          v31 = &result[2 * v30];
          if (v36 >= v44)
          {
            if (v36 > v44 || v33 >= v43)
            {
              v31 = result;
            }

            else
            {
              v31 = &result[2 * v30];
            }
          }
        }
      }

      else
      {
        v39 = *v32;
        v40 = *(v35 + 2 * (*v32 & 0xFFFFFF));
        if (v37 < v40 || (v34 <= v39 ? (v41 = v37 <= v40) : (v41 = 0), v41))
        {
          v31 = result;
          if (v36 >= v40)
          {
            v42 = v36 > v40 || v33 >= v39;
            if (v42)
            {
              v31 = &result[2 * v30];
            }

            else
            {
              v31 = result;
            }
          }
        }
      }

      v47 = &v27[-v30];
      v48 = &v27[v30];
      v49 = *&v27[-v30];
      v50 = *v27;
      v51 = *(v35 + 2 * (*&v49 & 0xFFFFFFLL));
      v52 = *(v35 + 2 * (*v27 & 0xFFFFFF));
      if (v51 < v52 || (v49 < v50 ? (v53 = v51 <= v52) : (v53 = 0), v53))
      {
        v57 = *v48;
        v58 = *(v35 + 2 * (*v48 & 0xFFFFFF));
        if (v52 >= v58 && (v50 >= v57 || v52 > v58))
        {
          v27 += v30;
          if (v51 >= v58)
          {
            if (v51 > v58 || v49 >= v57)
            {
              v27 = v47;
            }

            else
            {
              v27 = v48;
            }
          }
        }
      }

      else
      {
        v54 = *v48;
        v55 = *(v35 + 2 * (*v48 & 0xFFFFFF));
        if (v52 < v55 || v50 <= v54 && v52 <= v55)
        {
          v27 -= v30;
          if (v51 >= v55)
          {
            if (v51 > v55 || v49 >= v54)
            {
              v27 = v48;
            }

            else
            {
              v27 = v47;
            }
          }
        }
      }

      v61 = &v28[-2 * v30];
      v62 = &v28[-v30];
      v63 = *v61;
      v64 = *v62;
      v65 = *(v35 + 2 * (*v61 & 0xFFFFFF));
      v66 = *(v35 + 2 * (*v62 & 0xFFFFFF));
      if (v65 >= v66 && (v63 >= v64 || v65 > v66))
      {
        v79 = *v28;
        v80 = *(v35 + 2 * (*v28 & 0xFFFFFF));
        if (v66 < v80 || v64 <= v79 && v66 <= v80)
        {
          if (v65 >= v80)
          {
            if (v65 <= v80 && v63 < v79)
            {
              v28 = v61;
            }
          }

          else
          {
            v28 = v61;
          }

          goto LABEL_93;
        }
      }

      else
      {
        v67 = *v28;
        v68 = *(v35 + 2 * (*v28 & 0xFFFFFF));
        if (v66 >= v68 && (v64 >= v67 || v66 > v68))
        {
          if (v65 >= v68 && (v65 > v68 || v63 >= v67))
          {
            v28 = v61;
          }

          goto LABEL_93;
        }
      }

      v28 = v62;
    }

LABEL_93:
    v69 = *v31;
    v70 = *v27;
    v71 = *(v35 + 2 * (*v31 & 0xFFFFFF));
    v72 = *(v35 + 2 * (*v27 & 0xFFFFFF));
    if (v71 < v72)
    {
      v73 = *v28;
      goto LABEL_108;
    }

    v73 = *v28;
    if (v69 < v70 && v71 <= v72)
    {
LABEL_108:
      v77 = *(v35 + 2 * (v73 & 0xFFFFFF));
      if (v72 >= v77 && (v70 >= v73 || v72 > v77))
      {
        if (v71 >= v77)
        {
          if (v71 > v77 || v69 >= v73)
          {
            v27 = v31;
          }

          else
          {
            v27 = v28;
          }

          if (!v9)
          {
            goto LABEL_149;
          }
        }

        else
        {
          v27 = v28;
          if (!v9)
          {
            goto LABEL_149;
          }
        }

LABEL_135:
        if (v8)
        {
          v83 = result;
          v84 = a3 >> 3;
          do
          {
            v85 = *v83;
            *v83 = *v27;
            v83 += 8;
            *v27 = v85;
            v27 += 8;
            --v84;
          }

          while (v84);
        }

        else
        {
          v86 = a3;
          v87 = result;
          do
          {
            v88 = *v87;
            *v87++ = *v27;
            *v27++ = v88;
            --v86;
          }

          while (v86);
        }

        goto LABEL_150;
      }

      goto LABEL_134;
    }

    v75 = *(v35 + 2 * (*&v73 & 0xFFFFFFLL));
    if (v72 < v75 || (v70 <= v73 ? (v76 = v72 <= v75) : (v76 = 0), v76))
    {
      if (v71 < v75)
      {
        v27 = v31;
        if (v9)
        {
          goto LABEL_135;
        }

        goto LABEL_149;
      }

      if (v71 > v75 || v69 >= v73)
      {
        v27 = v28;
      }

      else
      {
        v27 = v31;
      }
    }

LABEL_134:
    if (v9)
    {
      goto LABEL_135;
    }

LABEL_149:
    v90 = *result;
    *result = *v27;
    *v27 = v90;
LABEL_150:
    v91 = 0;
    v92 = &result[a3];
    v93 = &result[(a2 - 1) * a3];
    v94 = v93;
    v95 = &result[a3];
    v96 = &result[a3];
    while (1)
    {
LABEL_151:
      if (v95 > v94)
      {
        goto LABEL_172;
      }

      v97 = *v95;
      v98 = *result;
      v99 = *(*(a4 + 16) + 272);
      v100 = *(v99 + 2 * (*v95 & 0xFFFFFF));
      v101 = *(v99 + 2 * (*result & 0xFFFFFF));
      if (v100 >= v101)
      {
        if (v100 > v101)
        {
          goto LABEL_172;
        }

        if (v97 >= v98)
        {
          break;
        }
      }

LABEL_184:
      v95 += a3;
    }

    if (v97 <= v98)
    {
      if (v9)
      {
        v102 = 0;
        if (v8)
        {
          do
          {
            v103 = *&v96[8 * v102];
            *&v96[8 * v102] = *&v95[8 * v102];
            *&v95[8 * v102++] = v103;
          }

          while (v26 != v102);
        }

        else
        {
          do
          {
            v104 = v96[v102];
            v96[v102] = v95[v102];
            v95[v102++] = v104;
          }

          while (a3 != v102);
        }
      }

      else
      {
        v117 = *v96;
        *v96 = *v95;
        *v95 = v117;
      }

      v96 += a3;
      v91 = 1;
      goto LABEL_184;
    }

LABEL_172:
    while (v95 <= v94)
    {
      v109 = *v94;
      v110 = *result;
      v111 = *(*(a4 + 16) + 272);
      v112 = *(v111 + 2 * (*v94 & 0xFFFFFF));
      v113 = *(v111 + 2 * (*result & 0xFFFFFF));
      if (v112 < v113)
      {
        goto LABEL_176;
      }

      if (v112 <= v113)
      {
        if (v109 < v110)
        {
LABEL_176:
          if (v9)
          {
            v114 = 0;
            if (v8)
            {
              do
              {
                v115 = *&v95[8 * v114];
                *&v95[8 * v114] = *&v94[8 * v114];
                *&v94[8 * v114++] = v115;
              }

              while (v26 != v114);
            }

            else
            {
              do
              {
                v116 = v95[v114];
                v95[v114] = v94[v114];
                v94[v114++] = v116;
              }

              while (a3 != v114);
            }
          }

          else
          {
            v118 = *v95;
            *v95 = *v94;
            *v94 = v118;
          }

          v95 += a3;
          v94 += v6;
          v91 = 1;
          goto LABEL_151;
        }

        if (v109 <= v110)
        {
          if (v9)
          {
            v105 = 0;
            if (v8)
            {
              do
              {
                v106 = *&v94[8 * v105];
                *&v94[8 * v105] = *&v93[8 * v105];
                *&v93[8 * v105++] = v106;
              }

              while (v26 != v105);
            }

            else
            {
              do
              {
                v107 = v94[v105];
                v94[v105] = v93[v105];
                v93[v105++] = v107;
              }

              while (a3 != v105);
            }
          }

          else
          {
            v108 = *v94;
            *v94 = *v93;
            *v93 = v108;
          }

          v93 += v6;
          v91 = 1;
        }
      }

      v94 += v6;
    }

    v119 = &result[a2 * a3];
    if (v91)
    {
      v120 = v95 - v96;
      if (v96 - result >= v95 - v96)
      {
        v121 = v95 - v96;
      }

      else
      {
        v121 = v96 - result;
      }

      if (v121)
      {
        if (v8)
        {
          v122 = &v95[-v121];
          v123 = v121 >> 3;
          v124 = result;
          do
          {
            v125 = *v124;
            *v124 = *v122;
            v124 += 8;
            *v122 = v125;
            v122 += 8;
            --v123;
          }

          while (v123);
        }

        else
        {
          v126 = -v121;
          v127 = result;
          do
          {
            v128 = *v127;
            *v127++ = v95[v126];
            v95[v126] = v128;
            v42 = __CFADD__(v126++, 1);
          }

          while (!v42);
        }
      }

      v129 = v93 - v94;
      v130 = v119 - &v93[a3];
      if (v93 - v94 < v130)
      {
        v130 = v93 - v94;
      }

      if (v130)
      {
        if (v8)
        {
          v131 = &v119[-v130];
          v132 = v130 >> 3;
          do
          {
            v133 = *v95;
            *v95 = *v131;
            v95 += 8;
            *v131 = v133;
            v131 += 8;
            --v132;
          }

          while (v132);
        }

        else
        {
          v134 = -v130;
          do
          {
            v135 = *v95;
            *v95++ = v119[v134];
            v119[v134] = v135;
            v42 = __CFADD__(v134++, 1);
          }

          while (!v42);
        }
      }

      if (v120 > a3)
      {
        result = mrec_qsort_r<SortCwidsByWordEndScope>();
      }

      if (v129 > a3)
      {
        result = &v119[-v129];
        a2 = v129 / a3;
        v8 = (((v119 - v129) | a3) & 7) == 0;
        if ((((v119 - v129) | a3) & 7) != 0)
        {
          v9 = 2;
        }

        else
        {
          v9 = v7;
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
      v137 = result;
      do
      {
        if (v92 > result)
        {
          v138 = v137;
          v139 = v92;
          do
          {
            v140 = v139;
            v139 = (v139 + v6);
            v141 = *(*(a4 + 16) + 272);
            v142 = *(v141 + 2 * (*v139 & 0xFFFFFF));
            v143 = *(v141 + 2 * (*v140 & 0xFFFFFF));
            if (v142 < v143)
            {
              break;
            }

            if (*v139 <= *v140 && v142 <= v143)
            {
              break;
            }

            if (v9)
            {
              v145 = 0;
              if (v8)
              {
                v146 = v139;
                do
                {
                  v147 = *&v140[2 * v145];
                  *&v140[2 * v145] = *v146;
                  *v146++ = v147;
                  ++v145;
                }

                while (v26 != v145);
              }

              else
              {
                v149 = a3;
                do
                {
                  v150 = *(v140 + v145);
                  *(v140 + v145) = *(v138 + v145);
                  *(v138 + v145++) = v150;
                  --v149;
                }

                while (v149);
              }
            }

            else
            {
              v148 = *v140;
              *v140 = *v139;
              *v139 = v148;
            }

            v138 = (v138 + v6);
          }

          while (v139 > result);
        }

        v92 += a3;
        v137 = (v137 + a3);
      }

      while (v92 < v119);
    }

    return result;
  }
}

unint64_t LexTreePathIter::nextStandard(uint64_t **this)
{
  v4 = this[1];
  result = (this + 1);
  v3 = v4;
  v5 = *(this + 4);
  v6 = v5 - 1;
  v7 = this[5];
  v8 = *(this + 12);
  v9 = *(v7 + (v8 - 1)) + *(v4 + v5 - 1);
  v10 = **this;
  v11 = v10 + 24 * v9;
  if (*(v11 + 18))
  {
    v12 = *(v11 + 8);
    if (v5 == *(this + 5))
    {
      result = DgnPrimArray<unsigned int>::reallocElts(result, 1, 1);
      v5 = *(this + 4);
      v3 = this[1];
      v10 = **this;
    }

    *(v3 + v5) = v12;
    ++*(this + 4);
    v13 = *(v10 + 24 * v9 + 18);
    v14 = *(this + 8);
    if (v14 == *(this + 9))
    {
      result = DgnPrimArray<unsigned int>::reallocElts((this + 3), 1, 1);
      v14 = *(this + 8);
    }

    *(this[3] + v14) = v13;
    ++*(this + 8);
    v15 = *(this + 12);
    if (v15 == *(this + 13))
    {
      result = DgnPrimArray<unsigned int>::reallocElts((this + 5), 1, 1);
      v15 = *(this + 12);
    }

    *(this[5] + v15) = 0;
    ++*(this + 12);
  }

  else if (v8)
  {
    v16 = 0;
    v17 = 0;
    v18 = this[3];
    v19 = *(this + 8) - 1;
    while (1)
    {
      result = *(v18 + (v19 + v17));
      if (*(v7 + (v8 + v17 - 1)) + 1 != result)
      {
        break;
      }

      result = v6 + v17;
      *(this + 4) = result;
      *(this + 8) = v19 + v17;
      *(this + 12) = v8 - 1 + v17--;
      if (v8 == ++v16)
      {
        return result;
      }
    }

    ++*(v7 + (v8 + v17 - 1));
  }

  return result;
}

void LexTreePathIter::~LexTreePathIter(LexTreePathIter *this)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 40);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 24);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 8);
}

uint64_t TreePrefilterer::setupAllEffectiveLms(TreePrefilterer *this)
{
  v16 = 0;
  v17 = 0;
  DgnPrimArray<unsigned int>::reallocElts(&v16, 1, 1);
  *(v16 + 4 * v17) = 0;
  LODWORD(v17) = v17 + 1;
  v2 = (this + 152264);
  LexTreePathIter::LexTreePathIter(&v10, this + 152264, *(this + 38064));
  while (v15)
  {
    v3 = *(v11 + 4 * (v12 - 1));
    v4 = *(v14 + 4 * (v15 - 1));
    v5 = v17;
    if (v17 > v15 - 1)
    {
      LODWORD(v17) = v15 - 1;
      v5 = v15 - 1;
    }

    v6 = v4 + v3;
    v7 = *(*v2 + 24 * (v4 + v3) + 20);
    v8 = v7;
    if (v5 == HIDWORD(v17))
    {
      DgnPrimArray<unsigned int>::reallocElts(&v16, 1, 1);
      v5 = v17;
      v8 = *(*v2 + 24 * v6 + 20);
    }

    *(v16 + 4 * v5) = v7 & 0x1FFF;
    LODWORD(v17) = v17 + 1;
    if ((v8 & 0x2000) != 0)
    {
      TreePrefilterer::setupEffectiveLms(this, v6, v7 & 0x1FFF);
    }

    LexTreePathIter::nextStandard(&v10);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v14);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v13);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v11);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v16);
}

void sub_26285E138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void TreePrefilterer::setupEffectiveLms(TreePrefilterer *this, unsigned int a2, int a3)
{
  if (*(*(this + 19037) + 76) == -1)
  {
    v5 = 20000;
  }

  else
  {
    v5 = *(*(this + 19037) + 76);
  }

  v17 = 0;
  v6 = *(this + 19033) + 24 * a2;
  v7 = *(v6 + 20);
  v8 = *(v6 + 4);
  if ((v7 & 0x4000) != 0)
  {
    v17 = v8;
    v11 = &v17;
    v10 = 1;
  }

  else
  {
    if (v8 < 0x400000)
    {
      return;
    }

    v9 = *&v8 & 0x3FFFFFLL;
    v10 = v8 >> 22;
    v11 = (*(this + 19035) + 4 * v9);
  }

  v12 = v10;
  do
  {
    v13 = *v11++;
    v14 = v13 >> 22;
    CwidForIndex = getCwidForIndex(*(this + 4), v13 & 0x3FFFFF);
    ReturnListMgr::setEffectiveLmForCwid((this + 151552), CwidForIndex, v13 >> 22);
    v16 = (v13 >> 22) - a3;
    if (v16 > v5)
    {
      ReturnListMgr::setEffectiveLmForCwid((this + 151552), CwidForIndex, v14 + v5 - v16);
    }

    --v12;
  }

  while (v12);
}

uint64_t LexTreePathIter::LexTreePathIter(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  v5 = a1 + 24;
  *(a1 + 40) = 0u;
  v6 = a1 + 40;
  *a1 = a2;
  DgnPrimArray<unsigned int>::reallocElts(a1 + 8, 1, 1);
  *(*(a1 + 8) + 4 * (*(a1 + 16))++) = a3;
  v7 = *(a1 + 32);
  if (v7 == *(a1 + 36))
  {
    DgnPrimArray<unsigned int>::reallocElts(v5, 1, 1);
    v7 = *(a1 + 32);
  }

  *(*(a1 + 24) + 4 * v7) = 1;
  ++*(a1 + 32);
  v8 = *(a1 + 48);
  if (v8 == *(a1 + 52))
  {
    DgnPrimArray<unsigned int>::reallocElts(v6, 1, 1);
    v8 = *(a1 + 48);
  }

  *(*(a1 + 40) + 4 * v8) = 0;
  ++*(a1 + 48);
  LexTreePathIter::nextStandard(a1);
  return a1;
}

void sub_26285E350(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1);
  _Unwind_Resume(a1);
}

void MrecInitModule_hashbase_mrecutil(void)
{
  if (!gParDebugShowHashStatsOnDestruction)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugShowHashStatsOnDestruction", &byte_262899963, &byte_262899963, 0, SetShadowDebugShowHashStatsOnDestruction, 0);
    *v2 = &unk_287527EA0;
    gParDebugShowHashStatsOnDestruction = v2;
    gShadowDebugShowHashStatsOnDestruction = 0;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugShowHashStatsOnDestruction);
  }
}

void HashBase::HashBase(HashBase *this, const char *a2)
{
  *this = &unk_287523530;
  *(this + 1) = 0;
  *(this + 13) = 0;
}

uint64_t DgnPool::sizeObject(uint64_t a1, int a2)
{
  v4 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v4 = 12;
  }

  v5 = a2 != 3;
  v6 = (a1 + 8);
  if (a2 == 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v8 = 4;
  }

  else
  {
    active = sizeObject<ActiveWord *>(a1 + 16, a2);
    v7 += active + sizeObject<unsigned int>(a1 + 32, a2);
    v8 = 4;
    if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
    {
      v8 = 0;
    }
  }

  v10 = *(a1 + v8);
  v11 = 1;
  do
  {
    v6 = *v6;
    --v11;
  }

  while (v6);
  result = v7 + 4 * v5;
  if ((a2 & 0xFFFFFFFD) != 0)
  {
    if (a2 != 1)
    {
      return result;
    }

    v13 = *(a1 + 48) + v11;
  }

  else
  {
    v13 = *(a1 + 48);
  }

  result += (v13 * v10);
  return result;
}

uint64_t StartupPronGuessParamSpecMgr(void)
{
  v0 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v0, "PronGuessLMPerBackoffWordPenalty", &byte_262899963, &byte_262899963, &sPronGuessLMPerBackoffWordPenaltyIntHistory);
  v1 = MemChunkAlloc(0x38uLL, 0);
  StringParamSpec::StringParamSpec(v1, "PronGuessFragmentSuffixTag", &byte_262899963, &byte_262899963, &sPronGuessFragmentSuffixTagStringHistory);
  v2 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v2, "PronGuessMinNewPronLength", &byte_262899963, &byte_262899963, &sPronGuessMinNewPronLengthIntHistory);
  ParamSpecMgr::addParam(qword_281051FA8, v1);
  ParamSpecMgr::addParam(qword_281051FA8, v0);
  ParamSpecMgr::addParam(qword_281051FA8, v2);
  v3 = qword_281051FA8;

  return ParamSpecMgr::sortParams(v3);
}

_DWORD *PronGuessParamSet::PronGuessParamSet(_DWORD *a1, const char *a2, int a3, int a4, int a5)
{
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 2), a2);
  a1[6] = a3;
  a1[7] = a4;
  a1[8] = a5;
  a1[9] = 0;
  *a1 = &unk_287526E78;
  DgnString::DgnString((a1 + 10));
  (*(*a1 + 16))(a1);
  return a1;
}

void sub_26285E768(_Unwind_Exception *a1)
{
  DgnString::~DgnString((v1 + 5));
  *v1 = v2;
  DgnString::~DgnString((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t PronGuessParamSet::PronGuessParamSet(uint64_t a1, uint64_t a2, char *a3, int a4, int a5, int a6)
{
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 8), a3);
  *(a1 + 24) = a4;
  *(a1 + 28) = a5;
  *(a1 + 32) = a6;
  *(a1 + 36) = 0;
  *a1 = &unk_287526E78;
  DgnString::DgnString((a1 + 40));
  DgnString::operator=((a1 + 40), (a2 + 40));
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

void sub_26285E840(_Unwind_Exception *a1)
{
  DgnString::~DgnString((v1 + 5));
  *v1 = v2;
  DgnString::~DgnString((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t PronGuessParamSet::setDefaults(PronGuessParamSet *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Default_string = ParamSpecMgr::ParamGetDefault_string(qword_281051FA8, 1, 0, 0, a5, a6, a7, a8);
  DgnString::operator=((this + 40), Default_string);
  *(this + 14) = ParamSpecMgr::ParamGetDefault_int(qword_281051FA8, 2, 0, 0, v10, v11, v12, v13);
  result = ParamSpecMgr::ParamGetDefault_int(qword_281051FA8, 3, 0, 0, v14, v15, v16, v17);
  *(this + 15) = result;
  return result;
}

uint64_t PronGuessParamSet::sizeObject(uint64_t a1, int a2)
{
  v4 = sizeObject(a1 + 8) + 16 * (a2 != 3);
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v4 += 8 * (a2 != 3) + sizeObject(a1 + 40);
  }

  return v4;
}

void PronGuessParamSet::setParamSetPronGuessFragmentSuffixTag(PronGuessParamSet *this, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 9))
  {
    throwParamSetSetFailed("PronGuessFragmentSuffixTag", "string", a3, a4, a5, a6, a7, a8);
  }

  else
  {
    DgnString::operator=((this + 40), a2);
  }
}

uint64_t PronGuessParamSet::getBoolParameter(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 3:
      v8 = "int";
      v9 = 3;
      break;
    case 2:
      v8 = "int";
      v9 = 2;
      break;
    case 1:
      v8 = "string";
      v9 = 1;
      break;
    default:
      throwWrongParamIdValue(a2, "BOOL", a3, a4, a5, a6, a7, a8);
      return 0;
  }

  throwWrongTypeForParamId(v9, v8, "BOOL", a4, a5, a6, a7, a8);
  return 0;
}

uint64_t PronGuessParamSet::getIntParameter(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 != 3)
  {
    if (a2 != 2)
    {
      if (a2 == 1)
      {
        throwWrongTypeForParamId(1, "string", "int", a4, a5, a6, a7, a8);
      }

      else
      {
        throwWrongParamIdValue(a2, "int", a3, a4, a5, a6, a7, a8);
      }

      return 0;
    }

    if (a3 <= 1)
    {
      if (!a3)
      {
        return *(a1 + 56);
      }

      if (a3 == 1)
      {
        v8 = qword_281051FA8;
        v9 = 2;
LABEL_13:
        ParamByParamId = ParamSpecMgr::getParamByParamId(v8, v9, a3, a4, a5, a6, a7, a8);
        v11 = **ParamByParamId;
      }

      goto LABEL_22;
    }

    if (a3 != 2)
    {
      if (a3 != 3)
      {
        goto LABEL_22;
      }

      v13 = qword_281051FA8;
      v14 = 2;
LABEL_21:
      v15 = ParamSpecMgr::getParamByParamId(v13, v14, a3, a4, a5, a6, a7, a8);
      v16 = **v15;
    }

    v17 = qword_281051FA8;
    v18 = 2;
    goto LABEL_29;
  }

  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
        goto LABEL_22;
      }

      v13 = qword_281051FA8;
      v14 = 3;
      goto LABEL_21;
    }

    v17 = qword_281051FA8;
    v18 = 3;
LABEL_29:
    v19 = ParamSpecMgr::getParamByParamId(v17, v18, a3, a4, a5, a6, a7, a8);
    v20 = **v19;
  }

  if (!a3)
  {
    return *(a1 + 60);
  }

  if (a3 == 1)
  {
    v8 = qword_281051FA8;
    v9 = 3;
    goto LABEL_13;
  }

LABEL_22:
  throwWrongQueryMode(a3, "int", a3, a4, a5, a6, a7, a8);
  return 0;
}

double PronGuessParamSet::getDoubleParameter(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 3:
      v8 = "int";
      v9 = 3;
      break;
    case 2:
      v8 = "int";
      v9 = 2;
      break;
    case 1:
      v8 = "string";
      v9 = 1;
      break;
    default:
      throwWrongParamIdValue(a2, "double", a3, a4, a5, a6, a7, a8);
      return 0.0;
  }

  throwWrongTypeForParamId(v9, v8, "double", a4, a5, a6, a7, a8);
  return 0.0;
}

char *PronGuessParamSet::getStringParameter(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == 3)
  {
    v9 = 3;
    goto LABEL_11;
  }

  if (a2 == 2)
  {
    v9 = 2;
LABEL_11:
    throwWrongTypeForParamId(v9, "int", "string", a4, a5, a6, a7, a8);
    return 0;
  }

  if (a2 != 1)
  {
    throwWrongParamIdValue(a2, "string", a3, a4, a5, a6, a7, a8);
    return 0;
  }

  if (a3 == 1)
  {
    ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051FA8, 1, a3, a4, a5, a6, a7, a8);
    v11 = **ParamByParamId;
  }

  if (a3)
  {
    throwWrongQueryMode(a3, "string", a3, a4, a5, a6, a7, a8);
    return 0;
  }

  if (*(a1 + 48))
  {
    return *(a1 + 40);
  }

  else
  {
    return &byte_262899963;
  }
}

uint64_t PronGuessParamSet::getEnumParameter(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 3:
      v8 = "int";
      v9 = 3;
      break;
    case 2:
      v8 = "int";
      v9 = 2;
      break;
    case 1:
      v8 = "string";
      v9 = 1;
      break;
    default:
      throwWrongParamIdValue(a2, "enum", a3, a4, a5, a6, a7, a8);
      return 0;
  }

  throwWrongTypeForParamId(v9, v8, "BOOL", a4, a5, a6, a7, a8);
  return 0;
}

void PronGuessParamSet::setBoolParameter(PronGuessParamSet *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (a2 != 3)
  {
    if (a2 != 2)
    {
      if (a2 != 1)
      {
        goto LABEL_7;
      }

      throwWrongTypeForParamId(1, "string", "BOOL", a4, a5, a6, a7, a8);
    }

    throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
  }

  throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
LABEL_7:

  throwWrongParamIdValue(v8, "BOOL", a3, a4, a5, a6, a7, a8);
}

void PronGuessParamSet::setIntParameter(PronGuessParamSet *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  switch(a2)
  {
    case 3:
      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051FA8, 3, a3, a4, a5, a6, a7, a8);
      if (ParamByParamId)
      {
        v28 = **ParamByParamId;
      }

      IntParamSpec::validateValue(ParamByParamId, v8, 0, 0, v24, v25, v26, v27);
      if (!*(this + 9))
      {
        *(this + 15) = v8;
        return;
      }

      v22 = "PronGuessMinNewPronLength";
      goto LABEL_13;
    case 2:
LABEL_5:
      v10 = ParamSpecMgr::getParamByParamId(qword_281051FA8, 2, a3, a4, a5, a6, a7, a8);
      if (v10)
      {
        v15 = **v10;
      }

      IntParamSpec::validateValue(v10, v8, 0, 0, v11, v12, v13, v14);
      if (!*(this + 9))
      {
        *(this + 14) = v8;
        return;
      }

      v22 = "PronGuessLMPerBackoffWordPenalty";
LABEL_13:

      throwParamSetSetFailed(v22, "int", v16, v17, v18, v19, v20, v21);
      return;
    case 1:
      throwWrongTypeForParamId(1, "string", "int", a4, a5, a6, a7, a8);
      goto LABEL_5;
  }

  throwWrongParamIdValue(a2, "int", a3, a4, a5, a6, a7, a8);
}

void PronGuessParamSet::setDoubleParameter(PronGuessParamSet *this, int a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a2;
  if (a2 != 3)
  {
    if (a2 != 2)
    {
      if (a2 != 1)
      {
        goto LABEL_7;
      }

      throwWrongTypeForParamId(1, "string", "double", a5, a6, a7, a8, a9);
    }

    throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
  }

  throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
LABEL_7:

  throwWrongParamIdValue(v9, "double", a4, a5, a6, a7, a8, a9);
}

void PronGuessParamSet::setStringParameter(PronGuessParamSet *this, int a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  switch(a2)
  {
    case 3:
      goto LABEL_8;
    case 2:
      throwWrongTypeForParamId(2, "int", "string", a4, a5, a6, a7, a8);
LABEL_8:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      break;
    case 1:

      PronGuessParamSet::setParamSetPronGuessFragmentSuffixTag(this, a3, a3, a4, a5, a6, a7, a8);
      return;
  }

  throwWrongParamIdValue(v8, "string", a3, a4, a5, a6, a7, a8);
}

void PronGuessParamSet::setEnumParameter(PronGuessParamSet *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (a2 != 3)
  {
    if (a2 != 2)
    {
      if (a2 != 1)
      {
        goto LABEL_7;
      }

      throwWrongTypeForParamId(1, "string", "BOOL", a4, a5, a6, a7, a8);
    }

    throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
  }

  throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
LABEL_7:

  throwWrongParamIdValue(v8, "enum", a3, a4, a5, a6, a7, a8);
}

void PronGuessParamSet::~PronGuessParamSet(PronGuessParamSet *this)
{
  *this = &unk_287526E78;
  DgnString::~DgnString((this + 40));
  *this = &unk_287528C00;
  DgnString::~DgnString((this + 8));
}

{
  *this = &unk_287526E78;
  DgnString::~DgnString((this + 40));
  *this = &unk_287528C00;
  DgnString::~DgnString((this + 8));

  JUMPOUT(0x26672B1B0);
}

void OnlineConstrainedTransAccMgr::printSize(OnlineConstrainedTransAccMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/ocntrnac.cpp", 149, &v66);
  if (v67)
  {
    v15 = v66;
  }

  else
  {
    v15 = &unk_2628992D4;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, v12, v13, v14, a3, &unk_2628992D4, a3, &unk_2628992D4, v15);
  DgnString::~DgnString(&v66);
  if (a2 != -1)
  {
    xlprintf("%d ", v16, v17, v18, v19, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v16, v17, v18, v19, a3, &unk_2628992D4);
  v20 = (a3 + 1);
  v21 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/ocntrnac.cpp", 151, &v66);
  if (v67)
  {
    v26 = v66;
  }

  else
  {
    v26 = &unk_2628992D4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v22, v23, v24, v25, (a3 + 1), &unk_2628992D4, (34 - a3), (34 - a3), v26, 4, 4, 0);
  DgnString::~DgnString(&v66);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/ocntrnac.cpp", 151, &v66);
  if (v67)
  {
    v31 = v66;
  }

  else
  {
    v31 = &unk_2628992D4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v27, v28, v29, v30, (a3 + 1), &unk_2628992D4, (34 - a3), (34 - a3), v31, 4, 4, 0);
  DgnString::~DgnString(&v66);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/ocntrnac.cpp", 151, &v66);
  if (v67)
  {
    v36 = v66;
  }

  else
  {
    v36 = &unk_2628992D4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, v33, v34, v35, (a3 + 1), &unk_2628992D4, (34 - a3), (34 - a3), v36, 4, 4, 0);
  v64 = a3;
  DgnString::~DgnString(&v66);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v37 = 12;
  }

  else
  {
    v37 = 16;
  }

  v38 = *(this + 6);
  v39 = *(this + 7);
  v40 = this;
  if (v39 >= v38)
  {
    v41 = 0;
    if (v38 > 0)
    {
      v37 += 4 * (v38 - 1) + 4;
    }

    v42 = v37 + 4 * (v39 - v38);
  }

  else
  {
    v41 = 4 * v38;
    v42 = v37;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/ocntrnac.cpp", 151, &v66);
  if (v67)
  {
    v47 = v66;
  }

  else
  {
    v47 = &unk_2628992D4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v43, v44, v45, v46, v20, &unk_2628992D4, v21, v21, v47, v42, v37, v41);
  DgnString::~DgnString(&v66);
  *a4 += v42;
  *a5 += v37;
  *a6 += v41;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v48 = 12;
  }

  else
  {
    v48 = 16;
  }

  v49 = *(v40 + 10);
  v50 = *(v40 + 11);
  if (v50 >= v49)
  {
    v51 = 0;
    if (v49 > 0)
    {
      v48 += 4 * (v49 - 1) + 4;
    }

    v52 = v48 + 4 * (v50 - v49);
  }

  else
  {
    v51 = 4 * v49;
    v52 = v48;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/ocntrnac.cpp", 151, &v66);
  if (v67)
  {
    v57 = v66;
  }

  else
  {
    v57 = &unk_2628992D4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, v54, v55, v56, v20, &unk_2628992D4, v21, v21, v57, v52, v48, v51);
  DgnString::~DgnString(&v66);
  *a4 += v52;
  *a5 += v48;
  *a6 += v51;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/ocntrnac.cpp", 153, &v66);
  if (v67)
  {
    v62 = v66;
  }

  else
  {
    v62 = &unk_2628992D4;
  }

  v63 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v58, v59, v60, v61, v64, &unk_2628992D4, (35 - v64), (35 - v64), v62, *a4, *a5, *a6);
  DgnString::~DgnString(&v66);
}

void sub_26285F76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void OnlineConstrainedTransAccMgr::saveOnlineConstrainedTransAcc(OnlineConstrainedTransAccMgr *this, DFile *a2, DFileChecksums *a3, int a4, int a5)
{
  if (a4)
  {

    OnlineConstrainedTransAccMgr::saveOCT(this, a2, a5);
  }

  else
  {
    v8 = OpenAndWriteMrecHeader(a2, 0x33u, a5, "MROCB!? ", 19, 1);
    v10 = 0;
    writeObject(v8, this, &v10);
    writeObject(v8, this + 1, &v10);
    writeObject(v8, this + 2, &v10);
    writeObject<unsigned int>(v8, this + 16, &v10);
    writeObject<unsigned int>(v8, this + 32, &v10);
    writeObjectChecksum(v8, &v10);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x33u, v10);
    DgnDelete<DgnStream>(v8);
  }
}

void OnlineConstrainedTransAccMgr::saveOCT(OnlineConstrainedTransAccMgr *this, DFile *a2, int a3)
{
  v41[6] = *MEMORY[0x277D85DE8];
  DgnTextFileWriter::DgnTextFileWriter(v39);
  DgnTextFileWriter::openDgnTextFileWriter(v39, a2, 0x34u, a3);
  v37 = 0;
  v38 = 0;
  DgnTextFile::legalDgnTextFileVersions(v39, sOCT_Versions, &v37, v6, v7, v8, v9, v10);
  DgnTextFileWriter::setFileType(v39, "OnlineConstrainedTransAcc", (v37 + 8 * (v38 - 1)));
  v41[0] = 0;
  v11 = realloc_array(0, v41, 0x14uLL, 0, 0, 1);
  v34 = v41[0];
  v35 = 5;
  v36 = v11 >> 2;
  v41[0] = 0;
  v33 = realloc_array(0, v41, 0x50uLL, 0, 0, 1) >> 4;
  *v31 = v41[0];
  v12 = 1;
  v13 = 0;
  do
  {
    DgnString::DgnString((*v31 + v13));
    v13 += 16;
  }

  while (v12++ != 5);
  v32 = 5;
  *v34 = 0;
  DgnString::operator=(*v31, "TableName");
  v34[1] = 3;
  DgnString::operator=((*v31 + 16), "CurrentState");
  v34[2] = 0;
  DgnString::operator=((*v31 + 32), "StrValue1");
  v34[3] = 0;
  DgnString::operator=((*v31 + 48), "StrValue2");
  v34[4] = 1;
  DgnString::operator=((*v31 + 64), "IntValue1");
  DgnTextFileWriter::setLineFieldFormat(v39, &v34, v31);
  DgnTextFileWriter::setHeaderFieldUnsigned(v39, "NumberOfStates", *this);
  DgnTextFileWriter::setHeaderFieldUnsigned(v39, "StartState", *(this + 1));
  DgnTextFileWriter::setHeaderFieldUnsigned(v39, "NumberOfAccumulateFactors", *(this + 2));
  v29 = "FrameSelection";
  v30 = "AutomatonTransition";
  v41[0] = "SilenceInitial";
  v41[1] = "SilenceAfterSilence";
  v41[2] = "SilenceAfterSpeech";
  v41[3] = "SpeechInitial";
  v41[4] = "SpeechAfterSilence";
  v41[5] = "SpeechAfterSpeech";
  v40[0] = "SilPel";
  v40[1] = "NonSilInitialPel";
  v40[2] = "NonSilNonInitialPel";
  v15 = &v30;
  v16 = *this;
  v17 = 1;
  v18 = 16;
  do
  {
    v19 = v17;
    if (v16)
    {
      v27 = v17;
      v20 = 0;
      v21 = 0;
      v22 = *v15;
      do
      {
        v23 = 0;
        v28 = v20;
        do
        {
          v24 = 0;
          v25 = v20;
          do
          {
            DgnTextFileWriter::setLineFieldValue(v39, 0, v22);
            DgnTextFileWriter::setLineFieldUnsignedValue(v39, 1u, v21);
            DgnTextFileWriter::setLineFieldValue(v39, 2u, v41[v23]);
            DgnTextFileWriter::setLineFieldValue(v39, 3u, v40[v24]);
            DgnTextFileWriter::setLineFieldIntegerValue(v39, 4u, *(*(this + v18) + 4 * v25));
            DgnTextFileWriter::writeNextLine(v39);
            ++v25;
            ++v24;
          }

          while (v24 != 3);
          ++v23;
          v20 += 3;
        }

        while (v23 != 6);
        ++v21;
        v16 = *this;
        v20 = v28 + 18;
      }

      while (v21 < *this);
      v19 = v27;
    }

    v17 = 0;
    v15 = &v29;
    v18 = 32;
  }

  while ((v19 & 1) != 0);
  DgnArray<DgnString>::releaseAll(v31);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v34);
  DgnIArray<Utterance *>::~DgnIArray(&v37);
  DgnTextFileWriter::~DgnTextFileWriter(v39);
  v26 = *MEMORY[0x277D85DE8];
}

void sub_26285FCA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void MrecInitModule_progcall_dfutil(void)
{
  if (!gParDebugProgressCallbacks)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugProgressCallbacks", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugProgressCallbacks = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugProgressCallbacks);
  }
}

void ProgressCallbackHandler::ProgressCallbackHandler(ProgressCallbackHandler *this, void (*a2)(unsigned int, const void *), const void *a3)
{
  *(this + 7) = 0;
  *(this + 8) = 0;
  *this = a2;
  *(this + 1) = a3;
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  if (a2)
  {
    a2(0, a3);
  }
}

void ProgressCallbackHandler::~ProgressCallbackHandler(ProgressCallbackHandler *this)
{
  v1 = *(this + 16);
  if (v1)
  {
    v2 = *(this + 7);
    do
    {
      v3 = *v2++;
      *(v3 + 80) = 0;
      --v1;
    }

    while (v1);
  }

  *(this + 16) = 0;
  DgnIArray<Utterance *>::~DgnIArray(this + 56);
}

uint64_t ProgressCallbackHandler::startReporting(uint64_t this, ProgressCallbackHandler *a2)
{
  if (this)
  {
    v2 = this;
    if (*(this + 64))
    {
      v3 = 0;
      do
      {
        DFileProgressInfo::resetReportedInfo(*(*(v2 + 56) + 8 * v3++));
      }

      while (v3 < *(v2 + 64));
    }

    return ProgressCallbackHandler::updateTotals(v2);
  }

  return this;
}

uint64_t ProgressCallbackHandler::updateTotals(uint64_t this)
{
  *(this + 16) = 0u;
  *(this + 32) = 0u;
  v1 = *(this + 64);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = *(this + 56);
    do
    {
      v7 = *v6++;
      v5 += *(v7 + 56);
      v4 += *(v7 + 64);
      v3 += *(v7 + 16);
      v2 += *(v7 + 72);
      --v1;
    }

    while (v1);
    *(this + 16) = v5;
    *(this + 24) = v3;
    *(this + 32) = v4;
    *(this + 40) = v2;
  }

  return this;
}

uint64_t ProgressCallbackHandler::addProgress(uint64_t this, ProgressCallbackHandler *a2)
{
  if (this)
  {
    v2 = this;
    this = ProgressCallbackHandler::updateTotals(this);
    v3 = *(v2 + 16);
    if (v3)
    {
      LODWORD(v3) = (*(v2 + 32) / v3 * 1000.0);
    }

    if (v3 >= 0x3E7)
    {
      v4 = 999;
    }

    else
    {
      v4 = v3;
    }

    if (*(v2 + 48) < v4)
    {
      if (*v2)
      {
        this = (*v2)(v4, *(v2 + 8));
      }

      *(v2 + 48) = v4;
    }
  }

  return this;
}

uint64_t ProgressCallbackHandler::addDFileProgressInfoPtr(uint64_t this, DFileProgressInfo *a2, DFileProgressInfo *a3)
{
  if (this)
  {
    return ProgressCallbackHandler::addDFileProgressInfoPtr(this, a2);
  }

  return this;
}

unint64_t ProgressCallbackHandler::addDFileProgressInfoPtr(unint64_t this, DFileProgressInfo *a2)
{
  v3 = this;
  v4 = *(this + 64);
  if (v4 == *(this + 68))
  {
    this = DgnPrimArray<unsigned long long>::reallocElts(this + 56, 1, 1);
    v4 = *(v3 + 64);
  }

  *(*(v3 + 56) + 8 * v4) = a2;
  *(v3 + 64) = v4 + 1;
  return this;
}

void MrecInitModule_param_mrecutil(void)
{
  if (!gParDebugShowParameterSettings)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    v0[2] = "DebugShowParameterSettings";
    v0[3] = &byte_262899963;
    v0[4] = &byte_262899963;
    v0[1] = SetShadowDebugShowParameterSettings;
    *(v0 + 20) = 0;
    *v0 = &unk_287527EA0;
    gParDebugShowParameterSettings = v0;
    gShadowDebugShowParameterSettings = 0;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowParameterSettings);
  }

  if (!gParDebugShowEffectiveParameterSettings)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    v1[2] = "DebugShowEffectiveParameterSettings";
    v1[3] = &byte_262899963;
    v1[4] = &byte_262899963;
    v1[1] = SetShadowDebugShowEffectiveParameterSettings;
    *(v1 + 20) = 0;
    *v1 = &unk_287527EA0;
    gParDebugShowEffectiveParameterSettings = v1;
    gShadowDebugShowEffectiveParameterSettings = 0;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowEffectiveParameterSettings);
  }

  if (!gParDebugShowDefaultToDefaultParameterSettings)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    v2[2] = "DebugShowDefaultToDefaultParameterSettings";
    v2[3] = &byte_262899963;
    v2[4] = &byte_262899963;
    v2[1] = SetShadowDebugShowDefaultToDefaultParameterSettings;
    *(v2 + 20) = 0;
    *v2 = &unk_287527EA0;
    gParDebugShowDefaultToDefaultParameterSettings = v2;
    gShadowDebugShowDefaultToDefaultParameterSettings = 0;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowDefaultToDefaultParameterSettings);
  }

  if (!gParDebugParCacheGet)
  {
    v3 = MemChunkAlloc(0x30uLL, 0);
    v3[3] = &byte_262899963;
    v3[4] = &byte_262899963;
    v3[1] = 0;
    v3[2] = "DebugParCacheGet";
    *(v3 + 20) = 0;
    *v3 = &unk_287527EA0;
    gParDebugParCacheGet = v3;
    v4 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v4, &gParDebugParCacheGet);
  }
}

void GlobalParam::getDescription(GlobalParam *this, DgnString *a2)
{
  *(a2 + 2) = 0;
  if (**(this + 3))
  {
    DgnString::DgnString(v5);
    FileSpec::getRelativeSourceFileName(*(this + 3), v5, v4);
    DgnString::operator+=(a2, "[");
    DgnString::operator+=(a2, v5);
    DgnString::operator+=(a2, "] ");
    DgnString::operator+=(a2, *(this + 4));
    DgnString::~DgnString(v5);
  }
}

unint64_t GlobalParamMgr::startupGlobalParamMgr(GlobalParamMgr *this)
{
  v1 = MemChunkAlloc(8uLL, 0);
  v2 = MemChunkAlloc(0x10uLL, 0);
  *v2 = 0;
  v2[1] = 0;
  *v1 = v2;
  result = DgnPrimArray<unsigned long long>::reallocElts(v2, 800, 0);
  GlobalParamMgr::smpGlobalParamMgr = v1;
  return result;
}

uint64_t sizeObjectSpecial(uint64_t a1, uint64_t a2)
{
  v4 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v4 = 4;
  }

  if (a2 == 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  if (a1 && a2 != 2)
  {
    v5 += sizeObject<ActiveWord *>(a1, a2);
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    for (i = 0; i < v6; ++i)
    {
      if (a2 != 2)
      {
        v8 = *(*a1 + 8 * i);
        if (v8)
        {
          if (*v8)
          {
            v5 += (*(**v8 + 16))(*v8, a2);
            v6 = *(a1 + 8);
          }
        }
      }
    }
  }

  return v5;
}

void GlobalParamMgr::printSize(GlobalParamMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/param.cpp", 358, &v35);
  if (v36)
  {
    v16 = v35;
  }

  else
  {
    v16 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &byte_262899963, a3, &byte_262899963, v16);
  DgnString::~DgnString(&v35);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &byte_262899963);
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v21 = sizeObjectSpecial(*this, 0);
    v22 = sizeObjectSpecial(*this, 1);
    v23 = sizeObjectSpecial(*this, 3);
    getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/param.cpp", 367, &v35);
    if (v36)
    {
      v28 = v35;
    }

    else
    {
      v28 = &byte_262899963;
    }

    xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, v25, v26, v27, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v28, v21, v22, v23);
    DgnString::~DgnString(&v35);
    *a4 += v21;
    *a5 += v22;
    *a6 += v23;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/param.cpp", 369, &v35);
  if (v36)
  {
    v33 = v35;
  }

  else
  {
    v33 = &byte_262899963;
  }

  v34 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v29, v30, v31, v32, a3, &byte_262899963, (35 - a3), (35 - a3), v33, *a4, *a5, *a6);
  DgnString::~DgnString(&v35);
}

void sub_262860650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t *GlobalParamMgr::addParam(uint64_t *this, GlobalParam **a2)
{
  v3 = *this;
  v4 = *(*this + 8);
  if (v4 == *(*this + 12))
  {
    this = DgnPrimArray<unsigned long long>::reallocElts(*this, 1, 1);
    v4 = *(v3 + 8);
  }

  *(*v3 + 8 * v4) = a2;
  *(v3 + 8) = v4 + 1;
  return this;
}

uint64_t GlobalParamMgr::resetAll(uint64_t **this)
{
  result = mrec_qsort_r<GlobalParamMgr>(**this, *(*this + 2), 8, 0);
  v3 = *this;
  if (*(*this + 2))
  {
    v4 = 0;
    do
    {
      v5 = **(*v3 + 8 * v4);
      result = (*(*v5 + 32))(v5);
      ++v4;
      v3 = *this;
    }

    while (v4 < *(*this + 2));
  }

  return result;
}

uint64_t mrec_qsort_r<GlobalParamMgr>(uint64_t result, unint64_t a2, const char *a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = -a3;
  v109 = a3 != 8;
  v110 = ((result | a3) & 7) == 0;
  if (((result | a3) & 7) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = a3 != 8;
  }

  v111 = v8;
  if (a2 < 7)
  {
LABEL_119:
    if ((v5 * a3) > a3)
    {
      v81 = v6 + v5 * a3;
      v82 = &a3[v6];
      v83 = v6;
      do
      {
        if (v82 > v6)
        {
          v84 = v83;
          v85 = v82;
          do
          {
            v86 = v85;
            v85 += v7;
            result = DgnString::compareNoCase(*(**v85 + 16), *(**v86 + 16), a3);
            if (result < 1)
            {
              break;
            }

            if (v111)
            {
              if (v110)
              {
                v87 = 0;
                v88 = v85;
                do
                {
                  v89 = *&v86[8 * v87];
                  *&v86[8 * v87] = *v88;
                  *v88 = v89;
                  v88 += 8;
                  ++v87;
                }

                while (a3 >> 3 != v87);
              }

              else
              {
                v91 = 0;
                v92 = a3;
                do
                {
                  v93 = v86[v91];
                  v86[v91] = *(v84 + v91);
                  *(v84 + v91++) = v93;
                  --v92;
                }

                while (v92);
              }
            }

            else
            {
              v90 = *v86;
              *v86 = *v85;
              *v85 = v90;
            }

            v84 += v7;
          }

          while (v85 > v6);
        }

        v82 = &a3[v82];
        v83 += a3;
      }

      while (v82 < v81);
    }
  }

  else
  {
    v9 = a3 >> 3;
    while (1)
    {
      v10 = (v6 + (v5 >> 1) * a3);
      if (v5 != 7)
      {
        v11 = v5;
        v12 = (v6 + (v5 - 1) * a3);
        if (v11 < 0x29)
        {
          v20 = v6;
          v21 = v12;
          v5 = v11;
        }

        else
        {
          v108 = v11;
          v13 = (v11 >> 3) * a3;
          v14 = v6 + v13;
          v15 = v6 + 2 * v13;
          v16 = DgnString::compareNoCase(*(**v6 + 16), *(**(v6 + v13) + 16), a3);
          v18 = DgnString::compareNoCase(*(**(v6 + v13) + 16), *(**v15 + 16), v17);
          if (v16 < 0)
          {
            if ((v18 & 0x80000000) == 0)
            {
              if (DgnString::compareNoCase(*(**v6 + 16), *(**v15 + 16), v19) >= 0)
              {
                v14 = v6;
              }

              else
              {
                v14 = v6 + 2 * v13;
              }
            }
          }

          else if (v18 <= 0)
          {
            if (DgnString::compareNoCase(*(**v6 + 16), *(**v15 + 16), v19) >= 0)
            {
              v14 = v6 + 2 * v13;
            }

            else
            {
              v14 = v6;
            }
          }

          v106 = v14;
          v22 = &v10[-v13];
          v23 = &v10[v13];
          v24 = DgnString::compareNoCase(*(**&v10[-v13] + 16), *(**v10 + 16), v19);
          v26 = DgnString::compareNoCase(*(**v10 + 16), *(**&v10[v13] + 16), v25);
          if (v24 < 0)
          {
            if ((v26 & 0x80000000) == 0)
            {
              if (DgnString::compareNoCase(*(**v22 + 16), *(**v23 + 16), v27) >= 0)
              {
                v10 -= v13;
              }

              else
              {
                v10 += v13;
              }
            }
          }

          else if (v26 <= 0)
          {
            if (DgnString::compareNoCase(*(**v22 + 16), *(**v23 + 16), v27) >= 0)
            {
              v10 += v13;
            }

            else
            {
              v10 -= v13;
            }
          }

          v28 = &v12[-2 * v13];
          v21 = &v12[-v13];
          v29 = DgnString::compareNoCase(*(**v28 + 16), *(**&v12[-v13] + 16), v27);
          v31 = DgnString::compareNoCase(*(**&v12[-v13] + 16), *(**v12 + 16), v30);
          if (v29 < 0)
          {
            if ((v31 & 0x80000000) == 0)
            {
              if (DgnString::compareNoCase(*(**v28 + 16), *(**v12 + 16), a3) >= 0)
              {
                v21 = &v12[-2 * v13];
              }

              else
              {
                v21 = v12;
              }
            }
          }

          else if (v31 <= 0)
          {
            if (DgnString::compareNoCase(*(**v28 + 16), *(**v12 + 16), a3) >= 0)
            {
              v21 = v12;
            }

            else
            {
              v21 = &v12[-2 * v13];
            }
          }

          v5 = v108;
          v20 = v106;
        }

        v32 = DgnString::compareNoCase(*(**v20 + 16), *(**v10 + 16), a3);
        result = DgnString::compareNoCase(*(**v10 + 16), *(**v21 + 16), v33);
        if (v32 < 0)
        {
          if ((result & 0x80000000) == 0)
          {
            result = DgnString::compareNoCase(*(**v20 + 16), *(**v21 + 16), a3);
            if (result >= 0)
            {
              v10 = v20;
            }

            else
            {
              v10 = v21;
            }
          }
        }

        else if (result <= 0)
        {
          result = DgnString::compareNoCase(*(**v20 + 16), *(**v21 + 16), a3);
          if (result >= 0)
          {
            v10 = v21;
          }

          else
          {
            v10 = v20;
          }
        }
      }

      if (v111)
      {
        if (v110)
        {
          v34 = v6;
          v35 = a3 >> 3;
          do
          {
            v36 = *v34;
            *v34++ = *v10;
            *v10 = v36;
            v10 += 8;
            --v35;
          }

          while (v35);
        }

        else
        {
          v38 = a3;
          v39 = v6;
          do
          {
            v40 = *v39;
            *v39++ = *v10;
            *v10++ = v40;
            --v38;
          }

          while (v38);
        }
      }

      else
      {
        v37 = *v6;
        *v6 = *v10;
        *v10 = v37;
      }

      v41 = 0;
      v42 = &a3[v6];
      v43 = v6 + (v5 - 1) * a3;
      v44 = v43;
      v45 = &a3[v6];
LABEL_55:
      while (v45 <= v44)
      {
        result = DgnString::compareNoCase(*(**v45 + 16), *(**v6 + 16), a3);
        if (result > 0)
        {
          break;
        }

        if (!result)
        {
          if (v111)
          {
            if (v110)
            {
              v46 = 0;
              do
              {
                v47 = *&v42[8 * v46];
                *&v42[8 * v46] = *&v45[8 * v46];
                *&v45[8 * v46++] = v47;
              }

              while (v9 != v46);
            }

            else
            {
              v56 = 0;
              do
              {
                v57 = v56[v42];
                v56[v42] = v56[v45];
                (v56++)[v45] = v57;
              }

              while (a3 != v56);
            }
          }

          else
          {
            v55 = *v42;
            *v42 = *v45;
            *v45 = v55;
          }

          v42 = &a3[v42];
          v41 = 1;
        }

        v45 = &a3[v45];
      }

      while (v45 <= v44)
      {
        result = DgnString::compareNoCase(*(**v44 + 16), *(**v6 + 16), a3);
        if ((result & 0x80000000) != 0)
        {
          if (v111)
          {
            if (v110)
            {
              v53 = 0;
              do
              {
                v54 = *&v45[8 * v53];
                *&v45[8 * v53] = *&v44[8 * v53];
                *&v44[8 * v53++] = v54;
              }

              while (v9 != v53);
            }

            else
            {
              v59 = 0;
              do
              {
                v60 = v59[v45];
                v59[v45] = v59[v44];
                (v59++)[v44] = v60;
              }

              while (a3 != v59);
            }
          }

          else
          {
            v58 = *v45;
            *v45 = *v44;
            *v44 = v58;
          }

          v45 = &a3[v45];
          v44 += v7;
          v41 = 1;
          goto LABEL_55;
        }

        if (!result)
        {
          if (v111)
          {
            if (v110)
            {
              v48 = 0;
              do
              {
                v49 = *&v44[8 * v48];
                *&v44[8 * v48] = *(v43 + 8 * v48);
                *(v43 + 8 * v48++) = v49;
              }

              while (v9 != v48);
            }

            else
            {
              v51 = 0;
              do
              {
                v52 = v51[v44];
                v51[v44] = v51[v43];
                (v51++)[v43] = v52;
              }

              while (a3 != v51);
            }
          }

          else
          {
            v50 = *v44;
            *v44 = *v43;
            *v43 = v50;
          }

          v43 += v7;
          v41 = 1;
        }

        v44 += v7;
      }

      v61 = v5 * a3;
      v62 = v6 + v5 * a3;
      if (!v41)
      {
        break;
      }

      v63 = v45 - v42;
      if (&v42[-v6] >= v45 - v42)
      {
        v64 = (v45 - v42);
      }

      else
      {
        v64 = &v42[-v6];
      }

      if (v64)
      {
        if (v110)
        {
          v65 = (v45 - v64);
          v66 = v64 >> 3;
          v67 = v6;
          do
          {
            v68 = *v67;
            *v67++ = *v65;
            *v65 = v68;
            v65 += 8;
            --v66;
          }

          while (v66);
        }

        else
        {
          v69 = -v64;
          v70 = v6;
          do
          {
            v71 = *v70;
            *v70++ = v45[v69];
            v45[v69] = v71;
            v72 = __CFADD__(v69++, 1);
          }

          while (!v72);
        }
      }

      v73 = v43 - v44;
      if ((v43 - v44) >= (v62 - &a3[v43]))
      {
        v74 = v62 - &a3[v43];
      }

      else
      {
        v74 = v43 - v44;
      }

      if (v74)
      {
        if (v110)
        {
          v75 = (v62 - v74);
          v76 = v74 >> 3;
          do
          {
            v77 = *v45;
            *v45 = *v75;
            v45 += 8;
            *v75++ = v77;
            --v76;
          }

          while (v76);
        }

        else
        {
          v78 = -v74;
          do
          {
            v79 = *v45;
            *v45++ = *(v62 + v78);
            *(v62 + v78) = v79;
            v72 = __CFADD__(v78++, 1);
          }

          while (!v72);
        }
      }

      if (v63 > a3)
      {
        result = mrec_qsort_r<GlobalParamMgr>(v6, v63 / a3, a3, a4);
      }

      if (v73 <= a3)
      {
        return result;
      }

      v6 = v62 - v73;
      v5 = v73 / a3;
      v80 = v109;
      if (((v6 | a3) & 7) != 0)
      {
        v80 = 2;
      }

      v110 = ((v6 | a3) & 7) == 0;
      v111 = v80;
      if (v5 < 7)
      {
        goto LABEL_119;
      }
    }

    v94 = &a3[v6];
    if (v61 > a3)
    {
      v95 = v6;
      do
      {
        if (v94 > v6)
        {
          v96 = v95;
          v97 = v94;
          do
          {
            v98 = v97;
            v97 += v7;
            result = DgnString::compareNoCase(*(**v97 + 16), *(**v98 + 16), a3);
            if (result < 1)
            {
              break;
            }

            if (v111)
            {
              if (v110)
              {
                v99 = 0;
                v100 = v97;
                do
                {
                  v101 = *&v98[8 * v99];
                  *&v98[8 * v99] = *v100;
                  *v100 = v101;
                  v100 += 8;
                  ++v99;
                }

                while (v9 != v99);
              }

              else
              {
                v103 = 0;
                v104 = a3;
                do
                {
                  v105 = v98[v103];
                  v98[v103] = *(v96 + v103);
                  *(v96 + v103++) = v105;
                  --v104;
                }

                while (v104);
              }
            }

            else
            {
              v102 = *v98;
              *v98 = *v97;
              *v97 = v102;
            }

            v96 += v7;
          }

          while (v97 > v6);
        }

        v94 = &a3[v94];
        v95 += a3;
      }

      while (v94 < v62);
    }
  }

  return result;
}

void IntGlobalParamBase::setVal(IntGlobalParamBase *this, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 10) != a2 && (*(this + 12) > a2 || *(this + 13) < a2))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/param.cpp", 792, "mrecutil/param", 2, "%.500s", a7, a8, *(this + 2));
  }

  *(this + 11) = a2;
  if (a3)
  {
    v11 = *(this + 1);
    if (v11)
    {

      v11();
    }
  }
}

void DoubleGlobalParamBase::setVal(DoubleGlobalParamBase *this, double a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(this + 5) != a2 && (*(this + 7) > a2 || *(this + 8) < a2))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/param.cpp", 1074, "mrecutil/param", 2, "%.500s", a8, a9, *(this + 2));
  }

  *(this + 6) = a2;
  if (a3)
  {
    v12 = *(this + 1);
    if (v12)
    {

      v12();
    }
  }
}

void GlobalParamMgr::ParamGetAllParamNames(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 >= 1)
  {
    v5 = 16 * v4 - 16;
    do
    {
      DgnString::~DgnString((*a2 + v5));
      v5 -= 16;
    }

    while (v5 != -16);
  }

  *(a2 + 8) = 0;
  v6 = *a1;
  v7 = *(*a1 + 8);
  v8 = *(a2 + 12);
  if (v7 > v8)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a2, v7 - v8, 0);
    v6 = *a1;
    v7 = *(*a1 + 8);
  }

  if (v7)
  {
    v9 = 0;
    do
    {
      DgnString::DgnString(v11, *(**(*v6 + 8 * v9) + 16));
      v10 = *(a2 + 8);
      if (v10 == *(a2 + 12))
      {
        DgnArray<DgnPrimArray<double>>::reallocElts(a2, 1, 1);
        v10 = *(a2 + 8);
      }

      DgnString::DgnString((*a2 + 16 * v10), v11);
      ++*(a2 + 8);
      DgnString::~DgnString(v11);
      ++v9;
      v6 = *a1;
    }

    while (v9 < *(*a1 + 8));
  }
}

uint64_t GlobalParamMgr::ParamGetParId(GlobalParamMgr *this, const char *__s2)
{
  v3 = 0;
  v4 = *this;
  v5 = *(*this + 8);
  while (v5 != v3)
  {
    if (!strcmp(*(**(*v4 + 8 * v3++) + 16), __s2))
    {
      return v3;
    }
  }

  LOWORD(v3) = -1;
  return v3;
}

uint64_t GlobalParamMgr::ParamGetType(GlobalParamMgr *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a2 - 1) >= *(*this + 8) || (v8 = **(**this + 8 * (a2 - 1))) == 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/param.cpp", 577, "mrecutil/param", 4, &errStr_mrecutil_param_E_INVALID_HANDLE, a7, a8, a2);
    return 1;
  }

  v9 = *v8;
  v10 = **v8;
  {
    return 2;
  }

  v12 = *v9;
  {
    return 4;
  }

  v13 = *v9;
  {
    return 5;
  }

  v14 = *v9;
  {
    return 1;
  }

  return 3;
}

uint64_t GlobalParamMgr::ParamGetBoolValue(GlobalParamMgr *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if ((a2 - 1) >= *(*this + 8) || (v9 = **(**this + 8 * (a2 - 1))) == 0)
  {
    GlobalParamMgr::ParamGetBoolValue(a2, a2, a3, a4, a5, a6, a7, a8);
  }

  v10 = a3;
  v11 = *v9;
  v12 = **v9;
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/param.cpp", 612, "mrecutil/param", 5, "%d", v13, v14, v8);
    v11 = *v9;
  }

  v15 = *v11;
  v17 = 40;
  if (!v10)
  {
    v17 = 41;
  }

  return v16[v17];
}

uint64_t GlobalParamMgr::ParamGetIntValue(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  if ((a2 - 1) < *(*a1 + 8) && (v10 = **(**a1 + 8 * (a2 - 1))) != 0)
  {
    v11 = **v10;
    {
      goto LABEL_7;
    }
  }

  else
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/param.cpp", 619, "mrecutil/param", 4, &errStr_mrecutil_param_E_INVALID_HANDLE, a7, a8, a2);
    v10 = 0;
  }

  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/param.cpp", 620, "mrecutil/param", 5, "%d", v12, v13, v9);
LABEL_7:
  result = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v18 = **v10;
    }

    else if (a3 == 3)
    {
      v16 = **v10;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v15 = **v10;
    }
  }

  else
  {
    v17 = **v10;
  }

  return result;
}

char *GlobalParamMgr::ParamGetStringValue(GlobalParamMgr *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if ((a2 - 1) >= *(*this + 8) || (v9 = **(**this + 8 * (a2 - 1))) == 0)
  {
    GlobalParamMgr::ParamGetStringValue(a2, a2, a3, a4, a5, a6, a7, a8);
  }

  v10 = a3;
  v11 = *v9;
  v12 = *v9;
  v13 = **v9;
  {
    v14 = *v12;
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/param.cpp", 643, "mrecutil/param", 5, "%d", v15, v16, v8);
      v11 = *v9;
    }
  }

  v17 = *v11;
  v19 = *v11;
  if (v18)
  {
    if (v10)
    {
      if (v20[12])
      {
        v21 = 10;
        return *&v20[v21];
      }
    }

    else if (v20[16])
    {
      v21 = 14;
      return *&v20[v21];
    }

    return &byte_262899963;
  }

  else
  {
    v23 = 44;
    if (v10)
    {
      v23 = 40;
    }

    v24 = *(v22 + v23);

    return EnumGlobalParamBase::getNameForEnumItem(v22, v24);
  }
}

_BYTE *EnumGlobalParamBase::getNameForEnumItem(EnumGlobalParamBase *this, int a2)
{
  v2 = *(this + 6);
  result = *(v2 + 8);
  if (!*result)
  {
    return 0;
  }

  if (*(v2 + 16) != a2)
  {
    for (i = (v2 + 48); ; i += 8)
    {
      result = *(i - 1);
      if (!*result)
      {
        break;
      }

      v5 = *i;
      if (v5 == a2)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

double GlobalParamMgr::ParamGetDoubleValue(uint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  if ((a2 - 1) < *(*a1 + 8) && (v10 = **(**a1 + 8 * (a2 - 1))) != 0)
  {
    v11 = **v10;
    {
      goto LABEL_7;
    }
  }

  else
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/param.cpp", 688, "mrecutil/param", 4, &errStr_mrecutil_param_E_INVALID_HANDLE, a7, a8, a2);
    v10 = 0;
  }

  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/param.cpp", 689, "mrecutil/param", 5, "%d", v12, v13, v9);
LABEL_7:
  result = 0.0;
  if (a3 <= 3)
  {
    v15 = *&a0_283[8 * a3];
    v16 = **v10;
  }

  return result;
}

uint64_t IntGlobalParamBase::IntGlobalParamBase(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6, uint64_t a7)
{
  *(result + 24) = a3;
  *(result + 32) = a4;
  *(result + 8) = a7;
  *(result + 16) = a2;
  *result = &unk_2875265B8;
  *(result + 48) = *a6;
  *(result + 40) = a5;
  *(result + 44) = a5;
  return result;
}

uint64_t IntGlobalParamBase::sizeObject(uint64_t a1, int a2)
{
  v2 = 48;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 32;
  }

  if (a2 == 3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

_BYTE *GetNameForEnumItem(uint64_t a1, int a2)
{
  result = *(a1 + 8);
  if (!*result)
  {
    return 0;
  }

  if (*(a1 + 16) != a2)
  {
    for (i = (a1 + 48); ; i += 8)
    {
      result = *(i - 1);
      if (!*result)
      {
        break;
      }

      v5 = *i;
      if (v5 == a2)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

__n128 EnumGlobalParamBase::EnumGlobalParamBase(__n128 *a1, unint64_t a2, unint64_t a3, unint64_t a4, unsigned __int32 a5, __n128 *a6, unint64_t a7)
{
  a1[1].n128_u64[1] = a3;
  a1[2].n128_u64[0] = a4;
  a1->n128_u64[1] = a7;
  a1[1].n128_u64[0] = a2;
  a1->n128_u64[0] = &unk_287526060;
  result = *a6;
  a1[3] = *a6;
  a1[2].n128_u32[2] = a5;
  a1[2].n128_u32[3] = a5;
  return result;
}

uint64_t EnumGlobalParamBase::sizeObject(uint64_t a1, int a2)
{
  v2 = 56;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 36;
  }

  if (a2 == 3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

void EnumGlobalParamBase::setVal(EnumGlobalParamBase *this, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 10) != a2 && (*(this + 14) > a2 || *(this + 15) < a2))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/param.cpp", 906, "mrecutil/param", 2, "%.500s", a7, a8, *(this + 2));
  }

  *(this + 11) = a2;
  if (a3)
  {
    v11 = *(this + 1);
    if (v11)
    {

      v11();
    }
  }
}

DgnString *EnumGlobalParamBase::getDescription(EnumGlobalParamBase *this, DgnString *a2)
{
  GlobalParam::getDescription(this, a2);
  result = DgnString::operator+=(a2, " ==> LegalVals: ");
  v5 = *(this + 6);
  v6 = *(v5 + 8);
  if (*v6)
  {
    v7 = (v5 + 24);
    do
    {
      DgnString::operator+=(a2, v6);
      result = DgnString::operator+=(a2, " ");
      if (*v7)
      {
        if (**v7)
        {
          DgnString::operator+=(a2, "[");
          DgnString::operator+=(a2, *v7);
          result = DgnString::operator+=(a2, "] ");
        }
      }

      v6 = v7[2];
      v7 += 4;
    }

    while (*v6);
  }

  return result;
}

void BoolGlobalParamBase::BoolGlobalParamBase(BoolGlobalParamBase *this, const char *a2, const char *a3, const char *a4, char a5, void (*a6)(void), const char *a7)
{
  *(this + 3) = a3;
  *(this + 4) = a4;
  *(this + 1) = a6;
  *(this + 2) = a2;
  *this = &unk_287526098;
  *(this + 41) = a5;
  *(this + 40) = a5;
}

uint64_t BoolGlobalParamBase::sizeObject(uint64_t a1, int a2)
{
  v2 = 34;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 18;
  }

  if (a2 == 3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t (*BoolGlobalParamBase::reset(BoolGlobalParamBase *this))(void)
{
  *(this + 41) = *(this + 40);
  result = *(this + 1);
  if (result)
  {
    return result();
  }

  return result;
}

uint64_t DoubleGlobalParamBase::DoubleGlobalParamBase(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, double a7)
{
  *(result + 24) = a3;
  *(result + 32) = a4;
  *(result + 8) = a6;
  *(result + 16) = a2;
  *result = &unk_287525938;
  *(result + 56) = *a5;
  *(result + 40) = a7;
  *(result + 48) = a7;
  return result;
}

uint64_t DoubleGlobalParamBase::sizeObject(uint64_t a1, int a2)
{
  v2 = 64;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 48;
  }

  if (a2 == 3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

void DoubleGlobalParamBase::getDescription(DoubleGlobalParamBase *this, DgnString *a2)
{
  GlobalParam::getDescription(this, a2);
  DgnString::operator+=(a2, " ==> Range ");
  DgnString::formatFloat(0xE, *(this + 7), v4);
  DgnString::operator+=(a2, v4);
  DgnString::~DgnString(v4);
  DgnString::operator+=(a2, " to ");
  DgnString::formatFloat(0xE, *(this + 8), v4);
  DgnString::operator+=(a2, v4);
  DgnString::~DgnString(v4);
}

void StringGlobalParamBase::StringGlobalParamBase(StringGlobalParamBase *this, const char *a2, const char *a3, const char *a4, char *a5, void (*a6)(void), const char *a7)
{
  *(this + 3) = a3;
  *(this + 4) = a4;
  *(this + 1) = a6;
  *(this + 2) = a2;
  *this = &unk_2875256A0;
  DgnString::DgnString((this + 40));
  DgnString::DgnString((this + 56));
  DgnString::preAllocate(this + 56, 512);
  DgnString::operator=((this + 56), a5);
  DgnString::operator=((this + 40), a5);
}

void StringGlobalParamBase::~StringGlobalParamBase(StringGlobalParamBase *this)
{
  *this = &unk_2875256A0;
  v1 = (this + 40);
  DgnString::~DgnString((this + 56));
  DgnString::~DgnString(v1);
}

{
  *this = &unk_2875256A0;
  v1 = (this + 40);
  DgnString::~DgnString((this + 56));
  DgnString::~DgnString(v1);
}

{
  *this = &unk_2875256A0;
  v1 = (this + 40);
  DgnString::~DgnString((this + 56));
  DgnString::~DgnString(v1);

  JUMPOUT(0x26672B1B0);
}

uint64_t StringGlobalParamBase::sizeObject(uint64_t a1, int a2)
{
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v4 = 16;
  }

  else
  {
    v4 = 32;
  }

  v5 = sizeObject(a1 + 40);
  v6 = a2 == 3;
  if (a2 == 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7 + v5;
  if (!v6)
  {
    v8 += sizeObject(a1 + 56);
  }

  return v8;
}

uint64_t (*StringGlobalParamBase::reset(StringGlobalParamBase *this))(void)
{
  if (*(this + 12))
  {
    v2 = *(this + 5);
  }

  else
  {
    v2 = &byte_262899963;
  }

  DgnString::operator=((this + 56), v2);
  result = *(this + 1);
  if (result)
  {

    return result();
  }

  return result;
}

uint64_t StartupPrefiltererSearchParamSpecMgr(void)
{
  v25 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v25, "PrefiltererPelScoreScale", &byte_262899963, &byte_262899963, &sPrefiltererPelScoreScaleDoubleHistory);
  v23 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v23, "PrefiltererPelScoreUseBestCompScore", &byte_262899963, &byte_262899963, &sPrefiltererPelScoreUseBestCompScoreBoolHistory);
  v18 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v18, "PrefiltererDecimationType", &byte_262899963, &byte_262899963, &sPrefiltererDecimationTypeEnumHistory);
  v24 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v24, "PrefiltererThreshScoreWhenSilenceBest", &byte_262899963, &byte_262899963, &sPrefiltererThreshScoreWhenSilenceBestIntHistory);
  v22 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v22, "PrefiltererThreshScoreIncrementWhenNonSilenceBest", &byte_262899963, &byte_262899963, &sPrefiltererThreshScoreIncrementWhenNonSilenceBestIntHistory);
  v21 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v21, "PrefiltererReturnListThreshScoreDecrement", &byte_262899963, &byte_262899963, &sPrefiltererReturnListThreshScoreDecrementIntHistory);
  v20 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v20, "PrefiltererPelBackoffThreshScoreDecrement", &byte_262899963, &byte_262899963, &sPrefiltererPelBackoffThreshScoreDecrementIntHistory);
  v16 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v16, "PrefiltererActiveNodeCountLimit", &byte_262899963, &byte_262899963, &sPrefiltererActiveNodeCountLimitIntHistory);
  v19 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v19, "PrefiltererAdjustThreshScoreType", &byte_262899963, &byte_262899963, &sPrefiltererAdjustThreshScoreTypeEnumHistory);
  v17 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v17, "PrefiltererSeedScoreIncludeWordEndScore", &byte_262899963, &byte_262899963, &sPrefiltererSeedScoreIncludeWordEndScoreBoolHistory);
  v15 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v15, "PrefiltererMaxSeedScore", &byte_262899963, &byte_262899963, &sPrefiltererMaxSeedScoreIntHistory);
  v14 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v14, "PrefiltererMinNodeScore", &byte_262899963, &byte_262899963, &sPrefiltererMinNodeScoreIntHistory);
  v13 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v13, "PrefiltererNodeSkippingType", &byte_262899963, &byte_262899963, &sPrefiltererNodeSkippingTypeEnumHistory);
  v12 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v12, "PrefiltererAllowFirstNodeSkipping", &byte_262899963, &byte_262899963, &sPrefiltererAllowFirstNodeSkippingBoolHistory);
  v0 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v0, "PrefiltererBestScorePerAdditionalPhonemeScore", &byte_262899963, &byte_262899963, &sPrefiltererBestScorePerAdditionalPhonemeScoreIntHistory);
  v1 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v1, "PrefiltererLookaheadSequenceFirstPhonemeLMScale", &byte_262899963, &byte_262899963, &sPrefiltererLookaheadSequenceFirstPhonemeLMScaleDoubleHistory);
  v2 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v2, "PrefiltererLookaheadThreshScore", &byte_262899963, &byte_262899963, &sPrefiltererLookaheadThreshScoreIntHistory);
  v3 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v3, "PrefiltererLookaheadApplyOnReseed", &byte_262899963, &byte_262899963, &sPrefiltererLookaheadApplyOnReseedBoolHistory);
  v11 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v11, "PrefiltererReturnDistanceMaxFrames", &byte_262899963, &byte_262899963, &sPrefiltererReturnDistanceMaxFramesIntHistory);
  v4 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v4, "PrefiltererReturnDistancePerFramePenalty", &byte_262899963, &byte_262899963, &sPrefiltererReturnDistancePerFramePenaltyIntHistory);
  v5 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v5, "PrefiltererReturnDistanceWordDurationFactor", &byte_262899963, &byte_262899963, &sPrefiltererReturnDistanceWordDurationFactorDoubleHistory);
  v6 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v6, "PrefiltererReturnDistanceAdjustDuration", &byte_262899963, &byte_262899963, &sPrefiltererReturnDistanceAdjustDurationBoolHistory);
  v7 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v7, "PrefiltererReturnListMaxLength", &byte_262899963, &byte_262899963, &sPrefiltererReturnListMaxLengthIntHistory);
  v8 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v8, "PrefiltererFmpeWindowTruncateUnavailableFrames", &byte_262899963, &byte_262899963, &sPrefiltererFmpeWindowTruncateUnavailableFramesBoolHistory);
  ParamSpecMgr::addParam(qword_281051FA0, v16);
  ParamSpecMgr::addParam(qword_281051FA0, v0);
  ParamSpecMgr::addParam(qword_281051FA0, v18);
  ParamSpecMgr::addParam(qword_281051FA0, v1);
  ParamSpecMgr::addParam(qword_281051FA0, v2);
  ParamSpecMgr::addParam(qword_281051FA0, v3);
  ParamSpecMgr::addParam(qword_281051FA0, v15);
  ParamSpecMgr::addParam(qword_281051FA0, v14);
  ParamSpecMgr::addParam(qword_281051FA0, v13);
  ParamSpecMgr::addParam(qword_281051FA0, v12);
  ParamSpecMgr::addParam(qword_281051FA0, v25);
  ParamSpecMgr::addParam(qword_281051FA0, v23);
  ParamSpecMgr::addParam(qword_281051FA0, v11);
  ParamSpecMgr::addParam(qword_281051FA0, v4);
  ParamSpecMgr::addParam(qword_281051FA0, v5);
  ParamSpecMgr::addParam(qword_281051FA0, v6);
  ParamSpecMgr::addParam(qword_281051FA0, v7);
  ParamSpecMgr::addParam(qword_281051FA0, v17);
  ParamSpecMgr::addParam(qword_281051FA0, v24);
  ParamSpecMgr::addParam(qword_281051FA0, v22);
  ParamSpecMgr::addParam(qword_281051FA0, v21);
  ParamSpecMgr::addParam(qword_281051FA0, v20);
  ParamSpecMgr::addParam(qword_281051FA0, v19);
  ParamSpecMgr::addParam(qword_281051FA0, v8);
  v9 = qword_281051FA0;

  return ParamSpecMgr::sortParams(v9);
}

_DWORD *PrefiltererSearchParamSet::PrefiltererSearchParamSet(_DWORD *a1, const char *a2, int a3, int a4, int a5)
{
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 2), a2);
  a1[6] = a3;
  a1[7] = a4;
  a1[8] = a5;
  a1[9] = 0;
  *a1 = &unk_287524AF0;
  PrefiltererSearchParamSet::setDefaults(a1, v9, v10, v11, v12, v13, v14, v15);
  return a1;
}

void sub_262862910(_Unwind_Exception *a1)
{
  *v1 = v2;
  DgnString::~DgnString((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t PrefiltererSearchParamSet::PrefiltererSearchParamSet(uint64_t a1, uint64_t a2, char *a3, int a4, int a5, int a6)
{
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 8), a3);
  *(a1 + 24) = a4;
  *(a1 + 28) = a5;
  *(a1 + 32) = a6;
  *(a1 + 36) = 0;
  *a1 = &unk_287524AF0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 132) = *(a2 + 132);
  return a1;
}

uint64_t PrefiltererSearchParamSet::setDefaults(PrefiltererSearchParamSet *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(this + 10) = ParamSpecMgr::ParamGetDefault_int(qword_281051FA0, 1, 0, 0, a5, a6, a7, a8);
  *(this + 11) = ParamSpecMgr::ParamGetDefault_int(qword_281051FA0, 2, 0, 0, v9, v10, v11, v12);
  *(this + 12) = ParamSpecMgr::ParamGetDefault_enum(qword_281051FA0, 3, v13, v14, v15, v16, v17, v18);
  *(this + 7) = ParamSpecMgr::ParamGetDefault_double(qword_281051FA0, 4, 0, 0, v19, v20, v21, v22);
  *(this + 16) = ParamSpecMgr::ParamGetDefault_int(qword_281051FA0, 5, 0, 0, v23, v24, v25, v26);
  *(this + 68) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FA0, 6, 0, 0, v27, v28, v29, v30);
  *(this + 18) = ParamSpecMgr::ParamGetDefault_int(qword_281051FA0, 7, 0, 0, v31, v32, v33, v34);
  *(this + 19) = ParamSpecMgr::ParamGetDefault_int(qword_281051FA0, 8, 0, 0, v35, v36, v37, v38);
  *(this + 20) = ParamSpecMgr::ParamGetDefault_enum(qword_281051FA0, 9, v39, v40, v41, v42, v43, v44);
  *(this + 84) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FA0, 10, 0, 0, v45, v46, v47, v48);
  *(this + 11) = ParamSpecMgr::ParamGetDefault_double(qword_281051FA0, 11, 0, 0, v49, v50, v51, v52);
  *(this + 96) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FA0, 12, 0, 0, v53, v54, v55, v56);
  *(this + 25) = ParamSpecMgr::ParamGetDefault_int(qword_281051FA0, 13, 0, 0, v57, v58, v59, v60);
  *(this + 26) = ParamSpecMgr::ParamGetDefault_int(qword_281051FA0, 14, 0, 0, v61, v62, v63, v64);
  *(this + 14) = ParamSpecMgr::ParamGetDefault_double(qword_281051FA0, 15, 0, 0, v65, v66, v67, v68);
  *(this + 120) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FA0, 16, 0, 0, v69, v70, v71, v72);
  *(this + 31) = ParamSpecMgr::ParamGetDefault_int(qword_281051FA0, 17, 0, 0, v73, v74, v75, v76);
  *(this + 128) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FA0, 18, 0, 0, v77, v78, v79, v80);
  *(this + 33) = ParamSpecMgr::ParamGetDefault_int(qword_281051FA0, 19, 0, 0, v81, v82, v83, v84);
  *(this + 34) = ParamSpecMgr::ParamGetDefault_int(qword_281051FA0, 20, 0, 0, v85, v86, v87, v88);
  *(this + 35) = ParamSpecMgr::ParamGetDefault_int(qword_281051FA0, 21, 0, 0, v89, v90, v91, v92);
  result = ParamSpecMgr::ParamGetDefault_int(qword_281051FA0, 22, 0, 0, v93, v94, v95, v96);
  *(this + 36) = result;
  return result;
}

uint64_t PrefiltererSearchParamSet::sizeObject(uint64_t a1, int a2)
{
  result = sizeObject(a1 + 8) + 16 * (a2 != 3);
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v4 = 5;
    if (a2 == 3)
    {
      v4 = 0;
    }

    v5 = 24;
    if (a2 == 3)
    {
      v5 = 0;
    }

    result += (v4 | (16 * (a2 != 3))) + v5 + 40 * (a2 != 3);
  }

  return result;
}

uint64_t PrefiltererSearchParamSet::getBoolParameter(_BYTE *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 1:
      v8 = "int";
      v9 = 1;
      goto LABEL_36;
    case 2:
      v8 = "int";
      v9 = 2;
      goto LABEL_36;
    case 3:
      v8 = "enum";
      v9 = 3;
      goto LABEL_36;
    case 4:
      v8 = "double";
      v9 = 4;
      goto LABEL_36;
    case 5:
      v8 = "int";
      v9 = 5;
      goto LABEL_36;
    case 6:
      if (a3 == 1)
      {
        v12 = qword_281051FA0;
        v13 = 6;
        goto LABEL_44;
      }

      if (a3)
      {
        goto LABEL_27;
      }

      v10 = a1[68];
      return v10 & 1;
    case 7:
      v8 = "int";
      v9 = 7;
      goto LABEL_36;
    case 8:
      v8 = "int";
      v9 = 8;
      goto LABEL_36;
    case 9:
      v8 = "enum";
      v9 = 9;
      goto LABEL_36;
    case 10:
      if (a3 == 1)
      {
        v12 = qword_281051FA0;
        v13 = 10;
        goto LABEL_44;
      }

      if (a3)
      {
        goto LABEL_27;
      }

      v10 = a1[84];
      return v10 & 1;
    case 11:
      v8 = "double";
      v9 = 11;
      goto LABEL_36;
    case 12:
      if (a3 == 1)
      {
        v12 = qword_281051FA0;
        v13 = 12;
        goto LABEL_44;
      }

      if (a3)
      {
        goto LABEL_27;
      }

      v10 = a1[96];
      return v10 & 1;
    case 13:
      v8 = "int";
      v9 = 13;
      goto LABEL_36;
    case 14:
      v8 = "int";
      v9 = 14;
      goto LABEL_36;
    case 15:
      v8 = "double";
      v9 = 15;
      goto LABEL_36;
    case 16:
      if (a3 == 1)
      {
        v12 = qword_281051FA0;
        v13 = 16;
        goto LABEL_44;
      }

      if (a3)
      {
        goto LABEL_27;
      }

      v10 = a1[120];
      break;
    case 17:
      v8 = "int";
      v9 = 17;
      goto LABEL_36;
    case 18:
      if (a3 == 1)
      {
        v12 = qword_281051FA0;
        v13 = 18;
LABEL_44:
        ParamByParamId = ParamSpecMgr::getParamByParamId(v12, v13, a3, a4, a5, a6, a7, a8);
        v15 = **ParamByParamId;
      }

      else if (a3)
      {
LABEL_27:
        throwWrongQueryMode(a3, "BOOL", a3, a4, a5, a6, a7, a8);
LABEL_37:
        v10 = 0;
      }

      else
      {
        v10 = a1[128];
      }

      break;
    case 19:
      v8 = "int";
      v9 = 19;
      goto LABEL_36;
    case 20:
      v8 = "int";
      v9 = 20;
      goto LABEL_36;
    case 21:
      v8 = "int";
      v9 = 21;
      goto LABEL_36;
    case 22:
      v8 = "int";
      v9 = 22;
LABEL_36:
      throwWrongTypeForParamId(v9, v8, "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_37;
    default:
      throwWrongParamIdValue(a2, "BOOL", a3, a4, a5, a6, a7, a8);
      goto LABEL_37;
  }

  return v10 & 1;
}

uint64_t PrefiltererSearchParamSet::getIntParameter(unsigned int *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 1:
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v19 = qword_281051FA0;
          v20 = 1;
          goto LABEL_127;
        }

        if (a3 != 3)
        {
          goto LABEL_102;
        }

        v15 = qword_281051FA0;
        v16 = 1;
        goto LABEL_101;
      }

      if (a3)
      {
        if (a3 != 1)
        {
          goto LABEL_102;
        }

        v8 = qword_281051FA0;
        v9 = 1;
        goto LABEL_64;
      }

      return a1[10];
    case 2:
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v19 = qword_281051FA0;
          v20 = 2;
          goto LABEL_127;
        }

        if (a3 != 3)
        {
          goto LABEL_102;
        }

        v15 = qword_281051FA0;
        v16 = 2;
        goto LABEL_101;
      }

      if (a3)
      {
        if (a3 != 1)
        {
          goto LABEL_102;
        }

        v8 = qword_281051FA0;
        v9 = 2;
        goto LABEL_64;
      }

      return a1[11];
    case 3:
      v10 = "enum";
      v11 = 3;
      goto LABEL_56;
    case 4:
      v10 = "double";
      v11 = 4;
      goto LABEL_56;
    case 5:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[16];
        }

        if (a3 != 1)
        {
          goto LABEL_102;
        }

        v8 = qword_281051FA0;
        v9 = 5;
        goto LABEL_64;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FA0;
        v20 = 5;
        goto LABEL_127;
      }

      if (a3 != 3)
      {
        goto LABEL_102;
      }

      v15 = qword_281051FA0;
      v16 = 5;
      goto LABEL_101;
    case 6:
      v10 = "BOOL";
      v11 = 6;
      goto LABEL_56;
    case 7:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[18];
        }

        if (a3 != 1)
        {
          goto LABEL_102;
        }

        v8 = qword_281051FA0;
        v9 = 7;
        goto LABEL_64;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FA0;
        v20 = 7;
        goto LABEL_127;
      }

      if (a3 != 3)
      {
        goto LABEL_102;
      }

      v15 = qword_281051FA0;
      v16 = 7;
      goto LABEL_101;
    case 8:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[19];
        }

        if (a3 != 1)
        {
          goto LABEL_102;
        }

        v8 = qword_281051FA0;
        v9 = 8;
        goto LABEL_64;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FA0;
        v20 = 8;
        goto LABEL_127;
      }

      if (a3 != 3)
      {
        goto LABEL_102;
      }

      v15 = qword_281051FA0;
      v16 = 8;
      goto LABEL_101;
    case 9:
      v10 = "enum";
      v11 = 9;
      goto LABEL_56;
    case 10:
      v10 = "BOOL";
      v11 = 10;
      goto LABEL_56;
    case 11:
      v10 = "double";
      v11 = 11;
      goto LABEL_56;
    case 12:
      v10 = "BOOL";
      v11 = 12;
      goto LABEL_56;
    case 13:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[25];
        }

        if (a3 != 1)
        {
          goto LABEL_102;
        }

        v8 = qword_281051FA0;
        v9 = 13;
        goto LABEL_64;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FA0;
        v20 = 13;
        goto LABEL_127;
      }

      if (a3 != 3)
      {
        goto LABEL_102;
      }

      v15 = qword_281051FA0;
      v16 = 13;
      goto LABEL_101;
    case 14:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[26];
        }

        if (a3 != 1)
        {
          goto LABEL_102;
        }

        v8 = qword_281051FA0;
        v9 = 14;
        goto LABEL_64;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FA0;
        v20 = 14;
        goto LABEL_127;
      }

      if (a3 != 3)
      {
        goto LABEL_102;
      }

      v15 = qword_281051FA0;
      v16 = 14;
      goto LABEL_101;
    case 15:
      v10 = "double";
      v11 = 15;
      goto LABEL_56;
    case 16:
      v10 = "BOOL";
      v11 = 16;
      goto LABEL_56;
    case 17:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[31];
        }

        if (a3 != 1)
        {
          goto LABEL_102;
        }

        v8 = qword_281051FA0;
        v9 = 17;
        goto LABEL_64;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FA0;
        v20 = 17;
        goto LABEL_127;
      }

      if (a3 != 3)
      {
        goto LABEL_102;
      }

      v15 = qword_281051FA0;
      v16 = 17;
      goto LABEL_101;
    case 18:
      v10 = "BOOL";
      v11 = 18;
LABEL_56:
      throwWrongTypeForParamId(v11, v10, "int", a4, a5, a6, a7, a8);
      return 0;
    case 19:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[33];
        }

        if (a3 != 1)
        {
          goto LABEL_102;
        }

        v8 = qword_281051FA0;
        v9 = 19;
        goto LABEL_64;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FA0;
        v20 = 19;
        goto LABEL_127;
      }

      if (a3 != 3)
      {
        goto LABEL_102;
      }

      v15 = qword_281051FA0;
      v16 = 19;
      goto LABEL_101;
    case 20:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[34];
        }

        if (a3 != 1)
        {
          goto LABEL_102;
        }

        v8 = qword_281051FA0;
        v9 = 20;
        goto LABEL_64;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FA0;
        v20 = 20;
        goto LABEL_127;
      }

      if (a3 != 3)
      {
        goto LABEL_102;
      }

      v15 = qword_281051FA0;
      v16 = 20;
      goto LABEL_101;
    case 21:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[35];
        }

        if (a3 != 1)
        {
          goto LABEL_102;
        }

        v8 = qword_281051FA0;
        v9 = 21;
        goto LABEL_64;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FA0;
        v20 = 21;
        goto LABEL_127;
      }

      if (a3 != 3)
      {
        goto LABEL_102;
      }

      v15 = qword_281051FA0;
      v16 = 21;
      goto LABEL_101;
    case 22:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[36];
        }

        if (a3 == 1)
        {
          v8 = qword_281051FA0;
          v9 = 22;
LABEL_64:
          ParamByParamId = ParamSpecMgr::getParamByParamId(v8, v9, a3, a4, a5, a6, a7, a8);
          v14 = **ParamByParamId;
        }

LABEL_102:
        throwWrongQueryMode(a3, "int", a3, a4, a5, a6, a7, a8);
        return 0;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FA0;
        v20 = 22;
LABEL_127:
        v21 = ParamSpecMgr::getParamByParamId(v19, v20, a3, a4, a5, a6, a7, a8);
        v22 = **v21;
      }

      if (a3 != 3)
      {
        goto LABEL_102;
      }

      v15 = qword_281051FA0;
      v16 = 22;
LABEL_101:
      v17 = ParamSpecMgr::getParamByParamId(v15, v16, a3, a4, a5, a6, a7, a8);
      v18 = **v17;
    default:
      throwWrongParamIdValue(a2, "int", a3, a4, a5, a6, a7, a8);
      return 0;
  }
}

double PrefiltererSearchParamSet::getDoubleParameter(double *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 1:
      v8 = "int";
      v9 = 1;
      goto LABEL_35;
    case 2:
      v8 = "int";
      v9 = 2;
      goto LABEL_35;
    case 3:
      v8 = "enum";
      v9 = 3;
      goto LABEL_35;
    case 4:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[7];
        }

        if (a3 != 1)
        {
          goto LABEL_48;
        }

        v10 = qword_281051FA0;
        v11 = 4;
        goto LABEL_31;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FA0;
        v20 = 4;
        goto LABEL_55;
      }

      if (a3 != 3)
      {
        goto LABEL_48;
      }

      v15 = qword_281051FA0;
      v16 = 4;
      goto LABEL_47;
    case 5:
      v8 = "int";
      v9 = 5;
      goto LABEL_35;
    case 6:
      v8 = "BOOL";
      v9 = 6;
      goto LABEL_35;
    case 7:
      v8 = "int";
      v9 = 7;
      goto LABEL_35;
    case 8:
      v8 = "int";
      v9 = 8;
      goto LABEL_35;
    case 9:
      v8 = "enum";
      v9 = 9;
      goto LABEL_35;
    case 10:
      v8 = "BOOL";
      v9 = 10;
      goto LABEL_35;
    case 11:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[11];
        }

        if (a3 != 1)
        {
          goto LABEL_48;
        }

        v10 = qword_281051FA0;
        v11 = 11;
        goto LABEL_31;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FA0;
        v20 = 11;
        goto LABEL_55;
      }

      if (a3 != 3)
      {
        goto LABEL_48;
      }

      v15 = qword_281051FA0;
      v16 = 11;
      goto LABEL_47;
    case 12:
      v8 = "BOOL";
      v9 = 12;
      goto LABEL_35;
    case 13:
      v8 = "int";
      v9 = 13;
      goto LABEL_35;
    case 14:
      v8 = "int";
      v9 = 14;
      goto LABEL_35;
    case 15:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[14];
        }

        if (a3 == 1)
        {
          v10 = qword_281051FA0;
          v11 = 15;
LABEL_31:
          ParamByParamId = ParamSpecMgr::getParamByParamId(v10, v11, a3, a4, a5, a6, a7, a8);
          v13 = **ParamByParamId;
        }

LABEL_48:
        throwWrongQueryMode(a3, "double", a3, a4, a5, a6, a7, a8);
        return 0.0;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FA0;
        v20 = 15;
LABEL_55:
        v21 = ParamSpecMgr::getParamByParamId(v19, v20, a3, a4, a5, a6, a7, a8);
        v22 = **v21;
      }

      if (a3 != 3)
      {
        goto LABEL_48;
      }

      v15 = qword_281051FA0;
      v16 = 15;
LABEL_47:
      v17 = ParamSpecMgr::getParamByParamId(v15, v16, a3, a4, a5, a6, a7, a8);
      v18 = **v17;
    case 16:
      v8 = "BOOL";
      v9 = 16;
      goto LABEL_35;
    case 17:
      v8 = "int";
      v9 = 17;
      goto LABEL_35;
    case 18:
      v8 = "BOOL";
      v9 = 18;
      goto LABEL_35;
    case 19:
      v8 = "int";
      v9 = 19;
      goto LABEL_35;
    case 20:
      v8 = "int";
      v9 = 20;
      goto LABEL_35;
    case 21:
      v8 = "int";
      v9 = 21;
      goto LABEL_35;
    case 22:
      v8 = "int";
      v9 = 22;
LABEL_35:
      throwWrongTypeForParamId(v9, v8, "double", a4, a5, a6, a7, a8);
      return 0.0;
    default:
      throwWrongParamIdValue(a2, "double", a3, a4, a5, a6, a7, a8);
      return 0.0;
  }
}

uint64_t PrefiltererSearchParamSet::getStringParameter(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 1:
      v8 = "int";
      v9 = 1;
      goto LABEL_25;
    case 2:
      v8 = "int";
      v9 = 2;
      goto LABEL_25;
    case 3:
      v8 = "enum";
      v9 = 3;
      goto LABEL_25;
    case 4:
      v8 = "double";
      v9 = 4;
      goto LABEL_25;
    case 5:
      v8 = "int";
      v9 = 5;
      goto LABEL_25;
    case 6:
      v8 = "BOOL";
      v9 = 6;
      goto LABEL_25;
    case 7:
      v8 = "int";
      v9 = 7;
      goto LABEL_25;
    case 8:
      v8 = "int";
      v9 = 8;
      goto LABEL_25;
    case 9:
      v8 = "enum";
      v9 = 9;
      goto LABEL_25;
    case 10:
      v8 = "BOOL";
      v9 = 10;
      goto LABEL_25;
    case 11:
      v8 = "double";
      v9 = 11;
      goto LABEL_25;
    case 12:
      v8 = "BOOL";
      v9 = 12;
      goto LABEL_25;
    case 13:
      v8 = "int";
      v9 = 13;
      goto LABEL_25;
    case 14:
      v8 = "int";
      v9 = 14;
      goto LABEL_25;
    case 15:
      v8 = "double";
      v9 = 15;
      goto LABEL_25;
    case 16:
      v8 = "BOOL";
      v9 = 16;
      goto LABEL_25;
    case 17:
      v8 = "int";
      v9 = 17;
      goto LABEL_25;
    case 18:
      v8 = "BOOL";
      v9 = 18;
      goto LABEL_25;
    case 19:
      v8 = "int";
      v9 = 19;
      goto LABEL_25;
    case 20:
      v8 = "int";
      v9 = 20;
      goto LABEL_25;
    case 21:
      v8 = "int";
      v9 = 21;
      goto LABEL_25;
    case 22:
      v8 = "int";
      v9 = 22;
LABEL_25:
      throwWrongTypeForParamId(v9, v8, "string", a4, a5, a6, a7, a8);
      break;
    default:
      throwWrongParamIdValue(a2, "string", a3, a4, a5, a6, a7, a8);
      break;
  }

  return 0;
}

uint64_t PrefiltererSearchParamSet::getEnumParameter(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 1:
      v8 = "int";
      v9 = 1;
      goto LABEL_24;
    case 2:
      v8 = "int";
      v9 = 2;
      goto LABEL_24;
    case 3:
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v26 = qword_281051FA0;
          v27 = 3;
          goto LABEL_57;
        }

        if (a3 != 3)
        {
          goto LABEL_52;
        }

        v22 = qword_281051FA0;
        v23 = 3;
        goto LABEL_47;
      }

      if (!a3)
      {
        return *(a1 + 48);
      }

      if (a3 != 1)
      {
        goto LABEL_52;
      }

      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051FA0, 3, a3, a4, a5, a6, a7, a8);
      v11 = **ParamByParamId;
      if (**(v12 + 24))
      {
        v13 = v12 + 16;
        v14 = 1;
        v15 = v13;
        do
        {
          if (*v15 == 1)
          {
            return *(v15 + 16);
          }

          result = 0;
          v15 = v13 + 32 * v14++;
        }

        while (**(v15 + 8));
        return result;
      }

      return 0;
    case 4:
      v8 = "double";
      v9 = 4;
      goto LABEL_24;
    case 5:
      v8 = "int";
      v9 = 5;
      goto LABEL_24;
    case 6:
      v8 = "BOOL";
      v9 = 6;
      goto LABEL_24;
    case 7:
      v8 = "int";
      v9 = 7;
      goto LABEL_24;
    case 8:
      v8 = "int";
      v9 = 8;
      goto LABEL_24;
    case 9:
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v26 = qword_281051FA0;
          v27 = 9;
LABEL_57:
          v28 = ParamSpecMgr::getParamByParamId(v26, v27, a3, a4, a5, a6, a7, a8);
          if (v28)
          {
            v29 = **v28;
          }

          return EnumParamSpec::getMinVal(v28);
        }

        if (a3 == 3)
        {
          v22 = qword_281051FA0;
          v23 = 9;
LABEL_47:
          v24 = ParamSpecMgr::getParamByParamId(v22, v23, a3, a4, a5, a6, a7, a8);
          if (v24)
          {
            v25 = **v24;
          }

          return EnumParamSpec::getMaxVal(v24);
        }

        goto LABEL_52;
      }

      if (!a3)
      {
        return *(a1 + 80);
      }

      if (a3 != 1)
      {
LABEL_52:
        throwWrongQueryMode(a3, "enum", a3, a4, a5, a6, a7, a8);
        return 0;
      }

      v17 = ParamSpecMgr::getParamByParamId(qword_281051FA0, 9, a3, a4, a5, a6, a7, a8);
      v18 = **v17;
      if (!**(v19 + 24))
      {
        return 0;
      }

      v20 = v19 + 16;
      v21 = 1;
      v15 = v20;
      while (*v15 != 1)
      {
        result = 0;
        v15 = v20 + 32 * v21++;
        if (!**(v15 + 8))
        {
          return result;
        }
      }

      return *(v15 + 16);
    case 10:
      v8 = "BOOL";
      v9 = 10;
      goto LABEL_24;
    case 11:
      v8 = "double";
      v9 = 11;
      goto LABEL_24;
    case 12:
      v8 = "BOOL";
      v9 = 12;
      goto LABEL_24;
    case 13:
      v8 = "int";
      v9 = 13;
      goto LABEL_24;
    case 14:
      v8 = "int";
      v9 = 14;
      goto LABEL_24;
    case 15:
      v8 = "double";
      v9 = 15;
      goto LABEL_24;
    case 16:
      v8 = "BOOL";
      v9 = 16;
      goto LABEL_24;
    case 17:
      v8 = "int";
      v9 = 17;
      goto LABEL_24;
    case 18:
      v8 = "BOOL";
      v9 = 18;
      goto LABEL_24;
    case 19:
      v8 = "int";
      v9 = 19;
      goto LABEL_24;
    case 20:
      v8 = "int";
      v9 = 20;
      goto LABEL_24;
    case 21:
      v8 = "int";
      v9 = 21;
      goto LABEL_24;
    case 22:
      v8 = "int";
      v9 = 22;
LABEL_24:
      throwWrongTypeForParamId(v9, v8, "BOOL", a4, a5, a6, a7, a8);
      return 0;
    default:
      throwWrongParamIdValue(a2, "enum", a3, a4, a5, a6, a7, a8);
      return 0;
  }
}

void PrefiltererSearchParamSet::setBoolParameter(PrefiltererSearchParamSet *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v9 = a3;
  switch(a2)
  {
    case 1:
      throwWrongTypeForParamId(1, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_3;
    case 2:
LABEL_3:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_4;
    case 3:
LABEL_4:
      throwWrongTypeForParamId(v8, "enum", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_5;
    case 4:
LABEL_5:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_6;
    case 5:
LABEL_6:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_7;
    case 6:
LABEL_7:
      if (*(this + 9))
      {
        v11 = "PrefiltererLookaheadApplyOnReseed";
        goto LABEL_28;
      }

      *(this + 68) = v9;
      return;
    case 7:
      throwWrongTypeForParamId(7, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_14;
    case 8:
LABEL_14:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_15;
    case 9:
LABEL_15:
      throwWrongTypeForParamId(v8, "enum", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_16;
    case 10:
LABEL_16:
      if (*(this + 9))
      {
        v11 = "PrefiltererAllowFirstNodeSkipping";
        goto LABEL_28;
      }

      *(this + 84) = v9;
      return;
    case 11:
      throwWrongTypeForParamId(11, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_11;
    case 12:
LABEL_11:
      if (*(this + 9))
      {
        v11 = "PrefiltererPelScoreUseBestCompScore";
        goto LABEL_28;
      }

      *(this + 96) = v9;
      return;
    case 13:
      throwWrongTypeForParamId(13, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_20;
    case 14:
LABEL_20:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_21;
    case 15:
LABEL_21:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_22;
    case 16:
LABEL_22:
      if (*(this + 9))
      {
        v11 = "PrefiltererReturnDistanceAdjustDuration";
        goto LABEL_28;
      }

      *(this + 120) = v9;
      break;
    case 17:
      throwWrongTypeForParamId(17, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_26;
    case 18:
LABEL_26:
      if (*(this + 9))
      {
        v11 = "PrefiltererSeedScoreIncludeWordEndScore";
LABEL_28:

        throwParamSetSetFailed(v11, "BOOL", a3, a4, a5, a6, a7, a8);
      }

      else
      {
        *(this + 128) = v9;
      }

      break;
    case 19:
      throwWrongTypeForParamId(19, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_32;
    case 20:
LABEL_32:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_33;
    case 21:
LABEL_33:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_34;
    case 22:
LABEL_34:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_35;
    default:
LABEL_35:

      throwWrongParamIdValue(v8, "BOOL", a3, a4, a5, a6, a7, a8);
      return;
  }
}

void PrefiltererSearchParamSet::setIntParameter(PrefiltererSearchParamSet *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v9 = a3;
  switch(a2)
  {
    case 1:
      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051FA0, 1, a3, a4, a5, a6, a7, a8);
      if (ParamByParamId)
      {
        v16 = **ParamByParamId;
      }

      IntParamSpec::validateValue(ParamByParamId, v9, 0, 0, v12, v13, v14, v15);
      if (*(this + 9))
      {
        v23 = "PrefiltererActiveNodeCountLimit";
        goto LABEL_66;
      }

      *(this + 10) = v9;
      return;
    case 2:
      v48 = ParamSpecMgr::getParamByParamId(qword_281051FA0, 2, a3, a4, a5, a6, a7, a8);
      if (v48)
      {
        v53 = **v48;
      }

      IntParamSpec::validateValue(v48, v9, 0, 0, v49, v50, v51, v52);
      if (*(this + 9))
      {
        v23 = "PrefiltererBestScorePerAdditionalPhonemeScore";
        goto LABEL_66;
      }

      *(this + 11) = v9;
      return;
    case 3:
      throwWrongTypeForParamId(3, "enum", "int", a4, a5, a6, a7, a8);
      goto LABEL_14;
    case 4:
LABEL_14:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_15;
    case 5:
LABEL_15:
      v30 = ParamSpecMgr::getParamByParamId(qword_281051FA0, 5, a3, a4, a5, a6, a7, a8);
      if (v30)
      {
        v35 = **v30;
      }

      IntParamSpec::validateValue(v30, v9, 0, 0, v31, v32, v33, v34);
      if (*(this + 9))
      {
        v23 = "PrefiltererLookaheadThreshScore";
        goto LABEL_66;
      }

      *(this + 16) = v9;
      return;
    case 6:
      throwWrongTypeForParamId(6, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_50;
    case 7:
LABEL_50:
      v72 = ParamSpecMgr::getParamByParamId(qword_281051FA0, 7, a3, a4, a5, a6, a7, a8);
      if (v72)
      {
        v77 = **v72;
      }

      IntParamSpec::validateValue(v72, v9, 0, 0, v73, v74, v75, v76);
      if (*(this + 9))
      {
        v23 = "PrefiltererMaxSeedScore";
        goto LABEL_66;
      }

      *(this + 18) = v9;
      return;
    case 8:
      v42 = ParamSpecMgr::getParamByParamId(qword_281051FA0, 8, a3, a4, a5, a6, a7, a8);
      if (v42)
      {
        v47 = **v42;
      }

      IntParamSpec::validateValue(v42, v9, 0, 0, v43, v44, v45, v46);
      if (*(this + 9))
      {
        v23 = "PrefiltererMinNodeScore";
        goto LABEL_66;
      }

      *(this + 19) = v9;
      return;
    case 9:
      throwWrongTypeForParamId(9, "enum", "int", a4, a5, a6, a7, a8);
      goto LABEL_21;
    case 10:
LABEL_21:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_22;
    case 11:
LABEL_22:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_23;
    case 12:
LABEL_23:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_24;
    case 13:
LABEL_24:
      v36 = ParamSpecMgr::getParamByParamId(qword_281051FA0, 13, a3, a4, a5, a6, a7, a8);
      if (v36)
      {
        v41 = **v36;
      }

      IntParamSpec::validateValue(v36, v9, 0, 0, v37, v38, v39, v40);
      if (*(this + 9))
      {
        v23 = "PrefiltererReturnDistanceMaxFrames";
        goto LABEL_66;
      }

      *(this + 25) = v9;
      return;
    case 14:
      v66 = ParamSpecMgr::getParamByParamId(qword_281051FA0, 14, a3, a4, a5, a6, a7, a8);
      if (v66)
      {
        v71 = **v66;
      }

      IntParamSpec::validateValue(v66, v9, 0, 0, v67, v68, v69, v70);
      if (*(this + 9))
      {
        v23 = "PrefiltererReturnDistancePerFramePenalty";
        goto LABEL_66;
      }

      *(this + 26) = v9;
      return;
    case 15:
      throwWrongTypeForParamId(15, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_7;
    case 16:
LABEL_7:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_8;
    case 17:
LABEL_8:
      v24 = ParamSpecMgr::getParamByParamId(qword_281051FA0, 17, a3, a4, a5, a6, a7, a8);
      if (v24)
      {
        v29 = **v24;
      }

      IntParamSpec::validateValue(v24, v9, 0, 0, v25, v26, v27, v28);
      if (*(this + 9))
      {
        v23 = "PrefiltererReturnListMaxLength";
        goto LABEL_66;
      }

      *(this + 31) = v9;
      return;
    case 18:
      throwWrongTypeForParamId(18, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_55;
    case 19:
LABEL_55:
      v78 = ParamSpecMgr::getParamByParamId(qword_281051FA0, 19, a3, a4, a5, a6, a7, a8);
      if (v78)
      {
        v83 = **v78;
      }

      IntParamSpec::validateValue(v78, v9, 0, 0, v79, v80, v81, v82);
      if (*(this + 9))
      {
        v23 = "PrefiltererThreshScoreWhenSilenceBest";
        goto LABEL_66;
      }

      *(this + 33) = v9;
      return;
    case 20:
      v84 = ParamSpecMgr::getParamByParamId(qword_281051FA0, 20, a3, a4, a5, a6, a7, a8);
      if (v84)
      {
        v89 = **v84;
      }

      IntParamSpec::validateValue(v84, v9, 0, 0, v85, v86, v87, v88);
      if (*(this + 9))
      {
        v23 = "PrefiltererThreshScoreIncrementWhenNonSilenceBest";
        goto LABEL_66;
      }

      *(this + 34) = v9;
      return;
    case 21:
      v54 = ParamSpecMgr::getParamByParamId(qword_281051FA0, 21, a3, a4, a5, a6, a7, a8);
      if (v54)
      {
        v59 = **v54;
      }

      IntParamSpec::validateValue(v54, v9, 0, 0, v55, v56, v57, v58);
      if (*(this + 9))
      {
        v23 = "PrefiltererReturnListThreshScoreDecrement";
        goto LABEL_66;
      }

      *(this + 35) = v9;
      break;
    case 22:
      v60 = ParamSpecMgr::getParamByParamId(qword_281051FA0, 22, a3, a4, a5, a6, a7, a8);
      if (v60)
      {
        v65 = **v60;
      }

      IntParamSpec::validateValue(v60, v9, 0, 0, v61, v62, v63, v64);
      if (*(this + 9))
      {
        v23 = "PrefiltererPelBackoffThreshScoreDecrement";
LABEL_66:

        throwParamSetSetFailed(v23, "int", v17, v18, v19, v20, v21, v22);
      }

      else
      {
        *(this + 36) = v9;
      }

      break;
    default:

      throwWrongParamIdValue(a2, "int", a3, a4, a5, a6, a7, a8);
      return;
  }
}

void PrefiltererSearchParamSet::setDoubleParameter(PrefiltererSearchParamSet *this, int a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a2;
  switch(a2)
  {
    case 1:
      throwWrongTypeForParamId(1, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_3;
    case 2:
LABEL_3:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_4;
    case 3:
LABEL_4:
      throwWrongTypeForParamId(v9, "enum", "double", a5, a6, a7, a8, a9);
      goto LABEL_5;
    case 4:
LABEL_5:
      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051FA0, 4, a4, a5, a6, a7, a8, a9);
      if (ParamByParamId)
      {
        v18 = **ParamByParamId;
      }

      DoubleParamSpec::validateValue(ParamByParamId, a3, 0, 0, v13, v14, v15, v16, v17);
      if (*(this + 9))
      {
        v25 = "PrefiltererLookaheadSequenceFirstPhonemeLMScale";
        goto LABEL_38;
      }

      *(this + 7) = a3;
      return;
    case 5:
      throwWrongTypeForParamId(5, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_29;
    case 6:
LABEL_29:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_30;
    case 7:
LABEL_30:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_31;
    case 8:
LABEL_31:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_32;
    case 9:
LABEL_32:
      throwWrongTypeForParamId(v9, "enum", "double", a5, a6, a7, a8, a9);
      goto LABEL_33;
    case 10:
LABEL_33:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_34;
    case 11:
LABEL_34:
      v33 = ParamSpecMgr::getParamByParamId(qword_281051FA0, 11, a4, a5, a6, a7, a8, a9);
      if (v33)
      {
        v39 = **v33;
      }

      DoubleParamSpec::validateValue(v33, a3, 0, 0, v34, v35, v36, v37, v38);
      if (*(this + 9))
      {
        v25 = "PrefiltererPelScoreScale";
        goto LABEL_38;
      }

      *(this + 11) = a3;
      break;
    case 12:
      throwWrongTypeForParamId(12, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_11;
    case 13:
LABEL_11:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_12;
    case 14:
LABEL_12:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_13;
    case 15:
LABEL_13:
      v26 = ParamSpecMgr::getParamByParamId(qword_281051FA0, 15, a4, a5, a6, a7, a8, a9);
      if (v26)
      {
        v32 = **v26;
      }

      DoubleParamSpec::validateValue(v26, a3, 0, 0, v27, v28, v29, v30, v31);
      if (*(this + 9))
      {
        v25 = "PrefiltererReturnDistanceWordDurationFactor";
LABEL_38:

        throwParamSetSetFailed(v25, "double", v19, v20, v21, v22, v23, v24);
      }

      else
      {
        *(this + 14) = a3;
      }

      break;
    case 16:
      throwWrongTypeForParamId(16, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_19;
    case 17:
LABEL_19:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_20;
    case 18:
LABEL_20:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_21;
    case 19:
LABEL_21:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_22;
    case 20:
LABEL_22:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_23;
    case 21:
LABEL_23:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_24;
    case 22:
LABEL_24:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_25;
    default:
LABEL_25:

      throwWrongParamIdValue(v9, "double", a4, a5, a6, a7, a8, a9);
      return;
  }
}

void PrefiltererSearchParamSet::setStringParameter(PrefiltererSearchParamSet *this, int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  switch(a2)
  {
    case 1:
      throwWrongTypeForParamId(1, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_3;
    case 2:
LABEL_3:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_4;
    case 3:
LABEL_4:
      throwWrongTypeForParamId(v8, "enum", "string", a4, a5, a6, a7, a8);
      goto LABEL_5;
    case 4:
LABEL_5:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_6;
    case 5:
LABEL_6:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_7;
    case 6:
LABEL_7:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_8;
    case 7:
LABEL_8:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_9;
    case 8:
LABEL_9:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_10;
    case 9:
LABEL_10:
      throwWrongTypeForParamId(v8, "enum", "string", a4, a5, a6, a7, a8);
      goto LABEL_11;
    case 10:
LABEL_11:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_12;
    case 11:
LABEL_12:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_13;
    case 12:
LABEL_13:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_14;
    case 13:
LABEL_14:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_15;
    case 14:
LABEL_15:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_16;
    case 15:
LABEL_16:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_17;
    case 16:
LABEL_17:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_18;
    case 17:
LABEL_18:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_19;
    case 18:
LABEL_19:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_20;
    case 19:
LABEL_20:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_21;
    case 20:
LABEL_21:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_22;
    case 21:
LABEL_22:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_23;
    case 22:
LABEL_23:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      break;
    default:
      break;
  }

  throwWrongParamIdValue(v8, "string", a3, a4, a5, a6, a7, a8);
}

void PrefiltererSearchParamSet::setEnumParameter(PrefiltererSearchParamSet *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v9 = a3;
  switch(a2)
  {
    case 1:
      throwWrongTypeForParamId(1, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_3;
    case 2:
LABEL_3:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_4;
    case 3:
LABEL_4:
      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051FA0, 3, a3, a4, a5, a6, a7, a8);
      if (ParamByParamId)
      {
        v18 = **ParamByParamId;
      }

      EnumParamSpec::validateValue(ParamByParamId, v9, v12, v13, v14, v15, v16, v17);
      if (*(this + 9))
      {
        v25 = "PrefiltererDecimationType";
        goto LABEL_34;
      }

      *(this + 12) = v9;
      break;
    case 4:
      throwWrongTypeForParamId(4, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_26;
    case 5:
LABEL_26:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_27;
    case 6:
LABEL_27:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_28;
    case 7:
LABEL_28:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_29;
    case 8:
LABEL_29:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_30;
    case 9:
LABEL_30:
      v26 = ParamSpecMgr::getParamByParamId(qword_281051FA0, 9, a3, a4, a5, a6, a7, a8);
      if (v26)
      {
        v33 = **v26;
      }

      EnumParamSpec::validateValue(v26, v9, v27, v28, v29, v30, v31, v32);
      if (*(this + 9))
      {
        v25 = "PrefiltererNodeSkippingType";
LABEL_34:

        throwParamSetSetFailed(v25, "enum", v19, v20, v21, v22, v23, v24);
      }

      else
      {
        *(this + 20) = v9;
      }

      break;
    case 10:
      throwWrongTypeForParamId(10, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_10;
    case 11:
LABEL_10:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_11;
    case 12:
LABEL_11:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_12;
    case 13:
LABEL_12:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_13;
    case 14:
LABEL_13:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_14;
    case 15:
LABEL_14:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_15;
    case 16:
LABEL_15:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_16;
    case 17:
LABEL_16:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_17;
    case 18:
LABEL_17:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_18;
    case 19:
LABEL_18:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_19;
    case 20:
LABEL_19:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_20;
    case 21:
LABEL_20:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_21;
    case 22:
LABEL_21:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_22;
    default:
LABEL_22:

      throwWrongParamIdValue(v8, "enum", a3, a4, a5, a6, a7, a8);
      return;
  }
}

void PrefiltererSearchParamSet::~PrefiltererSearchParamSet(PrefiltererSearchParamSet *this)
{
  *this = &unk_287528C00;
  DgnString::~DgnString((this + 8));
}

{
  *this = &unk_287528C00;
  DgnString::~DgnString((this + 8));

  JUMPOUT(0x26672B1B0);
}

uint64_t TCollation::setCollation(TCollation *this)
{
  v3 = this + 16;
  v2 = *(this + 2);
  *(this + 4) = *(v3 + 1);
  if (v2)
  {
    MEMORY[0x26672B190](v2, 0x1000C8052888210);
  }

  *(this + 2) = 0;
  *this = 0;
  result = *(this + 1);
  if (result)
  {
    result = MEMORY[0x26672B190](result, 0x1000C8052888210);
  }

  *(this + 1) = 0;
  return result;
}

void TCollation::TCollation(TCollation *this)
{
  *(this + 5) = 0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  TCollation::setCollation(this);
}

void TCollation::setCollation(TCollation *this, TInputStream *a2)
{
  TCollation::setCollation(this);
  if (TInputStream::verifyHeader(a2, "Collation", &pCollationVersion, 1))
  {
    std::string::basic_string[abi:ne200100]<0>(v31, &byte_262899963);
    *v33 = byte_287529580;
    if ((v31[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v33[8], *v31, *&v31[8]);
    }

    else
    {
      *&v33[8] = *v31;
      v34 = *&v31[16];
    }

    *v33 = &unk_287528000;
    if (v34 >= 0)
    {
      v13 = &v33[8];
    }

    else
    {
      v13 = *&v33[8];
    }

    conditionalAssert(v13, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/collation.cpp", 172, v7, v8);
    *v33 = byte_287529580;
    if (SHIBYTE(v34) < 0)
    {
      operator delete(*&v33[8]);
    }

    if ((v31[23] & 0x80000000) != 0)
    {
      operator delete(*v31);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v33, &byte_262899963);
    *exception = byte_287529580;
    v15 = (exception + 1);
    if ((v33[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v15, *v33, *&v33[8]);
    }

    else
    {
      v22 = *v33;
      exception[3] = *&v33[16];
      *&v15->__r_.__value_.__l.__data_ = v22;
    }

    *exception = &unk_287528000;
  }

  TFileObjectParser::TFileObjectParser(v33, a2);
  v4 = *v33;
  *v31 = dword_2628997A8;
  *&v31[8] = xmmword_26286B6A0;
  v32 = -1;
  if (TFileObject::verify(*v33, v31, 1, 1))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *v29 = byte_287529580;
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v29[8], *__p, *&__p[8]);
    }

    else
    {
      *&v29[8] = *__p;
      v30 = *&__p[16];
    }

    *v29 = &unk_287526298;
    if (v30 >= 0)
    {
      v16 = &v29[8];
    }

    else
    {
      v16 = *&v29[8];
    }

    conditionalAssert(v16, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/collation.cpp", 182, v9, v10);
    *v29 = byte_287529580;
    if (SHIBYTE(v30) < 0)
    {
      operator delete(*&v29[8]);
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v17 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v29, &byte_262899963);
    *v17 = byte_287529580;
    v18 = (v17 + 1);
    if ((v29[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v18, *v29, *&v29[8]);
    }

    else
    {
      v23 = *v29;
      v17[3] = *&v29[16];
      *&v18->__r_.__value_.__l.__data_ = v23;
    }

    *v17 = &unk_287526298;
  }

  Attribute = TFileObject::getAttribute(v4, dword_2628997A8);
  v6 = Attribute;
  if (Attribute)
  {
    *v29 = &unk_2628997A0;
    *&v29[8] = xmmword_26286B6D0;
    v30 = -1;
    if (!TFileObject::verify(Attribute, v29, 1, 1))
    {
      TCollation::initSerializedTable(this, v6);
    }

    std::string::basic_string[abi:ne200100]<0>(v25, &byte_262899963);
    *__p = byte_287529580;
    if (SHIBYTE(v26) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], v25[0], v25[1]);
    }

    else
    {
      *&__p[8] = *v25;
      v28 = v26;
    }

    *__p = &unk_287526298;
    if (v28 >= 0)
    {
      v19 = &__p[8];
    }

    else
    {
      v19 = *&__p[8];
    }

    conditionalAssert(v19, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/collation.cpp", 190, v11, v12);
    *__p = byte_287529580;
    if (SHIBYTE(v28) < 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[0]);
    }

    v20 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *v20 = byte_287529580;
    v21 = (v20 + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v21, *__p, *&__p[8]);
    }

    else
    {
      v24 = *__p;
      v20[3] = *&__p[16];
      *&v21->__r_.__value_.__l.__data_ = v24;
    }

    *v20 = &unk_287526298;
  }

  TFileObjectParser::~TFileObjectParser(v33);
}

void sub_262865F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, void *a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, int a28, __int16 a29, char a30, char a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v42 & 1) == 0)
    {
LABEL_6:
      TFileObjectParser::~TFileObjectParser((v43 - 112));
      _Unwind_Resume(a1);
    }
  }

  else if (!v42)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v41);
  goto LABEL_6;
}

void TCollation::~TCollation(TCollation *this)
{
  TCollation::setCollation(this);
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

void TCollation::initSerializedTable(TCollation *this, const TFileObject *a2)
{
  v37 = v39;
  v38 = xmmword_26286B6F0;
  v39[1024] = 1;
  for (i = *(a2 + 3); i; i = *(i + 16))
  {
    v34 = &unk_2628997A0;
    v35 = vdupq_n_s64(1uLL);
    v36 = -1;
    if (TFileObject::verify(i, &v34, 1, 1))
    {
      std::string::basic_string[abi:ne200100]<0>(v30, &byte_262899963);
      *__p = byte_287529580;
      if (SHIBYTE(v31) < 0)
      {
        std::string::__init_copy_ctor_external(&__p[8], v30[0], v30[1]);
      }

      else
      {
        *&__p[8] = *v30;
        v33 = v31;
      }

      *__p = &unk_287526298;
      if (v33 >= 0)
      {
        v22 = &__p[8];
      }

      else
      {
        v22 = *&__p[8];
      }

      conditionalAssert(v22, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/collation.cpp", 104, v17, v18);
      *__p = byte_287529580;
      if (SHIBYTE(v33) < 0)
      {
        operator delete(*&__p[8]);
      }

      if (SHIBYTE(v31) < 0)
      {
        operator delete(v30[0]);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *exception = byte_287529580;
      v24 = (exception + 1);
      if ((__p[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v24, *__p, *&__p[8]);
      }

      else
      {
        v28 = *__p;
        exception[3] = *&__p[16];
        *&v24->__r_.__value_.__l.__data_ = v28;
      }

      *exception = &unk_287526298;
    }

    if (*this >= 0xFFFFuLL)
    {
      tknPrintf("Error: Invalid collation table. Should have %llu classes of characters/strings max.\n", v4, v5, v6, v7, 0xFFFFLL);
      std::string::basic_string[abi:ne200100]<0>(v30, &byte_262899963);
      *__p = byte_287529580;
      if (SHIBYTE(v31) < 0)
      {
        std::string::__init_copy_ctor_external(&__p[8], v30[0], v30[1]);
      }

      else
      {
        *&__p[8] = *v30;
        v33 = v31;
      }

      *__p = &unk_287526298;
      if (v33 >= 0)
      {
        v25 = &__p[8];
      }

      else
      {
        v25 = *&__p[8];
      }

      conditionalAssert(v25, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/collation.cpp", 110, v19, v20);
      *__p = byte_287529580;
      if (SHIBYTE(v33) < 0)
      {
        operator delete(*&__p[8]);
      }

      if (SHIBYTE(v31) < 0)
      {
        operator delete(v30[0]);
      }

      v26 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *v26 = byte_287529580;
      v27 = (v26 + 1);
      if ((__p[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v27, *__p, *&__p[8]);
      }

      else
      {
        v29 = *__p;
        v26[3] = *&__p[16];
        *&v27->__r_.__value_.__l.__data_ = v29;
      }

      *v26 = &unk_287526298;
    }

    for (j = *(i + 24); j; j = *(j + 2))
    {
      if (TFileObject::verify(j, 0, 0))
      {
        std::string::basic_string[abi:ne200100]<0>(v30, &byte_262899963);
        *__p = byte_287529580;
        if (SHIBYTE(v31) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[8], v30[0], v30[1]);
        }

        else
        {
          *&__p[8] = *v30;
          v33 = v31;
        }

        *__p = &unk_287526298;
        if (v33 >= 0)
        {
          v14 = &__p[8];
        }

        else
        {
          v14 = *&__p[8];
        }

        conditionalAssert(v14, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/collation.cpp", 117, v12, v13);
        *__p = byte_287529580;
        if (SHIBYTE(v33) < 0)
        {
          operator delete(*&__p[8]);
        }

        if (SHIBYTE(v31) < 0)
        {
          operator delete(v30[0]);
        }

        v15 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v15 = byte_287529580;
        v16 = (v15 + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v16, *__p, *&__p[8]);
        }

        else
        {
          v21 = *__p;
          v15[3] = *&__p[16];
          *&v16->__r_.__value_.__l.__data_ = v21;
        }

        *v15 = &unk_287526298;
      }

      v9 = 0;
      v10 = *(j + 3);
        ;
      }

      TBuffer<wchar_t>::insert(&v37, *(&v38 + 1), v10, v9 - 1);
      *__p = 0;
      TBuffer<wchar_t>::insert(&v37, *(&v38 + 1), __p, 1uLL);
    }

    *__p = 0;
    TBuffer<wchar_t>::insert(&v37, *(&v38 + 1), __p, 1uLL);
    ++*this;
  }

  operator new[]();
}

void sub_262866794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, void *a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      if (LOBYTE(STACK[0x478]) == 1 && a24 != v26 && a24 != 0)
      {
        MEMORY[0x26672B1B0]();
      }

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

uint64_t TCollation::collateCharSlow(uint64_t a1, unsigned int *a2, unint64_t *a3)
{
  *a3 = 1;
  result = *a2;
  v5 = *(a1 + 16);
  if (WORD1(result))
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    result = *(v5 + 4 * result);
  }

  v9 = a1 + 24;
  v7 = *(a1 + 24);
  v8 = *(v9 + 8);
  v10 = v8 - v7;
  if (v8 != v7)
  {
    v11 = 0;
    v12 = v10 >> 4;
    if (v12 <= 1)
    {
      v12 = 1;
    }

    v13 = 1;
    do
    {
      v14 = (v7 + 16 * v11);
      v15 = **v14;
      if (v15)
      {
        v16 = (*v14 + 4);
        v17 = a2;
        do
        {
          v18 = *v17;
          if (!*v17)
          {
            break;
          }

          if (v15 != v18)
          {
            if (v15 > v18)
            {
              return result;
            }

            goto LABEL_20;
          }

          ++v17;
          v19 = *v16++;
          v15 = v19;
        }

        while (v19);
      }

      else
      {
        v17 = a2;
      }

      v20 = (v17 - a2) >> 2;
      if (v20 > v13)
      {
        *a3 = v20;
        result = v14[2];
        v13 = v20;
      }

LABEL_20:
      ++v11;
    }

    while (v11 != v12);
  }

  return result;
}

uint64_t TCollation::collprefixcmp(void *a1, int *a2, uint64_t a3)
{
  v6 = 0;
  while (1)
  {
    v8 = *a2++;
    v7 = v8;
    if (!v8)
    {
      break;
    }

    v16 = 1;
    v9 = (a3 + 4 * v6);
    v10 = *v9;
    v11 = a1[3] == a1[4] || v10 == 0;
    if (v11 || !v9[1])
    {
      v13 = a1[2];
      if (HIWORD(v10))
      {
        v14 = 1;
      }

      else
      {
        v14 = v13 == 0;
      }

      if (!v14)
      {
        v10 = *(v13 + 4 * v10);
      }

      v12 = 1;
    }

    else
    {
      v10 = TCollation::collateCharSlow(a1, v9, &v16);
      v12 = v16;
    }

    v6 += v12;
    result = v7 - v10;
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t TCollation::collate(void *a1, unsigned int *a2, uint64_t a3)
{
  result = *a2;
  if (result)
  {
    v7 = 0;
    do
    {
      v11 = 0;
      if (a1[3] == a1[4] || (v8 = &a2[v7], !v8[1]))
      {
        if (!WORD1(result))
        {
          v10 = a1[2];
          if (v10)
          {
            LODWORD(result) = *(v10 + 4 * result);
          }
        }

        v9 = 1;
      }

      else
      {
        LODWORD(result) = TCollation::collateCharSlow(a1, v8, &v11);
        v9 = v11;
      }

      v12 = result;
      TBuffer<wchar_t>::insert(a3, *(a3 + 16), &v12, 1uLL);
      v7 += v9;
      result = a2[v7];
    }

    while (result);
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<wchar_t const*,wchar_t>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*,false>(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 2;
  v86 = a2 - 1;
  v87 = a2 - 6;
  v88 = a2 - 4;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 4;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        result = (*a3)(a2 - 2, v10);
        if (result)
        {
          v81 = *v10;
          *v10 = *(a2 - 2);
          *(a2 - 2) = v81;
          LODWORD(v81) = *(v10 + 8);
          *(v10 + 8) = *(a2 - 2);
          *(a2 - 2) = v81;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      v74 = (*a3)((v10 + 16), v10);
      result = (*a3)(a2 - 2, (v10 + 16));
      if (v74)
      {
        v76 = (v10 + 8);
        v75 = *v10;
        if (result)
        {
          *v10 = *(a2 - 2);
        }

        else
        {
          *v10 = *(v10 + 16);
          *(v10 + 16) = v75;
          v76 = (v10 + 24);
          v84 = *(v10 + 8);
          *(v10 + 8) = *(v10 + 24);
          *(v10 + 24) = v84;
          result = (*a3)(a2 - 2, (v10 + 16));
          if (!result)
          {
            return result;
          }

          v75 = *(v10 + 16);
          *(v10 + 16) = *(a2 - 2);
        }

        *(a2 - 2) = v75;
      }

      else
      {
        if (!result)
        {
          return result;
        }

        v82 = *(v10 + 16);
        *(v10 + 16) = *(a2 - 2);
        *(a2 - 2) = v82;
        LODWORD(v82) = *(v10 + 24);
        v86 = (v10 + 24);
        *(v10 + 24) = *(a2 - 2);
        *(a2 - 2) = v82;
        result = (*a3)((v10 + 16), v10);
        if (!result)
        {
          return result;
        }

        v83 = *v10;
        *v10 = *(v10 + 16);
        *(v10 + 16) = v83;
        v76 = (v10 + 8);
      }

      v85 = *v76;
      *v76 = *v86;
      *v86 = v85;
      return result;
    }

    if (v13 == 4)
    {
      break;
    }

    if (v13 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*,0>(v10, (v10 + 16), (v10 + 32), (v10 + 48), a3);
      result = (*a3)(a2 - 2, (v10 + 48));
      if (result)
      {
        v77 = *(v10 + 48);
        *(v10 + 48) = *(a2 - 2);
        *(a2 - 2) = v77;
        LODWORD(v77) = *(v10 + 56);
        *(v10 + 56) = *(a2 - 2);
        *(a2 - 2) = v77;
        result = (*a3)((v10 + 48), (v10 + 32));
        if (result)
        {
          v78 = *(v10 + 32);
          *(v10 + 32) = *(v10 + 48);
          *(v10 + 48) = v78;
          LODWORD(v78) = *(v10 + 40);
          *(v10 + 40) = *(v10 + 56);
          *(v10 + 56) = v78;
          result = (*a3)((v10 + 32), (v10 + 16));
          if (result)
          {
            v79 = *(v10 + 16);
            *(v10 + 16) = *(v10 + 32);
            *(v10 + 32) = v79;
            LODWORD(v79) = *(v10 + 24);
            *(v10 + 24) = *(v10 + 40);
            *(v10 + 40) = v79;
            result = (*a3)((v10 + 16), v10);
            if (result)
            {
              v80 = *v10;
              *v10 = *(v10 + 16);
              *(v10 + 16) = v80;
              LODWORD(v80) = *(v10 + 8);
              *(v10 + 8) = *(v10 + 24);
              *(v10 + 24) = v80;
            }
          }
        }
      }

      return result;
    }

LABEL_11:
    if (v13 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*>(v10, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*>(v10, a2, a3);
      }
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*,std::pair<wchar_t const*,wchar_t>*>(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = v10 + 16 * (v13 >> 1);
    v15 = *a3;
    if (v13 >= 0x81)
    {
      v16 = v15((v10 + 16 * (v13 >> 1)), v10);
      v17 = (*a3)(a2 - 2, v14);
      if (v16)
      {
        v19 = (v8 + 8);
        v18 = *v8;
        if (v17)
        {
          *v8 = *v9;
          goto LABEL_28;
        }

        *v8 = *v14;
        *v14 = v18;
        v19 = (v14 + 8);
        v30 = *(v8 + 8);
        *(v8 + 8) = *(v14 + 8);
        *(v14 + 8) = v30;
        if ((*a3)(a2 - 2, v14))
        {
          v18 = *v14;
          *v14 = *v9;
LABEL_28:
          *v9 = v18;
          v25 = a2 - 1;
LABEL_29:
          v31 = *v19;
          *v19 = *v25;
          *v25 = v31;
        }
      }

      else if (v17)
      {
        v24 = *v14;
        *v14 = *(a2 - 2);
        *(a2 - 2) = v24;
        v25 = (v14 + 8);
        LODWORD(v24) = *(v14 + 8);
        *(v14 + 8) = *(a2 - 2);
        *(a2 - 2) = v24;
        if ((*a3)(v14, v8))
        {
          v26 = *v8;
          *v8 = *v14;
          v19 = (v8 + 8);
          *v14 = v26;
          goto LABEL_29;
        }
      }

      v32 = (v14 - 16);
      v33 = (*a3)((v14 - 16), (v8 + 16));
      v34 = (*a3)(v88, (v14 - 16));
      if (v33)
      {
        v35 = *(v8 + 16);
        v36 = (v8 + 24);
        if (v34)
        {
          *(v8 + 16) = *v88;
          *v88 = v35;
          goto LABEL_41;
        }

        *(v8 + 16) = *v32;
        *v32 = v35;
        v41 = *v36;
        *v36 = *(v14 - 8);
        *(v14 - 8) = v41;
        if ((*a3)(v88, (v14 - 16)))
        {
          v42 = *v32;
          *v32 = *v88;
          *v88 = v42;
          v36 = (v14 - 8);
LABEL_41:
          v38 = a2 - 3;
LABEL_42:
          v43 = *v36;
          *v36 = *v38;
          *v38 = v43;
        }
      }

      else if (v34)
      {
        v37 = *v32;
        *v32 = *(a2 - 4);
        *(a2 - 4) = v37;
        v38 = (v14 - 8);
        LODWORD(v37) = *(v14 - 8);
        *(v14 - 8) = *(a2 - 6);
        *(a2 - 6) = v37;
        if ((*a3)((v14 - 16), (v8 + 16)))
        {
          v39 = *(v8 + 16);
          *(v8 + 16) = *v32;
          *v32 = v39;
          v36 = (v8 + 24);
          goto LABEL_42;
        }
      }

      v44 = (v14 + 16);
      v45 = (*a3)((v14 + 16), (v8 + 32));
      v46 = (*a3)(v87, (v14 + 16));
      if (v45)
      {
        v47 = *(v8 + 32);
        v48 = (v8 + 40);
        if (v46)
        {
          *(v8 + 32) = *v87;
          *v87 = v47;
          goto LABEL_51;
        }

        *(v8 + 32) = *v44;
        *v44 = v47;
        v52 = *v48;
        *v48 = *(v14 + 24);
        *(v14 + 24) = v52;
        if ((*a3)(v87, (v14 + 16)))
        {
          v53 = *v44;
          *v44 = *v87;
          *v87 = v53;
          v48 = (v14 + 24);
LABEL_51:
          v50 = a2 - 5;
LABEL_52:
          v54 = *v48;
          *v48 = *v50;
          *v50 = v54;
        }
      }

      else if (v46)
      {
        v49 = *v44;
        *v44 = *(a2 - 6);
        *(a2 - 6) = v49;
        v50 = (v14 + 24);
        LODWORD(v49) = *(v14 + 24);
        *(v14 + 24) = *(a2 - 10);
        *(a2 - 10) = v49;
        if ((*a3)((v14 + 16), (v8 + 32)))
        {
          v51 = *(v8 + 32);
          *(v8 + 32) = *v44;
          *v44 = v51;
          v48 = (v8 + 40);
          goto LABEL_52;
        }
      }

      v55 = (*a3)(v14, (v14 - 16));
      v56 = (*a3)((v14 + 16), v14);
      if (v55)
      {
        v57 = *v32;
        if (v56)
        {
          *v32 = *v44;
          *v44 = v57;
          v58 = (v14 + 24);
          v59 = *v14;
          v60 = (v14 - 8);
          goto LABEL_61;
        }

        *v32 = *v14;
        *v14 = v57;
        v65 = *(v14 - 8);
        *(v14 - 8) = *(v14 + 8);
        *(v14 + 8) = v65;
        v66 = (*a3)((v14 + 16), v14);
        v59 = *v14;
        if (v66)
        {
          v67 = *v44;
          *v14 = *v44;
          *v44 = v59;
          v58 = (v14 + 24);
          v59 = v67;
          v60 = (v14 + 8);
LABEL_61:
          v62 = v58;
LABEL_62:
          v68 = *v60;
          *v60 = *v62;
          *v62 = v68;
        }
      }

      else
      {
        v59 = *v14;
        if (v56)
        {
          *v14 = *v44;
          *v44 = v59;
          v62 = (v14 + 8);
          v61 = *(v14 + 8);
          *(v14 + 8) = *(v14 + 24);
          *(v14 + 24) = v61;
          v63 = (*a3)(v14, (v14 - 16));
          v59 = *v14;
          if (v63)
          {
            v64 = *v32;
            *v32 = v59;
            v60 = (v14 - 8);
            *v14 = v64;
            v59 = v64;
            goto LABEL_62;
          }
        }
      }

      v69 = *v8;
      *v8 = v59;
      v23 = (v8 + 8);
      *v14 = v69;
      v29 = (v14 + 8);
LABEL_64:
      v70 = *v23;
      *v23 = *v29;
      *v29 = v70;
      goto LABEL_65;
    }

    v20 = v15(v10, (v10 + 16 * (v13 >> 1)));
    v21 = (*a3)(a2 - 2, v10);
    if (v20)
    {
      v23 = (v14 + 8);
      v22 = *v14;
      if (v21)
      {
        *v14 = *v9;
LABEL_38:
        *v9 = v22;
        v29 = a2 - 1;
        goto LABEL_64;
      }

      *v14 = *v10;
      *v10 = v22;
      v23 = (v10 + 8);
      v40 = *(v14 + 8);
      *(v14 + 8) = *(v10 + 8);
      *(v10 + 8) = v40;
      if ((*a3)(a2 - 2, v10))
      {
        v22 = *v10;
        *v10 = *v9;
        goto LABEL_38;
      }
    }

    else if (v21)
    {
      v27 = *v10;
      *v10 = *(a2 - 2);
      *(a2 - 2) = v27;
      LODWORD(v27) = *(v10 + 8);
      *(v10 + 8) = *(a2 - 2);
      *(a2 - 2) = v27;
      if ((*a3)(v10, v14))
      {
        v28 = *v14;
        *v14 = *v10;
        *v10 = v28;
        v23 = (v14 + 8);
        v29 = (v10 + 8);
        goto LABEL_64;
      }
    }

LABEL_65:
    if ((a5 & 1) == 0 && ((*a3)((v8 - 16), v8) & 1) == 0)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<wchar_t const*,wchar_t> *,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&)>(v8, a2, a3);
      v10 = result;
      goto LABEL_72;
    }

    v71 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<wchar_t const*,wchar_t> *,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&)>(v8, a2, a3);
    if ((v72 & 1) == 0)
    {
      goto LABEL_70;
    }

    v73 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*>(v8, v71, a3);
    v10 = (v71 + 2);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*>((v71 + 2), a2, a3);
    if (result)
    {
      a4 = -v12;
      a2 = v71;
      if (v73)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v73)
    {
LABEL_70:
      result = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*,false>(v8, v71, a3, -v12, a5 & 1);
      v10 = (v71 + 2);
LABEL_72:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*,0>(v10, (v10 + 16), (v10 + 32), a2 - 2, a3);
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (**a5)(uint64_t *, uint64_t *))
{
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    v13 = (a1 + 1);
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
LABEL_9:
      *a3 = v12;
      v15 = (a3 + 1);
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v12;
    v13 = (a2 + 1);
    v17 = *(a1 + 2);
    *(a1 + 2) = *(a2 + 2);
    *(a2 + 2) = v17;
    if ((*a5)(a3, a2))
    {
      v12 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v14 = *a2;
    *a2 = *a3;
    *a3 = v14;
    v15 = (a2 + 1);
    LODWORD(v14) = *(a2 + 2);
    *(a2 + 2) = *(a3 + 2);
    *(a3 + 2) = v14;
    if ((*a5)(a2, a1))
    {
      v16 = *a1;
      *a1 = *a2;
      v13 = (a1 + 1);
      *a2 = v16;
LABEL_10:
      v18 = *v13;
      *v13 = *v15;
      *v15 = v18;
    }
  }

  result = (*a5)(a4, a3);
  if (result)
  {
    v20 = *a3;
    *a3 = *a4;
    *a4 = v20;
    LODWORD(v20) = *(a3 + 2);
    *(a3 + 2) = *(a4 + 2);
    *(a4 + 2) = v20;
    result = (*a5)(a3, a2);
    if (result)
    {
      v21 = *a2;
      *a2 = *a3;
      *a3 = v21;
      LODWORD(v21) = *(a2 + 2);
      *(a2 + 2) = *(a3 + 2);
      *(a3 + 2) = v21;
      result = (*a5)(a2, a1);
      if (result)
      {
        v22 = *a1;
        *a1 = *a2;
        *a2 = v22;
        LODWORD(v22) = *(a1 + 2);
        *(a1 + 2) = *(a2 + 2);
        *(a2 + 2) = v22;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*>(uint64_t result, _OWORD *a2, uint64_t (**a3)(_OWORD *, void))
{
  if (result != a2)
  {
    v16 = v3;
    v17 = v4;
    v6 = result;
    v7 = (result + 16);
    if ((result + 16) != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        result = (*a3)(v7, v11);
        if (result)
        {
          v15 = *v10;
          v12 = v9;
          while (1)
          {
            v13 = v6 + v12;
            *(v13 + 16) = *(v6 + v12);
            *(v13 + 24) = *(v6 + v12 + 8);
            if (!v12)
            {
              break;
            }

            v12 -= 16;
            result = (*a3)(&v15, v12 + v6);
            if ((result & 1) == 0)
            {
              v14 = v6 + v12 + 16;
              goto LABEL_10;
            }
          }

          v14 = v6;
LABEL_10:
          *v14 = v15;
          *(v14 + 8) = DWORD2(v15);
        }

        v7 = v10 + 1;
        v9 += 16;
      }

      while (v10 + 1 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*>(uint64_t result, _OWORD *a2, uint64_t (**a3)(_OWORD *, void))
{
  if (result != a2)
  {
    v13 = v3;
    v14 = v4;
    v6 = result;
    v7 = (result + 16);
    if ((result + 16) != a2)
    {
      v9 = result - 16;
      do
      {
        v10 = v6;
        v6 = v7;
        result = (*a3)(v7, v10);
        if (result)
        {
          v12 = *v6;
          v11 = v9;
          do
          {
            *(v11 + 32) = *(v11 + 16);
            *(v11 + 40) = *(v11 + 24);
            result = (*a3)(&v12, v11);
            v11 -= 16;
          }

          while ((result & 1) != 0);
          *(v11 + 32) = v12;
          *(v11 + 40) = DWORD2(v12);
        }

        v7 = v6 + 1;
        v9 += 16;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<wchar_t const*,wchar_t> *,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&)>(uint64_t *a1, unint64_t a2, uint64_t (**a3)(__int128 *, uint64_t *))
{
  v4 = a2;
  v11 = *a1;
  if ((*a3)(&v11, (a2 - 16)))
  {
    v6 = a1;
    do
    {
      v6 += 2;
    }

    while (((*a3)(&v11, v6) & 1) == 0);
  }

  else
  {
    v7 = a1 + 2;
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = (*a3)(&v11, v7);
      v7 = v6 + 2;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 -= 16;
    }

    while (((*a3)(&v11, v4) & 1) != 0);
  }

  while (v6 < v4)
  {
    v9 = *v6;
    *v6 = *v4;
    *v4 = v9;
    LODWORD(v9) = *(v6 + 2);
    *(v6 + 2) = *(v4 + 8);
    *(v4 + 8) = v9;
    do
    {
      v6 += 2;
    }

    while (!(*a3)(&v11, v6));
    do
    {
      v4 -= 16;
    }

    while (((*a3)(&v11, v4) & 1) != 0);
  }

  if (v6 - 2 != a1)
  {
    *a1 = *(v6 - 2);
    *(a1 + 2) = *(v6 - 2);
  }

  *(v6 - 2) = v11;
  *(v6 - 2) = DWORD2(v11);
  return v6;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<wchar_t const*,wchar_t> *,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&)>(uint64_t *a1, unint64_t a2, uint64_t (**a3)(uint64_t *, __int128 *))
{
  v6 = 0;
  v12 = *a1;
  do
  {
    v6 += 2;
  }

  while (((*a3)(&a1[v6], &v12) & 1) != 0);
  v7 = &a1[v6];
  if (v6 == 2)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      a2 -= 16;
    }

    while (((*a3)(a2, &v12) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 16;
    }

    while (!(*a3)(a2, &v12));
  }

  v8 = &a1[v6];
  if (v7 < a2)
  {
    v9 = a2;
    do
    {
      v10 = *v8;
      *v8 = *v9;
      *v9 = v10;
      LODWORD(v10) = *(v8 + 2);
      *(v8 + 2) = *(v9 + 8);
      *(v9 + 8) = v10;
      do
      {
        ++v8;
      }

      while (((*a3)(v8, &v12) & 1) != 0);
      do
      {
        v9 -= 16;
      }

      while (!(*a3)(v9, &v12));
    }

    while (v8 < v9);
  }

  result = (v8 - 1);
  if (v8 - 1 != a1)
  {
    *a1 = *(v8 - 2);
    *(a1 + 2) = *(v8 - 2);
  }

  *(v8 - 2) = v12;
  *(v8 - 2) = DWORD2(v12);
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*>(uint64_t a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v12 = (*a3)((a1 + 16), a1);
      v13 = (*a3)(a2 - 2, (a1 + 16));
      if (v12)
      {
        v15 = (a1 + 8);
        v14 = *a1;
        if (v13)
        {
          *a1 = *(a2 - 2);
        }

        else
        {
          *a1 = *(a1 + 16);
          *(a1 + 16) = v14;
          v15 = (a1 + 24);
          v27 = *(a1 + 8);
          *(a1 + 8) = *(a1 + 24);
          *(a1 + 24) = v27;
          if (!(*a3)(a2 - 2, (a1 + 16)))
          {
            return 1;
          }

          v14 = *(a1 + 16);
          *(a1 + 16) = *(a2 - 2);
        }

        *(a2 - 2) = v14;
        v22 = a2 - 1;
      }

      else
      {
        if (!v13)
        {
          return 1;
        }

        v21 = *(a1 + 16);
        *(a1 + 16) = *(a2 - 2);
        *(a2 - 2) = v21;
        v22 = (a1 + 24);
        LODWORD(v21) = *(a1 + 24);
        *(a1 + 24) = *(a2 - 2);
        *(a2 - 2) = v21;
        if (!(*a3)((a1 + 16), a1))
        {
          return 1;
        }

        v23 = *a1;
        *a1 = *(a1 + 16);
        *(a1 + 16) = v23;
        v15 = (a1 + 8);
      }

      v28 = *v15;
      *v15 = *v22;
      *v22 = v28;
      return 1;
    }

    if (v6 != 4)
    {
      if (v6 == 5)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a3);
        if ((*a3)(a2 - 2, (a1 + 48)))
        {
          v8 = *(a1 + 48);
          *(a1 + 48) = *(a2 - 2);
          *(a2 - 2) = v8;
          LODWORD(v8) = *(a1 + 56);
          *(a1 + 56) = *(a2 - 2);
          *(a2 - 2) = v8;
          if ((*a3)((a1 + 48), (a1 + 32)))
          {
            v9 = *(a1 + 32);
            *(a1 + 32) = *(a1 + 48);
            *(a1 + 48) = v9;
            LODWORD(v9) = *(a1 + 40);
            *(a1 + 40) = *(a1 + 56);
            *(a1 + 56) = v9;
            if ((*a3)((a1 + 32), (a1 + 16)))
            {
              v10 = *(a1 + 16);
              *(a1 + 16) = *(a1 + 32);
              *(a1 + 32) = v10;
              LODWORD(v10) = *(a1 + 24);
              *(a1 + 24) = *(a1 + 40);
              *(a1 + 40) = v10;
              if ((*a3)((a1 + 16), a1))
              {
                v11 = *a1;
                *a1 = *(a1 + 16);
                *(a1 + 16) = v11;
                LODWORD(v11) = *(a1 + 8);
                *(a1 + 8) = *(a1 + 24);
                *(a1 + 24) = v11;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*,0>(a1, (a1 + 16), (a1 + 32), a2 - 2, a3);
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(a2 - 2, a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v7;
      LODWORD(v7) = *(a1 + 8);
      *(a1 + 8) = *(a2 - 2);
      *(a2 - 2) = v7;
    }

    return 1;
  }

LABEL_17:
  v16 = (a1 + 32);
  v17 = (*a3)((a1 + 16), a1);
  v18 = (*a3)((a1 + 32), (a1 + 16));
  if (v17)
  {
    v20 = (a1 + 8);
    v19 = *a1;
    if (v18)
    {
      *a1 = *(a1 + 32);
    }

    else
    {
      *a1 = *(a1 + 16);
      *(a1 + 16) = v19;
      v20 = (a1 + 24);
      v29 = *(a1 + 8);
      *(a1 + 8) = *(a1 + 24);
      *(a1 + 24) = v29;
      if (!(*a3)((a1 + 32), (a1 + 16)))
      {
        goto LABEL_35;
      }

      v19 = *(a1 + 16);
      *(a1 + 16) = *(a1 + 32);
    }

    *(a1 + 32) = v19;
    v25 = (a1 + 40);
    goto LABEL_34;
  }

  if (v18)
  {
    v24 = *(a1 + 16);
    *(a1 + 16) = *(a1 + 32);
    *(a1 + 32) = v24;
    v25 = (a1 + 24);
    LODWORD(v24) = *(a1 + 24);
    *(a1 + 24) = *(a1 + 40);
    *(a1 + 40) = v24;
    if ((*a3)((a1 + 16), a1))
    {
      v26 = *a1;
      *a1 = *(a1 + 16);
      *(a1 + 16) = v26;
      v20 = (a1 + 8);
LABEL_34:
      v30 = *v20;
      *v20 = *v25;
      *v25 = v30;
    }
  }

LABEL_35:
  v31 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v32 = 0;
  v33 = 0;
  while (1)
  {
    if ((*a3)(v31, v16))
    {
      v38 = *v31;
      v34 = v32;
      while (1)
      {
        v35 = a1 + v34;
        *(v35 + 48) = *(a1 + v34 + 32);
        *(v35 + 56) = *(a1 + v34 + 40);
        if (v34 == -32)
        {
          break;
        }

        v34 -= 16;
        if (((*a3)(&v38, (v35 + 16)) & 1) == 0)
        {
          v36 = a1 + v34 + 48;
          goto LABEL_43;
        }
      }

      v36 = a1;
LABEL_43:
      *v36 = v38;
      *(v36 + 8) = DWORD2(v38);
      if (++v33 == 8)
      {
        return v31 + 2 == a2;
      }
    }

    v16 = v31;
    v32 += 16;
    v31 += 2;
    if (v31 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*,std::pair<wchar_t const*,wchar_t>*>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int (**a4)(uint64_t, uint64_t))
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 16 * v9);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if ((*a4)(v12, a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          LODWORD(v13) = *(v12 + 8);
          *(v12 + 8) = *(a1 + 8);
          *(a1 + 8) = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*>(a1, a4, v8, a1);
        }

        v12 += 16;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 16;
      do
      {
        v15 = *a1;
        v16 = *(a1 + 8);
        v17 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*>(a1, a4, v8);
        if (v14 == v17)
        {
          *v17 = v15;
          *(v17 + 8) = v16;
        }

        else
        {
          *v17 = *v14;
          *(v17 + 8) = *(v14 + 8);
          *v14 = v15;
          *(v14 + 8) = v16;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*>(a1, v17 + 16, a4, (v17 + 16 - a1) >> 4);
        }

        v14 -= 16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*>(uint64_t result, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3, __int128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v20 = v4;
    v21 = v5;
    v7 = a4;
    v8 = result;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (a4 - result) >> 4)
    {
      v12 = (a4 - result) >> 3;
      v13 = v12 + 1;
      v14 = result + 16 * (v12 + 1);
      v15 = v12 + 2;
      if (v12 + 2 < a3 && (*a2)(v14, v14 + 16))
      {
        v14 += 16;
        v13 = v15;
      }

      result = (*a2)(v14, v7);
      if ((result & 1) == 0)
      {
        v19 = *v7;
        do
        {
          v16 = v14;
          *v7 = *v14;
          *(v7 + 2) = *(v14 + 8);
          if (v9 < v13)
          {
            break;
          }

          v17 = (2 * v13) | 1;
          v14 = v8 + 16 * v17;
          v18 = 2 * v13 + 2;
          if (v18 < a3)
          {
            if ((*a2)(v8 + 16 * v17, v14 + 16))
            {
              v14 += 16;
              v17 = v18;
            }
          }

          result = (*a2)(v14, &v19);
          v7 = v16;
          v13 = v17;
        }

        while (!result);
        *v16 = v19;
        *(v16 + 8) = DWORD2(v19);
      }
    }
  }

  return result;
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*>(uint64_t a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 16 * v6;
    v9 = v8 + 16;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = v8 + 32;
      if ((*a2)(v8 + 16, v8 + 32))
      {
        v9 = v12;
        v10 = v11;
      }
    }

    *a1 = *v9;
    *(a1 + 8) = *(v9 + 8);
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t> const&,std::pair<wchar_t const*,wchar_t> const&),std::pair<wchar_t const*,wchar_t>*>(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v14 = v4;
    v15 = v5;
    v8 = result;
    v9 = v6 >> 1;
    v10 = result + 16 * (v6 >> 1);
    v11 = (a2 - 16);
    result = (*a3)(v10, a2 - 16);
    if (result)
    {
      v13 = *v11;
      do
      {
        v12 = v10;
        *v11 = *v10;
        *(v11 + 2) = *(v10 + 8);
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v10 = v8 + 16 * v9;
        result = (*a3)(v10, &v13);
        v11 = v12;
      }

      while ((result & 1) != 0);
      *v12 = v13;
      *(v12 + 8) = DWORD2(v13);
    }
  }

  return result;
}

uint64_t ThreadedRecogController::ThreadedRecogController(uint64_t a1, int a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *a1 = &unk_287525040;
  v12 = MemChunkAlloc(0x628uLL, 0);
  v13 = DgnThread<RecogCtlThreadWorker>::DgnThread(v12, a2, 0, "RecogController");
  *v13 = &unk_2875280A0;
  v14 = v13[2];
  *(a1 + 8) = v13;
  *(a1 + 16) = v14;
  v15 = v13[7];
  *(v15 + 264) = a3;
  *(v15 + 272) = a4;
  *(v15 + 280) = a5;
  *(v15 + 288) = a6;
  DgnThreadClient::startup(*(a1 + 8));
  v16 = *(*(*(a1 + 8) + 56) + 256);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = v16;
  return a1;
}

void ThreadedRecogController::~ThreadedRecogController(ThreadedRecogController *this)
{
  *this = &unk_287525040;
  v2 = *(this + 4);
  if (v2)
  {
    *(*(v2 + 424) + 419) = 0;
    *(v2 + 419) = 0;
    *(this + 4) = 0;
  }

  if (DgnThreadClient::isLive(*(this + 1)) && (DgnThreadClient::hasErrored(*(this + 1)) & 1) == 0)
  {
    DgnThreadClient::shutdown(*(this + 1), v3, v4, v5, v6, v7, v8, v9);
  }

  *(this + 2) = 0;
  *(this + 3) = 0;
  DgnDelete<FrameTransformerThread>(*(this + 1));
  *(this + 1) = 0;
  DgnDelete<ReproMgr>(*(this + 5));
  *(this + 5) = 0;
}

{
  ThreadedRecogController::~ThreadedRecogController(this);

  JUMPOUT(0x26672B1B0);
}

void ThreadedRecogController::printSize(ThreadedRecogController *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/trecogctl.cpp", 290, &v61);
  if (v62)
  {
    v16 = v61;
  }

  else
  {
    v16 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &byte_262899963, a3, &byte_262899963, v16);
  DgnString::~DgnString(&v61);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &byte_262899963);
  v21 = *(this + 5);
  if (v21)
  {
    v60 = 0;
    v61 = 0;
    v22 = (a3 + 1);
    v59 = 0;
    ReproMgr::printSize(v21, 0xFFFFFFFFLL, v22, &v61, &v60, &v59);
    *a4 += v61;
    *a5 += v60;
    *a6 += v59;
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

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/trecogctl.cpp", 293, &v61);
  if (v62)
  {
    v28 = v61;
  }

  else
  {
    v28 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, v25, v26, v27, v22, &byte_262899963, (34 - a3), (34 - a3), v28, v23, v23, 0);
  DgnString::~DgnString(&v61);
  *a4 += v23;
  *a5 += v23;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v29 = 4;
  }

  else
  {
    v29 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/trecogctl.cpp", 294, &v61);
  if (v62)
  {
    v34 = v61;
  }

  else
  {
    v34 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, v31, v32, v33, v22, &byte_262899963, (34 - a3), (34 - a3), v34, v29, v29, 0);
  DgnString::~DgnString(&v61);
  *a4 += v29;
  *a5 += v29;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v35 = 4;
  }

  else
  {
    v35 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/trecogctl.cpp", 295, &v61);
  if (v62)
  {
    v40 = v61;
  }

  else
  {
    v40 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v36, v37, v38, v39, v22, &byte_262899963, (34 - a3), (34 - a3), v40, v35, v35, 0);
  DgnString::~DgnString(&v61);
  *a4 += v35;
  *a5 += v35;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v41 = 4;
  }

  else
  {
    v41 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/trecogctl.cpp", 296, &v61);
  if (v62)
  {
    v46 = v61;
  }

  else
  {
    v46 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v43, v44, v45, v22, &byte_262899963, (34 - a3), (34 - a3), v46, v41, v41, 0);
  DgnString::~DgnString(&v61);
  *a4 += v41;
  *a5 += v41;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v47 = 4;
  }

  else
  {
    v47 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/trecogctl.cpp", 297, &v61);
  if (v62)
  {
    v52 = v61;
  }

  else
  {
    v52 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v48, v49, v50, v51, v22, &byte_262899963, (34 - a3), (34 - a3), v52, v47, v47, 0);
  DgnString::~DgnString(&v61);
  *a4 += v47;
  *a5 += v47;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/trecogctl.cpp", 300, &v61);
  if (v62)
  {
    v57 = v61;
  }

  else
  {
    v57 = &byte_262899963;
  }

  v58 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, v54, v55, v56, a3, &byte_262899963, (35 - a3), (35 - a3), v57, *a4, *a5, *a6);
  DgnString::~DgnString(&v61);
}

void sub_262868A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t *ThreadedRecogController::setupRecognizers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v18, *(a1 + 16));
  (*(**(a1 + 24) + 16))(*(a1 + 24), a2, a3, a4, a5, a6, a7, a8, a9);
  return Latch<MemChunkRegion,LatchAdapter>::~Latch(&v18);
}

void sub_262868B3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

uint64_t ThreadedRecogController::recognizeOneSingleLayer(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, uint64_t a12, uint64_t a13, __int16 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  Latch<MemChunkRegion,LatchAdapter>::Latch(v28, *(a1 + 16));
  v19 = (*(**(a1 + 24) + 24))(*(a1 + 24), a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(v28);
  return v19;
}

uint64_t *ThreadedRecogController::extractPrefilterResult(ThreadedRecogController *this)
{
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v5, *(this + 2));
  v2 = (*(**(this + 3) + 176))(*(this + 3));
  Latch<MemChunkRegion,LatchAdapter>::~Latch(&v5);
  v3 = PrefilterResult::clone(v2);
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v5, *(this + 2));
  DgnDelete<PrefilterResult>(v2);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(&v5);
  return v3;
}

void sub_262868D38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

uint64_t *ThreadedRecogController::startRecognizeOne(uint64_t a1, uint64_t a2, Utterance *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  VocOrThrow = ModelMgr::getVocOrThrow(ModelMgr::smpModelMgr, a2, a3, a4, a5, a6, a7, a8);
  if (!Voc::isThreadedRecogAllowed(VocOrThrow))
  {
    if (*(VocOrThrow + 112))
    {
      v35 = *(VocOrThrow + 104);
    }

    else
    {
      v35 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/trecogctl.cpp", 451, "recogctl/trecogctl", 1, "%.500s", v33, v34, v35);
  }

  StateMgr::cacheAllWordInStateInfo(*(VocOrThrow + 56));
  Latch<MemChunkRegion,LatchAdapter>::Latch(v44, *(a1 + 16));
  *(a1 + 32) = 0;
  if (a3)
  {
    v36 = MemChunkAlloc(0x1B8uLL, 0);
    Utterance::Utterance(v36, a3);
    *(a1 + 32) = v36;
    if (*(v36[53] + 416) == 1)
    {
      ChannelMgr::setRecogCtlUtterance(ChannelMgr::smpChannelMgr, v36, v37, v38, v39, v40, v41, v42);
      v36 = *(a1 + 32);
    }

    *(*(*(a1 + 8) + 56) + 312) = v36;
  }

  else
  {
    v36 = 0;
  }

  *(a1 + 40) = a22;
  (*(**(a1 + 24) + 32))(*(a1 + 24), a2, v36, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, 0, a23, a24);
  return Latch<MemChunkRegion,LatchAdapter>::~Latch(v44);
}

uint64_t ThreadedRecogController::maybeStartRecogController(ThreadedRecogController *this, DgnEvent *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(*(*(this + 1) + 56) + 320) = a2;
  v8 = *(this + 4);
  if (v8)
  {
    if (*(*(v8 + 424) + 416) == 1)
    {
      ThreadId = ChannelMgr::getThreadId(ChannelMgr::smpChannelMgr, *v8, a3, a4, a5, a6, a7, a8);
      if (ThreadId != -1)
      {
        v17 = DgnThreadMgr::smpThreadMgr;
        if (*(DgnThreadMgr::smpThreadMgr + 16) <= ThreadId || (v18 = *(*(DgnThreadMgr::smpThreadMgr + 8) + 8 * ThreadId)) == 0)
        {
          v19 = ThreadId;
          DgnThreadMgr::throwBadDgnThreadId(DgnThreadMgr::smpThreadMgr, ThreadId, v11, v12, v13, v14, v15, v16);
          v18 = *(*(v17 + 8) + 8 * v19);
        }

        *(v18 + 64) = *(*(this + 3) + 928);
      }
    }
  }

  return 1;
}

void ThreadedRecogController::recognizeOneDoFrames(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 8);
  v9 = *(v8 + 7);
  *(v9 + 308) = a2;
  *(v9 + 304) = a3;
  *(v9 + 296) = a4;
  *(v9 + 309) = 1;
  DgnThreadClient::play(v8, a2, a3, a4, a5, a6, a7, a8);
}

void ThreadedRecogController::maybeStopRecogController(ThreadedRecogController *this)
{
  if (!DgnThreadClient::isPaused(*(this + 1)))
  {
    DgnThreadClient::pause(*(this + 1), v2, v3, v4, v5, v6, v7, v8);
  }

  if (*(this + 4))
  {
    if ((*(**(this + 3) + 40))(*(this + 3)))
    {
      Latch<MemChunkRegion,LatchAdapter>::Latch(&v40, *(this + 2));
      RecogController::doAtEndOfRecognition(*(this + 3), v15, v16, v17, v18, v19, v20, v21);
      Latch<MemChunkRegion,LatchAdapter>::~Latch(&v40);
    }

    v22 = *(this + 4);
    if (*(*(v22 + 53) + 416) == 1)
    {
      v23 = ChannelMgr::smpChannelMgr;
      ChannelMgr::maybeSyncRecogCtlUtterance(ChannelMgr::smpChannelMgr, v22, v9, v10, v11, v12, v13, v14);
      ThreadId = ChannelMgr::getThreadId(v23, **(this + 4), v24, v25, v26, v27, v28, v29);
      if (ThreadId != -1)
      {
        v22 = ThreadId;
        v37 = DgnThreadMgr::smpThreadMgr;
        if (*(DgnThreadMgr::smpThreadMgr + 16) <= ThreadId || (v38 = *(*(DgnThreadMgr::smpThreadMgr + 8) + 8 * ThreadId)) == 0)
        {
          v39 = ThreadId;
          DgnThreadMgr::throwBadDgnThreadId(DgnThreadMgr::smpThreadMgr, ThreadId, v31, v32, v33, v34, v35, v36);
          v38 = *(*(v37 + 8) + 8 * v39);
        }

        *(v38 + 64) = -1;
      }
    }

    if ((*(**(this + 3) + 40))(*(this + 3), v22))
    {
      Utterance::syncAfterRecognitionDone(*(this + 4));
      *(this + 4) = 0;
    }
  }

  *(*(*(this + 1) + 56) + 320) = 0;
}

void sub_262869224(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

uint64_t *ThreadedRecogController::finishRecognizeOne(uint64_t a1, uint64_t a2)
{
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v5, *(a1 + 16));
  (*(**(a1 + 24) + 72))(*(a1 + 24), a2);
  return Latch<MemChunkRegion,LatchAdapter>::~Latch(&v5);
}

void sub_2628692A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

uint64_t *ThreadedRecogController::abortRecognizeOne(ThreadedRecogController *this)
{
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v3, *(this + 2));
  (*(**(this + 3) + 120))(*(this + 3));
  return Latch<MemChunkRegion,LatchAdapter>::~Latch(&v3);
}

void sub_2628693C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

uint64_t *ThreadedRecogController::makePartialResult(ThreadedRecogController *this)
{
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v3, *(this + 2));
  (*(**(this + 3) + 128))(*(this + 3));
  return Latch<MemChunkRegion,LatchAdapter>::~Latch(&v3);
}

void sub_26286943C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

uint64_t RecogCtlThreadWorker::onStartup(RecogCtlThreadWorker *this)
{
  v2 = MemChunkAlloc(0x420uLL, 0);
  v3 = RecogController::RecogController(v2, *(this + 33), *(this + 272), *(this + 35), *(this + 36));
  *(this + 32) = v3;
  result = DgnThreadMgr::getCurrentThreadId(v3);
  *(v2 + 232) = result;
  return result;
}

uint64_t RecogCtlThreadWorker::playOne(RecogCtlThreadWorker *this)
{
  v2 = *(this + 40);
  (*(**(this + 32) + 64))(*(this + 32), *(this + 308), *(this + 76), *(this + 37));
  *(this + 309) = 0;
  if (*(this + 136) == 1)
  {
    DgnThreadTrace::add(this + 144, -1, 13);
  }

  DgnEvent::signal(v2);
  if (*(this + 136) == 1)
  {
    DgnThreadTrace::add(this + 144, -1, 6);
  }

  return 4;
}

Utterance *RecogCtlThreadWorker::releaseAll(RecogCtlThreadWorker *this)
{
  v2 = *(this + 32);
  if (v2)
  {
    (**v2)(*(this + 32));
    MemChunkFree(v2, 0);
    *(this + 32) = 0;
  }

  result = *(this + 39);
  if (result && *(result + 53))
  {
    result = DgnDelete<Utterance>(result);
  }

  *(this + 39) = 0;
  return result;
}

void RecogCtlThreadWorker::printSize(Utterance **this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/trecogctl.cpp", 798, &v62);
  if (v63)
  {
    v16 = v62;
  }

  else
  {
    v16 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &byte_262899963, a3, &byte_262899963, v16);
  DgnString::~DgnString(&v62);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &byte_262899963);
  v61 = 0;
  v62 = 0;
  v60 = 0;
  DgnThreadWorker::printSize(this, 0xFFFFFFFFLL, (a3 + 1), &v62, &v61, &v60);
  *a4 += v62;
  *a5 += v61;
  *a6 += v60;
  v21 = this[32];
  if (v21)
  {
    v61 = 0;
    v62 = 0;
    v60 = 0;
    (*(*v21 + 280))(v21, 0xFFFFFFFFLL, (a3 + 1), &v62, &v61, &v60);
    *a4 += v62;
    *a5 += v61;
    *a6 += v60;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v22 = 4;
  }

  else
  {
    v22 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/trecogctl.cpp", 802, &v62);
  if (v63)
  {
    v27 = v62;
  }

  else
  {
    v27 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v24, v25, v26, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v27, v22, v22, 0);
  DgnString::~DgnString(&v62);
  *a4 += v22;
  *a5 += v22;
  v28 = this[39];
  if (v28)
  {
    v61 = 0;
    v62 = 0;
    v60 = 0;
    Utterance::printSize(v28, 0xFFFFFFFFLL, (a3 + 1), &v62, &v61, &v60);
    *a4 += v62;
    *a5 += v61;
    *a6 += v60;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v29 = 4;
  }

  else
  {
    v29 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/trecogctl.cpp", 804, &v62);
  if (v63)
  {
    v34 = v62;
  }

  else
  {
    v34 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, v31, v32, v33, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v34, v29, v29, 0);
  DgnString::~DgnString(&v62);
  *a4 += v29;
  *a5 += v29;
  v35 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v35 = 4;
  }

  v36 = (3 * v35) | 1;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/trecogctl.cpp", 806, &v62);
  if (v63)
  {
    v41 = v62;
  }

  else
  {
    v41 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, v38, v39, v40, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v41, v36, v36, 0);
  DgnString::~DgnString(&v62);
  *a4 += v36;
  *a5 += v36;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v42 = 10;
  }

  else
  {
    v42 = 14;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/trecogctl.cpp", 808, &v62);
  if (v63)
  {
    v47 = v62;
  }

  else
  {
    v47 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v43, v44, v45, v46, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v47, v42, v42, 0);
  DgnString::~DgnString(&v62);
  *a4 += v42;
  *a5 += v42;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v48 = 4;
  }

  else
  {
    v48 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/trecogctl.cpp", 810, &v62);
  if (v63)
  {
    v53 = v62;
  }

  else
  {
    v53 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v49, v50, v51, v52, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v53, v48, v48, 0);
  DgnString::~DgnString(&v62);
  *a4 += v48;
  *a5 += v48;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/trecogctl.cpp", 812, &v62);
  if (v63)
  {
    v58 = v62;
  }

  else
  {
    v58 = &byte_262899963;
  }

  v59 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v54, v55, v56, v57, a3, &byte_262899963, (35 - a3), (35 - a3), v58, *a4, *a5, *a6);
  DgnString::~DgnString(&v62);
}

void sub_262869CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void RecogCtlThread::printSize(RecogCtlThread *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/trecogctl.cpp", 827, &v30);
  if (v31)
  {
    v16 = v30;
  }

  else
  {
    v16 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &byte_262899963, a3, &byte_262899963, v16);
  DgnString::~DgnString(&v30);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &byte_262899963);
  v28 = 0;
  v29 = 0;
  v27 = 0;
  DgnThreadClient::printSize(this, a2, (a3 + 1), &v29, &v27, &v28);
  *a4 += v29;
  *a5 += v27;
  *a6 += v28;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/trecogctl.cpp", 835, &v30);
  if (v31)
  {
    v25 = v30;
  }

  else
  {
    v25 = &byte_262899963;
  }

  v26 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, v22, v23, v24, a3, &byte_262899963, (35 - a3), (35 - a3), v25, *a4, *a5, *a6);
  DgnString::~DgnString(&v30);
}

void RecogCtlThreadWorker::~RecogCtlThreadWorker(RecogCtlThreadWorker *this)
{
  RecogCtlThreadWorker::~RecogCtlThreadWorker(this);

  JUMPOUT(0x26672B1B0);
}

{
  *this = &unk_287525B20;
  RecogCtlThreadWorker::releaseAll(this);

  DgnThreadWorker::~DgnThreadWorker(this);
}

void RecogCtlThread::~RecogCtlThread(RecogCtlThread *this)
{
  DgnThreadClient::~DgnThreadClient(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t *DgnThread<RecogCtlThreadWorker>::newWorker(uint64_t a1)
{
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v4, *(a1 + 16));
  v2 = MemChunkAlloc(0x148uLL, *(a1 + 16));
  DgnThreadWorker::DgnThreadWorker(v2, *(a1 + 12), a1, *(a1 + 16), *(a1 + 28));
  *v2 = &unk_287525B20;
  v2[35] = 0;
  v2[36] = 0;
  *(v2 + 309) = 0;
  v2[32] = 0;
  v2[33] = 0;
  *(v2 + 272) = 0;
  v2[39] = 0;
  v2[40] = 0;
  Latch<MemChunkRegion,LatchAdapter>::~Latch(&v4);
  return v2;
}

void sub_262869FD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

uint64_t DgnThread<RecogCtlThreadWorker>::DgnThread(uint64_t a1, int a2, uint64_t a3, char *a4)
{
  v5 = DgnThreadClient::DgnThreadClient(a1, a2, a3, a4);
  *v5 = &unk_2875232D0;
  *(a1 + 56) = DgnThread<RecogCtlThreadWorker>::newWorker(v5);
  return a1;
}

void DgnThread<RecogCtlThreadWorker>::~DgnThread(DgnThreadClient *a1)
{
  DgnThreadClient::~DgnThreadClient(a1);

  JUMPOUT(0x26672B1B0);
}

void DgnEventLatch::~DgnEventLatch(DgnEvent **this)
{
  if (*(this + 8) == 1)
  {
    DgnEvent::signal(*this);
  }
}

void Prefilterer::printSize(Prefilterer *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/prefilt.cpp", 68, &v36);
  if (v37)
  {
    v15 = v36;
  }

  else
  {
    v15 = &unk_26289983C;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, v12, v13, v14, a3, &unk_26289983C, a3, &unk_26289983C, v15);
  DgnString::~DgnString(&v36);
  if (a2 != -1)
  {
    xlprintf("%d ", v16, v17, v18, v19, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v16, v17, v18, v19, a3, &unk_26289983C);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/prefilt.cpp", 69, &v36);
  if (v37)
  {
    v24 = v36;
  }

  else
  {
    v24 = &unk_26289983C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v20, v21, v22, v23, (a3 + 1), &unk_26289983C, (34 - a3), (34 - a3), v24, 2, 2, 0);
  DgnString::~DgnString(&v36);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/prefilt.cpp", 70, &v36);
  if (v37)
  {
    v29 = v36;
  }

  else
  {
    v29 = &unk_26289983C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, v26, v27, v28, (a3 + 1), &unk_26289983C, (34 - a3), (34 - a3), v29, 4, 4, 0);
  DgnString::~DgnString(&v36);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/prefilt.cpp", 71, &v36);
  if (v37)
  {
    v34 = v36;
  }

  else
  {
    v34 = &unk_26289983C;
  }

  v35 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, v31, v32, v33, a3, &unk_26289983C, (35 - a3), (35 - a3), v34, *a4, *a5, *a6);
  DgnString::~DgnString(&v36);
}

void sub_26286A350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t *Prefilterer::makePrefilterer(Prefilterer *this, const PrefiltererBuildParamSet *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 96) == 1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/prefilt.cpp", 84, "prefilt/prefilt", 1, "%s", a7, a8, &unk_26289983C);
    v9 = 0;
  }

  else
  {
    v10 = *(this + 23);
    if (v10)
    {
      v9 = MemChunkAlloc(0x40uLL, 0);
      ThreadedTreePrefilterer::ThreadedTreePrefilterer(v9, v10);
    }

    else
    {
      v9 = MemChunkAlloc(0x25308uLL, 0);
      TreePrefilterer::TreePrefilterer(v9);
    }
  }

  (*(*v9 + 24))(v9, this);
  return v9;
}

uint64_t Prefilterer::maybeMakeLookaheadScorer(Prefilterer *this, const User *a2, const PrefiltererBuildParamSet *a3)
{
  v3 = *(this + 18);
  if (!v3)
  {
    return 0;
  }

  v4 = *(this + 2);
  v5 = *(a2 + 21);
  v6 = *(a2 + 22);
  if (v6)
  {
    v7 = MemChunkAlloc(0x10uLL, 0);
    return ThreadedLookaheadScorer::ThreadedLookaheadScorer(v7, v6, v3, v4, v5);
  }

  else
  {
    v9 = MemChunkAlloc(0x88uLL, 0);
    return SimpleLookaheadScorer::SimpleLookaheadScorer(v9, v3, v4, v5);
  }
}

void TParam::TParam(uint64_t a1)
{
  OUTLINED_FUNCTION_0(a1);
  if (v5 < 0)
  {
    operator delete(*v4);
  }

  if (*(v2 + 63) < 0)
  {
    operator delete(*v3);
  }

  if (*(v2 + 39) < 0)
  {
    v6 = *v1;

    operator delete(v6);
  }
}

void TStringParam::TStringParam(uint64_t a1)
{
  v1 = a1 + 1280;
  v2 = -1152;
  do
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    v1 -= 24;
    v2 += 24;
  }

  while (v2);
}

void TBoolParam::TBoolParam(uint64_t a1)
{
  v1 = a1 + 224;
  v2 = -48;
  do
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    v1 -= 24;
    v2 += 24;
  }

  while (v2);
}

uint64_t TSegmenter::findSegmentEnd(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result != a2 && result != 0)
  {
    return MEMORY[0x26672B1B0](result, 0x1000C4052888210);
  }

  return result;
}

void *saveDump(void *a1, uint64_t a2)
{
  result = __cxa_begin_catch(a1);
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void TPToken_Tokenize_cold_1(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2 != a2 && v2 != 0)
  {
    OUTLINED_FUNCTION_0_0();
  }
}

void TWord::TWord(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2 != a2 && v2 != 0)
  {
    OUTLINED_FUNCTION_0_1();
  }
}

void callBackSync(void *a1)
{
  v2 = a1 + 3;
  v1 = *a1;
  if (v1 != v2 && v1 != 0)
  {
    OUTLINED_FUNCTION_0_1();
  }
}

void TGraph::TGraph(void **a1, void **a2, uint64_t a3)
{
  v5 = *a1;
  if (v5)
  {
    *(a3 + 112) = v5;
    operator delete(v5);
  }

  v6 = *a2;
  if (*a2)
  {
    *(a3 + 88) = v6;

    operator delete(v6);
  }
}

void TTag::TTag(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t TFormatter::makeBlockForWord(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result != a2 && result != 0)
  {
    return MEMORY[0x26672B1B0](result, 0x80C40B8603338);
  }

  return result;
}

uint64_t TParamSetter::TParamSetter(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result != a2 && result != 0)
  {
    JUMPOUT(0x26672B1B0);
  }

  return result;
}

void TPItn_GetResultText_cold_1(void *a1)
{
  v2 = a1 + 3;
  v1 = *a1;
  if (v1 != v2 && v1 != 0)
  {
    OUTLINED_FUNCTION_0_0();
  }
}

void TPItn_GetResultAlignment_cold_1(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2 != a2 && v2 != 0)
  {
    OUTLINED_FUNCTION_2();
  }
}

void GlobalParamMgr::ParamGetBoolValue(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/param.cpp", 611, "mrecutil/param", 4, &errStr_mrecutil_param_E_INVALID_HANDLE, a7, a8, a1);
  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/param.cpp", 612, "mrecutil/param", 5, "%d", v9, v10, a1);
  __break(1u);
}

void GlobalParamMgr::ParamGetStringValue(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/param.cpp", 640, "mrecutil/param", 4, &errStr_mrecutil_param_E_INVALID_HANDLE, a7, a8, a1);
  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/param.cpp", 643, "mrecutil/param", 5, "%d", v9, v10, a1);
  __break(1u);
  _Unwind_Resume(v11);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E0]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
}

uint64_t std::wostream::operator<<()
{
  return MEMORY[0x2821F7970]();
}

{
  return MEMORY[0x2821F7978]();
}

{
  return MEMORY[0x2821F7988]();
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