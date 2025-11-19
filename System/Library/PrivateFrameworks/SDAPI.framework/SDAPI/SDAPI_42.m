uint64_t LookaheadScorerThread::stopScoring(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  DgnThreadClient::pause(a1, a2, a3, a4, a5, a6, a7, a8);
  SynchronizedArray<ScoreFixArray>::update(a2, *(*(a1 + 56) + 272));
  result = (*(**(*(a1 + 56) + 264) + 32))(*(*(a1 + 56) + 264));
  *(a1 + 1600) = result;
  *(a1 + 1596) = 0;
  return result;
}

void LookaheadScorerThread::printSize(LookaheadScorerThread *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 715, &v69);
  if (v70)
  {
    v16 = v69;
  }

  else
  {
    v16 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &byte_262899963, a3, &byte_262899963, v16);
  v65 = this;
  DgnString::~DgnString(&v69);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &byte_262899963);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v21 = 4;
  }

  else
  {
    v21 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 717, &v69);
  if (v70)
  {
    v26 = v69;
  }

  else
  {
    v26 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v22, v23, v24, v25, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v26, v21, v21, 0);
  DgnString::~DgnString(&v69);
  *a4 += v21;
  *a5 += v21;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v27 = 4;
  }

  else
  {
    v27 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 718, &v69);
  if (v70)
  {
    v32 = v69;
  }

  else
  {
    v32 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, v29, v30, v31, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v32, v27, v27, 0);
  DgnString::~DgnString(&v69);
  *a4 += v27;
  *a5 += v27;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 719, &v69);
  if (v70)
  {
    v37 = v69;
  }

  else
  {
    v37 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, v34, v35, v36, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v37, 4, 4, 0);
  DgnString::~DgnString(&v69);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 720, &v69);
  if (v70)
  {
    v42 = v69;
  }

  else
  {
    v42 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v38, v39, v40, v41, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v42, 1, 1, 0);
  DgnString::~DgnString(&v69);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 722, &v69);
  if (v70)
  {
    v47 = v69;
  }

  else
  {
    v47 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v43, v44, v45, v46, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v47, 4, 4, 0);
  DgnString::~DgnString(&v69);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 724, &v69);
  if (v70)
  {
    v52 = v69;
  }

  else
  {
    v52 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v48, v49, v50, v51, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v52, 4, 4, 0);
  DgnString::~DgnString(&v69);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v53 = 4;
  }

  else
  {
    v53 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 725, &v69);
  if (v70)
  {
    v58 = v69;
  }

  else
  {
    v58 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v54, v55, v56, v57, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v58, v53, v53, 0);
  DgnString::~DgnString(&v69);
  *a4 += v53;
  *a5 += v53;
  v67 = 0;
  v68 = 0;
  v66 = 0;
  DgnThreadClient::printSize(v65, a2, (a3 + 1), &v68, &v66, &v67);
  *a4 += v68;
  *a5 += v66;
  *a6 += v67;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 734, &v69);
  if (v70)
  {
    v63 = v69;
  }

  else
  {
    v63 = &byte_262899963;
  }

  v64 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v59, v60, v61, v62, a3, &byte_262899963, (35 - a3), (35 - a3), v63, *a4, *a5, *a6);
  DgnString::~DgnString(&v69);
}

void sub_2627BA8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void *ThreadedLookaheadScorer::ThreadedLookaheadScorer(void *a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  *a1 = &unk_287525178;
  v10 = MemChunkAlloc(0x650uLL, 0);
  v11 = DgnThread<LookaheadScorerThreadWorker>::DgnThread(v10, a2, 0, "LookaheadScorer");
  *v11 = &unk_287525730;
  *(v11 + 1576) = a3;
  *(v11 + 1584) = a4;
  *(v11 + 1592) = a5;
  *(v11 + 1596) = 0;
  *(v11 + 1600) = 0xFFFFFFF000000000;
  *(v11 + 1608) = 0;
  a1[1] = v11;
  DgnThreadClient::startup(v11);
  return a1;
}

void ThreadedLookaheadScorer::~ThreadedLookaheadScorer(DgnThreadClient **this)
{
  *this = &unk_287525178;
  if (DgnThreadClient::isLive(this[1]) && (DgnThreadClient::hasErrored(this[1]) & 1) == 0)
  {
    DgnThreadClient::shutdown(this[1], v2, v3, v4, v5, v6, v7, v8);
  }

  DgnDelete<FrameTransformerThread>(this[1]);
}

{
  ThreadedLookaheadScorer::~ThreadedLookaheadScorer(this);

  JUMPOUT(0x26672B1B0);
}

void ThreadedLookaheadScorer::printSize(ThreadedLookaheadScorer *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 769, &v32);
  if (v33)
  {
    v15 = v32;
  }

  else
  {
    v15 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, v12, v13, v14, a3, &byte_262899963, a3, &byte_262899963, v15);
  DgnString::~DgnString(&v32);
  if (a2 != -1)
  {
    xlprintf("%d ", v16, v17, v18, v19, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v16, v17, v18, v19, a3, &byte_262899963);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v20 = 4;
  }

  else
  {
    v20 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 771, &v32);
  if (v33)
  {
    v25 = v32;
  }

  else
  {
    v25 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, v22, v23, v24, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v25, v20, v20, 0);
  DgnString::~DgnString(&v32);
  *a4 += v20;
  *a5 += v20;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 774, &v32);
  if (v33)
  {
    v30 = v32;
  }

  else
  {
    v30 = &byte_262899963;
  }

  v31 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, v27, v28, v29, a3, &byte_262899963, (35 - a3), (35 - a3), v30, *a4, *a5, *a6);
  DgnString::~DgnString(&v32);
}

void sub_2627BAC48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t *ThreadedLookaheadScorer::reset(ThreadedLookaheadScorer *this)
{
  v1 = *(this + 1);
  result = LookaheadScorerThreadWorker::reset(*(v1 + 56));
  *(v1 + 1600) = 0;
  return result;
}

uint64_t ThreadedLookaheadScorer::scoreLookaheadUntil(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a4 + 16) <= a2 && (*a4 & 1) == 0)
  {
    v9 = *(result + 8);
    *(v9 + 1596) = 1;
    *(v9 + 1604) = a2;
    *(v9 + 1608) = a3;
    DgnThreadClient::playAllUntilWorkerPauses(v9, a2, a3, a4, a5, a6, a7, a8);
    *(v9 + 1608) = 0;
    *(v9 + 1604) = -16;

    return LookaheadScorerThread::stopScoring(v9, a4, v10, v11, v12, v13, v14, v15);
  }

  return result;
}

uint64_t ThreadedLookaheadScorer::maybeStartScoring(uint64_t a1, uint64_t a2)
{
  isScoring = LookaheadScorerThread::isScoring(*(a1 + 8));
  v12 = *(a1 + 8);
  if ((isScoring & 1) == 0 && (**(*(v12 + 56) + 272) & 1) == 0)
  {
    *(v12 + 1608) = a2;
    DgnThreadClient::play(v12, v5, v6, v7, v8, v9, v10, v11);
    *(v12 + 1596) = 1;
    *(v12 + 1608) = 0;
    v12 = *(a1 + 8);
  }

  return LookaheadScorerThread::isScoring(v12);
}

uint64_t LookaheadScorerThread::isScoring(LookaheadScorerThread *this)
{
  if (*(this + 1596) != 1)
  {
    return 0;
  }

  result = DgnThreadClient::isLive(this);
  if (result)
  {
    return DgnThreadClient::hasErrored(this) ^ 1;
  }

  return result;
}

uint64_t ThreadedLookaheadScorer::maybeStopScoring(uint64_t a1, int a2, unint64_t a3)
{
  result = LookaheadScorerThread::isScoring(*(a1 + 8));
  if (result)
  {
    if (!a2 || (result = DgnThreadClient::getThreadState(*(a1 + 8)), result == 4))
    {
      v13 = *(a1 + 8);

      return LookaheadScorerThread::stopScoring(v13, a3, v7, v8, v9, v10, v11, v12);
    }
  }

  return result;
}

void LookaheadScorerThread::~LookaheadScorerThread(LookaheadScorerThread *this)
{
  DgnThreadClient::~DgnThreadClient(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t *DgnThread<LookaheadScorerThreadWorker>::newWorker(uint64_t a1)
{
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v4, *(a1 + 16));
  v2 = MemChunkAlloc(0x130uLL, *(a1 + 16));
  DgnThreadWorker::DgnThreadWorker(v2, *(a1 + 12), a1, *(a1 + 16), *(a1 + 28));
  *v2 = &unk_287524800;
  *(v2 + 64) = -16;
  v2[37] = 0;
  *(v2 + 33) = 0u;
  *(v2 + 35) = 0u;
  Latch<MemChunkRegion,LatchAdapter>::~Latch(&v4);
  return v2;
}

void sub_2627BAF50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

uint64_t DgnThread<LookaheadScorerThreadWorker>::DgnThread(uint64_t a1, int a2, uint64_t a3, char *a4)
{
  v5 = DgnThreadClient::DgnThreadClient(a1, a2, a3, a4);
  *v5 = &unk_287523260;
  *(a1 + 56) = DgnThread<LookaheadScorerThreadWorker>::newWorker(v5);
  return a1;
}

void DgnThread<LookaheadScorerThreadWorker>::~DgnThread(DgnThreadClient *a1)
{
  DgnThreadClient::~DgnThreadClient(a1);

  JUMPOUT(0x26672B1B0);
}

uint64_t ListDFileSubFileStream::ListDFileSubFileStream(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, char *a6)
{
  v9 = DgnFileStream::DgnFileStream(a1, a2, a3, a4);
  *v9 = &unk_2875255B8;
  v10 = (v9 + 14);
  DgnString::DgnString((v9 + 14));
  *(a1 + 104) = a5;
  DgnString::operator=(v10, a6);
  return a1;
}

void sub_2627BB0D0(_Unwind_Exception *a1)
{
  DgnString::~DgnString(v2);
  DgnFileStream::~DgnFileStream(v1);
  _Unwind_Resume(a1);
}

void ListDFileSubFileStream::~ListDFileSubFileStream(ListDFileSubFileStream *this, uint64_t a2, const char *a3)
{
  *this = &unk_2875255B8;
  v4 = *(this + 13);
  if (v4)
  {
    if (*(this + 30))
    {
      v5 = *(this + 14);
    }

    else
    {
      v5 = &unk_26288D4C4;
    }

    DFile::reportProgress(v4, v5, a3);
    *(this + 13) = 0;
  }

  DgnString::~DgnString((this + 112));

  DgnFileStream::~DgnFileStream(this);
}

{
  ListDFileSubFileStream::~ListDFileSubFileStream(this, a2, a3);

  JUMPOUT(0x26672B1B0);
}

void ListDFileSubFileStream::printSize(ListDFileSubFileStream *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/listdf.cpp", 117, &v43);
  if (v44)
  {
    v16 = v43;
  }

  else
  {
    v16 = &unk_26288D4C4;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26288D4C4, a3, &unk_26288D4C4, v16);
  DgnString::~DgnString(&v43);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26288D4C4);
  v42 = 0;
  v43 = 0;
  v41 = 0;
  DgnFileStream::printSize(this, 0xFFFFFFFFLL, (a3 + 1), &v43, &v42, &v41);
  *a4 += v43;
  *a5 += v42;
  *a6 += v41;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v21 = 4;
  }

  else
  {
    v21 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/listdf.cpp", 120, &v43);
  if (v44)
  {
    v26 = v43;
  }

  else
  {
    v26 = &unk_26288D4C4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v22, v23, v24, v25, (a3 + 1), &unk_26288D4C4, (34 - a3), (34 - a3), v26, v21, v21, 0);
  DgnString::~DgnString(&v43);
  *a4 += v21;
  *a5 += v21;
  v27 = sizeObject(this + 112);
  v28 = sizeObject(this + 112);
  v29 = sizeObject(this + 112);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/listdf.cpp", 122, &v43);
  if (v44)
  {
    v34 = v43;
  }

  else
  {
    v34 = &unk_26288D4C4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, v31, v32, v33, (a3 + 1), &unk_26288D4C4, (34 - a3), (34 - a3), v34, v27, v28, v29);
  DgnString::~DgnString(&v43);
  *a4 += v27;
  *a5 += v28;
  *a6 += v29;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/listdf.cpp", 124, &v43);
  if (v44)
  {
    v39 = v43;
  }

  else
  {
    v39 = &unk_26288D4C4;
  }

  v40 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, v36, v37, v38, a3, &unk_26288D4C4, (35 - a3), (35 - a3), v39, *a4, *a5, *a6);
  DgnString::~DgnString(&v43);
}

void sub_2627BB468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void ListDFile::ListDFile(ListDFile *this, const FileSpec *a2)
{
  DFile::DFile(this, a2);
  *v2 = &unk_287522F88;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0;
}

uint64_t ListDFile::createReadOnlyClone(ListDFile *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 6))
  {
    v8 = *(this + 2);
  }

  else
  {
    v8 = &unk_26288D4C4;
  }

  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/listdf.cpp", 145, "dfutil/listdf", 10, "%.500s", a7, a8, v8);
  return 0;
}

void ListDFile::~ListDFile(ListDFile *this)
{
  *this = &unk_287522F88;
  DgnDelete<RealDFile>(*(this + 16));
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 136);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 112);
  DgnArray<DgnString>::releaseAll(this + 96);
  DgnArray<DgnString>::releaseAll(this + 80);

  DFile::~DFile(this);
}

{
  ListDFile::~ListDFile(this);

  JUMPOUT(0x26672B1B0);
}

void ListDFile::printSize(ListDFile *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/listdf.cpp", 162, &v78);
  if (v79)
  {
    v16 = v78;
  }

  else
  {
    v16 = &unk_26288D4C4;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26288D4C4, a3, &unk_26288D4C4, v16);
  DgnString::~DgnString(&v78);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26288D4C4);
  v77 = 0;
  v78 = 0;
  v21 = (a3 + 1);
  v76 = 0;
  DFile::printSize(this, 0xFFFFFFFFLL, v21, &v78, &v77, &v76);
  *a4 += v78;
  *a5 += v77;
  *a6 += v76;
  v22 = sizeObject<DgnString>(this + 80, 0);
  v23 = sizeObject<DgnString>(this + 80, 1);
  v24 = sizeObject<DgnString>(this + 80, 3);
  v75 = a3;
  v25 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/listdf.cpp", 166, &v78);
  if (v79)
  {
    v30 = v78;
  }

  else
  {
    v30 = &unk_26288D4C4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, v27, v28, v29, v21, &unk_26288D4C4, v25, v25, v30, v22, v23, v24);
  DgnString::~DgnString(&v78);
  *a4 += v22;
  *a5 += v23;
  *a6 += v24;
  v31 = sizeObject<DgnString>(this + 96, 0);
  v32 = sizeObject<DgnString>(this + 96, 1);
  v33 = sizeObject<DgnString>(this + 96, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/listdf.cpp", 168, &v78);
  if (v79)
  {
    v38 = v78;
  }

  else
  {
    v38 = &unk_26288D4C4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, v35, v36, v37, v21, &unk_26288D4C4, v25, v25, v38, v31, v32, v33);
  DgnString::~DgnString(&v78);
  *a4 += v31;
  *a5 += v32;
  *a6 += v33;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v39 = 12;
  }

  else
  {
    v39 = 16;
  }

  v40 = *(this + 30);
  v41 = *(this + 31);
  v42 = v41 >= v40;
  v43 = v41 - v40;
  if (v42)
  {
    if (v40 > 0)
    {
      v44 = (v40 - 1) + v39 + 1;
    }

    else
    {
      v44 = v39;
    }

    v39 = v44 + v43;
    v40 = 0;
  }

  else
  {
    v44 = v39;
  }

  v45 = v40;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/listdf.cpp", 170, &v78);
  if (v79)
  {
    v50 = v78;
  }

  else
  {
    v50 = &unk_26288D4C4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v46, v47, v48, v49, v21, &unk_26288D4C4, v25, v25, v50, v39, v44, v45);
  DgnString::~DgnString(&v78);
  *a4 += v39;
  *a5 += v44;
  *a6 += v45;
  v51 = *(this + 16);
  if (v51)
  {
    v77 = 0;
    v78 = 0;
    v76 = 0;
    (*(*v51 + 16))(v51, 0xFFFFFFFFLL, v21, &v78, &v77, &v76);
    *a4 += v78;
    *a5 += v77;
    *a6 += v76;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v52 = 4;
  }

  else
  {
    v52 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/listdf.cpp", 172, &v78);
  if (v79)
  {
    v57 = v78;
  }

  else
  {
    v57 = &unk_26288D4C4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, v54, v55, v56, v21, &unk_26288D4C4, v25, v25, v57, v52, v52, 0);
  DgnString::~DgnString(&v78);
  *a4 += v52;
  *a5 += v52;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v58 = 12;
  }

  else
  {
    v58 = 16;
  }

  v59 = *(this + 36);
  v60 = *(this + 37);
  v42 = v60 >= v59;
  v61 = v60 - v59;
  if (v42)
  {
    if (v59 > 0)
    {
      v62 = (v59 - 1) + v58 + 1;
    }

    else
    {
      v62 = v58;
    }

    v58 = v62 + v61;
    v59 = 0;
  }

  else
  {
    v62 = v58;
  }

  v63 = v59;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/listdf.cpp", 174, &v78);
  if (v79)
  {
    v68 = v78;
  }

  else
  {
    v68 = &unk_26288D4C4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v64, v65, v66, v67, v21, &unk_26288D4C4, v25, v25, v68, v58, v62, v63);
  DgnString::~DgnString(&v78);
  *a4 += v58;
  *a5 += v62;
  *a6 += v63;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/listdf.cpp", 176, &v78);
  if (v79)
  {
    v73 = v78;
  }

  else
  {
    v73 = &unk_26288D4C4;
  }

  v74 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v69, v70, v71, v72, v75, &unk_26288D4C4, (35 - v75), (35 - v75), v73, *a4, *a5, *a6);
  DgnString::~DgnString(&v78);
}

void sub_2627BBB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void ListDFile::startUp(ListDFile *this)
{
  DgnTextFileParser::DgnTextFileParser(v72);
  DgnTextFileParser::openDgnTextFileParser(v72, this + 2);
  DgnTextFileParser::verifyMatchingFileType(v72, "ListDFile");
  v70 = 0;
  v71 = 0;
  DgnTextFile::legalDgnTextFileVersions(v72, sListDFile_Versions, &v70, v2, v3, v4, v5, v6);
  DgnTextFileParser::verifyFileVersionInRange(v72, &v70, v7, v8, v9, v10, v11, v12);
  DgnTextFileParser::verifyNoUnknownHeaderFields(v72, v13, v14, v15, v16, v17, v18, v19);
  v68 = 0;
  v69 = 0;
  DgnTextFile::getLineFieldNames(v72, &v68);
  v66 = 0;
  v67 = 0;
  DgnTextFile::getLineFieldFormats(v72, &v66);
  DgnTextFileParser::verifyMatchingNumFieldSpecs(v72, 2, v20, v21, v22, v23, v24, v25);
  v26 = v68;
  if (*(v68 + 8))
  {
    v27 = *v68;
  }

  else
  {
    v27 = &unk_26288D4C4;
  }

  if (strcmp(v27, "InternalFileName"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/listdf.cpp", 210, "dfutil/listdf", 4, "%.500s %.500s", v28, v29, "InternalFileName");
    v26 = v68;
  }

  if (*v66)
  {
    if (*(v26 + 8))
    {
      v30 = *v26;
    }

    else
    {
      v30 = &unk_26288D4C4;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/listdf.cpp", 213, "dfutil/listdf", 9, "%.500s %.500s", v28, v29, v30);
    v26 = v68;
  }

  if (*(v26 + 24))
  {
    v31 = *(v26 + 16);
  }

  else
  {
    v31 = &unk_26288D4C4;
  }

  if (strcmp(v31, "ExternalFileName"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/listdf.cpp", 216, "dfutil/listdf", 4, "%.500s %.500s", v32, v33, "ExternalFileName");
  }

  if (v66[1])
  {
    if (*(v68 + 8))
    {
      v34 = *v68;
    }

    else
    {
      v34 = &unk_26288D4C4;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/listdf.cpp", 219, "dfutil/listdf", 9, "%.500s %.500s", v32, v33, v34);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v66);
  DgnArray<DgnString>::releaseAll(&v68);
  DgnIArray<Utterance *>::~DgnIArray(&v70);
  DgnString::DgnString(&v70);
  DgnString::DgnString(&v68);
  DgnString::preAllocate(&v68, 256);
  v66 = 0;
  v67 = 0;
  while (DgnTextFileParser::parseNextLine(v72))
  {
    LineFieldString = DgnTextFileParser::getLineFieldString(v72, 0);
    DgnString::operator=(&v70, LineFieldString);
    v36 = DgnTextFileParser::getLineFieldString(v72, 1u);
    DgnString::operator=(&v68, v36);
    if (DgnArray<DgnString>::find(this + 20, &v70) != -1)
    {
      CurrentLine = DgnTextFile::getCurrentLine(v72);
      if (*(CurrentLine + 8))
      {
        v40 = *CurrentLine;
      }

      else
      {
        v40 = &unk_26288D4C4;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/listdf.cpp", 234, "dfutil/listdf", 5, "%.500s", v38, v39, v40);
    }

    if (DgnString::find(&v70, 92) != -1)
    {
      if (v71)
      {
        LOBYTE(v43) = v70;
      }

      else
      {
        v43 = &unk_26288D4C4;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/listdf.cpp", 237, "dfutil/listdf", 7, "%.500s", v41, v42, v43);
    }

    v44 = v71;
    if (v71 <= 1)
    {
      if (v71)
      {
        LOBYTE(v45) = v70;
      }

      else
      {
        v45 = &unk_26288D4C4;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/listdf.cpp", 240, "dfutil/listdf", 7, "%.500s", v41, v42, v45);
      v44 = v71;
    }

    v46 = v70;
    if (!v44)
    {
      v46 = &unk_26288D4C4;
    }

    if (*v46 != 42 || v46[1] || (v69 ? (v52 = v68) : (v52 = &unk_26288D4C4), !*v52))
    {
      if (v44 < 2)
      {
        goto LABEL_78;
      }

      v47 = 0;
      v48 = 1;
      while (2)
      {
        v49 = v70;
        v50 = v70[v47];
        if (v47 && v50 == 46)
        {
          if (v70[v47 - 1] != 47)
          {
            if (!v48)
            {
              v49 = &unk_26288D4C4;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/listdf.cpp", 260, "dfutil/listdf", 7, "%.500s", v41, v42, v49);
            v49 = v70;
            v50 = v70[v47];
            goto LABEL_50;
          }
        }

        else
        {
LABEL_50:
          if (v50 != 46)
          {
            if (!v47 || v49[v47 - 1] == 47)
            {
              if (!v71)
              {
                v49 = &unk_26288D4C4;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/listdf.cpp", 265, "dfutil/listdf", 7, "%.500s", v41, v42, v49);
              v49 = v70;
              v50 = v70[v47];
            }

            if (v50 == 47 && (!v47 || v49[v47 - 1] == 47))
            {
              if (!v71)
              {
                v49 = &unk_26288D4C4;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/listdf.cpp", 270, "dfutil/listdf", 7, "%.500s", v41, v42, v49);
            }
          }
        }

        ++v47;
        v48 = v71;
        LODWORD(v51) = v71 - 1;
        if (v71)
        {
          v51 = v51;
        }

        else
        {
          v51 = 0;
        }

        if (v47 >= v51)
        {
          goto LABEL_78;
        }

        continue;
      }
    }

    DgnString::DgnString(&v64);
    FileSpec::getPathOnly((this + 16), &v64);
    FileSpec::FileSpec(v63);
    if (v65)
    {
      v53 = v64;
    }

    else
    {
      v53 = &unk_26288D4C4;
    }

    if (v69)
    {
      v54 = v68;
    }

    else
    {
      v54 = &unk_26288D4C4;
    }

    FileSpec::fillFromDefPathAndName(v63, v53, v54);
    v55 = MemChunkAlloc(0x1B8uLL, 0);
    v56 = RealDFile::RealDFile(v55, v63);
    *(this + 16) = v56;
    RealDFile::startUp(v56, 0, 1, 1, 0, 0);
    FileSpec::~FileSpec(v63);
    DgnString::~DgnString(&v64);
LABEL_78:
    v57 = *(this + 22);
    if (v57 == *(this + 23))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 80, 1, 1);
      v57 = *(this + 22);
    }

    DgnString::DgnString((*(this + 10) + 16 * v57), &v70);
    ++*(this + 22);
    v58 = *(this + 26);
    v59 = v58;
    if (v58 == *(this + 27))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 96, 1, 1);
      v59 = *(this + 26);
    }

    DgnString::DgnString((*(this + 12) + 16 * v59));
    ++*(this + 26);
    DgnString::preAllocate(*(this + 12) + 16 * v58, 96);
    DgnString::operator=((*(this + 12) + 16 * v58), &v68);
    v60 = *(this + 30);
    if (v60 == *(this + 31))
    {
      DgnPrimArray<char>::reallocElts(this + 112, 1, 1);
      v60 = *(this + 30);
    }

    *(*(this + 14) + v60) = 0;
    *(this + 30) = v60 + 1;
  }

  DgnArray<DgnString>::releaseAll(&v66);
  DgnString::~DgnString(&v68);
  DgnString::~DgnString(&v70);
  ListDFile::populateBackoffSubFileActiveArray(this, v61, v62);
  DgnTextFileParser::~DgnTextFileParser(v72);
}

void sub_2627BC1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va2, a10);
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  DgnTextFileParser::~DgnTextFileParser(va2);
  _Unwind_Resume(a1);
}

void *ListDFile::populateBackoffSubFileActiveArray(void *this, uint64_t a2, const char *a3)
{
  v3 = this[16];
  if (v3)
  {
    v4 = this;
    v19 = 0;
    v20 = 0;
    v5 = *(this + 22);
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      for (i = 0; i < v5; ++i)
      {
        v9 = (*(v4 + 80) + v6);
        if (*(v9 + 2))
        {
          v10 = *v9;
        }

        else
        {
          v10 = &unk_26288D4C4;
        }

        if (*v10 != 42 || v10[1])
        {
          if (v7 == HIDWORD(v20))
          {
            DgnArray<DgnPrimArray<double>>::reallocElts(&v19, 1, 1);
            v7 = v20;
          }

          DgnString::DgnString((v19 + 16 * v7), v9);
          v7 = v20 + 1;
          LODWORD(v20) = v20 + 1;
          v5 = *(v4 + 88);
        }

        v6 += 16;
      }

      v3 = *(v4 + 128);
    }

    v11 = *(v3 + 160);
    if (*(v4 + 148) < v11)
    {
      v21 = 0;
      *(v4 + 148) = realloc_array(*(v4 + 136), &v21, v11, *(v4 + 144), *(v4 + 144), 1);
      *(v4 + 136) = v21;
    }

    *(v4 + 144) = v11;
    if (v11 >= 2)
    {
      v12 = 1;
      while (1)
      {
        v13 = v12;
        v14 = (*(v3 + 152) + (v12 << 7));
        v15 = (*(v4 + 136) + v12);
        *v15 = 1;
        if (!*v14)
        {
          goto LABEL_28;
        }

        if (v20)
        {
          break;
        }

LABEL_29:
        v12 = v13 + 1;
        if (v11 <= (v13 + 1))
        {
          return DgnArray<DgnString>::releaseAll(&v19);
        }
      }

      v16 = 0;
      v17 = 0;
      while (1)
      {
        v18 = *(v19 + v16 + 8) ? *(v19 + v16) : &unk_26288D4C4;
        if (!DgnString::compareNoCase(v18, v14, a3))
        {
          break;
        }

        ++v17;
        v16 += 16;
        if (v17 >= v20)
        {
          goto LABEL_29;
        }
      }

      v15 = (*(v4 + 136) + v13);
LABEL_28:
      *v15 = 0;
      goto LABEL_29;
    }

    return DgnArray<DgnString>::releaseAll(&v19);
  }

  return this;
}

void sub_2627BC434(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DgnArray<DgnString>::releaseAll(va);
  _Unwind_Resume(a1);
}

uint64_t ListDFile::subFileExistsByExplicitExtension(ListDFile *this, char *a2)
{
  DgnString::DgnString(&v14);
  DFile::makeSubFileName(this + 56, a2, &v14);
  if (*(this + 22))
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = *(this + 10) + v5;
      v8 = *(v7 + 8) ? *v7 : &unk_26288D4C4;
      v9 = (v15 ? v14 : &unk_26288D4C4);
      if (!DgnString::compareNoCase(v8, v9, v4))
      {
        break;
      }

      ++v6;
      v5 += 16;
      if (v6 >= *(this + 22))
      {
        goto LABEL_11;
      }
    }

    v12 = *(*(this + 12) + v5 + 8) > 1u;
  }

  else
  {
LABEL_11:
    v10 = *(this + 16);
    if (v10)
    {
      if (v15)
      {
        v11 = v14;
      }

      else
      {
        v11 = &unk_26288D4C4;
      }

      v12 = (*(*v10 + 24))(v10, v11);
    }

    else
    {
      v12 = 0;
    }
  }

  DgnString::~DgnString(&v14);
  return v12;
}

uint64_t *ListDFile::openSubFileByExplicitExtension(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = &unk_26288D4C4;
  if (a3 > 4 || ((1 << a3) & 0x19) == 0)
  {
    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/listdf.cpp", 345, "dfutil/listdf", 3, "%s", a7, a8, &unk_26288D4C4);
  }

  DgnString::DgnString(&v30);
  DFile::makeSubFileName(a1 + 56, a2, &v30);
  if (!*(a1 + 88))
  {
    goto LABEL_24;
  }

  v16 = 0;
  v17 = 0;
  while (1)
  {
    v18 = *(a1 + 80) + v16;
    v19 = *(v18 + 8) ? *v18 : &unk_26288D4C4;
    v20 = (v31 ? v30 : &unk_26288D4C4);
    if (!DgnString::compareNoCase(v19, v20, v13))
    {
      break;
    }

    ++v17;
    v16 += 16;
    if (v17 >= *(a1 + 88))
    {
      goto LABEL_24;
    }
  }

  if (*(*(a1 + 96) + v16 + 8) <= 1u)
  {
    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/listdf.cpp", 356, "dfutil/listdf", 1, "%.500s", v14, v15, a2);
  }

  if ((v17 & 0x80000000) != 0)
  {
LABEL_24:
    v24 = *(a1 + 128);
    if (v24)
    {
      if (v31)
      {
        v25 = v30;
      }

      else
      {
        v25 = &unk_26288D4C4;
      }

      v23 = (*(*v24 + 32))(v24, v25, a3, a4);
    }

    else
    {
      errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/listdf.cpp", 395, "dfutil/listdf", 1, "%.500s", v14, v15, a2);
      v23 = 0;
    }
  }

  else
  {
    DgnString::DgnString(&v28);
    FileSpec::getPathOnly((a1 + 16), &v28);
    FileSpec::FileSpec(v27);
    if (v29)
    {
      v21 = v28;
    }

    else
    {
      v21 = &unk_26288D4C4;
    }

    v22 = *(a1 + 96) + 16 * (v17 & 0x7FFFFFFF);
    if (*(v22 + 8))
    {
      v12 = *v22;
    }

    FileSpec::fillFromDefPathAndName(v27, v21, v12);
    v23 = MemChunkAlloc(0x80uLL, 0);
    ListDFileSubFileStream::ListDFileSubFileStream(v23, 0, a4, v27, a1, a2);
    *(*(a1 + 112) + (v17 & 0x7FFFFFFF)) = 1;
    FileSpec::~FileSpec(v27);
    DgnString::~DgnString(&v28);
  }

  DgnString::~DgnString(&v30);
  return v23;
}

void sub_2627BC7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  FileSpec::~FileSpec(va);
  DgnString::~DgnString(va1);
  DgnString::~DgnString(va2);
  _Unwind_Resume(a1);
}

off_t ListDFile::getSubFileSizeByExplicitExtension(ListDFile *this, char *a2)
{
  DgnString::DgnString(&v28);
  DFile::makeSubFileName(this + 56, a2, &v28);
  if (!*(this + 22))
  {
    goto LABEL_20;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    v9 = *(this + 10) + v7;
    v10 = *(v9 + 8) ? *v9 : &unk_26288D4C4;
    v11 = (v29 ? v28 : &unk_26288D4C4);
    if (!DgnString::compareNoCase(v10, v11, v4))
    {
      break;
    }

    ++v8;
    v7 += 16;
    if (v8 >= *(this + 22))
    {
      goto LABEL_20;
    }
  }

  if (*(*(this + 12) + v7 + 8) <= 1u)
  {
    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/listdf.cpp", 419, "dfutil/listdf", 1, "%.500s", v5, v6, a2);
  }

  if ((v8 & 0x80000000) != 0)
  {
LABEL_20:
    v15 = *(this + 16);
    if (v15)
    {
      if (v29)
      {
        v16 = v28;
      }

      else
      {
        v16 = &unk_26288D4C4;
      }

      FileSize = (*(*v15 + 48))(v15, v16);
    }

    else
    {
      errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/listdf.cpp", 444, "dfutil/listdf", 1, "%.500s", v5, v6, a2);
      FileSize = 0;
    }
  }

  else
  {
    DgnString::DgnString(&v26);
    FileSpec::getPathOnly((this + 16), &v26);
    FileSpec::FileSpec(&v24);
    if (v27)
    {
      v12 = v26;
    }

    else
    {
      v12 = &unk_26288D4C4;
    }

    v13 = *(this + 12) + 16 * (v8 & 0x7FFFFFFF);
    if (*(v13 + 8))
    {
      v14 = *v13;
    }

    else
    {
      v14 = &unk_26288D4C4;
    }

    FileSpec::fillFromDefPathAndName(&v24, v12, v14);
    OsFile::openOsFile(&v24, 0);
    v21 = v20;
    if (!v20)
    {
      if (v25)
      {
        LOBYTE(v22) = v24;
      }

      else
      {
        v22 = &unk_26288D4C4;
      }

      errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/listdf.cpp", 434, "dfutil/listdf", 2, "%.500s %.500s", v18, v19, v22);
    }

    FileSize = OsFile::getFileSize(v21);
    DgnDelete<OsFile>(v21);
    FileSpec::~FileSpec(&v24);
    DgnString::~DgnString(&v26);
  }

  DgnString::~DgnString(&v28);
  return FileSize;
}

void sub_2627BCADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  FileSpec::~FileSpec(va);
  DgnString::~DgnString(va1);
  DgnString::~DgnString(va2);
  _Unwind_Resume(a1);
}

void ListDFile::verifyHaveOpenedAllSubFiles(ListDFile *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(this + 22);
  if (v10)
  {
    v11 = 0;
    for (i = 0; i < v10; ++i)
    {
      v13 = *(this + 10) + v11;
      v14 = *(v13 + 8);
      v15 = *v13;
      if (!v14)
      {
        v15 = &unk_26288D4C4;
      }

      if ((*v15 != 42 || v15[1]) && *(*(this + 12) + v11 + 8) >= 2u && (*(*(this + 14) + i) & 1) == 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/listdf.cpp", 495, "dfutil/listdf", 8, "%.500s %.500s", a7, a8, v15);
        v10 = *(this + 22);
      }

      v11 += 16;
    }
  }

  v16 = *(this + 16);
  if (v16)
  {

    RealDFile::verifyHaveOpenedAllSubFiles(v16, a2, this + 17, a4, a5, a6, a7, a8);
  }
}

void ListDFile::fillSubFileSizeInfo(ListDFile *this)
{
  v2 = *(this + 22);
  if (v2)
  {
    v3 = 0;
    for (i = 0; i < v2; ++i)
    {
      v5 = (*(this + 10) + v3);
      if (*(v5 + 2))
      {
        v6 = *v5;
      }

      else
      {
        v6 = &unk_26288D4C4;
      }

      if ((*v6 != 42 || v6[1]) && *(*(this + 12) + v3 + 8) >= 2u)
      {
        v7 = (*(*this + 48))(this);
        DFileProgressInfo::add(*(this + 1), v5, v7);
        v2 = *(this + 22);
      }

      v3 += 16;
    }
  }

  v8 = *(this + 16);
  if (v8)
  {

    RealDFile::fillSubFileSizeInfo(v8, this + 17);
  }
}

uint64_t ListDFile::attachProgressInfo(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  result = *(a1 + 128);
  if (result)
  {
    return (*(*result + 96))();
  }

  return result;
}

uint64_t TEnvManager::TEnvManager(uint64_t a1, __int128 *a2, uint64_t a3)
{
  *a1 = &unk_287528AD0;
  *(a1 + 8) = a3;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), &byte_262899963);
  *a1 = &unk_287528F50;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  v5 = *a2;
  *(a1 + 88) = a2[1];
  *(a1 + 72) = v5;
  *(a1 + 40) = 1;
  return a1;
}

void TEnvManager::TEnvManager(TEnvManager *this, char *__s, uint64_t a3)
{
  getFilePath(__s, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  *this = &unk_287528AD0;
  *(this + 1) = a3;
  std::string::basic_string[abi:ne200100]<0>(this + 16, p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *this = &unk_287528F50;
  std::string::basic_string[abi:ne200100]<0>(this + 48, __s);
  *(this + 40) = 0;
  *(this + 9) = 1;
}

void sub_2627BCF34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *v15 = v16;
  if (*(v15 + 39) < 0)
  {
    operator delete(*(v15 + 16));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *TEnvManager::open(_BYTE *this)
{
  if ((this[40] & 1) == 0)
  {
    v1 = this;
    v2 = (this + 48);
    v3 = this[71];
    v4 = this + 48;
    if (v3 < 0)
    {
      v4 = *v2;
    }

    v5 = fopen(v4, "rb");
    if (v5)
    {
      fclose(v5);
      if (*(v1 + 71) < 0)
      {
        v2 = *v2;
      }

      this = SDEnvHolder_NewFromFile(v2, 1uLL);
    }

    else
    {
      if (*(v1 + 8))
      {
        if (*(v1 + 71) < 0)
        {
          v2 = *v2;
        }

        tknPrintf("Error: %s does not exist.\n", v6, v7, v8, v9, v2);
        std::string::basic_string[abi:ne200100]<0>(v16, &byte_262899963);
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

        *__p = &unk_287528A80;
        if (v19 >= 0)
        {
          v12 = &__p[8];
        }

        else
        {
          v12 = *&__p[8];
        }

        conditionalAssert(v12, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/envmgr.cpp", 63, v10, v11);
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
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *exception = byte_287529580;
        v14 = (exception + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v14, *__p, *&__p[8]);
        }

        else
        {
          v15 = *__p;
          exception[3] = *&__p[16];
          *&v14->__r_.__value_.__l.__data_ = v15;
        }

        *exception = &unk_287528A80;
      }

      this = SDEnvHolder_New();
    }

    *(v1 + 80) = this;
    *(v1 + 40) = 1;
  }

  return this;
}

void sub_2627BD188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, void *a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25)
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

void TIOException::~TIOException(void **this)
{
  *this = byte_287529580;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = byte_287529580;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x26672B1B0);
}

void TEnvManager::close(TEnvManager *this)
{
  if (*(this + 40) == 1)
  {
    v2 = *(this + 71);
    if (v2 < 0)
    {
      if (!*(this + 7))
      {
        return;
      }
    }

    else if (!*(this + 71))
    {
      return;
    }

    v3 = *(this + 10);
    if (*(this + 8))
    {
      SDEnvHolder_Delete(v3);
    }

    else
    {
      v4 = (this + 48);
      v5 = (this + 48);
      if ((v2 & 0x80000000) != 0)
      {
        v5 = *v4;
      }

      if (SDEnvHolder_Save(v3, v5, 1u) != 1)
      {
        if (*(this + 71) < 0)
        {
          v4 = *v4;
        }

        tknPrintf("Error: couldn't write to %s\n", v6, v7, v8, v9, v4);
        std::string::basic_string[abi:ne200100]<0>(v16, &byte_262899963);
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

        *__p = &unk_287528A80;
        if (v19 >= 0)
        {
          v12 = &__p[8];
        }

        else
        {
          v12 = *&__p[8];
        }

        conditionalAssert(v12, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/envmgr.cpp", 100, v10, v11);
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
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *exception = byte_287529580;
        v14 = (exception + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v14, *__p, *&__p[8]);
        }

        else
        {
          v15 = *__p;
          exception[3] = *&__p[16];
          *&v14->__r_.__value_.__l.__data_ = v15;
        }

        *exception = &unk_287528A80;
      }
    }

    *(this + 40) = 0;
  }
}

void sub_2627BD458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, void *a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25)
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

uint64_t TEnvManager::getVar(TEnvManager *this, EnvMgr *a2, char *a3, unsigned int a4)
{
  if (((*(*this + 32))(this) & 1) == 0)
  {
    (*(*this + 16))(this);
  }

  return SDEnv_GetData(this + 9, a2, a3, a4);
}

void TEnvManager::setVar(TEnvManager *this, EnvMgr *a2, const char *a3, uint64_t a4)
{
  if (((*(*this + 32))(this) & 1) == 0)
  {
    (*(*this + 16))(this);
  }

  Data = SDEnv_GetData(this + 9, a2, 0, 0);
  if (a4 || Data)
  {

    SDEnv_SetData(this + 9, a2, a3, a4);
  }
}

void MrecInitModule_fwdbwd_fst(void)
{
  if (!gParDebugFwdBwd)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugFwdBwd", &unk_26288D580, &unk_26288D580, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugFwdBwd = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugFwdBwd);
  }

  if (!gParFwdBwdUseGPU)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "FwdBwdUseGPU", &unk_26288D580, &unk_26288D580, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParFwdBwdUseGPU = v3;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParFwdBwdUseGPU);
  }

  if (!gParFwdBwdUseCPUGetNumOutPortsFromFwdBwdProbs)
  {
    v4 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v4, "FwdBwdUseCPUGetNumOutPortsFromFwdBwdProbs", &unk_26288D580, &unk_26288D580, 0, 0, 0);
    *v5 = &unk_287527EA0;
    gParFwdBwdUseCPUGetNumOutPortsFromFwdBwdProbs = v5;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParFwdBwdUseCPUGetNumOutPortsFromFwdBwdProbs);
  }

  if (!gParFwdBwdUseCPUGetNumOutPorts)
  {
    v6 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v6, "FwdBwdUseCPUGetNumOutPorts", &unk_26288D580, &unk_26288D580, 0, 0, 0);
    *v7 = &unk_287527EA0;
    gParFwdBwdUseCPUGetNumOutPorts = v7;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParFwdBwdUseCPUGetNumOutPorts);
  }

  if (!gParFwdBwdUseCPUCumulativeSums)
  {
    v8 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v8, "FwdBwdUseCPUCumulativeSums", &unk_26288D580, &unk_26288D580, 0, 0, 0);
    *v9 = &unk_287527EA0;
    gParFwdBwdUseCPUCumulativeSums = v9;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParFwdBwdUseCPUCumulativeSums);
  }

  if (!gParFwdBwdUseCPUInitCandidateStates)
  {
    v10 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v10, "FwdBwdUseCPUInitCandidateStates", &unk_26288D580, &unk_26288D580, 0, 0, 0);
    *v11 = &unk_287527EA0;
    gParFwdBwdUseCPUInitCandidateStates = v11;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParFwdBwdUseCPUInitCandidateStates);
  }

  if (!gParFwdBwdUseCPUMakeBackwardDecision)
  {
    v12 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v12, "FwdBwdUseCPUMakeBackwardDecision", &unk_26288D580, &unk_26288D580, 0, 0, 0);
    *v13 = &unk_287527EA0;
    gParFwdBwdUseCPUMakeBackwardDecision = v13;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParFwdBwdUseCPUMakeBackwardDecision);
  }

  if (!gParFwdBwdUseCPUGetBlockSizes)
  {
    v14 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v14, "FwdBwdUseCPUGetBlockSizes", &unk_26288D580, &unk_26288D580, 0, 0, 0);
    *v15 = &unk_287527EA0;
    gParFwdBwdUseCPUGetBlockSizes = v15;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParFwdBwdUseCPUGetBlockSizes);
  }

  if (!gParFwdBwdUseCPUInitCandidateBlocks)
  {
    v16 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v16, "FwdBwdUseCPUInitCandidateBlocks", &unk_26288D580, &unk_26288D580, 0, 0, 0);
    *v17 = &unk_287527EA0;
    gParFwdBwdUseCPUInitCandidateBlocks = v17;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParFwdBwdUseCPUInitCandidateBlocks);
  }

  if (!gParFwdBwdUseCPUCopyWithCutoff)
  {
    v18 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v18, "FwdBwdUseCPUCopyWithCutoff", &unk_26288D580, &unk_26288D580, 0, 0, 0);
    *v19 = &unk_287527EA0;
    gParFwdBwdUseCPUCopyWithCutoff = v19;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParFwdBwdUseCPUCopyWithCutoff);
  }

  if (!gParFwdBwdUseCPUSortCandidatesByState)
  {
    v20 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v20, "FwdBwdUseCPUSortCandidatesByState", &unk_26288D580, &unk_26288D580, 0, 0, 0);
    *v21 = &unk_287527EA0;
    gParFwdBwdUseCPUSortCandidatesByState = v21;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParFwdBwdUseCPUSortCandidatesByState);
  }

  if (!gParFwdBwdUseCPUDoStep)
  {
    v22 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v22, "FwdBwdUseCPUDoStep", &unk_26288D580, &unk_26288D580, 0, 0, 0);
    *v23 = &unk_287527EA0;
    gParFwdBwdUseCPUDoStep = v23;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParFwdBwdUseCPUDoStep);
  }

  if (!gParFwdBwdUseCPUSortCandidatesByScore)
  {
    v24 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v24, "FwdBwdUseCPUSortCandidatesByScore", &unk_26288D580, &unk_26288D580, 0, 0, 0);
    *v25 = &unk_287527EA0;
    gParFwdBwdUseCPUSortCandidatesByScore = v25;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParFwdBwdUseCPUSortCandidatesByScore);
  }

  if (!gParFwdBwdUseCPUUpdateBackwardLinks)
  {
    v26 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v26, "FwdBwdUseCPUUpdateBackwardLinks", &unk_26288D580, &unk_26288D580, 0, 0, 0);
    *v27 = &unk_287527EA0;
    gParFwdBwdUseCPUUpdateBackwardLinks = v27;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParFwdBwdUseCPUUpdateBackwardLinks);
  }

  if (!gParDebugFwdBwdActivePelSelection)
  {
    v28 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v28, "DebugFwdBwdActivePelSelection", &unk_26288D580, &unk_26288D580, 0, 0, 0);
    *v29 = &unk_287527EA0;
    gParDebugFwdBwdActivePelSelection = v29;
    v30 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v30, &gParDebugFwdBwdActivePelSelection);
  }
}

void FwdBwd::FwdBwd(FwdBwd *this, const PicMgr *a2)
{
  SearchItf::SearchItf(this);
  *v5 = &unk_287523D58;
  *(v5 + 136) = 0;
  *(v5 + 144) = 0;
  *(v5 + 152) = 0;
  *(v5 + 160) = -1;
  *(v5 + 168) = 0u;
  *(v5 + 184) = 0u;
  *(v5 + 200) = 0;
  *(v5 + 208) = a2;
  *(v5 + 216) = 0u;
  *(v5 + 232) = 0u;
  *(v5 + 248) = 0u;
  *(v5 + 264) = 0u;
  *(v5 + 280) = 0u;
  *(v5 + 296) = 0u;
  if (*(gParFwdBwdUseGPU + 41) == 1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fwdbwd.cpp", 477, "fst/fwdbwd", 1, "%s", v3, v4, &unk_26288D580);
  }
}

void sub_2627BDED4(_Unwind_Exception *a1)
{
  DgnIArray<Utterance *>::~DgnIArray(v1 + 296);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 280);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 264);
  DgnIArray<Utterance *>::~DgnIArray(v6);
  DgnIArray<Utterance *>::~DgnIArray(v5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v4);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 192);
  DgnArray<FwdBwdColumn>::releaseAll(v3);
  DgnIArray<Utterance *>::~DgnIArray(v2);
  SearchItf::~SearchItf(v1);
  _Unwind_Resume(a1);
}

void FwdBwd::~FwdBwd(FwdBwdGPUData **this)
{
  *this = &unk_287523D58;
  DgnDelete<FwdBwdGPUData>(this[23]);
  this[23] = 0;
  this[26] = 0;
  DgnIArray<Utterance *>::~DgnIArray((this + 37));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 35));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 33));
  DgnIArray<Utterance *>::~DgnIArray((this + 31));
  DgnIArray<Utterance *>::~DgnIArray((this + 29));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 27));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 24));
  DgnArray<FwdBwdColumn>::releaseAll((this + 21));
  DgnIArray<Utterance *>::~DgnIArray((this + 18));

  SearchItf::~SearchItf(this);
}

{
  FwdBwd::~FwdBwd(this);

  JUMPOUT(0x26672B1B0);
}

FwdBwdGPUData *DgnDelete<FwdBwdGPUData>(FwdBwdGPUData *result)
{
  if (result)
  {
    FwdBwdGPUData::~FwdBwdGPUData(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

double FwdBwd::reset(FwdBwd *this)
{
  v2 = *(this + 23);
  if (v2)
  {
    v6 = *(*(this + 5) + 144);
    v3 = *HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(v2, &v6) + 2;
  }

  else
  {
    v3 = (*(this + 5) + 144);
  }

  v4 = *(this + 29);
  *v4 = *v3;
  *(v4 + 8) = 0;
  *&result = 0xFFFFFFFFLL;
  *(v4 + 16) = 0xFFFFFFFFLL;
  *(this + 34) = 1;
  *(this + 38) = 0;
  return result;
}

uint64_t FwdBwd::getNumOutPortsItf(uint64_t this)
{
  if (*(this + 184))
  {
    return FwdBwd::getNumOutPortsGPU(this);
  }

  else
  {
    return FwdBwd::getNumOutPortsCPU(this);
  }
}

uint64_t FwdBwd::getNumOutPortsCPU(uint64_t this)
{
  if (*(this + 136))
  {
    v1 = 0;
    v2 = *(this + 232);
    v3 = *(this + 40);
    v4 = *(this + 216);
    do
    {
      v5 = *(v2 + 40 * v1);
      if (*(v3 + 160) == v5)
      {
        v6 = 0;
      }

      else
      {
        v7 = *(v3 + 140);
        v6 = v7 > v5;
        v8 = *(v3 + 152);
        do
        {
          v9 = *(v8 + 4 * v5);
          v10 = v5 + 1;
          v5 += 2;
          if (v7 > *(v8 + 4 * v10))
          {
            ++v6;
          }
        }

        while ((v9 & 0x80000000) == 0);
      }

      *(v4 + 4 * v1++) = v6;
    }

    while (v1 < *(this + 136));
  }

  return this;
}

uint64_t FwdBwd::getNumOutPortsGPU(uint64_t this)
{
  if (*(gParFwdBwdUseCPUGetNumOutPorts + 41) == 1 && *(this + 136))
  {
    v1 = 0;
    v2 = *(this + 232);
    v3 = *(this + 184);
    v4 = *(this + 216);
    do
    {
      v6 = *v2;
      v2 += 10;
      v5 = v6;
      if (v3)
      {
        if (*(v3 + 120) <= v5)
        {
          goto LABEL_8;
        }
      }

      else if (*(*(this + 40) + 160) == v5)
      {
LABEL_8:
        v7 = 0;
        goto LABEL_9;
      }

      v7 = *(*(v3 + 160) + 4 * v5);
LABEL_9:
      *(v4 + 4 * v1++) = v7;
    }

    while (v1 < *(this + 136));
  }

  return this;
}

void *FwdBwd::getNumOutPortsFromFwdBwdProbsGPU(void *this, unsigned int a2)
{
  if (*(gParFwdBwdUseCPUGetNumOutPortsFromFwdBwdProbs + 41) == 1)
  {
    v2 = this[21] + 40 * a2;
    if (*(v2 + 16))
    {
      v3 = 0;
      v4 = *(v2 + 8);
      v5 = this[23];
      v6 = this[27];
      do
      {
        v8 = *v4;
        v4 += 14;
        v7 = v8;
        if (v5)
        {
          if (*(v5 + 120) <= v7)
          {
            goto LABEL_8;
          }
        }

        else if (*(this[5] + 160) == v7)
        {
LABEL_8:
          v9 = 0;
          goto LABEL_9;
        }

        v9 = *(*(v5 + 160) + 4 * v7);
LABEL_9:
        *(v6 + 4 * v3++) = v9;
      }

      while (v3 < *(v2 + 16));
    }
  }

  return this;
}

uint64_t FwdBwd::cumulativeSumsItf(FwdBwd *this, int *a2, int a3)
{
  if (*(this + 23))
  {
    result = 0;
    if (a3 >= 1 && (*(gParFwdBwdUseCPUCumulativeSums + 41) & 1) != 0)
    {
      LODWORD(result) = 0;
      v4 = a3;
      do
      {
        v5 = *a2;
        *a2++ = result;
        result = (v5 + result);
        --v4;
      }

      while (v4);
    }
  }

  else if (a3 < 1)
  {
    return 0;
  }

  else
  {
    LODWORD(result) = 0;
    v6 = a3;
    do
    {
      v7 = *a2;
      *a2++ = result;
      result = (v7 + result);
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t FwdBwd::initCandidateStatesItf(uint64_t this)
{
  if (*(this + 184))
  {
    return FwdBwd::initCandidateStatesGPU(this);
  }

  else
  {
    return FwdBwd::initCandidateStatesCPU(this);
  }
}

uint64_t FwdBwd::initCandidateStatesCPU(uint64_t this)
{
  v1 = *(this + 136);
  if (v1)
  {
    v2 = 0;
    v3 = *(this + 40);
    do
    {
      v4 = *(this + 232) + 40 * v2;
      v5 = *v4;
      if (*(v3 + 160) != *v4)
      {
        v6 = *(*(this + 216) + 4 * v2);
        if (*(v3 + 140) > v5)
        {
          v7 = *(this + 248) + 40 * v6;
          v8 = *v4;
          v9 = *(v4 + 16);
          *(v7 + 32) = *(v4 + 32);
          *v7 = v8;
          *(v7 + 16) = v9;
          v10 = *(this + 248) + 40 * v6;
          *(v10 + 24) = v2;
          *(v10 + 28) = 1;
          LODWORD(v6) = v6 + 1;
          v3 = *(this + 40);
        }

        v11 = *(v3 + 152);
        v12 = *(v3 + 140);
        do
        {
          v13 = *(v11 + 4 * v5);
          v14 = *(v11 + 4 * (v5 + 1));
          if (v12 > v14)
          {
            v15 = *(this + 248) + 40 * v6;
            *v15 = v14;
            v16 = *(this + 232) + 40 * v2;
            v17 = ((v13 >> 20) & 0x3FF);
            *(v15 + 8) = *(v16 + 8) + v17;
            *(v15 + 16) = *(v16 + 16);
            *(v15 + 20) = v13 & 0xFFFFF;
            *(v15 + 24) = v2;
            *(v15 + 28) = 1;
            *(v15 + 32) = v17;
            LODWORD(v6) = v6 + 1;
          }

          v5 += 2;
        }

        while ((v13 & 0x80000000) == 0);
        v1 = *(this + 136);
      }

      ++v2;
    }

    while (v2 < v1);
  }

  return this;
}

uint64_t FwdBwd::initCandidateStatesGPU(uint64_t this)
{
  if (*(gParFwdBwdUseCPUInitCandidateStates + 41) == 1)
  {
    v1 = *(this + 136);
    if (v1)
    {
      v2 = 0;
      v3 = *(this + 232);
      v4 = *(this + 184);
      do
      {
        v5 = (v3 + 40 * v2);
        v6 = *v5;
        if (v4)
        {
          if (*(v4 + 120) > v6)
          {
            goto LABEL_8;
          }
        }

        else if (*(*(this + 40) + 160) != v6)
        {
LABEL_8:
          v7 = *(*(v4 + 160) + 4 * v6);
          if (v7)
          {
            v8 = *(*(v4 + 176) + 4 * v6);
            v9 = *(*(this + 216) + 4 * v2);
            v10 = *(this + 248);
            v11 = *(v4 + 144);
            v12 = *(v5 + 4);
            v13 = v7;
            do
            {
              v14 = v10 + 40 * v9;
              *(v14 + 16) = v12;
              *v14 = *(v11 + 4 * v8);
              v15 = *(v11 + 4 * (v7 + v8));
              v16 = *(v11 + 4 * (2 * v7 + v8));
              *(v14 + 8) = v5[1] + v16;
              *(v14 + 20) = v15;
              *(v14 + 24) = v2;
              *(v14 + 28) = 1;
              *(v14 + 32) = v16;
              ++v9;
              ++v8;
              --v13;
            }

            while (v13);
          }
        }

        ++v2;
      }

      while (v2 != v1);
    }
  }

  return this;
}

void FwdBwd::makeBackwardDecision(FwdBwd *this, unsigned int a2, double a3)
{
  if (*(gParFwdBwdUseCPUMakeBackwardDecision + 41) == 1)
  {
    v3 = *(this + 21);
    v4 = v3 + 40 * a2;
    v5 = *(v4 + 16);
    if (v5)
    {
      v7 = 0;
      v8 = *(v4 + 8);
      v20 = v3 + 40 * (a2 + 1);
      v9 = *(this + 23);
      do
      {
        v10 = (v8 + 56 * v7);
        v11 = *v10;
        if (v9)
        {
          if (*(v9 + 120) > v11)
          {
            goto LABEL_6;
          }
        }

        else if (*(*(this + 5) + 160) != v11)
        {
LABEL_6:
          v12 = *(*(v9 + 160) + 4 * v11);
          if (v12)
          {
            v13 = *(*(this + 27) + 4 * v7);
            v14 = *(v20 + 24);
            v15 = -1.79769313e308;
            do
            {
              v16 = v14 + 24 * v13;
              v17 = *(v16 + 16);
              if (v15 != -1.79769313e308)
              {
                if (v17 == -1.79769313e308)
                {
                  v17 = v15;
                }

                else
                {
                  if (v15 > v17)
                  {
                    v18 = *(v16 + 16);
                  }

                  else
                  {
                    v18 = v15;
                  }

                  if (v15 > v17)
                  {
                    v17 = v15;
                  }

                  if (v18 - v17 >= -400.0)
                  {
                    v19 = exp(v18 - v17);
                    v17 = v17 + log1p(v19);
                  }
                }
              }

              ++v13;
              v15 = v17;
              --v12;
            }

            while (v12);
          }

          else
          {
            v17 = -1.79769313e308;
          }

          v10[2] = v17 - a3;
          *(v10 + 40) = 0;
          goto LABEL_24;
        }

        v10[2] = -1.79769313e308;
LABEL_24:
        ++v7;
      }

      while (v7 != v5);
    }
  }
}

uint64_t FwdBwd::getStateBlockSizesCPU(uint64_t this, int a2, int a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = *(this + 264);
    do
    {
      if (a3 < 1)
      {
        v6 = 0;
      }

      else
      {
        v6 = 0;
        v7 = v4 * a3;
        v8 = a3;
        do
        {
          if (!v7 || v7 < a2 && *(*(this + 248) + 40 * (v7 - 1)) != *(*(this + 248) + 40 * v7))
          {
            ++v6;
          }

          ++v7;
          --v8;
        }

        while (v8);
      }

      *(v5 + 4 * v4++) = v6;
    }

    while (v4 != a4);
  }

  return this;
}

void *FwdBwd::initCandidateBlocksCPU(void *this, int a2, int a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = this[33];
    do
    {
      if (a3 >= 1)
      {
        v6 = *(v5 + 4 * v4);
        v7 = v4 * a3;
        v8 = a3;
        do
        {
          if (!v7 || v7 < a2 && *(this[31] + 40 * (v7 - 1)) != *(this[31] + 40 * v7))
          {
            *(this[35] + 4 * v6++) = v7;
          }

          ++v7;
          --v8;
        }

        while (v8);
      }

      ++v4;
    }

    while (v4 != a4);
  }

  return this;
}

uint64_t FwdBwd::doStepFwdBwdCPU(uint64_t this, int a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = this;
    v4 = 0;
    v5 = a3;
    do
    {
      v6 = *(v3 + 280);
      v7 = v4 + 1;
      v8 = a2;
      if (v4 + 1 != v5)
      {
        v8 = *(v6 + 4 * v7);
      }

      v9 = *(v6 + 4 * v4);
      v10 = *(v3 + 248) + 40 * v9;
      v11 = *(v3 + 296) + 40 * v4;
      v12 = *v10;
      v13 = *(v10 + 16);
      *(v11 + 32) = *(v10 + 32);
      *v11 = v12;
      *(v11 + 16) = v13;
      v14 = *(v3 + 296) + 40 * v4;
      *(v14 + 24) = v9;
      *(v14 + 28) = v8 - v9;
      v15 = *(v14 + 8);
      v16 = v9 + 1;
      if ((v9 + 1) >= v8)
      {
        v19 = *(v14 + 8);
      }

      else
      {
        v17 = *(v3 + 248);
        do
        {
          v18 = v17 + 40 * v16;
          v19 = *(v18 + 8);
          if (v15 != -1.79769313e308)
          {
            if (v19 == -1.79769313e308)
            {
              v19 = v15;
            }

            else
            {
              if (v15 > v19)
              {
                v20 = *(v18 + 8);
              }

              else
              {
                v20 = v15;
              }

              if (v15 > v19)
              {
                v19 = v15;
              }

              if (v20 - v19 >= -400.0)
              {
                v21 = exp(v20 - v19);
                v19 = v19 + log1p(v21);
              }
            }
          }

          ++v16;
          v15 = v19;
        }

        while (v8 != v16);
      }

      this = PelScoreCache::getScoreNoBackoff(*(v3 + 32), *(v14 + 20));
      *(*(v3 + 296) + 40 * v4++ + 8) = v19 - this;
    }

    while (v7 != v5);
  }

  return this;
}

uint64_t FwdBwd::copyWithCutoffCPU(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v3 = 0;
    v4 = *(result + 16);
    v5 = a3 - 1;
    if (v4 < a3 - 1)
    {
      v5 = *(result + 16);
    }

    v6 = 40 * v4;
    while (v6 != v3)
    {
      v7 = *(result + 232) + v3;
      *v7 = *(a2 + v3);
      *(v7 + 8) = *(a2 + v3 + 8);
      *(v7 + 16) = *(a2 + v3 + 16);
      *(v7 + 32) = *(a2 + v3 + 32);
      v3 += 40;
      if (40 * a3 == v3)
      {
        ++v5;
        break;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  *(result + 136) = v5;
  return result;
}

uint64_t FwdBwd::appendNonEmittingCandidates(uint64_t result, int *a2, uint64_t a3)
{
  v5 = result;
  v6 = *a2;
  v7 = *(result + 184);
  if (v7)
  {
    if (*(v7 + 120) <= v6)
    {
      return result;
    }

    v6 = *(*(v7 + 112) + 4 * v6);
    v8 = *(result + 40);
  }

  else
  {
    v8 = *(result + 40);
    if (*(v8 + 160) == v6)
    {
      return result;
    }
  }

  if (*(v8 + 140) <= v6 || (*(*(v8 + 152) + 4 * v6) & 0x40000000) != 0)
  {
    v18 = 0;
    do
    {
      v9 = *(v5 + 40);
      v10 = *(v9 + 152);
      v11 = *(v10 + 4 * v6);
      v12 = *(v10 + 4 * (v6 + 1));
      v18 = v12;
      if (*(v9 + 140) <= v12)
      {
        result = *(v5 + 184);
        if (result)
        {
          if (*(v9 + 160) == v12)
          {
            v12 = *(result + 120);
          }

          else
          {
            result = HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(result, &v18);
            v12 = *(*result + 16);
          }
        }

        v13 = *(a2 + 1);
        v14 = a2[4];
        v16 = *(a3 + 8);
        v15 = *(a3 + 12);
        if (v16 + 1 > v15)
        {
          result = DgnArray<FstSearchLeafLatticeDurationBackoffActiveToken>::reallocElts(a3, v16 + 1 - v15, 0);
        }

        *(a3 + 8) = v16 + 1;
        v17 = *a3 + 40 * v16;
        *v17 = v12;
        *(v17 + 8) = v13 + ((v11 >> 20) & 0x3FF);
        *(v17 + 16) = v14;
        *(v17 + 20) = -1;
        *(v17 + 28) = 0;
        *(v17 + 32) = 0;
      }

      v6 += 2;
    }

    while ((v11 & 0x80000000) == 0);
  }

  return result;
}

uint64_t FwdBwd::propagateNulls(FwdBwd *this)
{
  v21 = 0;
  v22 = 0;
  LODWORD(v2) = *(this + 34);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = (*(this + 29) + v3);
      v18 = *v5;
      v19 = v5[1];
      v20 = *(v5 + 4);
      FwdBwd::appendNonEmittingCandidates(this, &v18, &v21);
      ++v4;
      v2 = *(this + 34);
      v3 += 40;
    }

    while (v4 < v2);
    v6 = v22;
    if (v22)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v18 = *(v21 + v7);
        v19 = *(v21 + v7 + 16);
        v20 = *(v21 + v7 + 32);
        FwdBwd::appendNonEmittingCandidates(this, &v18, &v21);
        ++v8;
        v6 = v22;
        v7 += 40;
      }

      while (v8 < v22);
      LODWORD(v2) = *(this + 34);
    }
  }

  else
  {
    v6 = 0;
  }

  v18 = 0uLL;
  v9 = v2 + v6;
  if (v2 + v6)
  {
    v23 = 0;
    HIDWORD(v18) = realloc_array(0, &v23, 40 * v9, 0, 0, 1) / 0x28;
    v10 = v23;
    *&v18 = v23;
    LODWORD(v2) = *(this + 34);
  }

  else
  {
    v10 = 0;
  }

  DWORD2(v18) = v9;
  v11 = memcpy(v10, *(this + 29), 40 * v2);
  v12 = *(this + 34);
  v13 = v22;
  if (v22)
  {
    v14 = v21 + 16;
    v15 = *(this + 34);
    do
    {
      v16 = &v10[40 * v15];
      *v16 = *(v14 - 16);
      *(v16 + 1) = *(v14 - 8);
      *(v16 + 1) = *v14;
      *(v16 + 4) = *(v14 + 16);
      ++v15;
      v14 += 40;
      --v13;
    }

    while (v13);
  }

  FwdBwd::sortAndMergeNonEmittingCandidates(v11, &v18, v12);
  mrec_qsort_r<FBTokenCompareByScoreDecr>(v18, DWORD2(v18), 40);
  FwdBwd::copyWithCutoffCPU(this, v18, DWORD2(v18));
  DgnIArray<Utterance *>::~DgnIArray(&v18);
  return DgnIArray<Utterance *>::~DgnIArray(&v21);
}

void sub_2627BEC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  DgnIArray<Utterance *>::~DgnIArray(va);
  _Unwind_Resume(a1);
}

void FwdBwd::sortAndMergeNonEmittingCandidates(uint64_t a1, uint64_t a2, signed int a3)
{
  v3 = a3;
  mrec_qsort_r<FBTokenCompareByStateID>((*a2 + 40 * a3), (*(a2 + 8) - a3), 40);
  v5 = *(a2 + 8);
  if (v5 > v3)
  {
    v6 = *a2;
    v7 = v3;
    v8 = 10 * v3;
    do
    {
      if (v7)
      {
        v9 = v6[v8];
        if (v9 == v6[v8 - 10])
        {
          v10 = &v6[10 * v3 - 10];
          v12 = v10[1];
          v11 = v10 + 1;
          v13 = v12;
          v14 = *&v6[v8 + 2];
          if (v12 != -1.79769313e308)
          {
            if (v14 == -1.79769313e308)
            {
              v14 = v13;
            }

            else
            {
              if (v13 > v14)
              {
                v16 = *&v6[v8 + 2];
              }

              else
              {
                v16 = v13;
              }

              if (v13 > v14)
              {
                v14 = v13;
              }

              if (v16 - v14 >= -400.0)
              {
                v17 = exp(v16 - v14);
                v14 = v14 + log1p(v17);
              }
            }
          }

          *v11 = v14;
          goto LABEL_18;
        }
      }

      else
      {
        v9 = *v6;
      }

      v15 = &v6[10 * v3];
      *v15 = v9;
      *(v15 + 1) = *&v6[v8 + 2];
      *(v15 + 1) = *&v6[v8 + 4];
      *(v15 + 4) = *&v6[v8 + 8];
      ++v3;
LABEL_18:
      ++v7;
      v8 += 10;
    }

    while (v5 != v7);
  }

  v18 = *(a2 + 12);
  if (v3 > v18)
  {
    DgnArray<FstSearchLeafLatticeDurationBackoffActiveToken>::reallocElts(a2, v3 - v18, 0);
  }

  *(a2 + 8) = v3;
}

unint64_t mrec_qsort_r<FBTokenCompareByScoreDecr>(unint64_t result, unint64_t a2, int64_t a3)
{
  v4 = -a3;
  v5 = a3 != 8;
  v6 = ((result | a3) & 7) == 0;
  if (((result | a3) & 7) != 0)
  {
    v7 = 2;
  }

  else
  {
    v7 = a3 != 8;
  }

  if (a2 >= 7)
  {
    v20 = a3 >> 3;
    while (1)
    {
      v21 = (result + (a2 >> 1) * a3);
      if (a2 != 7)
      {
        v25 = result + (a2 - 1) * a3;
        if (a2 < 0x29)
        {
          v27 = result;
          v76 = result + (a2 - 1) * a3;
        }

        else
        {
          v26 = (a2 >> 3) * a3;
          v27 = result + v26;
          v28 = *(result + 8);
          v29 = *(result + v26 + 8);
          v30 = *(result + 2 * v26 + 8);
          if (v28 <= v29)
          {
            if (v29 >= v30)
            {
              if (v28 <= v30)
              {
                v27 = result + 2 * v26;
              }

              else
              {
                v27 = result;
              }
            }
          }

          else if (v29 <= v30)
          {
            if (v28 <= v30)
            {
              v27 = result;
            }

            else
            {
              v27 = result + 2 * v26;
            }
          }

          v80 = *(v21 - v26 + 8);
          v81 = v21[1];
          v82 = *(v21 + v26 + 8);
          if (v80 <= v81)
          {
            if (v81 >= v82)
            {
              if (v80 <= v82)
              {
                v21 = (v21 + v26);
              }

              else
              {
                v21 = (v21 - v26);
              }
            }
          }

          else if (v81 <= v82)
          {
            if (v80 <= v82)
            {
              v21 = (v21 - v26);
            }

            else
            {
              v21 = (v21 + v26);
            }
          }

          v83 = v25 - 2 * v26;
          v76 = v25 - v26;
          v84 = *(v83 + 8);
          v85 = *(v76 + 8);
          v86 = *(v25 + 8);
          if (v84 <= v85)
          {
            if (v85 >= v86)
            {
              if (v84 <= v86)
              {
                v76 = result + (a2 - 1) * a3;
              }

              else
              {
                v76 = v83;
              }
            }
          }

          else if (v85 <= v86)
          {
            if (v84 <= v86)
            {
              v76 = v83;
            }

            else
            {
              v76 = result + (a2 - 1) * a3;
            }
          }
        }

        v77 = *(v27 + 8);
        v78 = v21[1];
        v79 = *(v76 + 8);
        if (v77 <= v78)
        {
          if (v78 >= v79)
          {
            if (v77 <= v79)
            {
              v21 = v76;
            }

            else
            {
              v21 = v27;
            }
          }
        }

        else if (v78 <= v79)
        {
          if (v77 <= v79)
          {
            v21 = v27;
          }

          else
          {
            v21 = v76;
          }
        }
      }

      if (v7)
      {
        if (v6)
        {
          v22 = result;
          v23 = a3 >> 3;
          do
          {
            v24 = *v22;
            *v22++ = *v21;
            *v21++ = v24;
            --v23;
          }

          while (v23);
        }

        else
        {
          v32 = a3;
          v33 = result;
          do
          {
            v34 = *v33;
            *v33++ = *v21;
            *v21 = v34;
            v21 = (v21 + 1);
            --v32;
          }

          while (v32);
        }
      }

      else
      {
        v31 = *result;
        *result = *v21;
        *v21 = v31;
      }

      v35 = 0;
      v36 = result + a3;
      v37 = (result + (a2 - 1) * a3);
      v38 = v37;
      v39 = (result + a3);
      v40 = (result + a3);
LABEL_38:
      while (v39 <= v38)
      {
        v41 = v39[1];
        v42 = *(result + 8);
        if (v41 < v42)
        {
          break;
        }

        if (v41 == v42)
        {
          if (v7)
          {
            v43 = 0;
            if (v6)
            {
              do
              {
                v44 = *&v40[v43];
                v40[v43] = *&v39[v43];
                v39[v43++] = v44;
              }

              while (v20 != v43);
            }

            else
            {
              do
              {
                v45 = *(v40 + v43);
                *(v40 + v43) = *(v39 + v43);
                *(v39 + v43++) = v45;
              }

              while (a3 != v43);
            }
          }

          else
          {
            v56 = *v40;
            *v40 = *v39;
            *v39 = v56;
          }

          v40 = (v40 + a3);
          v35 = 1;
        }

        v39 = (v39 + a3);
      }

      while (v39 <= v38)
      {
        v50 = v38[1];
        v51 = *(result + 8);
        if (v50 == v51)
        {
          v52 = 0;
        }

        else
        {
          v52 = -1;
        }

        if (v50 < v51)
        {
          v52 = 1;
        }

        if (v52 < 0)
        {
          if (v7)
          {
            v53 = 0;
            if (v6)
            {
              do
              {
                v54 = v39[v53];
                v39[v53] = v38[v53];
                v38[v53++] = v54;
              }

              while (v20 != v53);
            }

            else
            {
              do
              {
                v55 = *(v39 + v53);
                *(v39 + v53) = *(v38 + v53);
                *(v38 + v53++) = v55;
              }

              while (a3 != v53);
            }
          }

          else
          {
            v57 = *v39;
            *v39 = *v38;
            *v38 = v57;
          }

          v39 = (v39 + a3);
          v38 = (v38 + v4);
          v35 = 1;
          goto LABEL_38;
        }

        if (!v52)
        {
          if (v7)
          {
            v46 = 0;
            if (v6)
            {
              do
              {
                v47 = v38[v46];
                v38[v46] = v37[v46];
                v37[v46++] = v47;
              }

              while (v20 != v46);
            }

            else
            {
              do
              {
                v48 = *(v38 + v46);
                *(v38 + v46) = *(v37 + v46);
                *(v37 + v46++) = v48;
              }

              while (a3 != v46);
            }
          }

          else
          {
            v49 = *v38;
            *v38 = *v37;
            *v37 = v49;
          }

          v37 = (v37 + v4);
          v35 = 1;
        }

        v38 = (v38 + v4);
      }

      v58 = result + a2 * a3;
      if (!v35)
      {
        break;
      }

      v59 = v39 - v40;
      if ((v40 - result) >= v39 - v40)
      {
        v60 = v39 - v40;
      }

      else
      {
        v60 = v40 - result;
      }

      if (v60)
      {
        if (v6)
        {
          v61 = (v39 - v60);
          v62 = v60 >> 3;
          v63 = result;
          do
          {
            v64 = *v63;
            *v63++ = *v61;
            *v61++ = v64;
            --v62;
          }

          while (v62);
        }

        else
        {
          v65 = -v60;
          v66 = result;
          do
          {
            v67 = *v66;
            *v66++ = *(v39 + v65);
            *(v39 + v65) = v67;
            v68 = __CFADD__(v65++, 1);
          }

          while (!v68);
        }
      }

      v69 = v37 - v38;
      v70 = v58 - (v37 + a3);
      if (v37 - v38 < v70)
      {
        v70 = v37 - v38;
      }

      if (v70)
      {
        if (v6)
        {
          v71 = (v58 - v70);
          v72 = v70 >> 3;
          do
          {
            v73 = *v39;
            *v39++ = *v71;
            *v71++ = v73;
            --v72;
          }

          while (v72);
        }

        else
        {
          v74 = -v70;
          do
          {
            v75 = *v39;
            *v39 = *(v58 + v74);
            v39 = (v39 + 1);
            *(v58 + v74) = v75;
            v68 = __CFADD__(v74++, 1);
          }

          while (!v68);
        }
      }

      if (v59 > a3)
      {
        result = mrec_qsort_r<FBTokenCompareByScoreDecr>();
      }

      if (v69 <= a3)
      {
        return result;
      }

      result = v58 - v69;
      a2 = v69 / a3;
      v6 = (((v58 - v69) | a3) & 7) == 0;
      if ((((v58 - v69) | a3) & 7) != 0)
      {
        v7 = 2;
      }

      else
      {
        v7 = v5;
      }

      if (a2 < 7)
      {
        goto LABEL_5;
      }
    }

    if ((a2 * a3) > a3)
    {
      v87 = result;
      do
      {
        if (v36 > result)
        {
          v88 = v87;
          v89 = v36;
          do
          {
            v90 = v89;
            v89 += v4;
            if (*(v89 + 8) >= *(v90 + 8))
            {
              break;
            }

            if (v7)
            {
              v91 = 0;
              if (v6)
              {
                v92 = v89;
                do
                {
                  v93 = *(v90 + 8 * v91);
                  *(v90 + 8 * v91) = *v92;
                  *v92++ = v93;
                  ++v91;
                }

                while (v20 != v91);
              }

              else
              {
                v95 = a3;
                do
                {
                  v96 = *(v90 + v91);
                  *(v90 + v91) = *(v88 + v91);
                  *(v88 + v91++) = v96;
                  --v95;
                }

                while (v95);
              }
            }

            else
            {
              v94 = *v90;
              *v90 = *v89;
              *v89 = v94;
            }

            v88 += v4;
          }

          while (v89 > result);
        }

        v36 += a3;
        v87 += a3;
      }

      while (v36 < v58);
    }
  }

  else
  {
LABEL_5:
    if ((a2 * a3) > a3)
    {
      v8 = result + a2 * a3;
      v9 = result + a3;
      v10 = result;
      do
      {
        if (v9 > result)
        {
          v11 = v10;
          v12 = v9;
          do
          {
            v13 = v12;
            v12 += v4;
            if (*(v12 + 8) >= *(v13 + 8))
            {
              break;
            }

            if (v7)
            {
              v14 = 0;
              if (v6)
              {
                v15 = v12;
                do
                {
                  v16 = *(v13 + 8 * v14);
                  *(v13 + 8 * v14) = *v15;
                  *v15++ = v16;
                  ++v14;
                }

                while (a3 >> 3 != v14);
              }

              else
              {
                v18 = a3;
                do
                {
                  v19 = *(v13 + v14);
                  *(v13 + v14) = *(v11 + v14);
                  *(v11 + v14++) = v19;
                  --v18;
                }

                while (v18);
              }
            }

            else
            {
              v17 = *v13;
              *v13 = *v12;
              *v12 = v17;
            }

            v11 += v4;
          }

          while (v12 > result);
        }

        v9 += a3;
        v10 += a3;
      }

      while (v9 < v8);
    }
  }

  return result;
}

char *mrec_qsort_r<FBTokenCompareByStateID>(char *result, unint64_t a2, int64_t a3)
{
  v4 = -a3;
  v5 = a3 != 8;
  v6 = ((result | a3) & 7) == 0;
  if (((result | a3) & 7) != 0)
  {
    v7 = 2;
  }

  else
  {
    v7 = a3 != 8;
  }

  if (a2 < 7)
  {
LABEL_162:
    if ((a2 * a3) > a3)
    {
      v88 = &result[a2 * a3];
      v89 = &result[a3];
      v90 = result;
      do
      {
        if (v89 > result)
        {
          v91 = v90;
          v92 = v89;
          do
          {
            v93 = v92;
            v92 = (v92 + v4);
            if (*v92 <= *v93)
            {
              break;
            }

            if (v7)
            {
              v94 = 0;
              if (v6)
              {
                v95 = v92;
                do
                {
                  v96 = *&v93[2 * v94];
                  *&v93[2 * v94] = *v95;
                  *v95++ = v96;
                  ++v94;
                }

                while (a3 >> 3 != v94);
              }

              else
              {
                v98 = a3;
                do
                {
                  v99 = *(v93 + v94);
                  *(v93 + v94) = *(v91 + v94);
                  *(v91 + v94++) = v99;
                  --v98;
                }

                while (v98);
              }
            }

            else
            {
              v97 = *v93;
              *v93 = *v92;
              *v92 = v97;
            }

            v91 = (v91 + v4);
          }

          while (v92 > result);
        }

        v89 += a3;
        v90 = (v90 + a3);
      }

      while (v89 < v88);
    }
  }

  else
  {
    v8 = a3 >> 3;
    while (1)
    {
      v9 = &result[(a2 >> 1) * a3];
      if (a2 != 7)
      {
        v10 = &result[(a2 - 1) * a3];
        if (a2 <= 0x28)
        {
          v22 = *result;
          v33 = *v9;
          v13 = result;
          v42 = *v10;
        }

        else
        {
          v11 = (a2 >> 3) * a3;
          v12 = 2 * v11;
          v13 = &result[2 * v11];
          v14 = *result;
          v15 = *&result[v11];
          v16 = *v13;
          if (*result >= *v13)
          {
            v17 = *v13;
          }

          else
          {
            v17 = *result;
          }

          if (v14 >= v16)
          {
            v18 = &result[2 * v11];
          }

          else
          {
            v18 = result;
          }

          if (v15 > v16)
          {
            v17 = *&result[v11];
            v18 = &result[v11];
          }

          if (v14 <= v16)
          {
            v19 = *v13;
          }

          else
          {
            v19 = *result;
          }

          if (v14 >= v16)
          {
            v13 = result;
          }

          v20 = v15 < v16;
          if (v15 >= v16)
          {
            v21 = v19;
          }

          else
          {
            v21 = *&result[v11];
          }

          if (v20)
          {
            v13 = &result[v11];
          }

          if (v14 < v15)
          {
            v22 = v21;
          }

          else
          {
            v22 = v17;
          }

          if (v14 >= v15)
          {
            v13 = v18;
          }

          v23 = -v11;
          v24 = &v9[-v11];
          v25 = &v9[v11];
          v26 = *v24;
          v27 = *v9;
          v28 = *v25;
          if (*v24 >= *v25)
          {
            v29 = *v25;
          }

          else
          {
            v29 = *v24;
          }

          if (v26 >= v28)
          {
            v30 = v25;
          }

          else
          {
            v30 = v24;
          }

          if (v27 > v28)
          {
            v29 = *v9;
            v30 = &result[(a2 >> 1) * a3];
          }

          if (v26 <= v28)
          {
            v31 = *v25;
          }

          else
          {
            v31 = *v24;
          }

          if (v26 >= v28)
          {
            v25 = v24;
          }

          if (v27 >= v28)
          {
            v32 = v31;
          }

          else
          {
            v32 = *v9;
          }

          if (v27 >= v28)
          {
            v9 = v25;
          }

          if (v26 < v27)
          {
            v33 = v32;
          }

          else
          {
            v33 = v29;
          }

          if (v26 >= v27)
          {
            v9 = v30;
          }

          v34 = &v10[-v12];
          v35 = &v10[v23];
          v36 = *v34;
          v37 = *v35;
          v38 = *v10;
          if (*v34 >= *v10)
          {
            v39 = *v10;
          }

          else
          {
            v39 = *v34;
          }

          if (v36 >= v38)
          {
            v40 = &result[(a2 - 1) * a3];
          }

          else
          {
            v40 = v34;
          }

          if (v37 > v38)
          {
            v39 = *v35;
            v40 = v35;
          }

          if (v36 <= v38)
          {
            v41 = *v10;
          }

          else
          {
            v41 = *v34;
          }

          if (v36 >= v38)
          {
            v10 = v34;
          }

          if (v37 >= v38)
          {
            v42 = v41;
          }

          else
          {
            v42 = *v35;
          }

          if (v37 < v38)
          {
            v10 = v35;
          }

          if (v36 >= v37)
          {
            v42 = v39;
            v10 = v40;
          }
        }

        if (v22 >= v42)
        {
          v43 = v10;
        }

        else
        {
          v43 = v13;
        }

        if (v33 > v42)
        {
          v43 = v9;
        }

        if (v22 >= v42)
        {
          v10 = v13;
        }

        if (v33 >= v42)
        {
          v9 = v10;
        }

        if (v22 >= v33)
        {
          v9 = v43;
        }
      }

      if (v7)
      {
        if (v6)
        {
          v44 = result;
          v45 = a3 >> 3;
          do
          {
            v46 = *v44;
            *v44 = *v9;
            v44 += 8;
            *v9 = v46;
            v9 += 8;
            --v45;
          }

          while (v45);
        }

        else
        {
          v48 = a3;
          v49 = result;
          do
          {
            v50 = *v49;
            *v49++ = *v9;
            *v9++ = v50;
            --v48;
          }

          while (v48);
        }
      }

      else
      {
        v47 = *result;
        *result = *v9;
        *v9 = v47;
      }

      v51 = 0;
      v52 = &result[a3];
      v53 = &result[(a2 - 1) * a3];
      v54 = v53;
      v55 = &result[a3];
      v56 = &result[a3];
LABEL_96:
      while (v55 <= v54 && *v55 <= *result)
      {
        if (*v55 == *result)
        {
          if (v7)
          {
            v57 = 0;
            if (v6)
            {
              do
              {
                v58 = *&v56[8 * v57];
                *&v56[8 * v57] = *&v55[8 * v57];
                *&v55[8 * v57++] = v58;
              }

              while (v8 != v57);
            }

            else
            {
              do
              {
                v59 = v56[v57];
                v56[v57] = v55[v57];
                v55[v57++] = v59;
              }

              while (a3 != v57);
            }
          }

          else
          {
            v68 = *v56;
            *v56 = *v55;
            *v55 = v68;
          }

          v56 += a3;
          v51 = 1;
        }

        v55 += a3;
      }

      while (v55 <= v54)
      {
        if (*v54 == *result)
        {
          v64 = 0;
        }

        else
        {
          v64 = -1;
        }

        if (*v54 > *result)
        {
          v64 = 1;
        }

        if (v64 < 0)
        {
          if (v7)
          {
            v65 = 0;
            if (v6)
            {
              do
              {
                v66 = *&v55[8 * v65];
                *&v55[8 * v65] = *&v54[8 * v65];
                *&v54[8 * v65++] = v66;
              }

              while (v8 != v65);
            }

            else
            {
              do
              {
                v67 = v55[v65];
                v55[v65] = v54[v65];
                v54[v65++] = v67;
              }

              while (a3 != v65);
            }
          }

          else
          {
            v69 = *v55;
            *v55 = *v54;
            *v54 = v69;
          }

          v55 += a3;
          v54 += v4;
          v51 = 1;
          goto LABEL_96;
        }

        if (!v64)
        {
          if (v7)
          {
            v60 = 0;
            if (v6)
            {
              do
              {
                v61 = *&v54[8 * v60];
                *&v54[8 * v60] = *&v53[8 * v60];
                *&v53[8 * v60++] = v61;
              }

              while (v8 != v60);
            }

            else
            {
              do
              {
                v62 = v54[v60];
                v54[v60] = v53[v60];
                v53[v60++] = v62;
              }

              while (a3 != v60);
            }
          }

          else
          {
            v63 = *v54;
            *v54 = *v53;
            *v53 = v63;
          }

          v53 += v4;
          v51 = 1;
        }

        v54 += v4;
      }

      v70 = &result[a2 * a3];
      if (!v51)
      {
        break;
      }

      v71 = v55 - v56;
      if (v56 - result >= v55 - v56)
      {
        v72 = v55 - v56;
      }

      else
      {
        v72 = v56 - result;
      }

      if (v72)
      {
        if (v6)
        {
          v73 = &v55[-v72];
          v74 = v72 >> 3;
          v75 = result;
          do
          {
            v76 = *v75;
            *v75 = *v73;
            v75 += 8;
            *v73 = v76;
            v73 += 8;
            --v74;
          }

          while (v74);
        }

        else
        {
          v77 = -v72;
          v78 = result;
          do
          {
            v79 = *v78;
            *v78++ = v55[v77];
            v55[v77] = v79;
            v80 = __CFADD__(v77++, 1);
          }

          while (!v80);
        }
      }

      v81 = v53 - v54;
      v82 = v70 - &v53[a3];
      if (v53 - v54 < v82)
      {
        v82 = v53 - v54;
      }

      if (v82)
      {
        if (v6)
        {
          v83 = &v70[-v82];
          v84 = v82 >> 3;
          do
          {
            v85 = *v55;
            *v55 = *v83;
            v55 += 8;
            *v83 = v85;
            v83 += 8;
            --v84;
          }

          while (v84);
        }

        else
        {
          v86 = -v82;
          do
          {
            v87 = *v55;
            *v55++ = v70[v86];
            v70[v86] = v87;
            v80 = __CFADD__(v86++, 1);
          }

          while (!v80);
        }
      }

      if (v71 > a3)
      {
        result = mrec_qsort_r<FBTokenCompareByStateID>();
      }

      if (v81 <= a3)
      {
        return result;
      }

      result = &v70[-v81];
      a2 = v81 / a3;
      v6 = (((v70 - v81) | a3) & 7) == 0;
      if ((((v70 - v81) | a3) & 7) != 0)
      {
        v7 = 2;
      }

      else
      {
        v7 = v5;
      }

      if (a2 < 7)
      {
        goto LABEL_162;
      }
    }

    if ((a2 * a3) > a3)
    {
      v100 = result;
      do
      {
        if (v52 > result)
        {
          v101 = v100;
          v102 = v52;
          do
          {
            v103 = v102;
            v102 = (v102 + v4);
            if (*v102 <= *v103)
            {
              break;
            }

            if (v7)
            {
              v104 = 0;
              if (v6)
              {
                v105 = v102;
                do
                {
                  v106 = *&v103[2 * v104];
                  *&v103[2 * v104] = *v105;
                  *v105++ = v106;
                  ++v104;
                }

                while (v8 != v104);
              }

              else
              {
                v108 = a3;
                do
                {
                  v109 = *(v103 + v104);
                  *(v103 + v104) = *(v101 + v104);
                  *(v101 + v104++) = v109;
                  --v108;
                }

                while (v108);
              }
            }

            else
            {
              v107 = *v103;
              *v103 = *v102;
              *v102 = v107;
            }

            v101 = (v101 + v4);
          }

          while (v102 > result);
        }

        v52 += a3;
        v100 = (v100 + a3);
      }

      while (v52 < v70);
    }
  }

  return result;
}

double FwdBwd::copyNonCondensedBackwardLinks(FwdBwd *this, unsigned int a2)
{
  FwdBwd::maybeReallocFwdBwdColumn(this, *(this + 40) + 2);
  v5 = *(this + 21) + 40 * (*(this + 40) + 1);
  v7 = *(v5 + 32);
  v6 = *(v5 + 36);
  if (a2 > v6)
  {
    DgnArray<CWIDAC>::reallocElts(v5 + 24, a2 - v6, 0);
  }

  *(v5 + 32) = a2;
  v8 = a2;
  if (v7 < a2)
  {
    v9 = a2 - v7;
    v10 = (*(v5 + 24) + 24 * v7 + 8);
    result = 0.0;
    do
    {
      *(v10 - 2) = -1;
      *v10 = xmmword_26288D570;
      v10 = (v10 + 24);
      --v9;
    }

    while (v9);
  }

  if (a2 >= 1)
  {
    v11 = (*(*(this + 21) + 40 * (*(this + 40) + 1) + 24) + 16);
    v12 = (*(this + 31) + 32);
    do
    {
      *(v11 - 4) = *(v12 - 2);
      v13 = *v12;
      v12 += 5;
      result = v13;
      *(v11 - 1) = v13;
      *v11 = 0xFFEFFFFFFFFFFFFFLL;
      v11 += 3;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t FwdBwd::maybeReallocFwdBwdColumn(uint64_t this, unsigned int a2)
{
  v3 = this;
  v4 = *(this + 180);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {
    this = DgnArray<FstSearchLeafLatticeDurationBackoffActiveToken>::reallocElts(this + 168, v6, 0);
  }

  v7 = *(v3 + 176);
  if (v7 <= a2)
  {
    if (v7 < a2)
    {
      v11 = a2 - v7;
      v12 = 40 * v7;
      do
      {
        v13 = *(v3 + 168) + v12;
        *(v13 + 32) = 0;
        *v13 = 0uLL;
        *(v13 + 16) = 0uLL;
        v12 += 40;
        --v11;
      }

      while (v11);
    }
  }

  else if (v7 > a2)
  {
    v8 = v7;
    v9 = 40 * v7 - 32;
    do
    {
      --v8;
      v10 = *(v3 + 168) + v9;
      DgnIArray<Utterance *>::~DgnIArray(v10 + 16);
      this = DgnIArray<Utterance *>::~DgnIArray(v10);
      v9 -= 40;
    }

    while (v8 > a2);
  }

  *(v3 + 176) = a2;
  return this;
}

uint64_t FwdBwd::doFrame(FwdBwd *this, unsigned int a2, int a3, SearchStats *a4)
{
  FwdBwd::getNumOutPortsItf(this);
  v6 = FwdBwd::cumulativeSumsItf(this, *(this + 27), *(this + 34));
  v7 = *(this + 65);
  if (v6 > v7)
  {
    DgnArray<FstSearchLeafLatticeDurationBackoffActiveToken>::reallocElts(this + 248, v6 - v7, 0);
  }

  *(this + 64) = v6;
  FwdBwd::initCandidateStatesItf(this);
  mrec_qsort_r<FBTokenCompareByStateID>(*(this + 31), v6, 40);
  v8 = vcvtpd_s64_f64(vcvtd_n_f64_s32(v6, 8uLL));
  v9 = *(this + 69);
  if (v8 > v9)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 264, v8 - v9, 0);
  }

  *(this + 68) = v8;
  if (!*(this + 23) || *(gParFwdBwdUseCPUGetBlockSizes + 41) == 1)
  {
    FwdBwd::getStateBlockSizesCPU(this, v6, 256, v8);
  }

  v10 = FwdBwd::cumulativeSumsItf(this, *(this + 33), v8);
  v11 = *(this + 73);
  if (v10 > v11)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 280, v10 - v11, 0);
  }

  *(this + 72) = v10;
  if (!*(this + 23) || *(gParFwdBwdUseCPUInitCandidateBlocks + 41) == 1)
  {
    FwdBwd::initCandidateBlocksCPU(this, v6, 256, v8);
  }

  FwdBwd::copyNonCondensedBackwardLinks(this, v6);
  v12 = *(this + 77);
  if (v10 > v12)
  {
    DgnArray<FstSearchLeafLatticeDurationBackoffActiveToken>::reallocElts(this + 296, v10 - v12, 0);
  }

  *(this + 76) = v10;
  if (!*(this + 23) || *(gParFwdBwdUseCPUDoStep + 41) == 1)
  {
    FwdBwd::doStepFwdBwdCPU(this, v6, v10);
  }

  mrec_qsort_r<FBTokenCompareByScoreDecr>(*(this + 37), v10, 40);
  if (!*(this + 23) || *(gParFwdBwdUseCPUCopyWithCutoff + 41) == 1)
  {
    FwdBwd::copyWithCutoffCPU(this, *(this + 37), v10);
  }

  FwdBwd::propagateNulls(this);
  *(this + 40) = a2;

  return FwdBwd::copyActiveToFwdProbs(this, a2);
}

uint64_t FwdBwd::copyActiveToFwdProbs(FwdBwd *this, unsigned int a2)
{
  v4 = *(this + 34);
  if (v4)
  {
    v5 = (*(this + 29) + 8);
    v6 = -1.79769313e308;
    do
    {
      v7 = *v5;
      if (v6 != -1.79769313e308)
      {
        if (v7 == -1.79769313e308)
        {
          v7 = v6;
        }

        else
        {
          if (v6 > v7)
          {
            v8 = *v5;
          }

          else
          {
            v8 = v6;
          }

          if (v6 > v7)
          {
            v7 = v6;
          }

          if (v8 - v7 >= -400.0)
          {
            v9 = exp(v8 - v7);
            v7 = v7 + log1p(v9);
          }
        }
      }

      v5 += 5;
      v6 = v7;
      --v4;
    }

    while (v4);
  }

  else
  {
    v7 = -1.79769313e308;
  }

  result = FwdBwd::maybeReallocFwdBwdColumn(this, a2 + 1);
  v11 = *(this + 21) + 40 * a2;
  *v11 = v7;
  if (*(this + 34))
  {
    v12 = 0;
    while (1)
    {
      v13 = *(this + 29);
      v14 = v13 + 40 * v12;
      v15 = *(v14 + 8) - v7;
      *(v14 + 8) = v15;
      v16 = *(v14 + 20);
      if (v16 < 0)
      {
        v17 = 0.0;
      }

      else
      {
        result = PelScoreCache::getScoreNoBackoff(*(this + 4), *(v14 + 20));
        v17 = -result;
        v13 = *(this + 29);
        v15 = *(v13 + 40 * v12 + 8);
      }

      v18 = (v13 + 40 * v12);
      v19 = *v18;
      v20 = *(v18 + 3);
      v22 = *(v11 + 16);
      v21 = *(v11 + 20);
      v23 = v22 + 1;
      if (v22 + 1 > v21)
      {
        break;
      }

      *(v11 + 16) = v23;
      v24 = 0uLL;
      if (v22 != -1)
      {
        goto LABEL_24;
      }

      v28 = -1;
LABEL_27:
      v29 = *(v11 + 8) + 56 * v28;
      *v29 = v19;
      *(v29 + 8) = v15;
      *(v29 + 16) = 0;
      *(v29 + 24) = 0;
      *(v29 + 32) = v17;
      *(v29 + 40) = 0;
      *(v29 + 44) = v16;
      *(v29 + 48) = v20;
      if (++v12 >= *(this + 34))
      {
        return result;
      }
    }

    result = DgnArray<DiskNgramContext>::reallocElts(v11 + 8, v22 + 1 - v21, 0);
    *(v11 + 16) = v23;
    v24 = 0uLL;
LABEL_24:
    v25 = 56 * v22;
    do
    {
      v26 = *(v11 + 8) + v25;
      *v26 = -1;
      *(v26 + 8) = v24;
      *(v26 + 24) = v24;
      *(v26 + 40) = 0;
      *(v26 + 44) = -1;
      *(v26 + 52) = 0;
      ++v22;
      v27 = *(v11 + 16);
      v25 += 56;
    }

    while (v22 < v27);
    v28 = v27 - 1;
    goto LABEL_27;
  }

  return result;
}

uint64_t FwdBwd::endTopRecPassSyncRecog(FwdBwd *this)
{
  FwdBwd::doBackwardPass(this);

  return SearchItf::endTopRecPassSyncRecogBase(this);
}

void FwdBwd::doBackwardPass(FwdBwd *this)
{
  v2 = *(this + 44);
  v3 = *(this + 21) + 40 * (v2 - 1);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(this + 23);
    v6 = (*(v3 + 8) + 16);
    while (1)
    {
      v7 = *(v6 - 4);
      if (!v5)
      {
        break;
      }

      v8 = 0.0;
      if (*(v5 + 120) > v7)
      {
        goto LABEL_5;
      }

LABEL_6:
      v9 = v8 + *(v6 - 1);
      *v6 = v8;
      v6[1] = v9;
      v6 += 7;
      if (!--v4)
      {
        v10 = 0;
        do
        {
          FwdBwd::updateBackwardProbNullArcs(this, v3, v10++);
        }

        while (v10 < *(v3 + 16));
        goto LABEL_11;
      }
    }

    v8 = 0.0;
    if (*(*(this + 5) + 160) == v7)
    {
      goto LABEL_6;
    }

LABEL_5:
    v8 = -1.79769313e308;
    goto LABEL_6;
  }

LABEL_11:
  if ((v2 - 1) >= 1)
  {
    do
    {
      FwdBwd::doBackwardStep(this, --v2);
    }

    while (v2 > 1);
  }
}

void FwdBwd::printSize(FwdBwd *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fwdbwd.cpp", 2459, &v29);
  if (v30)
  {
    v16 = v29;
  }

  else
  {
    v16 = &unk_26288D580;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26288D580, a3, &unk_26288D580, v16);
  DgnString::~DgnString(&v29);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26288D580);
  v27 = 0;
  v28 = 0;
  SearchItf::printSize(this, a2, (a3 + 1), &v28, &v27, &v27);
  *a4 += v28;
  *a5 += v27;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fwdbwd.cpp", 2467, &v29);
  if (v30)
  {
    v25 = v29;
  }

  else
  {
    v25 = &unk_26288D580;
  }

  v26 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, v22, v23, v24, a3, &unk_26288D580, (35 - a3), (35 - a3), v25, *a4, *a5, *a6);
  DgnString::~DgnString(&v29);
}

void sub_2627C02E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t FwdBwd::findBestPath(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = *(a1 + 152);
  v8 = *(a2 + 8);
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    *a2 = MemChunkAlloc(*(a1 + 152), 0);
    *(a2 + 8) = v7;
  }

  else if (!v8)
  {
    goto LABEL_10;
  }

  v10 = 0;
  do
  {
    *(*a2 + v10++) = 0;
  }

  while (v10 < *(a2 + 8));
LABEL_10:
  v11 = *(a1 + 136);
  if (v11)
  {
    v12 = *(a1 + 232) + 8;
    v13 = -1.79769313e308;
    v14 = 0xFFFFFFFFLL;
    do
    {
      if (*(*(a1 + 40) + 160) == *(v12 - 8))
      {
        v15 = *(v12 + 8);
        if (v15 != -1 && *(*(a1 + 144) + 12 * v15 + 8) == *(a1 + 160))
        {
          if (v13 < *v12)
          {
            v13 = *v12;
          }

          v14 = *(v12 + 8);
        }
      }

      v12 += 40;
      --v11;
    }

    while (v11);
    if (v14 == 0xFFFFFFFFLL)
    {
      result = 0;
    }

    else
    {
      result = 1;
      do
      {
        *(*a2 + v14) = 1;
        v14 = *(*(a1 + 144) + 12 * v14);
      }

      while (v14 != -1);
    }
  }

  else
  {
    result = 0;
    v13 = -1.79769313e308;
  }

  v17 = -v13;
  if (v13 == -1.79769313e308)
  {
    v17 = 1879048192;
  }

  *a4 = v17;
  return result;
}

uint64_t FwdBwd::beginTopRecSyncRecog(FwdBwd *this, VirtMap *a2)
{
  v3 = *(this + 4);
  v4 = *(this + 61);
  v5 = v3;
  if (v3 > v4)
  {
    DgnArray<FstSearchLeafLatticeDurationBackoffActiveToken>::reallocElts(this + 232, v3 - v4, 0);
    v5 = *(this + 4);
  }

  *(this + 60) = v3;
  *(this + 34) = 0;
  v6 = *(this + 57);
  if (v5 > v6)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 216, v5 - v6, 0);
  }

  *(this + 56) = v5;
  v7 = **this;

  return v7(this);
}

uint64_t FwdBwd::endTopRecSyncRecog(FwdBwd *this)
{
  v2 = *(this + 29);
  if (v2)
  {
    MemChunkFree(v2, 0);
    *(this + 29) = 0;
  }

  *(this + 30) = 0;
  v3 = *(this + 31);
  if (v3)
  {
    MemChunkFree(v3, 0);
    *(this + 31) = 0;
  }

  *(this + 32) = 0;
  v4 = *(this + 33);
  if (v4)
  {
    MemChunkFree(v4, 0);
    *(this + 33) = 0;
  }

  *(this + 34) = 0;
  v5 = *(this + 35);
  if (v5)
  {
    MemChunkFree(v5, 0);
    *(this + 35) = 0;
  }

  *(this + 36) = 0;
  v6 = *(this + 37);
  if (v6)
  {
    MemChunkFree(v6, 0);
    *(this + 37) = 0;
  }

  *(this + 38) = 0;
  v7 = *(this + 27);
  if (v7)
  {
    MemChunkFree(v7, 0);
    *(this + 27) = 0;
  }

  *(this + 28) = 0;
  DgnArray<FwdBwdColumn>::releaseAll(this + 168);
  return *(this + 14);
}

void *DgnArray<FwdBwdColumn>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 40 * v2 - 16;
    do
    {
      v4 = DgnIArray<Utterance *>::~DgnIArray(*a1 + v3);
      DgnIArray<Utterance *>::~DgnIArray(v4 - 16);
      v3 -= 40;
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

void FwdBwd::buildWordLattice(uint64_t a1, unint64_t a2, void *a3)
{
  Node = Lattice<WordLatticeLC>::createNode(a2);
  v6 = *(a1 + 152);
  v7 = (v6 - 1);
  if (v6 - 1 >= 0)
  {
    v8 = Node;
    v9 = 0;
    v27 = 0;
    v10 = 0;
    v11 = 12 * (v6 - 1);
    v12 = 0xFFFFFF;
    do
    {
      if (*(*a3 + v7))
      {
        v13 = *(a1 + 144);
        v15 = *(v13 + v11 + 4);
        v14 = *(v13 + v11 + 8);
        v16 = *(v13 + v11);
        v17 = v27;
        if (v15 == 16777209)
        {
          v17 = v14 - (v9 + v10);
        }

        v27 = v17;
        if (v15 != 16777209)
        {
          v12 = *(v13 + v11 + 4);
        }

        v10 = v14 - v9;
        if ((v16 & 0x80000000) != 0 || *(v13 + 12 * v16 + 4) != 16777209)
        {
          v18 = Lattice<WordLatticeLC>::createNode(a2);
          ArcGraph::lexToCWIDAC(*(a1 + 40), v12, v19, v20, v21, v22, v23, v24, v31);
          memset(v29, 0, sizeof(v29));
          v30 = 0;
          WordLatticeLC::WordLatticeLC(v28, v31, v9, v10, v27, v29);
          Lattice<WordLatticeLC>::maybeCreateAndConnectLinkAvoidMultiLinks(a2, v8, v18, v28);
          v9 = *(*(a1 + 144) + v11 + 8);
          WordLatticeLC::~WordLatticeLC(v28);
          v10 = 0;
          v8 = v18;
        }
      }

      v11 -= 12;
    }

    while (v7-- > 0);
  }
}

void sub_2627C0798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WordLatticeLC::~WordLatticeLC(va);
  _Unwind_Resume(a1);
}

void FwdBwd::updateBackwardProbNullArcs(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 8) + 56 * a3;
  if ((*(v3 + 40) & 1) == 0)
  {
    *(v3 + 40) = 1;
    v6 = *v3;
    v7 = *(a1 + 184);
    if (v7)
    {
      if (*(v7 + 120) > v6)
      {
        v23 = 0;
        v6 = *(*(v7 + 112) + 4 * v6);
        do
        {
LABEL_7:
          v8 = *(a1 + 40);
          v9 = *(v8 + 152);
          v10 = *(v9 + 4 * v6);
          v11 = *(v9 + 4 * (v6 + 1));
          v23 = v11;
          if (*(v8 + 140) <= v11)
          {
            v12 = *(a1 + 184);
            if (v12)
            {
              if (*(v8 + 160) == v11)
              {
                v11 = *(v12 + 120);
              }

              else
              {
                v11 = *(*HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(v12, &v23) + 4);
              }

              v23 = v11;
            }

            v13 = *(a2 + 16);
            if (v13)
            {
              v14 = 0;
              v15 = (v10 >> 20) & 0x3FF;
              v16 = *(a2 + 8);
              while (1)
              {
                v17 = *v16;
                v16 += 14;
                if (v17 == v11)
                {
                  break;
                }

                if (v13 == ++v14)
                {
                  goto LABEL_30;
                }
              }

              if ((v14 & 0x80000000) == 0)
              {
                FwdBwd::updateBackwardProbNullArcs(a1, a2, v14);
                v18 = *(v3 + 16);
                v19 = *(a2 + 8) + 56 * (v14 & 0x7FFFFFFF);
                v20 = *(v19 + 16) + v15;
                if (v18 != -1.79769313e308)
                {
                  if (v20 == -1.79769313e308)
                  {
                    v20 = *(v3 + 16);
                  }

                  else
                  {
                    if (v18 > v20)
                    {
                      v21 = *(v19 + 16) + v15;
                    }

                    else
                    {
                      v21 = *(v3 + 16);
                    }

                    if (v18 > v20)
                    {
                      v20 = *(v3 + 16);
                    }

                    if (v21 - v20 >= -400.0)
                    {
                      v22 = exp(v21 - v20);
                      v20 = v20 + log1p(v22);
                    }
                  }
                }

                *(v3 + 16) = v20;
              }
            }
          }

LABEL_30:
          v6 += 2;
        }

        while ((v10 & 0x80000000) == 0);
      }
    }

    else if (*(*(a1 + 40) + 160) != v6)
    {
      v23 = 0;
      goto LABEL_7;
    }

    *(v3 + 24) = *(v3 + 8) + *(v3 + 16);
  }
}

void FwdBwd::doBackwardStep(FwdBwd *this, unsigned int a2)
{
  v3 = *(this + 21) + 40 * (a2 - 1);
  FwdBwd::doBackwardStepFromEmittingItf(this, a2);
  if (*(v3 + 16))
  {
    v4 = 0;
    do
    {
      FwdBwd::updateBackwardProbNullArcs(this, v3, v4++);
    }

    while (v4 < *(v3 + 16));
  }
}

void FwdBwd::doBackwardStepFromEmittingCPU(FwdBwd *this, unsigned int a2)
{
  v2 = *(this + 21);
  v3 = v2 + 40 * (a2 - 1);
  if (*(v3 + 16))
  {
    v5 = 0;
    v6 = 0;
    v7 = v2 + 40 * a2;
    v8 = *(v3 + 8);
    do
    {
      FwdBwd::updateBackwardProbFromEmittingCPU(this, (v8 + v5), v7);
      v8 = *(v3 + 8);
      *(v8 + v5 + 40) = 0;
      ++v6;
      v5 += 56;
    }

    while (v6 < *(v3 + 16));
  }
}

void FwdBwd::updateBackwardProbFromEmittingCPU(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v5 = *a2;
  if (*(v4 + 160) == *a2)
  {
    v6 = -1.79769313e308;
  }

  else
  {
    v8 = *(v4 + 140);
    if (v8 <= v5)
    {
      goto LABEL_11;
    }

    v9 = *(a3 + 16);
    if (!v9)
    {
      goto LABEL_11;
    }

    v10 = 0;
    v11 = *(a3 + 8);
    while (1)
    {
      v12 = *v11;
      v11 += 14;
      if (v12 == v5)
      {
        break;
      }

      if (v9 == ++v10)
      {
        goto LABEL_11;
      }
    }

    if ((v10 & 0x80000000) != 0)
    {
LABEL_11:
      v14 = -1.79769313e308;
    }

    else
    {
      v13 = *(a3 + 8) + 56 * (v10 & 0x7FFFFFFF);
      v14 = *(v13 + 16) + *(v13 + 32);
    }

    v15 = *(v4 + 152);
    do
    {
      v16 = *(v15 + 4 * v5);
      v17 = *(v15 + 4 * (v5 + 1));
      if (v8 > v17)
      {
        v18 = *(a3 + 16);
        if (v18)
        {
          v19 = 0;
          v20 = (v16 >> 20) & 0x3FF;
          v21 = *(a3 + 8);
          while (1)
          {
            v22 = *v21;
            v21 += 14;
            if (v22 == v17)
            {
              break;
            }

            if (v18 == ++v19)
            {
              goto LABEL_30;
            }
          }

          if ((v19 & 0x80000000) == 0)
          {
            v23 = *(a3 + 8) + 56 * (v19 & 0x7FFFFFFF);
            v24 = *(v23 + 16) + *(v23 + 32) + v20;
            if (v14 == -1.79769313e308)
            {
              v14 = *(v23 + 16) + *(v23 + 32) + v20;
            }

            else if (v24 != -1.79769313e308)
            {
              if (v14 > v24)
              {
                v25 = *(v23 + 16) + *(v23 + 32) + v20;
              }

              else
              {
                v25 = v14;
              }

              if (v14 <= v24)
              {
                v14 = *(v23 + 16) + *(v23 + 32) + v20;
              }

              if (v25 - v14 >= -400.0)
              {
                v26 = exp(v25 - v14);
                v14 = v14 + log1p(v26);
              }
            }
          }
        }
      }

LABEL_30:
      v5 += 2;
    }

    while ((v16 & 0x80000000) == 0);
    v6 = v14 - *a3;
  }

  *(a2 + 2) = v6;
}

uint64_t FwdBwd::updateBackwardLinksGPU(uint64_t this, unsigned int a2)
{
  if (*(gParFwdBwdUseCPUUpdateBackwardLinks + 41) == 1)
  {
    v2 = *(this + 168) + 40 * a2;
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = 0;
      v5 = *(v2 + 8);
      v6 = *(v2 + 24) + 16;
      do
      {
        v7 = v5 + 56 * v4;
        v8 = *(v7 + 48);
        if ((v8 & 0x80000000) == 0)
        {
          v9 = *(v7 + 52);
          if (v9 >= 1)
          {
            v10 = v9 + v8;
            v11 = *(v7 + 32);
            v12 = *(v7 + 16);
            v13 = (v6 + 24 * v8);
            do
            {
              *v13 = *(v13 - 1) + v11 + v12;
              v13 += 3;
              ++v8;
            }

            while (v10 > v8);
          }
        }

        ++v4;
      }

      while (v4 != v3);
    }
  }

  return this;
}

void FwdBwd::doBackwardStepFromEmittingGPU(FwdBwd *this, unsigned int a2)
{
  FwdBwd::updateBackwardLinksGPU(this, a2);
  v4 = *(this + 21) + 40 * a2;
  v5 = 40 * a2;
  mrec_qsort_r<FBTokenCompareByStateID>(*(v4 + 24), *(v4 + 32), 24);
  v6 = a2 - 1;
  FwdBwd::getNumOutPortsFromFwdBwdProbsGPU(this, v6);
  FwdBwd::cumulativeSumsItf(this, *(this + 27), *(*(this + 21) + 40 * v6 + 16));
  v7 = *(*(this + 21) + v5);

  FwdBwd::makeBackwardDecision(this, v6, v7);
}

void FwdBwd::doBackwardStepFromEmittingItf(FwdBwd *this, unsigned int a2)
{
  if (*(this + 23))
  {
    FwdBwd::doBackwardStepFromEmittingGPU(this, a2);
  }

  else
  {
    FwdBwd::doBackwardStepFromEmittingCPU(this, a2);
  }
}

void FwdBwdGPUData::~FwdBwdGPUData(FwdBwdGPUData *this)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 176);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 160);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 144);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 128);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 112);

  Hash<int,int,IntToUintScope,unsigned int>::~Hash(this);
}

FwdBwdGPUData *FwdBwd::loadArcGraphOnGPU(FwdBwd *this)
{
  result = *(this + 23);
  if (result)
  {
    return FwdBwdGPUData::loadArcGraph(result, *(this + 5));
  }

  return result;
}

uint64_t FwdBwdGPUData::loadArcGraph(FwdBwdGPUData *this, const ArcGraph *a2)
{
  Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::removeAll(this);
  *(this + 30) = 0;
  *(this + 34) = 0;
  *(this + 42) = 0;
  *(this + 46) = 0;
  Hash<int,int,IntToUintScope,unsigned int>::Hash(v63, 0, 16);
  if (*(a2 + 40))
  {
    v4 = 0;
    do
    {
      v5 = *(a2 + 35);
      v6 = v5 > v4;
      v7 = *(a2 + 19);
      do
      {
        v8 = *(v7 + 4 * v4);
        v9 = v4 + 1;
        v4 += 2;
        if (v5 > *(v7 + 4 * v9))
        {
          ++v6;
        }
      }

      while ((v8 & 0x80000000) == 0);
      v10 = *(this + 34);
      if (v6 >= v10)
      {
        v11 = *(this + 35);
        if (v6 + 1 > v11)
        {
          DgnPrimArray<unsigned int>::reallocElts(this + 128, v6 + 1 - v11, 0);
        }

        *(this + 34) = v6 + 1;
        v12 = *(this + 16);
        do
        {
          *(v12 + 4 * v10++) = 0;
        }

        while (v10 <= v6);
      }

      ++*(*(this + 16) + 4 * v6);
    }

    while (*(a2 + 40) != v4);
  }

  v61 = 0;
  v62 = 0;
  if (*(this + 34))
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    do
    {
      if (v14 == HIDWORD(v62))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v61, 1, 1);
        v14 = v62;
        v13 = v61;
      }

      *(v13 + 4 * v14) = v16;
      v14 = v62 + 1;
      LODWORD(v62) = v62 + 1;
      v16 += *(*(this + 16) + 4 * v15++);
    }

    while (v15 < *(this + 34));
    v17 = *(this + 31);
    if (v16 > v17)
    {
      DgnPrimArray<unsigned int>::reallocElts(this + 112, v16 - v17, 0);
    }

    *(this + 30) = v16;
    v18 = *(this + 47);
    if (v16 > v18)
    {
      DgnPrimArray<unsigned int>::reallocElts(this + 176, v16 - v18, 0);
    }
  }

  else
  {
    v16 = 0;
    *(this + 30) = 0;
  }

  *(this + 46) = v16;
  v19 = *(this + 43);
  if (v16 + 1 > v19)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 160, v16 + 1 - v19, 0);
  }

  *(this + 42) = v16 + 1;
  v20 = *(this + 20);
  if (v16)
  {
    v21 = *(this + 14);
    v22 = *(this + 22);
    v23 = v16;
    v24 = v16;
    v25 = *(this + 20);
    do
    {
      *v21++ = -1;
      *v22++ = -1;
      *v25++ = -1;
      --v24;
    }

    while (v24);
  }

  else
  {
    v23 = 0;
  }

  *(v20 + 4 * v23) = 0;
  LODWORD(v57) = 0;
  if (*(a2 + 40))
  {
    v26 = 0;
    do
    {
      v60 = v26;
      v27 = *(a2 + 35) > v26;
      do
      {
        v28 = *(a2 + 19);
        v29 = *(v28 + 4 * v26);
        v30 = *(v28 + 4 * (v26 + 1));
        LODWORD(v57) = v30;
        if (*(a2 + 35) > v30)
        {
          if (v64)
          {
            v31 = (-1640531527 * v30) >> -v64;
          }

          else
          {
            v31 = 0;
          }

          v32 = *(v65 + 8 * v31);
          if (v32)
          {
            while (*(v32 + 2) != v30 || *(v32 + 3) != v30)
            {
              v32 = *v32;
              if (!v32)
              {
                goto LABEL_41;
              }
            }
          }

          else
          {
LABEL_41:
            v59 = v29 & 0xFFFFF;
            Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::add(v63, &v57, &v59);
          }

          ++v27;
        }

        v26 += 2;
      }

      while ((v29 & 0x80000000) == 0);
      v59 = *(v61 + 4 * v27);
      *(v61 + 4 * v27) = v59 + 1;
      *(*(this + 14) + 4 * v59) = v60;
      *(*(this + 20) + 4 * v59) = v27;
      Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::add(this, &v60, &v59);
    }

    while (*(a2 + 40) != v26);
  }

  v57 = 0;
  v58 = 0;
  *(this + 38) = 0;
  if (*(this + 34))
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    do
    {
      if (v34 == HIDWORD(v58))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v57, 1, 1);
        v34 = v58;
        v33 = v57;
      }

      *(v33 + 4 * v34) = 3 * v36;
      v34 = v58 + 1;
      LODWORD(v58) = v58 + 1;
      v36 += *(*(this + 16) + 4 * v35) * v35;
      ++v35;
    }

    while (v35 < *(this + 34));
  }

  else
  {
    v36 = 0;
  }

  v37 = 3 * v36;
  v38 = *(this + 39);
  if (3 * v36 > v38)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 144, 3 * v36 - v38, 0);
  }

  *(this + 38) = v37;
  if (v36)
  {
    if (v37 <= 1)
    {
      v39 = 1;
    }

    else
    {
      v39 = 3 * v36;
    }

    memset(*(this + 18), 255, 4 * v39);
  }

  v60 = 0;
  if (*(a2 + 40))
  {
    v40 = 0;
    do
    {
      v59 = v40;
      Bucket = HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(this, &v59);
      if (*Bucket)
      {
        v42 = (*Bucket + 2);
      }

      else
      {
        v42 = 0;
      }

      v43 = *v42;
      v44 = *(*(this + 20) + 4 * v43);
      v45 = v57;
      v46 = *(v57 + 4 * v44);
      *(*(this + 22) + 4 * v43) = v46;
      *(v45 + 4 * v44) = v46 + 3 * v44;
      if (*(a2 + 35) <= v40)
      {
        v51 = 2 * v44;
      }

      else
      {
        v47 = *v42;
        v48 = *(this + 18);
        *(v48 + 4 * v46) = v47;
        if (v64)
        {
          v49 = (-1640531527 * v40) >> -v64;
        }

        else
        {
          v49 = 0;
        }

        v50 = (v65 + 8 * v49);
        do
        {
          do
          {
            v50 = *v50;
          }

          while (*(v50 + 2) != v40);
        }

        while (*(v50 + 3) != v40);
        *(v48 + 4 * (v46 + v44)) = *(v50 + 4);
        v51 = 2 * v44;
        *(v48 + 4 * (v46 + 2 * v44)) = 0;
        ++v46;
      }

      do
      {
        v52 = *(a2 + 19);
        v53 = *(v52 + 4 * v40);
        v60 = *(v52 + 4 * (v40 + 1));
        if (*(a2 + 35) > v60)
        {
          v54 = HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(this, &v60);
          v55 = *(this + 18);
          *(v55 + 4 * v46) = *(*v54 + 4);
          *(v55 + 4 * (v46 + v44)) = v53 & 0xFFFFF;
          *(v55 + 4 * (v46 + v51)) = ((v53 >> 20) & 0x3FF);
          ++v46;
        }

        v40 += 2;
      }

      while ((v53 & 0x80000000) == 0);
    }

    while (*(a2 + 40) != v40);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v57);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v61);
  return Hash<int,int,IntToUintScope,unsigned int>::~Hash(v63);
}

void sub_2627C12D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  Hash<int,int,IntToUintScope,unsigned int>::~Hash(va2);
  _Unwind_Resume(a1);
}

uint64_t Hash<int,int,IntToUintScope,unsigned int>::Hash(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_287523FA0;
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

void sub_2627C1428(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void Hash<int,int,IntToUintScope,unsigned int>::~Hash(uint64_t a1)
{
  Hash<int,int,IntToUintScope,unsigned int>::~Hash(a1);

  JUMPOUT(0x26672B1B0);
}

uint64_t Hash<int,int,IntToUintScope,unsigned int>::~Hash(uint64_t a1)
{
  *a1 = &unk_287523FA0;
  if (*(a1 + 8))
  {
    Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  return MrecInitModule_sdpres_sdapi();
}

uint64_t StartupAdapterParamSpecMgr(void)
{
  v72 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v72, "AdaptationSilenceAccumulateFactor", &byte_262899963, &byte_262899963, &sAdaptationSilenceAccumulateFactorDoubleHistory);
  v71 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v71, "AdaptationNonSilenceAccumulateFactor", &byte_262899963, &byte_262899963, &sAdaptationNonSilenceAccumulateFactorDoubleHistory);
  v66 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v66, "AdaptationAccumulateDoublyGenericBackoffPels", &byte_262899963, &byte_262899963, &sAdaptationAccumulateDoublyGenericBackoffPelsBoolHistory);
  v65 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v65, "AdaptationAccumulateRightGenericBackoffPels", &byte_262899963, &byte_262899963, &sAdaptationAccumulateRightGenericBackoffPelsBoolHistory);
  v61 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v61, "AdaptationAccumulateLeftGenericBackoffPels", &byte_262899963, &byte_262899963, &sAdaptationAccumulateLeftGenericBackoffPelsBoolHistory);
  v68 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v68, "AdaptationConTransAccInitFromIdentityMatrix", &byte_262899963, &byte_262899963, &sAdaptationConTransAccInitFromIdentityMatrixBoolHistory);
  v70 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v70, "AdaptationMicUseDiagonal", &byte_262899963, &byte_262899963, &sAdaptationMicUseDiagonalBoolHistory);
  v69 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v69, "AdaptationConTransAccRelevance", &byte_262899963, &byte_262899963, &sAdaptationConTransAccRelevanceIntHistory);
  v59 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v59, "AdaptationConTransAccComputeTransformMatrix", &byte_262899963, &byte_262899963, &sAdaptationConTransAccComputeTransformMatrixBoolHistory);
  v58 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v58, "AdaptationConTransAccComputeTranslation", &byte_262899963, &byte_262899963, &sAdaptationConTransAccComputeTranslationBoolHistory);
  v57 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v57, "AdaptationConTransAccDiagonalTransforms", &byte_262899963, &byte_262899963, &sAdaptationConTransAccDiagonalTransformsBoolHistory);
  v63 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v63, "AdaptationConTransAccMinAccumFrames", &byte_262899963, &byte_262899963, &sAdaptationConTransAccMinAccumFramesIntHistory);
  v56 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v56, "AdaptationConTransAccMaxNumTransforms", &byte_262899963, &byte_262899963, &sAdaptationConTransAccMaxNumTransformsIntHistory);
  v64 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v64, "AdaptationConTransAccOnlineNumTransformsMin", &byte_262899963, &byte_262899963, &sAdaptationConTransAccOnlineNumTransformsMinIntHistory);
  v62 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v62, "AdaptationConTransAccOnlineNumTransformsRange", &byte_262899963, &byte_262899963, &sAdaptationConTransAccOnlineNumTransformsRangeIntHistory);
  v55 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v55, "AdaptationConTransAccOnlineCommitIntervalUtts", &byte_262899963, &byte_262899963, &sAdaptationConTransAccOnlineCommitIntervalUttsIntHistory);
  v54 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v54, "AdaptationConTransAccOnlineCommitIntervalSeconds", &byte_262899963, &byte_262899963, &sAdaptationConTransAccOnlineCommitIntervalSecondsIntHistory);
  v48 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v48, "AdaptationConTransAccSilenceToSpeechWeight", &byte_262899963, &byte_262899963, &sAdaptationConTransAccSilenceToSpeechWeightIntHistory);
  v60 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v60, "AdaptationDTMMIntruderMinMicroseconds", &byte_262899963, &byte_262899963, &sAdaptationDTMMIntruderMinMicrosecondsIntHistory);
  v67 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v67, "AdaptationDTMMNumIterations", &byte_262899963, &byte_262899963, &sAdaptationDTMMNumIterationsIntHistory);
  v40 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v40, "AdaptationBaumWelchMaxUttSeconds", &byte_262899963, &byte_262899963, &sAdaptationBaumWelchMaxUttSecondsIntHistory);
  v38 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v38, "AdaptationBaumWelchScale", &byte_262899963, &byte_262899963, &sAdaptationBaumWelchScaleDoubleHistory);
  v37 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v37, "AdaptationBaumWelchThreshScore", &byte_262899963, &byte_262899963, &sAdaptationBaumWelchThreshScoreIntHistory);
  v49 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v49, "AdaptationConTransAccOnlineDecayInterval", &byte_262899963, &byte_262899963, &sAdaptationConTransAccOnlineDecayIntervalIntHistory);
  v43 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v43, "AdaptationConTransAccOnlineDecayFactor", &byte_262899963, &byte_262899963, &sAdaptationConTransAccOnlineDecayFactorDoubleHistory);
  v42 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v42, "AdaptationConTransAccOnlineIncludeCurrentTransform", &byte_262899963, &byte_262899963, &sAdaptationConTransAccOnlineIncludeCurrentTransformBoolHistory);
  v39 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v39, "AdaptationConTransAccNumIterations", &byte_262899963, &byte_262899963, &sAdaptationConTransAccNumIterationsIntHistory);
  v35 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v35, "AdaptationConTransAccGlobalSmoothingMinAccumFrames", &byte_262899963, &byte_262899963, &sAdaptationConTransAccGlobalSmoothingMinAccumFramesIntHistory);
  v34 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v34, "AdaptationConTransAccGlobalSmoothingRelevance", &byte_262899963, &byte_262899963, &sAdaptationConTransAccGlobalSmoothingRelevanceIntHistory);
  v29 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v29, "AdaptationConTransAccComponentBackoffPercent", &byte_262899963, &byte_262899963, &sAdaptationConTransAccComponentBackoffPercentDoubleHistory);
  v33 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v33, "AdaptationConTransAccMaxTotalComponentProbability", &byte_262899963, &byte_262899963, &sAdaptationConTransAccMaxTotalComponentProbabilityDoubleHistory);
  v36 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v36, "AdaptationConTransAccRootGenoneClassMinFrameCount", &byte_262899963, &byte_262899963, &sAdaptationConTransAccRootGenoneClassMinFrameCountIntHistory);
  v28 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v28, "AdaptationConTransAccGenoneClassMinFrameCount", &byte_262899963, &byte_262899963, &sAdaptationConTransAccGenoneClassMinFrameCountIntHistory);
  v53 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v53, "AdaptationTransAccGlobalSmoothingMinAccumFrames", &byte_262899963, &byte_262899963, &sAdaptationTransAccGlobalSmoothingMinAccumFramesIntHistory);
  v52 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v52, "AdaptationTransAccGlobalSmoothingRelevance", &byte_262899963, &byte_262899963, &sAdaptationTransAccGlobalSmoothingRelevanceIntHistory);
  v51 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v51, "AdaptationTransAccMaxNumTransforms", &byte_262899963, &byte_262899963, &sAdaptationTransAccMaxNumTransformsIntHistory);
  v50 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v50, "AdaptationTransAccMinAccumFrames", &byte_262899963, &byte_262899963, &sAdaptationTransAccMinAccumFramesIntHistory);
  v47 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v47, "AdaptationTransAccComponentBackoffPercent", &byte_262899963, &byte_262899963, &sAdaptationTransAccComponentBackoffPercentDoubleHistory);
  v44 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v44, "AdaptationTransAccGenoneClassMinFrameCount", &byte_262899963, &byte_262899963, &sAdaptationTransAccGenoneClassMinFrameCountIntHistory);
  v45 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v45, "AdaptationTransAccMaxTotalComponentProbability", &byte_262899963, &byte_262899963, &sAdaptationTransAccMaxTotalComponentProbabilityDoubleHistory);
  v46 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v46, "AdaptationTransAccRelevance", &byte_262899963, &byte_262899963, &sAdaptationTransAccRelevanceIntHistory);
  v41 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v41, "AdaptationTransAccNumIterations", &byte_262899963, &byte_262899963, &sAdaptationTransAccNumIterationsIntHistory);
  v17 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v17, "AdaptationBasisMeanRelevance", &byte_262899963, &byte_262899963, &sAdaptationBasisMeanRelevanceIntHistory);
  v12 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v12, "AdaptationBasisDevRelevance", &byte_262899963, &byte_262899963, &sAdaptationBasisDevRelevanceIntHistory);
  v32 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v32, "AdaptationLogWeightRelevance", &byte_262899963, &byte_262899963, &sAdaptationLogWeightRelevanceIntHistory);
  v31 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v31, "AdaptationMaxLogWeight", &byte_262899963, &byte_262899963, &sAdaptationMaxLogWeightIntHistory);
  v30 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v30, "AdaptationDurationRelevance", &byte_262899963, &byte_262899963, &sAdaptationDurationRelevanceIntHistory);
  v27 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v27, "AdaptationDTMMScoreScale", &byte_262899963, &byte_262899963, &sAdaptationDTMMScoreScaleDoubleHistory);
  v25 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v25, "AdaptationDTMMNormalizedDeltaRange", &byte_262899963, &byte_262899963, &sAdaptationDTMMNormalizedDeltaRangeDoubleHistory);
  v24 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v24, "AdaptationDTMMNormalizedDeltaMin", &byte_262899963, &byte_262899963, &sAdaptationDTMMNormalizedDeltaMinDoubleHistory);
  v26 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v26, "AdaptationDTMMUniqMaxDeltaMicroseconds", &byte_262899963, &byte_262899963, &sAdaptationDTMMUniqMaxDeltaMicrosecondsIntHistory);
  v22 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v22, "AdaptationDTMMMaxIntrudersPerStartTimeSegment", &byte_262899963, &byte_262899963, &sAdaptationDTMMMaxIntrudersPerStartTimeSegmentIntHistory);
  v23 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v23, "AdaptationDTMMStartTimeSegmentMaxDeltaMicroseconds", &byte_262899963, &byte_262899963, &sAdaptationDTMMStartTimeSegmentMaxDeltaMicrosecondsIntHistory);
  v20 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v20, "AdaptationDTMMMeanGradientWeight", &byte_262899963, &byte_262899963, &sAdaptationDTMMMeanGradientWeightDoubleHistory);
  v14 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v14, "AdaptationDTMMDevGradientWeight", &byte_262899963, &byte_262899963, &sAdaptationDTMMDevGradientWeightDoubleHistory);
  v21 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v21, "AdaptationDTMMPositiveGradientWeight", &byte_262899963, &byte_262899963, &sAdaptationDTMMPositiveGradientWeightDoubleHistory);
  v19 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v19, "AdaptationDTMMNegativeGradientWeight", &byte_262899963, &byte_262899963, &sAdaptationDTMMNegativeGradientWeightDoubleHistory);
  v16 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v16, "AdaptationDTMMMinPositiveCount", &byte_262899963, &byte_262899963, &sAdaptationDTMMMinPositiveCountDoubleHistory);
  v11 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v11, "AdaptationDTMMMinNegativeCount", &byte_262899963, &byte_262899963, &sAdaptationDTMMMinNegativeCountDoubleHistory);
  v0 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v0, "AdaptationDTMMMinTotalCount", &byte_262899963, &byte_262899963, &sAdaptationDTMMMinTotalCountDoubleHistory);
  v15 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v15, "AdaptationDTMMSmoothGradients", &byte_262899963, &byte_262899963, &sAdaptationDTMMSmoothGradientsBoolHistory);
  v13 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v13, "AdaptationDTMMSmoothRelevance", &byte_262899963, &byte_262899963, &sAdaptationDTMMSmoothRelevanceIntHistory);
  v1 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v1, "AdaptationDTMMErrorFunction", &byte_262899963, &byte_262899963, &sAdaptationDTMMErrorFunctionEnumHistory);
  v2 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v2, "AdaptationDTMMErrorBeta", &byte_262899963, &byte_262899963, &sAdaptationDTMMErrorBetaDoubleHistory);
  v3 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v3, "AdaptationDTMMErrorOffset", &byte_262899963, &byte_262899963, &sAdaptationDTMMErrorOffsetDoubleHistory);
  v4 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v4, "AdaptationDTMMMaxIntruderCount", &byte_262899963, &byte_262899963, &sAdaptationDTMMMaxIntruderCountIntHistory);
  v18 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v18, "AdaptationConTransAccComputeExtraGlobalTransform", &byte_262899963, &byte_262899963, &sAdaptationConTransAccComputeExtraGlobalTransformBoolHistory);
  v5 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v5, "AdaptationConTransAccComputeHierScorerTransforms", &byte_262899963, &byte_262899963, &sAdaptationConTransAccComputeHierScorerTransformsBoolHistory);
  v6 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v6, "AdaptationConTransAccEconomizeCofactorComputation", &byte_262899963, &byte_262899963, &sAdaptationConTransAccEconomizeCofactorComputationBoolHistory);
  v7 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v7, "AdaptationConTransAccRidgeRegularizationFactor", &byte_262899963, &byte_262899963, &sAdaptationConTransAccRidgeRegularizationFactorIntHistory);
  v8 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v8, "AdaptationConTransAccDecomposedAccumCutoffPercent", &byte_262899963, &byte_262899963, &sAdaptationConTransAccDecomposedAccumCutoffPercentIntHistory);
  ParamSpecMgr::addParam(qword_281051F70, v66);
  ParamSpecMgr::addParam(qword_281051F70, v61);
  ParamSpecMgr::addParam(qword_281051F70, v65);
  ParamSpecMgr::addParam(qword_281051F70, v12);
  ParamSpecMgr::addParam(qword_281051F70, v17);
  ParamSpecMgr::addParam(qword_281051F70, v40);
  ParamSpecMgr::addParam(qword_281051F70, v38);
  ParamSpecMgr::addParam(qword_281051F70, v37);
  ParamSpecMgr::addParam(qword_281051F70, v48);
  ParamSpecMgr::addParam(qword_281051F70, v29);
  ParamSpecMgr::addParam(qword_281051F70, v5);
  ParamSpecMgr::addParam(qword_281051F70, v59);
  ParamSpecMgr::addParam(qword_281051F70, v58);
  ParamSpecMgr::addParam(qword_281051F70, v57);
  ParamSpecMgr::addParam(qword_281051F70, v28);
  ParamSpecMgr::addParam(qword_281051F70, v35);
  ParamSpecMgr::addParam(qword_281051F70, v34);
  ParamSpecMgr::addParam(qword_281051F70, v68);
  ParamSpecMgr::addParam(qword_281051F70, v56);
  ParamSpecMgr::addParam(qword_281051F70, v33);
  ParamSpecMgr::addParam(qword_281051F70, v63);
  ParamSpecMgr::addParam(qword_281051F70, v39);
  ParamSpecMgr::addParam(qword_281051F70, v54);
  ParamSpecMgr::addParam(qword_281051F70, v55);
  ParamSpecMgr::addParam(qword_281051F70, v43);
  ParamSpecMgr::addParam(qword_281051F70, v49);
  ParamSpecMgr::addParam(qword_281051F70, v42);
  ParamSpecMgr::addParam(qword_281051F70, v64);
  ParamSpecMgr::addParam(qword_281051F70, v62);
  ParamSpecMgr::addParam(qword_281051F70, v69);
  ParamSpecMgr::addParam(qword_281051F70, v36);
  ParamSpecMgr::addParam(qword_281051F70, v8);
  ParamSpecMgr::addParam(qword_281051F70, v6);
  ParamSpecMgr::addParam(qword_281051F70, v7);
  ParamSpecMgr::addParam(qword_281051F70, v14);
  ParamSpecMgr::addParam(qword_281051F70, v2);
  ParamSpecMgr::addParam(qword_281051F70, v1);
  ParamSpecMgr::addParam(qword_281051F70, v3);
  ParamSpecMgr::addParam(qword_281051F70, v60);
  ParamSpecMgr::addParam(qword_281051F70, v4);
  ParamSpecMgr::addParam(qword_281051F70, v22);
  ParamSpecMgr::addParam(qword_281051F70, v20);
  ParamSpecMgr::addParam(qword_281051F70, v11);
  ParamSpecMgr::addParam(qword_281051F70, v16);
  ParamSpecMgr::addParam(qword_281051F70, v0);
  ParamSpecMgr::addParam(qword_281051F70, v19);
  ParamSpecMgr::addParam(qword_281051F70, v24);
  ParamSpecMgr::addParam(qword_281051F70, v25);
  ParamSpecMgr::addParam(qword_281051F70, v67);
  ParamSpecMgr::addParam(qword_281051F70, v21);
  ParamSpecMgr::addParam(qword_281051F70, v27);
  ParamSpecMgr::addParam(qword_281051F70, v15);
  ParamSpecMgr::addParam(qword_281051F70, v13);
  ParamSpecMgr::addParam(qword_281051F70, v23);
  ParamSpecMgr::addParam(qword_281051F70, v26);
  ParamSpecMgr::addParam(qword_281051F70, v30);
  ParamSpecMgr::addParam(qword_281051F70, v32);
  ParamSpecMgr::addParam(qword_281051F70, v31);
  ParamSpecMgr::addParam(qword_281051F70, v70);
  ParamSpecMgr::addParam(qword_281051F70, v71);
  ParamSpecMgr::addParam(qword_281051F70, v72);
  ParamSpecMgr::addParam(qword_281051F70, v47);
  ParamSpecMgr::addParam(qword_281051F70, v44);
  ParamSpecMgr::addParam(qword_281051F70, v53);
  ParamSpecMgr::addParam(qword_281051F70, v52);
  ParamSpecMgr::addParam(qword_281051F70, v51);
  ParamSpecMgr::addParam(qword_281051F70, v45);
  ParamSpecMgr::addParam(qword_281051F70, v50);
  ParamSpecMgr::addParam(qword_281051F70, v41);
  ParamSpecMgr::addParam(qword_281051F70, v46);
  ParamSpecMgr::addParam(qword_281051F70, v18);
  v9 = qword_281051F70;

  return ParamSpecMgr::sortParams(v9);
}

_DWORD *AdapterParamSet::AdapterParamSet(_DWORD *a1, const char *a2, int a3, int a4, int a5)
{
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 2), a2);
  a1[6] = a3;
  a1[7] = a4;
  a1[8] = a5;
  a1[9] = 0;
  *a1 = &unk_287527ED8;
  AdapterParamSet::setDefaults(a1, v9, v10, v11, v12, v13, v14, v15);
  return a1;
}

void sub_2627C2578(_Unwind_Exception *a1)
{
  *v1 = v2;
  DgnString::~DgnString((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t AdapterParamSet::AdapterParamSet(uint64_t a1, uint64_t a2, char *a3, int a4, int a5, int a6)
{
  v11 = (a1 + 308);
  v12 = (a2 + 308);
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 8), a3);
  *(a1 + 24) = a4;
  *(a1 + 28) = a5;
  *(a1 + 32) = a6;
  *(a1 + 36) = 0;
  *a1 = &unk_287527ED8;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 52) = *(a2 + 52);
  v13 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v13;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  v14 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v14;
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = *(a2 + 304);
  *v11 = *v12;
  *(a1 + 324) = *(a2 + 324);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 332) = *(a2 + 332);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  *(v11 + 52) = *(v12 + 52);
  v15 = *(a2 + 384);
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 384) = v15;
  *(a1 + 392) = *(a2 + 392);
  return a1;
}

uint64_t AdapterParamSet::setDefaults(AdapterParamSet *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(this + 40) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F70, 1, 0, 0, a5, a6, a7, a8);
  *(this + 41) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F70, 2, 0, 0, v9, v10, v11, v12);
  *(this + 42) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F70, 3, 0, 0, v13, v14, v15, v16);
  *(this + 11) = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 4, 0, 0, v17, v18, v19, v20);
  *(this + 12) = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 5, 0, 0, v21, v22, v23, v24);
  *(this + 13) = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 6, 0, 0, v25, v26, v27, v28);
  *(this + 7) = ParamSpecMgr::ParamGetDefault_double(qword_281051F70, 7, 0, 0, v29, v30, v31, v32);
  *(this + 16) = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 8, 0, 0, v33, v34, v35, v36);
  *(this + 17) = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 9, 0, 0, v37, v38, v39, v40);
  *(this + 9) = ParamSpecMgr::ParamGetDefault_double(qword_281051F70, 10, 0, 0, v41, v42, v43, v44);
  *(this + 80) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F70, 11, 0, 0, v45, v46, v47, v48);
  *(this + 81) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F70, 12, 0, 0, v49, v50, v51, v52);
  *(this + 82) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F70, 13, 0, 0, v53, v54, v55, v56);
  *(this + 83) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F70, 14, 0, 0, v57, v58, v59, v60);
  *(this + 21) = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 15, 0, 0, v61, v62, v63, v64);
  *(this + 22) = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 16, 0, 0, v65, v66, v67, v68);
  *(this + 23) = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 17, 0, 0, v69, v70, v71, v72);
  *(this + 96) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F70, 18, 0, 0, v73, v74, v75, v76);
  *(this + 25) = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 19, 0, 0, v77, v78, v79, v80);
  *(this + 13) = ParamSpecMgr::ParamGetDefault_double(qword_281051F70, 20, 0, 0, v81, v82, v83, v84);
  *(this + 28) = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 21, 0, 0, v85, v86, v87, v88);
  *(this + 29) = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 22, 0, 0, v89, v90, v91, v92);
  *(this + 30) = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 23, 0, 0, v93, v94, v95, v96);
  *(this + 31) = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 24, 0, 0, v97, v98, v99, v100);
  *(this + 16) = ParamSpecMgr::ParamGetDefault_double(qword_281051F70, 25, 0, 0, v101, v102, v103, v104);
  *(this + 34) = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 26, 0, 0, v105, v106, v107, v108);
  *(this + 140) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F70, 27, 0, 0, v109, v110, v111, v112);
  *(this + 36) = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 28, 0, 0, v113, v114, v115, v116);
  *(this + 37) = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 29, 0, 0, v117, v118, v119, v120);
  *(this + 38) = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 30, 0, 0, v121, v122, v123, v124);
  *(this + 39) = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 31, 0, 0, v125, v126, v127, v128);
  *(this + 40) = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 32, 0, 0, v129, v130, v131, v132);
  *(this + 164) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F70, 33, 0, 0, v133, v134, v135, v136);
  *(this + 42) = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 34, 0, 0, v137, v138, v139, v140);
  *(this + 22) = ParamSpecMgr::ParamGetDefault_double(qword_281051F70, 35, 0, 0, v141, v142, v143, v144);
  *(this + 23) = ParamSpecMgr::ParamGetDefault_double(qword_281051F70, 36, 0, 0, v145, v146, v147, v148);
  *(this + 48) = ParamSpecMgr::ParamGetDefault_enum(qword_281051F70, 37, v149, v150, v151, v152, v153, v154);
  *(this + 25) = ParamSpecMgr::ParamGetDefault_double(qword_281051F70, 38, 0, 0, v155, v156, v157, v158);
  *(this + 52) = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 39, 0, 0, v159, v160, v161, v162);
  *(this + 53) = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 40, 0, 0, v163, v164, v165, v166);
  *(this + 54) = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 41, 0, 0, v167, v168, v169, v170);
  *(this + 28) = ParamSpecMgr::ParamGetDefault_double(qword_281051F70, 42, 0, 0, v171, v172, v173, v174);
  *(this + 29) = ParamSpecMgr::ParamGetDefault_double(qword_281051F70, 43, 0, 0, v175, v176, v177, v178);
  *(this + 30) = ParamSpecMgr::ParamGetDefault_double(qword_281051F70, 44, 0, 0, v179, v180, v181, v182);
  *(this + 31) = ParamSpecMgr::ParamGetDefault_double(qword_281051F70, 45, 0, 0, v183, v184, v185, v186);
  *(this + 32) = ParamSpecMgr::ParamGetDefault_double(qword_281051F70, 46, 0, 0, v187, v188, v189, v190);
  *(this + 33) = ParamSpecMgr::ParamGetDefault_double(qword_281051F70, 47, 0, 0, v191, v192, v193, v194);
  *(this + 34) = ParamSpecMgr::ParamGetDefault_double(qword_281051F70, 48, 0, 0, v195, v196, v197, v198);
  *(this + 70) = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 49, 0, 0, v199, v200, v201, v202);
  *(this + 36) = ParamSpecMgr::ParamGetDefault_double(qword_281051F70, 50, 0, 0, v203, v204, v205, v206);
  *(this + 37) = ParamSpecMgr::ParamGetDefault_double(qword_281051F70, 51, 0, 0, v207, v208, v209, v210);
  *(this + 304) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F70, 52, 0, 0, v211, v212, v213, v214);
  *(this + 77) = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 53, 0, 0, v215, v216, v217, v218);
  *(this + 78) = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 54, 0, 0, v219, v220, v221, v222);
  *(this + 79) = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 55, 0, 0, v223, v224, v225, v226);
  *(this + 80) = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 56, 0, 0, v227, v228, v229, v230);
  *(this + 81) = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 57, 0, 0, v231, v232, v233, v234);
  *(this + 82) = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 58, 0, 0, v235, v236, v237, v238);
  *(this + 332) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F70, 59, 0, 0, v239, v240, v241, v242);
  *(this + 42) = ParamSpecMgr::ParamGetDefault_double(qword_281051F70, 60, 0, 0, v243, v244, v245, v246);
  *(this + 43) = ParamSpecMgr::ParamGetDefault_double(qword_281051F70, 61, 0, 0, v247, v248, v249, v250);
  *(this + 44) = ParamSpecMgr::ParamGetDefault_double(qword_281051F70, 62, 0, 0, v251, v252, v253, v254);
  *(this + 90) = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 63, 0, 0, v255, v256, v257, v258);
  *(this + 91) = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 64, 0, 0, v259, v260, v261, v262);
  *(this + 92) = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 65, 0, 0, v263, v264, v265, v266);
  *(this + 93) = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 66, 0, 0, v267, v268, v269, v270);
  *(this + 47) = ParamSpecMgr::ParamGetDefault_double(qword_281051F70, 67, 0, 0, v271, v272, v273, v274);
  *(this + 96) = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 68, 0, 0, v275, v276, v277, v278);
  *(this + 97) = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 69, 0, 0, v279, v280, v281, v282);
  result = ParamSpecMgr::ParamGetDefault_int(qword_281051F70, 70, 0, 0, v283, v284, v285, v286);
  *(this + 98) = result;
  return result;
}

uint64_t AdapterParamSet::sizeObject(uint64_t a1, int a2)
{
  result = sizeObject(a1 + 8) + 16 * (a2 != 3);
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v4 = 6;
    if (a2 == 3)
    {
      v4 = 0;
    }

    result += ((8 * (a2 != 3)) | (32 * (a2 != 3)) | ((a2 != 3) << 6) | v4) + v4 + 208 * (a2 != 3);
  }

  return result;
}

uint64_t AdapterParamSet::getBoolParameter(_BYTE *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 1:
      if (a3 == 1)
      {
        v12 = qword_281051F70;
        v13 = 1;
        goto LABEL_113;
      }

      if (a3)
      {
        goto LABEL_95;
      }

      v8 = a1[40];
      return v8 & 1;
    case 2:
      if (a3 == 1)
      {
        v12 = qword_281051F70;
        v13 = 2;
        goto LABEL_113;
      }

      if (a3)
      {
        goto LABEL_95;
      }

      v8 = a1[41];
      return v8 & 1;
    case 3:
      if (a3 == 1)
      {
        v12 = qword_281051F70;
        v13 = 3;
        goto LABEL_113;
      }

      if (a3)
      {
        goto LABEL_95;
      }

      v8 = a1[42];
      return v8 & 1;
    case 4:
      v9 = "int";
      v10 = 4;
      goto LABEL_97;
    case 5:
      v9 = "int";
      v10 = 5;
      goto LABEL_97;
    case 6:
      v9 = "int";
      v10 = 6;
      goto LABEL_97;
    case 7:
      v9 = "double";
      v10 = 7;
      goto LABEL_97;
    case 8:
      v9 = "int";
      v10 = 8;
      goto LABEL_97;
    case 9:
      v9 = "int";
      v10 = 9;
      goto LABEL_97;
    case 10:
      v9 = "double";
      v10 = 10;
      goto LABEL_97;
    case 11:
      if (a3 == 1)
      {
        v12 = qword_281051F70;
        v13 = 11;
        goto LABEL_113;
      }

      if (a3)
      {
        goto LABEL_95;
      }

      v8 = a1[80];
      return v8 & 1;
    case 12:
      if (a3 == 1)
      {
        v12 = qword_281051F70;
        v13 = 12;
        goto LABEL_113;
      }

      if (a3)
      {
        goto LABEL_95;
      }

      v8 = a1[81];
      return v8 & 1;
    case 13:
      if (a3 == 1)
      {
        v12 = qword_281051F70;
        v13 = 13;
        goto LABEL_113;
      }

      if (a3)
      {
        goto LABEL_95;
      }

      v8 = a1[82];
      return v8 & 1;
    case 14:
      if (a3 == 1)
      {
        v12 = qword_281051F70;
        v13 = 14;
        goto LABEL_113;
      }

      if (a3)
      {
        goto LABEL_95;
      }

      v8 = a1[83];
      return v8 & 1;
    case 15:
      v9 = "int";
      v10 = 15;
      goto LABEL_97;
    case 16:
      v9 = "int";
      v10 = 16;
      goto LABEL_97;
    case 17:
      v9 = "int";
      v10 = 17;
      goto LABEL_97;
    case 18:
      if (a3 == 1)
      {
        v12 = qword_281051F70;
        v13 = 18;
        goto LABEL_113;
      }

      if (a3)
      {
        goto LABEL_95;
      }

      v8 = a1[96];
      return v8 & 1;
    case 19:
      v9 = "int";
      v10 = 19;
      goto LABEL_97;
    case 20:
      v9 = "double";
      v10 = 20;
      goto LABEL_97;
    case 21:
      v9 = "int";
      v10 = 21;
      goto LABEL_97;
    case 22:
      v9 = "int";
      v10 = 22;
      goto LABEL_97;
    case 23:
      v9 = "int";
      v10 = 23;
      goto LABEL_97;
    case 24:
      v9 = "int";
      v10 = 24;
      goto LABEL_97;
    case 25:
      v9 = "double";
      v10 = 25;
      goto LABEL_97;
    case 26:
      v9 = "int";
      v10 = 26;
      goto LABEL_97;
    case 27:
      if (a3 == 1)
      {
        v12 = qword_281051F70;
        v13 = 27;
        goto LABEL_113;
      }

      if (a3)
      {
        goto LABEL_95;
      }

      v8 = a1[140];
      return v8 & 1;
    case 28:
      v9 = "int";
      v10 = 28;
      goto LABEL_97;
    case 29:
      v9 = "int";
      v10 = 29;
      goto LABEL_97;
    case 30:
      v9 = "int";
      v10 = 30;
      goto LABEL_97;
    case 31:
      v9 = "int";
      v10 = 31;
      goto LABEL_97;
    case 32:
      v9 = "int";
      v10 = 32;
      goto LABEL_97;
    case 33:
      if (a3 == 1)
      {
        v12 = qword_281051F70;
        v13 = 33;
        goto LABEL_113;
      }

      if (a3)
      {
        goto LABEL_95;
      }

      v8 = a1[164];
      return v8 & 1;
    case 34:
      v9 = "int";
      v10 = 34;
      goto LABEL_97;
    case 35:
      v9 = "double";
      v10 = 35;
      goto LABEL_97;
    case 36:
      v9 = "double";
      v10 = 36;
      goto LABEL_97;
    case 37:
      v9 = "enum";
      v10 = 37;
      goto LABEL_97;
    case 38:
      v9 = "double";
      v10 = 38;
      goto LABEL_97;
    case 39:
      v9 = "int";
      v10 = 39;
      goto LABEL_97;
    case 40:
      v9 = "int";
      v10 = 40;
      goto LABEL_97;
    case 41:
      v9 = "int";
      v10 = 41;
      goto LABEL_97;
    case 42:
      v9 = "double";
      v10 = 42;
      goto LABEL_97;
    case 43:
      v9 = "double";
      v10 = 43;
      goto LABEL_97;
    case 44:
      v9 = "double";
      v10 = 44;
      goto LABEL_97;
    case 45:
      v9 = "double";
      v10 = 45;
      goto LABEL_97;
    case 46:
      v9 = "double";
      v10 = 46;
      goto LABEL_97;
    case 47:
      v9 = "double";
      v10 = 47;
      goto LABEL_97;
    case 48:
      v9 = "double";
      v10 = 48;
      goto LABEL_97;
    case 49:
      v9 = "int";
      v10 = 49;
      goto LABEL_97;
    case 50:
      v9 = "double";
      v10 = 50;
      goto LABEL_97;
    case 51:
      v9 = "double";
      v10 = 51;
      goto LABEL_97;
    case 52:
      if (a3 == 1)
      {
        v12 = qword_281051F70;
        v13 = 52;
        goto LABEL_113;
      }

      if (a3)
      {
        goto LABEL_95;
      }

      v8 = a1[304];
      break;
    case 53:
      v9 = "int";
      v10 = 53;
      goto LABEL_97;
    case 54:
      v9 = "int";
      v10 = 54;
      goto LABEL_97;
    case 55:
      v9 = "int";
      v10 = 55;
      goto LABEL_97;
    case 56:
      v9 = "int";
      v10 = 56;
      goto LABEL_97;
    case 57:
      v9 = "int";
      v10 = 57;
      goto LABEL_97;
    case 58:
      v9 = "int";
      v10 = 58;
      goto LABEL_97;
    case 59:
      if (a3 == 1)
      {
        v12 = qword_281051F70;
        v13 = 59;
LABEL_113:
        ParamByParamId = ParamSpecMgr::getParamByParamId(v12, v13, a3, a4, a5, a6, a7, a8);
        v15 = **ParamByParamId;
      }

      else if (a3)
      {
LABEL_95:
        throwWrongQueryMode(a3, "BOOL", a3, a4, a5, a6, a7, a8);
LABEL_98:
        v8 = 0;
      }

      else
      {
        v8 = a1[332];
      }

      break;
    case 60:
      v9 = "double";
      v10 = 60;
      goto LABEL_97;
    case 61:
      v9 = "double";
      v10 = 61;
      goto LABEL_97;
    case 62:
      v9 = "double";
      v10 = 62;
      goto LABEL_97;
    case 63:
      v9 = "int";
      v10 = 63;
      goto LABEL_97;
    case 64:
      v9 = "int";
      v10 = 64;
      goto LABEL_97;
    case 65:
      v9 = "int";
      v10 = 65;
      goto LABEL_97;
    case 66:
      v9 = "int";
      v10 = 66;
      goto LABEL_97;
    case 67:
      v9 = "double";
      v10 = 67;
      goto LABEL_97;
    case 68:
      v9 = "int";
      v10 = 68;
      goto LABEL_97;
    case 69:
      v9 = "int";
      v10 = 69;
      goto LABEL_97;
    case 70:
      v9 = "int";
      v10 = 70;
LABEL_97:
      throwWrongTypeForParamId(v10, v9, "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_98;
    default:
      throwWrongParamIdValue(a2, "BOOL", a3, a4, a5, a6, a7, a8);
      goto LABEL_98;
  }

  return v8 & 1;
}

uint64_t AdapterParamSet::getIntParameter(unsigned int *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 1:
      v8 = "BOOL";
      v9 = 1;
      goto LABEL_179;
    case 2:
      v8 = "BOOL";
      v9 = 2;
      goto LABEL_179;
    case 3:
      v8 = "BOOL";
      v9 = 3;
      goto LABEL_179;
    case 4:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[11];
        }

        if (a3 != 1)
        {
          goto LABEL_300;
        }

        v10 = qword_281051F70;
        v11 = 4;
        goto LABEL_186;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 4;
        goto LABEL_375;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 4;
      goto LABEL_299;
    case 5:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[12];
        }

        if (a3 != 1)
        {
          goto LABEL_300;
        }

        v10 = qword_281051F70;
        v11 = 5;
        goto LABEL_186;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 5;
        goto LABEL_375;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 5;
      goto LABEL_299;
    case 6:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[13];
        }

        if (a3 != 1)
        {
          goto LABEL_300;
        }

        v10 = qword_281051F70;
        v11 = 6;
        goto LABEL_186;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 6;
        goto LABEL_375;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 6;
      goto LABEL_299;
    case 7:
      v8 = "double";
      v9 = 7;
      goto LABEL_179;
    case 8:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[16];
        }

        if (a3 != 1)
        {
          goto LABEL_300;
        }

        v10 = qword_281051F70;
        v11 = 8;
        goto LABEL_186;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 8;
        goto LABEL_375;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 8;
      goto LABEL_299;
    case 9:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[17];
        }

        if (a3 != 1)
        {
          goto LABEL_300;
        }

        v10 = qword_281051F70;
        v11 = 9;
        goto LABEL_186;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 9;
        goto LABEL_375;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 9;
      goto LABEL_299;
    case 10:
      v8 = "double";
      v9 = 10;
      goto LABEL_179;
    case 11:
      v8 = "BOOL";
      v9 = 11;
      goto LABEL_179;
    case 12:
      v8 = "BOOL";
      v9 = 12;
      goto LABEL_179;
    case 13:
      v8 = "BOOL";
      v9 = 13;
      goto LABEL_179;
    case 14:
      v8 = "BOOL";
      v9 = 14;
      goto LABEL_179;
    case 15:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[21];
        }

        if (a3 != 1)
        {
          goto LABEL_300;
        }

        v10 = qword_281051F70;
        v11 = 15;
        goto LABEL_186;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 15;
        goto LABEL_375;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 15;
      goto LABEL_299;
    case 16:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[22];
        }

        if (a3 != 1)
        {
          goto LABEL_300;
        }

        v10 = qword_281051F70;
        v11 = 16;
        goto LABEL_186;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 16;
        goto LABEL_375;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 16;
      goto LABEL_299;
    case 17:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[23];
        }

        if (a3 != 1)
        {
          goto LABEL_300;
        }

        v10 = qword_281051F70;
        v11 = 17;
        goto LABEL_186;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 17;
        goto LABEL_375;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 17;
      goto LABEL_299;
    case 18:
      v8 = "BOOL";
      v9 = 18;
      goto LABEL_179;
    case 19:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[25];
        }

        if (a3 != 1)
        {
          goto LABEL_300;
        }

        v10 = qword_281051F70;
        v11 = 19;
        goto LABEL_186;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 19;
        goto LABEL_375;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 19;
      goto LABEL_299;
    case 20:
      v8 = "double";
      v9 = 20;
      goto LABEL_179;
    case 21:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[28];
        }

        if (a3 != 1)
        {
          goto LABEL_300;
        }

        v10 = qword_281051F70;
        v11 = 21;
        goto LABEL_186;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 21;
        goto LABEL_375;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 21;
      goto LABEL_299;
    case 22:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[29];
        }

        if (a3 != 1)
        {
          goto LABEL_300;
        }

        v10 = qword_281051F70;
        v11 = 22;
        goto LABEL_186;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 22;
        goto LABEL_375;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 22;
      goto LABEL_299;
    case 23:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[30];
        }

        if (a3 != 1)
        {
          goto LABEL_300;
        }

        v10 = qword_281051F70;
        v11 = 23;
        goto LABEL_186;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 23;
        goto LABEL_375;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 23;
      goto LABEL_299;
    case 24:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[31];
        }

        if (a3 != 1)
        {
          goto LABEL_300;
        }

        v10 = qword_281051F70;
        v11 = 24;
        goto LABEL_186;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 24;
        goto LABEL_375;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 24;
      goto LABEL_299;
    case 25:
      v8 = "double";
      v9 = 25;
      goto LABEL_179;
    case 26:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[34];
        }

        if (a3 != 1)
        {
          goto LABEL_300;
        }

        v10 = qword_281051F70;
        v11 = 26;
        goto LABEL_186;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 26;
        goto LABEL_375;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 26;
      goto LABEL_299;
    case 27:
      v8 = "BOOL";
      v9 = 27;
      goto LABEL_179;
    case 28:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[36];
        }

        if (a3 != 1)
        {
          goto LABEL_300;
        }

        v10 = qword_281051F70;
        v11 = 28;
        goto LABEL_186;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 28;
        goto LABEL_375;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 28;
      goto LABEL_299;
    case 29:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[37];
        }

        if (a3 != 1)
        {
          goto LABEL_300;
        }

        v10 = qword_281051F70;
        v11 = 29;
        goto LABEL_186;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 29;
        goto LABEL_375;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 29;
      goto LABEL_299;
    case 30:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[38];
        }

        if (a3 != 1)
        {
          goto LABEL_300;
        }

        v10 = qword_281051F70;
        v11 = 30;
        goto LABEL_186;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 30;
        goto LABEL_375;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 30;
      goto LABEL_299;
    case 31:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[39];
        }

        if (a3 != 1)
        {
          goto LABEL_300;
        }

        v10 = qword_281051F70;
        v11 = 31;
        goto LABEL_186;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 31;
        goto LABEL_375;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 31;
      goto LABEL_299;
    case 32:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[40];
        }

        if (a3 != 1)
        {
          goto LABEL_300;
        }

        v10 = qword_281051F70;
        v11 = 32;
        goto LABEL_186;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 32;
        goto LABEL_375;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 32;
      goto LABEL_299;
    case 33:
      v8 = "BOOL";
      v9 = 33;
      goto LABEL_179;
    case 34:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[42];
        }

        if (a3 != 1)
        {
          goto LABEL_300;
        }

        v10 = qword_281051F70;
        v11 = 34;
        goto LABEL_186;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 34;
        goto LABEL_375;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 34;
      goto LABEL_299;
    case 35:
      v8 = "double";
      v9 = 35;
      goto LABEL_179;
    case 36:
      v8 = "double";
      v9 = 36;
      goto LABEL_179;
    case 37:
      v8 = "enum";
      v9 = 37;
      goto LABEL_179;
    case 38:
      v8 = "double";
      v9 = 38;
      goto LABEL_179;
    case 39:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[52];
        }

        if (a3 != 1)
        {
          goto LABEL_300;
        }

        v10 = qword_281051F70;
        v11 = 39;
        goto LABEL_186;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 39;
        goto LABEL_375;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 39;
      goto LABEL_299;
    case 40:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[53];
        }

        if (a3 != 1)
        {
          goto LABEL_300;
        }

        v10 = qword_281051F70;
        v11 = 40;
        goto LABEL_186;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 40;
        goto LABEL_375;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 40;
      goto LABEL_299;
    case 41:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[54];
        }

        if (a3 != 1)
        {
          goto LABEL_300;
        }

        v10 = qword_281051F70;
        v11 = 41;
        goto LABEL_186;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 41;
        goto LABEL_375;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 41;
      goto LABEL_299;
    case 42:
      v8 = "double";
      v9 = 42;
      goto LABEL_179;
    case 43:
      v8 = "double";
      v9 = 43;
      goto LABEL_179;
    case 44:
      v8 = "double";
      v9 = 44;
      goto LABEL_179;
    case 45:
      v8 = "double";
      v9 = 45;
      goto LABEL_179;
    case 46:
      v8 = "double";
      v9 = 46;
      goto LABEL_179;
    case 47:
      v8 = "double";
      v9 = 47;
      goto LABEL_179;
    case 48:
      v8 = "double";
      v9 = 48;
      goto LABEL_179;
    case 49:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[70];
        }

        if (a3 != 1)
        {
          goto LABEL_300;
        }

        v10 = qword_281051F70;
        v11 = 49;
        goto LABEL_186;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 49;
        goto LABEL_375;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 49;
      goto LABEL_299;
    case 50:
      v8 = "double";
      v9 = 50;
      goto LABEL_179;
    case 51:
      v8 = "double";
      v9 = 51;
      goto LABEL_179;
    case 52:
      v8 = "BOOL";
      v9 = 52;
      goto LABEL_179;
    case 53:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[77];
        }

        if (a3 != 1)
        {
          goto LABEL_300;
        }

        v10 = qword_281051F70;
        v11 = 53;
        goto LABEL_186;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 53;
        goto LABEL_375;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 53;
      goto LABEL_299;
    case 54:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[78];
        }

        if (a3 != 1)
        {
          goto LABEL_300;
        }

        v10 = qword_281051F70;
        v11 = 54;
        goto LABEL_186;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 54;
        goto LABEL_375;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 54;
      goto LABEL_299;
    case 55:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[79];
        }

        if (a3 != 1)
        {
          goto LABEL_300;
        }

        v10 = qword_281051F70;
        v11 = 55;
        goto LABEL_186;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 55;
        goto LABEL_375;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 55;
      goto LABEL_299;
    case 56:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[80];
        }

        if (a3 != 1)
        {
          goto LABEL_300;
        }

        v10 = qword_281051F70;
        v11 = 56;
        goto LABEL_186;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 56;
        goto LABEL_375;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 56;
      goto LABEL_299;
    case 57:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[81];
        }

        if (a3 != 1)
        {
          goto LABEL_300;
        }

        v10 = qword_281051F70;
        v11 = 57;
        goto LABEL_186;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 57;
        goto LABEL_375;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 57;
      goto LABEL_299;
    case 58:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[82];
        }

        if (a3 != 1)
        {
          goto LABEL_300;
        }

        v10 = qword_281051F70;
        v11 = 58;
        goto LABEL_186;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 58;
        goto LABEL_375;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 58;
      goto LABEL_299;
    case 59:
      v8 = "BOOL";
      v9 = 59;
      goto LABEL_179;
    case 60:
      v8 = "double";
      v9 = 60;
      goto LABEL_179;
    case 61:
      v8 = "double";
      v9 = 61;
      goto LABEL_179;
    case 62:
      v8 = "double";
      v9 = 62;
      goto LABEL_179;
    case 63:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[90];
        }

        if (a3 != 1)
        {
          goto LABEL_300;
        }

        v10 = qword_281051F70;
        v11 = 63;
        goto LABEL_186;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 63;
        goto LABEL_375;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 63;
      goto LABEL_299;
    case 64:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[91];
        }

        if (a3 != 1)
        {
          goto LABEL_300;
        }

        v10 = qword_281051F70;
        v11 = 64;
        goto LABEL_186;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 64;
        goto LABEL_375;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 64;
      goto LABEL_299;
    case 65:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[92];
        }

        if (a3 != 1)
        {
          goto LABEL_300;
        }

        v10 = qword_281051F70;
        v11 = 65;
        goto LABEL_186;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 65;
        goto LABEL_375;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 65;
      goto LABEL_299;
    case 66:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[93];
        }

        if (a3 != 1)
        {
          goto LABEL_300;
        }

        v10 = qword_281051F70;
        v11 = 66;
        goto LABEL_186;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 66;
        goto LABEL_375;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 66;
      goto LABEL_299;
    case 67:
      v8 = "double";
      v9 = 67;
LABEL_179:
      throwWrongTypeForParamId(v9, v8, "int", a4, a5, a6, a7, a8);
      return 0;
    case 68:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[96];
        }

        if (a3 != 1)
        {
          goto LABEL_300;
        }

        v10 = qword_281051F70;
        v11 = 68;
        goto LABEL_186;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 68;
        goto LABEL_375;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 68;
      goto LABEL_299;
    case 69:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[97];
        }

        if (a3 != 1)
        {
          goto LABEL_300;
        }

        v10 = qword_281051F70;
        v11 = 69;
        goto LABEL_186;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 69;
        goto LABEL_375;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 69;
      goto LABEL_299;
    case 70:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[98];
        }

        if (a3 == 1)
        {
          v10 = qword_281051F70;
          v11 = 70;
LABEL_186:
          ParamByParamId = ParamSpecMgr::getParamByParamId(v10, v11, a3, a4, a5, a6, a7, a8);
          v14 = **ParamByParamId;
        }

LABEL_300:
        throwWrongQueryMode(a3, "int", a3, a4, a5, a6, a7, a8);
        return 0;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 70;
LABEL_375:
        v21 = ParamSpecMgr::getParamByParamId(v19, v20, a3, a4, a5, a6, a7, a8);
        v22 = **v21;
      }

      if (a3 != 3)
      {
        goto LABEL_300;
      }

      v15 = qword_281051F70;
      v16 = 70;
LABEL_299:
      v17 = ParamSpecMgr::getParamByParamId(v15, v16, a3, a4, a5, a6, a7, a8);
      v18 = **v17;
    default:
      throwWrongParamIdValue(a2, "int", a3, a4, a5, a6, a7, a8);
      return 0;
  }
}

double AdapterParamSet::getDoubleParameter(double *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 1:
      v8 = "BOOL";
      v9 = 1;
      goto LABEL_133;
    case 2:
      v8 = "BOOL";
      v9 = 2;
      goto LABEL_133;
    case 3:
      v8 = "BOOL";
      v9 = 3;
      goto LABEL_133;
    case 4:
      v8 = "int";
      v9 = 4;
      goto LABEL_133;
    case 5:
      v8 = "int";
      v9 = 5;
      goto LABEL_133;
    case 6:
      v8 = "int";
      v9 = 6;
      goto LABEL_133;
    case 7:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[7];
        }

        if (a3 != 1)
        {
          goto LABEL_198;
        }

        v10 = qword_281051F70;
        v11 = 7;
        goto LABEL_130;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 7;
        goto LABEL_239;
      }

      if (a3 != 3)
      {
        goto LABEL_198;
      }

      v15 = qword_281051F70;
      v16 = 7;
      goto LABEL_197;
    case 8:
      v8 = "int";
      v9 = 8;
      goto LABEL_133;
    case 9:
      v8 = "int";
      v9 = 9;
      goto LABEL_133;
    case 10:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[9];
        }

        if (a3 != 1)
        {
          goto LABEL_198;
        }

        v10 = qword_281051F70;
        v11 = 10;
        goto LABEL_130;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 10;
        goto LABEL_239;
      }

      if (a3 != 3)
      {
        goto LABEL_198;
      }

      v15 = qword_281051F70;
      v16 = 10;
      goto LABEL_197;
    case 11:
      v8 = "BOOL";
      v9 = 11;
      goto LABEL_133;
    case 12:
      v8 = "BOOL";
      v9 = 12;
      goto LABEL_133;
    case 13:
      v8 = "BOOL";
      v9 = 13;
      goto LABEL_133;
    case 14:
      v8 = "BOOL";
      v9 = 14;
      goto LABEL_133;
    case 15:
      v8 = "int";
      v9 = 15;
      goto LABEL_133;
    case 16:
      v8 = "int";
      v9 = 16;
      goto LABEL_133;
    case 17:
      v8 = "int";
      v9 = 17;
      goto LABEL_133;
    case 18:
      v8 = "BOOL";
      v9 = 18;
      goto LABEL_133;
    case 19:
      v8 = "int";
      v9 = 19;
      goto LABEL_133;
    case 20:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[13];
        }

        if (a3 != 1)
        {
          goto LABEL_198;
        }

        v10 = qword_281051F70;
        v11 = 20;
        goto LABEL_130;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 20;
        goto LABEL_239;
      }

      if (a3 != 3)
      {
        goto LABEL_198;
      }

      v15 = qword_281051F70;
      v16 = 20;
      goto LABEL_197;
    case 21:
      v8 = "int";
      v9 = 21;
      goto LABEL_133;
    case 22:
      v8 = "int";
      v9 = 22;
      goto LABEL_133;
    case 23:
      v8 = "int";
      v9 = 23;
      goto LABEL_133;
    case 24:
      v8 = "int";
      v9 = 24;
      goto LABEL_133;
    case 25:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[16];
        }

        if (a3 != 1)
        {
          goto LABEL_198;
        }

        v10 = qword_281051F70;
        v11 = 25;
        goto LABEL_130;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 25;
        goto LABEL_239;
      }

      if (a3 != 3)
      {
        goto LABEL_198;
      }

      v15 = qword_281051F70;
      v16 = 25;
      goto LABEL_197;
    case 26:
      v8 = "int";
      v9 = 26;
      goto LABEL_133;
    case 27:
      v8 = "BOOL";
      v9 = 27;
      goto LABEL_133;
    case 28:
      v8 = "int";
      v9 = 28;
      goto LABEL_133;
    case 29:
      v8 = "int";
      v9 = 29;
      goto LABEL_133;
    case 30:
      v8 = "int";
      v9 = 30;
      goto LABEL_133;
    case 31:
      v8 = "int";
      v9 = 31;
      goto LABEL_133;
    case 32:
      v8 = "int";
      v9 = 32;
      goto LABEL_133;
    case 33:
      v8 = "BOOL";
      v9 = 33;
      goto LABEL_133;
    case 34:
      v8 = "int";
      v9 = 34;
      goto LABEL_133;
    case 35:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[22];
        }

        if (a3 != 1)
        {
          goto LABEL_198;
        }

        v10 = qword_281051F70;
        v11 = 35;
        goto LABEL_130;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 35;
        goto LABEL_239;
      }

      if (a3 != 3)
      {
        goto LABEL_198;
      }

      v15 = qword_281051F70;
      v16 = 35;
      goto LABEL_197;
    case 36:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[23];
        }

        if (a3 != 1)
        {
          goto LABEL_198;
        }

        v10 = qword_281051F70;
        v11 = 36;
        goto LABEL_130;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 36;
        goto LABEL_239;
      }

      if (a3 != 3)
      {
        goto LABEL_198;
      }

      v15 = qword_281051F70;
      v16 = 36;
      goto LABEL_197;
    case 37:
      v8 = "enum";
      v9 = 37;
      goto LABEL_133;
    case 38:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[25];
        }

        if (a3 != 1)
        {
          goto LABEL_198;
        }

        v10 = qword_281051F70;
        v11 = 38;
        goto LABEL_130;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 38;
        goto LABEL_239;
      }

      if (a3 != 3)
      {
        goto LABEL_198;
      }

      v15 = qword_281051F70;
      v16 = 38;
      goto LABEL_197;
    case 39:
      v8 = "int";
      v9 = 39;
      goto LABEL_133;
    case 40:
      v8 = "int";
      v9 = 40;
      goto LABEL_133;
    case 41:
      v8 = "int";
      v9 = 41;
      goto LABEL_133;
    case 42:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[28];
        }

        if (a3 != 1)
        {
          goto LABEL_198;
        }

        v10 = qword_281051F70;
        v11 = 42;
        goto LABEL_130;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 42;
        goto LABEL_239;
      }

      if (a3 != 3)
      {
        goto LABEL_198;
      }

      v15 = qword_281051F70;
      v16 = 42;
      goto LABEL_197;
    case 43:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[29];
        }

        if (a3 != 1)
        {
          goto LABEL_198;
        }

        v10 = qword_281051F70;
        v11 = 43;
        goto LABEL_130;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 43;
        goto LABEL_239;
      }

      if (a3 != 3)
      {
        goto LABEL_198;
      }

      v15 = qword_281051F70;
      v16 = 43;
      goto LABEL_197;
    case 44:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[30];
        }

        if (a3 != 1)
        {
          goto LABEL_198;
        }

        v10 = qword_281051F70;
        v11 = 44;
        goto LABEL_130;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 44;
        goto LABEL_239;
      }

      if (a3 != 3)
      {
        goto LABEL_198;
      }

      v15 = qword_281051F70;
      v16 = 44;
      goto LABEL_197;
    case 45:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[31];
        }

        if (a3 != 1)
        {
          goto LABEL_198;
        }

        v10 = qword_281051F70;
        v11 = 45;
        goto LABEL_130;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 45;
        goto LABEL_239;
      }

      if (a3 != 3)
      {
        goto LABEL_198;
      }

      v15 = qword_281051F70;
      v16 = 45;
      goto LABEL_197;
    case 46:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[32];
        }

        if (a3 != 1)
        {
          goto LABEL_198;
        }

        v10 = qword_281051F70;
        v11 = 46;
        goto LABEL_130;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 46;
        goto LABEL_239;
      }

      if (a3 != 3)
      {
        goto LABEL_198;
      }

      v15 = qword_281051F70;
      v16 = 46;
      goto LABEL_197;
    case 47:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[33];
        }

        if (a3 != 1)
        {
          goto LABEL_198;
        }

        v10 = qword_281051F70;
        v11 = 47;
        goto LABEL_130;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 47;
        goto LABEL_239;
      }

      if (a3 != 3)
      {
        goto LABEL_198;
      }

      v15 = qword_281051F70;
      v16 = 47;
      goto LABEL_197;
    case 48:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[34];
        }

        if (a3 != 1)
        {
          goto LABEL_198;
        }

        v10 = qword_281051F70;
        v11 = 48;
        goto LABEL_130;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 48;
        goto LABEL_239;
      }

      if (a3 != 3)
      {
        goto LABEL_198;
      }

      v15 = qword_281051F70;
      v16 = 48;
      goto LABEL_197;
    case 49:
      v8 = "int";
      v9 = 49;
      goto LABEL_133;
    case 50:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[36];
        }

        if (a3 != 1)
        {
          goto LABEL_198;
        }

        v10 = qword_281051F70;
        v11 = 50;
        goto LABEL_130;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 50;
        goto LABEL_239;
      }

      if (a3 != 3)
      {
        goto LABEL_198;
      }

      v15 = qword_281051F70;
      v16 = 50;
      goto LABEL_197;
    case 51:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[37];
        }

        if (a3 != 1)
        {
          goto LABEL_198;
        }

        v10 = qword_281051F70;
        v11 = 51;
        goto LABEL_130;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 51;
        goto LABEL_239;
      }

      if (a3 != 3)
      {
        goto LABEL_198;
      }

      v15 = qword_281051F70;
      v16 = 51;
      goto LABEL_197;
    case 52:
      v8 = "BOOL";
      v9 = 52;
      goto LABEL_133;
    case 53:
      v8 = "int";
      v9 = 53;
      goto LABEL_133;
    case 54:
      v8 = "int";
      v9 = 54;
      goto LABEL_133;
    case 55:
      v8 = "int";
      v9 = 55;
      goto LABEL_133;
    case 56:
      v8 = "int";
      v9 = 56;
      goto LABEL_133;
    case 57:
      v8 = "int";
      v9 = 57;
      goto LABEL_133;
    case 58:
      v8 = "int";
      v9 = 58;
      goto LABEL_133;
    case 59:
      v8 = "BOOL";
      v9 = 59;
      goto LABEL_133;
    case 60:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[42];
        }

        if (a3 != 1)
        {
          goto LABEL_198;
        }

        v10 = qword_281051F70;
        v11 = 60;
        goto LABEL_130;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 60;
        goto LABEL_239;
      }

      if (a3 != 3)
      {
        goto LABEL_198;
      }

      v15 = qword_281051F70;
      v16 = 60;
      goto LABEL_197;
    case 61:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[43];
        }

        if (a3 != 1)
        {
          goto LABEL_198;
        }

        v10 = qword_281051F70;
        v11 = 61;
        goto LABEL_130;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 61;
        goto LABEL_239;
      }

      if (a3 != 3)
      {
        goto LABEL_198;
      }

      v15 = qword_281051F70;
      v16 = 61;
      goto LABEL_197;
    case 62:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[44];
        }

        if (a3 != 1)
        {
          goto LABEL_198;
        }

        v10 = qword_281051F70;
        v11 = 62;
        goto LABEL_130;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 62;
        goto LABEL_239;
      }

      if (a3 != 3)
      {
        goto LABEL_198;
      }

      v15 = qword_281051F70;
      v16 = 62;
      goto LABEL_197;
    case 63:
      v8 = "int";
      v9 = 63;
      goto LABEL_133;
    case 64:
      v8 = "int";
      v9 = 64;
      goto LABEL_133;
    case 65:
      v8 = "int";
      v9 = 65;
      goto LABEL_133;
    case 66:
      v8 = "int";
      v9 = 66;
      goto LABEL_133;
    case 67:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[47];
        }

        if (a3 == 1)
        {
          v10 = qword_281051F70;
          v11 = 67;
LABEL_130:
          ParamByParamId = ParamSpecMgr::getParamByParamId(v10, v11, a3, a4, a5, a6, a7, a8);
          v13 = **ParamByParamId;
        }

LABEL_198:
        throwWrongQueryMode(a3, "double", a3, a4, a5, a6, a7, a8);
        return 0.0;
      }

      if (a3 == 2)
      {
        v19 = qword_281051F70;
        v20 = 67;
LABEL_239:
        v21 = ParamSpecMgr::getParamByParamId(v19, v20, a3, a4, a5, a6, a7, a8);
        v22 = **v21;
      }

      if (a3 != 3)
      {
        goto LABEL_198;
      }

      v15 = qword_281051F70;
      v16 = 67;
LABEL_197:
      v17 = ParamSpecMgr::getParamByParamId(v15, v16, a3, a4, a5, a6, a7, a8);
      v18 = **v17;
    case 68:
      v8 = "int";
      v9 = 68;
      goto LABEL_133;
    case 69:
      v8 = "int";
      v9 = 69;
      goto LABEL_133;
    case 70:
      v8 = "int";
      v9 = 70;
LABEL_133:
      throwWrongTypeForParamId(v9, v8, "double", a4, a5, a6, a7, a8);
      return 0.0;
    default:
      throwWrongParamIdValue(a2, "double", a3, a4, a5, a6, a7, a8);
      return 0.0;
  }
}

uint64_t AdapterParamSet::getStringParameter(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 1:
      v8 = "BOOL";
      v9 = 1;
      goto LABEL_72;
    case 2:
      v8 = "BOOL";
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
      v8 = "int";
      v9 = 5;
      goto LABEL_72;
    case 6:
      v8 = "int";
      v9 = 6;
      goto LABEL_72;
    case 7:
      v8 = "double";
      v9 = 7;
      goto LABEL_72;
    case 8:
      v8 = "int";
      v9 = 8;
      goto LABEL_72;
    case 9:
      v8 = "int";
      v9 = 9;
      goto LABEL_72;
    case 10:
      v8 = "double";
      v9 = 10;
      goto LABEL_72;
    case 11:
      v8 = "BOOL";
      v9 = 11;
      goto LABEL_72;
    case 12:
      v8 = "BOOL";
      v9 = 12;
      goto LABEL_72;
    case 13:
      v8 = "BOOL";
      v9 = 13;
      goto LABEL_72;
    case 14:
      v8 = "BOOL";
      v9 = 14;
      goto LABEL_72;
    case 15:
      v8 = "int";
      v9 = 15;
      goto LABEL_72;
    case 16:
      v8 = "int";
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
      v8 = "double";
      v9 = 20;
      goto LABEL_72;
    case 21:
      v8 = "int";
      v9 = 21;
      goto LABEL_72;
    case 22:
      v8 = "int";
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
      v8 = "double";
      v9 = 25;
      goto LABEL_72;
    case 26:
      v8 = "int";
      v9 = 26;
      goto LABEL_72;
    case 27:
      v8 = "BOOL";
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
      v8 = "int";
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
      v8 = "double";
      v9 = 36;
      goto LABEL_72;
    case 37:
      v8 = "enum";
      v9 = 37;
      goto LABEL_72;
    case 38:
      v8 = "double";
      v9 = 38;
      goto LABEL_72;
    case 39:
      v8 = "int";
      v9 = 39;
      goto LABEL_72;
    case 40:
      v8 = "int";
      v9 = 40;
      goto LABEL_72;
    case 41:
      v8 = "int";
      v9 = 41;
      goto LABEL_72;
    case 42:
      v8 = "double";
      v9 = 42;
      goto LABEL_72;
    case 43:
      v8 = "double";
      v9 = 43;
      goto LABEL_72;
    case 44:
      v8 = "double";
      v9 = 44;
      goto LABEL_72;
    case 45:
      v8 = "double";
      v9 = 45;
      goto LABEL_72;
    case 46:
      v8 = "double";
      v9 = 46;
      goto LABEL_72;
    case 47:
      v8 = "double";
      v9 = 47;
      goto LABEL_72;
    case 48:
      v8 = "double";
      v9 = 48;
      goto LABEL_72;
    case 49:
      v8 = "int";
      v9 = 49;
      goto LABEL_72;
    case 50:
      v8 = "double";
      v9 = 50;
      goto LABEL_72;
    case 51:
      v8 = "double";
      v9 = 51;
      goto LABEL_72;
    case 52:
      v8 = "BOOL";
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
      v8 = "BOOL";
      v9 = 59;
      goto LABEL_72;
    case 60:
      v8 = "double";
      v9 = 60;
      goto LABEL_72;
    case 61:
      v8 = "double";
      v9 = 61;
      goto LABEL_72;
    case 62:
      v8 = "double";
      v9 = 62;
      goto LABEL_72;
    case 63:
      v8 = "int";
      v9 = 63;
      goto LABEL_72;
    case 64:
      v8 = "int";
      v9 = 64;
      goto LABEL_72;
    case 65:
      v8 = "int";
      v9 = 65;
      goto LABEL_72;
    case 66:
      v8 = "int";
      v9 = 66;
      goto LABEL_72;
    case 67:
      v8 = "double";
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

uint64_t AdapterParamSet::getEnumParameter(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 1:
      v8 = "BOOL";
      v9 = 1;
      goto LABEL_78;
    case 2:
      v8 = "BOOL";
      v9 = 2;
      goto LABEL_78;
    case 3:
      v8 = "BOOL";
      v9 = 3;
      goto LABEL_78;
    case 4:
      v8 = "int";
      v9 = 4;
      goto LABEL_78;
    case 5:
      v8 = "int";
      v9 = 5;
      goto LABEL_78;
    case 6:
      v8 = "int";
      v9 = 6;
      goto LABEL_78;
    case 7:
      v8 = "double";
      v9 = 7;
      goto LABEL_78;
    case 8:
      v8 = "int";
      v9 = 8;
      goto LABEL_78;
    case 9:
      v8 = "int";
      v9 = 9;
      goto LABEL_78;
    case 10:
      v8 = "double";
      v9 = 10;
      goto LABEL_78;
    case 11:
      v8 = "BOOL";
      v9 = 11;
      goto LABEL_78;
    case 12:
      v8 = "BOOL";
      v9 = 12;
      goto LABEL_78;
    case 13:
      v8 = "BOOL";
      v9 = 13;
      goto LABEL_78;
    case 14:
      v8 = "BOOL";
      v9 = 14;
      goto LABEL_78;
    case 15:
      v8 = "int";
      v9 = 15;
      goto LABEL_78;
    case 16:
      v8 = "int";
      v9 = 16;
      goto LABEL_78;
    case 17:
      v8 = "int";
      v9 = 17;
      goto LABEL_78;
    case 18:
      v8 = "BOOL";
      v9 = 18;
      goto LABEL_78;
    case 19:
      v8 = "int";
      v9 = 19;
      goto LABEL_78;
    case 20:
      v8 = "double";
      v9 = 20;
      goto LABEL_78;
    case 21:
      v8 = "int";
      v9 = 21;
      goto LABEL_78;
    case 22:
      v8 = "int";
      v9 = 22;
      goto LABEL_78;
    case 23:
      v8 = "int";
      v9 = 23;
      goto LABEL_78;
    case 24:
      v8 = "int";
      v9 = 24;
      goto LABEL_78;
    case 25:
      v8 = "double";
      v9 = 25;
      goto LABEL_78;
    case 26:
      v8 = "int";
      v9 = 26;
      goto LABEL_78;
    case 27:
      v8 = "BOOL";
      v9 = 27;
      goto LABEL_78;
    case 28:
      v8 = "int";
      v9 = 28;
      goto LABEL_78;
    case 29:
      v8 = "int";
      v9 = 29;
      goto LABEL_78;
    case 30:
      v8 = "int";
      v9 = 30;
      goto LABEL_78;
    case 31:
      v8 = "int";
      v9 = 31;
      goto LABEL_78;
    case 32:
      v8 = "int";
      v9 = 32;
      goto LABEL_78;
    case 33:
      v8 = "BOOL";
      v9 = 33;
      goto LABEL_78;
    case 34:
      v8 = "int";
      v9 = 34;
      goto LABEL_78;
    case 35:
      v8 = "double";
      v9 = 35;
      goto LABEL_78;
    case 36:
      v8 = "double";
      v9 = 36;
      goto LABEL_78;
    case 37:
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051F70, 37, a3, a4, a5, a6, a7, a8);
          if (ParamByParamId)
          {
            v20 = **ParamByParamId;
          }

          return EnumParamSpec::getMinVal(ParamByParamId);
        }

        if (a3 == 3)
        {
          v17 = ParamSpecMgr::getParamByParamId(qword_281051F70, 37, a3, a4, a5, a6, a7, a8);
          if (v17)
          {
            v18 = **v17;
          }

          return EnumParamSpec::getMaxVal(v17);
        }

        goto LABEL_89;
      }

      if (!a3)
      {
        return *(a1 + 192);
      }

      if (a3 != 1)
      {
LABEL_89:
        throwWrongQueryMode(a3, "enum", a3, a4, a5, a6, a7, a8);
        return 0;
      }

      v10 = ParamSpecMgr::getParamByParamId(qword_281051F70, 37, a3, a4, a5, a6, a7, a8);
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
    case 38:
      v8 = "double";
      v9 = 38;
      goto LABEL_78;
    case 39:
      v8 = "int";
      v9 = 39;
      goto LABEL_78;
    case 40:
      v8 = "int";
      v9 = 40;
      goto LABEL_78;
    case 41:
      v8 = "int";
      v9 = 41;
      goto LABEL_78;
    case 42:
      v8 = "double";
      v9 = 42;
      goto LABEL_78;
    case 43:
      v8 = "double";
      v9 = 43;
      goto LABEL_78;
    case 44:
      v8 = "double";
      v9 = 44;
      goto LABEL_78;
    case 45:
      v8 = "double";
      v9 = 45;
      goto LABEL_78;
    case 46:
      v8 = "double";
      v9 = 46;
      goto LABEL_78;
    case 47:
      v8 = "double";
      v9 = 47;
      goto LABEL_78;
    case 48:
      v8 = "double";
      v9 = 48;
      goto LABEL_78;
    case 49:
      v8 = "int";
      v9 = 49;
      goto LABEL_78;
    case 50:
      v8 = "double";
      v9 = 50;
      goto LABEL_78;
    case 51:
      v8 = "double";
      v9 = 51;
      goto LABEL_78;
    case 52:
      v8 = "BOOL";
      v9 = 52;
      goto LABEL_78;
    case 53:
      v8 = "int";
      v9 = 53;
      goto LABEL_78;
    case 54:
      v8 = "int";
      v9 = 54;
      goto LABEL_78;
    case 55:
      v8 = "int";
      v9 = 55;
      goto LABEL_78;
    case 56:
      v8 = "int";
      v9 = 56;
      goto LABEL_78;
    case 57:
      v8 = "int";
      v9 = 57;
      goto LABEL_78;
    case 58:
      v8 = "int";
      v9 = 58;
      goto LABEL_78;
    case 59:
      v8 = "BOOL";
      v9 = 59;
      goto LABEL_78;
    case 60:
      v8 = "double";
      v9 = 60;
      goto LABEL_78;
    case 61:
      v8 = "double";
      v9 = 61;
      goto LABEL_78;
    case 62:
      v8 = "double";
      v9 = 62;
      goto LABEL_78;
    case 63:
      v8 = "int";
      v9 = 63;
      goto LABEL_78;
    case 64:
      v8 = "int";
      v9 = 64;
      goto LABEL_78;
    case 65:
      v8 = "int";
      v9 = 65;
      goto LABEL_78;
    case 66:
      v8 = "int";
      v9 = 66;
      goto LABEL_78;
    case 67:
      v8 = "double";
      v9 = 67;
      goto LABEL_78;
    case 68:
      v8 = "int";
      v9 = 68;
      goto LABEL_78;
    case 69:
      v8 = "int";
      v9 = 69;
      goto LABEL_78;
    case 70:
      v8 = "int";
      v9 = 70;
LABEL_78:
      throwWrongTypeForParamId(v9, v8, "BOOL", a4, a5, a6, a7, a8);
      return 0;
    default:
      throwWrongParamIdValue(a2, "enum", a3, a4, a5, a6, a7, a8);
      return 0;
  }
}

void AdapterParamSet::setBoolParameter(AdapterParamSet *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v9 = a3;
  switch(a2)
  {
    case 1:
      if (*(this + 9))
      {
        v11 = "AdaptationAccumulateDoublyGenericBackoffPels";
        goto LABEL_92;
      }

      *(this + 40) = a3;
      return;
    case 2:
      if (*(this + 9))
      {
        v11 = "AdaptationAccumulateLeftGenericBackoffPels";
        goto LABEL_92;
      }

      *(this + 41) = a3;
      return;
    case 3:
      if (*(this + 9))
      {
        v11 = "AdaptationAccumulateRightGenericBackoffPels";
        goto LABEL_92;
      }

      *(this + 42) = a3;
      return;
    case 4:
      throwWrongTypeForParamId(4, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_44;
    case 5:
LABEL_44:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_45;
    case 6:
LABEL_45:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_46;
    case 7:
LABEL_46:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_47;
    case 8:
LABEL_47:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_48;
    case 9:
LABEL_48:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_49;
    case 10:
LABEL_49:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_50;
    case 11:
LABEL_50:
      if (*(this + 9))
      {
        v11 = "AdaptationConTransAccComputeHierScorerTransforms";
        goto LABEL_92;
      }

      *(this + 80) = v9;
      return;
    case 12:
      if (*(this + 9))
      {
        v11 = "AdaptationConTransAccComputeTransformMatrix";
        goto LABEL_92;
      }

      *(this + 81) = a3;
      return;
    case 13:
      if (*(this + 9))
      {
        v11 = "AdaptationConTransAccComputeTranslation";
        goto LABEL_92;
      }

      *(this + 82) = a3;
      return;
    case 14:
      if (*(this + 9))
      {
        v11 = "AdaptationConTransAccDiagonalTransforms";
        goto LABEL_92;
      }

      *(this + 83) = a3;
      return;
    case 15:
      throwWrongTypeForParamId(15, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_36;
    case 16:
LABEL_36:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_37;
    case 17:
LABEL_37:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_38;
    case 18:
LABEL_38:
      if (*(this + 9))
      {
        v11 = "AdaptationConTransAccInitFromIdentityMatrix";
        goto LABEL_92;
      }

      *(this + 96) = v9;
      return;
    case 19:
      throwWrongTypeForParamId(19, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_62;
    case 20:
LABEL_62:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_63;
    case 21:
LABEL_63:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_64;
    case 22:
LABEL_64:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_65;
    case 23:
LABEL_65:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_66;
    case 24:
LABEL_66:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_67;
    case 25:
LABEL_67:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_68;
    case 26:
LABEL_68:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_69;
    case 27:
LABEL_69:
      if (*(this + 9))
      {
        v11 = "AdaptationConTransAccOnlineIncludeCurrentTransform";
        goto LABEL_92;
      }

      *(this + 140) = v9;
      return;
    case 28:
      throwWrongTypeForParamId(28, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_54;
    case 29:
LABEL_54:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_55;
    case 30:
LABEL_55:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_56;
    case 31:
LABEL_56:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_57;
    case 32:
LABEL_57:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_58;
    case 33:
LABEL_58:
      if (*(this + 9))
      {
        v11 = "AdaptationConTransAccEconomizeCofactorComputation";
        goto LABEL_92;
      }

      *(this + 164) = v9;
      return;
    case 34:
      throwWrongTypeForParamId(34, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_73;
    case 35:
LABEL_73:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_74;
    case 36:
LABEL_74:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_75;
    case 37:
LABEL_75:
      throwWrongTypeForParamId(v8, "enum", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_76;
    case 38:
LABEL_76:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_77;
    case 39:
LABEL_77:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_78;
    case 40:
LABEL_78:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_79;
    case 41:
LABEL_79:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_80;
    case 42:
LABEL_80:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_81;
    case 43:
LABEL_81:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_82;
    case 44:
LABEL_82:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_83;
    case 45:
LABEL_83:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_84;
    case 46:
LABEL_84:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_85;
    case 47:
LABEL_85:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_86;
    case 48:
LABEL_86:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_87;
    case 49:
LABEL_87:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_88;
    case 50:
LABEL_88:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_89;
    case 51:
LABEL_89:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_90;
    case 52:
LABEL_90:
      if (*(this + 9))
      {
        v11 = "AdaptationDTMMSmoothGradients";
        goto LABEL_92;
      }

      *(this + 304) = v9;
      break;
    case 53:
      throwWrongTypeForParamId(53, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_19;
    case 54:
LABEL_19:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_20;
    case 55:
LABEL_20:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_21;
    case 56:
LABEL_21:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_22;
    case 57:
LABEL_22:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_23;
    case 58:
LABEL_23:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_24;
    case 59:
LABEL_24:
      if (*(this + 9))
      {
        v11 = "AdaptationMicUseDiagonal";
LABEL_92:

        throwParamSetSetFailed(v11, "BOOL", a3, a4, a5, a6, a7, a8);
      }

      else
      {
        *(this + 332) = v9;
      }

      break;
    case 60:
      throwWrongTypeForParamId(60, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_5;
    case 61:
LABEL_5:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_6;
    case 62:
LABEL_6:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_7;
    case 63:
LABEL_7:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_8;
    case 64:
LABEL_8:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_9;
    case 65:
LABEL_9:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_10;
    case 66:
LABEL_10:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_11;
    case 67:
LABEL_11:
      throwWrongTypeForParamId(v8, "double", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_12;
    case 68:
LABEL_12:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_13;
    case 69:
LABEL_13:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_14;
    case 70:
LABEL_14:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      goto LABEL_15;
    default:
LABEL_15:

      throwWrongParamIdValue(v8, "BOOL", a3, a4, a5, a6, a7, a8);
      return;
  }
}