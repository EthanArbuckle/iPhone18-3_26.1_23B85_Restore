uint64_t IdMgr<unsigned int>::getNextId(_DWORD *a1)
{
  if (a1[10] <= *a1)
  {
    v2 = a1[2];
    do
    {
      DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::enqueue((a1 + 4), v2);
      v2 = a1[2] + 1;
      a1[2] = v2;
    }

    while (a1[10] <= *a1);
  }

  return DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::dequeue((a1 + 4));
}

void IdMgr<unsigned int>::recycleId(unsigned int *a1, int a2)
{
  DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::enqueue((a1 + 4), a2);
  v4 = *a1;
  v5 = a1[10];
  if (v5 > *a1)
  {
    v6 = a2 + 1;
    v7 = a1[2];
    v8 = v5 - 1;
    do
    {
      if (v7 != v6)
      {
        break;
      }

      a1[10] = v8;
      v9 = a1[9];
      if (!v9)
      {
        v9 = a1[6];
      }

      v10 = v9 - 1;
      a1[9] = v9 - 1;
      v11 = v7 - 1;
      a1[2] = v7 - 1;
      if (v8)
      {
        if (!v10)
        {
          v10 = a1[6];
        }

        v7 = *(*(a1 + 2) + 4 * (v10 - 1)) + 1;
      }

      v6 = v7;
      v7 = v11;
    }

    while (v8-- > v4);
  }
}

void UttFileMgr::printSize(UttFileMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/uttfmgr.cpp", 130, &v71);
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
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/uttfmgr.cpp", 131, &v71);
  if (v72)
  {
    v25 = v71;
  }

  else
  {
    v25 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v21, v22, v23, v24, (a3 + 1), &byte_262899963, (a3 + 1), &byte_262899963, v25);
  v68 = a6;
  DgnString::~DgnString(&v71);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v26, v27, v28, v29, (a3 + 1), &byte_262899963);
  v30 = *(this + 2);
  if (v30)
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    do
    {
      v35 = *this;
      if (*(*this + 8 * v31))
      {
        v70 = 0;
        v71 = 0;
        v69 = 0;
        UttFile::printSize(*(v35 + 8 * v31), v31, (a3 + 2), &v71, &v70, &v69);
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
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/uttfmgr.cpp", 131, &v71);
  if (v72)
  {
    v46 = v71;
  }

  else
  {
    v46 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v43, v44, v45, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v46, v40, v41, v33);
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

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/uttfmgr.cpp", 133, &v71);
  if (v72)
  {
    v61 = v71;
  }

  else
  {
    v61 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v57, v58, v59, v60, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v61, v53, v54, v56);
  DgnString::~DgnString(&v71);
  *a4 += v53;
  *a5 += v54;
  *v68 += v56;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/uttfmgr.cpp", 134, &v71);
  if (v72)
  {
    v66 = v71;
  }

  else
  {
    v66 = &byte_262899963;
  }

  v67 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v62, v63, v64, v65, a3, &byte_262899963, (35 - a3), (35 - a3), v66, *a4, *a5, *v68);
  DgnString::~DgnString(&v71);
}

void sub_26258A6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::enqueue(uint64_t a1, int a2)
{
  v4 = *(a1 + 24);
  if (v4 == *(a1 + 8))
  {
    v5 = *(a1 + 12);
    if (v4 == v5)
    {
      DgnPrimArray<unsigned int>::reallocElts(a1, 1, 1);
      v5 = *(a1 + 12);
      v4 = *(a1 + 24);
    }

    *(a1 + 8) = v5;
    v6 = v5 - v4;
    if (v4)
    {
      v7 = *(a1 + 16);
      if (v7)
      {
        memmove((*a1 + 4 * v7 + 4 * v6), (*a1 + 4 * v7), 4 * (v4 - v7));
        v4 = *(a1 + 20);
        *(a1 + 16) += v6;
      }

      else
      {
        *(a1 + 20) = v4;
      }
    }

    else
    {
      *(a1 + 16) = 0;
    }

    bzero((*a1 + 4 * v4), 4 * v6);
  }

  *(*a1 + 4 * *(a1 + 20)) = a2;
  v8 = *(a1 + 20);
  v9 = *(a1 + 24);
  if (v8 + 1 == *(a1 + 8))
  {
    v10 = 0;
  }

  else
  {
    v10 = v8 + 1;
  }

  *(a1 + 20) = v10;
  *(a1 + 24) = v9 + 1;
}

uint64_t DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::dequeue(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*a1 + 4 * v1);
  *(*a1 + 4 * v1) = 0;
  v3 = *(a1 + 16) + 1;
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

uint64_t DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::sizeObject(_DWORD *a1, unsigned int a2)
{
  result = sizeObject<unsigned int>(a1, a2) + 12 * (a2 != 3);
  if (a2 > 3 || a2 == 1)
  {
    v5 = a1[2];
    if (a1[6] < v5)
    {
      v6 = 0;
      v8 = a1[4];
      v7 = a1[5];
      do
      {
        if (v7 >= v8)
        {
          if (v6 >= v8 && v6 < v7)
          {
            goto LABEL_13;
          }
        }

        else if (v6 < v7 || v6 >= v8)
        {
          goto LABEL_13;
        }

        result -= 4 * (a2 != 3);
LABEL_13:
        ++v6;
      }

      while (v5 != v6);
    }
  }

  return result;
}

void MrecInitModule_rulemgr_voc(void)
{
  if (!gParDebugRuleMgr)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugRuleMgr", &unk_26286C229, &unk_26286C229, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugRuleMgr = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugRuleMgr);
  }

  if (!gParDebugShowRuleAndStateInfoOnLoad)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugShowRuleAndStateInfoOnLoad", &unk_26286C229, &unk_26286C229, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugShowRuleAndStateInfoOnLoad = v3;
    v4 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v4, &gParDebugShowRuleAndStateInfoOnLoad);
  }
}

void Rule::~Rule(Rule *this)
{
  *(this + 64) = 0;
  *(this + 130) = 0;
  *(this + 4) = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 136);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 112);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 96);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 80);
  DgnIArray<Utterance *>::~DgnIArray(this + 64);
  DgnArray<DgnArray<ParseToken>>::releaseAll(this + 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 32);
  DgnString::~DgnString((this + 8));
}

void Rule::Rule(Rule *this, const Rule *a2)
{
  DgnString::DgnString((this + 8));
  *(this + 2) = 0u;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  Rule::operator=(this, a2);
}

void sub_26258AAB4(_Unwind_Exception *a1)
{
  v4 = v3;
  DgnPrimArray<unsigned int>::~DgnPrimArray(v4);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 112);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 96);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 80);
  DgnIArray<Utterance *>::~DgnIArray(v1 + 64);
  DgnArray<DgnArray<ParseToken>>::releaseAll(v1 + 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  DgnString::~DgnString((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t Rule::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  DgnString::operator=((a1 + 8), (a2 + 8));
  *(a1 + 24) = *(a2 + 24);
  DgnPrimArray<int>::copyArraySlice(a1 + 32, (a2 + 32), 0, *(a2 + 40));
  DgnArray<DgnArray<ParseToken>>::copyArraySlice(a1 + 48, (a2 + 48), 0, *(a2 + 56));
  DgnArray<RuleDesc>::copyArraySlice(a1 + 64, (a2 + 64), 0, *(a2 + 72));
  DgnPrimArray<int>::copyArraySlice(a1 + 80, (a2 + 80), 0, *(a2 + 88));
  DgnPrimArray<unsigned short>::copyArraySlice(a1 + 96, (a2 + 96), 0, *(a2 + 104));
  DgnPrimArray<unsigned short>::copyArraySlice(a1 + 112, (a2 + 112), 0, *(a2 + 120));
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 130) = *(a2 + 130);
  DgnPrimArray<int>::copyArraySlice(a1 + 136, (a2 + 136), 0, *(a2 + 144));
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  return a1;
}

uint64_t DgnArray<DgnArray<ParseToken>>::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v4 = *(a1 + 8);
  if (v4 != *(a2 + 8))
  {
    return 0;
  }

  v5 = v4 + 1;
  v6 = 16 * v4 - 16;
  do
  {
    v7 = --v5 < 1;
    if (v5 < 1)
    {
      break;
    }

    v8 = v6 - 16;
    v9 = DgnArray<ParseToken>::operator==(*a1 + v6, (*a2 + v6));
    v6 = v8;
  }

  while ((v9 & 1) != 0);
  return v7;
}

uint64_t Rule::readRule(Rule *this, DgnStream *a2, unsigned int *a3)
{
  v48 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = 0;
  v40 = 0;
  v41 = 0;
  readObject(a2, this, a3);
  readObject(a2, (this + 8), a3);
  readObject(a2, this + 6, a3);
  if (*(a2 + 35) != 1 || (readObject<StateSpec>(a2, &v48, a3), (*(a2 + 35) & 1) == 0))
  {
    readObject<unsigned int>(a2, this + 32, a3);
  }

  readObject<DgnArray<ParseToken>>(a2, this + 48, a3);
  readObject<RuleDesc>(a2, this + 64, a3);
  if (((*(a2 + 35) != 1 || (readObject<StateSpec>(a2, &v46, a3), (*(a2 + 35) & 1) == 0)) && (readObject<unsigned int>(a2, this + 80, a3), (*(a2 + 35) & 1) == 0) || (readObject<RuleSpec>(a2, &v44, a3), (*(a2 + 35) & 1) == 0)) && (readObject<unsigned short>(a2, this + 96, a3), (*(a2 + 35) & 1) == 0) || (readObject<RuleSpec>(a2, &v42, a3), (*(a2 + 35) & 1) == 0))
  {
    readObject<unsigned short>(a2, this + 112, a3);
  }

  readObject(a2, this + 128, a3);
  readObject(a2, this + 129, a3);
  readObject(a2, this + 130, a3);
  if (*(a2 + 35) != 1 || (readObject<StateSpec>(a2, &v40, a3), (*(a2 + 35) & 1) == 0))
  {
    readObject<unsigned int>(a2, this + 136, a3);
  }

  readObject(a2, this + 76, a3);
  readObject(a2, this + 160, a3);
  readObject(a2, this + 161, a3);
  readObject(a2, this + 162, a3);
  if (*(a2 + 35) == 1)
  {
    v6 = v49;
    v7 = *(this + 11);
    v8 = v49;
    if (v49 > v7)
    {
      DgnPrimArray<unsigned int>::reallocElts(this + 32, v49 - v7, 0);
      v8 = v49;
    }

    *(this + 10) = v6;
    if (v8)
    {
      v9 = 0;
      v10 = *(this + 4);
      v11 = (v48 + 4);
      do
      {
        v12 = *v11;
        v11 += 2;
        *(v10 + 4 * v9++) = v12;
      }

      while (v9 < v49);
    }

    v13 = v47;
    v14 = *(this + 23);
    v15 = v47;
    if (v47 > v14)
    {
      DgnPrimArray<unsigned int>::reallocElts(this + 80, v47 - v14, 0);
      v15 = v47;
    }

    *(this + 22) = v13;
    if (v15)
    {
      v16 = 0;
      v17 = *(this + 10);
      v18 = (v46 + 4);
      do
      {
        v19 = *v18;
        v18 += 2;
        *(v17 + 4 * v16++) = v19;
      }

      while (v16 < v47);
    }

    v20 = v45;
    v21 = *(this + 27);
    LODWORD(v22) = v45;
    if (v45 > v21)
    {
      DgnPrimArray<short>::reallocElts(this + 96, v45 - v21, 0);
      LODWORD(v22) = v45;
    }

    *(this + 26) = v20;
    if (v22)
    {
      v23 = *(this + 12);
      v22 = v22;
      v24 = (v44 + 2);
      do
      {
        v25 = *v24;
        v24 += 2;
        *v23++ = v25;
        --v22;
      }

      while (v22);
    }

    v26 = v43;
    v27 = *(this + 31);
    LODWORD(v28) = v43;
    if (v43 > v27)
    {
      DgnPrimArray<short>::reallocElts(this + 112, v43 - v27, 0);
      LODWORD(v28) = v43;
    }

    *(this + 30) = v26;
    if (v28)
    {
      v29 = *(this + 14);
      v28 = v28;
      v30 = (v42 + 2);
      do
      {
        v31 = *v30;
        v30 += 2;
        *v29++ = v31;
        --v28;
      }

      while (v28);
    }

    v32 = v41;
    v33 = *(this + 37);
    v34 = v41;
    if (v41 > v33)
    {
      DgnPrimArray<unsigned int>::reallocElts(this + 136, v41 - v33, 0);
      v34 = v41;
    }

    *(this + 36) = v32;
    if (v34)
    {
      v35 = 0;
      v36 = *(this + 17);
      v37 = (v40 + 4);
      do
      {
        v38 = *v37;
        v37 += 2;
        *(v36 + 4 * v35++) = v38;
      }

      while (v35 < v41);
    }
  }

  *(this + 154) = 0;
  *(this + 79) = 0;
  *(this + 163) = 0;
  DgnIArray<Utterance *>::~DgnIArray(&v40);
  DgnIArray<Utterance *>::~DgnIArray(&v42);
  DgnIArray<Utterance *>::~DgnIArray(&v44);
  DgnIArray<Utterance *>::~DgnIArray(&v46);
  return DgnIArray<Utterance *>::~DgnIArray(&v48);
}

void sub_26258B064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  DgnIArray<Utterance *>::~DgnIArray(&a9);
  DgnIArray<Utterance *>::~DgnIArray(&a11);
  DgnIArray<Utterance *>::~DgnIArray(&a13);
  DgnIArray<Utterance *>::~DgnIArray(&a15);
  DgnIArray<Utterance *>::~DgnIArray(v15 - 48);
  _Unwind_Resume(a1);
}

uint64_t readObject<StateSpec>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v11 = 0;
  result = readObject(a1, &v11, a3);
  v7 = v11;
  v8 = *(a2 + 12);
  if (v11 <= v8)
  {
    *(a2 + 8) = v11;
    if (!v7)
    {
      return result;
    }
  }

  else
  {
    DgnPrimArray<unsigned long long>::reallocElts(a2, v11 - v8, 0);
    *(a2 + 8) = v7;
  }

  v9 = 0;
  v10 = 0;
  do
  {
    result = readObject(a1, *a2 + v9, a3);
    ++v10;
    v9 += 8;
  }

  while (v10 < *(a2 + 8));
  return result;
}

unint64_t readObject<DgnArray<ParseToken>>(uint64_t a1, uint64_t a2, _DWORD *a3)
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
      result = DgnIArray<Utterance *>::~DgnIArray(*a2 + v11);
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
      result = readObject<ParseToken>(a1, *a2 + v15, a3);
      ++v16;
      v15 += 16;
    }

    while (v16 < *(a2 + 8));
  }

  return result;
}

uint64_t readObject<RuleDesc>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v11 = 0;
  result = readObject(a1, &v11, a3);
  v7 = v11;
  v8 = *(a2 + 12);
  if (v11 <= v8)
  {
    *(a2 + 8) = v11;
    if (!v7)
    {
      return result;
    }
  }

  else
  {
    DgnArray<RuleDesc>::reallocElts(a2, v11 - v8, 0);
    *(a2 + 8) = v7;
  }

  v9 = 0;
  v10 = 0;
  do
  {
    result = RuleDesc::readObject((*a2 + v9), a1, a3);
    ++v10;
    v9 += 12;
  }

  while (v10 < *(a2 + 8));
  return result;
}

unint64_t readObject<RuleSpec>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v14 = 0;
  result = readObject(a1, &v14, a3);
  v7 = v14;
  v8 = *(a2 + 12);
  if (v14 > v8)
  {
    result = DgnPrimArray<unsigned int>::reallocElts(a2, v14 - v8, 0);
  }

  v9 = *(a2 + 8);
  if (v9 < v7)
  {
    v10 = v7 - v9;
    v11 = *a2 + 4 * v9 + 2;
    do
    {
      *(v11 - 2) = 127;
      v11 += 4;
      --v10;
    }

    while (v10);
  }

  *(a2 + 8) = v7;
  if (v7)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      result = readObject(a1, (*a2 + v12), a3);
      ++v13;
      v12 += 4;
    }

    while (v13 < *(a2 + 8));
  }

  return result;
}

void *DgnArray<DgnArray<ParseToken>>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 16 * v2 - 16;
    do
    {
      DgnIArray<Utterance *>::~DgnIArray(*a1 + v3);
      v3 -= 16;
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

uint64_t writeObject(DgnStream *a1, const Rule *a2, unsigned int *a3)
{
  writeObject(a1, a2, a3);
  writeObject(a1, a2 + 8, a3);
  writeObject(a1, a2 + 6, a3);
  writeObject<unsigned int>(a1, a2 + 32, a3);
  writeObject<DgnArray<ParseToken>>(a1, a2 + 48, a3);
  writeObject<RuleDesc>(a1, a2 + 64, a3);
  writeObject<unsigned int>(a1, a2 + 80, a3);
  writeObject<unsigned short>(a1, a2 + 96, a3);
  writeObject<unsigned short>(a1, a2 + 112, a3);
  writeObject(a1, a2 + 128, a3);
  writeObject(a1, a2 + 129, a3);
  writeObject(a1, a2 + 130, a3);
  writeObject<unsigned int>(a1, a2 + 136, a3);
  writeObject(a1, a2 + 76, a3);
  writeObject(a1, a2 + 160, a3);
  writeObject(a1, a2 + 161, a3);

  return writeObject(a1, a2 + 162, a3);
}

uint64_t writeObject<DgnArray<ParseToken>>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = writeObject<ParseToken>(a1, *a2 + v7, a3);
      ++v8;
      v7 += 16;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

uint64_t writeObject<RuleDesc>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = RuleDesc::writeObject((*a2 + v7), a1, a3);
      ++v8;
      v7 += 12;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

uint64_t sizeObject<DgnArray<ParseToken>>(uint64_t a1, int a2)
{
  v10[0] = 0;
  v10[1] = 0;
  sizeObject(v11, 2);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v4 = 12;
  }

  else
  {
    v4 = 16;
  }

  if (a2 == 3)
  {
    v4 = 0;
  }

  else if ((a2 & 0xFFFFFFFE) != 2)
  {
    v5 = *(a1 + 8);
    v6 = v4;
    if (v5 >= 1)
    {
      v7 = v5 + 1;
      v8 = 16 * v5 - 16;
      v6 = v4;
      do
      {
        v6 += sizeObject<ParseToken>(*a1 + v8, a2);
        --v7;
        v8 -= 16;
      }

      while (v7 > 1);
    }

    if (a2)
    {
      v4 = v6;
    }

    else
    {
      v4 = v6 + v4 * (*(a1 + 12) - *(a1 + 8));
    }
  }

  DgnIArray<Utterance *>::~DgnIArray(v10);
  return v4;
}

void sub_26258B87C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DgnIArray<Utterance *>::~DgnIArray(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<RuleDesc>(uint64_t a1, int a2)
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
    v4 = 12 * v3;
    if (v3 <= 0)
    {
      v4 = 0;
    }

    v2 += v4;
    if (!a2)
    {
      v2 += 12 * (*(a1 + 12) - v3);
    }
  }

  return v2;
}

uint64_t sizeObject<unsigned short>(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    v3 = *(a1 + 8);
    if (v3 <= *(a1 + 12))
    {
      return 0;
    }

    else
    {
      return 2 * v3;
    }
  }

  else
  {
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      result = 12;
    }

    else
    {
      result = 16;
    }

    if (a2 != 2)
    {
      v6 = *(a1 + 8);
      v5 = *(a1 + 12);
      v7 = result + 2 * (v6 - 1) + 2;
      if (v6 <= 0)
      {
        v7 = result;
      }

      if (!a2)
      {
        v7 += 2 * (v5 - v6);
      }

      if (v5 >= v6)
      {
        return v7;
      }
    }
  }

  return result;
}

uint64_t RuleDesc::writeObject(unsigned int *a1, uint64_t a2, _DWORD *a3)
{
  v6 = *a1;
  if (v6 > 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = dword_26286C294[v6];
  }

  v17 = v7;
  writeObject(a2, &v17, a3);
  result = writeObject(a2, a1 + 1, a3);
  v9 = *a1;
  if (*a1 <= 1)
  {
    if (!v9)
    {
      v13 = a1[2];
      if (v13 < 4)
      {
        v14 = v13 + 1;
      }

      else
      {
        v14 = 0;
      }

      v16 = v14;
      v10 = &v16;
      return writeObject(a2, v10, a3);
    }

    if (v9 != 1)
    {
      return result;
    }

    goto LABEL_11;
  }

  switch(v9)
  {
    case 2:
      return writeObject(a2, a1 + 4, a3);
    case 3:
      v11 = a1[2];
      if (v11 < 4)
      {
        v12 = v11 + 1;
      }

      else
      {
        v12 = 0;
      }

      v15 = v12;
      v10 = &v15;
      return writeObject(a2, v10, a3);
    case 4:
LABEL_11:
      v10 = (a1 + 2);
      return writeObject(a2, v10, a3);
  }

  return result;
}

uint64_t RuleDesc::readObject(unsigned __int16 *a1, uint64_t a2, _DWORD *a3)
{
  v15 = 0;
  readObject(a2, &v15, a3);
  v6 = 0;
  if ((v15 - 2) <= 4)
  {
    v6 = dword_26286C2A8[v15 - 2];
  }

  *a1 = v6;
  result = readObject(a2, a1 + 1, a3);
  if (*(a2 + 35) == 1)
  {
    v14 = 0;
    result = readObject(a2, &v14, a3);
  }

  v8 = *a1;
  if (*a1 <= 1)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        return result;
      }

      return readObject(a2, a1 + 2, a3);
    }

    v13 = 0;
    result = readObject(a2, &v13, a3);
    v9 = v13;
  }

  else
  {
    if (v8 == 2)
    {
      return readObject(a2, a1 + 4, a3);
    }

    if (v8 != 3)
    {
      if (v8 != 4)
      {
        return result;
      }

      return readObject(a2, a1 + 2, a3);
    }

    v12 = 0;
    result = readObject(a2, &v12, a3);
    v9 = v12;
  }

  v10 = v9 - 2;
  v11 = v9 - 1;
  if (v10 >= 3)
  {
    v11 = 0;
  }

  *(a1 + 2) = v11;
  return result;
}

void RuleMgr::RuleMgr(RuleMgr *this, Voc *a2)
{
  *(this + 1) = 0u;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *this = 0u;
  *(this + 9) = a2;
  *(this + 32) = *(a2 + 84);
  v3 = MemChunkAlloc(0x110uLL, 0);
  *(this + 10) = EnvMgr::EnvMgr(v3, 2u);
  if (!*(this + 3))
  {
    DgnArray<Rule>::reallocElts(this, 1, 0);
  }

  *(this + 16) = 0;
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 11) = 0;
  RuleMgr::newRule(this, 0, v4, v5, v6, v7, v8, v9);
  *(this + 11) = 0;
}

void sub_26258BC60(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  DgnArray<Rule>::releaseAll(v1);
  _Unwind_Resume(a1);
}

uint64_t RuleMgr::newRule(RuleMgr *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  StateMgr::verifyStateFull(*(*(this + 9) + 56), a2, 1, 1, a5, a6, a7, a8);
  v12 = *(this + 6);
  if (v12)
  {
    v13 = *(*(this + 2) + 2 * (v12 - 1));
    *(this + 6) = v12 - 1;
  }

  else
  {
    v13 = *(this + 16);
    if (v13 == 0xFFFF)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 2492, "voc/rulemgr", 14, "%s", v10, v11, &errStr_voc_rulemgr_E_TOO_MANY_RULES);
      v13 = *(this + 16);
    }
  }

  DgnString::DgnString(v22);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  memset(v28, 0, sizeof(v28));
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v32 = 65793;
  v21 = v13;
  v22[2] = 0;
  v22[4] = a2;
  if (v13)
  {
    StateMgr::addChildRule(*(*(this + 9) + 56), a2, v13, v14, v15, v16, v17, v18);
    v28[16] = 1;
    ++*(this + 9);
  }

  if (v12)
  {
    Rule::operator=(*this + 168 * v13, &v21);
  }

  else
  {
    v19 = *(this + 2);
    if (v19 == *(this + 3))
    {
      DgnArray<Rule>::reallocElts(this, 1, 1);
      v19 = *(this + 2);
    }

    Rule::Rule((*this + 168 * v19), &v21);
    ++*(this + 2);
    ++*(this + 16);
  }

  *(this + 11) ^= RuleMgr::computeOneRuleIdNameChecksum(this, v13);
  Rule::~Rule(&v21);
  return v13;
}

{
  if (*(this + 16) <= a3)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 2553, "voc/rulemgr", 19, "%u %u", a7, a8, *(this + 16));
  }

  v11 = *(this + 6);
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = 0;
  while (*(*(this + 2) + 2 * v12) != a3)
  {
    if (v11 == ++v12)
    {
      goto LABEL_9;
    }
  }

  if ((v12 & 0x80000000) != 0)
  {
LABEL_9:
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 2555, "voc/rulemgr", 20, "%u", a7, a8, a3);
  }

  StateMgr::verifyStateFull(*(*(this + 9) + 56), a2, 1, 1, a5, a6, a7, a8);
  v13 = *(this + 6);
  if (v13)
  {
    v14 = *(this + 6);
    v15 = *(this + 2);
    while (*v15 != a3)
    {
      ++v15;
      if (!--v14)
      {
        goto LABEL_16;
      }
    }

    v16 = v13 - 1;
    *v15 = *(*(this + 2) + 2 * v16);
    *(this + 6) = v16;
  }

LABEL_16:
  DgnString::DgnString(v24);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  memset(v30, 0, sizeof(v30));
  v26 = 0u;
  v25 = 0u;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  v34 = 65793;
  v23 = a3;
  v24[2] = 0;
  v24[4] = a2;
  StateMgr::addChildRule(*(*(this + 9) + 56), a2, a3, v17, v18, v19, v20, v21);
  v30[16] = 1;
  ++*(this + 9);
  Rule::operator=(*this + 168 * a3, &v23);
  *(this + 11) ^= RuleMgr::computeOneRuleIdNameChecksum(this, a3);
  Rule::~Rule(&v23);
  return a3;
}

void sub_26258BE3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Rule::~Rule(va);
  _Unwind_Resume(a1);
}

void RuleMgr::~RuleMgr(EnvMgr **this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  RuleMgr::emptyAllRuleDescsNoRebuild(this, a2, a3, a4, a5, a6, a7, a8);
  if (*(this + 2))
  {
    v11 = 0;
    do
    {
      v12 = *this;
      v13 = v11;
      if (*(*this + 42 * v11 + 26))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 123, "voc/rulemgr", 12, "%.500s %d %.500s %d", v9, v10, "delete");
        v12 = *this;
      }

      if (*(v12 + 84 * v13 + 77))
      {
        v14 = *(v12 + 84 * v13 + 77);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 123, "voc/rulemgr", 12, "%.500s %d %.500s %d", v9, v10, "delete");
        v12 = *this;
      }

      if (*(v12 + 84 * v13 + 78))
      {
        v15 = *(v12 + 84 * v13 + 78);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 123, "voc/rulemgr", 12, "%.500s %d %.500s %d", v9, v10, "delete");
        v12 = *this;
      }

      if (*(v12 + 84 * v13 + 79))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 123, "voc/rulemgr", 12, "%.500s %d %.500s %d", v9, v10, "delete");
      }

      v11 = v13 + 1;
    }

    while (*(this + 2) > (v13 + 1));
  }

  DgnDelete<EnvMgr>(this[10]);
  this[10] = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 6));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 2));
  DgnArray<Rule>::releaseAll(this);
}

uint64_t RuleMgr::emptyAllRuleDescsNoRebuild(RuleMgr *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12[0] = 0;
  v12[1] = 0;
  v8 = *(this + 2);
  if (v8)
  {
    for (i = 0; i < v8; ++i)
    {
      if (*(*this + 168 * i + 128))
      {
        RuleMgr::setDesc(this, i, v12, a4, a5, a6, a7, a8);
        v8 = *(this + 2);
      }
    }
  }

  return DgnIArray<Utterance *>::~DgnIArray(v12);
}

EnvMgr *DgnDelete<EnvMgr>(EnvMgr *result)
{
  if (result)
  {
    EnvMgr::~EnvMgr(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t RuleMgr::setDesc(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  RuleMgr::verifyRule(a1, a2, 1, a4, a5, a6, a7, a8);
  RuleMgr::verifyNewDesc(a1, a3, v11, v12, v13, v14, v15, v16);
  v19 = *a1;
  if (*(*a1 + 168 * a2 + 154))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 123, "voc/rulemgr", 12, "%.500s %d %.500s %d", v17, v18, "setDesc");
    v19 = *a1;
  }

  if (*(v19 + 168 * a2 + 156))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 123, "voc/rulemgr", 12, "%.500s %d %.500s %d", v17, v18, "setDesc");
    v19 = *a1;
  }

  if (*(v19 + 168 * a2 + 158))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 123, "voc/rulemgr", 12, "%.500s %d %.500s %d", v17, v18, "setDesc");
  }

  HashKEV<unsigned int,unsigned int,CWIDScope>::HashKEV(v120, 0, 16);
  v118 = 0;
  v119 = 0;
  RuleMgr::verifyRule(a1, a2, 1, v20, v21, v22, v23, v24);
  v30 = *a1 + 168 * a2;
  if (*(v30 + 72))
  {
    v31 = 0;
    do
    {
      v32 = (*(v30 + 64) + 12 * v31);
      v33 = *v32;
      if (*v32 == 4)
      {
        v47 = v32[2] & 0xFFFFFF | (*(a1 + 64) << 25);
        LODWORD(v125[0]) = v47;
        if (v123)
        {
          v48 = (-1640531527 * v47) >> -v123;
        }

        else
        {
          v48 = 0;
        }

        v49 = v124[v48];
        if (v49)
        {
          while (*(v49 + 2) != v47 || *(v49 + 3) != v47)
          {
            v49 = *v49;
            if (!v49)
            {
              goto LABEL_31;
            }
          }
        }

        else
        {
LABEL_31:
          HashKEV<unsigned int,unsigned int,CWIDScope>::add(v120, v125);
        }
      }

      else if (v33 == 2)
      {
        v40 = *a1 + 168 * a2;
        v41 = *(v40 + 120);
        if (v41)
        {
          v42 = *(v32 + 4);
          v43 = *(v40 + 112);
          v44 = *(v40 + 120);
          v45 = 0xFFFFFFFFLL;
          while (1)
          {
            v46 = *v43++;
            if (v46 == v42)
            {
              break;
            }

            --v45;
            if (!--v44)
            {
              goto LABEL_40;
            }
          }

          if (v45)
          {
            v50 = *(v40 + 120);
            v51 = *(v40 + 112);
            while (*v51 != v42)
            {
              ++v51;
              if (!--v50)
              {
                goto LABEL_38;
              }
            }

            v52 = v41 - 1;
            *v51 = *(*(v40 + 112) + 2 * v52);
            *(v40 + 120) = v52;
LABEL_38:
            RuleMgr::removeIncludingRule(a1, v42, a2, 0);
          }
        }
      }

      else if (v33 == 1)
      {
        v34 = *(a1 + 72);
        v35 = *(v34 + 56);
        if (v35)
        {
          if (StateMgr::isStateInRule(*(v34 + 56), v32[2], a2, v25, v26, v27, v28, v29))
          {
            StateMgr::unincludeStateInRule(v35, *(*(v30 + 64) + 12 * v31 + 8), a2);
            v36 = *a1 + 168 * a2;
            v37 = *(v36 + 144);
            if (v37)
            {
              v38 = *(v36 + 144);
              v39 = *(v36 + 136);
              while (*v39 != *(*(v30 + 64) + 12 * v31 + 8))
              {
                ++v39;
                if (!--v38)
                {
                  goto LABEL_40;
                }
              }

              v53 = v37 - 1;
              *v39 = *(*(v36 + 136) + 4 * v53);
              *(v36 + 144) = v53;
            }
          }
        }
      }

LABEL_40:
      ++v31;
    }

    while (v31 < *(v30 + 72));
  }

  LODWORD(v119) = 0;
  if (HIDWORD(v119) < v121)
  {
    v125[0] = 0;
    HIDWORD(v119) = realloc_array(v118, v125, 4 * v121, 0, 0, 1) >> 2;
    v118 = v125[0];
  }

  v54 = v122;
  if (!v122)
  {
    LODWORD(v56) = 0;
    v55 = 0;
LABEL_50:
    v57 = v119;
    while (v56 < v54)
    {
      v58 = *(v55 + 3);
      if (v57 == HIDWORD(v119))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v118, 1, 1);
        v57 = v119;
      }

      *(v118 + v57) = v58;
      v57 = v119 + 1;
      LODWORD(v119) = v119 + 1;
      v59 = *v55;
      v54 = v122;
      if (!*v55)
      {
        v56 = (v56 + 1);
        if (v56 >= v122)
        {
          v59 = v55;
        }

        else
        {
          v59 = v124[v56];
          if (!v59)
          {
            v60 = &v124[v56 + 1];
            v61 = ~v56 + v122;
            while (v61)
            {
              v62 = *v60++;
              v59 = v62;
              LODWORD(v56) = v56 + 1;
              --v61;
              if (v62)
              {
                goto LABEL_62;
              }
            }

            goto LABEL_64;
          }
        }
      }

LABEL_62:
      v55 = v59;
    }

    goto LABEL_64;
  }

  v55 = *v124;
  if (*v124)
  {
    LODWORD(v56) = 0;
    goto LABEL_50;
  }

  v56 = 0;
  while (v122 - 1 != v56)
  {
    v55 = v124[++v56];
    if (v55)
    {
      goto LABEL_50;
    }
  }

  v57 = v119;
LABEL_64:
  if (v57)
  {
    for (i = 0; i < v57; ++i)
    {
      v64 = *(*(a1 + 72) + 48);
      if (v64)
      {
        WordList::removeIncludingRuleRef(v64, *(v118 + i) & 0xFFFFFF);
        v57 = v119;
      }

      --*(*a1 + 168 * a2 + 152);
    }
  }

  HashKEV<unsigned int,unsigned int,CWIDScope>::removeAll(v120);
  LODWORD(v119) = 0;
  DgnArray<RuleDesc>::copyArraySlice(*a1 + 168 * a2 + 64, a3, 0, *(a3 + 8));
  if (*(a3 + 8))
  {
    v70 = 0;
    do
    {
      v71 = *a3;
      v72 = (*a3 + 12 * v70);
      v73 = *v72;
      if (*v72 == 4)
      {
        v94 = v72[2] & 0xFFFFFF | (*(a1 + 64) << 25);
        LODWORD(v125[0]) = v94;
        if (v123)
        {
          v95 = (-1640531527 * v94) >> -v123;
        }

        else
        {
          v95 = 0;
        }

        v96 = v124[v95];
        if (v96)
        {
          while (*(v96 + 2) != v94 || *(v96 + 3) != v94)
          {
            v96 = *v96;
            if (!v96)
            {
              goto LABEL_95;
            }
          }
        }

        else
        {
LABEL_95:
          HashKEV<unsigned int,unsigned int,CWIDScope>::add(v120, v125);
        }
      }

      else if (v73 == 2)
      {
        if (*(v72 + 4) == a2)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 2881, "voc/rulemgr", 11, "%d", v68, v69, a2);
          v71 = *a3;
        }

        v86 = *(v71 + 12 * v70 + 8);
        v87 = *a1;
        v88 = *a1 + 168 * a2;
        v89 = *(v88 + 120);
        if (!v89)
        {
          goto LABEL_97;
        }

        v90 = *(v88 + 112);
        v91 = *(v88 + 120);
        v92 = 0xFFFFFFFFLL;
        while (1)
        {
          v93 = *v90++;
          if (v93 == v86)
          {
            break;
          }

          --v92;
          if (!--v91)
          {
            goto LABEL_97;
          }
        }

        if (!v92)
        {
LABEL_97:
          if (v89 == *(v88 + 124))
          {
            DgnPrimArray<short>::reallocElts(v88 + 112, 1, 1);
            v89 = *(v88 + 120);
            v87 = *a1;
          }

          *(*(v88 + 112) + 2 * v89) = v86;
          *(v88 + 120) = v89 + 1;
          if (*(v87 + 168 * a2 + 104))
          {
            VocMgr::beginRuleStateRecursiveOperation(VocMgr::smpVocMgr);
            RuleMgr::verifyRuleNotRecursivelyIncluded(a1, v86, a2, v97, v98, v99, v100, v101);
            VocMgr::endRuleStateRecursiveOperation(VocMgr::smpVocMgr);
          }

          RuleMgr::addIncludingRule(a1, v86, a2, 0);
        }
      }

      else if (v73 == 1)
      {
        v74 = *(*(a1 + 72) + 56);
        v75 = v72[2];
        if (!StateMgr::getLeftWBAllowed(v74, v75, 1, v65, v66, v67, v68, v69) || !StateMgr::getRightWBAllowed(v74, v75, 1, v76, v77, v78, v79, v80))
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 2869, "voc/rulemgr", 21, "%d %d", v79, v80, a2);
        }

        if (!StateMgr::isStateInRule(v74, v75, a2, v81, v82, v83, v79, v80))
        {
          StateMgr::includeStateInRule(v74, v75, a2);
          v84 = *a1 + 168 * a2;
          v85 = *(v84 + 144);
          if (v85 == *(v84 + 148))
          {
            DgnPrimArray<unsigned int>::reallocElts(v84 + 136, 1, 1);
            v85 = *(v84 + 144);
          }

          *(*(v84 + 136) + 4 * v85) = v75;
          ++*(v84 + 144);
        }
      }

      ++v70;
    }

    while (v70 < *(a3 + 8));
  }

  LODWORD(v119) = 0;
  if (HIDWORD(v119) < v121)
  {
    v125[0] = 0;
    HIDWORD(v119) = realloc_array(v118, v125, 4 * v121, 0, 0, 1) >> 2;
    v118 = v125[0];
  }

  v102 = v122;
  if (v122)
  {
    v103 = *v124;
    if (!*v124)
    {
      v104 = 0;
      while (v122 - 1 != v104)
      {
        v103 = v124[++v104];
        if (v103)
        {
          goto LABEL_113;
        }
      }

      v105 = v119;
      goto LABEL_127;
    }
  }

  else
  {
    v103 = 0;
  }

  LODWORD(v104) = 0;
LABEL_113:
  v105 = v119;
  while (v104 < v102)
  {
    v106 = *(v103 + 3);
    if (v105 == HIDWORD(v119))
    {
      DgnPrimArray<unsigned int>::reallocElts(&v118, 1, 1);
      v105 = v119;
    }

    *(v118 + v105) = v106;
    v105 = v119 + 1;
    LODWORD(v119) = v119 + 1;
    v107 = *v103;
    v102 = v122;
    if (!*v103)
    {
      v104 = (v104 + 1);
      if (v104 >= v122)
      {
        v107 = v103;
      }

      else
      {
        v107 = v124[v104];
        if (!v107)
        {
          v108 = &v124[v104 + 1];
          v109 = ~v104 + v122;
          while (v109)
          {
            v110 = *v108++;
            v107 = v110;
            LODWORD(v104) = v104 + 1;
            --v109;
            if (v110)
            {
              goto LABEL_125;
            }
          }

          break;
        }
      }
    }

LABEL_125:
    v103 = v107;
  }

LABEL_127:
  if (v105)
  {
    v111 = 0;
    do
    {
      WordList::addIncludingRuleRef(*(*(a1 + 72) + 48), *(v118 + v111) & 0xFFFFFF);
      ++*(*a1 + 168 * a2 + 152);
      ++v111;
    }

    while (v111 < v119);
  }

  HashKEV<unsigned int,unsigned int,CWIDScope>::removeAll(v120);
  LODWORD(v119) = 0;
  RuleMgr::killStatesOfRule(a1, a2, 0, v112, v113, v114, v115, v116);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v118);
  return HashKEV<unsigned int,unsigned int,CWIDScope>::~HashKEV(v120);
}

void sub_26258CA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  HashKEV<unsigned int,unsigned int,CWIDScope>::~HashKEV(va1);
  _Unwind_Resume(a1);
}

uLong RuleMgr::computeOneRuleIdNameChecksum(RuleMgr *this, unsigned int a2)
{
  v10 = a2;
  v4 = computeCRC32(0, 0, 0);
  v5 = *this + 168 * a2;
  if (*(v5 + 16))
  {
    v6 = *(v5 + 8);
  }

  else
  {
    v6 = &unk_26286C229;
  }

  v7 = strlen(v6);
  v8 = computeCRC32(v4, v6, v7);
  return computeCRC32(v8, &v10, 1);
}

uLong RuleMgr::computeRuleIdNameChecksum(uLong this)
{
  *(this + 44) = 0;
  v1 = *(this + 32);
  if (v1 >= 2)
  {
    v2 = this;
    v3 = 1;
    v4 = 296;
    do
    {
      if (*(*v2 + v4) == 1)
      {
        this = RuleMgr::computeOneRuleIdNameChecksum(v2, v3);
        *(v2 + 44) ^= this;
        v1 = *(v2 + 32);
      }

      ++v3;
      v4 += 168;
    }

    while (v3 < v1);
  }

  return this;
}

uLong RuleMgr::loadRuleMgr(RuleMgr *this, DFile *a2, DFileChecksums *a3, int a4, BOOL *a5, unsigned int a6)
{
  result = DFile::subFileExists(a2, 0x4Eu);
  if (!result)
  {
    return result;
  }

  *(this + 32) = a6;
  *(this + 9) = *(**VocMgr::smpVocMgr + 8 * a6);
  if (a4)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 866, "voc/rulemgr", 17, "%s", v13, v14, &unk_26286C229);
  }

  v28 = 0;
  v15 = 1;
  v16 = OpenAndReadMrecHeader(a2, 0x4Eu, 1, "MRRULE!?", &v28 + 1, &v28);
  v19 = v16;
  *(v16 + 35) = 0;
  v20 = v28;
  v21 = HIDWORD(v28) == 19 && v28 == 28;
  v22 = v21;
  if (v21)
  {
    *a5 = 1;
    *(v16 + 35) = 1;
    v23 = 19;
    v20 = 28;
  }

  else if (v28 == 0x160000001DLL)
  {
    *a5 = 1;
    *(v16 + 35) = 1;
    v23 = 22;
  }

  else
  {
    if (v28 == 0x180000001ELL)
    {
      *(v16 + 35) = 1;
    }

    else
    {
      if (v28 != 0x180000001FLL)
      {
        if (*(a2 + 6))
        {
          v24 = *(a2 + 2);
        }

        else
        {
          v24 = &unk_26286C229;
        }

        MrecHeaderCheckVersions(v24, "MRRULE!?", HIDWORD(v28), v28, 0x18u, 0x20u);
        v15 = 0;
        v20 = v28;
        v23 = HIDWORD(v28);
        goto LABEL_24;
      }

      v15 = 0;
      *(v16 + 35) = 1;
    }

    v23 = 24;
  }

LABEL_24:
  MrecHeaderCheckLatestVersionIfShared(a2, "MRRULE!?", v23, v20, 24, 32, v17, v18);
  v27 = 0;
  readObject<Rule>(v19, this, &v27);
  readObject<unsigned short>(v19, this + 16, &v27);
  readObject(v19, this + 16, &v27);
  readObject(v19, this + 9, &v27);
  if ((v22 & 1) == 0)
  {
    readObject(v19, this + 11, &v27);
  }

  if (*(v19 + 35) == 1)
  {
    v26 = 0;
    readObject(v19, &v26, &v27);
  }

  EnvMgr::loadEnvMgrFromStream(*(this + 10), a2, v19, &v27, 0);
  readObjectChecksumAndVerify(v19, v27);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x4Eu, v27);
  result = DgnDelete<DgnStream>(v19);
  if ((v22 | v15) == 1)
  {
    return RuleMgr::computeRuleIdNameChecksum(this);
  }

  return result;
}

void readObject<Rule>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v16 = 0;
  readObject(a1, &v16, a3);
  v6 = v16;
  v7 = *(a2 + 12);
  if (v16 > v7)
  {
    DgnArray<Rule>::reallocElts(a2, v16 - v7, 0);
  }

  v8 = *(a2 + 8);
  v9 = v8;
  if (v6 >= v8)
  {
    if (v6 > v8)
    {
      v11 = v6 - v8;
      v12 = 168 * v8 + 160;
      do
      {
        v13 = (*a2 + v12);
        DgnString::DgnString((v13 - 38));
        *(v13 - 80) = 0;
        *(v13 - 36) = 0;
        *(v13 - 34) = 0;
        *(v13 - 8) = 0u;
        *(v13 - 7) = 0u;
        *(v13 - 6) = 0u;
        *(v13 - 5) = 0u;
        *(v13 - 4) = 0u;
        *(v13 - 3) = 0u;
        *(v13 - 33) = 0;
        *(v13 - 2) = 0;
        *(v13 - 1) = 0;
        *(v13 - 3) = 0;
        v12 += 168;
        *v13 = 65793;
        --v11;
      }

      while (v11);
    }
  }

  else if (v8 > v6)
  {
    v10 = 168 * v8 - 168;
    do
    {
      --v9;
      Rule::~Rule((*a2 + v10));
      v10 -= 168;
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
      Rule::readRule((*a2 + v14), a1, a3);
      ++v15;
      v14 += 168;
    }

    while (v15 < *(a2 + 8));
  }
}

void (***RuleMgr::saveRuleMgr(void (***this)(void), DFile *a2, DFileChecksums *a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8))(void)
{
  v8 = this + 9;
  if (*(this + 9))
  {
    v12 = this;
    if (a4)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 970, "voc/rulemgr", 16, "%s", a7, a8, &errStr_voc_rulemgr_E_MIXED_TEXT_AND_BINARY_SUBFILES);
    }

    v13 = OpenAndWriteMrecHeader(a2, 0x4Eu, a5, "MRRULE!?", 24, 32);
    v15 = 0;
    writeObject<Rule>(v13, v12, &v15);
    writeObject<unsigned short>(v13, v12 + 16, &v15);
    writeObject(v13, (v12 + 32), &v15);
    writeObject(v13, v8, &v15);
    writeObject(v13, (v12 + 44), &v15);
    EnvMgr::saveEnvMgrToStream(*(v12 + 80), v13, &v15, 1, 0);
    writeObjectChecksum(v13, &v15);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x4Eu, v15);
    return DgnDelete<DgnStream>(v13);
  }

  return this;
}

uint64_t writeObject<Rule>(DgnStream *a1, uint64_t a2, unsigned int *a3)
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
      v7 += 168;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

void RuleMgr::printSize(RuleMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 997, &v98);
  if (v99)
  {
    v16 = v98;
  }

  else
  {
    v16 = &unk_26286C229;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26286C229, a3, &unk_26286C229, v16);
  DgnString::~DgnString(&v98);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26286C229);
  v21 = sizeObject<Rule>(this, 0);
  v22 = sizeObject<Rule>(this, 1);
  v23 = sizeObject<Rule>(this, 3);
  v24 = (a3 + 1);
  v95 = a3;
  v25 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 999, &v98);
  if (v99)
  {
    v30 = v98;
  }

  else
  {
    v30 = &unk_26286C229;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, v27, v28, v29, v24, &unk_26286C229, v25, v25, v30, v21, v22, v23);
  DgnString::~DgnString(&v98);
  *a4 += v21;
  *a5 += v22;
  *a6 += v23;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v31 = 12;
  }

  else
  {
    v31 = 16;
  }

  v32 = *(this + 6);
  v33 = *(this + 7);
  if (v33 >= v32)
  {
    v34 = 0;
    if (v32 > 0)
    {
      v31 += 2 * (v32 - 1) + 2;
    }

    v35 = v31 + 2 * (v33 - v32);
  }

  else
  {
    v34 = 2 * v32;
    v35 = v31;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 999, &v98);
  if (v99)
  {
    v40 = v98;
  }

  else
  {
    v40 = &unk_26286C229;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v36, v37, v38, v39, v24, &unk_26286C229, v25, v25, v40, v35, v31, v34);
  DgnString::~DgnString(&v98);
  *a4 += v35;
  *a5 += v31;
  *a6 += v34;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 999, &v98);
  if (v99)
  {
    v45 = v98;
  }

  else
  {
    v45 = &unk_26286C229;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v41, v42, v43, v44, v24, &unk_26286C229, v25, v25, v45, 2, 2, 0);
  DgnString::~DgnString(&v98);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 999, &v98);
  if (v99)
  {
    v50 = v98;
  }

  else
  {
    v50 = &unk_26286C229;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v46, v47, v48, v49, v24, &unk_26286C229, v25, v25, v50, 4, 4, 0);
  DgnString::~DgnString(&v98);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 999, &v98);
  if (v99)
  {
    v55 = v98;
  }

  else
  {
    v55 = &unk_26286C229;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v51, v52, v53, v54, v24, &unk_26286C229, v25, v25, v55, 2, 2, 0);
  DgnString::~DgnString(&v98);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 999, &v98);
  if (v99)
  {
    v60 = v98;
  }

  else
  {
    v60 = &unk_26286C229;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v56, v57, v58, v59, v24, &unk_26286C229, v25, v25, v60, 4, 4, 0);
  DgnString::~DgnString(&v98);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 1000, &v98);
  if (v99)
  {
    v65 = v98;
  }

  else
  {
    v65 = &unk_26286C229;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v61, v62, v63, v64, v24, &unk_26286C229, v25, v25, v65, 2, 2, 0);
  DgnString::~DgnString(&v98);
  *a4 += 2;
  *a5 += 2;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v66 = 4;
  }

  else
  {
    v66 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 1001, &v98);
  if (v99)
  {
    v71 = v98;
  }

  else
  {
    v71 = &unk_26286C229;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v67, v68, v69, v70, v24, &unk_26286C229, v25, v25, v71, v66, v66, 0);
  DgnString::~DgnString(&v98);
  *a4 += v66;
  *a5 += v66;
  v72 = *(this + 10);
  if (v72)
  {
    v97 = 0;
    v98 = 0;
    v96 = 0;
    EnvMgr::printSize(v72, 0xFFFFFFFFLL, v24, &v98, &v97, &v96);
    *a4 += v98;
    *a5 += v97;
    *a6 += v96;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v73 = 4;
  }

  else
  {
    v73 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 1003, &v98);
  if (v99)
  {
    v78 = v98;
  }

  else
  {
    v78 = &unk_26286C229;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v74, v75, v76, v77, v24, &unk_26286C229, v25, v25, v78, v73, v73, 0);
  DgnString::~DgnString(&v98);
  *a4 += v73;
  *a5 += v73;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v79 = *(this + 14);
    v80 = *(this + 15);
    if (v80 >= v79)
    {
      v81 = 0;
      if (v79 <= 0)
      {
        v82 = 16;
      }

      else
      {
        v82 = 2 * (v79 - 1) + 18;
      }

      v83 = v82 + 2 * (v80 - v79);
    }

    else
    {
      v81 = 2 * v79;
      v82 = 16;
      v83 = 16;
    }

    getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 1009, &v98);
    if (v99)
    {
      v88 = v98;
    }

    else
    {
      v88 = &unk_26286C229;
    }

    xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v84, v85, v86, v87, v24, &unk_26286C229, v25, v25, v88, v83, v82, v81);
    DgnString::~DgnString(&v98);
    *a4 += v83;
    *a5 += v82;
    *a6 += v81;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 1011, &v98);
  if (v99)
  {
    v93 = v98;
  }

  else
  {
    v93 = &unk_26286C229;
  }

  v94 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v89, v90, v91, v92, v95, &unk_26286C229, (35 - v95), (35 - v95), v93, *a4, *a5, *a6);
  DgnString::~DgnString(&v98);
}

void sub_26258D7D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<Rule>(uint64_t a1, int a2)
{
  DgnString::DgnString(v10);
  v4 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  memset(v16, 0, sizeof(v16));
  v9 = 0;
  v10[2] = 0;
  v10[4] = 0;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v20 = 65793;
  if (a2 != 3)
  {
    v4 = (gShadowDiagnosticShowIdealizedObjectSizes & 1) != 0 ? 12 : 16;
    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v5 = *(a1 + 8);
      if (v5 >= 1)
      {
        v6 = v5 + 1;
        v7 = 168 * v5 - 168;
        do
        {
          v4 += sizeObject(*a1 + v7, a2);
          --v6;
          v7 -= 168;
        }

        while (v6 > 1);
      }

      if (!a2)
      {
        v4 += 168 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  Rule::~Rule(&v9);
  return v4;
}

void sub_26258D930(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Rule::~Rule(va);
  _Unwind_Resume(a1);
}

uint64_t RuleMgr::verifyRule(RuleMgr *this, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 && *(this + 2) > a2)
  {
    v8 = *(*this + 168 * a2 + 128);
    if (v8)
    {
      return v8 & 1;
    }
  }

  else
  {
    v8 = 0;
  }

  if (a3)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 3288, "voc/rulemgr", 1, "%d", a7, a8, a2);
  }

  return v8 & 1;
}

RuleMgr *RuleMgr::addBuiltRef(RuleMgr *this, unsigned int a2, int a3)
{
  v3 = *this;
  v4 = *this + 168 * a2;
  if (*(v4 + 120))
  {
    v6 = this;
    v7 = 0;
    v8 = (v4 + 112);
    do
    {
      v10 = *(*v8 + 2 * v7);
      v11 = v3 + 168 * v10;
      v13 = *(v11 + 130);
      v12 = (v11 + 130);
      if ((v13 & 1) == 0)
      {
        *v12 = 1;
        this = RuleMgr::addBuiltRef(v6, v10, a3 + 1);
        v3 = *v6;
      }

      ++v7;
      v14 = v3 + 168 * a2;
      v8 = (v14 + 112);
    }

    while (v7 < *(v14 + 120));
  }

  return this;
}

RuleMgr *RuleMgr::removeBuiltRef(RuleMgr *this, unsigned int a2, int a3)
{
  v3 = *this;
  v4 = *this + 168 * a2;
  if (*(v4 + 120))
  {
    v6 = this;
    v7 = 0;
    v8 = (v4 + 112);
    do
    {
      v10 = *(*v8 + 2 * v7);
      v11 = v3 + 168 * v10;
      if (*(v11 + 130) == 1)
      {
        v12 = *(v11 + 104);
        if (!v12)
        {
          goto LABEL_12;
        }

        v13 = *(v11 + 96);
        if ((*(v3 + 168 * *v13 + 130) & 1) == 0 && (*(v3 + 168 * *v13 + 129) & 1) == 0)
        {
          v14 = 1;
          do
          {
            v15 = v14;
            if (v12 == v14)
            {
              break;
            }

            v16 = v13[v14];
            if (*(v3 + 168 * v13[v15] + 130))
            {
              break;
            }

            v17 = *(v3 + 168 * v16 + 129);
            v14 = v15 + 1;
          }

          while (v17 != 1);
          if (v15 >= v12)
          {
LABEL_12:
            *(v11 + 130) = 0;
            this = RuleMgr::removeBuiltRef(v6, v10, a3 + 1);
            v3 = *v6;
          }
        }
      }

      ++v7;
      v18 = v3 + 168 * a2;
      v8 = (v18 + 112);
    }

    while (v7 < *(v18 + 120));
  }

  return this;
}

RuleMgr *RuleMgr::removeIncludingRule(RuleMgr *this, unsigned int a2, int a3, int a4)
{
  v4 = *this;
  v5 = *this + 168 * a2;
  v6 = *(v5 + 104);
  if (!v6)
  {
    v10 = *(v5 + 130);
    v9 = (v5 + 130);
    if ((v10 & 1) == 0)
    {
      return this;
    }

    v11 = v9;
LABEL_19:
    *v11 = 0;
    return RuleMgr::removeBuiltRef(this, a2, a4 + 1);
  }

  v7 = *(v5 + 104);
  v8 = *(v5 + 96);
  while (*v8 != a3)
  {
    ++v8;
    if (!--v7)
    {
      goto LABEL_9;
    }
  }

  *v8 = *(*(v5 + 96) + 2 * --v6);
  *(v5 + 104) = v6;
LABEL_9:
  v11 = (v5 + 130);
  if (*(v5 + 130))
  {
    if (!v6)
    {
      goto LABEL_19;
    }

    v12 = *(v5 + 96);
    if ((*(v4 + 168 * *v12 + 130) & 1) == 0 && (*(v4 + 168 * *v12 + 129) & 1) == 0)
    {
      v13 = 1;
      do
      {
        v14 = v13;
        if (v6 == v13)
        {
          break;
        }

        v15 = v12[v13];
        if (*(v4 + 168 * v12[v14] + 130))
        {
          break;
        }

        v16 = *(v4 + 168 * v15 + 129);
        v13 = v14 + 1;
      }

      while (v16 != 1);
      if (v14 >= v6)
      {
        goto LABEL_19;
      }
    }
  }

  return this;
}

RuleMgr *RuleMgr::addIncludingRule(RuleMgr *this, unsigned int a2, unsigned int a3, int a4)
{
  v7 = this;
  v8 = *this;
  v10 = *this + 168 * a2;
  v11 = *(v10 + 104);
  if (v11 == *(v10 + 108))
  {
    this = DgnPrimArray<short>::reallocElts(v10 + 96, 1, 1);
    v11 = *(v10 + 104);
    v8 = *v7;
  }

  *(*(v10 + 96) + 2 * v11) = a3;
  *(v10 + 104) = v11 + 1;
  v12 = v8 + 168 * a2;
  v14 = *(v12 + 130);
  v13 = (v12 + 130);
  if ((v14 & 1) == 0 && *(v8 + 168 * a3 + 130) == 1)
  {
    *v13 = 1;

    return RuleMgr::addBuiltRef(v7, a2, a4 + 1);
  }

  return this;
}

RuleMgr *RuleMgr::killStatesOfRule(RuleMgr *this, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(*this + 168 * a2 + 130) == 1)
  {
    v12 = *this + 168 * a2;
    if (*(v12 + 104))
    {
      v13 = 0;
      v14 = (v12 + 96);
      do
      {
        RuleMgr::killStatesOfRule(this, *(*v14 + 2 * v13++), a3 + 1);
        v15 = *this + 168 * a2;
        v14 = (v15 + 96);
      }

      while (v13 < *(v15 + 104));
    }
  }

  result = RuleMgr::verifyRule(this, a2, 1, a4, a5, a6, a7, a8);
  v22 = *this;
  if (*(*this + 168 * a2 + 129) == 1)
  {
    v23 = v22 + 168 * a2;
    v24 = v23 + 80;
    v25 = *(v23 + 88);
    if (v25 <= 0xE)
    {
      if (!v25)
      {
LABEL_15:
        if (*v24)
        {
          MemChunkFree(*v24, 0);
          *v24 = 0;
          v22 = *this;
        }

        *(v24 + 8) = 0;
        v31 = v22 + 168 * a2;
        v34 = *(v31 + 32);
        v33 = (v31 + 32);
        v32 = v34;
        if (v34)
        {
          MemChunkFree(v32, 0);
          *v33 = 0;
          v22 = *this;
        }

        v33[1] = 0;
        DgnArray<DgnArray<ParseToken>>::releaseAll(v22 + 168 * a2 + 48);
        *(*this + 168 * a2 + 129) = 0;

        return RuleMgr::removeBuiltRef(this, a2, a3 + 1);
      }

      v27 = 0;
      do
      {
        StateMgr::setEmptyStateTransition(*(*(this + 9) + 56), *(*v24 + 4 * v27++), 0, v17, v18, v19, v20, v21);
        v22 = *this;
        v28 = *this + 168 * a2;
        v24 = v28 + 80;
        v26 = *(v28 + 88);
      }

      while (v27 < v26);
    }

    else
    {
      StateMgr::fastEmptyTransitionsForKill(*(*(this + 9) + 56), v24);
      v22 = *this;
      LODWORD(v26) = *(*this + 168 * a2 + 88);
    }

    v24 = v22 + 168 * a2 + 80;
    if (v26)
    {
      v29 = 0;
      do
      {
        StateMgr::killState(*(*(this + 9) + 56), *(*v24 + 4 * v29++), 0, v17, v18, v19, v20, v21);
        v22 = *this;
        v30 = *this + 168 * a2;
        v24 = v30 + 80;
      }

      while (v29 < *(v30 + 88));
    }

    goto LABEL_15;
  }

  return result;
}

RuleMgr *RuleMgr::invalidateAllStates(RuleMgr *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 2);
  if (v8)
  {
    v9 = this;
    for (i = 0; i < v8; ++i)
    {
      if (*(*v9 + 168 * i + 128))
      {
        this = RuleMgr::killStatesOfRule(v9, i, 0, a4, a5, a6, a7, a8);
        v8 = *(v9 + 2);
      }
    }
  }

  return this;
}

void RuleMgr::preAllocToEnsureRuleId(RuleMgr *this, unsigned int a2)
{
  *(this + 20) = a2 - 1;
  v4 = *(this + 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {
    DgnArray<Rule>::reallocElts(this, v6, 0);
  }

  v7 = *(this + 2);
  if (a2 >= v7)
  {
    if (a2 > v7)
    {
      v9 = a2 - v7;
      v10 = 168 * v7 + 160;
      do
      {
        v11 = (*this + v10);
        DgnString::DgnString((v11 - 38));
        *(v11 - 80) = 0;
        *(v11 - 36) = 0;
        *(v11 - 34) = 0;
        *(v11 - 8) = 0u;
        *(v11 - 7) = 0u;
        *(v11 - 6) = 0u;
        *(v11 - 5) = 0u;
        *(v11 - 4) = 0u;
        *(v11 - 3) = 0u;
        *(v11 - 33) = 0;
        *(v11 - 2) = 0;
        *(v11 - 1) = 0;
        *(v11 - 3) = 0;
        v10 += 168;
        *v11 = 65793;
        --v9;
      }

      while (v9);
    }
  }

  else if (v7 > a2)
  {
    v8 = 168 * v7 - 168;
    do
    {
      --v7;
      Rule::~Rule((*this + v8));
      v8 -= 168;
    }

    while (v7 > a2);
  }

  *(this + 2) = a2;
  *(this + 16) = a2;
  if (a2 >= 2)
  {
    v12 = *(this + 6);
    v13 = 1;
    do
    {
      if (v12 == *(this + 7))
      {
        DgnPrimArray<short>::reallocElts(this + 16, 1, 1);
        v12 = *(this + 6);
      }

      *(*(this + 2) + 2 * v12++) = v13;
      *(this + 6) = v12;
      ++v13;
    }

    while (v13 < *(this + 16));
  }
}

void sub_26258E424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  Rule::~Rule(va);
  _Unwind_Resume(a1);
}

unint64_t RuleMgr::verifyRuleNotRecursivelyIncluded(unint64_t this, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *this;
  v9 = *this + 168 * a2;
  v11 = *(v9 + 163);
  v10 = (v9 + 163);
  if ((v11 & 1) == 0)
  {
    v13 = a2;
    v14 = this;
    *v10 = 1;
    v16 = *(this + 56);
    if (v16 == *(this + 60))
    {
      this = DgnPrimArray<short>::reallocElts(this + 48, 1, 1);
      v16 = *(v14 + 56);
      v8 = *v14;
    }

    *(*(v14 + 48) + 2 * v16) = v13;
    *(v14 + 56) = v16 + 1;
    v17 = v8 + 168 * a2;
    if (*(v17 + 120))
    {
      v18 = 0;
      v19 = (v17 + 112);
      do
      {
        if (*(*v19 + 2 * v18) == a3)
        {
          v21 = *(v14 + 64);
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 2637, "voc/rulemgr", 13, "%d %d %d %d", a7, a8, a3);
          v8 = *v14;
        }

        this = RuleMgr::verifyRuleNotRecursivelyIncluded(*(*(v14 + 72) + 64), *(*(v8 + 168 * a2 + 112) + 2 * v18++), a3);
        v8 = *v14;
        v20 = *v14 + 168 * a2;
        v19 = (v20 + 112);
      }

      while (v18 < *(v20 + 120));
    }
  }

  return this;
}

unsigned __int16 *RuleMgr::endUsingTempMarks(RuleMgr *this)
{
  v2 = *(this + 14);
  result = *(this + 6);
  if (v2)
  {
    v4 = *this;
    v5 = result;
    do
    {
      v6 = *v5++;
      *(v4 + 168 * v6 + 163) = 0;
      --v2;
    }

    while (v2);
    goto LABEL_6;
  }

  if (result)
  {
LABEL_6:
    result = MemChunkFree(result, 0);
    *(this + 6) = 0;
  }

  *(this + 7) = 0;
  return result;
}

uint64_t RuleMgr::verifyNewDesc(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8))
  {
    v9 = result;
    if (**a2 != 3)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 2709, "voc/rulemgr", 8, "%s", a7, a8, &errStr_voc_rulemgr_E_NO_START_TOKEN);
    }

    v29 = 0;
    v30 = 0;
    v27 = 0;
    v28 = 0;
    DgnPrimArray<unsigned int>::reallocElts(&v29, 1, 1);
    v10 = v30;
    *(v29 + v30) = 0;
    LODWORD(v30) = v10 + 1;
    DgnPrimArray<unsigned int>::reallocElts(&v27, 1, 1);
    *(v27 + v28) = 0;
    LODWORD(v28) = v28 + 1;
    if (*(a2 + 8))
    {
      v17 = 0;
      v18 = 2;
      do
      {
        v19 = *a2;
        v20 = *(*a2 + v18 * 4 - 8);
        if (v20 <= 1)
        {
          if (!v20)
          {
            v25 = (v30 - 1);
            if (v30 == 1)
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 2724, "voc/rulemgr", 7, "%s", v15, v16, &errStr_voc_rulemgr_E_COUNT_MISMATCH);
              v19 = *a2;
            }

            v26 = v19[v18];
            if (v26 != *(v29 + v25))
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 2726, "voc/rulemgr", 6, "%s", v15, v16, &errStr_voc_rulemgr_E_TYPE_MISMATCH);
              v26 = *(*a2 + v18 * 4);
            }

            if ((v26 & 0xFFFFFFFE) == 2 && *(v27 + v25) != 1)
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 2732, "voc/rulemgr", 9, "%s", v15, v16, &errStr_voc_rulemgr_E_SINGLE_IN_REPEAT_OR_OPTIONAL);
            }

            if (HIDWORD(v28) < v25)
            {
              v31 = 0;
              HIDWORD(v28) = realloc_array(v27, &v31, 4 * v25, 4 * v28, 4 * v28, 1) >> 2;
              v27 = v31;
            }

            LODWORD(v28) = v25;
            if (HIDWORD(v30) < v25)
            {
              v31 = 0;
              HIDWORD(v30) = realloc_array(v29, &v31, 4 * v25, 4 * v30, 4 * v30, 1) >> 2;
              v29 = v31;
            }

            LODWORD(v30) = v25;
            goto LABEL_35;
          }

          if (v20 == 1)
          {
            StateMgr::verifyState(*(*(v9 + 9) + 56), v19[v18], v11, v12, v13, v14, v15, v16);
            goto LABEL_17;
          }
        }

        else
        {
          switch(v20)
          {
            case 2:
              RuleMgr::verifyRule(v9, LOWORD(v19[v18]), 1, v12, v13, v14, v15, v16);
              goto LABEL_17;
            case 3:
              v21 = v19[v18];
              v22 = v30;
              if (v30 == HIDWORD(v30))
              {
                DgnPrimArray<unsigned int>::reallocElts(&v29, 1, 1);
                v22 = v30;
              }

              *(v29 + v22) = v21;
              LODWORD(v30) = v22 + 1;
              v23 = v27;
              ++*(v27 + (v28 - 1));
              v24 = v28;
              if (v28 == HIDWORD(v28))
              {
                DgnPrimArray<unsigned int>::reallocElts(&v27, 1, 1);
                v24 = v28;
                v23 = v27;
              }

              v23[v24] = 0;
              LODWORD(v28) = v28 + 1;
              break;
            case 4:
              WordList::verifyVisible(*(*(v9 + 9) + 48), v19[v18], v11, v12, v13, v14, v15, v16);
LABEL_17:
              ++*(v27 + (v28 - 1));
              break;
          }
        }

LABEL_35:
        ++v17;
        v18 += 3;
      }

      while (v17 < *(a2 + 8));
    }

    if (v30 != 1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 2773, "voc/rulemgr", 7, "%s", v15, v16, &errStr_voc_rulemgr_E_COUNT_MISMATCH);
    }

    if (*v27 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 2774, "voc/rulemgr", 10, "%s", v15, v16, &errStr_voc_rulemgr_E_SINGLE_IN_RULE);
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(&v27);
    return DgnPrimArray<unsigned int>::~DgnPrimArray(&v29);
  }

  return result;
}

void sub_26258EA04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  _Unwind_Resume(a1);
}

uint64_t HashKEV<unsigned int,unsigned int,CWIDScope>::add(uint64_t result, int *a2)
{
  v3 = result;
  v4 = *(result + 12);
  if (*(result + 8) >= v4 >> 1)
  {
    result = HashKEV<unsigned int,unsigned int,CWIDScope>::upSize(result, 2 * v4);
  }

  v5 = *a2;
  v6 = *(v3 + 16);
  if (v6)
  {
    v7 = (-1640531527 * *a2) >> -v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v3 + 80);
  v9 = *(v3 + 32);
  if (!v9)
  {
    result = DgnPool::addChunk((v3 + 24));
    v9 = *(v3 + 32);
  }

  v10 = (v8 + 8 * v7);
  *(v3 + 32) = *v9;
  *(v9 + 8) = 0;
  v11 = *a2;
  *(v9 + 8) = v5;
  *(v9 + 12) = v11;
  ++*(v3 + 8);
  if (*(v3 + 20))
  {
    *v9 = *v10;
  }

  else
  {
    *v9 = 0;
    v12 = *v10;
    if (*v10)
    {
      do
      {
        v10 = v12;
        v12 = *v12;
      }

      while (v12);
    }
  }

  *v10 = v9;
  return result;
}

uint64_t HashKEV<unsigned int,unsigned int,CWIDScope>::removeAll(uint64_t result)
{
  v1 = result;
  v2 = *(result + 88);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(v1 + 80);
      v5 = *(v4 + 8 * i);
      if (v5)
      {
        do
        {
          v6 = *v5;
          v7 = *(v1 + 96);
          if (v7)
          {
            result = v7(v5 + 12);
          }

          *v5 = *(v1 + 32);
          *(v1 + 32) = v5;
          v5 = v6;
        }

        while (v6);
        v4 = *(v1 + 80);
        v2 = *(v1 + 88);
      }

      *(v4 + 8 * i) = 0;
    }
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t RuleMgr::getHandle(RuleMgr *this, unsigned int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(*(this + 9) + 56);
  StateMgr::verifyStateFull(v11, a2, 1, 1, a5, a6, a7, a8);
  ChildRules = StateMgr::getChildRules(v11, a2, v12, v13, v14, v15, v16, v17);
  if (!StateMgr::getChildRuleCount(v11, a2, v19, v20, v21, v22, v23, v24))
  {
    return 0;
  }

  v31 = 0;
  while (1)
  {
    v32 = *(*ChildRules + 2 * v31);
    v33 = *this + 168 * v32;
    v34 = *(v33 + 16);
    v35 = *(v33 + 8);
    v36 = (v34 ? v35 : &unk_26286C229);
    if (*v36 && !strcmp(v36, a3))
    {
      break;
    }

    if (++v31 >= StateMgr::getChildRuleCount(v11, a2, v25, v26, v27, v28, v29, v30))
    {
      return 0;
    }
  }

  return v32;
}

uint64_t RuleMgr::setName(RuleMgr *this, unsigned int a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  RuleMgr::verifyRule(this, a2, 1, a4, a5, a6, a7, a8);
  RuleMgr::verifyRule(this, a2, 1, v11, v12, v13, v14, v15);
  v16 = *(*this + 168 * a2 + 24);
  result = RuleMgr::getHandle(this, v16, a3, v17, v18, v19, v20, v21);
  if (result != a2)
  {
    if (result)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 2965, "voc/rulemgr", 2, "%d", v23, v24, v16);
    }

    *(this + 11) ^= RuleMgr::computeOneRuleIdNameChecksum(this, a2);
    DgnString::operator=((*this + 168 * a2 + 8), a3);
    result = RuleMgr::computeOneRuleIdNameChecksum(this, a2);
    *(this + 11) ^= result;
  }

  return result;
}

void *RuleMgr::getName(RuleMgr *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  RuleMgr::verifyRule(this, a2, 1, a4, a5, a6, a7, a8);
  v10 = *this + 168 * a2;
  if (*(v10 + 16))
  {
    return *(v10 + 8);
  }

  else
  {
    return &unk_26286C229;
  }
}

RuleMgr *RuleMgr::setLMAllowed(RuleMgr *this, unsigned int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  RuleMgr::verifyRule(this, a2, 1, a4, a5, a6, a7, a8);
  *(*this + 168 * a2 + 160) = a3;

  return RuleMgr::killStatesOfRule(this, a2, 0, v11, v12, v13, v14, v15);
}

RuleMgr *RuleMgr::setCoartAllowed(RuleMgr *this, unsigned int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  RuleMgr::verifyRule(this, a2, 1, a4, a5, a6, a7, a8);
  *(*this + 168 * a2 + 161) = a3;

  return RuleMgr::killStatesOfRule(this, a2, 0, v11, v12, v13, v14, v15);
}

RuleMgr *RuleMgr::setPrefilteringAllowed(RuleMgr *this, unsigned int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  RuleMgr::verifyRule(this, a2, 1, a4, a5, a6, a7, a8);
  *(*this + 168 * a2 + 162) = a3;

  return RuleMgr::killStatesOfRule(this, a2, 0, v11, v12, v13, v14, v15);
}

void RuleMgr::fixAlteredState(RuleMgr *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(*this + 168 * a2 + 130) == 1)
  {
    v12 = *this + 168 * a2;
    if (*(v12 + 104))
    {
      v13 = 0;
      v14 = (v12 + 96);
      do
      {
        RuleMgr::fixAlteredState(this, *(*v14 + 2 * v13++), a3);
        v15 = *this + 168 * a2;
        v14 = (v15 + 96);
      }

      while (v13 < *(v15 + 104));
    }
  }

  RuleMgr::verifyRule(this, a2, 1, a4, a5, a6, a7, a8);
  v21 = *this;
  if (*(*this + 168 * a2 + 129) == 1)
  {
    v22 = v21 + 168 * a2;
    if (*(v22 + 88))
    {
      v23 = 0;
      v24 = *(*(this + 9) + 56);
      v25 = (v22 + 80);
      do
      {
        v26 = *(*v25 + 4 * v23);
        if (*(*(v24 + 8) + 4 * v26) == a3)
        {
          StateMgr::setStateCharacteristicsForRuleState(v24, v26, a3, v16, v17, v18, v19, v20);
          v21 = *this;
        }

        ++v23;
        v27 = v21 + 168 * a2;
        v25 = (v27 + 80);
      }

      while (v23 < *(v27 + 88));
    }
  }
}

void RuleMgr::alteredStateInRule(RuleMgr *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  IncludingRules = StateMgr::getIncludingRules(*(*(this + 9) + 56), a2, a3, a4, a5, a6, a7, a8);
  if (*(IncludingRules + 8))
  {
    v16 = IncludingRules;
    v17 = 0;
    do
    {
      RuleMgr::fixAlteredState(this, *(*v16 + 2 * v17++), a2, v11, v12, v13, v14, v15);
    }

    while (v17 < *(v16 + 8));
  }
}

uint64_t DgnArray<DgnArray<ParseToken>>::copyArraySlice(uint64_t result, void *a2, unsigned int a3, unsigned int a4)
{
  v7 = result;
  v8 = *(result + 8);
  if (v8 >= 1)
  {
    v9 = 16 * v8 - 16;
    do
    {
      result = DgnIArray<Utterance *>::~DgnIArray(*v7 + v9);
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
    result = DgnArray<ParseToken>::copyArraySlice(v15, v14, 0, *(v14 + 8));
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
        result = DgnIArray<Utterance *>::~DgnIArray(*v7 + v17);
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

unint64_t DgnArray<RuleDesc>::copyArraySlice(unint64_t result, void *a2, unsigned int a3, unsigned int a4)
{
  v7 = result;
  *(result + 8) = 0;
  v8 = *(result + 12);
  if (a4 <= v8)
  {
    if (!a4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    result = DgnArray<RuleDesc>::reallocElts(result, a4 - v8, 0);
  }

  v9 = *(v7 + 8);
  v10 = a4;
  do
  {
    v11 = *a2 + 12 * a3;
    v12 = *v7 + 12 * v9;
    *v12 = *v11;
    *(v12 + 8) = *(v11 + 8);
    v9 = *(v7 + 8) + 1;
    *(v7 + 8) = v9;
    ++a3;
    --v10;
  }

  while (v10);
LABEL_6:
  *(v7 + 8) = a4;
  return result;
}

unint64_t DgnArray<RuleDesc>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 12 * v6, 12 * v5, 12 * v5, 1);
  *(a1 + 12) = result / 0xC;
  *a1 = v8;
  return result;
}

unint64_t DgnPrimArray<unsigned short>::copyArraySlice(unint64_t result, uint64_t *a2, unsigned int a3, unsigned int a4)
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
    result = DgnPrimArray<short>::reallocElts(result, a4 - v8, 0);
    *(v7 + 8) = a4;
  }

  v9 = *a2;
  v10 = *v7;
  v11 = a4;
  do
  {
    *v10++ = *(v9 + 2 * a3++);
    --v11;
  }

  while (v11);
  return result;
}

uint64_t DgnArray<ParseToken>::operator==(uint64_t a1, uint64_t *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = *(a1 + 8);
  if (v2 != *(a2 + 2))
  {
    return 0;
  }

  v3 = *a2;
  v4 = v2 + 1;
  v5 = 4 * v2 - 2;
  do
  {
    v6 = --v4 < 1;
    if (v4 < 1)
    {
      break;
    }

    v7 = *a1 + v5;
    if (*(v7 - 2) != *(v3 + v5 - 2))
    {
      break;
    }

    if (*(v7 - 1) != *(v3 + v5 - 1))
    {
      break;
    }

    v8 = *(*a1 + v5);
    v9 = *(v3 + v5);
    v5 -= 4;
  }

  while (v8 == v9);
  return v6;
}

uint64_t readObject<ParseToken>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v11 = 0;
  result = readObject(a1, &v11, a3);
  v7 = v11;
  v8 = *(a2 + 12);
  if (v11 <= v8)
  {
    *(a2 + 8) = v11;
    if (!v7)
    {
      return result;
    }
  }

  else
  {
    DgnPrimArray<unsigned int>::reallocElts(a2, v11 - v8, 0);
    *(a2 + 8) = v7;
  }

  v9 = 0;
  v10 = 0;
  do
  {
    result = readObject(a1, *a2 + v9, a3);
    ++v10;
    v9 += 4;
  }

  while (v10 < *(a2 + 8));
  return result;
}

uint64_t writeObject<ParseToken>(uint64_t a1, uint64_t a2, _DWORD *a3)
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

uint64_t sizeObject<ParseToken>(uint64_t a1, int a2)
{
  v4 = sizeObject(v11, 2);
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

void *DgnArray<Rule>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 168 * v2 - 168;
    do
    {
      Rule::~Rule((*a1 + v3));
      v3 -= 168;
    }

    while (v3 != -168);
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

unint64_t DgnArray<Rule>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 168 * v6, 168 * v5, 168 * v5, 1);
  *(a1 + 12) = result / 0xA8;
  *a1 = v8;
  return result;
}

unint64_t DgnArray<ParseToken>::copyArraySlice(unint64_t result, uint64_t *a2, unsigned int a3, unsigned int a4)
{
  v7 = result;
  *(result + 8) = 0;
  v8 = *(result + 12);
  if (a4 <= v8)
  {
    if (!a4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    result = DgnPrimArray<unsigned int>::reallocElts(result, a4 - v8, 0);
  }

  v9 = *a2;
  v10 = *v7;
  v11 = a4;
  v12 = *(v7 + 8);
  do
  {
    *(v10 + 4 * v12++) = *(v9 + 4 * a3++);
    --v11;
  }

  while (v11);
LABEL_6:
  *(v7 + 8) = a4;
  return result;
}

uint64_t HashKEV<unsigned int,unsigned int,CWIDScope>::HashKEV(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_287523A28;
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

void sub_26258F83C(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void HashKEV<unsigned int,unsigned int,CWIDScope>::~HashKEV(uint64_t a1)
{
  HashKEV<unsigned int,unsigned int,CWIDScope>::~HashKEV(a1);

  JUMPOUT(0x26672B1B0);
}

uint64_t HashKEV<unsigned int,unsigned int,CWIDScope>::computeDepth(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  result = 0;
  v5 = *(a1 + 80);
  do
  {
    v6 = *(v5 + 8 * v3);
    if (v6)
    {
      v7 = 0;
      do
      {
        v6 = *v6;
        ++v7;
      }

      while (v6);
      if (v7 <= result)
      {
        result = result;
      }

      else
      {
        result = v7;
      }
    }

    ++v3;
  }

  while (v3 != v1);
  return result;
}

uint64_t *HashKEV<unsigned int,unsigned int,CWIDScope>::initBuckets(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 3);
  v3 = *(result + 22);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    result = MemChunkAlloc(8 * v2, 0);
    v1[10] = result;
    *(v1 + 22) = v2;
    v3 = v2;
  }

  else if (!v3)
  {
    return result;
  }

  v5 = 0;
  v6 = 8 * v3;
  do
  {
    *(v1[10] + v5) = 0;
    v5 += 8;
  }

  while (v6 != v5);
  return result;
}

uint64_t HashKEV<unsigned int,unsigned int,CWIDScope>::~HashKEV(uint64_t a1)
{
  *a1 = &unk_287523A28;
  if (*(a1 + 8))
  {
    HashKEV<unsigned int,unsigned int,CWIDScope>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  return MrecInitModule_sdpres_sdapi();
}

uint64_t HashKEV<unsigned int,unsigned int,CWIDScope>::upSize(uint64_t a1, int a2)
{
  v17 = 0;
  RoundUpToPowerOf2(a2, &v17);
  v15 = 0;
  v16 = 0;
  DgnIFixArray<BucketLinkKEV<unsigned int> *>::copyArraySlice(&v15, (a1 + 80), 0, *(a1 + 88));
  v4 = *(a1 + 80);
  if (v4)
  {
    MemChunkFree(v4, 0);
    *(a1 + 80) = 0;
  }

  *(a1 + 88) = 0;
  v5 = v17;
  *(a1 + 12) = a2;
  *(a1 + 16) = v5;
  HashKEV<unsigned int,unsigned int,CWIDScope>::initBuckets(a1);
  v6 = v16;
  if (v16)
  {
    v7 = 0;
    v8 = v17;
    v9 = 32 - v17;
    do
    {
      v10 = *(v15 + 8 * v7);
      if (v10)
      {
        do
        {
          v11 = *v10;
          v12 = (-1640531527 * *(v10 + 2)) >> v9;
          if (!v8)
          {
            v12 = 0;
          }

          v13 = *(a1 + 80);
          *v10 = *(v13 + 8 * v12);
          *(v13 + 8 * v12) = v10;
          v10 = v11;
        }

        while (v11);
      }

      ++v7;
    }

    while (v7 != v6);
  }

  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v15);
}

void sub_26258FABC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va);
  _Unwind_Resume(a1);
}

uint64_t *DgnIFixArray<BucketLinkKEV<unsigned int> *>::copyArraySlice(uint64_t *result, void *a2, unsigned int a3, unsigned int a4)
{
  v7 = result;
  if (!a4 || *(result + 2))
  {
    if (!a4)
    {
      return result;
    }
  }

  else
  {
    result = MemChunkAlloc(8 * a4, 0);
    *v7 = result;
    *(v7 + 2) = a4;
  }

  v8 = 0;
  v9 = a4;
  do
  {
    *(*v7 + v8) = *(*a2 + 8 * a3++);
    v8 += 8;
    --v9;
  }

  while (v9);
  return result;
}

void PhnMgr::PhnMgr(PhnMgr *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  v2 = (this + 8);
  DgnString::DgnString((this + 24));
  DgnString::DgnString((this + 40));
  *this = 0;
  v3 = *(this + 4);
  if (v3 >= 1)
  {
    v4 = 16 * v3 - 16;
    do
    {
      DgnString::~DgnString((*v2 + v4));
      v4 -= 16;
    }

    while (v4 != -16);
  }

  *(this + 4) = 0;
  *(this + 30) = -1;
  *(this + 14) = -1;
}

void sub_26258FBDC(_Unwind_Exception *a1)
{
  DgnString::~DgnString((v1 + 16));
  DgnArray<DgnString>::releaseAll(v1);
  _Unwind_Resume(a1);
}

void PhnMgr::~PhnMgr(PhnMgr *this)
{
  DgnString::~DgnString((this + 40));
  DgnString::~DgnString((this + 24));
  DgnArray<DgnString>::releaseAll(this + 8);
}

void PhnMgr::printSize(PhnMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 112, &v74);
  if (v75)
  {
    v16 = v74;
  }

  else
  {
    v16 = &unk_26286C2BC;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26286C2BC, a3, &unk_26286C2BC, v16);
  DgnString::~DgnString(&v74);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26286C2BC);
  v21 = (a3 + 1);
  v73 = a3;
  v22 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 114, &v74);
  if (v75)
  {
    v27 = v74;
  }

  else
  {
    v27 = &unk_26286C2BC;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v24, v25, v26, v21, &unk_26286C2BC, v22, v22, v27, 4, 4, 0);
  DgnString::~DgnString(&v74);
  *a4 += 4;
  *a5 += 4;
  v28 = sizeObject<DgnString>(this + 8, 0);
  v29 = sizeObject<DgnString>(this + 8, 1);
  v30 = sizeObject<DgnString>(this + 8, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 114, &v74);
  if (v75)
  {
    v35 = v74;
  }

  else
  {
    v35 = &unk_26286C2BC;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v31, v32, v33, v34, v21, &unk_26286C2BC, v22, v22, v35, v28, v29, v30);
  DgnString::~DgnString(&v74);
  *a4 += v28;
  *a5 += v29;
  *a6 += v30;
  v36 = sizeObject(this + 24);
  v37 = sizeObject(this + 24);
  v38 = sizeObject(this + 24);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 114, &v74);
  if (v75)
  {
    v43 = v74;
  }

  else
  {
    v43 = &unk_26286C2BC;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v39, v40, v41, v42, v21, &unk_26286C2BC, v22, v22, v43, v36, v37, v38);
  DgnString::~DgnString(&v74);
  *a4 += v36;
  *a5 += v37;
  *a6 += v38;
  v44 = sizeObject(this + 40);
  v45 = sizeObject(this + 40);
  v46 = sizeObject(this + 40);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 114, &v74);
  if (v75)
  {
    v51 = v74;
  }

  else
  {
    v51 = &unk_26286C2BC;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v47, v48, v49, v50, v21, &unk_26286C2BC, v22, v22, v51, v44, v45, v46);
  DgnString::~DgnString(&v74);
  *a4 += v44;
  *a5 += v45;
  *a6 += v46;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 114, &v74);
  if (v75)
  {
    v56 = v74;
  }

  else
  {
    v56 = &unk_26286C2BC;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v52, v53, v54, v55, v21, &unk_26286C2BC, v22, v22, v56, 2, 2, 0);
  DgnString::~DgnString(&v74);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 114, &v74);
  if (v75)
  {
    v61 = v74;
  }

  else
  {
    v61 = &unk_26286C2BC;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v57, v58, v59, v60, v21, &unk_26286C2BC, v22, v22, v61, 2, 2, 0);
  DgnString::~DgnString(&v74);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 114, &v74);
  if (v75)
  {
    v66 = v74;
  }

  else
  {
    v66 = &unk_26286C2BC;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v62, v63, v64, v65, v21, &unk_26286C2BC, v22, v22, v66, 2, 2, 0);
  DgnString::~DgnString(&v74);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 116, &v74);
  if (v75)
  {
    v71 = v74;
  }

  else
  {
    v71 = &unk_26286C2BC;
  }

  v72 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v67, v68, v69, v70, v73, &unk_26286C2BC, (35 - v73), (35 - v73), v71, *a4, *a5, *a6);
  DgnString::~DgnString(&v74);
}

void sub_262590100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<DgnString>(uint64_t a1, int a2)
{
  DgnString::DgnString(v11);
  v4 = sizeObject(v11);
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
          v5 += sizeObject(*a1 + v9);
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

  DgnString::~DgnString(v11);
  return v5;
}

unsigned int *PhnMgr::getPublicPhnIndexArray(unsigned int *result, uint64_t a2)
{
  v3 = result;
  *(a2 + 8) = 0;
  v4 = *result;
  v5 = *(a2 + 12);
  if (*result > v5)
  {
    result = DgnPrimArray<short>::reallocElts(a2, *result - v5, 0);
    v4 = *v3;
  }

  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      if (i && *(v3 + 30) != i && *(v3 + 28) != i && *(v3 + 29) != i)
      {
        v7 = *(a2 + 8);
        if (v7 == *(a2 + 12))
        {
          result = DgnPrimArray<short>::reallocElts(a2, 1, 1);
          v7 = *(a2 + 8);
          v4 = *v3;
        }

        *(*a2 + 2 * v7) = i;
        *(a2 + 8) = v7 + 1;
      }
    }
  }

  return result;
}

void PhnMgr::getFullAcousticExitContext(uint64_t a1, BitArray *a2)
{
  BitArray::setSize(a2, *a1);
  v4 = *a1;
  if (*a1)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(a1 + 60);
    do
    {
      if (v7 != v6 && *(a1 + 56) != v6 && *(a1 + 58) != v6)
      {
        *(*a2 + 4 * (v5 >> 5)) |= 1 << v5;
        v4 = *a1;
      }

      v5 = ++v6;
    }

    while (v4 > v6);
  }
}

void PhnMgr::verifyPhonemePron(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = 0;
    while (1)
    {
      v10 = *(*a2 + 2 * v9);
      if (*a1 <= v10 || v10 == *(a1 + 58) || (a4 & 1) == 0 && v10 == *(a1 + 56))
      {
        break;
      }

      if (v8 == ++v9)
      {
        return;
      }
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 165, "phoneme/phnmgr", 6, "%u %u %.500s", a7, a8, v10);
  }
}

void PhnMgr::verifyPhonemePron2(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = 0;
    while (1)
    {
      v10 = *(*a2 + 2 * v9);
      if (*a1 <= v10 || v10 == *(a1 + 58) || (a4 & 1) == 0 && v10 == *(a1 + 56))
      {
        break;
      }

      if (v8 == ++v9)
      {
        return;
      }
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 182, "phoneme/phnmgr", 6, "%u %u %.500s", a7, a8, v10);
  }
}

uint64_t PhnMgr::addPhone(PhnMgr *this, const char *__s, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*this >= 0xFFFFu)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 523, "phoneme/phnmgr", 1, "%d", a7, a8, 255);
  }

  v10 = strlen(__s);
  if (!v10)
  {
    errThrowInternal(v10, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 524, "phoneme/phnmgr", 5, "%s", v11, v12, &errStr_phoneme_phnmgr_E_EMPTY_HUMAN_READABLE);
  }

  v13 = *this;
  DgnString::DgnString(v18, __s);
  if (DgnArray<DgnString>::find(this + 2, v18) != -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 534, "phoneme/phnmgr", 10, "%u %.500s", v14, v15, v13);
  }

  v16 = *(this + 4);
  if (v16 == *(this + 5))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 8, 1, 1);
    v16 = *(this + 4);
  }

  DgnString::DgnString((*(this + 1) + 16 * v16), v18);
  ++*(this + 4);
  ++*this;
  DgnString::~DgnString(v18);
  return v13;
}

void sub_262590610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void PhnMgr::loadPhnMgrText(PhnMgr *this, DFile *a2)
{
  DgnTextFileParser::DgnTextFileParser(v87);
  DgnTextFileParser::openDgnTextFileParser(v87, a2, 0x3Eu, 1);
  DgnTextFileParser::verifyMatchingFileType(v87, "PhonemeTable");
  v86[0] = 0;
  v86[1] = 0;
  DgnTextFile::legalDgnTextFileVersions(v87, sPHT_Versions, v86, v4, v5, v6, v7, v8);
  DgnTextFileParser::verifyFileVersionInRange(v87, v86, v9, v10, v11, v12, v13, v14);
  v85 = 0;
  DgnTextFile::getHeaderFieldUnsigned(v87, "NumberOfPhones", &v85, 1, 0, 0xFDE8u);
  DgnTextFile::getHeaderField(v87, "Language", (this + 24), 1);
  DgnTextFile::getHeaderField(v87, "PhonemeSetName", (this + 40), 1);
  DgnTextFileParser::verifyNoUnknownHeaderFields(v87, v15, v16, v17, v18, v19, v20, v21);
  v83 = 0;
  v84 = 0;
  v82[0] = 0;
  v82[1] = 0;
  DgnTextFile::getLineFieldNames(v87, &v83);
  DgnTextFile::getLineFieldFormats(v87, v82);
  if (!v84)
  {
    goto LABEL_13;
  }

  v24 = 0;
  v25 = 0;
  v26 = -1;
  do
  {
    v27 = *(v83 + v24);
    if (*(v83 + v24 + 8))
    {
      v28 = *(v83 + v24);
    }

    else
    {
      v28 = &unk_26286C2BC;
    }

    if (!strcmp(v28, "HumanReadable"))
    {
      if (*(v82[0] + 4 * v25))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 286, "phoneme/phnmgr", 12, "%.500s %.500s", v22, v23, "HumanReadable");
      }

      v26 = v25;
    }

    else
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 290, "phoneme/phnmgr", 13, "%.500s", v22, v23, v28);
    }

    ++v25;
    v24 += 16;
  }

  while (v25 < v84);
  if (v26 == -1)
  {
LABEL_13:
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 292, "phoneme/phnmgr", 14, "%.500s", v22, v23, "PhoneCode");
    v26 = -1;
  }

  PhnMgr::addPhone(this, "_sil", v29, v30, v31, v32, v22, v23);
  DgnString::DgnString(&v80);
  DgnString::DgnString(v79);
  DgnString::DgnString(v78);
  v33 = MEMORY[0x277D85DE0];
  while (DgnTextFileParser::parseNextLine(v87))
  {
    LineFieldString = DgnTextFileParser::getLineFieldString(v87, v26);
    DgnString::operator=(&v80, LineFieldString);
    if (v81 <= 1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 322, "phoneme/phnmgr", 11, "%.500s", v41, v42, "empty string");
    }

    v43 = DgnString::find(&v80, "_");
    if (!v43)
    {
      if (v81)
      {
        LOBYTE(v50) = v80;
      }

      else
      {
        v50 = &unk_26286C2BC;
      }

      errThrowInternal(v43, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 324, "phoneme/phnmgr", 11, "%.500s", v48, v49, v50);
    }

    v51 = this;
    v52 = v81;
    if (v81 >= 2)
    {
      v57 = 0;
      do
      {
        v58 = v80[v57];
        if (v58 < 0 || (*(v33 + 4 * v58 + 60) & 0x500) == 0)
        {
          v59 = v80[v57];
          v60 = (v59 - 33) > 0x3F || ((1 << (v59 - 33)) & 0xD4000000FE0057FDLL) == 0;
          if (v60 && (v59 - 123) >= 4)
          {
            if (v52)
            {
              LOBYTE(v62) = v80;
            }

            else
            {
              v62 = &unk_26286C2BC;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 358, "phoneme/phnmgr", 11, "%.500s", v48, v49, v62);
            v52 = v81;
          }
        }

        ++v57;
        LODWORD(v61) = v52 - 1;
        if (v52)
        {
          v61 = v61;
        }

        else
        {
          v61 = 0;
        }
      }

      while (v57 < v61);
    }

    if (v52)
    {
      v53 = v80;
    }

    else
    {
      v53 = &unk_26286C2BC;
    }

    this = v51;
    v54 = PhnMgr::addPhone(v51, v53, v44, v45, v46, v47, v48, v49);
    if (v85 < v54)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 363, "phoneme/phnmgr", 8, "%u", v55, v56, v85);
    }
  }

  *(this + 28) = PhnMgr::addPhone(this, "_gen", v34, v35, v36, v37, v38, v39);
  *(this + 29) = PhnMgr::addPhone(this, "_pronless", v63, v64, v65, v66, v67, v68);
  *(this + 30) = PhnMgr::addPhone(this, "_wb", v69, v70, v71, v72, v73, v74);
  if (*this - 4 != v85)
  {
    v77 = (*this - 4);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 386, "phoneme/phnmgr", 9, "%u %u", v75, v76, v85);
  }

  DgnString::~DgnString(v78);
  DgnString::~DgnString(v79);
  DgnString::~DgnString(&v80);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v82);
  DgnArray<DgnString>::releaseAll(&v83);
  DgnIArray<Utterance *>::~DgnIArray(v86);
  DgnTextFileParser::~DgnTextFileParser(v87);
}

void sub_262590AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va5, a6);
  va_start(va4, a6);
  va_start(va3, a6);
  va_start(va2, a6);
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  va_copy(va3, va2);
  v13 = va_arg(va3, void);
  v15 = va_arg(va3, void);
  va_copy(va4, va3);
  v16 = va_arg(va4, void);
  v18 = va_arg(va4, void);
  v19 = va_arg(va4, void);
  va_copy(va5, va4);
  v20 = va_arg(va5, void);
  v22 = va_arg(va5, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  DgnArray<DgnString>::releaseAll(va3);
  DgnIArray<Utterance *>::~DgnIArray(va4);
  DgnTextFileParser::~DgnTextFileParser(va5);
  _Unwind_Resume(a1);
}

void PhnMgr::savePhnMgrText(PhnMgr *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v26);
  DgnTextFileWriter::openDgnTextFileWriter(v26, a2, 0x3Eu, a3);
  v24 = 0;
  v25 = 0;
  DgnTextFile::legalDgnTextFileVersions(v26, sPHT_Versions, &v24, v6, v7, v8, v9, v10);
  DgnTextFileWriter::setFileType(v26, "PhonemeTable", (v24 + 8 * (v25 - 1)));
  v22 = 0;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  DgnString::DgnString(v19, "HumanReadable");
  v11 = v23;
  if (v23 == HIDWORD(v23))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v22, 1, 1);
    v11 = v23;
  }

  DgnString::DgnString((v22 + 16 * v11), v19);
  LODWORD(v23) = v23 + 1;
  DgnString::~DgnString(v19);
  v12 = v21;
  if (v21 == HIDWORD(v21))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v20, 1, 1);
    v12 = v21;
  }

  *(v20 + 4 * v12) = 0;
  LODWORD(v21) = v12 + 1;
  DgnTextFileWriter::setLineFieldFormat(v26, &v20, &v22);
  DgnTextFileWriter::setHeaderFieldUnsigned(v26, "NumberOfPhones", (*this - 4));
  if (*(this + 8))
  {
    v13 = *(this + 3);
  }

  else
  {
    v13 = &unk_26286C2BC;
  }

  DgnTextFileWriter::setHeaderField(v26, "Language", v13);
  if (*(this + 12))
  {
    v14 = *(this + 5);
  }

  else
  {
    v14 = &unk_26286C2BC;
  }

  DgnTextFileWriter::setHeaderField(v26, "PhonemeSetName", v14);
  v15 = *this;
  if (*this)
  {
    v16 = 0;
    do
    {
      if (v16 && *(this + 30) != v16 && *(this + 28) != v16 && *(this + 29) != v16)
      {
        v17 = *(this + 1) + 16 * v16;
        if (*(v17 + 8))
        {
          v18 = *v17;
        }

        else
        {
          v18 = &unk_26286C2BC;
        }

        DgnTextFileWriter::setLineFieldValue(v26, 0, v18);
        DgnTextFileWriter::writeNextLine(v26);
        v15 = *this;
      }

      ++v16;
    }

    while (v15 > v16);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v20);
  DgnArray<DgnString>::releaseAll(&v22);
  DgnIArray<Utterance *>::~DgnIArray(&v24);
  DgnTextFileWriter::~DgnTextFileWriter(v26);
}

void sub_262590DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

void PhnMgr::loadPhnMgr(PhnMgr *this, char **a2, DFileChecksums *a3, int a4)
{
  if (DFile::subFileExists(a2, 0x3Eu))
  {

    PhnMgr::loadPhnMgrText(this, a2);
  }

  else
  {
    if (a4)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 450, "phoneme/phnmgr", 17, "%s", v8, v9, &unk_26286C2BC);
    }

    v18 = 0;
    v12 = OpenAndReadMrecHeader(a2, 0x3Du, 1, "MRPHNM!?", &v18 + 1, &v18);
    v13 = v18;
    if (v18 == 0x1300000007)
    {
      v14 = 19;
    }

    else
    {
      if (*(a2 + 6))
      {
        v15 = a2[2];
      }

      else
      {
        v15 = &unk_26286C2BC;
      }

      MrecHeaderCheckVersions(v15, "MRPHNM!?", HIDWORD(v18), v18, 0x17u, 8u);
      v13 = v18;
      v14 = HIDWORD(v18);
    }

    MrecHeaderCheckLatestVersionIfShared(a2, "MRPHNM!?", v14, v13, 23, 8, v10, v11);
    v17 = 0;
    readObject(v12, this, &v17);
    readObject<DgnString>(v12, this + 8, &v17);
    readObject(v12, (this + 24), &v17);
    readObject(v12, (this + 40), &v17);
    readObject(v12, this + 28, &v17);
    readObject(v12, this + 29, &v17);
    readObject(v12, this + 30, &v17);
    readObjectChecksumAndVerify(v12, v17);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x3Du, v17);
    DgnDelete<DgnStream>(v12);
  }
}

void readObject<DgnString>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v15 = 0;
  readObject(a1, &v15, a3);
  v6 = v15;
  v7 = *(a2 + 12);
  if (v15 > v7)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a2, v15 - v7, 0);
  }

  v8 = *(a2 + 8);
  v9 = v8;
  if (v6 >= v8)
  {
    if (v6 > v8)
    {
      v11 = v6 - v8;
      v12 = 16 * v8;
      do
      {
        DgnString::DgnString((*a2 + v12));
        v12 += 16;
        --v11;
      }

      while (v11);
    }
  }

  else if (v8 > v6)
  {
    v10 = 16 * v8 - 16;
    do
    {
      --v9;
      DgnString::~DgnString((*a2 + v10));
      v10 -= 16;
    }

    while (v9 > v6);
  }

  *(a2 + 8) = v6;
  if (v6)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      readObject(a1, (*a2 + v13), a3);
      ++v14;
      v13 += 16;
    }

    while (v14 < *(a2 + 8));
  }
}

void PhnMgr::savePhnMgr(PhnMgr *this, DFile *a2, DFileChecksums *a3, int a4, int a5)
{
  if (a4)
  {

    PhnMgr::savePhnMgrText(this, a2, a5);
  }

  else
  {
    v8 = OpenAndWriteMrecHeader(a2, 0x3Du, a5, "MRPHNM!?", 23, 8);
    v10 = 0;
    writeObject(v8, this, &v10);
    writeObject<DgnString>(v8, this + 8, &v10);
    writeObject(v8, this + 24, &v10);
    writeObject(v8, this + 40, &v10);
    writeObject(v8, this + 28, &v10);
    writeObject(v8, this + 29, &v10);
    writeObject(v8, this + 30, &v10);
    writeObjectChecksum(v8, &v10);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x3Du, v10);
    DgnDelete<DgnStream>(v8);
  }
}

uint64_t writeObject<DgnString>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = writeObject(a1, *a2 + v7, a3);
      ++v8;
      v7 += 16;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

uint64_t PhnMgr::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 60) != *(a2 + 60) || *(a1 + 56) != *(a2 + 56) || *(a1 + 58) != *(a2 + 58))
  {
    return 0;
  }

  v4 = *(a1 + 32) ? *(a1 + 24) : &unk_26286C2BC;
  v5 = *(a2 + 32) ? *(a2 + 24) : &unk_26286C2BC;
  if (strcmp(v4, v5))
  {
    return 0;
  }

  v6 = *(a1 + 48) ? *(a1 + 40) : &unk_26286C2BC;
  v7 = *(a2 + 48) ? *(a2 + 40) : &unk_26286C2BC;
  if (strcmp(v6, v7))
  {
    return 0;
  }

  return DgnArray<DgnString>::operator==(a1 + 8, (a2 + 8));
}

uint64_t PhnMgr::getPhnIndex(PhnMgr *this, const char *a2)
{
  v2 = a2;
  DgnString::DgnString(&v15, a2);
  v6 = *this;
  if (*this)
  {
    v7 = 0;
    v8 = *(this + 1);
    if (v16)
    {
      v9 = v15;
    }

    else
    {
      v9 = &unk_26286C2BC;
    }

    while (1)
    {
      v10 = v8 + 16 * v7;
      v11 = *(v10 + 8);
      v12 = *v10;
      v13 = (v11 ? v12 : &unk_26286C2BC);
      if (!strcmp(v13, v9))
      {
        break;
      }

      if (++v7 >= v6)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 569, "phoneme/phnmgr", 3, "%.500s", v4, v5, v2);
    LOWORD(v7) = -1;
  }

  DgnString::~DgnString(&v15);
  return v7;
}

void sub_262591478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void *DgnArray<DgnString>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 16 * v2 - 16;
    do
    {
      DgnString::~DgnString((*a1 + v3));
      v3 -= 16;
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

void DgnArray<DgnString>::copyArraySlice(uint64_t a1, void *a2, unsigned int a3, unsigned int a4)
{
  v8 = *(a1 + 8);
  if (v8 >= 1)
  {
    v9 = 16 * v8 - 16;
    do
    {
      DgnString::~DgnString((*a1 + v9));
      v9 -= 16;
    }

    while (v9 != -16);
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 12);
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
    DgnArray<DgnPrimArray<double>>::reallocElts(a1, a4 - v10, 0);
    v11 = *(a1 + 8);
  }

  v13 = a4;
  v12 = v11;
  do
  {
    DgnString::DgnString((*a1 + 16 * v12), (*a2 + 16 * a3));
    v12 = *(a1 + 8) + 1;
    *(a1 + 8) = v12;
    ++a3;
    --v13;
  }

  while (v13);
  if (v12 > a4)
  {
    if (v12 > a4)
    {
      v14 = v12;
      v15 = 16 * v12 - 16;
      do
      {
        --v14;
        DgnString::~DgnString((*a1 + v15));
        v15 -= 16;
      }

      while (v14 > a4);
    }

    goto LABEL_17;
  }

LABEL_14:
  v16 = a4 - v12;
  if (a4 > v12)
  {
    v17 = 16 * v12;
    do
    {
      DgnString::DgnString((*a1 + v17));
      v17 += 16;
      --v16;
    }

    while (v16);
  }

LABEL_17:
  *(a1 + 8) = a4;
}

uint64_t DgnArray<DgnString>::find(unsigned int *a1, uint64_t a2)
{
  v2 = a1[2];
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 0;
  if (*(a2 + 8))
  {
    v4 = *a2;
  }

  else
  {
    v4 = &unk_26286C2BC;
  }

  for (i = (*a1 + 8); ; i += 4)
  {
    v6 = *i ? *(i - 1) : &unk_26286C2BC;
    if (!strcmp(v6, v4))
    {
      break;
    }

    if (v2 == ++v3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v3;
}

uint64_t DgnArray<DgnString>::operator==(uint64_t a1, uint64_t *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v3 = *(a1 + 8);
  if (v3 != *(a2 + 2))
  {
    return 0;
  }

  v4 = *a2;
  v5 = v3 + 1;
  v6 = 16 * v3;
  do
  {
    v7 = --v5 < 1;
    if (v5 < 1)
    {
      break;
    }

    v8 = v6 - 16;
    v9 = *a1 + v6;
    v10 = v4 + v6;
    v11 = *(v9 - 8);
    v12 = *(v9 - 16);
    v13 = (v11 ? v12 : &unk_26286C2BC);
    v14 = *(v10 - 8);
    v15 = *(v10 - 16);
    v16 = (v14 ? v15 : &unk_26286C2BC);
    v17 = strcmp(v13, v16);
    v6 = v8;
  }

  while (!v17);
  return v7;
}

double fround(double a1, int a2)
{
  v4 = -a1;
  if (a1 >= 0.0)
  {
    v4 = a1;
  }

  __y = 0.0;
  v5 = modf(v4, &__y);
  for (i = 1.0; a2; --a2)
  {
    i = i * 10.0;
  }

  v17 = 0.0;
  v7 = modf(v5 * i, &v17);
  v8 = v7 == 0.5;
  if (v7 > 0.5)
  {
    v9 = v17;
LABEL_11:
    v9 = v9 + 1.0;
    goto LABEL_12;
  }

  v9 = v17;
  v10 = floor(v17 * 0.5);
  v11 = v10 + v10;
  if (v8 && v11 != v17)
  {
    goto LABEL_11;
  }

LABEL_12:
  v13 = __y + v9 / i;
  v14 = -v13;
  if (a1 >= 0.0)
  {
    v14 = v13;
  }

  if (v13 == 0.0)
  {
    return v14 * v14;
  }

  else
  {
    return v14;
  }
}

double eround(double result, int a2)
{
  if (result == 0.0)
  {
    return result * result;
  }

  v2 = -result;
  if (result >= 0.0)
  {
    v2 = result;
  }

  v3 = 1.0;
  if (a2 >= 2)
  {
    v4 = a2 + 1;
    do
    {
      v3 = v3 * 10.0;
      --v4;
    }

    while (v4 > 2);
  }

  v5 = v3 * 10.0;
  if (v2 < v3 * 10.0)
  {
    v6 = 1.0;
    v7 = v2;
    if (v2 < v3)
    {
      do
      {
        v6 = v6 * 10.0;
        v7 = v2 * v6;
      }

      while (v2 * v6 < v3);
    }
  }

  else
  {
    if (v2 * 0.5 == v2)
    {
      return result;
    }

    v6 = 1.0;
    do
    {
      v6 = v6 * 10.0;
      v7 = v2 / v6;
    }

    while (v2 / v6 >= v5);
  }

  v8 = floor(v7);
  v9 = v7 - v8;
  if (v7 - v8 > 0.5 || ((v10 = floor(v8 * 0.5), v11 = v10 + v10, v9 == 0.5) ? (v12 = v11 == v8) : (v12 = 1), !v12))
  {
    v8 = v8 + 1.0;
  }

  v13 = v2 < v5;
  v14 = v8 / v6;
  if (!v13)
  {
    v14 = v6 * v8;
  }

  if (result >= 0.0)
  {
    result = v14;
  }

  else
  {
    result = -v14;
  }

  if (v14 == 0.0)
  {
    return result * result;
  }

  return result;
}

uint64_t StateIdPair::computeHash(_DWORD *a1)
{
  HIDWORD(v1) = *a1;
  LODWORD(v1) = *a1;
  return (v1 >> 19) + a1[1];
}

uint64_t CWIDAC::computeHash(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 20);
  if (v1 == -83886084)
  {
    v1 = 0;
  }

  HIDWORD(v3) = v1;
  LODWORD(v3) = v1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 12);
  v6 = (v3 >> 19) + v4;
  if (v4)
  {
    v1 = v6;
  }

  v7 = *(a1 + 4);
  HIDWORD(v8) = v1;
  LODWORD(v8) = v1;
  v9 = v7 == 0x3FFF;
  v10 = (v8 >> 19) + v7;
  if (!v9)
  {
    v1 = v10;
  }

  HIDWORD(v11) = v1;
  LODWORD(v11) = v1;
  v12 = (v11 >> 19) + *(a1 + 6);
  if (*(a1 + 6))
  {
    v1 = v12;
  }

  HIDWORD(v13) = v1;
  LODWORD(v13) = v1;
  v14 = (v13 >> 19) + v2;
  if (v2 == -83886084)
  {
    v15 = v1;
  }

  else
  {
    v15 = v14;
  }

  HIDWORD(v16) = v15;
  LODWORD(v16) = v15;
  v17 = (v16 >> 19) + *a1;
  HIDWORD(v16) = v17;
  LODWORD(v16) = v17;
  v18 = (v16 >> 19) + v5;
  if (v5 == -2)
  {
    return v17;
  }

  else
  {
    return v18;
  }
}

uint64_t CWIDAC::cmp(uint64_t a1, uint64_t a2)
{
  v2 = *a1 >= *a2;
  if (*a1 != *a2)
  {
    goto LABEL_13;
  }

  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  v2 = v3 >= v4;
  if (v3 != v4)
  {
    goto LABEL_13;
  }

  v5 = *(a1 + 20);
  v6 = *(a2 + 20);
  v2 = v5 >= v6;
  if (v5 != v6)
  {
    goto LABEL_13;
  }

  v7 = *(a1 + 4);
  v8 = *(a2 + 4);
  v2 = v7 >= v8;
  if (v7 != v8)
  {
    goto LABEL_13;
  }

  v9 = *(a1 + 12);
  v10 = *(a2 + 12);
  v2 = v9 >= v10;
  if (v9 == v10 && (v11 = *(a1 + 6), v12 = *(a2 + 6), v2 = v11 >= v12, v11 == v12))
  {
    v13 = *(a1 + 8);
    v14 = *(a2 + 8);
    v15 = v13 == v14;
    if (v13 < v14)
    {
      v16 = -1;
    }

    else
    {
      v16 = 1;
    }

    if (v15)
    {
      return 0;
    }

    else
    {
      return v16;
    }
  }

  else
  {
LABEL_13:
    if (v2)
    {
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }
}

uint64_t CWIDACPair::computeHash(uint64_t a1)
{
  HIDWORD(v2) = CWIDAC::computeHash(a1);
  LODWORD(v2) = HIDWORD(v2);
  return (v2 >> 19) + CWIDAC::computeHash(a1 + 24);
}

uint64_t StartupUserDeltaParamSpecMgr(void)
{
  v0 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v0, "UserDeltaTyingType", &byte_262899963, &byte_262899963, &sUserDeltaTyingTypeEnumHistory);
  v1 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v1, "UserDeltaRunLengthMin", &byte_262899963, &byte_262899963, &sUserDeltaRunLengthMinIntHistory);
  v2 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v2, "UserDeltaRunLengthRange", &byte_262899963, &byte_262899963, &sUserDeltaRunLengthRangeIntHistory);
  v3 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v3, "UserDeltaInclusionMinDivergence", &byte_262899963, &byte_262899963, &sUserDeltaInclusionMinDivergenceIntHistory);
  ParamSpecMgr::addParam(qword_281051FC8, v0);
  ParamSpecMgr::addParam(qword_281051FC8, v1);
  ParamSpecMgr::addParam(qword_281051FC8, v2);
  ParamSpecMgr::addParam(qword_281051FC8, v3);
  v4 = qword_281051FC8;

  return ParamSpecMgr::sortParams(v4);
}

_DWORD *UserDeltaParamSet::UserDeltaParamSet(_DWORD *a1, const char *a2, int a3, int a4, int a5)
{
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 2), a2);
  a1[6] = a3;
  a1[7] = a4;
  a1[8] = a5;
  a1[9] = 0;
  *a1 = &unk_287526D40;
  UserDeltaParamSet::setDefaults(a1, v9, v10, v11, v12, v13, v14, v15);
  return a1;
}

void sub_262591C88(_Unwind_Exception *a1)
{
  *v1 = v2;
  DgnString::~DgnString((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t UserDeltaParamSet::UserDeltaParamSet(uint64_t a1, uint64_t a2, const char *a3, int a4, int a5, int a6)
{
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 8), a3);
  *(a1 + 24) = a4;
  *(a1 + 28) = a5;
  *(a1 + 32) = a6;
  *(a1 + 36) = 0;
  *a1 = &unk_287526D40;
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t UserDeltaParamSet::setDefaults(UserDeltaParamSet *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(this + 10) = ParamSpecMgr::ParamGetDefault_enum(qword_281051FC8, 1, a3, a4, a5, a6, a7, a8);
  *(this + 11) = ParamSpecMgr::ParamGetDefault_int(qword_281051FC8, 2, 0, 0, v9, v10, v11, v12);
  *(this + 12) = ParamSpecMgr::ParamGetDefault_int(qword_281051FC8, 3, 0, 0, v13, v14, v15, v16);
  result = ParamSpecMgr::ParamGetDefault_int(qword_281051FC8, 4, 0, 0, v17, v18, v19, v20);
  *(this + 13) = result;
  return result;
}

uint64_t UserDeltaParamSet::sizeObject(uint64_t a1, int a2)
{
  v3 = sizeObject(a1 + 8);
  v4 = 16;
  if ((a2 == 3) | gShadowDiagnosticShowIdealizedObjectSizes & 1)
  {
    v4 = 0;
  }

  return v3 + 16 * (a2 != 3) + v4;
}

uint64_t UserDeltaParamSet::getBoolParameter(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v8 = "int";
      v9 = 3;
      goto LABEL_11;
    }

    if (a2 == 4)
    {
      v8 = "int";
      v9 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (a2 == 1)
    {
      v8 = "enum";
      v9 = 1;
      goto LABEL_11;
    }

    if (a2 == 2)
    {
      v8 = "int";
      v9 = 2;
LABEL_11:
      throwWrongTypeForParamId(v9, v8, "BOOL", a4, a5, a6, a7, a8);
      return 0;
    }
  }

  throwWrongParamIdValue(a2, "BOOL", a3, a4, a5, a6, a7, a8);
  return 0;
}

uint64_t UserDeltaParamSet::getIntParameter(unsigned int *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[12];
        }

        if (a3 == 1)
        {
          v8 = qword_281051FC8;
          v9 = 3;
          goto LABEL_20;
        }

        goto LABEL_31;
      }

      if (a3 != 2)
      {
        if (a3 == 3)
        {
          v13 = qword_281051FC8;
          v14 = 3;
          goto LABEL_30;
        }

        goto LABEL_31;
      }

      v17 = qword_281051FC8;
      v18 = 3;
      goto LABEL_40;
    }

    if (a2 == 4)
    {
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[13];
        }

        if (a3 == 1)
        {
          v8 = qword_281051FC8;
          v9 = 4;
          goto LABEL_20;
        }

        goto LABEL_31;
      }

      if (a3 != 2)
      {
        if (a3 == 3)
        {
          v13 = qword_281051FC8;
          v14 = 4;
          goto LABEL_30;
        }

LABEL_31:
        throwWrongQueryMode(a3, "int", a3, a4, a5, a6, a7, a8);
        return 0;
      }

      v17 = qword_281051FC8;
      v18 = 4;
LABEL_40:
      ParamByParamId = ParamSpecMgr::getParamByParamId(v17, v18, a3, a4, a5, a6, a7, a8);
      v20 = **ParamByParamId;
    }
  }

  else
  {
    if (a2 == 1)
    {
      throwWrongTypeForParamId(1, "enum", "int", a4, a5, a6, a7, a8);
      return 0;
    }

    if (a2 == 2)
    {
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[11];
        }

        if (a3 == 1)
        {
          v8 = qword_281051FC8;
          v9 = 2;
LABEL_20:
          v10 = ParamSpecMgr::getParamByParamId(v8, v9, a3, a4, a5, a6, a7, a8);
          v11 = **v10;
        }

        goto LABEL_31;
      }

      if (a3 != 2)
      {
        if (a3 == 3)
        {
          v13 = qword_281051FC8;
          v14 = 2;
LABEL_30:
          v15 = ParamSpecMgr::getParamByParamId(v13, v14, a3, a4, a5, a6, a7, a8);
          v16 = **v15;
        }

        goto LABEL_31;
      }

      v17 = qword_281051FC8;
      v18 = 2;
      goto LABEL_40;
    }
  }

  throwWrongParamIdValue(a2, "int", a3, a4, a5, a6, a7, a8);
  return 0;
}

double UserDeltaParamSet::getDoubleParameter(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v8 = "int";
      v9 = 3;
      goto LABEL_11;
    }

    if (a2 == 4)
    {
      v8 = "int";
      v9 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (a2 == 1)
    {
      v8 = "enum";
      v9 = 1;
      goto LABEL_11;
    }

    if (a2 == 2)
    {
      v8 = "int";
      v9 = 2;
LABEL_11:
      throwWrongTypeForParamId(v9, v8, "double", a4, a5, a6, a7, a8);
      return 0.0;
    }
  }

  throwWrongParamIdValue(a2, "double", a3, a4, a5, a6, a7, a8);
  return 0.0;
}

uint64_t UserDeltaParamSet::getStringParameter(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v8 = "int";
      v9 = 3;
      goto LABEL_11;
    }

    if (a2 == 4)
    {
      v8 = "int";
      v9 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (a2 == 1)
    {
      v8 = "enum";
      v9 = 1;
      goto LABEL_11;
    }

    if (a2 == 2)
    {
      v8 = "int";
      v9 = 2;
LABEL_11:
      throwWrongTypeForParamId(v9, v8, "string", a4, a5, a6, a7, a8);
      return 0;
    }
  }

  throwWrongParamIdValue(a2, "string", a3, a4, a5, a6, a7, a8);
  return 0;
}

uint64_t UserDeltaParamSet::getEnumParameter(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v8 = 3;
      goto LABEL_18;
    }

    if (a2 == 4)
    {
      v8 = 4;
      goto LABEL_18;
    }

    goto LABEL_8;
  }

  if (a2 != 1)
  {
    if (a2 == 2)
    {
      v8 = 2;
LABEL_18:
      throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
      return 0;
    }

LABEL_8:
    throwWrongParamIdValue(a2, "enum", a3, a4, a5, a6, a7, a8);
    return 0;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051FC8, 1, a3, a4, a5, a6, a7, a8);
      if (ParamByParamId)
      {
        v19 = **ParamByParamId;
      }

      return EnumParamSpec::getMinVal(ParamByParamId);
    }

    if (a3 == 3)
    {
      v16 = ParamSpecMgr::getParamByParamId(qword_281051FC8, 1, a3, a4, a5, a6, a7, a8);
      if (v16)
      {
        v17 = **v16;
      }

      return EnumParamSpec::getMaxVal(v16);
    }

LABEL_28:
    throwWrongQueryMode(a3, "enum", a3, a4, a5, a6, a7, a8);
    return 0;
  }

  if (!a3)
  {
    return *(a1 + 40);
  }

  if (a3 != 1)
  {
    goto LABEL_28;
  }

  v9 = ParamSpecMgr::getParamByParamId(qword_281051FC8, 1, a3, a4, a5, a6, a7, a8);
  v10 = **v9;
  if (!**(v11 + 24))
  {
    return 0;
  }

  v12 = v11 + 16;
  v13 = 1;
  v14 = v12;
  while (*v14 != 1)
  {
    result = 0;
    v14 = v12 + 32 * v13++;
    if (!**(v14 + 8))
    {
      return result;
    }
  }

  return *(v14 + 16);
}

uint64_t EnumParamSpec::getMinVal(EnumParamSpec *this)
{
  v1 = *(this + 4);
  if (!**(v1 + 24))
  {
    return 0;
  }

  v2 = 0;
  result = 0;
  v4 = v1 + 16;
  v5 = 1;
  v6 = v4;
  do
  {
    if (v5 == 1 || result > *(v6 + 16))
    {
      result = *(v4 + 32 * v2 + 16);
    }

    v2 = v5;
    v6 = v4 + 32 * v5++;
  }

  while (**(v6 + 8));
  return result;
}

uint64_t EnumParamSpec::getMaxVal(EnumParamSpec *this)
{
  v1 = *(this + 4);
  if (!**(v1 + 24))
  {
    return 0;
  }

  v2 = 0;
  result = 0;
  v4 = v1 + 16;
  v5 = 1;
  v6 = v4;
  do
  {
    if (v5 == 1 || result < *(v6 + 16))
    {
      result = *(v4 + 32 * v2 + 16);
    }

    v2 = v5;
    v6 = v4 + 32 * v5++;
  }

  while (**(v6 + 8));
  return result;
}

void UserDeltaParamSet::setBoolParameter(UserDeltaParamSet *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      throwWrongTypeForParamId(1, "enum", "BOOL", a4, a5, a6, a7, a8);
    }

    else if (a2 != 2)
    {
      goto LABEL_12;
    }

    throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
    goto LABEL_10;
  }

  if (a2 == 3)
  {
LABEL_10:
    throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
    goto LABEL_11;
  }

  if (a2 == 4)
  {
LABEL_11:
    throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
  }

LABEL_12:

  throwWrongParamIdValue(v8, "BOOL", a3, a4, a5, a6, a7, a8);
}

void UserDeltaParamSet::setIntParameter(UserDeltaParamSet *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051FC8, 3, a3, a4, a5, a6, a7, a8);
      if (ParamByParamId)
      {
        v34 = **ParamByParamId;
      }

      IntParamSpec::validateValue(ParamByParamId, v8, 0, 0, v30, v31, v32, v33);
      if (!*(this + 9))
      {
        *(this + 12) = v8;
        return;
      }

      v22 = "UserDeltaRunLengthRange";
    }

    else
    {
      if (a2 != 4)
      {
LABEL_11:

        throwWrongParamIdValue(a2, "int", a3, a4, a5, a6, a7, a8);
        return;
      }

      v10 = ParamSpecMgr::getParamByParamId(qword_281051FC8, 4, a3, a4, a5, a6, a7, a8);
      if (v10)
      {
        v15 = **v10;
      }

      IntParamSpec::validateValue(v10, v8, 0, 0, v11, v12, v13, v14);
      if (!*(this + 9))
      {
        *(this + 13) = v8;
        return;
      }

      v22 = "UserDeltaInclusionMinDivergence";
    }
  }

  else
  {
    if (a2 == 1)
    {
      throwWrongTypeForParamId(1, "enum", "int", a4, a5, a6, a7, a8);
    }

    else if (a2 != 2)
    {
      goto LABEL_11;
    }

    v23 = ParamSpecMgr::getParamByParamId(qword_281051FC8, 2, a3, a4, a5, a6, a7, a8);
    if (v23)
    {
      v28 = **v23;
    }

    IntParamSpec::validateValue(v23, v8, 0, 0, v24, v25, v26, v27);
    if (!*(this + 9))
    {
      *(this + 11) = v8;
      return;
    }

    v22 = "UserDeltaRunLengthMin";
  }

  throwParamSetSetFailed(v22, "int", v16, v17, v18, v19, v20, v21);
}

void UserDeltaParamSet::setDoubleParameter(UserDeltaParamSet *this, int a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a2;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      throwWrongTypeForParamId(1, "enum", "double", a5, a6, a7, a8, a9);
    }

    else if (a2 != 2)
    {
      goto LABEL_12;
    }

    throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
    goto LABEL_10;
  }

  if (a2 == 3)
  {
LABEL_10:
    throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
    goto LABEL_11;
  }

  if (a2 == 4)
  {
LABEL_11:
    throwWrongTypeForParamId(v9, "int", "double", a5, a6, a7, a8, a9);
  }

LABEL_12:

  throwWrongParamIdValue(v9, "double", a4, a5, a6, a7, a8, a9);
}

void UserDeltaParamSet::setStringParameter(UserDeltaParamSet *this, int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      throwWrongTypeForParamId(1, "enum", "string", a4, a5, a6, a7, a8);
    }

    else if (a2 != 2)
    {
      goto LABEL_12;
    }

    throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
    goto LABEL_10;
  }

  if (a2 == 3)
  {
LABEL_10:
    throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
    goto LABEL_11;
  }

  if (a2 == 4)
  {
LABEL_11:
    throwWrongTypeForParamId(v8, "int", "string", a4, a5, a6, a7, a8);
  }

LABEL_12:

  throwWrongParamIdValue(v8, "string", a3, a4, a5, a6, a7, a8);
}

void UserDeltaParamSet::setEnumParameter(UserDeltaParamSet *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (a2 > 2)
  {
    if (a2 != 3)
    {
      if (a2 != 4)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

LABEL_8:
    throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
LABEL_9:
    throwWrongTypeForParamId(v8, "int", "BOOL", a4, a5, a6, a7, a8);
    goto LABEL_10;
  }

  if (a2 != 1)
  {
    if (a2 != 2)
    {
LABEL_10:

      throwWrongParamIdValue(v8, "enum", a3, a4, a5, a6, a7, a8);
      return;
    }

    throwWrongTypeForParamId(2, "int", "BOOL", a4, a5, a6, a7, a8);
    goto LABEL_8;
  }

  v9 = a3;
  ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051FC8, 1, a3, a4, a5, a6, a7, a8);
  if (ParamByParamId)
  {
    v18 = **ParamByParamId;
  }

  EnumParamSpec::validateValue(ParamByParamId, v9, v12, v13, v14, v15, v16, v17);
  if (*(this + 9))
  {

    throwParamSetSetFailed("UserDeltaTyingType", "enum", v19, v20, v21, v22, v23, v24);
  }

  else
  {
    *(this + 10) = v9;
  }
}

void UserDeltaParamSet::~UserDeltaParamSet(UserDeltaParamSet *this)
{
  *this = &unk_287528C00;
  DgnString::~DgnString((this + 8));
}

{
  *this = &unk_287528C00;
  DgnString::~DgnString((this + 8));

  JUMPOUT(0x26672B1B0);
}

void TIntegrityChecker::operator()(_BYTE *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if ((v3 & 3) != 2)
  {
    goto LABEL_8;
  }

  v4 = *(*a1 + 8);
  if (v4 != a2)
  {
    if ((v3 & 4) == 0)
    {
      loggableUnicode(*(a2 + 16), __p);
      if (v17 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      tknPrintf("Error: %s : Non-terminal is used but not defined\n", v5, v6, v7, v8, v9);
      goto LABEL_13;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_16;
  }

  loggableUnicode(*(v4 + 16), __p);
  if (v17 >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  tknPrintf("Error: %s : Top symbol cannot be used on right hand side of rules\n", v11, v12, v13, v14, v15);
LABEL_13:
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = 1;
LABEL_16:
  a1[8] |= v10;
}

void sub_262592DBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TGrammarCompiler::TGrammarCompiler(TGrammarCompiler *this, const TLocaleInfo *a2)
{
  *this = &unk_2875273B0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  operator new();
}

void sub_262593240(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v2, 0x30C40773F8FACLL);
  v5 = v1[4];
  if (v5)
  {
    v1[5] = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    v1[2] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void TGrammarCompiler::~TGrammarCompiler(TGrammarCompiler *this)
{
  *this = &unk_2875273B0;
  v2 = *(this + 7);
  if (v2)
  {
    TGrammar::~TGrammar(v2);
    MEMORY[0x26672B1B0]();
  }

  v3 = *(this + 8);
  if (v3)
  {
    TLexerLexicon::~TLexerLexicon(v3);
    MEMORY[0x26672B1B0]();
  }

  v5 = *(this + 1);
  v4 = *(this + 2);
  if (v4 != v5)
  {
    v6 = 0;
    do
    {
      v7 = *(v5 + 8 * v6);
      if (v7)
      {
        if (*(v7 + 23) < 0)
        {
          operator delete(*v7);
        }

        MEMORY[0x26672B1B0](v7, 0x1092C40D41393B2);
        v5 = *(this + 1);
        v4 = *(this + 2);
      }

      ++v6;
    }

    while (v6 < (v4 - v5) >> 3);
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  if (v9 != v8)
  {
    v10 = 0;
    do
    {
      if (v8[v10])
      {
        MEMORY[0x26672B1B0](v8[v10], 0x1000C4052888210);
        v8 = *(this + 4);
        v9 = *(this + 5);
      }

      ++v10;
    }

    while (v10 < (v9 - v8) >> 3);
  }

  if (v8)
  {
    *(this + 5) = v8;
    operator delete(v8);
  }

  v11 = *(this + 1);
  if (v11)
  {
    *(this + 2) = v11;
    operator delete(v11);
  }
}

{
  TGrammarCompiler::~TGrammarCompiler(this);

  JUMPOUT(0x26672B1B0);
}

void TGrammarCompiler::loadRule(uint64_t a1, TLexer *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v167 = *MEMORY[0x277D85DE8];
  Token = nextToken(a2, a2, a3, a4, a5);
  if (*Token != 1)
  {
    loggableToken(a2, Token);
    if (__p[23] >= 0)
    {
      v87 = __p;
    }

    else
    {
      v87 = *__p;
    }

    tknPrintf("Error: %sExpected a rule symbol\n", v83, v84, v85, v86, v87);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    std::string::basic_string[abi:ne200100]<0>(__sz, &byte_262899963);
    *__p = byte_287529580;
    if (SBYTE7(v136) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], __sz[0], __sz[1]);
    }

    else
    {
      *&__p[8] = *__sz;
      v124[0] = v136;
    }

    *__p = &unk_287527330;
    if (v124[0] >= 0)
    {
      v104 = &__p[8];
    }

    else
    {
      v104 = *&__p[8];
    }

    conditionalAssert(v104, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 855, v88, v89);
    *__p = byte_287529580;
    if (SHIBYTE(v124[0]) < 0)
    {
      operator delete(*&__p[8]);
    }

    if (SBYTE7(v136) < 0)
    {
      operator delete(__sz[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *exception = byte_287529580;
    v106 = (exception + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v106, *__p, *&__p[8]);
    }

    else
    {
      v113 = *__p;
      exception[3] = *&__p[16];
      *&v106->__r_.__value_.__l.__data_ = v113;
    }

    *exception = &unk_287527330;
  }

  v117 = *(Token + 16);
  v116 = TGrammar::addNonTerminal(*(a1 + 56), *(Token + 8), 1);
  v13 = nextToken(a2, v9, v10, v11, v12);
  if (*v13 != 11)
  {
    loggableToken(a2, v13);
    if (__p[23] >= 0)
    {
      v94 = __p;
    }

    else
    {
      v94 = *__p;
    }

    tknPrintf("Error: %sExpected '=' after LHS\n", v90, v91, v92, v93, v94);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    std::string::basic_string[abi:ne200100]<0>(__sz, &byte_262899963);
    *__p = byte_287529580;
    if (SBYTE7(v136) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], __sz[0], __sz[1]);
    }

    else
    {
      *&__p[8] = *__sz;
      v124[0] = v136;
    }

    *__p = &unk_287527330;
    if (v124[0] >= 0)
    {
      v107 = &__p[8];
    }

    else
    {
      v107 = *&__p[8];
    }

    conditionalAssert(v107, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 867, v95, v96);
    *__p = byte_287529580;
    if (SHIBYTE(v124[0]) < 0)
    {
      operator delete(*&__p[8]);
    }

    if (SBYTE7(v136) < 0)
    {
      operator delete(__sz[0]);
    }

    v108 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *v108 = byte_287529580;
    v109 = (v108 + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v109, *__p, *&__p[8]);
    }

    else
    {
      v114 = *__p;
      v108[3] = *&__p[16];
      *&v109->__r_.__value_.__l.__data_ = v114;
    }

    *v108 = &unk_287527330;
  }

  v18 = 0;
  v118 = 0;
  v133[1] = 0;
  v133[0] = 0;
  v132 = v133;
  v130 = 0;
  __src = 0;
  v131 = 0;
  v166 = 0u;
  v165 = 0u;
  v164 = 0u;
  v163 = 0u;
  v162 = 0u;
  v161 = 0u;
  v160 = 0u;
  v159 = 0u;
  v158 = 0u;
  v157 = 0u;
  v156 = 0u;
  v155 = 0u;
  v154 = 0u;
  v153 = 0u;
  v152 = 0u;
  v151 = 0u;
  v150 = 0u;
  v149 = 0u;
  v148 = 0u;
  v147 = 0u;
  v146 = 0u;
  v145 = 0u;
  v144 = 0u;
  v143 = 0u;
  v142 = 0u;
  v141 = 0u;
  v140 = 0u;
  v139 = 0u;
  v138 = 0u;
  v137 = 0u;
  v136 = 0u;
  *__sz = 0u;
  v127 = 0;
  v126 = 0;
  v128 = 0;
  while (1)
  {
    while (1)
    {
      v19 = nextToken(a2, v14, v15, v16, v17);
      v20 = v19;
      v21 = *v19;
      if (*v19 > 11)
      {
        break;
      }

      if (v21 == 1)
      {
        __sz[v18] = TGrammar::addNonTerminal(*(a1 + 56), *(v19 + 8), 0);
        *__p = *(v20 + 8);
        std::__tree<wchar_t const*,TWideCharCompare,std::allocator<wchar_t const*>>::__emplace_unique_key_args<wchar_t const*,wchar_t const* const&>(&v132, __p);
      }

      else
      {
        if (v21 != 2)
        {
          goto LABEL_73;
        }

        *__p = v124;
        *&__p[8] = xmmword_26286B6F0;
        v125 = 1;
        TRegExp::stringToRegExp(*(v19 + 8), __p, 0, 0);
        v22 = *(a1 + 56);
        if (*&__p[16] >= *&__p[8])
        {
          if (v125)
          {
            *v121 = 0;
            TBuffer<wchar_t>::insert(__p, *&__p[16], v121, 1uLL);
            v23 = *__p;
            --*&__p[16];
          }

          else
          {
            v23 = *__p;
            if (*&__p[8])
            {
              *(*__p + 4 * *&__p[8] - 4) = 0;
            }
          }
        }

        else
        {
          v23 = *__p;
          *(*__p + 4 * *&__p[16]) = 0;
        }

        __sz[v18] = TGrammar::addTerminal(v22, v23);
        if (v125 == 1 && *__p != v124 && *__p)
        {
          MEMORY[0x26672B1B0]();
        }
      }

LABEL_20:
      if (a3 && *v20 != 1)
      {
        if ((*(*a3 + 16))(a3, *(v20 + 8), *v20 == 17, &v126))
        {
          if (v128 >= 0)
          {
            v67 = &v126;
          }

          else
          {
            v67 = v126;
          }

          std::string::basic_string[abi:ne200100]<0>(v121, v67);
          *__p = byte_287529580;
          if ((v121[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&__p[8], *v121, *&v121[8]);
          }

          else
          {
            *&__p[8] = *v121;
            v124[0] = *&v121[16];
          }

          *__p = &unk_287526298;
          if (v124[0] >= 0)
          {
            v70 = &__p[8];
          }

          else
          {
            v70 = *&__p[8];
          }

          conditionalAssert(v70, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 910, v68, v69);
          *__p = byte_287529580;
          if (SHIBYTE(v124[0]) < 0)
          {
            operator delete(*&__p[8]);
          }

          if ((v121[23] & 0x80000000) != 0)
          {
            operator delete(*v121);
          }

          v71 = __cxa_allocate_exception(0x20uLL);
          if (v128 >= 0)
          {
            v72 = &v126;
          }

          else
          {
            v72 = v126;
          }

          std::string::basic_string[abi:ne200100]<0>(__p, v72);
          *v71 = byte_287529580;
          v73 = (v71 + 1);
          if ((__p[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v73, *__p, *&__p[8]);
          }

          else
          {
            v77 = *__p;
            v71[3] = *&__p[16];
            *&v73->__r_.__value_.__l.__data_ = v77;
          }

          *v71 = &unk_287526298;
        }

        v28 = HIBYTE(v128);
        if (v128 < 0)
        {
          v28 = v127;
        }

        if (v28)
        {
          loggableToken(a2, v20);
          v33 = __p;
          if (__p[23] < 0)
          {
            v33 = *__p;
          }

          v34 = &v126;
          if (v128 < 0)
          {
            v34 = v126;
          }

          tknPrintf("Warning: %s%s\n", v29, v30, v31, v32, v33, v34);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }
      }

      v134[v18] = 0;
      v35 = nextToken(a2, v24, v25, v26, v27);
      v36 = *(a2 + 3);
      if (*v35 == 25)
      {
        v133[v118 + 66] = v36;
        v133[v118++ + 2] = v18;
      }

      else if (v36)
      {
        *(a2 + 3) = v36 - 1;
      }

      ++v18;
    }

    if (v21 == 17)
    {
      __sz[v18] = TGrammar::addTerminal(*(a1 + 56), *(v19 + 8));
      goto LABEL_20;
    }

    if (v21 != 12 && v21 != 14)
    {
LABEL_73:
      loggableToken(a2, v19);
      v57 = __p[23];
      v58 = *__p;
      loggableUnicode(*(v20 + 8), v121);
      v63 = __p;
      if (v57 < 0)
      {
        v63 = v58;
      }

      if (v121[23] >= 0)
      {
        v64 = v121;
      }

      else
      {
        v64 = *v121;
      }

      tknPrintf("Error: %sUnexpected RHS symbol '%s'\n", v59, v60, v61, v62, v63, v64);
      if ((v121[23] & 0x80000000) != 0)
      {
        operator delete(*v121);
      }

      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      std::string::basic_string[abi:ne200100]<0>(v121, &byte_262899963);
      *__p = byte_287529580;
      if ((v121[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&__p[8], *v121, *&v121[8]);
      }

      else
      {
        *&__p[8] = *v121;
        v124[0] = *&v121[16];
      }

      *__p = &unk_287527330;
      if (v124[0] >= 0)
      {
        v78 = &__p[8];
      }

      else
      {
        v78 = *&__p[8];
      }

      conditionalAssert(v78, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 985, v65, v66);
      *__p = byte_287529580;
      if (SHIBYTE(v124[0]) < 0)
      {
        operator delete(*&__p[8]);
      }

      if ((v121[23] & 0x80000000) != 0)
      {
        operator delete(*v121);
      }

      v79 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *v79 = byte_287529580;
      v80 = (v79 + 1);
      if ((__p[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v80, *__p, *&__p[8]);
      }

      else
      {
        v82 = *__p;
        v79[3] = *&__p[16];
        *&v80->__r_.__value_.__l.__data_ = v82;
      }

      *v79 = &unk_287527330;
    }

    v38 = 0;
    if (v18)
    {
      while (v134[v38] == 1)
      {
        if (v18 == ++v38)
        {
          goto LABEL_66;
        }
      }
    }

    if (v38 == v18)
    {
LABEL_66:
      loggableToken(a2, v19);
      if (__p[23] >= 0)
      {
        v54 = __p;
      }

      else
      {
        v54 = *__p;
      }

      tknPrintf("Error: %sRight hand side must consist of at least one non-optional symbol\n", v50, v51, v52, v53, v54);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      std::string::basic_string[abi:ne200100]<0>(v121, &byte_262899963);
      *__p = byte_287529580;
      if ((v121[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&__p[8], *v121, *&v121[8]);
      }

      else
      {
        *&__p[8] = *v121;
        v124[0] = *&v121[16];
      }

      *__p = &unk_287527330;
      if (v124[0] >= 0)
      {
        v74 = &__p[8];
      }

      else
      {
        v74 = *&__p[8];
      }

      conditionalAssert(v74, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 951, v55, v56);
      *__p = byte_287529580;
      if (SHIBYTE(v124[0]) < 0)
      {
        operator delete(*&__p[8]);
      }

      if ((v121[23] & 0x80000000) != 0)
      {
        operator delete(*v121);
      }

      v75 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *v75 = byte_287529580;
      v76 = (v75 + 1);
      if ((__p[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v76, *__p, *&__p[8]);
      }

      else
      {
        v81 = *__p;
        v75[3] = *&__p[16];
        *&v76->__r_.__value_.__l.__data_ = v81;
      }

      *v75 = &unk_287527330;
    }

    v39 = TGrammar::addRule(*(a1 + 56), v117, v116, __sz, v134, v18);
    v40 = v130;
    if (v130 >= v131)
    {
      v42 = (v130 - __src) >> 3;
      if ((v42 + 1) >> 61)
      {
        std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
      }

      v43 = (v131 - __src) >> 2;
      if (v43 <= v42 + 1)
      {
        v43 = v42 + 1;
      }

      if (v131 - __src >= 0x7FFFFFFFFFFFFFF8)
      {
        v44 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v44 = v43;
      }

      if (v44)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<TParam *>>(&__src, v44);
      }

      v45 = (8 * v42);
      *v45 = v39;
      v41 = 8 * v42 + 8;
      v46 = v45 - (v130 - __src);
      memcpy(v46, __src, v130 - __src);
      v47 = __src;
      __src = v46;
      v130 = v41;
      v131 = 0;
      if (v47)
      {
        operator delete(v47);
      }
    }

    else
    {
      *v130 = v39;
      v41 = (v40 + 8);
    }

    v130 = v41;
    if (v118)
    {
      *(a2 + 3) = v133[--v118 + 66];
      v48 = v133[v118 + 2];
      v18 = v48 + 1;
      v134[v48] = 1;
    }

    else
    {
      v18 = 0;
      v118 = 0;
      if (*v20 == 14)
      {
        v49 = *(a2 + 3);
        if (v49)
        {
          *(a2 + 3) = v49 - 1;
        }

        *__p = v124;
        *&__p[8] = xmmword_26286B6F0;
        v125 = 1;
        compileCode(a2, __p, &v132, (a1 + 8), v17);
        if ((*&__p[16] + 1) < 0x7FFFFFFF)
        {
          operator new[]();
        }

        loggableToken(a2, v20);
        if (v121[23] >= 0)
        {
          v101 = v121;
        }

        else
        {
          v101 = *v121;
        }

        tknPrintf("Error: %sRule is too large\n", v97, v98, v99, v100, v101);
        if ((v121[23] & 0x80000000) != 0)
        {
          operator delete(*v121);
        }

        std::string::basic_string[abi:ne200100]<0>(v119, &byte_262899963);
        *v121 = byte_287529580;
        if (SHIBYTE(v120) < 0)
        {
          std::string::__init_copy_ctor_external(&v121[8], v119[0], v119[1]);
        }

        else
        {
          *&v121[8] = *v119;
          v122 = v120;
        }

        *v121 = &unk_287527330;
        if (v122 >= 0)
        {
          v110 = &v121[8];
        }

        else
        {
          v110 = *&v121[8];
        }

        conditionalAssert(v110, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 1007, v102, v103);
        *v121 = byte_287529580;
        if (SHIBYTE(v122) < 0)
        {
          operator delete(*&v121[8]);
        }

        if (SHIBYTE(v120) < 0)
        {
          operator delete(v119[0]);
        }

        v111 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v121, &byte_262899963);
        *v111 = byte_287529580;
        v112 = (v111 + 1);
        if ((v121[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v112, *v121, *&v121[8]);
        }

        else
        {
          v115 = *v121;
          v111[3] = *&v121[16];
          *&v112->__r_.__value_.__l.__data_ = v115;
        }

        *v111 = &unk_287527330;
      }
    }
  }
}

void sub_2625946D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, void *a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((v27 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v27)
  {
LABEL_6:
    if (LOBYTE(STACK[0x490]) == 1 && a27 != v29 && a27)
    {
      MEMORY[0x26672B1B0]();
    }

    if (SLOBYTE(STACK[0x4AF]) < 0)
    {
      operator delete(STACK[0x498]);
    }

    v31 = STACK[0x4B0];
    if (STACK[0x4B0])
    {
      STACK[0x4B8] = v31;
      operator delete(v31);
    }

    std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&STACK[0x4C8], STACK[0x4D0]);
    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v28);
  goto LABEL_6;
}

void sub_262594820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, void *a28, int a29, __int16 a30, char a31, char a32, int a33, __int16 a34, char a35, char a36)
{
  if (a32 < 0)
  {
    operator delete(__p);
    if ((v37 & 1) == 0)
    {
LABEL_6:
      if (SLOBYTE(STACK[0x4AF]) < 0)
      {
        operator delete(STACK[0x498]);
      }

      v39 = STACK[0x4B0];
      if (STACK[0x4B0])
      {
        STACK[0x4B8] = v39;
        operator delete(v39);
      }

      std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&STACK[0x4C8], STACK[0x4D0]);
      _Unwind_Resume(a1);
    }
  }

  else if (!v37)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v36);
  goto LABEL_6;
}

void sub_2625948A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
    if ((v32 & 1) == 0)
    {
LABEL_6:
      if (a2 == 1)
      {
        v35 = __cxa_begin_catch(a1);
        loggableToken(v29, v30);
        if (*(v35 + 31) < 0)
        {
          v40 = v35[1];
        }

        tknPrintf("Error : %s%s\n", v36, v37, v38, v39);
        if (a29 < 0)
        {
          operator delete(__p);
        }

        __cxa_rethrow();
      }

      if (SLOBYTE(STACK[0x4AF]) < 0)
      {
        operator delete(STACK[0x498]);
      }

      v41 = STACK[0x4B0];
      if (STACK[0x4B0])
      {
        STACK[0x4B8] = v41;
        operator delete(v41);
      }

      std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&STACK[0x4C8], STACK[0x4D0]);
      _Unwind_Resume(a1);
    }
  }

  else if (!v32)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v31);
  goto LABEL_6;
}

void sub_2625948DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, void *a28, int a29, __int16 a30, char a31, char a32, int a33, __int16 a34, char a35, char a36)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v40 = __cxa_begin_catch(a1);
    loggableToken(v36, v37);
    if (*(v40 + 31) < 0)
    {
      v45 = v40[1];
    }

    tknPrintf("Error : %s%s\n", v41, v42, v43, v44);
    if (a32 < 0)
    {
      operator delete(a27);
    }

    __cxa_rethrow();
  }

  if (SLOBYTE(STACK[0x4AF]) < 0)
  {
    operator delete(STACK[0x498]);
  }

  v46 = STACK[0x4B0];
  if (STACK[0x4B0])
  {
    STACK[0x4B8] = v46;
    operator delete(v46);
  }

  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&STACK[0x4C8], STACK[0x4D0]);
  _Unwind_Resume(a1);
}

void sub_26259497C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (LOBYTE(STACK[0x490]) == 1)
  {
    TSegmenter::findSegmentEnd(&a24, v31);
  }

  if (a2 == 1)
  {
    v34 = __cxa_begin_catch(a1);
    loggableToken(v29, v30);
    if (*(v34 + 31) < 0)
    {
      v39 = v34[1];
    }

    tknPrintf("Error : %s%s\n", v35, v36, v37, v38);
    if (a29 < 0)
    {
      operator delete(a24);
    }

    __cxa_rethrow();
  }

  JUMPOUT(0x262594A5CLL);
}

void sub_262594A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  __cxa_end_catch();
  if (SLOBYTE(STACK[0x4AF]) < 0)
  {
    operator delete(STACK[0x498]);
  }

  v30 = STACK[0x4B0];
  if (STACK[0x4B0])
  {
    STACK[0x4B8] = v30;
    operator delete(v30);
  }

  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&STACK[0x4C8], STACK[0x4D0]);
  _Unwind_Resume(a1);
}

void sub_262594A48(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x262594A88);
}

uint64_t nextToken(TLexer *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 3);
  v6 = *(a1 + 11);
  if (v5 >= (*(a1 + 12) - v6) >> 3)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    tknPrintf("Error: %s : Unexpected end of file\n", a2, a3, a4, a5, v9);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *v32 = byte_287529580;
    if (SHIBYTE(v31) < 0)
    {
      std::string::__init_copy_ctor_external(&v32[8], __p[0], __p[1]);
    }

    else
    {
      *&v32[8] = *__p;
      v33 = v31;
    }

    *v32 = &unk_287527330;
    if (v33 >= 0)
    {
      v22 = &v32[8];
    }

    else
    {
      v22 = *&v32[8];
    }

    conditionalAssert(v22, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 211, v10, v11);
    *v32 = byte_287529580;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(*&v32[8]);
    }

    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v32, &byte_262899963);
    *exception = byte_287529580;
    v24 = (exception + 1);
    if ((v32[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v24, *v32, *&v32[8]);
    }

    else
    {
      v25 = *v32;
      exception[3] = *&v32[16];
      *&v24->__r_.__value_.__l.__data_ = v25;
    }

    *exception = &unk_287527330;
  }

  *(a1 + 3) = v5 + 1;
  v7 = *(v6 + 8 * v5);
  if (v7 && *v7 == -1)
  {
    loggableToken(a1, v7);
    v12 = v32[23];
    v13 = *v32;
    loggableUnicode(*(v7 + 8), __p);
    if (v12 >= 0)
    {
      v18 = v32;
    }

    else
    {
      v18 = v13;
    }

    if (v31 >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    tknPrintf("Error: %sFound unexpected token '%s'\n", v14, v15, v16, v17, v18, v19);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[0]);
    }

    if ((v32[23] & 0x80000000) != 0)
    {
      operator delete(*v32);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *v32 = byte_287529580;
    if (SHIBYTE(v31) < 0)
    {
      std::string::__init_copy_ctor_external(&v32[8], __p[0], __p[1]);
    }

    else
    {
      *&v32[8] = *__p;
      v33 = v31;
    }

    *v32 = &unk_287527330;
    if (v33 >= 0)
    {
      v26 = &v32[8];
    }

    else
    {
      v26 = *&v32[8];
    }

    conditionalAssert(v26, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 219, v20, v21);
    *v32 = byte_287529580;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(*&v32[8]);
    }

    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[0]);
    }

    v27 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v32, &byte_262899963);
    *v27 = byte_287529580;
    v28 = (v27 + 1);
    if ((v32[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v28, *v32, *&v32[8]);
    }

    else
    {
      v29 = *v32;
      v27[3] = *&v32[16];
      *&v28->__r_.__value_.__l.__data_ = v29;
    }

    *v27 = &unk_287527330;
  }

  return *(v6 + 8 * v5);
}

{
  v5 = *(a1 + 3);
  v6 = *(a1 + 11);
  if (v5 >= (*(a1 + 12) - v6) >> 3)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    tknPrintf("Error: %s : Unexpected end of file\n", a2, a3, a4, a5, v9);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *v32 = byte_287529580;
    if (SHIBYTE(v31) < 0)
    {
      std::string::__init_copy_ctor_external(&v32[8], __p[0], __p[1]);
    }

    else
    {
      *&v32[8] = *__p;
      v33 = v31;
    }

    *v32 = &unk_287527330;
    if (v33 >= 0)
    {
      v22 = &v32[8];
    }

    else
    {
      v22 = *&v32[8];
    }

    conditionalAssert(v22, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/objectparser.cpp", 457, v10, v11);
    *v32 = byte_287529580;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(*&v32[8]);
    }

    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v32, &byte_262899963);
    *exception = byte_287529580;
    v24 = (exception + 1);
    if ((v32[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v24, *v32, *&v32[8]);
    }

    else
    {
      v25 = *v32;
      exception[3] = *&v32[16];
      *&v24->__r_.__value_.__l.__data_ = v25;
    }

    *exception = &unk_287527330;
  }

  *(a1 + 3) = v5 + 1;
  v7 = *(v6 + 8 * v5);
  if (v7 && *v7 == -1)
  {
    loggableToken(a1, v7);
    v12 = v32[23];
    v13 = *v32;
    loggableUnicode(*(v7 + 8), __p);
    if (v12 >= 0)
    {
      v18 = v32;
    }

    else
    {
      v18 = v13;
    }

    if (v31 >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    tknPrintf("Error: %sSyntax error, found unexpected token '%s'\n", v14, v15, v16, v17, v18, v19);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[0]);
    }

    if ((v32[23] & 0x80000000) != 0)
    {
      operator delete(*v32);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *v32 = byte_287529580;
    if (SHIBYTE(v31) < 0)
    {
      std::string::__init_copy_ctor_external(&v32[8], __p[0], __p[1]);
    }

    else
    {
      *&v32[8] = *__p;
      v33 = v31;
    }

    *v32 = &unk_287527330;
    if (v33 >= 0)
    {
      v26 = &v32[8];
    }

    else
    {
      v26 = *&v32[8];
    }

    conditionalAssert(v26, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/objectparser.cpp", 465, v20, v21);
    *v32 = byte_287529580;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(*&v32[8]);
    }

    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[0]);
    }

    v27 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v32, &byte_262899963);
    *v27 = byte_287529580;
    v28 = (v27 + 1);
    if ((v32[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v28, *v32, *&v32[8]);
    }

    else
    {
      v29 = *v32;
      v27[3] = *&v32[16];
      *&v28->__r_.__value_.__l.__data_ = v29;
    }

    *v27 = &unk_287527330;
  }

  return *(v6 + 8 * v5);
}

void sub_262594E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v28 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v28)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v27);
  goto LABEL_6;
}

void TSyntaxException::~TSyntaxException(void **this)
{
  *this = &unk_287529580;
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

void *compileCode(TLexer *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  nextToken(a1, a2, a3, a4, a5);
  while (1)
  {
    result = nextToken(a1, v9, v10, v11, v12);
    if (*result == 13)
    {
      break;
    }

    v15 = *(a1 + 3);
    if (v15)
    {
      *(a1 + 3) = v15 - 1;
    }

    compileInstruction(a1, a2, a3, a4, v14);
  }

  return result;
}

uint64_t TGrammarCompiler::loadRules(uint64_t result, TLexer *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a2 + 3) < ((*(a2 + 12) - *(a2 + 11)) >> 3))
  {
    TGrammarCompiler::loadRule(result, a2, a3, a4, a5);
  }

  return result;
}

void sub_262595688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  goto LABEL_6;
}

void sub_2625956BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void TGrammarCompiler::registerRules(uint64_t a1, TInputStream *this, uint64_t a3)
{
  if (*(this + 8) == 1)
  {
    if (TInputStream::verifyVersion(this, "GrammarFormatVersion", 2uLL, 2uLL, 2uLL))
    {
      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(&v11, &byte_262899963);
      *exception = byte_287529580;
      v9 = (exception + 1);
      if (SHIBYTE(v12) < 0)
      {
        std::string::__init_copy_ctor_external(v9, v11, *(&v11 + 1));
      }

      else
      {
        v10 = v11;
        exception[3] = v12;
        *&v9->__r_.__value_.__l.__data_ = v10;
      }

      *exception = &unk_287528000;
    }

    TLexer::TLexer(&v11, this, 1uLL, *(a1 + 64), 0);
    TGrammarCompiler::loadRules(a1, &v11, a3, v6, v7);
    TLexer::~TLexer(&v11);
  }
}

void sub_262595830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

TLexerLexicon *TGrammarCompiler::finalize(TGrammarCompiler *this)
{
  v2 = *(this + 7);
  v14 = v2;
  v15 = 0;
  TGrammar::forEachNonTerminal<TIntegrityChecker>(v2, &v14);
  TGrammar::forEachTerminal<TIntegrityChecker>(v2, &v14);
  if (v15 == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v10, &byte_262899963);
    *__p = byte_287529580;
    if (SHIBYTE(v11) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], v10[0], v10[1]);
    }

    else
    {
      *&__p[8] = *v10;
      v13 = v11;
    }

    *__p = &unk_287526298;
    if (v13 >= 0)
    {
      v6 = &__p[8];
    }

    else
    {
      v6 = *&__p[8];
    }

    conditionalAssert(v6, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 1080, v4, v5);
    *__p = byte_287529580;
    if (SHIBYTE(v13) < 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *exception = byte_287529580;
    v8 = (exception + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v8, *__p, *&__p[8]);
    }

    else
    {
      v9 = *__p;
      exception[3] = *&__p[16];
      *&v8->__r_.__value_.__l.__data_ = v9;
    }

    *exception = &unk_287526298;
  }

  TGrammar::finalize(*(this + 7));
  result = *(this + 8);
  if (result)
  {
    TLexerLexicon::~TLexerLexicon(result);
    result = MEMORY[0x26672B1B0]();
  }

  *(this + 8) = 0;
  return result;
}

void sub_262595A70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, void *a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25)
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

uint64_t TGrammarCompiler::getAttributeValue(uint64_t a1, __int32 *a2, TAllocator *a3, _BYTE *a4)
{
  if (!wcscmp(a2, dword_26286C3E8))
  {
    v23 = v25;
    v24 = xmmword_26286B6F0;
    v26 = 1;
    v10 = *(a1 + 8);
    {
      operator new();
    }

    TLocaleInfo::valueToString(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v10, &v23, 0);
    if ((*(&v24 + 1) + 1) >> 62)
    {
      v11 = -1;
    }

    else
    {
      v11 = 4 * (*(&v24 + 1) + 1);
    }

    v12 = TAllocator::allocate(a3, v11);
    if (*(&v24 + 1) >= v24)
    {
      if (v26)
      {
        v27 = 0;
        TBuffer<wchar_t>::insert(&v23, *(&v24 + 1), &v27, 1uLL);
        v13 = v23;
        --*(&v24 + 1);
      }

      else
      {
        v13 = v23;
        if (v24)
        {
          v23[v24 - 1] = 0;
        }
      }
    }

    else
    {
      v13 = v23;
      v23[*(&v24 + 1)] = 0;
    }

    wcscpy(v12, v13);
    if (a4)
    {
      *a4 = 1;
    }

    if (v26 != 1)
    {
      return 1;
    }

    v20 = v23;
    if (v23 == v25)
    {
      return 1;
    }

LABEL_42:
    if (v20)
    {
      MEMORY[0x26672B1B0](v20, 0x1000C4052888210);
    }

    return 1;
  }

  if (!wcscmp(a2, dword_26286C400))
  {
    v23 = v25;
    v24 = xmmword_26286B6F0;
    v26 = 1;
    v14 = *(a1 + 8);
    v15 = *(a1 + 16);
    {
      operator new();
    }

    TLocaleInfo::valueToString(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v15 + v14, &v23, 0);
    if ((*(&v24 + 1) + 1) >> 62)
    {
      v16 = -1;
    }

    else
    {
      v16 = 4 * (*(&v24 + 1) + 1);
    }

    v17 = TAllocator::allocate(a3, v16);
    if (*(&v24 + 1) >= v24)
    {
      if (v26)
      {
        v27 = 0;
        TBuffer<wchar_t>::insert(&v23, *(&v24 + 1), &v27, 1uLL);
        v18 = v23;
        --*(&v24 + 1);
      }

      else
      {
        v18 = v23;
        if (v24)
        {
          v23[v24 - 1] = 0;
        }
      }
    }

    else
    {
      v18 = v23;
      v23[*(&v24 + 1)] = 0;
    }

    wcscpy(v17, v18);
    if (a4)
    {
      *a4 = 1;
    }

    if (v26 != 1)
    {
      return 1;
    }

    v20 = v23;
    if (v23 == v25)
    {
      return 1;
    }

    goto LABEL_42;
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    v9 = *(v8 + 16) + 8 * *(a1 + 32);
  }

  else
  {
    v9 = a1 + 48;
  }

  if ((*(*v9 + 8) & 4) != 0 || wcscmp(a2, dword_26286C410))
  {
    return getAttributeValue(a2, *(a1 + 40), a4);
  }

  if (a4)
  {
    *a4 = 1;
  }

  if (v8)
  {
    v21 = *(v8 + 16) + 8 * *(a1 + 32);
  }

  else
  {
    v21 = a1 + 48;
  }

  v22 = *(*v21 + 16);
  return 1;
}

void sub_262595E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  MEMORY[0x26672B1B0](v10, 0x1070C40ADD13FEBLL);
  if (LOBYTE(STACK[0x420]) == 1 && a10 != v11)
  {
    if (a10)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t getAttributeValue(__int32 *a1, uint64_t *a2, _BYTE *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (!a2)
  {
    return 1;
  }

  v5 = *a2;
  if (!*a2)
  {
    return 1;
  }

  v6 = a2 + 1;
  v7 = 1;
  while (wcscmp(a1, *v5))
  {
    v8 = *v6++;
    v5 = v8;
    if (!v8)
    {
      return v7;
    }
  }

  if (a3)
  {
    *a3 = 1;
  }

  v7 = *(v5 + 8);
  v9 = *(v5 + 16);
  return v7;
}

uint64_t TGrammarCompiler::compareData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 40);
  v4 = *(a3 + 40);
  if (v3)
  {
    v5 = *v3;
    if (*v3)
    {
      v6 = 0;
      v7 = v3 + 1;
      while (1)
      {
        v8 = *(v5 + 8);
        if (!v8)
        {
          goto LABEL_7;
        }

        if (v8 != 1)
        {
          break;
        }

        if (**(v5 + 16))
        {
          goto LABEL_7;
        }

LABEL_8:
        v9 = *v7++;
        v5 = v9;
        if (!v9)
        {
          goto LABEL_13;
        }
      }

      if (!*(v5 + 16))
      {
        goto LABEL_8;
      }

LABEL_7:
      ++v6;
      goto LABEL_8;
    }
  }

  v6 = 0;
LABEL_13:
  if (v4)
  {
    v10 = *v4;
    if (*v4)
    {
      v11 = 0;
      v12 = v4 + 1;
      while (1)
      {
        v13 = *(v10 + 8);
        if (v13)
        {
          if (v13 == 1)
          {
            if (!**(v10 + 16))
            {
              goto LABEL_28;
            }
          }

          else if (!*(v10 + 16))
          {
            goto LABEL_28;
          }
        }

        if (getAttributeValue(*v10, v3, 0) != v13)
        {
          goto LABEL_32;
        }

        if (v13)
        {
          if (v13 == 1)
          {
            if (wcscmp(v14, *(v10 + 16)))
            {
              goto LABEL_32;
            }
          }

          else if (*(v10 + 16) != v14)
          {
LABEL_32:
            v16 = 0;
            goto LABEL_33;
          }
        }

        ++v11;
LABEL_28:
        v15 = *v12++;
        v10 = v15;
        if (!v15)
        {
          goto LABEL_31;
        }
      }
    }
  }

  v11 = 0;
LABEL_31:
  v16 = 1;
LABEL_33:
  if (v6 == v11)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

void *TGrammarCompiler::logData(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a2 + 40);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, "{ ", 2);
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      v6 = v4 + 1;
      do
      {
        v7 = *(v5 + 8);
        v8 = operator<<(a3, *v5);
        if (v7 == 1)
        {
          v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " = ", 4);
          v8 = operator<<(v9, *(*(v6 - 1) + 16));
          v10 = "; ";
          v11 = 3;
        }

        else
        {
          v10 = " = [non-serializable object]; ";
          v11 = 30;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
        v12 = *v6++;
        v5 = v12;
      }

      while (v12);
    }
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, "}", 1);
}

void TGrammarCompiler::makeData(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v188 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  *(a2 + 424) = 0;
  v3 = *(*(a2 + 408) + 40);
  v5 = (v3 + 1);
  v4 = *v3;
  memset(__src, 0, 512);
  __p = 0;
  v179 = 0;
  v180 = 0;
  std::vector<TGrammarCompiler::TArgument>::resize(&__p, 0);
  if (v4 < 2)
  {
    goto LABEL_398;
  }

  v171 = v2 + 8;
  v175 = v3;
  v176 = v4;
  v174 = v2;
  while (1)
  {
    v11 = *v5;
    if (*v5 > 6)
    {
      if (v11 > 8)
      {
        if ((v11 - 9) < 2)
        {
          if (*(v179 - 2) == 1)
          {
            AttributeValue = 0;
            v19 = *(v179 - 1);
            {
              operator new();
            }

            DigitExtended = TLocaleInfo::stringToInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v19, &AttributeValue);
            v20 = DigitExtended != 0;
            v11 = *v5;
          }

          else
          {
            v20 = *(v179 - 1) != 0;
          }

          if (v20 != (v11 != 10))
          {
LABEL_35:
            v5 += 4 * *(v5 + 4);
            goto LABEL_111;
          }

          goto LABEL_110;
        }

        if (v11 == 12)
        {
          v24 = v179;
          if (*(v179 - 2) == 1)
          {
            AttributeValue = 0;
            v25 = *(v179 - 1);
            {
              operator new();
            }

            v26 = TLocaleInfo::stringToInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v25, &AttributeValue);
            v24 = v179;
          }

          else
          {
            v26 = *(v179 - 1) != 0;
          }

          v179 = v24 - 16;
          v48 = &unk_26286C434;
          if (v26)
          {
            v48 = &unk_26286C42C;
          }

          AttributeValue = 1;
          *&v182 = v48;
          std::vector<TGrammarCompiler::TArgument>::push_back[abi:ne200100](&__p, &AttributeValue);
          goto LABEL_110;
        }

        if (v11 != 11)
        {
          goto LABEL_111;
        }

        goto LABEL_397;
      }

      if (v11 == 7)
      {
        v179 -= 16;
        v5 += 4;
        goto LABEL_111;
      }

      if (v11 == 8)
      {
        goto LABEL_35;
      }

      goto LABEL_111;
    }

    if (v11 > 3)
    {
      if (v11 != 4)
      {
        if (v11 != 5)
        {
          if (v11 == 6)
          {
            v21 = wcslen((v5 + 4));
            AttributeValue = getAttributeValue((v5 + 4), __src, 0);
            *&v182 = v22;
            std::vector<TGrammarCompiler::TArgument>::push_back[abi:ne200100](&__p, &AttributeValue);
            v23 = v5 + 4 + 4 * v21;
            goto LABEL_64;
          }

          goto LABEL_111;
        }

        v41 = (v5 + 4);
        v42 = wcslen((v5 + 4));
        v43 = v179 - 16;
        v44 = *(v2 + 416);
        v45 = *&__src[0];
        if (*&__src[0])
        {
          v46 = 0;
          while (1)
          {
            DigitExtended = wcscmp(*v45, v41);
            if (!DigitExtended)
            {
              break;
            }

            v47 = v46 + 1;
            v45 = *(__src + ++v46);
            if (!v45)
            {
              goto LABEL_69;
            }
          }

          *(v45 + 8) = *v43;
        }

        else
        {
          v47 = 0;
LABEL_69:
          DigitExtended = TAllocator::allocate(v44, 24);
          *DigitExtended = v41;
          v57 = __src + v47;
          *(DigitExtended + 8) = *v43;
          *v57 = DigitExtended;
          v57[1] = 0;
        }

        v3 = v175;
        v4 = v176;
        v5 = &v41[v42 + 1];
        v179 -= 16;
        goto LABEL_111;
      }

      v39 = *(v5 + 12);
      if (v39)
      {
        v40 = __p + 16 * (((v179 - __p) >> 4) - v39);
      }

      else
      {
        v40 = 0;
      }

      AttributeValue = (*(*(v5 + 4) + 24))(v40, *(v5 + 12), *(*(v5 + 4) + 48), *(*(v5 + 4) + 56), *(v2 + 416));
      *&v182 = v56;
      if (AttributeValue)
      {
        std::vector<TGrammarCompiler::TArgument>::resize(&__p, ((v179 - __p) >> 4) - v39);
        std::vector<TGrammarCompiler::TArgument>::push_back[abi:ne200100](&__p, &AttributeValue);
        v5 += 16;
        goto LABEL_111;
      }

      goto LABEL_397;
    }

    if (v11 == 1)
    {
      v27 = *(v5 + 4);
      v28 = (v5 + 8);
      v29 = (v5 + 8 + 4 * wcslen((v5 + 8)) + 4);
      v30 = wcslen(v29);
      if (*(v179 - 2) < 2uLL)
      {
        v31 = v30;
        v32 = *(v179 - 1);
        v179 -= 16;
        v185[0] = 0;
        {
          operator new();
        }

        v33 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v32, v185);
        v34 = *(v2 + 408);
        v35 = *(v34 + 8);
        v36 = v35 - 1;
        if (v35 - 1 < v33)
        {
          goto LABEL_30;
        }

        if (!wcscmp(v28, "R"))
        {
          if (v27)
          {
            v51 = v36 + ~v33;
          }

          else
          {
            v51 = v33;
          }

          goto LABEL_85;
        }

        if (v35 == 1)
        {
LABEL_30:
          v37 = &unk_26286C650;
          v38 = 1;
          v2 = v174;
LABEL_62:
          v4 = v176;
          goto LABEL_63;
        }

        v50 = 0;
        v51 = 0;
        v52 = *(v34 + 16);
        v53 = v35 - 2;
        while (1)
        {
          if (v27)
          {
            v54 = v53;
          }

          else
          {
            v54 = v51;
          }

          v55 = *(v52 + 8 * v54);
          if ((*(v55 + 8) & 4) == 0 && !wcscmp(v28, *(v55 + 16)))
          {
            if (v50 == v33)
            {
              v3 = v175;
LABEL_85:
              v2 = v174;
              v4 = v176;
              if (v51 == v36 || (v62 = *(v171 + 8 * v51)) == 0)
              {
                v37 = &unk_26286C650;
                v38 = 1;
              }

              else
              {
                v38 = TGrammarCompiler::getAttributeValue(v62, v29, *(v174 + 416), 0);
              }

LABEL_63:
              AttributeValue = v38;
              *&v182 = v37;
              std::vector<TGrammarCompiler::TArgument>::push_back[abi:ne200100](&__p, &AttributeValue);
              v23 = &v29[v31];
LABEL_64:
              v5 = v23 + 4;
              goto LABEL_111;
            }

            ++v50;
          }

          ++v51;
          --v53;
          if (v36 == v51)
          {
            v37 = &unk_26286C650;
            v38 = 1;
            v2 = v174;
            v3 = v175;
            goto LABEL_62;
          }
        }
      }

      goto LABEL_397;
    }

    if (v11 == 2)
    {
      AttributeValue = 1;
      *&v182 = v5 + 4;
      std::vector<TGrammarCompiler::TArgument>::push_back[abi:ne200100](&__p, &AttributeValue);
      DigitExtended = wcslen(v5);
      v23 = v5 + 4 * DigitExtended;
      goto LABEL_64;
    }

    if (v11 == 3)
    {
      break;
    }

LABEL_111:
    if (v4 <= (v5 - v3) >> 2)
    {
      if (*&__src[0])
      {
        v150 = 0;
          ;
        }

        v152 = 8 * v150;
        if (v150 >> 61)
        {
          v153 = -1;
        }

        else
        {
          v153 = 8 * v150;
        }

        v154 = TAllocator::allocate(*(v2 + 416), v153);
        memcpy(v154, __src, v152);
        *v2 = v154;
      }

      goto LABEL_398;
    }
  }

  v12 = *(v179 - 2);
  v13 = *(v179 - 1);
  v179 -= 16;
  v14 = *(v179 - 1);
  v15 = *(v179 - 2);
  v179 -= 16;
  v16 = *(v5 + 4);
  if (v15 > 1)
  {
    v17 = v14 != 0;
    if (v12 == 1)
    {
      v18 = *v13 == 0;
      goto LABEL_94;
    }

LABEL_93:
    v18 = v13 == 0;
LABEL_94:
    v63 = !v18;
    if (v16 > 15)
    {
      if (v16 == 17)
      {
        goto LABEL_106;
      }

      if (v16 != 16)
      {
        goto LABEL_396;
      }
    }

    else if (v16 != 10)
    {
      if (v16 != 11)
      {
LABEL_396:
        tknPrintf("Error: invalid operator used on objects\n", v7, v8, v9, v10);
        goto LABEL_397;
      }

LABEL_106:
      if (v17 != v63)
      {
        v61 = &unk_26286C434;
      }

      else
      {
        v61 = &unk_26286C42C;
      }

LABEL_109:
      *&v177 = 1;
      *(&v177 + 1) = v61;
      std::vector<TGrammarCompiler::TArgument>::push_back[abi:ne200100](&__p, &v177);
LABEL_110:
      v5 += 8;
      goto LABEL_111;
    }

    if (v17 != v63)
    {
      v61 = &unk_26286C42C;
    }

    else
    {
      v61 = &unk_26286C434;
    }

    goto LABEL_109;
  }

  if (v12 >= 2)
  {
    if (v15 == 1)
    {
      v49 = *v14 == 0;
    }

    else
    {
      v49 = v14 == 0;
    }

    v17 = !v49;
    goto LABEL_93;
  }

  v170 = *(v2 + 416);
  if (v16 <= 15)
  {
    if (v16 <= 13)
    {
      if (v16 == 1)
      {
        AttributeValue = 0;
        {
          operator new();
        }

        v66 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v13, &AttributeValue);
        v67 = wcslen(v14);
        v68 = v66 - v67;
        if (v66 <= v67)
        {
          v3 = v175;
        }

        else
        {
          v69 = TAllocator::allocate(v170, 4 * v66 + 4);
          v3 = v175;
          v70 = v69;
          memset_pattern16(v69, "0", 4 * v68);
          wcscpy(&v70[v68], v14);
          v14 = v70;
        }

        v61 = v14;
      }

      else
      {
        if (v16 != 2)
        {
          goto LABEL_150;
        }

        v58 = wcslen(v14);
        v59 = v58 + wcslen(v13) + 1;
        if (v59 >> 62)
        {
          v60 = -1;
        }

        else
        {
          v60 = 4 * v59;
        }

        v61 = TAllocator::allocate(v170, v60);
        wcscpy(v61, v14);
        wcscpy(&v61[v58], v13);
      }

      goto LABEL_109;
    }

    if (v16 == 14)
    {
      if (wcscmp(v14, v13) <= 0)
      {
        v61 = &unk_26286C42C;
      }

      else
      {
        v61 = &unk_26286C434;
      }

      goto LABEL_109;
    }

    v65 = wcscmp(v14, v13) < 0;
LABEL_137:
    if (v65)
    {
      v61 = &unk_26286C434;
    }

    else
    {
      v61 = &unk_26286C42C;
    }

    goto LABEL_109;
  }

  if (v16 <= 17)
  {
    if (v16 == 16)
    {
      if (!wcscmp(v14, v13))
      {
        v61 = &unk_26286C434;
      }

      else
      {
        v61 = &unk_26286C42C;
      }

      goto LABEL_109;
    }

    v64 = wcscmp(v14, v13);
LABEL_116:
    if (v64)
    {
      v61 = &unk_26286C434;
    }

    else
    {
      v61 = &unk_26286C42C;
    }

    goto LABEL_109;
  }

  if (v16 == 18)
  {
    v65 = wcscmp(v14, v13) < 1;
    goto LABEL_137;
  }

  if (v16 == 19)
  {
    if (wcscmp(v14, v13) < 0)
    {
      v61 = &unk_26286C42C;
    }

    else
    {
      v61 = &unk_26286C434;
    }

    goto LABEL_109;
  }

  do
  {
LABEL_150:
    v71 = v14;
    v72 = *v14;
    if (!*v14)
    {
      break;
    }

    ++v14;
    if (!v71[1])
    {
      break;
    }

    {
      operator new();
    }

    DigitExtended = v72 - 48;
    if (v72 < 48)
    {
      break;
    }

    if (v72 > 0x39)
    {
      if (v72 < 0x660)
      {
        break;
      }

      DigitExtended = TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v72);
    }
  }

  while (!DigitExtended);
  v172 = 0;
  for (i = 0; ; ++i)
  {
    v74 = v71[i];
    {
      if (DigitExtended)
      {
        operator new();
      }
    }

    if (v74 < 48)
    {
      break;
    }

    if (v74 >= 0x3A)
    {
      if (v74 < 0x660)
      {
        break;
      }

      DigitExtended = TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v74);
      if (DigitExtended == -1)
      {
        break;
      }
    }

    ++v172;
  }

  if (i <= 1)
  {
    v75 = 1;
  }

  else
  {
    v75 = i;
  }

  v169 = v75;
  v76 = &unk_26286C42C;
  if (i)
  {
    v76 = v71;
  }

  v167 = v76;
  do
  {
    v77 = v13;
    v78 = *v13;
    if (!*v13)
    {
      break;
    }

    ++v13;
    if (!v77[1])
    {
      break;
    }

    {
      operator new();
    }

    DigitExtended = (v78 - 48);
    if (v78 < 48)
    {
      break;
    }

    if (v78 > 0x39)
    {
      if (v78 < 0x660)
      {
        break;
      }

      DigitExtended = TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v78);
    }
  }

  while (!DigitExtended);
  v173 = 0;
  for (j = 0; ; ++j)
  {
    v80 = v77[j];
    {
      if (DigitExtended)
      {
        operator new();
      }
    }

    if (v80 < 48)
    {
      break;
    }

    if (v80 >= 0x3A)
    {
      if (v80 < 0x660)
      {
        break;
      }

      DigitExtended = TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v80);
      if (DigitExtended == -1)
      {
        break;
      }
    }

    ++v173;
  }

  if (j <= 1)
  {
    v81 = 1;
  }

  else
  {
    v81 = j;
  }

  v166 = v81;
  v82 = &unk_26286C42C;
  if (j)
  {
    v82 = v77;
  }

  v168 = v82;
  if (v16 > 8)
  {
    if (v16 <= 10)
    {
      if (v16 == 9)
      {
        if (j <= v169 && (v169 != v166 || (wcsncmp(v167, v82, v169) & 0x80000000) == 0))
        {
          goto LABEL_330;
        }
      }

      else if (v169 != v166 || wcsncmp(v167, v82, v169))
      {
        goto LABEL_330;
      }

      goto LABEL_278;
    }

    switch(v16)
    {
      case 0xB:
        if (v169 == v166)
        {
          v64 = wcsncmp(v167, v82, v169);
          goto LABEL_116;
        }

        goto LABEL_278;
      case 0xC:
        if (j <= v169 && (v169 != v166 || wcsncmp(v167, v82, v169) >= 1))
        {
          goto LABEL_330;
        }

        goto LABEL_278;
      case 0xD:
        if (i <= v166 && (v169 != v166 || wcsncmp(v167, v82, v169) < 0))
        {
          goto LABEL_330;
        }

LABEL_278:
        v61 = &unk_26286C434;
        goto LABEL_109;
    }

    goto LABEL_350;
  }

  if (v16 > 4)
  {
    if (v16 != 5)
    {
      if (v16 == 8)
      {
        if (i <= v166 && (v169 != v166 || wcsncmp(v167, v82, v169) <= 0))
        {
          goto LABEL_330;
        }

        goto LABEL_278;
      }

      goto LABEL_350;
    }

    if (j > v169 || v169 == v166 && (DigitExtended = wcsncmp(v167, v82, v169), (DigitExtended & 0x80000000) != 0))
    {
      v61 = v167;
      goto LABEL_109;
    }

    v116 = *v168;
    DigitExtended = TLocaleInfo::getGlobalLocaleInfo(DigitExtended);
    v117 = v116 - 48;
    if (v116 >= 48)
    {
      if (v116 > 0x39)
      {
        if (v116 < 0x660)
        {
          goto LABEL_331;
        }

        DigitExtended = TLocaleInfo::getDigitExtended(DigitExtended, v116);
        v117 = DigitExtended;
      }

      if (v117 == 1)
      {
        v118 = v168 + 1;
        do
        {
          v119 = v118;
          v120 = *v118;
          GlobalLocaleInfo = TLocaleInfo::getGlobalLocaleInfo(DigitExtended);
          DigitExtended = v120 - 48;
          if (v120 < 48)
          {
            break;
          }

          if (v120 > 0x39)
          {
            if (v120 < 0x660)
            {
              break;
            }

            DigitExtended = TLocaleInfo::getDigitExtended(GlobalLocaleInfo, v120);
          }

          v118 = v119 + 1;
        }

        while (!DigitExtended);
        v122 = *v119;
        DigitExtended = TLocaleInfo::getGlobalLocaleInfo(DigitExtended);
        if (v122 >= 48)
        {
          if (v122 < 0x3A)
          {
            goto LABEL_350;
          }

          if (v122 >= 0x660)
          {
            DigitExtended = TLocaleInfo::getDigitExtended(DigitExtended, v122);
            if (DigitExtended != -1)
            {
              goto LABEL_350;
            }
          }
        }

        if (v166 != 1)
        {
          v123 = 0;
          v124 = v173;
          if (v173 <= 1)
          {
            v124 = 1;
          }

          v125 = v124 - 1;
          v126 = 4 * (v124 - 1);
          if (v172 <= 1uLL)
          {
            v127 = 1;
          }

          else
          {
            v127 = v172;
          }

          v128 = &v167[v127 - v125];
          while (1)
          {
            v129 = *(v128 + 4 * v123);
            DigitExtended = TLocaleInfo::getGlobalLocaleInfo(DigitExtended);
            v130 = v129 - 48;
            if (v129 < 48)
            {
              break;
            }

            if (v129 > 0x39)
            {
              if (v129 < 0x660)
              {
                break;
              }

              DigitExtended = TLocaleInfo::getDigitExtended(DigitExtended, v129);
              v130 = DigitExtended;
            }

            if (v130)
            {
              break;
            }

            v126 -= 4;
            ++v123;
            v61 = &unk_26286C42C;
            if (v125 == v123)
            {
              goto LABEL_109;
            }
          }

          v144 = v173;
          if (v173 <= 1uLL)
          {
            v144 = 1;
          }

          if (v172 <= 1uLL)
          {
            v145 = 1;
          }

          else
          {
            v145 = v172;
          }

          v146 = TAllocator::allocate(v170, 4 * (v144 - v123));
          v61 = v146;
          v147 = v173;
          if (v173 <= 1)
          {
            v147 = 1;
          }

          wcsncpy(v146, &v167[v145 + v126 / 0xFFFFFFFFFFFFFFFCLL], (v147 - 1) - v123);
          v61[v126 / 4] = 0;
          goto LABEL_109;
        }

        goto LABEL_330;
      }
    }

LABEL_331:
    if (j > 1 || i < 3)
    {
      goto LABEL_350;
    }

    v131 = *v168;
    DigitExtended = TLocaleInfo::getGlobalLocaleInfo(DigitExtended);
    if (v131 <= 47)
    {
      goto LABEL_349;
    }

    if (v131 > 0x39)
    {
      if (v131 <= 0x65F)
      {
        goto LABEL_349;
      }

      DigitExtended = TLocaleInfo::getDigitExtended(DigitExtended, v131);
    }

    else
    {
      DigitExtended = v131 - 48;
    }

    if (DigitExtended == 2)
    {
LABEL_348:
      v167 = &v71[(i - 1)];
      goto LABEL_352;
    }

    if (DigitExtended != 4)
    {
      if (DigitExtended == 5)
      {
        goto LABEL_348;
      }

LABEL_349:
      LODWORD(v169) = i;
      goto LABEL_350;
    }

    v167 = &v71[(i - 2)];
    v148 = *v167;
    DigitExtended = TLocaleInfo::getGlobalLocaleInfo(DigitExtended);
    v149 = v148 - 48;
    if (v148 >= 48)
    {
      if (v148 > 0x39)
      {
        v3 = v175;
        v4 = v176;
        if (v148 < 0x660)
        {
          goto LABEL_352;
        }

        DigitExtended = TLocaleInfo::getDigitExtended(DigitExtended, v148);
        v149 = DigitExtended;
      }

      v167 = &v71[(v149 == 0) + (i - 2)];
    }

    v3 = v175;
    v4 = v176;
LABEL_352:
    v185[0] = 0;
    v135 = TLocaleInfo::getGlobalLocaleInfo(DigitExtended);
    v136 = TLocaleInfo::stringToUInt(v135, v167, v185);
    v137 = v136;
    v138 = TLocaleInfo::getGlobalLocaleInfo(v136);
    v139 = TLocaleInfo::stringToUInt(v138, v168, v185);
    if (v16 <= 4)
    {
      if (v16 == 3)
      {
        v140 = v139 * v137;
      }

      else
      {
        if (v16 != 4 || !v139)
        {
          goto LABEL_397;
        }

        v140 = v137 / v139;
      }
    }

    else if (v16 == 7)
    {
      if (v137 < v139)
      {
        goto LABEL_397;
      }

      v140 = v137 - v139;
    }

    else if (v16 == 6)
    {
      v140 = v139 + v137;
    }

    else
    {
      if (v16 != 5 || !v139)
      {
        goto LABEL_397;
      }

      v140 = v137 % v139;
    }

    AttributeValue = v183;
    v182 = xmmword_26286B6F0;
    v184 = 1;
    v141 = TLocaleInfo::getGlobalLocaleInfo(v139);
    TLocaleInfo::valueToString(v141, v140, &AttributeValue, 0);
    if ((*(&v182 + 1) + 1) >> 62)
    {
      v142 = -1;
    }

    else
    {
      v142 = 4 * (*(&v182 + 1) + 1);
    }

    v61 = TAllocator::allocate(v170, v142);
    v143 = TBuffer<wchar_t>::c_str(&AttributeValue);
    wcscpy(v61, v143);
    if (v184 == 1 && AttributeValue != v183 && AttributeValue)
    {
      MEMORY[0x26672B1B0]();
    }

    goto LABEL_109;
  }

  if (v16 == 3)
  {
    v83 = *v167;
    v84 = TLocaleInfo::getGlobalLocaleInfo(DigitExtended);
    v85 = v83 - 48;
    if (v83 >= 48)
    {
      if (v83 <= 0x39)
      {
        goto LABEL_226;
      }

      if (v83 >= 0x660)
      {
        v84 = TLocaleInfo::getDigitExtended(v84, v83);
        v85 = v84;
LABEL_226:
        if (!v85)
        {
          goto LABEL_330;
        }
      }
    }

    v86 = *v168;
    v87 = TLocaleInfo::getGlobalLocaleInfo(v84);
    v88 = v86 - 48;
    if (v86 < 48)
    {
      goto LABEL_232;
    }

    if (v86 > 0x39)
    {
      if (v86 < 0x660)
      {
        goto LABEL_232;
      }

      v87 = TLocaleInfo::getDigitExtended(v87, v86);
      v88 = v87;
    }

    if (v88)
    {
LABEL_232:
      v89 = *v168;
      v90 = TLocaleInfo::getGlobalLocaleInfo(v87);
      v91 = v89 - 48;
      if (v89 >= 48)
      {
        if (v89 > 0x39)
        {
          if (v89 < 0x660)
          {
            goto LABEL_247;
          }

          v90 = TLocaleInfo::getDigitExtended(v90, v89);
          v91 = v90;
        }

        if (v91 == 1)
        {
          v92 = v168 + 1;
          do
          {
            v93 = v92;
            v94 = *v92;
            v95 = TLocaleInfo::getGlobalLocaleInfo(v90);
            v90 = v94 - 48;
            if (v94 < 48)
            {
              break;
            }

            if (v94 > 0x39)
            {
              if (v94 < 0x660)
              {
                break;
              }

              v90 = TLocaleInfo::getDigitExtended(v95, v94);
            }

            v92 = v93 + 1;
          }

          while (!v90);
          v96 = *v93;
          v90 = TLocaleInfo::getGlobalLocaleInfo(v90);
          if (v96 < 48 || v96 >= 0x3A && (v96 < 0x660 || (v90 = TLocaleInfo::getDigitExtended(v90, v96), v90 == -1)))
          {
            v104 = v166 + v169;
            v61 = TAllocator::allocate(v170, 4 * (v166 + v169));
            wcsncpy(v61, v167, v169);
            if (v166 != 1)
            {
              v133 = v172;
              v132 = v173;
              if (v173 <= 1)
              {
                v132 = 1;
              }

              v134 = (v132 - 1);
              if (v172 <= 1)
              {
                v133 = 1;
              }

              do
              {
                v61[v133++] = 48;
                --v134;
              }

              while (v134);
            }

            goto LABEL_342;
          }
        }
      }

LABEL_247:
      v97 = *v167;
      DigitExtended = TLocaleInfo::getGlobalLocaleInfo(v90);
      v98 = v97 - 48;
      if (v97 < 48)
      {
        goto LABEL_350;
      }

      if (v97 > 0x39)
      {
        if (v97 < 0x660)
        {
          goto LABEL_350;
        }

        DigitExtended = TLocaleInfo::getDigitExtended(DigitExtended, v97);
        v98 = DigitExtended;
      }

      if (v98 != 1)
      {
        goto LABEL_350;
      }

      v99 = (v167 + 1);
      do
      {
        v100 = v99;
        v101 = *v99;
        v102 = TLocaleInfo::getGlobalLocaleInfo(DigitExtended);
        DigitExtended = v101 - 48;
        if (v101 < 48)
        {
          break;
        }

        if (v101 > 0x39)
        {
          if (v101 < 0x660)
          {
            break;
          }

          DigitExtended = TLocaleInfo::getDigitExtended(v102, v101);
        }

        v99 = v100 + 1;
      }

      while (!DigitExtended);
      v103 = *v100;
      DigitExtended = TLocaleInfo::getGlobalLocaleInfo(DigitExtended);
      if (v103 >= 48)
      {
        if (v103 < 0x3A)
        {
          goto LABEL_350;
        }

        if (v103 >= 0x660)
        {
          DigitExtended = TLocaleInfo::getDigitExtended(DigitExtended, v103);
          if (DigitExtended != -1)
          {
            goto LABEL_350;
          }
        }
      }

      v104 = v166 + v169;
      v61 = TAllocator::allocate(v170, 4 * (v166 + v169));
      wcsncpy(v61, v168, v166);
      if (v169 != 1)
      {
        v105 = v172;
        v106 = v173;
        if (v172 <= 1)
        {
          v105 = 1;
        }

        v107 = (v105 - 1);
        if (v173 <= 1)
        {
          v106 = 1;
        }

        do
        {
          v61[v106++] = 48;
          --v107;
        }

        while (v107);
      }

LABEL_342:
      v61[v104 - 1] = 0;
      goto LABEL_109;
    }

LABEL_330:
    v61 = &unk_26286C42C;
    goto LABEL_109;
  }

  if (v16 == 4)
  {
    if (j > v169 || (v108 = v169 - v166, v169 == v166) && (DigitExtended = wcsncmp(v167, v82, v169), (DigitExtended & 0x80000000) != 0))
    {
      v61 = TAllocator::allocate(v170, 8);
      *v61 = 48;
      goto LABEL_109;
    }

    v109 = *v168;
    DigitExtended = TLocaleInfo::getGlobalLocaleInfo(DigitExtended);
    v110 = v109 - 48;
    if (v109 >= 48)
    {
      if (v109 > 0x39)
      {
        if (v109 < 0x660)
        {
          goto LABEL_350;
        }

        DigitExtended = TLocaleInfo::getDigitExtended(DigitExtended, v109);
        v110 = DigitExtended;
      }

      if (v110 == 1)
      {
        v111 = v168 + 1;
        do
        {
          v112 = v111;
          v113 = *v111;
          v114 = TLocaleInfo::getGlobalLocaleInfo(DigitExtended);
          DigitExtended = v113 - 48;
          if (v113 < 48)
          {
            break;
          }

          if (v113 > 0x39)
          {
            if (v113 < 0x660)
            {
              break;
            }

            DigitExtended = TLocaleInfo::getDigitExtended(v114, v113);
          }

          v111 = v112 + 1;
        }

        while (!DigitExtended);
        v115 = *v112;
        DigitExtended = TLocaleInfo::getGlobalLocaleInfo(DigitExtended);
        if (v115 < 48 || v115 >= 0x3A && (v115 < 0x660 || (DigitExtended = TLocaleInfo::getDigitExtended(DigitExtended, v115), DigitExtended == -1)))
        {
          v61 = TAllocator::allocate(v170, 4 * (v108 + 2));
          wcsncpy(v61, v167, (v108 + 1));
          v61[v108 + 1] = 0;
          goto LABEL_109;
        }
      }
    }
  }

LABEL_350:
  if (v169 >= 0xA)
  {
    loggableUnicode(v167, &AttributeValue);
    v156 = SHIBYTE(v182);
    v157 = AttributeValue;
    loggableUnicode(v168, v185);
    p_AttributeValue = &AttributeValue;
    if (v156 < 0)
    {
      p_AttributeValue = v157;
    }

    if (v186 >= 0)
    {
      v163 = v185;
    }

    else
    {
      v163 = v185[0];
    }
  }

  else
  {
    if (j < 0xA)
    {
      goto LABEL_352;
    }

    loggableUnicode(v167, &AttributeValue);
    v164 = SHIBYTE(v182);
    v165 = AttributeValue;
    loggableUnicode(v77, v185);
    p_AttributeValue = &AttributeValue;
    if (v164 < 0)
    {
      p_AttributeValue = v165;
    }

    if (v186 >= 0)
    {
      v163 = v185;
    }

    else
    {
      v163 = v185[0];
    }
  }

  tknPrintf("Warning: (%s,%s,%llu)  : Operand out of bounds, overflow\n", v158, v159, v160, v161, p_AttributeValue, v163, v16);
  if (v186 < 0)
  {
    operator delete(v185[0]);
  }

  if (SHIBYTE(v182) < 0)
  {
    operator delete(AttributeValue);
  }

LABEL_397:
  *(v2 + 424) = 1;
LABEL_398:
  if (__p)
  {
    v179 = __p;
    operator delete(__p);
  }

  v155 = *MEMORY[0x277D85DE8];
}