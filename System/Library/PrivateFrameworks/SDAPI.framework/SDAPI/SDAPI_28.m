int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,TWord const*> *,std::__less<void,void> &>(int *a1, int *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a2 - 4);
  if (*a1 < v4 || v4 >= v2 && v3 < *(a2 - 1))
  {
    i = a1;
    do
    {
      v7 = i[4];
      i += 4;
      v6 = v7;
    }

    while (v2 >= v7 && (v6 < v2 || v3 >= *(i + 1)));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 4; v2 < v4 || v4 >= v2 && v3 < *(a2 + 1); a2 -= 4)
    {
      v8 = *(a2 - 4);
      v4 = v8;
    }
  }

  if (i < a2)
  {
    v9 = *i;
    v10 = *a2;
    do
    {
      *i = v10;
      *a2 = v9;
      v11 = i[4];
      i += 4;
      v9 = v11;
      v12 = *(i - 1);
      *(i - 1) = *(a2 + 1);
      *(a2 + 1) = v12;
      while (v2 >= v9 && (v9 < v2 || v3 >= *(i + 1)))
      {
        v13 = i[4];
        i += 4;
        v9 = v13;
      }

      do
      {
        do
        {
          v14 = *(a2 - 4);
          a2 -= 4;
          v10 = v14;
        }

        while (v2 < v14);
      }

      while (v10 >= v2 && v3 < *(a2 + 1));
    }

    while (i < a2);
  }

  if (i - 4 != a1)
  {
    *a1 = *(i - 4);
    *(a1 + 1) = *(i - 1);
  }

  *(i - 4) = v2;
  *(i - 1) = v3;
  return i;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,TWord const*> *,std::__less<void,void> &>(int *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 1);
  while (1)
  {
    v5 = a1[v2 + 4];
    if (v5 >= v3 && (v3 < v5 || *&a1[v2 + 6] >= v4))
    {
      break;
    }

    v2 += 4;
  }

  v6 = &a1[v2 + 4];
  if (v2 * 4)
  {
    do
    {
      v8 = *(a2 - 16);
      a2 -= 16;
      v7 = v8;
    }

    while (v8 >= v3 && (v3 < v7 || *(a2 + 8) >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v10 = *(a2 - 16);
        a2 -= 16;
        v9 = v10;
        if (v10 < v3)
        {
          break;
        }

        if (v3 < v9)
        {
          goto LABEL_19;
        }
      }

      while (*(a2 + 8) >= v4 && v6 < a2);
    }
  }

  if (v6 >= a2)
  {
    v13 = v6;
  }

  else
  {
    v12 = *a2;
    v13 = v6;
    v14 = a2;
    do
    {
      *v13 = v12;
      *v14 = v5;
      v15 = *(v13 + 8);
      *(v13 + 8) = *(v14 + 8);
      *(v14 + 8) = v15;
      do
      {
        do
        {
          v16 = *(v13 + 16);
          v13 += 16;
          v5 = v16;
        }

        while (v16 < v3);
      }

      while (v3 >= v5 && *(v13 + 8) < v4);
      do
      {
        v17 = *(v14 - 16);
        v14 -= 16;
        v12 = v17;
      }

      while (v17 >= v3 && (v3 < v12 || *(v14 + 8) >= v4));
    }

    while (v13 < v14);
  }

  if ((v13 - 16) != a1)
  {
    *a1 = *(v13 - 16);
    *(a1 + 1) = *(v13 - 8);
  }

  *(v13 - 16) = v3;
  *(v13 - 8) = v4;
  return v13 - 16;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,0>(a1, (a1 + 16), (a2 - 16));
        return 1;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,0>(a1, (a1 + 16), (a1 + 32));
        v23 = *(a2 - 16);
        v24 = *(a1 + 32);
        if (v23 >= v24)
        {
          if (v24 < v23)
          {
            return 1;
          }

          v26 = *(a2 - 8);
          v25 = *(a1 + 40);
          if (v26 >= v25)
          {
            return 1;
          }
        }

        else
        {
          v25 = *(a1 + 40);
          v26 = *(a2 - 8);
        }

        *(a1 + 32) = v23;
        *(a2 - 16) = v24;
        *(a1 + 40) = v26;
        *(a2 - 8) = v25;
        v27 = *(a1 + 32);
        v28 = *(a1 + 16);
        if (v27 >= v28)
        {
          if (v28 < v27)
          {
            return 1;
          }

          v30 = *(a1 + 40);
          v29 = *(a1 + 24);
          if (v30 >= v29)
          {
            return 1;
          }
        }

        else
        {
          v29 = *(a1 + 24);
          v30 = *(a1 + 40);
        }

        *(a1 + 16) = v27;
        *(a1 + 32) = v28;
        *(a1 + 24) = v30;
        *(a1 + 40) = v29;
        v31 = *a1;
        if (v27 >= *a1)
        {
          if (v31 < v27)
          {
            return 1;
          }

          v32 = *(a1 + 8);
          if (v30 >= v32)
          {
            return 1;
          }
        }

        else
        {
          v32 = *(a1 + 8);
        }

        *a1 = v27;
        *(a1 + 16) = v31;
        *(a1 + 8) = v30;
        result = 1;
        *(a1 + 24) = v32;
        return result;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,0>(a1, a1 + 16, a1 + 32, a1 + 48, (a2 - 16));
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 16);
      v6 = *a1;
      if (v5 < *a1)
      {
        v7 = *(a1 + 8);
        v8 = *(a2 - 8);
LABEL_6:
        *a1 = v5;
        *(a2 - 16) = v6;
        *(a1 + 8) = v8;
        result = 1;
        *(a2 - 8) = v7;
        return result;
      }

      if (v6 >= v5)
      {
        v8 = *(a2 - 8);
        v7 = *(a1 + 8);
        if (v8 < v7)
        {
          goto LABEL_6;
        }
      }

      return 1;
    }
  }

  v10 = a1 + 32;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,0>(a1, (a1 + 16), (a1 + 32));
  v11 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (2)
  {
    v14 = *v11;
    v15 = *v10;
    if (*v11 >= *v10)
    {
      if (v15 < v14)
      {
        goto LABEL_28;
      }

      v16 = *(v11 + 8);
      v17 = *(v10 + 8);
      if (v16 >= v17)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = *(v11 + 8);
      v17 = *(v10 + 8);
    }

    *v11 = v15;
    *(v11 + 8) = v17;
    v18 = v12;
    while (1)
    {
      v19 = a1 + v18;
      v20 = *(a1 + v18 + 16);
      if (v14 >= v20)
      {
        break;
      }

      v21 = *(v19 + 24);
LABEL_21:
      *(v19 + 32) = v20;
      *(a1 + v18 + 40) = v21;
      v18 -= 16;
      if (v18 == -32)
      {
        v22 = a1;
        goto LABEL_27;
      }
    }

    if (v20 >= v14)
    {
      v21 = *(a1 + v18 + 24);
      if (v16 < v21)
      {
        goto LABEL_21;
      }
    }

    v22 = a1 + v18 + 32;
LABEL_27:
    *v22 = v14;
    *(v22 + 8) = v16;
    if (++v13 != 8)
    {
LABEL_28:
      v10 = v11;
      v12 += 16;
      v11 += 16;
      if (v11 == a2)
      {
        return 1;
      }

      continue;
    }

    return v11 + 16 == a2;
  }
}

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,std::pair<int,TWord const*> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *>(a1, a4, v8, v11);
        v11 -= 4;
        --v10;
      }

      while (v10);
    }

    i = a2;
    if (a2 != a3)
    {
      for (i = a2; i != a3; i += 16)
      {
        v13 = *i;
        v14 = *a1;
        if (*i >= *a1)
        {
          if (v14 < v13)
          {
            continue;
          }

          v15 = *(i + 8);
          v16 = *(a1 + 8);
          if (v15 >= v16)
          {
            continue;
          }
        }

        else
        {
          v15 = *(i + 8);
          v16 = *(a1 + 8);
        }

        *i = v14;
        *a1 = v13;
        *(i + 8) = v16;
        *(a1 + 8) = v15;
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *>(a1, a4, v8, a1);
      }
    }

    if (v8 >= 2)
    {
      v17 = a2 - 16;
      do
      {
        v18 = *a1;
        v19 = *(a1 + 8);
        v20 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *>(a1, a4, v8);
        if (v17 == v20)
        {
          *v20 = v18;
          *(v20 + 8) = v19;
        }

        else
        {
          *v20 = *v17;
          *(v20 + 8) = *(v17 + 8);
          *v17 = v18;
          *(v17 + 8) = v19;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *>(a1, v20 + 16, a4, (v20 + 16 - a1) >> 4);
        }

        v17 -= 16;
      }

      while (v8-- > 2);
    }

    return i;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *>(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[4];
        if (*v8 < v10 || v10 >= *v8 && *(v8 + 1) < *(v8 + 3))
        {
          v8 += 4;
          v7 = v9;
        }
      }

      v11 = *v8;
      v12 = *a4;
      if (*v8 >= *a4)
      {
        if (v12 >= v11)
        {
          v14 = *(v8 + 1);
          v13 = *(a4 + 1);
          if (v14 < v13)
          {
            return result;
          }
        }

        else
        {
          v13 = *(a4 + 1);
          v14 = *(v8 + 1);
        }

        *a4 = v11;
        *(a4 + 1) = v14;
        if (v5 >= v7)
        {
          while (1)
          {
            v16 = 2 * v7;
            v7 = (2 * v7) | 1;
            v15 = (result + 16 * v7);
            v17 = v16 + 2;
            if (v17 < a3)
            {
              v18 = v15[4];
              if (*v15 < v18 || v18 >= *v15 && *(v15 + 1) < *(v15 + 3))
              {
                v15 += 4;
                v7 = v17;
              }
            }

            v19 = *v15;
            if (*v15 < v12)
            {
              break;
            }

            v20 = *(v15 + 1);
            if (v12 >= v19 && v20 < v13)
            {
              break;
            }

            *v8 = v19;
            *(v8 + 1) = v20;
            v8 = v15;
            if (v5 < v7)
            {
              goto LABEL_14;
            }
          }
        }

        v15 = v8;
LABEL_14:
        *v15 = v12;
        *(v15 + 1) = v13;
      }
    }
  }

  return result;
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = result;
    v5 = result + 16 * v3;
    result = v5 + 16;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v8 = *(v5 + 32);
      v9 = *(v5 + 16);
      if (v9 < v8 || v8 >= v9 && *(v5 + 24) < *(v5 + 40))
      {
        result = v5 + 32;
        v3 = v7;
      }
    }

    *v4 = *result;
    *(v4 + 8) = *(result + 8);
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 16 * (v4 >> 1));
    v7 = *v6;
    v8 = *(a2 - 16);
    if (*v6 >= v8)
    {
      if (v8 < v7)
      {
        return result;
      }

      v10 = *(v6 + 1);
      v9 = *(a2 - 8);
      if (v10 >= v9)
      {
        return result;
      }
    }

    else
    {
      v9 = *(a2 - 8);
      v10 = *(v6 + 1);
    }

    *(a2 - 16) = v7;
    *(a2 - 8) = v10;
    if (v4 >= 2)
    {
      while (1)
      {
        v12 = v5 - 1;
        v5 = (v5 - 1) >> 1;
        v11 = (result + 16 * v5);
        v13 = *v11;
        if (*v11 >= v8)
        {
          if (v8 < v13)
          {
            break;
          }

          v14 = *(v11 + 1);
          if (v14 >= v9)
          {
            break;
          }
        }

        else
        {
          v14 = *(v11 + 1);
        }

        *v6 = v13;
        *(v6 + 1) = v14;
        v6 = (result + 16 * v5);
        if (v12 <= 1)
        {
          goto LABEL_11;
        }
      }
    }

    v11 = v6;
LABEL_11:
    *v11 = v8;
    *(v11 + 1) = v9;
  }

  return result;
}

void sub_2626F7070(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<wchar_t const*>::__init_with_size[abi:ne200100]<wchar_t const**,wchar_t const**>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<wchar_t const*>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2626F70EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t StartupSearchParamSpecMgr(void)
{
  v127 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v127, "SearchPelScoreScale", &byte_262899963, &byte_262899963, &sSearchPelScoreScaleDoubleHistory);
  v126 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v126, "SearchPelScoreUseBestCompScore", &byte_262899963, &byte_262899963, &sSearchPelScoreUseBestCompScoreBoolHistory);
  v118 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v118, "SearchDecimationType", &byte_262899963, &byte_262899963, &sSearchDecimationTypeEnumHistory);
  v117 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v117, "SearchEnableGenoneScoreCacheThresh", &byte_262899963, &byte_262899963, &sSearchEnableGenoneScoreCacheThreshDoubleHistory);
  v116 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v116, "SearchFrameTransformerThreadingType", &byte_262899963, &byte_262899963, &sSearchFrameTransformerThreadingTypeEnumHistory);
  v115 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v115, "SearchThreadingType", &byte_262899963, &byte_262899963, &sSearchThreadingTypeEnumHistory);
  v125 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v125, "SearchTruncatePackedIntComponentScores", &byte_262899963, &byte_262899963, &sSearchTruncatePackedIntComponentScoresBoolHistory);
  v114 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v114, "SearchFmpeMinimumPosteriorProbability", &byte_262899963, &byte_262899963, &sSearchFmpeMinimumPosteriorProbabilityDoubleHistory);
  v129 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v129, "SearchFmpeWindowTruncateUnavailableFrames", &byte_262899963, &byte_262899963, &sSearchFmpeWindowTruncateUnavailableFramesBoolHistory);
  v124 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v124, "SearchUseWordEndThreshWhenSeedingFinalSilence", &byte_262899963, &byte_262899963, &sSearchUseWordEndThreshWhenSeedingFinalSilenceBoolHistory);
  v123 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v123, "SearchTraceThreshScoreIncrement", &byte_262899963, &byte_262899963, &sSearchTraceThreshScoreIncrementIntHistory);
  v105 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v105, "SearchActiveWordSpreadSeedScore", &byte_262899963, &byte_262899963, &sSearchActiveWordSpreadSeedScoreIntHistory);
  v121 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v121, "SearchPelBackoffThreshScoreDecrement", &byte_262899963, &byte_262899963, &sSearchPelBackoffThreshScoreDecrementIntHistory);
  v128 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v128, "SearchAdjustThreshScoreType", &byte_262899963, &byte_262899963, &sSearchAdjustThreshScoreTypeEnumHistory);
  v109 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v109, "SearchInterWordSilencePenalty", &byte_262899963, &byte_262899963, &sSearchInterWordSilencePenaltyIntHistory);
  v119 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v119, "SearchNodeSkippingType", &byte_262899963, &byte_262899963, &sSearchNodeSkippingTypeEnumHistory);
  v120 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v120, "SearchRemoveInactiveWordsIntervalFrames", &byte_262899963, &byte_262899963, &sSearchRemoveInactiveWordsIntervalFramesIntHistory);
  v98 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v98, "SearchAbortOnNumHistories", &byte_262899963, &byte_262899963, &sSearchAbortOnNumHistoriesIntHistory);
  v97 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v97, "SearchAbortOnAllocBytes", &byte_262899963, &byte_262899963, &sSearchAbortOnAllocBytesIntHistory);
  v96 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v96, "SearchAbortOnAverageWordsEndingPerFrame", &byte_262899963, &byte_262899963, &sSearchAbortOnAverageWordsEndingPerFrameIntHistory);
  v95 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v95, "SearchAbortOnNumRecognizedFrames", &byte_262899963, &byte_262899963, &sSearchAbortOnNumRecognizedFramesIntHistory);
  v91 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v91, "SearchLatticeLMRescoringAbortOnTotalNewNodes", &byte_262899963, &byte_262899963, &sSearchLatticeLMRescoringAbortOnTotalNewNodesIntHistory);
  v122 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v122, "SearchLatticeSilentWordsUseCoarticulation", &byte_262899963, &byte_262899963, &sSearchLatticeSilentWordsUseCoarticulationBoolHistory);
  v104 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v104, "SearchLatticeAbortOnNumNodes", &byte_262899963, &byte_262899963, &sSearchLatticeAbortOnNumNodesIntHistory);
  v102 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v102, "SearchLatticeAbortOnNumLinks", &byte_262899963, &byte_262899963, &sSearchLatticeAbortOnNumLinksIntHistory);
  v101 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v101, "SearchLatticeAbortOnScaledAverageNodesPerFrame", &byte_262899963, &byte_262899963, &sSearchLatticeAbortOnScaledAverageNodesPerFrameIntHistory);
  v100 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v100, "SearchLatticeAbortOnScaledAverageLinksPerFrame", &byte_262899963, &byte_262899963, &sSearchLatticeAbortOnScaledAverageLinksPerFrameIntHistory);
  v113 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v113, "SearchTraceLatticeNormalizedThreshFactor", &byte_262899963, &byte_262899963, &sSearchTraceLatticeNormalizedThreshFactorDoubleHistory);
  v112 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v112, "SearchTraceLatticeThreshScoreIncrement", &byte_262899963, &byte_262899963, &sSearchTraceLatticeThreshScoreIncrementIntHistory);
  v99 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v99, "SearchLatticeAllowZeroDurationFinalSilence", &byte_262899963, &byte_262899963, &sSearchLatticeAllowZeroDurationFinalSilenceBoolHistory);
  v103 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v103, "SearchPerWordPenalty", &byte_262899963, &byte_262899963, &sSearchPerWordPenaltyIntHistory);
  v111 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v111, "SearchWordSeedThreshScoreDecrement", &byte_262899963, &byte_262899963, &sSearchWordSeedThreshScoreDecrementIntHistory);
  v110 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v110, "SearchWordSeedFinalSilenceThreshScoreDecrement", &byte_262899963, &byte_262899963, &sSearchWordSeedFinalSilenceThreshScoreDecrementIntHistory);
  v108 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v108, "SearchWordSeedScoreIncludePrefiltererScore", &byte_262899963, &byte_262899963, &sSearchWordSeedScoreIncludePrefiltererScoreBoolHistory);
  v107 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v107, "SearchWordSeedUnprefilteredUseThreshScoreDecrement", &byte_262899963, &byte_262899963, &sSearchWordSeedUnprefilteredUseThreshScoreDecrementBoolHistory);
  v106 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v106, "SearchEstimateAndPreScoreActivePels", &byte_262899963, &byte_262899963, &sSearchEstimateAndPreScoreActivePelsBoolHistory);
  v81 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v81, "SearchActiveWordHasPredecessorPhonemeContext", &byte_262899963, &byte_262899963, &sSearchActiveWordHasPredecessorPhonemeContextBoolHistory);
  v78 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v78, "SearchActiveWordHasPredecessorWordContext", &byte_262899963, &byte_262899963, &sSearchActiveWordHasPredecessorWordContextBoolHistory);
  v76 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v76, "SearchActiveWordHasMergedGrammarState", &byte_262899963, &byte_262899963, &sSearchActiveWordHasMergedGrammarStateBoolHistory);
  v75 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v75, "SearchActiveWordHasMergedLatticeLinkId", &byte_262899963, &byte_262899963, &sSearchActiveWordHasMergedLatticeLinkIdBoolHistory);
  v74 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v74, "SearchLatticeTimeConstraintDistanceMaxFrames", &byte_262899963, &byte_262899963, &sSearchLatticeTimeConstraintDistanceMaxFramesIntHistory);
  v69 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v69, "SearchLatticeTimeConstraintSeedThreshScore", &byte_262899963, &byte_262899963, &sSearchLatticeTimeConstraintSeedThreshScoreIntHistory);
  v86 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v86, "SearchLMLimit", &byte_262899963, &byte_262899963, &sSearchLMLimitEnumHistory);
  v85 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v85, "SearchLMRescoreWithCorrective", &byte_262899963, &byte_262899963, &sSearchLMRescoreWithCorrectiveBoolHistory);
  v79 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v79, "SearchLMDisallowedLMScore", &byte_262899963, &byte_262899963, &sSearchLMDisallowedLMScoreIntHistory);
  v80 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v80, "SearchLMDynamicReadCacheBlocksPerChunk", &byte_262899963, &byte_262899963, &sSearchLMDynamicReadCacheBlocksPerChunkIntHistory);
  v77 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v77, "SearchLMDynamicReadCacheMaxBlocks", &byte_262899963, &byte_262899963, &sSearchLMDynamicReadCacheMaxBlocksIntHistory);
  v70 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v70, "SearchLMDynamicBigramReadCacheMaxChunksPerRead", &byte_262899963, &byte_262899963, &sSearchLMDynamicBigramReadCacheMaxChunksPerReadIntHistory);
  v72 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v72, "SearchLMDynamicTrigramReadCacheMaxChunksPerRead", &byte_262899963, &byte_262899963, &sSearchLMDynamicTrigramReadCacheMaxChunksPerReadIntHistory);
  v67 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v67, "SearchLMDynamicQuadgramReadCacheMaxChunksPerRead", &byte_262899963, &byte_262899963, &sSearchLMDynamicQuadgramReadCacheMaxChunksPerReadIntHistory);
  v64 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v64, "SearchInitialSilenceToFinalSilenceLMScore", &byte_262899963, &byte_262899963, &sSearchInitialSilenceToFinalSilenceLMScoreIntHistory);
  v60 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v60, "SearchLatticePruneKeepUniquePathsMaxSize", &byte_262899963, &byte_262899963, &sSearchLatticePruneKeepUniquePathsMaxSizeIntHistory);
  v58 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v58, "SearchLatticeNodeCreationUseRightWord", &byte_262899963, &byte_262899963, &sSearchLatticeNodeCreationUseRightWordBoolHistory);
  v56 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v56, "SearchLatticeUseCoarticulation", &byte_262899963, &byte_262899963, &sSearchLatticeUseCoarticulationBoolHistory);
  v93 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v93, "SearchLatticeUseThresholding", &byte_262899963, &byte_262899963, &sSearchLatticeUseThresholdingBoolHistory);
  v90 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v90, "SearchLatticePreserveAlternateProns", &byte_262899963, &byte_262899963, &sSearchLatticePreserveAlternatePronsBoolHistory);
  v84 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v84, "SearchRecognitionContinuationInterval", &byte_262899963, &byte_262899963, &sSearchRecognitionContinuationIntervalIntHistory);
  v83 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v83, "SearchRecognitionBatchProcessing", &byte_262899963, &byte_262899963, &sSearchRecognitionBatchProcessingBoolHistory);
  v71 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v71, "SearchNonAcousticWordLMThreshScore", &byte_262899963, &byte_262899963, &sSearchNonAcousticWordLMThreshScoreIntHistory);
  v68 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v68, "SearchNonAcousticWordEndThreshScoreIncrement", &byte_262899963, &byte_262899963, &sSearchNonAcousticWordEndThreshScoreIncrementIntHistory);
  v65 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v65, "SearchNonAcousticWordAndSuccessorLMThreshScore", &byte_262899963, &byte_262899963, &sSearchNonAcousticWordAndSuccessorLMThreshScoreIntHistory);
  v66 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v66, "SearchNonAcousticWordSeedThreshScoreIncrement", &byte_262899963, &byte_262899963, &sSearchNonAcousticWordSeedThreshScoreIncrementIntHistory);
  v94 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v94, "SearchGenerateConstraintLattice", &byte_262899963, &byte_262899963, &sSearchGenerateConstraintLatticeBoolHistory);
  v92 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v92, "SearchConstraintLatticePreserveTimes", &byte_262899963, &byte_262899963, &sSearchConstraintLatticePreserveTimesBoolHistory);
  v89 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v89, "SearchConstraintLatticeMaxSyntheticSilenceFrames", &byte_262899963, &byte_262899963, &sSearchConstraintLatticeMaxSyntheticSilenceFramesIntHistory);
  v88 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v88, "SearchConstraintLatticeMergeNodeMaxFrames", &byte_262899963, &byte_262899963, &sSearchConstraintLatticeMergeNodeMaxFramesIntHistory);
  v61 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v61, "SearchLatticeComputeOnlyBestPath", &byte_262899963, &byte_262899963, &sSearchLatticeComputeOnlyBestPathBoolHistory);
  v63 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v63, "SearchThreshScoreWhenSilenceBest", &byte_262899963, &byte_262899963, &sSearchThreshScoreWhenSilenceBestIntHistory);
  v62 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v62, "SearchThreshScoreIncrementWhenNonSilenceBest", &byte_262899963, &byte_262899963, &sSearchThreshScoreIncrementWhenNonSilenceBestIntHistory);
  v54 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v54, "SearchFinalSilenceThreshScoreIncrement", &byte_262899963, &byte_262899963, &sSearchFinalSilenceThreshScoreIncrementIntHistory);
  v87 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v87, "SearchActiveCountLimitScoreCompareWithBeam", &byte_262899963, &byte_262899963, &sSearchActiveCountLimitScoreCompareWithBeamBoolHistory);
  v52 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v52, "SearchActiveNodeCountLimit", &byte_262899963, &byte_262899963, &sSearchActiveNodeCountLimitIntHistory);
  v51 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v51, "SearchActiveNodePreserveMultipleHistories", &byte_262899963, &byte_262899963, &sSearchActiveNodePreserveMultipleHistoriesBoolHistory);
  v50 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v50, "SearchActiveSequenceCountLimit", &byte_262899963, &byte_262899963, &sSearchActiveSequenceCountLimitIntHistory);
  v55 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v55, "SearchWordEndThreshScoreDecrement", &byte_262899963, &byte_262899963, &sSearchWordEndThreshScoreDecrementIntHistory);
  v53 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v53, "SearchWordEndAgainstBestWordEndThreshScoreDecrement", &byte_262899963, &byte_262899963, &sSearchWordEndAgainstBestWordEndThreshScoreDecrementIntHistory);
  v82 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v82, "SearchWordEndAgainstPrevBestNodeThreshScore", &byte_262899963, &byte_262899963, &sSearchWordEndAgainstPrevBestNodeThreshScoreIntHistory);
  v49 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v49, "SearchLatticeNormalizedThreshFactor", &byte_262899963, &byte_262899963, &sSearchLatticeNormalizedThreshFactorDoubleHistory);
  v48 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v48, "SearchLatticeThreshScore", &byte_262899963, &byte_262899963, &sSearchLatticeThreshScoreIntHistory);
  v73 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v73, "SearchLatticeLinksPerSecondLimit", &byte_262899963, &byte_262899963, &sSearchLatticeLinksPerSecondLimitIntHistory);
  v45 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v45, "SearchLatticePruneLinksPerSecondLimit", &byte_262899963, &byte_262899963, &sSearchLatticePruneLinksPerSecondLimitIntHistory);
  v38 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v38, "SearchLatticeBestCrumbDistanceMaxFrames", &byte_262899963, &byte_262899963, &sSearchLatticeBestCrumbDistanceMaxFramesIntHistory);
  v36 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v36, "SearchLatticeBestCrumbThreshScoreIncrement", &byte_262899963, &byte_262899963, &sSearchLatticeBestCrumbThreshScoreIncrementIntHistory);
  v0 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v0, "SearchLatticeComputeOnlyBestTimes", &byte_262899963, &byte_262899963, &sSearchLatticeComputeOnlyBestTimesBoolHistory);
  v40 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v40, "SearchStateUsePrefiltererMinNumWords", &byte_262899963, &byte_262899963, &sSearchStateUsePrefiltererMinNumWordsIntHistory);
  v21 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v21, "SearchConTransAccStartFrame", &byte_262899963, &byte_262899963, &sSearchConTransAccStartFrameIntHistory);
  v18 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v18, "SearchConTransAccRampFrames", &byte_262899963, &byte_262899963, &sSearchConTransAccRampFramesIntHistory);
  v15 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v15, "SearchConTransAccMaxSilenceFrames", &byte_262899963, &byte_262899963, &sSearchConTransAccMaxSilenceFramesIntHistory);
  v11 = MemChunkAlloc(0x38uLL, 0);
  StringParamSpec::StringParamSpec(v11, "SearchConTransAccFactorList", &byte_262899963, &byte_262899963, &sSearchConTransAccFactorListStringHistory);
  v1 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v1, "SearchConTransAccDecayFrequency", &byte_262899963, &byte_262899963, &sSearchConTransAccDecayFrequencyIntHistory);
  v2 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v2, "SearchConTransAccDecayFactor", &byte_262899963, &byte_262899963, &sSearchConTransAccDecayFactorDoubleHistory);
  v35 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v35, "SearchPrefilterResultUseCrumbBank", &byte_262899963, &byte_262899963, &sSearchPrefilterResultUseCrumbBankBoolHistory);
  v34 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v34, "SearchPrefilterResultUseCrumbBankDistanceMaxFrames", &byte_262899963, &byte_262899963, &sSearchPrefilterResultUseCrumbBankDistanceMaxFramesIntHistory);
  v33 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v33, "SearchSegmentAllNets", &byte_262899963, &byte_262899963, &sSearchSegmentAllNetsBoolHistory);
  v42 = MemChunkAlloc(0x38uLL, 0);
  StringParamSpec::StringParamSpec(v42, "SearchHierScorerBeamList", &byte_262899963, &byte_262899963, &sSearchHierScorerBeamListStringHistory);
  v57 = MemChunkAlloc(0x38uLL, 0);
  StringParamSpec::StringParamSpec(v57, "SearchHierScorerCutoffList", &byte_262899963, &byte_262899963, &sSearchHierScorerCutoffListStringHistory);
  v47 = MemChunkAlloc(0x38uLL, 0);
  StringParamSpec::StringParamSpec(v47, "SearchHierScorerCutoffRatioList", &byte_262899963, &byte_262899963, &sSearchHierScorerCutoffRatioListStringHistory);
  v37 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v37, "SearchHierInactiveComponentScore", &byte_262899963, &byte_262899963, &sSearchHierInactiveComponentScoreIntHistory);
  v59 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v59, "SearchUsesFst", &byte_262899963, &byte_262899963, &sSearchUsesFstBoolHistory);
  v32 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v32, "FstCoreBeam", &byte_262899963, &byte_262899963, &sFstCoreBeamDoubleHistory);
  v31 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v31, "FstCoreLatticeBeam", &byte_262899963, &byte_262899963, &sFstCoreLatticeBeamDoubleHistory);
  v43 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v43, "FstCoreLateLatticeArcFingerSuckPenalty", &byte_262899963, &byte_262899963, &sFstCoreLateLatticeArcFingerSuckPenaltyDoubleHistory);
  v29 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v29, "FstCoreMaxActive", &byte_262899963, &byte_262899963, &sFstCoreMaxActiveIntHistory);
  v27 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v27, "FstCoreNBest", &byte_262899963, &byte_262899963, &sFstCoreNBestIntHistory);
  v26 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v26, "FstCoreHashPropagateBestTokensFirst", &byte_262899963, &byte_262899963, &sFstCoreHashPropagateBestTokensFirstIntHistory);
  v25 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v25, "FstCoreRepeatFrame", &byte_262899963, &byte_262899963, &sFstCoreRepeatFrameBoolHistory);
  v46 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v46, "FstCoreSearchType", &byte_262899963, &byte_262899963, &sFstCoreSearchTypeEnumHistory);
  v28 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v28, "FstCoreLatticeGeneration", &byte_262899963, &byte_262899963, &sFstCoreLatticeGenerationEnumHistory);
  v44 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v44, "FstCorePelScoreScale", &byte_262899963, &byte_262899963, &sFstCorePelScoreScaleDoubleHistory);
  v23 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v23, "FstCoreGenerateLeafLattice", &byte_262899963, &byte_262899963, &sFstCoreGenerateLeafLatticeBoolHistory);
  v39 = MemChunkAlloc(0x38uLL, 0);
  StringParamSpec::StringParamSpec(v39, "FstCoreAttilaLatticeOutputFileNamePrefix", &byte_262899963, &byte_262899963, &sFstCoreAttilaLatticeOutputFileNamePrefixStringHistory);
  v41 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v41, "FstCorePerWordPenalty", &byte_262899963, &byte_262899963, &sFstCorePerWordPenaltyIntHistory);
  v22 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v22, "SearchDisableHierarchicalScorer", &byte_262899963, &byte_262899963, &sSearchDisableHierarchicalScorerBoolHistory);
  v20 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v20, "SearchDisableGPUScorer", &byte_262899963, &byte_262899963, &sSearchDisableGPUScorerBoolHistory);
  v19 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v19, "FstCoreUseDurationModel", &byte_262899963, &byte_262899963, &sFstCoreUseDurationModelBoolHistory);
  v30 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v30, "FstCoreGenerateLattice", &byte_262899963, &byte_262899963, &sFstCoreGenerateLatticeBoolHistory);
  v17 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v17, "FstCoreHashTokens", &byte_262899963, &byte_262899963, &sFstCoreHashTokensBoolHistory);
  v16 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v16, "FstCoreUseFwdBwdAlgorithm", &byte_262899963, &byte_262899963, &sFstCoreUseFwdBwdAlgorithmBoolHistory);
  v14 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v14, "FstCoreLockPelScoreCache", &byte_262899963, &byte_262899963, &sFstCoreLockPelScoreCacheBoolHistory);
  v13 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v13, "FstCoreCollectTracesPeriod", &byte_262899963, &byte_262899963, &sFstCoreCollectTracesPeriodIntHistory);
  v12 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v12, "FstCoreBackoffThreshScore", &byte_262899963, &byte_262899963, &sFstCoreBackoffThreshScoreIntHistory);
  v24 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v24, "SearchPartialExtendWithPrefilterer", &byte_262899963, &byte_262899963, &sSearchPartialExtendWithPrefiltererBoolHistory);
  v3 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v3, "SearchPartialIncludePrefiltererResult", &byte_262899963, &byte_262899963, &sSearchPartialIncludePrefiltererResultEnumHistory);
  v4 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v4, "SearchPartialIncompleteMaxWords", &byte_262899963, &byte_262899963, &sSearchPartialIncompleteMaxWordsIntHistory);
  v5 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v5, "SearchPartialIncompleteMinListFrames", &byte_262899963, &byte_262899963, &sSearchPartialIncompleteMinListFramesIntHistory);
  v6 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v6, "SearchPartialIncompleteMinWordFrames", &byte_262899963, &byte_262899963, &sSearchPartialIncompleteMinWordFramesIntHistory);
  v7 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v7, "SearchPartialCompleteMinWordFrames", &byte_262899963, &byte_262899963, &sSearchPartialCompleteMinWordFramesIntHistory);
  v8 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v8, "SearchPartialRegularMinWordFrames", &byte_262899963, &byte_262899963, &sSearchPartialRegularMinWordFramesIntHistory);
  ParamSpecMgr::addParam(qword_281051FB8, v0);
  ParamSpecMgr::addParam(qword_281051FB8, v91);
  ParamSpecMgr::addParam(qword_281051FB8, v60);
  ParamSpecMgr::addParam(qword_281051FB8, v58);
  ParamSpecMgr::addParam(qword_281051FB8, v56);
  ParamSpecMgr::addParam(qword_281051FB8, v97);
  ParamSpecMgr::addParam(qword_281051FB8, v96);
  ParamSpecMgr::addParam(qword_281051FB8, v98);
  ParamSpecMgr::addParam(qword_281051FB8, v95);
  ParamSpecMgr::addParam(qword_281051FB8, v81);
  ParamSpecMgr::addParam(qword_281051FB8, v78);
  ParamSpecMgr::addParam(qword_281051FB8, v76);
  ParamSpecMgr::addParam(qword_281051FB8, v75);
  ParamSpecMgr::addParam(qword_281051FB8, v69);
  ParamSpecMgr::addParam(qword_281051FB8, v74);
  ParamSpecMgr::addParam(qword_281051FB8, v105);
  ParamSpecMgr::addParam(qword_281051FB8, v2);
  ParamSpecMgr::addParam(qword_281051FB8, v1);
  ParamSpecMgr::addParam(qword_281051FB8, v11);
  ParamSpecMgr::addParam(qword_281051FB8, v15);
  ParamSpecMgr::addParam(qword_281051FB8, v18);
  ParamSpecMgr::addParam(qword_281051FB8, v21);
  ParamSpecMgr::addParam(qword_281051FB8, v118);
  ParamSpecMgr::addParam(qword_281051FB8, v117);
  ParamSpecMgr::addParam(qword_281051FB8, v114);
  ParamSpecMgr::addParam(qword_281051FB8, v116);
  ParamSpecMgr::addParam(qword_281051FB8, v115);
  ParamSpecMgr::addParam(qword_281051FB8, v64);
  ParamSpecMgr::addParam(qword_281051FB8, v109);
  ParamSpecMgr::addParam(qword_281051FB8, v79);
  ParamSpecMgr::addParam(qword_281051FB8, v70);
  ParamSpecMgr::addParam(qword_281051FB8, v67);
  ParamSpecMgr::addParam(qword_281051FB8, v80);
  ParamSpecMgr::addParam(qword_281051FB8, v77);
  ParamSpecMgr::addParam(qword_281051FB8, v72);
  ParamSpecMgr::addParam(qword_281051FB8, v86);
  ParamSpecMgr::addParam(qword_281051FB8, v85);
  ParamSpecMgr::addParam(qword_281051FB8, v52);
  ParamSpecMgr::addParam(qword_281051FB8, v51);
  ParamSpecMgr::addParam(qword_281051FB8, v50);
  ParamSpecMgr::addParam(qword_281051FB8, v54);
  ParamSpecMgr::addParam(qword_281051FB8, v38);
  ParamSpecMgr::addParam(qword_281051FB8, v36);
  ParamSpecMgr::addParam(qword_281051FB8, v61);
  ParamSpecMgr::addParam(qword_281051FB8, v100);
  ParamSpecMgr::addParam(qword_281051FB8, v101);
  ParamSpecMgr::addParam(qword_281051FB8, v102);
  ParamSpecMgr::addParam(qword_281051FB8, v104);
  ParamSpecMgr::addParam(qword_281051FB8, v45);
  ParamSpecMgr::addParam(qword_281051FB8, v49);
  ParamSpecMgr::addParam(qword_281051FB8, v48);
  ParamSpecMgr::addParam(qword_281051FB8, v99);
  ParamSpecMgr::addParam(qword_281051FB8, v40);
  ParamSpecMgr::addParam(qword_281051FB8, v62);
  ParamSpecMgr::addParam(qword_281051FB8, v63);
  ParamSpecMgr::addParam(qword_281051FB8, v53);
  ParamSpecMgr::addParam(qword_281051FB8, v55);
  ParamSpecMgr::addParam(qword_281051FB8, v119);
  ParamSpecMgr::addParam(qword_281051FB8, v65);
  ParamSpecMgr::addParam(qword_281051FB8, v68);
  ParamSpecMgr::addParam(qword_281051FB8, v71);
  ParamSpecMgr::addParam(qword_281051FB8, v66);
  ParamSpecMgr::addParam(qword_281051FB8, v121);
  ParamSpecMgr::addParam(qword_281051FB8, v127);
  ParamSpecMgr::addParam(qword_281051FB8, v126);
  ParamSpecMgr::addParam(qword_281051FB8, v103);
  ParamSpecMgr::addParam(qword_281051FB8, v35);
  ParamSpecMgr::addParam(qword_281051FB8, v34);
  ParamSpecMgr::addParam(qword_281051FB8, v33);
  ParamSpecMgr::addParam(qword_281051FB8, v83);
  ParamSpecMgr::addParam(qword_281051FB8, v84);
  ParamSpecMgr::addParam(qword_281051FB8, v120);
  ParamSpecMgr::addParam(qword_281051FB8, v113);
  ParamSpecMgr::addParam(qword_281051FB8, v112);
  ParamSpecMgr::addParam(qword_281051FB8, v123);
  ParamSpecMgr::addParam(qword_281051FB8, v125);
  ParamSpecMgr::addParam(qword_281051FB8, v124);
  ParamSpecMgr::addParam(qword_281051FB8, v110);
  ParamSpecMgr::addParam(qword_281051FB8, v108);
  ParamSpecMgr::addParam(qword_281051FB8, v111);
  ParamSpecMgr::addParam(qword_281051FB8, v107);
  ParamSpecMgr::addParam(qword_281051FB8, v106);
  ParamSpecMgr::addParam(qword_281051FB8, v42);
  ParamSpecMgr::addParam(qword_281051FB8, v37);
  ParamSpecMgr::addParam(qword_281051FB8, v32);
  ParamSpecMgr::addParam(qword_281051FB8, v31);
  ParamSpecMgr::addParam(qword_281051FB8, v29);
  ParamSpecMgr::addParam(qword_281051FB8, v27);
  ParamSpecMgr::addParam(qword_281051FB8, v26);
  ParamSpecMgr::addParam(qword_281051FB8, v25);
  ParamSpecMgr::addParam(qword_281051FB8, v23);
  ParamSpecMgr::addParam(qword_281051FB8, v90);
  ParamSpecMgr::addParam(qword_281051FB8, v122);
  ParamSpecMgr::addParam(qword_281051FB8, v93);
  ParamSpecMgr::addParam(qword_281051FB8, v22);
  ParamSpecMgr::addParam(qword_281051FB8, v20);
  ParamSpecMgr::addParam(qword_281051FB8, v47);
  ParamSpecMgr::addParam(qword_281051FB8, v19);
  ParamSpecMgr::addParam(qword_281051FB8, v28);
  ParamSpecMgr::addParam(qword_281051FB8, v17);
  ParamSpecMgr::addParam(qword_281051FB8, v16);
  ParamSpecMgr::addParam(qword_281051FB8, v14);
  ParamSpecMgr::addParam(qword_281051FB8, v43);
  ParamSpecMgr::addParam(qword_281051FB8, v13);
  ParamSpecMgr::addParam(qword_281051FB8, v12);
  ParamSpecMgr::addParam(qword_281051FB8, v3);
  ParamSpecMgr::addParam(qword_281051FB8, v4);
  ParamSpecMgr::addParam(qword_281051FB8, v5);
  ParamSpecMgr::addParam(qword_281051FB8, v6);
  ParamSpecMgr::addParam(qword_281051FB8, v7);
  ParamSpecMgr::addParam(qword_281051FB8, v8);
  ParamSpecMgr::addParam(qword_281051FB8, v87);
  ParamSpecMgr::addParam(qword_281051FB8, v128);
  ParamSpecMgr::addParam(qword_281051FB8, v89);
  ParamSpecMgr::addParam(qword_281051FB8, v88);
  ParamSpecMgr::addParam(qword_281051FB8, v92);
  ParamSpecMgr::addParam(qword_281051FB8, v94);
  ParamSpecMgr::addParam(qword_281051FB8, v57);
  ParamSpecMgr::addParam(qword_281051FB8, v73);
  ParamSpecMgr::addParam(qword_281051FB8, v82);
  ParamSpecMgr::addParam(qword_281051FB8, v39);
  ParamSpecMgr::addParam(qword_281051FB8, v46);
  ParamSpecMgr::addParam(qword_281051FB8, v30);
  ParamSpecMgr::addParam(qword_281051FB8, v44);
  ParamSpecMgr::addParam(qword_281051FB8, v129);
  ParamSpecMgr::addParam(qword_281051FB8, v41);
  ParamSpecMgr::addParam(qword_281051FB8, v24);
  ParamSpecMgr::addParam(qword_281051FB8, v59);
  v9 = qword_281051FB8;

  return ParamSpecMgr::sortParams(v9);
}

_DWORD *SearchParamSet::SearchParamSet(_DWORD *a1, const char *a2, int a3, int a4, int a5)
{
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 2), a2);
  a1[6] = a3;
  a1[7] = a4;
  a1[8] = a5;
  a1[9] = 0;
  *a1 = &unk_287528020;
  DgnString::DgnString((a1 + 26));
  DgnString::DgnString((a1 + 98));
  DgnString::DgnString((a1 + 114));
  (*(*a1 + 16))(a1);
  return a1;
}

void sub_2626F8E38(_Unwind_Exception *a1)
{
  DgnString::~DgnString((v1 + 57));
  DgnString::~DgnString((v1 + 49));
  DgnString::~DgnString((v1 + 13));
  *v1 = v2;
  DgnString::~DgnString((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t SearchParamSet::SearchParamSet(uint64_t a1, uint64_t a2, char *a3, int a4, int a5, int a6)
{
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 8), a3);
  *(a1 + 24) = a4;
  *(a1 + 28) = a5;
  *(a1 + 32) = a6;
  *(a1 + 36) = 0;
  *a1 = &unk_287528020;
  DgnString::DgnString((a1 + 104));
  DgnString::DgnString((a1 + 392));
  DgnString::DgnString((a1 + 456));
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  DgnString::operator=((a1 + 104), (a2 + 104));
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 196) = *(a2 + 196);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 204) = *(a2 + 204);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 228) = *(a2 + 228);
  *(a1 + 244) = *(a2 + 244);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 260) = *(a2 + 260);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 324) = *(a2 + 324);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 332) = *(a2 + 332);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 337) = *(a2 + 337);
  *(a1 + 340) = *(a2 + 340);
  *(a1 + 344) = *(a2 + 344);
  v11 = *(a2 + 360);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 360) = v11;
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 369) = *(a2 + 369);
  *(a1 + 372) = *(a2 + 372);
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 380) = *(a2 + 380);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 385) = *(a2 + 385);
  DgnString::operator=((a1 + 392), (a2 + 392));
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 444) = *(a2 + 444);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 450) = *(a2 + 450);
  DgnString::operator=((a1 + 456), (a2 + 456));
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 476) = *(a2 + 476);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 481) = *(a2 + 481);
  *(a1 + 488) = *(a2 + 488);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 512) = *(a2 + 512);
  return a1;
}

void sub_2626F9140(_Unwind_Exception *a1)
{
  DgnString::~DgnString((v1 + 49));
  DgnString::~DgnString((v1 + 13));
  *v1 = v2;
  DgnString::~DgnString((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t SearchParamSet::setDefaults(SearchParamSet *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(this + 40) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 1, 0, 0, a5, a6, a7, a8);
  *(this + 11) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 2, 0, 0, v9, v10, v11, v12);
  *(this + 12) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 3, 0, 0, v13, v14, v15, v16);
  *(this + 52) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 4, 0, 0, v17, v18, v19, v20);
  *(this + 53) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 5, 0, 0, v21, v22, v23, v24);
  *(this + 14) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 6, 0, 0, v25, v26, v27, v28);
  *(this + 15) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 7, 0, 0, v29, v30, v31, v32);
  *(this + 16) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 8, 0, 0, v33, v34, v35, v36);
  *(this + 17) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 9, 0, 0, v37, v38, v39, v40);
  *(this + 72) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 10, 0, 0, v41, v42, v43, v44);
  *(this + 73) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 11, 0, 0, v45, v46, v47, v48);
  *(this + 74) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 12, 0, 0, v49, v50, v51, v52);
  *(this + 75) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 13, 0, 0, v53, v54, v55, v56);
  *(this + 19) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 14, 0, 0, v57, v58, v59, v60);
  *(this + 20) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 15, 0, 0, v61, v62, v63, v64);
  *(this + 21) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 16, 0, 0, v65, v66, v67, v68);
  *(this + 11) = ParamSpecMgr::ParamGetDefault_double(qword_281051FB8, 17, 0, 0, v69, v70, v71, v72);
  *(this + 24) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 18, 0, 0, v73, v74, v75, v76);
  Default_string = ParamSpecMgr::ParamGetDefault_string(qword_281051FB8, 19, 0, 0, v77, v78, v79, v80);
  DgnString::operator=((this + 104), Default_string);
  *(this + 30) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 20, 0, 0, v82, v83, v84, v85);
  *(this + 31) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 21, 0, 0, v86, v87, v88, v89);
  *(this + 32) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 22, 0, 0, v90, v91, v92, v93);
  *(this + 33) = ParamSpecMgr::ParamGetDefault_enum(qword_281051FB8, 23, v94, v95, v96, v97, v98, v99);
  *(this + 17) = ParamSpecMgr::ParamGetDefault_double(qword_281051FB8, 24, 0, 0, v100, v101, v102, v103);
  *(this + 18) = ParamSpecMgr::ParamGetDefault_double(qword_281051FB8, 25, 0, 0, v104, v105, v106, v107);
  *(this + 38) = ParamSpecMgr::ParamGetDefault_enum(qword_281051FB8, 26, v108, v109, v110, v111, v112, v113);
  *(this + 39) = ParamSpecMgr::ParamGetDefault_enum(qword_281051FB8, 27, v114, v115, v116, v117, v118, v119);
  *(this + 40) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 28, 0, 0, v120, v121, v122, v123);
  *(this + 41) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 29, 0, 0, v124, v125, v126, v127);
  *(this + 42) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 30, 0, 0, v128, v129, v130, v131);
  *(this + 43) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 31, 0, 0, v132, v133, v134, v135);
  *(this + 44) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 32, 0, 0, v136, v137, v138, v139);
  *(this + 45) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 33, 0, 0, v140, v141, v142, v143);
  *(this + 46) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 34, 0, 0, v144, v145, v146, v147);
  *(this + 47) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 35, 0, 0, v148, v149, v150, v151);
  *(this + 48) = ParamSpecMgr::ParamGetDefault_enum(qword_281051FB8, 36, v152, v153, v154, v155, v156, v157);
  *(this + 196) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 37, 0, 0, v158, v159, v160, v161);
  *(this + 50) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 38, 0, 0, v162, v163, v164, v165);
  *(this + 204) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 39, 0, 0, v166, v167, v168, v169);
  *(this + 52) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 40, 0, 0, v170, v171, v172, v173);
  *(this + 53) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 41, 0, 0, v174, v175, v176, v177);
  *(this + 54) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 42, 0, 0, v178, v179, v180, v181);
  *(this + 55) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 43, 0, 0, v182, v183, v184, v185);
  *(this + 224) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 44, 0, 0, v186, v187, v188, v189);
  *(this + 57) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 45, 0, 0, v190, v191, v192, v193);
  *(this + 58) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 46, 0, 0, v194, v195, v196, v197);
  *(this + 59) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 47, 0, 0, v198, v199, v200, v201);
  *(this + 60) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 48, 0, 0, v202, v203, v204, v205);
  *(this + 61) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 49, 0, 0, v206, v207, v208, v209);
  *(this + 31) = ParamSpecMgr::ParamGetDefault_double(qword_281051FB8, 50, 0, 0, v210, v211, v212, v213);
  *(this + 64) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 51, 0, 0, v214, v215, v216, v217);
  *(this + 260) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 52, 0, 0, v218, v219, v220, v221);
  *(this + 66) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 53, 0, 0, v222, v223, v224, v225);
  *(this + 67) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 54, 0, 0, v226, v227, v228, v229);
  *(this + 68) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 55, 0, 0, v230, v231, v232, v233);
  *(this + 69) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 56, 0, 0, v234, v235, v236, v237);
  *(this + 70) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 57, 0, 0, v238, v239, v240, v241);
  *(this + 71) = ParamSpecMgr::ParamGetDefault_enum(qword_281051FB8, 58, v242, v243, v244, v245, v246, v247);
  *(this + 72) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 59, 0, 0, v248, v249, v250, v251);
  *(this + 73) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 60, 0, 0, v252, v253, v254, v255);
  *(this + 74) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 61, 0, 0, v256, v257, v258, v259);
  *(this + 75) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 62, 0, 0, v260, v261, v262, v263);
  *(this + 76) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 63, 0, 0, v264, v265, v266, v267);
  *(this + 39) = ParamSpecMgr::ParamGetDefault_double(qword_281051FB8, 64, 0, 0, v268, v269, v270, v271);
  *(this + 320) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 65, 0, 0, v272, v273, v274, v275);
  *(this + 81) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 66, 0, 0, v276, v277, v278, v279);
  *(this + 328) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 67, 0, 0, v280, v281, v282, v283);
  *(this + 83) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 68, 0, 0, v284, v285, v286, v287);
  *(this + 336) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 69, 0, 0, v288, v289, v290, v291);
  *(this + 337) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 70, 0, 0, v292, v293, v294, v295);
  *(this + 85) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 71, 0, 0, v296, v297, v298, v299);
  *(this + 86) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 72, 0, 0, v300, v301, v302, v303);
  *(this + 44) = ParamSpecMgr::ParamGetDefault_double(qword_281051FB8, 73, 0, 0, v304, v305, v306, v307);
  *(this + 90) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 74, 0, 0, v308, v309, v310, v311);
  *(this + 91) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 75, 0, 0, v312, v313, v314, v315);
  *(this + 368) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 76, 0, 0, v316, v317, v318, v319);
  *(this + 369) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 77, 0, 0, v320, v321, v322, v323);
  *(this + 93) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 78, 0, 0, v324, v325, v326, v327);
  *(this + 376) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 79, 0, 0, v328, v329, v330, v331);
  *(this + 95) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 80, 0, 0, v332, v333, v334, v335);
  *(this + 384) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 81, 0, 0, v336, v337, v338, v339);
  *(this + 385) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 82, 0, 0, v340, v341, v342, v343);
  v348 = ParamSpecMgr::ParamGetDefault_string(qword_281051FB8, 83, 0, 0, v344, v345, v346, v347);
  DgnString::operator=((this + 392), v348);
  *(this + 102) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 84, 0, 0, v349, v350, v351, v352);
  *(this + 52) = ParamSpecMgr::ParamGetDefault_double(qword_281051FB8, 85, 0, 0, v353, v354, v355, v356);
  *(this + 53) = ParamSpecMgr::ParamGetDefault_double(qword_281051FB8, 86, 0, 0, v357, v358, v359, v360);
  *(this + 108) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 87, 0, 0, v361, v362, v363, v364);
  *(this + 109) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 88, 0, 0, v365, v366, v367, v368);
  *(this + 110) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 89, 0, 0, v369, v370, v371, v372);
  *(this + 444) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 90, 0, 0, v373, v374, v375, v376);
  *(this + 445) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 91, 0, 0, v377, v378, v379, v380);
  *(this + 446) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 92, 0, 0, v381, v382, v383, v384);
  *(this + 447) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 93, 0, 0, v385, v386, v387, v388);
  *(this + 448) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 94, 0, 0, v389, v390, v391, v392);
  *(this + 449) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 95, 0, 0, v393, v394, v395, v396);
  *(this + 450) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 96, 0, 0, v397, v398, v399, v400);
  v405 = ParamSpecMgr::ParamGetDefault_string(qword_281051FB8, 97, 0, 0, v401, v402, v403, v404);
  DgnString::operator=((this + 456), v405);
  *(this + 472) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 98, 0, 0, v406, v407, v408, v409);
  *(this + 119) = ParamSpecMgr::ParamGetDefault_enum(qword_281051FB8, 99, v410, v411, v412, v413, v414, v415);
  *(this + 480) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 100, 0, 0, v416, v417, v418, v419);
  *(this + 481) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 101, 0, 0, v420, v421, v422, v423);
  *(this + 482) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 102, 0, 0, v424, v425, v426, v427);
  *(this + 61) = ParamSpecMgr::ParamGetDefault_double(qword_281051FB8, 103, 0, 0, v428, v429, v430, v431);
  *(this + 124) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 104, 0, 0, v432, v433, v434, v435);
  *(this + 125) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 105, 0, 0, v436, v437, v438, v439);
  *(this + 126) = ParamSpecMgr::ParamGetDefault_enum(qword_281051FB8, 106, v440, v441, v442, v443, v444, v445);
  *(this + 127) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 107, 0, 0, v446, v447, v448, v449);
  *(this + 128) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 108, 0, 0, v450, v451, v452, v453);
  *(this + 129) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 109, 0, 0, v454, v455, v456, v457);
  *(this + 130) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 110, 0, 0, v458, v459, v460, v461);
  result = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 111, 0, 0, v462, v463, v464, v465);
  *(this + 131) = result;
  return result;
}

uint64_t SearchParamSet::sizeObject(uint64_t a1, int a2)
{
  v4 = sizeObject(a1 + 8) + 16 * (a2 != 3);
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v5 = sizeObject(a1 + 104);
    v6 = sizeObject(a1 + 392);
    v7 = sizeObject(a1 + 456);
    v8 = 11;
    if (a2 == 3)
    {
      v8 = 0;
    }

    v9 = 20;
    if (a2 == 3)
    {
      v9 = 0;
    }

    v4 += v9 + 40 * (a2 != 3) + v8 + 56 * (a2 != 3) + 248 * (a2 != 3) + v5 + v6 + v7;
  }

  return v4;
}

void SearchParamSet::setParamSetSearchConTransAccFactorList(SearchParamSet *this, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 9))
  {
    throwParamSetSetFailed("SearchConTransAccFactorList", "string", a3, a4, a5, a6, a7, a8);
  }

  else
  {
    DgnString::operator=((this + 104), a2);
  }
}

void SearchParamSet::setParamSetSearchHierScorerBeamList(SearchParamSet *this, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 9))
  {
    throwParamSetSetFailed("SearchHierScorerBeamList", "string", a3, a4, a5, a6, a7, a8);
  }

  else
  {
    DgnString::operator=((this + 392), a2);
  }
}

void SearchParamSet::setParamSetSearchHierScorerCutoffRatioList(SearchParamSet *this, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 9))
  {
    throwParamSetSetFailed("SearchHierScorerCutoffRatioList", "string", a3, a4, a5, a6, a7, a8);
  }

  else
  {
    DgnString::operator=((this + 456), a2);
  }
}

uint64_t SearchParamSet::getBoolParameter(_BYTE *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 1:
      if (a3 == 1)
      {
        v12 = qword_281051FB8;
        v13 = 1;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v8 = a1[40];
      return v8 & 1;
    case 2:
      v9 = "int";
      v10 = 2;
      goto LABEL_149;
    case 3:
      v9 = "int";
      v10 = 3;
      goto LABEL_149;
    case 4:
      if (a3 == 1)
      {
        v12 = qword_281051FB8;
        v13 = 4;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v8 = a1[52];
      return v8 & 1;
    case 5:
      if (a3 == 1)
      {
        v12 = qword_281051FB8;
        v13 = 5;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v8 = a1[53];
      return v8 & 1;
    case 6:
      v9 = "int";
      v10 = 6;
      goto LABEL_149;
    case 7:
      v9 = "int";
      v10 = 7;
      goto LABEL_149;
    case 8:
      v9 = "int";
      v10 = 8;
      goto LABEL_149;
    case 9:
      v9 = "int";
      v10 = 9;
      goto LABEL_149;
    case 10:
      if (a3 == 1)
      {
        v12 = qword_281051FB8;
        v13 = 10;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v8 = a1[72];
      return v8 & 1;
    case 11:
      if (a3 == 1)
      {
        v12 = qword_281051FB8;
        v13 = 11;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v8 = a1[73];
      return v8 & 1;
    case 12:
      if (a3 == 1)
      {
        v12 = qword_281051FB8;
        v13 = 12;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v8 = a1[74];
      return v8 & 1;
    case 13:
      if (a3 == 1)
      {
        v12 = qword_281051FB8;
        v13 = 13;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v8 = a1[75];
      return v8 & 1;
    case 14:
      v9 = "int";
      v10 = 14;
      goto LABEL_149;
    case 15:
      v9 = "int";
      v10 = 15;
      goto LABEL_149;
    case 16:
      v9 = "int";
      v10 = 16;
      goto LABEL_149;
    case 17:
      v9 = "double";
      v10 = 17;
      goto LABEL_149;
    case 18:
      v9 = "int";
      v10 = 18;
      goto LABEL_149;
    case 19:
      v9 = "string";
      v10 = 19;
      goto LABEL_149;
    case 20:
      v9 = "int";
      v10 = 20;
      goto LABEL_149;
    case 21:
      v9 = "int";
      v10 = 21;
      goto LABEL_149;
    case 22:
      v9 = "int";
      v10 = 22;
      goto LABEL_149;
    case 23:
      v9 = "enum";
      v10 = 23;
      goto LABEL_149;
    case 24:
      v9 = "double";
      v10 = 24;
      goto LABEL_149;
    case 25:
      v9 = "double";
      v10 = 25;
      goto LABEL_149;
    case 26:
      v9 = "enum";
      v10 = 26;
      goto LABEL_149;
    case 27:
      v9 = "enum";
      v10 = 27;
      goto LABEL_149;
    case 28:
      v9 = "int";
      v10 = 28;
      goto LABEL_149;
    case 29:
      v9 = "int";
      v10 = 29;
      goto LABEL_149;
    case 30:
      v9 = "int";
      v10 = 30;
      goto LABEL_149;
    case 31:
      v9 = "int";
      v10 = 31;
      goto LABEL_149;
    case 32:
      v9 = "int";
      v10 = 32;
      goto LABEL_149;
    case 33:
      v9 = "int";
      v10 = 33;
      goto LABEL_149;
    case 34:
      v9 = "int";
      v10 = 34;
      goto LABEL_149;
    case 35:
      v9 = "int";
      v10 = 35;
      goto LABEL_149;
    case 36:
      v9 = "enum";
      v10 = 36;
      goto LABEL_149;
    case 37:
      if (a3 == 1)
      {
        v12 = qword_281051FB8;
        v13 = 37;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v8 = a1[196];
      return v8 & 1;
    case 38:
      v9 = "int";
      v10 = 38;
      goto LABEL_149;
    case 39:
      if (a3 == 1)
      {
        v12 = qword_281051FB8;
        v13 = 39;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v8 = a1[204];
      return v8 & 1;
    case 40:
      v9 = "int";
      v10 = 40;
      goto LABEL_149;
    case 41:
      v9 = "int";
      v10 = 41;
      goto LABEL_149;
    case 42:
      v9 = "int";
      v10 = 42;
      goto LABEL_149;
    case 43:
      v9 = "int";
      v10 = 43;
      goto LABEL_149;
    case 44:
      if (a3 == 1)
      {
        v12 = qword_281051FB8;
        v13 = 44;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v8 = a1[224];
      return v8 & 1;
    case 45:
      v9 = "int";
      v10 = 45;
      goto LABEL_149;
    case 46:
      v9 = "int";
      v10 = 46;
      goto LABEL_149;
    case 47:
      v9 = "int";
      v10 = 47;
      goto LABEL_149;
    case 48:
      v9 = "int";
      v10 = 48;
      goto LABEL_149;
    case 49:
      v9 = "int";
      v10 = 49;
      goto LABEL_149;
    case 50:
      v9 = "double";
      v10 = 50;
      goto LABEL_149;
    case 51:
      v9 = "int";
      v10 = 51;
      goto LABEL_149;
    case 52:
      if (a3 == 1)
      {
        v12 = qword_281051FB8;
        v13 = 52;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v8 = a1[260];
      return v8 & 1;
    case 53:
      v9 = "int";
      v10 = 53;
      goto LABEL_149;
    case 54:
      v9 = "int";
      v10 = 54;
      goto LABEL_149;
    case 55:
      v9 = "int";
      v10 = 55;
      goto LABEL_149;
    case 56:
      v9 = "int";
      v10 = 56;
      goto LABEL_149;
    case 57:
      v9 = "int";
      v10 = 57;
      goto LABEL_149;
    case 58:
      v9 = "enum";
      v10 = 58;
      goto LABEL_149;
    case 59:
      v9 = "int";
      v10 = 59;
      goto LABEL_149;
    case 60:
      v9 = "int";
      v10 = 60;
      goto LABEL_149;
    case 61:
      v9 = "int";
      v10 = 61;
      goto LABEL_149;
    case 62:
      v9 = "int";
      v10 = 62;
      goto LABEL_149;
    case 63:
      v9 = "int";
      v10 = 63;
      goto LABEL_149;
    case 64:
      v9 = "double";
      v10 = 64;
      goto LABEL_149;
    case 65:
      if (a3 == 1)
      {
        v12 = qword_281051FB8;
        v13 = 65;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v8 = a1[320];
      return v8 & 1;
    case 66:
      v9 = "int";
      v10 = 66;
      goto LABEL_149;
    case 67:
      if (a3 == 1)
      {
        v12 = qword_281051FB8;
        v13 = 67;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v8 = a1[328];
      return v8 & 1;
    case 68:
      v9 = "int";
      v10 = 68;
      goto LABEL_149;
    case 69:
      if (a3 == 1)
      {
        v12 = qword_281051FB8;
        v13 = 69;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v8 = a1[336];
      return v8 & 1;
    case 70:
      if (a3 == 1)
      {
        v12 = qword_281051FB8;
        v13 = 70;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v8 = a1[337];
      return v8 & 1;
    case 71:
      v9 = "int";
      v10 = 71;
      goto LABEL_149;
    case 72:
      v9 = "int";
      v10 = 72;
      goto LABEL_149;
    case 73:
      v9 = "double";
      v10 = 73;
      goto LABEL_149;
    case 74:
      v9 = "int";
      v10 = 74;
      goto LABEL_149;
    case 75:
      v9 = "int";
      v10 = 75;
      goto LABEL_149;
    case 76:
      if (a3 == 1)
      {
        v12 = qword_281051FB8;
        v13 = 76;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v8 = a1[368];
      return v8 & 1;
    case 77:
      if (a3 == 1)
      {
        v12 = qword_281051FB8;
        v13 = 77;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v8 = a1[369];
      return v8 & 1;
    case 78:
      v9 = "int";
      v10 = 78;
      goto LABEL_149;
    case 79:
      if (a3 == 1)
      {
        v12 = qword_281051FB8;
        v13 = 79;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v8 = a1[376];
      return v8 & 1;
    case 80:
      v9 = "int";
      v10 = 80;
      goto LABEL_149;
    case 81:
      if (a3 == 1)
      {
        v12 = qword_281051FB8;
        v13 = 81;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v8 = a1[384];
      return v8 & 1;
    case 82:
      if (a3 == 1)
      {
        v12 = qword_281051FB8;
        v13 = 82;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v8 = a1[385];
      return v8 & 1;
    case 83:
      v9 = "string";
      v10 = 83;
      goto LABEL_149;
    case 84:
      v9 = "int";
      v10 = 84;
      goto LABEL_149;
    case 85:
      v9 = "double";
      v10 = 85;
      goto LABEL_149;
    case 86:
      v9 = "double";
      v10 = 86;
      goto LABEL_149;
    case 87:
      v9 = "int";
      v10 = 87;
      goto LABEL_149;
    case 88:
      v9 = "int";
      v10 = 88;
      goto LABEL_149;
    case 89:
      v9 = "int";
      v10 = 89;
      goto LABEL_149;
    case 90:
      if (a3 == 1)
      {
        v12 = qword_281051FB8;
        v13 = 90;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v8 = a1[444];
      return v8 & 1;
    case 91:
      if (a3 == 1)
      {
        v12 = qword_281051FB8;
        v13 = 91;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v8 = a1[445];
      return v8 & 1;
    case 92:
      if (a3 == 1)
      {
        v12 = qword_281051FB8;
        v13 = 92;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v8 = a1[446];
      return v8 & 1;
    case 93:
      if (a3 == 1)
      {
        v12 = qword_281051FB8;
        v13 = 93;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v8 = a1[447];
      return v8 & 1;
    case 94:
      if (a3 == 1)
      {
        v12 = qword_281051FB8;
        v13 = 94;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v8 = a1[448];
      return v8 & 1;
    case 95:
      if (a3 == 1)
      {
        v12 = qword_281051FB8;
        v13 = 95;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v8 = a1[449];
      return v8 & 1;
    case 96:
      if (a3 == 1)
      {
        v12 = qword_281051FB8;
        v13 = 96;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v8 = a1[450];
      return v8 & 1;
    case 97:
      v9 = "string";
      v10 = 97;
      goto LABEL_149;
    case 98:
      if (a3 == 1)
      {
        v12 = qword_281051FB8;
        v13 = 98;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v8 = a1[472];
      return v8 & 1;
    case 99:
      v9 = "enum";
      v10 = 99;
      goto LABEL_149;
    case 100:
      if (a3 == 1)
      {
        v12 = qword_281051FB8;
        v13 = 100;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v8 = a1[480];
      return v8 & 1;
    case 101:
      if (a3 == 1)
      {
        v12 = qword_281051FB8;
        v13 = 101;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v8 = a1[481];
      break;
    case 102:
      if (a3 == 1)
      {
        v12 = qword_281051FB8;
        v13 = 102;
LABEL_211:
        ParamByParamId = ParamSpecMgr::getParamByParamId(v12, v13, a3, a4, a5, a6, a7, a8);
        v15 = **ParamByParamId;
      }

      else if (a3)
      {
LABEL_179:
        throwWrongQueryMode(a3, "BOOL", a3, a4, a5, a6, a7, a8);
LABEL_150:
        v8 = 0;
      }

      else
      {
        v8 = a1[482];
      }

      break;
    case 103:
      v9 = "double";
      v10 = 103;
      goto LABEL_149;
    case 104:
      v9 = "int";
      v10 = 104;
      goto LABEL_149;
    case 105:
      v9 = "int";
      v10 = 105;
      goto LABEL_149;
    case 106:
      v9 = "enum";
      v10 = 106;
      goto LABEL_149;
    case 107:
      v9 = "int";
      v10 = 107;
      goto LABEL_149;
    case 108:
      v9 = "int";
      v10 = 108;
      goto LABEL_149;
    case 109:
      v9 = "int";
      v10 = 109;
      goto LABEL_149;
    case 110:
      v9 = "int";
      v10 = 110;
      goto LABEL_149;
    case 111:
      v9 = "int";
      v10 = 111;
LABEL_149:
      throwWrongTypeForParamId(v10, v9, "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_150;
    default:
      throwWrongParamIdValue(a2, "BOOL", a3, a4, a5, a6, a7, a8);
      goto LABEL_150;
  }

  return v8 & 1;
}

uint64_t SearchParamSet::getIntParameter(unsigned int *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 1:
      v8 = "BOOL";
      v9 = 1;
      goto LABEL_298;
    case 2:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[11];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 2;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 2;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 2;
      goto LABEL_484;
    case 3:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[12];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 3;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 3;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 3;
      goto LABEL_484;
    case 4:
      v8 = "BOOL";
      v9 = 4;
      goto LABEL_298;
    case 5:
      v8 = "BOOL";
      v9 = 5;
      goto LABEL_298;
    case 6:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[14];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 6;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 6;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 6;
      goto LABEL_484;
    case 7:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[15];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 7;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 7;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 7;
      goto LABEL_484;
    case 8:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[16];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 8;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 8;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 8;
      goto LABEL_484;
    case 9:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[17];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 9;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 9;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 9;
      goto LABEL_484;
    case 10:
      v8 = "BOOL";
      v9 = 10;
      goto LABEL_298;
    case 11:
      v8 = "BOOL";
      v9 = 11;
      goto LABEL_298;
    case 12:
      v8 = "BOOL";
      v9 = 12;
      goto LABEL_298;
    case 13:
      v8 = "BOOL";
      v9 = 13;
      goto LABEL_298;
    case 14:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[19];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 14;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 14;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 14;
      goto LABEL_484;
    case 15:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[20];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 15;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 15;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 15;
      goto LABEL_484;
    case 16:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[21];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 16;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 16;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 16;
      goto LABEL_484;
    case 17:
      v8 = "double";
      v9 = 17;
      goto LABEL_298;
    case 18:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[24];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 18;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 18;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 18;
      goto LABEL_484;
    case 19:
      v8 = "string";
      v9 = 19;
      goto LABEL_298;
    case 20:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[30];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 20;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 20;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 20;
      goto LABEL_484;
    case 21:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[31];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 21;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 21;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 21;
      goto LABEL_484;
    case 22:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[32];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 22;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 22;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 22;
      goto LABEL_484;
    case 23:
      v8 = "enum";
      v9 = 23;
      goto LABEL_298;
    case 24:
      v8 = "double";
      v9 = 24;
      goto LABEL_298;
    case 25:
      v8 = "double";
      v9 = 25;
      goto LABEL_298;
    case 26:
      v8 = "enum";
      v9 = 26;
      goto LABEL_298;
    case 27:
      v8 = "enum";
      v9 = 27;
      goto LABEL_298;
    case 28:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[40];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 28;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 28;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 28;
      goto LABEL_484;
    case 29:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[41];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 29;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 29;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 29;
      goto LABEL_484;
    case 30:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[42];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 30;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 30;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 30;
      goto LABEL_484;
    case 31:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[43];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 31;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 31;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 31;
      goto LABEL_484;
    case 32:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[44];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 32;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 32;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 32;
      goto LABEL_484;
    case 33:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[45];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 33;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 33;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 33;
      goto LABEL_484;
    case 34:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[46];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 34;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 34;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 34;
      goto LABEL_484;
    case 35:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[47];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 35;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 35;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 35;
      goto LABEL_484;
    case 36:
      v8 = "enum";
      v9 = 36;
      goto LABEL_298;
    case 37:
      v8 = "BOOL";
      v9 = 37;
      goto LABEL_298;
    case 38:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[50];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 38;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 38;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 38;
      goto LABEL_484;
    case 39:
      v8 = "BOOL";
      v9 = 39;
      goto LABEL_298;
    case 40:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[52];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 40;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 40;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 40;
      goto LABEL_484;
    case 41:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[53];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 41;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 41;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 41;
      goto LABEL_484;
    case 42:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[54];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 42;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 42;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 42;
      goto LABEL_484;
    case 43:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[55];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 43;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 43;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 43;
      goto LABEL_484;
    case 44:
      v8 = "BOOL";
      v9 = 44;
      goto LABEL_298;
    case 45:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[57];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 45;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 45;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 45;
      goto LABEL_484;
    case 46:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[58];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 46;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 46;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 46;
      goto LABEL_484;
    case 47:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[59];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 47;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 47;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 47;
      goto LABEL_484;
    case 48:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[60];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 48;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 48;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 48;
      goto LABEL_484;
    case 49:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[61];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 49;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 49;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 49;
      goto LABEL_484;
    case 50:
      v8 = "double";
      v9 = 50;
      goto LABEL_298;
    case 51:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[64];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 51;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 51;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 51;
      goto LABEL_484;
    case 52:
      v8 = "BOOL";
      v9 = 52;
      goto LABEL_298;
    case 53:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[66];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 53;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 53;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 53;
      goto LABEL_484;
    case 54:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[67];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 54;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 54;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 54;
      goto LABEL_484;
    case 55:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[68];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 55;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 55;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 55;
      goto LABEL_484;
    case 56:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[69];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 56;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 56;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 56;
      goto LABEL_484;
    case 57:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[70];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 57;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 57;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 57;
      goto LABEL_484;
    case 58:
      v8 = "enum";
      v9 = 58;
      goto LABEL_298;
    case 59:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[72];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 59;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 59;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 59;
      goto LABEL_484;
    case 60:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[73];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 60;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 60;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 60;
      goto LABEL_484;
    case 61:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[74];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 61;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 61;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 61;
      goto LABEL_484;
    case 62:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[75];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 62;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 62;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 62;
      goto LABEL_484;
    case 63:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[76];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 63;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 63;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 63;
      goto LABEL_484;
    case 64:
      v8 = "double";
      v9 = 64;
      goto LABEL_298;
    case 65:
      v8 = "BOOL";
      v9 = 65;
      goto LABEL_298;
    case 66:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[81];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 66;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 66;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 66;
      goto LABEL_484;
    case 67:
      v8 = "BOOL";
      v9 = 67;
      goto LABEL_298;
    case 68:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[83];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 68;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 68;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 68;
      goto LABEL_484;
    case 69:
      v8 = "BOOL";
      v9 = 69;
      goto LABEL_298;
    case 70:
      v8 = "BOOL";
      v9 = 70;
      goto LABEL_298;
    case 71:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[85];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 71;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 71;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 71;
      goto LABEL_484;
    case 72:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[86];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 72;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 72;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 72;
      goto LABEL_484;
    case 73:
      v8 = "double";
      v9 = 73;
      goto LABEL_298;
    case 74:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[90];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 74;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 74;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 74;
      goto LABEL_484;
    case 75:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[91];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 75;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 75;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 75;
      goto LABEL_484;
    case 76:
      v8 = "BOOL";
      v9 = 76;
      goto LABEL_298;
    case 77:
      v8 = "BOOL";
      v9 = 77;
      goto LABEL_298;
    case 78:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[93];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 78;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 78;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 78;
      goto LABEL_484;
    case 79:
      v8 = "BOOL";
      v9 = 79;
      goto LABEL_298;
    case 80:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[95];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 80;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 80;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 80;
      goto LABEL_484;
    case 81:
      v8 = "BOOL";
      v9 = 81;
      goto LABEL_298;
    case 82:
      v8 = "BOOL";
      v9 = 82;
      goto LABEL_298;
    case 83:
      v8 = "string";
      v9 = 83;
      goto LABEL_298;
    case 84:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[102];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 84;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 84;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 84;
      goto LABEL_484;
    case 85:
      v8 = "double";
      v9 = 85;
      goto LABEL_298;
    case 86:
      v8 = "double";
      v9 = 86;
      goto LABEL_298;
    case 87:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[108];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 87;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 87;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 87;
      goto LABEL_484;
    case 88:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[109];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 88;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 88;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 88;
      goto LABEL_484;
    case 89:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[110];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 89;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 89;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 89;
      goto LABEL_484;
    case 90:
      v8 = "BOOL";
      v9 = 90;
      goto LABEL_298;
    case 91:
      v8 = "BOOL";
      v9 = 91;
      goto LABEL_298;
    case 92:
      v8 = "BOOL";
      v9 = 92;
      goto LABEL_298;
    case 93:
      v8 = "BOOL";
      v9 = 93;
      goto LABEL_298;
    case 94:
      v8 = "BOOL";
      v9 = 94;
      goto LABEL_298;
    case 95:
      v8 = "BOOL";
      v9 = 95;
      goto LABEL_298;
    case 96:
      v8 = "BOOL";
      v9 = 96;
      goto LABEL_298;
    case 97:
      v8 = "string";
      v9 = 97;
      goto LABEL_298;
    case 98:
      v8 = "BOOL";
      v9 = 98;
      goto LABEL_298;
    case 99:
      v8 = "enum";
      v9 = 99;
      goto LABEL_298;
    case 100:
      v8 = "BOOL";
      v9 = 100;
      goto LABEL_298;
    case 101:
      v8 = "BOOL";
      v9 = 101;
      goto LABEL_298;
    case 102:
      v8 = "BOOL";
      v9 = 102;
      goto LABEL_298;
    case 103:
      v8 = "double";
      v9 = 103;
      goto LABEL_298;
    case 104:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[124];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 104;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 104;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 104;
      goto LABEL_484;
    case 105:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[125];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 105;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 105;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 105;
      goto LABEL_484;
    case 106:
      v8 = "enum";
      v9 = 106;
LABEL_298:
      throwWrongTypeForParamId(v9, v8, "int", a4, a5, a6, a7, a8);
      return 0;
    case 107:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[127];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 107;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 107;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 107;
      goto LABEL_484;
    case 108:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[128];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 108;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 108;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 108;
      goto LABEL_484;
    case 109:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[129];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 109;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 109;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 109;
      goto LABEL_484;
    case 110:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[130];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v10 = qword_281051FB8;
        v11 = 110;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 110;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 110;
      goto LABEL_484;
    case 111:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[131];
        }

        if (a3 == 1)
        {
          v10 = qword_281051FB8;
          v11 = 111;
LABEL_288:
          ParamByParamId = ParamSpecMgr::getParamByParamId(v10, v11, a3, a4, a5, a6, a7, a8);
          v13 = **ParamByParamId;
        }

LABEL_485:
        throwWrongQueryMode(a3, "int", a3, a4, a5, a6, a7, a8);
        return 0;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 111;
LABEL_608:
        v21 = ParamSpecMgr::getParamByParamId(v19, v20, a3, a4, a5, a6, a7, a8);
        v22 = **v21;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v15 = qword_281051FB8;
      v16 = 111;
LABEL_484:
      v17 = ParamSpecMgr::getParamByParamId(v15, v16, a3, a4, a5, a6, a7, a8);
      v18 = **v17;
    default:
      throwWrongParamIdValue(a2, "int", a3, a4, a5, a6, a7, a8);
      return 0;
  }
}

double SearchParamSet::getDoubleParameter(double *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 1:
      v8 = "BOOL";
      v9 = 1;
      goto LABEL_142;
    case 2:
      v8 = "int";
      v9 = 2;
      goto LABEL_142;
    case 3:
      v8 = "int";
      v9 = 3;
      goto LABEL_142;
    case 4:
      v8 = "BOOL";
      v9 = 4;
      goto LABEL_142;
    case 5:
      v8 = "BOOL";
      v9 = 5;
      goto LABEL_142;
    case 6:
      v8 = "int";
      v9 = 6;
      goto LABEL_142;
    case 7:
      v8 = "int";
      v9 = 7;
      goto LABEL_142;
    case 8:
      v8 = "int";
      v9 = 8;
      goto LABEL_142;
    case 9:
      v8 = "int";
      v9 = 9;
      goto LABEL_142;
    case 10:
      v8 = "BOOL";
      v9 = 10;
      goto LABEL_142;
    case 11:
      v8 = "BOOL";
      v9 = 11;
      goto LABEL_142;
    case 12:
      v8 = "BOOL";
      v9 = 12;
      goto LABEL_142;
    case 13:
      v8 = "BOOL";
      v9 = 13;
      goto LABEL_142;
    case 14:
      v8 = "int";
      v9 = 14;
      goto LABEL_142;
    case 15:
      v8 = "int";
      v9 = 15;
      goto LABEL_142;
    case 16:
      v8 = "int";
      v9 = 16;
      goto LABEL_142;
    case 17:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[11];
        }

        if (a3 != 1)
        {
          goto LABEL_173;
        }

        v10 = qword_281051FB8;
        v11 = 17;
        goto LABEL_123;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 17;
        goto LABEL_192;
      }

      if (a3 != 3)
      {
        goto LABEL_173;
      }

      v15 = qword_281051FB8;
      v16 = 17;
      goto LABEL_172;
    case 18:
      v8 = "int";
      v9 = 18;
      goto LABEL_142;
    case 19:
      v8 = "string";
      v9 = 19;
      goto LABEL_142;
    case 20:
      v8 = "int";
      v9 = 20;
      goto LABEL_142;
    case 21:
      v8 = "int";
      v9 = 21;
      goto LABEL_142;
    case 22:
      v8 = "int";
      v9 = 22;
      goto LABEL_142;
    case 23:
      v8 = "enum";
      v9 = 23;
      goto LABEL_142;
    case 24:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[17];
        }

        if (a3 != 1)
        {
          goto LABEL_173;
        }

        v10 = qword_281051FB8;
        v11 = 24;
        goto LABEL_123;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 24;
        goto LABEL_192;
      }

      if (a3 != 3)
      {
        goto LABEL_173;
      }

      v15 = qword_281051FB8;
      v16 = 24;
      goto LABEL_172;
    case 25:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[18];
        }

        if (a3 != 1)
        {
          goto LABEL_173;
        }

        v10 = qword_281051FB8;
        v11 = 25;
        goto LABEL_123;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 25;
        goto LABEL_192;
      }

      if (a3 != 3)
      {
        goto LABEL_173;
      }

      v15 = qword_281051FB8;
      v16 = 25;
      goto LABEL_172;
    case 26:
      v8 = "enum";
      v9 = 26;
      goto LABEL_142;
    case 27:
      v8 = "enum";
      v9 = 27;
      goto LABEL_142;
    case 28:
      v8 = "int";
      v9 = 28;
      goto LABEL_142;
    case 29:
      v8 = "int";
      v9 = 29;
      goto LABEL_142;
    case 30:
      v8 = "int";
      v9 = 30;
      goto LABEL_142;
    case 31:
      v8 = "int";
      v9 = 31;
      goto LABEL_142;
    case 32:
      v8 = "int";
      v9 = 32;
      goto LABEL_142;
    case 33:
      v8 = "int";
      v9 = 33;
      goto LABEL_142;
    case 34:
      v8 = "int";
      v9 = 34;
      goto LABEL_142;
    case 35:
      v8 = "int";
      v9 = 35;
      goto LABEL_142;
    case 36:
      v8 = "enum";
      v9 = 36;
      goto LABEL_142;
    case 37:
      v8 = "BOOL";
      v9 = 37;
      goto LABEL_142;
    case 38:
      v8 = "int";
      v9 = 38;
      goto LABEL_142;
    case 39:
      v8 = "BOOL";
      v9 = 39;
      goto LABEL_142;
    case 40:
      v8 = "int";
      v9 = 40;
      goto LABEL_142;
    case 41:
      v8 = "int";
      v9 = 41;
      goto LABEL_142;
    case 42:
      v8 = "int";
      v9 = 42;
      goto LABEL_142;
    case 43:
      v8 = "int";
      v9 = 43;
      goto LABEL_142;
    case 44:
      v8 = "BOOL";
      v9 = 44;
      goto LABEL_142;
    case 45:
      v8 = "int";
      v9 = 45;
      goto LABEL_142;
    case 46:
      v8 = "int";
      v9 = 46;
      goto LABEL_142;
    case 47:
      v8 = "int";
      v9 = 47;
      goto LABEL_142;
    case 48:
      v8 = "int";
      v9 = 48;
      goto LABEL_142;
    case 49:
      v8 = "int";
      v9 = 49;
      goto LABEL_142;
    case 50:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[31];
        }

        if (a3 != 1)
        {
          goto LABEL_173;
        }

        v10 = qword_281051FB8;
        v11 = 50;
        goto LABEL_123;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 50;
        goto LABEL_192;
      }

      if (a3 != 3)
      {
        goto LABEL_173;
      }

      v15 = qword_281051FB8;
      v16 = 50;
      goto LABEL_172;
    case 51:
      v8 = "int";
      v9 = 51;
      goto LABEL_142;
    case 52:
      v8 = "BOOL";
      v9 = 52;
      goto LABEL_142;
    case 53:
      v8 = "int";
      v9 = 53;
      goto LABEL_142;
    case 54:
      v8 = "int";
      v9 = 54;
      goto LABEL_142;
    case 55:
      v8 = "int";
      v9 = 55;
      goto LABEL_142;
    case 56:
      v8 = "int";
      v9 = 56;
      goto LABEL_142;
    case 57:
      v8 = "int";
      v9 = 57;
      goto LABEL_142;
    case 58:
      v8 = "enum";
      v9 = 58;
      goto LABEL_142;
    case 59:
      v8 = "int";
      v9 = 59;
      goto LABEL_142;
    case 60:
      v8 = "int";
      v9 = 60;
      goto LABEL_142;
    case 61:
      v8 = "int";
      v9 = 61;
      goto LABEL_142;
    case 62:
      v8 = "int";
      v9 = 62;
      goto LABEL_142;
    case 63:
      v8 = "int";
      v9 = 63;
      goto LABEL_142;
    case 64:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[39];
        }

        if (a3 != 1)
        {
          goto LABEL_173;
        }

        v10 = qword_281051FB8;
        v11 = 64;
        goto LABEL_123;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 64;
        goto LABEL_192;
      }

      if (a3 != 3)
      {
        goto LABEL_173;
      }

      v15 = qword_281051FB8;
      v16 = 64;
      goto LABEL_172;
    case 65:
      v8 = "BOOL";
      v9 = 65;
      goto LABEL_142;
    case 66:
      v8 = "int";
      v9 = 66;
      goto LABEL_142;
    case 67:
      v8 = "BOOL";
      v9 = 67;
      goto LABEL_142;
    case 68:
      v8 = "int";
      v9 = 68;
      goto LABEL_142;
    case 69:
      v8 = "BOOL";
      v9 = 69;
      goto LABEL_142;
    case 70:
      v8 = "BOOL";
      v9 = 70;
      goto LABEL_142;
    case 71:
      v8 = "int";
      v9 = 71;
      goto LABEL_142;
    case 72:
      v8 = "int";
      v9 = 72;
      goto LABEL_142;
    case 73:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[44];
        }

        if (a3 != 1)
        {
          goto LABEL_173;
        }

        v10 = qword_281051FB8;
        v11 = 73;
        goto LABEL_123;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 73;
        goto LABEL_192;
      }

      if (a3 != 3)
      {
        goto LABEL_173;
      }

      v15 = qword_281051FB8;
      v16 = 73;
      goto LABEL_172;
    case 74:
      v8 = "int";
      v9 = 74;
      goto LABEL_142;
    case 75:
      v8 = "int";
      v9 = 75;
      goto LABEL_142;
    case 76:
      v8 = "BOOL";
      v9 = 76;
      goto LABEL_142;
    case 77:
      v8 = "BOOL";
      v9 = 77;
      goto LABEL_142;
    case 78:
      v8 = "int";
      v9 = 78;
      goto LABEL_142;
    case 79:
      v8 = "BOOL";
      v9 = 79;
      goto LABEL_142;
    case 80:
      v8 = "int";
      v9 = 80;
      goto LABEL_142;
    case 81:
      v8 = "BOOL";
      v9 = 81;
      goto LABEL_142;
    case 82:
      v8 = "BOOL";
      v9 = 82;
      goto LABEL_142;
    case 83:
      v8 = "string";
      v9 = 83;
      goto LABEL_142;
    case 84:
      v8 = "int";
      v9 = 84;
      goto LABEL_142;
    case 85:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[52];
        }

        if (a3 != 1)
        {
          goto LABEL_173;
        }

        v10 = qword_281051FB8;
        v11 = 85;
        goto LABEL_123;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 85;
        goto LABEL_192;
      }

      if (a3 != 3)
      {
        goto LABEL_173;
      }

      v15 = qword_281051FB8;
      v16 = 85;
      goto LABEL_172;
    case 86:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[53];
        }

        if (a3 != 1)
        {
          goto LABEL_173;
        }

        v10 = qword_281051FB8;
        v11 = 86;
        goto LABEL_123;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 86;
        goto LABEL_192;
      }

      if (a3 != 3)
      {
        goto LABEL_173;
      }

      v15 = qword_281051FB8;
      v16 = 86;
      goto LABEL_172;
    case 87:
      v8 = "int";
      v9 = 87;
      goto LABEL_142;
    case 88:
      v8 = "int";
      v9 = 88;
      goto LABEL_142;
    case 89:
      v8 = "int";
      v9 = 89;
      goto LABEL_142;
    case 90:
      v8 = "BOOL";
      v9 = 90;
      goto LABEL_142;
    case 91:
      v8 = "BOOL";
      v9 = 91;
      goto LABEL_142;
    case 92:
      v8 = "BOOL";
      v9 = 92;
      goto LABEL_142;
    case 93:
      v8 = "BOOL";
      v9 = 93;
      goto LABEL_142;
    case 94:
      v8 = "BOOL";
      v9 = 94;
      goto LABEL_142;
    case 95:
      v8 = "BOOL";
      v9 = 95;
      goto LABEL_142;
    case 96:
      v8 = "BOOL";
      v9 = 96;
      goto LABEL_142;
    case 97:
      v8 = "string";
      v9 = 97;
      goto LABEL_142;
    case 98:
      v8 = "BOOL";
      v9 = 98;
      goto LABEL_142;
    case 99:
      v8 = "enum";
      v9 = 99;
      goto LABEL_142;
    case 100:
      v8 = "BOOL";
      v9 = 100;
      goto LABEL_142;
    case 101:
      v8 = "BOOL";
      v9 = 101;
      goto LABEL_142;
    case 102:
      v8 = "BOOL";
      v9 = 102;
      goto LABEL_142;
    case 103:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[61];
        }

        if (a3 == 1)
        {
          v10 = qword_281051FB8;
          v11 = 103;
LABEL_123:
          ParamByParamId = ParamSpecMgr::getParamByParamId(v10, v11, a3, a4, a5, a6, a7, a8);
          v13 = **ParamByParamId;
        }

LABEL_173:
        throwWrongQueryMode(a3, "double", a3, a4, a5, a6, a7, a8);
        return 0.0;
      }

      if (a3 == 2)
      {
        v19 = qword_281051FB8;
        v20 = 103;
LABEL_192:
        v21 = ParamSpecMgr::getParamByParamId(v19, v20, a3, a4, a5, a6, a7, a8);
        v22 = **v21;
      }

      if (a3 != 3)
      {
        goto LABEL_173;
      }

      v15 = qword_281051FB8;
      v16 = 103;
LABEL_172:
      v17 = ParamSpecMgr::getParamByParamId(v15, v16, a3, a4, a5, a6, a7, a8);
      v18 = **v17;
    case 104:
      v8 = "int";
      v9 = 104;
      goto LABEL_142;
    case 105:
      v8 = "int";
      v9 = 105;
      goto LABEL_142;
    case 106:
      v8 = "enum";
      v9 = 106;
      goto LABEL_142;
    case 107:
      v8 = "int";
      v9 = 107;
      goto LABEL_142;
    case 108:
      v8 = "int";
      v9 = 108;
      goto LABEL_142;
    case 109:
      v8 = "int";
      v9 = 109;
      goto LABEL_142;
    case 110:
      v8 = "int";
      v9 = 110;
      goto LABEL_142;
    case 111:
      v8 = "int";
      v9 = 111;
LABEL_142:
      throwWrongTypeForParamId(v9, v8, "double", a4, a5, a6, a7, a8);
      return 0.0;
    default:
      throwWrongParamIdValue(a2, "double", a3, a4, a5, a6, a7, a8);
      return 0.0;
  }
}

char *SearchParamSet::getStringParameter(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 1:
      v8 = "BOOL";
      v9 = 1;
      goto LABEL_124;
    case 2:
      v8 = "int";
      v9 = 2;
      goto LABEL_124;
    case 3:
      v8 = "int";
      v9 = 3;
      goto LABEL_124;
    case 4:
      v8 = "BOOL";
      v9 = 4;
      goto LABEL_124;
    case 5:
      v8 = "BOOL";
      v9 = 5;
      goto LABEL_124;
    case 6:
      v8 = "int";
      v9 = 6;
      goto LABEL_124;
    case 7:
      v8 = "int";
      v9 = 7;
      goto LABEL_124;
    case 8:
      v8 = "int";
      v9 = 8;
      goto LABEL_124;
    case 9:
      v8 = "int";
      v9 = 9;
      goto LABEL_124;
    case 10:
      v8 = "BOOL";
      v9 = 10;
      goto LABEL_124;
    case 11:
      v8 = "BOOL";
      v9 = 11;
      goto LABEL_124;
    case 12:
      v8 = "BOOL";
      v9 = 12;
      goto LABEL_124;
    case 13:
      v8 = "BOOL";
      v9 = 13;
      goto LABEL_124;
    case 14:
      v8 = "int";
      v9 = 14;
      goto LABEL_124;
    case 15:
      v8 = "int";
      v9 = 15;
      goto LABEL_124;
    case 16:
      v8 = "int";
      v9 = 16;
      goto LABEL_124;
    case 17:
      v8 = "double";
      v9 = 17;
      goto LABEL_124;
    case 18:
      v8 = "int";
      v9 = 18;
      goto LABEL_124;
    case 19:
      if (a3 == 1)
      {
        v13 = qword_281051FB8;
        v14 = 19;
        goto LABEL_130;
      }

      if (a3)
      {
        goto LABEL_84;
      }

      v10 = *(a1 + 112);
      v11 = *(a1 + 104);
      goto LABEL_81;
    case 20:
      v8 = "int";
      v9 = 20;
      goto LABEL_124;
    case 21:
      v8 = "int";
      v9 = 21;
      goto LABEL_124;
    case 22:
      v8 = "int";
      v9 = 22;
      goto LABEL_124;
    case 23:
      v8 = "enum";
      v9 = 23;
      goto LABEL_124;
    case 24:
      v8 = "double";
      v9 = 24;
      goto LABEL_124;
    case 25:
      v8 = "double";
      v9 = 25;
      goto LABEL_124;
    case 26:
      v8 = "enum";
      v9 = 26;
      goto LABEL_124;
    case 27:
      v8 = "enum";
      v9 = 27;
      goto LABEL_124;
    case 28:
      v8 = "int";
      v9 = 28;
      goto LABEL_124;
    case 29:
      v8 = "int";
      v9 = 29;
      goto LABEL_124;
    case 30:
      v8 = "int";
      v9 = 30;
      goto LABEL_124;
    case 31:
      v8 = "int";
      v9 = 31;
      goto LABEL_124;
    case 32:
      v8 = "int";
      v9 = 32;
      goto LABEL_124;
    case 33:
      v8 = "int";
      v9 = 33;
      goto LABEL_124;
    case 34:
      v8 = "int";
      v9 = 34;
      goto LABEL_124;
    case 35:
      v8 = "int";
      v9 = 35;
      goto LABEL_124;
    case 36:
      v8 = "enum";
      v9 = 36;
      goto LABEL_124;
    case 37:
      v8 = "BOOL";
      v9 = 37;
      goto LABEL_124;
    case 38:
      v8 = "int";
      v9 = 38;
      goto LABEL_124;
    case 39:
      v8 = "BOOL";
      v9 = 39;
      goto LABEL_124;
    case 40:
      v8 = "int";
      v9 = 40;
      goto LABEL_124;
    case 41:
      v8 = "int";
      v9 = 41;
      goto LABEL_124;
    case 42:
      v8 = "int";
      v9 = 42;
      goto LABEL_124;
    case 43:
      v8 = "int";
      v9 = 43;
      goto LABEL_124;
    case 44:
      v8 = "BOOL";
      v9 = 44;
      goto LABEL_124;
    case 45:
      v8 = "int";
      v9 = 45;
      goto LABEL_124;
    case 46:
      v8 = "int";
      v9 = 46;
      goto LABEL_124;
    case 47:
      v8 = "int";
      v9 = 47;
      goto LABEL_124;
    case 48:
      v8 = "int";
      v9 = 48;
      goto LABEL_124;
    case 49:
      v8 = "int";
      v9 = 49;
      goto LABEL_124;
    case 50:
      v8 = "double";
      v9 = 50;
      goto LABEL_124;
    case 51:
      v8 = "int";
      v9 = 51;
      goto LABEL_124;
    case 52:
      v8 = "BOOL";
      v9 = 52;
      goto LABEL_124;
    case 53:
      v8 = "int";
      v9 = 53;
      goto LABEL_124;
    case 54:
      v8 = "int";
      v9 = 54;
      goto LABEL_124;
    case 55:
      v8 = "int";
      v9 = 55;
      goto LABEL_124;
    case 56:
      v8 = "int";
      v9 = 56;
      goto LABEL_124;
    case 57:
      v8 = "int";
      v9 = 57;
      goto LABEL_124;
    case 58:
      v8 = "enum";
      v9 = 58;
      goto LABEL_124;
    case 59:
      v8 = "int";
      v9 = 59;
      goto LABEL_124;
    case 60:
      v8 = "int";
      v9 = 60;
      goto LABEL_124;
    case 61:
      v8 = "int";
      v9 = 61;
      goto LABEL_124;
    case 62:
      v8 = "int";
      v9 = 62;
      goto LABEL_124;
    case 63:
      v8 = "int";
      v9 = 63;
      goto LABEL_124;
    case 64:
      v8 = "double";
      v9 = 64;
      goto LABEL_124;
    case 65:
      v8 = "BOOL";
      v9 = 65;
      goto LABEL_124;
    case 66:
      v8 = "int";
      v9 = 66;
      goto LABEL_124;
    case 67:
      v8 = "BOOL";
      v9 = 67;
      goto LABEL_124;
    case 68:
      v8 = "int";
      v9 = 68;
      goto LABEL_124;
    case 69:
      v8 = "BOOL";
      v9 = 69;
      goto LABEL_124;
    case 70:
      v8 = "BOOL";
      v9 = 70;
      goto LABEL_124;
    case 71:
      v8 = "int";
      v9 = 71;
      goto LABEL_124;
    case 72:
      v8 = "int";
      v9 = 72;
      goto LABEL_124;
    case 73:
      v8 = "double";
      v9 = 73;
      goto LABEL_124;
    case 74:
      v8 = "int";
      v9 = 74;
      goto LABEL_124;
    case 75:
      v8 = "int";
      v9 = 75;
      goto LABEL_124;
    case 76:
      v8 = "BOOL";
      v9 = 76;
      goto LABEL_124;
    case 77:
      v8 = "BOOL";
      v9 = 77;
      goto LABEL_124;
    case 78:
      v8 = "int";
      v9 = 78;
      goto LABEL_124;
    case 79:
      v8 = "BOOL";
      v9 = 79;
      goto LABEL_124;
    case 80:
      v8 = "int";
      v9 = 80;
      goto LABEL_124;
    case 81:
      v8 = "BOOL";
      v9 = 81;
      goto LABEL_124;
    case 82:
      v8 = "BOOL";
      v9 = 82;
      goto LABEL_124;
    case 83:
      if (a3 == 1)
      {
        v13 = qword_281051FB8;
        v14 = 83;
        goto LABEL_130;
      }

      if (a3)
      {
        goto LABEL_84;
      }

      v10 = *(a1 + 400);
      v11 = *(a1 + 392);
      goto LABEL_81;
    case 84:
      v8 = "int";
      v9 = 84;
      goto LABEL_124;
    case 85:
      v8 = "double";
      v9 = 85;
      goto LABEL_124;
    case 86:
      v8 = "double";
      v9 = 86;
      goto LABEL_124;
    case 87:
      v8 = "int";
      v9 = 87;
      goto LABEL_124;
    case 88:
      v8 = "int";
      v9 = 88;
      goto LABEL_124;
    case 89:
      v8 = "int";
      v9 = 89;
      goto LABEL_124;
    case 90:
      v8 = "BOOL";
      v9 = 90;
      goto LABEL_124;
    case 91:
      v8 = "BOOL";
      v9 = 91;
      goto LABEL_124;
    case 92:
      v8 = "BOOL";
      v9 = 92;
      goto LABEL_124;
    case 93:
      v8 = "BOOL";
      v9 = 93;
      goto LABEL_124;
    case 94:
      v8 = "BOOL";
      v9 = 94;
      goto LABEL_124;
    case 95:
      v8 = "BOOL";
      v9 = 95;
      goto LABEL_124;
    case 96:
      v8 = "BOOL";
      v9 = 96;
      goto LABEL_124;
    case 97:
      if (a3 == 1)
      {
        v13 = qword_281051FB8;
        v14 = 97;
LABEL_130:
        ParamByParamId = ParamSpecMgr::getParamByParamId(v13, v14, a3, a4, a5, a6, a7, a8);
        v16 = **ParamByParamId;
      }

      else if (a3)
      {
LABEL_84:
        throwWrongQueryMode(a3, "string", a3, a4, a5, a6, a7, a8);
        return 0;
      }

      else
      {
        v10 = *(a1 + 464);
        v11 = *(a1 + 456);
LABEL_81:
        if (v10)
        {
          return v11;
        }

        else
        {
          return &byte_262899963;
        }
      }

    case 98:
      v8 = "BOOL";
      v9 = 98;
      goto LABEL_124;
    case 99:
      v8 = "enum";
      v9 = 99;
      goto LABEL_124;
    case 100:
      v8 = "BOOL";
      v9 = 100;
      goto LABEL_124;
    case 101:
      v8 = "BOOL";
      v9 = 101;
      goto LABEL_124;
    case 102:
      v8 = "BOOL";
      v9 = 102;
      goto LABEL_124;
    case 103:
      v8 = "double";
      v9 = 103;
      goto LABEL_124;
    case 104:
      v8 = "int";
      v9 = 104;
      goto LABEL_124;
    case 105:
      v8 = "int";
      v9 = 105;
      goto LABEL_124;
    case 106:
      v8 = "enum";
      v9 = 106;
      goto LABEL_124;
    case 107:
      v8 = "int";
      v9 = 107;
      goto LABEL_124;
    case 108:
      v8 = "int";
      v9 = 108;
      goto LABEL_124;
    case 109:
      v8 = "int";
      v9 = 109;
      goto LABEL_124;
    case 110:
      v8 = "int";
      v9 = 110;
      goto LABEL_124;
    case 111:
      v8 = "int";
      v9 = 111;
LABEL_124:
      throwWrongTypeForParamId(v9, v8, "string", a4, a5, a6, a7, a8);
      return 0;
    default:
      throwWrongParamIdValue(a2, "string", a3, a4, a5, a6, a7, a8);
      return 0;
  }
}

uint64_t SearchParamSet::getEnumParameter(unsigned int *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 1:
      v8 = "BOOL";
      v9 = 1;
      goto LABEL_163;
    case 2:
      v8 = "int";
      v9 = 2;
      goto LABEL_163;
    case 3:
      v8 = "int";
      v9 = 3;
      goto LABEL_163;
    case 4:
      v8 = "BOOL";
      v9 = 4;
      goto LABEL_163;
    case 5:
      v8 = "BOOL";
      v9 = 5;
      goto LABEL_163;
    case 6:
      v8 = "int";
      v9 = 6;
      goto LABEL_163;
    case 7:
      v8 = "int";
      v9 = 7;
      goto LABEL_163;
    case 8:
      v8 = "int";
      v9 = 8;
      goto LABEL_163;
    case 9:
      v8 = "int";
      v9 = 9;
      goto LABEL_163;
    case 10:
      v8 = "BOOL";
      v9 = 10;
      goto LABEL_163;
    case 11:
      v8 = "BOOL";
      v9 = 11;
      goto LABEL_163;
    case 12:
      v8 = "BOOL";
      v9 = 12;
      goto LABEL_163;
    case 13:
      v8 = "BOOL";
      v9 = 13;
      goto LABEL_163;
    case 14:
      v8 = "int";
      v9 = 14;
      goto LABEL_163;
    case 15:
      v8 = "int";
      v9 = 15;
      goto LABEL_163;
    case 16:
      v8 = "int";
      v9 = 16;
      goto LABEL_163;
    case 17:
      v8 = "double";
      v9 = 17;
      goto LABEL_163;
    case 18:
      v8 = "int";
      v9 = 18;
      goto LABEL_163;
    case 19:
      v8 = "string";
      v9 = 19;
      goto LABEL_163;
    case 20:
      v8 = "int";
      v9 = 20;
      goto LABEL_163;
    case 21:
      v8 = "int";
      v9 = 21;
      goto LABEL_163;
    case 22:
      v8 = "int";
      v9 = 22;
      goto LABEL_163;
    case 23:
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v51 = qword_281051FB8;
          v52 = 23;
          goto LABEL_207;
        }

        if (a3 != 3)
        {
          goto LABEL_191;
        }

        v47 = qword_281051FB8;
        v48 = 23;
        goto LABEL_186;
      }

      if (!a3)
      {
        return a1[33];
      }

      if (a3 != 1)
      {
        goto LABEL_191;
      }

      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051FB8, 23, a3, a4, a5, a6, a7, a8);
      v33 = **ParamByParamId;
      if (**(v34 + 24))
      {
        v35 = v34 + 16;
        v36 = 1;
        v15 = v35;
        do
        {
          if (*v15 == 1)
          {
            return *(v15 + 16);
          }

          result = 0;
          v15 = v35 + 32 * v36++;
        }

        while (**(v15 + 8));
        return result;
      }

      return 0;
    case 24:
      v8 = "double";
      v9 = 24;
      goto LABEL_163;
    case 25:
      v8 = "double";
      v9 = 25;
      goto LABEL_163;
    case 26:
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v51 = qword_281051FB8;
          v52 = 26;
          goto LABEL_207;
        }

        if (a3 != 3)
        {
          goto LABEL_191;
        }

        v47 = qword_281051FB8;
        v48 = 26;
        goto LABEL_186;
      }

      if (!a3)
      {
        return a1[38];
      }

      if (a3 != 1)
      {
        goto LABEL_191;
      }

      v22 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 26, a3, a4, a5, a6, a7, a8);
      v23 = **v22;
      if (**(v24 + 24))
      {
        v25 = v24 + 16;
        v26 = 1;
        v15 = v25;
        do
        {
          if (*v15 == 1)
          {
            return *(v15 + 16);
          }

          result = 0;
          v15 = v25 + 32 * v26++;
        }

        while (**(v15 + 8));
        return result;
      }

      return 0;
    case 27:
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v51 = qword_281051FB8;
          v52 = 27;
          goto LABEL_207;
        }

        if (a3 != 3)
        {
          goto LABEL_191;
        }

        v47 = qword_281051FB8;
        v48 = 27;
        goto LABEL_186;
      }

      if (!a3)
      {
        return a1[39];
      }

      if (a3 != 1)
      {
        goto LABEL_191;
      }

      v42 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 27, a3, a4, a5, a6, a7, a8);
      v43 = **v42;
      if (**(v44 + 24))
      {
        v45 = v44 + 16;
        v46 = 1;
        v15 = v45;
        do
        {
          if (*v15 == 1)
          {
            return *(v15 + 16);
          }

          result = 0;
          v15 = v45 + 32 * v46++;
        }

        while (**(v15 + 8));
        return result;
      }

      return 0;
    case 28:
      v8 = "int";
      v9 = 28;
      goto LABEL_163;
    case 29:
      v8 = "int";
      v9 = 29;
      goto LABEL_163;
    case 30:
      v8 = "int";
      v9 = 30;
      goto LABEL_163;
    case 31:
      v8 = "int";
      v9 = 31;
      goto LABEL_163;
    case 32:
      v8 = "int";
      v9 = 32;
      goto LABEL_163;
    case 33:
      v8 = "int";
      v9 = 33;
      goto LABEL_163;
    case 34:
      v8 = "int";
      v9 = 34;
      goto LABEL_163;
    case 35:
      v8 = "int";
      v9 = 35;
      goto LABEL_163;
    case 36:
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v51 = qword_281051FB8;
          v52 = 36;
          goto LABEL_207;
        }

        if (a3 != 3)
        {
          goto LABEL_191;
        }

        v47 = qword_281051FB8;
        v48 = 36;
        goto LABEL_186;
      }

      if (!a3)
      {
        return a1[48];
      }

      if (a3 != 1)
      {
        goto LABEL_191;
      }

      v17 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 36, a3, a4, a5, a6, a7, a8);
      v18 = **v17;
      if (**(v19 + 24))
      {
        v20 = v19 + 16;
        v21 = 1;
        v15 = v20;
        do
        {
          if (*v15 == 1)
          {
            return *(v15 + 16);
          }

          result = 0;
          v15 = v20 + 32 * v21++;
        }

        while (**(v15 + 8));
        return result;
      }

      return 0;
    case 37:
      v8 = "BOOL";
      v9 = 37;
      goto LABEL_163;
    case 38:
      v8 = "int";
      v9 = 38;
      goto LABEL_163;
    case 39:
      v8 = "BOOL";
      v9 = 39;
      goto LABEL_163;
    case 40:
      v8 = "int";
      v9 = 40;
      goto LABEL_163;
    case 41:
      v8 = "int";
      v9 = 41;
      goto LABEL_163;
    case 42:
      v8 = "int";
      v9 = 42;
      goto LABEL_163;
    case 43:
      v8 = "int";
      v9 = 43;
      goto LABEL_163;
    case 44:
      v8 = "BOOL";
      v9 = 44;
      goto LABEL_163;
    case 45:
      v8 = "int";
      v9 = 45;
      goto LABEL_163;
    case 46:
      v8 = "int";
      v9 = 46;
      goto LABEL_163;
    case 47:
      v8 = "int";
      v9 = 47;
      goto LABEL_163;
    case 48:
      v8 = "int";
      v9 = 48;
      goto LABEL_163;
    case 49:
      v8 = "int";
      v9 = 49;
      goto LABEL_163;
    case 50:
      v8 = "double";
      v9 = 50;
      goto LABEL_163;
    case 51:
      v8 = "int";
      v9 = 51;
      goto LABEL_163;
    case 52:
      v8 = "BOOL";
      v9 = 52;
      goto LABEL_163;
    case 53:
      v8 = "int";
      v9 = 53;
      goto LABEL_163;
    case 54:
      v8 = "int";
      v9 = 54;
      goto LABEL_163;
    case 55:
      v8 = "int";
      v9 = 55;
      goto LABEL_163;
    case 56:
      v8 = "int";
      v9 = 56;
      goto LABEL_163;
    case 57:
      v8 = "int";
      v9 = 57;
      goto LABEL_163;
    case 58:
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v51 = qword_281051FB8;
          v52 = 58;
          goto LABEL_207;
        }

        if (a3 != 3)
        {
          goto LABEL_191;
        }

        v47 = qword_281051FB8;
        v48 = 58;
        goto LABEL_186;
      }

      if (!a3)
      {
        return a1[71];
      }

      if (a3 != 1)
      {
        goto LABEL_191;
      }

      v37 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 58, a3, a4, a5, a6, a7, a8);
      v38 = **v37;
      if (**(v39 + 24))
      {
        v40 = v39 + 16;
        v41 = 1;
        v15 = v40;
        do
        {
          if (*v15 == 1)
          {
            return *(v15 + 16);
          }

          result = 0;
          v15 = v40 + 32 * v41++;
        }

        while (**(v15 + 8));
        return result;
      }

      return 0;
    case 59:
      v8 = "int";
      v9 = 59;
      goto LABEL_163;
    case 60:
      v8 = "int";
      v9 = 60;
      goto LABEL_163;
    case 61:
      v8 = "int";
      v9 = 61;
      goto LABEL_163;
    case 62:
      v8 = "int";
      v9 = 62;
      goto LABEL_163;
    case 63:
      v8 = "int";
      v9 = 63;
      goto LABEL_163;
    case 64:
      v8 = "double";
      v9 = 64;
      goto LABEL_163;
    case 65:
      v8 = "BOOL";
      v9 = 65;
      goto LABEL_163;
    case 66:
      v8 = "int";
      v9 = 66;
      goto LABEL_163;
    case 67:
      v8 = "BOOL";
      v9 = 67;
      goto LABEL_163;
    case 68:
      v8 = "int";
      v9 = 68;
      goto LABEL_163;
    case 69:
      v8 = "BOOL";
      v9 = 69;
      goto LABEL_163;
    case 70:
      v8 = "BOOL";
      v9 = 70;
      goto LABEL_163;
    case 71:
      v8 = "int";
      v9 = 71;
      goto LABEL_163;
    case 72:
      v8 = "int";
      v9 = 72;
      goto LABEL_163;
    case 73:
      v8 = "double";
      v9 = 73;
      goto LABEL_163;
    case 74:
      v8 = "int";
      v9 = 74;
      goto LABEL_163;
    case 75:
      v8 = "int";
      v9 = 75;
      goto LABEL_163;
    case 76:
      v8 = "BOOL";
      v9 = 76;
      goto LABEL_163;
    case 77:
      v8 = "BOOL";
      v9 = 77;
      goto LABEL_163;
    case 78:
      v8 = "int";
      v9 = 78;
      goto LABEL_163;
    case 79:
      v8 = "BOOL";
      v9 = 79;
      goto LABEL_163;
    case 80:
      v8 = "int";
      v9 = 80;
      goto LABEL_163;
    case 81:
      v8 = "BOOL";
      v9 = 81;
      goto LABEL_163;
    case 82:
      v8 = "BOOL";
      v9 = 82;
      goto LABEL_163;
    case 83:
      v8 = "string";
      v9 = 83;
      goto LABEL_163;
    case 84:
      v8 = "int";
      v9 = 84;
      goto LABEL_163;
    case 85:
      v8 = "double";
      v9 = 85;
      goto LABEL_163;
    case 86:
      v8 = "double";
      v9 = 86;
      goto LABEL_163;
    case 87:
      v8 = "int";
      v9 = 87;
      goto LABEL_163;
    case 88:
      v8 = "int";
      v9 = 88;
      goto LABEL_163;
    case 89:
      v8 = "int";
      v9 = 89;
      goto LABEL_163;
    case 90:
      v8 = "BOOL";
      v9 = 90;
      goto LABEL_163;
    case 91:
      v8 = "BOOL";
      v9 = 91;
      goto LABEL_163;
    case 92:
      v8 = "BOOL";
      v9 = 92;
      goto LABEL_163;
    case 93:
      v8 = "BOOL";
      v9 = 93;
      goto LABEL_163;
    case 94:
      v8 = "BOOL";
      v9 = 94;
      goto LABEL_163;
    case 95:
      v8 = "BOOL";
      v9 = 95;
      goto LABEL_163;
    case 96:
      v8 = "BOOL";
      v9 = 96;
      goto LABEL_163;
    case 97:
      v8 = "string";
      v9 = 97;
      goto LABEL_163;
    case 98:
      v8 = "BOOL";
      v9 = 98;
      goto LABEL_163;
    case 99:
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v51 = qword_281051FB8;
          v52 = 99;
          goto LABEL_207;
        }

        if (a3 != 3)
        {
          goto LABEL_191;
        }

        v47 = qword_281051FB8;
        v48 = 99;
        goto LABEL_186;
      }

      if (!a3)
      {
        return a1[119];
      }

      if (a3 != 1)
      {
        goto LABEL_191;
      }

      v27 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 99, a3, a4, a5, a6, a7, a8);
      v28 = **v27;
      if (**(v29 + 24))
      {
        v30 = v29 + 16;
        v31 = 1;
        v15 = v30;
        do
        {
          if (*v15 == 1)
          {
            return *(v15 + 16);
          }

          result = 0;
          v15 = v30 + 32 * v31++;
        }

        while (**(v15 + 8));
        return result;
      }

      return 0;
    case 100:
      v8 = "BOOL";
      v9 = 100;
      goto LABEL_163;
    case 101:
      v8 = "BOOL";
      v9 = 101;
      goto LABEL_163;
    case 102:
      v8 = "BOOL";
      v9 = 102;
      goto LABEL_163;
    case 103:
      v8 = "double";
      v9 = 103;
      goto LABEL_163;
    case 104:
      v8 = "int";
      v9 = 104;
      goto LABEL_163;
    case 105:
      v8 = "int";
      v9 = 105;
      goto LABEL_163;
    case 106:
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v51 = qword_281051FB8;
          v52 = 106;
LABEL_207:
          v53 = ParamSpecMgr::getParamByParamId(v51, v52, a3, a4, a5, a6, a7, a8);
          if (v53)
          {
            v54 = **v53;
          }

          return EnumParamSpec::getMinVal(v53);
        }

        if (a3 == 3)
        {
          v47 = qword_281051FB8;
          v48 = 106;
LABEL_186:
          v49 = ParamSpecMgr::getParamByParamId(v47, v48, a3, a4, a5, a6, a7, a8);
          if (v49)
          {
            v50 = **v49;
          }

          return EnumParamSpec::getMaxVal(v49);
        }

        goto LABEL_191;
      }

      if (!a3)
      {
        return a1[126];
      }

      if (a3 != 1)
      {
LABEL_191:
        throwWrongQueryMode(a3, "enum", a3, a4, a5, a6, a7, a8);
        return 0;
      }

      v10 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 106, a3, a4, a5, a6, a7, a8);
      v11 = **v10;
      if (!**(v12 + 24))
      {
        return 0;
      }

      v13 = v12 + 16;
      v14 = 1;
      v15 = v13;
      while (*v15 != 1)
      {
        result = 0;
        v15 = v13 + 32 * v14++;
        if (!**(v15 + 8))
        {
          return result;
        }
      }

      return *(v15 + 16);
    case 107:
      v8 = "int";
      v9 = 107;
      goto LABEL_163;
    case 108:
      v8 = "int";
      v9 = 108;
      goto LABEL_163;
    case 109:
      v8 = "int";
      v9 = 109;
      goto LABEL_163;
    case 110:
      v8 = "int";
      v9 = 110;
      goto LABEL_163;
    case 111:
      v8 = "int";
      v9 = 111;
LABEL_163:
      throwWrongTypeForParamId(v9, v8, "BOOL", a4, a5, a6, a7, a8);
      return 0;
    default:
      throwWrongParamIdValue(a2, "enum", a3, a4, a5, a6, a7, a8);
      return 0;
  }
}

void SearchParamSet::setBoolParameter(SearchParamSet *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v9 = a3;
  switch(a2)
  {
    case 1:
      if (*(this + 9))
      {
        v11 = "SearchLatticeComputeOnlyBestTimes";
        goto LABEL_148;
      }

      *(this + 40) = a3;
      return;
    case 2:
      throwWrongTypeForParamId(2, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_100;
    case 3:
LABEL_100:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_101;
    case 4:
LABEL_101:
      if (*(this + 9))
      {
        v11 = "SearchLatticeNodeCreationUseRightWord";
        goto LABEL_148;
      }

      *(this + 52) = v9;
      return;
    case 5:
      if (*(this + 9))
      {
        v11 = "SearchLatticeUseCoarticulation";
        goto LABEL_148;
      }

      *(this + 53) = a3;
      return;
    case 6:
      throwWrongTypeForParamId(6, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_93;
    case 7:
LABEL_93:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_94;
    case 8:
LABEL_94:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_95;
    case 9:
LABEL_95:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_96;
    case 10:
LABEL_96:
      if (*(this + 9))
      {
        v11 = "SearchActiveWordHasPredecessorPhonemeContext";
        goto LABEL_148;
      }

      *(this + 72) = v9;
      return;
    case 11:
      if (*(this + 9))
      {
        v11 = "SearchActiveWordHasPredecessorWordContext";
        goto LABEL_148;
      }

      *(this + 73) = a3;
      return;
    case 12:
      if (*(this + 9))
      {
        v11 = "SearchActiveWordHasMergedGrammarState";
        goto LABEL_148;
      }

      *(this + 74) = a3;
      return;
    case 13:
      if (*(this + 9))
      {
        v11 = "SearchActiveWordHasMergedLatticeLinkId";
        goto LABEL_148;
      }

      *(this + 75) = a3;
      return;
    case 14:
      throwWrongTypeForParamId(14, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_42;
    case 15:
LABEL_42:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_43;
    case 16:
LABEL_43:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_44;
    case 17:
LABEL_44:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_45;
    case 18:
LABEL_45:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_46;
    case 19:
LABEL_46:
      throwWrongTypeForParamId(v8, "string", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_47;
    case 20:
LABEL_47:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_48;
    case 21:
LABEL_48:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_49;
    case 22:
LABEL_49:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_50;
    case 23:
LABEL_50:
      throwWrongTypeForParamId(v8, "enum", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_51;
    case 24:
LABEL_51:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_52;
    case 25:
LABEL_52:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_53;
    case 26:
LABEL_53:
      throwWrongTypeForParamId(v8, "enum", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_54;
    case 27:
LABEL_54:
      throwWrongTypeForParamId(v8, "enum", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_55;
    case 28:
LABEL_55:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_56;
    case 29:
LABEL_56:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_57;
    case 30:
LABEL_57:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_58;
    case 31:
LABEL_58:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_59;
    case 32:
LABEL_59:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_60;
    case 33:
LABEL_60:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_61;
    case 34:
LABEL_61:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_62;
    case 35:
LABEL_62:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_63;
    case 36:
LABEL_63:
      throwWrongTypeForParamId(v8, "enum", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_64;
    case 37:
LABEL_64:
      if (*(this + 9))
      {
        v11 = "SearchLMRescoreWithCorrective";
        goto LABEL_148;
      }

      *(this + 196) = v9;
      return;
    case 38:
      throwWrongTypeForParamId(38, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_113;
    case 39:
LABEL_113:
      if (*(this + 9))
      {
        v11 = "SearchActiveNodePreserveMultipleHistories";
        goto LABEL_148;
      }

      *(this + 204) = v9;
      return;
    case 40:
      throwWrongTypeForParamId(40, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_21;
    case 41:
LABEL_21:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_22;
    case 42:
LABEL_22:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_23;
    case 43:
LABEL_23:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_24;
    case 44:
LABEL_24:
      if (*(this + 9))
      {
        v11 = "SearchLatticeComputeOnlyBestPath";
        goto LABEL_148;
      }

      *(this + 224) = v9;
      return;
    case 45:
      throwWrongTypeForParamId(45, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_116;
    case 46:
LABEL_116:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_117;
    case 47:
LABEL_117:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_118;
    case 48:
LABEL_118:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_119;
    case 49:
LABEL_119:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_120;
    case 50:
LABEL_120:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_121;
    case 51:
LABEL_121:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_122;
    case 52:
LABEL_122:
      if (*(this + 9))
      {
        v11 = "SearchLatticeAllowZeroDurationFinalSilence";
        goto LABEL_148;
      }

      *(this + 260) = v9;
      return;
    case 53:
      throwWrongTypeForParamId(53, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_76;
    case 54:
LABEL_76:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_77;
    case 55:
LABEL_77:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_78;
    case 56:
LABEL_78:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_79;
    case 57:
LABEL_79:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_80;
    case 58:
LABEL_80:
      throwWrongTypeForParamId(v8, "enum", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_81;
    case 59:
LABEL_81:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_82;
    case 60:
LABEL_82:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_83;
    case 61:
LABEL_83:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_84;
    case 62:
LABEL_84:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_85;
    case 63:
LABEL_85:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_86;
    case 64:
LABEL_86:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_87;
    case 65:
LABEL_87:
      if (*(this + 9))
      {
        v11 = "SearchPelScoreUseBestCompScore";
        goto LABEL_148;
      }

      *(this + 320) = v9;
      return;
    case 66:
      throwWrongTypeForParamId(66, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_28;
    case 67:
LABEL_28:
      if (*(this + 9))
      {
        v11 = "SearchPrefilterResultUseCrumbBank";
        goto LABEL_148;
      }

      *(this + 328) = v9;
      return;
    case 68:
      throwWrongTypeForParamId(68, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_131;
    case 69:
LABEL_131:
      if (*(this + 9))
      {
        v11 = "SearchSegmentAllNets";
        goto LABEL_148;
      }

      *(this + 336) = v9;
      return;
    case 70:
      if (*(this + 9))
      {
        v11 = "SearchRecognitionBatchProcessing";
        goto LABEL_148;
      }

      *(this + 337) = a3;
      return;
    case 71:
      throwWrongTypeForParamId(71, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_34;
    case 72:
LABEL_34:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_35;
    case 73:
LABEL_35:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_36;
    case 74:
LABEL_36:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_37;
    case 75:
LABEL_37:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_38;
    case 76:
LABEL_38:
      if (*(this + 9))
      {
        v11 = "SearchTruncatePackedIntComponentScores";
        goto LABEL_148;
      }

      *(this + 368) = v9;
      return;
    case 77:
      if (*(this + 9))
      {
        v11 = "SearchUseWordEndThreshWhenSeedingFinalSilence";
        goto LABEL_148;
      }

      *(this + 369) = a3;
      return;
    case 78:
      throwWrongTypeForParamId(78, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_126;
    case 79:
LABEL_126:
      if (*(this + 9))
      {
        v11 = "SearchWordSeedScoreIncludePrefiltererScore";
        goto LABEL_148;
      }

      *(this + 376) = v9;
      return;
    case 80:
      throwWrongTypeForParamId(80, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_31;
    case 81:
LABEL_31:
      if (*(this + 9))
      {
        v11 = "SearchWordSeedUnprefilteredUseThreshScoreDecrement";
        goto LABEL_148;
      }

      *(this + 384) = v9;
      return;
    case 82:
      if (*(this + 9))
      {
        v11 = "SearchEstimateAndPreScoreActivePels";
        goto LABEL_148;
      }

      *(this + 385) = a3;
      return;
    case 83:
      throwWrongTypeForParamId(83, "string", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_140;
    case 84:
LABEL_140:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_141;
    case 85:
LABEL_141:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_142;
    case 86:
LABEL_142:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_143;
    case 87:
LABEL_143:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_144;
    case 88:
LABEL_144:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_145;
    case 89:
LABEL_145:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_146;
    case 90:
LABEL_146:
      if (*(this + 9))
      {
        v11 = "FstCoreRepeatFrame";
        goto LABEL_148;
      }

      *(this + 444) = v9;
      return;
    case 91:
      if (*(this + 9))
      {
        v11 = "FstCoreGenerateLeafLattice";
        goto LABEL_148;
      }

      *(this + 445) = a3;
      return;
    case 92:
      if (*(this + 9))
      {
        v11 = "SearchLatticePreserveAlternateProns";
        goto LABEL_148;
      }

      *(this + 446) = a3;
      return;
    case 93:
      if (*(this + 9))
      {
        v11 = "SearchLatticeSilentWordsUseCoarticulation";
        goto LABEL_148;
      }

      *(this + 447) = a3;
      return;
    case 94:
      if (*(this + 9))
      {
        v11 = "SearchLatticeUseThresholding";
        goto LABEL_148;
      }

      *(this + 448) = a3;
      return;
    case 95:
      if (*(this + 9))
      {
        v11 = "SearchDisableHierarchicalScorer";
        goto LABEL_148;
      }

      *(this + 449) = a3;
      return;
    case 96:
      if (*(this + 9))
      {
        v11 = "SearchDisableGPUScorer";
        goto LABEL_148;
      }

      *(this + 450) = a3;
      return;
    case 97:
      throwWrongTypeForParamId(97, "string", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_153;
    case 98:
LABEL_153:
      if (*(this + 9))
      {
        v11 = "FstCoreUseDurationModel";
        goto LABEL_148;
      }

      *(this + 472) = v9;
      return;
    case 99:
      throwWrongTypeForParamId(99, "enum", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_156;
    case 100:
LABEL_156:
      if (*(this + 9))
      {
        v11 = "FstCoreHashTokens";
        goto LABEL_148;
      }

      *(this + 480) = v9;
      return;
    case 101:
      if (*(this + 9))
      {
        v11 = "FstCoreUseFwdBwdAlgorithm";
        goto LABEL_148;
      }

      *(this + 481) = a3;
      break;
    case 102:
      if (*(this + 9))
      {
        v11 = "FstCoreLockPelScoreCache";
LABEL_148:

        throwParamSetSetFailed(v11, "BOOL", a3, a4, a5, a6, a7, a8);
      }

      else
      {
        *(this + 482) = a3;
      }

      break;
    case 103:
      throwWrongTypeForParamId(103, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_5;
    case 104:
LABEL_5:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_6;
    case 105:
LABEL_6:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_7;
    case 106:
LABEL_7:
      throwWrongTypeForParamId(v8, "enum", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_8;
    case 107:
LABEL_8:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_9;
    case 108:
LABEL_9:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_10;
    case 109:
LABEL_10:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_11;
    case 110:
LABEL_11:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_12;
    case 111:
LABEL_12:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_13;
    default:
LABEL_13:

      throwWrongParamIdValue(v8, "BOOL", a3, a4, a5, a6, a7, a8);
      return;
  }
}

void SearchParamSet::setIntParameter(SearchParamSet *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v9 = a3;
  switch(a2)
  {
    case 1:
      throwWrongTypeForParamId(1, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_3;
    case 2:
LABEL_3:
      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051FB8, 2, a3, a4, a5, a6, a7, a8);
      if (ParamByParamId)
      {
        v16 = **ParamByParamId;
      }

      IntParamSpec::validateValue(ParamByParamId, v9, 0, 0, v12, v13, v14, v15);
      if (*(this + 9))
      {
        v23 = "SearchLatticeLMRescoringAbortOnTotalNewNodes";
        goto LABEL_308;
      }

      *(this + 11) = v9;
      return;
    case 3:
      v180 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 3, a3, a4, a5, a6, a7, a8);
      if (v180)
      {
        v185 = **v180;
      }

      IntParamSpec::validateValue(v180, v9, 0, 0, v181, v182, v183, v184);
      if (*(this + 9))
      {
        v23 = "SearchLatticePruneKeepUniquePathsMaxSize";
        goto LABEL_308;
      }

      *(this + 12) = v9;
      return;
    case 4:
      throwWrongTypeForParamId(4, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_170;
    case 5:
LABEL_170:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_171;
    case 6:
LABEL_171:
      v228 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 6, a3, a4, a5, a6, a7, a8);
      if (v228)
      {
        v233 = **v228;
      }

      IntParamSpec::validateValue(v228, v9, 0, 0, v229, v230, v231, v232);
      if (*(this + 9))
      {
        v23 = "SearchAbortOnAllocBytes";
        goto LABEL_308;
      }

      *(this + 14) = v9;
      return;
    case 7:
      v258 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 7, a3, a4, a5, a6, a7, a8);
      if (v258)
      {
        v263 = **v258;
      }

      IntParamSpec::validateValue(v258, v9, 0, 0, v259, v260, v261, v262);
      if (*(this + 9))
      {
        v23 = "SearchAbortOnAverageWordsEndingPerFrame";
        goto LABEL_308;
      }

      *(this + 15) = v9;
      return;
    case 8:
      v192 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 8, a3, a4, a5, a6, a7, a8);
      if (v192)
      {
        v197 = **v192;
      }

      IntParamSpec::validateValue(v192, v9, 0, 0, v193, v194, v195, v196);
      if (*(this + 9))
      {
        v23 = "SearchAbortOnNumHistories";
        goto LABEL_308;
      }

      *(this + 16) = v9;
      return;
    case 9:
      v264 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 9, a3, a4, a5, a6, a7, a8);
      if (v264)
      {
        v269 = **v264;
      }

      IntParamSpec::validateValue(v264, v9, 0, 0, v265, v266, v267, v268);
      if (*(this + 9))
      {
        v23 = "SearchAbortOnNumRecognizedFrames";
        goto LABEL_308;
      }

      *(this + 17) = v9;
      return;
    case 10:
      throwWrongTypeForParamId(10, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_192;
    case 11:
LABEL_192:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_193;
    case 12:
LABEL_193:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_194;
    case 13:
LABEL_194:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_195;
    case 14:
LABEL_195:
      v252 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 14, a3, a4, a5, a6, a7, a8);
      if (v252)
      {
        v257 = **v252;
      }

      IntParamSpec::validateValue(v252, v9, 0, 0, v253, v254, v255, v256);
      if (*(this + 9))
      {
        v23 = "SearchLatticeTimeConstraintSeedThreshScore";
        goto LABEL_308;
      }

      *(this + 19) = v9;
      return;
    case 15:
      v144 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 15, a3, a4, a5, a6, a7, a8);
      if (v144)
      {
        v149 = **v144;
      }

      IntParamSpec::validateValue(v144, v9, 0, 0, v145, v146, v147, v148);
      if (*(this + 9))
      {
        v23 = "SearchLatticeTimeConstraintDistanceMaxFrames";
        goto LABEL_308;
      }

      *(this + 20) = v9;
      return;
    case 16:
      v186 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 16, a3, a4, a5, a6, a7, a8);
      if (v186)
      {
        v191 = **v186;
      }

      IntParamSpec::validateValue(v186, v9, 0, 0, v187, v188, v189, v190);
      if (*(this + 9))
      {
        v23 = "SearchActiveWordSpreadSeedScore";
        goto LABEL_308;
      }

      *(this + 21) = v9;
      return;
    case 17:
      throwWrongTypeForParamId(17, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_153;
    case 18:
LABEL_153:
      v204 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 18, a3, a4, a5, a6, a7, a8);
      if (v204)
      {
        v209 = **v204;
      }

      IntParamSpec::validateValue(v204, v9, 0, 0, v205, v206, v207, v208);
      if (*(this + 9))
      {
        v23 = "SearchConTransAccDecayFrequency";
        goto LABEL_308;
      }

      *(this + 24) = v9;
      return;
    case 19:
      throwWrongTypeForParamId(19, "string", "int", a4, a5, a6, a7, a8);
      goto LABEL_233;
    case 20:
LABEL_233:
      v300 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 20, a3, a4, a5, a6, a7, a8);
      if (v300)
      {
        v305 = **v300;
      }

      IntParamSpec::validateValue(v300, v9, 0, 0, v301, v302, v303, v304);
      if (*(this + 9))
      {
        v23 = "SearchConTransAccMaxSilenceFrames";
        goto LABEL_308;
      }

      *(this + 30) = v9;
      return;
    case 21:
      v216 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 21, a3, a4, a5, a6, a7, a8);
      if (v216)
      {
        v221 = **v216;
      }

      IntParamSpec::validateValue(v216, v9, 0, 0, v217, v218, v219, v220);
      if (*(this + 9))
      {
        v23 = "SearchConTransAccRampFrames";
        goto LABEL_308;
      }

      *(this + 31) = v9;
      return;
    case 22:
      v246 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 22, a3, a4, a5, a6, a7, a8);
      if (v246)
      {
        v251 = **v246;
      }

      IntParamSpec::validateValue(v246, v9, 0, 0, v247, v248, v249, v250);
      if (*(this + 9))
      {
        v23 = "SearchConTransAccStartFrame";
        goto LABEL_308;
      }

      *(this + 32) = v9;
      return;
    case 23:
      throwWrongTypeForParamId(23, "enum", "int", a4, a5, a6, a7, a8);
      goto LABEL_88;
    case 24:
LABEL_88:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_89;
    case 25:
LABEL_89:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_90;
    case 26:
LABEL_90:
      throwWrongTypeForParamId(v8, "enum", "int", a4, a5, a6, a7, a8);
      goto LABEL_91;
    case 27:
LABEL_91:
      throwWrongTypeForParamId(v8, "enum", "int", a4, a5, a6, a7, a8);
      goto LABEL_92;
    case 28:
LABEL_92:
      v120 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 28, a3, a4, a5, a6, a7, a8);
      if (v120)
      {
        v125 = **v120;
      }

      IntParamSpec::validateValue(v120, v9, 0, 0, v121, v122, v123, v124);
      if (*(this + 9))
      {
        v23 = "SearchInitialSilenceToFinalSilenceLMScore";
        goto LABEL_308;
      }

      *(this + 40) = v9;
      return;
    case 29:
      v318 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 29, a3, a4, a5, a6, a7, a8);
      if (v318)
      {
        v323 = **v318;
      }

      IntParamSpec::validateValue(v318, v9, 0, 0, v319, v320, v321, v322);
      if (*(this + 9))
      {
        v23 = "SearchInterWordSilencePenalty";
        goto LABEL_308;
      }

      *(this + 41) = v9;
      return;
    case 30:
      v324 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 30, a3, a4, a5, a6, a7, a8);
      if (v324)
      {
        v329 = **v324;
      }

      IntParamSpec::validateValue(v324, v9, 0, 0, v325, v326, v327, v328);
      if (*(this + 9))
      {
        v23 = "SearchLMDisallowedLMScore";
        goto LABEL_308;
      }

      *(this + 42) = v9;
      return;
    case 31:
      v270 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 31, a3, a4, a5, a6, a7, a8);
      if (v270)
      {
        v275 = **v270;
      }

      IntParamSpec::validateValue(v270, v9, 0, 0, v271, v272, v273, v274);
      if (*(this + 9))
      {
        v23 = "SearchLMDynamicBigramReadCacheMaxChunksPerRead";
        goto LABEL_308;
      }

      *(this + 43) = v9;
      return;
    case 32:
      v198 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 32, a3, a4, a5, a6, a7, a8);
      if (v198)
      {
        v203 = **v198;
      }

      IntParamSpec::validateValue(v198, v9, 0, 0, v199, v200, v201, v202);
      if (*(this + 9))
      {
        v23 = "SearchLMDynamicQuadgramReadCacheMaxChunksPerRead";
        goto LABEL_308;
      }

      *(this + 44) = v9;
      return;
    case 33:
      v276 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 33, a3, a4, a5, a6, a7, a8);
      if (v276)
      {
        v281 = **v276;
      }

      IntParamSpec::validateValue(v276, v9, 0, 0, v277, v278, v279, v280);
      if (*(this + 9))
      {
        v23 = "SearchLMDynamicReadCacheBlocksPerChunk";
        goto LABEL_308;
      }

      *(this + 45) = v9;
      return;
    case 34:
      v150 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 34, a3, a4, a5, a6, a7, a8);
      if (v150)
      {
        v155 = **v150;
      }

      IntParamSpec::validateValue(v150, v9, 0, 0, v151, v152, v153, v154);
      if (*(this + 9))
      {
        v23 = "SearchLMDynamicReadCacheMaxBlocks";
        goto LABEL_308;
      }

      *(this + 46) = v9;
      return;
    case 35:
      v126 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 35, a3, a4, a5, a6, a7, a8);
      if (v126)
      {
        v131 = **v126;
      }

      IntParamSpec::validateValue(v126, v9, 0, 0, v127, v128, v129, v130);
      if (*(this + 9))
      {
        v23 = "SearchLMDynamicTrigramReadCacheMaxChunksPerRead";
        goto LABEL_308;
      }

      *(this + 47) = v9;
      return;
    case 36:
      throwWrongTypeForParamId(36, "enum", "int", a4, a5, a6, a7, a8);
      goto LABEL_65;
    case 37:
LABEL_65:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_66;
    case 38:
LABEL_66:
      v90 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 38, a3, a4, a5, a6, a7, a8);
      if (v90)
      {
        v95 = **v90;
      }

      IntParamSpec::validateValue(v90, v9, 0, 0, v91, v92, v93, v94);
      if (*(this + 9))
      {
        v23 = "SearchActiveNodeCountLimit";
        goto LABEL_308;
      }

      *(this + 50) = v9;
      return;
    case 39:
      throwWrongTypeForParamId(39, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_228;
    case 40:
LABEL_228:
      v294 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 40, a3, a4, a5, a6, a7, a8);
      if (v294)
      {
        v299 = **v294;
      }

      IntParamSpec::validateValue(v294, v9, 0, 0, v295, v296, v297, v298);
      if (*(this + 9))
      {
        v23 = "SearchActiveSequenceCountLimit";
        goto LABEL_308;
      }

      *(this + 52) = v9;
      return;
    case 41:
      v168 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 41, a3, a4, a5, a6, a7, a8);
      if (v168)
      {
        v173 = **v168;
      }

      IntParamSpec::validateValue(v168, v9, 0, 0, v169, v170, v171, v172);
      if (*(this + 9))
      {
        v23 = "SearchFinalSilenceThreshScoreIncrement";
        goto LABEL_308;
      }

      *(this + 53) = v9;
      return;
    case 42:
      v210 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 42, a3, a4, a5, a6, a7, a8);
      if (v210)
      {
        v215 = **v210;
      }

      IntParamSpec::validateValue(v210, v9, 0, 0, v211, v212, v213, v214);
      if (*(this + 9))
      {
        v23 = "SearchLatticeBestCrumbDistanceMaxFrames";
        goto LABEL_308;
      }

      *(this + 54) = v9;
      return;
    case 43:
      v306 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 43, a3, a4, a5, a6, a7, a8);
      if (v306)
      {
        v311 = **v306;
      }

      IntParamSpec::validateValue(v306, v9, 0, 0, v307, v308, v309, v310);
      if (*(this + 9))
      {
        v23 = "SearchLatticeBestCrumbThreshScoreIncrement";
        goto LABEL_308;
      }

      *(this + 55) = v9;
      return;
    case 44:
      throwWrongTypeForParamId(44, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_107;
    case 45:
LABEL_107:
      v138 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 45, a3, a4, a5, a6, a7, a8);
      if (v138)
      {
        v143 = **v138;
      }

      IntParamSpec::validateValue(v138, v9, 0, 0, v139, v140, v141, v142);
      if (*(this + 9))
      {
        v23 = "SearchLatticeAbortOnScaledAverageLinksPerFrame";
        goto LABEL_308;
      }

      *(this + 57) = v9;
      return;
    case 46:
      v282 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 46, a3, a4, a5, a6, a7, a8);
      if (v282)
      {
        v287 = **v282;
      }

      IntParamSpec::validateValue(v282, v9, 0, 0, v283, v284, v285, v286);
      if (*(this + 9))
      {
        v23 = "SearchLatticeAbortOnScaledAverageNodesPerFrame";
        goto LABEL_308;
      }

      *(this + 58) = v9;
      return;
    case 47:
      v348 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 47, a3, a4, a5, a6, a7, a8);
      if (v348)
      {
        v353 = **v348;
      }

      IntParamSpec::validateValue(v348, v9, 0, 0, v349, v350, v351, v352);
      if (*(this + 9))
      {
        v23 = "SearchLatticeAbortOnNumLinks";
        goto LABEL_308;
      }

      *(this + 59) = v9;
      return;
    case 48:
      v108 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 48, a3, a4, a5, a6, a7, a8);
      if (v108)
      {
        v113 = **v108;
      }

      IntParamSpec::validateValue(v108, v9, 0, 0, v109, v110, v111, v112);
      if (*(this + 9))
      {
        v23 = "SearchLatticeAbortOnNumNodes";
        goto LABEL_308;
      }

      *(this + 60) = v9;
      return;
    case 49:
      v156 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 49, a3, a4, a5, a6, a7, a8);
      if (v156)
      {
        v161 = **v156;
      }

      IntParamSpec::validateValue(v156, v9, 0, 0, v157, v158, v159, v160);
      if (*(this + 9))
      {
        v23 = "SearchLatticePruneLinksPerSecondLimit";
        goto LABEL_308;
      }

      *(this + 61) = v9;
      return;
    case 50:
      throwWrongTypeForParamId(50, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_48;
    case 51:
LABEL_48:
      v66 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 51, a3, a4, a5, a6, a7, a8);
      if (v66)
      {
        v71 = **v66;
      }

      IntParamSpec::validateValue(v66, v9, 0, 0, v67, v68, v69, v70);
      if (*(this + 9))
      {
        v23 = "SearchLatticeThreshScore";
        goto LABEL_308;
      }

      *(this + 64) = v9;
      return;
    case 52:
      throwWrongTypeForParamId(52, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_265;
    case 53:
LABEL_265:
      v342 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 53, a3, a4, a5, a6, a7, a8);
      if (v342)
      {
        v347 = **v342;
      }

      IntParamSpec::validateValue(v342, v9, 0, 0, v343, v344, v345, v346);
      if (*(this + 9))
      {
        v23 = "SearchStateUsePrefiltererMinNumWords";
        goto LABEL_308;
      }

      *(this + 66) = v9;
      return;
    case 54:
      v96 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 54, a3, a4, a5, a6, a7, a8);
      if (v96)
      {
        v101 = **v96;
      }

      IntParamSpec::validateValue(v96, v9, 0, 0, v97, v98, v99, v100);
      if (*(this + 9))
      {
        v23 = "SearchThreshScoreIncrementWhenNonSilenceBest";
        goto LABEL_308;
      }

      *(this + 67) = v9;
      return;
    case 55:
      v330 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 55, a3, a4, a5, a6, a7, a8);
      if (v330)
      {
        v335 = **v330;
      }

      IntParamSpec::validateValue(v330, v9, 0, 0, v331, v332, v333, v334);
      if (*(this + 9))
      {
        v23 = "SearchThreshScoreWhenSilenceBest";
        goto LABEL_308;
      }

      *(this + 68) = v9;
      return;
    case 56:
      v336 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 56, a3, a4, a5, a6, a7, a8);
      if (v336)
      {
        v341 = **v336;
      }

      IntParamSpec::validateValue(v336, v9, 0, 0, v337, v338, v339, v340);
      if (*(this + 9))
      {
        v23 = "SearchWordEndAgainstBestWordEndThreshScoreDecrement";
        goto LABEL_308;
      }

      *(this + 69) = v9;
      return;
    case 57:
      v114 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 57, a3, a4, a5, a6, a7, a8);
      if (v114)
      {
        v119 = **v114;
      }

      IntParamSpec::validateValue(v114, v9, 0, 0, v115, v116, v117, v118);
      if (*(this + 9))
      {
        v23 = "SearchWordEndThreshScoreDecrement";
        goto LABEL_308;
      }

      *(this + 70) = v9;
      return;
    case 58:
      throwWrongTypeForParamId(58, "enum", "int", a4, a5, a6, a7, a8);
      goto LABEL_124;
    case 59:
LABEL_124:
      v162 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 59, a3, a4, a5, a6, a7, a8);
      if (v162)
      {
        v167 = **v162;
      }

      IntParamSpec::validateValue(v162, v9, 0, 0, v163, v164, v165, v166);
      if (*(this + 9))
      {
        v23 = "SearchNonAcousticWordAndSuccessorLMThreshScore";
        goto LABEL_308;
      }

      *(this + 72) = v9;
      return;
    case 60:
      v312 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 60, a3, a4, a5, a6, a7, a8);
      if (v312)
      {
        v317 = **v312;
      }

      IntParamSpec::validateValue(v312, v9, 0, 0, v313, v314, v315, v316);
      if (*(this + 9))
      {
        v23 = "SearchNonAcousticWordEndThreshScoreIncrement";
        goto LABEL_308;
      }

      *(this + 73) = v9;
      return;
    case 61:
      v174 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 61, a3, a4, a5, a6, a7, a8);
      if (v174)
      {
        v179 = **v174;
      }

      IntParamSpec::validateValue(v174, v9, 0, 0, v175, v176, v177, v178);
      if (*(this + 9))
      {
        v23 = "SearchNonAcousticWordLMThreshScore";
        goto LABEL_308;
      }

      *(this + 74) = v9;
      return;
    case 62:
      v222 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 62, a3, a4, a5, a6, a7, a8);
      if (v222)
      {
        v227 = **v222;
      }

      IntParamSpec::validateValue(v222, v9, 0, 0, v223, v224, v225, v226);
      if (*(this + 9))
      {
        v23 = "SearchNonAcousticWordSeedThreshScoreIncrement";
        goto LABEL_308;
      }

      *(this + 75) = v9;
      return;
    case 63:
      v240 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 63, a3, a4, a5, a6, a7, a8);
      if (v240)
      {
        v245 = **v240;
      }

      IntParamSpec::validateValue(v240, v9, 0, 0, v241, v242, v243, v244);
      if (*(this + 9))
      {
        v23 = "SearchPelBackoffThreshScoreDecrement";
        goto LABEL_308;
      }

      *(this + 76) = v9;
      return;
    case 64:
      throwWrongTypeForParamId(64, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_177;
    case 65:
LABEL_177:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_178;
    case 66:
LABEL_178:
      v234 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 66, a3, a4, a5, a6, a7, a8);
      if (v234)
      {
        v239 = **v234;
      }

      IntParamSpec::validateValue(v234, v9, 0, 0, v235, v236, v237, v238);
      if (*(this + 9))
      {
        v23 = "SearchPerWordPenalty";
        goto LABEL_308;
      }

      *(this + 81) = v9;
      return;
    case 67:
      throwWrongTypeForParamId(67, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_102;
    case 68:
LABEL_102:
      v132 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 68, a3, a4, a5, a6, a7, a8);
      if (v132)
      {
        v137 = **v132;
      }

      IntParamSpec::validateValue(v132, v9, 0, 0, v133, v134, v135, v136);
      if (*(this + 9))
      {
        v23 = "SearchPrefilterResultUseCrumbBankDistanceMaxFrames";
        goto LABEL_308;
      }

      *(this + 83) = v9;
      return;
    case 69:
      throwWrongTypeForParamId(69, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_34;
    case 70:
LABEL_34:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_35;
    case 71:
LABEL_35:
      v54 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 71, a3, a4, a5, a6, a7, a8);
      if (v54)
      {
        v59 = **v54;
      }

      IntParamSpec::validateValue(v54, v9, 0, 0, v55, v56, v57, v58);
      if (*(this + 9))
      {
        v23 = "SearchRecognitionContinuationInterval";
        goto LABEL_308;
      }

      *(this + 85) = v9;
      return;
    case 72:
      v84 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 72, a3, a4, a5, a6, a7, a8);
      if (v84)
      {
        v89 = **v84;
      }

      IntParamSpec::validateValue(v84, v9, 0, 0, v85, v86, v87, v88);
      if (*(this + 9))
      {
        v23 = "SearchRemoveInactiveWordsIntervalFrames";
        goto LABEL_308;
      }

      *(this + 86) = v9;
      return;
    case 73:
      throwWrongTypeForParamId(73, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_274;
    case 74:
LABEL_274:
      v354 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 74, a3, a4, a5, a6, a7, a8);
      if (v354)
      {
        v359 = **v354;
      }

      IntParamSpec::validateValue(v354, v9, 0, 0, v355, v356, v357, v358);
      if (*(this + 9))
      {
        v23 = "SearchTraceLatticeThreshScoreIncrement";
        goto LABEL_308;
      }

      *(this + 90) = v9;
      return;
    case 75:
      v366 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 75, a3, a4, a5, a6, a7, a8);
      if (v366)
      {
        v371 = **v366;
      }

      IntParamSpec::validateValue(v366, v9, 0, 0, v367, v368, v369, v370);
      if (*(this + 9))
      {
        v23 = "SearchTraceThreshScoreIncrement";
        goto LABEL_308;
      }

      *(this + 91) = v9;
      return;
    case 76:
      throwWrongTypeForParamId(76, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_41;
    case 77:
LABEL_41:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_42;
    case 78:
LABEL_42:
      v60 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 78, a3, a4, a5, a6, a7, a8);
      if (v60)
      {
        v65 = **v60;
      }

      IntParamSpec::validateValue(v60, v9, 0, 0, v61, v62, v63, v64);
      if (*(this + 9))
      {
        v23 = "SearchWordSeedFinalSilenceThreshScoreDecrement";
        goto LABEL_308;
      }

      *(this + 93) = v9;
      return;
    case 79:
      throwWrongTypeForParamId(79, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_29;
    case 80:
LABEL_29:
      v48 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 80, a3, a4, a5, a6, a7, a8);
      if (v48)
      {
        v53 = **v48;
      }

      IntParamSpec::validateValue(v48, v9, 0, 0, v49, v50, v51, v52);
      if (*(this + 9))
      {
        v23 = "SearchWordSeedThreshScoreDecrement";
        goto LABEL_308;
      }

      *(this + 95) = v9;
      return;
    case 81:
      throwWrongTypeForParamId(81, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_16;
    case 82:
LABEL_16:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_17;
    case 83:
LABEL_17:
      throwWrongTypeForParamId(v8, "string", "int", a4, a5, a6, a7, a8);
      goto LABEL_18;
    case 84:
LABEL_18:
      v36 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 84, a3, a4, a5, a6, a7, a8);
      if (v36)
      {
        v41 = **v36;
      }

      IntParamSpec::validateValue(v36, v9, 0, 0, v37, v38, v39, v40);
      if (*(this + 9))
      {
        v23 = "SearchHierInactiveComponentScore";
        goto LABEL_308;
      }

      *(this + 102) = v9;
      return;
    case 85:
      throwWrongTypeForParamId(85, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_221;
    case 86:
LABEL_221:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_222;
    case 87:
LABEL_222:
      v288 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 87, a3, a4, a5, a6, a7, a8);
      if (v288)
      {
        v293 = **v288;
      }

      IntParamSpec::validateValue(v288, v9, 0, 0, v289, v290, v291, v292);
      if (*(this + 9))
      {
        v23 = "FstCoreMaxActive";
        goto LABEL_308;
      }

      *(this + 108) = v9;
      return;
    case 88:
      v360 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 88, a3, a4, a5, a6, a7, a8);
      if (v360)
      {
        v365 = **v360;
      }

      IntParamSpec::validateValue(v360, v9, 0, 0, v361, v362, v363, v364);
      if (*(this + 9))
      {
        v23 = "FstCoreNBest";
        goto LABEL_308;
      }

      *(this + 109) = v9;
      return;
    case 89:
      v72 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 89, a3, a4, a5, a6, a7, a8);
      if (v72)
      {
        v77 = **v72;
      }

      IntParamSpec::validateValue(v72, v9, 0, 0, v73, v74, v75, v76);
      if (*(this + 9))
      {
        v23 = "FstCoreHashPropagateBestTokensFirst";
        goto LABEL_308;
      }

      *(this + 110) = v9;
      return;
    case 90:
      throwWrongTypeForParamId(90, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_291;
    case 91:
LABEL_291:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_292;
    case 92:
LABEL_292:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_293;
    case 93:
LABEL_293:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_294;
    case 94:
LABEL_294:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_295;
    case 95:
LABEL_295:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_296;
    case 96:
LABEL_296:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_297;
    case 97:
LABEL_297:
      throwWrongTypeForParamId(v8, "string", "int", a4, a5, a6, a7, a8);
      goto LABEL_298;
    case 98:
LABEL_298:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_299;
    case 99:
LABEL_299:
      throwWrongTypeForParamId(v8, "enum", "int", a4, a5, a6, a7, a8);
      goto LABEL_300;
    case 100:
LABEL_300:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_301;
    case 101:
LABEL_301:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_302;
    case 102:
LABEL_302:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_303;
    case 103:
LABEL_303:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_304;
    case 104:
LABEL_304:
      v378 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 104, a3, a4, a5, a6, a7, a8);
      if (v378)
      {
        v383 = **v378;
      }

      IntParamSpec::validateValue(v378, v9, 0, 0, v379, v380, v381, v382);
      if (*(this + 9))
      {
        v23 = "FstCoreCollectTracesPeriod";
        goto LABEL_308;
      }

      *(this + 124) = v9;
      return;
    case 105:
      v372 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 105, a3, a4, a5, a6, a7, a8);
      if (v372)
      {
        v377 = **v372;
      }

      IntParamSpec::validateValue(v372, v9, 0, 0, v373, v374, v375, v376);
      if (*(this + 9))
      {
        v23 = "FstCoreBackoffThreshScore";
        goto LABEL_308;
      }

      *(this + 125) = v9;
      return;
    case 106:
      throwWrongTypeForParamId(106, "enum", "int", a4, a5, a6, a7, a8);
      goto LABEL_24;
    case 107:
LABEL_24:
      v42 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 107, a3, a4, a5, a6, a7, a8);
      if (v42)
      {
        v47 = **v42;
      }

      IntParamSpec::validateValue(v42, v9, 0, 0, v43, v44, v45, v46);
      if (*(this + 9))
      {
        v23 = "SearchPartialIncompleteMaxWords";
        goto LABEL_308;
      }

      *(this + 127) = v9;
      return;
    case 108:
      v102 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 108, a3, a4, a5, a6, a7, a8);
      if (v102)
      {
        v107 = **v102;
      }

      IntParamSpec::validateValue(v102, v9, 0, 0, v103, v104, v105, v106);
      if (*(this + 9))
      {
        v23 = "SearchPartialIncompleteMinListFrames";
        goto LABEL_308;
      }

      *(this + 128) = v9;
      return;
    case 109:
      v78 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 109, a3, a4, a5, a6, a7, a8);
      if (v78)
      {
        v83 = **v78;
      }

      IntParamSpec::validateValue(v78, v9, 0, 0, v79, v80, v81, v82);
      if (*(this + 9))
      {
        v23 = "SearchPartialIncompleteMinWordFrames";
        goto LABEL_308;
      }

      *(this + 129) = v9;
      return;
    case 110:
      v30 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 110, a3, a4, a5, a6, a7, a8);
      if (v30)
      {
        v35 = **v30;
      }

      IntParamSpec::validateValue(v30, v9, 0, 0, v31, v32, v33, v34);
      if (*(this + 9))
      {
        v23 = "SearchPartialCompleteMinWordFrames";
        goto LABEL_308;
      }

      *(this + 130) = v9;
      break;
    case 111:
      v24 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 111, a3, a4, a5, a6, a7, a8);
      if (v24)
      {
        v29 = **v24;
      }

      IntParamSpec::validateValue(v24, v9, 0, 0, v25, v26, v27, v28);
      if (*(this + 9))
      {
        v23 = "SearchPartialRegularMinWordFrames";
LABEL_308:

        throwParamSetSetFailed(v23, "int", v17, v18, v19, v20, v21, v22);
      }

      else
      {
        *(this + 131) = v9;
      }

      break;
    default:

      throwWrongParamIdValue(a2, "int", a3, a4, a5, a6, a7, a8);
      return;
  }
}

void SearchParamSet::setDoubleParameter(SearchParamSet *this, int a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a2;
  switch(a2)
  {
    case 1:
      throwWrongTypeForParamId(1, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_3;
    case 2:
LABEL_3:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_4;
    case 3:
LABEL_4:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_5;
    case 4:
LABEL_5:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_6;
    case 5:
LABEL_6:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_7;
    case 6:
LABEL_7:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_8;
    case 7:
LABEL_8:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_9;
    case 8:
LABEL_9:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_10;
    case 9:
LABEL_10:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_11;
    case 10:
LABEL_11:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_12;
    case 11:
LABEL_12:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_13;
    case 12:
LABEL_13:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_14;
    case 13:
LABEL_14:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_15;
    case 14:
LABEL_15:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_16;
    case 15:
LABEL_16:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_17;
    case 16:
LABEL_17:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_18;
    case 17:
LABEL_18:
      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051FB8, 17, a4, a5, a6, a7, a8, a9);
      if (ParamByParamId)
      {
        v18 = **ParamByParamId;
      }

      DoubleParamSpec::validateValue(ParamByParamId, a3, 0, 0, v13, v14, v15, v16, v17);
      if (*(this + 9))
      {
        v25 = "SearchConTransAccDecayFactor";
        goto LABEL_149;
      }

      *(this + 11) = a3;
      return;
    case 18:
      throwWrongTypeForParamId(18, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_127;
    case 19:
LABEL_127:
      throwWrongTypeForParamId(v9, "string", "double", a5, a6, a7, a8, a9);
      goto LABEL_128;
    case 20:
LABEL_128:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_129;
    case 21:
LABEL_129:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_130;
    case 22:
LABEL_130:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_131;
    case 23:
LABEL_131:
      throwWrongTypeForParamId(v9, "enum", "double", a5, a6, a7, a8, a9);
      goto LABEL_132;
    case 24:
LABEL_132:
      v68 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 24, a4, a5, a6, a7, a8, a9);
      if (v68)
      {
        v74 = **v68;
      }

      DoubleParamSpec::validateValue(v68, a3, 0, 0, v69, v70, v71, v72, v73);
      if (*(this + 9))
      {
        v25 = "SearchEnableGenoneScoreCacheThresh";
        goto LABEL_149;
      }

      *(this + 17) = a3;
      return;
    case 25:
      v47 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 25, a4, a5, a6, a7, a8, a9);
      if (v47)
      {
        v53 = **v47;
      }

      DoubleParamSpec::validateValue(v47, a3, 0, 0, v48, v49, v50, v51, v52);
      if (*(this + 9))
      {
        v25 = "SearchFmpeMinimumPosteriorProbability";
        goto LABEL_149;
      }

      *(this + 18) = a3;
      return;
    case 26:
      throwWrongTypeForParamId(26, "enum", "double", a5, a6, a7, a8, a9);
      goto LABEL_72;
    case 27:
LABEL_72:
      throwWrongTypeForParamId(v9, "enum", "double", a5, a6, a7, a8, a9);
      goto LABEL_73;
    case 28:
LABEL_73:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_74;
    case 29:
LABEL_74:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_75;
    case 30:
LABEL_75:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_76;
    case 31:
LABEL_76:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_77;
    case 32:
LABEL_77:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_78;
    case 33:
LABEL_78:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_79;
    case 34:
LABEL_79:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_80;
    case 35:
LABEL_80:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_81;
    case 36:
LABEL_81:
      throwWrongTypeForParamId(v9, "enum", "double", a5, a6, a7, a8, a9);
      goto LABEL_82;
    case 37:
LABEL_82:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_83;
    case 38:
LABEL_83:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_84;
    case 39:
LABEL_84:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_85;
    case 40:
LABEL_85:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_86;
    case 41:
LABEL_86:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_87;
    case 42:
LABEL_87:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_88;
    case 43:
LABEL_88:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_89;
    case 44:
LABEL_89:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_90;
    case 45:
LABEL_90:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_91;
    case 46:
LABEL_91:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_92;
    case 47:
LABEL_92:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_93;
    case 48:
LABEL_93:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_94;
    case 49:
LABEL_94:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_95;
    case 50:
LABEL_95:
      v40 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 50, a4, a5, a6, a7, a8, a9);
      if (v40)
      {
        v46 = **v40;
      }

      DoubleParamSpec::validateValue(v40, a3, 0, 0, v41, v42, v43, v44, v45);
      if (*(this + 9))
      {
        v25 = "SearchLatticeNormalizedThreshFactor";
        goto LABEL_149;
      }

      *(this + 31) = a3;
      return;
    case 51:
      throwWrongTypeForParamId(51, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_105;
    case 52:
LABEL_105:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_106;
    case 53:
LABEL_106:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_107;
    case 54:
LABEL_107:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_108;
    case 55:
LABEL_108:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_109;
    case 56:
LABEL_109:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_110;
    case 57:
LABEL_110:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_111;
    case 58:
LABEL_111:
      throwWrongTypeForParamId(v9, "enum", "double", a5, a6, a7, a8, a9);
      goto LABEL_112;
    case 59:
LABEL_112:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_113;
    case 60:
LABEL_113:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_114;
    case 61:
LABEL_114:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_115;
    case 62:
LABEL_115:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_116;
    case 63:
LABEL_116:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_117;
    case 64:
LABEL_117:
      v54 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 64, a4, a5, a6, a7, a8, a9);
      if (v54)
      {
        v60 = **v54;
      }

      DoubleParamSpec::validateValue(v54, a3, 0, 0, v55, v56, v57, v58, v59);
      if (*(this + 9))
      {
        v25 = "SearchPelScoreScale";
        goto LABEL_149;
      }

      *(this + 39) = a3;
      return;
    case 65:
      throwWrongTypeForParamId(65, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_138;
    case 66:
LABEL_138:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_139;
    case 67:
LABEL_139:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_140;
    case 68:
LABEL_140:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_141;
    case 69:
LABEL_141:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_142;
    case 70:
LABEL_142:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_143;
    case 71:
LABEL_143:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_144;
    case 72:
LABEL_144:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_145;
    case 73:
LABEL_145:
      v75 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 73, a4, a5, a6, a7, a8, a9);
      if (v75)
      {
        v81 = **v75;
      }

      DoubleParamSpec::validateValue(v75, a3, 0, 0, v76, v77, v78, v79, v80);
      if (*(this + 9))
      {
        v25 = "SearchTraceLatticeNormalizedThreshFactor";
        goto LABEL_149;
      }

      *(this + 44) = a3;
      return;
    case 74:
      throwWrongTypeForParamId(74, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_35;
    case 75:
LABEL_35:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_36;
    case 76:
LABEL_36:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_37;
    case 77:
LABEL_37:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_38;
    case 78:
LABEL_38:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_39;
    case 79:
LABEL_39:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_40;
    case 80:
LABEL_40:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_41;
    case 81:
LABEL_41:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_42;
    case 82:
LABEL_42:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_43;
    case 83:
LABEL_43:
      throwWrongTypeForParamId(v9, "string", "double", a5, a6, a7, a8, a9);
      goto LABEL_44;
    case 84:
LABEL_44:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_45;
    case 85:
LABEL_45:
      v26 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 85, a4, a5, a6, a7, a8, a9);
      if (v26)
      {
        v32 = **v26;
      }

      DoubleParamSpec::validateValue(v26, a3, 0, 0, v27, v28, v29, v30, v31);
      if (*(this + 9))
      {
        v25 = "FstCoreBeam";
        goto LABEL_149;
      }

      *(this + 52) = a3;
      return;
    case 86:
      v61 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 86, a4, a5, a6, a7, a8, a9);
      if (v61)
      {
        v67 = **v61;
      }

      DoubleParamSpec::validateValue(v61, a3, 0, 0, v62, v63, v64, v65, v66);
      if (*(this + 9))
      {
        v25 = "FstCoreLatticeBeam";
        goto LABEL_149;
      }

      *(this + 53) = a3;
      break;
    case 87:
      throwWrongTypeForParamId(87, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_51;
    case 88:
LABEL_51:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_52;
    case 89:
LABEL_52:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_53;
    case 90:
LABEL_53:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_54;
    case 91:
LABEL_54:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_55;
    case 92:
LABEL_55:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_56;
    case 93:
LABEL_56:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_57;
    case 94:
LABEL_57:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_58;
    case 95:
LABEL_58:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_59;
    case 96:
LABEL_59:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_60;
    case 97:
LABEL_60:
      throwWrongTypeForParamId(v9, "string", "double", a5, a6, a7, a8, a9);
      goto LABEL_61;
    case 98:
LABEL_61:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_62;
    case 99:
LABEL_62:
      throwWrongTypeForParamId(v9, "enum", "double", a5, a6, a7, a8, a9);
      goto LABEL_63;
    case 100:
LABEL_63:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_64;
    case 101:
LABEL_64:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_65;
    case 102:
LABEL_65:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_66;
    case 103:
LABEL_66:
      v33 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 103, a4, a5, a6, a7, a8, a9);
      if (v33)
      {
        v39 = **v33;
      }

      DoubleParamSpec::validateValue(v33, a3, 0, 0, v34, v35, v36, v37, v38);
      if (*(this + 9))
      {
        v25 = "FstCoreLateLatticeArcFingerSuckPenalty";
LABEL_149:

        throwParamSetSetFailed(v25, "double", v19, v20, v21, v22, v23, v24);
      }

      else
      {
        *(this + 61) = a3;
      }

      break;
    case 104:
      throwWrongTypeForParamId(104, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_24;
    case 105:
LABEL_24:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_25;
    case 106:
LABEL_25:
      throwWrongTypeForParamId(v9, "enum", "double", a5, a6, a7, a8, a9);
      goto LABEL_26;
    case 107:
LABEL_26:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_27;
    case 108:
LABEL_27:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_28;
    case 109:
LABEL_28:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_29;
    case 110:
LABEL_29:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_30;
    case 111:
LABEL_30:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_31;
    default:
LABEL_31:

      throwWrongParamIdValue(v9, "double", a4, a5, a6, a7, a8, a9);
      return;
  }
}

void SearchParamSet::setStringParameter(SearchParamSet *this, int a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  switch(a2)
  {
    case 1:
      throwWrongTypeForParamId(1, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_3;
    case 2:
LABEL_3:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_4;
    case 3:
LABEL_4:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_5;
    case 4:
LABEL_5:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_6;
    case 5:
LABEL_6:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_7;
    case 6:
LABEL_7:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
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
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_11;
    case 10:
LABEL_11:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_12;
    case 11:
LABEL_12:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_13;
    case 12:
LABEL_13:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_14;
    case 13:
LABEL_14:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_15;
    case 14:
LABEL_15:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_16;
    case 15:
LABEL_16:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_17;
    case 16:
LABEL_17:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_18;
    case 17:
LABEL_18:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_19;
    case 18:
LABEL_19:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_20;
    case 19:
LABEL_20:

      SearchParamSet::setParamSetSearchConTransAccFactorList(this, a3, a3, a4, a5, a6, a7, a8);
      return;
    case 20:
      throwWrongTypeForParamId(20, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_57;
    case 21:
LABEL_57:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_58;
    case 22:
LABEL_58:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_59;
    case 23:
LABEL_59:
      throwWrongTypeForParamId(v8, "enum", "string", a4, a5, a6, a7, a8);
      goto LABEL_60;
    case 24:
LABEL_60:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_61;
    case 25:
LABEL_61:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_62;
    case 26:
LABEL_62:
      throwWrongTypeForParamId(v8, "enum", "string", a4, a5, a6, a7, a8);
      goto LABEL_63;
    case 27:
LABEL_63:
      throwWrongTypeForParamId(v8, "enum", "string", a4, a5, a6, a7, a8);
      goto LABEL_64;
    case 28:
LABEL_64:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_65;
    case 29:
LABEL_65:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_66;
    case 30:
LABEL_66:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_67;
    case 31:
LABEL_67:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_68;
    case 32:
LABEL_68:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_69;
    case 33:
LABEL_69:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_70;
    case 34:
LABEL_70:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_71;
    case 35:
LABEL_71:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_72;
    case 36:
LABEL_72:
      throwWrongTypeForParamId(v8, "enum", "string", a4, a5, a6, a7, a8);
      goto LABEL_73;
    case 37:
LABEL_73:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_74;
    case 38:
LABEL_74:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_75;
    case 39:
LABEL_75:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_76;
    case 40:
LABEL_76:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_77;
    case 41:
LABEL_77:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_78;
    case 42:
LABEL_78:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_79;
    case 43:
LABEL_79:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_80;
    case 44:
LABEL_80:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_81;
    case 45:
LABEL_81:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_82;
    case 46:
LABEL_82:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_83;
    case 47:
LABEL_83:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_84;
    case 48:
LABEL_84:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_85;
    case 49:
LABEL_85:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_86;
    case 50:
LABEL_86:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_87;
    case 51:
LABEL_87:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_88;
    case 52:
LABEL_88:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_89;
    case 53:
LABEL_89:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_90;
    case 54:
LABEL_90:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_91;
    case 55:
LABEL_91:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_92;
    case 56:
LABEL_92:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_93;
    case 57:
LABEL_93:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_94;
    case 58:
LABEL_94:
      throwWrongTypeForParamId(v8, "enum", "string", a4, a5, a6, a7, a8);
      goto LABEL_95;
    case 59:
LABEL_95:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_96;
    case 60:
LABEL_96:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_97;
    case 61:
LABEL_97:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_98;
    case 62:
LABEL_98:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_99;
    case 63:
LABEL_99:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_100;
    case 64:
LABEL_100:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_101;
    case 65:
LABEL_101:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_102;
    case 66:
LABEL_102:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_103;
    case 67:
LABEL_103:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_104;
    case 68:
LABEL_104:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_105;
    case 69:
LABEL_105:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_106;
    case 70:
LABEL_106:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_107;
    case 71:
LABEL_107:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_108;
    case 72:
LABEL_108:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_109;
    case 73:
LABEL_109:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_110;
    case 74:
LABEL_110:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_111;
    case 75:
LABEL_111:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_112;
    case 76:
LABEL_112:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_113;
    case 77:
LABEL_113:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_114;
    case 78:
LABEL_114:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_115;
    case 79:
LABEL_115:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_116;
    case 80:
LABEL_116:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_117;
    case 81:
LABEL_117:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_118;
    case 82:
LABEL_118:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_119;
    case 83:
LABEL_119:

      SearchParamSet::setParamSetSearchHierScorerBeamList(this, a3, a3, a4, a5, a6, a7, a8);
      return;
    case 84:
      throwWrongTypeForParamId(84, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_41;
    case 85:
LABEL_41:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_42;
    case 86:
LABEL_42:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_43;
    case 87:
LABEL_43:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_44;
    case 88:
LABEL_44:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_45;
    case 89:
LABEL_45:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_46;
    case 90:
LABEL_46:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_47;
    case 91:
LABEL_47:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_48;
    case 92:
LABEL_48:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_49;
    case 93:
LABEL_49:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_50;
    case 94:
LABEL_50:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_51;
    case 95:
LABEL_51:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_52;
    case 96:
LABEL_52:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_53;
    case 97:
LABEL_53:

      SearchParamSet::setParamSetSearchHierScorerCutoffRatioList(this, a3, a3, a4, a5, a6, a7, a8);
      return;
    case 98:
      throwWrongTypeForParamId(98, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_24;
    case 99:
LABEL_24:
      throwWrongTypeForParamId(v8, "enum", "string", a4, a5, a6, a7, a8);
      goto LABEL_25;
    case 100:
LABEL_25:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_26;
    case 101:
LABEL_26:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_27;
    case 102:
LABEL_27:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_28;
    case 103:
LABEL_28:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_29;
    case 104:
LABEL_29:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_30;
    case 105:
LABEL_30:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_31;
    case 106:
LABEL_31:
      throwWrongTypeForParamId(v8, "enum", "string", a4, a5, a6, a7, a8);
      goto LABEL_32;
    case 107:
LABEL_32:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_33;
    case 108:
LABEL_33:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_34;
    case 109:
LABEL_34:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_35;
    case 110:
LABEL_35:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_36;
    case 111:
LABEL_36:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      break;
    default:
      break;
  }

  throwWrongParamIdValue(v8, "string", a3, a4, a5, a6, a7, a8);
}

void SearchParamSet::setEnumParameter(SearchParamSet *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v9 = a3;
  switch(a2)
  {
    case 1:
      throwWrongTypeForParamId(1, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_3;
    case 2:
LABEL_3:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_4;
    case 3:
LABEL_4:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_5;
    case 4:
LABEL_5:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_6;
    case 5:
LABEL_6:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_7;
    case 6:
LABEL_7:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_8;
    case 7:
LABEL_8:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_9;
    case 8:
LABEL_9:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_10;
    case 9:
LABEL_10:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_11;
    case 10:
LABEL_11:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_12;
    case 11:
LABEL_12:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_13;
    case 12:
LABEL_13:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_14;
    case 13:
LABEL_14:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_15;
    case 14:
LABEL_15:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_16;
    case 15:
LABEL_16:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_17;
    case 16:
LABEL_17:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_18;
    case 17:
LABEL_18:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_19;
    case 18:
LABEL_19:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_20;
    case 19:
LABEL_20:
      throwWrongTypeForParamId(v8, "string", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_21;
    case 20:
LABEL_21:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_22;
    case 21:
LABEL_22:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_23;
    case 22:
LABEL_23:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_24;
    case 23:
LABEL_24:
      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051FB8, 23, a3, a4, a5, a6, a7, a8);
      if (ParamByParamId)
      {
        v18 = **ParamByParamId;
      }

      EnumParamSpec::validateValue(ParamByParamId, v9, v12, v13, v14, v15, v16, v17);
      if (*(this + 9))
      {
        v25 = "SearchDecimationType";
        goto LABEL_138;
      }

      *(this + 33) = v9;
      return;
    case 24:
      throwWrongTypeForParamId(24, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_62;
    case 25:
LABEL_62:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_63;
    case 26:
LABEL_63:
      v42 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 26, a3, a4, a5, a6, a7, a8);
      if (v42)
      {
        v49 = **v42;
      }

      EnumParamSpec::validateValue(v42, v9, v43, v44, v45, v46, v47, v48);
      if (*(this + 9))
      {
        v25 = "SearchFrameTransformerThreadingType";
        goto LABEL_138;
      }

      *(this + 38) = v9;
      return;
    case 27:
      v66 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 27, a3, a4, a5, a6, a7, a8);
      if (v66)
      {
        v73 = **v66;
      }

      EnumParamSpec::validateValue(v66, v9, v67, v68, v69, v70, v71, v72);
      if (*(this + 9))
      {
        v25 = "SearchThreadingType";
        goto LABEL_138;
      }

      *(this + 39) = v9;
      return;
    case 28:
      throwWrongTypeForParamId(28, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_49;
    case 29:
LABEL_49:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_50;
    case 30:
LABEL_50:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_51;
    case 31:
LABEL_51:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_52;
    case 32:
LABEL_52:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_53;
    case 33:
LABEL_53:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_54;
    case 34:
LABEL_54:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_55;
    case 35:
LABEL_55:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_56;
    case 36:
LABEL_56:
      v34 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 36, a3, a4, a5, a6, a7, a8);
      if (v34)
      {
        v41 = **v34;
      }

      EnumParamSpec::validateValue(v34, v9, v35, v36, v37, v38, v39, v40);
      if (*(this + 9))
      {
        v25 = "SearchLMLimit";
        goto LABEL_138;
      }

      *(this + 48) = v9;
      return;
    case 37:
      throwWrongTypeForParamId(37, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_114;
    case 38:
LABEL_114:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_115;
    case 39:
LABEL_115:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_116;
    case 40:
LABEL_116:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_117;
    case 41:
LABEL_117:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_118;
    case 42:
LABEL_118:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_119;
    case 43:
LABEL_119:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_120;
    case 44:
LABEL_120:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_121;
    case 45:
LABEL_121:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_122;
    case 46:
LABEL_122:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_123;
    case 47:
LABEL_123:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_124;
    case 48:
LABEL_124:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_125;
    case 49:
LABEL_125:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_126;
    case 50:
LABEL_126:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_127;
    case 51:
LABEL_127:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_128;
    case 52:
LABEL_128:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_129;
    case 53:
LABEL_129:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_130;
    case 54:
LABEL_130:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_131;
    case 55:
LABEL_131:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_132;
    case 56:
LABEL_132:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_133;
    case 57:
LABEL_133:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_134;
    case 58:
LABEL_134:
      v58 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 58, a3, a4, a5, a6, a7, a8);
      if (v58)
      {
        v65 = **v58;
      }

      EnumParamSpec::validateValue(v58, v9, v59, v60, v61, v62, v63, v64);
      if (*(this + 9))
      {
        v25 = "SearchNodeSkippingType";
        goto LABEL_138;
      }

      *(this + 71) = v9;
      return;
    case 59:
      throwWrongTypeForParamId(59, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_69;
    case 60:
LABEL_69:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_70;
    case 61:
LABEL_70:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_71;
    case 62:
LABEL_71:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_72;
    case 63:
LABEL_72:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_73;
    case 64:
LABEL_73:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_74;
    case 65:
LABEL_74:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_75;
    case 66:
LABEL_75:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_76;
    case 67:
LABEL_76:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_77;
    case 68:
LABEL_77:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_78;
    case 69:
LABEL_78:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_79;
    case 70:
LABEL_79:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_80;
    case 71:
LABEL_80:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_81;
    case 72:
LABEL_81:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_82;
    case 73:
LABEL_82:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_83;
    case 74:
LABEL_83:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_84;
    case 75:
LABEL_84:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_85;
    case 76:
LABEL_85:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_86;
    case 77:
LABEL_86:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_87;
    case 78:
LABEL_87:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_88;
    case 79:
LABEL_88:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_89;
    case 80:
LABEL_89:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_90;
    case 81:
LABEL_90:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_91;
    case 82:
LABEL_91:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_92;
    case 83:
LABEL_92:
      throwWrongTypeForParamId(v8, "string", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_93;
    case 84:
LABEL_93:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_94;
    case 85:
LABEL_94:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_95;
    case 86:
LABEL_95:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_96;
    case 87:
LABEL_96:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_97;
    case 88:
LABEL_97:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_98;
    case 89:
LABEL_98:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_99;
    case 90:
LABEL_99:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_100;
    case 91:
LABEL_100:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_101;
    case 92:
LABEL_101:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_102;
    case 93:
LABEL_102:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_103;
    case 94:
LABEL_103:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_104;
    case 95:
LABEL_104:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_105;
    case 96:
LABEL_105:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_106;
    case 97:
LABEL_106:
      throwWrongTypeForParamId(v8, "string", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_107;
    case 98:
LABEL_107:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_108;
    case 99:
LABEL_108:
      v50 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 99, a3, a4, a5, a6, a7, a8);
      if (v50)
      {
        v57 = **v50;
      }

      EnumParamSpec::validateValue(v50, v9, v51, v52, v53, v54, v55, v56);
      if (*(this + 9))
      {
        v25 = "FstCoreLatticeGeneration";
        goto LABEL_138;
      }

      *(this + 119) = v9;
      break;
    case 100:
      throwWrongTypeForParamId(100, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_38;
    case 101:
LABEL_38:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_39;
    case 102:
LABEL_39:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_40;
    case 103:
LABEL_40:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_41;
    case 104:
LABEL_41:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_42;
    case 105:
LABEL_42:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_43;
    case 106:
LABEL_43:
      v26 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 106, a3, a4, a5, a6, a7, a8);
      if (v26)
      {
        v33 = **v26;
      }

      EnumParamSpec::validateValue(v26, v9, v27, v28, v29, v30, v31, v32);
      if (*(this + 9))
      {
        v25 = "SearchPartialIncludePrefiltererResult";
LABEL_138:

        throwParamSetSetFailed(v25, "enum", v19, v20, v21, v22, v23, v24);
      }

      else
      {
        *(this + 126) = v9;
      }

      break;
    case 107:
      throwWrongTypeForParamId(107, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_30;
    case 108:
LABEL_30:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_31;
    case 109:
LABEL_31:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_32;
    case 110:
LABEL_32:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_33;
    case 111:
LABEL_33:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_34;
    default:
LABEL_34:

      throwWrongParamIdValue(v8, "enum", a3, a4, a5, a6, a7, a8);
      return;
  }
}

void SearchParamSet::~SearchParamSet(SearchParamSet *this)
{
  SearchParamSet::~SearchParamSet(this);

  JUMPOUT(0x26672B1B0);
}

{
  *this = &unk_287528020;
  v2 = (this + 104);
  DgnString::~DgnString((this + 456));
  DgnString::~DgnString((this + 392));
  DgnString::~DgnString(v2);
  *this = &unk_287528C00;
  DgnString::~DgnString((this + 8));
}

uint64_t SDWord_New(unint64_t a1, char *a2)
{
  v4 = SdapiInsurance::SdapiInsurance(v15, "SDWord_New", 1, 0, 393);
  if (v15[97] == 1)
  {
    if (!a2)
    {
      throwBadStringPointer(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    v15[151] = 0;
    if (gbShowCalls == 1)
    {
      xlprintf("Entering sdapi call %.500s(<SDh %lld>, '%.500s')\n", v5, v6, v7, v8, "SDWord_New", a1, a2);
    }

    v12 = ModelMgr::smpModelMgr;
    if (HIDWORD(a1) || (a1 & 0xFFFF0000) != 0)
    {
      throwBadSdapiArgument("SDhVoc", a1, v6, v7, v8, v9, v10, v11);
    }

    if (a1 - 1 >= 0x7B)
    {
      throwBadSdapiArgument("SDhVoc", a1, v6, v7, v8, v9, v10, v11);
    }

    v13 = (ModelMgr::createWord(v12, a1, a2, 0xFFFFFFLL, "New", v9, v10, v11) & 0xFFFFFF) + 1;
  }

  else
  {
    v13 = 0;
  }

  SdapiInsurance::~SdapiInsurance(v15);
  return v13;
}