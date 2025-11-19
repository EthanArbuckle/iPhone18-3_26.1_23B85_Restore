unint64_t DgnArray<RecogGerm>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 44 * v6, 44 * v5, 44 * v5, 1);
  *(a1 + 12) = result / 0x2C;
  *a1 = v8;
  return result;
}

uint64_t **Hash<StateSpec,StateSpec,StateSpec,BOOL>::findBucket(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = *(a2 + 1);
  v4 = v3 + (v2 << 13);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (-1640531527 * v4) >> -v5;
  }

  else
  {
    v6 = 0;
  }

  result = (*(a1 + 80) + 8 * v6);
  v8 = *result;
  if (*result)
  {
    do
    {
      v9 = v8;
      if (*(v8 + 2) == v4 && *(v8 + 6) == v2 && *(v8 + 4) == v3)
      {
        break;
      }

      v8 = *v8;
      result = v9;
    }

    while (*v9);
  }

  return result;
}

void MrecInitModule_picmgr_user(void)
{
  if (!gParDebugShowUnreachablePelsOnLoad)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugShowUnreachablePelsOnLoad", byte_26286CCF0, byte_26286CCF0, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugShowUnreachablePelsOnLoad = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowUnreachablePelsOnLoad);
  }

  if (!gParDebugPicMgrBuildLookups)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugPicMgrBuildLookups", byte_26286CCF0, byte_26286CCF0, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugPicMgrBuildLookups = v3;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugPicMgrBuildLookups);
  }

  if (!gParDebugShowPicMgrStatsOnClose)
  {
    v4 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v4, "DebugShowPicMgrStatsOnClose", byte_26286CCF0, byte_26286CCF0, 0, 0, 0);
    *v5 = &unk_287527EA0;
    gParDebugShowPicMgrStatsOnClose = v5;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowPicMgrStatsOnClose);
  }

  if (!gParDebugPicMgr)
  {
    v6 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v6, "DebugPicMgr", byte_26286CCF0, byte_26286CCF0, 0, 0, 0);
    *v7 = &unk_287527EA0;
    gParDebugPicMgr = v7;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugPicMgr);
  }

  if (!gParDebugShowPelIdMap)
  {
    v8 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v8, "DebugShowPelIdMap", byte_26286CCF0, byte_26286CCF0, 0, 0, 0);
    *v9 = &unk_287527EA0;
    gParDebugShowPelIdMap = v9;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowPelIdMap);
  }

  if (!gParDiagnosticCheckPelIdMap)
  {
    v10 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v10, "DiagnosticCheckPelIdMap", byte_26286CCF0, byte_26286CCF0, 0, 0, 0);
    *v11 = &unk_287527EA0;
    gParDiagnosticCheckPelIdMap = v11;
    v12 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v12, &gParDiagnosticCheckPelIdMap);
  }
}

uint64_t Branch::writeObject(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  writeObject(a2, (a1 + 4), a3);
  writeObject(a2, (a1 + 6), a3);
  writeObject(a2, a1, a3);

  return writeObject(a2, (a1 + 2), a3);
}

void PicMgr::printSize(PicMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 415, &v193);
  if (v194)
  {
    v16 = v193;
  }

  else
  {
    v16 = &unk_26286CCF0;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26286CCF0, a3, &unk_26286CCF0, v16);
  DgnString::~DgnString(&v193);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26286CCF0);
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
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 416, &v193);
  if (v194)
  {
    v28 = v193;
  }

  else
  {
    v28 = &unk_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, v25, v26, v27, (a3 + 1), &unk_26286CCF0, (34 - a3), (34 - a3), v28, v21, v21, 0);
  DgnString::~DgnString(&v193);
  *a4 += v21;
  *a5 += v21;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418, &v193);
  if (v194)
  {
    v33 = v193;
  }

  else
  {
    v33 = &unk_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v29, v30, v31, v32, (a3 + 1), &unk_26286CCF0, (34 - a3), (34 - a3), v33, 1, 1, 0);
  DgnString::~DgnString(&v193);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418, &v193);
  if (v194)
  {
    v38 = v193;
  }

  else
  {
    v38 = &unk_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, v35, v36, v37, (a3 + 1), &unk_26286CCF0, (34 - a3), (34 - a3), v38, 4, 4, 0);
  v192 = a3;
  DgnString::~DgnString(&v193);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v39 = 12;
  }

  else
  {
    v39 = 16;
  }

  v40 = *(this + 6);
  v41 = *(this + 7);
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
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418, &v193);
  if (v194)
  {
    v50 = v193;
  }

  else
  {
    v50 = &unk_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v46, v47, v48, v49, v22, &unk_26286CCF0, v23, v23, v50, v39, v44, v45);
  DgnString::~DgnString(&v193);
  *a4 += v39;
  *a5 += v44;
  *a6 += v45;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418, &v193);
  if (v194)
  {
    v55 = v193;
  }

  else
  {
    v55 = &unk_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v51, v52, v53, v54, v22, &unk_26286CCF0, v23, v23, v55, 1, 1, 0);
  DgnString::~DgnString(&v193);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v56 = 12;
  }

  else
  {
    v56 = 16;
  }

  v57 = *(this + 12);
  v58 = *(this + 13);
  if (v58 >= v57)
  {
    v59 = 0;
    if (v57 > 0)
    {
      v56 += 2 * (v57 - 1) + 2;
    }

    v60 = v56 + 2 * (v58 - v57);
  }

  else
  {
    v59 = 2 * v57;
    v60 = v56;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418, &v193);
  if (v194)
  {
    v65 = v193;
  }

  else
  {
    v65 = &unk_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v61, v62, v63, v64, v22, &unk_26286CCF0, v23, v23, v65, v60, v56, v59);
  DgnString::~DgnString(&v193);
  *a4 += v60;
  *a5 += v56;
  *a6 += v59;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v66 = 12;
  }

  else
  {
    v66 = 16;
  }

  v67 = *(this + 16);
  v68 = *(this + 17);
  if (v68 >= v67)
  {
    v69 = 0;
    if (v67 > 0)
    {
      v66 += 2 * (v67 - 1) + 2;
    }

    v70 = v66 + 2 * (v68 - v67);
  }

  else
  {
    v69 = 2 * v67;
    v70 = v66;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418, &v193);
  if (v194)
  {
    v75 = v193;
  }

  else
  {
    v75 = &unk_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v71, v72, v73, v74, v22, &unk_26286CCF0, v23, v23, v75, v70, v66, v69);
  DgnString::~DgnString(&v193);
  *a4 += v70;
  *a5 += v66;
  *a6 += v69;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v76 = 12;
  }

  else
  {
    v76 = 16;
  }

  v77 = *(this + 20);
  v78 = *(this + 21);
  if (v78 >= v77)
  {
    v79 = 0;
    if (v77 > 0)
    {
      v76 += 2 * (v77 - 1) + 2;
    }

    v80 = v76 + 2 * (v78 - v77);
  }

  else
  {
    v79 = 2 * v77;
    v80 = v76;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418, &v193);
  if (v194)
  {
    v85 = v193;
  }

  else
  {
    v85 = &unk_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v81, v82, v83, v84, v22, &unk_26286CCF0, v23, v23, v85, v80, v76, v79);
  DgnString::~DgnString(&v193);
  *a4 += v80;
  *a5 += v76;
  *a6 += v79;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418, &v193);
  if (v194)
  {
    v90 = v193;
  }

  else
  {
    v90 = &unk_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v86, v87, v88, v89, v22, &unk_26286CCF0, v23, v23, v90, 2, 2, 0);
  DgnString::~DgnString(&v193);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418, &v193);
  if (v194)
  {
    v95 = v193;
  }

  else
  {
    v95 = &unk_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v91, v92, v93, v94, v22, &unk_26286CCF0, v23, v23, v95, 2, 2, 0);
  DgnString::~DgnString(&v193);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418, &v193);
  if (v194)
  {
    v100 = v193;
  }

  else
  {
    v100 = &unk_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v96, v97, v98, v99, v22, &unk_26286CCF0, v23, v23, v100, 1, 1, 0);
  DgnString::~DgnString(&v193);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418, &v193);
  if (v194)
  {
    v105 = v193;
  }

  else
  {
    v105 = &unk_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v101, v102, v103, v104, v22, &unk_26286CCF0, v23, v23, v105, 1, 1, 0);
  DgnString::~DgnString(&v193);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v106 = 12;
  }

  else
  {
    v106 = 16;
  }

  v107 = *(this + 26);
  v108 = *(this + 27);
  v42 = v108 >= v107;
  v109 = v108 - v107;
  if (v42)
  {
    if (v107 > 0)
    {
      v110 = (v107 - 1) + v106 + 1;
    }

    else
    {
      v110 = v106;
    }

    v106 = v110 + v109;
    v107 = 0;
  }

  else
  {
    v110 = v106;
  }

  v111 = v107;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418, &v193);
  if (v194)
  {
    v116 = v193;
  }

  else
  {
    v116 = &unk_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v112, v113, v114, v115, v22, &unk_26286CCF0, v23, v23, v116, v106, v110, v111);
  DgnString::~DgnString(&v193);
  *a4 += v106;
  *a5 += v110;
  *a6 += v111;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v117 = 12;
  }

  else
  {
    v117 = 16;
  }

  v118 = *(this + 30);
  v119 = *(this + 31);
  v42 = v119 >= v118;
  v120 = v119 - v118;
  if (v42)
  {
    if (v118 > 0)
    {
      v121 = (v118 - 1) + v117 + 1;
    }

    else
    {
      v121 = v117;
    }

    v117 = v121 + v120;
    v118 = 0;
  }

  else
  {
    v121 = v117;
  }

  v122 = v118;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418, &v193);
  if (v194)
  {
    v127 = v193;
  }

  else
  {
    v127 = &unk_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v123, v124, v125, v126, v22, &unk_26286CCF0, v23, v23, v127, v117, v121, v122);
  DgnString::~DgnString(&v193);
  *a4 += v117;
  *a5 += v121;
  *a6 += v122;
  v128 = sizeObject<DgnArray<Branch>>(this + 128, 0);
  v129 = sizeObject<DgnArray<Branch>>(this + 128, 1);
  v193 = 0;
  v194 = 0;
  DgnIArray<Utterance *>::~DgnIArray(&v193);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418, &v193);
  if (v194)
  {
    v134 = v193;
  }

  else
  {
    v134 = &unk_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v130, v131, v132, v133, v22, &unk_26286CCF0, v23, v23, v134, v128, v129, 0);
  DgnString::~DgnString(&v193);
  *a4 += v128;
  *a5 += v129;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418, &v193);
  if (v194)
  {
    v139 = v193;
  }

  else
  {
    v139 = &unk_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v135, v136, v137, v138, v22, &unk_26286CCF0, v23, v23, v139, 4, 4, 0);
  DgnString::~DgnString(&v193);
  *a4 += 4;
  *a5 += 4;
  v140 = sizeObject<DgnArray<PicNode>>(this + 152, 0);
  v141 = sizeObject<DgnArray<PicNode>>(this + 152, 1);
  v193 = 0;
  v194 = 0;
  DgnIArray<Utterance *>::~DgnIArray(&v193);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418, &v193);
  if (v194)
  {
    v146 = v193;
  }

  else
  {
    v146 = &unk_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v142, v143, v144, v145, v22, &unk_26286CCF0, v23, v23, v146, v140, v141, 0);
  DgnString::~DgnString(&v193);
  *a4 += v140;
  *a5 += v141;
  v147 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v147 = 8;
  }

  v148 = *(this + 44);
  if (v148 <= 0)
  {
    v149 = 0;
  }

  else
  {
    v149 = (2 * v148);
  }

  v150 = v147 + v149;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418, &v193);
  if (v194)
  {
    v155 = v193;
  }

  else
  {
    v155 = &unk_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v151, v152, v153, v154, v22, &unk_26286CCF0, v23, v23, v155, v150, v150, 0);
  DgnString::~DgnString(&v193);
  *a4 += v150;
  *a5 += v150;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v156 = 12;
  }

  else
  {
    v156 = 16;
  }

  v157 = *(this + 48);
  v158 = *(this + 49);
  v42 = v158 >= v157;
  v159 = v158 - v157;
  if (v42)
  {
    if (v157 > 0)
    {
      v160 = (v157 - 1) + v156 + 1;
    }

    else
    {
      v160 = v156;
    }

    v156 = v160 + v159;
    v157 = 0;
  }

  else
  {
    v160 = v156;
  }

  v161 = v157;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418, &v193);
  if (v194)
  {
    v166 = v193;
  }

  else
  {
    v166 = &unk_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v162, v163, v164, v165, v22, &unk_26286CCF0, v23, v23, v166, v156, v160, v161);
  DgnString::~DgnString(&v193);
  *a4 += v156;
  *a5 += v160;
  *a6 += v161;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v167 = 12;
  }

  else
  {
    v167 = 16;
  }

  v168 = *(this + 52);
  v169 = *(this + 53);
  v42 = v169 >= v168;
  v170 = v169 - v168;
  if (v42)
  {
    if (v168 > 0)
    {
      v171 = (v168 - 1) + v167 + 1;
    }

    else
    {
      v171 = v167;
    }

    v167 = v171 + v170;
    v168 = 0;
  }

  else
  {
    v171 = v167;
  }

  v172 = v168;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418, &v193);
  if (v194)
  {
    v177 = v193;
  }

  else
  {
    v177 = &unk_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v173, v174, v175, v176, v22, &unk_26286CCF0, v23, v23, v177, v167, v171, v172);
  DgnString::~DgnString(&v193);
  *a4 += v167;
  *a5 += v171;
  *a6 += v172;
  v178 = BitArray::sizeObject(this + 216, 0);
  v179 = BitArray::sizeObject(this + 216, 1);
  v180 = BitArray::sizeObject(this + 216, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 418, &v193);
  if (v194)
  {
    v185 = v193;
  }

  else
  {
    v185 = &unk_26286CCF0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v181, v182, v183, v184, v22, &unk_26286CCF0, v23, v23, v185, v178, v179, v180);
  DgnString::~DgnString(&v193);
  *a4 += v178;
  *a5 += v179;
  *a6 += v180;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/picmgr.cpp", 419, &v193);
  if (v194)
  {
    v190 = v193;
  }

  else
  {
    v190 = &unk_26286CCF0;
  }

  v191 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v186, v187, v188, v189, v192, &unk_26286CCF0, (35 - v192), (35 - v192), v190, *a4, *a5, *a6);
  DgnString::~DgnString(&v193);
}

void sub_2625B244C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<DgnArray<Branch>>(uint64_t a1, int a2)
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
    }

    else
    {
      v6 = *(a1 + 8);
      v2 = v3;
      if (v6 >= 1)
      {
        v7 = v6 + 1;
        v8 = 16 * v6 - 16;
        v2 = v3;
        do
        {
          v2 += sizeObject<EnergyInfo>(*a1 + v8, a2);
          --v7;
          v8 -= 16;
        }

        while (v7 > 1);
      }

      if (!a2)
      {
        v2 += v3 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  DgnIArray<Utterance *>::~DgnIArray(v10);
  return v2;
}

uint64_t sizeObject<DgnArray<PicNode>>(uint64_t a1, int a2)
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
    }

    else
    {
      v6 = *(a1 + 8);
      v2 = v3;
      if (v6 >= 1)
      {
        v7 = v6 + 1;
        v8 = 16 * v6 - 16;
        v2 = v3;
        do
        {
          v2 += sizeObject<FrameTypeInfo>(*a1 + v8, a2);
          --v7;
          v8 -= 16;
        }

        while (v7 > 1);
      }

      if (!a2)
      {
        v2 += v3 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  DgnIArray<Utterance *>::~DgnIArray(v10);
  return v2;
}

unint64_t DgnPrimArray<unsigned short>::compact(unint64_t result)
{
  v3 = *(result + 8);
  v4 = *(result + 12);
  if (v3 != v4)
  {
    v6[3] = v1;
    v6[4] = v2;
    v5 = result;
    if (v3)
    {
      v6[0] = 0;
      result = realloc_array(*result, v6, 2 * v3, 2 * v3, 2 * v4, 0);
      *(v5 + 12) = result >> 1;
      *v5 = v6[0];
    }

    else
    {
      result = *result;
      if (*v5)
      {
        result = MemChunkFree(result, 0);
      }

      *v5 = 0;
      *(v5 + 12) = 0;
    }
  }

  return result;
}

void *DgnPrimArray<unsigned char>::compact(void *result)
{
  v3 = *(result + 2);
  v4 = *(result + 3);
  if (v3 != v4)
  {
    v6[3] = v1;
    v6[4] = v2;
    v5 = result;
    if (v3)
    {
      v6[0] = 0;
      result = realloc_array(*result, v6, v3, v3, v4, 0);
      *(v5 + 3) = result;
      *v5 = v6[0];
    }

    else
    {
      result = *result;
      if (*v5)
      {
        result = MemChunkFree(result, 0);
      }

      *v5 = 0;
      *(v5 + 3) = 0;
    }
  }

  return result;
}

void PicMgr::savePicMgr(PicMgr *this, DFile *a2, DFileChecksums *a3, int a4, int a5)
{
  if (a4)
  {
    PicMgr::saveQuestionsAsText(this, a2, a5);
    PicMgr::saveDurationDistributions(this, a2, a5);
    PicMgr::savePicTreesAsText(this, a2, a5);
    if (*(this + 48))
    {

      PicMgr::saveAdaptPhonemesAsText(this, a2, a5);
    }
  }

  else
  {

    PicMgr::saveBinary(this, a2, a3, a5);
  }
}

void PicMgr::saveQuestionsAsText(PicMgr *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v36);
  DgnTextFileWriter::openDgnTextFileWriter(v36, a2, 0x42u, a3);
  v34 = 0;
  v35 = 0;
  DgnTextFile::legalDgnTextFileVersions(v36, sPQT_Versions, &v34, v6, v7, v8, v9, v10);
  DgnTextFileWriter::setFileType(v36, "PicTreeQuestionText", (v34 + 8 * (v35 - 1)));
  v11 = *(this + 26);
  DgnTextFileWriter::setHeaderFieldBool(v36, "HasPentaphoneQuestions", *(this + 92));
  DgnTextFileWriter::setHeaderFieldBool(v36, "HasWordBoundaryQuestions", *(this + 93));
  DgnTextFileWriter::setHeaderFieldUnsigned(v36, "NumberOfQuestions", v11);
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  DgnString::DgnString(&v28, "QuestionId");
  v12 = v33;
  if (v33 == HIDWORD(v33))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v32, 1, 1);
    v12 = v33;
  }

  DgnString::DgnString((v32 + 16 * v12), &v28);
  LODWORD(v33) = v33 + 1;
  DgnString::~DgnString(&v28);
  v13 = v31;
  if (v31 == HIDWORD(v31))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v30, 1, 1);
    v13 = v31;
  }

  *(v30 + 4 * v13) = 3;
  LODWORD(v31) = v13 + 1;
  v14 = v33;
  DgnString::DgnString(&v28, "QuestionTarget");
  v15 = v33;
  if (v33 == HIDWORD(v33))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v32, 1, 1);
    v15 = v33;
  }

  DgnString::DgnString((v32 + 16 * v15), &v28);
  LODWORD(v33) = v33 + 1;
  DgnString::~DgnString(&v28);
  v16 = v31;
  if (v31 == HIDWORD(v31))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v30, 1, 1);
    v16 = v31;
  }

  *(v30 + 4 * v16) = 0;
  LODWORD(v31) = v16 + 1;
  v17 = v33;
  DgnString::DgnString(&v28, "TargetPhonemes");
  v18 = v33;
  if (v33 == HIDWORD(v33))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v32, 1, 1);
    v18 = v33;
  }

  DgnString::DgnString((v32 + 16 * v18), &v28);
  LODWORD(v33) = v33 + 1;
  DgnString::~DgnString(&v28);
  v19 = v31;
  if (v31 == HIDWORD(v31))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v30, 1, 1);
    v19 = v31;
  }

  *(v30 + 4 * v19) = 0;
  LODWORD(v31) = v19 + 1;
  DgnTextFileWriter::setLineFieldFormat(v36, &v30, &v32);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      v21 = *(*(this + 12) + i);
      DgnTextFileWriter::setLineFieldUnsignedValue(v36, 0, i);
      if ((v21 - 1) < 6)
      {
        DgnTextFileWriter::setLineFieldValue(v36, v14, off_279B3B2D0[(v21 - 1)]);
      }

      DgnString::DgnString(&v28);
      if ((v21 - 1) >= 4)
      {
        if ((v21 - 5) < 2)
        {
          DgnTextFileWriter::setLineFieldValue(v36, v17, "_wb");
        }
      }

      else
      {
        v29 = 0;
        v22 = *(this + 44);
        if (!v22)
        {
          goto LABEL_32;
        }

        v23 = 0;
        for (j = 0; j < v22; ++j)
        {
          if (*(*(this + 14) + j + i * v22) == 1)
          {
            if (v29 >= 2)
            {
              DgnString::operator+=(&v28, ".");
            }

            v25 = *(*this + 8) + v23;
            if (*(v25 + 8))
            {
              v26 = *v25;
            }

            else
            {
              v26 = &unk_26286CCF0;
            }

            DgnString::operator+=(&v28, v26);
            v22 = *(this + 44);
          }

          v23 += 16;
        }

        if (v29)
        {
          v27 = v28;
        }

        else
        {
LABEL_32:
          v27 = &unk_26286CCF0;
        }

        DgnTextFileWriter::setLineFieldValue(v36, v17, v27);
      }

      DgnTextFileWriter::writeNextLine(v36);
      DgnString::~DgnString(&v28);
    }
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v30);
  DgnArray<DgnString>::releaseAll(&v32);
  DgnIArray<Utterance *>::~DgnIArray(&v34);
  DgnTextFileWriter::~DgnTextFileWriter(v36);
}

void sub_2625B2C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  va_copy(va3, va2);
  v10 = va_arg(va3, void);
  v12 = va_arg(va3, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnArray<DgnString>::releaseAll(va1);
  DgnIArray<Utterance *>::~DgnIArray(va2);
  DgnTextFileWriter::~DgnTextFileWriter(va3);
  _Unwind_Resume(a1);
}

void PicMgr::saveDurationDistributions(PicMgr *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v25);
  DgnTextFileWriter::openDgnTextFileWriter(v25, a2, 0x3Bu, a3);
  v23 = 0;
  v24 = 0;
  DgnTextFile::legalDgnTextFileVersions(v25, sPDT_Versions, &v23, v6, v7, v8, v9, v10);
  DgnTextFileWriter::setFileType(v25, "PicTreeDurationText", (v23 + 8 * (v24 - 1)));
  v11 = *(this + 12);
  DgnTextFileWriter::setHeaderFieldUnsigned(v25, "NumberOfDistributions", v11);
  DgnTextFileWriter::setHeaderFieldUnsigned(v25, "PenDif", *(this + 8));
  DgnTextFileWriter::setHeaderFieldInteger(v25, "PenDifDurLogTerm", *(this + 3));
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  DgnString::DgnString(v18, "DurId");
  v12 = v22;
  if (v22 == HIDWORD(v22))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v21, 1, 1);
    v12 = v22;
  }

  DgnString::DgnString((v21 + 16 * v12), v18);
  LODWORD(v22) = v22 + 1;
  DgnString::~DgnString(v18);
  v13 = v20;
  if (v20 == HIDWORD(v20))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v19, 1, 1);
    v13 = v20;
  }

  *(v19 + 4 * v13) = 3;
  LODWORD(v20) = v13 + 1;
  v14 = v22;
  DgnString::DgnString(v18, "MeanScaledFrameDuration");
  v15 = v22;
  if (v22 == HIDWORD(v22))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v21, 1, 1);
    v15 = v22;
  }

  DgnString::DgnString((v21 + 16 * v15), v18);
  LODWORD(v22) = v22 + 1;
  DgnString::~DgnString(v18);
  v16 = v20;
  if (v20 == HIDWORD(v20))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v19, 1, 1);
    v16 = v20;
  }

  *(v19 + 4 * v16) = 3;
  LODWORD(v20) = v16 + 1;
  DgnTextFileWriter::setLineFieldFormat(v25, &v19, &v21);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      DgnTextFileWriter::setLineFieldUnsignedValue(v25, 0, i);
      DgnTextFileWriter::setLineFieldIntegerValue(v25, v14, *(*(this + 5) + 2 * i));
      DgnTextFileWriter::writeNextLine(v25);
    }
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v19);
  DgnArray<DgnString>::releaseAll(&v21);
  DgnIArray<Utterance *>::~DgnIArray(&v23);
  DgnTextFileWriter::~DgnTextFileWriter(v25);
}

void sub_2625B2F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

void PicMgr::savePicTreesAsText(PicMgr *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v75);
  DgnTextFileWriter::openDgnTextFileWriter(v75, a2, 0x47u, a3);
  v73 = 0;
  v74 = 0;
  DgnTextFile::legalDgnTextFileVersions(v75, sPTT_Versions, &v73, v6, v7, v8, v9, v10);
  DgnTextFileWriter::setFileType(v75, "PicTreeText", (v73 + 8 * (v74 - 1)));
  v11 = *(this + 44);
  if (*(this + 44))
  {
    LODWORD(v12) = 0;
    LODWORD(v13) = 0;
    v14 = *(this + 2);
    do
    {
      v16 = *v14++;
      v15 = v16;
      if (v16)
      {
        v12 = (v12 + 1);
      }

      else
      {
        v12 = v12;
      }

      v13 = (v13 + v15);
      --v11;
    }

    while (v11);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  DgnTextFileWriter::setHeaderFieldUnsigned(v75, "NumberOfPhonemes", v12);
  DgnTextFileWriter::setHeaderFieldUnsigned(v75, "NumberOfTrees", v13);
  DgnTextFileWriter::setHeaderFieldUnsigned(v75, "MaxPelId", *(this + 45));
  DgnTextFileWriter::setHeaderFieldUnsigned(v75, "MaxDurId", (*(this + 12) - 1));
  DgnString::DgnString(&v71);
  v17 = *(this + 36) - 1;
  if (v17 < 3)
  {
    DgnString::operator=(&v71, off_279B3B300[v17]);
  }

  if (v72)
  {
    v18 = v71;
  }

  else
  {
    v18 = &unk_26286CCF0;
  }

  DgnTextFileWriter::setHeaderField(v75, "LookupType", v18);
  DgnString::~DgnString(&v71);
  v71 = 0;
  v72 = 0;
  v69 = 0;
  v70 = 0;
  DgnString::DgnString(v68, "TreeId");
  v19 = v72;
  if (v72 == HIDWORD(v72))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v71, 1, 1);
    v19 = v72;
  }

  DgnString::DgnString(&v71[16 * v19], v68);
  LODWORD(v72) = v72 + 1;
  DgnString::~DgnString(v68);
  v20 = v70;
  if (v70 == HIDWORD(v70))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v69, 1, 1);
    v20 = v70;
  }

  *(v69 + 4 * v20) = 3;
  LODWORD(v70) = v20 + 1;
  v65 = v72;
  DgnString::DgnString(v68, "Phoneme");
  v21 = v72;
  if (v72 == HIDWORD(v72))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v71, 1, 1);
    v21 = v72;
  }

  DgnString::DgnString(&v71[16 * v21], v68);
  LODWORD(v72) = v72 + 1;
  DgnString::~DgnString(v68);
  v22 = v70;
  if (v70 == HIDWORD(v70))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v69, 1, 1);
    v22 = v70;
  }

  *(v69 + 4 * v22) = 0;
  LODWORD(v70) = v22 + 1;
  v64 = v72;
  DgnString::DgnString(v68, "NodeIndex");
  v23 = v72;
  if (v72 == HIDWORD(v72))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v71, 1, 1);
    v23 = v72;
  }

  DgnString::DgnString(&v71[16 * v23], v68);
  LODWORD(v72) = v72 + 1;
  DgnString::~DgnString(v68);
  v24 = v70;
  if (v70 == HIDWORD(v70))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v69, 1, 1);
    v24 = v70;
  }

  *(v69 + 4 * v24) = 3;
  LODWORD(v70) = v24 + 1;
  v63 = v72;
  DgnString::DgnString(v68, "BranchIndex");
  v25 = v72;
  if (v72 == HIDWORD(v72))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v71, 1, 1);
    v25 = v72;
  }

  DgnString::DgnString(&v71[16 * v25], v68);
  LODWORD(v72) = v72 + 1;
  DgnString::~DgnString(v68);
  v26 = v70;
  if (v70 == HIDWORD(v70))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v69, 1, 1);
    v26 = v70;
  }

  *(v69 + 4 * v26) = 3;
  LODWORD(v70) = v26 + 1;
  v62 = v72;
  DgnString::DgnString(v68, "QuestionId");
  v27 = v72;
  if (v72 == HIDWORD(v72))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v71, 1, 1);
    v27 = v72;
  }

  DgnString::DgnString(&v71[16 * v27], v68);
  LODWORD(v72) = v72 + 1;
  DgnString::~DgnString(v68);
  v28 = v70;
  if (v70 == HIDWORD(v70))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v69, 1, 1);
    v28 = v70;
  }

  *(v69 + 4 * v28) = 1;
  LODWORD(v70) = v28 + 1;
  v61 = v72;
  DgnString::DgnString(v68, "YesBranchIndex");
  v29 = v72;
  if (v72 == HIDWORD(v72))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v71, 1, 1);
    v29 = v72;
  }

  DgnString::DgnString(&v71[16 * v29], v68);
  LODWORD(v72) = v72 + 1;
  DgnString::~DgnString(v68);
  v30 = v70;
  if (v70 == HIDWORD(v70))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v69, 1, 1);
    v30 = v70;
  }

  *(v69 + 4 * v30) = 1;
  LODWORD(v70) = v30 + 1;
  v60 = v72;
  DgnString::DgnString(v68, "NoBranchIndex");
  v31 = v72;
  if (v72 == HIDWORD(v72))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v71, 1, 1);
    v31 = v72;
  }

  DgnString::DgnString(&v71[16 * v31], v68);
  LODWORD(v72) = v72 + 1;
  DgnString::~DgnString(v68);
  v32 = v70;
  if (v70 == HIDWORD(v70))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v69, 1, 1);
    v32 = v70;
  }

  *(v69 + 4 * v32) = 1;
  LODWORD(v70) = v32 + 1;
  v59 = v72;
  DgnString::DgnString(v68, "PelId");
  v33 = v72;
  if (v72 == HIDWORD(v72))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v71, 1, 1);
    v33 = v72;
  }

  DgnString::DgnString(&v71[16 * v33], v68);
  LODWORD(v72) = v72 + 1;
  DgnString::~DgnString(v68);
  v34 = v70;
  if (v70 == HIDWORD(v70))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v69, 1, 1);
    v34 = v70;
  }

  *(v69 + 4 * v34) = 1;
  LODWORD(v70) = v34 + 1;
  v58 = v72;
  DgnString::DgnString(v68, "DurId");
  v35 = v72;
  if (v72 == HIDWORD(v72))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v71, 1, 1);
    v35 = v72;
  }

  DgnString::DgnString(&v71[16 * v35], v68);
  LODWORD(v72) = v72 + 1;
  DgnString::~DgnString(v68);
  v36 = v70;
  if (v70 == HIDWORD(v70))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v69, 1, 1);
    v36 = v70;
  }

  *(v69 + 4 * v36) = 1;
  LODWORD(v70) = v36 + 1;
  DgnTextFileWriter::setLineFieldFormat(v75, &v69, &v71);
  v37 = *(this + 44);
  if (*(this + 44))
  {
    v38 = 0;
    v67 = 0;
    v56 = this;
    do
    {
      v39 = *(*this + 8) + 16 * v38;
      if (*(v39 + 8))
      {
        v40 = *v39;
      }

      else
      {
        v40 = &unk_26286CCF0;
      }

      v66 = v40;
      v41 = *(this + 2);
      if (*(v41 + v38))
      {
        v42 = 0;
        v57 = v38;
        do
        {
          v43 = *(this + 16) + 16 * (v42 + v38 * *(this + 32));
          v44 = *(v43 + 8);
          if (v44)
          {
            v45 = 0;
            v46 = 0;
            v47 = 8 * v44;
            do
            {
              v48 = (*v43 + v45);
              v49 = v48[2];
              if (v49 == -1)
              {
                v52 = *v48;
                v53 = v48[1];
                v50 = -1;
                v51 = -1;
              }

              else
              {
                v50 = v48[1];
                v51 = *v48;
                v52 = 0xFFFF;
                v53 = 0xFFFF;
              }

              DgnTextFileWriter::setLineFieldUnsignedValue(v75, 0, v67);
              DgnTextFileWriter::setLineFieldValue(v75, v65, v66);
              DgnTextFileWriter::setLineFieldUnsignedValue(v75, v64, v42);
              DgnTextFileWriter::setLineFieldUnsignedValue(v75, v63, v46);
              DgnTextFileWriter::setLineFieldIntegerValue(v75, v62, v49);
              DgnTextFileWriter::setLineFieldIntegerValue(v75, v61, v50);
              DgnTextFileWriter::setLineFieldIntegerValue(v75, v60, v51);
              if (v52 == 0xFFFF)
              {
                v54 = -1;
              }

              else
              {
                v54 = v52;
              }

              DgnTextFileWriter::setLineFieldIntegerValue(v75, v59, v54);
              if (v53 == 0xFFFF)
              {
                v55 = -1;
              }

              else
              {
                v55 = v53;
              }

              DgnTextFileWriter::setLineFieldIntegerValue(v75, v58, v55);
              DgnTextFileWriter::writeNextLine(v75);
              ++v46;
              v45 += 8;
            }

            while (v47 != v45);
            this = v56;
            v38 = v57;
            v41 = *(v56 + 2);
          }

          ++v67;
          ++v42;
        }

        while (v42 < *(v41 + v38));
        v37 = *(this + 44);
      }

      ++v38;
    }

    while (v38 < v37);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v69);
  DgnArray<DgnString>::releaseAll(&v71);
  DgnIArray<Utterance *>::~DgnIArray(&v73);
  DgnTextFileWriter::~DgnTextFileWriter(v75);
}

void sub_2625B3808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va3, a11);
  va_start(va2, a11);
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  va_copy(va3, va2);
  v18 = va_arg(va3, void);
  v20 = va_arg(va3, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnArray<DgnString>::releaseAll(va1);
  DgnIArray<Utterance *>::~DgnIArray(va2);
  DgnTextFileWriter::~DgnTextFileWriter(va3);
  _Unwind_Resume(a1);
}

void PicMgr::saveAdaptPhonemesAsText(PicMgr *this, DFile *a2, int a3)
{
  v6 = *(this + 48);
  DgnTextFileWriter::DgnTextFileWriter(v33);
  DgnTextFileWriter::openDgnTextFileWriter(v33, a2, 0x36u, a3);
  v31 = 0;
  v32 = 0;
  DgnTextFile::legalDgnTextFileVersions(v33, sPAT_Versions, &v31, v7, v8, v9, v10, v11);
  DgnTextFileWriter::setFileType(v33, "PicTreePhonemeAdaptationText", (v31 + 8 * (v32 - 1)));
  DgnTextFileWriter::setHeaderFieldUnsigned(v33, "NumberOfPhonemes", v6);
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  DgnString::DgnString(v26, "PhnIndex");
  v12 = v30;
  if (v30 == HIDWORD(v30))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v29, 1, 1);
    v12 = v30;
  }

  DgnString::DgnString((v29 + 16 * v12), v26);
  LODWORD(v30) = v30 + 1;
  DgnString::~DgnString(v26);
  v13 = v28;
  if (v28 == HIDWORD(v28))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v27, 1, 1);
    v13 = v28;
  }

  *(v27 + 4 * v13) = 3;
  LODWORD(v28) = v13 + 1;
  v14 = v30;
  DgnString::DgnString(v26, "Phoneme");
  v15 = v30;
  if (v30 == HIDWORD(v30))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v29, 1, 1);
    v15 = v30;
  }

  DgnString::DgnString((v29 + 16 * v15), v26);
  LODWORD(v30) = v30 + 1;
  DgnString::~DgnString(v26);
  v16 = v28;
  if (v28 == HIDWORD(v28))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v27, 1, 1);
    v16 = v28;
  }

  *(v27 + 4 * v16) = 0;
  LODWORD(v28) = v16 + 1;
  v17 = v30;
  DgnString::DgnString(v26, "ChooseWarpUse");
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

  *(v27 + 4 * v19) = 3;
  LODWORD(v28) = v19 + 1;
  v20 = v30;
  DgnString::DgnString(v26, "ScoreSegmentationUse");
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
  DgnTextFileWriter::setLineFieldFormat(v33, &v27, &v29);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      DgnTextFileWriter::setLineFieldUnsignedValue(v33, 0, i);
      v24 = *(*this + 8) + 16 * i;
      if (*(v24 + 8))
      {
        v25 = *v24;
      }

      else
      {
        v25 = &unk_26286CCF0;
      }

      DgnTextFileWriter::setLineFieldValue(v33, v14, v25);
      DgnTextFileWriter::setLineFieldUnsignedValue(v33, v17, *(*(this + 23) + i));
      DgnTextFileWriter::setLineFieldUnsignedValue(v33, v20, *(*(this + 25) + i));
      DgnTextFileWriter::writeNextLine(v33);
    }
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v27);
  DgnArray<DgnString>::releaseAll(&v29);
  DgnIArray<Utterance *>::~DgnIArray(&v31);
  DgnTextFileWriter::~DgnTextFileWriter(v33);
}

void sub_2625B3C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

void (***PicMgr::saveBinary(PicMgr *this, DFile *a2, DFileChecksums *a3, int a4))(void)
{
  v7 = OpenAndWriteMrecHeader(a2, 0x46u, a4, "MRPICT!?", 24, 14);
  v10 = 0;
  writeObject(v7, this + 8, &v10);
  writeObject(v7, this + 3, &v10);
  writeObject<unsigned char>(v7, this + 16, &v10);
  writeObject(v7, this + 32, &v10);
  writeObject<unsigned short>(v7, this + 40, &v10);
  writeObject(v7, this + 44, &v10);
  writeObject(v7, this + 45, &v10);
  writeObject(v7, this + 92, &v10);
  writeObject(v7, this + 93, &v10);
  writeObject<unsigned char>(v7, this + 96, &v10);
  writeObject<BOOL>(v7, this + 112, &v10);
  writeObject<DgnArray<Branch>>(v7, this + 128, &v10);
  writeObject(v7, this + 36, &v10);
  writeObject<DgnArray<PicNode>>(v7, this + 152, &v10);
  writeObject<unsigned short>(v7, this + 168, &v10);
  writeObject<BOOL>(v7, this + 184, &v10);
  writeObject<BOOL>(v7, this + 200, &v10);
  writeObject(v7, this + 216, &v10);
  writeObjectChecksum(v7, &v10);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x46u, v10);
  return DgnDelete<DgnStream>(v7);
}

uint64_t readObject<BOOL>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v9 = 0;
  readObject(a1, &v9, a3);
  v6 = v9;
  v7 = *a2;
  if (*(a2 + 12) < v9)
  {
    v10 = 0;
    *(a2 + 12) = realloc_array(v7, &v10, v9, *(a2 + 8), *(a2 + 8), 1);
    v7 = v10;
    *a2 = v10;
  }

  *(a2 + 8) = v6;
  return readObjectArray(a1, v7, v6, a3);
}

uint64_t writeObject<BOOL>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v7 = *(a2 + 8);
  writeObject(a1, &v7, a3);
  return writeObjectArray(a1, *a2, *(a2 + 8), a3);
}

uint64_t writeObject<DgnArray<Branch>>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = writeObject<Branch>(a1, *a2 + v7, a3);
      ++v8;
      v7 += 16;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

uint64_t writeObject<DgnArray<PicNode>>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = writeObject<PicNode>(a1, *a2 + v7, a3);
      ++v8;
      v7 += 16;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

unsigned __int16 *PicMgr::getPicNode(uint64_t a1, int a2, unsigned __int16 *a3)
{
  v6 = a3[2];
  if (PicMgr::canLookupPic(a1, a3))
  {
    v7 = *(a1 + 88);
    v8 = a3[1] + v7 * a3[2];
    v9 = a3[3] + v8 * v7;
    if (*(a1 + 144) == 3)
    {
      v8 = v9;
    }

    return (*(*(a1 + 152) + 16 * v6) + 4 * (*(*(a1 + 168) + 2 * v8) + a2));
  }

  else
  {
    v11 = (*(a1 + 128) + 16 * (a2 + *(a1 + 32) * v6));
    v12 = 0;
    return PicMgr::searchPicTree(a1, a3, v11, 0, &v12);
  }
}

BOOL PicMgr::canLookupPic(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 144);
  if (v2 == 1)
  {
    return 0;
  }

  if (*(a1 + 93) == 1 && (*(a2 + 10) || *(a2 + 11) != 1))
  {
    return 0;
  }

  v5 = *(*a1 + 56);
  if (*(a1 + 92) == 1 && (*a2 != v5 || a2[4] != v5))
  {
    return 0;
  }

  return v2 != 2 || v5 == a2[3];
}

unsigned __int16 *PicMgr::searchPicTree(uint64_t a1, unsigned __int16 *a2, uint64_t *a3, unsigned int a4, _DWORD *a5)
{
  v6 = *a3;
  result = (*a3 + 8 * a4);
  v8 = result[2];
  if (v8 != 0xFFFF)
  {
    v9 = 0;
    v10 = *(a2 + 11);
    v11 = *(a2 + 10);
    v12 = a2[4];
    v13 = *a2;
    v14 = a2[3];
    v15 = a2[1];
    while (1)
    {
      v16 = v8;
      v17 = *(a1 + 88) * v8;
      v18 = *(*(a1 + 96) + v16);
      if (v18 > 3)
      {
        if (v18 != 4)
        {
          if (v18 == 5)
          {
            if (!v11)
            {
              goto LABEL_19;
            }
          }

          else if (v18 != 6 || v10 == 0)
          {
            goto LABEL_19;
          }

LABEL_18:
          ++result;
          goto LABEL_19;
        }

        v19 = v17 + v12;
        goto LABEL_17;
      }

      if (v18 == 1)
      {
        break;
      }

      if (v18 == 2)
      {
        if (*(*(a1 + 112) + (v17 + v15)) != 1)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      if (v18 == 3)
      {
        v19 = v17 + v14;
        goto LABEL_17;
      }

LABEL_19:
      ++v9;
      result = (v6 + 8 * *result);
      v8 = result[2];
      if (v8 == 0xFFFF)
      {
        goto LABEL_26;
      }
    }

    v19 = v17 + v13;
LABEL_17:
    if (*(*(a1 + 112) + v19))
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v9 = 0;
LABEL_26:
  *a5 += v9;
  return result;
}

void *PicMgr::getPrefContextPelIdAndDurIds(void *result, int a2, int a3, uint64_t *a4, int a5, uint64_t a6, unsigned int a7, unsigned int a8, uint64_t a9)
{
  v9 = result;
  v10 = *(*result + 56);
  v11 = *(a6 + 2 * a8);
  if (a2 <= 1)
  {
    v14 = *(*result + 56);
    v12 = v14;
    v13 = v14;
    if (!a2)
    {
      goto LABEL_18;
    }

    v12 = *(*result + 56);
    v13 = v12;
    if (a2 == 1)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v12 = *(*result + 56);
  if (a2 != 2)
  {
    v12 = *(*result + 56);
    v13 = v12;
    if (a2 == 4)
    {
      goto LABEL_13;
    }

    if (a2 == 3)
    {
      v12 = *(*result + 56);
      if (a8 + 2 < a7)
      {
        v12 = *(a6 + 2 * (a8 + 2));
      }

      goto LABEL_7;
    }

LABEL_11:
    v14 = *(*result + 56);
    v12 = v14;
    v13 = v14;
    goto LABEL_20;
  }

LABEL_7:
  if (a8 < 2)
  {
    v13 = *(*result + 56);
  }

  else
  {
    v13 = *(a6 + 2 * (a8 - 2));
  }

LABEL_13:
  if (a8 + 1 >= a7)
  {
    v14 = *(*result + 56);
LABEL_18:
    if (!a8)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (a2 != 1 && !a8)
  {
    v14 = *(*result + 56);
    goto LABEL_20;
  }

  v14 = *(a6 + 2 * (a8 + 1));
  if (a8)
  {
LABEL_19:
    v10 = *(a6 + 2 * (a8 - 1));
  }

LABEL_20:
  LOBYTE(v15) = 0;
  LOBYTE(v16) = 0;
  if (a3 != 1)
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
        goto LABEL_33;
      }

      v17 = *a4;
      if (a8)
      {
        v15 = (*(v17 + 4 * ((a8 + a5 - 1) >> 5)) >> (a8 + a5 - 1)) & 1;
      }

      else
      {
        LOBYTE(v15) = 0;
      }

      v16 = (*(v17 + 4 * ((a8 + a5) >> 5)) >> (a8 + a5)) & 1;
    }

    if (a7 - 1 == a8)
    {
      LOBYTE(v16) = 1;
    }
  }

  if (!a8)
  {
    LOBYTE(v15) = 1;
  }

LABEL_33:
  v23[0] = v13;
  v23[1] = v10;
  v23[2] = v11;
  v23[3] = v14;
  v23[4] = v12;
  v24 = v15;
  v25 = v16;
  v18 = *(result[2] + v11);
  v19 = *(a9 + 12);
  if (v18 > v19)
  {
    result = DgnPrimArray<unsigned int>::reallocElts(a9, v18 - v19, 0);
  }

  *(a9 + 8) = v18;
  if (v18)
  {
    v20 = 0;
    v21 = 0;
    v22 = 4 * v18;
    do
    {
      result = PicMgr::getPicNode(v9, v21, v23);
      *(*a9 + v20) = *result;
      ++v21;
      v20 += 4;
    }

    while (v22 != v20);
  }

  return result;
}

uint64_t PicMgr::getEndDuplicatesLookup(uint64_t a1, unsigned int *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = a2[2];
  *(a6 + 8) = 0;
  v13 = *(a6 + 12);
  if (v12 > v13)
  {
    DgnPrimArray<unsigned int>::reallocElts(a6, v12 - v13, 0);
  }

  v14 = *(*a2 + 4);
  v15 = *(*(a1 + 16) + v14);
  v16 = *(a1 + 152);
  *(a5 + 8) = 0;
  v17 = *(a5 + 12);
  if (v12 > v17)
  {
    DgnPrimArray<short>::reallocElts(a5, v12 - v17, 0);
LABEL_6:
    v18 = 0;
    v19 = 0;
    while (1)
    {
      v20 = (*a2 + 12 * v18);
      v21 = *(a1 + 88);
      v22 = v20[1] + v21 * v20[2];
      v23 = v20[3] + v22 * v21;
      if (*(a1 + 144) != 3)
      {
        v23 = v22;
      }

      v24 = *(*(a1 + 168) + 2 * v23);
      v25 = *(a5 + 8);
      if (!v25)
      {
        break;
      }

      v26 = 0;
      LODWORD(v27) = -1;
      do
      {
        if (*(*a5 + 2 * v26) == v24)
        {
          v27 = v26;
        }

        else
        {
          v27 = v27;
        }

        ++v26;
      }

      while (v25 != v26);
      v28 = *a6;
      if (v27 == -1)
      {
        goto LABEL_18;
      }

      v25 = v27;
LABEL_22:
      v19 += v15;
      *(*a3 + 4 * v18++) = *(v28 + 4 * v25);
      if (v18 == v12)
      {
        return *(a5 + 8);
      }
    }

    v28 = *a6;
LABEL_18:
    *(*a5 + 2 * v25) = v24;
    *(a5 + 8) = v25 + 1;
    *(v28 + 4 * (*(a6 + 8))++) = v18;
    if (v15)
    {
      v29 = 4 * v24;
      v30 = v15;
      v31 = v19;
      do
      {
        *(*a4 + 4 * v31) = *(*(v16 + 16 * v14) + v29);
        v29 += 4;
        ++v31;
        --v30;
      }

      while (v30);
      v28 = *a6;
    }

    goto LABEL_22;
  }

  if (v12)
  {
    goto LABEL_6;
  }

  return *(a5 + 8);
}

uint64_t PicMgr::getEndDuplicatesSearch(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4, _DWORD *a5, uint64_t a6)
{
  v6 = a6;
  v10 = *(a2 + 2);
  *(a6 + 8) = 0;
  v11 = *(a6 + 12);
  if (v10 <= v11)
  {
    if (!v10)
    {
      return *(v6 + 8);
    }

    v13 = *a2;
  }

  else
  {
    DgnPrimArray<unsigned int>::reallocElts(a6, v10 - v11, 0);
    v13 = *a2;
  }

  v14 = *(v13 + 4);
  v15 = 0;
  v16 = 0;
  v17 = *(*(a1 + 16) + v14);
  v35 = 16 * v14;
  v37 = v10;
  v38 = v6;
  v40 = *(*(a1 + 16) + v14);
  do
  {
    if (v17)
    {
      LOWORD(v18) = 0;
      v19 = (*a2 + 12 * v15);
      v20 = v35 * *(a1 + 32);
      v21 = v40;
      v22 = v16;
      do
      {
        v23 = PicMgr::searchPicTree(a1, v19, (*(a1 + 128) + v20), v18, a5);
        v18 = v23[3];
        if (v18 == 0xFFFF)
        {
          LOWORD(v18) = 0;
        }

        *(*a4 + 4 * v22) = *v23;
        v20 += 16;
        ++v22;
        --v21;
      }

      while (v21);
    }

    v6 = v38;
    v24 = *(v38 + 8);
    v25 = *v38;
    v26 = 0;
    if (v24)
    {
      v27 = v37;
      v17 = v40;
      while (v40)
      {
        v28 = *(v25 + 4 * v26) * v40;
        v29 = *a4;
        v30 = v40;
        v31 = v16;
        while (1)
        {
          v32 = (v29 + 4 * v28);
          v33 = (v29 + 4 * v31);
          if (*v32 != *v33 || v32[1] != v33[1])
          {
            break;
          }

          ++v31;
          ++v28;
          if (!--v30)
          {
            goto LABEL_21;
          }
        }

        if (++v26 == v24)
        {
          v26 = *(v38 + 8);
          goto LABEL_24;
        }
      }

LABEL_21:
      v26 = v26;
    }

    else
    {
      v27 = v37;
      v17 = v40;
    }

    if (v26 == v24)
    {
LABEL_24:
      *(v25 + 4 * v24) = v15;
      ++*(v38 + 8);
    }

    v16 += v17;
    *(*a3 + 4 * v15++) = *(v25 + 4 * v26);
  }

  while (v15 != v27);
  return *(v6 + 8);
}

unsigned __int16 *PicMgr::getNodeDataPtrs(unsigned __int16 *result, uint64_t *a2, void *a3, unsigned __int16 *a4, _DWORD *a5, _DWORD *a6)
{
  v6 = a2;
  v7 = a4[2];
  if (a4[2])
  {
    v12 = result;
    v13 = *(*(result + 2) + v7);
    result = PicMgr::canLookupPic(result, a4);
    if (result)
    {
      if (v13)
      {
        v14 = *(v12 + 88);
        v15 = a4[1] + v14 * a4[2];
        v16 = a4[3] + v15 * v14;
        if (*(v12 + 144) == 3)
        {
          v17 = v16;
        }

        else
        {
          v17 = v15;
        }

        v18 = (*(*(v12 + 152) + 16 * v7) + 4 * *(*(v12 + 168) + 2 * v17));
        do
        {
          v19 = v18[1];
          if (v19 == 0xFFFF)
          {
            v25 = *v6;
            *(v25 + 10) = *v18;
            *v25 = 0;
            *(v25 + 8) = 0;
          }

          else
          {
            v20 = *(*a3 + 2 * v19);
            v21 = *(v12 + 8);
            v22 = *(v12 + 12);
            v23 = *v6;
            *(v23 + 10) = *v18;
            *(v23 + 8) = v21;
            *(v23 + 9) = v22;
            *(v23 + 4) = v20;
            *(v23 + 6) = v21 + v22 + v20;
            if (v20 < 0)
            {
              *(v23 + 9) = v22 - v20;
            }

            if (v20 >= 0)
            {
              v24 = v20 << 8;
            }

            else
            {
              v24 = 255 * v20;
            }

            *v23 = v24;
          }

          v18 += 2;
          ++v6;
          --v13;
        }

        while (v13);
      }
    }

    else
    {
      if (v13)
      {
        LOWORD(v27) = 0;
        v28 = 16 * v7 * *(v12 + 32);
        v29 = v13;
        do
        {
          result = PicMgr::searchPicTree(v12, a4, (*(v12 + 128) + v28), v27, a6);
          v27 = result[3];
          if (v27 == 0xFFFF)
          {
            LOWORD(v27) = 0;
          }

          v30 = result[1];
          if (v30 == 0xFFFF)
          {
            v36 = *v6;
            *(v36 + 10) = *result;
            *v36 = 0;
            *(v36 + 8) = 0;
          }

          else
          {
            v31 = *(*a3 + 2 * v30);
            v32 = *(v12 + 8);
            v33 = *(v12 + 12);
            v34 = *v6;
            *(v34 + 10) = *result;
            *(v34 + 8) = v32;
            *(v34 + 9) = v33;
            *(v34 + 4) = v31;
            *(v34 + 6) = v32 + v33 + v31;
            if (v31 < 0)
            {
              *(v34 + 9) = v33 - v31;
            }

            if (v31 >= 0)
            {
              v35 = v31 << 8;
            }

            else
            {
              v35 = 255 * v31;
            }

            *v34 = v35;
          }

          v28 += 16;
          ++v6;
          --v29;
        }

        while (v29);
      }

      *a5 += v13;
    }
  }

  else
  {
    v26 = *a2;
    *(v26 + 8) = 0;
    *v26 = 0;
  }

  return result;
}

uint64_t PicMgr::getNodeDataPtrsFromPicNodes(uint64_t result, uint64_t *a2, void *a3, uint64_t a4, unsigned int a5)
{
  if (a5)
  {
    v5 = a5;
    v6 = (a4 + 2);
    do
    {
      if (!*(v6 - 1) || (v7 = *v6, v7 == 0xFFFF))
      {
        v8 = 0;
        v9 = 0;
        LOWORD(v10) = 0;
      }

      else
      {
        v8 = *(*a3 + 2 * v7);
        v9 = *(result + 8);
        v10 = *(result + 12);
      }

      v11 = *a2;
      *(v11 + 10) = *(v6 - 1);
      *(v11 + 8) = v9;
      *(v11 + 9) = v10;
      *(v11 + 4) = v8;
      v12 = v8;
      *(v11 + 6) = v9 + v8 + v10;
      if (v8 < 0)
      {
        *(v11 + 9) = v10 - v8;
      }

      v13 = v8 << 8;
      if (v12 >= 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = 255 * v12;
      }

      *v11 = v14;
      v6 += 2;
      ++a2;
      --v5;
    }

    while (v5);
  }

  return result;
}

unint64_t PicMgr::getPelPhoneMap(unint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(result + 90);
  v7 = v6 + 1;
  v8 = *(a2 + 12);
  if (v8 <= v6)
  {
    result = DgnPrimArray<short>::reallocElts(a2, v7 - v8, 0);
  }

  *(a2 + 8) = v7;
  if (a3)
  {
    v9 = *(a3 + 12);
    if (v9 <= v6)
    {
      result = DgnPrimArray<unsigned int>::reallocElts(a3, v7 - v9, 0);
    }

    *(a3 + 8) = v7;
  }

  v10 = *(v5 + 136);
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = *(v5 + 32);
    v15 = *(v5 + 128);
    do
    {
      if (v11 != 0 && v11 % v14 == 0)
      {
        v13 = 0;
      }

      v12 += v11 != 0 && v11 % v14 == 0;
      v16 = (v15 + 16 * v11);
      v17 = v16[2];
      if (v17)
      {
        v18 = 0;
        v19 = (*v16 + 4);
        do
        {
          if (*v19 == -1)
          {
            v20 = *(v19 - 2);
            result = *a2;
            *(*a2 + 2 * v20) = v12;
            if (a3)
            {
              *(*a3 + 4 * v20) = v13;
              v17 = v16[2];
            }
          }

          ++v18;
          v19 += 4;
        }

        while (v18 < v17);
        v10 = *(v5 + 136);
      }

      ++v13;
      ++v11;
    }

    while (v11 < v10);
  }

  return result;
}

void *PicMgr::getPelDurIdMap(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 90);
  v5 = v4 + 1;
  v6 = *(a2 + 12);
  if (v6 <= v4)
  {
    DgnPrimArray<short>::reallocElts(a2, v5 - v6, 0);
  }

  *(a2 + 8) = v5;
  v7 = *a2;
  result = memset(v7, 255, 2 * v4 + 2);
  *v7 = 0;
  v9 = *(a1 + 136);
  if (v9)
  {
    v10 = 0;
    v11 = *(a1 + 128);
    do
    {
      v12 = (v11 + 16 * v10);
      v13 = v12[2];
      if (v13)
      {
        v14 = (*v12 + 2);
        do
        {
          if (v14[1] == -1)
          {
            v7[*(v14 - 1)] = *v14;
          }

          v14 += 4;
          --v13;
        }

        while (v13);
      }

      ++v10;
    }

    while (v10 != v9);
  }

  return result;
}

unint64_t PicMgr::getRightAndDoubleGenericPicNodes@<X0>(unint64_t this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v4 = this;
  v6 = *(*this + 56);
  v7 = **this - 2;
  v8 = v7 * a2 * v7;
  *a3 = 0;
  a3[1] = 0;
  if (v8)
  {
    this = DgnPrimArray<unsigned long long>::reallocElts(a3, v7 * a2 * v7, 0);
    *(a3 + 2) = v8;
    if (v8 >= 1)
    {
      v9 = v8 - 1;
      do
      {
        *(*a3 + 8 * v9) = 0;
        v10 = v9-- + 1;
      }

      while (v10 > 1);
    }
  }

  if (v7)
  {
    v11 = 0;
    v12 = *(v4 + 16);
    do
    {
      v13 = 0;
      do
      {
        v17[0] = v6;
        v17[1] = v11;
        v17[2] = v13;
        v17[3] = v6;
        v17[4] = v6;
        v14 = v13;
        v17[5] = 0;
        if (*(v12 + v13))
        {
          v15 = 0;
          v16 = a2 * (v7 * v11 + v13);
          do
          {
            this = PicMgr::getPicNode(v4, v15, v17);
            *(*a3 + 8 * (v16 + v15++)) = this;
            v12 = *(v4 + 16);
          }

          while (v15 < *(v12 + v14));
        }

        v13 = v14 + 1;
      }

      while (v7 > (v14 + 1));
      ++v11;
    }

    while (v7 > v11);
  }

  return this;
}

unint64_t DgnPrimArray<BOOL>::copyArraySlice(unint64_t result, uint64_t *a2, unsigned int a3, unsigned int a4)
{
  v7 = result;
  v8 = a4;
  if (*(result + 12) >= a4)
  {
    *(result + 8) = a4;
    if (!a4)
    {
      return result;
    }
  }

  else
  {
    v11 = 0;
    result = realloc_array(*result, &v11, a4, *(result + 8), *(result + 8), 1);
    *v7 = v11;
    *(v7 + 8) = a4;
    *(v7 + 12) = result;
  }

  v9 = *a2;
  v10 = *v7;
  do
  {
    *v10++ = *(v9 + a3++);
    --v8;
  }

  while (v8);
  return result;
}

uint64_t writeObject<Branch>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = Branch::writeObject(*a2 + v7, a1, a3);
      ++v8;
      v7 += 8;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

uint64_t writeObject<PicNode>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v10 = *(a2 + 8);
  result = writeObject(a1, &v10, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 2;
    do
    {
      v9 = (*a2 + v8);
      writeObject(a1, v9 - 1, a3);
      result = writeObject(a1, v9, a3);
      ++v7;
      v8 += 4;
    }

    while (v7 < *(a2 + 8));
  }

  return result;
}

uint64_t TResGraphMaker::clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 16);
  if (v2)
  {
    if (*(v2 + 344) == 1)
    {
      v3 = *(v2 + 64);
      if (v3 != v2 + 88 && v3 != 0)
      {
        MEMORY[0x26672B1B0]();
      }
    }

    v5 = *(v2 + 24);
    if (v5)
    {
      *(v2 + 32) = v5;
      operator delete(v5);
    }

    v6 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v6;
      operator delete(v6);
    }

    this = MEMORY[0x26672B1B0](v2, 0x1030C404962A615);
  }

  *(v1 + 16) = 0;
  return this;
}

void TResGraphMaker::add(TResGraphMaker *this, uint64_t **a2, int a3)
{
  v3 = a2;
  v4 = this;
  v5 = *(this + 2);
  if (!v5)
  {
    operator new();
  }

  v6 = (v5[1] - *v5) >> 4;
  v7 = a2[10];
  v8 = a2[11] - v7;
  v9 = v8 >> 3;
  if (v8)
  {
    if (v9 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v8 >> 3;
    }

    do
    {
      v11 = *v7++;
      v6 += *(v11 + 32) ^ 1;
      --v10;
    }

    while (v10);
  }

  v60 = -1;
  std::vector<unsigned long>::vector[abi:ne200100](__p, v9);
  v12 = *(v4 + 2);
  v13 = v12[7];
  *(__p[0] + *(*(v3 + 8) + 40)) = v13;
  std::vector<TPTokenState>::resize(v12, v6 - (v13 != 0));
  v14 = *(v4 + 2);
  v15 = *(v3 + 9);
  v16 = __p[0];
  *(__p[0] + *(v15 + 40)) = ((v14[1] - *v14) >> 4) - 1;
  v17 = *(v3 + 10);
  if (*(v3 + 11) != v17)
  {
    v18 = 0;
    v52 = v3;
    v53 = *(*(v3 + 8) + 24);
    v55 = v13 + 1;
    v59 = v4;
    while (1)
    {
      v19 = *(v17 + 8 * v18);
      if ((*(v19 + 32) & 1) == 0)
      {
        break;
      }

LABEL_51:
      ++v18;
      v17 = *(v3 + 10);
      if (v18 >= (*(v3 + 11) - v17) >> 3)
      {
        v15 = *(v3 + 9);
        goto LABEL_53;
      }
    }

    v20 = *(v19 + 40);
    if (v16[v20] == -1)
    {
      v16[v20] = v55++;
    }

    v56 = v14[3];
    v57 = v14[4];
    OutEdge = TVertex::getOutEdge(v19);
    if (!OutEdge)
    {
LABEL_44:
      v14 = *(v4 + 2);
      v16 = __p[0];
      v47 = (*v14 + 16 * *(__p[0] + *(v19 + 40)));
      v47[2] = (v57 - v56) >> 5;
      v47[3] = ((v14[4] - v14[3]) >> 5) - ((v57 - v56) >> 5);
      v48 = *(v19 + 16);
      if (v48)
      {
        v49 = v48 + a3 - v53;
      }

      else
      {
        v49 = -1;
      }

      *v47 = v49;
      v50 = *(v19 + 24);
      if (v50)
      {
        v51 = v50 + a3 - v53;
      }

      else
      {
        v51 = -1;
      }

      v47[1] = v51;
      goto LABEL_51;
    }

LABEL_14:
    v22 = *(OutEdge + 24);
    v23 = *(v22 + 40);
    v24 = __p[0];
    v25 = *(__p[0] + v23);
    if (v25 == -1)
    {
      *(__p[0] + v23) = v55;
      v25 = v24[*(v22 + 40)];
      ++v55;
    }

    v26 = *(*(v4 + 2) + 80);
    v27 = v24[*(v19 + 40)];
    v28 = *(OutEdge + 48);
    if (v28 <= 2)
    {
      if (v28)
      {
        if (v28 == 1)
        {
          v29 = 2;
          goto LABEL_27;
        }

        goto LABEL_25;
      }
    }

    else
    {
      if (v28 == 3)
      {
        goto LABEL_25;
      }

      if (v28 == 6)
      {
        v29 = 4;
LABEL_27:
        v58 = v29;
        TWord::getWordSpec(*(OutEdge + 56));
        v31 = v30;
        TLocaleInfo::unicodeToMultiByte(v59[1], **(OutEdge + 56), v59[2] + 64);
        v32 = v59[2];
        LOBYTE(v60) = 0;
        TBuffer<char>::insert(v32 + 64, *(v32 + 80), &v60, 1uLL);
        v33 = v59[2];
        v34 = v33[4];
        v35 = v33[5];
        if (v34 >= v35)
        {
          v37 = v33[3];
          v38 = (v34 - v37) >> 5;
          v39 = v38 + 1;
          if ((v38 + 1) >> 59)
          {
            std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
          }

          v40 = v35 - v37;
          if (v40 >> 4 > v39)
          {
            v39 = v40 >> 4;
          }

          if (v40 >= 0x7FFFFFFFFFFFFFE0)
          {
            v41 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v41 = v39;
          }

          if (v41)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<TPTokenTrans>>((v33 + 3), v41);
          }

          v42 = 32 * v38;
          *v42 = v26;
          *(v42 + 4) = v27;
          *(v42 + 8) = v25;
          *(v42 + 16) = v58;
          *(v42 + 24) = v31;
          v36 = 32 * v38 + 32;
          v43 = v33[3];
          v44 = v33[4] - v43;
          v45 = v42 - v44;
          memcpy((v42 - v44), v43, v44);
          v46 = v33[3];
          v33[3] = v45;
          v33[4] = v36;
          v33[5] = 0;
          if (v46)
          {
            operator delete(v46);
          }

          v3 = v52;
        }

        else
        {
          *v34 = v26;
          *(v34 + 4) = v27;
          *(v34 + 8) = v25;
          v36 = v34 + 32;
          *(v34 + 16) = v58;
          *(v34 + 24) = v31;
        }

        v4 = v59;
        v33[4] = v36;
        while (1)
        {
          OutEdge = *(OutEdge + 8);
          if (!OutEdge)
          {
            goto LABEL_44;
          }

          if ((*(OutEdge + 32) & 1) == 0)
          {
            goto LABEL_14;
          }
        }
      }

      if (v28 != 4)
      {
LABEL_25:
        v29 = 1;
        goto LABEL_27;
      }
    }

    v29 = 3;
    goto LABEL_27;
  }

LABEL_53:
  v14[7] = v16[*(v15 + 40)];
  __p[1] = v16;
  operator delete(v16);
}

void sub_2625B54EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<TPTokenState>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<TPTokenState>::__append(a1, a2 - v2);
  }
}

void TResGraphMaker::~TResGraphMaker(TResGraphMaker *this)
{
  *this = &unk_287527FA8;
  TResGraphMaker::clear(this);
}

{
  *this = &unk_287527FA8;
  TResGraphMaker::clear(this);

  JUMPOUT(0x26672B1B0);
}

{
  *this = &unk_287527FA8;
  TResGraphMaker::clear(this);
}

void std::vector<TPTokenState>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TPTokenState>>(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TPTokenState>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TPTokenTrans>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t StartupSearchCrossLayerParamSpecMgr(void)
{
  v0 = MemChunkAlloc(0x38uLL, 0);
  StringParamSpec::StringParamSpec(v0, "SearchCrossLayerThreshScoreIncrementMatrix", &byte_262899963, &byte_262899963, &sSearchCrossLayerThreshScoreIncrementMatrixStringHistory);
  v1 = MemChunkAlloc(0x38uLL, 0);
  StringParamSpec::StringParamSpec(v1, "SearchCrossLayerWordEndThreshScoreIncrementMatrix", &byte_262899963, &byte_262899963, &sSearchCrossLayerWordEndThreshScoreIncrementMatrixStringHistory);
  v2 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v2, "SearchCrossLayerUseBestSilence", &byte_262899963, &byte_262899963, &sSearchCrossLayerUseBestSilenceBoolHistory);
  ParamSpecMgr::addParam(qword_281051FC0, v0);
  ParamSpecMgr::addParam(qword_281051FC0, v2);
  ParamSpecMgr::addParam(qword_281051FC0, v1);
  v3 = qword_281051FC0;

  return ParamSpecMgr::sortParams(v3);
}

_DWORD *SearchCrossLayerParamSet::SearchCrossLayerParamSet(_DWORD *a1, const char *a2, int a3, int a4, int a5)
{
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 2), a2);
  a1[6] = a3;
  a1[7] = a4;
  a1[8] = a5;
  a1[9] = 0;
  *a1 = &unk_287524C00;
  DgnString::DgnString((a1 + 10));
  DgnString::DgnString((a1 + 16));
  (*(*a1 + 16))(a1);
  return a1;
}

void sub_2625B5944(_Unwind_Exception *a1)
{
  DgnString::~DgnString((v1 + 8));
  DgnString::~DgnString((v1 + 5));
  *v1 = v2;
  DgnString::~DgnString((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t SearchCrossLayerParamSet::SearchCrossLayerParamSet(uint64_t a1, _BYTE *a2, char *a3, int a4, int a5, int a6)
{
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 8), a3);
  *(a1 + 24) = a4;
  *(a1 + 28) = a5;
  *(a1 + 32) = a6;
  *(a1 + 36) = 0;
  *a1 = &unk_287524C00;
  DgnString::DgnString((a1 + 40));
  DgnString::DgnString((a1 + 64));
  DgnString::operator=((a1 + 40), (a2 + 40));
  *(a1 + 56) = a2[56];
  DgnString::operator=((a1 + 64), (a2 + 64));
  return a1;
}

void sub_2625B5A40(_Unwind_Exception *a1)
{
  DgnString::~DgnString((v1 + 5));
  *v1 = v2;
  DgnString::~DgnString((v1 + 1));
  _Unwind_Resume(a1);
}

DgnString *SearchCrossLayerParamSet::setDefaults(SearchCrossLayerParamSet *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Default_string = ParamSpecMgr::ParamGetDefault_string(qword_281051FC0, 1, 0, 0, a5, a6, a7, a8);
  DgnString::operator=((this + 40), Default_string);
  *(this + 56) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FC0, 2, 0, 0, v10, v11, v12, v13);
  v18 = ParamSpecMgr::ParamGetDefault_string(qword_281051FC0, 3, 0, 0, v14, v15, v16, v17);

  return DgnString::operator=((this + 64), v18);
}

uint64_t SearchCrossLayerParamSet::sizeObject(uint64_t a1, int a2)
{
  v4 = sizeObject(a1 + 8) + 16 * (a2 != 3);
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v5 = sizeObject(a1 + 40);
    v6 = sizeObject(a1 + 64);
    if (a2 == 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = v4 + 1;
    }

    return v7 + v5 + v6;
  }

  return v4;
}

void SearchCrossLayerParamSet::setParamSetSearchCrossLayerThreshScoreIncrementMatrix(SearchCrossLayerParamSet *this, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 9))
  {
    throwParamSetSetFailed("SearchCrossLayerThreshScoreIncrementMatrix", "string", a3, a4, a5, a6, a7, a8);
  }

  else
  {
    DgnString::operator=((this + 40), a2);
  }
}

void SearchCrossLayerParamSet::setParamSetSearchCrossLayerWordEndThreshScoreIncrementMatrix(SearchCrossLayerParamSet *this, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 9))
  {
    throwParamSetSetFailed("SearchCrossLayerWordEndThreshScoreIncrementMatrix", "string", a3, a4, a5, a6, a7, a8);
  }

  else
  {
    DgnString::operator=((this + 64), a2);
  }
}

uint64_t SearchCrossLayerParamSet::getBoolParameter(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == 3)
  {
    v8 = 3;
    goto LABEL_9;
  }

  if (a2 != 2)
  {
    if (a2 != 1)
    {
      throwWrongParamIdValue(a2, "BOOL", a3, a4, a5, a6, a7, a8);
      goto LABEL_13;
    }

    v8 = 1;
LABEL_9:
    throwWrongTypeForParamId(v8, "string", "BOOL", a4, a5, a6, a7, a8);
LABEL_13:
    v9 = 0;
    return v9 & 1;
  }

  if (a3 == 1)
  {
    ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051FC0, 2, a3, a4, a5, a6, a7, a8);
    v11 = **ParamByParamId;
  }

  else
  {
    if (a3)
    {
      throwWrongQueryMode(a3, "BOOL", a3, a4, a5, a6, a7, a8);
      goto LABEL_13;
    }

    v9 = *(a1 + 56);
  }

  return v9 & 1;
}

uint64_t SearchCrossLayerParamSet::getIntParameter(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 3:
      v8 = "string";
      v9 = 3;
      break;
    case 2:
      v8 = "BOOL";
      v9 = 2;
      break;
    case 1:
      v8 = "string";
      v9 = 1;
      break;
    default:
      throwWrongParamIdValue(a2, "int", a3, a4, a5, a6, a7, a8);
      return 0;
  }

  throwWrongTypeForParamId(v9, v8, "int", a4, a5, a6, a7, a8);
  return 0;
}

double SearchCrossLayerParamSet::getDoubleParameter(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 3:
      v8 = "string";
      v9 = 3;
      break;
    case 2:
      v8 = "BOOL";
      v9 = 2;
      break;
    case 1:
      v8 = "string";
      v9 = 1;
      break;
    default:
      throwWrongParamIdValue(a2, "double", a3, a4, a5, a6, a7, a8);
      return 0.0;
  }

  throwWrongTypeForParamId(v9, v8, "double", a4, a5, a6, a7, a8);
  return 0.0;
}

char *SearchCrossLayerParamSet::getStringParameter(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 != 3)
  {
    if (a2 == 2)
    {
      throwWrongTypeForParamId(2, "BOOL", "string", a4, a5, a6, a7, a8);
    }

    else
    {
      if (a2 == 1)
      {
        if (a3 != 1)
        {
          if (!a3)
          {
            v8 = *(a1 + 48);
            v9 = *(a1 + 40);
            goto LABEL_11;
          }

          goto LABEL_15;
        }

        v11 = qword_281051FC0;
        v12 = 1;
LABEL_20:
        ParamByParamId = ParamSpecMgr::getParamByParamId(v11, v12, a3, a4, a5, a6, a7, a8);
        v14 = **ParamByParamId;
      }

      throwWrongParamIdValue(a2, "string", a3, a4, a5, a6, a7, a8);
    }

    return 0;
  }

  if (a3 == 1)
  {
    v11 = qword_281051FC0;
    v12 = 3;
    goto LABEL_20;
  }

  if (a3)
  {
LABEL_15:
    throwWrongQueryMode(a3, "string", a3, a4, a5, a6, a7, a8);
    return 0;
  }

  v8 = *(a1 + 72);
  v9 = *(a1 + 64);
LABEL_11:
  if (v8)
  {
    return v9;
  }

  else
  {
    return &byte_262899963;
  }
}

uint64_t SearchCrossLayerParamSet::getEnumParameter(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a2)
  {
    case 3:
      v8 = "string";
      v9 = 3;
      break;
    case 2:
      v8 = "BOOL";
      v9 = 2;
      break;
    case 1:
      v8 = "string";
      v9 = 1;
      break;
    default:
      throwWrongParamIdValue(a2, "enum", a3, a4, a5, a6, a7, a8);
      return 0;
  }

  throwWrongTypeForParamId(v9, v8, "BOOL", a4, a5, a6, a7, a8);
  return 0;
}

void SearchCrossLayerParamSet::setBoolParameter(SearchCrossLayerParamSet *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (a2 == 3)
  {
    throwWrongTypeForParamId(3, "string", "BOOL", a4, a5, a6, a7, a8);
  }

  else
  {
    v9 = a3;
    if (a2 == 2)
    {
      goto LABEL_5;
    }

    if (a2 == 1)
    {
      throwWrongTypeForParamId(1, "string", "BOOL", a4, a5, a6, a7, a8);
LABEL_5:
      if (*(this + 9))
      {

        throwParamSetSetFailed("SearchCrossLayerUseBestSilence", "BOOL", a3, a4, a5, a6, a7, a8);
      }

      else
      {
        *(this + 56) = v9;
      }

      return;
    }
  }

  throwWrongParamIdValue(v8, "BOOL", a3, a4, a5, a6, a7, a8);
}

void SearchCrossLayerParamSet::setIntParameter(SearchCrossLayerParamSet *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (a2 != 3)
  {
    if (a2 != 2)
    {
      if (a2 != 1)
      {
        goto LABEL_7;
      }

      throwWrongTypeForParamId(1, "string", "int", a4, a5, a6, a7, a8);
    }

    throwWrongTypeForParamId(v8, "BOOL", "int", a4, a5, a6, a7, a8);
  }

  throwWrongTypeForParamId(v8, "string", "int", a4, a5, a6, a7, a8);
LABEL_7:

  throwWrongParamIdValue(v8, "int", a3, a4, a5, a6, a7, a8);
}

void SearchCrossLayerParamSet::setDoubleParameter(SearchCrossLayerParamSet *this, int a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a2;
  if (a2 != 3)
  {
    if (a2 != 2)
    {
      if (a2 != 1)
      {
        goto LABEL_7;
      }

      throwWrongTypeForParamId(1, "string", "double", a5, a6, a7, a8, a9);
    }

    throwWrongTypeForParamId(v9, "BOOL", "double", a5, a6, a7, a8, a9);
  }

  throwWrongTypeForParamId(v9, "string", "double", a5, a6, a7, a8, a9);
LABEL_7:

  throwWrongParamIdValue(v9, "double", a4, a5, a6, a7, a8, a9);
}

void SearchCrossLayerParamSet::setStringParameter(SearchCrossLayerParamSet *this, int a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 != 3)
  {
    if (a2 != 2)
    {
      if (a2 == 1)
      {

        SearchCrossLayerParamSet::setParamSetSearchCrossLayerThreshScoreIncrementMatrix(this, a3, a3, a4, a5, a6, a7, a8);
      }

      else
      {

        throwWrongParamIdValue(a2, "string", a3, a4, a5, a6, a7, a8);
      }

      return;
    }

    throwWrongTypeForParamId(2, "BOOL", "string", a4, a5, a6, a7, a8);
  }

  SearchCrossLayerParamSet::setParamSetSearchCrossLayerWordEndThreshScoreIncrementMatrix(this, a3, a3, a4, a5, a6, a7, a8);
}

void SearchCrossLayerParamSet::setEnumParameter(SearchCrossLayerParamSet *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (a2 != 3)
  {
    if (a2 != 2)
    {
      if (a2 != 1)
      {
        goto LABEL_7;
      }

      throwWrongTypeForParamId(1, "string", "BOOL", a4, a5, a6, a7, a8);
    }

    throwWrongTypeForParamId(v8, "BOOL", "BOOL", a4, a5, a6, a7, a8);
  }

  throwWrongTypeForParamId(v8, "string", "BOOL", a4, a5, a6, a7, a8);
LABEL_7:

  throwWrongParamIdValue(v8, "enum", a3, a4, a5, a6, a7, a8);
}

void SearchCrossLayerParamSet::~SearchCrossLayerParamSet(SearchCrossLayerParamSet *this)
{
  SearchCrossLayerParamSet::~SearchCrossLayerParamSet(this);

  JUMPOUT(0x26672B1B0);
}

{
  *this = &unk_287524C00;
  v2 = (this + 40);
  DgnString::~DgnString((this + 64));
  DgnString::~DgnString(v2);
  *this = &unk_287528C00;
  DgnString::~DgnString((this + 8));
}

void CharInfo::loadCharInfoFromText(CharInfo *this, DFile *a2)
{
  DgnTextFileParser::DgnTextFileParser(v35);
  DgnTextFileParser::openDgnTextFileParser(v35, a2, 0x5Au, 1);
  DgnTextFileParser::verifyMatchingFileType(v35, "CharInfo");
  v34[0] = 0;
  v34[1] = 0;
  DgnTextFile::legalDgnTextFileVersions(v35, sTCH_Versions, v34, v4, v5, v6, v7, v8);
  DgnTextFileParser::verifyFileVersionInRange(v35, v34, v9, v10, v11, v12, v13, v14);
  DgnString::DgnString(&v32);
  DgnTextFile::getHeaderField(v35, "CharType", &v32, 1);
  if (v33)
  {
    v15 = v32;
  }

  else
  {
    v15 = &unk_26286CDB4;
  }

  if (!strcmp(v15, "Char"))
  {
    v23 = 0;
LABEL_9:
    *this = v23;
    goto LABEL_10;
  }

  if (!strcmp(v15, "EncodedWideChar"))
  {
    v23 = 1;
    goto LABEL_9;
  }

  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/charinfo.cpp", 115, "word/charinfo", 6, "%.500s", v21, v22, v15);
LABEL_10:
  DgnTextFileParser::verifyNoUnknownHeaderFields(v35, v16, v17, v18, v19, v20, v21, v22);
  v31[0] = 0;
  v31[1] = 0;
  DgnTextFile::getLineFieldNames(v35, v31);
  v30[0] = 0;
  v30[1] = 0;
  DgnTextFile::getLineFieldFormats(v35, v30);
  DgnTextFileParser::verifyMatchingNumFieldSpecs(v35, 0, v24, v25, v26, v27, v28, v29);
  DgnTextFileParser::verifyNoBodyLines(v35);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v30);
  DgnArray<DgnString>::releaseAll(v31);
  DgnString::~DgnString(&v32);
  DgnIArray<Utterance *>::~DgnIArray(v34);
  DgnTextFileParser::~DgnTextFileParser(v35);
}

void sub_2625B655C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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
  DgnArray<DgnString>::releaseAll(va);
  DgnString::~DgnString(va1);
  DgnIArray<Utterance *>::~DgnIArray(va2);
  DgnTextFileParser::~DgnTextFileParser(va3);
  _Unwind_Resume(a1);
}

uint64_t CharInfo::loadCharInfo(CharInfo *this, char **a2, DFileChecksums *a3, int a4)
{
  if (DFile::subFileExists(a2, 0x5Au))
  {
    if ((a4 & 1) == 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/charinfo.cpp", 140, "word/charinfo", 8, "%s", v8, v9, &unk_26286CDB4);
    }

    CharInfo::loadCharInfoFromText(this, a2);
  }

  else
  {
    result = DFile::subFileExists(a2, 0xAu);
    if (!result)
    {
      return result;
    }

    if (a4)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/charinfo.cpp", 148, "word/charinfo", 9, "%s", v11, v12, &errStr_word_charinfo_E_LOADING_MIXED_TEXT_AND_BINARY_SUBFILES);
    }

    v19 = 0;
    v13 = OpenAndReadMrecHeader(a2, 0xAu, 1, "MRCHAR!?", &v19 + 1, &v19);
    if (*(a2 + 6))
    {
      v14 = a2[2];
    }

    else
    {
      v14 = &unk_26286CDB4;
    }

    MrecHeaderCheckVersions(v14, "MRCHAR!?", HIDWORD(v19), v19, 0x12u, 3u);
    MrecHeaderCheckLatestVersionIfShared(a2, "MRCHAR!?", SHIDWORD(v19), v19, 18, 3, v15, v16);
    v18 = 0;
    readObject(v13, this, &v18);
    readObjectChecksumAndVerify(v13, v18);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0xAu, v18);
    DgnDelete<DgnStream>(v13);
  }

  return 1;
}

void CharInfo::saveCharInfoToText(CharInfo *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v16);
  DgnTextFileWriter::openDgnTextFileWriter(v16, a2, 0x5Au, a3);
  v14 = 0;
  v15 = 0;
  DgnTextFile::legalDgnTextFileVersions(v16, sTCH_Versions, &v14, v6, v7, v8, v9, v10);
  DgnTextFileWriter::setFileType(v16, "CharInfo", (v14 + 8 * (v15 - 1)));
  v13[0] = 0;
  v13[1] = 0;
  v12[0] = 0;
  v12[1] = 0;
  DgnTextFileWriter::setLineFieldFormat(v16, v13, v12);
  if (*this)
  {
    v11 = "EncodedWideChar";
  }

  else
  {
    v11 = "Char";
  }

  DgnTextFileWriter::setHeaderField(v16, "CharType", v11);
  DgnArray<DgnString>::releaseAll(v12);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v13);
  DgnIArray<Utterance *>::~DgnIArray(&v14);
  DgnTextFileWriter::~DgnTextFileWriter(v16);
}

void sub_2625B684C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  DgnTextFileWriter::~DgnTextFileWriter(va);
  _Unwind_Resume(a1);
}

void CharInfo::saveCharInfo(CharInfo *this, DFile *a2, DFileChecksums *a3, int a4, int a5)
{
  if (a4)
  {

    CharInfo::saveCharInfoToText(this, a2, a5);
  }

  else
  {
    v8 = OpenAndWriteMrecHeader(a2, 0xAu, a5, "MRCHAR!?", 18, 3);
    v10 = 0;
    writeObject(v8, this, &v10);
    writeObjectChecksum(v8, &v10);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0xAu, v10);
    DgnDelete<DgnStream>(v8);
  }
}

void CharInfo::printSize(CharInfo *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/charinfo.cpp", 227, &v31);
  if (v32)
  {
    v15 = v31;
  }

  else
  {
    v15 = &unk_26286CDB4;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, v12, v13, v14, a3, &unk_26286CDB4, a3, &unk_26286CDB4, v15);
  DgnString::~DgnString(&v31);
  if (a2 != -1)
  {
    xlprintf("%d ", v16, v17, v18, v19, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v16, v17, v18, v19, a3, &unk_26286CDB4);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/charinfo.cpp", 229, &v31);
  if (v32)
  {
    v24 = v31;
  }

  else
  {
    v24 = &unk_26286CDB4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v20, v21, v22, v23, (a3 + 1), &unk_26286CDB4, (34 - a3), (34 - a3), v24, 4, 4, 0);
  DgnString::~DgnString(&v31);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/charinfo.cpp", 231, &v31);
  if (v32)
  {
    v29 = v31;
  }

  else
  {
    v29 = &unk_26286CDB4;
  }

  v30 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, v26, v27, v28, a3, &unk_26286CDB4, (35 - a3), (35 - a3), v29, *a4, *a5, *a6);
  DgnString::~DgnString(&v31);
}

void sub_2625B6AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

unint64_t CharInfo::decodeCharString(CharInfo *a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 0;
  v14 = 0;
  do
  {
    result = CharInfo::decodeOneChar(a1, v10, &v14, a4, a5, a6, a7, a8);
    v12 = result;
    v13 = *(a2 + 8);
    if (v13 == *(a2 + 12))
    {
      result = DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
      v13 = *(a2 + 8);
    }

    *(*a2 + 4 * v13) = v12;
    ++*(a2 + 8);
    v10 = (v14 + v10);
  }

  while (v12);
  return result;
}

uint64_t CharInfo::decodeOneChar(CharInfo *this, const unsigned __int8 *a2, _DWORD *a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v11 = *(this + a2);
  result = *(this + a2);
  if (v11 < 0)
  {
    v14 = a2;
    if ((result & 0xE0) == 0xC0)
    {
      if ((result & 0x1E) == 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/charinfo.cpp", 239, "word/charinfo", 10, "0x%02x %u %u %.500s", a7, a8, result);
        LOBYTE(v11) = *(this + v9);
      }

      v15 = v9 + 1;
      v16 = (v11 & 0x1F) << 6;
      v17 = *(this + v15);
      if ((v17 & 0xC0) != 0x80)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/charinfo.cpp", 239, "word/charinfo", 10, "0x%02x %u %u %.500s", a7, a8, v17);
        v17 = *(this + v15);
      }

      v13 = v9 + 2;
LABEL_38:
      result = v16 | v17 & 0x3Fu;
      goto LABEL_39;
    }

    if ((result & 0xF0) == 0xE0)
    {
      v18 = (a2 + 1);
      if ((result & 0xF) == 0xD)
      {
        v20 = *(this + v18);
        v24 = v20 & 0xE0;
        v19 = 53248;
      }

      else
      {
        if ((result & 0xF) == 0)
        {
          v19 = 0;
          v20 = *(this + v18);
          if ((v20 & 0xE0) == 0xA0)
          {
            goto LABEL_26;
          }

          goto LABEL_25;
        }

        v19 = (result & 0xF) << 12;
        v20 = *(this + v18);
        v24 = v20 & 0xC0;
      }

      if (v24 == 128)
      {
LABEL_26:
        v25 = v9 + 2;
        v16 = v19 | ((*(this + v18) & 0x3F) << 6);
        v17 = *(this + v25);
        if ((v17 & 0xC0) != 0x80)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/charinfo.cpp", 239, "word/charinfo", 10, "0x%02x %u %u %.500s", a7, a8, v17);
          v17 = *(this + v25);
        }

        v13 = v9 + 3;
        goto LABEL_38;
      }

LABEL_25:
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/charinfo.cpp", 239, "word/charinfo", 10, "0x%02x %u %u %.500s", a7, a8, v20);
      goto LABEL_26;
    }

    if ((result & 0xF8) != 0xF0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/charinfo.cpp", 239, "word/charinfo", 10, "0x%02x %u %u %.500s", a7, a8, result);
      result = 0;
      v13 = v9;
      goto LABEL_39;
    }

    v21 = result & 7;
    if (v21 == 4)
    {
      v14 = (a2 + 1);
      v26 = *(this + v14);
      if ((v26 & 0xF0) != 0x80)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/charinfo.cpp", 239, "word/charinfo", 10, "0x%02x %u %u %.500s", a7, a8, v26);
      }

      v23 = 0x100000;
    }

    else if ((result & 7) != 0)
    {
      if (v21 > 3)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/charinfo.cpp", 239, "word/charinfo", 10, "0x%02x %u %u %.500s", a7, a8, result);
        v23 = 0;
        v27 = v9;
        goto LABEL_33;
      }

      v14 = (a2 + 1);
      v23 = v21 << 18;
      v32 = *(this + v14);
      if ((v32 & 0xC0) != 0x80)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/charinfo.cpp", 239, "word/charinfo", 10, "0x%02x %u %u %.500s", a7, a8, v32);
      }
    }

    else
    {
      v14 = (a2 + 1);
      v22 = *(this + v14);
      if ((v22 & 0xC0) != 0x80 || (*(this + v14) & 0x30) == 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/charinfo.cpp", 239, "word/charinfo", 10, "0x%02x %u %u %.500s", a7, a8, v22);
      }

      v23 = 0;
    }

    v27 = v14;
LABEL_33:
    v28 = v27 + 1;
    v29 = v23 | ((*(this + v14) & 0x3F) << 12);
    v30 = *(this + v28);
    if ((v30 & 0xC0) != 0x80)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/charinfo.cpp", 239, "word/charinfo", 10, "0x%02x %u %u %.500s", a7, a8, v30);
      v30 = *(this + v28);
    }

    v31 = v27 + 2;
    v16 = v29 | ((v30 & 0x3F) << 6);
    v17 = *(this + v31);
    if ((v17 & 0xC0) != 0x80)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/charinfo.cpp", 239, "word/charinfo", 10, "0x%02x %u %u %.500s", a7, a8, v17);
      v17 = *(this + v31);
    }

    v13 = v27 + 3;
    goto LABEL_38;
  }

  v13 = a2 + 1;
LABEL_39:
  *a3 = v13 - v9;
  return result;
}

uint64_t CharInfo::getLogicalCharLengthsForEncodedCharString(CharInfo *a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = 0;
  result = CharInfo::decodeOneChar(a1, 0, &v19, a4, a5, a6, a7, a8);
  if (result)
  {
    LODWORD(v16) = 0;
    do
    {
      v17 = v19;
      v18 = *(a2 + 8);
      if (v18 == *(a2 + 12))
      {
        DgnPrimArray<char>::reallocElts(a2, 1, 1);
        v18 = *(a2 + 8);
      }

      *(*a2 + v18) = v17;
      ++*(a2 + 8);
      v16 = (v19 + v16);
      result = CharInfo::decodeOneChar(a1, v16, &v19, v11, v12, v13, v14, v15);
    }

    while (result);
  }

  return result;
}

uint64_t CharInfo::validateEncodedCharString(CharInfo *this, const unsigned __int8 *a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 0;
  v11 = 0;
  do
  {
    result = CharInfo::decodeOneChar(this, v9, &v11, a4, a5, a6, a7, a8);
    v9 = (v11 + v9);
  }

  while (result);
  return result;
}

void PrefilterResult::PrefilterResult(PrefilterResult *this, __int16 a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  *(this + 1) = a2;
  *(this + 3) = 0;
}

void PrefilterResult::~PrefilterResult(PrefilterResult *this)
{
  if (*this == 1)
  {
    PrefilterResult::adjustReferenceCounts(this, 0);
    *this = 0;
  }

  DgnDelete<Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>>(*(this + 3));
  *(this + 3) = 0;
  DgnIOwnArray<DgnArray<Germ> *>::releaseAll(this + 8);
}

uint64_t PrefilterResult::adjustReferenceCounts(PrefilterResult *this, int a2)
{
  v11 = 0;
  v12 = 0;
  PrefilterResult::getReferredWordIds(this, &v11);
  v4 = *(this + 1);
  v5 = **VocMgr::smpVocMgr;
  v6 = *(v5 + 8 * v4);
  if (a2)
  {
    Voc::addVocReferringPrefilterResultRef(*(v5 + 8 * v4));
  }

  else
  {
    Voc::removeVocReferringPrefilterResultRef(*(v5 + 8 * v4));
  }

  if (v12)
  {
    v7 = 0;
    do
    {
      v8 = *(v11 + 4 * v7);
      v9 = *(v6 + 48);
      if (a2)
      {
        WordList::addIncludingPrefilterResultRef(v9, v8);
      }

      else
      {
        WordList::removeIncludingPrefilterResultRef(v9, v8);
      }

      ++v7;
    }

    while (v7 < v12);
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v11);
}

void (***DgnDelete<Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>>(void (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    (**result)(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t PrefilterResult::sizeObject(uint64_t a1, int a2)
{
  v4 = sizeObject<DgnArray<Germ> *>(a1 + 8, a2);
  v5 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v5 = 4;
  }

  v6 = v4 + ((a2 != 3) | (2 * (a2 != 3)));
  if (a2 == 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  if (a2 != 2)
  {
    v8 = *(a1 + 24);
    if (!v8)
    {
      return v7 + v6;
    }

    v7 += Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>::sizeObject(v8, a2);
  }

  v9 = *(a1 + 24);
  v10 = v7 + v6;
  if (v9)
  {
    v10 += Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>::sizeObject(v9, a2);
  }

  return v10;
}

uint64_t sizeObject<DgnArray<Germ> *>(uint64_t a1, int a2)
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
          v9 += sizeObject<Germ>(v10, a2);
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

uint64_t PrefilterResult::setComplete(PrefilterResult *this)
{
  DgnDelete<Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>>(*(this + 3));
  *(this + 3) = 0;
  result = PrefilterResult::adjustReferenceCounts(this, 1);
  *this = 1;
  return result;
}

unint64_t PrefilterResult::cacheCopy(uint64_t a1, uint64_t a2)
{
  v4 = MemChunkAlloc(0x10uLL, 0);
  *v4 = 0;
  v4[1] = 0;
  result = DgnArray<Germ>::copyArraySlice(v4, a2, 0, *(a2 + 8));
  v6 = *(a1 + 16);
  if (v6 == *(a1 + 20))
  {
    result = DgnPrimArray<unsigned long long>::reallocElts(a1 + 8, 1, 1);
    v6 = *(a1 + 16);
  }

  *(*(a1 + 8) + 8 * v6) = v4;
  *(a1 + 16) = v6 + 1;
  return result;
}

uint64_t *PrefilterResult::clone(PrefilterResult *this)
{
  v2 = MemChunkAlloc(0x20uLL, 0);
  v3 = *(this + 1);
  v2[1] = 0;
  *v2 = 0;
  *(v2 + 1) = v3;
  v2[2] = 0;
  v2[3] = 0;
  if (*(this + 4))
  {
    v4 = 0;
    do
    {
      v5 = MemChunkAlloc(0x10uLL, 0);
      v6 = *(*(this + 1) + 8 * v4);
      *v5 = 0;
      v5[1] = 0;
      DgnArray<Germ>::copyArraySlice(v5, v6, 0, *(v6 + 8));
      v7 = *(v2 + 4);
      if (v7 == *(v2 + 5))
      {
        DgnPrimArray<unsigned long long>::reallocElts((v2 + 1), 1, 1);
        v7 = *(v2 + 4);
      }

      *(v2[1] + 8 * v7) = v5;
      *(v2 + 4) = v7 + 1;
      ++v4;
    }

    while (v4 < *(this + 4));
  }

  PrefilterResult::adjustReferenceCounts(v2, 1);
  *v2 = 1;
  return v2;
}

void PrefilterResult::copyIntoQueue(PrefilterResult *this, ReturnListQueue *a2)
{
  if (*(this + 4))
  {
    v4 = 0;
    do
    {
      v5 = v4 + 1;
      ReturnListQueue::enqueueCopy(a2, v4 + 1, *(*(this + 1) + 8 * v4));
      v4 = v5;
    }

    while (v5 < *(this + 4));
  }

  if (*this)
  {

    ReturnListQueue::setComplete(a2);
  }
}

void ReturnListQueue::enqueueCopy(uint64_t a1, int a2, uint64_t a3)
{
  v6 = MemChunkAlloc(0x10uLL, 0);
  *v6 = 0;
  v6[1] = 0;
  DgnArray<Germ>::copyArraySlice(v6, a3, 0, *(a3 + 8));

  ReturnListQueue::enqueue(a1, a2, v6);
}

uint64_t ReturnListQueue::setComplete(uint64_t this)
{
  v1 = this;
  v2 = *(this + 48);
  if (v2)
  {
    DgnDelete<Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>>(*(v2 + 3));
    *(v2 + 3) = 0;
    this = PrefilterResult::adjustReferenceCounts(v2, 1);
    *v2 = 1;
  }

  *v1 = 1;
  return this;
}

uint64_t PrefilterResult::initEmpty(PrefilterResult *this, int a2)
{
  v6[0] = 0;
  v6[1] = 0;
  if (a2)
  {
    v3 = a2;
    do
    {
      PrefilterResult::cacheCopy(this, v6);
      --v3;
    }

    while (v3);
  }

  if (!*(this + 3))
  {
    v4 = MemChunkAlloc(0x70uLL, 0);
    *(this + 3) = Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>::Hash(v4, 0, 16);
  }

  return DgnIArray<Utterance *>::~DgnIArray(v6);
}

uint64_t PrefilterResult::addEntry(PrefilterResult *this, unsigned int a2, unsigned int a3, int a4)
{
  v8 = *(this + 3);
  v18 = __PAIR64__(a2, a3);
  result = Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>::findBucket(v8, &v18);
  if (*result)
  {
    v10 = **(*(this + 1) + 8 * a2) + 8 * *(*result + 20);
    v11 = *(v10 + 4);
    if (v11 > a4 && a4 != 20000 && v11 != 20000)
    {
      *v10 = a3 | (a4 << 32);
    }
  }

  else
  {
    v14 = *(this + 3);
    v18 = __PAIR64__(a2, a3);
    v17 = *(*(*(this + 1) + 8 * a2) + 8);
    result = Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>::add(v14, &v18, &v17);
    v15 = *(*(this + 1) + 8 * a2);
    v16 = *(v15 + 8);
    if (v16 == *(v15 + 12))
    {
      result = DgnPrimArray<unsigned long long>::reallocElts(v15, 1, 1);
      v16 = *(v15 + 8);
    }

    *(*v15 + 8 * v16) = a3 | (a4 << 32);
    ++*(v15 + 8);
  }

  return result;
}

uint64_t Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>::add(uint64_t result, uint64_t *a2, _DWORD *a3)
{
  v5 = result;
  v6 = *(result + 12);
  if (*(result + 8) >= v6 >> 1)
  {
    result = HashKEV<unsigned int,unsigned int,CWIDScope>::upSize(result, 2 * v6);
  }

  v7 = *a2;
  HIDWORD(v8) = *a2;
  LODWORD(v8) = HIDWORD(v8);
  v9 = (v8 >> 19) + HIDWORD(*a2);
  v10 = *(v5 + 16);
  if (v10)
  {
    v11 = (-1640531527 * v9) >> -v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v5 + 80);
  v13 = *(v5 + 32);
  if (!v13)
  {
    result = DgnPool::addChunk((v5 + 24));
    v13 = *(v5 + 32);
    v7 = *a2;
  }

  v14 = (v12 + 8 * v11);
  *(v5 + 32) = *v13;
  *(v13 + 8) = 0;
  *(v13 + 12) = v7;
  *(v13 + 20) = *a3;
  *(v13 + 8) = v9;
  ++*(v5 + 8);
  if (*(v5 + 20))
  {
    *v13 = *v14;
  }

  else
  {
    *v13 = 0;
    v15 = *v14;
    if (*v14)
    {
      do
      {
        v14 = v15;
        v15 = *v15;
      }

      while (v15);
    }
  }

  *v14 = v13;
  return result;
}

uint64_t writeObject<short>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v7 = *(a2 + 8);
  writeObject(a1, &v7, a3);
  return writeObjectArray(a1, *a2, *(a2 + 8), a3);
}

void readObject<DgnPrimArray<unsigned int>>(DgnStream *a1, uint64_t a2, unsigned int *a3)
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
      readObject<unsigned int>(a1, *a2 + v14, a3);
      ++v15;
      v14 += 16;
    }

    while (v15 < *(a2 + 8));
  }
}

void readObject<DgnPrimArray<short>>(DgnStream *a1, uint64_t a2, unsigned int *a3)
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
      readObject<short>(a1, *a2 + v14, a3);
      ++v15;
      v14 += 16;
    }

    while (v15 < *(a2 + 8));
  }
}

void readObject<short>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v8 = 0;
  readObject(a1, &v8, a3);
  v6 = v8;
  v7 = *(a2 + 12);
  if (v8 > v7)
  {
    DgnPrimArray<short>::reallocElts(a2, v8 - v7, 0);
  }

  *(a2 + 8) = v6;
  readObjectArray(a1, *a2, v6, a3);
}

uint64_t writeObject<PrefilterResultFrame>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v10 = *(a2 + 8);
  result = writeObject(a1, &v10, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 16;
    do
    {
      v9 = *a2 + v8;
      writeObject<unsigned int>(a1, v9 - 16, a3);
      result = writeObject<short>(a1, v9, a3);
      ++v7;
      v8 += 32;
    }

    while (v7 < *(a2 + 8));
  }

  return result;
}

unint64_t PrefilterResult::fillPrefilterResultData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 16);
  v11 = *(a2 + 20);
  if (v10 > v11)
  {
    DgnArray<PrefilterResultFrame>::reallocElts(a2 + 8, v10 - v11, 0);
  }

  v12 = *(a2 + 16);
  if (v12 <= v10)
  {
    if (v12 < v10)
    {
      v16 = v10 - v12;
      v17 = 32 * v12;
      do
      {
        v18 = (*(a2 + 8) + v17);
        *v18 = 0uLL;
        v18[1] = 0uLL;
        v17 += 32;
        --v16;
      }

      while (v16);
    }
  }

  else if (v12 > v10)
  {
    v13 = v12;
    v14 = 32 * v12 - 32;
    do
    {
      --v13;
      v15 = *(a2 + 8) + v14;
      DgnPrimArray<unsigned int>::~DgnPrimArray(v15 + 16);
      DgnPrimArray<unsigned int>::~DgnPrimArray(v15);
      v14 -= 32;
    }

    while (v13 > v10);
  }

  *(a2 + 16) = v10;
  result = VocMgr::getVocOrThrow(VocMgr::smpVocMgr, *(a1 + 2), a3, a4, a5, a6, a7, a8);
  *a2 = *(*(result + 48) + 376);
  v20 = *(a1 + 16);
  if (v20)
  {
    for (i = 0; i < v20; ++i)
    {
      v22 = *(*(a1 + 8) + 8 * i);
      v23 = *(v22 + 8);
      if (v23)
      {
        v24 = 0;
        v25 = 8 * v23;
        do
        {
          v26 = (*v22 + v24);
          v27 = *v26;
          v28 = *(v26 + 2);
          v29 = *(a2 + 8);
          v30 = v29 + 32 * i;
          v31 = *(v30 + 8);
          if (v31 == *(v30 + 12))
          {
            result = DgnPrimArray<unsigned int>::reallocElts(v29 + 32 * i, 1, 1);
            v31 = *(v30 + 8);
            v29 = *(a2 + 8);
          }

          *(*v30 + 4 * v31) = v27 & 0xFFFFFF;
          ++*(v30 + 8);
          v32 = v29 + 32 * i;
          v33 = *(v32 + 24);
          if (v33 == *(v32 + 28))
          {
            result = DgnPrimArray<short>::reallocElts(v32 + 16, 1, 1);
            v33 = *(v32 + 24);
          }

          v24 += 8;
          *(*(v32 + 16) + 2 * v33) = v28;
          *(v32 + 24) = v33 + 1;
        }

        while (v25 != v24);
        v20 = *(a1 + 16);
      }
    }
  }

  return result;
}

void PrefilterResult::savePrefilterResult(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  DFileOwner::DFileOwner(v18);
  *a3 = 1;
  v6 = DFile::openDFile(a2, 1, 11, v18);
  *a3 = 2;
  v7 = OpenAndWriteMrecHeader(v6, 0x43u, 1, "MRPRB!? ", 24, 6);
  v17 = 0;
  v16[0] = 0;
  v16[1] = 0;
  PrefilterResult::fillPrefilterResultData(a1, &v15, v8, v9, v10, v11, v12, v13);
  writeObject(v7, &v15, &v17);
  writeObjectChecksum(v7, &v17);
  DgnDelete<DgnStream>(v7);
  DFileOwner::setRemoveFileOnDestruction(v18, 0);
  *a3 = 0;
  DgnArray<PrefilterResultFrame>::releaseAll(v16);
  DFileOwner::~DFileOwner(v18, v14);
}

void sub_2625B8068(_Unwind_Exception *a1, DFile **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  DFileOwner::~DFileOwner(va, a2);
  _Unwind_Resume(a1);
}

uint64_t PrefilterResult::getReferredWordIds(uint64_t a1, uint64_t a2)
{
  HashKEV<unsigned int,unsigned int,WordIdScope>::HashKEV(v24, 0, 16);
  v4 = *(a1 + 16);
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *(*(a1 + 8) + 8 * i);
      v7 = *(v6 + 8);
      if (v7)
      {
        for (j = 0; j < v7; ++j)
        {
          v9 = *(*v6 + 8 * j);
          v23 = v9 & 0xFFFFFF;
          v10 = *(*(*(*(**VocMgr::smpVocMgr + ((v9 >> 22) & 0x3F8)) + 48) + 256) + 4 * (v9 & 0xFFFFFF));
          v23 = v10;
          if (v27)
          {
            v11 = (-1640531527 * v10) >> -v27;
          }

          else
          {
            v11 = 0;
          }

          v12 = v28[v11];
          if (v12)
          {
            while (*(v12 + 2) != v10 || *(v12 + 3) != v10)
            {
              v12 = *v12;
              if (!v12)
              {
                goto LABEL_12;
              }
            }
          }

          else
          {
LABEL_12:
            HashKEV<unsigned int,unsigned int,CWIDScope>::add(v24, &v23);
            v7 = *(v6 + 8);
          }
        }

        v4 = *(a1 + 16);
      }
    }
  }

  v13 = *(a2 + 12);
  if (v25 > v13)
  {
    DgnPrimArray<unsigned int>::reallocElts(a2, v25 - v13, 0);
  }

  if (v26)
  {
    v14 = *v28;
    if (!*v28)
    {
      v15 = 0;
      do
      {
        if (v26 - 1 == v15)
        {
          return HashKEV<unsigned int,unsigned int,WordIdScope>::~HashKEV(v24);
        }

        v14 = v28[++v15];
      }

      while (!v14);
      goto LABEL_26;
    }
  }

  else
  {
    v14 = 0;
  }

  LODWORD(v15) = 0;
LABEL_26:
  if (v15 >= v26)
  {
    return HashKEV<unsigned int,unsigned int,WordIdScope>::~HashKEV(v24);
  }

  v16 = *(a2 + 8);
  while (1)
  {
    v17 = *(v14 + 3);
    if (v16 == *(a2 + 12))
    {
      DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
      v16 = *(a2 + 8);
    }

    *(*a2 + 4 * v16) = v17;
    v16 = *(a2 + 8) + 1;
    *(a2 + 8) = v16;
    v18 = *v14;
    if (*v14)
    {
      goto LABEL_38;
    }

    v15 = (v15 + 1);
    if (v15 >= v26)
    {
      v18 = v14;
      goto LABEL_38;
    }

    v18 = v28[v15];
    if (!v18)
    {
      break;
    }

LABEL_38:
    v14 = v18;
    if (v15 >= v26)
    {
      return HashKEV<unsigned int,unsigned int,WordIdScope>::~HashKEV(v24);
    }
  }

  v19 = &v28[v15 + 1];
  v20 = ~v15 + v26;
  while (v20)
  {
    v21 = *v19++;
    v18 = v21;
    LODWORD(v15) = v15 + 1;
    --v20;
    if (v21)
    {
      goto LABEL_38;
    }
  }

  return HashKEV<unsigned int,unsigned int,WordIdScope>::~HashKEV(v24);
}

void sub_2625B82C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HashKEV<unsigned int,unsigned int,WordIdScope>::~HashKEV(va);
  _Unwind_Resume(a1);
}

void ReturnListQueue::ReturnListQueue(ReturnListQueue *this, PrefilterResult *a2, __int16 a3)
{
  *this = 0;
  *(this + 4) = 4294967280;
  DgnPrimQueue<DgnArray<Germ> *,DgnIOwnArray<DgnArray<Germ> *>>::DgnPrimQueue(this + 16);
  *(this + 6) = a2;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 8) = 0;
  *(this + 56) = 0;
  *(this + 29) = a3;
}

uint64_t ReturnListQueue::ReturnListQueue(uint64_t a1, uint64_t a2, int a3, __int16 a4)
{
  *a1 = 0;
  *(a1 + 4) = 4294967280;
  DgnPrimQueue<DgnArray<Germ> *,DgnIOwnArray<DgnArray<Germ> *>>::DgnPrimQueue(a1 + 16);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  v8 = a1 + 56;
  *(a1 + 58) = a4;
  *(a1 + 80) = 0;
  if (!a3)
  {
    v8 = 0;
  }

  if (a2)
  {
    v8 = a2;
  }

  *(a1 + 48) = v8;
  return a1;
}

uint64_t ReturnListQueue::getNextFrameTime(ReturnListQueue *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    return (*(this + 10) + v1);
  }

  else
  {
    return 1;
  }
}

void ReturnListQueue::enqueue(uint64_t a1, int a2, uint64_t a3)
{
  if (!*(a1 + 8))
  {
    *(a1 + 8) = a2;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    PrefilterResult::cacheCopy(v5, a3);
  }

  DgnPrimQueue<DgnArray<Germ> *,DgnIOwnArray<DgnArray<Germ> *>>::enqueue(a1 + 16, a3);
}

void DgnPrimQueue<DgnArray<Germ> *,DgnIOwnArray<DgnArray<Germ> *>>::enqueue(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 8);
  if (v4 == v5)
  {
    v6 = *(a1 + 12);
    if (v4 == v6)
    {
      DgnPrimArray<unsigned long long>::reallocElts(a1, 1, 1);
      v4 = *(a1 + 8);
      v6 = *(a1 + 12);
    }

    *(*a1 + 8 * v4) = 0;
    v7 = v4 + 1;
    *(a1 + 8) = v7;
    if (v7 <= v6)
    {
      if (v7 < v6)
      {
        do
        {
          *(*a1 + 8 * v7++) = 0;
        }

        while (v6 != v7);
      }
    }

    else
    {
      DgnIOwnArray<DgnArray<Germ> *>::destructAt(a1, v6, v7 - v6);
    }

    *(a1 + 8) = v6;
    v8 = *(a1 + 24);
    v9 = v6 - v8;
    if (v8)
    {
      v10 = *(a1 + 16);
      if (v10)
      {
        memmove((*a1 + 8 * v10 + 8 * v9), (*a1 + 8 * v10), 8 * (v8 - v10));
        v8 = *(a1 + 20);
        *(a1 + 16) += v9;
      }

      else
      {
        *(a1 + 20) = v8;
      }
    }

    else
    {
      *(a1 + 16) = 0;
    }

    bzero((*a1 + 8 * v8), 8 * v9);
    v5 = *(a1 + 8);
    v4 = *(a1 + 24);
  }

  v11 = *(a1 + 20);
  *(*a1 + 8 * v11) = a2;
  if (v11 + 1 == v5)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11 + 1;
  }

  *(a1 + 20) = v12;
  *(a1 + 24) = v4 + 1;
}

uint64_t ReturnListQueue::dequeue(ReturnListQueue *this, int *a2)
{
  if (!*(this + 10))
  {
    return 0;
  }

  v2 = *(this + 2);
  if (a2)
  {
    *a2 = v2;
  }

  *(this + 2) = v2 + 1;
  return DgnPrimQueue<DgnArray<Germ> *,DgnIOwnArray<DgnArray<Germ> *>>::dequeue(this + 16);
}

uint64_t DgnPrimQueue<DgnArray<Germ> *,DgnIOwnArray<DgnArray<Germ> *>>::dequeue(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*a1 + 8 * v1);
  *(*a1 + 8 * v1) = 0;
  v3 = v1 + 1;
  *(a1 + 16) = v3;
  v4 = *(a1 + 24) - 1;
  *(a1 + 24) = v4;
  if (v4)
  {
    v5 = *(a1 + 8);
    v6 = v3 >= v5;
    v7 = v3 - v5;
    if (v6)
    {
      *(a1 + 16) = v7;
    }
  }

  else
  {
    *(a1 + 16) = 0;
  }

  return v2;
}

void ReturnListQueue::copyIntoQueue(ReturnListQueue *this, ReturnListQueue *a2)
{
  v4 = *(this + 8);
  v5 = *(this + 10);
  v6 = *(this + 6);
  v7 = v5 != 0;
  v8 = 0;
  if (v4 < v6 && v5 != 0)
  {
    while (1)
    {
      v11 = *(this + 1);
      v12 = *(a2 + 2);
      if (v12)
      {
        break;
      }

      if (v11 == 1)
      {
        goto LABEL_17;
      }

LABEL_18:
      ReturnListQueue::enqueueCopy(a2, v8 + *(this + 2), *(*(this + 2) + 8 * v4));
      ++v8;
      ++v4;
      v7 = v8 < v5;
      if (v4 >= v6 || v8 >= v5)
      {
        goto LABEL_6;
      }
    }

    if (v11 != *(a2 + 10) + v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    *(a2 + 1) = v11;
    goto LABEL_18;
  }

LABEL_6:
  if (v7 && v5 != v8)
  {
    v13 = 0;
    v14 = v5 - v8;
    while (1)
    {
      v15 = *(this + 1);
      v16 = *(a2 + 2);
      if (!v16)
      {
        break;
      }

      if (v15 == *(a2 + 10) + v16)
      {
        goto LABEL_25;
      }

LABEL_26:
      ReturnListQueue::enqueueCopy(a2, v8 + *(this + 2), *(*(this + 2) + v13));
      ++v8;
      v13 += 8;
      if (!--v14)
      {
        goto LABEL_11;
      }
    }

    if (v15 != 1)
    {
      goto LABEL_26;
    }

LABEL_25:
    *(a2 + 1) = v15;
    goto LABEL_26;
  }

LABEL_11:
  if (*this == 1)
  {

    ReturnListQueue::setComplete(a2);
  }
}

void *ReturnListQueue::clear(ReturnListQueue *this)
{
  *(this + 2) += *(this + 10);
  result = DgnIOwnArray<DgnArray<Germ> *>::releaseAll(this + 16);
  *(this + 10) = 0;
  *(this + 4) = 0;
  return result;
}

void *ReturnListQueue::reset(ReturnListQueue *this)
{
  result = DgnIOwnArray<DgnArray<Germ> *>::releaseAll(this + 16);
  *(this + 10) = 0;
  *(this + 4) = 0;
  *this = 0;
  *(this + 4) = 4294967280;
  *(this + 6) = 0;
  return result;
}

uint64_t ReturnListQueue::sizeObject(uint64_t a1, unsigned int a2)
{
  v4 = DgnPrimQueue<DgnArray<Germ> *,DgnIOwnArray<DgnArray<Germ> *>>::sizeObject(a1 + 16, a2);
  v5 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v5 = 4;
  }

  if (a2 == 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  if (a2 != 2)
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      v6 += PrefilterResult::sizeObject(v7, a2);
    }
  }

  return ((a2 != 3) | (8 * (a2 != 3))) + v4 + v6;
}

void *DgnArray<PrefilterResultFrame>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 32 * v2 - 16;
    do
    {
      v4 = *a1 + v3;
      v5 = v4 - 16;
      DgnPrimArray<unsigned int>::~DgnPrimArray(v4);
      DgnPrimArray<unsigned int>::~DgnPrimArray(v5);
      v3 -= 32;
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

void *DgnIOwnArray<DgnArray<Germ> *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<DgnArray<Germ>>(*(*a1 + v3));
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

uint64_t DgnIOwnArray<DgnArray<Germ> *>::destructAt(uint64_t result, int a2, int a3)
{
  if (a3 + a2 > a2)
  {
    v3 = result;
    v4 = a2;
    v5 = a3 + a2 - 1;
    do
    {
      result = DgnDelete<DgnArray<Germ>>(*(*v3 + 8 * v5));
      *(*v3 + 8 * v5) = 0;
    }

    while (v5-- > v4);
  }

  return result;
}

uint64_t DgnDelete<DgnArray<Germ>>(uint64_t result)
{
  if (result)
  {
    v1 = DgnIArray<Utterance *>::~DgnIArray(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t sizeObject<Germ>(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  v2 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 12;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v3 = *(a1 + 8);
    v4 = 6 * v3;
    if (v3 <= 0)
    {
      v4 = 0;
    }

    v2 += v4;
    if (!a2)
    {
      v2 += 8 * (*(a1 + 12) - v3);
    }
  }

  return v2;
}

uint64_t Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>::sizeObject(uint64_t a1, int a2)
{
  v4 = sizeObject(a1 + 24);
  if (a2 == 3)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = 12;
    v6 = 8;
    if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
    {
      v6 = 12;
    }

    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v7 = 2;
      if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
      {
        v7 = 3;
      }

      v6 += *(a1 + 88) << v7;
      v5 = 12;
    }
  }

  v8 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v8 = 8;
  }

  if (a2 == 3)
  {
    v8 = 0;
    v9 = v4;
  }

  else
  {
    v9 = v4 + 1;
  }

  return v9 + v5 + v6 + v8;
}

unint64_t DgnArray<Germ>::copyArraySlice(unint64_t result, void *a2, unsigned int a3, unsigned int a4)
{
  v7 = result;
  *(result + 8) = 0;
  v8 = *(result + 12);
  if (a4 <= v8)
  {
    v9 = 0;
    v10 = 0;
    if (!a4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    result = DgnPrimArray<unsigned long long>::reallocElts(result, a4 - v8, 0);
    v9 = *(v7 + 8);
  }

  v11 = a4;
  v10 = v9;
  do
  {
    *(*v7 + 8 * v10) = *(*a2 + 8 * a3);
    v10 = *(v7 + 8) + 1;
    *(v7 + 8) = v10;
    ++a3;
    --v11;
  }

  while (v11);
LABEL_6:
  if (v10 < a4)
  {
    v12 = a4 - v10;
    v13 = *v7 + 8 * v10 + 6;
    do
    {
      *(v13 - 6) = 4211081215;
      v13 += 8;
      --v12;
    }

    while (v12);
  }

  *(v7 + 8) = a4;
  return result;
}

uint64_t Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>::Hash(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_2875241F8;
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
    v7 = 20;
  }

  else
  {
    v7 = 24;
  }

  *(a1 + 24) = 32;
  *(a1 + 28) = v7;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_2625B8C90(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>::~Hash(uint64_t a1)
{
  Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>::~Hash(a1);

  JUMPOUT(0x26672B1B0);
}

uint64_t Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>::~Hash(uint64_t a1)
{
  *a1 = &unk_2875241F8;
  if (*(a1 + 8))
  {
    Hash<StateSpec,StateSpec,StateSpec,BOOL>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  return MrecInitModule_sdpres_sdapi();
}

uint64_t **Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>::findBucket(uint64_t a1, _DWORD *a2)
{
  v2 = a2[1];
  HIDWORD(v3) = *a2;
  LODWORD(v3) = *a2;
  v4 = (v3 >> 19) + v2;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (-1640531527 * v4) >> -v5;
  }

  else
  {
    v6 = 0;
  }

  result = (*(a1 + 80) + 8 * v6);
  v8 = *result;
  if (*result)
  {
    do
    {
      v9 = v8;
      if (*(v8 + 2) == v4 && *(v8 + 4) == v2 && *(v8 + 3) == *a2)
      {
        break;
      }

      v8 = *v8;
      result = v9;
    }

    while (*v9);
  }

  return result;
}

unint64_t DgnArray<PrefilterResultFrame>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 32 * v6, 32 * v5, 32 * v5, 1);
  *(a1 + 12) = result >> 5;
  *a1 = v8;
  return result;
}

uint64_t HashKEV<unsigned int,unsigned int,WordIdScope>::HashKEV(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_287523A78;
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

void sub_2625B8F00(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void HashKEV<unsigned int,unsigned int,WordIdScope>::~HashKEV(uint64_t a1)
{
  HashKEV<unsigned int,unsigned int,WordIdScope>::~HashKEV(a1);

  JUMPOUT(0x26672B1B0);
}

uint64_t HashKEV<unsigned int,unsigned int,WordIdScope>::~HashKEV(uint64_t a1)
{
  *a1 = &unk_287523A78;
  if (*(a1 + 8))
  {
    HashKEV<unsigned int,unsigned int,CWIDScope>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  return MrecInitModule_sdpres_sdapi();
}

uint64_t DgnPrimQueue<DgnArray<Germ> *,DgnIOwnArray<DgnArray<Germ> *>>::DgnPrimQueue(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  DgnIOwnArray<DgnArray<Germ> *>::releaseAll(a1);
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  return a1;
}

uint64_t DgnPrimQueue<DgnArray<Germ> *,DgnIOwnArray<DgnArray<Germ> *>>::sizeObject(uint64_t a1, unsigned int a2)
{
  v4 = sizeObject<DgnArray<Germ> *>(a1, a2);
  v5 = 12;
  if (a2 == 3)
  {
    v5 = 0;
  }

  v6 = v5 + v4;
  if (a2 > 3 || a2 == 1)
  {
    v8 = *(a1 + 8);
    if (*(a1 + 24) < v8)
    {
      v9 = 0;
      v11 = *(a1 + 16);
      v10 = *(a1 + 20);
      do
      {
        if (v10 >= v11)
        {
          if (v9 >= *(a1 + 16) && v9 < *(a1 + 20))
          {
            goto LABEL_15;
          }
        }

        else if (v9 < *(a1 + 20) || v9 >= *(a1 + 16))
        {
          goto LABEL_15;
        }

        v6 -= DgnIOwnArray<DgnArray<Germ> *>::sizeMaybeOwnedArrayItem(a1, v9, a2);
        v8 = *(a1 + 8);
LABEL_15:
        ++v9;
      }

      while (v9 < v8);
    }
  }

  return v6;
}

uint64_t DgnIOwnArray<DgnArray<Germ> *>::sizeMaybeOwnedArrayItem(void *a1, unsigned int a2, int a3)
{
  v3 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v3 = 4;
  }

  if (a3 == 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  if (a3 != 2)
  {
    v5 = *(*a1 + 8 * a2);
    if (v5)
    {
      v4 += sizeObject<Germ>(v5, a3);
    }
  }

  return v4;
}

uint64_t TState::getTransCount(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8 * a2 + 16);
  if (!v2)
  {
    return 0;
  }

  result = 0;
  do
  {
    ++result;
    v2 = *(v2 + 8 * a2 + 32);
  }

  while (v2);
  return result;
}

void TFsa::TFsa(TFsa *this)
{
  TAllocator::TAllocator(this, 2048);
  v1[3] = 0u;
  *(v1 + 104) = 0u;
  v1[4] = 0u;
  v1[5] = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0u;
  *(v1 + 184) = 0u;
  TFsa::clear(v1);
}

void sub_2625B91F0(_Unwind_Exception *a1)
{
  v5 = 0;
  while (1)
  {
    v6 = *(v1 + v5 + 176);
    if (v6)
    {
      *(v1 + v5 + 184) = v6;
      operator delete(v6);
    }

    v5 -= 24;
    if (v5 == -48)
    {
      v7 = *(v1 + 16);
      if (v7)
      {
        *(v1 + 17) = v7;
        operator delete(v7);
      }

      v8 = *v3;
      if (*v3)
      {
        *(v1 + 14) = v8;
        operator delete(v8);
      }

      v9 = *(v1 + 9);
      if (v9)
      {
        *(v1 + 10) = v9;
        operator delete(v9);
      }

      v10 = *v2;
      if (*v2)
      {
        *(v1 + 7) = v10;
        operator delete(v10);
      }

      TAllocator::clear(v1);
      _Unwind_Resume(a1);
    }
  }
}

void *TFsa::clear(TFsa *this)
{
  result = TAllocator::clear(this);
  *(this + 14) = *(this + 13);
  *(this + 7) = *(this + 6);
  *(this + 20) = *(this + 19);
  *(this + 23) = *(this + 22);
  *(this + 10) = *(this + 9);
  *(this + 17) = *(this + 16);
  *(this + 12) = 0;
  *(this + 5) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 25) = 0;
  return result;
}

void TFsa::~TFsa(TFsa *this)
{
  for (i = 0; i != -48; i -= 24)
  {
    v3 = *(this + i + 176);
    if (v3)
    {
      *(this + i + 184) = v3;
      operator delete(v3);
    }
  }

  v4 = *(this + 16);
  if (v4)
  {
    *(this + 17) = v4;
    operator delete(v4);
  }

  v5 = *(this + 13);
  if (v5)
  {
    *(this + 14) = v5;
    operator delete(v5);
  }

  v6 = *(this + 9);
  if (v6)
  {
    *(this + 10) = v6;
    operator delete(v6);
  }

  v7 = *(this + 6);
  if (v7)
  {
    *(this + 7) = v7;
    operator delete(v7);
  }

  TAllocator::clear(this);
}

void *TFsa::newState(TAllocator *this, uint64_t a2)
{
  v4 = *(this + 10);
  if (*(this + 9) == v4)
  {
    v6 = TAllocator::allocate(this, 48);
    *v6 = (*(this + 7) - *(this + 6)) >> 3;
    v6[1] = a2;
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = -1;
    v6[5] = -1;
    v7 = v6;
    std::vector<TItnRule *>::push_back[abi:ne200100](this + 48, &v7);
    result = v7;
  }

  else
  {
    result = *(v4 - 8);
    *(this + 10) = v4 - 8;
    *(*(this + 6) + 8 * *result) = result;
    result[1] = a2;
  }

  ++*(this + 5);
  return result;
}

void TFsa::deleteState(void *a1, uint64_t a2)
{
  v6 = a2;
  v3 = *(a2 + 32);
  if (v3 != -1)
  {
    *(a1[19] + 8 * v3) = 0;
    *(a2 + 32) = -1;
    --a1[25];
  }

  v4 = *(a2 + 40);
  if (v4 != -1)
  {
    *(a1[22] + 8 * v4) = 0;
    *(a2 + 40) = -1;
    --a1[26];
  }

  TFsa::deleteAllTrans(a1, a2);
  std::vector<TItnRule *>::push_back[abi:ne200100]((a1 + 9), &v6);
  v5 = a1[5];
  *(a1[6] + 8 * *v6) = 0;
  a1[5] = v5 - 1;
}

uint64_t TFsa::removeExtremity(uint64_t result, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 32 + 8 * a3);
  if (v3 != -1)
  {
    *(*(result + 24 * a3 + 152) + 8 * v3) = 0;
    *(a2 + 32 + 8 * a3) = -1;
    --*(result + 8 * a3 + 200);
  }

  return result;
}

void TFsa::deleteAllTrans(uint64_t a1, uint64_t a2)
{
  for (i = *(a2 + 16); i; i = *(a2 + 16))
  {
    TFsa::deleteTrans(a1, i);
  }

  while (1)
  {
    v5 = *(a2 + 24);
    if (!v5)
    {
      break;
    }

    TFsa::deleteTrans(a1, v5);
  }
}

void *TFsa::newTrans(TAllocator *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(this + 17);
  if (*(this + 16) == v8)
  {
    v10 = TAllocator::allocate(this, 64);
    v11 = (*(this + 14) - *(this + 13)) >> 3;
    *v10 = a4;
    *(v10 + 8) = v11;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *(v10 + 48) = 0u;
    v14 = v10;
    std::vector<TItnRule *>::push_back[abi:ne200100](this + 104, &v14);
    result = v14;
  }

  else
  {
    result = *(v8 - 8);
    *(this + 17) = v8 - 8;
    *(*(this + 13) + 8 * result[1]) = result;
    *result = a4;
  }

  result[3] = a2;
  v12 = *(a2 + 24);
  result[5] = v12;
  if (v12)
  {
    *(v12 + 56) = result;
  }

  *(a2 + 24) = result;
  result[2] = a3;
  v13 = *(a3 + 16);
  result[4] = v13;
  if (v13)
  {
    *(v13 + 48) = result;
  }

  *(a3 + 16) = result;
  ++*(this + 12);
  return result;
}

void TFsa::deleteTrans(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = a2[7];
  v4 = a2[5];
  v5 = a2[3] + 16;
  if (v3)
  {
    v5 = v3 + 32;
  }

  *(v5 + 8) = v4;
  if (v4)
  {
    *(v4 + 56) = v3;
  }

  a2[3] = 0;
  a2[7] = 0;
  a2[5] = 0;
  v6 = a2[6];
  v7 = a2[4];
  v8 = (a2[2] + 16);
  if (v6)
  {
    v8 = (v6 + 32);
  }

  *v8 = v7;
  if (v7)
  {
    *(v7 + 48) = v6;
  }

  a2[2] = 0;
  a2[6] = 0;
  a2[4] = 0;
  std::vector<TItnRule *>::push_back[abi:ne200100](a1 + 128, &v10);
  v9 = *(a1 + 96);
  *(*(a1 + 104) + 8 * v10[1]) = 0;
  *(a1 + 96) = v9 - 1;
}

void TFsa::addExtremity(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = a2;
  if (*(a2 + 32 + 8 * a3) == -1)
  {
    v4 = a3;
    v5 = a1 + 24 * a3;
    *(a2 + 32 + 8 * a3) = (*(v5 + 160) - *(v5 + 152)) >> 3;
    std::vector<TItnRule *>::push_back[abi:ne200100](v5 + 152, &v6);
    ++*(a1 + 8 * v4 + 200);
  }
}

void *TFsa::nfaToDfa(uint64_t a1, TFsa *a2, uint64_t a3)
{
  TAllocator::TAllocator(v14, 2048);
  v13[0] = a2;
  v13[1] = a1;
  v13[2] = a3;
  TFsa::clear(a2);
  v20[0] = 0;
  v20[1] = 0;
  v19 = v20;
  v7 = *(a1 + 152);
  v6 = *(a1 + 160);
  if (v7 != v6)
  {
    while (!*v7)
    {
      if (++v7 == v6)
      {
        goto LABEL_11;
      }
    }
  }

  if (v7 != v6)
  {
    v8 = *v7;
LABEL_7:
    v17 = v8;
    std::__tree<TState const*>::__emplace_unique_key_args<TState const*,TState const*>(&v19, &v17);
    v9 = v7 + 1;
    while (v9 != v6)
    {
      v10 = *v9++;
      v8 = v10;
      if (v10)
      {
        v7 = v9 - 1;
        goto LABEL_7;
      }
    }
  }

LABEL_11:
  v18[0] = 0;
  v18[1] = 0;
  v17 = v18;
  v16[0] = 0;
  v16[1] = 0;
  v15 = v16;
  TFsa::addExtremity(v13[0], v11, 0);
  TAllocator::clear(v14);
  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&v17, v18[0]);
  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&v19, v20[0]);
  return TAllocator::clear(v14);
}

void sub_2625B9890(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(v2 - 56, *(v2 - 48));
  TAllocator::clear((v1 + 24));
  _Unwind_Resume(a1);
}

void *std::vector<TState *>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<TParam *>>(result, a2);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

BOOL TFsa::topologicalSort(unint64_t *a1, void *a2)
{
  std::vector<unsigned long>::vector[abi:ne200100](__p, (a1[7] - a1[6]) >> 3);
  v5 = a1[6];
  v4 = a1[7];
  if (v5 != v4)
  {
    while (!*v5)
    {
      if (++v5 == v4)
      {
        goto LABEL_16;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = __p[0];
LABEL_7:
    v7 = *(*v5 + 16);
    if (v7)
    {
      v8 = 0;
      do
      {
        ++v8;
        v7 = *(v7 + 32);
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    v6[**v5] = v8;
    v9 = v5 + 1;
    while (v9 != v4)
    {
      if (*v9++)
      {
        v5 = v9 - 1;
        goto LABEL_7;
      }
    }
  }

LABEL_16:
  a2[1] = *a2;
  std::vector<TState const*>::reserve(a2, a1[5]);
  v12 = a1[19];
  v11 = a1[20];
  if (v12 != v11)
  {
    while (!*v12)
    {
      if (++v12 == v11)
      {
        goto LABEL_25;
      }
    }
  }

  if (v12 != v11)
  {
LABEL_21:
    v25 = *v12;
    std::vector<TWord const*>::push_back[abi:ne200100](a2, &v25);
    v13 = v12 + 1;
    while (v13 != v11)
    {
      if (*v13++)
      {
        v12 = v13 - 1;
        goto LABEL_21;
      }
    }
  }

LABEL_25:
  v16 = *a2;
  v15 = a2[1];
  v17 = v15 - *a2;
  if (v15 != *a2)
  {
    v18 = 0;
    do
    {
      v19 = *(*(v16 + 8 * v18) + 24);
      if (v19)
      {
        do
        {
          v20 = *(v19 + 16);
          v21 = __p[0];
          --*(__p[0] + *v20);
          if (!v21[*v20])
          {
            v25 = v20;
            std::vector<TWord const*>::push_back[abi:ne200100](a2, &v25);
          }

          v19 = *(v19 + 40);
        }

        while (v19);
        v16 = *a2;
        v15 = a2[1];
      }

      ++v18;
      v17 = v15 - v16;
    }

    while (v18 < (v15 - v16) >> 3);
  }

  v22 = v17 >> 3;
  v23 = a1[5];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v22 == v23;
}

void sub_2625B9B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<TState const*>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<TSegment const*>>(result, a2);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void anonymous namespace::epsilonClosure(uint64_t a1, uint64_t **a2)
{
  if (a2 != a1)
  {
    std::__tree<TState const*>::__assign_multi<std::__tree_const_iterator<TState const*,std::__tree_node<TState const*,void *> *,long>>(a2, *a1, (a1 + 8));
  }

  std::set<TState const*>::set[abi:ne200100](&v18, a1);
  if (v20)
  {
    v4 = a2 + 1;
    do
    {
      v17[0] = 0;
      v17[1] = 0;
      v16 = v17;
      std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&v18, v19);
      v19 = 0;
      v20 = 0;
      v18 = &v19;
      v5 = v16;
      if (v16 != v17)
      {
        do
        {
          v6 = v5[4];
          v15 = v6;
          v7 = *v4;
          if (!*v4)
          {
            goto LABEL_14;
          }

          v8 = a2 + 1;
          do
          {
            v9 = v7[4];
            v10 = v9 >= v6;
            v11 = v9 < v6;
            if (v10)
            {
              v8 = v7;
            }

            v7 = v7[v11];
          }

          while (v7);
          if (v8 == v4 || v6 < v8[4])
          {
LABEL_14:
            std::__tree<TState const*>::__emplace_unique_key_args<TState const*,TState const*>(a2, &v15);
            std::__tree<TState const*>::__emplace_unique_key_args<TState const*,TState const*>(&v18, &v15);
          }

          v12 = v5[1];
          if (v12)
          {
            do
            {
              v13 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              v13 = v5[2];
              v14 = *v13 == v5;
              v5 = v13;
            }

            while (!v14);
          }

          v5 = v13;
        }

        while (v13 != v17);
      }

      std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&v16, v17[0]);
    }

    while (v20);
  }

  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&v18, v19);
}

void sub_2625B9D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, void *a12, uint64_t a13, char a14, void *a15)
{
  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&a11, a12);
  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&a14, a15);
  _Unwind_Resume(a1);
}

void *anonymous namespace::TNfaToDfa::nfaToDfaRec(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[2] + 1;
  if (v6 >> 61)
  {
    v7 = -1;
  }

  else
  {
    v7 = 8 * v6;
  }

  v8 = TAllocator::allocate((a1 + 24), v7);
  v9 = v8;
  v10 = *a2;
  v11 = a2 + 1;
  if (*a2 == a2 + 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    do
    {
      *(v8 + 8 * v12) = v10[4];
      v13 = v10[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v10[2];
          v15 = *v14 == v10;
          v10 = v14;
        }

        while (!v15);
      }

      ++v12;
      v10 = v14;
    }

    while (v14 != v11);
  }

  *(v8 + 8 * v12) = 0;
  v17 = (a3 + 8);
  v16 = *(a3 + 8);
  if (!v16)
  {
    goto LABEL_29;
  }

  v18 = (a3 + 8);
  do
  {
    v19 = v16[4];
    v20 = v8;
    do
    {
      v21 = *v19;
      v22 = *v20;
      if (!(*v19 | *v20))
      {
        v18 = v16;
        goto LABEL_23;
      }

      ++v20;
      ++v19;
    }

    while (v21 == v22);
    if (v21 >= v22)
    {
      v18 = v16;
    }

    v16 += v21 < v22;
LABEL_23:
    v16 = *v16;
  }

  while (v16);
  if (v18 == v17)
  {
LABEL_29:
    v62 = 0;
    v63 = 0;
    v61 = &v62;
    v27 = *a2;
    if (*a2 == v11)
    {
      v28 = 0;
    }

    else
    {
      v28 = 0;
      do
      {
        v29 = v27[4];
        v30 = *(v29 + 40) != -1;
        v31 = *(v29 + 8);
        if (v31)
        {
          v59 = v31;
          std::__tree<TState const*>::__emplace_unique_key_args<TState const*,TState const*>(&v61, &v59);
        }

        v32 = v27[1];
        if (v32)
        {
          do
          {
            v33 = v32;
            v32 = *v32;
          }

          while (v32);
        }

        else
        {
          do
          {
            v33 = v27[2];
            v15 = *v33 == v27;
            v27 = v33;
          }

          while (!v15);
        }

        v28 |= v30;
        v27 = v33;
      }

      while (v33 != v11);
      if (v63)
      {
        if (v63 == 1)
        {
          v34 = v61[4];
LABEL_45:
          v35 = TFsa::newState(*a1, v34);
          if (v28)
          {
            TFsa::addExtremity(*a1, v35, 1u);
          }

          std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&v61, v62);
          v36 = *v17;
          if (!*v17)
          {
            goto LABEL_59;
          }

LABEL_48:
          while (2)
          {
            v37 = v36;
            v38 = v36[4];
            v39 = v9;
            v40 = v38;
            while (1)
            {
              v41 = *v39;
              v42 = *v40;
              if (!(*v39 | *v40))
              {
                break;
              }

              ++v40;
              ++v39;
              if (v41 != v42)
              {
                v43 = v9;
                if (v41 >= v42)
                {
                  goto LABEL_55;
                }

                v36 = *v37;
                if (!*v37)
                {
LABEL_59:
                  operator new();
                }

                goto LABEL_48;
              }
            }

            v43 = v9;
            do
            {
LABEL_55:
              v44 = *v38;
              v45 = *v43;
              if (!(*v38 | *v43))
              {
                goto LABEL_60;
              }

              ++v43;
              ++v38;
            }

            while (v44 == v45);
            if (v44 < v45)
            {
              v36 = v37[1];
              if (!v36)
              {
                goto LABEL_59;
              }

              continue;
            }

            break;
          }

LABEL_60:
          v37[5] = v35;
          v62 = 0;
          v63 = 0;
          v61 = &v62;
          v46 = *a2;
          if (*a2 != v11)
          {
            do
            {
              for (i = *(v46[4] + 24); i; i = i[5])
              {
                if (*i != -1)
                {
                  v59 = *i;
                  std::__tree<TState const*>::__emplace_unique_key_args<TState const*,TState const*>(&v61, &v59);
                }
              }

              v48 = v46[1];
              if (v48)
              {
                do
                {
                  v49 = v48;
                  v48 = *v48;
                }

                while (v48);
              }

              else
              {
                do
                {
                  v49 = v46[2];
                  v15 = *v49 == v46;
                  v46 = v49;
                }

                while (!v15);
              }

              v46 = v49;
            }

            while (v49 != v11);
            v50 = v61;
            if (v61 != &v62)
            {
              do
              {
                v51 = v50[4];
                v60[0] = 0;
                v60[1] = 0;
                v59 = v60;
                v58[0] = 0;
                v58[1] = 0;
                v57 = v58;
                *TFsa::newTrans(*a1, v35, v52, 0) = v50[4];
                std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&v57, v58[0]);
                std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&v59, v60[0]);
                v53 = v50[1];
                if (v53)
                {
                  do
                  {
                    v54 = v53;
                    v53 = *v53;
                  }

                  while (v53);
                }

                else
                {
                  do
                  {
                    v54 = v50[2];
                    v15 = *v54 == v50;
                    v50 = v54;
                  }

                  while (!v15);
                }

                v50 = v54;
              }

              while (v54 != &v62);
            }
          }

          std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&v61, v62);
          return v35;
        }

        v56 = *(a1 + 16);
        if (v56)
        {
          v34 = (*(*v56 + 16))(v56, &v61);
          goto LABEL_45;
        }
      }
    }

    v34 = 0;
    goto LABEL_45;
  }

  v23 = v18[4];
  v24 = v8;
  while (1)
  {
    v25 = *v24;
    v26 = *v23;
    if (!(*v24 | *v23))
    {
      return v18[5];
    }

    ++v23;
    ++v24;
    if (v25 != v26)
    {
      if (v25 < v26)
      {
        goto LABEL_29;
      }

      return v18[5];
    }
  }
}

void *std::__tree<TState const*>::__emplace_unique_key_args<TState const*,TState const*>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *anonymous namespace::move(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result + 1;
  v4 = *result;
  if (*result != result + 1)
  {
    do
    {
      for (i = *(v4[4] + 24); i; i = i[5])
      {
        if (*i == a2)
        {
          v11 = i[2];
          result = std::__tree<TState const*>::__emplace_unique_key_args<TState const*,TState const*>(a3, &v11);
        }
      }

      v8 = v4[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v4[2];
          v10 = *v9 == v4;
          v4 = v9;
        }

        while (!v10);
      }

      v4 = v9;
    }

    while (v9 != v3);
  }

  return result;
}

uint64_t **std::__tree<TState const*>::__assign_multi<std::__tree_const_iterator<TState const*,std::__tree_node<TState const*,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = std::__tree<TState const*>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v8[4] = v9[4];
          std::__tree<TState const*>::__node_insert_multi(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = std::__tree<TState const*>::_DetachedTreeCache::__detach_next(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<TState const*>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v12);
  }

  if (a2 != a3)
  {
    std::__tree<TState const*>::__emplace_multi<TState const* const&>();
  }

  return result;
}

void sub_2625BA590(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<TState const*>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<TState const*>::__node_insert_multi(uint64_t **a1, uint64_t *a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (a2[4] >= v4[4])
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::__insert_node_at(a1, v3, v5, a2);
  return a2;
}

void *std::__tree<TState const*>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<TState const*>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(*a1, v2);
  }

  return a1;
}

void *std::set<TState const*>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<TState const*>::insert[abi:ne200100]<std::__tree_const_iterator<TState const*,std::__tree_node<TState const*,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::set<TState const*>::insert[abi:ne200100]<std::__tree_const_iterator<TState const*,std::__tree_node<TState const*,void *> *,long>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<TState const*>::__emplace_hint_unique_key_args<TState const*,TState const* const&>(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<TState const*>::__emplace_hint_unique_key_args<TState const*,TState const* const&>(void *a1, void *a2, unint64_t *a3)
{
  v3 = *std::__tree<TState const*>::__find_equal<TState const*>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<TState const*>::__find_equal<TState const*>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void std::__tree<std::__value_type<TState const**,TState*>,std::__map_value_compare<TState const**,std::__value_type<TState const**,TState*>,anonymous namespace::TNfaToDfa::TNfaStateCompare,true>,std::allocator<std::__value_type<TState const**,TState*>>>::destroy(void *a1)
{
  if (a1)
  {

    operator delete(a1);
  }
}

void *std::vector<BOOL>::vector(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v2);
  }

  std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
}

void *std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

void TFsa::moveTrans(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2[3];
  if (v4 != a3)
  {
    v5 = a2[7];
    v6 = a2[5];
    v7 = v4 + 16;
    if (v5)
    {
      v7 = v5 + 32;
    }

    *(v7 + 8) = v6;
    if (v6)
    {
      *(v6 + 56) = v5;
    }

    a2[7] = 0;
    a2[5] = 0;
    a2[3] = a3;
    v8 = *(a3 + 24);
    a2[5] = v8;
    if (v8)
    {
      *(v8 + 56) = a2;
    }

    *(a3 + 24) = a2;
  }

  v9 = a2[2];
  if (v9 != a4)
  {
    v10 = a2[6];
    v11 = a2[4];
    v12 = (v9 + 16);
    if (v10)
    {
      v12 = (v10 + 32);
    }

    *v12 = v11;
    if (v11)
    {
      *(v11 + 48) = v10;
    }

    a2[6] = 0;
    a2[4] = 0;
    a2[2] = a4;
    v13 = *(a4 + 16);
    a2[4] = v13;
    if (v13)
    {
      *(v13 + 48) = a2;
    }

    *(a4 + 16) = a2;
  }
}

void TRneParamManager::TRneParamManager(TRneParamManager *this, TLocaleInfo *a2)
{
  TLattProcParamManager::TLattProcParamManager(this, a2);
  *v3 = &unk_287527350;
  TBoolParam::TBoolParam((v3 + 62), "D", "L", 0, 0, "1", &unk_26286CF4C);
  TBoolParam::TBoolParam(this + 744, "C", "R", 0, 0, "1", &unk_26286CF4C);
  TIntParam::TIntParam((this + 992), "R", "T", 0, 0, 300, 0, "1", &unk_26286CF4C);
  TBoolParam::TBoolParam(this + 1344, "A", "O", 0, 0, "1", &unk_26286CF4C);
  TIntParam::TIntParam((this + 1592), "M", "W", 0, 1, 100, 4, "1", &unk_26286CF4C);
  TIntParam::TIntParam((this + 1944), "M", "W", 0, 1, 100, 10, "1", &unk_26286CF4C);
  TStringParam::TStringParam(this + 2296, "B", "W", 0, "0", "1", &unk_26286CF4C);
  TParamManager::add(this, (this + 496));
  TParamManager::add(this, (this + 744));
  TParamManager::add(this, (this + 992));
  TParamManager::add(this, (this + 1344));
  TParamManager::add(this, (this + 1592));
  TParamManager::add(this, (this + 1944));
  TParamManager::add(this, (this + 2296));
}

void sub_2625BAFEC(_Unwind_Exception *a1)
{
  TParam::~TParam(v1 + 243);
  TParam::~TParam(v1 + 199);
  TBoolParam::~TBoolParam(v1 + 168);
  TParam::~TParam(v1 + 124);
  TBoolParam::~TBoolParam(v1 + 93);
  TBoolParam::~TBoolParam(v1 + 62);
  TLattProcParamManager::~TLattProcParamManager(v1);
  _Unwind_Resume(a1);
}

void TLattProcParamManager::~TLattProcParamManager(void **this)
{
  *this = &unk_287525670;
  TParam::~TParam(this + 18);

  TParamManager::~TParamManager(this);
}

{
  *this = &unk_287525670;
  TParam::~TParam(this + 18);

  TParamManager::~TParamManager(this);
}

{
  *this = &unk_287525670;
  TParam::~TParam(this + 18);
  TParamManager::~TParamManager(this);

  JUMPOUT(0x26672B1B0);
}

void TRne::TRne(TRne *this, TLexicon *a2)
{
  v2 = TLatticeProcessor::TLatticeProcessor(this, a2, 0);
  *v2 = &unk_287523EF8;
  v2[8] = 0;
  operator new();
}

void sub_2625BB144(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v2, 0x10F3C40C0367C18);
  TLatticeProcessor::~TLatticeProcessor(v1);
  _Unwind_Resume(a1);
}

uint64_t *std::istringstream::basic_istringstream[abi:ne200100](uint64_t *a1, const std::string *a2, int a3)
{
  a1[21] = 0;
  v6 = MEMORY[0x277D82898] + 64;
  a1[15] = MEMORY[0x277D82898] + 64;
  v7 = *(MEMORY[0x277D82820] + 16);
  v8 = *(MEMORY[0x277D82820] + 8);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  a1[1] = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, a1 + 2);
  v10 = MEMORY[0x277D82898] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  *a1 = v10;
  a1[15] = v6;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_2625BB2D8(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x26672B160](v1);
  _Unwind_Resume(a1);
}

uint64_t TRne::freeMemory(TRne *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  result = *(this + 8);
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

void TRne::~TRne(TRne *this)
{
  *this = &unk_287523EF8;
  TRne::freeMemory(this);

  TLatticeProcessor::~TLatticeProcessor(this);
}

{
  *this = &unk_287523EF8;
  TRne::freeMemory(this);
  TLatticeProcessor::~TLatticeProcessor(this);

  JUMPOUT(0x26672B1B0);
}

void TRne::applyInternal(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v113 = 0;
  v114 = 0;
  v115 = 0;
  TFsa::topologicalSort(a3 + 3, &v113);
  v8 = v113;
  v7 = v114;
  v10 = a3[16];
  v9 = a3[17];
  v110 = 0;
  v111 = 0;
  v112 = 0;
  std::vector<unsigned long>::vector[abi:ne200100](v109, ((v114 - v113) >> 3) + 1);
  v90 = (v7 - v8) >> 3;
  std::vector<unsigned long>::vector[abi:ne200100](v108, v90);
  std::vector<TWord const*>::vector[abi:ne200100](v107, (v9 - v10) >> 3);
  TAllocator::TAllocator(v106, 2048);
  v11 = a5;
  v89 = v7 - v8;
  *a5 = 0;
  v101 = -1;
  std::vector<unsigned long>::vector[abi:ne200100](v105, v90);
  if (v7 != v8)
  {
    v12 = 0;
    v13 = (v7 - v8) >> 3;
    if (v90 <= 1)
    {
      v13 = 1;
    }

    v91 = v13;
    while (1)
    {
      v14 = *&v113[8 * v12];
      *(v108[0] + *v14) = v12;
      v92 = v12;
      *(v109[0] + v12) = (v111 - v110) >> 3;
      v15 = v14[2];
      if (v15)
      {
        break;
      }

LABEL_81:
      v12 = v92 + 1;
      if (v92 + 1 == v91)
      {
        goto LABEL_82;
      }
    }

    while (1)
    {
      v16 = *v15;
      v95 = *(v15 + 8);
      v17 = *(v108[0] + **(v15 + 24));
      if (**v15 == 2)
      {
        v20 = v16[1];
        Word = TLexicon::findWord(*(a1 + 16), v20);
        if (!Word)
        {
          Word = TLexicon::addTempWord(*(a1 + 16), v20, 0, 0, 0);
        }

        v21 = *TWord::getOptionalTagBits(Word);
        v22 = (v21 >> 5) & 1;
        if ((v21 & 0x10) != 0)
        {
          v22 = 3;
        }

        v19 = (v21 & 8) != 0 ? 2 : v22;
      }

      else
      {
        Word = 0;
        v19 = 0;
      }

      *(v107[0] + v95) = Word;
      v23 = (v109[0] + 8 * v17);
      v25 = *v23;
      v24 = v23[1];
      v26 = *v23 == v24;
      if (*v23 < v24)
      {
        break;
      }

      v93 = 0;
LABEL_73:
      if (v26 || (v93 & 1) != 0)
      {
        v49 = qword_26286E970[v19];
        v50 = *(v16 + 4);
        v51 = TAllocator::allocate(v106, 24);
        v52 = v49 | 0x40;
        if (v26)
        {
          v52 = v49;
        }

        *v51 = 0;
        v51[1] = v95;
        if (v50)
        {
          v52 |= 0x81uLL;
        }

        v51[2] = v52;
        v101 = v51;
        std::vector<TItnRule *>::push_back[abi:ne200100](&v110, &v101);
        v11 = a5;
      }

      v15 = *(v15 + 32);
      if (!v15)
      {
        goto LABEL_81;
      }
    }

    v26 = 0;
    v93 = 0;
    while (1)
    {
      v27 = v110[v25];
      v28 = v27[2];
      if ((v16[2] & 1) != 0 || (v28 & 0x80) != 0)
      {
        break;
      }

      if (v28)
      {
        if (v19 != 3)
        {
          goto LABEL_34;
        }

        v31 = TAllocator::allocate(v106, 24);
        *v31 = v27;
        v31[1] = v95;
        v31[2] = 17;
        v101 = v31;
        std::vector<TItnRule *>::push_back[abi:ne200100](&v110, &v101);
      }

      else if ((v28 & 2) != 0)
      {
        if (v19 > 1)
        {
          if (v19 != 3)
          {
            v40 = TAllocator::allocate(v106, 24);
            *v40 = v27;
            v40[1] = v95;
            v40[2] = 6;
            v101 = v40;
            std::vector<TItnRule *>::push_back[abi:ne200100](&v110, &v101);
            v93 |= (v27[2] & 4) == 0;
            goto LABEL_36;
          }

          if ((v28 & 8) == 0)
          {
            goto LABEL_40;
          }
        }

        else
        {
          if (!v19)
          {
            if ((v28 & 4) != 0)
            {
              goto LABEL_36;
            }

LABEL_34:
            addTransitionToLattice(a3, v107, v110[v25], *(a1 + 16), *(a1 + 56), a4, v105, v11);
LABEL_35:
            v26 = 1;
            goto LABEL_36;
          }

          if ((v28 & 4) == 0)
          {
            goto LABEL_42;
          }
        }
      }

      else if ((v28 & 8) != 0)
      {
        if (v19 > 1)
        {
          if (v19 == 3)
          {
            v34 = TAllocator::allocate(v106, 24);
            *v34 = v27;
            v34[1] = v95;
            v34[2] = 17;
            v101 = v34;
            std::vector<TItnRule *>::push_back[abi:ne200100](&v110, &v101);
            v35 = (v109[0] + 8 * *(v108[0] + **(*(a3[16] + 8 * v27[1]) + 24)));
            v37 = *v35;
            v36 = v35[1];
            if (*v35 < v36)
            {
              do
              {
                v38 = v110[v37];
                if ((*(v38 + 16) & 0xALL) != 0 && (*(v38 + 16) & 0x44) == 0)
                {
                  addTransitionToLattice(a3, v107, v38, *(a1 + 16), *(a1 + 56), a4, v105, a5);
                }

                ++v37;
              }

              while (v36 != v37);
            }

            goto LABEL_66;
          }

          if ((v28 & 0x40) == 0)
          {
            v48 = TAllocator::allocate(v106, 24);
            *v48 = v27;
            v48[1] = v95;
            v48[2] = 6;
            v101 = v48;
            std::vector<TItnRule *>::push_back[abi:ne200100](&v110, &v101);
            goto LABEL_71;
          }
        }

        else
        {
          if (!v19)
          {
            break;
          }

          if ((v28 & 0x40) == 0)
          {
LABEL_42:
            v33 = TAllocator::allocate(v106, 24);
            *v33 = v27;
            v33[1] = v95;
            v33[2] = 10;
            v101 = v33;
            std::vector<TItnRule *>::push_back[abi:ne200100](&v110, &v101);
LABEL_71:
            v93 = 1;
          }
        }
      }

      else
      {
        if (v19 == 3)
        {
          if ((v28 & 0x40) != 0)
          {
            goto LABEL_36;
          }

LABEL_40:
          v32 = TAllocator::allocate(v106, 24);
          *v32 = v27;
          v32[1] = v95;
          v32[2] = 18;
          v101 = v32;
          std::vector<TItnRule *>::push_back[abi:ne200100](&v110, &v101);
          goto LABEL_36;
        }

        if (v19 != 2)
        {
          v41 = TAllocator::allocate(v106, 24);
          *v41 = v27;
          v41[1] = v95;
          v41[2] = 1;
          v101 = v41;
          std::vector<TItnRule *>::push_back[abi:ne200100](&v110, &v101);
          do
          {
            v42 = v27;
            v27 = *v27;
          }

          while (v27);
          v43 = (v109[0] + 8 * *(v108[0] + **(*(a3[16] + 8 * v42[1]) + 24)));
          v44 = *v43;
          v45 = v43[1];
          if (*v43 < v45)
          {
            do
            {
              v46 = v110[v44];
              if ((*(v46 + 16) & 0xALL) != 0 && (*(v46 + 16) & 0x44) == 0)
              {
                addTransitionToLattice(a3, v107, v46, *(a1 + 16), *(a1 + 56), a4, v105, a5);
              }

              ++v44;
            }

            while (v45 != v44);
          }

LABEL_66:
          v11 = a5;
          goto LABEL_36;
        }

        v29 = TAllocator::allocate(v106, 24);
        v30 = v27[2] & 0x40 | 4;
        *v29 = v27;
        v29[1] = v95;
        v29[2] = v30;
        v101 = v29;
        std::vector<TItnRule *>::push_back[abi:ne200100](&v110, &v101);
      }

LABEL_36:
      if (++v25 == v24)
      {
        goto LABEL_73;
      }
    }

    if ((v28 & 0x40) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_35;
  }

LABEL_82:
  *(v109[0] + v89) = (v111 - v110) >> 3;
  v54 = a3[25];
  v53 = a3[26];
  if (v54 != v53)
  {
    while (!*v54)
    {
      if (++v54 == v53)
      {
        goto LABEL_95;
      }
    }
  }

  if (v54 != v53)
  {
    do
    {
      v55 = (v109[0] + 8 * *(v108[0] + **v54));
      v56 = *v55;
      v57 = v55[1];
      if (*v55 < v57)
      {
        do
        {
          v58 = v110[v56];
          if ((*(v58 + 16) & 0x43) != 0x40)
          {
            addTransitionToLattice(a3, v107, v58, *(a1 + 16), *(a1 + 56), a4, v105, a5);
          }

          ++v56;
        }

        while (v57 != v56);
      }

      v59 = v54 + 1;
      do
      {
        v54 = v59;
        if (v59 == v53)
        {
          break;
        }

        ++v59;
      }

      while (!*v54);
      v11 = a5;
    }

    while (v54 != a3[26]);
  }

LABEL_95:
  if (!*v11)
  {
    *v11 = 1;
  }

  v60 = *(a1 + 56);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v60 + 496));
  v62 = v90;
  if (*(v60 + TParam::getValidConfig((v60 + 496), ActiveConfigHandle) + 648) == 1)
  {
    tknPrintf("=== START PRODUCTIONS ===\n", v63, v64, v65, v66);
    v71 = v110;
    if (v111 != v110)
    {
      v72 = 0;
      v73 = 0;
      do
      {
        if (v73 <= v62)
        {
          do
          {
            if (v72 != *(v109[0] + v73))
            {
              break;
            }

            tknPrintf("Productions for State #%llu...\n", v67, v68, v69, v70, v73++);
          }

          while (v73 <= v62);
          v71 = v110;
        }

        v74 = v71[v72];
        v75 = *(v74 + 8);
        v76 = *(v107[0] + v75);
        if (v76)
        {
          v77 = *v76;
          v101 = v103;
          v102 = xmmword_26286B6F0;
          v104 = 1;
          if (*v74)
          {
            TWord::getWrittenForm(*(v107[0] + v75), &v101);
            v78 = *v74;
            if (*v74)
            {
              do
              {
                __p = v99;
                v98 = xmmword_26286B6F0;
                v100 = 1;
                TWord::getWrittenForm(*(v107[0] + v78[1]), &__p);
                if (*(&v98 + 1) >= v98)
                {
                  if (v100)
                  {
                    v116[0] = 0;
                    TBuffer<wchar_t>::insert(&__p, *(&v98 + 1), v116, 1uLL);
                    v79 = __p;
                    --*(&v98 + 1);
                  }

                  else
                  {
                    v79 = __p;
                    if (v98)
                    {
                      *(__p + v98 - 1) = 0;
                    }
                  }
                }

                else
                {
                  v79 = __p;
                  *(__p + *(&v98 + 1)) = 0;
                }

                v80 = 0;
                  ;
                }

                TBuffer<wchar_t>::insert(&v101, 0, v79, v80 - 1);
                v78 = *v78;
                if (v100 == 1 && __p != v99 && __p != 0)
                {
                  MEMORY[0x26672B1B0]();
                }
              }

              while (v78);
            }

            if (*(&v102 + 1) >= v102)
            {
              if (v104)
              {
                LODWORD(__p) = 0;
                TBuffer<wchar_t>::insert(&v101, *(&v102 + 1), &__p, 1uLL);
                v62 = v90;
                v77 = v101;
                --*(&v102 + 1);
              }

              else
              {
                v77 = v101;
                v62 = v90;
                if (v102)
                {
                  *(v101 + 4 * v102 - 4) = 0;
                }
              }
            }

            else
            {
              v77 = v101;
              *(v101 + 4 * *(&v102 + 1)) = 0;
              v62 = v90;
            }
          }

          v83 = *(v74 + 16);
          loggableUnicode(v77, &__p);
          if (v98 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          tknPrintf("Production #%llu (0x%llx): %s\n", v84, v85, v86, v87, v72, v83, p_p);
          if (SHIBYTE(v98) < 0)
          {
            operator delete(__p);
          }

          if (v104 == 1 && v101 != v103 && v101)
          {
            MEMORY[0x26672B1B0]();
          }
        }

        else
        {
          tknPrintf("Production #%llu (0x%llx): NOT A WORD\n", v67, v68, v69, v70, v72, *(v74 + 16));
        }

        ++v72;
        v71 = v110;
      }

      while (v72 < (v111 - v110) >> 3);
    }

    tknPrintf("=== END PRODUCTIONS ===\n", v67, v68, v69, v70);
  }

  if (v105[0])
  {
    v105[1] = v105[0];
    operator delete(v105[0]);
  }

  TAllocator::clear(v106);
  if (v107[0])
  {
    v107[1] = v107[0];
    operator delete(v107[0]);
  }

  if (v108[0])
  {
    v108[1] = v108[0];
    operator delete(v108[0]);
  }

  if (v109[0])
  {
    v109[1] = v109[0];
    operator delete(v109[0]);
  }

  if (v110)
  {
    v111 = v110;
    operator delete(v110);
  }

  if (v113)
  {
    v114 = v113;
    operator delete(v113);
  }
}

void sub_2625BBEAC(_Unwind_Exception *a1)
{
  if (LOBYTE(STACK[0x8A0]) == 1)
  {
    v5 = STACK[0x488];
    if (STACK[0x488] != v2)
    {
      if (v5)
      {
        MEMORY[0x26672B1B0](v5, v1);
      }
    }
  }

  v6 = STACK[0x8A8];
  if (STACK[0x8A8])
  {
    STACK[0x8B0] = v6;
    operator delete(v6);
  }

  TAllocator::clear((v3 - 256));
  v7 = *(v3 - 216);
  if (v7)
  {
    *(v3 - 208) = v7;
    operator delete(v7);
  }

  v8 = *(v3 - 192);
  if (v8)
  {
    *(v3 - 184) = v8;
    operator delete(v8);
  }

  v9 = *(v3 - 168);
  if (v9)
  {
    *(v3 - 160) = v9;
    operator delete(v9);
  }

  v10 = *(v3 - 144);
  if (v10)
  {
    *(v3 - 136) = v10;
    operator delete(v10);
  }

  v11 = *(v3 - 120);
  if (v11)
  {
    *(v3 - 112) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t addTransitionToLattice(uint64_t result, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  if ((*(a3 + 16) & 0x20) == 0)
  {
    v11 = result;
    ActiveConfigHandle = TParam::getActiveConfigHandle((a5 + 496));
    v13 = a3;
    v14 = *(a5 + TParam::getValidConfig((a5 + 496), ActiveConfigHandle) + 648);
    v15 = TParam::getActiveConfigHandle((a5 + 744));
    v16 = *(a5 + TParam::getValidConfig((a5 + 744), v15) + 896);
    v17 = TParam::getActiveConfigHandle((a5 + 1344));
    v97 = *(a5 + TParam::getValidConfig((a5 + 1344), v17) + 1496);
    v18 = TParam::getActiveConfigHandle((a5 + 992));
    v19 = *(a5 + 4 * TParam::getValidConfig((a5 + 992), v18) + 1152);
    v20 = *(v13 + 8);
    v21 = *(*(v11 + 128) + 8 * v20);
    v104 = *v21[3];
    v96 = *v21[2];
    v22 = *v21;
    v23 = *(*v21 + 4);
    v101 = (*v21)[3];
    v92 = **v21;
    v93 = (*v21)[4];
    v106 = (*v21)[5];
    v24 = *(*v21 + 6);
    v142[2] = *(*v21 + 5);
    v142[3] = v24;
    v25 = *(v22 + 8);
    v142[4] = *(v22 + 7);
    v142[5] = v25;
    v26 = *(v22 + 4);
    v142[0] = *(v22 + 3);
    v142[1] = v26;
    v129 = a4 + 32;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    v105 = v23;
    v95 = v13;
    if ((v23 & 1) != 0 || (v27 = *(*a2 + 8 * v20), !*v13) && (*(v13 + 16) & 0x1C) == 0)
    {
      v29 = a7;
      goto LABEL_151;
    }

    v125 = v127;
    v126 = xmmword_26286B6F0;
    v128 = 1;
    TWord::getWrittenForm(v27, &v125);
    if (v16)
    {
      if ((*(v13 + 16) & 0x14) != 0)
      {
        isUpper = 0;
      }

      else
      {
        v30 = *v125;
        {
          operator new();
        }

        isUpper = TLocaleInfo::isUpper(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v30);
      }

      v31 = TLocaleInfo::toLower((a4 + 30), *v125);
      v99 = isUpper;
      *v125 = v31;
    }

    else
    {
      v99 = 0;
    }

    v32 = *v95;
    while (v32)
    {
      v121 = v123;
      v122 = xmmword_26286B6F0;
      v124 = 1;
      v33 = v32[1];
      v34 = *(*(v11 + 128) + 8 * v33);
      v104 = *v34[3];
      v35 = *v34;
      v36 = *(*v34 + 4);
      v102 = (*v34)[3];
      v37 = (*v34)[5] + v106;
      if (v37 >= v19)
      {
        v38 = v19;
      }

      else
      {
        v38 = 0;
      }

      v39 = v37 - v38;
      v106 = v39;
      if (*(v11 + 248))
      {
        if (v39 >= v19)
        {
          v40 = v19;
        }

        else
        {
          v40 = 0;
        }

        TLatticeProcessor::combineMrecData(v142, (v35 + 12), v40);
        v33 = v32[1];
      }

      TWord::getWrittenForm(*(*a2 + 8 * v33), &v121);
      if (*(&v122 + 1) >= v122)
      {
        if (v124)
        {
          LODWORD(v107) = 0;
          TBuffer<wchar_t>::insert(&v121, *(&v122 + 1), &v107, 1uLL);
          v41 = v121;
          --*(&v122 + 1);
        }

        else
        {
          v41 = v121;
          if (v122)
          {
            v121[v122 - 1] = 0;
          }
        }
      }

      else
      {
        v41 = v121;
        v121[*(&v122 + 1)] = 0;
      }

      v42 = 0;
      v105 |= v36;
        ;
      }

      TBuffer<wchar_t>::insert(&v125, 0, v41, v42 - 1);
      if (v16)
      {
        if ((v32[2] & 0x14) == 0)
        {
          v44 = *v125;
          {
            operator new();
          }

          v99 |= TLocaleInfo::isUpper(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v44);
        }

        v45 = TLocaleInfo::toLower((a4 + 30), *v125);
        *v125 = v45;
      }

      v32 = *v32;
      if (v124 == 1 && v121 != v123 && v121)
      {
        MEMORY[0x26672B1B0]();
      }
    }

    v29 = a7;
    if (v16 && (v99 & 1) != 0)
    {
      v46 = TLocaleInfo::toUpper((a4 + 30), *v125);
      *v125 = v46;
    }

    v47 = a4;
    if (*(&v126 + 1) >= v126)
    {
      if (v128)
      {
        LODWORD(v121) = 0;
        TBuffer<wchar_t>::insert(&v125, *(&v126 + 1), &v121, 1uLL);
        v48 = v125;
        --*(&v126 + 1);
        v47 = a4;
      }

      else
      {
        v48 = v125;
        if (v126)
        {
          v125[v126 - 1] = 0;
        }
      }
    }

    else
    {
      v48 = v125;
      v125[*(&v126 + 1)] = 0;
    }

    Word = TLexicon::findWord(v47, v48);
    if (!Word && v97)
    {
      v121 = v123;
      v122 = xmmword_26286B6F0;
      v124 = 1;
      if (*(&v126 + 1) >= v126)
      {
        if (v128)
        {
          LODWORD(v107) = 0;
          TBuffer<wchar_t>::insert(&v125, *(&v126 + 1), &v107, 1uLL);
          v50 = v125;
          --*(&v126 + 1);
        }

        else
        {
          v50 = v125;
          if (v126)
          {
            v125[v126 - 1] = 0;
          }
        }
      }

      else
      {
        v50 = v125;
        v125[*(&v126 + 1)] = 0;
      }

      TBuffer<wchar_t>::assign(&v121, v50);
      v51 = TParam::getActiveConfigHandle((a5 + 1592));
      v100 = *(a5 + 4 * TParam::getValidConfig((a5 + 1592), v51) + 1752);
      v52 = TParam::getActiveConfigHandle((a5 + 1944));
      v98 = *(a5 + 4 * TParam::getValidConfig((a5 + 1944), v52) + 2104);
      v53 = TStringParam::get((a5 + 2296));
      v54 = wcslen(v53);
      if (v54 >= 0x3FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v55 = v54;
      if (v54 >= 5)
      {
        if ((v54 | 1) == 5)
        {
          v56 = 7;
        }

        else
        {
          v56 = (v54 | 1) + 1;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t>>(&__dst, v56);
      }

      v120 = v54;
      if (v54)
      {
        memmove(&__dst, v53, 4 * v54);
      }

      v57 = 0;
      Word = 0;
      *(&__dst + v55) = 0;
      v118 = 0;
      v117 = 0;
      v116 = &v117;
      v58 = *(&v122 + 1);
      if (*(&v122 + 1) > v100)
      {
        Word = 0;
        v59 = -1;
        while (1)
        {
          TBuffer<wchar_t>::resize(&v121, v58 - 1);
          v114 = 0;
          v113 = 0;
          v115 = 0;
          std::vector<TItnRule *>::resize(&v113, 0);
          if (*(&v122 + 1) >= v122)
          {
            if (v124)
            {
              LODWORD(v107) = 0;
              TBuffer<wchar_t>::insert(&v121, *(&v122 + 1), &v107, 1uLL);
              --*(&v122 + 1);
            }

            else if (v122)
            {
              v121[v122 - 1] = 0;
            }
          }

          else
          {
            v121[*(&v122 + 1)] = 0;
          }

          TLexicon::findWordsCollated(a4);
          if (v14)
          {
            v60 = v114;
            v61 = v113;
            if (*(&v126 + 1) >= v126)
            {
              if (v128)
              {
                LODWORD(__p[0]) = 0;
                TBuffer<wchar_t>::insert(&v125, *(&v126 + 1), __p, 1uLL);
                v62 = v125;
                --*(&v126 + 1);
              }

              else
              {
                v62 = v125;
                if (v126)
                {
                  v125[v126 - 1] = 0;
                }
              }
            }

            else
            {
              v62 = v125;
              v125[*(&v126 + 1)] = 0;
            }

            loggableUnicode(v62, &v107);
            if (v108 >= 0)
            {
              v63 = &v107;
            }

            else
            {
              v63 = v107;
            }

            if (*(&v122 + 1) >= v122)
            {
              if (v124)
              {
                v143[0] = 0;
                TBuffer<wchar_t>::insert(&v121, *(&v122 + 1), v143, 1uLL);
                v64 = v121;
                --*(&v122 + 1);
              }

              else
              {
                v64 = v121;
                if (v122)
                {
                  v121[v122 - 1] = 0;
                }
              }
            }

            else
            {
              v64 = v121;
              v121[*(&v122 + 1)] = 0;
            }

            loggableUnicode(v64, __p);
            v69 = __p;
            if (v112 < 0)
            {
              v69 = __p[0];
            }

            tknPrintf("Found %llu candidates to replace '%s' with a collated prefix '%s'.\n", v65, v66, v67, v68, (v60 - v61) >> 3, v63, v69);
            if (v112 < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v108) < 0)
            {
              operator delete(v107);
            }
          }

          v70 = v113;
          if (v114 != v113)
          {
            break;
          }

LABEL_128:
          if (v70)
          {
            v114 = v70;
            operator delete(v70);
          }

          v58 = *(&v122 + 1);
          if (*(&v122 + 1) <= v100 || v59 < 3 || v118 > v98)
          {
            v57 = v117;
            v29 = a7;
            goto LABEL_134;
          }
        }

        v71 = 0;
        while (1)
        {
          v107 = **&v70[8 * v71];
          if (&v117 == std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::find<wchar_t const*>(&v116, &v107))
          {
            break;
          }

          if (v14)
          {
            loggableUnicode(**(v113 + v71), &v107);
            v76 = &v107;
            if (v108 < 0)
            {
              v76 = v107;
            }

            tknPrintf("Skipping already seen candidate '%s'.\n", v72, v73, v74, v75, v76);
            if (SHIBYTE(v108) < 0)
            {
              operator delete(v107);
            }
          }

LABEL_124:
          ++v71;
          v70 = v113;
          if (v71 >= (v114 - v113) >> 3)
          {
            goto LABEL_128;
          }
        }

        v107 = **(v113 + v71);
        std::__tree<wchar_t const*,TWideCharCompare,std::allocator<wchar_t const*>>::__emplace_unique_key_args<wchar_t const*,wchar_t const* const&>(&v116, &v107);
        v77 = *(&v126 + 1);
        v107 = v109;
        v108 = xmmword_26286B6F0;
        v110 = 1;
        TWord::getWrittenForm(*(v113 + v71), &v107);
        v78 = *(&v108 + 1);
        if (*(&v126 + 1) >= v126)
        {
          if (v128)
          {
            LODWORD(__p[0]) = 0;
            TBuffer<wchar_t>::insert(&v125, *(&v126 + 1), __p, 1uLL);
            v79 = v125;
            --*(&v126 + 1);
          }

          else
          {
            v79 = v125;
            if (v126)
            {
              v125[v126 - 1] = 0;
            }
          }
        }

        else
        {
          v79 = v125;
          v125[*(&v126 + 1)] = 0;
        }

        v80 = TAligner<wchar_t const,TRneCost>::align<wchar_t const*>(&v129, v79, &v79[v77], **(v113 + v71), **(v113 + v71) + 4 * v78);
        if (!v14)
        {
          goto LABEL_117;
        }

        loggableUnicode(**(v113 + v71), __p);
        v85 = __p;
        if (v112 < 0)
        {
          v85 = __p[0];
        }

        tknPrintf("Edit distance score for '%s' is %llu.\n", v81, v82, v83, v84, v85, v80);
        if (v112 < 0)
        {
          operator delete(__p[0]);
          if (!Word)
          {
            goto LABEL_119;
          }
        }

        else
        {
LABEL_117:
          if (!Word)
          {
            goto LABEL_119;
          }
        }

        if (v59 <= v80)
        {
LABEL_120:
          if (v110 == 1 && v107 != v109 && v107)
          {
            MEMORY[0x26672B1B0]();
          }

          goto LABEL_124;
        }

LABEL_119:
        Word = *(v113 + v71);
        v59 = v80;
        goto LABEL_120;
      }

LABEL_134:
      std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&v116, v57);
      if (v120 < 0)
      {
        operator delete(__dst);
      }

      if (v124 == 1 && v121 != v123 && v121)
      {
        MEMORY[0x26672B1B0]();
      }
    }

    if (Word)
    {
LABEL_147:
      if (v128 == 1 && v125 != v127 && v125)
      {
        MEMORY[0x26672B1B0]();
      }

LABEL_151:
      v88 = *v29;
      if (*(*v29 + 8 * v104) == -1)
      {
        v89 = *a8;
        *(v88 + 8 * v104) = *a8;
        *a8 = v89 + 1;
      }

      if (*(v88 + 8 * v96) == -1)
      {
        v90 = *a8;
        *(v88 + 8 * v96) = *a8;
        *a8 = v90 + 1;
      }

      operator new();
    }

    if (*(&v126 + 1) >= v126)
    {
      if ((v128 & 1) == 0)
      {
        v86 = v125;
        v87 = a4;
        if (v126)
        {
          v125[v126 - 1] = 0;
        }

        goto LABEL_146;
      }

      LODWORD(v121) = 0;
      TBuffer<wchar_t>::insert(&v125, *(&v126 + 1), &v121, 1uLL);
      v86 = v125;
      --*(&v126 + 1);
    }

    else
    {
      v86 = v125;
      v125[*(&v126 + 1)] = 0;
    }

    v87 = a4;
LABEL_146:
    TLexicon::addTempWord(v87, v86, 0, 0, 0);
    goto LABEL_147;
  }

  return result;
}

void sub_2625BCDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  MEMORY[0x26672B1B0](v14, 0x1070C40ADD13FEBLL);
  if (LOBYTE(STACK[0xD70]) == 1)
  {
    v16 = STACK[0x958];
    if (STACK[0x958] != a14)
    {
      if (v16)
      {
        MEMORY[0x26672B1B0](v16, 0x1000C4052888210);
      }
    }
  }

  TAligner<wchar_t const,TRneCost>::~TAligner(&STACK[0xD78]);
  _Unwind_Resume(a1);
}

void TRne::apply(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 56);
  v6 = *(v5 + 136);
  *(v5 + 136) = a4;
  if (*(a3[32] + 8) == *(*(a1 + 16) + 8))
  {
    memset(__p, 0, sizeof(__p));
    v13[0] = 0;
    TRne::applyInternal(a1, a2, a3, __p, v13);
    operator new();
  }

  tknPrintf("Error: The lattice lexicon handle does not match the lattice processor's lexicon handle.\n", a2, a3, a4, a5);
  std::string::basic_string[abi:ne200100]<0>(v13, &byte_262899963);
  __p[0] = byte_287529580;
  if (SHIBYTE(v14) < 0)
  {
    std::string::__init_copy_ctor_external(&__p[1], v13[0], v13[1]);
  }

  else
  {
    *&__p[1] = *v13;
    v16 = v14;
  }

  __p[0] = &unk_287528000;
  if (v16 >= 0)
  {
    v9 = &__p[1];
  }

  else
  {
    v9 = __p[1];
  }

  conditionalAssert(v9, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/rne/rne.cpp", 894, v7, v8);
  __p[0] = byte_287529580;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
  *exception = byte_287529580;
  v11 = (exception + 8);
  if (SHIBYTE(__p[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v11, __p[0], __p[1]);
  }

  else
  {
    v12 = *__p;
    *(exception + 3) = __p[2];
    *&v11->__r_.__value_.__l.__data_ = v12;
  }

  *exception = &unk_287528000;
}

void sub_2625BD290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, void *a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      *(v27 + 136) = v28;
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

void TRne::apply(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 56);
  v31 = *(v8 + 136);
  *(v8 + 136) = a5;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  std::vector<wchar_t const*>::reserve(&v36, a3);
  if (a3)
  {
    v9 = 0;
    v10 = v37;
    do
    {
      v11 = **(*a2 + 8 * v9);
      if (v10 >= v38)
      {
        v12 = (v10 - v36) >> 3;
        if ((v12 + 1) >> 61)
        {
          std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
        }

        v13 = (v38 - v36) >> 2;
        if (v13 <= v12 + 1)
        {
          v13 = v12 + 1;
        }

        if (v38 - v36 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t const*>>(&v36, v14);
        }

        *(8 * v12) = v11;
        v10 = (8 * v12 + 8);
        v15 = (8 * v12 - (v37 - v36));
        memcpy(v15, v36, v37 - v36);
        v16 = v36;
        v36 = v15;
        v37 = v10;
        v38 = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v10 = v11;
        v10 += 8;
      }

      v37 = v10;
      ++v9;
    }

    while (a3 != v9);
  }

  __p = 0;
  v34 = 0;
  v17 = a4 - a3;
  v35 = 0;
  std::vector<TState *>::reserve(&__p, a4 - a3);
  std::vector<TLatticeConstructionTransData>::vector[abi:ne200100](&v32, a4 - a3);
  if (a4 != a3)
  {
    v18 = 0;
    v19 = 0;
    v20 = 8 * a3;
    do
    {
      v21 = v32 + v18;
      *v21 = 2;
      *(v21 + 4) = 0;
      *(v21 + 1) = **(*a2 + v20 + 8 * v19);
      v22 = v32 + v18;
      v22[3] = v19;
      v22[5] = v19++;
      v22[4] = v19;
      v22[6] = v19;
      v22[7] = 1;
      v23 = v34;
      if (v34 >= v35)
      {
        v25 = (v34 - __p) >> 3;
        if ((v25 + 1) >> 61)
        {
          std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
        }

        v26 = (v35 - __p) >> 2;
        if (v26 <= v25 + 1)
        {
          v26 = v25 + 1;
        }

        if (v35 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v27 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v26;
        }

        if (v27)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<TParam *>>(&__p, v27);
        }

        v28 = (8 * v25);
        *v28 = v22;
        v24 = 8 * v25 + 8;
        v29 = v28 - (v34 - __p);
        memcpy(v29, __p, v34 - __p);
        v30 = __p;
        __p = v29;
        v34 = v24;
        v35 = 0;
        if (v30)
        {
          operator delete(v30);
        }
      }

      else
      {
        *v34 = v22;
        v24 = (v23 + 8);
      }

      v34 = v24;
      v18 += 160;
    }

    while (v19 != v17);
  }

  operator new();
}

void sub_2625BD814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  MEMORY[0x26672B1B0](v22, 0x10F1C4078920B39);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x2625BD604);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  v26 = *(v23 - 104);
  if (v26)
  {
    *(v23 - 96) = v26;
    operator delete(v26);
  }

  *(a12 + 136) = a11;
  _Unwind_Resume(a1);
}

void *std::vector<wchar_t const*>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t const*>>(result, a2);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t TRne::save(TRne *this, TDataManager *a2, TDataManager *a3)
{
  v6 = *(this + 2);
  v7 = (v6 + 72);
  if (*(v6 + 95) < 0)
  {
    v7 = *v7;
  }

  TOutputModel::TOutputModel(v34, a2, a3, v7, *(this + 8));
  if (v35 <= 1)
  {
    tknPrintf("Error: Unsupported model version for Roots and Endings: %llu\n", v8, v9, v10, v11, v35);
    std::string::basic_string[abi:ne200100]<0>(&v32, &byte_262899963);
    *v27 = byte_287529580;
    if (SHIBYTE(v33) < 0)
    {
      std::string::__init_copy_ctor_external(&v27[8], v32, *(&v32 + 1));
    }

    else
    {
      *&v27[8] = v32;
      v28 = v33;
    }

    *v27 = &unk_287528000;
    if (v28 >= 0)
    {
      v20 = &v27[8];
    }

    else
    {
      v20 = *&v27[8];
    }

    conditionalAssert(v20, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/rne/rne.cpp", 994, v18, v19);
    *v27 = byte_287529580;
    if (SHIBYTE(v28) < 0)
    {
      operator delete(*&v27[8]);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v27, &byte_262899963);
    *exception = byte_287529580;
    v22 = (exception + 1);
    if ((v27[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v22, *v27, *&v27[8]);
    }

    else
    {
      v23 = *v27;
      exception[3] = *&v27[16];
      *&v22->__r_.__value_.__l.__data_ = v23;
    }

    *exception = &unk_287528000;
  }

  v12 = MEMORY[0x277D82828];
  if (a2)
  {
    TDataManager::setIntVar(a2, "RneVersion", 1);
    std::ostringstream::basic_ostringstream[abi:ne200100](v27);
    TOutputStream::TOutputStream(&v32, v27, "RneParam", *(this + 2) + 240);
    TParamManager::save(*(this + 7), &v32, 0);
    std::stringbuf::str();
    if ((v26 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v26 & 0x80u) == 0)
    {
      v14 = v26;
    }

    else
    {
      v14 = v25;
    }

    (*(*a2 + 48))(a2, "RneParam", p_p, v14);
    if (v26 < 0)
    {
      operator delete(__p);
    }

    *v27 = *v12;
    *&v27[*(*v27 - 24)] = v12[3];
    *&v27[8] = MEMORY[0x277D82878] + 16;
    if (v30 < 0)
    {
      operator delete(v29);
    }

    *&v27[8] = MEMORY[0x277D82868] + 16;
    std::locale::~locale(&v27[16]);
    std::ostream::~ostream();
    MEMORY[0x26672B160](v31);
  }

  if (a3)
  {
    TDataManager::setIntVar(a3, "RneVersion", 1);
    std::ostringstream::basic_ostringstream[abi:ne200100](v27);
    TOutputStream::TOutputStream(&v32, v27, "RneParam", *(this + 2) + 240);
    TParamManager::save(*(this + 7), &v32, 1);
    std::stringbuf::str();
    if ((v26 & 0x80u) == 0)
    {
      v15 = &__p;
    }

    else
    {
      v15 = __p;
    }

    if ((v26 & 0x80u) == 0)
    {
      v16 = v26;
    }

    else
    {
      v16 = v25;
    }

    (*(*a3 + 48))(a3, "RneParam", v15, v16);
    if (v26 < 0)
    {
      operator delete(__p);
    }

    *v27 = *v12;
    *&v27[*(*v27 - 24)] = v12[3];
    *&v27[8] = MEMORY[0x277D82878] + 16;
    if (v30 < 0)
    {
      operator delete(v29);
    }

    *&v27[8] = MEMORY[0x277D82868] + 16;
    std::locale::~locale(&v27[16]);
    std::ostream::~ostream();
    MEMORY[0x26672B160](v31);
  }

  return (*(**(this + 8) + 24))(*(this + 8));
}

void sub_2625BDF00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, void *a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((v27 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v27)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v26);
  goto LABEL_6;
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_2625BE0E8(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x26672B160](v1);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x26672B160](a1 + 112);
  return a1;
}

void TRneParamManager::~TRneParamManager(TRneParamManager *this)
{
  TRneParamManager::~TRneParamManager(this);

  JUMPOUT(0x26672B1B0);
}

{
  *this = &unk_287527350;
  v2 = (this + 2296);
  *(this + 287) = &unk_287528A10;
  v7 = (this + 3648);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (this + 3624);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (this + 3600);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v7);
  for (i = 0; i != -1152; i -= 24)
  {
    if (*(this + i + 3599) < 0)
    {
      operator delete(*(this + i + 3576));
    }
  }

  TParam::~TParam(v2);
  TParam::~TParam(this + 243);
  TParam::~TParam(this + 199);
  v4 = 0;
  *(this + 168) = &unk_2875295A0;
  do
  {
    if (*(this + v4 + 1591) < 0)
    {
      operator delete(*(this + v4 + 1568));
    }

    v4 -= 24;
  }

  while (v4 != -48);
  TParam::~TParam(this + 168);
  TParam::~TParam(this + 124);
  v5 = 0;
  *(this + 93) = &unk_2875295A0;
  do
  {
    if (*(this + v5 + 991) < 0)
    {
      operator delete(*(this + v5 + 968));
    }

    v5 -= 24;
  }

  while (v5 != -48);
  TParam::~TParam(this + 93);
  v6 = 0;
  *(this + 62) = &unk_2875295A0;
  do
  {
    if (*(this + v6 + 743) < 0)
    {
      operator delete(*(this + v6 + 720));
    }

    v6 -= 24;
  }

  while (v6 != -48);
  TParam::~TParam(this + 62);
  *this = &unk_287525670;
  TParam::~TParam(this + 18);
  TParamManager::~TParamManager(this);
}

uint64_t TBoolParam::TBoolParam(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v9 = TParam::TParam(a1, 0, a2, a3, a4, a6, a7);
  *v9 = &unk_2875295A0;
  *(v9 + 200) = 0u;
  *(v9 + 216) = 0u;
  *(v9 + 232) = 0u;
  *(v9 + 152) = a5;
  *(v9 + 112) |= 0x200uLL;
  TParam::notifyChange(v9, 0);
  return a1;
}

void sub_2625BE314(_Unwind_Exception *a1)
{
  TBoolParam::TBoolParam(v1);
  TParam::~TParam(v1);
  _Unwind_Resume(a1);
}

void TInputStream::TInputStream(TInputStream *this, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *this = a2;
  *(this + 8) = a3;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 1;
  *(this + 104) = 0u;
  *(this + 20) = 0;
  *(this + 19) = this + 160;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 21) = 0;
  *(this + 22) = a5;
  if (a4)
  {
    MEMORY[0x26672AEC0](this + 16, a4);
  }

  *(this + 9) = TInputStream::readHeader(this);
}