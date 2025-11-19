uint64_t BtNodeCacheType<BtNodeHashKey,BtNodeKeyGenerator<true,true>>::BtNodeCacheType(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 33) = a4;
  *a1 = &unk_287527DE0;
  HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::HashNCHV(a1 + 40, 0, 128);
  return a1;
}

void sub_26275C784(_Unwind_Exception *a1)
{
  *v1 = &unk_287526A00;
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  _Unwind_Resume(a1);
}

void *BtNodeCacheType<BtNodeHashKey,BtNodeKeyGenerator<true,true>>::~BtNodeCacheType(void *a1)
{
  *a1 = &unk_287527DE0;
  HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::~HashNCHV((a1 + 5));
  *a1 = &unk_287526A00;
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 1));
  return a1;
}

void BtNodeCacheType<BtNodeHashKey,BtNodeKeyGenerator<true,true>>::~BtNodeCacheType(void *a1)
{
  *a1 = &unk_287527DE0;
  HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::~HashNCHV((a1 + 5));
  *a1 = &unk_287526A00;
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 1));

  JUMPOUT(0x26672B1B0);
}

uint64_t BtNodeCacheType<BtNodeHashKey,BtNodeKeyGenerator<true,true>>::sizeObject(uint64_t a1, int a2)
{
  v4 = sizeObject<unsigned int>(a1 + 8, a2);
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

  if (a2 == 3)
  {
    v7 = v4;
  }

  else
  {
    v7 = v4 + 1;
  }

  return v7 + Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>::sizeObject(a1 + 40, a2) + v6;
}

uint64_t BtNodeCacheType<BtNodeHashKey,BtNodeKeyGenerator<true,true>>::findOrCreateNode(uint64_t a1, uint64_t a2, uint64_t a3, int32x2_t *a4, __int8 a5, unsigned int *a6, char *a7)
{
  if (*(a1 + 32) != 1 || ((v14 = a4->u32[0], (v14 & 0xFE000000) != 0xFA000000) ? (v15 = (v14 & 0xFE000000) == -67108864) : (v15 = 1), v15))
  {
    LOBYTE(v16) = 0;
  }

  else
  {
    v22 = *(*(**VocMgr::smpVocMgr + ((v14 >> 22) & 0x3F8)) + 48);
    v23 = *(a1 + 24);
    v16 = (*(v23 + 68) & 0xFFFFFFFD) != 0 || Constraint::isCoartAllowedForState(v23, a4);
    v24 = v14 & 0xFFFFFF;
    if ((v14 & 0xFFFFFF) != 0xFFFFF8 && v16)
    {
      if (*(*(v22 + 592) + 2 * v24) || *(*(v22 + 608) + 2 * v24))
      {
        LOBYTE(v16) = *(a1 + 33);
      }

      else
      {
        LOBYTE(v16) = 1;
      }
    }
  }

  BtNodeKeyGenerator<true,true>::getKey(a3, a4, a5, a6, v16 & 1, v26);
  Bucket = HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::findBucket(a1 + 40, v26);
  if (*Bucket)
  {
    v18 = 0;
    p_Node = (*Bucket + 40);
  }

  else
  {
    Node = Lattice<WordLatticeLC>::createNode(a2);
    v20 = *(a1 + 16);
    if (v20 == *(a1 + 20))
    {
      DgnPrimArray<unsigned int>::reallocElts(a1 + 8, 1, 1);
      v20 = *(a1 + 16);
    }

    *(*(a1 + 8) + 4 * v20) = 1879048192;
    ++*(a1 + 16);
    p_Node = &Node;
    HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::add(a1 + 40, v26, &Node);
    v18 = 1;
  }

  result = *p_Node;
  *a7 = v18;
  return result;
}

uint64_t BtNodeKeyGenerator<true,true>::getKey@<X0>(uint64_t result@<X0>, int32x2_t *a2@<X1>, __int8 a3@<W2>, unsigned int *a4@<X3>, int a5@<W4>, int32x2_t *a6@<X8>)
{
  v6 = a2->i32[0];
  v7 = a2->i16[2];
  v8 = a2->i16[3];
  v9 = a2[1];
  v10 = 0;
  if (a5)
  {
    if ((a3 & 1) == 0)
    {
      v11 = *a4;
      if ((v6 & 0xFE000000) != 0xFC000000 && (v11 & 0xFE000000) != -67108864)
      {
        v10 = *(*(*(*(**VocMgr::smpVocMgr + ((v11 >> 22) & 0x3F8)) + 48) + 592) + 2 * (v11 & 0xFFFFFF));
      }
    }
  }

  else
  {
    a3 = 0;
  }

  a6->i32[0] = v6;
  a6->i16[2] = v7;
  a6->i16[3] = v8;
  a6[1] = v9;
  a6[2] = vdup_n_s32(0xFAFFFFFC);
  a6[3].i32[0] = result;
  a6[3].i16[2] = v10;
  a6[3].i8[6] = a3;
  return result;
}

uint64_t BtNodeCacheType<BtUnigramNodeHashKey,BtUnigramNodeHashKey>::BtNodeCacheType(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 33) = a4;
  *a1 = &unk_287527D60;
  HashNCHV<BtUnigramNodeHashKey,BtUnigramNodeHashKey,BtUnigramNodeHashKey,unsigned int>::HashNCHV(a1 + 40, 0, 128);
  return a1;
}

void sub_26275CBDC(_Unwind_Exception *a1)
{
  *v1 = &unk_287526A00;
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  _Unwind_Resume(a1);
}

void *BtNodeCacheType<BtUnigramNodeHashKey,BtUnigramNodeHashKey>::~BtNodeCacheType(void *a1)
{
  *a1 = &unk_287527D60;
  HashNCHV<BtUnigramNodeHashKey,BtUnigramNodeHashKey,BtUnigramNodeHashKey,unsigned int>::~HashNCHV((a1 + 5));
  *a1 = &unk_287526A00;
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 1));
  return a1;
}

void BtNodeCacheType<BtUnigramNodeHashKey,BtUnigramNodeHashKey>::~BtNodeCacheType(void *a1)
{
  *a1 = &unk_287527D60;
  HashNCHV<BtUnigramNodeHashKey,BtUnigramNodeHashKey,BtUnigramNodeHashKey,unsigned int>::~HashNCHV((a1 + 5));
  *a1 = &unk_287526A00;
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 1));

  JUMPOUT(0x26672B1B0);
}

uint64_t BtNodeCacheType<BtUnigramNodeHashKey,BtUnigramNodeHashKey>::sizeObject(uint64_t a1, int a2)
{
  v4 = sizeObject<unsigned int>(a1 + 8, a2);
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

  if (a2 == 3)
  {
    v7 = v4;
  }

  else
  {
    v7 = v4 + 1;
  }

  return v7 + Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>::sizeObject(a1 + 40, a2) + v6;
}

uint64_t BtNodeCacheType<BtUnigramNodeHashKey,BtUnigramNodeHashKey>::findOrCreateNode(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int *a4, uint64_t a5, uint64_t a6, char *a7)
{
  v12 = *a4;
  v13 = *a4 & 0xFE000000;
  if (*(a1 + 32) == 1 && v13 != -100663296 && v13 != -67108864)
  {
    v22 = *(a1 + 24);
    if ((*(v22 + 68) & 0xFFFFFFFD) == 0)
    {
      Constraint::isCoartAllowedForState(v22, a4);
      v12 = *a4;
    }
  }

  v16 = a4[2];
  v24 = a3 | ((v12 >> 25) << 32);
  v25 = v16;
  Bucket = HashNCHV<BtUnigramNodeHashKey,BtUnigramNodeHashKey,BtUnigramNodeHashKey,unsigned int>::findBucket(a1 + 40, &v24);
  if (*Bucket)
  {
    v18 = 0;
    p_Node = (*Bucket + 20);
  }

  else
  {
    Node = Lattice<WordLatticeLC>::createNode(a2);
    v20 = *(a1 + 16);
    if (v20 == *(a1 + 20))
    {
      DgnPrimArray<unsigned int>::reallocElts(a1 + 8, 1, 1);
      v20 = *(a1 + 16);
    }

    *(*(a1 + 8) + 4 * v20) = 1879048192;
    ++*(a1 + 16);
    p_Node = &Node;
    HashNCHV<BtUnigramNodeHashKey,BtUnigramNodeHashKey,BtUnigramNodeHashKey,unsigned int>::add(a1 + 40, &v24, &Node);
    v18 = 1;
  }

  result = *p_Node;
  *a7 = v18;
  return result;
}

uint64_t HashNCHV<BtUnigramNodeHashKey,BtUnigramNodeHashKey,BtUnigramNodeHashKey,unsigned int>::HashNCHV(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_2875234B8;
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
    v7 = 18;
  }

  else
  {
    v7 = 22;
  }

  *(a1 + 24) = 32;
  *(a1 + 28) = v7;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_26275CF68(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void HashNCHV<BtUnigramNodeHashKey,BtUnigramNodeHashKey,BtUnigramNodeHashKey,unsigned int>::~HashNCHV(uint64_t a1)
{
  HashNCHV<BtUnigramNodeHashKey,BtUnigramNodeHashKey,BtUnigramNodeHashKey,unsigned int>::~HashNCHV(a1);

  JUMPOUT(0x26672B1B0);
}

uint64_t HashNCHV<BtUnigramNodeHashKey,BtUnigramNodeHashKey,BtUnigramNodeHashKey,unsigned int>::~HashNCHV(uint64_t a1)
{
  *a1 = &unk_2875234B8;
  if (*(a1 + 8))
  {
    HashNCHV<BtUnigramNodeHashKey,BtUnigramNodeHashKey,BtUnigramNodeHashKey,unsigned int>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  return MrecInitModule_sdpres_sdapi();
}

uint64_t HashNCHV<BtUnigramNodeHashKey,BtUnigramNodeHashKey,BtUnigramNodeHashKey,unsigned int>::removeAll(uint64_t result)
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
            result = v7(v5 + 1);
          }

          v8 = *(v1 + 104);
          if (v8)
          {
            result = v8(v5 + 20);
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

uint64_t HashNCHV<BtUnigramNodeHashKey,BtUnigramNodeHashKey,BtUnigramNodeHashKey,unsigned int>::add(uint64_t result, uint64_t *a2, _DWORD *a3)
{
  v5 = result;
  v6 = *(result + 12);
  if (*(result + 8) >= v6 >> 1)
  {
    result = HashNCHV<BtUnigramNodeHashKey,BtUnigramNodeHashKey,BtUnigramNodeHashKey,unsigned int>::upSize(result, 2 * v6);
  }

  HIDWORD(v7) = *a2;
  LODWORD(v7) = *a2;
  HIDWORD(v7) = (v7 >> 19) + *(a2 + 2);
  LODWORD(v7) = HIDWORD(v7);
  v8 = *(v5 + 16);
  v9 = (-1640531527 * ((v7 >> 19) + *(a2 + 2))) >> -v8;
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v5 + 80);
  v12 = *(v5 + 32);
  if (!v12)
  {
    result = DgnPool::addChunk((v5 + 24));
    v12 = *(v5 + 32);
  }

  v13 = (v11 + 8 * v10);
  *(v5 + 32) = *v12;
  v14 = *a2;
  *(v12 + 16) = *(a2 + 2);
  *(v12 + 8) = v14;
  *(v12 + 20) = *a3;
  ++*(v5 + 8);
  if (*(v5 + 20))
  {
    *v12 = *v13;
  }

  else
  {
    *v12 = 0;
    v15 = *v13;
    if (*v13)
    {
      do
      {
        v13 = v15;
        v15 = *v15;
      }

      while (v15);
    }
  }

  *v13 = v12;
  return result;
}

void *HashNCHV<BtUnigramNodeHashKey,BtUnigramNodeHashKey,BtUnigramNodeHashKey,unsigned int>::findBucket(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  HIDWORD(v3) = *a2;
  LODWORD(v3) = *a2;
  HIDWORD(v3) = (v3 >> 19) + v2;
  LODWORD(v3) = HIDWORD(v3);
  v4 = *(a2 + 8);
  v5 = *(a1 + 16);
  v6 = (-1640531527 * ((v3 >> 19) + v4)) >> -v5;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = (*(a1 + 80) + 8 * v6);
  v8 = *v7;
  if (!*v7)
  {
    return v7;
  }

  do
  {
    result = v7;
    v7 = v8;
    if (*(v8 + 2) == *a2 && *(v8 + 6) == v2 && *(v8 + 4) == v4)
    {
      break;
    }

    v8 = *v8;
    result = v7;
  }

  while (*v7);
  return result;
}

uint64_t HashNCHV<BtUnigramNodeHashKey,BtUnigramNodeHashKey,BtUnigramNodeHashKey,unsigned int>::upSize(uint64_t a1, int a2)
{
  v18 = 0;
  RoundUpToPowerOf2(a2, &v18);
  v16 = 0;
  v17 = 0;
  DgnIFixArray<BucketLinkKEV<unsigned int> *>::copyArraySlice(&v16, (a1 + 80), 0, *(a1 + 88));
  v4 = *(a1 + 80);
  if (v4)
  {
    MemChunkFree(v4, 0);
    *(a1 + 80) = 0;
  }

  *(a1 + 88) = 0;
  v5 = v18;
  *(a1 + 12) = a2;
  *(a1 + 16) = v5;
  HashKEV<unsigned int,unsigned int,CWIDScope>::initBuckets(a1);
  v6 = v17;
  if (v17)
  {
    v7 = 0;
    v8 = v18;
    v9 = 32 - v18;
    do
    {
      v10 = *(v16 + 8 * v7);
      if (v10)
      {
        do
        {
          v11 = *v10;
          HIDWORD(v12) = *(v10 + 2);
          LODWORD(v12) = HIDWORD(v12);
          HIDWORD(v12) = (v12 >> 19) + *(v10 + 6);
          LODWORD(v12) = HIDWORD(v12);
          v13 = (-1640531527 * ((v12 >> 19) + *(v10 + 4))) >> v9;
          if (!v8)
          {
            v13 = 0;
          }

          v14 = *(a1 + 80);
          *v10 = *(v14 + 8 * v13);
          *(v14 + 8 * v13) = v10;
          v10 = v11;
        }

        while (v11);
      }

      ++v7;
    }

    while (v7 != v6);
  }

  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v16);
}

void sub_26275D36C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va);
  _Unwind_Resume(a1);
}

uint64_t Hash<CWIDACPair,CWIDACPair,CWIDACPair,BigScorePair>::Hash(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_287524248;
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
  v12[1] = 0x3FFF;
  v13 = xmmword_26286CC40;
  v14 = 0x3FFF;
  v15 = xmmword_26286CC40;
  v7 = gShadowDiagnosticShowIdealizedObjectSizes;
  v8 = sizeObject(v12, 2);
  v9 = sizeObject(&v16, 2);
  if (v7)
  {
    v10 = 8;
  }

  else
  {
    v10 = 12;
  }

  *(a1 + 24) = 80;
  *(a1 + 28) = v10 + v8 + v9;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  MrecInitModule_sdpres_sdapi();
  return a1;
}

void sub_26275D49C(_Unwind_Exception *a1)
{
  MrecInitModule_sdpres_sdapi();
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void Hash<CWIDACPair,CWIDACPair,CWIDACPair,BigScorePair>::~Hash(uint64_t a1)
{
  Hash<CWIDACPair,CWIDACPair,CWIDACPair,BigScorePair>::~Hash(a1);

  JUMPOUT(0x26672B1B0);
}

uint64_t Hash<CWIDACPair,CWIDACPair,CWIDACPair,BigScorePair>::~Hash(uint64_t a1)
{
  *a1 = &unk_287524248;
  if (*(a1 + 8))
  {
    Hash<CWIDACPair,CWIDACPair,CWIDACPair,BigScorePair>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  return MrecInitModule_sdpres_sdapi();
}

uint64_t Hash<BackTraceLinkPair,BackTraceLinkPair,BackTraceLinkPair,int>::Hash(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_2875240B8;
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
  v10[1] = 0x3FFF;
  v11 = xmmword_26286CC40;
  LOBYTE(a3) = gShadowDiagnosticShowIdealizedObjectSizes;
  v7 = sizeObject(v10, 2);
  if (a3)
  {
    v8 = 4;
  }

  else
  {
    v8 = 8;
  }

  *(a1 + 24) = 64;
  *(a1 + 28) = v7 + v8 + 21;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_26275D670(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void Hash<BackTraceLinkPair,BackTraceLinkPair,BackTraceLinkPair,int>::~Hash(uint64_t a1)
{
  Hash<BackTraceLinkPair,BackTraceLinkPair,BackTraceLinkPair,int>::~Hash(a1);

  JUMPOUT(0x26672B1B0);
}

uint64_t Hash<BackTraceLinkPair,BackTraceLinkPair,BackTraceLinkPair,int>::~Hash(uint64_t a1)
{
  *a1 = &unk_2875240B8;
  if (*(a1 + 8))
  {
    Hash<BackTraceLinkPair,BackTraceLinkPair,BackTraceLinkPair,int>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  return MrecInitModule_sdpres_sdapi();
}

void *Hash<CWIDACPair,CWIDACPair,CWIDACPair,BigScorePair>::findBucket(uint64_t a1, uint64_t a2)
{
  v4 = CWIDACPair::computeHash(a2);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (-1640531527 * v4) >> -v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(a1 + 80) + 8 * v6);
  v8 = *v7;
  if (!*v7)
  {
    return v7;
  }

  v9 = v4;
  do
  {
    v10 = v7;
    v7 = v8;
    if (*(v8 + 8) == v9 && CWIDAC::operator==(v8 + 12, a2) && CWIDAC::operator==(v7 + 36, a2 + 24))
    {
      break;
    }

    v8 = *v7;
    v10 = v7;
  }

  while (*v7);
  return v10;
}

__n128 CWIDACPair::CWIDACPair(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

unint64_t DgnArray<BackTraceItem>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, v6 << 6, v5 << 6, v5 << 6, 1);
  *(a1 + 12) = result >> 6;
  *a1 = v8;
  return result;
}

uint64_t *Hash<BackTraceLinkPair,BackTraceLinkPair,BackTraceLinkPair,int>::findBucket(uint64_t a1, uint64_t a2)
{
  HIDWORD(v4) = CWIDAC::computeHash(a2);
  LODWORD(v4) = HIDWORD(v4);
  HIDWORD(v4) = (v4 >> 19) + *(a2 + 28);
  LODWORD(v4) = HIDWORD(v4);
  HIDWORD(v4) = (v4 >> 19) + *(a2 + 32);
  LODWORD(v4) = HIDWORD(v4);
  HIDWORD(v4) = (v4 >> 19) + *(a2 + 36);
  LODWORD(v4) = HIDWORD(v4);
  v5 = (v4 >> 19) + *(a2 + 24);
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = (-1640531527 * v5) >> -v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = (*(a1 + 80) + 8 * v7);
  v9 = *v8;
  if (*v8)
  {
    do
    {
      v10 = v9;
      if (*(v9 + 8) == v5 && BackTraceLinkPair::operator==(v9 + 12, a2))
      {
        break;
      }

      v9 = *v10;
      v8 = v10;
    }

    while (*v10);
  }

  return v8;
}

BOOL BackTraceLinkPair::operator==(uint64_t a1, uint64_t a2)
{
  result = CWIDAC::operator==(a1, a2);
  if (result)
  {
    return *(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28) && *(a1 + 32) == *(a2 + 32) && *(a1 + 36) == *(a2 + 36);
  }

  return result;
}

double BaseWordLatticeLC::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 64);
  *(a1 + 64) = result;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  return result;
}

void UserDelta::printSize(UserDelta *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/udelta.cpp", 77, &v89);
  if (v90)
  {
    v15 = v89;
  }

  else
  {
    v15 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, v12, v13, v14, a3, &byte_262899963, a3, &byte_262899963, v15);
  DgnString::~DgnString(&v89);
  if (a2 != -1)
  {
    xlprintf("%d ", v16, v17, v18, v19, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v16, v17, v18, v19, a3, &byte_262899963);
  v20 = (a3 + 1);
  v21 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/udelta.cpp", 79, &v89);
  if (v90)
  {
    v26 = v89;
  }

  else
  {
    v26 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v22, v23, v24, v25, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v26, 4, 4, 0);
  DgnString::~DgnString(&v89);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/udelta.cpp", 79, &v89);
  if (v90)
  {
    v31 = v89;
  }

  else
  {
    v31 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v27, v28, v29, v30, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v31, 4, 4, 0);
  DgnString::~DgnString(&v89);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/udelta.cpp", 79, &v89);
  if (v90)
  {
    v36 = v89;
  }

  else
  {
    v36 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, v33, v34, v35, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v36, 4, 4, 0);
  DgnString::~DgnString(&v89);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/udelta.cpp", 79, &v89);
  if (v90)
  {
    v41 = v89;
  }

  else
  {
    v41 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, v38, v39, v40, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v41, 4, 4, 0);
  DgnString::~DgnString(&v89);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/udelta.cpp", 79, &v89);
  if (v90)
  {
    v46 = v89;
  }

  else
  {
    v46 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v43, v44, v45, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v46, 4, 4, 0);
  DgnString::~DgnString(&v89);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/udelta.cpp", 79, &v89);
  if (v90)
  {
    v51 = v89;
  }

  else
  {
    v51 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v47, v48, v49, v50, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v51, 4, 4, 0);
  v87 = a3;
  DgnString::~DgnString(&v89);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v52 = 12;
  }

  else
  {
    v52 = 16;
  }

  v53 = *(this + 8);
  v54 = *(this + 9);
  v55 = this;
  v56 = v54 >= v53;
  v57 = v54 - v53;
  if (v56)
  {
    if (v53 > 0)
    {
      v58 = (v53 - 1) + v52 + 1;
    }

    else
    {
      v58 = v52;
    }

    v52 = v58 + v57;
    v53 = 0;
  }

  else
  {
    v58 = v52;
  }

  v59 = v53;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/udelta.cpp", 79, &v89);
  if (v90)
  {
    v64 = v89;
  }

  else
  {
    v64 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v60, v61, v62, v63, v20, &byte_262899963, v21, v21, v64, v52, v58, v59);
  DgnString::~DgnString(&v89);
  *a4 += v52;
  *a5 += v58;
  *a6 += v59;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/udelta.cpp", 79, &v89);
  if (v90)
  {
    v69 = v89;
  }

  else
  {
    v69 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v65, v66, v67, v68, v20, &byte_262899963, v21, v21, v69, 4, 4, 0);
  DgnString::~DgnString(&v89);
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

  v71 = *(v55 + 14);
  v72 = *(v55 + 15);
  v56 = v72 >= v71;
  v73 = v72 - v71;
  if (v56)
  {
    if (v71 > 0)
    {
      v74 = (v71 - 1) + v70 + 1;
    }

    else
    {
      v74 = v70;
    }

    v70 = v74 + v73;
    v71 = 0;
  }

  else
  {
    v74 = v70;
  }

  v75 = v71;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/udelta.cpp", 79, &v89);
  if (v90)
  {
    v80 = v89;
  }

  else
  {
    v80 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v76, v77, v78, v79, v20, &byte_262899963, v21, v21, v80, v70, v74, v75);
  DgnString::~DgnString(&v89);
  *a4 += v70;
  *a5 += v74;
  *a6 += v75;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/udelta.cpp", 80, &v89);
  if (v90)
  {
    v85 = v89;
  }

  else
  {
    v85 = &byte_262899963;
  }

  v86 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v81, v82, v83, v84, v87, &byte_262899963, (35 - v87), (35 - v87), v85, *a4, *a5, *a6);
  DgnString::~DgnString(&v89);
}

void sub_26275DF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void (***UserDelta::saveUserDelta(UserDelta *this, DFile *a2, DFileChecksums *a3, int a4))(void)
{
  v7 = OpenAndWriteMrecHeader(a2, 0x64u, a4, "MRUDL!?", 23, 2);
  v10 = 0;
  writeObject(v7, this, &v10);
  writeObject(v7, this + 1, &v10);
  writeObject(v7, this + 2, &v10);
  writeObject(v7, this + 3, &v10);
  writeObject(v7, this + 4, &v10);
  writeObject(v7, this + 5, &v10);
  writeObject<char>(v7, this + 24, &v10);
  writeObject(v7, this + 10, &v10);
  writeObject<unsigned char>(v7, this + 48, &v10);
  writeObjectChecksum(v7, &v10);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x64u, v10);
  return DgnDelete<DgnStream>(v7);
}

uint64_t MrecInitLibrarySet_throughPhoneme(void)
{
  MrecInitLibrarySet_throughFileutil();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();

  return MrecInitModule_sdpres_sdapi();
}

void EmptyNet::~EmptyNet(EmptyNet *this)
{
  HmmNet::~HmmNet(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t EmptyNet::sizeObject(_DWORD *a1, uint64_t a2)
{
  v2 = a2;
  v4 = HmmNet::sizeObject(a1, a2);
  v5 = sizeObject((a1 + 29), v2);
  v6 = sizeObject((a1 + 32), v2);
  if (v2 == 3)
  {
    v7 = v4;
  }

  else
  {
    v7 = v4 + 1;
  }

  return v7 + v5 + v6;
}

uint64_t EmptyNet::getBestScore(uint64_t a1, void *a2)
{
  result = *(a1 + 138);
  if (result != 20000)
  {
    *a2 = a1 + 128;
  }

  return result;
}

uint64_t EmptyNet::scoreNetInternal(uint64_t this, int a2, int a3, int a4)
{
  v4 = this;
  v5 = *(this + 124);
  v6 = 20000;
  if (v5 != 20000)
  {
    v7 = *(*(this + 8) + 244);
    if (v7 == 20000)
    {
      LOWORD(v7) = 0;
    }

    v8 = v5 - v7;
    if (v8 <= a4)
    {
      v6 = v8;
    }

    else
    {
      v6 = 20000;
    }
  }

  *(this + 128) = *(this + 116);
  *(this + 136) = v6;
  *(this + 138) = v6;
  v9 = *(this + 8);
  if (v6 != 20000)
  {
    if (*(v9 + 224) >= v6)
    {
      this = BestData::newOrTiedBestNode(v9 + 192, v6, (this + 128), 0);
      v9 = *(v4 + 8);
    }

    v10 = v9 + 4 * (v6 + 5000);
    ++*(v10 + 151392);
    ++*(v9 + 302468);
    ++*(v10 + 320);
    ++*(v9 + 302464);
  }

  *(v4 + 108) = v6;
  *(v4 + 110) = v6;
  if (v6 < *(v9 + 246))
  {
    *(v9 + 246) = v6;
  }

  return this;
}

uint64_t EmptyNet::thresholdNetInternal(uint64_t this, int a2, int a3)
{
  if (*(this + 110) <= a3)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0;
    *(this + 110) = 20000;
  }

  *(this + 104) = v3;
  return this;
}

uint64_t EmptyNet::unpackEmptySequence(uint64_t this, Node **a2, Node **a3)
{
  *(this + 136) = 1310740000;
  *(this + 140) = 0;
  *(this + 148) = -65536;
  *(this + 152) = 1;
  *a3 = (this + 128);
  *a2 = (this + 128);
  return this;
}

void Imelda::printSize(Imelda *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/ldt.cpp", 76, &v40);
  if (v41)
  {
    v16 = v40;
  }

  else
  {
    v16 = &unk_26288CB64;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26288CB64, a3, &unk_26288CB64, v16);
  DgnString::~DgnString(&v40);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26288CB64);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/ldt.cpp", 78, &v40);
  if (v41)
  {
    v25 = v40;
  }

  else
  {
    v25 = &unk_26288CB64;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, v22, v23, v24, (a3 + 1), &unk_26288CB64, (34 - a3), (34 - a3), v25, 4, 4, 0);
  DgnString::~DgnString(&v40);
  *a4 += 4;
  *a5 += 4;
  v26 = LinearTransform::sizeObject(this + 8, 0);
  v27 = LinearTransform::sizeObject(this + 8, 1);
  v28 = LinearTransform::sizeObject(this + 8, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/ldt.cpp", 78, &v40);
  if (v41)
  {
    v33 = v40;
  }

  else
  {
    v33 = &unk_26288CB64;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v29, v30, v31, v32, (a3 + 1), &unk_26288CB64, (34 - a3), (34 - a3), v33, v26, v27, v28);
  DgnString::~DgnString(&v40);
  *a4 += v26;
  *a5 += v27;
  *a6 += v28;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/ldt.cpp", 79, &v40);
  if (v41)
  {
    v38 = v40;
  }

  else
  {
    v38 = &unk_26288CB64;
  }

  v39 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, v35, v36, v37, a3, &unk_26288CB64, (35 - a3), (35 - a3), v38, *a4, *a5, *a6);
  DgnString::~DgnString(&v40);
}

void sub_26275E5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void Imelda::saveImelda(Imelda *this, DFile *a2, DFileChecksums *a3, int a4, int a5)
{
  if (a4)
  {

    Imelda::saveImeldaText(this, a2, a5);
  }

  else
  {
    v8 = OpenAndWriteMrecHeader(a2, 0x1Fu, a5, "MRLDB!?", 19, 3);
    v10 = 0;
    writeObject(v8, this, &v10);
    LinearTransform::writeObject((this + 8), v8, &v10);
    writeObjectChecksum(v8, &v10);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x1Fu, v10);
    DgnDelete<DgnStream>(v8);
  }
}

void Imelda::saveImeldaText(Imelda *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v30);
  DgnTextFileWriter::openDgnTextFileWriter(v30, a2, 0x20u, a3);
  v28 = 0;
  v29 = 0;
  DgnTextFile::legalDgnTextFileVersions(v30, sLDT_Versions, &v28, v6, v7, v8, v9, v10);
  DgnTextFileWriter::setFileType(v30, "LinearDiscriminantTransform", (v28 + 8 * (v29 - 1)));
  v26 = 0;
  v27 = 0;
  v24 = 0;
  v11 = realloc_array(0, &v24, 0x10uLL, 0, 0, 1);
  v25 = 0;
  v26 = v24;
  LODWORD(v27) = 4;
  HIDWORD(v27) = v11 >> 2;
  v23[0] = 0;
  HIDWORD(v25) = realloc_array(0, v23, 0x40uLL, 0, 0, 1) >> 4;
  v24 = v23[0];
  v12 = v25;
  if (v25 <= 4)
  {
    if (v25 != 4)
    {
      v14 = v25 + 1;
      v15 = 16 * v25;
      do
      {
        DgnString::DgnString((v24 + v15));
        v15 += 16;
      }

      while (v14++ != 4);
    }
  }

  else if (v25 >= 5)
  {
    v13 = 16 * v25 - 16;
    do
    {
      --v12;
      DgnString::~DgnString((v24 + v13));
      v13 -= 16;
    }

    while (v12 > 4);
  }

  LODWORD(v25) = 4;
  DgnString::operator=(v24, "TableName");
  *v26 = 0;
  DgnString::operator=((v24 + 16), "RowIndex");
  v26[1] = 3;
  DgnString::operator=((v24 + 32), "ColumnIndex");
  v26[2] = 3;
  DgnString::operator=((v24 + 48), "TableEntryInt");
  v26[3] = 1;
  DgnTextFileWriter::setLineFieldFormat(v30, &v26, &v24);
  v18 = *(this + 2);
  v17 = *(this + 3);
  v19 = *(this + 12);
  DgnTextFileWriter::setHeaderFieldUnsigned(v30, "InputFeatureDim", v18);
  DgnTextFileWriter::setHeaderFieldUnsigned(v30, "OutputFeatureDim", v17);
  DgnTextFileWriter::setHeaderFieldUnsigned(v30, "ModelFeatureDim", *this);
  DgnTextFileWriter::setHeaderFieldUnsigned(v30, "TransformIntScale", 1 << v19);
  if (v17)
  {
    for (i = 0; i != v17; ++i)
    {
      if (v18)
      {
        for (j = 0; j != v18; ++j)
        {
          DgnTextFileWriter::setLineFieldValue(v30, 0, "LDAMatrix");
          DgnTextFileWriter::setLineFieldUnsignedValue(v30, 1u, i);
          DgnTextFileWriter::setLineFieldUnsignedValue(v30, 2u, j);
          DgnTextFileWriter::setLineFieldIntegerValue(v30, 3u, *(*(*(this + 4) + 16 * i) + 4 * j));
          DgnTextFileWriter::writeNextLine(v30);
        }
      }
    }
  }

  v23[0] = 0;
  v23[1] = 0;
  DgnPrimArray<int>::copyArraySlice(v23, this + 2, 0, *(this + 6));
  if (v17)
  {
    for (k = 0; k != v17; ++k)
    {
      DgnTextFileWriter::setLineFieldValue(v30, 0, "LDAOffset");
      DgnTextFileWriter::setLineFieldUnsignedValue(v30, 1u, k);
      DgnTextFileWriter::setLineFieldUnsignedValue(v30, 2u, 0);
      DgnTextFileWriter::setLineFieldIntegerValue(v30, 3u, *(v23[0] + k));
      DgnTextFileWriter::writeNextLine(v30);
    }
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v23);
  DgnArray<DgnString>::releaseAll(&v24);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v26);
  DgnIArray<Utterance *>::~DgnIArray(&v28);
  DgnTextFileWriter::~DgnTextFileWriter(v30);
}

void sub_26275EA34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnIArray<Utterance *>::~DgnIArray(va2);
  DgnTextFileWriter::~DgnTextFileWriter(va3);
  _Unwind_Resume(a1);
}

void MrecInitModule_utteranc_channel(void)
{
  if (!gParDebugUttAddFrame)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugUttAddFrame", byte_26288CB81, byte_26288CB81, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugUttAddFrame = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugUttAddFrame);
  }
}

void PerFrameUttInfo::~PerFrameUttInfo(PerFrameUttInfo *this)
{
  DgnIArray<Utterance *>::~DgnIArray(this + 32);
  DgnIArray<Utterance *>::~DgnIArray(this + 16);

  DgnIArray<Utterance *>::~DgnIArray(this);
}

unint64_t DgnArray<EnergyInfo>::copyArraySlice(unint64_t result, void *a2, unsigned int a3, unsigned int a4)
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
      *(v13 - 6) = 1;
      v13 += 8;
      --v12;
    }

    while (v12);
  }

  *(v7 + 8) = a4;
  return result;
}

unint64_t DgnArray<PitchInfo>::copyArraySlice(unint64_t result, void *a2, unsigned int a3, unsigned int a4)
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
    v13 = (*v7 + 8 * v10);
    do
    {
      *v13++ = 0xFFFFFFFF00000000;
      --v12;
    }

    while (v12);
  }

  *(v7 + 8) = a4;
  return result;
}

void DgnArray<DgnPrimArray<double>>::copyArraySlice(uint64_t a1, void *a2, unsigned int a3, unsigned int a4)
{
  v8 = *(a1 + 8);
  if (v8 >= 1)
  {
    v9 = 16 * v8 - 16;
    do
    {
      DgnPrimArray<unsigned int>::~DgnPrimArray(*a1 + v9);
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
    v14 = *a2 + 16 * a3;
    v15 = (*a1 + 16 * v12);
    *v15 = 0;
    v15[1] = 0;
    DgnPrimArray<double>::copyArraySlice(v15, v14, 0, *(v14 + 8));
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
      v16 = v12;
      v17 = 16 * v12 - 16;
      do
      {
        --v16;
        DgnPrimArray<unsigned int>::~DgnPrimArray(*a1 + v17);
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
      v20 = (*a1 + v19);
      *v20 = 0;
      v20[1] = 0;
      v19 += 16;
      --v18;
    }

    while (v18);
  }

LABEL_17:
  *(a1 + 8) = a4;
}

void Utterance::~Utterance(Utterance *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 416) == 1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 270, "channel/utteranc", 1, "%s", a7, a8, &errStr_channel_utteranc_E_DEL);
  }

  if (!*(this + 53))
  {
    DgnDelete<EnvMgr>(*(this + 40));
    *(this + 40) = 0;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 304);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 288);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 272);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 256);
  DgnIOwnArray<WaveData *>::releaseAll(this + 240);
  DgnIOwnArray<WaveData *>::releaseAll(this + 224);
  DgnIOwnArray<SynchronizedArray<DgnPrimArray<unsigned char>> *>::releaseAll(this + 200);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 184);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 168);
  DgnIArray<Utterance *>::~DgnIArray(this + 152);
  DgnIArray<Utterance *>::~DgnIArray(this + 136);
  DgnIArray<Utterance *>::~DgnIArray(this + 120);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 104);
}

void Utterance::printSize(Utterance *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 286, &v277);
  if (v278)
  {
    v16 = v277;
  }

  else
  {
    v16 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26288CB81, a3, &unk_26288CB81, v16);
  DgnString::~DgnString(&v277);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26288CB81);
  v21 = (a3 + 1);
  v22 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 287, &v277);
  if (v278)
  {
    v27 = v277;
  }

  else
  {
    v27 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v24, v25, v26, (a3 + 1), &unk_26288CB81, (34 - a3), (34 - a3), v27, 4, 4, 0);
  DgnString::~DgnString(&v277);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 288, &v277);
  if (v278)
  {
    v32 = v277;
  }

  else
  {
    v32 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, v29, v30, v31, (a3 + 1), &unk_26288CB81, (34 - a3), (34 - a3), v32, 4, 4, 0);
  DgnString::~DgnString(&v277);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 290, &v277);
  if (v278)
  {
    v37 = v277;
  }

  else
  {
    v37 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, v34, v35, v36, (a3 + 1), &unk_26288CB81, (34 - a3), (34 - a3), v37, 4, 4, 0);
  DgnString::~DgnString(&v277);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 292, &v277);
  if (v278)
  {
    v42 = v277;
  }

  else
  {
    v42 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v38, v39, v40, v41, (a3 + 1), &unk_26288CB81, (34 - a3), (34 - a3), v42, 8, 8, 0);
  DgnString::~DgnString(&v277);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 294, &v277);
  if (v278)
  {
    v47 = v277;
  }

  else
  {
    v47 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v43, v44, v45, v46, (a3 + 1), &unk_26288CB81, (34 - a3), (34 - a3), v47, 8, 8, 0);
  v274 = a3;
  DgnString::~DgnString(&v277);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 295, &v277);
  if (v278)
  {
    v52 = v277;
  }

  else
  {
    v52 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v48, v49, v50, v51, (a3 + 1), &unk_26288CB81, (34 - a3), (34 - a3), v52, 8, 8, 0);
  DgnString::~DgnString(&v277);
  *a4 += 8;
  *a5 += 8;
  v53 = sizeObject(this + 40, 0);
  v54 = sizeObject(this + 40, 1);
  v55 = sizeObject(this + 40, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 297, &v277);
  if (v278)
  {
    v60 = v277;
  }

  else
  {
    v60 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v56, v57, v58, v59, v21, &unk_26288CB81, v22, v22, v60, v53, v54, v55);
  DgnString::~DgnString(&v277);
  *a4 += v53;
  *a5 += v54;
  *a6 += v55;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 298, &v277);
  if (v278)
  {
    v65 = v277;
  }

  else
  {
    v65 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v61, v62, v63, v64, v21, &unk_26288CB81, v22, v22, v65, 8, 8, 0);
  DgnString::~DgnString(&v277);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 300, &v277);
  if (v278)
  {
    v70 = v277;
  }

  else
  {
    v70 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v66, v67, v68, v69, v21, &unk_26288CB81, v22, v22, v70, 4, 4, 0);
  DgnString::~DgnString(&v277);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 302, &v277);
  if (v278)
  {
    v75 = v277;
  }

  else
  {
    v75 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v71, v72, v73, v74, v21, &unk_26288CB81, v22, v22, v75, 4, 4, 0);
  DgnString::~DgnString(&v277);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 304, &v277);
  if (v278)
  {
    v80 = v277;
  }

  else
  {
    v80 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v76, v77, v78, v79, v21, &unk_26288CB81, v22, v22, v80, 4, 4, 0);
  DgnString::~DgnString(&v277);
  *a4 += 4;
  *a5 += 4;
  v81 = sizeObject<DgnPrimArray<unsigned char>>(this + 104, 0);
  v82 = sizeObject<DgnPrimArray<unsigned char>>(this + 104, 1);
  v277 = 0;
  v278 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v277);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 305, &v277);
  if (v278)
  {
    v87 = v277;
  }

  else
  {
    v87 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v83, v84, v85, v86, v21, &unk_26288CB81, v22, v22, v87, v81, v82, 0);
  DgnString::~DgnString(&v277);
  *a4 += v81;
  *a5 += v82;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v88 = 12;
  }

  else
  {
    v88 = 16;
  }

  v89 = *(this + 44);
  v90 = *(this + 45);
  if (v90 >= v89)
  {
    v91 = 0;
    if (v89 > 0)
    {
      v88 += 2 * (v89 - 1) + 2;
    }

    v92 = v88 + 2 * (v90 - v89);
  }

  else
  {
    v91 = 2 * v89;
    v92 = v88;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 307, &v277);
  if (v278)
  {
    v97 = v277;
  }

  else
  {
    v97 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v93, v94, v95, v96, v21, &unk_26288CB81, v22, v22, v97, v92, v88, v91);
  DgnString::~DgnString(&v277);
  *a4 += v92;
  *a5 += v88;
  *a6 += v91;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v98 = 12;
  }

  else
  {
    v98 = 16;
  }

  v99 = *(this + 48);
  v100 = *(this + 49);
  if (v100 >= v99)
  {
    v101 = 0;
    if (v99 > 0)
    {
      v98 += 4 * (v99 - 1) + 4;
    }

    v102 = v98 + 4 * (v100 - v99);
  }

  else
  {
    v101 = 4 * v99;
    v102 = v98;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 309, &v277);
  if (v278)
  {
    v107 = v277;
  }

  else
  {
    v107 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v103, v104, v105, v106, v21, &unk_26288CB81, v22, v22, v107, v102, v98, v101);
  DgnString::~DgnString(&v277);
  *a4 += v102;
  *a5 += v98;
  *a6 += v101;
  v108 = sizeObject<SynchronizedArray<DgnPrimArray<unsigned char>> *>(this + 200, 0);
  v109 = sizeObject<SynchronizedArray<DgnPrimArray<unsigned char>> *>(this + 200, 1);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 311, &v277);
  if (v278)
  {
    v114 = v277;
  }

  else
  {
    v114 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v110, v111, v112, v113, v21, &unk_26288CB81, v22, v22, v114, v108, v109, 0);
  DgnString::~DgnString(&v277);
  *a4 += v108;
  *a5 += v109;
  v115 = sizeObject(this + 120, 0);
  v116 = sizeObject(this + 120, 1);
  v117 = sizeObject(this + 120, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 313, &v277);
  if (v278)
  {
    v122 = v277;
  }

  else
  {
    v122 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v118, v119, v120, v121, v21, &unk_26288CB81, v22, v22, v122, v115, v116, v117);
  DgnString::~DgnString(&v277);
  *a4 += v115;
  *a5 += v116;
  *a6 += v117;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 315, &v277);
  if (v278)
  {
    v127 = v277;
  }

  else
  {
    v127 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v123, v124, v125, v126, v21, &unk_26288CB81, v22, v22, v127, 1, 1, 0);
  DgnString::~DgnString(&v277);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 317, &v277);
  if (v278)
  {
    v132 = v277;
  }

  else
  {
    v132 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v128, v129, v130, v131, v21, &unk_26288CB81, v22, v22, v132, 1, 1, 0);
  DgnString::~DgnString(&v277);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 319, &v277);
  if (v278)
  {
    v137 = v277;
  }

  else
  {
    v137 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v133, v134, v135, v136, v21, &unk_26288CB81, v22, v22, v137, 1, 1, 0);
  DgnString::~DgnString(&v277);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 321, &v277);
  if (v278)
  {
    v142 = v277;
  }

  else
  {
    v142 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v138, v139, v140, v141, v21, &unk_26288CB81, v22, v22, v142, 1, 1, 0);
  DgnString::~DgnString(&v277);
  ++*a4;
  ++*a5;
  v143 = sizeObject<WaveData *>(this + 224, 0);
  v144 = sizeObject<WaveData *>(this + 224, 1);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 322, &v277);
  if (v278)
  {
    v149 = v277;
  }

  else
  {
    v149 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v145, v146, v147, v148, v21, &unk_26288CB81, v22, v22, v149, v143, v144, 0);
  DgnString::~DgnString(&v277);
  *a4 += v143;
  *a5 += v144;
  v150 = sizeObject<WaveData *>(this + 240, 0);
  v151 = sizeObject<WaveData *>(this + 240, 1);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 324, &v277);
  if (v278)
  {
    v156 = v277;
  }

  else
  {
    v156 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v152, v153, v154, v155, v21, &unk_26288CB81, v22, v22, v156, v150, v151, 0);
  DgnString::~DgnString(&v277);
  *a4 += v150;
  *a5 += v151;
  v157 = sizeObject<DgnPrimArray<double>>(this + 256, 0);
  v158 = sizeObject<DgnPrimArray<double>>(this + 256, 1);
  v277 = 0;
  v278 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v277);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 326, &v277);
  if (v278)
  {
    v163 = v277;
  }

  else
  {
    v163 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v159, v160, v161, v162, v21, &unk_26288CB81, v22, v22, v163, v157, v158, 0);
  DgnString::~DgnString(&v277);
  *a4 += v157;
  *a5 += v158;
  v164 = sizeObject<DgnPrimArray<double>>(this + 272, 0);
  v165 = sizeObject<DgnPrimArray<double>>(this + 272, 1);
  v277 = 0;
  v278 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v277);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 327, &v277);
  if (v278)
  {
    v170 = v277;
  }

  else
  {
    v170 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v166, v167, v168, v169, v21, &unk_26288CB81, v22, v22, v170, v164, v165, 0);
  DgnString::~DgnString(&v277);
  *a4 += v164;
  *a5 += v165;
  v171 = sizeObject<DgnPrimArray<double>>(this + 288, 0);
  v172 = sizeObject<DgnPrimArray<double>>(this + 288, 1);
  v277 = 0;
  v278 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v277);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 329, &v277);
  if (v278)
  {
    v177 = v277;
  }

  else
  {
    v177 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v173, v174, v175, v176, v21, &unk_26288CB81, v22, v22, v177, v171, v172, 0);
  DgnString::~DgnString(&v277);
  *a4 += v171;
  *a5 += v172;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v178 = 12;
  }

  else
  {
    v178 = 16;
  }

  v179 = *(this + 78);
  v180 = *(this + 79);
  if (v180 >= v179)
  {
    v181 = 0;
    if (v179 > 0)
    {
      v178 += 2 * (v179 - 1) + 2;
    }

    v182 = v178 + 2 * (v180 - v179);
  }

  else
  {
    v181 = 2 * v179;
    v182 = v178;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 330, &v277);
  if (v278)
  {
    v187 = v277;
  }

  else
  {
    v187 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v183, v184, v185, v186, v21, &unk_26288CB81, v22, v22, v187, v182, v178, v181);
  DgnString::~DgnString(&v277);
  *a4 += v182;
  *a5 += v178;
  *a6 += v181;
  v188 = *(this + 40);
  if (v188)
  {
    v276 = 0;
    v277 = 0;
    v275 = 0;
    EnvMgr::printSize(v188, 0xFFFFFFFFLL, v21, &v277, &v276, &v275);
    *a4 += v277;
    *a5 += v276;
    *a6 += v275;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v189 = 4;
  }

  else
  {
    v189 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 331, &v277);
  if (v278)
  {
    v194 = v277;
  }

  else
  {
    v194 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v190, v191, v192, v193, v21, &unk_26288CB81, v22, v22, v194, v189, v189, 0);
  DgnString::~DgnString(&v277);
  *a4 += v189;
  *a5 += v189;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 332, &v277);
  if (v278)
  {
    v199 = v277;
  }

  else
  {
    v199 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v195, v196, v197, v198, v21, &unk_26288CB81, v22, v22, v199, 4, 4, 0);
  DgnString::~DgnString(&v277);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 334, &v277);
  if (v278)
  {
    v204 = v277;
  }

  else
  {
    v204 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v200, v201, v202, v203, v21, &unk_26288CB81, v22, v22, v204, 8, 8, 0);
  DgnString::~DgnString(&v277);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 335, &v277);
  if (v278)
  {
    v209 = v277;
  }

  else
  {
    v209 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v205, v206, v207, v208, v21, &unk_26288CB81, v22, v22, v209, 4, 4, 0);
  DgnString::~DgnString(&v277);
  *a4 += 4;
  *a5 += 4;
  v210 = SnapTime::sizeObject(this + 352, 0);
  v211 = SnapTime::sizeObject(this + 352, 1);
  v212 = SnapTime::sizeObject(this + 352, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 336, &v277);
  if (v278)
  {
    v217 = v277;
  }

  else
  {
    v217 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v213, v214, v215, v216, v21, &unk_26288CB81, v22, v22, v217, v210, v211, v212);
  DgnString::~DgnString(&v277);
  *a4 += v210;
  *a5 += v211;
  *a6 += v212;
  v218 = SnapTime::sizeObject(this + 384, 0);
  v219 = SnapTime::sizeObject(this + 384, 1);
  v220 = SnapTime::sizeObject(this + 384, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 337, &v277);
  if (v278)
  {
    v225 = v277;
  }

  else
  {
    v225 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v221, v222, v223, v224, v21, &unk_26288CB81, v22, v22, v225, v218, v219, v220);
  DgnString::~DgnString(&v277);
  *a4 += v218;
  *a5 += v219;
  *a6 += v220;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 339, &v277);
  if (v278)
  {
    v230 = v277;
  }

  else
  {
    v230 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v226, v227, v228, v229, v21, &unk_26288CB81, v22, v22, v230, 1, 1, 0);
  DgnString::~DgnString(&v277);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 341, &v277);
  if (v278)
  {
    v235 = v277;
  }

  else
  {
    v235 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v231, v232, v233, v234, v21, &unk_26288CB81, v22, v22, v235, 1, 1, 0);
  DgnString::~DgnString(&v277);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 343, &v277);
  if (v278)
  {
    v240 = v277;
  }

  else
  {
    v240 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v236, v237, v238, v239, v21, &unk_26288CB81, v22, v22, v240, 1, 1, 0);
  DgnString::~DgnString(&v277);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 345, &v277);
  if (v278)
  {
    v245 = v277;
  }

  else
  {
    v245 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v241, v242, v243, v244, v21, &unk_26288CB81, v22, v22, v245, 1, 1, 0);
  DgnString::~DgnString(&v277);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 347, &v277);
  if (v278)
  {
    v250 = v277;
  }

  else
  {
    v250 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v246, v247, v248, v249, v21, &unk_26288CB81, v22, v22, v250, 1, 1, 0);
  DgnString::~DgnString(&v277);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v251 = 4;
  }

  else
  {
    v251 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 349, &v277);
  if (v278)
  {
    v256 = v277;
  }

  else
  {
    v256 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v252, v253, v254, v255, v21, &unk_26288CB81, v22, v22, v256, v251, v251, 0);
  DgnString::~DgnString(&v277);
  *a4 += v251;
  *a5 += v251;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v257 = 4;
  }

  else
  {
    v257 = 8;
  }

  v258 = *(this + 54);
  if (v258)
  {
    v259 = (*(*v258 + 104))(v258, 0) + v257;
    v260 = *(this + 54);
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v257 = 4;
    }

    else
    {
      v257 = 8;
    }

    if (v260 && (v257 += (*(*v260 + 104))(v260, 1), (v261 = *(this + 54)) != 0))
    {
      v262 = (*(*v261 + 104))(v261, 3);
    }

    else
    {
      v262 = 0;
    }
  }

  else
  {
    v262 = 0;
    v259 = v257;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 351, &v277);
  if (v278)
  {
    v267 = v277;
  }

  else
  {
    v267 = &unk_26288CB81;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v263, v264, v265, v266, v21, &unk_26288CB81, v22, v22, v267, v259, v257, v262);
  DgnString::~DgnString(&v277);
  *a4 += v259;
  *a5 += v257;
  *a6 += v262;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/utteranc.cpp", 352, &v277);
  if (v278)
  {
    v272 = v277;
  }

  else
  {
    v272 = &unk_26288CB81;
  }

  v273 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v268, v269, v270, v271, v274, &unk_26288CB81, (35 - v274), (35 - v274), v272, *a4, *a5, *a6);
  DgnString::~DgnString(&v277);
}

void sub_262760440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<SynchronizedArray<DgnPrimArray<unsigned char>> *>(uint64_t a1, int a2)
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
          v9 += sizeObject<DgnPrimArray<unsigned char>>(v10 + 8, a2) + 5;
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

uint64_t sizeObject<WaveData *>(uint64_t a1, int a2)
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
          v9 += sizeObject(v10, a2);
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

EnvMgr *Utterance::getEnvMgr(Utterance *this)
{
  result = *(this + 40);
  if (!result)
  {
    v3 = MemChunkAlloc(0x110uLL, 0);
    result = EnvMgr::EnvMgr(v3, 5u);
    *(this + 40) = result;
  }

  return result;
}

void *DgnIOwnArray<WaveData *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<WaveData>(*(*a1 + v3));
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

unint64_t Utterance::setTransformedFrames(unint64_t result, __int16 a2, int a3, uint64_t a4)
{
  v7 = result;
  v8 = *(result + 176);
  if (v8 == *(result + 180))
  {
    result = DgnPrimArray<short>::reallocElts(result + 168, 1, 1);
    v8 = *(v7 + 176);
  }

  *(*(v7 + 168) + 2 * v8) = a2;
  *(v7 + 176) = v8 + 1;
  v9 = *(v7 + 192);
  if (v9 == *(v7 + 196))
  {
    result = DgnPrimArray<unsigned int>::reallocElts(v7 + 184, 1, 1);
    v9 = *(v7 + 192);
  }

  *(*(v7 + 184) + 4 * v9) = a3;
  ++*(v7 + 192);
  v10 = *(v7 + 208);
  if (v10 == *(v7 + 212))
  {
    result = DgnPrimArray<unsigned long long>::reallocElts(v7 + 200, 1, 1);
    v10 = *(v7 + 208);
  }

  *(*(v7 + 200) + 8 * v10) = a4;
  *(v7 + 208) = v10 + 1;
  return result;
}

uint64_t Utterance::getTransformedFrames(uint64_t this, int a2, int a3)
{
  while (1)
  {
    if (*(this + 416))
    {
      return 0;
    }

    v3 = *(this + 176);
    if (v3)
    {
      break;
    }

LABEL_7:
    this = *(this + 424);
    if (!this)
    {
      return this;
    }
  }

  v4 = 0;
  while (*(*(this + 168) + 2 * v4) != a2 || *(*(this + 184) + 4 * v4) != a3)
  {
    if (v3 == ++v4)
    {
      goto LABEL_7;
    }
  }

  return *(*(this + 200) + 8 * v4);
}

uint64_t Utterance::numCompleteRecogFrames(Utterance *this, unsigned int a2)
{
  v2 = *(this + 28);
  result = 268435200;
  if (v2 != 268435200)
  {
    return v2 / a2;
  }

  return result;
}

void Utterance::Utterance(Utterance *this, Utterance *a2)
{
  *this = *a2;
  *(this + 2) = *(a2 + 2);
  *(this + 1) = *(a2 + 1);
  *(this + 4) = *(a2 + 4);
  AcousticFormat::AcousticFormat(this + 40, a2 + 40);
  *(this + 10) = *(a2 + 10);
  *(this + 11) = *(a2 + 11);
  *(this + 24) = *(a2 + 24);
  *(this + 13) = 0;
  *(this + 14) = 0;
  DgnArray<DgnPrimArray<unsigned char>>::copyArraySlice(this + 104, a2 + 13, 0, *(a2 + 28));
  *(this + 15) = 0;
  *(this + 16) = 0;
  DgnArray<EnergyInfo>::copyArraySlice(this + 120, a2 + 15, 0, *(a2 + 32));
  *(this + 17) = 0;
  *(this + 18) = 0;
  DgnArray<PitchInfo>::copyArraySlice(this + 136, a2 + 17, 0, *(a2 + 36));
  *(this + 19) = 0;
  *(this + 20) = 0;
  DgnArray<FrameTypeInfo>::copyArraySlice(this + 152, a2 + 19, 0, *(a2 + 40));
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  v4 = *(a2 + 54);
  *(this + 15) = 0u;
  *(this + 54) = v4;
  *(this + 14) = 0u;
  *(this + 16) = 0u;
  DgnArray<DgnPrimArray<double>>::copyArraySlice(this + 256, a2 + 32, 0, *(a2 + 66));
  *(this + 34) = 0;
  *(this + 35) = 0;
  DgnArray<DgnPrimArray<double>>::copyArraySlice(this + 272, a2 + 34, 0, *(a2 + 70));
  *(this + 36) = 0;
  *(this + 37) = 0;
  DgnArray<DgnPrimArray<double>>::copyArraySlice(this + 288, a2 + 36, 0, *(a2 + 74));
  *(this + 38) = 0;
  *(this + 39) = 0;
  DgnPrimArray<unsigned short>::copyArraySlice(this + 304, a2 + 38, 0, *(a2 + 78));
  *(this + 40) = *(a2 + 40);
  *(this + 82) = *(a2 + 82);
  *(this + 42) = *(a2 + 42);
  *(this + 86) = *(a2 + 86);
  v5 = *(a2 + 23);
  *(this + 22) = *(a2 + 22);
  *(this + 23) = v5;
  v6 = *(a2 + 25);
  *(this + 24) = *(a2 + 24);
  *(this + 25) = v6;
  *(this + 416) = *(a2 + 416);
  *(this + 417) = *(a2 + 417);
  *(this + 418) = *(a2 + 418);
  *(this + 419) = 1;
  *(this + 420) = 0;
  v7 = *(a2 + 54);
  *(this + 53) = a2;
  *(this + 54) = v7;
  *(a2 + 419) = 1;
  if (*(a2 + 58))
  {
    v8 = 0;
    do
    {
      v9 = *(*(a2 + 28) + 8 * v8);
      v10 = MemChunkAlloc(0x40uLL, 0);
      WaveData::WaveData(v10, v9);
      v11 = *(this + 58);
      if (v11 == *(this + 59))
      {
        DgnPrimArray<unsigned long long>::reallocElts(this + 224, 1, 1);
        v11 = *(this + 58);
      }

      *(*(this + 28) + 8 * v11) = v10;
      *(this + 58) = v11 + 1;
      ++v8;
    }

    while (v8 < *(a2 + 58));
  }

  if (*(a2 + 62))
  {
    v12 = 0;
    do
    {
      v13 = *(*(a2 + 30) + 8 * v12);
      v14 = MemChunkAlloc(0x40uLL, 0);
      WaveData::WaveData(v14, v13);
      v15 = *(this + 62);
      if (v15 == *(this + 63))
      {
        DgnPrimArray<unsigned long long>::reallocElts(this + 240, 1, 1);
        v15 = *(this + 62);
      }

      *(*(this + 30) + 8 * v15) = v14;
      *(this + 62) = v15 + 1;
      ++v12;
    }

    while (v12 < *(a2 + 62));
  }
}

void sub_262760BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v12 + 288);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v12 + 272);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v15 + 16);
  DgnIOwnArray<WaveData *>::releaseAll(v15);
  DgnIOwnArray<WaveData *>::releaseAll(v14);
  DgnIOwnArray<SynchronizedArray<DgnPrimArray<unsigned char>> *>::releaseAll(v13);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a10);
  PerFrameUttInfo::~PerFrameUttInfo(v11);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v10);
  _Unwind_Resume(a1);
}

unint64_t Utterance::syncAfterRecognitionDone(unint64_t this)
{
  v1 = this;
  *(*(this + 424) + 419) = 0;
  if (*(this + 176))
  {
    v2 = 0;
    do
    {
      v3 = MemChunkAlloc(0x18uLL, 0);
      v3[1] = 0;
      v3[2] = 0;
      *v3 = 0;
      *(v3 + 1) = -16;
      SynchronizedArray<DgnPrimArray<unsigned char>>::update(v3, *(*(v1 + 200) + 8 * v2));
      this = Utterance::setTransformedFrames(*(v1 + 424), *(*(v1 + 168) + 2 * v2), *(*(v1 + 184) + 4 * v2), v3);
      ++v2;
    }

    while (v2 < *(v1 + 176));
  }

  *(v1 + 419) = 0;
  return this;
}

uint64_t UttFeatureArraySynchronizedArray::update(uint64_t this, const Utterance *a2)
{
  v3 = this;
  v4 = *(a2 + 28);
  v6 = *(this + 16);
  v5 = *(this + 20);
  v7 = v6;
  if (v4 > v5)
  {
    this = DgnArray<DgnPrimArray<double>>::reallocElts(this + 8, v4 - v5, 0);
    v7 = *(v3 + 16);
  }

  if (v7 <= v4)
  {
    if (v7 < v4)
    {
      v10 = 16 * v7;
      v11 = v4 - v7;
      do
      {
        v12 = (*(v3 + 8) + v10);
        *v12 = 0;
        v12[1] = 0;
        v10 += 16;
        --v11;
      }

      while (v11);
    }
  }

  else if (v7 > v4)
  {
    v8 = v7;
    v9 = 16 * v7 - 16;
    do
    {
      --v8;
      this = DgnPrimArray<unsigned int>::~DgnPrimArray(*(v3 + 8) + v9);
      v9 -= 16;
    }

    while (v8 > v4);
  }

  *(v3 + 16) = v4;
  if (v6 < v4)
  {
    do
    {
      v13 = *(a2 + 13) + 16 * v6;
      this = DgnPrimArray<unsigned char>::copyArraySlice(*(v3 + 8) + 16 * v6++, v13, 0, *(v13 + 8));
    }

    while (v4 != v6);
  }

  if ((*(a2 + 416) & 1) == 0)
  {
    *v3 = 1;
  }

  return this;
}

void DgnArray<FrameTypeInfo>::copyArraySlice(uint64_t a1, uint64_t *a2, unsigned int a3, unsigned int a4)
{
  *(a1 + 8) = 0;
  v8 = *(a1 + 12);
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
    DgnPrimArray<unsigned int>::reallocElts(a1, a4 - v8, 0);
    v9 = *(a1 + 8);
  }

  v11 = *a2;
  v12 = *a1;
  v13 = a4;
  v10 = v9;
  do
  {
    *(v12 + 4 * v10++) = *(v11 + 4 * a3++);
    --v13;
  }

  while (v13);
LABEL_6:
  if (v10 < a4)
  {
    bzero((*a1 + 4 * v10), 4 * (~v10 + a4) + 4);
  }

  *(a1 + 8) = a4;
}

void *DgnIOwnArray<SynchronizedArray<DgnPrimArray<unsigned char>> *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<UttFeatureArraySynchronizedArray>(*(*a1 + v3));
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

void SigProcDescriptor::SigProcDescriptor(SigProcDescriptor *this)
{
  FeatureGeneratorSpec::FeatureGeneratorSpec(this);
  v2[10] = 0;
  v2[11] = 0;
  CharInfo::CharInfo((v2 + 12));
  *(this + 13) = 0;
  *(this + 14) = 0;
  FeatureSelectorSpec::FeatureSelectorSpec((this + 120));
  *(this + 9) = 0u;
  *(this + 44) = 0;
  *(this + 10) = 0u;
  ChanStatsSpec::ChanStatsSpec((this + 184));
  *(this + 332) = 0;
}

void sub_262760FB4(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 160);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v4);
  BitArray::~BitArray((v1 + 128));
  DgnArray<FeatureFilterSpec>::releaseAll(v3);
  DgnArray<FeatureFilterSpec>::releaseAll(v2);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void SigProcDescriptor::~SigProcDescriptor(SigProcDescriptor *this)
{
  ChanStatsSpec::~ChanStatsSpec((this + 184));
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 160);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 144);
  BitArray::~BitArray((this + 128));
  DgnArray<FeatureFilterSpec>::releaseAll(this + 104);
  DgnArray<FeatureFilterSpec>::releaseAll(this + 80);

  MrecInitModule_sdpres_sdapi();
}

uint64_t sizeObject<FeatureFilterSpec>(uint64_t a1, int a2)
{
  FeatureFilterSpec::FeatureFilterSpec(v11);
  v4 = sizeObject(v11, 2);
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
        v9 = 40 * v7 - 40;
        do
        {
          v5 += sizeObject(*a1 + v9, a2);
          --v8;
          v9 -= 40;
        }

        while (v8 > 1);
      }

      if (!a2)
      {
        v5 += v6 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v12);
  return v5;
}

void sub_262761230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void SigProcDescriptor::saveSPD(SigProcDescriptor *this, DFile *a2, int a3)
{
  v6 = *(this + 22);
  v7 = *(this + 28);
  v8 = *(this + 1);
  v9 = *(this + 31);
  DgnTextFileWriter::DgnTextFileWriter(v99);
  DgnTextFileWriter::openDgnTextFileWriter(v99, a2, 0x57u, a3);
  v97 = 0;
  v98 = 0;
  DgnTextFile::legalDgnTextFileVersions(v99, sSPD_Versions, &v97, v10, v11, v12, v13, v14);
  DgnTextFileWriter::setFileType(v99, "SignalProcessorDescriptor", (v97 + 8 * (v98 - 1)));
  DgnString::DgnString(&v95);
  if ((*this - 1) < 4u)
  {
    DgnString::operator=(&v95, off_279B3F880[(*this - 1)]);
  }

  if (v96)
  {
    v15 = v95;
  }

  else
  {
    v15 = &unk_26288CBBA;
  }

  DgnTextFileWriter::setHeaderField(v99, "BasicFeatureType", v15);
  DgnTextFileWriter::setHeaderFieldUnsigned(v99, "MelLowFreqCutoff", *(this + 8));
  DgnTextFileWriter::setHeaderFieldUnsigned(v99, "MelHighFreqCutoff", *(this + 9));
  DgnTextFileWriter::setHeaderFieldUnsigned(v99, "MelCenterFreqLinearSpacing", *(this + 10));
  DgnTextFileWriter::setHeaderFieldUnsigned(v99, "MelCenterFreqLinearSpacingHighCutoff", *(this + 11));
  DgnTextFileWriter::setHeaderFieldReal(v99, "MelCenterFreqGeometricScale", *(this + 6));
  v16 = *this;
  if (v16 != 3)
  {
    if (v16 != 2)
    {
      goto LABEL_10;
    }

    DgnTextFileWriter::setHeaderFieldReal(v99, "PLPExponent", *(this + 8));
  }

  DgnTextFileWriter::setHeaderFieldUnsigned(v99, "LPCOrder", *(this + 18));
LABEL_10:
  DgnTextFileWriter::setHeaderFieldUnsigned(v99, "SampleRateMin", *(this + 2));
  DgnTextFileWriter::setHeaderFieldUnsigned(v99, "SampleRateMax", *(this + 3));
  DgnTextFileWriter::setHeaderFieldUnsigned(v99, "FrameLengthInMicrosec", *(this + 83));
  DgnTextFileWriter::setHeaderFieldUnsigned(v99, "AnalysisWindowLengthInMicrosec", *(this + 84));
  DgnTextFileWriter::setHeaderFieldUnsigned(v99, "NumberOfSpectralWarpChoices", *(this + 80));
  DgnTextFileWriter::setHeaderFieldUnsigned(v99, "BasicFeatureDim", *(this + 1));
  DgnTextFileWriter::setHeaderFieldUnsigned(v99, "AntialiasFeatureFilters", v6);
  DgnTextFileWriter::setHeaderFieldUnsigned(v99, "AntialiasDecimationFactor", *(this + 24));
  DgnTextFileWriter::setHeaderFieldUnsigned(v99, "BasicFeatureFilters", v7);
  DgnTextFileWriter::setHeaderFieldUnsigned(v99, "FinalFeatureDim", v9);
  DgnTextFileWriter::setHeaderFieldUnsigned(v99, "ModelFeatureDim", *(this + 82));
  DgnTextFileWriter::setHeaderFieldUnsigned(v99, "FeatureScaleAndOffsetIntScale", 1 << *(this + 44));
  DgnTextFileWriter::setHeaderFieldReal(v99, "PreemphCoeff", *(this + 3));
  v17 = *(this + 92);
  if (v17 == 1)
  {
    v18 = "NoMeansNorm";
  }

  else
  {
    if (v17 != 2)
    {
      goto LABEL_15;
    }

    v18 = "ChannelMeansSubtraction";
  }

  DgnString::operator=(&v95, v18);
LABEL_15:
  if (v96)
  {
    v19 = v95;
  }

  else
  {
    v19 = &unk_26288CBBA;
  }

  DgnTextFileWriter::setHeaderField(v99, "ChannelMeansNormalizationType", v19);
  v20 = *(this + 104);
  if (v20 == 1)
  {
    v21 = "NoVarianceNorm";
  }

  else
  {
    if (v20 != 2)
    {
      goto LABEL_23;
    }

    v21 = "ChannelVarianceNorm";
  }

  DgnString::operator=(&v95, v21);
LABEL_23:
  if (v96)
  {
    v22 = v95;
  }

  else
  {
    v22 = &unk_26288CBBA;
  }

  DgnTextFileWriter::setHeaderField(v99, "ChannelVarianceNormalizationType", v22);
  if (*(this + 132) - 1 <= 2)
  {
    DgnString::operator=(&v95, off_279B3F8A0[(*(this + 132) - 1)]);
  }

  if (v96)
  {
    v23 = v95;
  }

  else
  {
    v23 = &unk_26288CBBA;
  }

  DgnTextFileWriter::setHeaderField(v99, "CDFNormalizationType", v23);
  if (*(this + 132) != 1)
  {
    DgnTextFileWriter::setHeaderFieldUnsigned(v99, "CDFNormalizationSum", *(this + 72));
  }

  v24 = *(this + 146);
  if (v24 == 1)
  {
    v25 = "NoMaximumNorm";
  }

  else
  {
    if (v24 != 2)
    {
      goto LABEL_38;
    }

    v25 = "C0MaximumNorm";
  }

  DgnString::operator=(&v95, v25);
LABEL_38:
  if (v96)
  {
    v26 = v95;
  }

  else
  {
    v26 = &unk_26288CBBA;
  }

  DgnTextFileWriter::setHeaderField(v99, "ChannelMaxNormalizationType", v26);
  v27 = *(this + 28);
  if (v27 == 1)
  {
    v28 = "SplitRadixFloat";
  }

  else
  {
    if (v27 != 2)
    {
      goto LABEL_46;
    }

    v28 = "SplitRadixInteger";
  }

  DgnString::operator=(&v95, v28);
LABEL_46:
  if (v96)
  {
    v29 = v95;
  }

  else
  {
    v29 = &unk_26288CBBA;
  }

  DgnTextFileWriter::setHeaderField(v99, "FourierTransformType", v29);
  *v93 = 0;
  v94 = 0;
  v91 = 0;
  HIDWORD(v94) = realloc_array(0, &v91, 0x40uLL, 0, 0, 1) >> 4;
  *v93 = v91;
  v30 = v94;
  if (v94 <= 4)
  {
    if (v94 != 4)
    {
      v32 = v94 + 1;
      v33 = 16 * v94;
      do
      {
        DgnString::DgnString((*v93 + v33));
        v33 += 16;
      }

      while (v32++ != 4);
    }
  }

  else if (v94 >= 5)
  {
    v31 = 16 * v94 - 16;
    do
    {
      --v30;
      DgnString::~DgnString((*v93 + v31));
      v31 -= 16;
    }

    while (v30 > 4);
  }

  v90 = v6;
  v91 = 0;
  LODWORD(v94) = 4;
  v92 = 0;
  v100 = 0;
  v35 = realloc_array(0, &v100, 0x10uLL, 0, 0, 1);
  v88 = v8;
  v91 = v100;
  LODWORD(v92) = 4;
  HIDWORD(v92) = v35 >> 2;
  DgnString::operator=(*v93, "Type");
  *v91 = 0;
  DgnString::operator=((*v93 + 16), "UnsVal1");
  *(v91 + 1) = 3;
  DgnString::operator=((*v93 + 32), "IntVal1");
  *(v91 + 2) = 1;
  DgnString::operator=((*v93 + 48), "IntVal2");
  *(v91 + 3) = 1;
  DgnTextFileWriter::setLineFieldFormat(v99, &v91, v93);
  v89 = v7;
  if (v7)
  {
    v36 = *(this + 80);
    if (v36)
    {
      v37 = 0;
      v38 = 0;
      do
      {
        v39 = *(this + 39);
        DgnTextFileWriter::setLineFieldValue(v99, 0, "WarpChoiceInfo");
        DgnTextFileWriter::setLineFieldUnsignedValue(v99, 1u, v38);
        DgnTextFileWriter::setLineFieldIntegerValue(v99, 2u, *(v39 + v37));
        DgnTextFileWriter::setLineFieldIntegerValue(v99, 3u, *(v39 + v37 + 16));
        DgnTextFileWriter::writeNextLine(v99);
        ++v38;
        v37 += 24;
      }

      while (24 * v36 != v37);
      for (i = 0; i != v36; ++i)
      {
        v41 = *(this + 39) + 24 * i;
        if (*(v41 + 16))
        {
          v42 = 0;
          v43 = 0;
          do
          {
            v44 = (*(v41 + 8) + v42);
            v46 = *v44;
            v45 = v44[1];
            DgnTextFileWriter::setLineFieldValue(v99, 0, "SpectralWarpChoiceCoordinates");
            DgnTextFileWriter::setLineFieldUnsignedValue(v99, 1u, i);
            DgnTextFileWriter::setLineFieldIntegerValue(v99, 2u, v46);
            DgnTextFileWriter::setLineFieldIntegerValue(v99, 3u, v45);
            DgnTextFileWriter::writeNextLine(v99);
            ++v43;
            v42 += 8;
          }

          while (v43 < *(v41 + 16));
        }
      }
    }
  }

  if (v90)
  {
    v47 = 0;
    v48 = 0;
    v49 = 40 * v90;
    do
    {
      v50 = *(this + 10);
      DgnTextFileWriter::setLineFieldValue(v99, 0, "AntialiasFeatureFilterInput");
      DgnTextFileWriter::setLineFieldUnsignedValue(v99, 1u, v48);
      DgnTextFileWriter::setLineFieldIntegerValue(v99, 2u, *(v50 + v47 + 12) / *(v50 + v47));
      DgnTextFileWriter::setLineFieldIntegerValue(v99, 3u, 0);
      DgnTextFileWriter::writeNextLine(v99);
      ++v48;
      v47 += 40;
    }

    while (v49 != v47);
    v51 = 0;
    v52 = 32;
    do
    {
      v53 = *(this + 10);
      DgnTextFileWriter::setLineFieldValue(v99, 0, "AntialiasFeatureFilterInverseScale");
      DgnTextFileWriter::setLineFieldUnsignedValue(v99, 1u, v51);
      DgnTextFileWriter::setLineFieldIntegerValue(v99, 2u, *(v53 + v52));
      DgnTextFileWriter::setLineFieldIntegerValue(v99, 3u, 0);
      DgnTextFileWriter::writeNextLine(v99);
      ++v51;
      v52 += 40;
    }

    while (v90 != v51);
    v54 = 0;
    v55 = 0;
    do
    {
      v56 = *(this + 10) + v54;
      v57 = *(v56 + 4);
      v58 = *(v56 + 8);
      DgnTextFileWriter::setLineFieldValue(v99, 0, "AntialiasFeatureFilterRange");
      DgnTextFileWriter::setLineFieldUnsignedValue(v99, 1u, v55);
      DgnTextFileWriter::setLineFieldIntegerValue(v99, 2u, -v58);
      DgnTextFileWriter::setLineFieldIntegerValue(v99, 3u, v57 + ~v58);
      DgnTextFileWriter::writeNextLine(v99);
      v54 += 40;
      ++v55;
    }

    while (v49 != v54);
    for (j = 0; j != v90; ++j)
    {
      v60 = *(this + 10) + 40 * j;
      if (*(v60 + 4))
      {
        v61 = 0;
        do
        {
          DgnTextFileWriter::setLineFieldValue(v99, 0, "AntialiasFeatureFilterCoeff");
          DgnTextFileWriter::setLineFieldUnsignedValue(v99, 1u, j);
          DgnTextFileWriter::setLineFieldIntegerValue(v99, 2u, v61 - *(v60 + 8));
          DgnTextFileWriter::setLineFieldIntegerValue(v99, 3u, *(*(v60 + 16) + 4 * v61));
          DgnTextFileWriter::writeNextLine(v99);
          ++v61;
        }

        while (v61 < *(v60 + 4));
      }
    }
  }

  if (v89)
  {
    v62 = 0;
    v63 = 0;
    v64 = 40 * v89;
    do
    {
      v65 = *(this + 13);
      DgnTextFileWriter::setLineFieldValue(v99, 0, "BasicFeatureFilterInput");
      DgnTextFileWriter::setLineFieldUnsignedValue(v99, 1u, v63);
      DgnTextFileWriter::setLineFieldIntegerValue(v99, 2u, *(v65 + v62 + 12) / *(v65 + v62));
      DgnTextFileWriter::setLineFieldIntegerValue(v99, 3u, 0);
      DgnTextFileWriter::writeNextLine(v99);
      ++v63;
      v62 += 40;
    }

    while (v64 != v62);
    v66 = 0;
    v67 = 32;
    do
    {
      v68 = *(this + 13);
      DgnTextFileWriter::setLineFieldValue(v99, 0, "BasicFeatureFilterInverseScale");
      DgnTextFileWriter::setLineFieldUnsignedValue(v99, 1u, v66);
      DgnTextFileWriter::setLineFieldIntegerValue(v99, 2u, *(v68 + v67));
      DgnTextFileWriter::setLineFieldIntegerValue(v99, 3u, 0);
      DgnTextFileWriter::writeNextLine(v99);
      ++v66;
      v67 += 40;
    }

    while (v89 != v66);
    v69 = 0;
    v70 = 0;
    do
    {
      v71 = *(this + 13) + v69;
      v72 = *(v71 + 4);
      v73 = *(v71 + 8);
      DgnTextFileWriter::setLineFieldValue(v99, 0, "BasicFeatureFilterRange");
      DgnTextFileWriter::setLineFieldUnsignedValue(v99, 1u, v70);
      DgnTextFileWriter::setLineFieldIntegerValue(v99, 2u, -v73);
      DgnTextFileWriter::setLineFieldIntegerValue(v99, 3u, v72 + ~v73);
      DgnTextFileWriter::writeNextLine(v99);
      v69 += 40;
      ++v70;
    }

    while (v64 != v69);
    for (k = 0; k != v89; ++k)
    {
      v75 = *(this + 13) + 40 * k;
      if (*(v75 + 4))
      {
        v76 = 0;
        do
        {
          DgnTextFileWriter::setLineFieldValue(v99, 0, "BasicFeatureFilterCoeff");
          DgnTextFileWriter::setLineFieldUnsignedValue(v99, 1u, k);
          DgnTextFileWriter::setLineFieldIntegerValue(v99, 2u, v76 - *(v75 + 8));
          DgnTextFileWriter::setLineFieldIntegerValue(v99, 3u, *(*(v75 + 16) + 4 * v76));
          DgnTextFileWriter::writeNextLine(v99);
          ++v76;
        }

        while (v76 < *(v75 + 4));
      }
    }
  }

  v77 = (v88 + v88 * v89);
  if (v77)
  {
    for (m = 0; m != v77; ++m)
    {
      DgnTextFileWriter::setLineFieldValue(v99, 0, "FeatureScaleAndOffset");
      DgnTextFileWriter::setLineFieldUnsignedValue(v99, 1u, m);
      DgnTextFileWriter::setLineFieldIntegerValue(v99, 2u, *(*(this + 18) + 4 * m));
      DgnTextFileWriter::setLineFieldIntegerValue(v99, 3u, *(*(this + 20) + 4 * m));
      DgnTextFileWriter::writeNextLine(v99);
    }
  }

  if (*(this + 146) == 2)
  {
    v79 = 0;
    v80 = 1;
    do
    {
      v81 = v80;
      DgnTextFileWriter::setLineFieldValue(v99, 0, "ChannelMaxNormInitialCoordinates");
      DgnTextFileWriter::setLineFieldUnsignedValue(v99, 1u, v79);
      if (v81)
      {
        DgnTextFileWriter::setLineFieldIntegerValue(v99, 2u, *(this + 74));
        v82 = (this + 300);
      }

      else
      {
        DgnTextFileWriter::setLineFieldIntegerValue(v99, 2u, *(this + 76));
        v82 = (this + 308);
      }

      DgnTextFileWriter::setLineFieldIntegerValue(v99, 3u, *v82);
      DgnTextFileWriter::writeNextLine(v99);
      v80 = 0;
      v79 = 1;
    }

    while ((v81 & 1) != 0);
  }

  if (*(this + 92) != 1 && v77)
  {
    for (n = 0; n != v77; ++n)
    {
      DgnTextFileWriter::setLineFieldValue(v99, 0, "ChannelMeansTarget");
      DgnTextFileWriter::setLineFieldUnsignedValue(v99, 1u, n);
      DgnTextFileWriter::setLineFieldIntegerValue(v99, 2u, *(*(this + 24) + n));
      DgnTextFileWriter::setLineFieldIntegerValue(v99, 3u, 0);
      DgnTextFileWriter::writeNextLine(v99);
    }
  }

  if (*(this + 104) != 1 && v77)
  {
    for (ii = 0; ii != v77; ++ii)
    {
      DgnTextFileWriter::setLineFieldValue(v99, 0, "ChannelVarianceTarget");
      DgnTextFileWriter::setLineFieldUnsignedValue(v99, 1u, ii);
      DgnTextFileWriter::setLineFieldIntegerValue(v99, 2u, *(*(this + 27) + ii));
      DgnTextFileWriter::setLineFieldIntegerValue(v99, 3u, 0);
      DgnTextFileWriter::writeNextLine(v99);
    }

    for (jj = 0; jj != v77; ++jj)
    {
      DgnTextFileWriter::setLineFieldValue(v99, 0, "ChannelVarianceRange");
      DgnTextFileWriter::setLineFieldUnsignedValue(v99, 1u, jj);
      DgnTextFileWriter::setLineFieldIntegerValue(v99, 2u, *(*(this + 29) + jj));
      DgnTextFileWriter::setLineFieldIntegerValue(v99, 3u, *(*(this + 31) + jj));
      DgnTextFileWriter::writeNextLine(v99);
    }
  }

  if (*(this + 132) != 1)
  {
    for (kk = 0; kk != 256; ++kk)
    {
      DgnTextFileWriter::setLineFieldValue(v99, 0, "CDFNormalizationTargetHistogram");
      DgnTextFileWriter::setLineFieldUnsignedValue(v99, 1u, kk);
      DgnTextFileWriter::setLineFieldIntegerValue(v99, 2u, *(*(this + 34) + 4 * kk));
      DgnTextFileWriter::setLineFieldIntegerValue(v99, 3u, 0);
      DgnTextFileWriter::writeNextLine(v99);
    }
  }

  if (v77)
  {
    v87 = 0;
    do
    {
      DgnTextFileWriter::setLineFieldValue(v99, 0, "FeatureSelector");
      DgnTextFileWriter::setLineFieldUnsignedValue(v99, 1u, v87);
      DgnTextFileWriter::setLineFieldIntegerValue(v99, 2u, (*(*(this + 16) + 4 * (v87 >> 5)) >> v87) & 1);
      DgnTextFileWriter::setLineFieldIntegerValue(v99, 3u, 0);
      DgnTextFileWriter::writeNextLine(v99);
      ++v87;
    }

    while (v77 != v87);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v91);
  DgnArray<DgnString>::releaseAll(v93);
  DgnString::~DgnString(&v95);
  DgnIArray<Utterance *>::~DgnIArray(&v97);
  DgnTextFileWriter::~DgnTextFileWriter(v99);
}

void sub_2627620A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
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
  DgnArray<DgnString>::releaseAll(va);
  DgnString::~DgnString(va1);
  DgnIArray<Utterance *>::~DgnIArray(va2);
  DgnTextFileWriter::~DgnTextFileWriter(va3);
  _Unwind_Resume(a1);
}

void SigProcDescriptor::saveSigProcDescriptor(SigProcDescriptor *this, DFile *a2, DFileChecksums *a3, int a4, int a5)
{
  if (a4)
  {

    SigProcDescriptor::saveSPD(this, a2, a5);
  }

  else
  {
    v8 = OpenAndWriteMrecHeader(a2, 0x56u, a5, "MRSPD!?", 24, 6);
    v10 = 0;
    writeObject(v8, this, &v10);
    writeObject<FeatureFilterSpec>(v8, this + 80, &v10);
    writeObject(v8, this + 96, &v10);
    writeObject<FeatureFilterSpec>(v8, this + 104, &v10);
    writeObject(v8, (this + 120), &v10);
    writeObject(v8, (this + 144), &v10);
    writeObject(v8, (this + 184), &v10);
    writeObject(v8, this + 82, &v10);
    writeObject(v8, this + 83, &v10);
    writeObject(v8, this + 84, &v10);
    writeObjectChecksum(v8, &v10);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x56u, v10);
    DgnDelete<DgnStream>(v8);
  }
}

uint64_t writeObject<FeatureFilterSpec>(DgnStream *a1, uint64_t a2, unsigned int *a3)
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
      v7 += 40;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

void SigProcDescriptor::printSize(SigProcDescriptor *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/spd.cpp", 1365, &v101);
  if (v102)
  {
    v16 = v101;
  }

  else
  {
    v16 = &unk_26288CBBA;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26288CBBA, a3, &unk_26288CBBA, v16);
  DgnString::~DgnString(&v101);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26288CBBA);
  v21 = sizeObject(this, 0);
  v22 = sizeObject(this, 1);
  v23 = sizeObject(this, 3);
  v24 = (a3 + 1);
  v100 = a3;
  v25 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/spd.cpp", 1367, &v101);
  if (v102)
  {
    v30 = v101;
  }

  else
  {
    v30 = &unk_26288CBBA;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, v27, v28, v29, v24, &unk_26288CBBA, v25, v25, v30, v21, v22, v23);
  DgnString::~DgnString(&v101);
  *a4 += v21;
  *a5 += v22;
  *a6 += v23;
  v31 = sizeObject<FeatureFilterSpec>(this + 80, 0);
  v32 = sizeObject<FeatureFilterSpec>(this + 80, 1);
  v33 = sizeObject<FeatureFilterSpec>(this + 80, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/spd.cpp", 1367, &v101);
  if (v102)
  {
    v38 = v101;
  }

  else
  {
    v38 = &unk_26288CBBA;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, v35, v36, v37, v24, &unk_26288CBBA, v25, v25, v38, v31, v32, v33);
  DgnString::~DgnString(&v101);
  *a4 += v31;
  *a5 += v32;
  *a6 += v33;
  v39 = sizeObject(this + 96, 0);
  v40 = sizeObject(this + 96, 1);
  v41 = sizeObject(this + 96, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/spd.cpp", 1367, &v101);
  if (v102)
  {
    v46 = v101;
  }

  else
  {
    v46 = &unk_26288CBBA;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v43, v44, v45, v24, &unk_26288CBBA, v25, v25, v46, v39, v40, v41);
  DgnString::~DgnString(&v101);
  *a4 += v39;
  *a5 += v40;
  *a6 += v41;
  v47 = sizeObject<FeatureFilterSpec>(this + 104, 0);
  v48 = sizeObject<FeatureFilterSpec>(this + 104, 1);
  v49 = sizeObject<FeatureFilterSpec>(this + 104, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/spd.cpp", 1367, &v101);
  if (v102)
  {
    v54 = v101;
  }

  else
  {
    v54 = &unk_26288CBBA;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v50, v51, v52, v53, v24, &unk_26288CBBA, v25, v25, v54, v47, v48, v49);
  DgnString::~DgnString(&v101);
  *a4 += v47;
  *a5 += v48;
  *a6 += v49;
  v55 = sizeObject(this + 120, 0);
  v56 = sizeObject(this + 120, 1);
  v57 = sizeObject(this + 120, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/spd.cpp", 1367, &v101);
  if (v102)
  {
    v62 = v101;
  }

  else
  {
    v62 = &unk_26288CBBA;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v58, v59, v60, v61, v24, &unk_26288CBBA, v25, v25, v62, v55, v56, v57);
  DgnString::~DgnString(&v101);
  *a4 += v55;
  *a5 += v56;
  *a6 += v57;
  v63 = sizeObject(this + 144, 0);
  v64 = sizeObject(this + 144, 1);
  v65 = sizeObject(this + 144, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/spd.cpp", 1367, &v101);
  if (v102)
  {
    v70 = v101;
  }

  else
  {
    v70 = &unk_26288CBBA;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v66, v67, v68, v69, v24, &unk_26288CBBA, v25, v25, v70, v63, v64, v65);
  DgnString::~DgnString(&v101);
  *a4 += v63;
  *a5 += v64;
  *a6 += v65;
  v71 = sizeObject(this + 184, 0);
  v72 = sizeObject(this + 184, 1);
  v73 = sizeObject(this + 184, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/spd.cpp", 1367, &v101);
  if (v102)
  {
    v78 = v101;
  }

  else
  {
    v78 = &unk_26288CBBA;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v74, v75, v76, v77, v24, &unk_26288CBBA, v25, v25, v78, v71, v72, v73);
  DgnString::~DgnString(&v101);
  *a4 += v71;
  *a5 += v72;
  *a6 += v73;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/spd.cpp", 1367, &v101);
  if (v102)
  {
    v83 = v101;
  }

  else
  {
    v83 = &unk_26288CBBA;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v79, v80, v81, v82, v24, &unk_26288CBBA, v25, v25, v83, 4, 4, 0);
  DgnString::~DgnString(&v101);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/spd.cpp", 1367, &v101);
  if (v102)
  {
    v88 = v101;
  }

  else
  {
    v88 = &unk_26288CBBA;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v84, v85, v86, v87, v24, &unk_26288CBBA, v25, v25, v88, 4, 4, 0);
  DgnString::~DgnString(&v101);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/spd.cpp", 1367, &v101);
  if (v102)
  {
    v93 = v101;
  }

  else
  {
    v93 = &unk_26288CBBA;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v89, v90, v91, v92, v24, &unk_26288CBBA, v25, v25, v93, 4, 4, 0);
  DgnString::~DgnString(&v101);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/spd.cpp", 1368, &v101);
  if (v102)
  {
    v98 = v101;
  }

  else
  {
    v98 = &unk_26288CBBA;
  }

  v99 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v94, v95, v96, v97, v100, &unk_26288CBBA, (35 - v100), (35 - v100), v98, *a4, *a5, *a6);
  DgnString::~DgnString(&v101);
}

void sub_2627629F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void *DgnArray<FeatureFilterSpec>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 40 * v2 - 24;
    do
    {
      DgnPrimArray<unsigned int>::~DgnPrimArray(*a1 + v3);
      v3 -= 40;
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

uint64_t DgnSharedMemStream::DgnSharedMemStream(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v8 = DgnStream::DgnStream(a1, a4, 0);
  *v8 = &unk_2875268E0;
  *(v8 + 56) = a3;
  *(v8 + 64) = a2;
  *(v8 + 72) = 0;
  FileSpec::setEmpty((v8 + 16));
  DgnSharedMemSet::getMappedDSMName(*(a1 + 64), a3, &v18);
  if (v19)
  {
    v9 = v18;
  }

  else
  {
    v9 = &unk_26288CBFD;
  }

  FileSpec::fillFromName((a1 + 16), v9);
  DgnString::~DgnString(&v18);
  if (a4 == 2)
  {
    if (*(a1 + 24))
    {
      v15 = *(a1 + 16);
    }

    else
    {
      v15 = &unk_26288CBFD;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 58, "dfutil/dsmstream", 2, "%.500s", v13, v14, v15);
  }

  if (a4)
  {
    v16 = 4;
  }

  else
  {
    v16 = 3;
  }

  DgnSharedMemStream::openDSM(a1, v16, -1, v10, v11, v12, v13, v14);
  return a1;
}

char *DgnSharedMemStream::openDSM(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a3;
  if (*(a1 + 72))
  {
    if (*(a1 + 24))
    {
      v10 = *(a1 + 16);
    }

    else
    {
      v10 = &unk_26288CBFD;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 79, "dfutil/dsmstream", 6, "%.500s", a7, a8, v10);
  }

  result = DgnSharedMemSet::openDSMWithSizeEx(*(a1 + 64), *(a1 + 56), a2, &v13);
  if (!a2)
  {
    *(a1 + 72) = -1;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    goto LABEL_10;
  }

  *(a1 + 72) = result;
  *(a1 + 40) = v13;
  *(a1 + 48) = 0;
  if ((a2 & 0xFFFFFFFE) != 2)
  {
LABEL_10:
    v12 = 1;
    goto LABEL_11;
  }

  v12 = 0;
LABEL_11:
  *(a1 + 8) = v12;
  return result;
}

void DgnSharedMemStream::DgnSharedMemStream(DgnSharedMemStream *this, DgnSharedMemSet *a2, unsigned int a3)
{
  v6 = DgnStream::DgnStream(this, 0, 0);
  *v6 = &unk_2875268E0;
  *(v6 + 56) = a3;
  *(v6 + 64) = a2;
  *(v6 + 72) = 0;
  FileSpec::setEmpty((v6 + 16));
  DgnSharedMemSet::getMappedDSMName(*(this + 8), a3, &v8);
  if (v9)
  {
    v7 = v8;
  }

  else
  {
    v7 = &unk_26288CBFD;
  }

  FileSpec::fillFromName((this + 16), v7);
  DgnString::~DgnString(&v8);
}

void sub_262762D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  DgnString::~DgnString(&a9);
  DgnStream::~DgnStream(v9);
  _Unwind_Resume(a1);
}

uint64_t *DgnSharedMemStream::closeDSM(uint64_t *this)
{
  v1 = this;
  if (this[9])
  {
    this = DgnSharedMemSet::closeDSMEx(this[8], *(this + 14));
  }

  v1[9] = 0;
  return this;
}

void DgnSharedMemStream::~DgnSharedMemStream(DgnSharedMemStream *this)
{
  *this = &unk_2875268E0;
  if (*(this + 9))
  {
    DgnSharedMemSet::closeDSMEx(*(this + 8), *(this + 14));
  }

  DgnStream::~DgnStream(this);
}

{
  DgnSharedMemStream::~DgnSharedMemStream(this);

  JUMPOUT(0x26672B1B0);
}

void DgnSharedMemStream::seekFromBeg(DgnSharedMemStream *this, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(this + 9))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 137, "dfutil/dsmstream", 1, "%s", a7, a8, &unk_26288CBFD);
  }

  if (*(this + 5) < a2)
  {
    if (*(this + 9) == -1)
    {
      *(this + 5) = a2;
    }

    else
    {
      if (*(this + 6))
      {
        v10 = *(this + 2);
      }

      else
      {
        v10 = &unk_26288CBFD;
      }

      v11 = *(this + 5);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 148, "dfutil/dsmstream", 3, "%.500s %llu %llu", a7, a8, v10);
    }
  }

  *(this + 6) = a2;
}

void DgnSharedMemStream::seekToEnd(DgnSharedMemStream *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(this + 9))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 157, "dfutil/dsmstream", 1, "%s", a7, a8, &unk_26288CBFD);
  }

  *(this + 6) = *(this + 5);
}

uint64_t DgnSharedMemStream::tell(DgnSharedMemStream *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(this + 9))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 166, "dfutil/dsmstream", 1, "%s", a7, a8, &unk_26288CBFD);
  }

  return *(this + 6);
}

unint64_t DgnSharedMemStream::tell32(DgnSharedMemStream *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(this + 9))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 173, "dfutil/dsmstream", 1, "%s", a7, a8, &unk_26288CBFD);
  }

  v9 = *(this + 6);
  if (HIDWORD(v9))
  {
    if (*(this + 6))
    {
      v10 = *(this + 2);
    }

    else
    {
      v10 = &unk_26288CBFD;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 176, "dfutil/dsmstream", 5, "%.500s", a7, a8, v10);
  }

  return v9;
}

BOOL DgnSharedMemStream::eof(DgnSharedMemStream *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(this + 9))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 183, "dfutil/dsmstream", 1, "%s", a7, a8, &unk_26288CBFD);
  }

  return *(this + 6) == *(this + 5);
}

uint64_t DgnSharedMemStream::peekForChar(DgnSharedMemStream *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(this + 9))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 198, "dfutil/dsmstream", 1, "%s", a7, a8, &unk_26288CBFD);
  }

  v9 = *(this + 6);
  if (v9 >= *(this + 5))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *(*(this + 9) + v9);
  }
}

size_t DgnSharedMemStream::readWithMode(uint64_t a1, void *__dst, size_t __n, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 72))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 213, "dfutil/dsmstream", 1, "%s", a7, a8, &unk_26288CBFD);
  }

  if (__n)
  {
    v12 = *(a1 + 48);
    v13 = *(a1 + 40) - v12;
    if (v13 >= __n)
    {
      v13 = __n;
    }

    else
    {
      if (a4 == 1)
      {
        if (*(a1 + 24))
        {
          v14 = *(a1 + 16);
        }

        else
        {
          v14 = &unk_26288CBFD;
        }

        v16 = *(a1 + 40);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 226, "dfutil/dsmstream", 3, "%.500s %llu %llu", a7, a8, v14);
        LODWORD(v12) = *(a1 + 48);
      }

      __n = v13;
    }

    memcpy(__dst, (*(a1 + 72) + v12), v13);
    *(a1 + 48) += v13;
  }

  return __n;
}

void DgnSharedMemStream::writeBytes(DgnSharedMemStream *this, const char *__src, size_t __n, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __n;
  if (!*(this + 9))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 239, "dfutil/dsmstream", 1, "%s", a7, a8, &unk_26288CBFD);
  }

  if (!*(this + 2))
  {
    if (*(this + 6))
    {
      v11 = *(this + 2);
    }

    else
    {
      v11 = &unk_26288CBFD;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 241, "dfutil/dsmstream", 4, "%.500s", a7, a8, v11);
  }

  if (v8)
  {
    v12 = *(this + 9);
    if (v12 == -1)
    {
      v17 = *(this + 5);
      v18 = *(this + 6) + v8;
      *(this + 6) = v18;
      if (v17 < v18)
      {
        *(this + 5) = v18;
      }
    }

    else
    {
      v13 = v8;
      v14 = *(this + 6);
      v15 = v14 + v8;
      if (v15 > *(this + 5))
      {
        if (*(this + 6))
        {
          v16 = *(this + 2);
        }

        else
        {
          v16 = &unk_26288CBFD;
        }

        v19 = *(this + 5);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 260, "dfutil/dsmstream", 3, "%.500s %llu %llu", a7, a8, v16);
        v12 = *(this + 9);
        LODWORD(v14) = *(this + 12);
      }

      memcpy((v12 + v14), __src, v13);
      *(this + 6) = v15;
    }
  }
}

uint64_t DgnSharedMemStream::writeSharedBytes(DgnSharedMemStream *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(this + 9))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 272, "dfutil/dsmstream", 1, "%s", a7, a8, &unk_26288CBFD);
  }

  if (*(this + 2))
  {
    if (!a3)
    {
      return 0;
    }
  }

  else
  {
    if (*(this + 6))
    {
      v11 = *(this + 2);
    }

    else
    {
      v11 = &unk_26288CBFD;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 274, "dfutil/dsmstream", 4, "%.500s", a7, a8, v11);
    if (!a3)
    {
      return 0;
    }
  }

  v12 = *(this + 6) + 15;
  v13 = v12 & 0xFFFFFFFFFFFFFFF0;
  v14 = (a3 + 3) & 0xFFFFFFFC;
  v15 = *(this + 9);
  v16 = (v12 & 0xFFFFFFFFFFFFFFF0) + v14;
  if (v15 == -1)
  {
    *(this + 6) = v16;
    if (*(this + 5) >= v16)
    {
      return 0;
    }

    v18 = 0;
    *(this + 5) = v16;
  }

  else
  {
    if (v16 > *(this + 5))
    {
      if (*(this + 6))
      {
        v17 = *(this + 2);
      }

      else
      {
        v17 = &unk_26288CBFD;
      }

      v24 = *(this + 5);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 305, "dfutil/dsmstream", 3, "%.500s %llu %llu", a7, a8, v17);
      v15 = *(this + 9);
    }

    v18 = v15 + (v12 & 0xFFFFFFF0);
    *(this + 6) = v13;
    (*(*this + 80))(this, a2, a3);
    if (v14 != a3)
    {
      v19 = a3 - v14;
      do
      {
        v20 = *(this + 9);
        v21 = *(this + 6);
        *(this + 6) = v21 + 1;
        *(v20 + v21) = 0;
      }

      while (!__CFADD__(v19++, 1));
    }
  }

  return v18;
}

uint64_t DgnSharedMemStream::readSharedBytes(DgnSharedMemStream *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(this + 9))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 328, "dfutil/dsmstream", 1, "%s", a7, a8, &unk_26288CBFD);
    if (a2)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!a2)
  {
    return 0;
  }

LABEL_3:
  v10 = *(this + 6) + 15;
  v11 = *(this + 9) + (v10 & 0xFFFFFFF0);
  v12 = (v10 & 0xFFFFFFFFFFFFFFF0) + ((a2 + 3) & 0xFFFFFFFC);
  if (v12 > *(this + 5))
  {
    if (*(this + 6))
    {
      v13 = *(this + 2);
    }

    else
    {
      v13 = &unk_26288CBFD;
    }

    v15 = *(this + 5);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dsmstream.cpp", 343, "dfutil/dsmstream", 3, "%.500s %llu %llu", a7, a8, v13);
  }

  *(this + 6) = v12;
  return v11;
}

void VocCompatData::loadVocCompatDataText(VocCompatData *this, DFile *a2)
{
  DgnTextFileParser::DgnTextFileParser(v37);
  DgnTextFileParser::openDgnTextFileParser(v37, a2, 0x68u, 1);
  DgnTextFileParser::verifyMatchingFileType(v37, "VocCompatibility");
  v36[0] = 0;
  v36[1] = 0;
  DgnTextFile::legalDgnTextFileVersions(v37, sVCC_Versions, v36, v4, v5, v6, v7, v8);
  DgnTextFileParser::verifyFileVersionInRange(v37, v36, v9, v10, v11, v12, v13, v14);
  FileVersion = DgnTextFile::getFileVersion(v37);
  v16 = FileVersion;
  v17 = HIDWORD(FileVersion);
  if (HIDWORD(FileVersion) == 7 && FileVersion == 19)
  {
    v19 = "TreeLMPerWordPenalty";
  }

  else
  {
    v19 = "PrefiltererPerWordPenalty";
  }

  DgnTextFile::getHeaderFieldUnsigned(v37, v19, this, 1, 0, 0x3E8u);
  DgnTextFile::getHeaderFieldUnsigned(v37, "LMScale", this + 1, 1, 1u, 0x100u);
  if (v16 == 19)
  {
    if (v17 != 7)
    {
      goto LABEL_16;
    }
  }

  else if (v16 != 22 || v17 != 8)
  {
    goto LABEL_16;
  }

  DgnString::DgnString(&v34);
  DgnTextFile::getHeaderField(v37, "VocName", &v34, 1);
  if (v35)
  {
    v20 = v34;
  }

  else
  {
    v20 = &unk_26288CC20;
  }

  VerifyVocName(v20, ".vcc");
  DgnString::~DgnString(&v34);
LABEL_16:
  DgnTextFile::getHeaderFieldUnsigned64(v37, "LMStaticizationNoGroupingSize", this + 1, 1, 0, 0xFFFFFFFFuLL);
  DgnTextFileParser::verifyNoUnknownHeaderFields(v37, v21, v22, v23, v24, v25, v26, v27);
  DgnTextFileParser::verifyMatchingNumFieldSpecs(v37, 0, v28, v29, v30, v31, v32, v33);
  DgnTextFileParser::verifyNoBodyLines(v37);
  DgnIArray<Utterance *>::~DgnIArray(v36);
  DgnTextFileParser::~DgnTextFileParser(v37);
}

void sub_2627638AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  DgnIArray<Utterance *>::~DgnIArray(va);
  DgnTextFileParser::~DgnTextFileParser(va1);
  _Unwind_Resume(a1);
}

void VocCompatData::saveVocCompatDataText(VocCompatData *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v15);
  DgnTextFileWriter::openDgnTextFileWriter(v15, a2, 0x68u, a3);
  v13 = 0;
  v14 = 0;
  DgnTextFile::legalDgnTextFileVersions(v15, sVCC_Versions, &v13, v6, v7, v8, v9, v10);
  DgnTextFileWriter::setFileType(v15, "VocCompatibility", (v13 + 8 * (v14 - 1)));
  v12[0] = 0;
  v12[1] = 0;
  v11[0] = 0;
  v11[1] = 0;
  DgnTextFileWriter::setLineFieldFormat(v15, v12, v11);
  DgnTextFileWriter::setHeaderFieldUnsigned(v15, "PrefiltererPerWordPenalty", *this);
  DgnTextFileWriter::setHeaderFieldUnsigned(v15, "LMScale", *(this + 1));
  DgnTextFileWriter::setHeaderFieldUnsigned(v15, "LMStaticizationNoGroupingSize", *(this + 1));
  DgnArray<DgnString>::releaseAll(v11);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v12);
  DgnIArray<Utterance *>::~DgnIArray(&v13);
  DgnTextFileWriter::~DgnTextFileWriter(v15);
}

void sub_2627639EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  DgnTextFileWriter::~DgnTextFileWriter(va);
  _Unwind_Resume(a1);
}

void VocCompatData::loadVocCompatData(VocCompatData *this, char **a2, DFileChecksums *a3, int a4)
{
  if (DFile::subFileExists(a2, 0x68u))
  {

    VocCompatData::loadVocCompatDataText(this, a2);
  }

  else
  {
    if (a4)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/vcc.cpp", 209, "voc/vcc", 3, "%s", v8, v9, &unk_26288CC20);
    }

    v21 = 0;
    v10 = 1;
    v11 = OpenAndReadMrecHeader(a2, 0x67u, 1, "MRVCCD!?", &v21 + 1, &v21);
    v20 = 0;
    DgnString::DgnString(v19);
    v14 = HIDWORD(v21) == 18 && v21 == 1;
    v15 = v14;
    if (v14)
    {
      v16 = 18;
    }

    else
    {
      if (*(a2 + 6))
      {
        v17 = a2[2];
      }

      else
      {
        v17 = &unk_26288CC20;
      }

      MrecHeaderCheckVersions(v17, "MRVCCD!?", HIDWORD(v21), v21, 0x18u, 2u);
      v10 = v21;
      v16 = HIDWORD(v21);
    }

    MrecHeaderCheckLatestVersionIfShared(a2, "MRVCCD!?", v16, v10, 24, 2, v12, v13);
    readObject(v11, this, &v20);
    readObject(v11, this + 1, &v20);
    if (v15)
    {
      readObject(v11, v19, &v20);
    }

    readObject(v11, this + 1, &v20);
    readObjectChecksumAndVerify(v11, v20);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x67u, v20);
    DgnDelete<DgnStream>(v11);
    DgnString::~DgnString(v19);
  }
}

void sub_262763C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void VocCompatData::saveVocCompatData(VocCompatData *this, DFile *a2, DFileChecksums *a3, int a4, int a5)
{
  if (a4)
  {

    VocCompatData::saveVocCompatDataText(this, a2, a5);
  }

  else
  {
    v8 = OpenAndWriteMrecHeader(a2, 0x67u, a5, "MRVCCD!?", 24, 2);
    v10 = 0;
    writeObject(v8, this, &v10);
    writeObject(v8, this + 1, &v10);
    writeObject(v8, this + 1, &v10);
    writeObjectChecksum(v8, &v10);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x67u, v10);
    DgnDelete<DgnStream>(v8);
  }
}

void VocCompatData::printSize(VocCompatData *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/vcc.cpp", 277, &v41);
  if (v42)
  {
    v15 = v41;
  }

  else
  {
    v15 = &unk_26288CC20;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, v12, v13, v14, a3, &unk_26288CC20, a3, &unk_26288CC20, v15);
  DgnString::~DgnString(&v41);
  if (a2 != -1)
  {
    xlprintf("%d ", v16, v17, v18, v19, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v16, v17, v18, v19, a3, &unk_26288CC20);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/vcc.cpp", 279, &v41);
  if (v42)
  {
    v24 = v41;
  }

  else
  {
    v24 = &unk_26288CC20;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v20, v21, v22, v23, (a3 + 1), &unk_26288CC20, (34 - a3), (34 - a3), v24, 4, 4, 0);
  DgnString::~DgnString(&v41);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/vcc.cpp", 279, &v41);
  if (v42)
  {
    v29 = v41;
  }

  else
  {
    v29 = &unk_26288CC20;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, v26, v27, v28, (a3 + 1), &unk_26288CC20, (34 - a3), (34 - a3), v29, 4, 4, 0);
  DgnString::~DgnString(&v41);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/vcc.cpp", 279, &v41);
  if (v42)
  {
    v34 = v41;
  }

  else
  {
    v34 = &unk_26288CC20;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, v31, v32, v33, (a3 + 1), &unk_26288CC20, (34 - a3), (34 - a3), v34, 8, 8, 0);
  DgnString::~DgnString(&v41);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/vcc.cpp", 281, &v41);
  if (v42)
  {
    v39 = v41;
  }

  else
  {
    v39 = &unk_26288CC20;
  }

  v40 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, v36, v37, v38, a3, &unk_26288CC20, (35 - a3), (35 - a3), v39, *a4, *a5, *a6);
  DgnString::~DgnString(&v41);
}

void sub_262763F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

_DWORD *SvcCompatData::SvcCompatData(_DWORD *result, int a2, int a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

void (***SvcCompatData::loadSvcCompatData(SvcCompatData *this, DFile *a2, DFileChecksums *a3))(void)
{
  v13 = 0;
  v14 = 0;
  v6 = OpenAndReadMrecHeader(a2, 0x51u, 0, "SCCBIN", &v14, &v13);
  if (*(a2 + 6))
  {
    v7 = *(a2 + 2);
  }

  else
  {
    v7 = &unk_26288CC20;
  }

  MrecHeaderCheckVersions(v7, "SCCBIN", v14, v13, 0x11u, 2u);
  MrecHeaderCheckLatestVersionIfShared(a2, "SCCBIN", v14, v13, 17, 2, v8, v9);
  v12 = 0;
  v15 = 0;
  readObject(v6, &v15, &v12);
  *this = v15;
  readObject(v6, this + 1, &v12);
  if (a3)
  {
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x51u, v12);
  }

  return DgnDelete<DgnStream>(v6);
}

void (***SvcCompatData::saveSvcCompatData(SvcCompatData *this, DFile *a2, DFileChecksums *a3))(void)
{
  v6 = OpenAndWriteMrecHeader(a2, 0x51u, 0, "SCCBIN", 17, 2);
  v7 = *this;
  v10 = 0;
  v11 = v7;
  writeObject(v6, &v11, &v10);
  writeObject(v6, this + 1, &v10);
  if (a3)
  {
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x51u, v10);
  }

  return DgnDelete<DgnStream>(v6);
}

void PrefiltererThreadWorker::printSize(PrefiltererThreadWorker *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 263, &v102);
  if (v103)
  {
    v16 = v102;
  }

  else
  {
    v16 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &byte_262899963, a3, &byte_262899963, v16);
  DgnString::~DgnString(&v102);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  v97 = a2;
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &byte_262899963);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v21 = 4;
  }

  else
  {
    v21 = 8;
  }

  v22 = (a3 + 1);
  v98 = a3;
  v23 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 265, &v102);
  if (v103)
  {
    v28 = v102;
  }

  else
  {
    v28 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, v25, v26, v27, v22, &byte_262899963, v23, v23, v28, v21, v21, 0);
  DgnString::~DgnString(&v102);
  *a4 += v21;
  *a5 += v21;
  v29 = sizeObject(this + 264, 0);
  v30 = sizeObject(this + 264, 1);
  v31 = sizeObject(this + 264, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 266, &v102);
  if (v103)
  {
    v36 = v102;
  }

  else
  {
    v36 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, v33, v34, v35, v22, &byte_262899963, v23, v23, v36, v29, v30, v31);
  DgnString::~DgnString(&v102);
  *a4 += v29;
  *a5 += v30;
  *a6 += v31;
  v37 = sizeObject<DgnPrimArray<unsigned char>>(this + 360, 0) + 5;
  v38 = sizeObject<DgnPrimArray<unsigned char>>(this + 360, 1) + 5;
  v102 = 0;
  v103 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v102);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 267, &v102);
  if (v103)
  {
    v43 = v102;
  }

  else
  {
    v43 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v39, v40, v41, v42, v22, &byte_262899963, v23, v23, v43, v37, v38, 0);
  DgnString::~DgnString(&v102);
  *a4 += v37;
  *a5 += v38;
  v44 = sizeObject<ScoreFixArray>(this + 384, 0) + 5;
  v45 = sizeObject<ScoreFixArray>(this + 384, 1) + 5;
  v102 = 0;
  LODWORD(v103) = 0;
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v102);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 269, &v102);
  if (v103)
  {
    v50 = v102;
  }

  else
  {
    v50 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v46, v47, v48, v49, v22, &byte_262899963, v23, v23, v50, v44, v45, 0);
  DgnString::~DgnString(&v102);
  *a4 += v44;
  *a5 += v45;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v51 = 12;
  }

  else
  {
    v51 = 16;
  }

  v52 = *(this + 102);
  v53 = *(this + 103);
  v54 = v53 >= v52;
  v55 = v53 - v52;
  if (v54)
  {
    if (v52 > 0)
    {
      v56 = (v52 - 1) + v51 + 1;
    }

    else
    {
      v56 = v51;
    }

    v51 = v56 + v55;
    v52 = 0;
  }

  else
  {
    v56 = v51;
  }

  v57 = v52;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 270, &v102);
  if (v103)
  {
    v62 = v102;
  }

  else
  {
    v62 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v58, v59, v60, v61, v22, &byte_262899963, v23, v23, v62, v51, v56, v57);
  DgnString::~DgnString(&v102);
  *a4 += v51;
  *a5 += v56;
  *a6 += v57;
  v63 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v63 = 8;
  }

  v64 = *(this + 106);
  if (v64 <= 0)
  {
    v65 = 0;
  }

  else
  {
    v65 = (2 * v64);
  }

  v66 = v63 + v65;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 272, &v102);
  if (v103)
  {
    v71 = v102;
  }

  else
  {
    v71 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v67, v68, v69, v70, v22, &byte_262899963, v23, v23, v71, v66, v66, 0);
  DgnString::~DgnString(&v102);
  *a4 += v66;
  *a5 += v66;
  v72 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v72 = 8;
  }

  v73 = *(this + 110);
  if (v73 <= 0)
  {
    v74 = 0;
  }

  else
  {
    v74 = (2 * v73);
  }

  v75 = v72 + v74;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 274, &v102);
  if (v103)
  {
    v80 = v102;
  }

  else
  {
    v80 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v76, v77, v78, v79, v22, &byte_262899963, v23, v23, v80, v75, v75, 0);
  DgnString::~DgnString(&v102);
  *a4 += v75;
  *a5 += v75;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 275, &v102);
  if (v103)
  {
    v85 = v102;
  }

  else
  {
    v85 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v81, v82, v83, v84, v22, &byte_262899963, v23, v23, v85, 4, 4, 0);
  DgnString::~DgnString(&v102);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 276, &v102);
  if (v103)
  {
    v90 = v102;
  }

  else
  {
    v90 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v86, v87, v88, v89, v22, &byte_262899963, v23, v23, v90, 8, 8, 0);
  DgnString::~DgnString(&v102);
  *a4 += 8;
  *a5 += 8;
  v100 = 0;
  v101 = 0;
  v99 = 0;
  DgnThreadWorker::printSize(this, v97, v22, &v101, &v99, &v100);
  *a4 += v101;
  *a5 += v99;
  *a6 += v100;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 284, &v102);
  if (v103)
  {
    v95 = v102;
  }

  else
  {
    v95 = &byte_262899963;
  }

  v96 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v91, v92, v93, v94, v98, &byte_262899963, (35 - v98), (35 - v98), v95, *a4, *a5, *a6);
  DgnString::~DgnString(&v102);
}

uint64_t PrefiltererThreadWorker::PrefiltererThreadWorker(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  DgnThreadWorker::DgnThreadWorker(a1, a2, a3, a4, a5);
  *v6 = &unk_287525200;
  ReturnListQueue::ReturnListQueue((v6 + 33), 0, 127);
  SynchronizedArray<DgnPrimArray<unsigned char>>::SynchronizedArray(a1 + 352);
  SynchronizedArray<ScoreFixArray>::SynchronizedArray(a1 + 376);
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 400) = 0;
  *(a1 + 424) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 448) = 4294967280;
  *(a1 + 456) = 0;
  return a1;
}

void sub_2627648B0(_Unwind_Exception *a1)
{
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v1 + 360);
  ReturnListQueue::~ReturnListQueue((v1 + 264));
  DgnThreadWorker::~DgnThreadWorker(v1);
  _Unwind_Resume(a1);
}

void PrefiltererThreadWorker::~PrefiltererThreadWorker(PrefiltererThreadWorker *this)
{
  *this = &unk_287525200;
  PrefiltererThreadWorker::reset(this);
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 432);
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 416);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 400);
  DgnArray<DgnVector>::releaseAll(this + 384);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 360);
  ReturnListQueue::~ReturnListQueue((this + 264));

  DgnThreadWorker::~DgnThreadWorker(this);
}

{
  PrefiltererThreadWorker::~PrefiltererThreadWorker(this);

  JUMPOUT(0x26672B1B0);
}

void *PrefiltererThreadWorker::reset(PrefiltererThreadWorker *this)
{
  *(this + 56) = 4294967280;
  *(this + 114) = 0;
  SynchronizedArray<DgnPrimArray<unsigned char>>::reset(this + 352);
  SynchronizedArray<ScoreFixArray>::reset(this + 376);
  result = ReturnListQueue::reset((this + 264));
  *(this + 102) = 0;
  return result;
}

uint64_t SynchronizedArray<ScoreFixArray>::reset(uint64_t result)
{
  v1 = result;
  *result = 0;
  *(result + 4) = -16;
  v2 = *(result + 16);
  if (v2 >= 1)
  {
    v3 = 16 * v2 - 16;
    do
    {
      result = DgnPrimFixArray<double>::~DgnPrimFixArray(*(v1 + 8) + v3);
      v3 -= 16;
    }

    while (v3 != -16);
  }

  *(v1 + 16) = 0;
  return result;
}

TreePrefilterer *PrefiltererThreadWorker::onStartup(PrefiltererThreadWorker *this)
{
  v2 = MemChunkAlloc(0x25308uLL, 0);
  result = TreePrefilterer::TreePrefilterer(v2);
  *(this + 32) = result;
  return result;
}

void (***PrefiltererThreadWorker::onShutdown(PrefiltererThreadWorker *this))(void)
{
  PrefiltererThreadWorker::reset(this);
  v2 = *(this + 32);

  return DgnDelete<TreePrefilterer>(v2);
}

void (***DgnDelete<TreePrefilterer>(void (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    (**result)(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t PrefiltererThreadWorker::onPlay(PrefiltererThreadWorker *this)
{
  v2 = *(this + 6);
  *(this + 112) = *(v2 + 1592);
  if ((*(this + 352) & 1) == 0)
  {
    SynchronizedArray<DgnPrimArray<unsigned char>>::update(this + 352, *(v2 + 1576));
  }

  v3 = *(v2 + 1584);
  if (v3 && (*(this + 376) & 1) == 0)
  {
    SynchronizedArray<ScoreFixArray>::update(this + 376, v3);
  }

  ReturnListQueue::clear((this + 264));
  *(this + 452) = 0;
  result = (*(**(this + 32) + 96))(*(this + 32));
  *(this + 113) = result;
  return result;
}

unint64_t SynchronizedArray<ScoreFixArray>::update(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v6 = *(result + 16);
  v5 = *(result + 20);
  if (v5 > 0x1F3)
  {
    v7 = *(a2 + 16);
  }

  else
  {
    result = DgnArray<DgnPrimArray<double>>::reallocElts(result + 8, 500 - v5, 0);
    v7 = *(a2 + 16);
    v5 = *(v3 + 20);
  }

  if (v7 > v5)
  {
    result = DgnArray<DgnPrimArray<double>>::reallocElts(v3 + 8, v7 - v5, 0);
  }

  v8 = *(v3 + 16);
  if (v8 <= v7)
  {
    if (v8 < v7)
    {
      v11 = v7 - v8;
      v12 = (*(v3 + 8) + 16 * v8 + 8);
      do
      {
        *(v12 - 1) = 0;
        *v12 = 0;
        v12 += 4;
        --v11;
      }

      while (v11);
    }
  }

  else if (v8 > v7)
  {
    v9 = v8;
    v10 = 16 * v8 - 16;
    do
    {
      --v9;
      result = DgnPrimFixArray<double>::~DgnPrimFixArray(*(v3 + 8) + v10);
      v10 -= 16;
    }

    while (v9 > v7);
  }

  *(v3 + 16) = v7;
  if (v6 < v4)
  {
    do
    {
      v13 = *(a2 + 8) + 16 * v6;
      result = DgnPrimFixArray<short>::copyArraySlice((*(v3 + 8) + 16 * v6++), v13, 0, *(v13 + 8));
    }

    while (v4 != v6);
  }

  if (*a2 == 1)
  {
    *v3 = 1;
  }

  if (*(v3 + 4) == -16)
  {
    *(v3 + 4) = *(a2 + 4);
  }

  return result;
}

uint64_t PrefiltererThreadWorker::playOne(PrefiltererThreadWorker *this)
{
  if (*(this + 264))
  {
    return 4;
  }

  v3 = *(this + 113);
  if (*(this + 92) <= v3)
  {
    if (*(this + 352) == 1)
    {
      if (*(this + 67) == -16)
      {
        *(this + 67) = ReturnListQueue::getNextFrameTime((this + 264));
        (*(**(this + 32) + 88))(*(this + 32));
        v3 = *(this + 113);
      }

      TreePrefilterer::completeUtterance(*(this + 32), v3, (this + 264));
      return 4;
    }

    v11 = 2;
    goto LABEL_24;
  }

  v4 = TreePrefilterer::needLookaheadToScoreFrame(*(this + 32));
  v5 = *(this + 113);
  if (!v4)
  {
    v7 = 432;
    goto LABEL_16;
  }

  if (*(this + 98) <= v5)
  {
    v11 = 3;
LABEL_24:
    *(this + 114) = v11;
    return 4;
  }

  DgnPrimFixArray<short>::copyArraySlice(this + 52, (*(this + 48) + 16 * v5), 0, *(*(this + 48) + 16 * v5 + 8));
  LODWORD(v5) = *(this + 113);
  if (*(this + 67) != -16)
  {
LABEL_10:
    v7 = 416;
    goto LABEL_16;
  }

  v6 = *(this + 95);
  v7 = 416;
  if (v6 != -16 && v6 <= v5)
  {
    *(this + 67) = ReturnListQueue::getNextFrameTime((this + 264));
    (*(**(this + 32) + 88))(*(this + 32));
    LODWORD(v5) = *(this + 113);
    goto LABEL_10;
  }

LABEL_16:
  v8 = *(this + 45) + 16 * v5;
  DgnPrimArray<unsigned char>::copyArraySlice(this + 400, v8, 0, *(v8 + 8));
  TreePrefilterer::scoreFrame(*(this + 32), *(this + 113), this + 400, (this + v7), (this + 264));
  v9 = *(this + 113) + 1;
  *(this + 113) = v9;
  if (*(this + 352) == 1 && *(this + 92) <= v9)
  {
    return 0;
  }

  v10 = *(this + 112);
  if (v10 == -16)
  {
    return 1;
  }

  NextFrameTime = ReturnListQueue::getNextFrameTime((this + 264));
  result = 1;
  if (v10 < NextFrameTime)
  {
    *(this + 114) = 1;
    return 4;
  }

  return result;
}

void PrefiltererThread::printSize(PrefiltererThread *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 461, &v53);
  if (v54)
  {
    v16 = v53;
  }

  else
  {
    v16 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &byte_262899963, a3, &byte_262899963, v16);
  v49 = this;
  DgnString::~DgnString(&v53);
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

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 463, &v53);
  if (v54)
  {
    v26 = v53;
  }

  else
  {
    v26 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v22, v23, v24, v25, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v26, v21, v21, 0);
  DgnString::~DgnString(&v53);
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

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 464, &v53);
  if (v54)
  {
    v32 = v53;
  }

  else
  {
    v32 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, v29, v30, v31, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v32, v27, v27, 0);
  DgnString::~DgnString(&v53);
  *a4 += v27;
  *a5 += v27;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 465, &v53);
  if (v54)
  {
    v37 = v53;
  }

  else
  {
    v37 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, v34, v35, v36, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v37, 4, 4, 0);
  DgnString::~DgnString(&v53);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 466, &v53);
  if (v54)
  {
    v42 = v53;
  }

  else
  {
    v42 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v38, v39, v40, v41, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v42, 8, 8, 0);
  DgnString::~DgnString(&v53);
  *a4 += 8;
  *a5 += 8;
  v51 = 0;
  v52 = 0;
  v50 = 0;
  DgnThreadClient::printSize(v49, a2, (a3 + 1), &v52, &v50, &v51);
  *a4 += v52;
  *a5 += v50;
  *a6 += v51;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 474, &v53);
  if (v54)
  {
    v47 = v53;
  }

  else
  {
    v47 = &byte_262899963;
  }

  v48 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v43, v44, v45, v46, a3, &byte_262899963, (35 - a3), (35 - a3), v47, *a4, *a5, *a6);
  DgnString::~DgnString(&v53);
}

void sub_262765250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t *PrefiltererThread::reset(PrefiltererThread *this)
{
  *(this + 199) = 4294967280;
  *(this + 400) = 0;
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v3, *(this + 2));
  PrefiltererThreadWorker::reset(*(this + 7));
  return Latch<MemChunkRegion,LatchAdapter>::~Latch(&v3);
}

void sub_2627652CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

void PrefiltererThread::scoreUntil(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ReturnListQueue *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 1592) = a2;
  v10 = (a1 + 1576);
  *(a1 + 1576) = a3;
  *(a1 + 1584) = a4;
  DgnThreadClient::playAllUntilWorkerPauses(a1, a2, a3, a4, a5, a6, a7, a8);
  *v10 = 0u;
  DgnThreadClient::pause(a1, v11, v12, v13, v14, v15, v16, v17);
  v18 = *(a1 + 56);
  v19 = v18[114];
  *(a1 + 1596) = v18[113];
  *(a1 + 1600) = v19;

  ReturnListQueue::copyIntoQueue((v18 + 66), a5);
}

uint64_t ThreadedTreePrefilterer::ThreadedTreePrefilterer(uint64_t a1, int a2)
{
  Prefilterer::Prefilterer(a1);
  *v4 = &unk_287524F70;
  v5 = MemChunkAlloc(0x648uLL, 0);
  v6 = DgnThread<PrefiltererThreadWorker>::DgnThread(v5, a2, 0, "Prefilterer");
  *v6 = &unk_287526EF8;
  *(v6 + 1592) = 4294967280;
  *(v6 + 1600) = 0;
  *(a1 + 24) = v6;
  *(a1 + 40) = *(v6 + 16);
  *(a1 + 16) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  DgnThreadClient::startup(v6);
  *(a1 + 32) = *(*(*(a1 + 24) + 56) + 256);
  return a1;
}

void ThreadedTreePrefilterer::~ThreadedTreePrefilterer(DgnThreadClient **this)
{
  *this = &unk_287524F70;
  if (DgnThreadClient::isLive(this[3]) && (DgnThreadClient::hasErrored(this[3]) & 1) == 0)
  {
    DgnThreadClient::shutdown(this[3], v2, v3, v4, v5, v6, v7, v8);
  }

  this[4] = 0;
  this[5] = 0;
  DgnDelete<FrameTransformerThread>(this[3]);
  this[3] = 0;

  MrecInitModule_sdpres_sdapi();
}

{
  ThreadedTreePrefilterer::~ThreadedTreePrefilterer(this);

  JUMPOUT(0x26672B1B0);
}

void ThreadedTreePrefilterer::printSize(ThreadedTreePrefilterer *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 567, &v73);
  if (v74)
  {
    v16 = v73;
  }

  else
  {
    v16 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &byte_262899963, a3, &byte_262899963, v16);
  DgnString::~DgnString(&v73);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &byte_262899963);
  v72 = 0;
  v73 = 0;
  v71 = 0;
  Prefilterer::printSize(this, 0xFFFFFFFFLL, (a3 + 1), &v73, &v72, &v71);
  *a4 += v73;
  *a5 += v72;
  *a6 += v71;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 570, &v73);
  if (v74)
  {
    v25 = v73;
  }

  else
  {
    v25 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, v22, v23, v24, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v25, 1, 1, 0);
  DgnString::~DgnString(&v73);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 571, &v73);
  if (v74)
  {
    v30 = v73;
  }

  else
  {
    v30 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, v27, v28, v29, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v30, 1, 1, 0);
  DgnString::~DgnString(&v73);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v31 = 4;
  }

  else
  {
    v31 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 572, &v73);
  if (v74)
  {
    v36 = v73;
  }

  else
  {
    v36 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, v33, v34, v35, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v36, v31, v31, 0);
  DgnString::~DgnString(&v73);
  *a4 += v31;
  *a5 += v31;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v37 = 4;
  }

  else
  {
    v37 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 573, &v73);
  if (v74)
  {
    v42 = v73;
  }

  else
  {
    v42 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v38, v39, v40, v41, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v42, v37, v37, 0);
  DgnString::~DgnString(&v73);
  *a4 += v37;
  *a5 += v37;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v43 = 4;
  }

  else
  {
    v43 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 574, &v73);
  if (v74)
  {
    v48 = v73;
  }

  else
  {
    v48 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v44, v45, v46, v47, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v48, v43, v43, 0);
  DgnString::~DgnString(&v73);
  *a4 += v43;
  *a5 += v43;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 576, &v73);
  if (v74)
  {
    v53 = v73;
  }

  else
  {
    v53 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v49, v50, v51, v52, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v53, 1, 1, 0);
  DgnString::~DgnString(&v73);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 578, &v73);
  if (v74)
  {
    v58 = v73;
  }

  else
  {
    v58 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v54, v55, v56, v57, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v58, 1, 1, 0);
  DgnString::~DgnString(&v73);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v59 = 4;
  }

  else
  {
    v59 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 579, &v73);
  if (v74)
  {
    v64 = v73;
  }

  else
  {
    v64 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v60, v61, v62, v63, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v64, v59, v59, 0);
  DgnString::~DgnString(&v73);
  *a4 += v59;
  *a5 += v59;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/thrdpref.cpp", 581, &v73);
  if (v74)
  {
    v69 = v73;
  }

  else
  {
    v69 = &byte_262899963;
  }

  v70 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v65, v66, v67, v68, a3, &byte_262899963, (35 - a3), (35 - a3), v69, *a4, *a5, *a6);
  DgnString::~DgnString(&v73);
}

void sub_2627659F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t ThreadedTreePrefilterer::scoreFramesUntil(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ReturnListQueue *this)
{
  if (*(a1 + 17))
  {
    return 0;
  }

  if (ReturnListQueue::getNextFrameTime(this) > a2)
  {
    return 0;
  }

  *(a1 + 16) = 1;
  PrefiltererThread::scoreUntil(*(a1 + 24), a2, a3, a4, this, v11, v12, v13);
  *(a1 + 16) = 0;
  *(a1 + 17) = *this;
  return *(*(a1 + 24) + 1600);
}

uint64_t ThreadedTreePrefilterer::maybeStartScoring(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = *(a1 + 16);
  if ((result & 1) == 0)
  {
    if (*(a1 + 17))
    {
      return 0;
    }

    else
    {
      v10 = *(a1 + 24);
      *(v10 + 1592) = -16;
      v11 = (v10 + 1576);
      *(v10 + 1576) = a2;
      *(v10 + 1584) = a3;
      DgnThreadClient::play(v10, a2, a3, a4, a5, a6, a7, a8);
      *v11 = 0u;
      result = 1;
      *(a1 + 16) = 1;
    }
  }

  return result;
}

uint64_t ThreadedTreePrefilterer::maybeStopScoring(ThreadedTreePrefilterer *this, uint64_t a2, ReturnListQueue *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 16) != 1)
  {
    return 0;
  }

  if (a2 && DgnThreadClient::getThreadState(*(this + 3)) != 4)
  {
    return 0;
  }

  v10 = *(this + 3);
  DgnThreadClient::pause(v10, a2, a3, a4, a5, a6, a7, a8);
  v11 = *(v10 + 56);
  v12 = v11[114];
  *(v10 + 1596) = v11[113];
  *(v10 + 1600) = v12;
  ReturnListQueue::copyIntoQueue((v11 + 66), a3);
  *(this + 17) = *a3;
  *(this + 16) = 0;
  return *(*(this + 3) + 1600);
}

uint64_t *ThreadedTreePrefilterer::setInjectCwids(uint64_t a1, uint64_t a2)
{
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v5, *(a1 + 40));
  (*(**(a1 + 32) + 40))(*(a1 + 32), a2);
  return Latch<MemChunkRegion,LatchAdapter>::~Latch(&v5);
}

void sub_262765C40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

uint64_t *ThreadedTreePrefilterer::beginPrefSyncRecog(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v13, *(a1 + 40));
  (*(**(a1 + 32) + 48))(*(a1 + 32), a2, a3, a4, a5, a6);
  *(a1 + 49) = 1;
  return Latch<MemChunkRegion,LatchAdapter>::~Latch(&v13);
}

void sub_262765CF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

uint64_t *ThreadedTreePrefilterer::endPrefSyncRecog(ThreadedTreePrefilterer *this)
{
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v3, *(this + 5));
  (*(**(this + 4) + 56))(*(this + 4));
  Latch<MemChunkRegion,LatchAdapter>::~Latch(&v3);
  result = PrefiltererThread::reset(*(this + 3));
  *(this + 17) = 0;
  *(this + 49) = 0;
  return result;
}

void sub_262765D80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

uint64_t *ThreadedTreePrefilterer::setPelScoreCacheData(uint64_t a1, uint64_t a2)
{
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v5, *(a1 + 40));
  (*(**(a1 + 32) + 72))(*(a1 + 32), a2);
  return Latch<MemChunkRegion,LatchAdapter>::~Latch(&v5);
}

void sub_262765E28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

uint64_t *ThreadedTreePrefilterer::initPrefilterer(ThreadedTreePrefilterer *this, int ***a2, unsigned int a3, int a4, char a5)
{
  *(this + 7) = a2;
  *(this + 4) = a3;
  *(this + 3) = a4;
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v11, *(this + 5));
  TreePrefilterer::initPrefilterer(*(this + 4), a2, a3, a4, a5, 1);
  *(this + 48) = 1;
  return Latch<MemChunkRegion,LatchAdapter>::~Latch(&v11);
}

void sub_262765EC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

uint64_t ThreadedTreePrefilterer::getUserId(ThreadedTreePrefilterer *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    return *(v1 + 184);
  }

  else
  {
    return 0xFFFFLL;
  }
}

uint64_t *ThreadedTreePrefilterer::setSynchronousPrefiltererStats(ThreadedTreePrefilterer *this)
{
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v3, *(this + 5));
  (*(**(this + 4) + 88))(*(this + 4));
  return Latch<MemChunkRegion,LatchAdapter>::~Latch(&v3);
}

void sub_262765F80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

void PrefiltererThread::~PrefiltererThread(PrefiltererThread *this)
{
  DgnThreadClient::~DgnThreadClient(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t *DgnThread<PrefiltererThreadWorker>::newWorker(uint64_t a1)
{
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v4, *(a1 + 16));
  v2 = MemChunkAlloc(0x1D0uLL, *(a1 + 16));
  PrefiltererThreadWorker::PrefiltererThreadWorker(v2, *(a1 + 12), a1, *(a1 + 16), *(a1 + 28));
  Latch<MemChunkRegion,LatchAdapter>::~Latch(&v4);
  return v2;
}

void sub_262766074(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

uint64_t DgnThread<PrefiltererThreadWorker>::DgnThread(uint64_t a1, int a2, uint64_t a3, char *a4)
{
  v5 = DgnThreadClient::DgnThreadClient(a1, a2, a3, a4);
  *v5 = &unk_287523298;
  *(a1 + 56) = DgnThread<PrefiltererThreadWorker>::newWorker(v5);
  return a1;
}

void DgnThread<PrefiltererThreadWorker>::~DgnThread(DgnThreadClient *a1)
{
  DgnThreadClient::~DgnThreadClient(a1);

  JUMPOUT(0x26672B1B0);
}

uint64_t sizeObject<ScoreFixArray>(uint64_t a1, int a2)
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
          v8 = 2 * v7;
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

uint64_t SynchronizedArray<ScoreFixArray>::SynchronizedArray(uint64_t a1)
{
  *(a1 + 4) = -16;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  SynchronizedArray<ScoreFixArray>::reset(a1);
  return a1;
}

void ParamValue::~ParamValue(ParamValue *this)
{
  if (*(this + 32) == 1)
  {
    v1 = *(this + 3);
    if (v1)
    {
      MemChunkFree(v1, 0);
    }
  }
}

void ParamValue::ParamValue(ParamValue *this, const ParamValue *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + 4) = *(a2 + 4);
  *(this + 2) = *(a2 + 2);
  *(this + 2) = *(a2 + 2);
  if ((v4 & 0xFFFFFFFE) == 4 && *(a2 + 32) == 1)
  {
    v5 = *(a2 + 3);
    if (v5)
    {
      v6 = strlen(*(a2 + 3));
      v7 = MemChunkAlloc((v6 + 1), 0);
      v8 = strcpy(v7, v5);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = *(a2 + 3);
  }

  *(this + 3) = v8;
  *(this + 32) = *(a2 + 32);
}

uint64_t DynamicParamSet::DynamicParamSet(uint64_t a1, char *a2, int a3, unint64_t a4, uint64_t a5)
{
  DgnString::DgnString(a1);
  *(v10 + 32) = 0;
  v11 = (v10 + 32);
  *(v10 + 40) = 0;
  *(v10 + 24) = a3;
  DgnString::operator=(v10, a2);
  *(a1 + 16) = a4;
  v12 = ParamSpecMgr::smpParamSpecMgrArray[a3];
  NumParamIds = ParamSpecMgr::getNumParamIds(v12);
  v20 = NumParamIds;
  v21 = *(a1 + 44);
  if (NumParamIds > v21)
  {
    DgnArray<FstSearchLeafLatticeDurationBackoffActiveToken>::reallocElts(v11, NumParamIds - v21, 0);
  }

  v22 = *(a1 + 40);
  if (v22 <= v20)
  {
    if (v22 < v20)
    {
      v24 = v20 - v22;
      v25 = 40 * v22;
      do
      {
        v26 = *v11 + v25;
        *v26 = 0;
        *(v26 + 4) = 0;
        *(v26 + 8) = 0;
        *(v26 + 16) = 0;
        *(v26 + 24) = 0;
        *(v26 + 32) = 0;
        v25 += 40;
        --v24;
      }

      while (v24);
    }
  }

  else if (v22 > v20)
  {
    v23 = 40 * v22 - 40;
    do
    {
      --v22;
      ParamValue::~ParamValue((*v11 + v23));
      v23 -= 40;
    }

    while (v22 > v20);
  }

  *(a1 + 40) = v20;
  if (*(a5 + 8))
  {
    v27 = 0;
    do
    {
      v28 = *(*a5 + 2 * v27);
      ParamByParamId = ParamSpecMgr::getParamByParamId(v12, v28, v14, v15, v16, v17, v18, v19);
      v30 = (*(*ParamByParamId + 24))(ParamByParamId);
      if (v30 <= 2)
      {
        if (v30 == 1)
        {
          Default_BOOL = ParamSpecMgr::ParamGetDefault_BOOL(v12, v28, a4, HIDWORD(a4), v16, v17, v18, v19);
          v38 = *v11 + 40 * v28;
          *v38 = 1;
          *(v38 + 4) = Default_BOOL;
        }

        else if (v30 == 2)
        {
          Default_int = ParamSpecMgr::ParamGetDefault_int(v12, v28, a4, HIDWORD(a4), v16, v17, v18, v19);
          v33 = (*v11 + 40 * v28);
          *v33 = 2;
          v33[2] = Default_int;
        }
      }

      else
      {
        switch(v30)
        {
          case 3:
            Default_double = ParamSpecMgr::ParamGetDefault_double(v12, v28, a4, HIDWORD(a4), v16, v17, v18, v19);
            v35 = *v11 + 40 * v28;
            *v35 = 3;
            *(v35 + 16) = Default_double;
            break;
          case 4:
            Default_string = ParamSpecMgr::ParamGetDefault_string(v12, v28, a4, HIDWORD(a4), v16, v17, v18, v19);
            DynamicParamSet::setStringParameter(a1, v28, Default_string, 0);
            break;
          case 5:
            Default_enumAsString = ParamSpecMgr::ParamGetDefault_enumAsString(v12, v28, a4, HIDWORD(a4), v16, v17, v18, v19);
            DynamicParamSet::setEnumParameter(a1, v28, Default_enumAsString, 0);
            break;
        }
      }

      ++v27;
    }

    while (v27 < *(a5 + 8));
  }

  return a1;
}

void sub_262766638(_Unwind_Exception *a1)
{
  DgnArray<ParamValue>::releaseAll(v2);
  DgnString::~DgnString(v1);
  _Unwind_Resume(a1);
}

uint64_t DynamicParamSet::setBoolParameter(uint64_t this, unsigned int a2, char a3)
{
  v3 = *(this + 32) + 40 * a2;
  *v3 = 1;
  *(v3 + 4) = a3;
  return this;
}

uint64_t DynamicParamSet::setIntParameter(uint64_t this, unsigned int a2, int a3)
{
  v3 = (*(this + 32) + 40 * a2);
  *v3 = 2;
  v3[2] = a3;
  return this;
}

uint64_t DynamicParamSet::setDoubleParameter(uint64_t this, unsigned int a2, double a3)
{
  v3 = *(this + 32) + 40 * a2;
  *v3 = 3;
  *(v3 + 16) = a3;
  return this;
}

uint64_t DynamicParamSet::setStringParameter(uint64_t this, unsigned int a2, const char *__s, int a4)
{
  v5 = __s;
  v7 = this;
  v8 = *(this + 32) + 40 * a2;
  if (*v8 != 4 || (this = strcmp(*(v8 + 24), __s), this))
  {
    *v8 = 4;
    if (*(v8 + 32) == 1)
    {
      this = *(v8 + 24);
      if (this)
      {
        this = MemChunkFree(this, 0);
      }
    }

    if (a4)
    {
      if (v5)
      {
        v9 = strlen(v5);
        v10 = MemChunkAlloc((v9 + 1), 0);
        this = strcpy(v10, v5);
        v5 = this;
      }
    }

    v11 = *(v7 + 32) + 40 * a2;
    *(v11 + 24) = v5;
    *(v11 + 32) = a4;
  }

  return this;
}

uint64_t DynamicParamSet::setEnumParameter(uint64_t this, unsigned int a2, const char *__s, int a4)
{
  v5 = __s;
  v7 = this;
  v8 = *(this + 32) + 40 * a2;
  if (*v8 != 5 || (this = strcmp(*(v8 + 24), __s), this))
  {
    *v8 = 5;
    if (*(v8 + 32) == 1)
    {
      this = *(v8 + 24);
      if (this)
      {
        this = MemChunkFree(this, 0);
      }
    }

    if (a4)
    {
      if (v5)
      {
        v9 = strlen(v5);
        v10 = MemChunkAlloc((v9 + 1), 0);
        this = strcpy(v10, v5);
        v5 = this;
      }
    }

    v11 = *(v7 + 32) + 40 * a2;
    *(v11 + 24) = v5;
    *(v11 + 32) = a4;
  }

  return this;
}

void DynamicParamSet::DynamicParamSet(DynamicParamSet *this, const DynamicParamSet *a2)
{
  DgnString::DgnString(this);
  *(v4 + 32) = 0;
  v5 = v4 + 32;
  *(v4 + 40) = 0;
  *(v4 + 24) = *(a2 + 6);
  DgnString::operator=(v4, a2);
  *(this + 2) = *(a2 + 2);
  DgnArray<ParamValue>::copyArraySlice(v5, a2 + 4, 0, *(a2 + 10));
}

void sub_2627668CC(_Unwind_Exception *a1)
{
  DgnArray<ParamValue>::releaseAll(v2);
  DgnString::~DgnString(v1);
  _Unwind_Resume(a1);
}

uint64_t DynamicParamSet::setBoolParameter(DynamicParamSet *this, const char *a2, char a3)
{
  result = ParamSpecMgr::getParamId(*(this + 6), a2);
  v6 = *(this + 4) + 40 * result;
  *v6 = 1;
  *(v6 + 4) = a3;
  return result;
}

uint64_t DynamicParamSet::setIntParameter(DynamicParamSet *this, const char *a2, int a3)
{
  result = ParamSpecMgr::getParamId(*(this + 6), a2);
  v6 = (*(this + 4) + 40 * result);
  *v6 = 2;
  v6[2] = a3;
  return result;
}

uint64_t DynamicParamSet::setDoubleParameter(DynamicParamSet *this, const char *a2, double a3)
{
  result = ParamSpecMgr::getParamId(*(this + 6), a2);
  v6 = *(this + 4) + 40 * result;
  *v6 = 3;
  *(v6 + 16) = a3;
  return result;
}

uint64_t DynamicParamSet::setStringParameter(DynamicParamSet *this, const char *a2, const char *a3, int a4)
{
  ParamId = ParamSpecMgr::getParamId(*(this + 6), a2);

  return DynamicParamSet::setStringParameter(this, ParamId, a3, a4);
}

uint64_t DynamicParamSet::setEnumParameter(DynamicParamSet *this, const char *a2, const char *a3, int a4)
{
  ParamId = ParamSpecMgr::getParamId(*(this + 6), a2);

  return DynamicParamSet::setEnumParameter(this, ParamId, a3, a4);
}

uint64_t DynamicParamSet::getBoolParameter(DynamicParamSet *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 4);
  v10 = *(v8 + 40 * a2);
  if (v10 != 1)
  {
    if (!v10)
    {
      ParamByParamId = ParamSpecMgr::getParamByParamId(*(&ParamSpecMgr::smpParamSpecMgrArray + *(this + 6)), a2, a3, a4, a5, a6, a7, a8);
      v16 = *(ParamByParamId + 8);
      if (*(this + 2))
      {
        v17 = *this;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dynparset.cpp", 341, "dfutil/dynparset", 2, "%.500s %.500s", v14, v15, *(ParamByParamId + 8));
    }

    v18 = ParamSpecMgr::getParamByParamId(*(&ParamSpecMgr::smpParamSpecMgrArray + *(this + 6)), a2, a3, a4, a5, a6, a7, a8);
    v22 = sParamTypeNames[v10];
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dynparset.cpp", 347, "dfutil/dynparset", 1, "%.500s %.500s %.500s", v19, v20, *(v18 + 8));
    v8 = *(this + 4);
  }

  return *(v8 + 40 * a2 + 4);
}

uint64_t DynamicParamSet::getIntParameter(DynamicParamSet *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 4);
  v10 = *(v8 + 40 * a2);
  if (v10 != 2)
  {
    if (!v10)
    {
      ParamByParamId = ParamSpecMgr::getParamByParamId(*(&ParamSpecMgr::smpParamSpecMgrArray + *(this + 6)), a2, a3, a4, a5, a6, a7, a8);
      v16 = *(ParamByParamId + 8);
      if (*(this + 2))
      {
        v17 = *this;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dynparset.cpp", 358, "dfutil/dynparset", 2, "%.500s %.500s", v14, v15, *(ParamByParamId + 8));
    }

    v18 = ParamSpecMgr::getParamByParamId(*(&ParamSpecMgr::smpParamSpecMgrArray + *(this + 6)), a2, a3, a4, a5, a6, a7, a8);
    v22 = sParamTypeNames[v10];
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dynparset.cpp", 364, "dfutil/dynparset", 1, "%.500s %.500s %.500s", v19, v20, *(v18 + 8));
    v8 = *(this + 4);
  }

  return *(v8 + 40 * a2 + 8);
}

double DynamicParamSet::getDoubleParameter(DynamicParamSet *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 4);
  v10 = *(v8 + 40 * a2);
  if (v10 != 3)
  {
    if (!v10)
    {
      ParamByParamId = ParamSpecMgr::getParamByParamId(*(&ParamSpecMgr::smpParamSpecMgrArray + *(this + 6)), a2, a3, a4, a5, a6, a7, a8);
      v16 = *(ParamByParamId + 8);
      if (*(this + 2))
      {
        v17 = *this;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dynparset.cpp", 375, "dfutil/dynparset", 2, "%.500s %.500s", v14, v15, *(ParamByParamId + 8));
    }

    v18 = ParamSpecMgr::getParamByParamId(*(&ParamSpecMgr::smpParamSpecMgrArray + *(this + 6)), a2, a3, a4, a5, a6, a7, a8);
    v22 = sParamTypeNames[v10];
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dynparset.cpp", 381, "dfutil/dynparset", 1, "%.500s %.500s %.500s", v19, v20, *(v18 + 8));
    v8 = *(this + 4);
  }

  return *(v8 + 40 * a2 + 16);
}

uint64_t DynamicParamSet::getStringParameter(DynamicParamSet *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 4);
  v10 = *(v8 + 40 * a2);
  if (v10 != 4)
  {
    if (!v10)
    {
      ParamByParamId = ParamSpecMgr::getParamByParamId(ParamSpecMgr::smpParamSpecMgrArray[*(this + 6)], a2, a3, a4, a5, a6, a7, a8);
      v16 = *(ParamByParamId + 8);
      if (*(this + 2))
      {
        v17 = *this;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dynparset.cpp", 392, "dfutil/dynparset", 2, "%.500s %.500s", v14, v15, *(ParamByParamId + 8));
    }

    v18 = ParamSpecMgr::getParamByParamId(ParamSpecMgr::smpParamSpecMgrArray[*(this + 6)], a2, a3, a4, a5, a6, a7, a8);
    v22 = sParamTypeNames[v10];
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dynparset.cpp", 398, "dfutil/dynparset", 1, "%.500s %.500s %.500s", v19, v20, *(v18 + 8));
    v8 = *(this + 4);
  }

  return *(v8 + 40 * a2 + 24);
}

uint64_t DynamicParamSet::getEnumParameter(DynamicParamSet *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 4);
  v10 = *(v8 + 40 * a2);
  if (v10 != 5)
  {
    if (!v10)
    {
      ParamByParamId = ParamSpecMgr::getParamByParamId(*(&ParamSpecMgr::smpParamSpecMgrArray + *(this + 6)), a2, a3, a4, a5, a6, a7, a8);
      v16 = *(ParamByParamId + 8);
      if (*(this + 2))
      {
        v17 = *this;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dynparset.cpp", 409, "dfutil/dynparset", 2, "%.500s %.500s", v14, v15, *(ParamByParamId + 8));
    }

    v18 = ParamSpecMgr::getParamByParamId(*(&ParamSpecMgr::smpParamSpecMgrArray + *(this + 6)), a2, a3, a4, a5, a6, a7, a8);
    v22 = sParamTypeNames[v10];
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dynparset.cpp", 415, "dfutil/dynparset", 1, "%.500s %.500s %.500s", v19, v20, *(v18 + 8));
    v8 = *(this + 4);
  }

  return *(v8 + 40 * a2 + 24);
}

uint64_t DynamicParamSet::getBoolParameter(DynamicParamSet *this, const char *a2)
{
  ParamId = ParamSpecMgr::getParamId(*(this + 6), a2);

  return DynamicParamSet::getBoolParameter(this, ParamId, v4, v5, v6, v7, v8, v9);
}

uint64_t DynamicParamSet::getIntParameter(DynamicParamSet *this, const char *a2)
{
  ParamId = ParamSpecMgr::getParamId(*(this + 6), a2);

  return DynamicParamSet::getIntParameter(this, ParamId, v4, v5, v6, v7, v8, v9);
}

double DynamicParamSet::getDoubleParameter(DynamicParamSet *this, const char *a2)
{
  ParamId = ParamSpecMgr::getParamId(*(this + 6), a2);

  return DynamicParamSet::getDoubleParameter(this, ParamId, v4, v5, v6, v7, v8, v9);
}

uint64_t DynamicParamSet::getEnumParameter(DynamicParamSet *this, const char *a2)
{
  ParamId = ParamSpecMgr::getParamId(*(this + 6), a2);

  return DynamicParamSet::getEnumParameter(this, ParamId, v4, v5, v6, v7, v8, v9);
}

void *DynamicParamSet::removeParameter(void *this, unsigned int a2)
{
  v2 = this[4];
  v4 = v2 + 40 * a2;
  if (*(v4 + 32) == 1)
  {
    v5 = this;
    this = *(v4 + 24);
    if (this)
    {
      this = MemChunkFree(this, 0);
      v2 = v5[4];
    }

    *(v2 + 40 * a2 + 24) = 0;
  }

  *(v2 + 40 * a2) = 0;
  return this;
}

void *DynamicParamSet::removeParameter(DynamicParamSet *this, const char *a2)
{
  ParamId = ParamSpecMgr::getParamId(*(this + 6), a2);

  return DynamicParamSet::removeParameter(this, ParamId);
}

uint64_t DynamicParamSet::validateSelf(DynamicParamSet *this)
{
  v2 = *(this + 5);
  v3 = ParamSpecMgr::smpParamSpecMgrArray[*(this + 6)];
  v42 = 0;
  v43 = 0;
  ParamSpecMgr::getAllParamIdsSortedByName(v3, &v42, *(this + 4), v2);
  if (v43)
  {
    v10 = 0;
    do
    {
      v11 = v42[v10];
      ParamByParamId = ParamSpecMgr::getParamByParamId(v3, v11, v4, v5, v6, v7, v8, v9);
      v13 = (*(*ParamByParamId + 3))(ParamByParamId);
      switch(v13)
      {
        case 2:
          IntParameter = DynamicParamSet::getIntParameter(this, v11, v4, v5, v6, v7, v8, v9);
          v26 = **ParamByParamId;
          IntParamSpec::validateValue(v27, IntParameter, *(this + 4), *(this + 5), v28, v29, v30, v31);
          break;
        case 3:
          DoubleParameter = DynamicParamSet::getDoubleParameter(this, v11, v4, v5, v6, v7, v8, v9);
          v18 = **ParamByParamId;
          DoubleParamSpec::validateValue(v19, DoubleParameter, *(this + 4), *(this + 5), v20, v21, v22, v23, v24);
          break;
        case 5:
          EnumParameter = DynamicParamSet::getEnumParameter(this, v11, v4, v5, v6, v7, v8, v9);
          v15 = **ParamByParamId;
          EnumParamSpec::checkStringEnumValue(v16, EnumParameter, *(this + 4), *(this + 5));
          break;
      }

      ++v10;
    }

    while (v10 < v43);
  }

  v32 = *(this + 10);
  if (v32)
  {
    for (i = 0; i < v32; ++i)
    {
      if (*(*(this + 4) + 40 * i))
      {
        v34 = v43;
        if (!v43)
        {
          goto LABEL_19;
        }

        v35 = v42;
        v36 = 0xFFFFFFFFLL;
        while (1)
        {
          v37 = *v35++;
          if (v37 == i)
          {
            break;
          }

          --v36;
          if (!--v34)
          {
            goto LABEL_19;
          }
        }

        if (!v36)
        {
LABEL_19:
          v38 = ParamSpecMgr::getParamByParamId(ParamSpecMgr::smpParamSpecMgrArray[*(this + 6)], i, v4, v5, v6, v7, v8, v9);
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dynparset.cpp", 532, "dfutil/dynparset", 3, "%.500s", v39, v40, *(v38 + 8));
          v32 = *(this + 10);
        }
      }
    }
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v42);
}

void sub_262767498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void DgnArray<ParamValue>::copyArraySlice(uint64_t a1, void *a2, unsigned int a3, unsigned int a4)
{
  v8 = *(a1 + 8);
  if (v8 >= 1)
  {
    v9 = 40 * v8 - 40;
    do
    {
      ParamValue::~ParamValue((*a1 + v9));
      v9 -= 40;
    }

    while (v9 != -40);
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
    DgnArray<FstSearchLeafLatticeDurationBackoffActiveToken>::reallocElts(a1, a4 - v10, 0);
    v11 = *(a1 + 8);
  }

  v13 = a4;
  v12 = v11;
  do
  {
    ParamValue::ParamValue((*a1 + 40 * v12), (*a2 + 40 * a3));
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
      v15 = 40 * v12 - 40;
      do
      {
        --v14;
        ParamValue::~ParamValue((*a1 + v15));
        v15 -= 40;
      }

      while (v14 > a4);
    }

    goto LABEL_17;
  }

LABEL_14:
  if (v12 < a4)
  {
    v16 = a4 - v12;
    v17 = 40 * v12;
    do
    {
      v18 = *a1 + v17;
      *v18 = 0;
      *(v18 + 4) = 0;
      *(v18 + 8) = 0;
      *(v18 + 16) = 0;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0;
      v17 += 40;
      --v16;
    }

    while (v16);
  }

LABEL_17:
  *(a1 + 8) = a4;
}

uint64_t sdGetAndValidateParamSet(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = ParamSetHolderMgr::smpParamSetHolderMgr;
  v10 = *a1;
  if (HIDWORD(*a1))
  {
    throwBadSdapiArgument("SDhParamSetHolder", v10, a3, a4, a5, a6, a7, a8);
  }

  if ((v10 + 1) <= 1)
  {
    throwBadSdapiArgument("SDhParamSetHolder", v10, a3, a4, a5, a6, a7, a8);
  }

  ParamSetHolder = ParamSetHolderMgr::getParamSetHolder(v9, v10, a3, a4, a5, a6, a7, a8);
  v18 = a1[1];
  if (v18 > 6)
  {
    if (v18 > 9)
    {
      switch(v18)
      {
        case 10:
          v30 = a1[11];
          if (HIDWORD(v30))
          {
            throwBadSdapiArgument("SDhSearchParamSet", v30, v11, v12, v13, v14, v15, v16);
          }

          if ((v30 + 1) <= 1)
          {
            throwBadSdapiArgument("SDhSearchParamSet", v30, v11, v12, v13, v14, v15, v16);
          }

          ParamSet = ParamSetHolder::getParamSet(ParamSetHolder, v30, v11, v12, v13, v14, v15, v16);
          v23 = 10;
          break;
        case 11:
          v34 = a1[12];
          if (HIDWORD(v34))
          {
            throwBadSdapiArgument("SDhSearchCrossLayerParamSet", v34, v11, v12, v13, v14, v15, v16);
          }

          if ((v34 + 1) <= 1)
          {
            throwBadSdapiArgument("SDhSearchCrossLayerParamSet", v34, v11, v12, v13, v14, v15, v16);
          }

          ParamSet = ParamSetHolder::getParamSet(ParamSetHolder, v34, v11, v12, v13, v14, v15, v16);
          v23 = 11;
          break;
        case 12:
          v26 = a1[13];
          if (HIDWORD(v26))
          {
            throwBadSdapiArgument("SDhUserDeltaParamSet", v26, v11, v12, v13, v14, v15, v16);
          }

          if ((v26 + 1) <= 1)
          {
            throwBadSdapiArgument("SDhUserDeltaParamSet", v26, v11, v12, v13, v14, v15, v16);
          }

          ParamSet = ParamSetHolder::getParamSet(ParamSetHolder, v26, v11, v12, v13, v14, v15, v16);
          v23 = 12;
          break;
        default:
LABEL_78:
          throwBadSdapiArgument("SDParamSetContainerType", a1[1], v11, v12, v13, v14, v15, v16);
          v41 = a1[11];
          if (HIDWORD(v41))
          {
            throwBadSdapiArgument("SDhSearchParamSet", v41, v35, v36, v37, v38, v39, v40);
          }

          if ((v41 + 1) <= 1)
          {
            throwBadSdapiArgument("SDhSearchParamSet", v41, v35, v36, v37, v38, v39, v40);
          }

          ParamSet = ParamSetHolder::getParamSet(ParamSetHolder, v41, v35, v36, v37, v38, v39, v40);
          throwBadSdapiArgument("SDParamSetContainerType", v18, v42, v43, v44, v45, v46, v47);
LABEL_83:
          v23 = 1;
          break;
      }
    }

    else if (v18 == 7)
    {
      v28 = a1[8];
      if (HIDWORD(v28))
      {
        throwBadSdapiArgument("SDhPrefiltererSearchParamSet", v28, v11, v12, v13, v14, v15, v16);
      }

      if ((v28 + 1) <= 1)
      {
        throwBadSdapiArgument("SDhPrefiltererSearchParamSet", v28, v11, v12, v13, v14, v15, v16);
      }

      ParamSet = ParamSetHolder::getParamSet(ParamSetHolder, v28, v11, v12, v13, v14, v15, v16);
      v23 = 7;
    }

    else if (v18 == 8)
    {
      v32 = a1[9];
      if (HIDWORD(v32))
      {
        throwBadSdapiArgument("SDhPronGuessParamSet", v32, v11, v12, v13, v14, v15, v16);
      }

      if ((v32 + 1) <= 1)
      {
        throwBadSdapiArgument("SDhPronGuessParamSet", v32, v11, v12, v13, v14, v15, v16);
      }

      ParamSet = ParamSetHolder::getParamSet(ParamSetHolder, v32, v11, v12, v13, v14, v15, v16);
      v23 = 8;
    }

    else
    {
      v24 = a1[10];
      if (HIDWORD(v24))
      {
        throwBadSdapiArgument("SDhSausageParamSet", v24, v11, v12, v13, v14, v15, v16);
      }

      if ((v24 + 1) <= 1)
      {
        throwBadSdapiArgument("SDhSausageParamSet", v24, v11, v12, v13, v14, v15, v16);
      }

      ParamSet = ParamSetHolder::getParamSet(ParamSetHolder, v24, v11, v12, v13, v14, v15, v16);
      v23 = 9;
    }
  }

  else if (v18 > 3)
  {
    if (v18 == 4)
    {
      v29 = a1[5];
      if (HIDWORD(v29))
      {
        throwBadSdapiArgument("SDhLatticeNBestParamSet", v29, v11, v12, v13, v14, v15, v16);
      }

      if ((v29 + 1) <= 1)
      {
        throwBadSdapiArgument("SDhLatticeNBestParamSet", v29, v11, v12, v13, v14, v15, v16);
      }

      ParamSet = ParamSetHolder::getParamSet(ParamSetHolder, v29, v11, v12, v13, v14, v15, v16);
      v23 = 4;
    }

    else if (v18 == 5)
    {
      v33 = a1[6];
      if (HIDWORD(v33))
      {
        throwBadSdapiArgument("SDhLatticePostProbParamSet", v33, v11, v12, v13, v14, v15, v16);
      }

      if ((v33 + 1) <= 1)
      {
        throwBadSdapiArgument("SDhLatticePostProbParamSet", v33, v11, v12, v13, v14, v15, v16);
      }

      ParamSet = ParamSetHolder::getParamSet(ParamSetHolder, v33, v11, v12, v13, v14, v15, v16);
      v23 = 5;
    }

    else
    {
      v25 = a1[7];
      if (HIDWORD(v25))
      {
        throwBadSdapiArgument("SDhPrefiltererBuildParamSet", v25, v11, v12, v13, v14, v15, v16);
      }

      if ((v25 + 1) <= 1)
      {
        throwBadSdapiArgument("SDhPrefiltererBuildParamSet", v25, v11, v12, v13, v14, v15, v16);
      }

      ParamSet = ParamSetHolder::getParamSet(ParamSetHolder, v25, v11, v12, v13, v14, v15, v16);
      v23 = 6;
    }
  }

  else
  {
    if (v18 == 1)
    {
      v27 = a1[2];
      if (HIDWORD(v27))
      {
        throwBadSdapiArgument("SDhAdapterParamSet", v27, v11, v12, v13, v14, v15, v16);
      }

      if ((v27 + 1) <= 1)
      {
        throwBadSdapiArgument("SDhAdapterParamSet", v27, v11, v12, v13, v14, v15, v16);
      }

      ParamSet = ParamSetHolder::getParamSet(ParamSetHolder, v27, v11, v12, v13, v14, v15, v16);
      goto LABEL_83;
    }

    if (v18 != 2)
    {
      if (v18 == 3)
      {
        v19 = a1[4];
        if (HIDWORD(v19))
        {
          throwBadSdapiArgument("SDhConfidenceParamSet", v19, v11, v12, v13, v14, v15, v16);
        }

        if ((v19 + 1) <= 1)
        {
          throwBadSdapiArgument("SDhConfidenceParamSet", v19, v11, v12, v13, v14, v15, v16);
        }

        ParamSet = ParamSetHolder::getParamSet(ParamSetHolder, v19, v11, v12, v13, v14, v15, v16);
        v23 = 3;
        goto LABEL_84;
      }

      goto LABEL_78;
    }

    v31 = a1[3];
    if (HIDWORD(v31))
    {
      throwBadSdapiArgument("SDhChannelParamSet", v31, v11, v12, v13, v14, v15, v16);
    }

    if ((v31 + 1) <= 1)
    {
      throwBadSdapiArgument("SDhChannelParamSet", v31, v11, v12, v13, v14, v15, v16);
    }

    ParamSet = ParamSetHolder::getParamSet(ParamSetHolder, v31, v11, v12, v13, v14, v15, v16);
    v23 = 2;
  }

LABEL_84:
  if (v23 != *(ParamSet + 24))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdparamsetparam.cpp", 60, "sdapi/sdparamsetparam", 1, "%s", v20, v21, &unk_26288CCC2);
  }

  return ParamSet;
}

uint64_t SDParamSetParam_GetHandle(uint64_t a1, const char *a2)
{
  v4 = SdapiInsurance::SdapiInsurance(v17, "SDParamSetParam_GetHandle", 1, 1, 193);
  if (v17[97] == 1)
  {
    if (!a2)
    {
      throwBadStringPointer(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    v17[151] = 0;
    if (gbShowCalls == 1)
    {
      if (gbShowCallPointerArguments)
      {
        v12 = a1;
      }

      else
      {
        v12 = 0;
      }

      xlprintf("Entering sdapi call %.500s(Masked:0x%016llx, '%.500s')\n", v5, v6, v7, v8, "SDParamSetParam_GetHandle", v12, a2);
    }

    v13 = *(a1 + 8);
    if (v13 - 1 >= 0xC)
    {
      throwBadSdapiArgument("SDParamSetContainerType", v13, v6, v7, v8, v9, v10, v11);
      v13 = 1;
    }

    ParamIdByParamName = ParamSpecMgr::getParamIdByParamName(ParamSpecMgr::smpParamSpecMgrArray[v13], a2);
    if (ParamIdByParamName == 0xFFFF)
    {
      v15 = -1;
    }

    else
    {
      v15 = ParamIdByParamName;
    }
  }

  else
  {
    v15 = -1;
  }

  SdapiInsurance::~SdapiInsurance(v17);
  return v15;
}

uint64_t SDParamSetParam_GetType(uint64_t a1, unint64_t a2)
{
  v4 = 1;
  SdapiInsurance::SdapiInsurance(v18, "SDParamSetParam_GetType", 1, 1, 194);
  if (v18[97] == 1)
  {
    if (gbShowCalls == 1)
    {
      if (gbShowCallPointerArguments)
      {
        v12 = a1;
      }

      else
      {
        v12 = 0;
      }

      xlprintf("Entering sdapi call %.500s(Masked:0x%016llx, <Masked:SDh %lld>)\n", v5, v6, v7, v8, "SDParamSetParam_GetType", v12, a2);
    }

    v13 = *(a1 + 8);
    if (v13 - 1 >= 0xC)
    {
      throwBadSdapiArgument("SDParamSetContainerType", v13, v6, v7, v8, v9, v10, v11);
      v13 = 1;
    }

    v14 = ParamSpecMgr::smpParamSpecMgrArray[v13];
    if (a2 == -1)
    {
      LOWORD(a2) = -1;
    }

    else
    {
      if (HIDWORD(a2) || (a2 & 0xFFFF0000) != 0)
      {
        throwBadSdapiArgument("SDhParamSetParam", a2, v6, v7, v8, v9, v10, v11);
      }

      if (a2 == 0xFFFF || !a2)
      {
        throwBadSdapiArgument("SDhParamSetParam", a2, v6, v7, v8, v9, v10, v11);
      }
    }

    ParamByParamId = ParamSpecMgr::getParamByParamId(v14, a2, v6, v7, v8, v9, v10, v11);
    v16 = (*(*ParamByParamId + 24))(ParamByParamId);
    v4 = 1;
    if (v16 <= 2)
    {
      if (v16 == 1)
      {
        v4 = 2;
      }

      else if (v16 == 2)
      {
        v4 = 3;
      }
    }

    else
    {
      switch(v16)
      {
        case 3:
          v4 = 4;
          break;
        case 4:
          v4 = 5;
          break;
        case 5:
          v4 = 6;
          break;
      }
    }
  }

  SdapiInsurance::~SdapiInsurance(v18);
  return v4;
}

void sub_262767E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2 == 2)
  {
    v14 = __cxa_begin_catch(a1);
    ApiState::handleDgnException(v14, v15);
  }

  else
  {
    if (a2 != 1)
    {
      SdapiInsurance::~SdapiInsurance(&a13);
      _Unwind_Resume(a1);
    }

    v16 = __cxa_begin_catch(a1);
    ApiState::handleDgnMemoryException(v16);
  }

  __cxa_end_catch();
  JUMPOUT(0x262767E7CLL);
}

void SDParamSetParam_SetBoolValue(unint64_t *a1, unint64_t a2, unsigned int a3)
{
  SdapiInsurance::SdapiInsurance(v22, "SDParamSetParam_SetBoolValue", 1, 1, 202);
  if (v22[97] == 1)
  {
    if (gbShowCalls == 1)
    {
      if (gbShowCallPointerArguments)
      {
        v13 = a1;
      }

      else
      {
        v13 = 0;
      }

      v14 = "SD_TRUE";
      if (!a3)
      {
        v14 = "SD_FALSE";
      }

      xlprintf("Entering sdapi call %.500s(Masked:0x%016llx, <Masked:SDh %lld>, %.500s)\n", v6, v7, v8, v9, "SDParamSetParam_SetBoolValue", v13, a2, v14);
    }

    v21 = sdGetAndValidateParamSet(a1, v6, v7, v8, v9, v10, v11, v12);
    if (a2 == -1)
    {
      LOWORD(a2) = -1;
    }

    else
    {
      if (HIDWORD(a2) || (a2 & 0xFFFF0000) != 0)
      {
        throwBadSdapiArgument("SDhParamSetParam", a2, v15, v16, v17, v18, v19, v20);
      }

      if (a2 == 0xFFFF || !a2)
      {
        throwBadSdapiArgument("SDhParamSetParam", a2, v15, v16, v17, v18, v19, v20);
      }
    }

    if (a3 >= 2)
    {
      throwBadSdapiArgument("SDBool", a3, v15, v16, v17, v18, v19, v20);
    }

    (*(*v21 + 64))(v21, a2, a3 == 1);
  }

  SdapiInsurance::~SdapiInsurance(v22);
}

void sub_262768070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2 == 2)
  {
    v14 = __cxa_begin_catch(a1);
    ApiState::handleDgnException(v14, v15);
  }

  else
  {
    if (a2 != 1)
    {
      SdapiInsurance::~SdapiInsurance(&a13);
      _Unwind_Resume(a1);
    }

    v16 = __cxa_begin_catch(a1);
    ApiState::handleDgnMemoryException(v16);
  }

  __cxa_end_catch();
  JUMPOUT(0x262768054);
}

void SDParamSetParam_SetIntValue(unint64_t *a1, unint64_t a2, uint64_t a3)
{
  SdapiInsurance::SdapiInsurance(v21, "SDParamSetParam_SetIntValue", 1, 1, 203);
  if (v21[97] == 1)
  {
    if (gbShowCalls == 1)
    {
      if (gbShowCallPointerArguments)
      {
        v13 = a1;
      }

      else
      {
        v13 = 0;
      }

      xlprintf("Entering sdapi call %.500s(Masked:0x%016llx, <Masked:SDh %lld>, %lld)\n", v6, v7, v8, v9, "SDParamSetParam_SetIntValue", v13, a2, a3);
    }

    v20 = sdGetAndValidateParamSet(a1, v6, v7, v8, v9, v10, v11, v12);
    if (a2 == -1)
    {
      LOWORD(a2) = -1;
    }

    else
    {
      if (HIDWORD(a2) || (a2 & 0xFFFF0000) != 0)
      {
        throwBadSdapiArgument("SDhParamSetParam", a2, v14, v15, v16, v17, v18, v19);
      }

      if (a2 == 0xFFFF || !a2)
      {
        throwBadSdapiArgument("SDhParamSetParam", a2, v14, v15, v16, v17, v18, v19);
      }
    }

    (*(*v20 + 72))(v20, a2, a3);
  }

  SdapiInsurance::~SdapiInsurance(v21);
}

void sub_262768204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2 == 2)
  {
    v14 = __cxa_begin_catch(a1);
    ApiState::handleDgnException(v14, v15);
  }

  else
  {
    if (a2 != 1)
    {
      SdapiInsurance::~SdapiInsurance(&a13);
      _Unwind_Resume(a1);
    }

    v16 = __cxa_begin_catch(a1);
    ApiState::handleDgnMemoryException(v16);
  }

  __cxa_end_catch();
  JUMPOUT(0x2627681E8);
}

void SDParamSetParam_SetDoubleValue(unint64_t *a1, unint64_t a2, double a3)
{
  SdapiInsurance::SdapiInsurance(v29, "SDParamSetParam_SetDoubleValue", 1, 1, 204);
  if (v29[97] == 1)
  {
    if (gbShowCalls == 1)
    {
      if (gbShowCallPointerArguments)
      {
        v13 = a1;
      }

      else
      {
        v13 = 0;
      }

      v14 = eround(a3, 14);
      DgnString::formatFloat(0xE, v14, &v27);
      if (v28)
      {
        v19 = v27;
      }

      else
      {
        v19 = &unk_26288CCC2;
      }

      xlprintf("Entering sdapi call %.500s(Masked:0x%016llx, <Masked:SDh %lld>, %.500s)\n", v15, v16, v17, v18, "SDParamSetParam_SetDoubleValue", v13, a2, v19);
      DgnString::~DgnString(&v27);
    }

    v26 = sdGetAndValidateParamSet(a1, v6, v7, v8, v9, v10, v11, v12);
    if (a2 == -1)
    {
      LOWORD(a2) = -1;
    }

    else
    {
      if (HIDWORD(a2) || (a2 & 0xFFFF0000) != 0)
      {
        throwBadSdapiArgument("SDhParamSetParam", a2, v20, v21, v22, v23, v24, v25);
      }

      if (a2 == 0xFFFF || !a2)
      {
        throwBadSdapiArgument("SDhParamSetParam", a2, v20, v21, v22, v23, v24, v25);
      }
    }

    (*(*v26 + 80))(v26, a2, a3);
  }

  SdapiInsurance::~SdapiInsurance(v29);
}

void sub_2627683DC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  DgnString::~DgnString(va);
  if (a2 == 2)
  {
    v8 = __cxa_begin_catch(a1);
    ApiState::handleDgnException(v8, v9);
  }

  else
  {
    if (a2 != 1)
    {
      SdapiInsurance::~SdapiInsurance(va1);
      _Unwind_Resume(a1);
    }

    v10 = __cxa_begin_catch(a1);
    ApiState::handleDgnMemoryException(v10);
  }

  __cxa_end_catch();
  JUMPOUT(0x2627683B8);
}

void SDParamSetParam_SetStringValue(unint64_t *a1, unint64_t a2, uint64_t a3)
{
  v6 = SdapiInsurance::SdapiInsurance(v22, "SDParamSetParam_SetStringValue", 1, 1, 205);
  if (v22[97] == 1)
  {
    if (!a3)
    {
      throwBadStringPointer(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    v22[151] = 0;
    if (gbShowCalls == 1)
    {
      if (gbShowCallPointerArguments)
      {
        v14 = a1;
      }

      else
      {
        v14 = 0;
      }

      xlprintf("Entering sdapi call %.500s(Masked:0x%016llx, <Masked:SDh %lld>, '%.500s')\n", v7, v8, v9, v10, "SDParamSetParam_SetStringValue", v14, a2, a3);
    }

    v21 = sdGetAndValidateParamSet(a1, v7, v8, v9, v10, v11, v12, v13);
    if (a2 == -1)
    {
      LOWORD(a2) = -1;
    }

    else
    {
      if (HIDWORD(a2) || (a2 & 0xFFFF0000) != 0)
      {
        throwBadSdapiArgument("SDhParamSetParam", a2, v15, v16, v17, v18, v19, v20);
      }

      if (a2 == 0xFFFF || !a2)
      {
        throwBadSdapiArgument("SDhParamSetParam", a2, v15, v16, v17, v18, v19, v20);
      }
    }

    (*(*v21 + 88))(v21, a2, a3);
  }

  SdapiInsurance::~SdapiInsurance(v22);
}

void sub_262768594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2 == 2)
  {
    v15 = __cxa_begin_catch(a1);
    ApiState::handleDgnException(v15, v16);
  }

  else
  {
    if (a2 != 1)
    {
      SdapiInsurance::~SdapiInsurance(&a14);
      _Unwind_Resume(a1);
    }

    v17 = __cxa_begin_catch(a1);
    ApiState::handleDgnMemoryException(v17);
  }

  __cxa_end_catch();
  JUMPOUT(0x262768578);
}

void SDParamSetParam_SetEnumValue(unint64_t *a1, unint64_t a2, const char *a3)
{
  v6 = SdapiInsurance::SdapiInsurance(v41, "SDParamSetParam_SetEnumValue", 1, 1, 206);
  if (v41[97] == 1)
  {
    if (!a3)
    {
      throwBadStringPointer(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    v41[151] = 0;
    if (gbShowCalls == 1)
    {
      if (gbShowCallPointerArguments)
      {
        v14 = a1;
      }

      else
      {
        v14 = 0;
      }

      xlprintf("Entering sdapi call %.500s(Masked:0x%016llx, <Masked:SDh %lld>, '%.500s')\n", v7, v8, v9, v10, "SDParamSetParam_SetEnumValue", v14, a2, a3);
    }

    v21 = sdGetAndValidateParamSet(a1, v7, v8, v9, v10, v11, v12, v13);
    v22 = a1[1];
    if (v22 - 1 >= 0xC)
    {
      throwBadSdapiArgument("SDParamSetContainerType", v22, v15, v16, v17, v18, v19, v20);
      v22 = 1;
    }

    v23 = ParamSpecMgr::smpParamSpecMgrArray[v22];
    v24 = HIDWORD(a2);
    if (a2 == -1)
    {
      v25 = -1;
    }

    else
    {
      if (v24 || (a2 & 0xFFFF0000) != 0)
      {
        throwBadSdapiArgument("SDhParamSetParam", a2, v15, v16, v17, v18, v19, v20);
      }

      if (a2 != 0xFFFF && a2)
      {
        v25 = a2;
      }

      else
      {
        throwBadSdapiArgument("SDhParamSetParam", a2, v15, v16, v17, v18, v19, v20);
        v25 = a2;
      }
    }

    ParamByParamId = ParamSpecMgr::getParamByParamId(v23, v25, v15, v16, v17, v18, v19, v20);
    if (ParamByParamId)
    {
      v33 = **ParamByParamId;
    }

    v40 = EnumParamSpec::convertEnumStringToInt(ParamByParamId, a3, v27, v28, v29, v30, v31, v32);
    if (a2 == -1)
    {
      LOWORD(a2) = -1;
    }

    else
    {
      if (v24 || (a2 & 0xFFFF0000) != 0)
      {
        throwBadSdapiArgument("SDhParamSetParam", a2, v34, v35, v36, v37, v38, v39);
      }

      if (a2 == 0xFFFF || !a2)
      {
        throwBadSdapiArgument("SDhParamSetParam", a2, v34, v35, v36, v37, v38, v39);
      }
    }

    (*(*v21 + 96))(v21, a2, v40);
  }

  SdapiInsurance::~SdapiInsurance(v41);
}

void sub_262768820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2 == 2)
  {
    v15 = __cxa_begin_catch(a1);
    ApiState::handleDgnException(v15, v16);
  }

  else
  {
    if (a2 != 1)
    {
      SdapiInsurance::~SdapiInsurance(&a14);
      _Unwind_Resume(a1);
    }

    v17 = __cxa_begin_catch(a1);
    ApiState::handleDgnMemoryException(v17);
  }

  __cxa_end_catch();
  JUMPOUT(0x262768800);
}

_DWORD *DFileChecksumBucket::DFileChecksumBucket(_DWORD *a1, _DWORD *a2)
{
  DgnString::DgnString((a1 + 2));
  *a1 = *a2;
  DgnString::operator=((a1 + 2), (a2 + 2));
  return a1;
}

BOOL DFileChecksumBucket::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 16))
  {
    v2 = *(a1 + 8);
  }

  else
  {
    v2 = &byte_262899963;
  }

  if (*(a2 + 16))
  {
    v3 = *(a2 + 8);
  }

  else
  {
    v3 = &byte_262899963;
  }

  return strcmp(v2, v3) == 0;
}

void DFileChecksums::DFileChecksums(DFileChecksums *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
}

uint64_t DFileChecksums::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = *(a2 + 16);
  DgnArray<DFileChecksumBucket>::copyArraySlice(a1, a2, 0, *(a2 + 8));
  return a1;
}

uint64_t DFileChecksums::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16))
  {
    return DgnArray<DFileChecksumBucket>::operator==(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t DgnArray<DFileChecksumBucket>::operator==(uint64_t a1, uint64_t *a2)
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
  v6 = 24 * v3 - 24;
  do
  {
    v7 = --v5 < 1;
    if (v5 < 1)
    {
      break;
    }

    v8 = v6 - 24;
    v9 = DFileChecksumBucket::operator==(*a1 + v6, v4 + v6);
    v6 = v8;
  }

  while (v9);
  return v7;
}

void DFileChecksums::addChecksum(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  SubFileExtensionString = GetSubFileExtensionString(a3);
  DgnString::DgnString(&v18);
  DFile::makeSubFileName(a2, SubFileExtensionString, &v18);
  v9 = *(a1 + 8);
  v8 = *(a1 + 12);
  v10 = v9 + 1;
  v11 = v9;
  if (v9 + 1 > v8)
  {
    DgnArray<CWIDAC>::reallocElts(a1, v9 + 1 - v8, 0);
    v11 = *(a1 + 8);
  }

  if (v11 <= v10)
  {
    if (v11 < v10)
    {
      v14 = v9 - v11 + 1;
      v15 = 24 * v11 + 8;
      do
      {
        DgnString::DgnString((*a1 + v15));
        v15 += 24;
        --v14;
      }

      while (v14);
    }
  }

  else if (v11 > v10)
  {
    v12 = v11;
    v13 = 24 * v11 - 16;
    do
    {
      --v12;
      DgnString::~DgnString((*a1 + v13));
      v13 -= 24;
    }

    while (v12 > v10);
  }

  *(a1 + 8) = v10;
  v16 = (*a1 + 24 * v9);
  if (v19)
  {
    v17 = v18;
  }

  else
  {
    v17 = &byte_262899963;
  }

  *v16 = a4;
  DgnString::operator=((v16 + 2), v17);
  *(a1 + 16) ^= a4;
  DgnString::~DgnString(&v18);
}

uint64_t DFileChecksums::find(DFileChecksums *this, const char *__s2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = 0;
  for (i = (*this + 16); ; i += 6)
  {
    v6 = *i ? *(i - 1) : &byte_262899963;
    if (!strcmp(v6, __s2))
    {
      break;
    }

    if (v2 == ++v4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v4;
}

char *DFileChecksums::getSubFileName(DFileChecksums *this, unsigned int a2)
{
  v2 = *this + 24 * a2;
  if (*(v2 + 16))
  {
    return *(v2 + 8);
  }

  else
  {
    return &byte_262899963;
  }
}

uint64_t writeObject<DFileChecksumBucket>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v10 = *(a2 + 8);
  result = writeObject(a1, &v10, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 8;
    do
    {
      v9 = *a2 + v8;
      writeObject(a1, (v9 - 8), a3);
      result = writeObject(a1, v9, a3);
      ++v7;
      v8 += 24;
    }

    while (v7 < *(a2 + 8));
  }

  return result;
}

void readObject<DFileChecksumBucket>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v16 = 0;
  readObject(a1, &v16, a3);
  v6 = v16;
  v7 = *(a2 + 12);
  if (v16 > v7)
  {
    DgnArray<CWIDAC>::reallocElts(a2, v16 - v7, 0);
  }

  v8 = *(a2 + 8);
  v9 = v8;
  if (v6 >= v8)
  {
    if (v6 > v8)
    {
      v11 = v6 - v8;
      v12 = 24 * v8 + 8;
      do
      {
        DgnString::DgnString((*a2 + v12));
        v12 += 24;
        --v11;
      }

      while (v11);
    }
  }

  else if (v8 > v6)
  {
    v10 = 24 * v8 - 16;
    do
    {
      --v9;
      DgnString::~DgnString((*a2 + v10));
      v10 -= 24;
    }

    while (v9 > v6);
  }

  *(a2 + 8) = v6;
  if (v6)
  {
    v13 = 0;
    v14 = 8;
    do
    {
      v15 = (*a2 + v14);
      readObject(a1, v15 - 2, a3);
      readObject(a1, v15, a3);
      ++v13;
      v14 += 24;
    }

    while (v13 < *(a2 + 8));
  }
}

uint64_t readObject(DgnStream *a1, DFileChecksums *a2, unsigned int *a3)
{
  readObject<DFileChecksumBucket>(a1, a2, a3);

  return readObject(a1, a2 + 4, a3);
}

void *DgnArray<DFileChecksumBucket>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 24 * v2 - 16;
    do
    {
      DgnString::~DgnString((*a1 + v3));
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

void DgnArray<DFileChecksumBucket>::copyArraySlice(uint64_t a1, void *a2, unsigned int a3, unsigned int a4)
{
  v8 = *(a1 + 8);
  if (v8 >= 1)
  {
    v9 = 24 * v8 - 16;
    do
    {
      DgnString::~DgnString((*a1 + v9));
      v9 -= 24;
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
    DgnArray<CWIDAC>::reallocElts(a1, a4 - v10, 0);
    v11 = *(a1 + 8);
  }

  v13 = a4;
  v12 = v11;
  do
  {
    DFileChecksumBucket::DFileChecksumBucket((*a1 + 24 * v12), (*a2 + 24 * a3));
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
      v15 = 24 * v12 - 16;
      do
      {
        --v14;
        DgnString::~DgnString((*a1 + v15));
        v15 -= 24;
      }

      while (v14 > a4);
    }

    goto LABEL_17;
  }

LABEL_14:
  v16 = a4 - v12;
  if (a4 > v12)
  {
    v17 = 24 * v12 + 8;
    do
    {
      DgnString::DgnString((*a1 + v17));
      v17 += 24;
      --v16;
    }

    while (v16);
  }

LABEL_17:
  *(a1 + 8) = a4;
}

unint64_t mrec_qsort_r<EncodeBuildAlphabetCountsUns16Cmp>(unint64_t result, unint64_t a2, int64_t a3)
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
            v12 = (v12 + v4);
            v14 = *v12;
            v15 = *v13;
            v16 = *(*v12 + 4);
            v17 = *(*v13 + 4);
            v18 = v16 > v17;
            if (v16 == v17)
            {
              v18 = *(v14 + 8) > *(v15 + 8);
            }

            if (!v18)
            {
              break;
            }

            if (v7)
            {
              v19 = 0;
              if (v6)
              {
                v20 = v12;
                do
                {
                  v21 = v13[v19];
                  v13[v19] = *v20;
                  *v20++ = v21;
                  ++v19;
                }

                while (a3 >> 3 != v19);
              }

              else
              {
                v22 = a3;
                do
                {
                  v23 = *(v13 + v19);
                  *(v13 + v19) = *(v11 + v19);
                  *(v11 + v19++) = v23;
                  --v22;
                }

                while (v22);
              }
            }

            else
            {
              *v13 = v14;
              *v12 = v15;
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

    return result;
  }

  v24 = a3 >> 3;
  while (2)
  {
    v25 = (result + (a2 >> 1) * a3);
    if (a2 == 7)
    {
      goto LABEL_26;
    }

    v29 = result + (a2 - 1) * a3;
    if (a2 < 0x29)
    {
      v31 = result;
      goto LABEL_111;
    }

    v30 = (a2 >> 3) * a3;
    v31 = (result + v30);
    v32 = result + 2 * v30;
    v33 = *result;
    v34 = *(result + v30);
    v35 = *(*result + 4);
    v36 = *(v34 + 4);
    if (v35 == v36)
    {
      if (*(v33 + 8) >= *(v34 + 8))
      {
        goto LABEL_34;
      }

LABEL_113:
      v92 = *v32;
      v93 = *(*v32 + 4);
      if (v36 == v93)
      {
        if (*(v34 + 8) < *(v92 + 8))
        {
          goto LABEL_124;
        }
      }

      else if (v36 <= v93)
      {
        goto LABEL_124;
      }

      if (v35 == v93)
      {
        v31 = (result + 2 * v30);
        if (*(v33 + 8) < *(v92 + 8))
        {
          goto LABEL_124;
        }
      }

      else
      {
        v31 = (result + 2 * v30);
        if (v35 <= v93)
        {
          goto LABEL_124;
        }
      }

      v31 = result;
      goto LABEL_124;
    }

    if (v35 <= v36)
    {
      goto LABEL_113;
    }

LABEL_34:
    v37 = *v32;
    v38 = *(*v32 + 4);
    v39 = v36 > v38;
    if (v36 == v38)
    {
      v39 = *(v34 + 8) > *(v37 + 8);
    }

    if (!v39)
    {
      if (v35 == v38)
      {
        v31 = result;
        if (*(v33 + 8) < *(v37 + 8))
        {
          goto LABEL_124;
        }
      }

      else
      {
        v31 = result;
        if (v35 <= v38)
        {
          goto LABEL_124;
        }
      }

      v31 = (result + 2 * v30);
    }

LABEL_124:
    v94 = &v25[-v30];
    v95 = &v25[v30];
    v96 = *&v25[-v30];
    v97 = *v25;
    v98 = *(v96 + 4);
    v99 = *(*v25 + 4);
    if (v98 == v99)
    {
      if (*(v96 + 8) >= *(v97 + 8))
      {
        goto LABEL_126;
      }

LABEL_133:
      v103 = *v95;
      v104 = *(*v95 + 4);
      if (v99 == v104)
      {
        if (*(v97 + 8) < *(v103 + 8))
        {
          goto LABEL_144;
        }
      }

      else if (v99 <= v104)
      {
        goto LABEL_144;
      }

      if (v98 == v104)
      {
        v25 += v30;
        if (*(v96 + 8) < *(v103 + 8))
        {
          goto LABEL_144;
        }
      }

      else
      {
        v25 += v30;
        if (v98 <= v104)
        {
          goto LABEL_144;
        }
      }

      v25 = v94;
      goto LABEL_144;
    }

    if (v98 <= v99)
    {
      goto LABEL_133;
    }

LABEL_126:
    v100 = *v95;
    v101 = *(*v95 + 4);
    v102 = v99 > v101;
    if (v99 == v101)
    {
      v102 = *(v97 + 8) > *(v100 + 8);
    }

    if (!v102)
    {
      if (v98 == v101)
      {
        v25 -= v30;
        if (*(v96 + 8) < *(v100 + 8))
        {
          goto LABEL_144;
        }
      }

      else
      {
        v25 -= v30;
        if (v98 <= v101)
        {
          goto LABEL_144;
        }
      }

      v25 = v95;
    }

LABEL_144:
    v105 = -v30;
    v91 = (v29 - 2 * v30);
    v106 = (v29 + v105);
    v107 = *v91;
    v108 = *v106;
    v109 = *(*v91 + 4);
    v110 = *(*v106 + 4);
    if (v109 == v110)
    {
      if (*(v107 + 8) >= *(v108 + 8))
      {
        goto LABEL_146;
      }

LABEL_150:
      v113 = *v29;
      v114 = *(*v29 + 4);
      if (v110 == v114)
      {
        if (*(v108 + 8) < *(v113 + 8))
        {
          goto LABEL_161;
        }
      }

      else if (v110 <= v114)
      {
        goto LABEL_161;
      }

      if (v109 == v114)
      {
        if (*(v107 + 8) < *(v113 + 8))
        {
          goto LABEL_111;
        }
      }

      else if (v109 <= v114)
      {
        goto LABEL_111;
      }

      goto LABEL_162;
    }

    if (v109 <= v110)
    {
      goto LABEL_150;
    }

LABEL_146:
    v111 = *v29;
    v112 = *(*v29 + 4);
    if (v110 == v112)
    {
      if (*(v108 + 8) > *(v111 + 8))
      {
        goto LABEL_161;
      }

      goto LABEL_154;
    }

    if (v110 > v112)
    {
LABEL_161:
      v91 = v106;
      goto LABEL_162;
    }

LABEL_154:
    if (v109 == v112)
    {
      if (*(v107 + 8) < *(v111 + 8))
      {
        goto LABEL_162;
      }

LABEL_111:
      v91 = (result + (a2 - 1) * a3);
      goto LABEL_162;
    }

    if (v109 > v112)
    {
      goto LABEL_111;
    }

LABEL_162:
    v115 = *v31;
    v116 = *v25;
    v117 = *(*v31 + 4);
    v118 = *(*v25 + 4);
    if (v117 == v118)
    {
      if (*(v115 + 8) >= *(v116 + 8))
      {
        goto LABEL_164;
      }

LABEL_171:
      v122 = *v91;
      v123 = *(*v91 + 4);
      if (v118 == v123)
      {
        if (*(v116 + 8) < *(v122 + 8))
        {
          goto LABEL_26;
        }
      }

      else if (v118 <= v123)
      {
        goto LABEL_26;
      }

      if (v117 == v123)
      {
        v25 = v91;
        if (*(v115 + 8) < *(v122 + 8))
        {
          goto LABEL_26;
        }
      }

      else
      {
        v25 = v91;
        if (v117 <= v123)
        {
          goto LABEL_26;
        }
      }

      v25 = v31;
      goto LABEL_26;
    }

    if (v117 <= v118)
    {
      goto LABEL_171;
    }

LABEL_164:
    v119 = *v91;
    v120 = *(*v91 + 4);
    v121 = v118 > v120;
    if (v118 == v120)
    {
      v121 = *(v116 + 8) > *(v119 + 8);
    }

    if (v121)
    {
      goto LABEL_26;
    }

    if (v117 == v120)
    {
      v25 = v31;
      if (*(v115 + 8) >= *(v119 + 8))
      {
        goto LABEL_179;
      }
    }

    else
    {
      v25 = v31;
      if (v117 > v120)
      {
LABEL_179:
        v25 = v91;
      }
    }

LABEL_26:
    if (v7)
    {
      if (v6)
      {
        v26 = result;
        v27 = a3 >> 3;
        do
        {
          v28 = *v26;
          *v26++ = *v25;
          *v25 = v28;
          v25 += 8;
          --v27;
        }

        while (v27);
      }

      else
      {
        v41 = a3;
        v42 = result;
        do
        {
          v43 = *v42;
          *v42++ = *v25;
          *v25++ = v43;
          --v41;
        }

        while (v41);
      }
    }

    else
    {
      v40 = *result;
      *result = *v25;
      *v25 = v40;
    }

    v44 = 0;
    v45 = result + a3;
    v46 = (result + (a2 - 1) * a3);
    v47 = v46;
    v48 = (result + a3);
    v49 = (result + a3);
    while (1)
    {
LABEL_44:
      if (v48 > v47)
      {
        goto LABEL_59;
      }

      v50 = *v48;
      v51 = *(*v48 + 4);
      v52 = *(*result + 4);
      v53 = v51 > v52;
      if (v51 != v52)
      {
        break;
      }

      v54 = *(v50 + 8);
      v55 = *(*result + 8);
      v53 = v54 > v55;
      if (v54 != v55)
      {
        break;
      }

      if (v7)
      {
        v56 = 0;
        if (v6)
        {
          do
          {
            v57 = v49[v56];
            v49[v56] = *&v48[8 * v56];
            *&v48[8 * v56++] = v57;
          }

          while (v24 != v56);
        }

        else
        {
          do
          {
            v58 = *(v49 + v56);
            *(v49 + v56) = v48[v56];
            v48[v56++] = v58;
          }

          while (a3 != v56);
        }
      }

      else
      {
        v71 = *v49;
        *v49 = v50;
        *v48 = v71;
      }

      v49 = (v49 + a3);
      v44 = 1;
LABEL_77:
      v48 += a3;
    }

    if (!v53)
    {
      goto LABEL_77;
    }

LABEL_59:
    while (v48 <= v47)
    {
      v59 = *v47;
      v60 = *(*v47 + 4);
      v61 = *(*result + 4);
      v62 = v60 > v61;
      if (v60 == v61 && (v63 = *(v59 + 8), v64 = *(*result + 8), v62 = v63 > v64, v63 == v64))
      {
        if (v7)
        {
          v65 = 0;
          if (v6)
          {
            do
            {
              v66 = v47[v65];
              v47[v65] = v46[v65];
              v46[v65++] = v66;
            }

            while (v24 != v65);
          }

          else
          {
            do
            {
              v67 = *(v47 + v65);
              *(v47 + v65) = *(v46 + v65);
              *(v46 + v65++) = v67;
            }

            while (a3 != v65);
          }
        }

        else
        {
          *v47 = *v46;
          *v46 = v59;
        }

        v46 = (v46 + v4);
        v44 = 1;
      }

      else if (!v62)
      {
        if (v7)
        {
          v68 = 0;
          if (v6)
          {
            do
            {
              v69 = *&v48[8 * v68];
              *&v48[8 * v68] = v47[v68];
              v47[v68++] = v69;
            }

            while (v24 != v68);
          }

          else
          {
            do
            {
              v70 = v48[v68];
              v48[v68] = *(v47 + v68);
              *(v47 + v68++) = v70;
            }

            while (a3 != v68);
          }
        }

        else
        {
          v72 = *v48;
          *v48 = v59;
          *v47 = v72;
        }

        v48 += a3;
        v47 = (v47 + v4);
        v44 = 1;
        goto LABEL_44;
      }

      v47 = (v47 + v4);
    }

    v73 = result + a2 * a3;
    if (v44)
    {
      v74 = v48 - v49;
      if ((v49 - result) >= v48 - v49)
      {
        v75 = v48 - v49;
      }

      else
      {
        v75 = v49 - result;
      }

      if (v75)
      {
        if (v6)
        {
          v76 = &v48[-v75];
          v77 = v75 >> 3;
          v78 = result;
          do
          {
            v79 = *v78;
            *v78++ = *v76;
            *v76++ = v79;
            --v77;
          }

          while (v77);
        }

        else
        {
          v80 = -v75;
          v81 = result;
          do
          {
            v82 = *v81;
            *v81++ = v48[v80];
            v48[v80] = v82;
            v83 = __CFADD__(v80++, 1);
          }

          while (!v83);
        }
      }

      v84 = v46 - v47;
      v85 = v73 - (v46 + a3);
      if (v46 - v47 < v85)
      {
        v85 = v46 - v47;
      }

      if (v85)
      {
        if (v6)
        {
          v86 = (v73 - v85);
          v87 = v85 >> 3;
          do
          {
            v88 = *v48;
            *v48 = *v86;
            v48 += 8;
            *v86++ = v88;
            --v87;
          }

          while (v87);
        }

        else
        {
          v89 = -v85;
          do
          {
            v90 = *v48;
            *v48++ = *(v73 + v89);
            *(v73 + v89) = v90;
            v83 = __CFADD__(v89++, 1);
          }

          while (!v83);
        }
      }

      if (v74 > a3)
      {
        result = mrec_qsort_r<EncodeBuildAlphabetCountsUns16Cmp>();
      }

      if (v84 > a3)
      {
        result = v73 - v84;
        a2 = v84 / a3;
        v6 = (((v73 - v84) | a3) & 7) == 0;
        if ((((v73 - v84) | a3) & 7) != 0)
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

        continue;
      }
    }

    else if ((a2 * a3) > a3)
    {
      v124 = result;
      do
      {
        if (v45 > result)
        {
          v125 = v124;
          v126 = v45;
          do
          {
            v127 = v126;
            v126 = (v126 + v4);
            v128 = *v126;
            v129 = *v127;
            v130 = *(*v126 + 4);
            v131 = *(*v127 + 4);
            v132 = v130 > v131;
            if (v130 == v131)
            {
              v132 = *(v128 + 8) > *(v129 + 8);
            }

            if (!v132)
            {
              break;
            }

            if (v7)
            {
              v133 = 0;
              if (v6)
              {
                v134 = v126;
                do
                {
                  v135 = v127[v133];
                  v127[v133] = *v134;
                  *v134++ = v135;
                  ++v133;
                }

                while (v24 != v133);
              }

              else
              {
                v136 = a3;
                do
                {
                  v137 = *(v127 + v133);
                  *(v127 + v133) = *(v125 + v133);
                  *(v125 + v133++) = v137;
                  --v136;
                }

                while (v136);
              }
            }

            else
            {
              *v127 = v128;
              *v126 = v129;
            }

            v125 += v4;
          }

          while (v126 > result);
        }

        v45 += a3;
        v124 += a3;
      }

      while (v45 < v73);
    }

    return result;
  }
}

void ForwardLatticeNodeIterator<WordLatticeLC>::next(void *a1)
{
  v2 = DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::dequeue((a1 + 3));
  v3 = *a1;
  v4 = *(*(*a1 + 80) + 24 * *(*(*a1 + 16) + 4 * v2) + 20);
  if (v4 != -2)
  {
    v5 = *(v3 + 128);
    do
    {
      v6 = *(*(v3 + 80) + 24 * *(v5 + 136 * v4 + 120));
      v7 = a1[1];
      v8 = *(v7 + 4 * v6) - 1;
      *(v7 + 4 * v6) = v8;
      if (!v8)
      {
        DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::enqueue((a1 + 3), v6);
        v3 = *a1;
        v5 = *(*a1 + 128);
      }

      v4 = *(v5 + 136 * v4 + 128);
    }

    while (v4 != -2);
  }
}

void WordLattice::~WordLattice(WordLattice *this)
{
  *this = &unk_287528E60;
  v2 = this + 224;
  DgnString::~DgnString((this + 272));
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnIArray<Utterance *>::~DgnIArray(v2);

  Lattice<WordLatticeLC>::~Lattice(this);
}

{
  WordLattice::~WordLattice(this);

  JUMPOUT(0x26672B1B0);
}

void *Lattice<WordLatticeLC>::~Lattice(void *a1)
{
  *a1 = &unk_2875239D8;
  v2 = (a1 + 16);
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 22));
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 20));
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 18));
  DgnArray<LatticeLink<WordLatticeLC>>::releaseAll(v2);
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 14));
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 12));
  DgnIArray<Utterance *>::~DgnIArray((a1 + 10));
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 8));
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 6));
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 4));
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 2));
  return a1;
}

void *DgnArray<LatticeLink<WordLatticeLC>>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 136 * v2 - 136;
    do
    {
      WordLatticeLC::~WordLatticeLC((*a1 + v3));
      v3 -= 136;
    }

    while (v3 != -136);
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

uint64_t ForwardLatticeNodeIterator<WordLatticeLC>::ForwardLatticeNodeIterator(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v3 = a1 + 24;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = 0;
    *(a1 + 8) = MemChunkAlloc(4 * v4, 0);
    *(a1 + 16) = v4;
    do
    {
      v6 = *(*a1 + 16);
      v7 = *(*a1 + 80);
      v8 = *(v7 + 24 * *(v6 + 4 * v5) + 8);
      *(*(a1 + 8) + 4 * v5) = v8;
      if (!v8)
      {
        DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::enqueue(v3, *(v7 + 24 * *(v6 + 4 * v5)));
      }

      ++v5;
    }

    while (v5 < *(a1 + 16));
  }

  return a1;
}

void sub_262769E24(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v1);
  _Unwind_Resume(a1);
}

void MrecInitModule_lexnet_prefilt(void)
{
  if (!gParDebugShowPrefiltererStats)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugShowPrefiltererStats", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugShowPrefiltererStats = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowPrefiltererStats);
  }

  if (!gParDebugPrefiltererProcessing)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugPrefiltererProcessing", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugPrefiltererProcessing = v3;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugPrefiltererProcessing);
  }

  if (!gParDebugShowPrefiltererBestActiveSeqs)
  {
    v4 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v4, "DebugShowPrefiltererBestActiveSeqs", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v5 = &unk_287527EA0;
    gParDebugShowPrefiltererBestActiveSeqs = v5;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowPrefiltererBestActiveSeqs);
  }

  if (!gParDebugShowPrefiltererEarliestTheory)
  {
    v6 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v6, "DebugShowPrefiltererEarliestTheory", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v7 = &unk_287527EA0;
    gParDebugShowPrefiltererEarliestTheory = v7;
    v8 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v8, &gParDebugShowPrefiltererEarliestTheory);
  }
}

void HmmDurationPenalties::initDurationsLookups(HmmDurationPenalties *this, double a2)
{
  *(this + 1) = a2;
  if (a2 <= 0.0)
  {
    *(this + 4) = 0;
    *(this + 3) = 0;
    *(this + 4) = 0;
  }

  else
  {
    *(this + 4) = 25;
    v3 = DgnExp(-25.5 / a2);
    v4.f64[0] = 1.0 - v3;
    v4.f64[1] = v3;
    __asm { FMOV            V0.2D, #1.0 }

    *(this + 24) = vdivq_f64(_Q0, v4);
    v10 = *(this + 4);
    v11 = (v10 + 1);
    v12 = *(this + 13);
    if (v11 > v12)
    {
      DgnPrimArray<unsigned long long>::reallocElts(this + 40, v11 - v12, 0);
    }

    *(this + 12) = v11;
    v13 = *(this + 17);
    if (v11 > v13)
    {
      DgnPrimArray<unsigned long long>::reallocElts(this + 56, v11 - v13, 0);
    }

    *(this + 16) = v11;
    if (v10 <= 0x7FFFFFFE)
    {
      v14 = v11 - 1;
      do
      {
        v15 = DgnExp(-(v14 + 0.5) / *(this + 1));
        *(*(this + 5) + 8 * v14) = 1.0 / v15;
        *(*(this + 7) + 8 * v14) = 1.0 / (1.0 - v15);
        v16 = v14-- + 1;
      }

      while (v16 > 1);
    }

    v17 = *(this + 21);
    if (v11 > v17)
    {
      DgnPrimArray<unsigned int>::reallocElts(this + 72, v11 - v17, 0);
    }

    *(this + 20) = v11;
    if (v10 <= 0x7FFFFFFE)
    {
      v18 = 0;
      v19 = *(this + 5);
      v20 = *(this + 9);
      do
      {
        v21 = v18;
        v22 = *(this + 12);
        if (v22 <= v21 + 1)
        {
          v22 = v21 + 1;
        }

        v18 = v22 - 1;
        while (v18 != v21)
        {
          v23 = v21 + 1;
          v24 = *(*(this + 7) + 8 * v21++);
          if (*(v19 + 8 * v10) >= v24)
          {
            v18 = v23 - 1;
            break;
          }
        }

        *(v20 + 4 * v10) = v18;
      }

      while (v10-- > 0);
    }
  }

  *this = 1;
}

uint64_t HmmDurationPenalties::sizeObject(uint64_t a1, int a2)
{
  v4 = sizeObject<unsigned long long>(a1 + 40, a2);
  v5 = sizeObject<unsigned long long>(a1 + 56, a2);
  v6 = sizeObject<unsigned int>(a1 + 72, a2);
  v7 = 24;
  if (a2 == 3)
  {
    v7 = 0;
  }

  return (v7 | (a2 != 3) | (4 * (a2 != 3))) + v4 + v5 + v6;
}

uint64_t PrefStats::sizeObject(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  else
  {
    return 72;
  }
}

double PrefStats::resetStats(PrefStats *this)
{
  *this = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  return result;
}

__n128 PrefStats::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 56);
  *(a1 + 56) = result;
  *(a1 + 72) = *(a2 + 72);
  return result;
}

int32x4_t PrefStats::operator-=(uint64_t a1, uint64_t a2)
{
  *a1 -= *a2;
  *(a1 + 8) = vsubq_s64(*(a1 + 8), *(a2 + 8));
  *(a1 + 24) = vsubq_s64(*(a1 + 24), *(a2 + 24));
  *(a1 + 40) = vsubq_s64(*(a1 + 40), *(a2 + 40));
  result = vsubq_s32(*(a1 + 56), *(a2 + 56));
  *(a1 + 56) = result;
  *(a1 + 72) -= *(a2 + 72);
  return result;
}

void LexTreeNetScorer::LexTreeNetScorer(LexTreeNetScorer *this)
{
  *(this + 64) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  v2 = this + 151340;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 220) = 0xF0000000FLL;
  *(this + 57) = 0;
  *(this + 9461) = 0u;
  v3 = this + 151376;
  *(this + 9469) = 0u;
  *(this + 9462) = 0u;
  *(this + 9463) = 0u;
  *(this + 9464) = 0u;
  *(this + 9465) = 0u;
  *(this + 9466) = 0u;
  ReturnListMgr::ReturnListMgr((this + 151520));
  *(this + 9488) = 0u;
  *(this + 9489) = 0u;
  *(this + 9486) = 0u;
  *(this + 9487) = 0u;
  *(this + 9484) = 0u;
  *(this + 9485) = 0u;
  *(this + 9482) = 0u;
  *(this + 9483) = 0u;
  PelStats::resetStats((this + 151672));
  *(v2 + 127) = 0;
  *(this + 9491) = 0u;
  *(this + 9492) = 0u;
  *(this + 9493) = 0u;
  *(this + 9494) = 0u;
  *(this + 37980) = 0;
  *(this + 9498) = 0u;
  *(this + 9499) = 0u;
  *(this + 9500) = 0u;
  *(this + 9501) = 0u;
  *(this + 9502) = 0u;
  *(this + 9503) = 0u;
  *(this + 9504) = 0u;
  *(this + 9505) = 0u;
  PelStats::resetStats((this + 151928));
  *(v2 + 191) = 0;
  *(this + 9507) = 0u;
  *(this + 9508) = 0u;
  *(this + 9509) = 0u;
  *(this + 9510) = 0u;
  *(this + 38044) = 0;
  v2[300] = 0;
  *(this + 18956) = 0;
  *(this + 151656) = 0u;
  *(v2 + 3) = -1;
  *(this + 9460) = 0u;
  v4 = *(v2 + 11);
  if (v4 == *(v2 + 12))
  {
    DgnPrimArray<unsigned int>::reallocElts(v3, 1, 1);
    v4 = *(v2 + 11);
  }

  v5 = *(v2 + 36);
  *(v5 + 4 * v4) = 0;
  v6 = *(v2 + 11) + 1;
  *(v2 + 11) = v6;
  for (i = 35; i != 2585; i += 10)
  {
    if (v6 == *(v2 + 12))
    {
      DgnPrimArray<unsigned int>::reallocElts(v3, 1, 1);
      v6 = *(v2 + 11);
      v5 = *(v2 + 36);
    }

    *(v5 + 4 * v6) = i & 0x1FFC;
    v6 = *(v2 + 11) + 1;
    *(v2 + 11) = v6;
  }

  *(v2 + 33) = 0;
  *(v2 + 140) = 0;
  v2[148] = 0;
  *(v2 + 156) = 0;
  *(this + 55) = 0;
  *(this + 56) = 0;
  *(this + 62) = 0;
  *(this + 30) = 0xFFFF00000000;
  *(this + 32) = 0x4E2000000000;
  *(this + 126) = -1;
  bzero(this + 264, 0x24E24uLL);
  *v2 = 20000;
  *(v2 + 2) = 0;
  *(this + 16) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
}

void sub_26276A544(_Unwind_Exception *a1)
{
  ReturnListMgr::~ReturnListMgr((v1 + v5));
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + v4);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 151456);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 151440);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v1 + 151424);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v1 + 151408);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 151392);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 184);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 168);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 152);
  HmmDurationPenalties::~HmmDurationPenalties(v2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 16);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1);
  _Unwind_Resume(a1);
}

void LexTreeNetScorer::~LexTreeNetScorer(LexTreeNetScorer *this)
{
  ReturnListMgr::~ReturnListMgr((this + 151520));
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 151504);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 151456);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 151440);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 151424);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 151408);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 151392);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 151376);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 184);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 168);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 152);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 136);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 120);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 104);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 16);

  DgnPrimArray<unsigned int>::~DgnPrimArray(this);
}

void LexTreeNetScorer::printSize(LexTreeNetScorer *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 600, &v381);
  if (v382)
  {
    v16 = v381;
  }

  else
  {
    v16 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &byte_262899963, a3, &byte_262899963, v16);
  v378 = a6;
  DgnString::~DgnString(&v381);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &byte_262899963);
  v21 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v21 = 12;
  }

  v22 = *(this + 2);
  v23 = *(this + 3);
  v24 = v21 + 4 * (v22 - 1) + 4;
  if (v22 <= 0)
  {
    v24 = v21;
  }

  if (v23 >= v22)
  {
    v25 = v24;
  }

  else
  {
    v25 = v21;
  }

  if (v23 >= v22)
  {
    v26 = v24 + 4 * (v23 - v22);
  }

  else
  {
    v26 = v21;
  }

  v27 = this;
  if (v23 >= v22)
  {
    v28 = 0;
  }

  else
  {
    v28 = 4 * v22;
  }

  v29 = (a3 + 1);
  v377 = a3;
  v30 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 601, &v381);
  if (v382)
  {
    v35 = v381;
  }

  else
  {
    v35 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v31, v32, v33, v34, v29, &byte_262899963, v30, v30, v35, v26, v25, v28);
  DgnString::~DgnString(&v381);
  *a4 += v26;
  *a5 += v25;
  *v378 += v28;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v36 = 12;
  }

  else
  {
    v36 = 16;
  }

  v37 = v27[6];
  v38 = v27[7];
  if (v38 >= v37)
  {
    v39 = 0;
    if (v37 > 0)
    {
      v36 += 4 * (v37 - 1) + 4;
    }

    v40 = v36 + 4 * (v38 - v37);
  }

  else
  {
    v39 = 4 * v37;
    v40 = v36;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 603, &v381);
  if (v382)
  {
    v45 = v381;
  }

  else
  {
    v45 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v41, v42, v43, v44, v29, &byte_262899963, v30, v30, v45, v40, v36, v39);
  DgnString::~DgnString(&v381);
  *a4 += v40;
  *a5 += v36;
  *v378 += v39;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 605, &v381);
  if (v382)
  {
    v50 = v381;
  }

  else
  {
    v50 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v46, v47, v48, v49, v29, &byte_262899963, v30, v30, v50, 1, 1, 0);
  DgnString::~DgnString(&v381);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 607, &v381);
  if (v382)
  {
    v55 = v381;
  }

  else
  {
    v55 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v51, v52, v53, v54, v29, &byte_262899963, v30, v30, v55, 1, 1, 0);
  DgnString::~DgnString(&v381);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 609, &v381);
  if (v382)
  {
    v60 = v381;
  }

  else
  {
    v60 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v56, v57, v58, v59, v29, &byte_262899963, v30, v30, v60, 8, 8, 0);
  DgnString::~DgnString(&v381);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 610, &v381);
  if (v382)
  {
    v65 = v381;
  }

  else
  {
    v65 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v61, v62, v63, v64, v29, &byte_262899963, v30, v30, v65, 4, 4, 0);
  DgnString::~DgnString(&v381);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 612, &v381);
  if (v382)
  {
    v70 = v381;
  }

  else
  {
    v70 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v66, v67, v68, v69, v29, &byte_262899963, v30, v30, v70, 4, 4, 0);
  DgnString::~DgnString(&v381);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 614, &v381);
  if (v382)
  {
    v75 = v381;
  }

  else
  {
    v75 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v71, v72, v73, v74, v29, &byte_262899963, v30, v30, v75, 4, 4, 0);
  DgnString::~DgnString(&v381);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 616, &v381);
  if (v382)
  {
    v80 = v381;
  }

  else
  {
    v80 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v76, v77, v78, v79, v29, &byte_262899963, v30, v30, v80, 4, 4, 0);
  DgnString::~DgnString(&v381);
  *a4 += 4;
  *a5 += 4;
  v81 = HmmDurationPenalties::sizeObject((v27 + 16), 0);
  v82 = HmmDurationPenalties::sizeObject((v27 + 16), 1);
  v83 = HmmDurationPenalties::sizeObject((v27 + 16), 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 617, &v381);
  if (v382)
  {
    v88 = v381;
  }

  else
  {
    v88 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v84, v85, v86, v87, v29, &byte_262899963, v30, v30, v88, v81, v82, v83);
  DgnString::~DgnString(&v381);
  *a4 += v81;
  *a5 += v82;
  *v378 += v83;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v89 = 12;
  }

  else
  {
    v89 = 16;
  }

  v90 = v27[40];
  v91 = v27[41];
  if (v91 >= v90)
  {
    v92 = 0;
    if (v90 > 0)
    {
      v89 += 6 * (v90 - 1) + 6;
    }

    v93 = v89 + 6 * (v91 - v90);
  }

  else
  {
    v92 = 6 * v90;
    v93 = v89;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 619, &v381);
  if (v382)
  {
    v98 = v381;
  }

  else
  {
    v98 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v94, v95, v96, v97, v29, &byte_262899963, v30, v30, v98, v93, v89, v92);
  DgnString::~DgnString(&v381);
  *a4 += v93;
  *a5 += v89;
  *v378 += v92;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v99 = 12;
  }

  else
  {
    v99 = 16;
  }

  v100 = v27[44];
  v101 = v27[45];
  if (v101 >= v100)
  {
    v102 = 0;
    if (v100 > 0)
    {
      v99 += 2 * (v100 - 1) + 2;
    }

    v103 = v99 + 2 * (v101 - v100);
  }

  else
  {
    v102 = 2 * v100;
    v103 = v99;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 620, &v381);
  if (v382)
  {
    v108 = v381;
  }

  else
  {
    v108 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v104, v105, v106, v107, v29, &byte_262899963, v30, v30, v108, v103, v99, v102);
  DgnString::~DgnString(&v381);
  *a4 += v103;
  *a5 += v99;
  *v378 += v102;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v109 = 12;
  }

  else
  {
    v109 = 16;
  }

  v110 = v27[48];
  v111 = v27[49];
  if (v111 >= v110)
  {
    v112 = 0;
    if (v110 > 0)
    {
      v109 += 4 * (v110 - 1) + 4;
    }

    v113 = v109 + 4 * (v111 - v110);
  }

  else
  {
    v112 = 4 * v110;
    v113 = v109;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 622, &v381);
  if (v382)
  {
    v118 = v381;
  }

  else
  {
    v118 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v114, v115, v116, v117, v29, &byte_262899963, v30, v30, v118, v113, v109, v112);
  DgnString::~DgnString(&v381);
  *a4 += v113;
  *a5 += v109;
  *v378 += v112;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 624, &v381);
  if (v382)
  {
    v123 = v381;
  }

  else
  {
    v123 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v119, v120, v121, v122, v29, &byte_262899963, v30, v30, v123, 4, 4, 0);
  DgnString::~DgnString(&v381);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 626, &v381);
  if (v382)
  {
    v128 = v381;
  }

  else
  {
    v128 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v124, v125, v126, v127, v29, &byte_262899963, v30, v30, v128, 4, 4, 0);
  DgnString::~DgnString(&v381);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 628, &v381);
  if (v382)
  {
    v133 = v381;
  }

  else
  {
    v133 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v129, v130, v131, v132, v29, &byte_262899963, v30, v30, v133, 4, 4, 0);
  DgnString::~DgnString(&v381);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 630, &v381);
  if (v382)
  {
    v138 = v381;
  }

  else
  {
    v138 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v134, v135, v136, v137, v29, &byte_262899963, v30, v30, v138, 4, 4, 0);
  DgnString::~DgnString(&v381);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 631, &v381);
  if (v382)
  {
    v143 = v381;
  }

  else
  {
    v143 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v139, v140, v141, v142, v29, &byte_262899963, v30, v30, v143, 4, 4, 0);
  DgnString::~DgnString(&v381);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 632, &v381);
  if (v382)
  {
    v148 = v381;
  }

  else
  {
    v148 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v144, v145, v146, v147, v29, &byte_262899963, v30, v30, v148, 4, 4, 0);
  DgnString::~DgnString(&v381);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 634, &v381);
  if (v382)
  {
    v153 = v381;
  }

  else
  {
    v153 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v149, v150, v151, v152, v29, &byte_262899963, v30, v30, v153, 4, 4, 0);
  DgnString::~DgnString(&v381);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 636, &v381);
  if (v382)
  {
    v158 = v381;
  }

  else
  {
    v158 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v154, v155, v156, v157, v29, &byte_262899963, v30, v30, v158, 4, 4, 0);
  DgnString::~DgnString(&v381);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 637, &v381);
  if (v382)
  {
    v163 = v381;
  }

  else
  {
    v163 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v159, v160, v161, v162, v29, &byte_262899963, v30, v30, v163, 4, 4, 0);
  DgnString::~DgnString(&v381);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 639, &v381);
  if (v382)
  {
    v168 = v381;
  }

  else
  {
    v168 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v164, v165, v166, v167, v29, &byte_262899963, v30, v30, v168, 4, 4, 0);
  DgnString::~DgnString(&v381);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 641, &v381);
  if (v382)
  {
    v173 = v381;
  }

  else
  {
    v173 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v169, v170, v171, v172, v29, &byte_262899963, v30, v30, v173, 4, 4, 0);
  DgnString::~DgnString(&v381);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 642, &v381);
  if (v382)
  {
    v178 = v381;
  }

  else
  {
    v178 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v174, v175, v176, v177, v29, &byte_262899963, v30, v30, v178, 4, 4, 0);
  DgnString::~DgnString(&v381);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 650, &v381);
  if (v382)
  {
    v183 = v381;
  }

  else
  {
    v183 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v179, v180, v181, v182, v29, &byte_262899963, v30, v30, v183, 2, 2, 0);
  DgnString::~DgnString(&v381);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 652, &v381);
  if (v382)
  {
    v188 = v381;
  }

  else
  {
    v188 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v184, v185, v186, v187, v29, &byte_262899963, v30, v30, v188, 4, 4, 0);
  DgnString::~DgnString(&v381);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 654, &v381);
  if (v382)
  {
    v193 = v381;
  }

  else
  {
    v193 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v189, v190, v191, v192, v29, &byte_262899963, v30, v30, v193, 4, 4, 0);
  DgnString::~DgnString(&v381);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 673, &v381);
  if (v382)
  {
    v198 = v381;
  }

  else
  {
    v198 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v194, v195, v196, v197, v29, &byte_262899963, v30, v30, v198, 151072, 151072, 0);
  DgnString::~DgnString(&v381);
  *a4 += 151072;
  *a5 += 151072;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 675, &v381);
  if (v382)
  {
    v203 = v381;
  }

  else
  {
    v203 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v199, v200, v201, v202, v29, &byte_262899963, v30, v30, v203, 4, 4, 0);
  DgnString::~DgnString(&v381);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 677, &v381);
  if (v382)
  {
    v208 = v381;
  }

  else
  {
    v208 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v204, v205, v206, v207, v29, &byte_262899963, v30, v30, v208, 4, 4, 0);
  DgnString::~DgnString(&v381);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 678, &v381);
  if (v382)
  {
    v213 = v381;
  }

  else
  {
    v213 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v209, v210, v211, v212, v29, &byte_262899963, v30, v30, v213, 4, 4, 0);
  DgnString::~DgnString(&v381);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 679, &v381);
  if (v382)
  {
    v218 = v381;
  }

  else
  {
    v218 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v214, v215, v216, v217, v29, &byte_262899963, v30, v30, v218, 4, 4, 0);
  DgnString::~DgnString(&v381);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 680, &v381);
  if (v382)
  {
    v223 = v381;
  }

  else
  {
    v223 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v219, v220, v221, v222, v29, &byte_262899963, v30, v30, v223, 4, 4, 0);
  DgnString::~DgnString(&v381);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v224 = 4;
  }

  else
  {
    v224 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 681, &v381);
  if (v382)
  {
    v229 = v381;
  }

  else
  {
    v229 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v225, v226, v227, v228, v29, &byte_262899963, v30, v30, v229, v224, v224, 0);
  DgnString::~DgnString(&v381);
  *a4 += v224;
  *a5 += v224;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v230 = 4;
  }

  else
  {
    v230 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 682, &v381);
  if (v382)
  {
    v235 = v381;
  }

  else
  {
    v235 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v231, v232, v233, v234, v29, &byte_262899963, v30, v30, v235, v230, v230, 0);
  DgnString::~DgnString(&v381);
  *a4 += v230;
  *a5 += v230;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v236 = 12;
  }

  else
  {
    v236 = 16;
  }

  v237 = v27[37846];
  v238 = v27[37847];
  if (v238 >= v237)
  {
    v239 = 0;
    if (v237 > 0)
    {
      v236 += 4 * (v237 - 1) + 4;
    }

    v240 = v236 + 4 * (v238 - v237);
  }

  else
  {
    v239 = 4 * v237;
    v240 = v236;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 684, &v381);
  if (v382)
  {
    v245 = v381;
  }

  else
  {
    v245 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v241, v242, v243, v244, v29, &byte_262899963, v30, v30, v245, v240, v236, v239);
  DgnString::~DgnString(&v381);
  *a4 += v240;
  *a5 += v236;
  *v378 += v239;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v246 = 12;
  }

  else
  {
    v246 = 16;
  }

  v247 = v27[37850];
  v248 = v27[37851];
  if (v248 >= v247)
  {
    v249 = 0;
    if (v247 > 0)
    {
      v246 += 4 * (v247 - 1) + 4;
    }

    v250 = v246 + 4 * (v248 - v247);
  }

  else
  {
    v249 = 4 * v247;
    v250 = v246;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 686, &v381);
  if (v382)
  {
    v255 = v381;
  }

  else
  {
    v255 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v251, v252, v253, v254, v29, &byte_262899963, v30, v30, v255, v250, v246, v249);
  DgnString::~DgnString(&v381);
  *a4 += v250;
  *a5 += v246;
  *v378 += v249;
  v256 = sizeObject<DgnPrimArray<unsigned char>>((v27 + 37852), 0);
  v257 = sizeObject<DgnPrimArray<unsigned char>>((v27 + 37852), 1);
  v381 = 0;
  v382 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v381);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 688, &v381);
  if (v382)
  {
    v262 = v381;
  }

  else
  {
    v262 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v258, v259, v260, v261, v29, &byte_262899963, v30, v30, v262, v256, v257, 0);
  DgnString::~DgnString(&v381);
  *a4 += v256;
  *a5 += v257;
  v263 = sizeObject<DgnPrimArray<unsigned int>>((v27 + 37856), 0);
  v264 = sizeObject<DgnPrimArray<unsigned int>>((v27 + 37856), 1);
  v381 = 0;
  v382 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v381);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 690, &v381);
  if (v382)
  {
    v269 = v381;
  }

  else
  {
    v269 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v265, v266, v267, v268, v29, &byte_262899963, v30, v30, v269, v263, v264, 0);
  DgnString::~DgnString(&v381);
  *a4 += v263;
  *a5 += v264;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v270 = 12;
  }

  else
  {
    v270 = 16;
  }

  v271 = v27[37862];
  v272 = v27[37863];
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

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 691, &v381);
  if (v382)
  {
    v279 = v381;
  }

  else
  {
    v279 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v275, v276, v277, v278, v29, &byte_262899963, v30, v30, v279, v274, v270, v273);
  DgnString::~DgnString(&v381);
  *a4 += v274;
  *a5 += v270;
  *v378 += v273;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v280 = 12;
  }

  else
  {
    v280 = 16;
  }

  v281 = v27[37866];
  v282 = v27[37867];
  if (v282 >= v281)
  {
    v283 = 0;
    if (v281 > 0)
    {
      v280 += 4 * (v281 - 1) + 4;
    }

    v284 = v280 + 4 * (v282 - v281);
  }

  else
  {
    v283 = 4 * v281;
    v284 = v280;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 693, &v381);
  if (v382)
  {
    v289 = v381;
  }

  else
  {
    v289 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v285, v286, v287, v288, v29, &byte_262899963, v30, v30, v289, v284, v280, v283);
  DgnString::~DgnString(&v381);
  *a4 += v284;
  *a5 += v280;
  *v378 += v283;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 695, &v381);
  if (v382)
  {
    v294 = v381;
  }

  else
  {
    v294 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v290, v291, v292, v293, v29, &byte_262899963, v30, v30, v294, 4, 4, 0);
  DgnString::~DgnString(&v381);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v295 = 4;
  }

  else
  {
    v295 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 697, &v381);
  if (v382)
  {
    v300 = v381;
  }

  else
  {
    v300 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v296, v297, v298, v299, v29, &byte_262899963, v30, v30, v300, v295, v295, 0);
  DgnString::~DgnString(&v381);
  *a4 += v295;
  *a5 += v295;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 699, &v381);
  if (v382)
  {
    v305 = v381;
  }

  else
  {
    v305 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v301, v302, v303, v304, v29, &byte_262899963, v30, v30, v305, 1, 1, 0);
  DgnString::~DgnString(&v381);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v306 = 4;
  }

  else
  {
    v306 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 701, &v381);
  if (v382)
  {
    v311 = v381;
  }

  else
  {
    v311 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v307, v308, v309, v310, v29, &byte_262899963, v30, v30, v311, v306, v306, 0);
  DgnString::~DgnString(&v381);
  *a4 += v306;
  *a5 += v306;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v312 = 12;
  }

  else
  {
    v312 = 16;
  }

  v313 = v27[37878];
  v314 = v27[37879];
  if (v314 >= v313)
  {
    v315 = 0;
    if (v313 > 0)
    {
      v312 += 4 * (v313 - 1) + 4;
    }

    v316 = v312 + 4 * (v314 - v313);
  }

  else
  {
    v315 = 4 * v313;
    v316 = v312;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 703, &v381);
  if (v382)
  {
    v321 = v381;
  }

  else
  {
    v321 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v317, v318, v319, v320, v29, &byte_262899963, v30, v30, v321, v316, v312, v315);
  DgnString::~DgnString(&v381);
  *a4 += v316;
  *a5 += v312;
  *v378 += v315;
  v381 = 0;
  v379 = 0;
  v380 = 0;
  ReturnListMgr::printSize((v27 + 37880), 0xFFFFFFFFLL, v29, &v381, &v380, &v379);
  *a4 += v381;
  *a5 += v380;
  *v378 += v379;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 706, &v381);
  if (v382)
  {
    v326 = v381;
  }

  else
  {
    v326 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v322, v323, v324, v325, v29, &byte_262899963, v30, v30, v326, 1, 1, 0);
  DgnString::~DgnString(&v381);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v327 = 4;
  }

  else
  {
    v327 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 707, &v381);
  if (v382)
  {
    v332 = v381;
  }

  else
  {
    v332 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v328, v329, v330, v331, v29, &byte_262899963, v30, v30, v332, v327, v327, 0);
  DgnString::~DgnString(&v381);
  *a4 += v327;
  *a5 += v327;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v333 = 4;
  }

  else
  {
    v333 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 708, &v381);
  if (v382)
  {
    v338 = v381;
  }

  else
  {
    v338 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v334, v335, v336, v337, v29, &byte_262899963, v30, v30, v338, v333, v333, 0);
  DgnString::~DgnString(&v381);
  *a4 += v333;
  *a5 += v333;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v339 = 4;
  }

  else
  {
    v339 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 709, &v381);
  if (v382)
  {
    v344 = v381;
  }

  else
  {
    v344 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v340, v341, v342, v343, v29, &byte_262899963, v30, v30, v344, v339, v339, 0);
  DgnString::~DgnString(&v381);
  *a4 += v339;
  *a5 += v339;
  v345 = PelStats::sizeObject((v27 + 37918), 0);
  v346 = PelStats::sizeObject((v27 + 37918), 1);
  v347 = PelStats::sizeObject((v27 + 37918), 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 723, &v381);
  if (v382)
  {
    v352 = v381;
  }

  else
  {
    v352 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v348, v349, v350, v351, v29, &byte_262899963, v30, v30, v352, v345, v346, v347);
  DgnString::~DgnString(&v381);
  *a4 += v345;
  *a5 += v346;
  *v378 += v347;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 724, &v381);
  if (v382)
  {
    v357 = v381;
  }

  else
  {
    v357 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v353, v354, v355, v356, v29, &byte_262899963, v30, v30, v357, 72, 72, 0);
  DgnString::~DgnString(&v381);
  *a4 += 72;
  *a5 += 72;
  v358 = PelStats::sizeObject((v27 + 37982), 0);
  v359 = PelStats::sizeObject((v27 + 37982), 1);
  v360 = PelStats::sizeObject((v27 + 37982), 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 726, &v381);
  if (v382)
  {
    v365 = v381;
  }

  else
  {
    v365 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v361, v362, v363, v364, v29, &byte_262899963, v30, v30, v365, v358, v359, v360);
  DgnString::~DgnString(&v381);
  *a4 += v358;
  *a5 += v359;
  *v378 += v360;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 728, &v381);
  if (v382)
  {
    v370 = v381;
  }

  else
  {
    v370 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v366, v367, v368, v369, v29, &byte_262899963, v30, v30, v370, 72, 72, 0);
  DgnString::~DgnString(&v381);
  *a4 += 72;
  *a5 += 72;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lexnet.cpp", 729, &v381);
  if (v382)
  {
    v375 = v381;
  }

  else
  {
    v375 = &byte_262899963;
  }

  v376 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v371, v372, v373, v374, v377, &byte_262899963, (35 - v377), (35 - v377), v375, *a4, *a5, *v378);
  DgnString::~DgnString(&v381);
}