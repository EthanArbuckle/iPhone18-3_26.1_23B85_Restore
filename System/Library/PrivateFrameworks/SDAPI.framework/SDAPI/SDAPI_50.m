BOOL LinkSegment::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) == *(a2 + 20) && *(a1 + 16) == *(a2 + 16) && *(a1 + 18) == *(a2 + 18) && *(a1 + 24) == *(a2 + 24) && *(a1 + 12) == *(a2 + 12))
  {
    v2 = 0;
    while (*(a1 + v2) == *(a2 + v2))
    {
      v2 += 2;
      if (v2 == 10)
      {
        if (*(a1 + 10) != *(a2 + 10))
        {
          return 0;
        }

        return *(a1 + 11) == *(a2 + 11);
      }
    }
  }

  return 0;
}

uint64_t sizeObject<LatticeLink<WordLatticeLC>>(uint64_t a1, int a2)
{
  memset(v12, 0, sizeof(v12));
  v13 = 1879048192;
  v14 = 0;
  v15 = -1;
  v16[1] = 0x3FFF;
  v17 = xmmword_26286CC40;
  v4 = sizeObject(v16, 2);
  v5 = sizeObject(&v12[8], 2);
  if (a2 == 3)
  {
    return 0;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v6 = 12;
  }

  else
  {
    v6 = 16;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v7 = v5;
    v8 = *(a1 + 8);
    if (v8 >= 1)
    {
      v9 = v8 + 1;
      v10 = 136 * v8 - 136;
      do
      {
        v6 += sizeObject(*a1 + v10, a2) + 20;
        --v9;
        v10 -= 136;
      }

      while (v9 > 1);
    }

    if (!a2)
    {
      v6 += (v4 + v7 + 56) * (*(a1 + 12) - *(a1 + 8));
    }
  }

  return v6;
}

unint64_t DgnArray<LinkSegment>::copyArraySlice(unint64_t result, void *a2, unsigned int a3, unsigned int a4)
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
    result = DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(result, a4 - v8, 0);
    v9 = *(v7 + 8);
  }

  v11 = a4;
  v10 = v9;
  do
  {
    v12 = *a2 + 28 * a3;
    v13 = *v7 + 28 * v10;
    v14 = *v12;
    *(v13 + 8) = *(v12 + 8);
    *v13 = v14;
    *(v13 + 10) = *(v12 + 10);
    *(v13 + 11) = *(v12 + 11);
    *(v13 + 12) = *(v12 + 12);
    *(v13 + 16) = *(v12 + 16);
    *(v13 + 20) = *(v12 + 20);
    v10 = *(v7 + 8) + 1;
    *(v7 + 8) = v10;
    ++a3;
    --v11;
  }

  while (v11);
LABEL_6:
  if (v10 < a4)
  {
    v15 = a4 - v10;
    v16 = 28 * v10;
    do
    {
      v17 = *v7 + v16;
      *v17 = -1;
      *(v17 + 8) = 0xFFFF;
      *(v17 + 20) = -16;
      v16 += 28;
      --v15;
    }

    while (v15);
  }

  *(v7 + 8) = a4;
  return result;
}

uint64_t DgnIOwnArray<DgnPriorityQueue<LatticePath> *>::destructAt(uint64_t result, int a2, int a3)
{
  if (a3 + a2 > a2)
  {
    v3 = result;
    v4 = a2;
    v5 = a3 + a2 - 1;
    do
    {
      result = DgnDelete<DgnPriorityQueue<LatticePath>>(*(*v3 + 8 * v5));
      *(*v3 + 8 * v5) = 0;
    }

    while (v5-- > v4);
  }

  return result;
}

uint64_t DgnHeap<LatticePath>::insert(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = v4;
  if (v4 == *(a1 + 12))
  {
    DgnPrimArray<unsigned long long>::reallocElts(a1, 1, 1);
    v5 = *(a1 + 8);
  }

  *(*a1 + 8 * v5) = 0;
  *(a1 + 8) = v5 + 1;
  *(*a1 + 8 * v4) = a2;

  return DgnHeap<LatticePath>::heapifyUp(a1, v4);
}

uint64_t DgnHeap<LatticePath>::heapifyUp(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8 * a2);
  if (a2 < 1)
  {
LABEL_9:
    v5 = a2;
  }

  else
  {
    v4 = *(v3 + 8);
    v5 = a2;
    do
    {
      a2 = v5;
      v5 = ((v5 + 1) >> 1) - 1;
      v2 = *a1;
      v6 = *(*a1 + 8 * v5);
      v7 = *(v6 + 8);
      if (v4 == v7)
      {
        if (*v3 >= *v6)
        {
          goto LABEL_9;
        }
      }

      else if (v4 >= v7)
      {
        goto LABEL_9;
      }

      *(v2 + 8 * a2) = v6;
    }

    while (a2 > 2);
    v2 = *a1;
    a2 = v5;
  }

  *(v2 + 8 * v5) = v3;
  return a2;
}

void DgnPriorityQueue<LatticePath>::~DgnPriorityQueue(uint64_t a1)
{
  for (; *(a1 + 64); *(a1 + 8) = Min)
  {
    Min = DgnHeap<LatticePath>::extractMin(a1 + 56);
    *Min = *(a1 + 8);
  }

  DgnIArray<Utterance *>::~DgnIArray(a1 + 56);

  DgnPool::~DgnPool(a1);
}

uint64_t DgnHeap<LatticePath>::extractMin(uint64_t a1)
{
  v1 = *(a1 + 8) - 1;
  v2 = **a1;
  if (v1 < 1)
  {
    *(a1 + 8) = 0;
  }

  else
  {
    **a1 = *(*a1 + 8 * v1);
    *(a1 + 8) = v1;
    DgnHeap<LatticePath>::heapifyDown(a1, 0);
  }

  return v2;
}

uint64_t DgnHeap<LatticePath>::heapifyDown(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = (2 * a2) | 1u;
    if (v3 >= v2)
    {
      goto LABEL_7;
    }

    v4 = *(*a1 + 8 * v3);
    v5 = *(*a1 + 8 * a2);
    v6 = *(v4 + 8);
    v7 = *(v5 + 8);
    if (v6 != v7)
    {
      if (v6 < v7)
      {
        goto LABEL_8;
      }

LABEL_7:
      v3 = a2;
      goto LABEL_8;
    }

    if (*v4 >= *v5)
    {
      goto LABEL_7;
    }

LABEL_8:
    v8 = (2 * a2 + 2);
    if (v8 >= v2)
    {
      goto LABEL_13;
    }

    v9 = *(*a1 + 8 * v8);
    v10 = *(*a1 + 8 * v3);
    v11 = *(v9 + 8);
    v12 = *(v10 + 8);
    if (v11 != v12)
    {
      if (v11 < v12)
      {
        goto LABEL_14;
      }

LABEL_13:
      v8 = v3;
      goto LABEL_14;
    }

    if (*v9 >= *v10)
    {
      goto LABEL_13;
    }

LABEL_14:
    if (v8 == a2)
    {
      return a2;
    }

    v13 = *(*a1 + 8 * a2);
    *(*a1 + 8 * a2) = *(*a1 + 8 * v8);
    *(*a1 + 8 * v8) = v13;
    a2 = v8;
  }
}

void *DgnIOwnArray<DgnPriorityQueue<LatticePath> *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<DgnPriorityQueue<LatticePath>>(*(*a1 + v3));
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

uint64_t BackwardLatticeNodeIterator<WordLatticeLC>::BackwardLatticeNodeIterator(uint64_t a1, uint64_t a2)
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
      v8 = *(v7 + 24 * *(v6 + 4 * v5) + 12);
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

void sub_26282EC1C(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v1);
  _Unwind_Resume(a1);
}

uint64_t Hash<StateIdPair,StateIdPair,StateIdPair,ParseTokenRange>::Hash(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_2875241A8;
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
  v7 = gShadowDiagnosticShowIdealizedObjectSizes;
  v8 = sizeObject(&v12, 2);
  v9 = sizeObject(&v13, 2);
  if (v7)
  {
    v10 = 8;
  }

  else
  {
    v10 = 12;
  }

  *(a1 + 24) = 32;
  *(a1 + 28) = v10 + v8 + v9;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  return a1;
}

void sub_26282ED44(_Unwind_Exception *a1)
{
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void Hash<StateIdPair,StateIdPair,StateIdPair,ParseTokenRange>::~Hash(uint64_t a1)
{
  Hash<StateIdPair,StateIdPair,StateIdPair,ParseTokenRange>::~Hash(a1);

  JUMPOUT(0x26672B1B0);
}

uint64_t Hash<StateIdPair,StateIdPair,StateIdPair,ParseTokenRange>::~Hash(uint64_t a1)
{
  *a1 = &unk_2875241A8;
  if (*(a1 + 8))
  {
    Hash<StateIdPair,StateIdPair,StateIdPair,ParseTokenRange>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  return MrecInitModule_sdpres_sdapi();
}

uint64_t Hash<StateIdPair,StateIdPair,StateIdPair,ParseTokenRange>::removeAll(uint64_t result)
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
            v7(v5 + 12);
          }

          v8 = *(v1 + 104);
          if (v8)
          {
            v8(v5 + 20);
          }

          MrecInitModule_sdpres_sdapi();
          result = MrecInitModule_sdpres_sdapi();
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

__n128 HmmNet::HmmNet(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  *a1 = &unk_287523C08;
  *(a1 + 8) = a2;
  *(a1 + 16) = *a3;
  *(a1 + 20) = *(a3 + 4);
  result = *(a3 + 8);
  *(a1 + 24) = result;
  *(a1 + 40) = a4;
  *(a1 + 44) = a5;
  *(a1 + 48) = a6;
  *(a1 + 52) = 2;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x4E204E2000000000;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 112) = 0;
  *(a1 + 114) = 0;
  return result;
}

uint64_t HmmNet::sizeofOutPorts(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    result = 8;
  }

  else
  {
    result = 12;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v4 = *(a1 + 80);
    v5 = 2;
    if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
    {
      v5 = 3;
    }

    result += v4 << v5;
  }

  return result;
}

uint64_t HmmNet::sizeObject(_DWORD *a1, uint64_t a2)
{
  v4 = sizeObject((a1 + 4), a2);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v5 = 4;
  }

  else
  {
    v5 = 8;
  }

  active = sizeObject<ActiveWord *>((a1 + 14), a2);
  v7 = (*(*a1 + 288))(a1, a2);
  if (a2 == 3)
  {
    v5 = 0;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v9 = 8;
    if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
    {
      v9 = 12;
    }

    v10 = a1[24];
    if (v10 >= 1)
    {
      v11 = (v10 - 1) + v9 + 1;
    }

    else
    {
      v11 = v9;
    }

    v8 = 24;
    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v9 = v11;
    }
  }

  return ((a2 != 3) | (2 * (a2 != 3))) + v4 + active + v5 + v9 + v8 + v7;
}

uint64_t HmmNet::unpackNonAcoustic(HmmNet *this)
{
  (*(*this + 136))(this, 1);
  v5 = 0;
  v6 = 0;
  (*(*this + 240))(this, &v6, &v5);
  v2 = HmmNet::newInPort(this);
  (*(*this + 160))(this, v2, v6);
  v3 = *(this + 9);
  if (*(this + 13))
  {
    *v3 = v5;
  }

  else
  {
    PredStruct::addPred(*v3 + 16, v5);
  }

  return v2;
}

uint64_t HmmNet::unpackEmbeddedFst(HmmNet *this)
{
  (*(*this + 136))(this, 1);
  v5 = 0;
  v6 = 0;
  (*(*this + 248))(this, &v6, &v5);
  v2 = HmmNet::newInPort(this);
  (*(*this + 160))(this, v2, v6);
  v3 = *(this + 9);
  if (*(this + 13))
  {
    *v3 = v5;
  }

  else
  {
    PredStruct::addPred(*v3 + 16, v5);
  }

  return v2;
}

uint64_t HmmNet::unpackSilence(HmmNet *this)
{
  (*(*this + 136))(this, 1);
  v6 = 0;
  v7 = 0;
  v8 = 16842752;
  v5 = 0;
  (*(*this + 208))(this, &v7, 1, &v6, &v5, 2);
  v2 = HmmNet::newInPort(this);
  (*(*this + 160))(this, v2, v6);
  v3 = *(this + 9);
  if (*(this + 13))
  {
    *v3 = v5;
  }

  else
  {
    PredStruct::addPred(*v3 + 16, v5);
  }

  return v2;
}

uint64_t HmmNet::unpackNoCoart(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 136))(a1, 2);
  v6 = (*(*a1 + 216))(a1);
  v10 = 0;
  v11 = 0;
  (*(*a1 + 208))(a1, a2, a3, &v11, &v10, 2);
  (*(*a1 + 120))(a1, v10, v6);
  v7 = HmmNet::newInPort(a1);
  (*(*a1 + 160))(a1, v7, v11);
  v8 = *(a1 + 72);
  if (*(a1 + 52))
  {
    *(v8 + 8) = v10;
  }

  else
  {
    PredStruct::addPred(*(v8 + 8) + 16, v10);
  }

  return v7;
}

uint64_t HmmNet::unpackInPort(HmmNet *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = 0;
  (*(*a1 + 208))(a1, a2, 1, &v8, &v7, 3);
  v5 = HmmNet::newInPort(a1);
  (*(*a1 + 160))(a1, v5, v8);
  (*(*a1 + 120))(a1, v7, a3);
  return v5;
}

uint64_t HmmNet::passScoresToOutPorts1(uint64_t this)
{
  v1 = this;
  v2 = *(this + 80);
  if (v2 < 1)
  {
    v4 = 20000;
  }

  else
  {
    v3 = v2 - 1;
    v4 = 20000;
    do
    {
      v5 = *(*(v1 + 72) + 8 * v3);
      v8 = 0;
      this = ExternalOutPort::seedOutPort<false>(v5, &v8);
      if (this < v4)
      {
        v4 = this;
      }

      v6 = v3-- + 1;
    }

    while (v6 > 1);
  }

  *(v1 + 108) = v4;
  v7 = *(v1 + 8);
  if (v4 < *(v7 + 246))
  {
    *(v7 + 246) = v4;
  }

  return this;
}

void HmmNet::~HmmNet(HmmNet *this)
{
  *this = &unk_287523C08;
  if (!*(this + 11))
  {
    HmmNet::deleteInPorts(this);
  }

  if (!*(this + 13))
  {
    HmmNet::deleteOutPorts(this);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 88);
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 72);
  DgnIArray<Utterance *>::~DgnIArray(this + 56);
}

uint64_t HmmNet::deleteInPorts(uint64_t this)
{
  v1 = *(this + 64);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = v1 - 1;
    do
    {
      v4 = *(v2 + 56);
      this = *(v4 + 8 * v3);
      if (this)
      {
        this = MemChunkFree(this, 0);
        v4 = *(v2 + 56);
      }

      *(v4 + 8 * v3) = 0;
      v5 = v3-- + 1;
    }

    while (v5 > 1);
  }

  return this;
}

void *HmmNet::deleteOutPorts(HmmNet *this)
{
  *(this + 13) = 2;
  v2 = *(this + 20);
  if (v2 >= 1)
  {
    v3 = v2 - 1;
    do
    {
      PredStruct::~PredStruct((*(*(this + 9) + 8 * v3) + 16));
      v4 = v3-- + 1;
    }

    while (v4 > 1);
  }

  result = **(this + 9);
  if (result)
  {
    result = MemChunkFree(result, 0);
  }

  v6 = *(this + 20);
  if (v6 >= 1)
  {
    v7 = v6 - 1;
    do
    {
      *(*(this + 9) + 8 * v7) = 0;
      v8 = v7-- + 1;
    }

    while (v8 > 1);
  }

  return result;
}

void *HmmNet::initEndIndices(HmmNet *this)
{
  v2 = *(this + 10);
  if (v2 < 2)
  {
    v3 = 1;
  }

  else if (v2 - 3 >= 2)
  {
    if (v2 != 2)
    {
      v3 = 0;
      v4 = (this + 88);
      goto LABEL_11;
    }

    v3 = 2;
  }

  else
  {
    v3 = ***(*(this + 1) + 16) - 2;
  }

  v4 = (this + 88);
  if (v3 && !*(this + 24))
  {
    *(this + 11) = MemChunkAlloc(v3, 0);
    *(this + 24) = v3;
  }

LABEL_11:
  v5 = *v4;

  return memset(v5, 255, v3);
}

void *HmmNet::configureOutPortsInternal(HmmNet *this, unsigned int a2)
{
  result = HmmNet::initEndIndices(this);
  *(this + 13) = 1;
  v5 = *(this + 20);
  if (a2 && !v5)
  {
    result = MemChunkAlloc(8 * a2, 0);
    *(this + 9) = result;
    *(this + 20) = a2;
    v5 = a2;
  }

  if (v5 >= 1)
  {
    v6 = v5 - 1;
    do
    {
      *(*(this + 9) + 8 * v6) = 0;
      v7 = v6-- + 1;
    }

    while (v7 > 1);
  }

  return result;
}

uint64_t *HmmNet::configureOutPortsExternal(HmmNet *this, unsigned int a2)
{
  HmmNet::initEndIndices(this);
  *(this + 13) = 0;
  if (a2 && !*(this + 20))
  {
    *(this + 9) = MemChunkAlloc(8 * a2, 0);
    *(this + 20) = a2;
  }

  result = MemChunkAlloc(32 * a2, 0);
  if (a2 >= 1)
  {
    v5 = a2 - 1;
    v6 = &result[4 * a2 - 4];
    do
    {
      *v6 = 0x100000001;
      *(v6 + 8) = 1310740000;
      *(v6 + 16) = 0;
      *(*(this + 9) + 8 * v5) = v6;
      *(v6 + 24) = 0;
      v7 = v5-- + 1;
      v6 -= 32;
    }

    while (v7 > 1);
  }

  return result;
}

uint64_t VocGroupInfo::loadVocGroupInfo(VocGroupInfo *this, char **a2)
{
  v4 = DFile::subFileExists(a2, 0x69u);
  if (v4)
  {
    v25 = 0;
    v7 = OpenAndReadMrecHeader(a2, 0x69u, 0, "MRVGI!? ", &v25 + 1, &v25);
    v24 = 0;
    if (HIDWORD(v25) == 19 && v25 == 8)
    {
      MrecHeaderCheckLatestVersionIfShared(a2, "MRVGI!? ", 19, 8, 24, 9, v5, v6);
      v22 = 0;
      v23 = 0;
      v20 = 0;
      v21 = 0;
      v18 = 0;
      v19 = 0;
      v16 = 0;
      v17 = 0;
      readObject<unsigned short>(v7, &v22, &v24);
      readObject<DgnString>(v7, &v20, &v24);
      readObject<unsigned short>(v7, &v18, &v24);
      readObject<DFileChecksums>(v7, &v16, &v24);
      DgnString::DgnString(v15);
      readObject(v7, v15, &v24);
      if (v23 >= 2)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/vgroupi.cpp", 106, "voc/vgroupi", 1, "%u %u", v10, v11, v23);
      }

      DFileChecksums::operator=(this, v16 + 24 * *v22);
      DgnString::~DgnString(v15);
    }

    else
    {
      if (*(a2 + 6))
      {
        v9 = a2[2];
      }

      else
      {
        v9 = &byte_262899963;
      }

      MrecHeaderCheckVersions(v9, "MRVGI!? ", HIDWORD(v25), v25, 0x18u, 9u);
      MrecHeaderCheckLatestVersionIfShared(a2, "MRVGI!? ", SHIDWORD(v25), v25, 24, 9, v12, v13);
      v22 = 0;
      v23 = 0;
      v20 = 0;
      v21 = 0;
      v18 = 0;
      v19 = 0;
      v16 = 0;
      v17 = 0;
      readObject(v7, this, &v24);
    }

    readObjectChecksumAndVerify(v7, v24);
    DgnDelete<DgnStream>(v7);
    DgnArray<DFileChecksums>::releaseAll(&v16);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v18);
    DgnArray<DgnString>::releaseAll(&v20);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v22);
  }

  return v4;
}

void sub_26282FC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  va_copy(va3, va2);
  v12 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  DgnArray<DFileChecksums>::releaseAll(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnArray<DgnString>::releaseAll(va2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va3);
  _Unwind_Resume(a1);
}

void readObject<DFileChecksums>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v15 = 0;
  readObject(a1, &v15, a3);
  v6 = v15;
  v7 = *(a2 + 12);
  if (v15 > v7)
  {
    DgnArray<CWIDAC>::reallocElts(a2, v15 - v7, 0);
  }

  v8 = *(a2 + 8);
  v9 = v8;
  if (v6 >= v8)
  {
    if (v6 > v8)
    {
      v11 = v6 - v8;
      v12 = 24 * v8;
      do
      {
        DFileChecksums::DFileChecksums((*a2 + v12));
        v12 += 24;
        --v11;
      }

      while (v11);
    }
  }

  else if (v8 > v6)
  {
    v10 = 24 * v8 - 24;
    do
    {
      --v9;
      DFileChecksums::~DFileChecksums((*a2 + v10));
      v10 -= 24;
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
      v13 += 24;
    }

    while (v14 < *(a2 + 8));
  }
}

void (***VocGroupInfo::saveVocGroupInfo(VocGroupInfo *this, DFile *a2))(void)
{
  v3 = OpenAndWriteMrecHeader(a2, 0x69u, 0, "MRVGI!? ", 24, 9);
  v5 = 0;
  writeObject(v3, this, &v5);
  writeObjectChecksum(v3, &v5);
  return DgnDelete<DgnStream>(v3);
}

void *DgnArray<DFileChecksums>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 24 * v2 - 24;
    do
    {
      DFileChecksums::~DFileChecksums((*a1 + v3));
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

uint64_t MrecInitLibrary_voc(void)
{
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_rulemgr_voc();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_trgrm_voc();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_voc_voc();
  MrecInitModule_sdpres_sdapi();

  return MrecInitModule_sdpres_sdapi();
}

uint64_t MrecInitLibrarySet_throughVoc(void)
{
  MrecInitLibrarySet_throughLm();

  return MrecInitLibrary_voc();
}

void NodeNet::~NodeNet(NodeNet *this)
{
  *this = &unk_287523810;
  DgnIOwnArray<NodeNetNode *>::releaseAll(this + 176);
  DgnIOwnArray<NodeNetNode *>::releaseAll(this + 160);

  AcousticNet::~AcousticNet(this);
}

{
  NodeNet::~NodeNet(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t NodeNet::sizeObject(_DWORD *a1, uint64_t a2)
{
  v4 = HmmNet::sizeObject(a1, a2);
  v5 = sizeObject<NodeNetNode *>((a1 + 40), a2) + v4;
  return v5 + sizeObject<NodeNetNode *>((a1 + 44), a2);
}

uint64_t sizeObject<NodeNetNode *>(uint64_t a1, uint64_t a2)
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
          v9 += (*(*v10 + 16))(v10, a2);
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

uint64_t NodeNet::getBestScore(uint64_t a1, void *a2)
{
  v2 = *(a1 + 168);
  if (v2 < 1)
  {
    return 20000;
  }

  v3 = v2 - 1;
  v4 = 20000;
  do
  {
    v5 = *(*(a1 + 160) + 8 * v3);
    v6 = *(v5 + 18);
    if (v4 > v6)
    {
      *a2 = v5 + 8;
      v4 = v6;
    }

    v7 = v3-- + 1;
  }

  while (v7 > 1);
  return v4;
}

uint64_t NodeNet::addNodesIndirect(NodeNet *this, int a2)
{
  v2 = *(this + 42);
  if (a2 >= 1)
  {
    v4 = 0;
    v5 = a2 + 1;
    do
    {
      v6 = (*(*this + 336))(this, 0);
      v7 = *(this + 42);
      if (v7 == *(this + 43))
      {
        DgnPrimArray<unsigned long long>::reallocElts(this + 160, 1, 1);
        v7 = *(this + 42);
      }

      *(*(this + 20) + 8 * v7) = v6;
      *(this + 42) = v7 + 1;
      if (v4)
      {
        if (v6)
        {
          v8 = v6 + 8;
        }

        else
        {
          v8 = 0;
        }

        (*(*this + 120))(this, v8, v4);
      }

      if (v6)
      {
        v4 = v6 + 8;
      }

      else
      {
        v4 = 0;
      }

      --v5;
    }

    while (v5 > 1);
  }

  return v2;
}

uint64_t NodeNet::preallocEndSequences(uint64_t this, unsigned int a2, int a3)
{
  v3 = this;
  v4 = *(*(*(*(this + 8) + 16) + 16) + a2) * a3;
  v5 = *(this + 172);
  v6 = v4 + *(this + 168);
  if (v6 > v5)
  {
    this = DgnPrimArray<unsigned long long>::reallocElts(this + 160, v6 - v5, 0);
  }

  if (v3[12])
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  v8 = v3[47];
  v9 = v3[46] + v7 + 1;
  if (v9 > v8)
  {

    return DgnPrimArray<unsigned long long>::reallocElts((v3 + 44), v9 - v8, 0);
  }

  return this;
}

uint64_t NodeNet::unpackEpsilonNodes(NodeNet *this, unsigned int a2, int a3)
{
  v5 = a3 - 1;
  if (a3 >= 1)
  {
    v6 = a3 + 1;
    do
    {
      (*(*this + 128))(this);
      --v6;
    }

    while (v6 > 1);
  }

  v7 = *(this + 46);
  v8 = v7 - 1;
  v9 = *(*(this + 22) + 8 * (v7 - 1));
  if (v9)
  {
    v10 = v9 + 8;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(*(this + 20) + 8 * a2);
  if (v11)
  {
    v12 = v11 + 8;
  }

  else
  {
    v12 = 0;
  }

  (*(*this + 120))(this, v10, v12);
  v13 = *(*(this + 22) + 8 * v8);
  *(v13 + 8) = 0x100000001;
  *(v13 + 16) = 1310740000;
  *(v13 + 30) = -1;
  *(v13 + 20) = 0;
  *(v13 + 28) = 0;
  v14 = v7 - 2;
  (*(*this + 328))(this, *(*(this + 22) + 8 * (v7 - 2)), *(*(this + 20) + 8 * a2));
  v15 = *(*(this + 22) + 8 * (v7 - 2));
  if (v15)
  {
    v16 = v15 + 8;
  }

  else
  {
    v16 = 0;
  }

  v17 = a2 - 1;
  v18 = *(*(this + 20) + 8 * (a2 - 1));
  if (v18)
  {
    v19 = v18 + 8;
  }

  else
  {
    v19 = 0;
  }

  (*(*this + 120))(this, v16, v19);
  v20 = *(this + 22);
  v21 = *(v20 + 8 * v8);
  if (v21)
  {
    v22 = v21 + 8;
  }

  else
  {
    v22 = 0;
  }

  v23 = *(v20 + 8 * v14);
  if (v23)
  {
    v24 = v23 + 8;
  }

  else
  {
    v24 = 0;
  }

  result = (*(*this + 120))(this, v22, v24);
  if (v5 >= 2)
  {
    v26 = 0;
    v27 = *(this + 12);
    v28 = a2 - 2;
    v29 = a2;
    v30 = v7 - 3;
    v31 = 1 - v5;
    do
    {
      v32 = *(*(this + 22) + 8 * (v30 + v26));
      (*(*this + 328))(this, v32, *(*(this + 20) + 8 * (v17 + v26)));
      v33 = *(*(this + 20) + 8 * (v29 + v26));
      if (v33)
      {
        v34 = v33 + 8;
      }

      else
      {
        v34 = 0;
      }

      if (v32)
      {
        v35 = v32 + 8;
      }

      else
      {
        v35 = 0;
      }

      (*(*this + 120))(this, v34, v35);
      v36 = *(*(this + 20) + 8 * (v28 + v26));
      if (v36)
      {
        v37 = v36 + 8;
      }

      else
      {
        v37 = 0;
      }

      result = (*(*this + 120))(this, v35, v37);
      if (v27 == 2)
      {
        v38 = *(*(this + 22) + 8 * (v14 + v26));
        if (v38)
        {
          v39 = v38 + 8;
        }

        else
        {
          v39 = 0;
        }

        result = (*(*this + 120))(this, v39, v35);
      }

      --v26;
    }

    while (v31 != v26);
  }

  return result;
}

uint64_t NodeNet::fillTraceNodes(uint64_t result, int a2, int a3, uint64_t a4, int a5, __int16 a6)
{
  if (a5 >= 1)
  {
    v7 = result;
    v8 = 0;
    v9 = *(result + 8);
    v10 = *(v9 + 4);
    v11 = a3 - 1;
    if (v10 == 1)
    {
      v11 = 0;
    }

    v21 = *(v9 + 16);
    v12 = a5;
    do
    {
      v13 = a4 + 12 * v8;
      v14 = *(v13 + 4);
      v15 = *(v21 + 16);
      v16 = *(v15 + v14);
      if (*(v15 + v14))
      {
        v17 = 0;
        v18 = -v11;
        do
        {
          v19 = *(*(v7 + 160) + 8 * (a2 + v18));
          result = (*(*v19 + 32))(v19, (a6 + 4 * v8), v13, v17++);
          v18 -= v10;
        }

        while (v16 > v17);
        v11 = -v18;
      }

      ++v8;
    }

    while (v8 != v12);
  }

  return result;
}

uint64_t NodeNet::unpackSequence(NodeNet *this, uint64_t a2, int a3, void *a4, void *a5, __int16 a6)
{
  v9 = *(this + 1);
  v10 = *(v9 + 16);
  v11 = a3;
  v12 = 0;
  if (a3 >= 1)
  {
    v13 = (a2 + 4);
    v14 = a3;
    do
    {
      v15 = *v13;
      v13 += 6;
      v12 += *(*(v10 + 16) + v15);
      --v14;
    }

    while (v14);
  }

  v16 = *(v9 + 4);
  NodeNet::addNodesIndirect(this, v12);
  v17 = *(this + 42);
  v18 = *(this + 1);
  v19 = v18 + 299008;
  v20 = *(v18 + 302836);
  if (v12 <= v20)
  {
    *(v18 + 302832) = v12;
    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
    DgnPrimArray<unsigned long long>::reallocElts(v18 + 302824, v12 - v20, 0);
    *(v19 + 3824) = v12;
  }

  v21 = 0;
  if (v16 == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = v12 - 1;
  }

  v23 = ~v22 + v17;
  do
  {
    *(*(*(this + 1) + 302824) + 8 * v21++) = *(*(this + 20) + 8 * v23) + 20;
    v23 -= v16;
  }

  while (v12 != v21);
LABEL_12:
  v24 = v17 - 1;
  v25 = *(this + 1);
  v26 = *(v25 + 302824);
  v40 = 0;
  if (a3 < 1)
  {
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v27 = a2;
    do
    {
      PicMgr::getNodeDataPtrs(v10, v26, *(*(this + 1) + 32), v27, &v40 + 1, &v40);
      v26 += *(*(v10 + 16) + v27[2]);
      v27 += 6;
      --v11;
    }

    while (v11);
    v28 = v40;
    v29 = HIDWORD(v40);
    v25 = *(this + 1);
  }

  v30 = v25 + 299008;
  *(v30 + 3660) += v29;
  *(v30 + 3664) += v28;
  result = (*(*this + 40))(this);
  if (result)
  {
    result = NodeNet::fillTraceNodes(this, v17 - 1, v12, a2, a3, a6);
  }

  if (v12 >= 2 && *(this + 12))
  {
    result = NodeNet::unpackEpsilonNodes(this, v17 - 1, v12);
    v32 = this + 176;
    v24 = *(this + 46) - 1;
  }

  else
  {
    v32 = this + 160;
  }

  v33 = *(*v32 + 8 * v24);
  if (v33)
  {
    v34 = v33 + 8;
  }

  else
  {
    v34 = 0;
  }

  *a4 = v34;
  v35 = *(*(this + 20) + 8 * (v17 - v12));
  if (v35)
  {
    v36 = v35 + 8;
  }

  else
  {
    v36 = 0;
  }

  *a5 = v36;
  return result;
}

uint64_t NodeNet::unpackEndSilence(uint64_t **this)
{
  NodeNet::addNodesIndirect(this, 1);
  v2 = this[20][*(this + 42) - 1];
  *(v2 + 20) = 0;
  *(v2 + 28) = 0;
  if (((*this)[5])(this))
  {
    NodeNet::fillTraceNodes(this, *(this + 42) - 1, 1, (this[1] + 37848), 1, 0);
  }

  v3 = (*(this + 42) - 1);
  v4 = this[20][v3];
  if (v4)
  {
    v5 = v4 + 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = this[9];
  if (*(this + 13))
  {
    *v6 = v5;
  }

  else
  {
    PredStruct::addPred(*v6 + 16, v5);
    v3 = (*(this + 42) - 1);
  }

  v7 = this[20];
  v8 = v7[v3];
  if (v8)
  {
    v9 = (v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  this[18] = v9;
  v10 = v7[v3];
  if (v10)
  {
    return v10 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t NodeNet::unpackOne(uint64_t a1, unsigned __int16 *a2, void *a3, void *a4, __int16 a5)
{
  v9 = *(a1 + 8);
  v10 = *(v9 + 16);
  v11 = *(v9 + 4);
  v12 = *(*(v10 + 16) + a2[2]);
  NodeNet::addNodesIndirect(a1, v12);
  v13 = *(a1 + 168);
  v14 = *(a1 + 8);
  v15 = v14 + 299008;
  v16 = *(v14 + 302836);
  if (v12 > v16)
  {
    DgnPrimArray<unsigned long long>::reallocElts(v14 + 302824, v12 - v16, 0);
  }

  v17 = v13 - 1;
  *(v15 + 3824) = v12;
  if (v12)
  {
    v18 = 0;
    if (v11 == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = v12 - 1;
    }

    v20 = ~v19 + v13;
    do
    {
      *(*(*(a1 + 8) + 302824) + v18) = *(*(a1 + 160) + 8 * v20) + 20;
      v18 += 8;
      v20 -= v11;
    }

    while (8 * v12 != v18);
  }

  v30 = 0;
  PicMgr::getNodeDataPtrs(v10, *(*(a1 + 8) + 302824), *(*(a1 + 8) + 32), a2, &v30 + 1, &v30);
  v21 = *a1;
  v22 = *(a1 + 8) + 299008;
  *(v22 + 3660) = *(*(a1 + 8) + 302668) + HIDWORD(v30);
  *(v22 + 3664) += v30;
  result = (*(v21 + 40))(a1);
  if (result)
  {
    result = NodeNet::fillTraceNodes(a1, v13 - 1, v12, a2, 1, a5);
  }

  if (v12 >= 2 && *(a1 + 48))
  {
    result = NodeNet::unpackEpsilonNodes(a1, v13 - 1, v12);
    v24 = (a1 + 176);
    v17 = *(a1 + 184) - 1;
  }

  else
  {
    v24 = (a1 + 160);
  }

  v25 = *(*v24 + 8 * v17);
  if (v25)
  {
    v26 = v25 + 8;
  }

  else
  {
    v26 = 0;
  }

  *a3 = v26;
  v27 = *(*(a1 + 160) + 8 * (v13 - v12));
  if (v27)
  {
    v28 = v27 + 8;
  }

  else
  {
    v28 = 0;
  }

  *a4 = v28;
  return result;
}

uint64_t NodeNet::unpackOneFromPicNodes(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, void *a5, void *a6, __int16 a7)
{
  v12 = *(a1 + 8);
  v13 = *(v12 + 16);
  v14 = *(v12 + 4);
  NodeNet::addNodesIndirect(a1, a3);
  v15 = *(a1 + 168);
  v16 = v15 - 1;
  v17 = *(a1 + 8);
  v18 = v17 + 299008;
  v19 = *(v17 + 302836);
  if (a3 <= v19)
  {
    *(v17 + 302832) = a3;
    if (!a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    DgnPrimArray<unsigned long long>::reallocElts(v17 + 302824, a3 - v19, 0);
    *(v18 + 3824) = a3;
  }

  v20 = 0;
  if (v14 == 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = a3 - 1;
  }

  v22 = ~v21 + v15;
  do
  {
    *(*(*(a1 + 8) + 302824) + 8 * v20++) = *(*(a1 + 160) + 8 * v22) + 20;
    v22 -= v14;
  }

  while (a3 != v20);
LABEL_9:
  PicMgr::getNodeDataPtrsFromPicNodes(v13, *(*(a1 + 8) + 302824), *(*(a1 + 8) + 32), a2, a3);
  result = (*(*a1 + 40))(a1);
  if (result)
  {
    result = NodeNet::fillTraceNodes(a1, v15 - 1, a3, a4, 1, a7);
  }

  if (a3 >= 2 && *(a1 + 48))
  {
    result = NodeNet::unpackEpsilonNodes(a1, v15 - 1, a3);
    v24 = (a1 + 176);
    v16 = *(a1 + 184) - 1;
  }

  else
  {
    v24 = (a1 + 160);
  }

  v25 = *(*v24 + 8 * v16);
  if (v25)
  {
    v26 = v25 + 8;
  }

  else
  {
    v26 = 0;
  }

  *a5 = v26;
  v27 = *(*(a1 + 160) + 8 * (v15 - a3));
  if (v27)
  {
    v28 = v27 + 8;
  }

  else
  {
    v28 = 0;
  }

  *a6 = v28;
  return result;
}

uint64_t NodeNet::addArc(NodeNet *this, const Node *a2, Node *a3)
{
  v3 = a3 - 8;
  if (!a3)
  {
    v3 = 0;
  }

  v4 = a2 - 8;
  if (!a2)
  {
    v4 = 0;
  }

  v5 = v4 + 8;
  if (a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return PredStruct::addPred((v3 + 32), v6);
}

uint64_t NodeNet::addEpsilonNode(NodeNet *this)
{
  v2 = (*(*this + 336))(this, 1);
  v3 = *(this + 46);
  if (v3 == *(this + 47))
  {
    DgnPrimArray<unsigned long long>::reallocElts(this + 176, 1, 1);
    v3 = *(this + 46);
  }

  *(*(this + 22) + 8 * v3) = v2;
  *(this + 46) = v3 + 1;
  if (v2)
  {
    return v2 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t NodeNet::attachInPort(NodeNet *this, unsigned int a2, Node *a3)
{
  v3 = a3 - 8;
  if (!a3)
  {
    v3 = 0;
  }

  return PredStruct::addPred((v3 + 32), *(*(this + 7) + 8 * a2));
}

uint64_t TraceNodeNet::attachInPort(TraceNodeNet *this, unsigned int a2, Node *a3)
{
  v3 = a3 - 8;
  *(a3 + 74) = 1;
  if (!a3)
  {
    v3 = 0;
  }

  return PredStruct::addPred((v3 + 32), *(*(this + 7) + 8 * a2));
}

uint64_t NodeNet::seedEpsilonNodes(uint64_t this)
{
  v1 = *(this + 184);
  if (v1 >= 1)
  {
    do
    {
      v2 = *(*(this + 176) + 8 * (v1 - 1));
      v3 = *(v2 + 40);
      if (v3 == 1)
      {
        v4 = *(v2 + 32);
      }

      else
      {
        v5 = *(v2 + 32);
        v6 = (v3 - 1);
        v4 = *(v5 + 8 * v6);
        v7 = *(v4 + 8);
        v8 = v5 - 8;
        do
        {
          if (v7 >= *(*(v8 + 8 * v6) + 8))
          {
            v4 = *(v8 + 8 * v6);
            v7 = *(v4 + 8);
          }

          --v6;
        }

        while (v6);
      }

      v9 = *(v4 + 8);
      if (v9 == 20000)
      {
        v10 = v2 + 8;
      }

      else
      {
        if (*(v2 + 30) != -1 && *(v2 + 42))
        {
          v11 = *(v2 + 24);
          if (v11 < 0)
          {
            v12 = *(v2 + 29) + v11;
          }

          else
          {
            v12 = *(v2 + 29);
          }

          v9 += v12 + *(this + 116);
        }

        v10 = v2 + 8;
        if (v9 != 20000)
        {
          *(v2 + 8) = *v4;
          v14 = *(v4 + 4);
          v13 = v9 + (*(v2 + 20) >> 8);
          *(v2 + 12) = v14 + *(v2 + 26);
          goto LABEL_19;
        }
      }

      LOWORD(v13) = 20000;
      *(v2 + 18) = 20000;
LABEL_19:
      *(v10 + 8) = v13;
    }

    while (v1-- > 1);
  }

  return this;
}

uint64_t NodeNet::scoreNetInternal(NodeNet *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = *(this + 26);
  *(this + 26) = 0;
  v40 = 0;
  v13 = *(this + 42);
  if (v12)
  {
    if (v13)
    {
      v14 = 0;
      do
      {
        *(this + 26) += Node::thresholdNode((*(*(this + 20) + v14) + 8), a3);
        v14 += 8;
      }

      while (8 * v13 != v14);
    }
  }

  else if (v13)
  {
    v15 = *(this + 20);
    v16 = *(this + 42);
    do
    {
      v17 = *v15++;
      *(v17 + 16) = 1310740000;
      --v16;
    }

    while (v16);
  }

  if (*(this + 10) == 1)
  {
    v18 = 0;
    v19 = 20000;
  }

  else
  {
    (*(*this + 344))(this, a2);
    v20 = **(this + 20);
    v21 = *(v20 + 40);
    if (v21 == 1)
    {
      v22 = *(v20 + 32);
    }

    else
    {
      v23 = *(v20 + 32);
      v24 = (v21 - 1);
      v22 = *(v23 + 8 * v24);
      v25 = *(v22 + 8);
      v26 = v23 - 8;
      do
      {
        if (v25 >= *(*(v26 + 8 * v24) + 8))
        {
          v22 = *(v26 + 8 * v24);
          v25 = *(v22 + 8);
        }

        --v24;
      }

      while (v24);
    }

    *(this + 113) = 0;
    LODWORD(v38) = 0;
    HIDWORD(v38) = a6;
    v19 = (*(*this + 352))(this, v20, v22, a3, a4, a5, a2, this + 113, v38, &v40, this);
    v18 = 1;
  }

  if (v18 < v13)
  {
    v27 = v18;
    do
    {
      v28 = *(*(this + 20) + 8 * v27);
      v29 = *(v28 + 40);
      if (v29 == 1)
      {
        v30 = *(v28 + 32);
      }

      else
      {
        v31 = *(v28 + 32);
        v32 = (v29 - 1);
        v30 = *(v31 + 8 * v32);
        v33 = *(v30 + 8);
        v34 = v31 - 8;
        do
        {
          if (v33 >= *(*(v34 + 8 * v32) + 8))
          {
            v30 = *(v34 + 8 * v32);
            v33 = *(v30 + 8);
          }

          --v32;
        }

        while (v32);
      }

      v39 = 0;
      if (*(this + 10) == 1)
      {
        v35 = this;
      }

      else
      {
        v35 = 0;
      }

      v36 = (*(*this + 352))(this, v28, v30, a3, a4, a5, a2, &v39, *(this + 29), &v40, v35);
      if (v36 < v19)
      {
        v19 = v36;
      }

      ++v27;
    }

    while (v27 != v13);
  }

  *(this + 55) = v19;
  return HmmNet::passScoresToOutPorts1(this);
}

uint64_t NodeNet::thresholdNetInternal(uint64_t this, uint64_t a2, int a3)
{
  v4 = this;
  *(this + 152) = *(**(this + 160) + 18) <= a3;
  if (*(this + 40) != 1)
  {
    this = (*(*this + 320))(this, *(this + 113), a2);
  }

  if (*(v4 + 110) <= a3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *(v4 + 110) = 20000;
  }

  *(v4 + 104) = v5;
  return this;
}

uint64_t NodeNet::calcNumActiveNodes(NodeNet *this, int a2)
{
  v2 = *(this + 42);
  if (!v2)
  {
    return 0;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  v7 = 8 * v2;
  do
  {
    v6 = Node::thresholdNode((*(*(this + 20) + v5) + 8), a2) + v6;
    v5 += 8;
  }

  while (v7 != v5);
  return v6;
}

void TraceNodeNet::thresholdNetInternal(TraceNodeNet *this, uint64_t a2, int a3)
{
  v4 = a2;
  NodeNet::thresholdNetInternal(this, a2, a3);
  v6 = *(this + 42);
  if (v6)
  {
    v7 = 0;
    v8 = 8 * v6;
    do
    {
      TraceNode::maybeSeedNode(*(*(this + 20) + v7), a3, v4);
      v7 += 8;
    }

    while (v8 != v7);
  }

  TraceNodeNet::passScoresToOutPorts2(this, a3, v4);
}

void TraceNodeNet::passScoresToOutPorts2(TraceNodeNet *this, int a2, int a3)
{
  v3 = *(this + 20);
  if (v3 >= 1)
  {
    v7 = v3 - 1;
    do
    {
      TraceExternalOutPort::seedOutPortForTraceBack2(*(*(this + 9) + 8 * v7), a2, a3, *(this + 1));
      v8 = v7-- + 1;
    }

    while (v8 > 1);
  }
}

unint64_t TraceNodeNet::seedEpsilonNodes(unint64_t this, int a2)
{
  v2 = *(this + 184);
  if (v2 >= 1)
  {
    v4 = this;
    do
    {
      v5 = *(*(v4 + 176) + 8 * (v2 - 1));
      v6 = *(v5 + 40);
      if (v6 == 1)
      {
        v7 = *(v5 + 32);
      }

      else
      {
        v8 = *(v5 + 32);
        v9 = (v6 - 1);
        v7 = *(v8 + 8 * v9);
        v10 = *(v7 + 8);
        v11 = v8 - 8;
        do
        {
          if (v10 >= *(*(v11 + 8 * v9) + 8))
          {
            v7 = *(v11 + 8 * v9);
            v10 = *(v7 + 8);
          }

          --v9;
        }

        while (v9);
      }

      v12 = *(v7 + 8);
      if (v12 == 20000)
      {
        v13 = v5 + 8;
      }

      else
      {
        this = SeederStruct::updateSeederList(v5 + 64, a2, v7);
        if (*(v5 + 30) != -1 && *(v5 + 42))
        {
          v14 = *(v5 + 24);
          if (v14 < 0)
          {
            v15 = *(v5 + 29) + v14;
          }

          else
          {
            v15 = *(v5 + 29);
          }

          v12 += v15 + *(v4 + 116);
        }

        v13 = v5 + 8;
        if (v12 != 20000)
        {
          *(v5 + 8) = *v7;
          v16 = v12 + (*(v5 + 20) >> 8);
          *(v5 + 12) = *(v7 + 4) + *(v5 + 26);
          goto LABEL_20;
        }
      }

      LOWORD(v16) = 20000;
      *(v5 + 18) = 20000;
LABEL_20:
      *(v13 + 8) = v16;
    }

    while (v2-- > 1);
  }

  return this;
}

void NodeNet::newNode(NodeNet *this, char a2)
{
  v3 = MemChunkAlloc(0x30uLL, 0);

  NodeNetNode::NodeNetNode(v3, a2);
}

uint64_t NodeNet::estimateActivePelsThisFrame(NodeNet *this, BitArray *a2)
{
  result = AcousticNet::estimateActivePelsThisFrame(this, a2);
  v5 = *(this + 46);
  if (v5 >= 1)
  {
    v6 = *a2;
    v7 = v5 + 1;
    v8 = (*(this + 22) + 8 * v5 - 8);
    do
    {
      v9 = *v8--;
      *(v6 + ((*(v9 + 30) >> 3) & 0x1FFC)) |= 1 << *(v9 + 30);
      --v7;
    }

    while (v7 > 1);
  }

  v10 = *(this + 42);
  if (v10 >= 1)
  {
    v11 = *a2;
    v12 = v10 + 1;
    v13 = (*(this + 20) + 8 * v10 - 8);
    do
    {
      v14 = *v13--;
      *(v11 + ((*(v14 + 30) >> 3) & 0x1FFC)) |= 1 << *(v14 + 30);
      --v12;
    }

    while (v12 > 1);
  }

  return result;
}

void TraceNodeNet::~TraceNodeNet(TraceNodeNet *this)
{
  *this = &unk_287528898;
  TraceNodeNet::deleteOutPorts(this);

  NodeNet::~NodeNet(this);
}

{
  TraceNodeNet::~TraceNodeNet(this);

  JUMPOUT(0x26672B1B0);
}

void *TraceNodeNet::deleteOutPorts(TraceNodeNet *this)
{
  *(this + 13) = 2;
  v2 = *(this + 20);
  if (v2 >= 1)
  {
    v3 = v2 - 1;
    do
    {
      v4 = *(*(this + 9) + 8 * v3);
      BitArray::~BitArray((v4 + 48));
      DgnIArray<Utterance *>::~DgnIArray(v4 + 32);
      PredStruct::~PredStruct((v4 + 16));
      v5 = v3-- + 1;
    }

    while (v5 > 1);
  }

  result = **(this + 9);
  if (result)
  {
    result = MemChunkFree(result, 0);
  }

  v7 = *(this + 20);
  if (v7 >= 1)
  {
    v8 = v7 - 1;
    do
    {
      *(*(this + 9) + 8 * v8) = 0;
      v9 = v8-- + 1;
    }

    while (v9 > 1);
  }

  return result;
}

void TraceNodeNet::newNode(TraceNodeNet *this, char a2)
{
  v3 = MemChunkAlloc(0x60uLL, 0);

  TraceNode::TraceNode(v3, a2);
}

void TraceNodeNet::configureOutPorts(TraceNodeNet *this, int a2)
{
  HmmNet::initEndIndices(this);
  if (a2 && !*(this + 20))
  {
    *(this + 9) = MemChunkAlloc(8 * a2, 0);
    *(this + 20) = a2;
  }

  *(this + 13) = 0;
  v4 = MemChunkAlloc(a2 << 6, 0);
  if (a2 >= 1)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = a2 << 6;
    do
    {
      v9 = &v5[v7 / 8];
      *v9 = 0x100000001;
      *(v9 + 2) = 1310740000;
      v9[2] = 0;
      *(v9 + 12) = 0;
      SeederStruct::SeederStruct(&v5[v7 / 8 + 4]);
      DgnString::DgnString(&v5[v7 / 8 + 6]);
      *(*(this + 9) + v6) = &v5[v7 / 8];
      v7 += 64;
      v6 += 8;
    }

    while (v8 != v7);
  }
}

uint64_t TraceNodeNet::sizeofOutPorts(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    v4 = 0;
  }

  else
  {
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v4 = 8;
    }

    else
    {
      v4 = 12;
    }

    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v5 = 2;
      if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
      {
        v5 = 3;
      }

      v4 += *(a1 + 80) << v5;
    }
  }

  if (!*(a1 + 52) && *(a1 + 80))
  {
    v6 = 0;
    do
    {
      v4 += sizeObject(*(*(a1 + 72) + 8 * v6++), a2);
    }

    while (v6 < *(a1 + 80));
  }

  return v4;
}

uint64_t TraceExternalOutPort::wasEnding(TraceExternalOutPort *this, int a2)
{
  v2 = *(this + 10);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 4);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16 * (v2 - 1) + 12);
  if (v4 != a2 && v5 == v4)
  {
    return 0;
  }

  v7 = v5 >= v4 ? a2 - v4 : v4 - a2;
  if (v7 >= *(this + 14))
  {
    return 0;
  }

  else
  {
    return (*(*(this + 6) + 4 * (v7 >> 5)) >> v7) & 1;
  }
}

uint64_t TraceNodeNet::appendCalculatedSegments(int a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = *(*(a2 + 32) + 16 * SeederStruct::findSeederIndex((a2 + 32), a3));
  v7 = a3 + 1;
  do
  {
    if (*(v6 + 30) != -1)
    {
      if (*(v6 + 42))
      {
        v8 = 0;
      }

      else
      {
        v8 = 0;
        v9 = -1;
        do
        {
          ++v8;
          SeederIndex = SeederStruct::findSeederIndex((v6 + 64), v7 + v9--);
        }

        while (*(*(v6 + 64) + 16 * SeederIndex) == v6);
        v7 -= v8;
      }

      v11 = MemChunkAlloc(0x28uLL, 0);
      v12 = v11;
      v13 = *(v6 + 80);
      *v11 = v7;
      *(v11 + 2) = *(v6 + 30);
      *(v11 + 2) = v8;
      *(v11 + 3) = v13;
      v14 = *(v6 + 44);
      *(v11 + 12) = *(v6 + 52);
      v11[2] = v14;
      *(v11 + 26) = *(v6 + 54);
      *(v11 + 27) = *(v6 + 55);
      *(v11 + 14) = *(v6 + 28);
      v15 = *(v6 + 24);
      if (v15 < 0)
      {
        v16 = *(v6 + 29) + v15;
      }

      else
      {
        v16 = *(v6 + 29);
      }

      *(v11 + 8) = v16;
      *(v11 + 18) = v15;
      v17 = *(a4 + 8);
      if (v17 == *(a4 + 12))
      {
        DgnPrimArray<unsigned long long>::reallocElts(a4, 1, 1);
        v17 = *(a4 + 8);
      }

      *(*a4 + 8 * v17) = v12;
      *(a4 + 8) = v17 + 1;
    }

    v18 = SeederStruct::findSeederIndex((v6 + 64), v7);
    if (*(v6 + 82))
    {
      v19 = *(*(v6 + 64) + 16 * v18) == v6;
    }

    else
    {
      v19 = 1;
    }

    v6 = *(*(v6 + 64) + 16 * v18);
  }

  while (v19);
  return (v7 - 1);
}

void TraceNode::TraceNode(TraceNode *this, char a2)
{
  NodeNetNode::NodeNetNode(this, a2);
  *v3 = &unk_287522C90;
  *(v3 + 44) = -1;
  *(v3 + 52) = -1;
  *(v3 + 54) = -65536;
  SeederStruct::SeederStruct((v3 + 64));
  *(this + 82) = 0;
}

void SeederStruct::SeederStruct(SeederStruct *this)
{
  *this = 0;
  *(this + 1) = 0;
  DgnArray<DgnPrimArray<double>>::reallocElts(this, 1, 0);
}

uint64_t SeederStruct::findSeederIndex(SeederStruct *this, int a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  for (i = (*this + 12); ; i += 4)
  {
    v6 = *(i - 1);
    if (v6 == a2)
    {
      break;
    }

    v7 = *i;
    if (*i == a2)
    {
      break;
    }

    if (v6 < a2 && v7 > a2)
    {
      break;
    }

    if (v6 > a2 && v7 < a2)
    {
      break;
    }

    if (v2 == ++result)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void *DgnIOwnArray<NodeNetNode *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<NodeNetNode>(*(*a1 + v3));
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

void (***DgnDelete<NodeNetNode>(void (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    (**result)(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t MrecInitLibrary_user(void)
{
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_picmgr_user();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_user_user();

  return MrecInitModule_sdpres_sdapi();
}

uint64_t MrecInitLibrarySet_throughUser(void)
{
  MrecInitLibrarySet_throughPel();
  MrecInitLibrarySet_throughPhoneme();

  return MrecInitLibrary_user();
}

uint64_t MrecInitLibrary_sigproc(void)
{
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
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_ltf_sigproc();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_spdebug_sigproc();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sputtdet_sigproc();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_wavepac_sigproc();

  return MrecInitModule_sdpres_sdapi();
}

uint64_t MrecInitLibrarySet_throughSigproc(void)
{
  MrecInitLibrarySet_throughFrame();

  return MrecInitLibrary_sigproc();
}

void MrecInitModule_pelsc_pel(void)
{
  if (!gParDebugShowShortListBitVector)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugShowShortListBitVector", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugShowShortListBitVector = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowShortListBitVector);
  }

  if (!gParDiagnosticPackedIntPelScoring)
  {
    v2 = MemChunkAlloc(0x40uLL, 0);
    EnumParamRange::EnumParamRange(&v15, &sDiagnosticPackedIntPelScoringEnum);
    EnumGlobalParamBase::EnumGlobalParamBase(v2, "DiagnosticPackedIntPelScoring", &byte_262899963, &byte_262899963, 0, &v15, 0);
    v2->n128_u64[0] = &unk_287527B80;
    gParDiagnosticPackedIntPelScoring = v2;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticPackedIntPelScoring);
  }

  if (!gParDebugAcousticReferencePackedIntScoring)
  {
    v3 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v3, "DebugAcousticReferencePackedIntScoring", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v4 = &unk_287527EA0;
    gParDebugAcousticReferencePackedIntScoring = v4;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugAcousticReferencePackedIntScoring);
  }

  if (!gParDebugAcousticFloatScoring)
  {
    v5 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v5, "DebugAcousticFloatScoring", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v6 = &unk_287527EA0;
    gParDebugAcousticFloatScoring = v6;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugAcousticFloatScoring);
  }

  if (!gParDebugAcousticMicReferenceScoring)
  {
    v7 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v7, "DebugAcousticMicReferenceScoring", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v8 = &unk_287527EA0;
    gParDebugAcousticMicReferenceScoring = v8;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugAcousticMicReferenceScoring);
  }

  if (!gParDebugQuantPerDimPelScoring)
  {
    v9 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v9, "DebugQuantPerDimPelScoring", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v10 = &unk_287527EA0;
    gParDebugQuantPerDimPelScoring = v10;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugQuantPerDimPelScoring);
  }

  if (!gParDebugShowTransformedFeatures)
  {
    v11 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v11, "DebugShowTransformedFeatures", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v12 = &unk_287527EA0;
    gParDebugShowTransformedFeatures = v12;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowTransformedFeatures);
  }

  if (!gParDiagnosticAttilaAcousticScoreScale)
  {
    v13 = MemChunkAlloc(0x48uLL, 0);
    v15 = xmmword_262891600;
    v14 = DoubleGlobalParamBase::DoubleGlobalParamBase(v13, "DiagnosticAttilaAcousticScoreScale", &byte_262899963, &byte_262899963, &v15, 0, 0.0);
    *v14 = &unk_2875271F0;
    gParDiagnosticAttilaAcousticScoreScale = v14;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticAttilaAcousticScoreScale);
  }
}

void PelScorer::PelScorer(PelScorer *this, const PelMgr *a2, const GenoneClassTree *a3, const VarClassMgr *a4, const FmpeMgr *a5, const NeuralNet *a6, const Imelda *a7, int a8, double a9, double a10, BOOL a11)
{
  *this = &unk_287522F00;
  if (MemChunkRegion::smTlsID != -1)
  {
    v20 = pthread_getspecific(MemChunkRegion::smTlsID);
    if (v20)
    {
      v21 = *v20;
      if (*v20)
      {
        goto LABEL_6;
      }

      pthread_setspecific(MemChunkRegion::smTlsID, 0);
    }
  }

  v21 = &gGlobalMemChunkRegion;
LABEL_6:
  *(this + 1) = v21;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = a3;
  *(this + 6) = a4;
  *(this + 7) = a5;
  *(this + 8) = a6;
  *(this + 9) = a7;
  v22 = *a2;
  *(this + 12) = 0;
  *(this + 11) = 0;
  v23 = *(a2 + 62);
  v24 = *(a2 + 38);
  *(this + 15) = 0;
  *(this + 10) = v22;
  *(this + 13) = v23;
  *(this + 28) = 0;
  *(this + 29) = v24;
  *(this + 127) = 0;
  *(this + 131) = a11;
  *(this + 17) = a9;
  *(this + 18) = a10;
  *(this + 38) = -16;
  *(this + 10) = 0u;
  *(this + 34) = 0;
  *(this + 16) = 0u;
  *(this + 15) = 0u;
  *(this + 14) = 0u;
  *(this + 13) = 0u;
  *(this + 12) = 0u;
  *(this + 11) = 0u;
  if (a4)
  {
    v25 = *a4;
  }

  else
  {
    v25 = 0;
  }

  *(this + 70) = v25;
  *(this + 284) = 0;
  *(this + 296) = 0uLL;
  *(this + 312) = 0uLL;
  AlignedArray<short>::AlignedArray(this + 328, *(a2 + 56));
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 508) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 39) = 0u;
  *(this + 320) = 0;
  v26 = MemChunkAlloc(0x1F0uLL, 0);
  PelScoreCache::PelScoreCache(v26, this, *(this + 2) + 376, *(this + 2) + 288);
  *(this + 15) = v27;
  if (a5)
  {
    v28 = MemChunkAlloc(0x298uLL, 0);
    *(this + 11) = OnDemandPelScorer::OnDemandPelScorer(v28, *(*(this + 7) + 112), 0, 0, 0, a6, 0, 0, *(this + 17), *(this + 131), a10);
  }

  if (a8)
  {
    v29 = MemChunkAlloc(0x298uLL, 0);
    *(this + 12) = OnDemandPelScorer::OnDemandPelScorer(v29, a2, 0, 0, 0, a6, a7, 0, *(this + 17), *(this + 131), a10);
  }
}

void sub_2628326C8(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v3 + 312);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v3 + 248);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v3 + 232);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v3 + 216);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v3 + 200);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v3 + 176);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1);
  _Unwind_Resume(a1);
}

void OnDemandPelScorer::OnDemandPelScorer(OnDemandPelScorer *this, const PelMgr *a2, const GenoneClassTree *a3, const VarClassMgr *a4, const FmpeMgr *a5, const NeuralNet *a6, const Imelda *a7, int a8, double a9, double a10, BOOL a11)
{
  OnDemandPelScorer::OnDemandPelScorer(this, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

{
  PelScorer::PelScorer(this, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  *v13 = &unk_287527098;
  v14 = v13 + 81;
  *(v13 + 81) = 0u;
  if (*(a2 + 3) == 3)
  {
    v15 = *(a2 + 6);
    v16 = *(a2 + 10);
    v17 = *(a2 + 33);
    if (32 * v17)
    {
      v26 = 0;
      *(this + 165) = realloc_array(0, &v26, (32 * v17), 0, 0, 1);
      *(this + 81) = v26;
    }

    *(this + 164) = 32 * v17;
    if (v17)
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = 16 * (v18 & 0xFFFFFFF);
        v21 = v16 + v20;
        v22 = (v15 + v20);
        v23 = 16;
        do
        {
          v24 = *v22++;
          *(*v14 + v19++) = v24;
          --v23;
        }

        while (v23);
        for (i = 0; i != 16; ++i)
        {
          *(*v14 + v19++) = *(v21 + i);
        }

        ++v18;
      }

      while (v18 != v17);
    }
  }
}

void PelScorer::~PelScorer(PelScorer *this)
{
  *this = &unk_287522F00;
  DgnDelete<PelScoreCache>(*(this + 15));
  *(this + 15) = 0;
  DgnDelete<PelScorer>(*(this + 11));
  *(this + 11) = 0;
  DgnDelete<PelScorer>(*(this + 12));
  *(this + 12) = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 624);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 584);
  DgnIArray<Utterance *>::~DgnIArray(this + 568);
  DgnIArray<Utterance *>::~DgnIArray(this + 552);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 536);
  DgnIArray<Utterance *>::~DgnIArray(this + 504);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 488);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 448);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 432);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 416);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 400);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 384);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 368);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 352);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 328);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 312);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 296);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 248);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 232);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 216);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 200);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 176);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 160);
}

PelScoreCache *DgnDelete<PelScoreCache>(PelScoreCache *result)
{
  if (result)
  {
    PelScoreCache::~PelScoreCache(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void PelScorer::printSize(PelScorer *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 448, &v492);
  if (v493)
  {
    v16 = v492;
  }

  else
  {
    v16 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &byte_262899963, a3, &byte_262899963, v16);
  DgnString::~DgnString(&v492);
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

  v22 = (a3 + 1);
  v23 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 449, &v492);
  if (v493)
  {
    v28 = v492;
  }

  else
  {
    v28 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, v25, v26, v27, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v28, v21, v21, 0);
  DgnString::~DgnString(&v492);
  *a4 += v21;
  *a5 += v21;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v29 = 4;
  }

  else
  {
    v29 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 450, &v492);
  if (v493)
  {
    v34 = v492;
  }

  else
  {
    v34 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, v31, v32, v33, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v34, v29, v29, 0);
  DgnString::~DgnString(&v492);
  *a4 += v29;
  *a5 += v29;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v35 = 4;
  }

  else
  {
    v35 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 451, &v492);
  if (v493)
  {
    v40 = v492;
  }

  else
  {
    v40 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v36, v37, v38, v39, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v40, v35, v35, 0);
  DgnString::~DgnString(&v492);
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

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 452, &v492);
  if (v493)
  {
    v46 = v492;
  }

  else
  {
    v46 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v43, v44, v45, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v46, v41, v41, 0);
  DgnString::~DgnString(&v492);
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

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 453, &v492);
  if (v493)
  {
    v52 = v492;
  }

  else
  {
    v52 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v48, v49, v50, v51, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v52, v47, v47, 0);
  DgnString::~DgnString(&v492);
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

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 454, &v492);
  if (v493)
  {
    v58 = v492;
  }

  else
  {
    v58 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v54, v55, v56, v57, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v58, v53, v53, 0);
  DgnString::~DgnString(&v492);
  *a4 += v53;
  *a5 += v53;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v59 = 4;
  }

  else
  {
    v59 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 455, &v492);
  if (v493)
  {
    v64 = v492;
  }

  else
  {
    v64 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v60, v61, v62, v63, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v64, v59, v59, 0);
  DgnString::~DgnString(&v492);
  *a4 += v59;
  *a5 += v59;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v65 = 4;
  }

  else
  {
    v65 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 456, &v492);
  if (v493)
  {
    v70 = v492;
  }

  else
  {
    v70 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v66, v67, v68, v69, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v70, v65, v65, 0);
  DgnString::~DgnString(&v492);
  *a4 += v65;
  *a5 += v65;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v71 = 4;
  }

  else
  {
    v71 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 457, &v492);
  if (v493)
  {
    v76 = v492;
  }

  else
  {
    v76 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v72, v73, v74, v75, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v76, v71, v71, 0);
  DgnString::~DgnString(&v492);
  *a4 += v71;
  *a5 += v71;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v77 = 4;
  }

  else
  {
    v77 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 458, &v492);
  if (v493)
  {
    v82 = v492;
  }

  else
  {
    v82 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v78, v79, v80, v81, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v82, v77, v77, 0);
  DgnString::~DgnString(&v492);
  *a4 += v77;
  *a5 += v77;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v83 = 4;
  }

  else
  {
    v83 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 459, &v492);
  if (v493)
  {
    v88 = v492;
  }

  else
  {
    v88 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v84, v85, v86, v87, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v88, v83, v83, 0);
  DgnString::~DgnString(&v492);
  *a4 += v83;
  *a5 += v83;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v89 = 4;
  }

  else
  {
    v89 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 460, &v492);
  if (v493)
  {
    v94 = v492;
  }

  else
  {
    v94 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v90, v91, v92, v93, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v94, v89, v89, 0);
  DgnString::~DgnString(&v492);
  *a4 += v89;
  *a5 += v89;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 461, &v492);
  if (v493)
  {
    v99 = v492;
  }

  else
  {
    v99 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v95, v96, v97, v98, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v99, 8, 8, 0);
  DgnString::~DgnString(&v492);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 462, &v492);
  if (v493)
  {
    v104 = v492;
  }

  else
  {
    v104 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v100, v101, v102, v103, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v104, 4, 4, 0);
  DgnString::~DgnString(&v492);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 464, &v492);
  if (v493)
  {
    v109 = v492;
  }

  else
  {
    v109 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v105, v106, v107, v108, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v109, 4, 4, 0);
  DgnString::~DgnString(&v492);
  *a4 += 4;
  *a5 += 4;
  v110 = *(this + 15);
  if (v110)
  {
    v491 = 0;
    v492 = 0;
    v490 = 0;
    PelScoreCache::printSize(v110, 0xFFFFFFFFLL, (a3 + 1), &v492, &v491, &v490);
    *a4 += v492;
    *a5 += v491;
    *a6 += v490;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v111 = 4;
  }

  else
  {
    v111 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 466, &v492);
  if (v493)
  {
    v116 = v492;
  }

  else
  {
    v116 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v112, v113, v114, v115, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v116, v111, v111, 0);
  DgnString::~DgnString(&v492);
  *a4 += v111;
  *a5 += v111;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 477, &v492);
  if (v493)
  {
    v121 = v492;
  }

  else
  {
    v121 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v117, v118, v119, v120, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v121, 1, 1, 0);
  DgnString::~DgnString(&v492);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 479, &v492);
  if (v493)
  {
    v126 = v492;
  }

  else
  {
    v126 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v122, v123, v124, v125, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v126, 1, 1, 0);
  DgnString::~DgnString(&v492);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 481, &v492);
  if (v493)
  {
    v131 = v492;
  }

  else
  {
    v131 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v127, v128, v129, v130, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v131, 1, 1, 0);
  DgnString::~DgnString(&v492);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 483, &v492);
  if (v493)
  {
    v136 = v492;
  }

  else
  {
    v136 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v132, v133, v134, v135, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v136, 1, 1, 0);
  DgnString::~DgnString(&v492);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 485, &v492);
  if (v493)
  {
    v141 = v492;
  }

  else
  {
    v141 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v137, v138, v139, v140, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v141, 8, 8, 0);
  DgnString::~DgnString(&v492);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 487, &v492);
  if (v493)
  {
    v146 = v492;
  }

  else
  {
    v146 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v142, v143, v144, v145, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v146, 8, 8, 0);
  DgnString::~DgnString(&v492);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 488, &v492);
  if (v493)
  {
    v151 = v492;
  }

  else
  {
    v151 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v147, v148, v149, v150, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v151, 4, 4, 0);
  v489 = a3;
  DgnString::~DgnString(&v492);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v152 = 12;
  }

  else
  {
    v152 = 16;
  }

  v153 = *(this + 42);
  v154 = *(this + 43);
  v155 = v154 >= v153;
  v156 = v154 - v153;
  if (v155)
  {
    if (v153 > 0)
    {
      v157 = (v153 - 1) + v152 + 1;
    }

    else
    {
      v157 = v152;
    }

    v152 = v157 + v156;
    v153 = 0;
  }

  else
  {
    v157 = v152;
  }

  v158 = v153;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 489, &v492);
  if (v493)
  {
    v163 = v492;
  }

  else
  {
    v163 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v159, v160, v161, v162, v22, &byte_262899963, v23, v23, v163, v152, v157, v158);
  DgnString::~DgnString(&v492);
  *a4 += v152;
  *a5 += v157;
  *a6 += v158;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v164 = 12;
  }

  else
  {
    v164 = 16;
  }

  v165 = *(this + 46);
  v166 = *(this + 47);
  v155 = v166 >= v165;
  v167 = v166 - v165;
  if (v155)
  {
    if (v165 > 0)
    {
      v168 = (v165 - 1) + v164 + 1;
    }

    else
    {
      v168 = v164;
    }

    v164 = v168 + v167;
    v165 = 0;
  }

  else
  {
    v168 = v164;
  }

  v169 = v165;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 491, &v492);
  if (v493)
  {
    v174 = v492;
  }

  else
  {
    v174 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v170, v171, v172, v173, v22, &byte_262899963, v23, v23, v174, v164, v168, v169);
  DgnString::~DgnString(&v492);
  *a4 += v164;
  *a5 += v168;
  *a6 += v169;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v175 = 4;
  }

  else
  {
    v175 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 493, &v492);
  if (v493)
  {
    v180 = v492;
  }

  else
  {
    v180 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v176, v177, v178, v179, v22, &byte_262899963, v23, v23, v180, v175, v175, 0);
  DgnString::~DgnString(&v492);
  *a4 += v175;
  *a5 += v175;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v181 = 12;
  }

  else
  {
    v181 = 16;
  }

  v182 = *(this + 52);
  v183 = *(this + 53);
  v155 = v183 >= v182;
  v184 = v183 - v182;
  if (v155)
  {
    if (v182 > 0)
    {
      v185 = (v182 - 1) + v181 + 1;
    }

    else
    {
      v185 = v181;
    }

    v181 = v185 + v184;
    v182 = 0;
  }

  else
  {
    v185 = v181;
  }

  v186 = v182;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 495, &v492);
  if (v493)
  {
    v191 = v492;
  }

  else
  {
    v191 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v187, v188, v189, v190, v22, &byte_262899963, v23, v23, v191, v181, v185, v186);
  DgnString::~DgnString(&v492);
  *a4 += v181;
  *a5 += v185;
  *a6 += v186;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v192 = 12;
  }

  else
  {
    v192 = 16;
  }

  v193 = *(this + 56);
  v194 = *(this + 57);
  v155 = v194 >= v193;
  v195 = v194 - v193;
  if (v155)
  {
    if (v193 > 0)
    {
      v196 = (v193 - 1) + v192 + 1;
    }

    else
    {
      v196 = v192;
    }

    v192 = v196 + v195;
    v193 = 0;
  }

  else
  {
    v196 = v192;
  }

  v197 = v193;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 497, &v492);
  if (v493)
  {
    v202 = v492;
  }

  else
  {
    v202 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v198, v199, v200, v201, v22, &byte_262899963, v23, v23, v202, v192, v196, v197);
  DgnString::~DgnString(&v492);
  *a4 += v192;
  *a5 += v196;
  *a6 += v197;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v203 = 12;
  }

  else
  {
    v203 = 16;
  }

  v204 = *(this + 60);
  v205 = *(this + 61);
  if (v205 >= v204)
  {
    v206 = 0;
    if (v204 > 0)
    {
      v203 += 2 * (v204 - 1) + 2;
    }

    v207 = v203 + 2 * (v205 - v204);
  }

  else
  {
    v206 = 2 * v204;
    v207 = v203;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 498, &v492);
  if (v493)
  {
    v212 = v492;
  }

  else
  {
    v212 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v208, v209, v210, v211, v22, &byte_262899963, v23, v23, v212, v207, v203, v206);
  DgnString::~DgnString(&v492);
  *a4 += v207;
  *a5 += v203;
  *a6 += v206;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v213 = 12;
  }

  else
  {
    v213 = 16;
  }

  v214 = *(this + 64);
  v215 = *(this + 65);
  if (v215 >= v214)
  {
    v216 = 0;
    if (v214 > 0)
    {
      v213 += 2 * (v214 - 1) + 2;
    }

    v217 = v213 + 2 * (v215 - v214);
  }

  else
  {
    v216 = 2 * v214;
    v217 = v213;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 500, &v492);
  if (v493)
  {
    v222 = v492;
  }

  else
  {
    v222 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v218, v219, v220, v221, v22, &byte_262899963, v23, v23, v222, v217, v213, v216);
  DgnString::~DgnString(&v492);
  *a4 += v217;
  *a5 += v213;
  *a6 += v216;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 502, &v492);
  if (v493)
  {
    v227 = v492;
  }

  else
  {
    v227 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v223, v224, v225, v226, v22, &byte_262899963, v23, v23, v227, 4, 4, 0);
  DgnString::~DgnString(&v492);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 504, &v492);
  if (v493)
  {
    v232 = v492;
  }

  else
  {
    v232 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v228, v229, v230, v231, v22, &byte_262899963, v23, v23, v232, 4, 4, 0);
  DgnString::~DgnString(&v492);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 505, &v492);
  if (v493)
  {
    v237 = v492;
  }

  else
  {
    v237 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v233, v234, v235, v236, v22, &byte_262899963, v23, v23, v237, 4, 4, 0);
  DgnString::~DgnString(&v492);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 506, &v492);
  if (v493)
  {
    v242 = v492;
  }

  else
  {
    v242 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v238, v239, v240, v241, v22, &byte_262899963, v23, v23, v242, 4, 4, 0);
  DgnString::~DgnString(&v492);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 507, &v492);
  if (v493)
  {
    v247 = v492;
  }

  else
  {
    v247 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v243, v244, v245, v246, v22, &byte_262899963, v23, v23, v247, 4, 4, 0);
  DgnString::~DgnString(&v492);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 509, &v492);
  if (v493)
  {
    v252 = v492;
  }

  else
  {
    v252 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v248, v249, v250, v251, v22, &byte_262899963, v23, v23, v252, 4, 4, 0);
  DgnString::~DgnString(&v492);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 511, &v492);
  if (v493)
  {
    v257 = v492;
  }

  else
  {
    v257 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v253, v254, v255, v256, v22, &byte_262899963, v23, v23, v257, 4, 4, 0);
  DgnString::~DgnString(&v492);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v258 = 12;
  }

  else
  {
    v258 = 16;
  }

  v259 = *(this + 76);
  v260 = *(this + 77);
  if (v260 >= v259)
  {
    v261 = 0;
    if (v259 > 0)
    {
      v258 += 4 * (v259 - 1) + 4;
    }

    v262 = v258 + 4 * (v260 - v259);
  }

  else
  {
    v261 = 4 * v259;
    v262 = v258;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 513, &v492);
  if (v493)
  {
    v267 = v492;
  }

  else
  {
    v267 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v263, v264, v265, v266, v22, &byte_262899963, v23, v23, v267, v262, v258, v261);
  DgnString::~DgnString(&v492);
  *a4 += v262;
  *a5 += v258;
  *a6 += v261;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v268 = 12;
  }

  else
  {
    v268 = 16;
  }

  v269 = *(this + 80);
  v270 = *(this + 81);
  if (v270 >= v269)
  {
    v271 = 0;
    if (v269 > 0)
    {
      v268 += 4 * (v269 - 1) + 4;
    }

    v272 = v268 + 4 * (v270 - v269);
  }

  else
  {
    v271 = 4 * v269;
    v272 = v268;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 515, &v492);
  if (v493)
  {
    v277 = v492;
  }

  else
  {
    v277 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v273, v274, v275, v276, v22, &byte_262899963, v23, v23, v277, v272, v268, v271);
  DgnString::~DgnString(&v492);
  *a4 += v272;
  *a5 += v268;
  *a6 += v271;
  v278 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v278 = 12;
  }

  v279 = *(this + 84);
  v280 = *(this + 85);
  if (v280 >= v279)
  {
    v281 = 0;
    if (v279 > 0)
    {
      v278 += 2 * (v279 - 1) + 2;
    }

    v282 = v278 + 2 * (v280 - v279);
  }

  else
  {
    v281 = 2 * v279;
    v282 = v278;
  }

  v283 = v282 + 4;
  v284 = v278 + 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 517, &v492);
  if (v493)
  {
    v289 = v492;
  }

  else
  {
    v289 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v285, v286, v287, v288, v22, &byte_262899963, v23, v23, v289, v283, v284, v281);
  DgnString::~DgnString(&v492);
  *a4 += v283;
  *a5 += v284;
  *a6 += v281;
  v290 = sizeObject<DgnPrimArray<unsigned char>>(this + 352, 0);
  v291 = sizeObject<DgnPrimArray<unsigned char>>(this + 352, 1);
  v492 = 0;
  v493 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v492);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 519, &v492);
  if (v493)
  {
    v296 = v492;
  }

  else
  {
    v296 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v292, v293, v294, v295, v22, &byte_262899963, v23, v23, v296, v290, v291, 0);
  DgnString::~DgnString(&v492);
  *a4 += v290;
  *a5 += v291;
  v297 = sizeObject<DgnPrimArray<unsigned char>>(this + 368, 0);
  v298 = sizeObject<DgnPrimArray<unsigned char>>(this + 368, 1);
  v492 = 0;
  v493 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v492);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 521, &v492);
  if (v493)
  {
    v303 = v492;
  }

  else
  {
    v303 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v299, v300, v301, v302, v22, &byte_262899963, v23, v23, v303, v297, v298, 0);
  DgnString::~DgnString(&v492);
  *a4 += v297;
  *a5 += v298;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v304 = 12;
  }

  else
  {
    v304 = 16;
  }

  v305 = *(this + 98);
  v306 = *(this + 99);
  if (v306 >= v305)
  {
    v307 = 0;
    if (v305 > 0)
    {
      v304 += 4 * (v305 - 1) + 4;
    }

    v308 = v304 + 4 * (v306 - v305);
  }

  else
  {
    v307 = 4 * v305;
    v308 = v304;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 523, &v492);
  if (v493)
  {
    v313 = v492;
  }

  else
  {
    v313 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v309, v310, v311, v312, v22, &byte_262899963, v23, v23, v313, v308, v304, v307);
  DgnString::~DgnString(&v492);
  *a4 += v308;
  *a5 += v304;
  *a6 += v307;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v314 = 12;
  }

  else
  {
    v314 = 16;
  }

  v315 = *(this + 102);
  v316 = *(this + 103);
  v155 = v316 >= v315;
  v317 = v316 - v315;
  if (v155)
  {
    if (v315 > 0)
    {
      v318 = (v315 - 1) + v314 + 1;
    }

    else
    {
      v318 = v314;
    }

    v314 = v318 + v317;
    v315 = 0;
  }

  else
  {
    v318 = v314;
  }

  v319 = v315;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 525, &v492);
  if (v493)
  {
    v324 = v492;
  }

  else
  {
    v324 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v320, v321, v322, v323, v22, &byte_262899963, v23, v23, v324, v314, v318, v319);
  DgnString::~DgnString(&v492);
  *a4 += v314;
  *a5 += v318;
  *a6 += v319;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v325 = 12;
  }

  else
  {
    v325 = 16;
  }

  v326 = *(this + 106);
  v327 = *(this + 107);
  if (v327 >= v326)
  {
    v328 = 0;
    if (v326 > 0)
    {
      v325 += 8 * (v326 - 1) + 8;
    }

    v329 = v325 + 8 * (v327 - v326);
  }

  else
  {
    v328 = 8 * v326;
    v329 = v325;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 527, &v492);
  if (v493)
  {
    v334 = v492;
  }

  else
  {
    v334 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v330, v331, v332, v333, v22, &byte_262899963, v23, v23, v334, v329, v325, v328);
  DgnString::~DgnString(&v492);
  *a4 += v329;
  *a5 += v325;
  *a6 += v328;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v335 = 12;
  }

  else
  {
    v335 = 16;
  }

  v336 = *(this + 110);
  v337 = *(this + 111);
  if (v337 >= v336)
  {
    v338 = 0;
    if (v336 > 0)
    {
      v335 += 8 * (v336 - 1) + 8;
    }

    v339 = v335 + 8 * (v337 - v336);
  }

  else
  {
    v338 = 8 * v336;
    v339 = v335;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 529, &v492);
  if (v493)
  {
    v344 = v492;
  }

  else
  {
    v344 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v340, v341, v342, v343, v22, &byte_262899963, v23, v23, v344, v339, v335, v338);
  DgnString::~DgnString(&v492);
  *a4 += v339;
  *a5 += v335;
  *a6 += v338;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v345 = 12;
  }

  else
  {
    v345 = 16;
  }

  v346 = *(this + 114);
  v347 = *(this + 115);
  if (v347 >= v346)
  {
    v348 = 0;
    if (v346 > 0)
    {
      v345 += 8 * (v346 - 1) + 8;
    }

    v349 = v345 + 8 * (v347 - v346);
  }

  else
  {
    v348 = 8 * v346;
    v349 = v345;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 531, &v492);
  if (v493)
  {
    v354 = v492;
  }

  else
  {
    v354 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v350, v351, v352, v353, v22, &byte_262899963, v23, v23, v354, v349, v345, v348);
  DgnString::~DgnString(&v492);
  *a4 += v349;
  *a5 += v345;
  *a6 += v348;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 533, &v492);
  if (v493)
  {
    v359 = v492;
  }

  else
  {
    v359 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v355, v356, v357, v358, v22, &byte_262899963, v23, v23, v359, 8, 8, 0);
  DgnString::~DgnString(&v492);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 535, &v492);
  if (v493)
  {
    v364 = v492;
  }

  else
  {
    v364 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v360, v361, v362, v363, v22, &byte_262899963, v23, v23, v364, 8, 8, 0);
  DgnString::~DgnString(&v492);
  *a4 += 8;
  *a5 += 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v365 = 4;
  }

  else
  {
    v365 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 536, &v492);
  if (v493)
  {
    v370 = v492;
  }

  else
  {
    v370 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v366, v367, v368, v369, v22, &byte_262899963, v23, v23, v370, v365, v365, 0);
  DgnString::~DgnString(&v492);
  *a4 += v365;
  *a5 += v365;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v371 = 12;
  }

  else
  {
    v371 = 16;
  }

  v372 = *(this + 124);
  v373 = *(this + 125);
  if (v373 >= v372)
  {
    v374 = 0;
    if (v372 > 0)
    {
      v371 += 4 * (v372 - 1) + 4;
    }

    v375 = v371 + 4 * (v373 - v372);
  }

  else
  {
    v374 = 4 * v372;
    v375 = v371;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 538, &v492);
  if (v493)
  {
    v380 = v492;
  }

  else
  {
    v380 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v376, v377, v378, v379, v22, &byte_262899963, v23, v23, v380, v375, v371, v374);
  DgnString::~DgnString(&v492);
  *a4 += v375;
  *a5 += v371;
  *a6 += v374;
  v381 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v381 = 12;
  }

  v382 = *(this + 128);
  v383 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v383 = 3;
  }

  v384 = (((*(this + 129) - v382) + v382) << v383) + v381;
  v385 = (v382 << v383) + v381;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 540, &v492);
  if (v493)
  {
    v390 = v492;
  }

  else
  {
    v390 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v386, v387, v388, v389, v22, &byte_262899963, v23, v23, v390, v384, v385, 0);
  DgnString::~DgnString(&v492);
  *a4 += v384;
  *a5 += v385;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 542, &v492);
  if (v493)
  {
    v395 = v492;
  }

  else
  {
    v395 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v391, v392, v393, v394, v22, &byte_262899963, v23, v23, v395, 4, 4, 0);
  DgnString::~DgnString(&v492);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v396 = 4;
  }

  else
  {
    v396 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 544, &v492);
  if (v493)
  {
    v401 = v492;
  }

  else
  {
    v401 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v397, v398, v399, v400, v22, &byte_262899963, v23, v23, v401, v396, v396, 0);
  DgnString::~DgnString(&v492);
  *a4 += v396;
  *a5 += v396;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v402 = 12;
  }

  else
  {
    v402 = 16;
  }

  v403 = *(this + 136);
  v404 = *(this + 137);
  if (v404 >= v403)
  {
    v405 = 0;
    if (v403 > 0)
    {
      v402 += 4 * (v403 - 1) + 4;
    }

    v406 = v402 + 4 * (v404 - v403);
  }

  else
  {
    v405 = 4 * v403;
    v406 = v402;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 546, &v492);
  if (v493)
  {
    v411 = v492;
  }

  else
  {
    v411 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v407, v408, v409, v410, v22, &byte_262899963, v23, v23, v411, v406, v402, v405);
  DgnString::~DgnString(&v492);
  *a4 += v406;
  *a5 += v402;
  *a6 += v405;
  v412 = sizeObject<BinaryIntScale>(this + 552, 0);
  v413 = sizeObject<BinaryIntScale>(this + 552, 1);
  LODWORD(v492) = 0;
  sizeObject(&v492, 2);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 548, &v492);
  if (v493)
  {
    v418 = v492;
  }

  else
  {
    v418 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v414, v415, v416, v417, v22, &byte_262899963, v23, v23, v418, v412, v413, 0);
  DgnString::~DgnString(&v492);
  *a4 += v412;
  *a5 += v413;
  v419 = sizeObject<BinaryIntScale>(this + 568, 0);
  v420 = sizeObject<BinaryIntScale>(this + 568, 1);
  LODWORD(v492) = 0;
  sizeObject(&v492, 2);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 550, &v492);
  if (v493)
  {
    v425 = v492;
  }

  else
  {
    v425 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v421, v422, v423, v424, v22, &byte_262899963, v23, v23, v425, v419, v420, 0);
  DgnString::~DgnString(&v492);
  *a4 += v419;
  *a5 += v420;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v426 = 12;
  }

  else
  {
    v426 = 16;
  }

  v427 = *(this + 148);
  v428 = *(this + 149);
  if (v428 >= v427)
  {
    v429 = 0;
    if (v427 > 0)
    {
      v426 += 2 * (v427 - 1) + 2;
    }

    v430 = v426 + 2 * (v428 - v427);
  }

  else
  {
    v429 = 2 * v427;
    v430 = v426;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 552, &v492);
  if (v493)
  {
    v435 = v492;
  }

  else
  {
    v435 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v431, v432, v433, v434, v22, &byte_262899963, v23, v23, v435, v430, v426, v429);
  DgnString::~DgnString(&v492);
  *a4 += v430;
  *a5 += v426;
  *a6 += v429;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 554, &v492);
  if (v493)
  {
    v440 = v492;
  }

  else
  {
    v440 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v436, v437, v438, v439, v22, &byte_262899963, v23, v23, v440, 4, 4, 0);
  DgnString::~DgnString(&v492);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 556, &v492);
  if (v493)
  {
    v445 = v492;
  }

  else
  {
    v445 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v441, v442, v443, v444, v22, &byte_262899963, v23, v23, v445, 4, 4, 0);
  DgnString::~DgnString(&v492);
  *a4 += 4;
  *a5 += 4;
  v446 = sizeObject(this + 608, 0);
  v447 = sizeObject(this + 608, 1);
  v448 = sizeObject(this + 608, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 558, &v492);
  if (v493)
  {
    v453 = v492;
  }

  else
  {
    v453 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v449, v450, v451, v452, v22, &byte_262899963, v23, v23, v453, v446, v447, v448);
  DgnString::~DgnString(&v492);
  *a4 += v446;
  *a5 += v447;
  *a6 += v448;
  v454 = sizeObject(this + 612, 0);
  v455 = sizeObject(this + 612, 1);
  v456 = sizeObject(this + 612, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 560, &v492);
  if (v493)
  {
    v461 = v492;
  }

  else
  {
    v461 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v457, v458, v459, v460, v22, &byte_262899963, v23, v23, v461, v454, v455, v456);
  DgnString::~DgnString(&v492);
  *a4 += v454;
  *a5 += v455;
  *a6 += v456;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v462 = 4;
  }

  else
  {
    v462 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 562, &v492);
  if (v493)
  {
    v467 = v492;
  }

  else
  {
    v467 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v463, v464, v465, v466, v22, &byte_262899963, v23, v23, v467, v462, v462, 0);
  DgnString::~DgnString(&v492);
  *a4 += v462;
  *a5 += v462;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v468 = 12;
  }

  else
  {
    v468 = 16;
  }

  v469 = *(this + 158);
  v470 = *(this + 159);
  if (v470 >= v469)
  {
    v471 = 0;
    if (v469 > 0)
    {
      v468 += 2 * (v469 - 1) + 2;
    }

    v472 = v468 + 2 * (v470 - v469);
  }

  else
  {
    v471 = 2 * v469;
    v472 = v468;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 564, &v492);
  if (v493)
  {
    v477 = v492;
  }

  else
  {
    v477 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v473, v474, v475, v476, v22, &byte_262899963, v23, v23, v477, v472, v468, v471);
  DgnString::~DgnString(&v492);
  *a4 += v472;
  *a5 += v468;
  *a6 += v471;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 566, &v492);
  if (v493)
  {
    v482 = v492;
  }

  else
  {
    v482 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v478, v479, v480, v481, v22, &byte_262899963, v23, v23, v482, 2, 2, 0);
  DgnString::~DgnString(&v492);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 567, &v492);
  if (v493)
  {
    v487 = v492;
  }

  else
  {
    v487 = &byte_262899963;
  }

  v488 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v483, v484, v485, v486, v489, &byte_262899963, (35 - v489), (35 - v489), v487, *a4, *a5, *a6);
  DgnString::~DgnString(&v492);
}

void sub_262834D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void OnDemandPelScorer::beginPelSyncRecog(OnDemandPelScorer *this, uint64_t a2, const AdaptConfig *a3, const CTFTMgr *a4, int a5, char a6, char a7, double a8, double a9)
{
  v9 = a8;
  v12 = a5;
  if (*(this + 131) != 1 || ((v17 = *(this + 2), LODWORD(a9) = *(v17 + 140), LODWORD(a8) = *(v17 + 144), *&a8 / *&a9 >= *(this + 17)) ? (v18 = a5 == 0) : (v18 = 1), v18))
  {
    *(this + 128) = 0;
  }

  else
  {
    v22 = *(gParDiagnosticScoreAllPels + 41);
    *(this + 128) = v22 ^ 1;
    if ((v22 & 1) == 0)
    {
      v20 = (*(*this + 104))(this);
      v21 = (**this)(this);
      v19 = 0;
      goto LABEL_9;
    }
  }

  v19 = (*(*this + 8))(this);
  v20 = 0;
  v21 = 0;
LABEL_9:
  PelScorer::beginPelSyncRecogBase(this, a2, a3, a4, v12, a6, a7, v9, v20, v21, v19);
}

void PelScorer::beginPelSyncRecogBase(PelScorer *this, uint64_t a2, const AdaptConfig *a3, const CTFTMgr *a4, char a5, char a6, char a7, double a8, void (*a9)(const PelScorer *, unsigned __int16, unsigned int, unsigned __int16 *, unsigned int *), int (*a10)(const PelScorer *, unsigned __int16, const unsigned __int16 *, unsigned int *), int (*a11)(const PelScorer *, unsigned __int16, unsigned int *))
{
  *(this + 130) = a7;
  if (*(this + 7))
  {
    v19 = *(this + 11);
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    *(v19 + 112) = *(*(v19 + 16) + 132);
    *(v19 + 152) = -16;
    *(v19 + 272) = 0x100000001;
    *(v19 + 304) = 0;
    *(v19 + 320) = 0;
    *(v19 + 284) = 0x100000001;
    PelScorer::initFeatureCacheForSlots(v19);
    *(v19 + 129) = 0;
  }

  v20 = *(this + 12);
  if (v20)
  {
    PelScorer::beginOnlineCTPelSyncRecog(v20, a4, a8);
  }

  *(this + 3) = a3;
  *(this + 4) = a4;
  PelMgr::verifyFeatureDimension(*(this + 2), *(this + 6), a4, a2, 0, *(this + 8), *(this + 9), *(this + 7));
  *(this + 28) = *(*(this + 2) + 132);
  PelScorer::initFeatureCache(this);
  *(this + 129) = a5;
  v23 = *(this + 15);

  PelScoreCache::beginPelScoreCacheSyncRecog(v23, a6, a5, a9, a10, a11, a8, v21, v22);
}

void PelScorer::beginFmpePelSyncRecog(PelScorer *this)
{
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 28) = *(*(this + 2) + 132);
  *(this + 38) = -16;
  *(this + 34) = 0x100000001;
  *(this + 76) = 0;
  *(this + 80) = 0;
  *(this + 284) = 0x100000001;
  PelScorer::initFeatureCacheForSlots(this);
  *(this + 129) = 0;
}

void PelScorer::beginOnlineCTPelSyncRecog(PelScorer *this, const CTFTMgr *a2, double a3)
{
  *(this + 3) = 0;
  *(this + 4) = a2;
  *(this + 28) = *(*(this + 2) + 132);
  *(this + 76) = 0;
  *(this + 80) = 0;
  *(this + 284) = 0x100000001;
  PelScorer::initFeatureCacheForSlots(this);
  *(this + 129) = 0;
  v7 = *(this + 15);

  PelScoreCache::beginPelScoreCacheSyncRecog(v7, 0, 0, 0, 0, 0, a3, v5, v6);
}

uint64_t PelScorer::initFeatureCache(PelScorer *this)
{
  *(this + 38) = -16;
  v2 = *(this + 4);
  *(this + 68) = *(v2 + 56);
  *(this + 69) = *(v2 + 136);
  v3 = *(*(this + 2) + 140);
  v4 = *(this + 77);
  if (v3 > v4)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 296, v3 - v4, 0);
  }

  *(this + 76) = v3;
  v5 = *(this + 81);
  if (v3 > v5)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 312, v3 - v5, 0);
  }

  *(this + 80) = v3;
  *(this + 72) = 0;
  *(this + 71) = 0;
  v6 = *(this + 68);
  if (v6 <= 1)
  {
    v6 = 1;
  }

  v7 = *(this + 70);
  if (v7 <= 1)
  {
    v7 = 1;
  }

  v8 = v7 * v6;
  v50 = 0;
  v51 = 0;
  if (v8)
  {
    v48 = 0;
    v9 = realloc_array(0, &v48, 4 * v7 * v6, 0, 0, 1);
    v50 = v48;
    LODWORD(v51) = v8;
    HIDWORD(v51) = v9 >> 2;
    v10 = (v8 + 3) & 0x1FFFFFFFCLL;
    v11 = vdupq_n_s64(v8 - 1);
    v12 = xmmword_26286BF80;
    v13 = xmmword_26286B680;
    v14 = v48 + 8;
    v15 = vdupq_n_s64(4uLL);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v11, v13));
      if (vuzp1_s16(v16, *v11.i8).u8[0])
      {
        *(v14 - 2) = v8;
      }

      if (vuzp1_s16(v16, *&v11).i8[2])
      {
        *(v14 - 1) = v8;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v12))).i32[1])
      {
        *v14 = v8;
        v14[1] = v8;
      }

      v12 = vaddq_s64(v12, v15);
      v13 = vaddq_s64(v13, v15);
      v14 += 4;
      v10 -= 4;
    }

    while (v10);
  }

  else
  {
    LODWORD(v51) = 0;
  }

  v17 = *(this + 69);
  if (v17 <= 1)
  {
    v17 = 1;
  }

  v18 = v17 * v8;
  v48 = 0;
  v49 = 0;
  if (v18)
  {
    v52 = 0;
    v19 = realloc_array(0, &v52, 4 * v17 * v8, 0, 0, 1);
    v20 = v52;
    v48 = v52;
    LODWORD(v49) = v18;
    HIDWORD(v49) = v19 >> 2;
    v21 = (v18 + 3) & 0x1FFFFFFFCLL;
    v22 = vdupq_n_s64(v18 - 1);
    v23 = xmmword_26286BF80;
    v24 = xmmword_26286B680;
    v25 = v52 + 8;
    v26 = vdupq_n_s64(4uLL);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v22, v24));
      if (vuzp1_s16(v27, *v22.i8).u8[0])
      {
        *(v25 - 2) = v18;
      }

      if (vuzp1_s16(v27, *&v22).i8[2])
      {
        *(v25 - 1) = v18;
      }

      if (vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, *&v23))).i32[1])
      {
        *v25 = v18;
        v25[1] = v18;
      }

      v23 = vaddq_s64(v23, v26);
      v24 = vaddq_s64(v24, v26);
      v25 += 4;
      v21 -= 4;
    }

    while (v21);
  }

  else
  {
    v20 = 0;
    LODWORD(v49) = 0;
  }

  v28 = *(this + 70);
  if (v28 <= 1)
  {
    v28 = 1;
  }

  v29 = *(this + 69);
  if (v29 <= 1)
  {
    v29 = 1;
  }

  if (v3)
  {
    v30 = 0;
    v31 = (this + 284);
    v33 = *(this + 5);
    v32 = *(this + 6);
    v34 = *(this + 4);
    v35 = v50;
    v36 = *(this + 39);
    v37 = *(this + 37);
    do
    {
      if (v32)
      {
        v38 = *(*(v32 + 48) + 2 * v30);
      }

      else
      {
        v38 = -1;
      }

      if (*(v34 + 56))
      {
        v39 = *(*(v34 + 24) + 4 * *(*(v33 + 136) + 4 * v30));
      }

      else
      {
        v39 = -1;
      }

      if (*(v34 + 136))
      {
        v40 = *(*(v34 + 40) + 4 * *(*(v33 + 168) + 4 * v30));
      }

      else
      {
        v40 = -1;
      }

      v41 = (v38 & ~(v38 >> 31)) + (v39 & ~(v39 >> 31)) * v28;
      v42 = v35[v41];
      if (v42 == v8)
      {
        v43 = *(this + 72);
        v35[v41] = v43;
        *(this + 72) = v43 + 1;
        v42 = v35[v41];
      }

      *(v36 + 4 * v30) = v42;
      v44 = (v40 & ~(v40 >> 31)) + v41 * v29;
      v45 = v20[v44];
      if (v45 == v18)
      {
        v46 = *v31;
        v20[v44] = *v31;
        *v31 = v46 + 1;
        v45 = v20[v44];
      }

      *(v37 + 4 * v30++) = v45;
    }

    while (v3 > v30);
  }

  PelScorer::initFeatureCacheForSlots(this);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v48);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v50);
}

void sub_262835528(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  _Unwind_Resume(a1);
}

void PelScorer::endPelSyncRecogBase(PelScorer *this)
{
  *(this + 130) = 0;
  PelScoreCache::endPelScoreCacheSyncRecog(*(this + 15));
  *(this + 129) = 0;
  PelScorer::deleteFeatureCache(this);
  *(this + 3) = 0;
  *(this + 4) = 0;
  if (*(this + 7))
  {
    v2 = *(this + 11);
    PelScorer::deleteFeatureCache(v2);
    *(v2 + 3) = 0;
    *(v2 + 4) = 0;
  }

  v3 = *(this + 12);
  if (v3)
  {
    v3[3] = 0;
    v3[4] = 0;
    v4 = v3[15];

    PelScoreCache::endPelScoreCacheSyncRecog(v4);
  }
}

double PelScorer::deleteFeatureCache(PelScorer *this)
{
  *(this + 38) = -16;
  *(this + 34) = 0;
  *(this + 284) = 0;
  v2 = *(this + 37);
  if (v2)
  {
    MemChunkFree(v2, 0);
    *(this + 37) = 0;
  }

  *(this + 38) = 0;
  v3 = *(this + 39);
  if (v3)
  {
    MemChunkFree(v3, 0);
    *(this + 39) = 0;
  }

  *(this + 40) = 0;
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 352);
  v4 = *(this + 22);
  if (v4)
  {
    MemChunkFree(v4, 0);
    *(this + 22) = 0;
  }

  *(this + 23) = 0;
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 368);
  v5 = *(this + 48);
  if (v5)
  {
    MemChunkFree(v5, 0);
    *(this + 48) = 0;
  }

  *(this + 49) = 0;
  v6 = *(this + 50);
  if (v6)
  {
    MemChunkFree(v6, 0);
    *(this + 50) = 0;
  }

  *(this + 51) = 0;
  v7 = *(this + 56);
  if (v7)
  {
    MemChunkFree(v7, 0);
    *(this + 56) = 0;
  }

  *(this + 57) = 0;
  v8 = *(this + 52);
  if (v8)
  {
    MemChunkFree(v8, 0);
    *(this + 52) = 0;
  }

  *(this + 53) = 0;
  v9 = *(this + 54);
  if (v9)
  {
    MemChunkFree(v9, 0);
    *(this + 54) = 0;
  }

  *(this + 55) = 0;
  v10 = *(this + 73);
  if (v10)
  {
    MemChunkFree(v10, 0);
    *(this + 73) = 0;
  }

  *(this + 74) = 0;
  v11 = *(this + 67);
  if (v11)
  {
    MemChunkFree(v11, 0);
    *(this + 67) = 0;
  }

  *(this + 68) = 0;
  v12 = *(this + 69);
  if (v12)
  {
    MemChunkFree(v12, 0);
    *(this + 69) = 0;
  }

  *(this + 70) = 0;
  v13 = *(this + 71);
  if (v13)
  {
    MemChunkFree(v13, 0);
    *(this + 71) = 0;
  }

  *(this + 72) = 0;
  v14 = *(this + 78);
  if (v14)
  {
    MemChunkFree(v14, 0);
    *(this + 78) = 0;
  }

  result = 0.0;
  *(this + 79) = 0;
  return result;
}

void PelScorer::endFmpePelSyncRecog(PelScorer *this)
{
  PelScorer::deleteFeatureCache(this);
  *(this + 3) = 0;
  *(this + 4) = 0;
}

void PelScorer::initFeatureCacheForSlots(PelScorer *this)
{
  v2 = *(this + 71);
  v3 = *(this + 91);
  if (v2 > v3)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 352, v2 - v3, 0);
  }

  v4 = *(this + 90);
  if (v4 <= v2)
  {
    if (v4 < v2)
    {
      v7 = v2 - v4;
      v8 = 16 * v4;
      do
      {
        v9 = (*(this + 44) + v8);
        *v9 = 0;
        v9[1] = 0;
        v8 += 16;
        --v7;
      }

      while (v7);
    }
  }

  else if (v4 > v2)
  {
    v5 = v4;
    v6 = 16 * v4 - 16;
    do
    {
      --v5;
      DgnPrimArray<unsigned int>::~DgnPrimArray(*(this + 44) + v6);
      v6 -= 16;
    }

    while (v5 > v2);
  }

  *(this + 90) = v2;
  v10 = *(this + 72);
  v11 = *(this + 95);
  if (v10 > v11)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 368, v10 - v11, 0);
  }

  v12 = *(this + 94);
  if (v12 <= v10)
  {
    if (v12 < v10)
    {
      v15 = v10 - v12;
      v16 = 16 * v12;
      do
      {
        v17 = (*(this + 46) + v16);
        *v17 = 0;
        v17[1] = 0;
        v16 += 16;
        --v15;
      }

      while (v15);
    }
  }

  else if (v12 > v10)
  {
    v13 = v12;
    v14 = 16 * v12 - 16;
    do
    {
      --v13;
      DgnPrimArray<unsigned int>::~DgnPrimArray(*(this + 46) + v14);
      v14 -= 16;
    }

    while (v13 > v10);
  }

  *(this + 94) = v10;
  v18 = *(this + 72);
  v19 = *(this + 99);
  if (v18 > v19)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 384, v18 - v19, 0);
  }

  *(this + 98) = v18;
  v20 = *(this + 71);
  if (*(this + 103) >= v20)
  {
    *(this + 102) = v20;
    if (!v20)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v57 = 0;
    *(this + 103) = realloc_array(*(this + 50), &v57, v20, *(this + 102), *(this + 102), 1);
    *(this + 50) = v57;
    *(this + 102) = v20;
  }

  bzero(*(this + 50), v20);
LABEL_27:
  v21 = *(this + 71);
  v22 = *(this + 159);
  if (v21 > v22)
  {
    DgnPrimArray<short>::reallocElts(this + 624, v21 - v22, 0);
  }

  *(this + 158) = v21;
  v23 = *(this + 2);
  if (*(v23 + 16))
  {
    v24 = (*(this + 29) + 1) & 0xFFFFFFFE;
    v25 = *(v23 + 12);
    if (v25 == 1)
    {
      v33 = *(this + 71);
      v34 = ((((v24 + 7) | 7) + *(this + 28)) | 7) * v33;
      v35 = *(this + 149);
      if (v34 > v35)
      {
        DgnPrimArray<short>::reallocElts(this + 584, v34 - v35, 0);
        v33 = *(this + 71);
      }

      *(this + 148) = v34;
      *(this + 150) = (((*(this + 146) + 15) & 0xFFFFFFF0) - *(this + 146)) >> 1;
      v36 = *(this + 137);
      v37 = v33;
      if (v33 > v36)
      {
        DgnPrimArray<unsigned int>::reallocElts(this + 536, v33 - v36, 0);
        v37 = *(this + 71);
      }

      *(this + 136) = v33;
      v38 = *(this + 141);
      if (v37 > v38)
      {
        DgnPrimArray<unsigned int>::reallocElts(this + 552, v37 - v38, 0);
      }

      v39 = *(this + 140);
      if (v39 < v37)
      {
        bzero((*(this + 69) + 4 * v39), 4 * (v37 + ~v39) + 4);
      }

      *(this + 140) = v37;
      v40 = *(this + 71);
      v41 = *(this + 145);
      if (v40 > v41)
      {
        DgnPrimArray<unsigned int>::reallocElts(this + 568, v40 - v41, 0);
      }

      v42 = *(this + 144);
      if (v42 < v40)
      {
        bzero((*(this + 71) + 4 * v42), 4 * (v40 + ~v42) + 4);
      }

      *(this + 144) = v40;
    }

    else if (v25 == 2)
    {
      v26 = *(this + 71);
      v27 = (*(this + 28) + v24) * v26;
      v28 = *(this + 115);
      if (v27 > v28)
      {
        DgnPrimArray<unsigned long long>::reallocElts(this + 448, v27 - v28, 0);
        v26 = *(this + 71);
      }

      *(this + 114) = v27;
      v29 = *(this + 107);
      v30 = v26;
      if (v26 > v29)
      {
        DgnPrimArray<unsigned long long>::reallocElts(this + 416, v26 - v29, 0);
        v30 = *(this + 71);
      }

      *(this + 106) = v26;
      v31 = *(this + 111);
      if (v30 > v31)
      {
        DgnPrimArray<unsigned long long>::reallocElts(this + 432, v30 - v31, 0);
      }

      *(this + 110) = v30;
    }

    return;
  }

  v32 = *(v23 + 12);
  if (v32 > 1)
  {
    if (v32 == 3)
    {
LABEL_63:
      v47 = ((*(this + 28) + 7) & 0xFFFFFFF8) * *(this + 71);
      v48 = *(this + 149);
      if ((v47 | 7) > v48)
      {
        DgnPrimArray<short>::reallocElts(this + 584, (v47 | 7) - v48, 0);
      }

      *(this + 148) = v47 | 7;
      v49 = *(this + 73);
      v50 = (((v49 + 15) & 0xFFFFFFF0) - v49) >> 1;
      *(this + 150) = v50;
      bzero(v49, v50);
      bzero((*(this + 73) + 2 * v47), (7 - *(this + 150)));
      v51 = *(this + 71);
      v52 = *(this + 137);
      if (v51 > v52)
      {
        DgnPrimArray<unsigned int>::reallocElts(this + 536, v51 - v52, 0);
      }

      *(this + 136) = v51;
      return;
    }

    if (v32 == 2)
    {
      v43 = *(this + 71);
      v44 = *(this + 28) * v43;
      v45 = *(this + 115);
      if (v44 > v45)
      {
        DgnPrimArray<unsigned long long>::reallocElts(this + 448, v44 - v45, 0);
        v43 = *(this + 71);
      }

      *(this + 114) = v44;
      v46 = *(this + 107);
      if (v43 > v46)
      {
        DgnPrimArray<unsigned long long>::reallocElts(this + 416, v43 - v46, 0);
      }

      *(this + 106) = v43;
    }
  }

  else
  {
    if (v32)
    {
      if (v32 != 1)
      {
        return;
      }

      goto LABEL_63;
    }

    v53 = *(this + 71);
    v54 = *(this + 28) * v53;
    v55 = *(this + 129);
    if (v54 > v55)
    {
      DgnPrimArray<unsigned long long>::reallocElts(this + 504, v54 - v55, 0);
      v53 = *(this + 71);
    }

    *(this + 128) = v54;
    v56 = *(this + 125);
    if (v53 > v56)
    {
      DgnPrimArray<unsigned int>::reallocElts(this + 488, v53 - v56, 0);
    }

    *(this + 124) = v53;
  }
}

uint64_t PelScorer::setupForUttAccumulate(unint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*(*(a1 + 16) + 16) == 1)
  {
    PelScorer::getMICFeatures(a1, a2, (a3 + 16));
    v5 = *(a1 + 264);

    return PelScorer::setFrameStaticsMic(a1, 0, a2, (a1 + 248), v5, 0, 1);
  }

  else
  {

    return PelScorer::setFrameStaticsNoMic(a1, 0, a2, 0, 1);
  }
}

unint64_t PelScorer::getMICFeatures(unint64_t result, uint64_t *a2, _DWORD *a3)
{
  v5 = result;
  v6 = *(result + 112);
  v7 = *(result + 16);
  v8 = *(v7 + 152);
  v9 = (v8 + 1) & 0xFFFFFFFE;
  v10 = *(result + 260);
  if (v9 > v10)
  {
    result = DgnPrimArray<short>::reallocElts(result + 248, v9 - v10, 0);
    v7 = *(v5 + 16);
  }

  *(v5 + 256) = v9;
  v11 = *(v7 + 12);
  if (v11 == 1)
  {
    result = PelScorer::MICFeaturesFunction(v5, a2);
  }

  else if (v11 == 2)
  {
    v49 = 0;
    v50 = 0;
    if (v8)
    {
      v47 = 0;
      v12 = realloc_array(0, &v47, 8 * v8, 0, 0, 1);
      v48 = 0;
      v49 = v47;
      LODWORD(v50) = v8;
      HIDWORD(v50) = v12 >> 3;
      v47 = 0;
      v45 = 0;
      v13 = realloc_array(0, &v45, 4 * v8, 0, 0, 1);
      v46 = 0;
      v47 = v45;
      LODWORD(v48) = v8;
      HIDWORD(v48) = v13 >> 2;
      v44 = a3;
      v45 = 0;
      v51 = 0;
      v14 = realloc_array(0, &v51, 4 * v8, 0, 0, 1);
      v16 = 0;
      v17 = v6 + 3;
      v18 = (v6 + 3) & 0xFFFFFFFC;
      v45 = v51;
      LODWORD(v46) = v8;
      HIDWORD(v46) = v14 >> 2;
      v19 = *(v5 + 16);
      v20 = 32;
      do
      {
        v21 = 0;
        v22 = v49;
        v49[v16] = 0;
        if (v17 >= 4)
        {
          v23 = 0;
          v24 = 0;
          v25 = v19[25] + 24 * v16;
          v26 = 0.0;
          v27 = v17 & 0xFFFFFFFC;
          v28 = 4 * v18;
          do
          {
            v29 = 0;
            v30 = *a2;
            v31 = v23;
            do
            {
              v32 = 0.0;
              if (4 * v24 < v18)
              {
                v33 = v27;
                v34 = v31;
                do
                {
                  LOBYTE(v15) = *(v30 + *(v19[27] + v34));
                  v15 = *&v15;
                  v32 = v32 + v15 * *(*v25 + 2 * (*(v25 + 16) + v34));
                  v34 += 4;
                  --v33;
                }

                while (v33);
              }

              v26 = v26 + v32 * v32;
              *&v22[v16] = v26;
              ++v29;
              ++v31;
            }

            while (v29 != 4);
            ++v24;
            v23 += v28;
            v28 -= 16;
            v27 -= 4;
          }

          while (v24 != (v6 + 3) >> 2);
          v21 = (v26 + 0.5);
        }

        UnscaleBits = BinaryIntScale::getUnscaleBits(v21, 14);
        *(v47 + v16) = UnscaleBits;
        v19 = *(v5 + 16);
        v36 = 2 * *(v19[21] + 4 * v16) - UnscaleBits;
        *(v45 + v16) = v36;
        if (v20 >= v36)
        {
          v20 = v36;
        }

        ++v16;
      }

      while (v16 != v8);
      v37 = *(*(v5 + 16) + 168);
      v38 = v49;
      v39 = *(v5 + 248);
      v40 = v8;
      do
      {
        v41 = *v37++;
        v42 = 1.0 / (1 << (2 * v41 - v20));
        v43 = *v38++;
        *v39++ = (v42 * v43 + 0.5);
        --v40;
      }

      while (v40);
      a3 = v44;
    }

    else
    {
      v47 = 0;
      v48 = 0;
      v45 = 0;
      v20 = 32;
      v46 = 0;
    }

    *(v5 + 264) = v20;
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v45);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v47);
    result = DgnPrimArray<unsigned int>::~DgnPrimArray(&v49);
  }

  *a3 += *(*(v5 + 16) + 156) * v8;
  return result;
}

void sub_262836020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  _Unwind_Resume(a1);
}

uint64_t PelScorer::setFrameStaticsMic(uint64_t result, unsigned int a2, unsigned __int8 **a3, unsigned __int16 **a4, uint64_t a5, int a6, int a7)
{
  v12 = result;
  if (a7)
  {
    v13 = *(result + 16);
    if (*(v13 + 536))
    {
      v14 = *(result + 152);
      result = FrameDecisionTree::classifyFrame((v13 + 528), a3);
      *(*(v12 + 624) + 2 * a2) = result;
      *(v12 + 640) = result;
    }
  }

  v15 = *(v12 + 116) + 1;
  v16 = v15 & 0xFFFFFFFE;
  v17 = *(*(v12 + 16) + 12);
  if (v17 == 1)
  {
    v33 = *(v12 + 112);
    v34 = (v33 + 7) & 0xFFFFFFF8;
    v35 = (v16 + 7) & 0xFFFFFFF8;
    v36 = *(v12 + 600);
    v37 = (v34 + v35) * a2;
    if (v33)
    {
      v38 = *a3;
      v39 = *(v12 + 584);
      v40 = v36 + v37;
      result = *(v12 + 112);
      do
      {
        v41 = *v38++;
        *(v39 + 2 * v40++) = v41;
        --result;
      }

      while (result);
    }

    if (v33 < v34)
    {
      v42 = *(v12 + 584);
      v43 = v33 + v36 + v37;
      v44 = v33 - v34;
      do
      {
        *(v42 + 2 * v43++) = 0;
      }

      while (!__CFADD__(v44++, 1));
    }

    if (v16)
    {
      v46 = *a4;
      v47 = *(v12 + 584);
      v48 = v36 + v37 + v34;
      v49 = v15 & 0xFFFFFFFE;
      do
      {
        v50 = *v46++;
        result = v50;
        *(v47 + 2 * v48++) = v50;
        --v49;
      }

      while (v49);
    }

    if (v16 < v35)
    {
      v51 = *(v12 + 584);
      v52 = v36 + v37 + v34 + (v15 & 0xFFFFFFFE);
      v53 = v35 - v16;
      do
      {
        *(v51 + 2 * v52++) = 0;
        --v53;
      }

      while (v53);
    }

    v54 = v37 + v36;
    v55 = *(v12 + 536);
    v30 = a2;
    *(v55 + 4 * a2) = a6;
    v56 = *(v12 + 552);
    if ((a5 & 0x80000000) != 0)
    {
      *(v56 + 4 * a2) = 0;
      v57 = *(v12 + 568);
      *(v57 + 4 * a2) = -a5;
    }

    else
    {
      *(v56 + 4 * a2) = a5;
      v57 = *(v12 + 568);
      *(v57 + 4 * a2) = 0;
    }

    *(v12 + 616) = *(v12 + 584) + 2 * v54;
    *(v12 + 604) = *(v55 + 4 * a2);
    *(v12 + 608) = *(v56 + 4 * a2);
    *(v12 + 612) = *(v57 + 4 * a2);
  }

  else if (v17 == 2)
  {
    v18 = *(v12 + 112);
    v19 = (v18 + v16) * a2;
    if (v18)
    {
      v20 = *a3;
      v21 = *(v12 + 448);
      v22 = *(v12 + 112);
      v23 = (v18 + v16) * a2;
      do
      {
        v24 = *v20++;
        *(v21 + 8 * v23++) = v24;
        --v22;
      }

      while (v22);
    }

    if (v16)
    {
      v25 = *a4;
      v26 = *(v12 + 448);
      v27 = v18 + v19;
      do
      {
        v28 = *v25++;
        *(v26 + 8 * v27++) = v28;
        --v16;
      }

      while (v16);
    }

    v29 = *(v12 + 416);
    *(v29 + 8 * a2) = a6;
    v30 = a2;
    v31 = *(v12 + 432);
    *&v32 = 0x3FF0000000000000 - (a5 << 52);
    if (a5 < 0)
    {
      v32 = (1 << -a5);
    }

    *(v31 + 8 * a2) = v32;
    *(v12 + 480) = *(v12 + 448) + 8 * v19;
    *(v12 + 464) = *(v29 + 8 * a2);
    *(v12 + 472) = *(v31 + 8 * a2);
  }

  else
  {
    v30 = a2;
  }

  *(*(v12 + 400) + v30) = 1;
  return result;
}

uint64_t PelScorer::setFrameStaticsNoMic(uint64_t result, unsigned int a2, unsigned __int8 **a3, int a4, int a5)
{
  v8 = result;
  if (a5)
  {
    v9 = *(result + 16);
    if (*(v9 + 536))
    {
      v10 = *(result + 152);
      result = FrameDecisionTree::classifyFrame((v9 + 528), a3);
      *(*(v8 + 624) + 2 * a2) = result;
      *(v8 + 640) = result;
    }
  }

  v11 = *(*(v8 + 16) + 12);
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v31 = *(v8 + 112);
      v32 = v31 * a2;
      if (v31)
      {
        v33 = *a3;
        v34 = *(v8 + 448);
        v35 = v31 * a2;
        do
        {
          v36 = *v33++;
          *(v34 + 8 * v35++) = v36;
          --v31;
        }

        while (v31);
      }

      else
      {
        v34 = *(v8 + 448);
      }

      v12 = a2;
      *(*(v8 + 416) + 8 * a2) = a4;
      *(v8 + 480) = v34 + 8 * v32;
      *(v8 + 464) = a4;
      goto LABEL_28;
    }

    if (v11 != 3)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  if (v11)
  {
    if (v11 != 1)
    {
LABEL_7:
      v12 = a2;
      goto LABEL_28;
    }

LABEL_10:
    v13 = *(v8 + 112);
    v14 = (v13 + 7) & 0xFFFFFFF8;
    v15 = *(v8 + 600);
    v16 = v14 * a2;
    if (v13)
    {
      v17 = *a3;
      v18 = *(v8 + 584);
      v19 = v15 + v16;
      v20 = *(v8 + 112);
      do
      {
        v21 = *v17++;
        *(v18 + 2 * v19++) = v21;
        --v20;
      }

      while (v20);
    }

    v22 = v16 + v15;
    v23 = *(v8 + 584);
    if (v13 < v14)
    {
      v24 = v13 + v15 + v16;
      v25 = v13 - v14;
      do
      {
        *(v23 + 2 * v24++) = 0;
      }

      while (!__CFADD__(v25++, 1));
    }

    v12 = a2;
    *(*(v8 + 536) + 4 * a2) = a4;
    *(v8 + 616) = v23 + 2 * v22;
    *(v8 + 604) = a4;
    goto LABEL_28;
  }

  v27 = *(v8 + 112);
  if (v27)
  {
    v28 = 0;
    v29 = *(*(v8 + 80) + 56);
    v30 = v27 * a2;
    do
    {
      *(*(v8 + 504) + 8 * v30++) = v29 + 2 * (*a3)[v28++];
    }

    while (v27 != v28);
  }

  v12 = a2;
  *(*(v8 + 488) + 4 * a2) = a4;
  *(v8 + 528) = *(v8 + 504) + 8 * v27 * a2;
  *(v8 + 520) = a4;
LABEL_28:
  *(*(v8 + 400) + v12) = 1;
  return result;
}

unint64_t PelScorer::beginPelFrameBase(uint64_t a1, int a2, int a3, uint64_t a4, PelStats *a5, char a6)
{
  PelScorer::resetFeatureCache(a1);
  *(a1 + 152) = a2;
  DgnPrimArray<unsigned char>::copyArraySlice(a1 + 160, a4, 0, *(a4 + 8));
  if (*(a1 + 284) <= 1u)
  {
    if (*(a1 + 24))
    {
      PelScorer::setFrameStaticsForGenoneAdapt(a1, 0, a3, a5, v12, v13, v14, v15);
    }

    else
    {
      (*(*a1 + 96))(a1, 0, a5);
    }
  }

  v16 = *(a1 + 120);
  v17 = *(a1 + 152);

  return PelScoreCache::beginPelScoreCacheFrame(v16, v17, a6);
}

uint64_t PelScorer::resetFeatureCache(uint64_t this)
{
  v1 = *(this + 284);
  if (v1)
  {
    v2 = *(this + 400);
    v3 = (*(this + 352) + 8);
    do
    {
      *v3 = 0;
      v3 += 4;
      *v2++ = 0;
      --v1;
    }

    while (v1);
  }

  *(this + 184) = 0;
  v4 = *(this + 288);
  if (v4)
  {
    v5 = (v4 + 3) & 0x1FFFFFFFCLL;
    v6 = vdupq_n_s64(v4 - 1);
    v7 = xmmword_26286BF80;
    v8 = xmmword_26286B680;
    v9 = (*(this + 368) + 40);
    v10 = vdupq_n_s64(4uLL);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v6, v8));
      if (vuzp1_s16(v11, *v6.i8).u8[0])
      {
        *(v9 - 8) = 0;
      }

      if (vuzp1_s16(v11, *&v6).i8[2])
      {
        *(v9 - 4) = 0;
      }

      if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v7))).i32[1])
      {
        *v9 = 0;
        v9[4] = 0;
      }

      v7 = vaddq_s64(v7, v10);
      v8 = vaddq_s64(v8, v10);
      v9 += 16;
      v5 -= 4;
    }

    while (v5);
  }

  return this;
}

uint64_t PelScorer::setFrameStaticsForGenoneAdapt(PelScorer *this, unsigned int a2, int a3, PelStats *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(*(this + 37) + 4 * a2);
  if (*(*(this + 50) + v9) != 1)
  {
    PelScorer::getTransformedFeatures_Adapt_Cache(this, a2, a3, *(this + 44) + 16 * v9, a4, a6, a7, a8);
    v13 = *(this + 44) + 16 * v9;
    if (*(*(this + 2) + 16) == 1)
    {
      PelScorer::getMICFeatures(this, (*(this + 44) + 16 * v9), a4 + 4);
      PelScorer::setFrameStaticsMic(this, v9, (*(this + 44) + 16 * v9), this + 31, *(this + 66), 0, 0);
    }

    else
    {
      PelScorer::setFrameStaticsNoMic(this, v9, (*(this + 44) + 16 * v9), 0, 0);
    }

    return *(this + 44) + 16 * v9;
  }

  v10 = *(*(this + 2) + 12);
  if (*(*(this + 2) + 16) == 1)
  {
    if (v10 == 1)
    {
      *(this + 77) = *(this + 73) + 2 * (*(this + 150) + (((*(this + 29) + 7) & 0xFFFFFFF8) + ((*(this + 28) + 7) & 0xFFFFFFF8)) * v9);
      v14 = *(*(this + 69) + 4 * v9);
      *(this + 151) = *(*(this + 67) + 4 * v9);
      *(this + 152) = v14;
      *(this + 153) = *(*(this + 71) + 4 * v9);
    }

    else if (v10 == 2)
    {
      v11 = *(*(this + 52) + 8 * v9);
      *(this + 60) = *(this + 56) + 8 * ((*(this + 29) + *(this + 28)) * v9);
      *(this + 58) = v11;
      *(this + 59) = *(*(this + 54) + 8 * v9);
    }

    return *(this + 44) + 16 * v9;
  }

  if (v10 <= 1)
  {
    if (!v10)
    {
      *(this + 66) = *(this + 63) + 8 * (*(this + 28) * v9);
      *(this + 130) = *(*(this + 61) + 4 * v9);
      return *(this + 44) + 16 * v9;
    }

    if (v10 != 1)
    {
      return *(this + 44) + 16 * v9;
    }

    goto LABEL_16;
  }

  if (v10 == 3)
  {
LABEL_16:
    *(this + 77) = *(this + 73) + 2 * (*(this + 150) + ((*(this + 28) + 7) & 0xFFFFFFF8) * v9);
    *(this + 151) = *(*(this + 67) + 4 * v9);
    return *(this + 44) + 16 * v9;
  }

  if (v10 == 2)
  {
    *(this + 60) = *(this + 56) + 8 * (*(this + 28) * v9);
    *(this + 58) = *(*(this + 52) + 8 * v9);
  }

  return *(this + 44) + 16 * v9;
}

float *(*OnDemandPelScorer::getGenoneScoringFunction(OnDemandPelScorer *this))(float *result, unsigned int a2, unsigned int a3, unsigned __int16 *a4, unsigned int *a5)
{
  v1 = *(this + 2);
  v2 = *(v1 + 536);
  v5 = v1 + 12;
  v3 = *(v1 + 12);
  v4 = *(v5 + 4);
  result = FloatGenoneScoringFunction;
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        return result;
      }

      v7 = v2 == 0;
      if (v2)
      {
        v8 = PackedIntMICShortListGenoneScoringFunction;
      }

      else
      {
        v8 = PackedIntMICGenoneScoringFunction;
      }

      v9 = PackedIntShortListGenoneScoringFunction;
      v10 = PackedIntGenoneScoringFunction;
      goto LABEL_22;
    }

    v11 = MulTableShortListGenoneScoringFunction;
    if (!v2)
    {
      v11 = MulTableGenoneScoringFunction;
    }

LABEL_15:
    if (v4 == 1)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }

  if (v3 != 2)
  {
    if (v3 != 3)
    {
      return result;
    }

    if (v2)
    {
      v11 = 0;
    }

    else
    {
      v11 = QuantPerDimGenoneScoringFunction;
    }

    goto LABEL_15;
  }

  v7 = v2 == 0;
  if (v2)
  {
    v8 = FloatMICShortListGenoneScoringFunction;
  }

  else
  {
    v8 = FloatMICGenoneScoringFunction;
  }

  v9 = FloatShortListGenoneScoringFunction;
  v10 = FloatGenoneScoringFunction;
LABEL_22:
  if (v7)
  {
    v9 = v10;
  }

  if (v4 == 1)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

uint64_t MulTableShortListGenoneScoringFunction(uint64_t result, unsigned int a2, int a3, unsigned __int16 *a4, unsigned int *a5)
{
  v7 = result;
  v8 = *(result + 16);
  *a5 = 0;
  v9 = *(*(v8 + 584) + 4 * a2) + *(*(v8 + 600) + 2 * (*(result + 640) + ((*(v8 + 536) + 1) >> 1) * a2)) * a3;
  v10 = v9 + a3;
  if (v9 + a3 == -1)
  {
    v10 = *(v8 + 576);
  }

  if (v9 >= v10)
  {
    v11 = *(*(v8 + 584) + 4 * a2) + *(*(v8 + 600) + 2 * (*(result + 640) + ((*(v8 + 536) + 1) >> 1) * a2)) * a3;
    v12 = v10;
  }

  else
  {
    v11 = *(*(v8 + 584) + 4 * a2) + *(*(v8 + 600) + 2 * (*(result + 640) + ((*(v8 + 536) + 1) >> 1) * a2)) * a3;
    while (((*(*(v8 + 568) + 4 * (v11 >> 5)) >> v11) & 1) == 0)
    {
      if (++v11 >= v10)
      {
        goto LABEL_33;
      }
    }

    v12 = v11;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (1)
    {
      v14 = v12 - v9;
      v15 = *(v7 + 16);
      v16 = v15[33];
      result = PelMgr::getModelData(v15, a2);
      v17 = result + 2 * v16 * v14;
      v18 = *(v7 + 528);
      if (v16)
      {
        if (v16 < 1)
        {
LABEL_21:
          v25 = 0;
          goto LABEL_22;
        }

        v25 = 0;
        v26 = v16 - 1;
        do
        {
          v25 += *(*(v18 + 8 * v26) + 2 * *(v17 + 2 * v26));
          v27 = v26-- + 1;
        }

        while (v27 > 1);
      }

      else
      {
        v19 = (v16 >> 1);
        if (v19 < 1)
        {
          goto LABEL_21;
        }

        v20 = 0;
        v21 = 0;
        v22 = v19 - 1;
        v23 = 2 * v19 - 1;
        do
        {
          v21 += *(*(v18 + 8 * v22) + 2 * *(v17 + 2 * v22));
          v20 += *(*(v18 + 8 * v23) + 2 * *(v17 + 2 * v23));
          v24 = v22-- + 1;
          --v23;
        }

        while (v24 > 1);
        v25 = v20 + v21;
      }

LABEL_22:
      ++v13;
      if (v25 >= 20000)
      {
        v28 = 20000;
      }

      else
      {
        v28 = v25;
      }

      a4[v14] = v28;
      if (++v11 >= v10)
      {
        v12 = v10;
      }

      else
      {
        while (((*(*(v8 + 568) + 4 * (v11 >> 5)) >> v11) & 1) == 0)
        {
          if (v10 == ++v11)
          {
            goto LABEL_34;
          }
        }

        v12 = v11;
      }

      if (v11 >= v10)
      {
        goto LABEL_34;
      }
    }
  }

LABEL_33:
  v13 = 0;
LABEL_34:
  *a5 = v13;
  return result;
}

uint64_t MulTableGenoneScoringFunction(uint64_t result, unsigned int a2, unsigned int a3, unsigned __int16 *a4, unsigned int *a5)
{
  if (a3)
  {
    v9 = result;
    for (i = 0; i != a3; ++i)
    {
      v11 = *(v9 + 16);
      v12 = v11[33];
      result = PelMgr::getModelData(v11, a2);
      v13 = *(v9 + 528);
      if (v12)
      {
        if (v12 < 1)
        {
LABEL_12:
          v20 = 0;
          goto LABEL_13;
        }

        v20 = 0;
        v21 = v12 - 1;
        do
        {
          v20 += *(*(v13 + 8 * v21) + 2 * *(result + 2 * (v12 * i) + 2 * v21));
          v22 = v21-- + 1;
        }

        while (v22 > 1);
      }

      else
      {
        v14 = (v12 >> 1);
        if (v14 < 1)
        {
          goto LABEL_12;
        }

        v15 = 0;
        v16 = 0;
        v17 = v14 - 1;
        v18 = 2 * v14 - 1;
        do
        {
          v16 += *(*(v13 + 8 * v17) + 2 * *(result + 2 * (v12 * i) + 2 * v17));
          v15 += *(*(v13 + 8 * v18) + 2 * *(result + 2 * (v12 * i) + 2 * v18));
          v19 = v17-- + 1;
          --v18;
        }

        while (v19 > 1);
        v20 = v15 + v16;
      }

LABEL_13:
      if (v20 >= 20000)
      {
        v23 = 20000;
      }

      else
      {
        v23 = v20;
      }

      a4[i] = v23;
    }
  }

  *a5 = a3;
  return result;
}

double *FloatMICShortListGenoneScoringFunction(double *result, unsigned int a2, int a3, unsigned __int16 *a4, unsigned int *a5)
{
  v5 = *(result + 2);
  *a5 = 0;
  v6 = *(*(v5 + 584) + 4 * a2) + *(*(v5 + 600) + 2 * (*(result + 320) + ((*(v5 + 536) + 1) >> 1) * a2)) * a3;
  v7 = v6 + a3;
  if (v6 + a3 == -1)
  {
    v7 = *(v5 + 576);
  }

  if (v6 >= v7)
  {
    v8 = *(*(v5 + 584) + 4 * a2) + *(*(v5 + 600) + 2 * (*(result + 320) + ((*(v5 + 536) + 1) >> 1) * a2)) * a3;
    v9 = v7;
  }

  else
  {
    v8 = *(*(v5 + 584) + 4 * a2) + *(*(v5 + 600) + 2 * (*(result + 320) + ((*(v5 + 536) + 1) >> 1) * a2)) * a3;
    while (((*(*(v5 + 568) + 4 * (v8 >> 5)) >> v8) & 1) == 0)
    {
      if (++v8 >= v7)
      {
        goto LABEL_31;
      }
    }

    v9 = v8;
  }

  if (v8 < v7)
  {
    v10 = 0;
    v11 = *(v5 + 132);
    v12 = *(v5 + 152);
    v13 = *(v5 + 232) + *(v5 + 248) + *(*(v5 + 256) + 4 * a2) + 4 * v11;
    v14 = *(result + 60);
    v15 = result[59];
    result = &v14[(v11 - 1) + 1];
    while (1)
    {
      v16 = v9 - v6;
      v17 = (v13 + 4 * (v12 + 2 * v11 + 3) * v16);
      v18 = 0.0;
      v19 = 0.0;
      if (v11)
      {
        break;
      }

      v25 = v14;
      if (v12)
      {
        goto LABEL_18;
      }

LABEL_21:
      ++v10;
      v31 = v19 + v15 * v18 + *v17 + 0.5;
      v32 = v31 & ~(v31 >> 31);
      if (v32 >= 20000)
      {
        LOWORD(v32) = 20000;
      }

      a4[v16] = v32;
      if (++v8 >= v7)
      {
        v9 = v7;
      }

      else
      {
        while (((*(*(v5 + 568) + 4 * (v8 >> 5)) >> v8) & 1) == 0)
        {
          if (v7 == ++v8)
          {
            goto LABEL_32;
          }
        }

        v9 = v8;
      }

      if (v8 >= v7)
      {
        goto LABEL_32;
      }
    }

    v20 = v11;
    v21 = v14;
    do
    {
      v22 = *v17++;
      v23 = v22;
      v24 = *v21++;
      v19 = v19 + v23 * v24;
      --v20;
    }

    while (v20);
    v25 = &v14[(v11 - 1) + 1];
    if (!v12)
    {
      goto LABEL_21;
    }

LABEL_18:
    v18 = 0.0;
    v26 = v12;
    v27 = v17;
    do
    {
      v28 = *v27++;
      v29 = v28;
      v30 = *v25++;
      v18 = v18 + v29 * v30;
      --v26;
    }

    while (v26);
    v17 += (v12 - 1) + 1;
    goto LABEL_21;
  }

LABEL_31:
  v10 = 0;
LABEL_32:
  *a5 = v10;
  return result;
}

uint64_t FloatMICGenoneScoringFunction(uint64_t result, unsigned int a2, unsigned int a3, unsigned __int16 *a4, unsigned int *a5)
{
  if (a3)
  {
    v5 = 0;
    v6 = *(result + 16);
    v7 = *(v6 + 132);
    v8 = *(v6 + 152);
    v9 = *(v6 + 232) + *(v6 + 248) + *(*(v6 + 256) + 4 * a2) + 4 * v7;
    v10 = *(result + 480);
    v11 = *(result + 472);
    while (1)
    {
      v12 = (v9 + 4 * ((v8 + 2 * v7 + 3) * v5));
      v13 = 0.0;
      v14 = 0.0;
      if (v7)
      {
        break;
      }

      v20 = v10;
      if (v8)
      {
        goto LABEL_9;
      }

LABEL_12:
      v26 = v14 + v11 * v13 + *v12 + 0.5;
      v27 = v26 & ~(v26 >> 31);
      if (v27 >= 20000)
      {
        LOWORD(v27) = 20000;
      }

      a4[v5] = v27;
      result = v5 + 1;
      v5 = result;
      if (result == a3)
      {
        goto LABEL_15;
      }
    }

    v15 = v7;
    v16 = v10;
    do
    {
      v17 = *v12++;
      v18 = v17;
      v19 = *v16++;
      v14 = v14 + v18 * v19;
      --v15;
    }

    while (v15);
    v20 = &v10[(v7 - 1) + 1];
    if (!v8)
    {
      goto LABEL_12;
    }

LABEL_9:
    v13 = 0.0;
    v21 = v8;
    v22 = v12;
    do
    {
      v23 = *v22++;
      v24 = v23;
      v25 = *v20++;
      v13 = v13 + v24 * v25;
      --v21;
    }

    while (v21);
    v12 += (v8 - 1) + 1;
    goto LABEL_12;
  }

LABEL_15:
  *a5 = a3;
  return result;
}

uint64_t FloatShortListGenoneScoringFunction(uint64_t result, unsigned int a2, int a3, unsigned __int16 *a4, unsigned int *a5)
{
  v5 = *(result + 16);
  *a5 = 0;
  v6 = *(*(v5 + 584) + 4 * a2) + *(*(v5 + 600) + 2 * (*(result + 640) + ((*(v5 + 536) + 1) >> 1) * a2)) * a3;
  v7 = v6 + a3;
  if (v6 + a3 == -1)
  {
    v7 = *(v5 + 576);
  }

  if (v6 >= v7)
  {
    v8 = *(*(v5 + 584) + 4 * a2) + *(*(v5 + 600) + 2 * (*(result + 640) + ((*(v5 + 536) + 1) >> 1) * a2)) * a3;
    v9 = v7;
  }

  else
  {
    v8 = *(*(v5 + 584) + 4 * a2) + *(*(v5 + 600) + 2 * (*(result + 640) + ((*(v5 + 536) + 1) >> 1) * a2)) * a3;
    while (((*(*(v5 + 568) + 4 * (v8 >> 5)) >> v8) & 1) == 0)
    {
      if (++v8 >= v7)
      {
        goto LABEL_27;
      }
    }

    v9 = v8;
  }

  if (v8 >= v7)
  {
LABEL_27:
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v11 = *(v5 + 132);
    v12 = *(v5 + 232) + *(v5 + 248) + *(*(v5 + 256) + 4 * a2);
    v13 = *(result + 480);
    do
    {
      result = v9 - v6;
      v14 = (v12 + 4 * ((2 * v11) | 1) * result);
      v15 = 0.0;
      if (v11)
      {
        v16 = v13;
        v17 = v11;
        do
        {
          v18 = v14 + 2;
          v19 = *v16++;
          v15 = v15 + (v19 - *v14) * (v19 - *v14) * v14[1];
          v14 += 2;
          --v17;
        }

        while (v17);
        v14 = v18;
      }

      ++v10;
      v20 = (v15 + *v14 + 0.5);
      if (v20 >= 20000)
      {
        LOWORD(v20) = 20000;
      }

      a4[result] = v20;
      if (++v8 >= v7)
      {
        v9 = v7;
      }

      else
      {
        result = *(v5 + 568);
        while (((*(result + 4 * (v8 >> 5)) >> v8) & 1) == 0)
        {
          if (v7 == ++v8)
          {
            goto LABEL_28;
          }
        }

        v9 = v8;
      }
    }

    while (v8 < v7);
  }

LABEL_28:
  *a5 = v10;
  return result;
}

float *FloatGenoneScoringFunction(float *result, unsigned int a2, unsigned int a3, unsigned __int16 *a4, unsigned int *a5)
{
  if (a3)
  {
    v5 = 0;
    v6 = *(result + 2);
    v7 = *(v6 + 132);
    v8 = *(v6 + 232) + *(v6 + 248) + *(*(v6 + 256) + 4 * a2);
    v9 = *(result + 60);
    do
    {
      v10 = (v8 + 4 * ((2 * v7) | 1) * v5);
      v11 = 0.0;
      if (v7)
      {
        v12 = v9;
        v13 = v7;
        do
        {
          result = v10 + 2;
          v14 = *v12++;
          v11 = v11 + (v14 - *v10) * (v14 - *v10) * v10[1];
          v10 += 2;
          --v13;
        }

        while (v13);
        v10 = result;
      }

      v15 = (v11 + *v10 + 0.5);
      if (v15 >= 20000)
      {
        LOWORD(v15) = 20000;
      }

      a4[v5++] = v15;
    }

    while (v5 != a3);
  }

  *a5 = a3;
  return result;
}

uint64_t PackedIntMICShortListGenoneScoringFunction(uint64_t this, unsigned int a2, int a3, unsigned __int16 *a4, unsigned int *a5)
{
  v7 = this;
  v8 = *(this + 16);
  v16 = *(*(v8 + 488) + 32);
  *a5 = 0;
  v9 = *(*(v8 + 584) + 4 * a2) + *(*(v8 + 600) + 2 * (*(this + 640) + ((*(v8 + 536) + 1) >> 1) * a2)) * a3;
  v10 = v9 + a3;
  if (v9 + a3 == -1)
  {
    v10 = *(v8 + 576);
  }

  if (v9 >= v10)
  {
    v11 = *(*(v8 + 584) + 4 * a2) + *(*(v8 + 600) + 2 * (*(this + 640) + ((*(v8 + 536) + 1) >> 1) * a2)) * a3;
    v12 = v10;
  }

  else
  {
    v11 = *(*(v8 + 584) + 4 * a2) + *(*(v8 + 600) + 2 * (*(this + 640) + ((*(v8 + 536) + 1) >> 1) * a2)) * a3;
    while (((*(*(v8 + 568) + 4 * (v11 >> 5)) >> v11) & 1) == 0)
    {
      if (++v11 >= v10)
      {
        goto LABEL_22;
      }
    }

    v12 = v11;
  }

  if (v11 >= v10)
  {
LABEL_22:
    v13 = 0;
  }

  else
  {
    v13 = 0;
    do
    {
      v14 = v12 - v9;
      ++v13;
      this = PelScorer::getPackedIntMICComponentScore(v7, a2, v12 - v9);
      v15 = this >> v16;
      if (this >> v16 >= 20000)
      {
        LOWORD(v15) = 20000;
      }

      a4[v14] = v15;
      if (++v11 >= v10)
      {
        v12 = v10;
      }

      else
      {
        while (((*(*(v8 + 568) + 4 * (v11 >> 5)) >> v11) & 1) == 0)
        {
          if (v10 == ++v11)
          {
            goto LABEL_23;
          }
        }

        v12 = v11;
      }
    }

    while (v11 < v10);
  }

LABEL_23:
  *a5 = v13;
  return this;
}

PelScorer *PackedIntMICGenoneScoringFunction(PelScorer *this, unsigned int a2, unsigned int a3, unsigned __int16 *a4, unsigned int *a5)
{
  if (a3)
  {
    v9 = this;
    v10 = 0;
    v11 = *(*(*(this + 2) + 488) + 32);
    do
    {
      v12 = v10 + 1;
      this = PelScorer::getPackedIntMICComponentScore(v9, a2, v10);
      v13 = this >> v11;
      if (this >> v11 >= 20000)
      {
        LOWORD(v13) = 20000;
      }

      a4[v10++] = v13;
    }

    while (a3 != v12);
  }

  *a5 = a3;
  return this;
}

uint64_t PackedIntShortListGenoneScoringFunction(uint64_t result, uint64_t a2, int a3, unsigned __int16 *a4, unsigned int *a5)
{
  v7 = result;
  v8 = *(result + 16);
  v16 = *(*(v8 + 488) + 32);
  *a5 = 0;
  v9 = *(*(v8 + 584) + 4 * a2) + *(*(v8 + 600) + 2 * (*(result + 640) + ((*(v8 + 536) + 1) >> 1) * a2)) * a3;
  v10 = v9 + a3;
  if (v9 + a3 == -1)
  {
    v10 = *(v8 + 576);
  }

  if (v9 >= v10)
  {
    v11 = *(*(v8 + 584) + 4 * a2) + *(*(v8 + 600) + 2 * (*(result + 640) + ((*(v8 + 536) + 1) >> 1) * a2)) * a3;
    v12 = v10;
  }

  else
  {
    v11 = *(*(v8 + 584) + 4 * a2) + *(*(v8 + 600) + 2 * (*(result + 640) + ((*(v8 + 536) + 1) >> 1) * a2)) * a3;
    while (((*(*(v8 + 568) + 4 * (v11 >> 5)) >> v11) & 1) == 0)
    {
      if (++v11 >= v10)
      {
        goto LABEL_22;
      }
    }

    v12 = v11;
  }

  if (v11 >= v10)
  {
LABEL_22:
    v13 = 0;
  }

  else
  {
    v13 = 0;
    do
    {
      v14 = v12 - v9;
      ++v13;
      result = (*(*v7 + 80))(v7, a2, v14);
      v15 = result >> v16;
      if (result >> v16 >= 20000)
      {
        LOWORD(v15) = 20000;
      }

      a4[v14] = v15;
      if (++v11 >= v10)
      {
        v12 = v10;
      }

      else
      {
        while (((*(*(v8 + 568) + 4 * (v11 >> 5)) >> v11) & 1) == 0)
        {
          if (v10 == ++v11)
          {
            goto LABEL_23;
          }
        }

        v12 = v11;
      }
    }

    while (v11 < v10);
  }

LABEL_23:
  *a5 = v13;
  return result;
}

uint64_t PackedIntGenoneScoringFunction(uint64_t result, uint64_t a2, unsigned int a3, unsigned __int16 *a4, unsigned int *a5)
{
  if (a3)
  {
    v9 = result;
    v10 = 0;
    v11 = *(*(*(result + 16) + 488) + 32);
    do
    {
      v12 = v10 + 1;
      result = (*(*v9 + 80))(v9, a2, v10);
      v13 = result >> v11;
      if (result >> v11 >= 20000)
      {
        LOWORD(v13) = 20000;
      }

      a4[v10++] = v13;
    }

    while (a3 != v12);
  }

  *a5 = a3;
  return result;
}

uint64_t QuantPerDimGenoneScoringFunction(uint64_t result, uint64_t a2, unsigned int a3, unsigned __int16 *a4, unsigned int *a5)
{
  if (a3)
  {
    v9 = result;
    v10 = 0;
    v11 = *(*(*(result + 16) + 488) + 32);
    do
    {
      v12 = v10 + 1;
      result = (*(*v9 + 88))(v9, a2, v10);
      v13 = result >> v11;
      if (result >> v11 >= 20000)
      {
        LOWORD(v13) = 20000;
      }

      a4[v10++] = v13;
    }

    while (a3 != v12);
  }

  *a5 = a3;
  return result;
}

uint64_t (*OnDemandPelScorer::getCompScoresToPelScoreFunction(OnDemandPelScorer *this))(const PelScorer *a1, unsigned int a2, const unsigned __int16 *a3, unsigned int *a4)
{
  v1 = *(this + 2);
  v2 = *(v1 + 536);
  v3 = *(v1 + 12);
  v4 = PackedIntCompScoresToPelScoreFunction;
  if (v3 <= 1)
  {
    if (!v3)
    {
      v5 = v2 == 0;
      v6 = MulTableShortListCompScoresToPelScoreFunction;
      v4 = MulTableCompScoresToPelScoreFunction;
LABEL_14:
      if (!v5)
      {
        return v6;
      }

      return v4;
    }

    if (v3 == 1)
    {
      v5 = v2 == 0;
      v6 = PackedIntShortListCompScoresToPelScoreFunction;
      v4 = PackedIntCompScoresToPelScoreFunction;
      goto LABEL_14;
    }

    return FloatCompScoresToPelScoreFunction;
  }

  if (v3 == 3)
  {
    return v4;
  }

  if (v3 != 2)
  {
    return FloatCompScoresToPelScoreFunction;
  }

  v7 = FloatCompScoresToPelScoreFunction;
  if (*(gParDiagnosticAttilaAcousticScoreScale + 48) != 0.0)
  {
    v7 = FloatAttilaCompatibleCompScoresToPelScoreFunction;
  }

  v4 = FloatShortListCompScoresToPelScoreFunction;
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t FloatShortListCompScoresToPelScoreFunction(const PelScorer *a1, unsigned int a2, const unsigned __int16 *a3, unsigned int *a4)
{
  v4 = *(a1 + 2);
  v5 = (*(v4 + 456) + 4 * a2);
  v6 = *(v4 + 344);
  v7 = *v5;
  v8 = v5[1] - v7;
  v9 = *(*(v4 + 288) + 2 * a2);
  *a4 = 0;
  v10 = *(*(v4 + 584) + 4 * v9) + v8 * *(*(v4 + 600) + 2 * (*(a1 + 320) + ((*(v4 + 536) + 1) >> 1) * v9));
  v11 = v10 + v8;
  if (v11 == -1)
  {
    v11 = *(v4 + 576);
  }

  if (v10 >= v11)
  {
    v12 = v10;
    v13 = v11;
  }

  else
  {
    v12 = v10;
    while (((*(*(v4 + 568) + 4 * (v12 >> 5)) >> v12) & 1) == 0)
    {
      if (++v12 >= v11)
      {
        goto LABEL_31;
      }
    }

    v13 = v12;
  }

  if (v12 >= v11)
  {
LABEL_31:
    v14 = 0;
    v18 = 20000;
  }

  else
  {
    v14 = 0;
    v15 = v6 + v7;
    v16 = 1;
    v17 = 20000;
    do
    {
      v18 = a3[v13 - v10] + *(v15 + v13 - v10);
      if ((v16 & 1) == 0)
      {
        if (*(a1 + 130) == 1)
        {
          if (v17 < v18)
          {
            v18 = v17;
          }
        }

        else
        {
          v20 = v18 - v17;
          v19 = v18 - v17 < 0;
          if (v18 >= v17)
          {
            v18 = v17;
          }

          if (v19)
          {
            v20 = -v20;
          }

          if (v20 < *(v4 + 512))
          {
            v18 -= *(*(v4 + 504) + 4 * v20);
          }
        }
      }

      ++v14;
      if (++v12 >= v11)
      {
        v13 = v11;
      }

      else
      {
        while (((*(*(v4 + 568) + 4 * (v12 >> 5)) >> v12) & 1) == 0)
        {
          if (v11 == ++v12)
          {
            goto LABEL_32;
          }
        }

        v13 = v12;
      }

      v16 = 0;
      v17 = v18;
    }

    while (v12 < v11);
  }

LABEL_32:
  v21 = *(a1 + 58) + 0.5;
  *a4 = v14;
  v22 = v18 + v21;
  if (v22 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v22;
  }
}

uint64_t FloatAttilaCompatibleCompScoresToPelScoreFunction(const PelScorer *a1, unsigned int a2, const unsigned __int16 *a3, unsigned int *a4, double a5, double a6, double a7)
{
  v8 = *(gParDiagnosticAttilaAcousticScoreScale + 48);
  v9 = *(a1 + 2);
  v10 = (*(v9 + 456) + 4 * a2);
  v11 = *v10;
  LODWORD(v10) = v10[1];
  v12 = 0.0;
  v13 = 0.0;
  v14 = (v10 - v11);
  if (v10 != v11)
  {
    v15 = a3;
    v16 = 0;
    v17 = (*(v9 + 344) + v11);
    do
    {
      LOBYTE(a6) = v17[v16];
      LOWORD(a7) = a3[v16];
      a7 = *&a7;
      a6 = (*&a6 + a7) / *(a1 + 13);
      if (a6 < v12 || v16 == 0)
      {
        v12 = a6;
      }

      ++v16;
    }

    while (v14 != v16);
    v13 = 0.0;
    do
    {
      v19 = *v17++;
      v20 = v19;
      v21 = *v15++;
      v22 = (v20 + v21) / *(a1 + 13);
      if (v22 - v12 <= 50.0)
      {
        v13 = v13 + DgnExp(v12 - v22);
      }

      --v14;
    }

    while (v14);
  }

  *&v23 = DgnLog(v13);
  v24 = v12 - *&v23;
  LODWORD(v23) = *(v9 + 132);
  v25 = (v8 * (v24 + v23 * DgnLog(12.5663706)) + 0.5) + (*(a1 + 58) + 0.5);
  if (v25 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v25;
  }
}

uint64_t FloatCompScoresToPelScoreFunction(const PelScorer *a1, unsigned int a2, const unsigned __int16 *a3, unsigned int *a4)
{
  v4 = *(a1 + 2);
  v5 = (*(v4 + 456) + 4 * a2);
  v6 = *v5;
  v7 = v5[1] - v6;
  if (v7)
  {
    v9 = (*(v4 + 344) + v6);
    v10 = 1;
    v8 = 20000;
    v11 = v7;
    do
    {
      v12 = v8;
      v14 = *v9++;
      v13 = v14;
      v15 = *a3++;
      v8 = v15 + v13;
      if ((v10 & 1) == 0)
      {
        if (*(a1 + 130) == 1)
        {
          if (v12 < v8)
          {
            v8 = v12;
          }
        }

        else
        {
          v17 = v8 - v12;
          v16 = v8 - v12 < 0;
          if (v8 >= v12)
          {
            v8 = v12;
          }

          if (v16)
          {
            v17 = -v17;
          }

          if (v17 < *(v4 + 512))
          {
            v8 -= *(*(v4 + 504) + 4 * v17);
          }
        }
      }

      v10 = 0;
      --v11;
    }

    while (v11);
  }

  else
  {
    v8 = 20000;
  }

  *a4 = v7;
  v18 = v8 + (*(a1 + 58) + 0.5);
  if (v18 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v18;
  }
}

uint64_t MulTableShortListCompScoresToPelScoreFunction(const PelScorer *a1, unsigned int a2, const unsigned __int16 *a3, unsigned int *a4)
{
  v4 = *(a1 + 2);
  v5 = (*(v4 + 456) + 4 * a2);
  v6 = *(v4 + 344);
  v7 = *v5;
  v8 = v5[1] - v7;
  v9 = *(*(v4 + 288) + 2 * a2);
  *a4 = 0;
  v10 = *(*(v4 + 584) + 4 * v9) + v8 * *(*(v4 + 600) + 2 * (*(a1 + 320) + ((*(v4 + 536) + 1) >> 1) * v9));
  v11 = v10 + v8;
  if (v11 == -1)
  {
    v11 = *(v4 + 576);
  }

  if (v10 >= v11)
  {
    v12 = v10;
    v13 = v11;
  }

  else
  {
    v12 = v10;
    while (((*(*(v4 + 568) + 4 * (v12 >> 5)) >> v12) & 1) == 0)
    {
      if (++v12 >= v11)
      {
        goto LABEL_31;
      }
    }

    v13 = v12;
  }

  if (v12 >= v11)
  {
LABEL_31:
    v14 = 0;
    v18 = 20000;
  }

  else
  {
    v14 = 0;
    v15 = v6 + v7;
    v16 = 1;
    v17 = 20000;
    do
    {
      v18 = a3[v13 - v10] + *(v15 + v13 - v10);
      if ((v16 & 1) == 0)
      {
        if (*(a1 + 130) == 1)
        {
          if (v17 < v18)
          {
            v18 = v17;
          }
        }

        else
        {
          v20 = v18 - v17;
          v19 = v18 - v17 < 0;
          if (v18 >= v17)
          {
            v18 = v17;
          }

          if (v19)
          {
            v20 = -v20;
          }

          if (v20 < *(v4 + 512))
          {
            v18 -= *(*(v4 + 504) + 4 * v20);
          }
        }
      }

      ++v14;
      if (++v12 >= v11)
      {
        v13 = v11;
      }

      else
      {
        while (((*(*(v4 + 568) + 4 * (v12 >> 5)) >> v12) & 1) == 0)
        {
          if (v11 == ++v12)
          {
            goto LABEL_32;
          }
        }

        v13 = v12;
      }

      v16 = 0;
      v17 = v18;
    }

    while (v12 < v11);
  }

LABEL_32:
  *a4 = v14;
  v21 = *(a1 + 130) + v18;
  if (v21 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v21;
  }
}

uint64_t MulTableCompScoresToPelScoreFunction(const PelScorer *a1, unsigned int a2, const unsigned __int16 *a3, unsigned int *a4)
{
  v4 = *(a1 + 2);
  v5 = (*(v4 + 456) + 4 * a2);
  v6 = *v5;
  v7 = v5[1] - v6;
  if (v7)
  {
    v9 = (*(v4 + 344) + v6);
    v10 = 1;
    v8 = 20000;
    v11 = v7;
    do
    {
      v12 = v8;
      v14 = *v9++;
      v13 = v14;
      v15 = *a3++;
      v8 = v15 + v13;
      if ((v10 & 1) == 0)
      {
        if (*(a1 + 130) == 1)
        {
          if (v12 < v8)
          {
            v8 = v12;
          }
        }

        else
        {
          v17 = v8 - v12;
          v16 = v8 - v12 < 0;
          if (v8 >= v12)
          {
            v8 = v12;
          }

          if (v16)
          {
            v17 = -v17;
          }

          if (v17 < *(v4 + 512))
          {
            v8 -= *(*(v4 + 504) + 4 * v17);
          }
        }
      }

      v10 = 0;
      --v11;
    }

    while (v11);
  }

  else
  {
    v8 = 20000;
  }

  *a4 = v7;
  v18 = *(a1 + 130) + v8;
  if (v18 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v18;
  }
}

uint64_t PackedIntShortListCompScoresToPelScoreFunction(const PelScorer *a1, unsigned int a2, const unsigned __int16 *a3, unsigned int *a4)
{
  v4 = *(a1 + 2);
  v5 = (*(v4 + 456) + 4 * a2);
  v6 = *(v4 + 360);
  v7 = *v5;
  v8 = v5[1] - v7;
  v9 = *(*(v4 + 488) + 32);
  v10 = *(*(v4 + 288) + 2 * a2);
  *a4 = 0;
  v11 = *(*(v4 + 584) + 4 * v10) + v8 * *(*(v4 + 600) + 2 * (*(a1 + 320) + ((*(v4 + 536) + 1) >> 1) * v10));
  v12 = v11 + v8;
  if (v12 == -1)
  {
    v12 = *(v4 + 576);
  }

  if (v11 >= v12)
  {
    v13 = v11;
    v14 = v12;
  }

  else
  {
    v13 = v11;
    while (((*(*(v4 + 568) + 4 * (v13 >> 5)) >> v13) & 1) == 0)
    {
      if (++v13 >= v12)
      {
        goto LABEL_31;
      }
    }

    v14 = v13;
  }

  if (v13 >= v12)
  {
LABEL_31:
    v15 = 0;
    v19 = 20000;
  }

  else
  {
    v15 = 0;
    v16 = 1;
    v17 = 20000;
    v18 = v6 + 4 * v7;
    do
    {
      v19 = (*(v18 + 4 * (v14 - v11)) >> v9) + a3[v14 - v11];
      if ((v16 & 1) == 0)
      {
        if (*(a1 + 130) == 1)
        {
          if (v17 < v19)
          {
            v19 = v17;
          }
        }

        else
        {
          v21 = v19 - v17;
          v20 = v19 - v17 < 0;
          if (v19 >= v17)
          {
            v19 = v17;
          }

          if (v20)
          {
            v21 = -v21;
          }

          if (v21 < *(v4 + 512))
          {
            v19 -= *(*(v4 + 504) + 4 * v21);
          }
        }
      }

      ++v15;
      if (++v13 >= v12)
      {
        v14 = v12;
      }

      else
      {
        while (((*(*(v4 + 568) + 4 * (v13 >> 5)) >> v13) & 1) == 0)
        {
          if (v12 == ++v13)
          {
            goto LABEL_32;
          }
        }

        v14 = v13;
      }

      v16 = 0;
      v17 = v19;
    }

    while (v13 < v12);
  }

LABEL_32:
  *a4 = v15;
  v22 = *(a1 + 151) + v19;
  if (v22 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v22;
  }
}

uint64_t PackedIntCompScoresToPelScoreFunction(const PelScorer *a1, unsigned int a2, const unsigned __int16 *a3, unsigned int *a4)
{
  v4 = *(a1 + 2);
  v5 = (*(v4 + 456) + 4 * a2);
  v6 = *v5;
  v7 = v5[1] - v6;
  if (v7)
  {
    v9 = (*(v4 + 360) + 4 * v6);
    v10 = 1;
    v8 = 20000;
    v11 = v7;
    do
    {
      v12 = v8;
      v13 = *v9++;
      v14 = v13 >> *(*(v4 + 488) + 32);
      v15 = *a3++;
      v8 = v14 + v15;
      if ((v10 & 1) == 0)
      {
        if (*(a1 + 130) == 1)
        {
          if (v12 < v8)
          {
            v8 = v12;
          }
        }

        else
        {
          v17 = v8 - v12;
          v16 = v8 - v12 < 0;
          if (v8 >= v12)
          {
            v8 = v12;
          }

          if (v16)
          {
            v17 = -v17;
          }

          if (v17 < *(v4 + 512))
          {
            v8 -= *(*(v4 + 504) + 4 * v17);
          }
        }
      }

      v10 = 0;
      --v11;
    }

    while (v11);
  }

  else
  {
    v8 = 20000;
  }

  *a4 = v7;
  v18 = *(a1 + 151) + v8;
  if (v18 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v18;
  }
}

uint64_t (*OnDemandPelScorer::getPelScoringFunction(OnDemandPelScorer *this))(const PelScorer *a1, unsigned int a2, unsigned int *a3)
{
  v1 = *(this + 2);
  v2 = *(v1 + 536);
  v5 = v1 + 12;
  v3 = *(v1 + 12);
  v4 = *(v5 + 4);
  v6 = QuantPerDimPelScoringFunction;
  if (v3 > 1)
  {
    if (v3 == 3)
    {
      return v6;
    }

    if (v3 == 2)
    {
      v7 = v2 == 0;
      if (v2)
      {
        v8 = FloatMICShortListPelScoringFunction;
      }

      else
      {
        v8 = FloatMICPelScoringFunction;
      }

      v9 = FloatShortListPelScoringFunction;
      v10 = FloatPelScoringFunction;
LABEL_14:
      if (v7)
      {
        v9 = v10;
      }

      if (v4 == 1)
      {
        return v8;
      }

      else
      {
        return v9;
      }
    }

    return FloatPelScoringFunction;
  }

  if (v3)
  {
    if (v3 == 1)
    {
      v7 = v2 == 0;
      if (v2)
      {
        v8 = PackedIntMICShortListPelScoringFunction;
      }

      else
      {
        v8 = PackedIntMICPelScoringFunction;
      }

      v9 = PackedIntShortListPelScoringFunction;
      v10 = PackedIntPelScoringFunction;
      goto LABEL_14;
    }

    return FloatPelScoringFunction;
  }

  v6 = MulTablePelScoringFunction;
  if (v2)
  {
    return MulTableShortListPelScoringFunction;
  }

  return v6;
}

uint64_t FloatMICShortListPelScoringFunction(const PelScorer *a1, unsigned int a2, unsigned int *a3)
{
  v6 = 0;
  v7 = *(a1 + 2);
  v8 = *(*(v7 + 288) + 2 * a2);
  v11 = (*(v7 + 272) + 4 * v8);
  v9 = *v11;
  v10 = v11[1];
  v15 = 0;
  v16 = 0;
  v12 = v10 - v9;
  if (v10 != v9)
  {
    v17 = 0;
    HIDWORD(v16) = realloc_array(0, &v17, 2 * (v10 - v9), 0, 0, 1) >> 1;
    v6 = v17;
    v15 = v17;
  }

  LODWORD(v16) = v12;
  FloatMICShortListGenoneScoringFunction(a1, v8, v12, v6, a3);
  v13 = FloatShortListCompScoresToPelScoreFunction(a1, a2, v6, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v15);
  return v13;
}

uint64_t FloatMICPelScoringFunction(const PelScorer *a1, unsigned int a2, unsigned int *a3)
{
  v6 = 0;
  v7 = *(a1 + 2);
  v8 = *(*(v7 + 288) + 2 * a2);
  v11 = (*(v7 + 272) + 4 * v8);
  v9 = *v11;
  v10 = v11[1];
  v15 = 0;
  v16 = 0;
  v12 = v10 - v9;
  if (v10 != v9)
  {
    v17 = 0;
    HIDWORD(v16) = realloc_array(0, &v17, 2 * (v10 - v9), 0, 0, 1) >> 1;
    v6 = v17;
    v15 = v17;
  }

  LODWORD(v16) = v12;
  FloatMICGenoneScoringFunction(a1, v8, v12, v6, a3);
  v13 = FloatCompScoresToPelScoreFunction(a1, a2, v6, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v15);
  return v13;
}

uint64_t FloatShortListPelScoringFunction(const PelScorer *a1, unsigned int a2, unsigned int *a3)
{
  v6 = 0;
  v7 = *(a1 + 2);
  v8 = *(*(v7 + 288) + 2 * a2);
  v11 = (*(v7 + 272) + 4 * v8);
  v9 = *v11;
  v10 = v11[1];
  v15 = 0;
  v16 = 0;
  v12 = v10 - v9;
  if (v10 != v9)
  {
    v17 = 0;
    HIDWORD(v16) = realloc_array(0, &v17, 2 * (v10 - v9), 0, 0, 1) >> 1;
    v6 = v17;
    v15 = v17;
  }

  LODWORD(v16) = v12;
  FloatShortListGenoneScoringFunction(a1, v8, v12, v6, a3);
  v13 = FloatShortListCompScoresToPelScoreFunction(a1, a2, v6, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v15);
  return v13;
}

uint64_t FloatPelScoringFunction(const PelScorer *a1, unsigned int a2, unsigned int *a3)
{
  v6 = 0;
  v7 = *(a1 + 2);
  v8 = *(*(v7 + 288) + 2 * a2);
  v11 = (*(v7 + 272) + 4 * v8);
  v9 = *v11;
  v10 = v11[1];
  v15 = 0;
  v16 = 0;
  v12 = v10 - v9;
  if (v10 != v9)
  {
    v17 = 0;
    HIDWORD(v16) = realloc_array(0, &v17, 2 * (v10 - v9), 0, 0, 1) >> 1;
    v6 = v17;
    v15 = v17;
  }

  LODWORD(v16) = v12;
  FloatGenoneScoringFunction(a1, v8, v12, v6, a3);
  v13 = FloatCompScoresToPelScoreFunction(a1, a2, v6, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v15);
  return v13;
}

uint64_t MulTableShortListPelScoringFunction(const PelScorer *a1, unsigned int a2, unsigned int *a3)
{
  v6 = 0;
  v7 = *(a1 + 2);
  v8 = *(*(v7 + 288) + 2 * a2);
  v11 = (*(v7 + 272) + 4 * v8);
  v9 = *v11;
  v10 = v11[1];
  v15 = 0;
  v16 = 0;
  v12 = v10 - v9;
  if (v10 != v9)
  {
    v17 = 0;
    HIDWORD(v16) = realloc_array(0, &v17, 2 * (v10 - v9), 0, 0, 1) >> 1;
    v6 = v17;
    v15 = v17;
  }

  LODWORD(v16) = v12;
  MulTableShortListGenoneScoringFunction(a1, v8, v12, v6, a3);
  v13 = MulTableShortListCompScoresToPelScoreFunction(a1, a2, v6, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v15);
  return v13;
}

void sub_262838548(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t MulTablePelScoringFunction(const PelScorer *a1, unsigned int a2, unsigned int *a3)
{
  v6 = 0;
  v7 = *(a1 + 2);
  v8 = *(*(v7 + 288) + 2 * a2);
  v11 = (*(v7 + 272) + 4 * v8);
  v9 = *v11;
  v10 = v11[1];
  v15 = 0;
  v16 = 0;
  v12 = v10 - v9;
  if (v10 != v9)
  {
    v17 = 0;
    HIDWORD(v16) = realloc_array(0, &v17, 2 * (v10 - v9), 0, 0, 1) >> 1;
    v6 = v17;
    v15 = v17;
  }

  LODWORD(v16) = v12;
  MulTableGenoneScoringFunction(a1, v8, v12, v6, a3);
  v13 = MulTableCompScoresToPelScoreFunction(a1, a2, v6, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v15);
  return v13;
}

void sub_262838634(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t PackedIntMICShortListPelScoringFunction(const PelScorer *this, unsigned int a2, unsigned int *a3)
{
  v4 = *(this + 2);
  v5 = *(*(v4 + 288) + 2 * a2);
  v6 = *(*(v4 + 272) + 4 * v5 + 4) - *(*(v4 + 272) + 4 * v5);
  v7 = *(*(v4 + 456) + 4 * a2);
  v8 = *(v4 + 360);
  v27 = *(this + 131);
  v26 = *(*(v4 + 488) + 32);
  *a3 = 0;
  v9 = *(*(v4 + 584) + 4 * v5) + v6 * *(*(v4 + 600) + 2 * (*(this + 320) + ((*(v4 + 536) + 1) >> 1) * v5));
  v10 = v9 + v6;
  if (v9 + v6 == -1)
  {
    v10 = *(v4 + 576);
  }

  if (v9 >= v10)
  {
    v11 = *(*(v4 + 584) + 4 * v5) + v6 * *(*(v4 + 600) + 2 * (*(this + 320) + ((*(v4 + 536) + 1) >> 1) * v5));
    v12 = v10;
  }

  else
  {
    v11 = *(*(v4 + 584) + 4 * v5) + v6 * *(*(v4 + 600) + 2 * (*(this + 320) + ((*(v4 + 536) + 1) >> 1) * v5));
    while (((*(*(v4 + 568) + 4 * (v11 >> 5)) >> v11) & 1) == 0)
    {
      if (++v11 >= v10)
      {
        goto LABEL_34;
      }
    }

    v12 = v11;
  }

  if (v11 < v10)
  {
    v13 = 0;
    v14 = 1;
    v15 = 20000;
    v24 = v8 + 4 * v7;
    while (1)
    {
      v16 = v12 - v9;
      PackedIntMICComponentScore = PelScorer::getPackedIntMICComponentScore(this, v5, v12 - v9);
      if (v27)
      {
        v18 = (*(v24 + 4 * v16) >> v26) + (PackedIntMICComponentScore >> v26);
        if ((v14 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v18 = (*(v24 + 4 * v16) + PackedIntMICComponentScore) >> v26;
        if ((v14 & 1) == 0)
        {
LABEL_16:
          if (*(this + 130) == 1)
          {
            if (v15 >= v18)
            {
              v15 = v18;
            }
          }

          else
          {
            v20 = v18 - v15;
            v19 = v18 - v15 < 0;
            if (v18 < v15)
            {
              v15 = v18;
            }

            if (v19)
            {
              v21 = -v20;
            }

            else
            {
              v21 = v20;
            }

            if (v21 < *(v4 + 512))
            {
              v15 -= *(*(v4 + 504) + 4 * v21);
            }
          }

          goto LABEL_26;
        }
      }

      v15 = v18;
LABEL_26:
      ++v13;
      if (++v11 >= v10)
      {
        v12 = v10;
      }

      else
      {
        while (((*(*(v4 + 568) + 4 * (v11 >> 5)) >> v11) & 1) == 0)
        {
          if (v10 == ++v11)
          {
            goto LABEL_35;
          }
        }

        v12 = v11;
      }

      v14 = 0;
      if (v11 >= v10)
      {
        goto LABEL_35;
      }
    }
  }

LABEL_34:
  v13 = 0;
  v15 = 20000;
LABEL_35:
  *a3 = v13;
  v22 = *(this + 151) + v15;
  if (v22 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v22;
  }
}

uint64_t PackedIntMICPelScoringFunction(const PelScorer *this, unsigned int a2, unsigned int *a3)
{
  v4 = *(this + 2);
  v5 = *(*(v4 + 288) + 2 * a2);
  v6 = *(*(v4 + 272) + 4 * v5);
  v7 = *(*(v4 + 272) + 4 * v5 + 4);
  v8 = (v7 - v6);
  if (v7 == v6)
  {
    v9 = 20000;
    goto LABEL_20;
  }

  v22 = a3;
  v10 = 0;
  v11 = *(v4 + 360) + 4 * *(*(v4 + 456) + 4 * a2);
  v12 = *(this + 131);
  v13 = *(*(v4 + 488) + 32);
  v14 = 1;
  v9 = 20000;
  do
  {
    PackedIntMICComponentScore = PelScorer::getPackedIntMICComponentScore(this, v5, v10);
    if (v12)
    {
      v16 = (*(v11 + 4 * v10) >> v13) + (PackedIntMICComponentScore >> v13);
      if (v14)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v16 = (*(v11 + 4 * v10) + PackedIntMICComponentScore) >> v13;
      if (v14)
      {
LABEL_10:
        v9 = v16;
        goto LABEL_11;
      }
    }

    if (*(this + 130) == 1)
    {
      if (v9 >= v16)
      {
        v9 = v16;
      }
    }

    else
    {
      v18 = v16 - v9;
      v17 = v16 - v9 < 0;
      if (v16 < v9)
      {
        v9 = v16;
      }

      if (v17)
      {
        v19 = -v18;
      }

      else
      {
        v19 = v18;
      }

      if (v19 < *(v4 + 512))
      {
        v9 -= *(*(v4 + 504) + 4 * v19);
      }
    }

LABEL_11:
    v14 = 0;
    ++v10;
  }

  while (v8 != v10);
  a3 = v22;
LABEL_20:
  *a3 = v8;
  v20 = *(this + 151) + v9;
  if (v20 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v20;
  }
}

uint64_t PackedIntShortListPelScoringFunction(const PelScorer *a1, unsigned int a2, unsigned int *a3)
{
  v4 = *(a1 + 2);
  v5 = *(*(v4 + 288) + 2 * a2);
  v6 = *(*(v4 + 272) + 4 * v5 + 4) - *(*(v4 + 272) + 4 * v5);
  v7 = *(*(v4 + 456) + 4 * a2);
  v8 = *(v4 + 360);
  v27 = *(a1 + 131);
  v26 = *(*(v4 + 488) + 32);
  *a3 = 0;
  v9 = *(*(v4 + 584) + 4 * v5) + v6 * *(*(v4 + 600) + 2 * (*(a1 + 320) + ((*(v4 + 536) + 1) >> 1) * v5));
  v10 = v9 + v6;
  if (v9 + v6 == -1)
  {
    v10 = *(v4 + 576);
  }

  if (v9 >= v10)
  {
    v11 = *(*(v4 + 584) + 4 * v5) + v6 * *(*(v4 + 600) + 2 * (*(a1 + 320) + ((*(v4 + 536) + 1) >> 1) * v5));
    v12 = v10;
  }

  else
  {
    v11 = *(*(v4 + 584) + 4 * v5) + v6 * *(*(v4 + 600) + 2 * (*(a1 + 320) + ((*(v4 + 536) + 1) >> 1) * v5));
    while (((*(*(v4 + 568) + 4 * (v11 >> 5)) >> v11) & 1) == 0)
    {
      if (++v11 >= v10)
      {
        goto LABEL_34;
      }
    }

    v12 = v11;
  }

  if (v11 < v10)
  {
    v13 = 0;
    v14 = 1;
    v15 = 20000;
    v24 = v8 + 4 * v7;
    while (1)
    {
      v16 = v12 - v9;
      v17 = (*(*a1 + 80))(a1, v5, v12 - v9);
      if (v27)
      {
        v18 = (*(v24 + 4 * v16) >> v26) + (v17 >> v26);
        if ((v14 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v18 = (*(v24 + 4 * v16) + v17) >> v26;
        if ((v14 & 1) == 0)
        {
LABEL_16:
          if (*(a1 + 130) == 1)
          {
            if (v15 >= v18)
            {
              v15 = v18;
            }
          }

          else
          {
            v20 = v18 - v15;
            v19 = v18 - v15 < 0;
            if (v18 < v15)
            {
              v15 = v18;
            }

            if (v19)
            {
              v21 = -v20;
            }

            else
            {
              v21 = v20;
            }

            if (v21 < *(v4 + 512))
            {
              v15 -= *(*(v4 + 504) + 4 * v21);
            }
          }

          goto LABEL_26;
        }
      }

      v15 = v18;
LABEL_26:
      ++v13;
      if (++v11 >= v10)
      {
        v12 = v10;
      }

      else
      {
        while (((*(*(v4 + 568) + 4 * (v11 >> 5)) >> v11) & 1) == 0)
        {
          if (v10 == ++v11)
          {
            goto LABEL_35;
          }
        }

        v12 = v11;
      }

      v14 = 0;
      if (v11 >= v10)
      {
        goto LABEL_35;
      }
    }
  }

LABEL_34:
  v13 = 0;
  v15 = 20000;
LABEL_35:
  *a3 = v13;
  v22 = *(a1 + 151) + v15;
  if (v22 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v22;
  }
}

uint64_t PackedIntPelScoringFunction(const PelScorer *a1, unsigned int a2, unsigned int *a3)
{
  v4 = *(a1 + 2);
  v5 = *(*(v4 + 288) + 2 * a2);
  v6 = *(*(v4 + 272) + 4 * v5);
  v7 = *(*(v4 + 272) + 4 * v5 + 4);
  v8 = (v7 - v6);
  if (v7 == v6)
  {
    v9 = 20000;
    goto LABEL_20;
  }

  v22 = a3;
  v10 = 0;
  v11 = *(v4 + 360) + 4 * *(*(v4 + 456) + 4 * a2);
  v12 = *(a1 + 131);
  v13 = *(*(v4 + 488) + 32);
  v14 = 1;
  v9 = 20000;
  do
  {
    v15 = (*(*a1 + 80))(a1, v5, v10);
    if (v12)
    {
      v16 = (*(v11 + 4 * v10) >> v13) + (v15 >> v13);
      if (v14)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v16 = (*(v11 + 4 * v10) + v15) >> v13;
      if (v14)
      {
LABEL_10:
        v9 = v16;
        goto LABEL_11;
      }
    }

    if (*(a1 + 130) == 1)
    {
      if (v9 >= v16)
      {
        v9 = v16;
      }
    }

    else
    {
      v18 = v16 - v9;
      v17 = v16 - v9 < 0;
      if (v16 < v9)
      {
        v9 = v16;
      }

      if (v17)
      {
        v19 = -v18;
      }

      else
      {
        v19 = v18;
      }

      if (v19 < *(v4 + 512))
      {
        v9 -= *(*(v4 + 504) + 4 * v19);
      }
    }

LABEL_11:
    v14 = 0;
    ++v10;
  }

  while (v8 != v10);
  a3 = v22;
LABEL_20:
  *a3 = v8;
  v20 = *(a1 + 151) + v9;
  if (v20 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v20;
  }
}

uint64_t QuantPerDimPelScoringFunction(const PelScorer *a1, unsigned int a2, unsigned int *a3)
{
  v4 = *(a1 + 2);
  v5 = *(*(v4 + 288) + 2 * a2);
  v6 = *(*(v4 + 272) + 4 * v5);
  v7 = *(*(v4 + 272) + 4 * v5 + 4);
  v8 = (v7 - v6);
  if (v7 == v6)
  {
    v9 = 20000;
    goto LABEL_20;
  }

  v22 = a3;
  v10 = 0;
  v11 = *(v4 + 360) + 4 * *(*(v4 + 456) + 4 * a2);
  v12 = *(a1 + 131);
  v13 = *(*(v4 + 488) + 32);
  v14 = 1;
  v9 = 20000;
  do
  {
    v15 = (*(*a1 + 88))(a1, v5, v10);
    if (v12)
    {
      v16 = (*(v11 + 4 * v10) >> v13) + (v15 >> v13);
      if (v14)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v16 = (*(v11 + 4 * v10) + v15) >> v13;
      if (v14)
      {
LABEL_10:
        v9 = v16;
        goto LABEL_11;
      }
    }

    if (*(a1 + 130) == 1)
    {
      if (v9 >= v16)
      {
        v9 = v16;
      }
    }

    else
    {
      v18 = v16 - v9;
      v17 = v16 - v9 < 0;
      if (v16 < v9)
      {
        v9 = v16;
      }

      if (v17)
      {
        v19 = -v18;
      }

      else
      {
        v19 = v18;
      }

      if (v19 < *(v4 + 512))
      {
        v9 -= *(*(v4 + 504) + 4 * v19);
      }
    }

LABEL_11:
    v14 = 0;
    ++v10;
  }

  while (v8 != v10);
  a3 = v22;
LABEL_20:
  *a3 = v8;
  v20 = *(a1 + 151) + v9;
  if (v20 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v20;
  }
}

double PelScorer::getComponentProbs(PelScorer *this, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v8 = *(this + 13);
  v9 = vcvtd_n_f64_s32(a4, 0x10uLL);
  v10 = *(this + 2);
  v11 = *(*(v10 + 288) + 2 * a2);
  v12 = (*(v10 + 456) + 4 * a2);
  v13 = *v12;
  v14 = v12[1];
  v15 = (v14 - *v12);
  if (v14 != *v12 && *(a3 + 8) == 0)
  {
    *a3 = MemChunkAlloc(8 * (v14 - *v12), 0);
    *(a3 + 8) = v15;
  }

  v17 = v8 * 20.0;
  v18 = v9 * v8;
  if (v14 != v13)
  {
    bzero(*a3, 8 * (v14 + ~v13) + 8);
  }

  v98 = v17;
  v19 = -1.0 / v18;
  v20 = *(this + 2);
  v21 = *(v20 + 12);
  v22 = 0.0;
  if (v21 <= 1)
  {
    if (!v21)
    {
      v96 = a3;
      v48 = 0;
      v99 = 0;
      v100 = 0;
      if (v14 != v13)
      {
        v101 = 0;
        HIDWORD(v100) = realloc_array(0, &v101, 2 * v15, 0, 0, 1) >> 1;
        v48 = v101;
        v99 = v101;
        v20 = *(this + 2);
      }

      LODWORD(v100) = v14 - v13;
      v49 = *(*(v20 + 456) + 4 * a2);
      v50 = *(v20 + 344);
      MulTableGenoneScoringFunction(this, v11, v14 - v13, v48, &v101);
      v51 = MulTableCompScoresToPelScoreFunction(this, a2, v48, &v101);
      if (v14 != v13)
      {
        v52 = 0;
        v53 = (v51 * a4) >> 16;
        do
        {
          v54 = *(v50 + v49 + v52) + *(v99 + v52);
          v55 = v54 >> 5;
          v56 = (v54 * a4) >> 16;
          if (v55 <= 0x270 && v56 != 20000)
          {
            v58 = v56 - v53;
            if (v58 < v98)
            {
              v59 = v19 * v58;
              if (v59 > -87.3)
              {
                v60 = DgnExp(v59);
                *(*v96 + 8 * v52) = v60;
                v22 = v22 + v60;
              }
            }
          }

          ++v52;
        }

        while (v15 != v52);
      }

      goto LABEL_75;
    }

    if (v21 != 1)
    {
      return v22;
    }

    v94 = a3;
    v99 = 0;
    v100 = 0;
    v23 = v20;
    if (v14 != v13)
    {
      v101 = 0;
      HIDWORD(v100) = realloc_array(0, &v101, 4 * v15, 0, 0, 1) >> 2;
      v99 = v101;
      v23 = *(this + 2);
    }

    LODWORD(v100) = v15;
    if (v14 == v13)
    {
      goto LABEL_75;
    }

    v24 = 0;
    v25 = *(v23 + 360) + 4 * *(*(v23 + 456) + 4 * a2);
    v26 = *(*(v20 + 488) + 32);
    v27 = *(v23 + 16);
    v28 = 20000;
    while (1)
    {
      if (v27 == 1)
      {
        PackedIntMICComponentScore = PelScorer::getPackedIntMICComponentScore(this, v11, v24);
      }

      else
      {
        PackedIntMICComponentScore = (*(*this + 80))(this, v11, v24);
      }

      v99[v24] = PackedIntMICComponentScore;
      if (*(this + 131) == 1)
      {
        v30 = PackedIntMICComponentScore >> v26;
        if (PackedIntMICComponentScore >> v26 >= 20000)
        {
          v30 = 20000;
        }

        v31 = (*(v25 + 4 * v24) >> v26) + v30;
        if (v24)
        {
LABEL_23:
          if (*(this + 130) == 1)
          {
            if (v28 >= v31)
            {
              v28 = v31;
            }
          }

          else
          {
            v33 = v31 - v28;
            v32 = v31 - v28 < 0;
            if (v31 < v28)
            {
              v28 = v31;
            }

            if (v32)
            {
              v34 = -v33;
            }

            else
            {
              v34 = v33;
            }

            if (v34 < *(v20 + 512))
            {
              v28 -= *(*(v20 + 504) + 4 * v34);
            }
          }

          goto LABEL_35;
        }
      }

      else
      {
        v31 = (*(v25 + 4 * v24) + PackedIntMICComponentScore) >> v26;
        if (v24)
        {
          goto LABEL_23;
        }
      }

      v28 = v31;
LABEL_35:
      if (v15 == ++v24)
      {
        v35 = 0;
        v36 = ((*(this + 151) + v28) * a4) >> 16;
        v22 = 0.0;
        do
        {
          v37 = v99[v35];
          if (*(this + 131) == 1)
          {
            v38 = (*(v25 + 4 * v35) >> v26) + (v37 >> v26);
          }

          else
          {
            v38 = (*(v25 + 4 * v35) + v37) >> v26;
          }

          v39 = v38 <= 19999;
          v40 = (v38 * a4) >> 16;
          if (v39 && v40 != 20000)
          {
            v42 = v40 - v36;
            if (v42 < v98)
            {
              v43 = v19 * v42;
              if (v43 > -87.3)
              {
                v44 = DgnExp(v43);
                *(*v94 + 8 * v35) = v44;
                v22 = v22 + v44;
              }
            }
          }

          ++v35;
        }

        while (v15 != v35);
        goto LABEL_75;
      }
    }
  }

  if (v21 != 3)
  {
    if (v21 == 2)
    {
      v95 = a3;
      v45 = 0;
      v99 = 0;
      v100 = 0;
      if (v14 != v13)
      {
        v101 = 0;
        HIDWORD(v100) = realloc_array(0, &v101, 2 * v15, 0, 0, 1) >> 1;
        v45 = v101;
        v99 = v101;
        v20 = *(this + 2);
      }

      LODWORD(v100) = v14 - v13;
      v93 = *(*(v20 + 456) + 4 * a2);
      v46 = *(v20 + 344);
      v47 = v14 - v13;
      if (*(v20 + 16) == 1)
      {
        FloatMICGenoneScoringFunction(this, v11, v47, v45, &v101);
      }

      else
      {
        FloatGenoneScoringFunction(this, v11, v47, v45, &v101);
      }

      v61 = FloatCompScoresToPelScoreFunction(this, a2, v45, &v101);
      if (v14 != v13)
      {
        v63 = 0;
        v64 = (v61 * a4) >> 16;
        do
        {
          v65 = *(v46 + v93 + v63) + *(v99 + v63);
          v66 = v65 >> 5;
          v67 = (v65 * a4) >> 16;
          if (v66 <= 0x270 && v67 != 20000)
          {
            v69 = v67 - v64;
            if (v69 < v98)
            {
              v70 = v19 * v69;
              if (v70 > -87.3)
              {
                v71 = DgnExp(v70);
                *(*v95 + 8 * v63) = v71;
                v22 = v22 + v71;
              }
            }
          }

          ++v63;
        }

        while (v15 != v63);
      }

      goto LABEL_75;
    }

    return v22;
  }

  v99 = 0;
  v100 = 0;
  if (v14 == v13)
  {
    LODWORD(v100) = v15;
    goto LABEL_75;
  }

  v97 = a3;
  v101 = 0;
  v72 = realloc_array(0, &v101, 4 * v15, 0, 0, 1);
  v73 = 0;
  v99 = v101;
  v74 = *(this + 2);
  LODWORD(v100) = v15;
  HIDWORD(v100) = v72 >> 2;
  v75 = *(v74 + 360) + 4 * *(*(v74 + 456) + 4 * a2);
  v76 = *(*(v20 + 488) + 32);
  v77 = 20000;
  do
  {
    v78 = (*(*this + 88))(this, v11, v73);
    v99[v73] = v78;
    if (*(this + 131) == 1)
    {
      v79 = v78 >> v76;
      if (v78 >> v76 >= 20000)
      {
        v79 = 20000;
      }

      v80 = (*(v75 + 4 * v73) >> v76) + v79;
      if (!v73)
      {
LABEL_101:
        v77 = v80;
        goto LABEL_102;
      }
    }

    else
    {
      v80 = (*(v75 + 4 * v73) + v78) >> v76;
      if (!v73)
      {
        goto LABEL_101;
      }
    }

    v82 = v80 - v77;
    v81 = v80 - v77 < 0;
    if (v80 < v77)
    {
      v77 = v80;
    }

    if (v81)
    {
      v83 = -v82;
    }

    else
    {
      v83 = v82;
    }

    if (v83 < *(v20 + 512))
    {
      v77 -= *(*(v20 + 504) + 4 * v83);
    }

LABEL_102:
    ++v73;
  }

  while (v15 != v73);
  v84 = 0;
  v85 = ((*(this + 151) + v77) * a4) >> 16;
  v22 = 0.0;
  do
  {
    v86 = v99[v84];
    if (*(this + 131) == 1)
    {
      v87 = (*(v75 + 4 * v84) >> v76) + (v86 >> v76);
    }

    else
    {
      v87 = (*(v75 + 4 * v84) + v86) >> v76;
    }

    v39 = v87 <= 19999;
    v88 = (v87 * a4) >> 16;
    if (v39 && v88 != 20000)
    {
      v90 = v88 - v85;
      if (v90 < v98)
      {
        v91 = v19 * v90;
        if (v91 > -87.3)
        {
          v92 = DgnExp(v91);
          *(*v97 + 8 * v84) = v92;
          v22 = v22 + v92;
        }
      }
    }

    ++v84;
  }

  while (v15 != v84);
LABEL_75:
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v99);
  return v22;
}

void sub_262839630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t PelScorer::getPackedIntMICComponentScore(PelScorer *this, unsigned int a2, int a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = *(this + 2);
  v4 = *(v3 + 132);
  v5 = (v4 + 1) & 0xFFFFFFFE;
  v6 = *(v3 + 152);
  v7 = *(this + 77);
  v8 = (*(v3 + 232) + *(v3 + 248) + *(*(v3 + 256) + 4 * a2) + v5 + (*(v3 + 148) * a3));
  v9 = *v8;
  v54 = 0;
  v55 = 0;
  v10 = (v6 + 7) & 0xFFFFFFF8;
  v11 = (v8 + ((v5 + 17) & 0xFFFFFFF0) - v5);
  if (v4)
  {
    v12 = 0;
    v13 = v7;
    do
    {
      LODWORD(v14) = v4 - v12;
      if (v4 != v12)
      {
        if (v14 >= 4)
        {
          v14 = 4;
        }

        else
        {
          v14 = v14;
        }

        v15 = &v54;
        v16 = v13;
        do
        {
          v18 = *v11++;
          v17 = v18;
          v19 = *v16++;
          *v15 += v19 * v17;
          v15 = (v15 + 4);
          --v14;
        }

        while (v14);
      }

      v12 += 4;
      v13 += 4;
    }

    while (v12 < v4);
    v20 = v54;
    v21 = HIDWORD(v54);
    v23 = v55;
    v22 = HIDWORD(v55);
  }

  else
  {
    v22 = 0;
    v21 = 0;
    v23 = 0;
    v20 = 0;
  }

  v24 = **(v3 + 488);
  v25 = *v11;
  v26 = (((2 * v4 + 17) & 0xFFFFFFF0) - 2 * v4 - 2) >> 1;
  v27 = &v11[v26 + 1];
  v28 = v10 - 1;
  if (v10 - 1 < 0)
  {
    v41 = 0;
  }

  else
  {
    v29 = 0;
    v30 = 0;
    v31 = (v4 + 7) & 0xFFFFFFF8;
    v32 = &v11[v26 + 1];
    do
    {
      v52 = 0;
      v53 = 0;
      v33 = v28 & 0x7FFFFFFC;
      v34 = v28;
      v35 = 8 * v28;
      v36 = v31 + 8 * v28;
      do
      {
        v37 = 0;
        v38 = v35;
        v39 = v32 + 2 * v35;
        do
        {
          if (v38 + v37 >= v6)
          {
            break;
          }

          *(&v52 + (v37 & 3)) += v7[v36 + v37] * *(v39 + 2 * v37);
          ++v37;
        }

        while (v37 != 8);
        v36 -= 8;
        v35 = v38 - 8;
      }

      while (v33 < v34--);
      v28 = v33 - 1;
      v30 += v53 + v52;
      v29 += SHIDWORD(v53) + SHIDWORD(v52);
    }

    while (v33);
    v41 = v29 + v30;
  }

  v42 = 1 << (v9 - 1);
  if (!v9)
  {
    v42 = 0;
  }

  v43 = (v42 + (v24 * (v23 + v20 + v21 + v22) + 0.5)) >> v9;
  v44 = *(this + 152);
  v45 = 1 << (v44 - 1);
  if (!v44)
  {
    v45 = 0;
  }

  v46 = v24 * ((v41 + v45) >> v44 << *(this + 153) >> 1) + 0.5;
  v47 = 1 << (v25 - 1);
  if (!v25)
  {
    v47 = 0;
  }

  v48 = v24 * *(v27 + 2 * v6 + ((2 * v6 + 27) & 0xFFFFFFF0) - 2 * v6 - 12) + 0.5;
  v49 = (v48 + v43 + ((v47 + v46) >> v25)) & ~((v48 + v43 + ((v47 + v46) >> v25)) >> 31);
  if (v49 >= 0xFFFF)
  {
    result = 0xFFFFLL;
  }

  else
  {
    result = v49;
  }

  v51 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OnDemandPelScorer::setFrameStaticsForGenone(uint64_t this, unsigned int a2, PelStats *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = this;
  v9 = *(*(this + 296) + 4 * a2);
  if (*(*(this + 400) + v9) != 1)
  {
    PelScorer::getTransformedFeatures_NoAdapt_Cache(this, a2, 0, this + 200, a3, a6, a7, a8);
    if (*(*(v8 + 16) + 16) == 1)
    {
      PelScorer::getMICFeatures(v8, (v8 + 200), a3 + 4);
      v15 = *(v8 + 264);
      v16 = *(v8 + 268);

      return PelScorer::setFrameStaticsMic(v8, v9, (v8 + 200), (v8 + 248), v15, v16, 1);
    }

    else
    {
      v18 = *(v8 + 268);

      return PelScorer::setFrameStaticsNoMic(v8, v9, (v8 + 200), v18, 1);
    }
  }

  v10 = *(this + 16);
  v11 = *(v10 + 536);
  if (*(v10 + 16) == 1)
  {
    if (*(v10 + 536))
    {
      *(this + 640) = *(*(this + 624) + 2 * v9);
    }

    v12 = *(v10 + 12);
    if (v12 == 1)
    {
      *(this + 616) = *(this + 584) + 2 * (*(this + 600) + (((*(this + 116) + 7) & 0xFFFFFFF8) + ((*(this + 112) + 7) & 0xFFFFFFF8)) * v9);
      v19 = *(*(this + 552) + 4 * v9);
      *(this + 604) = *(*(this + 536) + 4 * v9);
      *(this + 608) = v19;
      *(this + 612) = *(*(this + 568) + 4 * v9);
    }

    else if (v12 == 2)
    {
      v13 = *(*(this + 416) + 8 * v9);
      *(this + 480) = *(this + 448) + 8 * ((*(this + 116) + *(this + 112)) * v9);
      *(this + 464) = v13;
      *(this + 472) = *(*(this + 432) + 8 * v9);
    }

    return this;
  }

  if (*(v10 + 536))
  {
    *(this + 640) = *(*(this + 624) + 2 * v9);
  }

  v17 = *(v10 + 12);
  if (v17 > 1)
  {
    if (v17 != 3)
    {
      if (v17 == 2)
      {
        *(this + 480) = *(this + 448) + 8 * (*(this + 112) * v9);
        *(this + 464) = *(*(this + 416) + 8 * v9);
      }

      return this;
    }

LABEL_24:
    *(this + 616) = *(this + 584) + 2 * (*(this + 600) + ((*(this + 112) + 7) & 0xFFFFFFF8) * v9);
    *(this + 604) = *(*(this + 536) + 4 * v9);
    return this;
  }

  if (!v17)
  {
    *(this + 528) = *(this + 504) + 8 * (*(this + 112) * v9);
    *(this + 520) = *(*(this + 488) + 4 * v9);
    return this;
  }

  if (v17 == 1)
  {
    goto LABEL_24;
  }

  return this;
}

double PelScorer::getTransformedFeatures_NoAdapt_Cache(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 268) = 0;
  v12 = *(*(a1 + 312) + 4 * a2);
  v13 = *(a1 + 368) + 16 * v12;
  if (*(v13 + 8))
  {
    *(a1 + 268) = *(*(a1 + 384) + 4 * v12);
    v14 = a1 + 216;
    v15 = a4;
  }

  else
  {
    v13 = a1 + 160;
    v16 = a1 + 216;
    v17 = *(a1 + 112);
    if (*(a1 + 168) != v17)
    {
      DgnPrimArray<unsigned char>::copyArraySlice(a4, (a1 + 160), 0, v17);
      v13 = 0;
    }

    v18 = *(a1 + 96);
    if (v18 && *(*(v18 + 32) + 16) == **(v18 + 32))
    {
      if (v13)
      {
        v19 = v13;
      }

      else
      {
        v19 = a4;
      }

      LinearTransform::doTransform(*(*(a1 + 32) + 224), v19, a1 + 216, v17, a5, a6, a7, a8);
      v13 = 0;
      v20 = *(a1 + 32);
      v21 = *(v20 + 4);
      v22 = 1 << (v21 - 1);
      v23 = **(v20 + 240);
      if (!v21)
      {
        LODWORD(v22) = 0;
      }

      *(a1 + 268) += (v22 + v23) >> v21;
      v24 = a4;
    }

    else
    {
      v24 = a1 + 216;
      v16 = a4;
    }

    v25 = *(a1 + 48);
    if (v25)
    {
      if (a5)
      {
        ++a5[7];
      }

      v26 = *(*(v25 + 48) + 2 * a2);
      if (v13)
      {
        v27 = v13;
      }

      else
      {
        v27 = v16;
      }

      LinearTransform::doTransform(*(v25 + 16) + 72 * *(*(v25 + 48) + 2 * a2), v27, v24, v17, a5, a6, a7, a8);
      v13 = 0;
      v28 = *(a1 + 48);
      v29 = *(*(v28 + 32) + 4 * v26);
      v30 = *(v28 + 12);
      v31 = 1 << (v30 - 1);
      if (!v30)
      {
        LODWORD(v31) = 0;
      }

      *(a1 + 268) += (v31 + v29) >> v30;
      v15 = v16;
    }

    else
    {
      v15 = v24;
      v24 = v16;
    }

    v32 = *(a1 + 32);
    if (*(v32 + 8) == *v32)
    {
      if (a5)
      {
        ++a5[8];
      }

      if (*(v32 + 56))
      {
        v33 = *(*(v32 + 24) + 4 * *(*(*(a1 + 40) + 136) + 4 * a2));
      }

      else
      {
        v33 = 0xFFFFFFFFLL;
      }

      if (v13)
      {
        v34 = v13;
      }

      else
      {
        v34 = v24;
      }

      LinearTransform::doTransform(*(v32 + 64) + 72 * v33, v34, v15, v17, a5, a6, a7, a8);
      v13 = 0;
      v35 = *(a1 + 32);
      v36 = *(*(v35 + 80) + 4 * v33);
      v37 = *(v35 + 4);
      v38 = 1 << (v37 - 1);
      if (!v37)
      {
        LODWORD(v38) = 0;
      }

      *(a1 + 268) += (v38 + v36) >> v37;
      v14 = v24;
    }

    else
    {
      v14 = v15;
      v15 = v24;
    }

    if (v13)
    {
      v39 = v13;
    }

    else
    {
      v39 = v15;
    }

    DgnPrimArray<unsigned char>::copyArraySlice(*(a1 + 368) + 16 * v12, v39, 0, *(v39 + 8));
    *(*(a1 + 384) + 4 * v12) = *(a1 + 268);
  }

  v41 = *(a1 + 32);
  if (*(v41 + 12) == *v41)
  {
    if (a5)
    {
      ++a5[9];
    }

    if (*(v41 + 136))
    {
      v42 = *(*(v41 + 40) + 4 * *(*(*(a1 + 40) + 168) + 4 * a2));
    }

    else
    {
      v42 = 0xFFFFFFFFLL;
    }

    if (v13)
    {
      v44 = v13;
    }

    else
    {
      v44 = v15;
    }

    LinearTransform::doTransform(*(v41 + 144) + 72 * v42, v44, v14, a4, a5, a6, a7, a8);
    v45 = *(a1 + 32);
    v46 = *(*(v45 + 160) + 4 * v42);
    v47 = *(v45 + 4);
    v48 = 1 << (v47 - 1);
    if (!v47)
    {
      LODWORD(v48) = 0;
    }

    *(a1 + 268) += (v48 + v46) >> v47;
    goto LABEL_57;
  }

  v14 = v15;
  if (!v13)
  {
LABEL_57:
    if (v14 != a4)
    {
      *(a4 + 8) = 0;
      v49 = *a4;
      *a4 = *v14;
      *v14 = v49;
      LODWORD(v49) = *(a4 + 12);
      result = *(v14 + 8);
      *(a4 + 8) = result;
      *(v14 + 8) = 0;
      *(v14 + 12) = v49;
    }

    return result;
  }

  v43 = *(v13 + 8);

  DgnPrimArray<unsigned char>::copyArraySlice(a4, v13, 0, v43);
  return result;
}

double PelScorer::getTransformedFeatures_Adapt_Cache(uint64_t a1, unsigned int a2, int a3, unint64_t a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(*(a1 + 312) + 4 * a2);
  v14 = *(a1 + 368) + 16 * v13;
  if (*(v14 + 8))
  {
    v15 = a1 + 216;
    v16 = a4;
  }

  else
  {
    v14 = a1 + 160;
    v17 = a1 + 216;
    v18 = *(a1 + 112);
    if (*(a1 + 168) != v18)
    {
      DgnPrimArray<unsigned char>::copyArraySlice(a4, (a1 + 160), 0, v18);
      v14 = 0;
    }

    v19 = *(a1 + 96);
    if (v19 && *(*(v19 + 32) + 16) == **(v19 + 32))
    {
      if (v14)
      {
        v20 = v14;
      }

      else
      {
        v20 = a4;
      }

      LinearTransform::doTransform(*(*(a1 + 32) + 224), v20, a1 + 216, v18, a5, a6, a7, a8);
      v14 = 0;
      v21 = a4;
    }

    else
    {
      v21 = a1 + 216;
      v17 = a4;
    }

    v22 = *(a1 + 48);
    if (v22)
    {
      if (a5)
      {
        ++a5[7];
      }

      if (v14)
      {
        v23 = v14;
      }

      else
      {
        v23 = v17;
      }

      LinearTransform::doTransform(*(v22 + 16) + 72 * *(*(v22 + 48) + 2 * a2), v23, v21, v18, a5, a6, a7, a8);
      v14 = 0;
      v16 = v17;
    }

    else
    {
      v16 = v21;
      v21 = v17;
    }

    if ((*(*(a1 + 24) + 12) & 1) != 0 || (v24 = *(a1 + 32), *(v24 + 8) != *v24))
    {
      v15 = v16;
      v16 = v21;
    }

    else
    {
      if (a5)
      {
        ++a5[8];
      }

      if (*(v24 + 56))
      {
        v25 = *(*(v24 + 24) + 4 * *(*(*(a1 + 40) + 136) + 4 * a2));
      }

      else
      {
        v25 = -1;
      }

      if (v14)
      {
        v26 = v14;
      }

      else
      {
        v26 = v21;
      }

      LinearTransform::doTransform(*(v24 + 64) + 72 * v25, v26, v16, v18, a5, a6, a7, a8);
      v14 = 0;
      v15 = v21;
    }

    if (v14)
    {
      v27 = v14;
    }

    else
    {
      v27 = v16;
    }

    DgnPrimArray<unsigned char>::copyArraySlice(*(a1 + 368) + 16 * v13, v27, 0, *(v27 + 8));
  }

  v29 = *(a1 + 24);
  if ((*(v29 + 12) & 1) == 0 && ((*(v29 + 13) ^ 1) & 1) != 0 || a3)
  {
    v30 = *(a1 + 32);
    if (*(v30 + 12) == *v30)
    {
      if (a5)
      {
        ++a5[9];
      }

      if (*(v30 + 136))
      {
        v31 = *(*(v30 + 40) + 4 * *(*(*(a1 + 40) + 168) + 4 * a2));
      }

      else
      {
        v31 = -1;
      }

      if (v14)
      {
        v33 = v14;
      }

      else
      {
        v33 = v16;
      }

      LinearTransform::doTransform(*(v30 + 144) + 72 * v31, v33, v15, a4, a5, a6, a7, a8);
      v16 = v15;
      goto LABEL_53;
    }
  }

  if (!v14)
  {
LABEL_53:
    if (v16 != a4)
    {
      *(a4 + 8) = 0;
      v34 = *a4;
      *a4 = *v16;
      *v16 = v34;
      LODWORD(v34) = *(a4 + 12);
      result = *(v16 + 8);
      *(a4 + 8) = result;
      *(v16 + 8) = 0;
      *(v16 + 12) = v34;
    }

    return result;
  }

  v32 = *(v14 + 8);

  DgnPrimArray<unsigned char>::copyArraySlice(a4, v14, 0, v32);
  return result;
}