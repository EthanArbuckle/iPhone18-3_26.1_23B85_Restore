void sub_2627D84A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<DgnArray<RecogResultToken>>(uint64_t a1, int a2)
{
  v11[0] = 0;
  v11[1] = 0;
  v4 = sizeObject<RecogResultToken>(v11, 2);
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
          v5 += sizeObject<RecogResultToken>(*a1 + v9, a2);
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

  DgnIArray<Utterance *>::~DgnIArray(v11);
  return v5;
}

uint64_t sizeObject<HistContents>(uint64_t a1, int a2)
{
  v11 = 0x3FFFFAFFFFFFLL;
  v12 = xmmword_26286CC40;
  v13 = 0x1F0000001FLL;
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
      v9 = 32 * v7 - 32;
      do
      {
        v5 += sizeObject(*a1 + v9, a2);
        --v8;
        v9 -= 32;
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

uint64_t sizeObject<SnapTime>(uint64_t a1, int a2)
{
  memset(v11, 0, sizeof(v11));
  v4 = SnapTime::sizeObject(v11, 2);
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
      v9 = 32 * v7 - 32;
      do
      {
        v5 += SnapTime::sizeObject(*a1 + v9, a2);
        --v8;
        v9 -= 32;
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

uint64_t RecogController::setupRecognizers(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v9 = a4;
  v12 = result;
  v13 = *(result + 12);
  if (v13 == 0xFFFF)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(*(ModelMgr::smpModelMgr + 40) + 8 * v13);
  }

  if (*(result + 24))
  {
    v15 = 0;
    v45 = (result + 56);
    v44 = *(result + 10);
    v16 = (result + 40);
    do
    {
      v17 = *(*a9 + 2 * v15);
      if (v17 != 127)
      {
        ArcGraphOrThrow = ModelMgr::getArcGraphOrThrow(ModelMgr::smpModelMgr, v17, a3, a4, a5, a6, a7, a8);
        v23 = *(*(v12 + 16) + 8 * v15);
        if (*(*(v23 + 296) + 132) == 1)
        {
          v24 = 2;
        }

        else
        {
          v24 = 1;
        }

        result = FstCore::makeRecognizer((v23 + 216), v44, v14, v24, ArcGraphOrThrow);
        v25 = result;
        v26 = *(v12 + 56);
        if (v26 == *(v12 + 60))
        {
          result = DgnPrimArray<unsigned long long>::reallocElts(v12 + 48, 1, 1);
          v26 = *v45;
        }

        *(*(v12 + 48) + 8 * v26) = v25;
        *(v12 + 56) = v26 + 1;
        v27 = *(v12 + 40);
        v28 = (v12 + 32);
        v29 = (v12 + 40);
        if (v27 != *(v12 + 44))
        {
          goto LABEL_24;
        }

        result = DgnPrimArray<unsigned long long>::reallocElts(v12 + 32, 1, 1);
        v29 = (v12 + 40);
        v28 = (v12 + 32);
        goto LABEL_23;
      }

      v18 = *(v12 + 8);
      if (v18 == 1)
      {
        v19 = *(*(*(v12 + 16) + 8 * v15) + 138);
        if (!v14)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v19 = 0;
        if (!v14)
        {
LABEL_18:
          v21 = 0;
          v20 = 0;
          goto LABEL_19;
        }
      }

      v20 = *(v14 + 48);
      v21 = v14 + 80;
LABEL_19:
      result = Recognizer::makeRecognizer(v18, v19, v44, v21, v20, *(v12 + 14), *(*(v12 + 16) + 8 * v15), a5, a6, a7, a8);
      v30 = result;
      v31 = *(v12 + 40);
      if (v31 == *(v12 + 44))
      {
        result = DgnPrimArray<unsigned long long>::reallocElts(v12 + 32, 1, 1);
        v31 = *v16;
      }

      *(*(v12 + 32) + 8 * v31) = v30;
      *(v12 + 40) = v31 + 1;
      v27 = *(v12 + 56);
      v28 = (v12 + 48);
      v29 = v45;
      if (v27 != *(v12 + 60))
      {
        goto LABEL_24;
      }

      result = DgnPrimArray<unsigned long long>::reallocElts(v12 + 48, 1, 1);
      v29 = v45;
      v28 = (v12 + 48);
LABEL_23:
      v27 = *v29;
LABEL_24:
      *(*v28 + 8 * v27) = 0;
      *v29 = v27 + 1;
      ++v15;
    }

    while (v15 < *(v12 + 24));
  }

  v32 = *(a2 + 2);
  if (v32)
  {
    v33 = 0;
    v34 = *a2;
    do
    {
      v35 = v34 + 16 * v33;
      if (*(v35 + 8))
      {
        v36 = 0;
        do
        {
          if (v33 != v36)
          {
            v37 = *(*v35 + 2 * v36);
            if (v37 != 20000)
            {
              v38 = *(v12 + 32);
              if (!*(v38 + 8 * v33) || !*(v38 + 8 * v36))
              {
                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3284, "recogctl/recogctl", 4, "%.500s", a7, a8, "Cross-layer thresholding");
              }

              if (*(a3 + 8))
              {
                v39 = *(*(*a3 + 16 * v33) + 2 * v36);
              }

              else
              {
                v39 = 0;
              }

              result = Recognizer::shadowBest(*(*(v12 + 32) + 8 * v33), *(*(v12 + 32) + 8 * v36), v37, v39, v9);
              v34 = *a2;
            }
          }

          ++v36;
          v35 = v34 + 16 * v33;
        }

        while (v36 < *(v35 + 8));
        v32 = *(a2 + 2);
      }

      ++v33;
    }

    while (v33 < v32);
  }

  return result;
}

uint64_t RecogController::recognizeOneSingleLayer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, uint64_t a12, uint64_t a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v45 = 0;
  v46 = 0;
  DgnPrimArray<unsigned long long>::reallocElts(&v45, 1, 1);
  v27 = v46;
  *(v45 + 8 * v46) = a5;
  LODWORD(v46) = v27 + 1;
  v43 = 0;
  v44 = 0;
  DgnPrimArray<char>::reallocElts(&v43, 1, 1);
  v28 = v44;
  *(v43 + v44) = a15;
  LODWORD(v44) = v28 + 1;
  v29 = *(a9 + 8);
  v41 = 0;
  v42 = 0;
  if (v29)
  {
    v39 = 0;
    v30 = realloc_array(0, &v39, 8 * v29, 0, 0, 1);
    v41 = v39;
    v31 = *(a9 + 8);
    LODWORD(v42) = v29;
    HIDWORD(v42) = v30 >> 3;
    v39 = 0;
    v40 = 0;
    if (v31)
    {
      v37[0] = 0;
      v32 = realloc_array(0, v37, 8 * v31, 0, 0, 1);
      v33 = v37[0];
      v39 = v37[0];
      LODWORD(v29) = v42;
      LODWORD(v40) = v31;
      HIDWORD(v40) = v32 >> 3;
      if (!v42)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v33 = 0;
    }

    v34 = 0;
    do
    {
      *&v41[v34] = 0;
      *&v33[v34] = 0;
      v34 += 8;
    }

    while (8 * v29 != v34);
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

LABEL_9:
  (*(*a1 + 32))(a1, a2, a3, a4, &v45, a6, a7, a8, a9, a10, &v39, &v41, a11, a12, a13, a14, &v43, a16, a17, a18, a19, 0, 0, 0);
  v38 = 0;
  (*(*a1 + 64))(a1, 0, 0, &v38);
  v37[0] = 0;
  v37[1] = 0;
  (*(*a1 + 72))(a1, v37);
  v35 = *v37[0];
  DgnIArray<Utterance *>::~DgnIArray(v37);
  DgnIArray<Utterance *>::~DgnIArray(&v39);
  DgnIArray<Utterance *>::~DgnIArray(&v41);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v43);
  DgnIArray<Utterance *>::~DgnIArray(&v45);
  return v35;
}

void sub_2627D8EB4(_Unwind_Exception *a1)
{
  DgnIArray<Utterance *>::~DgnIArray(v1 - 136);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 - 120);
  DgnIArray<Utterance *>::~DgnIArray(v1 - 104);
  _Unwind_Resume(a1);
}

uint64_t RecogController::haveCompletePrefilterResult(RecogController *this)
{
  v1 = *(this + 66);
  if (v1)
  {
    LOBYTE(v1) = *v1;
  }

  return v1 & 1;
}

uint64_t RecogController::extractPrefilterResult(RecogController *this)
{
  v2 = *(this + 66);
  *(this + 66) = 0;
  *(this + 898) = 1;
  v3 = *(this + 67);
  if (v3)
  {
    PrefilterResult::~PrefilterResult(v3);
    MemChunkFree(v4, 0);
    *(this + 67) = 0;
  }

  return v2;
}

void RecogController::startRecognizeOne(uint64_t a1, __int16 a2, uint64_t a3, PrefilterResult *a4, uint64_t **a5, void *a6, int a7, uint64_t *a8, void *a9, void *a10, void *a11, void *a12, char a13, char a14, unsigned int *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, _OWORD *a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  SnapTime::recordTime((a1 + 160), 1, 1, 1, 1);
  MemChunkRegion::resetInternalLocalMaxAllocBytes(0, v30);
  *(a1 + 888) = a23;
  v37 = *(a1 + 40);
  *(a1 + 898) = 0;
  *(a1 + 224) = a17;
  v38 = *a5;
  v263 = a6;
  v264 = v37;
  v261 = a4;
  if (v37 >= 2)
  {
    v265 = a3;
    v39 = 1;
    v40 = *(*v38 + 340);
    do
    {
      if (v40 != *((*a5)[v39] + 340))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3441, "recogctl/recogctl", 7, "%.500s %d %d %d", v35, v36, "SearchRecognitionContinuationInterval");
      }

      ++v39;
    }

    while (v264 != v39);
    v41 = *(**a5 + 337);
    if (v264 <= 2)
    {
      v42 = 2;
    }

    else
    {
      v42 = v264;
    }

    for (i = 1; i != v42; ++i)
    {
      if (v41 != *((*a5)[i] + 337))
      {
        *((*a5)[i] + 337);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3443, "recogctl/recogctl", 6, "%.500s %d %.500s %.500s", v35, v36, "SearchRecognitionBatchProcessing");
      }
    }

    v44 = *(**a5 + 385);
    for (j = 1; j != v42; ++j)
    {
      if (v44 != *((*a5)[j] + 385))
      {
        *((*a5)[j] + 385);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3445, "recogctl/recogctl", 6, "%.500s %d %.500s %.500s", v35, v36, "SearchEstimateAndPreScoreActivePels");
      }
    }

    v46 = 1;
    v47 = *(**a5 + 504);
    a4 = v261;
    do
    {
      if (v47 != *((*a5)[v46] + 504))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3447, "recogctl/recogctl", 8, "%.500s %d %d %d", v35, v36, "SearchPartialIncludePrefiltererResult");
      }

      ++v46;
    }

    while (v42 != v46);
    v38 = *a5;
    a6 = v263;
    a3 = v265;
  }

  v48 = *v38;
  *(a1 + 152) = *(v48 + 340);
  *(a1 + 156) = *(v48 + 337);
  *(a1 + 880) = *(v48 + 385);
  *(a1 + 232) = a3;
  v49 = *(a1 + 904);
  if (v49)
  {
    *(v49 + 944) = a3 != 0;
    if (a3)
    {
      v50 = *(a3 + 416);
    }

    else
    {
      v50 = 0;
    }

    *(v49 + 945) = v50 & 1;
    *(v49 + 946) = a19 != 0;
    *(v49 + 947) = a4 != 0;
    *(v49 + 948) = 0;
    if (a19)
    {
      CollWords = StateMgr::getCollWords(*(*(**VocMgr::smpVocMgr + 8 * *(a19 + 8)) + 56), *(a19 + 12), 0xFFFFu, 0, v33, v34, v35, v36);
      v49 = *(a1 + 904);
      *(v49 + 948) += *(CollWords + 8);
    }

    if (a3)
    {
      v52 = *(*(a3 + 432) + 208);
    }

    else
    {
      v52 = 0;
    }

    *(v49 + 952) = v52;
    if (a19)
    {
      *(*(a1 + 904) + 956) = *((*(*a19 + 32))(a19) + 88);
      v53 = *((*(*a19 + 32))(a19) + 92);
      v49 = *(a1 + 904);
    }

    else
    {
      v53 = 0;
      *(v49 + 956) = 0;
    }

    *(v49 + 960) = v53;
    *(v49 + 964) = *(**a5 + 152);
    v54 = a22[1];
    *(v49 + 1088) = *a22;
    *(v49 + 1104) = v54;
    v55 = *(a1 + 232);
    if (v55 && *v55 - 1 <= 0xFFFFFFFD)
    {
      *(*(a1 + 904) + 972) = ChannelMgr::getChannelType(ChannelMgr::smpChannelMgr, *v55, v31, v32, v33, v34, v35, v36) - 1 < 2;
    }
  }

  *(a1 + 424) = a19;
  *(a1 + 432) = a4;
  *(a1 + 64) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = a21;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  if (!v264)
  {
    v130 = 0;
    v67 = *a5;
    goto LABEL_152;
  }

  v56 = 0;
  v262 = 0;
  do
  {
    v57 = (*a5)[v56 / 8];
    v58 = *(v57 + 188);
    v59 = *(v57 + 172);
    v60 = *(v57 + 176);
    v269[0] = *(v57 + 180);
    v269[1] = __PAIR64__(v58, v59);
    v270 = v60;
    v271 = 0;
    StateConstraint = Constraint::makeStateConstraint(a2, a7, a8, *(*a9 + v56), *(*a10 + v56), *(*a12 + v56), *(v57 + 80), *(v57 + 76), a13, a15);
    v62 = *(*(a1 + 32) + v56);
    if (v62)
    {
      if (*(a1 + 8) == 1)
      {
        Recognizer::beginTrackingConfidenceStatistics(v62);
        v62 = *(*(a1 + 32) + v56);
      }

      Recognizer::resetRecognizerStats(v62);
      Recognizer::setInitialContext(*(*(a1 + 32) + v56), a6 + 1);
      Recognizer::setContextPars(*(*(a1 + 32) + v56), v269);
      Recognizer::setEmbeddedTransducers(*(*(a1 + 32) + v56), *(*a11 + v56));
      v63 = *(*(a1 + 32) + v56);
      *(a1 + 64) = *(v63 + 200);
      goto LABEL_45;
    }

    FstCore::resetRecognizerStats(*(*(a1 + 48) + v56));
    v64 = *(*(*(a1 + 48) + v56) + 72);
    v65 = MemChunkAlloc(0x18uLL, 0);
    *v65 = *v269;
    *(v65 + 4) = v270;
    *(v65 + 20) = v271;
    *(v64 + 136) = v65;
    FstCore::setEmbeddedTransducers(*(*(a1 + 48) + v56), *(*a11 + v56));
    v63 = *(*(a1 + 32) + v56);
    if (v63)
    {
      v262 = 1;
      a6 = v263;
LABEL_45:
      Recognizer::setConstraint(v63, StateConstraint);
      goto LABEL_46;
    }

    FstCore::setConstraint(*(*(a1 + 48) + v56), StateConstraint);
    v262 = 1;
    a6 = v263;
LABEL_46:
    v66 = *(*(a1 + 32) + v56);
    if (v66)
    {
      *(v66 + 361) = a14;
    }

    v56 += 8;
  }

  while (8 * v264 != v56);
  v67 = *a5;
  if (v264 != 1)
  {
    v68 = 1;
    v69 = *(*v67 + 132);
    do
    {
      if (v69 != *((*a5)[v68] + 132))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3609, "recogctl/recogctl", 8, "%.500s %d %d %d", v35, v36, "SearchDecimationType");
      }

      ++v68;
    }

    while (v264 != v68);
    if (v264 <= 2)
    {
      v70 = 2;
    }

    else
    {
      v70 = v264;
    }

    v71 = 1;
    v72 = *(**a5 + 128);
    do
    {
      if (v72 != *((*a5)[v71] + 128))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3611, "recogctl/recogctl", 7, "%.500s %d %d %d", v35, v36, "SearchConTransAccStartFrame");
      }

      ++v71;
    }

    while (v70 != v71);
    v73 = 1;
    v74 = *(**a5 + 124);
    do
    {
      if (v74 != *((*a5)[v73] + 124))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3613, "recogctl/recogctl", 7, "%.500s %d %d %d", v35, v36, "SearchConTransAccRampFrames");
      }

      ++v73;
    }

    while (v70 != v73);
    v75 = 1;
    v76 = *(**a5 + 120);
    do
    {
      if (v76 != *((*a5)[v75] + 120))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3615, "recogctl/recogctl", 7, "%.500s %d %d %d", v35, v36, "SearchConTransAccMaxSilenceFrames");
      }

      ++v75;
    }

    while (v70 != v75);
    v77 = **a5;
    v78 = *(v77 + 112);
    v79 = *(v77 + 104);
    if (v78)
    {
      v80 = v79;
    }

    else
    {
      v80 = &unk_26288E838;
    }

    for (k = 1; k != v70; ++k)
    {
      v82 = (*a5)[k];
      v83 = *(v82 + 112);
      v84 = *(v82 + 104);
      if (v83)
      {
        v85 = v84;
      }

      else
      {
        v85 = &unk_26288E838;
      }

      if (strcmp(v80, v85))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3617, "recogctl/recogctl", 10, "%.500s %d %.500s %.500s", v86, v87, "SearchConTransAccFactorList");
      }
    }

    v88 = 1;
    v89 = *(**a5 + 96);
    do
    {
      if (v89 != *((*a5)[v88] + 96))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3619, "recogctl/recogctl", 7, "%.500s %d %d %d", v86, v87, "SearchConTransAccDecayFrequency");
      }

      ++v88;
    }

    while (v70 != v88);
    v90 = 1;
    v91 = *(**a5 + 88);
    do
    {
      if (v91 != *((*a5)[v90] + 88))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3621, "recogctl/recogctl", 9, "%.500s %d %g %g", v86, v87, "SearchConTransAccDecayFactor");
      }

      ++v90;
    }

    while (v70 != v90);
    v92 = 1;
    v93 = *(**a5 + 136);
    do
    {
      if (v93 != *((*a5)[v92] + 136))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3623, "recogctl/recogctl", 9, "%.500s %d %g %g", v86, v87, "SearchEnableGenoneScoreCacheThresh");
      }

      ++v92;
    }

    while (v70 != v92);
    v94 = *(**a5 + 368);
    for (m = 1; m != v70; ++m)
    {
      if (v94 != *((*a5)[m] + 368))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3625, "recogctl/recogctl", 6, "%.500s %d %.500s %.500s", v86, v87, "SearchTruncatePackedIntComponentScores");
      }
    }

    v96 = 1;
    v97 = *(**a5 + 144);
    do
    {
      if (v97 != *((*a5)[v96] + 144))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3627, "recogctl/recogctl", 9, "%.500s %d %g %g", v86, v87, "SearchFmpeMinimumPosteriorProbability");
      }

      ++v96;
    }

    while (v70 != v96);
    v98 = **a5;
    v136 = *(v98 + 400) == 0;
    v99 = *(v98 + 392);
    if (v136)
    {
      v100 = &unk_26288E838;
    }

    else
    {
      v100 = v99;
    }

    for (n = 1; n != v70; ++n)
    {
      v102 = (*a5)[n];
      v103 = *(v102 + 400);
      v104 = *(v102 + 392);
      if (v103)
      {
        v105 = v104;
      }

      else
      {
        v105 = &unk_26288E838;
      }

      if (strcmp(v100, v105))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3629, "recogctl/recogctl", 10, "%.500s %d %.500s %.500s", v106, v107, "SearchHierScorerBeamList");
      }
    }

    v108 = **a5;
    v136 = *(v108 + 464) == 0;
    v109 = *(v108 + 456);
    if (v136)
    {
      v110 = &unk_26288E838;
    }

    else
    {
      v110 = v109;
    }

    for (ii = 1; ii != v70; ++ii)
    {
      v112 = (*a5)[ii];
      v113 = *(v112 + 464);
      v114 = *(v112 + 456);
      if (v113)
      {
        v115 = v114;
      }

      else
      {
        v115 = &unk_26288E838;
      }

      if (strcmp(v110, v115))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3631, "recogctl/recogctl", 10, "%.500s %d %.500s %.500s", v35, v36, "SearchHierScorerCutoffRatioList");
      }
    }

    v116 = 1;
    v117 = *(**a5 + 408);
    do
    {
      if (v117 != *((*a5)[v116] + 408))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3633, "recogctl/recogctl", 7, "%.500s %d %d %d", v35, v36, "SearchHierInactiveComponentScore");
      }

      ++v116;
    }

    while (v70 != v116);
    v118 = 1;
    v119 = *(**a5 + 312);
    do
    {
      if (v119 != *((*a5)[v118] + 312))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3635, "recogctl/recogctl", 9, "%.500s %d %g %g", v35, v36, "SearchPelScoreScale");
      }

      ++v118;
    }

    while (v70 != v118);
    v120 = 1;
    v121 = *(**a5 + 152);
    do
    {
      if (v121 != *((*a5)[v120] + 152))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3637, "recogctl/recogctl", 8, "%.500s %d %d %d", v35, v36, "SearchFrameTransformerThreadingType");
      }

      ++v120;
    }

    while (v70 != v120);
    v122 = 1;
    v123 = *(**a5 + 156);
    do
    {
      if (v123 != *((*a5)[v122] + 156))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3638, "recogctl/recogctl", 8, "%.500s %d %d %d", v35, v36, "SearchThreadingType");
      }

      ++v122;
    }

    while (v70 != v122);
    v124 = *(**a5 + 328);
    for (jj = 1; jj != v70; ++jj)
    {
      if (v124 != *((*a5)[jj] + 328))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3640, "recogctl/recogctl", 6, "%.500s %d %.500s %.500s", v35, v36, "SearchPrefilterResultUseCrumbBank");
      }
    }

    v126 = 1;
    v127 = *(**a5 + 332);
    do
    {
      if (v127 != *((*a5)[v126] + 332))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3642, "recogctl/recogctl", 7, "%.500s %d %d %d", v35, v36, "SearchPrefilterResultUseCrumbBankDistanceMaxFrames");
      }

      ++v126;
    }

    while (v70 != v126);
    v128 = *(**a5 + 444);
    for (kk = 1; kk != v70; ++kk)
    {
      if (v128 != *((*a5)[kk] + 444))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3644, "recogctl/recogctl", 6, "%.500s %d %.500s %.500s", v35, v36, "FstCoreRepeatFrame");
      }
    }

    v67 = *a5;
    a6 = v263;
  }

  a4 = v261;
  v130 = v262;
LABEL_152:
  v131 = *v67;
  v132 = *(v131 + 132);
  *(a1 + 1048) = v132;
  if (*(a1 + 232))
  {
    v133 = *(*(ModelMgr::smpModelMgr + 40) + 8 * *(a1 + 12));
    *(a1 + 320) = 0;
    v134 = *(v131 + 128);
    *(a1 + 332) = v134;
    v135 = *(v133 + 40);
    *(a1 + 384) = v135;
    if (v134)
    {
      v136 = v135 == 0;
    }

    else
    {
      v136 = 0;
    }

    if (v136)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3665, "recogctl/recogctl", 1, "%s", v35, v36, &unk_26288E838);
      v134 = *(a1 + 332);
    }

    if (((v134 != 0) & v130) == 1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3667, "recogctl/recogctl", 11, "%s", v35, v36, &errStr_recogctl_recogctl_E_ONLINE_CONSTRAINED_TRANSACC_INVALID_WITH_FST);
    }

    v137 = **(a1 + 232);
    if (v137 - 1 <= 0xFFFFFFFD)
    {
      HasFeatData = ChannelMgr::sourceHasFeatData(ChannelMgr::smpChannelMgr, v137, v31, v32, v33, v34, v35, v36);
      if (*(a1 + 332))
      {
        if (HasFeatData)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3674, "recogctl/recogctl", 5, "%s", v139, v140, &errStr_recogctl_recogctl_E_ONLINE_CONSTRAINED_TRANSACC_INVALID_WITH_FEATURES);
        }
      }
    }

    v141 = **a5;
    *(a1 + 336) = *(v141 + 124);
    *(a1 + 340) = *(v141 + 120);
    if (*(a1 + 332))
    {
      v142 = *(a1 + 384);
      v143 = *(v142 + 8);
      v144 = *(a1 + 356);
      if (v143 > v144)
      {
        DgnPrimArray<unsigned long long>::reallocElts(a1 + 344, v143 - v144, 0);
        v142 = *(a1 + 384);
        v141 = **a5;
      }

      *(a1 + 352) = v143;
      *(a1 + 328) = *(v142 + 4);
    }

    v145 = *(v141 + 112);
    v146 = *(v141 + 104);
    if (v145)
    {
      v147 = v146;
    }

    else
    {
      v147 = &unk_26288E838;
    }

    DgnSplitStringParValueIntoDoubleArray("SearchConTransAccFactorList", "accumulation factors", v147, 1.0, 0.0, 1.0, (a1 + 344));
    v150 = **a5;
    *(a1 + 360) = *(v150 + 96);
    v151 = *(v150 + 88);
    *(a1 + 368) = v151;
    if (v151 == 0.0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3699, "recogctl/recogctl", 2, "%s", v148, v149, &errStr_recogctl_recogctl_E_DISALLOWED_DECAY_FACTOR);
      v150 = **a5;
    }

    *(a1 + 376) = 0x3FF0000000000000;
    v152 = *a6;
    v153 = *(v150 + 368);
    v154 = *(v150 + 136);
    v155 = *(v150 + 144);
    if (*(v150 + 400))
    {
      v156 = *(v150 + 392);
    }

    else
    {
      v156 = &unk_26288E838;
    }

    if (*(v150 + 464))
    {
      v157 = *(v150 + 456);
    }

    else
    {
      v157 = &unk_26288E838;
    }

    v158 = *(v150 + 408);
    if (v152)
    {
      LOBYTE(v152) = *(v150 + 449) ^ 1;
      v159 = *(v150 + 450) ^ 1u;
    }

    *(a1 + 248) = User::newPelScorer(v133, *(a1 + 332) != 0, v154, v153, v155, v156, v157, v158, v152 & 1);
    v169 = *(ChannelMgr::getSigProc(ChannelMgr::smpChannelMgr, *(*(a1 + 232) + 4), v161, v162, v163, v164, v165, v166) + 400);
    v170 = **a5;
    v171 = *(v170 + 312);
    v172 = *(v170 + 444);
    if (v132 == 1)
    {
      v160 = 2;
    }

    else
    {
      v160 = 1;
    }

    if (v132 == 1)
    {
      if (v172)
      {
        v171 = v171 * 0.5;
      }
    }

    else if (v172)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3739, "recogctl/recogctl", 15, "%s", v167, v168, &errStr_recogctl_recogctl_E_DISALLOWED_REPEAT_FRAME_WITH_NO_DECIMATION);
    }

    v173 = *(a1 + 248);
    FeaturesPerFrame = Utterance::getFeaturesPerFrame(*(a1 + 232));
    (*(*v173 + 40))(v173, FeaturesPerFrame, 0, v169, 1, *(a1 + 224), *(**a5 + 320), v171);
    TransformedFrames = Utterance::getTransformedFrames(*(a1 + 232), *(a1 + 12), v160);
    if (TransformedFrames)
    {
      *(a1 + 464) = TransformedFrames;
    }

    else
    {
      v176 = MemChunkAlloc(0x18uLL, 0);
      v176[1] = 0;
      v176[2] = 0;
      *v176 = 0;
      *(v176 + 1) = -16;
      *(a1 + 480) = v176;
      *(a1 + 492) = v160;
      *(a1 + 464) = v176;
      v177 = *(a1 + 248);
      v178 = *(v177 + 56);
      if (v178)
      {
        v179 = *(v178 + 112);
      }

      else
      {
        v179 = 0;
      }

      FrameTransformer = FrameTransformer::makeFrameTransformer(a6[7], *(v133 + 368), *(v133 + 16), *(v133 + 32), v179, *(**a5 + 152), v160, *(v177 + 131), *(v177 + 136), *(v177 + 144));
      *(a1 + 448) = FrameTransformer;
      (*(*FrameTransformer + 64))(FrameTransformer);
    }

    if (*(*(a1 + 248) + 96))
    {
      v181 = MemChunkAlloc(0x48uLL, 0);
      ConstrainedTransAccMgr::ConstrainedTransAccMgr(v181, a1, v169);
      *(a1 + 512) = v182;
      ConstrainedTransAccMgr::initAccum(v182, 1, v183, v184, v185, v186, v187, v188);
    }
  }

  else
  {
    v160 = 0;
  }

  v189 = *(a1 + 496);
  if (v189)
  {
    (*(*v189 + 24))(v189);
    v190 = MemChunkAlloc(0x18uLL, 0);
    v190[1] = 0;
    v190[2] = 0;
    *v190 = 0;
    *(v190 + 1) = -16;
    *(a1 + 504) = v190;
  }

  v191 = *(a1 + 424);
  if (v191)
  {
    v192 = *(*(a1 + 912) + 48);
    if (v132)
    {
      v193 = 1;
    }

    else
    {
      v193 = v192 == 0;
    }

    if (!v193 || (v132 == 1 ? (v194 = v192 == 1) : (v194 = 1), !v194))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3812, "recogctl/recogctl", 3, "%s", v35, v36, &errStr_recogctl_recogctl_E_MISMATCHED_DECIMATION);
      v191 = *(a1 + 424);
    }

    (*(*v191 + 40))(v191, a16);
    v195 = *(a1 + 424);
    v196 = *(a1 + 224);
    MicrosecPerFrame = Utterance::getMicrosecPerFrame(*(a1 + 232));
    v198 = Utterance::getFeaturesPerFrame(*(a1 + 232));
    SigProc = ChannelMgr::getSigProc(ChannelMgr::smpChannelMgr, *(*(a1 + 232) + 4), v199, v200, v201, v202, v203, v204);
    (*(*v195 + 48))(v195, v196, MicrosecPerFrame, v198, *(SigProc + 400), *(a1 + 912));
    if (a6[3])
    {
      (*(**(a1 + 424) + 72))(*(a1 + 424));
    }

    if ((*(**(a1 + 424) + 144))(*(a1 + 424)) == *(a1 + 12))
    {
      *(a1 + 456) = *(a1 + 464);
      *(a1 + 472) = *(a1 + 480);
      *(a1 + 488) = *(a1 + 492);
      *(a1 + 440) = *(a1 + 448);
    }

    else
    {
      v206 = *(a1 + 232);
      v207 = (*(**(a1 + 424) + 144))(*(a1 + 424));
      v208 = Utterance::getTransformedFrames(v206, v207, v160);
      if (v208)
      {
        *(a1 + 456) = v208;
      }

      else
      {
        v209 = MemChunkAlloc(0x18uLL, 0);
        v209[1] = 0;
        v209[2] = 0;
        *v209 = 0;
        *(v209 + 1) = -16;
        *(a1 + 472) = v209;
        *(a1 + 488) = v160;
        *(a1 + 456) = v209;
        v210 = ModelMgr::smpModelMgr;
        v211 = *(*(v210 + 40) + 8 * (*(**(a1 + 424) + 144))(*(a1 + 424)));
        v212 = (*(**(a1 + 424) + 160))(*(a1 + 424));
        v213 = a6[8];
        v214 = *(v212 + 56);
        if (v214)
        {
          v215 = *(v214 + 112);
        }

        else
        {
          v215 = 0;
        }

        v216 = FrameTransformer::makeFrameTransformer(a6[8], *(v211 + 368), *(v211 + 16), *(v211 + 32), v215, *(**a5 + 152), v160, *(v212 + 131), *(v212 + 136), *(v212 + 144));
        *(a1 + 440) = v216;
        (*(*v216 + 64))(v216);
      }
    }
  }

  *(a1 + 290) = 0;
  if (a4 | *(a1 + 424))
  {
    v217 = a20;
    *(a1 + 528) = a20;
    v218 = **a5;
    if (*(v218 + 328) == 1)
    {
      *(a1 + 544) = 1;
      *(a1 + 548) = *(v218 + 332);
      v217 = MemChunkAlloc(0x20uLL, 0);
      PrefilterResult::PrefilterResult(v217, a2);
      *(a1 + 536) = v219;
      if (!*(a1 + 528))
      {
        v220 = MemChunkAlloc(0x20uLL, 0);
        PrefilterResult::PrefilterResult(v220, a2);
        *(a1 + 528) = v221;
      }
    }

    v222 = MemChunkAlloc(0x58uLL, 0);
    *(a1 + 520) = ReturnListQueue::ReturnListQueue(v222, v217, *(a1 + 64), a2);
    if (a4)
    {
      PrefilterResult::copyIntoQueue(a4, v222);
      *(a1 + 290) = 1;
    }
  }

  else
  {
    v223 = **a5;
    if (*(v223 + 328) == 1)
    {
      *(a1 + 544) = 1;
      *(a1 + 548) = *(v223 + 332);
      v224 = MemChunkAlloc(0x20uLL, 0);
      PrefilterResult::PrefilterResult(v224, a2);
      *(a1 + 528) = v225;
    }
  }

  if (*(a1 + 40))
  {
    v226 = 0;
    do
    {
      v227 = *(*(a1 + 32) + 8 * v226);
      if (v227)
      {
        Recognizer::beginTopRecSyncRecog(v227, v160, a24, a25);
      }

      else
      {
        RequiredVirtMapSize = FstCore::getRequiredVirtMapSize(*(*(a1 + 48) + 8 * v226));
        VirtMap = RecogCtlMgr::getVirtMap(RecogCtlMgr::smpRecogCtlMgr, RequiredVirtMapSize);
        FstCore::beginTopRecSyncRecog(*(*(a1 + 48) + 8 * v226), v160, VirtMap);
        if (*(*a18 + v226) == 1)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3950, "recogctl/recogctl", 4, "%.500s", v230, v231, "Prefiltering in startRecognizeOne");
        }
      }

      ++v226;
    }

    while (v226 < *(a1 + 40));
  }

  DgnPrimArray<BOOL>::copyArraySlice(a1 + 552, a18, 0, *(a18 + 8));
  *(a1 + 568) = 0;
  if (*(a1 + 40))
  {
    v236 = 0;
    do
    {
      v237 = *(a1 + 824);
      if (v237 == *(a1 + 828))
      {
        DgnArray<PrefilterResultFrame>::reallocElts(a1 + 816, 1, 1);
        v237 = *(a1 + 824);
      }

      v238 = (*(a1 + 816) + 32 * v237);
      *v238 = 0u;
      v238[1] = 0u;
      ++*(a1 + 824);
      v239 = *(a1 + 872);
      if (v239 == *(a1 + 876))
      {
        DgnArray<PrefilterResultFrame>::reallocElts(a1 + 864, 1, 1);
        v239 = *(a1 + 872);
      }

      v240 = (*(a1 + 864) + 32 * v239);
      *v240 = 0u;
      v240[1] = 0u;
      ++*(a1 + 872);
      v241 = v263[4];
      if (v241)
      {
        v242 = *(*(a1 + 32) + 8 * v236);
        if (!v242)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3970, "recogctl/recogctl", 4, "%.500s", v234, v235, "setPelScores");
          v242 = *(*(a1 + 32) + 8 * v236);
          v241 = v263[4];
        }

        Recognizer::setPelScores(v242, v241);
      }

      ++v236;
    }

    while (v236 < *(a1 + 40));
  }

  *(a1 + 288) = 0;
  *(a1 + 392) = 0;
  *(a1 + 316) = 0;
  *(a1 + 300) = 0;
  *(a1 + 308) = 0;
  *(a1 + 292) = 0;
  if (*(a1 + 232))
  {
    v243 = MemChunkAlloc(0x18uLL, 0);
    v243[1] = 0;
    v243[2] = 0;
    *v243 = 0;
    *(v243 + 1) = -16;
    *(a1 + 240) = v243;
    UttFeatureArraySynchronizedArray::update(v243, *(a1 + 232));
    v244 = *(a1 + 240);
    *(a1 + 292) = *(v244 + 16);
    *(a1 + 289) = *v244;
  }

  v245 = *(a1 + 928);
  if (v245 == -1)
  {
    v246 = *(a1 + 40);
    goto LABEL_259;
  }

  RecogController::setCallerThreadIdForChildren(a1, v245);
  v246 = *(a1 + 40);
  if (v246)
  {
    v247 = *(a1 + 32);
    v248 = *(a1 + 40);
    do
    {
      if (*v247)
      {
        *(*v247 + 672) = 0;
      }

      v247 += 8;
      --v248;
    }

    while (v248);
LABEL_259:
    LODWORD(v249) = v246;
    if (*(a1 + 412) < v246)
    {
      v269[0] = 0;
      *(a1 + 412) = realloc_array(*(a1 + 400), v269, v246, *(a1 + 408), *(a1 + 408), 1);
      *(a1 + 400) = v269[0];
      LODWORD(v249) = *(a1 + 40);
    }

    *(a1 + 408) = v246;
    if (v249)
    {
      v250 = 0;
      while (1)
      {
        *(*(a1 + 400) + v250) = 0;
        v251 = *(*(a1 + 32) + 8 * v250);
        if (!v251)
        {
          v256 = *(*(a1 + 48) + 8 * v250);
          v257 = *(a1 + 232);
          if (v257)
          {
            v258 = Utterance::getMicrosecPerFrame(v257);
            v259 = *(a1 + 232);
            if (v259 && (*(v259 + 416) & 1) == 0)
            {
              v260 = Utterance::numCompleteRecogFrames(v259, v160);
LABEL_277:
              FstCore::beginTopRecPassSyncRecog(v256, v258, v260, *(a1 + 248), v232, v233, v234, v235);
              goto LABEL_278;
            }
          }

          else
          {
            v258 = 0;
          }

          v260 = 4294967280;
          goto LABEL_277;
        }

        v252 = *(a1 + 232);
        if (!v252)
        {
          break;
        }

        v253 = Utterance::getMicrosecPerFrame(v252);
        v254 = *(a1 + 232);
        if (!v254 || (*(v254 + 416) & 1) != 0)
        {
          goto LABEL_273;
        }

        v255 = Utterance::numCompleteRecogFrames(v254, v160);
LABEL_274:
        Recognizer::beginTopRecPassSyncRecog(v251, v253, v255, *(a1 + 248));
LABEL_278:
        ++v250;
        v249 = *(a1 + 40);
        if (v250 >= v249)
        {
          goto LABEL_281;
        }
      }

      v253 = 0;
LABEL_273:
      v255 = -16;
      goto LABEL_274;
    }
  }

  else
  {
    LODWORD(v249) = 0;
    *(a1 + 408) = 0;
  }

LABEL_281:
  *(a1 + 416) = v249;
  *(a1 + 896) = 1;
}

double Recognizer::resetRecognizerStats(Recognizer *this)
{
  PelStats::resetStats((this + 880));
  LMStats::resetStats((this + 1056));
  SearchStats::resetStats(this + 1208);
  PelStats::resetStats((this + 1240));
  LMStats::resetStats((this + 1416));
  SearchStats::resetStats(this + 1568);
  *(this + 585) = 0;
  *(this + 2308) = 0u;
  *(this + 2324) = 0u;
  LatticeStats::resetStats((this + 1616));
  result = 0.0;
  *(this + 2184) = 0u;
  *(this + 2200) = 0u;
  *(this + 2152) = 0u;
  *(this + 2168) = 0u;
  *(this + 2120) = 0u;
  *(this + 2136) = 0u;
  *(this + 2088) = 0u;
  *(this + 2104) = 0u;
  *(this + 2056) = 0u;
  *(this + 2072) = 0u;
  *(this + 2024) = 0u;
  *(this + 2040) = 0u;
  return result;
}

double FstCore::resetRecognizerStats(FstCore *this)
{
  PelStats::resetStats((this + 80));
  PelStats::resetStats((this + 256));
  SearchStats::resetStats(this + 432);
  SearchStats::resetStats(this + 464);
  *(this + 137) = 0;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 42) = 0u;

  return LatticeStats::resetStats((this + 688));
}

void RecogController::setCallerThreadIdForChildren(RecogController *this, int a2)
{
  v4 = *(this + 53);
  if (v4)
  {
    v5 = (*(*v4 + 168))(v4);
    v12 = DgnThreadMgr::smpThreadMgr;
    if (*(DgnThreadMgr::smpThreadMgr + 16) <= v5 || (v13 = *(*(DgnThreadMgr::smpThreadMgr + 8) + 8 * v5)) == 0)
    {
      v14 = v5;
      DgnThreadMgr::throwBadDgnThreadId(DgnThreadMgr::smpThreadMgr, v5, v6, v7, v8, v9, v10, v11);
      v13 = *(*(v12 + 8) + 8 * v14);
    }

    *(v13 + 64) = a2;
  }

  v15 = *(this + 62);
  if (v15)
  {
    v16 = (*(*v15 + 64))(v15);
    v23 = DgnThreadMgr::smpThreadMgr;
    if (*(DgnThreadMgr::smpThreadMgr + 16) <= v16 || (v24 = *(*(DgnThreadMgr::smpThreadMgr + 8) + 8 * v16)) == 0)
    {
      v25 = v16;
      DgnThreadMgr::throwBadDgnThreadId(DgnThreadMgr::smpThreadMgr, v16, v17, v18, v19, v20, v21, v22);
      v24 = *(*(v23 + 8) + 8 * v25);
    }

    *(v24 + 64) = a2;
  }

  v26 = *(this + 56);
  if (v26)
  {
    v27 = (*(*v26 + 120))(v26);
    v34 = DgnThreadMgr::smpThreadMgr;
    if (*(DgnThreadMgr::smpThreadMgr + 16) <= v27 || (v35 = *(*(DgnThreadMgr::smpThreadMgr + 8) + 8 * v27)) == 0)
    {
      v36 = v27;
      DgnThreadMgr::throwBadDgnThreadId(DgnThreadMgr::smpThreadMgr, v27, v28, v29, v30, v31, v32, v33);
      v35 = *(*(v34 + 8) + 8 * v36);
    }

    *(v35 + 64) = a2;
  }

  v37 = *(this + 55);
  if (v37 && v37 != *(this + 56))
  {
    v38 = (*(*v37 + 120))(v37);
    v45 = DgnThreadMgr::smpThreadMgr;
    if (*(DgnThreadMgr::smpThreadMgr + 16) <= v38 || (v46 = *(*(DgnThreadMgr::smpThreadMgr + 8) + 8 * v38)) == 0)
    {
      v47 = v38;
      DgnThreadMgr::throwBadDgnThreadId(DgnThreadMgr::smpThreadMgr, v38, v39, v40, v41, v42, v43, v44);
      v46 = *(*(v45 + 8) + 8 * v47);
    }

    *(v46 + 64) = a2;
  }
}

uint64_t RecogController::restartPostSynchronousRecognition(RecogController *this)
{
  v2 = *(this + 53);
  if (v2)
  {
    (*(*v2 + 88))(v2);
  }

  if (*(this + 10))
  {
    v3 = 0;
    do
    {
      v4 = *(this + 4);
      v5 = *(v4 + 8 * v3);
      if (v5)
      {
        Recognizer::setSynchronousRecognizerStats(*(v4 + 8 * v3));
        NetStats::operator=(*(v5 + 280) + 302696, *(v5 + 280) + 302592);
      }

      else
      {
        v6 = *(*(this + 6) + 8 * v3);
        PelStats::operator=(v6 + 256, v6 + 80);
        v7 = *(v6 + 472);
        v8 = *(v6 + 440);
        SearchStats::operator=(v6 + 464, v6 + 432);
        if (v7 <= v8)
        {
          v9 = v8;
        }

        else
        {
          v9 = v7;
        }

        *(v6 + 472) = v9;
        *(v6 + 440) = 0;
        v10 = *(*(this + 6) + 8 * v3);
        FstStats::operator=(v10 + 1376, v10 + 1120);
      }

      ++v3;
    }

    while (v3 < *(this + 10));
  }

  v11 = *(this + 50);
  *(this + 52) = *(this + 49);
  *(this + 53) = v11;
  DgnArray<SnapTime>::copyArraySlice(this + 864, this + 102, 0, *(this + 206));

  return SnapTime::recordTime((this + 192), 1, 1, 1, 1);
}

void Recognizer::setSynchronousRecognizerStats(Recognizer *this)
{
  PelStats::operator=(this + 1240, this + 880);
  LMStats::operator=(this + 1416, this + 1056);
  v2 = *(this + 394);
  v3 = *(this + 304);
  SearchStats::operator=(this + 1568, this + 1208);
  if (v2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  *(this + 394) = v4;
  *(this + 304) = 0;
}

uint64_t RecogController::recognizeOneDoMainSearch(RecogController *this, int64x2_t *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(this + 104))
  {
    return 0;
  }

  if (!*(this + 10))
  {
    goto LABEL_35;
  }

  v11 = 0;
  do
  {
    if (*(*(this + 50) + v11))
    {
      goto LABEL_15;
    }

    v12 = *(*(this + 6) + 8 * v11);
    v13 = *(*(this + 4) + 8 * v11);
    v14 = *(this + 58);
    if (!v14 || *v14 != 1)
    {
      goto LABEL_9;
    }

    v15 = *(v14 + 16);
    if (v13)
    {
      Recognizer::setRecogEndTime(*(*(this + 4) + 8 * v11), v15);
LABEL_9:
      if (!v12)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    FstCore::setRecogEndTime(*(*(this + 6) + 8 * v11), v15);
    if (!v12)
    {
      goto LABEL_11;
    }

LABEL_10:
    if (FstCore::checkForDone(v12))
    {
      goto LABEL_14;
    }

LABEL_11:
    if (v13 && ((Recognizer::checkForAbort(v13) & 1) != 0 || Recognizer::checkForDone(v13)))
    {
LABEL_14:
      *(*(this + 50) + v11) = 1;
      --*(this + 104);
    }

LABEL_15:
    ++v11;
    v16 = *(this + 10);
  }

  while (v11 < v16);
  if (!*(this + 104))
  {
    return 0;
  }

  if (v16)
  {
    v17 = 0;
    v18 = 0;
    while (1)
    {
      if ((*(*(this + 50) + v17) & 1) == 0)
      {
        v19 = *(*(this + 4) + 8 * v17);
        if (*(*(this + 69) + v17) == 1 && v19 == 0)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 4222, "recogctl/recogctl", 4, "%.500s", a7, a8, "Prefiltering in recognizeOneDoMainSearch");
          if (*(*(this + 69) + v17))
          {
LABEL_32:
            if (Recognizer::turnOffPrefilterer(v19))
            {
              *(*(this + 69) + v17) = 0;
            }

            else
            {
              v18 = 1;
            }
          }
        }

        else if (*(*(this + 69) + v17))
        {
          goto LABEL_32;
        }
      }

      if (++v17 >= *(this + 10))
      {
        goto LABEL_36;
      }
    }
  }

LABEL_35:
  v18 = 0;
LABEL_36:
  v21 = *(this + 65);
  if (!v21 || (*v21 & 1) != 0 || ReturnListQueue::getNextFrameTime(v21) > *(this + 78) + 1 || (v18 & 1) == 0 && !*(*(this + 65) + 48))
  {
    v111 = -16;
    if (*(this + 29))
    {
      v22 = (*(**(this + 31) + 72))(*(this + 31), *(this + 78), *(this + 58), &v111);
      v23 = *(this + 58);
      if (v23 && (v22 & 1) == 0)
      {
        *(this + 79) = v111;
        return 2;
      }
    }

    else
    {
      v23 = *(this + 58);
    }

    v109 = 0;
    v110 = 0;
    v108[0] = 0;
    v108[1] = 0;
    if (v23)
    {
      v25 = *(v23 + 8) + 16 * *(this + 78);
      DgnPrimArray<unsigned char>::copyArraySlice(&v109, v25, 0, *(v25 + 8));
      DgnPrimArray<unsigned char>::copyArraySlice(v108, &v109, 0, v110);
    }

    if (v18)
    {
      v26 = *(this + 65);
      if (*(this + 54) && !*(v26 + 10))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 4283, "recogctl/recogctl", 14, "%s", a7, a8, &errStr_recogctl_recogctl_E_PREFILTERRESULT_INCOMPATIBLE_WITH_UTT);
        v26 = *(this + 65);
      }

      v112[0].i32[0] = -16;
      v27 = ReturnListQueue::dequeue(v26, v112[0].i32);
      DgnArray<Germ>::copyArraySlice(this + 576, v27, 0, *(v27 + 8));
      v28 = DgnIArray<Utterance *>::~DgnIArray(v27);
      MemChunkFree(v28, 0);
      v29 = *(*(this + 65) + 4);
      if (v29 != -16 && v29 <= v112[0].i32[0] && v29 > *(this + 78))
      {
        if (*(this + 10))
        {
          v30 = 0;
          do
          {
            v31 = *(this + 4);
            v32 = *(v31 + 8 * v30);
            if (v32)
            {
              Recognizer::setSynchronousRecognizerStats(*(v31 + 8 * v30));
              NetStats::operator=(*(v32 + 280) + 302696, *(v32 + 280) + 302592);
            }

            else
            {
              v33 = *(*(this + 6) + 8 * v30);
              PelStats::operator=(v33 + 256, v33 + 80);
              v34 = *(v33 + 472);
              v35 = *(v33 + 440);
              SearchStats::operator=(v33 + 464, v33 + 432);
              if (v34 <= v35)
              {
                v36 = v35;
              }

              else
              {
                v36 = v34;
              }

              *(v33 + 472) = v36;
              *(v33 + 440) = 0;
              v37 = *(*(this + 6) + 8 * v30);
              FstStats::operator=(v37 + 1376, v37 + 1120);
            }

            ++v30;
          }

          while (v30 < *(this + 10));
        }

        DgnArray<SnapTime>::copyArraySlice(this + 864, this + 102, 0, *(this + 206));
        SnapTime::recordTime((this + 192), 1, 1, 1, 1);
      }
    }

    DgnString::DgnString(v107);
    RecogController::maybeEstimateAndPreScoreActivePelsThisFrame(this, v107, &v109);
    v40 = *(this + 10);
    if (!v40)
    {
      goto LABEL_112;
    }

    v41 = 0;
    for (i = 0; i < v40; ++i)
    {
      v43 = *(*(this + 4) + 8 * i);
      if (v43 && (*(*(this + 50) + i) & 1) == 0)
      {
        Recognizer::doFrame1(v43);
        memset(v112, 0, 32);
        SnapTime::recordTime(v112, 1, 0, 0, 0);
        v44 = v112[1];
        v45 = vsubq_s64(v112[0], *a2);
        v46 = vsubq_s64(v112[1], a2[1]);
        *a2 = v112[0];
        a2[1] = v44;
        v47 = (*(this + 102) + v41);
        v48 = vaddq_s64(v46, v47[1]);
        *v47 = vaddq_s64(v45, *v47);
        v47[1] = v48;
        v40 = *(this + 10);
      }

      v41 += 32;
    }

    if (!v40)
    {
      goto LABEL_112;
    }

    v49 = 0;
    for (j = 0; j < v40; ++j)
    {
      if ((*(*(this + 50) + j) & 1) == 0)
      {
        v51 = *(*(this + 4) + 8 * j);
        if (v51)
        {
          Recognizer::doFrame2(v51, &v109);
        }

        else
        {
          if (*(*(this + 69) + j) == 1)
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 4393, "recogctl/recogctl", 4, "%.500s", v38, v39, "Prefiltering in recognizeOneDoMainSearch(2)");
          }

          FstCore::doFrame(*(*(this + 6) + 8 * j), &v109);
        }

        memset(v112, 0, 32);
        SnapTime::recordTime(v112, 1, 0, 0, 0);
        v52 = v112[1];
        v53 = vsubq_s64(v112[0], *a2);
        v54 = vsubq_s64(v112[1], a2[1]);
        *a2 = v112[0];
        a2[1] = v52;
        v55 = (*(this + 102) + v49);
        v56 = vaddq_s64(v54, v55[1]);
        *v55 = vaddq_s64(v53, *v55);
        v55[1] = v56;
        v40 = *(this + 10);
      }

      v49 += 32;
    }

    if (!v40)
    {
LABEL_112:
      v101 = -1;
      goto LABEL_113;
    }

    v57 = 0;
    v58 = 0;
    v59 = 20000;
    v101 = -1;
    do
    {
      v60 = *(*(this + 4) + 8 * v58);
      if (v60 && (*(*(this + 50) + v58) & 1) == 0)
      {
        if (*(*(this + 69) + v58) == 1)
        {
          Recognizer::doFrame3(v60, this + 576);
        }

        else
        {
          Recognizer::doFrame3(v60, 0);
        }

        memset(v112, 0, 32);
        SnapTime::recordTime(v112, 1, 0, 0, 0);
        v61 = v112[1];
        v62 = vsubq_s64(v112[0], *a2);
        v63 = vsubq_s64(v112[1], a2[1]);
        *a2 = v112[0];
        a2[1] = v61;
        v64 = (*(this + 102) + v57);
        v65 = vaddq_s64(v63, v64[1]);
        *v64 = vaddq_s64(v62, *v64);
        v64[1] = v65;
        v66 = *(v60 + 280);
        if (*(v66 + 240) < v59)
        {
          v101 = *(v66 + 230);
          v59 = *(v66 + 240);
        }
      }

      ++v58;
      v67 = *(this + 10);
      v57 += 32;
    }

    while (v58 < v67);
    if (*(this + 10))
    {
      v99 = a3;
      v68 = 0;
      v100 = v18;
      while (1)
      {
        if ((*(*(this + 50) + v68) & 1) == 0)
        {
          v69 = *(*(this + 4) + 8 * v68);
          if (v69)
          {
            if (*(v69 + 2352))
            {
              break;
            }
          }
        }

LABEL_110:
        if (++v68 >= v67)
        {
          a3 = v99;
          goto LABEL_113;
        }
      }

      v102 = v68;
      v70 = 0;
      v71 = 0;
      while (1)
      {
        v72 = (*(v69 + 2344) + v70);
        v73 = *v72;
        v74 = *(v72 + 2);
        v75 = *(v72 + 3);
        v76 = *(v72 + 8);
        v77 = *(v72 + 5);
        v78 = *(v72 + 6);
        FstActiveWord = 0;
        *v105 = v73;
        v106 = v74;
        if (!*(this + 236))
        {
          break;
        }

        v79 = (*Hash<EmbStateSpec,EmbStateSpec,EmbStateSpecToActiveWordScope,ActiveWord *>::findBucket(this + 936, v105))[3];
        FstActiveWord = v79;
        if (!v79)
        {
          v80 = v105[2];
          v74 = v106;
          goto LABEL_99;
        }

LABEL_108:
        (*(*v79 + 32))(v79, v78);
        (*(*FstActiveWord + 24))(FstActiveWord, v76, v75, v77);
        ++v71;
        v70 += 28;
        if (v71 >= *(v69 + 2352))
        {
          v67 = *(this + 10);
          v18 = v100;
          v68 = v102;
          goto LABEL_110;
        }
      }

      v80 = WORD2(v73);
LABEL_99:
      v112[0].i32[0] = (v80 << 25) | 0xFFFFF8;
      v112[0].i32[1] = 0x3FFF;
      v112[0].i32[2] = v74;
      *(&v112[0].i64[1] + 4) = 0xFAFFFFFCFFFFFFFELL;
      v112[1].i32[1] = -83886084;
      v81 = *(v69 + 280);
      Bucket = Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::findBucket(v81 + 303024, v112);
      v103 = v76;
      v83 = v77;
      v84 = v75;
      if (*Bucket)
      {
        FstActiveWord = *(*Bucket + 40);
        if (FstActiveWord)
        {
LABEL_107:
          Hash<EmbStateSpec,EmbStateSpec,EmbStateSpecToActiveWordScope,ActiveWord *>::add(this + 936, v105, &FstActiveWord);
          v75 = v84;
          v77 = v83;
          v76 = v103;
          v79 = FstActiveWord;
          goto LABEL_108;
        }
      }

      else
      {
        FstActiveWord = 0;
      }

      v85 = ModelMgr::smpModelMgr;
      EmbRecSpecId = ModelMgr::getEmbRecSpecId(ModelMgr::smpModelMgr, v105[2], v106);
      v87 = *(ModelMgr::getEmbeddedRecSpec(v85, EmbRecSpecId) + 16);
      v88 = *(this + 262);
      v89 = (*(*this + 200))(this);
      if (v88 == 1)
      {
        v90 = 2;
      }

      else
      {
        v90 = 1;
      }

      FstActiveWord = FstCore::makeFstActiveWord(v112, v81, (*(*(this + 2) + 8 * v102) + 216), *(this + 5), v89, v87, *(this + 31), *(v69 + 316), *(v69 + 352), v90);
      Active::addActiveWordFst(v81, v112, FstActiveWord);
      goto LABEL_107;
    }

LABEL_113:
    RecogController::maybeCleanupAfterEstimateAndPreScoreActivePels(this, v107);
    if (*(this + 29))
    {
      if (*(*(this + 31) + 96))
      {
        if (RecogController::accumulate(this, v101, v108))
        {
          v95 = *(this + 80) + 1;
          *(this + 80) = v95;
          v96 = *(this + 83);
          if (v95 > v96)
          {
            memset(v112, 0, 32);
            v97 = *(this + 84);
            v98 = 1.0;
            if (v95 < v97 + v96)
            {
              v98 = (v95 - v96) / v97;
            }

            *v105 = 0;
            ConstrainedTransAccMgr::computeTransform(*(this + 64), 1, v98, v112, v105, v91, v92, v93, v94);
          }
        }
      }
    }

    ++*(this + 78);
    if ((v18 & 1) == 0 || !*(this + 53))
    {
      *(this + 290) = 1;
    }

    ++*a3;
    BitArray::~BitArray(v107);
    DgnPrimArray<unsigned int>::~DgnPrimArray(v108);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v109);
    return 0;
  }

  return 1;
}

void sub_2627DBA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va2, a10);
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  BitArray::~BitArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  _Unwind_Resume(a1);
}

uint64_t RecogController::maybeEstimateAndPreScoreActivePelsThisFrame(uint64_t result, BitArray *a2, uint64_t a3)
{
  if (*(result + 880) == 1)
  {
    v23 = v3;
    v24 = v4;
    v7 = result;
    v21 = 0u;
    v22 = 0u;
    SnapTime::recordTime(&v21, 1, 0, 0, 0);
    BitArray::setSize(a2, *(*(*(v7 + 248) + 16) + 144));
    if (*(v7 + 40))
    {
      v14 = 0;
      do
      {
        v15 = *(*(v7 + 32) + 8 * v14);
        if (v15)
        {
          Active::estimateActivePelsThisFrame(*(v15 + 280), a2);
        }

        else
        {
          FstCore::estimateActivePelsThisFrame(*(*(v7 + 48) + 8 * v14), a2, v8, v9, v10, v11, v12, v13);
        }

        ++v14;
      }

      while (v14 < *(v7 + 40));
    }

    v19 = 0u;
    v20 = 0u;
    SnapTime::recordTime(&v19, 1, 0, 0, 0);
    v16 = vaddq_s64(vsubq_s64(v20, v22), *(v7 + 736));
    *(v7 + 720) = vaddq_s64(vsubq_s64(v19, v21), *(v7 + 720));
    *(v7 + 736) = v16;
    (*(**(v7 + 248) + 56))(*(v7 + 248), *(v7 + 312), 0, a3, *(v7 + 904) + 304, 0);
    (*(**(v7 + 248) + 112))(*(v7 + 248), a2);
    (*(**(v7 + 248) + 64))(*(v7 + 248), *(v7 + 312), *(v7 + 904) + 304);
    memset(v18, 0, sizeof(v18));
    SnapTime::recordTime(v18, 1, 0, 0, 0);
    v17 = vaddq_s64(vsubq_s64(v20, v22), *(v7 + 768));
    *(v7 + 752) = vaddq_s64(vsubq_s64(v19, v21), *(v7 + 752));
    *(v7 + 768) = v17;
    return PelScorer::startRecordRequestedPels(*(v7 + 248));
  }

  return result;
}

uint64_t Hash<EmbStateSpec,EmbStateSpec,EmbStateSpecToActiveWordScope,ActiveWord *>::add(uint64_t result, uint64_t *a2, void *a3)
{
  v5 = result;
  v6 = *(result + 12);
  if (*(result + 8) >= v6 >> 1)
  {
    result = HashKEV<unsigned int,unsigned int,CWIDScope>::upSize(result, 2 * v6);
  }

  v7 = ((*a2 >> 19) & 0x1FFFE000) + *(a2 + 2);
  v8 = *(v5 + 16);
  if (v8)
  {
    v9 = (-1640531527 * v7) >> -v8;
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
  v13 = *a2;
  *(v11 + 20) = *(a2 + 2);
  *(v11 + 12) = v13;
  *(v11 + 24) = *a3;
  *(v11 + 8) = v7;
  ++*(v5 + 8);
  if (*(v5 + 20))
  {
    *v11 = *v12;
  }

  else
  {
    *v11 = 0;
    v14 = *v12;
    if (*v12)
    {
      do
      {
        v12 = v14;
        v14 = *v14;
      }

      while (v14);
    }
  }

  *v12 = v11;
  return result;
}

int64x2_t RecogController::maybeCleanupAfterEstimateAndPreScoreActivePels(RecogController *this, const BitArray *a2)
{
  if (*(this + 880) == 1)
  {
    v11 = v2;
    v12 = v3;
    v9 = 0u;
    v10 = 0u;
    SnapTime::recordTime(&v9, 1, 0, 0, 0);
    PelScorer::startRecordRequestedPels(*(this + 31));
    v7 = 0u;
    v8 = 0u;
    SnapTime::recordTime(&v7, 1, 0, 0, 0);
    result = vaddq_s64(vsubq_s64(v7, v9), *(this + 47));
    v6 = vaddq_s64(vsubq_s64(v8, v10), *(this + 48));
    *(this + 47) = result;
    *(this + 48) = v6;
  }

  return result;
}

BOOL RecogController::accumulate(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  *&v29[40] = 0u;
  v6 = PelStats::resetStats(v29);
  v7 = (*(*a1 + 208))(a1, v6);
  PelScorer::setupForUttAccumulate(v7, a3, v29);
  v8 = *(*(v7 + 120) + 56);
  v9 = *(*(*(a1 + 232) + 152) + 4 * *(a1 + 312));
  v14 = *(*(*((*(*a1 + 200))(a1) + 48) + 216) + 4 * (a2 >> 5)) & (1 << a2);
  v15 = *(a1 + 312);
  if (v15)
  {
    v16 = 18;
    if (v9 == 1)
    {
      v19 = *(*(*(a1 + 232) + 152) + 4 * (v15 - 1));
      if (v19 == 1)
      {
        v16 = 15;
      }

      else
      {
        v16 = 18;
      }

      if (v19 == 2)
      {
        v16 = 12;
      }
    }

    else if (v9 == 2)
    {
      v17 = *(*(*(a1 + 232) + 152) + 4 * (v15 - 1));
      if (v17 == 1)
      {
        v18 = 6;
      }

      else
      {
        v18 = 18;
      }

      if (v17 == 2)
      {
        v16 = 3;
      }

      else
      {
        v16 = v18;
      }
    }
  }

  else if (v9 == 1)
  {
    v16 = 9;
  }

  else
  {
    v16 = 0;
  }

  if (v14)
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  if (!a2)
  {
    v20 = 0;
  }

  v21 = v16 + v20;
  v22 = *(a1 + 384);
  v23 = *(*(v22 + 16) + 4 * (v21 + 18 * *(a1 + 328)));
  *(a1 + 328) = v23;
  v24 = *(*(v22 + 32) + 4 * (v21 + 18 * v23));
  if (v24 == -1)
  {
    return 0;
  }

  v25 = *(a1 + 376) * *(*(a1 + 344) + 8 * v24);
  if (v23)
  {
    result = ConstrainedTransAccMgr::adaptPel(*(a1 + 512), a2, v8, a3, v10, v11, v12, v13, v25);
    if (!result)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (*(a1 + 324) >= *(a1 + 340))
  {
    return 0;
  }

  result = ConstrainedTransAccMgr::adaptPel(*(a1 + 512), a2, v8, a3, v10, v11, v12, v13, v25);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 324);
LABEL_30:
  v27 = *(a1 + 360);
  if (v27 && !((*(a1 + 320) + 1) % v27))
  {
    v28 = *(a1 + 376);
    if (v28 >= 1000000.0)
    {
      ConstrainedTransAccMgr::downScaleAccum(*(a1 + 512), 1u, 1u, 1000.0);
      v28 = *(a1 + 376) / 1000.0;
    }

    *(a1 + 376) = v28 / *(a1 + 368);
  }

  return 1;
}

void RecogController::recognizeOneDoFrames(RecogController *this, MemChunkRegion *a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 104))
  {
    if (a2)
    {
      *(this + 288) = 1;
      v9 = *(this + 10);
      if (v9)
      {
        v10 = 0;
        v11 = *(this + 50);
        do
        {
          if ((*(v11 + v10) & 1) == 0)
          {
            v12 = *(*(this + 4) + 8 * v10);
            if (!v12)
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 4673, "recogctl/recogctl", 4, "%.500s", a7, a8, "bClientAbort in recognizeOneDoFrames");
            }

            Recognizer::setSearchAbortRecognizerStats(v12, 5);
            v11 = *(this + 50);
            *(v11 + v10) = 1;
            --*(this + 104);
            v9 = *(this + 10);
          }

          ++v10;
        }

        while (v10 < v9);
      }

      if (*(this + 290))
      {
        RecogController::restartPostSynchronousRecognition(this);
      }

      if (*(this + 232) == -1)
      {

        RecogController::doAtEndOfRecognition(this, a2, a3, a4, a5, a6, a7, a8);
      }
    }

    else
    {
      v13 = a3;
      v97 = 0u;
      v98 = 0u;
      v85 = 0u;
      v86 = 0u;
      SnapTime::recordTime(&v85, 1, 0, 0, 0);
      v97 = v85;
      v98 = v86;
      v21 = *(this + 29);
      v20 = *(this + 30);
      v96[0] = v21;
      v96[1] = v20;
      v96[2] = this + 292;
      v96[3] = this + 592;
      v96[4] = &v97;
      v96[5] = this + 624;
      if (v21 && (*v20 & 1) == 0)
      {
        ChannelMgr::maybeStartCollectingDataForUtt(ChannelMgr::smpChannelMgr, v21, v14, v15, v16, v17, v18, v19);
        v20 = *(this + 30);
      }

      v22 = *(this + 56);
      v23 = *(this + 60);
      v95[0] = "mainframetrans";
      v95[1] = v22;
      v95[2] = v23;
      v95[3] = this + 304;
      v95[4] = &v97;
      v95[5] = this + 688;
      if (v22 && (*v23 & 1) == 0)
      {
        (*(*v22 + 96))(v22, v20);
        v22 = *(this + 56);
        v20 = *(this + 30);
      }

      if (*(this + 55) == v22)
      {
        v24 = 0;
      }

      else
      {
        v24 = *(this + 55);
      }

      v25 = *(this + 59);
      v94[0] = "prefframetrans";
      v94[1] = v24;
      v94[2] = v25;
      v94[3] = this + 300;
      v94[4] = &v97;
      v94[5] = this + 656;
      if (v24 && (*v25 & 1) == 0)
      {
        (*(*v24 + 96))(v24, v20);
      }

      v26 = *(this + 57);
      v27 = *(this + 62);
      v28 = *(this + 63);
      v93[0] = "lookahead";
      v93[1] = v27;
      v93[2] = v28;
      v93[3] = this + 296;
      v93[4] = &v97;
      v93[5] = this + 784;
      if (v27 && (*v28 & 1) == 0)
      {
        (*(*v27 + 48))(v27, v26);
        v26 = *(this + 57);
        v28 = *(this + 63);
      }

      v29 = *(this + 53);
      v30 = *(this + 65);
      v92[0] = v29;
      v92[1] = v30;
      v92[2] = this + 308;
      v92[3] = this + 832;
      v92[4] = &v97;
      v92[5] = this + 784;
      if (v29 && (*v30 & 1) == 0)
      {
        (*(*v29 + 128))(v29, v26, v28);
      }

      v91 = 0;
      if (*(this + 104))
      {
        v31 = v13 - 1;
        do
        {
          if (*a4)
          {
            break;
          }

          v32 = RecogController::recognizeOneDoMainSearch(this, &v97, &v91, v15, v16, v17, v18, v19);
          v33 = v32;
          *(this + 98) = v32;
          if (!*(this + 104))
          {
            break;
          }

          ProcessPrefilterer::ProcessPrefilterer(&v85, *(this + 53), *(this + 57), *(this + 63), (*(this + 78) + 1), v32 == 1, *(this + 156), *(this + 65), this + 77, this + 52, &v97, this + 49);
          v34 = v87;
          if (v87 <= v90)
          {
            v35 = v90;
          }

          else
          {
            v35 = v87;
          }

          if (v90 != -16)
          {
            v34 = v35;
          }

          if (v88 <= v34)
          {
            v36 = v34;
          }

          else
          {
            v36 = v88;
          }

          ProcessLookahead::ProcessLookahead(&v81, *(this + 62), *(this + 57), v36, v89 == 3, v33 == 1, *(this + 156), *(this + 63), this + 74, &v97, this + 49);
          v38 = v89 == 2;
          if (v87 <= v90)
          {
            v39 = v90;
          }

          else
          {
            v39 = v87;
          }

          if (v90 == -16)
          {
            v40 = v87;
          }

          else
          {
            v40 = v39;
          }

          if (v88 <= v40)
          {
            v41 = v40;
          }

          else
          {
            v41 = v88;
          }

          if (v89 == 3)
          {
            if (v81)
            {
              v42 = v84;
              v38 = (*v82 & 1) == 0 && *(v82 + 16) <= v84;
            }

            else
            {
              v38 = 0;
              v42 = v84;
            }

            if (v42 <= v83)
            {
              v41 = v83;
            }

            else
            {
              v41 = v42;
            }
          }

          ProcessFrameTransform::ProcessFrameTransform(&v78, v37, *(this + 55), *(this + 30), v41, v38, v33 == 1, *(this + 156), *(this + 59), this + 75, &v97, this + 41);
          if (v33 == 2)
          {
            v38 = 1;
          }

          if (SDWORD1(v80) <= v80)
          {
            v43 = v80;
          }

          else
          {
            v43 = DWORD1(v80);
          }

          if (v78)
          {
            LODWORD(v43) = (*(*v78 + 56))(v78, v43);
          }

          v44 = (*(this + 78) + 1);
          if (v43 > v44)
          {
            v44 = SDWORD1(v80) <= v80 ? v80 : DWORD1(v80);
            if (v78)
            {
              v44 = (*(*v78 + 56))(v78, v44);
            }
          }

          v45 = *(this + 79);
          v46 = v44 <= v45 + 1 ? (v45 + 1) : v44;
          ProcessFrameTransform::ProcessFrameTransform(&v75, v44, *(this + 56), *(this + 30), v46, v38, v33 == 2, *(this + 156), *(this + 60), this + 76, &v97, this + 43);
          v47 = v78 && (*v79 & 1) == 0 && *(v79 + 16) <= SDWORD1(v80) || v75 && (*v76 & 1) == 0 && (*(v76 + 16) <= SHIDWORD(v77));
          v48 = v33 == 1 ? v47 : 0;
          v49.i64[0] = v77;
          v49.i64[1] = v80;
          v50 = vmaxvq_s32(v49);
          v51 = v33 == 2 ? 1 : v48;
          ProcessChannel::ProcessChannel(v74, v50, v47, v51, *(this + 156), *(this + 29), *(this + 30), this + 73, this + 37, &v97, this + 39);
          ProcessChannel::~ProcessChannel(v74, v52, v53, v54, v55, v56, v57, v58);
          ProcessFrameTransform::~ProcessFrameTransform(&v75);
          ProcessFrameTransform::~ProcessFrameTransform(&v78);
          ProcessLookahead::~ProcessLookahead(&v81);
          ProcessPrefilterer::~ProcessPrefilterer(&v85);
          if (!*(this + 104))
          {
            break;
          }
        }

        while (v31 >= v91);
      }

      PrefiltererThreadInsurance::~PrefiltererThreadInsurance(v92);
      LookaheadThreadInsurance::~LookaheadThreadInsurance(v93);
      FrameTransformThreadInsurance::~FrameTransformThreadInsurance(v94);
      FrameTransformThreadInsurance::~FrameTransformThreadInsurance(v95);
      ChannelThreadInsurance::~ChannelThreadInsurance(v96, v59, v60, v61, v62, v63, v64, v65);
      if (!*(this + 104))
      {
        if (*(this + 290) == 1)
        {
          RecogController::restartPostSynchronousRecognition(this);
        }

        if (*(this + 232) == -1)
        {
          RecogController::doAtEndOfRecognition(this, v66, v67, v68, v69, v70, v71, v72);
        }
      }
    }
  }
}

void sub_2627DC7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  LookaheadThreadInsurance::~LookaheadThreadInsurance(&a51);
  FrameTransformThreadInsurance::~FrameTransformThreadInsurance(&a57);
  FrameTransformThreadInsurance::~FrameTransformThreadInsurance((v57 - 224));
  ChannelThreadInsurance::~ChannelThreadInsurance((v57 - 176), v59, v60, v61, v62, v63, v64, v65);
  _Unwind_Resume(a1);
}

ConstrainedTransAccMgr *RecogController::doAtEndOfRecognition(RecogController *this, MemChunkRegion *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 232) != -1)
  {
    RecogController::setCallerThreadIdForChildren(this, -1);
  }

  v9 = *(this + 30);
  if (v9 && (*v9 & 1) == 0)
  {
    v10 = *(this + 29);
    if (*(v10 + 416) == 1)
    {
      v11 = ChannelMgr::smpChannelMgr;
      do
      {
        ChannelMgr::collectAvailableDataForUtt(v11, v10, a3, a4, a5, a6, a7, a8);
        v10 = *(this + 29);
      }

      while ((*(v10 + 416) & 1) != 0);
      v9 = *(this + 30);
    }

    UttFeatureArraySynchronizedArray::update(v9, v10);
  }

  if (*(this + 54))
  {
    v12 = *(*(this + 114) + 48) == 1 ? 2 : 1;
    if (Utterance::numCompleteRecogFrames(*(this + 29), v12) != *(*(this + 54) + 16))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 4886, "recogctl/recogctl", 14, "%s", a7, a8, &errStr_recogctl_recogctl_E_PREFILTERRESULT_INCOMPATIBLE_WITH_UTT);
    }
  }

  v13 = *(this + 59);
  if (v13 && (*v13 & 1) == 0)
  {
    (*(**(this + 55) + 80))(*(this + 55), (*(*(this + 30) + 16) - 1));
  }

  v14 = *(this + 60);
  if (v14 && (*v14 & 1) == 0)
  {
    (*(**(this + 56) + 80))(*(this + 56), (*(*(this + 30) + 16) - 1));
  }

  if (*(this + 10))
  {
    for (i = 0; i < *(this + 10); ++i)
    {
      if (*(this + 30))
      {
        v16 = *(this + 58);
        if (v16)
        {
          v17 = *(*(this + 4) + 8 * i);
          if (v17)
          {
            goto LABEL_32;
          }

          FstCore::setRecogEndTime(*(*(this + 6) + 8 * i), *(v16 + 16));
        }

        else
        {
          v16 = *(this + 57);
          if (v16)
          {
            if (*(*(this + 4) + 8 * i) || (errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 4942, "recogctl/recogctl", 4, "%.500s", a7, a8, "Prefiltering in doAtEndOfRecognition"), (v16 = *(this + 57)) != 0))
            {
              v17 = *(*(this + 4) + 8 * i);
LABEL_32:
              Recognizer::setRecogEndTime(v17, *(v16 + 16));
            }
          }
        }
      }

      v18 = *(*(this + 4) + 8 * i);
      if (v18)
      {
        Recognizer::endTopRecPassSyncRecog(v18);
      }

      else
      {
        FstCore::endTopRecPassSyncRecog(*(*(this + 6) + 8 * i));
      }
    }
  }

  if (*(this + 113))
  {
    *(*(this + 113) + 1120) = MemChunkRegion::getAndResetInternalLocalMaxAllocBytes(0, a2);
  }

  if (*(this + 8) == 1)
  {
    v19 = *(*(this + 31) + 120);
    MrecInitModule_sdpres_sdapi();
    if (*(this + 224) == 1)
    {
      PelScoreCacheData = PelScoreCache::makePelScoreCacheData(v19);
      (*(*this + 224))(this, PelScoreCacheData);
      v21 = *(this + 53);
      if (v21)
      {
        v22 = (*(*v21 + 64))(v21);
        (*(*this + 216))(this, v22);
      }
    }
  }

  v23 = *(this + 53);
  if (v23)
  {
    v24 = *(this + 113);
    if (v24)
    {
      (*(*v23 + 80))(v23, v24 + 16, v24 + 192, v24 + 480, v24 + 656);
      v25 = *(this + 113);
      v26 = *(this + 53);
      v25[18] = v26;
      v27 = vsubq_s64(*(this + 50), v26);
      v28 = *(this + 52);
      v25[17] = v28;
      v25[46] = vsubq_s64(*(this + 49), v28);
      v25[47] = v27;
      v23 = *(this + 53);
    }

    (*(*v23 + 56))(v23);
  }

  v29 = *(this + 62);
  if (v29)
  {
    (*(*v29 + 24))(v29);
    DgnDelete<SynchronizedArray<ScoreFixArray>>(*(this + 63));
    *(this + 63) = 0;
  }

  v30 = *(this + 55);
  if (!v30 || v30 == *(this + 56))
  {
    *(this + 55) = 0;
    v33 = *(this + 59);
    if (*(this + 60) != v33)
    {
      DgnDelete<UttFeatureArraySynchronizedArray>(v33);
    }
  }

  else
  {
    (*(*v30 + 72))(v30);
    DgnDelete<FrameTransformer>(*(this + 55));
    *(this + 55) = 0;
    v31 = *(this + 29);
    v32 = (*(**(this + 53) + 144))(*(this + 53));
    Utterance::setTransformedFrames(v31, v32, *(this + 122), *(this + 59));
  }

  *(this + 59) = 0;
  *(this + 122) = 0;
  *(this + 57) = 0;
  v34 = *(this + 56);
  if (v34)
  {
    (*(*v34 + 72))(v34);
    DgnDelete<FrameTransformer>(*(this + 56));
    *(this + 56) = 0;
    Utterance::setTransformedFrames(*(this + 29), *(this + 6), *(this + 123), *(this + 60));
    v35 = 0;
    *(this + 60) = 0;
    *(this + 123) = 0;
  }

  else
  {
    v35 = *(this + 60);
  }

  DgnDelete<UttFeatureArraySynchronizedArray>(v35);
  *(this + 60) = 0;
  result = DgnDelete<ConstrainedTransAccMgr>(*(this + 64));
  *(this + 64) = 0;
  *(this + 123) = 0;
  *(this + 58) = 0;
  v39 = *(this + 113);
  if (v39)
  {
    v40 = *(this + 29);
    if (v40)
    {
      *(v39 + 976) = *(v40 + 8);
      *(v39 + 980) = *(v40 + 418);
      *(v39 + 984) = *(v40 + 24);
      *(v39 + 1000) = *(v40 + 80);
      *(v39 + 1008) = *(v40 + 88);
      *(v39 + 1016) = *(v40 + 96);
      *(v39 + 1020) = *(v40 + 344);
      v41 = *(v40 + 360);
      if (*(v40 + 352) == 0)
      {
        if (!*(v40 + 368) && !*(v40 + 376))
        {
          goto LABEL_64;
        }

        v41 = 0;
      }

      *(v39 + 1024) = *(v40 + 352);
      *(v39 + 1032) = v41;
      *(v39 + 1040) = *(v40 + 368);
      v42 = *(v40 + 400);
      *(v39 + 1056) = *(v40 + 384);
      *(v39 + 1072) = v42;
    }

LABEL_64:
    v43 = *(this + 38);
    *(v39 + 1136) = *(this + 37);
    *(v39 + 1152) = v43;
    v44 = *(this + 40);
    *(v39 + 1168) = *(this + 39);
    *(v39 + 1184) = v44;
    v45 = *(this + 42);
    *(v39 + 1200) = *(this + 41);
    *(v39 + 1216) = v45;
    v46 = *(this + 44);
    *(v39 + 1232) = *(this + 43);
    *(v39 + 1248) = v46;
    v47 = *(this + 46);
    *(v39 + 1264) = *(this + 45);
    *(v39 + 1280) = v47;
    v48 = *(this + 48);
    *(v39 + 1296) = *(this + 47);
    *(v39 + 1312) = v48;
  }

  if (*(this + 544) == 1)
  {
    if (*(this + 10))
    {
      v49 = 0;
      do
      {
        v50 = *(*(this + 4) + 8 * v49);
        if (!v50)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 5111, "recogctl/recogctl", 4, "%.500s", v37, v38, "addCrumbsToPrefilterResult");
          v50 = *(*(this + 4) + 8 * v49);
        }

        Recognizer::addCrumbsToPrefilterResult(v50, *(this + 288), *(this + 67), *(this + 137), *(this + 66));
        ++v49;
      }

      while (v49 < *(this + 10));
    }

    v51 = *(this + 66);

    return PrefilterResult::setComplete(v51);
  }

  return result;
}

uint64_t RecogController::finishRecognizeOne(uint64_t a1, MemChunkRegion *a2)
{
  *(a1 + 897) = 1;
  LODWORD(v3) = *(a1 + 40);
  if (v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 16;
    do
    {
      v8 = *(*(a1 + 32) + 8 * v6);
      if (v8)
      {
        RecognizerResults = Recognizer::makeRecognizerResults(v8, *(a1 + 288), 1);
      }

      else
      {
        RecognizerResults = FstCore::makeRecognizerResults(*(*(a1 + 48) + 8 * v6), *(a1 + 288));
      }

      v10 = RecognizerResults;
      v11 = *(a1 + 904);
      if (v11)
      {
        v12 = *(*(a1 + 32) + 8 * v6);
        if (v12)
        {
          v13 = *v11 + v5;
          v14 = v12[35];
          v73[0].i32[0] = 0;
          Recognizer::getRecognizerStats(v12, v13, v13 + 176, v13 + 328, v13 + 752, v13 + 928, (v13 + 1080), v73, (v13 + 1508), (v13 + 1512), (v13 + 1516), (v13 + 1520), (v13 + 1528), (v13 + 1536), (v13 + 1540), (v13 + 1544), v13 + 1552);
          *(v13 + 1504) = v73[0].i32[0] == 2;
          NetMgr::getNetMgrStats((*&v14 + 16), (v13 + 360), (v13 + 1112));
        }

        else
        {
          v15 = *v11;
          v13 = v15 + 2368 * v6;
          v16 = (v15 + v5);
          v73[0].i32[0] = 0;
          FstCore::getRecognizerStats(*(*(a1 + 48) + 8 * v6), v15 + v5, &v16[11], &v16[20].i64[1], v15 + v5 + 752, (v15 + v5 + 928), (v15 + v5 + 1080), v73, (v15 + v5 + 1508), &v16[94].i32[2], &v16[94].i32[3], v16[95].i64, &v16[95].i64[1], v16[96].i32, &v16[96].i32[1], &v16[96].i64[1], v16[97].i64);
          FstCore::getFstStats(*(*(a1 + 48) + 8 * v6), &v16[29], v16 + 76);
          v16[94].i32[0] = v73[0].i32[0] == 2;
        }

        v17 = (*(a1 + 864) + v7);
        v18 = (*(a1 + 816) + v7);
        v19 = *v17;
        *(v13 + 736) = *v17;
        v20 = vsubq_s64(*v18, v19);
        v21 = v17[-1];
        *(v13 + 720) = v21;
        *(v13 + 1472) = vsubq_s64(v18[-1], v21);
        *(v13 + 1488) = v20;
      }

      v22 = *(*(a1 + 32) + 8 * v6);
      if (v22)
      {
        Recognizer::endTopRecSyncRecog(v22);
      }

      else
      {
        FstCore::endTopRecSyncRecog(*(*(a1 + 48) + 8 * v6));
        RecogCtlMgr::releaseVirtMap(RecogCtlMgr::smpRecogCtlMgr, v23);
      }

      v73[0].i64[0] = &gGlobalMemChunkRegion;
      if (MemChunkRegion::smTlsID != -1)
      {
        v24 = pthread_getspecific(MemChunkRegion::smTlsID);
        if (v24)
        {
          v25 = *v24;
          if (!*v24)
          {
            v25 = &gGlobalMemChunkRegion;
LABEL_20:
            pthread_setspecific(MemChunkRegion::smTlsID, 0);
            goto LABEL_21;
          }

          if (v25 != &gGlobalMemChunkRegion)
          {
            goto LABEL_20;
          }
        }
      }

      v25 = &gGlobalMemChunkRegion;
LABEL_21:
      v73[0].i64[0] = v25;
      v26 = *(a2 + 2);
      if (v26 == *(a2 + 3))
      {
        DgnPrimArray<unsigned long long>::reallocElts(a2, 1, 1);
        v26 = *(a2 + 2);
      }

      *(*a2 + 8 * v26) = v10;
      *(a2 + 2) = v26 + 1;
      Latch<MemChunkRegion,LatchAdapter>::~Latch(v73[0].i64);
      ++v6;
      v3 = *(a1 + 40);
      v5 += 2368;
      v7 += 32;
    }

    while (v6 < v3);
  }

  if (*(a1 + 232))
  {
    (*(**(a1 + 248) + 48))(*(a1 + 248));
    v27 = *(a1 + 448);
    if (v27)
    {
      (*(*v27 + 72))(v27);
    }

    DgnDelete<UttFeatureArraySynchronizedArray>(*(a1 + 240));
    *(a1 + 240) = 0;
    LODWORD(v3) = *(a1 + 40);
  }

  v84 = 0;
  v85 = 0;
  v82 = 0;
  v83 = 0;
  v80 = 0;
  v81 = 0;
  v78 = 0;
  v79 = 0;
  v76 = 0;
  v77 = 0;
  v74 = 0;
  v75 = 0;
  if (v3)
  {
    v28 = 0;
    do
    {
      v29 = *(a1 + 32);
      v30 = *(v29 + 8 * v28);
      if (v30)
      {
        Recognizer::setConstraint(*(v29 + 8 * v28), 0);
        v31 = v85;
        if (v85 == HIDWORD(v85))
        {
          DgnArray<PrefilterResultFrame>::reallocElts(&v84, 1, 1);
          v31 = v85;
        }

        v32 = (v84 + 32 * v31);
        v33 = *(v30 + 2040);
        *v32 = *(v30 + 2024);
        v32[1] = v33;
        LODWORD(v85) = v31 + 1;
        v34 = v83;
        if (v83 == HIDWORD(v83))
        {
          DgnArray<PrefilterResultFrame>::reallocElts(&v82, 1, 1);
          v34 = v83;
        }

        v35 = (v82 + 32 * v34);
        v36 = *(v30 + 2072);
        *v35 = *(v30 + 2056);
        v35[1] = v36;
        LODWORD(v83) = v34 + 1;
        v37 = v81;
        if (v81 == HIDWORD(v81))
        {
          DgnArray<PrefilterResultFrame>::reallocElts(&v80, 1, 1);
          v37 = v81;
        }

        v38 = (v80 + 32 * v37);
        v39 = *(v30 + 2200);
        *v38 = *(v30 + 2184);
        v38[1] = v39;
        LODWORD(v81) = v37 + 1;
        v40 = v79;
        if (v79 == HIDWORD(v79))
        {
          DgnArray<PrefilterResultFrame>::reallocElts(&v78, 1, 1);
          v40 = v79;
        }

        v41 = (v78 + 32 * v40);
        v42 = *(v30 + 2104);
        *v41 = *(v30 + 2088);
        v41[1] = v42;
        LODWORD(v79) = v40 + 1;
        v43 = v77;
        if (v77 == HIDWORD(v77))
        {
          DgnArray<PrefilterResultFrame>::reallocElts(&v76, 1, 1);
          v43 = v77;
        }

        v44 = (v76 + 32 * v43);
        v45 = *(v30 + 2136);
        *v44 = *(v30 + 2120);
        v44[1] = v45;
        LODWORD(v77) = v43 + 1;
        v46 = v75;
        if (v75 == HIDWORD(v75))
        {
          DgnArray<PrefilterResultFrame>::reallocElts(&v74, 1, 1);
          v46 = v75;
        }

        v47 = v74 + 32 * v46;
        v48 = *(v30 + 2152);
        v49 = *(v30 + 2160);
        v50 = *(v30 + 2176);
      }

      else
      {
        FstCore::setConstraint(*(*(a1 + 48) + 8 * v28), 0);
        v51 = *(*(a1 + 48) + 8 * v28);
        v52 = v85;
        v53 = v51;
        if (v85 == HIDWORD(v85))
        {
          DgnArray<PrefilterResultFrame>::reallocElts(&v84, 1, 1);
          v52 = v85;
          v53 = *(*(a1 + 48) + 8 * v28);
        }

        v54 = (v84 + 32 * v52);
        v55 = *(v51 + 512);
        *v54 = *(v51 + 496);
        v54[1] = v55;
        LODWORD(v85) = v52 + 1;
        v56 = v83;
        v57 = v53;
        if (v83 == HIDWORD(v83))
        {
          DgnArray<PrefilterResultFrame>::reallocElts(&v82, 1, 1);
          v56 = v83;
          v57 = *(*(a1 + 48) + 8 * v28);
        }

        v58 = (v82 + 32 * v56);
        v59 = *(v53 + 544);
        *v58 = *(v53 + 528);
        v58[1] = v59;
        LODWORD(v83) = v56 + 1;
        v60 = v81;
        v61 = v57;
        if (v81 == HIDWORD(v81))
        {
          DgnArray<PrefilterResultFrame>::reallocElts(&v80, 1, 1);
          v60 = v81;
          v61 = *(*(a1 + 48) + 8 * v28);
        }

        v62 = (v80 + 32 * v60);
        v63 = *(v57 + 672);
        *v62 = *(v57 + 656);
        v62[1] = v63;
        LODWORD(v81) = v60 + 1;
        v64 = v79;
        v65 = v61;
        if (v79 == HIDWORD(v79))
        {
          DgnArray<PrefilterResultFrame>::reallocElts(&v78, 1, 1);
          v64 = v79;
          v65 = *(*(a1 + 48) + 8 * v28);
        }

        v66 = (v78 + 32 * v64);
        v67 = *(v61 + 576);
        *v66 = *(v61 + 560);
        v66[1] = v67;
        LODWORD(v79) = v64 + 1;
        v68 = v77;
        v69 = v65;
        if (v77 == HIDWORD(v77))
        {
          DgnArray<PrefilterResultFrame>::reallocElts(&v76, 1, 1);
          v68 = v77;
          v69 = *(*(a1 + 48) + 8 * v28);
        }

        v70 = (v76 + 32 * v68);
        v71 = *(v65 + 608);
        *v70 = *(v65 + 592);
        v70[1] = v71;
        LODWORD(v77) = v68 + 1;
        v46 = v75;
        if (v75 == HIDWORD(v75))
        {
          DgnArray<PrefilterResultFrame>::reallocElts(&v74, 1, 1);
          v46 = v75;
        }

        v47 = v74 + 32 * v46;
        v48 = *(v69 + 624);
        v49 = *(v69 + 632);
        v50 = *(v69 + 648);
      }

      *v47 = v48;
      *(v47 + 8) = v49;
      *(v47 + 24) = v50;
      LODWORD(v75) = v46 + 1;
      ++v28;
    }

    while (v28 < *(a1 + 40));
  }

  if (*(a1 + 904))
  {
    *(*(a1 + 904) + 1128) = MemChunkRegion::getAndResetInternalLocalMaxAllocBytes(0, a2);
    memset(v73, 0, sizeof(v73));
    SnapTime::recordTime(v73, 1, 1, 1, 1);
    RecogStats::initRecognitionPhaseTimes(*(a1 + 904), (a1 + 160), (a1 + 192), &v84, &v82, &v80, &v78, &v76, &v74, v73);
  }

  DgnIArray<Utterance *>::~DgnIArray(&v74);
  DgnIArray<Utterance *>::~DgnIArray(&v76);
  DgnIArray<Utterance *>::~DgnIArray(&v78);
  DgnIArray<Utterance *>::~DgnIArray(&v80);
  DgnIArray<Utterance *>::~DgnIArray(&v82);
  return DgnIArray<Utterance *>::~DgnIArray(&v84);
}

void sub_2627DD658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28)
{
  DgnIArray<Utterance *>::~DgnIArray(&a24);
  DgnIArray<Utterance *>::~DgnIArray(&a26);
  DgnIArray<Utterance *>::~DgnIArray(&a28);
  DgnIArray<Utterance *>::~DgnIArray(v28 - 136);
  DgnIArray<Utterance *>::~DgnIArray(v28 - 120);
  DgnIArray<Utterance *>::~DgnIArray(v28 - 104);
  _Unwind_Resume(a1);
}

void FstCore::getRecognizerStats(int32x2_t *a1, uint64_t a2, LMStats *this, uint64_t a4, uint64_t a5, LMStats *a6, int32x2_t *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, void *a12, void *a13, _DWORD *a14, _DWORD *a15, void *a16, uint64_t a17)
{
  LMStats::resetStats(this);
  LMStats::resetStats(a6);
  *a9 = 0;
  *a10 = 0;
  *a11 = 0;
  *a12 = 0;
  *a13 = 0;
  *a16 = 0;
  PelStats::operator=(a2, &a1[32]);
  PelStats::operator=(a5, &a1[10]);
  PelStats::operator-=(a5, &a1[32]);
  SearchStats::operator=(a4, &a1[58]);
  SearchStats::operator=(a7, &a1[54]);
  a7[1].i32[0] = a1[59].i32[0];
  SearchStats::operator-=(a7, a1 + 58);
  a7[1].i32[0] = a1[55].i32[0];
  *a8 = a1[6].i32[0];
  LatticeStats::operator=(a17, &a1[86]);
  *a14 = a1[137].i32[0];
  *a15 = a1[137].i32[1];
}

double FstCore::getFstStats(int64x2_t *this, FstStats *a2, int64x2_t *a3)
{
  FstStats::operator=(a2, this[86].i64);
  FstStats::operator=(a3, this[70].i64);

  *&result = FstStats::operator-=(a3, this + 86).u64[0];
  return result;
}

double Recognizer::getRecognizerStats(int32x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int32x2_t *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, void *a12, void *a13, _DWORD *a14, _DWORD *a15, void *a16, uint64_t a17)
{
  PelStats::operator=(a2, &a1[155]);
  LMStats::operator=(a3, &a1[177]);
  SearchStats::operator=(a4, &a1[196]);
  PelStats::operator=(a5, &a1[110]);
  PelStats::operator-=(a5, &a1[155]);
  LMStats::operator=(a6, &a1[132]);
  LMStats::operator-=(a6, &a1[177]);
  SearchStats::operator=(a7, &a1[151]);
  a7[1].i32[0] = a1[197].i32[0];
  SearchStats::operator-=(a7, a1 + 196);
  a7[1].i32[0] = a1[152].i32[0];
  *a8 = a1[43].i32[1];
  *a9 = a1[288].i32[1];
  *a10 = a1[289].i32[0];
  *a11 = a1[289].i32[1];
  *a12 = a1[290];
  *a13 = a1[291];
  *a14 = a1[292].i32[0];
  *a15 = a1[292].i32[1];
  *a16 = a1[201];

  return LatticeStats::operator=(a17, &a1[202]);
}

int32x2_t NetMgr::getNetMgrStats(NetMgr *this, NetStats *a2, NetStats *a3)
{
  NetStats::operator=(a2, this + 302680);
  NetStats::operator=(a3, this + 302576);

  return NetStats::operator-=(a3, this + 302680);
}

uint64_t RecogController::abortRecognizeOne(RecogController *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(this + 897) = 1;
  if (*(this + 10))
  {
    v9 = 0;
    do
    {
      if (!*(*(this + 4) + 8 * v9))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 5360, "recogctl/recogctl", 4, "%.500s", a7, a8, "abortRecognizeOne");
      }

      v10 = (*(*this + 40))(this);
      v11 = *(*(this + 4) + 8 * v9);
      if ((v10 & 1) == 0)
      {
        Recognizer::endTopRecPassSyncRecog(v11);
        v11 = *(*(this + 4) + 8 * v9);
      }

      Recognizer::endTopRecSyncRecog(v11);
      Recognizer::setConstraint(*(*(this + 4) + 8 * v9++), 0);
    }

    while (v9 < *(this + 10));
  }

  if (*(this + 29))
  {
    (*(**(this + 31) + 48))(*(this + 31));
    DgnDelete<UttFeatureArraySynchronizedArray>(*(this + 30));
    *(this + 30) = 0;
  }

  result = (*(*this + 40))(this);
  if ((result & 1) == 0)
  {
    v13 = *(this + 53);
    if (v13)
    {
      (*(*v13 + 56))(v13);
    }

    v14 = *(this + 62);
    if (v14)
    {
      (*(*v14 + 24))(v14);
      DgnDelete<SynchronizedArray<ScoreFixArray>>(*(this + 63));
      *(this + 63) = 0;
    }

    v15 = *(this + 55);
    if (!v15 || v15 == *(this + 56))
    {
      *(this + 55) = 0;
      v16 = *(this + 59);
      if (*(this + 60) == v16)
      {
LABEL_20:
        *(this + 59) = 0;
        *(this + 122) = 0;
        *(this + 57) = 0;
        v17 = *(this + 56);
        if (v17)
        {
          (*(*v17 + 72))(v17);
          DgnDelete<FrameTransformer>(*(this + 56));
          *(this + 56) = 0;
        }

        DgnDelete<UttFeatureArraySynchronizedArray>(*(this + 60));
        *(this + 60) = 0;
        result = DgnDelete<ConstrainedTransAccMgr>(*(this + 64));
        *(this + 64) = 0;
        *(this + 123) = 0;
        *(this + 58) = 0;
        return result;
      }
    }

    else
    {
      (*(*v15 + 72))(v15);
      DgnDelete<FrameTransformer>(*(this + 55));
      *(this + 55) = 0;
      v16 = *(this + 59);
    }

    DgnDelete<UttFeatureArraySynchronizedArray>(v16);
    goto LABEL_20;
  }

  return result;
}

uint64_t RecogController::makePartialResult(uint64_t this)
{
  if (*(this + 40))
  {
    v1 = this;
    v2 = 0;
    while (1)
    {
      *(*(v1 + 72) + 16 * v2 + 8) = 0;
      *(*(v1 + 88) + 16 * v2 + 8) = 0;
      if (*(*(v1 + 32) + 8 * v2))
      {
        break;
      }

      *(*(v1 + 104) + 4 * v2) = FstCore::makePartialResult(*(*(v1 + 48) + 8 * v2), v1 + 120, v1 + 136);
      v9 = *(v1 + 128);
      if (v9)
      {
        for (i = 0; i < v9; ++i)
        {
          v11 = *(v1 + 88) + 16 * v2;
          v12 = *(v11 + 8);
          if (v12 == *(v11 + 12))
          {
            DgnPrimArray<unsigned int>::reallocElts(*(v1 + 88) + 16 * v2, 1, 1);
            v12 = *(v11 + 8);
          }

          *(*v11 + 4 * v12) = 1;
          ++*(v11 + 8);
          v9 = *(v1 + 128);
        }
      }

LABEL_20:
      v44 = 0;
      v45 = 0;
      v42 = 0;
      v43 = 0;
      v40 = 0;
      v41 = 0;
      if (v9)
      {
        v13 = 0;
        v37 = 0;
        v14 = 0;
        v15 = 88;
        while (1)
        {
          Root = VocMgr::getRoot(VocMgr::smpVocMgr, *(*(v1 + 120) + v15));
          if (Root >> 25 == 126)
          {
            v17 = 127;
          }

          else
          {
            v17 = Root >> 25;
          }

          v18 = *(v1 + 120) + v15;
          v19 = *(v18 - 72);
          v20 = *(v18 - 64);
          v21 = *(v1 + 72) + 16 * v2;
          v22 = *(v21 + 8);
          if (v22 == *(v21 + 12))
          {
            DgnArray<RecogResultToken>::reallocElts(*(v1 + 72) + 16 * v2, 1, 1);
            LODWORD(v22) = *(v21 + 8);
          }

          v23 = *v21 + 96 * v22;
          *v23 = Root >> 25 == 126;
          *(v23 + 4) = v17;
          *(v23 + 8) = 0;
          *(v23 + 12) = Root & 0xFFFFFF;
          *(v23 + 16) = 16777212;
          *(v23 + 20) = v19;
          *(v23 + 28) = v20;
          *(v23 + 32) = 0;
          *(v23 + 40) = 0;
          *(v23 + 48) = 0;
          *(v23 + 56) = 0xFFFFFFFF00000000;
          *(v23 + 64) = 0;
          *(v23 + 72) = 0;
          *(v23 + 80) = 0;
          *(v23 + 88) = 0;
          *(v23 + 84) = 0;
          ++*(v21 + 8);
          v24 = *(*(*(v1 + 88) + 16 * v2) + 4 * v13);
          if (v24 == 3)
          {
            goto LABEL_36;
          }

          if (v24 == 2)
          {
            goto LABEL_33;
          }

          if (v24 == 1)
          {
            break;
          }

LABEL_39:
          ++v13;
          v15 += 112;
          if (v13 >= *(v1 + 128))
          {
            v28 = v14;
            v29 = HIDWORD(v37);
            v30 = v37;
            goto LABEL_42;
          }
        }

        v25 = v41;
        if (v41 == HIDWORD(v41))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v40, 1, 1);
          v25 = v41;
        }

        *(v40 + 4 * v25) = Root;
        LODWORD(v41) = v41 + 1;
        LODWORD(v37) = *(*(v1 + 120) + v15 - 68) + v37 + *(*(v1 + 120) + v15 - 64);
LABEL_33:
        v26 = v43;
        if (v43 == HIDWORD(v43))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v42, 1, 1);
          v26 = v43;
        }

        *(v42 + 4 * v26) = Root;
        LODWORD(v43) = v43 + 1;
        HIDWORD(v37) += *(*(v1 + 120) + v15 - 68) + *(*(v1 + 120) + v15 - 64);
LABEL_36:
        v27 = v45;
        if (v45 == HIDWORD(v45))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v44, 1, 1);
          v27 = v45;
        }

        *(v44 + 4 * v27) = Root;
        LODWORD(v45) = v45 + 1;
        v14 += *(*(v1 + 120) + v15 - 68) + *(*(v1 + 120) + v15 - 64);
        goto LABEL_39;
      }

      v28 = 0;
      v29 = 0;
      v30 = 0;
LABEL_42:
      v31 = *(v1 + 904);
      if (v31)
      {
        v32 = *v31;
        v33 = (*(*v1 + 160))(v1, v2);
        v38 = 0u;
        v39 = 0u;
        SnapTime::recordTime(&v38, 1, 1, 1, 1);
        v34 = v32 + 2368 * v2;
        v35 = *(v1 + 904);
        v36 = vsubq_s64(v39, v35[69]);
        v38 = vsubq_s64(v38, v35[68]);
        v39 = v36;
        PRStats::recordPartialResult(v34 + 1960, &v44, v28 * v33, v38.i64);
        PRStats::recordPartialResult(v34 + 2096, &v42, v29 * v33, v38.i64);
        PRStats::recordPartialResult(v34 + 2232, &v40, v30 * v33, v38.i64);
      }

      DgnPrimArray<unsigned int>::~DgnPrimArray(&v40);
      DgnPrimArray<unsigned int>::~DgnPrimArray(&v42);
      this = DgnPrimArray<unsigned int>::~DgnPrimArray(&v44);
      if (++v2 >= *(v1 + 40))
      {
        return this;
      }
    }

    v3 = *(v1 + 64);
    if (v3)
    {
      v4 = *(v1 + 520);
      if (v3 == 2)
      {
        v5 = *(v1 + 424);
        if (v5)
        {
          v6 = (*(*v5 + 176))(v5);
          if (v6)
          {
            v7 = (*(**(v1 + 424) + 184))(*(v1 + 424));
            v8 = (*(**(v1 + 424) + 96))(*(v1 + 424));
LABEL_19:
            *(*(v1 + 104) + 4 * v2) = Recognizer::makePartialResult(*(*(v1 + 32) + 8 * v2), v4, v6, v7, v8, (v1 + 120), v1 + 136, *(v1 + 88) + 16 * v2);
            v9 = *(v1 + 128);
            goto LABEL_20;
          }

          v7 = 0;
LABEL_18:
          v8 = -16;
          goto LABEL_19;
        }
      }

      v7 = 0;
    }

    else
    {
      v7 = 0;
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_18;
  }

  return this;
}

void sub_2627DE1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  _Unwind_Resume(a1);
}

void RecogControllerBase::makeRecogController(uint64_t a1, const RecogSpec *a2, uint64_t a3, PrefiltererSearchParamSet *a4, SearchCrossLayerParamSet *a5)
{
  if (a1)
  {
    v10 = MemChunkAlloc(0x30uLL, 0);
    ThreadedRecogController::ThreadedRecogController(v10, a1, a2, a3, a4, a5);
  }

  else
  {
    v11 = MemChunkAlloc(0x420uLL, 0);
    RecogController::RecogController(v11, a2, a3, a4, a5);
  }
}

uint64_t RecogController::getPartialResultMicrosecPerRecogFrame(RecogController *this, unsigned int a2)
{
  v2 = *(*(this + 4) + 8 * a2);
  if (v2)
  {
    v3 = (v2 + 356);
  }

  else
  {
    v3 = (*(*(this + 6) + 8 * a2) + 56);
  }

  return *v3;
}

void *DgnArray<PRStatsItem>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 96 * v2 - 48;
    do
    {
      DgnPrimArray<unsigned int>::~DgnPrimArray(*a1 + v3);
      v3 -= 96;
    }

    while (v3 != -48);
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

void *DgnIOwnArray<RecogSpecLayer *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<RecogSpecLayer>(*(*a1 + v3));
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

RecogSpecLayer *DgnIOwnArray<RecogSpecLayer *>::destructAt(RecogSpecLayer *result, int a2, int a3)
{
  if (a3 + a2 > a2)
  {
    v3 = result;
    v4 = a2;
    v5 = a3 + a2 - 1;
    do
    {
      result = DgnDelete<RecogSpecLayer>(*(*v3 + 8 * v5));
      *(*v3 + 8 * v5) = 0;
    }

    while (v5-- > v4);
  }

  return result;
}

unsigned int *DgnIOwnArray<RecogSpecLayer *>::copyArraySlice(unsigned int *result, void *a2, unsigned int a3, unsigned int a4)
{
  v7 = result;
  v8 = result[3];
  if (a4 > v8)
  {
    result = DgnPrimArray<unsigned long long>::reallocElts(result, a4 - v8, 0);
  }

  v9 = v7[2];
  if (v9 <= a4)
  {
    if (v9 < a4)
    {
      do
      {
        *(*v7 + 8 * v9++) = 0;
      }

      while (a4 != v9);
    }
  }

  else
  {
    result = DgnIOwnArray<RecogSpecLayer *>::destructAt(v7, a4, v9 - a4);
  }

  v7[2] = a4;
  if (a4)
  {
    v10 = 0;
    do
    {
      *(*v7 + v10) = *(*a2 + 8 * a3++);
      v10 += 8;
    }

    while (8 * a4 != v10);
  }

  return result;
}

void *DgnArray<RecogLayerStats>::releaseAll(uint64_t a1)
{
  DgnArray<RecogLayerStats>::destructAt(a1, 0, *(a1 + 8));
  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

void DgnArray<RecogLayerStats>::destructAt(void *a1, int a2, int a3)
{
  v3 = a3 + a2;
  if (a3 + a2 > a2)
  {
    v5 = v3;
    v6 = a2;
    v7 = 2368 * v3 - 408;
    do
    {
      --v5;
      v8 = *a1 + v7;
      PRStats::~PRStats((v8 + 272));
      PRStats::~PRStats((v8 + 136));
      PRStats::~PRStats(v8);
      v7 -= 2368;
    }

    while (v5 > v6);
  }
}

uint64_t Hash<EmbStateSpec,EmbStateSpec,EmbStateSpecToActiveWordScope,ActiveWord *>::Hash(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_287524180;
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
    v7 = 24;
  }

  else
  {
    v7 = 32;
  }

  *(a1 + 24) = 32;
  *(a1 + 28) = v7;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_2627DE728(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void Hash<EmbStateSpec,EmbStateSpec,EmbStateSpecToActiveWordScope,ActiveWord *>::~Hash(uint64_t a1)
{
  Hash<EmbStateSpec,EmbStateSpec,EmbStateSpecToActiveWordScope,ActiveWord *>::~Hash(a1);

  JUMPOUT(0x26672B1B0);
}

void *DgnIOwnArray<Recognizer *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<Recognizer>(*(*a1 + v3));
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

void *DgnIOwnArray<FstCore *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<FstCore>(*(*a1 + v3));
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

uint64_t Hash<EmbStateSpec,EmbStateSpec,EmbStateSpecToActiveWordScope,ActiveWord *>::~Hash(uint64_t a1)
{
  *a1 = &unk_287524180;
  if (*(a1 + 8))
  {
    Hash<Int32Triple,Int32Triple,Int32TripleScope,int>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  return MrecInitModule_sdpres_sdapi();
}

unint64_t DgnArray<RecogLayerStats>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 2368 * v6, 2368 * v5, 2368 * v5, 1);
  *(a1 + 12) = result / 0x940;
  *a1 = v8;
  return result;
}

unint64_t DgnArray<SnapTime>::copyArraySlice(unint64_t result, uint64_t *a2, unsigned int a3, unsigned int a4)
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
    result = DgnArray<PrefilterResultFrame>::reallocElts(result, a4 - v8, 0);
    v9 = *(v7 + 8);
  }

  v11 = *a2;
  v12 = *v7;
  v13 = a4;
  v10 = v9;
  do
  {
    v14 = (v11 + 32 * a3);
    v15 = *v14;
    v16 = v14[1];
    v17 = (v12 + 32 * v10);
    *v17 = v15;
    v17[1] = v16;
    ++v10;
    ++a3;
    --v13;
  }

  while (v13);
LABEL_6:
  if (v10 < a4)
  {
    v18 = a4 - v10;
    v19 = 32 * v10;
    do
    {
      v20 = (*v7 + v19);
      *v20 = 0uLL;
      v20[1] = 0uLL;
      v19 += 32;
      --v18;
    }

    while (v18);
  }

  *(v7 + 8) = a4;
  return result;
}

uint64_t **Hash<EmbStateSpec,EmbStateSpec,EmbStateSpecToActiveWordScope,ActiveWord *>::findBucket(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = ((*a2 >> 19) & 0x1FFFE000) + v2;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (-1640531527 * v3) >> -v4;
  }

  else
  {
    v5 = 0;
  }

  result = (*(a1 + 80) + 8 * v5);
  v7 = *result;
  if (*result)
  {
    do
    {
      v8 = v7;
      if (*(v7 + 2) == v3 && ((*(v7 + 12) ^ *a2) & 0xFFFF00000000) == 0 && *(v7 + 5) == v2)
      {
        break;
      }

      v7 = *v7;
      result = v8;
    }

    while (*v8);
  }

  return result;
}

void MrecInitModule_arcgraph_fst(void)
{
  if (!gParDebugFstArcGraphIO)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugFstArcGraphIO", byte_26288E914, byte_26288E914, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugFstArcGraphIO = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugFstArcGraphIO);
  }
}

void ArcGraph::~ArcGraph(PicMgr **this)
{
  DgnDelete<PicMgr>(this[31]);
  this[31] = 0;
  DgnDelete<PhnMgr>(this[32]);
  this[32] = 0;
  if (*this)
  {
    DgnSharedMemSet::unrefDSMEx(*this, *(this + 2));
  }

  DgnArray<DgnArray<ParseToken>>::releaseAll((this + 29));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 27));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 19));
  FileHistory::~FileHistory((this + 14));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 7));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 5));
  DgnArray<DgnString>::releaseAll((this + 3));
}

PhnMgr *DgnDelete<PhnMgr>(PhnMgr *result)
{
  if (result)
  {
    PhnMgr::~PhnMgr(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void ArcGraph::printSize(ArcGraph *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2029, &v156);
  if (v157)
  {
    v16 = v156;
  }

  else
  {
    v16 = &unk_26288E914;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26288E914, a3, &unk_26288E914, v16);
  DgnString::~DgnString(&v156);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26288E914);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v21 = 4;
  }

  else
  {
    v21 = 8;
  }

  v22 = (a3 + 1);
  v153 = a3;
  v23 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2030, &v156);
  if (v157)
  {
    v28 = v156;
  }

  else
  {
    v28 = &unk_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, v25, v26, v27, v22, &unk_26288E914, v23, v23, v28, v21, v21, 0);
  DgnString::~DgnString(&v156);
  *a4 += v21;
  *a5 += v21;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2031, &v156);
  if (v157)
  {
    v33 = v156;
  }

  else
  {
    v33 = &unk_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v29, v30, v31, v32, v22, &unk_26288E914, v23, v23, v33, 4, 4, 0);
  DgnString::~DgnString(&v156);
  *a4 += 4;
  *a5 += 4;
  v34 = sizeObject(this + 16, 0);
  v35 = sizeObject(this + 16, 1);
  v36 = sizeObject(this + 16, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2033, &v156);
  if (v157)
  {
    v41 = v156;
  }

  else
  {
    v41 = &unk_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, v38, v39, v40, v22, &unk_26288E914, v23, v23, v41, v34, v35, v36);
  DgnString::~DgnString(&v156);
  *a4 += v34;
  *a5 += v35;
  *a6 += v36;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2035, &v156);
  if (v157)
  {
    v46 = v156;
  }

  else
  {
    v46 = &unk_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v43, v44, v45, v22, &unk_26288E914, v23, v23, v46, 1, 1, 0);
  DgnString::~DgnString(&v156);
  ++*a4;
  ++*a5;
  v47 = sizeObject(this + 112, 0);
  v48 = sizeObject(this + 112, 1);
  v49 = sizeObject(this + 112, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2037, &v156);
  if (v157)
  {
    v54 = v156;
  }

  else
  {
    v54 = &unk_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v50, v51, v52, v53, v22, &unk_26288E914, v23, v23, v54, v47, v48, v49);
  DgnString::~DgnString(&v156);
  *a4 += v47;
  *a5 += v48;
  *a6 += v49;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2038, &v156);
  if (v157)
  {
    v59 = v156;
  }

  else
  {
    v59 = &unk_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v55, v56, v57, v58, v22, &unk_26288E914, v23, v23, v59, 4, 4, 0);
  DgnString::~DgnString(&v156);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2040, &v156);
  if (v157)
  {
    v64 = v156;
  }

  else
  {
    v64 = &unk_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v60, v61, v62, v63, v22, &unk_26288E914, v23, v23, v64, 4, 4, 0);
  DgnString::~DgnString(&v156);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2042, &v156);
  if (v157)
  {
    v69 = v156;
  }

  else
  {
    v69 = &unk_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v65, v66, v67, v68, v22, &unk_26288E914, v23, v23, v69, 4, 4, 0);
  DgnString::~DgnString(&v156);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v70 = 12;
  }

  else
  {
    v70 = 16;
  }

  v71 = *(this + 40);
  v72 = *(this + 41);
  if (v72 >= v71)
  {
    v73 = 0;
    if (v71 > 0)
    {
      v70 += 4 * (v71 - 1) + 4;
    }

    v74 = v70 + 4 * (v72 - v71);
  }

  else
  {
    v73 = 4 * v71;
    v74 = v70;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2043, &v156);
  if (v157)
  {
    v79 = v156;
  }

  else
  {
    v79 = &unk_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v75, v76, v77, v78, v22, &unk_26288E914, v23, v23, v79, v74, v70, v73);
  DgnString::~DgnString(&v156);
  *a4 += v74;
  *a5 += v70;
  *a6 += v73;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2044, &v156);
  if (v157)
  {
    v84 = v156;
  }

  else
  {
    v84 = &unk_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v80, v81, v82, v83, v22, &unk_26288E914, v23, v23, v84, 4, 4, 0);
  DgnString::~DgnString(&v156);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2045, &v156);
  if (v157)
  {
    v89 = v156;
  }

  else
  {
    v89 = &unk_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v85, v86, v87, v88, v22, &unk_26288E914, v23, v23, v89, 2, 2, 0);
  DgnString::~DgnString(&v156);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2046, &v156);
  if (v157)
  {
    v94 = v156;
  }

  else
  {
    v94 = &unk_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v90, v91, v92, v93, v22, &unk_26288E914, v23, v23, v94, 2, 2, 0);
  DgnString::~DgnString(&v156);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2047, &v156);
  if (v157)
  {
    v99 = v156;
  }

  else
  {
    v99 = &unk_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v95, v96, v97, v98, v22, &unk_26288E914, v23, v23, v99, 2, 2, 0);
  DgnString::~DgnString(&v156);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2049, &v156);
  if (v157)
  {
    v104 = v156;
  }

  else
  {
    v104 = &unk_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v100, v101, v102, v103, v22, &unk_26288E914, v23, v23, v104, 1, 1, 0);
  DgnString::~DgnString(&v156);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2050, &v156);
  if (v157)
  {
    v109 = v156;
  }

  else
  {
    v109 = &unk_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v105, v106, v107, v108, v22, &unk_26288E914, v23, v23, v109, 26, 26, 0);
  DgnString::~DgnString(&v156);
  *a4 += 26;
  *a5 += 26;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2052, &v156);
  if (v157)
  {
    v114 = v156;
  }

  else
  {
    v114 = &unk_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v110, v111, v112, v113, v22, &unk_26288E914, v23, v23, v114, 4, 4, 0);
  DgnString::~DgnString(&v156);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v115 = 12;
  }

  else
  {
    v115 = 16;
  }

  v116 = *(this + 56);
  v117 = *(this + 57);
  if (v117 >= v116)
  {
    v118 = 0;
    if (v116 > 0)
    {
      v115 += 4 * (v116 - 1) + 4;
    }

    v119 = v115 + 4 * (v117 - v116);
  }

  else
  {
    v118 = 4 * v116;
    v119 = v115;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2053, &v156);
  if (v157)
  {
    v124 = v156;
  }

  else
  {
    v124 = &unk_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v120, v121, v122, v123, v22, &unk_26288E914, v23, v23, v124, v119, v115, v118);
  DgnString::~DgnString(&v156);
  *a4 += v119;
  *a5 += v115;
  *a6 += v118;
  v125 = sizeObject<DgnArray<ParseToken>>(this + 232, 0);
  v126 = sizeObject<DgnArray<ParseToken>>(this + 232, 1);
  v127 = sizeObject<DgnArray<ParseToken>>(this + 232, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2054, &v156);
  if (v157)
  {
    v132 = v156;
  }

  else
  {
    v132 = &unk_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v128, v129, v130, v131, v22, &unk_26288E914, v23, v23, v132, v125, v126, v127);
  DgnString::~DgnString(&v156);
  *a4 += v125;
  *a5 += v126;
  *a6 += v127;
  v133 = *(this + 31);
  if (v133)
  {
    v155 = 0;
    v156 = 0;
    v154 = 0;
    PicMgr::printSize(v133, 0xFFFFFFFFLL, v22, &v156, &v155, &v154);
    *a4 += v156;
    *a5 += v155;
    *a6 += v154;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v134 = 4;
  }

  else
  {
    v134 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2056, &v156);
  if (v157)
  {
    v139 = v156;
  }

  else
  {
    v139 = &unk_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v135, v136, v137, v138, v22, &unk_26288E914, v23, v23, v139, v134, v134, 0);
  DgnString::~DgnString(&v156);
  *a4 += v134;
  *a5 += v134;
  v140 = *(this + 32);
  if (v140)
  {
    v155 = 0;
    v156 = 0;
    v154 = 0;
    PhnMgr::printSize(v140, 0xFFFFFFFFLL, v22, &v156, &v155, &v154);
    *a4 += v156;
    *a5 += v155;
    *a6 += v154;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v141 = 4;
  }

  else
  {
    v141 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2058, &v156);
  if (v157)
  {
    v146 = v156;
  }

  else
  {
    v146 = &unk_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v142, v143, v144, v145, v22, &unk_26288E914, v23, v23, v146, v141, v141, 0);
  DgnString::~DgnString(&v156);
  *a4 += v141;
  *a5 += v141;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2059, &v156);
  if (v157)
  {
    v151 = v156;
  }

  else
  {
    v151 = &unk_26288E914;
  }

  v152 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v147, v148, v149, v150, v153, &unk_26288E914, (35 - v153), (35 - v153), v151, *a4, *a5, *a6);
  DgnString::~DgnString(&v156);
}

void sub_2627DF78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

double ArcGraph::lexToCWIDAC@<D0>(ArcGraph *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = ArcGraph::lexToCWID(this, a2, a3, a4, a5, a6, a7, a8);
  *(a9 + 4) = 0x3FFF;
  result = NAN;
  *(a9 + 8) = xmmword_26286CC40;
  return result;
}

uint64_t ArcGraph::lexToCWID(ArcGraph *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(VocMgr::getVocOrThrow(VocMgr::smpVocMgr, *(this + 87), a3, a4, a5, a6, a7, a8) + 48);
  if (*(v12 + 388) > a2 && *(*(v12 + 104) + a2))
  {
    return *(*(v12 + 256) + 4 * a2) & 0xFFFFFF | (*(this + 87) << 25);
  }

  result = 4244635645;
  if (a2 == 16777214)
  {
    return 4244635646;
  }

  if (a2 != 16777213)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2097, "fst/arcgraph", 27, "%u", v10, v11, a2);
    return 4211081215;
  }

  return result;
}

void ArcGraph::getNameAndHumanReadablePron(ArcGraph *this, unsigned int a2, DgnString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(VocMgr::getVocOrThrow(VocMgr::smpVocMgr, *(this + 87), a3, a4, a5, a6, a7, a8) + 48);
  if (*(v12 + 388) > a2 && *(*(v12 + 104) + a2))
  {
    DgnString::DgnString(&v23);
    WordList::getHumanReadablePron(v12, a2, &v23);
    DgnString::DgnString(v22, (*(v12 + 224) + *(*(v12 + 200) + 4 * a2)));
    DgnString::DgnString(&v20);
    DgnTextFile::convertToDTFFormat(v22, &v20, v13);
    if (v21)
    {
      v17 = v20;
    }

    else
    {
      v17 = &unk_26288E914;
    }

    if (v24)
    {
      v18 = v23;
    }

    else
    {
      v18 = &unk_26288E914;
    }

    DgnString::stringPrintf(a3, "%s(%s)", v14, v15, v16, v17, v18);
    DgnString::~DgnString(&v20);
    DgnString::~DgnString(v22);
    DgnString::~DgnString(&v23);
    return;
  }

  if (a2 > 16777212)
  {
    if (a2 == 16777213)
    {
      v19 = "</s>";
      goto LABEL_21;
    }

    if (a2 == 16777214)
    {
      v19 = "<s>";
      goto LABEL_21;
    }

LABEL_17:
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2238, "fst/arcgraph", 26, "%u", v10, v11, a2);
    return;
  }

  if (a2 == 16777209)
  {
    v19 = "~SIL";
    goto LABEL_21;
  }

  if (a2 != 16777210)
  {
    goto LABEL_17;
  }

  v19 = "<epsilon>";
LABEL_21:

  DgnString::operator=(a3, v19);
}

void sub_2627DFAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  _Unwind_Resume(a1);
}

void ArcGraph::ensureHeaderValid(ArcGraph *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(this + 178) & 1) == 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2371, "fst/arcgraph", 5, "%.500s", a7, a8, a2);
  }
}

uint64_t ArcGraph::findBackoffState(uint64_t this)
{
  v1 = *(this + 140);
  v2 = *(this + 152);
  v3 = *(v2 + 4 * (*(v2 + 4 * (*(this + 144) + 1)) + 1));
  LODWORD(this) = v3;
  do
  {
    v4 = v3 + 1;
    v5 = *(v2 + 4 * v3);
    v3 += 2;
    v6 = *(v2 + 4 * v4);
    if ((v5 & 0xFFFFF) != 0 || v1 > v6)
    {
      this = this;
    }

    else
    {
      v3 = v6;
      this = v6;
    }
  }

  while ((v5 & 0x80000000) == 0);
  return this;
}

uint64_t GetWordId(unsigned int a1, const char *a2, const char *a3, const char *a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  if (a1 == 126)
  {
    if (!a6 || strcmp(a2, "_START_CONTEXT"))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/vocutil.cpp", 62, "voc/vocutil", 1, "%.500s %.500s %.500s", a7, a8, v8);
    }

    return 16777214;
  }

  else
  {
    if (a1 == 125)
    {
      if (!a5 || *a2)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/vocutil.cpp", 56, "voc/vocutil", 1, "%.500s %.500s %.500s", a7, a8, a3);
      }

      return 0xFFFFFFLL;
    }

    if (!*a2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/vocutil.cpp", 65, "voc/vocutil", 2, "%.500s %.500s", a7, a8, a3);
    }

    result = WordList::lookupWord(*(*(**VocMgr::smpVocMgr + 8 * a1) + 48), a2);
    if (result == 0xFFFFFF)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/vocutil.cpp", 71, "voc/vocutil", 5, "%.500s %.500s %.500s", v12, v13, v8);
      return 0xFFFFFFLL;
    }
  }

  return result;
}

char *GetWordName(unsigned int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == 125)
  {
    return &byte_262899963;
  }

  if (a1 == 126)
  {
    return "_START_CONTEXT";
  }

  v9 = *(*(**VocMgr::smpVocMgr + 8 * a1) + 48);
  v10 = *(v9 + 32);
  v11 = *(v10 + 4 * a2);
  WordList::verifyVisible(v9, *(v10 + 4 * a2), a3, a4, a5, a6, a7, a8);
  return (*(v9 + 28) + *(*(v9 + 25) + 4 * v11));
}

void VerifyVocName(const char *__s, const char *a2)
{
  if (__s)
  {
    if (*__s == 95)
    {
      v3 = strlen(__s);
      if (v3)
      {
        if (v3 == 1)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/vocutil.cpp", 109, "voc/vocutil", 4, "%.500s %.500s", v4, v5, __s);
        }

        else
        {
          v6 = v3;
          for (i = 1; i != v6; ++i)
          {
            if (__s[i] - 58 <= 0xFFFFFFF5)
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/vocutil.cpp", 113, "voc/vocutil", 4, "%.500s %.500s", v4, v5, __s);
            }
          }
        }
      }
    }
  }
}

void *GetStateName@<X0>(unsigned int a1@<W0>, unsigned int Parent@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, DgnString *a9@<X8>)
{
  v11 = *(*(**VocMgr::smpVocMgr + 8 * a1) + 56);
  v25 = 0;
  v26 = 0;
  while (Parent)
  {
    Name = StateMgr::getName(v11, Parent, a3, a4, a5, a6, a7, a8);
    DgnString::DgnString(v24, Name);
    v13 = v26;
    if (v26 == HIDWORD(v26))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(&v25, 1, 1);
      v13 = v26;
    }

    DgnString::DgnString((v25 + 16 * v13), v24);
    LODWORD(v26) = v26 + 1;
    DgnString::~DgnString(v24);
    Parent = StateMgr::getParent(v11, Parent, v14, v15, v16, v17, v18, v19);
  }

  v20 = v26;
  DgnString::DgnString(a9);
  if (v20)
  {
    v21 = 0;
    v22 = v20 - 1;
    do
    {
      if (v21)
      {
        DgnString::operator+=(a9, ".");
      }

      DgnString::operator+=(a9, v25 + 16 * v22);
      ++v21;
      --v22;
    }

    while (v20 != v21);
  }

  return DgnArray<DgnString>::releaseAll(&v25);
}

void sub_2627DFFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnArray<DgnString>::releaseAll(va);
  _Unwind_Resume(a1);
}

DgnString *GetRuleName@<X0>(unsigned int a1@<W0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, DgnString *a9@<X8>)
{
  v12 = *(*(**VocMgr::smpVocMgr + 8 * a1) + 64);
  Parent = RuleMgr::getParent(v12, a2, a3, a4, a5, a6, a7, a8);
  GetStateName(a1, Parent, v14, v15, v16, v17, v18, v19, a9);
  DgnString::operator+=(a9, ".");
  Name = RuleMgr::getName(v12, a2, v20, v21, v22, v23, v24, v25);
  return DgnString::operator+=(a9, Name);
}

const char *GetCollationName(unsigned int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == 65534)
  {
    return "_IDENTITY";
  }

  else
  {
    return CollMgr::getCollationName(*(*(**VocMgr::smpVocMgr + 8 * a1) + 16), a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t Lattice<PhonemeLatticeLC>::cmpInLink(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  v4 = *(a1 + 128);
  v5 = *(v4 + 24 * a2);
  v6 = *(v4 + 24 * a3);
  v7 = v5 == v6;
  if (v5 > v6)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = *(v4 + 24 * a2 + 8);
    v9 = *(v4 + 24 * a3 + 8);
    if (v8 == v9)
    {
      return 0;
    }

    if (*(*(a1 + 80) + 24 * v8 + 4) < *(*(a1 + 80) + 24 * v9 + 4))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  return v3;
}

uint64_t Lattice<PhonemeLatticeLC>::cmpOutLink(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  v4 = *(a1 + 128);
  v5 = *(v4 + 24 * a2);
  v6 = *(v4 + 24 * a3);
  v7 = v5 == v6;
  if (v5 > v6)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = *(v4 + 24 * a2 + 12);
    v9 = *(v4 + 24 * a3 + 12);
    if (v8 == v9)
    {
      return 0;
    }

    if (*(*(a1 + 80) + 24 * v8 + 4) < *(*(a1 + 80) + 24 * v9 + 4))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  return v3;
}

uint64_t Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(uint64_t a1, unsigned int a2, unsigned int a3)
{
  result = Lattice<PhonemeLatticeLC>::cmpNodesByInLinksIgnoreNodes(a1, a2, a3);
  if (!result)
  {
    if (a2 == a3)
    {
      return 0;
    }

    else if (*(*(a1 + 80) + 24 * a2 + 4) < *(*(a1 + 80) + 24 * a3 + 4))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(uint64_t a1, unsigned int a2, unsigned int a3)
{
  result = Lattice<PhonemeLatticeLC>::cmpNodesByOutLinksIgnoreNodes(a1, a2, a3);
  if (!result)
  {
    if (a2 == a3)
    {
      return 0;
    }

    else if (*(*(a1 + 80) + 24 * a2 + 4) < *(*(a1 + 80) + 24 * a3 + 4))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t mrec_qsort_r<InLinkICmp1>(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = -a3;
  v100 = a3 != 8;
  if (((result | a3) & 7) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = a3 != 8;
  }

  v103 = ((result | a3) & 7) == 0;
  v104 = v8;
  if (a2 < 7)
  {
LABEL_119:
    if ((v5 * a3) > a3)
    {
      v73 = (v6 + v5 * a3);
      v74 = (v6 + a3);
      v75 = v6;
      do
      {
        if (v74 > v6)
        {
          v76 = v75;
          v77 = v74;
          do
          {
            v78 = v77;
            v77 = (v77 + v7);
            result = Lattice<PhonemeLatticeLC>::cmpInLink(a4, *v77, *v78);
            if (result < 1)
            {
              break;
            }

            if (v104)
            {
              if (v103)
              {
                v79 = 0;
                v80 = v77;
                do
                {
                  v81 = *&v78[2 * v79];
                  *&v78[2 * v79] = *v80;
                  *v80 = v81;
                  v80 += 2;
                  ++v79;
                }

                while (a3 >> 3 != v79);
              }

              else
              {
                v83 = 0;
                v84 = a3;
                do
                {
                  v85 = *(v78 + v83);
                  *(v78 + v83) = *(v76 + v83);
                  *(v76 + v83++) = v85;
                  --v84;
                }

                while (v84);
              }
            }

            else
            {
              v82 = *v78;
              *v78 = *v77;
              *v77 = v82;
            }

            v76 = (v76 + v7);
          }

          while (v77 > v6);
        }

        v74 = (v74 + a3);
        v75 = (v75 + a3);
      }

      while (v74 < v73);
    }

    return result;
  }

  v9 = a4;
  v10 = a3 >> 3;
  while (1)
  {
    v11 = (v6 + (v5 >> 1) * a3);
    v101 = v5;
    if (v5 == 7)
    {
      goto LABEL_46;
    }

    v12 = (v6 + (v5 - 1) * a3);
    if (v5 >= 0x29)
    {
      v99 = (v6 + (v5 - 1) * a3);
      v13 = (v5 >> 3) * a3;
      v14 = (v6 + 2 * v13);
      v15 = Lattice<PhonemeLatticeLC>::cmpInLink(a4, *v6, *(v6 + v13));
      v98 = (v6 + v13);
      v16 = Lattice<PhonemeLatticeLC>::cmpInLink(a4, *(v6 + v13), *v14);
      if (v15 < 0)
      {
        if ((v16 & 0x80000000) == 0)
        {
          if (Lattice<PhonemeLatticeLC>::cmpInLink(a4, *v6, *v14) >= 0)
          {
            v17 = v6;
          }

          else
          {
            v17 = (v6 + 2 * v13);
          }

          goto LABEL_18;
        }
      }

      else if (v16 <= 0)
      {
        if (Lattice<PhonemeLatticeLC>::cmpInLink(a4, *v6, *v14) >= 0)
        {
          v17 = (v6 + 2 * v13);
        }

        else
        {
          v17 = v6;
        }

LABEL_18:
        v98 = v17;
      }

      v19 = (v11 - v13);
      v20 = (v11 + v13);
      v21 = Lattice<PhonemeLatticeLC>::cmpInLink(a4, *(v11 - v13), *v11);
      v22 = Lattice<PhonemeLatticeLC>::cmpInLink(a4, *v11, *(v11 + v13));
      if (v21 < 0)
      {
        if ((v22 & 0x80000000) == 0)
        {
          if (Lattice<PhonemeLatticeLC>::cmpInLink(a4, *v19, *v20) >= 0)
          {
            v11 = (v11 - v13);
          }

          else
          {
            v11 = (v11 + v13);
          }
        }
      }

      else if (v22 <= 0)
      {
        if (Lattice<PhonemeLatticeLC>::cmpInLink(a4, *v19, *v20) >= 0)
        {
          v11 = (v11 + v13);
        }

        else
        {
          v11 = (v11 - v13);
        }
      }

      v23 = (v99 - 2 * v13);
      v12 = (v99 - v13);
      v24 = Lattice<PhonemeLatticeLC>::cmpInLink(a4, *v23, *v12);
      v25 = Lattice<PhonemeLatticeLC>::cmpInLink(a4, *v12, *v99);
      if (v24 < 0)
      {
        v18 = v98;
        if ((v25 & 0x80000000) == 0)
        {
          v12 = v99;
          if (Lattice<PhonemeLatticeLC>::cmpInLink(a4, *v23, *v99) >= 0)
          {
            v12 = v23;
          }
        }
      }

      else
      {
        v18 = v98;
        if (v25 <= 0)
        {
          v12 = v99;
          if (Lattice<PhonemeLatticeLC>::cmpInLink(a4, *v23, *v99) < 0)
          {
            v12 = v23;
          }
        }
      }

      v5 = v101;
      goto LABEL_37;
    }

    v18 = v6;
LABEL_37:
    v9 = a4;
    v26 = Lattice<PhonemeLatticeLC>::cmpInLink(a4, *v18, *v11);
    result = Lattice<PhonemeLatticeLC>::cmpInLink(a4, *v11, *v12);
    if (v26 < 0)
    {
      if ((result & 0x80000000) == 0)
      {
        result = Lattice<PhonemeLatticeLC>::cmpInLink(a4, *v18, *v12);
        if (result >= 0)
        {
          v11 = v18;
        }

        else
        {
          v11 = v12;
        }
      }
    }

    else if (result <= 0)
    {
      result = Lattice<PhonemeLatticeLC>::cmpInLink(a4, *v18, *v12);
      if (result >= 0)
      {
        v11 = v12;
      }

      else
      {
        v11 = v18;
      }
    }

LABEL_46:
    if (v104)
    {
      if (v103)
      {
        v27 = v6;
        v28 = a3 >> 3;
        do
        {
          v29 = *v27;
          *v27 = *v11;
          v27 += 2;
          *v11 = v29;
          v11 += 2;
          --v28;
        }

        while (v28);
      }

      else
      {
        v31 = a3;
        v32 = v6;
        do
        {
          v33 = *v32;
          *v32 = *v11;
          v32 = (v32 + 1);
          *v11 = v33;
          v11 = (v11 + 1);
          --v31;
        }

        while (v31);
      }
    }

    else
    {
      v30 = *v6;
      *v6 = *v11;
      *v11 = v30;
    }

    v34 = 0;
    v35 = (v6 + (v5 - 1) * a3);
    v36 = v35;
    v37 = (v6 + a3);
    v38 = (v6 + a3);
LABEL_55:
    while (v37 <= v36)
    {
      result = Lattice<PhonemeLatticeLC>::cmpInLink(v9, *v37, *v6);
      if (result > 0)
      {
        break;
      }

      if (!result)
      {
        if (v104)
        {
          if (v103)
          {
            v39 = 0;
            do
            {
              v40 = v38[v39];
              v38[v39] = *&v37[2 * v39];
              *&v37[2 * v39++] = v40;
            }

            while (v10 != v39);
          }

          else
          {
            v49 = 0;
            do
            {
              v50 = *(v38 + v49);
              *(v38 + v49) = *(v37 + v49);
              *(v37 + v49++) = v50;
            }

            while (a3 != v49);
          }
        }

        else
        {
          v48 = *v38;
          *v38 = *v37;
          *v37 = v48;
        }

        v38 = (v38 + a3);
        v34 = 1;
      }

      v37 = (v37 + a3);
    }

    while (v37 <= v36)
    {
      result = Lattice<PhonemeLatticeLC>::cmpInLink(v9, *v36, *v6);
      if ((result & 0x80000000) != 0)
      {
        if (v104)
        {
          if (v103)
          {
            v46 = 0;
            do
            {
              v47 = *&v37[2 * v46];
              *&v37[2 * v46] = *&v36[2 * v46];
              *&v36[2 * v46++] = v47;
            }

            while (v10 != v46);
          }

          else
          {
            v52 = 0;
            do
            {
              v53 = *(v37 + v52);
              *(v37 + v52) = *(v36 + v52);
              *(v36 + v52++) = v53;
            }

            while (a3 != v52);
          }
        }

        else
        {
          v51 = *v37;
          *v37 = *v36;
          *v36 = v51;
        }

        v37 = (v37 + a3);
        v36 = (v36 + v7);
        v34 = 1;
        goto LABEL_55;
      }

      if (!result)
      {
        if (v104)
        {
          if (v103)
          {
            v41 = 0;
            do
            {
              v42 = *&v36[2 * v41];
              *&v36[2 * v41] = *&v35[2 * v41];
              *&v35[2 * v41++] = v42;
            }

            while (v10 != v41);
          }

          else
          {
            v44 = 0;
            do
            {
              v45 = *(v36 + v44);
              *(v36 + v44) = *(v35 + v44);
              *(v35 + v44++) = v45;
            }

            while (a3 != v44);
          }
        }

        else
        {
          v43 = *v36;
          *v36 = *v35;
          *v35 = v43;
        }

        v35 = (v35 + v7);
        v34 = 1;
      }

      v36 = (v36 + v7);
    }

    v54 = (v6 + v101 * a3);
    if (!v34)
    {
      break;
    }

    v55 = v37 - v38;
    if (v38 - v6 >= v37 - v38)
    {
      v56 = v37 - v38;
    }

    else
    {
      v56 = v38 - v6;
    }

    if (v56)
    {
      if (v103)
      {
        v57 = (v37 - v56);
        v58 = v56 >> 3;
        v59 = v6;
        do
        {
          v60 = *v59;
          *v59 = *v57;
          v59 += 2;
          *v57++ = v60;
          --v58;
        }

        while (v58);
      }

      else
      {
        v61 = -v56;
        v62 = v6;
        do
        {
          v63 = *v62;
          *v62 = *(v37 + v61);
          v62 = (v62 + 1);
          *(v37 + v61) = v63;
          v64 = __CFADD__(v61++, 1);
        }

        while (!v64);
      }
    }

    v65 = v35 - v36;
    if (v35 - v36 >= v54 - (v35 + a3))
    {
      v66 = v54 - (v35 + a3);
    }

    else
    {
      v66 = v35 - v36;
    }

    if (v66)
    {
      if (v103)
      {
        v67 = v54 - v66;
        v68 = v66 >> 3;
        do
        {
          v69 = *v37;
          *v37 = *v67;
          v37 += 2;
          *v67 = v69;
          v67 += 8;
          --v68;
        }

        while (v68);
      }

      else
      {
        v70 = -v66;
        do
        {
          v71 = *v37;
          *v37 = *(v54 + v70);
          v37 = (v37 + 1);
          *(v54 + v70) = v71;
          v64 = __CFADD__(v70++, 1);
        }

        while (!v64);
      }
    }

    if (v55 > a3)
    {
      result = mrec_qsort_r<InLinkICmp1>(v6, v55 / a3, a3, a4);
    }

    if (v65 <= a3)
    {
      return result;
    }

    v6 = (v54 - v65);
    v5 = v65 / a3;
    v72 = v100;
    if ((((v54 - v65) | a3) & 7) != 0)
    {
      v72 = 2;
    }

    v103 = (((v54 - v65) | a3) & 7) == 0;
    v104 = v72;
    v9 = a4;
    if (v5 < 7)
    {
      goto LABEL_119;
    }
  }

  v86 = (v6 + a3);
  if ((v101 * a3) > a3)
  {
    v87 = v6;
    do
    {
      if (v86 > v6)
      {
        v88 = v87;
        v89 = v86;
        do
        {
          v90 = v89;
          v89 = (v89 + v7);
          result = Lattice<PhonemeLatticeLC>::cmpInLink(a4, *v89, *v90);
          if (result < 1)
          {
            break;
          }

          if (v104)
          {
            if (v103)
            {
              v91 = 0;
              v92 = v89;
              do
              {
                v93 = *&v90[2 * v91];
                *&v90[2 * v91] = *v92;
                *v92 = v93;
                v92 += 2;
                ++v91;
              }

              while (v10 != v91);
            }

            else
            {
              v95 = 0;
              v96 = a3;
              do
              {
                v97 = *(v90 + v95);
                *(v90 + v95) = *(v88 + v95);
                *(v88 + v95++) = v97;
                --v96;
              }

              while (v96);
            }
          }

          else
          {
            v94 = *v90;
            *v90 = *v89;
            *v89 = v94;
          }

          v88 = (v88 + v7);
        }

        while (v89 > v6);
      }

      v86 = (v86 + a3);
      v87 = (v87 + a3);
    }

    while (v86 < v54);
  }

  return result;
}

uint64_t mrec_qsort_r<OutLinkICmp1>(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = -a3;
  v100 = a3 != 8;
  if (((result | a3) & 7) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = a3 != 8;
  }

  v103 = ((result | a3) & 7) == 0;
  v104 = v8;
  if (a2 < 7)
  {
LABEL_119:
    if ((v5 * a3) > a3)
    {
      v73 = (v6 + v5 * a3);
      v74 = (v6 + a3);
      v75 = v6;
      do
      {
        if (v74 > v6)
        {
          v76 = v75;
          v77 = v74;
          do
          {
            v78 = v77;
            v77 = (v77 + v7);
            result = Lattice<PhonemeLatticeLC>::cmpOutLink(a4, *v77, *v78);
            if (result < 1)
            {
              break;
            }

            if (v104)
            {
              if (v103)
              {
                v79 = 0;
                v80 = v77;
                do
                {
                  v81 = *&v78[2 * v79];
                  *&v78[2 * v79] = *v80;
                  *v80 = v81;
                  v80 += 2;
                  ++v79;
                }

                while (a3 >> 3 != v79);
              }

              else
              {
                v83 = 0;
                v84 = a3;
                do
                {
                  v85 = *(v78 + v83);
                  *(v78 + v83) = *(v76 + v83);
                  *(v76 + v83++) = v85;
                  --v84;
                }

                while (v84);
              }
            }

            else
            {
              v82 = *v78;
              *v78 = *v77;
              *v77 = v82;
            }

            v76 = (v76 + v7);
          }

          while (v77 > v6);
        }

        v74 = (v74 + a3);
        v75 = (v75 + a3);
      }

      while (v74 < v73);
    }

    return result;
  }

  v9 = a4;
  v10 = a3 >> 3;
  while (1)
  {
    v11 = (v6 + (v5 >> 1) * a3);
    v101 = v5;
    if (v5 == 7)
    {
      goto LABEL_46;
    }

    v12 = (v6 + (v5 - 1) * a3);
    if (v5 >= 0x29)
    {
      v99 = (v6 + (v5 - 1) * a3);
      v13 = (v5 >> 3) * a3;
      v14 = (v6 + 2 * v13);
      v15 = Lattice<PhonemeLatticeLC>::cmpOutLink(a4, *v6, *(v6 + v13));
      v98 = (v6 + v13);
      v16 = Lattice<PhonemeLatticeLC>::cmpOutLink(a4, *(v6 + v13), *v14);
      if (v15 < 0)
      {
        if ((v16 & 0x80000000) == 0)
        {
          if (Lattice<PhonemeLatticeLC>::cmpOutLink(a4, *v6, *v14) >= 0)
          {
            v17 = v6;
          }

          else
          {
            v17 = (v6 + 2 * v13);
          }

          goto LABEL_18;
        }
      }

      else if (v16 <= 0)
      {
        if (Lattice<PhonemeLatticeLC>::cmpOutLink(a4, *v6, *v14) >= 0)
        {
          v17 = (v6 + 2 * v13);
        }

        else
        {
          v17 = v6;
        }

LABEL_18:
        v98 = v17;
      }

      v19 = (v11 - v13);
      v20 = (v11 + v13);
      v21 = Lattice<PhonemeLatticeLC>::cmpOutLink(a4, *(v11 - v13), *v11);
      v22 = Lattice<PhonemeLatticeLC>::cmpOutLink(a4, *v11, *(v11 + v13));
      if (v21 < 0)
      {
        if ((v22 & 0x80000000) == 0)
        {
          if (Lattice<PhonemeLatticeLC>::cmpOutLink(a4, *v19, *v20) >= 0)
          {
            v11 = (v11 - v13);
          }

          else
          {
            v11 = (v11 + v13);
          }
        }
      }

      else if (v22 <= 0)
      {
        if (Lattice<PhonemeLatticeLC>::cmpOutLink(a4, *v19, *v20) >= 0)
        {
          v11 = (v11 + v13);
        }

        else
        {
          v11 = (v11 - v13);
        }
      }

      v23 = (v99 - 2 * v13);
      v12 = (v99 - v13);
      v24 = Lattice<PhonemeLatticeLC>::cmpOutLink(a4, *v23, *v12);
      v25 = Lattice<PhonemeLatticeLC>::cmpOutLink(a4, *v12, *v99);
      if (v24 < 0)
      {
        v18 = v98;
        if ((v25 & 0x80000000) == 0)
        {
          v12 = v99;
          if (Lattice<PhonemeLatticeLC>::cmpOutLink(a4, *v23, *v99) >= 0)
          {
            v12 = v23;
          }
        }
      }

      else
      {
        v18 = v98;
        if (v25 <= 0)
        {
          v12 = v99;
          if (Lattice<PhonemeLatticeLC>::cmpOutLink(a4, *v23, *v99) < 0)
          {
            v12 = v23;
          }
        }
      }

      v5 = v101;
      goto LABEL_37;
    }

    v18 = v6;
LABEL_37:
    v9 = a4;
    v26 = Lattice<PhonemeLatticeLC>::cmpOutLink(a4, *v18, *v11);
    result = Lattice<PhonemeLatticeLC>::cmpOutLink(a4, *v11, *v12);
    if (v26 < 0)
    {
      if ((result & 0x80000000) == 0)
      {
        result = Lattice<PhonemeLatticeLC>::cmpOutLink(a4, *v18, *v12);
        if (result >= 0)
        {
          v11 = v18;
        }

        else
        {
          v11 = v12;
        }
      }
    }

    else if (result <= 0)
    {
      result = Lattice<PhonemeLatticeLC>::cmpOutLink(a4, *v18, *v12);
      if (result >= 0)
      {
        v11 = v12;
      }

      else
      {
        v11 = v18;
      }
    }

LABEL_46:
    if (v104)
    {
      if (v103)
      {
        v27 = v6;
        v28 = a3 >> 3;
        do
        {
          v29 = *v27;
          *v27 = *v11;
          v27 += 2;
          *v11 = v29;
          v11 += 2;
          --v28;
        }

        while (v28);
      }

      else
      {
        v31 = a3;
        v32 = v6;
        do
        {
          v33 = *v32;
          *v32 = *v11;
          v32 = (v32 + 1);
          *v11 = v33;
          v11 = (v11 + 1);
          --v31;
        }

        while (v31);
      }
    }

    else
    {
      v30 = *v6;
      *v6 = *v11;
      *v11 = v30;
    }

    v34 = 0;
    v35 = (v6 + (v5 - 1) * a3);
    v36 = v35;
    v37 = (v6 + a3);
    v38 = (v6 + a3);
LABEL_55:
    while (v37 <= v36)
    {
      result = Lattice<PhonemeLatticeLC>::cmpOutLink(v9, *v37, *v6);
      if (result > 0)
      {
        break;
      }

      if (!result)
      {
        if (v104)
        {
          if (v103)
          {
            v39 = 0;
            do
            {
              v40 = v38[v39];
              v38[v39] = *&v37[2 * v39];
              *&v37[2 * v39++] = v40;
            }

            while (v10 != v39);
          }

          else
          {
            v49 = 0;
            do
            {
              v50 = *(v38 + v49);
              *(v38 + v49) = *(v37 + v49);
              *(v37 + v49++) = v50;
            }

            while (a3 != v49);
          }
        }

        else
        {
          v48 = *v38;
          *v38 = *v37;
          *v37 = v48;
        }

        v38 = (v38 + a3);
        v34 = 1;
      }

      v37 = (v37 + a3);
    }

    while (v37 <= v36)
    {
      result = Lattice<PhonemeLatticeLC>::cmpOutLink(v9, *v36, *v6);
      if ((result & 0x80000000) != 0)
      {
        if (v104)
        {
          if (v103)
          {
            v46 = 0;
            do
            {
              v47 = *&v37[2 * v46];
              *&v37[2 * v46] = *&v36[2 * v46];
              *&v36[2 * v46++] = v47;
            }

            while (v10 != v46);
          }

          else
          {
            v52 = 0;
            do
            {
              v53 = *(v37 + v52);
              *(v37 + v52) = *(v36 + v52);
              *(v36 + v52++) = v53;
            }

            while (a3 != v52);
          }
        }

        else
        {
          v51 = *v37;
          *v37 = *v36;
          *v36 = v51;
        }

        v37 = (v37 + a3);
        v36 = (v36 + v7);
        v34 = 1;
        goto LABEL_55;
      }

      if (!result)
      {
        if (v104)
        {
          if (v103)
          {
            v41 = 0;
            do
            {
              v42 = *&v36[2 * v41];
              *&v36[2 * v41] = *&v35[2 * v41];
              *&v35[2 * v41++] = v42;
            }

            while (v10 != v41);
          }

          else
          {
            v44 = 0;
            do
            {
              v45 = *(v36 + v44);
              *(v36 + v44) = *(v35 + v44);
              *(v35 + v44++) = v45;
            }

            while (a3 != v44);
          }
        }

        else
        {
          v43 = *v36;
          *v36 = *v35;
          *v35 = v43;
        }

        v35 = (v35 + v7);
        v34 = 1;
      }

      v36 = (v36 + v7);
    }

    v54 = (v6 + v101 * a3);
    if (!v34)
    {
      break;
    }

    v55 = v37 - v38;
    if (v38 - v6 >= v37 - v38)
    {
      v56 = v37 - v38;
    }

    else
    {
      v56 = v38 - v6;
    }

    if (v56)
    {
      if (v103)
      {
        v57 = (v37 - v56);
        v58 = v56 >> 3;
        v59 = v6;
        do
        {
          v60 = *v59;
          *v59 = *v57;
          v59 += 2;
          *v57++ = v60;
          --v58;
        }

        while (v58);
      }

      else
      {
        v61 = -v56;
        v62 = v6;
        do
        {
          v63 = *v62;
          *v62 = *(v37 + v61);
          v62 = (v62 + 1);
          *(v37 + v61) = v63;
          v64 = __CFADD__(v61++, 1);
        }

        while (!v64);
      }
    }

    v65 = v35 - v36;
    if (v35 - v36 >= v54 - (v35 + a3))
    {
      v66 = v54 - (v35 + a3);
    }

    else
    {
      v66 = v35 - v36;
    }

    if (v66)
    {
      if (v103)
      {
        v67 = v54 - v66;
        v68 = v66 >> 3;
        do
        {
          v69 = *v37;
          *v37 = *v67;
          v37 += 2;
          *v67 = v69;
          v67 += 8;
          --v68;
        }

        while (v68);
      }

      else
      {
        v70 = -v66;
        do
        {
          v71 = *v37;
          *v37 = *(v54 + v70);
          v37 = (v37 + 1);
          *(v54 + v70) = v71;
          v64 = __CFADD__(v70++, 1);
        }

        while (!v64);
      }
    }

    if (v55 > a3)
    {
      result = mrec_qsort_r<OutLinkICmp1>(v6, v55 / a3, a3, a4);
    }

    if (v65 <= a3)
    {
      return result;
    }

    v6 = (v54 - v65);
    v5 = v65 / a3;
    v72 = v100;
    if ((((v54 - v65) | a3) & 7) != 0)
    {
      v72 = 2;
    }

    v103 = (((v54 - v65) | a3) & 7) == 0;
    v104 = v72;
    v9 = a4;
    if (v5 < 7)
    {
      goto LABEL_119;
    }
  }

  v86 = (v6 + a3);
  if ((v101 * a3) > a3)
  {
    v87 = v6;
    do
    {
      if (v86 > v6)
      {
        v88 = v87;
        v89 = v86;
        do
        {
          v90 = v89;
          v89 = (v89 + v7);
          result = Lattice<PhonemeLatticeLC>::cmpOutLink(a4, *v89, *v90);
          if (result < 1)
          {
            break;
          }

          if (v104)
          {
            if (v103)
            {
              v91 = 0;
              v92 = v89;
              do
              {
                v93 = *&v90[2 * v91];
                *&v90[2 * v91] = *v92;
                *v92 = v93;
                v92 += 2;
                ++v91;
              }

              while (v10 != v91);
            }

            else
            {
              v95 = 0;
              v96 = a3;
              do
              {
                v97 = *(v90 + v95);
                *(v90 + v95) = *(v88 + v95);
                *(v88 + v95++) = v97;
                --v96;
              }

              while (v96);
            }
          }

          else
          {
            v94 = *v90;
            *v90 = *v89;
            *v89 = v94;
          }

          v88 = (v88 + v7);
        }

        while (v89 > v6);
      }

      v86 = (v86 + a3);
      v87 = (v87 + a3);
    }

    while (v86 < v54);
  }

  return result;
}

char *mrec_qsort_r<NodeICmp1>(char *result, unint64_t a2, int64_t a3, uint64_t a4)
{
  v6 = -a3;
  v7 = a3 != 8;
  v8 = ((result | a3) & 7) == 0;
  if (((result | a3) & 7) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = a3 != 8;
  }

  if (a2 < 7)
  {
LABEL_130:
    if ((a2 * a3) > a3)
    {
      v100 = &result[a2 * a3];
      v101 = &result[a3];
      v102 = result;
      do
      {
        if (v101 > result)
        {
          v103 = v102;
          v104 = v101;
          do
          {
            v105 = v104;
            v104 = (v104 + v6);
            if (*v104 == *v105 || *(*(a4 + 80) + 24 * *v104 + 4) < *(*(a4 + 80) + 24 * *v105 + 4))
            {
              break;
            }

            if (v9)
            {
              v106 = 0;
              if (v8)
              {
                v107 = v104;
                do
                {
                  v108 = *&v105[2 * v106];
                  *&v105[2 * v106] = *v107;
                  *v107++ = v108;
                  ++v106;
                }

                while (a3 >> 3 != v106);
              }

              else
              {
                v110 = a3;
                do
                {
                  v111 = *(v105 + v106);
                  *(v105 + v106) = *(v103 + v106);
                  *(v103 + v106++) = v111;
                  --v110;
                }

                while (v110);
              }
            }

            else
            {
              v109 = *v105;
              *v105 = *v104;
              *v104 = v109;
            }

            v103 = (v103 + v6);
          }

          while (v104 > result);
        }

        v101 += a3;
        v102 += a3;
      }

      while (v101 < v100);
    }

    return result;
  }

  v10 = a3 >> 3;
  while (2)
  {
    v11 = &result[(a2 >> 1) * a3];
    if (a2 == 7)
    {
      goto LABEL_59;
    }

    v12 = &result[(a2 - 1) * a3];
    if (a2 < 0x29)
    {
      v14 = result;
      goto LABEL_46;
    }

    v13 = (a2 >> 3) * a3;
    v14 = &result[v13];
    v15 = &result[2 * v13];
    v16 = *result;
    v17 = *&result[v13];
    if (*result == v17 || (v18 = *(a4 + 80), v19 = *(v18 + 24 * v16 + 4), v20 = *(v18 + 24 * v17 + 4), v19 >= v20))
    {
      v22 = *v15;
      if (v17 == *v15 || *(*(a4 + 80) + 24 * v17 + 4) < *(*(a4 + 80) + 24 * v22 + 4))
      {
        if (v16 == v22 || (v23 = *(a4 + 80), v24 = *(v23 + 24 * v16 + 4), v25 = *(v23 + 24 * v22 + 4), v14 = result, v24 >= v25))
        {
          v14 = &result[2 * v13];
        }
      }
    }

    else
    {
      v21 = *v15;
      if (v17 == *v15 || v20 >= *(v18 + 24 * v21 + 4))
      {
        v14 = result;
        if (v16 != v21)
        {
          v14 = &result[2 * v13];
          if (v19 >= *(v18 + 24 * v21 + 4))
          {
            v14 = result;
          }
        }
      }
    }

    v26 = &v11[-v13];
    v27 = &v11[v13];
    v28 = *&v11[-v13];
    v29 = *v11;
    if (v28 == *v11 || (v30 = *(a4 + 80), v31 = *(v30 + 24 * v28 + 4), v32 = *(v30 + 24 * v29 + 4), v31 >= v32))
    {
      v34 = *v27;
      if (v29 == *v27 || *(*(a4 + 80) + 24 * v29 + 4) < *(*(a4 + 80) + 24 * v34 + 4))
      {
        if (v28 == v34 || (v35 = *(a4 + 80), v36 = *(v35 + 24 * v28 + 4), v37 = *(v35 + 24 * v34 + 4), v11 = v26, v36 >= v37))
        {
          v11 = v27;
        }
      }
    }

    else
    {
      v33 = *v27;
      if (v29 == *v27 || v32 >= *(v30 + 24 * v33 + 4))
      {
        if (v28 == v33 || (v11 += v13, v31 >= *(v30 + 24 * v33 + 4)))
        {
          v11 = v26;
        }
      }
    }

    v38 = -v13;
    v39 = (v12 - 2 * v13);
    v40 = (v12 + v38);
    v41 = *v39;
    v42 = *v40;
    if (*v39 != *v40)
    {
      v43 = *(a4 + 80);
      v44 = *(v43 + 24 * v41 + 4);
      v45 = *(v43 + 24 * v42 + 4);
      if (v44 < v45)
      {
        v46 = *v12;
        if (v42 == *v12 || v45 >= *(v43 + 24 * v46 + 4))
        {
          if (v41 != v46 && v44 < *(v43 + 24 * v46 + 4))
          {
            goto LABEL_46;
          }

LABEL_44:
          v12 = v39;
          goto LABEL_46;
        }

LABEL_45:
        v12 = v40;
        goto LABEL_46;
      }
    }

    v47 = *v12;
    if (v42 != *v12 && *(*(a4 + 80) + 24 * v42 + 4) >= *(*(a4 + 80) + 24 * v47 + 4))
    {
      goto LABEL_45;
    }

    if (v41 != v47 && *(*(a4 + 80) + 24 * v41 + 4) < *(*(a4 + 80) + 24 * v47 + 4))
    {
      goto LABEL_44;
    }

LABEL_46:
    v48 = *v14;
    v49 = *v11;
    if (v48 == v49)
    {
      v50 = *v12;
    }

    else
    {
      v51 = *(a4 + 80);
      v52 = *(v51 + 24 * v48 + 4);
      v53 = *(v51 + 24 * v49 + 4);
      v50 = *v12;
      if (v52 < v53)
      {
        if (v49 == v50 || v53 >= *(v51 + 24 * v50 + 4))
        {
          if (v48 == v50 || (v11 = v12, v52 >= *(v51 + 24 * v50 + 4)))
          {
            v11 = v14;
          }
        }

        goto LABEL_59;
      }
    }

    if (v49 == v50 || *(*(a4 + 80) + 24 * v49 + 4) < *(*(a4 + 80) + 24 * v50 + 4))
    {
      if (v48 == v50 || (v54 = *(a4 + 80), v55 = *(v54 + 24 * v48 + 4), v56 = *(v54 + 24 * v50 + 4), v11 = v14, v55 >= v56))
      {
        v11 = v12;
      }
    }

LABEL_59:
    if (v9)
    {
      if (v8)
      {
        v57 = result;
        v58 = a3 >> 3;
        do
        {
          v59 = *v57;
          *v57 = *v11;
          v57 += 8;
          *v11 = v59;
          v11 += 8;
          --v58;
        }

        while (v58);
      }

      else
      {
        v61 = a3;
        v62 = result;
        do
        {
          v63 = *v62;
          *v62++ = *v11;
          *v11++ = v63;
          --v61;
        }

        while (v61);
      }
    }

    else
    {
      v60 = *result;
      *result = *v11;
      *v11 = v60;
    }

    v64 = 0;
    v65 = &result[a3];
    v66 = &result[(a2 - 1) * a3];
    v67 = v66;
    v68 = &result[a3];
    v69 = &result[a3];
    while (1)
    {
LABEL_68:
      if (v68 > v67)
      {
        goto LABEL_81;
      }

      if (*v68 != *result)
      {
        break;
      }

      if (v9)
      {
        v70 = 0;
        if (v8)
        {
          do
          {
            v71 = *&v69[8 * v70];
            *&v69[8 * v70] = *&v68[8 * v70];
            *&v68[8 * v70++] = v71;
          }

          while (v10 != v70);
        }

        else
        {
          do
          {
            v72 = v69[v70];
            v69[v70] = v68[v70];
            v68[v70++] = v72;
          }

          while (a3 != v70);
        }
      }

      else
      {
        v80 = *v69;
        *v69 = *v68;
        *v68 = v80;
      }

      v69 += a3;
      v64 = 1;
LABEL_98:
      v68 += a3;
    }

    if (*(*(a4 + 80) + 24 * *v68 + 4) < *(*(a4 + 80) + 24 * *result + 4))
    {
      goto LABEL_98;
    }

LABEL_81:
    while (v68 <= v67)
    {
      if (*v67 == *result)
      {
        if (v9)
        {
          v74 = 0;
          if (v8)
          {
            do
            {
              v75 = *&v67[8 * v74];
              *&v67[8 * v74] = *&v66[2 * v74];
              *&v66[2 * v74++] = v75;
            }

            while (v10 != v74);
          }

          else
          {
            do
            {
              v76 = v67[v74];
              v67[v74] = *(v66 + v74);
              *(v66 + v74++) = v76;
            }

            while (a3 != v74);
          }
        }

        else
        {
          v73 = *v67;
          *v67 = *v66;
          *v66 = v73;
        }

        v66 = (v66 + v6);
        v64 = 1;
      }

      else if (*(*(a4 + 80) + 24 * *v67 + 4) < *(*(a4 + 80) + 24 * *result + 4))
      {
        if (v9)
        {
          v77 = 0;
          if (v8)
          {
            do
            {
              v78 = *&v68[8 * v77];
              *&v68[8 * v77] = *&v67[8 * v77];
              *&v67[8 * v77++] = v78;
            }

            while (v10 != v77);
          }

          else
          {
            do
            {
              v79 = v68[v77];
              v68[v77] = v67[v77];
              v67[v77++] = v79;
            }

            while (a3 != v77);
          }
        }

        else
        {
          v81 = *v68;
          *v68 = *v67;
          *v67 = v81;
        }

        v68 += a3;
        v67 += v6;
        v64 = 1;
        goto LABEL_68;
      }

      v67 += v6;
    }

    v82 = &result[a2 * a3];
    if (v64)
    {
      v83 = v68 - v69;
      if (v69 - result >= v68 - v69)
      {
        v84 = v68 - v69;
      }

      else
      {
        v84 = v69 - result;
      }

      if (v84)
      {
        if (v8)
        {
          v85 = &v68[-v84];
          v86 = v84 >> 3;
          v87 = result;
          do
          {
            v88 = *v87;
            *v87 = *v85;
            v87 += 8;
            *v85 = v88;
            v85 += 8;
            --v86;
          }

          while (v86);
        }

        else
        {
          v89 = -v84;
          v90 = result;
          do
          {
            v91 = *v90;
            *v90++ = v68[v89];
            v68[v89] = v91;
            v92 = __CFADD__(v89++, 1);
          }

          while (!v92);
        }
      }

      v93 = v66 - v67;
      v94 = v82 - (v66 + a3);
      if (v66 - v67 < v94)
      {
        v94 = v66 - v67;
      }

      if (v94)
      {
        if (v8)
        {
          v95 = &v82[-v94];
          v96 = v94 >> 3;
          do
          {
            v97 = *v68;
            *v68 = *v95;
            v68 += 8;
            *v95 = v97;
            v95 += 8;
            --v96;
          }

          while (v96);
        }

        else
        {
          v98 = -v94;
          do
          {
            v99 = *v68;
            *v68++ = v82[v98];
            v82[v98] = v99;
            v92 = __CFADD__(v98++, 1);
          }

          while (!v92);
        }
      }

      if (v83 > a3)
      {
        result = mrec_qsort_r<NodeICmp1>();
      }

      if (v93 > a3)
      {
        result = &v82[-v93];
        a2 = v93 / a3;
        v8 = (((v82 - v93) | a3) & 7) == 0;
        if ((((v82 - v93) | a3) & 7) != 0)
        {
          v9 = 2;
        }

        else
        {
          v9 = v7;
        }

        if (a2 < 7)
        {
          goto LABEL_130;
        }

        continue;
      }
    }

    else if ((a2 * a3) > a3)
    {
      v112 = result;
      do
      {
        if (v65 > result)
        {
          v113 = v112;
          v114 = v65;
          do
          {
            v115 = v114;
            v114 = (v114 + v6);
            if (*v114 == *v115 || *(*(a4 + 80) + 24 * *v114 + 4) < *(*(a4 + 80) + 24 * *v115 + 4))
            {
              break;
            }

            if (v9)
            {
              v116 = 0;
              if (v8)
              {
                v117 = v114;
                do
                {
                  v118 = *&v115[2 * v116];
                  *&v115[2 * v116] = *v117;
                  *v117++ = v118;
                  ++v116;
                }

                while (v10 != v116);
              }

              else
              {
                v120 = a3;
                do
                {
                  v121 = *(v115 + v116);
                  *(v115 + v116) = *(v113 + v116);
                  *(v113 + v116++) = v121;
                  --v120;
                }

                while (v120);
              }
            }

            else
            {
              v119 = *v115;
              *v115 = *v114;
              *v114 = v119;
            }

            v113 = (v113 + v6);
          }

          while (v114 > result);
        }

        v65 += a3;
        v112 += a3;
      }

      while (v65 < v82);
    }

    return result;
  }
}

uint64_t mrec_qsort_r<NodeByInLinksICmp1>(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = -a3;
  v100 = a3 != 8;
  if (((result | a3) & 7) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = a3 != 8;
  }

  v103 = ((result | a3) & 7) == 0;
  v104 = v8;
  if (a2 < 7)
  {
LABEL_119:
    if ((v5 * a3) > a3)
    {
      v73 = (v6 + v5 * a3);
      v74 = (v6 + a3);
      v75 = v6;
      do
      {
        if (v74 > v6)
        {
          v76 = v75;
          v77 = v74;
          do
          {
            v78 = v77;
            v77 = (v77 + v7);
            result = Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(a4, *v77, *v78);
            if (result < 1)
            {
              break;
            }

            if (v104)
            {
              if (v103)
              {
                v79 = 0;
                v80 = v77;
                do
                {
                  v81 = *&v78[2 * v79];
                  *&v78[2 * v79] = *v80;
                  *v80 = v81;
                  v80 += 2;
                  ++v79;
                }

                while (a3 >> 3 != v79);
              }

              else
              {
                v83 = 0;
                v84 = a3;
                do
                {
                  v85 = *(v78 + v83);
                  *(v78 + v83) = *(v76 + v83);
                  *(v76 + v83++) = v85;
                  --v84;
                }

                while (v84);
              }
            }

            else
            {
              v82 = *v78;
              *v78 = *v77;
              *v77 = v82;
            }

            v76 = (v76 + v7);
          }

          while (v77 > v6);
        }

        v74 = (v74 + a3);
        v75 = (v75 + a3);
      }

      while (v74 < v73);
    }

    return result;
  }

  v9 = a4;
  v10 = a3 >> 3;
  while (1)
  {
    v11 = (v6 + (v5 >> 1) * a3);
    v101 = v5;
    if (v5 == 7)
    {
      goto LABEL_46;
    }

    v12 = (v6 + (v5 - 1) * a3);
    if (v5 >= 0x29)
    {
      v99 = (v6 + (v5 - 1) * a3);
      v13 = (v5 >> 3) * a3;
      v14 = (v6 + 2 * v13);
      v15 = Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(a4, *v6, *(v6 + v13));
      v98 = (v6 + v13);
      v16 = Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(a4, *(v6 + v13), *v14);
      if (v15 < 0)
      {
        if ((v16 & 0x80000000) == 0)
        {
          if (Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(a4, *v6, *v14) >= 0)
          {
            v17 = v6;
          }

          else
          {
            v17 = (v6 + 2 * v13);
          }

          goto LABEL_18;
        }
      }

      else if (v16 <= 0)
      {
        if (Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(a4, *v6, *v14) >= 0)
        {
          v17 = (v6 + 2 * v13);
        }

        else
        {
          v17 = v6;
        }

LABEL_18:
        v98 = v17;
      }

      v19 = (v11 - v13);
      v20 = (v11 + v13);
      v21 = Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(a4, *(v11 - v13), *v11);
      v22 = Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(a4, *v11, *(v11 + v13));
      if (v21 < 0)
      {
        if ((v22 & 0x80000000) == 0)
        {
          if (Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(a4, *v19, *v20) >= 0)
          {
            v11 = (v11 - v13);
          }

          else
          {
            v11 = (v11 + v13);
          }
        }
      }

      else if (v22 <= 0)
      {
        if (Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(a4, *v19, *v20) >= 0)
        {
          v11 = (v11 + v13);
        }

        else
        {
          v11 = (v11 - v13);
        }
      }

      v23 = (v99 - 2 * v13);
      v12 = (v99 - v13);
      v24 = Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(a4, *v23, *v12);
      v25 = Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(a4, *v12, *v99);
      if (v24 < 0)
      {
        v18 = v98;
        if ((v25 & 0x80000000) == 0)
        {
          v12 = v99;
          if (Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(a4, *v23, *v99) >= 0)
          {
            v12 = v23;
          }
        }
      }

      else
      {
        v18 = v98;
        if (v25 <= 0)
        {
          v12 = v99;
          if (Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(a4, *v23, *v99) < 0)
          {
            v12 = v23;
          }
        }
      }

      v5 = v101;
      goto LABEL_37;
    }

    v18 = v6;
LABEL_37:
    v9 = a4;
    v26 = Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(a4, *v18, *v11);
    result = Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(a4, *v11, *v12);
    if (v26 < 0)
    {
      if ((result & 0x80000000) == 0)
      {
        result = Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(a4, *v18, *v12);
        if (result >= 0)
        {
          v11 = v18;
        }

        else
        {
          v11 = v12;
        }
      }
    }

    else if (result <= 0)
    {
      result = Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(a4, *v18, *v12);
      if (result >= 0)
      {
        v11 = v12;
      }

      else
      {
        v11 = v18;
      }
    }

LABEL_46:
    if (v104)
    {
      if (v103)
      {
        v27 = v6;
        v28 = a3 >> 3;
        do
        {
          v29 = *v27;
          *v27 = *v11;
          v27 += 2;
          *v11 = v29;
          v11 += 2;
          --v28;
        }

        while (v28);
      }

      else
      {
        v31 = a3;
        v32 = v6;
        do
        {
          v33 = *v32;
          *v32 = *v11;
          v32 = (v32 + 1);
          *v11 = v33;
          v11 = (v11 + 1);
          --v31;
        }

        while (v31);
      }
    }

    else
    {
      v30 = *v6;
      *v6 = *v11;
      *v11 = v30;
    }

    v34 = 0;
    v35 = (v6 + (v5 - 1) * a3);
    v36 = v35;
    v37 = (v6 + a3);
    v38 = (v6 + a3);
LABEL_55:
    while (v37 <= v36)
    {
      result = Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(v9, *v37, *v6);
      if (result > 0)
      {
        break;
      }

      if (!result)
      {
        if (v104)
        {
          if (v103)
          {
            v39 = 0;
            do
            {
              v40 = v38[v39];
              v38[v39] = *&v37[2 * v39];
              *&v37[2 * v39++] = v40;
            }

            while (v10 != v39);
          }

          else
          {
            v49 = 0;
            do
            {
              v50 = *(v38 + v49);
              *(v38 + v49) = *(v37 + v49);
              *(v37 + v49++) = v50;
            }

            while (a3 != v49);
          }
        }

        else
        {
          v48 = *v38;
          *v38 = *v37;
          *v37 = v48;
        }

        v38 = (v38 + a3);
        v34 = 1;
      }

      v37 = (v37 + a3);
    }

    while (v37 <= v36)
    {
      result = Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(v9, *v36, *v6);
      if ((result & 0x80000000) != 0)
      {
        if (v104)
        {
          if (v103)
          {
            v46 = 0;
            do
            {
              v47 = *&v37[2 * v46];
              *&v37[2 * v46] = *&v36[2 * v46];
              *&v36[2 * v46++] = v47;
            }

            while (v10 != v46);
          }

          else
          {
            v52 = 0;
            do
            {
              v53 = *(v37 + v52);
              *(v37 + v52) = *(v36 + v52);
              *(v36 + v52++) = v53;
            }

            while (a3 != v52);
          }
        }

        else
        {
          v51 = *v37;
          *v37 = *v36;
          *v36 = v51;
        }

        v37 = (v37 + a3);
        v36 = (v36 + v7);
        v34 = 1;
        goto LABEL_55;
      }

      if (!result)
      {
        if (v104)
        {
          if (v103)
          {
            v41 = 0;
            do
            {
              v42 = *&v36[2 * v41];
              *&v36[2 * v41] = *&v35[2 * v41];
              *&v35[2 * v41++] = v42;
            }

            while (v10 != v41);
          }

          else
          {
            v44 = 0;
            do
            {
              v45 = *(v36 + v44);
              *(v36 + v44) = *(v35 + v44);
              *(v35 + v44++) = v45;
            }

            while (a3 != v44);
          }
        }

        else
        {
          v43 = *v36;
          *v36 = *v35;
          *v35 = v43;
        }

        v35 = (v35 + v7);
        v34 = 1;
      }

      v36 = (v36 + v7);
    }

    v54 = (v6 + v101 * a3);
    if (!v34)
    {
      break;
    }

    v55 = v37 - v38;
    if (v38 - v6 >= v37 - v38)
    {
      v56 = v37 - v38;
    }

    else
    {
      v56 = v38 - v6;
    }

    if (v56)
    {
      if (v103)
      {
        v57 = (v37 - v56);
        v58 = v56 >> 3;
        v59 = v6;
        do
        {
          v60 = *v59;
          *v59 = *v57;
          v59 += 2;
          *v57++ = v60;
          --v58;
        }

        while (v58);
      }

      else
      {
        v61 = -v56;
        v62 = v6;
        do
        {
          v63 = *v62;
          *v62 = *(v37 + v61);
          v62 = (v62 + 1);
          *(v37 + v61) = v63;
          v64 = __CFADD__(v61++, 1);
        }

        while (!v64);
      }
    }

    v65 = v35 - v36;
    if (v35 - v36 >= v54 - (v35 + a3))
    {
      v66 = v54 - (v35 + a3);
    }

    else
    {
      v66 = v35 - v36;
    }

    if (v66)
    {
      if (v103)
      {
        v67 = v54 - v66;
        v68 = v66 >> 3;
        do
        {
          v69 = *v37;
          *v37 = *v67;
          v37 += 2;
          *v67 = v69;
          v67 += 8;
          --v68;
        }

        while (v68);
      }

      else
      {
        v70 = -v66;
        do
        {
          v71 = *v37;
          *v37 = *(v54 + v70);
          v37 = (v37 + 1);
          *(v54 + v70) = v71;
          v64 = __CFADD__(v70++, 1);
        }

        while (!v64);
      }
    }

    if (v55 > a3)
    {
      result = mrec_qsort_r<NodeByInLinksICmp1>(v6, v55 / a3, a3, a4);
    }

    if (v65 <= a3)
    {
      return result;
    }

    v6 = (v54 - v65);
    v5 = v65 / a3;
    v72 = v100;
    if ((((v54 - v65) | a3) & 7) != 0)
    {
      v72 = 2;
    }

    v103 = (((v54 - v65) | a3) & 7) == 0;
    v104 = v72;
    v9 = a4;
    if (v5 < 7)
    {
      goto LABEL_119;
    }
  }

  v86 = (v6 + a3);
  if ((v101 * a3) > a3)
  {
    v87 = v6;
    do
    {
      if (v86 > v6)
      {
        v88 = v87;
        v89 = v86;
        do
        {
          v90 = v89;
          v89 = (v89 + v7);
          result = Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(a4, *v89, *v90);
          if (result < 1)
          {
            break;
          }

          if (v104)
          {
            if (v103)
            {
              v91 = 0;
              v92 = v89;
              do
              {
                v93 = *&v90[2 * v91];
                *&v90[2 * v91] = *v92;
                *v92 = v93;
                v92 += 2;
                ++v91;
              }

              while (v10 != v91);
            }

            else
            {
              v95 = 0;
              v96 = a3;
              do
              {
                v97 = *(v90 + v95);
                *(v90 + v95) = *(v88 + v95);
                *(v88 + v95++) = v97;
                --v96;
              }

              while (v96);
            }
          }

          else
          {
            v94 = *v90;
            *v90 = *v89;
            *v89 = v94;
          }

          v88 = (v88 + v7);
        }

        while (v89 > v6);
      }

      v86 = (v86 + a3);
      v87 = (v87 + a3);
    }

    while (v86 < v54);
  }

  return result;
}

uint64_t mrec_qsort_r<NodeByOutLinksICmp1>(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = -a3;
  v100 = a3 != 8;
  if (((result | a3) & 7) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = a3 != 8;
  }

  v103 = ((result | a3) & 7) == 0;
  v104 = v8;
  if (a2 < 7)
  {
LABEL_119:
    if ((v5 * a3) > a3)
    {
      v73 = (v6 + v5 * a3);
      v74 = (v6 + a3);
      v75 = v6;
      do
      {
        if (v74 > v6)
        {
          v76 = v75;
          v77 = v74;
          do
          {
            v78 = v77;
            v77 = (v77 + v7);
            result = Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(a4, *v77, *v78);
            if (result < 1)
            {
              break;
            }

            if (v104)
            {
              if (v103)
              {
                v79 = 0;
                v80 = v77;
                do
                {
                  v81 = *&v78[2 * v79];
                  *&v78[2 * v79] = *v80;
                  *v80 = v81;
                  v80 += 2;
                  ++v79;
                }

                while (a3 >> 3 != v79);
              }

              else
              {
                v83 = 0;
                v84 = a3;
                do
                {
                  v85 = *(v78 + v83);
                  *(v78 + v83) = *(v76 + v83);
                  *(v76 + v83++) = v85;
                  --v84;
                }

                while (v84);
              }
            }

            else
            {
              v82 = *v78;
              *v78 = *v77;
              *v77 = v82;
            }

            v76 = (v76 + v7);
          }

          while (v77 > v6);
        }

        v74 = (v74 + a3);
        v75 = (v75 + a3);
      }

      while (v74 < v73);
    }

    return result;
  }

  v9 = a4;
  v10 = a3 >> 3;
  while (1)
  {
    v11 = (v6 + (v5 >> 1) * a3);
    v101 = v5;
    if (v5 == 7)
    {
      goto LABEL_46;
    }

    v12 = (v6 + (v5 - 1) * a3);
    if (v5 >= 0x29)
    {
      v99 = (v6 + (v5 - 1) * a3);
      v13 = (v5 >> 3) * a3;
      v14 = (v6 + 2 * v13);
      v15 = Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(a4, *v6, *(v6 + v13));
      v98 = (v6 + v13);
      v16 = Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(a4, *(v6 + v13), *v14);
      if (v15 < 0)
      {
        if ((v16 & 0x80000000) == 0)
        {
          if (Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(a4, *v6, *v14) >= 0)
          {
            v17 = v6;
          }

          else
          {
            v17 = (v6 + 2 * v13);
          }

          goto LABEL_18;
        }
      }

      else if (v16 <= 0)
      {
        if (Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(a4, *v6, *v14) >= 0)
        {
          v17 = (v6 + 2 * v13);
        }

        else
        {
          v17 = v6;
        }

LABEL_18:
        v98 = v17;
      }

      v19 = (v11 - v13);
      v20 = (v11 + v13);
      v21 = Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(a4, *(v11 - v13), *v11);
      v22 = Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(a4, *v11, *(v11 + v13));
      if (v21 < 0)
      {
        if ((v22 & 0x80000000) == 0)
        {
          if (Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(a4, *v19, *v20) >= 0)
          {
            v11 = (v11 - v13);
          }

          else
          {
            v11 = (v11 + v13);
          }
        }
      }

      else if (v22 <= 0)
      {
        if (Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(a4, *v19, *v20) >= 0)
        {
          v11 = (v11 + v13);
        }

        else
        {
          v11 = (v11 - v13);
        }
      }

      v23 = (v99 - 2 * v13);
      v12 = (v99 - v13);
      v24 = Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(a4, *v23, *v12);
      v25 = Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(a4, *v12, *v99);
      if (v24 < 0)
      {
        v18 = v98;
        if ((v25 & 0x80000000) == 0)
        {
          v12 = v99;
          if (Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(a4, *v23, *v99) >= 0)
          {
            v12 = v23;
          }
        }
      }

      else
      {
        v18 = v98;
        if (v25 <= 0)
        {
          v12 = v99;
          if (Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(a4, *v23, *v99) < 0)
          {
            v12 = v23;
          }
        }
      }

      v5 = v101;
      goto LABEL_37;
    }

    v18 = v6;
LABEL_37:
    v9 = a4;
    v26 = Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(a4, *v18, *v11);
    result = Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(a4, *v11, *v12);
    if (v26 < 0)
    {
      if ((result & 0x80000000) == 0)
      {
        result = Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(a4, *v18, *v12);
        if (result >= 0)
        {
          v11 = v18;
        }

        else
        {
          v11 = v12;
        }
      }
    }

    else if (result <= 0)
    {
      result = Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(a4, *v18, *v12);
      if (result >= 0)
      {
        v11 = v12;
      }

      else
      {
        v11 = v18;
      }
    }

LABEL_46:
    if (v104)
    {
      if (v103)
      {
        v27 = v6;
        v28 = a3 >> 3;
        do
        {
          v29 = *v27;
          *v27 = *v11;
          v27 += 2;
          *v11 = v29;
          v11 += 2;
          --v28;
        }

        while (v28);
      }

      else
      {
        v31 = a3;
        v32 = v6;
        do
        {
          v33 = *v32;
          *v32 = *v11;
          v32 = (v32 + 1);
          *v11 = v33;
          v11 = (v11 + 1);
          --v31;
        }

        while (v31);
      }
    }

    else
    {
      v30 = *v6;
      *v6 = *v11;
      *v11 = v30;
    }

    v34 = 0;
    v35 = (v6 + (v5 - 1) * a3);
    v36 = v35;
    v37 = (v6 + a3);
    v38 = (v6 + a3);
LABEL_55:
    while (v37 <= v36)
    {
      result = Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(v9, *v37, *v6);
      if (result > 0)
      {
        break;
      }

      if (!result)
      {
        if (v104)
        {
          if (v103)
          {
            v39 = 0;
            do
            {
              v40 = v38[v39];
              v38[v39] = *&v37[2 * v39];
              *&v37[2 * v39++] = v40;
            }

            while (v10 != v39);
          }

          else
          {
            v49 = 0;
            do
            {
              v50 = *(v38 + v49);
              *(v38 + v49) = *(v37 + v49);
              *(v37 + v49++) = v50;
            }

            while (a3 != v49);
          }
        }

        else
        {
          v48 = *v38;
          *v38 = *v37;
          *v37 = v48;
        }

        v38 = (v38 + a3);
        v34 = 1;
      }

      v37 = (v37 + a3);
    }

    while (v37 <= v36)
    {
      result = Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(v9, *v36, *v6);
      if ((result & 0x80000000) != 0)
      {
        if (v104)
        {
          if (v103)
          {
            v46 = 0;
            do
            {
              v47 = *&v37[2 * v46];
              *&v37[2 * v46] = *&v36[2 * v46];
              *&v36[2 * v46++] = v47;
            }

            while (v10 != v46);
          }

          else
          {
            v52 = 0;
            do
            {
              v53 = *(v37 + v52);
              *(v37 + v52) = *(v36 + v52);
              *(v36 + v52++) = v53;
            }

            while (a3 != v52);
          }
        }

        else
        {
          v51 = *v37;
          *v37 = *v36;
          *v36 = v51;
        }

        v37 = (v37 + a3);
        v36 = (v36 + v7);
        v34 = 1;
        goto LABEL_55;
      }

      if (!result)
      {
        if (v104)
        {
          if (v103)
          {
            v41 = 0;
            do
            {
              v42 = *&v36[2 * v41];
              *&v36[2 * v41] = *&v35[2 * v41];
              *&v35[2 * v41++] = v42;
            }

            while (v10 != v41);
          }

          else
          {
            v44 = 0;
            do
            {
              v45 = *(v36 + v44);
              *(v36 + v44) = *(v35 + v44);
              *(v35 + v44++) = v45;
            }

            while (a3 != v44);
          }
        }

        else
        {
          v43 = *v36;
          *v36 = *v35;
          *v35 = v43;
        }

        v35 = (v35 + v7);
        v34 = 1;
      }

      v36 = (v36 + v7);
    }

    v54 = (v6 + v101 * a3);
    if (!v34)
    {
      break;
    }

    v55 = v37 - v38;
    if (v38 - v6 >= v37 - v38)
    {
      v56 = v37 - v38;
    }

    else
    {
      v56 = v38 - v6;
    }

    if (v56)
    {
      if (v103)
      {
        v57 = (v37 - v56);
        v58 = v56 >> 3;
        v59 = v6;
        do
        {
          v60 = *v59;
          *v59 = *v57;
          v59 += 2;
          *v57++ = v60;
          --v58;
        }

        while (v58);
      }

      else
      {
        v61 = -v56;
        v62 = v6;
        do
        {
          v63 = *v62;
          *v62 = *(v37 + v61);
          v62 = (v62 + 1);
          *(v37 + v61) = v63;
          v64 = __CFADD__(v61++, 1);
        }

        while (!v64);
      }
    }

    v65 = v35 - v36;
    if (v35 - v36 >= v54 - (v35 + a3))
    {
      v66 = v54 - (v35 + a3);
    }

    else
    {
      v66 = v35 - v36;
    }

    if (v66)
    {
      if (v103)
      {
        v67 = v54 - v66;
        v68 = v66 >> 3;
        do
        {
          v69 = *v37;
          *v37 = *v67;
          v37 += 2;
          *v67 = v69;
          v67 += 8;
          --v68;
        }

        while (v68);
      }

      else
      {
        v70 = -v66;
        do
        {
          v71 = *v37;
          *v37 = *(v54 + v70);
          v37 = (v37 + 1);
          *(v54 + v70) = v71;
          v64 = __CFADD__(v70++, 1);
        }

        while (!v64);
      }
    }

    if (v55 > a3)
    {
      result = mrec_qsort_r<NodeByOutLinksICmp1>(v6, v55 / a3, a3, a4);
    }

    if (v65 <= a3)
    {
      return result;
    }

    v6 = (v54 - v65);
    v5 = v65 / a3;
    v72 = v100;
    if ((((v54 - v65) | a3) & 7) != 0)
    {
      v72 = 2;
    }

    v103 = (((v54 - v65) | a3) & 7) == 0;
    v104 = v72;
    v9 = a4;
    if (v5 < 7)
    {
      goto LABEL_119;
    }
  }

  v86 = (v6 + a3);
  if ((v101 * a3) > a3)
  {
    v87 = v6;
    do
    {
      if (v86 > v6)
      {
        v88 = v87;
        v89 = v86;
        do
        {
          v90 = v89;
          v89 = (v89 + v7);
          result = Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(a4, *v89, *v90);
          if (result < 1)
          {
            break;
          }

          if (v104)
          {
            if (v103)
            {
              v91 = 0;
              v92 = v89;
              do
              {
                v93 = *&v90[2 * v91];
                *&v90[2 * v91] = *v92;
                *v92 = v93;
                v92 += 2;
                ++v91;
              }

              while (v10 != v91);
            }

            else
            {
              v95 = 0;
              v96 = a3;
              do
              {
                v97 = *(v90 + v95);
                *(v90 + v95) = *(v88 + v95);
                *(v88 + v95++) = v97;
                --v96;
              }

              while (v96);
            }
          }

          else
          {
            v94 = *v90;
            *v90 = *v89;
            *v89 = v94;
          }

          v88 = (v88 + v7);
        }

        while (v89 > v6);
      }

      v86 = (v86 + a3);
      v87 = (v87 + a3);
    }

    while (v86 < v54);
  }

  return result;
}

void PhonemeLattice::printSize(PhonemeLattice *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/phnlat.cpp", 152, &v29);
  if (v30)
  {
    v16 = v29;
  }

  else
  {
    v16 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &byte_262899963, a3, &byte_262899963, v16);
  DgnString::~DgnString(&v29);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &byte_262899963);
  v28 = 0;
  v29 = 0;
  v27 = 0;
  Lattice<PhonemeLatticeLC>::printSize(this, 0xFFFFFFFFLL, (a3 + 1), &v29, &v28, &v27);
  *a4 += v29;
  *a5 += v28;
  *a6 += v27;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/phnlat.cpp", 155, &v29);
  if (v30)
  {
    v25 = v29;
  }

  else
  {
    v25 = &byte_262899963;
  }

  v26 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, v22, v23, v24, a3, &byte_262899963, (35 - a3), (35 - a3), v25, *a4, *a5, *a6);
  DgnString::~DgnString(&v29);
}

void sub_2627E2C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void Lattice<PhonemeLatticeLC>::printSize(unsigned int *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 898, &v150);
  if (v151)
  {
    v16 = v150;
  }

  else
  {
    v16 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &byte_262899963, a3, &byte_262899963, v16);
  DgnString::~DgnString(&v150);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &byte_262899963);
  v21 = (a3 + 1);
  v22 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900, &v150);
  if (v151)
  {
    v27 = v150;
  }

  else
  {
    v27 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v24, v25, v26, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v27, 1, 1, 0);
  DgnString::~DgnString(&v150);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900, &v150);
  if (v151)
  {
    v32 = v150;
  }

  else
  {
    v32 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, v29, v30, v31, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v32, 4, 4, 0);
  v149 = a3;
  DgnString::~DgnString(&v150);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v33 = 12;
  }

  else
  {
    v33 = 16;
  }

  v34 = a1[6];
  v35 = a1[7];
  if (v35 >= v34)
  {
    v36 = 0;
    if (v34 > 0)
    {
      v33 += 4 * (v34 - 1) + 4;
    }

    v37 = v33 + 4 * (v35 - v34);
  }

  else
  {
    v36 = 4 * v34;
    v37 = v33;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900, &v150);
  if (v151)
  {
    v42 = v150;
  }

  else
  {
    v42 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v38, v39, v40, v41, v21, &byte_262899963, v22, v22, v42, v37, v33, v36);
  DgnString::~DgnString(&v150);
  *a4 += v37;
  *a5 += v33;
  *a6 += v36;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v43 = 12;
  }

  else
  {
    v43 = 16;
  }

  v44 = a1[10];
  v45 = a1[11];
  if (v45 >= v44)
  {
    v46 = 0;
    if (v44 > 0)
    {
      v43 += 4 * (v44 - 1) + 4;
    }

    v47 = v43 + 4 * (v45 - v44);
  }

  else
  {
    v46 = 4 * v44;
    v47 = v43;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900, &v150);
  if (v151)
  {
    v52 = v150;
  }

  else
  {
    v52 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v48, v49, v50, v51, v21, &byte_262899963, v22, v22, v52, v47, v43, v46);
  DgnString::~DgnString(&v150);
  *a4 += v47;
  *a5 += v43;
  *a6 += v46;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v53 = 12;
  }

  else
  {
    v53 = 16;
  }

  v54 = a1[14];
  v55 = a1[15];
  if (v55 >= v54)
  {
    v56 = 0;
    if (v54 > 0)
    {
      v53 += 4 * (v54 - 1) + 4;
    }

    v57 = v53 + 4 * (v55 - v54);
  }

  else
  {
    v56 = 4 * v54;
    v57 = v53;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900, &v150);
  if (v151)
  {
    v62 = v150;
  }

  else
  {
    v62 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v58, v59, v60, v61, v21, &byte_262899963, v22, v22, v62, v57, v53, v56);
  DgnString::~DgnString(&v150);
  *a4 += v57;
  *a5 += v53;
  *a6 += v56;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v63 = 12;
  }

  else
  {
    v63 = 16;
  }

  v64 = a1[18];
  v65 = a1[19];
  if (v65 >= v64)
  {
    v66 = 0;
    if (v64 > 0)
    {
      v63 += 4 * (v64 - 1) + 4;
    }

    v67 = v63 + 4 * (v65 - v64);
  }

  else
  {
    v66 = 4 * v64;
    v67 = v63;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900, &v150);
  if (v151)
  {
    v72 = v150;
  }

  else
  {
    v72 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v68, v69, v70, v71, v21, &byte_262899963, v22, v22, v72, v67, v63, v66);
  DgnString::~DgnString(&v150);
  *a4 += v67;
  *a5 += v63;
  *a6 += v66;
  v73 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v73 = 12;
  }

  v74 = a1[22];
  v75 = 24 * v74;
  if (v74 <= 0)
  {
    v75 = 0;
  }

  v76 = v75 + v73;
  v77 = v75 + v73 + 24 * (a1[23] - v74);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900, &v150);
  if (v151)
  {
    v82 = v150;
  }

  else
  {
    v82 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v78, v79, v80, v81, v21, &byte_262899963, v22, v22, v82, v77, v76, 0);
  DgnString::~DgnString(&v150);
  *a4 += v77;
  *a5 += v76;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v83 = 12;
  }

  else
  {
    v83 = 16;
  }

  v84 = a1[26];
  v85 = a1[27];
  if (v85 >= v84)
  {
    v86 = 0;
    if (v84 > 0)
    {
      v83 += 4 * (v84 - 1) + 4;
    }

    v87 = v83 + 4 * (v85 - v84);
  }

  else
  {
    v86 = 4 * v84;
    v87 = v83;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900, &v150);
  if (v151)
  {
    v92 = v150;
  }

  else
  {
    v92 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v88, v89, v90, v91, v21, &byte_262899963, v22, v22, v92, v87, v83, v86);
  DgnString::~DgnString(&v150);
  *a4 += v87;
  *a5 += v83;
  *a6 += v86;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v93 = 12;
  }

  else
  {
    v93 = 16;
  }

  v94 = a1[30];
  v95 = a1[31];
  if (v95 >= v94)
  {
    v96 = 0;
    if (v94 > 0)
    {
      v93 += 4 * (v94 - 1) + 4;
    }

    v97 = v93 + 4 * (v95 - v94);
  }

  else
  {
    v96 = 4 * v94;
    v97 = v93;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900, &v150);
  if (v151)
  {
    v102 = v150;
  }

  else
  {
    v102 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v98, v99, v100, v101, v21, &byte_262899963, v22, v22, v102, v97, v93, v96);
  DgnString::~DgnString(&v150);
  *a4 += v97;
  *a5 += v93;
  *a6 += v96;
  v103 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v103 = 12;
  }

  v104 = a1[34];
  v105 = 22 * v104;
  if (v104 <= 0)
  {
    v105 = 0;
  }

  v106 = v105 + v103;
  v107 = v105 + v103 + 22 * (a1[35] - v104);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900, &v150);
  if (v151)
  {
    v112 = v150;
  }

  else
  {
    v112 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v108, v109, v110, v111, v21, &byte_262899963, v22, v22, v112, v107, v106, 0);
  DgnString::~DgnString(&v150);
  *a4 += v107;
  *a5 += v106;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v113 = 12;
  }

  else
  {
    v113 = 16;
  }

  v114 = a1[38];
  v115 = a1[39];
  if (v115 >= v114)
  {
    v116 = 0;
    if (v114 > 0)
    {
      v113 += 4 * (v114 - 1) + 4;
    }

    v117 = v113 + 4 * (v115 - v114);
  }

  else
  {
    v116 = 4 * v114;
    v117 = v113;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900, &v150);
  if (v151)
  {
    v122 = v150;
  }

  else
  {
    v122 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v118, v119, v120, v121, v21, &byte_262899963, v22, v22, v122, v117, v113, v116);
  DgnString::~DgnString(&v150);
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

  v124 = a1[42];
  v125 = a1[43];
  if (v125 >= v124)
  {
    v126 = 0;
    if (v124 > 0)
    {
      v123 += 4 * (v124 - 1) + 4;
    }

    v127 = v123 + 4 * (v125 - v124);
  }

  else
  {
    v126 = 4 * v124;
    v127 = v123;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900, &v150);
  if (v151)
  {
    v132 = v150;
  }

  else
  {
    v132 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v128, v129, v130, v131, v21, &byte_262899963, v22, v22, v132, v127, v123, v126);
  DgnString::~DgnString(&v150);
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

  v134 = a1[46];
  v135 = a1[47];
  if (v135 >= v134)
  {
    v136 = 0;
    if (v134 > 0)
    {
      v133 += 4 * (v134 - 1) + 4;
    }

    v137 = v133 + 4 * (v135 - v134);
  }

  else
  {
    v136 = 4 * v134;
    v137 = v133;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900, &v150);
  if (v151)
  {
    v142 = v150;
  }

  else
  {
    v142 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v138, v139, v140, v141, v21, &byte_262899963, v22, v22, v142, v137, v133, v136);
  DgnString::~DgnString(&v150);
  *a4 += v137;
  *a5 += v133;
  *a6 += v136;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 908, &v150);
  if (v151)
  {
    v147 = v150;
  }

  else
  {
    v147 = &byte_262899963;
  }

  v148 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v143, v144, v145, v146, v149, &byte_262899963, (35 - v149), (35 - v149), v147, *a4, *a5, *a6);
  DgnString::~DgnString(&v150);
}

void sub_2627E3654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t PhonemeLattice::PhonemeLattice(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0u;
  *(a1 + 76) = 0u;
  *(a1 + 92) = 0u;
  *(a1 + 108) = 0u;
  *(a1 + 124) = 0u;
  *(a1 + 140) = 0u;
  *(a1 + 156) = 0u;
  *(a1 + 172) = 0u;
  *(a1 + 188) = 0;
  *a1 = &unk_2875280D8;
  v3 = *(a2 + 8);
  Node = Lattice<WordLatticeLC>::createNode(a1);
  if (v3)
  {
    v5 = Node;
    v6 = 0;
    v7 = (v3 - 1);
    v8 = -2;
    v22 = v3;
    v23 = v7;
    do
    {
      v9 = (*a2 + 4 * v6);
      v10 = *v9;
      v11 = **VocMgr::smpVocMgr;
      v12 = *(*(v11 + ((v10 >> 22) & 0x3F8)) + 48);
      if (v6 >= v7)
      {
        PronSuccessorSeedCategory = *(v12 + 417);
      }

      else
      {
        PronSuccessorSeedCategory = WordList::getPronSuccessorSeedCategory(*(*(v11 + ((v9[1] >> 22) & 0x3F8)) + 48), v9[1] & 0xFFFFFF);
      }

      v27 = 0;
      v28 = 0;
      WordList::getWordFamilyCollatedSeedableProns(v12, v10 & 0xFFFFFF, v6 < v7, PronSuccessorSeedCategory, &v27);
      v25 = v6;
      v14 = v28;
      if (v28)
      {
        v15 = 0;
        v16 = -2;
        do
        {
          v17 = v27 + 16 * v15;
          v18 = *(v17 + 8);
          if (v18)
          {
            for (i = 0; i != v18; ++i)
            {
              if (!(i | v15))
              {
                v16 = Lattice<WordLatticeLC>::createNode(a1);
              }

              if (i)
              {
                v20 = v8;
              }

              else
              {
                v20 = v5;
              }

              v8 = v16;
              if (v18 - 1 != i)
              {
                v8 = Lattice<WordLatticeLC>::createNode(a1);
              }

              v26 = *(*v17 + 2 * i);
              Lattice<PhonemeLatticeLC>::maybeCreateAndConnectLink(a1, v20, v8, &v26, 1, 0);
            }

            v14 = v28;
          }

          ++v15;
        }

        while (v15 < v14);
      }

      else
      {
        v16 = -2;
      }

      DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v27);
      v7 = v23;
      if (v16 != -2)
      {
        v5 = v16;
      }

      v6 = v25 + 1;
    }

    while (v25 + 1 != v22);
  }

  Lattice<PhonemeLatticeLC>::gc(a1);
  Lattice<PhonemeLatticeLC>::topSortInternal(a1, 0);
  return a1;
}

uint64_t Lattice<PhonemeLatticeLC>::maybeCreateAndConnectLink(uint64_t a1, unsigned int a2, int a3, __int16 *a4, int a5, _DWORD *a6)
{
  v9 = *(*(a1 + 80) + 24 * a2 + 20);
  if (v9 == -2)
  {
LABEL_6:
    Link = Lattice<PhonemeLatticeLC>::createLink(a1, a2, a3, a4);
    v12 = Link;
    if (a6)
    {
      *a6 = *(*(a1 + 128) + 24 * Link + 4);
    }

    if (a5)
    {
      Lattice<PhonemeLatticeLC>::connectInLink(a1, Link);
      Lattice<PhonemeLatticeLC>::connectOutLink(a1, v12);
    }

    else
    {
      Lattice<PhonemeLatticeLC>::connectInLinkUnordered(a1, Link);
      Lattice<PhonemeLatticeLC>::connectOutLinkUnordered(a1, v12);
    }

    return 1;
  }

  else
  {
    v10 = *(a1 + 128);
    while (*(v10 + 24 * v9 + 12) != a3 || *a4 != *(v10 + 24 * v9))
    {
      v9 = *(v10 + 24 * v9 + 20);
      if (v9 == -2)
      {
        goto LABEL_6;
      }
    }

    result = 0;
    if (a6)
    {
      *a6 = *(v10 + 24 * v9 + 4);
    }
  }

  return result;
}

void *Lattice<PhonemeLatticeLC>::gc(void *a1)
{
  Lattice<PhonemeLatticeLC>::gcNonTerminal(a1);
  Lattice<PhonemeLatticeLC>::gcNonInitial(a1);
  v2 = a1[22];
  if (v2)
  {
    MemChunkFree(v2, 0);
    a1[22] = 0;
  }

  a1[23] = 0;
  result = a1[20];
  if (result)
  {
    result = MemChunkFree(result, 0);
    a1[20] = 0;
  }

  a1[21] = 0;
  return result;
}

void *Lattice<PhonemeLatticeLC>::~Lattice(void *a1)
{
  *a1 = &unk_287523988;
  v2 = (a1 + 2);
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 22));
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 20));
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 18));
  DgnIArray<Utterance *>::~DgnIArray((a1 + 16));
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 14));
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 12));
  DgnIArray<Utterance *>::~DgnIArray((a1 + 10));
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 8));
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 6));
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 4));
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  return a1;
}

void PhonemeLattice::~PhonemeLattice(PhonemeLattice *this)
{
  Lattice<PhonemeLatticeLC>::~Lattice(this);

  JUMPOUT(0x26672B1B0);
}

unint64_t PhonemeLattice::getNextStartNodes@<X0>(unint64_t result@<X0>, unsigned int a2@<W1>, unsigned __int16 *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  v5 = *(*(result + 80) + 24 * a2 + 20);
  if (v5 != -2)
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    v10 = *(result + 128);
    do
    {
      if (*(v10 + 24 * v5) == *a3)
      {
        v11 = *(v10 + 24 * v5 + 12);
        if (v9 == *(a4 + 12))
        {
          result = DgnPrimArray<unsigned int>::reallocElts(a4, 1, 1);
          v9 = *(a4 + 8);
          v8 = *a4;
          v10 = *(v7 + 128);
        }

        *(v8 + 4 * v9) = v11;
        v9 = *(a4 + 8) + 1;
        *(a4 + 8) = v9;
      }

      v5 = *(v10 + 24 * v5 + 20);
    }

    while (v5 != -2);
  }

  return result;
}

uint64_t PhonemeLattice::hasCommonProns(unint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  if (!*(a1 + 40))
  {
    if ((a3 & 1) == 0)
    {
      LODWORD(v48) = *(a2 + 8);
      if (v48)
      {
        v49 = 0;
        do
        {
          v50 = (*v4 + 4 * v49);
          v51 = *v50;
          v52 = **VocMgr::smpVocMgr;
          v53 = *(*(v52 + ((v51 >> 22) & 0x3F8)) + 48);
          v54 = (v48 - 1);
          if (v49 >= v54)
          {
            PronSuccessorSeedCategory = *(v53 + 417);
          }

          else
          {
            PronSuccessorSeedCategory = WordList::getPronSuccessorSeedCategory(*(*(v52 + ((v50[1] >> 22) & 0x3F8)) + 48), v50[1] & 0xFFFFFF);
          }

          v85 = 0;
          v86 = 0;
          WordList::getWordFamilyCollatedSeedableProns(v53, v51 & 0xFFFFFF, v49 < v54, PronSuccessorSeedCategory, &v85);
          if (v86)
          {
            if (v85[2])
            {
              v56 = v85 + 6;
              v57 = 1;
              do
              {
                v58 = v57;
                if (v86 == v57)
                {
                  break;
                }

                v59 = *v56;
                v56 += 4;
                ++v57;
              }

              while (v59);
              v60 = v58 < v86;
            }

            else
            {
              v60 = 1;
            }
          }

          else
          {
            v60 = 0;
          }

          DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v85);
          if (!v60)
          {
            break;
          }

          ++v49;
          v48 = *(v4 + 8);
        }

        while (v49 < v48);
        return v60;
      }
    }

    return 1;
  }

  v6 = *(a1 + 32);
  if (a3 && *v6 == **(a1 + 48))
  {
    return 1;
  }

  v85 = 0;
  v86 = 0;
  v7 = *v6;
  DgnPrimArray<unsigned int>::reallocElts(&v85, 1, 1);
  v85[v86] = v7;
  LODWORD(v86) = v86 + 1;
  v83 = 0;
  v84 = 0;
  BitArray::BitArray(&v81, *(a1 + 24));
  BitArray::BitArray(&v79, *(a1 + 24));
  LODWORD(v8) = *(v4 + 8);
  if (v8)
  {
    v9 = 0;
    v66 = v4;
    while (1)
    {
      v10 = (*v4 + 4 * v9);
      v11 = *v10;
      v12 = *(*(**VocMgr::smpVocMgr + ((v11 >> 22) & 0x3F8)) + 48);
      v77 = 0;
      v78 = 0;
      if (!v86)
      {
        DgnPrimArray<unsigned int>::~DgnPrimArray(&v77);
        goto LABEL_82;
      }

      v13 = (v8 - 1);
      if (v9 >= v13)
      {
        v15 = *(v12 + 417);
      }

      else
      {
        v14 = v9;
        v15 = WordList::getPronSuccessorSeedCategory(*(*(**VocMgr::smpVocMgr + ((v10[1] >> 22) & 0x3F8)) + 48), v10[1] & 0xFFFFFF);
        v9 = v14;
      }

      v69 = v9;
      v75 = 0;
      v76 = 0;
      WordList::getWordFamilyCollatedSeedableProns(v12, v11 & 0xFFFFFF, v9 < v13, v15, &v75);
      v16 = v76;
      if (!v76)
      {
        goto LABEL_51;
      }

      v17 = 0;
      v67 = 0;
      do
      {
        v18 = v75 + 16 * v17;
        if (*(v18 + 8))
        {
          v19 = v86;
          if (v86)
          {
            v20 = 0;
            do
            {
              v68 = v20;
              DgnPrimArray<int>::copyArraySlice(&v83, &v85, 0, v19);
              if (*(v18 + 8))
              {
                v21 = 0;
                do
                {
                  v73 = 0;
                  v74 = 0;
                  BitArray::clearRange(&v81, 0, v82);
                  if (v84)
                  {
                    v22 = 0;
                    do
                    {
                      v23 = *(v83 + 4 * v22);
                      v70 = *(*v18 + 2 * v21);
                      PhonemeLattice::getNextStartNodes(a1, v23, &v70, &v71);
                      v24 = v72;
                      if (v72)
                      {
                        for (i = 0; i < v24; ++i)
                        {
                          v26 = v71;
                          v27 = *(v71 + 4 * i);
                          v28 = *(*(a1 + 80) + 24 * v27);
                          v29 = v28 >> 5;
                          v30 = *(v81 + 4 * (v28 >> 5));
                          v31 = 1 << v28;
                          if ((v30 & v31) == 0)
                          {
                            if (a3 && v27 == **(a1 + 48))
                            {
                              DgnPrimArray<unsigned int>::~DgnPrimArray(&v71);
                              DgnPrimArray<unsigned int>::~DgnPrimArray(&v73);
                              v47 = 1;
                              v4 = v66;
                              goto LABEL_53;
                            }

                            *(v81 + 4 * v29) = v30 | v31;
                            v32 = *(v26 + 4 * i);
                            v33 = v74;
                            if (v74 == HIDWORD(v74))
                            {
                              DgnPrimArray<unsigned int>::reallocElts(&v73, 1, 1);
                              v33 = v74;
                            }

                            *(v73 + 4 * v33) = v32;
                            LODWORD(v74) = v74 + 1;
                            v24 = v72;
                          }
                        }
                      }

                      DgnPrimArray<unsigned int>::~DgnPrimArray(&v71);
                      ++v22;
                    }

                    while (v22 < v84);
                  }

                  DgnPrimArray<int>::copyArraySlice(&v83, &v73, 0, v74);
                  v34 = v84;
                  DgnPrimArray<unsigned int>::~DgnPrimArray(&v73);
                  if (!v34)
                  {
                    break;
                  }

                  ++v21;
                }

                while (v21 < *(v18 + 8));
              }

              v35 = v82;
              if (v82)
              {
                v36 = 0;
                v37 = v79;
                do
                {
                  v38 = v36 >> 5;
                  v39 = 1 << v36;
                  if ((*(v37 + 4 * (v36 >> 5)) & (1 << v36)) == 0 && (*(v81 + 4 * v38) & v39) != 0)
                  {
                    v40 = *(*(a1 + 16) + 4 * v36);
                    v41 = v78;
                    if (v78 == HIDWORD(v78))
                    {
                      DgnPrimArray<unsigned int>::reallocElts(&v77, 1, 1);
                      v41 = v78;
                      v37 = v79;
                    }

                    *(v77 + 4 * v41) = v40;
                    LODWORD(v78) = v78 + 1;
                    *(v37 + 4 * v38) |= v39;
                    v35 = v82;
                  }

                  ++v36;
                }

                while (v36 < v35);
              }

              v20 = v68 + 1;
              v19 = v86;
              v4 = v66;
            }

            while (v68 + 1 < v86);
            v16 = v76;
          }
        }

        else
        {
          v67 = 1;
        }

        ++v17;
      }

      while (v17 < v16);
      if (v67)
      {
        v42 = v78;
        if ((v86 + v78) > HIDWORD(v86))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v85, (v86 + v78 - HIDWORD(v86)), 1);
          v42 = v78;
        }

        if (v42)
        {
          v43 = 0;
          v44 = v77;
          v45 = v85;
          do
          {
            *(v45 + 4 * (v43 + v86)) = *(v44 + 4 * v43);
            ++v43;
            v46 = v78;
          }

          while (v43 < v78);
        }

        else
        {
          v46 = 0;
        }

        LODWORD(v86) = v86 + v46;
      }

      else
      {
LABEL_51:
        DgnPrimArray<int>::copyArraySlice(&v85, &v77, 0, v78);
      }

      BitArray::clearRange(&v79, 0, v80);
      v47 = 0;
LABEL_53:
      DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v75);
      DgnPrimArray<unsigned int>::~DgnPrimArray(&v77);
      if (v47)
      {
        break;
      }

      v9 = v69 + 1;
      v8 = *(v4 + 8);
      if (v69 + 1 >= v8)
      {
        goto LABEL_76;
      }
    }

    v60 = 1;
  }

  else
  {
LABEL_76:
    v61 = v86;
    if (v86)
    {
      v62 = v85;
      v63 = 0xFFFFFFFFLL;
      while (1)
      {
        v64 = *v62++;
        if (v64 == **(a1 + 48))
        {
          break;
        }

        --v63;
        if (!--v61)
        {
          goto LABEL_82;
        }
      }

      v60 = v63 != 0;
    }

    else
    {
LABEL_82:
      v60 = 0;
    }
  }

  BitArray::~BitArray(&v79);
  BitArray::~BitArray(&v81);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v83);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v85);
  return v60;
}

void sub_2627E4228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  BitArray::~BitArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v16 - 120);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v16 - 104);
  _Unwind_Resume(a1);
}

uint64_t Lattice<PhonemeLatticeLC>::cmpNodesByInLinksIgnoreNodes(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  v5 = *(a1 + 80);
  v6 = *(v5 + 24 * a2 + 8);
  v7 = *(v5 + 24 * a3 + 8);
  if (v6 == v7)
  {
    v8 = *(v5 + 24 * a2 + 16);
    if (v8 == -2)
    {
      return 0;
    }

    else
    {
      v9 = (v5 + 24 * a3 + 16);
      while (1)
      {
        v10 = *v9;
        result = Lattice<PhonemeLatticeLC>::cmpInLink(a1, v8, *v9);
        if (result)
        {
          break;
        }

        v11 = *(a1 + 128);
        v12 = v11 + 24 * v8;
        v9 = (v11 + 24 * v10 + 16);
        v8 = *(v12 + 16);
        if (v8 == -2)
        {
          return 0;
        }
      }
    }
  }

  else if (v6 < v7)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }

  return result;
}