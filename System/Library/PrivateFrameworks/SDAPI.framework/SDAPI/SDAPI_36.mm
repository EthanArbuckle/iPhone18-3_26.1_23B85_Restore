void *LexTreeNetScorer::fillPens(void *result, unsigned int a2, void *a3)
{
  v6 = *(result[18957] + 8);
  v7 = *(result[21] + 2 * a2);
  v8 = (result[19] + 6 * a2);
  v9 = *v8;
  if (v9 == 0xFFFF || v9 == 0 || v7 == 0xFFFF || v6 == 0)
  {
    *(v8 + 1) = 0;
  }

  else
  {
    v17 = v3;
    v18 = v4;
    v13 = result;
    *v16 = 0;
    result = HmmDurationPenalties::durationToPens((result + 8), *(*a3 + 2 * v7), v6, &v16[1], v16);
    v15 = v13[19] + 6 * a2;
    *(v15 + 2) = v16[0];
    *(v15 + 4) = v16[1];
  }

  return result;
}

uint64_t HmmDurationPenalties::durationToPens(uint64_t this, int a2, unsigned int a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *(this + 16);
  if (v5)
  {
    v6 = (a3 + a2) / a3;
    if (v6 <= *(this + 24))
    {
      v6 = *(this + 24);
    }

    if (v6 > *(this + 32))
    {
      v6 = *(this + 32);
    }

    v7 = -1;
    do
    {
      ++v7;
    }

    while (*(*(this + 40) + 8 * v7) < v6);
    *a4 = v7;
    v8 = *(*(this + 72) + 4 * v7);
    do
    {
      v9 = *(*(this + 56) + 8 * v8++);
    }

    while (v9 > v6);
    v5 = v8 - 1;
  }

  else
  {
    *a4 = 0;
  }

  *a5 = v5;
  return this;
}

void LexTreeNetScorer::initScorer(unint64_t a1, __int16 a2, char a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, int a12, int a13, char a14, uint64_t a15)
{
  v20 = a1 + 151352;
  ReturnListMgr::initReturnLists((a1 + 151520), a2);
  *(v20 + 288) = a3;
  *(v20 + 296) = a4;
  *(v20 + 304) = a5;
  DgnPrimArray<int>::copyArraySlice(a1, a10, 0, *(a10 + 8));
  *(a1 + 48) = a11;
  *(a1 + 56) = a12;
  *(a1 + 212) = a13;
  *v20 = a6;
  *(v20 + 8) = a7;
  *(v20 + 16) = a8;
  HmmDurationPenalties::initDurationsLookups((a1 + 64), a9);
  *(v20 + 136) = a14;
  *(v20 + 144) = a15;
  if ((a14 & 1) == 0)
  {
    v21 = *(a1 + 52);
    v22 = *(a1 + 48) * *(a1 + 48) * v21;
    v23 = *(a1 + 164);
    v24 = v22;
    v25 = v22 >= v23;
    v26 = v22 - v23;
    if (v26 != 0 && v25)
    {
      DgnPrimStructArray<PelIdAndStayAndPassPen>::reallocElts(a1 + 152, v26, 0);
      v21 = *(a1 + 52);
      v24 = *(a1 + 48) * *(a1 + 48) * v21;
    }

    *(a1 + 160) = v22;
    v27 = *(a1 + 180);
    v25 = v24 >= v27;
    v28 = v24 - v27;
    if (v28 != 0 && v25)
    {
      DgnPrimArray<short>::reallocElts(a1 + 168, v28, 0);
      v21 = *(a1 + 52);
    }

    *(a1 + 176) = v24;
    PicMgr::getRightAndDoubleGenericPicNodes(*(v20 + 304), v21, &v38);
    v29 = v39;
    if (v39)
    {
      v30 = 0;
      v31 = v38;
      v32 = 2;
      do
      {
        v33 = *(v31 + 8 * v30);
        if (v33)
        {
          *(*(a1 + 152) + v32 - 2) = *v33;
          *(*(a1 + 168) + 2 * v30) = v33[1];
        }

        else
        {
          v34 = (*(a1 + 152) + v32);
          *(v34 - 1) = -1;
          *(*(a1 + 168) + 2 * v30) = -1;
          *v34 = 0;
        }

        ++v30;
        v32 += 6;
      }

      while (v29 != v30);
    }

    DgnIArray<Utterance *>::~DgnIArray(&v38);
  }
}

unint64_t LexTreeNetScorer::updateScorerDurations(unint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 151488))
  {
    v4 = *(*(result + 151656) + 8);
    v5 = *(a2 + 8);
    v6 = *(result + 196);
    v7 = v5;
    if (v5 > v6)
    {
      result = DgnPrimArray<unsigned int>::reallocElts(result + 184, v5 - v6, 0);
      v7 = *(a2 + 8);
    }

    *(v3 + 192) = v5;
    if (v7)
    {
      v8 = 0;
      for (i = 0; i < v7; ++i)
      {
        if (v4)
        {
          *v12 = 0;
          result = HmmDurationPenalties::durationToPens(v3 + 64, *(*a2 + 2 * i), v4, &v12[1], v12);
          v10 = (*(v3 + 184) + v8);
          *v10 = v12[0];
          v10[1] = v12[1];
          v7 = *(a2 + 8);
        }

        else
        {
          *(*(v3 + 184) + v8) = 0;
        }

        v8 += 4;
      }
    }
  }

  else if (*(result + 160))
  {
    v11 = 0;
    do
    {
      result = LexTreeNetScorer::fillPens(v3, v11++, a2);
    }

    while (v11 < *(v3 + 160));
  }

  return result;
}

void LexTreeNetScorer::beginScorerSyncRecog(LexTreeNetScorer *this, int a2, const PrefiltererSearchParamSet *a3)
{
  v5 = this + 151340;
  *(this + 18935) = a3;
  v6 = 56;
  if (*(a3 + 12) == 1)
  {
    v6 = 72;
  }

  LexTreeNetScorer::updateScorerDurations(this, *(this + 18957) + v6);
  ReturnListMgr::beginRetListSyncRecog((this + 151520), *(v5 + 140), v7, v8, v9, v10, v11, v12);
  v13 = ***(this + 18957) - 2;
  *(v5 + 33) = a2;
  v14 = *(*(this + 18956) + 120);
  *(this + 18958) = v14;
  PelScoreCache::addCacheClient(v14, this);
  PelStats::resetStats((this + 151672));
  *(v5 + 127) = 0;
  *(this + 9491) = 0u;
  *(this + 9492) = 0u;
  *(this + 9493) = 0u;
  *(this + 9494) = 0u;
  *(this + 37980) = 0;
  PelStats::resetStats((this + 151928));
  *(v5 + 191) = 0;
  *(this + 9507) = 0u;
  *(this + 9508) = 0u;
  *(this + 9509) = 0u;
  *(this + 9510) = 0u;
  *(this + 38044) = 0;
  v17 = *(v5 + 140);
  *(this + 50) = v17[10];
  v18 = v17[36];
  if (v18 == -1)
  {
    *(this + 51) = 5000;
  }

  else
  {
    v19 = v17[33];
    v20 = v17[34];
    *(this + 51) = v19 - v18 + v20;
    if (v19 - v18 + v20 < 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 935, "prefilt/lexnet", 1, "%d %d %d %d", v15, v16, v19 - v18 + v20);
    }
  }

  *(this + 52) = *(v5 + 58);
  v21 = *(v5 + 44);
  if (v13 > v21)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 151504, v13 - v21, 0);
  }

  *(v5 + 43) = v13;
  *(this + 55) = 0;
  *(this + 56) = 0;
  *(this + 62) = 0;
  *(this + 32) = 0x4E2000000000;
  *(this + 126) = -1;
  *(v5 + 2) = 0;
  bzero(this + 264, 0x24E24uLL);
  *v5 = 20000;
  v22 = *(v5 + 140);
  *(this + 32) = *(v22 + 84);
  *(this + 33) = *(v22 + 68);
  v23 = 0.0;
  if (*(v22 + 64) != -1 && v5[300] == 1)
  {
    v23 = *(v22 + 56);
  }

  *(this + 5) = v23;
  v24 = *(this + 7);
  if (v24 <= 0x7D0)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 16, 2001 - v24, 0);
    v23 = *(this + 5);
  }

  v25 = 0;
  *(this + 6) = 2001;
  v26 = xmmword_26286BF80;
  v27 = xmmword_26286B680;
  v28 = (*(this + 2) + 8);
  v29 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x7D1uLL), v27)), *&v23).u8[0])
    {
      *(v28 - 2) = (v23 * v25);
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x7D1uLL), *&v27)), *&v23).i8[2])
    {
      *(v28 - 1) = (v23 * (v25 + 1));
    }

    if (vuzp1_s16(*&v23, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x7D1uLL), *&v26))).i32[1])
    {
      *v28 = (v23 * (v25 + 2));
      v28[1] = (v23 * (v25 + 3));
    }

    v25 += 4;
    v26 = vaddq_s64(v26, v29);
    v27 = vaddq_s64(v27, v29);
    v28 += 4;
  }

  while (v25 != 2004);
  v30 = *(v5 + 15);
  v31 = 256;
  do
  {
    if (v30 == *(v5 + 16))
    {
      DgnPrimArray<unsigned int>::reallocElts((v5 + 52), 1, 1);
      v30 = *(v5 + 15);
    }

    *(*(v5 + 52) + 4 * v30) = 0;
    v30 = *(v5 + 15) + 1;
    *(v5 + 15) = v30;
    --v31;
  }

  while (v31);
  v32 = *(v5 + 20);
  if (v32 <= 0xFF)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts((v5 + 68), 256 - v32, 0);
  }

  v33 = *(v5 + 19);
  if (v33 <= 0x100)
  {
    if (v33 != 256)
    {
      v35 = 16 * v33;
      do
      {
        v36 = (*(v5 + 68) + v35);
        *v36 = 0;
        v36[1] = 0;
        v35 += 16;
      }

      while (v35 != 4096);
    }
  }

  else if (v33 >= 257)
  {
    v34 = 16 * v33 - 16;
    do
    {
      --v33;
      DgnPrimArray<unsigned int>::~DgnPrimArray(*(v5 + 68) + v34);
      v34 -= 16;
    }

    while (v33 > 0x100);
  }

  *(v5 + 19) = 256;
  v37 = *(v5 + 24);
  if (v37 <= 0xFF)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts((v5 + 84), 256 - v37, 0);
  }

  v38 = *(v5 + 23);
  if (v38 <= 0x100)
  {
    if (v38 != 256)
    {
      v40 = 16 * v38;
      do
      {
        v41 = (*(v5 + 84) + v40);
        *v41 = 0;
        v41[1] = 0;
        v40 += 16;
      }

      while (v40 != 4096);
    }
  }

  else if (v38 >= 257)
  {
    v39 = 16 * v38 - 16;
    do
    {
      --v38;
      DgnPrimArray<unsigned int>::~DgnPrimArray(*(v5 + 84) + v39);
      v39 -= 16;
    }

    while (v38 > 0x100);
  }

  *(v5 + 23) = 256;
}

_DWORD *LexTreeNetScorer::endScorerSyncRecog(LexTreeNetScorer *this)
{
  v2 = (this + 151360);
  PelScoreCache::removeCacheClientOfFramesFromTimeOn(*(this + 18958), *(this + 55), 1, this);
  PelScoreCache::removeCacheClient(v2[38], this);
  v2[38] = 0;
  *(v2 + 38) = 0;
  *(this + 16) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  v3 = *(v2 + 22);
  if (v3 >= 1)
  {
    v4 = v2[2];
    v5 = v2[6];
    v6 = **v2;
    v7 = v3 + 1;
    v8 = (v2[10] + 4 * v3 - 4);
    do
    {
      v9 = *v8--;
      *(v6 + 24 * *(*(v5 + 2 * (v9 >> 24)) + *(v4 + (v9 >> 24)) * (v9 & 0xFFFFFF))) = 0;
      --v7;
    }

    while (v7 > 1);
  }

  *(v2 + 22) = 0;
  *(v2 + 10) = 0;
  v10 = *(v2 + 14);
  if (v10 >= 1)
  {
    v11 = 16 * v10 - 16;
    do
    {
      DgnPrimArray<unsigned int>::~DgnPrimArray(v2[6] + v11);
      v11 -= 16;
    }

    while (v11 != -16);
  }

  *(v2 + 14) = 0;
  v12 = *(v2 + 18);
  if (v12 >= 1)
  {
    v13 = 16 * v12 - 16;
    do
    {
      DgnPrimArray<unsigned int>::~DgnPrimArray(v2[8] + v13);
      v13 -= 16;
    }

    while (v13 != -16);
  }

  *(v2 + 18) = 0;
  result = ReturnListMgr::endRetListSyncRecog(this + 37880);
  v2[15] = 0;
  return result;
}

uint64_t LexTreeNetScorer::scoreFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = a1 + 151480;
  (*(**(a1 + 151648) + 56))(*(a1 + 151648), a2, 0, a3, a1 + 151672, 0);
  LexTreeNetScorer::initTreeThresholds(a1, (a1 + 151848), (a1 + 151856));
  LexTreeNetScorer::initLookaheadThresholds(a1, v7, a4);
  LexTreeNetScorer::initSeqsAndStats(a1);
  if (*(*v6 + 80) == 1)
  {
    LexTreeNetScorer::updateTree_Skip(a1);
  }

  else
  {
    LexTreeNetScorer::updateTree_NoSkip(a1);
  }

  (*(**(v6 + 168) + 64))(*(v6 + 168), *(a1 + 220), a1 + 151672);
  result = PelScoreCache::removeCacheClientOfFrame(*(v6 + 184), *(a1 + 220), a1);
  ++*(a1 + 220);
  return result;
}

uint64_t LexTreeNetScorer::initTreeThresholds(LexTreeNetScorer *this, unsigned int *a2, unint64_t *a3)
{
  v5 = (this + 151336);
  v6 = *(this + 18935);
  v7 = *(v6 + 132);
  v8 = *(this + 126);
  if (v8 == 0xFFFF)
  {
    v8 = 0;
  }

  else
  {
    v7 += *(v6 + 136);
  }

  v9 = *a2;
  if (*a2 <= *v5)
  {
    v9 = *v5;
  }

  *a2 = v9;
  *a3 += *v5;
  *v5 = 0;
  *(this + 59) = 0;
  result = PelScoreCache::getScoreNoBackoff(*(this + 18958), v8);
  v11 = *(this + 59) + result;
  *(this + 58) = v7;
  *(this + 59) = v11;
  return result;
}

uint64_t LexTreeNetScorer::initLookaheadThresholds(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = *(result + 151480);
  if (*(v3 + 64) == -1 || *(result + 151640) != 1 || *(result + 252) == -1)
  {
    if (*(result + 151512))
    {
      v9 = 0;
      v10 = *(result + 151504);
      v11 = *(result + 232);
      do
      {
        *(v10 + 4 * v9++) = v11;
      }

      while (*(result + 151512) > v9);
    }

    *(result + 216) = *(result + 232);
  }

  else
  {
    *(result + 216) = 0;
    if (*(result + 151512))
    {
      v4 = 0;
      v5 = *a3;
      do
      {
        if (v4)
        {
          if (*(**(result + 151656) + 56) == v4)
          {
            *(*(result + 151504) + 4 * v4) = *(result + 232);
          }

          else
          {
            v6 = *(v3 + 64);
            if (v6 == -1)
            {
              v7 = 5000;
            }

            else
            {
              v7 = v6 - *(v5 + 2 * v4);
            }

            if (v7 <= -5000)
            {
              v7 = -5000;
            }

            *(*(result + 151504) + 4 * v4) = v7;
            if (v7 > *(result + 216))
            {
              *(result + 216) = v7;
            }
          }
        }

        else
        {
          **(result + 151504) = *(result + 232);
        }

        ++v4;
      }

      while (*(result + 151512) > v4);
      v8 = *(result + 216);
    }

    else
    {
      v8 = 0;
    }

    v12 = *(result + 232);
    if (v8 > v12)
    {
      *(result + 216) = v12;
    }
  }

  return result;
}

uint64_t LexTreeNetScorer::initSeqsAndStats(uint64_t this)
{
  v1 = *(this + 151480);
  v2 = *(this + 260);
  v4 = *(v1 + 72);
  v3 = *(v1 + 76);
  if (v4 == -1)
  {
    v4 = 5000;
  }

  if (v2 >= v4)
  {
    v2 = v4;
  }

  if (v2 > v3)
  {
    v3 = v2;
  }

  v5 = *(this + 224);
  v6 = *(this + 220) - v5;
  *(this + 240) = v3;
  *(this + 244) = v6;
  v7 = *(this + 248);
  *(this + 248) = (v6 - v7);
  *(this + 224) = v7 + v5;
  *(this + 228) = v7;
  *(this + 256) = 85899345940000;
  *(this + 252) = -1;
  return this;
}

uint64_t LexTreeNetScorer::updateTree_Skip(LexTreeNetScorer *this)
{
  v1 = this;
  v2 = this + 151344;
  v3 = *(this + 58);
  v71 = *(this + 59);
  v72 = *(this + 51);
  v4 = *(this + 60);
  v74 = this + 151344;
  if (v4 <= *(this + 54))
  {
    LexTreeNetScorer::seedSuccessors(this, *(this + 37838), 0, 0, *(**(this + 18957) + 56), v4, *(this + 61));
    v1 = this;
    v2 = v74;
  }

  v5 = *(v2 + 26);
  if (!v5)
  {
    v75 = -1;
    v6 = 20000;
    goto LABEL_48;
  }

  v70 = v1 + 264;
  v65 = v2 + 120;
  v66 = v2 + 112;
  v75 = -1;
  v67 = vdupq_n_s64(1uLL).u64[0];
  v76 = 20000;
  v6 = 20000;
  do
  {
    v7 = v5 - 1;
    v8 = *(*(v2 + 12) + 4 * v7);
    *(v2 + 26) = v7;
    v9 = v8 >> 24;
    v68 = v8;
    v10 = v8 & 0xFFFFFF;
    v11 = 16 * (v8 >> 24);
    v12 = (*(*(v2 + 8) + v11) + *(*(v2 + 4) + 4 * (v8 >> 24)) * (v8 & 0xFFFFFF));
    v13 = *(v12 + 19);
    if (*(v12 + 18) + 1 == v13)
    {
      if (*(v12 + 7))
      {
        v14 = v12 + 10 * *(v12 + 19);
        v15 = *(v14 + 13);
        v16 = *(v14 + 11);
        v17 = *(v14 + 6) + *(v14 + 8);
        v18 = v17 >= v15 ? *(v14 + 13) : *(v14 + 6) + *(v14 + 8);
        if (v18 + v16 <= *(v1 + 54))
        {
          v19 = v14 + 20;
          if (v17 >= v15)
          {
            v20 = 0;
          }

          else
          {
            v20 = -1;
          }

          LexTreeNetScorer::seedSuccessors(v1, v12[1], *(v12 + 5), *(v12 + 6), *(**(v2 + 2) + 24 * v12[1] + 16), v18 + v16, *&v19[10 * v20 + 8]);
          v1 = this;
          v2 = v74;
          v12 = (*(*(v74 + 8) + v11) + (*(*(v74 + 4) + 4 * v9) * v10));
        }
      }
    }

    else
    {
      ++v13;
    }

    v21 = 0;
    v22 = *(v12 + 16);
    v23 = *(v12 + 4);
    v24.i64[0] = v67;
    v24.i64[1] = v13;
    *(v2 + 34) = vaddq_s64(*(v2 + 34), v24);
    v25 = v23 + (v13 - 1) * v22;
    v69 = v12;
    v26 = v12 + 5 * v13 + 14;
    v27 = -1;
    do
    {
      v28 = *(v26 - 6);
      v29 = *(v26 - 8);
      v30 = v29 + v28;
      if (*(v1 + 32) == 1)
      {
        if (v13 != 1)
        {
          goto LABEL_21;
        }
      }

      else if (v13 >= 3)
      {
LABEL_21:
        v32 = *(v26 - 13) + *(v26 - 11);
        v33 = v32 + v29;
        v34 = v32 < v28;
        v31 = -2;
        if (v34)
        {
          v30 = v33;
        }

        else
        {
          v31 = -1;
        }

        goto LABEL_24;
      }

      v31 = -1;
LABEL_24:
      v35 = *(v26 - 2) + *(v26 - 1);
      if (v35 >= v30)
      {
        v36 = v30;
      }

      else
      {
        v36 = *(v26 - 2) + *(v26 - 1);
      }

      if (v36 <= v3)
      {
        v37 = v3;
        if (v35 <= v30)
        {
          v38 = 0;
        }

        else
        {
          v38 = v31;
        }

        v39 = *(v26 - 4);
        ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(v2 + 40), *(v26 - 4), v36 - v71, v72);
        v1 = this;
        v41 = v26[5 * v38] - *(this + 114);
        *(v26 - 1) = ScoreAllowBackoff_updateNodeInSequence;
        *v26 = v41;
        ++*&v70[4 * (ScoreAllowBackoff_updateNodeInSequence + 5000)];
        if (ScoreAllowBackoff_updateNodeInSequence < v76 || ScoreAllowBackoff_updateNodeInSequence == v76 && v39 < v75)
        {
          v75 = v39;
          v76 = ScoreAllowBackoff_updateNodeInSequence;
        }

        if (ScoreAllowBackoff_updateNodeInSequence + v25 < v6)
        {
          v6 = ScoreAllowBackoff_updateNodeInSequence + v25;
        }

        v21 += v27 & v13;
        v27 = 0;
        v2 = v74;
        v3 = v37;
      }

      else
      {
        *(v26 - 1) = 20000;
      }

      v25 -= v22;
      v26 -= 5;
      --v13;
    }

    while (v13);
    if (v21)
    {
      v42 = v68;
      *(v69 + 19) = v21;
      v43 = *(v2 + 30);
      v44 = *(v2 + 31);
      v45 = v65;
      v46 = v66;
    }

    else
    {
      v47 = **(v2 + 2);
      v48 = 24 * *v69;
      v49 = *(v47 + v48);
      *(v47 + v48) = 0;
      v42 = v49 & 0xFFFFFF;
      v46 = *(v2 + 10) + ((v49 >> 20) & 0xFF0);
      v45 = (v46 + 8);
      v43 = *(v46 + 8);
      v44 = *(v46 + 12);
    }

    if (v43 == v44)
    {
      DgnPrimArray<unsigned int>::reallocElts(v46, 1, 1);
      v1 = this;
      v2 = v74;
      v43 = *v45;
    }

    *(*v46 + 4 * v43) = v42;
    ++*v45;
    v5 = *(v2 + 26);
  }

  while (v5);
LABEL_48:
  *(v1 + 126) = v75;
  *(v1 + 64) = v6;
  v50 = *(v2 + 30);
  v51 = *(v2 + 27);
  v52 = v50;
  if (v50 > v51)
  {
    DgnPrimArray<unsigned int>::reallocElts((v2 + 96), v50 - v51, 0);
    v1 = this;
    v2 = v74;
    v52 = *(v74 + 30);
  }

  *(v2 + 26) = v50;
  if (v52 >= 1)
  {
    v53 = *(v2 + 12);
    v54 = *(v2 + 14) - 4;
    v55 = 4 * v52;
    do
    {
      *v53++ = *(v54 + v55);
      v55 -= 4;
    }

    while (v55);
  }

  *(v2 + 30) = 0;
  v56 = *(v1 + 60);
  v57 = *(v2 + 1);
  if (v56 < v57)
  {
    *v2 = *(v1 + 61) - *(v1 + 57);
    *(v2 + 1) = v56;
    v57 = v56;
  }

  if (v57 <= 19999)
  {
    ScoreNoBackoff = PelScoreCache::getScoreNoBackoff(*(v2 + 40), 0);
    v1 = this;
    v59 = *(v74 + 1) + ScoreNoBackoff - *(this + 59);
    v60 = *(this + 64);
    v61 = v59 - v60;
    v62 = 20000;
    if (v59 >= 20000)
    {
      v61 = 20000;
    }

    if (v60 <= 19999)
    {
      v63 = v61;
    }

    else
    {
      v63 = *(v74 + 1) + ScoreNoBackoff - *(this + 59);
    }

    if (v63 <= *(this + 58))
    {
      if (v59 < v60)
      {
        *(this + 64) = v59;
        *(this + 126) = -1;
        if (v59 >= 20000)
        {
          v61 = 20000;
        }

        else
        {
          v61 = 0;
        }

        v60 = v59;
      }

      if (v60 <= 19999)
      {
        v62 = v61;
      }

      else
      {
        v62 = v59;
      }
    }

    *(v74 + 1) = v62;
  }

  return LexTreeNetScorer::updateTrueBestPel(v1);
}

uint64_t LexTreeNetScorer::updateTree_NoSkip(LexTreeNetScorer *this)
{
  v1 = this;
  v2 = this + 151344;
  v3 = *(this + 58);
  v59 = *(this + 59);
  v60 = *(this + 51);
  v4 = *(this + 60);
  v61 = this + 151344;
  if (v4 <= *(this + 54))
  {
    LexTreeNetScorer::seedSuccessors(this, *(this + 37838), 0, 0, *(**(this + 18957) + 56), v4, *(this + 61));
    v2 = v61;
  }

  v5 = *(v2 + 26);
  if (v5)
  {
    v58 = v1 + 264;
    v53 = v2 + 120;
    v54 = v2 + 112;
    v55 = vdupq_n_s64(1uLL).u64[0];
    v62 = -1;
    v63 = 20000;
    v64 = 20000;
    do
    {
      v6 = v5 - 1;
      v7 = *(*(v2 + 12) + 4 * v6);
      *(v2 + 26) = v6;
      v8 = v7 >> 24;
      v56 = v7;
      v9 = v7 & 0xFFFFFF;
      v10 = 16 * (v7 >> 24);
      v11 = (*(*(v2 + 8) + v10) + *(*(v2 + 4) + 4 * (v7 >> 24)) * (v7 & 0xFFFFFF));
      v12 = *(v11 + 19);
      if (*(v11 + 18) + 1 == v12)
      {
        if (*(v11 + 7))
        {
          v13 = v11 + 10 * *(v11 + 19);
          v14 = *(v13 + 11) + *(v13 + 13);
          if (v14 <= *(v1 + 54))
          {
            LexTreeNetScorer::seedSuccessors(v1, v11[1], *(v11 + 5), *(v11 + 6), *(**(v2 + 2) + 24 * v11[1] + 16), v14, *(v13 + 14));
            v2 = v61;
            v11 = (*(*(v61 + 8) + v10) + (*(*(v61 + 4) + 4 * v8) * v9));
          }
        }
      }

      else
      {
        ++v12;
      }

      v15 = 0;
      v16 = *(v11 + 16);
      v17 = *(v11 + 4);
      v18.i64[0] = v55;
      v18.i64[1] = v12;
      *(v2 + 34) = vaddq_s64(*(v2 + 34), v18);
      v19 = v17 + (v12 - 1) * v16;
      v57 = v11;
      v20 = v11 + 5 * v12 + 14;
      v21 = -1;
      do
      {
        v22 = *(v20 - 8) + *(v20 - 6);
        v23 = *(v20 - 2) + *(v20 - 1);
        if (v23 >= v22)
        {
          v24 = *(v20 - 8) + *(v20 - 6);
        }

        else
        {
          v24 = *(v20 - 2) + *(v20 - 1);
        }

        if (v24 <= v3)
        {
          v25 = v1;
          if (v23 <= v22)
          {
            v26 = 0;
          }

          else
          {
            v26 = -1;
          }

          v27 = *(v20 - 4);
          ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(v2 + 40), *(v20 - 4), v24 - v59, v60);
          v29 = 10 * v26;
          v1 = v25;
          LOWORD(v29) = *(v20 + v29) - *(v25 + 114);
          *(v20 - 1) = ScoreAllowBackoff_updateNodeInSequence;
          *v20 = v29;
          ++*&v58[4 * (ScoreAllowBackoff_updateNodeInSequence + 5000)];
          if (ScoreAllowBackoff_updateNodeInSequence < v63 || ScoreAllowBackoff_updateNodeInSequence == v63 && v27 < v62)
          {
            v62 = v27;
            v63 = ScoreAllowBackoff_updateNodeInSequence;
          }

          v30 = v64;
          if (ScoreAllowBackoff_updateNodeInSequence + v19 < v64)
          {
            v30 = ScoreAllowBackoff_updateNodeInSequence + v19;
          }

          v64 = v30;
          v15 += v21 & v12;
          v21 = 0;
          v2 = v61;
        }

        else
        {
          *(v20 - 1) = 20000;
        }

        v19 -= v16;
        v20 -= 5;
        --v12;
      }

      while (v12);
      if (v15)
      {
        v31 = v56;
        *(v57 + 19) = v15;
        v32 = *(v2 + 30);
        v33 = *(v2 + 31);
        v34 = v53;
        v35 = v54;
      }

      else
      {
        v36 = **(v2 + 2);
        v37 = 24 * *v57;
        v38 = *(v36 + v37);
        *(v36 + v37) = 0;
        v31 = v38 & 0xFFFFFF;
        v35 = *(v2 + 10) + ((v38 >> 20) & 0xFF0);
        v34 = (v35 + 8);
        v32 = *(v35 + 8);
        v33 = *(v35 + 12);
      }

      if (v32 == v33)
      {
        DgnPrimArray<unsigned int>::reallocElts(v35, 1, 1);
        v2 = v61;
        v32 = *v34;
      }

      *(*v35 + 4 * v32) = v31;
      ++*v34;
      v5 = *(v2 + 26);
    }

    while (v5);
  }

  else
  {
    v62 = -1;
    v64 = 20000;
  }

  *(v1 + 126) = v62;
  *(v1 + 64) = v64;
  v39 = *(v2 + 30);
  v40 = *(v2 + 27);
  v41 = v39;
  if (v39 > v40)
  {
    DgnPrimArray<unsigned int>::reallocElts((v2 + 96), v39 - v40, 0);
    v2 = v61;
    v41 = *(v61 + 30);
  }

  *(v2 + 26) = v39;
  if (v41 >= 1)
  {
    v42 = *(v2 + 12);
    v43 = *(v2 + 14) - 4;
    v44 = 4 * v41;
    do
    {
      *v42++ = *(v43 + v44);
      v44 -= 4;
    }

    while (v44);
  }

  *(v2 + 30) = 0;
  v45 = *(v1 + 60);
  v46 = *(v2 + 1);
  if (v45 < v46)
  {
    *v2 = *(v1 + 61) - *(v1 + 57);
    *(v2 + 1) = v45;
    v46 = v45;
  }

  if (v46 <= 19999)
  {
    v47 = *(v61 + 1) + PelScoreCache::getScoreNoBackoff(*(v2 + 40), 0) - *(v1 + 59);
    v48 = *(v1 + 64);
    v49 = v47 - v48;
    v50 = 20000;
    if (v47 >= 20000)
    {
      v49 = 20000;
    }

    if (v48 <= 19999)
    {
      v51 = v49;
    }

    else
    {
      v51 = v47;
    }

    if (v51 <= *(v1 + 58))
    {
      if (v47 < v48)
      {
        *(v1 + 64) = v47;
        *(v1 + 126) = -1;
        if (v47 >= 20000)
        {
          v49 = 20000;
        }

        else
        {
          v49 = 0;
        }

        v48 = v47;
      }

      if (v48 <= 19999)
      {
        v50 = v49;
      }

      else
      {
        v50 = v47;
      }
    }

    *(v61 + 1) = v50;
  }

  return LexTreeNetScorer::updateTrueBestPel(v1);
}

uint64_t LexTreeNetScorer::getList(int32x4_t *a1, unsigned int a2, uint64_t a3, unsigned __int32 a4)
{
  v6 = a1 + 9472;
  v10 = 0;
  result = ReturnListMgr::finishList(a1[9470].i64, a2, a3, &v10);
  v8.i32[0] = 1;
  v8.i32[1] = *(a3 + 8);
  v8.i64[1] = __PAIR64__(a4, v10);
  v6[22] = vaddq_s32(v6[22], v8);
  v9 = v6[23].u32[0];
  if (v9 <= a4)
  {
    v9 = a4;
  }

  v6[23].i32[0] = v9;
  return result;
}

uint64_t LexTreeNetScorer::seedTreeAndEndWords(uint64_t result, uint64_t a2, int a3, signed int a4)
{
  v6 = result;
  v7 = *(*(result + 151480) + 128);
  if ((v7 & 1) == 0 && *(result + 260) > a3)
  {
    *(result + 260) = a3;
  }

  v8 = *(a2 + 10);
  v9 = *(a2 + 4);
  v20 = 0;
  v10 = **(result + 151360) + 24 * v9;
  v11 = *(v10 + 20);
  v12 = *(v10 + 4);
  if ((v11 & 0x4000) != 0)
  {
    v20 = v12;
    v15 = &v20;
    v14 = 1;
  }

  else
  {
    if (v12 < 0x400000)
    {
      return result;
    }

    v13 = *&v12 & 0x3FFFFFLL;
    v14 = v12 >> 22;
    v15 = (**(result + 151368) + 4 * v13);
  }

  v16 = v14;
  do
  {
    v17 = (*v15 >> 22) - v8;
    if (v17 >= v6[53])
    {
      v17 = v6[53];
    }

    v18 = v17 + a3;
    if (v7 && v18 < v6[65])
    {
      v6[65] = v18;
    }

    if (v18 > v6[52])
    {
      break;
    }

    v19 = *v15++;
    result = ReturnListMgr::addToReturnList((v6 + 37880), a4, v6[55], v19 & 0x3FFFFF, v18);
    --v16;
  }

  while (v16);
  return result;
}

unint64_t LexTreeNetScorer::seedSuccessors(unint64_t this, unsigned int a2, int a3, unsigned int a4, int a5, int a6, __int16 a7)
{
  v8 = this;
  v9 = this + 151360;
  v10 = **(this + 151360);
  v11 = a2;
  v12 = *(v10 + 24 * a2 + 18);
  v13 = *(this + 151452);
  v14 = *(this + 151448) + v12;
  if (v14 > v13)
  {
    v15 = a6;
    this = DgnPrimArray<unsigned int>::reallocElts(this + 151440, v14 - v13, 1);
    a6 = v15;
    v10 = **v9;
    v12 = *(v10 + 24 * v11 + 18);
  }

  *(v9 + 504) += v12;
  if (v12)
  {
    v16 = vdupq_n_s64(1uLL).u64[0];
    v88 = a6;
    v98 = a3;
    v97 = v11;
    v87 = v16;
    do
    {
      v17 = v12 - 1;
      v18 = *(v10 + 24 * v11 + 8) + v12 - 1;
      v19 = (v10 + 24 * v18);
      v20 = *v19;
      if (v20)
      {
        if (*(v8 + 33) != 1 || *(*(v8 + 16) + 4 * ((v19[5] & 0x1FFFu) - a3)) + a6 <= *(*(v9 + 144) + 4 * *(v19 + 8)))
        {
          v21 = *(*(v9 + 48) + 16 * (v20 >> 24)) + *(*(v9 + 16) + 4 * (v20 >> 24)) * (v20 & 0xFFFFFF);
          *(v21 + 26) = a6;
          *(v21 + 28) = a7;
        }
      }

      else
      {
        v22 = *(v19 + 10);
        v23 = v22 & 0x1FFF;
        v24 = (v22 & 0x1FFF) - a3;
        v25 = *(v19 + 8);
        if (*(*(v8 + 16) + 4 * v24) + a6 <= *(*(v9 + 144) + 4 * v25))
        {
          v26 = *v8;
          v27 = *(*v8 + 4 * v25);
          v28 = 1;
          if (v22 < 0)
          {
            v31 = *(v10 + 24 * v11 + 8) + v17;
            LODWORD(v29) = v31;
          }

          else
          {
            v29 = (*(v10 + 24 * v11 + 8) + v17);
            do
            {
              LODWORD(v29) = *(v10 + 24 * v29 + 8);
              ++v28;
              v30 = v10 + 24 * v29;
              v27 += *(v26 + 4 * *(v30 + 16));
            }

            while ((*(v30 + 20) & 0x80000000) == 0);
            v31 = v29;
          }

          v32.i64[0] = v16;
          v32.i64[1] = v27;
          *(v9 + 512) = vaddq_s64(*(v9 + 512), v32);
          v33 = *(v8 + 56);
          if (v33 <= a4)
          {
            v36 = *(*(v9 + 120) + 44);
            v37 = v36 * (a4 + 1 - v33);
            if (v37 >= 20000)
            {
              v35 = 20000;
            }

            else
            {
              v35 = v37;
            }

            v38 = v36 * v28;
            if (v35 + v36 * v28 > 20000)
            {
              v38 = 20000 - v35;
            }

            v34 = v38 / v27;
          }

          else
          {
            LOBYTE(v34) = 0;
            LOWORD(v35) = 0;
          }

          v39 = v27 + 1;
          v40 = *(v10 + 24 * v29 + 18);
          v41 = *(*(v9 + 16) + 4 * v39);
          v42 = *(v9 + 64) + 16 * v39;
          v43 = *(v42 + 8);
          if (v43)
          {
            v44 = v43 - 1;
            v45 = *(*v42 + 4 * (v43 - 1));
            *(v42 + 8) = v44;
          }

          else
          {
            v46 = *(v9 + 48) + 16 * v39;
            v47 = *(v46 + 12);
            v48 = *(v46 + 8) + v41;
            if (v48 > v47)
            {
              v92 = v35;
              v93 = v31;
              v95 = v18;
              v94 = v23;
              v90 = *(v10 + 24 * v29 + 18);
              v91 = v34;
              v89 = *(v9 + 48) + 16 * v39;
              DgnPrimArray<char>::reallocElts(v46, v48 - v47, 1);
              v46 = v89;
              v40 = v90;
              LOBYTE(v34) = v91;
              LOWORD(v35) = v92;
              v31 = v93;
              v23 = v94;
              v39 = v27 + 1;
              v18 = v95;
              v16 = v87;
              a6 = v88;
              v48 = *(v89 + 8) + v41;
              v10 = **v9;
              v26 = *v8;
            }

            *(v46 + 8) = v48;
            v49 = *(v9 + 32);
            v45 = *(v49 + 4 * v39);
            *(v49 + 4 * v39) = v45 + 1;
          }

          v50 = v39 - 2;
          v51 = v39;
          v52 = *(*(v9 + 48) + 16 * v39) + (v45 * v41);
          v53 = (*(v10 + 24 * v29 + 20) >> 13) & 1;
          *v52 = v18;
          *(v52 + 4) = v31;
          *(v52 + 8) = v35;
          *(v52 + 10) = v23;
          *(v52 + 12) = v28 + a4;
          *(v52 + 14) = v40;
          *(v52 + 16) = v34;
          *(v52 + 17) = v53;
          *(v52 + 18) = v50;
          *(v52 + 20) = 0x4E2000000000FFFFLL;
          *(v52 + 19) = -1;
          *(v52 + 28) = -1;
          v54 = v18;
          v55 = v10 + 24 * v18;
          this = *(v55 + 16);
          LODWORD(v56) = *(v26 + 4 * this);
          if (v24)
          {
            if (v56 >= 2)
            {
              v57 = v24 / v56;
            }

            else
            {
              LOWORD(v57) = 0;
            }

            if (v56 >= 2)
            {
              LOWORD(v24) = v24 - v24 / v56 * (v56 - 1);
            }
          }

          else
          {
            LOWORD(v57) = 0;
          }

          v11 = v97;
          v58 = v52 + 30;
          v59 = *(v9 + 128);
          if (v56 <= 1)
          {
            v56 = 1;
          }

          else
          {
            v56 = v56;
          }

          if (v59 == 1)
          {
            LODWORD(this) = *(v55 + 12) & 0xFFFFFF;
            v60 = **(v9 + 136);
            v61 = *(v8 + 184);
            do
            {
              v62 = (v60 + 4 * this);
              v63 = *v62;
              v64 = (v61 + 4 * v62[1]);
              v65 = v64[1];
              LOWORD(v64) = *v64;
              *v58 = v63;
              *(v58 + 2) = v65 + v24;
              *(v58 + 4) = v64;
              *(v58 + 6) = -45536;
              v58 += 10;
              this = (this + 1);
              LOWORD(v24) = v57;
              --v56;
            }

            while (v56);
          }

          else
          {
            LODWORD(this) = (this + *(v8 + 48) * a5) * *(v8 + 52);
            v66 = *(v8 + 152);
            do
            {
              v67 = (v66 + 6 * this);
              v68 = *v67;
              v69 = v67[2] + v24;
              LOWORD(v67) = v67[1];
              *v58 = v68;
              *(v58 + 2) = v69;
              *(v58 + 4) = v67;
              *(v58 + 6) = -45536;
              v58 += 10;
              this = (this + 1);
              LOWORD(v24) = v57;
              --v56;
            }

            while (v56);
          }

          v70 = v52 + 20 + 10 * v27;
          a3 = v98;
          if (v58 <= v70)
          {
            v71 = v54;
            do
            {
              v72 = v10 + 24 * v71;
              v71 = *(v72 + 8);
              v73 = v10 + 24 * v71;
              v74 = *(v73 + 16);
              LODWORD(v75) = *(v26 + 4 * v74);
              if (v59)
              {
                v76 = *(v73 + 12) & 0xFFFFFF;
                this = **(v9 + 136);
                v77 = *(v8 + 184);
                if (v75 <= 1)
                {
                  v75 = 1;
                }

                else
                {
                  v75 = v75;
                }

                do
                {
                  v78 = (this + 4 * v76);
                  HIDWORD(v79) = *(v77 + 4 * v78[1]);
                  LODWORD(v79) = HIDWORD(v79);
                  *v58 = *v78;
                  *(v58 + 2) = v79 >> 16;
                  *(v58 + 6) = -45536;
                  v58 += 10;
                  ++v76;
                  --v75;
                }

                while (v75);
              }

              else
              {
                v80 = (v74 + *(v8 + 48) * *(v72 + 16)) * *(v8 + 52);
                this = *(v8 + 152);
                if (v75 <= 1)
                {
                  v81 = 1;
                }

                else
                {
                  v81 = v75;
                }

                do
                {
                  v82 = (this + 6 * v80);
                  v83 = *v82;
                  v84 = v82[2];
                  LOWORD(v82) = v82[1];
                  *v58 = v83;
                  *(v58 + 2) = v84;
                  *(v58 + 4) = v82;
                  *(v58 + 6) = -45536;
                  v58 += 10;
                  ++v80;
                  --v81;
                }

                while (v81);
              }
            }

            while (v58 <= v70);
          }

          v85 = v45 | (v51 << 24);
          *v55 = v85;
          *(*(v9 + 80) + 4 * (*(v9 + 88))++) = v85;
          *(v52 + 26) = a6;
          *(v52 + 28) = a7;
          *(v52 + 19) = 0;
          v17 = v12 - 1;
        }
      }

      v86 = v12 <= 1;
      v12 = v17;
    }

    while (!v86);
  }

  return this;
}

uint64_t LexTreeNetScorer::updateTrueBestPel(uint64_t this)
{
  v1 = this;
  v2 = this + 147456;
  v3 = *(this + 151480);
  v4 = *(v3 + 76);
  v51 = *(v3 + 80);
  *(this + 151340) = 20000;
  v5 = *(this + 200);
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = (this + 264);
    v10 = -5000;
    v11 = 37768;
    do
    {
      if (*v9)
      {
        this = v1[58];
        if (v10 - v1[64] > this)
        {
          break;
        }

        v6 += *v9;
        *v9 = 0;
        if (v6 < v5)
        {
          v12 = v7;
        }

        else
        {
          v12 = v10;
        }

        v13 = !v8;
        v8 = v8 || v6 >= v5;
        if (v13)
        {
          v7 = v12;
        }
      }

      ++v10;
      ++v9;
      --v11;
    }

    while (v11);
    if (v8)
    {
      v14 = v7 - v1[64];
      *(v2 + 3884) = v14;
      if (v14 < v1[58])
      {
        v1[58] = v14;
      }
    }
  }

  for (i = *(v2 + 3992); i; i = *(v2 + 3992))
  {
    v16 = i - 1;
    v17 = *(*(v2 + 3984) + 4 * v16);
    *(v2 + 3992) = v16;
    v18 = *(*(v2 + 3920) + 4 * (v17 >> 24)) * (v17 & 0xFFFFFF);
    v19 = *(*(v2 + 3952) + 16 * (v17 >> 24));
    v20 = (v19 + v18);
    v21 = *(v19 + v18 + 19);
    if (!*(v19 + v18 + 19))
    {
      goto LABEL_42;
    }

    v22 = 0;
    v23 = v20 + 5;
    v24 = v1[64];
    v25 = v1[58];
    v26 = (v19 + v18 + 10 * *(v19 + v18 + 19) + 26);
    v27 = -1;
    do
    {
      v28 = *v26;
      v29 = v28 - v24;
      if (v28 >= 20000)
      {
        v29 = 20000;
      }

      if (v24 <= 19999)
      {
        v28 = v29;
      }

      if (v28 <= v25)
      {
        if (v28 <= v4)
        {
          LOWORD(v28) = v4;
        }

        *v26 = v28;
        v30 = v26[1];
        if (v1[62] > v30)
        {
          v1[62] = v30;
        }

        ++*(v2 + 3880);
        v22 += v27 & v21;
        v27 = 0;
      }

      else
      {
        *v26 = 20000;
      }

      v26 -= 5;
      --v21;
    }

    while (v21);
    if (v22)
    {
      *(v20 + 19) = v22;
      *(v20 + 13) = 20000;
      v31 = *(v2 + 4008);
      if (v31 == *(v2 + 4012))
      {
        this = DgnPrimArray<unsigned int>::reallocElts(v2 + 4000, 1, 1);
        v31 = *(v2 + 4008);
      }

      *(*(v2 + 4000) + 4 * v31) = v17;
      ++*(v2 + 4008);
      if (*(v20 + 17))
      {
        v32 = *(v20 + 18);
        if (v22 == v32 + 1)
        {
          v33 = v23 + 10 * v22;
          v34 = *(v33 + 3);
          v35 = *(v33 + 1);
          v36 = v35 + v34;
          if (v51 == 1)
          {
            v37 = *(v23 + 5 * *(v20 + 18) + 1) + *(v23 + 5 * *(v20 + 18) + 3);
            v38 = v37 + v35;
            if (v37 >= v34)
            {
              v32 = v22;
            }

            else
            {
              v36 = v38;
            }
          }

          else
          {
            v32 = v22;
          }

          this = LexTreeNetScorer::seedTreeAndEndWords(v1, v20, v36, v1[56] + *(v23 + 5 * v32 + 4));
        }
      }
    }

    else
    {
LABEL_42:
      v39 = **(v2 + 3904);
      v40 = 24 * *v20;
      v41 = *(v39 + v40);
      *(v39 + v40) = 0;
      v42 = *(v2 + 3968) + ((v41 >> 20) & 0xFF0);
      v43 = *(v42 + 8);
      if (v43 == *(v42 + 12))
      {
        this = DgnPrimArray<unsigned int>::reallocElts(*(v2 + 3968) + ((v41 >> 20) & 0xFF0), 1, 1);
        v43 = *(v42 + 8);
      }

      *(*v42 + 4 * v43) = v41 & 0xFFFFFF;
      ++*(v42 + 8);
    }
  }

  v44 = *(v2 + 4008);
  v45 = *(v2 + 3996);
  v46 = v44;
  if (v44 > v45)
  {
    this = DgnPrimArray<unsigned int>::reallocElts(v2 + 3984, v44 - v45, 0);
    v46 = *(v2 + 4008);
  }

  *(v2 + 3992) = v44;
  if (v46 >= 1)
  {
    v47 = *(v2 + 3984);
    v48 = *(v2 + 4000) - 4;
    v49 = 4 * v46;
    do
    {
      *v47++ = *(v48 + v49);
      v49 -= 4;
    }

    while (v49);
  }

  *(v2 + 4008) = 0;
  v50 = *(v2 + 3892);
  if (v50 < v1[65])
  {
    v1[65] = v50;
  }

  return this;
}

void HmmDurationPenalties::~HmmDurationPenalties(HmmDurationPenalties *this)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 72);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 56);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 40);
}

unint64_t DgnPrimStructArray<PelIdAndStayAndPassPen>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 6 * v6, 6 * v5, 6 * v5, 1);
  *(a1 + 12) = result / 6;
  *a1 = v8;
  return result;
}

void MrecInitModule_memchunk_mrecutil(void)
{
  if (!gParDiagnosticVirtualCalculationInterval)
  {
    v0 = MemChunkAlloc(0x38uLL, 0);
    v10 = 0x3E8FFFFFFFFLL;
    v1 = IntGlobalParamBase::IntGlobalParamBase(v0, "DiagnosticVirtualCalculationInterval", &byte_262899963, &byte_262899963, 16, &v10, SetShadowDiagnosticVirtualCalculationInterval);
    *v1 = &unk_287528130;
    gParDiagnosticVirtualCalculationInterval = v1;
    gShadowDiagnosticVirtualCalculationInterval = 16;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticVirtualCalculationInterval);
  }

  if (!gParShowActualMemoryAndChunkOverheadStats)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "ShowActualMemoryAndChunkOverheadStats", &byte_262899963, &byte_262899963, 0, SetShadowShowActualMemoryAndChunkOverheadStats, 0);
    *v3 = &unk_287527EA0;
    gParShowActualMemoryAndChunkOverheadStats = v3;
    gShadowShowActualMemoryAndChunkOverheadStats = 0;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParShowActualMemoryAndChunkOverheadStats);
  }

  if (!gParShowMemChunkStatsOnThreadExit)
  {
    v4 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v4, "ShowMemChunkStatsOnThreadExit", &byte_262899963, &byte_262899963, 0, SetShadowShowMemChunkStatsOnThreadExit, 0);
    *v5 = &unk_287527EA0;
    gParShowMemChunkStatsOnThreadExit = v5;
    gShadowShowMemChunkStatsOnThreadExit = 0;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParShowMemChunkStatsOnThreadExit);
  }

  if (!gParShowMemStatsOnThreadExit)
  {
    v6 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v6, "ShowMemStatsOnThreadExit", &byte_262899963, &byte_262899963, 0, SetShadowShowMemStatsOnThreadExit, 0);
    *v7 = &unk_287527EA0;
    gParShowMemStatsOnThreadExit = v7;
    gShadowShowMemStatsOnThreadExit = 0;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParShowMemStatsOnThreadExit);
  }

  if (!gParShowVirtualPrivateDetailsOnCalc)
  {
    v8 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v8, "ShowVirtualPrivateDetailsOnCalc", &byte_262899963, &byte_262899963, 0, SetShadowShowVirtualPrivateDetailsOnCalc, 0);
    *v9 = &unk_287527EA0;
    gParShowVirtualPrivateDetailsOnCalc = v9;
    gShadowShowVirtualPrivateDetailsOnCalc = 0;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParShowVirtualPrivateDetailsOnCalc);
  }
}

uint64_t GetRegionChecksum(MemChunkRegion *a1)
{
  if (a1)
  {

    return MemChunkRegion::calculateChecksum(a1);
  }

  if (MemChunkRegion::smTlsID != -1)
  {
    v3 = pthread_getspecific(MemChunkRegion::smTlsID);
    if (v3)
    {
      a1 = *v3;
      if (a1)
      {
        goto LABEL_10;
      }

      pthread_setspecific(MemChunkRegion::smTlsID, 0);
    }
  }

  a1 = &gGlobalMemChunkRegion;
LABEL_10:

  return MemChunkRegion::calculateChecksum(a1);
}

uint64_t MemChunkRegion::calculateChecksum(MemChunkRegion *this)
{
  v1 = *(this + 162);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  do
  {
    v3 = ((v1[1].i64[1] * (v1[2].i64[0] + 16) + 31) & 0x3FFFF0000) + 0x10000;
    if ((v3 & 0x3FFFF0000) != 0)
    {
      v4 = (v3 >> 2) & 0xFFFFC000;
      if (v4)
      {
        v5 = result;
        v6 = v1;
        do
        {
          v7 = *v6++;
          v5 = veorq_s8(v7, v5);
          v4 -= 4;
        }

        while (v4);
        v8 = veor_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL));
        result = (v8.i32[0] ^ v8.i32[1]);
      }

      else
      {
        v9 = v1;
        do
        {
          v10 = v9->i32[0];
          v9 = (v9 + 4);
          result = v10 ^ result;
          --v4;
        }

        while (v4);
      }
    }

    v1 = v1->i64[1];
  }

  while (v1);
  return result;
}

void ShowDeltaMemSummary(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    if (MemChunkRegion::smTlsID == -1)
    {
      goto LABEL_6;
    }

    v7 = pthread_getspecific(MemChunkRegion::smTlsID);
    if (!v7)
    {
      goto LABEL_6;
    }

    a1 = *v7;
    if (!a1)
    {
      pthread_setspecific(MemChunkRegion::smTlsID, 0);
LABEL_6:
      a1 = &gGlobalMemChunkRegion;
    }
  }

  xlprintf("%-30.30s dT %9lld, dC %9lld, dM %8lld\n", a2, a3, a4, a5, a2, a1[33540] - *a3, a1[33541] - a3[1], a1[33542] - a3[2]);
}

void MemStatsDisplayFromRef(MemChunkRegion *a1, uint64_t a2, int a3, BOOL a4, const char *a5, uint64_t a6, uint64_t a7)
{
  v12 = a1;
  if (!a1)
  {
    if (MemChunkRegion::smTlsID != -1)
    {
      v13 = pthread_getspecific(MemChunkRegion::smTlsID);
      if (v13)
      {
        v12 = *v13;
        if (*v13)
        {
          goto LABEL_7;
        }

        pthread_setspecific(MemChunkRegion::smTlsID, 0);
      }
    }

    v12 = &gGlobalMemChunkRegion;
  }

LABEL_7:
  if (a3)
  {
    MrecInitModule_sdpres_sdapi();
  }

  MemChunkRegion::memStatsDisplayFromRef(v12, a2, 0, 0, a5, a6, a7, &byte_262899963);
}

void MemChunkRegion::memStatsDisplayFromRef(MemChunkRegion *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, const char *a8)
{
  v16 = *(this + 33541);
  v17 = *(this + 33544);
  xlprintf("%sAlloc: %s\n", a2, a3, a4, a5, a8, "------------------------------------------------------------------------");
  if (a5)
  {
    xgenprintf(1, a2, "%sAlloc: %s\n", v18, v19, a8, a5);
  }

  MemChunkRegion::printSomeStats(this, 1, a2, a3, a4, (v16 | a6 | v17 | a7) != 0, a6, a7, a8);
}

uint64_t *MemChunkRegion::newMemChunkRegion(MemChunkRegion *this, const char *a2)
{
  v3 = MemChunkAlloc(0x418B0uLL, &gGlobalMemChunkRegion);
  bzero(v3, 0x418B0uLL);
  MemChunkRegion::initMemChunkRegion(v3, this);
  v4 = MemChunkRegion::smpMemChunkRegions;
  v3[160] = MemChunkRegion::smpMemChunkRegions;
  v4[159] = v3;
  MemChunkRegion::smpMemChunkRegions = v3;
  return v3;
}

void MemChunkRegion::initMemChunkRegion(MemChunkRegion *this, const char *a2)
{
  *(this + 1264) = 0;
  DgnPRandom::initialize(this + 4, 0);
  *(this + 1272) = 0u;
  *(this + 1288) = 0u;
  bzero(this + 6424, 0x3FF98uLL);
  v4 = strlen(a2);
  if (v4 + 1 < 0x401)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 1024;
  }

  strcpy(this + 240, a2)[v5] = 0;
  v6 = this + 1304;
  v7 = 8;
  v8 = (this + 1304);
  do
  {
    MemChunkAddChunk(v7, 1024, v8, this);
    v8 += 5;
    v7 += 4;
  }

  while (v7 != 20);
  v9 = (this + 1424);
  for (i = 20; i != 36; i += 4)
  {
    MemChunkAddChunk(i, 512, v9, this);
    v9 += 5;
  }

  v11 = (this + 1584);
  do
  {
    MemChunkAddChunk(i, 256, v11, this);
    v11 += 5;
    i += 4;
  }

  while (i != 68);
  v12 = 0;
  v13 = 15;
  v14 = 80;
  v15 = 16;
  v16 = 128;
  do
  {
    v17 = v15;
    v18 = v14;
    v19 = 4;
    v20 = v14;
    v21 = v13;
    while (v12 != 4 || v19 != 1)
    {
      v13 = (v21 + 1);
      MemChunkAddChunk(v20, v16, &v6[40 * v21], this);
      v20 += v17;
      v21 = v13;
      if (!--v19)
      {
        goto LABEL_17;
      }
    }

    v13 = v21;
LABEL_17:
    v14 = 2 * v18;
    v15 = 2 * v17;
    if (v16 < 4)
    {
      v16 = 1;
    }

    else
    {
      v16 >>= 1;
    }

    ++v12;
  }

  while (v12 != 5);
  MemChunkAddChunk(0x800uLL, 4, &v6[40 * v13], this);
  MemChunkAddChunk(0xC00uLL, 4, &v6[40 * (v13 + 1)], this);
  MemChunkAddChunk(0x1000uLL, 4, &v6[40 * (v13 + 2)], this);
  MemChunkAddChunk(0x1800uLL, 4, &v6[40 * (v13 + 3)], this);
  MemChunkAddChunk(0x2000uLL, 4, &v6[40 * (v13 + 4)], this);
  MemChunkAddChunk(0x3000uLL, 4, &v6[40 * (v13 + 5)], this);
  MemChunkAddChunk(0x3C00uLL, 4, &v6[40 * (v13 + 6)], this);
  MemChunkAddChunk(0x5400uLL, 3, &v6[40 * (v13 + 7)], this);
  v22 = &v6[40 * (v13 + 8)];
  MemChunkAddChunk(0x7C00uLL, 2, v22, this);
  *(this + 1264) = 1;
  if (*(v22 + 4) != 32736)
  {
    errWarnInternal("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/memchunk.cpp", 2544, "mrecutil/memchunk", 2, "%llu %llu", *(v22 + 4), 32736);
  }
}

__n128 MemChunkRegion::getRegionStats@<Q0>(MemChunkRegion *this@<X0>, uint64_t a2@<X8>)
{
  if (!this)
  {
    if (MemChunkRegion::smTlsID == -1)
    {
      goto LABEL_6;
    }

    v4 = pthread_getspecific(MemChunkRegion::smTlsID);
    if (!v4)
    {
      goto LABEL_6;
    }

    this = *v4;
    if (!this)
    {
      pthread_setspecific(MemChunkRegion::smTlsID, 0);
LABEL_6:
      this = &gGlobalMemChunkRegion;
    }
  }

  v5 = *(this + 16773);
  *(a2 + 32) = *(this + 16772);
  *(a2 + 48) = v5;
  v6 = *(this + 16775);
  *(a2 + 64) = *(this + 16774);
  *(a2 + 80) = v6;
  result = *(this + 16770);
  v8 = *(this + 16771);
  *a2 = result;
  *(a2 + 16) = v8;
  return result;
}

void *MemChunkRegion::resetInternalLocalMaxAllocBytes(void *this, MemChunkRegion *a2)
{
  if (!this)
  {
    if (MemChunkRegion::smTlsID == -1)
    {
      goto LABEL_6;
    }

    v2 = pthread_getspecific(MemChunkRegion::smTlsID);
    if (!v2)
    {
      goto LABEL_6;
    }

    this = *v2;
    if (!this)
    {
      pthread_setspecific(MemChunkRegion::smTlsID, 0);
LABEL_6:
      this = &gGlobalMemChunkRegion;
    }
  }

  this[33550] = this[33541];
  return this;
}

uint64_t MemChunkRegion::getAndResetInternalLocalMaxAllocBytes(MemChunkRegion *this, MemChunkRegion *a2)
{
  if (!this)
  {
    if (MemChunkRegion::smTlsID == -1)
    {
      goto LABEL_6;
    }

    v2 = pthread_getspecific(MemChunkRegion::smTlsID);
    if (!v2)
    {
      goto LABEL_6;
    }

    this = *v2;
    if (!this)
    {
      pthread_setspecific(MemChunkRegion::smTlsID, 0);
LABEL_6:
      this = &gGlobalMemChunkRegion;
    }
  }

  v3 = this + 266240;
  result = *(this + 33550);
  *(v3 + 270) = *(v3 + 261);
  return result;
}

void MemChunkRegion::deleteMemChunkRegion(MemChunkRegion *this, MemChunkRegion *a2)
{
  if (this != &gGlobalMemChunkRegion)
  {
    v3 = *(this + 160);
    v4 = *(this + 159);
    if (v3)
    {
      *(v3 + 1272) = v4;
    }

    if (v4)
    {
      v5 = (v4 + 1280);
    }

    else
    {
      v5 = &MemChunkRegion::smpMemChunkRegions;
    }

    *v5 = v3;
    MemChunkRegion::shutdown(this, 0, 0, 0, 0, &byte_262899963);
    if (this)
    {

      MemChunkFree(this, v6);
    }
  }
}

void MemChunkRegion::shutdown(MemChunkRegion *this, uint64_t a2, char a3, int a4, BOOL a5, const char *a6)
{
  if (a2 && a4)
  {
    haveTerminatedSuccessfully();
  }

  v10 = *(this + 162);
  if (*(this + 161))
  {
    *(this + 161) = 0;
  }

  if (!v10)
  {
    v17 = 0;
    *(this + 803) = 0;
LABEL_30:
    bzero(this + 8 * v17 + 6432, 261880 - 8 * v17);
    goto LABEL_31;
  }

  do
  {
    while (1)
    {
      v11 = v10;
      v10 = v10[1];
      v12 = *v11;
      if (*v11)
      {
        break;
      }

LABEL_13:
      *(this + 162) = v10;
      if (!v10)
      {
        goto LABEL_16;
      }
    }

    if (*(v12 + 24) || *(v12 + 16))
    {
      if (this != &gGlobalMemChunkRegion)
      {
        v13 = (v11[3] * (v11[4] + 16) + 31) & 0xFFFFFFFFFFFF0000;
        do
        {
          *v11 = *(v12 + 16);
          munmap(v12, v13 + 0x10000);
          v12 = *v11;
        }

        while (*v11);
      }

      goto LABEL_13;
    }

    *(this + 162) = v10;
    v14 = ((v11[3] * (v11[4] + 16) + 31) & 0xFFFFFFFFFFFF0000) + 0x10000;
    munmap(v12, v14);
    *(this + 33541) -= v14;
    --*(this + 33544);
  }

  while (v10);
LABEL_16:
  v15 = *(this + 162);
  *(this + 803) = 0;
  if (!v15)
  {
    v17 = 0;
    goto LABEL_30;
  }

  v16 = 0;
  do
  {
    v17 = *(v15 + 32);
    if (v16 + 1 < v17)
    {
      v18 = (v17 - v16) & 0xFFFFFFFFFFFFFFFELL;
      v19 = vdupq_n_s64(v17 + ~v16 - 1);
      v20 = (this + 8 * v16 + 6440);
      v21 = 805;
      do
      {
        v22 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(vdupq_n_s64(v21 - 805), xmmword_26286B680)));
        if (v22.i8[0])
        {
          *(v20 - 1) = v15;
        }

        if (v22.i8[4])
        {
          *v20 = v15;
        }

        v21 += 2;
        v20 += 2;
        v18 -= 2;
      }

      while (v18);
    }

    v15 = *(v15 + 8);
    v16 = v17;
  }

  while (v15);
  if ((v17 + 1) >> 5 <= 0x3FE)
  {
    goto LABEL_30;
  }

LABEL_31:
  *(this + 1264) = 0;
  v23 = gShadowShowMemStatsOnThreadExit;
  if (a2)
  {
    v23 = a3;
  }

  if (v23)
  {
    if (a2 && haveTerminatedSuccessfully())
    {
      MrecInitModule_sdpres_sdapi();
    }

    MemChunkRegion::memStatsDisplayFromRef(this, 0, a2, 1, this + 240, 0, 0, a6);
  }
}

uint64_t MemChunkRegion::getBlockRegion(MemChunkRegion *this, const void *a2)
{
  v2 = *(this - 1);
  if (v2 == -3)
  {
    v3 = this - 16;
  }

  else
  {
    v3 = (*(v2 + 8) + 16);
  }

  return *v3;
}

unint64_t MemChunkSuggestAllocExtraItems(unint64_t a1, unint64_t a2, MemChunkRegion *a3)
{
  if (a3)
  {
    goto LABEL_7;
  }

  if (MemChunkRegion::smTlsID != -1)
  {
    v5 = pthread_getspecific(MemChunkRegion::smTlsID);
    if (v5)
    {
      a3 = *v5;
      if (*v5)
      {
        goto LABEL_7;
      }

      pthread_setspecific(MemChunkRegion::smTlsID, 0);
    }
  }

  a3 = &gGlobalMemChunkRegion;
LABEL_7:
  if (a1 > 0x7FE0)
  {
    v6 = (a1 + 287) & 0xFFFFFFFFFFFFF000 | 0xEE0;
  }

  else
  {
    v6 = *(*(a3 + a1 + 803) + 32);
  }

  return (v6 - a1) / a2;
}

void *GetMemChunkRegionAndSuggestSize(void *a1, unint64_t a2, unint64_t *a3)
{
  if (a1)
  {
    v5 = *(a1 - 1);
    if (v5 == -3)
    {
      v6 = (a1 - 2);
    }

    else
    {
      v6 = (*(v5 + 8) + 16);
    }

    result = *v6;
  }

  else
  {
    if (MemChunkRegion::smTlsID != -1)
    {
      v7 = pthread_getspecific(MemChunkRegion::smTlsID);
      if (v7)
      {
        result = *v7;
        if (result)
        {
          goto LABEL_11;
        }

        pthread_setspecific(MemChunkRegion::smTlsID, 0);
      }
    }

    result = &gGlobalMemChunkRegion;
  }

LABEL_11:
  if (a2 > 0x7FE0)
  {
    v9 = (a2 + 287) & 0xFFFFFFFFFFFFF000 | 0xEE0;
  }

  else
  {
    v9 = *(result[a2 + 803] + 32);
  }

  *a3 = v9;
  return result;
}

uint64_t *MemChunkAlloc(unint64_t a1, MemChunkRegion *a2)
{
  v2 = a2;
  if (!a2)
  {
    if (MemChunkRegion::smTlsID != -1)
    {
      v4 = pthread_getspecific(MemChunkRegion::smTlsID);
      if (v4)
      {
        v2 = *v4;
        if (*v4)
        {
          goto LABEL_7;
        }

        pthread_setspecific(MemChunkRegion::smTlsID, 0);
      }
    }

    v2 = &gGlobalMemChunkRegion;
  }

LABEL_7:
  if (a1 > 0x7FE0)
  {
    v9 = (a1 + 31) & 0xFFFFFFFFFFFFF000;
    v10 = v9 + 4096;
    v11 = mmap(0, v9 + 4096, 3, 4098, -1, 0);
    if (v11 == -1)
    {
      ThrowNewFailure(v2, v9 + 4096);
    }

    v12 = *(v2 + 33543) + 1;
    *(v2 + 33543) = v12;
    v13 = *(v2 + 33544);
    *(v2 + 33544) = v13 + 1;
    if (v13 >= *(v2 + 33545))
    {
      *(v2 + 33545) = v13 + 1;
      *(v2 + 33548) = v12;
    }

    if (*(v2 + 33546) < v10)
    {
      *(v2 + 33546) = v10;
      *(v2 + 33549) = v12;
    }

    *(v2 + 33540) += v10;
    v14 = *(v2 + 33541) + v10;
    *(v2 + 33541) = v14;
    if (v14 > *(v2 + 33550))
    {
      *(v2 + 33550) = v14;
    }

    if (v14 > *(v2 + 33551))
    {
      *(v2 + 33551) = v14;
    }

    if (v14 > *(v2 + 33542))
    {
      *(v2 + 33542) = v14;
      *(v2 + 33547) = v12;
    }

    v15 = &v11[16 * DgnPRandom::normalizedNext((v2 + 4), ((v9 - a1 + 4064) >> 4) + 1)];
    v7 = (v15 + 32);
    *(v15 + 2) = v2;
    *(v15 + 3) = -3;
    *(v15 + 3) = v10;
  }

  else
  {
    v5 = *(v2 + a1 + 803);
    v6 = *v5;
    if (*v5)
    {
      v7 = *v6;
      v8 = *(v6 + 6) + 1;
    }

    else
    {
      v16 = v5[4];
      v17 = v16 + 16;
      v18 = ((v5[3] * (v16 + 16) + 31) & 0xFFFFFFFFFFFF0000) + 0x10000;
      v6 = mmap(0, v18, 3, 4098, -1, 0);
      if (v6 == -1)
      {
        ThrowNewFailure(v2, v18);
      }

      v19 = *(v2 + 33543) + 1;
      *(v2 + 33543) = v19;
      v20 = *(v2 + 33544);
      *(v2 + 33544) = v20 + 1;
      if (v20 >= *(v2 + 33545))
      {
        *(v2 + 33545) = v20 + 1;
        *(v2 + 33548) = v19;
      }

      if (*(v2 + 33546) < v18)
      {
        *(v2 + 33546) = v18;
        *(v2 + 33549) = v19;
      }

      *(v2 + 33540) += v18;
      v21 = *(v2 + 33541) + v18;
      *(v2 + 33541) = v21;
      if (v21 > *(v2 + 33550))
      {
        *(v2 + 33550) = v21;
      }

      if (v21 > *(v2 + 33551))
      {
        *(v2 + 33551) = v21;
      }

      if (v21 > *(v2 + 33542))
      {
        *(v2 + 33542) = v21;
        *(v2 + 33547) = v19;
      }

      *(v6 + 6) = 0;
      v7 = (v6 + 48);
      v22 = (v5[3] - 1) * v17;
      v23 = &v6[v22 + 48];
      if ((v22 & 0x8000000000000000) == 0)
      {
        v24 = v6 + 64;
        do
        {
          *(v24 - 3) = v6;
          *(v24 - 2) = &v16[v24];
          v24 = &v17[v24];
        }

        while (v24 - 16 <= v23);
      }

      *v23 = 0;
      *v6 = v7;
      *(v6 + 1) = v5;
      v25 = *v5;
      *v5 = v6;
      *(v6 + 2) = v25;
      v8 = 1;
    }

    *(v6 + 6) = v8;
    v26 = *v7;
    *v6 = *v7;
    if (!v26)
    {
      *v5 = *(v6 + 2);
    }
  }

  return v7;
}

uint64_t MemChunkFree(void *a1, MemChunkRegion *a2)
{
  result = *(a1 - 1);
  if (result == -3)
  {
    v9 = *(a1 - 5);
    v10 = *(a1 - 2) + 266240;
    result = (a1 - 4) & 0xFFFFFFFFFFFFF000;
    goto LABEL_14;
  }

  v4 = *(result + 8);
  v5 = v4[2];
  v6 = *(result + 24) - 1;
  *(result + 24) = v6;
  if (!v6)
  {
    v11 = *v4;
    if (*v4 == result)
    {
      v13 = *(result + 16);
      if (!v13)
      {
        goto LABEL_3;
      }

      *v4 = v13;
    }

    else
    {
      while (v11)
      {
        v12 = v11;
        v11 = *(v11 + 16);
        if (v11 == result)
        {
          *(v12 + 16) = *(result + 16);
          break;
        }
      }
    }

    v10 = v5 + 266240;
    v9 = ((v4[3] * (v4[4] + 16) + 31) & 0xFFFFFFFFFFFF0000) + 0x10000;
LABEL_14:
    result = munmap(result, v9);
    *(v10 + 2088) -= v9;
    --*(v10 + 2112);
    return result;
  }

LABEL_3:
  v7 = *result;
  if (!*result)
  {
    v8 = *v4;
    *v4 = result;
    *(result + 16) = v8;
  }

  *a1 = v7;
  *result = a1;
  return result;
}

void MemChunkRegion::printSomeStats(MemChunkRegion *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, const char *a9)
{
  if ((a2 & 1) != 0 || a3)
  {
    v11 = *(this + 33541);
    v31 = *(this + 33543);
    v33 = *(this + 33544);
    v30 = *(this + 33545);
    v12 = *(this + 33546);
    v15 = *(this + 33548);
    v32 = *(this + 33549);
    v16 = a4;
    v17 = a5;
    xgenprintf(a2, a3, "%sAlloc: Memory alloc bytes: Tot %lldK, Max %lldK (at alloc #%lld)\n", a4, a5, a9, *(this + 33540) / 1024, *(this + 33542) / 1024, *(this + 33547));
    xgenprintf(a2, a3, "%sAlloc: Memory alloc items: Tot %lld, Max %lld (at alloc #%lld)\n", v18, v19, a9, v31, v30, v15);
    xgenprintf(a2, a3, "%sAlloc: Memory alloc largest: %lldK (alloc #%lld)\n", v20, v21, a9, v12 / 1024, v32);
    if (v17)
    {
      if (v16 && (haveTerminatedSuccessfully() & 1) == 0 && a6)
      {
        xgenprintf(a2, a3, "%sAlloc: Finalize not called -- leaks detected.\n", v22, v23, a9);
      }

      else
      {
        if (!a6)
        {
          xgenprintf(a2, a3, "%sAlloc: Detected no leaks.\n", v22, v23, a9, v27, v28, v29);
          return;
        }

        xgenprintf(a2, a3, "%sAlloc: **** Leaks detected! ****\n", v22, v23, a9);
      }
    }

    v24 = v11 - a7;
    if (v11 < a7)
    {
      v24 = v11 - a7 + 1023;
    }

    xgenprintf(a2, a3, "%sAlloc: Memory alloc bytes: Cur %lldK, Ini %lldK, C-I %lldK\n", v22, v23, a9, v11 / 1024, a7 / 1024, v24 >> 10);
    xgenprintf(a2, a3, "%sAlloc: Memory alloc items: Cur %lld, Ini %lld, C-I %lld\n", v25, v26, a9, v33, a8, v33 - a8);
  }
}

void MemChunkInit(void)
{
  v2 = 0;
  v0 = pthread_key_create(&v2, 0);
  v1 = v2;
  if (v0)
  {
    v1 = -1;
  }

  MemChunkRegion::smTlsID = v1;
  MemChunkRegion::initMemChunkRegion(&gGlobalMemChunkRegion, "MREC first construction -> MREC last destruction:");
}

double MemChunkRegion::resetMaxAlloc(MemChunkRegion *this)
{
  v1 = *(this + 33541);
  *(this + 33542) = v1;
  *(this + 33545) = *(this + 33544);
  *(this + 33546) = 0;
  v2 = *(this + 33543);
  *(this + 33547) = v2;
  *(this + 33548) = v2;
  *(this + 33549) = v2;
  *(this + 33550) = v1;
  *(this + 33551) = v1;
  result = 0.0;
  *(this + 16776) = 0u;
  *(this + 16777) = 0u;
  *(this + 16778) = 0u;
  return result;
}

void MemChunkAddChunk(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (((a1 + 15) & 0xFFFFFFFFFFFFFFF0) == a1)
  {
    v6 = (a4 + 1296);
    v7 = *(a4 + 1296);
    if (v7 && *(v7 + 32) < a1)
    {
      do
      {
        v8 = v7;
        v7 = *(v7 + 8);
      }

      while (v7 && *(v7 + 32) < a1);
      v6 = (v8 + 8);
    }

    v9 = ((a1 + 16) * a2 + 31) & 0xFFFFFFFFFFFF0000 | 0xFFE0;
    v10 = v9 / (a1 + 16);
    v11 = ((v9 % (a1 + 16) / v10) & 0xFFFFFFFFFFFFFFF0) + a1;
    if (v11 >= 0x7FE1)
    {
      errWarnInternal("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/memchunk.cpp", 2335, "mrecutil/memchunk", 1, "%llu %llu", v11, 32736);
      v7 = *v6;
    }

    a3[2] = a4;
    a3[3] = v10;
    a3[4] = v11;
    *a3 = 0;
    a3[1] = v7;
    *v6 = a3;
    if ((v11 & 0x8000000000000000) == 0)
    {
      v12 = a4 + 6424;
      do
      {
        if (*(v12 + 8 * v11))
        {
          break;
        }

        *(v12 + 8 * v11) = a3;
      }

      while (v11-- > 0);
    }
  }
}

uint64_t MrecInitLibrary_frame(void)
{
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_wavedata_frame();

  return MrecInitModule_sdpres_sdapi();
}

uint64_t MrecInitLibrarySet_throughFrame(void)
{
  MrecInitLibrarySet_throughFileutil();

  return MrecInitLibrary_frame();
}

void ChannelMgr::ChannelMgr(ChannelMgr *this)
{
  *this = 0x10000001DLL;
  *(this + 2) = 0;
  *(this + 2) = 1;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0x10000001DLL;
  *(this + 10) = 0;
  *(this + 18) = 1;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 26) = 0;
  *(this + 14) = 0;
  v17 = this + 112;
  *(this + 15) = 0;
  *(this + 16) = 0x10000001DLL;
  *(this + 18) = 0;
  *(this + 11) = 0u;
  v2 = this + 176;
  *(this + 34) = 1;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 42) = 0;
  *(this + 12) = 0u;
  v3 = this + 192;
  *(this + 13) = 0u;
  v4 = this + 208;
  *(this + 14) = 0u;
  v5 = this + 224;
  *(this + 15) = 0u;
  v6 = this + 240;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  v7 = this + 304;
  DgnPrimArray<unsigned long long>::reallocElts(this + 48, 1, 1);
  v8 = *(this + 50);
  v9 = *(this + 51);
  v10 = *(this + 14);
  *(*(this + 6) + 8 * v10) = 0;
  *(this + 14) = v10 + 1;
  if (v8 == v9)
  {
    DgnPrimArray<unsigned int>::reallocElts(v3, 1, 1);
    v8 = *(this + 50);
  }

  *(*(this + 24) + 4 * v8) = 0;
  ++*(this + 50);
  v11 = *(this + 54);
  if (v11 == *(this + 55))
  {
    DgnPrimArray<unsigned int>::reallocElts(v4, 1, 1);
    v11 = *(this + 54);
  }

  *(*(this + 26) + 4 * v11) = 0;
  ++*(this + 54);
  v12 = *(this + 58);
  if (v12 == *(this + 59))
  {
    DgnPrimArray<unsigned int>::reallocElts(v5, 1, 1);
    v12 = *(this + 58);
  }

  *(*(this + 28) + 4 * v12) = 0;
  ++*(this + 58);
  v13 = *(this + 62);
  if (v13 == *(this + 63))
  {
    DgnPrimArray<unsigned int>::reallocElts(v6, 1, 1);
    v13 = *(this + 62);
  }

  *(*(this + 30) + 4 * v13) = 0;
  ++*(this + 62);
  v14 = *(this + 30);
  if (v14 == *(this + 31))
  {
    DgnPrimArray<unsigned long long>::reallocElts(v17, 1, 1);
    v14 = *(this + 30);
  }

  *(*(this + 14) + 8 * v14) = 0;
  *(this + 30) = v14 + 1;
  v15 = *(this + 46);
  if (v15 == *(this + 47))
  {
    DgnPrimArray<unsigned long long>::reallocElts(v2, 1, 1);
    v15 = *(this + 46);
  }

  *(*(this + 22) + 8 * v15) = 0;
  *(this + 46) = v15 + 1;
  v16 = *(this + 78);
  if (v16 == *(this + 79))
  {
    DgnPrimArray<unsigned long long>::reallocElts(v7, 1, 1);
    v16 = *(this + 78);
  }

  *(*(this + 38) + 8 * v16) = 0;
  *(this + 78) = v16 + 1;
}

void sub_2627700C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  DgnIOwnArray<ParamSetBase *>::releaseAll(v16);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v17);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v18);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a13);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v14);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v22);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v21);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v20);
  DgnIOwnArray<SigProc *>::releaseAll(v19);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a12);
  DgnIOwnArray<Utterance *>::releaseAll(a14);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a11);
  DgnIOwnArray<Channel *>::releaseAll(v15);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a10);
  _Unwind_Resume(a1);
}

void ChannelMgr::closeChannel(ChannelMgr *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ChannelMgr::validateChannelId(this, a2, a3, a4, a5, a6, a7, a8);
  v10 = *(*(this + 6) + 8 * a2);
  if ((*(*v10 + 160))(v10))
  {
    ChannelMgr::validateChannelId(this, a2, v11, v12, v13, v14, v15, v16);
    v17 = *(*(this + 6) + 8 * a2);
    (*(*v17 + 96))(v17);
  }

  v18 = *(this + 30);
  if (v18)
  {
    v19 = 0;
    v20 = *(this + 14);
    do
    {
      v21 = *(v20 + 8 * v19);
      if (v21 && *v21 == a2)
      {
        --*(*(this + 24) + 4 * a2);
        *v21 = -1;
        v18 = *(this + 30);
      }

      ++v19;
    }

    while (v19 < v18);
  }

  *(*(this + 26) + 4 * a2) = 0;
  *(*(this + 28) + 4 * a2) = 0;
  *(*(this + 30) + 4 * a2) = 0;
  ChannelMgr::validateChannelId(this, a2, v11, v12, v13, v14, v15, v16);
  DgnDelete<Channel>(*(*(this + 6) + 8 * a2));
  *(*(this + 6) + 8 * a2) = 0;
  *(*(this + 24) + 4 * a2) = 0;
  v22 = *(this + 38);
  v23 = *(v22 + 8 * a2);
  if (v23)
  {
    --*(v23 + 36);
    *(v22 + 8 * a2) = 0;
  }

  IdMgr<unsigned int>::recycleId(this, a2);
}

void ChannelMgr::startupChannelMgr(ChannelMgr *this)
{
  v1 = MemChunkAlloc(0x140uLL, 0);
  ChannelMgr::ChannelMgr(v1);
  ChannelMgr::smpChannelMgr = v2;
}

void ChannelMgr::validateChannelId(ChannelMgr *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 14) <= a2 || !*(*(this + 6) + 8 * a2) || !*(*(this + 38) + 8 * a2))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/chanmgr.cpp", 295, "channel/chanmgr", 2, "%u", a7, a8, a2);
  }
}

uint64_t DgnDelete<Channel>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    (*(*result + 72))(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t ChannelMgr::sourceHasFeatData(ChannelMgr *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ChannelMgr::validateChannelId(this, a2, a3, a4, a5, a6, a7, a8);
  v10 = *(**(*(this + 6) + 8 * a2) + 192);

  return v10();
}

uint64_t ChannelMgr::getUtterance(ChannelMgr *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 30) <= a2 || (result = *(*(this + 14) + 8 * a2)) == 0)
  {
    v10 = a2;
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/chanmgr.cpp", 522, "channel/chanmgr", 1, "%u", a7, a8, a2);
    return *(*(this + 14) + 8 * v10);
  }

  return result;
}

ChannelMgr *ChannelMgr::collectAvailableDataForUtt(ChannelMgr *this, Utterance *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  if ((v8 - 1) <= 0xFFFFFFFD)
  {
    v9 = this;
    ChannelMgr::validateChannelId(this, *a2, a3, a4, a5, a6, a7, a8);
    v10 = *(**(*(v9 + 6) + 8 * v8) + 200);

    return v10();
  }

  return this;
}

double ChannelMgr::collectThroughUttFrame@<D0>(ChannelMgr *this@<X0>, Utterance *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  v9 = *a2;
  if ((v9 - 1) > 0xFFFFFFFD)
  {
    result = 0.0;
    *a9 = 0u;
    a9[1] = 0u;
  }

  else
  {
    ChannelMgr::validateChannelId(this, *a2, a3, a4, a5, a6, a7, a8);
    v11 = *(**(*(this + 6) + 8 * v9) + 224);

    v11();
  }

  return result;
}

uint64_t ChannelMgr::setRecogCtlUtterance(ChannelMgr *this, Utterance *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  ChannelMgr::validateChannelId(this, *a2, a3, a4, a5, a6, a7, a8);
  v10 = *(**(*(this + 6) + 8 * v9) + 232);

  return v10();
}

uint64_t ChannelMgr::maybeSyncRecogCtlUtterance(ChannelMgr *this, Utterance *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  ChannelMgr::validateChannelId(this, *a2, a3, a4, a5, a6, a7, a8);
  v10 = *(**(*(this + 6) + 8 * v9) + 240);

  return v10();
}

uint64_t ChannelMgr::maybeStartCollectingDataForUtt(ChannelMgr *this, Utterance *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  if ((v8 - 1) > 0xFFFFFFFD)
  {
    return 0;
  }

  ChannelMgr::validateChannelId(this, *a2, a3, a4, a5, a6, a7, a8);
  v10 = *(**(*(this + 6) + 8 * v8) + 248);

  return v10();
}

double ChannelMgr::maybeStopCollectingDataForUtt@<D0>(ChannelMgr *this@<X0>, Utterance *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  v9 = *a2;
  if ((v9 - 1) > 0xFFFFFFFD)
  {
    result = 0.0;
    *a9 = 0u;
    a9[1] = 0u;
  }

  else
  {
    ChannelMgr::validateChannelId(this, *a2, a3, a4, a5, a6, a7, a8);
    v11 = *(**(*(this + 6) + 8 * v9) + 256);

    v11();
  }

  return result;
}

Utterance *DgnDelete<Utterance>(Utterance *result)
{
  if (result)
  {
    Utterance::~Utterance(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void ChannelMgr::saveSigProc(ChannelMgr *a1, unsigned int a2, uint64_t a3, _DWORD *a4, int a5, int a6)
{
  LoadSaveTracker::LoadSaveTracker(&v19);
  SigProc = ChannelMgr::getSigProc(a1, a2, v12, v13, v14, v15, v16, v17);
  SigProc::saveSigProc(SigProc, a3, a4, a5, a6);
  LoadSaveTracker::~LoadSaveTracker(&v19);
}

uint64_t ChannelMgr::getSigProc(ChannelMgr *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 46) <= a2 || (result = *(*(this + 22) + 8 * a2)) == 0)
  {
    v10 = a2;
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/chanmgr.cpp", 734, "channel/chanmgr", 3, "%u", a7, a8, a2);
    return *(*(this + 22) + 8 * v10);
  }

  return result;
}

SigProc *DgnDelete<SigProc>(SigProc *result)
{
  if (result)
  {
    SigProc::~SigProc(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void ChannelMgr::printSize(ChannelMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/chanmgr.cpp", 850, &v193);
  if (v194)
  {
    v15 = v193;
  }

  else
  {
    v15 = &unk_26288CD2D;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, v12, v13, v14, a3, &unk_26288CD2D, a3, &unk_26288CD2D, v15);
  DgnString::~DgnString(&v193);
  if (a2 != -1)
  {
    xlprintf("%d ", v16, v17, v18, v19, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v16, v17, v18, v19, a3, &unk_26288CD2D);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/chanmgr.cpp", 851, &v193);
  if (v194)
  {
    v24 = v193;
  }

  else
  {
    v24 = &unk_26288CD2D;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v20, v21, v22, v23, (a3 + 1), &unk_26288CD2D, (a3 + 1), &unk_26288CD2D, v24);
  DgnString::~DgnString(&v193);
  v189 = (a3 + 1);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v25, v26, v27, v28, v189, &unk_26288CD2D);
  v29 = *(this + 14);
  if (v29)
  {
    v30 = 0;
    v31 = 0;
    do
    {
      v32 = *(this + 6);
      if (*(v32 + 8 * v30))
      {
        v193 = 0;
        v191 = 0;
        v192 = 0;
        (*(**(v32 + 8 * v30) + 288))();
        v31 += v193;
        v29 = *(this + 14);
      }

      ++v30;
    }

    while (v30 < v29);
  }

  else
  {
    v31 = 0;
    v29 = 0;
  }

  v33 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v33 = 12;
  }

  v34 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v34 = 3;
  }

  v35 = v33 + v31 + (*(this + 15) << v34);
  v36 = v33 + (v29 << v34);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/chanmgr.cpp", 851, &v193);
  if (v194)
  {
    v41 = v193;
  }

  else
  {
    v41 = &unk_26288CD2D;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, v38, v39, v40, v189, &unk_26288CD2D, (34 - a3), (34 - a3), v41, v35, v36, 0);
  DgnString::~DgnString(&v193);
  *a4 += v35;
  *a5 += v36;
  *a6 = *a6;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/chanmgr.cpp", 852, &v193);
  if (v194)
  {
    v46 = v193;
  }

  else
  {
    v46 = &unk_26288CD2D;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v42, v43, v44, v45, v189, &unk_26288CD2D, v189, &unk_26288CD2D, v46);
  v190 = (34 - a3);
  DgnString::~DgnString(&v193);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v47, v48, v49, v50, v189, &unk_26288CD2D);
  v51 = *(this + 30);
  if (v51)
  {
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    do
    {
      v56 = *(this + 14);
      if (*(v56 + 8 * v52))
      {
        v193 = 0;
        v191 = 0;
        v192 = 0;
        Utterance::printSize(*(v56 + 8 * v52), v52, (a3 + 2), &v193, &v192, &v191);
        v53 += v193;
        v54 += v192;
        v55 += v191;
        v51 = *(this + 30);
      }

      ++v52;
    }

    while (v52 < v51);
  }

  else
  {
    v55 = 0;
    v54 = 0;
    v53 = 0;
    v51 = 0;
  }

  v57 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v57 = 12;
  }

  v58 = v57 + v53;
  v59 = v57 + v54;
  v60 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v60 = 3;
  }

  v61 = v58 + (*(this + 31) << v60);
  v62 = v59 + (v51 << v60);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/chanmgr.cpp", 852, &v193);
  if (v194)
  {
    v67 = v193;
  }

  else
  {
    v67 = &unk_26288CD2D;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v63, v64, v65, v66, v189, &unk_26288CD2D, v190, v190, v67, v61, v62, v55);
  DgnString::~DgnString(&v193);
  *a4 += v61;
  *a5 += v62;
  *a6 += v55;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/chanmgr.cpp", 853, &v193);
  if (v194)
  {
    v72 = v193;
  }

  else
  {
    v72 = &unk_26288CD2D;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v68, v69, v70, v71, v189, &unk_26288CD2D, v189, &unk_26288CD2D, v72);
  DgnString::~DgnString(&v193);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v73, v74, v75, v76, v189, &unk_26288CD2D);
  v77 = *(this + 46);
  if (v77)
  {
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    do
    {
      v82 = *(this + 22);
      if (*(v82 + 8 * v78))
      {
        v193 = 0;
        v191 = 0;
        v192 = 0;
        SigProc::printSize(*(v82 + 8 * v78), v78, (a3 + 2), &v193, &v192, &v191);
        v79 += v193;
        v80 += v192;
        v81 += v191;
        v77 = *(this + 46);
      }

      ++v78;
    }

    while (v78 < v77);
  }

  else
  {
    v81 = 0;
    v80 = 0;
    v79 = 0;
    v77 = 0;
  }

  v83 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v83 = 12;
  }

  v84 = v83 + v79;
  v85 = v83 + v80;
  v86 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v86 = 3;
  }

  v87 = v84 + (*(this + 47) << v86);
  v88 = v85 + (v77 << v86);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/chanmgr.cpp", 853, &v193);
  if (v194)
  {
    v93 = v193;
  }

  else
  {
    v93 = &unk_26288CD2D;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v89, v90, v91, v92, v189, &unk_26288CD2D, v190, v190, v93, v87, v88, v81);
  DgnString::~DgnString(&v193);
  *a4 += v87;
  *a5 += v88;
  *a6 += v81;
  v94 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v94 = 12;
  }

  v95 = *(this + 6);
  v96 = *(this + 7);
  v97 = v94 + 4 * (v95 - 1) + 4;
  if (v95 <= 0)
  {
    v97 = v94;
  }

  v98 = v96 >= v95;
  v99 = v97 + 4 * (v96 - v95);
  if (v98)
  {
    v94 = v99;
  }

  v100 = v94 + 24;
  v101 = DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::sizeObject(this + 4, 1u) + 12;
  v102 = *(this + 6);
  if (v102 <= *(this + 7))
  {
    v103 = 0;
  }

  else
  {
    v103 = 4 * v102;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/chanmgr.cpp", 855, &v193);
  if (v194)
  {
    v108 = v193;
  }

  else
  {
    v108 = &unk_26288CD2D;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v104, v105, v106, v107, v189, &unk_26288CD2D, v190, v190, v108, v100, v101, v103);
  DgnString::~DgnString(&v193);
  *a4 += v100;
  *a5 += v101;
  *a6 += v103;
  v109 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v109 = 12;
  }

  v110 = *(this + 22);
  v111 = *(this + 23);
  v98 = v111 >= v110;
  v112 = v111 - v110;
  if (v98)
  {
    if (v110 > 0)
    {
      v109 += 4 * (v110 - 1) + 4;
    }

    v109 += 4 * v112;
  }

  v113 = v109 + 24;
  v114 = DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::sizeObject(this + 20, 1u) + 12;
  v115 = *(this + 22);
  if (v115 <= *(this + 23))
  {
    v116 = 0;
  }

  else
  {
    v116 = 4 * v115;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/chanmgr.cpp", 856, &v193);
  if (v194)
  {
    v121 = v193;
  }

  else
  {
    v121 = &unk_26288CD2D;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v117, v118, v119, v120, v189, &unk_26288CD2D, v190, v190, v121, v113, v114, v116);
  DgnString::~DgnString(&v193);
  *a4 += v113;
  *a5 += v114;
  *a6 += v116;
  v122 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v122 = 12;
  }

  v123 = *(this + 38);
  v124 = *(this + 39);
  v98 = v124 >= v123;
  v125 = v124 - v123;
  if (v98)
  {
    if (v123 > 0)
    {
      v122 += 4 * (v123 - 1) + 4;
    }

    v122 += 4 * v125;
  }

  v126 = v122 + 24;
  v127 = DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::sizeObject(this + 36, 1u) + 12;
  v128 = *(this + 38);
  if (v128 <= *(this + 39))
  {
    v129 = 0;
  }

  else
  {
    v129 = 4 * v128;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/chanmgr.cpp", 858, &v193);
  if (v194)
  {
    v134 = v193;
  }

  else
  {
    v134 = &unk_26288CD2D;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v130, v131, v132, v133, v189, &unk_26288CD2D, v190, v190, v134, v126, v127, v129);
  DgnString::~DgnString(&v193);
  *a4 += v126;
  *a5 += v127;
  *a6 += v129;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v135 = 12;
  }

  else
  {
    v135 = 16;
  }

  v136 = *(this + 50);
  v137 = *(this + 51);
  if (v137 >= v136)
  {
    v138 = 0;
    if (v136 > 0)
    {
      v135 += 4 * (v136 - 1) + 4;
    }

    v139 = v135 + 4 * (v137 - v136);
  }

  else
  {
    v138 = 4 * v136;
    v139 = v135;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/chanmgr.cpp", 860, &v193);
  if (v194)
  {
    v144 = v193;
  }

  else
  {
    v144 = &unk_26288CD2D;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v140, v141, v142, v143, v189, &unk_26288CD2D, v190, v190, v144, v139, v135, v138);
  DgnString::~DgnString(&v193);
  *a4 += v139;
  *a5 += v135;
  *a6 += v138;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v145 = 12;
  }

  else
  {
    v145 = 16;
  }

  v146 = *(this + 54);
  v147 = *(this + 55);
  if (v147 >= v146)
  {
    v148 = 0;
    if (v146 > 0)
    {
      v145 += 4 * (v146 - 1) + 4;
    }

    v149 = v145 + 4 * (v147 - v146);
  }

  else
  {
    v148 = 4 * v146;
    v149 = v145;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/chanmgr.cpp", 862, &v193);
  if (v194)
  {
    v154 = v193;
  }

  else
  {
    v154 = &unk_26288CD2D;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v150, v151, v152, v153, v189, &unk_26288CD2D, v190, v190, v154, v149, v145, v148);
  DgnString::~DgnString(&v193);
  *a4 += v149;
  *a5 += v145;
  *a6 += v148;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v155 = 12;
  }

  else
  {
    v155 = 16;
  }

  v156 = *(this + 58);
  v157 = *(this + 59);
  if (v157 >= v156)
  {
    v158 = 0;
    if (v156 > 0)
    {
      v155 += 4 * (v156 - 1) + 4;
    }

    v159 = v155 + 4 * (v157 - v156);
  }

  else
  {
    v158 = 4 * v156;
    v159 = v155;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/chanmgr.cpp", 864, &v193);
  if (v194)
  {
    v164 = v193;
  }

  else
  {
    v164 = &unk_26288CD2D;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v160, v161, v162, v163, v189, &unk_26288CD2D, v190, v190, v164, v159, v155, v158);
  DgnString::~DgnString(&v193);
  *a4 += v159;
  *a5 += v155;
  *a6 += v158;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v165 = 12;
  }

  else
  {
    v165 = 16;
  }

  v166 = *(this + 62);
  v167 = *(this + 63);
  if (v167 >= v166)
  {
    v168 = 0;
    if (v166 > 0)
    {
      v165 += 4 * (v166 - 1) + 4;
    }

    v169 = v165 + 4 * (v167 - v166);
  }

  else
  {
    v168 = 4 * v166;
    v169 = v165;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/chanmgr.cpp", 866, &v193);
  if (v194)
  {
    v174 = v193;
  }

  else
  {
    v174 = &unk_26288CD2D;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v170, v171, v172, v173, v189, &unk_26288CD2D, v190, v190, v174, v169, v165, v168);
  DgnString::~DgnString(&v193);
  *a4 += v169;
  *a5 += v165;
  *a6 += v168;
  v175 = sizeObject<ParamSetBase *>(this + 304, 0);
  v176 = sizeObject<ParamSetBase *>(this + 304, 1);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/chanmgr.cpp", 868, &v193);
  if (v194)
  {
    v181 = v193;
  }

  else
  {
    v181 = &unk_26288CD2D;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v177, v178, v179, v180, v189, &unk_26288CD2D, v190, v190, v181, v175, v176, 0);
  DgnString::~DgnString(&v193);
  *a4 += v175;
  *a5 += v176;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/chanmgr.cpp", 869, &v193);
  if (v194)
  {
    v186 = v193;
  }

  else
  {
    v186 = &unk_26288CD2D;
  }

  v187 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v182, v183, v184, v185, a3, &unk_26288CD2D, (35 - a3), (35 - a3), v186, *a4, *a5, *a6);
  DgnString::~DgnString(&v193);
}

uint64_t ChannelMgr::getThreadId(ChannelMgr *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ChannelMgr::validateChannelId(this, a2, a3, a4, a5, a6, a7, a8);
  v10 = *(**(*(this + 6) + 8 * a2) + 296);

  return v10();
}

void *DgnIOwnArray<Channel *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<Channel>(*(*a1 + v3));
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

void *DgnIOwnArray<Utterance *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<Utterance>(*(*a1 + v3));
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

void *DgnIOwnArray<SigProc *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<SigProc>(*(*a1 + v3));
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

void WordDummySpec::WordDummySpec(WordDummySpec *this)
{
  *(this + 6) = 0;
  *this = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
}

uint64_t WordDummySpec::readObject(WordDummySpec *this, DgnStream *a2, unsigned int *a3)
{
  readObject(a2, this + 2, a3);
  readObject(a2, this, a3);
  readObject(a2, this + 12, a3);
  readObject(a2, this + 13, a3);
  readObject(a2, this + 4, a3);
  readObject(a2, this + 5, a3);
  readObject(a2, this + 6, a3);

  return readObject(a2, this + 7, a3);
}

void WordNgramBuildSpec::WordNgramBuildSpec(WordNgramBuildSpec *this, const WordDummySpec *a2)
{
  *this = *a2;
  *(this + 2) = *(a2 + 2);
  *(this + 6) = *(a2 + 6);
  *(this + 1) = *(a2 + 1);
}

void WordNgramBuildSpec::loadWordDummySpecText(WordNgramBuildSpec *this, DFile *a2)
{
  DgnTextFileParser::DgnTextFileParser(v33);
  DgnTextFileParser::openDgnTextFileParser(v33, a2, 0x6Du, 1);
  DgnTextFileParser::verifyMatchingFileType(v33, "WordDummySpec");
  v32[0] = 0;
  v32[1] = 0;
  DgnTextFile::legalDgnTextFileVersions(v33, sWDS_Versions, v32, v4, v5, v6, v7, v8);
  DgnTextFileParser::verifyFileVersionInRange(v33, v32, v9, v10, v11, v12, v13, v14);
  DgnTextFile::getHeaderFieldUnsigned(v33, "Depth", this + 2, 1, 1u, 4u);
  if (*(this + 2) >= 4u)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordt.cpp", 225, "lm/wordt", 11, "%u %.500s", v15, v16, *(this + 2));
  }

  DgnTextFile::getHeaderFieldReal(v33, "AlienWordMinimumCount", this, 1, -1.0, 1.0);
  if (*this != -1.0 && *this < 0.0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordt.cpp", 233, "lm/wordt", 10, "%.500s", v17, v18, "AlienWordMinimumCount");
  }

  DgnTextFile::getHeaderFieldBool(v33, "AllowNewWordCloning", this + 12, 1);
  DgnTextFile::getHeaderFieldBool(v33, "UseIgnoreInContextLmId", this + 13, 1);
  if (*(this + 2) >= 2u)
  {
    DgnTextFile::getHeaderFieldInteger(v33, "BuildMaximumBigramCountToDiscount", this + 4, 1, -1, 0x7FFFFFFF);
    DgnTextFile::getHeaderFieldInteger(v33, "BuildMaximumNumBigramRecords", this + 5, 1, -1, 0x7FFFFFFF);
    if (*(this + 2) >= 3u)
    {
      DgnTextFile::getHeaderFieldInteger(v33, "BuildMaximumTrigramCountToDiscount", this + 6, 1, -1, 0x7FFFFFFF);
      DgnTextFile::getHeaderFieldInteger(v33, "BuildMaximumNumTrigramRecords", this + 7, 1, -1, 0x7FFFFFFF);
    }
  }

  DgnTextFileParser::verifyNoUnknownHeaderFields(v33, v19, v20, v21, v22, v23, v24, v25);
  DgnTextFileParser::verifyMatchingNumFieldSpecs(v33, 0, v26, v27, v28, v29, v30, v31);
  DgnTextFileParser::verifyNoBodyLines(v33);
  DgnIArray<Utterance *>::~DgnIArray(v32);
  DgnTextFileParser::~DgnTextFileParser(v33);
}

void sub_262771B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  DgnTextFileParser::~DgnTextFileParser(va);
  _Unwind_Resume(a1);
}

void WordNgramBuildSpec::loadWordNgramBuildSpecText(WordNgramBuildSpec *this, DFile *a2)
{
  DgnTextFileParser::DgnTextFileParser(v33);
  DgnTextFileParser::openDgnTextFileParser(v33, a2, 0x6Bu, 1);
  DgnTextFileParser::verifyMatchingFileType(v33, "WordNGramBuildSpec");
  v32[0] = 0;
  v32[1] = 0;
  DgnTextFile::legalDgnTextFileVersions(v33, sWBS_Versions, v32, v4, v5, v6, v7, v8);
  DgnTextFileParser::verifyFileVersionInRange(v33, v32, v9, v10, v11, v12, v13, v14);
  DgnTextFile::getHeaderFieldUnsigned(v33, "Depth", this + 2, 1, 1u, 4u);
  if (*(this + 2) >= 4u)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordt.cpp", 289, "lm/wordt", 13, "%u %.500s", v15, v16, *(this + 2));
  }

  DgnTextFile::getHeaderFieldReal(v33, "AlienWordMinimumCount", this, 1, -1.0, 1.0);
  if (*this != -1.0 && *this < 0.0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordt.cpp", 297, "lm/wordt", 12, "%.500s", v17, v18, "AlienWordMinimumCount");
  }

  DgnTextFile::getHeaderFieldBool(v33, "AllowNewWordCloning", this + 12, 1);
  DgnTextFile::getHeaderFieldBool(v33, "UseIgnoreInContextLmId", this + 13, 1);
  if (*(this + 2) >= 2u)
  {
    DgnTextFile::getHeaderFieldInteger(v33, "BuildMaximumBigramCountToDiscount", this + 4, 1, -1, 0x7FFFFFFF);
    DgnTextFile::getHeaderFieldInteger(v33, "BuildMaximumNumBigramRecords", this + 5, 1, -1, 0x7FFFFFFF);
    if (*(this + 2) >= 3u)
    {
      DgnTextFile::getHeaderFieldInteger(v33, "BuildMaximumTrigramCountToDiscount", this + 6, 1, -1, 0x7FFFFFFF);
      DgnTextFile::getHeaderFieldInteger(v33, "BuildMaximumNumTrigramRecords", this + 7, 1, -1, 0x7FFFFFFF);
    }
  }

  DgnTextFileParser::verifyNoUnknownHeaderFields(v33, v19, v20, v21, v22, v23, v24, v25);
  DgnTextFileParser::verifyMatchingNumFieldSpecs(v33, 0, v26, v27, v28, v29, v30, v31);
  DgnTextFileParser::verifyNoBodyLines(v33);
  DgnIArray<Utterance *>::~DgnIArray(v32);
  DgnTextFileParser::~DgnTextFileParser(v33);
}

void sub_262771DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  DgnTextFileParser::~DgnTextFileParser(va);
  _Unwind_Resume(a1);
}

void (***WordNgramBuildSpec::loadWordNgramBuildSpecBinary(WordNgramBuildSpec *this, DFile *a2, DFileChecksums *a3))(void)
{
  v11 = 0;
  v6 = OpenAndReadMrecHeader(a2, 0x6Au, 1, "LMWBSBIN", &v11 + 1, &v11);
  if (*(a2 + 6))
  {
    v7 = *(a2 + 2);
  }

  else
  {
    v7 = &byte_262899963;
  }

  MrecHeaderCheckVersions(v7, "LMWBSBIN", HIDWORD(v11), v11, 0x18u, 1u);
  v10 = 0;
  readObject(v6, this + 2, &v10);
  readObject(v6, this, &v10);
  readObject(v6, this + 12, &v10);
  readObject(v6, this + 13, &v10);
  readObject(v6, this + 4, &v10);
  readObject(v6, this + 5, &v10);
  readObject(v6, this + 6, &v10);
  readObject(v6, this + 7, &v10);
  readObjectChecksumAndVerify(v6, v10);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x6Au, v10);
  return DgnDelete<DgnStream>(v6);
}

void WordNgramBuildSpec::loadWordNgramBuildSpec(WordNgramBuildSpec *this, DFile *a2, DFileChecksums *a3, int a4)
{
  if (a4)
  {
    WordNgramBuildSpec::loadWordNgramBuildSpecText(this, a2);
  }

  else
  {
    WordNgramBuildSpec::loadWordNgramBuildSpecBinary(this, a2, a3);
  }
}

void WordNgramBuildSpec::saveWordNgramBuildSpecText(WordNgramBuildSpec *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v15);
  DgnTextFileWriter::openDgnTextFileWriter(v15, a2, 0x6Bu, a3);
  v13 = 0;
  v14 = 0;
  DgnTextFile::legalDgnTextFileVersions(v15, sWBS_Versions, &v13, v6, v7, v8, v9, v10);
  DgnTextFileWriter::setFileType(v15, "WordNGramBuildSpec", (v13 + 8 * (v14 - 1)));
  v12[0] = 0;
  v12[1] = 0;
  v11[0] = 0;
  v11[1] = 0;
  DgnTextFileWriter::setLineFieldFormat(v15, v12, v11);
  DgnTextFileWriter::setHeaderFieldUnsigned(v15, "Depth", *(this + 2));
  DgnTextFileWriter::setHeaderFieldReal(v15, "AlienWordMinimumCount", *this);
  DgnTextFileWriter::setHeaderFieldBool(v15, "AllowNewWordCloning", *(this + 12));
  DgnTextFileWriter::setHeaderFieldBool(v15, "UseIgnoreInContextLmId", *(this + 13));
  if (*(this + 2) >= 2u)
  {
    DgnTextFileWriter::setHeaderFieldInteger(v15, "BuildMaximumBigramCountToDiscount", *(this + 4));
    DgnTextFileWriter::setHeaderFieldInteger(v15, "BuildMaximumNumBigramRecords", *(this + 5));
    if (*(this + 2) >= 3u)
    {
      DgnTextFileWriter::setHeaderFieldInteger(v15, "BuildMaximumTrigramCountToDiscount", *(this + 6));
      DgnTextFileWriter::setHeaderFieldInteger(v15, "BuildMaximumNumTrigramRecords", *(this + 7));
    }
  }

  DgnArray<DgnString>::releaseAll(v11);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v12);
  DgnIArray<Utterance *>::~DgnIArray(&v13);
  DgnTextFileWriter::~DgnTextFileWriter(v15);
}

void sub_2627720AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  DgnTextFileWriter::~DgnTextFileWriter(va);
  _Unwind_Resume(a1);
}

void (***WordNgramBuildSpec::saveWordNgramBuildSpecBinary(WordNgramBuildSpec *this, DFile *a2, DFileChecksums *a3, int a4))(void)
{
  v7 = OpenAndWriteMrecHeader(a2, 0x6Au, a4, "LMWBSBIN", 24, 1);
  v15 = 0;
  writeObject(v7, this + 2, &v15);
  writeObject(v7, this, &v15, v8, v9, v10, v11, v12);
  writeObject(v7, this + 12, &v15);
  writeObject(v7, this + 13, &v15);
  writeObject(v7, this + 4, &v15);
  writeObject(v7, this + 5, &v15);
  writeObject(v7, this + 6, &v15);
  writeObject(v7, this + 7, &v15);
  writeObjectChecksum(v7, &v15);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x6Au, v15);
  return DgnDelete<DgnStream>(v7);
}

void WordNgramBuildSpec::saveWordNgramBuildSpec(WordNgramBuildSpec *this, DFile *a2, DFileChecksums *a3, int a4, DFileChecksums *a5)
{
  if (a4)
  {
    WordNgramBuildSpec::saveWordNgramBuildSpecText(this, a2, a5);
  }

  else
  {
    WordNgramBuildSpec::saveWordNgramBuildSpecBinary(this, a2, a3, a5);
  }
}

uint64_t WordIdToHeadCloneWordIdMap::getHeadCloneForVisibleWordId(WordIdToHeadCloneWordIdMap *this, unsigned int a2)
{
  v6 = a2;
  if (*(this + 2) <= a2 && *(this + 3) >= a2)
  {
    return 0xFFFFFFLL;
  }

  if (a2 >> 4 < *(this + 34))
  {
    v2 = (*(*(this + 16) + 4 * (a2 >> 4)) >> (2 * (a2 & 0xF))) & 3;
    if (v2)
    {
      return a2 - v2;
    }
  }

  Bucket = HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(this + 16, &v6);
  if (*Bucket)
  {
    v5 = (*Bucket + 2);
  }

  else
  {
    v5 = &v6;
  }

  return *v5;
}

uint64_t WordIdToHeadCloneWordIdMap::getHeadCloneForWordId(WordIdToHeadCloneWordIdMap *this, unsigned int a2)
{
  v2 = *this;
  if (*(*this + 388) > a2 && *(*(v2 + 104) + a2))
  {
    return WordIdToHeadCloneWordIdMap::getHeadCloneForVisibleWordId(this, *(*(v2 + 256) + 4 * a2));
  }

  else
  {
    return 0xFFFFFFLL;
  }
}

uint64_t WordIdToHeadCloneWordIdMap::addVisibleWordIdMap(WordIdToHeadCloneWordIdMap *this, unsigned int a2, unsigned int a3)
{
  v7 = a3;
  v8 = a2;
  v4 = a2 >= a3;
  v5 = a2 - a3;
  if (v5 == 0 || !v4)
  {
    return Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::add(this + 16, &v8, &v7);
  }

  result = WordIdToHeadCloneWordIdMap::setDecrementForWordId(this, a2, v5);
  if ((result & 1) == 0)
  {
    return Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::add(this + 16, &v8, &v7);
  }

  return result;
}

BOOL WordIdToHeadCloneWordIdMap::setDecrementForWordId(WordIdToHeadCloneWordIdMap *this, unsigned int a2, unsigned int a3)
{
  if (a3 <= 3)
  {
    v4 = a2;
    v6 = a2 >> 4;
    v7 = *(this + 34);
    if (a3 || v7 > v6)
    {
      if (v7 <= v6)
      {
        do
        {
          if (v7 == *(this + 35))
          {
            DgnPrimArray<unsigned int>::reallocElts(this + 128, 1, 1);
            v7 = *(this + 34);
          }

          v8 = *(this + 16);
          *(v8 + 4 * v7) = 0;
          v7 = *(this + 34) + 1;
          *(this + 34) = v7;
        }

        while (v7 <= v6);
      }

      else
      {
        v8 = *(this + 16);
      }

      *(v8 + 4 * v6) = *(v8 + 4 * v6) & ~(3 << (2 * (v4 & 0xF))) | (a3 << (2 * (v4 & 0xF)));
    }
  }

  return a3 < 4;
}

uint64_t Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::add(uint64_t result, int *a2, _DWORD *a3)
{
  v5 = result;
  v6 = *(result + 12);
  if (*(result + 8) >= v6 >> 1)
  {
    result = HashKEV<unsigned int,unsigned int,CWIDScope>::upSize(result, 2 * v6);
  }

  v7 = *a2;
  v8 = *(v5 + 16);
  if (v8)
  {
    v9 = (-1640531527 * *a2) >> -v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v5 + 80);
  v11 = *(v5 + 32);
  if (!v11)
  {
    result = DgnPool::addChunk((v5 + 24));
    v11 = *(v5 + 32);
  }

  v12 = (v10 + 8 * v9);
  *(v5 + 32) = *v11;
  *(v11 + 8) = 0;
  *(v11 + 12) = *a2;
  *(v11 + 16) = *a3;
  *(v11 + 8) = v7;
  ++*(v5 + 8);
  if (*(v5 + 20))
  {
    *v11 = *v12;
  }

  else
  {
    *v11 = 0;
    v13 = *v12;
    if (*v12)
    {
      do
      {
        v12 = v13;
        v13 = *v13;
      }

      while (v13);
    }
  }

  *v12 = v11;
  return result;
}

BOOL WordIdToHeadCloneWordIdMap::isHeadCloneWordId(WordIdToHeadCloneWordIdMap *this, unsigned int a2)
{
  v5 = a2;
  v2 = *this;
  if (*(*this + 388) <= a2 || !*(*(v2 + 104) + a2) || *(*(v2 + 256) + 4 * a2) != a2 || a2 >> 4 < *(this + 34) && ((*(*(this + 16) + 4 * (a2 >> 4)) >> (2 * (a2 & 0xF))) & 3) != 0 || *HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(this + 16, &v5))
  {
    return 0;
  }

  if (v5 >= *(this + 2))
  {
    return v5 > *(this + 3);
  }

  return 1;
}

uint64_t WordIdToHeadCloneWordIdMap::deleteWord(WordIdToHeadCloneWordIdMap *this, unsigned int a2)
{
  v44 = a2;
  result = WordIdToHeadCloneWordIdMap::isHeadCloneWordId(this, a2);
  if (!result)
  {
    v16 = *this;
    if (*(*this + 388) > a2 && *(*(v16 + 104) + a2) && *(*(v16 + 256) + 4 * a2) == a2)
    {
      WordIdToHeadCloneWordIdMap::setDecrementForWordId(this, a2, 0);
      return Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::removeIfPresent(this + 16, &v44);
    }

    return result;
  }

  v5 = 2 * a2 + 2;
  v6 = 1;
  v7 = 0xFFFFFF;
  do
  {
    v8 = (a2 + v6) >> 4;
    if (v8 >= *(this + 34))
    {
      v11 = 1;
    }

    else
    {
      v9 = (*(*(this + 16) + 4 * v8) >> (v5 & 0x1E)) & 3;
      v25 = v6 == v9;
      v10 = v6 != v9;
      if (v25)
      {
        v7 = a2 + v6;
      }

      v11 = a2 - 16777214 + v6 == 1 || v10;
    }

    if (v6 > 2)
    {
      break;
    }

    ++v6;
    v5 += 2;
  }

  while ((v11 & 1) != 0);
  v12 = *(this + 7);
  if (v12)
  {
    v13 = *(this + 12);
    v14 = *v13;
    if (*v13)
    {
      LODWORD(v15) = 0;
    }

    else
    {
      v15 = 0;
      v17 = v13 + 1;
      do
      {
        if (v12 - 1 == v15)
        {
          goto LABEL_38;
        }

        v14 = v17[v15++];
      }

      while (!v14);
    }
  }

  else
  {
    LODWORD(v15) = 0;
    v14 = 0;
  }

  while (v15 < v12 && v7 == 0xFFFFFF)
  {
    if (*(v14 + 4) == a2)
    {
      v7 = *(v14 + 3);
    }

    else
    {
      v7 = 0xFFFFFF;
    }

    if (*v14)
    {
      v14 = *v14;
    }

    else
    {
      v15 = (v15 + 1);
      if (v15 < v12)
      {
        v18 = *(this + 12);
        v14 = *(v18 + 8 * v15);
        if (!v14)
        {
          v19 = (v18 + 8 * v15 + 8);
          v20 = v12 - 1 - v15;
          while (v20)
          {
            v21 = *v19++;
            v14 = v21;
            LODWORD(v15) = v15 + 1;
            --v20;
            if (v21)
            {
              goto LABEL_36;
            }
          }

          break;
        }
      }
    }

LABEL_36:
    ;
  }

LABEL_38:
  v43 = v7;
  if (v7 == 0xFFFFFF)
  {
    return result;
  }

  WordIdToHeadCloneWordIdMap::setDecrementForWordId(this, v7, 0);
  v22 = 2 * a2 + 2;
  for (i = 1; i != 4; ++i)
  {
    v24 = (a2 + i) >> 4;
    if (v24 < *(this + 34))
    {
      v25 = i != ((*(*(this + 16) + 4 * v24) >> (v22 & 0x1E)) & 3) || a2 - v7 + i == 0;
      if (!v25)
      {
        WordIdToHeadCloneWordIdMap::setDecrementForWordId(this, a2 + i, 0);
        WordIdToHeadCloneWordIdMap::addVisibleWordIdMap(this, a2 + i, v7);
      }
    }

    v22 += 2;
  }

  Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::removeIfPresent(this + 16, &v43);
  v41 = 0;
  v42 = 0;
  v26 = *(this + 7);
  if (v26)
  {
    v27 = *(this + 12);
    v28 = *v27;
    if (!*v27)
    {
      v29 = 0;
      v30 = v27 + 1;
      do
      {
        if (v26 - 1 == v29)
        {
          return DgnPrimArray<unsigned int>::~DgnPrimArray(&v41);
        }

        v28 = v30[v29++];
      }

      while (!v28);
      goto LABEL_55;
    }
  }

  else
  {
    v28 = 0;
  }

  LODWORD(v29) = 0;
LABEL_55:
  if (v29 >= v26)
  {
    return DgnPrimArray<unsigned int>::~DgnPrimArray(&v41);
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = *(v28 + 3);
    if (v33 != v43 && *(v28 + 4) == a2)
    {
      if (v32 == HIDWORD(v42))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v41, 1, 1);
        v32 = v42;
        v31 = v41;
      }

      *(v31 + 4 * v32) = v33;
      v32 = v42 + 1;
      LODWORD(v42) = v42 + 1;
      LODWORD(v26) = *(this + 7);
    }

    v34 = *v28;
    if (*v28)
    {
      goto LABEL_70;
    }

    v29 = (v29 + 1);
    if (v29 >= v26)
    {
      v34 = v28;
      goto LABEL_70;
    }

    v35 = *(this + 12);
    v34 = *(v35 + 8 * v29);
    if (!v34)
    {
      break;
    }

LABEL_70:
    v28 = v34;
    if (v29 >= v26)
    {
      goto LABEL_71;
    }
  }

  v36 = (v35 + 8 * v29 + 8);
  v37 = ~v29 + v26;
  while (v37)
  {
    v38 = *v36++;
    v34 = v38;
    LODWORD(v29) = v29 + 1;
    --v37;
    if (v38)
    {
      goto LABEL_70;
    }
  }

LABEL_71:
  if (v32)
  {
    v39 = 0;
    do
    {
      v40 = *(v41 + 4 * v39);
      Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::remove(this + 16, &v40);
      WordIdToHeadCloneWordIdMap::addVisibleWordIdMap(this, v40, v43);
      ++v39;
    }

    while (v39 < v42);
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v41);
}

void sub_262772968(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

BOOL Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::removeIfPresent(uint64_t a1, int *a2)
{
  Bucket = HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(a1, a2);
  v4 = *Bucket;
  if (*Bucket)
  {
    Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::removeBucket(a1, Bucket);
  }

  return v4 != 0;
}

uint64_t **Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::remove(uint64_t a1, int *a2)
{
  result = HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(a1, a2);
  if (*result)
  {

    return Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::removeBucket(a1, result);
  }

  return result;
}

uint64_t writeObject<unsigned int,unsigned int,WordIdScope,unsigned int>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v21 = *(a2 + 8);
  writeObject(a1, &v21, a3);
  v20 = *(a2 + 12);
  writeObject(a1, &v20, a3);
  v19 = *(a2 + 20);
  result = writeObject(a1, &v19, a3);
  v7 = *(a2 + 12);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_8;
  }

  v8 = *(a2 + 80);
  v9 = *v8;
  if (*v8)
  {
LABEL_8:
    LODWORD(v10) = 0;
    goto LABEL_9;
  }

  v10 = 0;
  v11 = v8 + 1;
  while (v7 - 1 != v10)
  {
    v9 = v11[v10++];
    if (v9)
    {
LABEL_9:
      while (v10 < v7)
      {
        if (v9)
        {
          v12 = v9 + 3;
        }

        else
        {
          v12 = 0;
        }

        if (v9)
        {
          v13 = (v9 + 2);
        }

        else
        {
          v13 = 0;
        }

        writeObject(a1, v12, a3);
        result = writeObject(a1, v13, a3);
        v14 = *v9;
        v7 = *(a2 + 12);
        if (!*v9)
        {
          v10 = (v10 + 1);
          if (v10 >= v7)
          {
            v14 = v9;
          }

          else
          {
            v15 = *(a2 + 80);
            v14 = *(v15 + 8 * v10);
            if (!v14)
            {
              v16 = (v15 + 8 * v10 + 8);
              v17 = ~v10 + v7;
              while (v17)
              {
                v18 = *v16++;
                v14 = v18;
                LODWORD(v10) = v10 + 1;
                --v17;
                if (v18)
                {
                  goto LABEL_24;
                }
              }

              return result;
            }
          }
        }

LABEL_24:
        v9 = v14;
      }

      return result;
    }
  }

  return result;
}

void WordNgramTemplate::WordNgramTemplate(WordNgramTemplate *this, const WordList *a2, int a3, int a4)
{
  Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::Hash(this + 32, 0, 16);
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 2) = a2;
  *(this + 6) = a3;
  *(this + 7) = a4;
  *this = 0;
  *(this + 20) = a2;
  *(this + 21) = 0;
}

void WordNgramTemplate::WordNgramTemplate(WordNgramTemplate *this, const WordList *a2, int a3, int a4, const WordLanguageModel *a5)
{
  Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::Hash(this + 32, 0, 16);
  *(this + 18) = 0;
  *(this + 2) = a2;
  *(this + 6) = a3;
  *(this + 7) = a4;
  *(this + 19) = 0;
  *(this + 20) = a2;
  *(this + 21) = a5;
  WordNgramTemplate::fillInFromTemplateLanguageModel(this);
}

void sub_262772D30(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::~Hash(v1 + 32);
  _Unwind_Resume(a1);
}

uint64_t WordNgramTemplate::fillInFromTemplateLanguageModel(WordNgramTemplate *this)
{
  v2 = *(this + 21);
  *this = *(v2 + 80);
  v18[0] = 0;
  v18[1] = 0;
  v17[0] = 0;
  v17[1] = 0;
  WordLanguageModel::constructLmIdToWordIdMapping(v2, v18, v17);
  v3 = *(this + 20);
  if (*(v3 + 388))
  {
    v4 = 0;
    do
    {
      if (*(*(v3 + 104) + v4))
      {
        if (v4 == *(*(v3 + 256) + 4 * v4))
        {
          LmId = WordLanguageModel::getLmId(*(this + 21), v4);
          if (LmId != -1)
          {
            v6 = *(v18[0] + 4 * LmId);
            if (v4 != v6)
            {
              WordIdToHeadCloneWordIdMap::addVisibleWordIdMap((this + 16), v4, v6);
            }
          }
        }
      }

      ++v4;
      v3 = *(this + 20);
    }

    while (v4 < *(v3 + 388));
  }

  *(this + 1) = 16777212;
  v7 = *(this + 21);
  v8 = v7[28];
  if (v8 != -1)
  {
    v9 = *(v18[0] + 4 * v8);
    HeadCloneForVisibleWordId = 16777214;
    if (v9 != 16777214)
    {
      HeadCloneForVisibleWordId = WordIdToHeadCloneWordIdMap::getHeadCloneForVisibleWordId((this + 16), v9);
      v7 = *(this + 21);
    }

    *(this + 1) = HeadCloneForVisibleWordId;
  }

  *(this + 2) = 0xFFFFFF;
  v11 = v7[29];
  if (v11 != -1)
  {
    HeadCloneForWordId = 16777213;
    v13 = *(v18[0] + 4 * v11);
    if (v13 != 16777213)
    {
      HeadCloneForWordId = WordIdToHeadCloneWordIdMap::getHeadCloneForWordId((this + 16), v13);
      v7 = *(this + 21);
    }

    *(this + 2) = HeadCloneForWordId;
  }

  *(this + 3) = 16777212;
  v14 = v7[25];
  if (v14 != -1)
  {
    v15 = *(v18[0] + 4 * v14);
    if (v15 != 0xFFFFFF)
    {
      *(this + 3) = WordIdToHeadCloneWordIdMap::getHeadCloneForVisibleWordId((this + 16), v15);
    }
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v17);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v18);
}

void sub_262772EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a11);
  _Unwind_Resume(a1);
}

uint64_t WordNgramTemplate::getHeadCloneForBuildWordId(WordNgramTemplate *this, uint64_t a2)
{
  switch(a2)
  {
    case 0xFFFFFF:
      return a2;
    case 0xFFFFFE:
      return *(this + 1);
    case 0xFFFFFD:
      return *(this + 2);
  }

  return WordIdToHeadCloneWordIdMap::getHeadCloneForVisibleWordId((this + 16), a2);
}

uint64_t WordNgramTemplate::addWord(uint64_t this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 160);
  if (*(v3 + 388) > a2)
  {
    if (*(*(v3 + 104) + a2))
    {
      if (*(*(v3 + 256) + 4 * a2) == a2 && a3 != 0xFFFFFF)
      {
        v5 = this;
        if (*this)
        {
          HeadCloneForWordId = WordIdToHeadCloneWordIdMap::getHeadCloneForWordId((this + 16), a3);

          return WordIdToHeadCloneWordIdMap::addVisibleWordIdMap((v5 + 16), a2, HeadCloneForWordId);
        }
      }
    }
  }

  return this;
}

uint64_t WordNgramTemplate::deleteWord(WordNgramTemplate *this, unsigned int a2)
{
  if (WordIdToHeadCloneWordIdMap::isHeadCloneWordId((this + 16), a2))
  {
    if (*(this + 1) == a2)
    {
      *(this + 1) = 16777212;
    }

    if (*(this + 2) == a2)
    {
      *(this + 2) = 0xFFFFFF;
    }

    if (*(this + 3) == a2)
    {
      *(this + 3) = 16777212;
    }
  }

  return WordIdToHeadCloneWordIdMap::deleteWord((this + 16), a2);
}

void WordNgramTemplate::loadWordNgramTemplate(WordNgramTemplate *this, DFile *a2, DFileChecksums *a3, int a4)
{
  if (a4)
  {
    WordNgramTemplate::loadWordNgramTemplateText(this, a2);
  }

  else
  {
    WordNgramTemplate::loadWordNgramTemplateBinary(this, a2, a3);
  }
}

void WordNgramTemplate::loadWordNgramTemplateText(WordNgramTemplate *this, DFile *a2)
{
  DgnTextFileParser::DgnTextFileParser(v82);
  DgnTextFileParser::openDgnTextFileParser(v82, a2, 0x76u, 1);
  DgnTextFileParser::verifyMatchingFileType(v82, "WordNGramTemplateText");
  v81[0] = 0;
  v81[1] = 0;
  DgnTextFile::legalDgnTextFileVersions(v82, sWTT_Versions, v81, v4, v5, v6, v7, v8);
  DgnTextFileParser::verifyFileVersionInRange(v82, v81, v9, v10, v11, v12, v13, v14);
  v80 = 0;
  DgnTextFile::getHeaderFieldInteger(v82, "BegWordId", &v80, 1, -3, 16777203);
  v17 = v80;
  if (v80 < 0xFFFFF4)
  {
    goto LABEL_5;
  }

  if (v80 == -3)
  {
    *(this + 1) = 16777213;
LABEL_8:
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordt.cpp", 1223, "lm/wordt", 9, "%.500s", v15, v16, "BegWordId");
    goto LABEL_9;
  }

  if (v80 == -2)
  {
    v17 = 16777214;
LABEL_5:
    *(this + 1) = v17;
    goto LABEL_9;
  }

  *(this + 1) = 16777212;
  if (v17 != -1)
  {
    goto LABEL_8;
  }

LABEL_9:
  v79 = 0;
  DgnTextFile::getHeaderFieldInteger(v82, "EndWordId", &v79, 1, -3, 16777203);
  v20 = v79;
  if (v79 < 0xFFFFF4)
  {
LABEL_14:
    *(this + 2) = v20;
    goto LABEL_17;
  }

  if (v79 == -3)
  {
    v20 = 16777213;
    goto LABEL_14;
  }

  if (v79 == -2)
  {
    *(this + 2) = 16777214;
  }

  else
  {
    *(this + 2) = 0xFFFFFF;
    if (v20 == -1)
    {
      goto LABEL_17;
    }
  }

  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordt.cpp", 1233, "lm/wordt", 9, "%.500s", v18, v19, "EndWordId");
LABEL_17:
  DgnTextFile::getHeaderFieldBool(v82, "AllowNewWordCloning", this, 1);
  v78 = 0;
  DgnTextFile::getHeaderFieldInteger(v82, "IgnoreInContextWordId", &v78, 1, -1, 16777203);
  v28 = v78;
  if (v78 == -1)
  {
    v28 = 16777212;
  }

  *(this + 3) = v28;
  DgnTextFileParser::verifyNoUnknownHeaderFields(v82, v21, v22, v23, v24, v25, v26, v27);
  v76 = 0;
  v77 = 0;
  DgnTextFile::getLineFieldNames(v82, &v76);
  v75[0] = 0;
  v75[1] = 0;
  DgnTextFile::getLineFieldFormats(v82, v75);
  if (v77)
  {
    v31 = 0;
    v32 = 0;
    v72 = -1;
    v33 = -1;
    v34 = -1;
    while (1)
    {
      v35 = (v76 + v31);
      if (*(v76 + v31 + 8))
      {
        v36 = *v35;
        if (!strcmp(*v35, "TableName"))
        {
          if (*(v75[0] + 4 * v32))
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordt.cpp", 1265, "lm/wordt", 7, "%.500s %.500s", v29, v30, v36);
          }

          v34 = v32;
          goto LABEL_36;
        }

        if (!strcmp(v36, "Index1"))
        {
          if (*(v75[0] + 4 * v32) != 3)
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordt.cpp", 1273, "lm/wordt", 7, "%.500s %.500s", v29, v30, v36);
          }

          v33 = v32;
          goto LABEL_36;
        }

        if (!strcmp(v36, "EntryValue1"))
        {
          if (*(v75[0] + 4 * v32) != 3)
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordt.cpp", 1281, "lm/wordt", 7, "%.500s %.500s", v29, v30, v36);
          }

          v72 = v32;
          goto LABEL_36;
        }
      }

      else
      {
        v36 = &byte_262899963;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordt.cpp", 1285, "lm/wordt", 6, "%.500s", v29, v30, v36);
LABEL_36:
      ++v32;
      v31 += 16;
      if (v32 >= v77)
      {
        goto LABEL_39;
      }
    }
  }

  v34 = -1;
  v33 = -1;
  v72 = -1;
LABEL_39:
  v37 = 0xFFFFFF;
  while (DgnTextFileParser::parseNextLine(v82))
  {
    DgnString::DgnString(&v73);
    LineFieldString = DgnTextFileParser::getLineFieldString(v82, v34);
    DgnString::operator=(&v73, LineFieldString);
    LineFieldUnsigned = DgnTextFileParser::getLineFieldUnsigned(v82, v33, v41, v42, v43, v44, v45, v46);
    v54 = DgnTextFileParser::getLineFieldUnsigned(v82, v72, v48, v49, v50, v51, v52, v53);
    if (v74)
    {
      v55 = v73;
    }

    else
    {
      v55 = &byte_262899963;
    }

    if (strcmp(v55, "WordIdToHeadCloneWordId"))
    {
      CurrentLine = DgnTextFile::getCurrentLine(v82);
      if (*(CurrentLine + 8))
      {
        v61 = *CurrentLine;
      }

      else
      {
        v61 = &byte_262899963;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordt.cpp", 1301, "lm/wordt", 8, "%.500s", v59, v60, v61);
    }

    if (v37 != 0xFFFFFF && LineFieldUnsigned <= v37)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordt.cpp", 1307, "lm/wordt", 4, "%u", v56, v57, LineFieldUnsigned);
    }

    if (LineFieldUnsigned == v54)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordt.cpp", 1310, "lm/wordt", 5, "%u", v56, v57, LineFieldUnsigned);
    }

    v62 = *(this + 20);
    v63 = *(v62 + 388);
    if (v63 <= LineFieldUnsigned || !*(*(v62 + 104) + LineFieldUnsigned) || *(*(v62 + 256) + 4 * LineFieldUnsigned) != LineFieldUnsigned)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordt.cpp", 1313, "lm/wordt", 1, "%u", v56, v57, LineFieldUnsigned);
      v62 = *(this + 20);
      v63 = *(v62 + 388);
    }

    if (v63 <= v54 || !*(*(v62 + 104) + v54) || *(*(v62 + 256) + 4 * v54) != v54)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordt.cpp", 1316, "lm/wordt", 1, "%u", v56, v57, v54);
    }

    if (!WordIdToHeadCloneWordIdMap::isHeadCloneWordId((this + 16), v54))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordt.cpp", 1320, "lm/wordt", 3, "%u", v64, v65, v54);
    }

    WordIdToHeadCloneWordIdMap::addVisibleWordIdMap((this + 16), LineFieldUnsigned, v54);
    DgnString::~DgnString(&v73);
    v37 = LineFieldUnsigned;
  }

  v66 = *(this + 1);
  if ((v66 | 2) != 0xFFFFFE)
  {
    v67 = *(this + 20);
    if (*(v67 + 388) <= v66 || !*(*(v67 + 104) + v66) || *(*(v67 + 256) + 4 * v66) != v66)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordt.cpp", 1333, "lm/wordt", 2, "%u %.500s", v38, v39, *(this + 1));
      v66 = *(this + 1);
    }

    *(this + 1) = WordIdToHeadCloneWordIdMap::getHeadCloneForVisibleWordId((this + 16), v66);
  }

  v68 = *(this + 2);
  if ((v68 | 2) != 0xFFFFFF)
  {
    v69 = *(this + 20);
    if (*(v69 + 388) <= v68 || !*(*(v69 + 104) + v68) || *(*(v69 + 256) + 4 * v68) != v68)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordt.cpp", 1343, "lm/wordt", 2, "%u %.500s", v38, v39, *(this + 2));
      v68 = *(this + 2);
    }

    *(this + 2) = WordIdToHeadCloneWordIdMap::getHeadCloneForVisibleWordId((this + 16), v68);
  }

  v70 = *(this + 3);
  if (v70 != 16777212)
  {
    v71 = *(this + 20);
    if (*(v71 + 388) <= v70 || !*(*(v71 + 104) + v70) || *(*(v71 + 256) + 4 * v70) != v70)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordt.cpp", 1353, "lm/wordt", 2, "%u %.500s", v38, v39, *(this + 3));
      v70 = *(this + 3);
    }

    *(this + 3) = WordIdToHeadCloneWordIdMap::getHeadCloneForVisibleWordId((this + 16), v70);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v75);
  DgnArray<DgnString>::releaseAll(&v76);
  DgnIArray<Utterance *>::~DgnIArray(v81);
  DgnTextFileParser::~DgnTextFileParser(v82);
}

void sub_262773858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  DgnIArray<Utterance *>::~DgnIArray(va);
  DgnTextFileParser::~DgnTextFileParser(va1);
  _Unwind_Resume(a1);
}

void (***WordNgramTemplate::loadWordNgramTemplateBinary(WordNgramTemplate *this, DFile *a2, DFileChecksums *a3))(void)
{
  v11 = 0;
  v6 = OpenAndReadMrecHeader(a2, 0x75u, 1, "LMWTTBIN", &v11 + 1, &v11);
  if (*(a2 + 6))
  {
    v7 = *(a2 + 2);
  }

  else
  {
    v7 = &byte_262899963;
  }

  MrecHeaderCheckVersions(v7, "LMWTTBIN", HIDWORD(v11), v11, 0x18u, 1u);
  v10 = 0;
  readObject(v6, this, &v10);
  readObject(v6, this + 1, &v10);
  readObject(v6, this + 2, &v10);
  readObject(v6, this + 3, &v10);
  readObject<unsigned int,unsigned int,WordIdScope,unsigned int>(v6, this + 32, &v10);
  readObject<unsigned int>(v6, this + 144, &v10);
  readObjectChecksumAndVerify(v6, v10);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x75u, v10);
  return DgnDelete<DgnStream>(v6);
}

void WordNgramTemplate::saveWordNgramTemplate(WordNgramTemplate *this, DFile *a2, DFileChecksums *a3, int a4, int a5)
{
  if (a4)
  {
    WordNgramTemplate::saveWordNgramTemplateText(this, a2, a5);
  }

  else
  {
    WordNgramTemplate::saveWordNgramTemplateBinary(this, a2, a3, a5);
  }
}

void WordNgramTemplate::saveWordNgramTemplateText(WordNgramTemplate *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v33);
  DgnTextFileWriter::openDgnTextFileWriter(v33, a2, 0x76u, a3);
  v31 = 0;
  v32 = 0;
  DgnTextFile::legalDgnTextFileVersions(v33, sWTT_Versions, &v31, v6, v7, v8, v9, v10);
  DgnTextFileWriter::setFileType(v33, "WordNGramTemplateText", (v31 + 8 * (v32 - 1)));
  v11 = *(this + 1);
  if (v11 == 16777214)
  {
    v12 = -2;
  }

  else
  {
    v12 = -1;
  }

  if (v11 == 16777213)
  {
    v12 = -3;
  }

  if (v11 >= 0xFFFFF4)
  {
    v13 = v12;
  }

  else
  {
    v13 = *(this + 1);
  }

  DgnTextFileWriter::setHeaderFieldInteger(v33, "BegWordId", v13);
  v14 = *(this + 2);
  if (v14 == 16777214)
  {
    v15 = -2;
  }

  else
  {
    v15 = -1;
  }

  if (v14 == 16777213)
  {
    v15 = -3;
  }

  if (v14 >= 0xFFFFF4)
  {
    v16 = v15;
  }

  else
  {
    v16 = *(this + 2);
  }

  DgnTextFileWriter::setHeaderFieldInteger(v33, "EndWordId", v16);
  DgnTextFileWriter::setHeaderFieldBool(v33, "AllowNewWordCloning", *this);
  if (*(this + 3) == 16777212)
  {
    v17 = -1;
  }

  else
  {
    v17 = *(this + 3);
  }

  DgnTextFileWriter::setHeaderFieldInteger(v33, "IgnoreInContextWordId", v17);
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  DgnString::DgnString(v26, "TableName");
  v18 = v30;
  if (v30 == HIDWORD(v30))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v29, 1, 1);
    v18 = v30;
  }

  DgnString::DgnString((v29 + 16 * v18), v26);
  LODWORD(v30) = v30 + 1;
  DgnString::~DgnString(v26);
  v19 = v28;
  if (v28 == HIDWORD(v28))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v27, 1, 1);
    v19 = v28;
  }

  *(v27 + 4 * v19) = 0;
  LODWORD(v28) = v19 + 1;
  v20 = v30;
  DgnString::DgnString(v26, "Index1");
  v21 = v30;
  if (v30 == HIDWORD(v30))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v29, 1, 1);
    v21 = v30;
  }

  DgnString::DgnString((v29 + 16 * v21), v26);
  LODWORD(v30) = v30 + 1;
  DgnString::~DgnString(v26);
  v22 = v28;
  if (v28 == HIDWORD(v28))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v27, 1, 1);
    v22 = v28;
  }

  *(v27 + 4 * v22) = 3;
  LODWORD(v28) = v22 + 1;
  v23 = v30;
  DgnString::DgnString(v26, "EntryValue1");
  v24 = v30;
  if (v30 == HIDWORD(v30))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v29, 1, 1);
    v24 = v30;
  }

  DgnString::DgnString((v29 + 16 * v24), v26);
  LODWORD(v30) = v30 + 1;
  DgnString::~DgnString(v26);
  v25 = v28;
  if (v28 == HIDWORD(v28))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v27, 1, 1);
    v25 = v28;
  }

  *(v27 + 4 * v25) = 3;
  LODWORD(v28) = v25 + 1;
  DgnTextFileWriter::setLineFieldFormat(v33, &v27, &v29);
  WordNgramTemplate::writeWordIdToHeadCloneWordId(this, (this + 16), v33, 0, v20, v23, "WordIdToHeadCloneWordId");
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v27);
  DgnArray<DgnString>::releaseAll(&v29);
  DgnIArray<Utterance *>::~DgnIArray(&v31);
  DgnTextFileWriter::~DgnTextFileWriter(v33);
}

void sub_262773D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va3, a4);
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  va_copy(va3, va2);
  v11 = va_arg(va3, void);
  v13 = va_arg(va3, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnArray<DgnString>::releaseAll(va1);
  DgnIArray<Utterance *>::~DgnIArray(va2);
  DgnTextFileWriter::~DgnTextFileWriter(va3);
  _Unwind_Resume(a1);
}

void (***WordNgramTemplate::saveWordNgramTemplateBinary(WordNgramTemplate *this, DFile *a2, DFileChecksums *a3, int a4))(void)
{
  v7 = OpenAndWriteMrecHeader(a2, 0x75u, a4, "LMWTTBIN", 24, 1);
  v10 = 0;
  writeObject(v7, this, &v10);
  writeObject(v7, this + 1, &v10);
  writeObject(v7, this + 2, &v10);
  writeObject(v7, this + 3, &v10);
  writeObject<unsigned int,unsigned int,WordIdScope,unsigned int>(v7, this + 32, &v10);
  writeObject<unsigned int>(v7, this + 144, &v10);
  writeObjectChecksum(v7, &v10);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x75u, v10);
  return DgnDelete<DgnStream>(v7);
}

void WordNgramTemplate::writeWordIdToHeadCloneWordId(WordNgramTemplate *this, const WordIdToHeadCloneWordIdMap *a2, DgnTextFileWriter *a3, unsigned int a4, unsigned int a5, unsigned int a6, char *a7)
{
  if (*(*a2 + 388))
  {
    v14 = 0;
    do
    {
      v15 = *(this + 20);
      if (v14 < *(v15 + 388))
      {
        if (*(*(v15 + 104) + v14))
        {
          if (v14 == *(*(v15 + 256) + 4 * v14))
          {
            HeadCloneForVisibleWordId = WordIdToHeadCloneWordIdMap::getHeadCloneForVisibleWordId(a2, v14);
            if (HeadCloneForVisibleWordId != 0xFFFFFF)
            {
              v17 = HeadCloneForVisibleWordId;
              if (v14 != HeadCloneForVisibleWordId)
              {
                DgnTextFileWriter::setLineFieldValue(a3, a4, a7);
                DgnTextFileWriter::setLineFieldUnsignedValue(a3, a5, v14);
                DgnTextFileWriter::setLineFieldUnsignedValue(a3, a6, v17);
                DgnTextFileWriter::writeNextLine(a3);
              }
            }
          }
        }
      }

      ++v14;
    }

    while (v14 < *(*a2 + 388));
  }
}

void WordNgramTemplate::printSize(WordNgramTemplate *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordt.cpp", 1389, &v71);
  if (v72)
  {
    v16 = v71;
  }

  else
  {
    v16 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &byte_262899963, a3, &byte_262899963, v16);
  DgnString::~DgnString(&v71);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &byte_262899963);
  v21 = (a3 + 1);
  v22 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordt.cpp", 1392, &v71);
  if (v72)
  {
    v27 = v71;
  }

  else
  {
    v27 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v24, v25, v26, v21, &byte_262899963, v22, v22, v27, 1, 1, 0);
  DgnString::~DgnString(&v71);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordt.cpp", 1392, &v71);
  if (v72)
  {
    v32 = v71;
  }

  else
  {
    v32 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, v29, v30, v31, v21, &byte_262899963, v22, v22, v32, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordt.cpp", 1392, &v71);
  if (v72)
  {
    v37 = v71;
  }

  else
  {
    v37 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, v34, v35, v36, v21, &byte_262899963, v22, v22, v37, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordt.cpp", 1392, &v71);
  if (v72)
  {
    v42 = v71;
  }

  else
  {
    v42 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v38, v39, v40, v41, v21, &byte_262899963, v22, v22, v42, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  v43 = sizeObject(this + 56);
  v44 = 12;
  v45 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v46 = 8;
  }

  else
  {
    v46 = 12;
  }

  v47 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v47 = 3;
  }

  v48 = *(this + 30) << v47;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v45 = 16;
    v44 = 16;
  }

  v49 = *(this + 38);
  v50 = *(this + 39);
  v51 = v50 >= v49;
  v52 = v50 - v49;
  if (v51)
  {
    if (v49 > 0)
    {
      v44 += 4 * (v49 - 1) + 4;
    }

    v44 += 4 * v52;
  }

  v53 = v43 + v45 + v46 + v48 + v44 + 13;
  v54 = sizeObject(this + 56);
  v55 = 12;
  v56 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v57 = 8;
  }

  else
  {
    v57 = 12;
  }

  v58 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v58 = 3;
  }

  v59 = *(this + 30) << v58;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v56 = 16;
    v55 = 16;
  }

  v60 = *(this + 38);
  if (v60 <= *(this + 39) && v60 > 0)
  {
    v55 += 4 * (v60 - 1) + 4;
  }

  v61 = v54 + v56 + v57 + v59 + v55 + 13;
  v62 = sizeObject(this + 56);
  v63 = *(this + 38);
  if (v63 <= *(this + 39))
  {
    v64 = 0;
  }

  else
  {
    v64 = 4 * v63;
  }

  v65 = v64 + v62;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordt.cpp", 1392, &v71);
  if (v72)
  {
    v70 = v71;
  }

  else
  {
    v70 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v66, v67, v68, v69, v21, &byte_262899963, v22, v22, v70, v53, v61, v65);
  DgnString::~DgnString(&v71);
  *a4 += v53;
  *a5 += v61;
  *a6 += v65;
}

void sub_2627743A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::Hash(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_287523F78;
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
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v7 = 16;
  }

  else
  {
    v7 = 20;
  }

  *(a1 + 24) = 32;
  *(a1 + 28) = v7;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_262774488(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

uint64_t Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::removeBucket(uint64_t result, char **a2)
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
    result = v5(v3 + 2);
  }

  *v3 = *(v2 + 32);
  *(v2 + 32) = v3;
  --*(v2 + 8);
  return result;
}

uint64_t *Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::reInit(uint64_t a1, int a2)
{
  if (*(a1 + 8))
  {
    Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::removeAll(a1);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    MemChunkFree(v4, 0);
    *(a1 + 80) = 0;
  }

  *(a1 + 88) = 0;
  DgnPool::deleteAllWithoutDestroying((a1 + 24));
  v5 = RoundUpToPowerOf2(a2, (a1 + 16));
  *(a1 + 8) = 0;
  *(a1 + 12) = v5;
  result = HashKEV<unsigned int,unsigned int,CWIDScope>::initBuckets(a1);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  return result;
}

uint64_t TBlock::TBlock(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6)
{
  *(a1 + 48) = 0u;
  *(a1 + 96) = 0u;
  v9 = a1 + 96;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *&v10 = -1;
  *(&v10 + 1) = -1;
  *(a1 + 160) = v10;
  *(a1 + 176) = v10;
  *(a1 + 192) = v10;
  *(a1 + 208) = v10;
  *a1 = a3;
  *(a1 + 8) = -1;
  *(a1 + 16) = -1;
  MEMORY[0x26672AF30](a1 + 48);
  if (a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = &unk_26288CDC4;
  }

  MEMORY[0x26672AF30](v9, v11);
  if (a6)
  {
    std::vector<TPItnTagHandle_fake **>::reserve((a1 + 120), a6[2]);
    v14 = *a6;
    v12 = a6 + 1;
    v13 = v14;
    if (v14 != v12)
    {
      v15 = *(a1 + 128);
      do
      {
        v16 = *(a1 + 136);
        if (v15 >= v16)
        {
          v17 = *(a1 + 120);
          v18 = (v15 - v17) >> 3;
          if ((v18 + 1) >> 61)
          {
            std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
          }

          v19 = v16 - v17;
          v20 = v19 >> 2;
          if (v19 >> 2 <= (v18 + 1))
          {
            v20 = v18 + 1;
          }

          if (v19 >= 0x7FFFFFFFFFFFFFF8)
          {
            v21 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v20;
          }

          if (v21)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<TPItnTagHandle_fake **>>(a1 + 120, v21);
          }

          *(8 * v18) = v13[4];
          v15 = (8 * v18 + 8);
          v22 = *(a1 + 120);
          v23 = *(a1 + 128) - v22;
          v24 = (8 * v18 - v23);
          memcpy(v24, v22, v23);
          v25 = *(a1 + 120);
          *(a1 + 120) = v24;
          *(a1 + 128) = v15;
          *(a1 + 136) = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *v15++ = v13[4];
        }

        *(a1 + 128) = v15;
        v26 = v13[1];
        if (v26)
        {
          do
          {
            v27 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v27 = v13[2];
            v28 = *v27 == v13;
            v13 = v27;
          }

          while (!v28);
        }

        v13 = v27;
      }

      while (v27 != v12);
    }
  }

  *(a1 + 40) = a4;
  *(a1 + 224) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  return a1;
}

void sub_262774740(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 120);
  if (v5)
  {
    *(v1 + 128) = v5;
    operator delete(v5);
  }

  if (*(v1 + 119) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TBlock::setRule(uint64_t this, const TItnRule *a2)
{
  *(this + 40) = a2;
  if (a2 && *(a2 + 144) == 1)
  {
    v3 = (a2 + 120);
    if (*(a2 + 143) < 0)
    {
      v4 = *v3;
    }

    JUMPOUT(0x26672AF30);
  }

  return this;
}

uint64_t TBlock::getMultiWordSeparator(_BYTE *a1, uint64_t a2)
{
  if (*a1)
  {
    return 0;
  }

  v4 = (a1 + 48);
  if (a1[71] < 0)
  {
    v4 = *v4;
  }

  while (1)
  {
    v5 = *v4;
    {
      operator new();
    }

    if (v5 > 159)
    {
      break;
    }

    if (v5 > 0x20 || ((1 << v5) & 0x100002600) == 0)
    {
      goto LABEL_24;
    }

LABEL_21:
    ++v4;
  }

  if (v5 >= 12288)
  {
    if (v5 != 65279 && v5 != 12288)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (v5 == 160 || v5 == 8203)
  {
    goto LABEL_21;
  }

LABEL_24:
  v8 = TStringParam::get((a2 + 4392));
  v2 = *v4;
  if (v2)
  {
    v9 = v8;
    for (i = v4; ; ++i)
    {
      {
        operator new();
      }

      v11 = TLocaleInfo::normalizeWidth(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v2);
      if (wcschr(v9, v11))
      {
        break;
      }

      v12 = i[1];
      v2 = v12;
      if (!v12)
      {
        return v2;
      }
    }

    if (v4 == i)
    {
      return 0;
    }

    v13 = 1;
    do
    {
      v14 = i[v13++];
    }

    while (v14 == v2);
    if (!v14)
    {
      return 0;
    }

    else
    {
      {
        operator new();
      }

      if (v14 > 159)
      {
        if (v14 >= 12288)
        {
          if (v14 == 65279 || v14 == 12288)
          {
            return 0;
          }
        }

        else if (v14 == 160 || v14 == 8203)
        {
          return 0;
        }
      }

      else if (v14 <= 0x20 && ((1 << v14) & 0x100002600) != 0)
      {
        return 0;
      }
    }
  }

  return v2;
}

void sub_262774A50(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

uint64_t TBlock::format(uint64_t a1, unsigned int *a2, uint64_t *a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a3[4];
  if (v10 == -1)
  {
    v10 = *a3;
  }

  v83 = v10;
  v11 = a3[6];
  if (v11 == -1)
  {
    v11 = a3[2];
  }

  v79 = v11;
  if (a3[5] == -1)
  {
    v12 = a3[1];
  }

  else
  {
    v12 = a3[5];
  }

  if (a3[7] == -1)
  {
    v13 = a3[3];
  }

  else
  {
    v13 = a3[7];
  }

  v14 = *(a9 + 16);
  v95 = a2;
  v91 = v93;
  v92 = xmmword_26286B6F0;
  v94 = 1;
  if (v13 == -1)
  {
    goto LABEL_65;
  }

  if ((*(a1 + 119) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 104))
    {
      goto LABEL_22;
    }
  }

  else if (*(a1 + 119))
  {
    goto LABEL_22;
  }

  v16 = *a2;
  {
    operator new();
  }

  if (v16 - 65382 >= 0x38 && v16 - 12449 >= 0x56 && v16 - 12443 >= 4 && v16 - 12540 >= 3 && v16 - 65438 > 1)
  {
    goto LABEL_65;
  }

LABEL_22:
  v17 = (a1 + 96);
  if (*(a1 + 119) < 0)
  {
    if (*(a1 + 104))
    {
      v17 = *v17;
      goto LABEL_28;
    }
  }

  else if (*(a1 + 119))
  {
    goto LABEL_28;
  }

  v17 = v95;
LABEL_28:
  v78 = v17;
  v18 = v95;
  v19 = *v95;
  if (!*v95)
  {
    goto LABEL_65;
  }

  while (1)
  {
    {
      operator new();
    }

    if (v19 <= 159)
    {
      break;
    }

    if (v19 >= 12288)
    {
      if (v19 == 12288)
      {
        goto LABEL_42;
      }

      v20 = 65279;
    }

    else
    {
      if (v19 == 160)
      {
        goto LABEL_42;
      }

      v20 = 8203;
    }

    if (v19 != v20)
    {
      goto LABEL_40;
    }

LABEL_42:
    v22 = v18[1];
    ++v18;
    v19 = v22;
    if (!v22)
    {
      goto LABEL_65;
    }
  }

  if (v19 <= 0x20 && ((1 << v19) & 0x100002600) != 0)
  {
    goto LABEL_42;
  }

LABEL_40:
  v21 = *v18;
  {
    operator new();
  }

  if (TLocaleInfo::isPunct(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v21))
  {
    goto LABEL_42;
  }

  if (!*v18)
  {
    goto LABEL_65;
  }

  switch(v13)
  {
    case 12:
      {
        operator new();
      }

      TLocaleInfo::katakanaToRomaji(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v78, &v91);
      v24 = *(&v92 + 1);
      v25 = v92;
      if (*(&v92 + 1) >= v92)
      {
        if (v94)
        {
LABEL_61:
          LODWORD(v87) = 0;
          TBuffer<wchar_t>::insert(&v91, v24, &v87, 1uLL);
          v23 = v91;
          --*(&v92 + 1);
          goto LABEL_64;
        }

LABEL_62:
        v23 = v91;
        if (v25)
        {
          v91[v25 - 1] = 0;
        }

        goto LABEL_64;
      }

LABEL_59:
      v23 = v91;
      v91[v24] = 0;
LABEL_64:
      v95 = v23;
      break;
    case 11:
      {
        operator new();
      }

      TLocaleInfo::katakanaToHiragana(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v78, &v91);
      v24 = *(&v92 + 1);
      v25 = v92;
      if (*(&v92 + 1) >= v92)
      {
        if (v94)
        {
          goto LABEL_61;
        }

        goto LABEL_62;
      }

      goto LABEL_59;
    case 10:
      v23 = v78;
      goto LABEL_64;
  }

LABEL_65:
  v26 = *(a8 + 128);
  v27 = *v95;
  if (*v95)
  {
    while (2)
    {
      {
        operator new();
      }

      DigitExtended = v27 - 48;
      if (v27 < 48)
      {
        goto LABEL_76;
      }

      if (v27 <= 0x39)
      {
LABEL_71:
        if (DigitExtended == -1 || v12 != 9)
        {
          goto LABEL_76;
        }

        v29 = v95;
        {
          operator new();
        }

        v30 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v29, &v95);
        if (arabicToRoman(v30, a9))
        {
          TBuffer<wchar_t>::insert(a9, *(a9 + 16), v29, v95 - v29);
        }
      }

      else
      {
        if (v27 >= 0x660)
        {
          DigitExtended = TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v27);
          goto LABEL_71;
        }

LABEL_76:
        v31 = *v95;
        {
          operator new();
        }

        if (v31 == 13 || v31 == 10)
        {
          v33 = v95;
          if (*v95 == 13 && v95[1] == 10)
          {
            v33 = v95 + 1;
          }

          v95 = v33 + 1;
          WideNewLine = TStringParam::get((a7 + 144));
          if (!*WideNewLine)
          {
            WideNewLine = getWideNewLine();
          }

          v35 = 0;
            ;
          }

          TBuffer<wchar_t>::insert(a9, *(a9 + 16), WideNewLine, v35 - 1);
        }

        else
        {
          v37 = *v95;
          if (*v95 == 223 && !wcscmp(*(v26 + 8), "C") && !wcscmp(*v26, "d"))
          {
            TBuffer<wchar_t>::insert(a9, *(a9 + 16), "s", 2uLL);
          }

          else
          {
            LODWORD(v87) = v37;
            TBuffer<wchar_t>::insert(a9, *(a9 + 16), &v87, 1uLL);
          }

          ++v95;
        }
      }

      v27 = *v95;
      if (!*v95)
      {
        break;
      }

      continue;
    }
  }

  if (v83 == 4)
  {
    if (v14 < *(a9 + 16))
    {
      v45 = *a9;
      v46 = v14;
      do
      {
        v47 = TLocaleInfo::toLower(v26, *(v45 + 4 * v46));
        v45 = *a9;
        *(*a9 + 4 * v46++) = v47;
      }

      while (v46 < *(a9 + 16));
    }

    goto LABEL_163;
  }

  if (v83 == 5)
  {
    v87 = v89;
    v88 = xmmword_26286B6F0;
    v90 = 1;
    if (v14 < *(a9 + 16))
    {
      v43 = v14;
      do
      {
        v44 = *(*a9 + 4 * v43);
        if (v44 == 223)
        {
          TBuffer<wchar_t>::insert(&v87, *(&v88 + 1), "S", 2uLL);
        }

        else
        {
          v96[0] = TLocaleInfo::toUpper(v26, v44);
          TBuffer<wchar_t>::insert(&v87, *(&v88 + 1), v96, 1uLL);
        }

        ++v43;
      }

      while (v43 < *(a9 + 16));
    }

    TBuffer<wchar_t>::resize(a9, v14);
    TBuffer<wchar_t>::operator+=(a9, &v87);
    if (v90 == 1 && v87 != v89 && v87)
    {
      MEMORY[0x26672B1B0]();
    }

    goto LABEL_163;
  }

  if (v83 != 6)
  {
    goto LABEL_163;
  }

  v84 = v26;
  v38 = v14 + 1;
  v39 = 4 * v14;
  while (2)
  {
    v40 = *(*a9 + v39);
    {
      operator new();
    }

    if (v40 <= 159)
    {
      if (v40 > 0x20 || ((1 << v40) & 0x100002600) == 0)
      {
        break;
      }

      goto LABEL_124;
    }

    if (v40 >= 12288)
    {
      if (v40 != 65279 && v40 != 12288)
      {
        break;
      }

      goto LABEL_124;
    }

    if (v40 == 160 || v40 == 8203)
    {
LABEL_124:
      ++v38;
      v39 += 4;
      continue;
    }

    break;
  }

  ActiveConfigHandle = TParam::getActiveConfigHandle((a7 + 17408));
  v26 = v84;
  v49 = *(a7 + 4 * TParam::getValidConfig((a7 + 17408), ActiveConfigHandle) + 17568);
  if (!v49)
  {
    goto LABEL_153;
  }

  v50 = *(*a9 + v39);
  {
    operator new();
  }

  if ((TLocaleInfo::isUpper(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v50) & 1) == 0)
  {
    if (v49 == -1 || (v51 = v49 + v38, v51 > *(a9 + 16)))
    {
      v51 = *(a9 + 16);
    }

    while (v38 < v51)
    {
      v52 = *(*a9 + 4 * v38);
      {
        operator new();
      }

      ++v38;
      if (TLocaleInfo::isUpper(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v52))
      {
        goto LABEL_163;
      }
    }

LABEL_153:
    if (wcscmp(*v84, "n"))
    {
      v53 = *a9;
      goto LABEL_162;
    }

    v55 = *(a9 + 8);
    v54 = *(a9 + 16);
    if (v54 >= v55)
    {
      if (*(a9 + 1048))
      {
        LODWORD(v87) = 0;
        TBuffer<wchar_t>::insert(a9, v54, &v87, 1uLL);
        --*(a9 + 16);
        v53 = *a9;
      }

      else
      {
        v53 = *a9;
        if (v55)
        {
          *(v53 + 4 * v55 - 4) = 0;
        }
      }
    }

    else
    {
      v53 = *a9;
      *(*a9 + 4 * v54) = 0;
    }

    if (!wcsncmp((v53 + v39), "i", 2uLL))
    {
      *(v53 + v39) = 0x4A00000049;
    }

    else
    {
LABEL_162:
      *(*a9 + v39) = TLocaleInfo::toUpper(v84, *(v53 + v39));
    }
  }

LABEL_163:
  if (*(v26 + 64) == 2)
  {
    v56 = TParam::getActiveConfigHandle((a7 + 16912));
    v57 = *(a7 + TParam::getValidConfig((a7 + 16912), v56) + 17064);
    v58 = TParam::getActiveConfigHandle((a7 + 16664));
    v59 = *(a7 + TParam::getValidConfig((a7 + 16664), v58) + 16816);
    v60 = TParam::getActiveConfigHandle((a7 + 17160));
    v86 = *(a7 + TParam::getValidConfig((a7 + 17160), v60) + 17312);
    {
      operator new();
    }

    v61 = 1;
    if ((a6 - 32) >= 0x5F && ((a6 - 162) > 0xD || ((1 << (a6 + 94)) & 0x241B) == 0) && (a6 - 10629) >= 2 && a6 != 8361)
    {
      v61 = 0;
    }

    {
      operator new();
    }

    if (v14 < *(a9 + 16))
    {
      v64 = (a6 - 65281) < 0x60 || (a6 - 65504) < 7 || a6 == 12288;
      do
      {
        v65 = *(*a9 + 4 * v14);
        {
          operator new();
        }

        if ((TLocaleInfo::isAlpha(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v65) & 1) == 0)
        {
          {
            operator new();
          }

          if (v65 > 159)
          {
            if (v65 >= 12288)
            {
              if (v65 != 65279 && v65 != 12288)
              {
                goto LABEL_208;
              }
            }

            else if (v65 != 160 && v65 != 8203)
            {
LABEL_208:
              {
                operator new();
              }

              if (v65 < 48 || v65 >= 0x3A && (v65 < 0x660 || TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v65) == -1))
              {
                {
                  operator new();
                }

                if (TLocaleInfo::isPunct(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v65))
                {
                  v61 |= (v64 ^ 1) & v86;
                  v64 = v61 ^ 1;
                  if ((v61 ^ 1))
                  {
                    {
                      operator new();
                    }

                    v73 = TLocaleInfo::toWide(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v65);
                  }

                  else
                  {
                    {
                      operator new();
                    }

                    v73 = TLocaleInfo::toNarrow(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v65);
                  }

                  *(*a9 + 4 * v14) = v73;
                }

                else
                {
                  {
                    operator new();
                  }

                  v61 = 1;
                  if ((v65 - 32) >= 0x5F && ((v65 - 162) > 0xD || ((1 << (v65 + 94)) & 0x241B) == 0) && (v65 - 10629) >= 2 && v65 != 8361)
                  {
                    v61 = 0;
                  }

                  {
                    operator new();
                  }

                  v64 = (v65 - 65281) < 0x60 || (v65 - 65504) < 7 || v65 == 12288;
                }
              }

              else
              {
                if (v59)
                {
                  {
                    operator new();
                  }

                  v71 = TLocaleInfo::toNarrow(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v65);
                }

                else
                {
                  {
                    operator new();
                  }

                  v71 = TLocaleInfo::toWide(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v65);
                }

                *(*a9 + 4 * v14) = v71;
                v61 = v59;
                v64 = v59 ^ 1;
              }

              goto LABEL_206;
            }
          }

          else if (v65 > 0x20 || ((1 << v65) & 0x100002600) == 0)
          {
            goto LABEL_208;
          }
        }

        if (v57)
        {
          {
            operator new();
          }

          v69 = TLocaleInfo::toNarrow(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v65);
        }

        else
        {
          {
            operator new();
          }

          v69 = TLocaleInfo::toWide(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v65);
        }

        *(*a9 + 4 * v14) = v69;
        v61 = v57;
        v64 = v57 ^ 1;
LABEL_206:
        ++v14;
      }

      while (v14 < *(a9 + 16));
    }
  }

  {
    operator new();
  }

  v76 = a5;
  if (a4 > 159)
  {
    if (a4 >= 12288)
    {
      if (a4 == 65279 || a4 == 12288)
      {
        goto LABEL_279;
      }
    }

    else if (a4 == 160 || a4 == 8203)
    {
      goto LABEL_279;
    }
  }

  else
  {
    if (a4 > 0x20 || ((1 << a4) & 0x100002600) == 0)
    {
      goto LABEL_281;
    }

LABEL_279:
    if ((v79 - 1) < 3)
    {
      v76 = v79 - 1;
    }
  }

LABEL_281:
  if (v94 == 1 && v91 != v93 && v91)
  {
    MEMORY[0x26672B1B0]();
  }

  return v76;
}

void sub_262775DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  MEMORY[0x26672B1B0](v13, 0x1070C40ADD13FEBLL);
  if (LOBYTE(STACK[0x890]) == 1 && STACK[0x478] != a13 && STACK[0x478] != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

uint64_t TBlock::applyControls(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v67 = v69;
  v68 = xmmword_26286B6F0;
  v70 = 1;
  v7 = (a1 + 48);
  if (*(a1 + 71) < 0)
  {
    v7 = *v7;
  }

  v8 = *v7;
  {
    operator new();
  }

  isUpper = TLocaleInfo::isUpper(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v8);
  *&v10 = -1;
  *(&v10 + 1) = -1;
  v66[3] = v10;
  v66[2] = v10;
  v66[1] = v10;
  v66[0] = v10;
  v61 = a3;
  MultiWordSeparator = TBlock::getMultiWordSeparator(a1, a3);
  if (!MultiWordSeparator)
  {
    v12 = 1;
    goto LABEL_111;
  }

  if (*(*(a4 + 128) + 64) != 2)
  {
    goto LABEL_30;
  }

  {
    operator new();
  }

  if (MultiWordSeparator > 159)
  {
    if (MultiWordSeparator >= 12288)
    {
      if (MultiWordSeparator == 12288)
      {
        goto LABEL_18;
      }

      v13 = 65279;
    }

    else
    {
      if (MultiWordSeparator == 160)
      {
        goto LABEL_18;
      }

      v13 = 8203;
    }

    if (MultiWordSeparator == v13)
    {
      goto LABEL_18;
    }
  }

  else if (MultiWordSeparator <= 0x20 && ((1 << MultiWordSeparator) & 0x100002600) != 0)
  {
    goto LABEL_18;
  }

  {
    operator new();
  }

  if (!TLocaleInfo::isAlpha(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, MultiWordSeparator))
  {
    {
      operator new();
    }

    if (TLocaleInfo::isPunct(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, MultiWordSeparator))
    {
      ActiveConfigHandle = TParam::getActiveConfigHandle((a3 + 17160));
      ValidConfig = TParam::getValidConfig((a3 + 17160), ActiveConfigHandle);
      if (*(ValidConfig + a3 + 17312) == 1)
      {
        GlobalLocaleInfo = TLocaleInfo::getGlobalLocaleInfo(ValidConfig);
        v59 = TLocaleInfo::toNarrow(GlobalLocaleInfo, MultiWordSeparator);
      }

      else
      {
        v57 = TLocaleInfo::getGlobalLocaleInfo(ValidConfig);
        v59 = TLocaleInfo::toWide(v57, MultiWordSeparator);
      }

      v17 = 1;
      goto LABEL_31;
    }

LABEL_30:
    v17 = 0;
    v59 = MultiWordSeparator;
    goto LABEL_31;
  }

LABEL_18:
  v14 = TParam::getActiveConfigHandle((a3 + 16912));
  v15 = *(a3 + TParam::getValidConfig((a3 + 16912), v14) + 17064);
  if (v15 == 1)
  {
    {
      operator new();
    }

    v59 = TLocaleInfo::toNarrow(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, MultiWordSeparator);
  }

  else
  {
    {
      operator new();
    }

    v59 = TLocaleInfo::toWide(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, MultiWordSeparator);
  }

  v17 = 0;
LABEL_31:
  v21 = a1;
  do
  {
    while (1)
    {
      v21 = *(v21 + 152);
      if (!v21)
      {
        v24 = 0;
        goto LABEL_42;
      }

      if ((*(v21 + 71) & 0x8000000000000000) != 0)
      {
        break;
      }

      if (*(v21 + 71))
      {
        goto LABEL_37;
      }
    }
  }

  while (!*(v21 + 56));
LABEL_37:
  v22 = *(v21 + 95);
  if (v22 < 0)
  {
    v23 = *(v21 + 72);
    v22 = *(v21 + 80);
  }

  else
  {
    v23 = v21 + 72;
  }

  v24 = *(v23 + 4 * v22 - 4);
LABEL_42:
  v62 = v64;
  v63 = xmmword_26286B6F0;
  v65 = 1;
  v25 = wcschr(v7, MultiWordSeparator);
  v58 = v25 == 0;
  if (!v25)
  {
LABEL_105:
    if (v62 != v64 && v62 != 0)
    {
      MEMORY[0x26672B1B0]();
    }

    goto LABEL_110;
  }

  v26 = v25;
  v27 = v17 ^ 1;
  v28 = 1;
  do
  {
    TBuffer<wchar_t>::resize(&v62, 0);
    TBuffer<wchar_t>::insert(&v62, 0, v7, v26 - v7);
    {
      operator new();
    }

    v29 = 0;
    if (MultiWordSeparator <= 159)
    {
      if (MultiWordSeparator <= 0x20 && ((1 << MultiWordSeparator) & 0x100002600) != 0)
      {
        goto LABEL_56;
      }

LABEL_55:
      v29 = 1;
      goto LABEL_56;
    }

    if (MultiWordSeparator >= 12288)
    {
      if (MultiWordSeparator == 12288)
      {
        goto LABEL_56;
      }

      v30 = 65279;
    }

    else
    {
      if (MultiWordSeparator == 160)
      {
        goto LABEL_56;
      }

      v30 = 8203;
    }

    if (MultiWordSeparator != v30)
    {
      goto LABEL_55;
    }

LABEL_56:
    TItnControlState::set(v66, a2, isUpper, v28 & 1, v29, 1uLL);
    if (*v26 == MultiWordSeparator)
    {
      v31 = 0;
      v7 = v26;
      do
      {
        ++v31;
        v32 = v7[1];
        ++v7;
      }

      while (v32 == MultiWordSeparator);
    }

    else
    {
      v31 = 0;
      v7 = v26;
    }

    if (*(&v63 + 1) >= v63)
    {
      if (v65)
      {
        v71[0] = 0;
        TBuffer<wchar_t>::insert(&v62, *(&v63 + 1), v71, 1uLL);
        v33 = v62;
        --*(&v63 + 1);
      }

      else
      {
        v33 = v62;
        if (v63)
        {
          v62[v63 - 1] = 0;
        }
      }
    }

    else
    {
      v33 = v62;
      v62[*(&v63 + 1)] = 0;
    }

    v34 = TBlock::format(a1, v33, v66, MultiWordSeparator, v31, v24, v61, a4, &v67);
    v35 = v34;
    if (*(&v68 + 1))
    {
      v24 = *&v67[4 * *(&v68 + 1) - 4];
    }

    if (v34)
    {
      v36 = v27;
    }

    else
    {
      v36 = 1;
    }

    if (v36)
    {
      v38 = v59;
      if (!v34)
      {
        goto LABEL_85;
      }

      goto LABEL_83;
    }

    {
      operator new();
    }

    if ((v24 - 32) < 0x5F || (v24 - 162) <= 0xD && ((1 << (v24 + 94)) & 0x241B) != 0 || (v24 - 10629) < 2 || v24 == 8361)
    {
      {
        operator new();
      }

      v37 = TLocaleInfo::toNarrow(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, MultiWordSeparator);
    }

    else
    {
      {
        operator new();
      }

      if ((v24 - 65281) >= 0x60 && (v24 - 65504) >= 7)
      {
        v38 = v59;
        if (v24 != 12288)
        {
          goto LABEL_83;
        }
      }

      {
        operator new();
      }

      v37 = TLocaleInfo::toWide(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, MultiWordSeparator);
    }

    v38 = v37;
    do
    {
LABEL_83:
      v71[0] = v38;
      TBuffer<wchar_t>::insert(&v67, *(&v68 + 1), v71, 1uLL);
      --v35;
    }

    while (v35);
    v24 = v38;
LABEL_85:
    v26 = wcschr(v7, MultiWordSeparator);
    v28 = 0;
  }

  while (v26);
  if (v65)
  {
    goto LABEL_105;
  }

LABEL_110:
  v12 = v58;
LABEL_111:
  TItnControlState::set(v66, a2, isUpper, v12, 1, 1uLL);
  v40 = v61;
  v41 = TParam::getActiveConfigHandle((v61 + 3792));
  v42 = TParam::getValidConfig((v61 + 3792), v41);
  if (*(v61 + v42 + 3944))
  {
    v43 = 0;
  }

  else
  {
    v44 = *(a1 + 71);
    if (v44 < 0)
    {
      v44 = *(a1 + 56);
    }

    v43 = v44 != 0;
  }

  v45 = a1;
  do
  {
    while (1)
    {
      v45 = *(v45 + 152);
      if (!v45)
      {
        v48 = 0;
        goto LABEL_127;
      }

      if ((*(v45 + 71) & 0x8000000000000000) != 0)
      {
        break;
      }

      if (*(v45 + 71))
      {
        goto LABEL_122;
      }
    }
  }

  while (!*(v45 + 56));
LABEL_122:
  v46 = *(v45 + 95);
  if (v46 < 0)
  {
    v47 = *(v45 + 72);
    v46 = *(v45 + 80);
  }

  else
  {
    v47 = v45 + 72;
  }

  v48 = *(v47 + 4 * v46 - 4);
LABEL_127:
  v49 = *(a1 + 144);
  if (!v49)
  {
LABEL_133:
    v50 = 0;
    goto LABEL_136;
  }

  while (2)
  {
    if ((*(v49 + 71) & 0x80000000) == 0)
    {
      if (*(v49 + 71))
      {
        v51 = (v49 + 48);
        goto LABEL_135;
      }

      goto LABEL_132;
    }

    if (!*(v49 + 56))
    {
LABEL_132:
      v49 = *(v49 + 144);
      if (!v49)
      {
        goto LABEL_133;
      }

      continue;
    }

    break;
  }

  v51 = *(v49 + 48);
LABEL_135:
  v50 = *v51;
LABEL_136:
  if (*v7)
  {
    v42 = wcslen(v7);
    v52 = v7[v42 - 1];
  }

  else
  {
    v52 = 0;
  }

  {
    if (v42)
    {
      operator new();
    }
  }

  if ((v52 - 19968) >> 4 < 0x51B)
  {
    goto LABEL_143;
  }

  {
    if (v42)
    {
      operator new();
    }
  }

  if ((v50 - 19968) >> 4 < 0x51B)
  {
    goto LABEL_143;
  }

  {
    if (v42)
    {
      operator new();
    }
  }

  if ((v52 - 65382) < 0x38 || (v52 - 12449) < 0x56 || (v52 - 12443) < 4 || (v52 - 12540) < 3 || (v52 - 65438) < 2)
  {
    goto LABEL_143;
  }

  {
    if (v42)
    {
      operator new();
    }
  }

  if ((v50 - 65382) < 0x38 || (v50 - 12449) < 0x56 || (v50 - 12443) < 4 || (v50 - 12540) < 3 || (v50 - 65438) < 2)
  {
    goto LABEL_143;
  }

  {
    if (v42)
    {
      operator new();
    }
  }

  if ((v52 - 12353) < 0x53 || (v52 - 12540) < 3 || (v52 - 12445) < 2)
  {
    goto LABEL_143;
  }

  {
    if (v42)
    {
      operator new();
    }
  }

  v40 = v61;
  if ((v50 - 12353) < 0x53)
  {
    goto LABEL_143;
  }

  if ((v50 - 12540) < 3)
  {
    goto LABEL_143;
  }

  if ((v50 - 12445) < 2)
  {
    goto LABEL_143;
  }

  v53 = TLocaleInfo::getGlobalLocaleInfo(v42);
  v40 = v61;
  if ((v52 & 0xFFFFFFC0) == 0x3000)
  {
    goto LABEL_143;
  }

  v54 = TLocaleInfo::getGlobalLocaleInfo(v53);
  v40 = v61;
  if ((v50 & 0xFFFFFFC0) == 0x3000)
  {
    goto LABEL_143;
  }

  v55 = TLocaleInfo::getGlobalLocaleInfo(v54);
  if ((v52 - 3585) > 0x5A)
  {
    v40 = v61;
    goto LABEL_144;
  }

  TLocaleInfo::getGlobalLocaleInfo(v55);
  v40 = v61;
  if ((v50 - 3585) <= 0x5A)
  {
LABEL_143:
    v43 = 0;
  }

LABEL_144:
  *(a1 + 224) = TBlock::format(a1, v7, v66, 32, v43, v48, v40, a4, &v67);
  if (*(&v68 + 1) >= v68)
  {
    if (v70)
    {
      LODWORD(v62) = 0;
      TBuffer<wchar_t>::insert(&v67, *(&v68 + 1), &v62, 1uLL);
      --*(&v68 + 1);
    }

    else if (v68)
    {
      *&v67[4 * v68 - 4] = 0;
    }
  }

  else
  {
    *&v67[4 * *(&v68 + 1)] = 0;
  }

  result = MEMORY[0x26672AF30](a1 + 72);
  if (v70 == 1)
  {
    result = v67;
    if (v67 != v69)
    {
      if (v67)
      {
        return MEMORY[0x26672B1B0]();
      }
    }
  }

  return result;
}

void sub_262776E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  MEMORY[0x26672B1B0](v12, 0x1070C40ADD13FEBLL);
  if (LOBYTE(STACK[0x8C8]) == 1)
  {
    v14 = STACK[0x4B0];
    if (STACK[0x4B0] != a12)
    {
      if (v14)
      {
        MEMORY[0x26672B1B0](v14, 0x1000C4052888210);
      }
    }
  }

  _Unwind_Resume(a1);
}

void TBlock::adjustResult(std::wstring *this)
{
  v2 = SHIBYTE(this[3].__r_.__value_.__r.__words[2]);
  if (v2 < 0)
  {
    size = this[3].__r_.__value_.__l.__size_;
    if (size < 2)
    {
      return;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return;
    }

    size = SHIBYTE(this[3].__r_.__value_.__r.__words[2]);
  }

  v4 = &this[3];
  v5 = size - 1;
  if ((v2 & 0x80000000) != 0)
  {
    if (*(v4->__words[0] + 4 * v5) != 46)
    {
      return;
    }

    v6 = this[3].__r_.__value_.__l.__size_;
  }

  else
  {
    if (*(v4->__words + v5) != 46)
    {
      return;
    }

    v6 = SHIBYTE(this[3].__r_.__value_.__r.__words[2]);
  }

  v7 = v6 - 2;
  v8 = this + 3;
  if ((v2 & 0x80000000) != 0)
  {
    v8 = v4->__words[0];
  }

  v9 = v8->__r_.__value_.__s.__data_[v7];
  {
    operator new();
  }

  if (TLocaleInfo::isAlpha(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v9))
  {
    data = this[6].__r_.__value_.__l.__data_;
    if (data)
    {
      v11 = data + 18;
      if (*(data + 95) < 0)
      {
        v11 = *v11;
      }

      if (*v11 == 46)
      {
        v12 = SHIBYTE(this[3].__r_.__value_.__r.__words[2]);
        if ((v12 & 0x8000000000000000) != 0)
        {
          v12 = this[3].__r_.__value_.__l.__size_;
        }

        std::wstring::resize(this + 3, v12 - 1, 0);
      }
    }
  }
}

void sub_26277716C(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

void MrecInitModule_neuraln_neuraln(void)
{
  if (!gParDebugShowNNRunFunctSequence)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugShowNNRunFunctSequence", byte_26288CE4D, byte_26288CE4D, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugShowNNRunFunctSequence = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugShowNNRunFunctSequence);
  }
}

void NeuralNet::~NeuralNet(NeuralNetImage **this)
{
  DgnDelete<NeuralNetImage>(this[10]);
  DgnDelete<NeuralNetState>(this[9]);
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 3));
}

NeuralNetImage *DgnDelete<NeuralNetImage>(NeuralNetImage *result)
{
  if (result)
  {
    NeuralNetImage::~NeuralNetImage(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

NeuralNetState *DgnDelete<NeuralNetState>(NeuralNetState *result)
{
  if (result)
  {
    NeuralNetState::~NeuralNetState(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void NeuralNet::saveNeuralNet(NeuralNet *this, DFile *a2, DFileChecksums *a3, int a4, int a5)
{
  v5 = *(this + 10);
  if (a4)
  {
    NeuralNetImage::saveNeuralNetImageText(v5, a2, a5);
  }

  else
  {
    NeuralNetImage::saveNeuralNetImageBinary(v5, a2, a3, a5);
  }
}

void NeuralNetImage::saveNeuralNetImageText(NeuralNetImage *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v41);
  DgnTextFileWriter::openDgnTextFileWriter(v41, a2, 0x31u, a3);
  v39 = 0;
  v40 = 0;
  DgnTextFile::legalDgnTextFileVersions(v41, sNNT_Versions, &v39, v6, v7, v8, v9, v10);
  DgnTextFileWriter::setFileType(v41, "NeuralNetText", (v39 + 8 * (v40 - 1)));
  if (*(this + 104) - 1 < 3)
  {
    DgnTextFileWriter::setHeaderField(v41, "NeuralNetOutputType", off_279B3F8E8[(*(this + 104) - 1)]);
  }

  DgnTextFileWriter::setHeaderFieldUnsigned(v41, "NumberOfNeurons", *(this + 105));
  DgnTextFileWriter::setHeaderFieldUnsigned(v41, "NumberOfBlocks", *(this + 106));
  DgnTextFileWriter::setHeaderFieldUnsigned(v41, "NumberOfInputNeurons", *(this + 107));
  DgnTextFileWriter::setHeaderFieldUnsigned(v41, "NumberOfOutputNeurons", *(this + 108));
  DgnTextFileWriter::setHeaderFieldUnsigned(v41, "InputFeatureDim", *(this + 109));
  DgnTextFileWriter::setHeaderFieldUnsigned(v41, "InputContextWindowSize", *(this + 110));
  DgnTextFileWriter::setHeaderFieldUnsigned(v41, "WeightIntScale", *(this + 58));
  if ((*(this + 104) & 0xFFFE) == 2)
  {
    DgnTextFileWriter::setHeaderFieldUnsigned(v41, "OutputFeatureScaleAndOffsetIntScale", *(this + 113));
  }

  *v37 = 0;
  v38 = 0;
  v35 = 0;
  HIDWORD(v38) = realloc_array(0, &v35, 0x60uLL, 0, 0, 1) >> 4;
  *v37 = v35;
  v11 = v38;
  if (v38 <= 6)
  {
    if (v38 != 6)
    {
      v13 = v38 + 1;
      v14 = 16 * v38;
      do
      {
        DgnString::DgnString((*v37 + v14));
        v14 += 16;
      }

      while (v13++ != 6);
    }
  }

  else if (v38 >= 7)
  {
    v12 = 16 * v38 - 16;
    do
    {
      --v11;
      DgnString::~DgnString((*v37 + v12));
      v12 -= 16;
    }

    while (v11 > 6);
  }

  LODWORD(v38) = 6;
  v35 = 0;
  v36 = 0;
  v42 = 0;
  v16 = realloc_array(0, &v42, 0x18uLL, 0, 0, 1);
  v35 = v42;
  LODWORD(v36) = 6;
  HIDWORD(v36) = v16 >> 2;
  DgnString::operator=(*v37, "TableName");
  *v35 = 0;
  DgnString::operator=((*v37 + 16), "UnsValue1");
  *(v35 + 1) = 3;
  DgnString::operator=((*v37 + 32), "UnsValue2");
  *(v35 + 2) = 3;
  DgnString::operator=((*v37 + 48), "IntValue1");
  *(v35 + 3) = 1;
  DgnString::operator=((*v37 + 64), "IntValue2");
  *(v35 + 4) = 1;
  DgnString::operator=((*v37 + 80), "IntValue3");
  *(v35 + 5) = 1;
  DgnTextFileWriter::setLineFieldFormat(v41, &v35, v37);
  if (*(this + 105))
  {
    for (i = 0; i < *(this + 105); ++i)
    {
      DgnTextFileWriter::setLineFieldValue(v41, 0, "Neuron");
      DgnTextFileWriter::setLineFieldUnsignedValue(v41, 1u, i);
      v18 = *(*(this + 37) + 2 * i);
      if (v18 <= 3)
      {
        if (*(*(this + 37) + 2 * i))
        {
          if (v18 != 1)
          {
            goto LABEL_25;
          }

          v18 = 2;
        }
      }

      else if (v18 == 4)
      {
        v18 = 1;
      }

      else
      {
        if (v18 != 9 && v18 != 91)
        {
LABEL_25:
          v18 = 4 * (v18 == 3);
          goto LABEL_26;
        }

        v18 = 3;
      }

LABEL_26:
      DgnTextFileWriter::setLineFieldUnsignedValue(v41, 2u, v18);
      v19 = *(this + 107);
      if (i >= v19)
      {
        v20 = *(*(this + 2) + 4 * (i - v19));
      }

      else
      {
        v20 = 0;
      }

      DgnTextFileWriter::setLineFieldIntegerValue(v41, 3u, v20);
      DgnTextFileWriter::setLineFieldIntegerValue(v41, 4u, 0);
      if (*(this + 104) == 1 && (v21 = *(this + 105), v22 = *(this + 108), i >= (v21 - v22)))
      {
        DgnTextFileWriter::setLineFieldIntegerValue(v41, 5u, *(*(this + 24) + 2 * (i + v22 - v21)));
      }

      else
      {
        DgnTextFileWriter::setLineFieldIntegerValue(v41, 5u, -1);
      }

      DgnTextFileWriter::writeNextLine(v41);
    }
  }

  if (*(this + 106))
  {
    v23 = 0;
    do
    {
      DgnTextFileWriter::setLineFieldValue(v41, 0, "Block");
      DgnTextFileWriter::setLineFieldUnsignedValue(v41, 1u, v23);
      DgnTextFileWriter::setLineFieldUnsignedValue(v41, 2u, *(*(this + 39) + 2 * v23));
      DgnTextFileWriter::setLineFieldIntegerValue(v41, 3u, *(*(this + 41) + 2 * v23));
      DgnTextFileWriter::setLineFieldIntegerValue(v41, 4u, *(*(this + 43) + 2 * v23));
      DgnTextFileWriter::setLineFieldIntegerValue(v41, 5u, *(*(this + 45) + 2 * v23));
      DgnTextFileWriter::writeNextLine(v41);
      ++v23;
      v24 = *(this + 106);
    }

    while (v23 < v24);
    if (*(this + 106))
    {
      v25 = 0;
      v26 = *(this + 41);
      do
      {
        if (*(v26 + 2 * v25))
        {
          v27 = 0;
          v28 = *(*(this + 43) + 2 * v25);
          v29 = *(*(this + 39) + 2 * v25);
          v30 = *(this + 45);
          do
          {
            if (*(v30 + 2 * v25))
            {
              v31 = 0;
              v32 = v28;
              v33 = 16 * v28;
              do
              {
                DgnTextFileWriter::setLineFieldValue(v41, 0, "Weight");
                DgnTextFileWriter::setLineFieldUnsignedValue(v41, 1u, v25);
                DgnTextFileWriter::setLineFieldUnsignedValue(v41, 2u, v27 + v29);
                DgnTextFileWriter::setLineFieldIntegerValue(v41, 3u, v32);
                DgnTextFileWriter::setLineFieldIntegerValue(v41, 4u, *(*(*this + v33) + 2 * v27));
                DgnTextFileWriter::setLineFieldIntegerValue(v41, 5u, 0);
                DgnTextFileWriter::writeNextLine(v41);
                ++v31;
                v30 = *(this + 45);
                v33 += 16;
                ++v32;
              }

              while (v31 < *(v30 + 2 * v25));
              v26 = *(this + 41);
            }

            ++v27;
          }

          while (v27 < *(v26 + 2 * v25));
          LOWORD(v24) = *(this + 106);
        }

        ++v25;
      }

      while (v25 < v24);
    }
  }

  if ((*(this + 104) & 0xFFFE) == 2 && *(this + 108))
  {
    v34 = 0;
    do
    {
      DgnTextFileWriter::setLineFieldValue(v41, 0, "OutputFeatureScaleAndOffset");
      DgnTextFileWriter::setLineFieldUnsignedValue(v41, 1u, v34);
      DgnTextFileWriter::setLineFieldUnsignedValue(v41, 2u, *(*(this + 20) + 4 * v34));
      DgnTextFileWriter::setLineFieldIntegerValue(v41, 3u, *(*(this + 22) + 4 * v34));
      DgnTextFileWriter::setLineFieldIntegerValue(v41, 4u, 0);
      DgnTextFileWriter::setLineFieldIntegerValue(v41, 5u, 0);
      DgnTextFileWriter::writeNextLine(v41);
      ++v34;
    }

    while (v34 < *(this + 108));
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v35);
  DgnArray<DgnString>::releaseAll(v37);
  DgnIArray<Utterance *>::~DgnIArray(&v39);
  DgnTextFileWriter::~DgnTextFileWriter(v41);
}

void sub_262777A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  DgnArray<DgnString>::releaseAll(va);
  DgnIArray<Utterance *>::~DgnIArray(va1);
  DgnTextFileWriter::~DgnTextFileWriter(va2);
  _Unwind_Resume(a1);
}

void (***NeuralNetImage::saveNeuralNetImageBinary(NeuralNetImage *this, DFile *a2, DFileChecksums *a3, int a4))(void)
{
  v7 = OpenAndWriteMrecHeader(a2, 0x30u, a4, "MRNNB!?", 24, 7);
  v10 = 0;
  writeObject<DgnPrimArray<short>>(v7, this, &v10);
  writeObject<unsigned int>(v7, this + 16, &v10);
  writeObject<unsigned short>(v7, this + 32, &v10);
  writeObject<unsigned short>(v7, this + 48, &v10);
  writeObject<unsigned short>(v7, this + 64, &v10);
  writeObject<unsigned short>(v7, this + 80, &v10);
  writeObject<unsigned int>(v7, this + 96, &v10);
  writeObject<unsigned short>(v7, this + 112, &v10);
  writeObject<unsigned short>(v7, this + 128, &v10);
  writeObject<unsigned short>(v7, this + 144, &v10);
  writeObject<unsigned int>(v7, this + 160, &v10);
  writeObject<unsigned int>(v7, this + 176, &v10);
  writeObject(v7, this + 104, &v10);
  writeObject(v7, this + 105, &v10);
  writeObject(v7, this + 106, &v10);
  writeObject(v7, this + 107, &v10);
  writeObject(v7, this + 108, &v10);
  writeObject(v7, this + 109, &v10);
  writeObject(v7, this + 110, &v10);
  writeObject(v7, this + 111, &v10);
  writeObject(v7, this + 112, &v10);
  writeObject(v7, this + 113, &v10);
  writeObject(v7, this + 58, &v10);
  writeObject<unsigned short>(v7, this + 192, &v10);
  writeObject<unsigned short>(v7, this + 296, &v10);
  writeObject<unsigned short>(v7, this + 312, &v10);
  writeObject<unsigned short>(v7, this + 328, &v10);
  writeObject<unsigned short>(v7, this + 344, &v10);
  writeObject<unsigned short>(v7, this + 360, &v10);
  writeObjectChecksum(v7, &v10);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x30u, v10);
  return DgnDelete<DgnStream>(v7);
}

uint64_t NeuralNet::getWindowSize(NeuralNet *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = **(this + 9);
  if (!v8)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/neuraln/neuraln.cpp", 299, "neuraln/neuraln", 1, "%s", a7, a8, &errStr_neuraln_neuraln_E_JOIN_REQUIRED);
    v8 = **(this + 9);
  }

  return *(v8 + 220);
}

uint64_t NeuralNet::getHalfWindowSize(NeuralNet *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = **(this + 9);
  if (!v8)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/neuraln/neuraln.cpp", 307, "neuraln/neuraln", 1, "%s", a7, a8, &errStr_neuraln_neuraln_E_JOIN_REQUIRED);
    v8 = **(this + 9);
  }

  return *(v8 + 220) >> 1;
}

uint64_t NeuralNet::getFrameSize(NeuralNet *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = **(this + 9);
  if (!v8)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/neuraln/neuraln.cpp", 320, "neuraln/neuraln", 1, "%s", a7, a8, &errStr_neuraln_neuraln_E_JOIN_REQUIRED);
    v8 = **(this + 9);
  }

  return *(v8 + 218);
}

uint64_t NeuralNet::getOutputSize(NeuralNet *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = **(this + 9);
  if (!v8)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/neuraln/neuraln.cpp", 327, "neuraln/neuraln", 1, "%s", a7, a8, &errStr_neuraln_neuraln_E_JOIN_REQUIRED);
    v8 = **(this + 9);
  }

  return *(v8 + 216);
}

BOOL NeuralNet::isOutTypeBF(NeuralNet *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = **(this + 9);
  if (!v8)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/neuraln/neuraln.cpp", 333, "neuraln/neuraln", 1, "%s", a7, a8, &errStr_neuraln_neuraln_E_JOIN_REQUIRED);
    v8 = **(this + 9);
  }

  return *(v8 + 208) == 2;
}

BOOL NeuralNet::isOutTypeConcatenatedBF(NeuralNet *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = **(this + 9);
  if (!v8)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/neuraln/neuraln.cpp", 340, "neuraln/neuraln", 1, "%s", a7, a8, &errStr_neuraln_neuraln_E_JOIN_REQUIRED);
    v8 = **(this + 9);
  }

  return *(v8 + 208) == 3;
}

void NeuralNet::reset(NeuralNet *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!**(this + 9))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/neuraln/neuraln.cpp", 353, "neuraln/neuraln", 1, "%s", a7, a8, &errStr_neuraln_neuraln_E_JOIN_REQUIRED);
  }

  NeuralNet::initFastNeuralNet(this);
}

void NeuralNet::initFastNeuralNet(NeuralNet *this)
{
  v2 = *(this + 9);
  v3 = *(v2 + 12) - *(v2 + 16);
  if (v3 >= 1)
  {
    v4 = *(v2 + 56);
    v5 = &v4[v3];
    v6 = *(*v2 + 16);
    do
    {
      v7 = *v6++;
      *v4++ = v7;
    }

    while (v4 < v5);
  }

  bzero(*(v2 + 88), 2 * *(v2 + 96));
  v8 = *(this + 9);
  v9 = *(v8 + 72);
  v10 = 2 * *(v8 + 80);

  bzero(v9, v10);
}

double NeuralNet::run(NeuralNet *a1, uint64_t *a2, unsigned int a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!**(a1 + 9))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/neuraln/neuraln.cpp", 380, "neuraln/neuraln", 1, "%s", a7, a8, &errStr_neuraln_neuraln_E_JOIN_REQUIRED);
  }

  if (!(a4 | a5))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/neuraln/neuraln.cpp", 382, "neuraln/neuraln", 18, "%s", a7, a8, &errStr_neuraln_neuraln_E_BAD_RUN_API_OUTPUT_PARAMETERS);
  }

  NeuralNet::loadInputFastNeuralNet(a1, a2, a3);
  NeuralNet::runFastNeuralNet(a1);
  v14 = *(a1 + 9);
  if ((*(*v14 + 208) & 0xFFFE) == 2)
  {
    if (a4)
    {
      FeatureFrame::setFeature(v14[19], (v14 + 3));
      v21 = 0;
      BinaryIntScale::setScale(&v21, *(**(a1 + 9) + 226));
      FeatureFrame::scaleFeatureToUns8(*(*(a1 + 9) + 152), (**(a1 + 9) + 160), (**(a1 + 9) + 176), &v21);
      Feature = FeatureFrame::getFeature(*(*(a1 + 9) + 152));
      DgnPrimArray<unsigned char>::copyArraySlice(a4, Feature, 0, *(Feature + 8));
    }

    if (a5)
    {
      v16 = *(a1 + 9);
      v17 = *(v16 + 8);
      if (v17)
      {
        v18 = v16[3];
        v19 = *a5;
        do
        {
          v20 = *v18++;
          result = v20;
          *v19++ = v20;
          --v17;
        }

        while (v17);
      }
    }
  }

  return result;
}

uint64_t NeuralNet::loadInputFastNeuralNet(uint64_t result, uint64_t *a2, unsigned int a3)
{
  v3 = *(result + 80);
  v4 = *(v3 + 220);
  if (v4 == 1)
  {
    v5 = *(result + 72);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = *(*a2 + 16 * (a3 % *(a2 + 2)));
      v8 = *(v3 + 240);
      v9 = *(v5 + 72);
      do
      {
        v10 = *v7++;
        v11 = v10;
        if (v10 > 256.0)
        {
          v11 = 256.0;
        }

        v12 = v11 * v8;
        if (v12 >= 0.0)
        {
          v13 = 0.5;
        }

        else
        {
          v13 = -0.5;
        }

        *v9++ = (v12 + v13);
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v14 = a3 - (v4 >> 1);
    v15 = a3 + (v4 >> 1);
    if (v14 <= v15)
    {
      v16 = 0;
      v17 = *(a2 + 2);
      v18 = *a2;
      v19 = *(*a2 + 16 * (a3 % v17) + 8);
      do
      {
        if (v19)
        {
          v20 = *(v18 + 16 * (v14 % v17));
          v21 = *(v3 + 240);
          v22 = *(*(result + 72) + 72);
          v23 = v19;
          do
          {
            v24 = *v20++;
            v25 = v24;
            if (v24 > 256.0)
            {
              v25 = 256.0;
            }

            v26 = v25 * v21;
            if (v26 >= 0.0)
            {
              v27 = 0.5;
            }

            else
            {
              v27 = -0.5;
            }

            v28 = (v16 + 1);
            *(v22 + 2 * v16) = (v26 + v27);
            LODWORD(v16) = v16 + 1;
            --v23;
          }

          while (v23);
        }

        else
        {
          v28 = v16;
        }

        ++v14;
        v16 = v28;
      }

      while (v14 <= v15);
    }
  }

  return result;
}

void NeuralNet::runFastNeuralNet(NeuralNet *this)
{
  v2 = *(*(this + 9) + 104);
  v3 = NeuralNet::fastInputSendingWithDotProduct(this, *v2);
  v5 = *(this + 9);
  if (v5[5] >= 2)
  {
    v6 = 1;
    do
    {
      v7 = v2[v6];
      v8 = *(*(*v5 + 96) + 4 * v6);
      if (v8 > 4)
      {
        if (v8 > 6)
        {
          if (v8 == 7)
          {
            v3 = NeuralNet::fastReluSendingWithDotProduct(this, v7);
          }

          else if (v8 == 8)
          {
            v4 = NeuralNet::fastOutputRelu(this, v7, v4);
          }
        }

        else if (v8 == 5)
        {
          v3 = NeuralNet::fastOutputLinear(this, v7, v4);
        }

        else
        {
          NeuralNet::fastOutputDpsm(this, v7);
        }
      }

      else if (v8 > 2)
      {
        if (v8 == 3)
        {
          v3 = NeuralNet::fastFeedbackSendingWithDotProduct(v3, v7);
        }

        else
        {
          NeuralNet::fastOutputDps(this, v7);
        }
      }

      else if (v8 == 1)
      {
        v3 = NeuralNet::fastDpsSendingWithDotProduct(this, v7);
      }

      else if (v8 == 2)
      {
        v3 = NeuralNet::fastLinearSendingWithDotProduct(this, v7);
      }

      ++v6;
      v5 = *(this + 9);
    }

    while (v6 < v5[5]);
  }
}

FeatureFrame *NeuralNetState::freeExecutionSpace(NeuralNetState *this)
{
  v2 = *(this + 28);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 13);
    do
    {
      v5 = *(v4 + 8 * v3);
      if (v5)
      {
        MemChunkFree(v5, 0);
        v2 = *(this + 28);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  *(this + 1) = 0;
  *(this + 2) = 0;
  v6 = *(this + 19);

  return DgnDelete<FeatureFrame>(v6);
}

uint64_t NeuralNet::fastInputSendingWithDotProduct(uint64_t a1, unsigned __int16 *a2)
{
  v3 = *(a2 + 9);
  v2 = *(a2 + 10);
  if (*a2)
  {
    v4 = *(a2 + 3);
    v5 = &v4[*a2];
    v6 = *(a2 + 8);
    v7 = *(a2 + 5);
    do
    {
      v8 = *v4;
      v9 = v8 - *v7;
      if (v9)
      {
        *v3++ = v9;
        *v2++ = *v6;
        *v7 = v8;
      }

      ++v4;
      v6 += 2;
      ++v7;
    }

    while (v4 < v5);
    v10 = *(a2 + 9);
    v2 = *(a2 + 10);
  }

  else
  {
    v10 = *(a2 + 9);
  }

  v11 = v3 - v10;
  if (((v3 - v10) >> 1) >= 1)
  {
    v12 = 0;
    v13 = *(a2 + 2);
    v14 = a2[1];
    v15 = v11 >> 1;
    do
    {
      if (v14)
      {
        v16 = v2[v12];
        v17 = &v16[v14];
        v18 = *(v10 + 2 * v12);
        v19 = v13;
        do
        {
          v20 = *v16++;
          result = (*v19 + v20 * v18);
          *v19++ = result;
        }

        while (v16 < v17);
      }

      ++v12;
    }

    while (v12 != v15);
  }

  return result;
}

uint64_t NeuralNet::fastLinearSendingWithDotProduct(uint64_t result, unsigned __int16 *a2)
{
  v3 = *(a2 + 9);
  v2 = *(a2 + 10);
  if (*a2)
  {
    v4 = *(a2 + 3);
    v5 = &v4[*a2];
    v6 = *(a2 + 8);
    v7 = *(a2 + 1);
    do
    {
      v8 = *v7++;
      v9 = v8 / *(*(result + 80) + 232);
      v10 = *v4;
      if (v10 != v9)
      {
        *v3++ = v9 - v10;
        *v2++ = *v6;
        *v4 = v9;
      }

      ++v4;
      v6 += 2;
    }

    while (v4 < v5);
    v11 = *(a2 + 9);
    v2 = *(a2 + 10);
  }

  else
  {
    v11 = *(a2 + 9);
  }

  v12 = v3 - v11;
  if (((v3 - v11) >> 1) >= 1)
  {
    v13 = 0;
    v14 = *(a2 + 2);
    v15 = a2[1];
    v16 = v12 >> 1;
    do
    {
      if (v15)
      {
        v17 = v2[v13];
        v18 = &v17[v15];
        v19 = *(v11 + 2 * v13);
        v20 = v14;
        do
        {
          v21 = *v17++;
          result = (*v20 + v21 * v19);
          *v20++ = result;
        }

        while (v17 < v18);
      }

      ++v13;
    }

    while (v13 != v16);
  }

  return result;
}

uint64_t NeuralNet::fastDpsSendingWithDotProduct(uint64_t result, unsigned __int16 *a2)
{
  v3 = *(a2 + 9);
  v2 = *(a2 + 10);
  if (*a2)
  {
    v4 = *(a2 + 3);
    v5 = &v4[*a2];
    v6 = *(a2 + 8);
    v7 = *(a2 + 1);
    v8 = *(result + 52);
    do
    {
      v10 = *v7++;
      v9 = v10;
      if (v10 <= v8)
      {
        if (v9 >= *(result + 56))
        {
          v11 = (*(result + 64) * v9);
        }

        else
        {
          v11 = -*(result + 48);
        }
      }

      else
      {
        v11 = *(result + 48);
      }

      v12 = *(*(result + 40) + 2 * v11);
      v13 = v12 - *v4;
      if (v13)
      {
        *v3++ = v13;
        *v2++ = *v6;
        *v4 = v12;
      }

      ++v4;
      v6 += 2;
    }

    while (v4 < v5);
    v14 = *(a2 + 9);
    v2 = *(a2 + 10);
  }

  else
  {
    v14 = *(a2 + 9);
  }

  v15 = v3 - v14;
  if (((v3 - v14) >> 1) >= 1)
  {
    v16 = 0;
    v17 = *(a2 + 2);
    v18 = a2[1];
    v19 = v15 >> 1;
    do
    {
      if (v18)
      {
        v20 = v2[v16];
        v21 = &v20[v18];
        v22 = *(v14 + 2 * v16);
        v23 = v17;
        do
        {
          v24 = *v20++;
          result = (*v23 + v24 * v22);
          *v23++ = result;
        }

        while (v20 < v21);
      }

      ++v16;
    }

    while (v16 != v19);
  }

  return result;
}

uint64_t NeuralNet::fastFeedbackSendingWithDotProduct(uint64_t a1, unsigned __int16 *a2)
{
  v3 = *(a2 + 9);
  v2 = *(a2 + 10);
  if (*a2)
  {
    v4 = *(a2 + 3);
    v5 = *(a2 + 4);
    v6 = &v4[*a2];
    v7 = *(a2 + 8);
    do
    {
      v9 = *v5++;
      v8 = v9;
      v10 = v9 - *v4;
      if (v10)
      {
        *v3++ = v10;
        *v2++ = *v7;
        *v4 = v8;
      }

      ++v4;
      v7 += 2;
    }

    while (v4 < v6);
    v11 = *(a2 + 9);
    v2 = *(a2 + 10);
  }

  else
  {
    v11 = *(a2 + 9);
  }

  v12 = v3 - v11;
  if (((v3 - v11) >> 1) >= 1)
  {
    v13 = 0;
    v14 = *(a2 + 2);
    v15 = a2[1];
    v16 = v12 >> 1;
    do
    {
      if (v15)
      {
        v17 = v2[v13];
        v18 = &v17[v15];
        v19 = *(v11 + 2 * v13);
        v20 = v14;
        do
        {
          v21 = *v17++;
          result = (*v20 + v21 * v19);
          *v20++ = result;
        }

        while (v17 < v18);
      }

      ++v13;
    }

    while (v13 != v16);
  }

  return result;
}

uint64_t NeuralNet::fastReluSendingWithDotProduct(uint64_t result, unsigned __int16 *a2)
{
  v3 = *(a2 + 9);
  v2 = *(a2 + 10);
  if (*a2)
  {
    v4 = *(a2 + 3);
    v5 = &v4[*a2];
    v6 = *(a2 + 8);
    v7 = *(a2 + 1);
    do
    {
      v8 = *v7++;
      v9 = v8 / *(*(result + 80) + 232);
      if ((v9 & 0x8000) != 0)
      {
        LOWORD(v9) = 0;
      }

      v10 = *v4;
      if (v10 != v9)
      {
        *v3++ = v9 - v10;
        *v2++ = *v6;
        *v4 = v9;
      }

      ++v4;
      v6 += 2;
    }

    while (v4 < v5);
    v11 = *(a2 + 9);
    v2 = *(a2 + 10);
  }

  else
  {
    v11 = *(a2 + 9);
  }

  v12 = v3 - v11;
  if (((v3 - v11) >> 1) >= 1)
  {
    v13 = 0;
    v14 = *(a2 + 2);
    v15 = a2[1];
    v16 = v12 >> 1;
    do
    {
      if (v15)
      {
        v17 = v2[v13];
        v18 = &v17[v15];
        v19 = *(v11 + 2 * v13);
        v20 = v14;
        do
        {
          v21 = *v17++;
          result = (*v20 + v21 * v19);
          *v20++ = result;
        }

        while (v17 < v18);
      }

      ++v13;
    }

    while (v13 != v16);
  }

  return result;
}

uint64_t NeuralNet::fastOutputLinear(uint64_t result, unsigned __int16 *a2, double a3)
{
  if (*a2)
  {
    v4 = *(a2 + 6);
    v3 = *(a2 + 7);
    v5 = &v3[*a2];
    v6 = *(a2 + 3);
    v7 = *(a2 + 1);
    v8 = *(result + 80);
    LODWORD(a3) = *(v8 + 240);
    v9 = *&a3;
    do
    {
      v10 = *v7++;
      v11 = *(v8 + 244) * v10;
      *v4++ = v11;
      v12 = v11;
      *v3++ = v12;
      *v6++ = (v12 * v9);
    }

    while (v3 < v5);
  }

  return result;
}

void NeuralNet::fastOutputDps(uint64_t a1, unsigned __int16 *a2)
{
  if (*a2)
  {
    v4 = *(a2 + 6);
    v3 = *(a2 + 7);
    v5 = &v3[*a2];
    v6 = *(a2 + 3);
    v7 = *(a2 + 1);
    v8 = *(a1 + 80);
    do
    {
      v9 = *v7++;
      v10 = *(v8 + 244) * v9;
      *v4 = v10;
      if (v10 >= -60.0)
      {
        if (v10 <= 60.0)
        {
          v12 = -v10;
          goto LABEL_9;
        }

        v11 = 0xC04E000000000000;
      }

      else
      {
        v11 = 0x404E000000000000;
      }

      v12 = *&v11;
LABEL_9:
      v13 = 1.0 / (DgnExp(v12) + 1.0);
      *v3++ = v13;
      v8 = *(a1 + 80);
      LODWORD(v14) = *(v8 + 240);
      *v6++ = (v13 * v14);
      ++v4;
    }

    while (v3 < v5);
  }
}

void NeuralNet::fastOutputDpsm(uint64_t a1, unsigned __int16 *a2)
{
  if (!*a2)
  {
    return;
  }

  v5 = *(a2 + 6);
  v4 = *(a2 + 7);
  v6 = &v4[*a2];
  v7 = *(a2 + 1);
  v8 = 0.0;
  do
  {
    v9 = *v7++;
    v10 = *(*(a1 + 80) + 244) * v9;
    *v5 = v10;
    if (v10 > 60.0)
    {
      v11 = 0x404E000000000000;
LABEL_7:
      v12 = *&v11;
      goto LABEL_9;
    }

    if (v10 < -60.0)
    {
      v11 = 0xC04E000000000000;
      goto LABEL_7;
    }

    v12 = v10;
LABEL_9:
    v13 = DgnExp(v12);
    *v4++ = v13;
    v8 = v8 + v13;
    ++v5;
  }

  while (v4 < v6);
  if (*a2)
  {
    v14 = *(a2 + 7);
    v15 = &v14[*a2];
    v16 = *(a2 + 3);
    LODWORD(v13) = *(*(a1 + 80) + 240);
    v17 = *&v13;
    do
    {
      v18 = *v14 / v8;
      *v14++ = v18;
      *v16++ = (v18 * v17);
    }

    while (v14 < v15);
  }
}

double NeuralNet::fastOutputRelu(uint64_t a1, unsigned __int16 *a2, double result)
{
  if (*a2)
  {
    v4 = *(a2 + 6);
    v3 = *(a2 + 7);
    v5 = &v3[*a2];
    v6 = *(a2 + 3);
    v7 = *(a2 + 1);
    v8 = *(a1 + 80);
    LODWORD(result) = *(v8 + 240);
    result = *&result;
    do
    {
      v9 = *v7++;
      v10 = *(v8 + 244) * v9;
      *v4++ = v10;
      if (v10 <= 0.0)
      {
        v10 = 0.0;
      }

      v11 = v10;
      *v3++ = v11;
      *v6++ = (v11 * result);
    }

    while (v3 < v5);
  }

  return result;
}

void NeuralNetImage::~NeuralNetImage(NeuralNetImage *this)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 360);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 344);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 328);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 312);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 296);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 280);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 264);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 248);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 176);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 160);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 144);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 128);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 112);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 96);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 80);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 64);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 32);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 16);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this);
}

void NeuralNetState::~NeuralNetState(NeuralNetState *this)
{
  NeuralNetState::freeExecutionSpace(this);
  DgnIArray<Utterance *>::~DgnIArray(this + 136);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 120);
  DgnIArray<Utterance *>::~DgnIArray(this + 104);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 88);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 72);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 56);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 40);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 24);
}

uint64_t HashKEV<unsigned int,unsigned int,Uns32Scope>::HashKEV(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_287523AA0;
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
  return a1;
}

void sub_262778DD4(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void HashKEV<unsigned int,unsigned int,Uns32Scope>::~HashKEV(uint64_t a1)
{
  HashKEV<unsigned int,unsigned int,Uns32Scope>::~HashKEV(a1);

  JUMPOUT(0x26672B1B0);
}

uint64_t HashKEV<unsigned int,unsigned int,Uns32Scope>::~HashKEV(uint64_t a1)
{
  *a1 = &unk_287523AA0;
  if (*(a1 + 8))
  {
    HashKEV<unsigned int,unsigned int,CWIDScope>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  return MrecInitModule_sdpres_sdapi();
}

uint64_t DgnArray<DgnPrimArray<short>>::copyArraySlice(uint64_t result, void *a2, unsigned int a3, unsigned int a4)
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
    result = DgnPrimArray<unsigned short>::copyArraySlice(v15, v14, 0, *(v14 + 8));
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

uint64_t SDApi_Initialize(unsigned int a1, unsigned int a2, unsigned int *a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned int a10, ApiState *a11, void (*a12)(const char *, unint64_t), void *a13, void (*a14)(const char *, unint64_t), void *a15, void (*a16)(const char *, unint64_t), const char *a17, unsigned int a18)
{
  v18 = 2;
  if (a3 && a4 <= 1 && a11 && a13 && a15)
  {
    if (ApiState::smpApiState)
    {
      return 3;
    }

    else
    {
      gbShowCalls = a7 != 0;
      gbShowCallsWithFileSpecArgs = a8 != 0;
      gbShowCallPointerArguments = a9 != 0;
      gbShowCallMemDeltas = a10 != 0;
      ApiState::startupHandlers(a11, a12, a13, a14, a15, a16);
      MrecBeginningOfTime();
      if (a17 && *a17)
      {
        logSetLinePrefix(a17);
      }

      logSetShowLineTimeStamps(a18 != 0);
      ApiState::startupApiState("APPLE-FAKE-SDAPI-", v25);
      DgnString::DgnString(&v64);
      DgnString::preAllocate(v26, 4095);
      GetFullMrecDescription(&v64);
      AppendFullMrecMachineInfo(&v64);
      DgnString::printfAppend(&v64, "SDAPI v%u.%u\n", v27, v28, v29, 24, 407);
      DgnString::operator+=(&v64, "Current time: ");
      MrecTime::appendLocalTimeToString(&v64, v30);
      DgnString::operator+=(&v64, "\n");
      if (v65)
      {
        v31 = v64;
      }

      else
      {
        v31 = &byte_262899963;
      }

      xlprintString(v31);
      checkVersionAndSizes(a1, a2, a3, v32, v33, v34, v35, v36);
      SdapiInsurance::SdapiInsurance(v63, "SDApi_Initialize", 0, 0, 1);
      if (v63[97] == 1)
      {
        if (gbShowCalls == 1)
        {
          v43 = a1;
          v44 = "SD_TRUE";
          if (a4)
          {
            v45 = "SD_TRUE";
          }

          else
          {
            v45 = "SD_FALSE";
          }

          if (a5)
          {
            v46 = "SD_TRUE";
          }

          else
          {
            v46 = "SD_FALSE";
          }

          if (a6)
          {
            v47 = "SD_TRUE";
          }

          else
          {
            v47 = "SD_FALSE";
          }

          if (a7)
          {
            v48 = "SD_TRUE";
          }

          else
          {
            v48 = "SD_FALSE";
          }

          if (a8)
          {
            v49 = "SD_TRUE";
          }

          else
          {
            v49 = "SD_FALSE";
          }

          if (a9)
          {
            v50 = "SD_TRUE";
          }

          else
          {
            v50 = "SD_FALSE";
          }

          v51 = a17;
          if (a10)
          {
            v52 = "SD_TRUE";
          }

          else
          {
            v52 = "SD_FALSE";
          }

          if (gbShowCallPointerArguments)
          {
            v53 = a3;
          }

          else
          {
            v53 = 0;
          }

          if (gbShowCallPointerArguments)
          {
            v54 = a11;
          }

          else
          {
            v54 = 0;
          }

          v55 = a12;
          v56 = a14;
          if (gbShowCallPointerArguments)
          {
            v57 = a13;
          }

          else
          {
            v55 = 0;
            v57 = 0;
          }

          if (gbShowCallPointerArguments)
          {
            v58 = a15;
          }

          else
          {
            v56 = 0;
            v58 = 0;
          }

          v59 = a16;
          if (!gbShowCallPointerArguments)
          {
            v59 = 0;
            v51 = 0;
          }

          if (!a18)
          {
            v44 = "SD_FALSE";
          }

          xlprintf("Entering sdapi call %.500s(%llu, %llu, Masked:0x%016llx, %.500s, %.500s, %.500s, %.500s, %.500s, %.500s, %.500s, Masked:0x%016llx, Masked:0x%016llx, Masked:0x%016llx, Masked:0x%016llx, Masked:0x%016llx, Masked:0x%016llx, Masked:0x%016llx, %.500s)\n", v52, v54, v55, v57, "SDApi_Initialize", v43, a2, v53, v45, v46, v47, v48, v49, v50, v52, v54, v55, v57, v56, v58, v59, v51, v44);
        }

        if (a5 >= 2)
        {
          throwBadSdapiArgument("SDBool", a5, v37, v38, v39, v40, v41, v42);
        }

        if (a6 >= 2)
        {
          throwBadSdapiArgument("SDBool", a6, v37, v38, v39, v40, v41, v42);
        }

        if (a7 >= 2)
        {
          throwBadSdapiArgument("SDBool", a7, v37, v38, v39, v40, v41, v42);
        }

        if (a8 >= 2)
        {
          throwBadSdapiArgument("SDBool", a8, v37, v38, v39, v40, v41, v42);
        }

        if (a9 >= 2)
        {
          throwBadSdapiArgument("SDBool", a9, v37, v38, v39, v40, v41, v42);
        }

        if (a10 >= 2)
        {
          throwBadSdapiArgument("SDBool", a10, v37, v38, v39, v40, v41, v42);
        }

        if (a18 >= 2)
        {
          throwBadSdapiArgument("SDBool", a18, v37, v38, v39, v40, v41, v42);
        }

        v18 = 1;
      }

      else
      {
        v18 = 4;
      }

      SdapiInsurance::~SdapiInsurance(v63);
      DgnString::~DgnString(&v64);
    }
  }

  return v18;
}

void checkVersionAndSizes(int a1, int a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 != 24 || a2 != 407)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdmisc.cpp", 54, "sdapi/sdmisc", 1, "%u %u %u %u", a7, a8, a1);
  }

  if (*a3 != 16)
  {
    v17 = *a3;
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdmisc.cpp", 58, "sdapi/sdmisc", 2, "%.500s %llu %.500s %llu", a7, a8, "SDInitCheckRecord");
  }

  if (a3[1] == 175)
  {
    v9 = 175;
  }

  else
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdmisc.cpp", 66, "sdapi/sdmisc", 3, "%d %d", a7, a8, a3[1]);
    v9 = a3[1];
    if (!v9)
    {
      return;
    }
  }

  v10 = 0;
  for (i = 0; i < v9; ++i)
  {
    v12 = *(a3 + 1) + v10 * 8;
    v13 = *v12;
    if (strcmp(*v12, (&checkVersionAndSizes(unsigned int,unsigned int,SDInitTypeSize const*)::types)[v10]) || *(v12 + 8) != LODWORD((&checkVersionAndSizes(unsigned int,unsigned int,SDInitTypeSize const*)::types)[v10 + 1]))
    {
      v19 = LODWORD((&checkVersionAndSizes(unsigned int,unsigned int,SDInitTypeSize const*)::types)[v10 + 1]);
      v18 = *(v12 + 8);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdmisc.cpp", 75, "sdapi/sdmisc", 2, "%.500s %llu %.500s %llu", v14, v15, v13);
      v9 = a3[1];
    }

    v10 += 2;
  }
}

void SDApi_CheckVersion(unsigned int a1, unsigned int a2, unsigned int *a3)
{
  SdapiInsurance::SdapiInsurance(v14, "SDApi_CheckVersion", 1, 1, 4);
  if (v14[97] == 1)
  {
    if (gbShowCalls == 1)
    {
      if (gbShowCallPointerArguments)
      {
        v13 = a3;
      }

      else
      {
        v13 = 0;
      }

      xlprintf("Entering sdapi call %.500s(%llu, %llu, Masked:0x%016llx)\n", v6, v7, v8, v9, "SDApi_CheckVersion", a1, a2, v13);
    }

    checkVersionAndSizes(a1, a2, a3, v8, v9, v10, v11, v12);
  }

  SdapiInsurance::~SdapiInsurance(v14);
}

uint64_t SDApi_HasErrored()
{
  v0 = 1;
  SdapiInsurance::SdapiInsurance(v6, "SDApi_HasErrored", 1, 1, 5);
  if (v6[97] == 1)
  {
    if (gbShowCalls == 1)
    {
      xlprintf("Entering sdapi call %s()\n", v1, v2, v3, v4, "SDApi_HasErrored");
    }

    v0 = *(ApiState::smpApiState + 1);
  }

  SdapiInsurance::~SdapiInsurance(v6);
  return v0;
}

void MrecInitModule_sputtdet_sigproc(void)
{
  if (!gParDebugUttDet)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugUttDet", &unk_26288CE98, &unk_26288CE98, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugUttDet = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugUttDet);
  }
}

void MrecInitModule_filespec_mrecutil(void)
{
  if (!gParDiagnosticFileSpecBaseDirectoryMask)
  {
    v1 = MemChunkAlloc(0x48uLL, 0);
    StringGlobalParamBase::StringGlobalParamBase(v1, "DiagnosticFileSpecBaseDirectoryMask", &byte_262899963, &byte_262899963, &byte_262899963, 0, 0);
    *v2 = &unk_287526E40;
    gParDiagnosticFileSpecBaseDirectoryMask = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDiagnosticFileSpecBaseDirectoryMask);
  }
}

void FileSpec::FileSpec(FileSpec *this, char *a2)
{
  DgnString::DgnString(this);
  DgnString::preAllocate(v4, 96);
  DgnString::operator=(this, a2);
}

void FileSpec::FileSpec(FileSpec *this, const FileSpec *a2)
{
  DgnString::DgnString(this);
  DgnString::preAllocate(v4, 96);
  DgnString::operator=(this, a2);
}

DgnString *FileSpec::operator=(DgnString *a1, DgnString *a2)
{
  DgnString::preAllocate(a1, 96);

  return DgnString::operator=(a1, a2);
}

void *FileSpec::setEmpty(FileSpec *this)
{
  result = *this;
  if (result)
  {
    result = MemChunkFree(result, 0);
    *this = 0;
  }

  *(this + 1) = 0;
  return result;
}

DgnString *FileSpec::fillFromName(FileSpec *this, char *a2)
{
  DgnString::preAllocate(this, 96);

  return DgnString::operator=(this, a2);
}

DgnString *FileSpec::fillFromPathAndName(FileSpec *this, const char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6)
  {
    v7 = __s[v6 - 1];
    v9 = v7 != 47 && v7 != 0;
  }

  else
  {
    v9 = 0;
  }

  v10 = v6 + v9 + strlen(a3);
  if ((v10 + 1) > 0x60)
  {
    v11 = (v10 + 1);
  }

  else
  {
    v11 = 96;
  }

  v12 = MemChunkAlloc(v11, 0);
  strcpy(v12, __s);
  if (v9)
  {
    *(v12 + strlen(v12)) = 47;
  }

  strcat(v12, a3);
  DgnString::preAllocate(this, 96);
  result = DgnString::operator=(this, v12);
  if (v12)
  {

    return MemChunkFree(v12, 0);
  }

  return result;
}

DgnString *FileSpec::fillFromDefPathAndName(FileSpec *this, char *__s, char *a3)
{
  v6 = strchr(__s, 58);
  if (a3)
  {
    if (*a3 == 47 || (*a3 || !v6) && (!*a3 || !__s || !*__s))
    {
      goto LABEL_8;
    }
  }

  else if (!v6)
  {
LABEL_8:
    DgnString::preAllocate(this, 96);

    return DgnString::operator=(this, a3);
  }

  v8 = strlen(__s);
  v9 = v8 + strlen(a3) + 2;
  if (v9 <= 0x60)
  {
    v10 = 96;
  }

  else
  {
    v10 = v9;
  }

  v11 = MemChunkAlloc(v10, 0);
  v12 = strcpy(v11, __s);
  v13 = strlen(v12);
  if (*(v11 + (v13 - 1)) && *(v11 + (v13 - 1)) != 47)
  {
    *(v11 + strlen(v11)) = 47;
  }

  strcat(v11, a3);
  DgnString::preAllocate(this, 96);
  DgnString::operator=(this, v11);

  return MemChunkFree(v11, 0);
}

BOOL FileSpec::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    v2 = *a1;
  }

  else
  {
    v2 = &byte_262899963;
  }

  if (*(a2 + 8))
  {
    v3 = *a2;
  }

  else
  {
    v3 = &byte_262899963;
  }

  return strcmp(v2, v3) == 0;
}

DgnString *FileSpec::getRelativeSourceFileName(FileSpec *this, DgnString *a2, DgnString *a3)
{
  DgnString::preAllocate(a2, 96);

  return DgnString::operator=(a2, this + 68);
}

DgnString *FileSpec::getDiagnosticMaskedName(FileSpec *this, DgnString *a2, DgnString *a3)
{
  DgnString::preAllocate(a2, 96);
  if (*(gParDiagnosticFileSpecBaseDirectoryMask + 64) && (v5 = *(gParDiagnosticFileSpecBaseDirectoryMask + 56), *v5) && (v6 = strlen(v5), !strncmp(this, v5, v6)))
  {
    DgnString::operator=(a2, "<BASE>/");
    if (*(gParDiagnosticFileSpecBaseDirectoryMask + 64))
    {
      v8 = *(gParDiagnosticFileSpecBaseDirectoryMask + 56);
    }

    else
    {
      v8 = &byte_262899963;
    }

    v9 = this + strlen(v8);

    return DgnString::operator+=(a2, v9);
  }

  else
  {

    return DgnString::operator=(a2, this);
  }
}

DgnString *FileSpec::getDiagnosticMaskedName(FileSpec **this, DgnString *a2, DgnString *a3)
{
  if (*(this + 2))
  {
    v3 = *this;
  }

  else
  {
    v3 = &byte_262899963;
  }

  return FileSpec::getDiagnosticMaskedName(v3, a2, a3);
}

_DWORD *FileSpec::fillInComponents(FileSpec *this, DgnString *a2, DgnString *a3, DgnString *a4, DgnString *a5, DgnString *a6)
{
  v12 = DgnString::reverseFind(this, 46);
  v13 = DgnString::reverseFind(this, 92);
  if (v13 <= DgnString::reverseFind(this, 47))
  {
    v14 = 47;
  }

  else
  {
    v14 = 92;
  }

  v15 = DgnString::reverseFind(this, v14);
  result = DgnString::reverseFind(this, 58);
  if (v15 <= result)
  {
    v17 = result;
  }

  else
  {
    v17 = v15;
  }

  v18 = v17 + 1;
  v19 = *(this + 2);
  v20 = v19 != 0;
  v21 = v19 - 1;
  if (v20)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v17 < 0)
  {
    if (a2)
    {
      *(a2 + 2) = 0;
    }

    if (a6)
    {
      result = DgnString::operator=(a6, "./");
    }
  }

  else
  {
    if (a2)
    {
      DgnString::preAllocate(a2, 96);
      if (*(this + 2))
      {
        v23 = *this;
      }

      else
      {
        v23 = &byte_262899963;
      }

      result = DgnString::set(a2, v23, v18);
    }

    if (a6)
    {
      DgnString::preAllocate(a6, 96);
      if (*(this + 2))
      {
        v24 = *this;
      }

      else
      {
        v24 = &byte_262899963;
      }

      result = DgnString::set(a6, v24, v18);
    }
  }

  v25 = v12 - v18;
  if (v12 <= v18)
  {
    v25 = v22 - v18;
    if (a5)
    {
      *(a5 + 2) = 0;
      v25 = v22 - v18;
    }

LABEL_31:
    if (a4)
    {
      goto LABEL_41;
    }

LABEL_32:
    if (!a3)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a5)
  {
    goto LABEL_31;
  }

  if (*(this + 2))
  {
    v26 = *this;
  }

  else
  {
    v26 = &byte_262899963;
  }

  result = DgnString::set(a5, &v26[v12 + 1], v22 + ~v12);
  if (!a4)
  {
    goto LABEL_32;
  }

LABEL_41:
  if (*(this + 2))
  {
    v28 = *this;
  }

  else
  {
    v28 = &byte_262899963;
  }

  result = DgnString::set(a4, &v28[v18], v25);
  if (a3)
  {
LABEL_33:
    if (*(this + 2))
    {
      v27 = *this;
    }

    else
    {
      v27 = &byte_262899963;
    }

    return DgnString::set(a3, &v27[v18], v22 - v18);
  }

  return result;
}