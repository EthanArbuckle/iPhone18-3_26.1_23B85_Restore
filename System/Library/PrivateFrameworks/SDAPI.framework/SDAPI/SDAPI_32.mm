uint64_t readObject<unsigned int,DgnPrimArray<unsigned int>>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v6 = 0;
  v7 = 0;
  readObject<unsigned int>(a1, &v6, a3);
  if (*a2)
  {
    MemChunkFree(*a2, 0);
    *a2 = 0;
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  if (v7)
  {
    v4 = 0;
    do
    {
      DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::enqueue(a2, *(v6 + 4 * v4++));
    }

    while (v4 < v7);
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v6);
}

uint64_t writeObject<unsigned int,DgnPrimArray<unsigned int>>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 20);
  v7 = *(a2 + 24);
  v12 = 0;
  v13 = 0;
  if (v7)
  {
    v9 = 0;
    v7 = 0;
    do
    {
      v10 = *(*a2 + 4 * v5);
      if (v7 == HIDWORD(v13))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v12, 1, 1);
        v7 = v13;
        v9 = v12;
      }

      v9[v7] = v10;
      v7 = v13 + 1;
      LODWORD(v13) = v13 + 1;
      if (v5 + 1 == *(a2 + 8))
      {
        v5 = 0;
      }

      else
      {
        ++v5;
      }
    }

    while (v5 != v6);
  }

  v14 = v7;
  writeObject(a1, &v14, a3);
  writeObjectArray(a1, v12, v13, a3);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v12);
}

void sub_26272F81C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void MergedStateTransition::updateMergedStateTransition(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  if (v6 == -1)
  {
LABEL_12:
    v11 = *(a1 + 8);
    v12 = *(a1 + 12);
    *(a1 + 16) = v11;
    if (v11 == v12)
    {
      DgnPrimArray<unsigned long long>::reallocElts(a1, 1, 1);
      v11 = *(a1 + 8);
    }

    *(*a1 + 8 * v11) = *a3;
    ++*(a1 + 8);
    goto LABEL_15;
  }

  v7 = (*a1 + 8 * v6);
  if (*a3 == *v7 && *(a3 + 4) == v7[1])
  {
    goto LABEL_15;
  }

  v8 = *(a1 + 8);
  if (v8 < 1)
  {
    *(a1 + 16) = v8 - 1;
    if (v8)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v9 = (*a1 + 8 * v8 - 4);
  while (*(v9 - 1) != *a3 || *v9 != *(a3 + 4))
  {
    v9 -= 2;
    v10 = __OFSUB__(v8, 1);
    LODWORD(v8) = v8 - 1;
    if ((v8 < 0) ^ v10 | (v8 == 0))
    {
      goto LABEL_12;
    }
  }

  *(a1 + 16) = v8 - 1;
LABEL_15:
  v13 = DgnArray<PredState>::reverseFind(a1 + 24, a2);
  if (v13 == -1)
  {
    v13 = *(a1 + 32);
    v14 = v13;
    if (v13 == *(a1 + 36))
    {
      DgnArray<RuleDesc>::reallocElts(a1 + 24, 1, 1);
      v14 = *(a1 + 32);
    }

    v15 = *(a1 + 24) + 12 * v14;
    v16 = *a2;
    *(v15 + 8) = *(a2 + 2);
    *v15 = v16;
    ++*(a1 + 32);
    v17 = *(a1 + 48);
    if (v17 == *(a1 + 52))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(a1 + 40, 1, 1);
      v17 = *(a1 + 48);
    }

    DgnString::DgnString((*(a1 + 40) + 16 * v17));
    ++*(a1 + 48);
  }

  v18 = *(a1 + 40) + 16 * v13;
  v19 = *(a1 + 16);
  if (*(v18 + 8) <= v19)
  {
    BitArray::setSize((*(a1 + 40) + 16 * v13), v19 + 1);
    v19 = *(a1 + 16);
  }

  *(*v18 + 4 * (v19 >> 5)) |= 1 << v19;
}

uint64_t DgnArray<PredState>::reverseFind(uint64_t a1, unsigned __int16 *a2)
{
  v3 = *(a1 + 8);
  result = (v3 - 1);
  if (v3 >= 1)
  {
    for (i = (*a1 + 12 * v3 - 4); *(i - 4) != *a2 || *(i - 1) != *(a2 + 1) || *i != *(a2 + 2); i -= 3)
    {
      v6 = __OFSUB__(v3--, 1);
      if ((v3 < 0) ^ v6 | (v3 == 0))
      {
        return 0xFFFFFFFFLL;
      }
    }

    return (v3 - 1);
  }

  return result;
}

uint64_t sizeObject<BitArray>(uint64_t a1, int a2)
{
  DgnString::DgnString(v11);
  v4 = BitArray::sizeObject(v11, 2);
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
        v9 = 16 * v7 - 16;
        do
        {
          v5 += BitArray::sizeObject(*a1 + v9, a2);
          --v8;
          v9 -= 16;
        }

        while (v8 > 1);
      }

      if (!a2)
      {
        v5 += v6 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  BitArray::~BitArray(v11);
  return v5;
}

uint64_t SeedMergedActiveWord::processMergedWord(SeedMergedActiveWord *this, ActiveWord *a2, const HistoryMgr *a3, const PhnIndexSet *a4, int a5)
{
  *(this + 1) = a2;
  v9 = *(a2 + 1);
  *(this + 16) = *(v9 + 16);
  *(this + 17) = *(v9 + 20);
  *(this + 72) = *(v9 + 24);
  v10 = *(a2 + 3);
  v11 = *(v10 + 8);
  v12 = *(a4 + 2);
  BitArray::setSizeNoGrow((this + 32), 0);
  BitArray::setSize((this + 32), v11);
  v13 = *(this + 7);
  if (v11 > v13)
  {
    DgnPrimArray<short>::reallocElts(this + 16, v11 - v13, 0);
  }

  *(this + 6) = v11;
  if (v11 >= 1)
  {
    memset_pattern16(*(this + 2), &unk_262888330, 2 * v11);
  }

  v14 = *(this + 14);
  if (v14 >= v11)
  {
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
    do
    {
      if (v14 == *(this + 15))
      {
        DgnArray<DgnPrimArray<double>>::reallocElts(this + 48, 1, 1);
        v14 = *(this + 14);
      }

      DgnString::DgnString((*(this + 6) + 16 * v14));
      v14 = *(this + 14) + 1;
      *(this + 14) = v14;
    }

    while (v14 < v11);
  }

  v15 = 0;
  do
  {
    BitArray::setSizeNoGrow((*(this + 6) + v15), 0);
    BitArray::setSize((*(this + 6) + v15), v12);
    v15 += 16;
    --v11;
  }

  while (v11);
LABEL_13:
  result = SeedMergedActiveWord::processOnePredStateForPort<true>(this, v10, a3, a5);
  if (v12 >= 1)
  {
    v17 = v12 + 1;
    do
    {
      if ((*(*a4 + 4 * ((v17 - 2) >> 5)) >> (v17 - 2)))
      {
        result = SeedMergedActiveWord::processOnePredStateForPort<false>(this, v10, a3, a5, (v17 - 2));
      }

      --v17;
    }

    while (v17 > 1);
  }

  *(this + 22) = -1;
  return result;
}

void *SeedMergedActiveWord::processOnePredStateForPort<true>(void *result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = **(*(result[1] + 8) + 72);
  v5 = *(v4 + 8);
  if (v5 <= a4)
  {
    if (v5 == 20000)
    {
      v6 = -2;
    }

    else
    {
      v6 = *v4;
    }

    v7 = *(a2 + 32);
    if (v7)
    {
      v8 = 0;
      v9 = (*(a3 + 8) + 36 * v6);
      v11 = v9[2];
      v10 = v9[3];
      v12 = *v9 >> 25;
      v13 = (*(a2 + 24) + 8);
      while (*(v13 - 4) != v12 || *(v13 - 1) != v11 || *v13 != v10)
      {
        ++v8;
        v13 += 3;
        if (v7 == v8)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v8 = 0xFFFFFFFFLL;
    }

    v14 = *(a2 + 40) + 16 * v8;
    v15 = *(v14 + 8);
    if (v15 >= 1)
    {
      v16 = *v14;
      v17 = v15 - 1;
      do
      {
        v18 = v17 >> 5;
        if ((*(v16 + 4 * v18) & (1 << v17)) != 0)
        {
          *(result[4] + 4 * v18) |= 1 << v17;
          v19 = result[2];
          if (v5 < *(v19 + 2 * v17))
          {
            *(v19 + 2 * v17) = v5;
          }
        }

        v20 = v17-- + 1;
      }

      while (v20 > 1);
    }
  }

  return result;
}

uint64_t SeedMergedActiveWord::processOnePredStateForPort<false>(void *a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5)
{
  result = HmmNet::maybeGetNonSilOutPort(*(a1[1] + 8), a5);
  v11 = *(result + 8);
  if (v11 <= a4)
  {
    if (v11 == 20000)
    {
      v12 = -2;
    }

    else
    {
      v12 = *result;
    }

    v13 = *(a2 + 32);
    if (v13)
    {
      v14 = 0;
      v15 = (*(a3 + 8) + 36 * v12);
      v17 = v15[2];
      v16 = v15[3];
      v18 = *v15 >> 25;
      v19 = (*(a2 + 24) + 8);
      while (*(v19 - 4) != v18 || *(v19 - 1) != v17 || *v19 != v16)
      {
        ++v14;
        v19 += 3;
        if (v13 == v14)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v14 = 0xFFFFFFFFLL;
    }

    v20 = *(a2 + 40) + 16 * v14;
    v21 = *(v20 + 8);
    if (v21 >= 1)
    {
      v22 = *v20;
      v23 = v21 + 1;
      v24 = 2 * v21 - 2;
      do
      {
        if ((*(v22 + 4 * ((v23 - 2) >> 5)) >> (v23 - 2)))
        {
          v25 = *(a1[6] + 8 * v24);
          *(v25 + 4 * (a5 >> 5)) |= 1 << a5;
          v26 = a1[2];
          if (v11 < *(v26 + v24))
          {
            *(v26 + v24) = v11;
          }
        }

        --v23;
        v24 -= 2;
      }

      while (v23 > 1);
    }
  }

  return result;
}

uint64_t sizeObject(uint64_t a1, uint64_t a2)
{
  v4 = sizeObject(a1 + 64, a2);
  v5 = sizeObject<PhnIndexSet>(a1 + 48, a2);
  v6 = BitArray::sizeObject(a1 + 32, a2);
  v7 = sizeObject<unsigned short>(a1 + 16, a2);
  v8 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v8 = 4;
  }

  if (a2 == 3)
  {
    v8 = 0;
  }

  return v4 + 4 * (a2 != 3) + v5 + v6 + v7 + v8;
}

{
  active = sizeObject<ActiveWord *>(a1 + 8, a2);
  v5 = sizeObject(a1 + 32, a2);
  v6 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v6 = 4;
  }

  if (a2 == 3)
  {
    v6 = 0;
  }

  v7 = 6;
  if (a2 == 3)
  {
    v7 = 0;
  }

  return v7 + active + v5 + v6;
}

{
  v4 = sizeObject(a1, a2);
  v5 = sizeObject<FeatureFilterSpec>(a1 + 80, a2);
  v6 = sizeObject(a1 + 96, a2);
  v7 = sizeObject<FeatureFilterSpec>(a1 + 104, a2);
  v8 = sizeObject(a1 + 120, a2);
  v9 = sizeObject(a1 + 144, a2);
  v10 = sizeObject(a1 + 184, a2);
  v11 = 12;
  if (a2 == 3)
  {
    v11 = 0;
  }

  return v11 + v4 + v5 + v6 + v7 + v8 + v9 + v10;
}

uint64_t MergedActive::initMergedActive(uint64_t result, uint64_t a2, char a3, char a4)
{
  *result = a2;
  *(result + 128) = a3;
  *(result + 129) = a4;
  return result;
}

uint64_t sizeObject<ActiveWord *>(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    result = 12;
  }

  else
  {
    result = 16;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v4 = *(a1 + 8);
    v5 = 2;
    if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
    {
      v5 = 3;
    }

    if (a2)
    {
      v6 = v4 << v5;
    }

    else
    {
      v6 = (v4 + (*(a1 + 12) - v4)) << v5;
    }

    result += v6;
  }

  return result;
}

uint64_t HmmNet::maybeGetNonSilOutPort(HmmNet *this, unsigned int a2)
{
  v2 = *(this + 10);
  if (v2 < 2)
  {
    v3 = 0;
    return *(*(this + 9) + 8 * v3);
  }

  if (v2 - 3 < 2)
  {
    v3 = *(*(this + 11) + a2);
    if (v3 == 255)
    {
      return 0;
    }

    return *(*(this + 9) + 8 * v3);
  }

  if (v2 == 2)
  {
    v3 = 1;
    return *(*(this + 9) + 8 * v3);
  }

  return 0;
}

uint64_t StartupPrefiltererBuildParamSpecMgr(void)
{
  v21 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v21, "PrefiltererBuildAllowMultiPhonemeSequences", &byte_262899963, &byte_262899963, &sPrefiltererBuildAllowMultiPhonemeSequencesBoolHistory);
  v20 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v20, "PrefiltererBuildDurationScoreScale", &byte_262899963, &byte_262899963, &sPrefiltererBuildDurationScoreScaleDoubleHistory);
  v18 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v18, "PrefiltererBuildBestScoreAdditionalPhonemeStartDepth", &byte_262899963, &byte_262899963, &sPrefiltererBuildBestScoreAdditionalPhonemeStartDepthIntHistory);
  v19 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v19, "PrefiltererBuildMaxPronLength", &byte_262899963, &byte_262899963, &sPrefiltererBuildMaxPronLengthIntHistory);
  v17 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v17, "PrefiltererBuildMaxWordEndScore", &byte_262899963, &byte_262899963, &sPrefiltererBuildMaxWordEndScoreIntHistory);
  v15 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v15, "PrefiltererBuildEnableGenoneScoreCacheThresh", &byte_262899963, &byte_262899963, &sPrefiltererBuildEnableGenoneScoreCacheThreshDoubleHistory);
  v16 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v16, "PrefiltererBuildTruncatePackedIntComponentScores", &byte_262899963, &byte_262899963, &sPrefiltererBuildTruncatePackedIntComponentScoresBoolHistory);
  v13 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v13, "PrefiltererBuildFmpeMinimumPosteriorProbability", &byte_262899963, &byte_262899963, &sPrefiltererBuildFmpeMinimumPosteriorProbabilityDoubleHistory);
  v14 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v14, "PrefiltererBuildLookaheadScoringType", &byte_262899963, &byte_262899963, &sPrefiltererBuildLookaheadScoringTypeEnumHistory);
  v12 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v12, "PrefiltererBuildLookaheadThreadingType", &byte_262899963, &byte_262899963, &sPrefiltererBuildLookaheadThreadingTypeEnumHistory);
  v0 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v0, "PrefiltererBuildThreadingType", &byte_262899963, &byte_262899963, &sPrefiltererBuildThreadingTypeEnumHistory);
  v1 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v1, "PrefiltererBuildUseGPU", &byte_262899963, &byte_262899963, &sPrefiltererBuildUseGPUBoolHistory);
  v2 = MemChunkAlloc(0x38uLL, 0);
  StringParamSpec::StringParamSpec(v2, "PrefiltererBuildHierScorerBeamList", &byte_262899963, &byte_262899963, &sPrefiltererBuildHierScorerBeamListStringHistory);
  v11 = MemChunkAlloc(0x38uLL, 0);
  StringParamSpec::StringParamSpec(v11, "PrefiltererBuildHierScorerCutoffList", &byte_262899963, &byte_262899963, &sPrefiltererBuildHierScorerCutoffListStringHistory);
  v3 = MemChunkAlloc(0x38uLL, 0);
  StringParamSpec::StringParamSpec(v3, "PrefiltererBuildHierScorerCutoffRatioList", &byte_262899963, &byte_262899963, &sPrefiltererBuildHierScorerCutoffRatioListStringHistory);
  v4 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v4, "PrefiltererBuildHierInactiveComponentScore", &byte_262899963, &byte_262899963, &sPrefiltererBuildHierInactiveComponentScoreIntHistory);
  v5 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v5, "PrefiltererBuildDisableHierarchicalScorer", &byte_262899963, &byte_262899963, &sPrefiltererBuildDisableHierarchicalScorerBoolHistory);
  v6 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v6, "PrefiltererBuildDisableGPUScorer", &byte_262899963, &byte_262899963, &sPrefiltererBuildDisableGPUScorerBoolHistory);
  v7 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v7, "PrefiltererBuildContextType", &byte_262899963, &byte_262899963, &sPrefiltererBuildContextTypeEnumHistory);
  v8 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v8, "PrefiltererBuildWordBoundaryType", &byte_262899963, &byte_262899963, &sPrefiltererBuildWordBoundaryTypeEnumHistory);
  ParamSpecMgr::addParam(qword_281051F98, v21);
  ParamSpecMgr::addParam(qword_281051F98, v18);
  ParamSpecMgr::addParam(qword_281051F98, v20);
  ParamSpecMgr::addParam(qword_281051F98, v15);
  ParamSpecMgr::addParam(qword_281051F98, v13);
  ParamSpecMgr::addParam(qword_281051F98, v19);
  ParamSpecMgr::addParam(qword_281051F98, v17);
  ParamSpecMgr::addParam(qword_281051F98, v16);
  ParamSpecMgr::addParam(qword_281051F98, v14);
  ParamSpecMgr::addParam(qword_281051F98, v12);
  ParamSpecMgr::addParam(qword_281051F98, v0);
  ParamSpecMgr::addParam(qword_281051F98, v1);
  ParamSpecMgr::addParam(qword_281051F98, v2);
  ParamSpecMgr::addParam(qword_281051F98, v3);
  ParamSpecMgr::addParam(qword_281051F98, v4);
  ParamSpecMgr::addParam(qword_281051F98, v5);
  ParamSpecMgr::addParam(qword_281051F98, v6);
  ParamSpecMgr::addParam(qword_281051F98, v7);
  ParamSpecMgr::addParam(qword_281051F98, v8);
  ParamSpecMgr::addParam(qword_281051F98, v11);
  v9 = qword_281051F98;

  return ParamSpecMgr::sortParams(v9);
}

_DWORD *PrefiltererBuildParamSet::PrefiltererBuildParamSet(_DWORD *a1, const char *a2, int a3, int a4, int a5)
{
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 2), a2);
  a1[6] = a3;
  a1[7] = a4;
  a1[8] = a5;
  a1[9] = 0;
  *a1 = &unk_287524C80;
  DgnString::DgnString((a1 + 26));
  DgnString::DgnString((a1 + 30));
  (*(*a1 + 16))(a1);
  return a1;
}

void sub_262730750(_Unwind_Exception *a1)
{
  DgnString::~DgnString((v1 + 15));
  DgnString::~DgnString((v1 + 13));
  *v1 = v2;
  DgnString::~DgnString((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t PrefiltererBuildParamSet::PrefiltererBuildParamSet(uint64_t a1, uint64_t a2, char *a3, int a4, int a5, int a6)
{
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 8), a3);
  *(a1 + 24) = a4;
  *(a1 + 28) = a5;
  *(a1 + 32) = a6;
  *(a1 + 36) = 0;
  *a1 = &unk_287524C80;
  DgnString::DgnString((a1 + 104));
  DgnString::DgnString((a1 + 120));
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  v11 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v11;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  DgnString::operator=((a1 + 104), (a2 + 104));
  DgnString::operator=((a1 + 120), (a2 + 120));
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 144) = *(a2 + 144);
  return a1;
}

void sub_26273089C(_Unwind_Exception *a1)
{
  DgnString::~DgnString((v1 + 13));
  *v1 = v2;
  DgnString::~DgnString((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t PrefiltererBuildParamSet::setDefaults(PrefiltererBuildParamSet *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(this + 40) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F98, 1, 0, 0, a5, a6, a7, a8);
  *(this + 11) = ParamSpecMgr::ParamGetDefault_int(qword_281051F98, 2, 0, 0, v9, v10, v11, v12);
  *(this + 6) = ParamSpecMgr::ParamGetDefault_double(qword_281051F98, 3, 0, 0, v13, v14, v15, v16);
  *(this + 7) = ParamSpecMgr::ParamGetDefault_double(qword_281051F98, 4, 0, 0, v17, v18, v19, v20);
  *(this + 8) = ParamSpecMgr::ParamGetDefault_double(qword_281051F98, 5, 0, 0, v21, v22, v23, v24);
  *(this + 18) = ParamSpecMgr::ParamGetDefault_int(qword_281051F98, 6, 0, 0, v25, v26, v27, v28);
  *(this + 19) = ParamSpecMgr::ParamGetDefault_int(qword_281051F98, 7, 0, 0, v29, v30, v31, v32);
  *(this + 80) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F98, 8, 0, 0, v33, v34, v35, v36);
  *(this + 21) = ParamSpecMgr::ParamGetDefault_enum(qword_281051F98, 9, v37, v38, v39, v40, v41, v42);
  *(this + 22) = ParamSpecMgr::ParamGetDefault_enum(qword_281051F98, 10, v43, v44, v45, v46, v47, v48);
  *(this + 23) = ParamSpecMgr::ParamGetDefault_enum(qword_281051F98, 11, v49, v50, v51, v52, v53, v54);
  *(this + 96) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F98, 12, 0, 0, v55, v56, v57, v58);
  Default_string = ParamSpecMgr::ParamGetDefault_string(qword_281051F98, 13, 0, 0, v59, v60, v61, v62);
  DgnString::operator=((this + 104), Default_string);
  v68 = ParamSpecMgr::ParamGetDefault_string(qword_281051F98, 14, 0, 0, v64, v65, v66, v67);
  DgnString::operator=((this + 120), v68);
  *(this + 34) = ParamSpecMgr::ParamGetDefault_int(qword_281051F98, 15, 0, 0, v69, v70, v71, v72);
  *(this + 140) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F98, 16, 0, 0, v73, v74, v75, v76);
  *(this + 141) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F98, 17, 0, 0, v77, v78, v79, v80);
  *(this + 36) = ParamSpecMgr::ParamGetDefault_enum(qword_281051F98, 18, v81, v82, v83, v84, v85, v86);
  result = ParamSpecMgr::ParamGetDefault_enum(qword_281051F98, 19, v87, v88, v89, v90, v91, v92);
  *(this + 37) = result;
  return result;
}

uint64_t PrefiltererBuildParamSet::sizeObject(uint64_t a1, int a2)
{
  v4 = sizeObject(a1 + 8) + 16 * (a2 != 3);
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v6 = sizeObject(a1 + 104);
    v5 = a2 != 3;
    v4 += (8 * v5 || 2 * v5) + 2 * (8 * v5 + 12 * v5) + v6 + sizeObject(a1 + 120) + (v5 || 4 * v5 || 2 * (v5 || 4 * v5));
  }

  return v4;
}

void PrefiltererBuildParamSet::setParamSetPrefiltererBuildHierScorerBeamList(PrefiltererBuildParamSet *this, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 9))
  {
    throwParamSetSetFailed("PrefiltererBuildHierScorerBeamList", "string", a3, a4, a5, a6, a7, a8);
  }

  else
  {
    DgnString::operator=((this + 104), a2);
  }
}

void PrefiltererBuildParamSet::setParamSetPrefiltererBuildHierScorerCutoffRatioList(PrefiltererBuildParamSet *this, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 9))
  {
    throwParamSetSetFailed("PrefiltererBuildHierScorerCutoffRatioList", "string", a3, a4, a5, a6, a7, a8);
  }

  else
  {
    DgnString::operator=((this + 120), a2);
  }
}

uint64_t PrefiltererBuildParamSet::getBoolParameter(_BYTE *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 1:
      if (a3 == 1)
      {
        v12 = qword_281051F98;
        v13 = 1;
        goto LABEL_41;
      }

      if (a3)
      {
        goto LABEL_23;
      }

      v8 = a1[40];
      return v8 & 1;
    case 2:
      v9 = "int";
      v10 = 2;
      goto LABEL_32;
    case 3:
      v9 = "double";
      v10 = 3;
      goto LABEL_32;
    case 4:
      v9 = "double";
      v10 = 4;
      goto LABEL_32;
    case 5:
      v9 = "double";
      v10 = 5;
      goto LABEL_32;
    case 6:
      v9 = "int";
      v10 = 6;
      goto LABEL_32;
    case 7:
      v9 = "int";
      v10 = 7;
      goto LABEL_32;
    case 8:
      if (a3 == 1)
      {
        v12 = qword_281051F98;
        v13 = 8;
        goto LABEL_41;
      }

      if (a3)
      {
        goto LABEL_23;
      }

      v8 = a1[80];
      return v8 & 1;
    case 9:
      v9 = "enum";
      v10 = 9;
      goto LABEL_32;
    case 10:
      v9 = "enum";
      v10 = 10;
      goto LABEL_32;
    case 11:
      v9 = "enum";
      v10 = 11;
      goto LABEL_32;
    case 12:
      if (a3 == 1)
      {
        v12 = qword_281051F98;
        v13 = 12;
        goto LABEL_41;
      }

      if (a3)
      {
        goto LABEL_23;
      }

      v8 = a1[96];
      return v8 & 1;
    case 13:
      v9 = "string";
      v10 = 13;
      goto LABEL_32;
    case 14:
      v9 = "string";
      v10 = 14;
      goto LABEL_32;
    case 15:
      v9 = "int";
      v10 = 15;
      goto LABEL_32;
    case 16:
      if (a3 == 1)
      {
        v12 = qword_281051F98;
        v13 = 16;
        goto LABEL_41;
      }

      if (a3)
      {
        goto LABEL_23;
      }

      v8 = a1[140];
      break;
    case 17:
      if (a3 == 1)
      {
        v12 = qword_281051F98;
        v13 = 17;
LABEL_41:
        ParamByParamId = ParamSpecMgr::getParamByParamId(v12, v13, a3, a4, a5, a6, a7, a8);
        v15 = **ParamByParamId;
      }

      else if (a3)
      {
LABEL_23:
        throwWrongQueryMode(a3, "BOOL", a3, a4, a5, a6, a7, a8);
LABEL_33:
        v8 = 0;
      }

      else
      {
        v8 = a1[141];
      }

      break;
    case 18:
      v9 = "enum";
      v10 = 18;
      goto LABEL_32;
    case 19:
      v9 = "enum";
      v10 = 19;
LABEL_32:
      throwWrongTypeForParamId(v10, v9, "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_33;
    default:
      throwWrongParamIdValue(a2, "BOOL", a3, a4, a5, a6, a7, a8);
      goto LABEL_33;
  }

  return v8 & 1;
}

uint64_t PrefiltererBuildParamSet::getIntParameter(unsigned int *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 1:
      v8 = "BOOL";
      v9 = 1;
      goto LABEL_34;
    case 2:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[11];
        }

        if (a3 != 1)
        {
          goto LABEL_51;
        }

        v10 = qword_281051F98;
        v11 = 2;
        goto LABEL_30;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F98;
        v20 = 2;
        goto LABEL_60;
      }

      if (a3 != 3)
      {
        goto LABEL_51;
      }

      v15 = qword_281051F98;
      v16 = 2;
      goto LABEL_50;
    case 3:
      v8 = "double";
      v9 = 3;
      goto LABEL_34;
    case 4:
      v8 = "double";
      v9 = 4;
      goto LABEL_34;
    case 5:
      v8 = "double";
      v9 = 5;
      goto LABEL_34;
    case 6:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[18];
        }

        if (a3 != 1)
        {
          goto LABEL_51;
        }

        v10 = qword_281051F98;
        v11 = 6;
        goto LABEL_30;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F98;
        v20 = 6;
        goto LABEL_60;
      }

      if (a3 != 3)
      {
        goto LABEL_51;
      }

      v15 = qword_281051F98;
      v16 = 6;
      goto LABEL_50;
    case 7:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[19];
        }

        if (a3 != 1)
        {
          goto LABEL_51;
        }

        v10 = qword_281051F98;
        v11 = 7;
        goto LABEL_30;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F98;
        v20 = 7;
        goto LABEL_60;
      }

      if (a3 != 3)
      {
        goto LABEL_51;
      }

      v15 = qword_281051F98;
      v16 = 7;
      goto LABEL_50;
    case 8:
      v8 = "BOOL";
      v9 = 8;
      goto LABEL_34;
    case 9:
      v8 = "enum";
      v9 = 9;
      goto LABEL_34;
    case 10:
      v8 = "enum";
      v9 = 10;
      goto LABEL_34;
    case 11:
      v8 = "enum";
      v9 = 11;
      goto LABEL_34;
    case 12:
      v8 = "BOOL";
      v9 = 12;
      goto LABEL_34;
    case 13:
      v8 = "string";
      v9 = 13;
      goto LABEL_34;
    case 14:
      v8 = "string";
      v9 = 14;
      goto LABEL_34;
    case 15:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[34];
        }

        if (a3 == 1)
        {
          v10 = qword_281051F98;
          v11 = 15;
LABEL_30:
          ParamByParamId = ParamSpecMgr::getParamByParamId(v10, v11, a3, a4, a5, a6, a7, a8);
          v13 = **ParamByParamId;
        }

LABEL_51:
        throwWrongQueryMode(a3, "int", a3, a4, a5, a6, a7, a8);
        return 0;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F98;
        v20 = 15;
LABEL_60:
        v21 = ParamSpecMgr::getParamByParamId(v19, v20, a3, a4, a5, a6, a7, a8);
        v22 = **v21;
      }

      if (a3 != 3)
      {
        goto LABEL_51;
      }

      v15 = qword_281051F98;
      v16 = 15;
LABEL_50:
      v17 = ParamSpecMgr::getParamByParamId(v15, v16, a3, a4, a5, a6, a7, a8);
      v18 = **v17;
    case 16:
      v8 = "BOOL";
      v9 = 16;
      goto LABEL_34;
    case 17:
      v8 = "BOOL";
      v9 = 17;
      goto LABEL_34;
    case 18:
      v8 = "enum";
      v9 = 18;
      goto LABEL_34;
    case 19:
      v8 = "enum";
      v9 = 19;
LABEL_34:
      throwWrongTypeForParamId(v9, v8, "int", a4, a5, a6, a7, a8);
      return 0;
    default:
      throwWrongParamIdValue(a2, "int", a3, a4, a5, a6, a7, a8);
      return 0;
  }
}

double PrefiltererBuildParamSet::getDoubleParameter(double *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 1:
      v8 = "BOOL";
      v9 = 1;
      goto LABEL_31;
    case 2:
      v8 = "int";
      v9 = 2;
      goto LABEL_31;
    case 3:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[6];
        }

        if (a3 != 1)
        {
          goto LABEL_45;
        }

        v10 = qword_281051F98;
        v11 = 3;
        goto LABEL_21;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F98;
        v20 = 3;
        goto LABEL_52;
      }

      if (a3 != 3)
      {
        goto LABEL_45;
      }

      v15 = qword_281051F98;
      v16 = 3;
      goto LABEL_44;
    case 4:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[7];
        }

        if (a3 != 1)
        {
          goto LABEL_45;
        }

        v10 = qword_281051F98;
        v11 = 4;
        goto LABEL_21;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F98;
        v20 = 4;
        goto LABEL_52;
      }

      if (a3 != 3)
      {
        goto LABEL_45;
      }

      v15 = qword_281051F98;
      v16 = 4;
      goto LABEL_44;
    case 5:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[8];
        }

        if (a3 == 1)
        {
          v10 = qword_281051F98;
          v11 = 5;
LABEL_21:
          ParamByParamId = ParamSpecMgr::getParamByParamId(v10, v11, a3, a4, a5, a6, a7, a8);
          v13 = **ParamByParamId;
        }

LABEL_45:
        throwWrongQueryMode(a3, "double", a3, a4, a5, a6, a7, a8);
        return 0.0;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F98;
        v20 = 5;
LABEL_52:
        v21 = ParamSpecMgr::getParamByParamId(v19, v20, a3, a4, a5, a6, a7, a8);
        v22 = **v21;
      }

      if (a3 != 3)
      {
        goto LABEL_45;
      }

      v15 = qword_281051F98;
      v16 = 5;
LABEL_44:
      v17 = ParamSpecMgr::getParamByParamId(v15, v16, a3, a4, a5, a6, a7, a8);
      v18 = **v17;
    case 6:
      v8 = "int";
      v9 = 6;
      goto LABEL_31;
    case 7:
      v8 = "int";
      v9 = 7;
      goto LABEL_31;
    case 8:
      v8 = "BOOL";
      v9 = 8;
      goto LABEL_31;
    case 9:
      v8 = "enum";
      v9 = 9;
      goto LABEL_31;
    case 10:
      v8 = "enum";
      v9 = 10;
      goto LABEL_31;
    case 11:
      v8 = "enum";
      v9 = 11;
      goto LABEL_31;
    case 12:
      v8 = "BOOL";
      v9 = 12;
      goto LABEL_31;
    case 13:
      v8 = "string";
      v9 = 13;
      goto LABEL_31;
    case 14:
      v8 = "string";
      v9 = 14;
      goto LABEL_31;
    case 15:
      v8 = "int";
      v9 = 15;
      goto LABEL_31;
    case 16:
      v8 = "BOOL";
      v9 = 16;
      goto LABEL_31;
    case 17:
      v8 = "BOOL";
      v9 = 17;
      goto LABEL_31;
    case 18:
      v8 = "enum";
      v9 = 18;
      goto LABEL_31;
    case 19:
      v8 = "enum";
      v9 = 19;
LABEL_31:
      throwWrongTypeForParamId(v9, v8, "double", a4, a5, a6, a7, a8);
      return 0.0;
    default:
      throwWrongParamIdValue(a2, "double", a3, a4, a5, a6, a7, a8);
      return 0.0;
  }
}

char *PrefiltererBuildParamSet::getStringParameter(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 1:
      v8 = "BOOL";
      v9 = 1;
      goto LABEL_28;
    case 2:
      v8 = "int";
      v9 = 2;
      goto LABEL_28;
    case 3:
      v8 = "double";
      v9 = 3;
      goto LABEL_28;
    case 4:
      v8 = "double";
      v9 = 4;
      goto LABEL_28;
    case 5:
      v8 = "double";
      v9 = 5;
      goto LABEL_28;
    case 6:
      v8 = "int";
      v9 = 6;
      goto LABEL_28;
    case 7:
      v8 = "int";
      v9 = 7;
      goto LABEL_28;
    case 8:
      v8 = "BOOL";
      v9 = 8;
      goto LABEL_28;
    case 9:
      v8 = "enum";
      v9 = 9;
      goto LABEL_28;
    case 10:
      v8 = "enum";
      v9 = 10;
      goto LABEL_28;
    case 11:
      v8 = "enum";
      v9 = 11;
      goto LABEL_28;
    case 12:
      v8 = "BOOL";
      v9 = 12;
      goto LABEL_28;
    case 13:
      if (a3 == 1)
      {
        v13 = qword_281051F98;
        v14 = 13;
        goto LABEL_35;
      }

      if (a3)
      {
        goto LABEL_32;
      }

      v10 = *(a1 + 112);
      v11 = *(a1 + 104);
      goto LABEL_21;
    case 14:
      if (a3 == 1)
      {
        v13 = qword_281051F98;
        v14 = 14;
LABEL_35:
        ParamByParamId = ParamSpecMgr::getParamByParamId(v13, v14, a3, a4, a5, a6, a7, a8);
        v16 = **ParamByParamId;
      }

      else if (a3)
      {
LABEL_32:
        throwWrongQueryMode(a3, "string", a3, a4, a5, a6, a7, a8);
        return 0;
      }

      else
      {
        v10 = *(a1 + 128);
        v11 = *(a1 + 120);
LABEL_21:
        if (v10)
        {
          return v11;
        }

        else
        {
          return &byte_262899963;
        }
      }

    case 15:
      v8 = "int";
      v9 = 15;
      goto LABEL_28;
    case 16:
      v8 = "BOOL";
      v9 = 16;
      goto LABEL_28;
    case 17:
      v8 = "BOOL";
      v9 = 17;
      goto LABEL_28;
    case 18:
      v8 = "enum";
      v9 = 18;
      goto LABEL_28;
    case 19:
      v8 = "enum";
      v9 = 19;
LABEL_28:
      throwWrongTypeForParamId(v9, v8, "string", a4, a5, a6, a7, a8);
      return 0;
    default:
      throwWrongParamIdValue(a2, "string", a3, a4, a5, a6, a7, a8);
      return 0;
  }
}

uint64_t PrefiltererBuildParamSet::getEnumParameter(unsigned int *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 1:
      v8 = "BOOL";
      v9 = 1;
      goto LABEL_20;
    case 2:
      v8 = "int";
      v9 = 2;
      goto LABEL_20;
    case 3:
      v8 = "double";
      v9 = 3;
      goto LABEL_20;
    case 4:
      v8 = "double";
      v9 = 4;
      goto LABEL_20;
    case 5:
      v8 = "double";
      v9 = 5;
      goto LABEL_20;
    case 6:
      v8 = "int";
      v9 = 6;
      goto LABEL_20;
    case 7:
      v8 = "int";
      v9 = 7;
      goto LABEL_20;
    case 8:
      v8 = "BOOL";
      v9 = 8;
      goto LABEL_20;
    case 9:
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v41 = qword_281051F98;
          v42 = 9;
          goto LABEL_91;
        }

        if (a3 != 3)
        {
          goto LABEL_79;
        }

        v37 = qword_281051F98;
        v38 = 9;
        goto LABEL_74;
      }

      if (!a3)
      {
        return a1[21];
      }

      if (a3 != 1)
      {
        goto LABEL_79;
      }

      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051F98, 9, a3, a4, a5, a6, a7, a8);
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
    case 10:
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v41 = qword_281051F98;
          v42 = 10;
          goto LABEL_91;
        }

        if (a3 != 3)
        {
          goto LABEL_79;
        }

        v37 = qword_281051F98;
        v38 = 10;
        goto LABEL_74;
      }

      if (!a3)
      {
        return a1[22];
      }

      if (a3 != 1)
      {
        goto LABEL_79;
      }

      v10 = ParamSpecMgr::getParamByParamId(qword_281051F98, 10, a3, a4, a5, a6, a7, a8);
      v11 = **v10;
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
    case 11:
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v41 = qword_281051F98;
          v42 = 11;
          goto LABEL_91;
        }

        if (a3 != 3)
        {
          goto LABEL_79;
        }

        v37 = qword_281051F98;
        v38 = 11;
        goto LABEL_74;
      }

      if (!a3)
      {
        return a1[23];
      }

      if (a3 != 1)
      {
        goto LABEL_79;
      }

      v27 = ParamSpecMgr::getParamByParamId(qword_281051F98, 11, a3, a4, a5, a6, a7, a8);
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
    case 12:
      v8 = "BOOL";
      v9 = 12;
      goto LABEL_20;
    case 13:
      v8 = "string";
      v9 = 13;
      goto LABEL_20;
    case 14:
      v8 = "string";
      v9 = 14;
      goto LABEL_20;
    case 15:
      v8 = "int";
      v9 = 15;
      goto LABEL_20;
    case 16:
      v8 = "BOOL";
      v9 = 16;
      goto LABEL_20;
    case 17:
      v8 = "BOOL";
      v9 = 17;
LABEL_20:
      throwWrongTypeForParamId(v9, v8, "BOOL", a4, a5, a6, a7, a8);
      return 0;
    case 18:
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v41 = qword_281051F98;
          v42 = 18;
          goto LABEL_91;
        }

        if (a3 != 3)
        {
          goto LABEL_79;
        }

        v37 = qword_281051F98;
        v38 = 18;
        goto LABEL_74;
      }

      if (!a3)
      {
        return a1[36];
      }

      if (a3 != 1)
      {
        goto LABEL_79;
      }

      v17 = ParamSpecMgr::getParamByParamId(qword_281051F98, 18, a3, a4, a5, a6, a7, a8);
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
    case 19:
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v41 = qword_281051F98;
          v42 = 19;
LABEL_91:
          v43 = ParamSpecMgr::getParamByParamId(v41, v42, a3, a4, a5, a6, a7, a8);
          if (v43)
          {
            v44 = **v43;
          }

          return EnumParamSpec::getMinVal(v43);
        }

        if (a3 == 3)
        {
          v37 = qword_281051F98;
          v38 = 19;
LABEL_74:
          v39 = ParamSpecMgr::getParamByParamId(v37, v38, a3, a4, a5, a6, a7, a8);
          if (v39)
          {
            v40 = **v39;
          }

          return EnumParamSpec::getMaxVal(v39);
        }

        goto LABEL_79;
      }

      if (!a3)
      {
        return a1[37];
      }

      if (a3 != 1)
      {
LABEL_79:
        throwWrongQueryMode(a3, "enum", a3, a4, a5, a6, a7, a8);
        return 0;
      }

      v22 = ParamSpecMgr::getParamByParamId(qword_281051F98, 19, a3, a4, a5, a6, a7, a8);
      v23 = **v22;
      if (!**(v24 + 24))
      {
        return 0;
      }

      v25 = v24 + 16;
      v26 = 1;
      v15 = v25;
      while (*v15 != 1)
      {
        result = 0;
        v15 = v25 + 32 * v26++;
        if (!**(v15 + 8))
        {
          return result;
        }
      }

      return *(v15 + 16);
    default:
      throwWrongParamIdValue(a2, "enum", a3, a4, a5, a6, a7, a8);
      return 0;
  }
}

void PrefiltererBuildParamSet::setBoolParameter(PrefiltererBuildParamSet *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v9 = a3;
  switch(a2)
  {
    case 1:
      if (*(this + 9))
      {
        v11 = "PrefiltererBuildAllowMultiPhonemeSequences";
        goto LABEL_26;
      }

      *(this + 40) = a3;
      return;
    case 2:
      throwWrongTypeForParamId(2, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_19;
    case 3:
LABEL_19:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_20;
    case 4:
LABEL_20:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_21;
    case 5:
LABEL_21:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_22;
    case 6:
LABEL_22:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_23;
    case 7:
LABEL_23:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_24;
    case 8:
LABEL_24:
      if (*(this + 9))
      {
        v11 = "PrefiltererBuildTruncatePackedIntComponentScores";
        goto LABEL_26;
      }

      *(this + 80) = v9;
      return;
    case 9:
      throwWrongTypeForParamId(9, "enum", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_7;
    case 10:
LABEL_7:
      throwWrongTypeForParamId(v8, "enum", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_8;
    case 11:
LABEL_8:
      throwWrongTypeForParamId(v8, "enum", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_9;
    case 12:
LABEL_9:
      if (*(this + 9))
      {
        v11 = "PrefiltererBuildUseGPU";
        goto LABEL_26;
      }

      *(this + 96) = v9;
      return;
    case 13:
      throwWrongTypeForParamId(13, "string", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_13;
    case 14:
LABEL_13:
      throwWrongTypeForParamId(v8, "string", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_14;
    case 15:
LABEL_14:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_15;
    case 16:
LABEL_15:
      if (*(this + 9))
      {
        v11 = "PrefiltererBuildDisableHierarchicalScorer";
        goto LABEL_26;
      }

      *(this + 140) = v9;
      break;
    case 17:
      if (*(this + 9))
      {
        v11 = "PrefiltererBuildDisableGPUScorer";
LABEL_26:

        throwParamSetSetFailed(v11, "BOOL", a3, a4, a5, a6, a7, a8);
      }

      else
      {
        *(this + 141) = a3;
      }

      break;
    case 18:
      throwWrongTypeForParamId(18, "enum", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_31;
    case 19:
LABEL_31:
      throwWrongTypeForParamId(v8, "enum", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_32;
    default:
LABEL_32:

      throwWrongParamIdValue(v8, "BOOL", a3, a4, a5, a6, a7, a8);
      return;
  }
}

void PrefiltererBuildParamSet::setIntParameter(PrefiltererBuildParamSet *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051F98, 2, a3, a4, a5, a6, a7, a8);
      if (ParamByParamId)
      {
        v16 = **ParamByParamId;
      }

      IntParamSpec::validateValue(ParamByParamId, v9, 0, 0, v12, v13, v14, v15);
      if (*(this + 9))
      {
        v23 = "PrefiltererBuildBestScoreAdditionalPhonemeStartDepth";
        goto LABEL_26;
      }

      *(this + 11) = v9;
      return;
    case 3:
      throwWrongTypeForParamId(3, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_20;
    case 4:
LABEL_20:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_21;
    case 5:
LABEL_21:
      throwWrongTypeForParamId(v8, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_22;
    case 6:
LABEL_22:
      v30 = ParamSpecMgr::getParamByParamId(qword_281051F98, 6, a3, a4, a5, a6, a7, a8);
      if (v30)
      {
        v35 = **v30;
      }

      IntParamSpec::validateValue(v30, v9, 0, 0, v31, v32, v33, v34);
      if (*(this + 9))
      {
        v23 = "PrefiltererBuildMaxPronLength";
        goto LABEL_26;
      }

      *(this + 18) = v9;
      return;
    case 7:
      v36 = ParamSpecMgr::getParamByParamId(qword_281051F98, 7, a3, a4, a5, a6, a7, a8);
      if (v36)
      {
        v41 = **v36;
      }

      IntParamSpec::validateValue(v36, v9, 0, 0, v37, v38, v39, v40);
      if (*(this + 9))
      {
        v23 = "PrefiltererBuildMaxWordEndScore";
        goto LABEL_26;
      }

      *(this + 19) = v9;
      break;
    case 8:
      throwWrongTypeForParamId(8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_8;
    case 9:
LABEL_8:
      throwWrongTypeForParamId(v8, "enum", "int", a4, a5, a6, a7, a8);
      goto LABEL_9;
    case 10:
LABEL_9:
      throwWrongTypeForParamId(v8, "enum", "int", a4, a5, a6, a7, a8);
      goto LABEL_10;
    case 11:
LABEL_10:
      throwWrongTypeForParamId(v8, "enum", "int", a4, a5, a6, a7, a8);
      goto LABEL_11;
    case 12:
LABEL_11:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_12;
    case 13:
LABEL_12:
      throwWrongTypeForParamId(v8, "string", "int", a4, a5, a6, a7, a8);
      goto LABEL_13;
    case 14:
LABEL_13:
      throwWrongTypeForParamId(v8, "string", "int", a4, a5, a6, a7, a8);
      goto LABEL_14;
    case 15:
LABEL_14:
      v24 = ParamSpecMgr::getParamByParamId(qword_281051F98, 15, a3, a4, a5, a6, a7, a8);
      if (v24)
      {
        v29 = **v24;
      }

      IntParamSpec::validateValue(v24, v9, 0, 0, v25, v26, v27, v28);
      if (*(this + 9))
      {
        v23 = "PrefiltererBuildHierInactiveComponentScore";
LABEL_26:

        throwParamSetSetFailed(v23, "int", v17, v18, v19, v20, v21, v22);
      }

      else
      {
        *(this + 34) = v9;
      }

      break;
    case 16:
      throwWrongTypeForParamId(16, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_35;
    case 17:
LABEL_35:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_36;
    case 18:
LABEL_36:
      throwWrongTypeForParamId(v8, "enum", "int", a4, a5, a6, a7, a8);
      goto LABEL_37;
    case 19:
LABEL_37:
      throwWrongTypeForParamId(v8, "enum", "int", a4, a5, a6, a7, a8);
      goto LABEL_38;
    default:
LABEL_38:

      throwWrongParamIdValue(v8, "int", a3, a4, a5, a6, a7, a8);
      return;
  }
}

void PrefiltererBuildParamSet::setDoubleParameter(PrefiltererBuildParamSet *this, int a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051F98, 3, a4, a5, a6, a7, a8, a9);
      if (ParamByParamId)
      {
        v18 = **ParamByParamId;
      }

      DoubleParamSpec::validateValue(ParamByParamId, a3, 0, 0, v13, v14, v15, v16, v17);
      if (*(this + 9))
      {
        v25 = "PrefiltererBuildDurationScoreScale";
        goto LABEL_17;
      }

      *(this + 6) = a3;
      return;
    case 4:
      v33 = ParamSpecMgr::getParamByParamId(qword_281051F98, 4, a4, a5, a6, a7, a8, a9);
      if (v33)
      {
        v39 = **v33;
      }

      DoubleParamSpec::validateValue(v33, a3, 0, 0, v34, v35, v36, v37, v38);
      if (*(this + 9))
      {
        v25 = "PrefiltererBuildEnableGenoneScoreCacheThresh";
        goto LABEL_17;
      }

      *(this + 7) = a3;
      break;
    case 5:
      v26 = ParamSpecMgr::getParamByParamId(qword_281051F98, 5, a4, a5, a6, a7, a8, a9);
      if (v26)
      {
        v32 = **v26;
      }

      DoubleParamSpec::validateValue(v26, a3, 0, 0, v27, v28, v29, v30, v31);
      if (*(this + 9))
      {
        v25 = "PrefiltererBuildFmpeMinimumPosteriorProbability";
LABEL_17:

        throwParamSetSetFailed(v25, "double", v19, v20, v21, v22, v23, v24);
      }

      else
      {
        *(this + 8) = a3;
      }

      break;
    case 6:
      throwWrongTypeForParamId(6, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_21;
    case 7:
LABEL_21:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_22;
    case 8:
LABEL_22:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_23;
    case 9:
LABEL_23:
      throwWrongTypeForParamId(v9, "enum", "double", a5, a6, a7, a8, a9);
      goto LABEL_24;
    case 10:
LABEL_24:
      throwWrongTypeForParamId(v9, "enum", "double", a5, a6, a7, a8, a9);
      goto LABEL_25;
    case 11:
LABEL_25:
      throwWrongTypeForParamId(v9, "enum", "double", a5, a6, a7, a8, a9);
      goto LABEL_26;
    case 12:
LABEL_26:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_27;
    case 13:
LABEL_27:
      throwWrongTypeForParamId(v9, "string", "double", a5, a6, a7, a8, a9);
      goto LABEL_28;
    case 14:
LABEL_28:
      throwWrongTypeForParamId(v9, "string", "double", a5, a6, a7, a8, a9);
      goto LABEL_29;
    case 15:
LABEL_29:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_30;
    case 16:
LABEL_30:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_31;
    case 17:
LABEL_31:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_32;
    case 18:
LABEL_32:
      throwWrongTypeForParamId(v9, "enum", "double", a5, a6, a7, a8, a9);
      goto LABEL_33;
    case 19:
LABEL_33:
      throwWrongTypeForParamId(v9, "enum", "double", a5, a6, a7, a8, a9);
      goto LABEL_34;
    default:
LABEL_34:

      throwWrongParamIdValue(v9, "double", a4, a5, a6, a7, a8, a9);
      return;
  }
}

void PrefiltererBuildParamSet::setStringParameter(PrefiltererBuildParamSet *this, int a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_5;
    case 4:
LABEL_5:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_6;
    case 5:
LABEL_6:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
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
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_10;
    case 9:
LABEL_10:
      throwWrongTypeForParamId(v8, "enum", "string", a4, a5, a6, a7, a8);
      goto LABEL_11;
    case 10:
LABEL_11:
      throwWrongTypeForParamId(v8, "enum", "string", a4, a5, a6, a7, a8);
      goto LABEL_12;
    case 11:
LABEL_12:
      throwWrongTypeForParamId(v8, "enum", "string", a4, a5, a6, a7, a8);
      goto LABEL_13;
    case 12:
LABEL_13:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_14;
    case 13:
LABEL_14:

      PrefiltererBuildParamSet::setParamSetPrefiltererBuildHierScorerBeamList(this, a3, a3, a4, a5, a6, a7, a8);
      return;
    case 14:

      PrefiltererBuildParamSet::setParamSetPrefiltererBuildHierScorerCutoffRatioList(this, a3, a3, a4, a5, a6, a7, a8);
      return;
    case 15:
      throwWrongTypeForParamId(15, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_21;
    case 16:
LABEL_21:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_22;
    case 17:
LABEL_22:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_23;
    case 18:
LABEL_23:
      throwWrongTypeForParamId(v8, "enum", "string", a4, a5, a6, a7, a8);
      goto LABEL_24;
    case 19:
LABEL_24:
      throwWrongTypeForParamId(v8, "enum", "string", a4, a5, a6, a7, a8);
      break;
    default:
      break;
  }

  throwWrongParamIdValue(v8, "string", a3, a4, a5, a6, a7, a8);
}

void PrefiltererBuildParamSet::setEnumParameter(PrefiltererBuildParamSet *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_5;
    case 4:
LABEL_5:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_6;
    case 5:
LABEL_6:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
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
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_10;
    case 9:
LABEL_10:
      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051F98, 9, a3, a4, a5, a6, a7, a8);
      if (ParamByParamId)
      {
        v18 = **ParamByParamId;
      }

      EnumParamSpec::validateValue(ParamByParamId, v9, v12, v13, v14, v15, v16, v17);
      if (*(this + 9))
      {
        v25 = "PrefiltererBuildLookaheadScoringType";
        goto LABEL_29;
      }

      *(this + 21) = v9;
      return;
    case 10:
      v26 = ParamSpecMgr::getParamByParamId(qword_281051F98, 10, a3, a4, a5, a6, a7, a8);
      if (v26)
      {
        v33 = **v26;
      }

      EnumParamSpec::validateValue(v26, v9, v27, v28, v29, v30, v31, v32);
      if (*(this + 9))
      {
        v25 = "PrefiltererBuildLookaheadThreadingType";
        goto LABEL_29;
      }

      *(this + 22) = v9;
      return;
    case 11:
      v50 = ParamSpecMgr::getParamByParamId(qword_281051F98, 11, a3, a4, a5, a6, a7, a8);
      if (v50)
      {
        v57 = **v50;
      }

      EnumParamSpec::validateValue(v50, v9, v51, v52, v53, v54, v55, v56);
      if (*(this + 9))
      {
        v25 = "PrefiltererBuildThreadingType";
        goto LABEL_29;
      }

      *(this + 23) = v9;
      return;
    case 12:
      throwWrongTypeForParamId(12, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_20;
    case 13:
LABEL_20:
      throwWrongTypeForParamId(v8, "string", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_21;
    case 14:
LABEL_21:
      throwWrongTypeForParamId(v8, "string", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_22;
    case 15:
LABEL_22:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_23;
    case 16:
LABEL_23:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_24;
    case 17:
LABEL_24:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_25;
    case 18:
LABEL_25:
      v34 = ParamSpecMgr::getParamByParamId(qword_281051F98, 18, a3, a4, a5, a6, a7, a8);
      if (v34)
      {
        v41 = **v34;
      }

      EnumParamSpec::validateValue(v34, v9, v35, v36, v37, v38, v39, v40);
      if (*(this + 9))
      {
        v25 = "PrefiltererBuildContextType";
        goto LABEL_29;
      }

      *(this + 36) = v9;
      break;
    case 19:
      v42 = ParamSpecMgr::getParamByParamId(qword_281051F98, 19, a3, a4, a5, a6, a7, a8);
      if (v42)
      {
        v49 = **v42;
      }

      EnumParamSpec::validateValue(v42, v9, v43, v44, v45, v46, v47, v48);
      if (*(this + 9))
      {
        v25 = "PrefiltererBuildWordBoundaryType";
LABEL_29:

        throwParamSetSetFailed(v25, "enum", v19, v20, v21, v22, v23, v24);
      }

      else
      {
        *(this + 37) = v9;
      }

      break;
    default:

      throwWrongParamIdValue(a2, "enum", a3, a4, a5, a6, a7, a8);
      return;
  }
}

void PrefiltererBuildParamSet::~PrefiltererBuildParamSet(PrefiltererBuildParamSet *this)
{
  PrefiltererBuildParamSet::~PrefiltererBuildParamSet(this);

  JUMPOUT(0x26672B1B0);
}

{
  *this = &unk_287524C80;
  v2 = (this + 104);
  DgnString::~DgnString((this + 120));
  DgnString::~DgnString(v2);
  *this = &unk_287528C00;
  DgnString::~DgnString((this + 8));
}

void MrecInitModule_wordlist_word(void)
{
  if (!gParDebugShowWordListOnLoad)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugShowWordListOnLoad", &unk_26288C6A6, &unk_26288C6A6, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugShowWordListOnLoad = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowWordListOnLoad);
  }

  if (!gParDebugWordListAddDelete)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugWordListAddDelete", &unk_26288C6A6, &unk_26288C6A6, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugWordListAddDelete = v3;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugWordListAddDelete);
  }

  if (!gParDebugWordListSetAllPronsAsClient)
  {
    v4 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v4, "DebugWordListSetAllPronsAsClient", &unk_26288C6A6, &unk_26288C6A6, 0, 0, 0);
    *v5 = &unk_287527EA0;
    gParDebugWordListSetAllPronsAsClient = v5;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugWordListSetAllPronsAsClient);
  }

  if (!gParDebugWordListSetAsFactory)
  {
    v6 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v6, "DebugWordListSetAsFactory", &unk_26288C6A6, &unk_26288C6A6, 0, 0, 0);
    *v7 = &unk_287527EA0;
    gParDebugWordListSetAsFactory = v7;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugWordListSetAsFactory);
  }

  if (!gParDebugWordListSetPron)
  {
    v8 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v8, "DebugWordListSetPron", &unk_26288C6A6, &unk_26288C6A6, 0, 0, 0);
    *v9 = &unk_287527EA0;
    gParDebugWordListSetPron = v9;
    v10 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v10, &gParDebugWordListSetPron);
  }
}

uint64_t WordIdCollSearchCmp(unsigned int *a1, CharInfo **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2[1];
  v9 = a2[2];
  v11 = *a2;
  v12 = *(a2 + 26);
  v13 = *(a2 + 12);
  v14 = (*(v10 + 28) + *(*(v10 + 25) + 4 * *a1));
  if (v12 == 1)
  {
    return CollMgr::collPrefixcmpUns8(v9, v13, v14, v11, a5, a6, a7, a8);
  }

  else
  {
    return CollMgr::collStrcmpUns8(v9, v13, v14, v11, a5, a6, a7, a8);
  }
}

uint64_t WordIdCollSearchCmpFromWordId(unsigned int *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v11 = *(a2 + 12);
  v20 = *(a2 + 8);
  v12 = v20;
  v13 = a2[26];
  v19 = (*(v20 + 224) + *(*(v20 + 200) + 4 * v10));
  v21 = v11;
  v22 = v13;
  result = WordIdCollSearchCmp(a1, &v19, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    if (a2[26])
    {
      return 0;
    }

    else
    {
      v15 = *a1;
      v16 = *a2;
      if (*(a2 + 12) >= 0xFFFEu)
      {
        return *(*(v12 + 104) + v15) - *(*(v12 + 104) + v16);
      }

      v17 = *(v12 + 256);
      v18 = *(v17 + 4 * v15);
      LODWORD(v17) = *(v17 + 4 * v16);
      result = (v18 - v17);
      if (v18 == v17)
      {
        return *(*(v12 + 104) + v15) - *(*(v12 + 104) + v16);
      }
    }
  }

  return result;
}

void *TagBitsAndStrings::reInit(TagBitsAndStrings *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    MemChunkFree(v2, 0);
    *(this + 1) = 0;
  }

  *(this + 2) = 0;
  result = *(this + 3);
  if (result)
  {
    result = MemChunkFree(result, 0);
    *(this + 3) = 0;
  }

  *(this + 4) = 0;
  return result;
}

uint64_t TagBitsAndStrings::compact(TagBitsAndStrings *this)
{
  v2 = *(this + 1);
  v16 = 0;
  v17 = 0;
  v3 = *(this + 4);
  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 7) >> 3;
    v6 = v5 + 1;
    v7 = *(this + 1);
    do
    {
      v8 = *(v7 + 4 * v4);
      if (v8 != -1)
      {
        v9 = strlen((*(this + 3) + v8 + v5));
        v10 = v17;
        v11 = v6 + v17 + v9;
        if (HIDWORD(v17) < v11)
        {
          v18 = 0;
          HIDWORD(v17) = realloc_array(v16, &v18, v11, v17, v17, 1);
          v16 = v18;
        }

        LODWORD(v17) = v6 + v17 + v9;
        v12 = v6 + v9;
        if (v6 + v9)
        {
          v13 = v10;
          do
          {
            *(v16 + v13++) = *(*(this + 3) + v8++);
            --v12;
          }

          while (v12);
        }

        v7 = *(this + 1);
        *(v7 + 4 * v4) = v10;
        v3 = *(this + 4);
      }

      ++v4;
    }

    while (v4 < v3);
    v14 = v17;
  }

  else
  {
    v14 = 0;
  }

  DgnPrimArray<unsigned char>::copyArraySlice(this + 24, &v16, 0, v14);
  DgnPrimArray<unsigned char>::compact(this + 3);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v16);
}

void sub_262733754(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

size_t TagBitsAndStrings::setTagBits(TagBitsAndStrings *this, unsigned int a2, const BitArray *a3)
{
  result = TagBitsAndStrings::createIndex(this, a2, 0);
  v6 = *(this + 1);
  v7 = v6 + 7;
  v8 = (v6 + 7) >> 3;
  if ((v6 + 7) >= 8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      *(*(this + 3) + (result + v10)) = *(*a3 + (v10 & 0xFFFFFFFC)) >> (v9 & 0x18);
      ++v10;
      v9 += 8;
    }

    while (v8 != v10);
    v6 = *(this + 1);
  }

  v11 = (v7 & 0xFFFFFFF8) - v6;
  if (v11)
  {
    *(*(this + 3) + (result + v8 - 1)) &= ~(~(-1 << v11) << (8 - v11));
  }

  return result;
}

size_t TagBitsAndStrings::createIndex(TagBitsAndStrings *this, unsigned int a2, unsigned int a3)
{
  v6 = *(this + 1) + 7;
  v7 = v6 >> 3;
  v8 = *(this + 4);
  if (v8 <= a2 || (v9 = *(*(this + 1) + 4 * a2), v9 == -1) || (v10 = strlen((*(this + 3) + (v9 + v7))), v10 < a3))
  {
    v11 = a3 + v7 + 1;
    v9 = *(this + 8);
    if (*(this + 9) < (v9 + v11))
    {
      v19 = 0;
      *(this + 9) = realloc_array(*(this + 3), &v19, (v9 + v11), v9, v9, 1);
      *(this + 3) = v19;
      v8 = *(this + 4);
    }

    *(this + 8) = v9 + v11;
    if (v8 <= a2)
    {
      do
      {
        if (v8 == *(this + 5))
        {
          DgnPrimArray<unsigned int>::reallocElts(this + 8, 1, 1);
          v8 = *(this + 4);
        }

        v12 = *(this + 1);
        *(v12 + 4 * v8) = -1;
        v8 = *(this + 4) + 1;
        *(this + 4) = v8;
      }

      while (v8 <= a2);
    }

    else
    {
      v12 = *(this + 1);
      if (*(v12 + 4 * a2) != -1)
      {
        if (v6 >= 8)
        {
          v14 = 0;
          v15 = v9;
          do
          {
            *(*(this + 3) + v15++) = *(*(this + 3) + (v14++ + *(*(this + 1) + 4 * a2)));
          }

          while (v7 != v14);
          v12 = *(this + 1);
        }

        else
        {
          LODWORD(v7) = 0;
        }

        v13 = (v12 + 4 * a2);
        goto LABEL_20;
      }
    }

    LODWORD(v7) = 0;
    v13 = (v12 + 4 * a2);
LABEL_20:
    *v13 = v9;
    if (v7 < v11)
    {
      v16 = v7 + v9;
      v17 = v11 - v7;
      do
      {
        *(*(this + 3) + v16++) = 0;
        --v17;
      }

      while (v17);
    }

    return v9;
  }

  if (v10 > a3)
  {
    *this = 1;
  }

  return v9;
}

void TagBitsAndStrings::getTagBits(TagBitsAndStrings *this, unsigned int a2, BitArray *a3)
{
  v5 = *(*(this + 1) + 4 * a2);
  v6 = *(this + 1);
  BitArray::setSizeNoGrow(a3, 0);
  BitArray::setSize(a3, v6);
  if (v6 + 7 >= 8)
  {
    v7 = 0;
    v8 = 0;
    v9 = *(this + 3);
    v10 = *a3;
    do
    {
      *(v10 + (v8 & 0xFFFFFFFC)) |= *(v9 + (v5 + v8)) << (v7 & 0x18);
      ++v8;
      v7 += 8;
    }

    while ((v6 + 7) >> 3 != v8);
  }
}

size_t TagBitsAndStrings::setTagString(TagBitsAndStrings *this, unsigned int a2, const char *__s)
{
  v3 = __s;
  v6 = strlen(__s);
  result = TagBitsAndStrings::createIndex(this, a2, v6);
  if (v6 + 1 > 1)
  {
    v8 = v6 + 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = result + ((*(this + 1) + 7) >> 3);
  do
  {
    v10 = *v3++;
    *(*(this + 3) + v9++) = v10;
    --v8;
  }

  while (v8);
  return result;
}

uint64_t writeObject(DgnStream *a1, const TagBitsAndStrings *a2, unsigned int *a3)
{
  v7 = *(a2 + 1);
  writeObject(a1, &v7, a3);
  writeObject<unsigned int>(a1, a2 + 8, a3);
  return writeObject<unsigned char>(a1, a2 + 24, a3);
}

void readObject(DgnStream *a1, TagBitsAndStrings *a2, unsigned int *a3)
{
  v18 = 0;
  readObject(a1, &v18, a3);
  *(a2 + 1) = v18;
  if (*(a1 + 32) != 1)
  {
    readObject<unsigned int>(a1, a2 + 8, a3);
    goto LABEL_27;
  }

  HashNCHV<unsigned int,unsigned int,WordIdScope,unsigned int>::HashNCHV(v15, 0, 1);
  readObject<unsigned int,unsigned int,WordIdScope,unsigned int>(a1, v15, a3);
  if (!v16)
  {
    v6 = 0;
    goto LABEL_10;
  }

  v6 = *v17;
  if (*v17)
  {
LABEL_10:
    LODWORD(v7) = 0;
    goto LABEL_11;
  }

  v7 = 0;
  do
  {
    if (v16 - 1 == v7)
    {
      goto LABEL_26;
    }

    v6 = v17[++v7];
  }

  while (!v6);
LABEL_11:
  if (v7 >= v16)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v8 = *(a2 + 4);
    v9 = *(v6 + 2);
    if (v8 <= v9)
    {
      do
      {
        if (v8 == *(a2 + 5))
        {
          DgnPrimArray<unsigned int>::reallocElts(a2 + 8, 1, 1);
          v8 = *(a2 + 4);
        }

        v10 = *(a2 + 1);
        *(v10 + 4 * v8) = -1;
        v8 = *(a2 + 4) + 1;
        *(a2 + 4) = v8;
        v9 = *(v6 + 2);
      }

      while (v8 <= v9);
    }

    else
    {
      v10 = *(a2 + 1);
    }

    *(v10 + 4 * v9) = *(v6 + 3);
    v11 = *v6;
    if (*v6)
    {
      goto LABEL_25;
    }

    v7 = (v7 + 1);
    if (v7 >= v16)
    {
      v11 = v6;
      goto LABEL_25;
    }

    v11 = v17[v7];
    if (!v11)
    {
      break;
    }

LABEL_25:
    v6 = v11;
    if (v7 >= v16)
    {
      goto LABEL_26;
    }
  }

  v12 = &v17[v7 + 1];
  v13 = ~v7 + v16;
  while (v13)
  {
    v14 = *v12++;
    v11 = v14;
    LODWORD(v7) = v7 + 1;
    --v13;
    if (v14)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  HashNCHV<unsigned int,unsigned int,WordIdScope,unsigned int>::~HashNCHV(v15);
LABEL_27:
  readObject<unsigned char>(a1, a2 + 24, a3);
}

void sub_262733D2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HashNCHV<unsigned int,unsigned int,WordIdScope,unsigned int>::~HashNCHV(va);
  _Unwind_Resume(a1);
}

uint64_t readObject<unsigned int,unsigned int,WordIdScope,unsigned int>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v12 = 0;
  readObject(a1, &v12, a3);
  v11 = 0;
  readObject(a1, &v11, a3);
  if (*(a1 + 34) == 1)
  {
    v10 = 0;
    readObject(a1, &v10, a3);
  }

  v10 = 0;
  readObject(a1, &v10, a3);
  result = HashNCHV<unsigned int,unsigned int,WordIdScope,unsigned int>::reInit(a2, v11);
  *(a2 + 20) = 0;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v9 = 0;
      readObject(a1, &v9, a3);
      v8 = 0;
      readObject(a1, &v8, a3);
      result = HashNCHV<unsigned int,unsigned int,WordIdScope,unsigned int>::add(a2, &v9, &v8);
    }
  }

  *(a2 + 20) = v10 != 0;
  return result;
}

{
  v12 = 0;
  readObject(a1, &v12, a3);
  v11 = 0;
  readObject(a1, &v11, a3);
  if (*(a1 + 34) == 1)
  {
    v10 = 0;
    readObject(a1, &v10, a3);
  }

  v10 = 0;
  readObject(a1, &v10, a3);
  result = Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::reInit(a2, v11);
  *(a2 + 20) = 0;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v9 = 0;
      readObject(a1, &v9, a3);
      v8 = 0;
      readObject(a1, &v8, a3);
      result = Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::add(a2, &v9, &v8);
    }
  }

  *(a2 + 20) = v10 != 0;
  return result;
}

void WordList::WordList(WordList *this, CollMgr *a2, const PronCollMgr *a3, const PhnMgr *a4)
{
  *(this + 2) = 0u;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 3) = 0u;
  DgnString::DgnString((this + 88));
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 272) = 0;
  *(this + 274) = 0;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 42) = 0;
  *(this + 43) = 0;
  MrecTime::MrecTime((this + 352));
  *(this + 50) = 0;
  *(this + 51) = 0;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  DgnString::DgnString((this + 464));
  DgnString::DgnString((this + 480));
  DgnString::DgnString((this + 496));
  *(this + 512) = 0;
  *(this + 137) = 0;
  *(this + 516) = 0u;
  *(this + 532) = 0u;
  DgnString::DgnString((this + 560));
  DgnString::DgnString((this + 576));
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  DgnString::DgnString((this + 624));
  DgnString::DgnString((this + 640));
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  v8 = MemChunkAlloc(0x110uLL, 0);
  *(this + 3) = EnvMgr::EnvMgr(v8, 2u);
  *(this + 16) = 0;
  *(this + 54) = 0;
  *(this + 57) = 0;
  *(this + 138) = 0;
  *(this + 48) = 0;
  *(this + 49) = 0;
  *(this + 46) = this;
  *(this + 47) = 0;
  *(this + 104) = 0;
  *(this + 420) = 0;
  v9 = *this;
  *(this + 41) = WordIdCollSearchCmpFromWordId;
  *(this + 42) = this;
  *(this + 43) = v9;
  *(this + 272) = 1;
  *(this + 274) = 131070;
}

void sub_262734028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  BitArray::~BitArray((v16 + 624));
  DgnPrimArray<unsigned int>::~DgnPrimArray(v16 + 608);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v16 + 592);
  BitArray::~BitArray((v16 + 576));
  BitArray::~BitArray((v16 + 560));
  DgnPrimArray<unsigned int>::~DgnPrimArray(v16 + 536);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v16 + 520);
  DgnString::~DgnString((v16 + 496));
  DgnString::~DgnString((v16 + 480));
  DgnString::~DgnString((v16 + 464));
  DgnPrimArray<unsigned int>::~DgnPrimArray(v16 + 440);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v22);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v16 + 400);
  DgnString::~DgnString((v18 + 248));
  DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::~DgnCollArray(v21);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v20);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v19);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a10);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a11);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a12);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a13);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a14);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a15);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v18);
  BitArray::~BitArray((v17 + 56));
  DgnPrimArray<unsigned int>::~DgnPrimArray(a16);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v16 + 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v17);
  _Unwind_Resume(a1);
}

void WordList::~WordList(EnvMgr **this)
{
  DgnDelete<EnvMgr>(this[3]);
  this[3] = 0;
  BitArray::~BitArray((this + 80));
  BitArray::~BitArray((this + 78));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 76));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 74));
  BitArray::~BitArray((this + 72));
  BitArray::~BitArray((this + 70));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 67));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 65));
  DgnString::~DgnString((this + 62));
  DgnString::~DgnString((this + 60));
  DgnString::~DgnString((this + 58));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 55));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 53));
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll((this + 50));
  DgnString::~DgnString((this + 44));
  DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::~DgnCollArray((this + 34));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 32));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 30));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 28));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 25));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 23));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 21));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 19));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 17));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 15));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 13));
  BitArray::~BitArray((this + 11));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 9));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 6));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 4));
}

uLong WordList::computeWordIdNameChecksum(WordList *this, unsigned int a2)
{
  v10 = a2;
  v4 = computeCRC32(0, 0, 0);
  v5 = *(*(this + 25) + 4 * a2);
  v6 = *(this + 28);
  v7 = strlen((v6 + v5));
  v8 = computeCRC32(v4, (v6 + v5), v7);
  return computeCRC32(v8, &v10, 1u);
}

uLong WordList::computeWordIdPronChecksum(WordList *this, unsigned int a2)
{
  v7 = a2;
  LODWORD(v4) = computeCRC32(0, 0, 0);
  v5 = *(this + 4);
  if (*(v5 + 2 * a2))
  {
    v4 = computeCRC32(v4, (*(this + 9) + 2 * *(*(this + 6) + 4 * a2)), *(v5 + 2 * a2));
    if (*(this + 98) >= 2u)
    {
      v4 = computeCRC32(v4, (*(this + 53) + a2), 1u);
    }

    if (*(this + 99) >= 2u)
    {
      LODWORD(v4) = computeCRC32(v4, (*(this + 55) + a2), 1u);
    }
  }

  return computeCRC32(v4, &v7, 1u);
}

uLong WordList::computeWordChecksums(uLong this)
{
  v1 = this;
  *(this + 376) = 0;
  if (*(this + 272) == 1 && *(this + 274) == -2)
  {
    v2 = this + 280;
  }

  else
  {
    v2 = *(*(this + 296) + 524272);
  }

  if (*(v2 + 8))
  {
    v3 = 0;
    do
    {
      this = WordList::computeWordIdNameChecksum(v1, *(*v2 + 4 * v3));
      *(v1 + 94) ^= this;
      ++v3;
      v4 = *(v2 + 8);
    }

    while (v3 < v4);
    *(v1 + 95) = 0;
    if (v4)
    {
      v5 = 0;
      do
      {
        this = WordList::computeWordIdPronChecksum(v1, *(*v2 + 4 * v5));
        *(v1 + 95) ^= this;
        ++v5;
      }

      while (v5 < *(v2 + 8));
    }
  }

  else
  {
    *(this + 380) = 0;
  }

  return this;
}

void WordList::loadTwl(WordList *this, DFile *a2)
{
  DgnTextFileParser::DgnTextFileParser(v386);
  DgnTextFileParser::openDgnTextFileParser(v386, a2, 0x62u, 1);
  DgnTextFileParser::verifyMatchingFileType(v386, "TextWordList");
  v385[0] = 0;
  v385[1] = 0;
  DgnTextFile::legalDgnTextFileVersions(v386, sTWL_Versions, v385, v4, v5, v6, v7, v8);
  DgnTextFileParser::verifyFileVersionInRange(v386, v385, v9, v10, v11, v12, v13, v14);
  FileVersion = DgnTextFile::getFileVersion(v386);
  *v384 = 0;
  v383 = 0;
  v381 = 0;
  v382 = 0;
  v379 = 0;
  v380 = 0;
  DgnTextFile::getHeaderFieldUnsigned(v386, "NumberOfWords", &v384[1], 1, 0, 0xF42400u);
  DgnTextFile::getHeaderFieldUnsigned(v386, "NumberOfPronlessWords", v384, 1, 0, 0xF42400u);
  DgnTextFile::getHeaderFieldUnsigned(v386, "NumberOfPronIds", &v383, 1, 0, 0xF42400u);
  v378 = 0;
  DgnTextFile::getHeaderFieldUnsigned(v386, "NumberOfFreePronIds", &v378, 1, 0, 0xF42400u);
  v335 = v378 + v383;
  if (v383 > 0xFFFFF2 || v378 > 0xFFFFF2 || v335 > 0xFFFFF2 || v384[1] > v383 || v384[0] > v384[1])
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1050, "word/wordlist", 24, "%u %u %u %u", v16, v17, v383);
  }

  v377 = 0;
  *v375 = 0;
  *v376 = 0;
  DgnTextFile::getHeaderFieldUnsigned(v386, "NumberOfPronPredecessorSeedCategories", &v377, 1, 1u, 0xFAu);
  *(this + 98) = v377;
  DgnTextFile::getHeaderFieldUnsigned(v386, "NumberOfPronSuccessorSeedCategories", &v376[1], 1, 1u, 0xFAu);
  *(this + 99) = v376[1];
  DgnTextFile::getHeaderFieldUnsigned(v386, "StartOfUtterancePredecessorSeedCategory", v375, 1, 0, v377);
  *(this + 416) = v375[0];
  DgnTextFile::getHeaderFieldUnsigned(v386, "EndOfUtteranceSuccessorSeedCategory", v375, 1, 0, v376[1]);
  *(this + 417) = v375[0];
  DgnTextFile::getHeaderFieldUnsigned(v386, "RootDeterminesPronPredecessorSeedCategory", v375, 1, 0, 1u);
  *(this + 421) = v375[0] == 1;
  DgnTextFile::getHeaderFieldUnsigned(v386, "RootDeterminesPronSuccessorSeedCategory", v375, 1, 0, 1u);
  *(this + 422) = v375[0] == 1;
  DgnTextFile::getHeaderFieldUnsigned(v386, "DefaultClientPronPredecessorSeedCategory", v376, 1, 0, v377 - 1);
  *(this + 419) = v376[0];
  DgnTextFile::getHeaderFieldUnsigned(v386, "DefaultClientPronSuccessorSeedCategory", &v375[1], 1, 0, v376[1] - 1);
  *(this + 420) = v375[1];
  v331 = FileVersion;
  v332 = HIDWORD(FileVersion);
  if (FileVersion != 19)
  {
    if (FileVersion != 20 || v332 - 18 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_13;
    }

LABEL_12:
    v373[0] = 0;
    DgnTextFile::getHeaderFieldInteger(v386, "WordTagsVersion", v373, 1, -16000000, 16000000);
    v18 = v373[0];
    *(this + 114) = v373[0];
    *(this + 115) = v18;
    goto LABEL_14;
  }

  if (HIDWORD(FileVersion) == 15)
  {
    goto LABEL_12;
  }

LABEL_13:
  DgnTextFile::getHeaderFieldInteger(v386, "RequiredWordTagsVersion", this + 114, 1, -16000000, 16000000);
  DgnTextFile::getHeaderFieldInteger(v386, "OptionalWordTagsVersion", this + 115, 1, -16000000, 16000000);
LABEL_14:
  DgnTextFile::getHeaderField(v386, "RequiredTags", (this + 464), 1);
  splitTagsString(this + 116, &v381);
  *(this + 138) = v382;
  DgnTextFile::getHeaderField(v386, "OptionalTags", (this + 480), 1);
  splitTagsString(this + 120, &v379);
  if (v380)
  {
    *(this + 129) = v380;
  }

  DgnTextFile::getHeaderField(v386, "NewWordTag", (this + 496), 1);
  v21 = *(this + 138);
  if ((v21 != 0) == *(this + 126) < 2u)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1142, "word/wordlist", 58, "%s", v19, v20, &unk_26288C6A6);
    v21 = *(this + 138);
  }

  if (v21)
  {
    tagStringToTagBits(this + 124, &v381, (this + 560));
  }

  DgnString::DgnString(v373);
  DgnTextFile::getHeaderField(v386, "AllowedCollations", v373, 1);
  DgnTextFileParser::verifyNoUnknownHeaderFields(v386, v22, v23, v24, v25, v26, v27, v28);
  WordList::setSizeForWordListLoad(this, v335, *(this + 98), *(this + 99));
  v371 = 0;
  v372 = 0;
  DgnTextFile::getLineFieldNames(v386, &v371);
  v370[0] = 0;
  v370[1] = 0;
  DgnTextFile::getLineFieldFormats(v386, v370);
  if (!v372)
  {
    v342 = -1;
    v343 = -1;
    v340 = -1;
    v341 = -1;
    v338 = -1;
    v339 = -1;
LABEL_58:
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1237, "word/wordlist", 15, "%.500s", v29, v30, "Type");
    v344 = -1;
    goto LABEL_59;
  }

  v31 = 0;
  v32 = 0;
  v343 = -1;
  v344 = -1;
  v341 = -1;
  v342 = -1;
  v339 = -1;
  v340 = -1;
  v338 = -1;
  do
  {
    v33 = *(v371 + v31);
    if (*(v371 + v31 + 8))
    {
      v34 = *(v371 + v31);
    }

    else
    {
      v34 = &unk_26288C6A6;
    }

    if (!strcmp(v34, "Type"))
    {
      if (*(v370[0] + 4 * v32))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1182, "word/wordlist", 59, "%.500s %.500s", v29, v30, v34);
      }

      v344 = v32;
    }

    else if (!strcmp(v34, "WordName"))
    {
      if (*(v370[0] + 4 * v32))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1190, "word/wordlist", 59, "%.500s %.500s", v29, v30, v34);
      }

      v343 = v32;
    }

    else if (!strcmp(v34, "UnsValue1"))
    {
      if (*(v370[0] + 4 * v32) != 3)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1198, "word/wordlist", 59, "%.500s %.500s", v29, v30, v34);
      }

      v342 = v32;
    }

    else if (!strcmp(v34, "UnsValue2"))
    {
      if (*(v370[0] + 4 * v32) != 3)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1206, "word/wordlist", 59, "%.500s %.500s", v29, v30, v34);
      }

      v341 = v32;
    }

    else if (!strcmp(v34, "UnsValue3"))
    {
      if (*(v370[0] + 4 * v32) != 3)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1214, "word/wordlist", 59, "%.500s %.500s", v29, v30, v34);
      }

      v340 = v32;
    }

    else if (!strcmp(v34, "StrValue1"))
    {
      if (*(v370[0] + 4 * v32))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1222, "word/wordlist", 59, "%.500s %.500s", v29, v30, v34);
      }

      v339 = v32;
    }

    else if (!strcmp(v34, "StrValue2"))
    {
      if (*(v370[0] + 4 * v32))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1230, "word/wordlist", 59, "%.500s %.500s", v29, v30, v34);
      }

      v338 = v32;
    }

    else
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1235, "word/wordlist", 12, "%.500s %u %u", v29, v30, v34);
    }

    ++v32;
    v31 += 16;
  }

  while (v32 < v372);
  if (v344 == -1)
  {
    goto LABEL_58;
  }

LABEL_59:
  if (v343 == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1238, "word/wordlist", 15, "%.500s", v29, v30, "WordName");
  }

  if (v342 == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1239, "word/wordlist", 15, "%.500s", v29, v30, "UnsValue1");
  }

  if (v341 == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1240, "word/wordlist", 15, "%.500s", v29, v30, "UnsValue2");
  }

  if (v340 == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1241, "word/wordlist", 15, "%.500s", v29, v30, "UnsValue3");
  }

  if (v339 == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1242, "word/wordlist", 15, "%.500s", v29, v30, "StrValue1");
  }

  if (v338 == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1243, "word/wordlist", 15, "%.500s", v29, v30, "StrValue2");
  }

  v345 = this;
  if (!DgnTextFileParser::parseNextLine(v386))
  {
    goto LABEL_281;
  }

  LineFieldString = DgnTextFileParser::getLineFieldString(v386, v344);
  if ((DgnTextFileParser::atEof(v386) & 1) != 0 || strcmp(LineFieldString, "SeedTable"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1251, "word/wordlist", 43, "%u %.500s", v36, v37, v387);
  }

  v38 = this;
  v39 = *(this + 98);
  v40 = *(v38 + 103);
  if (v39 > v40)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(v345 + 400, v39 - v40, 0);
  }

  v41 = *(v345 + 102);
  if (v41 <= v39)
  {
    v42 = v345;
    if (v41 < v39)
    {
      v45 = v39 - v41;
      v46 = 16 * v41;
      do
      {
        v47 = (*(v345 + 50) + v46);
        *v47 = 0;
        v47[1] = 0;
        v46 += 16;
        --v45;
      }

      while (v45);
    }
  }

  else
  {
    v42 = v345;
    if (v41 > v39)
    {
      v43 = v41;
      v44 = 16 * v41 - 16;
      do
      {
        --v43;
        DgnPrimArray<unsigned int>::~DgnPrimArray(*(v345 + 50) + v44);
        v44 -= 16;
      }

      while (v43 > v39);
    }
  }

  *(v42 + 102) = v39;
  v48 = *(v42 + 98);
  if (!v48)
  {
    goto LABEL_113;
  }

  v49 = 0;
  for (i = 0; i < v48; ++i)
  {
    v51 = *(v345 + 50) + v49;
    v52 = *(v345 + 99);
    if (*(v51 + 12) < v52)
    {
      v368 = 0;
      *(v51 + 12) = realloc_array(*v51, &v368, v52, *(v51 + 8), *(v51 + 8), 1);
      *v51 = v368;
      v48 = *(v345 + 98);
    }

    *(v51 + 8) = v52;
    v49 += 16;
  }

  if (!v48)
  {
LABEL_113:
    v54 = 0;
LABEL_114:
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1289, "word/wordlist", 60, "%s", v36, v37, &errStr_word_wordlist_E_SEED_TABLE_NOSEED);
    goto LABEL_115;
  }

  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = *(v345 + 99);
  do
  {
    if (v56)
    {
      for (j = 0; j < v56; ++j)
      {
        v58 = DgnTextFileParser::getLineFieldString(v386, v344);
        if (strcmp(v58, "SeedTable"))
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1266, "word/wordlist", 61, "%s", v59, v60, &errStr_word_wordlist_E_INCOMPLETE_SEEDTABLE);
        }

        DgnString::DgnString(&v368);
        DgnString::DgnString(&v366);
        DgnString::DgnString(&v364);
        DgnString::DgnString(&v362);
        v61 = DgnTextFileParser::getLineFieldString(v386, v344);
        DgnString::operator=(&v368, v61);
        v62 = DgnTextFileParser::getLineFieldString(v386, v343);
        DgnString::operator=(&v366, v62);
        LineFieldUnsigned = DgnTextFileParser::getLineFieldUnsigned(v386, v342, v63, v64, v65, v66, v67, v68);
        v76 = DgnTextFileParser::getLineFieldUnsigned(v386, v341, v70, v71, v72, v73, v74, v75);
        v83 = DgnTextFileParser::getLineFieldUnsigned(v386, v340, v77, v78, v79, v80, v81, v82);
        v84 = DgnTextFileParser::getLineFieldString(v386, v339);
        DgnString::operator=(&v364, v84);
        v85 = DgnTextFileParser::getLineFieldString(v386, v338);
        DgnString::operator=(&v362, v85);
        v88 = v387;
        if (v367 >= 2)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1270, "word/wordlist", 44, "%u", v86, v87, v387);
        }

        if (LineFieldUnsigned != v55)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1272, "word/wordlist", 62, "%u", v86, v87, v88);
        }

        if (j != v76)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1274, "word/wordlist", 63, "%u", v86, v87, v88);
        }

        if (v83 >= 2)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1276, "word/wordlist", 48, "%u", v86, v87, v88);
        }

        if (v365 >= 2)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1278, "word/wordlist", 49, "%u", v86, v87, v88);
        }

        if (v363 >= 2)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1280, "word/wordlist", 50, "%u", v86, v87, v88);
        }

        *(*(*(v345 + 50) + 16 * LineFieldUnsigned) + v76) = v83 == 1;
        DgnTextFileParser::parseNextLine(v386);
        v54 |= v83 == 0;
        v53 |= v83 == 1;
        DgnString::~DgnString(&v362);
        DgnString::~DgnString(&v364);
        DgnString::~DgnString(&v366);
        DgnString::~DgnString(&v368);
        v56 = *(v345 + 99);
      }

      v48 = *(v345 + 98);
    }

    ++v55;
  }

  while (v55 < v48);
  if ((v53 & 1) == 0)
  {
    goto LABEL_114;
  }

LABEL_115:
  *(v345 + 418) = v54 & 1;
  DgnString::DgnString(&v368);
  if ((DgnTextFileParser::atEof(v386) & 1) == 0)
  {
    v91 = 0;
    v334 = 0;
    v333 = 0;
    v336 = 0xFFFFFF;
    v92 = "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp";
    v93 = 1;
    while (1)
    {
      DgnString::DgnString(&v366);
      DgnString::DgnString(&v364);
      DgnString::DgnString(&v362);
      DgnString::DgnString(&v360);
      v94 = DgnTextFileParser::getLineFieldString(v386, v344);
      DgnString::operator=(&v366, v94);
      v95 = DgnTextFileParser::getLineFieldString(v386, v343);
      DgnString::operator=(&v364, v95);
      v102 = DgnTextFileParser::getLineFieldUnsigned(v386, v342, v96, v97, v98, v99, v100, v101);
      v109 = DgnTextFileParser::getLineFieldUnsigned(v386, v341, v103, v104, v105, v106, v107, v108);
      v116 = DgnTextFileParser::getLineFieldUnsigned(v386, v340, v110, v111, v112, v113, v114, v115);
      v117 = DgnTextFileParser::getLineFieldString(v386, v339);
      DgnString::operator=(&v362, v117);
      v118 = DgnTextFileParser::getLineFieldString(v386, v338);
      DgnString::operator=(&v360, v118);
      v121 = v387;
      if (v109 >= *(v345 + 98))
      {
        errThrowInternal(0, v92, 1310, "word/wordlist", 64, "%u %u", v119, v120, v109);
      }

      if (v116 >= *(v345 + 99))
      {
        errThrowInternal(0, v92, 1313, "word/wordlist", 65, "%u %u", v119, v120, v109);
      }

      v122 = v363;
      v123 = v362;
      v124 = &unk_26288C6A6;
      if (v363)
      {
        v124 = v362;
      }

      v125 = *v124;
      if (v125 != 85 && v125 != 70 || v124[1])
      {
        errThrowInternal(0, v92, 1320, "word/wordlist", 66, "%u %.500s", v119, v120, v121);
        v122 = v363;
        v123 = v362;
      }

      v126 = v122 == 0;
      v127 = &unk_26288C6A6;
      if (!v126)
      {
        v127 = v123;
      }

      v337 = *v127 == 70 && v127[1] == 0;
      if (v365 <= 1)
      {
        errThrowInternal(0, v92, 1331, "word/wordlist", 55, "%d", v119, v120, v121);
      }

      if (v102 >= v335)
      {
        errThrowInternal(0, v92, 1336, "word/wordlist", 5, "%d %.500s %u", v119, v120, v121);
      }

      if (*(v345 + 97) > v102 && *(*(v345 + 13) + v102))
      {
        errThrowInternal(0, v92, 1341, "word/wordlist", 25, "%d %.500s %u", v119, v120, v121);
      }

      DgnString::DgnString(&v358, &v360);
      v128 = v92;
      v356 = 0;
      v357 = 0;
      if (v359)
      {
        v129 = v358;
      }

      else
      {
        v129 = &unk_26288C6A6;
      }

      WordList::strToPhonemes(v345, v129, &v356);
      WordList::checkNewTwlWordBoundaryPhonemes(v345, &v356, v121, &v364, &v358, v130, v131, v132);
      if (v357 >= 0x4000)
      {
        errThrowInternal(0, v92, 1355, "word/wordlist", 7, "%d %.500s %d", v133, v134, v121);
      }

      if (v365)
      {
        v135 = v364;
      }

      else
      {
        v135 = &unk_26288C6A6;
      }

      if (v369)
      {
        v136 = v368;
      }

      else
      {
        v136 = &unk_26288C6A6;
      }

      if (!strcmp(v135, v136))
      {
        if (++v93 >= 0xFF)
        {
          errThrowInternal(0, v128, 1379, "word/wordlist", 32, "%d %.500s %d", v137, v138, v121);
        }

        v139 = v357;
        if (!v333 && v357 != 0)
        {
          v333 = 0;
          v92 = v128;
          goto LABEL_163;
        }

        errThrowInternal(0, v128, 1382, "word/wordlist", 17, "%d %.500s", v137, v138, v121);
        v139 = v357;
      }

      else
      {
        DgnString::operator=(&v368, &v364);
        v139 = v357;
        v333 = v357 == 0;
        if (v357)
        {
          v140 = v334;
        }

        else
        {
          v140 = v334 + 1;
        }

        v334 = v140;
        v93 = 1;
        v336 = v102;
      }

      v92 = v128;
      if (!v139)
      {
        goto LABEL_169;
      }

LABEL_163:
      if (*v356)
      {
        v141 = v139 - 1;
        if (!v356[v141] && v141)
        {
LABEL_168:
          errThrowInternal(0, v92, 1394, "word/wordlist", 37, "%u", v137, v138, v102);
        }
      }

      else if (v139 != 1)
      {
        goto LABEL_168;
      }

LABEL_169:
      if (v93 == 1)
      {
        v142 = 0xFFFFFFFFLL;
        v143 = v336;
      }

      else
      {
        v143 = v336;
        v142 = *(*(v345 + 25) + 4 * v336);
      }

      if (v365)
      {
        v144 = v364;
      }

      else
      {
        v144 = &unk_26288C6A6;
      }

      v145 = WordList::addWordInternal(v345, 0, v102, v143, v142, v144, v93, &v356, 0, 0);
      WordList::setPronPredecessorSeedCategory(v345, v145, v109, v146, v147, v148, v149, v150);
      WordList::setPronSuccessorSeedCategory(v345, v145, v116, v151, v152, v153, v154, v155);
      v156 = 1 << v145;
      v157 = *(v345 + 80);
      if (v337)
      {
        v158 = *(v157 + 4 * (v145 >> 5)) | v156;
      }

      else
      {
        v158 = *(v157 + 4 * (v145 >> 5)) & ~v156;
      }

      *(v157 + 4 * (v145 >> 5)) = v158;
      if (DgnTextFileParser::parseNextLine(v386))
      {
        v159 = DgnTextFileParser::getLineFieldString(v386, v344);
        DgnString::DgnString(&v354, v159);
        if (v355)
        {
          v160 = v354;
        }

        else
        {
          v160 = &unk_26288C6A6;
        }

        v161 = strcmp(v160, "Pron") != 0;
        DgnString::~DgnString(&v354);
      }

      else
      {
        v161 = 1;
      }

      DgnPrimArray<unsigned int>::~DgnPrimArray(&v356);
      DgnString::~DgnString(&v358);
      DgnString::~DgnString(&v360);
      DgnString::~DgnString(&v362);
      DgnString::~DgnString(&v364);
      DgnString::~DgnString(&v366);
      ++v91;
      if (v161)
      {
        goto LABEL_185;
      }
    }
  }

  v334 = 0;
  v91 = 0;
LABEL_185:
  v162 = v345;
  if (v91 != v383)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1429, "word/wordlist", 1, "%d %d", v89, v90, v383);
  }

  if (v331 == 19)
  {
    if (v332 == 15)
    {
      goto LABEL_194;
    }
  }

  else if (v331 == 20 && v332 == 16)
  {
    goto LABEL_194;
  }

  if (v334 != v384[0])
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1434, "word/wordlist", 29, "%u %u", v89, v90, v384[0]);
  }

LABEL_194:
  WordList::setupWordIdsForWordListLoad(v345);
  BitArray::BitArray(&v366, *(v345 + 97));
  DgnString::DgnString(&v364);
  if (DgnTextFileParser::atEof(v386))
  {
    goto LABEL_229;
  }

  while (1)
  {
    DgnString::DgnString(&v362);
    DgnString::DgnString(&v360);
    DgnString::DgnString(&v358);
    DgnString::DgnString(&v356);
    v165 = DgnTextFileParser::getLineFieldString(v386, v344);
    DgnString::operator=(&v362, v165);
    v166 = DgnTextFileParser::getLineFieldString(v386, v343);
    DgnString::operator=(&v360, v166);
    v173 = DgnTextFileParser::getLineFieldUnsigned(v386, v342, v167, v168, v169, v170, v171, v172);
    v180 = DgnTextFileParser::getLineFieldUnsigned(v386, v341, v174, v175, v176, v177, v178, v179);
    v187 = DgnTextFileParser::getLineFieldUnsigned(v386, v340, v181, v182, v183, v184, v185, v186);
    v188 = DgnTextFileParser::getLineFieldString(v386, v339);
    DgnString::operator=(&v358, v188);
    v189 = DgnTextFileParser::getLineFieldString(v386, v338);
    DgnString::operator=(&v356, v189);
    if (v180)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1443, "word/wordlist", 46, "%u", v190, v191, v387);
    }

    if (v187)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1445, "word/wordlist", 47, "%u", v190, v191, v387);
    }

    v192 = v387;
    if (v361 > 1 || (errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1449, "word/wordlist", 55, "%d", v190, v191, v387), v361))
    {
      v193 = v360;
    }

    else
    {
      v193 = &unk_26288C6A6;
    }

    v196 = WordList::lookupWord(v345, v193);
    if (v196 == 0xFFFFFF)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1452, "word/wordlist", 52, "%d %.500s", v194, v195, v192);
    }

    v197 = v366;
    v198 = v196 >> 5;
    v199 = *(v366 + 4 * (v196 >> 5));
    v200 = 1 << v196;
    if ((v199 & (1 << v196)) != 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1454, "word/wordlist", 53, "%d %.500s %.500s", v194, v195, v192);
      v197 = v366;
      v199 = *(v366 + 4 * v198);
    }

    *(v197 + 4 * v198) = v199 | v200;
    if (v173)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1458, "word/wordlist", 45, "%u", v194, v195, v192);
    }

    v201 = &unk_26288C6A6;
    if (v359)
    {
      v201 = v358;
    }

    v202 = *v201;
    if (v202 != 85)
    {
      if (v202 == 70 && !v201[1])
      {
        v203 = *(v345 + 78);
        v204 = *(v203 + 4 * v198) | v200;
        goto LABEL_217;
      }

LABEL_215:
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1467, "word/wordlist", 67, "%u %.500s", v194, v195, v192);
      goto LABEL_216;
    }

    if (v201[1])
    {
      goto LABEL_215;
    }

LABEL_216:
    v203 = *(v345 + 78);
    v204 = *(v203 + 4 * v198) & ~v200;
LABEL_217:
    *(v203 + 4 * v198) = v204;
    DgnString::DgnString(&v354, &v356);
    v207 = *(v345 + 138);
    if ((v207 != 0) == v355 < 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1474, "word/wordlist", 21, "%d %.500s", v205, v206, v192);
      v207 = *(v345 + 138);
    }

    v162 = v345;
    if (v207)
    {
      tagStringToTagBits(&v354, &v381, &v364);
      BitArray::setBitsInRange(v345 + 72, &v364, *(v345 + 138) * v196, *(v345 + 138) * v196 + *(v345 + 138));
    }

    if (!DgnTextFileParser::parseNextLine(v386))
    {
      break;
    }

    v208 = DgnTextFileParser::getLineFieldString(v386, v344);
    DgnString::DgnString(&v352, v208);
    if (v353)
    {
      v209 = v352;
    }

    else
    {
      v209 = &unk_26288C6A6;
    }

    v210 = strcmp(v209, "ReqTags");
    DgnString::~DgnString(&v352);
    DgnString::~DgnString(&v354);
    DgnString::~DgnString(&v356);
    DgnString::~DgnString(&v358);
    DgnString::~DgnString(&v360);
    DgnString::~DgnString(&v362);
    if (v210)
    {
      goto LABEL_229;
    }
  }

  DgnString::~DgnString(&v354);
  DgnString::~DgnString(&v356);
  DgnString::~DgnString(&v358);
  DgnString::~DgnString(&v360);
  DgnString::~DgnString(&v362);
LABEL_229:
  v211 = *(v162 + 97);
  if (v211)
  {
    for (k = 0; k < v211; ++k)
    {
      if (*(*(v345 + 13) + k) && k == *(*(v345 + 32) + 4 * k) && ((*(v366 + ((k >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> k) & 1) == 0)
      {
        v330 = *(v345 + 28) + *(*(v345 + 25) + 4 * k);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1504, "word/wordlist", 54, "%d %.500s %.500s", v163, v164, v387);
        v211 = *(v345 + 97);
      }
    }
  }

  BitArray::BitArray(&v362, v211);
  if ((DgnTextFileParser::atEof(v386) & 1) == 0)
  {
    v213 = DgnTextFileParser::getLineFieldString(v386, v344);
    if (!strcmp(v213, "OptTags"))
    {
      do
      {
        DgnString::DgnString(&v360);
        DgnString::DgnString(&v358);
        DgnString::DgnString(&v356);
        DgnString::DgnString(&v354);
        v289 = DgnTextFileParser::getLineFieldString(v386, v344);
        DgnString::operator=(&v360, v289);
        v290 = DgnTextFileParser::getLineFieldString(v386, v343);
        DgnString::operator=(&v358, v290);
        v297 = DgnTextFileParser::getLineFieldUnsigned(v386, v342, v291, v292, v293, v294, v295, v296);
        v304 = DgnTextFileParser::getLineFieldUnsigned(v386, v341, v298, v299, v300, v301, v302, v303);
        v311 = DgnTextFileParser::getLineFieldUnsigned(v386, v340, v305, v306, v307, v308, v309, v310);
        v312 = DgnTextFileParser::getLineFieldString(v386, v339);
        DgnString::operator=(&v356, v312);
        v313 = DgnTextFileParser::getLineFieldString(v386, v338);
        DgnString::operator=(&v354, v313);
        if (v297)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1514, "word/wordlist", 45, "%u", v314, v315, v387);
        }

        if (v304)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1516, "word/wordlist", 46, "%u", v314, v315, v387);
        }

        if (v311)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1518, "word/wordlist", 47, "%u", v314, v315, v387);
        }

        v316 = v387;
        if (v359 > 1 || (errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1521, "word/wordlist", 55, "%d", v314, v315, v387), v359))
        {
          v317 = v358;
        }

        else
        {
          v317 = &unk_26288C6A6;
        }

        v320 = WordList::lookupWord(v345, v317);
        if (v320 == 0xFFFFFF)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1524, "word/wordlist", 52, "%d %.500s", v318, v319, v316);
        }

        v321 = v362;
        v322 = v320 >> 5;
        v323 = *&v362[4 * (v320 >> 5)];
        if ((v323 & (1 << v320)) != 0)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1526, "word/wordlist", 53, "%d %.500s %.500s", v318, v319, v316);
          v321 = v362;
          v323 = *&v362[4 * v322];
        }

        *&v321[4 * v322] = v323 | (1 << v320);
        DgnString::DgnString(&v352, &v356);
        DgnString::DgnString(&__s, &v354);
        v326 = v353;
        if (!*(v345 + 129) && v353 >= 2)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1532, "word/wordlist", 6, "%d %.500s", v324, v325, v316);
          v326 = v353;
        }

        if (v326 <= 1 && v351 >= 2)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1535, "word/wordlist", 30, "%d %.500s", v324, v325, v316);
          v326 = v353;
        }

        if (*(v345 + 129))
        {
          if (v326 >= 2)
          {
            tagStringToTagBits(&v352, &v379, &v364);
            TagBitsAndStrings::setTagBits((v345 + 512), v320, &v364);
            if (v351 >= 2)
            {
              TagBitsAndStrings::setTagString((v345 + 512), v320, __s);
            }
          }
        }

        if (DgnTextFileParser::parseNextLine(v386))
        {
          v327 = DgnTextFileParser::getLineFieldString(v386, v344);
          DgnString::DgnString(&v348, v327);
          if (v349)
          {
            v328 = v348;
          }

          else
          {
            v328 = &unk_26288C6A6;
          }

          v329 = strcmp(v328, "OptTags") != 0;
          DgnString::~DgnString(&v348);
        }

        else
        {
          v329 = 1;
        }

        DgnString::~DgnString(&__s);
        DgnString::~DgnString(&v352);
        DgnString::~DgnString(&v354);
        DgnString::~DgnString(&v356);
        DgnString::~DgnString(&v358);
        DgnString::~DgnString(&v360);
      }

      while (!v329);
    }
  }

  BitArray::BitArray(&v360, *(v345 + 97));
  if (DgnTextFileParser::atEof(v386))
  {
    v214 = 1;
  }

  else
  {
    v215 = DgnTextFileParser::getLineFieldString(v386, v344);
    v214 = strcmp(v215, "Env") != 0;
  }

  DgnString::DgnString(&v358);
  if (!v214)
  {
    v216 = *(v345 + 3);
    while (1)
    {
      DgnString::DgnString(&v356);
      DgnString::DgnString(&v354);
      DgnString::DgnString(&v352);
      DgnString::DgnString(&__s);
      v217 = DgnTextFileParser::getLineFieldString(v386, v344);
      DgnString::operator=(&v356, v217);
      v218 = DgnTextFileParser::getLineFieldString(v386, v343);
      DgnString::operator=(&v354, v218);
      v225 = DgnTextFileParser::getLineFieldUnsigned(v386, v342, v219, v220, v221, v222, v223, v224);
      v232 = DgnTextFileParser::getLineFieldUnsigned(v386, v341, v226, v227, v228, v229, v230, v231);
      v239 = DgnTextFileParser::getLineFieldUnsigned(v386, v340, v233, v234, v235, v236, v237, v238);
      v240 = DgnTextFileParser::getLineFieldString(v386, v339);
      DgnString::operator=(&v352, v240);
      v241 = DgnTextFileParser::getLineFieldString(v386, v338);
      DgnString::operator=(&__s, v241);
      if (v225)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1570, "word/wordlist", 45, "%u", v242, v243, v387);
      }

      if (v232)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1572, "word/wordlist", 46, "%u", v242, v243, v387);
      }

      if (v239)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1574, "word/wordlist", 47, "%u", v242, v243, v387);
      }

      v244 = v387;
      if (v355 > 1 || (errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1577, "word/wordlist", 55, "%d", v242, v243, v387), v355))
      {
        v245 = v354;
      }

      else
      {
        v245 = &unk_26288C6A6;
      }

      v248 = WordList::lookupWord(v345, v245);
      if (v248 == 0xFFFFFF)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1580, "word/wordlist", 52, "%d %.500s", v246, v247, v244);
      }

      v249 = v360;
      v250 = v248 >> 5;
      v251 = *&v360[4 * (v248 >> 5)];
      if ((v251 & (1 << v248)) != 0)
      {
        v252 = v355 ? v354 : &unk_26288C6A6;
        v253 = v359 ? v358 : &unk_26288C6A6;
        if (strcmp(v252, v253))
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1583, "word/wordlist", 53, "%d %.500s %.500s", v254, v255, v244);
          v249 = v360;
          v251 = *&v360[4 * v250];
        }
      }

      *&v249[4 * v250] = v251 | (1 << v248);
      DgnString::operator=(&v358, &v354);
      ItemEnvIdMaybeNew = EnvMgr::getItemEnvIdMaybeNew(v216, v248, 1, v256, v257, v258, v259, v260);
      if (v353 <= 1)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1590, "word/wordlist", 56, "%u", v261, v262, v387);
      }

      if (v351 <= 1)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1592, "word/wordlist", 57, "%u", v261, v262, v387);
      }

      v348 = 0;
      v349 = 0;
      DgnTextFile::convertFromEnvValueFormat(&__s, &v348);
      v266 = v353 ? v352 : &unk_26288C6A6;
      EnvMgr::setData(v216, ItemEnvIdMaybeNew, v266, v348, v349, 1, v264, v265);
      if (!DgnTextFileParser::parseNextLine(v386))
      {
        break;
      }

      v267 = DgnTextFileParser::getLineFieldString(v386, v344);
      DgnString::DgnString(&v346, v267);
      if (v347)
      {
        v268 = v346;
      }

      else
      {
        v268 = &unk_26288C6A6;
      }

      v269 = strcmp(v268, "Env");
      DgnString::~DgnString(&v346);
      DgnPrimFixArray<double>::~DgnPrimFixArray(&v348);
      DgnString::~DgnString(&__s);
      DgnString::~DgnString(&v352);
      DgnString::~DgnString(&v354);
      DgnString::~DgnString(&v356);
      if (v269)
      {
        goto LABEL_278;
      }
    }

    DgnPrimFixArray<double>::~DgnPrimFixArray(&v348);
    DgnString::~DgnString(&__s);
    DgnString::~DgnString(&v352);
    DgnString::~DgnString(&v354);
    DgnString::~DgnString(&v356);
  }

LABEL_278:
  if ((DgnTextFileParser::atEof(v386) & 1) == 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1609, "word/wordlist", 51, "%u", v270, v271, v387);
  }

  DgnString::~DgnString(&v358);
  BitArray::~BitArray(&v360);
  BitArray::~BitArray(&v362);
  BitArray::~BitArray(&v364);
  BitArray::~BitArray(&v366);
  DgnString::~DgnString(&v368);
  this = v345;
LABEL_281:
  PrefiltererWordIdPronCollArray::removeAll(this + 352);
  WordIdPronCollArray::addArray(this + 352, this + 280);
  v368 = 0;
  v369 = 0;
  if (v374)
  {
    v272 = *v373;
  }

  else
  {
    v272 = &unk_26288C6A6;
  }

  DgnSplitStringIntoTokens(v272, ",", &v368, 0);
  v366 = 0;
  v367 = 0;
  if (v369)
  {
    v273 = 0;
    v274 = 0;
    do
    {
      v275 = *(v368 + v273);
      if (*(v368 + v273 + 8))
      {
        v276 = *(v368 + v273);
      }

      else
      {
        v276 = &unk_26288C6A6;
      }

      if (!strcmp(v276, "_IDENTITY"))
      {
        v286 = -2;
      }

      else
      {
        v283 = CollMgr::lookupCollation(*v345, v276, v277, v278, v279, v280, v281, v282);
        v286 = v283;
        if (!v283)
        {
          if (*(v368 + v273 + 8))
          {
            v287 = *(v368 + v273);
          }

          else
          {
            v287 = &unk_26288C6A6;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1626, "word/wordlist", 36, "%.500s", v284, v285, v287);
          v286 = 0;
        }
      }

      v288 = v367;
      if (v367 == HIDWORD(v367))
      {
        DgnPrimArray<short>::reallocElts(&v366, 1, 1);
        v288 = v367;
      }

      *(v366 + 2 * v288) = v286;
      LODWORD(v367) = v288 + 1;
      ++v274;
      v273 += 16;
    }

    while (v274 < v369);
  }

  DgnCollArray<unsigned int,WordList>::setColls(v345 + 272, &v366);
  WordList::computeWordChecksums(v345);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v366);
  DgnArray<DgnString>::releaseAll(&v368);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v370);
  DgnArray<DgnString>::releaseAll(&v371);
  DgnString::~DgnString(v373);
  DgnArray<DgnString>::releaseAll(&v379);
  DgnArray<DgnString>::releaseAll(&v381);
  DgnIArray<Utterance *>::~DgnIArray(v385);
  DgnTextFileParser::~DgnTextFileParser(v386);
}

void sub_262736990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, char a40, uint64_t a41, char a42, uint64_t a43, char a44, uint64_t a45, char a46, uint64_t a47, char a48, uint64_t a49, char a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  BitArray::~BitArray(&a38);
  BitArray::~BitArray(&a40);
  BitArray::~BitArray(&a42);
  BitArray::~BitArray(&a44);
  DgnString::~DgnString(&a46);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a48);
  DgnArray<DgnString>::releaseAll(&a50);
  DgnString::~DgnString(&a52);
  DgnArray<DgnString>::releaseAll(&a57);
  DgnArray<DgnString>::releaseAll(&a59);
  DgnIArray<Utterance *>::~DgnIArray(&a63);
  DgnTextFileParser::~DgnTextFileParser(&a65);
  _Unwind_Resume(a1);
}

void splitTagsString(_DWORD *a1, uint64_t a2)
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
  v6 = a1[2];
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v6 >= 2 && (**a1 != 48 || *(*a1 + 1)))
  {
    DgnString::DgnString(&v19);
    v10 = 0;
    if (v7 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v7;
    }

    do
    {
      v12 = *(*a1 + v10);
      if ((v12 - 65) < 0x1A)
      {
        goto LABEL_38;
      }

      if (v12 == 95 || (v12 - 97) < 0x1Au)
      {
        goto LABEL_38;
      }

      if (v10)
      {
        v14 = (v12 - 48) >= 0xA;
      }

      else
      {
        v14 = 1;
      }

      v15 = !v14;
      if (v12 != 44 && (v15 & 1) == 0)
      {
        a1[2];
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 376, "word/wordlist", 18, "%c %.500s", v8, v9, *(*a1 + v10));
      }

      if (v12 == 44)
      {
        ++v10;
        if (v20 < 2 || v10 == v7)
        {
          if (a1[2])
          {
            v16 = *a1;
          }

          else
          {
            v16 = &unk_26288C6A6;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 382, "word/wordlist", 19, "%.500s", v8, v9, v16);
        }

        v17 = *(a2 + 8);
        if (v17 == *(a2 + 12))
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(a2, 1, 1);
          v17 = *(a2 + 8);
        }

        DgnString::DgnString((*a2 + 16 * v17), &v19);
        ++*(a2 + 8);
        v20 = 0;
      }

      else
      {
LABEL_38:
        DgnString::operator+=(&v19, v12);
        ++v10;
      }
    }

    while (v10 != v11);
    v18 = *(a2 + 8);
    if (v18 == *(a2 + 12))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(a2, 1, 1);
      v18 = *(a2 + 8);
    }

    DgnString::DgnString((*a2 + 16 * v18), &v19);
    ++*(a2 + 8);
    DgnString::~DgnString(&v19);
  }
}

void sub_262736F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void *tagStringToTagBits(_DWORD *a1, unsigned int *a2, BitArray *a3)
{
  v25 = 0;
  v26 = 0;
  splitTagsString(a1, &v25);
  v6 = a2[2];
  BitArray::setSize(a3, a2[2]);
  if (v6)
  {
    v7 = v26 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    LODWORD(v8) = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = v25;
    v11 = (*a2 + 8);
    do
    {
      v12 = v10 + 16 * v9;
      if (*v11)
      {
        v13 = *(v11 - 1);
      }

      else
      {
        v13 = &unk_26288C6A6;
      }

      v14 = *(v12 + 8);
      v15 = *v12;
      if (v14)
      {
        v16 = v15;
      }

      else
      {
        v16 = &unk_26288C6A6;
      }

      v17 = strcmp(v13, v16);
      v20 = 1 << v8;
      v21 = v8 >> 5;
      if (v17)
      {
        *(*a3 + 4 * v21) &= ~v20;
      }

      else
      {
        *(*a3 + 4 * v21) |= v20;
        ++v9;
      }

      if (++v8 >= v6)
      {
        break;
      }

      v11 += 4;
    }

    while (v9 < v26);
    if (v9 < v26)
    {
      if (a1[2])
      {
        v22 = *a1;
      }

      else
      {
        v22 = &unk_26288C6A6;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 428, "word/wordlist", 20, "%.500s", v18, v19, v22);
    }
  }

  if (v8 < v6)
  {
    v23 = *a3;
    do
    {
      *(v23 + 4 * (v8 >> 5)) &= ~(1 << v8);
      LODWORD(v8) = v8 + 1;
    }

    while (v6 != v8);
  }

  return DgnArray<DgnString>::releaseAll(&v25);
}

void sub_2627370B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnArray<DgnString>::releaseAll(va);
  _Unwind_Resume(a1);
}

void WordList::setSizeForWordListLoad(WordList *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  *(this + 97) = a2;
  v8 = *(this + 67);
  v9 = a2;
  v10 = a2 >= v8;
  v11 = a2 - v8;
  if (v11 != 0 && v10)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 256, v11, 0);
    v9 = *(this + 97);
  }

  *(this + 66) = a2;
  v12 = v9;
  if (*(this + 29) < v9)
  {
    v38 = 0;
    *(this + 29) = realloc_array(*(this + 13), &v38, v9, *(this + 28), *(this + 28), 1);
    *(this + 13) = v38;
    v12 = *(this + 97);
  }

  *(this + 28) = v9;
  v13 = *(this + 53);
  v14 = v12;
  if (v12 > v13)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 200, v12 - v13, 0);
    v14 = *(this + 97);
  }

  *(this + 52) = v12;
  v15 = *(this + 15);
  v16 = v14;
  if (v14 > v15)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 48, v14 - v15, 0);
    v16 = *(this + 97);
  }

  *(this + 14) = v14;
  v17 = *(this + 11);
  v18 = v16;
  if (v16 > v17)
  {
    DgnPrimArray<short>::reallocElts(this + 32, v16 - v17, 0);
    v18 = *(this + 97);
  }

  *(this + 10) = v16;
  if (a3 >= 2)
  {
    v19 = v18;
    if (*(this + 109) < v18)
    {
      v38 = 0;
      *(this + 109) = realloc_array(*(this + 53), &v38, v18, *(this + 108), *(this + 108), 1);
      *(this + 53) = v38;
      v19 = *(this + 97);
    }

    *(this + 108) = v18;
    v18 = v19;
  }

  if (a4 >= 2)
  {
    v20 = v18;
    if (*(this + 113) < v18)
    {
      v38 = 0;
      *(this + 113) = realloc_array(*(this + 55), &v38, v18, *(this + 112), *(this + 112), 1);
      *(this + 55) = v38;
      v20 = *(this + 97);
    }

    *(this + 112) = v18;
    v18 = v20;
  }

  BitArray::setSize((this + 624), v18);
  BitArray::setSize((this + 640), *(this + 97));
  BitArray::clearRange((this + 624), 0, *(this + 158));
  BitArray::clearRange((this + 640), 0, *(this + 162));
  v21 = *(this + 138);
  if (v21)
  {
    BitArray::setSize((this + 576), *(this + 97) * v21);
    BitArray::clearRange((this + 576), 0, *(this + 146));
  }

  v22 = *(this + 97);
  v23 = *(this + 33);
  v24 = v22;
  if (v22 > v23)
  {
    DgnPrimArray<short>::reallocElts(this + 120, v22 - v23, 0);
    v24 = *(this + 97);
  }

  *(this + 32) = v22;
  v25 = *(this + 37);
  v26 = v24;
  if (v24 > v25)
  {
    DgnPrimArray<short>::reallocElts(this + 136, v24 - v25, 0);
    v26 = *(this + 97);
  }

  *(this + 36) = v24;
  v27 = *(this + 151);
  v28 = v26;
  if (v26 > v27)
  {
    DgnPrimArray<short>::reallocElts(this + 592, v26 - v27, 0);
    v28 = *(this + 97);
  }

  *(this + 150) = v26;
  v29 = *(this + 155);
  v30 = v28;
  if (v28 > v29)
  {
    DgnPrimArray<short>::reallocElts(this + 608, v28 - v29, 0);
    v30 = *(this + 97);
  }

  *(this + 154) = v28;
  v31 = *(this + 41);
  v32 = v30;
  if (v30 > v31)
  {
    DgnPrimArray<short>::reallocElts(this + 152, v30 - v31, 0);
    v32 = *(this + 97);
  }

  *(this + 40) = v30;
  v33 = *(this + 45);
  v34 = v32;
  if (v32 > v33)
  {
    DgnPrimArray<short>::reallocElts(this + 168, v32 - v33, 0);
    v34 = *(this + 97);
  }

  *(this + 44) = v32;
  v35 = *(this + 49);
  v36 = v34;
  if (v34 > v35)
  {
    DgnPrimArray<short>::reallocElts(this + 184, v34 - v35, 0);
    v36 = *(this + 97);
  }

  *(this + 48) = v34;
  if (v36 >= 1)
  {
    v37 = v36 + 1;
    do
    {
      WordList::invalidateId(this, v37 - 2);
      --v37;
    }

    while (v37 > 1);
  }
}

void WordList::strToPhonemes(uint64_t a1, const char *a2, uint64_t a3)
{
  DgnString::DgnString(&v13, a2);
  v11 = 0;
  v12 = 0;
  if (v14)
  {
    v5 = v13;
  }

  else
  {
    v5 = &unk_26288C6A6;
  }

  DgnSplitStringIntoTokens(v5, ".", &v11, 0);
  if (v12)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (*(v11 + v6 + 8))
      {
        v8 = *(v11 + v6);
      }

      else
      {
        v8 = &unk_26288C6A6;
      }

      PhnIndex = PhnMgr::getPhnIndex(*(a1 + 16), v8);
      v10 = *(a3 + 8);
      if (v10 == *(a3 + 12))
      {
        DgnPrimArray<short>::reallocElts(a3, 1, 1);
        v10 = *(a3 + 8);
      }

      *(*a3 + 2 * v10) = PhnIndex;
      *(a3 + 8) = v10 + 1;
      ++v7;
      v6 += 16;
    }

    while (v7 < v12);
  }

  DgnArray<DgnString>::releaseAll(&v11);
  DgnString::~DgnString(&v13);
}

void sub_262737524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  DgnArray<DgnString>::releaseAll(&a9);
  DgnString::~DgnString(&a11);
  _Unwind_Resume(a1);
}

void WordList::checkNewTwlWordBoundaryPhonemes(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 8);
  if (v8)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = *(*a2 + 2 * v14);
      v17 = *(*(a1 + 16) + 60);
      v18 = v16 == v17;
      if (v16 == v17 && (!v14 || ((v14 != v8 - 1) & ~v15) == 0))
      {
        if (*(a4 + 2))
        {
          v19 = *a4;
        }

        if (*(a5 + 2))
        {
          v20 = *a5;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 5052, "word/wordlist", 71, "%d %.500s %.500s", a7, a8, a3);
        v8 = *(a2 + 8);
      }

      ++v14;
      v15 = v18;
    }

    while (v14 < v8);
  }
}

uint64_t WordList::addWordInternal(uint64_t a1, const unsigned __int8 *a2, uint64_t a3, unsigned int *a4, uint64_t a5, CharInfo *this, uint64_t a7, uint64_t a8, char a9, char a10)
{
  v11 = a7;
  v13 = a5;
  v14 = a4;
  FreeId = a3;
  v16 = a2;
  if (***a1)
  {
    CharInfo::validateEncodedCharString(this, a2, a3, a4, a5, this, a7, a8);
  }

  v23 = strlen(this);
  if (v16)
  {
    FreeId = WordList::getFreeId(a1);
    if (v14 == 0xFFFFFF && (v14 = WordList::lookupWord(a1, this), v14 == 0xFFFFFF))
    {
      v14 = FreeId;
    }

    else
    {
      v13 = *(*(a1 + 200) + 4 * v14);
    }
  }

  if (FreeId >= 0xFFFFF4)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 3010, "word/wordlist", 10, "%u %.500s", v21, v22, FreeId);
  }

  if (*(a8 + 8))
  {
    PhnMgr::verifyPhonemePron(*(a1 + 16), a8, this, 0, v19, v20, v21, v22);
  }

  if (v11 == 255)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 3019, "word/wordlist", 9, "%u %.500s", v21, v22, FreeId);
  }

  if (v13 == -1)
  {
    v50 = v11;
    v24 = v16;
    v25 = 0;
    v13 = *(a1 + 232);
    v26 = v13;
    do
    {
      v27 = *(this + v25);
      if (v26 == *(a1 + 236))
      {
        DgnPrimArray<char>::reallocElts(a1 + 224, 1, 1);
        v26 = *(a1 + 232);
      }

      *(*(a1 + 224) + v26) = v27;
      v26 = *(a1 + 232) + 1;
      *(a1 + 232) = v26;
      ++v25;
    }

    while (v25 <= v23);
    v16 = v24;
    v11 = v50;
  }

  *(*(a1 + 200) + 4 * FreeId) = v13;
  *(*(a1 + 104) + FreeId) = v11;
  *(*(a1 + 256) + 4 * FreeId) = v14;
  v28 = *(a8 + 8);
  *(*(a1 + 32) + 2 * FreeId) = v28;
  *(*(a1 + 48) + 4 * FreeId) = *(a1 + 80);
  if (*(a8 + 8))
  {
    v29 = 0;
    v30 = *(*(a1 + 16) + 60);
    do
    {
      v31 = *(*a8 + 2 * v29);
      if (v31 == v30)
      {
        --*(*(a1 + 32) + 2 * FreeId);
        *(*(a1 + 88) + 4 * ((*(a1 + 80) - 1) >> 5)) |= 1 << (*(a1 + 80) - 1);
      }

      else
      {
        v32 = *(a1 + 80);
        if (v32 == *(a1 + 84))
        {
          DgnPrimArray<short>::reallocElts(a1 + 72, 1, 1);
          v32 = *(a1 + 80);
        }

        *(*(a1 + 72) + 2 * v32) = v31;
        *(a1 + 80) = v32 + 1;
        BitArray::add((a1 + 88), 0);
      }

      ++v29;
    }

    while (v29 < *(a8 + 8));
    v28 = *(*(a1 + 32) + 2 * FreeId);
  }

  if (v28)
  {
    v33 = (*(a1 + 72) + 2 * *(*(a1 + 48) + 4 * FreeId));
    v34 = *v33;
    v35 = v33[v28 - 1];
    v36 = 608;
    v37 = 592;
  }

  else
  {
    v34 = *(*(a1 + 16) + 58);
    v36 = 592;
    v37 = 608;
    v35 = v34;
  }

  *(*(a1 + v37) + 2 * FreeId) = v34;
  *(*(a1 + v36) + 2 * FreeId) = v35;
  if (v16)
  {
    if (FreeId == v14)
    {
      *(*(a1 + 624) + 4 * (v14 >> 5)) &= ~(1 << v14);
    }

    v38 = *(a1 + 640);
    v39 = FreeId >> 5;
    v40 = *(v38 + 4 * (FreeId >> 5)) & ~(1 << FreeId);
  }

  else
  {
    if (FreeId == v14)
    {
      *(*(a1 + 624) + 4 * (v14 >> 5)) |= 1 << v14;
    }

    v38 = *(a1 + 640);
    v39 = FreeId >> 5;
    v40 = *(v38 + 4 * (FreeId >> 5)) | (1 << FreeId);
  }

  *(v38 + 4 * v39) = v40;
  v41 = *(a1 + 552);
  if (v41 && FreeId == v14)
  {
    BitArray::setBitsInRange((a1 + 576), (a1 + 560), v41 * v14, v41 * v14 + v41);
  }

  if (v11 == 1)
  {
    ++*(a1 + 384);
  }

  if (v16)
  {
    v42 = *(a1 + 419);
    if (*(a1 + 421) == 1 && FreeId != v14)
    {
      if (*(a1 + 392) < 2u)
      {
        v42 = 0;
      }

      else
      {
        v42 = *(*(a1 + 424) + v14);
      }
    }

    v43 = *(a1 + 420);
    if (*(a1 + 422) == 1 && FreeId != v14)
    {
      if (*(a1 + 396) < 2u)
      {
        v43 = 0;
      }

      else
      {
        v43 = *(*(a1 + 440) + v14);
      }
    }

    WordList::setPronPredecessorSeedCategory(a1, FreeId, v42, v18, v19, v20, v21, v22);
    WordList::setPronSuccessorSeedCategory(a1, FreeId, v43, v44, v45, v46, v47, v48);
    if (a10)
    {
      DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::add(a1 + 272, FreeId);
    }

    if (a9)
    {
      WordIdPronCollArray::add((a1 + 352), FreeId);
    }
  }

  *(a1 + 376) ^= WordList::computeWordIdNameChecksum(a1, FreeId);
  *(a1 + 380) ^= WordList::computeWordIdPronChecksum(a1, FreeId);
  return FreeId;
}

void WordList::setPronPredecessorSeedCategory(WordList *this, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v11 = *(this + 98);
  if (v11 < a3)
  {
    v12 = *(this + 98);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 4794, "word/wordlist", 64, "%u %u", a7, a8, a3);
    v11 = *(this + 98);
  }

  if (v11 >= 2)
  {
    *(*(this + 53) + a2) = v8;
  }
}

void WordList::setPronSuccessorSeedCategory(WordList *this, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v11 = *(this + 99);
  if (v11 < a3)
  {
    v12 = *(this + 99);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 4814, "word/wordlist", 65, "%u %u", a7, a8, a3);
    v11 = *(this + 99);
  }

  if (v11 >= 2)
  {
    *(*(this + 55) + a2) = v8;
  }
}

uint64_t WordList::setupWordIdsForWordListLoad(uint64_t this)
{
  v1 = *(this + 388);
  if (v1)
  {
    v2 = this;
    v11[0] = 0;
    v12 = 0;
    v11[1] = realloc_array(0, &v12, 4 * v1, 0, 0, 1) >> 2;
    v10 = v12;
    if (*(v2 + 388))
    {
      v3 = 0;
      while (!*(*(v2 + 104) + v3))
      {
        v6 = *(v2 + 248);
        v4 = (v2 + 240);
        v5 = (v2 + 248);
        if (v6 == *(v2 + 252))
        {
          DgnPrimArray<unsigned int>::reallocElts(v2 + 240, 1, 1);
          v5 = (v2 + 248);
          v4 = (v2 + 240);
          goto LABEL_8;
        }

LABEL_9:
        *(*v4 + v6) = v3;
        ++*v5;
        if (++v3 >= *(v2 + 388))
        {
          goto LABEL_10;
        }
      }

      v4 = &v10;
      v5 = v11;
LABEL_8:
      v6 = *v5;
      goto LABEL_9;
    }

LABEL_10:
    DgnCollArray<unsigned int,WordList>::addArray(v2 + 272, &v10);
    if (*(v2 + 388))
    {
      v7 = 0;
      do
      {
        if (*(*(v2 + 104) + v7) && v7 != WordList::lookupWord(v2, (*(v2 + 224) + *(*(v2 + 200) + 4 * v7))) && *(*(v2 + 104) + v7) == 1)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2768, "word/wordlist", 3, "%.500s", v8, v9, *(v2 + 224) + *(*(v2 + 200) + 4 * v7));
        }

        ++v7;
      }

      while (v7 < *(v2 + 388));
    }

    return DgnPrimArray<unsigned int>::~DgnPrimArray(&v10);
  }

  return this;
}

void sub_262737DB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t WordList::lookupWord(WordList *this, const char *a2)
{
  v2 = *this;
  v6[0] = a2;
  v6[1] = this;
  v6[2] = v2;
  v7 = -2;
  v8 = 0;
  if (*(this + 272) == 1 && *(this + 137) == -2)
  {
    v3 = this + 280;
  }

  else
  {
    v3 = *(*(this + 37) + 524272);
  }

  Equal = DgnPrimArray<unsigned int>::searchFirstEqual(v3, 0, *(v3 + 2), v6, WordIdCollSearchCmp);
  if (Equal == -1)
  {
    return 0xFFFFFFLL;
  }

  else
  {
    return *(*v3 + 4 * Equal);
  }
}

unint64_t copyBadPredecessorSeedCategoryArray(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = v4;
  if (*(a2 + 12) < v4)
  {
    v7 = 0;
    result = realloc_array(*a2, &v7, v4, *(a2 + 8), *(a2 + 8), 1);
    *(a2 + 12) = result;
    *a2 = v7;
    v5 = *(v3 + 8);
  }

  *(a2 + 8) = v4;
  if (v5)
  {
    v6 = 0;
    do
    {
      *(*a2 + v6) = *(*v3 + v6);
      ++v6;
    }

    while (v6 < *(v3 + 8));
  }

  return result;
}

uint64_t WordList::loadBinary(WordList *this, DFile *a2, DFileChecksums *a3)
{
  v59 = 0;
  v6 = OpenAndReadMrecHeader(a2, 0x2Fu, 1, "MRWORD!?", &v59 + 1, &v59);
  v9 = v6;
  *(v6 + 32) = 0;
  *(v6 + 34) = 0;
  v10 = v59;
  switch(v59)
  {
    case 0x1300000025:
      v11 = 0;
      v12 = 0;
      v13 = 1;
      *(v6 + 32) = 1;
      *(v6 + 34) = 1;
      v14 = 19;
LABEL_5:
      v15 = 1;
      goto LABEL_6;
    case 0x1400000026:
      v11 = 0;
      v12 = 0;
      v13 = 1;
      *(v6 + 32) = 1;
      *(v6 + 34) = 1;
      v14 = 20;
      goto LABEL_5;
    case 0x1400000027:
      v13 = 0;
      v11 = 0;
      v12 = 0;
      v15 = 1;
      *(v6 + 32) = 1;
      *(v6 + 34) = 1;
      v14 = 20;
      goto LABEL_6;
    case 0x1600000028:
      v13 = 0;
      v15 = 0;
      v11 = 0;
      v12 = 0;
      *(v6 + 32) = 1;
      *(v6 + 34) = 1;
LABEL_60:
      v14 = 22;
      goto LABEL_6;
    case 0x1600000029:
      v13 = 0;
      v15 = 0;
      v11 = 0;
      v12 = 0;
      goto LABEL_60;
    case 0x160000002ALL:
      v13 = 0;
      v15 = 0;
      v12 = 0;
      v11 = 1;
      goto LABEL_60;
  }

  if (*(a2 + 6))
  {
    v51 = *(a2 + 2);
  }

  else
  {
    v51 = &unk_26288C6A6;
  }

  MrecHeaderCheckVersions(v51, "MRWORD!?", HIDWORD(v59), v59, 0x18u, 0x2Bu);
  v13 = 0;
  v15 = 0;
  v14 = HIDWORD(v59);
  v11 = 1;
  v10 = v59;
  v12 = 1;
LABEL_6:
  MrecHeaderCheckLatestVersionIfShared(a2, "MRWORD!?", v14, v10, 24, 43, v7, v8);
  v58[0] = 0;
  v58[1] = 0;
  v57[0] = 0;
  v57[1] = 0;
  *v56 = 0;
  readObject<unsigned short>(v9, this + 32, v56);
  readObject<unsigned int>(v9, this + 48, v56);
  readObject<unsigned short>(v9, this + 72, v56);
  readObject(v9, (this + 88), v56);
  readObject<unsigned char>(v9, this + 104, v56);
  readObject<unsigned short>(v9, this + 120, v56);
  readObject<unsigned short>(v9, this + 136, v56);
  readObject<unsigned int>(v9, this + 200, v56);
  readObject<char>(v9, this + 224, v56);
  readObject<unsigned int>(v9, this + 240, v56);
  readObject<unsigned int>(v9, this + 256, v56);
  DgnCollArray<unsigned int,WordList>::readObject(this + 272, v9, v56);
  PrefiltererWordIdPronCollArray::readObject((this + 352), v9, v56);
  if (v11)
  {
    readObject(v9, this + 94, v56);
    readObject(v9, this + 95, v56);
  }

  readObject(v9, this + 96, v56);
  v16 = (this + 388);
  readObject(v9, this + 97, v56);
  readObject(v9, this + 98, v56);
  readObject(v9, this + 99, v56);
  readObject<DgnPrimArray<BOOL>>(v9, this + 400, v56);
  readObject(v9, this + 416, v56);
  readObject(v9, this + 417, v56);
  readObject(v9, this + 418, v56);
  readObject(v9, this + 419, v56);
  readObject(v9, this + 420, v56);
  readObject(v9, this + 421, v56);
  readObject(v9, this + 422, v56);
  if (v15)
  {
    readObject<BadPredecessorSeedCategory>(v9, v58, v56);
    readObject<BadPredecessorSeedCategory>(v9, v57, v56);
  }

  else
  {
    readObject<unsigned char>(v9, this + 424, v56);
    readObject<unsigned char>(v9, this + 440, v56);
  }

  readObject(v9, (this + 624), v56);
  readObject(v9, (this + 640), v56);
  if (v12)
  {
    readObject(v9, this + 114, v56);
    v17 = (this + 460);
  }

  else
  {
    v17 = &v56[1];
  }

  readObject(v9, v17, v56);
  readObject(v9, (this + 464), v56);
  readObject(v9, (this + 480), v56);
  readObject(v9, (this + 496), v56);
  readObject(v9, (this + 576), v56);
  readObject(v9, (this + 512), v56);
  if (v15)
  {
    copyBadPredecessorSeedCategoryArray(v58, this + 424);
    copyBadPredecessorSeedCategoryArray(v57, this + 440);
  }

  if ((v12 & 1) == 0)
  {
    v18 = v56[1];
    *(this + 114) = v56[1];
    *(this + 115) = v18;
  }

  EnvMgr::loadEnvMgrFromStream(*(this + 3), a2, v9, v56, 0);
  readObjectChecksumAndVerify(v9, v56[0]);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x2Fu, v56[0]);
  DgnDelete<DgnStream>(v9);
  v20 = *this;
  *(this + 41) = WordIdCollSearchCmpFromWordId;
  *(this + 42) = this;
  *(this + 43) = v20;
  v54 = 0;
  v55 = 0;
  splitTagsString(this + 116, &v54);
  v21 = v55;
  *(this + 138) = v55;
  if (v21)
  {
    tagStringToTagBits(this + 124, &v54, (this + 560));
  }

  v22 = *(this + 97);
  v23 = *(this + 151);
  v24 = v22;
  if (v22 > v23)
  {
    DgnPrimArray<short>::reallocElts(this + 592, v22 - v23, 0);
    v24 = *v16;
  }

  *(this + 150) = v22;
  v25 = *(this + 155);
  v26 = v24;
  if (v24 > v25)
  {
    DgnPrimArray<short>::reallocElts(this + 608, v24 - v25, 0);
    v26 = *v16;
  }

  *(this + 154) = v24;
  v27 = *(this + 41);
  v28 = v26;
  if (v26 > v27)
  {
    DgnPrimArray<short>::reallocElts(this + 152, v26 - v27, 0);
    v28 = *v16;
  }

  *(this + 40) = v26;
  v29 = *(this + 45);
  v30 = v28;
  if (v28 > v29)
  {
    DgnPrimArray<short>::reallocElts(this + 168, v28 - v29, 0);
    v30 = *v16;
  }

  *(this + 44) = v28;
  v31 = *(this + 49);
  v32 = v30;
  v33 = v30 >= v31;
  v34 = v30 - v31;
  if (v34 != 0 && v33)
  {
    DgnPrimArray<short>::reallocElts(this + 184, v34, 0);
    v32 = *v16;
  }

  v52 = v13;
  *(this + 48) = v30;
  BitArray::BitArray(v53, v32);
  v37 = *(this + 62);
  if (v37 >= 1)
  {
    v38 = v53[0];
    v39 = v37 + 1;
    v40 = (*(this + 30) + 4 * v37 - 4);
    do
    {
      v41 = *v40--;
      *(v38 + ((v41 >> 3) & 0x1FFFFFFC)) |= 1 << v41;
      --v39;
    }

    while (v39 > 1);
  }

  if (*v16)
  {
    v42 = 0;
    do
    {
      *(*(this + 19) + 2 * v42) = 0;
      *(*(this + 21) + 2 * v42) = 0;
      *(*(this + 23) + 2 * v42) = 0;
      v43 = *(v53[0] + ((v42 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) & (1 << v42);
      if (*(*(this + 13) + v42))
      {
        if (v43)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1850, "word/wordlist", 27, "%u", v35, v36, v42);
        }

        if (*(*(this + 4) + 2 * v42))
        {
          v44 = (*(this + 9) + 2 * *(*(this + 6) + 4 * v42));
          v45 = *v44;
          v46 = v44[*(*(this + 4) + 2 * v42) - 1];
          v47 = 592;
          v48 = 608;
        }

        else
        {
          v45 = *(*(this + 2) + 58);
          v47 = 608;
          v48 = 592;
          v46 = v45;
        }

        *(*(this + v47) + 2 * v42) = v45;
        v49 = this + v48;
      }

      else
      {
        if (!v43)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1855, "word/wordlist", 28, "%u", v35, v36, v42);
        }

        v46 = -1;
        *(*(this + 74) + 2 * v42) = -1;
        v49 = this + 608;
      }

      *(*v49 + 2 * v42++) = v46;
    }

    while (v42 < *v16);
  }

  if (v52)
  {
    PrefiltererWordIdPronCollArray::removeAll(this + 352);
    WordIdPronCollArray::addArray(this + 352, this + 280);
  }

  if ((v11 & 1) == 0)
  {
    WordList::computeWordChecksums(this);
  }

  BitArray::~BitArray(v53);
  DgnArray<DgnString>::releaseAll(&v54);
  DgnIArray<Utterance *>::~DgnIArray(v57);
  return DgnIArray<Utterance *>::~DgnIArray(v58);
}

void sub_262738714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  DgnArray<DgnString>::releaseAll(va);
  DgnIArray<Utterance *>::~DgnIArray(va1);
  DgnIArray<Utterance *>::~DgnIArray(va2);
  _Unwind_Resume(a1);
}

unint64_t readObject<DgnPrimArray<BOOL>>(DgnStream *a1, uint64_t a2, unsigned int *a3)
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
      result = DgnPrimArray<unsigned int>::~DgnPrimArray(*a2 + v11);
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
      result = readObject<BOOL>(a1, *a2 + v15, a3);
      ++v16;
      v15 += 16;
    }

    while (v16 < *(a2 + 8));
  }

  return result;
}

uint64_t readObject<BadPredecessorSeedCategory>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v10[0] = 0;
  result = readObject(a1, v10, a3);
  v7 = v10[0];
  if (*(a2 + 12) >= v10[0])
  {
    *(a2 + 8) = v10[0];
    if (!v7)
    {
      return result;
    }
  }

  else
  {
    *&v10[1] = 0;
    v8 = realloc_array(*a2, &v10[1], v10[0], *(a2 + 8), *(a2 + 8), 1);
    *a2 = *&v10[1];
    *(a2 + 8) = v7;
    *(a2 + 12) = v8;
  }

  v9 = 0;
  do
  {
    result = readObject(a1, (*a2 + v9++), a3);
  }

  while (v9 < *(a2 + 8));
  return result;
}

uint64_t WordList::loadWordList(WordList *this, DFile *a2, DFileChecksums *a3)
{
  if (DFile::subFileExists(a2, 0x62u))
  {
    WordList::loadTwl(this, a2);
  }

  else
  {
    WordList::loadBinary(this, a2, a3);
  }

  WordList::compact(this);

  return TagBitsAndStrings::compact((this + 512));
}

uint64_t WordList::compact(uint64_t this)
{
  v1 = this;
  v2 = *(this + 388);
  if (!v2)
  {
    if (!*(this + 80))
    {
      v5 = 0;
      goto LABEL_31;
    }

    v5 = 0;
    v4 = 0;
    v42 = 0;
    v43 = 0;
    goto LABEL_11;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = *(this + 104);
  do
  {
    if (*(v6 + v3))
    {
      v4 += *(*(v1 + 32) + 2 * v3);
      if (v3 == *(*(v1 + 256) + 4 * v3))
      {
        this = strlen((*(v1 + 224) + *(*(v1 + 200) + 4 * v3)));
        v5 += this + 1;
      }
    }

    ++v3;
  }

  while (v2 != v3);
  if (*(v1 + 80) != v4)
  {
    v42 = 0;
    v43 = 0;
    v40 = 0;
    HIDWORD(v43) = realloc_array(0, &v40, 4 * v2, 0, 0, 1) >> 2;
    v42 = v40;
LABEL_11:
    v40 = 0;
    v41 = 0;
    DgnString::DgnString(&v38);
    if (HIDWORD(v41) < v4)
    {
      v44 = 0;
      HIDWORD(v41) = realloc_array(v40, &v44, 2 * v4, 2 * v41, 2 * v41, 1) >> 1;
      v40 = v44;
    }

    BitArray::preAllocate(&v38, v4);
    if (*(v1 + 388))
    {
      v7 = 0;
      v8 = *(v1 + 104);
      v9 = v42;
      v10 = v40;
      do
      {
        if (*(v8 + v7))
        {
          v9[v43] = v41;
          LODWORD(v43) = v43 + 1;
          v11 = *(*(v1 + 32) + 2 * v7);
          if (*(*(v1 + 32) + 2 * v7))
          {
            v12 = *(*(v1 + 48) + 4 * v7);
            v13 = *(v1 + 72);
            v14 = *(v1 + 88);
            v15 = v38;
            do
            {
              v16 = v41;
              v10[v41] = *(v13 + 2 * v12);
              LODWORD(v41) = v16 + 1;
              v17 = *(v14 + 4 * (v12 >> 5));
              v18 = v39++;
              v19 = 1 << v18;
              if ((v17 >> v12))
              {
                *(v15 + ((v18 >> 3) & 0x1FFFFFFC)) |= v19;
              }

              else
              {
                v15[v18 >> 5] &= ~v19;
              }

              ++v12;
              --v11;
            }

            while (v11);
          }
        }

        else
        {
          v9[v43] = 0;
          LODWORD(v43) = v43 + 1;
        }

        ++v7;
      }

      while (v7 < *(v1 + 388));
    }

    v20 = *(v1 + 48);
    if (v20)
    {
      MemChunkFree(v20, 0);
      *(v1 + 48) = 0;
    }

    *(v1 + 56) = 0;
    DgnPrimArray<int>::copyArraySlice(v1 + 48, &v42, 0, v43);
    *(v1 + 64) = 0;
    v21 = *(v1 + 72);
    if (v21)
    {
      MemChunkFree(v21, 0);
      *(v1 + 72) = 0;
    }

    *(v1 + 80) = 0;
    DgnPrimArray<unsigned short>::copyArraySlice(v1 + 72, &v40, 0, v41);
    BitArray::releaseAll(v1 + 88);
    BitArray::operator=((v1 + 88), &v38);
    BitArray::~BitArray(&v38);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v40);
    this = DgnPrimArray<unsigned int>::~DgnPrimArray(&v42);
  }

LABEL_31:
  if (*(v1 + 232) != v5)
  {
    v42 = 0;
    v43 = 0;
    v22 = *(v1 + 388);
    if (v22)
    {
      v40 = 0;
      HIDWORD(v43) = realloc_array(0, &v40, 4 * v22, 0, 0, 1) >> 2;
      v42 = v40;
    }

    v40 = 0;
    v41 = 0;
    if (v5)
    {
      v38 = 0;
      HIDWORD(v41) = realloc_array(0, &v38, v5, 0, 0, 1);
      v40 = v38;
    }

    if (*(v1 + 388))
    {
      v23 = 0;
      while (1)
      {
        if (*(*(v1 + 104) + v23))
        {
          v24 = v42;
          v25 = v43;
          if (v23 == *(*(v1 + 256) + 4 * v23))
          {
            v26 = v41;
            v42[v43] = v41;
            LODWORD(v43) = v43 + 1;
            v27 = (*(v1 + 224) + *(*(v1 + 200) + 4 * v23));
            LOBYTE(v28) = *v27;
            if (*v27)
            {
              v29 = 1;
              do
              {
                *(v40 + v26) = v28;
                v26 = v41 + 1;
                LODWORD(v41) = v41 + 1;
                v28 = v27[v29++];
              }

              while (v28);
            }

            *(v40 + v26) = 0;
            v30 = &v41;
            goto LABEL_46;
          }
        }

        else
        {
          v24 = v42;
          v25 = v43;
        }

        v24[v25] = 0;
        v30 = &v43;
LABEL_46:
        ++*v30;
        ++v23;
        v31 = *(v1 + 388);
        if (v23 >= v31)
        {
          if (*(v1 + 388))
          {
            v32 = 0;
            v33 = *(v1 + 104);
            v34 = v42;
            do
            {
              if (*(v33 + v32))
              {
                v35 = *(*(v1 + 256) + 4 * v32);
                if (v32 != v35)
                {
                  v34[v32] = v34[v35];
                  v31 = *(v1 + 388);
                }
              }

              ++v32;
            }

            while (v32 < v31);
          }

          break;
        }
      }
    }

    v36 = *(v1 + 200);
    if (v36)
    {
      MemChunkFree(v36, 0);
      *(v1 + 200) = 0;
    }

    *(v1 + 208) = 0;
    DgnPrimArray<int>::copyArraySlice(v1 + 200, &v42, 0, v43);
    *(v1 + 216) = 0;
    v37 = *(v1 + 224);
    if (v37)
    {
      MemChunkFree(v37, 0);
      *(v1 + 224) = 0;
    }

    *(v1 + 232) = 0;
    DgnPrimArray<unsigned char>::copyArraySlice(v1 + 224, &v40, 0, v41);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v40);
    return DgnPrimArray<unsigned int>::~DgnPrimArray(&v42);
  }

  return this;
}

void sub_262738E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void WordList::saveTwl(WordList *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v121);
  DgnTextFileWriter::openDgnTextFileWriter(v121, a2, 0x62u, a3);
  v119 = 0;
  v120 = 0;
  DgnTextFile::legalDgnTextFileVersions(v121, sTWL_Versions, &v119, v6, v7, v8, v9, v10);
  DgnTextFileWriter::setFileType(v121, "TextWordList", (v119 + 8 * (v120 - 1)));
  DgnTextFileWriter::setHeaderFieldUnsigned(v121, "NumberOfWords", *(this + 96));
  v11 = *(this + 90);
  if (v11)
  {
    v12 = 0;
    while (!*(*(this + 4) + 2 * *(*(this + 44) + 4 * v12)))
    {
      if (v11 == ++v12)
      {
        LODWORD(v12) = *(this + 90);
        break;
      }
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  DgnTextFileWriter::setHeaderFieldUnsigned(v121, "NumberOfPronlessWords", v13);
  DgnTextFileWriter::setHeaderFieldUnsigned(v121, "NumberOfPronIds", *(this + 72));
  v14 = *(this + 97);
  if (v14 >= 1)
  {
    v15 = v14 - 1;
    while (v15 >= v14 || !*(*(this + 13) + v15))
    {
      v16 = v15-- + 1;
      if (v16 <= 1)
      {
        LODWORD(v14) = 0;
        goto LABEL_18;
      }
    }

    LODWORD(v14) = v15 + 1;
LABEL_18:
    v17 = *(this + 72);
    goto LABEL_19;
  }

  v17 = *(this + 72);
  if (v14 != -1)
  {
LABEL_19:
    v18 = (v14 - v17);
    goto LABEL_20;
  }

  if (v17)
  {
    LODWORD(v14) = -1;
    goto LABEL_19;
  }

  v18 = 0;
LABEL_20:
  DgnTextFileWriter::setHeaderFieldUnsigned(v121, "NumberOfFreePronIds", v18);
  DgnTextFileWriter::setHeaderFieldUnsigned(v121, "NumberOfPronPredecessorSeedCategories", *(this + 98));
  DgnTextFileWriter::setHeaderFieldUnsigned(v121, "NumberOfPronSuccessorSeedCategories", *(this + 99));
  DgnTextFileWriter::setHeaderFieldUnsigned(v121, "StartOfUtterancePredecessorSeedCategory", *(this + 416));
  DgnTextFileWriter::setHeaderFieldUnsigned(v121, "EndOfUtteranceSuccessorSeedCategory", *(this + 417));
  DgnTextFileWriter::setHeaderFieldUnsigned(v121, "RootDeterminesPronPredecessorSeedCategory", *(this + 421));
  DgnTextFileWriter::setHeaderFieldUnsigned(v121, "RootDeterminesPronSuccessorSeedCategory", *(this + 422));
  DgnTextFileWriter::setHeaderFieldUnsigned(v121, "DefaultClientPronPredecessorSeedCategory", *(this + 419));
  DgnTextFileWriter::setHeaderFieldUnsigned(v121, "DefaultClientPronSuccessorSeedCategory", *(this + 420));
  DgnTextFileWriter::setHeaderFieldInteger(v121, "RequiredWordTagsVersion", *(this + 114));
  DgnTextFileWriter::setHeaderFieldInteger(v121, "OptionalWordTagsVersion", *(this + 115));
  if (*(this + 118))
  {
    v19 = *(this + 58);
  }

  else
  {
    v19 = &unk_26288C6A6;
  }

  DgnTextFileWriter::setHeaderField(v121, "RequiredTags", v19);
  if (*(this + 122))
  {
    v20 = *(this + 60);
  }

  else
  {
    v20 = &unk_26288C6A6;
  }

  DgnTextFileWriter::setHeaderField(v121, "OptionalTags", v20);
  v21 = &unk_26288C6A6;
  if (*(this + 126))
  {
    v22 = *(this + 62);
  }

  else
  {
    v22 = &unk_26288C6A6;
  }

  DgnTextFileWriter::setHeaderField(v121, "NewWordTag", v22);
  DgnString::DgnString(&v117);
  if (*(this + 80))
  {
    v28 = 0;
    do
    {
      if (v28)
      {
        DgnString::operator+=(&v117, ",");
      }

      v29 = *(*(this + 39) + 2 * v28);
      CollationName = "_IDENTITY";
      if (v29 != 65534)
      {
        CollationName = CollMgr::getCollationName(*this, v29, "_IDENTITY", v23, v24, v25, v26, v27);
      }

      DgnString::operator+=(&v117, CollationName);
      ++v28;
    }

    while (v28 < *(this + 80));
  }

  if (v118)
  {
    v31 = v117;
  }

  else
  {
    v31 = &unk_26288C6A6;
  }

  DgnTextFileWriter::setHeaderField(v121, "AllowedCollations", v31);
  DgnString::~DgnString(&v117);
  v117 = 0;
  v118 = 0;
  v115 = 0;
  v116 = 0;
  DgnString::DgnString(&v113, "Type");
  v32 = v118;
  if (v118 == HIDWORD(v118))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v117, 1, 1);
    v32 = v118;
  }

  DgnString::DgnString(&v117[16 * v32], &v113);
  LODWORD(v118) = v118 + 1;
  DgnString::~DgnString(&v113);
  v33 = v116;
  if (v116 == HIDWORD(v116))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v115, 1, 1);
    v33 = v116;
  }

  *(v115 + 4 * v33) = 0;
  LODWORD(v116) = v33 + 1;
  v34 = v118;
  DgnString::DgnString(&v113, "WordName");
  v35 = v118;
  if (v118 == HIDWORD(v118))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v117, 1, 1);
    v35 = v118;
  }

  DgnString::DgnString(&v117[16 * v35], &v113);
  LODWORD(v118) = v118 + 1;
  DgnString::~DgnString(&v113);
  v36 = v116;
  if (v116 == HIDWORD(v116))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v115, 1, 1);
    v36 = v116;
  }

  *(v115 + 4 * v36) = 0;
  LODWORD(v116) = v36 + 1;
  v104 = v118;
  DgnString::DgnString(&v113, "UnsValue1");
  v37 = v118;
  if (v118 == HIDWORD(v118))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v117, 1, 1);
    v37 = v118;
  }

  DgnString::DgnString(&v117[16 * v37], &v113);
  LODWORD(v118) = v118 + 1;
  DgnString::~DgnString(&v113);
  v38 = v116;
  if (v116 == HIDWORD(v116))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v115, 1, 1);
    v38 = v116;
  }

  *(v115 + 4 * v38) = 3;
  LODWORD(v116) = v38 + 1;
  v103 = v118;
  DgnString::DgnString(&v113, "UnsValue2");
  v39 = v118;
  if (v118 == HIDWORD(v118))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v117, 1, 1);
    v39 = v118;
  }

  DgnString::DgnString(&v117[16 * v39], &v113);
  LODWORD(v118) = v118 + 1;
  DgnString::~DgnString(&v113);
  v40 = v116;
  if (v116 == HIDWORD(v116))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v115, 1, 1);
    v40 = v116;
  }

  *(v115 + 4 * v40) = 3;
  LODWORD(v116) = v40 + 1;
  v102 = v118;
  DgnString::DgnString(&v113, "UnsValue3");
  v41 = v118;
  if (v118 == HIDWORD(v118))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v117, 1, 1);
    v41 = v118;
  }

  DgnString::DgnString(&v117[16 * v41], &v113);
  LODWORD(v118) = v118 + 1;
  DgnString::~DgnString(&v113);
  v42 = v116;
  if (v116 == HIDWORD(v116))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v115, 1, 1);
    v42 = v116;
  }

  *(v115 + 4 * v42) = 3;
  LODWORD(v116) = v42 + 1;
  v101 = v118;
  DgnString::DgnString(&v113, "StrValue1");
  v43 = v118;
  if (v118 == HIDWORD(v118))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v117, 1, 1);
    v43 = v118;
  }

  DgnString::DgnString(&v117[16 * v43], &v113);
  LODWORD(v118) = v118 + 1;
  DgnString::~DgnString(&v113);
  v44 = v116;
  if (v116 == HIDWORD(v116))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v115, 1, 1);
    v44 = v116;
  }

  *(v115 + 4 * v44) = 0;
  LODWORD(v116) = v44 + 1;
  v100 = v118;
  DgnString::DgnString(&v113, "StrValue2");
  v45 = v118;
  if (v118 == HIDWORD(v118))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v117, 1, 1);
    v45 = v118;
  }

  DgnString::DgnString(&v117[16 * v45], &v113);
  LODWORD(v118) = v118 + 1;
  DgnString::~DgnString(&v113);
  v46 = v116;
  if (v116 == HIDWORD(v116))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v115, 1, 1);
    v46 = v116;
  }

  *(v115 + 4 * v46) = 0;
  LODWORD(v116) = v46 + 1;
  DgnTextFileWriter::setLineFieldFormat(v121, &v115, &v117);
  v113 = 0;
  v114 = 0;
  v111 = 0;
  v112 = 0;
  splitTagsString(this + 116, &v113);
  splitTagsString(this + 120, &v111);
  v47 = v114;
  v97 = v112;
  v48 = *(this + 98);
  if (v48)
  {
    v49 = 0;
    LODWORD(v50) = *(this + 99);
    do
    {
      if (v50)
      {
        v51 = 0;
        do
        {
          DgnTextFileWriter::setLineFieldValue(v121, 0, "SeedTable");
          DgnTextFileWriter::setLineFieldValue(v121, v34, &unk_26288C6A6);
          DgnTextFileWriter::setLineFieldUnsignedValue(v121, v104, v49);
          DgnTextFileWriter::setLineFieldUnsignedValue(v121, v103, v51);
          DgnTextFileWriter::setLineFieldUnsignedValue(v121, v102, *(*(*(this + 50) + 16 * v49) + v51));
          DgnTextFileWriter::setLineFieldValue(v121, v101, &unk_26288C6A6);
          DgnTextFileWriter::setLineFieldValue(v121, v100, &unk_26288C6A6);
          DgnTextFileWriter::writeNextLine(v121);
          ++v51;
          v50 = *(this + 99);
        }

        while (v51 < v50);
        v48 = *(this + 98);
      }

      ++v49;
    }

    while (v49 < v48);
  }

  DgnString::DgnString(&v109);
  v107 = 0;
  v108 = 0;
  WordList::getAllByRootId(this, &v107);
  v52 = *(this + 97);
  if (v52)
  {
    v53 = 0;
    v98 = v47;
    do
    {
      if (*(*(this + 13) + v53))
      {
        if (v53 == *(*(this + 32) + 4 * v53))
        {
          v54 = &v107[16 * v53];
          if (*(v54 + 2))
          {
            v55 = 0;
            do
            {
              v56 = *(*v54 + 4 * v55);
              DgnTextFileWriter::setLineFieldValue(v121, 0, "Pron");
              DgnTextFileWriter::setLineFieldValue(v121, v34, (*(this + 28) + *(*(this + 25) + 4 * v56)));
              DgnTextFileWriter::setLineFieldUnsignedValue(v121, v104, v56);
              if (*(this + 98) < 2u)
              {
                v57 = 0;
              }

              else
              {
                v57 = *(*(this + 53) + v56);
              }

              DgnTextFileWriter::setLineFieldUnsignedValue(v121, v103, v57);
              if (*(this + 99) < 2u)
              {
                v58 = 0;
              }

              else
              {
                v58 = *(*(this + 55) + v56);
              }

              DgnTextFileWriter::setLineFieldUnsignedValue(v121, v102, v58);
              DgnString::DgnString(&v105);
              if ((*(*(this + 80) + ((v56 >> 3) & 0x1FFFFFFC)) >> v56))
              {
                v59 = "F";
              }

              else
              {
                v59 = "U";
              }

              DgnString::operator=(&v105, v59);
              if (v106)
              {
                v60 = v105;
              }

              else
              {
                v60 = &unk_26288C6A6;
              }

              DgnTextFileWriter::setLineFieldValue(v121, v101, v60);
              WordList::getHumanReadablePron(this, v56, &v109);
              if (v110)
              {
                v61 = v109;
              }

              else
              {
                v61 = &unk_26288C6A6;
              }

              DgnTextFileWriter::setLineFieldValue(v121, v100, v61);
              DgnTextFileWriter::writeNextLine(v121);
              DgnString::~DgnString(&v105);
              ++v55;
            }

            while (v55 < *(v54 + 2));
            v52 = *(this + 97);
            v47 = v98;
          }
        }
      }

      ++v53;
    }

    while (v53 < v52);
  }

  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v107);
  DgnString::~DgnString(&v109);
  DgnString::DgnString(&v109);
  DgnString::DgnString(&v107);
  v62 = *(this + 97);
  if (v62)
  {
    v63 = 0;
    v64 = 0;
    while (1)
    {
      if (!*(*(this + 13) + v64) || v64 != *(*(this + 32) + 4 * v64))
      {
        goto LABEL_114;
      }

      DgnTextFileWriter::setLineFieldValue(v121, 0, "ReqTags");
      DgnTextFileWriter::setLineFieldValue(v121, v34, (*(this + 28) + *(*(this + 25) + 4 * v64)));
      DgnTextFileWriter::setLineFieldUnsignedValue(v121, v104, 0);
      DgnTextFileWriter::setLineFieldUnsignedValue(v121, v103, 0);
      DgnTextFileWriter::setLineFieldUnsignedValue(v121, v102, 0);
      v65 = ((*(*(this + 78) + ((v64 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v64) & 1) != 0 ? "F" : "U";
      DgnString::DgnString(&v105, v65);
      v66 = v106 ? v105 : &unk_26288C6A6;
      DgnTextFileWriter::setLineFieldValue(v121, v101, v66);
      if (!v47)
      {
        break;
      }

      BitArray::getBitsFromRange((this + 576), &v107, v63, v47 + v63);
      tagBitsToTagString(&v107, &v113, &v109);
      if (!v110)
      {
        goto LABEL_112;
      }

      v67 = v109;
LABEL_113:
      DgnTextFileWriter::setLineFieldValue(v121, v100, v67);
      DgnTextFileWriter::writeNextLine(v121);
      DgnString::~DgnString(&v105);
      v62 = *(this + 97);
LABEL_114:
      ++v64;
      v63 += v47;
      if (v64 >= v62)
      {
        goto LABEL_115;
      }
    }

    LODWORD(v110) = 0;
LABEL_112:
    v67 = &unk_26288C6A6;
    goto LABEL_113;
  }

LABEL_115:
  BitArray::~BitArray(&v107);
  DgnString::~DgnString(&v109);
  if (v97)
  {
    DgnString::DgnString(&v109);
    DgnString::DgnString(&v107);
    DgnString::DgnString(&v105);
    v68 = *(this + 97);
    if (v68)
    {
      for (i = 0; i < v68; ++i)
      {
        if (*(*(this + 13) + i) && i == *(*(this + 32) + 4 * i) && i < *(this + 132) && *(*(this + 65) + 4 * i) != -1)
        {
          DgnTextFileWriter::setLineFieldValue(v121, 0, "OptTags");
          DgnTextFileWriter::setLineFieldValue(v121, v34, (*(this + 28) + *(*(this + 25) + 4 * i)));
          DgnTextFileWriter::setLineFieldUnsignedValue(v121, v104, 0);
          DgnTextFileWriter::setLineFieldUnsignedValue(v121, v103, 0);
          DgnTextFileWriter::setLineFieldUnsignedValue(v121, v102, 0);
          TagBitsAndStrings::getTagBits((this + 512), i, &v107);
          tagBitsToTagString(&v107, &v111, &v109);
          if (v110)
          {
            v70 = v109;
          }

          else
          {
            v70 = &unk_26288C6A6;
          }

          DgnTextFileWriter::setLineFieldValue(v121, v101, v70);
          DgnString::operator=(&v105, (*(this + 67) + *(*(this + 65) + 4 * i) + ((*(this + 129) + 7) >> 3)));
          if (v106)
          {
            v71 = v105;
          }

          else
          {
            v71 = &unk_26288C6A6;
          }

          DgnTextFileWriter::setLineFieldValue(v121, v100, v71);
          DgnTextFileWriter::writeNextLine(v121);
          v68 = *(this + 97);
        }
      }
    }

    DgnString::~DgnString(&v105);
    BitArray::~BitArray(&v107);
    DgnString::~DgnString(&v109);
  }

  v72 = *(this + 3);
  v109 = 0;
  v110 = 0;
  EnvMgr::getItemsWithEnv(v72, &v109);
  DgnString::DgnString(&v107);
  if (v110)
  {
    v73 = 0;
    do
    {
      v74 = *&v109[4 * v73];
      ItemEnvId = EnvMgr::getItemEnvId(v72, v74);
      NameIds = EnvMgr::getNameIds(v72, ItemEnvId, v76, v77, v78, v79, v80, v81);
      v99 = v73;
      v83 = v34;
      v84 = v21;
      Values = EnvMgr::getValues(v72, ItemEnvId, v85, v86, v87, v88, v89, v90);
      if (*(NameIds + 8))
      {
        v92 = Values;
        v93 = 0;
        v94 = 0;
        do
        {
          Name = EnvMgr::getName(v72, *(*NameIds + 2 * v94));
          DgnTextFile::convertToEnvValueFormat(*v92 + v93, &v107);
          DgnTextFileWriter::setLineFieldValue(v121, 0, "Env");
          DgnTextFileWriter::setLineFieldValue(v121, v83, (*(this + 28) + *(*(this + 25) + 4 * v74)));
          DgnTextFileWriter::setLineFieldUnsignedValue(v121, v104, 0);
          DgnTextFileWriter::setLineFieldUnsignedValue(v121, v103, 0);
          DgnTextFileWriter::setLineFieldUnsignedValue(v121, v102, 0);
          DgnTextFileWriter::setLineFieldValue(v121, v101, Name);
          if (v108)
          {
            v96 = v107;
          }

          else
          {
            v96 = v84;
          }

          DgnTextFileWriter::setLineFieldValue(v121, v100, v96);
          DgnTextFileWriter::writeNextLine(v121);
          ++v94;
          v93 += 16;
        }

        while (v94 < *(NameIds + 8));
      }

      v73 = v99 + 1;
      v21 = v84;
      v34 = v83;
    }

    while (v99 + 1 < v110);
  }

  DgnString::~DgnString(&v107);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v109);
  DgnArray<DgnString>::releaseAll(&v111);
  DgnArray<DgnString>::releaseAll(&v113);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v115);
  DgnArray<DgnString>::releaseAll(&v117);
  DgnIArray<Utterance *>::~DgnIArray(&v119);
  DgnTextFileWriter::~DgnTextFileWriter(v121);
}

void sub_262739D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, char a31)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a25);
  DgnArray<DgnString>::releaseAll(&a27);
  DgnIArray<Utterance *>::~DgnIArray(&a29);
  DgnTextFileWriter::~DgnTextFileWriter(&a31);
  _Unwind_Resume(a1);
}

uint64_t WordList::getAllByRootId(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 >= 1)
  {
    v5 = 16 * v4 - 16;
    do
    {
      DgnPrimArray<unsigned int>::~DgnPrimArray(*a2 + v5);
      v5 -= 16;
    }

    while (v5 != -16);
  }

  v6 = 0;
  *(a2 + 8) = 0;
  v7 = *(a1 + 388);
  v8 = *(a2 + 12);
  if (v7 <= v8 || (DgnArray<DgnPrimArray<double>>::reallocElts(a2, v7 - v8, 0), v6 = *(a2 + 8), v6 <= v7))
  {
    if (v6 < v7)
    {
      v11 = v7 - v6;
      v12 = 16 * v6;
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

  else if (v6 > v7)
  {
    v9 = v6;
    v10 = 16 * v6 - 16;
    do
    {
      --v9;
      DgnPrimArray<unsigned int>::~DgnPrimArray(*a2 + v10);
      v10 -= 16;
    }

    while (v9 > v7);
  }

  *(a2 + 8) = v7;
  if (*(a1 + 272) == 1 && *(a1 + 274) == -2)
  {
    v14 = a1 + 280;
  }

  else
  {
    v14 = *(*(a1 + 296) + 524272);
  }

  v21 = 0;
  v22 = 0;
  if (*(v14 + 8))
  {
    v15 = 0;
    v16 = 0;
    v17 = 0xFFFFFFLL;
    do
    {
      v18 = *(*v14 + 4 * v16);
      v19 = *(*(a1 + 256) + 4 * v18);
      if (v19 != v17 && v15)
      {
        DgnPrimArray<int>::copyArraySlice(*a2 + 16 * v17, &v21, 0, v15);
        v15 = 0;
        LODWORD(v22) = 0;
      }

      if (v15 == HIDWORD(v22))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v21, 1, 1);
        v15 = v22;
      }

      *(v21 + 4 * v15) = v18;
      v15 = v22 + 1;
      LODWORD(v22) = v22 + 1;
      ++v16;
      v17 = v19;
    }

    while (v16 < *(v14 + 8));
    if (v15)
    {
      DgnPrimArray<int>::copyArraySlice(*a2 + 16 * v19, &v21, 0, v15);
    }
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v21);
}

uint64_t WordList::getPronPredecessorSeedCategory(WordList *this, unsigned int a2)
{
  if (*(this + 98) < 2u)
  {
    return 0;
  }

  else
  {
    return *(*(this + 53) + a2);
  }
}

uint64_t WordList::getPronSuccessorSeedCategory(WordList *this, unsigned int a2)
{
  if (*(this + 99) < 2u)
  {
    return 0;
  }

  else
  {
    return *(*(this + 55) + a2);
  }
}

uint64_t WordList::getHumanReadablePron(WordList *this, unsigned int a2, DgnString *a3)
{
  v6 = 0;
  v7 = 0;
  WordList::getPronWithWB(this, a2, &v6);
  *(a3 + 2) = 0;
  if (v7)
  {
    WordList::phonemesToStr(this, &v6, a3);
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v6);
}

DgnString *tagBitsToTagString(uint64_t a1, void *a2, DgnString *a3)
{
  *(a3 + 2) = 0;
  v10 = a1;
  v9 = *(a1 + 8);
  v8 = 0;
  result = BitArrayIterator::scanForNextSetBitOrStop(&v8);
  if (HIDWORD(v8) < v9)
  {
    v6 = result;
    v7 = &unk_26288C6A6;
    do
    {
      DgnString::operator+=(a3, v7);
      DgnString::operator+=(a3, *a2 + 16 * v6);
      ++HIDWORD(v8);
      result = BitArrayIterator::scanForNextSetBitOrStop(&v8);
      v6 = result;
      v7 = ",";
    }

    while (HIDWORD(v8) < v9);
  }

  if (*(a3 + 2) <= 1u)
  {
    return DgnString::operator=(a3, "0");
  }

  return result;
}

void (***WordList::saveBinary(WordList *this, DFile *a2, DFileChecksums *a3, int a4))(void)
{
  v7 = OpenAndWriteMrecHeader(a2, 0x2Fu, a4, "MRWORD!?", 24, 43);
  v10 = 0;
  writeObject<unsigned short>(v7, this + 32, &v10);
  writeObject<unsigned int>(v7, this + 48, &v10);
  writeObject<unsigned short>(v7, this + 72, &v10);
  writeObject(v7, this + 88, &v10);
  writeObject<unsigned char>(v7, this + 104, &v10);
  writeObject<unsigned short>(v7, this + 120, &v10);
  writeObject<unsigned short>(v7, this + 136, &v10);
  writeObject<unsigned int>(v7, this + 200, &v10);
  writeObject<char>(v7, this + 224, &v10);
  writeObject<unsigned int>(v7, this + 240, &v10);
  writeObject<unsigned int>(v7, this + 256, &v10);
  DgnCollArray<unsigned int,WordList>::writeObject(this + 272, v7, &v10);
  PrefiltererWordIdPronCollArray::writeObject((this + 352), v7, &v10);
  writeObject(v7, this + 94, &v10);
  writeObject(v7, this + 95, &v10);
  writeObject(v7, this + 96, &v10);
  writeObject(v7, this + 97, &v10);
  writeObject(v7, this + 98, &v10);
  writeObject(v7, this + 99, &v10);
  writeObject<DgnPrimArray<BOOL>>(v7, this + 400, &v10);
  writeObject(v7, this + 416, &v10);
  writeObject(v7, this + 417, &v10);
  writeObject(v7, this + 418, &v10);
  writeObject(v7, this + 419, &v10);
  writeObject(v7, this + 420, &v10);
  writeObject(v7, this + 421, &v10);
  writeObject(v7, this + 422, &v10);
  writeObject<unsigned char>(v7, this + 424, &v10);
  writeObject<unsigned char>(v7, this + 440, &v10);
  writeObject(v7, this + 624, &v10);
  writeObject(v7, this + 640, &v10);
  writeObject(v7, this + 114, &v10);
  writeObject(v7, this + 115, &v10);
  writeObject(v7, this + 464, &v10);
  writeObject(v7, this + 480, &v10);
  writeObject(v7, this + 496, &v10);
  writeObject(v7, this + 576, &v10);
  writeObject(v7, (this + 512), &v10);
  EnvMgr::saveEnvMgrToStream(*(this + 3), v7, &v10, 1, 0);
  writeObjectChecksum(v7, &v10);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x2Fu, v10);
  return DgnDelete<DgnStream>(v7);
}

uint64_t writeObject<DgnPrimArray<BOOL>>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = writeObject<BOOL>(a1, *a2 + v7, a3);
      ++v8;
      v7 += 16;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

void WordList::saveWordList(WordList *this, DFile *a2, DFileChecksums *a3, int a4, DFileChecksums *a5)
{
  if (a4)
  {
    WordList::saveTwl(this, a2, a5);
  }

  else
  {
    WordList::saveBinary(this, a2, a3, a5);
  }
}

void WordList::printSize(WordList *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2279, &v430);
  if (v431)
  {
    v16 = v430;
  }

  else
  {
    v16 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26288C6A6, a3, &unk_26288C6A6, v16);
  DgnString::~DgnString(&v430);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26288C6A6);
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
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2280, &v430);
  if (v431)
  {
    v28 = v430;
  }

  else
  {
    v28 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, v25, v26, v27, (a3 + 1), &unk_26288C6A6, (34 - a3), (34 - a3), v28, v21, v21, 0);
  DgnString::~DgnString(&v430);
  *a4 += v21;
  *a5 += v21;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v29 = 4;
  }

  else
  {
    v29 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2281, &v430);
  if (v431)
  {
    v34 = v430;
  }

  else
  {
    v34 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, v31, v32, v33, (a3 + 1), &unk_26288C6A6, (34 - a3), (34 - a3), v34, v29, v29, 0);
  DgnString::~DgnString(&v430);
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

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2282, &v430);
  if (v431)
  {
    v40 = v430;
  }

  else
  {
    v40 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v36, v37, v38, v39, (a3 + 1), &unk_26288C6A6, (34 - a3), (34 - a3), v40, v35, v35, 0);
  DgnString::~DgnString(&v430);
  *a4 += v35;
  *a5 += v35;
  v41 = *(this + 3);
  if (v41)
  {
    v429 = 0;
    v430 = 0;
    v428 = 0;
    EnvMgr::printSize(v41, 0xFFFFFFFFLL, (a3 + 1), &v430, &v429, &v428);
    *a4 += v430;
    *a5 += v429;
    *a6 += v428;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v42 = 4;
  }

  else
  {
    v42 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2284, &v430);
  if (v431)
  {
    v47 = v430;
  }

  else
  {
    v47 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v43, v44, v45, v46, (a3 + 1), &unk_26288C6A6, (34 - a3), (34 - a3), v47, v42, v42, 0);
  v427 = a3;
  DgnString::~DgnString(&v430);
  *a4 += v42;
  *a5 += v42;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v48 = 12;
  }

  else
  {
    v48 = 16;
  }

  v49 = *(this + 10);
  v50 = *(this + 11);
  if (v50 >= v49)
  {
    v51 = 0;
    if (v49 > 0)
    {
      v48 += 2 * (v49 - 1) + 2;
    }

    v52 = v48 + 2 * (v50 - v49);
  }

  else
  {
    v51 = 2 * v49;
    v52 = v48;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v57 = v430;
  }

  else
  {
    v57 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, v54, v55, v56, v22, &unk_26288C6A6, v23, v23, v57, v52, v48, v51);
  DgnString::~DgnString(&v430);
  *a4 += v52;
  *a5 += v48;
  *a6 += v51;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v58 = 12;
  }

  else
  {
    v58 = 16;
  }

  v59 = *(this + 14);
  v60 = *(this + 15);
  if (v60 >= v59)
  {
    v61 = 0;
    if (v59 > 0)
    {
      v58 += 4 * (v59 - 1) + 4;
    }

    v62 = v58 + 4 * (v60 - v59);
  }

  else
  {
    v61 = 4 * v59;
    v62 = v58;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v67 = v430;
  }

  else
  {
    v67 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v63, v64, v65, v66, v22, &unk_26288C6A6, v23, v23, v67, v62, v58, v61);
  DgnString::~DgnString(&v430);
  *a4 += v62;
  *a5 += v58;
  *a6 += v61;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v72 = v430;
  }

  else
  {
    v72 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v68, v69, v70, v71, v22, &unk_26288C6A6, v23, v23, v72, 4, 4, 0);
  DgnString::~DgnString(&v430);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v73 = 12;
  }

  else
  {
    v73 = 16;
  }

  v74 = *(this + 20);
  v75 = *(this + 21);
  if (v75 >= v74)
  {
    v76 = 0;
    if (v74 > 0)
    {
      v73 += 2 * (v74 - 1) + 2;
    }

    v77 = v73 + 2 * (v75 - v74);
  }

  else
  {
    v76 = 2 * v74;
    v77 = v73;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v82 = v430;
  }

  else
  {
    v82 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v78, v79, v80, v81, v22, &unk_26288C6A6, v23, v23, v82, v77, v73, v76);
  DgnString::~DgnString(&v430);
  *a4 += v77;
  *a5 += v73;
  *a6 += v76;
  v83 = BitArray::sizeObject(this + 88, 0);
  v84 = BitArray::sizeObject(this + 88, 1);
  v85 = BitArray::sizeObject(this + 88, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v90 = v430;
  }

  else
  {
    v90 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v86, v87, v88, v89, v22, &unk_26288C6A6, v23, v23, v90, v83, v84, v85);
  DgnString::~DgnString(&v430);
  *a4 += v83;
  *a5 += v84;
  *a6 += v85;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v91 = 12;
  }

  else
  {
    v91 = 16;
  }

  v92 = *(this + 28);
  v93 = *(this + 29);
  v94 = v93 >= v92;
  v95 = v93 - v92;
  if (v94)
  {
    if (v92 > 0)
    {
      v96 = (v92 - 1) + v91 + 1;
    }

    else
    {
      v96 = v91;
    }

    v91 = v96 + v95;
    v92 = 0;
  }

  else
  {
    v96 = v91;
  }

  v97 = v92;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v102 = v430;
  }

  else
  {
    v102 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v98, v99, v100, v101, v22, &unk_26288C6A6, v23, v23, v102, v91, v96, v97);
  DgnString::~DgnString(&v430);
  *a4 += v91;
  *a5 += v96;
  *a6 += v97;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v103 = 12;
  }

  else
  {
    v103 = 16;
  }

  v104 = *(this + 32);
  v105 = *(this + 33);
  if (v105 >= v104)
  {
    v106 = 0;
    if (v104 > 0)
    {
      v103 += 2 * (v104 - 1) + 2;
    }

    v107 = v103 + 2 * (v105 - v104);
  }

  else
  {
    v106 = 2 * v104;
    v107 = v103;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v112 = v430;
  }

  else
  {
    v112 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v108, v109, v110, v111, v22, &unk_26288C6A6, v23, v23, v112, v107, v103, v106);
  DgnString::~DgnString(&v430);
  *a4 += v107;
  *a5 += v103;
  *a6 += v106;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v113 = 12;
  }

  else
  {
    v113 = 16;
  }

  v114 = *(this + 36);
  v115 = *(this + 37);
  if (v115 >= v114)
  {
    v116 = 0;
    if (v114 > 0)
    {
      v113 += 2 * (v114 - 1) + 2;
    }

    v117 = v113 + 2 * (v115 - v114);
  }

  else
  {
    v116 = 2 * v114;
    v117 = v113;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v122 = v430;
  }

  else
  {
    v122 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v118, v119, v120, v121, v22, &unk_26288C6A6, v23, v23, v122, v117, v113, v116);
  DgnString::~DgnString(&v430);
  *a4 += v117;
  *a5 += v113;
  *a6 += v116;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v123 = 12;
  }

  else
  {
    v123 = 16;
  }

  v124 = *(this + 40);
  v125 = *(this + 41);
  if (v125 >= v124)
  {
    v126 = 0;
    if (v124 > 0)
    {
      v123 += 2 * (v124 - 1) + 2;
    }

    v127 = v123 + 2 * (v125 - v124);
  }

  else
  {
    v126 = 2 * v124;
    v127 = v123;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v132 = v430;
  }

  else
  {
    v132 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v128, v129, v130, v131, v22, &unk_26288C6A6, v23, v23, v132, v127, v123, v126);
  DgnString::~DgnString(&v430);
  *a4 += v127;
  *a5 += v123;
  *a6 += v126;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v133 = 12;
  }

  else
  {
    v133 = 16;
  }

  v134 = *(this + 44);
  v135 = *(this + 45);
  if (v135 >= v134)
  {
    v136 = 0;
    if (v134 > 0)
    {
      v133 += 2 * (v134 - 1) + 2;
    }

    v137 = v133 + 2 * (v135 - v134);
  }

  else
  {
    v136 = 2 * v134;
    v137 = v133;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v142 = v430;
  }

  else
  {
    v142 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v138, v139, v140, v141, v22, &unk_26288C6A6, v23, v23, v142, v137, v133, v136);
  DgnString::~DgnString(&v430);
  *a4 += v137;
  *a5 += v133;
  *a6 += v136;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v143 = 12;
  }

  else
  {
    v143 = 16;
  }

  v144 = *(this + 48);
  v145 = *(this + 49);
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

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v152 = v430;
  }

  else
  {
    v152 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v148, v149, v150, v151, v22, &unk_26288C6A6, v23, v23, v152, v147, v143, v146);
  DgnString::~DgnString(&v430);
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

  v154 = *(this + 52);
  v155 = *(this + 53);
  if (v155 >= v154)
  {
    v156 = 0;
    if (v154 > 0)
    {
      v153 += 4 * (v154 - 1) + 4;
    }

    v157 = v153 + 4 * (v155 - v154);
  }

  else
  {
    v156 = 4 * v154;
    v157 = v153;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v162 = v430;
  }

  else
  {
    v162 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v158, v159, v160, v161, v22, &unk_26288C6A6, v23, v23, v162, v157, v153, v156);
  DgnString::~DgnString(&v430);
  *a4 += v157;
  *a5 += v153;
  *a6 += v156;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v167 = v430;
  }

  else
  {
    v167 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v163, v164, v165, v166, v22, &unk_26288C6A6, v23, v23, v167, 4, 4, 0);
  DgnString::~DgnString(&v430);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v168 = 12;
  }

  else
  {
    v168 = 16;
  }

  v169 = *(this + 58);
  v170 = *(this + 59);
  v94 = v170 >= v169;
  v171 = v170 - v169;
  if (v94)
  {
    if (v169 > 0)
    {
      v172 = (v169 - 1) + v168 + 1;
    }

    else
    {
      v172 = v168;
    }

    v168 = v172 + v171;
    v169 = 0;
  }

  else
  {
    v172 = v168;
  }

  v173 = v169;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v178 = v430;
  }

  else
  {
    v178 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v174, v175, v176, v177, v22, &unk_26288C6A6, v23, v23, v178, v168, v172, v173);
  DgnString::~DgnString(&v430);
  *a4 += v168;
  *a5 += v172;
  *a6 += v173;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v179 = 12;
  }

  else
  {
    v179 = 16;
  }

  v180 = *(this + 62);
  v181 = *(this + 63);
  if (v181 >= v180)
  {
    v182 = 0;
    if (v180 > 0)
    {
      v179 += 4 * (v180 - 1) + 4;
    }

    v183 = v179 + 4 * (v181 - v180);
  }

  else
  {
    v182 = 4 * v180;
    v183 = v179;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v188 = v430;
  }

  else
  {
    v188 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v184, v185, v186, v187, v22, &unk_26288C6A6, v23, v23, v188, v183, v179, v182);
  DgnString::~DgnString(&v430);
  *a4 += v183;
  *a5 += v179;
  *a6 += v182;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v189 = 12;
  }

  else
  {
    v189 = 16;
  }

  v190 = *(this + 66);
  v191 = *(this + 67);
  if (v191 >= v190)
  {
    v192 = 0;
    if (v190 > 0)
    {
      v189 += 4 * (v190 - 1) + 4;
    }

    v193 = v189 + 4 * (v191 - v190);
  }

  else
  {
    v192 = 4 * v190;
    v193 = v189;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v198 = v430;
  }

  else
  {
    v198 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v194, v195, v196, v197, v22, &unk_26288C6A6, v23, v23, v198, v193, v189, v192);
  DgnString::~DgnString(&v430);
  *a4 += v193;
  *a5 += v189;
  *a6 += v192;
  v199 = DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::sizeObject(this + 272, 0);
  v200 = DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::sizeObject(this + 272, 1);
  v201 = DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::sizeObject(this + 272, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v206 = v430;
  }

  else
  {
    v206 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v202, v203, v204, v205, v22, &unk_26288C6A6, v23, v23, v206, v199, v200, v201);
  DgnString::~DgnString(&v430);
  *a4 += v199;
  *a5 += v200;
  *a6 += v201;
  v207 = PrefiltererWordIdPronCollArray::sizeObject(this + 352, 0);
  v208 = PrefiltererWordIdPronCollArray::sizeObject(this + 352, 1);
  v209 = PrefiltererWordIdPronCollArray::sizeObject(this + 352, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v214 = v430;
  }

  else
  {
    v214 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v210, v211, v212, v213, v22, &unk_26288C6A6, v23, v23, v214, v207, v208, v209);
  DgnString::~DgnString(&v430);
  *a4 += v207;
  *a5 += v208;
  *a6 += v209;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v219 = v430;
  }

  else
  {
    v219 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v215, v216, v217, v218, v22, &unk_26288C6A6, v23, v23, v219, 4, 4, 0);
  DgnString::~DgnString(&v430);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v224 = v430;
  }

  else
  {
    v224 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v220, v221, v222, v223, v22, &unk_26288C6A6, v23, v23, v224, 4, 4, 0);
  DgnString::~DgnString(&v430);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v229 = v430;
  }

  else
  {
    v229 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v225, v226, v227, v228, v22, &unk_26288C6A6, v23, v23, v229, 4, 4, 0);
  DgnString::~DgnString(&v430);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v234 = v430;
  }

  else
  {
    v234 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v230, v231, v232, v233, v22, &unk_26288C6A6, v23, v23, v234, 4, 4, 0);
  DgnString::~DgnString(&v430);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v235 = 12;
  }

  else
  {
    v235 = 16;
  }

  v236 = *(this + 150);
  v237 = *(this + 151);
  if (v237 >= v236)
  {
    v238 = 0;
    if (v236 > 0)
    {
      v235 += 2 * (v236 - 1) + 2;
    }

    v239 = v235 + 2 * (v237 - v236);
  }

  else
  {
    v238 = 2 * v236;
    v239 = v235;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v244 = v430;
  }

  else
  {
    v244 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v240, v241, v242, v243, v22, &unk_26288C6A6, v23, v23, v244, v239, v235, v238);
  DgnString::~DgnString(&v430);
  *a4 += v239;
  *a5 += v235;
  *a6 += v238;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v245 = 12;
  }

  else
  {
    v245 = 16;
  }

  v246 = *(this + 154);
  v247 = *(this + 155);
  if (v247 >= v246)
  {
    v248 = 0;
    if (v246 > 0)
    {
      v245 += 2 * (v246 - 1) + 2;
    }

    v249 = v245 + 2 * (v247 - v246);
  }

  else
  {
    v248 = 2 * v246;
    v249 = v245;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v254 = v430;
  }

  else
  {
    v254 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v250, v251, v252, v253, v22, &unk_26288C6A6, v23, v23, v254, v249, v245, v248);
  DgnString::~DgnString(&v430);
  *a4 += v249;
  *a5 += v245;
  *a6 += v248;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v259 = v430;
  }

  else
  {
    v259 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v255, v256, v257, v258, v22, &unk_26288C6A6, v23, v23, v259, 4, 4, 0);
  DgnString::~DgnString(&v430);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v264 = v430;
  }

  else
  {
    v264 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v260, v261, v262, v263, v22, &unk_26288C6A6, v23, v23, v264, 4, 4, 0);
  DgnString::~DgnString(&v430);
  *a4 += 4;
  *a5 += 4;
  v265 = sizeObject<DgnPrimArray<unsigned char>>(this + 400, 0);
  v266 = sizeObject<DgnPrimArray<unsigned char>>(this + 400, 1);
  v430 = 0;
  v431 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v430);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v271 = v430;
  }

  else
  {
    v271 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v267, v268, v269, v270, v22, &unk_26288C6A6, v23, v23, v271, v265, v266, 0);
  DgnString::~DgnString(&v430);
  *a4 += v265;
  *a5 += v266;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v276 = v430;
  }

  else
  {
    v276 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v272, v273, v274, v275, v22, &unk_26288C6A6, v23, v23, v276, 1, 1, 0);
  DgnString::~DgnString(&v430);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v281 = v430;
  }

  else
  {
    v281 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v277, v278, v279, v280, v22, &unk_26288C6A6, v23, v23, v281, 1, 1, 0);
  DgnString::~DgnString(&v430);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v286 = v430;
  }

  else
  {
    v286 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v282, v283, v284, v285, v22, &unk_26288C6A6, v23, v23, v286, 1, 1, 0);
  DgnString::~DgnString(&v430);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v291 = v430;
  }

  else
  {
    v291 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v287, v288, v289, v290, v22, &unk_26288C6A6, v23, v23, v291, 1, 1, 0);
  DgnString::~DgnString(&v430);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v296 = v430;
  }

  else
  {
    v296 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v292, v293, v294, v295, v22, &unk_26288C6A6, v23, v23, v296, 1, 1, 0);
  DgnString::~DgnString(&v430);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v301 = v430;
  }

  else
  {
    v301 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v297, v298, v299, v300, v22, &unk_26288C6A6, v23, v23, v301, 1, 1, 0);
  DgnString::~DgnString(&v430);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v306 = v430;
  }

  else
  {
    v306 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v302, v303, v304, v305, v22, &unk_26288C6A6, v23, v23, v306, 1, 1, 0);
  DgnString::~DgnString(&v430);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v307 = 12;
  }

  else
  {
    v307 = 16;
  }

  v308 = *(this + 108);
  v309 = *(this + 109);
  v94 = v309 >= v308;
  v310 = v309 - v308;
  if (v94)
  {
    if (v308 > 0)
    {
      v311 = (v308 - 1) + v307 + 1;
    }

    else
    {
      v311 = v307;
    }

    v307 = v311 + v310;
    v308 = 0;
  }

  else
  {
    v311 = v307;
  }

  v312 = v308;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v317 = v430;
  }

  else
  {
    v317 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v313, v314, v315, v316, v22, &unk_26288C6A6, v23, v23, v317, v307, v311, v312);
  DgnString::~DgnString(&v430);
  *a4 += v307;
  *a5 += v311;
  *a6 += v312;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v318 = 12;
  }

  else
  {
    v318 = 16;
  }

  v319 = *(this + 112);
  v320 = *(this + 113);
  v94 = v320 >= v319;
  v321 = v320 - v319;
  if (v94)
  {
    if (v319 > 0)
    {
      v322 = (v319 - 1) + v318 + 1;
    }

    else
    {
      v322 = v318;
    }

    v318 = v322 + v321;
    v319 = 0;
  }

  else
  {
    v322 = v318;
  }

  v323 = v319;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v328 = v430;
  }

  else
  {
    v328 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v324, v325, v326, v327, v22, &unk_26288C6A6, v23, v23, v328, v318, v322, v323);
  DgnString::~DgnString(&v430);
  *a4 += v318;
  *a5 += v322;
  *a6 += v323;
  v329 = BitArray::sizeObject(this + 624, 0);
  v330 = BitArray::sizeObject(this + 624, 1);
  v331 = BitArray::sizeObject(this + 624, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v336 = v430;
  }

  else
  {
    v336 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v332, v333, v334, v335, v22, &unk_26288C6A6, v23, v23, v336, v329, v330, v331);
  DgnString::~DgnString(&v430);
  *a4 += v329;
  *a5 += v330;
  *a6 += v331;
  v337 = BitArray::sizeObject(this + 640, 0);
  v338 = BitArray::sizeObject(this + 640, 1);
  v339 = BitArray::sizeObject(this + 640, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v344 = v430;
  }

  else
  {
    v344 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v340, v341, v342, v343, v22, &unk_26288C6A6, v23, v23, v344, v337, v338, v339);
  DgnString::~DgnString(&v430);
  *a4 += v337;
  *a5 += v338;
  *a6 += v339;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v349 = v430;
  }

  else
  {
    v349 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v345, v346, v347, v348, v22, &unk_26288C6A6, v23, v23, v349, 4, 4, 0);
  DgnString::~DgnString(&v430);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v354 = v430;
  }

  else
  {
    v354 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v350, v351, v352, v353, v22, &unk_26288C6A6, v23, v23, v354, 4, 4, 0);
  DgnString::~DgnString(&v430);
  *a4 += 4;
  *a5 += 4;
  v355 = sizeObject(this + 464);
  v356 = sizeObject(this + 464);
  v357 = sizeObject(this + 464);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v362 = v430;
  }

  else
  {
    v362 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v358, v359, v360, v361, v22, &unk_26288C6A6, v23, v23, v362, v355, v356, v357);
  DgnString::~DgnString(&v430);
  *a4 += v355;
  *a5 += v356;
  *a6 += v357;
  v363 = sizeObject(this + 480);
  v364 = sizeObject(this + 480);
  v365 = sizeObject(this + 480);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v370 = v430;
  }

  else
  {
    v370 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v366, v367, v368, v369, v22, &unk_26288C6A6, v23, v23, v370, v363, v364, v365);
  DgnString::~DgnString(&v430);
  *a4 += v363;
  *a5 += v364;
  *a6 += v365;
  v371 = sizeObject(this + 496);
  v372 = sizeObject(this + 496);
  v373 = sizeObject(this + 496);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v378 = v430;
  }

  else
  {
    v378 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v374, v375, v376, v377, v22, &unk_26288C6A6, v23, v23, v378, v371, v372, v373);
  DgnString::~DgnString(&v430);
  *a4 += v371;
  *a5 += v372;
  *a6 += v373;
  v379 = BitArray::sizeObject(this + 576, 0);
  v380 = BitArray::sizeObject(this + 576, 1);
  v381 = BitArray::sizeObject(this + 576, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v386 = v430;
  }

  else
  {
    v386 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v382, v383, v384, v385, v22, &unk_26288C6A6, v23, v23, v386, v379, v380, v381);
  DgnString::~DgnString(&v430);
  *a4 += v379;
  *a5 += v380;
  *a6 += v381;
  v387 = 12;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v387 = 16;
  }

  v388 = *(this + 132);
  v389 = *(this + 133);
  v390 = v387;
  if (v389 >= v388)
  {
    v391 = v387 + 4 * (v388 - 1) + 4;
    if (v388 <= 0)
    {
      v391 = v387;
    }

    v390 = v391 + 4 * (v389 - v388);
  }

  v392 = v390 + 4;
  v393 = *(this + 136);
  v394 = *(this + 137);
  v395 = v387;
  if (v394 >= v393)
  {
    if (v393 > 0)
    {
      v396 = (v393 - 1) + v387 + 1;
    }

    else
    {
      v396 = v387;
    }

    v395 = v396 + v394 - v393;
  }

  v397 = v392 + v395;
  v398 = v387;
  if (v389 >= v388)
  {
    v398 = v387 + 4 * (v388 - 1) + 4;
    if (v388 <= 0)
    {
      v398 = v387;
    }
  }

  v399 = v398 + 4;
  if (v394 >= v393)
  {
    if (v393 > 0)
    {
      v387 += (v393 - 1) + 1;
    }

    v393 = 0;
  }

  v400 = v399 + v387;
  if (v389 >= v388)
  {
    v401 = 0;
  }

  else
  {
    v401 = 4 * v388;
  }

  v402 = v401 + v393;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v407 = v430;
  }

  else
  {
    v407 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v403, v404, v405, v406, v22, &unk_26288C6A6, v23, v23, v407, v397, v400, v402);
  DgnString::~DgnString(&v430);
  *a4 += v397;
  *a5 += v400;
  *a6 += v402;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v412 = v430;
  }

  else
  {
    v412 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v408, v409, v410, v411, v22, &unk_26288C6A6, v23, v23, v412, 4, 4, 0);
  DgnString::~DgnString(&v430);
  *a4 += 4;
  *a5 += 4;
  v413 = BitArray::sizeObject(this + 560, 0);
  v414 = BitArray::sizeObject(this + 560, 1);
  v415 = BitArray::sizeObject(this + 560, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286, &v430);
  if (v431)
  {
    v420 = v430;
  }

  else
  {
    v420 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v416, v417, v418, v419, v22, &unk_26288C6A6, v23, v23, v420, v413, v414, v415);
  DgnString::~DgnString(&v430);
  *a4 += v413;
  *a5 += v414;
  *a6 += v415;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2287, &v430);
  if (v431)
  {
    v425 = v430;
  }

  else
  {
    v425 = &unk_26288C6A6;
  }

  v426 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v421, v422, v423, v424, v427, &unk_26288C6A6, (35 - v427), (35 - v427), v425, *a4, *a5, *a6);
  DgnString::~DgnString(&v430);
}

void sub_26273C50C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

unint64_t WordList::lookupAll(uint64_t *a1, uint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  v18[0] = a2;
  *(a3 + 8) = 0;
  v8 = *a1;
  v18[1] = a1;
  v18[2] = v8;
  v19 = -2;
  v20 = 0;
  if (*(a1 + 272) == 1 && *(a1 + 137) == -2)
  {
    v9 = a1 + 35;
  }

  else
  {
    v9 = *(a1[37] + 524272);
  }

  result = DgnPrimArray<unsigned int>::searchFirstEqual(v9, 0, *(v9 + 2), v18, WordIdCollSearchCmp);
  if (result == -1 || result >= *(v9 + 2))
  {
    v12 = 0;
    v11 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = result;
    v14 = *(*v9 + 4 * result);
    do
    {
      v15 = *(*v9 + 4 * v13);
      if (*(a1 + 97) <= v15 || !*(a1[13] + v15) || *(a1[25] + 4 * v15) != *(a1[25] + 4 * v14))
      {
        break;
      }

      v16 = *(a3 + 8);
      if (v16 == *(a3 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
        v16 = *(a3 + 8);
      }

      *(*a3 + 4 * v16) = v15;
      ++*(a3 + 8);
      if ((*(a1[80] + ((v15 >> 3) & 0x1FFFFFFC)) & (1 << v15)) != 0)
      {
        ++v11;
      }

      else
      {
        ++v12;
      }

      ++v13;
    }

    while (v13 < *(v9 + 2));
  }

  if (a4)
  {
    *a4 = v11;
  }

  if (a5)
  {
    *a5 = v12;
  }

  return result;
}

uint64_t WordList::lookupAllClientAddedProns(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  WordList::lookupAll(a1, a2, &v10, 0, 0);
  v5 = v11;
  if (v11)
  {
    v6 = 0;
    do
    {
      v7 = *(v10 + 4 * v6);
      if (((*(a1[80] + ((v7 >> 3) & 0x1FFFFFFC)) >> v7) & 1) == 0)
      {
        v8 = *(a3 + 8);
        if (v8 == *(a3 + 12))
        {
          DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
          v8 = *(a3 + 8);
        }

        *(*a3 + 4 * v8) = v7;
        ++*(a3 + 8);
        v5 = v11;
      }

      ++v6;
    }

    while (v6 < v5);
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v10);
}

unint64_t WordList::getAllGuessedWordsByOptionalTag(unint64_t this, uint64_t a2)
{
  v3 = this;
  *(a2 + 8) = 0;
  if (*(this + 272) == 1 && *(this + 274) == -2)
  {
    v4 = this + 280;
  }

  else
  {
    v4 = *(*(this + 296) + 524272);
  }

  if (*(v4 + 8))
  {
    v5 = 0;
    do
    {
      v6 = *(*v4 + 4 * v5);
      if (*(v3 + 528) > v6 && *(*(v3 + 520) + 4 * v6) != -1)
      {
        this = WordList::isGuessedWordByOptionalTag(v3, *(*v4 + 4 * v5));
        if (this)
        {
          v7 = *(a2 + 8);
          if (v7 == *(a2 + 12))
          {
            this = DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
            v7 = *(a2 + 8);
          }

          *(*a2 + 4 * v7) = v6;
          ++*(a2 + 8);
        }
      }

      ++v5;
    }

    while (v5 < *(v4 + 8));
  }

  return this;
}

uint64_t WordList::numAltProns(WordList *this, const char *a2)
{
  v4 = 0;
  v5 = 0;
  WordList::lookupAll(this, a2, &v4, 0, 0);
  v2 = v5;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v4);
  return v2;
}

void WordList::getWordsWithPrefix(uint64_t a1, uint64_t a2, char *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 != 65534 && (DgnCollArray<unsigned int,WordList>::checkCollIdExposed(a1 + 272, a2, a3, a4, a5, a6, a7, a8), a2 == 0xFFFF) || *(a1 + 272) == 1 && *(a1 + 274) == a2)
  {
    v14 = a1 + 280;
  }

  else
  {
    v14 = *(*(a1 + 296) + 8 * a2);
  }

  WordList::getWordsWithPrefix(a1, v14, a2, a3, a4, a5, a6, a8);
}

void WordList::getWordsWithPrefix(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  if (!*a4)
  {
    if (*a5)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2538, "word/wordlist", 75, "%s", a7, a8, &errStr_word_wordlist_E_EMPTY_PREFIX1_WITH_NONEMPTY_PREFIX2);
    }

    v24 = *(a2 + 8);
    if (v24)
    {
      for (i = 0; i < v24; ++i)
      {
        v26 = *(*a2 + 4 * i);
        if (*(*(a1 + 256) + 4 * v26) == v26)
        {
          v27 = *(a6 + 8);
          if (v27 == *(a6 + 12))
          {
            DgnPrimArray<unsigned int>::reallocElts(a6, 1, 1);
            v27 = *(a6 + 8);
          }

          *(*a6 + 4 * v27) = v26;
          ++*(a6 + 8);
          v24 = *(a2 + 8);
        }
      }
    }

    goto LABEL_46;
  }

  v14 = a3;
  if ((CollMgr::collationCanGetWordsWithPrefix(*a1, a3, a3, a4, a5, a6, a7, a8) & 1) == 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2552, "word/wordlist", 13, "%s", v15, v16, &errStr_word_wordlist_E_BAD_COLLATION);
  }

  v17 = *a1;
  v57[0] = a4;
  v57[1] = a1;
  v57[2] = v17;
  v58 = v14;
  v59 = 1;
  v56 = 0;
  EqualWithLastEqualBounds = DgnPrimArray<unsigned int>::searchFirstEqualWithLastEqualBounds(a2, 0, *(a2 + 8), v57, WordIdCollSearchCmp, &v56 + 1, &v56);
  if (EqualWithLastEqualBounds == -1)
  {
LABEL_46:
    *v8 = 0;
    return;
  }

  v19 = EqualWithLastEqualBounds;
  if (!*a5)
  {
    Equal = DgnPrimArray<unsigned int>::searchLastEqual(a2, HIDWORD(v56), v56, v57, WordIdCollSearchCmp);
    if (v19 <= Equal)
    {
      v43 = Equal;
      do
      {
        v44 = *(*a2 + 4 * v19);
        if (*(*(a1 + 256) + 4 * v44) == v44)
        {
          v45 = *(a6 + 8);
          if (v45 == *(a6 + 12))
          {
            DgnPrimArray<unsigned int>::reallocElts(a6, 1, 1);
            v45 = *(a6 + 8);
          }

          *(*a6 + 4 * v45) = v44;
          ++*(a6 + 8);
        }

        ++v19;
      }

      while (v19 <= v43);
    }

    goto LABEL_46;
  }

  v20 = *a1;
  v53[0] = a4;
  v53[1] = a1;
  v53[2] = v20;
  v54 = v14;
  v55 = 0;
  v21 = DgnPrimArray<unsigned int>::searchLastEqual(a2, EqualWithLastEqualBounds, v56, v53, WordIdCollSearchCmp);
  if (v21 != -1)
  {
    while (v19 <= v21)
    {
      v22 = *(*a2 + 4 * v19);
      if (*(*(a1 + 256) + 4 * v22) == v22)
      {
        v23 = *(a6 + 8);
        if (v23 == *(a6 + 12))
        {
          DgnPrimArray<unsigned int>::reallocElts(a6, 1, 1);
          v23 = *(a6 + 8);
        }

        *(*a6 + 4 * v23) = v22;
        ++*(a6 + 8);
      }

      ++v19;
    }
  }

  DgnString::DgnString(&v51, a4);
  DgnString::operator+=(&v51, a5);
  if (v52)
  {
    v28 = v51;
  }

  else
  {
    v28 = &unk_26288C6A6;
  }

  v29 = *a1;
  v48[0] = v28;
  v48[1] = a1;
  v48[2] = v29;
  v49 = v14;
  v50 = 1;
  v47 = 0;
  v30 = DgnPrimArray<unsigned int>::searchFirstEqualWithLastEqualBounds(a2, v19, v56, v48, WordIdCollSearchCmp, &v47 + 1, &v47);
  v35 = v30;
  if (v21 == -1)
  {
    v36 = v19;
  }

  else
  {
    v36 = v21 + 1;
  }

  if (v30 == -1)
  {
    goto LABEL_48;
  }

  v46 = v8;
  v37 = DgnPrimArray<unsigned int>::searchLastEqual(a2, HIDWORD(v47), v47, v48, WordIdCollSearchCmp);
  if (v35 <= v37)
  {
    v38 = v35;
    do
    {
      v39 = *(*a2 + 4 * v38);
      if (*(*(a1 + 256) + 4 * v39) == v39)
      {
        v40 = *(a6 + 8);
        if (v40 == *(a6 + 12))
        {
          DgnPrimArray<unsigned int>::reallocElts(a6, 1, 1);
          v40 = *(a6 + 8);
        }

        *(*a6 + 4 * v40) = v39;
        ++*(a6 + 8);
      }

      ++v38;
    }

    while (v38 <= v37);
  }

  if (v35 <= v36)
  {
    v36 = v37 + 1;
    v8 = v46;
LABEL_48:
    v41 = v36 < *(a2 + 8) && CollMgr::collPrefixcmpUns8(*a1, v14, (*(a1 + 224) + *(*(a1 + 200) + 4 * *(*a2 + 4 * v36))), a4, v31, v32, v33, v34) == 0;
    goto LABEL_51;
  }

  v41 = 1;
  v8 = v46;
LABEL_51:
  *v8 = v41;
  DgnString::~DgnString(&v51);
}

void sub_26273CEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t DgnPrimArray<unsigned int>::searchFirstEqualWithLastEqualBounds(void *a1, int a2, int a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), _DWORD *a6, int *a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a3)
  {
    v10 = a2;
    *a6 = -1;
    *a7 = a3;
    if (a3 > a2)
    {
      v14 = (a3 - 1);
      do
      {
        v7 = ((v10 + v14) / 2);
        v15 = a5(*a1 + 4 * v7, a4);
        if (v15)
        {
          if (v15 < 0)
          {
            v10 = v7 + 1;
            v7 = v14;
          }

          else
          {
            *a7 = v7;
            v7 = (v7 - 1);
          }
        }

        else
        {
          if (v7 > *a6)
          {
            *a6 = v7;
          }

          if (v14 == v10)
          {
            return v7;
          }
        }

        v14 = v7;
      }

      while (v10 <= v7);
      return 0xFFFFFFFFLL;
    }
  }

  return v7;
}

uint64_t DgnPrimArray<unsigned int>::searchLastEqual(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = 0xFFFFFFFFLL;
  if (a3)
  {
    v6 = a2;
    if (a3 > a2)
    {
      v10 = a3 - 1;
      do
      {
        if (v6 == v10 - 1)
        {
          v5 = v10;
        }

        else
        {
          v5 = ((v6 + v10) / 2);
        }

        v11 = a5(*a1 + 4 * v5, a4);
        if (v11)
        {
          if (v11 < 0)
          {
            v5 = (v5 + 1);
          }

          else
          {
            v10 = v5 - 1;
            v5 = v6;
          }
        }

        else if (v10 == v6)
        {
          return v5;
        }

        v6 = v5;
      }

      while (v5 <= v10);
      return 0xFFFFFFFFLL;
    }
  }

  return v5;
}

void WordList::verifyValid(WordList *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 97) <= a2 || !*(*(this + 13) + a2))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2699, "word/wordlist", 2, "%d", a7, a8, a2);
  }
}

void WordList::verifyVisible(WordList *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 97) <= a2 || !*(*(this + 13) + a2) || *(*(this + 32) + 4 * a2) != a2)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2704, "word/wordlist", 2, "%d", a7, a8, a2);
  }
}

void WordList::verifyModifiable(WordList *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(*(this + 19) + 2 * a2))
  {
    v10 = *(*(this + 19) + 2 * a2);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2711, "word/wordlist", 4, "%.500s %d %.500s %d", a7, a8, "modify");
  }

  if (*(*(this + 21) + 2 * a2))
  {
    v11 = *(*(this + 21) + 2 * a2);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2713, "word/wordlist", 4, "%.500s %d %.500s %d", a7, a8, "modify");
  }

  if (*(*(this + 23) + 2 * a2))
  {
    v12 = *(*(this + 23) + 2 * a2);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2715, "word/wordlist", 4, "%.500s %d %.500s %d", a7, a8, "modify");
  }
}

void WordList::verifyDeletable(WordList *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(*(this + 15) + 2 * a2))
  {
    v10 = *(*(this + 15) + 2 * a2);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2721, "word/wordlist", 4, "%.500s %d %.500s %d", a7, a8, "delete");
  }

  if (*(*(this + 17) + 2 * a2))
  {
    v11 = *(*(this + 17) + 2 * a2);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2723, "word/wordlist", 4, "%.500s %d %.500s %d", a7, a8, "delete");
  }

  if (*(*(this + 19) + 2 * a2))
  {
    v12 = *(*(this + 19) + 2 * a2);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2725, "word/wordlist", 4, "%.500s %d %.500s %d", a7, a8, "delete");
  }

  if (*(*(this + 21) + 2 * a2))
  {
    v13 = *(*(this + 21) + 2 * a2);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2727, "word/wordlist", 4, "%.500s %d %.500s %d", a7, a8, "delete");
  }

  if (*(*(this + 23) + 2 * a2))
  {
    v14 = *(*(this + 23) + 2 * a2);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2729, "word/wordlist", 4, "%.500s %d %.500s %d", a7, a8, "delete");
  }
}

uint64_t WordList::addWord(WordList *this, CharInfo *a2, uint64_t a3, char a4, char a5, const char *a6)
{
  v8[0] = 0;
  v8[1] = 0;
  v6 = WordList::addWordInternal(this, 1, 0xFFFFFFLL, 0xFFFFFF, 0xFFFFFFFFLL, a2, a3, v8, a4, a5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v8);
  return v6;
}

void sub_26273D47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t WordList::getFreeId(WordList *this)
{
  v2 = *(this + 62);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = *(*(this + 30) + 4 * v3);
    *(this + 62) = v3;
    v5 = *(this + 97);
    if (v4 != v5)
    {
      return v4;
    }
  }

  else
  {
    v4 = *(this + 97);
    v5 = *(this + 97);
  }

  *(this + 97) = v5 + 1;
  v6 = *(this + 66);
  if (v6 == *(this + 67))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 256, 1, 1);
    v6 = *(this + 66);
  }

  *(this + 66) = v6 + 1;
  v7 = *(this + 28);
  if (v7 == *(this + 29))
  {
    DgnPrimArray<char>::reallocElts(this + 104, 1, 1);
    v7 = *(this + 28);
  }

  *(this + 28) = v7 + 1;
  v8 = *(this + 52);
  if (v8 == *(this + 53))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 200, 1, 1);
    v8 = *(this + 52);
  }

  *(this + 52) = v8 + 1;
  v9 = *(this + 14);
  if (v9 == *(this + 15))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 48, 1, 1);
    v9 = *(this + 14);
  }

  *(this + 14) = v9 + 1;
  v10 = *(this + 10);
  if (v10 == *(this + 11))
  {
    DgnPrimArray<short>::reallocElts(this + 32, 1, 1);
    v10 = *(this + 10);
  }

  *(this + 10) = v10 + 1;
  BitArray::add((this + 624), 0);
  BitArray::add((this + 640), 0);
  if (*(this + 98) >= 2u)
  {
    v11 = *(this + 108);
    if (v11 == *(this + 109))
    {
      DgnPrimArray<char>::reallocElts(this + 424, 1, 1);
      v11 = *(this + 108);
    }

    *(*(this + 53) + v11) = -2;
    ++*(this + 108);
  }

  if (*(this + 99) >= 2u)
  {
    v12 = *(this + 112);
    if (v12 == *(this + 113))
    {
      DgnPrimArray<char>::reallocElts(this + 440, 1, 1);
      v12 = *(this + 112);
    }

    *(*(this + 55) + v12) = -2;
    ++*(this + 112);
  }

  v13 = *(this + 138);
  if (v13)
  {
    BitArray::addSize((this + 576), v13);
  }

  v14 = *(this + 32);
  if (v14 == *(this + 33))
  {
    DgnPrimArray<short>::reallocElts(this + 120, 1, 1);
    v14 = *(this + 32);
  }

  *(this + 32) = v14 + 1;
  v15 = *(this + 36);
  if (v15 == *(this + 37))
  {
    DgnPrimArray<short>::reallocElts(this + 136, 1, 1);
    v15 = *(this + 36);
  }

  *(this + 36) = v15 + 1;
  v16 = *(this + 150);
  if (v16 == *(this + 151))
  {
    DgnPrimArray<short>::reallocElts(this + 592, 1, 1);
    v16 = *(this + 150);
  }

  *(this + 150) = v16 + 1;
  v17 = *(this + 154);
  if (v17 == *(this + 155))
  {
    DgnPrimArray<short>::reallocElts(this + 608, 1, 1);
    v17 = *(this + 154);
  }

  *(this + 154) = v17 + 1;
  v18 = *(this + 40);
  if (v18 == *(this + 41))
  {
    DgnPrimArray<short>::reallocElts(this + 152, 1, 1);
    v18 = *(this + 40);
  }

  *(this + 40) = v18 + 1;
  v19 = *(this + 44);
  if (v19 == *(this + 45))
  {
    DgnPrimArray<short>::reallocElts(this + 168, 1, 1);
    v19 = *(this + 44);
  }

  *(this + 44) = v19 + 1;
  v20 = *(this + 48);
  if (v20 == *(this + 49))
  {
    DgnPrimArray<short>::reallocElts(this + 184, 1, 1);
    v20 = *(this + 48);
  }

  *(this + 48) = v20 + 1;
  WordList::invalidateId(this, v5);
  return v4;
}

void WordList::getTagBits(WordList *this, unsigned int a2, int a3, BitArray *a4)
{
  if (a3)
  {
    BitArray::getBitsFromRange((this + 576), a4, *(this + 138) * a2, *(this + 138) * a2 + *(this + 138));
  }

  else
  {
    TagBitsAndStrings::getTagBits((this + 512), a2, a4);
  }
}

uLong WordList::setPron(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6, int a7)
{
  *(a1 + 380) ^= WordList::computeWordIdPronChecksum(a1, a2);
  v18 = *(a3 + 8);
  if (v18 >= 0x3FFF)
  {
    v43 = *(a3 + 8);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 3447, "word/wordlist", 8, "%u %u", v16, v17, a2);
  }

  if (a7)
  {
    if (v18 <= 1)
    {
      goto LABEL_10;
    }
  }

  else if (!v18)
  {
    goto LABEL_10;
  }

  if (!**a3 || !*(*a3 + 2 * (v18 - 1)))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 3454, "word/wordlist", 37, "%u", v16, v17, a2);
  }

LABEL_10:
  PhnMgr::verifyPhonemePron2(*(a1 + 16), a3, *(a1 + 224) + *(*(a1 + 200) + 4 * a2), 0, v14, v15, v16, v17);
  if (a6)
  {
    WordIdPronCollArray::remove((a1 + 352), a2);
  }

  *(*(a1 + 48) + 4 * a2) = *(a1 + 80);
  *(*(a1 + 32) + 2 * a2) = v18;
  if (!v18)
  {
    goto LABEL_22;
  }

  v44 = a6;
  a6 = a4;
  v24 = a5;
  v25 = 0;
  v26 = *(*(a1 + 16) + 60);
  v27 = 2 * v18;
  do
  {
    v28 = *(*a3 + v25);
    if (v28 == v26)
    {
      --*(*(a1 + 32) + 2 * a2);
      *(*(a1 + 88) + 4 * ((*(a1 + 80) - 1) >> 5)) |= 1 << (*(a1 + 80) - 1);
    }

    else
    {
      v29 = *(a1 + 80);
      if (v29 == *(a1 + 84))
      {
        DgnPrimArray<short>::reallocElts(a1 + 72, 1, 1);
        v29 = *(a1 + 80);
      }

      *(*(a1 + 72) + 2 * v29) = v28;
      *(a1 + 80) = v29 + 1;
      BitArray::add((a1 + 88), 0);
    }

    v25 += 2;
  }

  while (v27 != v25);
  v30 = *(a1 + 32);
  v31 = *(v30 + 2 * a2);
  a5 = v24;
  a4 = a6;
  LOBYTE(a6) = v44;
  if (*(v30 + 2 * a2))
  {
    v32 = (*(a1 + 72) + 2 * *(*(a1 + 48) + 4 * a2));
    v33 = *v32;
    v34 = v32[v31 - 1];
    v35 = 608;
    v36 = 592;
  }

  else
  {
LABEL_22:
    v33 = *(*(a1 + 16) + 58);
    v35 = 592;
    v36 = 608;
    v34 = v33;
  }

  *(*(a1 + v36) + 2 * a2) = v33;
  *(*(a1 + v35) + 2 * a2) = v34;
  if (a6)
  {
    WordIdPronCollArray::add((a1 + 352), a2);
  }

  WordList::setPronPredecessorSeedCategory(a1, a2, a4, v19, v20, v21, v22, v23);
  WordList::setPronSuccessorSeedCategory(a1, a2, a5, v37, v38, v39, v40, v41);
  result = WordList::computeWordIdPronChecksum(a1, a2);
  *(a1 + 380) ^= result;
  return result;
}

uint64_t WordList::addClientPronsAvoidDuplicates(uint64_t *a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, int a8, uint64_t a9, uint64_t a10)
{
  v43 = 0;
  v44 = 0;
  WordList::lookupAll(a1, a1[28] + *(a1[25] + 4 * *(a1[32] + 4 * a2)), &v43, 0, 0);
  v33 = *(a1[25] + 4 * a2);
  v32 = a1[28];
  v35 = v44;
  v42[0] = 0;
  v42[1] = 0;
  v38 = *(a1[4] + 2 * a2);
  v41[0] = 0;
  v41[1] = 0;
  if (*(a5 + 8))
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = *a5 + 16 * v15;
      if (v38 || v15)
      {
        if (v16 == a8 || v16 + v35 == 254)
        {
          break;
        }

        v39 = 0;
        v40 = 0;
        if (v44)
        {
          v20 = 0;
          while (1)
          {
            WordList::getPronWithWB(a1, *(v43 + 4 * v20), &v39);
            if (&v39 == v17)
            {
              break;
            }

            v21 = v40;
            if (v40 == *(v17 + 8))
            {
              while (v21 >= 1)
              {
                v22 = *(v39 - 2 + 2 * v21);
                v23 = *(*v17 - 2 + 2 * v21--);
                if (v22 != v23)
                {
                  goto LABEL_20;
                }
              }

              break;
            }

LABEL_20:
            if (++v20 >= v44)
            {
              goto LABEL_21;
            }
          }
        }

        else
        {
LABEL_21:
          if (a10)
          {
            v24 = *(a10 + 8);
            if (v24 == *(a10 + 12))
            {
              DgnPrimArray<unsigned int>::reallocElts(a10, 1, 1);
              v24 = *(a10 + 8);
            }

            *(*a10 + 4 * v24) = v15;
            ++*(a10 + 8);
          }

          v25 = v16 + 1;
          if (v38)
          {
            v26 = v16 + 1;
          }

          else
          {
            v26 = v16;
          }

          v27 = WordList::addWordInternal(a1, 1, 0xFFFFFFLL, a2, 0xFFFFFFFFLL, (v32 + v33), (v26 + v35), v41, 1, 1);
          v28 = a4;
          v29 = *(a4 + 8);
          if (v29 == *(a4 + 12))
          {
            DgnPrimArray<unsigned int>::reallocElts(a4, 1, 1);
            v28 = a4;
            v29 = *(a4 + 8);
          }

          *(*v28 + 4 * v29) = v27;
          ++*(v28 + 8);
          v30 = v44;
          if (v44 == HIDWORD(v44))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v43, 1, 1);
            v30 = v44;
          }

          *(v43 + 4 * v30) = v27;
          LODWORD(v44) = v44 + 1;
          WordList::setPron(a1, v27, v17, *(*a6 + v15), *(*a7 + v15), 1u, 1);
          v16 = v25;
        }

        DgnPrimArray<unsigned int>::~DgnPrimArray(&v39);
      }

      else
      {
        if (a10)
        {
          v18 = *(a10 + 8);
          if (v18 == *(a10 + 12))
          {
            DgnPrimArray<unsigned int>::reallocElts(a10, 1, 1);
            v18 = *(a10 + 8);
          }

          *(*a10 + 4 * v18) = 0;
          ++*(a10 + 8);
        }

        v19 = *(a3 + 8);
        if (v19 == *(a3 + 12))
        {
          DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
          v19 = *(a3 + 8);
        }

        *(*a3 + 4 * v19) = a2;
        ++*(a3 + 8);
        WordList::setPron(a1, a2, v17, **a6, **a7, 1u, 1);
        ++v16;
        *(a1[80] + 4 * (a2 >> 5)) &= ~(1 << a2);
      }

      ++v15;
    }

    while (v15 < *(a5 + 8));
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v41);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v42);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v43);
}

void sub_26273DE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va2, a11);
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  va_copy(va2, va1);
  v16 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v11 - 96);
  _Unwind_Resume(a1);
}

void *WordList::getPronWithWB(void *result, unsigned int a2, uint64_t a3)
{
  v3 = *(result[4] + 2 * a2);
  *(a3 + 8) = 0;
  if (v3)
  {
    v6 = result;
    v7 = 0;
    v8 = 0;
    v9 = result[9] + 2 * *(result[6] + 4 * a2);
    do
    {
      v10 = *(v9 + 2 * v8);
      if (v7 == *(a3 + 12))
      {
        result = DgnPrimArray<short>::reallocElts(a3, 1, 1);
        v7 = *(a3 + 8);
      }

      v11 = *a3;
      *(*a3 + 2 * v7++) = v10;
      *(a3 + 8) = v7;
      v12 = v8 + *(v6[6] + 4 * a2);
      if ((*(v6[11] + 4 * (v12 >> 5)) >> v12))
      {
        v13 = *(v6[2] + 60);
        if (v7 == *(a3 + 12))
        {
          result = DgnPrimArray<short>::reallocElts(a3, 1, 1);
          v7 = *(a3 + 8);
          v11 = *a3;
        }

        *(v11 + 2 * v7++) = v13;
        *(a3 + 8) = v7;
      }

      ++v8;
    }

    while (v3 != v8);
  }

  return result;
}

uint64_t WordList::getNumClientProns(WordList *this, unsigned int a2)
{
  if (!*(*(this + 4) + 2 * a2))
  {
    return 0;
  }

  v5 = 0;
  v4[0] = 0;
  v4[1] = 0;
  WordList::lookupAll(this, *(this + 28) + *(*(this + 25) + 4 * a2), v4, 0, &v5);
  v2 = v5;
  DgnPrimArray<unsigned int>::~DgnPrimArray(v4);
  return v2;
}

void sub_26273DFCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t WordList::deleteWordClientProns(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(*(a1 + 200) + 4 * a2);
  v14 = *(a1 + 224);
  WordList::verifyModifiable(a1, a2, a3, a4, a5, a6, a7, a8);
  v25 = 0;
  v26 = 0;
  DgnPrimArray<int>::copyArraySlice(&v25, a3, 0, *(a3 + 8));
  v15 = v26;
  v23 = 0;
  v24 = 0;
  WordList::lookupAll(a1, v14 + v13, &v23, 0, 0);
  if (v24 == v15)
  {
    if (v15 >= 2)
    {
      v16 = *(a5 + 8);
      do
      {
        v17 = *(v23 + v15 - 1);
        if (v16 == *(a5 + 12))
        {
          DgnPrimArray<unsigned int>::reallocElts(a5, 1, 1);
          v16 = *(a5 + 8);
        }

        --v15;
        *(*a5 + 4 * v16) = v17;
        v16 = *(a5 + 8) + 1;
        *(a5 + 8) = v16;
      }

      while (v15 > 1);
      if (!HIDWORD(v24))
      {
        v22[0] = 0;
        HIDWORD(v24) = realloc_array(v23, v22, 4uLL, 4 * v24, 4 * v24, 1) >> 2;
        v23 = v22[0];
      }

      LODWORD(v15) = 1;
      LODWORD(v24) = 1;
    }

    DgnPrimArray<int>::copyArraySlice(a4, &v23, 0, v15);
    v22[0] = 0;
    v22[1] = 0;
    WordList::setPron(a1, a2, v22, *(a1 + 419), *(a1 + 420), 1u, 1);
    DgnPrimArray<unsigned int>::~DgnPrimArray(v22);
  }

  else if (v15)
  {
    v18 = *(a5 + 8);
    v19 = 4 * v15 - 4;
    do
    {
      v20 = *(v25 + v19);
      if (v18 == *(a5 + 12))
      {
        DgnPrimArray<unsigned int>::reallocElts(a5, 1, 1);
        v18 = *(a5 + 8);
      }

      *(*a5 + 4 * v18) = v20;
      v18 = *(a5 + 8) + 1;
      *(a5 + 8) = v18;
      v19 -= 4;
    }

    while (v19 != -4);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v23);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v25);
}

void sub_26273E1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a11);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a13);
  _Unwind_Resume(a1);
}

void WordList::invalidateId(WordList *this, unsigned int a2)
{
  *(*(this + 32) + 4 * a2) = 0xFFFFFF;
  *(*(this + 13) + a2) = 0;
  *(*(this + 25) + 4 * a2) = 0;
  *(*(this + 6) + 4 * a2) = 0;
  *(*(this + 4) + 2 * a2) = 0;
  if (*(this + 98) >= 2u)
  {
    *(*(this + 53) + a2) = *(this + 419);
  }

  if (*(this + 99) >= 2u)
  {
    *(*(this + 55) + a2) = *(this + 420);
  }

  v4 = a2 >> 5;
  *(*(this + 78) + 4 * v4) &= ~(1 << a2);
  *(*(this + 80) + 4 * v4) &= ~(1 << a2);
  v5 = *(this + 138);
  if (v5)
  {
    BitArray::clearRange((this + 576), v5 * a2, v5 * a2 + v5);
  }

  if (*(this + 132) > a2)
  {
    v6 = *(this + 65);
    if (*(v6 + 4 * a2) != -1)
    {
      *(v6 + 4 * a2) = -1;
      *(this + 512) = 1;
    }
  }

  *(*(this + 15) + 2 * a2) = 0;
  *(*(this + 17) + 2 * a2) = 0;
  *(*(this + 74) + 2 * a2) = -1;
  *(*(this + 76) + 2 * a2) = -1;
  *(*(this + 19) + 2 * a2) = 0;
  *(*(this + 21) + 2 * a2) = 0;
  *(*(this + 23) + 2 * a2) = 0;
}

uint64_t WordList::resetWordList(WordList *this)
{
  *(this + 47) = 0;
  *(this + 48) = 0;
  v2 = *(this + 32);
  if (v2)
  {
    MemChunkFree(v2, 0);
    *(this + 32) = 0;
  }

  *(this + 33) = 0;
  v3 = *(this + 13);
  if (v3)
  {
    MemChunkFree(v3, 0);
    *(this + 13) = 0;
  }

  *(this + 14) = 0;
  v4 = *(this + 25);
  if (v4)
  {
    MemChunkFree(v4, 0);
    *(this + 25) = 0;
  }

  *(this + 26) = 0;
  *(this + 54) = 0;
  v5 = *(this + 28);
  if (v5)
  {
    MemChunkFree(v5, 0);
    *(this + 28) = 0;
  }

  *(this + 29) = 0;
  v6 = *(this + 4);
  if (v6)
  {
    MemChunkFree(v6, 0);
    *(this + 4) = 0;
  }

  *(this + 5) = 0;
  v7 = *(this + 6);
  if (v7)
  {
    MemChunkFree(v7, 0);
    *(this + 6) = 0;
  }

  *(this + 7) = 0;
  *(this + 16) = 0;
  v8 = *(this + 9);
  if (v8)
  {
    MemChunkFree(v8, 0);
    *(this + 9) = 0;
  }

  *(this + 10) = 0;
  BitArray::releaseAll(this + 88);
  v9 = *(this + 74);
  if (v9)
  {
    MemChunkFree(v9, 0);
    *(this + 74) = 0;
  }

  *(this + 75) = 0;
  v10 = *(this + 76);
  if (v10)
  {
    MemChunkFree(v10, 0);
    *(this + 76) = 0;
  }

  *(this + 77) = 0;
  BitArray::releaseAll(this + 576);
  TagBitsAndStrings::reInit((this + 512));
  v11 = *(this + 15);
  if (v11)
  {
    MemChunkFree(v11, 0);
    *(this + 15) = 0;
  }

  *(this + 16) = 0;
  v12 = *(this + 17);
  if (v12)
  {
    MemChunkFree(v12, 0);
    *(this + 17) = 0;
  }

  *(this + 18) = 0;
  v13 = *(this + 19);
  if (v13)
  {
    MemChunkFree(v13, 0);
    *(this + 19) = 0;
  }

  *(this + 20) = 0;
  v14 = *(this + 21);
  if (v14)
  {
    MemChunkFree(v14, 0);
    *(this + 21) = 0;
  }

  *(this + 22) = 0;
  v15 = *(this + 23);
  if (v15)
  {
    MemChunkFree(v15, 0);
    *(this + 23) = 0;
  }

  *(this + 24) = 0;
  v16 = *(this + 30);
  if (v16)
  {
    MemChunkFree(v16, 0);
    *(this + 30) = 0;
  }

  *(this + 31) = 0;

  return PrefiltererWordIdPronCollArray::removeAll(this + 352);
}