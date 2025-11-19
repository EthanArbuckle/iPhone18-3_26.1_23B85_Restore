uint64_t FstSearchDurationHashBackoff::collectTraces(FstSearchDurationHashBackoff *this)
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

  v11 = *(this + 56);
  if (v11)
  {
    v12 = 0;
    v13 = (*(this + 27) + 8);
    do
    {
      v15 = *v13;
      v13 += 7;
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
    goto LABEL_38;
  }

  v17 = 28 * v16 - 12;
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

    v17 -= 28;
  }

  while (v17 != -12);
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
          v27 = (v25 + 28 * v24);
          v28 = *v26;
          *(v27 + 12) = *(v26 + 12);
          *v27 = v28;
          v25 = *(this + 20);
        }

        v29 = v25 + 28 * v24;
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
      v22 += 28;
    }

    while (v23 < v21);
    v33 = *(this + 43);
    if (v24 > v33)
    {
      DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 160, v24 - v33, 0);
      v21 = *(this + 42);
    }

    if (v21 < v24)
    {
      v34 = v24 - v21;
      v35 = (*(this + 20) + 28 * v21 + 24);
      do
      {
        *(v35 - 6) = xmmword_26287F860;
        *(v35 - 1) = 0xFFFFFFFFLL;
        *v35 = 0;
        v35 += 7;
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
  v36 = *(this + 56);
  if (v36)
  {
    v37 = v41;
    v38 = (*(this + 27) + 8);
    do
    {
      v39 = *v38;
      if (v39 != -1)
      {
        *v38 = *(v37 + v39);
      }

      v38 += 7;
      --v36;
    }

    while (v36);
  }

  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v41);
}

int64x2_t FstSearchDurationHashBackoff::vite(int64x2_t **this, int a2, int a3, SearchStats *a4, int a5)
{
  FstSearchDurationHashBackoff::advanceDeltas(this, a2, a3, a4, a5);
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
        FstSearchDurationHashBackoff::collectTraces(this);
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

int64x2_t FstSearchDurationHashBackoff::reset(FstSearchDurationHashBackoff *this)
{
  *(this + 42) = 0;
  *(this + 46) = 0;
  *(this + 56) = 0;
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

double FstSearchDurationHashBackoff::doFrame(int64x2_t **this, int a2, int a3, SearchStats *a4, int a5)
{
  if (a3 >= 20000)
  {
    a3 = 20000;
  }

  *&result = FstSearchDurationHashBackoff::vite(this, a2, a3, a4, a5).u64[0];
  return result;
}

uint64_t FstSearchDurationHashBackoff::beginTopRecPassSyncRecog(FstSearchDurationHashBackoff *this, PelScorer *a2, const ArcGraph *a3)
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

uint64_t FstSearchDurationHashBackoff::endTopRecPassSyncRecog(int64x2_t **this)
{
  v10 = 0u;
  v11 = 0u;
  SnapTime::recordTime(&v10, 1, 0, 0, 0);
  FstSearchDurationHashBackoff::generateTraceTokensFromTraces(this);
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
  *(this + 64) = 1879048192;
  return SearchItf::endTopRecPassSyncRecogBase(this);
}

void FstSearchDurationHashBackoff::printSize(FstSearchDurationHashBackoff *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
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
  v45 = 28 * v44;
  if (v44 <= 0)
  {
    v45 = 0;
  }

  v46 = v45 + v43;
  v47 = v45 + v43 + 28 * (*(this + 43) - v44);
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

  v64 = *(this + 56);
  v65 = 26 * v64;
  if (v64 <= 0)
  {
    v65 = 0;
  }

  v66 = v65 + v63;
  v67 = v65 + v63 + 26 * (*(this + 57) - v64);
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
  v75 = 26 * v74;
  if (v74 <= 0)
  {
    v75 = 0;
  }

  v76 = v75 + v73;
  v77 = v75 + v73 + 26 * (*(this + 61) - v74);
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

uint64_t FstSearchDurationHashBackoff::getBestTrace(uint64_t a1, void *a2, void *a3, int a4)
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 152);
  }

  v5 = *(a1 + 224);
  if (v4 >= v5)
  {
    goto LABEL_21;
  }

  v6 = 28 * v4;
  v7 = 1879048192;
  v8 = 0xFFFFFFFFLL;
  do
  {
    v9 = *(a1 + 216);
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

    v11 = *(a1 + 160) + 28 * v10;
    v12 = *(v11 + 12) + *(*(a1 + 88) + 4 * *(v11 + 4));
    v13 = v7 <= v12;
    if (v7 >= v12)
    {
      v7 = v12;
    }

    if (!v13)
    {
      v8 = v10;
    }

    v5 = *(a1 + 224);
LABEL_19:
    ++v4;
    v6 += 28;
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
      if ((a4 & 1) != 0 || *(*(a1 + 160) + 28 * v14) == 16777213)
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

BOOL FstSearchDurationHashBackoff::findBestPath(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
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
  BestTrace = FstSearchDurationHashBackoff::getBestTrace(a1, a2, a3, 0);
  *a4 = 1879048192;
  if (BestTrace == -1)
  {
    return 0;
  }

  v13 = *(a1 + 160) + 28 * BestTrace;
  LODWORD(v13) = *(v13 + 12) + *(*(a1 + 88) + 4 * *(v13 + 4));
  *a4 = v13;
  return v13 != 1879048192;
}

unint64_t FstSearchDurationHashBackoff::createLatticeNodes(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
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
    v19 = 28 * v18;
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
        v31 = (v30 + 16 * *(v23 + v19 + 8));
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

          v39 = v23 + 28 * v32;
          v40 = *(*(a1 + 88) + 4 * *(v39 + 4));
          v41 = (v30 + 16 * *(v39 + 8));
          v42 = v24 + *v31 - v40 - *v41;
          LODWORD(v41) = v31[1] - v41[1];
          *v31 = v42;
          v31[1] = v41;
          *(v22 + v32) = 2;
        }
      }

      --v18;
      v19 -= 28;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t FstSearchDurationHashBackoff::buildWordLattice(uint64_t a1, unint64_t a2, void *a3, void *a4, char a5)
{
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v25, *(a1 + 168));
  v9 = MemChunkAlloc(0x28uLL, 0);
  HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::HashProbeKEV(v9, 0, 128);
  v9[4] = a2;
  FstSearchDurationHashBackoff::createLatticeNodes(a1, &v28, &v26, a2, v25, a3, a4);
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
        v14 = (*(a1 + 160) + 28 * v12);
        if ((*v14 - 16777209) >= 2)
        {
          v15 = *(a1 + 176) + 16 * v14[2];
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
            FstSearchDurationHashBackoff::createLatticeLink(a1, v12, v15, 0xFFFFFFFFLL, v18, *(v26 + 4 * (v13 - *(v28 + v12))), a2, v10, a5);
          }

          v19 = v25[0] + 16 * v12;
          if (*(v19 + 8))
          {
            v20 = 0;
            do
            {
              v21 = *(*v19 + 4 * v20);
              FstSearchDurationHashBackoff::createLatticeLink(a1, v12, v15, v21, v18, *(v26 + 4 * (v13 - *(v28 + v21))), a2, v10, a5);
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

void sub_26262E9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void FstSearchDurationHashBackoff::createLatticeLink(uint64_t a1, unsigned int a2, int *a3, uint64_t a4, uint64_t a5, const WordLatticeLC *a6, unint64_t a7, uint64_t a8, char a9)
{
  v11 = a5;
  v12 = a4;
  v16 = *(a1 + 160);
  if ((a4 & 0x80000000) != 0)
  {
    v17 = 0;
  }

  else if (*(*(a1 + 176) + 16 * *(v16 + 28 * a4 + 8) + 8) == a2)
  {
    v17 = (*(a1 + 176) + 16 * *(v16 + 28 * a4 + 8));
  }

  else
  {
    v17 = 0;
  }

  ArcGraph::lexToCWIDAC(*(a1 + 40), *(v16 + 28 * a2), a3, a4, a5, a6, a7, a8, v39);
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
    if ((v12 & 0x80000000) != 0)
    {
LABEL_11:
      v22 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v20 = *(a1 + 136);
    v21 = v18 - v20;
    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(a1 + 140);
  v21 -= v22;
LABEL_14:
  v23 = a3[3];
  if (v17)
  {
    v23 += v17[3];
  }

  v33 = v21;
  v34 = 0;
  v35 = v20;
  v36 = v19 - (v18 + v23);
  v37 = v23;
  v38 = v22;
  v24 = a3[2];
  v25 = *(a1 + 160);
  if (v24 != -1)
  {
    v26 = *(v25 + 28 * v24 + 4);
    if (a9)
    {
      v27 = (v26 - 1) / 2 + 1;
      goto LABEL_20;
    }

    v27 = v26 + 1;
LABEL_23:
    v28 = *(v25 + 28 * a2 + 4);
    v29 = v28 - v27 + 1;
    if ((v12 & 0x80000000) == 0)
    {
      v30 = *(v25 + 28 * v12 + 4);
      goto LABEL_25;
    }

LABEL_26:
    v31 = 0;
    goto LABEL_27;
  }

  v27 = 0;
  if (!a9)
  {
    goto LABEL_23;
  }

LABEL_20:
  v28 = (*(v25 + 28 * a2 + 4) - 1) / 2;
  v29 = v28 - v27 + 1;
  if ((v12 & 0x80000000) != 0)
  {
    goto LABEL_26;
  }

  v30 = (*(v25 + 28 * v12 + 4) - 1) / 2;
LABEL_25:
  v31 = v30 - v28;
LABEL_27:
  WordLatticeLC::WordLatticeLC(v32, v39, v27, v29, v31, &v33);
  Lattice<WordLatticeLC>::maybeCreateAndConnectLinkAvoidMultiLinks(a7, v11, a6, v32);
  WordLatticeLC::~WordLatticeLC(v32);
}

void sub_26262EC38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WordLatticeLC::~WordLatticeLC(va);
  _Unwind_Resume(a1);
}

uint64_t FstSearchDurationHashBackoff::beginTopRecSyncRecog(uint64_t this, VirtMap *a2)
{
  *(this + 112) = a2;
  if (*(this + 380) == 1)
  {
    return MiniFst::beginTopFstSyncRecog(this + 264);
  }

  return this;
}

uint64_t FstSearchDurationHashBackoff::endTopRecSyncRecog(FstSearchDurationHashBackoff *this)
{
  VirtMap::setEmpty(*(this + 14));
  result = *(this + 14);
  *(this + 14) = 0;
  return result;
}

uint64_t FstSearchDurationHashBackoff::getBestExitScore(FstSearchDurationHashBackoff *this)
{
  v17 = 0;
  v18 = 0;
  *(this + 63) = -1;
  v1 = *(this + 38);
  v2 = *(this + 56);
  if (v1 >= v2)
  {
    goto LABEL_16;
  }

  v4 = 0;
  v5 = 0;
  v6 = 28 * v1;
  do
  {
    v7 = *(this + 27) + v6;
    if (*(*(this + 5) + 160) == *(v7 + 4))
    {
      v8 = *(v7 + 8);
      if (v8 != -1 && *(*(this + 20) + 28 * v8 + 4) == *(this + 62))
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
        v2 = *(this + 56);
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
      v13 = v9 + 28 * v12;
      v14 = *(v13 + 12);
      if (v11 > v14)
      {
        *(this + 63) = *(v13 + 16);
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

uint64_t FstSearchDurationHashBackoff::getBestScoreMaybeUpdateFstNode(FstSearchDurationHashBackoff *this, Node *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v2 = *(this + 56);
  if (v2)
  {
    v3 = *(this + 27);
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

_DWORD *FstSearchDurationHashBackoff::seedTheory(FstSearchDurationHashBackoff *this, int a2, int a3, int a4, SearchStats *a5)
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
      DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 160, 1, 1);
      v11 = *(this + 42);
    }

    v12 = *(this + 20) + 28 * v11;
    *v12 = a4;
    *(v12 + 4) = a3;
    *(v12 + 8) = -1;
    *(v12 + 12) = a2;
    *(v12 + 16) = 0xFFFFFFFFLL;
    *(v12 + 24) = 0;
    v9 = *(this + 42);
    *(this + 42) = v9 + 1;
  }

  v13 = *(*(this + 5) + 144);
  v14 = *(this + 56);
  if (v14 == *(this + 57))
  {
    DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 216, 1, 1);
    v14 = *(this + 56);
  }

  v15 = *(this + 27) + 28 * v14;
  *v15 = a2;
  *(v15 + 4) = v13;
  *(v15 + 8) = v9;
  *(v15 + 12) = -2;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  LODWORD(v15) = *(this + 56) + 1;
  *(this + 56) = v15;
  *(this + 38) = v15;

  return FstSearchDurationHashBackoff::propagateNulls(this, 20000, a3, a5);
}

uint64_t FstSearchDurationHashBackoff::expandEmbFstHistory(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 252);
  if (v8 != -1)
  {
    v9 = result;
    v10 = (*(result + 160) + 28 * v8);
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
      v21 = *(v20 + 28 * v8 + 4);
      v22 = *(a3 + 8);
      if (v22 == *(a3 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
        v22 = *(a3 + 8);
        v20 = *(v9 + 160);
      }

      *(*a3 + 4 * v22) = v21;
      ++*(a3 + 8);
      v23 = *(v20 + 28 * v8 + 12);
      v24 = *(a5 + 8);
      if (v24 == *(a5 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a5, 1, 1);
        v24 = *(a5 + 8);
      }

      *(*a5 + 4 * v24) = v23;
      ++*(a5 + 8);
      v10 = (*(v9 + 160) + 28 * v16);
      i = v10[4];
    }

    *a4 = *v10;
  }

  return result;
}

void FstSearchDurationHashBackoff::checkSearchParametersValidityForArcGraph(FstSearchDurationHashBackoff *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

void FstSearchDurationHashBackoff::getHistory(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
      v14 = (*(a1 + 160) + 28 * v13);
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
        v21 = (v19 + 28 * v12);
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

        v12 = *(v19 + 28 * v12 + 16);
      }

      while (v12 != -1);
    }
  }
}

uint64_t FstSearchDurationHashBackoff::makePartialResult(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void FstSearchDurationHash::FstSearchDurationHash(FstSearchDurationHash *this, const int *a2, const int *a3)
{
  SearchItf::SearchItf(this);
  *v5 = &unk_287525868;
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

uint64_t FstSearchDurationHash::maybeInitDurModel(FstSearchDurationHash *this, const PicMgr *a2, int a3)
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

int64x2_t FstSearchDurationHash::advanceDeltas(FstSearchDurationHash *this, int a2, int a3, SearchStats *a4, int a5)
{
  v8 = a2;
  v102[0] = a2;
  v100 = 0u;
  v101 = 0u;
  SnapTime::recordTime(&v100, 1, 0, 0, 0);
  *v99 = 0xFFFFFFFF00000000;
  *&v99[8] = -1;
  *&v99[12] = -2;
  *&v99[16] = 0;
  *&v99[24] = 0;
  v10 = (this + 256);
  *(this + 64) = a3;
  v11 = *(this + 2);
  v12 = *(this + 56);
  if (v12)
  {
    v76 = a5;
    v13 = 0;
    v79 = *(this + 53);
    v77 = v8;
    v78 = *(this + 208);
    do
    {
      v14 = *(this + 27) + 28 * v13;
      v15 = *(v14 + 4);
      v16 = *(this + 5);
      if (*(v16 + 160) != v15)
      {
        if (*(v16 + 140) > v15)
        {
          v17 = *v14;
          ScoreNoBackoff = PelScoreCache::getScoreNoBackoff(*(this + 4), *(v14 + 12));
          v19 = (*(this + 27) + 28 * v13);
          v20 = *v19;
          *&v99[12] = *(v19 + 12);
          *v99 = v20;
          v21 = WORD6(v20);
          if (WORD6(v20))
          {
            if (*&v99[20] >= 1)
            {
              v22 = v78 - *&v99[20];
            }

            else
            {
              v22 = v78;
            }

            v21 = v22 & ((*&v99[20] - v78) >> 31);
            *&v99[20] -= v78;
            *&v99[24] += v21;
          }

          v23 = ScoreNoBackoff + v17 + v21;
          if (v23 - v11 <= *v10)
          {
            if (*v10 > v23)
            {
              *v10 = v23;
            }

            *v99 = v23;
            FstSearchDurationHashBackoff::maybeInsertHashedToken(this, v99);
          }
        }

        v24 = v15;
        do
        {
          v25 = *(this + 5);
          v26 = *(v25 + 152);
          v27 = *(v26 + 4 * v24);
          v28 = *(v26 + 4 * (v24 + 1));
          v29 = *(v25 + 140);
          if (v29 <= v28)
          {
            if (v29 <= v15 && (*(this + 380) & 1) != 0)
            {
              v37 = (v27 & 0xFFFFF) <= 0xFFFF3 ? v27 & 0xFFFFF : v27 & 0xFFFFF | 0xF00000;
              if (v37 != 16777210)
              {
                DgnString::DgnString(&v96);
                ArcGraph::getNameAndHumanReadablePron(*(this + 5), v37, &v96, v38, v39, v40, v41, v42);
                v47 = &unk_26287F8B0;
                if (v96.i32[2])
                {
                  v47 = v96.i64[0];
                }

                xprintf("Seed from state %d score %d trace %d, %s\n", v43, v44, v45, v46, v15, *(*(this + 27) + 28 * v13), *(*(this + 27) + 28 * v13 + 8), v47);
                MiniFst::seed(this + 264, *(*(this + 27) + 28 * v13), 0, *(*(this + 27) + 28 * v13 + 8), v28);
                DgnString::~DgnString(&v96);
              }
            }
          }

          else
          {
            v30 = PelScoreCache::getScoreNoBackoff(*(this + 4), *(v26 + 4 * v24));
            v31 = *(this + 27) + 28 * v13;
            v32 = *v31;
            v33 = *v31;
            *&v99[12] = *(v31 + 12);
            *v99 = v33;
            v34 = *&v99[20] & ~(*&v99[20] >> 31);
            if (v27)
            {
              v35 = *(*(this + 24) + 2 * v27);
              v34 -= v35 & (v35 >> 31);
              v36 = v79;
            }

            else
            {
              v35 = 0;
              v36 = 0;
            }

            v48 = (v27 >> 20) & 0x3FF;
            v49 = v36 + v34;
            *&v99[20] = v35;
            *&v99[24] += v49;
            v50 = v30 + v48 + v32 + v49;
            if (v50 - v11 <= *v10)
            {
              if (*v10 > v50)
              {
                *v10 = v50;
              }

              *v99 = v50;
              *&v99[4] = v28;
              *&v99[12] = v27;
              *&v99[16] += v48;
              FstSearchDurationHashBackoff::maybeInsertHashedToken(this, v99);
            }
          }

          v24 += 2;
        }

        while ((v27 & 0x80000000) == 0);
        v12 = *(this + 56);
      }

      ++v13;
    }

    while (v13 < v12);
    a3 = *v10;
    v8 = v77;
    a5 = v76;
  }

  v98 = a3 + v11;
  if (*(this + 380) == 1)
  {
    MiniFst::updateFrame(this + 264, this + 64, v11, v8);
  }

  v96 = 0u;
  v97 = 0u;
  SnapTime::recordTime(&v96, 1, 0, 0, 0);
  v96 = vsubq_s64(v96, v100);
  v97 = vsubq_s64(v97, v101);
  v51 = *(this + 13);
  v52 = vaddq_s64(v51[1], v97);
  *v51 = vaddq_s64(*v51, v96);
  v51[1] = v52;
  v94 = 0u;
  v95 = 0u;
  SnapTime::recordTime(&v94, 1, 0, 0, 0);
  FstSearchDurationHashBackoff::applyCutoffOnEmitting(this, *(this + 4), &v98);
  v92 = 0u;
  v93 = 0u;
  SnapTime::recordTime(&v92, 1, 0, 0, 0);
  v53 = vsubq_s64(v92, v94);
  v54 = *(this + 13);
  v55 = v54[3];
  v56 = vaddq_s64(v54[2], v53);
  v92 = v53;
  v93 = vsubq_s64(v93, v95);
  v57 = vaddq_s64(v55, v93);
  v54[2] = v56;
  v54[3] = v57;
  v90 = 0u;
  v91 = 0u;
  SnapTime::recordTime(&v90, 1, 0, 0, 0);
  v58 = *(this + 27);
  v59 = *(this + 29);
  *(this + 27) = v59;
  *(this + 29) = v58;
  LODWORD(v58) = *(this + 57);
  v60 = *(this + 30);
  *(this + 28) = v60;
  *(this + 60) = 0;
  *(this + 61) = v58;
  v61 = *(this + 6);
  if (v61 && v61 < v60)
  {
    mrec_nth_element<FstSearchLatticeHashBackoffcmpTok>(v59, v61, v60);
  }

  v88 = 0u;
  v89 = 0u;
  SnapTime::recordTime(&v88, 1, 0, 0, 0);
  v62 = vsubq_s64(v88, v90);
  v63 = *(this + 13);
  v64 = v63[5];
  v65 = vaddq_s64(v63[4], v62);
  v88 = v62;
  v89 = vsubq_s64(v89, v91);
  v66 = vaddq_s64(v64, v89);
  v63[4] = v65;
  v63[5] = v66;
  v86 = 0u;
  v87 = 0u;
  SnapTime::recordTime(&v86, 1, 0, 0, 0);
  VirtMap::setEmpty(*(this + 14));
  v84 = 0u;
  v85 = 0u;
  SnapTime::recordTime(&v84, 1, 0, 0, 0);
  v67 = vsubq_s64(v84, v86);
  v68 = *(this + 13);
  v69 = v68[9];
  v70 = vaddq_s64(v68[8], v67);
  v84 = v67;
  v85 = vsubq_s64(v85, v87);
  v71 = vaddq_s64(v69, v85);
  v68[8] = v70;
  v68[9] = v71;
  v82 = 0u;
  v83 = 0u;
  SnapTime::recordTime(&v82, 1, 0, 0, 0);
  *(this + 60) = 0;
  v72 = *(this + 56);
  *(this + 38) = v72;
  if (a4)
  {
    *(a4 + 2) += v72;
    if (*(a4 + 2) > v72)
    {
      LODWORD(v72) = *(a4 + 2);
    }

    *(a4 + 2) = v72;
  }

  if (*(this + 380) == 1)
  {
    FstSearchDurationHash::seedFromMiniFst(this, v102);
  }

  if (a5)
  {
    FstSearchDurationHashBackoff::propagateNulls(this, v98, v8, a4);
  }

  *(this + 62) = v8;
  v80 = 0u;
  v81 = 0u;
  SnapTime::recordTime(&v80, 1, 0, 0, 0);
  v73 = *(this + 13);
  result = vaddq_s64(v73[6], vsubq_s64(v80, v82));
  v75 = vaddq_s64(v73[7], vsubq_s64(v81, v83));
  v73[6] = result;
  v73[7] = v75;
  return result;
}

uint64_t FstSearchDurationHash::seedFromMiniFst(uint64_t this, int *a2)
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
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = (*(v2 + 280) + v5);
        v8 = *v7;
        v9 = v7[6];
        v10 = v7[7];
        LODWORD(v7) = v7[2];
        v20[0] = 0;
        v20[1] = 0;
        v11 = -2 - v7;
        if (v10 == 16777213)
        {
          v12 = (*(v2 + 160) + 28 * v11);
          v10 = 16777209;
          if (*v12 == 16777209)
          {
            v11 = *(*(v2 + 176) + 16 * v12[2] + 8);
          }
        }

        v13 = *a2;
        v14 = *(v2 + 168);
        if (v14 == *(v2 + 172))
        {
          DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(v2 + 160, 1, 1);
          LODWORD(v14) = *(v2 + 168);
        }

        v15 = (*(v2 + 160) + 28 * v14);
        *v15 = v10;
        v15[1] = v13;
        v15[2] = -1;
        v15[3] = v8;
        v15[5] = 0;
        v15[6] = 0;
        v15[4] = v11;
        v16 = *(v2 + 168);
        *(v2 + 168) = v16 + 1;
        v17 = *(v2 + 224);
        if (v17 == *(v2 + 228))
        {
          DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(v2 + 216, 1, 1);
          LODWORD(v17) = *(v2 + 224);
        }

        v18 = *(v2 + 216) + 28 * v17;
        *v18 = v8;
        *(v18 + 4) = v9;
        *(v18 + 8) = v16;
        *(v18 + 12) = -2;
        *(v18 + 16) = 0;
        *(v18 + 24) = 0;
        ++*(v2 + 224);
        this = DgnPrimArray<unsigned int>::~DgnPrimArray(v20);
        ++v6;
        v19 = *(v2 + 288);
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

uint64_t FstSearchDurationHash::collectTraces(FstSearchDurationHash *this)
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

  v11 = *(this + 56);
  if (v11)
  {
    v12 = 0;
    v13 = (*(this + 27) + 8);
    do
    {
      v15 = *v13;
      v13 += 7;
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
    goto LABEL_38;
  }

  v17 = 28 * v16 - 12;
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

    v17 -= 28;
  }

  while (v17 != -12);
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
          v27 = (v25 + 28 * v24);
          v28 = *v26;
          *(v27 + 12) = *(v26 + 12);
          *v27 = v28;
          v25 = *(this + 20);
        }

        v29 = v25 + 28 * v24;
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
      v22 += 28;
    }

    while (v23 < v21);
    v33 = *(this + 43);
    if (v24 > v33)
    {
      DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 160, v24 - v33, 0);
      v21 = *(this + 42);
    }

    if (v21 < v24)
    {
      v34 = v24 - v21;
      v35 = (*(this + 20) + 28 * v21 + 24);
      do
      {
        *(v35 - 6) = xmmword_26287F860;
        *(v35 - 1) = 0xFFFFFFFFLL;
        *v35 = 0;
        v35 += 7;
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
  v36 = *(this + 56);
  if (v36)
  {
    v37 = v41;
    v38 = (*(this + 27) + 8);
    do
    {
      v39 = *v38;
      if (v39 != -1)
      {
        *v38 = *(v37 + v39);
      }

      v38 += 7;
      --v36;
    }

    while (v36);
  }

  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v41);
}

int64x2_t FstSearchDurationHash::vite(int64x2_t **this, int a2, int a3, SearchStats *a4, int a5)
{
  FstSearchDurationHash::advanceDeltas(this, a2, a3, a4, a5);
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
        FstSearchDurationHash::collectTraces(this);
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

int64x2_t FstSearchDurationHash::reset(FstSearchDurationHash *this)
{
  *(this + 42) = 0;
  *(this + 46) = 0;
  *(this + 56) = 0;
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

double FstSearchDurationHash::doFrame(int64x2_t **this, int a2, int a3, SearchStats *a4, int a5)
{
  if (a3 >= 20000)
  {
    a3 = 20000;
  }

  *&result = FstSearchDurationHash::vite(this, a2, a3, a4, a5).u64[0];
  return result;
}

uint64_t FstSearchDurationHash::beginTopRecPassSyncRecog(FstSearchDurationHash *this, PelScorer *a2, const ArcGraph *a3)
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

uint64_t FstSearchDurationHash::endTopRecPassSyncRecog(int64x2_t **this)
{
  v10 = 0u;
  v11 = 0u;
  SnapTime::recordTime(&v10, 1, 0, 0, 0);
  FstSearchDurationHashBackoff::generateTraceTokensFromTraces(this);
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
  *(this + 64) = 1879048192;
  return SearchItf::endTopRecPassSyncRecogBase(this);
}

void FstSearchDurationHash::printSize(FstSearchDurationHash *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
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
  v45 = 28 * v44;
  if (v44 <= 0)
  {
    v45 = 0;
  }

  v46 = v45 + v43;
  v47 = v45 + v43 + 28 * (*(this + 43) - v44);
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

  v64 = *(this + 56);
  v65 = 26 * v64;
  if (v64 <= 0)
  {
    v65 = 0;
  }

  v66 = v65 + v63;
  v67 = v65 + v63 + 26 * (*(this + 57) - v64);
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
  v75 = 26 * v74;
  if (v74 <= 0)
  {
    v75 = 0;
  }

  v76 = v75 + v73;
  v77 = v75 + v73 + 26 * (*(this + 61) - v74);
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

BOOL FstSearchDurationHash::findBestPath(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
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
  BestTrace = FstSearchDurationHashBackoff::getBestTrace(a1, a2, a3, 0);
  *a4 = 1879048192;
  if (BestTrace == -1)
  {
    return 0;
  }

  v13 = *(a1 + 160) + 28 * BestTrace;
  LODWORD(v13) = *(v13 + 12) + *(*(a1 + 88) + 4 * *(v13 + 4));
  *a4 = v13;
  return v13 != 1879048192;
}

uint64_t FstSearchDurationHash::buildWordLattice(uint64_t a1, unint64_t a2, void *a3, void *a4, char a5)
{
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v25, *(a1 + 168));
  v9 = MemChunkAlloc(0x28uLL, 0);
  HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::HashProbeKEV(v9, 0, 128);
  v9[4] = a2;
  FstSearchDurationHashBackoff::createLatticeNodes(a1, &v28, &v26, a2, v25, a3, a4);
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
        v14 = (*(a1 + 160) + 28 * v12);
        if ((*v14 - 16777209) >= 2)
        {
          v15 = *(a1 + 176) + 16 * v14[2];
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
            FstSearchDurationHash::createLatticeLink(a1, v12, v15, 0xFFFFFFFFLL, v18, *(v26 + 4 * (v13 - *(v28 + v12))), a2, v10, a5);
          }

          v19 = v25[0] + 16 * v12;
          if (*(v19 + 8))
          {
            v20 = 0;
            do
            {
              v21 = *(*v19 + 4 * v20);
              FstSearchDurationHash::createLatticeLink(a1, v12, v15, v21, v18, *(v26 + 4 * (v13 - *(v28 + v21))), a2, v10, a5);
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

void sub_262630F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void FstSearchDurationHash::createLatticeLink(uint64_t a1, unsigned int a2, int *a3, uint64_t a4, uint64_t a5, const WordLatticeLC *a6, unint64_t a7, uint64_t a8, char a9)
{
  v11 = a5;
  v12 = a4;
  v16 = *(a1 + 160);
  if ((a4 & 0x80000000) != 0)
  {
    v17 = 0;
  }

  else if (*(*(a1 + 176) + 16 * *(v16 + 28 * a4 + 8) + 8) == a2)
  {
    v17 = (*(a1 + 176) + 16 * *(v16 + 28 * a4 + 8));
  }

  else
  {
    v17 = 0;
  }

  ArcGraph::lexToCWIDAC(*(a1 + 40), *(v16 + 28 * a2), a3, a4, a5, a6, a7, a8, v39);
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
    if ((v12 & 0x80000000) != 0)
    {
LABEL_11:
      v22 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v20 = *(a1 + 136);
    v21 = v18 - v20;
    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(a1 + 140);
  v21 -= v22;
LABEL_14:
  v23 = a3[3];
  if (v17)
  {
    v23 += v17[3];
  }

  v33 = v21;
  v34 = 0;
  v35 = v20;
  v36 = v19 - (v18 + v23);
  v37 = v23;
  v38 = v22;
  v24 = a3[2];
  v25 = *(a1 + 160);
  if (v24 != -1)
  {
    v26 = *(v25 + 28 * v24 + 4);
    if (a9)
    {
      v27 = (v26 - 1) / 2 + 1;
      goto LABEL_20;
    }

    v27 = v26 + 1;
LABEL_23:
    v28 = *(v25 + 28 * a2 + 4);
    v29 = v28 - v27 + 1;
    if ((v12 & 0x80000000) == 0)
    {
      v30 = *(v25 + 28 * v12 + 4);
      goto LABEL_25;
    }

LABEL_26:
    v31 = 0;
    goto LABEL_27;
  }

  v27 = 0;
  if (!a9)
  {
    goto LABEL_23;
  }

LABEL_20:
  v28 = (*(v25 + 28 * a2 + 4) - 1) / 2;
  v29 = v28 - v27 + 1;
  if ((v12 & 0x80000000) != 0)
  {
    goto LABEL_26;
  }

  v30 = (*(v25 + 28 * v12 + 4) - 1) / 2;
LABEL_25:
  v31 = v30 - v28;
LABEL_27:
  WordLatticeLC::WordLatticeLC(v32, v39, v27, v29, v31, &v33);
  Lattice<WordLatticeLC>::maybeCreateAndConnectLinkAvoidMultiLinks(a7, v11, a6, v32);
  WordLatticeLC::~WordLatticeLC(v32);
}

void sub_2626311BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WordLatticeLC::~WordLatticeLC(va);
  _Unwind_Resume(a1);
}

uint64_t FstSearchDurationHash::beginTopRecSyncRecog(uint64_t this, VirtMap *a2)
{
  *(this + 112) = a2;
  if (*(this + 380) == 1)
  {
    return MiniFst::beginTopFstSyncRecog(this + 264);
  }

  return this;
}

uint64_t FstSearchDurationHash::endTopRecSyncRecog(FstSearchDurationHash *this)
{
  VirtMap::setEmpty(*(this + 14));
  result = *(this + 14);
  *(this + 14) = 0;
  return result;
}

uint64_t FstSearchDurationHash::getBestExitScore(FstSearchDurationHash *this)
{
  v17 = 0;
  v18 = 0;
  *(this + 63) = -1;
  v1 = *(this + 38);
  v2 = *(this + 56);
  if (v1 >= v2)
  {
    goto LABEL_16;
  }

  v4 = 0;
  v5 = 0;
  v6 = 28 * v1;
  do
  {
    v7 = *(this + 27) + v6;
    if (*(*(this + 5) + 160) == *(v7 + 4))
    {
      v8 = *(v7 + 8);
      if (v8 != -1 && *(*(this + 20) + 28 * v8 + 4) == *(this + 62))
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
        v2 = *(this + 56);
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
      v13 = v9 + 28 * v12;
      v14 = *(v13 + 12);
      if (v11 > v14)
      {
        *(this + 63) = *(v13 + 16);
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

uint64_t FstSearchDurationHash::getBestScoreMaybeUpdateFstNode(FstSearchDurationHash *this, Node *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v2 = *(this + 56);
  if (v2)
  {
    v3 = *(this + 27);
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

_DWORD *FstSearchDurationHash::seedTheory(FstSearchDurationHash *this, int a2, int a3, int a4, SearchStats *a5)
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
      DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 160, 1, 1);
      v11 = *(this + 42);
    }

    v12 = *(this + 20) + 28 * v11;
    *v12 = a4;
    *(v12 + 4) = a3;
    *(v12 + 8) = -1;
    *(v12 + 12) = a2;
    *(v12 + 16) = 0xFFFFFFFFLL;
    *(v12 + 24) = 0;
    v9 = *(this + 42);
    *(this + 42) = v9 + 1;
  }

  v13 = *(*(this + 5) + 144);
  v14 = *(this + 56);
  if (v14 == *(this + 57))
  {
    DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 216, 1, 1);
    v14 = *(this + 56);
  }

  v15 = *(this + 27) + 28 * v14;
  *v15 = a2;
  *(v15 + 4) = v13;
  *(v15 + 8) = v9;
  *(v15 + 12) = -2;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  LODWORD(v15) = *(this + 56) + 1;
  *(this + 56) = v15;
  *(this + 38) = v15;

  return FstSearchDurationHashBackoff::propagateNulls(this, 20000, a3, a5);
}

uint64_t FstSearchDurationHash::expandEmbFstHistory(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 252);
  if (v8 != -1)
  {
    v9 = result;
    v10 = (*(result + 160) + 28 * v8);
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
      v21 = *(v20 + 28 * v8 + 4);
      v22 = *(a3 + 8);
      if (v22 == *(a3 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
        v22 = *(a3 + 8);
        v20 = *(v9 + 160);
      }

      *(*a3 + 4 * v22) = v21;
      ++*(a3 + 8);
      v23 = *(v20 + 28 * v8 + 12);
      v24 = *(a5 + 8);
      if (v24 == *(a5 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a5, 1, 1);
        v24 = *(a5 + 8);
      }

      *(*a5 + 4 * v24) = v23;
      ++*(a5 + 8);
      v10 = (*(v9 + 160) + 28 * v16);
      i = v10[4];
    }

    *a4 = *v10;
  }

  return result;
}

void FstSearchDurationHash::checkSearchParametersValidityForArcGraph(FstSearchDurationHash *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

uint64_t FstSearchDurationHash::makePartialResult(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

int64x2_t FstSearchHashBackoff::advanceDeltas(FstSearchHashBackoff *this, int a2, int a3, SearchStats *a4, int a5)
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
      v13 = *(this + 24) + 20 * i;
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

            v19 = (*(this + 24) + 20 * i);
            v20 = v19[1].n128_u32[0];
            v90 = *v19;
            v91 = v20;
            v90.n128_u32[0] = ScoreAllowBackoff_updateNodeInSequence;
            FstSearchHashBackoff::maybeInsertHashedToken(this, &v90);
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

                xprintf("Seed from state %d score %d trace %d, %s\n", v39, v40, v41, v42, v14, *(*(this + 24) + 20 * i), *(*(this + 24) + 20 * i + 8), v43);
                MiniFst::seed(this + 240, *(*(this + 24) + 20 * i), 0, *(*(this + 24) + 20 * i + 8), v25);
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

            v29 = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(this + 4), *(v23 + 4 * v21), *(*(this + 24) + 20 * i) + v27, v28);
            v30 = *(this + 58);
            if (v29 - v10 <= v30)
            {
              if (v30 > v29)
              {
                *v70 = v29;
              }

              v31 = (*(this + 24) + 20 * i);
              v32 = v31[1].n128_u32[0];
              v90 = *v31;
              v90.n128_u64[0] = __PAIR64__(v25, v29);
              v90.n128_u16[6] = v24;
              v91 = v32 + v27;
              FstSearchHashBackoff::maybeInsertHashedToken(this, &v90);
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
  FstSearchHashBackoff::applyCutoffOnEmitting(this, *(this + 4), &v89);
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
    mrec_nth_element<FstSearchHashBackoffcmpTok>(v52, v54, v53);
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
    FstSearchHashBackoff::seedFromMiniFst(this, v94);
  }

  if (a5)
  {
    FstSearchHashBackoff::propagateNulls(this, v89, a2, a4);
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

__n128 FstSearchHashBackoff::maybeInsertHashedToken(uint64_t a1, __n128 *a2)
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
      DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(a1 + 208, 1, 1);
      v20 = *(a1 + 216);
    }

    v21 = (*(a1 + 208) + 20 * v20);
    result = *a2;
    v21[1].n128_u32[0] = a2[1].n128_u32[0];
    *v21 = result;
    ++*(a1 + 216);
  }

  else
  {
    v19 = (*(a1 + 208) + 20 * v18);
    if (v19->n128_u32[0] > a2->n128_u32[0])
    {
      result = *a2;
      v19[1].n128_u32[0] = a2[1].n128_u32[0];
      *v19 = result;
    }
  }

  return result;
}

uint64_t FstSearchHashBackoff::applyCutoffOnEmitting(uint64_t this, unsigned int a2, int *a3)
{
  v4 = *(this + 216);
  if (v4 > a2)
  {
    v6 = this;
    v7 = a2;
    this = mrec_nth_element<FstSearchHashBackoffcmpTok>(*(this + 208), a2, v4);
    v8 = *(*(v6 + 208) + 20 * a2);
    if (*a3 > v8)
    {
      *a3 = v8;
    }

    v9 = *(v6 + 220);
    if (a2 > v9)
    {
      this = DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(v6 + 208, a2 - v9, 0);
    }

    v10 = *(v6 + 216);
    if (v10 < a2)
    {
      v11 = v7 - v10;
      v12 = (*(v6 + 208) + 20 * v10 + 16);
      do
      {
        *(v12 - 2) = 0xFFFFFFFF00000000;
        *(v12 - 2) = -1;
        *(v12 - 2) = -2;
        *v12 = 0;
        v12 += 5;
        --v11;
      }

      while (v11);
    }

    *(v6 + 216) = a2;
  }

  return this;
}

uint64_t mrec_nth_element<FstSearchHashBackoffcmpTok>(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = 0;
    do
    {
      v4 = (result + 20 * v3);
      v5 = (result + 20 * (v3 + (a3 >> 1)));
      v6 = 20;
      v7 = v4;
      do
      {
        v8 = *v7;
        *v7++ = *v5;
        *v5++ = v8;
        --v6;
      }

      while (v6);
      v9 = (result - 20 + 20 * (v3 + a3));
      v10 = (result + 20 * v3);
      do
      {
        v11 = v10 + 20;
        while (1)
        {
          v10 = v11;
          if (v11 >= v9)
          {
            break;
          }

          v11 += 20;
          if (*v10 > *v4)
          {
            v12 = v10;
            while (*v9 >= *v4)
            {
              v9 -= 20;
              if (v10 >= v9)
              {
                goto LABEL_16;
              }
            }

            for (i = 0; i != 20; ++i)
            {
              v14 = *v12;
              *v12++ = v9[i];
              v9[i] = v14;
            }

            v9 -= 20;
            break;
          }
        }

LABEL_16:
        ;
      }

      while (v10 < v9);
      if (*v10 > *v4)
      {
        v10 -= 20;
      }

      if (v10 > v4)
      {
        for (j = 0; j != 20; ++j)
        {
          v16 = v10[j];
          v10[j] = v4[j];
          v4[j] = v16;
        }
      }

      v17 = (v10 - v4) / 0x14uLL;
      if (v17 <= a2)
      {
        if (v17 >= a2)
        {
          return result;
        }

        v18 = v17 + 1;
        v3 += v18;
        a2 -= v18;
        v17 = a3 - v18;
      }

      a3 = v17;
    }

    while (v17 > 1);
  }

  return result;
}

uint64_t FstSearchHashBackoff::seedFromMiniFst(uint64_t this, int *a2)
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

_DWORD *FstSearchHashBackoff::propagateNulls(_DWORD *this, int a2, int a3, SearchStats *a4)
{
  v4 = this;
  v5 = this[42];
  v6 = this[50];
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
  v57 = a2;
  do
  {
    v8 = *(*(v4 + 192) + 20 * v7 + 4);
    v9 = *(v4 + 40);
    if (*(v9 + 160) != v8 && (*(v9 + 140) <= v8 || (*(*(v9 + 152) + 4 * v8) & 0x40000000) != 0))
    {
      v10 = *(*(v4 + 192) + 20 * v7 + 4);
      v56 = v7;
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
        v19 = *(v4 + 192);
        v20 = (v19 + 20 * v7);
        v21 = *v20;
        v22 = *v20 + v18;
        if (v22 > a2)
        {
          goto LABEL_32;
        }

        v23 = v20[2];
        v24 = *(v20 + 6);
        v25 = *(v20 + 7);
        v26 = v20[4];
        v27 = v26 + v18;
        if (v16 == 16777210)
        {
          if (v6 != *(v4 + 204))
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v16 == 16777214)
          {
            v22 = v21 - v26;
            v28 = 0;
          }

          else
          {
            v28 = v26 + v18;
          }

          if (v16 == 16777214)
          {
            v29 = v27;
          }

          else
          {
            v29 = 0;
          }

          v30 = *(v4 + 168);
          if (v30 == *(v4 + 172))
          {
            v53 = v25;
            v54 = v24;
            v51 = v28;
            v52 = v29;
            this = DgnArray<CWIDAC>::reallocElts(v4 + 160, 1, 1);
            v28 = v51;
            v29 = v52;
            v25 = v53;
            v24 = v54;
            a2 = v57;
            LODWORD(v30) = *(v4 + 168);
          }

          v31 = (*(v4 + 160) + 24 * v30);
          *v31 = v16;
          v31[1] = a3;
          v31[2] = -1;
          v31[3] = v22;
          v31[4] = v23;
          v31[5] = v28;
          v23 = *(v4 + 168);
          *(v4 + 168) = v23 + 1;
          v22 += v29;
          v6 = *(v4 + 200);
          if (v6 != *(v4 + 204))
          {
            goto LABEL_30;
          }
        }

        v32 = v24;
        v33 = v8;
        v34 = v23;
        v35 = v27;
        v36 = v25;
        this = DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(v4 + 192, 1, 1);
        v25 = v36;
        v27 = v35;
        v23 = v34;
        v8 = v33;
        v7 = v56;
        v24 = v32;
        a2 = v57;
        v6 = *(v4 + 200);
LABEL_30:
        v19 = *(v4 + 192);
LABEL_31:
        v37 = v19 + 20 * v6;
        *v37 = v22;
        *(v37 + 4) = v14;
        *(v37 + 8) = v23;
        *(v37 + 12) = v24;
        *(v37 + 14) = v25;
        *(v37 + 16) = v27;
        v6 = *(v4 + 200) + 1;
        *(v4 + 200) = v6;
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
    this = mrec_qsort_r<FstSearchLateLatticeHashBackoffActiveToken>((*(v4 + 192) + 20 * v38), v6 - v38, 20);
    v38 = *(v4 + 152);
    v6 = *(v4 + 200);
  }

  a4 = v50;
  v5 = v49;
  if (v38 < v6)
  {
    v39 = v38;
    v40 = v38 - 1;
    v41 = 20 * v38;
    do
    {
      v42 = *(v4 + 192);
      v43 = (v42 + v41);
      if (*(v42 + v41 + 4) != *(v42 + 20 * v40 + 4))
      {
        v44 = v42 + 20 * v38;
        v45 = *v43;
        *(v44 + 16) = *(v43 + 4);
        *v44 = v45;
        ++v38;
        v6 = *(v4 + 200);
      }

      ++v39;
      ++v40;
      v41 += 20;
    }

    while (v39 < v6);
  }

  if (v50)
  {
LABEL_42:
    *(a4 + 1) += *(v4 + 168) - v5;
  }

LABEL_43:
  v46 = *(v4 + 204);
  if (v38 > v46)
  {
    this = DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(v4 + 192, v38 - v46, 0);
    v6 = *(v4 + 200);
  }

  if (v6 < v38)
  {
    v47 = v38 - v6;
    v48 = (*(v4 + 192) + 20 * v6 + 16);
    do
    {
      *(v48 - 2) = 0xFFFFFFFF00000000;
      *(v48 - 2) = -1;
      *(v48 - 2) = -2;
      *v48 = 0;
      v48 += 5;
      --v47;
    }

    while (v47);
  }

  *(v4 + 200) = v38;
  return this;
}

uint64_t FstSearchHashBackoff::collectTraces(FstSearchHashBackoff *this)
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

int64x2_t FstSearchHashBackoff::vite(int64x2_t **this, int a2, int a3, SearchStats *a4, int a5)
{
  FstSearchHashBackoff::advanceDeltas(this, a2, a3, a4, a5);
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
        FstSearchHashBackoff::collectTraces(this);
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

int64x2_t FstSearchHashBackoff::reset(FstSearchHashBackoff *this)
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

double FstSearchHashBackoff::doFrame(int64x2_t **this, int a2, int a3, SearchStats *a4, int a5)
{
  if (a3 >= 20000)
  {
    a3 = 20000;
  }

  *&result = FstSearchHashBackoff::vite(this, a2, a3, a4, a5).u64[0];
  return result;
}

uint64_t FstSearchHashBackoff::beginTopRecPassSyncRecog(FstSearchHashBackoff *this, PelScorer *a2, const ArcGraph *a3)
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

uint64_t FstSearchHashBackoff::endTopRecPassSyncRecog(int64x2_t **this)
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

int32x2_t FstSearchHashBackoff::generateTraceTokensFromTraces(FstSearchHashBackoff *this)
{
  v2 = *(this + 42);
  v3 = *(this + 47);
  if (v2 > v3)
  {
    DgnArray<RuleDesc>::reallocElts(this + 176, v2 - v3, 0);
  }

  v5 = *(this + 46);
  if (v5 < v2)
  {
    v6 = v2 - v5;
    v7 = (*(this + 22) + 12 * v5 + 8);
    do
    {
      *(v7 - 1) = 0;
      *v7 = -1;
      v7 += 3;
      --v6;
    }

    while (v6);
  }

  *(this + 46) = v2;
  v8 = *(this + 42);
  if (v8)
  {
    v9 = 0;
    v10 = (*(this + 20) + 16);
    v11 = (*(this + 22) + 4);
    do
    {
      v10[-1].i32[0] = v9;
      v11[-1].i32[1] = v10[-1].i32[1];
      v12 = *v10;
      v10 += 3;
      result = vrev64_s32(v12);
      *v11 = result;
      v11 = (v11 + 12);
      ++v9;
    }

    while (v8 != v9);
  }

  return result;
}

void FstSearchHashBackoff::printSize(FstSearchHashBackoff *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
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

uint64_t FstSearchHashBackoff::getBestTrace(uint64_t a1, void *a2, void *a3, int a4)
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

  v6 = 20 * v4;
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

    v11 = *(a1 + 160) + 24 * v10;
    v12 = *(v11 + 12) + *(*(a1 + 88) + 4 * *(v11 + 4));
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
    v6 += 20;
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
      if ((a4 & 1) != 0 || *(*(a1 + 160) + 24 * v14) == 16777213)
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

BOOL FstSearchHashBackoff::findBestPath(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
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

unint64_t FstSearchHashBackoff::createLatticeNodes(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
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
    v19 = 24 * v18;
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
        v31 = (v30 + 12 * *(v23 + v19 + 8));
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

          v39 = v23 + 24 * v32;
          v40 = *(*(a1 + 88) + 4 * *(v39 + 4));
          v41 = (v30 + 12 * *(v39 + 8));
          v42 = v24 + *v31 - v40 - *v41;
          LODWORD(v41) = v31[1] - v41[1];
          *v31 = v42;
          v31[1] = v41;
          *(v22 + v32) = 2;
        }
      }

      --v18;
      v19 -= 24;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t FstSearchHashBackoff::buildWordLattice(uint64_t a1, unint64_t a2, void *a3, void *a4, char a5)
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
        if ((*v14 - 16777209) >= 2)
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
            FstSearchHashBackoff::createLatticeLink(a1, v12, v15, 0xFFFFFFFFLL, v18, *(v26 + 4 * (v13 - *(v28 + v12))), a2, v10, a5);
          }

          v19 = v25[0] + 16 * v12;
          if (*(v19 + 8))
          {
            v20 = 0;
            do
            {
              v21 = *(*v19 + 4 * v20);
              FstSearchHashBackoff::createLatticeLink(a1, v12, v15, v21, v18, *(v26 + 4 * (v13 - *(v28 + v21))), a2, v10, a5);
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

void sub_262633D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void FstSearchHashBackoff::createLatticeLink(uint64_t a1, unsigned int a2, int *a3, uint64_t a4, uint64_t a5, const WordLatticeLC *a6, unint64_t a7, uint64_t a8, char a9)
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

void sub_262633FBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WordLatticeLC::~WordLatticeLC(va);
  _Unwind_Resume(a1);
}

uint64_t FstSearchHashBackoff::beginTopRecSyncRecog(uint64_t this, VirtMap *a2)
{
  *(this + 112) = a2;
  if (*(this + 356) == 1)
  {
    return MiniFst::beginTopFstSyncRecog(this + 240);
  }

  return this;
}

uint64_t FstSearchHashBackoff::endTopRecSyncRecog(FstSearchHashBackoff *this)
{
  VirtMap::setEmpty(*(this + 14));
  result = *(this + 14);
  *(this + 14) = 0;
  return result;
}

uint64_t FstSearchHashBackoff::getBestExitScore(FstSearchHashBackoff *this)
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

uint64_t FstSearchHashBackoff::getBestScoreMaybeUpdateFstNode(FstSearchHashBackoff *this, Node *a2)
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

_DWORD *FstSearchHashBackoff::seedTheory(FstSearchHashBackoff *this, int a2, int a3, int a4, SearchStats *a5)
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

uint64_t FstSearchHashBackoff::expandEmbFstHistory(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

void FstSearchHashBackoff::checkSearchParametersValidityForArcGraph(FstSearchHashBackoff *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

void FstSearchHashBackoff::getHistory(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
      v14 = (*(a1 + 160) + 24 * v13);
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
        v21 = (v19 + 24 * v12);
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

        v12 = *(v19 + 24 * v12 + 16);
      }

      while (v12 != -1);
    }
  }
}

uint64_t FstSearchHashBackoff::makePartialResult(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

int64x2_t FstSearchHash::advanceDeltas(FstSearchHash *this, int a2, signed __int32 a3, SearchStats *a4, int a5)
{
  v8 = a2;
  v95[0] = a2;
  v93 = 0u;
  v94 = 0u;
  SnapTime::recordTime(&v93, 1, 0, 0, 0);
  v91.n128_u64[0] = 0xFFFFFFFF00000000;
  v91.n128_u32[2] = -1;
  v91.n128_u16[6] = -2;
  v92 = 0;
  *(this + 58) = a3;
  v10 = (this + 232);
  v11 = *(this + 2);
  v12 = *(this + 50);
  if (v12)
  {
    v70 = a4;
    v71 = v8;
    for (i = 0; i < v12; ++i)
    {
      v14 = *(this + 24) + 20 * i;
      v15 = *(v14 + 4);
      v16 = *(this + 5);
      if (*(v16 + 160) != v15)
      {
        if (*(v16 + 140) > v15)
        {
          v17 = *v14;
          v18 = PelScoreCache::getScoreNoBackoff(*(this + 4), *(v14 + 12)) + v17;
          v19 = *(this + 58);
          if (v18 - v11 <= v19)
          {
            if (v19 > v18)
            {
              *v10 = v18;
            }

            v20 = (*(this + 24) + 20 * i);
            v21 = v20[1].n128_u32[0];
            v91 = *v20;
            v92 = v21;
            v91.n128_u32[0] = v18;
            FstSearchHashBackoff::maybeInsertHashedToken(this, &v91);
          }
        }

        v22 = v15;
        do
        {
          v23 = *(this + 5);
          v24 = *(v23 + 152);
          v25 = *(v24 + 4 * v22);
          v26 = *(v24 + 4 * (v22 + 1));
          v27 = *(v23 + 140);
          if (v27 <= v26)
          {
            if (v27 <= v15 && (*(this + 356) & 1) != 0)
            {
              v34 = (v25 & 0xFFFFF) <= 0xFFFF3 ? v25 & 0xFFFFF : v25 & 0xFFFFF | 0xF00000;
              if (v34 != 16777210)
              {
                DgnString::DgnString(&v88);
                ArcGraph::getNameAndHumanReadablePron(*(this + 5), v34, &v88, v35, v36, v37, v38, v39);
                v44 = &unk_26287F8B0;
                if (v88.i32[2])
                {
                  v44 = v88.i64[0];
                }

                xprintf("Seed from state %d score %d trace %d, %s\n", v40, v41, v42, v43, v15, *(*(this + 24) + 20 * i), *(*(this + 24) + 20 * i + 8), v44);
                MiniFst::seed(this + 240, *(*(this + 24) + 20 * i), 0, *(*(this + 24) + 20 * i + 8), v26);
                DgnString::~DgnString(&v88);
              }
            }
          }

          else
          {
            v28 = (v25 >> 20) & 0x3FF;
            ScoreNoBackoff = PelScoreCache::getScoreNoBackoff(*(this + 4), *(v24 + 4 * v22));
            v30 = (*(this + 24) + 20 * i);
            v31 = ScoreNoBackoff + v28 + v30->n128_u32[0];
            v32 = *(this + 58);
            if (v31 - v11 <= v32)
            {
              if (v32 > v31)
              {
                *v10 = v31;
              }

              v33 = v30[1].n128_u32[0];
              v91 = *v30;
              v91.n128_u64[0] = __PAIR64__(v26, v31);
              v91.n128_u16[6] = v25;
              v92 = v33 + v28;
              FstSearchHashBackoff::maybeInsertHashedToken(this, &v91);
            }
          }

          v22 += 2;
        }

        while ((v25 & 0x80000000) == 0);
        v12 = *(this + 50);
      }
    }

    a3 = *v10;
    v8 = v71;
    a4 = v70;
  }

  v90 = a3 + v11;
  if (*(this + 356) == 1)
  {
    MiniFst::updateFrame(this + 240, this + 58, v11, v8);
  }

  v88 = 0u;
  v89 = 0u;
  SnapTime::recordTime(&v88, 1, 0, 0, 0);
  v88 = vsubq_s64(v88, v93);
  v89 = vsubq_s64(v89, v94);
  v45 = *(this + 13);
  v46 = vaddq_s64(v45[1], v89);
  *v45 = vaddq_s64(*v45, v88);
  v45[1] = v46;
  v86 = 0u;
  v87 = 0u;
  SnapTime::recordTime(&v86, 1, 0, 0, 0);
  FstSearchHashBackoff::applyCutoffOnEmitting(this, *(this + 4), &v90);
  v84 = 0u;
  v85 = 0u;
  SnapTime::recordTime(&v84, 1, 0, 0, 0);
  v47 = vsubq_s64(v84, v86);
  v48 = *(this + 13);
  v49 = v48[3];
  v50 = vaddq_s64(v48[2], v47);
  v84 = v47;
  v85 = vsubq_s64(v85, v87);
  v51 = vaddq_s64(v49, v85);
  v48[2] = v50;
  v48[3] = v51;
  v82 = 0u;
  v83 = 0u;
  SnapTime::recordTime(&v82, 1, 0, 0, 0);
  v52 = *(this + 24);
  v53 = *(this + 26);
  *(this + 24) = v53;
  *(this + 26) = v52;
  LODWORD(v52) = *(this + 51);
  v54 = *(this + 27);
  *(this + 25) = v54;
  *(this + 54) = 0;
  *(this + 55) = v52;
  v55 = *(this + 6);
  if (v55 && v55 < v54)
  {
    mrec_nth_element<FstSearchHashBackoffcmpTok>(v53, v55, v54);
  }

  v80 = 0u;
  v81 = 0u;
  SnapTime::recordTime(&v80, 1, 0, 0, 0);
  v56 = vsubq_s64(v80, v82);
  v57 = *(this + 13);
  v58 = v57[5];
  v59 = vaddq_s64(v57[4], v56);
  v80 = v56;
  v81 = vsubq_s64(v81, v83);
  v60 = vaddq_s64(v58, v81);
  v57[4] = v59;
  v57[5] = v60;
  v78 = 0u;
  v79 = 0u;
  SnapTime::recordTime(&v78, 1, 0, 0, 0);
  VirtMap::setEmpty(*(this + 14));
  v76 = 0u;
  v77 = 0u;
  SnapTime::recordTime(&v76, 1, 0, 0, 0);
  v61 = vsubq_s64(v76, v78);
  v62 = *(this + 13);
  v63 = v62[9];
  v64 = vaddq_s64(v62[8], v61);
  v76 = v61;
  v77 = vsubq_s64(v77, v79);
  v65 = vaddq_s64(v63, v77);
  v62[8] = v64;
  v62[9] = v65;
  v74 = 0u;
  v75 = 0u;
  SnapTime::recordTime(&v74, 1, 0, 0, 0);
  *(this + 54) = 0;
  v66 = *(this + 50);
  *(this + 38) = v66;
  if (a4)
  {
    *(a4 + 2) += v66;
    if (*(a4 + 2) > v66)
    {
      LODWORD(v66) = *(a4 + 2);
    }

    *(a4 + 2) = v66;
  }

  if (*(this + 356) == 1)
  {
    FstSearchHash::seedFromMiniFst(this, v95);
  }

  if (a5)
  {
    FstSearchHashBackoff::propagateNulls(this, v90, v8, a4);
  }

  *(this + 56) = v8;
  v72 = 0u;
  v73 = 0u;
  SnapTime::recordTime(&v72, 1, 0, 0, 0);
  v67 = *(this + 13);
  result = vaddq_s64(v67[6], vsubq_s64(v72, v74));
  v69 = vaddq_s64(v67[7], vsubq_s64(v73, v75));
  v67[6] = result;
  v67[7] = v69;
  return result;
}

uint64_t FstSearchHash::seedFromMiniFst(uint64_t this, int *a2)
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

uint64_t FstSearchHash::collectTraces(FstSearchHash *this)
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

int64x2_t FstSearchHash::vite(int64x2_t **this, int a2, signed __int32 a3, SearchStats *a4, int a5)
{
  FstSearchHash::advanceDeltas(this, a2, a3, a4, a5);
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
        FstSearchHash::collectTraces(this);
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

int64x2_t FstSearchHash::reset(FstSearchHash *this)
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

double FstSearchHash::doFrame(int64x2_t **this, int a2, signed __int32 a3, SearchStats *a4, int a5)
{
  if (a3 >= 20000)
  {
    a3 = 20000;
  }

  *&result = FstSearchHash::vite(this, a2, a3, a4, a5).u64[0];
  return result;
}

uint64_t FstSearchHash::beginTopRecPassSyncRecog(FstSearchHash *this, PelScorer *a2, const ArcGraph *a3)
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

uint64_t FstSearchHash::endTopRecPassSyncRecog(int64x2_t **this)
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

void FstSearchHash::printSize(FstSearchHash *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
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

BOOL FstSearchHash::findBestPath(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
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

uint64_t FstSearchHash::buildWordLattice(uint64_t a1, unint64_t a2, void *a3, void *a4, char a5)
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
        if ((*v14 - 16777209) >= 2)
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
            FstSearchHash::createLatticeLink(a1, v12, v15, 0xFFFFFFFFLL, v18, *(v26 + 4 * (v13 - *(v28 + v12))), a2, v10, a5);
          }

          v19 = v25[0] + 16 * v12;
          if (*(v19 + 8))
          {
            v20 = 0;
            do
            {
              v21 = *(*v19 + 4 * v20);
              FstSearchHash::createLatticeLink(a1, v12, v15, v21, v18, *(v26 + 4 * (v13 - *(v28 + v21))), a2, v10, a5);
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

void sub_2626360F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void FstSearchHash::createLatticeLink(uint64_t a1, unsigned int a2, int *a3, uint64_t a4, uint64_t a5, const WordLatticeLC *a6, unint64_t a7, uint64_t a8, char a9)
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

void sub_262636320(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WordLatticeLC::~WordLatticeLC(va);
  _Unwind_Resume(a1);
}

uint64_t FstSearchHash::beginTopRecSyncRecog(uint64_t this, VirtMap *a2)
{
  *(this + 112) = a2;
  if (*(this + 356) == 1)
  {
    return MiniFst::beginTopFstSyncRecog(this + 240);
  }

  return this;
}

uint64_t FstSearchHash::endTopRecSyncRecog(FstSearchHash *this)
{
  VirtMap::setEmpty(*(this + 14));
  result = *(this + 14);
  *(this + 14) = 0;
  return result;
}

uint64_t FstSearchHash::getBestExitScore(FstSearchHash *this)
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

uint64_t FstSearchHash::getBestScoreMaybeUpdateFstNode(FstSearchHash *this, Node *a2)
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

_DWORD *FstSearchHash::seedTheory(FstSearchHash *this, int a2, int a3, int a4, SearchStats *a5)
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

uint64_t FstSearchHash::expandEmbFstHistory(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

void FstSearchHash::checkSearchParametersValidityForArcGraph(FstSearchHash *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

uint64_t FstSearchHash::makePartialResult(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void FstSearchLeafLatticeDurationBackoff::FstSearchLeafLatticeDurationBackoff(FstSearchLeafLatticeDurationBackoff *this, const int *a2, const int *a3)
{
  SearchItf::SearchItf(this);
  *v5 = &unk_287524270;
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

uint64_t FstSearchLeafLatticeDurationBackoff::maybeInitDurModel(FstSearchLeafLatticeDurationBackoff *this, const PicMgr *a2, int a3)
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

int64x2_t FstSearchLeafLatticeDurationBackoff::advanceDeltas(FstSearchLeafLatticeDurationBackoff *this, int a2, int a3, SearchStats *a4, int a5)
{
  v151[0] = a2;
  v149 = 0u;
  v150 = 0u;
  SnapTime::recordTime(&v149, 1, 0, 0, 0);
  v113 = (this + 304);
  *(this + 76) = a3;
  v7 = *(this + 2);
  v8 = *(this + 68);
  if (v8)
  {
    v9 = 0;
    *&v116[8] = 0;
    v108 = *(this + 53);
    v109 = *(this + 208);
    *v116 = *(this + 2);
    do
    {
      v10 = *(this + 33);
      v11 = v9;
      v12 = *(v10 + 40 * v9 + 4);
      v110 = v9;
      if (v8 <= v9 + 1)
      {
        v13 = v9 + 1;
      }

      else
      {
        v13 = v8;
      }

      while (v13 - 1 != v9)
      {
        if (*(v10 + 40 * ++v9 + 4) != v12)
        {
          goto LABEL_10;
        }
      }

      v9 = v13;
LABEL_10:
      v14 = *(this + 5);
      if (*(v14 + 160) != v12)
      {
        v15 = *(v14 + 140) <= v12 || v110 >= v9;
        v111 = v9;
        v117 = v11;
        v112 = v12;
        if (!v15)
        {
          v16 = v9;
          v17 = v11;
          v126 = v9;
          do
          {
            if (*(this + 19) + *(this + 76) >= 5000)
            {
              v18 = 5000;
            }

            else
            {
              v18 = *(this + 19) + *(this + 76);
            }

            ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(this + 4), *(*(this + 33) + 40 * v17 + 12), *(*(this + 33) + 40 * v17), v18);
            v20 = *(this + 33) + 40 * v17;
            v21 = *(v20 + 12);
            v22 = *(v20 + 32);
            v23 = *(v20 + 36);
            v24 = v109;
            if (v22 >= 1)
            {
              v24 = v109 - v22;
            }

            v25 = v24 & ((v22 - v109) >> 31);
            if (*(v20 + 12))
            {
              v23 += v25;
            }

            v132 = v23;
            if (*(v20 + 12))
            {
              v26 = v22 - v109;
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

            v28 = v27 + ScoreAllowBackoff_updateNodeInSequence;
            if (v27 + ScoreAllowBackoff_updateNodeInSequence - v7 <= *v113)
            {
              v29 = *(v20 + 4);
              v30 = *(v20 + 16);
              v31 = *(v20 + 24);
              v32 = *(v20 + 28);
              v128 = *(v20 + 30);
              v130 = *(v20 + 14);
              if (*v113 > v28)
              {
                *v113 = v28;
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
              v9 = v111;
              if (v38 == *(this + 73))
              {
                DgnArray<FstSearchLeafLatticeDurationBackoffActiveToken>::reallocElts(this + 280, 1, 1);
                LODWORD(v38) = *(this + 72);
              }

              v39 = *(this + 35) + 40 * v38;
              *v39 = v28;
              *(v39 + 4) = v29;
              *(v39 + 12) = v21;
              *(v39 + 14) = v130;
              *(v39 + 16) = v30;
              *(v39 + 24) = v33;
              *(v39 + 28) = v32 + 1;
              *(v39 + 30) = v128;
              *(v39 + 32) = v26;
              *(v39 + 36) = v132;
              v40 = *(this + 72) + 1;
              *(this + 72) = v40;
              v11 = v117;
              v7 = *v116;
              if (v17 == v117)
              {
                v41 = *&v116[4];
                if (*&v116[8] == 2 * *(this + 4))
                {
                  v41 = v40;
                }

                *&v116[4] = v41;
                ++*&v116[8];
              }

              v12 = v112;
              v16 = v126;
            }

            else
            {
              v12 = v112;
            }

            ++v17;
          }

          while (v17 != v16);
        }

        v42 = v9;
        v43 = v12;
        v114 = v9;
        do
        {
          v44 = *(this + 5);
          v45 = *(v44 + 152);
          v46 = *(v45 + 4 * v43);
          v47 = *(v44 + 140);
          v119 = *(v45 + 4 * (v43 + 1));
          v131 = v46;
          if (v47 <= v119)
          {
            if (*(this + 428) == 1 && v47 <= v12)
            {
              v74 = (v46 & 0xFFFFF) <= 0xFFFF3 ? v46 & 0xFFFFF : v46 & 0xFFFFF | 0xF00000;
              if (v74 != 16777210)
              {
                DgnString::DgnString(&v146);
                ArcGraph::getNameAndHumanReadablePron(*(this + 5), v74, &v146, v75, v76, v77, v78, v79);
                v85 = &unk_26287F8B0;
                if (v146.i32[2])
                {
                  v85 = v146.i64[0];
                }

                v84 = (*(this + 33) + 40 * v11);
                xprintf("Seed from state %d score %d trace %d, %s\n", v80, v81, v82, v83, v12, *v84, v84[2], v85);
                v86 = (*(this + 33) + 40 * v11);
                MiniFst::seed(this + 312, *v86, v86[5], v86[2], v119);
                DgnString::~DgnString(&v146);
              }
            }
          }

          else
          {
            if (*(this + 19) + *(this + 76) >= 5000)
            {
              v48 = 5000;
            }

            else
            {
              v48 = *(this + 19) + *(this + 76);
            }

            v118 = (v46 >> 20) & 0x3FF;
            v49 = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(this + 4), *(v45 + 4 * v43), *(*(this + 33) + 40 * v11) + ((*(v45 + 4 * v43) >> 20) & 0x3FFu), v48);
            if (v110 < v9)
            {
              v129 = v49 - *(*(this + 33) + 40 * v11);
              v50 = v46;
              v51 = v108;
              if (!v46)
              {
                v51 = 0;
              }

              v127 = v51;
              v52 = v11;
              v115 = v43;
              do
              {
                v53 = *(this + 33) + 40 * v52;
                v54 = v129 + *v53;
                v55 = *(*(this + 24) + 2 * v50);
                v56 = v55 & (v55 >> 31);
                if (!v50)
                {
                  v55 = 0;
                }

                v133 = v55;
                if (v50)
                {
                  v57 = v56;
                }

                else
                {
                  v57 = 0;
                }

                v58 = (*(v53 + 32) & ~(*(v53 + 32) >> 31)) - v57 + v127;
                v59 = v54 + v58;
                v60 = v54 + v58 - v7;
                v61 = *(this + 76);
                if (v60 <= v61)
                {
                  v125 = *(v53 + 14);
                  v121 = *(v53 + 16);
                  v122 = *(v53 + 8);
                  v62 = *(v53 + 24);
                  v63 = *(v53 + 28);
                  v123 = *(v53 + 30);
                  v124 = *(v53 + 20);
                  v120 = *(v53 + 36);
                  if (v61 > v59)
                  {
                    *v113 = v59;
                  }

                  v64 = *(this + 56);
                  v65 = v64;
                  if (v63)
                  {
                    v66 = *(this + 27);
                    v67 = v63;
                    v65 = *(this + 56);
                    do
                    {
                      v68 = *(v66 + 2 * v62);
                      if (v65 == *(this + 57))
                      {
                        DgnPrimArray<short>::reallocElts(this + 216, 1, 1);
                        v65 = *(this + 56);
                        v66 = *(this + 27);
                      }

                      *(v66 + 2 * v65++) = v68;
                      *(this + 56) = v65;
                      ++v62;
                      --v67;
                    }

                    while (v67);
                  }

                  if (v65 == *(this + 57))
                  {
                    DgnPrimArray<short>::reallocElts(this + 216, 1, 1);
                    v65 = *(this + 56);
                  }

                  *(*(this + 27) + 2 * v65) = v131;
                  *(this + 56) = v65 + 1;
                  v69 = *(this + 72);
                  v11 = v117;
                  v42 = v114;
                  v43 = v115;
                  if (v69 == *(this + 73))
                  {
                    DgnArray<FstSearchLeafLatticeDurationBackoffActiveToken>::reallocElts(this + 280, 1, 1);
                    LODWORD(v69) = *(this + 72);
                  }

                  v70 = *(this + 35) + 40 * v69;
                  *v70 = v59;
                  *(v70 + 4) = v119;
                  *(v70 + 8) = v122;
                  *(v70 + 12) = v131;
                  *(v70 + 14) = v125;
                  *(v70 + 16) = v121 + v118;
                  *(v70 + 20) = v124;
                  *(v70 + 24) = v64;
                  *(v70 + 28) = v63 + 1;
                  *(v70 + 30) = v123;
                  *(v70 + 32) = v133;
                  *(v70 + 36) = v58 + v120;
                  v71 = *(this + 72) + 1;
                  *(this + 72) = v71;
                  if (v52 == v117)
                  {
                    v72 = *&v116[4];
                    if (*&v116[8] == 2 * *(this + 4))
                    {
                      v72 = v71;
                    }

                    *&v116[4] = v72;
                    ++*&v116[8];
                  }

                  v7 = *v116;
                }

                ++v52;
              }

              while (v52 != v42);
            }
          }

          v43 += 2;
          v9 = v111;
          v12 = v112;
        }

        while ((v131 & 0x80000000) == 0);
        v8 = *(this + 68);
      }
    }

    while (v9 < v8);
    a3 = *v113;
  }

  else
  {
    *&v116[4] = 0;
  }

  v148 = a3 + v7;
  if (*(this + 428) == 1)
  {
    MiniFst::updateFrame(this + 312, v113, v7, a2);
  }

  v146 = 0u;
  v147 = 0u;
  SnapTime::recordTime(&v146, 1, 0, 0, 0);
  v146 = vsubq_s64(v146, v149);
  v147 = vsubq_s64(v147, v150);
  v87 = *(this + 13);
  v88 = vaddq_s64(v87[1], v147);
  *v87 = vaddq_s64(*v87, v146);
  v87[1] = v88;
  v144 = 0u;
  v145 = 0u;
  SnapTime::recordTime(&v144, 1, 0, 0, 0);
  if (*&v116[8] > (2 * *(this + 4)))
  {
    FstSearchLeafLatticeDurationBackoff::applyCutoffOnEmitting(this, *&v116[4], &v148);
  }

  v142 = 0u;
  v143 = 0u;
  SnapTime::recordTime(&v142, 1, 0, 0, 0);
  v89 = vsubq_s64(v142, v144);
  v90 = *(this + 13);
  v91 = v90[3];
  v92 = vaddq_s64(v90[2], v89);
  v142 = v89;
  v143 = vsubq_s64(v143, v145);
  v93 = vaddq_s64(v91, v143);
  v90[2] = v92;
  v90[3] = v93;
  v140 = 0u;
  v141 = 0u;
  SnapTime::recordTime(&v140, 1, 0, 0, 0);
  FstSearchLeafLatticeDurationBackoff::makeViterbiDecisionOnEmitting(this);
  v94 = *(this + 6);
  if (v94)
  {
    v95 = *(this + 68);
    if (v94 < v95)
    {
      mrec_nth_element<FstSearchLeafLatticeDurationBackoffcmpTok>(*(this + 33), v94, v95);
    }
  }

  v138 = 0u;
  v139 = 0u;
  SnapTime::recordTime(&v138, 1, 0, 0, 0);
  v96 = vsubq_s64(v138, v140);
  v97 = *(this + 13);
  v98 = v97[5];
  v99 = vaddq_s64(v97[4], v96);
  v138 = v96;
  v139 = vsubq_s64(v139, v141);
  v100 = vaddq_s64(v98, v139);
  v97[4] = v99;
  v97[5] = v100;
  v136 = 0u;
  v137 = 0u;
  SnapTime::recordTime(&v136, 1, 0, 0, 0);
  *(this + 72) = 0;
  v101 = *(this + 68);
  *(this + 38) = v101;
  if (a4)
  {
    *(a4 + 2) += v101;
    if (*(a4 + 2) > v101)
    {
      LODWORD(v101) = *(a4 + 2);
    }

    *(a4 + 2) = v101;
  }

  if (*(this + 428) == 1)
  {
    FstSearchLeafLatticeDurationBackoff::seedFromMiniFst(this, v151);
  }

  if (a5)
  {
    FstSearchLeafLatticeDurationBackoff::propagateNulls(this, v148, a2, a4);
  }

  *(this + 74) = a2;
  v134 = 0u;
  v135 = 0u;
  SnapTime::recordTime(&v134, 1, 0, 0, 0);
  v102 = *(this + 13);
  result = vaddq_s64(v102[6], vsubq_s64(v134, v136));
  v104 = vaddq_s64(v102[7], vsubq_s64(v135, v137));
  v102[6] = result;
  v102[7] = v104;
  return result;
}

uint64_t FstSearchLeafLatticeDurationBackoff::applyCutoffOnEmitting(uint64_t this, unsigned int a2, int *a3)
{
  v4 = *(this + 288);
  if (v4 > a2)
  {
    v6 = this;
    v7 = a2;
    this = mrec_nth_element<FstSearchLeafLatticeDurationBackoffcmpTok>(*(this + 280), a2, v4);
    v8 = *(*(v6 + 280) + 40 * a2);
    if (*a3 > v8)
    {
      *a3 = v8;
    }

    v9 = *(v6 + 292);
    if (a2 > v9)
    {
      this = DgnArray<FstSearchLeafLatticeDurationBackoffActiveToken>::reallocElts(v6 + 280, a2 - v9, 0);
    }

    v10 = *(v6 + 288);
    if (v10 < a2)
    {
      v11 = v7 - v10;
      v12 = 40 * v10;
      do
      {
        v13 = *(v6 + 280) + v12;
        *v13 = 0xFFFFFFFF00000000;
        *(v13 + 8) = -1;
        *(v13 + 12) = -2;
        *(v13 + 32) = 0;
        *(v13 + 16) = 0;
        *(v13 + 22) = 0;
        v12 += 40;
        --v11;
      }

      while (v11);
    }

    *(v6 + 288) = a2;
  }

  return this;
}

uint64_t FstSearchLeafLatticeDurationBackoff::makeViterbiDecisionOnEmitting(uint64_t this)
{
  v1 = this;
  v2 = *(this + 288);
  if (v2)
  {
    this = mrec_qsort_r<FstSearchLateLatticeHashBackoffActiveToken>(*(this + 280), v2, 40);
    v3 = *(v1 + 288);
    *(v1 + 272) = 0;
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = *(v1 + 280);
        if (v5 && (v8 = (v7 + 40 * v5), *(v8 + 1) == *(v8 - 9)))
        {
          if (v4 >= *(v1 + 20) + v6)
          {
            goto LABEL_16;
          }

          i = v6;
          if (v6 < v4)
          {
            v10 = (*(v1 + 264) + 40 * v6 + 20);
            for (i = v6; v4 != i; ++i)
            {
              v11 = *v10;
              v10 += 10;
              if (v11 == *(v8 + 5))
              {
                break;
              }
            }
          }

          if (i != v4)
          {
            goto LABEL_16;
          }

          v12 = *(v1 + 276);
        }

        else
        {
          v8 = (v7 + 40 * v5);
          v12 = *(v1 + 276);
          v6 = v4;
        }

        if (v4 == v12)
        {
          this = DgnArray<FstSearchLeafLatticeDurationBackoffActiveToken>::reallocElts(v1 + 264, 1, 1);
          v4 = *(v1 + 272);
        }

        v13 = *(v1 + 264) + 40 * v4;
        v14 = *v8;
        v15 = v8[1];
        *(v13 + 32) = *(v8 + 4);
        *v13 = v14;
        *(v13 + 16) = v15;
        v4 = *(v1 + 272) + 1;
        *(v1 + 272) = v4;
LABEL_16:
        ++v5;
      }

      while (v5 < *(v1 + 288));
    }
  }

  else
  {
    *(this + 272) = 0;
  }

  return this;
}

uint64_t mrec_nth_element<FstSearchLeafLatticeDurationBackoffcmpTok>(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = 0;
    do
    {
      v4 = (result + 40 * v3);
      v5 = (result + 40 * (v3 + (a3 >> 1)));
      if ((result & 7) != 0)
      {
        v6 = 40;
        v7 = (result + 40 * v3);
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
        for (i = 0; i != 10; i += 2)
        {
          v10 = *&v4[i];
          *&v4[i] = *&v5[i * 4];
          *&v5[i * 4] = v10;
        }
      }

      v11 = (result - 40 + 40 * (v3 + a3));
      v12 = (result + 40 * v3);
      do
      {
        v13 = v12 + 10;
        while (1)
        {
          v12 = v13;
          if (v13 >= v11)
          {
            break;
          }

          v13 += 10;
          if (*v12 > *v4)
          {
            v14 = v12;
            while (*v11 >= *v4)
            {
              v11 -= 10;
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

              while (v15 != 40);
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

              while (v15 != 40);
            }

            v11 -= 10;
            break;
          }
        }

LABEL_22:
        ;
      }

      while (v12 < v11);
      if (*v12 > *v4)
      {
        v12 -= 10;
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

          while (v18 != 40);
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

          while (v18 != 40);
        }
      }

      v21 = (v12 - v4) / 0x28uLL;
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

uint64_t FstSearchLeafLatticeDurationBackoff::seedFromMiniFst(uint64_t this, int *a2)
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

void sub_262637DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t FstSearchLeafLatticeDurationBackoff::propagateNulls(uint64_t this, uint64_t a2, int a3, SearchStats *a4)
{
  v4 = *(this + 168);
  v101 = this;
  LODWORD(v5) = *(this + 272);
  if (v5)
  {
    v6 = a2;
    v78 = *(this + 168);
    v79 = a4;
    v7 = 0;
    v85 = a2;
    do
    {
      v8 = *(v101 + 264);
      v9 = v7;
      v10 = *(v8 + 40 * v7 + 4);
      v83 = v7;
      if (v5 <= v7 + 1)
      {
        v11 = v7 + 1;
      }

      else
      {
        v11 = v5;
      }

      while (v11 - 1 != v7)
      {
        if (*(v8 + 40 * ++v7 + 4) != v10)
        {
          goto LABEL_10;
        }
      }

      v7 = v11;
LABEL_10:
      v12 = *(v101 + 40);
      if (*(v12 + 160) != v10 && (*(v12 + 140) <= v10 || (*(*(v12 + 152) + 4 * v10) & 0x40000000) != 0))
      {
        v99 = 40 * v9;
        v81 = v10;
        v82 = v7;
        v80 = v7 - v83;
        do
        {
          v13 = *(v101 + 40);
          v14 = *(v13 + 152);
          v86 = v10;
          v91 = *(v14 + 4 * v10);
          v15 = *(v13 + 140);
          v93 = *(v14 + 4 * (v10 + 1));
          if (v15 <= v93)
          {
            v16 = (v91 & 0xFFFFF) <= 0xFFFF3 ? v91 & 0xFFFFF : v91 & 0xFFFFF | 0xF00000;
            v17 = v16 != 16777210 && v15 <= v81;
            if (!v17 && v82 > v83)
            {
              v19 = 0;
              v20 = (v91 >> 20) & 0x3FF;
              v87 = v16 + 1;
              v21 = v80;
              v92 = v16;
              do
              {
                v22 = *(v101 + 264);
                v23 = v22 + v99;
                v24 = *(v22 + v99 + v19);
                v25 = v24 + v20;
                if (v24 + v20 > v6)
                {
                  break;
                }

                v26 = v23 + v19;
                this = *(v23 + v19 + 8);
                v27 = *(v23 + v19 + 12);
                v28 = *(v23 + v19 + 14);
                v29 = *(v23 + v19 + 16);
                v30 = *(v26 + 20);
                v100 = *(v26 + 24);
                v31 = *(v26 + 28);
                v32 = *(v26 + 30);
                v33 = *(v26 + 36);
                v34 = v29 + v20;
                if (v16 == 16777210)
                {
                  v47 = *(v101 + 272);
                  if (v47 == *(v101 + 276))
                  {
                    v95 = this;
                    v97 = v27;
                    v48 = v6;
                    v49 = *(v26 + 30);
                    v50 = v28;
                    v51 = *(v26 + 36);
                    DgnArray<FstSearchLeafLatticeDurationBackoffActiveToken>::reallocElts(v101 + 264, 1, 1);
                    v33 = v51;
                    v28 = v50;
                    v32 = v49;
                    v6 = v48;
                    this = v95;
                    v27 = v97;
                    v20 = (v91 >> 20) & 0x3FF;
                    v16 = v92;
                    LODWORD(v47) = *(v101 + 272);
                    v22 = *(v101 + 264);
                  }

                  v52 = v22 + 40 * v47;
                  *v52 = v25;
                  *(v52 + 4) = v93;
                  *(v52 + 8) = this;
                  *(v52 + 12) = v27;
                  *(v52 + 14) = v28;
                  *(v52 + 16) = v34;
                  *(v52 + 20) = v30;
                  *(v52 + 24) = v100;
                  *(v52 + 28) = v31;
                  *(v52 + 30) = v32;
                  *(v52 + 32) = 0;
                  *(v52 + 36) = v33;
                  ++*(v101 + 272);
                }

                else
                {
                  if (v16 == 16777214)
                  {
                    v35 = v24 - v29;
                  }

                  else
                  {
                    v35 = v24 + v20;
                  }

                  if (v16 == 16777214)
                  {
                    v36 = 0;
                  }

                  else
                  {
                    v36 = v29 + v20;
                  }

                  if (v16 == 16777214)
                  {
                    v37 = v29 + v20;
                  }

                  else
                  {
                    v37 = 0;
                  }

                  v88 = v37;
                  v38 = *(v101 + 184);
                  if (v38 == *(v101 + 188))
                  {
                    v94 = this;
                    v96 = v27;
                    v39 = v32;
                    v89 = v29 + v20;
                    v40 = v28;
                    v41 = v33;
                    v42 = v35;
                    DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(v101 + 176, 1, 1);
                    v35 = v42;
                    v33 = v41;
                    v28 = v40;
                    this = v94;
                    v27 = v96;
                    v34 = v89;
                    v32 = v39;
                    v20 = (v91 >> 20) & 0x3FF;
                    v16 = v92;
                    v38 = *(v101 + 184);
                  }

                  v43 = v87 + 2 * v30;
                  v44 = *(v101 + 176);
                  *(v101 + 184) = v38 + 1;
                  v45 = v44 + 28 * v38;
                  *v45 = v35;
                  *(v45 + 4) = v36;
                  *(v45 + 8) = v43;
                  *(v45 + 12) = this;
                  *(v45 + 16) = v100;
                  *(v45 + 20) = v31;
                  *(v45 + 24) = v33;
                  v46 = *(v101 + 168);
                  if (v19)
                  {
                    v6 = v85;
                  }

                  else
                  {
                    v6 = v85;
                    if (v46 == *(v101 + 172))
                    {
                      v53 = v32;
                      v54 = v28;
                      v98 = v35;
                      this = DgnArray<DgnPrimArray<double>>::reallocElts(v101 + 160, 1, 1);
                      v35 = v98;
                      v28 = v54;
                      v32 = v53;
                      v20 = (v91 >> 20) & 0x3FF;
                      v16 = v92;
                      v46 = *(v101 + 168);
                    }

                    v55 = (*(v101 + 160) + 16 * v46);
                    *v55 = v16;
                    v55[1] = a3;
                    v55[2] = v38;
                    v55[3] = 0;
                    v56 = *(v101 + 168);
                    *(v101 + 168) = v56 + 1;
                    v57 = *(v101 + 272);
                    if (v57 == *(v101 + 276))
                    {
                      v58 = v32;
                      v90 = v34;
                      v59 = v28;
                      v60 = v35;
                      this = DgnArray<FstSearchLeafLatticeDurationBackoffActiveToken>::reallocElts(v101 + 264, 1, 1);
                      v35 = v60;
                      v28 = v59;
                      v34 = v90;
                      v32 = v58;
                      v20 = (v91 >> 20) & 0x3FF;
                      v16 = v92;
                      LODWORD(v57) = *(v101 + 272);
                    }

                    v61 = *(v101 + 264) + 40 * v57;
                    *v61 = v35 + v88;
                    *(v61 + 4) = v93;
                    *(v61 + 8) = v56;
                    *(v61 + 12) = v27;
                    *(v61 + 14) = v28;
                    *(v61 + 16) = v34;
                    *(v61 + 20) = v43;
                    *(v61 + 24) = v100;
                    *(v61 + 28) = 0;
                    *(v61 + 30) = v32;
                    *(v61 + 32) = 0;
                    ++*(v101 + 272);
                    v46 = *(v101 + 168);
                  }

                  v62 = *(v101 + 160) + 16 * (v46 - 1);
                  ++*(v62 + 12);
                }

                v19 += 40;
                --v21;
              }

              while (v21);
            }
          }

          v10 = v86 + 2;
        }

        while ((v91 & 0x80000000) == 0);
        LODWORD(v5) = *(v101 + 272);
        v7 = v82;
      }
    }

    while (v7 < v5);
    v63 = *(v101 + 152);
    if (v5 > v63)
    {
      this = mrec_qsort_r<FstSearchLateLatticeHashBackoffActiveToken>((*(v101 + 264) + 40 * v63), (v5 - v63), 40);
      v63 = *(v101 + 152);
      LODWORD(v5) = *(v101 + 272);
    }

    if (v63 < v5)
    {
      v64 = v63;
      v65 = v63;
      do
      {
        v66 = *(v101 + 264);
        v67 = (v66 + 40 * v64);
        this = v63;
        if (*(v67 + 1) != *(v66 + 40 * (v64 - 1) + 4))
        {
          goto LABEL_67;
        }

        if ((v63 - v65) < *(v101 + 20))
        {
          v68 = v65;
          if (v63 > v65)
          {
            v69 = (v66 + 40 * v65 + 20);
            v68 = v65;
            while (1)
            {
              v70 = *v69;
              v69 += 10;
              if (v70 == *(v67 + 5))
              {
                break;
              }

              if (v63 == ++v68)
              {
                this = v65;
                goto LABEL_67;
              }
            }
          }

          this = v65;
          if (v68 == v63)
          {
LABEL_67:
            v71 = v66 + 40 * v63;
            v72 = *v67;
            v73 = v67[1];
            *(v71 + 32) = *(v67 + 4);
            *v71 = v72;
            *(v71 + 16) = v73;
            v63 = (v63 + 1);
            v65 = this;
          }
        }

        ++v64;
        v5 = *(v101 + 272);
      }

      while (v64 < v5);
    }

    a4 = v79;
    v4 = v78;
    if (v79)
    {
      goto LABEL_70;
    }
  }

  else
  {
    LODWORD(v63) = *(this + 152);
    if (a4)
    {
LABEL_70:
      *(a4 + 1) += *(v101 + 168) - v4;
    }
  }

  v74 = *(v101 + 276);
  if (v63 > v74)
  {
    this = DgnArray<FstSearchLeafLatticeDurationBackoffActiveToken>::reallocElts(v101 + 264, v63 - v74, 0);
    LODWORD(v5) = *(v101 + 272);
  }

  if (v5 < v63)
  {
    v75 = v63 - v5;
    v76 = 40 * v5;
    do
    {
      v77 = *(v101 + 264) + v76;
      *v77 = 0xFFFFFFFF00000000;
      *(v77 + 8) = -1;
      *(v77 + 12) = -2;
      *(v77 + 32) = 0;
      *(v77 + 16) = 0;
      *(v77 + 22) = 0;
      v76 += 40;
      --v75;
    }

    while (v75);
  }

  *(v101 + 272) = v63;
  return this;
}

uint64_t FstSearchLeafLatticeDurationBackoff::collectTraces(FstSearchLeafLatticeDurationBackoff *this)
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

void sub_2626388AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a9);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a11);
  _Unwind_Resume(a1);
}

int64x2_t FstSearchLeafLatticeDurationBackoff::vite(int64x2_t **this, int a2, int a3, SearchStats *a4, int a5)
{
  FstSearchLeafLatticeDurationBackoff::advanceDeltas(this, a2, a3, a4, a5);
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
        FstSearchLeafLatticeDurationBackoff::collectTraces(this);
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

_DWORD *FstSearchLeafLatticeDurationBackoff::reset(_DWORD *this)
{
  this[42] = 0;
  this[46] = 0;
  this[56] = 0;
  this[68] = 0;
  return this;
}

double FstSearchLeafLatticeDurationBackoff::doFrame(int64x2_t **this, int a2, int a3, SearchStats *a4, int a5)
{
  if (a3 >= 20000)
  {
    a3 = 20000;
  }

  *&result = FstSearchLeafLatticeDurationBackoff::vite(this, a2, a3, a4, a5).u64[0];
  return result;
}

uint64_t FstSearchLeafLatticeDurationBackoff::beginTopRecPassSyncRecog(FstSearchLeafLatticeDurationBackoff *this, PelScorer *a2, const ArcGraph *a3)
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

uint64_t FstSearchLeafLatticeDurationBackoff::endTopRecPassSyncRecog(FstSearchLeafLatticeDurationBackoff *this)
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

void FstSearchLeafLatticeDurationBackoff::printSize(FstSearchLeafLatticeDurationBackoff *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
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

uint64_t FstSearchLeafLatticeDurationBackoff::getBestTrace(uint64_t a1, void *a2, void *a3, int a4)
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 152);
  }

  v5 = *(a1 + 272);
  if (v4 >= v5)
  {
    goto LABEL_21;
  }

  v6 = 40 * v4;
  v7 = 1879048192;
  v8 = 0xFFFFFFFFLL;
  do
  {
    v9 = *(a1 + 264);
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

    v11 = *(*(a1 + 176) + 28 * *(*(a1 + 160) + 16 * v10 + 8)) + *(*(a1 + 88) + 4 * *(*(a1 + 160) + 16 * v10 + 4));
    v12 = v7 <= v11;
    if (v7 >= v11)
    {
      v7 = *(*(a1 + 176) + 28 * *(*(a1 + 160) + 16 * v10 + 8)) + *(*(a1 + 88) + 4 * *(*(a1 + 160) + 16 * v10 + 4));
    }

    if (!v12)
    {
      v8 = v10;
    }

    v5 = *(a1 + 272);
LABEL_19:
    ++v4;
    v6 += 40;
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

BOOL FstSearchLeafLatticeDurationBackoff::findBestPath(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
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

unint64_t FstSearchLeafLatticeDurationBackoff::createLatticeNodes(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
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
            v29 = (v28 + 28 * v27);
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
              v35 = (v28 + 28 * *(v33 + 8));
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

uint64_t FstSearchLeafLatticeDurationBackoff::buildWordLattice(unint64_t a1, unint64_t a2, void *a3, void *a4, unsigned __int8 a5)
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
              FstSearchLeafLatticeDurationBackoff::createLatticeLink(a1, v9, v13, 0xFFFFFFFFLL, v16, *(v25 + 4 * (v10 - *(v27 + v9))), a2, v8, a5);
            }

            v17 = v24[0] + 16 * v9;
            if (*(v17 + 8))
            {
              v18 = 0;
              do
              {
                v19 = *(*v17 + 4 * v18);
                FstSearchLeafLatticeDurationBackoff::createLatticeLink(a1, v9, v13, v19, v16, *(v25 + 4 * (v10 - *(v27 + v19))), a2, v8, a5);
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

void sub_262639A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void FstSearchLeafLatticeDurationBackoff::createLatticeLink(unint64_t a1, unsigned int a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unsigned __int8 a9)
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