uint64_t ParamSetHolderMgr::getParamSetHolder(ParamSetHolderMgr *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == -1)
  {
    return 0;
  }

  if (*(this + 2) <= a2 || (result = *(*this + 8 * a2)) == 0)
  {
    v10 = a2;
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 2796, "recogctl/psholder", 1, "%u", a7, a8, a2);
    return *(*this + 8 * v10);
  }

  return result;
}

uint64_t ParamSetHolder::getParamSet(ParamSetHolder *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == -1)
  {
    return 0;
  }

  result = *(*(this + 1) + 8 * a2);
  if (!result)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 2223, "recogctl/psholder", 9, "%u", a7, a8, a2);
    return *(*(this + 1) + 8 * a2);
  }

  return result;
}

DgnString *Hash<DgnString,DgnString,DgnStringScope,unsigned int>::add(uint64_t a1, char **a2, _DWORD *a3)
{
  v6 = *(a1 + 12);
  if (*(a1 + 8) >= v6 >> 1)
  {
    HashKEV<unsigned int,unsigned int,CWIDScope>::upSize(a1, 2 * v6);
  }

  v7 = *a2;
  if (!*(a2 + 2))
  {
    v7 = byte_26286EA0E;
  }

  v8 = *v7;
  if (*v7)
  {
    v9 = 0;
    v10 = (v7 + 1);
    do
    {
      HIDWORD(v11) = v9;
      LODWORD(v11) = v9;
      v9 = (v11 >> 19) + v8;
      v12 = *v10++;
      v8 = v12;
    }

    while (v12);
  }

  else
  {
    v9 = 0;
  }

  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = (-1640531527 * v9) >> -v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 80);
  v16 = *(a1 + 32);
  if (!v16)
  {
    DgnPool::addChunk((a1 + 24));
    v16 = *(a1 + 32);
  }

  v17 = (v15 + 8 * v14);
  *(a1 + 32) = *v16;
  *(v16 + 8) = 0;
  result = DgnString::DgnString((v16 + 16), a2);
  *(v16 + 32) = *a3;
  *(v16 + 8) = v9;
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

DynamicParamSet *DgnDelete<DynamicParamSet>(DynamicParamSet *result)
{
  if (result)
  {
    DynamicParamSet::~DynamicParamSet(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t ParamSetHolderMgr::startupParamSetHolderMgr(ParamSetHolderMgr *this)
{
  DgnTextFileWriter::DgnTextFileWriter(v75);
  v74[0] = 0;
  v74[1] = 0;
  v73[0] = 0;
  v73[1] = 0;
  v72[0] = 0;
  v72[1] = 0;
  v71[0] = 0;
  v71[1] = 0;
  v70[0] = 0;
  v70[1] = 0;
  v69[0] = 0;
  v69[1] = 0;
  v68[0] = 0;
  v68[1] = 0;
  v67[0] = 0;
  v67[1] = 0;
  v66[0] = 0;
  v66[1] = 0;
  v65[0] = 0;
  v65[1] = 0;
  v64[0] = 0;
  v64[1] = 0;
  v63[0] = 0;
  v63[1] = 0;
  DgnTextFile::legalDgnTextFileVersions(v75, sADPT_Versions, v74, v1, v2, v3, v4, v5);
  DgnTextFile::legalDgnTextFileVersions(v75, sCHPT_Versions, v73, v6, v7, v8, v9, v10);
  DgnTextFile::legalDgnTextFileVersions(v75, sCOPT_Versions, v72, v11, v12, v13, v14, v15);
  DgnTextFile::legalDgnTextFileVersions(v75, sLNPT_Versions, v71, v16, v17, v18, v19, v20);
  DgnTextFile::legalDgnTextFileVersions(v75, sLPPT_Versions, v70, v21, v22, v23, v24, v25);
  DgnTextFile::legalDgnTextFileVersions(v75, sPBPT_Versions, v69, v26, v27, v28, v29, v30);
  DgnTextFile::legalDgnTextFileVersions(v75, sPSPT_Versions, v68, v31, v32, v33, v34, v35);
  DgnTextFile::legalDgnTextFileVersions(v75, sPGPT_Versions, v67, v36, v37, v38, v39, v40);
  DgnTextFile::legalDgnTextFileVersions(v75, sSAPT_Versions, v66, v41, v42, v43, v44, v45);
  DgnTextFile::legalDgnTextFileVersions(v75, sSRPT_Versions, v65, v46, v47, v48, v49, v50);
  DgnTextFile::legalDgnTextFileVersions(v75, sSCPT_Versions, v64, v51, v52, v53, v54, v55);
  DgnTextFile::legalDgnTextFileVersions(v75, sUDPT_Versions, v63, v56, v57, v58, v59, v60);
  DgnIArray<Utterance *>::~DgnIArray(v63);
  DgnIArray<Utterance *>::~DgnIArray(v64);
  DgnIArray<Utterance *>::~DgnIArray(v65);
  DgnIArray<Utterance *>::~DgnIArray(v66);
  DgnIArray<Utterance *>::~DgnIArray(v67);
  DgnIArray<Utterance *>::~DgnIArray(v68);
  DgnIArray<Utterance *>::~DgnIArray(v69);
  DgnIArray<Utterance *>::~DgnIArray(v70);
  DgnIArray<Utterance *>::~DgnIArray(v71);
  DgnIArray<Utterance *>::~DgnIArray(v72);
  DgnIArray<Utterance *>::~DgnIArray(v73);
  DgnIArray<Utterance *>::~DgnIArray(v74);
  DgnTextFileWriter::~DgnTextFileWriter(v75);
  v61 = MemChunkAlloc(0x40uLL, 0);
  *v61 = 0u;
  v61[2] = 0x10000001DLL;
  *(v61 + 6) = 1;
  v61[5] = 0;
  v61[6] = 0;
  v61[4] = 0;
  *(v61 + 14) = 0;
  ParamSetHolderMgr::smpParamSetHolderMgr = v61;
  StartupAdapterParamSpecMgr();
  StartupChannelParamSpecMgr();
  StartupConfidenceParamSpecMgr();
  StartupLatticeNBestParamSpecMgr();
  StartupLatticePostProbParamSpecMgr();
  StartupPrefiltererBuildParamSpecMgr();
  StartupPrefiltererSearchParamSpecMgr();
  StartupPronGuessParamSpecMgr();
  StartupSausageParamSpecMgr();
  StartupSearchParamSpecMgr();
  StartupSearchCrossLayerParamSpecMgr();
  return StartupUserDeltaParamSpecMgr();
}

void sub_2625CCF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, char a32, uint64_t a33, char a34)
{
  DgnIArray<Utterance *>::~DgnIArray(&a10);
  DgnIArray<Utterance *>::~DgnIArray(&a12);
  DgnIArray<Utterance *>::~DgnIArray(&a14);
  DgnIArray<Utterance *>::~DgnIArray(&a16);
  DgnIArray<Utterance *>::~DgnIArray(&a18);
  DgnIArray<Utterance *>::~DgnIArray(&a20);
  DgnIArray<Utterance *>::~DgnIArray(&a22);
  DgnIArray<Utterance *>::~DgnIArray(&a24);
  DgnIArray<Utterance *>::~DgnIArray(&a26);
  DgnIArray<Utterance *>::~DgnIArray(&a28);
  DgnIArray<Utterance *>::~DgnIArray(&a30);
  DgnIArray<Utterance *>::~DgnIArray(&a32);
  DgnTextFileWriter::~DgnTextFileWriter(&a34);
  _Unwind_Resume(a1);
}

void ParamSetHolderMgr::deleteParamSetHolder(ParamSetHolderMgr *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ParamSetHolder = ParamSetHolderMgr::getParamSetHolder(this, a2, a3, a4, a5, a6, a7, a8);
  v11 = ParamSetHolder;
  v12 = *(ParamSetHolder + 16);
  if (v12)
  {
    v13 = 0;
    for (i = 0; i < v12; ++i)
    {
      v15 = *(*(ParamSetHolder + 8) + 8 * i);
      if (v15)
      {
        v13 += *(v15 + 36);
      }
    }

    if (v13)
    {
      ParamSetHolder::getRefDetails(ParamSetHolder, &v18);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 2820, "recogctl/psholder", 2, "%u %.500s", v16, v17, a2);
      DgnString::~DgnString(&v18);
    }
  }

  DgnDelete<ParamSetHolder>(v11);
  *(*this + 8 * a2) = 0;
  IdMgr<unsigned int>::recycleId(this + 4, a2);
}

void sub_2625CD0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

EnvMgr **DgnDelete<ParamSetHolder>(EnvMgr **result)
{
  if (result)
  {
    ParamSetHolder::~ParamSetHolder(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t ParamSetHolderMgr::loadParamSetHolder(ParamSetHolderMgr *this, char **a2)
{
  NextId = IdMgr<unsigned int>::getNextId(this + 4);
  for (i = *(this + 2); i <= NextId; *(this + 2) = i)
  {
    if (i == *(this + 3))
    {
      DgnPrimArray<unsigned long long>::reallocElts(this, 1, 1);
      i = *(this + 2);
    }

    *(*this + 8 * i++) = 0;
  }

  v6 = MemChunkAlloc(0x4B0uLL, 0);
  ParamSetHolder::ParamSetHolder(v6, NextId);
  ParamSetHolder::loadParamSetHolder(v7, a2);
  *(*this + 8 * NextId) = v6;
  return NextId;
}

void ParamSetHolderMgr::printSize(ParamSetHolderMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 2862, &v71);
  if (v72)
  {
    v16 = v71;
  }

  else
  {
    v16 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, byte_26286EA0E, a3, byte_26286EA0E, v16);
  DgnString::~DgnString(&v71);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, byte_26286EA0E);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 2864, &v71);
  if (v72)
  {
    v25 = v71;
  }

  else
  {
    v25 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v21, v22, v23, v24, (a3 + 1), byte_26286EA0E, (a3 + 1), byte_26286EA0E, v25);
  v68 = a6;
  DgnString::~DgnString(&v71);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v26, v27, v28, v29, (a3 + 1), byte_26286EA0E);
  v30 = *(this + 2);
  if (v30)
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    do
    {
      v35 = *(*this + 8 * v31);
      if (v35)
      {
        v70 = 0;
        v71 = 0;
        v69 = 0;
        ParamSetHolder::printSize(v35, v31, (a3 + 2), &v71, &v70, &v69);
        v32 += v71;
        v34 += v70;
        v33 += v69;
        v30 = *(this + 2);
      }

      ++v31;
    }

    while (v31 < v30);
  }

  else
  {
    v34 = 0;
    v33 = 0;
    v32 = 0;
    v30 = 0;
  }

  v36 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v36 = 12;
  }

  v37 = v36 + v32;
  v38 = v36 + v34;
  v39 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v39 = 3;
  }

  v40 = v37 + (*(this + 3) << v39);
  v41 = v38 + (v30 << v39);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 2864, &v71);
  if (v72)
  {
    v46 = v71;
  }

  else
  {
    v46 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v43, v44, v45, (a3 + 1), byte_26286EA0E, (34 - a3), (34 - a3), v46, v40, v41, v33);
  DgnString::~DgnString(&v71);
  *a4 += v40;
  *a5 += v41;
  *v68 += v33;
  v47 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v47 = 12;
  }

  v48 = *(this + 10);
  v49 = *(this + 11);
  v50 = v47 + 4 * (v48 - 1) + 4;
  if (v48 <= 0)
  {
    v50 = v47;
  }

  v51 = v49 >= v48;
  v52 = v50 + 4 * (v49 - v48);
  if (v51)
  {
    v47 = v52;
  }

  v53 = v47 + 24;
  v54 = DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::sizeObject(this + 8, 1u) + 12;
  v55 = *(this + 10);
  if (v55 <= *(this + 11))
  {
    v56 = 0;
  }

  else
  {
    v56 = 4 * v55;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 2866, &v71);
  if (v72)
  {
    v61 = v71;
  }

  else
  {
    v61 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v57, v58, v59, v60, (a3 + 1), byte_26286EA0E, (34 - a3), (34 - a3), v61, v53, v54, v56);
  DgnString::~DgnString(&v71);
  *a4 += v53;
  *a5 += v54;
  *v68 += v56;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 2867, &v71);
  if (v72)
  {
    v66 = v71;
  }

  else
  {
    v66 = byte_26286EA0E;
  }

  v67 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v62, v63, v64, v65, a3, byte_26286EA0E, (35 - a3), (35 - a3), v66, *a4, *a5, *v68);
  DgnString::~DgnString(&v71);
}

void sub_2625CD584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void *ParamSetHolderMgr::getLatticeNBestParamSet(ParamSetHolderMgr *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  ParamSetHolder = ParamSetHolderMgr::getParamSetHolder(this, a2, a3, a4, a5, a6, a7, a8);
  if (!ParamSetHolder)
  {
    return 0;
  }

  ParamSet = ParamSetHolder::getParamSet(ParamSetHolder, v8, v10, v11, v12, v13, v14, v15);
  if (!ParamSet)
  {
    return 0;
  }

  v17 = **ParamSet;
}

void *ParamSetHolderMgr::getPronGuessParamSet(ParamSetHolderMgr *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  ParamSetHolder = ParamSetHolderMgr::getParamSetHolder(this, a2, a3, a4, a5, a6, a7, a8);
  if (!ParamSetHolder)
  {
    return 0;
  }

  ParamSet = ParamSetHolder::getParamSet(ParamSetHolder, v8, v10, v11, v12, v13, v14, v15);
  if (!ParamSet)
  {
    return 0;
  }

  v17 = **ParamSet;
}

void *ParamSetHolderMgr::getSearchParamSet(ParamSetHolderMgr *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  ParamSetHolder = ParamSetHolderMgr::getParamSetHolder(this, a2, a3, a4, a5, a6, a7, a8);
  if (!ParamSetHolder)
  {
    return 0;
  }

  ParamSet = ParamSetHolder::getParamSet(ParamSetHolder, v8, v10, v11, v12, v13, v14, v15);
  if (!ParamSet)
  {
    return 0;
  }

  v17 = **ParamSet;
}

void *upgrade0002(DgnString *a1, const DgnString *a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  BoolParameter = DynamicParamSet::getBoolParameter(a3, "AdaptationConTransAccComputeExtraGlobalTransform");
  DynamicParamSet::setBoolParameter(a15, "AdaptationConTransAccComputeHierScorerTransforms", BoolParameter);

  return DynamicParamSet::removeParameter(a15, "AdaptationConTransAccComputeExtraGlobalTransform");
}

uint64_t upgrade0006(DgnString *a1, const DgnString *a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  BoolParameter = DynamicParamSet::getBoolParameter(a4, "ChannelAdaptationMeansUseGlobalAccum");
  DynamicParamSet::removeParameter(a16, "ChannelAdaptationMeansUseGlobalAccum");

  return DynamicParamSet::setIntParameter(a16, "ChannelAdaptationMeansAccumSmoothingWindowMicroseconds", BoolParameter << 31 >> 31);
}

void *upgrade0009(DgnString *a1, const DgnString *a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  DynamicParamSet::removeParameter(a24, "SearchConstraintLatticeMaxSyntheticSilenceFrames");
  DynamicParamSet::removeParameter(a24, "SearchConstraintLatticeMergeNodeMaxFrames");
  DynamicParamSet::removeParameter(a24, "SearchConstraintLatticePreserveTimes");

  return DynamicParamSet::removeParameter(a24, "SearchGenerateConstraintLattice");
}

uint64_t upgrade0012(DgnString *a1, const DgnString *a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  DynamicParamSet::setBoolParameter(a24, "SearchActiveWordHasMergedLatticeLinkId", 0);

  return DynamicParamSet::setIntParameter(a24, "SearchLatticeTimeConstraintDistanceMaxFrames", -1);
}

void *upgrade0014(DgnString *a1, const DgnString *a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  result = DynamicParamSet::removeParameter(a24, "SearchActiveCountLimitScoreCompareWithBeam");
  if (*(a1 + 2) <= 1u)
  {

    return DgnString::stringPrintf(a1, " Removed parameter SearchActiveCountLimitScoreCompareWithBeam added in 1.22.100 fork.", v28, v29, v30);
  }

  return result;
}

uint64_t upgrade0015(DgnString *a1, const DgnString *a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  DynamicParamSet::setBoolParameter(a20, "PrefiltererBuildDisableHierarchicalScorer", 0);
  DynamicParamSet::setBoolParameter(a20, "PrefiltererBuildDisableGPUScorer", 0);
  DynamicParamSet::setBoolParameter(a24, "SearchDisableHierarchicalScorer", 0);

  return DynamicParamSet::setBoolParameter(a24, "SearchDisableGPUScorer", 0);
}

uint64_t upgrade0016(DgnString *a1, const DgnString *a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  DynamicParamSet::setBoolParameter(a21, "PrefiltererPelScoreUseBestCompScore", 0);

  return DynamicParamSet::setBoolParameter(a24, "SearchPelScoreUseBestCompScore", 0);
}

void upgrade0017(DgnString *a1, char **a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  DynamicParamSet::removeParameter(a20, "PrefiltererBuildHierScorerCutoffList");
  DynamicParamSet::removeParameter(a24, "SearchHierScorerCutoffList");
  DynamicParamSet::setStringParameter(a20, "PrefiltererBuildHierScorerCutoffRatioList", byte_26286EA0E, 0);
  DynamicParamSet::setStringParameter(a24, "SearchHierScorerCutoffRatioList", byte_26286EA0E, 0);
  DgnString::DgnString(v39);
  IntParameter = DynamicParamSet::getIntParameter(a8, "PrefiltererBuildHierInactiveComponentScore");
  if (IntParameter <= 299)
  {
    DynamicParamSet::setIntParameter(a20, "PrefiltererBuildHierInactiveComponentScore", 400);
    if (*(a1 + 2) <= 1u)
    {
      if (v40 >= 2)
      {
        DgnString::operator+=(v39, ";");
      }

      if (*(a2 + 2))
      {
        v33 = *a2;
      }

      else
      {
        v33 = byte_26286EA0E;
      }

      DgnString::printfAppend(v39, " Increased parameter PrefiltererBuildHierInactiveComponentScore from %d to %d in param set '%.500s'", v30, v31, v32, IntParameter, 400, v33);
    }
  }

  v34 = DynamicParamSet::getIntParameter(a12, "SearchHierInactiveComponentScore");
  if (v34 <= 299)
  {
    DynamicParamSet::setIntParameter(a24, "SearchHierInactiveComponentScore", 400);
    if (*(a1 + 2) <= 1u)
    {
      if (v40 >= 2)
      {
        DgnString::operator+=(v39, ";");
      }

      if (*(a2 + 2))
      {
        v38 = *a2;
      }

      else
      {
        v38 = byte_26286EA0E;
      }

      DgnString::printfAppend(v39, " Increased parameter SearchHierInactiveComponentScore from %d to %d in param set '%.500s'", v35, v36, v37, v34, 400, v38);
    }
  }

  if (*(a1 + 2) <= 1u)
  {
    DgnString::operator=(a1, v39);
  }

  DgnString::~DgnString(v39);
}

void sub_2625CDC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t upgrade0018(DgnString *a1, char **a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  result = DynamicParamSet::getIntParameter(a8, "PrefiltererBuildHierInactiveComponentScore");
  if (result <= 299)
  {
    v29 = result;
    result = DynamicParamSet::setIntParameter(a20, "PrefiltererBuildHierInactiveComponentScore", 400);
    if (*(a1 + 2) <= 1u)
    {
      if (*(a2 + 2))
      {
        v33 = *a2;
      }

      else
      {
        v33 = byte_26286EA0E;
      }

      return DgnString::stringPrintf(a1, " Increased parameter PrefiltererBuildHierInactiveComponentScore from %d to %d in param set '%.500s'", v30, v31, v32, v29, 400, v33);
    }
  }

  return result;
}

uint64_t upgrade0020(DgnString *a1, const DgnString *a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  EnumParameter = DynamicParamSet::getEnumParameter(a12, "FstCoreSearchType");
  DynamicParamSet::removeParameter(a24, "FstCoreSearchType");
  v27 = strcmp(EnumParameter, "ViteAIX") != 0;

  return DynamicParamSet::setBoolParameter(a24, "FstCoreGenerateLattice", v27);
}

uint64_t upgrade0021(DgnString *a1, const DgnString *a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  DynamicParamSet::setBoolParameter(a24, "FstCoreHashTokens", 0);

  return DynamicParamSet::setBoolParameter(a24, "FstCoreUseFwdBwdAlgorithm", 0);
}

void upgrade0024(DgnString *a1, char **a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  DgnString::DgnString(v77);
  EnumParameter = DynamicParamSet::getEnumParameter(a9, "PrefiltererAdjustThreshScoreType");
  v32 = strcmp(EnumParameter, "BestPel");
  if (!v32)
  {
    if (*(a1 + 2) <= 1u)
    {
      if (v78 >= 2)
      {
        DgnString::operator+=(v77, ";");
      }

      if (*(a2 + 2))
      {
        v33 = *a2;
      }

      else
      {
        v33 = byte_26286EA0E;
      }

      DgnString::printfAppend(v77, " Removed parameter PrefiltererAdjustThreshScoreType='%.500s' in param set '%.500s'", v29, v30, v31, EnumParameter, v33);
    }

    IntParameter = DynamicParamSet::getIntParameter(a9, "PrefiltererMaxSeedScore");
    v35 = IntParameter;
    if ((IntParameter & 0x80000000) == 0)
    {
      v36 = IntParameter <= 0x3D3 ? (IntParameter + 20) : 1000;
      DynamicParamSet::setIntParameter(a21, "PrefiltererMaxSeedScore", v36);
      if (*(a1 + 2) <= 1u)
      {
        if (v78 >= 2)
        {
          DgnString::operator+=(v77, ";");
        }

        if (*(a2 + 2))
        {
          v40 = *a2;
        }

        else
        {
          v40 = byte_26286EA0E;
        }

        DgnString::printfAppend(v77, " Changed parameter PrefiltererMaxSeedScore from %d to %d in param set '%.500s'", v37, v38, v39, v35, v36, v40);
      }
    }

    v41 = DynamicParamSet::getIntParameter(a9, "PrefiltererPelBackoffThreshScoreDecrement");
    v42 = v41;
    if ((v41 & 0x80000000) == 0)
    {
      v43 = v41 <= 0x14 ? 20 : v41;
      v44 = (v43 - 20);
      DynamicParamSet::setIntParameter(a21, "PrefiltererPelBackoffThreshScoreDecrement", v43 - 20);
      if (*(a1 + 2) <= 1u)
      {
        if (v78 >= 2)
        {
          DgnString::operator+=(v77, ";");
        }

        if (*(a2 + 2))
        {
          v48 = *a2;
        }

        else
        {
          v48 = byte_26286EA0E;
        }

        DgnString::printfAppend(v77, " Changed parameter PrefiltererPelBackoffThreshScoreDecrement from %d to %d in param set '%.500s'", v45, v46, v47, v42, v44, v48);
      }
    }

    v49 = DynamicParamSet::getIntParameter(a9, "PrefiltererReturnListThreshScoreDecrement");
    if (v49 >= 100)
    {
      DynamicParamSet::setIntParameter(a21, "PrefiltererReturnListThreshScoreDecrement", v49 - 20);
      if (*(a1 + 2) <= 1u)
      {
        if (v78 >= 2)
        {
          DgnString::operator+=(v77, ";");
        }

        if (*(a2 + 2))
        {
          v53 = *a2;
        }

        else
        {
          v53 = byte_26286EA0E;
        }

        DgnString::printfAppend(v77, " Changed parameter PrefiltererReturnListThreshScoreDecrement from %d to %d in param set '%.500s'", v50, v51, v52, v49, (v49 - 20), v53);
      }
    }
  }

  v54 = DynamicParamSet::getEnumParameter(a12, "SearchAdjustThreshScoreType");
  if (!strcmp(v54, "BestPelAndSuccessor") || !strcmp(v54, "BestPel"))
  {
    if (*(a1 + 2) <= 1u)
    {
      if (v78 >= 2)
      {
        DgnString::operator+=(v77, ";");
      }

      if (*(a2 + 2))
      {
        v59 = *a2;
      }

      else
      {
        v59 = byte_26286EA0E;
      }

      DgnString::printfAppend(v77, " Removed parameter SearchAdjustThreshScoreType='%.500s' in param set '%.500s'", v55, v56, v57, v54, v59);
    }

    v60 = DynamicParamSet::getIntParameter(a12, "SearchWordEndAgainstBestWordEndThreshScoreDecrement");
    if (v60 <= 99)
    {
      v61 = 190;
    }

    else
    {
      v61 = 210;
    }

    DynamicParamSet::setIntParameter(a24, "SearchWordEndAgainstBestWordEndThreshScoreDecrement", v61);
    if (*(a1 + 2) <= 1u)
    {
      if (v78 >= 2)
      {
        DgnString::operator+=(v77, ";");
      }

      if (*(a2 + 2))
      {
        v65 = *a2;
      }

      else
      {
        v65 = byte_26286EA0E;
      }

      DgnString::printfAppend(v77, " Changed parameter SearchWordEndAgainstBestWordEndThreshScoreDecrement from %d to %d in param set '%.500s'", v62, v63, v64, v60, v61, v65);
    }

    v66 = DynamicParamSet::getIntParameter(a12, "SearchWordEndThreshScoreDecrement");
    DynamicParamSet::setIntParameter(a24, "SearchWordEndThreshScoreDecrement", 120);
    if (*(a1 + 2) <= 1u)
    {
      if (v78 >= 2)
      {
        DgnString::operator+=(v77, ";");
      }

      if (*(a2 + 2))
      {
        v70 = *a2;
      }

      else
      {
        v70 = byte_26286EA0E;
      }

      DgnString::printfAppend(v77, " Changed parameter SearchWordEndThreshScoreDecrement from %d to %d in param set '%.500s'", v67, v68, v69, v66, 120, v70);
    }

    v58 = 1;
  }

  else
  {
    v58 = 0;
  }

  DynamicParamSet::removeParameter(a21, "PrefiltererAdjustThreshScoreType");
  DynamicParamSet::removeParameter(a24, "SearchAdjustThreshScoreType");
  v71 = DynamicParamSet::getIntParameter(a12, "SearchWordEndAgainstPrevBestNodeThreshScore");
  DynamicParamSet::removeParameter(a24, "SearchWordEndAgainstPrevBestNodeThreshScore");
  v75 = v58 ^ 1;
  if (!v32)
  {
    v75 = 0;
  }

  if ((v75 & 1) == 0 && *(a1 + 2) <= 1u)
  {
    if (v78 >= 2)
    {
      DgnString::operator+=(v77, ";");
    }

    if (*(a2 + 2))
    {
      v76 = *a2;
    }

    else
    {
      v76 = byte_26286EA0E;
    }

    DgnString::printfAppend(v77, " Removed parameter SearchWordEndAgainstPrevBestNodeThreshScore=%d in param set '%.500s'", v72, v73, v74, v71, v76);
  }

  if (*(a1 + 2) <= 1u)
  {
    DgnString::operator=(a1, v77);
  }

  DgnString::~DgnString(v77);
}

void sub_2625CE354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t upgrade0025(DgnString *a1, const DgnString *a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  DynamicParamSet::setBoolParameter(a21, "PrefiltererFmpeWindowTruncateUnavailableFrames", 1);

  return DynamicParamSet::setBoolParameter(a24, "SearchFmpeWindowTruncateUnavailableFrames", 1);
}

uint64_t upgrade0031(DgnString *a1, const DgnString *a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  if (*(a1 + 2) <= 1u)
  {
    DgnString::stringPrintf(a1, " Added ParamSetType PARAMSETTYPE_USERDELTA (%d).", a3, a4, a5, a6, a7, a8, *(a26 + 6));
  }

  DynamicParamSet::setEnumParameter(a26, "UserDeltaTyingType", "SingleGenone", 0);
  DynamicParamSet::setIntParameter(a26, "UserDeltaRunLengthMin", 1);
  DynamicParamSet::setIntParameter(a26, "UserDeltaRunLengthRange", 126);

  return DynamicParamSet::setIntParameter(a26, "UserDeltaInclusionMinDivergence", 0);
}

void upgrade0032(DgnString *a1, char **a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  DynamicParamSet::removeParameter(a21, "PrefiltererFmpeWindowTruncateUnavailableFrames");
  DynamicParamSet::removeParameter(a24, "SearchFmpeWindowTruncateUnavailableFrames");
  DgnString::DgnString(v36);
  if (DynamicParamSet::getBoolParameter(a9, "PrefiltererFmpeWindowTruncateUnavailableFrames") && *(a1 + 2) <= 1u)
  {
    if (v37 >= 2)
    {
      DgnString::operator+=(v36, ";");
    }

    if (*(a2 + 2))
    {
      v31 = *a2;
    }

    else
    {
      v31 = byte_26286EA0E;
    }

    DgnString::printfAppend(v36, " Changed behavior away from existing True setting of PrefiltererFmpeWindowTruncateUnavailableFrames in param set '%.500s'", v28, v29, v30, v31);
  }

  if (DynamicParamSet::getBoolParameter(a12, "SearchFmpeWindowTruncateUnavailableFrames") && *(a1 + 2) <= 1u)
  {
    if (v37 >= 2)
    {
      DgnString::operator+=(v36, ";");
    }

    if (*(a2 + 2))
    {
      v35 = *a2;
    }

    else
    {
      v35 = byte_26286EA0E;
    }

    DgnString::printfAppend(v36, " Changed behavior away from existing True setting of SearchFmpeWindowTruncateUnavailableFrames in param set '%.500s'", v32, v33, v34, v35);
  }

  if (*(a1 + 2) <= 1u)
  {
    DgnString::operator=(a1, v36);
  }

  DgnString::~DgnString(v36);
}

void sub_2625CE660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t upgrade0033(DgnString *a1, const DgnString *a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  DynamicParamSet::setBoolParameter(a16, "ChannelMaxNormEnergyUseOnline", 0);
  DynamicParamSet::setIntParameter(a16, "ChannelOnlineMaxNormEnergyInitialWindowFrames", 0);
  DynamicParamSet::setIntParameter(a16, "ChannelOnlineMaxNormEnergyGeneralRampFactor", 1000);

  return DynamicParamSet::setIntParameter(a16, "ChannelOnlineMaxNormEnergyGeneralDecayValue", 0);
}

uint64_t upgrade0034(DgnString *a1, const DgnString *a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  IntParameter = DynamicParamSet::getIntParameter(a12, "SearchLatticeLinksPerSecondLimit");
  DynamicParamSet::setIntParameter(a24, "SearchLatticePruneLinksPerSecondLimit", IntParameter);
  DynamicParamSet::removeParameter(a24, "SearchLatticeLinksPerSecondLimit");
  DynamicParamSet::setIntParameter(a24, "SearchLatticeAbortOnNumLinks", 0);
  DynamicParamSet::setIntParameter(a24, "SearchLatticeAbortOnNumNodes", 0);
  DynamicParamSet::setIntParameter(a24, "SearchLatticeAbortOnScaledAverageLinksPerFrame", 0);

  return DynamicParamSet::setIntParameter(a24, "SearchLatticeAbortOnScaledAverageNodesPerFrame", 0);
}

uint64_t upgrade0037(DgnString *a1, const DgnString *a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  if (DynamicParamSet::getBoolParameter(a12, "FstCoreGenerateLattice"))
  {
    v26 = "Immediate";
  }

  else
  {
    v26 = "None";
  }

  DynamicParamSet::setEnumParameter(a24, "FstCoreLatticeGeneration", v26, 0);
  DynamicParamSet::removeParameter(a24, "FstCoreGenerateLattice");
  DoubleParameter = DynamicParamSet::getDoubleParameter(a12, "FstCoreBeam");
  DynamicParamSet::setDoubleParameter(a24, "FstCoreLatticeBeam", DoubleParameter);
  v28 = DoubleParameter * -0.5;
  if (DoubleParameter * -0.5 < -10000.0)
  {
    v28 = -10000.0;
  }

  return DynamicParamSet::setDoubleParameter(a24, "FstCoreLateLatticeArcFingerSuckPenalty", v28);
}

void *upgrade0039(DgnString *a1, const DgnString *a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  DynamicParamSet::removeParameter(a24, "FstCorePelScoreScale");

  return DynamicParamSet::removeParameter(a24, "FstCoreAttilaLatticeOutputFileNamePrefix");
}

uint64_t upgrade0044(DgnString *a1, const DgnString *a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  DoubleParameter = DynamicParamSet::getDoubleParameter(a12, "FstCoreLateLatticeArcFingerSuckPenalty");
  if (DoubleParameter > -1.0)
  {
    DoubleParameter = -1.0;
  }

  return DynamicParamSet::setDoubleParameter(a24, "FstCoreLateLatticeArcFingerSuckPenalty", DoubleParameter);
}

uint64_t upgrade0048(DgnString *a1, const DgnString *a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  DynamicParamSet::removeParameter(a24, "SearchPartialExtendWithPrefilterer");
  if (DynamicParamSet::getBoolParameter(a12, "SearchPartialExtendWithPrefilterer"))
  {
    v26 = "Complete";
  }

  else
  {
    v26 = "None";
  }

  return DynamicParamSet::setEnumParameter(a24, "SearchPartialIncludePrefiltererResult", v26, 0);
}

uint64_t upgrade0051(DgnString *a1, const DgnString *a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  DynamicParamSet::setBoolParameter(a21, "PrefiltererReturnDistanceAdjustDuration", 0);
  DynamicParamSet::setIntParameter(a24, "SearchPartialIncompleteMaxWords", 0);
  DynamicParamSet::setIntParameter(a24, "SearchPartialIncompleteMinListFrames", 1);
  DynamicParamSet::setIntParameter(a24, "SearchPartialIncompleteMinWordFrames", 1);
  DynamicParamSet::setIntParameter(a24, "SearchPartialCompleteMinWordFrames", 1);

  return DynamicParamSet::setIntParameter(a24, "SearchPartialRegularMinWordFrames", 1);
}

uint64_t DgnPrimArray<unsigned int>::searchLastOrBefore(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = a2;
  LODWORD(v6) = a2;
  if (a3 > a2)
  {
    v10 = a3 - 1;
    v11 = a2;
    do
    {
      if (v11 == v10 - 1)
      {
        v6 = v10;
      }

      else
      {
        v6 = ((v11 + v10) / 2);
      }

      v12 = a5(*a1 + 4 * v6, a4);
      if (v12)
      {
        if (v12 < 0)
        {
          v6 = (v6 + 1);
        }

        else
        {
          v10 = v6 - 1;
          v6 = v11;
        }
      }

      else if (v10 == v11)
      {
        return v6;
      }

      v11 = v6;
    }

    while (v6 <= v10);
  }

  if (v6 == v5)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (v6 - 1);
  }
}

void *DgnIOwnArray<DgnPrimArray<unsigned int> *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<DgnPrimArray<unsigned int>>(*(*a1 + v3));
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

uint64_t DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::~DgnCollArray(uint64_t a1)
{
  DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::wipeOtherArrays(a1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a1 + 40);
  DgnIOwnArray<DgnPrimArray<unsigned int> *>::releaseAll(a1 + 24);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a1 + 8);
  return a1;
}

uint64_t DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::wipeOtherArrays(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    v2 = 0;
    do
    {
      result = DgnDelete<DgnPrimArray<unsigned int>>(*(*(v1 + 24) + 8 * v2));
      *(*(v1 + 24) + 8 * v2++) = 0;
    }

    while (v2 < *(v1 + 32));
  }

  return result;
}

void *DgnIOwnArray<ParamSetBase *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<AdapterParamSet>(*(*a1 + v3));
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

uint64_t DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::sizeObject(uint64_t a1, int a2)
{
  v4 = sizeObject<unsigned int>(a1 + 8, a2);
  v5 = sizeObject<DgnPrimArray<unsigned int> *>(a1 + 24, a2);
  v6 = sizeObject<unsigned short>(a1 + 40, a2);
  v7 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v7 = 4;
  }

  if (a2 == 3)
  {
    v7 = 0;
  }

  return ((a2 != 3) | (2 * (a2 != 3))) + 2 * (a2 != 3) + v4 + v5 + v6 + v7 + 2 * v7;
}

uint64_t sizeObject<DgnPrimArray<unsigned int> *>(uint64_t a1, int a2)
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
          v9 += sizeObject<unsigned int>(v10, a2);
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

uint64_t Hash<DgnString,DgnString,DgnStringScope,unsigned int>::Hash(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_287524040;
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
  DgnString::DgnString(v11);
  v7 = gShadowDiagnosticShowIdealizedObjectSizes;
  v8 = sizeObject(v11);
  if (v7)
  {
    v9 = 4;
  }

  else
  {
    v9 = 8;
  }

  *(a1 + 24) = 48;
  *(a1 + 28) = v8 + v9 + 8;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  DgnString::~DgnString(v11);
  return a1;
}

void sub_2625CF004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  DgnString::~DgnString(va);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v5);
  DgnPool::~DgnPool(v4);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void Hash<DgnString,DgnString,DgnStringScope,unsigned int>::~Hash(uint64_t a1)
{
  Hash<DgnString,DgnString,DgnStringScope,unsigned int>::~Hash(a1);

  JUMPOUT(0x26672B1B0);
}

uint64_t Hash<DgnString,DgnString,DgnStringScope,unsigned int>::~Hash(uint64_t a1)
{
  *a1 = &unk_287524040;
  if (*(a1 + 8))
  {
    Hash<DgnString,DgnString,DgnStringScope,unsigned int>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  return MrecInitModule_sdpres_sdapi();
}

void Hash<DgnString,DgnString,DgnStringScope,unsigned int>::removeAll(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(a1 + 80);
      v5 = *(v4 + 8 * i);
      if (v5)
      {
        do
        {
          v6 = *v5;
          v7 = *(a1 + 96);
          if (v7)
          {
            v7(v5 + 2);
          }

          v8 = *(a1 + 104);
          if (v8)
          {
            v8(v5 + 4);
          }

          DgnString::~DgnString((v5 + 2));
          *v5 = *(a1 + 32);
          *(a1 + 32) = v5;
          v5 = v6;
        }

        while (v6);
        v4 = *(a1 + 80);
        v2 = *(a1 + 88);
      }

      *(v4 + 8 * i) = 0;
    }
  }

  *(a1 + 8) = 0;
}

uint64_t *Hash<DgnString,DgnString,DgnStringScope,unsigned int>::findBucket(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v2 = *a2;
  }

  else
  {
    v2 = byte_26286EA0E;
  }

  v3 = *v2;
  if (*v2)
  {
    v4 = 0;
    v5 = (v2 + 1);
    do
    {
      HIDWORD(v6) = v4;
      LODWORD(v6) = v4;
      v4 = (v6 >> 19) + v3;
      v7 = *v5++;
      v3 = v7;
    }

    while (v7);
  }

  else
  {
    v4 = 0;
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = (-1640531527 * v4) >> -v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = (*(a1 + 80) + 8 * v9);
  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11;
      if (*(v11 + 8) == v4)
      {
        v13 = *(v11 + 24) ? *(v11 + 16) : byte_26286EA0E;
        if (!strcmp(v13, v2))
        {
          break;
        }
      }

      v11 = *v12;
      v10 = v12;
    }

    while (*v12);
  }

  return v10;
}

void DynamicParamSet::~DynamicParamSet(DynamicParamSet *this)
{
  DgnArray<ParamValue>::releaseAll(this + 32);

  DgnString::~DgnString(this);
}

void *DgnArray<ParamValue>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 40 * v2 - 40;
    do
    {
      ParamValue::~ParamValue((*a1 + v3));
      v3 -= 40;
    }

    while (v3 != -40);
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

uint64_t StartupChannelParamSpecMgr(void)
{
  v65 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v65, "ChannelEnablePitchTracking", &byte_262899963, &byte_262899963, &sChannelEnablePitchTrackingBoolHistory);
  v71 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v71, "ChannelWaveInputClippingThreshold", &byte_262899963, &byte_262899963, &sChannelWaveInputClippingThresholdIntHistory);
  v69 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v69, "ChannelWaveInputEnableSpectralWarping", &byte_262899963, &byte_262899963, &sChannelWaveInputEnableSpectralWarpingBoolHistory);
  v72 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v72, "ChannelWaveStereoInputSelectSource", &byte_262899963, &byte_262899963, &sChannelWaveStereoInputSelectSourceIntHistory);
  v70 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v70, "ChannelMaxNormEnergyUseOnline", &byte_262899963, &byte_262899963, &sChannelMaxNormEnergyUseOnlineBoolHistory);
  v68 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v68, "ChannelOnlineMaxNormEnergyInitialWindowFrames", &byte_262899963, &byte_262899963, &sChannelOnlineMaxNormEnergyInitialWindowFramesIntHistory);
  v67 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v67, "ChannelOnlineMaxNormEnergyGeneralRampFactor", &byte_262899963, &byte_262899963, &sChannelOnlineMaxNormEnergyGeneralRampFactorIntHistory);
  v66 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v66, "ChannelOnlineMaxNormEnergyGeneralDecayValue", &byte_262899963, &byte_262899963, &sChannelOnlineMaxNormEnergyGeneralDecayValueIntHistory);
  v64 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v64, "ChannelWavePacketLossDetectionPacketSize", &byte_262899963, &byte_262899963, &sChannelWavePacketLossDetectionPacketSizeIntHistory);
  v63 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v63, "ChannelWavePacketLossDetectionSlopeThresh", &byte_262899963, &byte_262899963, &sChannelWavePacketLossDetectionSlopeThreshIntHistory);
  v61 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v61, "ChannelWavePacketLossDetectionSlopeCountPercent", &byte_262899963, &byte_262899963, &sChannelWavePacketLossDetectionSlopeCountPercentIntHistory);
  v60 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v60, "ChannelWavePacketLossDetectionWindowSize", &byte_262899963, &byte_262899963, &sChannelWavePacketLossDetectionWindowSizeIntHistory);
  v58 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v58, "ChannelAdaptationDelayApplyTillUttEnd", &byte_262899963, &byte_262899963, &sChannelAdaptationDelayApplyTillUttEndBoolHistory);
  v59 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v59, "ChannelAdaptationMeansRelevance", &byte_262899963, &byte_262899963, &sChannelAdaptationMeansRelevanceIntHistory);
  v57 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v57, "ChannelAdaptationMeansAccumSmoothingWindowMicroseconds", &byte_262899963, &byte_262899963, &sChannelAdaptationMeansAccumSmoothingWindowMicrosecondsIntHistory);
  v54 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v54, "ChannelAdaptationMeansAdaptFastInitially", &byte_262899963, &byte_262899963, &sChannelAdaptationMeansAdaptFastInitiallyBoolHistory);
  v55 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v55, "ChannelAdaptationMeansDelayApplyInitially", &byte_262899963, &byte_262899963, &sChannelAdaptationMeansDelayApplyInitiallyBoolHistory);
  v53 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v53, "ChannelAdaptationMeansInitialWindowMicroseconds", &byte_262899963, &byte_262899963, &sChannelAdaptationMeansInitialWindowMicrosecondsIntHistory);
  v56 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v56, "ChannelAdaptationMeansWindowMicroseconds", &byte_262899963, &byte_262899963, &sChannelAdaptationMeansWindowMicrosecondsIntHistory);
  v52 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v52, "ChannelAdaptationMeansRelevanceScale", &byte_262899963, &byte_262899963, &sChannelAdaptationMeansRelevanceScaleDoubleHistory);
  v62 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v62, "ChannelAdaptationMeansUseGlobalAccum", &byte_262899963, &byte_262899963, &sChannelAdaptationMeansUseGlobalAccumBoolHistory);
  v50 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v50, "ChannelAdaptationMeansReestimationType", &byte_262899963, &byte_262899963, &sChannelAdaptationMeansReestimationTypeEnumHistory);
  v51 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v51, "ChannelAdaptationMeansUseSilenceTracker", &byte_262899963, &byte_262899963, &sChannelAdaptationMeansUseSilenceTrackerBoolHistory);
  v49 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v49, "ChannelAdaptationMeansC0UseSilenceTracker", &byte_262899963, &byte_262899963, &sChannelAdaptationMeansC0UseSilenceTrackerBoolHistory);
  v48 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v48, "ChannelAdaptationMeansApplySynchronous", &byte_262899963, &byte_262899963, &sChannelAdaptationMeansApplySynchronousBoolHistory);
  v45 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v45, "ChannelAdaptationCDFRelevance", &byte_262899963, &byte_262899963, &sChannelAdaptationCDFRelevanceIntHistory);
  v39 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v39, "ChannelAdaptationCDFAdaptFastInitially", &byte_262899963, &byte_262899963, &sChannelAdaptationCDFAdaptFastInitiallyBoolHistory);
  v41 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v41, "ChannelAdaptationCDFWindowMicroseconds", &byte_262899963, &byte_262899963, &sChannelAdaptationCDFWindowMicrosecondsIntHistory);
  v36 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v36, "ChannelAdaptationCDFUseSilenceTracker", &byte_262899963, &byte_262899963, &sChannelAdaptationCDFUseSilenceTrackerBoolHistory);
  v37 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v37, "ChannelAdaptationInterpolatedCDFMaxPercentMassPerBin", &byte_262899963, &byte_262899963, &sChannelAdaptationInterpolatedCDFMaxPercentMassPerBinIntHistory);
  v47 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v47, "ChannelAdaptationVarianceRelevance", &byte_262899963, &byte_262899963, &sChannelAdaptationVarianceRelevanceIntHistory);
  v44 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v44, "ChannelAdaptationVarianceAdaptFastInitially", &byte_262899963, &byte_262899963, &sChannelAdaptationVarianceAdaptFastInitiallyBoolHistory);
  v46 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v46, "ChannelAdaptationVarianceWindowMicroseconds", &byte_262899963, &byte_262899963, &sChannelAdaptationVarianceWindowMicrosecondsIntHistory);
  v40 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v40, "ChannelAdaptationVarianceUseSilenceTracker", &byte_262899963, &byte_262899963, &sChannelAdaptationVarianceUseSilenceTrackerBoolHistory);
  v43 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v43, "ChannelSilenceTrackerInitialLevel", &byte_262899963, &byte_262899963, &sChannelSilenceTrackerInitialLevelIntHistory);
  v38 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v38, "ChannelSilenceTrackerBackgroundThresh", &byte_262899963, &byte_262899963, &sChannelSilenceTrackerBackgroundThreshIntHistory);
  v42 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v42, "ChannelSilenceTrackerSpeechThresh", &byte_262899963, &byte_262899963, &sChannelSilenceTrackerSpeechThreshIntHistory);
  v33 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v33, "ChannelSilenceTrackerIncrementPerSecond", &byte_262899963, &byte_262899963, &sChannelSilenceTrackerIncrementPerSecondIntHistory);
  v30 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v30, "ChannelSilenceTrackerDecrementPerSecond", &byte_262899963, &byte_262899963, &sChannelSilenceTrackerDecrementPerSecondIntHistory);
  v31 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v31, "ChannelSilenceTrackerOutlierWindowMicroseconds", &byte_262899963, &byte_262899963, &sChannelSilenceTrackerOutlierWindowMicrosecondsIntHistory);
  v27 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v27, "ChannelSilenceTrackerOutlierMinTriggerPercent", &byte_262899963, &byte_262899963, &sChannelSilenceTrackerOutlierMinTriggerPercentIntHistory);
  v29 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v29, "ChannelSilenceTrackerRelevance", &byte_262899963, &byte_262899963, &sChannelSilenceTrackerRelevanceIntHistory);
  v35 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v35, "ChannelThreadingType", &byte_262899963, &byte_262899963, &sChannelThreadingTypeEnumHistory);
  v26 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v26, "ChannelSpectralSubtractionDelayMicroseconds", &byte_262899963, &byte_262899963, &sChannelSpectralSubtractionDelayMicrosecondsIntHistory);
  v28 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v28, "ChannelSpectralSubtractionTargetSNR", &byte_262899963, &byte_262899963, &sChannelSpectralSubtractionTargetSNRDoubleHistory);
  v24 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v24, "ChannelSpectralSubtractionDisableAtTargetSNR", &byte_262899963, &byte_262899963, &sChannelSpectralSubtractionDisableAtTargetSNRBoolHistory);
  v23 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v23, "ChannelSpectralSubtractionInitialWindowMicroseconds", &byte_262899963, &byte_262899963, &sChannelSpectralSubtractionInitialWindowMicrosecondsIntHistory);
  v17 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v17, "ChannelSpectralSubtractionDecayRate", &byte_262899963, &byte_262899963, &sChannelSpectralSubtractionDecayRateDoubleHistory);
  v20 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v20, "ChannelSpectralSubtractionMinSNRMicroseconds", &byte_262899963, &byte_262899963, &sChannelSpectralSubtractionMinSNRMicrosecondsIntHistory);
  v15 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v15, "ChannelSpectralSubtractionMaxNoiseScaleChange", &byte_262899963, &byte_262899963, &sChannelSpectralSubtractionMaxNoiseScaleChangeDoubleHistory);
  v14 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v14, "ChannelSpectralSubtractionStartDecimationMicroseconds", &byte_262899963, &byte_262899963, &sChannelSpectralSubtractionStartDecimationMicrosecondsIntHistory);
  v25 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v25, "UttDetBackgroundFloorIncreasePerSecond", &byte_262899963, &byte_262899963, &sUttDetBackgroundFloorIncreasePerSecondIntHistory);
  v32 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v32, "UttDetResetFileChannelStateAfterSection", &byte_262899963, &byte_262899963, &sUttDetResetFileChannelStateAfterSectionBoolHistory);
  v34 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v34, "UttDetSpeechThreshOffsetPercent", &byte_262899963, &byte_262899963, &sUttDetSpeechThreshOffsetPercentIntHistory);
  v22 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v22, "UttDetBackgroundThreshPercent", &byte_262899963, &byte_262899963, &sUttDetBackgroundThreshPercentIntHistory);
  v21 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v21, "UttDetBeginUttWindowMicroseconds", &byte_262899963, &byte_262899963, &sUttDetBeginUttWindowMicrosecondsIntHistory);
  v18 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v18, "UttDetBeginUttMinTriggerPercent", &byte_262899963, &byte_262899963, &sUttDetBeginUttMinTriggerPercentIntHistory);
  v19 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v19, "UttDetEndUttWindowMicroseconds", &byte_262899963, &byte_262899963, &sUttDetEndUttWindowMicrosecondsIntHistory);
  v13 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v13, "UttDetEndUttMinTriggerPercent", &byte_262899963, &byte_262899963, &sUttDetEndUttMinTriggerPercentIntHistory);
  v16 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v16, "UttDetInitializeWindowMicroseconds", &byte_262899963, &byte_262899963, &sUttDetInitializeWindowMicrosecondsIntHistory);
  v11 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v11, "UttDetInitialBackgroundLevelMin", &byte_262899963, &byte_262899963, &sUttDetInitialBackgroundLevelMinIntHistory);
  v0 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v0, "UttDetInitialBackgroundLevelRange", &byte_262899963, &byte_262899963, &sUttDetInitialBackgroundLevelRangeIntHistory);
  v12 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v12, "UttDetSpeechOffsetMin", &byte_262899963, &byte_262899963, &sUttDetSpeechOffsetMinIntHistory);
  v1 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v1, "UttDetSpeechOffsetRange", &byte_262899963, &byte_262899963, &sUttDetSpeechOffsetRangeIntHistory);
  v2 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v2, "UttDetSpeechUttSecondsMin", &byte_262899963, &byte_262899963, &sUttDetSpeechUttSecondsMinIntHistory);
  v3 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v3, "UttDetSpeechUttSecondsRange", &byte_262899963, &byte_262899963, &sUttDetSpeechUttSecondsRangeIntHistory);
  v4 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v4, "UttDetMaxNonSpeechUttSeconds", &byte_262899963, &byte_262899963, &sUttDetMaxNonSpeechUttSecondsIntHistory);
  v5 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v5, "UttDetLimitFrameEnergy", &byte_262899963, &byte_262899963, &sUttDetLimitFrameEnergyBoolHistory);
  v6 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v6, "UttDetBackgroundFloorDecreasePerSecond", &byte_262899963, &byte_262899963, &sUttDetBackgroundFloorDecreasePerSecondIntHistory);
  v7 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v7, "UttDetBackgroundFloorOutlierWindowMicroseconds", &byte_262899963, &byte_262899963, &sUttDetBackgroundFloorOutlierWindowMicrosecondsIntHistory);
  v8 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v8, "UttDetBackgroundFloorOutlierMinTriggerPercent", &byte_262899963, &byte_262899963, &sUttDetBackgroundFloorOutlierMinTriggerPercentIntHistory);
  ParamSpecMgr::addParam(qword_281051F78, v39);
  ParamSpecMgr::addParam(qword_281051F78, v45);
  ParamSpecMgr::addParam(qword_281051F78, v36);
  ParamSpecMgr::addParam(qword_281051F78, v41);
  ParamSpecMgr::addParam(qword_281051F78, v58);
  ParamSpecMgr::addParam(qword_281051F78, v37);
  ParamSpecMgr::addParam(qword_281051F78, v57);
  ParamSpecMgr::addParam(qword_281051F78, v54);
  ParamSpecMgr::addParam(qword_281051F78, v48);
  ParamSpecMgr::addParam(qword_281051F78, v49);
  ParamSpecMgr::addParam(qword_281051F78, v55);
  ParamSpecMgr::addParam(qword_281051F78, v53);
  ParamSpecMgr::addParam(qword_281051F78, v50);
  ParamSpecMgr::addParam(qword_281051F78, v59);
  ParamSpecMgr::addParam(qword_281051F78, v52);
  ParamSpecMgr::addParam(qword_281051F78, v51);
  ParamSpecMgr::addParam(qword_281051F78, v56);
  ParamSpecMgr::addParam(qword_281051F78, v44);
  ParamSpecMgr::addParam(qword_281051F78, v47);
  ParamSpecMgr::addParam(qword_281051F78, v40);
  ParamSpecMgr::addParam(qword_281051F78, v46);
  ParamSpecMgr::addParam(qword_281051F78, v65);
  ParamSpecMgr::addParam(qword_281051F78, v38);
  ParamSpecMgr::addParam(qword_281051F78, v30);
  ParamSpecMgr::addParam(qword_281051F78, v33);
  ParamSpecMgr::addParam(qword_281051F78, v43);
  ParamSpecMgr::addParam(qword_281051F78, v27);
  ParamSpecMgr::addParam(qword_281051F78, v31);
  ParamSpecMgr::addParam(qword_281051F78, v42);
  ParamSpecMgr::addParam(qword_281051F78, v29);
  ParamSpecMgr::addParam(qword_281051F78, v17);
  ParamSpecMgr::addParam(qword_281051F78, v26);
  ParamSpecMgr::addParam(qword_281051F78, v24);
  ParamSpecMgr::addParam(qword_281051F78, v23);
  ParamSpecMgr::addParam(qword_281051F78, v15);
  ParamSpecMgr::addParam(qword_281051F78, v20);
  ParamSpecMgr::addParam(qword_281051F78, v14);
  ParamSpecMgr::addParam(qword_281051F78, v28);
  ParamSpecMgr::addParam(qword_281051F78, v35);
  ParamSpecMgr::addParam(qword_281051F78, v71);
  ParamSpecMgr::addParam(qword_281051F78, v69);
  ParamSpecMgr::addParam(qword_281051F78, v64);
  ParamSpecMgr::addParam(qword_281051F78, v61);
  ParamSpecMgr::addParam(qword_281051F78, v63);
  ParamSpecMgr::addParam(qword_281051F78, v60);
  ParamSpecMgr::addParam(qword_281051F78, v72);
  ParamSpecMgr::addParam(qword_281051F78, v70);
  ParamSpecMgr::addParam(qword_281051F78, v68);
  ParamSpecMgr::addParam(qword_281051F78, v67);
  ParamSpecMgr::addParam(qword_281051F78, v66);
  ParamSpecMgr::addParam(qword_281051F78, v6);
  ParamSpecMgr::addParam(qword_281051F78, v25);
  ParamSpecMgr::addParam(qword_281051F78, v8);
  ParamSpecMgr::addParam(qword_281051F78, v7);
  ParamSpecMgr::addParam(qword_281051F78, v22);
  ParamSpecMgr::addParam(qword_281051F78, v18);
  ParamSpecMgr::addParam(qword_281051F78, v21);
  ParamSpecMgr::addParam(qword_281051F78, v13);
  ParamSpecMgr::addParam(qword_281051F78, v19);
  ParamSpecMgr::addParam(qword_281051F78, v11);
  ParamSpecMgr::addParam(qword_281051F78, v0);
  ParamSpecMgr::addParam(qword_281051F78, v16);
  ParamSpecMgr::addParam(qword_281051F78, v5);
  ParamSpecMgr::addParam(qword_281051F78, v4);
  ParamSpecMgr::addParam(qword_281051F78, v32);
  ParamSpecMgr::addParam(qword_281051F78, v12);
  ParamSpecMgr::addParam(qword_281051F78, v1);
  ParamSpecMgr::addParam(qword_281051F78, v34);
  ParamSpecMgr::addParam(qword_281051F78, v2);
  ParamSpecMgr::addParam(qword_281051F78, v3);
  ParamSpecMgr::addParam(qword_281051F78, v62);
  v9 = qword_281051F78;

  return ParamSpecMgr::sortParams(v9);
}

_DWORD *ChannelParamSet::ChannelParamSet(_DWORD *a1, const char *a2, int a3, int a4, int a5)
{
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 2), a2);
  a1[6] = a3;
  a1[7] = a4;
  a1[8] = a5;
  a1[9] = 0;
  *a1 = &unk_287527CE0;
  ChannelParamSet::setDefaults(a1, v9, v10, v11, v12, v13, v14, v15);
  return a1;
}

void sub_2625D038C(_Unwind_Exception *a1)
{
  *v1 = v2;
  DgnString::~DgnString((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t ChannelParamSet::ChannelParamSet(uint64_t a1, uint64_t a2, char *a3, int a4, int a5, int a6)
{
  v11 = (a1 + 260);
  v12 = (a2 + 260);
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 8), a3);
  *(a1 + 24) = a4;
  *(a1 + 28) = a5;
  *(a1 + 32) = a6;
  *(a1 + 36) = 0;
  *a1 = &unk_287527CE0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 176) = *(a2 + 176);
  v13 = *(a2 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = v13;
  v14 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v14;
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 220) = *(a2 + 220);
  *(a1 + 236) = *(a2 + 236);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 244) = *(a2 + 244);
  *v11 = *v12;
  v11[1] = v12[1];
  *(a1 + 292) = *(a2 + 292);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 308) = *(a2 + 308);
  *(a1 + 312) = *(a2 + 312);
  *(v11 + 56) = *(v12 + 56);
  *(a1 + 332) = *(a2 + 332);
  return a1;
}

uint64_t ChannelParamSet::setDefaults(ChannelParamSet *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(this + 40) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F78, 1, 0, 0, a5, a6, a7, a8);
  *(this + 11) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 2, 0, 0, v9, v10, v11, v12);
  *(this + 48) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F78, 3, 0, 0, v13, v14, v15, v16);
  *(this + 13) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 4, 0, 0, v17, v18, v19, v20);
  *(this + 56) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F78, 5, 0, 0, v21, v22, v23, v24);
  *(this + 15) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 6, 0, 0, v25, v26, v27, v28);
  *(this + 16) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 7, 0, 0, v29, v30, v31, v32);
  *(this + 68) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F78, 8, 0, 0, v33, v34, v35, v36);
  *(this + 69) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F78, 9, 0, 0, v37, v38, v39, v40);
  *(this + 70) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F78, 10, 0, 0, v41, v42, v43, v44);
  *(this + 71) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F78, 11, 0, 0, v45, v46, v47, v48);
  *(this + 18) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 12, 0, 0, v49, v50, v51, v52);
  *(this + 19) = ParamSpecMgr::ParamGetDefault_enum(qword_281051F78, 13, v53, v54, v55, v56, v57, v58);
  *(this + 20) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 14, 0, 0, v59, v60, v61, v62);
  *(this + 11) = ParamSpecMgr::ParamGetDefault_double(qword_281051F78, 15, 0, 0, v63, v64, v65, v66);
  *(this + 96) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F78, 16, 0, 0, v67, v68, v69, v70);
  *(this + 25) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 17, 0, 0, v71, v72, v73, v74);
  *(this + 104) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F78, 18, 0, 0, v75, v76, v77, v78);
  *(this + 27) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 19, 0, 0, v79, v80, v81, v82);
  *(this + 112) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F78, 20, 0, 0, v83, v84, v85, v86);
  *(this + 29) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 21, 0, 0, v87, v88, v89, v90);
  *(this + 120) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F78, 22, 0, 0, v91, v92, v93, v94);
  *(this + 31) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 23, 0, 0, v95, v96, v97, v98);
  *(this + 32) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 24, 0, 0, v99, v100, v101, v102);
  *(this + 33) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 25, 0, 0, v103, v104, v105, v106);
  *(this + 34) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 26, 0, 0, v107, v108, v109, v110);
  *(this + 35) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 27, 0, 0, v111, v112, v113, v114);
  *(this + 36) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 28, 0, 0, v115, v116, v117, v118);
  *(this + 37) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 29, 0, 0, v119, v120, v121, v122);
  *(this + 38) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 30, 0, 0, v123, v124, v125, v126);
  *(this + 20) = ParamSpecMgr::ParamGetDefault_double(qword_281051F78, 31, 0, 0, v127, v128, v129, v130);
  *(this + 42) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 32, 0, 0, v131, v132, v133, v134);
  *(this + 172) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F78, 33, 0, 0, v135, v136, v137, v138);
  *(this + 44) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 34, 0, 0, v139, v140, v141, v142);
  *(this + 23) = ParamSpecMgr::ParamGetDefault_double(qword_281051F78, 35, 0, 0, v143, v144, v145, v146);
  *(this + 48) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 36, 0, 0, v147, v148, v149, v150);
  *(this + 49) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 37, 0, 0, v151, v152, v153, v154);
  *(this + 25) = ParamSpecMgr::ParamGetDefault_double(qword_281051F78, 38, 0, 0, v155, v156, v157, v158);
  *(this + 52) = ParamSpecMgr::ParamGetDefault_enum(qword_281051F78, 39, v159, v160, v161, v162, v163, v164);
  *(this + 53) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 40, 0, 0, v165, v166, v167, v168);
  *(this + 216) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F78, 41, 0, 0, v169, v170, v171, v172);
  *(this + 55) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 42, 0, 0, v173, v174, v175, v176);
  *(this + 56) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 43, 0, 0, v177, v178, v179, v180);
  *(this + 57) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 44, 0, 0, v181, v182, v183, v184);
  *(this + 58) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 45, 0, 0, v185, v186, v187, v188);
  *(this + 59) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 46, 0, 0, v189, v190, v191, v192);
  *(this + 240) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F78, 47, 0, 0, v193, v194, v195, v196);
  *(this + 61) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 48, 0, 0, v197, v198, v199, v200);
  *(this + 62) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 49, 0, 0, v201, v202, v203, v204);
  *(this + 63) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 50, 0, 0, v205, v206, v207, v208);
  *(this + 64) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 51, 0, 0, v209, v210, v211, v212);
  *(this + 65) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 52, 0, 0, v213, v214, v215, v216);
  *(this + 66) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 53, 0, 0, v217, v218, v219, v220);
  *(this + 67) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 54, 0, 0, v221, v222, v223, v224);
  *(this + 68) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 55, 0, 0, v225, v226, v227, v228);
  *(this + 69) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 56, 0, 0, v229, v230, v231, v232);
  *(this + 70) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 57, 0, 0, v233, v234, v235, v236);
  *(this + 71) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 58, 0, 0, v237, v238, v239, v240);
  *(this + 72) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 59, 0, 0, v241, v242, v243, v244);
  *(this + 73) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 60, 0, 0, v245, v246, v247, v248);
  *(this + 74) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 61, 0, 0, v249, v250, v251, v252);
  *(this + 75) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 62, 0, 0, v253, v254, v255, v256);
  *(this + 304) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F78, 63, 0, 0, v257, v258, v259, v260);
  *(this + 77) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 64, 0, 0, v261, v262, v263, v264);
  *(this + 312) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F78, 65, 0, 0, v265, v266, v267, v268);
  *(this + 79) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 66, 0, 0, v269, v270, v271, v272);
  *(this + 80) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 67, 0, 0, v273, v274, v275, v276);
  *(this + 81) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 68, 0, 0, v277, v278, v279, v280);
  *(this + 82) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 69, 0, 0, v281, v282, v283, v284);
  result = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 70, 0, 0, v285, v286, v287, v288);
  *(this + 83) = result;
  return result;
}

uint64_t ChannelParamSet::sizeObject(uint64_t a1, int a2)
{
  v3 = a2 != 3;
  v4 = sizeObject(a1 + 8);
  v5 = 36;
  if (a2 == 3)
  {
    v5 = 0;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    return v4 + 16 * v3;
  }

  else
  {
    return v5 + 152 * (a2 != 3) + v4 + 16 * v3 + 12 * ((a2 != 3) | (4 * (a2 != 3)));
  }
}

uint64_t ChannelParamSet::getBoolParameter(_BYTE *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 1:
      if (a3 == 1)
      {
        v12 = qword_281051F78;
        v13 = 1;
        goto LABEL_125;
      }

      if (a3)
      {
        goto LABEL_102;
      }

      v8 = a1[40];
      return v8 & 1;
    case 2:
      v9 = "int";
      v10 = 2;
      goto LABEL_105;
    case 3:
      if (a3 == 1)
      {
        v12 = qword_281051F78;
        v13 = 3;
        goto LABEL_125;
      }

      if (a3)
      {
        goto LABEL_102;
      }

      v8 = a1[48];
      return v8 & 1;
    case 4:
      v9 = "int";
      v10 = 4;
      goto LABEL_105;
    case 5:
      if (a3 == 1)
      {
        v12 = qword_281051F78;
        v13 = 5;
        goto LABEL_125;
      }

      if (a3)
      {
        goto LABEL_102;
      }

      v8 = a1[56];
      return v8 & 1;
    case 6:
      v9 = "int";
      v10 = 6;
      goto LABEL_105;
    case 7:
      v9 = "int";
      v10 = 7;
      goto LABEL_105;
    case 8:
      if (a3 == 1)
      {
        v12 = qword_281051F78;
        v13 = 8;
        goto LABEL_125;
      }

      if (a3)
      {
        goto LABEL_102;
      }

      v8 = a1[68];
      return v8 & 1;
    case 9:
      if (a3 == 1)
      {
        v12 = qword_281051F78;
        v13 = 9;
        goto LABEL_125;
      }

      if (a3)
      {
        goto LABEL_102;
      }

      v8 = a1[69];
      return v8 & 1;
    case 10:
      if (a3 == 1)
      {
        v12 = qword_281051F78;
        v13 = 10;
        goto LABEL_125;
      }

      if (a3)
      {
        goto LABEL_102;
      }

      v8 = a1[70];
      return v8 & 1;
    case 11:
      if (a3 == 1)
      {
        v12 = qword_281051F78;
        v13 = 11;
        goto LABEL_125;
      }

      if (a3)
      {
        goto LABEL_102;
      }

      v8 = a1[71];
      return v8 & 1;
    case 12:
      v9 = "int";
      v10 = 12;
      goto LABEL_105;
    case 13:
      v9 = "enum";
      v10 = 13;
      goto LABEL_105;
    case 14:
      v9 = "int";
      v10 = 14;
      goto LABEL_105;
    case 15:
      v9 = "double";
      v10 = 15;
      goto LABEL_105;
    case 16:
      if (a3 == 1)
      {
        v12 = qword_281051F78;
        v13 = 16;
        goto LABEL_125;
      }

      if (a3)
      {
        goto LABEL_102;
      }

      v8 = a1[96];
      return v8 & 1;
    case 17:
      v9 = "int";
      v10 = 17;
      goto LABEL_105;
    case 18:
      if (a3 == 1)
      {
        v12 = qword_281051F78;
        v13 = 18;
        goto LABEL_125;
      }

      if (a3)
      {
        goto LABEL_102;
      }

      v8 = a1[104];
      return v8 & 1;
    case 19:
      v9 = "int";
      v10 = 19;
      goto LABEL_105;
    case 20:
      if (a3 == 1)
      {
        v12 = qword_281051F78;
        v13 = 20;
        goto LABEL_125;
      }

      if (a3)
      {
        goto LABEL_102;
      }

      v8 = a1[112];
      return v8 & 1;
    case 21:
      v9 = "int";
      v10 = 21;
      goto LABEL_105;
    case 22:
      if (a3 == 1)
      {
        v12 = qword_281051F78;
        v13 = 22;
        goto LABEL_125;
      }

      if (a3)
      {
        goto LABEL_102;
      }

      v8 = a1[120];
      return v8 & 1;
    case 23:
      v9 = "int";
      v10 = 23;
      goto LABEL_105;
    case 24:
      v9 = "int";
      v10 = 24;
      goto LABEL_105;
    case 25:
      v9 = "int";
      v10 = 25;
      goto LABEL_105;
    case 26:
      v9 = "int";
      v10 = 26;
      goto LABEL_105;
    case 27:
      v9 = "int";
      v10 = 27;
      goto LABEL_105;
    case 28:
      v9 = "int";
      v10 = 28;
      goto LABEL_105;
    case 29:
      v9 = "int";
      v10 = 29;
      goto LABEL_105;
    case 30:
      v9 = "int";
      v10 = 30;
      goto LABEL_105;
    case 31:
      v9 = "double";
      v10 = 31;
      goto LABEL_105;
    case 32:
      v9 = "int";
      v10 = 32;
      goto LABEL_105;
    case 33:
      if (a3 == 1)
      {
        v12 = qword_281051F78;
        v13 = 33;
        goto LABEL_125;
      }

      if (a3)
      {
        goto LABEL_102;
      }

      v8 = a1[172];
      return v8 & 1;
    case 34:
      v9 = "int";
      v10 = 34;
      goto LABEL_105;
    case 35:
      v9 = "double";
      v10 = 35;
      goto LABEL_105;
    case 36:
      v9 = "int";
      v10 = 36;
      goto LABEL_105;
    case 37:
      v9 = "int";
      v10 = 37;
      goto LABEL_105;
    case 38:
      v9 = "double";
      v10 = 38;
      goto LABEL_105;
    case 39:
      v9 = "enum";
      v10 = 39;
      goto LABEL_105;
    case 40:
      v9 = "int";
      v10 = 40;
      goto LABEL_105;
    case 41:
      if (a3 == 1)
      {
        v12 = qword_281051F78;
        v13 = 41;
        goto LABEL_125;
      }

      if (a3)
      {
        goto LABEL_102;
      }

      v8 = a1[216];
      return v8 & 1;
    case 42:
      v9 = "int";
      v10 = 42;
      goto LABEL_105;
    case 43:
      v9 = "int";
      v10 = 43;
      goto LABEL_105;
    case 44:
      v9 = "int";
      v10 = 44;
      goto LABEL_105;
    case 45:
      v9 = "int";
      v10 = 45;
      goto LABEL_105;
    case 46:
      v9 = "int";
      v10 = 46;
      goto LABEL_105;
    case 47:
      if (a3 == 1)
      {
        v12 = qword_281051F78;
        v13 = 47;
        goto LABEL_125;
      }

      if (a3)
      {
        goto LABEL_102;
      }

      v8 = a1[240];
      return v8 & 1;
    case 48:
      v9 = "int";
      v10 = 48;
      goto LABEL_105;
    case 49:
      v9 = "int";
      v10 = 49;
      goto LABEL_105;
    case 50:
      v9 = "int";
      v10 = 50;
      goto LABEL_105;
    case 51:
      v9 = "int";
      v10 = 51;
      goto LABEL_105;
    case 52:
      v9 = "int";
      v10 = 52;
      goto LABEL_105;
    case 53:
      v9 = "int";
      v10 = 53;
      goto LABEL_105;
    case 54:
      v9 = "int";
      v10 = 54;
      goto LABEL_105;
    case 55:
      v9 = "int";
      v10 = 55;
      goto LABEL_105;
    case 56:
      v9 = "int";
      v10 = 56;
      goto LABEL_105;
    case 57:
      v9 = "int";
      v10 = 57;
      goto LABEL_105;
    case 58:
      v9 = "int";
      v10 = 58;
      goto LABEL_105;
    case 59:
      v9 = "int";
      v10 = 59;
      goto LABEL_105;
    case 60:
      v9 = "int";
      v10 = 60;
      goto LABEL_105;
    case 61:
      v9 = "int";
      v10 = 61;
      goto LABEL_105;
    case 62:
      v9 = "int";
      v10 = 62;
      goto LABEL_105;
    case 63:
      if (a3 == 1)
      {
        v12 = qword_281051F78;
        v13 = 63;
        goto LABEL_125;
      }

      if (a3)
      {
        goto LABEL_102;
      }

      v8 = a1[304];
      break;
    case 64:
      v9 = "int";
      v10 = 64;
      goto LABEL_105;
    case 65:
      if (a3 == 1)
      {
        v12 = qword_281051F78;
        v13 = 65;
LABEL_125:
        ParamByParamId = ParamSpecMgr::getParamByParamId(v12, v13, a3, a4, a5, a6, a7, a8);
        v15 = **ParamByParamId;
      }

      else if (a3)
      {
LABEL_102:
        throwWrongQueryMode(a3, "BOOL", a3, a4, a5, a6, a7, a8);
LABEL_106:
        v8 = 0;
      }

      else
      {
        v8 = a1[312];
      }

      break;
    case 66:
      v9 = "int";
      v10 = 66;
      goto LABEL_105;
    case 67:
      v9 = "int";
      v10 = 67;
      goto LABEL_105;
    case 68:
      v9 = "int";
      v10 = 68;
      goto LABEL_105;
    case 69:
      v9 = "int";
      v10 = 69;
      goto LABEL_105;
    case 70:
      v9 = "int";
      v10 = 70;
LABEL_105:
      throwWrongTypeForParamId(v10, v9, "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_106;
    default:
      throwWrongParamIdValue(a2, "BOOL", a3, a4, a5, a6, a7, a8);
      goto LABEL_106;
  }

  return v8 & 1;
}

uint64_t ChannelParamSet::getIntParameter(unsigned int *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 1:
      v8 = "BOOL";
      v9 = 1;
      goto LABEL_208;
    case 2:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[11];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 2;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 2;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 2;
      goto LABEL_363;
    case 3:
      v8 = "BOOL";
      v9 = 3;
      goto LABEL_208;
    case 4:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[13];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 4;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 4;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 4;
      goto LABEL_363;
    case 5:
      v8 = "BOOL";
      v9 = 5;
      goto LABEL_208;
    case 6:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[15];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 6;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 6;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 6;
      goto LABEL_363;
    case 7:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[16];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 7;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 7;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 7;
      goto LABEL_363;
    case 8:
      v8 = "BOOL";
      v9 = 8;
      goto LABEL_208;
    case 9:
      v8 = "BOOL";
      v9 = 9;
      goto LABEL_208;
    case 10:
      v8 = "BOOL";
      v9 = 10;
      goto LABEL_208;
    case 11:
      v8 = "BOOL";
      v9 = 11;
      goto LABEL_208;
    case 12:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[18];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 12;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 12;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 12;
      goto LABEL_363;
    case 13:
      v8 = "enum";
      v9 = 13;
      goto LABEL_208;
    case 14:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[20];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 14;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 14;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 14;
      goto LABEL_363;
    case 15:
      v8 = "double";
      v9 = 15;
      goto LABEL_208;
    case 16:
      v8 = "BOOL";
      v9 = 16;
      goto LABEL_208;
    case 17:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[25];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 17;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 17;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 17;
      goto LABEL_363;
    case 18:
      v8 = "BOOL";
      v9 = 18;
      goto LABEL_208;
    case 19:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[27];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 19;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 19;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 19;
      goto LABEL_363;
    case 20:
      v8 = "BOOL";
      v9 = 20;
      goto LABEL_208;
    case 21:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[29];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 21;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 21;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 21;
      goto LABEL_363;
    case 22:
      v8 = "BOOL";
      v9 = 22;
      goto LABEL_208;
    case 23:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[31];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 23;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 23;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 23;
      goto LABEL_363;
    case 24:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[32];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 24;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 24;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 24;
      goto LABEL_363;
    case 25:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[33];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 25;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 25;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 25;
      goto LABEL_363;
    case 26:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[34];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 26;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 26;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 26;
      goto LABEL_363;
    case 27:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[35];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 27;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 27;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 27;
      goto LABEL_363;
    case 28:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[36];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 28;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 28;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 28;
      goto LABEL_363;
    case 29:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[37];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 29;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 29;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 29;
      goto LABEL_363;
    case 30:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[38];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 30;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 30;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 30;
      goto LABEL_363;
    case 31:
      v8 = "double";
      v9 = 31;
      goto LABEL_208;
    case 32:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[42];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 32;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 32;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 32;
      goto LABEL_363;
    case 33:
      v8 = "BOOL";
      v9 = 33;
      goto LABEL_208;
    case 34:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[44];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 34;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 34;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 34;
      goto LABEL_363;
    case 35:
      v8 = "double";
      v9 = 35;
      goto LABEL_208;
    case 36:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[48];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 36;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 36;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 36;
      goto LABEL_363;
    case 37:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[49];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 37;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 37;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 37;
      goto LABEL_363;
    case 38:
      v8 = "double";
      v9 = 38;
      goto LABEL_208;
    case 39:
      v8 = "enum";
      v9 = 39;
      goto LABEL_208;
    case 40:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[53];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 40;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 40;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 40;
      goto LABEL_363;
    case 41:
      v8 = "BOOL";
      v9 = 41;
      goto LABEL_208;
    case 42:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[55];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 42;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 42;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 42;
      goto LABEL_363;
    case 43:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[56];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 43;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 43;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 43;
      goto LABEL_363;
    case 44:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[57];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 44;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 44;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 44;
      goto LABEL_363;
    case 45:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[58];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 45;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 45;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 45;
      goto LABEL_363;
    case 46:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[59];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 46;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 46;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 46;
      goto LABEL_363;
    case 47:
      v8 = "BOOL";
      v9 = 47;
      goto LABEL_208;
    case 48:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[61];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 48;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 48;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 48;
      goto LABEL_363;
    case 49:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[62];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 49;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 49;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 49;
      goto LABEL_363;
    case 50:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[63];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 50;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 50;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 50;
      goto LABEL_363;
    case 51:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[64];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 51;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 51;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 51;
      goto LABEL_363;
    case 52:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[65];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 52;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 52;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 52;
      goto LABEL_363;
    case 53:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[66];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 53;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 53;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 53;
      goto LABEL_363;
    case 54:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[67];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 54;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 54;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 54;
      goto LABEL_363;
    case 55:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[68];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 55;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 55;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 55;
      goto LABEL_363;
    case 56:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[69];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 56;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 56;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 56;
      goto LABEL_363;
    case 57:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[70];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 57;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 57;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 57;
      goto LABEL_363;
    case 58:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[71];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 58;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 58;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 58;
      goto LABEL_363;
    case 59:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[72];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 59;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 59;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 59;
      goto LABEL_363;
    case 60:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[73];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 60;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 60;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 60;
      goto LABEL_363;
    case 61:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[74];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 61;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 61;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 61;
      goto LABEL_363;
    case 62:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[75];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 62;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 62;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 62;
      goto LABEL_363;
    case 63:
      v8 = "BOOL";
      v9 = 63;
      goto LABEL_208;
    case 64:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[77];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 64;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 64;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 64;
      goto LABEL_363;
    case 65:
      v8 = "BOOL";
      v9 = 65;
LABEL_208:
      throwWrongTypeForParamId(v9, v8, "int", a4, a5, a6, a7, a8);
      return 0;
    case 66:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[79];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 66;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 66;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 66;
      goto LABEL_363;
    case 67:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[80];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 67;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 67;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 67;
      goto LABEL_363;
    case 68:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[81];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 68;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 68;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 68;
      goto LABEL_363;
    case 69:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[82];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v10 = qword_281051F78;
        v11 = 69;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 69;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 69;
      goto LABEL_363;
    case 70:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[83];
        }

        if (a3 == 1)
        {
          v10 = qword_281051F78;
          v11 = 70;
LABEL_217:
          ParamByParamId = ParamSpecMgr::getParamByParamId(v10, v11, a3, a4, a5, a6, a7, a8);
          v13 = **ParamByParamId;
        }

LABEL_364:
        throwWrongQueryMode(a3, "int", a3, a4, a5, a6, a7, a8);
        return 0;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 70;
LABEL_462:
        v21 = ParamSpecMgr::getParamByParamId(v19, v20, a3, a4, a5, a6, a7, a8);
        v22 = **v21;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v15 = qword_281051F78;
      v16 = 70;
LABEL_363:
      v17 = ParamSpecMgr::getParamByParamId(v15, v16, a3, a4, a5, a6, a7, a8);
      v18 = **v17;
    default:
      throwWrongParamIdValue(a2, "int", a3, a4, a5, a6, a7, a8);
      return 0;
  }
}

double ChannelParamSet::getDoubleParameter(double *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 1:
      v8 = "BOOL";
      v9 = 1;
      goto LABEL_85;
    case 2:
      v8 = "int";
      v9 = 2;
      goto LABEL_85;
    case 3:
      v8 = "BOOL";
      v9 = 3;
      goto LABEL_85;
    case 4:
      v8 = "int";
      v9 = 4;
      goto LABEL_85;
    case 5:
      v8 = "BOOL";
      v9 = 5;
      goto LABEL_85;
    case 6:
      v8 = "int";
      v9 = 6;
      goto LABEL_85;
    case 7:
      v8 = "int";
      v9 = 7;
      goto LABEL_85;
    case 8:
      v8 = "BOOL";
      v9 = 8;
      goto LABEL_85;
    case 9:
      v8 = "BOOL";
      v9 = 9;
      goto LABEL_85;
    case 10:
      v8 = "BOOL";
      v9 = 10;
      goto LABEL_85;
    case 11:
      v8 = "BOOL";
      v9 = 11;
      goto LABEL_85;
    case 12:
      v8 = "int";
      v9 = 12;
      goto LABEL_85;
    case 13:
      v8 = "enum";
      v9 = 13;
      goto LABEL_85;
    case 14:
      v8 = "int";
      v9 = 14;
      goto LABEL_85;
    case 15:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[11];
        }

        if (a3 != 1)
        {
          goto LABEL_102;
        }

        v10 = qword_281051F78;
        v11 = 15;
        goto LABEL_65;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 15;
        goto LABEL_111;
      }

      if (a3 != 3)
      {
        goto LABEL_102;
      }

      v15 = qword_281051F78;
      v16 = 15;
      goto LABEL_101;
    case 16:
      v8 = "BOOL";
      v9 = 16;
      goto LABEL_85;
    case 17:
      v8 = "int";
      v9 = 17;
      goto LABEL_85;
    case 18:
      v8 = "BOOL";
      v9 = 18;
      goto LABEL_85;
    case 19:
      v8 = "int";
      v9 = 19;
      goto LABEL_85;
    case 20:
      v8 = "BOOL";
      v9 = 20;
      goto LABEL_85;
    case 21:
      v8 = "int";
      v9 = 21;
      goto LABEL_85;
    case 22:
      v8 = "BOOL";
      v9 = 22;
      goto LABEL_85;
    case 23:
      v8 = "int";
      v9 = 23;
      goto LABEL_85;
    case 24:
      v8 = "int";
      v9 = 24;
      goto LABEL_85;
    case 25:
      v8 = "int";
      v9 = 25;
      goto LABEL_85;
    case 26:
      v8 = "int";
      v9 = 26;
      goto LABEL_85;
    case 27:
      v8 = "int";
      v9 = 27;
      goto LABEL_85;
    case 28:
      v8 = "int";
      v9 = 28;
      goto LABEL_85;
    case 29:
      v8 = "int";
      v9 = 29;
      goto LABEL_85;
    case 30:
      v8 = "int";
      v9 = 30;
      goto LABEL_85;
    case 31:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[20];
        }

        if (a3 != 1)
        {
          goto LABEL_102;
        }

        v10 = qword_281051F78;
        v11 = 31;
        goto LABEL_65;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 31;
        goto LABEL_111;
      }

      if (a3 != 3)
      {
        goto LABEL_102;
      }

      v15 = qword_281051F78;
      v16 = 31;
      goto LABEL_101;
    case 32:
      v8 = "int";
      v9 = 32;
      goto LABEL_85;
    case 33:
      v8 = "BOOL";
      v9 = 33;
      goto LABEL_85;
    case 34:
      v8 = "int";
      v9 = 34;
      goto LABEL_85;
    case 35:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[23];
        }

        if (a3 != 1)
        {
          goto LABEL_102;
        }

        v10 = qword_281051F78;
        v11 = 35;
        goto LABEL_65;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 35;
        goto LABEL_111;
      }

      if (a3 != 3)
      {
        goto LABEL_102;
      }

      v15 = qword_281051F78;
      v16 = 35;
      goto LABEL_101;
    case 36:
      v8 = "int";
      v9 = 36;
      goto LABEL_85;
    case 37:
      v8 = "int";
      v9 = 37;
      goto LABEL_85;
    case 38:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[25];
        }

        if (a3 == 1)
        {
          v10 = qword_281051F78;
          v11 = 38;
LABEL_65:
          ParamByParamId = ParamSpecMgr::getParamByParamId(v10, v11, a3, a4, a5, a6, a7, a8);
          v13 = **ParamByParamId;
        }

LABEL_102:
        throwWrongQueryMode(a3, "double", a3, a4, a5, a6, a7, a8);
        return 0.0;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F78;
        v20 = 38;
LABEL_111:
        v21 = ParamSpecMgr::getParamByParamId(v19, v20, a3, a4, a5, a6, a7, a8);
        v22 = **v21;
      }

      if (a3 != 3)
      {
        goto LABEL_102;
      }

      v15 = qword_281051F78;
      v16 = 38;
LABEL_101:
      v17 = ParamSpecMgr::getParamByParamId(v15, v16, a3, a4, a5, a6, a7, a8);
      v18 = **v17;
    case 39:
      v8 = "enum";
      v9 = 39;
      goto LABEL_85;
    case 40:
      v8 = "int";
      v9 = 40;
      goto LABEL_85;
    case 41:
      v8 = "BOOL";
      v9 = 41;
      goto LABEL_85;
    case 42:
      v8 = "int";
      v9 = 42;
      goto LABEL_85;
    case 43:
      v8 = "int";
      v9 = 43;
      goto LABEL_85;
    case 44:
      v8 = "int";
      v9 = 44;
      goto LABEL_85;
    case 45:
      v8 = "int";
      v9 = 45;
      goto LABEL_85;
    case 46:
      v8 = "int";
      v9 = 46;
      goto LABEL_85;
    case 47:
      v8 = "BOOL";
      v9 = 47;
      goto LABEL_85;
    case 48:
      v8 = "int";
      v9 = 48;
      goto LABEL_85;
    case 49:
      v8 = "int";
      v9 = 49;
      goto LABEL_85;
    case 50:
      v8 = "int";
      v9 = 50;
      goto LABEL_85;
    case 51:
      v8 = "int";
      v9 = 51;
      goto LABEL_85;
    case 52:
      v8 = "int";
      v9 = 52;
      goto LABEL_85;
    case 53:
      v8 = "int";
      v9 = 53;
      goto LABEL_85;
    case 54:
      v8 = "int";
      v9 = 54;
      goto LABEL_85;
    case 55:
      v8 = "int";
      v9 = 55;
      goto LABEL_85;
    case 56:
      v8 = "int";
      v9 = 56;
      goto LABEL_85;
    case 57:
      v8 = "int";
      v9 = 57;
      goto LABEL_85;
    case 58:
      v8 = "int";
      v9 = 58;
      goto LABEL_85;
    case 59:
      v8 = "int";
      v9 = 59;
      goto LABEL_85;
    case 60:
      v8 = "int";
      v9 = 60;
      goto LABEL_85;
    case 61:
      v8 = "int";
      v9 = 61;
      goto LABEL_85;
    case 62:
      v8 = "int";
      v9 = 62;
      goto LABEL_85;
    case 63:
      v8 = "BOOL";
      v9 = 63;
      goto LABEL_85;
    case 64:
      v8 = "int";
      v9 = 64;
      goto LABEL_85;
    case 65:
      v8 = "BOOL";
      v9 = 65;
      goto LABEL_85;
    case 66:
      v8 = "int";
      v9 = 66;
      goto LABEL_85;
    case 67:
      v8 = "int";
      v9 = 67;
      goto LABEL_85;
    case 68:
      v8 = "int";
      v9 = 68;
      goto LABEL_85;
    case 69:
      v8 = "int";
      v9 = 69;
      goto LABEL_85;
    case 70:
      v8 = "int";
      v9 = 70;
LABEL_85:
      throwWrongTypeForParamId(v9, v8, "double", a4, a5, a6, a7, a8);
      return 0.0;
    default:
      throwWrongParamIdValue(a2, "double", a3, a4, a5, a6, a7, a8);
      return 0.0;
  }
}

uint64_t ChannelParamSet::getStringParameter(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 1:
      v8 = "BOOL";
      v9 = 1;
      goto LABEL_72;
    case 2:
      v8 = "int";
      v9 = 2;
      goto LABEL_72;
    case 3:
      v8 = "BOOL";
      v9 = 3;
      goto LABEL_72;
    case 4:
      v8 = "int";
      v9 = 4;
      goto LABEL_72;
    case 5:
      v8 = "BOOL";
      v9 = 5;
      goto LABEL_72;
    case 6:
      v8 = "int";
      v9 = 6;
      goto LABEL_72;
    case 7:
      v8 = "int";
      v9 = 7;
      goto LABEL_72;
    case 8:
      v8 = "BOOL";
      v9 = 8;
      goto LABEL_72;
    case 9:
      v8 = "BOOL";
      v9 = 9;
      goto LABEL_72;
    case 10:
      v8 = "BOOL";
      v9 = 10;
      goto LABEL_72;
    case 11:
      v8 = "BOOL";
      v9 = 11;
      goto LABEL_72;
    case 12:
      v8 = "int";
      v9 = 12;
      goto LABEL_72;
    case 13:
      v8 = "enum";
      v9 = 13;
      goto LABEL_72;
    case 14:
      v8 = "int";
      v9 = 14;
      goto LABEL_72;
    case 15:
      v8 = "double";
      v9 = 15;
      goto LABEL_72;
    case 16:
      v8 = "BOOL";
      v9 = 16;
      goto LABEL_72;
    case 17:
      v8 = "int";
      v9 = 17;
      goto LABEL_72;
    case 18:
      v8 = "BOOL";
      v9 = 18;
      goto LABEL_72;
    case 19:
      v8 = "int";
      v9 = 19;
      goto LABEL_72;
    case 20:
      v8 = "BOOL";
      v9 = 20;
      goto LABEL_72;
    case 21:
      v8 = "int";
      v9 = 21;
      goto LABEL_72;
    case 22:
      v8 = "BOOL";
      v9 = 22;
      goto LABEL_72;
    case 23:
      v8 = "int";
      v9 = 23;
      goto LABEL_72;
    case 24:
      v8 = "int";
      v9 = 24;
      goto LABEL_72;
    case 25:
      v8 = "int";
      v9 = 25;
      goto LABEL_72;
    case 26:
      v8 = "int";
      v9 = 26;
      goto LABEL_72;
    case 27:
      v8 = "int";
      v9 = 27;
      goto LABEL_72;
    case 28:
      v8 = "int";
      v9 = 28;
      goto LABEL_72;
    case 29:
      v8 = "int";
      v9 = 29;
      goto LABEL_72;
    case 30:
      v8 = "int";
      v9 = 30;
      goto LABEL_72;
    case 31:
      v8 = "double";
      v9 = 31;
      goto LABEL_72;
    case 32:
      v8 = "int";
      v9 = 32;
      goto LABEL_72;
    case 33:
      v8 = "BOOL";
      v9 = 33;
      goto LABEL_72;
    case 34:
      v8 = "int";
      v9 = 34;
      goto LABEL_72;
    case 35:
      v8 = "double";
      v9 = 35;
      goto LABEL_72;
    case 36:
      v8 = "int";
      v9 = 36;
      goto LABEL_72;
    case 37:
      v8 = "int";
      v9 = 37;
      goto LABEL_72;
    case 38:
      v8 = "double";
      v9 = 38;
      goto LABEL_72;
    case 39:
      v8 = "enum";
      v9 = 39;
      goto LABEL_72;
    case 40:
      v8 = "int";
      v9 = 40;
      goto LABEL_72;
    case 41:
      v8 = "BOOL";
      v9 = 41;
      goto LABEL_72;
    case 42:
      v8 = "int";
      v9 = 42;
      goto LABEL_72;
    case 43:
      v8 = "int";
      v9 = 43;
      goto LABEL_72;
    case 44:
      v8 = "int";
      v9 = 44;
      goto LABEL_72;
    case 45:
      v8 = "int";
      v9 = 45;
      goto LABEL_72;
    case 46:
      v8 = "int";
      v9 = 46;
      goto LABEL_72;
    case 47:
      v8 = "BOOL";
      v9 = 47;
      goto LABEL_72;
    case 48:
      v8 = "int";
      v9 = 48;
      goto LABEL_72;
    case 49:
      v8 = "int";
      v9 = 49;
      goto LABEL_72;
    case 50:
      v8 = "int";
      v9 = 50;
      goto LABEL_72;
    case 51:
      v8 = "int";
      v9 = 51;
      goto LABEL_72;
    case 52:
      v8 = "int";
      v9 = 52;
      goto LABEL_72;
    case 53:
      v8 = "int";
      v9 = 53;
      goto LABEL_72;
    case 54:
      v8 = "int";
      v9 = 54;
      goto LABEL_72;
    case 55:
      v8 = "int";
      v9 = 55;
      goto LABEL_72;
    case 56:
      v8 = "int";
      v9 = 56;
      goto LABEL_72;
    case 57:
      v8 = "int";
      v9 = 57;
      goto LABEL_72;
    case 58:
      v8 = "int";
      v9 = 58;
      goto LABEL_72;
    case 59:
      v8 = "int";
      v9 = 59;
      goto LABEL_72;
    case 60:
      v8 = "int";
      v9 = 60;
      goto LABEL_72;
    case 61:
      v8 = "int";
      v9 = 61;
      goto LABEL_72;
    case 62:
      v8 = "int";
      v9 = 62;
      goto LABEL_72;
    case 63:
      v8 = "BOOL";
      v9 = 63;
      goto LABEL_72;
    case 64:
      v8 = "int";
      v9 = 64;
      goto LABEL_72;
    case 65:
      v8 = "BOOL";
      v9 = 65;
      goto LABEL_72;
    case 66:
      v8 = "int";
      v9 = 66;
      goto LABEL_72;
    case 67:
      v8 = "int";
      v9 = 67;
      goto LABEL_72;
    case 68:
      v8 = "int";
      v9 = 68;
      goto LABEL_72;
    case 69:
      v8 = "int";
      v9 = 69;
      goto LABEL_72;
    case 70:
      v8 = "int";
      v9 = 70;
LABEL_72:
      throwWrongTypeForParamId(v9, v8, "string", a4, a5, a6, a7, a8);
      break;
    default:
      throwWrongParamIdValue(a2, "string", a3, a4, a5, a6, a7, a8);
      break;
  }

  return 0;
}

uint64_t ChannelParamSet::getEnumParameter(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 1:
      v8 = "BOOL";
      v9 = 1;
      goto LABEL_84;
    case 2:
      v8 = "int";
      v9 = 2;
      goto LABEL_84;
    case 3:
      v8 = "BOOL";
      v9 = 3;
      goto LABEL_84;
    case 4:
      v8 = "int";
      v9 = 4;
      goto LABEL_84;
    case 5:
      v8 = "BOOL";
      v9 = 5;
      goto LABEL_84;
    case 6:
      v8 = "int";
      v9 = 6;
      goto LABEL_84;
    case 7:
      v8 = "int";
      v9 = 7;
      goto LABEL_84;
    case 8:
      v8 = "BOOL";
      v9 = 8;
      goto LABEL_84;
    case 9:
      v8 = "BOOL";
      v9 = 9;
      goto LABEL_84;
    case 10:
      v8 = "BOOL";
      v9 = 10;
      goto LABEL_84;
    case 11:
      v8 = "BOOL";
      v9 = 11;
      goto LABEL_84;
    case 12:
      v8 = "int";
      v9 = 12;
      goto LABEL_84;
    case 13:
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v26 = qword_281051F78;
          v27 = 13;
          goto LABEL_105;
        }

        if (a3 != 3)
        {
          goto LABEL_100;
        }

        v22 = qword_281051F78;
        v23 = 13;
        goto LABEL_95;
      }

      if (!a3)
      {
        return *(a1 + 76);
      }

      if (a3 != 1)
      {
        goto LABEL_100;
      }

      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051F78, 13, a3, a4, a5, a6, a7, a8);
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
    case 14:
      v8 = "int";
      v9 = 14;
      goto LABEL_84;
    case 15:
      v8 = "double";
      v9 = 15;
      goto LABEL_84;
    case 16:
      v8 = "BOOL";
      v9 = 16;
      goto LABEL_84;
    case 17:
      v8 = "int";
      v9 = 17;
      goto LABEL_84;
    case 18:
      v8 = "BOOL";
      v9 = 18;
      goto LABEL_84;
    case 19:
      v8 = "int";
      v9 = 19;
      goto LABEL_84;
    case 20:
      v8 = "BOOL";
      v9 = 20;
      goto LABEL_84;
    case 21:
      v8 = "int";
      v9 = 21;
      goto LABEL_84;
    case 22:
      v8 = "BOOL";
      v9 = 22;
      goto LABEL_84;
    case 23:
      v8 = "int";
      v9 = 23;
      goto LABEL_84;
    case 24:
      v8 = "int";
      v9 = 24;
      goto LABEL_84;
    case 25:
      v8 = "int";
      v9 = 25;
      goto LABEL_84;
    case 26:
      v8 = "int";
      v9 = 26;
      goto LABEL_84;
    case 27:
      v8 = "int";
      v9 = 27;
      goto LABEL_84;
    case 28:
      v8 = "int";
      v9 = 28;
      goto LABEL_84;
    case 29:
      v8 = "int";
      v9 = 29;
      goto LABEL_84;
    case 30:
      v8 = "int";
      v9 = 30;
      goto LABEL_84;
    case 31:
      v8 = "double";
      v9 = 31;
      goto LABEL_84;
    case 32:
      v8 = "int";
      v9 = 32;
      goto LABEL_84;
    case 33:
      v8 = "BOOL";
      v9 = 33;
      goto LABEL_84;
    case 34:
      v8 = "int";
      v9 = 34;
      goto LABEL_84;
    case 35:
      v8 = "double";
      v9 = 35;
      goto LABEL_84;
    case 36:
      v8 = "int";
      v9 = 36;
      goto LABEL_84;
    case 37:
      v8 = "int";
      v9 = 37;
      goto LABEL_84;
    case 38:
      v8 = "double";
      v9 = 38;
      goto LABEL_84;
    case 39:
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v26 = qword_281051F78;
          v27 = 39;
LABEL_105:
          v28 = ParamSpecMgr::getParamByParamId(v26, v27, a3, a4, a5, a6, a7, a8);
          if (v28)
          {
            v29 = **v28;
          }

          return EnumParamSpec::getMinVal(v28);
        }

        if (a3 == 3)
        {
          v22 = qword_281051F78;
          v23 = 39;
LABEL_95:
          v24 = ParamSpecMgr::getParamByParamId(v22, v23, a3, a4, a5, a6, a7, a8);
          if (v24)
          {
            v25 = **v24;
          }

          return EnumParamSpec::getMaxVal(v24);
        }

        goto LABEL_100;
      }

      if (!a3)
      {
        return *(a1 + 208);
      }

      if (a3 != 1)
      {
LABEL_100:
        throwWrongQueryMode(a3, "enum", a3, a4, a5, a6, a7, a8);
        return 0;
      }

      v17 = ParamSpecMgr::getParamByParamId(qword_281051F78, 39, a3, a4, a5, a6, a7, a8);
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
    case 40:
      v8 = "int";
      v9 = 40;
      goto LABEL_84;
    case 41:
      v8 = "BOOL";
      v9 = 41;
      goto LABEL_84;
    case 42:
      v8 = "int";
      v9 = 42;
      goto LABEL_84;
    case 43:
      v8 = "int";
      v9 = 43;
      goto LABEL_84;
    case 44:
      v8 = "int";
      v9 = 44;
      goto LABEL_84;
    case 45:
      v8 = "int";
      v9 = 45;
      goto LABEL_84;
    case 46:
      v8 = "int";
      v9 = 46;
      goto LABEL_84;
    case 47:
      v8 = "BOOL";
      v9 = 47;
      goto LABEL_84;
    case 48:
      v8 = "int";
      v9 = 48;
      goto LABEL_84;
    case 49:
      v8 = "int";
      v9 = 49;
      goto LABEL_84;
    case 50:
      v8 = "int";
      v9 = 50;
      goto LABEL_84;
    case 51:
      v8 = "int";
      v9 = 51;
      goto LABEL_84;
    case 52:
      v8 = "int";
      v9 = 52;
      goto LABEL_84;
    case 53:
      v8 = "int";
      v9 = 53;
      goto LABEL_84;
    case 54:
      v8 = "int";
      v9 = 54;
      goto LABEL_84;
    case 55:
      v8 = "int";
      v9 = 55;
      goto LABEL_84;
    case 56:
      v8 = "int";
      v9 = 56;
      goto LABEL_84;
    case 57:
      v8 = "int";
      v9 = 57;
      goto LABEL_84;
    case 58:
      v8 = "int";
      v9 = 58;
      goto LABEL_84;
    case 59:
      v8 = "int";
      v9 = 59;
      goto LABEL_84;
    case 60:
      v8 = "int";
      v9 = 60;
      goto LABEL_84;
    case 61:
      v8 = "int";
      v9 = 61;
      goto LABEL_84;
    case 62:
      v8 = "int";
      v9 = 62;
      goto LABEL_84;
    case 63:
      v8 = "BOOL";
      v9 = 63;
      goto LABEL_84;
    case 64:
      v8 = "int";
      v9 = 64;
      goto LABEL_84;
    case 65:
      v8 = "BOOL";
      v9 = 65;
      goto LABEL_84;
    case 66:
      v8 = "int";
      v9 = 66;
      goto LABEL_84;
    case 67:
      v8 = "int";
      v9 = 67;
      goto LABEL_84;
    case 68:
      v8 = "int";
      v9 = 68;
      goto LABEL_84;
    case 69:
      v8 = "int";
      v9 = 69;
      goto LABEL_84;
    case 70:
      v8 = "int";
      v9 = 70;
LABEL_84:
      throwWrongTypeForParamId(v9, v8, "BOOL", a4, a5, a6, a7, a8);
      return 0;
    default:
      throwWrongParamIdValue(a2, "enum", a3, a4, a5, a6, a7, a8);
      return 0;
  }
}

void ChannelParamSet::setBoolParameter(ChannelParamSet *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v9 = a3;
  switch(a2)
  {
    case 1:
      if (*(this + 9))
      {
        v11 = "ChannelAdaptationCDFAdaptFastInitially";
        goto LABEL_96;
      }

      *(this + 40) = a3;
      return;
    case 2:
      throwWrongTypeForParamId(2, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_31;
    case 3:
LABEL_31:
      if (*(this + 9))
      {
        v11 = "ChannelAdaptationCDFUseSilenceTracker";
        goto LABEL_96;
      }

      *(this + 48) = v9;
      return;
    case 4:
      throwWrongTypeForParamId(4, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_13;
    case 5:
LABEL_13:
      if (*(this + 9))
      {
        v11 = "ChannelAdaptationDelayApplyTillUttEnd";
        goto LABEL_96;
      }

      *(this + 56) = v9;
      return;
    case 6:
      throwWrongTypeForParamId(6, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_41;
    case 7:
LABEL_41:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_42;
    case 8:
LABEL_42:
      if (*(this + 9))
      {
        v11 = "ChannelAdaptationMeansAdaptFastInitially";
        goto LABEL_96;
      }

      *(this + 68) = v9;
      return;
    case 9:
      if (*(this + 9))
      {
        v11 = "ChannelAdaptationMeansApplySynchronous";
        goto LABEL_96;
      }

      *(this + 69) = a3;
      return;
    case 10:
      if (*(this + 9))
      {
        v11 = "ChannelAdaptationMeansC0UseSilenceTracker";
        goto LABEL_96;
      }

      *(this + 70) = a3;
      return;
    case 11:
      if (*(this + 9))
      {
        v11 = "ChannelAdaptationMeansDelayApplyInitially";
        goto LABEL_96;
      }

      *(this + 71) = a3;
      return;
    case 12:
      throwWrongTypeForParamId(12, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_34;
    case 13:
LABEL_34:
      throwWrongTypeForParamId(v8, "enum", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_35;
    case 14:
LABEL_35:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_36;
    case 15:
LABEL_36:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_37;
    case 16:
LABEL_37:
      if (*(this + 9))
      {
        v11 = "ChannelAdaptationMeansUseSilenceTracker";
        goto LABEL_96;
      }

      *(this + 96) = v9;
      return;
    case 17:
      throwWrongTypeForParamId(17, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_46;
    case 18:
LABEL_46:
      if (*(this + 9))
      {
        v11 = "ChannelAdaptationVarianceAdaptFastInitially";
        goto LABEL_96;
      }

      *(this + 104) = v9;
      return;
    case 19:
      throwWrongTypeForParamId(19, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_87;
    case 20:
LABEL_87:
      if (*(this + 9))
      {
        v11 = "ChannelAdaptationVarianceUseSilenceTracker";
        goto LABEL_96;
      }

      *(this + 112) = v9;
      return;
    case 21:
      throwWrongTypeForParamId(21, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_67;
    case 22:
LABEL_67:
      if (*(this + 9))
      {
        v11 = "ChannelEnablePitchTracking";
        goto LABEL_96;
      }

      *(this + 120) = v9;
      return;
    case 23:
      throwWrongTypeForParamId(23, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_74;
    case 24:
LABEL_74:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_75;
    case 25:
LABEL_75:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_76;
    case 26:
LABEL_76:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_77;
    case 27:
LABEL_77:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_78;
    case 28:
LABEL_78:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_79;
    case 29:
LABEL_79:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_80;
    case 30:
LABEL_80:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_81;
    case 31:
LABEL_81:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_82;
    case 32:
LABEL_82:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_83;
    case 33:
LABEL_83:
      if (*(this + 9))
      {
        v11 = "ChannelSpectralSubtractionDisableAtTargetSNR";
        goto LABEL_96;
      }

      *(this + 172) = v9;
      return;
    case 34:
      throwWrongTypeForParamId(34, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_16;
    case 35:
LABEL_16:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_17;
    case 36:
LABEL_17:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_18;
    case 37:
LABEL_18:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_19;
    case 38:
LABEL_19:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_20;
    case 39:
LABEL_20:
      throwWrongTypeForParamId(v8, "enum", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_21;
    case 40:
LABEL_21:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_22;
    case 41:
LABEL_22:
      if (*(this + 9))
      {
        v11 = "ChannelWaveInputEnableSpectralWarping";
        goto LABEL_96;
      }

      *(this + 216) = v9;
      return;
    case 42:
      throwWrongTypeForParamId(42, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_90;
    case 43:
LABEL_90:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_91;
    case 44:
LABEL_91:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_92;
    case 45:
LABEL_92:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_93;
    case 46:
LABEL_93:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_94;
    case 47:
LABEL_94:
      if (*(this + 9))
      {
        v11 = "ChannelMaxNormEnergyUseOnline";
        goto LABEL_96;
      }

      *(this + 240) = v9;
      return;
    case 48:
      throwWrongTypeForParamId(48, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_49;
    case 49:
LABEL_49:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_50;
    case 50:
LABEL_50:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_51;
    case 51:
LABEL_51:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_52;
    case 52:
LABEL_52:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_53;
    case 53:
LABEL_53:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_54;
    case 54:
LABEL_54:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_55;
    case 55:
LABEL_55:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_56;
    case 56:
LABEL_56:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_57;
    case 57:
LABEL_57:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_58;
    case 58:
LABEL_58:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_59;
    case 59:
LABEL_59:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_60;
    case 60:
LABEL_60:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_61;
    case 61:
LABEL_61:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_62;
    case 62:
LABEL_62:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_63;
    case 63:
LABEL_63:
      if (*(this + 9))
      {
        v11 = "UttDetLimitFrameEnergy";
        goto LABEL_96;
      }

      *(this + 304) = v9;
      break;
    case 64:
      throwWrongTypeForParamId(64, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_26;
    case 65:
LABEL_26:
      if (*(this + 9))
      {
        v11 = "UttDetResetFileChannelStateAfterSection";
LABEL_96:

        throwParamSetSetFailed(v11, "BOOL", a3, a4, a5, a6, a7, a8);
      }

      else
      {
        *(this + 312) = v9;
      }

      break;
    case 66:
      throwWrongTypeForParamId(66, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_5;
    case 67:
LABEL_5:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_6;
    case 68:
LABEL_6:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_7;
    case 69:
LABEL_7:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_8;
    case 70:
LABEL_8:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_9;
    default:
LABEL_9:

      throwWrongParamIdValue(v8, "BOOL", a3, a4, a5, a6, a7, a8);
      return;
  }
}

void ChannelParamSet::setIntParameter(ChannelParamSet *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051F78, 2, a3, a4, a5, a6, a7, a8);
      if (ParamByParamId)
      {
        v16 = **ParamByParamId;
      }

      IntParamSpec::validateValue(ParamByParamId, v9, 0, 0, v12, v13, v14, v15);
      if (*(this + 9))
      {
        v23 = "ChannelAdaptationCDFRelevance";
        goto LABEL_219;
      }

      *(this + 11) = v9;
      return;
    case 3:
      throwWrongTypeForParamId(3, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_108;
    case 4:
LABEL_108:
      v156 = ParamSpecMgr::getParamByParamId(qword_281051F78, 4, a3, a4, a5, a6, a7, a8);
      if (v156)
      {
        v161 = **v156;
      }

      IntParamSpec::validateValue(v156, v9, 0, 0, v157, v158, v159, v160);
      if (*(this + 9))
      {
        v23 = "ChannelAdaptationCDFWindowMicroseconds";
        goto LABEL_219;
      }

      *(this + 13) = v9;
      return;
    case 5:
      throwWrongTypeForParamId(5, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_132;
    case 6:
LABEL_132:
      v186 = ParamSpecMgr::getParamByParamId(qword_281051F78, 6, a3, a4, a5, a6, a7, a8);
      if (v186)
      {
        v191 = **v186;
      }

      IntParamSpec::validateValue(v186, v9, 0, 0, v187, v188, v189, v190);
      if (*(this + 9))
      {
        v23 = "ChannelAdaptationInterpolatedCDFMaxPercentMassPerBin";
        goto LABEL_219;
      }

      *(this + 15) = v9;
      return;
    case 7:
      v204 = ParamSpecMgr::getParamByParamId(qword_281051F78, 7, a3, a4, a5, a6, a7, a8);
      if (v204)
      {
        v209 = **v204;
      }

      IntParamSpec::validateValue(v204, v9, 0, 0, v205, v206, v207, v208);
      if (*(this + 9))
      {
        v23 = "ChannelAdaptationMeansAccumSmoothingWindowMicroseconds";
        goto LABEL_219;
      }

      *(this + 16) = v9;
      return;
    case 8:
      throwWrongTypeForParamId(8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_78;
    case 9:
LABEL_78:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_79;
    case 10:
LABEL_79:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_80;
    case 11:
LABEL_80:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_81;
    case 12:
LABEL_81:
      v120 = ParamSpecMgr::getParamByParamId(qword_281051F78, 12, a3, a4, a5, a6, a7, a8);
      if (v120)
      {
        v125 = **v120;
      }

      IntParamSpec::validateValue(v120, v9, 0, 0, v121, v122, v123, v124);
      if (*(this + 9))
      {
        v23 = "ChannelAdaptationMeansInitialWindowMicroseconds";
        goto LABEL_219;
      }

      *(this + 18) = v9;
      return;
    case 13:
      throwWrongTypeForParamId(13, "enum", "int", a4, a5, a6, a7, a8);
      goto LABEL_142;
    case 14:
LABEL_142:
      v198 = ParamSpecMgr::getParamByParamId(qword_281051F78, 14, a3, a4, a5, a6, a7, a8);
      if (v198)
      {
        v203 = **v198;
      }

      IntParamSpec::validateValue(v198, v9, 0, 0, v199, v200, v201, v202);
      if (*(this + 9))
      {
        v23 = "ChannelAdaptationMeansRelevance";
        goto LABEL_219;
      }

      *(this + 20) = v9;
      return;
    case 15:
      throwWrongTypeForParamId(15, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_50;
    case 16:
LABEL_50:
      throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_51;
    case 17:
LABEL_51:
      v84 = ParamSpecMgr::getParamByParamId(qword_281051F78, 17, a3, a4, a5, a6, a7, a8);
      if (v84)
      {
        v89 = **v84;
      }

      IntParamSpec::validateValue(v84, v9, 0, 0, v85, v86, v87, v88);
      if (*(this + 9))
      {
        v23 = "ChannelAdaptationMeansWindowMicroseconds";
        goto LABEL_219;
      }

      *(this + 25) = v9;
      return;
    case 18:
      throwWrongTypeForParamId(18, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_151;
    case 19:
LABEL_151:
      v210 = ParamSpecMgr::getParamByParamId(qword_281051F78, 19, a3, a4, a5, a6, a7, a8);
      if (v210)
      {
        v215 = **v210;
      }

      IntParamSpec::validateValue(v210, v9, 0, 0, v211, v212, v213, v214);
      if (*(this + 9))
      {
        v23 = "ChannelAdaptationVarianceRelevance";
        goto LABEL_219;
      }

      *(this + 27) = v9;
      return;
    case 20:
      throwWrongTypeForParamId(20, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_123;
    case 21:
LABEL_123:
      v174 = ParamSpecMgr::getParamByParamId(qword_281051F78, 21, a3, a4, a5, a6, a7, a8);
      if (v174)
      {
        v179 = **v174;
      }

      IntParamSpec::validateValue(v174, v9, 0, 0, v175, v176, v177, v178);
      if (*(this + 9))
      {
        v23 = "ChannelAdaptationVarianceWindowMicroseconds";
        goto LABEL_219;
      }

      *(this + 29) = v9;
      return;
    case 22:
      throwWrongTypeForParamId(22, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_160;
    case 23:
LABEL_160:
      v222 = ParamSpecMgr::getParamByParamId(qword_281051F78, 23, a3, a4, a5, a6, a7, a8);
      if (v222)
      {
        v227 = **v222;
      }

      IntParamSpec::validateValue(v222, v9, 0, 0, v223, v224, v225, v226);
      if (*(this + 9))
      {
        v23 = "ChannelSilenceTrackerBackgroundThresh";
        goto LABEL_219;
      }

      *(this + 31) = v9;
      return;
    case 24:
      v252 = ParamSpecMgr::getParamByParamId(qword_281051F78, 24, a3, a4, a5, a6, a7, a8);
      if (v252)
      {
        v257 = **v252;
      }

      IntParamSpec::validateValue(v252, v9, 0, 0, v253, v254, v255, v256);
      if (*(this + 9))
      {
        v23 = "ChannelSilenceTrackerDecrementPerSecond";
        goto LABEL_219;
      }

      *(this + 32) = v9;
      return;
    case 25:
      v144 = ParamSpecMgr::getParamByParamId(qword_281051F78, 25, a3, a4, a5, a6, a7, a8);
      if (v144)
      {
        v149 = **v144;
      }

      IntParamSpec::validateValue(v144, v9, 0, 0, v145, v146, v147, v148);
      if (*(this + 9))
      {
        v23 = "ChannelSilenceTrackerIncrementPerSecond";
        goto LABEL_219;
      }

      *(this + 33) = v9;
      return;
    case 26:
      v138 = ParamSpecMgr::getParamByParamId(qword_281051F78, 26, a3, a4, a5, a6, a7, a8);
      if (v138)
      {
        v143 = **v138;
      }

      IntParamSpec::validateValue(v138, v9, 0, 0, v139, v140, v141, v142);
      if (*(this + 9))
      {
        v23 = "ChannelSilenceTrackerInitialLevel";
        goto LABEL_219;
      }

      *(this + 34) = v9;
      return;
    case 27:
      v270 = ParamSpecMgr::getParamByParamId(qword_281051F78, 27, a3, a4, a5, a6, a7, a8);
      if (v270)
      {
        v275 = **v270;
      }

      IntParamSpec::validateValue(v270, v9, 0, 0, v271, v272, v273, v274);
      if (*(this + 9))
      {
        v23 = "ChannelSilenceTrackerOutlierMinTriggerPercent";
        goto LABEL_219;
      }

      *(this + 35) = v9;
      return;
    case 28:
      v78 = ParamSpecMgr::getParamByParamId(qword_281051F78, 28, a3, a4, a5, a6, a7, a8);
      if (v78)
      {
        v83 = **v78;
      }

      IntParamSpec::validateValue(v78, v9, 0, 0, v79, v80, v81, v82);
      if (*(this + 9))
      {
        v23 = "ChannelSilenceTrackerOutlierWindowMicroseconds";
        goto LABEL_219;
      }

      *(this + 36) = v9;
      return;
    case 29:
      v258 = ParamSpecMgr::getParamByParamId(qword_281051F78, 29, a3, a4, a5, a6, a7, a8);
      if (v258)
      {
        v263 = **v258;
      }

      IntParamSpec::validateValue(v258, v9, 0, 0, v259, v260, v261, v262);
      if (*(this + 9))
      {
        v23 = "ChannelSilenceTrackerSpeechThresh";
        goto LABEL_219;
      }

      *(this + 37) = v9;
      return;
    case 30:
      v264 = ParamSpecMgr::getParamByParamId(qword_281051F78, 30, a3, a4, a5, a6, a7, a8);
      if (v264)
      {
        v269 = **v264;
      }

      IntParamSpec::validateValue(v264, v9, 0, 0, v265, v266, v267, v268);
      if (*(this + 9))
      {
        v23 = "ChannelSilenceTrackerRelevance";
        goto LABEL_219;
      }

      *(this + 38) = v9;
      return;
    case 31:
      throwWrongTypeForParamId(31, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_113;
    case 32:
LABEL_113:
      v162 = ParamSpecMgr::getParamByParamId(qword_281051F78, 32, a3, a4, a5, a6, a7, a8);
      if (v162)
      {
        v167 = **v162;
      }

      IntParamSpec::validateValue(v162, v9, 0, 0, v163, v164, v165, v166);
      if (*(this + 9))
      {
        v23 = "ChannelSpectralSubtractionDelayMicroseconds";
        goto LABEL_219;
      }

      *(this + 42) = v9;
      return;
    case 33:
      throwWrongTypeForParamId(33, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_65;
    case 34:
LABEL_65:
      v102 = ParamSpecMgr::getParamByParamId(qword_281051F78, 34, a3, a4, a5, a6, a7, a8);
      if (v102)
      {
        v107 = **v102;
      }

      IntParamSpec::validateValue(v102, v9, 0, 0, v103, v104, v105, v106);
      if (*(this + 9))
      {
        v23 = "ChannelSpectralSubtractionInitialWindowMicroseconds";
        goto LABEL_219;
      }

      *(this + 44) = v9;
      return;
    case 35:
      throwWrongTypeForParamId(35, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_33;
    case 36:
LABEL_33:
      v60 = ParamSpecMgr::getParamByParamId(qword_281051F78, 36, a3, a4, a5, a6, a7, a8);
      if (v60)
      {
        v65 = **v60;
      }

      IntParamSpec::validateValue(v60, v9, 0, 0, v61, v62, v63, v64);
      if (*(this + 9))
      {
        v23 = "ChannelSpectralSubtractionMinSNRMicroseconds";
        goto LABEL_219;
      }

      *(this + 48) = v9;
      return;
    case 37:
      v66 = ParamSpecMgr::getParamByParamId(qword_281051F78, 37, a3, a4, a5, a6, a7, a8);
      if (v66)
      {
        v71 = **v66;
      }

      IntParamSpec::validateValue(v66, v9, 0, 0, v67, v68, v69, v70);
      if (*(this + 9))
      {
        v23 = "ChannelSpectralSubtractionStartDecimationMicroseconds";
        goto LABEL_219;
      }

      *(this + 49) = v9;
      return;
    case 38:
      throwWrongTypeForParamId(38, "double", "int", a4, a5, a6, a7, a8);
      goto LABEL_165;
    case 39:
LABEL_165:
      throwWrongTypeForParamId(v8, "enum", "int", a4, a5, a6, a7, a8);
      goto LABEL_166;
    case 40:
LABEL_166:
      v228 = ParamSpecMgr::getParamByParamId(qword_281051F78, 40, a3, a4, a5, a6, a7, a8);
      if (v228)
      {
        v233 = **v228;
      }

      IntParamSpec::validateValue(v228, v9, 0, 0, v229, v230, v231, v232);
      if (*(this + 9))
      {
        v23 = "ChannelWaveInputClippingThreshold";
        goto LABEL_219;
      }

      *(this + 53) = v9;
      return;
    case 41:
      throwWrongTypeForParamId(41, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_118;
    case 42:
LABEL_118:
      v168 = ParamSpecMgr::getParamByParamId(qword_281051F78, 42, a3, a4, a5, a6, a7, a8);
      if (v168)
      {
        v173 = **v168;
      }

      IntParamSpec::validateValue(v168, v9, 0, 0, v169, v170, v171, v172);
      if (*(this + 9))
      {
        v23 = "ChannelWavePacketLossDetectionPacketSize";
        goto LABEL_219;
      }

      *(this + 55) = v9;
      return;
    case 43:
      v240 = ParamSpecMgr::getParamByParamId(qword_281051F78, 43, a3, a4, a5, a6, a7, a8);
      if (v240)
      {
        v245 = **v240;
      }

      IntParamSpec::validateValue(v240, v9, 0, 0, v241, v242, v243, v244);
      if (*(this + 9))
      {
        v23 = "ChannelWavePacketLossDetectionSlopeCountPercent";
        goto LABEL_219;
      }

      *(this + 56) = v9;
      return;
    case 44:
      v30 = ParamSpecMgr::getParamByParamId(qword_281051F78, 44, a3, a4, a5, a6, a7, a8);
      if (v30)
      {
        v35 = **v30;
      }

      IntParamSpec::validateValue(v30, v9, 0, 0, v31, v32, v33, v34);
      if (*(this + 9))
      {
        v23 = "ChannelWavePacketLossDetectionSlopeThresh";
        goto LABEL_219;
      }

      *(this + 57) = v9;
      return;
    case 45:
      v96 = ParamSpecMgr::getParamByParamId(qword_281051F78, 45, a3, a4, a5, a6, a7, a8);
      if (v96)
      {
        v101 = **v96;
      }

      IntParamSpec::validateValue(v96, v9, 0, 0, v97, v98, v99, v100);
      if (*(this + 9))
      {
        v23 = "ChannelWavePacketLossDetectionWindowSize";
        goto LABEL_219;
      }

      *(this + 58) = v9;
      return;
    case 46:
      v216 = ParamSpecMgr::getParamByParamId(qword_281051F78, 46, a3, a4, a5, a6, a7, a8);
      if (v216)
      {
        v221 = **v216;
      }

      IntParamSpec::validateValue(v216, v9, 0, 0, v217, v218, v219, v220);
      if (*(this + 9))
      {
        v23 = "ChannelWaveStereoInputSelectSource";
        goto LABEL_219;
      }

      *(this + 59) = v9;
      return;
    case 47:
      throwWrongTypeForParamId(47, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_24;
    case 48:
LABEL_24:
      v48 = ParamSpecMgr::getParamByParamId(qword_281051F78, 48, a3, a4, a5, a6, a7, a8);
      if (v48)
      {
        v53 = **v48;
      }

      IntParamSpec::validateValue(v48, v9, 0, 0, v49, v50, v51, v52);
      if (*(this + 9))
      {
        v23 = "ChannelOnlineMaxNormEnergyInitialWindowFrames";
        goto LABEL_219;
      }

      *(this + 61) = v9;
      return;
    case 49:
      v108 = ParamSpecMgr::getParamByParamId(qword_281051F78, 49, a3, a4, a5, a6, a7, a8);
      if (v108)
      {
        v113 = **v108;
      }

      IntParamSpec::validateValue(v108, v9, 0, 0, v109, v110, v111, v112);
      if (*(this + 9))
      {
        v23 = "ChannelOnlineMaxNormEnergyGeneralRampFactor";
        goto LABEL_219;
      }

      *(this + 62) = v9;
      return;
    case 50:
      v126 = ParamSpecMgr::getParamByParamId(qword_281051F78, 50, a3, a4, a5, a6, a7, a8);
      if (v126)
      {
        v131 = **v126;
      }

      IntParamSpec::validateValue(v126, v9, 0, 0, v127, v128, v129, v130);
      if (*(this + 9))
      {
        v23 = "ChannelOnlineMaxNormEnergyGeneralDecayValue";
        goto LABEL_219;
      }

      *(this + 63) = v9;
      return;
    case 51:
      v24 = ParamSpecMgr::getParamByParamId(qword_281051F78, 51, a3, a4, a5, a6, a7, a8);
      if (v24)
      {
        v29 = **v24;
      }

      IntParamSpec::validateValue(v24, v9, 0, 0, v25, v26, v27, v28);
      if (*(this + 9))
      {
        v23 = "UttDetBackgroundFloorDecreasePerSecond";
        goto LABEL_219;
      }

      *(this + 64) = v9;
      return;
    case 52:
      v294 = ParamSpecMgr::getParamByParamId(qword_281051F78, 52, a3, a4, a5, a6, a7, a8);
      if (v294)
      {
        v299 = **v294;
      }

      IntParamSpec::validateValue(v294, v9, 0, 0, v295, v296, v297, v298);
      if (*(this + 9))
      {
        v23 = "UttDetBackgroundFloorIncreasePerSecond";
        goto LABEL_219;
      }

      *(this + 65) = v9;
      return;
    case 53:
      v288 = ParamSpecMgr::getParamByParamId(qword_281051F78, 53, a3, a4, a5, a6, a7, a8);
      if (v288)
      {
        v293 = **v288;
      }

      IntParamSpec::validateValue(v288, v9, 0, 0, v289, v290, v291, v292);
      if (*(this + 9))
      {
        v23 = "UttDetBackgroundFloorOutlierMinTriggerPercent";
        goto LABEL_219;
      }

      *(this + 66) = v9;
      return;
    case 54:
      v42 = ParamSpecMgr::getParamByParamId(qword_281051F78, 54, a3, a4, a5, a6, a7, a8);
      if (v42)
      {
        v47 = **v42;
      }

      IntParamSpec::validateValue(v42, v9, 0, 0, v43, v44, v45, v46);
      if (*(this + 9))
      {
        v23 = "UttDetBackgroundFloorOutlierWindowMicroseconds";
        goto LABEL_219;
      }

      *(this + 67) = v9;
      return;
    case 55:
      v276 = ParamSpecMgr::getParamByParamId(qword_281051F78, 55, a3, a4, a5, a6, a7, a8);
      if (v276)
      {
        v281 = **v276;
      }

      IntParamSpec::validateValue(v276, v9, 0, 0, v277, v278, v279, v280);
      if (*(this + 9))
      {
        v23 = "UttDetBackgroundThreshPercent";
        goto LABEL_219;
      }

      *(this + 68) = v9;
      return;
    case 56:
      v282 = ParamSpecMgr::getParamByParamId(qword_281051F78, 56, a3, a4, a5, a6, a7, a8);
      if (v282)
      {
        v287 = **v282;
      }

      IntParamSpec::validateValue(v282, v9, 0, 0, v283, v284, v285, v286);
      if (*(this + 9))
      {
        v23 = "UttDetBeginUttMinTriggerPercent";
        goto LABEL_219;
      }

      *(this + 69) = v9;
      return;
    case 57:
      v54 = ParamSpecMgr::getParamByParamId(qword_281051F78, 57, a3, a4, a5, a6, a7, a8);
      if (v54)
      {
        v59 = **v54;
      }

      IntParamSpec::validateValue(v54, v9, 0, 0, v55, v56, v57, v58);
      if (*(this + 9))
      {
        v23 = "UttDetBeginUttWindowMicroseconds";
        goto LABEL_219;
      }

      *(this + 70) = v9;
      return;
    case 58:
      v234 = ParamSpecMgr::getParamByParamId(qword_281051F78, 58, a3, a4, a5, a6, a7, a8);
      if (v234)
      {
        v239 = **v234;
      }

      IntParamSpec::validateValue(v234, v9, 0, 0, v235, v236, v237, v238);
      if (*(this + 9))
      {
        v23 = "UttDetEndUttMinTriggerPercent";
        goto LABEL_219;
      }

      *(this + 71) = v9;
      return;
    case 59:
      v114 = ParamSpecMgr::getParamByParamId(qword_281051F78, 59, a3, a4, a5, a6, a7, a8);
      if (v114)
      {
        v119 = **v114;
      }

      IntParamSpec::validateValue(v114, v9, 0, 0, v115, v116, v117, v118);
      if (*(this + 9))
      {
        v23 = "UttDetEndUttWindowMicroseconds";
        goto LABEL_219;
      }

      *(this + 72) = v9;
      return;
    case 60:
      v246 = ParamSpecMgr::getParamByParamId(qword_281051F78, 60, a3, a4, a5, a6, a7, a8);
      if (v246)
      {
        v251 = **v246;
      }

      IntParamSpec::validateValue(v246, v9, 0, 0, v247, v248, v249, v250);
      if (*(this + 9))
      {
        v23 = "UttDetInitialBackgroundLevelMin";
        goto LABEL_219;
      }

      *(this + 73) = v9;
      return;
    case 61:
      v132 = ParamSpecMgr::getParamByParamId(qword_281051F78, 61, a3, a4, a5, a6, a7, a8);
      if (v132)
      {
        v137 = **v132;
      }

      IntParamSpec::validateValue(v132, v9, 0, 0, v133, v134, v135, v136);
      if (*(this + 9))
      {
        v23 = "UttDetInitialBackgroundLevelRange";
        goto LABEL_219;
      }

      *(this + 74) = v9;
      return;
    case 62:
      v180 = ParamSpecMgr::getParamByParamId(qword_281051F78, 62, a3, a4, a5, a6, a7, a8);
      if (v180)
      {
        v185 = **v180;
      }

      IntParamSpec::validateValue(v180, v9, 0, 0, v181, v182, v183, v184);
      if (*(this + 9))
      {
        v23 = "UttDetInitializeWindowMicroseconds";
        goto LABEL_219;
      }

      *(this + 75) = v9;
      return;
    case 63:
      throwWrongTypeForParamId(63, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_103;
    case 64:
LABEL_103:
      v150 = ParamSpecMgr::getParamByParamId(qword_281051F78, 64, a3, a4, a5, a6, a7, a8);
      if (v150)
      {
        v155 = **v150;
      }

      IntParamSpec::validateValue(v150, v9, 0, 0, v151, v152, v153, v154);
      if (*(this + 9))
      {
        v23 = "UttDetMaxNonSpeechUttSeconds";
        goto LABEL_219;
      }

      *(this + 77) = v9;
      return;
    case 65:
      throwWrongTypeForParamId(65, "BOOL", "int", a4, a5, a6, a7, a8);
      goto LABEL_137;
    case 66:
LABEL_137:
      v192 = ParamSpecMgr::getParamByParamId(qword_281051F78, 66, a3, a4, a5, a6, a7, a8);
      if (v192)
      {
        v197 = **v192;
      }

      IntParamSpec::validateValue(v192, v9, 0, 0, v193, v194, v195, v196);
      if (*(this + 9))
      {
        v23 = "UttDetSpeechOffsetMin";
        goto LABEL_219;
      }

      *(this + 79) = v9;
      return;
    case 67:
      v36 = ParamSpecMgr::getParamByParamId(qword_281051F78, 67, a3, a4, a5, a6, a7, a8);
      if (v36)
      {
        v41 = **v36;
      }

      IntParamSpec::validateValue(v36, v9, 0, 0, v37, v38, v39, v40);
      if (*(this + 9))
      {
        v23 = "UttDetSpeechOffsetRange";
        goto LABEL_219;
      }

      *(this + 80) = v9;
      return;
    case 68:
      v90 = ParamSpecMgr::getParamByParamId(qword_281051F78, 68, a3, a4, a5, a6, a7, a8);
      if (v90)
      {
        v95 = **v90;
      }

      IntParamSpec::validateValue(v90, v9, 0, 0, v91, v92, v93, v94);
      if (*(this + 9))
      {
        v23 = "UttDetSpeechThreshOffsetPercent";
        goto LABEL_219;
      }

      *(this + 81) = v9;
      return;
    case 69:
      v300 = ParamSpecMgr::getParamByParamId(qword_281051F78, 69, a3, a4, a5, a6, a7, a8);
      if (v300)
      {
        v305 = **v300;
      }

      IntParamSpec::validateValue(v300, v9, 0, 0, v301, v302, v303, v304);
      if (*(this + 9))
      {
        v23 = "UttDetSpeechUttSecondsMin";
        goto LABEL_219;
      }

      *(this + 82) = v9;
      break;
    case 70:
      v72 = ParamSpecMgr::getParamByParamId(qword_281051F78, 70, a3, a4, a5, a6, a7, a8);
      if (v72)
      {
        v77 = **v72;
      }

      IntParamSpec::validateValue(v72, v9, 0, 0, v73, v74, v75, v76);
      if (*(this + 9))
      {
        v23 = "UttDetSpeechUttSecondsRange";
LABEL_219:

        throwParamSetSetFailed(v23, "int", v17, v18, v19, v20, v21, v22);
      }

      else
      {
        *(this + 83) = v9;
      }

      break;
    default:

      throwWrongParamIdValue(a2, "int", a3, a4, a5, a6, a7, a8);
      return;
  }
}

void ChannelParamSet::setDoubleParameter(ChannelParamSet *this, int a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_5;
    case 4:
LABEL_5:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
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
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_10;
    case 9:
LABEL_10:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
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
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_14;
    case 13:
LABEL_14:
      throwWrongTypeForParamId(v9, "enum", "double", a5, a6, a7, a8, a9);
      goto LABEL_15;
    case 14:
LABEL_15:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_16;
    case 15:
LABEL_16:
      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051F78, 15, a4, a5, a6, a7, a8, a9);
      if (ParamByParamId)
      {
        v18 = **ParamByParamId;
      }

      DoubleParamSpec::validateValue(ParamByParamId, a3, 0, 0, v13, v14, v15, v16, v17);
      if (*(this + 9))
      {
        v25 = "ChannelAdaptationMeansRelevanceScale";
        goto LABEL_90;
      }

      *(this + 11) = a3;
      return;
    case 16:
      throwWrongTypeForParamId(16, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_72;
    case 17:
LABEL_72:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_73;
    case 18:
LABEL_73:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_74;
    case 19:
LABEL_74:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_75;
    case 20:
LABEL_75:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_76;
    case 21:
LABEL_76:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_77;
    case 22:
LABEL_77:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_78;
    case 23:
LABEL_78:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_79;
    case 24:
LABEL_79:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_80;
    case 25:
LABEL_80:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_81;
    case 26:
LABEL_81:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_82;
    case 27:
LABEL_82:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_83;
    case 28:
LABEL_83:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_84;
    case 29:
LABEL_84:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_85;
    case 30:
LABEL_85:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_86;
    case 31:
LABEL_86:
      v40 = ParamSpecMgr::getParamByParamId(qword_281051F78, 31, a4, a5, a6, a7, a8, a9);
      if (v40)
      {
        v46 = **v40;
      }

      DoubleParamSpec::validateValue(v40, a3, 0, 0, v41, v42, v43, v44, v45);
      if (*(this + 9))
      {
        v25 = "ChannelSpectralSubtractionDecayRate";
        goto LABEL_90;
      }

      *(this + 20) = a3;
      return;
    case 32:
      throwWrongTypeForParamId(32, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_64;
    case 33:
LABEL_64:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_65;
    case 34:
LABEL_65:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_66;
    case 35:
LABEL_66:
      v33 = ParamSpecMgr::getParamByParamId(qword_281051F78, 35, a4, a5, a6, a7, a8, a9);
      if (v33)
      {
        v39 = **v33;
      }

      DoubleParamSpec::validateValue(v33, a3, 0, 0, v34, v35, v36, v37, v38);
      if (*(this + 9))
      {
        v25 = "ChannelSpectralSubtractionMaxNoiseScaleChange";
        goto LABEL_90;
      }

      *(this + 23) = a3;
      break;
    case 36:
      throwWrongTypeForParamId(36, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_22;
    case 37:
LABEL_22:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_23;
    case 38:
LABEL_23:
      v26 = ParamSpecMgr::getParamByParamId(qword_281051F78, 38, a4, a5, a6, a7, a8, a9);
      if (v26)
      {
        v32 = **v26;
      }

      DoubleParamSpec::validateValue(v26, a3, 0, 0, v27, v28, v29, v30, v31);
      if (*(this + 9))
      {
        v25 = "ChannelSpectralSubtractionTargetSNR";
LABEL_90:

        throwParamSetSetFailed(v25, "double", v19, v20, v21, v22, v23, v24);
      }

      else
      {
        *(this + 25) = a3;
      }

      break;
    case 39:
      throwWrongTypeForParamId(39, "enum", "double", a5, a6, a7, a8, a9);
      goto LABEL_29;
    case 40:
LABEL_29:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_30;
    case 41:
LABEL_30:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_31;
    case 42:
LABEL_31:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_32;
    case 43:
LABEL_32:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_33;
    case 44:
LABEL_33:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_34;
    case 45:
LABEL_34:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_35;
    case 46:
LABEL_35:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_36;
    case 47:
LABEL_36:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_37;
    case 48:
LABEL_37:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_38;
    case 49:
LABEL_38:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_39;
    case 50:
LABEL_39:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_40;
    case 51:
LABEL_40:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_41;
    case 52:
LABEL_41:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_42;
    case 53:
LABEL_42:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_43;
    case 54:
LABEL_43:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_44;
    case 55:
LABEL_44:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_45;
    case 56:
LABEL_45:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_46;
    case 57:
LABEL_46:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_47;
    case 58:
LABEL_47:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_48;
    case 59:
LABEL_48:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_49;
    case 60:
LABEL_49:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_50;
    case 61:
LABEL_50:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_51;
    case 62:
LABEL_51:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_52;
    case 63:
LABEL_52:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_53;
    case 64:
LABEL_53:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_54;
    case 65:
LABEL_54:
      throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
      goto LABEL_55;
    case 66:
LABEL_55:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_56;
    case 67:
LABEL_56:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_57;
    case 68:
LABEL_57:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_58;
    case 69:
LABEL_58:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_59;
    case 70:
LABEL_59:
      throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
      goto LABEL_60;
    default:
LABEL_60:

      throwWrongParamIdValue(v9, "double", a4, a5, a6, a7, a8, a9);
      return;
  }
}

void ChannelParamSet::setStringParameter(ChannelParamSet *this, int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_5;
    case 4:
LABEL_5:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
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
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_10;
    case 9:
LABEL_10:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
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
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_14;
    case 13:
LABEL_14:
      throwWrongTypeForParamId(v8, "enum", "string", a4, a5, a6, a7, a8);
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
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_22;
    case 21:
LABEL_22:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_23;
    case 22:
LABEL_23:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_24;
    case 23:
LABEL_24:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_25;
    case 24:
LABEL_25:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_26;
    case 25:
LABEL_26:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_27;
    case 26:
LABEL_27:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_28;
    case 27:
LABEL_28:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_29;
    case 28:
LABEL_29:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_30;
    case 29:
LABEL_30:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_31;
    case 30:
LABEL_31:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_32;
    case 31:
LABEL_32:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_33;
    case 32:
LABEL_33:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_34;
    case 33:
LABEL_34:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_35;
    case 34:
LABEL_35:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_36;
    case 35:
LABEL_36:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_37;
    case 36:
LABEL_37:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_38;
    case 37:
LABEL_38:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_39;
    case 38:
LABEL_39:
      throwWrongTypeForParamId(v8, "double", "string", a4, a5, a6, a7, a8);
      goto LABEL_40;
    case 39:
LABEL_40:
      throwWrongTypeForParamId(v8, "enum", "string", a4, a5, a6, a7, a8);
      goto LABEL_41;
    case 40:
LABEL_41:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_42;
    case 41:
LABEL_42:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_43;
    case 42:
LABEL_43:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_44;
    case 43:
LABEL_44:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_45;
    case 44:
LABEL_45:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_46;
    case 45:
LABEL_46:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_47;
    case 46:
LABEL_47:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_48;
    case 47:
LABEL_48:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_49;
    case 48:
LABEL_49:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_50;
    case 49:
LABEL_50:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_51;
    case 50:
LABEL_51:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_52;
    case 51:
LABEL_52:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_53;
    case 52:
LABEL_53:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_54;
    case 53:
LABEL_54:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_55;
    case 54:
LABEL_55:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_56;
    case 55:
LABEL_56:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_57;
    case 56:
LABEL_57:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_58;
    case 57:
LABEL_58:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_59;
    case 58:
LABEL_59:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_60;
    case 59:
LABEL_60:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_61;
    case 60:
LABEL_61:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_62;
    case 61:
LABEL_62:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_63;
    case 62:
LABEL_63:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_64;
    case 63:
LABEL_64:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_65;
    case 64:
LABEL_65:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_66;
    case 65:
LABEL_66:
      throwWrongTypeForParamId(v8, "BOOL", "string", a4, a5, a6, a7, a8);
      goto LABEL_67;
    case 66:
LABEL_67:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_68;
    case 67:
LABEL_68:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_69;
    case 68:
LABEL_69:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_70;
    case 69:
LABEL_70:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      goto LABEL_71;
    case 70:
LABEL_71:
      throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
      break;
    default:
      break;
  }

  throwWrongParamIdValue(v8, "string", a3, a4, a5, a6, a7, a8);
}

void ChannelParamSet::setEnumParameter(ChannelParamSet *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_5;
    case 4:
LABEL_5:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
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
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_10;
    case 9:
LABEL_10:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
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
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_14;
    case 13:
LABEL_14:
      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051F78, 13, a3, a4, a5, a6, a7, a8);
      if (ParamByParamId)
      {
        v18 = **ParamByParamId;
      }

      EnumParamSpec::validateValue(ParamByParamId, v9, v12, v13, v14, v15, v16, v17);
      if (*(this + 9))
      {
        v25 = "ChannelAdaptationMeansReestimationType";
        goto LABEL_82;
      }

      *(this + 19) = v9;
      break;
    case 14:
      throwWrongTypeForParamId(14, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_54;
    case 15:
LABEL_54:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_55;
    case 16:
LABEL_55:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_56;
    case 17:
LABEL_56:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_57;
    case 18:
LABEL_57:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_58;
    case 19:
LABEL_58:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_59;
    case 20:
LABEL_59:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_60;
    case 21:
LABEL_60:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_61;
    case 22:
LABEL_61:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_62;
    case 23:
LABEL_62:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_63;
    case 24:
LABEL_63:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_64;
    case 25:
LABEL_64:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_65;
    case 26:
LABEL_65:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_66;
    case 27:
LABEL_66:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_67;
    case 28:
LABEL_67:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_68;
    case 29:
LABEL_68:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_69;
    case 30:
LABEL_69:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_70;
    case 31:
LABEL_70:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_71;
    case 32:
LABEL_71:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_72;
    case 33:
LABEL_72:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_73;
    case 34:
LABEL_73:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_74;
    case 35:
LABEL_74:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_75;
    case 36:
LABEL_75:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_76;
    case 37:
LABEL_76:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_77;
    case 38:
LABEL_77:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_78;
    case 39:
LABEL_78:
      v26 = ParamSpecMgr::getParamByParamId(qword_281051F78, 39, a3, a4, a5, a6, a7, a8);
      if (v26)
      {
        v33 = **v26;
      }

      EnumParamSpec::validateValue(v26, v9, v27, v28, v29, v30, v31, v32);
      if (*(this + 9))
      {
        v25 = "ChannelThreadingType";
LABEL_82:

        throwParamSetSetFailed(v25, "enum", v19, v20, v21, v22, v23, v24);
      }

      else
      {
        *(this + 52) = v9;
      }

      break;
    case 40:
      throwWrongTypeForParamId(40, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_20;
    case 41:
LABEL_20:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_21;
    case 42:
LABEL_21:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_22;
    case 43:
LABEL_22:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_23;
    case 44:
LABEL_23:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_24;
    case 45:
LABEL_24:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_25;
    case 46:
LABEL_25:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_26;
    case 47:
LABEL_26:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_27;
    case 48:
LABEL_27:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_28;
    case 49:
LABEL_28:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_29;
    case 50:
LABEL_29:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_30;
    case 51:
LABEL_30:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_31;
    case 52:
LABEL_31:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_32;
    case 53:
LABEL_32:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_33;
    case 54:
LABEL_33:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_34;
    case 55:
LABEL_34:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_35;
    case 56:
LABEL_35:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_36;
    case 57:
LABEL_36:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_37;
    case 58:
LABEL_37:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_38;
    case 59:
LABEL_38:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_39;
    case 60:
LABEL_39:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_40;
    case 61:
LABEL_40:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_41;
    case 62:
LABEL_41:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_42;
    case 63:
LABEL_42:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_43;
    case 64:
LABEL_43:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_44;
    case 65:
LABEL_44:
      throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_45;
    case 66:
LABEL_45:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_46;
    case 67:
LABEL_46:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_47;
    case 68:
LABEL_47:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_48;
    case 69:
LABEL_48:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_49;
    case 70:
LABEL_49:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_50;
    default:
LABEL_50:

      throwWrongParamIdValue(v8, "enum", a3, a4, a5, a6, a7, a8);
      return;
  }
}

void ChannelParamSet::~ChannelParamSet(ChannelParamSet *this)
{
  *this = &unk_287528C00;
  DgnString::~DgnString((this + 8));
}

{
  *this = &unk_287528C00;
  DgnString::~DgnString((this + 8));

  JUMPOUT(0x26672B1B0);
}

void MrecInitModule_dtxtfile_dfutil(void)
{
  if (!gParDebugDgnTextFileParser)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugDgnTextFileParser", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugDgnTextFileParser = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugDgnTextFileParser);
  }
}

uint64_t DgnTextFile::atoui(DgnTextFile *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v10 = MEMORY[0x277D85DE0];
  if (*a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v11 = *a2;
    do
    {
      if ((*(MEMORY[0x277D85DE0] + 4 * v11 + 60) & 0x4000) == 0)
      {
        break;
      }

      v12 = *++v8;
      v11 = v12;
    }

    while (v12 > 0);
    v13 = v11 == 43;
  }

  v14 = v8[v13];
  if (!v14)
  {
    return 0;
  }

  v15 = 0;
  v16 = &v8[v13 + 1];
  do
  {
    if ((v14 & 0x80) != 0)
    {
      goto LABEL_25;
    }

    v17 = *(v10 + 4 * v14 + 60);
    if ((v17 & 0x4000) != 0)
    {
      return v15;
    }

    if ((v17 & 0x400) == 0)
    {
LABEL_25:
      if (*(this + 10))
      {
        v18 = *(this + 4);
      }

      v24 = *(this + 25);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 273, "dfutil/dtxtfile", 15, "%02x %c %.500s %u", a7, a8, v14);
      v14 = *(v16 - 1);
    }

    v19 = v14 - 48;
    if ((~(v14 - 48) | 0xFFFFFF01) / 0xA < v15)
    {
      if (*(this + 10))
      {
        v20 = *(this + 4);
      }

      v23 = *(this + 25);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 279, "dfutil/dtxtfile", 16, "%.500s %.500s %u", a7, a8, v8);
    }

    v15 = (v19 + 10 * v15);
    v21 = *v16++;
    v14 = v21;
  }

  while (v21);
  return v15;
}

unint64_t DgnTextFile::atou64(DgnTextFile *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v10 = MEMORY[0x277D85DE0];
  if (*a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v11 = *a2;
    do
    {
      if ((*(MEMORY[0x277D85DE0] + 4 * v11 + 60) & 0x4000) == 0)
      {
        break;
      }

      v12 = *++v8;
      v11 = v12;
    }

    while (v12 > 0);
    v13 = v11 == 43;
  }

  v14 = v8[v13];
  if (!v14)
  {
    return 0;
  }

  v15 = 0;
  v16 = &v8[v13 + 1];
  do
  {
    if ((v14 & 0x80) != 0)
    {
      goto LABEL_25;
    }

    v17 = *(v10 + 4 * v14 + 60);
    if ((v17 & 0x4000) != 0)
    {
      return v15;
    }

    if ((v17 & 0x400) == 0)
    {
LABEL_25:
      if (*(this + 10))
      {
        v18 = *(this + 4);
      }

      v24 = *(this + 25);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 304, "dfutil/dtxtfile", 15, "%02x %c %.500s %u", a7, a8, v14);
      v14 = *(v16 - 1);
    }

    v19 = v14 - 48;
    if (v15 > (~(v14 - 48) | 0xFFFFFF01) / 0xAuLL)
    {
      if (*(this + 10))
      {
        v20 = *(this + 4);
      }

      v23 = *(this + 25);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 310, "dfutil/dtxtfile", 16, "%.500s %.500s %u", a7, a8, v8);
    }

    v15 = 10 * v15 + v19;
    v21 = *v16++;
    v14 = v21;
  }

  while (v21);
  return v15;
}

uint64_t DgnTextFile::atosi(DgnTextFile *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v10 = *a2;
  v11 = MEMORY[0x277D85DE0];
  if (v10 >= 1)
  {
    do
    {
      if ((*(MEMORY[0x277D85DE0] + 4 * v10 + 60) & 0x4000) == 0)
      {
        break;
      }

      v12 = *++v8;
      LOBYTE(v10) = v12;
    }

    while (v12 > 0);
  }

  if (v10 == 45 || v10 == 43)
  {
    v13 = v10 == 45;
    v14 = v8 + 1;
    LOBYTE(v10) = v8[1];
  }

  else
  {
    v13 = 0;
    v14 = v8;
  }

  if (!v10)
  {
    return 0;
  }

  v15 = 0;
  v16 = (v14 + 1);
  do
  {
    if ((v10 & 0x80) != 0)
    {
      goto LABEL_33;
    }

    v17 = *(v11 + 4 * v10 + 60);
    if ((v17 & 0x4000) != 0)
    {
      return v15;
    }

    if ((v17 & 0x400) == 0)
    {
LABEL_33:
      if (*(this + 10))
      {
        v18 = *(this + 4);
      }

      v26 = *(this + 25);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 337, "dfutil/dtxtfile", 15, "%02x %c %.500s %u", a7, a8, v10);
      LOBYTE(v10) = *(v16 - 1);
    }

    v19 = v10 - 48;
    if (v13)
    {
      if ((v10 + 2147483600) / 10 > v15)
      {
        if (*(this + 10))
        {
          v20 = *(this + 4);
        }

        v24 = *(this + 25);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 345, "dfutil/dtxtfile", 16, "%.500s %.500s %u", a7, a8, v8);
      }

      v15 = (10 * v15 - v19);
    }

    else
    {
      if (((-2147483601 - v10) / 0xA) < v15)
      {
        if (*(this + 10))
        {
          v21 = *(this + 4);
        }

        v25 = *(this + 25);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 354, "dfutil/dtxtfile", 16, "%.500s %.500s %u", a7, a8, v8);
      }

      v15 = (v19 + 10 * v15);
    }

    v22 = *v16++;
    LOBYTE(v10) = v22;
  }

  while (v22);
  return v15;
}

void DgnTextFile::DgnTextFile(DgnTextFile *this)
{
  *this = &unk_2875290F0;
  v2 = (this + 32);
  DgnString::DgnString((this + 16));
  DgnString::DgnString(v2);
  DgnString::DgnString((this + 48));
  DgnString::DgnString((this + 80));
  *(this + 1) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 12) = 0;
  *(this + 104) = 0;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 208) = 0;
}

void sub_2625D874C(_Unwind_Exception *a1)
{
  DgnString::~DgnString((v1 + 48));
  DgnString::~DgnString(v2);
  DgnString::~DgnString((v1 + 16));
  _Unwind_Resume(a1);
}

void DgnTextFile::~DgnTextFile(DgnTextFile *this)
{
  *this = &unk_2875290F0;
  DgnTextFile::closeDgnTextFile(this);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnArray<DgnString>::releaseAll(this + 176);
  DgnArray<DgnString>::releaseAll(this + 160);
  DgnArray<DgnString>::releaseAll(this + 144);
  DgnArray<DgnString>::releaseAll(this + 128);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 112);
  DgnString::~DgnString((this + 80));
  DgnString::~DgnString((this + 48));
  DgnString::~DgnString((this + 32));
  DgnString::~DgnString((this + 16));
}

{
  DgnTextFile::~DgnTextFile(this);

  JUMPOUT(0x26672B1B0);
}

void DgnTextFile::closeDgnTextFile(DgnTextFile *this)
{
  DgnDelete<DgnStream>(*(this + 1));
  *(this + 1) = 0;
  *(this + 6) = 0;
  *(this + 10) = 0;
  *(this + 14) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 22) = 0;
  *(this + 30) = 0;
  *(this + 12) = 0;
  *(this + 104) = 0;
  v2 = *(this + 34);
  if (v2 >= 1)
  {
    v3 = 16 * v2 - 16;
    do
    {
      DgnString::~DgnString((*(this + 16) + v3));
      v3 -= 16;
    }

    while (v3 != -16);
  }

  *(this + 34) = 0;
  v4 = *(this + 38);
  if (v4 >= 1)
  {
    v5 = 16 * v4 - 16;
    do
    {
      DgnString::~DgnString((*(this + 18) + v5));
      v5 -= 16;
    }

    while (v5 != -16);
  }

  *(this + 38) = 0;
  v6 = *(this + 42);
  if (v6 >= 1)
  {
    v7 = 16 * v6 - 16;
    do
    {
      DgnString::~DgnString((*(this + 20) + v7));
      v7 -= 16;
    }

    while (v7 != -16);
  }

  *(this + 42) = 0;
  v8 = *(this + 46);
  if (v8 >= 1)
  {
    v9 = 16 * v8 - 16;
    do
    {
      DgnString::~DgnString((*(this + 22) + v9));
      v9 -= 16;
    }

    while (v9 != -16);
  }

  *(this + 46) = 0;
  *(this + 50) = 0;
  *(this + 208) = 0;
}

void DgnTextFile::legalDgnTextFileVersions(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *a2;
  if (*a2 == -1)
  {
    if (*(a1 + 104) == 1 && *(a1 + 24))
    {
      v12 = *(a1 + 16);
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 416, "dfutil/dtxtfile", 38, "%.500s %u %.500s", a7, a8, "major");
    v11 = *a2;
  }

  if (v11 != 1 && v11 <= 0x12)
  {
    if (*(a1 + 104) == 1 && *(a1 + 24))
    {
      v14 = *(a1 + 16);
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 420, "dfutil/dtxtfile", 38, "%.500s %u %.500s", a7, a8, "major");
  }

  if (a2[1] == -1)
  {
    if (*(a1 + 104) == 1 && *(a1 + 24))
    {
      v15 = *(a1 + 16);
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 423, "dfutil/dtxtfile", 38, "%.500s %u %.500s", a7, a8, "minor");
  }

  if (*a2 == 1 && a2[1])
  {
    if (*(a1 + 104) == 1 && *(a1 + 24))
    {
      v16 = *(a1 + 16);
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 427, "dfutil/dtxtfile", 38, "%.500s %u %.500s", a7, a8, "minor");
  }

  *(a3 + 8) = 0;
  if (*(a3 + 12))
  {
    v17 = 0;
  }

  else
  {
    DgnPrimArray<unsigned long long>::reallocElts(a3, 1, 1);
    v17 = *(a3 + 8);
  }

  v18 = 0;
  *(*a3 + 8 * v17) = *a2;
  ++*(a3 + 8);
  while (1)
  {
    v19 = &a2[2 * (v18 + 1)];
    v20 = *v19;
    if (*v19 != 1)
    {
      break;
    }

    if (*(a1 + 104) == 1 && *(a1 + 24))
    {
      v21 = *(a1 + 16);
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 435, "dfutil/dtxtfile", 38, "%.500s %u %.500s", a7, a8, "major");
    v20 = *v19;
LABEL_36:
    v22 = &a2[2 * v18];
    if (v20 < *v22)
    {
      if (*(a1 + 104) == 1 && *(a1 + 24))
      {
        v23 = *(a1 + 16);
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 438, "dfutil/dtxtfile", 38, "%.500s %u %.500s", a7, a8, "major");
    }

    v24 = v19[1];
    if (v24 != -1)
    {
      if (v24)
      {
        goto LABEL_52;
      }

LABEL_48:
      if (*(a1 + 104) == 1 && *(a1 + 24))
      {
        v26 = *(a1 + 16);
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 445, "dfutil/dtxtfile", 38, "%.500s %u %.500s", a7, a8, "minor");
      goto LABEL_52;
    }

    if (*(a1 + 104) == 1 && *(a1 + 24))
    {
      v25 = *(a1 + 16);
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 442, "dfutil/dtxtfile", 38, "%.500s %u %.500s", a7, a8, "minor");
    if (!v19[1])
    {
      goto LABEL_48;
    }

LABEL_52:
    v27 = *v22;
    if (*v22 == 1)
    {
      v27 = v19[1];
      if (v27 != 1)
      {
        if (*(a1 + 104) == 1 && *(a1 + 24))
        {
          v28 = *(a1 + 16);
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 449, "dfutil/dtxtfile", 38, "%.500s %u %.500s", a7, a8, "minor");
        v27 = *v22;
      }
    }

    if (*v19 == v27 && v19[1] != v22[1] + 1)
    {
      if (*(a1 + 104) == 1 && *(a1 + 24))
      {
        v29 = *(a1 + 16);
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 453, "dfutil/dtxtfile", 38, "%.500s %u %.500s", a7, a8, "minor");
    }

    v30 = *(a3 + 8);
    if (v30 == *(a3 + 12))
    {
      DgnPrimArray<unsigned long long>::reallocElts(a3, 1, 1);
      v30 = *(a3 + 8);
    }

    *(*a3 + 8 * v30) = *v19;
    ++*(a3 + 8);
    ++v18;
  }

  if (v20 != -1)
  {
    goto LABEL_36;
  }
}

uint64_t DgnTextFile::getFileVersion(DgnTextFile *this)
{
  if (*(this + 104))
  {
    return *(this + 68);
  }

  else
  {
    return -1;
  }
}

BOOL DgnTextFile::getHeaderField(DgnTextFile *this, const char *a2, DgnString *a3, int a4)
{
  v6 = a2;
  DgnString::DgnString(v16, a2);
  v8 = DgnArray<DgnString>::find(this + 40, v16);
  v11 = v8;
  if (v8 == -1)
  {
    if (a4)
    {
      if (*(this + 6))
      {
        v13 = *(this + 2);
      }

      if (*(this + 10))
      {
        v14 = *(this + 4);
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 478, "dfutil/dtxtfile", 29, "%.500s %.500s %.500s", v9, v10, v6);
    }

    if (a3)
    {
      *(a3 + 2) = 0;
    }
  }

  else
  {
    if (a3)
    {
      DgnString::operator=(a3, (*(this + 22) + 16 * v8));
    }

    v12 = *(this + 24);
    if ((*(v12 + v11) & 1) == 0)
    {
      *(v12 + v11) = 1;
    }
  }

  DgnString::~DgnString(v16);
  return v11 != -1;
}

void sub_2625D8FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

BOOL DgnTextFile::getHeaderFieldUnsigned(DgnTextFile *this, const char *a2, unsigned int *a3, int a4, unsigned int a5, unsigned int a6)
{
  DgnString::DgnString(&v27);
  HeaderField = DgnTextFile::getHeaderField(this, a2, &v27, a4);
  if (HeaderField)
  {
    if (v28)
    {
      v19 = v27;
    }

    else
    {
      v19 = &byte_262899963;
    }

    v20 = DgnTextFile::atoui(this, v19, v12, v13, v14, v15, v16, v17);
    *a3 = v20;
    if (v20 < a5 || v20 > a6)
    {
      if (*(this + 6))
      {
        v24 = *(this + 2);
      }

      if (*(this + 10))
      {
        v25 = *(this + 4);
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 525, "dfutil/dtxtfile", 32, "%.500s %.500s %.500s %u %u %u", v21, v22, a2);
    }
  }

  else
  {
    *a3 = 0;
  }

  DgnString::~DgnString(&v27);
  return HeaderField;
}

void sub_2625D90D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t DgnTextFile::checkAgainstFormat(DgnTextFile *a1, const char *a2)
{
  if ((a2 - 1) >= 3)
  {
    return a2 == 0;
  }

  v2 = *a1;
  v3 = *a1 == 0;
  if (*a1 >= 1)
  {
    v4 = 1;
    v5 = *a1;
    while ((*(MEMORY[0x277D85DE0] + 4 * v5 + 60) & 0x4000) == 0)
    {
      v5 = *(a1 + v4);
      v3 = *(a1 + v4) == 0;
      if (v4 == -1)
      {
        v3 = 1;
      }

      if ((*(a1 + v4) & 0x80000000) == 0)
      {
        ++v4;
        if (!v3)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    return 0;
  }

LABEL_9:
  if (!v3)
  {
    return 0;
  }

  if (a2 != 1)
  {
    if (a2 != 3)
    {
      if (a2 == 2)
      {
        return DgnTextFile::checkReal(a1, a2);
      }

      return 0;
    }

    if (*a1)
    {
      v7 = a1 + 1;
      do
      {
        v8 = v2 - 48;
        result = v8 < 0xA;
        if (v8 >= 0xA)
        {
          break;
        }

        v9 = *v7++;
        v2 = v9;
      }

      while (v9);
      return result;
    }

    return 0;
  }

  if (!*a1)
  {
    return 0;
  }

  if (v2 == 45 || v2 == 43)
  {
    v10 = *(a1 + 1);
    a1 = (a1 + 1);
    v2 = v10;
  }

  if (!v2)
  {
    return 0;
  }

  v11 = a1 + 1;
  do
  {
    v12 = v2 - 48;
    result = v12 < 0xA;
    if (v12 >= 0xA)
    {
      break;
    }

    v13 = *v11++;
    v2 = v13;
  }

  while (v13);
  return result;
}

BOOL DgnTextFile::getHeaderFieldUnsigned64(DgnTextFile *this, const char *a2, unint64_t *a3, int a4, unint64_t a5, unint64_t a6)
{
  DgnString::DgnString(&v27);
  HeaderField = DgnTextFile::getHeaderField(this, a2, &v27, a4);
  if (HeaderField)
  {
    if (v28)
    {
      v19 = v27;
    }

    else
    {
      v19 = &byte_262899963;
    }

    v20 = DgnTextFile::atou64(this, v19, v12, v13, v14, v15, v16, v17);
    *a3 = v20;
    if (v20 < a5 || v20 > a6)
    {
      if (*(this + 6))
      {
        v24 = *(this + 2);
      }

      if (*(this + 10))
      {
        v25 = *(this + 4);
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 549, "dfutil/dtxtfile", 36, "%.500s %.500s %.500s %llu %llu %llu", v21, v22, a2);
    }
  }

  else
  {
    *a3 = 0;
  }

  DgnString::~DgnString(&v27);
  return HeaderField;
}

void sub_2625D92F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

BOOL DgnTextFile::getHeaderFieldBool(DgnTextFile *this, const char *a2, BOOL *a3, int a4)
{
  v7 = 0;
  result = DgnTextFile::getHeaderFieldUnsigned(this, a2, &v7, a4, 0, 1u);
  v6 = v7 == 1 && result;
  *a3 = v6;
  return result;
}

BOOL DgnTextFile::getHeaderFieldInteger(DgnTextFile *this, const char *a2, int *a3, int a4, int a5, int a6)
{
  DgnString::DgnString(&v27);
  HeaderField = DgnTextFile::getHeaderField(this, a2, &v27, a4);
  if (HeaderField)
  {
    if (v28)
    {
      v19 = v27;
    }

    else
    {
      v19 = &byte_262899963;
    }

    v20 = DgnTextFile::atosi(this, v19, v12, v13, v14, v15, v16, v17);
    *a3 = v20;
    if (v20 < a5 || v20 > a6)
    {
      if (*(this + 6))
      {
        v24 = *(this + 2);
      }

      if (*(this + 10))
      {
        v25 = *(this + 4);
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 590, "dfutil/dtxtfile", 33, "%.500s %.500s %.500s %d %d %d", v21, v22, a2);
    }
  }

  else
  {
    *a3 = 0;
  }

  DgnString::~DgnString(&v27);
  return HeaderField;
}

void sub_2625D946C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

BOOL DgnTextFile::getHeaderFieldReal(DgnTextFile *this, const char *a2, double *a3, int a4, double a5, double a6)
{
  DgnString::DgnString(&v22);
  HeaderField = DgnTextFile::getHeaderField(this, a2, &v22, a4);
  if (HeaderField)
  {
    if (v23)
    {
      v13 = v22;
    }

    else
    {
      v13 = &byte_262899963;
    }

    v14 = atof(v13);
    v17 = eround(v14, 14);
    *a3 = v17;
    if (v17 < a5 || v17 > a6)
    {
      if (*(this + 6))
      {
        v19 = *(this + 2);
      }

      if (*(this + 10))
      {
        v20 = *(this + 4);
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 615, "dfutil/dtxtfile", 34, "%.500s %.500s %.500s %g %g %g", v15, v16, a2);
    }
  }

  else
  {
    *a3 = 0.0;
  }

  DgnString::~DgnString(&v22);
  return HeaderField;
}

void sub_2625D95A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

DgnString *DgnTextFile::convertToDTFFormat(DgnTextFile *this, const DgnString *a2, DgnString *a3)
{
  if (*(this + 2) > 1u)
  {
    *(a2 + 2) = 0;
    v6 = *(this + 2);
    v7 = v6 != 0;
    v8 = v6 - 1;
    if (!v7)
    {
      v8 = 0;
    }

    if (v8 > 0x60)
    {
      v9 = 3 * v8 + 1;
    }

    else
    {
      v9 = 289;
    }

    result = DgnString::preAllocate(a2, v9);
    if (*(this + 2) >= 2u)
    {
      v10 = 0;
      v11 = MEMORY[0x277D85DE0];
      do
      {
        v12 = *(*this + v10);
        if ((*(*this + v10) & 0x80000000) == 0 && (*(v11 + 4 * *(*this + v10) + 60) & 0x40000) != 0 && (v12 != 94 ? (v13 = (*(v11 + 4 * *(*this + v10) + 60) & 0x4000) == 0) : (v13 = 0), v13))
        {
          result = DgnString::appendCharWithGrow(a2, v12);
        }

        else
        {
          snprintf(__str, 6uLL, "^%02x", *(*this + v10));
          result = DgnString::operator+=(a2, __str);
        }

        ++v10;
        v14 = *(this + 2);
        v7 = v14 != 0;
        LODWORD(v15) = v14 - 1;
        if (v7)
        {
          v15 = v15;
        }

        else
        {
          v15 = 0;
        }
      }

      while (v10 < v15);
    }
  }

  else
  {

    return DgnString::operator=(a2, "^");
  }

  return result;
}

uint64_t DgnTextFile::convertFromDTFFormat(DgnTextFile *this, const DgnString *a2, DgnString *a3, const char *a4)
{
  v4 = a2;
  *(a2 + 2) = 0;
  v6 = *(this + 2);
  v7 = *this;
  if (v6)
  {
    v8 = *this;
  }

  else
  {
    v8 = &byte_262899963;
  }

  result = strcmp(v8, "^");
  if (result)
  {
    v10 = v6 ? v6 - 1 : 0;
    result = DgnString::preAllocate(v4, v10);
    v13 = *(this + 2);
    if (v13 >= 2)
    {
      v14 = 0;
      v15 = v13 - 1;
      v16 = 1;
      v17 = MEMORY[0x277D85DE0];
      v32 = v4;
      while (1)
      {
        v18 = *(*this + v14);
        if (v18 == 94)
        {
          break;
        }

        if ((v18 & 0x80) != 0 || (*(v17 + 4 * *(*this + v14) + 60) & 0x44000) != 0x40000)
        {
          if (v16)
          {
            v31 = *this;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 700, "dfutil/dtxtfile", 19, "%02x %u %.500s %.500s %u", v11, v12, v18);
        }

        result = DgnString::appendCharWithGrow(v4, v18);
LABEL_39:
        ++v14;
        v16 = *(this + 2);
        v15 = v16 - 1;
        if (!v16)
        {
          v15 = 0;
        }

        if (v14 >= v15)
        {
          return result;
        }
      }

      if (v14 + 2 >= v15)
      {
        v19 = v16 == 0;
        v20 = &byte_262899963;
        if (!v19)
        {
          v20 = *this;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 707, "dfutil/dtxtfile", 35, "%.500s %u %.500s %u", v11, v12, v20);
      }

      v21 = 0;
      v22 = 1;
      while (1)
      {
        v23 = v22;
        v24 = *(*this + ++v14);
        v25 = *(*this + v14);
        v26 = 16 * v21;
        if (v24 < 0 || (v27 = *(v17 + 4 * v24 + 60), (v27 & 0x10000) == 0))
        {
          if (*(this + 2))
          {
            v28 = *this;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 715, "dfutil/dtxtfile", 20, "%c %u %.500s %.500s %u", v11, v12, v25);
          if ((v24 & 0x80000000) != 0)
          {
            goto LABEL_25;
          }

          v27 = *(v17 + 4 * v25 + 60);
        }

        if ((v27 & 0x400) != 0)
        {
          v29 = v25 - 48;
          goto LABEL_27;
        }

        if ((v27 & 0x1000) != 0)
        {
          v25 = __toupper(v25);
        }

LABEL_25:
        v29 = v25 - 55;
LABEL_27:
        v22 = 0;
        v21 = v29 + v26;
        if ((v23 & 1) == 0)
        {
          if (!v21)
          {
            v30 = &byte_262899963;
            if (*(this + 2))
            {
              v30 = *this;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 736, "dfutil/dtxtfile", 21, "%.500s %.500s %u", v11, v12, v30);
          }

          v4 = v32;
          result = DgnString::operator+=(v32, v21);
          goto LABEL_39;
        }
      }
    }
  }

  return result;
}

uint64_t DgnTextFile::convertToEnvValueFormat(uint64_t a1, DgnString *this)
{
  *(this + 2) = 0;
  v4 = *(a1 + 8);
  if (v4 > 0x60)
  {
    v5 = 3 * v4 + 1;
  }

  else
  {
    v5 = 289;
  }

  result = DgnString::preAllocate(this, v5);
  if (*(a1 + 8))
  {
    v7 = 0;
    v8 = MEMORY[0x277D85DE0];
    do
    {
      v9 = *(*a1 + v7);
      if (*(*a1 + v7) < 0 || (*(v8 + 4 * *(*a1 + v7) + 60) & 0x40000) == 0 || (v9 != 94 ? (v10 = (*(v8 + 4 * *(*a1 + v7) + 60) & 0x4000) == 0) : (v10 = 0), v10 ? (v11 = v9 == 0) : (v11 = 1), v11 || v9 == 96))
      {
        result = DgnString::operator+=(this, __str);
      }

      else
      {
        result = DgnString::appendCharWithGrow(this, v9);
      }

      ++v7;
    }

    while (v7 < *(a1 + 8));
  }

  return result;
}

uint64_t DgnTextFile::convertFromEnvValueFormat(uint64_t a1, uint64_t **a2)
{
  v2 = a2;
  if (*a2)
  {
    MemChunkFree(*a2, 0);
    *v2 = 0;
  }

  *(v2 + 2) = 0;
  v30 = 0;
  v31 = 0;
  v4 = *(a1 + 8);
  if (v4 < 2 || (v32 = 0, HIDWORD(v31) = realloc_array(0, &v32, v4 - 1, 0, 0, 1), v30 = v32, v7 = *(a1 + 8), v8 = v7 - 1, v7 <= 1))
  {
    v9 = v31;
    goto LABEL_40;
  }

  v29 = v2;
  v10 = 0;
  v11 = MEMORY[0x277D85DE0];
  v12 = 1;
  do
  {
    v13 = *(*a1 + v10);
    if (v13 == 96)
    {
      if (v10 + 2 >= v8)
      {
        v14 = v12 == 0;
        v15 = &byte_262899963;
        if (!v14)
        {
          v15 = *a1;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 799, "dfutil/dtxtfile", 35, "%.500s %u %.500s %u", v5, v6, v15);
      }

      v16 = 0;
      v17 = 1;
      while (1)
      {
        v18 = v17;
        v19 = *(*a1 + ++v10);
        v20 = *(*a1 + v10);
        if ((v19 & 0x8000000000000000) == 0 && (v21 = *(v11 + 4 * v19 + 60), (v21 & 0x10000) != 0))
        {
          v23 = 16 * v16;
          if ((v21 & 0x400) != 0)
          {
LABEL_23:
            v24 = v20 - 48;
            goto LABEL_24;
          }
        }

        else
        {
          if (*(a1 + 8))
          {
            v22 = *a1;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 807, "dfutil/dtxtfile", 20, "%c %u %.500s %.500s %u", v5, v6, v20);
          v23 = 16 * v16;
          if ((v19 & 0x80000000) != 0)
          {
            goto LABEL_21;
          }

          v21 = *(v11 + 4 * v20 + 60);
          if ((v21 & 0x400) != 0)
          {
            goto LABEL_23;
          }
        }

        if ((v21 & 0x1000) != 0)
        {
          v20 = __toupper(v20);
        }

LABEL_21:
        v24 = v20 - 55;
LABEL_24:
        v17 = 0;
        v16 = v24 + v23;
        if ((v18 & 1) == 0)
        {
          v25 = v31;
          if (v31 == HIDWORD(v31))
          {
            goto LABEL_33;
          }

          goto LABEL_34;
        }
      }
    }

    LOBYTE(v16) = *(*a1 + v10);
    if (v13 < 0 || (*(v11 + 4 * v13 + 60) & 0x44000) != 0x40000)
    {
      if (v12)
      {
        v26 = *a1;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 792, "dfutil/dtxtfile", 19, "%02x %u %.500s %.500s %u", v5, v6, v13);
    }

    v25 = v31;
    if (v31 == HIDWORD(v31))
    {
LABEL_33:
      DgnPrimArray<char>::reallocElts(&v30, 1, 1);
      v25 = v31;
    }

LABEL_34:
    v30[v25] = v16;
    v9 = v31 + 1;
    LODWORD(v31) = v31 + 1;
    ++v10;
    v12 = *(a1 + 8);
    v8 = v12 - 1;
    if (!v12)
    {
      v8 = 0;
    }
  }

  while (v10 < v8);
  v2 = v29;
  if (v9 && !*(v29 + 2))
  {
    *v29 = MemChunkAlloc(v9, 0);
    *(v29 + 2) = v9;
    v9 = v31;
  }

LABEL_40:
  if (v9)
  {
    v27 = 0;
    do
    {
      *(*v2 + v27) = v30[v27];
      ++v27;
    }

    while (v27 < v31);
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v30);
}

void sub_2625D9E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t DgnTextFile::checkSafe(DgnTextFile *this, const char *a2)
{
  for (i = this; ; i = (i + 1))
  {
    v3 = *i;
    if (v3 < 1)
    {
      break;
    }

    if ((*(MEMORY[0x277D85DE0] + 4 * v3 + 60) & 0x40000) == 0)
    {
      return 0;
    }
  }

  if (!*i)
  {
    while (1)
    {
      v6 = *this;
      if (v6 != 32 && v6 != 94)
      {
        if (!*this)
        {
          return 1;
        }

        this = (this + 1);
      }

      v4 = 0;
      if (v6 == 94 || v6 == 32)
      {
        return v4;
      }
    }
  }

  return 0;
}

uint64_t DgnTextFile::checkReal(DgnTextFile *this, const char *a2)
{
  v2 = *this;
  if (*this)
  {
    v3 = 0;
    v4 = 0;
    for (i = 1; ; i = 0)
    {
      if (v2 == 43 || v2 == 45)
      {
        v6 = *(this + 1);
        this = (this + 1);
        v2 = v6;
        if (!v6)
        {
LABEL_16:
          v4 = 0;
          goto LABEL_17;
        }
      }

      else if (!v2)
      {
        return v4 & 1;
      }

      v7 = 0;
      v4 = 0;
      this = (this + 1);
      do
      {
        if ((v2 - 58) > 0xFFFFFFF5)
        {
          v4 = 1;
        }

        else
        {
          if ((v2 & 0xDF) == 0x45)
          {
            goto LABEL_16;
          }

          if ((v3 | v7) & 1 | (v2 != 46))
          {
            goto LABEL_19;
          }

          v7 = 1;
        }

        v8 = *this;
        this = (this + 1);
        v2 = v8;
      }

      while (v8);
      this = (this - 1);
LABEL_17:
      if ((i & 1) == 0)
      {
        return v4 & 1;
      }

      v2 = *this;
      v3 = 1;
    }
  }

LABEL_19:
  v4 = 0;
  return v4 & 1;
}

void DgnTextFileParser::DgnTextFileParser(DgnTextFileParser *this)
{
  DgnTextFile::DgnTextFile(this);
  *v1 = &unk_287527248;
  DgnString::DgnString((v1 + 27));
}

void DgnTextFileParser::~DgnTextFileParser(DgnTextFileParser *this)
{
  *this = &unk_287527248;
  DgnString::~DgnString((this + 216));

  DgnTextFile::~DgnTextFile(this);
}

{
  *this = &unk_287527248;
  DgnString::~DgnString((this + 216));
  DgnTextFile::~DgnTextFile(this);

  JUMPOUT(0x26672B1B0);
}

void DgnTextFileParser::verifyMatchingFileType(DgnTextFileParser *this, const char *a2)
{
  DgnString::DgnString(&v8);
  if (*(this + 104) == 1)
  {
    DgnString::operator=(&v8, (this + 16));
    if (v9)
    {
      v6 = v8;
    }

    else
    {
      v6 = &byte_262899963;
    }

    if (!strcmp(v6, a2))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = 0;
  }

  if (*(this + 10))
  {
    v7 = *(this + 4);
  }

  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1073, "dfutil/dtxtfile", 27, "%.500s %.500s", v4, v5, a2);
LABEL_11:
  DgnString::~DgnString(&v8);
}

void sub_2625DA138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void DgnTextFileParser::verifyFileVersionInRange(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2[2];
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = (*a2 + 4);
  v10 = 1;
  v11 = a2[2];
  v12 = 1;
  do
  {
    if (*(v9 - 1) == *(a1 + 68) && *v9 == *(a1 + 72))
    {
      break;
    }

    v12 = v10++ < v8;
    v9 += 2;
    --v11;
  }

  while (v11);
  if (!v12)
  {
LABEL_15:
    if (*(a1 + 24))
    {
      v13 = *(a1 + 16);
    }

    else
    {
      v13 = &byte_262899963;
    }

    if (*(a1 + 40))
    {
      v14 = *(a1 + 32);
    }

    v15 = *(a1 + 68);
    v16 = *(a1 + 72);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1082, "dfutil/dtxtfile", 28, "%.500s %.500s %u %u", a7, a8, v13);
  }
}

void DgnTextFileParser::verifyMatchingNumFieldSpecs(DgnTextFileParser *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 34) != a2)
  {
    if (*(this + 6))
    {
      v8 = *(this + 2);
    }

    else
    {
      v8 = &byte_262899963;
    }

    if (*(this + 10))
    {
      v9 = *(this + 4);
    }

    v10 = *(this + 34);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1091, "dfutil/dtxtfile", 30, "%.500s %.500s %d %d", a7, a8, v8);
  }
}

void DgnTextFileParser::verifyNoBodyLines(DgnTextFileParser *this)
{
  if (DgnTextFileParser::parseNextLine(this))
  {
    if (*(this + 6))
    {
      v4 = *(this + 2);
    }

    else
    {
      v4 = &byte_262899963;
    }

    if (*(this + 10))
    {
      v5 = *(this + 4);
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1098, "dfutil/dtxtfile", 31, "%.500s %.500s", v2, v3, v4);
  }
}

uint64_t DgnTextFileParser::parseNextLine(DgnTextFileParser *this)
{
  v2 = *(this + 30);
  v3 = *(this + 39);
  if (v2 > v3)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 144, v2 - v3, 0);
  }

  v4 = *(this + 38);
  v5 = v4;
  if (v2 >= v4)
  {
    if (v2 > v4)
    {
      v7 = v2 - v4;
      v8 = 16 * v4;
      do
      {
        DgnString::DgnString((*(this + 18) + v8));
        v8 += 16;
        --v7;
      }

      while (v7);
    }
  }

  else if (v4 > v2)
  {
    v6 = 16 * v4 - 16;
    do
    {
      --v5;
      DgnString::~DgnString((*(this + 18) + v6));
      v6 -= 16;
    }

    while (v5 > v2);
  }

  *(this + 38) = v2;
  Line = DgnTextFileParser::getLine(this);
  v10 = Line;
  if (Line)
  {
    if (*(this + 22))
    {
      v11 = *(this + 10);
    }

    else
    {
      v11 = &byte_262899963;
    }

    v44 = Line;
    DgnString::preAllocate(this + 216, 256);
    if (v2)
    {
      v16 = 0;
      v17 = MEMORY[0x277D85DE0];
      v18 = v11;
      while (1)
      {
        v19 = *(*(this + 14) + 4 * v16);
        if ((v19 - 1) < 3)
        {
          break;
        }

        if (!v19)
        {
          v23 = *v18;
          if (*v18 < 1)
          {
LABEL_32:
            if (v23)
            {
              goto LABEL_42;
            }

            if (*(this + 10))
            {
              v25 = *(this + 4);
            }

            v41 = *(this + 25);
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1596, "dfutil/dtxtfile", 17, "%d %.500s %.500s %u", v14, v15, v16);
            v23 = *v18;
            v26 = v18;
            if (*v18)
            {
              goto LABEL_42;
            }
          }

          else
          {
            while ((*(v17 + 4 * v23 + 60) & 0x4000) != 0)
            {
              v24 = *++v18;
              v23 = v24;
              if (v24 <= 0)
              {
                goto LABEL_32;
              }
            }

LABEL_42:
            v26 = v18;
            do
            {
              if ((v23 & 0x80) == 0 && (*(v17 + 4 * v23 + 60) & 0x4000) != 0)
              {
                break;
              }

              v28 = *++v18;
              v23 = v28;
            }

            while (v28);
          }

          goto LABEL_46;
        }

LABEL_47:
        DgnString::preAllocate(*(this + 18) + 16 * v16, 256);
        if (*(this + 10))
        {
          v29 = *(this + 4);
        }

        else
        {
          v29 = &byte_262899963;
        }

        DgnTextFile::convertFromDTFFormat((this + 216), (*(this + 18) + 16 * v16), v29, *(this + 25));
        v30 = *(this + 18) + 16 * v16;
        if (*(v30 + 8))
        {
          v31 = *v30;
        }

        else
        {
          v31 = &byte_262899963;
        }

        if ((DgnTextFile::checkAgainstFormat(v31, v19) & 1) == 0)
        {
          if (*(this + 10))
          {
            v32 = *(this + 4);
          }

          v42 = *(this + 25);
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1629, "dfutil/dtxtfile", 17, "%d %.500s %.500s %u", v14, v15, v16);
        }

        if (++v16 == v2)
        {
          goto LABEL_60;
        }
      }

      v20 = *v18;
      if (*v18 < 1)
      {
LABEL_25:
        if (!v20)
        {
          if (*(this + 10))
          {
            v22 = *(this + 4);
          }

          v40 = *(this + 25);
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1578, "dfutil/dtxtfile", 17, "%d %.500s %.500s %u", v14, v15, v16);
          v20 = *v18;
          v26 = v18;
          if (!*v18)
          {
            goto LABEL_46;
          }
        }
      }

      else
      {
        while ((*(v17 + 4 * v20 + 60) & 0x4000) != 0)
        {
          v21 = *++v18;
          v20 = v21;
          if (v21 <= 0)
          {
            goto LABEL_25;
          }
        }
      }

      v26 = v18;
      do
      {
        if ((v20 & 0x80) == 0 && (*(v17 + 4 * v20 + 60) & 0x4000) != 0)
        {
          break;
        }

        v27 = *++v18;
        v20 = v27;
      }

      while (v27);
LABEL_46:
      DgnString::set(this + 54, v26, v18 - v26);
      goto LABEL_47;
    }

    v18 = v11;
LABEL_60:
    if (*v18 < 1)
    {
      v10 = v44;
    }

    else
    {
      v33 = *v18;
      v10 = v44;
      do
      {
        if ((*(MEMORY[0x277D85DE0] + 4 * v33 + 60) & 0x4000) == 0)
        {
          break;
        }

        v34 = *++v18;
        v33 = v34;
      }

      while (v34 > 0);
    }

    if (strlen(v18))
    {
      if (*(this + 22))
      {
        v37 = *(this + 10);
      }

      else
      {
        v37 = &byte_262899963;
      }

      if (*(this + 10))
      {
        v38 = *(this + 4);
      }

      v43 = *(this + 25);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1648, "dfutil/dtxtfile", 18, "%.500s %d %.500s %.500s %u", v35, v36, v37);
    }
  }

  else
  {
    v12 = *(this + 38);
    if (v12 >= 1)
    {
      v13 = 16 * v12 - 16;
      do
      {
        DgnString::~DgnString((*(this + 18) + v13));
        v13 -= 16;
      }

      while (v13 != -16);
    }

    *(this + 38) = 0;
  }

  return v10;
}

void DgnTextFileParser::verifyNoUnknownHeaderFields(DgnTextFileParser *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 50);
  if (v8)
  {
    v10 = 0;
    for (i = 0; i < v8; ++i)
    {
      if ((*(*(this + 24) + i) & 1) == 0)
      {
        v12 = *(this + 20) + v10;
        if (*(v12 + 8))
        {
          v13 = *v12;
        }

        else
        {
          v13 = &byte_262899963;
        }

        if (*(this + 6))
        {
          v14 = *(this + 2);
        }

        if (*(this + 10))
        {
          v15 = *(this + 4);
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1108, "dfutil/dtxtfile", 37, "%.500s %.500s %.500s", a7, a8, v13);
        v8 = *(this + 50);
      }

      v10 += 16;
    }
  }
}

void DgnTextFileParser::openDgnTextFileParser(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  SubFileExtensionString = GetSubFileExtensionString(a3);
  DgnString::DgnString(v15);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFile::makeSubFileName(CurrentSubDirComponents, SubFileExtensionString, v15);
  DgnString::preAllocate(a1 + 32, 192);
  DgnString::operator=((a1 + 32), v15);
  DgnString::operator+=((a1 + 32), " subfile of ");
  DgnString::preAllocate(a1 + 48, 192);
  DgnString::operator=((a1 + 48), (a1 + 32));
  if (*(a2 + 24))
  {
    v10 = *(a2 + 16);
  }

  else
  {
    v10 = &byte_262899963;
  }

  DgnString::operator+=((a1 + 32), v10);
  DgnString::DgnString(v14);
  FileSpec::getDiagnosticMaskedName((a2 + 16), v14, v11);
  DgnString::operator+=((a1 + 48), v14);
  if (a4)
  {
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  v13 = DFile::openSubFile(a2, a3, v12, 1);
  DgnTextFileParser::openDgnTextFileParser(a1, v13);
  DgnString::~DgnString(v14);
  DgnString::~DgnString(v15);
}

void sub_2625DA984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void DgnTextFileParser::openDgnTextFileParser(DgnTextFileParser *this, DgnStream *a2)
{
  *(this + 1) = a2;
  *(this + 25) = 0;
  DgnString::DgnString(&v67);
  DgnString::DgnString(&v65);
  if (!DgnTextFileParser::getNextHeaderField(this, &v67, &v65, 1) || ((v5 = v68, v6 = v67, v68) ? (v7 = v67) : (v7 = &byte_262899963), strncmp(v7, "DGNTEXTFILE_VERSION", 0x13uLL)))
  {
    if (*(this + 22))
    {
      v8 = *(this + 10);
    }

    else
    {
      v8 = &byte_262899963;
    }

    if (*(this + 10))
    {
      v9 = *(this + 4);
    }

    v53 = *(this + 25);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1169, "dfutil/dtxtfile", 1, "%.500s %.500s %u", v3, v4, v8);
    v5 = v68;
    v6 = v67;
  }

  if (v5)
  {
    v10 = v6;
  }

  else
  {
    v10 = &byte_262899963;
  }

  if (strcmp(v10, "DGNTEXTFILE_VERSION"))
  {
    if (*(this + 22))
    {
      v13 = *(this + 10);
    }

    else
    {
      v13 = &byte_262899963;
    }

    if (*(this + 10))
    {
      v14 = *(this + 4);
    }

    v54 = *(this + 25);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1173, "dfutil/dtxtfile", 2, "%.500s %.500s %u", v11, v12, v13);
  }

  if (v66)
  {
    v15 = v65;
  }

  else
  {
    v15 = &byte_262899963;
  }

  v64 = 0;
  v63 = 0;
  if (sscanf(v15, "%d%c", &v64, &v63) != 1 || (v18 = v64, v64 < 0))
  {
    if (*(this + 10))
    {
      v19 = *(this + 4);
    }

    v55 = *(this + 25);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1181, "dfutil/dtxtfile", 12, "%.500s %.500s %u", v16, v17, v15);
    v18 = v64;
  }

  if (v18 != 5)
  {
    if (*(this + 10))
    {
      v20 = *(this + 4);
    }

    v56 = *(this + 25);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1184, "dfutil/dtxtfile", 12, "%.500s %.500s %u", v16, v17, v15);
    v18 = v64;
  }

  v21 = 0;
  *(this + 16) = v18;
  do
  {
    DgnTextFileParser::getNextHeaderField(this, &v67, &v65, 0);
    if (v68)
    {
      v22 = v67;
    }

    else
    {
      v22 = &byte_262899963;
    }

    if (v21 == 2)
    {
      if (strcmp(v22, "DGNTEXTFILE_FILEVERSION_MINOR"))
      {
        if (*(this + 22))
        {
          v33 = *(this + 10);
        }

        else
        {
          v33 = &byte_262899963;
        }

        if (*(this + 10))
        {
          v44 = *(this + 4);
        }

        v59 = *(this + 25);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1240, "dfutil/dtxtfile", 3, "%.500s %.500s %u", v31, v32, v33);
      }

      if (v66)
      {
        v45 = v65;
      }

      else
      {
        v45 = &byte_262899963;
      }

      v64 = 0;
      v63 = 0;
      if (sscanf(v45, "%d%c", &v64, &v63) != 1 || (v48 = v64, v64 < 0))
      {
        if (*(this + 6))
        {
          v49 = *(this + 2);
        }

        else
        {
          v49 = &byte_262899963;
        }

        if (*(this + 10))
        {
          v52 = *(this + 4);
        }

        v62 = *(this + 25);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1250, "dfutil/dtxtfile", 13, "%.500s %.500s %.500s %u", v46, v47, v49);
        v48 = v64;
      }

      *(this + 18) = v48;
    }

    else if (v21 == 1)
    {
      if (strcmp(v22, "DGNTEXTFILE_FILEVERSION_MAJOR"))
      {
        if (*(this + 22))
        {
          v30 = *(this + 10);
        }

        else
        {
          v30 = &byte_262899963;
        }

        if (*(this + 10))
        {
          v38 = *(this + 4);
        }

        v58 = *(this + 25);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1218, "dfutil/dtxtfile", 3, "%.500s %.500s %u", v28, v29, v30);
      }

      if (v66)
      {
        v39 = v65;
      }

      else
      {
        v39 = &byte_262899963;
      }

      v64 = 0;
      v63 = 0;
      if (sscanf(v39, "%d%c", &v64, &v63) != 1 || (v42 = v64, v64 < 0))
      {
        if (*(this + 6))
        {
          v43 = *(this + 2);
        }

        else
        {
          v43 = &byte_262899963;
        }

        if (*(this + 10))
        {
          v51 = *(this + 4);
        }

        v61 = *(this + 25);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1228, "dfutil/dtxtfile", 13, "%.500s %.500s %.500s %u", v40, v41, v43);
        v42 = v64;
      }

      *(this + 17) = v42;
    }

    else if (v21)
    {
      if (strcmp(v22, "DGNTEXTFILE_FIELDS"))
      {
        if (*(this + 22))
        {
          v36 = *(this + 10);
        }

        else
        {
          v36 = &byte_262899963;
        }

        if (*(this + 10))
        {
          v50 = *(this + 4);
        }

        v60 = *(this + 25);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1262, "dfutil/dtxtfile", 14, "%.500s %.500s %u", v34, v35, v36);
      }

      DgnTextFileParser::scanValueForLineFieldFormats(this, &v65);
    }

    else
    {
      v26 = !strcmp(v22, "DGNTEXTFILE_TYPE") && v66 >= 2;
      if (!v26 || (DgnTextFile::checkSafe(v65, v23) & 1) == 0)
      {
        if (*(this + 22))
        {
          v27 = *(this + 10);
        }

        else
        {
          v27 = &byte_262899963;
        }

        if (*(this + 10))
        {
          v37 = *(this + 4);
        }

        v57 = *(this + 25);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1205, "dfutil/dtxtfile", 1, "%.500s %.500s %u", v24, v25, v27);
      }

      DgnString::operator=((this + 16), &v65);
    }

    ++v21;
  }

  while (v21 != 4);
  *(this + 208) = 1;
  *(this + 104) = 1;
  DgnTextFileParser::readHeader(this);
  DgnString::~DgnString(&v65);
  DgnString::~DgnString(&v67);
}

void sub_2625DAFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  _Unwind_Resume(a1);
}

void DgnTextFileParser::openDgnTextFileParser(DgnTextFileParser *this, char **a2)
{
  DgnString::preAllocate(this + 32, 96);
  if (*(a2 + 2))
  {
    v4 = *a2;
  }

  else
  {
    v4 = &byte_262899963;
  }

  DgnString::operator=((this + 32), v4);
  DgnString::preAllocate(this + 48, 96);
  FileSpec::getDiagnosticMaskedName(a2, (this + 48), v5);
  v6 = MemChunkAlloc(0x68uLL, 0);
  DgnFileStream::DgnFileStream(v6, 0, 1, a2);

  DgnTextFileParser::openDgnTextFileParser(this, v6);
}

uint64_t DgnTextFileParser::getNextHeaderField(DgnTextFileParser *this, const char **a2, DgnString *a3, int a4)
{
  if (*(this + 24))
  {
    return 0;
  }

  DgnTextFileParser::getLine(this);
  v11 = *(this + 22);
  if (v11)
  {
    v12 = *(this + 10);
  }

  else
  {
    v12 = &byte_262899963;
  }

  v13 = *v12;
  v14 = MEMORY[0x277D85DE0];
  if (a4)
  {
    if (!*v12)
    {
      return 0;
    }

    if ((v13 & 0x80) != 0)
    {
      goto LABEL_20;
    }

    if ((*(MEMORY[0x277D85DE0] + 4 * v13 + 60) & 0x4000) != 0)
    {
      return 0;
    }
  }

  else
  {
    if (!*v12)
    {
      goto LABEL_14;
    }

    if ((v13 & 0x80) != 0)
    {
LABEL_20:
      v17 = v12;
      do
      {
        if ((v13 & 0x80) == 0 && (*(v14 + 4 * v13 + 60) & 0x4000) != 0)
        {
          break;
        }

        v18 = *++v17;
        LODWORD(v13) = v18;
      }

      while (v18);
      goto LABEL_24;
    }
  }

  if ((*(MEMORY[0x277D85DE0] + 4 * v13 + 60) & 0x4000) == 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  if (v11)
  {
    v15 = *(this + 10);
  }

  else
  {
    v15 = &byte_262899963;
  }

  if (*(this + 10))
  {
    v16 = *(this + 4);
  }

  v31 = *(this + 25);
  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1303, "dfutil/dtxtfile", 4, "%.500s %.500s %u", v9, v10, v15);
  LODWORD(v13) = *v12;
  v17 = v12;
  if (*v12)
  {
    goto LABEL_20;
  }

LABEL_24:
  DgnString::set(a2, v12, v17 - v12);
  v19 = *v17;
  if (*v17 < 1)
  {
LABEL_27:
    if (!v19)
    {
      *(a3 + 2) = 0;
      goto LABEL_34;
    }
  }

  else
  {
    while ((*(v14 + 4 * v19 + 60) & 0x4000) != 0)
    {
      v20 = *++v17;
      v19 = v20;
      if (v20 <= 0)
      {
        goto LABEL_27;
      }
    }
  }

  v21 = strlen(v17);
  v22 = &v17[v21 - 1];
  do
  {
    v23 = v21;
    if (v22 <= v17)
    {
      break;
    }

    v24 = *v22;
    if (v24 < 0)
    {
      break;
    }

    --v21;
    --v22;
  }

  while ((*(v14 + 4 * v24 + 60) & 0x4000) != 0);
  DgnString::set(a3, v17, v23);
LABEL_34:
  if (*(a2 + 2))
  {
    v25 = *a2;
  }

  else
  {
    v25 = &byte_262899963;
  }

  if (strcmp(v25, "DGNTEXTFILE_ENDHEAD"))
  {
    return 1;
  }

  if (*(a3 + 2))
  {
    v28 = *a3;
  }

  else
  {
    v28 = &byte_262899963;
  }

  if (*v28)
  {
    if (*(this + 22))
    {
      v29 = *(this + 10);
    }

    else
    {
      v29 = &byte_262899963;
    }

    if (*(this + 10))
    {
      v30 = *(this + 4);
    }

    v32 = *(this + 25);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1345, "dfutil/dtxtfile", 5, "%.500s %.500s %u", v26, v27, v29);
  }

  result = 0;
  *(this + 24) = *(this + 25);
  return result;
}