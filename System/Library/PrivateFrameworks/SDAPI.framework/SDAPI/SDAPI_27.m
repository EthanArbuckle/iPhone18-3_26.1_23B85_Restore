uint64_t NodeNetNode::addAcousticsToScores(NodeNetNode *this, int a2, PelScoreCache **a3)
{
  result = PelScoreCache::getScoreNoBackoff(a3[3], *(this + 15));
  v6 = result;
  v7 = result + *(this + 9);
  *(this + 9) += result;
  if (*(a3 + 56) >= v7)
  {
    result = BestData::newOrTiedBestNode((a3 + 24), v7, (this + 8), 0);
  }

  v8 = *(this + 8);
  if (v8 != 20000)
  {
    *(this + 8) = v8 + v6;
  }

  return result;
}

uint64_t *PredStruct::getBestPredWithTrace(unsigned __int16 *a1, _DWORD *a2, uint64_t a3, int a4)
{
  v4 = a1[4];
  v5 = *a1;
  v6 = v4 - 1;
  if (v4 == 1)
  {
    *a2 = *(v5 + 1);
    return *a1;
  }

  else
  {
    v12 = *v5;
    v11 = v5 + 1;
    v10 = v12;
    v13 = *(v12 + 8);
    v14 = *(v12 + 4);
    do
    {
      v15 = *(*v11 + 4);
      v16 = *(*v11 + 8) - v13;
      if (v16 < 0)
      {
        v16 = v13 - *(*v11 + 8);
        v7 = *v11;
        v13 = *(*v11 + 8);
        v17 = *(*v11 + 4);
      }

      else
      {
        v7 = v10;
        v17 = v14;
        v10 = *v11;
        LODWORD(v14) = *(*v11 + 4);
      }

      if (v16 + v13 <= a4)
      {
        v18 = *v10;
        v23 = 0;
        v19 = DgnIdFactory<NetNBestTraceNoTime<unsigned int>,1024u>::createRawData(a3, &v23);
        v20 = v23;
        *(v23 + 4) = v17;
        *(v20 + 8) = v14;
        *v20 = v18;
        *(v20 + 12) = v16;
        v14 = v19;
      }

      else
      {
        v14 = v17;
      }

      ++v11;
      v10 = v7;
      --v6;
    }

    while (v6);
    *a2 = v14;
  }

  return v7;
}

void TraceNode::~TraceNode(TraceNode *this)
{
  *this = &unk_287522C90;
  v1 = (this + 32);
  DgnIArray<Utterance *>::~DgnIArray(this + 64);
  PredStruct::~PredStruct(v1);
}

{
  *this = &unk_287522C90;
  v1 = (this + 32);
  DgnIArray<Utterance *>::~DgnIArray(this + 64);
  PredStruct::~PredStruct(v1);

  JUMPOUT(0x26672B1B0);
}

unint64_t TraceNode::sizeObject(uint64_t a1, int a2)
{
  v4 = NodeNetNode::sizeObject(a1, a2);
  v5 = sizeObject<SeederBlock>(a1 + 64, a2);
  v6 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v6 = 4;
  }

  if (*(a1 + 88))
  {
    v7 = (a2 & 0xFFFFFFFE) == 2;
  }

  else
  {
    v7 = 1;
  }

  v8 = 12;
  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = 12;
  }

  if (a2 == 3)
  {
    v8 = 0;
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  if (a2 == 3)
  {
    v6 = 0;
  }

  else
  {
    ++v8;
  }

  return v8 + 4 * v10 + v4 + v5 + v9 + v6;
}

uint64_t TraceNode::fillTraceNode(uint64_t result, __int16 a2, uint64_t *a3, __int16 a4)
{
  v4 = *a3;
  *(result + 52) = *(a3 + 2);
  *(result + 44) = v4;
  *(result + 80) = a4;
  *(result + 56) = a2;
  return result;
}

uint64_t TraceNode::fill(uint64_t this, const NodeNetNode *a2)
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
  *(this + 56) = *(a2 + 28);
  v4 = *(a2 + 44);
  *(this + 52) = *(a2 + 13);
  *(this + 44) = v4;
  *(this + 80) = *(a2 + 40);
  return this;
}

unint64_t SeederStruct::updateSeederList(unint64_t result, int a2, uint64_t a3)
{
  v4 = result;
  v5 = a3 - 8;
  v6 = *(result + 8);
  if (!v6)
  {
    v14 = *result;
    *v14 = v5;
    *(v14 + 8) = a2;
    *(v14 + 12) = a2;
    v13 = 1;
LABEL_13:
    *(v4 + 8) = v13;
    return result;
  }

  v7 = v6 - 1;
  v8 = *result;
  v9 = *(*result + 16 * v7 + 12);
  if (v9 < a2)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = v9 - 1;
  }

  if (v10 != a2 || (v11 = v8 + 16 * v7, *v11 != v5))
  {
    if (*(result + 12) == v6 && v6 >> 1 != -1 && v6 + (v6 >> 1) + 1 >= v6)
    {
      result = DgnArray<DgnPrimArray<double>>::reallocElts(result, (v6 >> 1) + 1, 0);
      v8 = *v4;
      v6 = *(v4 + 8);
    }

    v12 = v8 + 16 * v6;
    *v12 = v5;
    *(v12 + 8) = a2;
    *(v12 + 12) = a2;
    v13 = v6 + 1;
    goto LABEL_13;
  }

  *(v11 + 12) = a2;
  return result;
}

uint64_t TraceNode::scoreNode(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, _BYTE *a7, PelScoreCache **a8, int a9, int a10, _DWORD *a11, HmmNet *a12)
{
  *a7 = 0;
  v14 = a1 + 8;
  v15 = *(a1 + 18);
  if (*(a2 + 8) == 20000)
  {
    *(a1 + 88) = v14;
    if (v15 == 20000)
    {
      return 20000;
    }

    else
    {
      ++*a11;
      v19 = *(a1 + 20) + v15;
      v20 = (a1 + 8);

      return Node::updateNodeOneBest1(v20, v19, a4, a5, a8, a12);
    }
  }

  else
  {
    ++*a11;
    if (v15 == 20000)
    {
      *a7 = 1;
      *(a1 + 88) = a2;
      v18 = a1 + 8;

      return Node::scoreNodeInactiveCurrActiveSeed(v18, a2, a4, a5, a8, a9, a10, a12);
    }

    else
    {
      result = Node::scoreNodeActiveCurrActiveSeed(a1 + 8, a2, a4, a5, a7, a8, a9, a10, a12);
      if (*a7)
      {
        v21 = a2;
      }

      else
      {
        v21 = v14;
      }

      *(a1 + 88) = v21;
    }
  }

  return result;
}

uint64_t Node::scoreNodeInactiveCurrActiveSeed(uint64_t a1, uint64_t a2, int a3, int a4, PelScoreCache **a5, int a6, int a7, HmmNet *a8)
{
  v8 = *(a1 + 21);
  v9 = a7 + a6 + *(a2 + 8);
  v10 = *(a1 + 16);
  if (v10 >= 0)
  {
    v11 = v10 << 8;
  }

  else
  {
    v11 = 255 * v10;
  }

  *(a1 + 12) = v11;
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4) + *(a1 + 18);
  return Node::updateNodeOneBest1(a1, v9 + v8, a3, a4, a5, a8);
}

unint64_t TraceNode::maybeSeedNode(unint64_t this, int a2, int a3)
{
  if (*(this + 18) <= a2)
  {
    return SeederStruct::updateSeederList(this + 64, a3, *(this + 88));
  }

  return this;
}

void TraceExternalOutPort::seedOutPortForTraceBack2(TraceExternalOutPort *this, int a2, int a3, NetMgr *a4)
{
  v4 = *(this + 4);
  if (v4 <= a2)
  {
    v8 = *(this + 12);
    if (v8 == 1)
    {
      v9 = *(this + 2);
    }

    else
    {
      v10 = *(this + 2);
      v11 = (v8 - 1);
      v9 = *(v10 + 8 * v11);
      v12 = *(v9 + 8);
      v13 = v10 - 8;
      do
      {
        if (v12 >= *(*(v13 + 8 * v11) + 8))
        {
          v9 = *(v13 + 8 * v11);
          v12 = *(v9 + 8);
        }

        --v11;
      }

      while (v11);
    }

    SeederStruct::updateSeederList(this + 32, a3, v9);
    v14 = *(this + 10);
    if (!v14 || ((v15 = *(this + 4), v16 = *(v15 + 8), v17 = *(v15 + 16 * (v14 - 1) + 12), v16 != a3) ? (v18 = v17 == v16) : (v18 = 0), v18))
    {
      v19 = -1;
    }

    else if (v17 >= v16)
    {
      v19 = a3 - v16;
    }

    else
    {
      v19 = v16 - a3;
    }

    v20 = *(a4 + 124);
    while (*(this + 14) < v19)
    {
      BitArray::add((this + 48), 0);
    }

    BitArray::add((this + 48), v4 <= v20);
  }
}

__n128 NodeData::maskedCwidac@<Q0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  if (v2 >> 25 == 126)
  {
    result.n128_u64[0] = *(a1 + 3);
    *(a2 + 12) = result.n128_u64[0];
    *(a2 + 20) = a1[5];
    *(a2 + 4) = 0x3FFFLL;
  }

  else
  {
    *(a2 + 4) = a1[1];
    result = *(a1 + 2);
    *(a2 + 8) = result;
  }

  return result;
}

uint64_t NodeData::NodeData(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4, __int16 a5, __int16 a6)
{
  v10 = *a4;
  *(a1 + 8) = *(a4 + 4);
  *a1 = v10;
  *(a1 + 10) = *(a4 + 10);
  *(a1 + 11) = *(a4 + 11);
  NodeData::maskedCwidac(a3, a1 + 12);
  *(a1 + 36) = *(a2 + 22);
  *(a1 + 38) = *(a2 + 10);
  *(a1 + 40) = a5;
  *(a1 + 42) = a6;
  v11 = *(a2 + 20);
  if ((v11 + (*(a2 + 12) >> 8) < 0) ^ __OFADD__(v11, *(a2 + 12) >> 8) | (v11 + (*(a2 + 12) >> 8) == 0))
  {
    v12 = -v11;
  }

  else
  {
    LOWORD(v12) = *(a2 + 12) >> 8;
  }

  *(a1 + 44) = v12;
  return a1;
}

unint64_t sizeObject<SeederBlock>(uint64_t a1, int a2)
{
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    result = 12;
  }

  else
  {
    result = 16;
  }

  if (a2 == 3)
  {
    return 0;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v4 = *(a1 + 8);
    if (v4 >= 1)
    {
      v5 = (v4 + 1);
    }

    else
    {
      v5 = 1;
    }

    if (a2)
    {
      return result * v5;
    }

    else
    {
      result *= (*(a1 + 12) - v4) + v5;
    }
  }

  return result;
}

unint64_t sizeObject(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    v2 = 0;
    v3 = 0;
  }

  else
  {
    v4 = *(a1 + 24);
    if (v4 <= 1)
    {
      v5 = 0;
    }

    else
    {
      v5 = 8 * v4;
    }

    if (gShadowDiagnosticShowIdealizedObjectSizes == 1)
    {
      v3 = v5 + 8;
    }

    else
    {
      v3 = v5 + 16;
    }

    v2 = 12;
  }

  return v3 + v2 + sizeObject<SeederBlock>(a1 + 32, a2);
}

uint64_t DgnIdFactory<NetNBestTraceNoTime<unsigned int>,1024u>::createRawData(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    v5 = *(a1 + 32);
    do
    {
      if (v5 == *(a1 + 8))
      {
        DgnIdFactory<NetNBestTraceNoTime<unsigned int>,1024u>::addChunk(a1);
        v5 = *(a1 + 32);
      }

      v4 = *(*a1 + 8 * v5++);
      *(a1 + 32) = v5;
      *(a1 + 16) = v4;
    }

    while (!v4);
  }

  result = *(v4 + 8);
  *a2 = v4;
  *(a1 + 16) = **(a1 + 16);
  return result;
}

unint64_t DgnIdFactory<NetNBestTraceNoTime<unsigned int>,1024u>::addChunk(uint64_t a1)
{
  result = MemChunkAlloc(*(a1 + 24), 0);
  v3 = result;
  v4 = *(a1 + 8);
  v5 = v4 << 16;
  if (v4 == *(a1 + 12))
  {
    result = DgnPrimArray<unsigned long long>::reallocElts(a1, 1, 1);
    v4 = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = v3;
  *(a1 + 8) = v4 + 1;
  v6 = *(a1 + 28);
  if (v6 < 2)
  {
    v8 = v5;
    v9 = v3;
  }

  else
  {
    v7 = v6 + 1;
    do
    {
      v8 = v5 + 1;
      *(v3 + 8) = v5;
      v9 = v3 + 16;
      *v3 = v3 + 16;
      --v7;
      v3 += 16;
      ++v5;
    }

    while (v7 > 2);
  }

  *(v9 + 8) = v8;
  *v9 = 0;
  return result;
}

uint64_t TLattice::TLattice(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  *a1 = &unk_2875233A8;
  *(a1 + 8) = -1;
  TFsa::TFsa((a1 + 24));
  TAllocator::TAllocator((a1 + 264), 2048);
  *(a1 + 256) = a9;
  *(a1 + 16) = a8;
  *(a1 + 248) = a7;
  std::vector<TState *>::vector[abi:ne200100](v102, a4);
  if (a3)
  {
    v20 = 0;
    while (1)
    {
      v21 = TAllocator::allocate((a1 + 264), 144);
      v22 = *(*a2 + 8 * v20);
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(v22 + 40);
      v27 = *(v22 + 48);
      v28 = *(v22 + 56);
      v29 = *(v22 + 112);
      v98 = *(v22 + 96);
      v99 = v29;
      v30 = *(v22 + 144);
      v100 = *(v22 + 128);
      v101 = v30;
      v31 = *(v22 + 80);
      *__p = *(v22 + 64);
      *&__p[16] = v31;
      TLatticeTransData::TLatticeTransData(v21, (a1 + 264), v23, v24, v25, v26, v27, v28, __p);
      v36 = *(*a2 + 8 * v20);
      v37 = *(v36 + 24);
      if (v37 >= a4)
      {
        tknPrintf("Error: The source index (%llu) is larger than the given state count (%llu)\n", v32, v33, v34, v35, *(v36 + 24), a4);
        std::string::basic_string[abi:ne200100]<0>(v95, &byte_262899963);
        *__p = byte_287529580;
        if (SHIBYTE(v96) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[8], v95[0], v95[1]);
        }

        else
        {
          *&__p[8] = *v95;
          *&__p[24] = v96;
        }

        *__p = &unk_287528000;
        if (__p[31] >= 0)
        {
          v64 = &__p[8];
        }

        else
        {
          v64 = *&__p[8];
        }

        conditionalAssert(v64, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/lattice.cpp", 58, v56, v57);
        *__p = byte_287529580;
        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        if (SHIBYTE(v96) < 0)
        {
          operator delete(v95[0]);
        }

        exception = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *exception = byte_287529580;
        v66 = (exception + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v66, *__p, *&__p[8]);
        }

        else
        {
          v75 = *__p;
          exception[3] = *&__p[16];
          *&v66->__r_.__value_.__l.__data_ = v75;
        }

        *exception = &unk_287528000;
      }

      v38 = *(v36 + 32);
      if (v38 >= a4)
      {
        tknPrintf("Error: The target index (%llu) is larger than the given state count (%llu)\n", v32, v33, v34, v35, v38, a4);
        std::string::basic_string[abi:ne200100]<0>(v95, &byte_262899963);
        *__p = byte_287529580;
        if (SHIBYTE(v96) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[8], v95[0], v95[1]);
        }

        else
        {
          *&__p[8] = *v95;
          *&__p[24] = v96;
        }

        *__p = &unk_287528000;
        if (__p[31] >= 0)
        {
          v61 = &__p[8];
        }

        else
        {
          v61 = *&__p[8];
        }

        conditionalAssert(v61, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/lattice.cpp", 65, v54, v55);
        *__p = byte_287529580;
        if ((__p[31] & 0x80000000) != 0)
        {
          operator delete(*&__p[8]);
        }

        if (SHIBYTE(v96) < 0)
        {
          operator delete(v95[0]);
        }

        v62 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v62 = byte_287529580;
        v63 = (v62 + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v63, *__p, *&__p[8]);
        }

        else
        {
          v74 = *__p;
          v62[3] = *&__p[16];
          *&v63->__r_.__value_.__l.__data_ = v74;
        }

        *v62 = &unk_287528000;
      }

      v39 = *(v102[0] + v37);
      v40 = *(v102[0] + v38);
      if (v39)
      {
        if (!v40)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v39 = TFsa::newState((a1 + 24), 0);
        *(v102[0] + *(*(*a2 + 8 * v20) + 24)) = v39;
        if (!v40)
        {
LABEL_9:
          v40 = TFsa::newState((a1 + 24), 0);
          *(v102[0] + *(*(*a2 + 8 * v20) + 32)) = v40;
        }
      }

      TFsa::newTrans((a1 + 24), v39, v40, v21);
      if (a3 == ++v20)
      {
        goto LABEL_14;
      }
    }
  }

  if (!a4)
  {
    tknPrintf("Error: Lattice needs at least one state\n", v16, v17, v18, v19);
    std::string::basic_string[abi:ne200100]<0>(v95, &byte_262899963);
    *__p = byte_287529580;
    if (SHIBYTE(v96) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], v95[0], v95[1]);
    }

    else
    {
      *&__p[8] = *v95;
      *&__p[24] = v96;
    }

    *__p = &unk_287528000;
    if (__p[31] >= 0)
    {
      v87 = &__p[8];
    }

    else
    {
      v87 = *&__p[8];
    }

    conditionalAssert(v87, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/lattice.cpp", 92, v76, v77);
    *__p = byte_287529580;
    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v96) < 0)
    {
      operator delete(v95[0]);
    }

    v88 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *v88 = byte_287529580;
    v89 = (v88 + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v89, *__p, *&__p[8]);
    }

    else
    {
      v93 = *__p;
      v88[3] = *&__p[16];
      *&v89->__r_.__value_.__l.__data_ = v93;
    }

    *v88 = &unk_287528000;
  }

  v45 = TFsa::newState((a1 + 24), 0);
  *v102[0] = v45;
LABEL_14:
  v46 = 0;
  do
  {
    v47 = *(v102[0] + v46);
    if (!v47)
    {
      tknPrintf("Error: State was not set properly while creating lattice\n", v41, v42, v43, v44);
      std::string::basic_string[abi:ne200100]<0>(v95, &byte_262899963);
      *__p = byte_287529580;
      if (SHIBYTE(v96) < 0)
      {
        std::string::__init_copy_ctor_external(&__p[8], v95[0], v95[1]);
      }

      else
      {
        *&__p[8] = *v95;
        *&__p[24] = v96;
      }

      *__p = &unk_287528000;
      if (__p[31] >= 0)
      {
        v58 = &__p[8];
      }

      else
      {
        v58 = *&__p[8];
      }

      conditionalAssert(v58, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/lattice.cpp", 109, v52, v53);
      *__p = byte_287529580;
      if ((__p[31] & 0x80000000) != 0)
      {
        operator delete(*&__p[8]);
      }

      if (SHIBYTE(v96) < 0)
      {
        operator delete(v95[0]);
      }

      v59 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *v59 = byte_287529580;
      v60 = (v59 + 1);
      if ((__p[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v60, *__p, *&__p[8]);
      }

      else
      {
        v73 = *__p;
        v59[3] = *&__p[16];
        *&v60->__r_.__value_.__l.__data_ = v73;
      }

      *v59 = &unk_287528000;
    }

    if (!*(v47 + 16))
    {
      TFsa::addExtremity(a1 + 24, v47, 0);
    }

    if (!*(v47 + 24))
    {
      TFsa::addExtremity(a1 + 24, v47, 1u);
    }

    ++v46;
  }

  while (a4 != v46);
  if (*(a1 + 64) != a4)
  {
    tknPrintf("Error: Expected state count to be %llu not %llu\n", v41, v42, v43, v44, *(a1 + 64), a4);
    std::string::basic_string[abi:ne200100]<0>(v95, &byte_262899963);
    *__p = byte_287529580;
    if (SHIBYTE(v96) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], v95[0], v95[1]);
    }

    else
    {
      *&__p[8] = *v95;
      *&__p[24] = v96;
    }

    *__p = &unk_287528000;
    if (__p[31] >= 0)
    {
      v78 = &__p[8];
    }

    else
    {
      v78 = *&__p[8];
    }

    conditionalAssert(v78, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/lattice.cpp", 117, v67, v68);
    *__p = byte_287529580;
    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v96) < 0)
    {
      operator delete(v95[0]);
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
      v90 = *__p;
      v79[3] = *&__p[16];
      *&v80->__r_.__value_.__l.__data_ = v90;
    }

    *v79 = &unk_287528000;
  }

  v48 = *(a1 + 224);
  if (v48 != a5)
  {
    tknPrintf("Error: Expected starting state count to be %llu not %llu\n", v41, v42, v43, v44, a5, v48);
    std::string::basic_string[abi:ne200100]<0>(v95, &byte_262899963);
    *__p = byte_287529580;
    if (SHIBYTE(v96) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], v95[0], v95[1]);
    }

    else
    {
      *&__p[8] = *v95;
      *&__p[24] = v96;
    }

    *__p = &unk_287528000;
    if (__p[31] >= 0)
    {
      v81 = &__p[8];
    }

    else
    {
      v81 = *&__p[8];
    }

    conditionalAssert(v81, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/lattice.cpp", 124, v69, v70);
    *__p = byte_287529580;
    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v96) < 0)
    {
      operator delete(v95[0]);
    }

    v82 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *v82 = byte_287529580;
    v83 = (v82 + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v83, *__p, *&__p[8]);
    }

    else
    {
      v91 = *__p;
      v82[3] = *&__p[16];
      *&v83->__r_.__value_.__l.__data_ = v91;
    }

    *v82 = &unk_287528000;
  }

  v49 = *(a1 + 232);
  if (v49 != a6)
  {
    tknPrintf("Error: Expected accepting state count to be %llu not %llu\n", v41, v42, v43, v44, a6, v49);
    std::string::basic_string[abi:ne200100]<0>(v95, &byte_262899963);
    *__p = byte_287529580;
    if (SHIBYTE(v96) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], v95[0], v95[1]);
    }

    else
    {
      *&__p[8] = *v95;
      *&__p[24] = v96;
    }

    *__p = &unk_287528000;
    if (__p[31] >= 0)
    {
      v84 = &__p[8];
    }

    else
    {
      v84 = *&__p[8];
    }

    conditionalAssert(v84, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/lattice.cpp", 131, v71, v72);
    *__p = byte_287529580;
    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v96) < 0)
    {
      operator delete(v95[0]);
    }

    v85 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *v85 = byte_287529580;
    v86 = (v85 + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v86, *__p, *&__p[8]);
    }

    else
    {
      v92 = *__p;
      v85[3] = *&__p[16];
      *&v86->__r_.__value_.__l.__data_ = v92;
    }

    *v85 = &unk_287528000;
  }

  Registry = TRegisterable<TLattice>::getRegistry();
  *(a1 + 8) = TBaseRegistry<TLatticeProcessor *>::registerInstance(Registry, a1);
  if (v102[0])
  {
    v102[1] = v102[0];
    operator delete(v102[0]);
  }

  return a1;
}

{
  return TLattice::TLattice(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_2626E7C3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v29 & 1) == 0)
    {
LABEL_6:
      v32 = *(v30 - 112);
      if (v32)
      {
        *(v30 - 104) = v32;
        operator delete(v32);
      }

      TAllocator::clear((v27 + 33));
      TFsa::~TFsa((v27 + 3));
      TRegisterable<TLattice>::~TRegisterable(v27);
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v28);
  goto LABEL_6;
}

void *TRegisterable<TLattice>::~TRegisterable(void *a1)
{
  *a1 = &unk_287528210;
  if (a1[1] != -1)
  {
    Registry = TRegisterable<TLattice>::getRegistry();
    v3 = *Registry;
    *(Registry[1] + 8 * a1[1] - 8) = 0;
    *Registry = v3 - 1;
  }

  return a1;
}

void TLattice::~TLattice(TLattice *this)
{
  *this = &unk_2875233A8;
  TAllocator::clear((this + 264));
  TAllocator::clear((this + 264));
  TFsa::~TFsa((this + 24));

  TRegisterable<TLattice>::~TRegisterable(this);
}

{
  TLattice::~TLattice(this);

  JUMPOUT(0x26672B1B0);
}

void TLatticeTransData::TLatticeTransData(uint64_t a1, TLatticeTransData *this, uint64_t a3, __int32 *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, _OWORD *a9)
{
  *a1 = a3;
  *(a1 + 16) = a5;
  *(a1 + 24) = a6;
  *(a1 + 32) = a7;
  *(a1 + 40) = a8;
  v11 = a9[1];
  *(a1 + 48) = *a9;
  *(a1 + 64) = v11;
  v12 = a9[2];
  v13 = a9[3];
  v14 = a9[5];
  *(a1 + 112) = a9[4];
  *(a1 + 128) = v14;
  *(a1 + 80) = v12;
  *(a1 + 96) = v13;
  if (a3 == 3)
  {
    *(a1 + 8) = a4;
  }

  else if (a3 == 2)
  {
    v16 = wcslen(a4);
    if ((v16 + 1) >> 62)
    {
      v17 = -1;
    }

    else
    {
      v17 = 4 * (v16 + 1);
    }

    v18 = TAllocator::allocate(this, v17);
    wcscpy(v18, a4);
    *(a1 + 8) = v18;
  }

  else
  {
    *(a1 + 8) = 0;
    v19 = TAllocator::allocate(this, 8);
    strcpy(v19, "?");
    *(a1 + 8) = v19;
  }
}

void TRegisterable<TLattice>::~TRegisterable(void *a1)
{
  TRegisterable<TLattice>::~TRegisterable(a1);

  JUMPOUT(0x26672B1B0);
}

uint64_t TRegisterable<TLattice>::getRegistry()
{
  {
    operator new();
  }

  return TRegisterable<TLattice>::getRegistry(void)::s_registry;
}

void *std::vector<TState *>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<TState *>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<TState *>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_2626E80A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<TState *>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TParam *>>(a1, a2);
  }

  std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
}

void WaveDecoder::saveWaveDecoder(WaveDecoder *this, DFile *a2, DFileChecksums *a3, int a4, int a5)
{
  if (a4)
  {

    WaveDecoder::saveWaveDecoderText(this, a2, a5);
  }

  else
  {
    v8 = OpenAndWriteMrecHeader(a2, 0x6Cu, a5, "MRWDB!?", 18, 1);
    v10 = 0;
    writeObject<short>(v8, this, &v10);
    writeObject<short>(v8, this + 16, &v10);
    writeObject<short>(v8, this + 32, &v10);
    writeObjectChecksum(v8, &v10);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x6Cu, v10);
    DgnDelete<DgnStream>(v8);
  }
}

void WaveDecoder::saveWaveDecoderText(WaveDecoder *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v26);
  DgnTextFileWriter::openDgnTextFileWriter(v26, a2, 0x6Eu, a3);
  v24 = 0;
  v25 = 0;
  DgnTextFile::legalDgnTextFileVersions(v26, sWDT_Versions, &v24, v6, v7, v8, v9, v10);
  DgnTextFileWriter::setFileType(v26, "WaveDataDecodeTableText", (v24 + 8 * (v25 - 1)));
  v22 = 0;
  v23 = 0;
  *v20 = 0;
  v11 = realloc_array(0, v20, 0xCuLL, 0, 0, 1);
  v21 = 0;
  v22 = *v20;
  LODWORD(v23) = 3;
  HIDWORD(v23) = v11 >> 2;
  v27 = 0;
  HIDWORD(v21) = realloc_array(0, &v27, 0x30uLL, 0, 0, 1) >> 4;
  *v20 = v27;
  v12 = v21;
  if (v21 <= 3)
  {
    if (v21 != 3)
    {
      v14 = v21 + 1;
      v15 = 16 * v21;
      do
      {
        DgnString::DgnString((*v20 + v15));
        v15 += 16;
      }

      while (v14++ != 3);
    }
  }

  else if (v21 >= 4)
  {
    v13 = 16 * v21 - 16;
    do
    {
      --v12;
      DgnString::~DgnString((*v20 + v13));
      v13 -= 16;
    }

    while (v12 > 3);
  }

  LODWORD(v21) = 3;
  DgnString::operator=(*v20, "Type");
  *v22 = 0;
  DgnString::operator=((*v20 + 16), "OneByteFeature");
  *(v22 + 1) = 3;
  DgnString::operator=((*v20 + 32), "TwoByteFeature");
  *(v22 + 2) = 1;
  DgnTextFileWriter::setLineFieldFormat(v26, &v22, v20);
  if (*(this + 2))
  {
    v17 = 0;
    do
    {
      DgnTextFileWriter::setLineFieldValue(v26, 0, "Linear");
      DgnTextFileWriter::setLineFieldUnsignedValue(v26, 1u, v17);
      DgnTextFileWriter::setLineFieldIntegerValue(v26, 2u, *(*this + 2 * v17));
      DgnTextFileWriter::writeNextLine(v26);
      ++v17;
    }

    while (v17 < *(this + 2));
  }

  if (*(this + 6))
  {
    v18 = 0;
    do
    {
      DgnTextFileWriter::setLineFieldValue(v26, 0, "Mu_Law");
      DgnTextFileWriter::setLineFieldUnsignedValue(v26, 1u, v18);
      DgnTextFileWriter::setLineFieldIntegerValue(v26, 2u, *(*(this + 2) + 2 * v18));
      DgnTextFileWriter::writeNextLine(v26);
      ++v18;
    }

    while (v18 < *(this + 6));
  }

  if (*(this + 10))
  {
    v19 = 0;
    do
    {
      DgnTextFileWriter::setLineFieldValue(v26, 0, "A_Law");
      DgnTextFileWriter::setLineFieldUnsignedValue(v26, 1u, v19);
      DgnTextFileWriter::setLineFieldIntegerValue(v26, 2u, *(*(this + 4) + 2 * v19));
      DgnTextFileWriter::writeNextLine(v26);
      ++v19;
    }

    while (v19 < *(this + 10));
  }

  DgnArray<DgnString>::releaseAll(v20);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v22);
  DgnIArray<Utterance *>::~DgnIArray(&v24);
  DgnTextFileWriter::~DgnTextFileWriter(v26);
}

void sub_2626E8504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnIArray<Utterance *>::~DgnIArray(va1);
  DgnTextFileWriter::~DgnTextFileWriter(va2);
  _Unwind_Resume(a1);
}

uint64_t WaveDecoder::sizeObject(_DWORD *a1, int a2)
{
  if (a2 == 3)
  {
    v2 = 0;
    v3 = 0;
  }

  else
  {
    v3 = 12;
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v3 = 8;
    }

    if ((a2 & 0xFFFFFFFE) == 2)
    {
      v2 = 24;
      if (gShadowDiagnosticShowIdealizedObjectSizes)
      {
        v2 = 16;
      }
    }

    else
    {
      v4 = a1[2];
      if (v4 <= 0)
      {
        v5 = 0;
      }

      else
      {
        v5 = (2 * v4);
      }

      v6 = v3 + v5;
      v7 = a1[6];
      if (v7 <= 0)
      {
        v8 = 0;
      }

      else
      {
        v8 = (2 * v7);
      }

      v2 = v6 + v3 + v8;
      v9 = a1[10];
      if (v9 >= 1)
      {
        v3 += 2 * v9;
      }
    }
  }

  return v3 + v2;
}

void TFormatter::TFormatter(TFormatter *this, const TDataManager *a2, TDataManager *a3, TLexicon *a4, TTokenizer *a5)
{
  *(this + 1) = -1;
  *(this + 2) = a5;
  *(this + 3) = a3;
  *(this + 4) = a4;
  *this = &unk_2875293F0;
  *(this + 5) = &unk_2875294E0;
  TAllocator::TAllocator((this + 64), 2048);
  *(this + 104) = 0u;
  *(this + 17) = 0;
  *(this + 120) = 0u;
  operator new();
}

void sub_2626E9A54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, void *a42, int a43, __int16 a44, char a45, char a46, int a47, __int16 a48, char a49, char a50)
{
  if (a46 < 0)
  {
    operator delete(__p);
    if ((v53 & 1) == 0)
    {
LABEL_6:
      if (a2 == 1)
      {
        __cxa_begin_catch(a1);
        TFormatter::freeMemory(v50);
        __cxa_rethrow();
      }

      *(v51 + 136) = a14;
      if (*(v54 - 89) < 0)
      {
        operator delete(*(v54 - 112));
      }

      TAllocator::clear((v50 + 64));
      TRegisterable<TIFormatter>::~TRegisterable(v50);
      _Unwind_Resume(a1);
    }
  }

  else if (!v53)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v52);
  goto LABEL_6;
}

uint64_t TFormatter::freeMemory(TFormatter *this)
{
  --*(*(this + 4) + 360);
  v2 = *(this + 2);
  if (v2)
  {
    --*(v2 + 120);
  }

  v3 = *(this + 19);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 18);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 20);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 15);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 13);
  if (v7)
  {
    TGrammarManager2::~TGrammarManager2(v7);
    MEMORY[0x26672B1B0]();
  }

  v8 = *(this + 14);
  if (v8)
  {
    TGrammarManager2::~TGrammarManager2(v8);
    MEMORY[0x26672B1B0]();
  }

  v9 = *(this + 17);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 16);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 7);
  if (v11)
  {
    TDataSaver::~TDataSaver(v11);
    MEMORY[0x26672B1B0]();
  }

  v12 = *(this + 6);
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  result = *(this + 3);
  if (result)
  {
    v14 = *(*result + 8);

    return v14();
  }

  return result;
}

void TFormatter::~TFormatter(TFormatter *this)
{
  *this = &unk_2875293F0;
  *(this + 5) = &unk_2875294E0;
  TFormatter::freeMemory(this);
  TAllocator::clear((this + 64));

  TRegisterable<TIFormatter>::~TRegisterable(this);
}

{
  TFormatter::~TFormatter(this);

  JUMPOUT(0x26672B1B0);
}

void non-virtual thunk toTFormatter::~TFormatter(TFormatter *this)
{
  TFormatter::~TFormatter((this - 40));
}

{
  TFormatter::~TFormatter((this - 40));

  JUMPOUT(0x26672B1B0);
}

uint64_t TFormatter::save(TFormatter *this, TDataManager *a2, TDataManager *a3)
{
  v45[19] = *MEMORY[0x277D85DE8];
  v6 = *(this + 4);
  v7 = (v6 + 72);
  if (*(v6 + 95) < 0)
  {
    v7 = *v7;
  }

  TOutputModel::TOutputModel(v38, a2, a3, v7, *(this + 3));
  if (a2)
  {
    TDataManager::setIntVar(a2, "ItnVersion", 4);
    std::ostringstream::basic_ostringstream[abi:ne200100](&v40);
    TOutputStream::TOutputStream(v37, &v40, "ItnParam", *(this + 4) + 240);
    TParamManager::save(*(this + 6), v37, 0);
    std::stringbuf::str();
    if (SHIBYTE(v33[0].__locale_) >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (SHIBYTE(v33[0].__locale_) >= 0)
    {
      locale_high = HIBYTE(v33[0].__locale_);
    }

    else
    {
      locale_high = v32;
    }

    (*(*a2 + 48))(a2, "ItnParam", p_p, locale_high);
    if (SHIBYTE(v33[0].__locale_) < 0)
    {
      operator delete(__p);
    }

    v10 = MEMORY[0x277D82828];
    if (v39 == 1 || TItnRuleManager::isCustomized(*(this + 15)))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
      TOutputStream::TOutputStream(v30, &__p, "ItnRule", *(this + 4) + 240);
      TItnRuleManager::save(*(this + 15), v30, 0);
      std::stringbuf::str();
      if ((v29 & 0x80u) == 0)
      {
        v11 = &v27;
      }

      else
      {
        v11 = v27;
      }

      if ((v29 & 0x80u) == 0)
      {
        v12 = v29;
      }

      else
      {
        v12 = v28;
      }

      (*(*a2 + 48))(a2, "ItnRule", v11, v12);
      if (v29 < 0)
      {
        operator delete(v27);
      }

      __p = *v10;
      *(&__p + *(__p - 3)) = *(v10 + 24);
      v32 = MEMORY[0x277D82878] + 16;
      if (v35 < 0)
      {
        operator delete(v34);
      }

      v32 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v33);
      std::ostream::~ostream();
      MEMORY[0x26672B160](v36);
    }

    if (v39 == 1)
    {
      v13 = *(this + 7);
      if (v13)
      {
        TDataSaver::save(v13, a2);
      }
    }

    v40 = *v10;
    *(&v40 + *(v40 - 3)) = *(v10 + 24);
    v41 = (MEMORY[0x277D82878] + 16);
    if (v44 < 0)
    {
      operator delete(v43);
    }

    v41 = (MEMORY[0x277D82868] + 16);
    std::locale::~locale(v42);
    std::ostream::~ostream();
    MEMORY[0x26672B160](v45);
  }

  if (a3)
  {
    TDataManager::setIntVar(a3, "ItnVersion", 4);
    if (v39 >= 2)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&v40);
      TOutputStream::TOutputStream(v37, &v40, "ItnParam", *(this + 4) + 240);
      TParamManager::save(*(this + 6), v37, 1);
      std::stringbuf::str();
      if (SHIBYTE(v33[0].__locale_) >= 0)
      {
        v14 = &__p;
      }

      else
      {
        v14 = __p;
      }

      if (SHIBYTE(v33[0].__locale_) >= 0)
      {
        v15 = HIBYTE(v33[0].__locale_);
      }

      else
      {
        v15 = v32;
      }

      (*(*a3 + 48))(a3, "ItnParam", v14, v15);
      if (SHIBYTE(v33[0].__locale_) < 0)
      {
        operator delete(__p);
      }

      std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
      TOutputStream::TOutputStream(v30, &__p, "ItnRule", *(this + 4) + 240);
      TItnRuleManager::save(*(this + 15), v30, 1);
      std::stringbuf::str();
      if ((v29 & 0x80u) == 0)
      {
        v16 = &v27;
      }

      else
      {
        v16 = v27;
      }

      if ((v29 & 0x80u) == 0)
      {
        v17 = v29;
      }

      else
      {
        v17 = v28;
      }

      (*(*a3 + 48))(a3, "ItnRule", v16, v17);
      if (v29 < 0)
      {
        operator delete(v27);
      }

      v18 = *(this + 7);
      if (v18)
      {
        TDataSaver::save(v18, a3);
      }

      __p = *MEMORY[0x277D82828];
      v19 = __p;
      v20 = *(MEMORY[0x277D82828] + 24);
      *(&__p + *(__p - 3)) = v20;
      v32 = MEMORY[0x277D82878] + 16;
      if (v35 < 0)
      {
        operator delete(v34);
      }

      v32 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v33);
      std::ostream::~ostream();
      MEMORY[0x26672B160](v36);
      v40 = v19;
      *(&v40 + *(v19 - 3)) = v20;
      v41 = (MEMORY[0x277D82878] + 16);
      if (v44 < 0)
      {
        operator delete(v43);
      }

      v41 = (MEMORY[0x277D82868] + 16);
      std::locale::~locale(v42);
      std::ostream::~ostream();
      MEMORY[0x26672B160](v45);
    }

    if (!*(this + 7))
    {
      v21 = 0;
      __p = 0;
      v32 = 0;
      v40 = "ItnTag";
      v41 = "ItnGrammar";
      v42[0].__locale_ = "ItnGrammar2";
      v42[1].__locale_ = "ItnCompounderFeatureConfig";
      v42[2].__locale_ = "ItnCompounderWordFlag";
      v42[3].__locale_ = "ItnCompounderRules";
      v33[0].__locale_ = 0;
      do
      {
        v22 = (&v40)[v21];
        if ((*(**(this + 3) + 40))(*(this + 3), v22, 0, 0))
        {
          TDataManager::getStringVar(*(this + 3));
          if (SHIBYTE(v33[0].__locale_) >= 0)
          {
            v23 = &__p;
          }

          else
          {
            v23 = __p;
          }

          if (SHIBYTE(v33[0].__locale_) >= 0)
          {
            v24 = HIBYTE(v33[0].__locale_);
          }

          else
          {
            v24 = v32;
          }

          (*(*a3 + 48))(a3, v22, v23, v24);
        }

        ++v21;
      }

      while (v21 != 6);
      if (SHIBYTE(v33[0].__locale_) < 0)
      {
        operator delete(__p);
      }
    }
  }

  result = *(this + 3);
  if (result)
  {
    result = (*(*result + 24))(result);
  }

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2626EA86C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  std::ostringstream::~ostringstream(&a61);
  _Unwind_Resume(a1);
}

void TFormatter::importChanges(TFormatter *this, const TDataManager *a2, TLexicon *a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x28223BE20](this, a2, a3, a4, a5);
  v8 = v7;
  v29 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v26 = 0;
  v28 = 0;
  if (!v7)
  {
    v8 = *(v5 + 32);
  }

  v9 = (v8 + 72);
  if (*(v8 + 95) < 0)
  {
    v9 = *v9;
  }

  TInputModel::TInputModel(&v21, v6, 0, 1, v9);
  IntVar = TInputModel::getIntVar(&v21, "ItnVersion", 1);
  if ((IntVar - 5) > 0xFFFFFFFB)
  {
    operator new();
  }

  tknPrintf("Error: %llu : Expected %s in range [%llu,%llu]\n", v11, v12, v13, v14, IntVar, "ItnVersion", 1, 4);
  std::string::basic_string[abi:ne200100]<0>(&__s, &byte_262899963);
  *v24 = byte_287529580;
  if (SHIBYTE(v23) < 0)
  {
    std::string::__init_copy_ctor_external(&v24[8], __s, *(&__s + 1));
  }

  else
  {
    *&v24[8] = __s;
    v25 = v23;
  }

  *v24 = &unk_287528000;
  if (SHIBYTE(v25) >= 0)
  {
    v17 = &v24[8];
  }

  else
  {
    v17 = *&v24[8];
  }

  conditionalAssert(v17, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/itn/formatter.cpp", 742, v15, v16);
  *v24 = byte_287529580;
  if (SHIBYTE(v25) < 0)
  {
    operator delete(*&v24[8]);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(__s);
  }

  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(v24, &byte_262899963);
  *exception = byte_287529580;
  v19 = (exception + 1);
  if ((v24[23] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(v19, *v24, *&v24[8]);
  }

  else
  {
    v20 = *v24;
    exception[3] = *&v24[16];
    *&v19->__r_.__value_.__l.__data_ = v20;
  }

  *exception = &unk_287528000;
}

void sub_2626EB744(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x2626EB800);
}

void sub_2626EB75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if (LOBYTE(STACK[0x470]) == 1)
  {
    TSegmenter::findSegmentEnd(va, v11);
  }

  JUMPOUT(0x2626EB788);
}

void sub_2626EB784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (LOBYTE(STACK[0x890]) == 1 && STACK[0x478] != a13 && STACK[0x478] != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0xCB0]) == 1)
  {
    v16 = STACK[0x898];
    if (STACK[0x898] != a14)
    {
      if (v16)
      {
        MEMORY[0x26672B1B0](v16, 0x1000C4052888210);
      }
    }
  }

  if (SLOBYTE(STACK[0xCDF]) < 0)
  {
    operator delete(STACK[0xCC8]);
  }

  _Unwind_Resume(a1);
}

void TFormatter::makeBlockForWord(TFormatter *this, const TWord *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x28223BE20](this, a2, a3, a4, a5);
  v7 = v6;
  v8 = v5;
  v22 = v24;
  v23 = xmmword_26286B6F0;
  v24[1024] = 1;
  TWord::getWrittenForm(v6, &v22);
  v19 = v21;
  v20 = xmmword_26286B6F0;
  v21[1024] = 1;
  TWord::getSpokenForm(v7, &v19);
  v9 = *(v8 + 48);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v9 + 3792));
  if (*(v9 + TParam::getValidConfig((v9 + 3792), ActiveConfigHandle) + 3944) != 1 || *(&v23 + 1) == 0)
  {
    v15 = v17;
    v16 = xmmword_26286B6F0;
    v18 = 1;
    (*(**(v8 + 120) + 48))(*(v8 + 120), *v7, 0, &v15);
    if (*(&v16 + 1))
    {
      v12 = *v15;
      if (*v15)
      {
        v13 = *(*(v8 + 120) + 32);
        if (v12 <= (*(*(v8 + 120) + 40) - v13) >> 3)
        {
          v14 = *(v13 + 8 * v12 - 8);
        }
      }
    }

    if (v18 == 1 && v15 != v17)
    {
      if (v15)
      {
        MEMORY[0x26672B1B0]();
      }
    }
  }

  operator new();
}

void sub_2626EBB00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (LOBYTE(STACK[0x828]) == 1)
  {
    TFormatter::makeBlockForWord(va, v3);
  }

  if (LOBYTE(STACK[0xC48]) == 1)
  {
    v8 = STACK[0x830];
    if (STACK[0x830] != v6)
    {
      if (v8)
      {
        MEMORY[0x26672B1B0](v8, 0x1000C4052888210);
      }
    }
  }

  if (*(v5 + 1048) == 1 && STACK[0xC50] != v4 && STACK[0xC50] != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

void TFormatter::splitPattern(uint64_t *a1, __int32 *a2, void *a3, void *a4)
{
  if (!*a2)
  {
    operator new();
  }

  *a3 = 0;
  *a4 = 0;
  if (wcsncmp(a2, &unk_262888E90, 1uLL))
  {
    v6 = wcsstr(a2, &unk_262888E90);
    if (!v6)
    {
      v6 = &a2[wcslen(a2)];
    }

    std::wstring::basic_string[abi:ne200100]<0>(&__str, a2);
    std::wstring::basic_string(&v24, &__str, 0, v6 - a2, &v22);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    operator new();
  }

  v7 = a2 + 1;
  v8 = wcsstr(v7, &unk_262888E98);
  std::wstring::basic_string[abi:ne200100]<0>(&__str, v7);
  std::wstring::basic_string(&v24, &__str, 0, v8 - v7, &v22);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v9 = v8 + 1;
  v10 = v9;
  v11 = 1;
  do
  {
    if (!*v10)
    {
      break;
    }

    v12 = wcsncmp(v10, &unk_262888E90, 1uLL);
    v13 = 1;
    if (v12)
    {
      if (!wcsncmp(v10, &unk_262888EA0, 1uLL))
      {
        v13 = -1;
      }

      else
      {
        v13 = 0;
      }
    }

    ++v10;
    v11 += v13;
  }

  while (v11);
  std::wstring::basic_string[abi:ne200100]<0>(&v22, v9);
  std::wstring::basic_string(&__str, &v22, 0, (v10 - v9 - 4) >> 2, &v21);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    v14 = v24.__r_.__value_.__r.__words[0];
    if (wcscmp(v24.__r_.__value_.__l.__data_, dword_262888EA8))
    {
LABEL_23:
      v21 = (*(*a1[17] + 16))(a1[17], v14);
      v22.__r_.__value_.__r.__words[0] = &v22.__r_.__value_.__l.__size_;
      for (*&v22.__r_.__value_.__r.__words[1] = 0uLL; v21 != -1; v21 = *(TTagManager::getTag(a1[17], v21) + 32))
      {
        std::__tree<SDhVoc_fake **>::__emplace_unique_key_args<SDhVoc_fake **,SDhVoc_fake ** const&>(&v22, &v21);
      }

      operator new();
    }
  }

  else if (wcscmp(&v24, dword_262888EA8))
  {
    v14 = &v24;
    goto LABEL_23;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  HeadClone = TLexicon::findHeadClone(a1[4], p_str);
  if (!HeadClone)
  {
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &__str;
    }

    else
    {
      v20 = __str.__r_.__value_.__r.__words[0];
    }

    HeadClone = TLexicon::addTempWord(a1[4], v20, 0, 0, 0);
  }

  TFormatter::makeBlockForWord(a1, HeadClone, v17, v18, v19);
}

void sub_2626EC8C4(_Unwind_Exception *a1)
{
  v3 = *(v1 - 136);
  if (v3)
  {
    *(v1 - 128) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 112);
  if (v4)
  {
    *(v1 - 104) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t TFormatter::stateToParamConfig(TFormatter *this, const TItnControlState *a2)
{
  v2 = *(a2 + 1);
  if (*(a2 + 5) != -1)
  {
    v2 = *(a2 + 5);
  }

  v3 = v2 - 7;
  if (v3 > 2)
  {
    v4 = 136;
  }

  else
  {
    v4 = qword_262888F78[v3];
  }

  return *(*(this + 6) + v4);
}

double TFormatter::makeUttState@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, _OWORD *a7@<X8>)
{
  v7 = a4;
  *&v11 = -1;
  *(&v11 + 1) = -1;
  v71 = v11;
  v72 = v11;
  v69 = v11;
  v70 = v11;
  if ((a6 & 4) == 0)
  {
    if (!a4)
    {
LABEL_17:
      a7[2] = v11;
      a7[3] = v11;
      *a7 = v11;
      a7[1] = v11;
      return *&v11;
    }

    v12 = TResultManager::getResult(*(a1 + 128), *(a2 + 8 * a4 - 8));
    if (0xAAAAAAAAAAAAAAABLL * ((v12[5] - v12[4]) >> 3) < (v12[8] - v12[7]) >> 6)
    {
      v13 = v12[8];
      v14 = *(v13 - 48);
      *a7 = *(v13 - 64);
      a7[1] = v14;
      v11 = *(v13 - 32);
      v15 = *(v13 - 16);
      a7[2] = v11;
      a7[3] = v15;
      return *&v11;
    }

LABEL_16:
    *&v11 = -1;
    *(&v11 + 1) = -1;
    goto LABEL_17;
  }

  if (a5)
  {
    a3 = a5 + a4;
  }

  if (a3 <= a4)
  {
    goto LABEL_16;
  }

  v17 = a4;
  while (1)
  {
    v18 = TResultManager::getResult(*(a1 + 128), *(a2 + 8 * v17));
    v20 = v18[13];
    v19 = v18[14];
    v21 = v19 - v20;
    if (v19 != v20)
    {
      break;
    }

LABEL_15:
    if (++v17 >= a3)
    {
      goto LABEL_16;
    }
  }

  v22 = 0;
  v23 = 0;
  v24 = v21 >> 3;
  v25 = (v20 + 8);
  while (!*(v25 - 1) || !*v25)
  {
    v26 = *v25;
    v25 += 2;
    v23 += v26;
    v22 += 2;
    if (v22 >= v24)
    {
      goto LABEL_15;
    }
  }

  v59 = a7;
  v27 = (v18[7] + (v23 << 6));
  v28 = v27[1];
  v68[0] = *v27;
  v68[1] = v28;
  v29 = v27[3];
  v68[2] = v27[2];
  v68[3] = v29;
  *&v30 = -1;
  *(&v30 + 1) = -1;
  v66 = v30;
  v67 = v30;
  v64 = v30;
  v65 = v30;
  if (!v7)
  {
    goto LABEL_60;
  }

  v31 = 0;
  v60 = v7;
  v61 = a2 + 8 * v7;
  do
  {
    while (1)
    {
      v32 = TResultManager::getResult(*(a1 + 128), *(v61 + 8 * ~v31));
      v33 = *(v32 + 104);
      v34 = *(v32 + 112) - v33;
      if (v34)
      {
        break;
      }

      if (++v31 >= v7)
      {
        goto LABEL_60;
      }
    }

    v35 = v32;
    v62 = v31;
    v36 = v34 >> 3;
    v37 = 0;
    v38 = *(v32 + 16) + strlen(*(v32 + 16));
    v39 = 0xAAAAAAAAAAAAAAABLL * ((v35[5] - v35[4]) >> 3);
    do
    {
      v40 = *(v33 + 8 * (v36 - v37) - 16);
      v41 = v38 - v40;
      if (-v40 < 0)
      {
        v43 = 1;
        v44 = (v38 - v40);
        while (1)
        {
          v63 = 0;
          v45 = TLocaleInfo::multiByteToUnicode(*(a1 + 32) + 240, v44, &v63);
          if (v45 == -1)
          {
LABEL_44:
            v49 = v35[7] + (v39 << 6);
            v50 = *(v49 - 48);
            v64 = *(v49 - 64);
            v65 = v50;
            v51 = *(v49 - 16);
            v66 = *(v49 - 32);
            v67 = v51;
            v42 = 1;
            goto LABEL_45;
          }

          v46 = v45;
          if ((v43 & 1) == 0)
          {
            goto LABEL_38;
          }

          v47 = v63;
          {
            operator new();
          }

          v43 = 1;
          if (v47 <= 159)
          {
            if (v47 <= 0x20 && ((1 << v47) & 0x100002600) != 0)
            {
              goto LABEL_39;
            }

LABEL_38:
            v43 = 0;
            goto LABEL_39;
          }

          if (v47 >= 12288)
          {
            if (v47 == 12288)
            {
              goto LABEL_39;
            }

            v48 = 65279;
          }

          else
          {
            if (v47 == 160)
            {
              goto LABEL_39;
            }

            v48 = 8203;
          }

          if (v47 != v48)
          {
            goto LABEL_38;
          }

LABEL_39:
          v44 += v46;
          if (v44 >= v38)
          {
            if (v43)
            {
              break;
            }

            goto LABEL_44;
          }
        }
      }

      v42 = 0;
LABEL_45:
      v33 = v35[13];
      v52 = v35[14];
      if (v37 + 2 >= ((v52 - v33) >> 3))
      {
        break;
      }

      v39 -= *(v52 + 8 * ~v37);
      v36 = (v52 - v33) >> 3;
      v37 += 2;
      v38 = v41;
    }

    while ((v42 & 1) == 0);
    v31 = v62 + 1;
    v7 = v60;
    if (v62 + 1 >= v60)
    {
      v53 = 1;
    }

    else
    {
      v53 = v42;
    }
  }

  while ((v53 & 1) == 0);
  if (v42)
  {
    for (i = 0; i != 32; i += 8)
    {
      v55 = *(&v64 + i);
      if (v55 != -1 && v55 == *(v68 + i))
      {
        *(&v71 + getItnControlCategory(*(&v64 + i))) = -1;
        *(&v69 + getItnControlCategory(v55)) = v55;
      }
    }
  }

LABEL_60:
  v56 = v70;
  *v59 = v69;
  v59[1] = v56;
  *&v11 = v71;
  v57 = v72;
  v59[2] = v71;
  v59[3] = v57;
  return *&v11;
}

void sub_2626ECD78(_Unwind_Exception *a1)
{
  v2 = v1;
  MEMORY[0x26672B1B0](v2, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

void TFormatter::addWords(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  std::vector<TItnWordData>::reserve(a4, 0x6DB6DB6DB6DB6DB7 * ((a4[1] - *a4) >> 4) + ((a2[1] - *a2) >> 3));
  v8 = *a2;
  if (a2[1] != *a2)
  {
    v9 = 0;
    while (1)
    {
      Word = TLexicon::findWord(*(a1 + 32), *(v8 + 8 * v9));
      if (Word)
      {
        if (!a3)
        {
          goto LABEL_8;
        }
      }

      else
      {
        Word = TLexicon::addTempWord(*(a1 + 32), *(*a2 + 8 * v9), 0, 0, 0);
        if (!a3)
        {
          goto LABEL_8;
        }
      }

      if (v9 != ((a2[1] - *a2) >> 3) - 1)
      {
        v11 = *(a3 + 4 * v9);
        goto LABEL_10;
      }

LABEL_8:
      v11 = 0;
LABEL_10:
      *&v12 = -1;
      *(&v12 + 1) = -1;
      v21 = v12;
      v20 = v12;
      v19 = v12;
      v18 = v12;
      v14 = 0uLL;
      v15 = Word;
      v16 = v11;
      v17 = 0;
      v22 = 256;
      std::vector<TItnWordData>::push_back[abi:ne200100](a4, &v14);
      ++v9;
      v8 = *a2;
      v13 = a2[1];
      if (v9 >= (v13 - *a2) >> 3)
      {
        if (v8 != v13)
        {
          *(a4[1] - 88) = 1000;
        }

        return;
      }
    }
  }
}

void *std::vector<TItnWordData>::reserve(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x24924924924924ALL)
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<TItnWordData>>(result, a2);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<TItnWordData>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v12 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 4);
    v13 = v12 + 1;
    if ((v12 + 1) > 0x249249249249249)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v14 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 4);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x124924924924924)
    {
      v15 = 0x249249249249249;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TItnWordData>>(a1, v15);
    }

    v16 = 112 * v12;
    v17 = *a2;
    v18 = a2[2];
    *(v16 + 16) = a2[1];
    *(v16 + 32) = v18;
    *v16 = v17;
    v19 = a2[3];
    v20 = a2[4];
    v21 = a2[6];
    *(v16 + 80) = a2[5];
    *(v16 + 96) = v21;
    *(v16 + 48) = v19;
    *(v16 + 64) = v20;
    v11 = 112 * v12 + 112;
    v22 = *(a1 + 8) - *a1;
    v23 = v16 - v22;
    memcpy((v16 - v22), *a1, v22);
    v24 = *a1;
    *a1 = v23;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[2];
    v4[1] = a2[1];
    v4[2] = v7;
    *v4 = v6;
    v8 = a2[3];
    v9 = a2[4];
    v10 = a2[6];
    v4[5] = a2[5];
    v4[6] = v10;
    v4[3] = v8;
    v4[4] = v9;
    v11 = (v4 + 7);
  }

  *(a1 + 8) = v11;
}

uint64_t TFormatter::addWords(uint64_t a1, uint64_t *a2, unint64_t a3, int a4, void *a5)
{
  if (a2 >= a3)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = 0;
    v28 = a4 ^ 1;
    do
    {
      v31 = a2;
      v6 = TResultManager::getResult(*(a1 + 128), *a2);
      v7 = v6;
      v8 = v6[1];
      if (((v28 | v8) & 1) == 0)
      {
        v8 = *v6;
      }

      v29 = v5 | v8;
      std::vector<TItnWordData>::reserve(a5, 0x6DB6DB6DB6DB6DB7 * ((a5[1] - *a5) >> 4) - 0x5555555555555555 * ((*(v6 + 5) - *(v6 + 4)) >> 3));
      v9 = *(v7 + 13);
      v10 = *(v7 + 14);
      if (v10 != v9)
      {
        v11 = 0;
        v12 = 0;
        do
        {
          if (*(v9 + 8 * (v11 | 1)))
          {
            v13 = 0;
            v14 = *(v9 + 8 * v11) == 0;
            v15 = 24 * v12;
            v16 = v12 << 6;
            do
            {
              v17 = *(v7 + 4) + v15;
              if (*(v17 + 23) < 0)
              {
                v17 = *v17;
              }

              Word = TLexicon::findWord(*(a1 + 32), v17);
              if (!Word)
              {
                v19 = *(v7 + 4) + v15;
                if (*(v19 + 23) < 0)
                {
                  v19 = *v19;
                }

                Word = TLexicon::addTempWord(*(a1 + 32), v19, 0, 0, 0);
              }

              v20 = *(*(v7 + 10) + 8 * v12 + 8 * v13);
              *&v21 = -1;
              *(&v21 + 1) = -1;
              v41 = v21;
              v40 = v21;
              v39 = v21;
              v38 = v21;
              *&v33 = v31;
              *(&v33 + 1) = v11;
              v34 = Word;
              v35 = v20;
              v36 = 0;
              v37 = v14;
              v42 = 0;
              v43 = v13 == 0;
              v22 = (*(v7 + 7) + v16);
              v23 = *v22;
              v24 = v22[1];
              v25 = v22[2];
              v41 = v22[3];
              v40 = v25;
              v39 = v24;
              v38 = v23;
              v42 = 1;
              if (!(v12 + v13))
              {
                v36 = v29 & 1;
                v29 = v7[1];
                if (((v28 | v29) & 1) == 0)
                {
                  v29 = *v7;
                }
              }

              std::vector<TItnWordData>::push_back[abi:ne200100](a5, &v33);
              ++v13;
              v9 = *(v7 + 13);
              v15 += 24;
              v16 += 64;
            }

            while (v13 < *(v9 + 8 * (v11 | 1)));
            v10 = *(v7 + 14);
            v12 += v13;
          }

          v11 += 2;
        }

        while (v11 < (v10 - v9) >> 3);
      }

      a2 = v31 + 1;
      v5 = v29;
    }

    while ((v31 + 1) < a3);
  }

  return v5 & 1;
}

uint64_t TFormatter::addLeftContext(uint64_t a1, uint64_t *a2, unint64_t a3, void *a4, BOOL *a5)
{
  v10 = *(a1 + 48);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v10 + 1520));
  v12 = 0;
  v13 = *(v10 + 4 * TParam::getValidConfig((v10 + 1520), ActiveConfigHandle) + 1680);
  v14 = a3;
  do
  {
    if (v14 <= a2)
    {
      break;
    }

    v15 = *--v14;
    v16 = TResultManager::getResult(*(a1 + 128), v15);
    v12 -= 0x5555555555555555 * ((*(v16 + 40) - *(v16 + 32)) >> 3);
  }

  while (v12 < v13);
  v17 = *(a1 + 48);
  v18 = TParam::getActiveConfigHandle((v17 + 2472));
  ValidConfig = TParam::getValidConfig((v17 + 2472), v18);
  result = TFormatter::addWords(a1, v14, a3, (*(v17 + ValidConfig + 2624) & 1) == 0, a4);
  a5[1] = result;
  *a5 = v14 == a2;
  if (v12 > v13)
  {
    v21 = 0;
    v23 = *a4;
    v22 = a4[1];
    v24 = &v22[-*a4];
    v25 = v24 - 7;
    v26 = 1;
    while (1)
    {
      if (v23[v25] == 1)
      {
        v21 = v26;
        if (v26 >= v13)
        {
          break;
        }
      }

      ++v26;
      v25 -= 112;
      if (!--v12)
      {
        goto LABEL_11;
      }
    }

    v21 = v26;
LABEL_11:
    if (v21 != 0x6DB6DB6DB6DB6DB7 * (v24 >> 4))
    {
      *a5 = 0;
      v27 = -112 * v21;
      v28 = &v22[v27];
      if (&v22[v27] != v23)
      {
        v29 = -v27;
        if (v22 != v28)
        {
          result = memmove(v23, v28, -6 - v27);
        }

        a4[1] = &v23[v29];
      }
    }
  }

  return result;
}

void TFormatter::addRightContext(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4, BOOL *a5)
{
  if (a2 >= a3)
  {
    v10 = 0;
    v11 = a2;
  }

  else
  {
    v10 = 0;
    v11 = a2;
    do
    {
      Result = TResultManager::getResult(*(a1 + 128), *v11);
      v13 = *(Result + 104);
      v14 = *(Result + 112) - v13;
      if (v14)
      {
        v15 = v14 >> 3;
        v16 = (v13 + 8);
        v17 = 2;
        do
        {
          v18 = *(v16 - 1);
          if (v18)
          {
            LOBYTE(v18) = *v16 != 0;
          }

          v19 = *v16;
          v16 += 2;
          v10 += v19;
          if (v17 >= v15)
          {
            break;
          }

          v17 += 2;
        }

        while ((v18 & 1) == 0);
      }

      else
      {
        LOBYTE(v18) = 0;
      }

      ++v11;
    }

    while (v11 < a3 && (v18 & 1) == 0);
  }

  v20 = (a4[1] - *a4) >> 4;
  v21 = *(a1 + 48);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v21 + 2472));
  ValidConfig = TParam::getValidConfig((v21 + 2472), ActiveConfigHandle);
  a5[1] = TFormatter::addWords(a1, a2, v11, (*(v21 + ValidConfig + 2624) & 1) == 0, a4);
  v24 = v10 + 0x6DB6DB6DB6DB6DB7 * v20;
  v25 = v11 == a3 && v24 == 0x6DB6DB6DB6DB6DB7 * ((a4[1] - *a4) >> 4);
  *a5 = v25;

  std::vector<TItnWordData>::resize(a4, v24);
}

void std::vector<TItnWordData>::resize(void *a1, unint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<TItnWordData>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 112 * a2;
  }
}

uint64_t TFormatter::segment(TFormatter *a1, uint64_t *a2, unint64_t a3, unint64_t a4)
{
  std::vector<TItnStateData>::vector[abi:ne200100](v238, 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4) + 1);
  *v238[0] = 0;
  v8 = *(a1 + 6);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v8 + 18008));
  v10 = *(v8 + TParam::getValidConfig((v8 + 18008), ActiveConfigHandle) + 18160);
  v11 = *(a1 + 13);
  v11[8] = v10;
  (*(*v11 + 16))(v11);
  v12 = *(a1 + 6);
  v13 = TParam::getActiveConfigHandle((v12 + 17760));
  v14 = *(v12 + TParam::getValidConfig((v12 + 17760), v13) + 17912);
  v15 = *(a1 + 13);
  v16 = *(v15 + 16);
  *(v15 + 24) = v14;
  (*(v16 + 16))();
  v17 = *(a1 + 6);
  v18 = TParam::getActiveConfigHandle((v17 + 2720));
  v19 = *(v17 + 8 * TParam::getValidConfig((v17 + 2720), v18) + 2872);
  v20 = *(a1 + 6);
  v21 = TParam::getActiveConfigHandle((v20 + 3256));
  v22 = *(v20 + 8 * TParam::getValidConfig((v20 + 3256), v21) + 3408);
  if (*(a1 + 18) && (v23 = *(a1 + 6), v24 = TParam::getActiveConfigHandle((v23 + 9264)), *(v23 + TParam::getValidConfig((v23 + 9264), v24) + 9416) == 1))
  {
    v25 = *(a1 + 6);
    v26 = TParam::getActiveConfigHandle((v25 + 3792));
    v210 = *(v25 + TParam::getValidConfig((v25 + 3792), v26) + 3944) ^ 1;
  }

  else
  {
    v210 = 0;
  }

  if (*(a1 + 19) && (v27 = *(a1 + 6), v28 = TParam::getActiveConfigHandle((v27 + 9512)), *(v27 + TParam::getValidConfig((v27 + 9512), v28) + 9664) == 1))
  {
    v29 = *(a1 + 6);
    v30 = TParam::getActiveConfigHandle((v29 + 3792));
    v31 = *(v29 + TParam::getValidConfig((v29 + 3792), v30) + 3944) ^ 1;
  }

  else
  {
    v31 = 0;
  }

  if (*(a1 + 20) && (v32 = *(a1 + 6), v33 = TParam::getActiveConfigHandle((v32 + 7640)), *(v32 + TParam::getValidConfig((v32 + 7640), v33) + 7792) == 1))
  {
    v34 = *(a1 + 6);
    v35 = TParam::getActiveConfigHandle((v34 + 3792));
    v213 = *(v34 + TParam::getValidConfig((v34 + 3792), v35) + 3944) ^ 1;
  }

  else
  {
    v213 = 0;
  }

  v235 = 0;
  v236 = 0;
  v237 = 0;
  v232 = 0;
  v233 = 0;
  v234 = 0;
  if (v210)
  {
    __p[0] = 0;
    __p[1] = 0;
    *v227 = 0;
    v36 = *a2;
    if (a2[1] != *a2)
    {
      v37 = 0;
      v38 = 16;
      do
      {
        v231[0] = *(v36 + v38);
        std::vector<TWord const*>::push_back[abi:ne200100](__p, v231);
        ++v37;
        v36 = *a2;
        v38 += 112;
      }

      while (v37 < 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4));
    }

    TCompounder::apply(*(a1 + 18), __p, a3, a4, 1, &v235);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else if (v31)
  {
    __p[0] = 0;
    __p[1] = 0;
    *v227 = 0;
    v39 = *a2;
    if (a2[1] != *a2)
    {
      v40 = 0;
      v41 = 16;
      do
      {
        v231[0] = *(v39 + v41);
        std::vector<TWord const*>::push_back[abi:ne200100](__p, v231);
        ++v40;
        v39 = *a2;
        v41 += 112;
      }

      while (v40 < 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4));
    }

    TRne::apply(*(a1 + 19), __p, a3, a4, 1);
  }

  if (v213)
  {
    __p[0] = 0;
    __p[1] = 0;
    *v227 = 0;
    v42 = *a2;
    if (a2[1] != *a2)
    {
      v43 = 0;
      v44 = 16;
      do
      {
        v231[0] = *(v42 + v44);
        std::vector<TWord const*>::push_back[abi:ne200100](__p, v231);
        ++v43;
        v42 = *a2;
        v44 += 112;
      }

      while (v43 < 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4));
    }

    TCliticsProc::apply(*(a1 + 20), __p, a3, a4, 1);
  }

  v216 = a1;
  v217 = a2;
  v45 = *(a1 + 6);
  v46 = TParam::getActiveConfigHandle((v45 + 19000));
  v218 = *(v45 + TParam::getValidConfig((v45 + 19000), v46) + 19152);
  v47 = a3;
  if (v218 == 1)
  {
    v48 = *a2;
    if (a2[1] != *a2)
    {
      v49 = 0;
      v50 = 0;
      do
      {
        loggableUnicode(**(v48 + v49 + 16), __p);
        if (v50 >= a4)
        {
          v55 = "RC";
        }

        else
        {
          v55 = "Utt";
        }

        if (v50 < a3)
        {
          v55 = "LC";
        }

        if (v227[7] >= 0)
        {
          v56 = __p;
        }

        else
        {
          v56 = __p[0];
        }

        tknPrintf("DebugSegmentation: Word %llu: Position=%s, Name=%s PauseDurationAfter=%llu CrossUttBreakBefore=%d\n FirstWordInBlock=%d\n", v51, v52, v53, v54, v50, v55, v56, *(*v217 + v49 + 24), *(*v217 + v49 + 32), *(*v217 + v49 + 105));
        if ((v227[7] & 0x80000000) != 0)
        {
          operator delete(__p[0]);
        }

        ++v50;
        v48 = *v217;
        v49 += 112;
      }

      while (v50 < 0x6DB6DB6DB6DB6DB7 * ((v217[1] - *v217) >> 4));
    }
  }

  TAllocator::TAllocator(v231, 2048);
  v57 = v217;
  std::vector<std::vector<TItnGrammarStateData const*>>::vector[abi:ne200100](v230, 0x6DB6DB6DB6DB6DB7 * ((v217[1] - *v217) >> 4));
  v62 = v216;
  v63 = 0;
  v211 = 0;
  v214 = 0;
  v215 = v47;
  v64 = v19 + v22;
  while (v63 < 0x6DB6DB6DB6DB6DB7 * ((v57[1] - *v57) >> 4))
  {
    v65 = *v57 + 112 * v63;
    if (*(v65 + 33) == 1)
    {
      v66 = v63 + 1;
      v67 = v238[0];
      v68 = v238[0] + 72 * v63;
      v69 = *v68;
      v70 = (*(v65 + 24) + *(v68 + 8));
      if (v218)
      {
        tknPrintf("DebugSegmentation: EdgeType=Epsilon WordRange=[%llu,%llu) Penalty=0 CumulatedPenalty=%f CumulatedPauseAtTarget=%llu\n", v58, v59, v60, v61, v63, v63 + 1, *&v69, v70);
        v67 = v238[0];
      }

      v71 = v67 + 72 * v66;
      if (v69 < *v71 || v69 == *v71 && v70 > *(v71 + 8))
      {
        __p[0] = *&v69;
        __p[1] = v70;
        *v227 = v63;
        *&v227[16] = 0uLL;
        std::wstring::basic_string[abi:ne200100]<0>(&v228, &dword_262888EC0);
        v72 = v238[0] + 72 * v66;
        v73 = *&v227[16];
        v74 = *__p;
        *(v72 + 16) = *v227;
        *(v72 + 32) = v73;
        *v72 = v74;
        if (*(v72 + 71) < 0)
        {
          operator delete(*(v72 + 48));
        }

        v75 = v228;
        *(v72 + 64) = v229;
        *(v72 + 48) = v75;
      }
    }

    if (((v210 | v31) & (v215 == v63)) == 1)
    {
      if (v214 >= (v236 - v235) >> 4)
      {
        v215 = v63;
      }

      else
      {
        v76 = &v235[16 * v214];
        v77 = *(v76 + 1);
        if (v77 != 1)
        {
          v78 = v77 + v63;
          v79 = v238[0] + 72 * v63;
          v80 = v19 + *v79;
          v81 = *(*v57 + 112 * v78 - 88) + *(v79 + 8);
          if (v218)
          {
            if (v210)
            {
              loggableUnicode(**v76, __p);
              v86 = v227[7] >= 0 ? __p : __p[0];
              tknPrintf("DebugSegmentation: EdgeType=Compounder WordRange=[%llu,%llu) Penalty=%f CumulatedPenalty=%f CumulatedPauseAtTarget=%llu Replacement=%s\n", v82, v83, v84, v85, v63, v78, *&v19, *&v80, v81, v86);
            }

            else
            {
              loggableUnicode(**v76, __p);
              v91 = v227[7] >= 0 ? __p : __p[0];
              tknPrintf("DebugSegmentation: EdgeType=RNE WordRange=[%llu,%llu) Penalty=%f CumulatedPenalty=%f CumulatedPauseAtTarget=%llu Replacement=%s\n", v87, v88, v89, v90, v63, v78, *&v19, *&v80, v81, v91);
            }

            if ((v227[7] & 0x80000000) != 0)
            {
              operator delete(__p[0]);
            }
          }

          v92 = v238[0] + 72 * v78;
          if (v80 < *v92 || v80 == *v92 && v81 > *(v92 + 8))
          {
            v93 = *&v235[16 * v214];
            *v92 = v80;
            *(v92 + 8) = v81;
            *(v92 + 16) = v63;
            *(v92 + 24) = 0;
            *(v92 + 32) = 0;
            *(v92 + 40) = v93;
            if (*(v92 + 71) < 0)
            {
              operator delete(*(v92 + 48));
            }

            *(v92 + 48) = 0;
            *(v92 + 56) = 0;
            *(v92 + 64) = 0;
          }
        }

        v94 = *&v235[16 * v214++ + 8] + v63;
        v215 = v94;
      }
    }

    if ((v213 & (v47 == v63)) == 1)
    {
      if (v211 >= (v233 - v232) >> 4)
      {
        v47 = v63;
      }

      else
      {
        v95 = &v232[16 * v211];
        v96 = *(v95 + 1);
        if (v96)
        {
          v97 = *v95;
          v98 = v96 + v63;
          v99 = v238[0] + 72 * v63;
          v100 = v19 + *v99;
          v101 = *(*v57 + 112 * v98 - 88) + *(v99 + 8);
          if (v218)
          {
            if (v97)
            {
              loggableUnicode(*v97, v224);
              v102 = v224;
              if (v225 < 0)
              {
                v102 = v224[0];
              }
            }

            else
            {
              v102 = &byte_262899963;
            }

            tknPrintf("DebugSegmentation: EdgeType=Clitic WordRange=[%llu,%llu) Penalty=%f CumulatedPenalty=%f CumulatedPauseAtTarget=%llu\n Replacement=%s", v58, v59, v60, v61, v63, v98, *&v19, *&v100, v101, v102);
            if (v97 && v225 < 0)
            {
              operator delete(v224[0]);
            }
          }

          v103 = v238[0] + 72 * v98;
          if (v100 < *v103 || v100 == *v103 && v101 > *(v103 + 8))
          {
            *v103 = v100;
            *(v103 + 8) = v101;
            *(v103 + 16) = v63;
            *(v103 + 24) = 0;
            *(v103 + 32) = 0;
            *(v103 + 40) = v97;
            if (*(v103 + 71) < 0)
            {
              operator delete(*(v103 + 48));
            }

            *(v103 + 48) = 0;
            *(v103 + 56) = 0;
            *(v103 + 64) = 0;
          }
        }

        v47 = *&v232[16 * v211++ + 8] + v63;
        v62 = v216;
      }
    }

    v104 = *(v62 + 6);
    v105 = TParam::getActiveConfigHandle((v104 + 3792));
    if ((*(v104 + TParam::getValidConfig((v104 + 3792), v105) + 3944) & 1) == 0)
    {
      v110 = *(v230[0] + 24 * v63);
      if (*(v230[0] + 24 * v63 + 8) != v110)
      {
        v111 = 0;
        do
        {
          v112 = *(v110 + 8 * v111);
          v113 = *(v112 + 8);
          v114 = v238[0];
          v115 = v238[0] + 72 * v63;
          v116 = *v112;
          v117 = *v115 + *v112;
          v118 = (*(*v57 + 112 * v113 - 88) + *(v115 + 8));
          if (v218)
          {
            v119 = *(v112 + 16);
            loggableUnicode(*(v112 + 32), __p);
            if (v227[7] >= 0)
            {
              v124 = __p;
            }

            else
            {
              v124 = __p[0];
            }

            tknPrintf("DebugSegmentation: EdgeType=Grammar WordRange=[%llu,%llu) LC=%llu Penalty=%f CumulatedPenalty=%f CumulatedPauseAtTarget=%llu Replacement=%s\n", v120, v121, v122, v123, v63, v113, v119, *&v116, *&v117, v118, v124);
            if ((v227[7] & 0x80000000) != 0)
            {
              operator delete(__p[0]);
            }

            v114 = v238[0];
          }

          v125 = v114 + 72 * v113;
          if (v117 < *v125 || v117 == *v125 && ((v126 = *(v125 + 8), v118 > v126) || v118 == v126 && *(*(*(v230[0] + 24 * v63) + 8 * v111) + 16) > *(v125 + 24)))
          {
            v127 = *(*(v230[0] + 24 * v63) + 8 * v111);
            v128 = *(v127 + 32);
            __p[0] = *&v117;
            __p[1] = v118;
            *v227 = v63;
            *&v227[8] = *(v127 + 16);
            *&v227[24] = 0;
            std::wstring::basic_string[abi:ne200100]<0>(&v228, v128);
            v129 = v238[0] + 72 * v113;
            v130 = *&v227[16];
            v131 = *__p;
            *(v129 + 16) = *v227;
            *(v129 + 32) = v130;
            *v129 = v131;
            if (*(v129 + 71) < 0)
            {
              operator delete(*(v129 + 48));
            }

            v132 = v228;
            *(v129 + 64) = v229;
            *(v129 + 48) = v132;
          }

          ++v111;
          v110 = *(v230[0] + 24 * v63);
        }

        while (v111 < (*(v230[0] + 24 * v63 + 8) - v110) >> 3);
      }

      v212 = v47;
      v133 = *(v216 + 6);
      v134 = TParam::getActiveConfigHandle((v133 + 1872));
      ValidConfig = TParam::getValidConfig((v133 + 1872), v134);
      v136 = *v57;
      if (0x6DB6DB6DB6DB6DB7 * ((v57[1] - *v57) >> 4) >= v63 + *(v133 + 4 * ValidConfig + 2032))
      {
        v137 = v63 + *(v133 + 4 * ValidConfig + 2032);
      }

      else
      {
        v137 = 0x6DB6DB6DB6DB6DB7 * ((v57[1] - *v57) >> 4);
      }

      v221 = 0;
      v222 = 0;
      v223 = 0;
      v138 = v136 + 112 * v63;
      v139 = *(v138 + 80);
      v140 = *(v138 + 48);
      if (v139 != -1)
      {
        v140 = v139;
      }

      v141 = v140 - 7;
      if (v141 > 2)
      {
        v142 = 136;
      }

      else
      {
        v142 = qword_262888F78[v141];
      }

      v143 = *(*(v216 + 6) + v142);
      TGrammarManager::search(*(v216 + 13), v57, v63, v137, v143, &v221);
      if (*(v216 + 14))
      {
        v144 = *(v216 + 6);
        v145 = TParam::getActiveConfigHandle((v144 + 19248));
        if (*(v144 + TParam::getValidConfig((v144 + 19248), v145) + 19400) == 1)
        {
          __p[0] = 0;
          __p[1] = 0;
          *v227 = 0;
          TGrammarManager2::search(*(v216 + 14), v57, v63, v137, v143, __p);
          v146 = __p[0];
          if (__p[1] != __p[0])
          {
            v147 = 0;
            v148 = 8;
            do
            {
              loggableUnicode(*&v146[v148], v219);
              if (v220 >= 0)
              {
                v153 = v219;
              }

              else
              {
                v153 = v219[0];
              }

              tknPrintf("Adaptation Result[%llx]: %s\n", v149, v150, v151, v152, v147, v153);
              if (v220 < 0)
              {
                operator delete(v219[0]);
              }

              ++v147;
              v146 = __p[0];
              v148 += 56;
            }

            while (v147 < 0x6DB6DB6DB6DB6DB7 * ((__p[1] - __p[0]) >> 3));
          }

          TGrammarManager2::clearResult(*(v216 + 14));
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }
      }

      v154 = v221;
      if (v222 != v221)
      {
        v155 = 0;
        v156 = 40;
        do
        {
          v157 = &v154[v156];
          if (*&v154[v156 - 16])
          {
            v158 = wcslen(*(v157 - 4));
            if ((v158 + 1) >> 62)
            {
              v159 = -1;
            }

            else
            {
              v159 = 4 * (v158 + 1);
            }

            v160 = TAllocator::allocate(v231, v159);
            wcscpy(v160, *(v221 + v156 - 32));
            v161 = *(v221 + v156 - 16);
            v162 = v230[0];
            v163 = TAllocator::allocate(v231, 40);
            v164 = v162 + 24 * v63 + 24 * v161;
            v165 = *(v221 + v156 - 16);
            v166 = *(v221 + v156 - 8);
            v167 = *(v221 + v156 - 24) + v63 - v166;
            *v163 = v19 + *(v221 + v156);
            *(v163 + 8) = v167;
            *(v163 + 16) = v165;
            *(v163 + 24) = v166;
            *(v163 + 32) = v160;
            v169 = *(v164 + 8);
            v168 = *(v164 + 16);
            if (v169 >= v168)
            {
              v189 = (v169 - *v164) >> 3;
              if ((v189 + 1) >> 61)
              {
                std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
              }

              v190 = v168 - *v164;
              v191 = v190 >> 2;
              if (v190 >> 2 <= (v189 + 1))
              {
                v191 = v189 + 1;
              }

              if (v190 >= 0x7FFFFFFFFFFFFFF8)
              {
                v192 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v192 = v191;
              }

              if (v192)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<TSegment const*>>(v164, v192);
              }

              v193 = (8 * v189);
              *v193 = v163;
              v170 = 8 * v189 + 8;
              v194 = *(v164 + 8) - *v164;
              v195 = v193 - v194;
              memcpy(v193 - v194, *v164, v194);
              v196 = *v164;
              *v164 = v195;
              *(v164 + 8) = v170;
              *(v164 + 16) = 0;
              if (v196)
              {
                operator delete(v196);
              }
            }

            else
            {
              *v169 = v163;
              v170 = (v169 + 1);
            }

            *(v164 + 8) = v170;
            v57 = v217;
          }

          else
          {
            v171 = *(v157 - 3) + v63 - *(v157 - 1);
            v172 = v238[0];
            v173 = v238[0] + 72 * v63;
            v174 = *v157;
            v175 = v19 + *v173 + *v157;
            v176 = (*(*v57 + 112 * v171 - 88) + *(v173 + 8));
            if (v218)
            {
              loggableUnicode(*&v154[v156 - 32], __p);
              if (v227[7] >= 0)
              {
                v181 = __p;
              }

              else
              {
                v181 = __p[0];
              }

              tknPrintf("DebugSegmentation: EdgeType=Grammar WordRange=[%llu,%llu) Penalty=%f CumulatedPenalty=%f CumulatedPauseAtTarget=%llu Replacement=%s\n", v177, v178, v179, v180, v63, v171, v19 + v174, *&v175, v176, v181);
              if ((v227[7] & 0x80000000) != 0)
              {
                operator delete(__p[0]);
              }

              v172 = v238[0];
            }

            v182 = v172 + 72 * v171;
            if (v175 < *v182 || v175 == *v182 && v176 > *(v182 + 8))
            {
              v183 = *(v221 + v156 - 32);
              v184 = *(v221 + v156 - 8);
              __p[0] = *&v175;
              __p[1] = v176;
              *v227 = v63;
              *&v227[16] = v184;
              std::wstring::basic_string[abi:ne200100]<0>(&v228, v183);
              v185 = v238[0] + 72 * v171;
              v186 = *&v227[16];
              v187 = *__p;
              *(v185 + 16) = *v227;
              *(v185 + 32) = v186;
              *v185 = v187;
              if (*(v185 + 71) < 0)
              {
                operator delete(*(v185 + 48));
              }

              v188 = v228;
              *(v185 + 64) = v229;
              *(v185 + 48) = v188;
            }
          }

          ++v155;
          v154 = v221;
          v156 += 56;
        }

        while (v155 < 0x6DB6DB6DB6DB6DB7 * ((v222 - v221) >> 3));
      }

      TGrammarManager2::clearResult(*(v216 + 13));
      if (v221)
      {
        v222 = v221;
        operator delete(v221);
      }

      v47 = v212;
    }

    v197 = v238[0];
    v198 = v238[0] + 72 * v63;
    v199 = v64 + *v198;
    v200 = *(*v57 + 112 * v63 + 24) + *(v198 + 8);
    if (v218)
    {
      tknPrintf("DebugSegmentation: EdgeType=Default WordRange=[%llu,%llu) Penalty=%f CumulatedPenalty=%f CumulatedPauseAtTarget=%llu\n", v106, v107, v108, v109, v63, v63 + 1, *&v64, *&v199, v200);
      v197 = v238[0];
    }

    v201 = v197 + 72 * (v63 + 1);
    if (v199 < *v201 || v199 == *v201 && v200 > *(v201 + 8))
    {
      v202 = *(*v57 + 112 * v63 + 16);
      *v201 = v199;
      *(v201 + 8) = v200;
      *(v201 + 16) = v63;
      *(v201 + 24) = 0;
      *(v201 + 32) = 0;
      *(v201 + 40) = v202;
      if (*(v201 + 71) < 0)
      {
        operator delete(*(v201 + 48));
      }

      *(v201 + 48) = 0;
      *(v201 + 56) = 0;
      *(v201 + 64) = 0;
    }

    v62 = v216;
    v203 = *(v216 + 13);
    v204 = *(v203 + 16);
    *(v203 + 24) = 0;
    (*(v204 + 16))();
    v205 = *(v216 + 13);
    v205[8] = 0;
    (*(*v205 + 16))(v205);
    ++v63;
  }

  v206 = v238[0] + 72 * (0x8E38E38E38E38E39 * ((v238[1] - v238[0]) >> 3) - 1);
  if (*(v206 + 16) != -1)
  {
    __p[0] = 0;
    v221 = 0;
    v207 = *(v206 + 40);
    if (v207)
    {
      TFormatter::makeBlockForWord(v62, v207, v59, v60, v61);
    }

    v208 = (v206 + 48);
    if (*(v206 + 71) < 0)
    {
      v208 = *v208;
    }

    TFormatter::splitPattern(v62, v208, __p, &v221);
  }

  __p[0] = v230;
  std::vector<std::vector<TItnGrammarStateData const*>>::__destroy_vector::operator()[abi:ne200100](__p);
  TAllocator::clear(v231);
  if (v232)
  {
    v233 = v232;
    operator delete(v232);
  }

  if (v235)
  {
    v236 = v235;
    operator delete(v235);
  }

  __p[0] = v238;
  std::vector<TItnStateData>::__destroy_vector::operator()[abi:ne200100](__p);
  return 0;
}

void sub_2626EE8D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (__p)
  {
    a41 = __p;
    operator delete(__p);
  }

  v47 = *(v45 - 192);
  if (v47)
  {
    *(v45 - 184) = v47;
    operator delete(v47);
  }

  v48 = *(v45 - 168);
  if (v48)
  {
    *(v45 - 160) = v48;
    operator delete(v48);
  }

  __p = (v45 - 144);
  std::vector<TItnStateData>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

std::wstring *TFormatter::applyControls(uint64_t *a1, TBlock *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, char **a7)
{
  v136 = 0;
  v137 = 0;
  v138 = 0;
  std::vector<TItnControl>::__init_with_size[abi:ne200100]<TItnControl*,TItnControl*>(&v136, *a6, a6[1], 0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 3));
  v133 = 0;
  v134 = 0;
  v135 = 0;
  std::vector<TItnControl>::__init_with_size[abi:ne200100]<TItnControl*,TItnControl*>(&v133, v136, v137, 0xAAAAAAAAAAAAAAABLL * ((v137 - v136) >> 3));
  v130 = 0;
  v131 = 0;
  v132 = 0;
  *&v10 = -1;
  *(&v10 + 1) = -1;
  v129[2] = v10;
  v129[3] = v10;
  v129[0] = v10;
  v129[1] = v10;
  if (!a2)
  {
    v102 = 0;
    goto LABEL_190;
  }

  v11 = 0;
  v12 = a2;
  v13 = -1;
  v105 = a2;
  v107 = a3;
  do
  {
    if (v11)
    {
      goto LABEL_6;
    }

    if (*(v12 + 8) == a5)
    {
      std::vector<TItnControl>::__assign_with_size[abi:ne200100]<TItnControl*,TItnControl*>(&v130, v136, v137, 0xAAAAAAAAAAAAAAABLL * ((v137 - v136) >> 3));
LABEL_6:
      v14 = 1;
      goto LABEL_8;
    }

    v14 = 0;
LABEL_8:
    v15 = *(v12 + 71);
    if (v15 < 0)
    {
      v15 = *(v12 + 56);
    }

    v109 = v14;
    if (v15 && (*v12 & 1) == 0)
    {
      std::vector<TItnControl>::__assign_with_size[abi:ne200100]<TItnControl*,TItnControl*>(&v133, v136, v137, 0xAAAAAAAAAAAAAAABLL * ((v137 - v136) >> 3));
    }

    v16 = *(v12 + 8);
    v126 = 0;
    __dst = 0;
    v128 = 0;
    std::vector<TItnControl>::__init_with_size[abi:ne200100]<TItnControl*,TItnControl*>(&v126, v136, v137, 0xAAAAAAAAAAAAAAABLL * ((v137 - v136) >> 3));
    if (v16 == -1)
    {
      goto LABEL_38;
    }

    v17 = *a3;
    if (*(*a3 + 112 * v16 + 32) == 1)
    {
      v18 = v126;
      if (__dst == v126)
      {
        v21 = 0;
      }

      else
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        do
        {
          if (getItnControlCategory(*&v18[v19]) != 1)
          {
            v22 = v126 + 24 * v21++;
            v23 = *(v126 + v19);
            *(v22 + 2) = *(v126 + v19 + 16);
            *v22 = v23;
          }

          ++v20;
          v18 = v126;
          v19 += 24;
        }

        while (v20 < 0xAAAAAAAAAAAAAAABLL * ((__dst - v126) >> 3));
      }

      std::vector<TItnControl>::resize(&v126, v21);
      a3 = v107;
      v17 = *v107;
    }

    v24 = v17 + 112 * v16;
    if (*(v24 + 104) != 1)
    {
LABEL_38:
      v16 = v13;
    }

    else
    {
      v25 = 0;
      v26 = v17 + 112 * v13 + 40;
      if (v13 == -1)
      {
        v27 = v129;
      }

      else
      {
        v27 = v26;
      }

      *&v119 = -1;
      *(&v119 + 1) = -1;
      *&v120 = 2;
      do
      {
        v28 = *(v27 + v25);
        v29 = *(v24 + 40 + v25);
        if (v28 != v29)
        {
          *&v119 = *(v24 + 40 + v25);
          *(&v119 + 1) = 1;
          if (v29 == -1)
          {
            *&v119 = v28;
            *(&v119 + 1) = 2;
          }

          std::vector<TItnControl>::push_back[abi:ne200100](&v126, &v119);
        }

        v25 += 8;
      }

      while (v25 != 32);
      v30 = 0;
      *(&v119 + 1) = 3;
      v31 = v24 + 72;
      a3 = v107;
      do
      {
        if (*(v31 + v30) != -1)
        {
          *&v119 = *(v31 + v30);
          std::vector<TItnControl>::push_back[abi:ne200100](&v126, &v119);
        }

        v30 += 8;
      }

      while (v30 != 32);
    }

    collectControls(&v126, v12, 2, 0);
    collectControls(&v126, v12, 1, 0);
    collectControls(&v126, v12, 3, -1);
    collectControls(&v126, v12, 6, 1);
    collectControls(&v126, v12, 5, 0);
    v32 = *(v12 + 144);
    if (v32)
    {
      LOBYTE(v33) = 0;
      while (1)
      {
        v34 = *(v32 + 8);
        if (v34 == -1)
        {
          v35 = 0;
        }

        else
        {
          v35 = *(*a3 + 112 * v34 + 32);
        }

        collectControls(&v126, v32, 6, -1);
        collectControls(&v126, v32, 4, -1);
        v33 = v35 | v33 & 1;
        if (!v33)
        {
          collectControls(&v126, v32, 4, 1);
        }

        v36 = *(v32 + 71);
        if (v36 < 0)
        {
          v36 = *(v32 + 56);
        }

        if (v36)
        {
          break;
        }

        collectControls(&v126, v32, 2, -1);
        v32 = *(v32 + 144);
        if (!v32)
        {
          goto LABEL_50;
        }
      }
    }

    else
    {
LABEL_50:
      std::vector<TItnControl>::__insert_with_size[abi:ne200100]<std::__wrap_iter<TItnControl const*>,std::__wrap_iter<TItnControl const*>>(&v126, __dst, *a7, a7[1], 0xAAAAAAAAAAAAAAABLL * ((a7[1] - *a7) >> 3));
    }

    v123 = 0;
    v124 = 0;
    v125 = 0;
    v37 = (v12 + 48);
    if (*(v12 + 71) < 0)
    {
      v37 = *(v12 + 48);
    }

    v38 = *v37;
    v110 = v16;
    if (*v37)
    {
      v39 = v37 + 1;
      v40 = 1;
      while (1)
      {
        {
          operator new();
        }

        if (v38 > 159)
        {
          if (v38 >= 12288)
          {
            if (v38 == 12288)
            {
              goto LABEL_68;
            }

            v41 = 65279;
          }

          else
          {
            if (v38 == 160)
            {
              goto LABEL_68;
            }

            v41 = 8203;
          }

          if (v38 != v41)
          {
            goto LABEL_66;
          }
        }

        else if (v38 > 0x20 || ((1 << v38) & 0x100002600) == 0)
        {
LABEL_66:
          v42 = *(v39 - 1);
          {
            operator new();
          }

          v40 = 0;
          v43 = 0;
          v38 = 0;
          if (!TLocaleInfo::isPunct(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v42))
          {
            goto LABEL_75;
          }
        }

LABEL_68:
        v44 = *v39++;
        v38 = v44;
        if (!v44)
        {
          v38 = 1;
          v43 = v40;
          goto LABEL_75;
        }
      }
    }

    v43 = 0;
LABEL_75:
    std::vector<TItnControl>::resize(&v123, 0);
    std::vector<TItnControl>::resize(&v136, 0);
    v45 = v126;
    v46 = __dst;
    if (__dst != v126)
    {
      v47 = 0;
      v48 = 0;
      while (1)
      {
        v49 = &v45[24 * v48];
        v50 = *(v49 + 1);
        v51 = &v123;
        if (v50 <= 2)
        {
          if (v50 == 1)
          {
            if (v46 == v45)
            {
LABEL_99:
              std::vector<TItnControl>::push_back[abi:ne200100](&v136, &v45[24 * v48]);
              v45 = v126;
            }

            else
            {
              v56 = 0;
              v57 = 0;
              while (1)
              {
                if ((*&v45[v56 + 8] - 1) <= 1)
                {
                  ItnControlCategory = getItnControlCategory(*&v45[v56]);
                  v59 = getItnControlCategory(*(v126 + 3 * v48));
                  v45 = v126;
                  if (ItnControlCategory == v59)
                  {
                    v60 = *(v126 + v56 + 16);
                    v61 = *(v126 + 3 * v48 + 2);
                    if (v60 > v61 || v57 > v48 && v60 == v61)
                    {
                      break;
                    }
                  }
                }

                ++v57;
                v56 += 24;
                if (v57 >= 0xAAAAAAAAAAAAAAABLL * ((__dst - v45) >> 3))
                {
                  goto LABEL_99;
                }
              }
            }

            v16 = v110;
            if (__dst != v45)
            {
              v62 = 0xAAAAAAAAAAAAAAABLL * ((__dst - v45) >> 3);
              if (v62 <= 1)
              {
                v62 = 1;
              }

              v63 = v45 + 8;
              while (*v63 != 5 || *(v63 - 1) != *&v45[24 * v48])
              {
                v63 += 3;
                if (!--v62)
                {
                  goto LABEL_107;
                }
              }

              goto LABEL_116;
            }

LABEL_107:
            v49 = &v45[24 * v48];
            v51 = &v123;
          }

          else if (v50 != 2)
          {
            goto LABEL_116;
          }

          goto LABEL_115;
        }

        if (v50 == 4)
        {
          goto LABEL_115;
        }

        if (v50 == 3)
        {
          break;
        }

LABEL_116:
        ++v48;
        v45 = v126;
        v46 = __dst;
        v47 += 24;
        if (v48 >= 0xAAAAAAAAAAAAAAABLL * ((__dst - v126) >> 3))
        {
          goto LABEL_135;
        }
      }

      v52 = v47;
      v53 = v48;
      if (v48 < 0xAAAAAAAAAAAAAAABLL * ((v46 - v45) >> 3))
      {
        while (1)
        {
          if (*&v45[v52 + 8] == 2)
          {
            v54 = getItnControlCategory(*&v45[v52]);
            v55 = getItnControlCategory(*(v126 + 3 * v48));
            v45 = v126;
            if (v54 == v55 && *(v126 + v52 + 16) == *(v126 + 3 * v48 + 2))
            {
              break;
            }
          }

          ++v53;
          v52 += 24;
          if (v53 >= 0xAAAAAAAAAAAAAAABLL * ((__dst - v45) >> 3))
          {
            goto LABEL_88;
          }
        }

LABEL_118:
        if (__dst == v45)
        {
LABEL_125:
          std::vector<TItnControl>::push_back[abi:ne200100](&v123, &v45[24 * v48]);
          v45 = v126;
        }

        else
        {
          v66 = 0;
          v67 = 0;
          while (1)
          {
            if (*&v45[v66 + 8] == 1)
            {
              v68 = getItnControlCategory(*&v45[v66]);
              v69 = getItnControlCategory(*(v126 + 3 * v48));
              v45 = v126;
              if (v68 == v69 && *(v126 + v66 + 16) == 3 && *(v126 + 3 * v48 + 2) == 2)
              {
                break;
              }
            }

            ++v67;
            v66 += 24;
            if (v67 >= 0xAAAAAAAAAAAAAAABLL * ((__dst - v45) >> 3))
            {
              goto LABEL_125;
            }
          }
        }

        v16 = v110;
        if (__dst == v45)
        {
          goto LABEL_116;
        }

        v70 = 0xAAAAAAAAAAAAAAABLL * ((__dst - v45) >> 3);
        v49 = &v45[24 * v48];
        if (v70 <= 1)
        {
          v70 = 1;
        }

        v71 = v45 + 8;
        while (*v71 != 6 || *(v71 - 1) != *v49)
        {
          v71 += 3;
          if (!--v70)
          {
            goto LABEL_116;
          }
        }

        v51 = &v136;
LABEL_115:
        std::vector<TItnControl>::push_back[abi:ne200100](v51, v49);
        goto LABEL_116;
      }

LABEL_88:
      if ((*(v12 + 71) & 0x8000000000000000) != 0)
      {
        if (!*(v12 + 56))
        {
LABEL_114:
          v49 = &v45[24 * v48];
          v51 = &v136;
          v16 = v110;
          goto LABEL_115;
        }
      }

      else if (!*(v12 + 71))
      {
        goto LABEL_114;
      }

      if ((v43 & 1) == 0 || (v64 = getItnControlCategory(*&v45[24 * v48]), v45 = v126, v64 == 2))
      {
        if (!v38)
        {
          goto LABEL_118;
        }

        v65 = getItnControlCategory(*&v45[24 * v48]);
        v45 = v126;
        if (v65 || *(v126 + 3 * v48 + 2) != 1)
        {
          goto LABEL_118;
        }
      }

      goto LABEL_114;
    }

LABEL_135:
    if (*v12 == 1)
    {
      if (*(v12 + 16) == -1)
      {
        v72 = a1;
      }

      else
      {
        v72 = a1;
        if (*(v12 + 8) != -1)
        {
          *&v73 = -1;
          *(&v73 + 1) = -1;
          v121 = v73;
          v122 = v73;
          v119 = v73;
          v120 = v73;
          TItnControlState::set(&v119, &v123, 1, 1, 1, 1uLL);
          v74 = *(&v121 + 1);
          if (*(&v121 + 1) == -1)
          {
            v74 = *(&v119 + 1);
          }

          v75 = v74 - 7;
          if (v75 > 2)
          {
            v76 = 136;
          }

          else
          {
            v76 = qword_262888F78[v75];
          }

          v81 = *v107 + 112 * *(v12 + 8);
          v82 = *(v81 + 80);
          v83 = *(v81 + 48);
          if (v82 != -1)
          {
            v83 = v82;
          }

          v84 = v83 - 7;
          if (v84 > 2)
          {
            v85 = 136;
          }

          else
          {
            v85 = qword_262888F78[v84];
          }

          v86 = a1[6];
          v87 = *(v86 + v76);
          if (*(v86 + v85) != v87)
          {
            v117 = 0;
            v118 = 0;
            v116 = 0;
            TGrammarManager::search(a1[13], v107, *(v12 + 8) - *(v12 + 24), *(v12 + 32) + *(v12 + 16), v87, &v116);
            if (a1[14])
            {
              v88 = a1[6];
              ActiveConfigHandle = TParam::getActiveConfigHandle((v88 + 19248));
              if (*(v88 + TParam::getValidConfig((v88 + 19248), ActiveConfigHandle) + 19400) == 1)
              {
                v114 = 0;
                v115 = 0;
                v113 = 0;
                TGrammarManager2::search(a1[14], v107, *(v12 + 8) - *(v12 + 24), *(v12 + 32) + *(v12 + 16), v87, &v113);
                if (v113 != v114)
                {
                  v90 = *(v113 + 3);
                  if (v90 == *(v12 + 24))
                  {
                    v91 = *(v113 + 4);
                    if (v91 == *(v12 + 32) && *(v113 + 2) - (v91 + v90) == *(v12 + 16) - *(v12 + 8))
                    {
                      loggableUnicode(*(v113 + 1), __p);
                      v96 = __p;
                      if (v112 < 0)
                      {
                        v96 = __p[0];
                      }

                      tknPrintf("Adaptation Result: %s\n", v92, v93, v94, v95, v96);
                      if (v112 < 0)
                      {
                        operator delete(__p[0]);
                      }
                    }
                  }
                }

                TGrammarManager2::clearResult(a1[14]);
                if (v113)
                {
                  v114 = v113;
                  operator delete(v113);
                }
              }
            }

            if (v117 != v116)
            {
              v97 = 0;
              v98 = 0;
              do
              {
                v99 = *(v116 + v97 + 24);
                v100 = *(v116 + v97 + 32);
                if (*(v116 + v97 + 16) - (v99 + v100) == *(v12 + 16) - *(v12 + 8) && v99 == *(v12 + 24) && v100 == *(v12 + 32))
                {
                  v113 = 0;
                  __p[0] = 0;
                  TFormatter::splitPattern(a1, *(v116 + v97 + 8), &v113, __p);
                }

                ++v98;
                v97 += 56;
              }

              while (v98 < 0x6DB6DB6DB6DB6DB7 * ((v117 - v116) >> 3));
              v72 = a1;
            }

            TGrammarManager2::clearResult(v72[13]);
            if (v116)
            {
              v117 = v116;
              operator delete(v116);
            }
          }
        }
      }

      *&v119 = 0;
      v116 = 0;
      v101 = (v12 + 48);
      if (*(v12 + 71) < 0)
      {
        v101 = *(v12 + 48);
      }

      TFormatter::splitPattern(v72, v101, &v119, &v116);
    }

    v77 = *(v12 + 71);
    if (v77 < 0)
    {
      v77 = *(v12 + 56);
    }

    if (v77)
    {
      TBlock::applyControls(v12, &v123, a1[6], *(a1[4] + 336));
      *&v78 = -1;
      *(&v78 + 1) = -1;
      v121 = v78;
      v122 = v78;
      v119 = v78;
      v120 = v78;
      TItnControlState::set(&v119, &v126, 0, 1, 1, 2uLL);
      v79 = v120;
      *(v12 + 160) = v119;
      *(v12 + 176) = v79;
      v80 = v122;
      *(v12 + 192) = v121;
      *(v12 + 208) = v80;
    }

    collectControls(&v136, v12, 3, 1);
    v12 = *(v12 + 144);
    v13 = v16;
    a3 = v107;
    if (v123)
    {
      v124 = v123;
      operator delete(v123);
    }

    if (v126)
    {
      __dst = v126;
      operator delete(v126);
    }

    v11 = v109;
  }

  while (v12);
  if (v109)
  {
    v102 = v105;
    if (&v130 != a7)
    {
      std::vector<TItnControl>::__assign_with_size[abi:ne200100]<TItnControl*,TItnControl*>(a7, v130, v131, 0xAAAAAAAAAAAAAAABLL * ((v131 - v130) >> 3));
    }

    goto LABEL_192;
  }

  v102 = v105;
LABEL_190:
  if (&v136 != a7)
  {
    std::vector<TItnControl>::__assign_with_size[abi:ne200100]<TItnControl*,TItnControl*>(a7, v136, v137, 0xAAAAAAAAAAAAAAABLL * ((v137 - v136) >> 3));
  }

LABEL_192:
  if (v102)
  {
    data = v102;
    do
    {
      TBlock::adjustResult(data);
      data = data[6].__r_.__value_.__l.__data_;
    }

    while (data);
  }

  if (v130)
  {
    v131 = v130;
    operator delete(v130);
  }

  if (v133)
  {
    v134 = v133;
    operator delete(v133);
  }

  if (v136)
  {
    v137 = v136;
    operator delete(v136);
  }

  return v102;
}

void sub_2626EF9B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, uint64_t a42, void *a43, uint64_t a44)
{
  MEMORY[0x26672B1B0](v44, 0x1070C40ADD13FEBLL);
  if (__p)
  {
    operator delete(__p);
  }

  if (a43)
  {
    operator delete(a43);
  }

  v47 = *(v45 - 168);
  if (v47)
  {
    *(v45 - 160) = v47;
    operator delete(v47);
  }

  v48 = *(v45 - 144);
  if (v48)
  {
    *(v45 - 136) = v48;
    operator delete(v48);
  }

  v49 = *(v45 - 120);
  if (v49)
  {
    *(v45 - 112) = v49;
    operator delete(v49);
  }

  _Unwind_Resume(a1);
}

void collectControls(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = (a2 + 48);
  if (*(a2 + 71) < 0)
  {
    v7 = *v7;
  }

  v8 = *v7;
  if (*v7)
  {
    v9 = (v7 + 1);
    while (1)
    {
      {
        operator new();
      }

      v10 = TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo;
      if (v8 >= 48 && (v8 < 0x3A || v8 >= 0x660 && TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v8) != -1))
      {
        break;
      }

      if (TLocaleInfo::isAlpha(v10, v8))
      {
        break;
      }

      v11 = *v9++;
      v8 = v11;
      if (!v11)
      {
        v12 = 1;
        goto LABEL_16;
      }
    }
  }

  v12 = 0;
LABEL_16:
  if (a4 != 1 && *v7)
  {
    *(&v29 + 1) = a3;
    v30 = 1;
    *&v29 = 1;
    if (a3 != 3)
    {
      if (a3 != 4)
      {
        goto LABEL_47;
      }

      v13 = *v7;
      {
        operator new();
      }

      if (v13 <= 159)
      {
        if (v13 > 0x20 || ((1 << v13) & 0x100002600) == 0)
        {
          goto LABEL_47;
        }

LABEL_46:
        std::vector<TItnControl>::push_back[abi:ne200100](a1, &v29);
        goto LABEL_47;
      }

      if (v13 >= 12288)
      {
        if (v13 == 12288)
        {
          goto LABEL_46;
        }

        v14 = 65279;
      }

      else
      {
        if (v13 == 160)
        {
          goto LABEL_46;
        }

        v14 = 8203;
      }

      if (v13 != v14)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    v15 = v7[wcslen(v7) - 1];
    {
      operator new();
    }

    if (v15 > 159)
    {
      if (v15 >= 12288)
      {
        if (v15 == 65279 || v15 == 12288)
        {
          goto LABEL_46;
        }
      }

      else if (v15 == 160 || v15 == 8203)
      {
        goto LABEL_46;
      }
    }

    else if (v15 <= 0x20 && ((1 << v15) & 0x100002600) != 0)
    {
      goto LABEL_46;
    }
  }

LABEL_47:
  v17 = *(a2 + 40);
  if (v17)
  {
    v18 = *(v17 + 152);
    if (*(v17 + 160) != v18)
    {
      v19 = 0;
      v20 = 0;
      if (a3 != 6 || a4 != -1)
      {
        v12 = 0;
      }

      while (1)
      {
        v22 = (v18 + v19);
        v23 = *(v18 + v19 + 8);
        if (v23 != a3)
        {
          break;
        }

        if (a4 != -1)
        {
          if (a4 && (a4 != 1 || getItnControlCategory(*v22) == 2))
          {
            goto LABEL_71;
          }

LABEL_69:
          v27 = a1;
          v26 = v22;
LABEL_70:
          std::vector<TItnControl>::push_back[abi:ne200100](v27, v26);
          goto LABEL_71;
        }

        if (getItnControlCategory(*v22) == 2)
        {
          goto LABEL_69;
        }

LABEL_71:
        ++v20;
        v18 = *(v17 + 152);
        v19 += 24;
        if (v20 >= 0xAAAAAAAAAAAAAAABLL * ((*(v17 + 160) - v18) >> 3))
        {
          return;
        }
      }

      if (*v22 == 1)
      {
        v24 = v12;
      }

      else
      {
        v24 = 0;
      }

      if (v23 != 4 || v24 == 0)
      {
        goto LABEL_71;
      }

      *(&v29 + 1) = 6;
      v30 = 1;
      *&v29 = 3;
      v26 = &v29;
      v27 = a1;
      goto LABEL_70;
    }
  }
}

void sub_2626EFEB8(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

uint64_t TFormatter::countRightContextSpaces(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  v4 = a2;
  v6 = 0;
  while (1)
  {
    v7 = TResultManager::getResult(*(a1 + 128), *v4);
    v8 = *(v7 + 104);
    v9 = *(v7 + 112);
    v10 = v9 - v8;
    if (v9 != v8)
    {
      break;
    }

LABEL_8:
    if (++v4 == a3)
    {
      return v6;
    }
  }

  v11 = 0;
  v12 = v10 >> 3;
  while (1)
  {
    v13 = *(v8 + 8 * v11);
    if (v13)
    {
      if (*(v8 + 8 * v11 + 8))
      {
        return v6;
      }
    }

    v6 += v13;
    v11 += 2;
    if (v11 >= v12)
    {
      goto LABEL_8;
    }
  }
}

uint64_t TFormatter::countLeftContextSpaces(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8) = a3;
  *(a5 + 16) = a4;
  *(a5 + 24) = 0;
  *a5 = 0;
  if (!a3)
  {
    return result;
  }

  v6 = a3;
  v7 = a2;
  if (a3 < a2)
  {
LABEL_3:
    v8 = 0;
    goto LABEL_20;
  }

  v9 = a4;
  v10 = result;
  while (1)
  {
    while (1)
    {
      while (!v9)
      {
        --v6;
        v9 = -1;
        if (v6 < v7)
        {
          goto LABEL_3;
        }
      }

      result = TResultManager::getResult(*(v10 + 128), *v6);
      if (v9 != -1)
      {
        break;
      }

      v11 = *(result + 104);
      v12 = *(result + 112) - v11;
      if (v12)
      {
        v9 = v12 >> 3;
        goto LABEL_10;
      }

      v9 = 0;
    }

    v11 = *(result + 104);
LABEL_10:
    v13 = v11 + 8 * v9;
    if (*(v13 - 8))
    {
      if (*(v13 - 16))
      {
        break;
      }
    }

    v9 -= 2;
    *a5 += *(v11 + 8 * v9);
    *(a5 + 24) |= *result;
  }

  result = TResultManager::getResult(*(v10 + 128), *v6);
  v14 = *(result + 112) - *(result + 104);
  v15 = v9 == v14 >> 3;
  if (v9 == v14 >> 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = v9;
  }

  v7 = &v6[v15];
LABEL_20:
  *(a5 + 8) = v7;
  *(a5 + 16) = v8;
  return result;
}

void TFormatter::formatInternal(TFormatter *a1, uint64_t *a2, unint64_t a3, uint64_t *a4, uint64_t *a5, char **a6, uint64_t a7, int a8, uint64_t a9, unint64_t *a10)
{
  v33 = *MEMORY[0x277D85DE8];
  *a10 = a3;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  TFormatter::addLeftContext(a1, a2, a3, &v30, v29);
  v13 = v30;
  v14 = v31;
  std::vector<TItnWordData>::__insert_with_size[abi:ne200100]<std::__wrap_iter<TItnWordData const*>,std::__wrap_iter<TItnWordData const*>>(&v30, v31, *a6, a6[1], 0x6DB6DB6DB6DB6DB7 * ((a6[1] - *a6) >> 4));
  v16 = v30;
  v15 = v31;
  TFormatter::addRightContext(a1, a4, a5, &v30, &v28);
  v17 = &v14[-v13];
  v18 = 0x6DB6DB6DB6DB6DB7 * (&v14[-v13] >> 4);
  v19 = &v15[-v16];
  v20 = 0x6DB6DB6DB6DB6DB7 * (&v15[-v16] >> 4);
  v21 = v30;
  if (v20 != v18)
  {
    if (a8 && !v29[1])
    {
      v24 = *(a1 + 6);
      ActiveConfigHandle = TParam::getActiveConfigHandle((v24 + 3792));
      v22 = *(v24 + TParam::getValidConfig((v24 + 3792), ActiveConfigHandle) + 3944);
      v23 = v30;
    }

    else
    {
      v22 = 1;
      v23 = v30;
    }

    v17[v21 + 32] = v22 & 1;
    v21 = v23;
  }

  if (&v31[-v21] != v19)
  {
    v19[v21 + 32] = 1;
  }

  TFormatter::segment(a1, &v30, v18, v20);
  TFormatter::assignWordRules();
}

void sub_2626F08C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a28)
  {
    operator delete(a28);
  }

  if (a31)
  {
    operator delete(a31);
  }

  v34 = *(v32 - 144);
  if (v34)
  {
    *(v32 - 136) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<TItnControl>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TItnControl>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

uint64_t freeBlocks(uint64_t result)
{
  if (result)
  {
    v1 = result;
    do
    {
      v2 = *(v1 + 144);
      v3 = *(v1 + 120);
      if (v3)
      {
        *(v1 + 128) = v3;
        operator delete(v3);
      }

      if (*(v1 + 119) < 0)
      {
        operator delete(*(v1 + 96));
      }

      if (*(v1 + 95) < 0)
      {
        operator delete(*(v1 + 72));
      }

      if (*(v1 + 71) < 0)
      {
        operator delete(*(v1 + 48));
      }

      result = MEMORY[0x26672B1B0](v1, 0x10F2C405D5B575ELL);
      v1 = v2;
    }

    while (v2);
  }

  return result;
}

void TFormatter::wordSequenceToResult(TFormatter *a1, uint64_t *a2, unint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, unint64_t *a9, uint64_t **a10)
{
  memset(__p, 0, sizeof(__p));
  if (*a6 != a6[1])
  {
    TFormatter::addWords(a1, a6, a7, __p);
    TFormatter::makeUttState(a1, a2, a5 - a2, (a3 - a2) >> 3, (a4 - a3) >> 3, a8, v22);
    v16 = __p[0];
    v17 = v22[1];
    *(__p[0] + 40) = v22[0];
    *(v16 + 56) = v17;
    v18 = v22[3];
    *(v16 + 72) = v22[2];
    *(v16 + 88) = v18;
    v16[104] = 1;
  }

  *&v22[0] = -1;
  *a10 = a4;
  v19 = *(a1 + 6);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v19 + 2224));
  ValidConfig = TParam::getValidConfig((v19 + 2224), ActiveConfigHandle);
  TFormatter::formatInternal(a1, a2, a3, a4, a5, __p, a8, *(v19 + ValidConfig + 2376), v22, a9);
}

void sub_2626F0C48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TFormatter::generateResultAlternatives(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = v5;
  TBuffer<TPItnResultHandle_fake **>::resize(v6, 0);
  if (v13)
  {
    v19 = *v13;
    if (v19 == v13[1])
    {
      return;
    }
  }

  else
  {
    v19 = 0;
  }

  TResultRelativePosition::TResultRelativePosition(&v240, *(v18 + 128), v17, v15, v19);
  if (v241)
  {
    return;
  }

  v20 = v13 ? v13[1] : -1;
  TResultRelativePosition::TResultRelativePosition(v239, *(v18 + 128), v17, v15, v20);
  if (v239[2])
  {
    return;
  }

  v193 = v11;
  v21 = *(v18 + 48);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v21 + 9760));
  v23 = *(v21 + 4 * TParam::getValidConfig((v21 + 9760), ActiveConfigHandle) + 9920);
  v236 = 0;
  v237 = 0;
  v238 = 0;
  if (!v23)
  {
    return;
  }

  v200 = v9;
  v24 = 0;
  v25 = 1;
  do
  {
    if ((v23 & 1) == 0)
    {
      goto LABEL_60;
    }

    if (v25 > 127)
    {
      if (v25 <= 1023)
      {
        switch(v25)
        {
          case 128:
            v50 = *(v18 + 48);
            v51 = TParam::getActiveConfigHandle((v50 + 12576));
            v28 = v50 + 4 * TParam::getValidConfig((v50 + 12576), v51);
            v29 = 12736;
            break;
          case 256:
            v54 = *(v18 + 48);
            v55 = TParam::getActiveConfigHandle((v54 + 12928));
            v28 = v54 + 4 * TParam::getValidConfig((v54 + 12928), v55);
            v29 = 13088;
            break;
          case 512:
            v34 = *(v18 + 48);
            v35 = TParam::getActiveConfigHandle((v34 + 13280));
            v28 = v34 + 4 * TParam::getValidConfig((v34 + 13280), v35);
            v29 = 13440;
            break;
          default:
            goto LABEL_60;
        }
      }

      else if (v25 > 4095)
      {
        if (v25 == 4096)
        {
          v46 = *(v18 + 48);
          v47 = TParam::getActiveConfigHandle((v46 + 14336));
          v28 = v46 + 4 * TParam::getValidConfig((v46 + 14336), v47);
          v29 = 14496;
        }

        else
        {
          if (v25 != 0x10000)
          {
            goto LABEL_60;
          }

          v38 = *(v18 + 48);
          v39 = TParam::getActiveConfigHandle((v38 + 14688));
          v28 = v38 + 4 * TParam::getValidConfig((v38 + 14688), v39);
          v29 = 14848;
        }
      }

      else if (v25 == 1024)
      {
        v42 = *(v18 + 48);
        v43 = TParam::getActiveConfigHandle((v42 + 13632));
        v28 = v42 + 4 * TParam::getValidConfig((v42 + 13632), v43);
        v29 = 13792;
      }

      else
      {
        if (v25 != 2048)
        {
          goto LABEL_60;
        }

        v30 = *(v18 + 48);
        v31 = TParam::getActiveConfigHandle((v30 + 13984));
        v28 = v30 + 4 * TParam::getValidConfig((v30 + 13984), v31);
        v29 = 14144;
      }
    }

    else if (v25 <= 7)
    {
      switch(v25)
      {
        case 1:
          v48 = *(v18 + 48);
          v49 = TParam::getActiveConfigHandle((v48 + 10112));
          v28 = v48 + 4 * TParam::getValidConfig((v48 + 10112), v49);
          v29 = 10272;
          break;
        case 2:
          v52 = *(v18 + 48);
          v53 = TParam::getActiveConfigHandle((v52 + 10464));
          v28 = v52 + 4 * TParam::getValidConfig((v52 + 10464), v53);
          v29 = 10624;
          break;
        case 4:
          v32 = *(v18 + 48);
          v33 = TParam::getActiveConfigHandle((v32 + 10816));
          v28 = v32 + 4 * TParam::getValidConfig((v32 + 10816), v33);
          v29 = 10976;
          break;
        default:
          goto LABEL_60;
      }
    }

    else if (v25 > 31)
    {
      if (v25 == 32)
      {
        v44 = *(v18 + 48);
        v45 = TParam::getActiveConfigHandle((v44 + 11872));
        v28 = v44 + 4 * TParam::getValidConfig((v44 + 11872), v45);
        v29 = 12032;
      }

      else
      {
        if (v25 != 64)
        {
          goto LABEL_60;
        }

        v36 = *(v18 + 48);
        v37 = TParam::getActiveConfigHandle((v36 + 12224));
        v28 = v36 + 4 * TParam::getValidConfig((v36 + 12224), v37);
        v29 = 12384;
      }
    }

    else if (v25 == 8)
    {
      v40 = *(v18 + 48);
      v41 = TParam::getActiveConfigHandle((v40 + 11168));
      v28 = v40 + 4 * TParam::getValidConfig((v40 + 11168), v41);
      v29 = 11328;
    }

    else
    {
      if (v25 != 16)
      {
        goto LABEL_60;
      }

      v26 = *(v18 + 48);
      v27 = TParam::getActiveConfigHandle((v26 + 11520));
      v28 = v26 + 4 * TParam::getValidConfig((v26 + 11520), v27);
      v29 = 11680;
    }

    v56 = *(v28 + v29);
    v57 = v237;
    if (v237 >= v238)
    {
      v58 = v237 - v236;
      if ((v58 + 1) >> 61)
      {
        std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
      }

      v59 = (v238 - v236) >> 2;
      if (v59 <= v58 + 1)
      {
        v59 = v58 + 1;
      }

      if (v238 - v236 >= 0x7FFFFFFFFFFFFFF8)
      {
        v60 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v60 = v59;
      }

      if (v60)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&v236, v60);
      }

      v61 = (8 * v58);
      *v61 = v25 | (v56 << 32);
      v24 = (8 * v58 + 8);
      v62 = v61 - (v237 - v236);
      memcpy(v62, v236, v237 - v236);
      v63 = v236;
      v236 = v62;
      v237 = v24;
      v238 = 0;
      if (v63)
      {
        operator delete(v63);
      }
    }

    else
    {
      *v237 = v25 | (v56 << 32);
      v24 = v57 + 1;
    }

    v237 = v24;
LABEL_60:
    v25 *= 2;
    v141 = v23 >= 2;
    v23 >>= 1;
  }

  while (v141);
  v64 = v236;
  if (v236 != v24)
  {
    v222 = priorityCompare;
    std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*,false>(v236, v24, &v222, 126 - 2 * __clz(v24 - v236), 1);
    v233 = 0;
    v234 = 0;
    v235 = 0;
    v230 = 0;
    v231 = 0;
    v232 = 0;
    std::vector<TPItnTagHandle_fake **>::__assign_with_size[abi:ne200100]<TPItnTagHandle_fake ** const*,TPItnTagHandle_fake ** const*>(&v233, v17, &v17[8 * v240], v240);
    if (*(&v240 + 1))
    {
      TResultManager::copyAlignRange(*(v18 + 128), *&v17[8 * v240]);
    }

    v66 = v233;
    v65 = v234;
    if (v240 == v239[0])
    {
      TResultManager::copyAlignRange(*(v18 + 128), *&v17[8 * v240]);
    }

    std::vector<TPItnResultHandle_fake **>::__insert_with_size[abi:ne200100]<TPItnResultHandle_fake ** const*,TPItnResultHandle_fake ** const*>(&v233, v234, &v17[8 * v240], &v17[8 * v239[0]], (8 * v239[0] - 8 * v240) >> 3);
    if (v239[1])
    {
      TResultManager::copyAlignRange(*(v18 + 128), *&v17[8 * v239[0]]);
    }

    v68 = v233;
    v67 = v234;
    std::vector<TPItnResultHandle_fake **>::__insert_with_size[abi:ne200100]<TPItnResultHandle_fake ** const*,TPItnResultHandle_fake ** const*>(&v233, v234, &v17[8 * v239[0]], v15, (v15 - &v17[8 * v239[0]]) >> 3);
    v197 = v65 - v66;
    v196 = v67 - v68;
    v195 = v240 == 0;
    v227 = 0;
    v228 = 0;
    v229 = 0;
    memset(&__s1, 0, sizeof(__s1));
    v190 = (v67 - v68) >> 3;
    v198 = (v65 - v66) >> 3;
    if (v198 < v190)
    {
      v69 = (v65 - v66) >> 3;
      do
      {
        Result = TResultManager::getResult(*(v18 + 128), *&v233[8 * v69]);
        std::string::append(&__s1, *(Result + 16));
        v71 = *(Result + 32);
        if (*(Result + 40) != v71)
        {
          v72 = 0;
          v73 = 0;
          do
          {
            v74 = (v71 + v72);
            if (*(v71 + v72 + 23) < 0)
            {
              v74 = *v74;
            }

            v75 = v228;
            if (v228 >= v229)
            {
              v77 = v228 - v227;
              if ((v77 + 1) >> 61)
              {
                std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
              }

              v78 = (v229 - v227) >> 2;
              if (v78 <= v77 + 1)
              {
                v78 = v77 + 1;
              }

              if (v229 - v227 >= 0x7FFFFFFFFFFFFFF8)
              {
                v79 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v79 = v78;
              }

              if (v79)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t const*>>(&v227, v79);
              }

              v80 = (8 * v77);
              *v80 = v74;
              v76 = (8 * v77 + 8);
              v81 = v80 - (v228 - v227);
              memcpy(v81, v227, v228 - v227);
              v82 = v227;
              v227 = v81;
              v228 = v76;
              v229 = 0;
              if (v82)
              {
                operator delete(v82);
              }
            }

            else
            {
              *v228 = v74;
              v76 = v75 + 1;
            }

            v228 = v76;
            ++v73;
            v71 = *(Result + 32);
            v72 += 24;
          }

          while (v73 < 0xAAAAAAAAAAAAAAABLL * ((*(Result + 40) - v71) >> 3));
        }

        ++v69;
      }

      while (v69 != v190);
    }

    v222 = v224;
    v223 = xmmword_26286B6F0;
    v225 = 1;
    v83 = v236;
    v84 = v193;
    if (v237 != v236)
    {
      v191 = 0;
      v189 = v198 + 1;
      do
      {
        if (v7[2] >= v200)
        {
          break;
        }

        v85 = v83[v191];
        if (v85 == 0x10000)
        {
          if (v227 != v228)
          {
            TParamSetter::TParamSetter(&v220, *(v18 + 48) + 2224, &unk_262888EC4, *(*(v18 + 48) + 136));
            TParamSetter::TParamSetter(&v213, *(v18 + 48) + 2472, &unk_262888EC4, *(*(v18 + 48) + 136));
            v209 = v211;
            v210 = xmmword_26286B6F0;
            v212 = 1;
            v204 = 0;
            __p = v207;
            v206 = xmmword_26286B6F0;
            v208 = 1;
            v218 = 0;
            v217 = 0;
            v219 = 0;
            v202 = 0;
            v203 = 0;
            std::vector<wchar_t const*>::__init_with_size[abi:ne200100]<wchar_t const**,wchar_t const**>(&v202, v227, v228, v228 - v227);
            v106 = v227;
            if (v228 == v227 || v7[2] >= v200)
            {
LABEL_219:
              if (v202)
              {
                v203 = v202;
                operator delete(v202);
              }

              if (v217)
              {
                v218 = v217;
                operator delete(v217);
              }

              if (v208 == 1 && __p != v207 && __p)
              {
                MEMORY[0x26672B1B0]();
              }

              if (v212 == 1 && v209 != v211 && v209)
              {
                MEMORY[0x26672B1B0]();
              }

              TParamSetter::~TParamSetter(&v213);
              TParamSetter::~TParamSetter(&v220);
              goto LABEL_328;
            }

            v107 = 0;
            while (2)
            {
              (*(**(v18 + 120) + 48))(*(v18 + 120), v106[v107], 0, &v209);
              if (*(&v210 + 1))
              {
                TLexicon::getWrittenForm(*(v18 + 32), v227[v107], &__p);
                if (*(&v206 + 1))
                {
                  TBuffer<wchar_t>::insert(&__p, *(&v206 + 1), dword_262888EDC, 0xBuLL);
                  v108 = *(v18 + 32);
                  if (*(&v206 + 1) >= v206)
                  {
                    if (v208)
                    {
                      LODWORD(v242[0]) = 0;
                      TBuffer<wchar_t>::insert(&__p, *(&v206 + 1), v242, 1uLL);
                      v109 = __p;
                      --*(&v206 + 1);
                    }

                    else
                    {
                      v109 = __p;
                      if (v206)
                      {
                        *(__p + v206 - 1) = 0;
                      }
                    }
                  }

                  else
                  {
                    v109 = __p;
                    *(__p + *(&v206 + 1)) = 0;
                  }

                  TLexicon::addTempWord(v108, v109, 0, 0, 0);
                  if (*(&v206 + 1) >= v206)
                  {
                    if (v208)
                    {
                      LODWORD(v242[0]) = 0;
                      TBuffer<wchar_t>::insert(&__p, *(&v206 + 1), v242, 1uLL);
                      v110 = __p;
                      --*(&v206 + 1);
                    }

                    else
                    {
                      v110 = __p;
                      if (v206)
                      {
                        *(__p + v206 - 1) = 0;
                      }
                    }
                  }

                  else
                  {
                    v110 = __p;
                    *(__p + *(&v206 + 1)) = 0;
                  }

                  *(v202 + v107) = v110;
                  v216 = 0;
                  v201 = 0;
                  v111 = v7[2];
                  if (*(&v210 + 1) && v111 < v200)
                  {
                    v112 = 0;
                    v194 = 0;
                    v199 = v107;
                    while (1)
                    {
                      v192 = v112;
                      v113 = *&v209[8 * v112];
                      if (v113 && (v114 = *(*(v18 + 120) + 32), v113 <= (*(*(v18 + 120) + 40) - v114) >> 3))
                      {
                        v115 = *(v114 + 8 * v113 - 8);
                      }

                      else
                      {
                        v115 = 0;
                      }

                      if ((*(v115 + 145) & 1) == 0)
                      {
                        std::vector<TPItnRuleControl>::resize(&v217, 0xAAAAAAAAAAAAAAABLL * ((*(v115 + 160) - *(v115 + 152)) >> 3));
                        v117 = *(v115 + 152);
                        v116 = *(v115 + 160);
                        if (v116 != v117)
                        {
                          v118 = 0xAAAAAAAAAAAAAAABLL * ((v116 - v117) >> 3);
                          v119 = v217;
                          if (v118 <= 1)
                          {
                            v118 = 1;
                          }

                          v120 = *(v115 + 152);
                          do
                          {
                            v121 = *v120;
                            v120 = (v120 + 24);
                            *v119++ = v121;
                            --v118;
                          }

                          while (v118);
                        }

                        v122 = (v115 + 120);
                        if (*(v115 + 143) < 0)
                        {
                          v122 = *v122;
                        }

                        v123 = v116 == v117 ? 0 : v217;
                        v111 = v7[2];
                        if (v111 < v200)
                        {
                          break;
                        }
                      }

LABEL_184:
                      v112 = v192 + 1;
                      v107 = v199;
                      v141 = (v192 + 1) >= *(&v210 + 1) || v111 >= v200;
                      if (v141)
                      {
                        goto LABEL_191;
                      }
                    }

                    v124 = 0;
                    v125 = 1;
                    while (2)
                    {
                      if ((v125 & 1) == 0)
                      {
                        if (!*v122)
                        {
                          goto LABEL_184;
                        }

                        goto LABEL_157;
                      }

                      if ((*(v115 + 144) & 1) == 0)
                      {
                        if (v194)
                        {
                          v126 = 1;
                          goto LABEL_155;
                        }

                        if (*(v115 + 32) == *(v115 + 24) && *(v115 + 56) == *(v115 + 48))
                        {
                          v126 = *(v115 + 192) == -1;
LABEL_155:
                          v194 = v126;
                        }

                        else
                        {
                          v194 = 0;
                        }

LABEL_157:
                        LOBYTE(v188) = 0;
                        v127 = (*(**(v18 + 120) + 16))(*(v18 + 120), *(v202 + v199), v122, v124 & 1, 0, 0, 0, 0, v123, v123 - 0x5555555555555550 * ((*(v115 + 160) - *(v115 + 152)) >> 3), -1, v188);
                        v128 = (*(*v18 + 96))(v18, v233, &v233[v197], &v233[v196], v234, &v202, 0, v84 & v195, &v216, &v201);
                        v129 = *(TResultManager::getResult(*(v18 + 128), v128) + 16);
                        v130 = strlen(v129);
                        v131 = v130;
                        if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                        {
                          if (v130 != __s1.__r_.__value_.__l.__size_)
                          {
                            goto LABEL_164;
                          }

                          if (v130 == -1)
                          {
                            std::wstring::__throw_out_of_range[abi:ne200100]();
                          }

                          p_s1 = __s1.__r_.__value_.__r.__words[0];
LABEL_163:
                          v133 = memcmp(p_s1, v129, v131) == 0;
                        }

                        else
                        {
                          if (v130 == SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
                          {
                            p_s1 = &__s1;
                            goto LABEL_163;
                          }

LABEL_164:
                          v133 = 0;
                        }

                        if (v7[2] && !v133)
                        {
                          v134 = 0;
                          do
                          {
                            v135 = TResultManager::getResult(*(v18 + 128), *(*v7 + 8 * v134));
                            v136 = strcmp(*(v135 + 16), v129);
                            v133 = v136 == 0;
                          }

                          while (++v134 < v7[2] && v136 != 0);
                          v84 = v193;
                        }

                        v138 = *(v18 + 128);
                        if (v133)
                        {
                          TResultManager::destroy(v138, v128);
                        }

                        else
                        {
                          v139 = TResultManager::getResult(v138, v128);
                          MEMORY[0x26672AF30](*(v139 + 32) + 24 * v199, v227[v199]);
                          v242[0] = v128;
                          TBuffer<TPItnRuleHandle_fake **>::insert(v7, v7[2], v242, 1uLL);
                        }

                        (*(**(v18 + 120) + 24))(*(v18 + 120), v127);
                        v111 = v7[2];
                      }

                      v140 = v125 & (v111 < v200);
                      v124 = 1;
                      v125 = 0;
                      if ((v140 & 1) == 0)
                      {
                        goto LABEL_184;
                      }

                      continue;
                    }
                  }

                  v194 = 0;
LABEL_191:
                  if (!v194 && v111 < v200)
                  {
                    v142 = (*(*v18 + 96))(v18, v233, &v233[v197], &v233[v196], v234, &v202, 0, v84 & v195, &v216, &v201);
                    v143 = *(TResultManager::getResult(*(v18 + 128), v142) + 16);
                    v144 = strlen(v143);
                    v145 = v144;
                    if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                    {
                      if (v144 != __s1.__r_.__value_.__l.__size_)
                      {
                        goto LABEL_200;
                      }

                      if (v144 == -1)
                      {
                        std::wstring::__throw_out_of_range[abi:ne200100]();
                      }

                      v146 = __s1.__r_.__value_.__r.__words[0];
LABEL_199:
                      v147 = memcmp(v146, v143, v145) == 0;
                    }

                    else
                    {
                      if (v144 == SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
                      {
                        v146 = &__s1;
                        goto LABEL_199;
                      }

LABEL_200:
                      v147 = 0;
                    }

                    if (v7[2] && !v147)
                    {
                      v148 = 0;
                      do
                      {
                        v149 = TResultManager::getResult(*(v18 + 128), *(*v7 + 8 * v148));
                        v150 = strcmp(*(v149 + 16), v143);
                        v147 = v150 == 0;
                      }

                      while (++v148 < v7[2] && v150 != 0);
                      v84 = v193;
                    }

                    v152 = *(v18 + 128);
                    if (v147)
                    {
                      TResultManager::destroy(v152, v142);
                    }

                    else
                    {
                      v153 = TResultManager::getResult(v152, v142);
                      MEMORY[0x26672AF30](*(v153 + 32) + 24 * v107, v227[v107]);
                      v242[0] = v142;
                      TBuffer<TPItnRuleHandle_fake **>::insert(v7, v7[2], v242, 1uLL);
                    }
                  }

                  *(v202 + v107) = v227[v107];
                }
              }

              ++v107;
              v106 = v227;
              if (v107 >= v228 - v227 || v7[2] >= v200)
              {
                goto LABEL_219;
              }

              continue;
            }
          }
        }

        else if (v85 == 1)
        {
          if (v228 - v227 == 8)
          {
            v86 = *(v18 + 48);
            v87 = TParam::getActiveConfigHandle((v86 + 16416));
            v88 = *(v86 + TParam::getValidConfig((v86 + 16416), v87) + 16568);
            v84 = v193;
            if (v88 != 1 || (v84 = v193, TLexicon::getPronCount(*(v18 + 32), *v227) == 1))
            {
              v214 = 0;
              v213 = 0;
              v215 = 0;
              v89 = *(v18 + 32);
              v90 = *v227;
              v91 = TStringParam::get((*(v18 + 48) + 15040));
              TLexicon::getHomophones(v89, v90, v91, &v213);
              v92 = v213;
              if (v213 != v214)
              {
                __p = 0;
                v206 = 0uLL;
                std::vector<std::pair<int,TWord const*>>::reserve(&__p, (v214 - v213) >> 3);
                v93 = v213;
                if (v214 == v213)
                {
                  v98 = v206;
                }

                else
                {
                  v94 = 0;
                  do
                  {
                    UnigramScore = TWord::getUnigramScore(v93[v94]);
                    v96 = *(v213 + v94);
                    v97 = v206;
                    if (v206 >= *(&v206 + 1))
                    {
                      v99 = (v206 - __p) >> 4;
                      v100 = v99 + 1;
                      if ((v99 + 1) >> 60)
                      {
                        std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
                      }

                      v101 = *(&v206 + 1) - __p;
                      if ((*(&v206 + 1) - __p) >> 3 > v100)
                      {
                        v100 = v101 >> 3;
                      }

                      if (v101 >= 0x7FFFFFFFFFFFFFF0)
                      {
                        v102 = 0xFFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v102 = v100;
                      }

                      if (v102)
                      {
                        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,TWord const*>>>(&__p, v102);
                      }

                      v103 = (16 * v99);
                      *v103 = UnigramScore;
                      v103[1] = v96;
                      v98 = (16 * v99 + 16);
                      v104 = (16 * v99 - (v206 - __p));
                      memcpy(v104, __p, v206 - __p);
                      v105 = __p;
                      __p = v104;
                      v206 = v98;
                      if (v105)
                      {
                        operator delete(v105);
                      }
                    }

                    else
                    {
                      *v206 = UnigramScore;
                      *(v97 + 8) = v96;
                      v98 = (v97 + 16);
                    }

                    *&v206 = v98;
                    ++v94;
                    v93 = v213;
                  }

                  while (v94 < (v214 - v213) >> 3);
                }

                v156 = 126 - 2 * __clz((v98 - __p) >> 4);
                if (v98 == __p)
                {
                  v157 = 0;
                }

                else
                {
                  v157 = v156;
                }

                std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,false>(__p, v98, &v209, v157, 1);
                TParamSetter::TParamSetter(&v209, *(v18 + 48) + 2224, &unk_262888EC4, *(*(v18 + 48) + 136));
                TParamSetter::TParamSetter(&v220, *(v18 + 48) + 2472, &unk_262888EC4, *(*(v18 + 48) + 136));
                std::vector<wchar_t const*>::vector[abi:ne200100](&v217, 1uLL);
                v158 = __p;
                if (v206 != __p && v7[2] < v200)
                {
                  for (i = 0; i < (v206 - __p) >> 4 && v7[2] < v200; ++i)
                  {
                    v242[0] = 0;
                    v216 = 0;
                    *v217 = *v158[2 * i + 1];
                    v160 = (*(*v18 + 96))(v18, v233, &v233[v197], &v233[v196], v234, &v217, 0, v193 & v195, v242, &v216);
                    v161 = *(TResultManager::getResult(*(v18 + 128), v160) + 16);
                    v162 = strlen(v161);
                    v163 = v162;
                    if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                    {
                      if (v162 == __s1.__r_.__value_.__l.__size_)
                      {
                        if (v162 == -1)
                        {
                          std::wstring::__throw_out_of_range[abi:ne200100]();
                        }

                        v164 = __s1.__r_.__value_.__r.__words[0];
                        goto LABEL_265;
                      }
                    }

                    else if (v162 == SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
                    {
                      v164 = &__s1;
LABEL_265:
                      v165 = memcmp(v164, v161, v163) == 0;
                      goto LABEL_267;
                    }

                    v165 = 0;
LABEL_267:
                    v166 = v7[2];
                    if (v166 && !v165)
                    {
                      v167 = 0;
                      do
                      {
                        v168 = TResultManager::getResult(*(v18 + 128), *(*v7 + 8 * v167));
                        v169 = strcmp(*(v168 + 16), v161);
                        v165 = v169 == 0;
                        ++v167;
                        v166 = v7[2];
                      }

                      while (v167 < v166 && v169 != 0);
                    }

                    if (v165)
                    {
                      TResultManager::destroy(*(v18 + 128), v160);
                    }

                    else
                    {
                      v202 = v160;
                      TBuffer<TPItnRuleHandle_fake **>::insert(v7, v166, &v202, 1uLL);
                    }

                    v158 = __p;
                  }
                }

                if (v217)
                {
                  v218 = v217;
                  operator delete(v217);
                }

                TParamSetter::~TParamSetter(&v220);
                TParamSetter::~TParamSetter(&v209);
                v84 = v193;
                if (__p)
                {
                  *&v206 = __p;
                  operator delete(__p);
                }

                v92 = v213;
              }

              if (v92)
              {
                v214 = v92;
                operator delete(v92);
              }
            }
          }
        }

        else if (v85 <= 0x1000)
        {
          if (v85 > 127)
          {
            if (v85 > 1023)
            {
              switch(v85)
              {
                case 1024:
                  v155 = 10;
                  break;
                case 2048:
                  v155 = 11;
                  break;
                case 4096:
                  v155 = 12;
                  break;
                default:
                  goto LABEL_328;
              }
            }

            else
            {
              switch(v85)
              {
                case 128:
                  v155 = 7;
                  break;
                case 256:
                  v155 = 8;
                  break;
                case 512:
                  v155 = 9;
                  break;
                default:
                  goto LABEL_328;
              }
            }
          }

          else if (v85 > 15)
          {
            switch(v85)
            {
              case 16:
                v155 = 4;
                break;
              case 32:
                v155 = 5;
                break;
              case 64:
                v155 = 6;
                break;
              default:
                goto LABEL_328;
            }
          }

          else
          {
            switch(v85)
            {
              case 2:
                v155 = 1;
                break;
              case 4:
                v155 = 2;
                break;
              case 8:
                v155 = 3;
                break;
              default:
                goto LABEL_328;
            }
          }

          v220 = v155;
          TBuffer<TPItnResultHandle_fake **>::resize(&v222, 0);
          (*(*v18 + 120))(v18, v233, &v233[v197], &v233[v196], v234, &v220, &v221, v84 & v195, &v222);
          v171 = *(&v223 + 1);
          if (*(&v223 + 1))
          {
            if (v190 <= v189)
            {
              v173 = *v222;
            }

            else
            {
              v172 = *(v18 + 128);
              if (*(&v223 + 1) >= v223)
              {
                if (v225)
                {
                  v209 = 0;
                  TBuffer<TPItnRuleHandle_fake **>::insert(&v222, *(&v223 + 1), &v209, 1uLL);
                  v171 = --*(&v223 + 1);
                }

                else if (v223)
                {
                  *(v222 + v223 - 1) = 0;
                }
              }

              else
              {
                *(v222 + *(&v223 + 1)) = 0;
              }

              v173 = TResultManager::merge(v172, v222, v171);
              if (*(&v223 + 1))
              {
                v174 = 0;
                do
                {
                  TResultManager::destroy(*(v18 + 128), *(v222 + v174++));
                }

                while (v174 < *(&v223 + 1));
                v84 = v193;
              }
            }

            v175 = *(TResultManager::getResult(*(v18 + 128), v173) + 16);
            v176 = strlen(v175);
            v177 = v176;
            if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
            {
              if (v176 != __s1.__r_.__value_.__l.__size_)
              {
                goto LABEL_315;
              }

              if (v176 == -1)
              {
                std::wstring::__throw_out_of_range[abi:ne200100]();
              }

              v178 = __s1.__r_.__value_.__r.__words[0];
LABEL_314:
              v179 = memcmp(v178, v175, v177) == 0;
            }

            else
            {
              if (v176 == SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
              {
                v178 = &__s1;
                goto LABEL_314;
              }

LABEL_315:
              v179 = 0;
            }

            v180 = v7[2];
            if (v180 && !v179)
            {
              v181 = 0;
              do
              {
                v182 = TResultManager::getResult(*(v18 + 128), *(*v7 + 8 * v181));
                v183 = strcmp(*(v182 + 16), v175);
                v179 = v183 == 0;
                ++v181;
                v180 = v7[2];
              }

              while (v181 < v180 && v183 != 0);
              v84 = v193;
            }

            if (v179)
            {
              TResultManager::destroy(*(v18 + 128), v173);
            }

            else
            {
              v209 = v173;
              TBuffer<TPItnRuleHandle_fake **>::insert(v7, v180, &v209, 1uLL);
            }
          }
        }

LABEL_328:
        v83 = v236;
        ++v191;
      }

      while (v191 < v237 - v236);
    }

    v185 = v230;
    if (v231 != v230)
    {
      v186 = 0;
      do
      {
        TResultManager::destroy(*(v18 + 128), v185[v186++]);
        v185 = v230;
      }

      while (v186 < (v231 - v230) >> 3);
    }

    if (v225 == 1 && v222 != v224 && v222 != 0)
    {
      MEMORY[0x26672B1B0]();
    }

    if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s1.__r_.__value_.__l.__data_);
    }

    if (v227)
    {
      v228 = v227;
      operator delete(v227);
    }

    if (v230)
    {
      v231 = v230;
      operator delete(v230);
    }

    if (v233)
    {
      v234 = v233;
      operator delete(v233);
    }

    v64 = v236;
  }

  if (v64)
  {
    v237 = v64;
    operator delete(v64);
  }
}

void sub_2626F2628(_Unwind_Exception *a1)
{
  v3 = *(v1 - 216);
  if (v3)
  {
    *(v1 - 208) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 192);
  if (v4)
  {
    *(v1 - 184) = v4;
    operator delete(v4);
  }

  v5 = *(v1 - 168);
  if (v5)
  {
    *(v1 - 160) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void TBuffer<TPItnResultHandle_fake **>::resize(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 2072) == 1 && *(a1 + 8) < a2)
  {
    *(a1 + 8) = a2 + 1;
    operator new[]();
  }

  v4 = *(a1 + 16);
  if (v4 < a2)
  {
    v5 = a2;
    if (*(a1 + 2072))
    {
LABEL_9:
      bzero((*a1 + 8 * v4), 8 * (v5 - v4));
      goto LABEL_10;
    }

    v5 = *(a1 + 8);
    if (v4 < v5)
    {
      if (v5 >= a2)
      {
        v5 = a2;
      }

      goto LABEL_9;
    }
  }

LABEL_10:
  *(a1 + 16) = a2;
}

void *std::vector<std::pair<int,TWord const*>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,TWord const*>>>(result, a2);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

TFormatter *TFormatter::reformatResults(TFormatter *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t *a7, unsigned int a8, uint64_t a9)
{
  if (a4 != a3)
  {
    v9 = a6;
    v10 = result;
    v37 = a3 - a2;
    v38 = result;
    v36 = (a5 - a2) >> 3;
    v11 = a7 - a6;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    v45 = v11;
    v43 = a4 - a3;
    v47 = *(TResultManager::getResult(*(result + 16), *a3) + 1);
    v12 = -8;
    v13 = 1;
    do
    {
      v14 = v12;
      v15 = v13;
      if (v13 >= v43)
      {
        break;
      }

      v16 = TResultManager::getResult(*(v10 + 128), a3[v13]);
      v12 = v14 - 8;
      v13 = v15 + 1;
    }

    while (*(v16 + 1) == v47);
    v55 = 0;
    v56 = 0;
    v42 = v14;
    v57 = 0;
    TFormatter::addWords(v10, a3, a3 - v14, 0, &v55);
    v17 = v55;
    v18 = v56;
    if (v56 == v55)
    {
LABEL_21:
      if (v47)
      {
        v34 = &unk_262888F0C;
      }

      else
      {
        v34 = &unk_262888F14;
      }

      TParamSetter::TParamSetter(&v51, *(v38 + 6) + 3792, v34, *(*(v38 + 6) + 136));
      v35 = v37 + v15;
      if (v43 == v15)
      {
        v35 = v36;
      }

      v49 = -1;
      v50 = 0;
      TFormatter::formatInternal(v38, a2, a3, (a3 - v42), &a2[v35], &v55, a8, 0, &v49, &v50);
    }

    v19 = 0;
    v46 = v15;
    while (a7 == v9)
    {
      v20 = v19 + 1;
LABEL_20:
      v19 = v20;
      if (v20 >= 0x6DB6DB6DB6DB6DB7 * ((v18 - v17) >> 4))
      {
        goto LABEL_21;
      }
    }

    v20 = v19 + 1;
    v21 = v9;
    v22 = v45;
    while (1)
    {
      v23 = &v17[112 * v19];
      v24 = *(v23 + 40);
      v25 = *(v23 + 56);
      v26 = *(v23 + 88);
      v53 = *(v23 + 72);
      v54 = v26;
      v51 = v24;
      v52 = v25;
      if (getItnControlCategory(*v21) == 2)
      {
        if (v20 != 0x6DB6DB6DB6DB6DB7 * ((v56 - v55) >> 4))
        {
          v27 = *v21;
          *(&v53 + getItnControlCategory(*v21)) = -1;
          ItnControlCategory = getItnControlCategory(v27);
          v29 = &v51;
LABEL_16:
          *(v29 + ItnControlCategory) = v27;
        }
      }

      else
      {
        v30 = *v21;
        *(&v53 + getItnControlCategory(*v21)) = -1;
        v31 = getItnControlCategory(v30);
        v32 = *(a9 + 16);
        *(&v51 + v31) = v30;
        if (!(v19 | v32))
        {
          v27 = *v21;
          ItnControlCategory = getItnControlCategory(*v21);
          v29 = &v53;
          goto LABEL_16;
        }
      }

      v17 = v55;
      v33 = &v55[112 * v19];
      *(v33 + 40) = v51;
      *(v33 + 56) = v52;
      *(v33 + 72) = v53;
      *(v33 + 88) = v54;
      v33[104] = 1;
      ++v21;
      if (!--v22)
      {
        v18 = v56;
        v9 = a6;
        v15 = v46;
        goto LABEL_20;
      }
    }
  }

  return result;
}

void sub_2626F2DC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  v31 = *(v29 - 120);
  if (v31)
  {
    *(v29 - 112) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TFormatter::copyResult(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 128);
  v4 = a2;
  return TResultManager::merge(v2, &v4, 1);
}

uint64_t non-virtual thunk toTFormatter::copyResult(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  v4 = a2;
  return TResultManager::merge(v2, &v4, 1);
}

uint64_t TFormatter::getResultText(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(TResultManager::getResult(*(a1 + 128), a2) + 16);

  return TBuffer<char>::assign(a3, v4);
}

uint64_t non-virtual thunk toTFormatter::getResultText(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(TResultManager::getResult(*(a1 + 88), a2) + 16);

  return TBuffer<char>::assign(a3, v4);
}

uint64_t TFormatter::serializeResultTokenSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  TBuffer<char>::resize(a3, 0);
  v6 = TResultManager::getResult(*(a1 + 128), a2);
  v7 = *(v6 + 32);
  if (*(v6 + 40) != v7)
  {
    v8 = v6;
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = (v7 + v9);
      if (*(v7 + v9 + 23) < 0)
      {
        v11 = *v11;
      }

      TLocaleInfo::unicodeToMultiByte(*(a1 + 32) + 240, v11, a3);
      v14 = 0;
      TBuffer<char>::insert(a3, *(a3 + 16), &v14, 1uLL);
      ++v10;
      v7 = *(v8 + 32);
      v9 += 24;
    }

    while (v10 < 0xAAAAAAAAAAAAAAABLL * ((*(v8 + 40) - v7) >> 3));
  }

  v13 = 0;
  return TBuffer<char>::insert(a3, *(a3 + 16), &v13, 1uLL);
}

unint64_t TFormatter::serializeResult(uint64_t a1, uint64_t a2, char *a3, unint64_t a4)
{
  v7 = TResultManager::getResult(*(a1 + 128), a2);
  v8 = *(a1 + 32);

  return TResult::serialize(v7, a3, a4, v8);
}

unint64_t non-virtual thunk toTFormatter::serializeResult(uint64_t a1, uint64_t a2, char *a3, unint64_t a4)
{
  v7 = TResultManager::getResult(*(a1 + 88), a2);
  v8 = *(a1 - 8);

  return TResult::serialize(v7, a3, a4, v8);
}

void TFormatter::getResultAlignment(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  Result = TResultManager::getResult(*(a1 + 128), a2);
  v6 = *(Result + 104);
  v5 = *(Result + 112);
  v7 = (v5 - v6) >> 3;
  if (*(a3 + 2072) == 1 && a3[1] < v7)
  {
    a3[1] = v7 + 1;
    operator new[]();
  }

  v8 = a3[2];
  if (v8 < v7)
  {
    if (*(a3 + 2072) == 1)
    {
      v9 = (*a3 + 8 * v8);
      v10 = v5 - v6 - 8 * v8;
    }

    else
    {
      v11 = a3[1];
      if (v8 >= v11)
      {
        goto LABEL_12;
      }

      if (v11 >= v7)
      {
        v11 = (v5 - v6) >> 3;
      }

      v9 = (*a3 + 8 * v8);
      v10 = 8 * (v11 - v8);
    }

    bzero(v9, v10);
  }

LABEL_12:
  a3[2] = v7;
  if (v5 != v6)
  {
    v12 = 0;
    v13 = *(Result + 104);
    v14 = *a3;
    do
    {
      *(v14 + 8 * v12) = *(v13 + 8 * v12);
      ++v12;
    }

    while (v12 < a3[2]);
  }
}

TItnRuleManager *TFormatter::isCustomized(TFormatter *this)
{
  result = *(this + 15);
  if (result)
  {
    return TItnRuleManager::isCustomized(result);
  }

  return result;
}

uint64_t TFormatter::isModified(TFormatter *this)
{
  v1 = *(this + 15);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 80);
  }

  return v1 & 1;
}

void TRegisterable<TIFormatter>::~TRegisterable(void *a1)
{
  TRegisterable<TIFormatter>::~TRegisterable(a1);

  JUMPOUT(0x26672B1B0);
}

void *TRegisterable<TIFormatter>::~TRegisterable(void *a1)
{
  *a1 = &unk_287528270;
  if (a1[1] != -1)
  {
    Registry = TRegisterable<TIFormatter>::getRegistry();
    v3 = *Registry;
    *(Registry[1] + 8 * a1[1] - 8) = 0;
    *Registry = v3 - 1;
  }

  return a1;
}

uint64_t TRegisterable<TIFormatter>::getRegistry()
{
  {
    operator new();
  }

  return TRegisterable<TIFormatter>::getRegistry(void)::s_registry;
}

char *std::vector<TItnControl>::__insert_with_size[abi:ne200100]<std::__wrap_iter<TItnControl const*>,std::__wrap_iter<TItnControl const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 >= 1)
  {
    v6 = __src;
    v8 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3)) >= a5)
    {
      v15 = v8 - __dst;
      if ((0xAAAAAAAAAAAAAAABLL * ((v8 - __dst) >> 3)) >= a5)
      {
        v20 = 3 * a5;
        v21 = &__dst[24 * a5];
        v22 = &v8[-24 * a5];
        v23 = a1[1];
        while (v22 < v8)
        {
          v24 = *v22;
          *(v23 + 16) = *(v22 + 2);
          *v23 = v24;
          v23 += 24;
          v22 += 24;
        }

        a1[1] = v23;
        if (v8 != v21)
        {
          memmove(&__dst[24 * a5], __dst, v8 - v21);
        }

        v29 = 8 * v20;
        v30 = v5;
        v31 = v6;
      }

      else
      {
        v16 = &__src[v15];
        v17 = a1[1];
        v18 = v17;
        while (v16 != a4)
        {
          v19 = *v16;
          *(v18 + 16) = *(v16 + 2);
          *v18 = v19;
          v18 += 24;
          v16 += 24;
          v17 += 24;
        }

        a1[1] = v17;
        if (v15 < 1)
        {
          return v5;
        }

        v25 = &__dst[24 * a5];
        v26 = v17 - 24 * a5;
        v27 = v17;
        while (v26 < v8)
        {
          v28 = *v26;
          *(v27 + 16) = *(v26 + 16);
          *v27 = v28;
          v27 += 24;
          v26 += 24;
        }

        a1[1] = v27;
        if (v18 != v25)
        {
          memmove(&__dst[24 * a5], __dst, v17 - v25);
        }

        v30 = v5;
        v31 = v6;
        v29 = v15;
      }

      memmove(v30, v31, v29);
      return v5;
    }

    v10 = *a1;
    v11 = a5 - 0x5555555555555555 * (&v8[-*a1] >> 3);
    if (v11 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v12 = __dst - v10;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3);
    if (2 * v13 > v11)
    {
      v11 = 2 * v13;
    }

    if (v13 >= 0x555555555555555)
    {
      v14 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v14 = v11;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TItnControl>>(a1, v14);
    }

    v32 = 8 * (v12 >> 3);
    v33 = (v32 + 24 * a5);
    v34 = 24 * a5;
    v35 = v32;
    do
    {
      v36 = *v6;
      *(v35 + 16) = *(v6 + 2);
      *v35 = v36;
      v35 += 24;
      v6 += 24;
      v34 -= 24;
    }

    while (v34);
    memcpy(v33, v5, a1[1] - v5);
    v37 = *a1;
    v38 = &v33[a1[1] - v5];
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v32 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return v32;
  }

  return v5;
}

void *TParamSetter::TParamSetter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  a1[1] = a1 + 4;
  *(a1 + 1) = xmmword_26286B6F0;
  *(a1 + 1056) = 1;
  a1[133] = a4;
  (*(*a2 + 16))(a2, a4, a1 + 1);
  (*(**a1 + 32))(*a1, a4, a3);
  return a1;
}

void sub_2626F37AC(_Unwind_Exception *exception_object)
{
  if (*(v3 + 1056) == 1)
  {
    TParamSetter::TParamSetter(v2, v1);
  }

  _Unwind_Resume(exception_object);
}

void TParamSetter::~TParamSetter(TParamSetter *this)
{
  v2 = *this;
  v3 = *(this + 133);
  v5 = *(this + 2);
  v4 = *(this + 3);
  if (v4 >= v5)
  {
    if (*(this + 1056))
    {
      v9 = 0;
      TBuffer<wchar_t>::insert(this + 8, v4, &v9, 1uLL);
      --*(this + 3);
      v6 = *(this + 1);
    }

    else
    {
      v6 = *(this + 1);
      if (v5)
      {
        *(v6 + 4 * v5 - 4) = 0;
      }
    }
  }

  else
  {
    v6 = *(this + 1);
    *(v6 + 4 * v4) = 0;
  }

  (*(*v2 + 32))(v2, v3, v6);
  if (*(this + 1056) == 1)
  {
    v7 = *(this + 1);
    if (v7 != (this + 32) && v7 != 0)
    {
      MEMORY[0x26672B1B0]();
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TItnWordData>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<TItnWordData>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x6DB6DB6DB6DB6DB7 * ((v4 - v5) >> 4) >= a2)
  {
    if (a2)
    {
      v10 = v5 + 112 * a2;
      v11 = 112 * a2;
      v12 = v5 + 105;
      *&v13 = -1;
      *(&v13 + 1) = -1;
      do
      {
        *(v12 - 17) = v13;
        *(v12 - 33) = v13;
        *(v12 - 49) = v13;
        *(v12 - 65) = v13;
        *(v12 - 105) = 0uLL;
        *(v12 - 89) = 0uLL;
        *(v12 - 73) = 256;
        *(v12 - 1) = 256;
        v12 += 112;
        v11 -= 112;
      }

      while (v11);
    }

    else
    {
      v10 = *(a1 + 8);
    }

    *(a1 + 8) = v10;
  }

  else
  {
    v6 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 4);
    if (v6 + a2 > 0x249249249249249)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 4);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x124924924924924)
    {
      v9 = 0x249249249249249;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TItnWordData>>(a1, v9);
    }

    v14 = 16 * ((v5 - *a1) >> 4);
    v15 = 112 * a2;
    v16 = v14 + 112 * a2;
    v17 = v14 + 105;
    *&v18 = -1;
    *(&v18 + 1) = -1;
    do
    {
      *(v17 - 17) = v18;
      *(v17 - 33) = v18;
      *(v17 - 49) = v18;
      *(v17 - 65) = v18;
      *(v17 - 105) = 0uLL;
      *(v17 - 89) = 0uLL;
      *(v17 - 73) = 256;
      *(v17 - 1) = 256;
      v17 += 112;
      v15 -= 112;
    }

    while (v15);
    v19 = *(a1 + 8) - *a1;
    v20 = v14 - v19;
    memcpy((v14 - v19), *a1, v19);
    v21 = *a1;
    *a1 = v20;
    *(a1 + 8) = v16;
    *(a1 + 16) = 0;
    if (v21)
    {

      operator delete(v21);
    }
  }
}

void *std::vector<TItnStateData>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<TItnStateData>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<TItnStateData>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TItnStateData>>(a1, a2);
  }

  std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TItnStateData>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<TItnStateData>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<TItnStateData>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<TItnStateData>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 72)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

void *std::vector<std::vector<TItnGrammarStateData const*>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<TItnGrammarStateData const*>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::vector<TItnGrammarStateData const*>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<TItnGrammarStateData const*>>>(a1, a2);
  }

  std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<TItnGrammarStateData const*>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::vector<TItnGrammarStateData const*>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<TItnGrammarStateData const*>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<TItnGrammarStateData const*>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t std::vector<TItnControl>::__init_with_size[abi:ne200100]<TItnControl*,TItnControl*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<TItnControl>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2626F3F28(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<TItnControl>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TItnControl>>(a1, a2);
  }

  std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
}

void *std::vector<TItnControl>::__assign_with_size[abi:ne200100]<TItnControl*,TItnControl*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<TItnControl>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void *std::vector<TItnWordData>::__insert_with_size[abi:ne200100]<std::__wrap_iter<TItnWordData const*>,std::__wrap_iter<TItnWordData const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 >= 1)
  {
    v7 = __src;
    v9 = a1[1];
    v10 = a1[2];
    if (0x6DB6DB6DB6DB6DB7 * ((v10 - v9) >> 4) >= a5)
    {
      v16 = v9 - __dst;
      if (0x6DB6DB6DB6DB6DB7 * ((v9 - __dst) >> 4) >= a5)
      {
        v25 = &__dst[112 * a5];
        v26 = &v9[-112 * a5];
        v27 = a1[1];
        while (v26 < v9)
        {
          v28 = *v26;
          v29 = *(v26 + 2);
          v27[1] = *(v26 + 1);
          v27[2] = v29;
          *v27 = v28;
          v30 = *(v26 + 3);
          v31 = *(v26 + 4);
          v32 = *(v26 + 6);
          v27[5] = *(v26 + 5);
          v27[6] = v32;
          v27[3] = v30;
          v27[4] = v31;
          v26 += 112;
          v27 += 7;
        }

        a1[1] = v27;
        if (v9 != v25)
        {
          memmove(v25, __dst, v9 - v25 - 6);
        }

        v41 = 112 * a5 - 6;
      }

      else
      {
        v17 = &__src[v16];
        v18 = a1[1];
        v19 = v18;
        while (v17 != a4)
        {
          v20 = *v17;
          v21 = *(v17 + 2);
          *(v19 + 1) = *(v17 + 1);
          *(v19 + 2) = v21;
          *v19 = v20;
          v22 = *(v17 + 3);
          v23 = *(v17 + 4);
          v24 = *(v17 + 6);
          *(v19 + 5) = *(v17 + 5);
          *(v19 + 6) = v24;
          *(v19 + 3) = v22;
          *(v19 + 4) = v23;
          v17 += 112;
          v19 += 112;
          v18 += 112;
        }

        a1[1] = v18;
        if (v16 < 1)
        {
          return v5;
        }

        v33 = &__dst[112 * a5];
        v34 = &v18[-112 * a5];
        v35 = v18;
        while (v34 < v9)
        {
          v36 = *v34;
          v37 = *(v34 + 2);
          *(v35 + 1) = *(v34 + 1);
          *(v35 + 2) = v37;
          *v35 = v36;
          v38 = *(v34 + 3);
          v39 = *(v34 + 4);
          v40 = *(v34 + 6);
          *(v35 + 5) = *(v34 + 5);
          *(v35 + 6) = v40;
          *(v35 + 3) = v38;
          *(v35 + 4) = v39;
          v34 += 112;
          v35 += 112;
        }

        a1[1] = v35;
        if (v19 != v33)
        {
          memmove(&__dst[112 * a5], __dst, v18 - v33 - 6);
        }

        v41 = v16 - 6;
      }

      memmove(v5, v7, v41);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + 0x6DB6DB6DB6DB6DB7 * (&v9[-*a1] >> 4);
    if (v12 > 0x249249249249249)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = 0x6DB6DB6DB6DB6DB7 * ((v10 - v11) >> 4);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x124924924924924)
    {
      v15 = 0x249249249249249;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TItnWordData>>(a1, v15);
    }

    v42 = 16 * (v13 >> 4);
    v43 = 112 * a5;
    v44 = (v42 + 112 * a5);
    v45 = v42;
    do
    {
      v46 = *v7;
      v47 = v7[2];
      v45[1] = v7[1];
      v45[2] = v47;
      *v45 = v46;
      v48 = v7[3];
      v49 = v7[4];
      v50 = v7[6];
      v45[5] = v7[5];
      v45[6] = v50;
      v45[3] = v48;
      v45[4] = v49;
      v45 += 7;
      v7 += 7;
      v43 -= 112;
    }

    while (v43);
    memcpy(v44, v5, a1[1] - v5);
    v51 = *a1;
    v52 = &v44[a1[1] - v5];
    a1[1] = v5;
    v53 = v5 - v51;
    v54 = (v42 - (v5 - v51));
    memcpy(v54, v51, v53);
    v55 = *a1;
    *a1 = v54;
    a1[1] = v52;
    a1[2] = 0;
    if (v55)
    {
      operator delete(v55);
    }

    return v42;
  }

  return v5;
}

uint64_t std::vector<TItnWordData>::__init_with_size[abi:ne200100]<std::__wrap_iter<TItnWordData*>,std::__wrap_iter<TItnWordData*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<TItnWordData>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2626F442C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<TItnWordData>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TItnWordData>>(a1, a2);
  }

  std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*,false>(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4, int a5)
{
  v8 = result;
LABEL_2:
  v85 = a2 - 1;
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  v86 = a5;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        result = (*a3)(*(a2 - 1), *v9);
        if (result)
        {
          v77 = *v9;
          *v9 = *(a2 - 2);
          *(a2 - 2) = v77;
          v78 = *(v9 + 1);
          *(v9 + 1) = *(a2 - 1);
          *(a2 - 1) = v78;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      v72 = (*a3)(v9[1], *v9);
      result = (*a3)(*(a2 - 1), v9[1]);
      if (v72)
      {
        v74 = v9 + 1;
        v73 = *v9;
        if (result)
        {
          *v9 = *(a2 - 2);
        }

        else
        {
          v82 = v9[1];
          *(v9 + 3) = *(v9 + 1);
          v74 = v9 + 3;
          *(v9 + 2) = v73;
          *v9 = v82;
          result = (*a3)(*(a2 - 1), v9[1]);
          if (!result)
          {
            return result;
          }

          v73 = *(v9 + 2);
          *(v9 + 2) = *(a2 - 2);
        }

        *(a2 - 2) = v73;
      }

      else
      {
        if (!result)
        {
          return result;
        }

        v79 = *(v9 + 2);
        *(v9 + 2) = *(a2 - 2);
        *(a2 - 2) = v79;
        v80 = *(v9 + 3);
        v85 = v9 + 3;
        *(v9 + 3) = *(a2 - 1);
        *(a2 - 1) = v80;
        result = (*a3)(v9[1], *v9);
        if (!result)
        {
          return result;
        }

        v81 = *v9;
        *v9 = *(v9 + 2);
        *(v9 + 2) = v81;
        v74 = v9 + 1;
      }

      v83 = *v74;
      *v74 = *v85;
      *v85 = v83;
      return result;
    }

    if (v12 == 4)
    {
      break;
    }

    if (v12 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*,0>(v9, v9 + 1, v9 + 2, (v9 + 3), a3);
      result = (*a3)(*(a2 - 1), v9[3]);
      if (result)
      {
        v75 = *(v9 + 6);
        *(v9 + 6) = *(a2 - 2);
        *(a2 - 2) = v75;
        v76 = *(v9 + 7);
        *(v9 + 7) = *(a2 - 1);
        *(a2 - 1) = v76;
        result = (*a3)(v9[3], v9[2]);
        if (result)
        {
          *(v9 + 1) = vextq_s8(*(v9 + 1), *(v9 + 1), 8uLL);
          result = (*a3)(v9[2], v9[1]);
          if (result)
          {
            *(v9 + 1) = vextq_s8(*(v9 + 1), *(v9 + 1), 8uLL);
            result = (*a3)(v9[1], *v9);
            if (result)
            {
              *v9 = vextq_s8(*v9, *v9, 8uLL);
            }
          }
        }
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*>(v9, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*>(v9, a2, a3);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*,std::pair<unsigned int,unsigned int>*>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = &v9[v12 >> 1];
    v15 = *a3;
    if (v12 >= 0x81)
    {
      v16 = v15(v14->i64[0], *v8);
      v17 = (*a3)(*(a2 - 1), v14->i64[0]);
      if (v16)
      {
        v19 = v8 + 1;
        v18 = *v8;
        if (v17)
        {
          *v8 = *(a2 - 2);
          goto LABEL_28;
        }

        v32 = *(v8 + 1);
        *v8 = v14->i64[0];
        v14->i32[1] = v32;
        v19 = &v14->i32[1];
        v14->i32[0] = v18;
        if ((*a3)(*(a2 - 1), v14->i64[0]))
        {
          v18 = v14->i32[0];
          v14->i32[0] = *(a2 - 2);
LABEL_28:
          *(a2 - 2) = v18;
          v26 = a2 - 1;
LABEL_29:
          v33 = *v19;
          *v19 = *v26;
          *v26 = v33;
        }
      }

      else if (v17)
      {
        v24 = v14->i32[0];
        v14->i32[0] = *(a2 - 2);
        *(a2 - 2) = v24;
        v26 = &v14->i32[1];
        v25 = v14->i32[1];
        v14->i32[1] = *(a2 - 1);
        *(a2 - 1) = v25;
        if ((*a3)(v14->i64[0], *v8))
        {
          v27 = *v8;
          *v8 = v14->i32[0];
          v19 = v8 + 1;
          v14->i32[0] = v27;
          goto LABEL_29;
        }
      }

      v34 = &v14[-1].i64[1];
      v35 = (*a3)(v14[-1].i64[1], v8[1]);
      v36 = (*a3)(*(a2 - 2), v14[-1].i64[1]);
      if (v35)
      {
        v37 = *(v8 + 2);
        if (v36)
        {
          v38 = v8 + 3;
          *(v8 + 2) = *(a2 - 4);
          goto LABEL_41;
        }

        v44 = *(v8 + 3);
        v8[1] = *v34;
        v14[-1].i32[3] = v44;
        v38 = &v14[-1].i32[3];
        *v34 = v37;
        if ((*a3)(*(a2 - 2), *v34))
        {
          v37 = *v34;
          *v34 = *(a2 - 4);
LABEL_41:
          *(a2 - 4) = v37;
          v41 = a2 - 3;
LABEL_42:
          v45 = *v38;
          *v38 = *v41;
          *v41 = v45;
        }
      }

      else if (v36)
      {
        v39 = *v34;
        *v34 = *(a2 - 4);
        *(a2 - 4) = v39;
        v41 = &v14[-1].i32[3];
        v40 = v14[-1].i32[3];
        v14[-1].i32[3] = *(a2 - 3);
        *(a2 - 3) = v40;
        if ((*a3)(*v34, v8[1]))
        {
          v42 = *(v8 + 2);
          *(v8 + 2) = *v34;
          *v34 = v42;
          v38 = v8 + 3;
          goto LABEL_42;
        }
      }

      v84 = v13;
      v46 = v13 + 1;
      v47 = &v8[v46];
      v48 = (*a3)(*v47, v8[2]);
      v49 = (*a3)(*(a2 - 3), *v47);
      if (v48)
      {
        v50 = *(v8 + 4);
        if (v49)
        {
          v51 = v8 + 5;
          *(v8 + 4) = *(a2 - 6);
          goto LABEL_51;
        }

        v56 = *(v8 + 5);
        v8[2] = *v47;
        *(v47 + 1) = v56;
        v51 = v47 + 1;
        *v47 = v50;
        if ((*a3)(*(a2 - 3), *v47))
        {
          v50 = *v47;
          *v47 = *(a2 - 6);
LABEL_51:
          *(a2 - 6) = v50;
          v54 = a2 - 5;
LABEL_52:
          v57 = *v51;
          *v51 = *v54;
          *v54 = v57;
        }
      }

      else if (v49)
      {
        v52 = *v47;
        *v47 = *(a2 - 6);
        *(a2 - 6) = v52;
        v54 = v47 + 1;
        v53 = *(v47 + 1);
        *(v47 + 1) = *(a2 - 5);
        *(a2 - 5) = v53;
        if ((*a3)(*v47, v8[2]))
        {
          v55 = *(v8 + 4);
          *(v8 + 4) = *v47;
          *v47 = v55;
          v51 = v8 + 5;
          goto LABEL_52;
        }
      }

      v58 = (*a3)(v14->i64[0], *v34);
      v59 = (*a3)(*v47, v14->i64[0]);
      if (v58)
      {
        v60 = *v34;
        if (v59)
        {
          *v34 = *v47;
          *v47 = v60;
          v61 = &v14[-1].i32[3];
          goto LABEL_61;
        }

        v63 = v14->i64[0];
        v14->i32[1] = v14[-1].i32[3];
        v14->i32[0] = v60;
        *v34 = v63;
        if ((*a3)(*v47, v14->i64[0]))
        {
          v64 = v14->i32[0];
          v14->i32[0] = *v47;
          *v47 = v64;
          v61 = &v14->i32[1];
LABEL_61:
          v65 = &v8[v46];
          v66 = *v61;
          *v61 = *(v65 + 1);
          *(v65 + 1) = v66;
        }
      }

      else if (v59)
      {
        *v14 = vextq_s8(*v14, *v14, 8uLL);
        if ((*a3)(v14->i64[0], *v34))
        {
          v62 = *v34;
          *v34 = v14->i32[0];
          v61 = &v14[-1].i32[3];
          v14->i32[0] = v62;
          v46 = v84;
          goto LABEL_61;
        }
      }

      v67 = *v8;
      *v8 = v14->i32[0];
      v23 = v8 + 1;
      v14->i32[0] = v67;
      v31 = &v14->i32[1];
      a5 = v86;
LABEL_63:
      v68 = *v23;
      *v23 = *v31;
      *v31 = v68;
      goto LABEL_64;
    }

    v20 = v15(*v8, v14->i64[0]);
    v21 = (*a3)(*(a2 - 1), *v8);
    if (v20)
    {
      v23 = &v14->i32[1];
      v22 = v14->i32[0];
      if (v21)
      {
        v14->i32[0] = *(a2 - 2);
LABEL_38:
        *(a2 - 2) = v22;
        v31 = a2 - 1;
        goto LABEL_63;
      }

      v43 = v14->i32[1];
      v14->i64[0] = *v8;
      *(v8 + 1) = v43;
      v23 = v8 + 1;
      *v8 = v22;
      if ((*a3)(*(a2 - 1), *v8))
      {
        v22 = *v8;
        *v8 = *(a2 - 2);
        goto LABEL_38;
      }
    }

    else if (v21)
    {
      v28 = *v8;
      *v8 = *(a2 - 2);
      *(a2 - 2) = v28;
      v29 = *(v8 + 1);
      *(v8 + 1) = *(a2 - 1);
      *(a2 - 1) = v29;
      if ((*a3)(*v8, v14->i64[0]))
      {
        v30 = v14->i32[0];
        v14->i32[0] = *v8;
        *v8 = v30;
        v23 = &v14->i32[1];
        v31 = v8 + 1;
        goto LABEL_63;
      }
    }

LABEL_64:
    if ((a5 & 1) == 0 && ((*a3)(*(v8 - 1), *v8) & 1) == 0)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,unsigned int> *,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>)>(v8, a2, a3);
      v9 = result;
      goto LABEL_71;
    }

    v69 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,unsigned int> *,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>)>(v8, a2, a3);
    if ((v70 & 1) == 0)
    {
      goto LABEL_69;
    }

    v71 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*>(v8, v69, a3);
    v9 = v69 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*>(v69 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v69;
      if (v71)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v71)
    {
LABEL_69:
      result = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*,false>(v8, v69, a3, -v11, a5 & 1);
      v9 = v69 + 1;
LABEL_71:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*,0>(v9, v9 + 1, v9 + 2, (a2 - 1), a3);
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*,0>(void *a1, void *a2, void *a3, uint64_t a4, uint64_t (**a5)(void, void))
{
  v10 = (*a5)(*a2, *a1);
  v11 = (*a5)(*a3, *a2);
  if (v10)
  {
    v13 = a1 + 1;
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
LABEL_9:
      *a3 = v12;
      v16 = a3 + 1;
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v12;
    v13 = a2 + 1;
    v18 = *(a1 + 1);
    *(a1 + 1) = *(a2 + 1);
    *(a2 + 1) = v18;
    if ((*a5)(*a3, *a2))
    {
      v12 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v14 = *a2;
    *a2 = *a3;
    *a3 = v14;
    v16 = a2 + 1;
    v15 = *(a2 + 1);
    *(a2 + 1) = *(a3 + 1);
    *(a3 + 1) = v15;
    if ((*a5)(*a2, *a1))
    {
      v17 = *a1;
      *a1 = *a2;
      v13 = a1 + 1;
      *a2 = v17;
LABEL_10:
      v19 = *v13;
      *v13 = *v16;
      *v16 = v19;
    }
  }

  result = (*a5)(*a4, *a3);
  if (result)
  {
    v21 = *a3;
    *a3 = *a4;
    *a4 = v21;
    v22 = *(a3 + 1);
    *(a3 + 1) = *(a4 + 4);
    *(a4 + 4) = v22;
    result = (*a5)(*a3, *a2);
    if (result)
    {
      v23 = *a2;
      *a2 = *a3;
      *a3 = v23;
      v24 = *(a2 + 1);
      *(a2 + 1) = *(a3 + 1);
      *(a3 + 1) = v24;
      result = (*a5)(*a2, *a1);
      if (result)
      {
        v25 = *a1;
        *a1 = *a2;
        *a2 = v25;
        v26 = *(a1 + 1);
        *(a1 + 1) = *(a2 + 1);
        *(a2 + 1) = v26;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*>(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 8);
    if ((result + 8) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v10 = *v8;
        v9 = v8[1];
        v8 = v5;
        result = (*a3)(v9, v10);
        if (result)
        {
          v11 = *v8;
          v12 = HIDWORD(*v8);
          v13 = v7;
          while (1)
          {
            v14 = v4 + v13;
            v15 = *(v4 + v13 + 4);
            *(v14 + 2) = *(v4 + v13);
            *(v14 + 3) = v15;
            if (!v13)
            {
              break;
            }

            result = (*a3)(v11, *(v14 - 1));
            v13 -= 8;
            if ((result & 1) == 0)
            {
              v16 = (v4 + v13 + 8);
              goto LABEL_10;
            }
          }

          v16 = v4;
LABEL_10:
          *v16 = v11;
          v16[1] = v12;
        }

        v5 = v8 + 1;
        v7 += 8;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*>(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 8);
    if ((result + 8) != a2)
    {
      v7 = result + 12;
      do
      {
        v9 = *v4;
        v8 = v4[1];
        v4 = v5;
        result = (*a3)(v8, v9);
        if (result)
        {
          v10 = *v4;
          v11 = v7;
          do
          {
            v12 = v11;
            v13 = *(v11 - 3);
            v14 = *(v11 - 2);
            v11 -= 2;
            *(v12 - 1) = v13;
            *v12 = v14;
            result = (*a3)(v10, *(v12 - 5));
          }

          while ((result & 1) != 0);
          *(v11 - 1) = v10;
        }

        v5 = v4 + 1;
        v7 += 8;
      }

      while (v4 + 1 != a2);
    }
  }

  return result;
}

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,unsigned int> *,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>)>(unint64_t a1, _DWORD *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v4 = a2;
  v6 = *a1;
  if ((*a3)(*a1, *(a2 - 1)))
  {
    v7 = a1;
    do
    {
      v8 = *(v7 + 8);
      v7 += 8;
    }

    while (((*a3)(v6, v8) & 1) == 0);
  }

  else
  {
    v9 = a1 + 8;
    do
    {
      v7 = v9;
      if (v9 >= v4)
      {
        break;
      }

      v9 += 8;
    }

    while (!(*a3)(v6, *v7));
  }

  if (v7 < v4)
  {
    do
    {
      v10 = *(v4 - 1);
      v4 -= 2;
    }

    while (((*a3)(v6, v10) & 1) != 0);
  }

  while (v7 < v4)
  {
    v11 = *v7;
    *v7 = *v4;
    *v4 = v11;
    v12 = *(v7 + 4);
    *(v7 + 4) = v4[1];
    v4[1] = v12;
    do
    {
      v13 = *(v7 + 8);
      v7 += 8;
    }

    while (!(*a3)(v6, v13));
    do
    {
      v14 = *(v4 - 1);
      v4 -= 2;
    }

    while (((*a3)(v6, v14) & 1) != 0);
  }

  if (v7 - 8 != a1)
  {
    *a1 = *(v7 - 8);
    *(a1 + 4) = *(v7 - 4);
  }

  *(v7 - 8) = v6;
  return v7;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,unsigned int> *,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>)>(uint64_t *a1, _DWORD *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v6 = 0;
  v7 = *a1;
  do
  {
    v8 = (*a3)(a1[++v6], v7);
  }

  while ((v8 & 1) != 0);
  v9 = &a1[v6];
  if (v6 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      v11 = *(a2 - 1);
      a2 -= 2;
    }

    while (((*a3)(v11, v7) & 1) == 0);
  }

  else
  {
    do
    {
      v10 = *(a2 - 1);
      a2 -= 2;
    }

    while (!(*a3)(v10, v7));
  }

  v12 = &a1[v6];
  if (v9 < a2)
  {
    v13 = a2;
    do
    {
      v14 = *v12;
      *v12 = *v13;
      *v13 = v14;
      v15 = *(v12 + 4);
      *(v12 + 4) = v13[1];
      v13[1] = v15;
      do
      {
        v16 = *(v12 + 8);
        v12 += 8;
      }

      while (((*a3)(v16, v7) & 1) != 0);
      do
      {
        v17 = *(v13 - 1);
        v13 -= 2;
      }

      while (!(*a3)(v17, v7));
    }

    while (v12 < v13);
  }

  result = v12 - 8;
  if ((v12 - 8) != a1)
  {
    *a1 = *(v12 - 8);
    *(a1 + 1) = *(v12 - 4);
  }

  *(v12 - 8) = v7;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*>(void *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v11 = (*a3)(a1[1], *a1);
      v12 = (*a3)(*(a2 - 1), a1[1]);
      if (v11)
      {
        v14 = a1 + 1;
        v13 = *a1;
        if (v12)
        {
          *a1 = *(a2 - 2);
        }

        else
        {
          v26 = a1[1];
          *(a1 + 3) = *(a1 + 1);
          v14 = a1 + 3;
          *(a1 + 2) = v13;
          *a1 = v26;
          if (!(*a3)(*(a2 - 1), a1[1]))
          {
            return 1;
          }

          v13 = *(a1 + 2);
          *(a1 + 2) = *(a2 - 2);
        }

        *(a2 - 2) = v13;
        v22 = a2 - 1;
      }

      else
      {
        if (!v12)
        {
          return 1;
        }

        v20 = *(a1 + 2);
        *(a1 + 2) = *(a2 - 2);
        *(a2 - 2) = v20;
        v22 = a1 + 3;
        v21 = *(a1 + 3);
        *(a1 + 3) = *(a2 - 1);
        *(a2 - 1) = v21;
        if (!(*a3)(a1[1], *a1))
        {
          return 1;
        }

        v23 = *a1;
        *a1 = *(a1 + 2);
        *(a1 + 2) = v23;
        v14 = a1 + 1;
      }

      v27 = *v14;
      *v14 = *v22;
      *v22 = v27;
      return 1;
    }

    if (v6 != 4)
    {
      if (v6 == 5)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*,0>(a1, a1 + 1, a1 + 2, (a1 + 3), a3);
        if ((*a3)(*(a2 - 1), a1[3]))
        {
          v9 = *(a1 + 6);
          *(a1 + 6) = *(a2 - 2);
          *(a2 - 2) = v9;
          v10 = *(a1 + 7);
          *(a1 + 7) = *(a2 - 1);
          *(a2 - 1) = v10;
          if ((*a3)(a1[3], a1[2]))
          {
            *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
            if ((*a3)(a1[2], a1[1]))
            {
              *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
              if ((*a3)(a1[1], *a1))
              {
                *a1 = vextq_s8(*a1, *a1, 8uLL);
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*,0>(a1, a1 + 1, a1 + 2, (a2 - 1), a3);
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(*(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v7;
      v8 = *(a1 + 1);
      *(a1 + 1) = *(a2 - 1);
      *(a2 - 1) = v8;
    }

    return 1;
  }

LABEL_17:
  v15 = (*a3)(a1[1], *a1);
  v16 = a1 + 2;
  v17 = (*a3)(a1[2], a1[1]);
  if (v15)
  {
    v19 = a1 + 1;
    v18 = *a1;
    if (v17)
    {
      *a1 = *(a1 + 4);
    }

    else
    {
      v28 = a1[1];
      *(a1 + 3) = *(a1 + 1);
      v19 = a1 + 3;
      *(a1 + 2) = v18;
      *a1 = v28;
      if (!(*a3)(a1[2], a1[1]))
      {
        goto LABEL_35;
      }

      v18 = *(a1 + 2);
      *(a1 + 2) = *(a1 + 4);
    }

    *(a1 + 4) = v18;
    v24 = a1 + 5;
    goto LABEL_34;
  }

  if (v17)
  {
    *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
    if ((*a3)(a1[1], *a1))
    {
      v24 = a1 + 3;
      v25 = *a1;
      *a1 = *(a1 + 2);
      *(a1 + 2) = v25;
      v19 = a1 + 1;
LABEL_34:
      v29 = *v19;
      *v19 = *v24;
      *v24 = v29;
    }
  }

LABEL_35:
  v30 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    if ((*a3)(*v30, *v16))
    {
      v33 = *v30;
      v34 = HIDWORD(*v30);
      v35 = v31;
      while (1)
      {
        v36 = a1 + v35;
        v37 = *(a1 + v35 + 20);
        *(v36 + 6) = *(a1 + v35 + 16);
        *(v36 + 7) = v37;
        if (v35 == -16)
        {
          break;
        }

        v35 -= 8;
        if (((*a3)(v33, *(v36 + 1)) & 1) == 0)
        {
          v38 = (a1 + v35 + 24);
          goto LABEL_43;
        }
      }

      v38 = a1;
LABEL_43:
      *v38 = v33;
      v38[1] = v34;
      if (++v32 == 8)
      {
        return v30 + 1 == a2;
      }
    }

    v16 = v30;
    v31 += 8;
    if (++v30 == a2)
    {
      return 1;
    }
  }
}

void *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*,std::pair<unsigned int,unsigned int>*>(void *a1, void *a2, void *a3, uint64_t (**a4)(void, uint64_t))
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if ((*a4)(*v12, *a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          v14 = *(v12 + 1);
          *(v12 + 1) = *(a1 + 1);
          *(a1 + 1) = v14;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v15 = a2 - 1;
      do
      {
        v17 = *a1;
        v16 = *(a1 + 1);
        v18 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*>(a1, a4, v8);
        if (v15 == v18)
        {
          *v18 = v17;
          v18[1] = v16;
        }

        else
        {
          *v18 = *v15;
          v18[1] = v15[1];
          *v15 = v17;
          v15[1] = v16;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*>(a1, (v18 + 2), a4, ((v18 + 2) - a1) >> 3);
        }

        v15 -= 2;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*>(uint64_t result, unsigned int (**a2)(void, void), uint64_t a3, void *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 3)
    {
      v10 = (a4 - result) >> 2;
      v11 = v10 + 1;
      v12 = (result + 8 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*a2)(*v12, v12[1]))
      {
        ++v12;
        v11 = v13;
      }

      result = (*a2)(*v12, *v5);
      if ((result & 1) == 0)
      {
        v14 = *v5;
        v18 = HIDWORD(*v5);
        do
        {
          v15 = v5;
          v5 = v12;
          *v15 = *v12;
          v15[1] = *(v12 + 1);
          if (v7 < v11)
          {
            break;
          }

          v16 = (2 * v11) | 1;
          v12 = (v6 + 8 * v16);
          v17 = 2 * v11 + 2;
          if (v17 < a3)
          {
            if ((*a2)(*v12, v12[1]))
            {
              ++v12;
              v16 = v17;
            }
          }

          result = (*a2)(*v12, v14);
          v11 = v16;
        }

        while (!result);
        *v5 = v14;
        *(v5 + 1) = v18;
      }
    }
  }

  return result;
}

_DWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*>(_DWORD *a1, unsigned int (**a2)(void, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[2 * v6];
    v9 = v8 + 2;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 >= a3)
    {
      v6 = (2 * v6) | 1;
    }

    else
    {
      v13 = *(v8 + 2);
      v12 = v8 + 4;
      if ((*a2)(*(v12 - 1), v13))
      {
        v9 = v12;
        v6 = v11;
      }

      else
      {
        v6 = v10;
      }
    }

    *a1 = *v9;
    a1[1] = v9[1];
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned int,unsigned int>,std::pair<unsigned int,unsigned int>),std::pair<unsigned int,unsigned int>*>(uint64_t result, uint64_t a2, uint64_t (**a3)(void, uint64_t), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 8 * (v4 >> 1));
    v9 = (a2 - 8);
    result = (*a3)(*v8, *(a2 - 8));
    if (result)
    {
      v10 = *v9;
      v11 = HIDWORD(*v9);
      do
      {
        v12 = v9;
        v9 = v8;
        *v12 = *v8;
        v12[1] = *(v8 + 1);
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 8 * v7);
        result = (*a3)(*v8, v10);
      }

      while ((result & 1) != 0);
      *v9 = v10;
      v9[1] = v11;
    }
  }

  return result;
}

char *std::vector<TPItnResultHandle_fake **>::__insert_with_size[abi:ne200100]<TPItnResultHandle_fake ** const*,TPItnResultHandle_fake ** const*>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 3);
    if (v12 >> 61)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TPItnTagHandle_fake **>>(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = (v10 - __dst) >> 3;
  if (v17 >= a5)
  {
    v22 = &__dst[8 * a5];
    v23 = &v10[-8 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 8;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v22);
    }

    v30 = 8 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 8;
    *v20 = v21;
    v20 += 8;
    v19 += 8;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[8 * a5];
    v27 = &v19[-8 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 8;
      *v28 = v29;
      v28 += 8;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[8 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,TWord const*>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,false>(uint64_t result, int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      break;
    }

    switch(v12)
    {
      case 3uLL:

        return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,0>(v9, (v9 + 16), a2 - 4);
      case 4uLL:
        result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,0>(v9, (v9 + 16), (v9 + 32));
        v25 = *(a2 - 4);
        v26 = *(v9 + 32);
        if (v25 >= v26)
        {
          if (v26 < v25)
          {
            return result;
          }

          v28 = *(a2 - 1);
          v27 = *(v9 + 40);
          if (v28 >= v27)
          {
            return result;
          }
        }

        else
        {
          v27 = *(v9 + 40);
          v28 = *(a2 - 1);
        }

        *(v9 + 32) = v25;
        *(a2 - 4) = v26;
        *(v9 + 40) = v28;
        *(a2 - 1) = v27;
        v29 = *(v9 + 32);
        v30 = *(v9 + 16);
        if (v29 >= v30)
        {
          if (v30 < v29)
          {
            return result;
          }

          v32 = *(v9 + 40);
          v31 = *(v9 + 24);
          if (v32 >= v31)
          {
            return result;
          }
        }

        else
        {
          v31 = *(v9 + 24);
          v32 = *(v9 + 40);
        }

        *(v9 + 16) = v29;
        *(v9 + 32) = v30;
        *(v9 + 24) = v32;
        *(v9 + 40) = v31;
        v33 = *v9;
        if (v29 >= *v9)
        {
          if (v33 < v29)
          {
            return result;
          }

          v34 = *(v9 + 8);
          if (v32 >= v34)
          {
            return result;
          }
        }

        else
        {
          v34 = *(v9 + 8);
        }

        *v9 = v29;
        *(v9 + 16) = v33;
        *(v9 + 8) = v32;
        *(v9 + 24) = v34;
        return result;
      case 5uLL:

        return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,0>(v9, v9 + 16, v9 + 32, v9 + 48, a2 - 4);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *>(v9, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *>(v9, a2);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,std::pair<int,TWord const*> *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = v9 + 16 * (v12 >> 1);
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,0>((v9 + 16 * (v12 >> 1)), v9, a2 - 4);
      if (a5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,0>(v9, (v9 + 16 * (v12 >> 1)), a2 - 4);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,0>((v9 + 16), (v14 - 16), a2 - 8);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,0>((v9 + 32), (v9 + 16 + 16 * v13), a2 - 12);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,0>((v14 - 16), v14, (v9 + 16 + 16 * v13));
      v15 = *v9;
      *v9 = *v14;
      *v14 = v15;
      v16 = *(v9 + 8);
      *(v9 + 8) = *(v14 + 8);
      *(v14 + 8) = v16;
      if (a5)
      {
        goto LABEL_20;
      }
    }

    v17 = *(v9 - 16);
    if (v17 >= *v9 && (*v9 < v17 || *(v9 - 8) >= *(v9 + 8)))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,TWord const*> *,std::__less<void,void> &>(v9, a2);
      v9 = result;
      goto LABEL_25;
    }

LABEL_20:
    v18 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,TWord const*> *,std::__less<void,void> &>(v9, a2);
    if ((v19 & 1) == 0)
    {
      goto LABEL_23;
    }

    v20 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *>(v9, v18);
    v9 = v18 + 16;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *>(v18 + 16, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v18;
      if (v20)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v20)
    {
LABEL_23:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,false>(v8, v18, a3, -v11, a5 & 1);
      v9 = v18 + 16;
LABEL_25:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if (v12 < 2)
  {
    return result;
  }

  if (v12 != 2)
  {
    goto LABEL_11;
  }

  v21 = *(a2 - 4);
  v22 = *v9;
  if (v21 < *v9)
  {
    v23 = *(v9 + 8);
    v24 = *(a2 - 1);
LABEL_30:
    *v9 = v21;
    *(a2 - 4) = v22;
    *(v9 + 8) = v24;
    *(a2 - 1) = v23;
    return result;
  }

  if (v22 >= v21)
  {
    v24 = *(a2 - 1);
    v23 = *(v9 + 8);
    if (v24 < v23)
    {
      goto LABEL_30;
    }
  }

  return result;
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,0>(int *a1, int *a2, int *a3)
{
  v3 = *a2;
  v4 = *a1;
  if (*a2 < *a1 || v4 >= v3 && *(a2 + 1) < *(a1 + 1))
  {
    v5 = *a3;
    if (*a3 < v3)
    {
      v6 = *(a3 + 1);
LABEL_4:
      *a1 = v5;
      *a3 = v4;
      v7 = *(a1 + 1);
      *(a1 + 1) = v6;
      *(a3 + 1) = v7;
      return 1;
    }

    if (v3 >= v5)
    {
      v6 = *(a3 + 1);
      v16 = *(a2 + 1);
      if (v6 < v16)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v16 = *(a2 + 1);
    }

    *a1 = v3;
    *a2 = v4;
    v17 = *(a1 + 1);
    *(a1 + 1) = v16;
    *(a2 + 1) = v17;
    v18 = *a3;
    if (*a3 >= v4)
    {
      if (v4 < v18)
      {
        return 1;
      }

      v19 = *(a3 + 1);
      if (v19 >= v17)
      {
        return 1;
      }
    }

    else
    {
      v19 = *(a3 + 1);
    }

    *a2 = v18;
    *a3 = v4;
    *(a2 + 1) = v19;
    result = 1;
    *(a3 + 1) = v17;
    return result;
  }

  v9 = *a3;
  if (*a3 < v3)
  {
    v10 = *(a2 + 1);
    v11 = *(a3 + 1);
LABEL_10:
    *a2 = v9;
    *a3 = v3;
    *(a2 + 1) = v11;
    *(a3 + 1) = v10;
    v12 = *a2;
    v13 = *a1;
    if (*a2 < *a1)
    {
      v14 = *(a1 + 1);
      v15 = *(a2 + 1);
LABEL_12:
      *a1 = v12;
      *a2 = v13;
      *(a1 + 1) = v15;
      result = 1;
      *(a2 + 1) = v14;
      return result;
    }

    if (v13 >= v12)
    {
      v15 = *(a2 + 1);
      v14 = *(a1 + 1);
      if (v15 < v14)
      {
        goto LABEL_12;
      }
    }

    return 1;
  }

  if (v3 >= v9)
  {
    v11 = *(a3 + 1);
    v10 = *(a2 + 1);
    if (v11 < v10)
    {
      goto LABEL_10;
    }
  }

  return 0;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,0>(a1, a2, a3);
  v11 = *a4;
  v12 = *a3;
  if (*a4 >= *a3)
  {
    if (v12 < v11)
    {
      goto LABEL_16;
    }

    v14 = *(a4 + 8);
    v13 = *(a3 + 8);
    if (v14 >= v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = *(a3 + 8);
    v14 = *(a4 + 8);
  }

  *a3 = v11;
  *a4 = v12;
  *(a3 + 8) = v14;
  *(a4 + 8) = v13;
  v15 = *a3;
  v16 = *a2;
  if (*a3 >= *a2)
  {
    if (v16 < v15)
    {
      goto LABEL_16;
    }

    v18 = *(a3 + 8);
    v17 = *(a2 + 8);
    if (v18 >= v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = *(a2 + 8);
    v18 = *(a3 + 8);
  }

  *a2 = v15;
  *a3 = v16;
  *(a2 + 8) = v18;
  *(a3 + 8) = v17;
  v19 = *a2;
  v20 = *a1;
  if (*a2 < *a1)
  {
    v21 = *(a1 + 8);
    v22 = *(a2 + 8);
LABEL_7:
    *a1 = v19;
    *a2 = v20;
    *(a1 + 8) = v22;
    *(a2 + 8) = v21;
    goto LABEL_16;
  }

  if (v20 >= v19)
  {
    v22 = *(a2 + 8);
    v21 = *(a1 + 8);
    if (v22 < v21)
    {
      goto LABEL_7;
    }
  }

LABEL_16:
  v23 = *a5;
  v24 = *a4;
  if (*a5 >= *a4)
  {
    if (v24 < v23)
    {
      return result;
    }

    v26 = *(a5 + 1);
    v25 = *(a4 + 8);
    if (v26 >= v25)
    {
      return result;
    }
  }

  else
  {
    v25 = *(a4 + 8);
    v26 = *(a5 + 1);
  }

  *a4 = v23;
  *a5 = v24;
  *(a4 + 8) = v26;
  *(a5 + 1) = v25;
  v27 = *a4;
  v28 = *a3;
  if (*a4 >= *a3)
  {
    if (v28 < v27)
    {
      return result;
    }

    v30 = *(a4 + 8);
    v29 = *(a3 + 8);
    if (v30 >= v29)
    {
      return result;
    }
  }

  else
  {
    v29 = *(a3 + 8);
    v30 = *(a4 + 8);
  }

  *a3 = v27;
  *a4 = v28;
  *(a3 + 8) = v30;
  *(a4 + 8) = v29;
  v31 = *a3;
  v32 = *a2;
  if (*a3 >= *a2)
  {
    if (v32 < v31)
    {
      return result;
    }

    v34 = *(a3 + 8);
    v33 = *(a2 + 8);
    if (v34 >= v33)
    {
      return result;
    }
  }

  else
  {
    v33 = *(a2 + 8);
    v34 = *(a3 + 8);
  }

  *a2 = v31;
  *a3 = v32;
  *(a2 + 8) = v34;
  *(a3 + 8) = v33;
  v35 = *a2;
  v36 = *a1;
  if (*a2 < *a1)
  {
    v37 = *(a1 + 8);
    v38 = *(a2 + 8);
LABEL_24:
    *a1 = v35;
    *a2 = v36;
    *(a1 + 8) = v38;
    *(a2 + 8) = v37;
    return result;
  }

  if (v36 >= v35)
  {
    v38 = *(a2 + 8);
    v37 = *(a1 + 8);
    if (v38 < v37)
    {
      goto LABEL_24;
    }
  }

  return result;
}

int *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *>(int *result, int *a2)
{
  if (result == a2)
  {
    return result;
  }

  v2 = result + 4;
  if (result + 4 == a2)
  {
    return result;
  }

  v3 = 0;
  v4 = result;
  do
  {
    v5 = v4;
    v4 = v2;
    v6 = v5[4];
    v7 = *v5;
    if (v6 >= *v5)
    {
      if (v7 < v6)
      {
        goto LABEL_19;
      }

      v8 = *(v5 + 3);
      v9 = *(v5 + 1);
      if (v8 >= v9)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v8 = *(v5 + 3);
      v9 = *(v5 + 1);
    }

    v5[4] = v7;
    *(v4 + 1) = v9;
    v10 = result;
    if (v5 == result)
    {
      goto LABEL_18;
    }

    v11 = v3;
    while (1)
    {
      v12 = *(result + v11 - 16);
      if (v6 >= v12)
      {
        break;
      }

      v13 = *(result + v11 - 8);
LABEL_12:
      v5 -= 4;
      v14 = result + v11;
      *v14 = v12;
      *(v14 + 8) = v13;
      v11 -= 16;
      if (!v11)
      {
        v10 = result;
        goto LABEL_18;
      }
    }

    if (v12 >= v6)
    {
      v10 = (result + v11);
      v13 = *(result + v11 - 8);
      if (v8 >= v13)
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    }

    v10 = v5;
LABEL_18:
    *v10 = v6;
    *(v10 + 1) = v8;
LABEL_19:
    v2 = v4 + 4;
    v3 += 16;
  }

  while (v4 + 4 != a2);
  return result;
}

int *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *>(int *result, int *a2)
{
  if (result != a2)
  {
    v2 = result + 4;
    if (result + 4 != a2)
    {
      for (i = result + 2; ; i += 4)
      {
        v4 = result;
        result = v2;
        v5 = v4[4];
        v6 = *v4;
        if (v5 < *v4)
        {
          break;
        }

        if (v6 >= v5)
        {
          v7 = *(v4 + 3);
          if (v7 < *(v4 + 1))
          {
            goto LABEL_6;
          }
        }

LABEL_14:
        v2 = result + 4;
        if (result + 4 == a2)
        {
          return result;
        }
      }

      v7 = *(v4 + 3);
LABEL_6:
      for (j = i; ; j -= 4)
      {
        j[2] = v6;
        *(j + 2) = *j;
        v6 = *(j - 6);
        if (v5 >= v6 && (v6 < v5 || v7 >= *(j - 2)))
        {
          break;
        }
      }

      *(j - 2) = v5;
      *j = v7;
      goto LABEL_14;
    }
  }

  return result;
}