uint64_t *MultiLanguageModel::createContextData(MultiLanguageModel *this)
{
  v2 = MemChunkAlloc(0x20uLL, 0);
  MultiLMContextData::MultiLMContextData(v2, *(this + 29));
  v3 = *(this + 29);
  if (v3 >= 1)
  {
    v4 = v3 - 1;
    do
    {
      v5 = *(*(this + 5) + 8 * v4);
      if (v5)
      {
        *(v2[2] + 8 * v4) = (*(*v5 + 464))(v5);
      }

      v6 = v4-- + 1;
    }

    while (v6 > 1);
  }

  return v2;
}

uint64_t MultiLanguageModel::setContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + 116))
  {
    for (i = 0; i < *(a1 + 116); ++i)
    {
      if (*(a1 + 112) == 1)
      {
        v13 = *(a2 + 8);
        v32 = 0;
        v33 = 0;
        if (v13)
        {
          v34 = 0;
          v14 = realloc_array(0, &v34, 4 * v13, 0, 0, 1);
          v15 = v34;
          v32 = v34;
          v16 = *(a2 + 8);
          LODWORD(v33) = v13;
          HIDWORD(v33) = v14 >> 2;
          if (v16)
          {
            v17 = 0;
            v18 = *a2;
            do
            {
              v19 = *(v18 + 4 * v17);
              if (v19 <= 0xFFFFF3)
              {
                v20 = *(a1 + 116);
                if (v20)
                {
                  v21 = 0;
                  while (*(*(a1 + 568) + 4 * v21) > v19 || *(*(a1 + 584) + 4 * v21) < v19)
                  {
                    if (v20 == ++v21)
                    {
                      goto LABEL_13;
                    }
                  }

                  v22 = v21;
                }

                else
                {
LABEL_13:
                  v22 = *(a1 + 560);
                }

                if (i != v22)
                {
                  v19 = 0xFFFFFF;
                }
              }

              v15[v17++] = v19;
            }

            while (v17 < *(a2 + 8));
          }
        }

        else
        {
          LODWORD(v33) = 0;
        }

        if (i == *(a1 + 560))
        {
          v30 = a3;
        }

        else
        {
          v30 = 0;
        }

        v29 = *(*(a1 + 40) + 8 * i);
        (*(*v29 + 472))(v29, &v32, v30, a4, a5, *(*(a6 + 16) + 8 * i));
        DgnPrimArray<unsigned int>::~DgnPrimArray(&v32);
        continue;
      }

      v23 = *(*(a1 + 40) + 8 * i);
      if (v23)
      {
        if (*(a1 + 113) == 1 && *(*(a1 + 544) + i) == 1 && *(*(a1 + 496) + 8 * i) != 0.0)
        {
          goto LABEL_39;
        }

        if (*(a1 + 114) == 1)
        {
          if (a3)
          {
            v24 = *(a3 + 8);
            if (v24)
            {
              v25 = *a3;
              while (1)
              {
                v27 = *v25++;
                v26 = v27;
                v28 = v27 == 0xFFFF ? *(a1 + 384) : *(*(a1 + 200) + 16 * (v26 - 1));
                if (*(v28 + 8 * i) != 0.0)
                {
                  break;
                }

                if (!--v24)
                {
                  goto LABEL_40;
                }
              }

LABEL_39:
              (*(*v23 + 472))(v23, a2, a3, a4, a5, *(*(a6 + 16) + 8 * i));
              continue;
            }
          }

          if (*(*(a1 + 384) + 8 * i) != 0.0)
          {
            goto LABEL_39;
          }
        }
      }

LABEL_40:
      ;
    }
  }

  return LanguageModel::setContext(a1, a2, a3, a4, a5, a6);
}

void sub_26272105C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void MultiLanguageModel::unsetContext(MultiLanguageModel *this, LMContextData *a2)
{
  v4 = *(this + 29);
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *(*(this + 5) + 8 * i);
      if (v6 && ((*(this + 112) & 1) != 0 || *(this + 113) == 1 && *(*(this + 68) + i) == 1 && *(*(this + 62) + 8 * i) != 0.0 || *(this + 114) == 1))
      {
        (*(*v6 + 480))(v6, *(*(a2 + 2) + 8 * i));
        v4 = *(this + 29);
      }
    }
  }

  LanguageModel::unsetContext(this, a2);
}

uint64_t MultiLanguageModel::mayWordBeIgnoredInContext(MultiLanguageModel *this, uint64_t a2)
{
  v4 = *(this + 29);
  if ((*(this + 112) & 1) == 0)
  {
    if (!*(this + 29))
    {
      return 0;
    }

    v8 = 0;
    while (1)
    {
      v9 = *(*(this + 5) + 8 * v8);
      if (v9 && (*(this + 113) == 1 && *(*(this + 68) + v8) == 1 && *(*(this + 62) + 8 * v8) != 0.0 || *(this + 114) == 1))
      {
        if ((*(*v9 + 488))(v9, a2))
        {
          return 1;
        }

        v4 = *(this + 29);
      }

      if (++v8 >= v4)
      {
        return 0;
      }
    }
  }

  if (*(this + 29))
  {
    v5 = 0;
    while (*(*(this + 71) + 4 * v5) > a2 || *(*(this + 73) + 4 * v5) < a2)
    {
      if (v4 == ++v5)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    LODWORD(v5) = *(this + 140);
  }

  v6 = *(**(*(this + 5) + 8 * v5) + 488);

  return v6();
}

uint64_t MultiLanguageModel::getNumLoadedBigramBytes(MultiLanguageModel *this)
{
  v1 = *(this + 29);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(*(this + 5) + 8 * v3);
    if (v5)
    {
      v4 += (*(*v5 + 240))(v5);
      v1 = *(this + 29);
    }

    ++v3;
  }

  while (v3 < v1);
  return v4;
}

uint64_t MultiLanguageModel::getNumLoadedTrigramBytes(MultiLanguageModel *this)
{
  v1 = *(this + 29);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(*(this + 5) + 8 * v3);
    if (v5)
    {
      v4 += (*(*v5 + 248))(v5);
      v1 = *(this + 29);
    }

    ++v3;
  }

  while (v3 < v1);
  return v4;
}

uint64_t MultiLanguageModel::getNumLoadedQuadgramBytes(MultiLanguageModel *this)
{
  v1 = *(this + 29);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(*(this + 5) + 8 * v3);
    if (v5)
    {
      v4 += (*(*v5 + 256))(v5);
      v1 = *(this + 29);
    }

    ++v3;
  }

  while (v3 < v1);
  return v4;
}

uint64_t MultiLanguageModel::getDefaultRestrictRange(uint64_t this, unsigned int *a2, unsigned int *a3)
{
  if (*(this + 112) == 1 && *(this + 576) >= 2u)
  {
    *a2 = *(*(this + 568) + 4);
    v3 = *(*(this + 584) + 4 * (*(this + 592) - 1));
  }

  else
  {
    v3 = 0xFFFFFF;
    *a2 = 0xFFFFFF;
  }

  *a3 = v3;
  return this;
}

uint64_t MultiLanguageModel::getValidTopicLmSlots(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  if (a2)
  {
    v4 = *(a2 + 12);
    if (v2 <= v4)
    {
      *(a2 + 8) = v2;
      if (!v2)
      {
        return v2;
      }
    }

    else
    {
      DgnPrimArray<unsigned int>::reallocElts(a2, v2 - v4, 0);
      *(a2 + 8) = v2;
    }

    v5 = vdupq_n_s64(v2 - 1);
    v6 = (v2 + 3) & 0x1FFFFFFFCLL;
    v7 = xmmword_26286BF80;
    v8 = xmmword_26286B680;
    v9 = (*a2 + 8);
    v10 = vdupq_n_s64(1uLL);
    v11 = vdupq_n_s64(4uLL);
    do
    {
      v12 = vmovn_s64(vcgeq_u64(v5, v8));
      v13 = vaddq_s64(v8, v10);
      if (vuzp1_s16(v12, *v5.i8).u8[0])
      {
        *(v9 - 2) = v13.i32[0];
      }

      if (vuzp1_s16(v12, *&v5).i8[2])
      {
        *(v9 - 1) = v13.i32[2];
      }

      v14 = vaddq_s64(v7, v10);
      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v7))).i32[1])
      {
        *v9 = v14.i32[0];
        v9[1] = v14.i32[2];
      }

      v7 = vaddq_s64(v7, v11);
      v8 = vaddq_s64(v8, v11);
      v9 += 4;
      v6 -= 4;
    }

    while (v6);
  }

  return v2;
}

DgnString *MultiLanguageModel::getTopicLmSlotNames(DgnString *result, unsigned int *a2)
{
  if (*(result + 29))
  {
    v3 = result;
    v4 = 0;
    for (i = 0; i < *(v3 + 29); ++i)
    {
      v6 = *(*(v3 + 17) + 4 * i);
      if (v6 == 1)
      {
        v7 = DgnArray<DgnString>::find(a2, *(v3 + 44) + v4);
        if (v7 != -1)
        {
          v10 = (*(v3 + 44) + v4);
          if (*(v10 + 2))
          {
            v11 = *v10;
          }

          v17 = a2[2];
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1319, "lm/multilm", 93, "%u %u %.500s", v8, v9, v7);
        }

        v15 = *(v3 + 44);
        v16 = a2[2];
        if (v16 == a2[3])
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(a2, 1, 1);
          v16 = a2[2];
        }

        result = DgnString::DgnString((*a2 + 16 * v16), (v15 + v4));
        ++a2[2];
      }

      else if (*(v3 + 112) == 1)
      {
        if (v6 == 3 && i == *(v3 + 140))
        {
LABEL_14:
          v13 = *(*(v3 + 5) + 8 * i);
          if (v13)
          {
            v14 = **v13;
          }

          result = MultiLanguageModel::getTopicLmSlotNames(v13, a2);
        }
      }

      else if (v6 == 3)
      {
        goto LABEL_14;
      }

      v4 += 16;
    }
  }

  return result;
}

uint64_t MultiLanguageModel::getTopicLmSlotId(MultiLanguageModel *this, const DgnString *a2)
{
  v2 = DgnArray<DgnString>::find(this + 24, a2);
  if (v2 == -1)
  {
    return 0xFFFFLL;
  }

  else
  {
    return (v2 + 1);
  }
}

DgnString *MultiLanguageModel::setTopicLmSlotName(MultiLanguageModel *this, int a2, const char **a3)
{
  if (*(a3 + 2))
  {
    v6 = *a3;
  }

  else
  {
    v6 = &unk_26288BEF0;
  }

  if ((isValidName(v6) & 1) == 0)
  {
    if (*(a3 + 2))
    {
      v9 = *a3;
    }

    else
    {
      v9 = &unk_26288BEF0;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1357, "lm/multilm", 92, "%.500s", v7, v8, v9);
  }

  v10 = (a2 - 1);
  if (v10 >= *(this + 26))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1365, "lm/multilm", 95, "%u", v7, v8, a2);
  }

  v11 = *(this + 12) + 16 * v10;
  if (*v11)
  {
    MemChunkFree(*v11, 0);
    *v11 = 0;
  }

  *(v11 + 8) = 0;
  v12 = DgnArray<DgnString>::find(this + 24, a3);
  if (v12 != -1)
  {
    if (*(a3 + 2))
    {
      v15 = *a3;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1370, "lm/multilm", 93, "%u %u %.500s", v13, v14, v12);
  }

  v16 = DgnArray<DgnString>::find(this + 20, a3);
  if (v16 != -1)
  {
    if (*(a3 + 2))
    {
      v19 = *a3;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1374, "lm/multilm", 94, "%u %u %.500s", v17, v18, v16);
  }

  DgnString::operator=((*(this + 12) + 16 * v10), a3);
  v26 = 0;
  v27 = a2 - 1;
  v28 = 0;
  MultiLanguageModel::getInternalTopicLmSlot(this, &v27, &v28, &v26);
  v22 = v28;
  v23 = v26;
  if (v26 == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1384, "lm/multilm", 95, "%u", v20, v21, a2);
  }

  v24 = (*(v22 + 44) + 16 * v23);

  return DgnString::operator=(v24, a3);
}

uint64_t MultiLanguageModel::getTopicLmSlotName(MultiLanguageModel *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2 - 1;
  if ((a2 - 1) >= *(this + 26))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1400, "lm/multilm", 95, "%u", a7, a8, a2);
  }

  return *(this + 12) + 16 * v9;
}

BOOL MultiLanguageModel::hasTopicLM(MultiLanguageModel *this, int a2)
{
  v2 = a2;
  v9 = a2 - 1;
  v8 = 0;
  v7 = 0;
  MultiLanguageModel::getInternalTopicLmSlot(this, &v9, &v8, &v7);
  v5 = v7;
  if (v7 == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1414, "lm/multilm", 95, "%u", v3, v4, v2);
  }

  return *(*(v8 + 5) + 8 * v5) != 0;
}

uint64_t MultiLanguageModel::getInternalTopicLmSlot(uint64_t this, unsigned int *a2, const MultiLanguageModel **a3, unsigned int *a4)
{
  *a3 = 0;
  *a4 = -1;
  if (*(this + 116))
  {
    v7 = this;
    for (i = 0; i < *(v7 + 116); ++i)
    {
      v9 = *(*(v7 + 136) + 4 * i);
      if (v9 == 1)
      {
        if (!*a2)
        {
          *a3 = v7;
          *a4 = i;
          return this;
        }

        --*a2;
      }

      else
      {
        if (*(v7 + 112) == 1)
        {
          if (v9 != 3 || i != *(v7 + 560))
          {
            continue;
          }
        }

        else if (v9 != 3)
        {
          continue;
        }

        v11 = *(*(v7 + 40) + 8 * i);
        if (v11)
        {
          v12 = **v11;
        }

        this = MultiLanguageModel::getInternalTopicLmSlot(v11, a2, a3, a4);
        if (*a4 != -1)
        {
          return this;
        }
      }
    }
  }

  return this;
}

uint64_t MultiLanguageModel::deleteTopicLMs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 616))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1424, "lm/multilm", 20, "%.500s", a7, a8, "deleteTopicLMs");
  }

  v10 = *(a1 + 104);
  DgnPrimArray<unsigned char>::DgnPrimArray(v22, *(a1 + 104));
  if (v10)
  {
    bzero(v22[0], v10);
  }

  if (*(a2 + 8))
  {
    v17 = 0;
    do
    {
      v18 = *(*a2 + 4 * v17) - 1;
      if (v18 >= v10)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1439, "lm/multilm", 95, "%u", v14, v15, *(*a2 + 4 * v17));
      }

      v19 = v22[0];
      if (*(v22[0] + v18) == 1)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1442, "lm/multilm", 96, "%u", v14, v15, *(*a2 + 4 * v17));
        v19 = v22[0];
      }

      v19[v18] = 1;
      ++v17;
    }

    while (v17 < *(a2 + 8));
  }

  v21 = 0;
  MultiLanguageModel::deleteTopicLMsInternal(a1, v22, &v21, v16, v11, v12, v13, v14, v15);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v22);
}

void sub_262721D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t MultiLanguageModel::deleteTopicLMsInternal(uint64_t a1, uint64_t a2, _DWORD *a3, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28[0] = 0;
  v28[1] = 0;
  if (*(a1 + 114) == 1)
  {
    a4.n128_f64[0] = DgnPrimArray<double>::copyArraySlice(v28, (a1 + 384), 0, *(a1 + 392));
  }

  if (*(a1 + 116))
  {
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = *a3;
      if (v14 >= *(a2 + 8))
      {
LABEL_25:
        if (*(a1 + 114) == 1 && (v13 & 1) != 0)
        {
          (*(*a1 + 496))(a1, v28, a4);
          MultiLanguageModel::adjustNamedWeightsSets(a1, v20, v21, v22, v23, v24, v25, v26);
        }

        return DgnPrimArray<unsigned int>::~DgnPrimArray(v28);
      }

      v15 = *(*(a1 + 136) + 4 * v12);
      if (v15 == 1)
      {
        if (*(*a2 + v14) == 1)
        {
          v16 = *(*(a1 + 40) + 8 * v12);
          if (!v16)
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1474, "lm/multilm", 22, "%u", a8, a9, *a3);
            v16 = *(*(a1 + 40) + 8 * v12);
          }

          DgnDelete<LanguageModel>(v16);
          *(*(a1 + 40) + 8 * v12) = 0;
          if (*(a1 + 114) == 1)
          {
            *(v28[0] + 8 * v12) = 0;
          }

          v13 = 1;
        }

        ++*a3;
      }

      else if (*(a1 + 112) == 1)
      {
        if (v15 == 3 && v12 == *(a1 + 560))
        {
LABEL_21:
          v18 = *(*(a1 + 40) + 8 * v12);
          if (v18)
          {
            v19 = **v18;
          }

          MultiLanguageModel::deleteTopicLMsInternal(v18, a2, a3, a4);
        }
      }

      else if (v15 == 3)
      {
        goto LABEL_21;
      }

      if (++v12 >= *(a1 + 116))
      {
        goto LABEL_25;
      }
    }
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(v28);
}

void sub_262721F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t MultiLanguageModel::adjustNamedWeightsSets(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 176);
  if (v8)
  {
    v9 = this;
    v10 = 0;
    v11 = 8;
    do
    {
      if (*(*(v9 + 168) + v11) >= 2u)
      {
        this = MultiLanguageModel::adjustNamedWeightsSet(v9, v10, a3, a4, a5, a6, a7, a8);
        v8 = *(v9 + 176);
      }

      ++v10;
      v11 += 16;
    }

    while (v10 < v8);
  }

  return this;
}

uint64_t MultiLanguageModel::getValidFactoryCorrectiveLms(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (a2)
  {
    v4 = *(a2 + 12);
    if (v2 <= v4)
    {
      *(a2 + 8) = v2;
      if (!v2)
      {
        return v2;
      }
    }

    else
    {
      DgnPrimArray<unsigned int>::reallocElts(a2, v2 - v4, 0);
      *(a2 + 8) = v2;
    }

    v5 = vdupq_n_s64(v2 - 1);
    v6 = (v2 + 3) & 0x1FFFFFFFCLL;
    v7 = xmmword_26286BF80;
    v8 = xmmword_26286B680;
    v9 = (*a2 + 8);
    v10 = vdupq_n_s64(1uLL);
    v11 = vdupq_n_s64(4uLL);
    do
    {
      v12 = vmovn_s64(vcgeq_u64(v5, v8));
      v13 = vaddq_s64(v8, v10);
      if (vuzp1_s16(v12, *v5.i8).u8[0])
      {
        *(v9 - 2) = v13.i32[0];
      }

      if (vuzp1_s16(v12, *&v5).i8[2])
      {
        *(v9 - 1) = v13.i32[2];
      }

      v14 = vaddq_s64(v7, v10);
      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v7))).i32[1])
      {
        *v9 = v14.i32[0];
        v9[1] = v14.i32[2];
      }

      v7 = vaddq_s64(v7, v11);
      v8 = vaddq_s64(v8, v11);
      v9 += 4;
      v6 -= 4;
    }

    while (v6);
  }

  return v2;
}

DgnString *MultiLanguageModel::getFactoryCorrectiveLmNames(DgnString *result, unsigned int *a2)
{
  if (*(result + 29))
  {
    v3 = result;
    v4 = 0;
    for (i = 0; i < *(v3 + 29); ++i)
    {
      v6 = *(*(v3 + 17) + 4 * i);
      if (v6 == 2)
      {
        v7 = DgnArray<DgnString>::find(a2, *(v3 + 64) + v4);
        if (v7 != -1)
        {
          v10 = (*(v3 + 64) + v4);
          if (*(v10 + 2))
          {
            v11 = *v10;
          }

          v17 = a2[2];
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1539, "lm/multilm", 88, "%u %u %.500s", v8, v9, v7);
        }

        v15 = *(v3 + 64);
        v16 = a2[2];
        if (v16 == a2[3])
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(a2, 1, 1);
          v16 = a2[2];
        }

        result = DgnString::DgnString((*a2 + 16 * v16), (v15 + v4));
        ++a2[2];
      }

      else if (*(v3 + 112) == 1)
      {
        if (v6 == 3 && i == *(v3 + 140))
        {
LABEL_14:
          v13 = *(*(v3 + 5) + 8 * i);
          if (v13)
          {
            v14 = **v13;
          }

          result = MultiLanguageModel::getFactoryCorrectiveLmNames(v13, a2);
        }
      }

      else if (v6 == 3)
      {
        goto LABEL_14;
      }

      v4 += 16;
    }
  }

  return result;
}

uint64_t MultiLanguageModel::getFactoryCorrectiveLmId(MultiLanguageModel *this, const DgnString *a2)
{
  v2 = DgnArray<DgnString>::find(this + 20, a2);
  if (v2 == -1)
  {
    return 0xFFFFLL;
  }

  else
  {
    return (v2 + 1);
  }
}

DgnString *MultiLanguageModel::setFactoryCorrectiveLmName(MultiLanguageModel *this, int a2, const char **a3)
{
  if (*(a3 + 2))
  {
    v6 = *a3;
  }

  else
  {
    v6 = &unk_26288BEF0;
  }

  if ((isValidName(v6) & 1) == 0)
  {
    if (*(a3 + 2))
    {
      v9 = *a3;
    }

    else
    {
      v9 = &unk_26288BEF0;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1579, "lm/multilm", 99, "%.500s", v7, v8, v9);
  }

  v10 = (a2 - 1);
  if (v10 >= *(this + 22))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1587, "lm/multilm", 89, "%u", v7, v8, a2);
  }

  v11 = *(this + 10) + 16 * v10;
  if (*v11)
  {
    MemChunkFree(*v11, 0);
    *v11 = 0;
  }

  *(v11 + 8) = 0;
  v12 = DgnArray<DgnString>::find(this + 20, a3);
  if (v12 != -1)
  {
    if (*(a3 + 2))
    {
      v15 = *a3;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1592, "lm/multilm", 88, "%u %u %.500s", v13, v14, v12);
  }

  if (DgnArray<DgnString>::find(this + 24, a3) != -1)
  {
    if (*(a3 + 2))
    {
      v18 = *a3;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1596, "lm/multilm", 94, "%u %u %.500s", v16, v17, a2 - 1);
  }

  DgnString::operator=((*(this + 10) + 16 * v10), a3);
  v26 = a2 - 1;
  v25 = 0;
  v24 = 0;
  MultiLanguageModel::getInternalFactoryCorrectiveLm(this, &v26, &v25, &v24);
  v21 = v24;
  if (v24 == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1607, "lm/multilm", 89, "%u", v19, v20, a2);
  }

  v22 = (*(v25 + 64) + 16 * v21);

  return DgnString::operator=(v22, a3);
}

uint64_t MultiLanguageModel::getInternalFactoryCorrectiveLm(uint64_t this, unsigned int *a2, MultiLanguageModel **a3, unsigned int *a4)
{
  *a3 = 0;
  *a4 = -1;
  if (*(this + 116))
  {
    v7 = this;
    for (i = 0; i < *(v7 + 116); ++i)
    {
      v9 = *(*(v7 + 136) + 4 * i);
      if (v9 == 2)
      {
        if (!*a2)
        {
          *a3 = v7;
          *a4 = i;
          return this;
        }

        --*a2;
      }

      else if (*(v7 + 112) == 1)
      {
        if (v9 == 3 && i == *(v7 + 560))
        {
LABEL_13:
          this = MultiLanguageModel::getInternalFactoryCorrectiveLm(*(*(v7 + 40) + 8 * i), a2, a3, a4);
          if (*a4 != -1)
          {
            return this;
          }
        }
      }

      else if (v9 == 3)
      {
        goto LABEL_13;
      }
    }
  }

  return this;
}

uint64_t MultiLanguageModel::getFactoryCorrectiveLmName(MultiLanguageModel *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2 - 1;
  if ((a2 - 1) >= *(this + 22))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1660, "lm/multilm", 89, "%u", a7, a8, a2);
  }

  return *(this + 10) + 16 * v9;
}

uint64_t MultiLanguageModel::getActiveFactoryCorrectiveLms(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 616))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1671, "lm/multilm", 20, "%.500s", a7, a8, "getActiveFactoryCorrectiveLms");
  }

  v11 = *(a1 + 88);
  DgnPrimArray<unsigned char>::DgnPrimArray(v20, *(a1 + 88));
  v19 = 0;
  (*(*a1 + 704))(a1, v20, &v19);
  DgnPrimArray<unsigned char>::DgnPrimArray(v18, v11);
  if (v11)
  {
    bzero(v18[0], v11);
  }

  if (*(a2 + 8))
  {
    v14 = 0;
    do
    {
      v15 = *(*a2 + 4 * v14) - 1;
      if (v15 >= v11)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1693, "lm/multilm", 89, "%u", v12, v13, *(*a2 + 4 * v14));
      }

      v16 = v18[0];
      if (*(v18[0] + v15) == 1)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1696, "lm/multilm", 90, "%u", v12, v13, *(*a2 + 4 * v14));
        v16 = v18[0];
      }

      v16[v15] = 1;
      *(*a3 + v14++) = *(v20[0] + v15);
    }

    while (v14 < *(a2 + 8));
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v18);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v20);
}

void sub_262722844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t MultiLanguageModel::getActiveFactoryCorrectiveLmsInternal(uint64_t result, uint64_t a2, _DWORD *a3)
{
  if (*(result + 116))
  {
    v5 = result;
    for (i = 0; i < *(v5 + 116); ++i)
    {
      v7 = *a3;
      if (v7 >= *(a2 + 8))
      {
        return result;
      }

      v8 = *(*(v5 + 136) + 4 * i);
      if (v8 == 2)
      {
        *(*a2 + v7) = *(*(v5 + 544) + i);
        *a3 = v7 + 1;
      }

      else
      {
        if (*(v5 + 112) == 1)
        {
          if (v8 != 3 || i != *(v5 + 560))
          {
            continue;
          }

LABEL_13:
          v10 = *(*(v5 + 40) + 8 * i);
          if (v10)
          {
            v11 = **v10;
          }

          result = (*(*v10 + 88))(v10, a2, a3);
          continue;
        }

        if (v8 == 3)
        {
          goto LABEL_13;
        }
      }
    }
  }

  return result;
}

uint64_t MultiLanguageModel::setActiveFactoryCorrectiveLms(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 616))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1736, "lm/multilm", 20, "%.500s", a7, a8, "setActiveFactoryCorrectiveLms");
  }

  v11 = *(a1 + 88);
  v18 = 0;
  v19 = 0;
  v17 = a1;
  if (v11)
  {
    __b = 0;
    v12 = realloc_array(0, &__b, 4 * v11, 0, 0, 1);
    v13 = __b;
    v18 = __b;
    LODWORD(v19) = v11;
    HIDWORD(v19) = v12 >> 2;
    memset(__b, 255, 4 * v11);
  }

  else
  {
    v13 = 0;
    LODWORD(v19) = 0;
  }

  if (*(a2 + 8))
  {
    v14 = 0;
    do
    {
      v15 = *(*a2 + 4 * v14) - 1;
      if (v15 >= v11)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1752, "lm/multilm", 89, "%u", a7, a8, *(*a2 + 4 * v14));
        v13 = v18;
      }

      if (v13[v15] != -1)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1755, "lm/multilm", 90, "%u", a7, a8, *(*a2 + 4 * v14));
        v13 = v18;
      }

      v13[v15] = *(*a3 + v14++);
    }

    while (v14 < *(a2 + 8));
  }

  LODWORD(__b) = 0;
  MultiLanguageModel::setActiveFactoryCorrectiveLmsInternal(v17, &v18, &__b);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v18);
}

void sub_262722B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t MultiLanguageModel::setActiveFactoryCorrectiveLmsInternal(uint64_t result, void *a2, _DWORD *a3)
{
  if (*(result + 116))
  {
    v5 = result;
    for (i = 0; i < *(v5 + 116); ++i)
    {
      v7 = *(*(v5 + 136) + 4 * i);
      if (v7 == 2)
      {
        v8 = *a3;
        v9 = *(*a2 + 4 * v8);
        if (v9 != -1)
        {
          *(*(v5 + 544) + i) = v9 != 0;
        }

        *a3 = v8 + 1;
      }

      else if (*(v5 + 112) == 1)
      {
        if (v7 == 3 && i == *(v5 + 560))
        {
LABEL_14:
          v11 = *(*(v5 + 40) + 8 * i);
          if (v11)
          {
            v12 = **v11;
          }

          result = MultiLanguageModel::setActiveFactoryCorrectiveLmsInternal(v11, a2, a3);
        }
      }

      else if (v7 == 3)
      {
        goto LABEL_14;
      }
    }
  }

  return result;
}

WordNgramTemplate **MultiLanguageModel::addWord(MultiLanguageModel *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 112) == 1)
  {
    v11 = *(*(*(this + 2) + 256) + 4 * a2);
    if (v11 != a2)
    {
      v12 = *(this + 29);
      if (v12)
      {
        v13 = 0;
        while (*(*(this + 71) + 4 * v13) > v11 || *(*(this + 73) + 4 * v13) < v11)
        {
          if (v12 == ++v13)
          {
            goto LABEL_11;
          }
        }

        if (*(this + 140) != v13)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1803, "lm/multilm", 116, "%u", a7, a8, *(*(*(this + 2) + 256) + 4 * a2));
        }
      }
    }

LABEL_11:
    if (a3 != 0xFFFFFF)
    {
      v14 = *(this + 29);
      if (v14)
      {
        v15 = 0;
        while (*(*(this + 71) + 4 * v15) > a3 || *(*(this + 73) + 4 * v15) < a3)
        {
          if (v14 == ++v15)
          {
            goto LABEL_20;
          }
        }

        if (*(this + 140) != v15)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1808, "lm/multilm", 38, "%u", a7, a8, a3);
        }
      }
    }
  }

LABEL_20:
  if (*(this + 29))
  {
    v16 = 0;
    do
    {
      v17 = *(*(this + 5) + 8 * v16);
      if (v17)
      {
        if (*(this + 112) == 1 && v16 != *(this + 140))
        {
          (*(*v17 + 368))(v17, a2);
        }

        else
        {
          (*(*v17 + 360))(v17, a2, a3);
        }
      }

      ++v16;
    }

    while (v16 < *(this + 29));
  }

  result = *(this + 77);
  if (result)
  {

    return WordLanguageModel::addWordDuringBuild(result, a2);
  }

  return result;
}

unsigned int *MultiLanguageModel::addUnmappedWord(unsigned int *this, uint64_t a2)
{
  v2 = this[29];
  if (v2)
  {
    v4 = this;
    for (i = 0; i < v2; ++i)
    {
      this = *(*(v4 + 5) + 8 * i);
      if (this)
      {
        this = (*(*this + 368))(this, a2);
        v2 = v4[29];
      }
    }
  }

  return this;
}

void MultiLanguageModel::deleteWord(MultiLanguageModel *this, uint64_t a2, BOOL *a3, BOOL *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 112) == 1)
  {
    v12 = *(this + 29);
    if (v12)
    {
      v13 = 0;
      while (*(*(this + 71) + 4 * v13) > a2 || *(*(this + 73) + 4 * v13) < a2)
      {
        if (v12 == ++v13)
        {
          goto LABEL_10;
        }
      }

      if (*(this + 140) != v13)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1856, "lm/multilm", 39, "%u", a7, a8, a2);
      }
    }

LABEL_10:
    v14 = *(*(*(this + 2) + 256) + 4 * a2);
    if (v14 != a2)
    {
      v15 = *(this + 29);
      if (v15)
      {
        v16 = 0;
        while (*(*(this + 71) + 4 * v16) > v14 || *(*(this + 73) + 4 * v16) < v14)
        {
          if (v15 == ++v16)
          {
            goto LABEL_19;
          }
        }

        if (*(this + 140) != v16)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1861, "lm/multilm", 40, "%u", a7, a8, *(*(*(this + 2) + 256) + 4 * a2));
        }
      }
    }
  }

LABEL_19:
  v17 = *(this + 29);
  if (v17)
  {
    for (i = 0; i < v17; ++i)
    {
      v19 = *(*(this + 5) + 8 * i);
      if (v19 && (*(this + 112) != 1 || i == *(this + 140)))
      {
        (*(*v19 + 376))(v19, a2, a3, a4);
        v17 = *(this + 29);
      }
    }
  }
}

unsigned int *MultiLanguageModel::recomputeRecentBufferHeadClonesAndCommonWords(unsigned int *this)
{
  v1 = this[29];
  if (v1)
  {
    v2 = this;
    for (i = 0; i < v1; ++i)
    {
      this = *(*(v2 + 5) + 8 * i);
      if (this && (*(v2 + 112) != 1 || i == v2[140]))
      {
        this = (*(*this + 384))(this);
        v1 = v2[29];
      }
    }
  }

  return this;
}

unsigned int *MultiLanguageModel::recomputeRecentBufferRemainders(unsigned int *this)
{
  v1 = this[29];
  if (v1)
  {
    v2 = this;
    for (i = 0; i < v1; ++i)
    {
      this = *(*(v2 + 5) + 8 * i);
      if (this && (*(v2 + 112) != 1 || i == v2[140]))
      {
        this = (*(*this + 392))(this);
        v1 = v2[29];
      }
    }
  }

  return this;
}

unsigned int *MultiLanguageModel::notifyEmptiedWordList(unsigned int *this)
{
  v1 = this[29];
  if (v1)
  {
    v2 = this;
    for (i = 0; i < v1; ++i)
    {
      this = *(*(v2 + 5) + 8 * i);
      if (this)
      {
        this = (*(*this + 400))(this);
        v1 = v2[29];
      }
    }
  }

  return this;
}

void MultiLanguageModel::loadUnsTable(uint64_t a1, uint64_t a2, const char *a3, int a4, unsigned int a5, unsigned int a6, DgnTextFileParser *this, unsigned int a8, unsigned int a9, unsigned int a10, unsigned int a11, unsigned int a12, unsigned int a13)
{
  if (*(this + 10))
  {
    v16 = *(this + 4);
  }

  else
  {
    v16 = &unk_26288BEF0;
  }

  v17 = *(a1 + 116);
  v18 = *(a2 + 12);
  v19 = v17;
  if (v17 > v18)
  {
    DgnPrimArray<unsigned int>::reallocElts(a2, v17 - v18, 0);
    v19 = *(a1 + 116);
  }

  *(a2 + 8) = v17;
  if (v19)
  {
    v20 = 0;
    do
    {
      if ((DgnTextFileParser::parseNextLine(this) & 1) == 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1953, "lm/multilm", 65, "%.500s", v21, v22, v16);
      }

      LineFieldString = DgnTextFileParser::getLineFieldString(this, a8);
      if (strcmp(LineFieldString, a3))
      {
        v51 = *(this + 25);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1959, "lm/multilm", 68, "%.500s %u %.500s %.500s", v24, v25, v16);
      }

      if (*DgnTextFileParser::getLineFieldString(this, a9))
      {
        v52 = *(this + 25);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1965, "lm/multilm", 69, "%.500s %u %.500s", v26, v27, v16);
      }

      v28 = DgnTextFileParser::getLineFieldString(this, a10);
      DgnString::DgnString(&v60);
      v59[0] = 1;
      v59[1] = v20;
      SubDirExtension::appendToString(v59, &v60);
      if (v61)
      {
        v29 = v60;
      }

      else
      {
        v29 = &unk_26288BEF0;
      }

      if (strcmp(v29, v28))
      {
        v53 = *(this + 25);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1973, "lm/multilm", 70, "%.500s %u %.500s %.500s", v34, v35, v16);
      }

      LineFieldInteger = DgnTextFileParser::getLineFieldInteger(this, a11, v30, v31, v32, v33, v34, v35);
      if ((LineFieldInteger & 0x80000000) != 0)
      {
        CurrentLine = DgnTextFile::getCurrentLine(this);
        if (*(CurrentLine + 8))
        {
          v42 = *CurrentLine;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1979, "lm/multilm", 7, "%.500s %.500s", v40, v41, v16);
      }

      if (LineFieldInteger != a4 && (LineFieldInteger < a5 || LineFieldInteger > a6))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1984, "lm/multilm", 71, "%.500s %.500s %u %u", v36, v37, v16);
      }

      *(*a2 + 4 * v20) = LineFieldInteger;
      if (DgnTextFileParser::getLineFieldReal(this, a12) != 0.0)
      {
        v43 = DgnTextFile::getCurrentLine(this);
        if (*(v43 + 8))
        {
          v46 = *v43;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1991, "lm/multilm", 7, "%.500s %.500s", v44, v45, v16);
      }

      if (*DgnTextFileParser::getLineFieldString(this, a13))
      {
        v47 = DgnTextFile::getCurrentLine(this);
        if (*(v47 + 8))
        {
          v50 = *v47;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1996, "lm/multilm", 7, "%.500s %.500s", v48, v49, v16);
      }

      DgnString::~DgnString(&v60);
      ++v20;
    }

    while (v20 < *(a1 + 116));
  }
}

void sub_262723624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

DgnString *SubDirExtension::appendToString(DgnString *this, DgnString *a2)
{
  v2 = *this - 1;
  if (v2 <= 3)
  {
    v4 = this;
    this = DgnString::operator+=(a2, off_279B3E908[v2]);
    if (*(v4 + 1) != -1)
    {
      return DgnString::printfAppend(a2, "%d", v5, v6, v7, *(v4 + 1));
    }
  }

  return this;
}

void MultiLanguageModel::loadIntTable(uint64_t a1, uint64_t a2, const char *a3, int a4, int a5, int a6, DgnTextFileParser *this, unsigned int a8, unsigned int a9, unsigned int a10, unsigned int a11, unsigned int a12, unsigned int a13)
{
  v15 = a2;
  if (*(this + 10))
  {
    v16 = *(this + 4);
  }

  else
  {
    v16 = &unk_26288BEF0;
  }

  v17 = *(a1 + 116);
  v18 = *(a2 + 12);
  v19 = v17;
  if (v17 > v18)
  {
    DgnPrimArray<unsigned int>::reallocElts(a2, v17 - v18, 0);
    v19 = *(a1 + 116);
  }

  *(v15 + 2) = v17;
  if (v19)
  {
    v20 = 0;
    do
    {
      if ((DgnTextFileParser::parseNextLine(this) & 1) == 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2023, "lm/multilm", 65, "%.500s", v21, v22, v16);
      }

      LineFieldString = DgnTextFileParser::getLineFieldString(this, a8);
      if (strcmp(LineFieldString, a3))
      {
        v49 = *(this + 25);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2029, "lm/multilm", 68, "%.500s %u %.500s %.500s", v24, v25, v16);
      }

      if (*DgnTextFileParser::getLineFieldString(this, a9))
      {
        v50 = *(this + 25);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2035, "lm/multilm", 69, "%.500s %u %.500s", v26, v27, v16);
      }

      v28 = v15;
      v29 = DgnTextFileParser::getLineFieldString(this, a10);
      DgnString::DgnString(&v58);
      v57[0] = 1;
      v57[1] = v20;
      SubDirExtension::appendToString(v57, &v58);
      if (v59)
      {
        v30 = v58;
      }

      else
      {
        v30 = &unk_26288BEF0;
      }

      if (strcmp(v30, v29))
      {
        v51 = *(this + 25);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2043, "lm/multilm", 70, "%.500s %u %.500s %.500s", v35, v36, v16);
      }

      LineFieldInteger = DgnTextFileParser::getLineFieldInteger(this, a11, v31, v32, v33, v34, v35, v36);
      v40 = LineFieldInteger;
      if (LineFieldInteger != a4 && (LineFieldInteger < a5 || LineFieldInteger > a6))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2050, "lm/multilm", 72, "%.500s %.500s %u %d", v38, v39, v16);
      }

      v15 = v28;
      *(*v28 + 4 * v20) = v40;
      if (DgnTextFileParser::getLineFieldReal(this, a12) != 0.0)
      {
        CurrentLine = DgnTextFile::getCurrentLine(this);
        if (*(CurrentLine + 8))
        {
          v44 = *CurrentLine;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2057, "lm/multilm", 7, "%.500s %.500s", v42, v43, v16);
      }

      if (*DgnTextFileParser::getLineFieldString(this, a13))
      {
        v45 = DgnTextFile::getCurrentLine(this);
        if (*(v45 + 8))
        {
          v48 = *v45;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2062, "lm/multilm", 7, "%.500s %.500s", v46, v47, v16);
      }

      DgnString::~DgnString(&v58);
      ++v20;
    }

    while (v20 < *(a1 + 116));
  }
}

void sub_2627239F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void MultiLanguageModel::loadRealTable(uint64_t a1, uint64_t a2, DgnString *a3, const char *a4, uint64_t a5, unsigned int a6, unsigned int a7, unsigned int a8, double a9, double a10, double a11, unsigned int a12, unsigned int a13, unsigned int a14)
{
  if (*(a5 + 40))
  {
    v20 = *(a5 + 32);
  }

  else
  {
    v20 = &unk_26288BEF0;
  }

  DgnString::DgnString(&v69);
  v21 = *(a1 + 116);
  v22 = *(a2 + 12);
  v23 = v21;
  if (v21 > v22)
  {
    DgnPrimArray<unsigned long long>::reallocElts(a2, v21 - v22, 0);
    v23 = *(a1 + 116);
  }

  *(a2 + 8) = v21;
  if (v23)
  {
    v24 = 0;
    do
    {
      if ((DgnTextFileParser::parseNextLine(a5) & 1) == 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2091, "lm/multilm", 65, "%.500s", v25, v26, v20);
      }

      LineFieldString = DgnTextFileParser::getLineFieldString(a5, a6);
      if (strcmp(LineFieldString, a4))
      {
        v57 = *(a5 + 100);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2097, "lm/multilm", 68, "%.500s %u %.500s %.500s", v28, v29, v20);
      }

      v30 = DgnTextFileParser::getLineFieldString(a5, a7);
      v31 = v30;
      if (!a3 || v24)
      {
        if (v70)
        {
          v34 = v69;
        }

        else
        {
          v34 = &unk_26288BEF0;
        }

        if (strcmp(v34, v31))
        {
          v59 = *(a5 + 100);
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2121, "lm/multilm", 69, "%.500s %u %.500s", v35, v36, v20);
        }
      }

      else
      {
        if ((isValidName(v30) & 1) == 0)
        {
          v58 = *(a5 + 100);
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2106, "lm/multilm", 69, "%.500s %u %.500s", v32, v33, v20);
        }

        DgnString::operator=(a3, v31);
        DgnString::operator=(&v69, v31);
      }

      v37 = DgnTextFileParser::getLineFieldString(a5, a8);
      DgnString::DgnString(&v67);
      v66[0] = 1;
      v66[1] = v24;
      SubDirExtension::appendToString(v66, &v67);
      if (v68)
      {
        v38 = v67;
      }

      else
      {
        v38 = &unk_26288BEF0;
      }

      if (strcmp(v38, v37))
      {
        v60 = *(a5 + 100);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2130, "lm/multilm", 70, "%.500s %u %.500s %.500s", v43, v44, v20);
      }

      if (DgnTextFileParser::getLineFieldInteger(a5, a12, v39, v40, v41, v42, v43, v44))
      {
        CurrentLine = DgnTextFile::getCurrentLine(a5);
        if (*(CurrentLine + 8))
        {
          v48 = *CurrentLine;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2135, "lm/multilm", 7, "%.500s %.500s", v46, v47, v20);
      }

      LineFieldReal = DgnTextFileParser::getLineFieldReal(a5, a13);
      v52 = LineFieldReal;
      if (LineFieldReal != a9 && (LineFieldReal < a10 || LineFieldReal > a11))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2143, "lm/multilm", 73, "%.500s %.500s %.500s %u %f", v49, v50, v20);
      }

      *(*a2 + 8 * v24) = v52;
      if (*DgnTextFileParser::getLineFieldString(a5, a14))
      {
        v53 = DgnTextFile::getCurrentLine(a5);
        if (*(v53 + 8))
        {
          v56 = *v53;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2150, "lm/multilm", 7, "%.500s %.500s", v54, v55, v20);
      }

      DgnString::~DgnString(&v67);
      ++v24;
    }

    while (v24 < *(a1 + 116));
  }

  DgnString::~DgnString(&v69);
}

void sub_262723DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void MultiLanguageModel::loadStringTable(uint64_t a1, uint64_t a2, const char *a3, DgnTextFileParser *this, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned int a10)
{
  v13 = &unk_26288BEF0;
  if (*(this + 10))
  {
    v13 = *(this + 4);
  }

  v14 = *(a1 + 116);
  v15 = *(a2 + 12);
  if (v14 > v15)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a2, v14 - v15, 0);
  }

  v16 = *(a2 + 8);
  v17 = v16;
  if (v14 >= v16)
  {
    if (v14 > v16)
    {
      v19 = v14 - v16;
      v20 = 16 * v16;
      do
      {
        DgnString::DgnString((*a2 + v20));
        v20 += 16;
        --v19;
      }

      while (v19);
    }
  }

  else if (v16 > v14)
  {
    v18 = 16 * v16 - 16;
    do
    {
      --v17;
      DgnString::~DgnString((*a2 + v18));
      v18 -= 16;
    }

    while (v17 > v14);
  }

  *(a2 + 8) = v14;
  v21 = &unk_26288BEF0;
  if (*(a1 + 116))
  {
    v22 = 0;
    v23 = 0;
    do
    {
      if ((DgnTextFileParser::parseNextLine(this) & 1) == 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2174, "lm/multilm", 65, "%.500s", v24, v25, v13);
      }

      LineFieldString = DgnTextFileParser::getLineFieldString(this, a5);
      if (strcmp(LineFieldString, a3))
      {
        v47 = *(this + 25);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2180, "lm/multilm", 68, "%.500s %u %.500s %.500s", v27, v28, v13);
      }

      if (*DgnTextFileParser::getLineFieldString(this, a6))
      {
        v48 = *(this + 25);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2186, "lm/multilm", 69, "%.500s %u %.500s", v29, v30, v13);
      }

      v31 = DgnTextFileParser::getLineFieldString(this, a7);
      DgnString::DgnString(&v56);
      v55[0] = 1;
      v55[1] = v23;
      SubDirExtension::appendToString(v55, &v56);
      if (v57)
      {
        v21 = v56;
      }

      if (strcmp(v21, v31))
      {
        v49 = *(this + 25);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2194, "lm/multilm", 70, "%.500s %u %.500s %.500s", v36, v37, v13);
      }

      v21 = &unk_26288BEF0;
      if (DgnTextFileParser::getLineFieldInteger(this, a8, v32, v33, v34, v35, v36, v37))
      {
        CurrentLine = DgnTextFile::getCurrentLine(this);
        if (*(CurrentLine + 8))
        {
          v41 = *CurrentLine;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2199, "lm/multilm", 7, "%.500s %.500s", v39, v40, v13);
      }

      if (DgnTextFileParser::getLineFieldReal(this, a9) != 0.0)
      {
        v42 = DgnTextFile::getCurrentLine(this);
        if (*(v42 + 8))
        {
          v45 = *v42;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2204, "lm/multilm", 7, "%.500s %.500s", v43, v44, v13);
      }

      v46 = DgnTextFileParser::getLineFieldString(this, a10);
      DgnString::operator=((*a2 + v22), v46);
      DgnString::~DgnString(&v56);
      ++v23;
      v22 += 16;
    }

    while (v23 < *(a1 + 116));
  }
}

void sub_26272416C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void MultiLanguageModel::loadLM(MultiLanguageModel *this, DFile *a2, DFile *a3, DFileChecksums *a4, DgnSharedMemStream *a5, uint64_t a6, uint64_t a7, BOOL a8, unsigned int a9, unsigned int a10, __int16 a11, BOOL *a12, BOOL *a13, double *a14)
{
  if (a7 && ((DFile::subFileExists(a2, 0x4Au) & 1) != 0 || DFile::subFileExists(a2, 0x49u)))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2236, "lm/multilm", 118, "%s", v19, v20, &errStr_lm_multilm_E_RECENT_BUFFER_WITH_FIXED_SCORING);
  }

  v52 = 0;
  if (DFile::subFileExists(a2, 0x28u))
  {
    if (a6)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2242, "lm/multilm", 98, "%s", v21, v22, &errStr_lm_multilm_E_LOADING_MIXED_TEXT_AND_BINARY_SUBFILES);
    }

    MultiLanguageModel::loadMultiBinary(this, a2, a4, &v52);
    v54 = v52;

    MultiLanguageModel::loadComponentLMSubFiles(this, 1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, v54);
  }

  else if (DFile::subFileExists(a2, 0x29u))
  {
    if (*(this + 24) == 1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2262, "lm/multilm", 119, "%.500s", v23, v24, "found mls text file");
    }

    v51[0] = 0;
    v51[1] = 0;
    MultiLanguageModel::loadMultiText(this, a2, a7, v51, &v52);
    MultiLanguageModel::loadComponentLMSubFiles(this, 0, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, v52);
    if ((*(this + 113) & 1) != 0 || *(this + 114) == 1)
    {
      (*(*this + 496))(this, v51);
      if (*(this + 114) == 1 && (a7 & 1) == 0)
      {
        v31 = *(this + 44);
        v32 = *(this + 53);
        if (v31 > v32)
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(this + 200, v31 - v32, 0);
        }

        v33 = *(this + 52);
        if (v33 <= v31)
        {
          if (v33 < v31)
          {
            v36 = v31 - v33;
            v37 = 16 * v33;
            do
            {
              v38 = (*(this + 25) + v37);
              *v38 = 0;
              v38[1] = 0;
              v37 += 16;
              --v36;
            }

            while (v36);
          }
        }

        else if (v33 > v31)
        {
          v34 = v33;
          v35 = 16 * v33 - 16;
          do
          {
            --v34;
            DgnPrimArray<unsigned int>::~DgnPrimArray(*(this + 25) + v35);
            v35 -= 16;
          }

          while (v34 > v31);
        }

        *(this + 52) = v31;
        v39 = *(this + 44);
        v40 = *(this + 57);
        v41 = v39 - v40;
        if (v39 > v40)
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(this + 216, v41, 0);
        }

        v42 = *(this + 56);
        if (v42 <= v39)
        {
          if (v42 < v39)
          {
            v45 = v39 - v42;
            v46 = 16 * v42;
            do
            {
              v47 = (*(this + 27) + v46);
              *v47 = 0;
              v47[1] = 0;
              v46 += 16;
              --v45;
            }

            while (v45);
          }
        }

        else if (v42 > v39)
        {
          v43 = v42;
          v44 = 16 * v42 - 16;
          do
          {
            --v43;
            DgnPrimArray<unsigned int>::~DgnPrimArray(*(this + 27) + v44);
            v44 -= 16;
          }

          while (v43 > v39);
        }

        *(this + 56) = v39;
        MultiLanguageModel::adjustNamedWeightsSets(this, v41, v25, v26, v27, v28, v29, v30);
      }
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(v51);
  }
}

void sub_262724560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void MultiLanguageModel::loadMultiBinary(MultiLanguageModel *this, DFile *a2, DFileChecksums *a3, BOOL *a4)
{
  v25 = 0;
  v8 = OpenAndReadMrecHeader(a2, 0x28u, 1, "LMMULBIN", &v25 + 1, &v25);
  DgnString::DgnString(v24);
  if (*(v8 + 24))
  {
    v9 = *(v8 + 16);
  }

  else
  {
    v9 = &unk_26288BEF0;
  }

  DgnString::operator=(v24, v9);
  DgnString::operator+=(v24, " subfile of ");
  if (*(a2 + 6))
  {
    v10 = *(a2 + 2);
  }

  else
  {
    v10 = &unk_26288BEF0;
  }

  DgnString::operator+=(v24, v10);
  *a4 = 0;
  v13 = v25;
  if (v25 == 0x1300000005)
  {
    *a4 = 1;
    v14 = 19;
  }

  else
  {
    if (*(a2 + 6))
    {
      v15 = *(a2 + 2);
    }

    else
    {
      v15 = &unk_26288BEF0;
    }

    MrecHeaderCheckVersions(v15, "LMMULBIN", HIDWORD(v25), v25, 0x18u, 6u);
    v13 = v25;
    v14 = HIDWORD(v25);
  }

  MrecHeaderCheckLatestVersionIfShared(a2, "LMMULBIN", v14, v13, 24, 6, v11, v12);
  *v23 = 0;
  readObject(v8, v23, &v23[1]);
  v16 = v23[0];
  v17 = *(this + 37);
  v18 = v23[0];
  if (v23[0] > v17)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 136, v23[0] - v17, 0);
    v18 = v23[0];
  }

  *(this + 36) = v16;
  if (v18)
  {
    v19 = 0;
    do
    {
      v22 = 0;
      readObject(v8, &v22, &v23[1]);
      v20 = v22 - 1;
      if ((v22 - 2) >= 4)
      {
        v20 = 0;
      }

      *(*(this + 17) + 4 * v19++) = v20;
    }

    while (v19 < v23[0]);
  }

  readObject(v8, this + 29, &v23[1]);
  readObject(v8, this + 112, &v23[1]);
  readObject(v8, this + 113, &v23[1]);
  readObject(v8, this + 114, &v23[1]);
  readObject(v8, (this + 120), &v23[1]);
  readObject(v8, this + 152, &v23[1]);
  readObject(v8, this + 39, &v23[1]);
  readObject(v8, this + 40, &v23[1]);
  readObject<DgnString>(v8, this + 168, &v23[1]);
  readObject<DgnPrimArray<double>>(v8, this + 184, &v23[1]);
  readObject<DgnPrimArray<double>>(v8, this + 200, &v23[1]);
  readObject<DgnPrimArray<short>>(v8, this + 216, &v23[1]);
  readObject<unsigned int>(v8, this + 232, &v23[1]);
  readObject(v8, this + 70, &v23[1]);
  readObject(v8, this + 71, &v23[1]);
  if (*a4)
  {
    readObject<WordDummySpec>(v8, this + 288, &v23[1]);
  }

  readObject<DgnString>(v8, this + 352, &v23[1]);
  if (!*a4 || (readObject<DgnString>(v8, this + 368, &v23[1]), !*a4))
  {
    readObject<DgnString>(v8, this + 320, &v23[1]);
  }

  readObject<double>(v8, this + 384, &v23[1]);
  readObject<double>(v8, this + 400, &v23[1]);
  readObject<double>(v8, this + 416, &v23[1]);
  readObject<double>(v8, this + 432, &v23[1]);
  readObject<double>(v8, this + 448, &v23[1]);
  readObject<short>(v8, this + 464, &v23[1]);
  readObject<short>(v8, this + 480, &v23[1]);
  readObject<double>(v8, this + 496, &v23[1]);
  readObject<DgnString>(v8, this + 512, &v23[1]);
  readObject<int>(v8, this + 528, &v23[1]);
  readObject<BOOL>(v8, this + 544, &v23[1]);
  readObject(v8, this + 140, &v23[1]);
  readObject<unsigned int>(v8, this + 568, &v23[1]);
  readObject<unsigned int>(v8, this + 584, &v23[1]);
  readObject<unsigned int>(v8, this + 600, &v23[1]);
  readObjectChecksumAndVerify(v8, v23[1]);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x28u, v23[1]);
  DgnDelete<DgnStream>(v8);
  DgnString::~DgnString(v24);
}

void sub_2627249A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void MultiLanguageModel::loadComponentLMSubFiles(MultiLanguageModel *this, int a2, DFile *a3, DFile *a4, DFileChecksums *a5, DgnSharedMemStream *a6, uint64_t a7, uint64_t a8, BOOL a9, unsigned int a10, unsigned int a11, __int16 a12, BOOL *a13, BOOL *a14, BOOL a15)
{
  v95 = a7;
  if (*(this + 29))
  {
    v17 = a8;
    v20 = 0;
    v21 = 0;
    v22 = a15;
    v94 = a2 & a15;
    v92 = a8;
    while (1)
    {
      v100[0] = 1;
      v100[1] = v20;
      DFile::pushCurrentSubDirComponent(a3, v100, a3, a4, a5, a6, a7, a8);
      if (a4)
      {
        DFile::pushCurrentSubDirComponent(a4, v100, v23, v24, v25, v26, v27, v28);
      }

      MultiLanguageModel::verifySubdirContents(this, a3, v20, a2, v22);
      if ((DFile::subFileExists(a3, 0x6Du) & 1) == 0 && (DFile::subFileExists(a3, 0x6Bu) & 1) == 0 && !DFile::subFileExists(a3, 0x6Au))
      {
        break;
      }

      if ((v21 & 1) == 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3081, "lm/multilm", 34, "%s", v29, v30, &errStr_lm_multilm_E_FIRST_LM_WORDNGRAMBUILDSPEC);
      }

      if (v22)
      {
        v31 = MemChunkAlloc(0x20uLL, 0);
        WordDummySpec::WordDummySpec(v31);
        if (DFile::subFileExists(a3, 0x6Du))
        {
          WordNgramBuildSpec::loadWordDummySpecText(v31, a3);
        }
      }

      else
      {
        if ((DFile::subFileExists(a3, 0x6Bu) & 1) == 0 && !DFile::subFileExists(a3, 0x6Au))
        {
          break;
        }

        v31 = MemChunkAlloc(0x20uLL, 0);
        WordDummySpec::WordDummySpec(v31);
        WordNgramBuildSpec::loadWordNgramBuildSpec(v32, a3, a5, a2 ^ 1);
      }

LABEL_17:
      if ((*(this + 112) & 1) != 0 || (DFile::subFileExists(a3, 0x73u) & 1) != 0 || (DFile::subFileExists(a3, 0x6Fu) & 1) != 0 || (DFile::subFileExists(a3, 0x70u) & 1) != 0 || (DFile::subFileExists(a3, 0x29u) & 1) != 0 || DFile::subFileExists(a3, 0x28u))
      {
        v33 = *(this + 112);
        v34 = a9;
        v35 = a10;
        v36 = a11;
        if (v33 == 1)
        {
          v34 = a9;
          v35 = a10;
          v36 = a11;
          if (*(this + 144) >= 2u)
          {
            v34 = v20 != 0;
            v37 = *(this + 71);
            if (v20)
            {
              v38 = (v37 + 4 * v20);
              v39 = (*(this + 73) + 4 * v20);
            }

            else
            {
              v38 = (v37 + 4);
              v39 = (*(this + 73) + 4 * (*(this + 148) - 1));
            }

            v35 = *v38;
            v36 = *v39;
          }
        }

        v40 = *(*(this + 17) + 4 * v20);
        if (v40 > 3 || v40 == 1)
        {
          v42 = 0;
          v41 = 0;
          v99 = -1.0;
        }

        else
        {
          v99 = -1.0;
          v41 = *(this + 24);
          v42 = a6;
        }

        v43 = v17;
        if (v33)
        {
          v43 = v17;
          if ((v17 & 1) == 0)
          {
            v43 = v20 != *(this + 140);
          }
        }

        v44 = LanguageModel::CreateAndLoadLanguageModel(a3, a4, a5, v42, (v41 & 1), v95, v33, v43, *(this + 8), v91, *(this + 2), v34, v35, v36, a12, a13, a14, &v99);
        v45 = v44;
        if (v20)
        {
          if (a2)
          {
            goto LABEL_38;
          }

LABEL_42:
          if ((*(*v45 + 608))(v45))
          {
            v97[0].n128_u64[0] = 0;
            v98 = 0;
            (*(*v45 + 616))(v45, v97, &v98 + 4, &v98);
            if (*(this + 152))
            {
              if (!DgnArray<DgnString>::operator==(this + 168, v97[0].n128_u64[0]) || __PAIR64__(*(this + 39), *(this + 40)) != v98)
              {
                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3188, "lm/multilm", 51, "%s", v47, v48, &errStr_lm_multilm_E_NAMED_WEIGHTS_MISMATCH);
              }
            }

            else
            {
              *(this + 152) = 1;
              DgnArray<DgnString>::copyArraySlice(this + 168, v97[0].n128_u64[0], 0, *(v97[0].n128_u64[0] + 8));
              v49 = v98;
              *(this + 39) = HIDWORD(v98);
              *(this + 40) = v49;
              if (*(this + 44))
              {
                v50 = 0;
                do
                {
                  IdMgr<unsigned int>::getNextId(this + 58);
                  ++v50;
                }

                while (v50 < *(this + 44));
              }
            }
          }

          v51 = *v45;
          v52 = **v45;
          v54 = *v51;
          if (v53)
          {
            v62 = *(*(this + 17) + 4 * v20);
            if (v62 >= 3)
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3204, "lm/multilm", 21, "%u", v59, v60, v20);
              v62 = *(*(this + 17) + 4 * v20);
            }

            if (v62 == 1)
            {
              if (a15)
              {
                (*(*v61 + 704))(v61);
                WordDummySpec::WordDummySpec(v97);
                WordLanguageModel::fillInWordDummySpec(v61, v97);
                v31 = MemChunkAlloc(0x20uLL, 0);
                WordNgramBuildSpec::WordNgramBuildSpec(v31, v97);
                *v63 = v99;
              }

              else
              {
                WordLanguageModel::verifyConsistentWithWordNgramBuildSpec(v61, v31, v55, v56, v57, v58, v59, v60);
              }

              v22 = a15;
              v17 = v92;
            }

            else
            {
              v17 = v92;
              v22 = a15;
            }

            goto LABEL_71;
          }

          v65 = *v51;
          if (v64)
          {
            if (*(*(this + 17) + 4 * v20) != 3)
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3232, "lm/multilm", 21, "%u", v66, v67, v20);
            }

            if (*(this + 112) == 1)
            {
              v22 = a15;
              if (v20 != *(this + 140))
              {
                v17 = v92;
                if (v68[114] == 1)
                {
                  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3242, "lm/multilm", 97, "%s", v66, v67, &errStr_lm_multilm_E_NO_INTERPOLATED_IN_NON_DEFAULT_DISPATCH);
                }

                goto LABEL_71;
              }

LABEL_70:
              v17 = v92;
LABEL_71:
              v21 = 1;
              goto LABEL_72;
            }
          }

          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3248, "lm/multilm", 21, "%u", v69, v70, v20);
          }

          v22 = a15;
          goto LABEL_70;
        }

        v46 = *(v44 + 8);
        *(this + 8) = v46;
        CombineTable::initCombineTable(this + 704, v46);
        if ((a2 & 1) == 0)
        {
          goto LABEL_42;
        }

LABEL_38:
        if (v31 && v22)
        {
          *v31 = *&v99;
        }

        goto LABEL_71;
      }

      v45 = 0;
LABEL_72:
      if (v94 && *(*(this + 17) + 4 * v20) == 1)
      {
        v31 = MemChunkAlloc(0x20uLL, 0);
        WordNgramBuildSpec::WordNgramBuildSpec(v31, (*(this + 36) + 32 * v20));
      }

      v71 = *(this + 12);
      if (v71 == *(this + 13))
      {
        DgnPrimArray<unsigned long long>::reallocElts(this + 40, 1, 1);
        v71 = *(this + 12);
      }

      *(*(this + 5) + 8 * v71) = v45;
      *(this + 12) = v71 + 1;
      if ((*(this + 112) & 1) == 0)
      {
        v72 = *(this + 78);
        if (v72 == *(this + 79))
        {
          DgnPrimArray<unsigned long long>::reallocElts(this + 304, 1, 1);
          v72 = *(this + 78);
        }

        *(*(this + 38) + 8 * v72) = v31;
        *(this + 78) = v72 + 1;
      }

      DFile::popCurrentSubDirComponent(a3);
      if (a4)
      {
        DFile::popCurrentSubDirComponent(a4);
      }

      if (++v20 >= *(this + 29))
      {
        goto LABEL_87;
      }
    }

    v31 = 0;
    goto LABEL_17;
  }

  v21 = 0;
LABEL_87:
  v73 = *(this + 36);
  if (v73)
  {
    MemChunkFree(v73, 0);
    *(this + 36) = 0;
  }

  v74 = a2;
  *(this + 37) = 0;
  if ((v21 & 1) == 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3286, "lm/multilm", 31, "%s", a7, a8, &errStr_lm_multilm_E_NO_SUB_LANGUAGE_MODELS);
  }

  if ((*(this + 112) & 1) == 0 && *(this + 29))
  {
    v75 = 0;
    do
    {
      if ((v74 & 1) == 0)
      {
        if (*(this + 113) == 1)
        {
          v76 = *(this + 126);
          if (v76 == *(this + 127))
          {
            DgnPrimArray<unsigned long long>::reallocElts(this + 496, 1, 1);
            v76 = *(this + 126);
          }

          *(*(this + 62) + 8 * v76) = 0;
          v77 = this + 504;
        }

        else
        {
          v78 = *(this + 98);
          if (v78 == *(this + 99))
          {
            DgnPrimArray<unsigned long long>::reallocElts(this + 384, 1, 1);
            v78 = *(this + 98);
          }

          *(*(this + 48) + 8 * v78) = 0;
          *(this + 98) = v78 + 1;
          v79 = *(this + 118);
          if (v79 == *(this + 119))
          {
            DgnPrimArray<short>::reallocElts(this + 464, 1, 1);
            v79 = *(this + 118);
          }

          *(*(this + 58) + 2 * v79) = 2000;
          *(this + 118) = v79 + 1;
          v80 = *(*(this + 54) + 8 * v75);
          if (v80 == -1.0)
          {
            LOWORD(v81) = 20000;
          }

          else if (v80 == 0.0)
          {
            LOWORD(v81) = 2000;
          }

          else
          {
            v82 = DgnLog(v80);
            LODWORD(v83) = *(this + 8);
            v81 = (0.5 - v82 * v83);
          }

          v76 = *(this + 122);
          if (v76 == *(this + 123))
          {
            DgnPrimArray<short>::reallocElts(this + 480, 1, 1);
            v76 = *(this + 122);
          }

          *(*(this + 60) + 2 * v76) = v81;
          v77 = this + 488;
        }

        *v77 = v76 + 1;
      }

      ++v75;
    }

    while (v75 < *(this + 29));
  }

  if (!*(this + 7))
  {
    if (*(this + 152) == 1)
    {
      (*(*this + 624))(this);
    }

    MultiLanguageModel::getFactoryCorrectiveLmNames(this, this + 20);
    MultiLanguageModel::getTopicLmSlotNames(this, this + 24);
    if (*(this + 26))
    {
      v84 = 0;
      v85 = 0;
      do
      {
        v86 = DgnArray<DgnString>::find(this + 20, *(this + 12) + v84);
        if (v86 != -1)
        {
          v89 = (*(this + 12) + v84);
          if (*(v89 + 2))
          {
            v90 = *v89;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3337, "lm/multilm", 94, "%u %u %.500s", v87, v88, v86);
        }

        ++v85;
        v84 += 16;
      }

      while (v85 < *(this + 26));
    }
  }
}

void MultiLanguageModel::loadMultiText(uint64_t a1, uint64_t a2, int a3, uint64_t a4, BOOL *a5)
{
  DgnTextFileParser::DgnTextFileParser(v232);
  v219 = a2;
  DgnTextFileParser::openDgnTextFileParser(v232, a2, 0x29u, 1);
  DgnTextFileParser::verifyMatchingFileType(v232, "MultiLanguageModelSpec");
  v230 = 0;
  v231 = 0;
  DgnTextFile::legalDgnTextFileVersions(v232, sMLS_Versions, &v230, v8, v9, v10, v11, v12);
  DgnTextFileParser::verifyFileVersionInRange(v232, &v230, v13, v14, v15, v16, v17, v18);
  DgnIArray<Utterance *>::~DgnIArray(&v230);
  FileVersion = DgnTextFile::getFileVersion(v232);
  v212 = a4;
  if (v233)
  {
    LOBYTE(v20) = v232[32];
  }

  else
  {
    v20 = &unk_26288BEF0;
  }

  v220 = v20;
  DgnString::DgnString(&v230);
  DgnTextFile::getHeaderField(v232, "MultiLMType", &v230, 1);
  if (v231)
  {
    v21 = v230;
  }

  else
  {
    v21 = &unk_26288BEF0;
  }

  v22 = strcmp(v21, "Dispatch");
  *(a1 + 112) = v22 == 0;
  v23 = strcmp(v21, "LogLinear");
  *(a1 + 113) = v23 == 0;
  v24 = strcmp(v21, "InterpolatedLinear");
  *(a1 + 114) = v24 == 0;
  if (v22 && v23 && v24)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2416, "lm/multilm", 66, "%.500s %.500s", v25, v26, v220);
  }

  DgnString::~DgnString(&v230);
  if (*(a1 + 112) == 1 && *(a1 + 28))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2420, "lm/multilm", 67, "%.500s", v27, v28, v220);
  }

  v29 = HIDWORD(FileVersion);
  *(a1 + 152) = (a3 ^ 1) & *(a1 + 114);
  v30 = "PrefiltererPerWordPenalty";
  if (FileVersion == 19)
  {
    v31 = v29 == 5;
    if (v31)
    {
      v30 = "TreeLMPerWordPenalty";
    }
  }

  else
  {
    v31 = FileVersion == 22 && v29 == 6;
  }

  *a5 = v31;
  DgnTextFile::getHeaderFieldUnsigned(v232, "NumberOfSubDirectories", (a1 + 116), 1, 1u, 0x3E8u);
  DgnTextFile::getHeaderFieldUnsigned(v232, "NumberOfFactoryWeightsNames", (a1 + 156), 1, 0, 0x3E8u);
  v229 = 0;
  DgnTextFile::getHeaderFieldUnsigned(v232, "NumberOfClientWeightsNames", &v229, 1, 0, 0x3E8u);
  v34 = v229 + *(a1 + 156);
  *(a1 + 160) = v34;
  if (a3 && v34)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2441, "lm/multilm", 76, "%.500s", v32, v33, v220);
  }

  HeaderField = DgnTextFile::getHeaderField(v232, "RecentBufferLMPath", (a1 + 120), 0);
  if (!DFile::subFileExists(v219, 0x4Au))
  {
    if (HeaderField == DFile::subFileExists(v219, 0x49u))
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if ((HeaderField & 1) == 0)
  {
LABEL_28:
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2451, "lm/multilm", 54, "%s", v41, v42, &errStr_lm_multilm_E_RECENT_BUFFER_MISMATCH);
  }

LABEL_29:
  DgnTextFileParser::verifyNoUnknownHeaderFields(v232, v36, v37, v38, v39, v40, v41, v42);
  v230 = 0;
  v231 = 0;
  DgnTextFile::getLineFieldNames(v232, &v230);
  v215 = v30;
  v228[0] = 0;
  v228[1] = 0;
  DgnTextFile::getLineFieldFormats(v232, v228);
  DgnTextFileParser::verifyMatchingNumFieldSpecs(v232, 6, v43, v44, v45, v46, v47, v48);
  v49 = v230;
  if (*(v230 + 2))
  {
    v50 = *v230;
  }

  else
  {
    v50 = &unk_26288BEF0;
  }

  if (strcmp(v50, "TableName"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2481, "lm/multilm", 5, "%.500s %.500s %.500s", v51, v52, v220);
    v49 = v230;
  }

  if (*v228[0])
  {
    if (*(v49 + 2))
    {
      v53 = *v49;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2484, "lm/multilm", 6, "%.500s %.500s %.500s", v51, v52, v220);
    v49 = v230;
  }

  if (*(v49 + 6))
  {
    v54 = *(v49 + 2);
  }

  else
  {
    v54 = &unk_26288BEF0;
  }

  if (strcmp(v54, "WeightsName"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2489, "lm/multilm", 5, "%.500s %.500s %.500s", v55, v56, v220);
    v49 = v230;
  }

  if (*(v228[0] + 4))
  {
    if (*(v49 + 6))
    {
      v57 = *(v49 + 2);
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2492, "lm/multilm", 6, "%.500s %.500s %.500s", v55, v56, v220);
    v49 = v230;
  }

  if (*(v49 + 10))
  {
    v58 = *(v49 + 4);
  }

  else
  {
    v58 = &unk_26288BEF0;
  }

  if (strcmp(v58, "SubDirectory"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2497, "lm/multilm", 5, "%.500s %.500s %.500s", v59, v60, v220);
    v49 = v230;
  }

  if (*(v228[0] + 8))
  {
    if (*(v49 + 10))
    {
      v61 = *(v49 + 4);
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2500, "lm/multilm", 6, "%.500s %.500s %.500s", v59, v60, v220);
    v49 = v230;
  }

  if (*(v49 + 14))
  {
    v62 = *(v49 + 6);
  }

  else
  {
    v62 = &unk_26288BEF0;
  }

  if (strcmp(v62, "IntValue"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2505, "lm/multilm", 5, "%.500s %.500s %.500s", v63, v64, v220);
    v49 = v230;
  }

  if (*(v228[0] + 12) != 1)
  {
    if (*(v49 + 14))
    {
      v65 = *(v49 + 6);
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2508, "lm/multilm", 6, "%.500s %.500s %.500s", v63, v64, v220);
    v49 = v230;
  }

  if (*(v49 + 18))
  {
    v66 = *(v49 + 8);
  }

  else
  {
    v66 = &unk_26288BEF0;
  }

  if (strcmp(v66, "RealValue"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2513, "lm/multilm", 5, "%.500s %.500s %.500s", v67, v68, v220);
    v49 = v230;
  }

  if (*(v228[0] + 16) != 2)
  {
    if (*(v49 + 18))
    {
      v69 = *(v49 + 8);
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2516, "lm/multilm", 6, "%.500s %.500s %.500s", v67, v68, v220);
    v49 = v230;
  }

  if (*(v49 + 22))
  {
    v70 = *(v49 + 10);
  }

  else
  {
    v70 = &unk_26288BEF0;
  }

  if (strcmp(v70, "StrValue"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2521, "lm/multilm", 5, "%.500s %.500s %.500s", v71, v72, v220);
  }

  if (*(v228[0] + 20))
  {
    if (*(v230 + 22))
    {
      v73 = *(v230 + 10);
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2524, "lm/multilm", 6, "%.500s %.500s %.500s", v71, v72, v220);
  }

  v227[0] = 0;
  v227[1] = 0;
  MultiLanguageModel::loadStringTable(a1, v227, "SlotType", v232, 0, 1u, 2u, 3u, 4u, 5u);
  if (*(a1 + 113) == 1)
  {
    v76 = (a1 + 512);
    MultiLanguageModel::loadStringTable(a1, a1 + 512, "CorrectiveName", v232, 0, 1u, 2u, 3u, 4u, 5u);
    if (*(a1 + 116))
    {
      v77 = 0;
      for (i = 0; i < *(a1 + 116); ++i)
      {
        v79 = *(v227[0] + v77);
        if (*(v227[0] + v77 + 8))
        {
          v80 = *(v227[0] + v77);
        }

        else
        {
          v80 = &unk_26288BEF0;
        }

        v81 = strcmp(v80, "FactoryCorrectiveWord");
        v82 = *v76;
        if (v81)
        {
          if (*(v82 + v77 + 8) >= 2u)
          {
            goto LABEL_97;
          }
        }

        else
        {
          v83 = v82 + v77;
          if (*(v83 + 8))
          {
            v84 = *v83;
          }

          else
          {
            v84 = &unk_26288BEF0;
          }

          if ((isValidName(v84) & 1) == 0)
          {
            v82 = *v76;
LABEL_97:
            v85 = (v82 + v77);
            if (*(v85 + 2))
            {
              v86 = *v85;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2558, "lm/multilm", 87, "%.500s %u %.500s", v74, v75, v220);
          }
        }

        v77 += 16;
      }
    }
  }

  if ((*(a1 + 112) & 1) == 0)
  {
    MultiLanguageModel::loadStringTable(a1, a1 + 352, "TopicName", v232, 0, 1u, 2u, 3u, 4u, 5u);
    if (*(a1 + 116))
    {
      v87 = 0;
      for (j = 0; j < *(a1 + 116); ++j)
      {
        v89 = *(v227[0] + v87);
        if (*(v227[0] + v87 + 8))
        {
          v90 = *(v227[0] + v87);
        }

        else
        {
          v90 = &unk_26288BEF0;
        }

        v91 = strcmp(v90, "TopicWord");
        v92 = *(a1 + 352);
        if (v91)
        {
          if (*(v92 + v87 + 8) >= 2u)
          {
            goto LABEL_115;
          }
        }

        else
        {
          v93 = v92 + v87;
          if (*(v93 + 8))
          {
            v94 = *v93;
          }

          else
          {
            v94 = &unk_26288BEF0;
          }

          if ((isValidName(v94) & 1) == 0)
          {
            v92 = *(a1 + 352);
LABEL_115:
            v95 = (v92 + v87);
            if (*(v95 + 2))
            {
              v96 = *v95;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2580, "lm/multilm", 91, "%.500s %u %.500s", v74, v75, v220);
          }
        }

        v87 += 16;
      }
    }
  }

  if ((*(a1 + 112) & 1) == 0)
  {
    v97 = 320;
    if (*a5)
    {
      v97 = 368;
      v98 = "TemplateLMPath";
    }

    else
    {
      v98 = "TemplatePath";
    }

    MultiLanguageModel::loadStringTable(a1, a1 + v97, v98, v232, 0, 1u, 2u, 3u, 4u, 5u);
  }

  v225 = 0;
  v226 = 0;
  if (*(a1 + 114) == 1)
  {
    MultiLanguageModel::loadRealTable(a1, a1 + 400, 0, "WeightFloor", v232, 0, 1u, 2u, 0.0, 0.0, 1.0, 3u, 4u, 5u);
    MultiLanguageModel::loadRealTable(a1, a1 + 416, 0, "WeightCeiling", v232, 0, 1u, 2u, 0.0, 0.0, 1.0, 3u, 4u, 5u);
    MultiLanguageModel::loadRealTable(a1, a1 + 432, 0, "PrefiltererFixedWeight", v232, 0, 1u, 2u, -1.0, 0.0, 1.0, 3u, 4u, 5u);
    MultiLanguageModel::loadRealTable(a1, &v225, 0, "CurrentWeight", v232, 0, 1u, 2u, 0.0, 0.0, 1.0, 3u, 4u, 5u);
    if (*(a1 + 114) == 1)
    {
      MultiLanguageModel::loadRealTable(a1, a1 + 448, 0, "DefaultTopicWeight", v232, 0, 1u, 2u, 0.0, 0.0, 1.0, 3u, 4u, 5u);
    }
  }

  v99 = *(a1 + 160);
  v100 = *(a1 + 180);
  if (v99 > v100)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a1 + 168, v99 - v100, 0);
  }

  v101 = *(a1 + 176);
  v102 = v101;
  if (v99 >= v101)
  {
    if (v99 > v101)
    {
      v104 = v99 - v101;
      v105 = 16 * v101;
      do
      {
        DgnString::DgnString((*(a1 + 168) + v105));
        v105 += 16;
        --v104;
      }

      while (v104);
    }
  }

  else if (v101 > v99)
  {
    v103 = 16 * v101 - 16;
    do
    {
      --v102;
      DgnString::~DgnString((*(a1 + 168) + v103));
      v103 -= 16;
    }

    while (v102 > v99);
  }

  *(a1 + 176) = v99;
  v106 = *(a1 + 160);
  v107 = *(a1 + 196);
  if (v106 > v107)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a1 + 184, v106 - v107, 0);
  }

  v108 = *(a1 + 192);
  if (v108 <= v106)
  {
    if (v108 < v106)
    {
      v111 = v106 - v108;
      v112 = 16 * v108;
      do
      {
        v113 = (*(a1 + 184) + v112);
        *v113 = 0;
        v113[1] = 0;
        v112 += 16;
        --v111;
      }

      while (v111);
    }
  }

  else if (v108 > v106)
  {
    v109 = v108;
    v110 = 16 * v108 - 16;
    do
    {
      --v109;
      DgnPrimArray<unsigned int>::~DgnPrimArray(*(a1 + 184) + v110);
      v110 -= 16;
    }

    while (v109 > v106);
  }

  *(a1 + 192) = v106;
  if (*(a1 + 176))
  {
    v114 = 0;
    do
    {
      IdMgr<unsigned int>::getNextId((a1 + 232));
      if (v114 >= *(a1 + 156))
      {
        v115 = "ClientWeight";
      }

      else
      {
        v115 = "FactoryWeight";
      }

      MultiLanguageModel::loadRealTable(a1, *(a1 + 184) + 16 * v114, (*(a1 + 168) + 16 * v114), v115, v232, 0, 1u, 2u, -1.0, 0.0, 1.0, 3u, 4u, 5u);
      if (v114)
      {
        v116 = 0;
        v117 = *(a1 + 168);
        v118 = v117 + 16 * v114;
        v119 = *(v118 + 8);
        v120 = *v118;
        if (v119)
        {
          v121 = v120;
        }

        else
        {
          v121 = &unk_26288BEF0;
        }

        v122 = (v117 + 8);
        while (1)
        {
          v123 = *v122 ? *(v122 - 1) : &unk_26288BEF0;
          if (!strcmp(v123, v121))
          {
            break;
          }

          ++v116;
          v122 += 4;
          if (v114 == v116)
          {
            goto LABEL_165;
          }
        }

        if (v116 != 0xFFFFFFFFLL)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2663, "lm/multilm", 75, "%.500s %u %u %.500s", v74, v75, v220);
        }
      }

LABEL_165:
      ++v114;
    }

    while (v114 < *(a1 + 176));
  }

  if (*(a1 + 113))
  {
    MultiLanguageModel::loadRealTable(a1, &v225, 0, "LogLinearWeight", v232, 0, 1u, 2u, 0.0, -100.0, 100.0, 3u, 4u, 5u);
    MultiLanguageModel::loadIntTable(a1, a1 + 528, "LogLinearOffset", 0, -20 * *(a1 + 32), 20 * *(a1 + 32), v232, 0, 1u, 2u, 3u, 4u, 5u);
    v223 = 0;
    v224 = 0;
    MultiLanguageModel::loadUnsTable(a1, &v223, "IsActive", 0, 0, 1u, v232, 0, 1u, 2u, 3u, 4u, 5u);
    v124 = *(a1 + 116);
    LODWORD(v125) = v124;
    if (*(a1 + 556) < v124)
    {
      v221 = 0;
      *(a1 + 556) = realloc_array(*(a1 + 544), &v221, v124, *(a1 + 552), *(a1 + 552), 1);
      *(a1 + 544) = v221;
      LODWORD(v125) = *(a1 + 116);
    }

    *(a1 + 552) = v124;
    if (v125)
    {
      v126 = v223;
      v127 = *(a1 + 544);
      v125 = v125;
      do
      {
        v128 = *v126++;
        *v127++ = v128 != 0;
        --v125;
      }

      while (v125);
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(&v223);
  }

  if (*(a1 + 112) == 1)
  {
    v223 = 0;
    v224 = 0;
    v221 = 0;
    v222 = 0;
    MultiLanguageModel::loadIntTable(a1, &v223, "MinWordId", -1, 0, *(*(a1 + 16) + 388), v232, 0, 1u, 2u, 3u, 4u, 5u);
    MultiLanguageModel::loadIntTable(a1, &v221, "MaxWordId", -1, 0, *(*(a1 + 16) + 388), v232, 0, 1u, 2u, 3u, 4u, 5u);
    v131 = (a1 + 568);
    v132 = *(a1 + 116);
    v133 = *(a1 + 580);
    v134 = v132;
    if (v132 > v133)
    {
      DgnPrimArray<unsigned int>::reallocElts(a1 + 568, v132 - v133, 0);
      v134 = *(a1 + 116);
    }

    *(a1 + 576) = v132;
    v135 = (a1 + 584);
    v136 = *(a1 + 596);
    v137 = v134;
    if (v134 > v136)
    {
      DgnPrimArray<unsigned int>::reallocElts(a1 + 584, v134 - v136, 0);
      v137 = *(a1 + 116);
    }

    *(a1 + 592) = v134;
    if (v137)
    {
      v138 = 0;
      do
      {
        if (v138)
        {
          v139 = v223[v138];
          if (v139 == -1 || (v140 = v221, v141 = *(v221 + v138), v141 == -1))
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2738, "lm/multilm", 100, "%.500s %u %.500s", v129, v130, v220);
            v139 = v223[v138];
            v140 = v221;
            v141 = *(v221 + v138);
          }

          if (v139 > v141)
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2741, "lm/multilm", 101, "%.500s %u", v129, v130, v220);
            v139 = v223[v138];
            v140 = v221;
          }

          v142 = *v131;
          *(*v131 + 4 * v138) = v139;
          v143 = v140[v138];
          v144 = *v135;
          *(*v135 + 4 * v138) = v143;
          if (v138 != 1 && *(v142 + 4 * v138) != *(v144 + 4 * (v138 - 1)) + 1)
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2752, "lm/multilm", 102, "%.500s %u", v129, v130, v220);
            v142 = *v131;
            v143 = *(*v135 + 4 * v138);
          }

          for (k = *(v142 + 4 * v138); k <= v143; ++k)
          {
            v146 = *(a1 + 16);
            if (*(v146 + 388) <= k || !*(*(v146 + 104) + k) || ((*(*(v146 + 640) + 4 * (k >> 5)) >> k) & 1) == 0)
            {
              CurrentLine = DgnTextFile::getCurrentLine(v232);
              if (*(CurrentLine + 8))
              {
                v150 = *CurrentLine;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2763, "lm/multilm", 63, "%u %.500s %.500s", v148, v149, k);
              v146 = *(a1 + 16);
            }

            v151 = *(*(v146 + 256) + 4 * k);
            if (v151 >= *(*v131 + 4 * v138))
            {
              v143 = *(*v135 + 4 * v138);
              if (v151 <= v143)
              {
                continue;
              }
            }

            v152 = DgnTextFile::getCurrentLine(v232);
            if (*(v152 + 8))
            {
              v155 = *v152;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2770, "lm/multilm", 64, "%u %u %.500s %.500s", v153, v154, k);
            v143 = *(*v135 + 4 * v138);
          }
        }

        else
        {
          if (*v223 != -1 || *v221 != -1)
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2722, "lm/multilm", 100, "%.500s %u %.500s", v129, v130, v220);
          }

          **(a1 + 568) = 0xFFFFFF;
          **(a1 + 584) = 0xFFFFFF;
          *(a1 + 560) = 0;
        }

        ++v138;
      }

      while (v138 < *(a1 + 116));
    }

    MultiLanguageModel::loadUnsTable(a1, a1 + 600, v215, 0, 0, 0x3E8u, v232, 0, 1u, 2u, 3u, 4u, 5u);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v221);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v223);
  }

  v156 = *(a1 + 176);
  v223 = 0;
  v224 = 0;
  if (v156)
  {
    v221 = 0;
    v157 = realloc_array(0, &v221, 8 * v156, 0, 0, 1);
    v222 = 0;
    v223 = v221;
    v158 = *(a1 + 176);
    LODWORD(v224) = v156;
    HIDWORD(v224) = v157 >> 3;
    v221 = 0;
    if (v158)
    {
      v234[0] = 0;
      v159 = realloc_array(0, v234, 8 * v158, 0, 0, 1);
      v160 = v234[0];
      v221 = v234[0];
      v161 = *(a1 + 176);
      LODWORD(v222) = v158;
      HIDWORD(v222) = v159 >> 3;
      if (v161)
      {
        v162 = v223;
        do
        {
          *v162 = 0;
          v162 += 2;
          *v160++ = 0;
          --v161;
        }

        while (v161);
      }

      goto LABEL_217;
    }
  }

  else
  {
    v221 = 0;
    v222 = 0;
  }

  LODWORD(v222) = 0;
LABEL_217:
  v163 = *(a1 + 116);
  v164 = *(a1 + 148);
  v165 = v163;
  if (v163 > v164)
  {
    DgnPrimArray<unsigned int>::reallocElts(a1 + 136, v163 - v164, 0);
    v165 = *(a1 + 116);
  }

  *(a1 + 144) = v163;
  if (!v165)
  {
    if ((*(a1 + 114) & 1) == 0)
    {
      goto LABEL_339;
    }

    v204 = 1;
    v169 = 0.0;
    v168 = 0.0;
    v167 = 0.0;
    goto LABEL_319;
  }

  v166 = 0;
  v167 = 0.0;
  v168 = 0.0;
  v214 = 0.0;
  v216 = 0.0;
  v169 = 0.0;
  v213 = 0.0;
  v170 = 0.0;
  do
  {
    v171 = 1;
    LODWORD(v234[0]) = 1;
    HIDWORD(v234[0]) = v166;
    v172 = v227[0] + 16 * v166;
    v173 = *(v172 + 8);
    v174 = *v172;
    if (v173)
    {
      v175 = v174;
    }

    else
    {
      v175 = &unk_26288BEF0;
    }

    if (strcmp(v175, "FactoryWord"))
    {
      if ((a3 & 1) == 0)
      {
        if ((*(a1 + 112) & 1) == 0 && !strcmp(v175, "TopicWord"))
        {
          v182 = 0;
          v180 = 1;
          v181 = 1;
          goto LABEL_240;
        }

        if (*(a1 + 113) == 1 && !strcmp(v175, "FactoryCorrectiveWord"))
        {
          v180 = 0;
          v171 = 0;
          v181 = 2;
          goto LABEL_239;
        }
      }

      if (!strcmp(v175, "Multi"))
      {
        v180 = 0;
        v181 = 3;
        goto LABEL_239;
      }

      if (*(a1 + 112) == 1 && !strcmp(v175, "Dummy"))
      {
        v180 = 0;
        v181 = 4;
        goto LABEL_239;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2857, "lm/multilm", 103, "%.500s %u", v74, v75, v220);
    }

    v180 = 0;
    v181 = 0;
LABEL_239:
    v182 = 1;
LABEL_240:
    *(*(a1 + 136) + 4 * v166) = v181;
    if (*(a1 + 112))
    {
      goto LABEL_250;
    }

    if (*a5)
    {
      v183 = *(*(a1 + 368) + 16 * v166 + 8);
      if (!v180)
      {
        if (v183 > 1)
        {
          goto LABEL_249;
        }

        goto LABEL_250;
      }
    }

    else
    {
      v183 = *(*(a1 + 320) + 16 * v166 + 8);
      if (!v180)
      {
        if (v183 < 2)
        {
          goto LABEL_250;
        }

LABEL_249:
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2883, "lm/multilm", 104, "%.500s %u", v74, v75, v220);
        goto LABEL_250;
      }
    }

    if (v183 < 2)
    {
      goto LABEL_249;
    }

LABEL_250:
    if (*(a1 + 114) != 1)
    {
      goto LABEL_306;
    }

    v184 = *(*(a1 + 400) + 8 * v166);
    if (v180)
    {
      v213 = v213 + v184;
      v185 = *(v225 + 8 * v166);
      v186 = *(*(a1 + 416) + 8 * v166);
    }

    else
    {
      v186 = *(*(a1 + 416) + 8 * v166);
      v185 = *(v225 + 8 * v166);
      v214 = v214 + v186;
      v216 = v216 + v185;
    }

    v187 = *(*(a1 + 432) + 8 * v166);
    if (v187 != -1.0)
    {
      v169 = v169 + v187;
    }

    v188 = *(*(a1 + 448) + 8 * v166);
    if (v184 > v186)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2907, "lm/multilm", 105, "%.500s %u", v74, v75, v220);
      v187 = *(*(a1 + 432) + 8 * v166);
    }

    if (v187 != -1.0 && v187 != 0.0 && (v187 < *(*(a1 + 400) + 8 * v166) || v187 > *(*(a1 + 416) + 8 * v166)))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2913, "lm/multilm", 106, "%.500s %u", v74, v75, v220);
    }

    v189 = *(v225 + 8 * v166);
    if (v189 != 0.0 || v189 < *(*(a1 + 400) + 8 * v166) || v189 > *(*(a1 + 416) + 8 * v166))
    {
      DFile::pushCurrentSubDirComponent(v219, v234, v176, v177, v178, v179, v74, v75);
      if (*a5)
      {
        v190 = DFile::subFileExists(v219, 0x6Du);
      }

      else if (DFile::subFileExists(v219, 0x6Bu))
      {
        v190 = DFile::subFileExists(v219, 0x73u) ^ 1;
      }

      else
      {
        v190 = 0;
      }

      DFile::popCurrentSubDirComponent(v219);
      v191 = *(v225 + 8 * v166);
      if (v190)
      {
        if (v191 == 0.0)
        {
          goto LABEL_279;
        }

        v192 = 107;
        v193 = 2939;
        v194 = "%.500s %u";
        goto LABEL_278;
      }

      if (v191 != 0.0 && (v191 < *(*(a1 + 400) + 8 * v166) || v191 > *(*(a1 + 416) + 8 * v166)))
      {
        v192 = 108;
        v193 = 2945;
        v194 = "%.500s %u";
LABEL_278:
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", v193, "lm/multilm", v192, v194, v74, v75, v220);
      }
    }

LABEL_279:
    v195 = *(*(a1 + 448) + 8 * v166);
    if (!v180)
    {
      if (v195 == 0.0)
      {
        goto LABEL_286;
      }

LABEL_285:
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2960, "lm/multilm", 109, "%.500s %u", v74, v75, v220);
      goto LABEL_286;
    }

    if (v195 != 0.0 && (v195 < *(*(a1 + 400) + 8 * v166) || v195 > *(*(a1 + 416) + 8 * v166)))
    {
      goto LABEL_285;
    }

LABEL_286:
    v170 = v170 + v184;
    v168 = v168 + v185;
    v167 = v167 + v188;
    if (*(a1 + 176))
    {
      v196 = 0;
      v197 = 0;
      do
      {
        v198 = *(*(*(a1 + 184) + v196) + 8 * v166);
        v199 = v182 ^ 1;
        if (v198 != -1.0)
        {
          v199 = 1;
        }

        if ((v199 & 1) == 0)
        {
          v200 = (*(a1 + 168) + v196);
          if (*(v200 + 2))
          {
            v201 = *v200;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2969, "lm/multilm", 110, "%.500s %.500s %u", v74, v75, v220);
        }

        if (v198 != -1.0 && v198 != 0.0 && (v198 < *(*(a1 + 400) + 8 * v166) || v198 > *(*(a1 + 416) + 8 * v166)))
        {
          v202 = (*(a1 + 168) + v196);
          if (*(v202 + 2))
          {
            v203 = *v202;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2975, "lm/multilm", 111, "%.500s %.500s %u", v74, v75, v220);
        }

        if (v198 != -1.0)
        {
          *&v223[2 * v197] = v198 + *&v223[2 * v197];
        }

        if (v182)
        {
          *(v221 + v197) = v198 + *(v221 + v197);
        }

        ++v197;
        v196 += 16;
      }

      while (v197 < *(a1 + 176));
    }

LABEL_306:
    if ((v171 & *(a1 + 113)) == 1 && (*(*(a1 + 544) + v166) & 1) == 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2993, "lm/multilm", 112, "%.500s %u", v74, v75, v220);
    }

    ++v166;
  }

  while (v166 < *(a1 + 116));
  v204 = v216 == 0.0;
  if ((*(a1 + 114) & 1) == 0)
  {
    goto LABEL_339;
  }

  if (v170 > 1.0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3001, "lm/multilm", 13, "%.500s %f", v74, v75, v220);
  }

  if (v213 >= 1.0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3004, "lm/multilm", 117, "%.500s %f", v74, v75, v220);
  }

  if (v214 < 1.0)
  {
LABEL_319:
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3007, "lm/multilm", 14, "%.500s %f", v74, v75, v220);
  }

  if (v169 >= 1.0001)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3011, "lm/multilm", 29, "%.500s %f", v74, v75, v220);
  }

  if (v204)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3014, "lm/multilm", 78, "%.500s", v74, v75, v220);
  }

  if (fabs(v168 + -1.0) >= 0.0001)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3017, "lm/multilm", 49, "%.500s %f", v74, v75, v220);
  }

  if (v167 >= 1.0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3020, "lm/multilm", 77, "%.500s %f", v74, v75, v220);
  }

  if (*(a1 + 176))
  {
    v205 = 0;
    v206 = 0;
    do
    {
      if (fabs(*&v223[2 * v206] + -1.0) >= 0.0001)
      {
        v207 = (*(a1 + 168) + v205);
        if (*(v207 + 2))
        {
          v208 = *v207;
        }

        *v211 = *&v223[2 * v206];
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3027, "lm/multilm", 50, "%.500s %.500s %f", v74, v75, v220);
      }

      if (*(v221 + v206) == 0.0)
      {
        v209 = (*(a1 + 168) + v205);
        if (*(v209 + 2))
        {
          v210 = *v209;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3030, "lm/multilm", 79, "%.500s %.500s", v74, v75, v220);
      }

      ++v206;
      v205 += 16;
    }

    while (v206 < *(a1 + 176));
  }

LABEL_339:
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v221);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v223);
  DgnPrimArray<double>::copyArraySlice(v212, &v225, 0, v226);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v225);
  DgnArray<DgnString>::releaseAll(v227);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v228);
  DgnArray<DgnString>::releaseAll(&v230);
  DgnTextFileParser::~DgnTextFileParser(v232);
}

void readObject<DgnPrimArray<double>>(DgnStream *a1, uint64_t a2, unsigned int *a3)
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
      readObject<double>(a1, *a2 + v14, a3);
      ++v15;
      v14 += 16;
    }

    while (v15 < *(a2 + 8));
  }
}

uint64_t readObject<unsigned int>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v15 = 0;
  v13 = 0;
  v14 = 0;
  v9 = 0;
  v10 = 0;
  v12 = 0;
  v11 = 0;
  readObject(a1, &v15, a3);
  readObject(a1, &v14, a3);
  readObject(a1, &v13, a3);
  readObject<unsigned int,DgnPrimArray<unsigned int>>(a1, &v9, a3);
  v7 = v13;
  v6 = v14;
  *a2 = v15;
  *(a2 + 4) = v6;
  *(a2 + 8) = v7;
  DgnPrimArray<int>::copyArraySlice(a2 + 16, &v9, 0, v10);
  *(a2 + 40) = v12;
  *(a2 + 32) = v11;
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v9);
}

void readObject<WordDummySpec>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v13 = 0;
  readObject(a1, &v13, a3);
  v6 = v13;
  v7 = *(a2 + 12);
  if (v13 > v7)
  {
    DgnArray<PrefilterResultFrame>::reallocElts(a2, v13 - v7, 0);
  }

  v8 = *(a2 + 8);
  if (v6 > v8)
  {
    v9 = v6 - v8;
    v10 = 32 * v8;
    do
    {
      WordDummySpec::WordDummySpec((*a2 + v10));
      v10 += 32;
      --v9;
    }

    while (v9);
  }

  *(a2 + 8) = v6;
  if (v6)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      WordDummySpec::readObject((*a2 + v11), a1, a3);
      ++v12;
      v11 += 32;
    }

    while (v12 < *(a2 + 8));
  }
}

void (***MultiLanguageModel::saveMultiBinary(MultiLanguageModel *this, DFile *a2, DFileChecksums *a3, int a4))(void)
{
  v7 = OpenAndWriteMrecHeader(a2, 0x28u, a4, "LMMULBIN", 24, 6);
  v14 = *(this + 36);
  v15 = 0;
  writeObject(v7, &v14, &v15);
  if (v14)
  {
    for (i = 0; i < v14; ++i)
    {
      v9 = *(*(this + 17) + 4 * i);
      if ((v9 - 1) < 4)
      {
        v10 = v9 + 1;
      }

      else
      {
        v10 = 1;
      }

      v13 = v10;
      writeObject(v7, &v13, &v15);
    }
  }

  writeObject(v7, this + 29, &v15);
  writeObject(v7, this + 112, &v15);
  writeObject(v7, this + 113, &v15);
  writeObject(v7, this + 114, &v15);
  writeObject(v7, this + 120, &v15);
  writeObject(v7, this + 152, &v15);
  writeObject(v7, this + 39, &v15);
  writeObject(v7, this + 40, &v15);
  writeObject<DgnString>(v7, this + 168, &v15);
  writeObject<DgnPrimArray<double>>(v7, this + 184, &v15);
  writeObject<DgnPrimArray<double>>(v7, this + 200, &v15);
  writeObject<DgnPrimArray<short>>(v7, this + 216, &v15);
  writeObject<unsigned int>(v7, this + 58, &v15);
  writeObject(v7, this + 70, &v15);
  writeObject(v7, this + 71, &v15);
  writeObject<DgnString>(v7, this + 352, &v15);
  writeObject<DgnString>(v7, this + 320, &v15);
  writeObject<double>(v7, this + 384, &v15);
  writeObject<double>(v7, this + 400, &v15);
  writeObject<double>(v7, this + 416, &v15);
  writeObject<double>(v7, this + 432, &v15);
  writeObject<double>(v7, this + 448, &v15);
  writeObject<short>(v7, this + 464, &v15);
  writeObject<short>(v7, this + 480, &v15);
  writeObject<double>(v7, this + 496, &v15);
  writeObject<DgnString>(v7, this + 512, &v15);
  writeObject<unsigned int>(v7, this + 528, &v15);
  writeObject<BOOL>(v7, this + 544, &v15);
  writeObject(v7, this + 140, &v15);
  writeObject<unsigned int>(v7, this + 568, &v15);
  writeObject<unsigned int>(v7, this + 584, &v15);
  writeObject<unsigned int>(v7, this + 600, &v15);
  writeObjectChecksum(v7, &v15);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x28u, v15);
  return DgnDelete<DgnStream>(v7);
}

uint64_t writeObject<DgnPrimArray<double>>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = writeObject<double>(a1, *a2 + v7, a3);
      ++v8;
      v7 += 16;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

uint64_t writeObject<DgnPrimArray<short>>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = writeObject<short>(a1, *a2 + v7, a3);
      ++v8;
      v7 += 16;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

uint64_t writeObject<unsigned int>(uint64_t a1, int *a2, _DWORD *a3)
{
  v9 = *a2;
  writeObject(a1, &v9, a3);
  v8 = a2[1];
  writeObject(a1, &v8, a3);
  v7 = a2[2];
  writeObject(a1, &v7, a3);
  return writeObject<unsigned int,DgnPrimArray<unsigned int>>(a1, (a2 + 4), a3);
}

void MultiLanguageModel::verifySubdirContents(MultiLanguageModel *this, const DFile *a2, unsigned int a3, int a4, int a5)
{
  if (!a5)
  {
    if (a4)
    {
      if (DFile::subFileExists(a2, 0x73u))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3478, "lm/multilm", 128, "%.500s %u", v10, v11, ".wns");
      }

      if (DFile::subFileExists(a2, 0x29u))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3482, "lm/multilm", 128, "%.500s %u", v12, v13, ".mls");
      }

      v14 = *(*(this + 17) + 4 * a3);
      if (v14 == 4)
      {
        return;
      }

      if (v14 == 1)
      {
        if ((DFile::subFileExists(a2, 0x6Au) & 1) == 0)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3488, "lm/multilm", 126, "%u", v15, v16, a3);
        }

        v17 = DFile::subFileExists(a2, 0x6Fu);
        v18 = DFile::subFileExists(a2, 0x70u);
        if (v17 && v18)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3497, "lm/multilm", 130, "%u", v19, v20, a3);
        }

        if (!DFile::subFileExists(a2, 0x28u))
        {
          return;
        }

        v46 = a3;
        v23 = "%u";
        v24 = 3502;
LABEL_31:
        v34 = 131;
LABEL_51:
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", v24, "lm/multilm", v34, v23, v21, v22, v46);
        return;
      }

      v41 = DFile::subFileExists(a2, 0x28u);
      v42 = DFile::subFileExists(a2, 0x6Fu) + v41;
      v43 = v42 + DFile::subFileExists(a2, 0x70u);
      if (DFile::subFileExists(a2, 0x6Au))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3514, "lm/multilm", 15, "%u", v21, v22, a3);
      }

      if (v43 == 1)
      {
        return;
      }

      v46 = a3;
      v23 = "%u";
      v24 = 3516;
    }

    else
    {
      if (DFile::subFileExists(a2, 0x6Fu))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3525, "lm/multilm", 127, "%.500s %u", v25, v26, ".wnb");
      }

      if (DFile::subFileExists(a2, 0x70u))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3529, "lm/multilm", 127, "%.500s %u", v27, v28, ".wnd");
      }

      if (DFile::subFileExists(a2, 0x28u))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3533, "lm/multilm", 127, "%.500s %u", v29, v30, ".mlb");
      }

      v31 = *(*(this + 17) + 4 * a3);
      if (v31 == 4)
      {
        return;
      }

      if (v31 == 1)
      {
        if ((DFile::subFileExists(a2, 0x6Bu) & 1) == 0)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3538, "lm/multilm", 126, "%u", v32, v33, a3);
        }

        if (!DFile::subFileExists(a2, 0x29u))
        {
          return;
        }

        v46 = a3;
        v23 = "%u";
        v24 = 3543;
        goto LABEL_31;
      }

      v44 = DFile::subFileExists(a2, 0x29u);
      v45 = DFile::subFileExists(a2, 0x73u);
      if (DFile::subFileExists(a2, 0x6Bu))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3554, "lm/multilm", 15, "%u", v21, v22, a3);
      }

      if (v44 != v45)
      {
        return;
      }

      v46 = a3;
      v23 = "%u";
      v24 = 3556;
    }

    v34 = 129;
    goto LABEL_51;
  }

  if (DFile::subFileExists(a2, 0x73u) & 1) != 0 || (DFile::subFileExists(a2, 0x6Fu))
  {
    v8 = 1;
  }

  else
  {
    v8 = DFile::subFileExists(a2, 0x70u);
  }

  v35 = v8 + DFile::subFileExists(a2, 0x29u);
  v36 = DFile::subFileExists(a2, 0x28u);
  v39 = v35 + v36 + DFile::subFileExists(a2, 0x6Du);
  v40 = *(this + 112);
  if ((v40 & 1) == 0)
  {
    if (a4)
    {
      if (v39 <= 1)
      {
        return;
      }
    }

    else if (v39 == 1)
    {
      return;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3466, "lm/multilm", 9, "%s", v37, v38, &errStr_lm_multilm_E_BAD_NUM_SPEC_SUBFILES);
    v40 = *(this + 112);
  }

  if ((v40 & 1) != 0 && v39 >= 2)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3468, "lm/multilm", 42, "%s", v37, v38, &errStr_lm_multilm_E_MULTIPLE_SPEC_SUBFILES);
  }
}

uint64_t MultiLanguageModel::getTotalPreloadableBytes(MultiLanguageModel *this)
{
  v1 = *(this + 29);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(*(this + 5) + 8 * v3);
    if (v5)
    {
      v4 += (*(*v5 + 32))(v5);
      v1 = *(this + 29);
    }

    ++v3;
  }

  while (v3 < v1);
  return v4;
}

uint64_t MultiLanguageModel::computeTotalPreloadableBytes(MultiLanguageModel *this)
{
  v1 = *(this + 29);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(*(this + 5) + 8 * v3);
    if (v5)
    {
      v4 += (*(*v5 + 40))(v5);
      v1 = *(this + 29);
    }

    ++v3;
  }

  while (v3 < v1);
  return v4;
}

void MultiLanguageModel::finalizeLM(uint64_t a1, char **a2, DFile *a3, DFileChecksums *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14)
{
  v34 = a6;
  v18 = *(a1 + 116);
  if (v18)
  {
    v19 = 0;
    for (i = 0; i < v18; ++i)
    {
      if (*(*(a1 + 40) + 8 * i))
      {
        v21 = a7;
        v22 = a8;
        v23 = a9;
        if (*(a1 + 112) == 1)
        {
          v21 = a7;
          v22 = a8;
          v23 = a9;
          if (*(a1 + 576) >= 2u)
          {
            v21 = i != 0;
            v24 = *(a1 + 568);
            if (i)
            {
              v25 = (v24 + v19);
              v26 = (*(a1 + 584) + v19);
            }

            else
            {
              v25 = (v24 + 4);
              v26 = (*(a1 + 584) + 4 * (*(a1 + 592) - 1));
            }

            v22 = *v25;
            v23 = *v26;
          }
        }

        v36[0] = 1;
        v36[1] = i;
        DFile::pushCurrentSubDirComponent(a3, v36, a3, a4, a5, a6, a7, a8);
        v27 = *(*(a1 + 40) + 8 * i);
        LOBYTE(v31) = a12;
        BYTE4(v30) = a10;
        LODWORD(v30) = v23;
        (*(*v27 + 48))(v27, a2, a3, a4, a5, v34, v21, v22, v30, a11, v31, a13, a14);
        DFile::popCurrentSubDirComponent(a3);
        v18 = *(a1 + 116);
      }

      v19 += 4;
    }
  }

  if ((*(a1 + 112) & 1) == 0)
  {
    v28 = MultiLanguageModel::maybeUpgradeToWordNgramTemplates(a1, a2, a3, a8, a9, a10, a11, a8);
    MultiLanguageModel::setWordNgramTemplates(a1, a11, v28);
  }

  (*(*a1 + 696))(a1);
  if ((DFile::subFileExists(a3, 0x4Au) & 1) != 0 || DFile::subFileExists(a3, 0x49u))
  {
    if (*(a1 + 128) > 1u)
    {
      LMForDirPathVerify = MultiLanguageModel::getLMForDirPathVerify(a1, "RecentBufferLMPath", (a1 + 120), 0, a3, 0);
    }

    else
    {
      LMForDirPathVerify = (*(*a1 + 56))(a1, a1 + 120);
    }

    *(a1 + 56) = LMForDirPathVerify;
  }

  BYTE4(v30) = a10;
  LODWORD(v30) = a9;
  LanguageModel::finalizeLM(a1, a2, a3, a4, a5, v34, a7, a8, v30, a11, a12);
}

BOOL MultiLanguageModel::maybeUpgradeToWordNgramTemplates(uint64_t a1, char **a2, DFile *a3, unsigned int a4, unsigned int a5, int a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 376);
  if (v8)
  {
    v28 = *(a1 + 376);
    if (a6)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3891, "lm/multilm", 132, "%s", a7, a8, &errStr_lm_multilm_E_TOPICLMPATHS_WITH_WORDNGRAMTEMPLATES);
    }

    if (*(a1 + 116))
    {
      v15 = 0;
      do
      {
        if (*(*(a1 + 136) + 4 * v15) == 1)
        {
          v16 = *(a1 + 368);
          if (*(v16 + 16 * v15 + 8) <= 1u)
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3901, "lm/multilm", 120, "%s", a7, a8, &errStr_lm_multilm_E_NO_LEGACY_PATH);
            v16 = *(a1 + 368);
          }

          LMForDirPathVerify = MultiLanguageModel::getLMForDirPathVerify(a1, "TemplateLMPath", (v16 + 16 * v15), a2, a3, 1);
          v18 = LMForDirPathVerify;
          v19 = 0;
          v20 = -1;
          while (*(a7 + 8) != v19)
          {
            v21 = *(*a7 + 8 * v19);
            v22 = *(v21 + 168);
            if (v22 == LMForDirPathVerify)
            {
              v20 = v19;
            }

            ++v19;
            if (v22 == LMForDirPathVerify && v21 != 0)
            {
              DgnString::DgnString(v30);
LABEL_22:
              v29[0] = 4;
              v29[1] = v20;
              SubDirExtension::appendToString(v29, v30);
              goto LABEL_23;
            }
          }

          v24 = MemChunkAlloc(0xB0uLL, 0);
          WordNgramTemplate::WordNgramTemplate(v24, *(a1 + 16), a4, a5, v18);
          v20 = *(a7 + 8);
          v25 = v20;
          if (v20 == *(a7 + 12))
          {
            DgnPrimArray<unsigned long long>::reallocElts(a7, 1, 1);
            v25 = *(a7 + 8);
          }

          *(*a7 + 8 * v25) = v24;
          *(a7 + 8) = v25 + 1;
          DgnString::DgnString(v30);
          if (v24)
          {
            goto LABEL_22;
          }
        }

        else
        {
          DgnString::DgnString(v30);
        }

LABEL_23:
        v26 = *(a1 + 328);
        if (v26 == *(a1 + 332))
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(a1 + 320, 1, 1);
          v26 = *(a1 + 328);
        }

        DgnString::DgnString((*(a1 + 320) + 16 * v26), v30);
        ++*(a1 + 328);
        DgnString::~DgnString(v30);
        ++v15;
      }

      while (v15 < *(a1 + 116));
    }

    DgnArray<DgnString>::releaseAll(a1 + 368);
    v8 = v28;
  }

  return v8 != 0;
}

void sub_262728784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void MultiLanguageModel::setWordNgramTemplates(uint64_t a1, uint64_t a2, char a3)
{
  if (*(a1 + 116))
  {
    v6 = 0;
    v7 = 0;
    while (*(*(a1 + 320) + v6 + 8) < 2u)
    {
      v8 = *(a1 + 344);
      if (v8 == *(a1 + 348))
      {
        DgnPrimArray<unsigned long long>::reallocElts(a1 + 336, 1, 1);
        v8 = *(a1 + 344);
      }

      *(*(a1 + 336) + 8 * v8) = 0;
      *(a1 + 344) = v8 + 1;
LABEL_36:
      ++v7;
      v6 += 16;
      if (v7 >= *(a1 + 116))
      {
        return;
      }
    }

    v30 = 0;
    DgnString::DgnString(&v28);
    v27 = 0xFFFFFFFF00000004;
    SubDirExtension::appendToString(&v27, &v28);
    DgnString::operator+=(&v28, "%u");
    if (v29)
    {
      v9 = v28;
    }

    else
    {
      v9 = &unk_26288BEF0;
    }

    v10 = fmtcheck(v9, "%u");
    v11 = *(a1 + 320) + v6;
    if (*(v11 + 8))
    {
      v12 = *v11;
    }

    else
    {
      v12 = &unk_26288BEF0;
    }

    if (sscanf(v12, v10, &v30, v26) != 1)
    {
      v15 = *(a1 + 320) + v6;
      if (*(v15 + 8))
      {
        v16 = *v15;
      }

      else
      {
        v16 = &unk_26288BEF0;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3977, "lm/multilm", 124, "%.500s", v13, v14, v16);
    }

    v17 = v30;
    if (*(a2 + 8) <= v30)
    {
      v18 = *(a1 + 320) + v6;
      if (*(v18 + 8))
      {
        v19 = *v18;
      }

      else
      {
        v19 = &unk_26288BEF0;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3980, "lm/multilm", 125, "%.500s", v13, v14, v19);
      v17 = v30;
    }

    v20 = *(*a2 + 8 * v17);
    v21 = *(*(a1 + 304) + 8 * v7);
    v22 = *(v21 + 13);
    if (a3)
    {
      if ((*(v21 + 13) & 1) == 0)
      {
LABEL_33:
        v25 = *(a1 + 344);
        if (v25 == *(a1 + 348))
        {
          DgnPrimArray<unsigned long long>::reallocElts(a1 + 336, 1, 1);
          v25 = *(a1 + 344);
        }

        *(*(a1 + 336) + 8 * v25) = v20;
        *(a1 + 344) = v25 + 1;
        DgnString::~DgnString(&v28);
        goto LABEL_36;
      }

      if (*(v20 + 12) == 16777212)
      {
        *(v21 + 13) = 0;
        goto LABEL_33;
      }
    }

    else if ((*(v21 + 13) & 1) == 0)
    {
      goto LABEL_33;
    }

    if (*(v20 + 12) == 16777212)
    {
      v23 = *(a1 + 320) + v6;
      if (*(v23 + 8))
      {
        v24 = *v23;
      }

      else
      {
        v24 = &unk_26288BEF0;
      }

      v26 = v24;
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3999, "lm/multilm", 44, "%u %.500s", v13, v14, v7);
    }

    goto LABEL_33;
  }
}

void sub_262728A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

MultiLanguageModel *MultiLanguageModel::getLMForDirPathVerify(char **this, const char *a2, const DgnString *a3, char **a4, DFile *a5, int a6)
{
  v53 = a2;
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  if (*(a3 + 2))
  {
    v11 = *a3;
  }

  else
  {
    v11 = &unk_26288BEF0;
  }

  DgnSplitStringIntoTokens(v11, "/", &v57, 0);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a5);
  DgnString::DgnString(&v54);
  DFile::makeSubFileName(CurrentSubDirComponents, &unk_26288BEF0, &v54);
  v15 = *v57;
  if (!*(v57 + 8))
  {
    v15 = &unk_26288BEF0;
  }

  if (*v15 == 46 && v15[1] == 46 && !v15[2])
  {
    this = a4;
    if (*(CurrentSubDirComponents + 8))
    {
      v16 = 0;
      v17 = v56;
      v18 = 4;
      do
      {
        v19 = *(*CurrentSubDirComponents + v18);
        if (v17 == HIDWORD(v56))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v55, 1, 1);
          v17 = v56;
        }

        *(v55 + 4 * v17) = v19;
        v17 = v56 + 1;
        LODWORD(v56) = v56 + 1;
        ++v16;
        v18 += 8;
      }

      while (v16 < *(CurrentSubDirComponents + 8));
      this = a4;
    }
  }

  if (v58)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = a6 ^ 1;
    v52 = v23;
    do
    {
      if (*(v57 + v20 + 8))
      {
        v24 = *(v57 + v20);
      }

      else
      {
        v24 = &unk_26288BEF0;
      }

      if (*v24 == 46 && v24[1] == 46 && !v24[2])
      {
        if ((v23 | v22))
        {
          if (*(a3 + 2))
          {
            v27 = *a3;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3805, "lm/multilm", 55, "%.500s %.500s %.500s", v13, v14, v53);
        }

        v28 = v56;
        if (!v56)
        {
          if (*(a3 + 2))
          {
            v29 = *a3;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3809, "lm/multilm", 56, "%.500s %.500s %.500s", v13, v14, v53);
          v28 = v56;
        }

        v30 = v28 - 1;
        LODWORD(v56) = v30;
        if (a4 && !v30)
        {
          v31 = *a4;
          v32 = **a4;
          {
            v33 = *v31;
            {
              if (*(a3 + 2))
              {
                v34 = *a3;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3816, "lm/multilm", 57, "%.500s %.500s %.500s", v13, v14, v53);
              v23 = v52;
            }

            else
            {
              v23 = v52;
            }
          }

          else
          {
            v23 = v52;
          }
        }
      }

      else
      {
        IndexForLMSubDirExtensionString = GetIndexForLMSubDirExtensionString(v24);
        v26 = v56;
        if (v56 == HIDWORD(v56))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v55, 1, 1);
          v26 = v56;
        }

        *(v55 + 4 * v26) = IndexForLMSubDirExtensionString;
        LODWORD(v56) = v56 + 1;
        v22 = 1;
      }

      ++v21;
      v20 += 16;
    }

    while (v21 < v58);
  }

  if (v56)
  {
    v35 = 0;
    do
    {
      v36 = *(v55 + 4 * v35);
      {
        v39 = *v37;
        v41 = v40;
        if (v40[112] == 1 && v36 != *(v40 + 140))
        {
          if (*(a3 + 2))
          {
            v42 = *a3;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3841, "lm/multilm", 58, "%.500s %.500s %.500s", v13, v14, v53);
        }

        if (v36 > *(v41 + 29) - 1)
        {
          if (*(a3 + 2))
          {
            v43 = *a3;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3845, "lm/multilm", 59, "%.500s %.500s %.500s", v13, v14, v53);
        }

        v44 = *(*(v41 + 17) + 4 * v36);
        if (v44)
        {
          v45 = v44 == 3;
        }

        else
        {
          v45 = 1;
        }

        if (!v45)
        {
          if (*(a3 + 2))
          {
            v46 = *a3;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3851, "lm/multilm", 60, "%.500s %.500s %.500s", v13, v14, v53);
        }

        v47 = (*(v41 + 5) + 8 * v36);
      }

      else
      {
        if (v36 || !this[29])
        {
          if (*(a3 + 2))
          {
            v48 = *a3;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3862, "lm/multilm", 61, "%.500s %.500s %.500s", v13, v14, v53);
        }

        v47 = (this + 29);
      }

      this = *v47;
      ++v35;
    }

    while (v35 < v56);
  }

  {
    if (*(a3 + 2))
    {
      v50 = *a3;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3869, "lm/multilm", 62, "%.500s %.500s %.500s", v13, v14, v53);
  }

  DgnString::~DgnString(&v54);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v55);
  DgnArray<DgnString>::releaseAll(&v57);
  return this;
}

void sub_262729148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  DgnString::~DgnString(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnArray<DgnString>::releaseAll(va2);
  _Unwind_Resume(a1);
}

uint64_t MultiLanguageModel::getLMWithLegacyPath(MultiLanguageModel *this, DgnString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(this + 112) & 1) == 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3746, "lm/multilm", 120, "%s", a7, a8, &errStr_lm_multilm_E_NO_LEGACY_PATH);
  }

  v10 = *(this + 140);
  if (*(a2 + 2) >= 2u)
  {
    DgnString::operator+=(a2, "/");
  }

  DgnString::DgnString(v15);
  v14[0] = 1;
  v14[1] = v10;
  SubDirExtension::appendToString(v14, a2);
  v11 = *(*(this + 5) + 8 * v10);
  v12 = (*(*v11 + 56))(v11, a2);
  DgnString::~DgnString(v15);
  return v12;
}

void sub_262729288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t MultiLanguageModel::canSaveAsText(MultiLanguageModel *this)
{
  v1 = *(this + 29);
  if (!v1)
  {
    return 1;
  }

  for (i = 0; i < v1; ++i)
  {
    v4 = *(*(this + 5) + 8 * i);
    if (v4)
    {
      result = (*(*v4 + 64))(v4);
      if (!result)
      {
        return result;
      }

      v1 = *(this + 29);
    }
  }

  return 1;
}

void MultiLanguageModel::saveUnsTable(uint64_t a1, void *a2, char *a3, DgnTextFileWriter *this, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned int a10)
{
  if (*(a1 + 116))
  {
    v16 = 0;
    do
    {
      DgnTextFileWriter::setLineFieldValue(this, a5, a3);
      DgnTextFileWriter::setLineFieldValue(this, a6, &unk_26288BEF0);
      DgnString::DgnString(&v21);
      v20[0] = 1;
      v20[1] = v16;
      SubDirExtension::appendToString(v20, &v21);
      if (v22)
      {
        v17 = v21;
      }

      else
      {
        v17 = &unk_26288BEF0;
      }

      DgnTextFileWriter::setLineFieldValue(this, a7, v17);
      DgnTextFileWriter::setLineFieldIntegerValue(this, a8, *(*a2 + 4 * v16));
      DgnTextFileWriter::setLineFieldRealValue(this, a9, 0.0);
      DgnTextFileWriter::setLineFieldValue(this, a10, &unk_26288BEF0);
      DgnTextFileWriter::writeNextLine(this);
      DgnString::~DgnString(&v21);
      ++v16;
    }

    while (v16 < *(a1 + 116));
  }
}

void sub_262729444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void MultiLanguageModel::saveIntTable(uint64_t a1, void *a2, char *a3, DgnTextFileWriter *this, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned int a10)
{
  if (*(a1 + 116))
  {
    v16 = 0;
    do
    {
      DgnTextFileWriter::setLineFieldValue(this, a5, a3);
      DgnTextFileWriter::setLineFieldValue(this, a6, &unk_26288BEF0);
      DgnString::DgnString(&v21);
      v20[0] = 1;
      v20[1] = v16;
      SubDirExtension::appendToString(v20, &v21);
      if (v22)
      {
        v17 = v21;
      }

      else
      {
        v17 = &unk_26288BEF0;
      }

      DgnTextFileWriter::setLineFieldValue(this, a7, v17);
      DgnTextFileWriter::setLineFieldIntegerValue(this, a8, *(*a2 + 4 * v16));
      DgnTextFileWriter::setLineFieldRealValue(this, a9, 0.0);
      DgnTextFileWriter::setLineFieldValue(this, a10, &unk_26288BEF0);
      DgnTextFileWriter::writeNextLine(this);
      DgnString::~DgnString(&v21);
      ++v16;
    }

    while (v16 < *(a1 + 116));
  }
}

void sub_262729584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void MultiLanguageModel::saveRealTable(uint64_t a1, void *a2, uint64_t a3, char *a4, DgnTextFileWriter *this, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned int a10, unsigned int a11)
{
  if (*(a1 + 116))
  {
    v16 = 0;
    do
    {
      DgnTextFileWriter::setLineFieldValue(this, a6, a4);
      if (*(a3 + 8))
      {
        v17 = *a3;
      }

      else
      {
        v17 = &unk_26288BEF0;
      }

      DgnTextFileWriter::setLineFieldValue(this, a7, v17);
      DgnString::DgnString(&v23);
      v22[0] = 1;
      v22[1] = v16;
      SubDirExtension::appendToString(v22, &v23);
      if (v24)
      {
        v18 = v23;
      }

      else
      {
        v18 = &unk_26288BEF0;
      }

      DgnTextFileWriter::setLineFieldValue(this, a8, v18);
      DgnTextFileWriter::setLineFieldIntegerValue(this, a9, 0);
      DgnTextFileWriter::setLineFieldRealValue(this, a10, *(*a2 + 8 * v16));
      DgnTextFileWriter::setLineFieldValue(this, a11, &unk_26288BEF0);
      DgnTextFileWriter::writeNextLine(this);
      DgnString::~DgnString(&v23);
      ++v16;
    }

    while (v16 < *(a1 + 116));
  }
}

void sub_2627296D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void MultiLanguageModel::saveStringTable(uint64_t a1, void *a2, char *a3, DgnTextFileWriter *this, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned int a10)
{
  if (*(a1 + 116))
  {
    v15 = 0;
    v16 = 0;
    do
    {
      DgnTextFileWriter::setLineFieldValue(this, a5, a3);
      DgnTextFileWriter::setLineFieldValue(this, a6, &unk_26288BEF0);
      DgnString::DgnString(&v24);
      v23[0] = 1;
      v23[1] = v16;
      SubDirExtension::appendToString(v23, &v24);
      if (v25)
      {
        v17 = v24;
      }

      else
      {
        v17 = &unk_26288BEF0;
      }

      DgnTextFileWriter::setLineFieldValue(this, a7, v17);
      DgnTextFileWriter::setLineFieldIntegerValue(this, a8, 0);
      DgnTextFileWriter::setLineFieldRealValue(this, a9, 0.0);
      v18 = *a2 + v15;
      if (*(v18 + 8))
      {
        v19 = *v18;
      }

      else
      {
        v19 = &unk_26288BEF0;
      }

      DgnTextFileWriter::setLineFieldValue(this, a10, v19);
      DgnTextFileWriter::writeNextLine(this);
      DgnString::~DgnString(&v24);
      ++v16;
      v15 += 16;
    }

    while (v16 < *(a1 + 116));
  }
}

void sub_262729828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void MultiLanguageModel::saveMultiText(MultiLanguageModel *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v71);
  DgnTextFileWriter::openDgnTextFileWriter(v71, a2, 0x29u, a3);
  v69 = 0;
  v70 = 0;
  DgnTextFile::legalDgnTextFileVersions(v71, sMLS_Versions, &v69, v6, v7, v8, v9, v10);
  DgnTextFileWriter::setFileType(v71, "MultiLanguageModelSpec", (v69 + 8 * (v70 - 1)));
  if (*(this + 112))
  {
    v11 = "Dispatch";
  }

  else if (*(this + 113))
  {
    v11 = "LogLinear";
  }

  else
  {
    v11 = "InterpolatedLinear";
  }

  DgnTextFileWriter::setHeaderField(v71, "MultiLMType", v11);
  DgnTextFileWriter::setHeaderFieldUnsigned(v71, "NumberOfSubDirectories", *(this + 29));
  if (*(this + 114) == 1)
  {
    v12 = *(this + 39);
    v13 = (*(this + 40) - v12);
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  DgnTextFileWriter::setHeaderFieldUnsigned(v71, "NumberOfFactoryWeightsNames", v12);
  DgnTextFileWriter::setHeaderFieldUnsigned(v71, "NumberOfClientWeightsNames", v13);
  if (*(this + 32) >= 2u)
  {
    DgnTextFileWriter::setHeaderField(v71, "RecentBufferLMPath", *(this + 15));
  }

  v67 = 0;
  v68 = 0;
  v65 = 0;
  v66 = 0;
  DgnString::DgnString(&v63, "TableName");
  v14 = v66;
  if (v66 == HIDWORD(v66))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v65, 1, 1);
    v14 = v66;
  }

  DgnString::DgnString((v65 + 16 * v14), &v63);
  LODWORD(v66) = v66 + 1;
  DgnString::~DgnString(&v63);
  v15 = v68;
  if (v68 == HIDWORD(v68))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v67, 1, 1);
    v15 = v68;
  }

  *(v67 + 4 * v15) = 0;
  LODWORD(v68) = v15 + 1;
  DgnString::DgnString(&v63, "WeightsName");
  v16 = v66;
  if (v66 == HIDWORD(v66))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v65, 1, 1);
    v16 = v66;
  }

  DgnString::DgnString((v65 + 16 * v16), &v63);
  LODWORD(v66) = v66 + 1;
  DgnString::~DgnString(&v63);
  v17 = v68;
  if (v68 == HIDWORD(v68))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v67, 1, 1);
    v17 = v68;
  }

  *(v67 + 4 * v17) = 0;
  LODWORD(v68) = v17 + 1;
  DgnString::DgnString(&v63, "SubDirectory");
  v18 = v66;
  if (v66 == HIDWORD(v66))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v65, 1, 1);
    v18 = v66;
  }

  DgnString::DgnString((v65 + 16 * v18), &v63);
  LODWORD(v66) = v66 + 1;
  DgnString::~DgnString(&v63);
  v19 = v68;
  if (v68 == HIDWORD(v68))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v67, 1, 1);
    v19 = v68;
  }

  *(v67 + 4 * v19) = 0;
  LODWORD(v68) = v19 + 1;
  DgnString::DgnString(&v63, "IntValue");
  v20 = v66;
  if (v66 == HIDWORD(v66))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v65, 1, 1);
    v20 = v66;
  }

  DgnString::DgnString((v65 + 16 * v20), &v63);
  LODWORD(v66) = v66 + 1;
  DgnString::~DgnString(&v63);
  v21 = v68;
  if (v68 == HIDWORD(v68))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v67, 1, 1);
    v21 = v68;
  }

  *(v67 + 4 * v21) = 1;
  LODWORD(v68) = v21 + 1;
  DgnString::DgnString(&v63, "RealValue");
  v22 = v66;
  if (v66 == HIDWORD(v66))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v65, 1, 1);
    v22 = v66;
  }

  DgnString::DgnString((v65 + 16 * v22), &v63);
  LODWORD(v66) = v66 + 1;
  DgnString::~DgnString(&v63);
  v23 = v68;
  if (v68 == HIDWORD(v68))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v67, 1, 1);
    v23 = v68;
  }

  *(v67 + 4 * v23) = 2;
  LODWORD(v68) = v23 + 1;
  DgnString::DgnString(&v63, "StrValue");
  v24 = v66;
  if (v66 == HIDWORD(v66))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v65, 1, 1);
    v24 = v66;
  }

  DgnString::DgnString((v65 + 16 * v24), &v63);
  LODWORD(v66) = v66 + 1;
  DgnString::~DgnString(&v63);
  v25 = v68;
  if (v68 == HIDWORD(v68))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v67, 1, 1);
    v25 = v68;
  }

  *(v67 + 4 * v25) = 0;
  LODWORD(v68) = v25 + 1;
  DgnTextFileWriter::setLineFieldFormat(v71, &v67, &v65);
  v26 = *(this + 29);
  v63 = 0;
  v64 = 0;
  if (v26)
  {
    v61 = 0;
    HIDWORD(v64) = realloc_array(0, &v61, 16 * v26, 0, 0, 1) >> 4;
    v63 = v61;
    v27 = v64;
    if (v64 > v26)
    {
      if (v64 > v26)
      {
        v28 = v64;
        v29 = 16 * v64 - 16;
        do
        {
          --v28;
          DgnString::~DgnString(&v63[v29]);
          v29 -= 16;
        }

        while (v28 > v26);
      }

      goto LABEL_45;
    }
  }

  else
  {
    v27 = 0;
  }

  v30 = v26 - v27;
  if (v26 > v27)
  {
    v31 = 16 * v27;
    do
    {
      DgnString::DgnString(&v63[v31]);
      v31 += 16;
      --v30;
    }

    while (v30);
  }

LABEL_45:
  LODWORD(v64) = v26;
  if (*(this + 29))
  {
    v32 = 0;
    v33 = 0;
    do
    {
      v34 = *(*(this + 17) + 4 * v33);
      if (v34 >= 5)
      {
        v35 = 0;
      }

      else
      {
        v35 = off_279B3E928[v34];
      }

      DgnString::operator=(&v63[v32], v35);
      ++v33;
      v32 += 16;
    }

    while (v33 < *(this + 29));
  }

  MultiLanguageModel::saveStringTable(this, &v63, "SlotType", v71, 0, 1u, 2u, 3u, 4u, 5u);
  if (*(this + 113) == 1)
  {
    MultiLanguageModel::saveStringTable(this, this + 64, "CorrectiveName", v71, 0, 1u, 2u, 3u, 4u, 5u);
  }

  if ((*(this + 112) & 1) == 0)
  {
    MultiLanguageModel::saveStringTable(this, this + 44, "TopicName", v71, 0, 1u, 2u, 3u, 4u, 5u);
    MultiLanguageModel::saveStringTable(this, this + 40, "TemplatePath", v71, 0, 1u, 2u, 3u, 4u, 5u);
  }

  if (*(this + 114) == 1)
  {
    DgnString::DgnString(&v61);
    MultiLanguageModel::saveRealTable(this, this + 50, &v61, "WeightFloor", v71, 0, 1u, 2u, 3u, 4u, 5u);
    MultiLanguageModel::saveRealTable(this, this + 52, &v61, "WeightCeiling", v71, 0, 1u, 2u, 3u, 4u, 5u);
    MultiLanguageModel::saveRealTable(this, this + 54, &v61, "PrefiltererFixedWeight", v71, 0, 1u, 2u, 3u, 4u, 5u);
    MultiLanguageModel::saveRealTable(this, this + 48, &v61, "CurrentWeight", v71, 0, 1u, 2u, 3u, 4u, 5u);
    MultiLanguageModel::saveRealTable(this, this + 56, &v61, "DefaultTopicWeight", v71, 0, 1u, 2u, 3u, 4u, 5u);
    DgnString::~DgnString(&v61);
    if (*(this + 114))
    {
      v36 = *(this + 44);
      if (v36)
      {
        v37 = 0;
        for (i = 0; i < v36; ++i)
        {
          v39 = *(this + 21) + v37;
          if (*(v39 + 8) >= 2u)
          {
            if (i >= *(this + 39))
            {
              v40 = "ClientWeight";
            }

            else
            {
              v40 = "FactoryWeight";
            }

            MultiLanguageModel::saveRealTable(this, (*(this + 23) + v37), v39, v40, v71, 0, 1u, 2u, 3u, 4u, 5u);
            v36 = *(this + 44);
          }

          v37 += 16;
        }
      }
    }
  }

  if (*(this + 113) == 1)
  {
    DgnString::DgnString(&v61);
    MultiLanguageModel::saveRealTable(this, this + 62, &v61, "LogLinearWeight", v71, 0, 1u, 2u, 3u, 4u, 5u);
    MultiLanguageModel::saveIntTable(this, this + 66, "LogLinearOffset", v71, 0, 1u, 2u, 3u, 4u, 5u);
    v41 = *(this + 29);
    v59 = 0;
    v60 = 0;
    if (v41)
    {
      v72 = 0;
      v42 = realloc_array(0, &v72, 4 * v41, 0, 0, 1);
      v43 = v72;
      v59 = v72;
      v44 = *(this + 29);
      LODWORD(v60) = v41;
      HIDWORD(v60) = v42 >> 2;
      if (v44)
      {
        v45 = 0;
        v46 = *(this + 68);
        do
        {
          v43[v45] = *(v46 + v45);
          ++v45;
        }

        while (v45 < *(this + 29));
      }
    }

    else
    {
      LODWORD(v60) = 0;
    }

    MultiLanguageModel::saveUnsTable(this, &v59, "IsActive", v71, 0, 1u, 2u, 3u, 4u, 5u);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v59);
    DgnString::~DgnString(&v61);
  }

  if (*(this + 112) == 1)
  {
    v47 = *(this + 29);
    v61 = 0;
    v62 = 0;
    if (v47)
    {
      v59 = 0;
      v48 = realloc_array(0, &v59, 4 * v47, 0, 0, 1);
      v60 = 0;
      v61 = v59;
      v49 = *(this + 29);
      LODWORD(v62) = v47;
      HIDWORD(v62) = v48 >> 2;
      v59 = 0;
      if (v49)
      {
        v72 = 0;
        v50 = realloc_array(0, &v72, 4 * v49, 0, 0, 1);
        v51 = v72;
        v59 = v72;
        v52 = *(this + 29);
        LODWORD(v60) = v49;
        HIDWORD(v60) = v50 >> 2;
        if (v52)
        {
          v53 = 0;
          v54 = *(this + 71);
          v55 = v61;
          v56 = *(this + 73);
          do
          {
            v57 = *(v54 + 4 * v53);
            if (v57 == 0xFFFFFF)
            {
              v57 = -1;
            }

            v55[v53] = v57;
            v58 = *(v56 + 4 * v53);
            if (v58 == 0xFFFFFF)
            {
              v58 = -1;
            }

            v51[v53++] = v58;
          }

          while (v53 < *(this + 29));
        }

        goto LABEL_86;
      }
    }

    else
    {
      v59 = 0;
      v60 = 0;
    }

    LODWORD(v60) = 0;
LABEL_86:
    MultiLanguageModel::saveIntTable(this, &v61, "MinWordId", v71, 0, 1u, 2u, 3u, 4u, 5u);
    MultiLanguageModel::saveIntTable(this, &v59, "MaxWordId", v71, 0, 1u, 2u, 3u, 4u, 5u);
    MultiLanguageModel::saveUnsTable(this, this + 75, "PrefiltererPerWordPenalty", v71, 0, 1u, 2u, 3u, 4u, 5u);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v59);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v61);
  }

  DgnArray<DgnString>::releaseAll(&v63);
  DgnArray<DgnString>::releaseAll(&v65);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v67);
  DgnIArray<Utterance *>::~DgnIArray(&v69);
  DgnTextFileWriter::~DgnTextFileWriter(v71);
}

void sub_26272A334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va5, a5);
  va_start(va4, a5);
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  va_copy(va3, va2);
  v12 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  va_copy(va4, va3);
  v15 = va_arg(va4, void);
  v17 = va_arg(va4, void);
  va_copy(va5, va4);
  v18 = va_arg(va5, void);
  v20 = va_arg(va5, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnArray<DgnString>::releaseAll(va1);
  DgnArray<DgnString>::releaseAll(va2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va3);
  DgnIArray<Utterance *>::~DgnIArray(va4);
  DgnTextFileWriter::~DgnTextFileWriter(va5);
  _Unwind_Resume(a1);
}

RecentBuffer *MultiLanguageModel::saveLM(RecentBuffer **this, DFile *a2, DFileChecksums *a3, uint64_t a4, DFileChecksums *a5)
{
  if (a4)
  {
    MultiLanguageModel::saveMultiText(this, a2, a5);
  }

  else
  {
    MultiLanguageModel::saveMultiBinary(this, a2, a3, a5);
  }

  if (*(this + 29))
  {
    v16 = 0;
    do
    {
      v20[0] = 1;
      v20[1] = v16;
      DFile::pushCurrentSubDirComponent(a2, v20, v10, v11, v12, v13, v14, v15);
      v17 = *(this[5] + v16);
      if (v17)
      {
        (*(*v17 + 72))(v17, a2, a3, a4, a5);
      }

      if ((this[14] & 1) == 0)
      {
        v18 = *(this[38] + v16);
        if (v18)
        {
          WordNgramBuildSpec::saveWordNgramBuildSpec(v18, a2, a3, a4, a5);
        }
      }

      DFile::popCurrentSubDirComponent(a2);
      ++v16;
    }

    while (v16 < *(this + 29));
  }

  result = this[1];
  if (result)
  {
    return RecentBuffer::saveRecentBuffer(result, a2, a3, a4, a5);
  }

  return result;
}

unsigned int *MultiLanguageModel::saveLMShared(unsigned int *result, uint64_t a2, uint64_t a3)
{
  v3 = result[29];
  if (v3)
  {
    v6 = result;
    for (i = 0; i < v3; ++i)
    {
      result = *(*(v6 + 5) + 8 * i);
      if (result)
      {
        v8 = *(*(v6 + 17) + 4 * i);
        if (v8 <= 3 && v8 != 1)
        {
          result = (*(*result + 80))(result, a2, a3);
          v3 = v6[29];
        }
      }
    }
  }

  return result;
}

unsigned int *MultiLanguageModel::reloadLMShared(unsigned int *result, uint64_t a2, uint64_t a3)
{
  v3 = result[29];
  if (v3)
  {
    v6 = result;
    for (i = 0; i < v3; ++i)
    {
      result = *(*(v6 + 5) + 8 * i);
      if (result)
      {
        v8 = *(*(v6 + 17) + 4 * i);
        if (v8 <= 3 && v8 != 1)
        {
          result = (*(*result + 88))(result, a2, a3);
          v3 = v6[29];
        }
      }
    }
  }

  return result;
}

RecentBuffer *MultiLanguageModel::saveVocAndSvc(uint64_t a1, DFile *a2, DFile *a3, DFileChecksums *a4, int a5, DFileChecksums *a6, int a7, int a8, int a9, int a10)
{
  MultiLanguageModel::saveMultiBinary(a1, a2, a4, a6);
  if (*(a1 + 116))
  {
    v21 = 0;
    do
    {
      v32 = 1;
      v33 = v21;
      DFile::pushCurrentSubDirComponent(a2, &v32, v15, v16, v17, v18, v19, v20);
      v32 = 1;
      v33 = v21;
      DFile::pushCurrentSubDirComponent(a3, &v32, v22, v23, v24, v25, v26, v27);
      v28 = *(*(a1 + 40) + 8 * v21);
      if (v28)
      {
        v29 = *v28;
        if (*(*(a1 + 136) + 4 * v21) == 1)
        {
          (*(v29 + 72))();
        }

        else
        {
          (*(v29 + 96))(v28);
        }
      }

      if ((*(a1 + 112) & 1) == 0)
      {
        v30 = *(*(a1 + 304) + 8 * v21);
        if (v30)
        {
          WordNgramBuildSpec::saveWordNgramBuildSpec(v30, a2, a4, 0, a6);
        }
      }

      DFile::popCurrentSubDirComponent(a2);
      DFile::popCurrentSubDirComponent(a3);
      ++v21;
    }

    while (v21 < *(a1 + 116));
  }

  result = *(a1 + 8);
  if (result)
  {
    return RecentBuffer::saveRecentBuffer(result, a2, a4, 0, a6);
  }

  return result;
}

uint64_t MultiLanguageModel::setLMScale(MultiLanguageModel *this, uint64_t a2)
{
  v4 = *(this + 29);
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *(*(this + 5) + 8 * i);
      if (v6)
      {
        (*(*v6 + 104))(v6, a2);
        v4 = *(this + 29);
      }
    }
  }

  *(this + 8) = a2;

  return CombineTable::initCombineTable(this + 704, a2);
}

BOOL MultiLanguageModel::recentBufferUsesWord(MultiLanguageModel *this, unsigned int a2)
{
  v2 = 1;
  if (a2 <= 0xFFFFF3 && (*(this + 112) & 1) != 0)
  {
    v3 = *(this + 29);
    if (v3)
    {
      v4 = 0;
      while (*(*(this + 71) + 4 * v4) > a2 || *(*(this + 73) + 4 * v4) < a2)
      {
        if (v3 == ++v4)
        {
          goto LABEL_8;
        }
      }

      v5 = *(this + 140);
    }

    else
    {
LABEL_8:
      v5 = *(this + 140);
      LODWORD(v4) = v5;
    }

    return v4 == v5;
  }

  return v2;
}

BOOL MultiLanguageModel::hasRecentBuffer(MultiLanguageModel *this)
{
  v2 = *(this + 29);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(this + 5) + 8 * i);
      if (v4)
      {
        if ((*(*v4 + 120))(v4))
        {
          return 1;
        }

        v2 = *(this + 29);
      }
    }
  }

  return LanguageModel::hasRecentBuffer(this);
}

uint64_t MultiLanguageModel::getRecentBufferLength(MultiLanguageModel *this)
{
  v2 = *(this + 29);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(*(this + 5) + 8 * v3);
      if (v5)
      {
        v6 = (*(*v5 + 128))(v5);
        if (v4 <= v6)
        {
          v4 = v6;
        }

        v2 = *(this + 29);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  else
  {
    v4 = 0;
  }

  LODWORD(result) = LanguageModel::getRecentBufferLength(this);
  if (v4 <= result)
  {
    return result;
  }

  else
  {
    return v4;
  }
}

WordLanguageModel ***MultiLanguageModel::addToRecent(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 116);
  if (v6)
  {
    for (i = 0; i < v6; ++i)
    {
      v8 = *(*(a1 + 40) + 8 * i);
      if (v8)
      {
        (*(*v8 + 136))(v8, a2, a3);
        v6 = *(a1 + 116);
      }
    }
  }

  return LanguageModel::addToRecent(a1, a2, a3);
}

void MultiLanguageModel::clearRecent(MultiLanguageModel *this)
{
  v2 = *(this + 29);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(this + 5) + 8 * i);
      if (v4)
      {
        (*(*v4 + 144))(v4);
        v2 = *(this + 29);
      }
    }
  }

  LanguageModel::clearRecent(this);
}

uint64_t MultiLanguageModel::setWeights(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 8);
  if (v10 != *(a1 + 116))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 4634, "lm/multilm", 3, "%d %d", a7, a8, *(a2 + 8));
    v10 = *(a2 + 8);
  }

  v34[0] = 0;
  v34[1] = 0;
  DgnPrimArray<double>::copyArraySlice(v34, a2, 0, v10);
  v13 = *(a1 + 116);
  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = 0;
  v15 = *(a1 + 114);
  v16 = v34[0];
  v17 = 8 * v13;
  v18 = 1;
  do
  {
    if (v15 && !*(*(a1 + 40) + v14))
    {
      *(v16 + v14) = 0;
    }

    v18 &= *(v16 + v14) == 0.0;
    v14 += 8;
  }

  while (v17 != v14);
  if (v18)
  {
LABEL_10:
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 4650, "lm/multilm", 45, "%s", v11, v12, &errStr_lm_multilm_E_ALL_WEIGHTS_ZERO);
  }

  if (*(a1 + 113) == 1)
  {
    v19 = *(a1 + 116);
    v20 = *(a1 + 508);
    LODWORD(v21) = v19;
    if (v19 > v20)
    {
      DgnPrimArray<unsigned long long>::reallocElts(a1 + 496, v19 - v20, 0);
      LODWORD(v21) = *(a1 + 116);
    }

    *(a1 + 504) = v19;
    if (v21)
    {
      v22 = v34[0];
      v23 = *(a1 + 496);
      v21 = v21;
      do
      {
        v24 = *v22++;
        *v23++ = v24;
        --v21;
      }

      while (v21);
    }
  }

  else
  {
    v32 = 0;
    v33 = 0;
    MultiLanguageModel::fitWeightsToFloorAndCeiling(a1, v34, &v32);
    if (v33)
    {
      DgnPrimArray<double>::copyArraySlice(a1 + 384, &v32, 0, v33);
    }

    else
    {
      MultiLanguageModel::failsafeFitWeightsToFloorAndCeiling(a1, v34, a1 + 384);
    }

    v25 = *(a1 + 116);
    if (v25)
    {
      for (i = 0; i < v25; ++i)
      {
        v27 = *(*(a1 + 384) + 8 * i);
        if (v27 == 0.0)
        {
          LOWORD(v28) = 2000;
        }

        else
        {
          v29 = DgnLog(v27);
          LODWORD(v30) = *(a1 + 32);
          v28 = (0.5 - v29 * v30);
          v25 = *(a1 + 116);
        }

        *(*(a1 + 464) + 2 * i) = v28;
      }
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(&v32);
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(v34);
}

void sub_26272AD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t MultiLanguageModel::fitWeightsToFloorAndCeiling(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = 0;
  v69 = 0;
  DgnPrimArray<double>::copyArraySlice(&v68, a2, 0, *(a2 + 8));
  v5 = *(a1 + 116);
  if (v5)
  {
    v6 = 0.0;
    v7 = v68;
    v8 = *(a1 + 116);
    do
    {
      v9 = *v7++;
      v6 = v6 + v9;
      --v8;
    }

    while (v8);
    v10 = v68;
    v11 = *(a1 + 116);
    v12 = 1.0 / v6;
    do
    {
      *v10 = v12 * *v10;
      ++v10;
      --v11;
    }

    while (v11);
    v66 = 0;
    v67 = 0;
    v64 = 0;
    v13 = realloc_array(0, &v64, 4 * v5, 0, 0, 1);
    v14 = v64;
    v66 = v64;
    v15 = *(a1 + 116);
    LODWORD(v67) = v5;
    HIDWORD(v67) = v13 >> 2;
    if (v15)
    {
      v16 = 0;
      do
      {
        v14[v16++] = 0;
      }

      while (v16 < *(a1 + 116));
    }
  }

  else
  {
    v66 = 0;
    v67 = 0;
  }

  v64 = 0;
  v65 = 0;
  DgnPrimArray<double>::copyArraySlice(&v64, &v68, 0, v69);
  v17 = 0;
  v63[0] = 0;
  v63[1] = 0;
  v18 = 1;
  v19 = 0xFFFFFFFFLL;
  v20 = 1.0;
  do
  {
    v21 = v17;
    DgnPrimArray<double>::copyArraySlice(v63, &v64, 0, v65);
    v22 = *(a1 + 116);
    if (!v22)
    {
      v26 = v20;
      goto LABEL_49;
    }

    v23 = 0;
    v24 = 0.0;
    v25 = 1.79769313e308;
    v26 = v20;
    v27 = 0.0;
    v28 = 0.0;
    v29 = v19;
    do
    {
      v30 = v68[v23];
      if (v30 == 0.0)
      {
        goto LABEL_15;
      }

      v32 = *(*(a1 + 400) + 8 * v23);
      if (v20 * v30 >= v32 || v19 == v23)
      {
        v32 = *(*(a1 + 416) + 8 * v23);
        if (v20 * v30 <= v32 || v19 == v23)
        {
          v27 = v27 + v30;
LABEL_15:
          v31 = v25;
          goto LABEL_16;
        }

        v24 = v24 + v32;
        if (v30 <= 0.0)
        {
          goto LABEL_15;
        }

        v31 = -(v32 - v20 * v30);
        if (v31 >= v25)
        {
          goto LABEL_15;
        }

        if (v32 <= 0.0 || (v66[v23] & 0x10) != 0)
        {
          goto LABEL_15;
        }

        v18 = 0;
        v29 = v23;
      }

      else
      {
        v28 = v28 + v32;
        if (v30 <= 0.0)
        {
          goto LABEL_15;
        }

        v31 = v32 + -v20 * v30;
        if (v31 >= v25 || (v66[v23] & 1) != 0)
        {
          goto LABEL_15;
        }

        v29 = v23;
        v18 = 1;
      }

      v26 = v32 / v30;
LABEL_16:
      ++v23;
      v25 = v31;
    }

    while (v22 != v23);
    if (v27 > 0.0 && v28 + v24 <= 1.0)
    {
      v26 = (1.0 - v28 - v24) / v27;
      v19 = 0xFFFFFFFFLL;
      goto LABEL_54;
    }

    v19 = v29;
LABEL_49:
    if (v20 == v26)
    {
LABEL_80:
      *(a3 + 8) = 0;
      goto LABEL_93;
    }

    if (v18)
    {
      v37 = 1;
    }

    else
    {
      v37 = 16;
    }

    v66[v19] |= v37;
LABEL_54:
    v38 = fabs((v26 - v20) / v20);
    v39 = 1.79769313e308;
    if (v26 == 0.0)
    {
      v39 = 0.0;
    }

    if (v20 == 0.0)
    {
      v38 = v39;
    }

    v40 = *(a1 + 116);
    if (v40)
    {
      v41 = 0;
      v42 = v68;
      v43 = v64;
      v44 = v63[0];
      do
      {
        v45 = *(v42 + v41 * 8);
        if (v45 == 0.0)
        {
          v43[v41] = 0;
        }

        else
        {
          if (v19 == v41)
          {
            if (v18)
            {
              v46 = *(a1 + 400);
            }

            else
            {
              v46 = *(a1 + 416);
            }

            v43[v19] = *(v46 + 8 * v19);
          }

          else
          {
            v47 = *(*(a1 + 400) + v41 * 8);
            v48 = *(*(a1 + 416) + v41 * 8);
            v49 = v26 * v45;
            if (v48 <= v49)
            {
              if (v47 <= v48)
              {
                v47 = *(*(a1 + 416) + v41 * 8);
              }
            }

            else if (v47 <= v49)
            {
              v47 = v49;
            }

            *&v43[v41] = v47;
          }

          v50 = *(v44 + v41 * 8);
          if (v50 > 0.0)
          {
            v51 = fabs((*&v43[v41] - v50) / v50);
            if (v38 <= v51)
            {
              v38 = v51;
            }
          }
        }

        ++v41;
      }

      while (v40 != v41);
    }

    if (v38 <= 0.0001)
    {
      break;
    }

    v17 = v21 + 1;
    v20 = v26;
  }

  while (v21 < 0x3E8);
  if (v21 > 0x3E7)
  {
    goto LABEL_80;
  }

  if (v40)
  {
    v52 = 0.0;
    v53 = v64;
    v54 = v40;
    do
    {
      v55 = *v53++;
      v52 = v52 + v55;
      --v54;
    }

    while (v54);
    v56 = v64;
    v57 = v40;
    v58 = 1.0 / v52;
    do
    {
      *v56 = v58 * *v56;
      ++v56;
      --v57;
    }

    while (v57);
    v59 = 0;
    v60 = 8 * v40;
    do
    {
      if (*(*(a1 + 40) + v59))
      {
        v61 = *(v64 + v59);
        if (v61 != 0.0 && (v61 + 0.0001 < *(*(a1 + 400) + v59) || v61 + -0.0001 > *(*(a1 + 416) + v59)))
        {
          goto LABEL_80;
        }
      }

      v59 += 8;
    }

    while (v60 != v59);
  }

  DgnPrimArray<double>::copyArraySlice(a3, &v64, 0, v65);
LABEL_93:
  DgnPrimArray<unsigned int>::~DgnPrimArray(v63);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v64);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v66);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v68);
}

void sub_26272B250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a11);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a13);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a15);
  _Unwind_Resume(a1);
}

uint64_t MultiLanguageModel::failsafeFitWeightsToFloorAndCeiling(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a1 + 116);
  v22 = 0;
  v23 = 0;
  if (v4)
  {
    v24 = 0;
    v7 = realloc_array(0, &v24, 8 * v4, 0, 0, 1);
    v8 = v24;
    v22 = v24;
    v9 = *(a1 + 116);
    LODWORD(v23) = v4;
    HIDWORD(v23) = v7 >> 3;
    if (v9)
    {
      v10 = 0;
      v11 = *a2;
      v12 = 8 * v9;
      v13 = 0.0;
      do
      {
        v14 = *(v11 + v10);
        if (v14 == 0.0)
        {
          *&v8[v10] = 0;
        }

        else
        {
          v15 = *(*(a1 + 400) + v10);
          if (v14 >= v15 && (v15 = *(*(a1 + 416) + v10), v14 <= v15))
          {
            *&v8[v10] = v14;
            v15 = v14;
          }

          else
          {
            *&v8[v10] = v15;
          }

          v13 = v13 + v15;
        }

        v10 += 8;
      }

      while (v12 != v10);
      for (i = 0; v12 != i; i += 8)
      {
        v17 = *&v8[i];
        if (v17 != 0.0)
        {
          if (v13 <= 1.0)
          {
            v18 = *(*(a1 + 416) + i) - v17;
            if (v18 <= 0.0)
            {
              continue;
            }

            v19 = 1.0 - v13;
            if (1.0 - v13 <= v18)
            {
              v18 = 1.0 - v13;
            }

            v20 = v17 + v18;
          }

          else
          {
            v18 = v17 - *(*(a1 + 400) + i);
            if (v18 <= 0.0)
            {
              continue;
            }

            v19 = v13 + -1.0;
            if (v13 + -1.0 <= v18)
            {
              v18 = v13 + -1.0;
            }

            v20 = v17 - v18;
          }

          *&v8[i] = v20;
          if (v20 == 0.0)
          {
            *&v8[i] = 0x3EE4F8B588E368F1;
            v18 = v18 + -0.00001;
          }

          if (v18 == v19)
          {
            break;
          }

          if (v13 > 1.0)
          {
            v18 = -v18;
          }

          v13 = v13 + v18;
        }
      }
    }
  }

  else
  {
    LODWORD(v23) = 0;
  }

  DgnPrimArray<double>::copyArraySlice(a3, &v22, 0, v4);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v22);
}

void sub_26272B450(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t MultiLanguageModel::getNumDispatchComponents(MultiLanguageModel *this)
{
  if (*(this + 112) == 1)
  {
    return *(this + 29);
  }

  else
  {
    return 0;
  }
}

void MultiLanguageModel::setDispatchPrefiltererPerWordPenalty(MultiLanguageModel *this, unsigned int a2, unsigned int a3)
{
  if ((*(*this + 544))(this) <= a2)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 4720, "lm/multilm", 133, "%u %u", v6, v7, a2);
  }

  if (a3 >= 0x3E9)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 4722, "lm/multilm", 134, "%u", v6, v7, a3);
  }

  *(*(this + 75) + 4 * a2) = a3;
}

uint64_t MultiLanguageModel::getDispatchPrefiltererPerWordPenalty(MultiLanguageModel *this, unsigned int a2)
{
  if ((*(*this + 544))(this) <= a2)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 4734, "lm/multilm", 133, "%u %u", v4, v5, a2);
  }

  return *(*(this + 75) + 4 * a2);
}

uint64_t MultiLanguageModel::getNumInterpolatedLms(MultiLanguageModel *this)
{
  v1 = *(this + 114);
  v2 = *(this + 29);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v5 = *(*(this + 5) + 8 * i);
      if (v5)
      {
        v1 = (*(*v5 + 568))(v5) + v1;
        v2 = *(this + 29);
      }
    }
  }

  return v1;
}

uint64_t MultiLanguageModel::setInterpolatedLmWeights(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*(a1 + 114) == 1)
  {
    if (!*a3)
    {
      (*(*a1 + 496))(a1, a2);
      return 1;
    }

    --*a3;
  }

  v6 = *(a1 + 116);
  if (v6)
  {
    for (i = 0; i < v6; ++i)
    {
      v8 = *(*(a1 + 40) + 8 * i);
      if (v8)
      {
        if ((*(*v8 + 576))(v8, a2, a3))
        {
          return 1;
        }

        v6 = *(a1 + 116);
      }
    }
  }

  return 0;
}

uint64_t MultiLanguageModel::getInterpolatedLmWeights(MultiLanguageModel *this, unsigned int *a2)
{
  if (*(this + 114) == 1)
  {
    if (!*a2)
    {
      return this + 384;
    }

    --*a2;
  }

  v4 = *(this + 29);
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *(*(this + 5) + 8 * i);
      if (v6)
      {
        result = (*(*v6 + 584))(v6, a2);
        if (result)
        {
          return result;
        }

        v4 = *(this + 29);
      }
    }
  }

  return 0;
}

uint64_t MultiLanguageModel::getActiveTopicLmSlots(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 616))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 4833, "lm/multilm", 20, "%.500s", a7, a8, "getActiveTopicLmSlots");
  }

  v11 = *(a1 + 104);
  DgnPrimArray<unsigned char>::DgnPrimArray(v20, *(a1 + 104));
  v19 = 0;
  MultiLanguageModel::getActiveTopicLmSlotsInternal(a1, v20, &v19);
  DgnPrimArray<unsigned char>::DgnPrimArray(v18, v11);
  if (v11)
  {
    bzero(v18[0], v11);
  }

  if (*(a2 + 8))
  {
    v14 = 0;
    do
    {
      v15 = *(*a2 + 4 * v14) - 1;
      if (v15 >= v11)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 4854, "lm/multilm", 95, "%u", v12, v13, *(*a2 + 4 * v14));
      }

      v16 = v18[0];
      if (*(v18[0] + v15) == 1)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 4857, "lm/multilm", 96, "%u", v12, v13, *(*a2 + 4 * v14));
        v16 = v18[0];
      }

      v16[v15] = 1;
      *(*a3 + v14++) = *(v20[0] + v15);
    }

    while (v14 < *(a2 + 8));
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v18);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v20);
}

void sub_26272B9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t MultiLanguageModel::getActiveTopicLmSlotsInternal(uint64_t result, uint64_t a2, _DWORD *a3)
{
  if (*(result + 116))
  {
    v5 = result;
    for (i = 0; i < *(v5 + 116); ++i)
    {
      v7 = *a3;
      if (v7 >= *(a2 + 8))
      {
        return result;
      }

      v8 = *(*(v5 + 136) + 4 * i);
      if (v8 == 1)
      {
        v9 = *(*(v5 + 40) + 8 * i);
        if (v9)
        {
          if (*(v5 + 113))
          {
            v9 = 496;
          }

          else
          {
            v9 = 384;
          }

          LOBYTE(v9) = *(*(v5 + v9) + 8 * i) != 0.0;
        }

        *(*a2 + v7) = v9;
        *a3 = v7 + 1;
      }

      else if (*(v5 + 112) == 1)
      {
        if (v8 == 3 && i == *(v5 + 560))
        {
LABEL_18:
          v11 = *(*(v5 + 40) + 8 * i);
          if (v11)
          {
            v12 = **v11;
          }

          result = MultiLanguageModel::getActiveTopicLmSlotsInternal(v11, a2, a3);
        }
      }

      else if (v8 == 3)
      {
        goto LABEL_18;
      }
    }
  }

  return result;
}

uint64_t MultiLanguageModel::setTopicLmSlotWeights(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 616))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 4903, "lm/multilm", 20, "%.500s", a7, a8, "setTopicLmSlotWeights");
  }

  v11 = *(a1 + 104);
  v18 = 0;
  v19 = 0;
  v17 = a1;
  if (v11)
  {
    __b = 0;
    v12 = realloc_array(0, &__b, 8 * v11, 0, 0, 1);
    v13 = __b;
    v18 = __b;
    LODWORD(v19) = v11;
    HIDWORD(v19) = v12 >> 3;
    memset_pattern16(__b, &unk_26288BEE0, 8 * v11);
  }

  else
  {
    v13 = 0;
    LODWORD(v19) = 0;
  }

  if (*(a2 + 8))
  {
    v14 = 0;
    do
    {
      v15 = *(*a2 + 4 * v14) - 1;
      if (v15 >= v11)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 4919, "lm/multilm", 95, "%u", a7, a8, *(*a2 + 4 * v14));
        v13 = v18;
      }

      if (v13[v15] != -2.0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 4922, "lm/multilm", 96, "%u", a7, a8, *(*a2 + 4 * v14));
        v13 = v18;
      }

      v13[v15] = *(*a3 + 8 * v14++);
    }

    while (v14 < *(a2 + 8));
  }

  LODWORD(__b) = 0;
  MultiLanguageModel::setTopicLmSlotWeightsInternal(v17, &v18, &__b);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v18);
}

void sub_26272BCEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t MultiLanguageModel::setTopicLmSlotWeightsInternal(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v31[0] = 0;
  v31[1] = 0;
  if (*(a1 + 114) == 1)
  {
    DgnPrimArray<double>::copyArraySlice(v31, (a1 + 384), 0, *(a1 + 392));
  }

  DgnPrimArray<unsigned char>::DgnPrimArray(v30, *(a1 + 116));
  v6 = *(a1 + 116);
  if (!v6)
  {
    if ((*(a1 + 114) & 1) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  bzero(v30[0], *(a1 + 116));
  v9 = *a3;
  if (*a3 < *(a2 + 8))
  {
    v10 = 0;
    v11 = 0.0;
    while (1)
    {
      v12 = *(*(a1 + 136) + 4 * v10);
      if (v12 == 1)
      {
        if (*(a1 + 114) == 1)
        {
          v13 = *(*a2 + 8 * v9);
          if (v13 != -2.0)
          {
            if (v13 == -1.0)
            {
              v13 = *(*(a1 + 448) + 8 * v10);
            }

            if (!*(*(a1 + 40) + 8 * v10))
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 4970, "lm/multilm", 80, "%u", v7, v8, v9);
            }

            if (v13 == 0.0 || (v14 = *(*(a1 + 400) + 8 * v10), v13 >= v14))
            {
              v14 = v13;
              if (v13 > *(*(a1 + 416) + 8 * v10))
              {
                v14 = *(*(a1 + 416) + 8 * v10);
              }
            }

            v11 = v11 + v14;
            *(v31[0] + 8 * v10) = v14;
            *(v30[0] + v10) = 1;
            v9 = *a3;
          }
        }

        *a3 = v9 + 1;
      }

      else if (*(a1 + 112) == 1)
      {
        if (v12 == 3 && v10 == *(a1 + 560))
        {
LABEL_26:
          v16 = *(*(a1 + 40) + 8 * v10);
          if (v16)
          {
            v17 = **v16;
          }

          MultiLanguageModel::setTopicLmSlotWeightsInternal(v16, a2, a3);
        }
      }

      else if (v12 == 3)
      {
        goto LABEL_26;
      }

      ++v10;
      v18 = *(a1 + 116);
      if (v10 < v18)
      {
        v9 = *a3;
        if (*a3 < *(a2 + 8))
        {
          continue;
        }
      }

      goto LABEL_35;
    }
  }

  v11 = 0.0;
  LODWORD(v18) = v6;
LABEL_35:
  if (*(a1 + 114))
  {
    if (v18)
    {
      v19 = 0;
      v20 = v18;
      v21 = 0.0;
      do
      {
        if ((*(v30[0] + v19) & 1) == 0)
        {
          v21 = v21 + *(*(a1 + 384) + 8 * v19);
        }

        ++v19;
      }

      while (v18 != v19);
      v22 = 0.9999 / v11;
      v23 = 1.0;
      if (v11 <= 0.9999)
      {
        v22 = 1.0;
      }

      if (v21 != 0.0)
      {
        v24 = 1.0 - v11;
        if (v11 > 0.9999)
        {
          v24 = 0.0001;
        }

        v23 = v24 / v21;
      }

      v25 = v30[0];
      v26 = v31[0];
      do
      {
        if (*v25++)
        {
          v28 = v22;
        }

        else
        {
          v28 = v23;
        }

        *v26 = *v26 * v28;
        ++v26;
        --v20;
      }

      while (v20);
    }

LABEL_52:
    (*(*a1 + 496))(a1, v31);
  }

LABEL_53:
  DgnPrimArray<unsigned int>::~DgnPrimArray(v30);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v31);
}

void sub_26272C040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  _Unwind_Resume(a1);
}

uint64_t MultiLanguageModel::getWeightsData(uint64_t result, void *a2, _DWORD *a3, _DWORD *a4)
{
  *a2 = result + 168;
  *a3 = *(result + 156);
  *a4 = *(result + 160);
  return result;
}

uint64_t MultiLanguageModel::cleanupWeightsData(uint64_t this)
{
  if (*(this + 152) == 1)
  {
    v1 = this;
    if ((*(this + 114) & 1) == 0 && *(this + 28))
    {
      DgnArray<DgnString>::releaseAll(this + 168);
      *(v1 + 156) = 0;
      *(v1 + 160) = 0;
      *(v1 + 240) = *(v1 + 236);
      this = *(v1 + 248);
      if (this)
      {
        this = MemChunkFree(this, 0);
        *(v1 + 248) = 0;
      }

      *(v1 + 256) = 0;
      *(v1 + 264) = 0;
      *(v1 + 272) = 0;
    }

    v2 = *(v1 + 116);
    if (v2)
    {
      for (i = 0; i < v2; ++i)
      {
        if ((*(v1 + 112) != 1 || i == *(v1 + 560)) && *(*(v1 + 136) + 4 * i) == 3)
        {
          v4 = *(*(v1 + 40) + 8 * i);
          this = (*(*v4 + 624))(v4);
          v2 = *(v1 + 116);
        }
      }
    }
  }

  return this;
}

uint64_t MultiLanguageModel::makeNewWeights(MultiLanguageModel *this, const char **a2)
{
  if ((*(this + 114) & 1) != 0 || !*(this + 7))
  {
    if (*(a2 + 2))
    {
      v5 = *a2;
    }

    else
    {
      v5 = &unk_26288BEF0;
    }

    if ((isValidName(v5) & 1) == 0)
    {
      if (*(a2 + 2))
      {
        v8 = *a2;
      }

      else
      {
        v8 = &unk_26288BEF0;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 5137, "lm/multilm", 81, "%.500s", v6, v7, v8);
    }

    NextId = IdMgr<unsigned int>::getNextId(this + 58);
    if (NextId >= 0xFFFF)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 5141, "lm/multilm", 83, "%s", v9, v10, &errStr_lm_multilm_E_TOO_MANY_WEIGHTSIDS);
    }

    v11 = *(this + 40);
    if (v11 - *(this + 39) == 1000)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 5146, "lm/multilm", 84, "%u", v9, v10, 232);
      v11 = *(this + 40);
    }

    *(this + 40) = v11 + 1;
    if (DgnArray<DgnString>::find(this + 42, a2) != -1)
    {
      if (*(a2 + 2))
      {
        v14 = *a2;
      }

      else
      {
        v14 = &unk_26288BEF0;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 5153, "lm/multilm", 82, "%.500s %u", v12, v13, v14);
    }

    v15 = (NextId - 1);
    v16 = *(this + 44);
    if (NextId > v16)
    {
      v17 = *(this + 45);
      if (NextId > v17)
      {
        DgnArray<DgnPrimArray<double>>::reallocElts(this + 168, NextId - v17, 0);
        v16 = *(this + 44);
      }

      v18 = NextId - v16;
      if (NextId >= v16)
      {
        if (NextId > v16)
        {
          v21 = 16 * v16;
          do
          {
            DgnString::DgnString((*(this + 21) + v21));
            v21 += 16;
            --v18;
          }

          while (v18);
        }
      }

      else if (NextId < v16)
      {
        v19 = v16;
        v20 = 16 * v16 - 16;
        do
        {
          --v19;
          DgnString::~DgnString((*(this + 21) + v20));
          v20 -= 16;
        }

        while (v19 > NextId);
      }

      *(this + 44) = NextId;
    }

    DgnString::operator=((*(this + 21) + 16 * v15), a2);
    if (*(this + 114) == 1)
    {
      v28 = *(this + 48);
      if (NextId > v28)
      {
        v29 = *(this + 49);
        if (NextId > v29)
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(this + 184, NextId - v29, 0);
          v28 = *(this + 48);
        }

        if (v28 <= NextId)
        {
          if (v28 < NextId)
          {
            v32 = NextId - v28;
            v33 = 16 * v28;
            do
            {
              v34 = (*(this + 23) + v33);
              *v34 = 0;
              v34[1] = 0;
              v33 += 16;
              --v32;
            }

            while (v32);
          }
        }

        else if (v28 > NextId)
        {
          v30 = v28;
          v31 = 16 * v28 - 16;
          do
          {
            --v30;
            DgnPrimArray<unsigned int>::~DgnPrimArray(*(this + 23) + v31);
            v31 -= 16;
          }

          while (v30 > NextId);
        }

        *(this + 48) = NextId;
        v35 = *(this + 53);
        if (NextId > v35)
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(this + 200, NextId - v35, 0);
        }

        v36 = *(this + 52);
        if (v36 <= NextId)
        {
          if (v36 < NextId)
          {
            v39 = NextId - v36;
            v40 = 16 * v36;
            do
            {
              v41 = (*(this + 25) + v40);
              *v41 = 0;
              v41[1] = 0;
              v40 += 16;
              --v39;
            }

            while (v39);
          }
        }

        else if (v36 > NextId)
        {
          v37 = v36;
          v38 = 16 * v36 - 16;
          do
          {
            --v37;
            DgnPrimArray<unsigned int>::~DgnPrimArray(*(this + 25) + v38);
            v38 -= 16;
          }

          while (v37 > NextId);
        }

        *(this + 52) = NextId;
        v42 = *(this + 57);
        if (NextId > v42)
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(this + 216, NextId - v42, 0);
        }

        v43 = *(this + 56);
        if (v43 <= NextId)
        {
          if (v43 < NextId)
          {
            v46 = NextId - v43;
            v47 = 16 * v43;
            do
            {
              v48 = (*(this + 27) + v47);
              *v48 = 0;
              v48[1] = 0;
              v47 += 16;
              --v46;
            }

            while (v46);
          }
        }

        else if (v43 > NextId)
        {
          v44 = v43;
          v45 = 16 * v43 - 16;
          do
          {
            --v44;
            DgnPrimArray<unsigned int>::~DgnPrimArray(*(this + 27) + v45);
            v45 -= 16;
          }

          while (v44 > NextId);
        }

        *(this + 56) = NextId;
      }

      v49 = *(this + 23) + 16 * v15;
      v50 = *(this + 29);
      v51 = *(v49 + 12);
      v52 = v50;
      if (v50 > v51)
      {
        DgnPrimArray<unsigned long long>::reallocElts(*(this + 23) + 16 * v15, v50 - v51, 0);
        v52 = *(this + 29);
      }

      *(v49 + 8) = v50;
      if (v52)
      {
        v53 = 0;
        v54 = *(this + 5);
        v55 = *(*(this + 23) + 16 * v15);
        v56 = 8 * v52;
        do
        {
          if (*(v54 + v53))
          {
            v57 = *(*(this + 48) + v53);
          }

          else
          {
            v57 = -1.0;
          }

          *(v55 + v53) = v57;
          v53 += 8;
        }

        while (v56 != v53);
      }

      MultiLanguageModel::adjustNamedWeightsSet(this, NextId - 1, v22, v23, v24, v25, v26, v27);
    }
  }

  else
  {
    NextId = 0xFFFFLL;
  }

  if (*(this + 29))
  {
    v58 = 0;
    do
    {
      if ((*(this + 112) != 1 || v58 == *(this + 140)) && *(*(this + 17) + 4 * v58) == 3)
      {
        v59 = *(*(this + 5) + 8 * v58);
        if ((*(*v59 + 608))(v59))
        {
          v60 = *(*(this + 5) + 8 * v58);
          v61 = (*(*v60 + 632))(v60, a2);
          if (NextId == 0xFFFF)
          {
            NextId = v61;
          }

          else
          {
            NextId = NextId;
          }
        }
      }

      ++v58;
    }

    while (v58 < *(this + 29));
  }

  return NextId;
}

uint64_t MultiLanguageModel::adjustNamedWeightsSet(MultiLanguageModel *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(this + 29);
  v39 = 0;
  v40 = 0;
  if (!v10)
  {
    LODWORD(v40) = 0;
    goto LABEL_22;
  }

  v37 = 0;
  v11 = realloc_array(0, &v37, 8 * v10, 0, 0, 1);
  v12 = v37;
  v39 = v37;
  v13 = *(this + 29);
  LODWORD(v40) = v10;
  HIDWORD(v40) = v11 >> 3;
  if (!v13)
  {
LABEL_22:
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 5489, "lm/multilm", 45, "%s", a7, a8, &errStr_lm_multilm_E_ALL_WEIGHTS_ZERO);
    goto LABEL_23;
  }

  v14 = 0;
  v15 = *(this + 5);
  v16 = 8 * v13;
  v17 = 0.0;
  v18 = 0.0;
  do
  {
    if (*(v15 + v14))
    {
      v19 = *(*(*(this + 23) + 16 * a2) + v14);
      if (v19 == -1.0)
      {
        v20 = *(*(this + 56) + v14);
        v12[v14 / 8] = v20;
        v18 = v18 + v20;
      }

      else
      {
        v12[v14 / 8] = v19;
        v17 = v17 + v19;
      }
    }

    else
    {
      v12[v14 / 8] = 0.0;
    }

    v14 += 8;
  }

  while (v16 != v14);
  if (v17 != 0.0 && v18 != 0.0)
  {
    v21 = 0;
    v22 = *(this + 5);
    v23 = (1.0 - v18) / v17;
    do
    {
      if (*(v22 + v21) && *(*(*(this + 23) + 16 * a2) + v21) != -1.0)
      {
        v12[v21 / 8] = v23 * v12[v21 / 8];
      }

      v21 += 8;
    }

    while (v16 != v21);
  }

  while (*v12 == 0.0)
  {
    ++v12;
    if (!--v13)
    {
      goto LABEL_22;
    }
  }

LABEL_23:
  v37 = 0;
  v38 = 0;
  MultiLanguageModel::fitWeightsToFloorAndCeiling(this, &v39, &v37);
  v24 = *(this + 25);
  if (v38)
  {
    DgnPrimArray<double>::copyArraySlice(v24 + 16 * a2, &v37, 0, v38);
  }

  else
  {
    MultiLanguageModel::failsafeFitWeightsToFloorAndCeiling(this, &v39, v24 + 16 * a2);
  }

  v25 = a2;
  v26 = *(this + 27) + 16 * a2;
  v27 = *(this + 29);
  v28 = *(v26 + 12);
  v29 = v27;
  if (v27 > v28)
  {
    DgnPrimArray<short>::reallocElts(v26, v27 - v28, 0);
    v29 = *(this + 29);
  }

  *(v26 + 8) = v27;
  if (v29)
  {
    v30 = 0;
    v31 = 16 * v25;
    do
    {
      v32 = *(*(*(this + 25) + v31) + 8 * v30);
      if (v32 == 0.0)
      {
        LOWORD(v33) = 2000;
      }

      else
      {
        v34 = DgnLog(v32);
        LODWORD(v35) = *(this + 8);
        v33 = (0.5 - v34 * v35);
        v29 = *(this + 29);
      }

      *(*(*(this + 27) + v31) + 2 * v30++) = v33;
    }

    while (v30 < v29);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v37);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v39);
}

void sub_26272C940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void MultiLanguageModel::deleteWeights(MultiLanguageModel *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(this + 114) & 1) != 0 || !*(this + 7))
  {
    v10 = (a2 - 1);
    if (v10 >= *(this + 44) || *(*(this + 21) + 16 * v10 + 8) <= 1u)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 5250, "lm/multilm", 85, "%u", a7, a8, a2 - 1);
    }

    if (v10 < *(this + 39))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 5252, "lm/multilm", 86, "%s", a7, a8, &errStr_lm_multilm_E_CANT_DELETE_FACTORY_WEIGHTS);
    }

    v11 = *(this + 21) + 16 * v10;
    if (*v11)
    {
      MemChunkFree(*v11, 0);
      *v11 = 0;
    }

    *(v11 + 8) = 0;
    --*(this + 40);
    IdMgr<unsigned int>::recycleId(this + 58, a2);
    if (*(this + 114) == 1)
    {
      v12 = *(this + 23) + 16 * v10;
      if (*v12)
      {
        MemChunkFree(*v12, 0);
        *v12 = 0;
      }

      *(v12 + 8) = 0;
      v13 = *(this + 25) + 16 * v10;
      if (*v13)
      {
        MemChunkFree(*v13, 0);
        *v13 = 0;
      }

      *(v13 + 8) = 0;
      v14 = *(this + 27) + 16 * v10;
      if (*v14)
      {
        MemChunkFree(*v14, 0);
        *v14 = 0;
      }

      *(v14 + 8) = 0;
    }
  }

  if (*(this + 29))
  {
    v15 = 0;
    do
    {
      if ((*(this + 112) != 1 || v15 == *(this + 140)) && *(*(this + 17) + 4 * v15) == 3)
      {
        v16 = *(*(this + 5) + 8 * v15);
        if ((*(*v16 + 608))(v16))
        {
          v17 = *(*(this + 5) + 8 * v15);
          (*(*v17 + 640))(v17, a2);
        }
      }

      ++v15;
    }

    while (v15 < *(this + 29));
  }
}

void MultiLanguageModel::applyWeights(MultiLanguageModel *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(this + 114) & 1) != 0 || !*(this + 7))
  {
    v10 = a2 - 1;
    if ((a2 - 1) >= *(this + 44) || *(*(this + 21) + 16 * v10 + 8) <= 1u)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 5294, "lm/multilm", 85, "%u", a7, a8, a2 - 1);
      if ((*(this + 114) & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    if (*(this + 114))
    {
LABEL_6:
      v11 = *(this + 25) + 16 * v10;
      DgnPrimArray<double>::copyArraySlice(this + 384, v11, 0, *(v11 + 8));
      v12 = *(this + 27) + 16 * v10;
      DgnPrimArray<unsigned short>::copyArraySlice(this + 464, v12, 0, *(v12 + 8));
    }
  }

LABEL_7:
  if (*(this + 29))
  {
    v13 = 0;
    do
    {
      if ((*(this + 112) != 1 || v13 == *(this + 140)) && *(*(this + 17) + 4 * v13) == 3)
      {
        v14 = *(*(this + 5) + 8 * v13);
        if ((*(*v14 + 608))(v14))
        {
          v15 = *(*(this + 5) + 8 * v13);
          (*(*v15 + 648))(v15, a2);
        }
      }

      ++v13;
    }

    while (v13 < *(this + 29));
  }
}

uint64_t MultiLanguageModel::getValidWeightsIds(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 8) = 0;
    v4 = *(a1 + 160);
    v5 = *(a2 + 12);
    if (v4 > v5)
    {
      DgnPrimArray<unsigned int>::reallocElts(a2, v4 - v5, 0);
    }

    v6 = *(a1 + 176);
    if (v6)
    {
      v7 = 0;
      v8 = 8;
      do
      {
        if (*(*(a1 + 168) + v8) >= 2u)
        {
          v9 = *(a2 + 8);
          if (v9 == *(a2 + 12))
          {
            DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
            v9 = *(a2 + 8);
          }

          *(*a2 + 4 * v9) = v7 + 1;
          ++*(a2 + 8);
          v6 = *(a1 + 176);
        }

        ++v7;
        v8 += 16;
      }

      while (v7 < v6);
    }
  }

  return *(a1 + 160);
}

uint64_t MultiLanguageModel::getWeightsId(MultiLanguageModel *this, const DgnString *a2)
{
  v2 = DgnArray<DgnString>::find(this + 42, a2);
  if (v2 == -1)
  {
    return 0xFFFFLL;
  }

  else
  {
    return (v2 + 1);
  }
}

uint64_t MultiLanguageModel::getWeightsName(MultiLanguageModel *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (a2 - 1);
  if (v9 >= *(this + 44) || (v10 = *(this + 21), *(v10 + 16 * v9 + 8) <= 1u))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 5388, "lm/multilm", 85, "%u", a7, a8, a2 - 1);
    v10 = *(this + 21);
  }

  return v10 + 16 * v9;
}

BOOL MultiLanguageModel::isFactoryWeights(MultiLanguageModel *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2 - 1;
  if ((a2 - 1) >= *(this + 44) || *(*(this + 21) + 16 * v9 + 8) <= 1u)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 5404, "lm/multilm", 85, "%u", a7, a8, a2 - 1);
  }

  return v9 < *(this + 39);
}

void MultiLanguageModel::checkWeightsId(MultiLanguageModel *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a2 - 1) >= *(this + 44) || *(*(this + 21) + 16 * (a2 - 1) + 8) <= 1u)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 5420, "lm/multilm", 85, "%u", a7, a8, a2 - 1);
  }
}

uint64_t MultiLanguageModel::languageScore(MultiLanguageModel *this, uint64_t a2, uint64_t a3, LMStats *a4, LMContextData *a5, LMScoreDetails *a6, uint64_t a7, unsigned int a8, BOOL *a9)
{
  v9 = a7;
  ++*(a4 + 1);
  v52 = a3;
  if (a7 && a6 && *(this + 1))
  {
    v15 = *(a6 + 2);
    LMScoreDetails::addDetails(a6, 0, 6, 1);
LABEL_6:
    v16 = *(a6 + 2);
    LMScoreDetails::addDetails(a6, 0, 5, 0);
    v17 = 0;
    a3 = v52;
    goto LABEL_8;
  }

  v15 = 0;
  if (a6)
  {
    goto LABEL_6;
  }

  v16 = 0;
  v17 = 1;
LABEL_8:
  if (*(this + 112) != 1)
  {
    if (*(this + 113) == 1)
    {
      v48 = v17;
      v21 = v15;
      *a9 = 0;
      v22 = *(this + 29);
      if (v22)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0.0;
        do
        {
          v26 = *(*(this + 5) + 8 * v23);
          if (v26 && *(*(this + 68) + v23) == 1)
          {
            v27 = *(*(this + 17) + 4 * v23) == 2 && a8 == 0;
            if (!v27 && *(*(this + 62) + 8 * v23) != 0.0)
            {
              v54 = 0;
              v28 = (*(*v26 + 504))(v26, a2, a3, a4, *(*(a5 + 2) + 8 * v23), a6, v9, a8, &v54);
              if (v54 == 1)
              {
                v25 = v25 + v28 * *(*(this + 62) + 8 * v23) + *(*(this + 66) + 4 * v23);
                *a9 = 1;
              }

              ++v24;
              v22 = *(this + 29);
              a3 = v52;
            }
          }

          ++v23;
        }

        while (v23 < v22);
      }

      else
      {
        v24 = 0;
        v25 = 0.0;
      }

      v44 = (40 * *(this + 8));
      if (v25 <= v44)
      {
        v44 = v25;
      }

      if (v44 < 0.0)
      {
        v44 = 0.0;
      }

      v42 = (v44 + 0.5);
      v15 = v21;
    }

    else
    {
      v50 = v9;
      v51 = a5;
      if (a3 == 0xFFFF)
      {
        v29 = (this + 384);
        v30 = this + 464;
      }

      else
      {
        v29 = (*(this + 25) + 16 * (a3 - 1));
        v30 = (*(this + 27) + 16 * (a3 - 1));
      }

      v49 = v30;
      *a9 = 0;
      v31 = *(this + 29);
      if (!v31)
      {
        v24 = 0;
        LOWORD(v42) = 0;
        LODWORD(v9) = v50;
        if (v17)
        {
          return LanguageModel::languageScoreFinish(this, a2, v42, a6, v9, v15, a5);
        }

        goto LABEL_63;
      }

      v47 = v15;
      v48 = v17;
      v46 = v16;
      v32 = 0;
      v33 = 0;
      v24 = 0;
      v34 = 0;
      v35 = 1;
      do
      {
        v36 = *(*(this + 5) + 8 * v32);
        if (v36 && *(*v29 + 8 * v32) != 0.0)
        {
          v37 = *(*(v51 + 2) + 8 * v32);
          v38 = (*(*v36 + 504))(v36, a2);
          LOWORD(v39) = *(*v49 + 2 * v32) + v38;
          if (v34)
          {
            v39 = v39;
            v40 = v39 - v33;
            if (v40 < 0)
            {
              v41 = v33 - v39;
            }

            else
            {
              v39 = v33;
              v41 = v40;
            }

            if (v41 < *(this + 178))
            {
              v39 -= *(*(this + 88) + 4 * v41);
            }

            v39 &= ~(v39 >> 31);
          }

          ++v24;
          v35 &= v38 == 0;
          v31 = *(this + 29);
          v34 = 1;
          v33 = v39;
        }

        ++v32;
      }

      while (v32 < v31);
      if (v35)
      {
        LOWORD(v42) = 0;
      }

      else
      {
        LOWORD(v42) = v33;
      }

      a5 = v51;
      LODWORD(v9) = v50;
      v15 = v47;
      v16 = v46;
    }

    if (v48)
    {
      return LanguageModel::languageScoreFinish(this, a2, v42, a6, v9, v15, a5);
    }

LABEL_63:
    *(*a6 + 2 * v16) = v42;
    *(*(a6 + 4) + 4 * v16) = v24;
    return LanguageModel::languageScoreFinish(this, a2, v42, a6, v9, v15, a5);
  }

  v18 = *(this + 29);
  if (v18)
  {
    v19 = 0;
    while (*(*(this + 71) + 4 * v19) > a2 || *(*(this + 73) + 4 * v19) < a2)
    {
      if (v18 == ++v19)
      {
        goto LABEL_14;
      }
    }

    v20 = *(this + 140);
  }

  else
  {
LABEL_14:
    v20 = *(this + 140);
    LODWORD(v19) = v20;
  }

  if (v19 == v20)
  {
    a3 = a3;
  }

  else
  {
    a3 = 0xFFFFLL;
  }

  v43 = *(*(this + 5) + 8 * v19);
  LOWORD(v42) = (*(*v43 + 504))(v43, a2, a3, a4, *(*(a5 + 2) + 8 * v19), a6, v9, a8, a9);
  v24 = 0;
  if ((v17 & 1) == 0)
  {
    goto LABEL_63;
  }

  return LanguageModel::languageScoreFinish(this, a2, v42, a6, v9, v15, a5);
}

unint64_t LMScoreDetails::addDetails(unint64_t result, __int16 a2, int a3, int a4)
{
  v7 = result;
  v8 = *(result + 8);
  if (v8 == *(result + 12))
  {
    result = DgnPrimArray<short>::reallocElts(result, 1, 1);
    v8 = *(v7 + 8);
  }

  *(*v7 + 2 * v8) = a2;
  *(v7 + 8) = v8 + 1;
  v9 = *(v7 + 24);
  if (v9 == *(v7 + 28))
  {
    result = DgnPrimArray<unsigned int>::reallocElts(v7 + 16, 1, 1);
    v9 = *(v7 + 24);
  }

  *(*(v7 + 16) + 4 * v9) = a3;
  *(v7 + 24) = v9 + 1;
  v10 = *(v7 + 40);
  if (v10 == *(v7 + 44))
  {
    result = DgnPrimArray<unsigned int>::reallocElts(v7 + 32, 1, 1);
    v10 = *(v7 + 40);
  }

  *(*(v7 + 32) + 4 * v10) = a4;
  ++*(v7 + 40);
  return result;
}

uint64_t MultiLanguageModel::languageScoreForSearch(MultiLanguageModel *this, uint64_t a2, uint64_t a3, LMStats *a4, LMContextData *a5, uint64_t a6, BOOL *a7)
{
  v11 = a3;
  ++*(a4 + 1);
  if (*(this + 112) == 1)
  {
    v14 = *(this + 29);
    if (v14)
    {
      v15 = 0;
      while (*(*(this + 71) + 4 * v15) > a2 || *(*(this + 73) + 4 * v15) < a2)
      {
        if (v14 == ++v15)
        {
          goto LABEL_7;
        }
      }

      v16 = *(this + 140);
    }

    else
    {
LABEL_7:
      v16 = *(this + 140);
      LODWORD(v15) = v16;
    }

    if (v15 == v16)
    {
      a3 = a3;
    }

    else
    {
      a3 = 0xFFFFLL;
    }

    v37 = *(*(this + 5) + 8 * v15);
    LOWORD(v24) = (*(*v37 + 512))(v37, a2, a3, a4, *(*(a5 + 2) + 8 * v15), a6, a7);
  }

  else if (*(this + 113) == 1)
  {
    *a7 = 0;
    v17 = *(this + 29);
    v18 = 0.0;
    if (v17)
    {
      for (i = 0; i < v17; ++i)
      {
        v20 = *(*(this + 5) + 8 * i);
        if (v20 && *(*(this + 68) + i) == 1)
        {
          v21 = *(*(this + 17) + 4 * i) == 2 && a6 == 0;
          if (!v21 && *(*(this + 62) + 8 * i) != 0.0)
          {
            v43 = 0;
            v22 = (*(*v20 + 512))(v20, a2, v11, a4, *(*(a5 + 2) + 8 * i), a6, &v43);
            if (v43 == 1)
            {
              v18 = v18 + v22 * *(*(this + 62) + 8 * i) + *(*(this + 66) + 4 * i);
              *a7 = 1;
            }

            v17 = *(this + 29);
          }
        }
      }
    }

    v23 = (40 * *(this + 8));
    if (v18 <= v23)
    {
      v23 = v18;
    }

    if (v23 < 0.0)
    {
      v23 = 0.0;
    }

    v24 = (v23 + 0.5);
  }

  else
  {
    v41 = a3;
    if (a3 == 0xFFFF)
    {
      v25 = (this + 384);
      v26 = this + 464;
    }

    else
    {
      v25 = (*(this + 25) + 16 * (a3 - 1));
      v26 = (*(this + 27) + 16 * (a3 - 1));
    }

    v40 = v26;
    *a7 = 0;
    v27 = *(this + 29);
    if (v27)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 1;
      do
      {
        v32 = *(*(this + 5) + 8 * v28);
        if (v32 && *(*v25 + 8 * v28) != 0.0)
        {
          v42 = 0;
          v33 = (*(*v32 + 512))(v32, a2, v41, a4, *(*(a5 + 2) + 8 * v28), a6, &v42);
          if (v42 == 1)
          {
            *a7 = 1;
          }

          LOWORD(v34) = *(*v40 + 2 * v28) + v33;
          if (v30)
          {
            v34 = v34;
            v35 = v34 - v29;
            if (v35 < 0)
            {
              v36 = v29 - v34;
            }

            else
            {
              v34 = v29;
              v36 = v35;
            }

            if (v36 < *(this + 178))
            {
              v34 -= *(*(this + 88) + 4 * v36);
            }

            v34 &= ~(v34 >> 31);
          }

          v31 &= v33 == 0;
          v27 = *(this + 29);
          v30 = 1;
          v29 = v34;
        }

        ++v28;
      }

      while (v28 < v27);
      if (v31)
      {
        LOWORD(v24) = 0;
      }

      else
      {
        LOWORD(v24) = v29;
      }
    }

    else
    {
      LOWORD(v24) = 0;
    }
  }

  return LanguageModel::languageScoreFinishForSearch(this, a2, v24, a5);
}

uint64_t MultiLanguageModel::languageScoreForPrefilterer(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = 40 * *(a1 + 32);
  if (*(a1 + 112) == 1)
  {
    v7 = *(a2 + 8);
    v8 = *(a3 + 12);
    if (v7 > v8)
    {
      DgnPrimArray<short>::reallocElts(a3, v7 - v8, 0);
      v7 = *(a2 + 8);
    }

    __b = 0;
    v118 = 0;
    if (v7)
    {
      LODWORD(v9) = 0;
      do
      {
        v10 = *(*a2 + 4 * v9);
        v11 = *(a1 + 116);
        if (v11)
        {
          v12 = 0;
          while (*(*(a1 + 568) + 4 * v12) > v10 || *(*(a1 + 584) + 4 * v12) < v10)
          {
            if (v11 == ++v12)
            {
              goto LABEL_11;
            }
          }

          v13 = v12;
        }

        else
        {
LABEL_11:
          v13 = *(a1 + 560);
        }

        v14 = v118;
        if (v118 == HIDWORD(v118))
        {
          DgnPrimArray<unsigned int>::reallocElts(&__b, 1, 1);
          v14 = v118;
        }

        v15 = __b;
        *(__b + v14) = v10;
        v16 = v118 + 1;
        LODWORD(v118) = v118 + 1;
        v9 = (v9 + 1);
        if (v9 < *(a2 + 8))
        {
          do
          {
            v17 = *(*a2 + 4 * v9);
            v18 = *(a1 + 116);
            if (v18)
            {
              v19 = 0;
              while (*(*(a1 + 568) + 4 * v19) > v17 || *(*(a1 + 584) + 4 * v19) < v17)
              {
                if (v18 == ++v19)
                {
                  goto LABEL_21;
                }
              }

              v20 = v19;
            }

            else
            {
LABEL_21:
              v20 = *(a1 + 560);
            }

            if (v20 != v13)
            {
              break;
            }

            if (v16 == HIDWORD(v118))
            {
              DgnPrimArray<unsigned int>::reallocElts(&__b, 1, 1);
              v16 = v118;
              v15 = __b;
            }

            v15[v16] = v17;
            v16 = v118 + 1;
            LODWORD(v118) = v118 + 1;
            ++v9;
          }

          while (v9 < *(a2 + 8));
        }

        v115 = 0;
        v116 = 0;
        (*(**(*(a1 + 40) + 8 * v13) + 520))();
        v21 = v116;
        if (*(*(a1 + 600) + 4 * v13))
        {
          if (v116)
          {
            v22 = 0;
            v23 = *(a3 + 8);
            do
            {
              if (*(*(a1 + 600) + 4 * v13) + *(v115 + v22) >= v6)
              {
                v24 = v6;
              }

              else
              {
                v24 = *(*(a1 + 600) + 4 * v13) + *(v115 + v22);
              }

              if (v23 == *(a3 + 12))
              {
                DgnPrimArray<short>::reallocElts(a3, 1, 1);
                v23 = *(a3 + 8);
                v21 = v116;
              }

              *(*a3 + 2 * v23++) = v24;
              *(a3 + 8) = v23;
              ++v22;
            }

            while (v22 < v21);
          }
        }

        else
        {
          v25 = *(a3 + 8);
          v26 = *(a3 + 12);
          if (v25 + v116 > v26)
          {
            DgnPrimArray<short>::reallocElts(a3, v25 + v116 - v26, 1);
            v21 = v116;
            v25 = *(a3 + 8);
          }

          if (v21)
          {
            v27 = v115;
            v28 = *a3;
            v29 = v21;
            v30 = v25;
            do
            {
              v31 = *v27++;
              v28[v30++] = v31;
              --v29;
            }

            while (v29);
          }

          *(a3 + 8) = v21 + v25;
        }

        LODWORD(v118) = 0;
        DgnPrimArray<unsigned int>::~DgnPrimArray(&v115);
      }

      while (v9 < *(a2 + 8));
    }

    return DgnPrimArray<unsigned int>::~DgnPrimArray(&__b);
  }

  if (*(a1 + 113) == 1)
  {
    v33 = *(a2 + 8);
    __b = 0;
    v118 = 0;
    if (v33)
    {
      v115 = 0;
      v34 = realloc_array(0, &v115, 8 * v33, 0, 0, 1) >> 3;
      __b = v115;
      v35 = *(a2 + 8);
      v118 = __PAIR64__(v34, v33);
      if (v35)
      {
        bzero(v115, 8 * v35);
      }
    }

    else
    {
      LODWORD(v35) = 0;
      LODWORD(v118) = 0;
    }

    v76 = *(a1 + 116);
    if (v76)
    {
      for (i = 0; i < v76; ++i)
      {
        v78 = *(a1 + 40);
        if (*(v78 + 8 * i) && *(*(a1 + 544) + i) == 1 && *(*(a1 + 136) + 4 * i) != 2 && *(*(a1 + 496) + 8 * i) != 0.0)
        {
          v115 = 0;
          v116 = 0;
          (*(**(v78 + 8 * i) + 520))(*(v78 + 8 * i), a2, &v115);
          v79 = *(a2 + 8);
          if (v79)
          {
            v80 = v115;
            v81 = *(a1 + 496);
            v82 = __b;
            v83 = *(*(a1 + 528) + 4 * i);
            do
            {
              v84 = *v80++;
              *v82 = *v82 + v84 * *(v81 + 8 * i) + v83;
              ++v82;
              --v79;
            }

            while (v79);
          }

          DgnPrimArray<unsigned int>::~DgnPrimArray(&v115);
          v76 = *(a1 + 116);
        }
      }

      LODWORD(v35) = *(a2 + 8);
    }

    v85 = *(a3 + 12);
    LODWORD(v86) = v35;
    if (v35 > v85)
    {
      DgnPrimArray<short>::reallocElts(a3, v35 - v85, 0);
      LODWORD(v86) = *(a2 + 8);
    }

    *(a3 + 8) = v35;
    if (v86)
    {
      v87 = __b;
      v86 = v86;
      v88 = *a3;
      do
      {
        v89 = *v87;
        LOWORD(v90) = v6;
        if (*v87 <= v6)
        {
          if (v89 >= 0.0)
          {
            v90 = (v89 + 0.5);
          }

          else
          {
            LOWORD(v90) = 0;
          }
        }

        *v88++ = v90;
        ++v87;
        --v86;
      }

      while (v86);
    }

    return DgnPrimArray<unsigned int>::~DgnPrimArray(&__b);
  }

  v36 = *(a2 + 8);
  v37 = *(a3 + 12);
  v38 = v36;
  v39 = v36 >= v37;
  v40 = v36 - v37;
  if (v40 != 0 && v39)
  {
    DgnPrimArray<short>::reallocElts(a3, v40, 0);
    v38 = *(a2 + 8);
  }

  *(a3 + 8) = v36;
  DgnPrimArray<unsigned char>::DgnPrimArray(&__b, v38);
  v115 = 0;
  v116 = 0;
  v41 = *(a2 + 8);
  if (v41)
  {
    memset(__b, 1, v41);
  }

  if (!*(a1 + 116))
  {
    goto LABEL_124;
  }

  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0.0;
  do
  {
    v46 = *(a1 + 40);
    if (*(v46 + 8 * v42))
    {
      v47 = *(*(a1 + 432) + 8 * v42);
      if (v47 == -1.0)
      {
        v113 = 0;
        v114 = 0;
        (*(**(v46 + 8 * v42) + 520))(*(v46 + 8 * v42), a2, &v113);
        v63 = v114;
        if (v43)
        {
          if (v114)
          {
            v64 = v115;
            v65 = v113;
            do
            {
              v67 = *v65++;
              v66 = v67;
              if (*v64 < v67)
              {
                v66 = *v64;
              }

              *v64++ = v66;
              --v63;
            }

            while (v63);
          }
        }

        else
        {
          DgnPrimArray<unsigned short>::copyArraySlice(&v115, &v113, 0, v114);
        }

        DgnPrimArray<unsigned int>::~DgnPrimArray(&v113);
        v43 = 1;
      }

      else if (v47 != 0.0)
      {
        v113 = 0;
        v114 = 0;
        (*(**(v46 + 8 * v42) + 520))(*(v46 + 8 * v42), a2, &v113);
        v48 = v118;
        if (v118)
        {
          v49 = __b;
          v50 = v113;
          do
          {
            v51 = *v49 && *v50 == 0;
            *v49++ = v51;
            ++v50;
            --v48;
          }

          while (v48);
        }

        v52 = v114;
        if (v44)
        {
          if (v114)
          {
            v53 = *a3;
            v54 = v113;
            v55 = *(a1 + 480);
            v56 = *(a1 + 712);
            do
            {
              v57 = *v53;
              v58 = *v54++;
              v59 = (*(v55 + 2 * v42) + v58);
              v61 = v59 - v57;
              v60 = v59 - v57 < 0;
              if (v59 < v57)
              {
                v57 = v59;
              }

              if (v60)
              {
                v62 = -v61;
              }

              else
              {
                v62 = v61;
              }

              if (v62 < v56)
              {
                v57 -= *(*(a1 + 704) + 4 * v62);
              }

              *v53++ = v57 & ~(v57 >> 31);
              --v52;
            }

            while (v52);
          }
        }

        else if (v114)
        {
          v68 = v113;
          v69 = *(a1 + 480);
          v70 = *a3;
          do
          {
            v71 = *v68++;
            *v70++ = *(v69 + 2 * v42) + v71;
            --v52;
          }

          while (v52);
        }

        v45 = v45 + v47;
        DgnPrimArray<unsigned int>::~DgnPrimArray(&v113);
        v44 = 1;
      }
    }

    ++v42;
  }

  while (v42 < *(a1 + 116));
  if ((v44 & 1) == 0)
  {
    if (v43)
    {
      DgnPrimArray<unsigned short>::copyArraySlice(a3, &v115, 0, v116);
      goto LABEL_152;
    }

LABEL_124:
    v91 = *(a3 + 8);
    if (v91)
    {
      bzero(*a3, 2 * v91);
    }

    goto LABEL_152;
  }

  if (v45 <= 1.0)
  {
    v72 = v45;
  }

  else
  {
    v72 = 1.0;
  }

  v73 = fabs(v72 + -1.0);
  if (v73 < 0.0001)
  {
    v92 = *(a3 + 8);
    goto LABEL_145;
  }

  if ((v43 & 1) == 0)
  {
    if (v72 == 0.0)
    {
      LOWORD(v93) = 2000;
    }

    else
    {
      v106 = DgnLog(v72);
      LODWORD(v107) = *(a1 + 32);
      v93 = (0.5 - v106 * v107);
    }

    v92 = *(a3 + 8);
    if (!v92)
    {
      goto LABEL_152;
    }

    v108 = *a3;
    v109 = *(a3 + 8);
    do
    {
      *v108++ -= v93;
      --v109;
    }

    while (v109);
LABEL_145:
    if (v92)
    {
      v110 = 0;
      v111 = __b;
      v112 = v115;
      do
      {
        if (v111[v110] == 1 && (((v73 >= 0.0001) & v43) == 0 || !v112[v110]))
        {
          *(*a3 + 2 * v110) = 0;
        }

        ++v110;
      }

      while (v92 != v110);
    }

    goto LABEL_152;
  }

  v74 = 1.0 - v72;
  if (v74 == 0.0)
  {
    LOWORD(v75) = 2000;
  }

  else
  {
    v94 = DgnLog(v74);
    LODWORD(v95) = *(a1 + 32);
    v75 = (0.5 - v94 * v95);
  }

  v92 = *(a3 + 8);
  if (v92)
  {
    v96 = v115;
    v97 = *a3;
    v98 = *(a3 + 8);
    v99 = *(a1 + 712);
    do
    {
      v100 = *v96++;
      v101 = *v97;
      v102 = (v100 + v75);
      v104 = v102 - v101;
      v103 = v102 - v101 < 0;
      if (v102 >= v101)
      {
        v102 = *v97;
      }

      if (v103)
      {
        v105 = -v104;
      }

      else
      {
        v105 = v104;
      }

      if (v105 < v99)
      {
        v102 -= *(*(a1 + 704) + 4 * v105);
      }

      *v97++ = v102 & ~(v102 >> 31);
      --v98;
    }

    while (v98);
    goto LABEL_145;
  }

LABEL_152:
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v115);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&__b);
}

void sub_26272E15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  _Unwind_Resume(a1);
}

void *MultiLanguageModel::adaptLMFromTranscripts(void *result, uint64_t *a2, uint64_t *a3, void *a4, unsigned int a5, unsigned int a6)
{
  if (*(result + 152) != 1)
  {
    return result;
  }

  v8 = result;
  if (!*(result + 29))
  {
    if (*(result + 114) != 1)
    {
      return result;
    }

    v135 = 0;
    v136 = 0;
LABEL_53:
    v38 = 0;
    LODWORD(v37) = 0;
LABEL_54:
    if (v38 < v37)
    {
      v41 = v37 - v38;
      v42 = 2 * v38;
      do
      {
        v43 = &v135[v42];
        *v43 = 0;
        v43[1] = 0;
        v42 += 2;
        --v41;
      }

      while (v41);
    }

    goto LABEL_57;
  }

  v9 = 0;
  do
  {
    if (*(v8 + 112) == 1)
    {
      if (v9 == *(v8 + 560) && *(*(v8 + 136) + 4 * v9) == 3)
      {
        DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v128, *(a2 + 2));
        DgnArray<DgnPrimArray<unsigned int>>::DgnArray(&v125, *(a3 + 2));
        if (*(a2 + 2))
        {
          v10 = 0;
          do
          {
            v11 = v128[0] + 16 * v10;
            v12 = *a2;
            v13 = *(*a2 + 16 * v10 + 8);
            v14 = *(v11 + 3);
            if (v13 > v14)
            {
              DgnPrimArray<unsigned int>::reallocElts(v128[0] + 16 * v10, v13 - v14, 0);
              v12 = *a2;
            }

            *(v11 + 2) = v13;
            v15 = (v12 + 16 * v10);
            if (*(v15 + 2))
            {
              v16 = 0;
              v17 = *v15;
              v18 = *(v128[0] + 2 * v10);
              do
              {
                v19 = *(v17 + 4 * v16);
                if (v19 <= 0xFFFFF3)
                {
                  v20 = *(v8 + 116);
                  if (v20)
                  {
                    v21 = 0;
                    while (*(*(v8 + 568) + 4 * v21) > v19 || *(*(v8 + 584) + 4 * v21) < v19)
                    {
                      if (v20 == ++v21)
                      {
                        goto LABEL_19;
                      }
                    }

                    v22 = v21;
                  }

                  else
                  {
LABEL_19:
                    v22 = *(v8 + 560);
                  }

                  if (v9 != v22)
                  {
                    v19 = 0xFFFFFF;
                  }
                }

                *(v18 + 4 * v16++) = v19;
              }

              while (v16 < *(v15 + 2));
            }

            v23 = v125 + 16 * v10;
            v24 = *a3;
            v25 = *(*a3 + 16 * v10 + 8);
            v26 = *(v23 + 12);
            if (v25 > v26)
            {
              DgnPrimArray<unsigned int>::reallocElts(v125 + 16 * v10, v25 - v26, 0);
              v24 = *a3;
            }

            *(v23 + 8) = v25;
            v27 = (v24 + 16 * v10);
            if (*(v27 + 2))
            {
              v28 = 0;
              v29 = *v27;
              v30 = *(v125 + 16 * v10);
              do
              {
                v31 = *(v29 + 4 * v28);
                if (v31 <= 0xFFFFF3)
                {
                  v32 = *(v8 + 116);
                  if (v32)
                  {
                    v33 = 0;
                    while (*(*(v8 + 568) + 4 * v33) > v31 || *(*(v8 + 584) + 4 * v33) < v31)
                    {
                      if (v32 == ++v33)
                      {
                        goto LABEL_34;
                      }
                    }

                    v34 = v33;
                  }

                  else
                  {
LABEL_34:
                    v34 = *(v8 + 560);
                  }

                  if (v9 != v34)
                  {
                    v31 = 0xFFFFFF;
                  }
                }

                *(v30 + 4 * v28++) = v31;
              }

              while (v28 < *(v27 + 2));
            }

            ++v10;
          }

          while (v10 < *(a2 + 2));
        }

        v35 = *(*(v8 + 40) + 8 * v9);
        (*(*v35 + 536))(v35, v128, &v125, a4, a5, a6);
        DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v125);
        result = DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v128);
      }
    }

    else if (*(*(v8 + 136) + 4 * v9) == 3)
    {
      v36 = *(*(v8 + 40) + 8 * v9);
      result = (*(*v36 + 536))(v36, a2, a3, a4, a5, a6);
    }

    ++v9;
    v37 = *(v8 + 116);
  }

  while (v9 < v37);
  if ((*(v8 + 114) & 1) == 0)
  {
    return result;
  }

  v135 = 0;
  v136 = 0;
  if (!v37)
  {
    goto LABEL_53;
  }

  v128[0] = 0;
  HIDWORD(v136) = realloc_array(0, v128, 16 * v37, 0, 0, 1) >> 4;
  v135 = v128[0];
  v38 = v136;
  if (v136 <= v37)
  {
    goto LABEL_54;
  }

  if (v136 > v37)
  {
    v39 = v136;
    v40 = 16 * v136 - 16;
    do
    {
      DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v135 + v40);
      --v39;
      v40 -= 16;
    }

    while (v39 > v37);
  }

LABEL_57:
  LODWORD(v136) = v37;
  v134 = 0u;
  v133 = 0u;
  v132 = 0u;
  v131 = 0u;
  v130 = 0u;
  v129 = 0u;
  LMStats::resetStats(v128);
  v125 = xmmword_262888C00;
  v126 = 1;
  v127 = 1;
  v116 = (*(*v8 + 464))(v8);
  v123 = 0;
  v124 = 0;
  if (*(v8 + 116))
  {
    v44 = 0;
    while (1)
    {
      v45 = &v135[2 * v44];
      v46 = *(a2 + 2);
      v47 = *(v45 + 3);
      if (v46 > v47)
      {
        DgnArray<DgnPrimArray<double>>::reallocElts(&v135[2 * v44], v46 - v47, 0);
      }

      v48 = *(v45 + 2);
      if (v48 <= v46)
      {
        if (v48 < v46)
        {
          v51 = v46 - v48;
          v52 = 16 * v48;
          do
          {
            v53 = (*v45 + v52);
            *v53 = 0;
            v53[1] = 0;
            v52 += 16;
            --v51;
          }

          while (v51);
        }
      }

      else if (v48 > v46)
      {
        v49 = v48;
        v50 = 16 * v48 - 16;
        do
        {
          --v49;
          DgnPrimArray<unsigned int>::~DgnPrimArray(*v45 + v50);
          v50 -= 16;
        }

        while (v49 > v46);
      }

      *(v45 + 2) = v46;
      if (*(*(v8 + 40) + 8 * v44))
      {
        if (*(*(v8 + 384) + 8 * v44) != 0.0 && *(a2 + 2) != 0)
        {
          break;
        }
      }

LABEL_103:
      if (++v44 >= *(v8 + 116))
      {
        goto LABEL_104;
      }
    }

    v55 = 0;
    while (1)
    {
      v56 = *(*a3 + 16 * v55 + 8);
      if (v56 >= 3)
      {
        v57 = 3;
      }

      else
      {
        v57 = v56;
      }

      if (HIDWORD(v124) < v57)
      {
        v121 = 0;
        HIDWORD(v124) = realloc_array(v123, &v121, (4 * v57), 4 * v124, 4 * v124, 1) >> 2;
        v123 = v121;
      }

      LODWORD(v124) = v57;
      if (v56)
      {
        v58 = *a3 + 16 * v55;
        v59 = *v58;
        v60 = v123;
        v61 = -1;
        do
        {
          *v60++ = *(v59 + 4 * (v61 + *(v58 + 8)));
          --v61;
          --v57;
        }

        while (v57);
      }

      v62 = *(*a2 + 16 * v55 + 8);
      v63 = v135[2 * v44] + 16 * v55;
      v64 = *(v63 + 12);
      if (v62 > v64)
      {
        break;
      }

      *(v63 + 8) = v62;
      if (v62)
      {
        goto LABEL_86;
      }

LABEL_102:
      if (++v55 >= *(a2 + 2))
      {
        goto LABEL_103;
      }
    }

    DgnPrimArray<short>::reallocElts(v135[2 * v44] + 16 * v55, v62 - v64, 0);
    *(v63 + 8) = v62;
LABEL_86:
    v65 = 0;
    while (1)
    {
      v66 = *(*(*a2 + 16 * v55) + 4 * v65);
      if (v66 == 0xFFFFFF)
      {
        *(*(v135[2 * v44] + 16 * v55) + 2 * v65) = 0;
      }

      else
      {
        v67 = *(*(v116 + 16) + 8 * v44);
        v68 = *(*(v8 + 40) + 8 * v44);
        (*(*v68 + 472))(v68, &v123, 0, v128, &v125, v67);
        LOBYTE(v121) = 0;
        v69 = *(*(v8 + 40) + 8 * v44);
        v70 = (*(*v69 + 504))(v69, v66, 0xFFFFLL, v128, v67, 0, 0, 0, &v121);
        *(*(v135[2 * v44] + 16 * v55) + 2 * v65) = v70;
        (*(**(*(v8 + 40) + 8 * v44) + 480))();
        if (v66 == 16777213)
        {
          v71 = v123;
          if (!HIDWORD(v124))
          {
            v121 = 0;
            HIDWORD(v124) = realloc_array(v123, &v121, 4uLL, 4 * v124, 4 * v124, 1) >> 2;
            v71 = v121;
            v123 = v121;
          }

          LODWORD(v124) = 1;
          *v71 = 16777214;
          goto LABEL_101;
        }
      }

      v72 = v124;
      if (v124 <= 2)
      {
        if (v124 == HIDWORD(v124))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v123, 1, 1);
          v72 = v124;
        }

        LODWORD(v124) = ++v72;
      }

      v73 = v123;
      v74 = (v72 - 1);
      if (v72 != 1)
      {
        v75 = v123 + 4 * v74;
        v76 = v74 - 1;
        do
        {
          v77 = v76;
          *v75-- = v73[v76--];
        }

        while (v77);
      }

      *v73 = v66;
LABEL_101:
      if (++v65 == v62)
      {
        goto LABEL_102;
      }
    }
  }

LABEL_104:
  DgnDelete<LMContextData>(v116);
  LODWORD(v6) = *(v8 + 32);
  v78 = *(v8 + 116);
  v121 = 0;
  v122 = 0;
  if (v78)
  {
    v119 = 0;
    v79 = realloc_array(0, &v119, 8 * v78, 0, 0, 1);
    v120 = 0;
    v121 = v119;
    v80 = *(v8 + 116);
    LODWORD(v122) = v78;
    HIDWORD(v122) = v79 >> 3;
    v119 = 0;
    if (v80)
    {
      v117 = 0;
      HIDWORD(v120) = realloc_array(0, &v117, 8 * v80, 0, 0, 1) >> 3;
      v119 = v117;
    }
  }

  else
  {
    LODWORD(v80) = 0;
    v119 = 0;
    v120 = 0;
  }

  LODWORD(v120) = v80;
  v117 = 0;
  v118 = 0;
  DgnPrimArray<double>::copyArraySlice(&v117, (v8 + 384), 0, *(v8 + 392));
  v81 = 0;
  v82 = v6;
  while (2)
  {
    v83 = *(v8 + 116);
    if (v83)
    {
      bzero(v121, 8 * v83);
    }

    v84 = *(a2 + 2);
    if (!v84)
    {
      break;
    }

    v85 = 0;
    v86 = 0;
    v87 = *a2;
    v88 = v83;
    do
    {
      if (!*(v87 + 16 * v85 + 8))
      {
        goto LABEL_132;
      }

      v89 = 0;
      do
      {
        if (!v88)
        {
          goto LABEL_129;
        }

        v90 = 0;
        v91 = 0;
        v92 = 0.0;
        do
        {
          if (!*(*(v8 + 40) + 8 * v91) || *(v117 + v91) == 0.0)
          {
            *(v119 + v91) = 0;
          }

          else
          {
            v93 = *(*(v135[v90] + 16 * v85) + 2 * v89);
            if (v82 * 50.0 + -1.0 < v93)
            {
              v93 = (v82 * 50.0) - 1;
            }

            v94 = DgnExp(-v93 / v82);
            v95 = v94 * *(v117 + v91);
            *(v119 + v91) = v95;
            v92 = v92 + v95;
            v83 = *(v8 + 116);
          }

          ++v91;
          v90 += 2;
        }

        while (v91 < v83);
        if (v92 == 0.0)
        {
          goto LABEL_128;
        }

        v96 = *(*a4 + 4 * v85);
        v86 += v96;
        if (v83)
        {
          v97 = v119;
          v98 = v96;
          v99 = v83;
          v100 = v121;
          do
          {
            v101 = *v97++;
            *v100 = *v100 + v101 / v92 * v98;
            ++v100;
            --v99;
          }

          while (v99);
LABEL_128:
          v88 = v83;
          goto LABEL_129;
        }

        v88 = 0;
LABEL_129:
        ++v89;
        v87 = *a2;
      }

      while (v89 < *(*a2 + 16 * v85 + 8));
      v84 = *(a2 + 2);
LABEL_132:
      ++v85;
    }

    while (v85 < v84);
    if (v86)
    {
      v102 = v86;
      if (v83)
      {
        v103 = 0;
        v104 = 1.0 / v102;
        do
        {
          if (*(*(v8 + 40) + 8 * v103) && *(*(v8 + 384) + 8 * v103) != 0.0)
          {
            v105 = fround(v104 * *(v121 + v103), 15) <= 1.0e-17;
            v106 = 1.0e-17;
            if (!v105)
            {
              v106 = fround(v104 * *(v121 + v103), 15);
            }

            *(v121 + v103) = v106;
            v83 = *(v8 + 116);
          }

          ++v103;
        }

        while (v103 < v83);
      }

      MultiLanguageModel::fitWeightsToFloorAndCeiling(v8, &v121, &v117);
      if (v118)
      {
        if (a6)
        {
          v105 = v81++ > 0x12;
          if (!v105)
          {
            continue;
          }
        }

        v107 = *(v8 + 116);
        if (v107)
        {
          v108 = 0;
          v109 = *(v8 + 40);
          v110 = v117;
          v111 = 8 * v107;
          do
          {
            if (*(v109 + v108))
            {
              *&v110[v108] = (*&v110[v108] * v102 + a5 * *(*(v8 + 384) + v108)) / (v86 + a5);
            }

            else
            {
              *&v110[v108] = 0;
            }

            v108 += 8;
          }

          while (v111 != v108);
        }

        (*(*v8 + 496))(v8, &v117);
      }
    }

    break;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v117);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v119);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v121);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v123);
  return DgnArray<DgnArray<DgnPrimArray<unsigned int>>>::releaseAll(&v135);
}

void sub_26272EDB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va3, a7);
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  va_copy(va3, va2);
  v15 = va_arg(va3, void);
  v17 = va_arg(va3, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va3);
  DgnArray<DgnArray<DgnPrimArray<unsigned int>>>::releaseAll(v7 - 160);
  _Unwind_Resume(a1);
}

uint64_t MultiLanguageModel::setWeightsForNewTopicLM(MultiLanguageModel *this, unsigned int a2)
{
  v4 = *(this + 29);
  if (v4)
  {
    v5 = 0;
    v6 = 8 * v4;
    v7 = 0.0;
    do
    {
      if (*(*(this + 5) + v5))
      {
        v7 = v7 + *(*(this + 48) + v5);
      }

      v5 += 8;
    }

    while (v6 != v5);
  }

  else
  {
    v7 = 0.0;
  }

  v8 = *(*(this + 56) + 8 * a2);
  v22[0] = 0;
  v22[1] = 0;
  v9.n128_f64[0] = DgnPrimArray<double>::copyArraySlice(v22, this + 48, 0, *(this + 98));
  v10 = *(this + 29);
  v11 = v22[0];
  if (v10)
  {
    v12 = *(this + 5);
    v13 = v22[0];
    v9.n128_f64[0] = (1.0 - v8) / v7;
    do
    {
      if (*v12)
      {
        *v13 = v9.n128_f64[0] * *v13;
      }

      ++v12;
      ++v13;
      --v10;
    }

    while (v10);
  }

  *(v11 + 8 * a2) = v8;
  (*(*this + 496))(this, v22, v9);
  MultiLanguageModel::adjustNamedWeightsSets(this, v14, v15, v16, v17, v18, v19, v20);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v22);
}

void MultiLanguageModel::startBuildingTopicLM(MultiLanguageModel *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 77))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 6904, "lm/multilm", 20, "%.500s", a7, a8, "startBuildingTopicLM");
  }

  v21 = 0;
  v22 = a2 - 1;
  v23 = 0;
  MultiLanguageModel::getInternalTopicLmSlot(this, &v22, &v23, &v21);
  v12 = v23;
  v13 = v21;
  if (v21 == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 6914, "lm/multilm", 95, "%u", v10, v11, a2);
  }

  if (*(*(v12 + 5) + 8 * v13))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 6918, "lm/multilm", 12, "%s", v10, v11, &errStr_lm_multilm_E_BAD_INPLACE_BUILD);
  }

  v14 = *(*(v12 + 38) + 8 * v13);
  v15 = *(*(v12 + 42) + 8 * v13);
  *(this + 78) = v12;
  *(this + 158) = v13;
  *(this + 159) = a2;
  v16 = MemChunkAlloc(0x728uLL, 0);
  v17 = WordLanguageModel::WordLanguageModel(v16, *(this + 8), *(this + 2));
  *(this + 77) = v17;
  WordLanguageModel::initForBuild(v17, v14, v15, v18, v19);
  v20 = *(this + 77);

  WordLanguageModel::startBuildingNgramLM(v20, this + 640, this + 82, this + 83, this + 672);
}

uint64_t MultiLanguageModel::addBuildTopicLM(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a1 + 616);
  if (!v12)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 6944, "lm/multilm", 19, "%s", a7, a8, &errStr_lm_multilm_E_NOTBUILDINGLM);
    v12 = *(a1 + 616);
  }

  return WordLanguageModel::addBuildNgramLM(v12, a2, a3, a4);
}

void *MultiLanguageModel::endBuildingTopicLM(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a1 + 616);
  if (!v13)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 6959, "lm/multilm", 19, "%s", a7, a8, &errStr_lm_multilm_E_NOTBUILDINGLM);
    v13 = *(a1 + 616);
  }

  v14 = WordLanguageModel::endBuildingNgramLM(v13);
  v15 = *(a1 + 616);
  if (!v14)
  {
    DgnDelete<LanguageModel>(v15);
    goto LABEL_9;
  }

  v16 = *(a1 + 632);
  *(*(*(a1 + 624) + 40) + 8 * v16) = v15;
  *(a1 + 616) = 0;
  v17 = *(a1 + 624);
  if (*(v17 + 114) == 1)
  {
    MultiLanguageModel::setWeightsForNewTopicLM(v17, v16);
  }

  if (*(a2 + 8))
  {
    (*(*a1 + 536))(a1, a2, a3, a4, a5, 1);
    DgnDelete<LanguageModel>(*(*(*(a1 + 624) + 40) + 8 * *(a1 + 632)));
    v18 = *(a1 + 632);
    *(*(*(a1 + 624) + 40) + 8 * v18) = 0;
    v19 = *(a1 + 624);
    v20 = *(*(v19 + 336) + 8 * v18);
    v21 = *(*(v19 + 304) + 8 * v18);
    v22 = MemChunkAlloc(0x728uLL, 0);
    v23 = WordLanguageModel::WordLanguageModel(v22, *(a1 + 32), *(a1 + 16));
    *(a1 + 616) = v23;
    WordLanguageModel::initForBuild(v23, v21, v20, v24, v25);
    WordLanguageModel::startBuildingNgramLM(*(a1 + 616), a1 + 640, (a1 + 656), (a1 + 664), a1 + 672);
    WordLanguageModel::addBuildNgramLM(*(a1 + 616), a2, a3, a4);
    WordLanguageModel::endBuildingNgramLM(*(a1 + 616));
    *(*(*(a1 + 624) + 40) + 8 * *(a1 + 632)) = *(a1 + 616);
LABEL_9:
    *(a1 + 616) = 0;
  }

  *(a1 + 624) = 0;
  *(a1 + 632) = 0xFFFFFFFFFFFFLL;
  v26 = *(a1 + 640);
  if (v26)
  {
    MemChunkFree(v26, 0);
    *(a1 + 640) = 0;
  }

  *(a1 + 664) = 0;
  *(a1 + 648) = 0u;

  return DgnIOwnArray<HashKEV<unsigned int,unsigned int,StateIdScope> *>::releaseAll(a1 + 672);
}

void *MultiLanguageModel::abortBuildingTopicLM(MultiLanguageModel *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = this + 616;
  v10 = *(this + 77);
  if (!v10)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 7035, "lm/multilm", 19, "%s", a7, a8, &errStr_lm_multilm_E_NOTBUILDINGLM);
    v10 = *v9;
  }

  DgnDelete<LanguageModel>(v10);
  *v9 = 0;
  *(v9 + 1) = 0;
  *(this + 79) = 0xFFFFFFFFFFFFLL;
  v11 = *(this + 80);
  if (v11)
  {
    MemChunkFree(v11, 0);
    *(this + 80) = 0;
  }

  *(this + 648) = 0u;

  return DgnIOwnArray<HashKEV<unsigned int,unsigned int,StateIdScope> *>::releaseAll(this + 672);
}

void MultiLMContextData::MultiLMContextData(MultiLMContextData *this, uint64_t a2)
{
  v2 = a2;
  *(this + 2) = 16777212;
  *this = &unk_287526590;
  *(this + 2) = 0;
  v4 = (this + 16);
  *(this + 3) = 0;
  if (a2)
  {
    DgnPrimArray<unsigned long long>::reallocElts(this + 16, a2, 0);
    LODWORD(v5) = *(this + 6);
    if (v5 > v2)
    {
      DgnIOwnArray<LMContextData *>::destructAt(v4, v2, v5 - v2);
      goto LABEL_8;
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 < v2)
  {
    v5 = v5;
    do
    {
      (*v4)[v5++] = 0;
    }

    while (v2 != v5);
  }

LABEL_8:
  *(this + 6) = v2;
}

void MultiLMContextData::~MultiLMContextData(MultiLMContextData *this)
{
  *this = &unk_287526590;
  DgnIOwnArray<LMContextData *>::releaseAll(this + 16);
}

{
  *this = &unk_287526590;
  DgnIOwnArray<LMContextData *>::releaseAll(this + 16);

  JUMPOUT(0x26672B1B0);
}

void *DgnIOwnArray<LanguageModel *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<LanguageModel>(*(*a1 + v3));
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