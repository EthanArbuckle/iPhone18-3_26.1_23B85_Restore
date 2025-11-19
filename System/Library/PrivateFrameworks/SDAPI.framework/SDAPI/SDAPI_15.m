void sub_262639CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  DgnIArray<Utterance *>::~DgnIArray(va);
  WordLatticeLC::~WordLatticeLC(va1);
  _Unwind_Resume(a1);
}

unint64_t FstSearchLeafLatticeDurationBackoff::buildLinkSegmentation(unint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (a5)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = *(a3 + 20);
  if (*(a3 + 20))
  {
    v10 = result;
    v11 = 0;
    v12 = 0;
    v13 = *(*(result + 56) + 136);
    v14 = -1;
    do
    {
      v15 = *(*(v10 + 216) + 2 * (v11 + *(a3 + 16)));
      if (v15 != v14)
      {
        if (v12)
        {
          result = FstSearchLeafLatticeDurationBackoff::addLinkSegment(v10, a2, v14, a4, v12, v13);
          a4 += v12;
          v6 = *(a3 + 20);
          v14 = v15;
          v12 = 0;
        }

        else
        {
          v14 = *(*(v10 + 216) + 2 * (v11 + *(a3 + 16)));
        }
      }

      ++v12;
      v11 += v5;
    }

    while (v11 < v6);
    if (v12)
    {

      return FstSearchLeafLatticeDurationBackoff::addLinkSegment(v10, a2, v14, a4, v12, v13);
    }
  }

  return result;
}

unint64_t FstSearchLeafLatticeDurationBackoff::addLinkSegment(unint64_t result, uint64_t a2, unsigned int a3, int a4, int a5, __int16 a6)
{
  v11 = result;
  v12 = *(a2 + 8);
  if (v12 == *(a2 + 12))
  {
    result = DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(a2, 1, 1);
    v12 = *(a2 + 8);
  }

  v13 = *a2 + 28 * v12;
  *v13 = -1;
  *(v13 + 8) = 0xFFFF;
  *(v13 + 20) = -16;
  LODWORD(v13) = *(a2 + 8);
  *(a2 + 8) = v13 + 1;
  v14 = *a2 + 28 * v13;
  *(v14 + 16) = a3;
  *(v14 + 20) = a4;
  *(v14 + 24) = a5;
  *(v14 + 12) = *(*(v11 + 232) + 4 * a3);
  v15 = *(*(v11 + 248) + 2 * a3);
  *v14 = a6;
  *(v14 + 2) = a6;
  *(v14 + 4) = v15;
  *(v14 + 6) = a6;
  *(v14 + 8) = a6;
  *(v14 + 10) = 0;
  return result;
}

uint64_t FstSearchLeafLatticeDurationBackoff::beginTopRecSyncRecog(uint64_t this, VirtMap *a2)
{
  *(this + 112) = a2;
  if (*(this + 428) == 1)
  {
    return MiniFst::beginTopFstSyncRecog(this + 312);
  }

  return this;
}

uint64_t FstSearchLeafLatticeDurationBackoff::endTopRecSyncRecog(FstSearchLeafLatticeDurationBackoff *this)
{
  v1 = *(this + 14);
  *(this + 14) = 0;
  return v1;
}

uint64_t FstSearchLeafLatticeDurationBackoff::getBestExitScore(FstSearchLeafLatticeDurationBackoff *this)
{
  v21 = 0;
  v22 = 0;
  *(this + 75) = -1;
  v1 = *(this + 38);
  v2 = *(this + 68);
  if (v1 >= v2)
  {
    goto LABEL_19;
  }

  v4 = 0;
  v5 = 0;
  v6 = 40 * v1;
  do
  {
    v7 = *(this + 33) + v6;
    if (*(*(this + 5) + 160) == *(v7 + 4))
    {
      v8 = *(v7 + 8);
      if (v8 != -1 && *(*(this + 20) + 16 * v8 + 4) == *(this + 74))
      {
        if (v5 == HIDWORD(v22))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v21, 1, 1);
          v5 = v22;
          v4 = v21;
        }

        *(v4 + 4 * v5) = v8;
        v5 = v22 + 1;
        LODWORD(v22) = v22 + 1;
        v2 = *(this + 68);
      }
    }

    ++v1;
    v6 += 40;
  }

  while (v1 < v2);
  if (v5)
  {
    v9 = 0;
    v10 = *(this + 20);
    v11 = 1879048192;
    do
    {
      v12 = v10 + 16 * *(v4 + 4 * v9);
      v13 = *(v12 + 12);
      if (v13 >= 1)
      {
        v14 = *(v12 + 8);
        v15 = v13 + v14;
        v16 = *(this + 22);
        do
        {
          v17 = (v16 + 28 * v14);
          v18 = *v17;
          if (v11 > *v17)
          {
            *(this + 75) = v17[3];
            v11 = v18;
          }

          ++v14;
        }

        while (v14 < v15);
      }

      ++v9;
    }

    while (v9 != v5);
  }

  else
  {
LABEL_19:
    v11 = 1879048192;
  }

  if (v11 >= 20000)
  {
    v19 = 20000;
  }

  else
  {
    v19 = v11;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v21);
  return v19;
}

uint64_t FstSearchLeafLatticeDurationBackoff::getBestScoreMaybeUpdateFstNode(FstSearchLeafLatticeDurationBackoff *this, Node *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v2 = *(this + 68);
  if (v2)
  {
    v3 = *(this + 33);
    v4 = -1;
    v5 = 1879048192;
    do
    {
      if (v5 > *v3)
      {
        v4 = *(v3 + 12);
        v5 = *v3;
      }

      v3 += 40;
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

uint64_t FstSearchLeafLatticeDurationBackoff::seedTheory(FstSearchLeafLatticeDurationBackoff *this, int a2, int a3, int a4, SearchStats *a5)
{
  if (a4 == -2)
  {
    v9 = *(this + 42) - 1;
  }

  else
  {
    v11 = *(this + 46);
    if (v11 == *(this + 47))
    {
      DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 176, 1, 1);
      v11 = *(this + 46);
    }

    v12 = *(this + 22) + 28 * v11;
    *(v12 + 4) = xmmword_26287F890;
    *(v12 + 20) = 0;
    *(v12 + 24) = 0;
    *(this + 46) = v11 + 1;
    *v12 = a2;
    v13 = *(this + 42);
    if (v13 == *(this + 43))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 160, 1, 1);
      v13 = *(this + 42);
    }

    v14 = (*(this + 20) + 16 * v13);
    *v14 = a4;
    v14[1] = a3;
    v14[2] = v11;
    v14[3] = 1;
    v9 = *(this + 42);
    *(this + 42) = v9 + 1;
  }

  v15 = *(*(this + 5) + 144);
  v16 = *(this + 68);
  if (v16 == *(this + 69))
  {
    DgnArray<FstSearchLeafLatticeDurationBackoffActiveToken>::reallocElts(this + 264, 1, 1);
    v16 = *(this + 68);
  }

  v17 = *(this + 33) + 40 * v16;
  *v17 = a2;
  *(v17 + 4) = v15;
  *(v17 + 8) = v9;
  *(v17 + 12) = -2;
  *(v17 + 32) = 0;
  *(v17 + 16) = 0;
  *(v17 + 22) = 0;
  LODWORD(v17) = *(this + 68) + 1;
  *(this + 68) = v17;
  *(this + 38) = v17;

  return FstSearchLeafLatticeDurationBackoff::propagateNulls(this, 20000, a3, a5);
}

uint64_t FstSearchLeafLatticeDurationBackoff::expandEmbFstHistory(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 300);
  if (v8 != -1)
  {
    v9 = result;
    v10 = (*(result + 160) + 16 * v8);
    for (i = *(*(result + 176) + 28 * v10[2] + 12); i != -1; v8 = v16)
    {
      v16 = i;
      result = v9[5];
      if (*v10 == 16777209)
      {
        v17 = (*(result + 174) << 25) | 0xFFFFF9;
      }

      else
      {
        result = ArcGraph::lexToCWID(result, *v10, a3, a4, a5, a6, a7, a8);
        v17 = result;
      }

      v18 = *(a2 + 8);
      if (v18 == *(a2 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
        v18 = *(a2 + 8);
      }

      *(*a2 + 4 * v18) = v17;
      ++*(a2 + 8);
      v19 = *(a6 + 8);
      if (v19 == *(a6 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a6, 1, 1);
        v19 = *(a6 + 8);
      }

      *(*a6 + 4 * v19) = v8;
      ++*(a6 + 8);
      v20 = v9[20];
      v21 = *(v20 + 16 * v8 + 4);
      v22 = *(a3 + 8);
      if (v22 == *(a3 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
        v22 = *(a3 + 8);
        v20 = v9[20];
      }

      *(*a3 + 4 * v22) = v21;
      ++*(a3 + 8);
      v23 = *(v9[22] + 28 * *(v20 + 16 * v8 + 8));
      v24 = *(a5 + 8);
      if (v24 == *(a5 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a5, 1, 1);
        v24 = *(a5 + 8);
      }

      *(*a5 + 4 * v24) = v23;
      ++*(a5 + 8);
      v10 = (v9[20] + 16 * v16);
      i = *(v9[22] + 28 * v10[2] + 12);
    }

    *a4 = *v10;
  }

  return result;
}

void FstSearchLeafLatticeDurationBackoff::checkSearchParametersValidityForArcGraph(FstSearchLeafLatticeDurationBackoff *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 5);
  if (*(v8 + 178) == 1)
  {
    v9 = a3;
    ArcGraph::ensureHeaderValid(*(this + 5), "Header", a3, a4, a5, a6, a7, a8);
    if (*(v8 + 202) == 1 && *(v8 + 188) != *(this + 35))
    {
      v16 = *(v8 + 188);
      v19 = *(this + 35);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", v12, v13, "SearchInterWordSilencePenalty");
    }

    if (*(v8 + 192) != *(this + 34))
    {
      v17 = *(v8 + 192);
      v20 = *(this + 34);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", v12, v13, "SearchPerWordPenalty");
    }

    if (*(v8 + 196) != *(*(**VocMgr::smpVocMgr + 8 * *(*(this + 5) + 174)) + 608))
    {
      v18 = *(v8 + 196);
      v21 = *(*(**VocMgr::smpVocMgr + 8 * *(*(this + 5) + 174)) + 608);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", v12, v13, "Voc");
    }

    v14 = *(v8 + 203);
    if (v9)
    {
      if (a2)
      {
        if ((*(v8 + 203) & 1) == 0)
        {
          return;
        }
      }

      else if (*(v8 + 203))
      {
        return;
      }

      v23 = *(v8 + 203);
      v15 = "DropAlternateFrames";
      goto LABEL_18;
    }

    if (a2 & 1) != 0 || (*(v8 + 203))
    {
      v22 = *(v8 + 203);
      v15 = "NoDecimation";
LABEL_18:
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", v12, v13, v15);
    }
  }
}

void FstSearchLeafLatticeDurationBackoff::getHistory(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == -1)
  {
    *(a3 + 8) = 0;
  }

  else
  {
    v9 = a4;
    LODWORD(v11) = 0;
    v12 = a2;
    v13 = a2;
    do
    {
      v14 = (*(a1 + 160) + 16 * v13);
      if (*v14 == 16777209)
      {
        v11 = v11;
      }

      else
      {
        v11 = (v11 + 1);
      }

      v13 = *(*(a1 + 176) + 28 * v14[2] + 12);
    }

    while (v13 != -1);
    v15 = *(a3 + 12);
    if (v11 > v15)
    {
      DgnArray<PrefilterResultFrame>::reallocElts(a3, v11 - v15, 0);
    }

    v16 = *(a3 + 8);
    if (v16 < v11)
    {
      v17 = v11 - v16;
      v18 = *a3 + 32 * v16;
      do
      {
        *v18 = 0x3FFFFAFFFFFFLL;
        *(v18 + 8) = xmmword_26286CC40;
        *(v18 + 24) = 0x1F0000001FLL;
        v18 += 32;
        --v17;
      }

      while (v17);
    }

    *(a3 + 8) = v11;
    if (v11)
    {
      v19 = *(a1 + 160);
      v20 = -16;
      do
      {
        v21 = (v19 + 16 * v12);
        v22 = v21[1];
        if (*v21 == 16777209)
        {
          if (v9)
          {
            v20 = (v22 - 1) / 2 + 1;
          }

          else
          {
            v20 = v22 + 1;
          }
        }

        else
        {
          if (v9)
          {
            v22 = (v22 - 1) / 2;
          }

          ArcGraph::lexToCWIDAC(*(a1 + 40), *v21, a3, a4, a5, a6, a7, a8, v26);
          if (v20 == -16)
          {
            v23 = v22 + 1;
          }

          else
          {
            v23 = v20;
          }

          v24 = v26[1];
          v11 = (v11 - 1);
          v25 = *a3 + 32 * v11;
          *v25 = v26[0];
          *(v25 + 4) = v24;
          *(v25 + 8) = v27;
          *(v25 + 24) = v22 + 1;
          *(v25 + 28) = v23;
          v19 = *(a1 + 160);
          v20 = -16;
        }

        v12 = *(*(a1 + 176) + 28 * *(v19 + 16 * v12 + 8) + 12);
      }

      while (v12 != -1);
    }
  }
}

uint64_t FstSearchLeafLatticeDurationBackoff::makePartialResult(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 8);
  if (v8 >= 1)
  {
    v9 = 112 * v8 - 112;
    do
    {
      (**(*a2 + v9))(*a2 + v9);
      v9 -= 112;
    }

    while (v9 != -112);
  }

  *(a2 + 8) = 0;
  BestTrace = FstSearchLeafLatticeDurationBackoff::getBestTrace(a1, 0, 0, 1);
  if (BestTrace == -1)
  {
    return 1879048192;
  }

  v15 = BestTrace;
  FstSearchLeafLatticeDurationBackoff::getHistory(a1, BestTrace, a3, a4, v11, v12, v13, v14);
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  if (*(a3 + 8))
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = *a3 + v16;
      v20 = *(v19 + 28);
      WordLatticeLC::WordLatticeLC(v24, v19, v18, *(v19 + 24) - v18, v20 - *(v19 + 24), v25);
      v21 = *(a2 + 8);
      if (v21 == *(a2 + 12))
      {
        DgnArray<WordLatticeLC>::reallocElts(a2, 1, 1);
        LODWORD(v21) = *(a2 + 8);
      }

      WordLatticeLC::WordLatticeLC((*a2 + 112 * v21), v24);
      ++*(a2 + 8);
      WordLatticeLC::~WordLatticeLC(v24);
      ++v17;
      v16 += 32;
      v18 = v20;
    }

    while (v17 < *(a3 + 8));
  }

  v22 = a1[20] + 16 * v15;
  return (*(a1[22] + 28 * *(v22 + 8)) + *(a1[11] + 4 * *(v22 + 4)));
}

void FstSearchLeafLatticeDuration::FstSearchLeafLatticeDuration(FstSearchLeafLatticeDuration *this, const int *a2, const int *a3)
{
  SearchItf::SearchItf(this);
  *v5 = &unk_287524510;
  *(v5 + 136) = *a2;
  *(v5 + 140) = *a3;
  *(v5 + 176) = 0u;
  *(v5 + 192) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 248) = 0u;
  *(v5 + 232) = 0u;
  *(v5 + 216) = 0u;
  *(v5 + 264) = 0u;
  *(v5 + 280) = 0u;
  *(v5 + 296) = -1;
  *(v5 + 304) = 1879048192;
  *(v5 + 360) = 0u;
  *(v5 + 376) = 0u;
  *(v5 + 328) = 0u;
  *(v5 + 344) = 0u;
  *(v5 + 312) = 0u;
  *(v5 + 428) = 0;
}

uint64_t FstSearchLeafLatticeDuration::maybeInitDurModel(FstSearchLeafLatticeDuration *this, const PicMgr *a2, int a3)
{
  v15 = 0;
  v16 = 0;
  PicMgr::getPelDurIdMap(a2, &v15);
  if (a3 == 1)
  {
    v6 = 56;
  }

  else
  {
    v6 = 72;
  }

  v7 = v16;
  v8 = *(this + 51);
  if (v16 <= v8)
  {
    *(this + 50) = v16;
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
    DgnPrimArray<short>::reallocElts(this + 192, v16 - v8, 0);
    *(this + 50) = v7;
  }

  v9 = 0;
  v10 = v15;
  v11 = *(this + 24);
  do
  {
    if (!v9 || (v12 = *(v10 + 2 * v9), v12 == 0xFFFF))
    {
      v13 = 0;
    }

    else
    {
      v13 = *(*(a2 + v6) + 2 * v12);
    }

    *(v11 + 2 * v9++) = v13;
  }

  while (v7 != v9);
LABEL_13:
  *(this + 208) = *(a2 + 8);
  *(this + 53) = *(a2 + 3);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v15);
}

int64x2_t FstSearchLeafLatticeDuration::advanceDeltas(FstSearchLeafLatticeDuration *this, int a2, int a3, SearchStats *a4, int a5)
{
  v150[0] = a2;
  v148 = 0u;
  v149 = 0u;
  SnapTime::recordTime(&v148, 1, 0, 0, 0);
  v112 = (this + 304);
  *(this + 76) = a3;
  v7 = *(this + 2);
  v8 = *(this + 68);
  if (v8)
  {
    v9 = 0;
    *&v117[8] = 0;
    v107 = *(this + 53);
    v108 = *(this + 208);
    *v117 = *(this + 2);
    do
    {
      v10 = *(this + 33);
      v118 = v9;
      v11 = *(v10 + 40 * v9 + 4);
      v109 = v9;
      if (v8 <= v9 + 1)
      {
        v12 = v9 + 1;
      }

      else
      {
        v12 = v8;
      }

      while (v12 - 1 != v9)
      {
        if (*(v10 + 40 * ++v9 + 4) != v11)
        {
          goto LABEL_10;
        }
      }

      v9 = v12;
LABEL_10:
      v13 = *(this + 5);
      if (*(v13 + 160) != v11)
      {
        v14 = *(v13 + 140) <= v11 || v109 >= v9;
        v111 = v9;
        v110 = v11;
        if (!v14)
        {
          v15 = v9;
          v16 = v118;
          v125 = v9;
          do
          {
            v17 = *(this + 33) + 40 * v16;
            v18 = *v17;
            v19 = PelScoreCache::getScoreNoBackoff(*(this + 4), *(v17 + 12)) + v18;
            v20 = *(this + 33) + 40 * v16;
            v21 = *(v20 + 12);
            v22 = *(v20 + 32);
            v23 = *(v20 + 36);
            v24 = v108;
            if (v22 >= 1)
            {
              v24 = v108 - v22;
            }

            v25 = v24 & ((v22 - v108) >> 31);
            if (*(v20 + 12))
            {
              v23 += v25;
              v26 = v22 - v108;
            }

            else
            {
              v26 = *(v20 + 32);
            }

            if (*(v20 + 12))
            {
              v27 = v25;
            }

            else
            {
              v27 = 0;
            }

            v28 = v19 + v27;
            if (v19 + v27 - v7 <= *v112)
            {
              v29 = *(v20 + 4);
              v129 = *(v20 + 14);
              v131 = v23;
              v30 = *(v20 + 16);
              v31 = *(v20 + 24);
              v32 = *(v20 + 28);
              v127 = *(v20 + 30);
              if (*v112 > v28)
              {
                *v112 = v28;
              }

              v33 = *(this + 56);
              v34 = v33;
              if (v32)
              {
                v35 = *(this + 27);
                v36 = v32;
                v34 = *(this + 56);
                do
                {
                  v37 = *(v35 + 2 * v31);
                  if (v34 == *(this + 57))
                  {
                    DgnPrimArray<short>::reallocElts(this + 216, 1, 1);
                    v34 = *(this + 56);
                    v35 = *(this + 27);
                  }

                  *(v35 + 2 * v34++) = v37;
                  *(this + 56) = v34;
                  ++v31;
                  --v36;
                }

                while (v36);
              }

              if (v34 == *(this + 57))
              {
                DgnPrimArray<short>::reallocElts(this + 216, 1, 1);
                v34 = *(this + 56);
              }

              *(*(this + 27) + 2 * v34) = v21;
              *(this + 56) = v34 + 1;
              v38 = *(this + 72);
              v11 = v110;
              if (v38 == *(this + 73))
              {
                DgnArray<FstSearchLeafLatticeDurationBackoffActiveToken>::reallocElts(this + 280, 1, 1);
                LODWORD(v38) = *(this + 72);
              }

              v39 = *(this + 35) + 40 * v38;
              *v39 = v28;
              *(v39 + 4) = v29;
              *(v39 + 12) = v21;
              *(v39 + 14) = v129;
              *(v39 + 16) = v30;
              *(v39 + 24) = v33;
              *(v39 + 28) = v32 + 1;
              *(v39 + 30) = v127;
              *(v39 + 32) = v26;
              *(v39 + 36) = v131;
              v40 = *(this + 72) + 1;
              *(this + 72) = v40;
              v7 = *v117;
              if (v16 == v118)
              {
                v41 = *&v117[4];
                if (*&v117[8] == 2 * *(this + 4))
                {
                  v41 = v40;
                }

                *&v117[4] = v41;
                ++*&v117[8];
              }

              v9 = v111;
              v15 = v125;
            }

            else
            {
              v9 = v111;
              v11 = v110;
            }

            ++v16;
          }

          while (v16 != v15);
        }

        v42 = v9;
        v43 = v11;
        v113 = v9;
        do
        {
          v44 = *(this + 5);
          v45 = *(v44 + 152);
          v46 = *(v45 + 4 * v43);
          v47 = *(v44 + 140);
          v119 = *(v45 + 4 * (v43 + 1));
          if (v47 <= v119)
          {
            if (*(this + 428) == 1 && v47 <= v11)
            {
              v73 = (v46 & 0xFFFFF) <= 0xFFFF3 ? v46 & 0xFFFFF : v46 & 0xFFFFF | 0xF00000;
              if (v73 != 16777210)
              {
                DgnString::DgnString(&v145);
                ArcGraph::getNameAndHumanReadablePron(*(this + 5), v73, &v145, v74, v75, v76, v77, v78);
                v84 = &unk_26287F8B0;
                if (v145.i32[2])
                {
                  v84 = v145.i64[0];
                }

                v83 = (*(this + 33) + 40 * v118);
                xprintf("Seed from state %d score %d trace %d, %s\n", v79, v80, v81, v82, v11, *v83, v83[2], v84);
                v85 = (*(this + 33) + 40 * v118);
                MiniFst::seed(this + 312, *v85, v85[5], v85[2], v119);
                DgnString::~DgnString(&v145);
              }
            }
          }

          else
          {
            ScoreNoBackoff = PelScoreCache::getScoreNoBackoff(*(this + 4), *(v45 + 4 * v43));
            if (v109 < v9)
            {
              v114 = (v46 >> 20) & 0x3FF;
              v130 = ScoreNoBackoff + v114;
              v49 = v46;
              v50 = v107;
              if (!v46)
              {
                v50 = 0;
              }

              v128 = v50;
              v51 = v118;
              v116 = v43;
              v115 = v46;
              do
              {
                v52 = *(this + 33) + 40 * v51;
                v53 = v130 + *v52;
                v54 = *(*(this + 24) + 2 * v49);
                v55 = v54 & (v54 >> 31);
                if (!v49)
                {
                  v54 = 0;
                }

                v132 = v54;
                if (v49)
                {
                  v56 = v55;
                }

                else
                {
                  v56 = 0;
                }

                v57 = (*(v52 + 32) & ~(*(v52 + 32) >> 31)) - v56 + v128;
                v58 = v53 + v57;
                v59 = v53 + v57 - v7;
                v60 = *(this + 76);
                if (v59 <= v60)
                {
                  v126 = *(v52 + 14);
                  v121 = *(v52 + 16);
                  v122 = *(v52 + 8);
                  v61 = *(v52 + 24);
                  v62 = *(v52 + 28);
                  v123 = *(v52 + 30);
                  v124 = *(v52 + 20);
                  v120 = *(v52 + 36);
                  if (v60 > v58)
                  {
                    *v112 = v58;
                  }

                  v63 = *(this + 56);
                  v64 = v63;
                  if (v62)
                  {
                    v65 = *(this + 27);
                    v66 = v62;
                    v64 = *(this + 56);
                    do
                    {
                      v67 = *(v65 + 2 * v61);
                      if (v64 == *(this + 57))
                      {
                        DgnPrimArray<short>::reallocElts(this + 216, 1, 1);
                        v64 = *(this + 56);
                        v65 = *(this + 27);
                      }

                      *(v65 + 2 * v64++) = v67;
                      *(this + 56) = v64;
                      ++v61;
                      --v66;
                    }

                    while (v66);
                  }

                  if (v64 == *(this + 57))
                  {
                    DgnPrimArray<short>::reallocElts(this + 216, 1, 1);
                    v64 = *(this + 56);
                  }

                  v46 = v115;
                  *(*(this + 27) + 2 * v64) = v115;
                  *(this + 56) = v64 + 1;
                  v68 = *(this + 72);
                  v43 = v116;
                  if (v68 == *(this + 73))
                  {
                    DgnArray<FstSearchLeafLatticeDurationBackoffActiveToken>::reallocElts(this + 280, 1, 1);
                    LODWORD(v68) = *(this + 72);
                  }

                  v69 = *(this + 35) + 40 * v68;
                  *v69 = v58;
                  *(v69 + 4) = v119;
                  *(v69 + 8) = v122;
                  *(v69 + 12) = v115;
                  *(v69 + 14) = v126;
                  *(v69 + 16) = v121 + v114;
                  *(v69 + 20) = v124;
                  *(v69 + 24) = v63;
                  *(v69 + 28) = v62 + 1;
                  *(v69 + 30) = v123;
                  *(v69 + 32) = v132;
                  *(v69 + 36) = v57 + v120;
                  v70 = *(this + 72) + 1;
                  *(this + 72) = v70;
                  if (v51 == v118)
                  {
                    v71 = *&v117[4];
                    if (*&v117[8] == 2 * *(this + 4))
                    {
                      v71 = v70;
                    }

                    *&v117[4] = v71;
                    ++*&v117[8];
                  }

                  v7 = *v117;
                  v42 = v113;
                }

                ++v51;
              }

              while (v51 != v42);
            }
          }

          v43 += 2;
          v9 = v111;
          v11 = v110;
        }

        while ((v46 & 0x80000000) == 0);
        v8 = *(this + 68);
      }
    }

    while (v9 < v8);
    a3 = *v112;
  }

  else
  {
    *&v117[4] = 0;
  }

  v147 = a3 + v7;
  if (*(this + 428) == 1)
  {
    MiniFst::updateFrame(this + 312, v112, v7, a2);
  }

  v145 = 0u;
  v146 = 0u;
  SnapTime::recordTime(&v145, 1, 0, 0, 0);
  v145 = vsubq_s64(v145, v148);
  v146 = vsubq_s64(v146, v149);
  v86 = *(this + 13);
  v87 = vaddq_s64(v86[1], v146);
  *v86 = vaddq_s64(*v86, v145);
  v86[1] = v87;
  v143 = 0u;
  v144 = 0u;
  SnapTime::recordTime(&v143, 1, 0, 0, 0);
  if (*&v117[8] > (2 * *(this + 4)))
  {
    FstSearchLeafLatticeDurationBackoff::applyCutoffOnEmitting(this, *&v117[4], &v147);
  }

  v141 = 0u;
  v142 = 0u;
  SnapTime::recordTime(&v141, 1, 0, 0, 0);
  v88 = vsubq_s64(v141, v143);
  v89 = *(this + 13);
  v90 = v89[3];
  v91 = vaddq_s64(v89[2], v88);
  v141 = v88;
  v142 = vsubq_s64(v142, v144);
  v92 = vaddq_s64(v90, v142);
  v89[2] = v91;
  v89[3] = v92;
  v139 = 0u;
  v140 = 0u;
  SnapTime::recordTime(&v139, 1, 0, 0, 0);
  FstSearchLeafLatticeDurationBackoff::makeViterbiDecisionOnEmitting(this);
  v93 = *(this + 6);
  if (v93)
  {
    v94 = *(this + 68);
    if (v93 < v94)
    {
      mrec_nth_element<FstSearchLeafLatticeDurationBackoffcmpTok>(*(this + 33), v93, v94);
    }
  }

  v137 = 0u;
  v138 = 0u;
  SnapTime::recordTime(&v137, 1, 0, 0, 0);
  v95 = vsubq_s64(v137, v139);
  v96 = *(this + 13);
  v97 = v96[5];
  v98 = vaddq_s64(v96[4], v95);
  v137 = v95;
  v138 = vsubq_s64(v138, v140);
  v99 = vaddq_s64(v97, v138);
  v96[4] = v98;
  v96[5] = v99;
  v135 = 0u;
  v136 = 0u;
  SnapTime::recordTime(&v135, 1, 0, 0, 0);
  *(this + 72) = 0;
  v100 = *(this + 68);
  *(this + 38) = v100;
  if (a4)
  {
    *(a4 + 2) += v100;
    if (*(a4 + 2) > v100)
    {
      LODWORD(v100) = *(a4 + 2);
    }

    *(a4 + 2) = v100;
  }

  if (*(this + 428) == 1)
  {
    FstSearchLeafLatticeDuration::seedFromMiniFst(this, v150);
  }

  if (a5)
  {
    FstSearchLeafLatticeDurationBackoff::propagateNulls(this, v147, a2, a4);
  }

  *(this + 74) = a2;
  v133 = 0u;
  v134 = 0u;
  SnapTime::recordTime(&v133, 1, 0, 0, 0);
  v101 = *(this + 13);
  result = vaddq_s64(v101[6], vsubq_s64(v133, v135));
  v103 = vaddq_s64(v101[7], vsubq_s64(v134, v136));
  v101[6] = result;
  v101[7] = v103;
  return result;
}

uint64_t FstSearchLeafLatticeDuration::seedFromMiniFst(uint64_t this, int *a2)
{
  if (*(this + 428) == 1)
  {
    v2 = this;
    v3 = *(this + 336);
    if (v3 >= *(this + 20))
    {
      v3 = *(this + 20);
    }

    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = (*(v2 + 328) + 36 * v4);
        v6 = *v5;
        v43 = *v5;
        v44 = v5[5];
        v7 = v5[6];
        v41 = v5[4];
        v42 = v5[7];
        v8 = v5[2];
        v45 = 0;
        v46 = 0;
        v40 = v7;
        if ((v8 & 0x80000000) != 0)
        {
          LODWORD(v12) = -2 - v8;
        }

        else
        {
          v9 = 0;
          v10 = 0;
          do
          {
            if (v10 == HIDWORD(v46))
            {
              DgnPrimArray<unsigned int>::reallocElts(&v45, 1, 1);
              v10 = v46;
              v9 = v45;
            }

            *(v9 + 4 * v10) = v8;
            v11 = v46;
            v10 = v46 + 1;
            LODWORD(v46) = v46 + 1;
            v8 = *(*(v2 + 312) + 36 * v8 + 8);
          }

          while ((v8 & 0x80000000) == 0);
          LODWORD(v12) = -2 - v8;
          if ((v11 & 0x80000000) == 0)
          {
            do
            {
              v13 = *(v45 + 4 * v11);
              v14 = *(v2 + 312);
              v15 = (v14 + 36 * v13);
              v16 = *v15;
              v17 = *(v15 + 2);
              v18 = *(v2 + 184);
              if (v18 == *(v2 + 188))
              {
                DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(v2 + 176, 1, 1);
                v18 = *(v2 + 184);
                v14 = *(v2 + 312);
              }

              v19 = *(v2 + 176) + 28 * v18;
              *(v2 + 184) = v18 + 1;
              *v19 = v16;
              *(v19 + 4) = v17;
              *(v19 + 12) = v12;
              *(v19 + 16) = 0;
              *(v19 + 20) = 0;
              *(v19 + 24) = 0;
              v20 = *(v14 + 36 * v13 + 28);
              v21 = *(v2 + 168);
              if (v21 == *(v2 + 172))
              {
                DgnArray<DgnPrimArray<double>>::reallocElts(v2 + 160, 1, 1);
                v21 = *(v2 + 168);
              }

              v22 = *(v2 + 160);
              v23 = v22 + 16 * v21;
              *v23 = v20;
              *(v23 + 8) = v18;
              *(v23 + 12) = 0;
              v12 = *(v2 + 168);
              *(v2 + 168) = v12 + 1;
              *(v22 + 16 * v12 + 12) = 1;
            }

            while (v11-- > 0);
          }
        }

        v25 = *(v2 + 184);
        if (v25 == *(v2 + 188))
        {
          DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(v2 + 176, 1, 1);
          v25 = *(v2 + 184);
        }

        v26 = *(v2 + 176);
        *(v2 + 184) = v25 + 1;
        v27 = v26 + 28 * v25;
        *v27 = v43;
        *(v27 + 4) = v41;
        *(v27 + 8) = v44;
        *(v27 + 12) = v12;
        *(v27 + 16) = 0;
        *(v27 + 20) = 0;
        *(v27 + 24) = 0;
        if (v42 == 16777213)
        {
          v28 = (*(v2 + 160) + 16 * v12);
          v29 = 16777209;
          if (*v28 == 16777209)
          {
            v25 = v28[2];
          }
        }

        else
        {
          v29 = v42;
        }

        v30 = *a2;
        v31 = *(v2 + 168);
        if (v31 == *(v2 + 172))
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(v2 + 160, 1, 1);
          v31 = *(v2 + 168);
        }

        v32 = *(v2 + 160);
        v33 = (v32 + 16 * v31);
        *v33 = v29;
        v33[1] = v30;
        v33[2] = v25;
        v33[3] = 0;
        v34 = *(v2 + 168);
        *(v2 + 168) = v34 + 1;
        *(v32 + 16 * v34 + 12) = 1;
        v35 = *(v2 + 272);
        if (v35 == *(v2 + 276))
        {
          DgnArray<FstSearchLeafLatticeDurationBackoffActiveToken>::reallocElts(v2 + 264, 1, 1);
          LODWORD(v35) = *(v2 + 272);
        }

        v36 = *(v2 + 264) + 40 * v35;
        *v36 = v43;
        *(v36 + 4) = v40;
        *(v36 + 8) = v34;
        *(v36 + 12) = -2;
        *(v36 + 16) = v41;
        *(v36 + 20) = v44;
        *(v36 + 28) = 0;
        *(v36 + 32) = 0;
        ++*(v2 + 272);
        this = DgnPrimArray<unsigned int>::~DgnPrimArray(&v45);
        ++v4;
        LODWORD(v37) = *(v2 + 336);
        v38 = *(v2 + 20);
        if (v37 >= v38)
        {
          v37 = v38;
        }

        else
        {
          v37 = v37;
        }
      }

      while (v4 < v37);
    }
  }

  return this;
}

void sub_26263B780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t FstSearchLeafLatticeDuration::collectTraces(FstSearchLeafLatticeDuration *this)
{
  v2 = *(this + 42);
  v63 = 0;
  v62 = 0;
  if (v2)
  {
    v3 = MemChunkAlloc(4 * v2, 0);
    v4 = 0;
    v62 = v3;
    v63 = v2;
    do
    {
      *(v3 + v4++) = 0;
    }

    while (v4 < v63);
  }

  v5 = *(this + 68);
  if (v5)
  {
    v6 = 0;
    v7 = v62;
    v8 = (*(this + 33) + 8);
    do
    {
      v10 = *v8;
      v8 += 10;
      v9 = v10;
      if (v10 != -1)
      {
        *(v7 + v9) = 1;
        v5 = *(this + 68);
      }

      ++v6;
    }

    while (v6 < v5);
  }

  v11 = *(this + 42);
  if (!v11)
  {
    v60 = 0;
    v61 = 0;
LABEL_54:
    v23 = 0;
    *(this + 42) = 0;
    goto LABEL_55;
  }

  v12 = 0;
  v13 = v62;
  do
  {
    --v11;
    if (v12)
    {
      v12 = 1;
    }

    else if (*(*(this + 20) + 16 * v11) == 16777213)
    {
      v12 = 1;
      *(v13 + v11) = 1;
    }

    else
    {
      v12 = 0;
    }

    if (*(v13 + v11))
    {
      v14 = *(this + 20) + 16 * v11;
      v15 = *(v14 + 12);
      if (v15 >= 1)
      {
        v16 = *(v14 + 8);
        v17 = v15 + v16;
        v18 = *(this + 22);
        do
        {
          v19 = *(v18 + 28 * v16 + 12);
          if (v19 != -1)
          {
            *(v13 + v19) = 1;
          }

          ++v16;
        }

        while (v16 < v17);
      }
    }
  }

  while (v11);
  v20 = *(this + 42);
  v60 = 0;
  v61 = 0;
  if (!v20)
  {
    goto LABEL_54;
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  do
  {
    if (*(v62 + v21))
    {
      v24 = *(this + 20);
      if (v21 != v22)
      {
        *(v24 + 16 * v22) = *(v24 + 16 * v21);
        v24 = *(this + 20);
      }

      *(v24 + 16 * v22 + 8) = v23;
      v25 = v24 + 16 * v21;
      v26 = *(v25 + 8);
      v27 = (*(v25 + 12) + v26);
      if (v26 < v27)
      {
        v28 = *(this + 22);
        do
        {
          v29 = v23;
          if (v26 != v23)
          {
            v30 = (v28 + 28 * v26);
            v31 = (v28 + 28 * v23);
            v32 = *v30;
            *(v31 + 12) = *(v30 + 12);
            *v31 = v32;
            v28 = *(this + 22);
          }

          v33 = v28 + 28 * v23;
          v36 = *(v33 + 12);
          v34 = (v33 + 12);
          v35 = v36;
          if (v36 != -1)
          {
            *v34 = *(v62 + v35);
          }

          v37 = v61;
          if (*(v28 + 28 * v29 + 20))
          {
            v38 = 0;
            v39 = v61;
            do
            {
              v40 = *(*(this + 27) + 2 * (v38 + *(v28 + 28 * v29 + 16)));
              if (v39 == HIDWORD(v61))
              {
                DgnPrimArray<short>::reallocElts(&v60, 1, 1);
                v39 = v61;
                v28 = *(this + 22);
              }

              *(v60 + 2 * v39++) = v40;
              LODWORD(v61) = v39;
              ++v38;
            }

            while (v38 < *(v28 + 28 * v29 + 20));
          }

          *(v28 + 28 * v29 + 16) = v37;
          v23 = v29 + 1;
          ++v26;
        }

        while (v26 != v27);
      }

      *(v62 + v21) = v22++;
      v20 = *(this + 42);
    }

    ++v21;
  }

  while (v21 < v20);
  v41 = *(this + 43);
  if (v22 > v41)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 160, v22 - v41, 0);
    v20 = *(this + 42);
  }

  if (v20 < v22)
  {
    v42 = v22 - v20;
    v43 = (*(this + 20) + 16 * v20);
    do
    {
      *v43++ = xmmword_26287F860;
      --v42;
    }

    while (v42);
  }

  *(this + 42) = v22;
  v44 = *(this + 47);
  if (v23 > v44)
  {
    DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 176, v23 - v44, 0);
  }

  v45 = *(this + 46);
  if (v45 < v23)
  {
    v46 = v23 - v45;
    v47 = (*(this + 22) + 28 * v45 + 24);
    do
    {
      *(v47 - 6) = xmmword_26287F850;
      *(v47 - 2) = 0;
      *(v47 - 2) = 0;
      *v47 = 0;
      v47 += 7;
      --v46;
    }

    while (v46);
  }

LABEL_55:
  *(this + 46) = v23;
  v48 = *(this + 68);
  if (v48)
  {
    v49 = 0;
    v50 = v61;
    v51 = *(this + 33);
    do
    {
      if (*(v51 + 40 * v49 + 28))
      {
        v52 = 0;
        LODWORD(v53) = v50;
        do
        {
          v54 = *(*(this + 27) + 2 * (v52 + *(v51 + 40 * v49 + 24)));
          if (v53 == HIDWORD(v61))
          {
            DgnPrimArray<short>::reallocElts(&v60, 1, 1);
            LODWORD(v53) = v61;
            v51 = *(this + 33);
          }

          *(v60 + 2 * v53) = v54;
          v53 = (v53 + 1);
          LODWORD(v61) = v53;
          ++v52;
        }

        while (v52 < *(v51 + 40 * v49 + 28));
        v48 = *(this + 68);
      }

      else
      {
        v53 = v50;
      }

      *(v51 + 40 * v49++ + 24) = v50;
      v50 = v53;
    }

    while (v49 < v48);
  }

  else
  {
    LODWORD(v53) = v61;
  }

  DgnPrimArray<unsigned short>::copyArraySlice(this + 216, &v60, 0, v53);
  v55 = *(this + 68);
  if (v55)
  {
    v56 = v62;
    v57 = (*(this + 33) + 8);
    do
    {
      v58 = *v57;
      if (v58 != -1)
      {
        *v57 = *(v56 + v58);
      }

      v57 += 10;
      --v55;
    }

    while (v55);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v60);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v62);
}

void sub_26263BC1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a9);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a11);
  _Unwind_Resume(a1);
}

int64x2_t FstSearchLeafLatticeDuration::vite(int64x2_t **this, int a2, int a3, SearchStats *a4, int a5)
{
  FstSearchLeafLatticeDuration::advanceDeltas(this, a2, a3, a4, a5);
  v13 = 0u;
  v14 = 0u;
  SnapTime::recordTime(&v13, 1, 0, 0, 0);
  if (a2 >= 1)
  {
    v7 = *(this + 18);
    if (v7)
    {
      if (!(a2 % v7))
      {
        FstSearchLeafLatticeDuration::collectTraces(this);
      }
    }
  }

  v11 = 0u;
  v12 = 0u;
  SnapTime::recordTime(&v11, 1, 0, 0, 0);
  v8 = this[13];
  result = vaddq_s64(v8[14], vsubq_s64(v11, v13));
  v10 = vaddq_s64(v8[15], vsubq_s64(v12, v14));
  v8[14] = result;
  v8[15] = v10;
  return result;
}

_DWORD *FstSearchLeafLatticeDuration::reset(_DWORD *this)
{
  this[42] = 0;
  this[46] = 0;
  this[56] = 0;
  this[68] = 0;
  return this;
}

double FstSearchLeafLatticeDuration::doFrame(int64x2_t **this, int a2, int a3, SearchStats *a4, int a5)
{
  if (a3 >= 20000)
  {
    a3 = 20000;
  }

  *&result = FstSearchLeafLatticeDuration::vite(this, a2, a3, a4, a5).u64[0];
  return result;
}

uint64_t FstSearchLeafLatticeDuration::beginTopRecPassSyncRecog(FstSearchLeafLatticeDuration *this, PelScorer *a2, const ArcGraph *a3)
{
  result = SearchItf::beginTopRecPassSyncRecogBase(this, a2);
  if (a3)
  {
    MiniFst::init(this + 312, a3, *(this + 4));
    result = ArcGraph::findBackoffState(*(this + 5));
    *(this + 106) = result;
    *(this + 428) = 1;
  }

  return result;
}

uint64_t FstSearchLeafLatticeDuration::endTopRecPassSyncRecog(FstSearchLeafLatticeDuration *this)
{
  v10 = 0u;
  v11 = 0u;
  SnapTime::recordTime(&v10, 1, 0, 0, 0);
  v8 = 0u;
  v9 = 0u;
  SnapTime::recordTime(&v8, 1, 0, 0, 0);
  v2 = vsubq_s64(v8, v10);
  v3 = *(this + 13);
  v4 = v3[13];
  v5 = vaddq_s64(v3[12], v2);
  v8 = v2;
  v9 = vsubq_s64(v9, v11);
  v6 = vaddq_s64(v4, v9);
  v3[12] = v5;
  v3[13] = v6;
  *(this + 76) = 1879048192;
  return SearchItf::endTopRecPassSyncRecogBase(this);
}

void FstSearchLeafLatticeDuration::printSize(FstSearchLeafLatticeDuration *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2950, &v126);
  if (v127)
  {
    v15 = v126;
  }

  else
  {
    v15 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, v12, v13, v14, a3, &unk_26287F8B0, a3, &unk_26287F8B0, v15);
  DgnString::~DgnString(&v126);
  if (a2 != -1)
  {
    xlprintf("%d ", v16, v17, v18, v19, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v16, v17, v18, v19, a3, &unk_26287F8B0);
  v20 = (a3 + 1);
  v21 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2952, &v126);
  if (v127)
  {
    v26 = v126;
  }

  else
  {
    v26 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v22, v23, v24, v25, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v26, 4, 4, 0);
  DgnString::~DgnString(&v126);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2954, &v126);
  if (v127)
  {
    v31 = v126;
  }

  else
  {
    v31 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v27, v28, v29, v30, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v31, 4, 4, 0);
  DgnString::~DgnString(&v126);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2955, &v126);
  if (v127)
  {
    v36 = v126;
  }

  else
  {
    v36 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, v33, v34, v35, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v36, 4, 4, 0);
  v122 = a2;
  DgnString::~DgnString(&v126);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2956, &v126);
  if (v127)
  {
    v41 = v126;
  }

  else
  {
    v41 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, v38, v39, v40, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v41, 4, 4, 0);
  DgnString::~DgnString(&v126);
  *a4 += 4;
  *a5 += 4;
  v42 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v42 = 12;
  }

  v43 = *(this + 42);
  v44 = 16 * v43;
  if (v43 <= 0)
  {
    v44 = 0;
  }

  v45 = v44 + v42;
  v46 = v44 + v42 + 16 * (*(this + 43) - v43);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2957, &v126);
  if (v127)
  {
    v51 = v126;
  }

  else
  {
    v51 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v47, v48, v49, v50, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v51, v46, v45, 0);
  DgnString::~DgnString(&v126);
  *a4 += v46;
  *a5 += v45;
  v52 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v52 = 12;
  }

  v53 = *(this + 46);
  v54 = 26 * v53;
  if (v53 <= 0)
  {
    v54 = 0;
  }

  v55 = v54 + v52;
  v56 = v54 + v52 + 26 * (*(this + 47) - v53);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2959, &v126);
  if (v127)
  {
    v61 = v126;
  }

  else
  {
    v61 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v57, v58, v59, v60, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v61, v56, v55, 0);
  v121 = a3;
  DgnString::~DgnString(&v126);
  *a4 += v56;
  *a5 += v55;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v62 = 12;
  }

  else
  {
    v62 = 16;
  }

  v63 = *(this + 56);
  v64 = *(this + 57);
  if (v64 >= v63)
  {
    v65 = 0;
    if (v63 > 0)
    {
      v62 += 2 * (v63 - 1) + 2;
    }

    v66 = v62 + 2 * (v64 - v63);
  }

  else
  {
    v65 = 2 * v63;
    v66 = v62;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2961, &v126);
  if (v127)
  {
    v71 = v126;
  }

  else
  {
    v71 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v67, v68, v69, v70, v20, &unk_26287F8B0, v21, v21, v71, v66, v62, v65);
  DgnString::~DgnString(&v126);
  *a4 += v66;
  *a5 += v62;
  *a6 += v65;
  v72 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v72 = 12;
  }

  v73 = *(this + 68);
  v74 = 36 * v73;
  if (v73 <= 0)
  {
    v74 = 0;
  }

  v75 = v74 + v72;
  v76 = v74 + v72 + 36 * (*(this + 69) - v73);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2964, &v126);
  if (v127)
  {
    v81 = v126;
  }

  else
  {
    v81 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v77, v78, v79, v80, v20, &unk_26287F8B0, v21, v21, v81, v76, v75, 0);
  DgnString::~DgnString(&v126);
  *a4 += v76;
  *a5 += v75;
  v82 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v82 = 12;
  }

  v83 = *(this + 72);
  v84 = 36 * v83;
  if (v83 <= 0)
  {
    v84 = 0;
  }

  v85 = v84 + v82;
  v86 = v84 + v82 + 36 * (*(this + 73) - v83);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2966, &v126);
  if (v127)
  {
    v91 = v126;
  }

  else
  {
    v91 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v87, v88, v89, v90, v20, &unk_26287F8B0, v21, v21, v91, v86, v85, 0);
  DgnString::~DgnString(&v126);
  *a4 += v86;
  *a5 += v85;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2968, &v126);
  if (v127)
  {
    v96 = v126;
  }

  else
  {
    v96 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v92, v93, v94, v95, v20, &unk_26287F8B0, v21, v21, v96, 4, 4, 0);
  DgnString::~DgnString(&v126);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2970, &v126);
  if (v127)
  {
    v101 = v126;
  }

  else
  {
    v101 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v97, v98, v99, v100, v20, &unk_26287F8B0, v21, v21, v101, 4, 4, 0);
  DgnString::~DgnString(&v126);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2972, &v126);
  if (v127)
  {
    v106 = v126;
  }

  else
  {
    v106 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v102, v103, v104, v105, v20, &unk_26287F8B0, v21, v21, v106, 4, 4, 0);
  DgnString::~DgnString(&v126);
  *a4 += 4;
  *a5 += 4;
  v107 = sizeObject(this + 312, 0);
  v108 = sizeObject(this + 312, 1);
  v109 = sizeObject(this + 312, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2974, &v126);
  if (v127)
  {
    v114 = v126;
  }

  else
  {
    v114 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v110, v111, v112, v113, v20, &unk_26287F8B0, v21, v21, v114, v107, v108, v109);
  DgnString::~DgnString(&v126);
  *a4 += v107;
  *a5 += v108;
  *a6 += v109;
  v124 = 0;
  v125 = 0;
  SearchItf::printSize(this, v122, v20, &v125, &v124, &v124);
  *a4 += v125;
  *a5 += v124;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2985, &v126);
  if (v127)
  {
    v119 = v126;
  }

  else
  {
    v119 = &unk_26287F8B0;
  }

  v120 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v115, v116, v117, v118, v121, &unk_26287F8B0, (35 - v121), (35 - v121), v119, *a4, *a5, *a6);
  DgnString::~DgnString(&v126);
}

BOOL FstSearchLeafLatticeDuration::findBestPath(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v8 = *(a1 + 168);
  if (v8)
  {
    v9 = *(a3 + 8) == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    *a3 = MemChunkAlloc(*(a1 + 168), 0);
    *(a3 + 8) = v8;
  }

  if (v8)
  {
    v10 = *(a2 + 8) == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    *a2 = MemChunkAlloc(v8, 0);
    *(a2 + 8) = v8;
LABEL_14:
    v11 = 0;
    do
    {
      *(*a2 + v11) = 0;
      *(*a3 + v11++) = 0;
    }

    while (v8 != v11);
    goto LABEL_16;
  }

  if (v8)
  {
    goto LABEL_14;
  }

LABEL_16:
  BestTrace = FstSearchLeafLatticeDurationBackoff::getBestTrace(a1, a2, a3, 0);
  *a4 = 1879048192;
  if (BestTrace == -1)
  {
    return 0;
  }

  v13 = *(a1 + 160) + 16 * BestTrace;
  LODWORD(v13) = *(*(a1 + 176) + 28 * *(v13 + 8)) + *(*(a1 + 88) + 4 * *(v13 + 4));
  *a4 = v13;
  return v13 != 1879048192;
}

uint64_t FstSearchLeafLatticeDuration::buildWordLattice(unint64_t a1, unint64_t a2, void *a3, void *a4, unsigned __int8 a5)
{
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v25 = 0;
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v24, *(a1 + 168));
  v8 = MemChunkAlloc(0x28uLL, 0);
  HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::HashProbeKEV(v8, 0, 128);
  v8[4] = a2;
  FstSearchLeafLatticeDurationBackoff::createLatticeNodes(a1, &v27, &v25, a2, v24, a3, a4);
  v21 = *(a1 + 168);
  if (v21)
  {
    v9 = 0;
    v10 = v26;
    do
    {
      if (*(*a3 + v9))
      {
        v11 = (*(a1 + 160) + 16 * v9);
        if (*v11 != 16777209 && v11[3] >= 1)
        {
          v12 = v11[2];
          do
          {
            v13 = *(a1 + 176) + 28 * v12;
            v14 = *(v13 + 12);
            if (v14 == -1)
            {
              v15 = 0;
            }

            else
            {
              v15 = (v10 - *(v27 + v14));
            }

            v16 = *(v25 + 4 * v15);
            if (*(*a4 + v9) == 1)
            {
              FstSearchLeafLatticeDuration::createLatticeLink(a1, v9, v13, 0xFFFFFFFFLL, v16, *(v25 + 4 * (v10 - *(v27 + v9))), a2, v8, a5);
            }

            v17 = v24[0] + 16 * v9;
            if (*(v17 + 8))
            {
              v18 = 0;
              do
              {
                v19 = *(*v17 + 4 * v18);
                FstSearchLeafLatticeDuration::createLatticeLink(a1, v9, v13, v19, v16, *(v25 + 4 * (v10 - *(v27 + v19))), a2, v8, a5);
                ++v18;
                v17 = v24[0] + 16 * v9;
              }

              while (v18 < *(v17 + 8));
            }

            ++v12;
          }

          while (v12 < *(*(a1 + 160) + 16 * v9 + 12) + *(*(a1 + 160) + 16 * v9 + 8));
        }
      }

      ++v9;
    }

    while (v9 != v21);
  }

  DgnDelete<HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>>(v8);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v24);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v25);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v27);
}

void sub_26263C9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void FstSearchLeafLatticeDuration::createLatticeLink(unint64_t a1, unsigned int a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v38 = a6;
  v11 = a5;
  v12 = a4;
  v16 = *(a1 + 160);
  if ((a4 & 0x80000000) != 0 || (v17 = v16 + 16 * a4, v18 = *(v17 + 12), v18 < 1))
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
      if (*(v21 + 28 * v19 + 12) == a2)
      {
        v22 = (v21 + 28 * v19);
      }

      else
      {
        v22 = 0;
      }

      ++v19;
    }

    while (v19 < v20 && !v22);
  }

  ArcGraph::lexToCWIDAC(*(a1 + 40), *(v16 + 16 * a2), a3, a4, a5, a6, a7, a8, v48);
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

  if (v48[0] >> 25 == 126)
  {
    v25 = 0;
    v26 = v23;
    if ((v12 & 0x80000000) != 0)
    {
LABEL_16:
      v27 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v25 = *(a1 + 136);
    v26 = v23 - v25;
    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_16;
    }
  }

  v27 = *(a1 + 140);
  v26 -= v27;
LABEL_19:
  v28 = a3[6];
  if (v22)
  {
    v28 += v22[6];
  }

  v42 = v26;
  v43 = 0;
  v44 = v25;
  v45 = v24 - (v23 + v28);
  v46 = v28;
  v47 = v27;
  v29 = a3[3];
  v30 = *(a1 + 160);
  if (v29 == -1)
  {
    v32 = 0;
    if (a9)
    {
LABEL_25:
      v33 = (*(v30 + 16 * a2 + 4) - 1) / 2;
      v34 = v33 + 1;
      v35 = v33 + 1 - v32;
      if ((v12 & 0x80000000) == 0)
      {
        v36 = (*(v30 + 16 * v12 + 4) - 1) / 2;
LABEL_30:
        v37 = v36 - v33;
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v31 = *(v30 + 16 * v29 + 4);
    if (a9)
    {
      v32 = (v31 - 1) / 2 + 1;
      goto LABEL_25;
    }

    v32 = v31 + 1;
  }

  v33 = *(v30 + 16 * a2 + 4);
  v34 = v33 + 1;
  v35 = v33 + 1 - v32;
  if ((v12 & 0x80000000) == 0)
  {
    v36 = *(v30 + 16 * v12 + 4);
    goto LABEL_30;
  }

LABEL_31:
  v37 = 0;
LABEL_32:
  WordLatticeLC::WordLatticeLC(v40, v48, v32, v35, v37, &v42);
  v39[0] = 0;
  v39[1] = 0;
  FstSearchLeafLatticeDurationBackoff::buildLinkSegmentation(a1, v39, a3, v32, a9);
  if (v22)
  {
    FstSearchLeafLatticeDurationBackoff::buildLinkSegmentation(a1, v39, v22, v34, a9);
  }

  v41 = WordLattice::findOrAddLinkSegSeqId(a7, v39, a8);
  Lattice<WordLatticeLC>::maybeCreateAndConnectLinkAvoidMultiLinks(a7, v11, v38, v40);
  DgnIArray<Utterance *>::~DgnIArray(v39);
  WordLatticeLC::~WordLatticeLC(v40);
}

void sub_26263CC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  DgnIArray<Utterance *>::~DgnIArray(va);
  WordLatticeLC::~WordLatticeLC(va1);
  _Unwind_Resume(a1);
}

uint64_t FstSearchLeafLatticeDuration::beginTopRecSyncRecog(uint64_t this, VirtMap *a2)
{
  *(this + 112) = a2;
  if (*(this + 428) == 1)
  {
    return MiniFst::beginTopFstSyncRecog(this + 312);
  }

  return this;
}

uint64_t FstSearchLeafLatticeDuration::endTopRecSyncRecog(FstSearchLeafLatticeDuration *this)
{
  v1 = *(this + 14);
  *(this + 14) = 0;
  return v1;
}

uint64_t FstSearchLeafLatticeDuration::getBestExitScore(FstSearchLeafLatticeDuration *this)
{
  v21 = 0;
  v22 = 0;
  *(this + 75) = -1;
  v1 = *(this + 38);
  v2 = *(this + 68);
  if (v1 >= v2)
  {
    goto LABEL_19;
  }

  v4 = 0;
  v5 = 0;
  v6 = 40 * v1;
  do
  {
    v7 = *(this + 33) + v6;
    if (*(*(this + 5) + 160) == *(v7 + 4))
    {
      v8 = *(v7 + 8);
      if (v8 != -1 && *(*(this + 20) + 16 * v8 + 4) == *(this + 74))
      {
        if (v5 == HIDWORD(v22))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v21, 1, 1);
          v5 = v22;
          v4 = v21;
        }

        *(v4 + 4 * v5) = v8;
        v5 = v22 + 1;
        LODWORD(v22) = v22 + 1;
        v2 = *(this + 68);
      }
    }

    ++v1;
    v6 += 40;
  }

  while (v1 < v2);
  if (v5)
  {
    v9 = 0;
    v10 = *(this + 20);
    v11 = 1879048192;
    do
    {
      v12 = v10 + 16 * *(v4 + 4 * v9);
      v13 = *(v12 + 12);
      if (v13 >= 1)
      {
        v14 = *(v12 + 8);
        v15 = v13 + v14;
        v16 = *(this + 22);
        do
        {
          v17 = (v16 + 28 * v14);
          v18 = *v17;
          if (v11 > *v17)
          {
            *(this + 75) = v17[3];
            v11 = v18;
          }

          ++v14;
        }

        while (v14 < v15);
      }

      ++v9;
    }

    while (v9 != v5);
  }

  else
  {
LABEL_19:
    v11 = 1879048192;
  }

  if (v11 >= 20000)
  {
    v19 = 20000;
  }

  else
  {
    v19 = v11;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v21);
  return v19;
}

uint64_t FstSearchLeafLatticeDuration::getBestScoreMaybeUpdateFstNode(FstSearchLeafLatticeDuration *this, Node *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v2 = *(this + 68);
  if (v2)
  {
    v3 = *(this + 33);
    v4 = -1;
    v5 = 1879048192;
    do
    {
      if (v5 > *v3)
      {
        v4 = *(v3 + 12);
        v5 = *v3;
      }

      v3 += 40;
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

uint64_t FstSearchLeafLatticeDuration::seedTheory(FstSearchLeafLatticeDuration *this, int a2, int a3, int a4, SearchStats *a5)
{
  if (a4 == -2)
  {
    v9 = *(this + 42) - 1;
  }

  else
  {
    v11 = *(this + 46);
    if (v11 == *(this + 47))
    {
      DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 176, 1, 1);
      v11 = *(this + 46);
    }

    v12 = *(this + 22) + 28 * v11;
    *(v12 + 4) = xmmword_26287F890;
    *(v12 + 20) = 0;
    *(v12 + 24) = 0;
    *(this + 46) = v11 + 1;
    *v12 = a2;
    v13 = *(this + 42);
    if (v13 == *(this + 43))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 160, 1, 1);
      v13 = *(this + 42);
    }

    v14 = (*(this + 20) + 16 * v13);
    *v14 = a4;
    v14[1] = a3;
    v14[2] = v11;
    v14[3] = 1;
    v9 = *(this + 42);
    *(this + 42) = v9 + 1;
  }

  v15 = *(*(this + 5) + 144);
  v16 = *(this + 68);
  if (v16 == *(this + 69))
  {
    DgnArray<FstSearchLeafLatticeDurationBackoffActiveToken>::reallocElts(this + 264, 1, 1);
    v16 = *(this + 68);
  }

  v17 = *(this + 33) + 40 * v16;
  *v17 = a2;
  *(v17 + 4) = v15;
  *(v17 + 8) = v9;
  *(v17 + 12) = -2;
  *(v17 + 32) = 0;
  *(v17 + 16) = 0;
  *(v17 + 22) = 0;
  LODWORD(v17) = *(this + 68) + 1;
  *(this + 68) = v17;
  *(this + 38) = v17;

  return FstSearchLeafLatticeDurationBackoff::propagateNulls(this, 20000, a3, a5);
}

uint64_t FstSearchLeafLatticeDuration::expandEmbFstHistory(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 300);
  if (v8 != -1)
  {
    v9 = result;
    v10 = (*(result + 160) + 16 * v8);
    for (i = *(*(result + 176) + 28 * v10[2] + 12); i != -1; v8 = v16)
    {
      v16 = i;
      result = v9[5];
      if (*v10 == 16777209)
      {
        v17 = (*(result + 174) << 25) | 0xFFFFF9;
      }

      else
      {
        result = ArcGraph::lexToCWID(result, *v10, a3, a4, a5, a6, a7, a8);
        v17 = result;
      }

      v18 = *(a2 + 8);
      if (v18 == *(a2 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
        v18 = *(a2 + 8);
      }

      *(*a2 + 4 * v18) = v17;
      ++*(a2 + 8);
      v19 = *(a6 + 8);
      if (v19 == *(a6 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a6, 1, 1);
        v19 = *(a6 + 8);
      }

      *(*a6 + 4 * v19) = v8;
      ++*(a6 + 8);
      v20 = v9[20];
      v21 = *(v20 + 16 * v8 + 4);
      v22 = *(a3 + 8);
      if (v22 == *(a3 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
        v22 = *(a3 + 8);
        v20 = v9[20];
      }

      *(*a3 + 4 * v22) = v21;
      ++*(a3 + 8);
      v23 = *(v9[22] + 28 * *(v20 + 16 * v8 + 8));
      v24 = *(a5 + 8);
      if (v24 == *(a5 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a5, 1, 1);
        v24 = *(a5 + 8);
      }

      *(*a5 + 4 * v24) = v23;
      ++*(a5 + 8);
      v10 = (v9[20] + 16 * v16);
      i = *(v9[22] + 28 * v10[2] + 12);
    }

    *a4 = *v10;
  }

  return result;
}

void FstSearchLeafLatticeDuration::checkSearchParametersValidityForArcGraph(FstSearchLeafLatticeDuration *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 5);
  if (*(v8 + 178) == 1)
  {
    v9 = a3;
    ArcGraph::ensureHeaderValid(*(this + 5), "Header", a3, a4, a5, a6, a7, a8);
    if (*(v8 + 202) == 1 && *(v8 + 188) != *(this + 35))
    {
      v16 = *(v8 + 188);
      v19 = *(this + 35);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", v12, v13, "SearchInterWordSilencePenalty");
    }

    if (*(v8 + 192) != *(this + 34))
    {
      v17 = *(v8 + 192);
      v20 = *(this + 34);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", v12, v13, "SearchPerWordPenalty");
    }

    if (*(v8 + 196) != *(*(**VocMgr::smpVocMgr + 8 * *(*(this + 5) + 174)) + 608))
    {
      v18 = *(v8 + 196);
      v21 = *(*(**VocMgr::smpVocMgr + 8 * *(*(this + 5) + 174)) + 608);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", v12, v13, "Voc");
    }

    v14 = *(v8 + 203);
    if (v9)
    {
      if (a2)
      {
        if ((*(v8 + 203) & 1) == 0)
        {
          return;
        }
      }

      else if (*(v8 + 203))
      {
        return;
      }

      v23 = *(v8 + 203);
      v15 = "DropAlternateFrames";
      goto LABEL_18;
    }

    if (a2 & 1) != 0 || (*(v8 + 203))
    {
      v22 = *(v8 + 203);
      v15 = "NoDecimation";
LABEL_18:
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", v12, v13, v15);
    }
  }
}

uint64_t FstSearchLeafLatticeDuration::makePartialResult(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 8);
  if (v8 >= 1)
  {
    v9 = 112 * v8 - 112;
    do
    {
      (**(*a2 + v9))(*a2 + v9);
      v9 -= 112;
    }

    while (v9 != -112);
  }

  *(a2 + 8) = 0;
  BestTrace = FstSearchLeafLatticeDurationBackoff::getBestTrace(a1, 0, 0, 1);
  if (BestTrace == -1)
  {
    return 1879048192;
  }

  v15 = BestTrace;
  FstSearchLeafLatticeDurationBackoff::getHistory(a1, BestTrace, a3, a4, v11, v12, v13, v14);
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  if (*(a3 + 8))
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = *a3 + v16;
      v20 = *(v19 + 28);
      WordLatticeLC::WordLatticeLC(v24, v19, v18, *(v19 + 24) - v18, v20 - *(v19 + 24), v25);
      v21 = *(a2 + 8);
      if (v21 == *(a2 + 12))
      {
        DgnArray<WordLatticeLC>::reallocElts(a2, 1, 1);
        LODWORD(v21) = *(a2 + 8);
      }

      WordLatticeLC::WordLatticeLC((*a2 + 112 * v21), v24);
      ++*(a2 + 8);
      WordLatticeLC::~WordLatticeLC(v24);
      ++v17;
      v16 += 32;
      v18 = v20;
    }

    while (v17 < *(a3 + 8));
  }

  v22 = a1[20] + 16 * v15;
  return (*(a1[22] + 28 * *(v22 + 8)) + *(a1[11] + 4 * *(v22 + 4)));
}

int64x2_t FstSearchLeafLatticeBackoff::advanceDeltas(FstSearchLeafLatticeBackoff *this, int a2, int a3, SearchStats *a4, int a5)
{
  v128[0] = a2;
  v126 = 0u;
  v127 = 0u;
  SnapTime::recordTime(&v126, 1, 0, 0, 0);
  v99 = (this + 280);
  *(this + 70) = a3;
  v7 = *(this + 2);
  v8 = *(this + 62);
  if (v8)
  {
    LODWORD(v9) = 0;
    *&v103[8] = 0;
    *v103 = *(this + 2);
    do
    {
      v10 = *(this + 30);
      v11 = v9;
      v98 = *(v10 + 32 * v9 + 4);
      if (v8 <= v9 + 1)
      {
        v12 = v9 + 1;
      }

      else
      {
        v12 = v8;
      }

      v96 = v9;
      while (v12 - 1 != v9)
      {
        v9 = (v9 + 1);
        if (*(v10 + 32 * v9 + 4) != v98)
        {
          goto LABEL_11;
        }
      }

      LODWORD(v9) = v12;
LABEL_11:
      v13 = *(this + 5);
      if (*(v13 + 160) != v98)
      {
        v14 = *(v13 + 140) <= v98 || v96 >= v9;
        v97 = v9;
        v104 = v11;
        if (!v14)
        {
          v15 = v9;
          v16 = v11;
          do
          {
            if (*(this + 19) + *(this + 70) >= 5000)
            {
              v17 = 5000;
            }

            else
            {
              v17 = *(this + 19) + *(this + 70);
            }

            ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(this + 4), *(*(this + 30) + 32 * v16 + 12), *(*(this + 30) + 32 * v16), v17);
            v19 = *(this + 70);
            if (ScoreAllowBackoff_updateNodeInSequence - v7 <= v19)
            {
              v20 = ScoreAllowBackoff_updateNodeInSequence;
              v21 = v15;
              if (v19 > ScoreAllowBackoff_updateNodeInSequence)
              {
                *v99 = ScoreAllowBackoff_updateNodeInSequence;
              }

              v22 = *(this + 30) + 32 * v16;
              v23 = *(v22 + 4);
              v24 = *(v22 + 12);
              v109 = *(v22 + 14);
              v25 = *(v22 + 16);
              v26 = *(v22 + 28);
              v27 = *(this + 50);
              v28 = v27;
              if (*(v22 + 28))
              {
                v29 = *(v22 + 24);
                v30 = *(this + 24);
                v31 = v26;
                v28 = *(this + 50);
                do
                {
                  v32 = *(v30 + 2 * v29);
                  if (v28 == *(this + 51))
                  {
                    DgnPrimArray<short>::reallocElts(this + 192, 1, 1);
                    v28 = *(this + 50);
                    v30 = *(this + 24);
                  }

                  *(v30 + 2 * v28++) = v32;
                  *(this + 50) = v28;
                  ++v29;
                  --v31;
                }

                while (v31);
              }

              if (v28 == *(this + 51))
              {
                DgnPrimArray<short>::reallocElts(this + 192, 1, 1);
                v28 = *(this + 50);
              }

              *(*(this + 24) + 2 * v28) = v24;
              *(this + 50) = v28 + 1;
              v33 = *(this + 66);
              LODWORD(v9) = v97;
              v15 = v21;
              if (v33 == *(this + 67))
              {
                DgnArray<PrefilterResultFrame>::reallocElts(this + 256, 1, 1);
                v33 = *(this + 66);
              }

              v34 = *(this + 32) + 32 * v33;
              *v34 = v20;
              *(v34 + 4) = v23;
              *(v34 + 12) = v24;
              *(v34 + 14) = v109;
              *(v34 + 16) = v25;
              *(v34 + 24) = v27;
              *(v34 + 28) = v26 + 1;
              v35 = *(this + 66) + 1;
              *(this + 66) = v35;
              v11 = v104;
              if (v16 == v104)
              {
                v36 = *&v103[4];
                if (*&v103[8] == 2 * *(this + 4))
                {
                  v36 = v35;
                }

                *&v103[4] = v36;
                ++*&v103[8];
              }

              v7 = *v103;
            }

            ++v16;
          }

          while (v16 != v15);
        }

        v37 = v9;
        v38 = v98;
        v100 = v9;
        do
        {
          v39 = *(this + 5);
          v40 = *(v39 + 152);
          v41 = *(v40 + 4 * v38);
          v42 = *(v39 + 140);
          v106 = *(v40 + 4 * (v38 + 1));
          if (v42 <= v106)
          {
            if (*(this + 404) == 1 && v42 <= v98)
            {
              v64 = (v41 & 0xFFFFF) <= 0xFFFF3 ? v41 & 0xFFFFF : v41 & 0xFFFFF | 0xF00000;
              if (v64 != 16777210)
              {
                DgnString::DgnString(&v123);
                ArcGraph::getNameAndHumanReadablePron(*(this + 5), v64, &v123, v65, v66, v67, v68, v69);
                v74 = &unk_26287F8B0;
                if (v123.i32[2])
                {
                  v74 = v123.i64[0];
                }

                xprintf("Seed from state %d score %d trace %d, %s\n", v70, v71, v72, v73, v98, *(*(this + 30) + 32 * v11), *(*(this + 30) + 32 * v11 + 8), v74);
                MiniFst::seed(this + 288, *(*(this + 30) + 32 * v11), *(*(this + 30) + 32 * v11 + 20), *(*(this + 30) + 32 * v11 + 8), v106);
                DgnString::~DgnString(&v123);
              }
            }
          }

          else
          {
            if (*(this + 19) + *(this + 70) >= 5000)
            {
              v43 = 5000;
            }

            else
            {
              v43 = *(this + 19) + *(this + 70);
            }

            v105 = (v41 >> 20) & 0x3FF;
            v44 = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(this + 4), *(v40 + 4 * v38), *(*(this + 30) + 32 * v11) + v105, v43);
            if (v96 < v9)
            {
              v45 = v44 - *(*(this + 30) + 32 * v11);
              v46 = v11;
              v101 = v38;
              v102 = v45;
              do
              {
                v47 = *(this + 30) + 32 * v46;
                v48 = *v47 + v45;
                v49 = *(this + 70);
                if (v48 - v7 <= v49)
                {
                  v50 = v41;
                  if (v49 > v48)
                  {
                    *v99 = v48;
                  }

                  v110 = *(v47 + 14);
                  v51 = *(v47 + 16);
                  v107 = *(v47 + 8);
                  v108 = *(v47 + 20);
                  v52 = *(v47 + 28);
                  v53 = *(this + 50);
                  v54 = v53;
                  if (*(v47 + 28))
                  {
                    v55 = *(v47 + 24);
                    v56 = *(this + 24);
                    v57 = v52;
                    v54 = *(this + 50);
                    do
                    {
                      v58 = *(v56 + 2 * v55);
                      if (v54 == *(this + 51))
                      {
                        DgnPrimArray<short>::reallocElts(this + 192, 1, 1);
                        v54 = *(this + 50);
                        v56 = *(this + 24);
                      }

                      *(v56 + 2 * v54++) = v58;
                      *(this + 50) = v54;
                      ++v55;
                      --v57;
                    }

                    while (v57);
                  }

                  if (v54 == *(this + 51))
                  {
                    DgnPrimArray<short>::reallocElts(this + 192, 1, 1);
                    v54 = *(this + 50);
                  }

                  v41 = v50;
                  *(*(this + 24) + 2 * v54) = v50;
                  *(this + 50) = v54 + 1;
                  v59 = *(this + 66);
                  v11 = v104;
                  v38 = v101;
                  if (v59 == *(this + 67))
                  {
                    DgnArray<PrefilterResultFrame>::reallocElts(this + 256, 1, 1);
                    v59 = *(this + 66);
                  }

                  v60 = *(this + 32) + 32 * v59;
                  *v60 = v48;
                  *(v60 + 4) = v106;
                  *(v60 + 8) = v107;
                  *(v60 + 12) = v50;
                  *(v60 + 14) = v110;
                  *(v60 + 16) = v51 + v105;
                  *(v60 + 20) = v108;
                  *(v60 + 24) = v53;
                  *(v60 + 28) = v52 + 1;
                  v61 = *(this + 66) + 1;
                  *(this + 66) = v61;
                  if (v46 == v104)
                  {
                    v62 = *&v103[4];
                    if (*&v103[8] == 2 * *(this + 4))
                    {
                      v62 = v61;
                    }

                    *&v103[4] = v62;
                    ++*&v103[8];
                  }

                  v45 = v102;
                  v7 = *v103;
                  v37 = v100;
                }

                ++v46;
              }

              while (v46 != v37);
            }
          }

          v38 += 2;
          LODWORD(v9) = v97;
        }

        while ((v41 & 0x80000000) == 0);
        v8 = *(this + 62);
      }
    }

    while (v9 < v8);
    a3 = *v99;
  }

  else
  {
    *&v103[4] = 0;
  }

  v125 = a3 + v7;
  if (*(this + 404) == 1)
  {
    MiniFst::updateFrame(this + 288, v99, v7, a2);
  }

  v123 = 0u;
  v124 = 0u;
  SnapTime::recordTime(&v123, 1, 0, 0, 0);
  v123 = vsubq_s64(v123, v126);
  v124 = vsubq_s64(v124, v127);
  v75 = *(this + 13);
  v76 = vaddq_s64(v75[1], v124);
  *v75 = vaddq_s64(*v75, v123);
  v75[1] = v76;
  v121 = 0u;
  v122 = 0u;
  SnapTime::recordTime(&v121, 1, 0, 0, 0);
  if (*&v103[8] > (2 * *(this + 4)))
  {
    FstSearchLeafLatticeBackoff::applyCutoffOnEmitting(this, *&v103[4], &v125);
  }

  v119 = 0u;
  v120 = 0u;
  SnapTime::recordTime(&v119, 1, 0, 0, 0);
  v77 = vsubq_s64(v119, v121);
  v78 = *(this + 13);
  v79 = v78[3];
  v80 = vaddq_s64(v78[2], v77);
  v119 = v77;
  v120 = vsubq_s64(v120, v122);
  v81 = vaddq_s64(v79, v120);
  v78[2] = v80;
  v78[3] = v81;
  v117 = 0u;
  v118 = 0u;
  SnapTime::recordTime(&v117, 1, 0, 0, 0);
  FstSearchLeafLatticeBackoff::makeViterbiDecisionOnEmitting(this);
  v82 = *(this + 6);
  if (v82)
  {
    v83 = *(this + 62);
    if (v82 < v83)
    {
      mrec_nth_element<FstSearchLeafLatticeBackoffcmpTok>(*(this + 30), v82, v83);
    }
  }

  v115 = 0u;
  v116 = 0u;
  SnapTime::recordTime(&v115, 1, 0, 0, 0);
  v84 = vsubq_s64(v115, v117);
  v85 = *(this + 13);
  v86 = v85[5];
  v87 = vaddq_s64(v85[4], v84);
  v115 = v84;
  v116 = vsubq_s64(v116, v118);
  v88 = vaddq_s64(v86, v116);
  v85[4] = v87;
  v85[5] = v88;
  v113 = 0u;
  v114 = 0u;
  SnapTime::recordTime(&v113, 1, 0, 0, 0);
  *(this + 66) = 0;
  v89 = *(this + 62);
  *(this + 38) = v89;
  if (a4)
  {
    *(a4 + 2) += v89;
    if (*(a4 + 2) > v89)
    {
      LODWORD(v89) = *(a4 + 2);
    }

    *(a4 + 2) = v89;
  }

  if (*(this + 404) == 1)
  {
    FstSearchLeafLatticeBackoff::seedFromMiniFst(this, v128);
  }

  if (a5)
  {
    FstSearchLeafLatticeBackoff::propagateNulls(this, v125, a2, a4);
  }

  *(this + 68) = a2;
  v111 = 0u;
  v112 = 0u;
  SnapTime::recordTime(&v111, 1, 0, 0, 0);
  v90 = *(this + 13);
  result = vaddq_s64(v90[6], vsubq_s64(v111, v113));
  v92 = vaddq_s64(v90[7], vsubq_s64(v112, v114));
  v90[6] = result;
  v90[7] = v92;
  return result;
}

uint64_t FstSearchLeafLatticeBackoff::applyCutoffOnEmitting(uint64_t this, unsigned int a2, int *a3)
{
  v4 = *(this + 264);
  if (v4 > a2)
  {
    v6 = this;
    v7 = a2;
    this = mrec_nth_element<FstSearchLeafLatticeBackoffcmpTok>(*(this + 256), a2, v4);
    v8 = *(*(v6 + 256) + 32 * a2);
    if (*a3 > v8)
    {
      *a3 = v8;
    }

    v9 = *(v6 + 268);
    if (a2 > v9)
    {
      this = DgnArray<PrefilterResultFrame>::reallocElts(v6 + 256, a2 - v9, 0);
    }

    v10 = *(v6 + 264);
    if (v10 < a2)
    {
      v11 = v7 - v10;
      v12 = 32 * v10;
      do
      {
        v13 = *(v6 + 256) + v12;
        *v13 = 0xFFFFFFFF00000000;
        *(v13 + 8) = -1;
        *(v13 + 12) = -2;
        *(v13 + 16) = 0;
        *(v13 + 22) = 0;
        v12 += 32;
        --v11;
      }

      while (v11);
    }

    *(v6 + 264) = a2;
  }

  return this;
}

uint64_t FstSearchLeafLatticeBackoff::makeViterbiDecisionOnEmitting(uint64_t this)
{
  v1 = this;
  v2 = *(this + 264);
  if (v2)
  {
    this = mrec_qsort_r<FstSearchLateLatticeHashBackoffActiveToken>(*(this + 256), v2, 32);
    v3 = *(v1 + 264);
    *(v1 + 248) = 0;
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = *(v1 + 256) + 32 * v5;
        if (v5 && *(v7 + 4) == *(v7 - 28))
        {
          if (v4 >= *(v1 + 20) + v6)
          {
            goto LABEL_16;
          }

          i = v6;
          if (v6 < v4)
          {
            v9 = (*(v1 + 240) + 32 * v6 + 20);
            for (i = v6; v4 != i; ++i)
            {
              v10 = *v9;
              v9 += 8;
              if (v10 == *(v7 + 20))
              {
                break;
              }
            }
          }

          if (i != v4)
          {
            goto LABEL_16;
          }

          v11 = *(v1 + 252);
        }

        else
        {
          v11 = *(v1 + 252);
          v6 = v4;
        }

        if (v4 == v11)
        {
          this = DgnArray<PrefilterResultFrame>::reallocElts(v1 + 240, 1, 1);
          v4 = *(v1 + 248);
        }

        v12 = (*(v1 + 240) + 32 * v4);
        v13 = *(v7 + 16);
        *v12 = *v7;
        v12[1] = v13;
        v4 = *(v1 + 248) + 1;
        *(v1 + 248) = v4;
LABEL_16:
        ++v5;
      }

      while (v5 < *(v1 + 264));
    }
  }

  else
  {
    *(this + 248) = 0;
  }

  return this;
}

uint64_t mrec_nth_element<FstSearchLeafLatticeBackoffcmpTok>(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = 0;
    do
    {
      v4 = (result + 32 * v3);
      v5 = (result + 32 * (v3 + (a3 >> 1)));
      if ((result & 7) != 0)
      {
        v6 = 32;
        v7 = (result + 32 * v3);
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
        for (i = 0; i != 32; i += 8)
        {
          v10 = *&v4[i];
          *&v4[i] = *&v5[i];
          *&v5[i] = v10;
        }
      }

      v11 = (result - 32 + 32 * (v3 + a3));
      v12 = (result + 32 * v3);
      do
      {
        v13 = v12 + 32;
        while (1)
        {
          v12 = v13;
          if (v13 >= v11)
          {
            break;
          }

          v13 += 32;
          if (*v12 > *v4)
          {
            v14 = v12;
            while (*v11 >= *v4)
            {
              v11 -= 32;
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
                *v14++ = v11[v15];
                v11[v15++] = v16;
              }

              while (v15 != 32);
            }

            else
            {
              do
              {
                v17 = *v14;
                *v14 = *&v11[v15];
                v14 += 8;
                *&v11[v15] = v17;
                v15 += 8;
              }

              while (v15 != 32);
            }

            v11 -= 32;
            break;
          }
        }

LABEL_22:
        ;
      }

      while (v12 < v11);
      if (*v12 > *v4)
      {
        v12 -= 32;
      }

      v18 = v12 - v4;
      if (v12 > v4)
      {
        v19 = 0;
        if ((result & 7) != 0)
        {
          do
          {
            v20 = v12[v19];
            v12[v19] = v4[v19];
            v4[v19++] = v20;
          }

          while (v19 != 32);
        }

        else
        {
          do
          {
            v21 = *&v12[v19];
            *&v12[v19] = *&v4[v19];
            *&v4[v19] = v21;
            v19 += 8;
          }

          while (v19 != 32);
        }
      }

      v22 = v18 >> 5;
      if (v18 >> 5 <= a2)
      {
        if (v18 >> 5 >= a2)
        {
          return result;
        }

        v23 = v22 + 1;
        v3 += v23;
        a2 -= v23;
        v22 = a3 - v23;
      }

      a3 = v22;
    }

    while (v22 > 1);
  }

  return result;
}

uint64_t FstSearchLeafLatticeBackoff::seedFromMiniFst(uint64_t this, int *a2)
{
  if (*(this + 404) == 1)
  {
    v2 = this;
    v3 = *(this + 312);
    if (v3 >= *(this + 20))
    {
      v3 = *(this + 20);
    }

    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = (*(v2 + 304) + 36 * v4);
        v6 = v5[4];
        v7 = v5[5];
        v9 = v5[6];
        v8 = v5[7];
        v45 = v5[7];
        v46 = *v5;
        v10 = v5[2];
        v47 = 0;
        v48 = 0;
        v43 = v7;
        v44 = v6;
        v42 = v9;
        if ((v10 & 0x80000000) != 0)
        {
          LODWORD(v14) = -2 - v10;
        }

        else
        {
          v11 = 0;
          v12 = 0;
          do
          {
            if (v12 == HIDWORD(v48))
            {
              DgnPrimArray<unsigned int>::reallocElts(&v47, 1, 1);
              v12 = v48;
              v11 = v47;
            }

            *(v11 + 4 * v12) = v10;
            v13 = v48;
            v12 = v48 + 1;
            LODWORD(v48) = v48 + 1;
            v10 = *(*(v2 + 288) + 36 * v10 + 8);
          }

          while ((v10 & 0x80000000) == 0);
          LODWORD(v14) = -2 - v10;
          if ((v13 & 0x80000000) == 0)
          {
            do
            {
              v15 = *(v47 + 4 * v13);
              v16 = *(v2 + 288);
              v17 = (v16 + 36 * v15);
              v18 = *v17;
              v19 = *(v17 + 2);
              v20 = *(v2 + 184);
              if (v20 == *(v2 + 188))
              {
                DgnArray<CWIDAC>::reallocElts(v2 + 176, 1, 1);
                v20 = *(v2 + 184);
                v16 = *(v2 + 288);
              }

              v21 = *(v2 + 176) + 24 * v20;
              *(v2 + 184) = v20 + 1;
              *v21 = v18;
              *(v21 + 4) = v19;
              *(v21 + 12) = v14;
              *(v21 + 16) = 0;
              *(v21 + 20) = 0;
              v22 = *(v16 + 36 * v15 + 28);
              v23 = *(v2 + 168);
              if (v23 == *(v2 + 172))
              {
                DgnArray<DgnPrimArray<double>>::reallocElts(v2 + 160, 1, 1);
                v23 = *(v2 + 168);
              }

              v24 = *(v2 + 160);
              v25 = v24 + 16 * v23;
              *v25 = v22;
              *(v25 + 8) = v20;
              *(v25 + 12) = 0;
              v14 = *(v2 + 168);
              *(v2 + 168) = v14 + 1;
              *(v24 + 16 * v14 + 12) = 1;
            }

            while (v13-- > 0);
          }
        }

        v27 = *(v2 + 184);
        if (v27 == *(v2 + 188))
        {
          DgnArray<CWIDAC>::reallocElts(v2 + 176, 1, 1);
          v27 = *(v2 + 184);
        }

        v28 = *(v2 + 176);
        *(v2 + 184) = v27 + 1;
        v29 = v28 + 24 * v27;
        *v29 = v46;
        *(v29 + 4) = v44;
        *(v29 + 8) = v43;
        *(v29 + 12) = v14;
        *(v29 + 16) = 0;
        *(v29 + 20) = 0;
        if (v45 == 16777213)
        {
          v30 = (*(v2 + 160) + 16 * v14);
          v31 = 16777209;
          if (*v30 == 16777209)
          {
            v27 = v30[2];
          }
        }

        else
        {
          v31 = v45;
        }

        v32 = *a2;
        v33 = *(v2 + 168);
        if (v33 == *(v2 + 172))
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(v2 + 160, 1, 1);
          v33 = *(v2 + 168);
        }

        v34 = *(v2 + 160);
        v35 = (v34 + 16 * v33);
        *v35 = v31;
        v35[1] = v32;
        v35[2] = v27;
        v35[3] = 0;
        v36 = *(v2 + 168);
        *(v2 + 168) = v36 + 1;
        *(v34 + 16 * v36 + 12) = 1;
        v37 = *(v2 + 248);
        if (v37 == *(v2 + 252))
        {
          DgnArray<PrefilterResultFrame>::reallocElts(v2 + 240, 1, 1);
          v37 = *(v2 + 248);
        }

        v38 = *(v2 + 240) + 32 * v37;
        *v38 = v46;
        *(v38 + 4) = v42;
        *(v38 + 8) = v36;
        *(v38 + 12) = -2;
        *(v38 + 16) = v44;
        *(v38 + 20) = v43;
        *(v38 + 24) = 0;
        *(v38 + 28) = 0;
        ++*(v2 + 248);
        this = DgnPrimArray<unsigned int>::~DgnPrimArray(&v47);
        ++v4;
        LODWORD(v39) = *(v2 + 312);
        v40 = *(v2 + 20);
        if (v39 >= v40)
        {
          v39 = v40;
        }

        else
        {
          v39 = v39;
        }
      }

      while (v4 < v39);
    }
  }

  return this;
}

void sub_26263E49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

_DWORD *FstSearchLeafLatticeBackoff::propagateNulls(_DWORD *this, uint64_t a2, int a3, SearchStats *a4)
{
  v4 = this;
  v5 = this[42];
  LODWORD(v6) = this[62];
  if (v6)
  {
    v68 = this[42];
    v69 = a4;
    LODWORD(v7) = 0;
    v75 = a2;
    do
    {
      v8 = *(v4 + 240);
      v9 = v7;
      v10 = *(v8 + 32 * v7 + 4);
      if (v6 <= v7 + 1)
      {
        v11 = v7 + 1;
      }

      else
      {
        v11 = v6;
      }

      v73 = v7;
      while (v11 - 1 != v7)
      {
        v7 = (v7 + 1);
        if (*(v8 + 32 * v7 + 4) != v10)
        {
          goto LABEL_11;
        }
      }

      LODWORD(v7) = v11;
LABEL_11:
      v12 = *(v4 + 40);
      if (*(v12 + 160) != v10 && (*(v12 + 140) <= v10 || (*(*(v12 + 152) + 4 * v10) & 0x40000000) != 0))
      {
        v84 = 32 * v9;
        v72 = v7;
        v70 = v7 - v73;
        v71 = v10;
        do
        {
          v13 = *(v4 + 40);
          v14 = *(v13 + 152);
          v76 = v10;
          v81 = *(v14 + 4 * v10);
          v15 = *(v13 + 140);
          v83 = *(v14 + 4 * (v10 + 1));
          if (v15 <= v83)
          {
            v16 = (v81 & 0xFFFFF) <= 0xFFFF3 ? v81 & 0xFFFFF : v81 & 0xFFFFF | 0xF00000;
            v17 = v16 != 16777210 && v15 <= v71;
            if (!v17 && v72 > v73)
            {
              v19 = 0;
              v20 = (v81 >> 20) & 0x3FF;
              v77 = v16 + 1;
              v21 = v70;
              v82 = v16;
              do
              {
                v22 = *(v4 + 240);
                v23 = v22 + v84;
                v24 = *(v22 + v84 + v19);
                v25 = v24 + v20;
                if (v24 + v20 > a2)
                {
                  break;
                }

                v26 = v23 + v19;
                v27 = *(v23 + v19 + 8);
                v85 = *(v23 + v19 + 12);
                v28 = *(v23 + v19 + 14);
                v29 = *(v23 + v19 + 16);
                v30 = *(v26 + 20);
                v31 = *(v26 + 24);
                v32 = *(v26 + 28);
                v33 = v29 + v20;
                if (v16 == 16777210)
                {
                  v49 = *(v4 + 248);
                  if (v49 == *(v4 + 252))
                  {
                    v80 = *(v26 + 24);
                    v50 = a2;
                    v51 = v29 + v20;
                    v52 = v28;
                    this = DgnArray<PrefilterResultFrame>::reallocElts(v4 + 240, 1, 1);
                    a2 = v50;
                    v31 = v80;
                    v28 = v52;
                    v33 = v51;
                    v20 = (v81 >> 20) & 0x3FF;
                    v16 = v82;
                    v49 = *(v4 + 248);
                    v22 = *(v4 + 240);
                  }

                  v53 = v22 + 32 * v49;
                  *v53 = v25;
                  *(v53 + 4) = v83;
                  *(v53 + 8) = v27;
                  *(v53 + 12) = v85;
                  *(v53 + 14) = v28;
                  *(v53 + 16) = v33;
                  *(v53 + 20) = v30;
                  *(v53 + 24) = v31;
                  *(v53 + 28) = v32;
                  ++*(v4 + 248);
                }

                else
                {
                  if (v16 == 16777214)
                  {
                    v34 = v24 - v29;
                  }

                  else
                  {
                    v34 = v24 + v20;
                  }

                  if (v16 == 16777214)
                  {
                    v35 = 0;
                  }

                  else
                  {
                    v35 = v29 + v20;
                  }

                  if (v16 == 16777214)
                  {
                    v36 = v29 + v20;
                  }

                  else
                  {
                    v36 = 0;
                  }

                  v78 = v36;
                  v79 = v29 + v20;
                  v37 = *(v4 + 184);
                  if (v37 == *(v4 + 188))
                  {
                    v38 = v28;
                    this = DgnArray<CWIDAC>::reallocElts(v4 + 176, 1, 1);
                    v28 = v38;
                    v20 = (v81 >> 20) & 0x3FF;
                    v16 = v82;
                    v37 = *(v4 + 184);
                  }

                  v39 = v77 + 2 * v30;
                  v40 = *(v4 + 176) + 24 * v37;
                  *(v4 + 184) = v37 + 1;
                  *v40 = v34;
                  *(v40 + 4) = v35;
                  *(v40 + 8) = v39;
                  *(v40 + 12) = v27;
                  *(v40 + 16) = v31;
                  *(v40 + 20) = v32;
                  v41 = *(v4 + 168);
                  if (!v19)
                  {
                    if (v41 == *(v4 + 172))
                    {
                      v42 = v28;
                      this = DgnArray<DgnPrimArray<double>>::reallocElts(v4 + 160, 1, 1);
                      v28 = v42;
                      v20 = (v81 >> 20) & 0x3FF;
                      v16 = v82;
                      v41 = *(v4 + 168);
                    }

                    v43 = (*(v4 + 160) + 16 * v41);
                    *v43 = v16;
                    v43[1] = a3;
                    v43[2] = v37;
                    v43[3] = 0;
                    v44 = *(v4 + 168);
                    *(v4 + 168) = v44 + 1;
                    v45 = *(v4 + 248);
                    if (v45 == *(v4 + 252))
                    {
                      v46 = v28;
                      this = DgnArray<PrefilterResultFrame>::reallocElts(v4 + 240, 1, 1);
                      v28 = v46;
                      v20 = (v81 >> 20) & 0x3FF;
                      v16 = v82;
                      v45 = *(v4 + 248);
                    }

                    v47 = *(v4 + 240) + 32 * v45;
                    *v47 = v34 + v78;
                    *(v47 + 4) = v83;
                    *(v47 + 8) = v44;
                    *(v47 + 12) = v85;
                    *(v47 + 14) = v28;
                    *(v47 + 16) = v79;
                    *(v47 + 20) = v39;
                    *(v47 + 24) = v31;
                    *(v47 + 28) = 0;
                    ++*(v4 + 248);
                    v41 = *(v4 + 168);
                  }

                  a2 = v75;
                  v48 = *(v4 + 160) + 16 * (v41 - 1);
                  ++*(v48 + 12);
                }

                v19 += 32;
                --v21;
              }

              while (v21);
            }
          }

          v10 = v76 + 2;
        }

        while ((v81 & 0x80000000) == 0);
        LODWORD(v6) = *(v4 + 248);
        LODWORD(v7) = v72;
      }
    }

    while (v7 < v6);
    v54 = *(v4 + 152);
    if (v6 > v54)
    {
      this = mrec_qsort_r<FstSearchLateLatticeHashBackoffActiveToken>((*(v4 + 240) + 32 * v54), (v6 - v54), 32);
      v54 = *(v4 + 152);
      LODWORD(v6) = *(v4 + 248);
    }

    if (v54 < v6)
    {
      v55 = v54;
      v56 = v54;
      do
      {
        v57 = *(v4 + 240);
        v58 = (v57 + 32 * v55);
        this = v54;
        if (*(v58 + 1) != *(v57 + 32 * (v55 - 1) + 4))
        {
          goto LABEL_67;
        }

        if ((v54 - v56) < *(v4 + 20))
        {
          v59 = v56;
          if (v54 > v56)
          {
            v60 = (v57 + 32 * v56 + 20);
            v59 = v56;
            while (1)
            {
              v61 = *v60;
              v60 += 8;
              if (v61 == *(v58 + 5))
              {
                break;
              }

              if (v54 == ++v59)
              {
                this = v56;
                goto LABEL_67;
              }
            }
          }

          this = v56;
          if (v59 == v54)
          {
LABEL_67:
            v62 = *v58;
            v63 = (v57 + 32 * v54);
            *(v63 + 14) = *(v58 + 14);
            *v63 = v62;
            v54 = (v54 + 1);
            v56 = this;
          }
        }

        ++v55;
        v6 = *(v4 + 248);
      }

      while (v55 < v6);
    }

    a4 = v69;
    v5 = v68;
    if (v69)
    {
      goto LABEL_70;
    }
  }

  else
  {
    LODWORD(v54) = this[38];
    if (a4)
    {
LABEL_70:
      *(a4 + 1) += *(v4 + 168) - v5;
    }
  }

  v64 = *(v4 + 252);
  if (v54 > v64)
  {
    this = DgnArray<PrefilterResultFrame>::reallocElts(v4 + 240, v54 - v64, 0);
    LODWORD(v6) = *(v4 + 248);
  }

  if (v6 < v54)
  {
    v65 = v54 - v6;
    v66 = 32 * v6;
    do
    {
      v67 = *(v4 + 240) + v66;
      *v67 = 0xFFFFFFFF00000000;
      *(v67 + 8) = -1;
      *(v67 + 12) = -2;
      *(v67 + 16) = 0;
      *(v67 + 22) = 0;
      v66 += 32;
      --v65;
    }

    while (v65);
  }

  *(v4 + 248) = v54;
  return this;
}

uint64_t FstSearchLeafLatticeBackoff::collectTraces(FstSearchLeafLatticeBackoff *this)
{
  v2 = *(this + 42);
  v63 = 0;
  v62 = 0;
  if (v2)
  {
    v3 = MemChunkAlloc(4 * v2, 0);
    v4 = 0;
    v62 = v3;
    v63 = v2;
    do
    {
      *(v3 + v4++) = 0;
    }

    while (v4 < v63);
  }

  v5 = *(this + 62);
  if (v5)
  {
    v6 = 0;
    v7 = v62;
    v8 = (*(this + 30) + 8);
    do
    {
      v10 = *v8;
      v8 += 8;
      v9 = v10;
      if (v10 != -1)
      {
        *(v7 + v9) = 1;
        v5 = *(this + 62);
      }

      ++v6;
    }

    while (v6 < v5);
  }

  v11 = *(this + 42);
  if (!v11)
  {
    v60 = 0;
    v61 = 0;
LABEL_54:
    v23 = 0;
    *(this + 42) = 0;
    goto LABEL_55;
  }

  v12 = 0;
  v13 = v62;
  do
  {
    --v11;
    if (v12)
    {
      v12 = 1;
    }

    else if (*(*(this + 20) + 16 * v11) == 16777213)
    {
      v12 = 1;
      *(v13 + v11) = 1;
    }

    else
    {
      v12 = 0;
    }

    if (*(v13 + v11))
    {
      v14 = *(this + 20) + 16 * v11;
      v15 = *(v14 + 12);
      if (v15 >= 1)
      {
        v16 = *(v14 + 8);
        v17 = v15 + v16;
        v18 = *(this + 22);
        do
        {
          v19 = *(v18 + 24 * v16 + 12);
          if (v19 != -1)
          {
            *(v13 + v19) = 1;
          }

          ++v16;
        }

        while (v16 < v17);
      }
    }
  }

  while (v11);
  v20 = *(this + 42);
  v60 = 0;
  v61 = 0;
  if (!v20)
  {
    goto LABEL_54;
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  do
  {
    if (*(v62 + v21))
    {
      v24 = *(this + 20);
      if (v21 != v22)
      {
        *(v24 + 16 * v22) = *(v24 + 16 * v21);
        v24 = *(this + 20);
      }

      *(v24 + 16 * v22 + 8) = v23;
      v25 = v24 + 16 * v21;
      v26 = *(v25 + 8);
      v27 = (*(v25 + 12) + v26);
      if (v26 < v27)
      {
        v28 = *(this + 22);
        do
        {
          v29 = v23;
          if (v26 != v23)
          {
            v30 = (v28 + 24 * v26);
            v31 = v28 + 24 * v23;
            v32 = *v30;
            *(v31 + 14) = *(v30 + 14);
            *v31 = v32;
            v28 = *(this + 22);
          }

          v33 = v28 + 24 * v23;
          v36 = *(v33 + 12);
          v34 = (v33 + 12);
          v35 = v36;
          if (v36 != -1)
          {
            *v34 = *(v62 + v35);
          }

          v37 = v61;
          if (*(v28 + 24 * v29 + 20))
          {
            v38 = 0;
            v39 = v61;
            do
            {
              v40 = *(*(this + 24) + 2 * (v38 + *(v28 + 24 * v29 + 16)));
              if (v39 == HIDWORD(v61))
              {
                DgnPrimArray<short>::reallocElts(&v60, 1, 1);
                v39 = v61;
                v28 = *(this + 22);
              }

              *(v60 + 2 * v39++) = v40;
              LODWORD(v61) = v39;
              ++v38;
            }

            while (v38 < *(v28 + 24 * v29 + 20));
          }

          *(v28 + 24 * v29 + 16) = v37;
          v23 = v29 + 1;
          ++v26;
        }

        while (v26 != v27);
      }

      *(v62 + v21) = v22++;
      v20 = *(this + 42);
    }

    ++v21;
  }

  while (v21 < v20);
  v41 = *(this + 43);
  if (v22 > v41)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 160, v22 - v41, 0);
    v20 = *(this + 42);
  }

  if (v20 < v22)
  {
    v42 = v22 - v20;
    v43 = (*(this + 20) + 16 * v20);
    do
    {
      *v43++ = xmmword_26287F860;
      --v42;
    }

    while (v42);
  }

  *(this + 42) = v22;
  v44 = *(this + 47);
  if (v23 > v44)
  {
    DgnArray<CWIDAC>::reallocElts(this + 176, v23 - v44, 0);
  }

  v45 = *(this + 46);
  if (v45 < v23)
  {
    v46 = v23 - v45;
    v47 = (*(this + 22) + 24 * v45 + 20);
    do
    {
      *(v47 - 10) = xmmword_26287F850;
      *(v47 - 1) = 0;
      *v47 = 0;
      v47 += 12;
      --v46;
    }

    while (v46);
  }

LABEL_55:
  *(this + 46) = v23;
  v48 = *(this + 62);
  if (v48)
  {
    v49 = 0;
    v50 = v61;
    v51 = *(this + 30);
    do
    {
      if (*(v51 + 32 * v49 + 28))
      {
        v52 = 0;
        LODWORD(v53) = v50;
        do
        {
          v54 = *(*(this + 24) + 2 * (v52 + *(v51 + 32 * v49 + 24)));
          if (v53 == HIDWORD(v61))
          {
            DgnPrimArray<short>::reallocElts(&v60, 1, 1);
            LODWORD(v53) = v61;
            v51 = *(this + 30);
          }

          *(v60 + 2 * v53) = v54;
          v53 = (v53 + 1);
          LODWORD(v61) = v53;
          ++v52;
        }

        while (v52 < *(v51 + 32 * v49 + 28));
        v48 = *(this + 62);
      }

      else
      {
        v53 = v50;
      }

      *(v51 + 32 * v49++ + 24) = v50;
      v50 = v53;
    }

    while (v49 < v48);
  }

  else
  {
    LODWORD(v53) = v61;
  }

  DgnPrimArray<unsigned short>::copyArraySlice(this + 192, &v60, 0, v53);
  v55 = *(this + 62);
  if (v55)
  {
    v56 = v62;
    v57 = (*(this + 30) + 8);
    do
    {
      v58 = *v57;
      if (v58 != -1)
      {
        *v57 = *(v56 + v58);
      }

      v57 += 8;
      --v55;
    }

    while (v55);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v60);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v62);
}

void sub_26263EE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a9);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a11);
  _Unwind_Resume(a1);
}

int64x2_t FstSearchLeafLatticeBackoff::vite(int64x2_t **this, int a2, int a3, SearchStats *a4, int a5)
{
  FstSearchLeafLatticeBackoff::advanceDeltas(this, a2, a3, a4, a5);
  v13 = 0u;
  v14 = 0u;
  SnapTime::recordTime(&v13, 1, 0, 0, 0);
  if (a2 >= 1)
  {
    v7 = *(this + 18);
    if (v7)
    {
      if (!(a2 % v7))
      {
        FstSearchLeafLatticeBackoff::collectTraces(this);
      }
    }
  }

  v11 = 0u;
  v12 = 0u;
  SnapTime::recordTime(&v11, 1, 0, 0, 0);
  v8 = this[13];
  result = vaddq_s64(v8[14], vsubq_s64(v11, v13));
  v10 = vaddq_s64(v8[15], vsubq_s64(v12, v14));
  v8[14] = result;
  v8[15] = v10;
  return result;
}

_DWORD *FstSearchLeafLatticeBackoff::reset(_DWORD *this)
{
  this[42] = 0;
  this[46] = 0;
  this[50] = 0;
  this[62] = 0;
  return this;
}

double FstSearchLeafLatticeBackoff::doFrame(int64x2_t **this, int a2, int a3, SearchStats *a4, int a5)
{
  if (a3 >= 20000)
  {
    a3 = 20000;
  }

  *&result = FstSearchLeafLatticeBackoff::vite(this, a2, a3, a4, a5).u64[0];
  return result;
}

uint64_t FstSearchLeafLatticeBackoff::beginTopRecPassSyncRecog(FstSearchLeafLatticeBackoff *this, PelScorer *a2, const ArcGraph *a3)
{
  result = SearchItf::beginTopRecPassSyncRecogBase(this, a2);
  if (a3)
  {
    MiniFst::init(this + 288, a3, *(this + 4));
    result = ArcGraph::findBackoffState(*(this + 5));
    *(this + 100) = result;
    *(this + 404) = 1;
  }

  return result;
}

uint64_t FstSearchLeafLatticeBackoff::endTopRecPassSyncRecog(FstSearchLeafLatticeBackoff *this)
{
  v10 = 0u;
  v11 = 0u;
  SnapTime::recordTime(&v10, 1, 0, 0, 0);
  v8 = 0u;
  v9 = 0u;
  SnapTime::recordTime(&v8, 1, 0, 0, 0);
  v2 = vsubq_s64(v8, v10);
  v3 = *(this + 13);
  v4 = v3[13];
  v5 = vaddq_s64(v3[12], v2);
  v8 = v2;
  v9 = vsubq_s64(v9, v11);
  v6 = vaddq_s64(v4, v9);
  v3[12] = v5;
  v3[13] = v6;
  *(this + 70) = 1879048192;
  return SearchItf::endTopRecPassSyncRecogBase(this);
}

void FstSearchLeafLatticeBackoff::printSize(FstSearchLeafLatticeBackoff *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2950, &v126);
  if (v127)
  {
    v15 = v126;
  }

  else
  {
    v15 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, v12, v13, v14, a3, &unk_26287F8B0, a3, &unk_26287F8B0, v15);
  DgnString::~DgnString(&v126);
  if (a2 != -1)
  {
    xlprintf("%d ", v16, v17, v18, v19, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v16, v17, v18, v19, a3, &unk_26287F8B0);
  v20 = (a3 + 1);
  v21 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2952, &v126);
  if (v127)
  {
    v26 = v126;
  }

  else
  {
    v26 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v22, v23, v24, v25, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v26, 4, 4, 0);
  DgnString::~DgnString(&v126);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2954, &v126);
  if (v127)
  {
    v31 = v126;
  }

  else
  {
    v31 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v27, v28, v29, v30, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v31, 4, 4, 0);
  DgnString::~DgnString(&v126);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2955, &v126);
  if (v127)
  {
    v36 = v126;
  }

  else
  {
    v36 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, v33, v34, v35, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v36, 4, 4, 0);
  v122 = a2;
  DgnString::~DgnString(&v126);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2956, &v126);
  if (v127)
  {
    v41 = v126;
  }

  else
  {
    v41 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, v38, v39, v40, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v41, 4, 4, 0);
  DgnString::~DgnString(&v126);
  *a4 += 4;
  *a5 += 4;
  v42 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v42 = 12;
  }

  v43 = *(this + 42);
  v44 = 16 * v43;
  if (v43 <= 0)
  {
    v44 = 0;
  }

  v45 = v44 + v42;
  v46 = v44 + v42 + 16 * (*(this + 43) - v43);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2957, &v126);
  if (v127)
  {
    v51 = v126;
  }

  else
  {
    v51 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v47, v48, v49, v50, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v51, v46, v45, 0);
  DgnString::~DgnString(&v126);
  *a4 += v46;
  *a5 += v45;
  v52 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v52 = 12;
  }

  v53 = *(this + 46);
  v54 = 22 * v53;
  if (v53 <= 0)
  {
    v54 = 0;
  }

  v55 = v54 + v52;
  v56 = v54 + v52 + 22 * (*(this + 47) - v53);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2959, &v126);
  if (v127)
  {
    v61 = v126;
  }

  else
  {
    v61 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v57, v58, v59, v60, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v61, v56, v55, 0);
  v121 = a3;
  DgnString::~DgnString(&v126);
  *a4 += v56;
  *a5 += v55;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v62 = 12;
  }

  else
  {
    v62 = 16;
  }

  v63 = *(this + 50);
  v64 = *(this + 51);
  if (v64 >= v63)
  {
    v65 = 0;
    if (v63 > 0)
    {
      v62 += 2 * (v63 - 1) + 2;
    }

    v66 = v62 + 2 * (v64 - v63);
  }

  else
  {
    v65 = 2 * v63;
    v66 = v62;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2961, &v126);
  if (v127)
  {
    v71 = v126;
  }

  else
  {
    v71 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v67, v68, v69, v70, v20, &unk_26287F8B0, v21, v21, v71, v66, v62, v65);
  DgnString::~DgnString(&v126);
  *a4 += v66;
  *a5 += v62;
  *a6 += v65;
  v72 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v72 = 12;
  }

  v73 = *(this + 62);
  v74 = 28 * v73;
  if (v73 <= 0)
  {
    v74 = 0;
  }

  v75 = v74 + v72;
  v76 = v74 + v72 + 28 * (*(this + 63) - v73);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2964, &v126);
  if (v127)
  {
    v81 = v126;
  }

  else
  {
    v81 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v77, v78, v79, v80, v20, &unk_26287F8B0, v21, v21, v81, v76, v75, 0);
  DgnString::~DgnString(&v126);
  *a4 += v76;
  *a5 += v75;
  v82 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v82 = 12;
  }

  v83 = *(this + 66);
  v84 = 28 * v83;
  if (v83 <= 0)
  {
    v84 = 0;
  }

  v85 = v84 + v82;
  v86 = v84 + v82 + 28 * (*(this + 67) - v83);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2966, &v126);
  if (v127)
  {
    v91 = v126;
  }

  else
  {
    v91 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v87, v88, v89, v90, v20, &unk_26287F8B0, v21, v21, v91, v86, v85, 0);
  DgnString::~DgnString(&v126);
  *a4 += v86;
  *a5 += v85;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2968, &v126);
  if (v127)
  {
    v96 = v126;
  }

  else
  {
    v96 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v92, v93, v94, v95, v20, &unk_26287F8B0, v21, v21, v96, 4, 4, 0);
  DgnString::~DgnString(&v126);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2970, &v126);
  if (v127)
  {
    v101 = v126;
  }

  else
  {
    v101 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v97, v98, v99, v100, v20, &unk_26287F8B0, v21, v21, v101, 4, 4, 0);
  DgnString::~DgnString(&v126);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2972, &v126);
  if (v127)
  {
    v106 = v126;
  }

  else
  {
    v106 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v102, v103, v104, v105, v20, &unk_26287F8B0, v21, v21, v106, 4, 4, 0);
  DgnString::~DgnString(&v126);
  *a4 += 4;
  *a5 += 4;
  v107 = sizeObject(this + 288, 0);
  v108 = sizeObject(this + 288, 1);
  v109 = sizeObject(this + 288, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2974, &v126);
  if (v127)
  {
    v114 = v126;
  }

  else
  {
    v114 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v110, v111, v112, v113, v20, &unk_26287F8B0, v21, v21, v114, v107, v108, v109);
  DgnString::~DgnString(&v126);
  *a4 += v107;
  *a5 += v108;
  *a6 += v109;
  v124 = 0;
  v125 = 0;
  SearchItf::printSize(this, v122, v20, &v125, &v124, &v124);
  *a4 += v125;
  *a5 += v124;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2985, &v126);
  if (v127)
  {
    v119 = v126;
  }

  else
  {
    v119 = &unk_26287F8B0;
  }

  v120 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v115, v116, v117, v118, v121, &unk_26287F8B0, (35 - v121), (35 - v121), v119, *a4, *a5, *a6);
  DgnString::~DgnString(&v126);
}

uint64_t FstSearchLeafLatticeBackoff::getBestTrace(uint64_t a1, void *a2, void *a3, int a4)
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 152);
  }

  v5 = *(a1 + 248);
  if (v4 >= v5)
  {
    goto LABEL_21;
  }

  v6 = 32 * v4;
  v7 = 1879048192;
  v8 = 0xFFFFFFFFLL;
  do
  {
    v9 = *(a1 + 240);
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

    v11 = *(*(a1 + 176) + 24 * *(*(a1 + 160) + 16 * v10 + 8)) + *(*(a1 + 88) + 4 * *(*(a1 + 160) + 16 * v10 + 4));
    v12 = v7 <= v11;
    if (v7 >= v11)
    {
      v7 = *(*(a1 + 176) + 24 * *(*(a1 + 160) + 16 * v10 + 8)) + *(*(a1 + 88) + 4 * *(*(a1 + 160) + 16 * v10 + 4));
    }

    if (!v12)
    {
      v8 = v10;
    }

    v5 = *(a1 + 248);
LABEL_19:
    ++v4;
    v6 += 32;
  }

  while (v4 < v5);
  if (v8 == 0xFFFFFFFFLL)
  {
LABEL_21:
    v13 = *(a1 + 168);
    v8 = 0xFFFFFFFFLL;
    while (v13)
    {
      --v13;
      if ((a4 & 1) != 0 || *(*(a1 + 160) + 16 * v13) == 16777213)
      {
        if (a2)
        {
          *(*a2 + v13) = 1;
        }

        v8 = v13;
        if (a3)
        {
          *(*a3 + v13) = 1;
        }

        return v8;
      }
    }
  }

  return v8;
}

BOOL FstSearchLeafLatticeBackoff::findBestPath(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v8 = *(a1 + 168);
  if (v8)
  {
    v9 = *(a3 + 8) == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    *a3 = MemChunkAlloc(*(a1 + 168), 0);
    *(a3 + 8) = v8;
  }

  if (v8)
  {
    v10 = *(a2 + 8) == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    *a2 = MemChunkAlloc(v8, 0);
    *(a2 + 8) = v8;
LABEL_14:
    v11 = 0;
    do
    {
      *(*a2 + v11) = 0;
      *(*a3 + v11++) = 0;
    }

    while (v8 != v11);
    goto LABEL_16;
  }

  if (v8)
  {
    goto LABEL_14;
  }

LABEL_16:
  BestTrace = FstSearchLeafLatticeBackoff::getBestTrace(a1, a2, a3, 0);
  *a4 = 1879048192;
  if (BestTrace == -1)
  {
    return 0;
  }

  v13 = *(a1 + 160) + 16 * BestTrace;
  LODWORD(v13) = *(*(a1 + 176) + 24 * *(v13 + 8)) + *(*(a1 + 88) + 4 * *(v13 + 4));
  *a4 = v13;
  return v13 != 1879048192;
}

unint64_t FstSearchLeafLatticeBackoff::createLatticeNodes(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
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
        v20 = *(*(a1 + 88) + 4 * *(v19 + 16 * v15 + 4));
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

        v25 = (v19 + 16 * v15);
        if (v25[3] >= 1)
        {
          v40 = v17;
          v26 = *v25;
          v27 = v25[2];
          do
          {
            v28 = *(a1 + 176);
            v29 = (v28 + 24 * v27);
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

              v33 = v19 + 16 * v30;
              v34 = *(*(a1 + 88) + 4 * *(v33 + 4));
              v35 = (v28 + 24 * *(v33 + 8));
              v36 = v20 + *v29 - v34 - *v35;
              LODWORD(v35) = v29[1] - v35[1];
              *v29 = v36;
              v29[1] = v35;
              *(*a6 + v30) = 2;
              v19 = *(a1 + 160);
            }

            ++v27;
          }

          while (v27 < *(v19 + 16 * v15 + 12) + *(v19 + 16 * v15 + 8));
          v8 = v39;
          v17 = v40;
        }
      }
    }

    while (v15);
  }

  return result;
}

uint64_t FstSearchLeafLatticeBackoff::buildWordLattice(unint64_t a1, unint64_t a2, void *a3, void *a4, unsigned __int8 a5)
{
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v25 = 0;
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v24, *(a1 + 168));
  v8 = MemChunkAlloc(0x28uLL, 0);
  HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::HashProbeKEV(v8, 0, 128);
  v8[4] = a2;
  FstSearchLeafLatticeBackoff::createLatticeNodes(a1, &v27, &v25, a2, v24, a3, a4);
  v21 = *(a1 + 168);
  if (v21)
  {
    v9 = 0;
    v10 = v26;
    do
    {
      if (*(*a3 + v9))
      {
        v11 = (*(a1 + 160) + 16 * v9);
        if (*v11 != 16777209 && v11[3] >= 1)
        {
          v12 = v11[2];
          do
          {
            v13 = *(a1 + 176) + 24 * v12;
            v14 = *(v13 + 12);
            if (v14 == -1)
            {
              v15 = 0;
            }

            else
            {
              v15 = (v10 - *(v27 + v14));
            }

            v16 = *(v25 + 4 * v15);
            if (*(*a4 + v9) == 1)
            {
              FstSearchLeafLatticeBackoff::createLatticeLink(a1, v9, v13, 0xFFFFFFFFLL, v16, *(v25 + 4 * (v10 - *(v27 + v9))), a2, v8, a5);
            }

            v17 = v24[0] + 16 * v9;
            if (*(v17 + 8))
            {
              v18 = 0;
              do
              {
                v19 = *(*v17 + 4 * v18);
                FstSearchLeafLatticeBackoff::createLatticeLink(a1, v9, v13, v19, v16, *(v25 + 4 * (v10 - *(v27 + v19))), a2, v8, a5);
                ++v18;
                v17 = v24[0] + 16 * v9;
              }

              while (v18 < *(v17 + 8));
            }

            ++v12;
          }

          while (v12 < *(*(a1 + 160) + 16 * v9 + 12) + *(*(a1 + 160) + 16 * v9 + 8));
        }
      }

      ++v9;
    }

    while (v9 != v21);
  }

  DgnDelete<HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>>(v8);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v24);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v25);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v27);
}

void sub_26263FFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void FstSearchLeafLatticeBackoff::createLatticeLink(unint64_t a1, unsigned int a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v38 = a6;
  v11 = a5;
  v12 = a4;
  v16 = *(a1 + 160);
  if ((a4 & 0x80000000) != 0 || (v17 = v16 + 16 * a4, v18 = *(v17 + 12), v18 < 1))
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
      if (*(v21 + 24 * v19 + 12) == a2)
      {
        v22 = (v21 + 24 * v19);
      }

      else
      {
        v22 = 0;
      }

      ++v19;
    }

    while (v19 < v20 && !v22);
  }

  ArcGraph::lexToCWIDAC(*(a1 + 40), *(v16 + 16 * a2), a3, a4, a5, a6, a7, a8, v48);
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

  if (v48[0] >> 25 == 126)
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

  v42 = v26;
  v43 = 0;
  v44 = v25;
  v45 = v27;
  v46 = 0;
  v47 = v28;
  v29 = a3[3];
  v30 = *(a1 + 160);
  if (v29 == -1)
  {
    v32 = 0;
    if (a9)
    {
LABEL_24:
      v33 = (*(v30 + 16 * a2 + 4) - 1) / 2;
      v34 = v33 + 1;
      v35 = v33 + 1 - v32;
      if ((v12 & 0x80000000) == 0)
      {
        v36 = (*(v30 + 16 * v12 + 4) - 1) / 2;
LABEL_29:
        v37 = v36 - v33;
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v31 = *(v30 + 16 * v29 + 4);
    if (a9)
    {
      v32 = (v31 - 1) / 2 + 1;
      goto LABEL_24;
    }

    v32 = v31 + 1;
  }

  v33 = *(v30 + 16 * a2 + 4);
  v34 = v33 + 1;
  v35 = v33 + 1 - v32;
  if ((v12 & 0x80000000) == 0)
  {
    v36 = *(v30 + 16 * v12 + 4);
    goto LABEL_29;
  }

LABEL_30:
  v37 = 0;
LABEL_31:
  WordLatticeLC::WordLatticeLC(v40, v48, v32, v35, v37, &v42);
  v39[0] = 0;
  v39[1] = 0;
  FstSearchLeafLatticeBackoff::buildLinkSegmentation(a1, v39, a3, v32, a9);
  if (v22)
  {
    FstSearchLeafLatticeBackoff::buildLinkSegmentation(a1, v39, v22, v34, a9);
  }

  v41 = WordLattice::findOrAddLinkSegSeqId(a7, v39, a8);
  Lattice<WordLatticeLC>::maybeCreateAndConnectLinkAvoidMultiLinks(a7, v11, v38, v40);
  DgnIArray<Utterance *>::~DgnIArray(v39);
  WordLatticeLC::~WordLatticeLC(v40);
}

void sub_262640290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  DgnIArray<Utterance *>::~DgnIArray(va);
  WordLatticeLC::~WordLatticeLC(va1);
  _Unwind_Resume(a1);
}

unint64_t FstSearchLeafLatticeBackoff::buildLinkSegmentation(unint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (a5)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = *(a3 + 20);
  if (*(a3 + 20))
  {
    v10 = result;
    v11 = 0;
    v12 = 0;
    v13 = *(*(result + 56) + 136);
    v14 = -1;
    do
    {
      v15 = *(*(v10 + 192) + 2 * (v11 + *(a3 + 16)));
      if (v15 != v14)
      {
        if (v12)
        {
          result = FstSearchLeafLatticeBackoff::addLinkSegment(v10, a2, v14, a4, v12, v13);
          a4 += v12;
          v6 = *(a3 + 20);
          v14 = v15;
          v12 = 0;
        }

        else
        {
          v14 = *(*(v10 + 192) + 2 * (v11 + *(a3 + 16)));
        }
      }

      ++v12;
      v11 += v5;
    }

    while (v11 < v6);
    if (v12)
    {

      return FstSearchLeafLatticeBackoff::addLinkSegment(v10, a2, v14, a4, v12, v13);
    }
  }

  return result;
}

unint64_t FstSearchLeafLatticeBackoff::addLinkSegment(unint64_t result, uint64_t a2, unsigned int a3, int a4, int a5, __int16 a6)
{
  v11 = result;
  v12 = *(a2 + 8);
  if (v12 == *(a2 + 12))
  {
    result = DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(a2, 1, 1);
    v12 = *(a2 + 8);
  }

  v13 = *a2 + 28 * v12;
  *v13 = -1;
  *(v13 + 8) = 0xFFFF;
  *(v13 + 20) = -16;
  LODWORD(v13) = *(a2 + 8);
  *(a2 + 8) = v13 + 1;
  v14 = *a2 + 28 * v13;
  *(v14 + 16) = a3;
  *(v14 + 20) = a4;
  *(v14 + 24) = a5;
  *(v14 + 12) = *(*(v11 + 208) + 4 * a3);
  v15 = *(*(v11 + 224) + 2 * a3);
  *v14 = a6;
  *(v14 + 2) = a6;
  *(v14 + 4) = v15;
  *(v14 + 6) = a6;
  *(v14 + 8) = a6;
  *(v14 + 10) = 0;
  return result;
}

uint64_t FstSearchLeafLatticeBackoff::beginTopRecSyncRecog(uint64_t this, VirtMap *a2)
{
  *(this + 112) = a2;
  if (*(this + 404) == 1)
  {
    return MiniFst::beginTopFstSyncRecog(this + 288);
  }

  return this;
}

uint64_t FstSearchLeafLatticeBackoff::endTopRecSyncRecog(FstSearchLeafLatticeBackoff *this)
{
  v1 = *(this + 14);
  *(this + 14) = 0;
  return v1;
}

uint64_t FstSearchLeafLatticeBackoff::getBestExitScore(FstSearchLeafLatticeBackoff *this)
{
  v21 = 0;
  v22 = 0;
  *(this + 69) = -1;
  v1 = *(this + 38);
  v2 = *(this + 62);
  if (v1 >= v2)
  {
    goto LABEL_19;
  }

  v4 = 0;
  v5 = 0;
  v6 = 32 * v1;
  do
  {
    v7 = *(this + 30) + v6;
    if (*(*(this + 5) + 160) == *(v7 + 4))
    {
      v8 = *(v7 + 8);
      if (v8 != -1 && *(*(this + 20) + 16 * v8 + 4) == *(this + 68))
      {
        if (v5 == HIDWORD(v22))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v21, 1, 1);
          v5 = v22;
          v4 = v21;
        }

        *(v4 + 4 * v5) = v8;
        v5 = v22 + 1;
        LODWORD(v22) = v22 + 1;
        v2 = *(this + 62);
      }
    }

    ++v1;
    v6 += 32;
  }

  while (v1 < v2);
  if (v5)
  {
    v9 = 0;
    v10 = *(this + 20);
    v11 = 1879048192;
    do
    {
      v12 = v10 + 16 * *(v4 + 4 * v9);
      v13 = *(v12 + 12);
      if (v13 >= 1)
      {
        v14 = *(v12 + 8);
        v15 = v13 + v14;
        v16 = *(this + 22);
        do
        {
          v17 = (v16 + 24 * v14);
          v18 = *v17;
          if (v11 > *v17)
          {
            *(this + 69) = v17[3];
            v11 = v18;
          }

          ++v14;
        }

        while (v14 < v15);
      }

      ++v9;
    }

    while (v9 != v5);
  }

  else
  {
LABEL_19:
    v11 = 1879048192;
  }

  if (v11 >= 20000)
  {
    v19 = 20000;
  }

  else
  {
    v19 = v11;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v21);
  return v19;
}

uint64_t FstSearchLeafLatticeBackoff::getBestScoreMaybeUpdateFstNode(FstSearchLeafLatticeBackoff *this, Node *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v2 = *(this + 62);
  if (v2)
  {
    v3 = *(this + 30);
    v4 = -1;
    v5 = 1879048192;
    do
    {
      if (v5 > *v3)
      {
        v4 = *(v3 + 12);
        v5 = *v3;
      }

      v3 += 32;
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

_DWORD *FstSearchLeafLatticeBackoff::seedTheory(FstSearchLeafLatticeBackoff *this, int a2, int a3, int a4, SearchStats *a5)
{
  if (a4 == -2)
  {
    v9 = *(this + 42) - 1;
  }

  else
  {
    v11 = *(this + 46);
    if (v11 == *(this + 47))
    {
      DgnArray<CWIDAC>::reallocElts(this + 176, 1, 1);
      v11 = *(this + 46);
    }

    v12 = *(this + 22) + 24 * v11;
    *(v12 + 4) = xmmword_26287F890;
    *(v12 + 20) = 0;
    *(this + 46) = v11 + 1;
    *v12 = a2;
    v13 = *(this + 42);
    if (v13 == *(this + 43))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 160, 1, 1);
      v13 = *(this + 42);
    }

    v14 = (*(this + 20) + 16 * v13);
    *v14 = a4;
    v14[1] = a3;
    v14[2] = v11;
    v14[3] = 1;
    v9 = *(this + 42);
    *(this + 42) = v9 + 1;
  }

  v15 = *(*(this + 5) + 144);
  v16 = *(this + 62);
  if (v16 == *(this + 63))
  {
    DgnArray<PrefilterResultFrame>::reallocElts(this + 240, 1, 1);
    v16 = *(this + 62);
  }

  v17 = *(this + 30) + 32 * v16;
  *v17 = a2;
  *(v17 + 4) = v15;
  *(v17 + 8) = v9;
  *(v17 + 12) = -2;
  *(v17 + 16) = 0;
  *(v17 + 22) = 0;
  LODWORD(v17) = *(this + 62) + 1;
  *(this + 62) = v17;
  *(this + 38) = v17;

  return FstSearchLeafLatticeBackoff::propagateNulls(this, 20000, a3, a5);
}

uint64_t FstSearchLeafLatticeBackoff::expandEmbFstHistory(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 276);
  if (v8 != -1)
  {
    v9 = result;
    v10 = (*(result + 160) + 16 * v8);
    for (i = *(*(result + 176) + 24 * v10[2] + 12); i != -1; v8 = v16)
    {
      v16 = i;
      result = v9[5];
      if (*v10 == 16777209)
      {
        v17 = (*(result + 174) << 25) | 0xFFFFF9;
      }

      else
      {
        result = ArcGraph::lexToCWID(result, *v10, a3, a4, a5, a6, a7, a8);
        v17 = result;
      }

      v18 = *(a2 + 8);
      if (v18 == *(a2 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
        v18 = *(a2 + 8);
      }

      *(*a2 + 4 * v18) = v17;
      ++*(a2 + 8);
      v19 = *(a6 + 8);
      if (v19 == *(a6 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a6, 1, 1);
        v19 = *(a6 + 8);
      }

      *(*a6 + 4 * v19) = v8;
      ++*(a6 + 8);
      v20 = v9[20];
      v21 = *(v20 + 16 * v8 + 4);
      v22 = *(a3 + 8);
      if (v22 == *(a3 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
        v22 = *(a3 + 8);
        v20 = v9[20];
      }

      *(*a3 + 4 * v22) = v21;
      ++*(a3 + 8);
      v23 = *(v9[22] + 24 * *(v20 + 16 * v8 + 8));
      v24 = *(a5 + 8);
      if (v24 == *(a5 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a5, 1, 1);
        v24 = *(a5 + 8);
      }

      *(*a5 + 4 * v24) = v23;
      ++*(a5 + 8);
      v10 = (v9[20] + 16 * v16);
      i = *(v9[22] + 24 * v10[2] + 12);
    }

    *a4 = *v10;
  }

  return result;
}

void FstSearchLeafLatticeBackoff::checkSearchParametersValidityForArcGraph(FstSearchLeafLatticeBackoff *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 5);
  if (*(v8 + 178) == 1)
  {
    v9 = a3;
    ArcGraph::ensureHeaderValid(*(this + 5), "Header", a3, a4, a5, a6, a7, a8);
    if (*(v8 + 202) == 1 && *(v8 + 188) != *(this + 35))
    {
      v16 = *(v8 + 188);
      v19 = *(this + 35);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", v12, v13, "SearchInterWordSilencePenalty");
    }

    if (*(v8 + 192) != *(this + 34))
    {
      v17 = *(v8 + 192);
      v20 = *(this + 34);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", v12, v13, "SearchPerWordPenalty");
    }

    if (*(v8 + 196) != *(*(**VocMgr::smpVocMgr + 8 * *(*(this + 5) + 174)) + 608))
    {
      v18 = *(v8 + 196);
      v21 = *(*(**VocMgr::smpVocMgr + 8 * *(*(this + 5) + 174)) + 608);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", v12, v13, "Voc");
    }

    v14 = *(v8 + 203);
    if (v9)
    {
      if (a2)
      {
        if ((*(v8 + 203) & 1) == 0)
        {
          return;
        }
      }

      else if (*(v8 + 203))
      {
        return;
      }

      v23 = *(v8 + 203);
      v15 = "DropAlternateFrames";
      goto LABEL_18;
    }

    if (a2 & 1) != 0 || (*(v8 + 203))
    {
      v22 = *(v8 + 203);
      v15 = "NoDecimation";
LABEL_18:
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", v12, v13, v15);
    }
  }
}

void FstSearchLeafLatticeBackoff::getHistory(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == -1)
  {
    *(a3 + 8) = 0;
  }

  else
  {
    v9 = a4;
    LODWORD(v11) = 0;
    v12 = a2;
    v13 = a2;
    do
    {
      v14 = (*(a1 + 160) + 16 * v13);
      if (*v14 == 16777209)
      {
        v11 = v11;
      }

      else
      {
        v11 = (v11 + 1);
      }

      v13 = *(*(a1 + 176) + 24 * v14[2] + 12);
    }

    while (v13 != -1);
    v15 = *(a3 + 12);
    if (v11 > v15)
    {
      DgnArray<PrefilterResultFrame>::reallocElts(a3, v11 - v15, 0);
    }

    v16 = *(a3 + 8);
    if (v16 < v11)
    {
      v17 = v11 - v16;
      v18 = *a3 + 32 * v16;
      do
      {
        *v18 = 0x3FFFFAFFFFFFLL;
        *(v18 + 8) = xmmword_26286CC40;
        *(v18 + 24) = 0x1F0000001FLL;
        v18 += 32;
        --v17;
      }

      while (v17);
    }

    *(a3 + 8) = v11;
    if (v11)
    {
      v19 = *(a1 + 160);
      v20 = -16;
      do
      {
        v21 = (v19 + 16 * v12);
        v22 = v21[1];
        if (*v21 == 16777209)
        {
          if (v9)
          {
            v20 = (v22 - 1) / 2 + 1;
          }

          else
          {
            v20 = v22 + 1;
          }
        }

        else
        {
          if (v9)
          {
            v22 = (v22 - 1) / 2;
          }

          ArcGraph::lexToCWIDAC(*(a1 + 40), *v21, a3, a4, a5, a6, a7, a8, v26);
          if (v20 == -16)
          {
            v23 = v22 + 1;
          }

          else
          {
            v23 = v20;
          }

          v24 = v26[1];
          v11 = (v11 - 1);
          v25 = *a3 + 32 * v11;
          *v25 = v26[0];
          *(v25 + 4) = v24;
          *(v25 + 8) = v27;
          *(v25 + 24) = v22 + 1;
          *(v25 + 28) = v23;
          v19 = *(a1 + 160);
          v20 = -16;
        }

        v12 = *(*(a1 + 176) + 24 * *(v19 + 16 * v12 + 8) + 12);
      }

      while (v12 != -1);
    }
  }
}

uint64_t FstSearchLeafLatticeBackoff::makePartialResult(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 8);
  if (v8 >= 1)
  {
    v9 = 112 * v8 - 112;
    do
    {
      (**(*a2 + v9))(*a2 + v9);
      v9 -= 112;
    }

    while (v9 != -112);
  }

  *(a2 + 8) = 0;
  BestTrace = FstSearchLeafLatticeBackoff::getBestTrace(a1, 0, 0, 1);
  if (BestTrace == -1)
  {
    return 1879048192;
  }

  v15 = BestTrace;
  FstSearchLeafLatticeBackoff::getHistory(a1, BestTrace, a3, a4, v11, v12, v13, v14);
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  if (*(a3 + 8))
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = *a3 + v16;
      v20 = *(v19 + 28);
      WordLatticeLC::WordLatticeLC(v24, v19, v18, *(v19 + 24) - v18, v20 - *(v19 + 24), v25);
      v21 = *(a2 + 8);
      if (v21 == *(a2 + 12))
      {
        DgnArray<WordLatticeLC>::reallocElts(a2, 1, 1);
        LODWORD(v21) = *(a2 + 8);
      }

      WordLatticeLC::WordLatticeLC((*a2 + 112 * v21), v24);
      ++*(a2 + 8);
      WordLatticeLC::~WordLatticeLC(v24);
      ++v17;
      v16 += 32;
      v18 = v20;
    }

    while (v17 < *(a3 + 8));
  }

  v22 = a1[20] + 16 * v15;
  return (*(a1[22] + 24 * *(v22 + 8)) + *(a1[11] + 4 * *(v22 + 4)));
}

int64x2_t FstSearchLeafLattice::advanceDeltas(FstSearchLeafLattice *this, int a2, int a3, SearchStats *a4, int a5)
{
  v126[0] = a2;
  v124 = 0u;
  v125 = 0u;
  SnapTime::recordTime(&v124, 1, 0, 0, 0);
  v97 = (this + 280);
  *(this + 70) = a3;
  v7 = *(this + 2);
  v8 = *(this + 62);
  if (v8)
  {
    LODWORD(v9) = 0;
    *&v102[8] = 0;
    *v102 = *(this + 2);
    do
    {
      v10 = *(this + 30);
      v103 = v9;
      v96 = *(v10 + 32 * v9 + 4);
      if (v8 <= v9 + 1)
      {
        v11 = v9 + 1;
      }

      else
      {
        v11 = v8;
      }

      v94 = v9;
      while (v11 - 1 != v9)
      {
        v9 = (v9 + 1);
        if (*(v10 + 32 * v9 + 4) != v96)
        {
          goto LABEL_11;
        }
      }

      LODWORD(v9) = v11;
LABEL_11:
      v12 = *(this + 5);
      if (*(v12 + 160) != v96)
      {
        v13 = *(v12 + 140) <= v96 || v94 >= v9;
        v95 = v9;
        if (!v13)
        {
          v14 = v9;
          v15 = v103;
          v107 = v9;
          do
          {
            v16 = *(this + 30) + 32 * v15;
            v17 = *v16;
            v18 = PelScoreCache::getScoreNoBackoff(*(this + 4), *(v16 + 12)) + v17;
            v19 = *(this + 70);
            if (v18 - v7 <= v19)
            {
              if (v19 > v18)
              {
                *v97 = v18;
              }

              v20 = *(this + 30) + 32 * v15;
              v21 = *(v20 + 4);
              v22 = *(v20 + 12);
              v23 = *(v20 + 14);
              v24 = *(v20 + 16);
              v25 = *(v20 + 28);
              v26 = *(this + 50);
              v27 = v26;
              if (*(v20 + 28))
              {
                v28 = *(v20 + 24);
                v29 = *(this + 24);
                v30 = v25;
                v27 = *(this + 50);
                do
                {
                  v31 = *(v29 + 2 * v28);
                  if (v27 == *(this + 51))
                  {
                    DgnPrimArray<short>::reallocElts(this + 192, 1, 1);
                    v27 = *(this + 50);
                    v29 = *(this + 24);
                  }

                  *(v29 + 2 * v27++) = v31;
                  *(this + 50) = v27;
                  ++v28;
                  --v30;
                }

                while (v30);
              }

              if (v27 == *(this + 51))
              {
                DgnPrimArray<short>::reallocElts(this + 192, 1, 1);
                v27 = *(this + 50);
              }

              *(*(this + 24) + 2 * v27) = v22;
              *(this + 50) = v27 + 1;
              v32 = *(this + 66);
              if (v32 == *(this + 67))
              {
                DgnArray<PrefilterResultFrame>::reallocElts(this + 256, 1, 1);
                v32 = *(this + 66);
              }

              v33 = *(this + 32) + 32 * v32;
              *v33 = v18;
              *(v33 + 4) = v21;
              *(v33 + 12) = v22;
              *(v33 + 14) = v23;
              *(v33 + 16) = v24;
              *(v33 + 24) = v26;
              *(v33 + 28) = v25 + 1;
              v34 = *(this + 66) + 1;
              *(this + 66) = v34;
              if (v15 == v103)
              {
                v35 = *&v102[4];
                if (*&v102[8] == 2 * *(this + 4))
                {
                  v35 = v34;
                }

                *&v102[4] = v35;
                ++*&v102[8];
              }

              v7 = *v102;
              LODWORD(v9) = v95;
              v14 = v107;
            }

            ++v15;
          }

          while (v15 != v14);
        }

        v36 = v9;
        v37 = v96;
        v98 = v9;
        do
        {
          v38 = *(this + 5);
          v39 = *(v38 + 152);
          v40 = *(v39 + 4 * v37);
          v41 = *(v38 + 140);
          v104 = *(v39 + 4 * (v37 + 1));
          if (v41 <= v104)
          {
            if (*(this + 404) == 1 && v41 <= v96)
            {
              v62 = (v40 & 0xFFFFF) <= 0xFFFF3 ? v40 & 0xFFFFF : v40 & 0xFFFFF | 0xF00000;
              if (v62 != 16777210)
              {
                DgnString::DgnString(&v121);
                ArcGraph::getNameAndHumanReadablePron(*(this + 5), v62, &v121, v63, v64, v65, v66, v67);
                v72 = &unk_26287F8B0;
                if (v121.i32[2])
                {
                  v72 = v121.i64[0];
                }

                xprintf("Seed from state %d score %d trace %d, %s\n", v68, v69, v70, v71, v96, *(*(this + 30) + 32 * v103), *(*(this + 30) + 32 * v103 + 8), v72);
                MiniFst::seed(this + 288, *(*(this + 30) + 32 * v103), *(*(this + 30) + 32 * v103 + 20), *(*(this + 30) + 32 * v103 + 8), v104);
                DgnString::~DgnString(&v121);
              }
            }
          }

          else
          {
            ScoreNoBackoff = PelScoreCache::getScoreNoBackoff(*(this + 4), *(v39 + 4 * v37));
            if (v94 < v9)
            {
              v43 = ScoreNoBackoff + ((v40 >> 20) & 0x3FF);
              v44 = v103;
              v101 = v37;
              v99 = (v40 >> 20) & 0x3FF;
              v100 = v43;
              do
              {
                v45 = *(this + 30) + 32 * v44;
                v46 = v43 + *v45;
                v47 = *(this + 70);
                if (v46 - v7 <= v47)
                {
                  v48 = v40;
                  if (v47 > v46)
                  {
                    *v97 = v46;
                  }

                  v108 = *(v45 + 14);
                  v49 = *(v45 + 16);
                  v105 = *(v45 + 8);
                  v106 = *(v45 + 20);
                  v50 = *(v45 + 28);
                  v51 = *(this + 50);
                  v52 = v51;
                  if (*(v45 + 28))
                  {
                    v53 = *(v45 + 24);
                    v54 = *(this + 24);
                    v55 = v50;
                    v52 = *(this + 50);
                    do
                    {
                      v56 = *(v54 + 2 * v53);
                      if (v52 == *(this + 51))
                      {
                        DgnPrimArray<short>::reallocElts(this + 192, 1, 1);
                        v52 = *(this + 50);
                        v54 = *(this + 24);
                      }

                      *(v54 + 2 * v52++) = v56;
                      *(this + 50) = v52;
                      ++v53;
                      --v55;
                    }

                    while (v55);
                  }

                  if (v52 == *(this + 51))
                  {
                    DgnPrimArray<short>::reallocElts(this + 192, 1, 1);
                    v52 = *(this + 50);
                  }

                  v40 = v48;
                  *(*(this + 24) + 2 * v52) = v48;
                  *(this + 50) = v52 + 1;
                  v57 = *(this + 66);
                  if (v57 == *(this + 67))
                  {
                    DgnArray<PrefilterResultFrame>::reallocElts(this + 256, 1, 1);
                    v57 = *(this + 66);
                  }

                  v58 = *(this + 32) + 32 * v57;
                  *v58 = v46;
                  *(v58 + 4) = v104;
                  *(v58 + 8) = v105;
                  *(v58 + 12) = v48;
                  *(v58 + 14) = v108;
                  *(v58 + 16) = v49 + v99;
                  *(v58 + 20) = v106;
                  *(v58 + 24) = v51;
                  *(v58 + 28) = v50 + 1;
                  v59 = *(this + 66) + 1;
                  *(this + 66) = v59;
                  v7 = *v102;
                  if (v44 == v103)
                  {
                    v60 = *&v102[4];
                    if (*&v102[8] == 2 * *(this + 4))
                    {
                      v60 = v59;
                    }

                    *&v102[4] = v60;
                    ++*&v102[8];
                  }

                  v36 = v98;
                  v43 = v100;
                  v37 = v101;
                }

                ++v44;
              }

              while (v44 != v36);
            }
          }

          v37 += 2;
          LODWORD(v9) = v95;
        }

        while ((v40 & 0x80000000) == 0);
        v8 = *(this + 62);
      }
    }

    while (v9 < v8);
    a3 = *v97;
  }

  else
  {
    *&v102[4] = 0;
  }

  v123 = a3 + v7;
  if (*(this + 404) == 1)
  {
    MiniFst::updateFrame(this + 288, v97, v7, a2);
  }

  v121 = 0u;
  v122 = 0u;
  SnapTime::recordTime(&v121, 1, 0, 0, 0);
  v121 = vsubq_s64(v121, v124);
  v122 = vsubq_s64(v122, v125);
  v73 = *(this + 13);
  v74 = vaddq_s64(v73[1], v122);
  *v73 = vaddq_s64(*v73, v121);
  v73[1] = v74;
  v119 = 0u;
  v120 = 0u;
  SnapTime::recordTime(&v119, 1, 0, 0, 0);
  if (*&v102[8] > (2 * *(this + 4)))
  {
    FstSearchLeafLatticeBackoff::applyCutoffOnEmitting(this, *&v102[4], &v123);
  }

  v117 = 0u;
  v118 = 0u;
  SnapTime::recordTime(&v117, 1, 0, 0, 0);
  v75 = vsubq_s64(v117, v119);
  v76 = *(this + 13);
  v77 = v76[3];
  v78 = vaddq_s64(v76[2], v75);
  v117 = v75;
  v118 = vsubq_s64(v118, v120);
  v79 = vaddq_s64(v77, v118);
  v76[2] = v78;
  v76[3] = v79;
  v115 = 0u;
  v116 = 0u;
  SnapTime::recordTime(&v115, 1, 0, 0, 0);
  FstSearchLeafLatticeBackoff::makeViterbiDecisionOnEmitting(this);
  v80 = *(this + 6);
  if (v80)
  {
    v81 = *(this + 62);
    if (v80 < v81)
    {
      mrec_nth_element<FstSearchLeafLatticeBackoffcmpTok>(*(this + 30), v80, v81);
    }
  }

  v113 = 0u;
  v114 = 0u;
  SnapTime::recordTime(&v113, 1, 0, 0, 0);
  v82 = vsubq_s64(v113, v115);
  v83 = *(this + 13);
  v84 = v83[5];
  v85 = vaddq_s64(v83[4], v82);
  v113 = v82;
  v114 = vsubq_s64(v114, v116);
  v86 = vaddq_s64(v84, v114);
  v83[4] = v85;
  v83[5] = v86;
  v111 = 0u;
  v112 = 0u;
  SnapTime::recordTime(&v111, 1, 0, 0, 0);
  *(this + 66) = 0;
  v87 = *(this + 62);
  *(this + 38) = v87;
  if (a4)
  {
    *(a4 + 2) += v87;
    if (*(a4 + 2) > v87)
    {
      LODWORD(v87) = *(a4 + 2);
    }

    *(a4 + 2) = v87;
  }

  if (*(this + 404) == 1)
  {
    FstSearchLeafLattice::seedFromMiniFst(this, v126);
  }

  if (a5)
  {
    FstSearchLeafLatticeBackoff::propagateNulls(this, v123, a2, a4);
  }

  *(this + 68) = a2;
  v109 = 0u;
  v110 = 0u;
  SnapTime::recordTime(&v109, 1, 0, 0, 0);
  v88 = *(this + 13);
  result = vaddq_s64(v88[6], vsubq_s64(v109, v111));
  v90 = vaddq_s64(v88[7], vsubq_s64(v110, v112));
  v88[6] = result;
  v88[7] = v90;
  return result;
}

uint64_t FstSearchLeafLattice::seedFromMiniFst(uint64_t this, int *a2)
{
  if (*(this + 404) == 1)
  {
    v2 = this;
    v3 = *(this + 312);
    if (v3 >= *(this + 20))
    {
      v3 = *(this + 20);
    }

    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = (*(v2 + 304) + 36 * v4);
        v6 = v5[4];
        v7 = v5[5];
        v9 = v5[6];
        v8 = v5[7];
        v45 = v5[7];
        v46 = *v5;
        v10 = v5[2];
        v47 = 0;
        v48 = 0;
        v43 = v7;
        v44 = v6;
        v42 = v9;
        if ((v10 & 0x80000000) != 0)
        {
          LODWORD(v14) = -2 - v10;
        }

        else
        {
          v11 = 0;
          v12 = 0;
          do
          {
            if (v12 == HIDWORD(v48))
            {
              DgnPrimArray<unsigned int>::reallocElts(&v47, 1, 1);
              v12 = v48;
              v11 = v47;
            }

            *(v11 + 4 * v12) = v10;
            v13 = v48;
            v12 = v48 + 1;
            LODWORD(v48) = v48 + 1;
            v10 = *(*(v2 + 288) + 36 * v10 + 8);
          }

          while ((v10 & 0x80000000) == 0);
          LODWORD(v14) = -2 - v10;
          if ((v13 & 0x80000000) == 0)
          {
            do
            {
              v15 = *(v47 + 4 * v13);
              v16 = *(v2 + 288);
              v17 = (v16 + 36 * v15);
              v18 = *v17;
              v19 = *(v17 + 2);
              v20 = *(v2 + 184);
              if (v20 == *(v2 + 188))
              {
                DgnArray<CWIDAC>::reallocElts(v2 + 176, 1, 1);
                v20 = *(v2 + 184);
                v16 = *(v2 + 288);
              }

              v21 = *(v2 + 176) + 24 * v20;
              *(v2 + 184) = v20 + 1;
              *v21 = v18;
              *(v21 + 4) = v19;
              *(v21 + 12) = v14;
              *(v21 + 16) = 0;
              *(v21 + 20) = 0;
              v22 = *(v16 + 36 * v15 + 28);
              v23 = *(v2 + 168);
              if (v23 == *(v2 + 172))
              {
                DgnArray<DgnPrimArray<double>>::reallocElts(v2 + 160, 1, 1);
                v23 = *(v2 + 168);
              }

              v24 = *(v2 + 160);
              v25 = v24 + 16 * v23;
              *v25 = v22;
              *(v25 + 8) = v20;
              *(v25 + 12) = 0;
              v14 = *(v2 + 168);
              *(v2 + 168) = v14 + 1;
              *(v24 + 16 * v14 + 12) = 1;
            }

            while (v13-- > 0);
          }
        }

        v27 = *(v2 + 184);
        if (v27 == *(v2 + 188))
        {
          DgnArray<CWIDAC>::reallocElts(v2 + 176, 1, 1);
          v27 = *(v2 + 184);
        }

        v28 = *(v2 + 176);
        *(v2 + 184) = v27 + 1;
        v29 = v28 + 24 * v27;
        *v29 = v46;
        *(v29 + 4) = v44;
        *(v29 + 8) = v43;
        *(v29 + 12) = v14;
        *(v29 + 16) = 0;
        *(v29 + 20) = 0;
        if (v45 == 16777213)
        {
          v30 = (*(v2 + 160) + 16 * v14);
          v31 = 16777209;
          if (*v30 == 16777209)
          {
            v27 = v30[2];
          }
        }

        else
        {
          v31 = v45;
        }

        v32 = *a2;
        v33 = *(v2 + 168);
        if (v33 == *(v2 + 172))
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(v2 + 160, 1, 1);
          v33 = *(v2 + 168);
        }

        v34 = *(v2 + 160);
        v35 = (v34 + 16 * v33);
        *v35 = v31;
        v35[1] = v32;
        v35[2] = v27;
        v35[3] = 0;
        v36 = *(v2 + 168);
        *(v2 + 168) = v36 + 1;
        *(v34 + 16 * v36 + 12) = 1;
        v37 = *(v2 + 248);
        if (v37 == *(v2 + 252))
        {
          DgnArray<PrefilterResultFrame>::reallocElts(v2 + 240, 1, 1);
          v37 = *(v2 + 248);
        }

        v38 = *(v2 + 240) + 32 * v37;
        *v38 = v46;
        *(v38 + 4) = v42;
        *(v38 + 8) = v36;
        *(v38 + 12) = -2;
        *(v38 + 16) = v44;
        *(v38 + 20) = v43;
        *(v38 + 24) = 0;
        *(v38 + 28) = 0;
        ++*(v2 + 248);
        this = DgnPrimArray<unsigned int>::~DgnPrimArray(&v47);
        ++v4;
        LODWORD(v39) = *(v2 + 312);
        v40 = *(v2 + 20);
        if (v39 >= v40)
        {
          v39 = v40;
        }

        else
        {
          v39 = v39;
        }
      }

      while (v4 < v39);
    }
  }

  return this;
}

void sub_262641A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t FstSearchLeafLattice::collectTraces(FstSearchLeafLattice *this)
{
  v2 = *(this + 42);
  v63 = 0;
  v62 = 0;
  if (v2)
  {
    v3 = MemChunkAlloc(4 * v2, 0);
    v4 = 0;
    v62 = v3;
    v63 = v2;
    do
    {
      *(v3 + v4++) = 0;
    }

    while (v4 < v63);
  }

  v5 = *(this + 62);
  if (v5)
  {
    v6 = 0;
    v7 = v62;
    v8 = (*(this + 30) + 8);
    do
    {
      v10 = *v8;
      v8 += 8;
      v9 = v10;
      if (v10 != -1)
      {
        *(v7 + v9) = 1;
        v5 = *(this + 62);
      }

      ++v6;
    }

    while (v6 < v5);
  }

  v11 = *(this + 42);
  if (!v11)
  {
    v60 = 0;
    v61 = 0;
LABEL_54:
    v23 = 0;
    *(this + 42) = 0;
    goto LABEL_55;
  }

  v12 = 0;
  v13 = v62;
  do
  {
    --v11;
    if (v12)
    {
      v12 = 1;
    }

    else if (*(*(this + 20) + 16 * v11) == 16777213)
    {
      v12 = 1;
      *(v13 + v11) = 1;
    }

    else
    {
      v12 = 0;
    }

    if (*(v13 + v11))
    {
      v14 = *(this + 20) + 16 * v11;
      v15 = *(v14 + 12);
      if (v15 >= 1)
      {
        v16 = *(v14 + 8);
        v17 = v15 + v16;
        v18 = *(this + 22);
        do
        {
          v19 = *(v18 + 24 * v16 + 12);
          if (v19 != -1)
          {
            *(v13 + v19) = 1;
          }

          ++v16;
        }

        while (v16 < v17);
      }
    }
  }

  while (v11);
  v20 = *(this + 42);
  v60 = 0;
  v61 = 0;
  if (!v20)
  {
    goto LABEL_54;
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  do
  {
    if (*(v62 + v21))
    {
      v24 = *(this + 20);
      if (v21 != v22)
      {
        *(v24 + 16 * v22) = *(v24 + 16 * v21);
        v24 = *(this + 20);
      }

      *(v24 + 16 * v22 + 8) = v23;
      v25 = v24 + 16 * v21;
      v26 = *(v25 + 8);
      v27 = (*(v25 + 12) + v26);
      if (v26 < v27)
      {
        v28 = *(this + 22);
        do
        {
          v29 = v23;
          if (v26 != v23)
          {
            v30 = (v28 + 24 * v26);
            v31 = v28 + 24 * v23;
            v32 = *v30;
            *(v31 + 14) = *(v30 + 14);
            *v31 = v32;
            v28 = *(this + 22);
          }

          v33 = v28 + 24 * v23;
          v36 = *(v33 + 12);
          v34 = (v33 + 12);
          v35 = v36;
          if (v36 != -1)
          {
            *v34 = *(v62 + v35);
          }

          v37 = v61;
          if (*(v28 + 24 * v29 + 20))
          {
            v38 = 0;
            v39 = v61;
            do
            {
              v40 = *(*(this + 24) + 2 * (v38 + *(v28 + 24 * v29 + 16)));
              if (v39 == HIDWORD(v61))
              {
                DgnPrimArray<short>::reallocElts(&v60, 1, 1);
                v39 = v61;
                v28 = *(this + 22);
              }

              *(v60 + 2 * v39++) = v40;
              LODWORD(v61) = v39;
              ++v38;
            }

            while (v38 < *(v28 + 24 * v29 + 20));
          }

          *(v28 + 24 * v29 + 16) = v37;
          v23 = v29 + 1;
          ++v26;
        }

        while (v26 != v27);
      }

      *(v62 + v21) = v22++;
      v20 = *(this + 42);
    }

    ++v21;
  }

  while (v21 < v20);
  v41 = *(this + 43);
  if (v22 > v41)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 160, v22 - v41, 0);
    v20 = *(this + 42);
  }

  if (v20 < v22)
  {
    v42 = v22 - v20;
    v43 = (*(this + 20) + 16 * v20);
    do
    {
      *v43++ = xmmword_26287F860;
      --v42;
    }

    while (v42);
  }

  *(this + 42) = v22;
  v44 = *(this + 47);
  if (v23 > v44)
  {
    DgnArray<CWIDAC>::reallocElts(this + 176, v23 - v44, 0);
  }

  v45 = *(this + 46);
  if (v45 < v23)
  {
    v46 = v23 - v45;
    v47 = (*(this + 22) + 24 * v45 + 20);
    do
    {
      *(v47 - 10) = xmmword_26287F850;
      *(v47 - 1) = 0;
      *v47 = 0;
      v47 += 12;
      --v46;
    }

    while (v46);
  }

LABEL_55:
  *(this + 46) = v23;
  v48 = *(this + 62);
  if (v48)
  {
    v49 = 0;
    v50 = v61;
    v51 = *(this + 30);
    do
    {
      if (*(v51 + 32 * v49 + 28))
      {
        v52 = 0;
        LODWORD(v53) = v50;
        do
        {
          v54 = *(*(this + 24) + 2 * (v52 + *(v51 + 32 * v49 + 24)));
          if (v53 == HIDWORD(v61))
          {
            DgnPrimArray<short>::reallocElts(&v60, 1, 1);
            LODWORD(v53) = v61;
            v51 = *(this + 30);
          }

          *(v60 + 2 * v53) = v54;
          v53 = (v53 + 1);
          LODWORD(v61) = v53;
          ++v52;
        }

        while (v52 < *(v51 + 32 * v49 + 28));
        v48 = *(this + 62);
      }

      else
      {
        v53 = v50;
      }

      *(v51 + 32 * v49++ + 24) = v50;
      v50 = v53;
    }

    while (v49 < v48);
  }

  else
  {
    LODWORD(v53) = v61;
  }

  DgnPrimArray<unsigned short>::copyArraySlice(this + 192, &v60, 0, v53);
  v55 = *(this + 62);
  if (v55)
  {
    v56 = v62;
    v57 = (*(this + 30) + 8);
    do
    {
      v58 = *v57;
      if (v58 != -1)
      {
        *v57 = *(v56 + v58);
      }

      v57 += 8;
      --v55;
    }

    while (v55);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v60);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v62);
}

void sub_262641F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a9);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a11);
  _Unwind_Resume(a1);
}

int64x2_t FstSearchLeafLattice::vite(int64x2_t **this, int a2, int a3, SearchStats *a4, int a5)
{
  FstSearchLeafLattice::advanceDeltas(this, a2, a3, a4, a5);
  v13 = 0u;
  v14 = 0u;
  SnapTime::recordTime(&v13, 1, 0, 0, 0);
  if (a2 >= 1)
  {
    v7 = *(this + 18);
    if (v7)
    {
      if (!(a2 % v7))
      {
        FstSearchLeafLattice::collectTraces(this);
      }
    }
  }

  v11 = 0u;
  v12 = 0u;
  SnapTime::recordTime(&v11, 1, 0, 0, 0);
  v8 = this[13];
  result = vaddq_s64(v8[14], vsubq_s64(v11, v13));
  v10 = vaddq_s64(v8[15], vsubq_s64(v12, v14));
  v8[14] = result;
  v8[15] = v10;
  return result;
}

_DWORD *FstSearchLeafLattice::reset(_DWORD *this)
{
  this[42] = 0;
  this[46] = 0;
  this[50] = 0;
  this[62] = 0;
  return this;
}

double FstSearchLeafLattice::doFrame(int64x2_t **this, int a2, int a3, SearchStats *a4, int a5)
{
  if (a3 >= 20000)
  {
    a3 = 20000;
  }

  *&result = FstSearchLeafLattice::vite(this, a2, a3, a4, a5).u64[0];
  return result;
}

uint64_t FstSearchLeafLattice::beginTopRecPassSyncRecog(FstSearchLeafLattice *this, PelScorer *a2, const ArcGraph *a3)
{
  result = SearchItf::beginTopRecPassSyncRecogBase(this, a2);
  if (a3)
  {
    MiniFst::init(this + 288, a3, *(this + 4));
    result = ArcGraph::findBackoffState(*(this + 5));
    *(this + 100) = result;
    *(this + 404) = 1;
  }

  return result;
}

uint64_t FstSearchLeafLattice::endTopRecPassSyncRecog(FstSearchLeafLattice *this)
{
  v10 = 0u;
  v11 = 0u;
  SnapTime::recordTime(&v10, 1, 0, 0, 0);
  v8 = 0u;
  v9 = 0u;
  SnapTime::recordTime(&v8, 1, 0, 0, 0);
  v2 = vsubq_s64(v8, v10);
  v3 = *(this + 13);
  v4 = v3[13];
  v5 = vaddq_s64(v3[12], v2);
  v8 = v2;
  v9 = vsubq_s64(v9, v11);
  v6 = vaddq_s64(v4, v9);
  v3[12] = v5;
  v3[13] = v6;
  *(this + 70) = 1879048192;
  return SearchItf::endTopRecPassSyncRecogBase(this);
}

void FstSearchLeafLattice::printSize(FstSearchLeafLattice *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2950, &v126);
  if (v127)
  {
    v15 = v126;
  }

  else
  {
    v15 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, v12, v13, v14, a3, &unk_26287F8B0, a3, &unk_26287F8B0, v15);
  DgnString::~DgnString(&v126);
  if (a2 != -1)
  {
    xlprintf("%d ", v16, v17, v18, v19, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v16, v17, v18, v19, a3, &unk_26287F8B0);
  v20 = (a3 + 1);
  v21 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2952, &v126);
  if (v127)
  {
    v26 = v126;
  }

  else
  {
    v26 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v22, v23, v24, v25, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v26, 4, 4, 0);
  DgnString::~DgnString(&v126);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2954, &v126);
  if (v127)
  {
    v31 = v126;
  }

  else
  {
    v31 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v27, v28, v29, v30, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v31, 4, 4, 0);
  DgnString::~DgnString(&v126);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2955, &v126);
  if (v127)
  {
    v36 = v126;
  }

  else
  {
    v36 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, v33, v34, v35, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v36, 4, 4, 0);
  v122 = a2;
  DgnString::~DgnString(&v126);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2956, &v126);
  if (v127)
  {
    v41 = v126;
  }

  else
  {
    v41 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, v38, v39, v40, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v41, 4, 4, 0);
  DgnString::~DgnString(&v126);
  *a4 += 4;
  *a5 += 4;
  v42 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v42 = 12;
  }

  v43 = *(this + 42);
  v44 = 16 * v43;
  if (v43 <= 0)
  {
    v44 = 0;
  }

  v45 = v44 + v42;
  v46 = v44 + v42 + 16 * (*(this + 43) - v43);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2957, &v126);
  if (v127)
  {
    v51 = v126;
  }

  else
  {
    v51 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v47, v48, v49, v50, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v51, v46, v45, 0);
  DgnString::~DgnString(&v126);
  *a4 += v46;
  *a5 += v45;
  v52 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v52 = 12;
  }

  v53 = *(this + 46);
  v54 = 22 * v53;
  if (v53 <= 0)
  {
    v54 = 0;
  }

  v55 = v54 + v52;
  v56 = v54 + v52 + 22 * (*(this + 47) - v53);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2959, &v126);
  if (v127)
  {
    v61 = v126;
  }

  else
  {
    v61 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v57, v58, v59, v60, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v61, v56, v55, 0);
  v121 = a3;
  DgnString::~DgnString(&v126);
  *a4 += v56;
  *a5 += v55;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v62 = 12;
  }

  else
  {
    v62 = 16;
  }

  v63 = *(this + 50);
  v64 = *(this + 51);
  if (v64 >= v63)
  {
    v65 = 0;
    if (v63 > 0)
    {
      v62 += 2 * (v63 - 1) + 2;
    }

    v66 = v62 + 2 * (v64 - v63);
  }

  else
  {
    v65 = 2 * v63;
    v66 = v62;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2961, &v126);
  if (v127)
  {
    v71 = v126;
  }

  else
  {
    v71 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v67, v68, v69, v70, v20, &unk_26287F8B0, v21, v21, v71, v66, v62, v65);
  DgnString::~DgnString(&v126);
  *a4 += v66;
  *a5 += v62;
  *a6 += v65;
  v72 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v72 = 12;
  }

  v73 = *(this + 62);
  v74 = 28 * v73;
  if (v73 <= 0)
  {
    v74 = 0;
  }

  v75 = v74 + v72;
  v76 = v74 + v72 + 28 * (*(this + 63) - v73);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2964, &v126);
  if (v127)
  {
    v81 = v126;
  }

  else
  {
    v81 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v77, v78, v79, v80, v20, &unk_26287F8B0, v21, v21, v81, v76, v75, 0);
  DgnString::~DgnString(&v126);
  *a4 += v76;
  *a5 += v75;
  v82 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v82 = 12;
  }

  v83 = *(this + 66);
  v84 = 28 * v83;
  if (v83 <= 0)
  {
    v84 = 0;
  }

  v85 = v84 + v82;
  v86 = v84 + v82 + 28 * (*(this + 67) - v83);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2966, &v126);
  if (v127)
  {
    v91 = v126;
  }

  else
  {
    v91 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v87, v88, v89, v90, v20, &unk_26287F8B0, v21, v21, v91, v86, v85, 0);
  DgnString::~DgnString(&v126);
  *a4 += v86;
  *a5 += v85;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2968, &v126);
  if (v127)
  {
    v96 = v126;
  }

  else
  {
    v96 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v92, v93, v94, v95, v20, &unk_26287F8B0, v21, v21, v96, 4, 4, 0);
  DgnString::~DgnString(&v126);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2970, &v126);
  if (v127)
  {
    v101 = v126;
  }

  else
  {
    v101 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v97, v98, v99, v100, v20, &unk_26287F8B0, v21, v21, v101, 4, 4, 0);
  DgnString::~DgnString(&v126);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2972, &v126);
  if (v127)
  {
    v106 = v126;
  }

  else
  {
    v106 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v102, v103, v104, v105, v20, &unk_26287F8B0, v21, v21, v106, 4, 4, 0);
  DgnString::~DgnString(&v126);
  *a4 += 4;
  *a5 += 4;
  v107 = sizeObject(this + 288, 0);
  v108 = sizeObject(this + 288, 1);
  v109 = sizeObject(this + 288, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2974, &v126);
  if (v127)
  {
    v114 = v126;
  }

  else
  {
    v114 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v110, v111, v112, v113, v20, &unk_26287F8B0, v21, v21, v114, v107, v108, v109);
  DgnString::~DgnString(&v126);
  *a4 += v107;
  *a5 += v108;
  *a6 += v109;
  v124 = 0;
  v125 = 0;
  SearchItf::printSize(this, v122, v20, &v125, &v124, &v124);
  *a4 += v125;
  *a5 += v124;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2985, &v126);
  if (v127)
  {
    v119 = v126;
  }

  else
  {
    v119 = &unk_26287F8B0;
  }

  v120 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v115, v116, v117, v118, v121, &unk_26287F8B0, (35 - v121), (35 - v121), v119, *a4, *a5, *a6);
  DgnString::~DgnString(&v126);
}

BOOL FstSearchLeafLattice::findBestPath(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v8 = *(a1 + 168);
  if (v8)
  {
    v9 = *(a3 + 8) == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    *a3 = MemChunkAlloc(*(a1 + 168), 0);
    *(a3 + 8) = v8;
  }

  if (v8)
  {
    v10 = *(a2 + 8) == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    *a2 = MemChunkAlloc(v8, 0);
    *(a2 + 8) = v8;
LABEL_14:
    v11 = 0;
    do
    {
      *(*a2 + v11) = 0;
      *(*a3 + v11++) = 0;
    }

    while (v8 != v11);
    goto LABEL_16;
  }

  if (v8)
  {
    goto LABEL_14;
  }

LABEL_16:
  BestTrace = FstSearchLeafLatticeBackoff::getBestTrace(a1, a2, a3, 0);
  *a4 = 1879048192;
  if (BestTrace == -1)
  {
    return 0;
  }

  v13 = *(a1 + 160) + 16 * BestTrace;
  LODWORD(v13) = *(*(a1 + 176) + 24 * *(v13 + 8)) + *(*(a1 + 88) + 4 * *(v13 + 4));
  *a4 = v13;
  return v13 != 1879048192;
}

uint64_t FstSearchLeafLattice::buildWordLattice(unint64_t a1, unint64_t a2, void *a3, void *a4, unsigned __int8 a5)
{
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v25 = 0;
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v24, *(a1 + 168));
  v8 = MemChunkAlloc(0x28uLL, 0);
  HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::HashProbeKEV(v8, 0, 128);
  v8[4] = a2;
  FstSearchLeafLatticeBackoff::createLatticeNodes(a1, &v27, &v25, a2, v24, a3, a4);
  v21 = *(a1 + 168);
  if (v21)
  {
    v9 = 0;
    v10 = v26;
    do
    {
      if (*(*a3 + v9))
      {
        v11 = (*(a1 + 160) + 16 * v9);
        if (*v11 != 16777209 && v11[3] >= 1)
        {
          v12 = v11[2];
          do
          {
            v13 = *(a1 + 176) + 24 * v12;
            v14 = *(v13 + 12);
            if (v14 == -1)
            {
              v15 = 0;
            }

            else
            {
              v15 = (v10 - *(v27 + v14));
            }

            v16 = *(v25 + 4 * v15);
            if (*(*a4 + v9) == 1)
            {
              FstSearchLeafLattice::createLatticeLink(a1, v9, v13, 0xFFFFFFFFLL, v16, *(v25 + 4 * (v10 - *(v27 + v9))), a2, v8, a5);
            }

            v17 = v24[0] + 16 * v9;
            if (*(v17 + 8))
            {
              v18 = 0;
              do
              {
                v19 = *(*v17 + 4 * v18);
                FstSearchLeafLattice::createLatticeLink(a1, v9, v13, v19, v16, *(v25 + 4 * (v10 - *(v27 + v19))), a2, v8, a5);
                ++v18;
                v17 = v24[0] + 16 * v9;
              }

              while (v18 < *(v17 + 8));
            }

            ++v12;
          }

          while (v12 < *(*(a1 + 160) + 16 * v9 + 12) + *(*(a1 + 160) + 16 * v9 + 8));
        }
      }

      ++v9;
    }

    while (v9 != v21);
  }

  DgnDelete<HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>>(v8);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v24);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v25);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v27);
}

void sub_262642CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void FstSearchLeafLattice::createLatticeLink(unint64_t a1, unsigned int a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v38 = a6;
  v11 = a5;
  v12 = a4;
  v16 = *(a1 + 160);
  if ((a4 & 0x80000000) != 0 || (v17 = v16 + 16 * a4, v18 = *(v17 + 12), v18 < 1))
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
      if (*(v21 + 24 * v19 + 12) == a2)
      {
        v22 = (v21 + 24 * v19);
      }

      else
      {
        v22 = 0;
      }

      ++v19;
    }

    while (v19 < v20 && !v22);
  }

  ArcGraph::lexToCWIDAC(*(a1 + 40), *(v16 + 16 * a2), a3, a4, a5, a6, a7, a8, v48);
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

  if (v48[0] >> 25 == 126)
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

  v42 = v26;
  v43 = 0;
  v44 = v25;
  v45 = v27;
  v46 = 0;
  v47 = v28;
  v29 = a3[3];
  v30 = *(a1 + 160);
  if (v29 == -1)
  {
    v32 = 0;
    if (a9)
    {
LABEL_24:
      v33 = (*(v30 + 16 * a2 + 4) - 1) / 2;
      v34 = v33 + 1;
      v35 = v33 + 1 - v32;
      if ((v12 & 0x80000000) == 0)
      {
        v36 = (*(v30 + 16 * v12 + 4) - 1) / 2;
LABEL_29:
        v37 = v36 - v33;
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v31 = *(v30 + 16 * v29 + 4);
    if (a9)
    {
      v32 = (v31 - 1) / 2 + 1;
      goto LABEL_24;
    }

    v32 = v31 + 1;
  }

  v33 = *(v30 + 16 * a2 + 4);
  v34 = v33 + 1;
  v35 = v33 + 1 - v32;
  if ((v12 & 0x80000000) == 0)
  {
    v36 = *(v30 + 16 * v12 + 4);
    goto LABEL_29;
  }

LABEL_30:
  v37 = 0;
LABEL_31:
  WordLatticeLC::WordLatticeLC(v40, v48, v32, v35, v37, &v42);
  v39[0] = 0;
  v39[1] = 0;
  FstSearchLeafLatticeBackoff::buildLinkSegmentation(a1, v39, a3, v32, a9);
  if (v22)
  {
    FstSearchLeafLatticeBackoff::buildLinkSegmentation(a1, v39, v22, v34, a9);
  }

  v41 = WordLattice::findOrAddLinkSegSeqId(a7, v39, a8);
  Lattice<WordLatticeLC>::maybeCreateAndConnectLinkAvoidMultiLinks(a7, v11, v38, v40);
  DgnIArray<Utterance *>::~DgnIArray(v39);
  WordLatticeLC::~WordLatticeLC(v40);
}

void sub_262642F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  DgnIArray<Utterance *>::~DgnIArray(va);
  WordLatticeLC::~WordLatticeLC(va1);
  _Unwind_Resume(a1);
}

uint64_t FstSearchLeafLattice::beginTopRecSyncRecog(uint64_t this, VirtMap *a2)
{
  *(this + 112) = a2;
  if (*(this + 404) == 1)
  {
    return MiniFst::beginTopFstSyncRecog(this + 288);
  }

  return this;
}

uint64_t FstSearchLeafLattice::endTopRecSyncRecog(FstSearchLeafLattice *this)
{
  v1 = *(this + 14);
  *(this + 14) = 0;
  return v1;
}

uint64_t FstSearchLeafLattice::getBestExitScore(FstSearchLeafLattice *this)
{
  v21 = 0;
  v22 = 0;
  *(this + 69) = -1;
  v1 = *(this + 38);
  v2 = *(this + 62);
  if (v1 >= v2)
  {
    goto LABEL_19;
  }

  v4 = 0;
  v5 = 0;
  v6 = 32 * v1;
  do
  {
    v7 = *(this + 30) + v6;
    if (*(*(this + 5) + 160) == *(v7 + 4))
    {
      v8 = *(v7 + 8);
      if (v8 != -1 && *(*(this + 20) + 16 * v8 + 4) == *(this + 68))
      {
        if (v5 == HIDWORD(v22))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v21, 1, 1);
          v5 = v22;
          v4 = v21;
        }

        *(v4 + 4 * v5) = v8;
        v5 = v22 + 1;
        LODWORD(v22) = v22 + 1;
        v2 = *(this + 62);
      }
    }

    ++v1;
    v6 += 32;
  }

  while (v1 < v2);
  if (v5)
  {
    v9 = 0;
    v10 = *(this + 20);
    v11 = 1879048192;
    do
    {
      v12 = v10 + 16 * *(v4 + 4 * v9);
      v13 = *(v12 + 12);
      if (v13 >= 1)
      {
        v14 = *(v12 + 8);
        v15 = v13 + v14;
        v16 = *(this + 22);
        do
        {
          v17 = (v16 + 24 * v14);
          v18 = *v17;
          if (v11 > *v17)
          {
            *(this + 69) = v17[3];
            v11 = v18;
          }

          ++v14;
        }

        while (v14 < v15);
      }

      ++v9;
    }

    while (v9 != v5);
  }

  else
  {
LABEL_19:
    v11 = 1879048192;
  }

  if (v11 >= 20000)
  {
    v19 = 20000;
  }

  else
  {
    v19 = v11;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v21);
  return v19;
}

uint64_t FstSearchLeafLattice::getBestScoreMaybeUpdateFstNode(FstSearchLeafLattice *this, Node *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v2 = *(this + 62);
  if (v2)
  {
    v3 = *(this + 30);
    v4 = -1;
    v5 = 1879048192;
    do
    {
      if (v5 > *v3)
      {
        v4 = *(v3 + 12);
        v5 = *v3;
      }

      v3 += 32;
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

_DWORD *FstSearchLeafLattice::seedTheory(FstSearchLeafLattice *this, int a2, int a3, int a4, SearchStats *a5)
{
  if (a4 == -2)
  {
    v9 = *(this + 42) - 1;
  }

  else
  {
    v11 = *(this + 46);
    if (v11 == *(this + 47))
    {
      DgnArray<CWIDAC>::reallocElts(this + 176, 1, 1);
      v11 = *(this + 46);
    }

    v12 = *(this + 22) + 24 * v11;
    *(v12 + 4) = xmmword_26287F890;
    *(v12 + 20) = 0;
    *(this + 46) = v11 + 1;
    *v12 = a2;
    v13 = *(this + 42);
    if (v13 == *(this + 43))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 160, 1, 1);
      v13 = *(this + 42);
    }

    v14 = (*(this + 20) + 16 * v13);
    *v14 = a4;
    v14[1] = a3;
    v14[2] = v11;
    v14[3] = 1;
    v9 = *(this + 42);
    *(this + 42) = v9 + 1;
  }

  v15 = *(*(this + 5) + 144);
  v16 = *(this + 62);
  if (v16 == *(this + 63))
  {
    DgnArray<PrefilterResultFrame>::reallocElts(this + 240, 1, 1);
    v16 = *(this + 62);
  }

  v17 = *(this + 30) + 32 * v16;
  *v17 = a2;
  *(v17 + 4) = v15;
  *(v17 + 8) = v9;
  *(v17 + 12) = -2;
  *(v17 + 16) = 0;
  *(v17 + 22) = 0;
  LODWORD(v17) = *(this + 62) + 1;
  *(this + 62) = v17;
  *(this + 38) = v17;

  return FstSearchLeafLatticeBackoff::propagateNulls(this, 20000, a3, a5);
}

uint64_t FstSearchLeafLattice::expandEmbFstHistory(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 276);
  if (v8 != -1)
  {
    v9 = result;
    v10 = (*(result + 160) + 16 * v8);
    for (i = *(*(result + 176) + 24 * v10[2] + 12); i != -1; v8 = v16)
    {
      v16 = i;
      result = v9[5];
      if (*v10 == 16777209)
      {
        v17 = (*(result + 174) << 25) | 0xFFFFF9;
      }

      else
      {
        result = ArcGraph::lexToCWID(result, *v10, a3, a4, a5, a6, a7, a8);
        v17 = result;
      }

      v18 = *(a2 + 8);
      if (v18 == *(a2 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
        v18 = *(a2 + 8);
      }

      *(*a2 + 4 * v18) = v17;
      ++*(a2 + 8);
      v19 = *(a6 + 8);
      if (v19 == *(a6 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a6, 1, 1);
        v19 = *(a6 + 8);
      }

      *(*a6 + 4 * v19) = v8;
      ++*(a6 + 8);
      v20 = v9[20];
      v21 = *(v20 + 16 * v8 + 4);
      v22 = *(a3 + 8);
      if (v22 == *(a3 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
        v22 = *(a3 + 8);
        v20 = v9[20];
      }

      *(*a3 + 4 * v22) = v21;
      ++*(a3 + 8);
      v23 = *(v9[22] + 24 * *(v20 + 16 * v8 + 8));
      v24 = *(a5 + 8);
      if (v24 == *(a5 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a5, 1, 1);
        v24 = *(a5 + 8);
      }

      *(*a5 + 4 * v24) = v23;
      ++*(a5 + 8);
      v10 = (v9[20] + 16 * v16);
      i = *(v9[22] + 24 * v10[2] + 12);
    }

    *a4 = *v10;
  }

  return result;
}

void FstSearchLeafLattice::checkSearchParametersValidityForArcGraph(FstSearchLeafLattice *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 5);
  if (*(v8 + 178) == 1)
  {
    v9 = a3;
    ArcGraph::ensureHeaderValid(*(this + 5), "Header", a3, a4, a5, a6, a7, a8);
    if (*(v8 + 202) == 1 && *(v8 + 188) != *(this + 35))
    {
      v16 = *(v8 + 188);
      v19 = *(this + 35);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", v12, v13, "SearchInterWordSilencePenalty");
    }

    if (*(v8 + 192) != *(this + 34))
    {
      v17 = *(v8 + 192);
      v20 = *(this + 34);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", v12, v13, "SearchPerWordPenalty");
    }

    if (*(v8 + 196) != *(*(**VocMgr::smpVocMgr + 8 * *(*(this + 5) + 174)) + 608))
    {
      v18 = *(v8 + 196);
      v21 = *(*(**VocMgr::smpVocMgr + 8 * *(*(this + 5) + 174)) + 608);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", v12, v13, "Voc");
    }

    v14 = *(v8 + 203);
    if (v9)
    {
      if (a2)
      {
        if ((*(v8 + 203) & 1) == 0)
        {
          return;
        }
      }

      else if (*(v8 + 203))
      {
        return;
      }

      v23 = *(v8 + 203);
      v15 = "DropAlternateFrames";
      goto LABEL_18;
    }

    if (a2 & 1) != 0 || (*(v8 + 203))
    {
      v22 = *(v8 + 203);
      v15 = "NoDecimation";
LABEL_18:
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", v12, v13, v15);
    }
  }
}

uint64_t FstSearchLeafLattice::makePartialResult(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 8);
  if (v8 >= 1)
  {
    v9 = 112 * v8 - 112;
    do
    {
      (**(*a2 + v9))(*a2 + v9);
      v9 -= 112;
    }

    while (v9 != -112);
  }

  *(a2 + 8) = 0;
  BestTrace = FstSearchLeafLatticeBackoff::getBestTrace(a1, 0, 0, 1);
  if (BestTrace == -1)
  {
    return 1879048192;
  }

  v15 = BestTrace;
  FstSearchLeafLatticeBackoff::getHistory(a1, BestTrace, a3, a4, v11, v12, v13, v14);
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  if (*(a3 + 8))
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = *a3 + v16;
      v20 = *(v19 + 28);
      WordLatticeLC::WordLatticeLC(v24, v19, v18, *(v19 + 24) - v18, v20 - *(v19 + 24), v25);
      v21 = *(a2 + 8);
      if (v21 == *(a2 + 12))
      {
        DgnArray<WordLatticeLC>::reallocElts(a2, 1, 1);
        LODWORD(v21) = *(a2 + 8);
      }

      WordLatticeLC::WordLatticeLC((*a2 + 112 * v21), v24);
      ++*(a2 + 8);
      WordLatticeLC::~WordLatticeLC(v24);
      ++v17;
      v16 += 32;
      v18 = v20;
    }

    while (v17 < *(a3 + 8));
  }

  v22 = a1[20] + 16 * v15;
  return (*(a1[22] + 24 * *(v22 + 8)) + *(a1[11] + 4 * *(v22 + 4)));
}

void FstSearchLatticeDurationBackoff::FstSearchLatticeDurationBackoff(FstSearchLatticeDurationBackoff *this, const int *a2, const int *a3)
{
  SearchItf::SearchItf(this);
  *v5 = &unk_287524370;
  *(v5 + 136) = *a2;
  *(v5 + 140) = *a3;
  *(v5 + 176) = 0u;
  *(v5 + 192) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 232) = 0u;
  *(v5 + 216) = 0u;
  *(v5 + 248) = -1;
  *(v5 + 256) = 1879048192;
  *(v5 + 312) = 0u;
  *(v5 + 328) = 0u;
  *(v5 + 280) = 0u;
  *(v5 + 296) = 0u;
  *(v5 + 264) = 0u;
  *(v5 + 380) = 0;
}

uint64_t FstSearchLatticeDurationBackoff::maybeInitDurModel(FstSearchLatticeDurationBackoff *this, const PicMgr *a2, int a3)
{
  v15 = 0;
  v16 = 0;
  PicMgr::getPelDurIdMap(a2, &v15);
  if (a3 == 1)
  {
    v6 = 56;
  }

  else
  {
    v6 = 72;
  }

  v7 = v16;
  v8 = *(this + 51);
  if (v16 <= v8)
  {
    *(this + 50) = v16;
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
    DgnPrimArray<short>::reallocElts(this + 192, v16 - v8, 0);
    *(this + 50) = v7;
  }

  v9 = 0;
  v10 = v15;
  v11 = *(this + 24);
  do
  {
    if (!v9 || (v12 = *(v10 + 2 * v9), v12 == 0xFFFF))
    {
      v13 = 0;
    }

    else
    {
      v13 = *(*(a2 + v6) + 2 * v12);
    }

    *(v11 + 2 * v9++) = v13;
  }

  while (v7 != v9);
LABEL_13:
  *(this + 208) = *(a2 + 8);
  *(this + 53) = *(a2 + 3);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v15);
}

int64x2_t FstSearchLatticeDurationBackoff::advanceDeltas(FstSearchLatticeDurationBackoff *this, int a2, int a3, SearchStats *a4, int a5)
{
  v142[0] = a2;
  v140 = 0u;
  v141 = 0u;
  SnapTime::recordTime(&v140, 1, 0, 0, 0);
  v113 = (this + 256);
  *(this + 64) = a3;
  v7 = *(this + 2);
  v8 = *(this + 56);
  if (v8)
  {
    v9 = 0;
    v114 = 0;
    v115 = 0;
    v104 = *(this + 53);
    v106 = *(this + 208);
    v121 = this;
    v122 = *(this + 2);
    do
    {
      v10 = v9;
      v124 = 32 * v9;
      v11 = *(this + 27) + v124;
      v12 = *(v11 + 4);
      if (v8 <= v9 + 1)
      {
        ++v9;
      }

      else
      {
        v9 = v8;
      }

      v108 = v9 - 1;
      v13 = (v11 + 36);
      v14 = 1;
      while (v10 + v14 < v8)
      {
        v15 = *v13;
        v13 += 8;
        ++v14;
        if (v15 != v12)
        {
          v108 = v10 + v14 - 2;
          v9 = v10 + v14 - 1;
          break;
        }
      }

      v16 = *(this + 5);
      if (*(v16 + 160) != v12)
      {
        v17 = v108;
        v18 = *(v16 + 140) <= v12 || v10 > v108;
        v107 = v9;
        v109 = v10;
        v110 = v12;
        if (!v18)
        {
          v19 = 0;
          v20 = v108 - v10 + 1;
          do
          {
            if (*(this + 19) + *(this + 64) >= 5000)
            {
              v21 = 5000;
            }

            else
            {
              v21 = *(this + 19) + *(this + 64);
            }

            ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(this + 4), *(*(this + 27) + v124 + v19 + 12), *(*(this + 27) + v124 + v19), v21);
            v23 = *(this + 27) + v124 + v19;
            v24 = *(v23 + 12);
            v25 = *(v23 + 24);
            v26 = v106;
            if (v25 >= 1)
            {
              v26 = v106 - v25;
            }

            v27 = v26 & ((v25 - v106) >> 31);
            if (*(v23 + 12))
            {
              v28 = v25 - v106;
            }

            else
            {
              v28 = *(v23 + 24);
            }

            if (*(v23 + 12))
            {
              v29 = v27 + *(v23 + 28);
            }

            else
            {
              v29 = *(v23 + 28);
            }

            if (*(v23 + 12))
            {
              v30 = v27;
            }

            else
            {
              v30 = 0;
            }

            v31 = v30 + ScoreAllowBackoff_updateNodeInSequence;
            if (v30 + ScoreAllowBackoff_updateNodeInSequence - v122 <= *v113)
            {
              v32 = *(v23 + 4);
              v33 = *(v23 + 14);
              v34 = *(v23 + 16);
              if (*v113 > v31)
              {
                *v113 = v31;
              }

              v35 = *(v121 + 60);
              if (v35 == *(v121 + 61))
              {
                DgnArray<PrefilterResultFrame>::reallocElts(v121 + 232, 1, 1);
                v35 = *(v121 + 60);
              }

              v36 = *(v121 + 29) + 32 * v35;
              *v36 = v31;
              *(v36 + 4) = v32;
              *(v36 + 12) = v24;
              *(v36 + 14) = v33;
              *(v36 + 16) = v34;
              *(v36 + 24) = v28;
              *(v36 + 28) = v29;
              v37 = *(v121 + 60) + 1;
              *(v121 + 60) = v37;
              this = v121;
              if (!v19)
              {
                v38 = v114;
                if (v115 == 2 * *(v121 + 4))
                {
                  v38 = v37;
                }

                v114 = v38;
                ++v115;
              }

              v10 = v109;
            }

            else
            {
              this = v121;
            }

            v12 = v110;
            v17 = v108;
            v19 += 32;
            --v20;
          }

          while (v20);
        }

        v105 = v17 - v10 + 1;
        v39 = v12;
        v7 = v122;
        do
        {
          v40 = *(this + 5);
          v41 = *(v40 + 152);
          v42 = *(v41 + 4 * v39);
          v43 = *(v40 + 140);
          v123 = *(v41 + 4 * (v39 + 1));
          v111 = v39;
          if (v43 <= v123)
          {
            if (*(this + 380) == 1 && v43 <= v12)
            {
              v72 = (v42 & 0xFFFFF) <= 0xFFFF3 ? v42 & 0xFFFFF : v42 & 0xFFFFF | 0xF00000;
              if (v72 != 16777210)
              {
                DgnString::DgnString(&v137);
                ArcGraph::getNameAndHumanReadablePron(*(this + 5), v72, &v137, v73, v74, v75, v76, v77);
                v82 = &unk_26287F8B0;
                if (v137.i32[2])
                {
                  v82 = v137.i64[0];
                }

                xprintf("Seed from state %d score %d trace %d, %s\n", v78, v79, v80, v81, v12, *(*(this + 27) + 32 * v10), *(*(this + 27) + 32 * v10 + 8), v82);
                MiniFst::seed(this + 264, *(*(this + 27) + 32 * v10), *(*(this + 27) + 32 * v10 + 20), *(*(this + 27) + 32 * v10 + 8), v123);
                DgnString::~DgnString(&v137);
              }
            }
          }

          else
          {
            if (*(this + 19) + *(this + 64) >= 5000)
            {
              v44 = 5000;
            }

            else
            {
              v44 = *(this + 19) + *(this + 64);
            }

            v45 = 32 * v10;
            v120 = (v42 >> 20) & 0x3FF;
            v46 = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(this + 4), *(v41 + 4 * v39), *(*(this + 27) + 32 * v10) + ((*(v41 + 4 * v39) >> 20) & 0x3FFu), v44);
            if (v10 <= v108)
            {
              v47 = 0;
              v48 = v46 - *(*(this + 27) + v45);
              v49 = v42;
              v50 = v105;
              if (v42)
              {
                v51 = v104;
              }

              else
              {
                v51 = 0;
              }

              v119 = v42;
              v112 = v51;
              do
              {
                v52 = *(this + 27) + v124 + v47;
                v53 = v48 + *v52;
                if (v49)
                {
                  v55 = *(*(this + 24) + 2 * v49);
                }

                else
                {
                  v55 = 0;
                }

                if (v49)
                {
                  v54 = *(*(this + 24) + 2 * v49);
                  v56 = v54 & (v54 >> 31);
                }

                else
                {
                  v56 = 0;
                }

                v57 = (*(v52 + 24) & ~(*(v52 + 24) >> 31)) - v56 + v51;
                v58 = v53 + v57;
                v59 = v53 + v57 - v7;
                v60 = *(this + 64);
                if (v59 <= v60)
                {
                  v61 = *(v52 + 8);
                  v62 = *(v52 + 14);
                  v63 = *(v52 + 16);
                  v64 = *(v52 + 20);
                  v65 = *(v52 + 28);
                  if (v60 > v58)
                  {
                    *v113 = v58;
                  }

                  this = v121;
                  v66 = *(v121 + 60);
                  if (v66 == *(v121 + 61))
                  {
                    v117 = v63;
                    v118 = v61;
                    v67 = v49;
                    v116 = v64;
                    DgnArray<PrefilterResultFrame>::reallocElts(v121 + 232, 1, 1);
                    v63 = v117;
                    v61 = v118;
                    v64 = v116;
                    v51 = v112;
                    v49 = v67;
                    v66 = *(v121 + 60);
                  }

                  v68 = *(v121 + 29) + 32 * v66;
                  *v68 = v58;
                  *(v68 + 4) = v123;
                  *(v68 + 8) = v61;
                  v42 = v119;
                  *(v68 + 12) = v119;
                  *(v68 + 14) = v62;
                  *(v68 + 16) = v63 + v120;
                  *(v68 + 20) = v64;
                  *(v68 + 24) = v55;
                  *(v68 + 28) = v57 + v65;
                  v69 = *(v121 + 60) + 1;
                  *(v121 + 60) = v69;
                  if (!v47)
                  {
                    v70 = v114;
                    if (v115 == 2 * *(v121 + 4))
                    {
                      v70 = v69;
                    }

                    v114 = v70;
                    ++v115;
                  }

                  v7 = v122;
                }

                v47 += 32;
                --v50;
              }

              while (v50);
            }
          }

          v39 = v111 + 2;
          v9 = v107;
          v10 = v109;
          v12 = v110;
        }

        while ((v42 & 0x80000000) == 0);
        v8 = *(this + 56);
      }
    }

    while (v9 < v8);
    a3 = *v113;
  }

  else
  {
    v114 = 0;
    v115 = 0;
  }

  v139 = a3 + v7;
  if (*(this + 380) == 1)
  {
    MiniFst::updateFrame(this + 264, v113, v7, a2);
  }

  v137 = 0u;
  v138 = 0u;
  SnapTime::recordTime(&v137, 1, 0, 0, 0);
  v137 = vsubq_s64(v137, v140);
  v138 = vsubq_s64(v138, v141);
  v83 = *(this + 13);
  v84 = vaddq_s64(v83[1], v138);
  *v83 = vaddq_s64(*v83, v137);
  v83[1] = v84;
  v135 = 0u;
  v136 = 0u;
  SnapTime::recordTime(&v135, 1, 0, 0, 0);
  if (v115 > 2 * *(this + 4))
  {
    FstSearchLatticeDurationBackoff::applyCutoffOnEmitting(this, v114, &v139);
  }

  v133 = 0u;
  v134 = 0u;
  SnapTime::recordTime(&v133, 1, 0, 0, 0);
  v85 = vsubq_s64(v133, v135);
  v86 = *(this + 13);
  v87 = v86[3];
  v88 = vaddq_s64(v86[2], v85);
  v133 = v85;
  v134 = vsubq_s64(v134, v136);
  v89 = vaddq_s64(v87, v134);
  v86[2] = v88;
  v86[3] = v89;
  v131 = 0u;
  v132 = 0u;
  SnapTime::recordTime(&v131, 1, 0, 0, 0);
  FstSearchLatticeDurationBackoff::makeViterbiDecisionOnEmitting(this);
  v90 = *(this + 6);
  if (v90)
  {
    v91 = *(this + 56);
    if (v90 < v91)
    {
      mrec_nth_element<FstSearchLeafLatticeBackoffcmpTok>(*(this + 27), v90, v91);
    }
  }

  v129 = 0u;
  v130 = 0u;
  SnapTime::recordTime(&v129, 1, 0, 0, 0);
  v92 = vsubq_s64(v129, v131);
  v93 = *(this + 13);
  v94 = v93[5];
  v95 = vaddq_s64(v93[4], v92);
  v129 = v92;
  v130 = vsubq_s64(v130, v132);
  v96 = vaddq_s64(v94, v130);
  v93[4] = v95;
  v93[5] = v96;
  v127 = 0u;
  v128 = 0u;
  SnapTime::recordTime(&v127, 1, 0, 0, 0);
  *(this + 60) = 0;
  v97 = *(this + 56);
  *(this + 38) = v97;
  if (a4)
  {
    *(a4 + 2) += v97;
    if (*(a4 + 2) > v97)
    {
      LODWORD(v97) = *(a4 + 2);
    }

    *(a4 + 2) = v97;
  }

  if (*(this + 380) == 1)
  {
    FstSearchLatticeDurationBackoff::seedFromMiniFst(this, v142);
  }

  if (a5)
  {
    FstSearchLatticeDurationBackoff::propagateNulls(this, v139, a2, a4);
  }

  *(this + 62) = a2;
  v125 = 0u;
  v126 = 0u;
  SnapTime::recordTime(&v125, 1, 0, 0, 0);
  v98 = *(this + 13);
  result = vaddq_s64(v98[6], vsubq_s64(v125, v127));
  v100 = vaddq_s64(v98[7], vsubq_s64(v126, v128));
  v98[6] = result;
  v98[7] = v100;
  return result;
}

uint64_t FstSearchLatticeDurationBackoff::applyCutoffOnEmitting(uint64_t this, unsigned int a2, int *a3)
{
  v4 = *(this + 240);
  if (v4 > a2)
  {
    v6 = this;
    v7 = a2;
    this = mrec_nth_element<FstSearchLeafLatticeBackoffcmpTok>(*(this + 232), a2, v4);
    v8 = *(*(v6 + 232) + 32 * a2);
    if (*a3 > v8)
    {
      *a3 = v8;
    }

    v9 = *(v6 + 244);
    if (a2 > v9)
    {
      this = DgnArray<PrefilterResultFrame>::reallocElts(v6 + 232, a2 - v9, 0);
    }

    v10 = *(v6 + 240);
    if (v10 < a2)
    {
      v11 = v7 - v10;
      v12 = 32 * v10;
      do
      {
        v13 = *(v6 + 232) + v12;
        *v13 = 0xFFFFFFFF00000000;
        *(v13 + 8) = -1;
        *(v13 + 12) = -2;
        *(v13 + 16) = 0;
        *(v13 + 24) = 0;
        v12 += 32;
        --v11;
      }

      while (v11);
    }

    *(v6 + 240) = a2;
  }

  return this;
}

uint64_t FstSearchLatticeDurationBackoff::makeViterbiDecisionOnEmitting(uint64_t this)
{
  v1 = this;
  v2 = *(this + 240);
  if (v2)
  {
    this = mrec_qsort_r<FstSearchLateLatticeHashBackoffActiveToken>(*(this + 232), v2, 32);
    v3 = *(v1 + 240);
    *(v1 + 224) = 0;
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = *(v1 + 232) + 32 * v5;
        if (v5 && *(v7 + 4) == *(v7 - 28))
        {
          if (v4 >= *(v1 + 20) + v6)
          {
            goto LABEL_16;
          }

          i = v6;
          if (v6 < v4)
          {
            v9 = (*(v1 + 216) + 32 * v6 + 20);
            for (i = v6; v4 != i; ++i)
            {
              v10 = *v9;
              v9 += 8;
              if (v10 == *(v7 + 20))
              {
                break;
              }
            }
          }

          if (i != v4)
          {
            goto LABEL_16;
          }

          v11 = *(v1 + 228);
        }

        else
        {
          v11 = *(v1 + 228);
          v6 = v4;
        }

        if (v4 == v11)
        {
          this = DgnArray<PrefilterResultFrame>::reallocElts(v1 + 216, 1, 1);
          v4 = *(v1 + 224);
        }

        v12 = (*(v1 + 216) + 32 * v4);
        v13 = *(v7 + 16);
        *v12 = *v7;
        v12[1] = v13;
        v4 = *(v1 + 224) + 1;
        *(v1 + 224) = v4;
LABEL_16:
        ++v5;
      }

      while (v5 < *(v1 + 240));
    }
  }

  else
  {
    *(this + 224) = 0;
  }

  return this;
}

uint64_t FstSearchLatticeDurationBackoff::seedFromMiniFst(uint64_t this, int *a2)
{
  if (*(this + 380) == 1)
  {
    v2 = this;
    v3 = *(this + 288);
    if (v3 >= *(this + 20))
    {
      v3 = *(this + 20);
    }

    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = (*(v2 + 280) + 36 * v4);
        v6 = v5[4];
        v7 = v5[5];
        v9 = v5[6];
        v8 = v5[7];
        v45 = v5[7];
        v46 = *v5;
        v10 = v5[2];
        v47 = 0;
        v48 = 0;
        v43 = v7;
        v44 = v6;
        v42 = v9;
        if ((v10 & 0x80000000) != 0)
        {
          LODWORD(v14) = -2 - v10;
        }

        else
        {
          v11 = 0;
          v12 = 0;
          do
          {
            if (v12 == HIDWORD(v48))
            {
              DgnPrimArray<unsigned int>::reallocElts(&v47, 1, 1);
              v12 = v48;
              v11 = v47;
            }

            *(v11 + 4 * v12) = v10;
            v13 = v48;
            v12 = v48 + 1;
            LODWORD(v48) = v48 + 1;
            v10 = *(*(v2 + 264) + 36 * v10 + 8);
          }

          while ((v10 & 0x80000000) == 0);
          LODWORD(v14) = -2 - v10;
          if ((v13 & 0x80000000) == 0)
          {
            do
            {
              v15 = *(v47 + 4 * v13);
              v16 = *(v2 + 264);
              v17 = (v16 + 36 * v15);
              v18 = *v17;
              v19 = *(v17 + 2);
              v20 = *(v2 + 184);
              if (v20 == *(v2 + 188))
              {
                DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(v2 + 176, 1, 1);
                v20 = *(v2 + 184);
                v16 = *(v2 + 264);
              }

              v21 = *(v2 + 176) + 20 * v20;
              *(v2 + 184) = v20 + 1;
              *v21 = v18;
              *(v21 + 4) = v19;
              *(v21 + 12) = v14;
              *(v21 + 16) = 0;
              v22 = *(v16 + 36 * v15 + 28);
              v23 = *(v2 + 168);
              if (v23 == *(v2 + 172))
              {
                DgnArray<DgnPrimArray<double>>::reallocElts(v2 + 160, 1, 1);
                v23 = *(v2 + 168);
              }

              v24 = *(v2 + 160);
              v25 = v24 + 16 * v23;
              *v25 = v22;
              *(v25 + 8) = v20;
              *(v25 + 12) = 0;
              v14 = *(v2 + 168);
              *(v2 + 168) = v14 + 1;
              *(v24 + 16 * v14 + 12) = 1;
            }

            while (v13-- > 0);
          }
        }

        v27 = *(v2 + 184);
        if (v27 == *(v2 + 188))
        {
          DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(v2 + 176, 1, 1);
          v27 = *(v2 + 184);
        }

        v28 = *(v2 + 176);
        *(v2 + 184) = v27 + 1;
        v29 = (v28 + 20 * v27);
        *v29 = v46;
        v29[1] = v44;
        v29[2] = v43;
        v29[3] = v14;
        v29[4] = 0;
        if (v45 == 16777213)
        {
          v30 = (*(v2 + 160) + 16 * v14);
          v31 = 16777209;
          if (*v30 == 16777209)
          {
            v27 = v30[2];
          }
        }

        else
        {
          v31 = v45;
        }

        v32 = *a2;
        v33 = *(v2 + 168);
        if (v33 == *(v2 + 172))
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(v2 + 160, 1, 1);
          v33 = *(v2 + 168);
        }

        v34 = *(v2 + 160);
        v35 = (v34 + 16 * v33);
        *v35 = v31;
        v35[1] = v32;
        v35[2] = v27;
        v35[3] = 0;
        v36 = *(v2 + 168);
        *(v2 + 168) = v36 + 1;
        *(v34 + 16 * v36 + 12) = 1;
        v37 = *(v2 + 224);
        if (v37 == *(v2 + 228))
        {
          DgnArray<PrefilterResultFrame>::reallocElts(v2 + 216, 1, 1);
          v37 = *(v2 + 224);
        }

        v38 = *(v2 + 216) + 32 * v37;
        *v38 = v46;
        *(v38 + 4) = v42;
        *(v38 + 8) = v36;
        *(v38 + 12) = -2;
        *(v38 + 16) = v44;
        *(v38 + 20) = v43;
        *(v38 + 24) = 0;
        ++*(v2 + 224);
        this = DgnPrimArray<unsigned int>::~DgnPrimArray(&v47);
        ++v4;
        LODWORD(v39) = *(v2 + 288);
        v40 = *(v2 + 20);
        if (v39 >= v40)
        {
          v39 = v40;
        }

        else
        {
          v39 = v39;
        }
      }

      while (v4 < v39);
    }
  }

  return this;
}

void sub_2626446C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

_DWORD *FstSearchLatticeDurationBackoff::propagateNulls(_DWORD *this, uint64_t a2, int a3, SearchStats *a4)
{
  v4 = this;
  v5 = this[42];
  LODWORD(v6) = this[56];
  if (v6)
  {
    v7 = a2;
    v68 = this[42];
    v69 = a4;
    LODWORD(v8) = 0;
    v75 = a2;
    do
    {
      v9 = *(v4 + 216);
      v10 = v8;
      v11 = *(v9 + 32 * v8 + 4);
      if (v6 <= v8 + 1)
      {
        v12 = v8 + 1;
      }

      else
      {
        v12 = v6;
      }

      v73 = v8;
      while (v12 - 1 != v8)
      {
        v8 = (v8 + 1);
        if (*(v9 + 32 * v8 + 4) != v11)
        {
          goto LABEL_11;
        }
      }

      LODWORD(v8) = v12;
LABEL_11:
      v13 = *(v4 + 40);
      if (*(v13 + 160) != v11 && (*(v13 + 140) <= v11 || (*(*(v13 + 152) + 4 * v11) & 0x40000000) != 0))
      {
        v84 = 32 * v10;
        v72 = v8;
        v70 = v8 - v73;
        v71 = v11;
        do
        {
          v14 = *(v4 + 40);
          v15 = *(v14 + 152);
          v76 = v11;
          v81 = *(v15 + 4 * v11);
          v16 = *(v14 + 140);
          v83 = *(v15 + 4 * (v11 + 1));
          if (v16 <= v83)
          {
            v17 = (v81 & 0xFFFFF) <= 0xFFFF3 ? v81 & 0xFFFFF : v81 & 0xFFFFF | 0xF00000;
            v18 = v17 != 16777210 && v16 <= v71;
            if (!v18 && v72 > v73)
            {
              v20 = 0;
              v21 = (v81 >> 20) & 0x3FF;
              v77 = v17 + 1;
              v22 = v70;
              v82 = v17;
              do
              {
                v23 = *(v4 + 216);
                v24 = v23 + v84;
                v25 = *(v23 + v84 + v20);
                v26 = v25 + v21;
                if (v25 + v21 > v7)
                {
                  break;
                }

                v27 = v24 + v20;
                v28 = *(v24 + v20 + 8);
                v29 = *(v24 + v20 + 12);
                v30 = *(v24 + v20 + 14);
                v31 = *(v24 + v20 + 16);
                v32 = *(v27 + 20);
                v33 = *(v27 + 28);
                v34 = v31 + v21;
                if (v17 == 16777210)
                {
                  v42 = *(v4 + 224);
                  if (v42 == *(v4 + 228))
                  {
                    v80 = v31 + v21;
                    v43 = v29;
                    v44 = v7;
                    v45 = v30;
                    this = DgnArray<PrefilterResultFrame>::reallocElts(v4 + 216, 1, 1);
                    v30 = v45;
                    v7 = v44;
                    v29 = v43;
                    v34 = v80;
                    v21 = (v81 >> 20) & 0x3FF;
                    v17 = v82;
                    v42 = *(v4 + 224);
                    v23 = *(v4 + 216);
                  }

                  v46 = v23 + 32 * v42;
                  *v46 = v26;
                  *(v46 + 4) = v83;
                  *(v46 + 8) = v28;
                  *(v46 + 12) = v29;
                  *(v46 + 14) = v30;
                  *(v46 + 16) = v34;
                  *(v46 + 20) = v32;
                  *(v46 + 24) = 0;
                  *(v46 + 28) = v33;
                  ++*(v4 + 224);
                }

                else
                {
                  if (v17 == 16777214)
                  {
                    v26 = v25 - v31;
                    v35 = 0;
                  }

                  else
                  {
                    v35 = v31 + v21;
                  }

                  if (v17 == 16777214)
                  {
                    v36 = v31 + v21;
                  }

                  else
                  {
                    v36 = 0;
                  }

                  v78 = v36;
                  v79 = v29;
                  v37 = *(v4 + 184);
                  if (v37 == *(v4 + 188))
                  {
                    v38 = v30;
                    this = DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(v4 + 176, 1, 1);
                    v30 = v38;
                    v21 = (v81 >> 20) & 0x3FF;
                    v17 = v82;
                    v37 = *(v4 + 184);
                  }

                  v39 = v77 + 2 * v32;
                  v40 = (*(v4 + 176) + 20 * v37);
                  *(v4 + 184) = v37 + 1;
                  *v40 = v26;
                  v40[1] = v35;
                  v40[2] = v39;
                  v40[3] = v28;
                  v40[4] = v33;
                  v41 = *(v4 + 168);
                  if (v20)
                  {
                    v7 = v75;
                  }

                  else
                  {
                    v7 = v75;
                    if (v41 == *(v4 + 172))
                    {
                      v47 = v30;
                      this = DgnArray<DgnPrimArray<double>>::reallocElts(v4 + 160, 1, 1);
                      v30 = v47;
                      v21 = (v81 >> 20) & 0x3FF;
                      v17 = v82;
                      v41 = *(v4 + 168);
                    }

                    v48 = (*(v4 + 160) + 16 * v41);
                    *v48 = v17;
                    v48[1] = a3;
                    v48[2] = v37;
                    v48[3] = 0;
                    v49 = *(v4 + 168);
                    *(v4 + 168) = v49 + 1;
                    v50 = *(v4 + 224);
                    if (v50 == *(v4 + 228))
                    {
                      v51 = v30;
                      this = DgnArray<PrefilterResultFrame>::reallocElts(v4 + 216, 1, 1);
                      v30 = v51;
                      v21 = (v81 >> 20) & 0x3FF;
                      v17 = v82;
                      v50 = *(v4 + 224);
                    }

                    v52 = *(v4 + 216) + 32 * v50;
                    *v52 = v26 + v78;
                    *(v52 + 4) = v83;
                    *(v52 + 8) = v49;
                    *(v52 + 12) = v79;
                    *(v52 + 14) = v30;
                    *(v52 + 16) = v34;
                    *(v52 + 20) = v39;
                    *(v52 + 24) = 0;
                    ++*(v4 + 224);
                    v41 = *(v4 + 168);
                  }

                  v53 = *(v4 + 160) + 16 * (v41 - 1);
                  ++*(v53 + 12);
                }

                v20 += 32;
                --v22;
              }

              while (v22);
            }
          }

          v11 = v76 + 2;
        }

        while ((v81 & 0x80000000) == 0);
        LODWORD(v6) = *(v4 + 224);
        LODWORD(v8) = v72;
      }
    }

    while (v8 < v6);
    v54 = *(v4 + 152);
    if (v6 > v54)
    {
      this = mrec_qsort_r<FstSearchLateLatticeHashBackoffActiveToken>((*(v4 + 216) + 32 * v54), (v6 - v54), 32);
      v54 = *(v4 + 152);
      LODWORD(v6) = *(v4 + 224);
    }

    if (v54 < v6)
    {
      v55 = v54;
      v56 = v54;
      do
      {
        v57 = *(v4 + 216);
        v58 = v57 + 32 * v55;
        this = v54;
        if (*(v58 + 4) != *(v57 + 32 * (v55 - 1) + 4))
        {
          goto LABEL_65;
        }

        if ((v54 - v56) < *(v4 + 20))
        {
          v59 = v56;
          if (v54 > v56)
          {
            v60 = (v57 + 32 * v56 + 20);
            v59 = v56;
            while (1)
            {
              v61 = *v60;
              v60 += 8;
              if (v61 == *(v58 + 20))
              {
                break;
              }

              if (v54 == ++v59)
              {
                this = v56;
                goto LABEL_65;
              }
            }
          }

          this = v56;
          if (v59 == v54)
          {
LABEL_65:
            v62 = *(v58 + 16);
            v63 = (v57 + 32 * v54);
            *v63 = *v58;
            v63[1] = v62;
            v54 = (v54 + 1);
            v56 = this;
          }
        }

        ++v55;
        v6 = *(v4 + 224);
      }

      while (v55 < v6);
    }

    a4 = v69;
    v5 = v68;
    if (v69)
    {
      goto LABEL_68;
    }
  }

  else
  {
    LODWORD(v54) = this[38];
    if (a4)
    {
LABEL_68:
      *(a4 + 1) += *(v4 + 168) - v5;
    }
  }

  v64 = *(v4 + 228);
  if (v54 > v64)
  {
    this = DgnArray<PrefilterResultFrame>::reallocElts(v4 + 216, v54 - v64, 0);
    LODWORD(v6) = *(v4 + 224);
  }

  if (v6 < v54)
  {
    v65 = v54 - v6;
    v66 = 32 * v6;
    do
    {
      v67 = *(v4 + 216) + v66;
      *v67 = 0xFFFFFFFF00000000;
      *(v67 + 8) = -1;
      *(v67 + 12) = -2;
      *(v67 + 16) = 0;
      *(v67 + 24) = 0;
      v66 += 32;
      --v65;
    }

    while (v65);
  }

  *(v4 + 224) = v54;
  return this;
}

uint64_t FstSearchLatticeDurationBackoff::collectTraces(FstSearchLatticeDurationBackoff *this)
{
  v2 = *(this + 42);
  v54 = 0;
  v53 = 0;
  if (v2)
  {
    v3 = MemChunkAlloc(4 * v2, 0);
    v53 = v3;
    v54 = v2;
    v4 = (v2 + 3) & 0x1FFFFFFFCLL;
    v5 = vdupq_n_s64(v2 - 1);
    v6 = v3 + 1;
    v7 = xmmword_26286BF80;
    v8 = xmmword_26286B680;
    v9 = vdupq_n_s64(4uLL);
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v5, v8));
      if (vuzp1_s16(v10, *v5.i8).u8[0])
      {
        *(v6 - 2) = 0;
      }

      if (vuzp1_s16(v10, *&v5).i8[2])
      {
        *(v6 - 1) = 0;
      }

      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v7))).i32[1])
      {
        *v6 = 0;
        v6[1] = 0;
      }

      v7 = vaddq_s64(v7, v9);
      v8 = vaddq_s64(v8, v9);
      v6 += 4;
      v4 -= 4;
    }

    while (v4);
  }

  else
  {
    v3 = 0;
  }

  v11 = *(this + 56);
  if (v11)
  {
    v12 = 0;
    v13 = (*(this + 27) + 8);
    do
    {
      v15 = *v13;
      v13 += 8;
      v14 = v15;
      if (v15 != -1)
      {
        *(v3 + v14) = 1;
        v11 = *(this + 56);
      }

      ++v12;
    }

    while (v12 < v11);
  }

  v16 = *(this + 42);
  if (!v16)
  {
    goto LABEL_56;
  }

  v17 = 0;
  do
  {
    --v16;
    if (v17)
    {
      v17 = 1;
    }

    else if (*(*(this + 20) + 16 * v16) == 16777213)
    {
      v17 = 1;
      *(v3 + v16) = 1;
    }

    else
    {
      v17 = 0;
    }

    if (*(v3 + v16))
    {
      v18 = *(this + 20) + 16 * v16;
      v19 = *(v18 + 12);
      if (v19 >= 1)
      {
        v20 = *(v18 + 8);
        v21 = v19 + v20;
        v22 = *(this + 22);
        do
        {
          v23 = *(v22 + 20 * v20 + 12);
          if (v23 != -1)
          {
            *(v3 + v23) = 1;
          }

          ++v20;
        }

        while (v20 < v21);
      }
    }
  }

  while (v16);
  v24 = *(this + 42);
  if (v24)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    do
    {
      if (*(v3 + v25))
      {
        v28 = *(this + 20);
        if (v25 != v26)
        {
          *(v28 + 16 * v26) = *(v28 + 16 * v25);
          v28 = *(this + 20);
        }

        *(v28 + 16 * v26 + 8) = v27;
        v29 = v28 + 16 * v25;
        v30 = *(v29 + 8);
        v31 = (*(v29 + 12) + v30);
        if (v30 < v31)
        {
          v32 = *(this + 22);
          v33 = 20 * v30;
          do
          {
            if (v30 != v27)
            {
              v34 = (v32 + v33);
              v35 = v32 + 20 * v27;
              v36 = *v34;
              *(v35 + 16) = *(v34 + 4);
              *v35 = v36;
              v32 = *(this + 22);
            }

            v37 = v32 + 20 * v27;
            v40 = *(v37 + 12);
            v38 = (v37 + 12);
            v39 = v40;
            if (v40 != -1)
            {
              *v38 = *(v3 + v39);
            }

            ++v27;
            ++v30;
            v33 += 20;
          }

          while (v31 != v30);
        }

        *(v3 + v25) = v26++;
        v24 = *(this + 42);
      }

      ++v25;
    }

    while (v25 < v24);
    v41 = *(this + 43);
    if (v26 > v41)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 160, v26 - v41, 0);
      v24 = *(this + 42);
    }

    if (v24 < v26)
    {
      v42 = v26 - v24;
      v43 = (*(this + 20) + 16 * v24);
      do
      {
        *v43++ = xmmword_26287F860;
        --v42;
      }

      while (v42);
    }

    *(this + 42) = v26;
    v44 = *(this + 47);
    if (v27 > v44)
    {
      DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(this + 176, v27 - v44, 0);
    }

    v45 = *(this + 46);
    if (v45 < v27)
    {
      v46 = v27 - v45;
      v47 = (*(this + 22) + 20 * v45 + 16);
      do
      {
        *(v47 - 1) = xmmword_26287F850;
        *v47 = 0;
        v47 += 5;
        --v46;
      }

      while (v46);
    }
  }

  else
  {
LABEL_56:
    v27 = 0;
    *(this + 42) = 0;
  }

  *(this + 46) = v27;
  v48 = *(this + 56);
  if (v48)
  {
    v49 = v53;
    v50 = (*(this + 27) + 8);
    do
    {
      v51 = *v50;
      if (v51 != -1)
      {
        *v50 = *(v49 + v51);
      }

      v50 += 8;
      --v48;
    }

    while (v48);
  }

  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v53);
}

int64x2_t FstSearchLatticeDurationBackoff::vite(int64x2_t **this, int a2, int a3, SearchStats *a4, int a5)
{
  FstSearchLatticeDurationBackoff::advanceDeltas(this, a2, a3, a4, a5);
  v13 = 0u;
  v14 = 0u;
  SnapTime::recordTime(&v13, 1, 0, 0, 0);
  if (a2 >= 1)
  {
    v7 = *(this + 18);
    if (v7)
    {
      if (!(a2 % v7))
      {
        FstSearchLatticeDurationBackoff::collectTraces(this);
      }
    }
  }

  v11 = 0u;
  v12 = 0u;
  SnapTime::recordTime(&v11, 1, 0, 0, 0);
  v8 = this[13];
  result = vaddq_s64(v8[14], vsubq_s64(v11, v13));
  v10 = vaddq_s64(v8[15], vsubq_s64(v12, v14));
  v8[14] = result;
  v8[15] = v10;
  return result;
}

_DWORD *FstSearchLatticeDurationBackoff::reset(_DWORD *this)
{
  this[42] = 0;
  this[46] = 0;
  this[56] = 0;
  return this;
}

double FstSearchLatticeDurationBackoff::doFrame(int64x2_t **this, int a2, int a3, SearchStats *a4, int a5)
{
  if (a3 >= 20000)
  {
    a3 = 20000;
  }

  *&result = FstSearchLatticeDurationBackoff::vite(this, a2, a3, a4, a5).u64[0];
  return result;
}

uint64_t FstSearchLatticeDurationBackoff::beginTopRecPassSyncRecog(FstSearchLatticeDurationBackoff *this, PelScorer *a2, const ArcGraph *a3)
{
  result = SearchItf::beginTopRecPassSyncRecogBase(this, a2);
  if (a3)
  {
    MiniFst::init(this + 264, a3, *(this + 4));
    result = ArcGraph::findBackoffState(*(this + 5));
    *(this + 94) = result;
    *(this + 380) = 1;
  }

  return result;
}

uint64_t FstSearchLatticeDurationBackoff::endTopRecPassSyncRecog(FstSearchLatticeDurationBackoff *this)
{
  v10 = 0u;
  v11 = 0u;
  SnapTime::recordTime(&v10, 1, 0, 0, 0);
  v8 = 0u;
  v9 = 0u;
  SnapTime::recordTime(&v8, 1, 0, 0, 0);
  v2 = vsubq_s64(v8, v10);
  v3 = *(this + 13);
  v4 = v3[13];
  v5 = vaddq_s64(v3[12], v2);
  v8 = v2;
  v9 = vsubq_s64(v9, v11);
  v6 = vaddq_s64(v4, v9);
  v3[12] = v5;
  v3[13] = v6;
  *(this + 64) = 1879048192;
  return SearchItf::endTopRecPassSyncRecogBase(this);
}

void FstSearchLatticeDurationBackoff::printSize(FstSearchLatticeDurationBackoff *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
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
  v45 = 16 * v44;
  if (v44 <= 0)
  {
    v45 = 0;
  }

  v46 = v45 + v43;
  v47 = v45 + v43 + 16 * (*(this + 43) - v44);
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
  v55 = 20 * v54;
  if (v54 <= 0)
  {
    v55 = 0;
  }

  v56 = v55 + v53;
  v57 = v55 + v53 + 20 * (*(this + 47) - v54);
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

  v64 = *(this + 56);
  v65 = 30 * v64;
  if (v64 <= 0)
  {
    v65 = 0;
  }

  v66 = v65 + v63;
  v67 = v65 + v63 + 30 * (*(this + 57) - v64);
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

  v74 = *(this + 60);
  v75 = 30 * v74;
  if (v74 <= 0)
  {
    v75 = 0;
  }

  v76 = v75 + v73;
  v77 = v75 + v73 + 30 * (*(this + 61) - v74);
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
  v98 = sizeObject(this + 264, 0);
  v99 = sizeObject(this + 264, 1);
  v100 = sizeObject(this + 264, 3);
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