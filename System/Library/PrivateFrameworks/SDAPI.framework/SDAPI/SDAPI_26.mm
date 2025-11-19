void sub_2626D8BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t DgnThreadMgr::recordTraceEvent(uint64_t result, unsigned int a2, int a3, char a4)
{
  if (*(result + 76) == 1)
  {
    v4 = result;
    if ((*(result + 77) & 1) == 0)
    {
      *(result + 77) = 1;
      if (a2 == -1)
      {
        if (a3 == -1)
        {
          result = DgnThreadTrace::addInRegion(result + 80, -1, a4);
        }

        else
        {
          result = DgnThreadTrace::add(result + 80, a3, a4);
        }
      }

      else
      {
        v5 = *(*(*(result + 8) + 8 * a2) + 56);
        if (a2 == a3)
        {
          v6 = -1;
        }

        else
        {
          v6 = a3;
        }

        result = DgnThreadTrace::add(v5 + 144, v6, a4);
      }

      *(v4 + 77) = 0;
    }
  }

  return result;
}

uint64_t *DgnThreadClient::startup(DgnThreadClient *this)
{
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v10, &gGlobalMemChunkRegion);
  if (*(this + 1572) == 1)
  {
    DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 2);
  }

  *(this + 390) = 1;
  pthread_create(this + 6, 0, CurryDgnThreadMain, *(this + 7));
  *(this + 5) = *(this + 6);
  if (*(this + 1572) == 1)
  {
    DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 4);
  }

  DgnEvent::wait((this + 320));
  if (*(this + 1572) == 1)
  {
    DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 6);
  }

  *(this + 390) = 0;
  DgnThreadClient::checkForWorkerError(this, v2, v3, v4, v5, v6, v7, v8);
  return Latch<MemChunkRegion,LatchAdapter>::~Latch(&v10);
}

void sub_2626D8DE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

void DgnThreadClient::checkForWorkerError(DgnThreadClient *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(this + 7);
  if (!v9 || *(v9 + 64) == 6)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1455, "mrecutil/dthread", 9, "%u", a7, a8, *(this + 7));
    v9 = *(this + 7);
  }

  if (*(v9 + 68) == 1)
  {
    v10 = *(v9 + 72);
    if (v10 == 2)
    {
      v12 = *(v9 + 16);
      DgnThreadClient::handleMemoryException(this);
    }

    v11 = *(v9 + 80);

    DgnThreadClient::handleException(this, v11, v10);
  }
}

void DgnThreadClient::shutdown(DgnThreadClient *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 1572) == 1)
  {
    DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 3);
  }

  DgnThreadClient::checkForWorkerError(this, a2, a3, a4, a5, a6, a7, a8);
  *(this + 390) = 6;
  DgnEvent::signal((this + 72));
  DgnEvent::signal((this + 1064));
  if (*(this + 1572) == 1)
  {
    DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 4);
  }

  DgnThreadClient::waitForThreadDoneOrTerminate(this, 30000, v9, v10, v11);
  if (*(this + 1572) == 1)
  {
    DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 3);
  }

  DgnThreadClient::checkForWorkerError(this, v12, v13, v14, v15, v16, v17, v18);
  *(this + 390) = 0;
}

uint64_t DgnThreadClient::waitForThreadDoneOrTerminate(DgnThreadClient *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x28223BE20](this, a2, a3, a4, a5);
  v9[1027] = *MEMORY[0x277D85DE8];
  if (DgnEvent::timedWait((v5 + 1312), v6))
  {
    v9[0] = 0;
    if (!pthread_join(*(v5 + 48), v9))
    {
      result = 1;
      goto LABEL_5;
    }

    errWarnInternal("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1156, "mrecutil/dthread", 10, "%u", *(v5 + 28));
  }

  (*(*v5 + 32))(v5);
  result = 0;
LABEL_5:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void DgnThreadClient::play(DgnThreadClient *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  DgnThreadClient::checkForWorkerError(this, a2, a3, a4, a5, a6, a7, a8);
  *(this + 390) = 2;
  DgnEvent::signal((this + 72));
  DgnEvent::signal((this + 1064));
  if (*(this + 1572) == 1)
  {
    DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 4);
  }

  DgnEvent::wait((this + 568));
  if (*(this + 1572) == 1)
  {
    DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 6);
  }

  *(this + 390) = 0;
  DgnThreadClient::checkForWorkerError(this, v9, v10, v11, v12, v13, v14, v15);
  if (*(this + 3) == 1)
  {
    if (*(this + 1572) == 1)
    {
      DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 7);
    }

    if (*(this + 1566) == 1)
    {
      DgnEvent::signal((this + 72));
    }

    DgnEvent::wait((this + 320));
    if (*(this + 1572) == 1)
    {
      DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 6);
    }

    DgnEvent::signal((this + 320));
    if (*(this + 1566) == 1)
    {
      if (*(this + 1572) == 1)
      {
        DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 8);
      }

      *(this + 392) = GetRegionChecksum(*(this + 2));
      if (*(this + 1572) == 1)
      {
        v16 = DgnThreadMgr::smpThreadMgr;
        v17 = *(this + 16);
        v18 = *(this + 7);

        DgnThreadMgr::recordTraceEvent(v16, v17, v18, 6);
      }
    }
  }
}

void DgnThreadClient::playAllUntilWorkerPauses(DgnThreadClient *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  DgnThreadClient::checkForWorkerError(this, a2, a3, a4, a5, a6, a7, a8);
  *(this + 390) = 4;
  DgnEvent::signal((this + 72));
  DgnEvent::signal((this + 1064));
  if (*(this + 1572) == 1)
  {
    DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 4);
  }

  DgnEvent::wait((this + 568));
  if (*(this + 1572) == 1)
  {
    DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 6);
  }

  *(this + 390) = 0;
  DgnThreadClient::checkForWorkerError(this, v9, v10, v11, v12, v13, v14, v15);
  if (*(this + 3) == 1)
  {
    if (*(this + 1572) == 1)
    {
      DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 7);
    }

    if (*(this + 1566) == 1)
    {
      DgnEvent::signal((this + 72));
    }

    DgnEvent::wait((this + 320));
    if (*(this + 1572) == 1)
    {
      DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 6);
    }

    DgnEvent::signal((this + 320));
    if (*(this + 1566) == 1)
    {
      if (*(this + 1572) == 1)
      {
        DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 8);
      }

      *(this + 392) = GetRegionChecksum(*(this + 2));
      if (*(this + 1572) == 1)
      {
        v16 = DgnThreadMgr::smpThreadMgr;
        v17 = *(this + 16);
        v18 = *(this + 7);

        DgnThreadMgr::recordTraceEvent(v16, v17, v18, 6);
      }
    }
  }
}

void DgnThreadClient::pause(DgnThreadClient *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  DgnThreadClient::checkForWorkerError(this, a2, a3, a4, a5, a6, a7, a8);
  *(this + 390) = 5;
  DgnEvent::signal((this + 1064));
  if (*(this + 1572) == 1)
  {
    DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 4);
  }

  DgnEvent::wait((this + 320));
  if (*(this + 1566) == 1 && *(this + 3) == 1)
  {
    if (*(this + 1572) == 1)
    {
      DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 8);
    }

    if (GetRegionChecksum(*(this + 2)) != *(this + 392))
    {
      v18 = *(this + 392);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1326, "mrecutil/dthread", 7, "%u %u %u", v9, v10, *(this + 7));
    }
  }

  if (*(this + 1572) == 1)
  {
    DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 6);
  }

  *(this + 390) = 0;
  *(*(this + 7) + 64) = 2;
  DgnEvent::signal((this + 816));

  DgnThreadClient::checkForWorkerError(this, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t DgnThreadClient::terminate(DgnThreadClient *this)
{
  errWarnInternal("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1379, "mrecutil/dthread", 5, "%u", *(this + 7));
  result = pthread_kill(*(this + 6), 20);
  v3 = *(this + 7);
  *(v3 + 64) = 6;
  *(v3 + 12) = 0;
  return result;
}

void DgnThreadClient::handleMemoryException(DgnThreadClient *this)
{
  v1 = this;
  if (*(this + 1572) == 1)
  {
    this = DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(this + 16), *(this + 7), 16);
  }

  if ((*(v1 + 1565) & 1) == 0)
  {
    *(v1 + 1565) = 1;
    if (DgnThreadMgr::getCurrentThreadId(this) == -1)
    {
      snprintf(DgnThreadClient::handleMemoryException::buffer, 0x190uLL, "Memory allocation in worker thread %u failed: rethrowing memory exception in global thread.\n");
    }

    else
    {
      snprintf(DgnThreadClient::handleMemoryException::buffer, 0x190uLL, "Memory allocation in worker thread %u failed: rethrowing memory exception in client thread %u.\n");
    }

    xprintString(DgnThreadClient::handleMemoryException::buffer);
    MemStatsDisplayFromRef(0, 1, 1, 0, 0, 0, 0);
  }

  ThrowMemoryException(v1 + 8);
}

uint64_t DgnThreadClient::handleException(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 1572) == 1)
  {
    DgnThreadMgr::recordTraceEvent(DgnThreadMgr::smpThreadMgr, *(a1 + 64), *(a1 + 28), 15);
  }

  return errCopyAndThrowException(a3, a2);
}

double DgnThreadWorker::DgnThreadWorker(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  *a1 = &unk_287527BF8;
  *(a1 + 8) = a2;
  *(a1 + 12) = 0;
  *(a1 + 16) = a5;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = a4;
  *(a1 + 48) = a3;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 92) = 0;
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = *(a3 + 1572);
  *(a1 + 144) = 0;
  *(a1 + 148) = a5;
  *(a1 + 152) = a4;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 88) = *(a3 + 1566);
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  return result;
}

void DgnThreadWorker::~DgnThreadWorker(DgnThreadWorker *this)
{
  *this = &unk_287527BF8;
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 7) = 0;
    DgnPrinter::~DgnPrinter(v2);
    MemChunkFree(v3, 0);
  }

  DgnThreadTrace::~DgnThreadTrace((this + 144));
}

{
  DgnThreadWorker::~DgnThreadWorker(this);

  JUMPOUT(0x26672B1B0);
}

void DgnThreadWorker::printSize(DgnThreadWorker *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1598, &v123);
  if (v124)
  {
    v15 = v123;
  }

  else
  {
    v15 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, v12, v13, v14, a3, &unk_262888C56, a3, &unk_262888C56, v15);
  DgnString::~DgnString(&v123);
  if (a2 != -1)
  {
    xlprintf("%d ", v16, v17, v18, v19, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v16, v17, v18, v19, a3, &unk_262888C56);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1599, &v123);
  if (v124)
  {
    v24 = v123;
  }

  else
  {
    v24 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v20, v21, v22, v23, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v24, 4, 4, 0);
  DgnString::~DgnString(&v123);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1600, &v123);
  if (v124)
  {
    v29 = v123;
  }

  else
  {
    v29 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, v26, v27, v28, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v29, 1, 1, 0);
  DgnString::~DgnString(&v123);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1601, &v123);
  if (v124)
  {
    v34 = v123;
  }

  else
  {
    v34 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, v31, v32, v33, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v34, 4, 4, 0);
  DgnString::~DgnString(&v123);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v35 = 4;
  }

  else
  {
    v35 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1602, &v123);
  if (v124)
  {
    v40 = v123;
  }

  else
  {
    v40 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v36, v37, v38, v39, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v40, v35, v35, 0);
  DgnString::~DgnString(&v123);
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

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1603, &v123);
  if (v124)
  {
    v46 = v123;
  }

  else
  {
    v46 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v43, v44, v45, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v46, v41, v41, 0);
  DgnString::~DgnString(&v123);
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

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1605, &v123);
  if (v124)
  {
    v52 = v123;
  }

  else
  {
    v52 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v48, v49, v50, v51, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v52, v47, v47, 0);
  DgnString::~DgnString(&v123);
  *a4 += v47;
  *a5 += v47;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v53 = 4;
  }

  else
  {
    v53 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1606, &v123);
  if (v124)
  {
    v58 = v123;
  }

  else
  {
    v58 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v54, v55, v56, v57, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v58, v53, v53, 0);
  DgnString::~DgnString(&v123);
  *a4 += v53;
  *a5 += v53;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1610, &v123);
  if (v124)
  {
    v63 = v123;
  }

  else
  {
    v63 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v59, v60, v61, v62, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v63, 4, 4, 0);
  DgnString::~DgnString(&v123);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1612, &v123);
  if (v124)
  {
    v68 = v123;
  }

  else
  {
    v68 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v64, v65, v66, v67, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v68, 1, 1, 0);
  DgnString::~DgnString(&v123);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1614, &v123);
  if (v124)
  {
    v73 = v123;
  }

  else
  {
    v73 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v69, v70, v71, v72, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v73, 4, 4, 0);
  DgnString::~DgnString(&v123);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v74 = 4;
  }

  else
  {
    v74 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1615, &v123);
  if (v124)
  {
    v79 = v123;
  }

  else
  {
    v79 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v75, v76, v77, v78, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v79, v74, v74, 0);
  DgnString::~DgnString(&v123);
  *a4 += v74;
  *a5 += v74;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1617, &v123);
  if (v124)
  {
    v84 = v123;
  }

  else
  {
    v84 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v80, v81, v82, v83, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v84, 1, 1, 0);
  DgnString::~DgnString(&v123);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1620, &v123);
  if (v124)
  {
    v89 = v123;
  }

  else
  {
    v89 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v85, v86, v87, v88, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v89, 4, 4, 0);
  DgnString::~DgnString(&v123);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1622, &v123);
  if (v124)
  {
    v94 = v123;
  }

  else
  {
    v94 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v90, v91, v92, v93, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v94, 4, 4, 0);
  DgnString::~DgnString(&v123);
  *a4 += 4;
  *a5 += 4;
  v95 = SnapTime::sizeObject(this + 104, 0);
  v96 = SnapTime::sizeObject(this + 104, 1);
  v97 = SnapTime::sizeObject(this + 104, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1624, &v123);
  if (v124)
  {
    v102 = v123;
  }

  else
  {
    v102 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v98, v99, v100, v101, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v102, v95, v96, v97);
  DgnString::~DgnString(&v123);
  *a4 += v95;
  *a5 += v96;
  *a6 += v97;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1626, &v123);
  if (v124)
  {
    v107 = v123;
  }

  else
  {
    v107 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v103, v104, v105, v106, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v107, 1, 1, 0);
  DgnString::~DgnString(&v123);
  ++*a4;
  ++*a5;
  v108 = sizeObject(this + 144, 0);
  v109 = sizeObject(this + 144, 1);
  v110 = sizeObject(this + 144, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1627, &v123);
  if (v124)
  {
    v115 = v123;
  }

  else
  {
    v115 = &unk_262888C56;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v111, v112, v113, v114, (a3 + 1), &unk_262888C56, (34 - a3), (34 - a3), v115, v108, v109, v110);
  DgnString::~DgnString(&v123);
  *a4 += v108;
  *a5 += v109;
  *a6 += v110;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1629, &v123);
  if (v124)
  {
    v120 = v123;
  }

  else
  {
    v120 = &unk_262888C56;
  }

  v121 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v116, v117, v118, v119, a3, &unk_262888C56, (35 - a3), (35 - a3), v120, *a4, *a5, *a6);
  DgnString::~DgnString(&v123);
}

void sub_2626DA214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void DgnThreadWorker::reportErrorAsWarning(DgnThreadWorker *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x28223BE20](this, a2, a3, a4, a5);
  v7 = v5;
  v31 = *MEMORY[0x277D85DE8];
  v8 = *(v5 + 72);
  if (v8 == 2)
  {
    if (v6)
    {
      strcpy(DgnThreadWorker::reportErrorAsWarning(BOOL)::buffer, "Memory allocation in client thread failed.\n");
      xprintString(DgnThreadWorker::reportErrorAsWarning(BOOL)::buffer);
      MemStatsDisplayFromRef(0, 1, 1, 0, 0, 0, 0);
      v9 = *(v7 + 16);
      errWarnInternal("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1643, "mrecutil/dthread", 8, "%u");
    }

    else
    {
      v15 = *(v5 + 16);
      v16 = *(v5 + 64);
      errWarnInternal("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1648, "mrecutil/dthread", 9, "%u %u");
    }
  }

  else
  {
    v10 = *(v5 + 80);
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = v6 == 0;
    }

    if (v11)
    {
      if (v8 > 1 || v10 == 0)
      {
        v13 = *(v5 + 16);
        v14 = *(v5 + 64);
        errWarnInternal("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1659, "mrecutil/dthread", 2, "%u %u");
      }

      else
      {
        DgnString::DgnString(&v29);
        v26[0] = 0;
        v27 = 0x2000;
        v28 = 0;
        if (*(v10 + 16))
        {
          v19 = *(v10 + 8);
        }

        v20 = *(v10 + 24);
        v21 = &unk_262888C56;
        if (*(v10 + 40))
        {
          v22 = *(v10 + 32);
        }

        v23 = *(v10 + 48);
        MessageFormatPrefix(v26, 0, 1, *(v10 + 72));
        if (v30)
        {
          v24 = v29;
        }

        else
        {
          v24 = &unk_262888C56;
        }

        if (v28)
        {
          v25 = v24;
        }

        else
        {
          v25 = v26;
        }

        if (*(v10 + 64))
        {
          v21 = *(v10 + 56);
        }

        errWarnInternal("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1673, "mrecutil/dthread", 3, "%u %u %.500s %.500s", *(v7 + 16), *(v7 + 64), v25, v21);
        DgnString::~DgnString(&v29);
      }
    }

    else
    {
      v17 = *(v5 + 16);
      errWarnInternal("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 1653, "mrecutil/dthread", 1, "%u");
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t DgnThreadWorker::play(uint64_t a1, int a2)
{
  v4 = (*(*a1 + 64))(a1);
  v5 = *(a1 + 48);
  if ((*(v5 + 1564) & 1) == 0)
  {
    v7 = v4;
    do
    {
      v8 = *(v5 + 56);
      if (v8)
      {
        LOBYTE(v8) = *(v8 + 68);
      }

      result = 2;
      if ((v8 & 1) != 0 || v7 == 6)
      {
        return result;
      }

      v9 = *(v5 + 1560);
      if (v9 == 6 || v7 == 5)
      {
        return 1;
      }

      result = 0;
      if (a2 == 3 || v7 == 4)
      {
        return result;
      }

      if (v9 == 5)
      {
        if (!v7)
        {
          goto LABEL_41;
        }

        if (a2 != 4 && v7 != 2)
        {
          return 0;
        }
      }

      else if (*(a1 + 8) == 1 && a2 != 4 && (v7 & 0xFFFFFFFD) != 0)
      {
        return 0;
      }

      if ((v7 & 0xFFFFFFFE) != 2)
      {
        goto LABEL_41;
      }

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      if (*(a1 + 136) == 1)
      {
        DgnThreadTrace::add(a1 + 144, -1, 5);
      }

      SnapTime::recordTime(&v20, 1, 0, 0, 0);
      v11 = *(a1 + 96);
      v12 = (*(a1 + 48) + 1064);
      if (v11)
      {
        DgnEvent::timedWait(v12, v11);
      }

      else
      {
        DgnEvent::wait(v12);
      }

      SnapTime::recordTime(&v18, 1, 0, 0, 0);
      if (*(a1 + 136) == 1)
      {
        DgnThreadTrace::add(a1 + 144, -1, 6);
      }

      v13 = v21;
      v14 = v19;
      *(a1 + 104) = vaddq_s64(*(a1 + 104), vsubq_s64(v18, v20));
      *(a1 + 120) = vaddq_s64(*(a1 + 120), vsubq_s64(v14, v13));
      v15 = *(a1 + 48);
      if (*(v15 + 1564))
      {
        return 2;
      }

      v16 = *(v15 + 56);
      if (v16)
      {
        if (*(v16 + 68))
        {
          return 2;
        }
      }

      v17 = *(v15 + 1560);
      if (v17 == 5)
      {
        if (a2 == 4)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v17 == 6)
        {
          return 1;
        }

        if (a2 == 4 || *(a1 + 8) != 1)
        {
          goto LABEL_41;
        }
      }

      if (v7 == 3)
      {
        return 0;
      }

LABEL_41:
      v7 = (*(*a1 + 64))(a1);
      v5 = *(a1 + 48);
    }

    while (*(v5 + 1564) != 1);
  }

  return 2;
}

void DgnThreadMgr::DgnThreadMgr(DgnThreadMgr *this)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0x10000001DLL;
  *(this + 8) = 1;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 40) = 0;
  *(this + 18) = 0;
  *(this + 75) = 0;
  *(this + 21) = -1;
  *(this + 11) = &gGlobalMemChunkRegion;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  DgnPrimArray<unsigned long long>::reallocElts(this + 8, 1, 1);
  v2 = *(this + 4);
  *(*(this + 1) + 8 * v2) = 0;
  *(this + 4) = v2 + 1;
}

void sub_2626DA8A4(_Unwind_Exception *a1)
{
  DgnIOwnArray<DgnThreadTrace *>::releaseAll(v2 + 192);
  DgnThreadTrace::~DgnThreadTrace(v4);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v3);
  DgnIArray<Utterance *>::~DgnIArray(v1);
  _Unwind_Resume(a1);
}

void DgnThreadMgr::startupThreadMgr(DgnThreadMgr *this)
{
  v5 = 0;
  v1 = pthread_key_create(&v5, 0);
  v2 = v5;
  if (v1)
  {
    v2 = -1;
  }

  DgnThreadMgr::smTlsID = v2;
  v3 = MemChunkAlloc(0xD0uLL, 0);
  DgnThreadMgr::DgnThreadMgr(v3);
  DgnThreadMgr::smpThreadMgr = v4;
}

uint64_t DgnThreadMgr::getNewThreadId(DgnThreadMgr *this)
{
  NextId = IdMgr<unsigned int>::getNextId(this + 6);
  for (i = *(this + 4); i <= NextId; *(this + 4) = i)
  {
    if (i == *(this + 5))
    {
      DgnPrimArray<unsigned long long>::reallocElts(this + 8, 1, 1);
      i = *(this + 4);
    }

    *(*(this + 1) + 8 * i++) = 0;
  }

  return NextId;
}

void DgnThreadMgr::validateDgnThreadId(DgnThreadMgr *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 4) <= a2 || !*(*(this + 1) + 8 * a2))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dthread.cpp", 2045, "mrecutil/dthread", 1, "%u", a7, a8, a2);
  }
}

void DgnThreadMgr::broadcastError(DgnThreadMgr *this)
{
  if (DgnThreadMgr::smpThreadMgr)
  {
    *(DgnThreadMgr::smpThreadMgr + 4) = 1;
    pthread_yield_np();
    v1 = DgnThreadMgr::smpThreadMgr;
    if (*(DgnThreadMgr::smpThreadMgr + 16) >= 2u)
    {
      v2 = 1;
      do
      {
        v3 = *(*(v1 + 8) + 8 * v2);
        if (v3)
        {
          DgnThreadClient::error(v3);
          v1 = DgnThreadMgr::smpThreadMgr;
        }

        ++v2;
      }

      while (v2 < *(v1 + 16));
    }

    pthread_yield_np();
    v7 = DgnThreadMgr::smpThreadMgr;
    if (*(DgnThreadMgr::smpThreadMgr + 16) >= 2u)
    {
      v8 = 1;
      do
      {
        v9 = *(*(v7 + 8) + 8 * v8);
        if (v9)
        {
          DgnThreadClient::waitForThreadDoneOrTerminate(v9, 1000, v4, v5, v6);
          v7 = DgnThreadMgr::smpThreadMgr;
        }

        ++v8;
      }

      while (v8 < *(v7 + 16));
    }
  }
}

DgnThreadMgr *DgnThreadMgr::startClientCallbackEvent(DgnThreadMgr *this)
{
  if (DgnThreadMgr::smpThreadMgr && *(DgnThreadMgr::smpThreadMgr + 76) == 1)
  {
    v1 = this;
    CurrentThreadId = DgnThreadMgr::getCurrentThreadId(this);
    v3 = DgnThreadMgr::smpThreadMgr;
    if (v1)
    {
      v4 = 12;
    }

    else
    {
      v4 = 11;
    }

    return DgnThreadMgr::recordTraceEvent(v3, CurrentThreadId, CurrentThreadId, v4);
  }

  return this;
}

DgnThreadMgr *DgnThreadMgr::endClientCallbackEvent(DgnThreadMgr *this)
{
  if (DgnThreadMgr::smpThreadMgr && *(DgnThreadMgr::smpThreadMgr + 76) == 1)
  {
    CurrentThreadId = DgnThreadMgr::getCurrentThreadId(this);
    v2 = DgnThreadMgr::smpThreadMgr;

    return DgnThreadMgr::recordTraceEvent(v2, CurrentThreadId, CurrentThreadId, 6);
  }

  return this;
}

uint64_t DgnThreadMgr::beginFileLoadOrSave(DgnThreadMgr *this)
{
  FileLoadOrSaveCounter = DgnThreadMgr::getFileLoadOrSaveCounter(this);
  v2 = (*FileLoadOrSaveCounter + 1);
  *FileLoadOrSaveCounter = v2;
  return v2;
}

uint64_t DgnThreadMgr::getFileLoadOrSaveCounter(DgnThreadMgr *this)
{
  CurrentThreadId = DgnThreadMgr::getCurrentThreadId(this);
  if (CurrentThreadId == -1)
  {
    return this + 72;
  }

  v9 = CurrentThreadId;
  DgnThreadMgr::validateDgnThreadId(this, CurrentThreadId, v3, v4, v5, v6, v7, v8);
  return *(*(*(this + 1) + 8 * v9) + 56) + 92;
}

uint64_t DgnThreadMgr::endFileLoadOrSave(DgnThreadMgr *this)
{
  FileLoadOrSaveCounter = DgnThreadMgr::getFileLoadOrSaveCounter(this);
  if (!*FileLoadOrSaveCounter)
  {
    return 0;
  }

  v2 = FileLoadOrSaveCounter;
  result = (*FileLoadOrSaveCounter - 1);
  *v2 = result;
  return result;
}

uint64_t *DgnThreadTrace::addInRegion(uint64_t a1, int a2, char a3)
{
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v7, *(a1 + 8));
  DgnThreadTrace::add(a1, a2, a3);
  return Latch<MemChunkRegion,LatchAdapter>::~Latch(&v7);
}

void sub_2626DACF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

unint64_t DgnPrimArray<unsigned long long>::copyArraySlice(unint64_t result, uint64_t *a2, unsigned int a3, unsigned int a4)
{
  v7 = result;
  v8 = *(result + 12);
  if (a4 <= v8)
  {
    *(result + 8) = a4;
    if (!a4)
    {
      return result;
    }
  }

  else
  {
    result = DgnPrimArray<unsigned long long>::reallocElts(result, a4 - v8, 0);
    *(v7 + 8) = a4;
  }

  v9 = *a2;
  v10 = *v7;
  v11 = a4;
  do
  {
    *v10++ = *(v9 + 8 * a3++);
    --v11;
  }

  while (v11);
  return result;
}

void *DgnIOwnArray<DgnThreadTrace *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<DgnThreadTrace>(*(*a1 + v3));
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

DgnThreadTrace *DgnDelete<DgnThreadTrace>(DgnThreadTrace *result)
{
  if (result)
  {
    DgnThreadTrace::~DgnThreadTrace(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t *TNewWords::findAndAddWords(uint64_t a1, int *a2, uint64_t a3, char *a4, char a5)
{
  if (TLexicon::checkName(*(a1 + 24), a2, 0, 0xFFFFFFFFFFFFFFFFLL))
  {
    return 0;
  }

  __p = 0;
  v31 = 0;
  v32 = 0;
  v11 = *(a1 + 24);
  v12 = TStringParam::get((*(a1 + 32) + 10744));
  v13 = *(a1 + 32);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v13 + 16464));
  v15 = *(v13 + 4 * TParam::getValidConfig((v13 + 16464), ActiveConfigHandle) + 16624);
  v16 = *(a1 + 32);
  v17 = TParam::getActiveConfigHandle((v16 + 16112));
  ValidConfig = TParam::getValidConfig((v16 + 16112), v17);
  TLexicon::findHeadClonesCollated(v11, a2, v12, v15, *(v16 + 4 * ValidConfig + 16272), &__p);
  v19 = __p;
  v20 = v31;
  if (v31 == __p)
  {
    v10 = 0;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v10 = 0;
    do
    {
      if ((v19[v21 + 16] & 0xC0) == 0)
      {
        if (!v10)
        {
          v10 = TGraph::addVertex(*(a1 + 8), a4);
          v19 = __p;
        }

        v23 = &v19[v21];
        v23[24] += a5;
        v24 = *(a1 + 8);
        v25 = *v23;
        v27 = 1;
        v28 = v25;
        v29 = *(v23 + 1);
        TGraph::addEdge(v24, a3, v10, &v27);
        v19 = __p;
        v20 = v31;
      }

      ++v22;
      v21 += 32;
    }

    while (v22 < (v20 - v19) >> 5);
  }

  std::vector<TLexiconMatch>::resize(&__p, 0);
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  return v10;
}

void sub_2626DAFDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TNewWords::addAlphanumWord(TNewWords *this)
{
  v2 = *(this + 4);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v2 + 1880));
  if (*(v2 + TParam::getValidConfig((v2 + 1880), ActiveConfigHandle) + 2032) != 1)
  {
    return 0;
  }

  v4 = *(*this + 16);
  v27 = v29;
  v28 = xmmword_26286B6F0;
  v30 = 1;
  if (!*v4)
  {
    goto LABEL_14;
  }

  v5 = 0;
  do
  {
    Segment = TSegmenter::getSegment(*(this + 2), v4);
    v7 = Segment;
    v8 = *(Segment + 24);
    if (v8 != 1 && (!v5 || v8 != 2))
    {
      break;
    }

    v9 = 0;
    v10 = *Segment;
      ;
    }

    TBuffer<wchar_t>::insert(&v27, *(&v28 + 1), v10, v9 - 1);
    ++v5;
    v4 = *(v7 + 8);
  }

  while (*v4);
  if (v5 >= 2)
  {
    if (*(&v28 + 1) >= v28)
    {
      if (v30)
      {
        v23 = 0;
        TBuffer<wchar_t>::insert(&v27, *(&v28 + 1), &v23, 1uLL);
        v12 = v27;
        --*(&v28 + 1);
      }

      else
      {
        v12 = v27;
        if (v28)
        {
          v27[v28 - 1] = 0;
        }
      }
    }

    else
    {
      v12 = v27;
      v27[*(&v28 + 1)] = 0;
    }

    if (!TNewWords::findAndAddWords(this, v12, *this, v4, 0))
    {
      v14 = *(this + 3);
      if (*(&v28 + 1) >= v28)
      {
        if (v30)
        {
          v23 = 0;
          TBuffer<wchar_t>::insert(&v27, *(&v28 + 1), &v23, 1uLL);
          v15 = v27;
          --*(&v28 + 1);
        }

        else
        {
          v15 = v27;
          if (v28)
          {
            v27[v28 - 1] = 0;
          }
        }
      }

      else
      {
        v15 = v27;
        v27[*(&v28 + 1)] = 0;
      }

      if (!TLexicon::checkName(v14, v15, 0, 0xFFFFFFFFFFFFFFFFLL))
      {
        v16 = TGraph::addVertex(*(this + 1), v4);
        v17 = *(this + 3);
        if (*(&v28 + 1) >= v28)
        {
          if (v30)
          {
            v23 = 0;
            TBuffer<wchar_t>::insert(&v27, *(&v28 + 1), &v23, 1uLL);
            v18 = v27;
            --*(&v28 + 1);
          }

          else
          {
            v18 = v27;
            if (v28)
            {
              v27[v28 - 1] = 0;
            }
          }
        }

        else
        {
          v18 = v27;
          v27[*(&v28 + 1)] = 0;
        }

        v19 = TLexicon::addTempWord(v17, v18, 0, 0, 0);
        v20 = *this;
        v21 = *(this + 1);
        v23 = 4;
        v24 = v19;
        v25 = 0;
        v26 = 0;
        TGraph::addEdge(v21, v20, v16, &v23);
      }
    }

    *(this + 5) = v4;
    v13 = 1;
  }

  else
  {
LABEL_14:
    v13 = 0;
  }

  if (v30 == 1 && v27 != v29 && v27)
  {
    MEMORY[0x26672B1B0]();
  }

  return v13;
}

void sub_2626DB2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (LOBYTE(STACK[0x438]) == 1 && a13 != v13 && a13 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

uint64_t TNewWords::addHyphenatedWord(TSegmenter **this)
{
  v81 = *MEMORY[0x277D85DE8];
  v1 = *(*this + 2);
  if (!*v1)
  {
    goto LABEL_29;
  }

  memset(v80, 0, sizeof(v80));
  Segment = TSegmenter::getSegment(this[2], v1);
  if (*(Segment + 24) == 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = v4;
      v8 = *Segment;
      v1 = *(Segment + 8);
      *(v80 + v7) = *Segment;
      v6 |= *(v8 + 4) == 0;
      v9 = TSegmenter::getSegment(this[2], v1);
      if (!v9)
      {
        break;
      }

      v10 = v9;
      if (wcscmp(*v9, "-"))
      {
        break;
      }

      v11 = TSegmenter::getSegment(this[2], v10[1]);
      if (!v11)
      {
        break;
      }

      v12 = v11;
      if (*(v11 + 24) == 5)
      {
        break;
      }

      v13 = **v11;
      {
        operator new();
      }

      v14 = v13 == 10 || v13 == 13;
      v15 = v14;
      v16 = v14 ? v12 : v10;
      v5 |= v15;
      v17 = v16[1];
      if (!*v17 || v7 >= 0xF)
      {
        break;
      }

      Segment = TSegmenter::getSegment(this[2], v17);
      v4 = v7 + 1;
    }

    while (*(Segment + 24) == 1);
    v19 = v7 + 1;
  }

  else
  {
    v5 = 0;
    v19 = 0;
    v6 = 0;
  }

  if (v19 < 2)
  {
LABEL_29:
    v20 = 0;
    goto LABEL_30;
  }

  v23 = 0;
  v75 = v78;
  v76 = 256;
  v79 = 1;
  v77 = 0;
    ;
  }

  TBuffer<wchar_t>::insert(&v75, 0, *&v80[0], v23 - 1);
  for (i = 1; i != v19; ++i)
  {
    v71 = 45;
    TBuffer<wchar_t>::insert(&v75, v77, &v71, 1uLL);
    v26 = 0;
    v27 = *(v80 + i);
      ;
    }

    TBuffer<wchar_t>::insert(&v75, v77, v27, v26 - 1);
  }

  if (v77 >= v76)
  {
    if (v79)
    {
      v71 = 0;
      TBuffer<wchar_t>::insert(&v75, v77, &v71, 1uLL);
      v29 = v75;
      --v77;
    }

    else
    {
      v29 = v75;
      if (v76)
      {
        v75[v76 - 1] = 0;
      }
    }
  }

  else
  {
    v29 = v75;
    v75[v77] = 0;
  }

  if (TNewWords::findAndAddWords(this, v29, *this, v1, 0))
  {
    goto LABEL_44;
  }

  if (v6)
  {
    goto LABEL_74;
  }

  if ((v5 & 1) != 0 || (v30 = this[4], ActiveConfigHandle = TParam::getActiveConfigHandle((v30 + 1384)), *(v30 + TParam::getValidConfig((v30 + 1384), ActiveConfigHandle) + 1536) == 1))
  {
    v32 = 0;
    v77 = 0;
      ;
    }

    TBuffer<wchar_t>::insert(&v75, 0, *&v80[0], v32 - 1);
    for (j = 1; j != v19; ++j)
    {
      v35 = 0;
      v36 = *(v80 + j);
        ;
      }

      TBuffer<wchar_t>::insert(&v75, v77, v36, v35 - 1);
    }

    if (v77 >= v76)
    {
      if (v79)
      {
        v71 = 0;
        TBuffer<wchar_t>::insert(&v75, v77, &v71, 1uLL);
        v38 = v75;
        --v77;
      }

      else
      {
        v38 = v75;
        if (v76)
        {
          v75[v76 - 1] = 0;
        }
      }
    }

    else
    {
      v38 = v75;
      v75[v77] = 0;
    }

    if (TNewWords::findAndAddWords(this, v38, *this, v1, 1))
    {
      goto LABEL_44;
    }
  }

  v39 = this[4];
  v40 = TParam::getActiveConfigHandle((v39 + 1632));
  if ((*(v39 + TParam::getValidConfig((v39 + 1632), v40) + 1784) & 1) == 0)
  {
LABEL_74:
    v51 = 4;
  }

  else
  {
    v41 = 0;
    v42 = 0;
    v43 = *this;
    v44 = v19 - 1;
LABEL_63:
    v70 = v42;
    v45 = v43;
    do
    {
      if (v44 == v41)
      {
        v46 = v1;
      }

      else
      {
        v46 = 0;
      }

      v47 = TNewWords::findAndAddWords(this, *(v80 + v41), v45, v46, 1);
      if (!v47)
      {
        v48 = *(v80 + v41);
        if (!TLexicon::checkName(this[3], v48, 0, 0xFFFFFFFFFFFFFFFFLL))
        {
          v49 = TLexicon::addTempWord(this[3], v48, 0, 0, 0);
          v43 = TGraph::addVertex(this[1], v46);
          v50 = this[1];
          v71 = 0;
          v72 = v49;
          v73 = 0;
          v74 = 0;
          TGraph::addEdge(v50, v45, v43, &v71);
          v51 = 0;
          v42 = 1;
          v14 = v44 == v41++;
          if (v14)
          {
            goto LABEL_75;
          }

          goto LABEL_63;
        }
      }

      ++v41;
      v45 = v47;
    }

    while (v19 != v41);
    v51 = 0;
    if ((v70 & 1) == 0)
    {
      goto LABEL_86;
    }
  }

LABEL_75:
  v52 = this[4];
  v53 = TParam::getActiveConfigHandle((v52 + 1880));
  if (*(v52 + TParam::getValidConfig((v52 + 1880), v53) + 2032) != 1)
  {
    goto LABEL_86;
  }

  v54 = this[4];
  v55 = TParam::getActiveConfigHandle((v54 + 1136));
  if (*(v54 + TParam::getValidConfig((v54 + 1136), v55) + 1288) != 1)
  {
    goto LABEL_86;
  }

  v56 = 0;
  v77 = 0;
    ;
  }

  TBuffer<wchar_t>::insert(&v75, 0, *&v80[0], v56 - 1);
  for (k = 1; k != v19; ++k)
  {
    v71 = 45;
    TBuffer<wchar_t>::insert(&v75, v77, &v71, 1uLL);
    v59 = 0;
    v60 = *(v80 + k);
      ;
    }

    TBuffer<wchar_t>::insert(&v75, v77, v60, v59 - 1);
  }

  v62 = this[3];
  v63 = TBuffer<wchar_t>::c_str(&v75);
  if (TLexicon::checkName(v62, v63, 0, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_86:
    v20 = 0;
    goto LABEL_87;
  }

  v64 = this[3];
  v65 = TBuffer<wchar_t>::c_str(&v75);
  v66 = TLexicon::addTempWord(v64, v65, 0, 0, 0);
  v68 = *this;
  v67 = this[1];
  v69 = TGraph::addVertex(v67, v1);
  v71 = v51;
  v72 = v66;
  v73 = 0;
  v74 = 0;
  TGraph::addEdge(v67, v68, v69, &v71);
LABEL_44:
  this[5] = v1;
  v20 = 1;
LABEL_87:
  if (v79 == 1 && v75 != v78 && v75)
  {
    MEMORY[0x26672B1B0]();
  }

LABEL_30:
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_2626DB9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  MEMORY[0x26672B1B0](a10, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

uint64_t TNewWords::addContractionWord(TNewWords *this)
{
  v2 = *(this + 4);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v2 + 1880));
  if (*(v2 + TParam::getValidConfig((v2 + 1880), ActiveConfigHandle) + 2032) != 1)
  {
    return 0;
  }

  v4 = TStringParam::get((*(this + 4) + 2376));
  if (!*v4)
  {
    return 0;
  }

  v5 = v4;
  Segment = TSegmenter::getSegment(*(this + 2), *(*this + 16));
  if ((*Segment)[1])
  {
    return 0;
  }

  v9 = Segment;
  v10 = wcschr(v5, **Segment);
  if (!v10)
  {
    return 0;
  }

  if (*(*this + 16) != *(*this + 24))
  {
    return 0;
  }

  v11 = v10;
  Vertex = TGraph::getVertex(*(this + 1), v9[1]);
  if (!Vertex)
  {
    return 0;
  }

  v13 = Vertex;
  if (*(Vertex + 16) != *(Vertex + 24))
  {
    return 0;
  }

  OutEdge = TVertex::getOutEdge(*this);
  if (OutEdge)
  {
    if (*(OutEdge + 24) != v13)
    {
      return 0;
    }

    while (1)
    {
      OutEdge = *(OutEdge + 8);
      if (!OutEdge)
      {
        break;
      }

      if ((*(OutEdge + 32) & 1) == 0)
      {
        PrevVertex = 0;
        if (*(OutEdge + 24) != v13)
        {
          return PrevVertex;
        }
      }
    }
  }

  v15 = TVertex::getInEdge(v13);
  v16 = *this;
  if (!v15)
  {
    goto LABEL_22;
  }

  if (*(v15 + 16) != v16)
  {
    return 0;
  }

  while (1)
  {
    v15 = *v15;
    if (!v15)
    {
      break;
    }

    if ((*(v15 + 32) & 1) == 0)
    {
      PrevVertex = 0;
      if (*(v15 + 16) != v16)
      {
        return PrevVertex;
      }
    }
  }

LABEL_22:
  PrevVertex = TGraph::getPrevVertex(*(this + 1), *(v16 + 24) - 1);
  if (!PrevVertex)
  {
    return PrevVertex;
  }

  v17 = TSegmenter::getSegment(*(this + 2), *(PrevVertex + 16));
  if (!v17 || *(v17 + 24) != 1 || *(v17 + 8) != *(*this + 24))
  {
    return 0;
  }

  v18 = 0;
  v38 = v40;
  v39 = xmmword_26286B6F0;
  v41 = 1;
  v19 = *v17;
    ;
  }

  TBuffer<wchar_t>::insert(&v38, 0, v19, v18 - 1);
  v34 = *v11;
  TBuffer<wchar_t>::insert(&v38, *(&v39 + 1), &v34, 1uLL);
  v21 = TSegmenter::getSegment(*(this + 2), v13[2]);
  v22 = v21;
  if (!v21 || *(v21 + 24) != 1)
  {
    goto LABEL_35;
  }

  v23 = 0;
  v24 = *v21;
    ;
  }

  TBuffer<wchar_t>::insert(&v38, *(&v39 + 1), v24, v23 - 1);
  v26 = TBuffer<wchar_t>::c_str(&v38);
  if (TNewWords::findAndAddWords(this, v26, PrevVertex, *(v22 + 8), 0))
  {
    goto LABEL_33;
  }

  v27 = *(this + 3);
  v28 = TBuffer<wchar_t>::c_str(&v38);
  if (TLexicon::checkName(v27, v28, 0, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_35:
    PrevVertex = 0;
    goto LABEL_36;
  }

  v29 = *(this + 3);
  v30 = TBuffer<wchar_t>::c_str(&v38);
  v31 = TLexicon::addTempWord(v29, v30, 0, 0, 0);
  v32 = *(this + 1);
  v33 = TGraph::addVertex(v32, *(v22 + 8));
  v34 = 4;
  v35 = v31;
  v36 = 0;
  v37 = 0;
  TGraph::addEdge(v32, PrevVertex, v33, &v34);
LABEL_33:
  *(this + 5) = *(v22 + 8);
  PrevVertex = 1;
LABEL_36:
  if (v41 == 1 && v38 != v40 && v38)
  {
    MEMORY[0x26672B1B0]();
  }

  return PrevVertex;
}

void sub_2626DBDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (LOBYTE(STACK[0x438]) == 1 && a13 != v13)
  {
    if (a13)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t TNewWords::addAcronymWord(TSegmenter **this)
{
  v1 = *(*this + 2);
  v39 = v41;
  v40 = xmmword_26286B6F0;
  v42 = 1;
  if (!*v1)
  {
    goto LABEL_26;
  }

  v3 = 1;
  do
  {
    Segment = TSegmenter::getSegment(this[2], v1);
    v5 = Segment;
    if (*(Segment + 24) != 1)
    {
      break;
    }

    v6 = *Segment;
    if (wcslen(*Segment) != 1)
    {
      break;
    }

    v7 = *v6;
    {
      operator new();
    }

    isUpper = TLocaleInfo::isUpper(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v7);
    v9 = 0;
    v10 = *v5;
      ;
    }

    TBuffer<wchar_t>::insert(&v39, *(&v40 + 1), v10, v9 - 1);
    v1 = *(v5 + 8);
    v12 = TSegmenter::getSegment(this[2], v1);
    v13 = v12;
    v3 &= isUpper;
    if (!v12)
    {
      break;
    }

    v14 = *v12;
    if (wcscmp(*v12, "."))
    {
      break;
    }

    v15 = 0;
      ;
    }

    TBuffer<wchar_t>::insert(&v39, *(&v40 + 1), v14, v15 - 1);
    v1 = v13[1];
  }

  while (*v1);
  if (*(&v40 + 1) >= 4uLL)
  {
    if ((v3 & 1) == 0)
    {
      goto LABEL_38;
    }

    v17 = 0;
    v35 = v37;
    v36 = xmmword_26286B6F0;
    v38 = 1;
    do
    {
      v18 = v39[v17];
      {
        operator new();
      }

      if (TLocaleInfo::isAlpha(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v18))
      {
        v43[0] = v39[v17];
        TBuffer<wchar_t>::insert(&v35, *(&v36 + 1), v43, 1uLL);
      }

      ++v17;
    }

    while (v17 < *(&v40 + 1));
    if (*(&v36 + 1) >= v36)
    {
      if (v38)
      {
        v43[0] = 0;
        TBuffer<wchar_t>::insert(&v35, *(&v36 + 1), v43, 1uLL);
        v20 = v35;
        --*(&v36 + 1);
      }

      else
      {
        v20 = v35;
        if (v36)
        {
          v35[v36 - 1] = 0;
        }
      }
    }

    else
    {
      v20 = v35;
      v35[*(&v36 + 1)] = 0;
    }

    v21 = TNewWords::findAndAddWords(this, v20, *this, v1, 1);
    if (v38 == 1 && v35 != v37 && v35)
    {
      MEMORY[0x26672B1B0]();
    }

    if (!v21)
    {
LABEL_38:
      v22 = this[4];
      ActiveConfigHandle = TParam::getActiveConfigHandle((v22 + 1880));
      if (*(v22 + TParam::getValidConfig((v22 + 1880), ActiveConfigHandle) + 2032) == 1)
      {
        if (*(&v40 + 1) >= v40)
        {
          if (v42)
          {
            LODWORD(v35) = 0;
            TBuffer<wchar_t>::insert(&v39, *(&v40 + 1), &v35, 1uLL);
            v24 = v39;
            --*(&v40 + 1);
          }

          else
          {
            v24 = v39;
            if (v40)
            {
              v39[v40 - 1] = 0;
            }
          }
        }

        else
        {
          v24 = v39;
          v39[*(&v40 + 1)] = 0;
        }

        if (!TNewWords::findAndAddWords(this, v24, *this, v1, 0))
        {
          v25 = this[3];
          if (*(&v40 + 1) >= v40)
          {
            if (v42)
            {
              LODWORD(v35) = 0;
              TBuffer<wchar_t>::insert(&v39, *(&v40 + 1), &v35, 1uLL);
              v26 = v39;
              --*(&v40 + 1);
            }

            else
            {
              v26 = v39;
              if (v40)
              {
                v39[v40 - 1] = 0;
              }
            }
          }

          else
          {
            v26 = v39;
            v39[*(&v40 + 1)] = 0;
          }

          if (!TLexicon::checkName(v25, v26, 0, 0xFFFFFFFFFFFFFFFFLL))
          {
            v27 = TGraph::addVertex(this[1], v1);
            v28 = this[3];
            if (*(&v40 + 1) >= v40)
            {
              if (v42)
              {
                LODWORD(v35) = 0;
                TBuffer<wchar_t>::insert(&v39, *(&v40 + 1), &v35, 1uLL);
                v29 = v39;
                --*(&v40 + 1);
              }

              else
              {
                v29 = v39;
                if (v40)
                {
                  v39[v40 - 1] = 0;
                }
              }
            }

            else
            {
              v29 = v39;
              v39[*(&v40 + 1)] = 0;
            }

            v30 = TLexicon::addTempWord(v28, v29, 0, 0, 0);
            v31 = *this;
            v32 = this[1];
            LODWORD(v35) = 4;
            v36 = v30;
            v37[0] = 0;
            TGraph::addEdge(v32, v31, v27, &v35);
          }
        }
      }
    }

    this[5] = v1;
    v19 = 1;
  }

  else
  {
LABEL_26:
    v19 = 0;
  }

  if (v42 == 1 && v39 != v41 && v39 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  return v19;
}

void sub_2626DC320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  MEMORY[0x26672B1B0](v11, 0x1070C40ADD13FEBLL);
  if (LOBYTE(STACK[0x428]) == 1 && a11 != v12 && a11)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0x848]) == 1 && STACK[0x430] != v13 && STACK[0x430] != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

uint64_t TNewWords::addAbbreviationWord(TNewWords *this)
{
  v2 = *(this + 4);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v2 + 1880));
  if (*(v2 + TParam::getValidConfig((v2 + 1880), ActiveConfigHandle) + 2032) != 1)
  {
    return 0;
  }

  result = TSegmenter::getSegment(*(this + 2), *(*this + 16));
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = *(result + 8);
  if (*(result + 24) != 1 || &v6[-*(*this + 16) - 6] < 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  result = TSegmenter::getSegment(*(this + 2), v6);
  if (!result)
  {
    return result;
  }

  v8 = result;
  if (wcscmp(*result, "."))
  {
    return 0;
  }

  v9 = *(v8 + 8);
  if (!*v9)
  {
    return 0;
  }

  OutEdge = TVertex::getOutEdge(*this);
  if (OutEdge)
  {
    v11 = OutEdge;
    if ((*(OutEdge + 64) & 0xC0) == 0)
    {
      return 0;
    }

    while (1)
    {
      v11 = *(v11 + 8);
      if (!v11)
      {
        break;
      }

      if ((*(v11 + 32) & 1) == 0)
      {
        result = 0;
        if ((*(v11 + 64) & 0xC0) == 0)
        {
          return result;
        }
      }
    }
  }

  if (!memchr(";:,!?", *v9, 6uLL))
  {
    result = TSegmenter::getSegment(*(this + 2), v9);
    if (!result)
    {
      return result;
    }

    Segment = result;
    if (*(result + 24))
    {
      return 0;
    }

    while (1)
    {
      v28 = *(Segment + 24);
      v29 = **Segment;
      GlobalLocaleInfo = TLocaleInfo::getGlobalLocaleInfo(result);
      if (v28)
      {
        break;
      }

      result = 0;
      if (v29 <= 8202)
      {
        if (v29 != 32 && v29 != 160)
        {
          return result;
        }
      }

      else
      {
        v31 = v29 == 8203 || v29 == 65279;
        if (!v31 && v29 != 12288)
        {
          return result;
        }
      }

      Segment = TSegmenter::getSegment(*(this + 2), *(Segment + 8));
      result = 0;
      if (!Segment)
      {
        return result;
      }
    }

    if (TLocaleInfo::isUpper(GlobalLocaleInfo, v29))
    {
      return 0;
    }
  }

  v12 = 0;
  v36[0] = v38;
  v36[1] = 256;
  v39 = 1;
  v13 = *v5;
  v37 = 0;
    ;
  }

  TBuffer<wchar_t>::insert(v36, 0, v13, v12 - 1);
  v15 = 0;
  v16 = *v8;
    ;
  }

  TBuffer<wchar_t>::insert(v36, v37, v16, v15 - 1);
  v18 = TBuffer<wchar_t>::c_str(v36);
  if (!TNewWords::findAndAddWords(this, v18, *this, *(v8 + 8), 0))
  {
    v19 = *(this + 3);
    v20 = TBuffer<wchar_t>::c_str(v36);
    if (!TLexicon::checkName(v19, v20, 0, 0xFFFFFFFFFFFFFFFFLL))
    {
      v21 = TGraph::addVertex(*(this + 1), *(v8 + 8));
      v22 = *(this + 3);
      v23 = TBuffer<wchar_t>::c_str(v36);
      v24 = TLexicon::addTempWord(v22, v23, 0, 0, 0);
      v25 = *this;
      v26 = *(this + 1);
      v32 = 4;
      v33 = v24;
      v34 = 0;
      v35 = 0;
      TGraph::addEdge(v26, v25, v21, &v32);
    }
  }

  *(this + 5) = *(v8 + 8);
  if (v39 == 1 && v36[0] != v38 && v36[0])
  {
    MEMORY[0x26672B1B0]();
  }

  return 1;
}

void sub_2626DC728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (LOBYTE(STACK[0x438]) == 1 && a13 != v13)
  {
    if (a13)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t TNewWords::addWords(uint64_t this, TVertex *a2, TGraph *a3, TSegmenter *a4, TLexicon *a5)
{
  *this = a2;
  *(this + 8) = a3;
  *(this + 16) = a4;
  *(this + 24) = a5;
  if (*(a2 + 2) >= *(this + 40))
  {
    v5 = this;
    this = TNewWords::addAlphanumWord(this);
    if ((this & 1) == 0)
    {
      this = TNewWords::addHyphenatedWord(v5);
      if ((this & 1) == 0)
      {
        this = TNewWords::addContractionWord(v5);
        if ((this & 1) == 0)
        {
          this = TNewWords::addAcronymWord(v5);
          if ((this & 1) == 0)
          {

            return TNewWords::addAbbreviationWord(v5);
          }
        }
      }
    }
  }

  return this;
}

void MrecInitModule_virtmap_fst(void)
{
  if (!gParDebugVirtMapShowContent)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugVirtMapShowContent", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugVirtMapShowContent = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugVirtMapShowContent);
  }

  if (!gParDebugVirtMapShowStats)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugVirtMapShowStats", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugVirtMapShowStats = v3;
    v4 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v4, &gParDebugVirtMapShowStats);
  }
}

void VirtMap::printSize(VirtMap *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/virtmap.cpp", 122, &v75);
  if (v76)
  {
    v16 = v75;
  }

  else
  {
    v16 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &byte_262899963, a3, &byte_262899963, v16);
  v74 = a6;
  DgnString::~DgnString(&v75);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &byte_262899963);
  fixed = sizeObject<DgnPrimFixArray<unsigned int>>(this, 0);
  v22 = sizeObject<DgnPrimFixArray<unsigned int>>(this, 1);
  v75 = 0;
  v76 = 0;
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v75);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/virtmap.cpp", 123, &v75);
  if (v76)
  {
    v27 = v75;
  }

  else
  {
    v27 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v24, v25, v26, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v27, fixed, v22, 0);
  DgnString::~DgnString(&v75);
  *a4 += fixed;
  *a5 += v22;
  v28 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v28 = 12;
  }

  v29 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v29 = 3;
  }

  v30 = *(this + 6);
  v31 = (((*(this + 7) - v30) + v30) << v29) + v28;
  v32 = (v30 << v29) + v28;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/virtmap.cpp", 124, &v75);
  if (v76)
  {
    v37 = v75;
  }

  else
  {
    v37 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, v34, v35, v36, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v37, v31, v32, 0);
  DgnString::~DgnString(&v75);
  *a4 += v31;
  *a5 += v32;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v38 = 12;
  }

  else
  {
    v38 = 16;
  }

  v39 = *(this + 10);
  v40 = *(this + 11);
  if (v40 >= v39)
  {
    v41 = 0;
    if (v39 > 0)
    {
      v38 += 4 * (v39 - 1) + 4;
    }

    v42 = v38 + 4 * (v40 - v39);
  }

  else
  {
    v41 = 4 * v39;
    v42 = v38;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/virtmap.cpp", 125, &v75);
  if (v76)
  {
    v47 = v75;
  }

  else
  {
    v47 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v43, v44, v45, v46, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v47, v42, v38, v41);
  DgnString::~DgnString(&v75);
  *a4 += v42;
  *a5 += v38;
  *v74 += v41;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/virtmap.cpp", 126, &v75);
  if (v76)
  {
    v52 = v75;
  }

  else
  {
    v52 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v48, v49, v50, v51, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v52, 4, 4, 0);
  DgnString::~DgnString(&v75);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/virtmap.cpp", 127, &v75);
  if (v76)
  {
    v57 = v75;
  }

  else
  {
    v57 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, v54, v55, v56, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v57, 4, 4, 0);
  DgnString::~DgnString(&v75);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/virtmap.cpp", 128, &v75);
  if (v76)
  {
    v62 = v75;
  }

  else
  {
    v62 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v58, v59, v60, v61, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v62, 4, 4, 0);
  DgnString::~DgnString(&v75);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/virtmap.cpp", 138, &v75);
  if (v76)
  {
    v67 = v75;
  }

  else
  {
    v67 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v63, v64, v65, v66, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v67, 1, 1, 0);
  DgnString::~DgnString(&v75);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/virtmap.cpp", 139, &v75);
  if (v76)
  {
    v72 = v75;
  }

  else
  {
    v72 = &byte_262899963;
  }

  v73 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v68, v69, v70, v71, a3, &byte_262899963, (35 - a3), (35 - a3), v72, *a4, *a5, *v74);
  DgnString::~DgnString(&v75);
}

void sub_2626DCDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<DgnPrimFixArray<unsigned int>>(uint64_t a1, int a2)
{
  v2 = 0;
  v11 = 0;
  v12 = 0;
  v3 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v3 = 8;
  }

  if (a2 != 3)
  {
    v2 = (gShadowDiagnosticShowIdealizedObjectSizes & 1) != 0 ? 12 : 16;
    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v4 = *(a1 + 8);
      if (v4 >= 1)
      {
        v5 = v4 + 1;
        v6 = (*a1 + 16 * v4 - 8);
        do
        {
          v7 = *v6;
          v6 -= 4;
          v8 = 4 * v7;
          if (v7 <= 0)
          {
            v9 = 0;
          }

          else
          {
            v9 = v8;
          }

          v2 += v3 + v9;
          --v5;
        }

        while (v5 > 1);
      }

      if (!a2)
      {
        v2 += v3 * (*(a1 + 12) - v4);
      }
    }
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(&v11);
  return v2;
}

void VirtMap::VirtMap(VirtMap *this)
{
  *(this + 45) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
}

uint64_t VirtMap::setEmpty(uint64_t this)
{
  v1 = *(this + 40);
  if (v1)
  {
    v2 = 0;
    v3 = 4 * v1;
    do
    {
      *(*(this + 16) + 8 * *(*(this + 32) + v2)) = 0;
      v2 += 4;
    }

    while (v3 != v2);
  }

  *(this + 40) = 0;
  *(this + 48) = 0;
  return this;
}

void VirtMap::~VirtMap(VirtMap *this)
{
  *(this + 13) = 0;
  *(this + 14) = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 32);
  DgnIArray<Utterance *>::~DgnIArray(this + 16);
  DgnArray<DgnVector>::releaseAll(this);
}

void MrecInitModule_pel_pel(void)
{
  if (!gParDebugShowPelInfoOnLoad)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugShowPelInfoOnLoad", byte_262888D40, byte_262888D40, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugShowPelInfoOnLoad = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowPelInfoOnLoad);
  }

  if (!gParDebugAcousticMicPacking)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugAcousticMicPacking", byte_262888D40, byte_262888D40, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugAcousticMicPacking = v3;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugAcousticMicPacking);
  }

  if (!gParDebugShowShortListFrameClassification)
  {
    v4 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v4, "DebugShowShortListFrameClassification", byte_262888D40, byte_262888D40, 0, 0, 0);
    *v5 = &unk_287527EA0;
    gParDebugShowShortListFrameClassification = v5;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowShortListFrameClassification);
  }

  if (!gParDiagnosticPelHierarchyCreationUseReference)
  {
    v6 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v6, "DiagnosticPelHierarchyCreationUseReference", byte_262888D40, byte_262888D40, 0, 0, 0);
    *v7 = &unk_287527EA0;
    gParDiagnosticPelHierarchyCreationUseReference = v7;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticPelHierarchyCreationUseReference);
  }

  if (!gParDebugShowShortListSetId)
  {
    v8 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v8, "DebugShowShortListSetId", byte_262888D40, byte_262888D40, 0, 0, 0);
    *v9 = &unk_287527EA0;
    gParDebugShowShortListSetId = v9;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowShortListSetId);
  }

  if (!gParDiagnosticPelHierarchyUpdate)
  {
    v10 = MemChunkAlloc(0x38uLL, 0);
    v14 = 0x200000000;
    v11 = IntGlobalParamBase::IntGlobalParamBase(v10, "DiagnosticPelHierarchyUpdate", byte_262888D40, byte_262888D40, 0, &v14, 0);
    *v11 = &unk_287528130;
    gParDiagnosticPelHierarchyUpdate = v11;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticPelHierarchyUpdate);
  }

  if (!gParDebugExciseUnneededPelsGenonesComps)
  {
    v12 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v12, "DebugExciseUnneededPelsGenonesComps", byte_262888D40, byte_262888D40, 0, 0, 0);
    *v13 = &unk_287527EA0;
    gParDebugExciseUnneededPelsGenonesComps = v13;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugExciseUnneededPelsGenonesComps);
  }
}

uint64_t sizeObject<FrameDecisionTreeHyperplane>(uint64_t a1, int a2)
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
        v2 += sizeObject<unsigned int>(*a1 + v8, a2) + 4;
        --v7;
        v8 -= 24;
      }

      while (v7 > 1);
      if (a2)
      {
        goto LABEL_11;
      }
    }

    v2 += (v3 + 4) * (*(a1 + 12) - *(a1 + 8));
  }

LABEL_11:
  DgnPrimArray<unsigned int>::~DgnPrimArray(v10);
  return v2;
}

uint64_t FrameDecisionTree::classifyFrame(unsigned __int16 **a1, unsigned __int8 **a2)
{
  v2 = *a1;
  v3 = **a1;
  if (**a1)
  {
    v4 = *(a1 + 16);
    v5 = *a2;
    v6 = *a1;
    v7 = a1[2];
    do
    {
      v8 = v6[2];
      v9 = 0;
      if (v4)
      {
        v10 = *&v7[12 * v6[2] + 4];
        v11 = v4;
        v12 = v5;
        do
        {
          v14 = *v12++;
          v13 = v14;
          v15 = *v10++;
          v9 += v15 * v13;
          --v11;
        }

        while (v11);
      }

      if (*&v7[12 * v6[2]] + v9 >= 0)
      {
        v3 = v6[1];
      }

      v6 = &v2[3 * v3];
      v3 = *v6;
    }

    while (*v6);
  }

  else
  {
    v6 = *a1;
  }

  return v6[2];
}

uint64_t FrameDecisionTree::writeObject(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v19 = *(a1 + 8);
  writeObject(a2, &v19, a3);
  v18 = *(a1 + 24);
  writeObject(a2, &v18, a3);
  result = writeObject(a2, (a1 + 32), a3);
  if (v18)
  {
    v7 = 0;
    for (i = 0; i < v18; ++i)
    {
      v17 = *(*(a1 + 16) + v7);
      result = writeObject(a2, &v17, a3);
      v9 = v18;
      v7 += 24;
    }

    if (v18)
    {
      v10 = 0;
      LODWORD(v11) = *(a1 + 32);
      do
      {
        if (v11)
        {
          v12 = 0;
          do
          {
            v17 = *(*(*(a1 + 16) + 24 * v10 + 8) + 4 * v12);
            result = writeObject(a2, &v17, a3);
            ++v12;
            v11 = *(a1 + 32);
          }

          while (v12 < v11);
          v9 = v18;
        }

        ++v10;
      }

      while (v10 < v9);
    }
  }

  if (v19)
  {
    v13 = 0;
    for (j = 0; j < v19; ++j)
    {
      LOWORD(v17) = *(*a1 + v13);
      writeObject(a2, &v17, a3);
      v16 = *(*a1 + v13 + 2);
      writeObject(a2, &v16, a3);
      v15 = *(*a1 + v13 + 4);
      result = writeObject(a2, &v15, a3);
      v13 += 6;
    }
  }

  return result;
}

void PackingPars::printSize(PackingPars *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 852, &v83);
  if (v84)
  {
    v16 = v83;
  }

  else
  {
    v16 = byte_262888D40;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, byte_262888D40, a3, byte_262888D40, v16);
  DgnString::~DgnString(&v83);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, byte_262888D40);
  v21 = (a3 + 1);
  v22 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 853, &v83);
  if (v84)
  {
    v27 = v83;
  }

  else
  {
    v27 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v24, v25, v26, (a3 + 1), byte_262888D40, (34 - a3), (34 - a3), v27, 8, 8, 0);
  DgnString::~DgnString(&v83);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 854, &v83);
  if (v84)
  {
    v32 = v83;
  }

  else
  {
    v32 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, v29, v30, v31, (a3 + 1), byte_262888D40, (34 - a3), (34 - a3), v32, 8, 8, 0);
  DgnString::~DgnString(&v83);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 855, &v83);
  if (v84)
  {
    v37 = v83;
  }

  else
  {
    v37 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, v34, v35, v36, (a3 + 1), byte_262888D40, (34 - a3), (34 - a3), v37, 8, 8, 0);
  DgnString::~DgnString(&v83);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 856, &v83);
  if (v84)
  {
    v42 = v83;
  }

  else
  {
    v42 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v38, v39, v40, v41, (a3 + 1), byte_262888D40, (34 - a3), (34 - a3), v42, 8, 8, 0);
  v82 = a3;
  DgnString::~DgnString(&v83);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 857, &v83);
  if (v84)
  {
    v47 = v83;
  }

  else
  {
    v47 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v43, v44, v45, v46, (a3 + 1), byte_262888D40, (34 - a3), (34 - a3), v47, 4, 4, 0);
  DgnString::~DgnString(&v83);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v48 = 12;
  }

  else
  {
    v48 = 16;
  }

  v49 = *(this + 12);
  v50 = *(this + 13);
  v51 = this;
  if (v50 >= v49)
  {
    v52 = 0;
    if (v49 > 0)
    {
      v48 += 2 * (v49 - 1) + 2;
    }

    v53 = v48 + 2 * (v50 - v49);
  }

  else
  {
    v52 = 2 * v49;
    v53 = v48;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 858, &v83);
  if (v84)
  {
    v58 = v83;
  }

  else
  {
    v58 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v54, v55, v56, v57, v21, byte_262888D40, v22, v22, v58, v53, v48, v52);
  DgnString::~DgnString(&v83);
  *a4 += v53;
  *a5 += v48;
  *a6 += v52;
  v59 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v59 = 8;
  }

  v60 = *(v51 + 16);
  if (v60 <= 0)
  {
    v61 = 0;
  }

  else
  {
    v61 = 8 * v60;
  }

  v62 = v61 + v59;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 859, &v83);
  if (v84)
  {
    v67 = v83;
  }

  else
  {
    v67 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v63, v64, v65, v66, v21, byte_262888D40, v22, v22, v67, v62, v62, 0);
  DgnString::~DgnString(&v83);
  *a4 += v62;
  *a5 += v62;
  v68 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v68 = 8;
  }

  v69 = *(v51 + 20);
  if (v69 > 0)
  {
    v70 = (v69 - 1) + v68 + 1;
  }

  else
  {
    v70 = v68;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 860, &v83);
  if (v84)
  {
    v75 = v83;
  }

  else
  {
    v75 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v71, v72, v73, v74, v21, byte_262888D40, v22, v22, v75, v70, v70, 0);
  DgnString::~DgnString(&v83);
  *a4 += v70;
  *a5 += v70;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 861, &v83);
  if (v84)
  {
    v80 = v83;
  }

  else
  {
    v80 = byte_262888D40;
  }

  v81 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v76, v77, v78, v79, v82, byte_262888D40, (35 - v82), (35 - v82), v80, *a4, *a5, *a6);
  DgnString::~DgnString(&v83);
}

void sub_2626DDB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void PelMgr::~PelMgr(PackingPars **this)
{
  DgnDelete<PackingPars>(this[61]);
  this[61] = 0;
  *this = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 90));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 88));
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll((this + 86));
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll((this + 84));
  DgnArray<AlignedArray<unsigned char>>::releaseAll((this + 82));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 80));
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll((this + 78));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 75));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 73));
  BitArray::~BitArray((this + 71));
  FrameDecisionTree::~FrameDecisionTree((this + 66));
  DgnPrimFixArray<double>::~DgnPrimFixArray((this + 63));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 59));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 57));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 54));
  DgnPrimFixArray<double>::~DgnPrimFixArray((this + 52));
  DgnArray<DgnString>::releaseAll((this + 50));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 47));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 45));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 43));
  DgnPrimFixArray<double>::~DgnPrimFixArray((this + 40));
  DgnPrimFixArray<double>::~DgnPrimFixArray((this + 38));
  DgnPrimFixArray<double>::~DgnPrimFixArray((this + 36));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 34));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 32));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 29));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 27));
  DgnArray<AlignedArray<unsigned char>>::releaseAll((this + 25));
  DgnArray<DgnArray<DgnPrimArray<unsigned int>>>::releaseAll((this + 23));
  DgnIArray<Utterance *>::~DgnIArray((this + 21));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 14));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 12));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 10));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 8));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 6));
}

PackingPars *DgnDelete<PackingPars>(PackingPars *result)
{
  if (result)
  {
    PackingPars::~PackingPars(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void PelMgr::printSize(PelMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 955, &v431);
  if (v432)
  {
    v16 = v431;
  }

  else
  {
    v16 = byte_262888D40;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, byte_262888D40, a3, byte_262888D40, v16);
  DgnString::~DgnString(&v431);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, byte_262888D40);
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
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 956, &v431);
  if (v432)
  {
    v28 = v431;
  }

  else
  {
    v28 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, v25, v26, v27, (a3 + 1), byte_262888D40, (34 - a3), (34 - a3), v28, v21, v21, 0);
  DgnString::~DgnString(&v431);
  *a4 += v21;
  *a5 += v21;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 958, &v431);
  if (v432)
  {
    v33 = v431;
  }

  else
  {
    v33 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v29, v30, v31, v32, (a3 + 1), byte_262888D40, (34 - a3), (34 - a3), v33, 4, 4, 0);
  DgnString::~DgnString(&v431);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 960, &v431);
  if (v432)
  {
    v38 = v431;
  }

  else
  {
    v38 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, v35, v36, v37, (a3 + 1), byte_262888D40, (34 - a3), (34 - a3), v38, 4, 4, 0);
  DgnString::~DgnString(&v431);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 962, &v431);
  if (v432)
  {
    v43 = v431;
  }

  else
  {
    v43 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v39, v40, v41, v42, (a3 + 1), byte_262888D40, (34 - a3), (34 - a3), v43, 4, 4, 0);
  DgnString::~DgnString(&v431);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 963, &v431);
  if (v432)
  {
    v48 = v431;
  }

  else
  {
    v48 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v44, v45, v46, v47, (a3 + 1), byte_262888D40, (34 - a3), (34 - a3), v48, 4, 4, 0);
  DgnString::~DgnString(&v431);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 964, &v431);
  if (v432)
  {
    v53 = v431;
  }

  else
  {
    v53 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v49, v50, v51, v52, (a3 + 1), byte_262888D40, (34 - a3), (34 - a3), v53, 4, 4, 0);
  DgnString::~DgnString(&v431);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 965, &v431);
  if (v432)
  {
    v58 = v431;
  }

  else
  {
    v58 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v54, v55, v56, v57, (a3 + 1), byte_262888D40, (34 - a3), (34 - a3), v58, 4, 4, 0);
  DgnString::~DgnString(&v431);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 966, &v431);
  if (v432)
  {
    v63 = v431;
  }

  else
  {
    v63 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v59, v60, v61, v62, (a3 + 1), byte_262888D40, (34 - a3), (34 - a3), v63, 4, 4, 0);
  DgnString::~DgnString(&v431);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 967, &v431);
  if (v432)
  {
    v68 = v431;
  }

  else
  {
    v68 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v64, v65, v66, v67, (a3 + 1), byte_262888D40, (34 - a3), (34 - a3), v68, 4, 4, 0);
  DgnString::~DgnString(&v431);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 968, &v431);
  if (v432)
  {
    v73 = v431;
  }

  else
  {
    v73 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v69, v70, v71, v72, (a3 + 1), byte_262888D40, (34 - a3), (34 - a3), v73, 4, 4, 0);
  DgnString::~DgnString(&v431);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 970, &v431);
  if (v432)
  {
    v78 = v431;
  }

  else
  {
    v78 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v74, v75, v76, v77, (a3 + 1), byte_262888D40, (34 - a3), (34 - a3), v78, 4, 4, 0);
  DgnString::~DgnString(&v431);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 972, &v431);
  if (v432)
  {
    v83 = v431;
  }

  else
  {
    v83 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v79, v80, v81, v82, (a3 + 1), byte_262888D40, (34 - a3), (34 - a3), v83, 4, 4, 0);
  v428 = a3;
  DgnString::~DgnString(&v431);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 974, &v431);
  if (v432)
  {
    v88 = v431;
  }

  else
  {
    v88 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v84, v85, v86, v87, (a3 + 1), byte_262888D40, (34 - a3), (34 - a3), v88, 4, 4, 0);
  DgnString::~DgnString(&v431);
  *a4 += 4;
  *a5 += 4;
  v89 = sizeObject(this + 160, 0);
  v90 = sizeObject(this + 160, 1);
  v91 = sizeObject(this + 160, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 976, &v431);
  if (v432)
  {
    v96 = v431;
  }

  else
  {
    v96 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v92, v93, v94, v95, v22, byte_262888D40, v23, v23, v96, v89, v90, v91);
  DgnString::~DgnString(&v431);
  *a4 += v89;
  *a5 += v90;
  *a6 += v91;
  v97 = sizeObject(this + 164, 0);
  v98 = sizeObject(this + 164, 1);
  v99 = sizeObject(this + 164, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 978, &v431);
  if (v432)
  {
    v104 = v431;
  }

  else
  {
    v104 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v100, v101, v102, v103, v22, byte_262888D40, v23, v23, v104, v97, v98, v99);
  DgnString::~DgnString(&v431);
  *a4 += v97;
  *a5 += v98;
  *a6 += v99;
  v105 = sizeObject<BinaryIntScale>(this + 168, 0);
  v106 = sizeObject<BinaryIntScale>(this + 168, 1);
  LODWORD(v431) = 0;
  sizeObject(&v431, 2);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 980, &v431);
  if (v432)
  {
    v111 = v431;
  }

  else
  {
    v111 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v107, v108, v109, v110, v22, byte_262888D40, v23, v23, v111, v105, v106, 0);
  DgnString::~DgnString(&v431);
  *a4 += v105;
  *a5 += v106;
  v112 = sizeObject<DgnArray<DgnPrimArray<unsigned int>>>(this + 184, 0);
  v113 = sizeObject<DgnArray<DgnPrimArray<unsigned int>>>(this + 184, 1);
  v114 = sizeObject<DgnArray<DgnPrimArray<unsigned int>>>(this + 184, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 982, &v431);
  if (v432)
  {
    v119 = v431;
  }

  else
  {
    v119 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v115, v116, v117, v118, v22, byte_262888D40, v23, v23, v119, v112, v113, v114);
  DgnString::~DgnString(&v431);
  *a4 += v112;
  *a5 += v113;
  *a6 += v114;
  v120 = sizeObject<AlignedArray<short>>(this + 200, 0);
  v121 = sizeObject<AlignedArray<short>>(this + 200, 1);
  v431 = 0;
  v432 = 0;
  LODWORD(v433) = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v431);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 984, &v431);
  if (v432)
  {
    v126 = v431;
  }

  else
  {
    v126 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v122, v123, v124, v125, v22, byte_262888D40, v23, v23, v126, v120, v121, 0);
  DgnString::~DgnString(&v431);
  *a4 += v120;
  *a5 += v121;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v127 = 12;
  }

  else
  {
    v127 = 16;
  }

  v128 = *(this + 56);
  v129 = *(this + 57);
  v130 = v129 >= v128;
  v131 = v129 - v128;
  if (v130)
  {
    if (v128 > 0)
    {
      v132 = (v128 - 1) + v127 + 1;
    }

    else
    {
      v132 = v127;
    }

    v127 = v132 + v131;
    v128 = 0;
  }

  else
  {
    v132 = v127;
  }

  v133 = v128;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 986, &v431);
  if (v432)
  {
    v138 = v431;
  }

  else
  {
    v138 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v134, v135, v136, v137, v22, byte_262888D40, v23, v23, v138, v127, v132, v133);
  DgnString::~DgnString(&v431);
  *a4 += v127;
  *a5 += v132;
  *a6 += v133;
  v139 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v139 = 12;
  }

  v141 = *(this + 60);
  v140 = *(this + 61);
  if (v140 >= v141)
  {
    if (v141 > 0)
    {
      v142 = (v141 - 1) + v139 + 1;
    }

    else
    {
      v142 = v139;
    }

    v139 = v142 + v140 - v141;
    v141 = 0;
  }

  else
  {
    v142 = v139;
  }

  v143 = v139 + 4;
  v144 = v142 + 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 994, &v431);
  if (v432)
  {
    v149 = v431;
  }

  else
  {
    v149 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v145, v146, v147, v148, v22, byte_262888D40, v23, v23, v149, v143, v144, v141);
  DgnString::~DgnString(&v431);
  *a4 += v143;
  *a5 += v144;
  *a6 += v141;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v150 = 12;
  }

  else
  {
    v150 = 16;
  }

  v151 = *(this + 66);
  v152 = *(this + 67);
  if (v152 >= v151)
  {
    v153 = 0;
    if (v151 > 0)
    {
      v150 += 4 * (v151 - 1) + 4;
    }

    v154 = v150 + 4 * (v152 - v151);
  }

  else
  {
    v153 = 4 * v151;
    v154 = v150;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 996, &v431);
  if (v432)
  {
    v159 = v431;
  }

  else
  {
    v159 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v155, v156, v157, v158, v22, byte_262888D40, v23, v23, v159, v154, v150, v153);
  DgnString::~DgnString(&v431);
  *a4 += v154;
  *a5 += v150;
  *a6 += v153;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v160 = 12;
  }

  else
  {
    v160 = 16;
  }

  v161 = *(this + 70);
  v162 = *(this + 71);
  if (v162 >= v161)
  {
    v163 = 0;
    if (v161 > 0)
    {
      v160 += 4 * (v161 - 1) + 4;
    }

    v164 = v160 + 4 * (v162 - v161);
  }

  else
  {
    v163 = 4 * v161;
    v164 = v160;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 998, &v431);
  if (v432)
  {
    v169 = v431;
  }

  else
  {
    v169 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v165, v166, v167, v168, v22, byte_262888D40, v23, v23, v169, v164, v160, v163);
  DgnString::~DgnString(&v431);
  *a4 += v164;
  *a5 += v160;
  *a6 += v163;
  v170 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v170 = 8;
  }

  v171 = *(this + 74);
  if (v171 <= 0)
  {
    v172 = 0;
  }

  else
  {
    v172 = (2 * v171);
  }

  v173 = v170 + v172;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 999, &v431);
  if (v432)
  {
    v178 = v431;
  }

  else
  {
    v178 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v174, v175, v176, v177, v22, byte_262888D40, v23, v23, v178, v173, v173, 0);
  DgnString::~DgnString(&v431);
  *a4 += v173;
  *a5 += v173;
  v179 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v179 = 8;
  }

  v180 = *(this + 78);
  if (v180 <= 0)
  {
    v181 = 0;
  }

  else
  {
    v181 = (2 * v180);
  }

  v182 = v179 + v181;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1000, &v431);
  if (v432)
  {
    v187 = v431;
  }

  else
  {
    v187 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v183, v184, v185, v186, v22, byte_262888D40, v23, v23, v187, v182, v182, 0);
  DgnString::~DgnString(&v431);
  *a4 += v182;
  *a5 += v182;
  v188 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v188 = 8;
  }

  v189 = *(this + 82);
  if (v189 <= 0)
  {
    v190 = 0;
  }

  else
  {
    v190 = (2 * v189);
  }

  v191 = v188 + v190;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1002, &v431);
  if (v432)
  {
    v196 = v431;
  }

  else
  {
    v196 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v192, v193, v194, v195, v22, byte_262888D40, v23, v23, v196, v191, v191, 0);
  DgnString::~DgnString(&v431);
  *a4 += v191;
  *a5 += v191;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1004, &v431);
  if (v432)
  {
    v201 = v431;
  }

  else
  {
    v201 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v197, v198, v199, v200, v22, byte_262888D40, v23, v23, v201, 2, 2, 0);
  DgnString::~DgnString(&v431);
  *a4 += 2;
  *a5 += 2;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v202 = 12;
  }

  else
  {
    v202 = 16;
  }

  v203 = *(this + 88);
  v204 = *(this + 89);
  v130 = v204 >= v203;
  v205 = v204 - v203;
  if (v130)
  {
    if (v203 > 0)
    {
      v206 = (v203 - 1) + v202 + 1;
    }

    else
    {
      v206 = v202;
    }

    v202 = v206 + v205;
    v203 = 0;
  }

  else
  {
    v206 = v202;
  }

  v207 = v203;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1005, &v431);
  if (v432)
  {
    v212 = v431;
  }

  else
  {
    v212 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v208, v209, v210, v211, v22, byte_262888D40, v23, v23, v212, v202, v206, v207);
  DgnString::~DgnString(&v431);
  *a4 += v202;
  *a5 += v206;
  *a6 += v207;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v213 = 12;
  }

  else
  {
    v213 = 16;
  }

  v214 = *(this + 92);
  v215 = *(this + 93);
  if (v215 >= v214)
  {
    v216 = 0;
    if (v214 > 0)
    {
      v213 += 4 * (v214 - 1) + 4;
    }

    v217 = v213 + 4 * (v215 - v214);
  }

  else
  {
    v216 = 4 * v214;
    v217 = v213;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1006, &v431);
  if (v432)
  {
    v222 = v431;
  }

  else
  {
    v222 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v218, v219, v220, v221, v22, byte_262888D40, v23, v23, v222, v217, v213, v216);
  DgnString::~DgnString(&v431);
  *a4 += v217;
  *a5 += v213;
  *a6 += v216;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v223 = 12;
  }

  else
  {
    v223 = 16;
  }

  v224 = *(this + 96);
  v225 = *(this + 97);
  if (v225 >= v224)
  {
    v226 = 0;
    if (v224 > 0)
    {
      v223 += 2 * (v224 - 1) + 2;
    }

    v227 = v223 + 2 * (v225 - v224);
  }

  else
  {
    v226 = 2 * v224;
    v227 = v223;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1008, &v431);
  if (v432)
  {
    v232 = v431;
  }

  else
  {
    v232 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v228, v229, v230, v231, v22, byte_262888D40, v23, v23, v232, v227, v223, v226);
  DgnString::~DgnString(&v431);
  *a4 += v227;
  *a5 += v223;
  *a6 += v226;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1010, &v431);
  if (v432)
  {
    v237 = v431;
  }

  else
  {
    v237 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v233, v234, v235, v236, v22, byte_262888D40, v23, v23, v237, 1, 1, 0);
  DgnString::~DgnString(&v431);
  ++*a4;
  ++*a5;
  v238 = sizeObject<DgnString>(this + 400, 0);
  v239 = sizeObject<DgnString>(this + 400, 1);
  v240 = sizeObject<DgnString>(this + 400, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1012, &v431);
  if (v432)
  {
    v245 = v431;
  }

  else
  {
    v245 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v241, v242, v243, v244, v22, byte_262888D40, v23, v23, v245, v238, v239, v240);
  DgnString::~DgnString(&v431);
  *a4 += v238;
  *a5 += v239;
  *a6 += v240;
  v246 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v246 = 8;
  }

  v247 = *(this + 106);
  if (v247 <= 0)
  {
    v248 = 0;
  }

  else
  {
    v248 = 4 * v247;
  }

  v249 = v248 + v246;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1014, &v431);
  if (v432)
  {
    v254 = v431;
  }

  else
  {
    v254 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v250, v251, v252, v253, v22, byte_262888D40, v23, v23, v254, v249, v249, 0);
  DgnString::~DgnString(&v431);
  *a4 += v249;
  *a5 += v249;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v255 = 12;
  }

  else
  {
    v255 = 16;
  }

  v256 = *(this + 110);
  v257 = *(this + 111);
  if (v257 >= v256)
  {
    v258 = 0;
    if (v256 > 0)
    {
      v255 += 2 * (v256 - 1) + 2;
    }

    v259 = v255 + 2 * (v257 - v256);
  }

  else
  {
    v258 = 2 * v256;
    v259 = v255;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1016, &v431);
  if (v432)
  {
    v264 = v431;
  }

  else
  {
    v264 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v260, v261, v262, v263, v22, byte_262888D40, v23, v23, v264, v259, v255, v258);
  DgnString::~DgnString(&v431);
  *a4 += v259;
  *a5 += v255;
  *a6 += v258;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1018, &v431);
  if (v432)
  {
    v269 = v431;
  }

  else
  {
    v269 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v265, v266, v267, v268, v22, byte_262888D40, v23, v23, v269, 4, 4, 0);
  DgnString::~DgnString(&v431);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v270 = 12;
  }

  else
  {
    v270 = 16;
  }

  v271 = *(this + 116);
  v272 = *(this + 117);
  if (v272 >= v271)
  {
    v273 = 0;
    if (v271 > 0)
    {
      v270 += 4 * (v271 - 1) + 4;
    }

    v274 = v270 + 4 * (v272 - v271);
  }

  else
  {
    v273 = 4 * v271;
    v274 = v270;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1020, &v431);
  if (v432)
  {
    v279 = v431;
  }

  else
  {
    v279 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v275, v276, v277, v278, v22, byte_262888D40, v23, v23, v279, v274, v270, v273);
  DgnString::~DgnString(&v431);
  *a4 += v274;
  *a5 += v270;
  *a6 += v273;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v280 = 12;
  }

  else
  {
    v280 = 16;
  }

  v281 = *(this + 120);
  v282 = *(this + 121);
  if (v282 >= v281)
  {
    v283 = 0;
    if (v281 > 0)
    {
      v280 += 8 * (v281 - 1) + 8;
    }

    v284 = v280 + 8 * (v282 - v281);
  }

  else
  {
    v283 = 8 * v281;
    v284 = v280;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1022, &v431);
  if (v432)
  {
    v289 = v431;
  }

  else
  {
    v289 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v285, v286, v287, v288, v22, byte_262888D40, v23, v23, v289, v284, v280, v283);
  DgnString::~DgnString(&v431);
  *a4 += v284;
  *a5 += v280;
  *a6 += v283;
  v290 = *(this + 61);
  if (v290)
  {
    v430 = 0;
    v431 = 0;
    v429 = 0;
    PackingPars::printSize(v290, 0xFFFFFFFFLL, v22, &v431, &v430, &v429);
    *a4 += v431;
    *a5 += v430;
    *a6 += v429;
  }

  v426 = a6;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v291 = 4;
  }

  else
  {
    v291 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1024, &v431);
  if (v432)
  {
    v296 = v431;
  }

  else
  {
    v296 = byte_262888D40;
  }

  v427 = (a3 + 1);
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v292, v293, v294, v295, v22, byte_262888D40, v23, v23, v296, v291, v291, 0);
  DgnString::~DgnString(&v431);
  *a4 += v291;
  *a5 += v291;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v297 = 12;
  }

  else
  {
    v297 = 16;
  }

  v298 = *(this + 134);
  if (v298 <= 0)
  {
    v299 = 0;
  }

  else
  {
    v299 = 6 * v298;
  }

  v300 = *(this + 135) - v298;
  v301 = sizeObject<FrameDecisionTreeHyperplane>(this + 544, 0) + v299 + v297 + 6 * v300;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v302 = 12;
  }

  else
  {
    v302 = 16;
  }

  v303 = *(this + 134);
  if (v303 <= 0)
  {
    v304 = 0;
  }

  else
  {
    v304 = 6 * v303;
  }

  v305 = sizeObject<FrameDecisionTreeHyperplane>(this + 544, 1) + v304 + v302;
  v432 = 0;
  v433 = 0;
  LODWORD(v431) = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v432);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1026, &v431);
  if (v432)
  {
    v310 = v431;
  }

  else
  {
    v310 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v306, v307, v308, v309, v22, byte_262888D40, v23, v23, v310, v301, v305, 0);
  DgnString::~DgnString(&v431);
  *a4 += v301;
  *a5 += v305;
  v311 = BitArray::sizeObject(this + 568, 0);
  v312 = BitArray::sizeObject(this + 568, 1);
  v313 = BitArray::sizeObject(this + 568, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1028, &v431);
  if (v432)
  {
    v318 = v431;
  }

  else
  {
    v318 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v314, v315, v316, v317, v22, byte_262888D40, v23, v23, v318, v311, v312, v313);
  DgnString::~DgnString(&v431);
  *a4 += v311;
  *a5 += v312;
  *v426 += v313;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v319 = 12;
  }

  else
  {
    v319 = 16;
  }

  v320 = *(this + 148);
  v321 = *(this + 149);
  if (v321 >= v320)
  {
    v322 = 0;
    if (v320 > 0)
    {
      v319 += 4 * (v320 - 1) + 4;
    }

    v323 = v319 + 4 * (v321 - v320);
  }

  else
  {
    v322 = 4 * v320;
    v323 = v319;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1031, &v431);
  if (v432)
  {
    v328 = v431;
  }

  else
  {
    v328 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v324, v325, v326, v327, v427, byte_262888D40, v23, v23, v328, v323, v319, v322);
  DgnString::~DgnString(&v431);
  *a4 += v323;
  *a5 += v319;
  *v426 += v322;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v329 = 12;
  }

  else
  {
    v329 = 16;
  }

  v330 = *(this + 152);
  v331 = *(this + 153);
  if (v331 >= v330)
  {
    v332 = 0;
    if (v330 > 0)
    {
      v329 += 2 * (v330 - 1) + 2;
    }

    v333 = v329 + 2 * (v331 - v330);
  }

  else
  {
    v332 = 2 * v330;
    v333 = v329;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1034, &v431);
  if (v432)
  {
    v338 = v431;
  }

  else
  {
    v338 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v334, v335, v336, v337, v427, byte_262888D40, v23, v23, v338, v333, v329, v332);
  DgnString::~DgnString(&v431);
  *a4 += v333;
  *a5 += v329;
  *v426 += v332;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1035, &v431);
  if (v432)
  {
    v343 = v431;
  }

  else
  {
    v343 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v339, v340, v341, v342, v427, byte_262888D40, v23, v23, v343, 8, 8, 0);
  DgnString::~DgnString(&v431);
  *a4 += 8;
  *a5 += 8;
  v344 = CombineTable::sizeObject(this + 504, 0);
  v345 = CombineTable::sizeObject(this + 504, 1);
  v346 = CombineTable::sizeObject(this + 504, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1037, &v431);
  if (v432)
  {
    v351 = v431;
  }

  else
  {
    v351 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v347, v348, v349, v350, v427, byte_262888D40, v23, v23, v351, v344, v345, v346);
  DgnString::~DgnString(&v431);
  *a4 += v344;
  *a5 += v345;
  *v426 += v346;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1039, &v431);
  if (v432)
  {
    v356 = v431;
  }

  else
  {
    v356 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v352, v353, v354, v355, v427, byte_262888D40, v23, v23, v356, 1, 1, 0);
  DgnString::~DgnString(&v431);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1040, &v431);
  if (v432)
  {
    v361 = v431;
  }

  else
  {
    v361 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v357, v358, v359, v360, v427, byte_262888D40, v23, v23, v361, 4, 4, 0);
  DgnString::~DgnString(&v431);
  *a4 += 4;
  *a5 += 4;
  v362 = sizeObject<DgnPrimArray<unsigned int>>(this + 624, 0);
  v363 = sizeObject<DgnPrimArray<unsigned int>>(this + 624, 1);
  v431 = 0;
  v432 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v431);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1041, &v431);
  if (v432)
  {
    v368 = v431;
  }

  else
  {
    v368 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v364, v365, v366, v367, v427, byte_262888D40, v23, v23, v368, v362, v363, 0);
  DgnString::~DgnString(&v431);
  *a4 += v362;
  *a5 += v363;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v369 = 12;
  }

  else
  {
    v369 = 16;
  }

  v370 = *(this + 162);
  v371 = *(this + 163);
  if (v371 >= v370)
  {
    v372 = 0;
    if (v370 > 0)
    {
      v369 += 4 * (v370 - 1) + 4;
    }

    v373 = v369 + 4 * (v371 - v370);
  }

  else
  {
    v372 = 4 * v370;
    v373 = v369;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1043, &v431);
  if (v432)
  {
    v378 = v431;
  }

  else
  {
    v378 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v374, v375, v376, v377, v427, byte_262888D40, v23, v23, v378, v373, v369, v372);
  DgnString::~DgnString(&v431);
  *a4 += v373;
  *a5 += v369;
  *v426 += v372;
  v379 = sizeObject<DgnPrimArray<unsigned int>>(this + 688, 0);
  v380 = sizeObject<DgnPrimArray<unsigned int>>(this + 688, 1);
  v431 = 0;
  v432 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v431);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1044, &v431);
  if (v432)
  {
    v385 = v431;
  }

  else
  {
    v385 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v381, v382, v383, v384, v427, byte_262888D40, v23, v23, v385, v379, v380, 0);
  DgnString::~DgnString(&v431);
  *a4 += v379;
  *a5 += v380;
  v386 = sizeObject<AlignedArray<unsigned char>>(this + 656, 0);
  v387 = sizeObject<AlignedArray<unsigned char>>(this + 656, 1);
  v431 = 0;
  v432 = 0;
  LODWORD(v433) = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v431);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1046, &v431);
  if (v432)
  {
    v392 = v431;
  }

  else
  {
    v392 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v388, v389, v390, v391, v427, byte_262888D40, v23, v23, v392, v386, v387, 0);
  DgnString::~DgnString(&v431);
  *a4 += v386;
  *a5 += v387;
  v393 = sizeObject<DgnPrimArray<unsigned int>>(this + 672, 0);
  v394 = sizeObject<DgnPrimArray<unsigned int>>(this + 672, 1);
  v431 = 0;
  v432 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v431);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1047, &v431);
  if (v432)
  {
    v399 = v431;
  }

  else
  {
    v399 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v395, v396, v397, v398, v427, byte_262888D40, v23, v23, v399, v393, v394, 0);
  DgnString::~DgnString(&v431);
  *a4 += v393;
  *a5 += v394;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1048, &v431);
  if (v432)
  {
    v404 = v431;
  }

  else
  {
    v404 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v400, v401, v402, v403, v427, byte_262888D40, v23, v23, v404, 4, 4, 0);
  DgnString::~DgnString(&v431);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v405 = 12;
  }

  else
  {
    v405 = 16;
  }

  v406 = *(this + 178);
  v407 = *(this + 179);
  if (v407 >= v406)
  {
    v408 = 0;
    if (v406 > 0)
    {
      v405 += 2 * (v406 - 1) + 2;
    }

    v409 = v405 + 2 * (v407 - v406);
  }

  else
  {
    v408 = 2 * v406;
    v409 = v405;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1050, &v431);
  if (v432)
  {
    v414 = v431;
  }

  else
  {
    v414 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v410, v411, v412, v413, v427, byte_262888D40, v23, v23, v414, v409, v405, v408);
  DgnString::~DgnString(&v431);
  *a4 += v409;
  *a5 += v405;
  *v426 += v408;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1052, &v431);
  if (v432)
  {
    v419 = v431;
  }

  else
  {
    v419 = byte_262888D40;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v415, v416, v417, v418, v427, byte_262888D40, v23, v23, v419, 4, 4, 0);
  DgnString::~DgnString(&v431);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 1053, &v431);
  if (v432)
  {
    v424 = v431;
  }

  else
  {
    v424 = byte_262888D40;
  }

  v425 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v420, v421, v422, v423, v428, byte_262888D40, (35 - v428), (35 - v428), v424, *a4, *a5, *v426);
  DgnString::~DgnString(&v431);
}

void sub_2626DFC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<BinaryIntScale>(uint64_t a1, int a2)
{
  v11 = 0;
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
      v9 = 4 * v7 - 4;
      do
      {
        v5 += sizeObject(*a1 + v9, a2);
        --v8;
        v9 -= 4;
      }

      while (v8 > 1);
    }

    if (!a2)
    {
      v5 += v6 * (*(a1 + 12) - *(a1 + 8));
    }
  }

  return v5;
}

uint64_t sizeObject<AlignedArray<short>>(uint64_t a1, int a2)
{
  v2 = 0;
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
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
      v8 = 24 * v6 - 24;
      v2 = v3;
      do
      {
        v2 += sizeObject<unsigned short>(*a1 + v8, a2) + 4;
        --v7;
        v8 -= 24;
      }

      while (v7 > 1);
      if (a2)
      {
        goto LABEL_11;
      }
    }

    v2 += (v3 + 4) * (*(a1 + 12) - *(a1 + 8));
  }

LABEL_11:
  DgnPrimArray<unsigned int>::~DgnPrimArray(v10);
  return v2;
}

void sub_2626DFF24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<AlignedArray<unsigned char>>(uint64_t a1, int a2)
{
  v2 = 0;
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
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
      v8 = 24 * v6 - 24;
      v2 = v3;
      do
      {
        v2 += sizeObject<unsigned char>(*a1 + v8, a2) + 4;
        --v7;
        v8 -= 24;
      }

      while (v7 > 1);
      if (a2)
      {
        goto LABEL_11;
      }
    }

    v2 += (v3 + 4) * (*(a1 + 12) - *(a1 + 8));
  }

LABEL_11:
  DgnPrimArray<unsigned int>::~DgnPrimArray(v10);
  return v2;
}

void sub_2626E002C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

int *readSharedObject<unsigned char>(DgnSharedMemStream *a1, uint64_t a2, _DWORD *a3)
{
  v19 = 0;
  result = readObject(a1, &v19, a3);
  v13 = v19;
  if (v19)
  {
    result = DgnSharedMemStream::readSharedBytes(a1, v19, v7, v8, v9, v10, v11, v12);
    v14 = result;
    v15 = v19;
    if (*(a2 + 8) <= *(a2 + 12))
    {
      result = *a2;
      if (*a2)
      {
        result = MemChunkFree(result, 0);
      }

      *(a2 + 12) = 0;
    }

    *(a2 + 8) = v15;
    *a2 = v14;
    if (v13 + 3 >= 4)
    {
      v16 = 0;
      v17 = (v13 + 3) >> 2;
      do
      {
        v18 = *v14++;
        v16 ^= v18;
        --v17;
      }

      while (v17);
    }

    else
    {
      v16 = 0;
    }

    *a3 ^= v16;
  }

  else
  {
    if (*(a2 + 8) <= *(a2 + 12))
    {
      result = *a2;
      if (*a2)
      {
        result = MemChunkFree(result, 0);
      }

      *(a2 + 12) = 0;
    }

    *(a2 + 8) = 0;
    *a2 = 0;
  }

  return result;
}

void PelMgr::packRawMixtureComponent(uint64_t result, uint64_t a2, int **a3, unsigned int **a4)
{
  v4 = *(result + 12);
  if (v4 > 1)
  {
    if (v4 == 3)
    {
      PelMgr::packQuantPerDimRawMixtureComponent(result, a2, a3, a4);
    }

    else if (v4 == 2)
    {
      PelMgr::packFloatRawMixtureComponent(result, a2, a3, a4);
    }
  }

  else if (v4)
  {
    if (v4 == 1)
    {
      PelMgr::packPackedIntRawMixtureComponent(result, a2, a3, a4);
    }
  }

  else
  {
    PelMgr::packMulTableRawMixtureComponent(result, a2, a3, a4);
  }
}

uint64_t PelMgr::packRawMixtureComponent(uint64_t a1, float *a2, char a3, unsigned int **a4, int **a5, char a6, double a7, double a8, double a9, double a10)
{
  v10 = *(a1 + 12);
  if (v10 == 1)
  {
    return PelMgr::packPackedIntRawMixtureComponent(a1, a2, a3, a4, a5, a6);
  }

  if (v10 == 2)
  {
    return PelMgr::packFloatRawMixtureComponent(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  }

  return a1;
}

BOOL PelMgr::getComponentByIndex(unint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 136);
  if (v5 > a2)
  {
    v6 = *(*(a1 + 432) + 2 * a2);
    PelMgr::unpackRawMixtureComponent(a1, *(a1 + 232) + *(a1 + 248) + *(*(a1 + 256) + 4 * v6) + *(a1 + 148) * (a2 - *(*(a1 + 272) + 4 * v6)), a3, a4);
  }

  return v5 > a2;
}

{
  v5 = *(a1 + 136);
  if (v5 > a2)
  {
    v6 = *(*(a1 + 432) + 2 * a2);
    PelMgr::unpackRawMixtureComponent(a1, (*(a1 + 232) + *(a1 + 248) + *(*(a1 + 256) + 4 * v6) + *(a1 + 148) * (a2 - *(*(a1 + 272) + 4 * v6))), a3, a4);
  }

  return v5 > a2;
}

void PelMgr::unpackRawMixtureComponent(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 12);
  if (v4 > 1)
  {
    if (v4 == 3)
    {
      PelMgr::unpackQuantPerDimRawMixtureComponent(result, a2, a3, a4);
    }

    else if (v4 == 2)
    {
      PelMgr::unpackFloatRawMixtureComponent(result, a2, a3, a4);
    }
  }

  else if (v4)
  {
    if (v4 == 1)
    {
      PelMgr::unpackPackedIntRawMixtureComponent(result, a2, a3, a4);
    }
  }

  else
  {
    PelMgr::unpackMulTableRawMixtureComponent(result, a2, a3, a4);
  }
}

unint64_t PelMgr::unpackRawMixtureComponent(unint64_t result, float *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 12);
  if (v4 == 1)
  {
    return PelMgr::unpackPackedIntRawMixtureComponent(result, a2, a3, a4);
  }

  if (v4 == 2)
  {
    return PelMgr::unpackFloatRawMixtureComponent(result, a2, a3, a4);
  }

  return result;
}

void (***PelMgr::savePelMgrBinary(PelMgr *this, DFile *a2, DFileChecksums *a3, int a4, DgnSharedMemStream *a5))(void)
{
  v9 = a5;
  if (a2)
  {
    v9 = OpenAndWriteMrecHeader(a2, 0x2Au, a4, "MRMPB!? ", 24, 24);
  }

  v18 = 0;
  writeObject(v9, this + 2, &v18);
  v10 = 1;
  if (*(this + 4) == 1)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v17 = v11;
  writeObject(v9, &v17, &v18);
  v12 = *(this + 3);
  if (v12 <= 3)
  {
    v10 = dword_262888D30[v12];
  }

  v16 = v10;
  writeObject(v9, &v16, &v18);
  writeObject(v9, this + 5, &v18);
  writeObject(v9, this + 32, &v18);
  v13 = (this + 132);
  if (a2)
  {
    writeObject(v9, v13, &v18);
    writeObject(v9, this + 34, &v18);
    writeObject(v9, this + 35, &v18);
    writeObject(v9, this + 36, &v18);
    writeObject(v9, this + 37, &v18);
    AlignedArray<unsigned char>::writeObject(this + 232, v9, &v18);
    writeObject<unsigned int>(v9, this + 256, &v18);
    writeObject<unsigned int>(v9, this + 272, &v18);
    writeObject<unsigned short>(v9, this + 288, &v18);
    writeObject<unsigned char>(v9, this + 344, &v18);
    writeObject<unsigned int>(v9, this + 360, &v18);
    writeObject<unsigned short>(v9, this + 376, &v18);
    writeObject(v9, this + 392, &v18);
    writeObject<DgnString>(v9, this + 400, &v18);
    writeObject<unsigned int>(v9, this + 416, &v18);
    writeObject(v9, this + 38, &v18);
    writeObject(v9, this + 40, &v18);
    writeObject<DgnArray<DgnPrimArray<int>>>(v9, this + 184, &v18);
    writeObject(v9, this + 41, &v18);
    writeObject<BinaryIntScale>(v9, this + 168, &v18);
    writeObject(v9, this + 39, &v18);
    writeObject<AlignedArray<short>>(v9, this + 200, &v18);
    FrameDecisionTree::writeObject(this + 528, v9, &v18);
    writeObject(v9, this + 568, &v18);
    writeObject<unsigned int>(v9, this + 584, &v18);
    writeObject<unsigned short>(v9, this + 600, &v18);
    writeObject(v9, this + 155, &v18);
    writeObject<DgnPrimArray<unsigned int>>(v9, this + 624, &v18);
    writeObject<unsigned int>(v9, this + 640, &v18);
    writeObject<DgnPrimArray<unsigned int>>(v9, this + 688, &v18);
    writeObject<AlignedArray<unsigned char>>(v9, this + 656, &v18);
    writeObject<DgnPrimArray<unsigned int>>(v9, this + 672, &v18);
    writeObject(v9, this + 6, &v18);
    writeObject(v9, this + 7, &v18);
    writeObject(v9, this + 8, &v18);
    writeObject(v9, this + 9, &v18);
    writeObject(v9, this + 10, &v18);
    writeObject<unsigned char>(v9, this + 48, &v18);
    writeObject<unsigned char>(v9, this + 64, &v18);
    writeObject<unsigned char>(v9, this + 80, &v18);
    writeObject<unsigned char>(v9, this + 96, &v18);
    writeObject<unsigned char>(v9, this + 112, &v18);
    writeObjectChecksum(v9, &v18);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x2Au, v18);
    return DgnDelete<DgnStream>(v9);
  }

  else
  {
    writeObject(a5, v13, &v18);
    writeObject(a5, this + 34, &v18);
    writeObject(a5, this + 35, &v18);
    writeObject(a5, this + 36, &v18);
    writeObject(a5, this + 37, &v18);
    AlignedArray<unsigned char>::writeSharedObject(this + 232, a5, &v18);
    writeSharedObject<unsigned int>(a5, this + 256, &v18);
    writeSharedObject<unsigned int>(a5, this + 272, &v18);
    writeObject<unsigned short>(a5, this + 288, &v18);
    writeSharedObject<unsigned char>(a5, this + 344, &v18);
    writeSharedObject<unsigned int>(a5, this + 360, &v18);
    writeSharedObject<short>(a5, this + 376, &v18);
    writeObject(a5, this + 392, &v18);
    writeObject<DgnString>(a5, this + 400, &v18);
    writeObject<unsigned int>(a5, this + 416, &v18);
    writeObject(a5, this + 38, &v18);
    writeObject(a5, this + 40, &v18);
    writeObject<DgnArray<DgnPrimArray<int>>>(a5, this + 184, &v18);
    writeObject(a5, this + 41, &v18);
    writeObject<BinaryIntScale>(a5, this + 168, &v18);
    writeObject(a5, this + 39, &v18);
    writeObject<AlignedArray<short>>(a5, this + 200, &v18);
    FrameDecisionTree::writeObject(this + 528, a5, &v18);
    writeSharedObject(a5, (this + 568), &v18);
    writeSharedObject<unsigned int>(a5, this + 584, &v18);
    writeSharedObject<short>(a5, this + 600, &v18);
    writeObject(a5, this + 155, &v18);
    writeObject<DgnPrimArray<unsigned int>>(a5, this + 624, &v18);
    writeObject<unsigned int>(a5, this + 640, &v18);
    writeObject<DgnPrimArray<unsigned int>>(a5, this + 688, &v18);
    writeObject<AlignedArray<unsigned char>>(a5, this + 656, &v18);
    writeObject<DgnPrimArray<unsigned int>>(a5, this + 672, &v18);
    writeObject(a5, this + 6, &v18);
    writeObject(a5, this + 7, &v18);
    writeObject(a5, this + 8, &v18);
    writeObject(a5, this + 9, &v18);
    writeObject(a5, this + 10, &v18);
    writeSharedObject<unsigned char>(a5, this + 48, &v18);
    writeSharedObject<unsigned char>(a5, this + 64, &v18);
    writeSharedObject<unsigned char>(a5, this + 80, &v18);
    writeSharedObject<unsigned char>(a5, this + 96, &v18);
    writeSharedObject<unsigned char>(a5, this + 112, &v18);
    writeObject(v9, this + 184, &v18);
    return writeObjectChecksum(v9, &v18);
  }
}

uint64_t writeObject<DgnArray<DgnPrimArray<int>>>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = writeObject<DgnPrimArray<unsigned int>>(a1, *a2 + v7, a3);
      ++v8;
      v7 += 16;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

uint64_t writeObject<BinaryIntScale>(uint64_t a1, uint64_t a2, _DWORD *a3)
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

uint64_t writeObject<AlignedArray<short>>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = AlignedArray<short>::writeObject(*a2 + v7, a1, a3);
      ++v8;
      v7 += 24;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

uint64_t writeObject<AlignedArray<unsigned char>>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = AlignedArray<unsigned char>::writeObject(*a2 + v7, a1, a3);
      ++v8;
      v7 += 24;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

char *writeSharedObject<unsigned char>(DgnSharedMemStream *a1, uint64_t a2, _DWORD *a3)
{
  v18 = *(a2 + 8);
  result = writeObject(a1, &v18, a3);
  v12 = v18;
  if (v18)
  {
    result = DgnSharedMemStream::writeSharedBytes(a1, *a2, v18, v7, v8, v9, v10, v11);
    if (result)
    {
      v13 = result;
      v14 = v18;
      if (*(a2 + 8) <= *(a2 + 12))
      {
        result = *a2;
        if (*a2)
        {
          result = MemChunkFree(result, 0);
        }

        *(a2 + 12) = 0;
      }

      *(a2 + 8) = v14;
      *a2 = v13;
    }

    else
    {
      v13 = *a2;
    }

    if (v12 + 3 >= 4)
    {
      v15 = 0;
      v16 = (v12 + 3) >> 2;
      do
      {
        v17 = *v13;
        v13 += 4;
        v15 ^= v17;
        --v16;
      }

      while (v16);
    }

    else
    {
      v15 = 0;
    }

    *a3 ^= v15;
  }

  return result;
}

uint64_t PelMgr::savePelMgrText(PelMgr *this, DFile *a2, int a3)
{
  v6 = *(this + 33);
  v177 = 0;
  v178 = 0;
  if (v6)
  {
    v168[0] = 0;
    HIDWORD(v178) = realloc_array(0, v168, 4 * v6, 0, 0, 1) >> 2;
    v177 = v168[0];
  }

  LODWORD(v178) = v6;
  v7 = *(this + 4);
  if (v7)
  {
    LODWORD(v8) = 0;
    v175 = 0;
    v176 = 0;
  }

  else
  {
    v8 = *(this + 33);
    v175 = 0;
    v176 = 0;
    if (!v8)
    {
      v7 = 0;
      LODWORD(v176) = 0;
      goto LABEL_12;
    }

    v168[0] = 0;
    HIDWORD(v176) = realloc_array(0, v168, 4 * v8, 0, 0, 1) >> 2;
    v175 = v168[0];
    v7 = *(this + 4);
  }

  LODWORD(v176) = v8;
  if (v7 != 1)
  {
LABEL_12:
    LODWORD(v9) = 0;
    v173 = 0;
    v174 = 0;
    goto LABEL_13;
  }

  v9 = *(this + 38);
  v173 = 0;
  v174 = 0;
  if (!v9)
  {
    v171 = 0;
    v172 = 0;
    v169 = 0;
    v170 = 0;
    goto LABEL_14;
  }

  v168[0] = 0;
  HIDWORD(v174) = realloc_array(0, v168, 4 * v9, 0, 0, 1) >> 2;
  v173 = v168[0];
  v7 = *(this + 4);
LABEL_13:
  LODWORD(v174) = v9;
  v171 = 0;
  v172 = 0;
  v169 = 0;
  v170 = 0;
  if (v7)
  {
LABEL_14:
    v11 = *(this + 33);
    v10 = *(this + 34);
    v12 = v11 * v10;
    if (v11 * v10)
    {
      v168[0] = 0;
      HIDWORD(v172) = realloc_array(0, v168, (v11 * v10), 0, 0, 1);
      v171 = v168[0];
      v10 = *(this + 34);
      v13 = HIDWORD(v170);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v170;
    LODWORD(v172) = v12;
    v16 = *(this + 38) * v10;
    if (v13 < v16)
    {
      v168[0] = 0;
      HIDWORD(v170) = realloc_array(v169, v168, 4 * v16, 4 * v170, 4 * v170, 1) >> 2;
      v169 = v168[0];
    }

    goto LABEL_21;
  }

  v14 = &v172;
  v15 = *(this + 34) * *(this + 33);
  v16 = 2 * v15;
  if (2 * v15)
  {
    v168[0] = 0;
    HIDWORD(v172) = realloc_array(0, v168, (2 * v15), 0, 0, 1);
    v171 = v168[0];
  }

LABEL_21:
  *v14 = v16;
  v17 = *(this + 35);
  if (v17)
  {
    v18 = 0;
    v19 = 0;
    for (i = 0; i < v17; ++i)
    {
      v21 = *(*(this + 34) + 4 * i);
      v22 = *(*(this + 34) + 4 * i + 4);
      v23 = v22 - v21;
      if (v22 != v21)
      {
        v24 = 0;
        v25 = *(this + 29) + *(this + 62) + *(*(this + 32) + 4 * i);
        v26 = *(this + 4);
        do
        {
          v27 = (*(this + 37) * v24);
          if (v26)
          {
            PelMgr::unpackRawMixtureComponent(this, (v25 + v27), &v177, &v173);
          }

          else
          {
            PelMgr::unpackRawMixtureComponent(this, v25 + v27, &v177, &v175);
          }

          if (*(this + 33))
          {
            v28 = 0;
            v29 = v18;
            do
            {
              v18 = v29 + 1;
              v171[v29] = v177[v28];
              if (!*(this + 4))
              {
                v171[v18] = v175[v28];
                v18 = v29 + 2;
              }

              ++v28;
              v29 = v18;
            }

            while (v28 < *(this + 33));
          }

          v26 = *(this + 4);
          if (v26 == 1 && *(this + 38))
          {
            v30 = 0;
            v31 = v173;
            v32 = v169;
            do
            {
              *(v32 + (v19 + v30)) = v31[v30];
              ++v30;
            }

            while (v30 < *(this + 38));
            v19 += v30;
          }

          ++v24;
        }

        while (v24 != v23);
        v17 = *(this + 35);
      }
    }
  }

  DgnTextFileWriter::DgnTextFileWriter(v168);
  DgnTextFileWriter::openDgnTextFileWriter(v168, a2, 0x26u, 0);
  v166 = 0;
  v167 = 0;
  DgnTextFile::legalDgnTextFileVersions(v168, sMCT_Versions, &v166, v33, v34, v35, v36, v37);
  DgnTextFileWriter::setFileType(v168, "MixtureComponentText", (v166 + 8 * (v167 - 1)));
  v38 = *(this + 4);
  if (v38)
  {
    if (v38 != 1)
    {
      goto LABEL_46;
    }

    v39 = "MixtureOfInverseCovarianceMatrices";
  }

  else
  {
    v39 = "DiagonalCovarianceMatrix";
  }

  DgnTextFileWriter::setHeaderField(v168, "PrecisionModelingType", v39);
LABEL_46:
  DgnTextFileWriter::setHeaderFieldUnsigned(v168, "ModelDimension", *(this + 33));
  DgnTextFileWriter::setHeaderFieldUnsigned(v168, "NumberOfMixtureComponents", *(this + 34));
  v40 = *(this + 3);
  if (v40 <= 3)
  {
    DgnTextFileWriter::setHeaderField(v168, "ComponentScoringType", off_279B3BFA8[v40]);
  }

  if (!*(this + 4))
  {
    DgnTextFileWriter::setHeaderFieldUnsigned(v168, "MinimumScaledDev", *(this + 32));
  }

  if (*(this + 3) == 3)
  {
    DgnTextFileWriter::setHeaderFieldUnsigned(v168, "NumMeanValueQuantLevels", *(this + 6));
    DgnTextFileWriter::setHeaderFieldUnsigned(v168, "NumDevValueQuantLevels", *(this + 7));
  }

  DgnArray<DgnString>::DgnArray(v163, 4);
  v161 = 0;
  v162 = 0;
  v159 = 0;
  v41 = realloc_array(0, &v159, 0x10uLL, 0, 0, 1);
  v161 = v159;
  LODWORD(v162) = 4;
  HIDWORD(v162) = v41 >> 2;
  DgnString::operator=(*v163, "TableName");
  *v161 = 0;
  DgnString::operator=((*v163 + 16), "Index1");
  v161[1] = 3;
  DgnString::operator=((*v163 + 32), "Index2");
  v161[2] = 3;
  DgnString::operator=((*v163 + 48), "Value1");
  v161[3] = 3;
  if (*(this + 4))
  {
    v42 = -1;
  }

  else
  {
    DgnString::DgnString(&v159, "Value2");
    v43 = v164;
    if (v164 == v165)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(v163, 1, 1);
      v43 = v164;
    }

    DgnString::DgnString((*v163 + 16 * v43), &v159);
    ++v164;
    DgnString::~DgnString(&v159);
    v44 = v162;
    if (v162 == HIDWORD(v162))
    {
      DgnPrimArray<unsigned int>::reallocElts(&v161, 1, 1);
      v44 = v162;
    }

    v161[v44] = 3;
    LODWORD(v162) = v44 + 1;
    v42 = 4;
  }

  DgnTextFileWriter::setLineFieldFormat(v168, &v161, v163);
  if (*(this + 3) == 3)
  {
    PelMgr::saveQuantPerDimTableText(this, v168, 0, 1u, 2u, 3u, v42, "MeanQuantTable", *(this + 6), this + 6);
    PelMgr::saveQuantPerDimTableText(this, v168, 0, 1u, 2u, 3u, v42, "DevQuantTable", *(this + 7), this + 8);
  }

  v45 = *(this + 34);
  if (v45)
  {
    v46 = 0;
    v47 = 0;
    v48 = *(this + 33);
    do
    {
      if (v48)
      {
        for (j = 0; j < v48; ++j)
        {
          DgnTextFileWriter::setLineFieldValue(v168, 0, "Component");
          DgnTextFileWriter::setLineFieldUnsignedValue(v168, 1u, v47);
          DgnTextFileWriter::setLineFieldUnsignedValue(v168, 2u, j);
          DgnTextFileWriter::setLineFieldUnsignedValue(v168, 3u, v171[v46]);
          if (*(this + 4))
          {
            ++v46;
          }

          else
          {
            DgnTextFileWriter::setLineFieldUnsignedValue(v168, v42, v171[v46 + 1]);
            v46 += 2;
          }

          DgnTextFileWriter::writeNextLine(v168);
          v48 = *(this + 33);
        }

        v45 = *(this + 34);
      }

      ++v47;
    }

    while (v47 < v45);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v161);
  DgnArray<DgnString>::releaseAll(v163);
  DgnIArray<Utterance *>::~DgnIArray(&v166);
  DgnTextFileWriter::~DgnTextFileWriter(v168);
  if (*(this + 4) == 1)
  {
    DgnTextFileWriter::DgnTextFileWriter(v168);
    DgnTextFileWriter::openDgnTextFileWriter(v168, a2, 5u, a3);
    v166 = 0;
    v167 = 0;
    DgnTextFile::legalDgnTextFileVersions(v168, sBMT_Versions, &v166, v50, v51, v52, v53, v54);
    DgnTextFileWriter::setFileType(v168, "MixtureComponentBasisMatrixText", (v166 + 8 * (v167 - 1)));
    DgnTextFileWriter::setHeaderFieldUnsigned(v168, "ModelDimension", *(this + 33));
    DgnTextFileWriter::setHeaderFieldUnsigned(v168, "NumberOfBasisMatrices", *(this + 38));
    DgnTextFileWriter::setHeaderFieldUnsigned(v168, "BMTIntScale", 1 << *(this + 40));
    DgnArray<DgnString>::DgnArray(v163, 4);
    v161 = 0;
    v162 = 0;
    v159 = 0;
    v55 = realloc_array(0, &v159, 0x10uLL, 0, 0, 1);
    v161 = v159;
    LODWORD(v162) = 4;
    HIDWORD(v162) = v55 >> 2;
    DgnString::operator=(*v163, "BasisMatrixIndex");
    *v161 = 3;
    DgnString::operator=((*v163 + 16), "RowIndex");
    v161[1] = 3;
    DgnString::operator=((*v163 + 32), "ColumnIndex");
    v161[2] = 3;
    DgnString::operator=((*v163 + 48), "Value");
    v161[3] = 1;
    DgnTextFileWriter::setLineFieldFormat(v168, &v161, v163);
    v56 = *(this + 38);
    if (v56)
    {
      v57 = 0;
      v58 = *(this + 33);
      v59 = v58;
      do
      {
        if (v59)
        {
          v60 = 0;
          do
          {
            if (v58)
            {
              for (k = 0; k < v58; ++k)
              {
                DgnTextFileWriter::setLineFieldUnsignedValue(v168, 0, v57);
                DgnTextFileWriter::setLineFieldUnsignedValue(v168, 1u, v60);
                DgnTextFileWriter::setLineFieldUnsignedValue(v168, 2u, k);
                DgnTextFileWriter::setLineFieldIntegerValue(v168, 3u, *(*(*(*(this + 23) + 16 * v57) + 16 * v60) + 4 * k));
                DgnTextFileWriter::writeNextLine(v168);
                v58 = *(this + 33);
              }
            }

            ++v60;
          }

          while (v60 < v58);
          v56 = *(this + 38);
          v59 = v58;
        }

        ++v57;
      }

      while (v57 < v56);
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(&v161);
    DgnArray<DgnString>::releaseAll(v163);
    DgnIArray<Utterance *>::~DgnIArray(&v166);
    DgnTextFileWriter::~DgnTextFileWriter(v168);
    DgnTextFileWriter::DgnTextFileWriter(v168);
    DgnTextFileWriter::openDgnTextFileWriter(v168, a2, 2u, 0);
    v166 = 0;
    v167 = 0;
    DgnTextFile::legalDgnTextFileVersions(v168, sBCT_Versions, &v166, v62, v63, v64, v65, v66);
    DgnTextFileWriter::setFileType(v168, "MixtureComponentBasisCoefficientText", (v166 + 8 * (v167 - 1)));
    DgnTextFileWriter::setHeaderFieldUnsigned(v168, "ModelDimension", *(this + 33));
    DgnTextFileWriter::setHeaderFieldUnsigned(v168, "NumberOfMixtureComponents", *(this + 34));
    DgnTextFileWriter::setHeaderFieldUnsigned(v168, "NumberOfBasisMatrices", *(this + 38));
    DgnTextFileWriter::setHeaderFieldUnsigned(v168, "BCTIntScale", 1 << *(this + 41));
    DgnArray<DgnString>::DgnArray(v163, 3);
    v161 = 0;
    v162 = 0;
    v159 = 0;
    v67 = realloc_array(0, &v159, 0xCuLL, 0, 0, 1);
    v161 = v159;
    LODWORD(v162) = 3;
    HIDWORD(v162) = v67 >> 2;
    DgnString::operator=(*v163, "ComponentIndex");
    *v161 = 3;
    DgnString::operator=((*v163 + 16), "BasisMatrixIndex");
    v161[1] = 3;
    DgnString::operator=((*v163 + 32), "BasisCoefficient");
    v161[2] = 1;
    DgnTextFileWriter::setLineFieldFormat(v168, &v161, v163);
    v68 = *(this + 34);
    if (v68)
    {
      v69 = 0;
      v70 = *(this + 38);
      v71 = v70;
      do
      {
        if (v71)
        {
          v72 = 0;
          do
          {
            if (*(v169 + v72 + v69 * v71))
            {
              DgnTextFileWriter::setLineFieldUnsignedValue(v168, 0, v69);
              DgnTextFileWriter::setLineFieldUnsignedValue(v168, 1u, v72);
              DgnTextFileWriter::setLineFieldIntegerValue(v168, 2u, *(v169 + v72 + v69 * *(this + 38)));
              DgnTextFileWriter::writeNextLine(v168);
              v70 = *(this + 38);
            }

            ++v72;
            v71 = v70;
          }

          while (v72 < v70);
          v68 = *(this + 34);
          v71 = v70;
        }

        ++v69;
      }

      while (v69 < v68);
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(&v161);
    DgnArray<DgnString>::releaseAll(v163);
    DgnIArray<Utterance *>::~DgnIArray(&v166);
    DgnTextFileWriter::~DgnTextFileWriter(v168);
  }

  DgnTextFileWriter::DgnTextFileWriter(v168);
  DgnTextFileWriter::openDgnTextFileWriter(v168, a2, 0x27u, a3);
  v166 = 0;
  v167 = 0;
  DgnTextFile::legalDgnTextFileVersions(v168, sMGT_Versions, &v166, v73, v74, v75, v76, v77);
  DgnTextFileWriter::setFileType(v168, "MixtureGenoneText", (v166 + 8 * (v167 - 1)));
  DgnTextFileWriter::setHeaderFieldUnsigned(v168, "NumberOfMixtureComponents", *(this + 34));
  DgnTextFileWriter::setHeaderFieldUnsigned(v168, "NumberOfGenones", *(this + 35));
  DgnArray<DgnString>::DgnArray(v163, 3);
  v161 = 0;
  v162 = 0;
  v159 = 0;
  v78 = realloc_array(0, &v159, 0xCuLL, 0, 0, 1);
  v161 = v159;
  LODWORD(v162) = 3;
  HIDWORD(v162) = v78 >> 2;
  DgnString::operator=(*v163, "GenId");
  *v161 = 3;
  DgnString::operator=((*v163 + 16), "StartComponentIndex");
  v161[1] = 3;
  DgnString::operator=((*v163 + 32), "NumberOfComponents");
  v161[2] = 3;
  DgnTextFileWriter::setLineFieldFormat(v168, &v161, v163);
  if (*(this + 35))
  {
    v79 = 0;
    do
    {
      v80 = (*(this + 34) + 4 * v79);
      v82 = *v80;
      v81 = v80[1];
      DgnTextFileWriter::setLineFieldUnsignedValue(v168, 0, v79);
      DgnTextFileWriter::setLineFieldUnsignedValue(v168, 1u, *(*(this + 34) + 4 * v79));
      DgnTextFileWriter::setLineFieldUnsignedValue(v168, 2u, v81 - v82);
      DgnTextFileWriter::writeNextLine(v168);
      ++v79;
    }

    while (v79 < *(this + 35));
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v161);
  DgnArray<DgnString>::releaseAll(v163);
  DgnIArray<Utterance *>::~DgnIArray(&v166);
  DgnTextFileWriter::~DgnTextFileWriter(v168);
  DgnTextFileWriter::DgnTextFileWriter(v168);
  DgnTextFileWriter::openDgnTextFileWriter(v168, a2, 0x2Bu, a3);
  v166 = 0;
  v167 = 0;
  DgnTextFile::legalDgnTextFileVersions(v168, sMPT_Versions, &v166, v83, v84, v85, v86, v87);
  DgnTextFileWriter::setFileType(v168, "MixturePelText", (v166 + 8 * (v167 - 1)));
  DgnTextFileWriter::setHeaderFieldUnsigned(v168, "NumberOfGenones", *(this + 35));
  DgnTextFileWriter::setHeaderFieldUnsigned(v168, "NumberOfPels", *(this + 36));
  if (*(this + 392))
  {
    v88 = 0;
  }

  else
  {
    v88 = *(this + 102);
  }

  DgnTextFileWriter::setHeaderFieldUnsigned(v168, "NumberOfPelStatClasses", v88);
  DgnTextFileWriter::setHeaderFieldUnsigned(v168, "AdaptationAccumulatorScale", *(this + 5));
  DgnArray<DgnString>::DgnArray(v163, 5);
  v161 = 0;
  v162 = 0;
  v159 = 0;
  v89 = realloc_array(0, &v159, 0x14uLL, 0, 0, 1);
  v155 = a3;
  v156 = a2;
  v161 = v159;
  LODWORD(v162) = 5;
  HIDWORD(v162) = v89 >> 2;
  DgnString::operator=(*v163, "PelId");
  *v161 = 3;
  DgnString::operator=((*v163 + 16), "GenId");
  v161[1] = 3;
  DgnString::operator=((*v163 + 32), "GenoneComponentIndex");
  v161[2] = 3;
  DgnString::operator=((*v163 + 48), "MixtureWeight");
  v161[3] = 3;
  DgnString::operator=((*v163 + 64), "BackoffPelId");
  v161[4] = 1;
  if (*(this + 392))
  {
    v90 = -1;
  }

  else
  {
    DgnString::DgnString(&v159, "StatClassName");
    v91 = v164;
    if (v164 == v165)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(v163, 1, 1);
      v91 = v164;
    }

    DgnString::DgnString((*v163 + 16 * v91), &v159);
    ++v164;
    DgnString::~DgnString(&v159);
    v92 = v162;
    if (v162 == HIDWORD(v162))
    {
      DgnPrimArray<unsigned int>::reallocElts(&v161, 1, 1);
      v92 = v162;
    }

    v161[v92] = 0;
    LODWORD(v162) = v92 + 1;
    v90 = 5;
  }

  DgnTextFileWriter::setLineFieldFormat(v168, &v161, v163);
  v93 = *(this + 36);
  if (v93)
  {
    v94 = 0;
    v95 = 0;
    do
    {
      v96 = v95;
      v99 = (*(this + 57) + 4 * v95);
      v97 = *v99;
      v98 = v99[1];
      v100 = v98 - v97;
      if (v98 != v97)
      {
        v101 = 0;
        v102 = *(*(this + 36) + 2 * v96);
        v103 = *(this + 43) + v97;
        do
        {
          DgnTextFileWriter::setLineFieldUnsignedValue(v168, 0, v94);
          DgnTextFileWriter::setLineFieldUnsignedValue(v168, 1u, v102);
          DgnTextFileWriter::setLineFieldUnsignedValue(v168, 2u, v101);
          DgnTextFileWriter::setLineFieldUnsignedValue(v168, 3u, *(v103 + v101));
          if (*(*(this + 47) + 2 * v96) == 0xFFFF)
          {
            v104 = -1;
          }

          else
          {
            v104 = *(*(this + 47) + 2 * v96);
          }

          DgnTextFileWriter::setLineFieldIntegerValue(v168, 4u, v104);
          if ((*(this + 392) & 1) == 0)
          {
            v105 = *(this + 50) + 16 * *(*(this + 52) + 4 * v96);
            if (*(v105 + 8))
            {
              v106 = *v105;
            }

            else
            {
              v106 = byte_262888D40;
            }

            DgnTextFileWriter::setLineFieldValue(v168, v90, v106);
          }

          DgnTextFileWriter::writeNextLine(v168);
          ++v101;
        }

        while (v100 != v101);
        v93 = *(this + 36);
      }

      v95 = v96 + 1;
      v94 = (v96 + 1);
    }

    while (v93 > v94);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v161);
  DgnArray<DgnString>::releaseAll(v163);
  DgnIArray<Utterance *>::~DgnIArray(&v166);
  DgnTextFileWriter::~DgnTextFileWriter(v168);
  v107 = v156;
  if (*(this + 268))
  {
    DgnTextFileWriter::DgnTextFileWriter(v168);
    DgnTextFileWriter::openDgnTextFileWriter(v168, v156, 0x2Cu, v155);
    v166 = 0;
    v167 = 0;
    DgnTextFile::legalDgnTextFileVersions(v168, sMST_Versions, &v166, v108, v109, v110, v111, v112);
    DgnTextFileWriter::setFileType(v168, "MixtureShortListText", (v166 + 8 * (v167 - 1)));
    DgnTextFileWriter::setHeaderFieldUnsigned(v168, "NumberOfGenones", *(this + 35));
    DgnTextFileWriter::setHeaderFieldUnsigned(v168, "NumberOfTreeNodes", *(this + 268));
    DgnTextFileWriter::setHeaderFieldUnsigned(v168, "ModelDimension", *(this + 33));
    DgnTextFileWriter::setHeaderFieldUnsigned(v168, "NumberOfHyperplanes", *(this + 276));
    DgnArray<DgnString>::DgnArray(v163, 6);
    v161 = 0;
    v162 = 0;
    v159 = 0;
    v113 = realloc_array(0, &v159, 0x18uLL, 0, 0, 1);
    v161 = v159;
    LODWORD(v162) = 6;
    HIDWORD(v162) = v113 >> 2;
    DgnString::operator=(*v163, "TableName");
    *v161 = 0;
    DgnString::operator=((*v163 + 16), "UnsValue1");
    v161[1] = 3;
    DgnString::operator=((*v163 + 32), "IntValue1");
    v161[2] = 1;
    DgnString::operator=((*v163 + 48), "IntValue2");
    v161[3] = 1;
    DgnString::operator=((*v163 + 64), "UnsValue2");
    v161[4] = 3;
    DgnString::operator=((*v163 + 80), "StrValue1");
    v161[5] = 0;
    DgnTextFileWriter::setLineFieldFormat(v168, &v161, v163);
    if (*(this + 276))
    {
      v114 = 0;
      v115 = 0;
      do
      {
        DgnTextFileWriter::setLineFieldValue(v168, 0, "HyperplaneConstant");
        DgnTextFileWriter::setLineFieldUnsignedValue(v168, 1u, v115);
        DgnTextFileWriter::setLineFieldIntegerValue(v168, 2u, *(*(this + 68) + v114));
        DgnTextFileWriter::setLineFieldIntegerValue(v168, 3u, -1);
        DgnTextFileWriter::setLineFieldUnsignedValue(v168, 4u, 0);
        DgnTextFileWriter::setLineFieldValue(v168, 5u, byte_262888D40);
        DgnTextFileWriter::writeNextLine(v168);
        ++v115;
        v116 = *(this + 276);
        v114 += 24;
      }

      while (v115 < v116);
      if (*(this + 276))
      {
        v117 = 0;
        v118 = *(this + 33);
        do
        {
          if (v118)
          {
            v119 = 0;
            v120 = 0;
            do
            {
              DgnTextFileWriter::setLineFieldValue(v168, 0, "HyperplaneCoefficient");
              DgnTextFileWriter::setLineFieldUnsignedValue(v168, 1u, v117);
              DgnTextFileWriter::setLineFieldIntegerValue(v168, 2u, v119);
              DgnTextFileWriter::setLineFieldIntegerValue(v168, 3u, *(*(*(this + 68) + 24 * v117 + 8) + 4 * v120));
              DgnTextFileWriter::setLineFieldUnsignedValue(v168, 4u, 0);
              DgnTextFileWriter::setLineFieldValue(v168, 5u, byte_262888D40);
              DgnTextFileWriter::writeNextLine(v168);
              v119 = ++v120;
              v118 = *(this + 33);
            }

            while (v118 > v120);
            LOWORD(v116) = *(this + 276);
          }

          ++v117;
        }

        while (v117 < v116);
      }
    }

    if (*(this + 268))
    {
      v121 = 0;
      v122 = 0;
      do
      {
        DgnTextFileWriter::setLineFieldValue(v168, 0, "FrameDecisionTree");
        DgnTextFileWriter::setLineFieldUnsignedValue(v168, 1u, v122);
        DgnTextFileWriter::setLineFieldIntegerValue(v168, 2u, *(*(this + 66) + v121));
        DgnTextFileWriter::setLineFieldIntegerValue(v168, 3u, *(*(this + 66) + v121 + 2));
        DgnTextFileWriter::setLineFieldUnsignedValue(v168, 4u, *(*(this + 66) + v121 + 4));
        DgnTextFileWriter::setLineFieldValue(v168, 5u, byte_262888D40);
        DgnTextFileWriter::writeNextLine(v168);
        ++v122;
        v121 += 6;
      }

      while (v122 < *(this + 268));
    }

    v123 = *(this + 35);
    if (v123)
    {
      v124 = 0;
      v125 = 0;
      do
      {
        v126 = v125;
        if (*(this + 268))
        {
          v127 = 0;
          v128 = *(*(this + 34) + 4 * v125 + 4) - *(*(this + 34) + 4 * v125);
          v129 = (*(this + 268) + 1) >> 1;
          v130 = v129 * v124;
          do
          {
            DgnTextFileWriter::setLineFieldValue(v168, 0, "ShortList");
            DgnTextFileWriter::setLineFieldUnsignedValue(v168, 1u, v124);
            DgnTextFileWriter::setLineFieldIntegerValue(v168, 2u, v127);
            DgnTextFileWriter::setLineFieldIntegerValue(v168, 3u, v128);
            DgnTextFileWriter::setLineFieldUnsignedValue(v168, 4u, 0);
            DgnString::DgnString(&v159, 48, v128);
            v131 = *(*(this + 73) + 4 * v126) + v128 * *(*(this + 75) + 2 * v127 + 2 * v130);
            v132 = v131 + v128;
            if (v131 + v128 == -1)
            {
              v132 = *(this + 144);
            }

            if (v131 < v132)
            {
              v133 = *(*(this + 73) + 4 * v126) + v128 * *(*(this + 75) + 2 * v127 + 2 * v130);
              while (((*(*(this + 71) + 4 * (v133 >> 5)) >> v133) & 1) == 0)
              {
                if (++v133 >= v132)
                {
                  goto LABEL_151;
                }
              }

LABEL_146:
              v134 = v133;
              goto LABEL_147;
            }

            v133 = *(*(this + 73) + 4 * v126) + v128 * *(*(this + 75) + 2 * v127 + 2 * v130);
            while (1)
            {
              v134 = v132;
LABEL_147:
              if (v133 >= v132)
              {
                break;
              }

              *(v159 + v134 - v131) = 49;
              if (++v133 < v132)
              {
                while (((*(*(this + 71) + 4 * (v133 >> 5)) >> v133) & 1) == 0)
                {
                  if (v132 == ++v133)
                  {
                    goto LABEL_151;
                  }
                }

                goto LABEL_146;
              }
            }

LABEL_151:
            if (v160)
            {
              v135 = v159;
            }

            else
            {
              v135 = byte_262888D40;
            }

            DgnTextFileWriter::setLineFieldValue(v168, 5u, v135);
            DgnTextFileWriter::writeNextLine(v168);
            DgnString::~DgnString(&v159);
            ++v127;
          }

          while (v127 != v129);
          v123 = *(this + 35);
        }

        v125 = v126 + 1;
        v124 = (v126 + 1);
      }

      while (v123 > v124);
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(&v161);
    DgnArray<DgnString>::releaseAll(v163);
    DgnIArray<Utterance *>::~DgnIArray(&v166);
    DgnTextFileWriter::~DgnTextFileWriter(v168);
    v107 = v156;
  }

  if (*(this + 155))
  {
    DgnTextFileWriter::DgnTextFileWriter(v168);
    DgnTextFileWriter::openDgnTextFileWriter(v168, v107, 0x1Cu, 0);
    v166 = 0;
    v167 = 0;
    DgnTextFile::legalDgnTextFileVersions(v168, sHST_Versions, &v166, v136, v137, v138, v139, v140);
    DgnTextFileWriter::setFileType(v168, "HierarchicalScorerText", (v166 + 8 * (v167 - 1)));
    DgnTextFileWriter::setHeaderFieldUnsigned(v168, "NumHSLevels", *(this + 155));
    DgnArray<DgnString>::DgnArray(v163, 7);
    v161 = 0;
    v162 = 0;
    v159 = 0;
    v141 = realloc_array(0, &v159, 0x1CuLL, 0, 0, 1);
    v161 = v159;
    LODWORD(v162) = 7;
    HIDWORD(v162) = v141 >> 2;
    DgnString::operator=(*v163, "Type");
    *v161 = 0;
    DgnString::operator=((*v163 + 16), "Level");
    v161[1] = 3;
    DgnString::operator=((*v163 + 32), "Component");
    v161[2] = 3;
    DgnString::operator=((*v163 + 48), "Parent");
    v161[3] = 1;
    DgnString::operator=((*v163 + 64), "DimensionIndex");
    v161[4] = 3;
    DgnString::operator=((*v163 + 80), "Mean");
    v161[5] = 3;
    DgnString::operator=((*v163 + 96), "ScaledDev");
    v161[6] = 3;
    DgnTextFileWriter::setLineFieldFormat(v168, &v161, v163);
    if (*(this + 155) != -1)
    {
      v142 = 0;
      do
      {
        DgnTextFileWriter::setLineFieldValue(v168, 0, "NumHSComponents");
        DgnTextFileWriter::setLineFieldUnsignedValue(v168, 1u, v142);
        DgnTextFileWriter::setLineFieldUnsignedValue(v168, 2u, *(*(this + 80) + 4 * v142));
        DgnTextFileWriter::setLineFieldIntegerValue(v168, 3u, 0);
        DgnTextFileWriter::setLineFieldUnsignedValue(v168, 4u, 0);
        DgnTextFileWriter::setLineFieldUnsignedValue(v168, 5u, 0);
        DgnTextFileWriter::setLineFieldUnsignedValue(v168, 6u, 0);
        DgnTextFileWriter::writeNextLine(v168);
        ++v142;
      }

      while (v142 < (*(this + 155) + 1));
    }

    v143 = *(this + 33);
    v159 = 0;
    v160 = 0;
    if (v143)
    {
      v157 = 0;
      v144 = realloc_array(0, &v157, 4 * v143, 0, 0, 1);
      v158 = 0;
      v159 = v157;
      v145 = *(this + 33);
      LODWORD(v160) = v143;
      HIDWORD(v160) = v144 >> 2;
      v157 = 0;
      if (v145)
      {
        v179 = 0;
        HIDWORD(v158) = realloc_array(0, &v179, 4 * v145, 0, 0, 1) >> 2;
        v157 = v179;
      }
    }

    else
    {
      LODWORD(v145) = 0;
      v157 = 0;
      v158 = 0;
    }

    LODWORD(v158) = v145;
    v146 = *(this + 155);
    if (v146 != -1)
    {
      v147 = 0;
      v148 = 0;
      do
      {
        if (v147 >= v146)
        {
          v149 = 1;
        }

        else
        {
          v148 = *(*(this + 82) + 24 * v147) + *(*(this + 82) + 24 * v147 + 16);
          v149 = *(this + 33);
        }

        if (*(*(this + 80) + 4 * v147))
        {
          v150 = 0;
          do
          {
            if (v147 < *(this + 155))
            {
              PelMgr::unpackRawMixtureComponent(this, v148, &v159, &v157);
              v148 += *(this + 37);
            }

            if (v149)
            {
              for (m = 0; m != v149; ++m)
              {
                DgnTextFileWriter::setLineFieldValue(v168, 0, "HSComponentDefs");
                DgnTextFileWriter::setLineFieldUnsignedValue(v168, 1u, v147);
                DgnTextFileWriter::setLineFieldUnsignedValue(v168, 2u, v150);
                if (v147)
                {
                  v152 = *(*(*(this + 78) + 16 * (v147 - 1)) + 4 * v150);
                }

                else
                {
                  v152 = -1;
                }

                DgnTextFileWriter::setLineFieldIntegerValue(v168, 3u, v152);
                if (v147 >= *(this + 155))
                {
                  DgnTextFileWriter::setLineFieldUnsignedValue(v168, 4u, 0);
                  DgnTextFileWriter::setLineFieldUnsignedValue(v168, 5u, 0);
                  v153 = 0;
                }

                else
                {
                  DgnTextFileWriter::setLineFieldUnsignedValue(v168, 4u, m);
                  DgnTextFileWriter::setLineFieldUnsignedValue(v168, 5u, *(v159 + m));
                  v153 = *(v157 + m);
                }

                DgnTextFileWriter::setLineFieldUnsignedValue(v168, 6u, v153);
                DgnTextFileWriter::writeNextLine(v168);
              }
            }

            ++v150;
          }

          while (v150 < *(*(this + 80) + 4 * v147));
          v146 = *(this + 155);
        }

        ++v147;
      }

      while (v147 < v146 + 1);
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(&v157);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v159);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v161);
    DgnArray<DgnString>::releaseAll(v163);
    DgnIArray<Utterance *>::~DgnIArray(&v166);
    DgnTextFileWriter::~DgnTextFileWriter(v168);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v169);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v171);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v173);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v175);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v177);
}

void *DgnArray<DgnString>::DgnArray(void *a1, uint64_t a2)
{
  v2 = a2;
  *a1 = 0;
  a1[1] = 0;
  if (a2)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a1, a2, 0);
    v4 = *(a1 + 2);
    if (v4 > v2)
    {
      if (v4 > v2)
      {
        v5 = v4;
        v6 = 16 * v4 - 16;
        do
        {
          --v5;
          DgnString::~DgnString((*a1 + v6));
          v6 -= 16;
        }

        while (v5 > v2);
      }

      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = v2 - v4;
  if (v2 > v4)
  {
    v8 = 16 * v4;
    do
    {
      DgnString::DgnString((*a1 + v8));
      v8 += 16;
      --v7;
    }

    while (v7);
  }

LABEL_11:
  *(a1 + 2) = v2;
  return a1;
}

void PelMgr::saveQuantPerDimTableText(uint64_t a1, DgnTextFileWriter *this, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, char *a8, int a9, void *a10)
{
  v10 = *(a1 + 132);
  if (v10)
  {
    v15 = 0;
    for (i = 0; i < v10; ++i)
    {
      if (a9)
      {
        for (j = 0; j != a9; ++j)
        {
          DgnTextFileWriter::setLineFieldValue(this, a3, a8);
          DgnTextFileWriter::setLineFieldUnsignedValue(this, a4, i);
          DgnTextFileWriter::setLineFieldUnsignedValue(this, a5, j);
          DgnTextFileWriter::setLineFieldUnsignedValue(this, a6, *(*a10 + (v15 + j)));
          if (!*(a1 + 16))
          {
            DgnTextFileWriter::setLineFieldUnsignedValue(this, a7, 0);
          }

          DgnTextFileWriter::writeNextLine(this);
        }

        v10 = *(a1 + 132);
        v15 += j;
      }
    }
  }
}

void (***PelMgr::savePelMgr(PelMgr *this, DFile *a2, DFileChecksums *a3, int a4, int a5))(void)
{
  if (a4)
  {
    return PelMgr::savePelMgrText(this, a2, a5);
  }

  else
  {
    return PelMgr::savePelMgrBinary(this, a2, a3, a5, 0);
  }
}

void PelMgr::verifyFeatureDimension(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, NeuralNet *a6, uint64_t a7, uint64_t a8)
{
  v12 = a4;
  v15 = *(a1 + 132);
  if (a2)
  {
    if (v15 != *(a2 + 4))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 3730, "pel/pel", 17, "%.500s %.500s", a7, a8, "VarClass");
    }

    if (v15 != *(a2 + 8))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 3732, "pel/pel", 17, "%.500s %.500s", a7, a8, "VarClass");
    }
  }

  v17 = a3[2];
  if (v17 == *a3 && v15 != v17)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 3738, "pel/pel", 17, "%.500s %.500s", a7, a8, "SpeakerTransAcc");
    if (v15 != a3[2])
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 3740, "pel/pel", 17, "%.500s %.500s", a7, a8, "SpeakerTransAcc");
    }
  }

  v19 = a3[3];
  if (v19 == *a3 && v15 != v19)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 3746, "pel/pel", 17, "%.500s %.500s", a7, a8, "ChannelTransAcc");
    if (v15 != a3[3])
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 3748, "pel/pel", 17, "%.500s %.500s", a7, a8, "ChannelTransAcc");
    }
  }

  OutputSize = *(a1 + 8);
  if (v12 && OutputSize != v12)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 3754, "pel/pel", 16, "%.500s", a7, a8, "utterance");
  }

  if (a5)
  {
    if (OutputSize != *(a5 + 8))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 3759, "pel/pel", 17, "%.500s %.500s", a7, a8, "BandwidthTransform");
    }

    OutputSize = *(a5 + 12);
    if (OutputSize < *(a1 + 132))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 3762, "pel/pel", 17, "%.500s %.500s", a7, a8, "BandwidthTransform");
    }
  }

  if (a6)
  {
    if (NeuralNet::isOutTypeBF(a6, a2, a3, a4, a5, a6, a7, a8))
    {
      if (OutputSize != NeuralNet::getFrameSize(a6, v22, v23, v24, v25, v26, v27, v28))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 3770, "pel/pel", 17, "%.500s %.500s", v34, v35, "DBNBottleneckFeature");
      }

      OutputSize = NeuralNet::getOutputSize(a6, v29, v30, v31, v32, v33, v34, v35);
      if (OutputSize < *(a1 + 132))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 3773, "pel/pel", 17, "%.500s %.500s", a7, a8, "DBNBottleneckFeature");
      }
    }

    else if (NeuralNet::isOutTypeConcatenatedBF(a6, v22, v23, v24, v25, v26, v27, v28))
    {
      if (OutputSize != NeuralNet::getFrameSize(a6, v36, v37, v38, v39, v40, a7, a8))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 3779, "pel/pel", 17, "%.500s %.500s", v46, v47, "DBNConcatenatedBottleneckFeature");
      }

      OutputSize += NeuralNet::getOutputSize(a6, v41, v42, v43, v44, v45, v46, v47);
      if (OutputSize < *(a1 + 132))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 3782, "pel/pel", 17, "%.500s %.500s", a7, a8, "DBNConcatenatedBottleneckFeature");
      }
    }
  }

  if (a7)
  {
    if (OutputSize != *(a7 + 8))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 3789, "pel/pel", 17, "%.500s %.500s", a7, a8, "Imelda");
    }

    OutputSize = *(a7 + 12);
    if (OutputSize < *(a1 + 132))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 3792, "pel/pel", 17, "%.500s %.500s", a7, a8, "Imelda");
    }
  }

  if (a8)
  {
    if (OutputSize != *(*(a8 + 112) + 132))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 3798, "pel/pel", 17, "%.500s %.500s", a7, a8, "DFC");
    }

    if (OutputSize < *(a1 + 132))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 3800, "pel/pel", 17, "%.500s %.500s", a7, a8, "DFC");
    }
  }
}

float PelMgr::packFloatRawMixtureComponent(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 132);
  if (v6)
  {
    v9 = 0;
    LODWORD(v10) = 0;
    v11 = vcvtd_n_f64_u32(*(a1 + 128), 3uLL);
    v12 = 4 * v6;
    v13 = 0.0;
    do
    {
      v14 = vcvtd_n_f64_u32(*(*a4 + v9), 3uLL);
      if (v14 <= 31.875)
      {
        v15 = v14;
      }

      else
      {
        v15 = 31.875;
      }

      if (v14 >= v11)
      {
        v16 = v15;
      }

      else
      {
        v16 = v11;
      }

      v17 = v10 + 1;
      v18 = *(a1 + 496);
      *(a2 + 4 * v10) = *(*a3 + v9);
      v19 = v18 / (v16 * (v16 * 3.14159265));
      v10 = (v10 + 2);
      *(a2 + 4 * v17) = v19;
      v13 = v13 + DgnLog(v16 * 0.25);
      v9 += 4;
    }

    while (v12 != v9);
  }

  else
  {
    v10 = 0;
    v13 = 0.0;
  }

  result = v13 * *(a1 + 496);
  *(a2 + 4 * v10) = result;
  return result;
}

uint64_t PelMgr::packMulTableRawMixtureComponent(uint64_t result, uint64_t a2, void *a3, void *a4)
{
  v4 = *(result + 132);
  if (v4)
  {
    v8 = result;
    for (i = 0; i != v4; ++i)
    {
      v10 = *v8;
      v11 = *(*a4 + 4 * i);
      if (v11 >= 0xFF)
      {
        v12 = 255;
      }

      else
      {
        v12 = *(*a4 + 4 * i);
      }

      if (*(v8 + 128) <= v11)
      {
        v13 = v12;
      }

      else
      {
        v13 = *(v8 + 128);
      }

      if (*(v10 + 4) - 1 < v13)
      {
        v13 = *(v10 + 4) - 1;
      }

      result = MulTable::permute(v10, ((*(*(v10 + 72) + v13) << 9) - *(*a3 + 4 * i) - 256));
      *(a2 + 2 * i) = result;
    }
  }

  return result;
}

uint64_t PelMgr::packPackedIntRawMixtureComponent(uint64_t result, uint64_t a2, int **a3, unsigned int **a4)
{
  v4 = *(result + 132);
  v5 = (v4 + 7) & 0xFFFFFFF8;
  if (v4)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a4;
    v9 = *(*(result + 488) + 72);
    do
    {
      v10 = *v7++;
      *(a2 + v6) = v10;
      v11 = *v8++;
      *(a2 + (v6 + 1)) = *(v9 + v11);
      v6 += 2;
    }

    while (2 * v4 != v6);
  }

  if (v4 < v5)
  {
    v12 = 2 * v4;
    v13 = v4 - v5;
    do
    {
      *(a2 + v12) = 0;
      *(a2 + v12 + 1) = 0;
      v12 += 2;
    }

    while (!__CFADD__(v13++, 1));
  }

  return result;
}

void PelMgr::packQuantPerDimRawMixtureComponent(uint64_t a1, _BYTE *a2, int **a3, int **a4)
{
  v4 = *(a1 + 132);
  v5 = (v4 + 7) & 0xFFFFFFF8;
  if (v4)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a4;
    v9 = *(a1 + 96);
    v10 = a2;
    v11 = *(a1 + 112);
    do
    {
      v12 = *v7++;
      v13 = *(v9 + (v6 + v12));
      v14 = *v8++;
      *v10++ = *(v11 + (v6 + v14)) + 16 * v13;
      v6 += 256;
    }

    while (v4 << 8 != v6);
  }

  if (v4 < v5)
  {
    bzero(&a2[v4], v5 + ~v4 + 1);
  }
}

uint64_t PelMgr::packFloatRawMixtureComponent(uint64_t a1, float *a2, char a3, unsigned int **a4, int **a5, char a6, double a7, double a8, double a9, double a10)
{
  v15 = *(a1 + 132);
  v16 = *(a1 + 152);
  if (v15)
  {
    v17 = *a4;
    v18 = *(a1 + 132);
    v19 = a2;
    do
    {
      v20 = *v17++;
      *v19++ = v20;
      --v18;
    }

    while (v18);
  }

  v22 = *(a1 + 160);
  v21 = *(a1 + 164);
  v58 = 0;
  v59 = 0;
  v60 = 0;
  if ((a6 & 1) == 0)
  {
    LODWORD(v58) = v15;
    HIDWORD(v58) = v15;
    if (v15 * v15)
    {
      v59 = MemChunkAlloc(8 * (v15 * v15), 0);
      v60 = v15 * v15;
    }
  }

  v23 = 0.0;
  if (!v15)
  {
    v42 = 0;
    v27 = 0.0;
    if (a6)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v24 = 0;
  v25 = *(a1 + 152);
  v26 = *a4;
  v27 = 0.0;
  v28 = v15;
  do
  {
    v29 = 0;
    v30 = *a5;
    v31 = v58;
    v32 = 0.0;
    v33 = v59;
    do
    {
      if (v25)
      {
        v34 = *(a1 + 184);
        v35 = 0.0;
        v36 = v25;
        v37 = v30;
        do
        {
          v38 = *v37++;
          a10 = v38;
          v39 = *v34;
          v34 += 2;
          v35 = v35 + a10 * *(*(v39 + 16 * v24) + 4 * v29);
          --v36;
        }

        while (v36);
      }

      else
      {
        v35 = 0.0;
      }

      v40 = 1.0 / (1 << (v22 + v21)) * v35;
      if ((a6 & 1) == 0)
      {
        *&v33[(v24 + v31 * v29)] = v40;
      }

      LODWORD(a10) = v26[v29];
      a10 = *&a10;
      v32 = v32 + v40 * a10;
      ++v29;
    }

    while (v29 != v15);
    v41 = -(v32 * *(a1 + 496));
    *&v41 = v41;
    a2[v28] = *&v41;
    LODWORD(v41) = v26[v24];
    v42 = v28 + 1;
    v27 = v27 + v32 * *&v41;
    ++v24;
    ++v28;
  }

  while (v24 != v15);
  if ((a6 & 1) == 0)
  {
LABEL_22:
    v45 = DgnMatrix::determinant(&v58);
    v23 = v45;
    if (v45 <= 0.0)
    {
      v23 = -v45;
      if (v45 == 0.0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 4146, "pel/pel", 68, "%u", v43, v44, a3);
      }
    }
  }

LABEL_25:
  v46 = *(a1 + 496);
  if (v16)
  {
    v47 = v46 * 0.5 / (1 << *(a1 + 164));
    v48 = *a5;
    do
    {
      v49 = *v48++;
      v50 = v47 * v49;
      v51 = v42 + 1;
      a2[v42++] = v50;
      --v16;
    }

    while (v16);
  }

  else
  {
    v51 = v42;
  }

  v52 = &a2[v51 + 1];
  if (a6)
  {
    v53 = *v52;
  }

  else
  {
    v54 = DgnLog(v23);
    v53 = eround(v54, 10);
    v46 = *(a1 + 496);
  }

  v55 = v46 * 0.5 * (v27 - v15 * DgnLog(25.1327412) - v53);
  a2[v51] = v55;
  if ((a6 & 1) == 0)
  {
    *v52 = v53;
  }

  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v59);
}

void sub_2626E37A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va);
  _Unwind_Resume(a1);
}

uint64_t PelMgr::packPackedIntRawMixtureComponent(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, int **a5, char a6)
{
  v12 = *(a1 + 132);
  v13 = (v12 + 1) & 0xFFFFFFFE;
  v14 = *(a1 + 152);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      *(a2 + i) = *(*a4 + 4 * i);
    }
  }

  v16 = v12;
  if (v12 < v13)
  {
    v17 = v12;
    do
    {
      *(a2 + v17++) = 0;
    }

    while (v13 != v17);
    v16 = (v12 + 1) & 0xFFFFFFFE;
  }

  v77 = v16;
  v78 = *(a1 + 164);
  v79 = *(a1 + 160);
  v85 = 0;
  v86 = 0;
  if (v14)
  {
    v80 = 0;
    v18 = realloc_array(0, &v80, 4 * v14, 0, 0, 1);
    v19 = 0;
    v85 = v80;
    LODWORD(v86) = v14;
    HIDWORD(v86) = v18 >> 2;
    v20 = *a5;
    v21 = v14;
    do
    {
      v23 = *v20++;
      v22 = v23;
      if (v23 < 0)
      {
        v22 = -v22;
      }

      if (v19 <= v22)
      {
        v19 = v22;
      }

      --v21;
    }

    while (v21);
  }

  else
  {
    v19 = 0;
    LODWORD(v86) = 0;
  }

  Bits = BinaryIntScale::getBits(v19);
  if (Bits >= 15)
  {
    v25 = BinaryIntScale::getBits((1 << (Bits - 15)) + v19) - 14;
    if (!v14)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v25 = 0;
    if (!v14)
    {
      goto LABEL_25;
    }
  }

  v26 = *a5;
  v27 = 1 << (v25 - 1);
  if (!v25)
  {
    LODWORD(v27) = 0;
  }

  v28 = v85;
  v29 = v14;
  do
  {
    v30 = *v26++;
    *v28++ = ((v30 + v27) >> v25);
    --v29;
  }

  while (v29);
LABEL_25:
  v83 = 0;
  v84 = 0;
  if (v12)
  {
    v80 = 0;
    HIDWORD(v84) = realloc_array(0, &v80, 8 * v12, 0, 0, 1) >> 3;
    v83 = v80;
  }

  v76 = a3;
  LODWORD(v84) = v12;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  if ((a6 & 1) == 0)
  {
    LODWORD(v80) = v12;
    HIDWORD(v80) = v12;
    if (v12 * v12)
    {
      v81 = MemChunkAlloc(8 * (v12 * v12), 0);
      v82 = v12 * v12;
    }
  }

  v31 = 0.0;
  if (v12)
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = *a4;
    v36 = v83;
    while (1)
    {
      v37 = 0;
      v38 = 0;
      v39 = v85;
      v40 = v80;
      v41 = v81;
      do
      {
        v42 = 0;
        if (v14)
        {
          v43 = *(a1 + 184);
          v44 = *a5;
          v45 = 0.0;
          v46 = v14;
          v47 = v39;
          do
          {
            v48 = *(*(*v43 + 16 * v32) + 4 * v37);
            if ((a6 & 1) == 0)
            {
              v45 = v45 + *v44 * v48;
            }

            v49 = *v47++;
            v42 += v48 * v49;
            v43 += 2;
            ++v44;
            --v46;
          }

          while (v46);
          if ((a6 & 1) == 0)
          {
LABEL_39:
            *&v41[(v32 + v40 * v37)] = 1.0 / (1 << (v79 + v78)) * v45;
          }
        }

        else
        {
          v45 = 0.0;
          if ((a6 & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        v38 += v42 * *(v35 + 4 * v37++);
      }

      while (v37 != v12);
      if (v38 >= 0)
      {
        v50 = v38;
      }

      else
      {
        v50 = -v38;
      }

      v36[v32] = -v38;
      if (v34 <= v50)
      {
        v34 = v50;
      }

      v33 += v38 * *(v35 + 4 * v32++);
      if (v32 == v12)
      {
        v51 = v33;
        if (a6)
        {
          goto LABEL_56;
        }

        goto LABEL_53;
      }
    }
  }

  v34 = 0;
  v51 = 0.0;
  if (a6)
  {
    goto LABEL_56;
  }

LABEL_53:
  v54 = DgnMatrix::determinant(&v80);
  v31 = v54;
  if (v54 <= 0.0)
  {
    v31 = -v54;
    if (v54 == 0.0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pel.cpp", 4492, "pel/pel", 68, "%u", v52, v53, v76);
    }
  }

LABEL_56:
  v55 = BinaryIntScale::getBits(v34);
  v56 = (a2 + v77);
  v57 = v78 - v25;
  if (v55 <= 15)
  {
    v58 = 0;
  }

  else
  {
    v58 = v55 - 15;
  }

  v59 = v57 + v79;
  *v56 = v57 + v79 - v58;
  bzero(v56 + 1, ((v13 + 17) & 0xFFFFFFF0) - v13 - 2);
  v60 = (((v13 + 17) & 0xFFFFFFF0) - v13 - 2) >> 1;
  if (v12)
  {
    v61 = v83;
    v62 = 1 << (v58 - 1);
    if (!v58)
    {
      v62 = 0;
    }

    v63 = v12;
    do
    {
      v64 = *v61++;
      v56[++v60] = (v64 + v62) >> v58;
      --v63;
    }

    while (v63);
  }

  v65 = v60 + 2;
  v56[v60 + 1] = v57;
  v66 = ((2 * v12 + 17) & 0xFFFFFFF0) - 2 * v12 - 2;
  bzero(&v56[v60 + 2], v66);
  v67 = v65 + (v66 >> 1);
  if (v14)
  {
    v68 = v85;
    v69 = v14;
    do
    {
      v70 = *v68++;
      v71 = v67 + 1;
      v56[v67++] = v70;
      --v69;
    }

    while (v69);
  }

  else
  {
    v71 = v65 + (v66 >> 1);
  }

  bzero(&v56[v71], ((2 * v14 + 27) & 0xFFFFFFF0) - 2 * v14 - 12);
  v72 = &v56[v71 + ((((2 * v14 + 27) & 0xFFFFFFF0) - 2 * v14 - 12) >> 1)];
  if (a6)
  {
    v73 = *(v72 + 2);
  }

  else
  {
    v74 = DgnLog(v31);
    v73 = eround(v74, 10);
  }

  *v72 = ((1.0 / (1 << v59) * v51 - DgnLog(25.1327412) * v12 - v73) * 0.5 + 0.5);
  if ((a6 & 1) == 0)
  {
    *(v72 + 2) = v73;
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(&v81);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v83);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v85);
}

void sub_2626E3CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  _Unwind_Resume(a1);
}

unint64_t PelMgr::unpackFloatRawMixtureComponent(unint64_t result, float *a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = *(result + 132);
  v9 = *(result + 152);
  v10 = *(a3 + 12);
  if (v8 > v10)
  {
    result = DgnPrimArray<unsigned int>::reallocElts(a3, v8 - v10, 0);
  }

  *(a3 + 8) = v8;
  v11 = *(a4 + 12);
  if (v9 > v11)
  {
    result = DgnPrimArray<unsigned int>::reallocElts(a4, v9 - v11, 0);
  }

  *(a4 + 8) = v9;
  if (v8)
  {
    v12 = *a3;
    v13 = v8;
    v14 = a2;
    do
    {
      v15 = *v14++;
      *v12++ = (v15 + 0.5);
      --v13;
    }

    while (v13);
  }

  if (v9)
  {
    v16 = 2.0 / *(v7 + 496) * (1 << *(v7 + 164));
    v17 = 2 * v8;
    v18 = *a4;
    do
    {
      v19 = a2[v17++];
      v20 = v16 * v19;
      if (v20 < 0.0)
      {
        v21 = -0.5;
      }

      else
      {
        v21 = 0.5;
      }

      *v18++ = (v20 + v21);
      --v9;
    }

    while (v9);
  }

  return result;
}

unint64_t PelMgr::unpackPackedIntRawMixtureComponent(unint64_t result, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = *(result + 132);
  v9 = *(result + 152);
  v10 = *(a3 + 12);
  if (v8 > v10)
  {
    result = DgnPrimArray<unsigned int>::reallocElts(a3, v8 - v10, 0);
  }

  *(a3 + 8) = v8;
  v11 = *(a4 + 12);
  if (v9 > v11)
  {
    result = DgnPrimArray<unsigned int>::reallocElts(a4, v9 - v11, 0);
  }

  *(a4 + 8) = v9;
  if (v8)
  {
    v12 = *a3;
    v13 = v8;
    v14 = a2;
    do
    {
      v15 = *v14++;
      *v12++ = v15;
      --v13;
    }

    while (v13);
  }

  if (v9)
  {
    v16 = &a2[2 * v8 + 2 + 2 * ((((((v8 + 1) & 0xFFFFFFFE) + 17) & 0xFFFFFFF0) - ((v8 + 1) & 0xFFFFFFFE) - 2) >> 1) + ((v8 + 1) & 0xFFFFFFFE)];
    v18 = *v16;
    v17 = (v16 + 2);
    v19 = *(v7 + 164) - v18;
    v20 = (((2 * v8 + 17) & 0xFFFFFFF0) - 2 * v8 - 2) >> 1;
    v21 = *a4;
    do
    {
      *v21++ = v17[v20++] << v19;
      --v9;
    }

    while (v9);
  }

  return result;
}

void PelMgr::unpackFloatRawMixtureComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 132);
  v9 = *(a3 + 12);
  if (v8 > v9)
  {
    DgnPrimArray<unsigned int>::reallocElts(a3, v8 - v9, 0);
  }

  *(a3 + 8) = v8;
  v10 = *(a4 + 12);
  if (v8 <= v10)
  {
    *(a4 + 8) = v8;
    if (!v8)
    {
      return;
    }
  }

  else
  {
    DgnPrimArray<unsigned int>::reallocElts(a4, v8 - v10, 0);
    *(a4 + 8) = v8;
  }

  v11 = 0;
  v12 = 0;
  v13 = vcvtd_n_f64_u32(*(a1 + 128), 3uLL);
  do
  {
    v14 = v12 + 1;
    v15 = *(a2 + 4 * v12);
    v12 += 2;
    v16 = DgnSqrt(*(a1 + 496) / (*(a2 + 4 * v14) * 3.14159265));
    if (v16 <= 31.875)
    {
      v17 = v16;
    }

    else
    {
      v17 = 31.875;
    }

    if (v16 >= v13)
    {
      v18 = v17;
    }

    else
    {
      v18 = v13;
    }

    *(*a3 + 4 * v11) = (v15 + 0.5);
    *(*a4 + 4 * v11++) = (v18 * 8.0 + 0.5);
  }

  while (v8 != v11);
}

unint64_t PelMgr::unpackMulTableRawMixtureComponent(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = *(result + 132);
  v9 = *(a3 + 12);
  if (v8 > v9)
  {
    result = DgnPrimArray<unsigned int>::reallocElts(a3, v8 - v9, 0);
  }

  *(a3 + 8) = v8;
  v10 = *(a4 + 12);
  if (v8 <= v10)
  {
    *(a4 + 8) = v8;
    if (!v8)
    {
      return result;
    }
  }

  else
  {
    DgnPrimArray<unsigned int>::reallocElts(a4, v8 - v10, 0);
    *(a4 + 8) = v8;
  }

  v11 = 0;
  v12 = *a4;
  do
  {
    v13 = *v7;
    v14 = *a3;
    result = MulTable::unpermute(*v7, *(a2 + 2 * v11));
    *(v14 + 4 * v11) = -result;
    *(v12 + 4 * v11) = *(*(v13 + 11) + 2 * (result >> 9));
    v12 = *a4;
    v15 = *(*a4 + 4 * v11);
    if (v15 >= 0xFF)
    {
      v16 = 255;
    }

    else
    {
      v16 = *(*a4 + 4 * v11);
    }

    if (*(v7 + 128) <= v15)
    {
      v17 = v16;
    }

    else
    {
      v17 = *(v7 + 128);
    }

    *(v12 + 4 * v11++) = v17;
  }

  while (v8 != v11);
  return result;
}

unint64_t PelMgr::unpackPackedIntRawMixtureComponent(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = *(result + 132);
  v9 = *(a3 + 12);
  if (v8 > v9)
  {
    result = DgnPrimArray<unsigned int>::reallocElts(a3, v8 - v9, 0);
  }

  *(a3 + 8) = v8;
  v10 = *(a4 + 12);
  if (v8 <= v10)
  {
    *(a4 + 8) = v8;
    if (!v8)
    {
      return result;
    }
  }

  else
  {
    result = DgnPrimArray<unsigned int>::reallocElts(a4, v8 - v10, 0);
    *(a4 + 8) = v8;
  }

  v11 = *a3;
  v12 = *a4;
  v13 = *(*(v7 + 488) + 40);
  v14 = 1;
  do
  {
    *v11++ = *(a2 + v14 - 1);
    *v12++ = *(v13 + 2 * *(a2 + v14));
    v14 += 2;
    --v8;
  }

  while (v8);
  return result;
}

unint64_t PelMgr::unpackQuantPerDimRawMixtureComponent(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = *(result + 132);
  v9 = *(a3 + 12);
  if (v8 > v9)
  {
    result = DgnPrimArray<unsigned int>::reallocElts(a3, v8 - v9, 0);
  }

  *(a3 + 8) = v8;
  v10 = *(a4 + 12);
  if (v8 <= v10)
  {
    *(a4 + 8) = v8;
    if (!v8)
    {
      return result;
    }
  }

  else
  {
    result = DgnPrimArray<unsigned int>::reallocElts(a4, v8 - v10, 0);
    *(a4 + 8) = v8;
  }

  v11 = 0;
  v12 = *a3;
  v13 = *a4;
  v14 = *(v7 + 48);
  v15 = *(v7 + 64);
  do
  {
    v16 = *(a2 + v11);
    *(v12 + 4 * v11) = *(v14 + (v11 << *(v7 + 32)) + (v16 >> *(v7 + 36)));
    *(v13 + 4 * v11) = *(v15 + (v11 << *(v7 + 36)) + (*(v7 + 40) & v16));
    ++v11;
  }

  while (v8 != v11);
  return result;
}

void *DgnArray<AlignedArray<unsigned char>>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 24 * v2 - 24;
    do
    {
      DgnPrimArray<unsigned int>::~DgnPrimArray(*a1 + v3);
      v3 -= 24;
    }

    while (v3 != -24);
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

void *DgnArray<FrameDecisionTreeHyperplane>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 24 * v2 - 16;
    do
    {
      DgnPrimArray<unsigned int>::~DgnPrimArray(*a1 + v3);
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

void FrameDecisionTree::~FrameDecisionTree(FrameDecisionTree *this)
{
  DgnArray<FrameDecisionTreeHyperplane>::releaseAll(this + 16);

  DgnIArray<Utterance *>::~DgnIArray(this);
}

void PackingPars::~PackingPars(PackingPars *this)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 72);
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 56);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 40);
}

uint64_t AlignedArray<unsigned char>::writeObject(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  if (v6 <= *(a1 + 12))
  {
    v6 -= 15;
  }

  v10 = v6;
  writeObject(a2, &v10, a3);
  v7 = *(a1 + 8);
  if (v7 <= *(a1 + 12))
  {
    v8 = v7 - 15;
  }

  else
  {
    v8 = v7;
  }

  return writeObjectArray(a2, (*a1 + *(a1 + 16)), v8, a3);
}

uint64_t AlignedArray<short>::writeObject(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  if (v6 <= *(a1 + 12))
  {
    v6 -= 7;
  }

  v10 = v6;
  writeObject(a2, &v10, a3);
  v7 = *(a1 + 8);
  if (v7 <= *(a1 + 12))
  {
    v8 = v7 - 7;
  }

  else
  {
    v8 = *(a1 + 8);
  }

  return writeObjectArray(a2, (*a1 + 2 * *(a1 + 16)), v8, a3);
}

void *AlignedArray<unsigned char>::writeSharedObject(uint64_t a1, DgnSharedMemStream *a2, _DWORD *a3)
{
  v5 = *(a1 + 8);
  if (v5 <= *(a1 + 12))
  {
    v5 -= 15;
  }

  v14 = v5;
  result = writeObject(a2, &v14, a3);
  if (v14)
  {
    result = DgnSharedMemStream::writeSharedBytes(a2, (*a1 + *(a1 + 16)), v14, v7, v8, v9, v10, v11);
    if (result)
    {
      v12 = result;
      result = *a1;
      if (*a1)
      {
        result = MemChunkFree(result, 0);
      }

      v13 = v14;
      *(a1 + 12) = 0;
      *(a1 + 16) = 0;
      *(a1 + 8) = v13;
      *a1 = v12;
    }
  }

  return result;
}

uint64_t Node::updateNodeOneBest1(Node *this, int a2, int a3, int a4, PelScoreCache **a5, HmmNet *a6)
{
  ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(a5[3], *(this + 11), a2, a4);
  if (ScoreAllowBackoff_updateNodeInSequence <= a3)
  {
    v11 = ScoreAllowBackoff_updateNodeInSequence;
    Node::updateScore<false>(this, ScoreAllowBackoff_updateNodeInSequence);
    if (*(a5 + 56) >= v11)
    {
      BestData::newOrTiedBestNode((a5 + 24), v11, this, a6);
    }

    v12 = a5 + 4 * (v11 + 5000);
    ++*(v12 + 37848);
    ++*(a5 + 75617);
    ++*(v12 + 80);
    ++*(a5 + 75616);
  }

  else
  {
    *(this + 2) = 1310740000;
    return 20000;
  }

  return v11;
}

uint64_t Node::updateScore<false>(uint64_t result, __int16 a2)
{
  v2 = *(result + 12);
  v3 = *(result + 20);
  v4 = ((v2 >> 8) - v3) << 8;
  v5 = v4 | v3;
  v6 = v4 - ((v4 >> 31) & (v4 >> 8));
  if (v2 >> 8 >= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  *(result + 4) += 2 * *(result + 12) - v3;
  *(result + 12) = v7;
  if (v2 >> 8 >= 1)
  {
    v8 = (v2 >> 8) + a2;
  }

  else
  {
    v8 = a2;
  }

  *(result + 8) = v8;
  *(result + 10) = a2;
  return result;
}

uint64_t Node::thresholdNode(Node *this, int a2)
{
  if (*(this + 5) <= a2)
  {
    if (*(this + 4) > a2)
    {
      *(this + 4) = 20000;
    }

    return 1;
  }

  else
  {
    result = 0;
    *(this + 2) = 1310740000;
  }

  return result;
}

uint64_t Node::scoreNodeActiveCurrActiveSeed(uint64_t a1, uint64_t a2, int a3, int a4, _BYTE *a5, PelScoreCache **a6, int a7, int a8, HmmNet *a9)
{
  v9 = *(a1 + 12) + *(a1 + 10);
  v10 = a8 + a7 + *(a2 + 8) + *(a1 + 21);
  if (v10 < v9)
  {
    v11 = *(a1 + 16);
    if (v11 >= 0)
    {
      v12 = v11 << 8;
    }

    else
    {
      v12 = 255 * v11;
    }

    *(a1 + 12) = v12;
    *a1 = *a2;
    *(a1 + 4) = *(a2 + 4) + *(a1 + 18);
    *a5 = 1;
    v9 = v10;
  }

  return Node::updateNodeOneBest1(a1, v9, a3, a4, a6, a9);
}

uint64_t Node::scoreNodeOneBest(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, _BYTE *a7, PelScoreCache **a8, HmmNet *a9, _DWORD *a10, HmmNet *a11)
{
  v11 = *(a1 + 10);
  if (v11 <= a4)
  {
    ++*a10;
    if (a3)
    {
      return Node::scoreNodeActiveCurrActiveSeed(a1, a2, a5, a6, a7, a8, a9, SHIDWORD(a9), a11);
    }

    else
    {
      return Node::updateNodeOneBest1(a1, *(a1 + 12) + v11, a5, a6, a8, a11);
    }
  }

  else
  {
    *a7 = a3;
    if (a3)
    {
      ++*a10;
      return Node::scoreNodeInactiveCurrActiveSeed(a1, a2, a5, a6, a8, a9, SHIDWORD(a9), a11);
    }

    else
    {
      return 20000;
    }
  }
}

uint64_t Node::scoreNodeSuccessors(const Node *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8, int a9, int a10, _DWORD *a11, _DWORD *a12)
{
  v12 = a1;
  if (*(a2 + 8) == 20000)
  {
    v13 = -2;
  }

  else
  {
    v13 = *a2;
  }

  v41 = a8 + 299008;
  if (a7 >= 1)
  {
    v14 = 0;
    v45 = 0;
    v42 = a4;
    if (a3)
    {
      v15 = *(a2 + 8);
    }

    else
    {
      v15 = 20000;
    }

    if (a3)
    {
      v16 = 32;
    }

    else
    {
      v16 = 0;
    }

    v17 = *(a2 + 4);
    v40 = a8 + 151392;
    v18 = a7 + 1;
    v19 = a1;
    v20 = 20000;
    v21 = a1;
    while (1)
    {
      v22 = *(v19 + 10);
      if (v22 <= a4)
      {
        v24 = *(v19 + 8);
        if (v24 <= a4)
        {
          v25 = 17;
        }

        else
        {
          LOWORD(v24) = 20000;
          *(v19 + 8) = 20000;
          v25 = 1;
        }

        ++v45;
        v16 |= v25;
        v23 = v24;
      }

      else
      {
        *(v19 + 8) = 1310740000;
        v23 = 20000;
        v22 = 20000;
      }

      if ((v16 & 0x61) != 0)
      {
        break;
      }

      v12 = v21;
      v34 = v20;
LABEL_31:
      --v18;
      v19 += 24;
      if (v18 <= 1)
      {
        goto LABEL_41;
      }
    }

    v26 = *(v19 + 4);
    v46 = *v19;
    v27 = *(v19 + 12) + v22;
    v28 = a10 + a9 + v15 + *(v19 + 21);
    if (v28 < v27)
    {
      v29 = v17 + *(v19 + 18);
      *v19 = v13;
      *(v19 + 4) = v29;
      v30 = *(v19 + 16);
      if (v30 >= 0)
      {
        v31 = v30 << 8;
      }

      else
      {
        v31 = 255 * v30;
      }

      *(v19 + 12) = v31;
      v27 = v28;
    }

    v32 = a8;
    ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(a8 + 24), *(v19 + 22), v27, a6);
    if (ScoreAllowBackoff_updateNodeInSequence <= a5)
    {
      v34 = ScoreAllowBackoff_updateNodeInSequence;
      ++*(v40 + 4 * (ScoreAllowBackoff_updateNodeInSequence + 5000));
      ++*(v41 + 3460);
      Node::updateScore<false>(v19, ScoreAllowBackoff_updateNodeInSequence);
      if (v34 <= v20)
      {
        v12 = v19;
        a8 = v32;
        if (v34 >= v20)
        {
          v35 = *(v19 + 22);
          v36 = v21[11];
          v37 = v35 >= v36;
          if (v35 < v36)
          {
            v12 = v19;
          }

          else
          {
            v12 = v21;
          }

          if (v37)
          {
            v34 = v20;
          }

          else
          {
            v34 = v34;
          }
        }

        goto LABEL_29;
      }
    }

    else
    {
      *(v19 + 8) = 1310740000;
    }

    v12 = v21;
    v34 = v20;
    a8 = v32;
LABEL_29:
    ++v14;
    if (v18 == 2)
    {
      goto LABEL_41;
    }

    v17 = v26;
    v13 = v46;
    v15 = v23;
    v20 = v34;
    v21 = v12;
    v16 = (2 * v16) & 0x22;
    a4 = v42;
    goto LABEL_31;
  }

  v45 = 0;
  v14 = 0;
  v34 = 20000;
LABEL_41:
  *a11 += v14;
  *a12 += v45;
  if (v34 != 20000)
  {
    if (*(a8 + 224) >= v34)
    {
      v38 = a8;
      BestData::newOrTiedBestNode(a8 + 192, v34, v12, 0);
      a8 = v38;
    }

    ++*(a8 + 4 * (v34 + 5000) + 320);
    ++*(v41 + 3456);
  }

  return v34;
}

uint64_t Node::scoreNodeSuccessorsSkipOne(const Node *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8, int a9, int a10, _DWORD *a11, _DWORD *a12)
{
  v12 = a1;
  if (*(a2 + 8) == 20000)
  {
    v13 = -2;
  }

  else
  {
    v13 = *a2;
  }

  v44 = a8 + 299008;
  if (a7 >= 1)
  {
    v48 = 0;
    v14 = 0;
    v15 = (a10 + a9);
    if (a3)
    {
      v16 = *(a2 + 8);
    }

    else
    {
      v16 = 20000;
    }

    if (a3)
    {
      v17 = 32;
    }

    else
    {
      v17 = 0;
    }

    v18 = *(a2 + 4);
    v43 = a8 + 151392;
    v19 = a7 + 1;
    v20 = a1;
    v21 = v16;
    v22 = v13;
    v23 = 20000;
    v24 = v18;
    v45 = a4;
    while (1)
    {
      v25 = *(v20 + 10);
      if (v25 <= a4)
      {
        v27 = *(v20 + 8);
        if (v27 <= a4)
        {
          v28 = 17;
        }

        else
        {
          LOWORD(v27) = 20000;
          *(v20 + 8) = 20000;
          v28 = 1;
        }

        ++v48;
        v17 |= v28;
        v26 = v27;
      }

      else
      {
        *(v20 + 8) = 1310740000;
        v26 = 20000;
        v25 = 20000;
      }

      if ((v17 & 0x61) != 0)
      {
        break;
      }

      v37 = v23;
      v12 = a1;
LABEL_37:
      --v19;
      v20 += 24;
      if (v19 <= 1)
      {
        goto LABEL_47;
      }
    }

    v53 = v17;
    v54 = v14;
    v49 = a1;
    v50 = v21;
    v51 = v24;
    v52 = v22;
    v22 = *v20;
    v24 = *(v20 + 4);
    v29 = *(v20 + 18);
    v30 = *(v20 + 12) + v25;
    v31 = v15;
    v32 = v16 + v15 + *(v20 + 21);
    if (v32 < v30)
    {
      *v20 = v13;
      *(v20 + 4) = v18 + v29;
      v33 = *(v20 + 16);
      if (v33 >= 0)
      {
        v34 = v33 << 8;
      }

      else
      {
        v34 = 255 * v33;
      }

      *(v20 + 12) = v34;
      v30 = v32;
    }

    v35 = a8;
    ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(a8 + 24), *(v20 + 22), v30, a6);
    if (ScoreAllowBackoff_updateNodeInSequence <= a5)
    {
      v37 = ScoreAllowBackoff_updateNodeInSequence;
      ++*(v43 + 4 * (ScoreAllowBackoff_updateNodeInSequence + 5000));
      ++*(v44 + 3460);
      Node::updateScore<false>(v20, ScoreAllowBackoff_updateNodeInSequence);
      if (v37 <= v23)
      {
        v12 = v20;
        a8 = v35;
        v15 = v31;
        v38 = v54;
        if (v37 >= v23)
        {
          v39 = *(v20 + 22);
          v40 = *(v49 + 11);
          if (v39 < v40)
          {
            v37 = v37;
          }

          else
          {
            v37 = v23;
          }

          if (v39 < v40)
          {
            v12 = v20;
          }

          else
          {
            v12 = v49;
          }
        }

        goto LABEL_30;
      }

      v37 = v23;
    }

    else
    {
      *(v20 + 8) = 1310740000;
      v37 = v23;
    }

    v12 = v49;
    a8 = v35;
    v15 = v31;
    v38 = v54;
LABEL_30:
    v14 = v38 + 1;
    if (v19 == 2)
    {
      goto LABEL_47;
    }

    v16 = v50 + v15 + v29;
    if (v16 >= v26)
    {
      v18 = v24;
    }

    else
    {
      v18 = v51 + v29;
    }

    v13 = v52;
    if (v16 >= v26)
    {
      v13 = v22;
      v16 = v26;
    }

    v17 = (2 * v53) & 0x66;
    v21 = v26;
    a1 = v12;
    v23 = v37;
    a4 = v45;
    goto LABEL_37;
  }

  v14 = 0;
  v48 = 0;
  v37 = 20000;
LABEL_47:
  *a11 += v14;
  *a12 += v48;
  if (v37 != 20000)
  {
    if (*(a8 + 224) >= v37)
    {
      v41 = a8;
      BestData::newOrTiedBestNode(a8 + 192, v37, v12, 0);
      a8 = v41;
    }

    ++*(a8 + 4 * (v37 + 5000) + 320);
    ++*(v44 + 3456);
  }

  return v37;
}

uint64_t Node::scoreNodeWithPattern(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, int a7, int a8, _BYTE *a9, HmmNet *a10)
{
  v14 = *(a1 + 12) + *(a1 + 10);
  if (a3 != 1)
  {
    v15 = a8 + a7 + *(a2 + 8) + *(a1 + 21);
    if (a3 == 32 || v15 < v14)
    {
      v16 = *(a1 + 16);
      if (v16 >= 0)
      {
        v17 = v16 << 8;
      }

      else
      {
        v17 = 255 * v16;
      }

      *(a1 + 12) = v17;
      v18 = *(a2 + 4) + *(a1 + 18);
      *a1 = *a2;
      *(a1 + 4) = v18;
      *a9 = 1;
      v14 = v15;
    }
  }

  ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(a6 + 24), *(a1 + 22), v14, a5);
  if (ScoreAllowBackoff_updateNodeInSequence <= a4)
  {
    v20 = ScoreAllowBackoff_updateNodeInSequence;
    Node::updateScore<false>(a1, ScoreAllowBackoff_updateNodeInSequence);
    if (*(a6 + 224) >= v20)
    {
      BestData::newOrTiedBestNode(a6 + 192, v20, a1, a10);
    }

    v21 = a6 + 4 * (v20 + 5000);
    ++*(v21 + 151392);
    ++*(a6 + 302468);
    ++*(v21 + 320);
    ++*(a6 + 302464);
  }

  else
  {
    *(a1 + 8) = 1310740000;
    return 20000;
  }

  return v20;
}

uint64_t Node::scoreNodeSuccessorsSkipMany(const Node *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8, int a9, int a10, _DWORD *a11, _DWORD *a12)
{
  v12 = a1;
  if (*(a2 + 8) == 20000)
  {
    v13 = -2;
  }

  else
  {
    v13 = *a2;
  }

  v45 = a8 + 299008;
  if (a7 >= 1)
  {
    v49 = 0;
    v14 = 0;
    v15 = (a10 + a9);
    if (a3)
    {
      v16 = *(a2 + 8);
    }

    else
    {
      v16 = 20000;
    }

    if (a3)
    {
      v17 = 32;
    }

    else
    {
      v17 = 0;
    }

    v18 = *(a2 + 4);
    v44 = a8 + 151392;
    v19 = a7 + 1;
    v20 = a1;
    v21 = 20000;
    v46 = a4;
    while (1)
    {
      v22 = *(v20 + 10);
      if (v22 <= a4)
      {
        v24 = *(v20 + 8);
        if (v24 <= a4)
        {
          v25 = 17;
        }

        else
        {
          LOWORD(v24) = 20000;
          *(v20 + 8) = 20000;
          v25 = 1;
        }

        ++v49;
        v17 |= v25;
        v23 = v24;
      }

      else
      {
        *(v20 + 8) = 1310740000;
        v23 = 20000;
        v22 = 20000;
      }

      if ((v17 & 0x61) != 0)
      {
        break;
      }

      v34 = v21;
      v12 = a1;
LABEL_38:
      --v19;
      v20 += 24;
      if (v19 <= 1)
      {
        goto LABEL_48;
      }
    }

    v50 = a1;
    v54 = v16;
    v55 = v14;
    v52 = *v20;
    v53 = v17;
    v51 = *(v20 + 4);
    v26 = *(v20 + 18);
    v27 = *(v20 + 12) + v22;
    v28 = v15;
    v29 = v16 + v15 + *(v20 + 21);
    if (v29 < v27)
    {
      *v20 = v13;
      *(v20 + 4) = v18 + v26;
      v30 = *(v20 + 16);
      if (v30 >= 0)
      {
        v31 = v30 << 8;
      }

      else
      {
        v31 = 255 * v30;
      }

      *(v20 + 12) = v31;
      v27 = v29;
    }

    v32 = a8;
    ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(a8 + 24), *(v20 + 22), v27, a6);
    if (ScoreAllowBackoff_updateNodeInSequence <= a5)
    {
      v34 = ScoreAllowBackoff_updateNodeInSequence;
      ++*(v44 + 4 * (ScoreAllowBackoff_updateNodeInSequence + 5000));
      ++*(v45 + 3460);
      Node::updateScore<false>(v20, ScoreAllowBackoff_updateNodeInSequence);
      v35 = v21;
      v36 = v34 < v21;
      if (v34 <= v21)
      {
        v12 = v20;
        a8 = v32;
        v15 = v28;
        v38 = v54;
        v37 = v55;
        if (!v36)
        {
          v40 = *(v20 + 22);
          v41 = *(v50 + 11);
          if (v40 < v41)
          {
            v34 = v34;
          }

          else
          {
            v34 = v35;
          }

          if (v40 < v41)
          {
            v12 = v20;
          }

          else
          {
            v12 = v50;
          }
        }

        goto LABEL_30;
      }

      v34 = v21;
    }

    else
    {
      *(v20 + 8) = 1310740000;
      v34 = v21;
    }

    v12 = v50;
    a8 = v32;
    v15 = v28;
    v38 = v54;
    v37 = v55;
LABEL_30:
    v14 = v37 + 1;
    if (v19 == 2)
    {
      goto LABEL_48;
    }

    v39 = v38 + v15 + v26;
    if (v39 >= v23)
    {
      v18 = v51;
    }

    else
    {
      v18 += v26;
    }

    if (v39 < v23)
    {
      v16 = v38 + v15 + v26;
    }

    else
    {
      v13 = v52;
      v16 = v23;
    }

    v17 = (2 * v53) & 0x66 | v53 & 0x40;
    a1 = v12;
    v21 = v34;
    a4 = v46;
    goto LABEL_38;
  }

  v14 = 0;
  v49 = 0;
  v34 = 20000;
LABEL_48:
  *a11 += v14;
  *a12 += v49;
  if (v34 != 20000)
  {
    if (*(a8 + 224) >= v34)
    {
      v42 = a8;
      BestData::newOrTiedBestNode(a8 + 192, v34, v12, 0);
      a8 = v42;
    }

    ++*(a8 + 4 * (v34 + 5000) + 320);
    ++*(v45 + 3456);
  }

  return v34;
}

uint64_t Node::scoreNodeSuccessorsNBest(unsigned __int16 *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8, int a9, int a10, _DWORD *a11, _DWORD *a12)
{
  v46 = a1;
  v13 = *(a2 + 8);
  if (v13 == 20000)
  {
    v14 = -2;
  }

  else
  {
    v14 = *a2;
  }

  v48 = a8 + 299008;
  if (a7 >= 1)
  {
    v55 = 0;
    v15 = 0;
    v50 = a4;
    if (a3)
    {
      v16 = 32;
    }

    else
    {
      v13 = 20000;
      v16 = 0;
    }

    v17 = *(a2 + 4);
    v47 = a8 + 151392;
    v18 = a7 + 1;
    v19 = a1;
    v49 = 20000;
    while (1)
    {
      v20 = v19[5];
      if (v20 <= a4)
      {
        v22 = v19[4];
        if (v22 <= a4)
        {
          v23 = 17;
        }

        else
        {
          LOWORD(v22) = 20000;
          v19[4] = 20000;
          v23 = 1;
        }

        ++v55;
        v16 |= v23;
        v21 = v22;
      }

      else
      {
        *(v19 + 2) = 1310740000;
        v21 = 20000;
        v20 = 20000;
      }

      if ((v16 & 0x61) != 0)
      {
        v24 = *v19;
        v25 = *(v19 + 1);
        v26 = *(v19 + 12) + v20;
        v27 = a10 + a9 + v13 + *(v19 + 21);
        v28 = v27 - v26;
        if (v27 - v26 < 0)
        {
          v28 = v26 - v27;
          *v19 = v14;
          *(v19 + 1) = v17;
          v29 = v19[8];
          if (v29 >= 0)
          {
            v30 = v29 << 8;
          }

          else
          {
            v30 = 255 * v29;
          }

          *(v19 + 3) = v30;
          v26 = v27;
          v53 = v25;
          v54 = v24;
        }

        else
        {
          v53 = v17;
          v54 = v14;
        }

        ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(a8 + 24), v19[11], v26, a6);
        if (a5 >= ScoreAllowBackoff_updateNodeInSequence)
        {
          v32 = ScoreAllowBackoff_updateNodeInSequence;
          ++*(v47 + 4 * (ScoreAllowBackoff_updateNodeInSequence + 5000));
          ++*(v48 + 3460);
          v33 = *(v19 + 3) >> 8;
          v34 = *(v19 + 20);
          v35 = (v33 - v34) << 8;
          v36 = v35 | v34;
          v37 = v35 - ((v35 >> 31) & (v35 >> 8));
          v38 = v33 + ScoreAllowBackoff_updateNodeInSequence;
          v39 = v33 < 1;
          if (v33 >= 1)
          {
            v40 = v37;
          }

          else
          {
            v40 = v36;
          }

          *(v19 + 3) = v40;
          if (v39)
          {
            v41 = ScoreAllowBackoff_updateNodeInSequence;
          }

          else
          {
            v41 = v38;
          }

          v19[4] = v41;
          v19[5] = ScoreAllowBackoff_updateNodeInSequence;
          if (v28 <= a5 - ScoreAllowBackoff_updateNodeInSequence)
          {
            v45 = *(v19 + 1);
            v56 = 0;
            v42 = DgnIdFactory<NetNBestTraceNoTime<unsigned int>,1024u>::createRawData(a8 + 302936, &v56);
            v43 = v56;
            *(v56 + 4) = v45;
            *(v43 + 8) = v53;
            *v43 = v54;
            *(v43 + 12) = v28;
            *(v19 + 1) = v42;
          }

          if (v32 <= v49 && (v32 < v49 || v19[11] < v46[11]))
          {
            v46 = v19;
            v49 = v32;
          }
        }

        else
        {
          *(v19 + 2) = 1310740000;
        }

        ++v15;
        if (v18 == 2)
        {
          goto LABEL_41;
        }

        v13 = v21;
        v14 = v24;
        v17 = v25;
        v16 = (2 * v16) & 0x22;
        a4 = v50;
      }

      --v18;
      v19 += 12;
      if (v18 <= 1)
      {
        goto LABEL_41;
      }
    }
  }

  v15 = 0;
  v55 = 0;
  v49 = 20000;
LABEL_41:
  *a11 += v15;
  *a12 += v55;
  if (v49 != 20000)
  {
    if (*(a8 + 224) >= v49)
    {
      BestData::newOrTiedBestNode(a8 + 192, v49, v46, 0);
    }

    ++*(a8 + 4 * (v49 + 5000) + 320);
    ++*(v48 + 3456);
  }

  return v49;
}

uint64_t Node::scoreNodeSuccessorsSkipOneNBest(unsigned __int16 *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8, int a9, int a10, _DWORD *a11, _DWORD *a12)
{
  if (*(a2 + 8) == 20000)
  {
    v13 = -2;
  }

  else
  {
    v13 = *a2;
  }

  v54 = a8 + 299008;
  if (a7 >= 1)
  {
    v61 = 0;
    v14 = 0;
    v63 = a10 + a9;
    if (a3)
    {
      v15 = *(a2 + 8);
    }

    else
    {
      v15 = 20000;
    }

    if (a3)
    {
      v16 = 32;
    }

    else
    {
      v16 = 0;
    }

    v17 = *(a2 + 4);
    v53 = a8 + 151392;
    v18 = a7 + 1;
    v19 = a1;
    v20 = v15;
    v21 = v13;
    v22 = v17;
    v55 = 20000;
    v23 = a4;
    while (1)
    {
      v24 = v19[5];
      if (v24 <= v23)
      {
        v26 = v19[4];
        if (v26 <= v23)
        {
          v27 = 17;
        }

        else
        {
          LOWORD(v26) = 20000;
          v19[4] = 20000;
          v27 = 1;
        }

        ++v61;
        v16 |= v27;
        v25 = v26;
      }

      else
      {
        *(v19 + 2) = 1310740000;
        v25 = 20000;
        v24 = 20000;
      }

      if ((v16 & 0x61) != 0)
      {
        v64 = v22;
        v66 = v21;
        v28 = *v19;
        v22 = *(v19 + 1);
        v29 = *(v19 + 12) + v24;
        v30 = v15 + v63 + *(v19 + 21);
        v31 = v30 - v29;
        v65 = *v19;
        v62 = v16;
        v32 = v20;
        if (v30 - v29 < 0)
        {
          v31 = v29 - v30;
          *v19 = v13;
          *(v19 + 1) = v17;
          v33 = v19[8];
          if (v33 >= 0)
          {
            v34 = v33 << 8;
          }

          else
          {
            v34 = 255 * v33;
          }

          *(v19 + 3) = v34;
          v29 = v30;
          v58 = v28;
          v59 = v22;
        }

        else
        {
          v58 = v13;
          v59 = v17;
        }

        v35 = v19[9];
        ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(a8 + 24), v19[11], v29, a6);
        if (a5 >= ScoreAllowBackoff_updateNodeInSequence)
        {
          v38 = ScoreAllowBackoff_updateNodeInSequence;
          ++*(v53 + 4 * (ScoreAllowBackoff_updateNodeInSequence + 5000));
          ++*(v54 + 3460);
          v39 = *(v19 + 3) >> 8;
          v40 = *(v19 + 20);
          v41 = (v39 - v40) << 8;
          if (v39 < 1)
          {
            v42 = v41 | v40;
            v43 = ScoreAllowBackoff_updateNodeInSequence;
          }

          else
          {
            v42 = v41 - ((v41 >> 31) & (v41 >> 8));
            v43 = v39 + ScoreAllowBackoff_updateNodeInSequence;
          }

          v37 = v65;
          *(v19 + 3) = v42;
          v19[4] = v43;
          v19[5] = ScoreAllowBackoff_updateNodeInSequence;
          if (v31 <= a5 - ScoreAllowBackoff_updateNodeInSequence)
          {
            v51 = *(v19 + 1);
            v67 = 0;
            v44 = DgnIdFactory<NetNBestTraceNoTime<unsigned int>,1024u>::createRawData(a8 + 302936, &v67);
            v37 = v65;
            v45 = v67;
            *(v67 + 4) = v51;
            *(v45 + 8) = v59;
            *v45 = v58;
            *(v45 + 12) = v31;
            *(v19 + 1) = v44;
          }

          v23 = a4;
          if (v38 <= v55 && (v38 < v55 || v19[11] < a1[11]))
          {
            v55 = v38;
            a1 = v19;
          }
        }

        else
        {
          *(v19 + 2) = 1310740000;
          v23 = a4;
          v37 = v65;
        }

        ++v14;
        if (v18 == 2)
        {
          goto LABEL_46;
        }

        v15 = v32 + v63 + v35;
        v46 = v15 - v25;
        if (v15 - v25 < 0)
        {
          v46 = v25 - v15;
          v17 = v64;
          v47 = v37;
          v64 = v22;
        }

        else
        {
          v17 = v22;
          v47 = v66;
          v66 = v37;
          v15 = v25;
        }

        if (v15 + v46 <= v23)
        {
          v67 = 0;
          v48 = v17;
          v17 = DgnIdFactory<NetNBestTraceNoTime<unsigned int>,1024u>::createRawData(a8 + 302936, &v67);
          v37 = v65;
          v23 = a4;
          v49 = v67;
          *(v67 + 4) = v48;
          *(v49 + 8) = v64;
          *v49 = v47;
          *(v49 + 12) = v46;
        }

        v13 = v66;
        v20 = v25;
        v21 = v37;
        v16 = (2 * v62) & 0x66;
      }

      --v18;
      v19 += 12;
      if (v18 <= 1)
      {
        goto LABEL_46;
      }
    }
  }

  v14 = 0;
  v61 = 0;
  v55 = 20000;
LABEL_46:
  *a11 += v14;
  *a12 += v61;
  if (v55 != 20000)
  {
    if (*(a8 + 224) >= v55)
    {
      BestData::newOrTiedBestNode(a8 + 192, v55, a1, 0);
    }

    ++*(a8 + 4 * (v55 + 5000) + 320);
    ++*(v54 + 3456);
  }

  return v55;
}

uint64_t Node::scoreNodeWithPatternNBest(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, uint64_t a7, int a8, int a9, _BYTE *a10, HmmNet *a11)
{
  if (a2)
  {
    v16 = *a2;
  }

  else
  {
    v16 = -2;
  }

  v17 = *(a1 + 12) + *(a1 + 10);
  if (a4 == 1)
  {
    v18 = -1;
  }

  else
  {
    v19 = a9 + a8 + *(a2 + 8) + *(a1 + 21);
    v18 = v19 - v17;
    if (a4 == 32)
    {
      v20 = -1;
    }

    else
    {
      v20 = v19 - v17;
    }

    if (v20 < 0)
    {
      v21 = *(a1 + 16);
      if (v21 >= 0)
      {
        v22 = v21 << 8;
      }

      else
      {
        v22 = 255 * v21;
      }

      *(a1 + 12) = v22;
      v16 = *a1;
      v23 = *(a1 + 4);
      v18 = -v20;
      *a1 = *a2;
      *(a1 + 4) = a3;
      *a10 = 1;
      v17 = v19;
      a3 = v23;
    }
  }

  ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(a7 + 24), *(a1 + 22), v17, a6);
  if (ScoreAllowBackoff_updateNodeInSequence <= a5)
  {
    v25 = ScoreAllowBackoff_updateNodeInSequence;
    v26 = *(a1 + 12) >> 8;
    v27 = *(a1 + 20);
    v28 = (v26 - v27) << 8;
    v29 = v28 | v27;
    v30 = v28 - ((v28 >> 31) & (v28 >> 8));
    v31 = v26 + ScoreAllowBackoff_updateNodeInSequence;
    v32 = v26 < 1;
    if (v26 >= 1)
    {
      v33 = v30;
    }

    else
    {
      v33 = v29;
    }

    *(a1 + 12) = v33;
    if (v32)
    {
      v34 = ScoreAllowBackoff_updateNodeInSequence;
    }

    else
    {
      v34 = v31;
    }

    *(a1 + 8) = v34;
    *(a1 + 10) = ScoreAllowBackoff_updateNodeInSequence;
    if (a4 == 33 && ScoreAllowBackoff_updateNodeInSequence + v18 <= a5)
    {
      v35 = *(a1 + 4);
      v40 = 0;
      v36 = DgnIdFactory<NetNBestTraceNoTime<unsigned int>,1024u>::createRawData(a7 + 302936, &v40);
      v37 = v40;
      *(v40 + 4) = v35;
      *(v37 + 8) = a3;
      *v37 = v16;
      *(v37 + 12) = v18;
      *(a1 + 4) = v36;
    }

    if (*(a7 + 224) >= v25)
    {
      BestData::newOrTiedBestNode(a7 + 192, v25, a1, a11);
    }

    v38 = a7 + 4 * (v25 + 5000);
    ++*(v38 + 151392);
    ++*(a7 + 302468);
    ++*(v38 + 320);
    ++*(a7 + 302464);
  }

  else
  {
    *(a1 + 8) = 1310740000;
    return 20000;
  }

  return v25;
}

uint64_t Node::scoreNodeSuccessorsSkipManyNBest(unsigned __int16 *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8, int a9, int a10, _DWORD *a11, _DWORD *a12)
{
  v12 = a8;
  v54 = a1;
  v13 = *(a2 + 8);
  if (v13 == 20000)
  {
    v14 = -2;
  }

  else
  {
    v14 = *a2;
  }

  v56 = a8 + 299008;
  if (a7 < 1)
  {
    v15 = 0;
    v64 = 0;
    v57 = 20000;
    goto LABEL_57;
  }

  v64 = 0;
  v15 = 0;
  v68 = a10 + a9;
  if (!a3)
  {
    v13 = 20000;
  }

  v69 = v13;
  if (a3)
  {
    v16 = 32;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(a2 + 4);
  v55 = a8 + 151392;
  v18 = a7 + 1;
  v19 = a1;
  v20 = v14;
  v21 = v17;
  v57 = 20000;
  v58 = a4;
  while (1)
  {
    v22 = v19[5];
    if (v22 <= a4)
    {
      v24 = v19[4];
      if (v24 <= a4)
      {
        v25 = 17;
      }

      else
      {
        LOWORD(v24) = 20000;
        v19[4] = 20000;
        v25 = 1;
      }

      ++v64;
      v16 |= v25;
      v23 = v24;
    }

    else
    {
      *(v19 + 2) = 1310740000;
      v23 = 20000;
      v22 = 20000;
    }

    if ((v16 & 0x61) != 0)
    {
      break;
    }

LABEL_53:
    --v18;
    v19 += 12;
    if (v18 <= 1)
    {
      goto LABEL_57;
    }
  }

  v65 = v21;
  v66 = v20;
  v27 = *v19;
  v26 = *(v19 + 1);
  v28 = *(v19 + 12) + v22;
  v29 = v69 + v68 + *(v19 + 21);
  v30 = v29 - v28;
  if (v29 - v28 < 0)
  {
    v30 = v28 - v29;
    *v19 = v14;
    *(v19 + 1) = v17;
    v31 = v19[8];
    if (v31 >= 0)
    {
      v32 = v31 << 8;
    }

    else
    {
      v32 = 255 * v31;
    }

    *(v19 + 3) = v32;
    v28 = v29;
    v61 = v26;
    v62 = v27;
  }

  else
  {
    v61 = v17;
    v62 = v14;
  }

  v33 = v19[9];
  ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(v12 + 24), v19[11], v28, a6);
  if (a5 >= ScoreAllowBackoff_updateNodeInSequence)
  {
    v35 = ScoreAllowBackoff_updateNodeInSequence;
    ++*(v55 + 4 * (ScoreAllowBackoff_updateNodeInSequence + 5000));
    ++*(v56 + 3460);
    v36 = *(v19 + 3) >> 8;
    v37 = *(v19 + 20);
    v38 = (v36 - v37) << 8;
    if (v36 < 1)
    {
      v39 = v38 | v37;
      v40 = ScoreAllowBackoff_updateNodeInSequence;
    }

    else
    {
      v39 = v38 - ((v38 >> 31) & (v38 >> 8));
      v40 = v36 + ScoreAllowBackoff_updateNodeInSequence;
    }

    *(v19 + 3) = v39;
    v19[4] = v40;
    v19[5] = ScoreAllowBackoff_updateNodeInSequence;
    if (v30 <= a5 - ScoreAllowBackoff_updateNodeInSequence)
    {
      v53 = *(v19 + 1);
      v70 = 0;
      v41 = DgnIdFactory<NetNBestTraceNoTime<unsigned int>,1024u>::createRawData(a8 + 302936, &v70);
      v42 = v70;
      *(v70 + 4) = v53;
      *(v42 + 8) = v61;
      *v42 = v62;
      *(v42 + 12) = v30;
      *(v19 + 1) = v41;
    }

    if (v35 <= v57 && (v35 < v57 || v19[11] < v54[11]))
    {
      v57 = v35;
      v54 = v19;
    }
  }

  else
  {
    *(v19 + 2) = 1310740000;
  }

  ++v15;
  if (v18 != 2)
  {
    v43 = v66;
    v44 = v69 + v68 + v33;
    v46 = v23 - v44;
    v45 = v23 <= v44;
    if (v23 <= v44)
    {
      v17 = v26;
    }

    else
    {
      v17 = v65;
    }

    if (v23 <= v44)
    {
      v14 = v27;
    }

    else
    {
      v14 = v66;
    }

    if (v23 <= v44)
    {
      v44 = v23;
    }

    if (v45)
    {
      v47 = v65;
    }

    else
    {
      v43 = v27;
      v47 = v26;
    }

    if (v45)
    {
      v48 = -v46;
    }

    else
    {
      v48 = v46;
    }

    v69 = v44;
    a4 = v58;
    v12 = a8;
    if (v48 + v44 <= v58)
    {
      v70 = 0;
      v49 = v14;
      v50 = v17;
      v67 = v43;
      DgnIdFactory<NetNBestTraceNoTime<unsigned int>,1024u>::createRawData(a8 + 302936, &v70);
      a4 = v58;
      v17 = v50;
      v12 = a8;
      v14 = v49;
      v51 = v70;
      *(v70 + 4) = v17;
      *(v51 + 8) = v47;
      *v51 = v67;
      *(v51 + 12) = v48;
    }

    v16 = (2 * v16) & 0x66 | v16 & 0x40;
    v20 = v14;
    v21 = v17;
    goto LABEL_53;
  }

  v12 = a8;
LABEL_57:
  *a11 += v15;
  *a12 += v64;
  if (v57 != 20000)
  {
    if (*(v12 + 224) >= v57)
    {
      BestData::newOrTiedBestNode(v12 + 192, v57, v54, 0);
    }

    ++*(v12 + 4 * (v57 + 5000) + 320);
    ++*(v56 + 3456);
  }

  return v57;
}

void NodeNetNode::NodeNetNode(NodeNetNode *this, char a2)
{
  *(this + 1) = 0x100000001;
  *(this + 4) = 1310740000;
  *(this + 20) = 0;
  *(this + 7) = -65536;
  *(this + 4) = 0;
  *(this + 20) = 0;
  *this = &unk_2875290C0;
  *(this + 42) = a2;
}

void NodeNetNode::~NodeNetNode(NodeNetNode *this)
{
  PredStruct::~PredStruct((this + 32));
}

{
  PredStruct::~PredStruct((this + 32));
}

{
  PredStruct::~PredStruct((this + 32));

  JUMPOUT(0x26672B1B0);
}

void PredStruct::~PredStruct(PredStruct *this)
{
  if (*(this + 4) >= 2u)
  {
    v2 = *this;
    if (*this)
    {
      MemChunkFree(v2, 0);
    }
  }
}

uint64_t NodeNetNode::sizeObject(uint64_t a1, int a2)
{
  if (gShadowDiagnosticShowIdealizedObjectSizes == 1)
  {
    if (a2 == 3)
    {
      v4 = 0;
    }

    else
    {
      v4 = 12;
    }

    v5 = sizeObject(a1 + 20, a2) + v4;
  }

  else
  {
    v5 = 24;
    if (a2 == 3)
    {
      v5 = 0;
    }
  }

  if (a2 == 3)
  {
    v6 = 0;
  }

  else
  {
    v7 = *(a1 + 40);
    if (v7 <= 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = 8 * v7;
    }

    if (gShadowDiagnosticShowIdealizedObjectSizes == 1)
    {
      v6 = v8 + 8;
    }

    else
    {
      v6 = v8 + 16;
    }
  }

  return v6 + v5;
}

uint64_t NodeNetNode::fill(uint64_t this, const NodeNetNode *a2)
{
  v2 = a2 + 8;
  if (!a2)
  {
    v2 = 0;
  }

  *(this + 16) = *(v2 + 2);
  *(this + 8) = *v2;
  *(this + 12) = *(v2 + 1);
  v3 = *(v2 + 12);
  *(this + 28) = *(v2 + 5);
  *(this + 20) = v3;
  return this;
}

uint64_t NodeNetNode::fillAsEpsilon(NodeNetNode *this, const NodeNetNode *a2)
{
  result = (*(*this + 24))(this, a2);
  v4 = *(this + 28);
  v5 = v4 + *(this + 12);
  v6 = v5 << 8;
  if (v5 < 0)
  {
    v7 = (v5 + v4 < 0) ^ __OFADD__(v5, v4) | (v5 + v4 == 0);
    v8 = 255 * v5;
    v6 |= v4;
    if (!v7)
    {
      v6 = v8;
    }
  }

  *(this + 5) = v6;
  return result;
}

uint64_t NodeNetNode::scoreNodeBWBack(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, int a5, int a6, HmmNet *a7)
{
  v8 = *(a1 + 20) >> 8;
  v9 = *(a1 + 28);
  v10 = v8 - v9;
  v11 = (v8 - v9) << 8;
  if (v8 <= 0)
  {
    v12 = *(a1 + 28) | ((v8 - v9) << 8);
  }

  else
  {
    v12 = 255 * (v8 - v9);
  }

  if (v10 >= 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  *(a1 + 20) = v13;
  v14 = *(a2 + 8);
  v15 = *(a1 + 18);
  v16 = 20000;
  if (v14 == 20000)
  {
    if (v15 == 20000)
    {
      return v16;
    }
  }

  else
  {
    v17 = *(a1 + 24);
    if (v17 < 0)
    {
      v18 = *(a1 + 29) + v17;
    }

    else
    {
      v18 = *(a1 + 29);
    }

    LODWORD(v16) = a6 + a5 + v14 + v18;
  }

  if ((v9 + (v13 >> 8) < 0) ^ __OFADD__(v9, v13 >> 8) | (v9 + (v13 >> 8) == 0))
  {
    v19 = -v9;
  }

  else
  {
    v19 = v13 >> 8;
  }

  v20 = v19 & (v19 >> 31);
  if (v15 == 20000)
  {
    v20 = 0;
  }

  v21 = v15 - v20;
  if (v16 >= v21)
  {
    LODWORD(v16) = v21;
  }

  else
  {
    v22 = *(a1 + 24);
    if (v22 >= 0)
    {
      v23 = v22 << 8;
    }

    else
    {
      v23 = 255 * v22;
    }

    *(a1 + 20) = v23;
    *(a1 + 8) = *a2;
    *(a1 + 12) = *(a2 + 4) + *(a1 + 26);
    v19 = v23 >> 8;
    *a3 = 1;
  }

  *(a1 + 18) = v16;
  v24 = v16;
  if (*(a4 + 224) >= v16)
  {
    BestData::newOrTiedBestNode(a4 + 192, v16, (a1 + 8), a7);
    v24 = *(a1 + 18);
  }

  *(a1 + 16) = v16 + (v19 & ~(v19 >> 31));
  return v24;
}