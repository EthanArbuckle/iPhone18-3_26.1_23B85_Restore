uint64_t FstSearchDuration::makePartialResult(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  BestTrace = FstSearchDurationHashBackoff::getBestTrace(a1, 0, 0, 1);
  if (BestTrace == -1)
  {
    return 1879048192;
  }

  v15 = BestTrace;
  FstSearchDurationHashBackoff::getHistory(a1, BestTrace, a3, a4, v11, v12, v13, v14);
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

  v22 = *(a1 + 160) + 28 * v15;
  return (*(v22 + 12) + *(*(a1 + 88) + 4 * *(v22 + 4)));
}

int64x2_t FstSearchLeafBackoff::advanceDeltas(FstSearchLeafBackoff *this, int a2, int a3, SearchStats *a4, int a5)
{
  v6 = a2;
  v117[0] = a2;
  v115 = 0u;
  v116 = 0u;
  SnapTime::recordTime(&v115, 1, 0, 0, 0);
  v86 = (this + 280);
  *(this + 70) = a3;
  v8 = *(this + 2);
  v9 = *(this + 62);
  if (!v9)
  {
    v12 = 0;
    v11 = 0;
    goto LABEL_61;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 24;
  v87 = *(this + 2);
  do
  {
    v14 = *(this + 30);
    v15 = *(this + 5);
    v16 = v13 + 28 * v10;
    while (1)
    {
      v17 = *(v14 + v16 - 20);
      if (*(v15 + 160) != v17)
      {
        break;
      }

      ++v10;
      v16 += 28;
      if (v10 >= v9)
      {
        goto LABEL_61;
      }
    }

    v99 = *(v14 + v16 - 20);
    v83 = v6;
    v82 = v13;
    if (*(v15 + 140) > v17)
    {
      v18 = *(this + 19) + *(this + 70) >= 5000 ? 5000 : *(this + 19) + *(this + 70);
      ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(this + 4), *(v14 + v16 - 12), *(v14 + v16 - 24), v18);
      v20 = *(this + 70);
      if (ScoreAllowBackoff_updateNodeInSequence - v8 <= v20)
      {
        v21 = ScoreAllowBackoff_updateNodeInSequence;
        v92 = v12;
        if (v20 > ScoreAllowBackoff_updateNodeInSequence)
        {
          *v86 = ScoreAllowBackoff_updateNodeInSequence;
        }

        v22 = (*(this + 30) + v16);
        v23 = *(v22 - 10);
        v96 = *(v22 - 5);
        v98 = *(v22 - 6);
        v94 = *(v22 - 2);
        v24 = *v22;
        v25 = *(this + 50);
        v26 = v25;
        if (*v22)
        {
          v27 = *(v22 - 1);
          v28 = *(this + 24);
          v29 = v24;
          v26 = *(this + 50);
          do
          {
            v30 = *(v28 + 2 * v27);
            if (v26 == *(this + 51))
            {
              DgnPrimArray<short>::reallocElts(this + 192, 1, 1);
              v26 = *(this + 50);
              v28 = *(this + 24);
            }

            *(v28 + 2 * v26++) = v30;
            *(this + 50) = v26;
            ++v27;
            --v29;
          }

          while (v29);
        }

        if (v26 == *(this + 51))
        {
          DgnPrimArray<short>::reallocElts(this + 192, 1, 1);
          v26 = *(this + 50);
        }

        *(*(this + 24) + 2 * v26) = v98;
        *(this + 50) = v26 + 1;
        v31 = *(this + 66);
        v17 = v99;
        if (v31 == *(this + 67))
        {
          DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 256, 1, 1);
          LODWORD(v31) = *(this + 66);
        }

        v32 = *(this + 32) + 28 * v31;
        *v32 = v21;
        *(v32 + 4) = v23;
        *(v32 + 12) = v98;
        *(v32 + 14) = v96;
        *(v32 + 16) = v94;
        *(v32 + 20) = v25;
        *(v32 + 24) = v24 + 1;
        v33 = *(this + 66);
        *(this + 66) = v33 + 1;
        if (v92 == 2 * *(this + 4))
        {
          v11 = v33 + 1;
        }

        v12 = v92 + 1;
        v8 = v87;
      }
    }

    v34 = v17;
    do
    {
      v35 = *(this + 5);
      v36 = *(v35 + 152);
      v37 = *(v36 + 4 * v34);
      v38 = *(v36 + 4 * (v34 + 1));
      v39 = *(v35 + 140);
      if (v39 > v38)
      {
        if (*(this + 19) + *(this + 70) >= 5000)
        {
          v40 = 5000;
        }

        else
        {
          v40 = *(this + 19) + *(this + 70);
        }

        v41 = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(this + 4), *(v36 + 4 * v34), *(*(this + 30) + v16 - 24) + ((*(v36 + 4 * v34) >> 20) & 0x3FFu), v40);
        v42 = *(this + 70);
        if (v41 - v8 <= v42)
        {
          v43 = v41;
          v91 = v11;
          v93 = v12;
          if (v42 > v41)
          {
            *v86 = v41;
          }

          v44 = (*(this + 30) + v16);
          v89 = *(v44 - 4);
          v90 = *(v44 - 5);
          v88 = *(v44 - 2);
          v45 = *(this + 50);
          v97 = v45;
          v95 = *v44;
          if (*v44)
          {
            v46 = *(v44 - 1);
            v47 = *(this + 24);
            v48 = v95;
            v45 = *(this + 50);
            do
            {
              v49 = *(v47 + 2 * v46);
              if (v45 == *(this + 51))
              {
                DgnPrimArray<short>::reallocElts(this + 192, 1, 1);
                v45 = *(this + 50);
                v47 = *(this + 24);
              }

              *(v47 + 2 * v45++) = v49;
              *(this + 50) = v45;
              ++v46;
              --v48;
            }

            while (v48);
          }

          if (v45 == *(this + 51))
          {
            DgnPrimArray<short>::reallocElts(this + 192, 1, 1);
            v45 = *(this + 50);
          }

          *(*(this + 24) + 2 * v45) = v37;
          *(this + 50) = v45 + 1;
          v50 = *(this + 66);
          v11 = v91;
          v8 = v87;
          if (v50 == *(this + 67))
          {
            DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 256, 1, 1);
            LODWORD(v50) = *(this + 66);
          }

          v51 = *(this + 32) + 28 * v50;
          *v51 = v43;
          *(v51 + 4) = v38;
          *(v51 + 8) = v89;
          *(v51 + 12) = v37;
          *(v51 + 14) = v90;
          *(v51 + 16) = v88 + ((v37 >> 20) & 0x3FF);
          *(v51 + 20) = v97;
          *(v51 + 24) = v95 + 1;
          v52 = *(this + 66);
          *(this + 66) = v52 + 1;
          if (v93 == 2 * *(this + 4))
          {
            v11 = v52 + 1;
          }

          v12 = v93 + 1;
        }

LABEL_52:
        v17 = v99;
        goto LABEL_53;
      }

      if (v39 <= v17 && (*(this + 404) & 1) != 0)
      {
        if ((v37 & 0xFFFFF) <= 0xFFFF3)
        {
          v53 = v37 & 0xFFFFF;
        }

        else
        {
          v53 = v37 & 0xFFFFF | 0xF00000;
        }

        if (v53 == 16777210)
        {
          goto LABEL_52;
        }

        DgnString::DgnString(&v112);
        ArcGraph::getNameAndHumanReadablePron(*(this + 5), v53, &v112, v54, v55, v56, v57, v58);
        v17 = v99;
        v63 = &unk_26287F8B0;
        if (v112.i32[2])
        {
          v63 = v112.i64[0];
        }

        xprintf("Seed from state %d score %d trace %d, %s\n", v59, v60, v61, v62, v99, *(*(this + 30) + v16 - 24), *(*(this + 30) + v16 - 16), v63);
        MiniFst::seed(this + 288, *(*(this + 30) + v16 - 24), 0, *(*(this + 30) + v16 - 16), v38);
        DgnString::~DgnString(&v112);
      }

LABEL_53:
      v34 += 2;
    }

    while ((v37 & 0x80000000) == 0);
    v10 = (v10 + 1);
    v9 = *(this + 62);
    v6 = v83;
    v13 = v82;
  }

  while (v10 < v9);
LABEL_61:
  v114 = *(this + 70) + v8;
  if (*(this + 404) == 1)
  {
    MiniFst::updateFrame(this + 288, v86, v8, v6);
  }

  v112 = 0u;
  v113 = 0u;
  SnapTime::recordTime(&v112, 1, 0, 0, 0);
  v112 = vsubq_s64(v112, v115);
  v113 = vsubq_s64(v113, v116);
  v64 = *(this + 13);
  v65 = vaddq_s64(v64[1], v113);
  *v64 = vaddq_s64(*v64, v112);
  v64[1] = v65;
  v110 = 0u;
  v111 = 0u;
  SnapTime::recordTime(&v110, 1, 0, 0, 0);
  if (v12 > 2 * *(this + 4))
  {
    FstSearchLeafBackoff::applyCutoffOnEmitting(this, v11, &v114);
  }

  v108 = 0u;
  v109 = 0u;
  SnapTime::recordTime(&v108, 1, 0, 0, 0);
  v66 = vsubq_s64(v108, v110);
  v67 = *(this + 13);
  v68 = v67[3];
  v69 = vaddq_s64(v67[2], v66);
  v108 = v66;
  v109 = vsubq_s64(v109, v111);
  v70 = vaddq_s64(v68, v109);
  v67[2] = v69;
  v67[3] = v70;
  v106 = 0u;
  v107 = 0u;
  SnapTime::recordTime(&v106, 1, 0, 0, 0);
  FstSearchLeafBackoff::makeViterbiDecisionOnEmitting(this);
  v71 = *(this + 6);
  if (v71)
  {
    v72 = *(this + 62);
    if (v71 < v72)
    {
      mrec_nth_element<FstSearchLatticeHashBackoffcmpTok>(*(this + 30), v71, v72);
    }
  }

  v104 = 0u;
  v105 = 0u;
  SnapTime::recordTime(&v104, 1, 0, 0, 0);
  v73 = vsubq_s64(v104, v106);
  v74 = *(this + 13);
  v75 = v74[5];
  v76 = vaddq_s64(v74[4], v73);
  v104 = v73;
  v105 = vsubq_s64(v105, v107);
  v77 = vaddq_s64(v75, v105);
  v74[4] = v76;
  v74[5] = v77;
  v102 = 0u;
  v103 = 0u;
  SnapTime::recordTime(&v102, 1, 0, 0, 0);
  *(this + 66) = 0;
  v78 = *(this + 62);
  *(this + 38) = v78;
  if (a4)
  {
    *(a4 + 2) += v78;
    if (*(a4 + 2) > v78)
    {
      LODWORD(v78) = *(a4 + 2);
    }

    *(a4 + 2) = v78;
  }

  if (*(this + 404) == 1)
  {
    FstSearchLeafBackoff::seedFromMiniFst(this, v117);
  }

  if (a5)
  {
    FstSearchLeafBackoff::propagateNulls(this, v114, v6, a4);
  }

  *(this + 68) = v6;
  v100 = 0u;
  v101 = 0u;
  SnapTime::recordTime(&v100, 1, 0, 0, 0);
  v79 = *(this + 13);
  result = vaddq_s64(v79[6], vsubq_s64(v100, v102));
  v81 = vaddq_s64(v79[7], vsubq_s64(v101, v103));
  v79[6] = result;
  v79[7] = v81;
  return result;
}

uint64_t FstSearchLeafBackoff::applyCutoffOnEmitting(uint64_t this, unsigned int a2, int *a3)
{
  v4 = *(this + 264);
  if (v4 > a2)
  {
    v6 = this;
    v7 = a2;
    this = mrec_nth_element<FstSearchLatticeHashBackoffcmpTok>(*(this + 256), a2, v4);
    v8 = *(*(v6 + 256) + 28 * a2);
    if (*a3 > v8)
    {
      *a3 = v8;
    }

    v9 = *(v6 + 268);
    if (a2 > v9)
    {
      this = DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(v6 + 256, a2 - v9, 0);
    }

    v10 = *(v6 + 264);
    if (v10 < a2)
    {
      v11 = v7 - v10;
      v12 = *(v6 + 256) + 28 * v10 + 12;
      do
      {
        *(v12 - 12) = 0xFFFFFFFF00000000;
        *(v12 - 4) = -1;
        *v12 = -2;
        *(v12 + 4) = 0;
        *(v12 + 8) = 0;
        *(v12 + 12) = 0;
        v12 += 28;
        --v11;
      }

      while (v11);
    }

    *(v6 + 264) = a2;
  }

  return this;
}

uint64_t FstSearchLeafBackoff::makeViterbiDecisionOnEmitting(uint64_t this)
{
  v1 = this;
  v2 = *(this + 264);
  if (v2)
  {
    this = mrec_qsort_r<FstSearchLateLatticeHashBackoffActiveToken>(*(this + 256), v2, 28);
    v3 = *(v1 + 264);
    *(v1 + 248) = 0;
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      for (i = 0; i < v3; ++i)
      {
        v7 = *(v1 + 256);
        if (!v4 || *(v7 + v4 + 4) != *(v7 + v4 - 24))
        {
          if (v5 == *(v1 + 252))
          {
            this = DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(v1 + 240, 1, 1);
            v5 = *(v1 + 248);
          }

          v8 = (*(v1 + 240) + 28 * v5);
          v9 = *(v7 + v4);
          *(v8 + 12) = *(v7 + v4 + 12);
          *v8 = v9;
          v5 = *(v1 + 248) + 1;
          *(v1 + 248) = v5;
          v3 = *(v1 + 264);
        }

        v4 += 28;
      }
    }
  }

  else
  {
    *(this + 248) = 0;
  }

  return this;
}

uint64_t FstSearchLeafBackoff::seedFromMiniFst(uint64_t this, int *a2)
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
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = (*(v2 + 304) + v5);
        v8 = *v7;
        v9 = v7[6];
        v10 = v7[7];
        LODWORD(v7) = v7[2];
        v20[0] = 0;
        v20[1] = 0;
        v11 = (-2 - v7);
        if (v10 == 16777213)
        {
          v12 = (*(v2 + 160) + 32 * v11);
          v10 = 16777209;
          if (*v12 == 16777209)
          {
            LODWORD(v11) = *(*(v2 + 176) + 20 * v12[2] + 8);
          }
        }

        v13 = *a2;
        v14 = *(v2 + 168);
        if (v14 == *(v2 + 172))
        {
          DgnArray<PrefilterResultFrame>::reallocElts(v2 + 160, 1, 1);
          v14 = *(v2 + 168);
        }

        v15 = *(v2 + 160) + 32 * v14;
        *v15 = v10;
        *(v15 + 4) = v13;
        *(v15 + 8) = -1;
        *(v15 + 12) = v8;
        *(v15 + 20) = 0;
        *(v15 + 24) = 0;
        *(v15 + 16) = v11;
        *(v15 + 28) = 0;
        v16 = *(v2 + 168);
        *(v2 + 168) = v16 + 1;
        v17 = *(v2 + 248);
        if (v17 == *(v2 + 252))
        {
          DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(v2 + 240, 1, 1);
          LODWORD(v17) = *(v2 + 248);
        }

        v18 = *(v2 + 240) + 28 * v17;
        *v18 = v8;
        *(v18 + 4) = v9;
        *(v18 + 8) = v16;
        *(v18 + 12) = -2;
        *(v18 + 16) = 0;
        *(v18 + 24) = 0;
        ++*(v2 + 248);
        this = DgnPrimArray<unsigned int>::~DgnPrimArray(v20);
        ++v6;
        v19 = *(v2 + 312);
        if (v19 >= *(v2 + 20))
        {
          v19 = *(v2 + 20);
        }

        v5 += 36;
      }

      while (v6 < v19);
    }
  }

  return this;
}

_DWORD *FstSearchLeafBackoff::propagateNulls(_DWORD *this, int a2, int a3, SearchStats *a4)
{
  v4 = this;
  v5 = this[42];
  v6 = this[62];
  if (!v6)
  {
    v38 = this[38];
    if (a4)
    {
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v49 = this[42];
  v50 = a4;
  v7 = 0;
  v59 = a2;
  do
  {
    v8 = *(*(v4 + 240) + 28 * v7 + 4);
    v9 = *(v4 + 40);
    if (*(v9 + 160) != v8 && (*(v9 + 140) <= v8 || (*(*(v9 + 152) + 4 * v8) & 0x40000000) != 0))
    {
      v10 = *(*(v4 + 240) + 28 * v7 + 4);
      v58 = v7;
      v57 = v10;
      do
      {
        v11 = *(v4 + 40);
        v12 = *(v11 + 152);
        v13 = *(v12 + 4 * v10);
        v14 = *(v12 + 4 * (v10 + 1));
        v15 = *(v11 + 140);
        if (v15 > v14)
        {
          goto LABEL_32;
        }

        v16 = (v13 & 0xFFFFF) <= 0xFFFF3 ? v13 & 0xFFFFF : v13 & 0xFFFFF | 0xF00000;
        if (v15 <= v8 && v16 != 16777210)
        {
          goto LABEL_32;
        }

        v18 = (v13 >> 20) & 0x3FF;
        v19 = *(v4 + 240);
        v20 = v19 + 28 * v7;
        v21 = *v20 + v18;
        if (v21 > a2)
        {
          goto LABEL_32;
        }

        v22 = *(v20 + 8);
        v23 = *(v20 + 12);
        v24 = *(v20 + 14);
        v25 = *(v20 + 16);
        v26 = *(v20 + 20);
        v27 = *(v20 + 24);
        v28 = v25 + v18;
        if (v16 == 16777210)
        {
          if (v6 != *(v4 + 252))
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v16 == 16777214)
          {
            v21 = *v20 - v25;
            v29 = 0;
          }

          else
          {
            v29 = v28;
          }

          if (v16 == 16777214)
          {
            v30 = v28;
          }

          else
          {
            v30 = 0;
          }

          v31 = *(v4 + 168);
          if (v31 == *(v4 + 172))
          {
            v54 = v28;
            v55 = v24;
            v60 = v23;
            v52 = v30;
            v53 = v22;
            v51 = v29;
            DgnArray<PrefilterResultFrame>::reallocElts(v4 + 160, 1, 1);
            v29 = v51;
            v30 = v52;
            v22 = v53;
            v28 = v54;
            v24 = v55;
            a2 = v59;
            v23 = v60;
            v31 = *(v4 + 168);
          }

          this = 0;
          v32 = *(v4 + 160) + 32 * v31;
          *v32 = v16;
          *(v32 + 4) = a3;
          *(v32 + 8) = -1;
          *(v32 + 12) = v21;
          *(v32 + 16) = v22;
          *(v32 + 20) = v29;
          *(v32 + 24) = v26;
          *(v32 + 28) = v27;
          v22 = *(v4 + 168);
          *(v4 + 168) = v22 + 1;
          v21 += v30;
          v6 = *(v4 + 248);
          v27 = 0;
          if (v6 != *(v4 + 252))
          {
            goto LABEL_30;
          }
        }

        v61 = v26;
        v33 = v24;
        v34 = v23;
        v35 = v28;
        v36 = v22;
        DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(v4 + 240, 1, 1);
        v22 = v36;
        v28 = v35;
        v24 = v33;
        a2 = v59;
        v26 = v61;
        v8 = v57;
        v7 = v58;
        v23 = v34;
        v6 = *(v4 + 248);
        this = v27;
LABEL_30:
        v19 = *(v4 + 240);
        LOWORD(v27) = this;
LABEL_31:
        v37 = v19 + 28 * v6;
        *v37 = v21;
        *(v37 + 4) = v14;
        *(v37 + 8) = v22;
        *(v37 + 12) = v23;
        *(v37 + 14) = v24;
        *(v37 + 16) = v28;
        *(v37 + 20) = v26;
        *(v37 + 24) = v27;
        v6 = *(v4 + 248) + 1;
        *(v4 + 248) = v6;
LABEL_32:
        v10 += 2;
      }

      while ((v13 & 0x80000000) == 0);
    }

    ++v7;
  }

  while (v7 < v6);
  v38 = *(v4 + 152);
  if (v6 > v38)
  {
    this = mrec_qsort_r<FstSearchLateLatticeHashBackoffActiveToken>((*(v4 + 240) + 28 * v38), v6 - v38, 28);
    v38 = *(v4 + 152);
    v6 = *(v4 + 248);
  }

  a4 = v50;
  v5 = v49;
  if (v38 < v6)
  {
    v39 = v38;
    v40 = v38 - 1;
    v41 = 28 * v38;
    do
    {
      v42 = *(v4 + 240);
      v43 = (v42 + v41);
      if (*(v42 + v41 + 4) != *(v42 + 28 * v40 + 4))
      {
        v44 = (v42 + 28 * v38);
        v45 = *v43;
        *(v44 + 10) = *(v43 + 10);
        *v44 = v45;
        ++v38;
        v6 = *(v4 + 248);
      }

      ++v39;
      ++v40;
      v41 += 28;
    }

    while (v39 < v6);
  }

  if (v50)
  {
LABEL_42:
    *(a4 + 1) += *(v4 + 168) - v5;
  }

LABEL_43:
  v46 = *(v4 + 252);
  if (v38 > v46)
  {
    this = DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(v4 + 240, v38 - v46, 0);
    v6 = *(v4 + 248);
  }

  if (v6 < v38)
  {
    v47 = v38 - v6;
    v48 = *(v4 + 240) + 28 * v6 + 12;
    do
    {
      *(v48 - 12) = 0xFFFFFFFF00000000;
      *(v48 - 4) = -1;
      *v48 = -2;
      *(v48 + 4) = 0;
      *(v48 + 8) = 0;
      *(v48 + 12) = 0;
      v48 += 28;
      --v47;
    }

    while (v47);
  }

  *(v4 + 248) = v38;
  return this;
}

uint64_t FstSearchLeafBackoff::collectTraces(FstSearchLeafBackoff *this)
{
  v2 = *(this + 42);
  v52 = 0;
  v51 = 0;
  if (v2)
  {
    v3 = MemChunkAlloc(4 * v2, 0);
    v4 = 0;
    v51 = v3;
    v52 = v2;
    do
    {
      *(v3 + v4++) = 0;
    }

    while (v4 < v52);
  }

  v5 = *(this + 62);
  if (v5)
  {
    v6 = 0;
    v7 = v51;
    v8 = (*(this + 30) + 8);
    do
    {
      v10 = *v8;
      v8 += 7;
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
  if (v11)
  {
    v12 = v51;
    v13 = 32 * v11 - 16;
    v14 = v51 + v11 - 1;
    do
    {
      if (*v14--)
      {
        v16 = *(*(this + 20) + v13);
        if (v16 != -1)
        {
          *(v12 + v16) = 1;
        }
      }

      v13 -= 32;
    }

    while (v13 != -16);
    v17 = *(this + 42);
    v49 = 0;
    v50 = 0;
    if (v17)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      do
      {
        v21 = v51;
        if (*(v51 + v19))
        {
          v22 = *(this + 20);
          if (v19 != v20)
          {
            v23 = (v22 + 32 * v19);
            v24 = (v22 + 32 * v20);
            v25 = *v23;
            *(v24 + 14) = *(v23 + 14);
            *v24 = v25;
            v22 = *(this + 20);
          }

          v26 = v22 + 32 * v20;
          v29 = *(v26 + 16);
          v27 = (v26 + 16);
          v28 = v29;
          if (v29 != -1)
          {
            *v27 = *(v21 + v28);
          }

          v30 = v50;
          if (*(v22 + 32 * v20 + 28))
          {
            v31 = 0;
            v32 = v50;
            do
            {
              v33 = *(*(this + 24) + 2 * (v31 + *(v22 + 32 * v20 + 24)));
              if (v32 == HIDWORD(v50))
              {
                DgnPrimArray<short>::reallocElts(&v49, 1, 1);
                v32 = v50;
                v18 = v49;
                v22 = *(this + 20);
              }

              *(v18 + 2 * v32++) = v33;
              LODWORD(v50) = v32;
              ++v31;
            }

            while (v31 < *(v22 + 32 * v20 + 28));
          }

          *(v22 + 32 * v20 + 24) = v30;
          *(v51 + v19) = v20++;
          v17 = *(this + 42);
        }

        ++v19;
      }

      while (v19 < v17);
      v34 = *(this + 43);
      if (v20 > v34)
      {
        DgnArray<PrefilterResultFrame>::reallocElts(this + 160, v20 - v34, 0);
        v17 = *(this + 42);
      }

      if (v17 < v20)
      {
        v35 = v20 - v17;
        v36 = (*(this + 20) + 32 * v17 + 28);
        do
        {
          *(v36 - 14) = xmmword_26287F860;
          *(v36 - 6) = 0xFFFFFFFFLL;
          *(v36 - 1) = 0;
          *v36 = 0;
          v36 += 16;
          --v35;
        }

        while (v35);
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
    v49 = 0;
    v50 = 0;
  }

  *(this + 42) = v20;
  v37 = *(this + 62);
  if (v37)
  {
    v38 = 0;
    v39 = v50;
    v40 = *(this + 30);
    do
    {
      if (*(v40 + 28 * v38 + 24))
      {
        v41 = 0;
        LODWORD(v42) = v39;
        do
        {
          v43 = *(*(this + 24) + 2 * (v41 + *(v40 + 28 * v38 + 20)));
          if (v42 == HIDWORD(v50))
          {
            DgnPrimArray<short>::reallocElts(&v49, 1, 1);
            LODWORD(v42) = v50;
            v40 = *(this + 30);
          }

          *(v49 + 2 * v42) = v43;
          v42 = (v42 + 1);
          LODWORD(v50) = v42;
          ++v41;
        }

        while (v41 < *(v40 + 28 * v38 + 24));
        v37 = *(this + 62);
      }

      else
      {
        v42 = v39;
      }

      *(v40 + 28 * v38++ + 20) = v39;
      v39 = v42;
    }

    while (v38 < v37);
  }

  else
  {
    LODWORD(v42) = v50;
  }

  DgnPrimArray<unsigned short>::copyArraySlice(this + 192, &v49, 0, v42);
  v44 = *(this + 62);
  if (v44)
  {
    v45 = v51;
    v46 = (*(this + 30) + 8);
    do
    {
      v47 = *v46;
      if (v47 != -1)
      {
        *v46 = *(v45 + v47);
      }

      v46 += 7;
      --v44;
    }

    while (v44);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v49);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v51);
}

void sub_26265FA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a9);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a11);
  _Unwind_Resume(a1);
}

int64x2_t FstSearchLeafBackoff::vite(int64x2_t **this, int a2, int a3, SearchStats *a4, int a5)
{
  FstSearchLeafBackoff::advanceDeltas(this, a2, a3, a4, a5);
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
        FstSearchLeafBackoff::collectTraces(this);
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

_DWORD *FstSearchLeafBackoff::reset(_DWORD *this)
{
  this[42] = 0;
  this[46] = 0;
  this[50] = 0;
  this[62] = 0;
  return this;
}

double FstSearchLeafBackoff::doFrame(int64x2_t **this, int a2, int a3, SearchStats *a4, int a5)
{
  if (a3 >= 20000)
  {
    a3 = 20000;
  }

  *&result = FstSearchLeafBackoff::vite(this, a2, a3, a4, a5).u64[0];
  return result;
}

uint64_t FstSearchLeafBackoff::beginTopRecPassSyncRecog(FstSearchLeafBackoff *this, PelScorer *a2, const ArcGraph *a3)
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

uint64_t FstSearchLeafBackoff::endTopRecPassSyncRecog(int64x2_t **this)
{
  v10 = 0u;
  v11 = 0u;
  SnapTime::recordTime(&v10, 1, 0, 0, 0);
  FstSearchLeafBackoff::generateTraceTokensFromTraces(this);
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
  *(this + 70) = 1879048192;
  return SearchItf::endTopRecPassSyncRecogBase(this);
}

void FstSearchLeafBackoff::printSize(FstSearchLeafBackoff *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
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
  v44 = 30 * v43;
  if (v43 <= 0)
  {
    v44 = 0;
  }

  v45 = v44 + v42;
  v46 = v44 + v42 + 30 * (*(this + 43) - v43);
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
  v54 = 18 * v53;
  if (v53 <= 0)
  {
    v54 = 0;
  }

  v55 = v54 + v52;
  v56 = v54 + v52 + 18 * (*(this + 47) - v53);
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
  v74 = 24 * v73;
  if (v73 <= 0)
  {
    v74 = 0;
  }

  v75 = v74 + v72;
  v76 = v74 + v72 + 24 * (*(this + 63) - v73);
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
  v84 = 24 * v83;
  if (v83 <= 0)
  {
    v84 = 0;
  }

  v85 = v84 + v82;
  v86 = v84 + v82 + 24 * (*(this + 67) - v83);
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

uint64_t FstSearchLeafBackoff::getBestTrace(uint64_t a1, void *a2, void *a3, int a4)
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

  v6 = 28 * v4;
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

    v11 = *(*(a1 + 160) + 32 * v10 + 12) + *(*(a1 + 88) + 4 * *(*(a1 + 160) + 32 * v10 + 4));
    v12 = v7 <= v11;
    if (v7 >= v11)
    {
      v7 = *(*(a1 + 160) + 32 * v10 + 12) + *(*(a1 + 88) + 4 * *(*(a1 + 160) + 32 * v10 + 4));
    }

    if (!v12)
    {
      v8 = v10;
    }

    v5 = *(a1 + 248);
LABEL_19:
    ++v4;
    v6 += 28;
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
      if ((a4 & 1) != 0 || *(*(a1 + 160) + 32 * v13) == 16777213)
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

BOOL FstSearchLeafBackoff::findBestPath(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
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
  BestTrace = FstSearchLeafBackoff::getBestTrace(a1, a2, a3, 0);
  *a4 = 1879048192;
  if (BestTrace == -1)
  {
    return 0;
  }

  v13 = *(a1 + 160) + 32 * BestTrace;
  LODWORD(v13) = *(v13 + 12) + *(*(a1 + 88) + 4 * *(v13 + 4));
  *a4 = v13;
  return v13 != 1879048192;
}

unint64_t FstSearchLeafBackoff::createLatticeNodes(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v9 = a2;
  v11 = *(a1 + 168);
  if (v11)
  {
    v12 = *(a2 + 2) == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    *a2 = MemChunkAlloc(4 * v11, 0);
    *(v9 + 2) = v11;
  }

  result = Lattice<WordLatticeLC>::createNode(a4);
  v14 = result;
  v15 = *(a3 + 8);
  if (v15 == *(a3 + 12))
  {
    result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
    v15 = *(a3 + 8);
  }

  *(*a3 + 4 * v15) = v14;
  ++*(a3 + 8);
  v16 = *(a1 + 168);
  v17 = a7;
  if (v16)
  {
    v18 = (v16 - 1);
    v19 = 32 * v18;
    v20 = 0xFFFFFFFFLL;
    do
    {
      v21 = *v9;
      *(*v9 + v18) = -1;
      v22 = *a6;
      if (*(*a6 + v18))
      {
        v23 = *(a1 + 160);
        v24 = *(*(a1 + 88) + 4 * *(v23 + v19 + 4));
        if (*(*v17 + v18) == 1)
        {
          if (*(*a6 + v18) != 1 || v20 == -1)
          {
            v26 = v20;
            result = Lattice<WordLatticeLC>::createNode(a4);
            v27 = result;
            v28 = *(a3 + 8);
            *(*v9 + v18) = v28;
            if (v28 == *(a3 + 12))
            {
              result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
              v28 = *(a3 + 8);
            }

            *(*a3 + 4 * v28) = v27;
            v29 = *(a3 + 8);
            *(a3 + 8) = v29 + 1;
            v22 = *a6;
            if (*(*a6 + v18) == 1)
            {
              v20 = v29;
            }

            else
            {
              v20 = v26;
            }

            v23 = *(a1 + 160);
            v17 = a7;
          }

          else
          {
            *(v21 + v18) = v20;
          }
        }

        v30 = *(a1 + 176);
        v31 = (v30 + 20 * *(v23 + v19 + 8));
        v32 = v31[2];
        if ((v32 & 0x80000000) != 0)
        {
          *v31 += v24;
        }

        else
        {
          if (*(v23 + v19) == 16777209)
          {
            v33 = *a5 + 16 * v32;
            v34 = *(v33 + 8);
            if (v34 == *(v33 + 12))
            {
              v43 = v24;
              v35 = v9;
              v36 = a6;
              v37 = a3;
              v38 = v20;
              result = DgnPrimArray<unsigned int>::reallocElts(v33, 1, 1);
              v20 = v38;
              a3 = v37;
              a6 = v36;
              v9 = v35;
              v24 = v43;
              v17 = a7;
              v34 = *(v33 + 8);
              v23 = *(a1 + 160);
              v30 = *(a1 + 176);
              v22 = *a6;
            }

            *(*v33 + 4 * v34) = v18;
            ++*(v33 + 8);
            v32 = v31[2];
          }

          else
          {
            *(*v17 + v32) = 1;
          }

          v39 = v23 + 32 * v32;
          v40 = *(*(a1 + 88) + 4 * *(v39 + 4));
          v41 = (v30 + 20 * *(v39 + 8));
          v42 = v24 + *v31 - v40 - *v41;
          LODWORD(v41) = v31[1] - v41[1];
          *v31 = v42;
          v31[1] = v41;
          *(v22 + v32) = 2;
        }
      }

      --v18;
      v19 -= 32;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t FstSearchLeafBackoff::buildWordLattice(unint64_t a1, unint64_t a2, void *a3, void *a4, unsigned __int8 a5)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v24 = 0;
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v23, *(a1 + 168));
  v8 = MemChunkAlloc(0x28uLL, 0);
  HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::HashProbeKEV(v8, 0, 128);
  v8[4] = a2;
  FstSearchLeafBackoff::createLatticeNodes(a1, &v26, &v24, a2, v23, a3, a4);
  v9 = *(a1 + 168);
  if (v9)
  {
    v10 = 0;
    v11 = v25;
    do
    {
      if (*(*a3 + v10))
      {
        v12 = (*(a1 + 160) + 32 * v10);
        if (*v12 != 16777209)
        {
          v13 = *(a1 + 176) + 20 * v12[2];
          v14 = *(v13 + 8);
          if (v14 == -1)
          {
            v15 = 0;
          }

          else
          {
            v15 = (v11 - *(v26 + v14));
          }

          v16 = *(v24 + 4 * v15);
          if (*(*a4 + v10) == 1)
          {
            FstSearchLeafBackoff::createLatticeLink(a1, v10, v13, 0xFFFFFFFFLL, v16, *(v24 + 4 * (v11 - *(v26 + v10))), a2, v8, a5);
          }

          v17 = v23[0] + 16 * v10;
          if (*(v17 + 8))
          {
            v18 = 0;
            do
            {
              v19 = *(*v17 + 4 * v18);
              FstSearchLeafBackoff::createLatticeLink(a1, v10, v13, v19, v16, *(v24 + 4 * (v11 - *(v26 + v19))), a2, v8, a5);
              ++v18;
              v17 = v23[0] + 16 * v10;
            }

            while (v18 < *(v17 + 8));
          }
        }
      }

      ++v10;
    }

    while (v10 != v9);
  }

  DgnDelete<HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>>(v8);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v23);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v24);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v26);
}

void sub_262660C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void FstSearchLeafBackoff::createLatticeLink(unint64_t a1, unsigned int a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v33 = a6;
  v11 = a5;
  v12 = a4;
  v16 = *(a1 + 160);
  if ((a4 & 0x80000000) != 0)
  {
    v17 = 0;
  }

  else if (*(*(a1 + 176) + 20 * *(v16 + 32 * a4 + 8) + 8) == a2)
  {
    v17 = (*(a1 + 176) + 20 * *(v16 + 32 * a4 + 8));
  }

  else
  {
    v17 = 0;
  }

  ArcGraph::lexToCWIDAC(*(a1 + 40), *(v16 + 32 * a2), a3, a4, a5, a6, a7, a8, v43);
  v18 = a3[1];
  if (v17)
  {
    v18 += v17[1];
    v19 = *v17 + *a3;
  }

  else
  {
    v19 = *a3;
  }

  if (v43[0] >> 25 == 126)
  {
    v20 = 0;
    v21 = v18;
  }

  else
  {
    v20 = *(a1 + 136);
    v21 = v18 - v20;
  }

  v22 = v19 - v18;
  if ((v12 & 0x80000000) != 0)
  {
    v23 = 0;
  }

  else
  {
    v23 = *(a1 + 140);
    v21 -= v23;
  }

  v37 = v21;
  v38 = 0;
  v39 = v20;
  v40 = v22;
  v41 = 0;
  v42 = v23;
  v24 = a3[2];
  v25 = *(a1 + 160);
  if (v24 == -1)
  {
    v27 = 0;
    if (a9)
    {
LABEL_19:
      v28 = (*(v25 + 32 * a2 + 4) - 1) / 2;
      v29 = v28 + 1;
      v30 = v28 + 1 - v27;
      if ((v12 & 0x80000000) == 0)
      {
        v31 = (*(v25 + 32 * v12 + 4) - 1) / 2;
LABEL_24:
        v32 = v31 - v28;
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v26 = *(v25 + 32 * v24 + 4);
    if (a9)
    {
      v27 = (v26 - 1) / 2 + 1;
      goto LABEL_19;
    }

    v27 = v26 + 1;
  }

  v28 = *(v25 + 32 * a2 + 4);
  v29 = v28 + 1;
  v30 = v28 + 1 - v27;
  if ((v12 & 0x80000000) == 0)
  {
    v31 = *(v25 + 32 * v12 + 4);
    goto LABEL_24;
  }

LABEL_25:
  v32 = 0;
LABEL_26:
  WordLatticeLC::WordLatticeLC(v35, v43, v27, v30, v32, &v37);
  v34[0] = 0;
  v34[1] = 0;
  FstSearchLeafBackoff::buildLinkSegmentation(a1, v34, a3, v27, a9);
  if (v17)
  {
    FstSearchLeafBackoff::buildLinkSegmentation(a1, v34, v17, v29, a9);
  }

  v36 = WordLattice::findOrAddLinkSegSeqId(a7, v34, a8);
  Lattice<WordLatticeLC>::maybeCreateAndConnectLinkAvoidMultiLinks(a7, v11, v33, v35);
  DgnIArray<Utterance *>::~DgnIArray(v34);
  WordLatticeLC::~WordLatticeLC(v35);
}

void sub_262660E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  DgnIArray<Utterance *>::~DgnIArray(va);
  WordLatticeLC::~WordLatticeLC(va1);
  _Unwind_Resume(a1);
}

unint64_t FstSearchLeafBackoff::buildLinkSegmentation(unint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (a5)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = *(a3 + 16);
  if (*(a3 + 16))
  {
    v10 = result;
    v11 = 0;
    v12 = 0;
    v13 = *(*(result + 56) + 136);
    v14 = -1;
    do
    {
      v15 = *(*(v10 + 192) + 2 * (v11 + *(a3 + 12)));
      if (v15 != v14)
      {
        if (v12)
        {
          result = FstSearchLeafLatticeBackoff::addLinkSegment(v10, a2, v14, a4, v12, v13);
          a4 += v12;
          v6 = *(a3 + 16);
          v14 = v15;
          v12 = 0;
        }

        else
        {
          v14 = *(*(v10 + 192) + 2 * (v11 + *(a3 + 12)));
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

uint64_t FstSearchLeafBackoff::beginTopRecSyncRecog(uint64_t this, VirtMap *a2)
{
  *(this + 112) = a2;
  if (*(this + 404) == 1)
  {
    return MiniFst::beginTopFstSyncRecog(this + 288);
  }

  return this;
}

uint64_t FstSearchLeafBackoff::endTopRecSyncRecog(FstSearchLeafBackoff *this)
{
  v1 = *(this + 14);
  *(this + 14) = 0;
  return v1;
}

uint64_t FstSearchLeafBackoff::getBestExitScore(FstSearchLeafBackoff *this)
{
  v17 = 0;
  v18 = 0;
  *(this + 69) = -1;
  v1 = *(this + 38);
  v2 = *(this + 62);
  if (v1 >= v2)
  {
    goto LABEL_16;
  }

  v4 = 0;
  v5 = 0;
  v6 = 28 * v1;
  do
  {
    v7 = *(this + 30) + v6;
    if (*(*(this + 5) + 160) == *(v7 + 4))
    {
      v8 = *(v7 + 8);
      if (v8 != -1 && *(*(this + 20) + 32 * v8 + 4) == *(this + 68))
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
        v2 = *(this + 62);
      }
    }

    ++v1;
    v6 += 28;
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
      v13 = v9 + 32 * v12;
      v14 = *(v13 + 12);
      if (v11 > v14)
      {
        *(this + 69) = *(v13 + 16);
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

uint64_t FstSearchLeafBackoff::getBestScoreMaybeUpdateFstNode(FstSearchLeafBackoff *this, Node *a2)
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

      v3 += 28;
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

_DWORD *FstSearchLeafBackoff::seedTheory(FstSearchLeafBackoff *this, int a2, int a3, int a4, SearchStats *a5)
{
  if (a4 == -2)
  {
    v9 = *(this + 42) - 1;
  }

  else
  {
    v11 = *(this + 42);
    if (v11 == *(this + 43))
    {
      DgnArray<PrefilterResultFrame>::reallocElts(this + 160, 1, 1);
      v11 = *(this + 42);
    }

    v12 = *(this + 20) + 32 * v11;
    *v12 = a4;
    *(v12 + 4) = a3;
    *(v12 + 8) = -1;
    *(v12 + 12) = a2;
    *(v12 + 16) = 0xFFFFFFFFLL;
    *(v12 + 24) = 0;
    *(v12 + 28) = 0;
    v9 = *(this + 42);
    *(this + 42) = v9 + 1;
  }

  v13 = *(*(this + 5) + 144);
  v14 = *(this + 62);
  if (v14 == *(this + 63))
  {
    DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 240, 1, 1);
    v14 = *(this + 62);
  }

  v15 = *(this + 30) + 28 * v14;
  *v15 = a2;
  *(v15 + 4) = v13;
  *(v15 + 8) = v9;
  *(v15 + 12) = -2;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  LODWORD(v15) = *(this + 62) + 1;
  *(this + 62) = v15;
  *(this + 38) = v15;

  return FstSearchLeafBackoff::propagateNulls(this, 20000, a3, a5);
}

uint64_t FstSearchLeafBackoff::expandEmbFstHistory(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 276);
  if (v8 != -1)
  {
    v10 = result;
    v11 = (*(result + 160) + 32 * v8);
    for (i = v11[4]; i != -1; v8 = v17)
    {
      v17 = i;
      result = *(v10 + 40);
      if (*v11 == 16777209)
      {
        v18 = (*(result + 174) << 25) | 0xFFFFF9;
      }

      else
      {
        result = ArcGraph::lexToCWID(result, *v11, a3, a4, a5, a6, a7, a8);
        v18 = result;
      }

      v19 = *(a2 + 8);
      if (v19 == *(a2 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
        v19 = *(a2 + 8);
      }

      *(*a2 + 4 * v19) = v18;
      ++*(a2 + 8);
      v20 = *(a6 + 8);
      if (v20 == *(a6 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a6, 1, 1);
        v20 = *(a6 + 8);
      }

      *(*a6 + 4 * v20) = v8;
      ++*(a6 + 8);
      v21 = *(v10 + 160);
      v22 = *(v21 + 32 * v8 + 4);
      v23 = *(a3 + 8);
      if (v23 == *(a3 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
        v23 = *(a3 + 8);
        v21 = *(v10 + 160);
      }

      *(*a3 + 4 * v23) = v22;
      ++*(a3 + 8);
      v24 = *(v21 + 32 * v8 + 12);
      v25 = *(a5 + 8);
      if (v25 == *(a5 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a5, 1, 1);
        v25 = *(a5 + 8);
      }

      *(*a5 + 4 * v25) = v24;
      ++*(a5 + 8);
      v11 = (*(v10 + 160) + 32 * v17);
      i = v11[4];
    }

    *a4 = *v11;
  }

  return result;
}

void FstSearchLeafBackoff::checkSearchParametersValidityForArcGraph(FstSearchLeafBackoff *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

void FstSearchLeafBackoff::getHistory(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
      v14 = (*(a1 + 160) + 32 * v13);
      if (*v14 == 16777209)
      {
        v11 = v11;
      }

      else
      {
        v11 = (v11 + 1);
      }

      v13 = v14[4];
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
        v21 = (v19 + 32 * v12);
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

        v12 = *(v19 + 32 * v12 + 16);
      }

      while (v12 != -1);
    }
  }
}

uint64_t FstSearchLeafBackoff::makePartialResult(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  BestTrace = FstSearchLeafBackoff::getBestTrace(a1, 0, 0, 1);
  if (BestTrace == -1)
  {
    return 1879048192;
  }

  v15 = BestTrace;
  FstSearchLeafBackoff::getHistory(a1, BestTrace, a3, a4, v11, v12, v13, v14);
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

  v22 = *(a1 + 160) + 32 * v15;
  return (*(v22 + 12) + *(*(a1 + 88) + 4 * *(v22 + 4)));
}

int64x2_t FstSearchLeaf::advanceDeltas(FstSearchLeaf *this, int a2, int a3, SearchStats *a4, int a5)
{
  v7 = a2;
  v117[0] = a2;
  v115 = 0u;
  v116 = 0u;
  SnapTime::recordTime(&v115, 1, 0, 0, 0);
  v86 = (this + 280);
  *(this + 70) = a3;
  v87 = *(this + 2);
  v9 = *(this + 62);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = *(this + 30);
      v14 = *(this + 5);
      v15 = 28 * v10 + 24;
      while (1)
      {
        v16 = *(v13 + v15 - 20);
        if (*(v14 + 160) != v16)
        {
          break;
        }

        ++v10;
        v15 += 28;
        if (v10 >= v9)
        {
          goto LABEL_58;
        }
      }

      v93 = v12;
      v92 = *(v13 + v15 - 20);
      v84 = v7;
      v83 = a4;
      if (*(v14 + 140) > v16)
      {
        v17 = v11;
        v18 = *(v13 + v15 - 24);
        v19 = PelScoreCache::getScoreNoBackoff(*(this + 4), *(v13 + v15 - 12)) + v18;
        v20 = *(this + 70);
        if (v19 - v87 <= v20)
        {
          LODWORD(v11) = v17;
          if (v20 > v19)
          {
            *v86 = v19;
          }

          v22 = (*(this + 30) + v15);
          v23 = *(v22 - 10);
          v96 = *(v22 - 5);
          v98 = *(v22 - 6);
          v94 = *(v22 - 2);
          v24 = *v22;
          v25 = *(this + 50);
          v26 = v25;
          if (*v22)
          {
            v27 = *(v22 - 1);
            v28 = *(this + 24);
            v29 = v24;
            v26 = *(this + 50);
            do
            {
              v30 = *(v28 + 2 * v27);
              if (v26 == *(this + 51))
              {
                DgnPrimArray<short>::reallocElts(this + 192, 1, 1);
                v26 = *(this + 50);
                v28 = *(this + 24);
              }

              *(v28 + 2 * v26++) = v30;
              *(this + 50) = v26;
              ++v27;
              --v29;
            }

            while (v29);
          }

          if (v26 == *(this + 51))
          {
            DgnPrimArray<short>::reallocElts(this + 192, 1, 1);
            v26 = *(this + 50);
          }

          *(*(this + 24) + 2 * v26) = v98;
          *(this + 50) = v26 + 1;
          v31 = *(this + 66);
          v21 = v87;
          v16 = v92;
          if (v31 == *(this + 67))
          {
            DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 256, 1, 1);
            LODWORD(v31) = *(this + 66);
          }

          v32 = *(this + 32) + 28 * v31;
          *v32 = v19;
          *(v32 + 4) = v23;
          *(v32 + 12) = v98;
          *(v32 + 14) = v96;
          *(v32 + 16) = v94;
          *(v32 + 20) = v25;
          *(v32 + 24) = v24 + 1;
          v33 = *(this + 66);
          *(this + 66) = v33 + 1;
          if (v93 == 2 * *(this + 4))
          {
            v11 = (v33 + 1);
          }

          else
          {
            v11 = v11;
          }

          ++v93;
          goto LABEL_26;
        }

        v11 = v17;
      }

      v21 = v87;
LABEL_26:
      v34 = v16;
      do
      {
        v35 = *(this + 5);
        v36 = *(v35 + 152);
        v37 = *(v36 + 4 * v34);
        v38 = *(v36 + 4 * (v34 + 1));
        v39 = *(v35 + 140);
        if (v39 <= v38)
        {
          if (v39 <= v16 && (*(this + 404) & 1) != 0)
          {
            if ((v37 & 0xFFFFF) <= 0xFFFF3)
            {
              v54 = v37 & 0xFFFFF;
            }

            else
            {
              v54 = v37 & 0xFFFFF | 0xF00000;
            }

            if (v54 == 16777210)
            {
              v16 = v92;
            }

            else
            {
              DgnString::DgnString(&v112);
              ArcGraph::getNameAndHumanReadablePron(*(this + 5), v54, &v112, v55, v56, v57, v58, v59);
              v16 = v92;
              v64 = &unk_26287F8B0;
              if (v112.i32[2])
              {
                v64 = v112.i64[0];
              }

              xprintf("Seed from state %d score %d trace %d, %s\n", v60, v61, v62, v63, v92, *(*(this + 30) + v15 - 24), *(*(this + 30) + v15 - 16), v64);
              MiniFst::seed(this + 288, *(*(this + 30) + v15 - 24), 0, *(*(this + 30) + v15 - 16), v38);
              DgnString::~DgnString(&v112);
            }
          }
        }

        else
        {
          ScoreNoBackoff = PelScoreCache::getScoreNoBackoff(*(this + 4), *(v36 + 4 * v34));
          v41 = *(this + 30);
          v99 = (v37 >> 20) & 0x3FF;
          v42 = ScoreNoBackoff + v99 + *(v41 + v15 - 24);
          v43 = *(this + 70);
          if (v42 - v21 <= v43)
          {
            v91 = v11;
            if (v43 > v42)
            {
              *v86 = v42;
            }

            v44 = v41 + v15;
            v89 = *(v41 + v15 - 16);
            v90 = *(v41 + v15 - 10);
            v88 = *(v41 + v15 - 8);
            v45 = *(v41 + v15);
            v46 = *(this + 50);
            v97 = v46;
            v95 = v45;
            if (v45)
            {
              v47 = *(v44 - 4);
              v48 = *(this + 24);
              v49 = v45;
              v46 = *(this + 50);
              do
              {
                v50 = *(v48 + 2 * v47);
                if (v46 == *(this + 51))
                {
                  DgnPrimArray<short>::reallocElts(this + 192, 1, 1);
                  v46 = *(this + 50);
                  v48 = *(this + 24);
                }

                *(v48 + 2 * v46++) = v50;
                *(this + 50) = v46;
                ++v47;
                --v49;
              }

              while (v49);
            }

            if (v46 == *(this + 51))
            {
              DgnPrimArray<short>::reallocElts(this + 192, 1, 1);
              v46 = *(this + 50);
            }

            *(*(this + 24) + 2 * v46) = v37;
            *(this + 50) = v46 + 1;
            v51 = *(this + 66);
            v21 = v87;
            v16 = v92;
            if (v51 == *(this + 67))
            {
              DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 256, 1, 1);
              LODWORD(v51) = *(this + 66);
            }

            v52 = *(this + 32) + 28 * v51;
            *v52 = v42;
            *(v52 + 4) = v38;
            *(v52 + 8) = v89;
            *(v52 + 12) = v37;
            *(v52 + 14) = v90;
            *(v52 + 16) = v88 + v99;
            *(v52 + 20) = v97;
            *(v52 + 24) = v95 + 1;
            v53 = *(this + 66);
            *(this + 66) = v53 + 1;
            if (v93 == 2 * *(this + 4))
            {
              v11 = (v53 + 1);
            }

            else
            {
              v11 = v91;
            }

            ++v93;
          }
        }

        v34 += 2;
      }

      while ((v37 & 0x80000000) == 0);
      v10 = (v10 + 1);
      v9 = *(this + 62);
      v7 = v84;
      a4 = v83;
      v12 = v93;
      if (v10 >= v9)
      {
        goto LABEL_58;
      }
    }
  }

  v12 = 0;
  LODWORD(v11) = 0;
LABEL_58:
  v114 = *(this + 70) + v87;
  if (*(this + 404) == 1)
  {
    MiniFst::updateFrame(this + 288, v86, v87, v7);
  }

  v112 = 0u;
  v113 = 0u;
  SnapTime::recordTime(&v112, 1, 0, 0, 0);
  v112 = vsubq_s64(v112, v115);
  v113 = vsubq_s64(v113, v116);
  v65 = *(this + 13);
  v66 = vaddq_s64(v65[1], v113);
  *v65 = vaddq_s64(*v65, v112);
  v65[1] = v66;
  v110 = 0u;
  v111 = 0u;
  SnapTime::recordTime(&v110, 1, 0, 0, 0);
  if (v12 > 2 * *(this + 4))
  {
    FstSearchLeafBackoff::applyCutoffOnEmitting(this, v11, &v114);
  }

  v108 = 0u;
  v109 = 0u;
  SnapTime::recordTime(&v108, 1, 0, 0, 0);
  v67 = vsubq_s64(v108, v110);
  v68 = *(this + 13);
  v69 = v68[3];
  v70 = vaddq_s64(v68[2], v67);
  v108 = v67;
  v109 = vsubq_s64(v109, v111);
  v71 = vaddq_s64(v69, v109);
  v68[2] = v70;
  v68[3] = v71;
  v106 = 0u;
  v107 = 0u;
  SnapTime::recordTime(&v106, 1, 0, 0, 0);
  FstSearchLeafBackoff::makeViterbiDecisionOnEmitting(this);
  v72 = *(this + 6);
  if (v72)
  {
    v73 = *(this + 62);
    if (v72 < v73)
    {
      mrec_nth_element<FstSearchLatticeHashBackoffcmpTok>(*(this + 30), v72, v73);
    }
  }

  v104 = 0u;
  v105 = 0u;
  SnapTime::recordTime(&v104, 1, 0, 0, 0);
  v74 = vsubq_s64(v104, v106);
  v75 = *(this + 13);
  v76 = v75[5];
  v77 = vaddq_s64(v75[4], v74);
  v104 = v74;
  v105 = vsubq_s64(v105, v107);
  v78 = vaddq_s64(v76, v105);
  v75[4] = v77;
  v75[5] = v78;
  v102 = 0u;
  v103 = 0u;
  SnapTime::recordTime(&v102, 1, 0, 0, 0);
  *(this + 66) = 0;
  v79 = *(this + 62);
  *(this + 38) = v79;
  if (a4)
  {
    *(a4 + 2) += v79;
    if (*(a4 + 2) > v79)
    {
      LODWORD(v79) = *(a4 + 2);
    }

    *(a4 + 2) = v79;
  }

  if (*(this + 404) == 1)
  {
    FstSearchLeaf::seedFromMiniFst(this, v117);
  }

  if (a5)
  {
    FstSearchLeafBackoff::propagateNulls(this, v114, v7, a4);
  }

  *(this + 68) = v7;
  v100 = 0u;
  v101 = 0u;
  SnapTime::recordTime(&v100, 1, 0, 0, 0);
  v80 = *(this + 13);
  result = vaddq_s64(v80[6], vsubq_s64(v100, v102));
  v82 = vaddq_s64(v80[7], vsubq_s64(v101, v103));
  v80[6] = result;
  v80[7] = v82;
  return result;
}

uint64_t FstSearchLeaf::seedFromMiniFst(uint64_t this, int *a2)
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
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = (*(v2 + 304) + v5);
        v8 = *v7;
        v9 = v7[6];
        v10 = v7[7];
        LODWORD(v7) = v7[2];
        v20[0] = 0;
        v20[1] = 0;
        v11 = (-2 - v7);
        if (v10 == 16777213)
        {
          v12 = (*(v2 + 160) + 32 * v11);
          v10 = 16777209;
          if (*v12 == 16777209)
          {
            LODWORD(v11) = *(*(v2 + 176) + 20 * v12[2] + 8);
          }
        }

        v13 = *a2;
        v14 = *(v2 + 168);
        if (v14 == *(v2 + 172))
        {
          DgnArray<PrefilterResultFrame>::reallocElts(v2 + 160, 1, 1);
          v14 = *(v2 + 168);
        }

        v15 = *(v2 + 160) + 32 * v14;
        *v15 = v10;
        *(v15 + 4) = v13;
        *(v15 + 8) = -1;
        *(v15 + 12) = v8;
        *(v15 + 20) = 0;
        *(v15 + 24) = 0;
        *(v15 + 16) = v11;
        *(v15 + 28) = 0;
        v16 = *(v2 + 168);
        *(v2 + 168) = v16 + 1;
        v17 = *(v2 + 248);
        if (v17 == *(v2 + 252))
        {
          DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(v2 + 240, 1, 1);
          LODWORD(v17) = *(v2 + 248);
        }

        v18 = *(v2 + 240) + 28 * v17;
        *v18 = v8;
        *(v18 + 4) = v9;
        *(v18 + 8) = v16;
        *(v18 + 12) = -2;
        *(v18 + 16) = 0;
        *(v18 + 24) = 0;
        ++*(v2 + 248);
        this = DgnPrimArray<unsigned int>::~DgnPrimArray(v20);
        ++v6;
        v19 = *(v2 + 312);
        if (v19 >= *(v2 + 20))
        {
          v19 = *(v2 + 20);
        }

        v5 += 36;
      }

      while (v6 < v19);
    }
  }

  return this;
}

uint64_t FstSearchLeaf::collectTraces(FstSearchLeaf *this)
{
  v2 = *(this + 42);
  v52 = 0;
  v51 = 0;
  if (v2)
  {
    v3 = MemChunkAlloc(4 * v2, 0);
    v4 = 0;
    v51 = v3;
    v52 = v2;
    do
    {
      *(v3 + v4++) = 0;
    }

    while (v4 < v52);
  }

  v5 = *(this + 62);
  if (v5)
  {
    v6 = 0;
    v7 = v51;
    v8 = (*(this + 30) + 8);
    do
    {
      v10 = *v8;
      v8 += 7;
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
  if (v11)
  {
    v12 = v51;
    v13 = 32 * v11 - 16;
    v14 = v51 + v11 - 1;
    do
    {
      if (*v14--)
      {
        v16 = *(*(this + 20) + v13);
        if (v16 != -1)
        {
          *(v12 + v16) = 1;
        }
      }

      v13 -= 32;
    }

    while (v13 != -16);
    v17 = *(this + 42);
    v49 = 0;
    v50 = 0;
    if (v17)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      do
      {
        v21 = v51;
        if (*(v51 + v19))
        {
          v22 = *(this + 20);
          if (v19 != v20)
          {
            v23 = (v22 + 32 * v19);
            v24 = (v22 + 32 * v20);
            v25 = *v23;
            *(v24 + 14) = *(v23 + 14);
            *v24 = v25;
            v22 = *(this + 20);
          }

          v26 = v22 + 32 * v20;
          v29 = *(v26 + 16);
          v27 = (v26 + 16);
          v28 = v29;
          if (v29 != -1)
          {
            *v27 = *(v21 + v28);
          }

          v30 = v50;
          if (*(v22 + 32 * v20 + 28))
          {
            v31 = 0;
            v32 = v50;
            do
            {
              v33 = *(*(this + 24) + 2 * (v31 + *(v22 + 32 * v20 + 24)));
              if (v32 == HIDWORD(v50))
              {
                DgnPrimArray<short>::reallocElts(&v49, 1, 1);
                v32 = v50;
                v18 = v49;
                v22 = *(this + 20);
              }

              *(v18 + 2 * v32++) = v33;
              LODWORD(v50) = v32;
              ++v31;
            }

            while (v31 < *(v22 + 32 * v20 + 28));
          }

          *(v22 + 32 * v20 + 24) = v30;
          *(v51 + v19) = v20++;
          v17 = *(this + 42);
        }

        ++v19;
      }

      while (v19 < v17);
      v34 = *(this + 43);
      if (v20 > v34)
      {
        DgnArray<PrefilterResultFrame>::reallocElts(this + 160, v20 - v34, 0);
        v17 = *(this + 42);
      }

      if (v17 < v20)
      {
        v35 = v20 - v17;
        v36 = (*(this + 20) + 32 * v17 + 28);
        do
        {
          *(v36 - 14) = xmmword_26287F860;
          *(v36 - 6) = 0xFFFFFFFFLL;
          *(v36 - 1) = 0;
          *v36 = 0;
          v36 += 16;
          --v35;
        }

        while (v35);
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
    v49 = 0;
    v50 = 0;
  }

  *(this + 42) = v20;
  v37 = *(this + 62);
  if (v37)
  {
    v38 = 0;
    v39 = v50;
    v40 = *(this + 30);
    do
    {
      if (*(v40 + 28 * v38 + 24))
      {
        v41 = 0;
        LODWORD(v42) = v39;
        do
        {
          v43 = *(*(this + 24) + 2 * (v41 + *(v40 + 28 * v38 + 20)));
          if (v42 == HIDWORD(v50))
          {
            DgnPrimArray<short>::reallocElts(&v49, 1, 1);
            LODWORD(v42) = v50;
            v40 = *(this + 30);
          }

          *(v49 + 2 * v42) = v43;
          v42 = (v42 + 1);
          LODWORD(v50) = v42;
          ++v41;
        }

        while (v41 < *(v40 + 28 * v38 + 24));
        v37 = *(this + 62);
      }

      else
      {
        v42 = v39;
      }

      *(v40 + 28 * v38++ + 20) = v39;
      v39 = v42;
    }

    while (v38 < v37);
  }

  else
  {
    LODWORD(v42) = v50;
  }

  DgnPrimArray<unsigned short>::copyArraySlice(this + 192, &v49, 0, v42);
  v44 = *(this + 62);
  if (v44)
  {
    v45 = v51;
    v46 = (*(this + 30) + 8);
    do
    {
      v47 = *v46;
      if (v47 != -1)
      {
        *v46 = *(v45 + v47);
      }

      v46 += 7;
      --v44;
    }

    while (v44);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v49);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v51);
}

void sub_2626626D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a9);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a11);
  _Unwind_Resume(a1);
}

int64x2_t FstSearchLeaf::vite(int64x2_t **this, int a2, int a3, SearchStats *a4, int a5)
{
  FstSearchLeaf::advanceDeltas(this, a2, a3, a4, a5);
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
        FstSearchLeaf::collectTraces(this);
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

_DWORD *FstSearchLeaf::reset(_DWORD *this)
{
  this[42] = 0;
  this[46] = 0;
  this[50] = 0;
  this[62] = 0;
  return this;
}

double FstSearchLeaf::doFrame(int64x2_t **this, int a2, int a3, SearchStats *a4, int a5)
{
  if (a3 >= 20000)
  {
    a3 = 20000;
  }

  *&result = FstSearchLeaf::vite(this, a2, a3, a4, a5).u64[0];
  return result;
}

uint64_t FstSearchLeaf::beginTopRecPassSyncRecog(FstSearchLeaf *this, PelScorer *a2, const ArcGraph *a3)
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

uint64_t FstSearchLeaf::endTopRecPassSyncRecog(int64x2_t **this)
{
  v10 = 0u;
  v11 = 0u;
  SnapTime::recordTime(&v10, 1, 0, 0, 0);
  FstSearchLeafBackoff::generateTraceTokensFromTraces(this);
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
  *(this + 70) = 1879048192;
  return SearchItf::endTopRecPassSyncRecogBase(this);
}

void FstSearchLeaf::printSize(FstSearchLeaf *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
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
  v44 = 30 * v43;
  if (v43 <= 0)
  {
    v44 = 0;
  }

  v45 = v44 + v42;
  v46 = v44 + v42 + 30 * (*(this + 43) - v43);
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
  v54 = 18 * v53;
  if (v53 <= 0)
  {
    v54 = 0;
  }

  v55 = v54 + v52;
  v56 = v54 + v52 + 18 * (*(this + 47) - v53);
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
  v74 = 24 * v73;
  if (v73 <= 0)
  {
    v74 = 0;
  }

  v75 = v74 + v72;
  v76 = v74 + v72 + 24 * (*(this + 63) - v73);
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
  v84 = 24 * v83;
  if (v83 <= 0)
  {
    v84 = 0;
  }

  v85 = v84 + v82;
  v86 = v84 + v82 + 24 * (*(this + 67) - v83);
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

BOOL FstSearchLeaf::findBestPath(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
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
  BestTrace = FstSearchLeafBackoff::getBestTrace(a1, a2, a3, 0);
  *a4 = 1879048192;
  if (BestTrace == -1)
  {
    return 0;
  }

  v13 = *(a1 + 160) + 32 * BestTrace;
  LODWORD(v13) = *(v13 + 12) + *(*(a1 + 88) + 4 * *(v13 + 4));
  *a4 = v13;
  return v13 != 1879048192;
}

uint64_t FstSearchLeaf::buildWordLattice(unint64_t a1, unint64_t a2, void *a3, void *a4, unsigned __int8 a5)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v24 = 0;
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v23, *(a1 + 168));
  v8 = MemChunkAlloc(0x28uLL, 0);
  HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::HashProbeKEV(v8, 0, 128);
  v8[4] = a2;
  FstSearchLeafBackoff::createLatticeNodes(a1, &v26, &v24, a2, v23, a3, a4);
  v9 = *(a1 + 168);
  if (v9)
  {
    v10 = 0;
    v11 = v25;
    do
    {
      if (*(*a3 + v10))
      {
        v12 = (*(a1 + 160) + 32 * v10);
        if (*v12 != 16777209)
        {
          v13 = *(a1 + 176) + 20 * v12[2];
          v14 = *(v13 + 8);
          if (v14 == -1)
          {
            v15 = 0;
          }

          else
          {
            v15 = (v11 - *(v26 + v14));
          }

          v16 = *(v24 + 4 * v15);
          if (*(*a4 + v10) == 1)
          {
            FstSearchLeaf::createLatticeLink(a1, v10, v13, 0xFFFFFFFFLL, v16, *(v24 + 4 * (v11 - *(v26 + v10))), a2, v8, a5);
          }

          v17 = v23[0] + 16 * v10;
          if (*(v17 + 8))
          {
            v18 = 0;
            do
            {
              v19 = *(*v17 + 4 * v18);
              FstSearchLeaf::createLatticeLink(a1, v10, v13, v19, v16, *(v24 + 4 * (v11 - *(v26 + v19))), a2, v8, a5);
              ++v18;
              v17 = v23[0] + 16 * v10;
            }

            while (v18 < *(v17 + 8));
          }
        }
      }

      ++v10;
    }

    while (v10 != v9);
  }

  DgnDelete<HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>>(v8);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v23);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v24);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v26);
}

void sub_26266342C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void FstSearchLeaf::createLatticeLink(unint64_t a1, unsigned int a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v33 = a6;
  v11 = a5;
  v12 = a4;
  v16 = *(a1 + 160);
  if ((a4 & 0x80000000) != 0)
  {
    v17 = 0;
  }

  else if (*(*(a1 + 176) + 20 * *(v16 + 32 * a4 + 8) + 8) == a2)
  {
    v17 = (*(a1 + 176) + 20 * *(v16 + 32 * a4 + 8));
  }

  else
  {
    v17 = 0;
  }

  ArcGraph::lexToCWIDAC(*(a1 + 40), *(v16 + 32 * a2), a3, a4, a5, a6, a7, a8, v43);
  v18 = a3[1];
  if (v17)
  {
    v18 += v17[1];
    v19 = *v17 + *a3;
  }

  else
  {
    v19 = *a3;
  }

  if (v43[0] >> 25 == 126)
  {
    v20 = 0;
    v21 = v18;
  }

  else
  {
    v20 = *(a1 + 136);
    v21 = v18 - v20;
  }

  v22 = v19 - v18;
  if ((v12 & 0x80000000) != 0)
  {
    v23 = 0;
  }

  else
  {
    v23 = *(a1 + 140);
    v21 -= v23;
  }

  v37 = v21;
  v38 = 0;
  v39 = v20;
  v40 = v22;
  v41 = 0;
  v42 = v23;
  v24 = a3[2];
  v25 = *(a1 + 160);
  if (v24 == -1)
  {
    v27 = 0;
    if (a9)
    {
LABEL_19:
      v28 = (*(v25 + 32 * a2 + 4) - 1) / 2;
      v29 = v28 + 1;
      v30 = v28 + 1 - v27;
      if ((v12 & 0x80000000) == 0)
      {
        v31 = (*(v25 + 32 * v12 + 4) - 1) / 2;
LABEL_24:
        v32 = v31 - v28;
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v26 = *(v25 + 32 * v24 + 4);
    if (a9)
    {
      v27 = (v26 - 1) / 2 + 1;
      goto LABEL_19;
    }

    v27 = v26 + 1;
  }

  v28 = *(v25 + 32 * a2 + 4);
  v29 = v28 + 1;
  v30 = v28 + 1 - v27;
  if ((v12 & 0x80000000) == 0)
  {
    v31 = *(v25 + 32 * v12 + 4);
    goto LABEL_24;
  }

LABEL_25:
  v32 = 0;
LABEL_26:
  WordLatticeLC::WordLatticeLC(v35, v43, v27, v30, v32, &v37);
  v34[0] = 0;
  v34[1] = 0;
  FstSearchLeafBackoff::buildLinkSegmentation(a1, v34, a3, v27, a9);
  if (v17)
  {
    FstSearchLeafBackoff::buildLinkSegmentation(a1, v34, v17, v29, a9);
  }

  v36 = WordLattice::findOrAddLinkSegSeqId(a7, v34, a8);
  Lattice<WordLatticeLC>::maybeCreateAndConnectLinkAvoidMultiLinks(a7, v11, v33, v35);
  DgnIArray<Utterance *>::~DgnIArray(v34);
  WordLatticeLC::~WordLatticeLC(v35);
}

void sub_2626636B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  DgnIArray<Utterance *>::~DgnIArray(va);
  WordLatticeLC::~WordLatticeLC(va1);
  _Unwind_Resume(a1);
}

uint64_t FstSearchLeaf::beginTopRecSyncRecog(uint64_t this, VirtMap *a2)
{
  *(this + 112) = a2;
  if (*(this + 404) == 1)
  {
    return MiniFst::beginTopFstSyncRecog(this + 288);
  }

  return this;
}

uint64_t FstSearchLeaf::endTopRecSyncRecog(FstSearchLeaf *this)
{
  v1 = *(this + 14);
  *(this + 14) = 0;
  return v1;
}

uint64_t FstSearchLeaf::getBestExitScore(FstSearchLeaf *this)
{
  v17 = 0;
  v18 = 0;
  *(this + 69) = -1;
  v1 = *(this + 38);
  v2 = *(this + 62);
  if (v1 >= v2)
  {
    goto LABEL_16;
  }

  v4 = 0;
  v5 = 0;
  v6 = 28 * v1;
  do
  {
    v7 = *(this + 30) + v6;
    if (*(*(this + 5) + 160) == *(v7 + 4))
    {
      v8 = *(v7 + 8);
      if (v8 != -1 && *(*(this + 20) + 32 * v8 + 4) == *(this + 68))
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
        v2 = *(this + 62);
      }
    }

    ++v1;
    v6 += 28;
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
      v13 = v9 + 32 * v12;
      v14 = *(v13 + 12);
      if (v11 > v14)
      {
        *(this + 69) = *(v13 + 16);
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

uint64_t FstSearchLeaf::getBestScoreMaybeUpdateFstNode(FstSearchLeaf *this, Node *a2)
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

      v3 += 28;
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

_DWORD *FstSearchLeaf::seedTheory(FstSearchLeaf *this, int a2, int a3, int a4, SearchStats *a5)
{
  if (a4 == -2)
  {
    v9 = *(this + 42) - 1;
  }

  else
  {
    v11 = *(this + 42);
    if (v11 == *(this + 43))
    {
      DgnArray<PrefilterResultFrame>::reallocElts(this + 160, 1, 1);
      v11 = *(this + 42);
    }

    v12 = *(this + 20) + 32 * v11;
    *v12 = a4;
    *(v12 + 4) = a3;
    *(v12 + 8) = -1;
    *(v12 + 12) = a2;
    *(v12 + 16) = 0xFFFFFFFFLL;
    *(v12 + 24) = 0;
    *(v12 + 28) = 0;
    v9 = *(this + 42);
    *(this + 42) = v9 + 1;
  }

  v13 = *(*(this + 5) + 144);
  v14 = *(this + 62);
  if (v14 == *(this + 63))
  {
    DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 240, 1, 1);
    v14 = *(this + 62);
  }

  v15 = *(this + 30) + 28 * v14;
  *v15 = a2;
  *(v15 + 4) = v13;
  *(v15 + 8) = v9;
  *(v15 + 12) = -2;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  LODWORD(v15) = *(this + 62) + 1;
  *(this + 62) = v15;
  *(this + 38) = v15;

  return FstSearchLeafBackoff::propagateNulls(this, 20000, a3, a5);
}

uint64_t FstSearchLeaf::expandEmbFstHistory(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 276);
  if (v8 != -1)
  {
    v10 = result;
    v11 = (*(result + 160) + 32 * v8);
    for (i = v11[4]; i != -1; v8 = v17)
    {
      v17 = i;
      result = *(v10 + 40);
      if (*v11 == 16777209)
      {
        v18 = (*(result + 174) << 25) | 0xFFFFF9;
      }

      else
      {
        result = ArcGraph::lexToCWID(result, *v11, a3, a4, a5, a6, a7, a8);
        v18 = result;
      }

      v19 = *(a2 + 8);
      if (v19 == *(a2 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
        v19 = *(a2 + 8);
      }

      *(*a2 + 4 * v19) = v18;
      ++*(a2 + 8);
      v20 = *(a6 + 8);
      if (v20 == *(a6 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a6, 1, 1);
        v20 = *(a6 + 8);
      }

      *(*a6 + 4 * v20) = v8;
      ++*(a6 + 8);
      v21 = *(v10 + 160);
      v22 = *(v21 + 32 * v8 + 4);
      v23 = *(a3 + 8);
      if (v23 == *(a3 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
        v23 = *(a3 + 8);
        v21 = *(v10 + 160);
      }

      *(*a3 + 4 * v23) = v22;
      ++*(a3 + 8);
      v24 = *(v21 + 32 * v8 + 12);
      v25 = *(a5 + 8);
      if (v25 == *(a5 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a5, 1, 1);
        v25 = *(a5 + 8);
      }

      *(*a5 + 4 * v25) = v24;
      ++*(a5 + 8);
      v11 = (*(v10 + 160) + 32 * v17);
      i = v11[4];
    }

    *a4 = *v11;
  }

  return result;
}

void FstSearchLeaf::checkSearchParametersValidityForArcGraph(FstSearchLeaf *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

uint64_t FstSearchLeaf::makePartialResult(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  BestTrace = FstSearchLeafBackoff::getBestTrace(a1, 0, 0, 1);
  if (BestTrace == -1)
  {
    return 1879048192;
  }

  v15 = BestTrace;
  FstSearchLeafBackoff::getHistory(a1, BestTrace, a3, a4, v11, v12, v13, v14);
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

  v22 = *(a1 + 160) + 32 * v15;
  return (*(v22 + 12) + *(*(a1 + 88) + 4 * *(v22 + 4)));
}

int64x2_t FstSearchBackoff::advanceDeltas(FstSearchBackoff *this, int a2, int a3, SearchStats *a4, int a5)
{
  v6 = a2;
  v103[0] = a2;
  v101 = 0u;
  v102 = 0u;
  SnapTime::recordTime(&v101, 1, 0, 0, 0);
  *(this + 58) = a3;
  v85 = *(this + 2);
  v80 = (this + 232);
  v8 = *(this + 50);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(this + 24);
      v13 = *(this + 5);
      v14 = 20 * v9 + 16;
      while (1)
      {
        v15 = *(v12 + v14 - 12);
        if (*(v13 + 160) != v15)
        {
          break;
        }

        ++v9;
        v14 += 20;
        if (v9 >= v8)
        {
          goto LABEL_48;
        }
      }

      v77 = v6;
      if (*(v13 + 140) > v15 && (*(this + 19) + *(this + 58) >= 5000 ? (v16 = 5000) : (v16 = *(this + 19) + *(this + 58)), ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(this + 4), *(v12 + v14 - 4), *(v12 + v14 - 16), v16), v18 = *(this + 58), ScoreAllowBackoff_updateNodeInSequence - v85 <= v18))
      {
        v19 = ScoreAllowBackoff_updateNodeInSequence;
        v20 = v11;
        v21 = v10;
        if (v18 > ScoreAllowBackoff_updateNodeInSequence)
        {
          *v80 = ScoreAllowBackoff_updateNodeInSequence;
        }

        v22 = (*(this + 24) + v14);
        v23 = *(v22 - 3);
        v24 = *(v22 - 2);
        v25 = *(v22 - 1);
        v26 = *v22;
        v27 = *(this + 54);
        if (v27 == *(this + 55))
        {
          DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(this + 208, 1, 1);
          LODWORD(v27) = *(this + 54);
        }

        v28 = *(this + 26) + 20 * v27;
        *v28 = v19;
        *(v28 + 4) = v23;
        *(v28 + 12) = v24;
        *(v28 + 14) = v25;
        *(v28 + 16) = v26;
        v29 = *(this + 54);
        *(this + 54) = v29 + 1;
        if (v20 == 2 * *(this + 4))
        {
          v10 = v29 + 1;
        }

        else
        {
          v10 = v21;
        }

        v84 = v20 + 1;
      }

      else
      {
        v84 = v11;
      }

      v30 = v15;
      do
      {
        v31 = *(this + 5);
        v32 = *(v31 + 152);
        v33 = *(v32 + 4 * v30);
        v34 = *(v32 + 4 * (v30 + 1));
        v35 = *(v31 + 140);
        if (v35 <= v34)
        {
          if (v35 <= v15 && (*(this + 356) & 1) != 0)
          {
            v48 = (v33 & 0xFFFFF) <= 0xFFFF3 ? v33 & 0xFFFFF : v33 & 0xFFFFF | 0xF00000;
            if (v48 != 16777210)
            {
              DgnString::DgnString(&v98);
              ArcGraph::getNameAndHumanReadablePron(*(this + 5), v48, &v98, v49, v50, v51, v52, v53);
              v58 = &unk_26287F8B0;
              if (v98.i32[2])
              {
                v58 = v98.i64[0];
              }

              xprintf("Seed from state %d score %d trace %d, %s\n", v54, v55, v56, v57, v15, *(*(this + 24) + v14 - 16), *(*(this + 24) + v14 - 8), v58);
              MiniFst::seed(this + 240, *(*(this + 24) + v14 - 16), 0, *(*(this + 24) + v14 - 8), v34);
              DgnString::~DgnString(&v98);
            }
          }
        }

        else
        {
          v36 = (v33 >> 20) & 0x3FF;
          if (*(this + 19) + *(this + 58) >= 5000)
          {
            v37 = 5000;
          }

          else
          {
            v37 = *(this + 19) + *(this + 58);
          }

          v38 = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(this + 4), *(v32 + 4 * v30), *(*(this + 24) + v14 - 16) + v36, v37);
          v39 = *(this + 58);
          if (v38 - v85 <= v39)
          {
            v40 = v38;
            v83 = v10;
            if (v39 > v38)
            {
              *v80 = v38;
            }

            v41 = (*(this + 24) + v14);
            v42 = *(v41 - 2);
            v43 = *(v41 - 1);
            v44 = *v41;
            v45 = *(this + 54);
            if (v45 == *(this + 55))
            {
              v81 = v42;
              v82 = v43;
              DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(this + 208, 1, 1);
              v42 = v81;
              v43 = v82;
              LODWORD(v45) = *(this + 54);
            }

            v46 = *(this + 26) + 20 * v45;
            *v46 = v40;
            *(v46 + 4) = v34;
            *(v46 + 8) = v42;
            *(v46 + 12) = v33;
            *(v46 + 14) = v43;
            *(v46 + 16) = v44 + v36;
            v47 = *(this + 54);
            *(this + 54) = v47 + 1;
            if (v84 == 2 * *(this + 4))
            {
              v10 = v47 + 1;
            }

            else
            {
              v10 = v83;
            }

            ++v84;
          }
        }

        v30 += 2;
      }

      while ((v33 & 0x80000000) == 0);
      v9 = (v9 + 1);
      v8 = *(this + 50);
      v6 = v77;
      v11 = v84;
    }

    while (v9 < v8);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

LABEL_48:
  v100 = *(this + 58) + v85;
  if (*(this + 356) == 1)
  {
    MiniFst::updateFrame(this + 240, v80, v85, v6);
  }

  v98 = 0u;
  v99 = 0u;
  SnapTime::recordTime(&v98, 1, 0, 0, 0);
  v98 = vsubq_s64(v98, v101);
  v99 = vsubq_s64(v99, v102);
  v59 = *(this + 13);
  v60 = vaddq_s64(v59[1], v99);
  *v59 = vaddq_s64(*v59, v98);
  v59[1] = v60;
  v96 = 0u;
  v97 = 0u;
  SnapTime::recordTime(&v96, 1, 0, 0, 0);
  if (v11 > 2 * *(this + 4))
  {
    FstSearchHashBackoff::applyCutoffOnEmitting(this, v10, &v100);
  }

  v94 = 0u;
  v95 = 0u;
  SnapTime::recordTime(&v94, 1, 0, 0, 0);
  v61 = vsubq_s64(v94, v96);
  v62 = *(this + 13);
  v63 = v62[3];
  v64 = vaddq_s64(v62[2], v61);
  v94 = v61;
  v95 = vsubq_s64(v95, v97);
  v65 = vaddq_s64(v63, v95);
  v62[2] = v64;
  v62[3] = v65;
  v92 = 0u;
  v93 = 0u;
  SnapTime::recordTime(&v92, 1, 0, 0, 0);
  FstSearchBackoff::makeViterbiDecisionOnEmitting(this);
  v66 = *(this + 6);
  if (v66)
  {
    v67 = *(this + 50);
    if (v66 < v67)
    {
      mrec_nth_element<FstSearchHashBackoffcmpTok>(*(this + 24), v66, v67);
    }
  }

  v90 = 0u;
  v91 = 0u;
  SnapTime::recordTime(&v90, 1, 0, 0, 0);
  v68 = vsubq_s64(v90, v92);
  v69 = *(this + 13);
  v70 = v69[5];
  v71 = vaddq_s64(v69[4], v68);
  v90 = v68;
  v91 = vsubq_s64(v91, v93);
  v72 = vaddq_s64(v70, v91);
  v69[4] = v71;
  v69[5] = v72;
  v88 = 0u;
  v89 = 0u;
  SnapTime::recordTime(&v88, 1, 0, 0, 0);
  *(this + 54) = 0;
  v73 = *(this + 50);
  *(this + 38) = v73;
  if (a4)
  {
    *(a4 + 2) += v73;
    if (*(a4 + 2) > v73)
    {
      LODWORD(v73) = *(a4 + 2);
    }

    *(a4 + 2) = v73;
  }

  if (*(this + 356) == 1)
  {
    FstSearchBackoff::seedFromMiniFst(this, v103);
  }

  if (a5)
  {
    FstSearchHashBackoff::propagateNulls(this, v100, v6, a4);
  }

  *(this + 56) = v6;
  v86 = 0u;
  v87 = 0u;
  SnapTime::recordTime(&v86, 1, 0, 0, 0);
  v74 = *(this + 13);
  result = vaddq_s64(v74[6], vsubq_s64(v86, v88));
  v76 = vaddq_s64(v74[7], vsubq_s64(v87, v89));
  v74[6] = result;
  v74[7] = v76;
  return result;
}

uint64_t FstSearchBackoff::makeViterbiDecisionOnEmitting(uint64_t this)
{
  v1 = this;
  v2 = *(this + 216);
  if (v2)
  {
    this = mrec_qsort_r<FstSearchLateLatticeHashBackoffActiveToken>(*(this + 208), v2, 20);
    v3 = *(v1 + 216);
    *(v1 + 200) = 0;
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      for (i = 0; i < v3; ++i)
      {
        v7 = *(v1 + 208);
        if (!v4 || *(v7 + v4 + 4) != *(v7 + v4 - 16))
        {
          if (v5 == *(v1 + 204))
          {
            this = DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(v1 + 192, 1, 1);
            v5 = *(v1 + 200);
          }

          v8 = *(v1 + 192) + 20 * v5;
          v9 = *(v7 + v4);
          *(v8 + 16) = *(v7 + v4 + 16);
          *v8 = v9;
          v5 = *(v1 + 200) + 1;
          *(v1 + 200) = v5;
          v3 = *(v1 + 216);
        }

        v4 += 20;
      }
    }
  }

  else
  {
    *(this + 200) = 0;
  }

  return this;
}

uint64_t FstSearchBackoff::seedFromMiniFst(uint64_t this, int *a2)
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
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = (*(v2 + 256) + v5);
        v8 = *v7;
        v10 = v7[6];
        v9 = v7[7];
        LODWORD(v7) = v7[2];
        v20[0] = 0;
        v20[1] = 0;
        v11 = -2 - v7;
        if (v9 == 16777213)
        {
          v12 = (*(v2 + 160) + 24 * v11);
          v9 = 16777209;
          if (*v12 == 16777209)
          {
            v11 = *(*(v2 + 176) + 12 * v12[2] + 8);
          }
        }

        v13 = *a2;
        v14 = *(v2 + 168);
        if (v14 == *(v2 + 172))
        {
          DgnArray<CWIDAC>::reallocElts(v2 + 160, 1, 1);
          LODWORD(v14) = *(v2 + 168);
        }

        v15 = (*(v2 + 160) + 24 * v14);
        *v15 = v9;
        v15[1] = v13;
        v15[2] = -1;
        v15[3] = v8;
        v15[4] = v11;
        v15[5] = 0;
        v16 = *(v2 + 168);
        *(v2 + 168) = v16 + 1;
        v17 = *(v2 + 200);
        if (v17 == *(v2 + 204))
        {
          DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(v2 + 192, 1, 1);
          LODWORD(v17) = *(v2 + 200);
        }

        v18 = *(v2 + 192) + 20 * v17;
        *v18 = v8;
        *(v18 + 4) = v10;
        *(v18 + 8) = v16;
        *(v18 + 12) = -2;
        *(v18 + 16) = 0;
        ++*(v2 + 200);
        this = DgnPrimArray<unsigned int>::~DgnPrimArray(v20);
        ++v6;
        v19 = *(v2 + 264);
        if (v19 >= *(v2 + 20))
        {
          v19 = *(v2 + 20);
        }

        v5 += 36;
      }

      while (v6 < v19);
    }
  }

  return this;
}

uint64_t FstSearchBackoff::collectTraces(FstSearchBackoff *this)
{
  v2 = *(this + 42);
  v42 = 0;
  v41 = 0;
  if (v2)
  {
    v3 = MemChunkAlloc(4 * v2, 0);
    v41 = v3;
    v42 = v2;
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

  v11 = *(this + 50);
  if (v11)
  {
    v12 = 0;
    v13 = (*(this + 24) + 8);
    do
    {
      v15 = *v13;
      v13 += 5;
      v14 = v15;
      if (v15 != -1)
      {
        *(v3 + v14) = 1;
        v11 = *(this + 50);
      }

      ++v12;
    }

    while (v12 < v11);
  }

  v16 = *(this + 42);
  if (!v16)
  {
    goto LABEL_38;
  }

  v17 = 24 * v16 - 8;
  v18 = v3 + v16 - 1;
  do
  {
    if (*v18--)
    {
      v20 = *(*(this + 20) + v17);
      if (v20 != -1)
      {
        *(v3 + v20) = 1;
      }
    }

    v17 -= 24;
  }

  while (v17 != -8);
  v21 = *(this + 42);
  if (v21)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    do
    {
      if (*(v3 + v23))
      {
        v25 = *(this + 20);
        if (v23 != v24)
        {
          v26 = (v25 + v22);
          v27 = v25 + 24 * v24;
          v28 = *v26;
          *(v27 + 16) = *(v26 + 2);
          *v27 = v28;
          v25 = *(this + 20);
        }

        v29 = v25 + 24 * v24;
        v32 = *(v29 + 16);
        v30 = (v29 + 16);
        v31 = v32;
        if (v32 != -1)
        {
          *v30 = *(v3 + v31);
        }

        *(v3 + v23) = v24++;
        v21 = *(this + 42);
      }

      ++v23;
      v22 += 24;
    }

    while (v23 < v21);
    v33 = *(this + 43);
    if (v24 > v33)
    {
      DgnArray<CWIDAC>::reallocElts(this + 160, v24 - v33, 0);
      v21 = *(this + 42);
    }

    if (v21 < v24)
    {
      v34 = v24 - v21;
      v35 = (*(this + 20) + 24 * v21 + 16);
      do
      {
        *(v35 - 1) = xmmword_26287F860;
        *v35 = 0xFFFFFFFFLL;
        v35 += 3;
        --v34;
      }

      while (v34);
    }
  }

  else
  {
LABEL_38:
    v24 = 0;
  }

  *(this + 42) = v24;
  v36 = *(this + 50);
  if (v36)
  {
    v37 = v41;
    v38 = (*(this + 24) + 8);
    do
    {
      v39 = *v38;
      if (v39 != -1)
      {
        *v38 = *(v37 + v39);
      }

      v38 += 5;
      --v36;
    }

    while (v36);
  }

  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v41);
}

int64x2_t FstSearchBackoff::vite(int64x2_t **this, int a2, int a3, SearchStats *a4, int a5)
{
  FstSearchBackoff::advanceDeltas(this, a2, a3, a4, a5);
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
        FstSearchBackoff::collectTraces(this);
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

_DWORD *FstSearchBackoff::reset(_DWORD *this)
{
  this[42] = 0;
  this[46] = 0;
  this[50] = 0;
  return this;
}

double FstSearchBackoff::doFrame(int64x2_t **this, int a2, int a3, SearchStats *a4, int a5)
{
  if (a3 >= 20000)
  {
    a3 = 20000;
  }

  *&result = FstSearchBackoff::vite(this, a2, a3, a4, a5).u64[0];
  return result;
}

uint64_t FstSearchBackoff::beginTopRecPassSyncRecog(FstSearchBackoff *this, PelScorer *a2, const ArcGraph *a3)
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

uint64_t FstSearchBackoff::endTopRecPassSyncRecog(int64x2_t **this)
{
  v10 = 0u;
  v11 = 0u;
  SnapTime::recordTime(&v10, 1, 0, 0, 0);
  FstSearchHashBackoff::generateTraceTokensFromTraces(this);
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

void FstSearchBackoff::printSize(FstSearchBackoff *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
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

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v48, v49, v50, v51, v21, &unk_26287F8B0, v22, v22, v52, v47, v46, 0);
  DgnString::~DgnString(&v117);
  *a4 += v47;
  *a5 += v46;
  v53 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v53 = 12;
  }

  v54 = *(this + 46);
  v55 = 12 * v54;
  if (v54 <= 0)
  {
    v55 = 0;
  }

  v56 = v55 + v53;
  v57 = v55 + v53 + 12 * (*(this + 47) - v54);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2959, &v117);
  if (v118)
  {
    v62 = v117;
  }

  else
  {
    v62 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v58, v59, v60, v61, v21, &unk_26287F8B0, v22, v22, v62, v57, v56, 0);
  DgnString::~DgnString(&v117);
  *a4 += v57;
  *a5 += v56;
  v63 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v63 = 12;
  }

  v64 = *(this + 50);
  v65 = 18 * v64;
  if (v64 <= 0)
  {
    v65 = 0;
  }

  v66 = v65 + v63;
  v67 = v65 + v63 + 18 * (*(this + 51) - v64);
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
  v75 = 18 * v74;
  if (v74 <= 0)
  {
    v75 = 0;
  }

  v76 = v75 + v73;
  v77 = v75 + v73 + 18 * (*(this + 55) - v74);
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

BOOL FstSearchBackoff::findBestPath(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
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
  BestTrace = FstSearchHashBackoff::getBestTrace(a1, a2, a3, 0);
  *a4 = 1879048192;
  if (BestTrace == -1)
  {
    return 0;
  }

  v13 = *(a1 + 160) + 24 * BestTrace;
  LODWORD(v13) = *(v13 + 12) + *(*(a1 + 88) + 4 * *(v13 + 4));
  *a4 = v13;
  return v13 != 1879048192;
}

uint64_t FstSearchBackoff::buildWordLattice(uint64_t a1, unint64_t a2, void *a3, void *a4, char a5)
{
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v25, *(a1 + 168));
  v9 = MemChunkAlloc(0x28uLL, 0);
  HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::HashProbeKEV(v9, 0, 128);
  v9[4] = a2;
  FstSearchHashBackoff::createLatticeNodes(a1, &v28, &v26, a2, v25, a3, a4);
  v23 = v9;
  v11 = *(a1 + 168);
  if (v11)
  {
    v12 = 0;
    v13 = v27;
    do
    {
      if (*(*a3 + v12))
      {
        v14 = (*(a1 + 160) + 24 * v12);
        if (*v14 != 16777209)
        {
          v15 = *(a1 + 176) + 12 * v14[2];
          v16 = *(v15 + 8);
          if (v16 == -1)
          {
            v17 = 0;
          }

          else
          {
            v17 = (v13 - *(v28 + v16));
          }

          v18 = *(v26 + 4 * v17);
          if (*(*a4 + v12) == 1)
          {
            FstSearchBackoff::createLatticeLink(a1, v12, v15, 0xFFFFFFFFLL, v18, *(v26 + 4 * (v13 - *(v28 + v12))), a2, v10, a5);
          }

          v19 = v25[0] + 16 * v12;
          if (*(v19 + 8))
          {
            v20 = 0;
            do
            {
              v21 = *(*v19 + 4 * v20);
              FstSearchBackoff::createLatticeLink(a1, v12, v15, v21, v18, *(v26 + 4 * (v13 - *(v28 + v21))), a2, v10, a5);
              ++v20;
              v19 = v25[0] + 16 * v12;
            }

            while (v20 < *(v19 + 8));
          }
        }
      }

      ++v12;
    }

    while (v12 != v11);
  }

  DgnDelete<HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>>(v23);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v25);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v26);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v28);
}

void sub_262665728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void FstSearchBackoff::createLatticeLink(uint64_t a1, unsigned int a2, int *a3, uint64_t a4, uint64_t a5, const WordLatticeLC *a6, unint64_t a7, uint64_t a8, char a9)
{
  v11 = a5;
  v12 = a4;
  v16 = *(a1 + 160);
  if ((a4 & 0x80000000) != 0)
  {
    v17 = 0;
  }

  else if (*(*(a1 + 176) + 12 * *(v16 + 24 * a4 + 8) + 8) == a2)
  {
    v17 = (*(a1 + 176) + 12 * *(v16 + 24 * a4 + 8));
  }

  else
  {
    v17 = 0;
  }

  ArcGraph::lexToCWIDAC(*(a1 + 40), *(v16 + 24 * a2), a3, a4, a5, a6, a7, a8, v39);
  v18 = a3[1];
  if (v17)
  {
    v18 += v17[1];
    v19 = *v17 + *a3;
  }

  else
  {
    v19 = *a3;
  }

  if (v39[0] >> 25 == 126)
  {
    v20 = 0;
    v21 = v18;
  }

  else
  {
    v20 = *(a1 + 136);
    v21 = v18 - v20;
  }

  v22 = v19 - v18;
  if ((v12 & 0x80000000) != 0)
  {
    v23 = 0;
  }

  else
  {
    v23 = *(a1 + 140);
    v21 -= v23;
  }

  v33 = v21;
  v34 = 0;
  v35 = v20;
  v36 = v22;
  v37 = 0;
  v38 = v23;
  v24 = a3[2];
  v25 = *(a1 + 160);
  if (v24 != -1)
  {
    v26 = *(v25 + 24 * v24 + 4);
    if (a9)
    {
      v27 = (v26 - 1) / 2 + 1;
      goto LABEL_19;
    }

    v27 = v26 + 1;
LABEL_22:
    v28 = *(v25 + 24 * a2 + 4);
    v29 = v28 - v27 + 1;
    if ((v12 & 0x80000000) == 0)
    {
      v30 = *(v25 + 24 * v12 + 4);
      goto LABEL_24;
    }

LABEL_25:
    v31 = 0;
    goto LABEL_26;
  }

  v27 = 0;
  if (!a9)
  {
    goto LABEL_22;
  }

LABEL_19:
  v28 = (*(v25 + 24 * a2 + 4) - 1) / 2;
  v29 = v28 - v27 + 1;
  if ((v12 & 0x80000000) != 0)
  {
    goto LABEL_25;
  }

  v30 = (*(v25 + 24 * v12 + 4) - 1) / 2;
LABEL_24:
  v31 = v30 - v28;
LABEL_26:
  WordLatticeLC::WordLatticeLC(v32, v39, v27, v29, v31, &v33);
  Lattice<WordLatticeLC>::maybeCreateAndConnectLinkAvoidMultiLinks(a7, v11, a6, v32);
  WordLatticeLC::~WordLatticeLC(v32);
}

void sub_262665958(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WordLatticeLC::~WordLatticeLC(va);
  _Unwind_Resume(a1);
}

uint64_t FstSearchBackoff::beginTopRecSyncRecog(uint64_t this, VirtMap *a2)
{
  *(this + 112) = a2;
  if (*(this + 356) == 1)
  {
    return MiniFst::beginTopFstSyncRecog(this + 240);
  }

  return this;
}

uint64_t FstSearchBackoff::endTopRecSyncRecog(FstSearchBackoff *this)
{
  v1 = *(this + 14);
  *(this + 14) = 0;
  return v1;
}

uint64_t FstSearchBackoff::getBestExitScore(FstSearchBackoff *this)
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
  v6 = 20 * v1;
  do
  {
    v7 = *(this + 24) + v6;
    if (*(*(this + 5) + 160) == *(v7 + 4))
    {
      v8 = *(v7 + 8);
      if (v8 != -1 && *(*(this + 20) + 24 * v8 + 4) == *(this + 56))
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
    v6 += 20;
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
      v13 = v9 + 24 * v12;
      v14 = *(v13 + 12);
      if (v11 > v14)
      {
        *(this + 57) = *(v13 + 16);
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

uint64_t FstSearchBackoff::getBestScoreMaybeUpdateFstNode(FstSearchBackoff *this, Node *a2)
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

      v3 += 20;
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

_DWORD *FstSearchBackoff::seedTheory(FstSearchBackoff *this, int a2, int a3, int a4, SearchStats *a5)
{
  if (a4 == -2)
  {
    v9 = *(this + 42) - 1;
  }

  else
  {
    v11 = *(this + 42);
    if (v11 == *(this + 43))
    {
      DgnArray<CWIDAC>::reallocElts(this + 160, 1, 1);
      v11 = *(this + 42);
    }

    v12 = *(this + 20) + 24 * v11;
    *v12 = a4;
    *(v12 + 4) = a3;
    *(v12 + 8) = -1;
    *(v12 + 12) = a2;
    *(v12 + 16) = 0xFFFFFFFFLL;
    v9 = *(this + 42);
    *(this + 42) = v9 + 1;
  }

  v13 = *(*(this + 5) + 144);
  v14 = *(this + 50);
  if (v14 == *(this + 51))
  {
    DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(this + 192, 1, 1);
    v14 = *(this + 50);
  }

  v15 = *(this + 24) + 20 * v14;
  *v15 = a2;
  *(v15 + 4) = v13;
  *(v15 + 8) = v9;
  *(v15 + 12) = -2;
  *(v15 + 16) = 0;
  LODWORD(v15) = *(this + 50) + 1;
  *(this + 50) = v15;
  *(this + 38) = v15;

  return FstSearchHashBackoff::propagateNulls(this, 20000, a3, a5);
}

uint64_t FstSearchBackoff::expandEmbFstHistory(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 228);
  if (v8 != -1)
  {
    v9 = result;
    v10 = (*(result + 160) + 24 * v8);
    for (i = v10[4]; i != -1; v8 = v16)
    {
      v16 = i;
      result = *(v9 + 40);
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
      v20 = *(v9 + 160);
      v21 = *(v20 + 24 * v8 + 4);
      v22 = *(a3 + 8);
      if (v22 == *(a3 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
        v22 = *(a3 + 8);
        v20 = *(v9 + 160);
      }

      *(*a3 + 4 * v22) = v21;
      ++*(a3 + 8);
      v23 = *(v20 + 24 * v8 + 12);
      v24 = *(a5 + 8);
      if (v24 == *(a5 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a5, 1, 1);
        v24 = *(a5 + 8);
      }

      *(*a5 + 4 * v24) = v23;
      ++*(a5 + 8);
      v10 = (*(v9 + 160) + 24 * v16);
      i = v10[4];
    }

    *a4 = *v10;
  }

  return result;
}

void FstSearchBackoff::checkSearchParametersValidityForArcGraph(FstSearchBackoff *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

uint64_t FstSearchBackoff::makePartialResult(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  BestTrace = FstSearchHashBackoff::getBestTrace(a1, 0, 0, 1);
  if (BestTrace == -1)
  {
    return 1879048192;
  }

  v15 = BestTrace;
  FstSearchHashBackoff::getHistory(a1, BestTrace, a3, a4, v11, v12, v13, v14);
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

  v22 = *(a1 + 160) + 24 * v15;
  return (*(v22 + 12) + *(*(a1 + 88) + 4 * *(v22 + 4)));
}

int64x2_t FstSearch::advanceDeltas(FstSearch *this, int a2, int a3, SearchStats *a4, int a5)
{
  v7 = a2;
  v104[0] = a2;
  v102 = 0u;
  v103 = 0u;
  SnapTime::recordTime(&v102, 1, 0, 0, 0);
  *(this + 58) = a3;
  v84 = *(this + 2);
  v80 = (this + 232);
  v9 = *(this + 50);
  if (v9)
  {
    v10 = 0;
    v86 = 0;
    v11 = 0;
    v83 = this;
    do
    {
      v12 = *(this + 24);
      v13 = *(this + 5);
      v14 = 20 * v11 + 16;
      while (1)
      {
        v15 = *(v12 + v14 - 12);
        if (*(v13 + 160) != v15)
        {
          break;
        }

        ++v11;
        v14 += 20;
        if (v11 >= v9)
        {
          goto LABEL_39;
        }
      }

      v85 = v10;
      v78 = v7;
      v77 = a4;
      if (*(v13 + 140) > v15)
      {
        v16 = *(v12 + v14 - 16);
        v17 = PelScoreCache::getScoreNoBackoff(*(v83 + 4), *(v12 + v14 - 4)) + v16;
        this = v83;
        v18 = *(v83 + 58);
        if (v17 - v84 <= v18)
        {
          if (v18 > v17)
          {
            *v80 = v17;
          }

          v19 = (*(v83 + 24) + v14);
          v20 = *(v19 - 3);
          v21 = *(v19 - 2);
          v22 = *(v19 - 1);
          v23 = *v19;
          v24 = *(v83 + 54);
          if (v24 == *(v83 + 55))
          {
            DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(v83 + 208, 1, 1);
            LODWORD(v24) = *(v83 + 54);
          }

          v25 = *(v83 + 26) + 20 * v24;
          *v25 = v17;
          *(v25 + 4) = v20;
          *(v25 + 12) = v21;
          *(v25 + 14) = v22;
          *(v25 + 16) = v23;
          v26 = *(v83 + 54);
          *(v83 + 54) = v26 + 1;
          v27 = v85;
          if (v86 == 2 * *(v83 + 4))
          {
            v27 = v26 + 1;
          }

          v85 = v27;
          ++v86;
        }
      }

      v28 = v15;
      v29 = v84;
      do
      {
        v30 = *(this + 5);
        v31 = *(v30 + 152);
        v32 = *(v31 + 4 * v28);
        v33 = *(v31 + 4 * (v28 + 1));
        v34 = *(v30 + 140);
        if (v34 <= v33)
        {
          if (v34 <= v15 && (*(this + 356) & 1) != 0)
          {
            v48 = (v32 & 0xFFFFF) <= 0xFFFF3 ? v32 & 0xFFFFF : v32 & 0xFFFFF | 0xF00000;
            if (v48 != 16777210)
            {
              DgnString::DgnString(&v99);
              ArcGraph::getNameAndHumanReadablePron(*(this + 5), v48, &v99, v49, v50, v51, v52, v53);
              v58 = &unk_26287F8B0;
              if (v99.i32[2])
              {
                v58 = v99.i64[0];
              }

              xprintf("Seed from state %d score %d trace %d, %s\n", v54, v55, v56, v57, v15, *(*(this + 24) + v14 - 16), *(*(this + 24) + v14 - 8), v58);
              MiniFst::seed(this + 240, *(*(this + 24) + v14 - 16), 0, *(*(this + 24) + v14 - 8), v33);
              DgnString::~DgnString(&v99);
            }
          }
        }

        else
        {
          v35 = (v32 >> 20) & 0x3FF;
          ScoreNoBackoff = PelScoreCache::getScoreNoBackoff(*(this + 4), *(v31 + 4 * v28));
          v37 = *(this + 24);
          v38 = ScoreNoBackoff + v35 + *(v37 + v14 - 16);
          v39 = *(this + 58);
          if (v38 - v29 <= v39)
          {
            if (v39 > v38)
            {
              *v80 = v38;
            }

            v40 = (v37 + v14);
            v41 = *(v40 - 2);
            v42 = *(v40 - 1);
            v43 = *v40;
            this = v83;
            v44 = *(v83 + 54);
            if (v44 == *(v83 + 55))
            {
              v81 = v41;
              v82 = v42;
              DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(v83 + 208, 1, 1);
              v41 = v81;
              v42 = v82;
              LODWORD(v44) = *(v83 + 54);
            }

            v45 = *(v83 + 26) + 20 * v44;
            *v45 = v38;
            *(v45 + 4) = v33;
            *(v45 + 8) = v41;
            *(v45 + 12) = v32;
            *(v45 + 14) = v42;
            *(v45 + 16) = v43 + v35;
            v46 = *(v83 + 54);
            *(v83 + 54) = v46 + 1;
            v29 = v84;
            v47 = v85;
            if (v86 == 2 * *(v83 + 4))
            {
              v47 = v46 + 1;
            }

            v85 = v47;
            ++v86;
          }
        }

        v28 += 2;
      }

      while ((v32 & 0x80000000) == 0);
      v11 = (v11 + 1);
      v9 = *(this + 50);
      v7 = v78;
      a4 = v77;
      v10 = v85;
    }

    while (v11 < v9);
  }

  else
  {
    v86 = 0;
    v10 = 0;
  }

LABEL_39:
  v101 = *(this + 58) + v84;
  if (*(this + 356) == 1)
  {
    MiniFst::updateFrame(this + 240, v80, v84, v7);
  }

  v99 = 0u;
  v100 = 0u;
  SnapTime::recordTime(&v99, 1, 0, 0, 0);
  v99 = vsubq_s64(v99, v102);
  v100 = vsubq_s64(v100, v103);
  v59 = *(this + 13);
  v60 = vaddq_s64(v59[1], v100);
  *v59 = vaddq_s64(*v59, v99);
  v59[1] = v60;
  v97 = 0u;
  v98 = 0u;
  SnapTime::recordTime(&v97, 1, 0, 0, 0);
  if (v86 > 2 * *(this + 4))
  {
    FstSearchHashBackoff::applyCutoffOnEmitting(this, v10, &v101);
  }

  v95 = 0u;
  v96 = 0u;
  SnapTime::recordTime(&v95, 1, 0, 0, 0);
  v61 = vsubq_s64(v95, v97);
  v62 = *(this + 13);
  v63 = v62[3];
  v64 = vaddq_s64(v62[2], v61);
  v95 = v61;
  v96 = vsubq_s64(v96, v98);
  v65 = vaddq_s64(v63, v96);
  v62[2] = v64;
  v62[3] = v65;
  v93 = 0u;
  v94 = 0u;
  SnapTime::recordTime(&v93, 1, 0, 0, 0);
  FstSearchBackoff::makeViterbiDecisionOnEmitting(this);
  v66 = *(this + 6);
  if (v66)
  {
    v67 = *(this + 50);
    if (v66 < v67)
    {
      mrec_nth_element<FstSearchHashBackoffcmpTok>(*(this + 24), v66, v67);
    }
  }

  v91 = 0u;
  v92 = 0u;
  SnapTime::recordTime(&v91, 1, 0, 0, 0);
  v68 = vsubq_s64(v91, v93);
  v69 = *(this + 13);
  v70 = v69[5];
  v71 = vaddq_s64(v69[4], v68);
  v91 = v68;
  v92 = vsubq_s64(v92, v94);
  v72 = vaddq_s64(v70, v92);
  v69[4] = v71;
  v69[5] = v72;
  v89 = 0u;
  v90 = 0u;
  SnapTime::recordTime(&v89, 1, 0, 0, 0);
  *(this + 54) = 0;
  v73 = *(this + 50);
  *(this + 38) = v73;
  if (a4)
  {
    *(a4 + 2) += v73;
    if (*(a4 + 2) > v73)
    {
      LODWORD(v73) = *(a4 + 2);
    }

    *(a4 + 2) = v73;
  }

  if (*(this + 356) == 1)
  {
    FstSearch::seedFromMiniFst(this, v104);
  }

  if (a5)
  {
    FstSearchHashBackoff::propagateNulls(this, v101, v7, a4);
  }

  *(this + 56) = v7;
  v87 = 0u;
  v88 = 0u;
  SnapTime::recordTime(&v87, 1, 0, 0, 0);
  v74 = *(this + 13);
  result = vaddq_s64(v74[6], vsubq_s64(v87, v89));
  v76 = vaddq_s64(v74[7], vsubq_s64(v88, v90));
  v74[6] = result;
  v74[7] = v76;
  return result;
}

uint64_t FstSearch::seedFromMiniFst(uint64_t this, int *a2)
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
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = (*(v2 + 256) + v5);
        v8 = *v7;
        v10 = v7[6];
        v9 = v7[7];
        LODWORD(v7) = v7[2];
        v20[0] = 0;
        v20[1] = 0;
        v11 = -2 - v7;
        if (v9 == 16777213)
        {
          v12 = (*(v2 + 160) + 24 * v11);
          v9 = 16777209;
          if (*v12 == 16777209)
          {
            v11 = *(*(v2 + 176) + 12 * v12[2] + 8);
          }
        }

        v13 = *a2;
        v14 = *(v2 + 168);
        if (v14 == *(v2 + 172))
        {
          DgnArray<CWIDAC>::reallocElts(v2 + 160, 1, 1);
          LODWORD(v14) = *(v2 + 168);
        }

        v15 = (*(v2 + 160) + 24 * v14);
        *v15 = v9;
        v15[1] = v13;
        v15[2] = -1;
        v15[3] = v8;
        v15[4] = v11;
        v15[5] = 0;
        v16 = *(v2 + 168);
        *(v2 + 168) = v16 + 1;
        v17 = *(v2 + 200);
        if (v17 == *(v2 + 204))
        {
          DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(v2 + 192, 1, 1);
          LODWORD(v17) = *(v2 + 200);
        }

        v18 = *(v2 + 192) + 20 * v17;
        *v18 = v8;
        *(v18 + 4) = v10;
        *(v18 + 8) = v16;
        *(v18 + 12) = -2;
        *(v18 + 16) = 0;
        ++*(v2 + 200);
        this = DgnPrimArray<unsigned int>::~DgnPrimArray(v20);
        ++v6;
        v19 = *(v2 + 264);
        if (v19 >= *(v2 + 20))
        {
          v19 = *(v2 + 20);
        }

        v5 += 36;
      }

      while (v6 < v19);
    }
  }

  return this;
}

uint64_t FstSearch::collectTraces(FstSearch *this)
{
  v2 = *(this + 42);
  v42 = 0;
  v41 = 0;
  if (v2)
  {
    v3 = MemChunkAlloc(4 * v2, 0);
    v41 = v3;
    v42 = v2;
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

  v11 = *(this + 50);
  if (v11)
  {
    v12 = 0;
    v13 = (*(this + 24) + 8);
    do
    {
      v15 = *v13;
      v13 += 5;
      v14 = v15;
      if (v15 != -1)
      {
        *(v3 + v14) = 1;
        v11 = *(this + 50);
      }

      ++v12;
    }

    while (v12 < v11);
  }

  v16 = *(this + 42);
  if (!v16)
  {
    goto LABEL_38;
  }

  v17 = 24 * v16 - 8;
  v18 = v3 + v16 - 1;
  do
  {
    if (*v18--)
    {
      v20 = *(*(this + 20) + v17);
      if (v20 != -1)
      {
        *(v3 + v20) = 1;
      }
    }

    v17 -= 24;
  }

  while (v17 != -8);
  v21 = *(this + 42);
  if (v21)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    do
    {
      if (*(v3 + v23))
      {
        v25 = *(this + 20);
        if (v23 != v24)
        {
          v26 = (v25 + v22);
          v27 = v25 + 24 * v24;
          v28 = *v26;
          *(v27 + 16) = *(v26 + 2);
          *v27 = v28;
          v25 = *(this + 20);
        }

        v29 = v25 + 24 * v24;
        v32 = *(v29 + 16);
        v30 = (v29 + 16);
        v31 = v32;
        if (v32 != -1)
        {
          *v30 = *(v3 + v31);
        }

        *(v3 + v23) = v24++;
        v21 = *(this + 42);
      }

      ++v23;
      v22 += 24;
    }

    while (v23 < v21);
    v33 = *(this + 43);
    if (v24 > v33)
    {
      DgnArray<CWIDAC>::reallocElts(this + 160, v24 - v33, 0);
      v21 = *(this + 42);
    }

    if (v21 < v24)
    {
      v34 = v24 - v21;
      v35 = (*(this + 20) + 24 * v21 + 16);
      do
      {
        *(v35 - 1) = xmmword_26287F860;
        *v35 = 0xFFFFFFFFLL;
        v35 += 3;
        --v34;
      }

      while (v34);
    }
  }

  else
  {
LABEL_38:
    v24 = 0;
  }

  *(this + 42) = v24;
  v36 = *(this + 50);
  if (v36)
  {
    v37 = v41;
    v38 = (*(this + 24) + 8);
    do
    {
      v39 = *v38;
      if (v39 != -1)
      {
        *v38 = *(v37 + v39);
      }

      v38 += 5;
      --v36;
    }

    while (v36);
  }

  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v41);
}

int64x2_t FstSearch::vite(int64x2_t **this, int a2, int a3, SearchStats *a4, int a5)
{
  FstSearch::advanceDeltas(this, a2, a3, a4, a5);
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
        FstSearch::collectTraces(this);
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

_DWORD *FstSearch::reset(_DWORD *this)
{
  this[42] = 0;
  this[46] = 0;
  this[50] = 0;
  return this;
}

double FstSearch::doFrame(int64x2_t **this, int a2, int a3, SearchStats *a4, int a5)
{
  if (a3 >= 20000)
  {
    a3 = 20000;
  }

  *&result = FstSearch::vite(this, a2, a3, a4, a5).u64[0];
  return result;
}

uint64_t FstSearch::beginTopRecPassSyncRecog(FstSearch *this, PelScorer *a2, const ArcGraph *a3)
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

uint64_t FstSearch::endTopRecPassSyncRecog(int64x2_t **this)
{
  v10 = 0u;
  v11 = 0u;
  SnapTime::recordTime(&v10, 1, 0, 0, 0);
  FstSearchHashBackoff::generateTraceTokensFromTraces(this);
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

void FstSearch::printSize(FstSearch *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
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

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v48, v49, v50, v51, v21, &unk_26287F8B0, v22, v22, v52, v47, v46, 0);
  DgnString::~DgnString(&v117);
  *a4 += v47;
  *a5 += v46;
  v53 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v53 = 12;
  }

  v54 = *(this + 46);
  v55 = 12 * v54;
  if (v54 <= 0)
  {
    v55 = 0;
  }

  v56 = v55 + v53;
  v57 = v55 + v53 + 12 * (*(this + 47) - v54);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2959, &v117);
  if (v118)
  {
    v62 = v117;
  }

  else
  {
    v62 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v58, v59, v60, v61, v21, &unk_26287F8B0, v22, v22, v62, v57, v56, 0);
  DgnString::~DgnString(&v117);
  *a4 += v57;
  *a5 += v56;
  v63 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v63 = 12;
  }

  v64 = *(this + 50);
  v65 = 18 * v64;
  if (v64 <= 0)
  {
    v65 = 0;
  }

  v66 = v65 + v63;
  v67 = v65 + v63 + 18 * (*(this + 51) - v64);
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
  v75 = 18 * v74;
  if (v74 <= 0)
  {
    v75 = 0;
  }

  v76 = v75 + v73;
  v77 = v75 + v73 + 18 * (*(this + 55) - v74);
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

BOOL FstSearch::findBestPath(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
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
  BestTrace = FstSearchHashBackoff::getBestTrace(a1, a2, a3, 0);
  *a4 = 1879048192;
  if (BestTrace == -1)
  {
    return 0;
  }

  v13 = *(a1 + 160) + 24 * BestTrace;
  LODWORD(v13) = *(v13 + 12) + *(*(a1 + 88) + 4 * *(v13 + 4));
  *a4 = v13;
  return v13 != 1879048192;
}

uint64_t FstSearch::buildWordLattice(uint64_t a1, unint64_t a2, void *a3, void *a4, char a5)
{
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v25, *(a1 + 168));
  v9 = MemChunkAlloc(0x28uLL, 0);
  HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::HashProbeKEV(v9, 0, 128);
  v9[4] = a2;
  FstSearchHashBackoff::createLatticeNodes(a1, &v28, &v26, a2, v25, a3, a4);
  v23 = v9;
  v11 = *(a1 + 168);
  if (v11)
  {
    v12 = 0;
    v13 = v27;
    do
    {
      if (*(*a3 + v12))
      {
        v14 = (*(a1 + 160) + 24 * v12);
        if (*v14 != 16777209)
        {
          v15 = *(a1 + 176) + 12 * v14[2];
          v16 = *(v15 + 8);
          if (v16 == -1)
          {
            v17 = 0;
          }

          else
          {
            v17 = (v13 - *(v28 + v16));
          }

          v18 = *(v26 + 4 * v17);
          if (*(*a4 + v12) == 1)
          {
            FstSearch::createLatticeLink(a1, v12, v15, 0xFFFFFFFFLL, v18, *(v26 + 4 * (v13 - *(v28 + v12))), a2, v10, a5);
          }

          v19 = v25[0] + 16 * v12;
          if (*(v19 + 8))
          {
            v20 = 0;
            do
            {
              v21 = *(*v19 + 4 * v20);
              FstSearch::createLatticeLink(a1, v12, v15, v21, v18, *(v26 + 4 * (v13 - *(v28 + v21))), a2, v10, a5);
              ++v20;
              v19 = v25[0] + 16 * v12;
            }

            while (v20 < *(v19 + 8));
          }
        }
      }

      ++v12;
    }

    while (v12 != v11);
  }

  DgnDelete<HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>>(v23);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v25);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v26);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v28);
}

void sub_2626678DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void FstSearch::createLatticeLink(uint64_t a1, unsigned int a2, int *a3, uint64_t a4, uint64_t a5, const WordLatticeLC *a6, unint64_t a7, uint64_t a8, char a9)
{
  v11 = a5;
  v12 = a4;
  v16 = *(a1 + 160);
  if ((a4 & 0x80000000) != 0)
  {
    v17 = 0;
  }

  else if (*(*(a1 + 176) + 12 * *(v16 + 24 * a4 + 8) + 8) == a2)
  {
    v17 = (*(a1 + 176) + 12 * *(v16 + 24 * a4 + 8));
  }

  else
  {
    v17 = 0;
  }

  ArcGraph::lexToCWIDAC(*(a1 + 40), *(v16 + 24 * a2), a3, a4, a5, a6, a7, a8, v39);
  v18 = a3[1];
  if (v17)
  {
    v18 += v17[1];
    v19 = *v17 + *a3;
  }

  else
  {
    v19 = *a3;
  }

  if (v39[0] >> 25 == 126)
  {
    v20 = 0;
    v21 = v18;
  }

  else
  {
    v20 = *(a1 + 136);
    v21 = v18 - v20;
  }

  v22 = v19 - v18;
  if ((v12 & 0x80000000) != 0)
  {
    v23 = 0;
  }

  else
  {
    v23 = *(a1 + 140);
    v21 -= v23;
  }

  v33 = v21;
  v34 = 0;
  v35 = v20;
  v36 = v22;
  v37 = 0;
  v38 = v23;
  v24 = a3[2];
  v25 = *(a1 + 160);
  if (v24 != -1)
  {
    v26 = *(v25 + 24 * v24 + 4);
    if (a9)
    {
      v27 = (v26 - 1) / 2 + 1;
      goto LABEL_19;
    }

    v27 = v26 + 1;
LABEL_22:
    v28 = *(v25 + 24 * a2 + 4);
    v29 = v28 - v27 + 1;
    if ((v12 & 0x80000000) == 0)
    {
      v30 = *(v25 + 24 * v12 + 4);
      goto LABEL_24;
    }

LABEL_25:
    v31 = 0;
    goto LABEL_26;
  }

  v27 = 0;
  if (!a9)
  {
    goto LABEL_22;
  }

LABEL_19:
  v28 = (*(v25 + 24 * a2 + 4) - 1) / 2;
  v29 = v28 - v27 + 1;
  if ((v12 & 0x80000000) != 0)
  {
    goto LABEL_25;
  }

  v30 = (*(v25 + 24 * v12 + 4) - 1) / 2;
LABEL_24:
  v31 = v30 - v28;
LABEL_26:
  WordLatticeLC::WordLatticeLC(v32, v39, v27, v29, v31, &v33);
  Lattice<WordLatticeLC>::maybeCreateAndConnectLinkAvoidMultiLinks(a7, v11, a6, v32);
  WordLatticeLC::~WordLatticeLC(v32);
}

void sub_262667B0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WordLatticeLC::~WordLatticeLC(va);
  _Unwind_Resume(a1);
}

uint64_t FstSearch::beginTopRecSyncRecog(uint64_t this, VirtMap *a2)
{
  *(this + 112) = a2;
  if (*(this + 356) == 1)
  {
    return MiniFst::beginTopFstSyncRecog(this + 240);
  }

  return this;
}

uint64_t FstSearch::endTopRecSyncRecog(FstSearch *this)
{
  v1 = *(this + 14);
  *(this + 14) = 0;
  return v1;
}

uint64_t FstSearch::getBestExitScore(FstSearch *this)
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
  v6 = 20 * v1;
  do
  {
    v7 = *(this + 24) + v6;
    if (*(*(this + 5) + 160) == *(v7 + 4))
    {
      v8 = *(v7 + 8);
      if (v8 != -1 && *(*(this + 20) + 24 * v8 + 4) == *(this + 56))
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
    v6 += 20;
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
      v13 = v9 + 24 * v12;
      v14 = *(v13 + 12);
      if (v11 > v14)
      {
        *(this + 57) = *(v13 + 16);
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

uint64_t FstSearch::getBestScoreMaybeUpdateFstNode(FstSearch *this, Node *a2)
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

      v3 += 20;
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

_DWORD *FstSearch::seedTheory(FstSearch *this, int a2, int a3, int a4, SearchStats *a5)
{
  if (a4 == -2)
  {
    v9 = *(this + 42) - 1;
  }

  else
  {
    v11 = *(this + 42);
    if (v11 == *(this + 43))
    {
      DgnArray<CWIDAC>::reallocElts(this + 160, 1, 1);
      v11 = *(this + 42);
    }

    v12 = *(this + 20) + 24 * v11;
    *v12 = a4;
    *(v12 + 4) = a3;
    *(v12 + 8) = -1;
    *(v12 + 12) = a2;
    *(v12 + 16) = 0xFFFFFFFFLL;
    v9 = *(this + 42);
    *(this + 42) = v9 + 1;
  }

  v13 = *(*(this + 5) + 144);
  v14 = *(this + 50);
  if (v14 == *(this + 51))
  {
    DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(this + 192, 1, 1);
    v14 = *(this + 50);
  }

  v15 = *(this + 24) + 20 * v14;
  *v15 = a2;
  *(v15 + 4) = v13;
  *(v15 + 8) = v9;
  *(v15 + 12) = -2;
  *(v15 + 16) = 0;
  LODWORD(v15) = *(this + 50) + 1;
  *(this + 50) = v15;
  *(this + 38) = v15;

  return FstSearchHashBackoff::propagateNulls(this, 20000, a3, a5);
}

uint64_t FstSearch::expandEmbFstHistory(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 228);
  if (v8 != -1)
  {
    v9 = result;
    v10 = (*(result + 160) + 24 * v8);
    for (i = v10[4]; i != -1; v8 = v16)
    {
      v16 = i;
      result = *(v9 + 40);
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
      v20 = *(v9 + 160);
      v21 = *(v20 + 24 * v8 + 4);
      v22 = *(a3 + 8);
      if (v22 == *(a3 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
        v22 = *(a3 + 8);
        v20 = *(v9 + 160);
      }

      *(*a3 + 4 * v22) = v21;
      ++*(a3 + 8);
      v23 = *(v20 + 24 * v8 + 12);
      v24 = *(a5 + 8);
      if (v24 == *(a5 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a5, 1, 1);
        v24 = *(a5 + 8);
      }

      *(*a5 + 4 * v24) = v23;
      ++*(a5 + 8);
      v10 = (*(v9 + 160) + 24 * v16);
      i = v10[4];
    }

    *a4 = *v10;
  }

  return result;
}

void FstSearch::checkSearchParametersValidityForArcGraph(FstSearch *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

uint64_t FstSearch::makePartialResult(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  BestTrace = FstSearchHashBackoff::getBestTrace(a1, 0, 0, 1);
  if (BestTrace == -1)
  {
    return 1879048192;
  }

  v15 = BestTrace;
  FstSearchHashBackoff::getHistory(a1, BestTrace, a3, a4, v11, v12, v13, v14);
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

  v22 = *(a1 + 160) + 24 * v15;
  return (*(v22 + 12) + *(*(a1 + 88) + 4 * *(v22 + 4)));
}

void FstCore::generateDecoder(int a1, int a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8)
{
  v63 = a7;
  v64 = a6;
  if (a1 == 2)
  {
    v10 = a2;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10 | a3;
  v12 = a4 ^ 1;
  v13 = v10 | a3 | a4 ^ 1;
  v14 = a5 ^ 1;
  if ((v13 & 1) == 0 && (v14 & 1) == 0)
  {
    v15 = MemChunkAlloc(0x168uLL, 0);
    SearchItf::SearchItf(v15);
    v17 = &unk_287524440;
LABEL_47:
    *v16 = v17;
    *(v16 + 136) = a6;
    *(v16 + 140) = a7;
    *(v16 + 160) = 0u;
    *(v16 + 176) = 0u;
    *(v16 + 192) = 0u;
    *(v16 + 208) = 0u;
    *(v16 + 224) = -1;
    *(v16 + 232) = 1879048192;
    *(v16 + 240) = 0u;
    *(v16 + 256) = 0u;
    *(v16 + 272) = 0u;
    *(v16 + 288) = 0u;
    *(v16 + 304) = 0u;
    *(v16 + 356) = 0;
    return;
  }

  if (((v13 | a5) & 1) == 0)
  {
    v35 = MemChunkAlloc(0x168uLL, 0);
    SearchItf::SearchItf(v35);
    v17 = &unk_287524DD0;
    goto LABEL_47;
  }

  if (a1 == 1)
  {
    v18 = a2;
  }

  else
  {
    v18 = 1;
  }

  v19 = v18 | a3;
  v20 = v18 | a3 | v12;
  if (((v20 | v14) & 1) == 0)
  {
    v36 = MemChunkAlloc(0x168uLL, 0);
    SearchItf::SearchItf(v36);
    v17 = &unk_287524950;
    goto LABEL_47;
  }

  if (((v20 | a5) & 1) == 0)
  {
    v37 = MemChunkAlloc(0x168uLL, 0);
    SearchItf::SearchItf(v37);
    v17 = &unk_287525DC0;
    goto LABEL_47;
  }

  v21 = a2 ^ 1;
  if (a1)
  {
    v22 = 1;
  }

  else
  {
    v22 = a2 ^ 1;
  }

  v23 = v22 | a3;
  v24 = v22 | a3 | v12;
  if (((v24 | v14) & 1) == 0)
  {
    v38 = MemChunkAlloc(0x180uLL, 0);
    SearchItf::SearchItf(v38);
    *v39 = &unk_2875246B0;
    *(v39 + 136) = a6;
    *(v39 + 140) = a7;
    *(v39 + 160) = 0u;
    *(v39 + 176) = 0u;
    *(v39 + 192) = 0u;
    *(v39 + 216) = 0u;
    *(v39 + 232) = 0u;
    *(v39 + 248) = -1;
    *(v39 + 256) = 1879048192;
    *(v39 + 264) = 0u;
    *(v39 + 280) = 0u;
    *(v39 + 296) = 0u;
    *(v39 + 312) = 0u;
    *(v39 + 328) = 0u;
    *(v39 + 380) = 0;
    return;
  }

  if (((v24 | a5) & 1) == 0)
  {
    v40 = MemChunkAlloc(0x180uLL, 0);
    FstSearchDurationHash::FstSearchDurationHash(v40, &v64, &v63);
    return;
  }

  if (a1)
  {
    v25 = 1;
  }

  else
  {
    v25 = a2;
  }

  v26 = v25 | a3 | v12;
  if (((v26 | v14) & 1) == 0)
  {
    v41 = MemChunkAlloc(0x168uLL, 0);
    SearchItf::SearchItf(v41);
    v17 = &unk_287525F60;
    goto LABEL_47;
  }

  if (((v26 | a5) & 1) == 0)
  {
    v42 = MemChunkAlloc(0x168uLL, 0);
    SearchItf::SearchItf(v42);
    v17 = &unk_2875286C8;
    goto LABEL_47;
  }

  if (a1 != 1)
  {
    v21 = 1;
  }

  v27 = a3 ^ 1;
  v28 = v21 | a3 ^ 1 | a4;
  if (((v28 | v14) & 1) == 0)
  {
    v43 = MemChunkAlloc(0x1B0uLL, 0);
    FstSearchLeafLatticeDurationBackoff::FstSearchLeafLatticeDurationBackoff(v43, &v64, &v63);
    return;
  }

  if (((v28 | a5) & 1) == 0)
  {
    v44 = MemChunkAlloc(0x1B0uLL, 0);
    FstSearchLeafLatticeDuration::FstSearchLeafLatticeDuration(v44, &v64, &v63);
    return;
  }

  v29 = v18 | v27 | a4;
  if (((v29 | v14) & 1) == 0)
  {
    v45 = MemChunkAlloc(0x198uLL, 0);
    SearchItf::SearchItf(v45);
    v47 = &unk_287524880;
LABEL_56:
    *v46 = v47;
    *(v46 + 136) = a6;
    *(v46 + 140) = a7;
    *(v46 + 160) = 0u;
    *(v46 + 176) = 0u;
    *(v46 + 192) = 0u;
    *(v46 + 208) = 0u;
    *(v46 + 224) = 0u;
    *(v46 + 240) = 0u;
    *(v46 + 256) = 0u;
    *(v46 + 272) = -1;
    *(v46 + 280) = 1879048192;
    *(v46 + 288) = 0u;
    *(v46 + 304) = 0u;
    *(v46 + 320) = 0u;
    *(v46 + 336) = 0u;
    *(v46 + 352) = 0u;
    *(v46 + 404) = 0;
    return;
  }

  if (((v29 | a5) & 1) == 0)
  {
    v48 = MemChunkAlloc(0x198uLL, 0);
    SearchItf::SearchItf(v48);
    v47 = &unk_287525C20;
    goto LABEL_56;
  }

  v30 = v21 | a3 | a4;
  if ((v30 | v14))
  {
    if ((v30 | a5))
    {
      v31 = v11 | a4;
      if (((v31 | v14) & 1) == 0)
      {
        v51 = MemChunkAlloc(0x168uLL, 0);
        SearchItf::SearchItf(v51);
        v17 = &unk_287524A20;
        goto LABEL_47;
      }

      if (((v31 | a5) & 1) == 0)
      {
        v52 = MemChunkAlloc(0x168uLL, 0);
        SearchItf::SearchItf(v52);
        v17 = &unk_287525E90;
        goto LABEL_47;
      }

      if (((v19 | a4 | v14) & 1) == 0)
      {
        v53 = MemChunkAlloc(0x168uLL, 0);
        SearchItf::SearchItf(v53);
        v17 = &unk_287525300;
        goto LABEL_47;
      }

      if (((v19 | a4 | a5) & 1) == 0)
      {
        v54 = MemChunkAlloc(0x168uLL, 0);
        SearchItf::SearchItf(v54);
        v17 = &unk_2875273E8;
        goto LABEL_47;
      }

      v32 = v22 | v27 | a4;
      if ((v32 | v14))
      {
        if ((v32 | a5))
        {
          if ((v23 | a4 | v14))
          {
            if ((v23 | a4 | a5))
            {
              v33 = v25 | v27 | a4;
              if ((v33 | v14))
              {
                if ((v33 | a5))
                {
                  v34 = v25 | a3 | a4;
                  if ((v34 | v14))
                  {
                    if ((v34 | a5))
                    {
                      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 492, "fst/fstsrch", 1, "%u %u %u %u %u", v28 | v14, a8, a1);
                      return;
                    }

                    v62 = MemChunkAlloc(0x168uLL, 0);
                    SearchItf::SearchItf(v62);
                    v17 = &unk_287523008;
                  }

                  else
                  {
                    v61 = MemChunkAlloc(0x168uLL, 0);
                    SearchItf::SearchItf(v61);
                    v17 = &unk_2875274B8;
                  }

                  goto LABEL_47;
                }

                v60 = MemChunkAlloc(0x198uLL, 0);
                SearchItf::SearchItf(v60);
                v47 = &unk_2875285F8;
              }

              else
              {
                v59 = MemChunkAlloc(0x198uLL, 0);
                SearchItf::SearchItf(v59);
                v47 = &unk_287525CF0;
              }

              goto LABEL_56;
            }

            v58 = MemChunkAlloc(0x180uLL, 0);
            FstSearchDuration::FstSearchDuration(v58, &v64, &v63);
          }

          else
          {
            v57 = MemChunkAlloc(0x180uLL, 0);
            FstSearchDurationBackoff::FstSearchDurationBackoff(v57, &v64, &v63);
          }
        }

        else
        {
          v56 = MemChunkAlloc(0x1B0uLL, 0);
          FstSearchLeafDuration::FstSearchLeafDuration(v56, &v64, &v63);
        }
      }

      else
      {
        v55 = MemChunkAlloc(0x1B0uLL, 0);
        FstSearchLeafDurationBackoff::FstSearchLeafDurationBackoff(v55, &v64, &v63);
      }
    }

    else
    {
      v50 = MemChunkAlloc(0x180uLL, 0);
      FstSearchLatticeDuration::FstSearchLatticeDuration(v50, &v64, &v63);
    }
  }

  else
  {
    v49 = MemChunkAlloc(0x180uLL, 0);
    FstSearchLatticeDurationBackoff::FstSearchLatticeDurationBackoff(v49, &v64, &v63);
  }
}

void FstSearchLateLatticeHashBackoff::~FstSearchLateLatticeHashBackoff(FstSearchLateLatticeHashBackoff *this)
{
  *this = &unk_287524440;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 304);
  DgnIArray<Utterance *>::~DgnIArray(this + 288);
  DgnIArray<Utterance *>::~DgnIArray(this + 272);
  DgnIArray<Utterance *>::~DgnIArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnIArray<Utterance *>::~DgnIArray(this + 208);
  DgnIArray<Utterance *>::~DgnIArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);

  SearchItf::~SearchItf(this);
}

{
  *this = &unk_287524440;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 304);
  DgnIArray<Utterance *>::~DgnIArray(this + 288);
  DgnIArray<Utterance *>::~DgnIArray(this + 272);
  DgnIArray<Utterance *>::~DgnIArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnIArray<Utterance *>::~DgnIArray(this + 208);
  DgnIArray<Utterance *>::~DgnIArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);
  SearchItf::~SearchItf(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t FstSearchLateLatticeHashBackoff::getBestScoreThisFrame(FstSearchLateLatticeHashBackoff *this)
{
  v1 = *(this + 58);
  if (v1 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v1;
  }
}

void FstSearchLateLatticeHash::~FstSearchLateLatticeHash(FstSearchLateLatticeHash *this)
{
  *this = &unk_287524DD0;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 304);
  DgnIArray<Utterance *>::~DgnIArray(this + 288);
  DgnIArray<Utterance *>::~DgnIArray(this + 272);
  DgnIArray<Utterance *>::~DgnIArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnIArray<Utterance *>::~DgnIArray(this + 208);
  DgnIArray<Utterance *>::~DgnIArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);

  SearchItf::~SearchItf(this);
}

{
  *this = &unk_287524DD0;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 304);
  DgnIArray<Utterance *>::~DgnIArray(this + 288);
  DgnIArray<Utterance *>::~DgnIArray(this + 272);
  DgnIArray<Utterance *>::~DgnIArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnIArray<Utterance *>::~DgnIArray(this + 208);
  DgnIArray<Utterance *>::~DgnIArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);
  SearchItf::~SearchItf(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t FstSearchLateLatticeHash::getBestScoreThisFrame(FstSearchLateLatticeHash *this)
{
  v1 = *(this + 58);
  if (v1 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v1;
  }
}

void FstSearchLatticeHashBackoff::~FstSearchLatticeHashBackoff(FstSearchLatticeHashBackoff *this)
{
  *this = &unk_287524950;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 304);
  DgnIArray<Utterance *>::~DgnIArray(this + 288);
  DgnIArray<Utterance *>::~DgnIArray(this + 272);
  DgnIArray<Utterance *>::~DgnIArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnIArray<Utterance *>::~DgnIArray(this + 208);
  DgnIArray<Utterance *>::~DgnIArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);

  SearchItf::~SearchItf(this);
}

{
  *this = &unk_287524950;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 304);
  DgnIArray<Utterance *>::~DgnIArray(this + 288);
  DgnIArray<Utterance *>::~DgnIArray(this + 272);
  DgnIArray<Utterance *>::~DgnIArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnIArray<Utterance *>::~DgnIArray(this + 208);
  DgnIArray<Utterance *>::~DgnIArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);
  SearchItf::~SearchItf(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t FstSearchLatticeHashBackoff::getBestScoreThisFrame(FstSearchLatticeHashBackoff *this)
{
  v1 = *(this + 58);
  if (v1 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v1;
  }
}

void FstSearchLatticeHash::~FstSearchLatticeHash(FstSearchLatticeHash *this)
{
  *this = &unk_287525DC0;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 304);
  DgnIArray<Utterance *>::~DgnIArray(this + 288);
  DgnIArray<Utterance *>::~DgnIArray(this + 272);
  DgnIArray<Utterance *>::~DgnIArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnIArray<Utterance *>::~DgnIArray(this + 208);
  DgnIArray<Utterance *>::~DgnIArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);

  SearchItf::~SearchItf(this);
}

{
  *this = &unk_287525DC0;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 304);
  DgnIArray<Utterance *>::~DgnIArray(this + 288);
  DgnIArray<Utterance *>::~DgnIArray(this + 272);
  DgnIArray<Utterance *>::~DgnIArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnIArray<Utterance *>::~DgnIArray(this + 208);
  DgnIArray<Utterance *>::~DgnIArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);
  SearchItf::~SearchItf(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t FstSearchLatticeHash::getBestScoreThisFrame(FstSearchLatticeHash *this)
{
  v1 = *(this + 58);
  if (v1 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v1;
  }
}

void FstSearchDurationHashBackoff::~FstSearchDurationHashBackoff(FstSearchDurationHashBackoff *this)
{
  *this = &unk_2875246B0;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 328);
  DgnIArray<Utterance *>::~DgnIArray(this + 312);
  DgnIArray<Utterance *>::~DgnIArray(this + 296);
  DgnIArray<Utterance *>::~DgnIArray(this + 280);
  DgnIArray<Utterance *>::~DgnIArray(this + 264);
  DgnIArray<Utterance *>::~DgnIArray(this + 232);
  DgnIArray<Utterance *>::~DgnIArray(this + 216);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);

  SearchItf::~SearchItf(this);
}

{
  *this = &unk_2875246B0;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 328);
  DgnIArray<Utterance *>::~DgnIArray(this + 312);
  DgnIArray<Utterance *>::~DgnIArray(this + 296);
  DgnIArray<Utterance *>::~DgnIArray(this + 280);
  DgnIArray<Utterance *>::~DgnIArray(this + 264);
  DgnIArray<Utterance *>::~DgnIArray(this + 232);
  DgnIArray<Utterance *>::~DgnIArray(this + 216);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);
  SearchItf::~SearchItf(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t FstSearchDurationHashBackoff::getBestScoreThisFrame(FstSearchDurationHashBackoff *this)
{
  v1 = *(this + 64);
  if (v1 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v1;
  }
}

void FstSearchDurationHash::~FstSearchDurationHash(FstSearchDurationHash *this)
{
  *this = &unk_287525868;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 328);
  DgnIArray<Utterance *>::~DgnIArray(this + 312);
  DgnIArray<Utterance *>::~DgnIArray(this + 296);
  DgnIArray<Utterance *>::~DgnIArray(this + 280);
  DgnIArray<Utterance *>::~DgnIArray(this + 264);
  DgnIArray<Utterance *>::~DgnIArray(this + 232);
  DgnIArray<Utterance *>::~DgnIArray(this + 216);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);

  SearchItf::~SearchItf(this);
}

{
  *this = &unk_287525868;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 328);
  DgnIArray<Utterance *>::~DgnIArray(this + 312);
  DgnIArray<Utterance *>::~DgnIArray(this + 296);
  DgnIArray<Utterance *>::~DgnIArray(this + 280);
  DgnIArray<Utterance *>::~DgnIArray(this + 264);
  DgnIArray<Utterance *>::~DgnIArray(this + 232);
  DgnIArray<Utterance *>::~DgnIArray(this + 216);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);
  SearchItf::~SearchItf(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t FstSearchDurationHash::getBestScoreThisFrame(FstSearchDurationHash *this)
{
  v1 = *(this + 64);
  if (v1 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v1;
  }
}

void FstSearchHashBackoff::~FstSearchHashBackoff(FstSearchHashBackoff *this)
{
  *this = &unk_287525F60;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 304);
  DgnIArray<Utterance *>::~DgnIArray(this + 288);
  DgnIArray<Utterance *>::~DgnIArray(this + 272);
  DgnIArray<Utterance *>::~DgnIArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnIArray<Utterance *>::~DgnIArray(this + 208);
  DgnIArray<Utterance *>::~DgnIArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);

  SearchItf::~SearchItf(this);
}

{
  *this = &unk_287525F60;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 304);
  DgnIArray<Utterance *>::~DgnIArray(this + 288);
  DgnIArray<Utterance *>::~DgnIArray(this + 272);
  DgnIArray<Utterance *>::~DgnIArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnIArray<Utterance *>::~DgnIArray(this + 208);
  DgnIArray<Utterance *>::~DgnIArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);
  SearchItf::~SearchItf(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t FstSearchHashBackoff::getBestScoreThisFrame(FstSearchHashBackoff *this)
{
  v1 = *(this + 58);
  if (v1 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v1;
  }
}

void FstSearchHash::~FstSearchHash(FstSearchHash *this)
{
  *this = &unk_2875286C8;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 304);
  DgnIArray<Utterance *>::~DgnIArray(this + 288);
  DgnIArray<Utterance *>::~DgnIArray(this + 272);
  DgnIArray<Utterance *>::~DgnIArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnIArray<Utterance *>::~DgnIArray(this + 208);
  DgnIArray<Utterance *>::~DgnIArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);

  SearchItf::~SearchItf(this);
}

{
  *this = &unk_2875286C8;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 304);
  DgnIArray<Utterance *>::~DgnIArray(this + 288);
  DgnIArray<Utterance *>::~DgnIArray(this + 272);
  DgnIArray<Utterance *>::~DgnIArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnIArray<Utterance *>::~DgnIArray(this + 208);
  DgnIArray<Utterance *>::~DgnIArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);
  SearchItf::~SearchItf(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t FstSearchHash::getBestScoreThisFrame(FstSearchHash *this)
{
  v1 = *(this + 58);
  if (v1 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v1;
  }
}

void FstSearchLeafLatticeDurationBackoff::~FstSearchLeafLatticeDurationBackoff(FstSearchLeafLatticeDurationBackoff *this)
{
  *this = &unk_287524270;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 376);
  DgnIArray<Utterance *>::~DgnIArray(this + 360);
  DgnIArray<Utterance *>::~DgnIArray(this + 344);
  DgnIArray<Utterance *>::~DgnIArray(this + 328);
  DgnIArray<Utterance *>::~DgnIArray(this + 312);
  DgnIArray<Utterance *>::~DgnIArray(this + 280);
  DgnIArray<Utterance *>::~DgnIArray(this + 264);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 248);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 232);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 216);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);

  SearchItf::~SearchItf(this);
}

{
  *this = &unk_287524270;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 376);
  DgnIArray<Utterance *>::~DgnIArray(this + 360);
  DgnIArray<Utterance *>::~DgnIArray(this + 344);
  DgnIArray<Utterance *>::~DgnIArray(this + 328);
  DgnIArray<Utterance *>::~DgnIArray(this + 312);
  DgnIArray<Utterance *>::~DgnIArray(this + 280);
  DgnIArray<Utterance *>::~DgnIArray(this + 264);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 248);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 232);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 216);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);
  SearchItf::~SearchItf(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t FstSearchLeafLatticeDurationBackoff::getBestScoreThisFrame(FstSearchLeafLatticeDurationBackoff *this)
{
  v1 = *(this + 76);
  if (v1 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v1;
  }
}

void FstSearchLeafLatticeDuration::~FstSearchLeafLatticeDuration(FstSearchLeafLatticeDuration *this)
{
  *this = &unk_287524510;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 376);
  DgnIArray<Utterance *>::~DgnIArray(this + 360);
  DgnIArray<Utterance *>::~DgnIArray(this + 344);
  DgnIArray<Utterance *>::~DgnIArray(this + 328);
  DgnIArray<Utterance *>::~DgnIArray(this + 312);
  DgnIArray<Utterance *>::~DgnIArray(this + 280);
  DgnIArray<Utterance *>::~DgnIArray(this + 264);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 248);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 232);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 216);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);

  SearchItf::~SearchItf(this);
}

{
  *this = &unk_287524510;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 376);
  DgnIArray<Utterance *>::~DgnIArray(this + 360);
  DgnIArray<Utterance *>::~DgnIArray(this + 344);
  DgnIArray<Utterance *>::~DgnIArray(this + 328);
  DgnIArray<Utterance *>::~DgnIArray(this + 312);
  DgnIArray<Utterance *>::~DgnIArray(this + 280);
  DgnIArray<Utterance *>::~DgnIArray(this + 264);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 248);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 232);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 216);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);
  SearchItf::~SearchItf(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t FstSearchLeafLatticeDuration::getBestScoreThisFrame(FstSearchLeafLatticeDuration *this)
{
  v1 = *(this + 76);
  if (v1 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v1;
  }
}

void FstSearchLeafLatticeBackoff::~FstSearchLeafLatticeBackoff(FstSearchLeafLatticeBackoff *this)
{
  *this = &unk_287524880;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 352);
  DgnIArray<Utterance *>::~DgnIArray(this + 336);
  DgnIArray<Utterance *>::~DgnIArray(this + 320);
  DgnIArray<Utterance *>::~DgnIArray(this + 304);
  DgnIArray<Utterance *>::~DgnIArray(this + 288);
  DgnIArray<Utterance *>::~DgnIArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 224);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 208);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);

  SearchItf::~SearchItf(this);
}

{
  *this = &unk_287524880;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 352);
  DgnIArray<Utterance *>::~DgnIArray(this + 336);
  DgnIArray<Utterance *>::~DgnIArray(this + 320);
  DgnIArray<Utterance *>::~DgnIArray(this + 304);
  DgnIArray<Utterance *>::~DgnIArray(this + 288);
  DgnIArray<Utterance *>::~DgnIArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 224);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 208);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);
  SearchItf::~SearchItf(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t FstSearchLeafLatticeBackoff::getBestScoreThisFrame(FstSearchLeafLatticeBackoff *this)
{
  v1 = *(this + 70);
  if (v1 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v1;
  }
}

void FstSearchLeafLattice::~FstSearchLeafLattice(FstSearchLeafLattice *this)
{
  *this = &unk_287525C20;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 352);
  DgnIArray<Utterance *>::~DgnIArray(this + 336);
  DgnIArray<Utterance *>::~DgnIArray(this + 320);
  DgnIArray<Utterance *>::~DgnIArray(this + 304);
  DgnIArray<Utterance *>::~DgnIArray(this + 288);
  DgnIArray<Utterance *>::~DgnIArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 224);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 208);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);

  SearchItf::~SearchItf(this);
}

{
  *this = &unk_287525C20;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 352);
  DgnIArray<Utterance *>::~DgnIArray(this + 336);
  DgnIArray<Utterance *>::~DgnIArray(this + 320);
  DgnIArray<Utterance *>::~DgnIArray(this + 304);
  DgnIArray<Utterance *>::~DgnIArray(this + 288);
  DgnIArray<Utterance *>::~DgnIArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 224);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 208);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);
  SearchItf::~SearchItf(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t FstSearchLeafLattice::getBestScoreThisFrame(FstSearchLeafLattice *this)
{
  v1 = *(this + 70);
  if (v1 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v1;
  }
}

void FstSearchLatticeDurationBackoff::~FstSearchLatticeDurationBackoff(FstSearchLatticeDurationBackoff *this)
{
  *this = &unk_287524370;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 328);
  DgnIArray<Utterance *>::~DgnIArray(this + 312);
  DgnIArray<Utterance *>::~DgnIArray(this + 296);
  DgnIArray<Utterance *>::~DgnIArray(this + 280);
  DgnIArray<Utterance *>::~DgnIArray(this + 264);
  DgnIArray<Utterance *>::~DgnIArray(this + 232);
  DgnIArray<Utterance *>::~DgnIArray(this + 216);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);

  SearchItf::~SearchItf(this);
}

{
  *this = &unk_287524370;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 328);
  DgnIArray<Utterance *>::~DgnIArray(this + 312);
  DgnIArray<Utterance *>::~DgnIArray(this + 296);
  DgnIArray<Utterance *>::~DgnIArray(this + 280);
  DgnIArray<Utterance *>::~DgnIArray(this + 264);
  DgnIArray<Utterance *>::~DgnIArray(this + 232);
  DgnIArray<Utterance *>::~DgnIArray(this + 216);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);
  SearchItf::~SearchItf(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t FstSearchLatticeDurationBackoff::getBestScoreThisFrame(FstSearchLatticeDurationBackoff *this)
{
  v1 = *(this + 64);
  if (v1 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v1;
  }
}

void FstSearchLatticeDuration::~FstSearchLatticeDuration(FstSearchLatticeDuration *this)
{
  *this = &unk_287524D00;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 328);
  DgnIArray<Utterance *>::~DgnIArray(this + 312);
  DgnIArray<Utterance *>::~DgnIArray(this + 296);
  DgnIArray<Utterance *>::~DgnIArray(this + 280);
  DgnIArray<Utterance *>::~DgnIArray(this + 264);
  DgnIArray<Utterance *>::~DgnIArray(this + 232);
  DgnIArray<Utterance *>::~DgnIArray(this + 216);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);

  SearchItf::~SearchItf(this);
}

{
  *this = &unk_287524D00;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 328);
  DgnIArray<Utterance *>::~DgnIArray(this + 312);
  DgnIArray<Utterance *>::~DgnIArray(this + 296);
  DgnIArray<Utterance *>::~DgnIArray(this + 280);
  DgnIArray<Utterance *>::~DgnIArray(this + 264);
  DgnIArray<Utterance *>::~DgnIArray(this + 232);
  DgnIArray<Utterance *>::~DgnIArray(this + 216);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);
  SearchItf::~SearchItf(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t FstSearchLatticeDuration::getBestScoreThisFrame(FstSearchLatticeDuration *this)
{
  v1 = *(this + 64);
  if (v1 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v1;
  }
}

void FstSearchLateLatticeBackoff::~FstSearchLateLatticeBackoff(FstSearchLateLatticeBackoff *this)
{
  *this = &unk_287524A20;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 304);
  DgnIArray<Utterance *>::~DgnIArray(this + 288);
  DgnIArray<Utterance *>::~DgnIArray(this + 272);
  DgnIArray<Utterance *>::~DgnIArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnIArray<Utterance *>::~DgnIArray(this + 208);
  DgnIArray<Utterance *>::~DgnIArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);

  SearchItf::~SearchItf(this);
}

{
  *this = &unk_287524A20;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 304);
  DgnIArray<Utterance *>::~DgnIArray(this + 288);
  DgnIArray<Utterance *>::~DgnIArray(this + 272);
  DgnIArray<Utterance *>::~DgnIArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnIArray<Utterance *>::~DgnIArray(this + 208);
  DgnIArray<Utterance *>::~DgnIArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);
  SearchItf::~SearchItf(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t FstSearchLateLatticeBackoff::getBestScoreThisFrame(FstSearchLateLatticeBackoff *this)
{
  v1 = *(this + 58);
  if (v1 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v1;
  }
}

void FstSearchLateLattice::~FstSearchLateLattice(FstSearchLateLattice *this)
{
  *this = &unk_287525E90;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 304);
  DgnIArray<Utterance *>::~DgnIArray(this + 288);
  DgnIArray<Utterance *>::~DgnIArray(this + 272);
  DgnIArray<Utterance *>::~DgnIArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnIArray<Utterance *>::~DgnIArray(this + 208);
  DgnIArray<Utterance *>::~DgnIArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);

  SearchItf::~SearchItf(this);
}

{
  *this = &unk_287525E90;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 304);
  DgnIArray<Utterance *>::~DgnIArray(this + 288);
  DgnIArray<Utterance *>::~DgnIArray(this + 272);
  DgnIArray<Utterance *>::~DgnIArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnIArray<Utterance *>::~DgnIArray(this + 208);
  DgnIArray<Utterance *>::~DgnIArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);
  SearchItf::~SearchItf(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t FstSearchLateLattice::getBestScoreThisFrame(FstSearchLateLattice *this)
{
  v1 = *(this + 58);
  if (v1 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v1;
  }
}

void FstSearchLatticeBackoff::~FstSearchLatticeBackoff(FstSearchLatticeBackoff *this)
{
  *this = &unk_287525300;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 304);
  DgnIArray<Utterance *>::~DgnIArray(this + 288);
  DgnIArray<Utterance *>::~DgnIArray(this + 272);
  DgnIArray<Utterance *>::~DgnIArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnIArray<Utterance *>::~DgnIArray(this + 208);
  DgnIArray<Utterance *>::~DgnIArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);

  SearchItf::~SearchItf(this);
}

{
  *this = &unk_287525300;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 304);
  DgnIArray<Utterance *>::~DgnIArray(this + 288);
  DgnIArray<Utterance *>::~DgnIArray(this + 272);
  DgnIArray<Utterance *>::~DgnIArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnIArray<Utterance *>::~DgnIArray(this + 208);
  DgnIArray<Utterance *>::~DgnIArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);
  SearchItf::~SearchItf(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t FstSearchLatticeBackoff::getBestScoreThisFrame(FstSearchLatticeBackoff *this)
{
  v1 = *(this + 58);
  if (v1 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v1;
  }
}

void FstSearchLattice::~FstSearchLattice(FstSearchLattice *this)
{
  *this = &unk_2875273E8;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 304);
  DgnIArray<Utterance *>::~DgnIArray(this + 288);
  DgnIArray<Utterance *>::~DgnIArray(this + 272);
  DgnIArray<Utterance *>::~DgnIArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnIArray<Utterance *>::~DgnIArray(this + 208);
  DgnIArray<Utterance *>::~DgnIArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);

  SearchItf::~SearchItf(this);
}

{
  *this = &unk_2875273E8;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 304);
  DgnIArray<Utterance *>::~DgnIArray(this + 288);
  DgnIArray<Utterance *>::~DgnIArray(this + 272);
  DgnIArray<Utterance *>::~DgnIArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnIArray<Utterance *>::~DgnIArray(this + 208);
  DgnIArray<Utterance *>::~DgnIArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);
  SearchItf::~SearchItf(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t FstSearchLattice::getBestScoreThisFrame(FstSearchLattice *this)
{
  v1 = *(this + 58);
  if (v1 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v1;
  }
}

void FstSearchLeafDurationBackoff::~FstSearchLeafDurationBackoff(FstSearchLeafDurationBackoff *this)
{
  *this = &unk_2875245E0;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 376);
  DgnIArray<Utterance *>::~DgnIArray(this + 360);
  DgnIArray<Utterance *>::~DgnIArray(this + 344);
  DgnIArray<Utterance *>::~DgnIArray(this + 328);
  DgnIArray<Utterance *>::~DgnIArray(this + 312);
  DgnIArray<Utterance *>::~DgnIArray(this + 280);
  DgnIArray<Utterance *>::~DgnIArray(this + 264);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 248);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 232);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 216);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);

  SearchItf::~SearchItf(this);
}

{
  *this = &unk_2875245E0;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 376);
  DgnIArray<Utterance *>::~DgnIArray(this + 360);
  DgnIArray<Utterance *>::~DgnIArray(this + 344);
  DgnIArray<Utterance *>::~DgnIArray(this + 328);
  DgnIArray<Utterance *>::~DgnIArray(this + 312);
  DgnIArray<Utterance *>::~DgnIArray(this + 280);
  DgnIArray<Utterance *>::~DgnIArray(this + 264);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 248);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 232);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 216);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);
  SearchItf::~SearchItf(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t FstSearchLeafDurationBackoff::getBestScoreThisFrame(FstSearchLeafDurationBackoff *this)
{
  v1 = *(this + 76);
  if (v1 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v1;
  }
}

void FstSearchLeafDuration::~FstSearchLeafDuration(FstSearchLeafDuration *this)
{
  *this = &unk_287525798;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 376);
  DgnIArray<Utterance *>::~DgnIArray(this + 360);
  DgnIArray<Utterance *>::~DgnIArray(this + 344);
  DgnIArray<Utterance *>::~DgnIArray(this + 328);
  DgnIArray<Utterance *>::~DgnIArray(this + 312);
  DgnIArray<Utterance *>::~DgnIArray(this + 280);
  DgnIArray<Utterance *>::~DgnIArray(this + 264);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 248);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 232);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 216);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);

  SearchItf::~SearchItf(this);
}

{
  *this = &unk_287525798;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 376);
  DgnIArray<Utterance *>::~DgnIArray(this + 360);
  DgnIArray<Utterance *>::~DgnIArray(this + 344);
  DgnIArray<Utterance *>::~DgnIArray(this + 328);
  DgnIArray<Utterance *>::~DgnIArray(this + 312);
  DgnIArray<Utterance *>::~DgnIArray(this + 280);
  DgnIArray<Utterance *>::~DgnIArray(this + 264);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 248);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 232);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 216);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);
  SearchItf::~SearchItf(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t FstSearchLeafDuration::getBestScoreThisFrame(FstSearchLeafDuration *this)
{
  v1 = *(this + 76);
  if (v1 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v1;
  }
}

void FstSearchDurationBackoff::~FstSearchDurationBackoff(FstSearchDurationBackoff *this)
{
  *this = &unk_287524EA0;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 328);
  DgnIArray<Utterance *>::~DgnIArray(this + 312);
  DgnIArray<Utterance *>::~DgnIArray(this + 296);
  DgnIArray<Utterance *>::~DgnIArray(this + 280);
  DgnIArray<Utterance *>::~DgnIArray(this + 264);
  DgnIArray<Utterance *>::~DgnIArray(this + 232);
  DgnIArray<Utterance *>::~DgnIArray(this + 216);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);

  SearchItf::~SearchItf(this);
}

{
  *this = &unk_287524EA0;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 328);
  DgnIArray<Utterance *>::~DgnIArray(this + 312);
  DgnIArray<Utterance *>::~DgnIArray(this + 296);
  DgnIArray<Utterance *>::~DgnIArray(this + 280);
  DgnIArray<Utterance *>::~DgnIArray(this + 264);
  DgnIArray<Utterance *>::~DgnIArray(this + 232);
  DgnIArray<Utterance *>::~DgnIArray(this + 216);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);
  SearchItf::~SearchItf(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t FstSearchDurationBackoff::getBestScoreThisFrame(FstSearchDurationBackoff *this)
{
  v1 = *(this + 64);
  if (v1 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v1;
  }
}

void FstSearchDuration::~FstSearchDuration(FstSearchDuration *this)
{
  *this = &unk_287527120;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 328);
  DgnIArray<Utterance *>::~DgnIArray(this + 312);
  DgnIArray<Utterance *>::~DgnIArray(this + 296);
  DgnIArray<Utterance *>::~DgnIArray(this + 280);
  DgnIArray<Utterance *>::~DgnIArray(this + 264);
  DgnIArray<Utterance *>::~DgnIArray(this + 232);
  DgnIArray<Utterance *>::~DgnIArray(this + 216);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);

  SearchItf::~SearchItf(this);
}

{
  *this = &unk_287527120;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 328);
  DgnIArray<Utterance *>::~DgnIArray(this + 312);
  DgnIArray<Utterance *>::~DgnIArray(this + 296);
  DgnIArray<Utterance *>::~DgnIArray(this + 280);
  DgnIArray<Utterance *>::~DgnIArray(this + 264);
  DgnIArray<Utterance *>::~DgnIArray(this + 232);
  DgnIArray<Utterance *>::~DgnIArray(this + 216);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);
  SearchItf::~SearchItf(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t FstSearchDuration::getBestScoreThisFrame(FstSearchDuration *this)
{
  v1 = *(this + 64);
  if (v1 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v1;
  }
}

void FstSearchLeafBackoff::~FstSearchLeafBackoff(FstSearchLeafBackoff *this)
{
  *this = &unk_287525CF0;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 352);
  DgnIArray<Utterance *>::~DgnIArray(this + 336);
  DgnIArray<Utterance *>::~DgnIArray(this + 320);
  DgnIArray<Utterance *>::~DgnIArray(this + 304);
  DgnIArray<Utterance *>::~DgnIArray(this + 288);
  DgnIArray<Utterance *>::~DgnIArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 224);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 208);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);

  SearchItf::~SearchItf(this);
}

{
  *this = &unk_287525CF0;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 352);
  DgnIArray<Utterance *>::~DgnIArray(this + 336);
  DgnIArray<Utterance *>::~DgnIArray(this + 320);
  DgnIArray<Utterance *>::~DgnIArray(this + 304);
  DgnIArray<Utterance *>::~DgnIArray(this + 288);
  DgnIArray<Utterance *>::~DgnIArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 224);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 208);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);
  SearchItf::~SearchItf(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t FstSearchLeafBackoff::getBestScoreThisFrame(FstSearchLeafBackoff *this)
{
  v1 = *(this + 70);
  if (v1 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v1;
  }
}

void FstSearchLeaf::~FstSearchLeaf(FstSearchLeaf *this)
{
  *this = &unk_2875285F8;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 352);
  DgnIArray<Utterance *>::~DgnIArray(this + 336);
  DgnIArray<Utterance *>::~DgnIArray(this + 320);
  DgnIArray<Utterance *>::~DgnIArray(this + 304);
  DgnIArray<Utterance *>::~DgnIArray(this + 288);
  DgnIArray<Utterance *>::~DgnIArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 224);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 208);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);

  SearchItf::~SearchItf(this);
}

{
  *this = &unk_2875285F8;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 352);
  DgnIArray<Utterance *>::~DgnIArray(this + 336);
  DgnIArray<Utterance *>::~DgnIArray(this + 320);
  DgnIArray<Utterance *>::~DgnIArray(this + 304);
  DgnIArray<Utterance *>::~DgnIArray(this + 288);
  DgnIArray<Utterance *>::~DgnIArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 224);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 208);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);
  SearchItf::~SearchItf(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t FstSearchLeaf::getBestScoreThisFrame(FstSearchLeaf *this)
{
  v1 = *(this + 70);
  if (v1 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v1;
  }
}

void FstSearchBackoff::~FstSearchBackoff(FstSearchBackoff *this)
{
  *this = &unk_2875274B8;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 304);
  DgnIArray<Utterance *>::~DgnIArray(this + 288);
  DgnIArray<Utterance *>::~DgnIArray(this + 272);
  DgnIArray<Utterance *>::~DgnIArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnIArray<Utterance *>::~DgnIArray(this + 208);
  DgnIArray<Utterance *>::~DgnIArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);

  SearchItf::~SearchItf(this);
}

{
  *this = &unk_2875274B8;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 304);
  DgnIArray<Utterance *>::~DgnIArray(this + 288);
  DgnIArray<Utterance *>::~DgnIArray(this + 272);
  DgnIArray<Utterance *>::~DgnIArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnIArray<Utterance *>::~DgnIArray(this + 208);
  DgnIArray<Utterance *>::~DgnIArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);
  SearchItf::~SearchItf(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t FstSearchBackoff::getBestScoreThisFrame(FstSearchBackoff *this)
{
  v1 = *(this + 58);
  if (v1 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v1;
  }
}

void FstSearch::~FstSearch(FstSearch *this)
{
  *this = &unk_287523008;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 304);
  DgnIArray<Utterance *>::~DgnIArray(this + 288);
  DgnIArray<Utterance *>::~DgnIArray(this + 272);
  DgnIArray<Utterance *>::~DgnIArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnIArray<Utterance *>::~DgnIArray(this + 208);
  DgnIArray<Utterance *>::~DgnIArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);

  SearchItf::~SearchItf(this);
}

{
  *this = &unk_287523008;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 304);
  DgnIArray<Utterance *>::~DgnIArray(this + 288);
  DgnIArray<Utterance *>::~DgnIArray(this + 272);
  DgnIArray<Utterance *>::~DgnIArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnIArray<Utterance *>::~DgnIArray(this + 208);
  DgnIArray<Utterance *>::~DgnIArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);
  SearchItf::~SearchItf(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t FstSearch::getBestScoreThisFrame(FstSearch *this)
{
  v1 = *(this + 58);
  if (v1 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v1;
  }
}

__n128 WordLatticeLC::WordLatticeLC(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  *(a1 + 8) = 0xBFF0000000000000;
  *(a1 + 16) = a3;
  *(a1 + 20) = a4;
  *(a1 + 24) = a5;
  *(a1 + 28) = *a6;
  *(a1 + 44) = *(a6 + 16);
  *(a1 + 52) = *(a6 + 24);
  *(a1 + 56) = xmmword_26287F8A0;
  *(a1 + 72) = 0;
  *(a1 + 80) = -1;
  *a1 = &unk_2875281A8;
  *(a1 + 88) = *a2;
  *(a1 + 92) = *(a2 + 4);
  *(a1 + 94) = *(a2 + 6);
  result = *(a2 + 8);
  *(a1 + 96) = result;
  return result;
}

unint64_t DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 36 * v6, 36 * v5, 36 * v5, 1);
  *(a1 + 12) = result / 0x24;
  *a1 = v8;
  return result;
}

uint64_t HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::HashProbeKEV(uint64_t a1, const char *a2, int a3)
{
  HashProbeBase::HashProbeBase(a1, a2);
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v6 = RoundUpToPowerOf2(a3, (v5 + 8));
  *a1 = 0;
  *(a1 + 4) = v6;
  HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::initBuckets(a1);
  *(a1 + 32) = 0;
  return a1;
}

void sub_26266B300(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

unsigned int *HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::initBuckets(unsigned int *result)
{
  v1 = result;
  v2 = result[1];
  v3 = result[7];
  if (v2 <= v3)
  {
    result[6] = v2;
    if (!v2)
    {
      return result;
    }
  }

  else
  {
    DgnPrimArray<unsigned long long>::reallocElts((result + 4), v2 - v3, 0);
    v1[6] = v2;
  }

  v4 = *(v1 + 2);

  return memset(v4, 255, 8 * v2);
}

unint64_t DgnArray<WordLatticeLC>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 112 * v6, 112 * v5, 112 * v5, 1);
  *(a1 + 12) = ((result >> 4) * 0x2492492492492493uLL) >> 64;
  *a1 = v8;
  return result;
}

unint64_t DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 20 * v6, 20 * v5, 20 * v5, 1);
  *(a1 + 12) = result / 0x14;
  *a1 = v8;
  return result;
}

unint64_t DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 28 * v6, 28 * v5, 28 * v5, 1);
  *(a1 + 12) = result / 0x1C;
  *a1 = v8;
  return result;
}

unint64_t DgnArray<FstSearchLeafLatticeDurationBackoffActiveToken>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 40 * v6, 40 * v5, 40 * v5, 1);
  *(a1 + 12) = result / 0x28;
  *a1 = v8;
  return result;
}

void MrecInitLibrary_mrecutil(void)
{
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_ddump_mrecutil();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_dmatrix_mrecutil();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_dsmset_mrecutil();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_dthread_mrecutil();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_filespec_mrecutil();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_generr_mrecutil();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_hashbase_mrecutil();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_memchunk_mrecutil();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_osfile_mrecutil();
  MrecInitModule_param_mrecutil();
  MrecInitModule_paramset_mrecutil();
  MrecInitModule_paramspec_mrecutil();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_timer_mrecutil();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_util_mrecutil();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();

  MrecInitModule_dcuda_mrecutil();
}

uint64_t MrecInitLibrary_recogctl(void)
{
  MrecInitModule_adaptctl_recogctl();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_model_recogctl();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_psholder_recogctl();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_recogctl_recogctl();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_recoggrm_recogctl();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();

  return MrecInitModule_sdpres_sdapi();
}

uint64_t MrecInitLibrarySet_throughRecogctl(void)
{
  MrecInitLibrarySet_throughPrefilt();
  MrecInitLibrarySet_throughChannel();
  MrecInitLibrarySet_throughFst();

  return MrecInitLibrary_recogctl();
}

void MrecInitLibrarySet_throughNeuralN(void)
{
  MrecInitLibrarySet_throughFrame();

  MrecInitModule_neuraln_neuraln();
}

uint64_t verifyLexiconHandle(unint64_t a1, const char *a2)
{
  Registry = TRegisterable<TLexicon>::getRegistry();
  v5 = TBaseRegistry<TTokenizer *>::find(Registry, a1);
  if (*(Registry + 16) == v5)
  {
    conditionalAssert(a2, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tplexicon.cpp", 33, v6, v7);
    exception = __cxa_allocate_exception(0x28uLL);
    v10 = a2;
    v11 = exception;
    std::string::basic_string[abi:ne200100]<0>(&v14, v10);
    *v11 = byte_287529580;
    v12 = (v11 + 1);
    if (SHIBYTE(v15) < 0)
    {
      std::string::__init_copy_ctor_external(v12, v14, *(&v14 + 1));
    }

    else
    {
      v13 = v14;
      v11[3] = v15;
      *&v12->__r_.__value_.__l.__data_ = v13;
    }

    *v11 = &unk_2875282E0;
    v11[4] = 3;
  }

  return *v5;
}

void sub_26266B8A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void TPLexicon_Open(uint64_t a1, uint64_t a2, uint64_t a3)
{
  TReentrancyHandler::TReentrancyHandler(&v21, "TPLexicon_Open");
  TLocaleHandler::TLocaleHandler(&v20);
  MrecInitModule_sdpres_sdapi();
  if (g_bInitialized)
  {
    verifyHandleArgument<SDhVoc_fake **>(a2, 0, "Bad input voc handle", v6, v7);
    verifyPointerArgument<TPLexiconHandle_fake **>(a3, 0, "Bad output lexicon handle pointer", v8, v9);
    verifyPointerArgument<TPDataSpec>(a1, 0, "Bad input static data spec", v10, v11);
    makeDataManager(a1, 1, v12, v13, v14);
    operator new();
  }

  conditionalAssert("Not initialized", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tplexicon.cpp", 57, v6, v7);
  exception = __cxa_allocate_exception(0x28uLL);
  std::string::basic_string[abi:ne200100]<0>(&v18, "Not initialized");
  *exception = byte_287529580;
  v16 = (exception + 1);
  if (SHIBYTE(v19) < 0)
  {
    std::string::__init_copy_ctor_external(v16, v18, *(&v18 + 1));
  }

  else
  {
    v17 = v18;
    exception[3] = v19;
    *&v16->__r_.__value_.__l.__data_ = v17;
  }

  *exception = &unk_2875282E0;
  exception[4] = 4;
}

void sub_26266BB5C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  __cxa_end_catch();
  MrecInitModule_sdpres_sdapi();
  TLocaleHandler::~TLocaleHandler(va);
  TReentrancyHandler::ms_bIn = 0;
  switch(a2)
  {
    case 7:
      v11 = __cxa_begin_catch(a1);
      v12 = v11 + 8;
      if (v11[31] < 0)
      {
        v12 = *v12;
      }

      handleException(v12, "TPLexicon_Open", *(v11 + 4), v9, v10);
      break;
    case 6:
      v15 = __cxa_begin_catch(a1);
      v16 = v15 + 8;
      if (v15[31] < 0)
      {
        v16 = *v16;
      }

      handleException(v16, "TPLexicon_Open", 6, v13, v14);
      break;
    case 5:
      v19 = __cxa_begin_catch(a1);
      v20 = v19 + 8;
      if (v19[31] < 0)
      {
        v20 = *v20;
      }

LABEL_12:
      handleException(v20, "TPLexicon_Open", 2, v17, v18);
      break;
    case 4:
      v23 = __cxa_begin_catch(a1);
      v24 = v23 + 8;
      if (v23[31] < 0)
      {
        v24 = *v24;
      }

      handleException(v24, "TPLexicon_Open", 11, v21, v22);
      break;
    case 3:
      v25 = __cxa_begin_catch(a1);
      v20 = v25 + 8;
      if (v25[31] < 0)
      {
        v20 = *v20;
      }

      goto LABEL_12;
    case 2:
      v26 = __cxa_begin_catch(a1);
      v27 = (*(*v26 + 16))(v26);
      handleException(v27, "TPLexicon_Open", 1, v28, v29);
      break;
    case 1:
      v30 = __cxa_begin_catch(a1);
      v31 = (*(*v30 + 16))(v30);
      handleException(v31, "TPLexicon_Open", 2, v32, v33);
      break;
    default:
      JUMPOUT(0x26266BD90);
  }

  __cxa_end_catch();
  JUMPOUT(0x26266B9D4);
}

uint64_t verifyHandleArgument<SDhVoc_fake **>(uint64_t result, char a2, char *a3, uint64_t a4, uint64_t a5)
{
  if (result != -1)
  {
    a2 = 1;
  }

  if (!result || (a2 & 1) == 0)
  {
    conditionalAssert(a3, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/api.h", 339, a4, a5);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, a3);
    *exception = byte_287529580;
    v8 = (exception + 1);
    if (SHIBYTE(v11) < 0)
    {
      std::string::__init_copy_ctor_external(v8, v10, *(&v10 + 1));
    }

    else
    {
      v9 = v10;
      exception[3] = v11;
      *&v8->__r_.__value_.__l.__data_ = v9;
    }

    *exception = &unk_2875282E0;
    exception[4] = 3;
  }

  return result;
}

void sub_26266BE9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t verifyPointerArgument<TPLexiconHandle_fake **>(uint64_t result, char a2, char *a3, uint64_t a4, uint64_t a5)
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

void sub_26266BFCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t verifyPointerArgument<TPDataSpec>(uint64_t result, char a2, char *a3, uint64_t a4, uint64_t a5)
{
  if (!result && (a2 & 1) == 0)
  {
    conditionalAssert(a3, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/api.h", 288, a4, a5);
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