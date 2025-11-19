uint64_t ThreadedFrameTransformer::maybeStartTransforming(uint64_t a1, uint64_t a2)
{
  isScoring = FrameTransformerThread::isScoring(*(a1 + 8));
  v12 = *(a1 + 8);
  if ((isScoring & 1) == 0 && (**(*(v12 + 56) + 272) & 1) == 0)
  {
    *(v12 + 1656) = a2;
    DgnThreadClient::play(v12, v5, v6, v7, v8, v9, v10, v11);
    *(v12 + 1616) = 1;
    *(v12 + 1656) = 0;
    v12 = *(a1 + 8);
  }

  return FrameTransformerThread::isScoring(v12);
}

uint64_t FrameTransformerThread::isScoring(FrameTransformerThread *this)
{
  if (*(this + 1616) != 1)
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

unint64_t ThreadedFrameTransformer::maybeStopTransforming(uint64_t a1, int a2, unint64_t a3)
{
  result = FrameTransformerThread::isScoring(*(a1 + 8));
  if (result)
  {
    if (!a2 || (result = DgnThreadClient::getThreadState(*(a1 + 8)), result == 4))
    {
      v13 = *(a1 + 8);

      return FrameTransformerThread::stopScoring(v13, a3, v7, v8, v9, v10, v11, v12);
    }
  }

  return result;
}

void *FrameTransformer::makeFrameTransformer(uint64_t a1, NeuralNet *a2, uint64_t a3, uint64_t a4, const PelMgr *a5, int a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  if (a6)
  {
    v20 = MemChunkAlloc(0x10uLL, 0);
    return ThreadedFrameTransformer::ThreadedFrameTransformer(v20, a6, a1, a2, a3, a4, a5, a7, a9, a10, a8);
  }

  else
  {
    v22 = MemChunkAlloc(0xF0uLL, 0);
    return SimpleFrameTransformer::SimpleFrameTransformer(v22, a1, a2, a3, a4, a5, a7, a8, a9, a10);
  }
}

void SimpleFrameTransformer::beginTransSyncRecog(SimpleFrameTransformer *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    PelScorer::beginFmpePelSyncRecog(v1);
  }
}

void SimpleFrameTransformer::endTransSyncRecog(SimpleFrameTransformer *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    PelScorer::endFmpePelSyncRecog(v1);
  }
}

void FrameTransformerThread::~FrameTransformerThread(FrameTransformerThread *this)
{
  DgnThreadClient::~DgnThreadClient(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t *DgnThread<FrameTransformerThreadWorker>::newWorker(uint64_t a1)
{
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v4, *(a1 + 16));
  v2 = MemChunkAlloc(0x130uLL, *(a1 + 16));
  DgnThreadWorker::DgnThreadWorker(v2, *(a1 + 12), a1, *(a1 + 16), *(a1 + 28));
  *v2 = &unk_287524780;
  *(v2 + 64) = -16;
  v2[37] = 0;
  *(v2 + 33) = 0u;
  *(v2 + 35) = 0u;
  Latch<MemChunkRegion,LatchAdapter>::~Latch(&v4);
  return v2;
}

void sub_2626B82A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

uint64_t DgnThread<FrameTransformerThreadWorker>::DgnThread(uint64_t a1, int a2, uint64_t a3, char *a4)
{
  v5 = DgnThreadClient::DgnThreadClient(a1, a2, a3, a4);
  *v5 = &unk_287523228;
  *(a1 + 56) = DgnThread<FrameTransformerThreadWorker>::newWorker(v5);
  return a1;
}

void DgnThread<FrameTransformerThreadWorker>::~DgnThread(DgnThreadClient *a1)
{
  DgnThreadClient::~DgnThreadClient(a1);

  JUMPOUT(0x26672B1B0);
}

uint64_t *Latch<MemChunkRegion,LatchAdapter>::~Latch(uint64_t *a1)
{
  v2 = *a1;
  if (!*a1)
  {
    return a1;
  }

  if (MemChunkRegion::smTlsID == -1)
  {
    v4 = &gGlobalMemChunkRegion;
    goto LABEL_8;
  }

  v3 = pthread_getspecific(MemChunkRegion::smTlsID);
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = *v3;
  if (!*v3)
  {
    pthread_setspecific(MemChunkRegion::smTlsID, 0);
LABEL_6:
    v4 = &gGlobalMemChunkRegion;
  }

LABEL_8:
  if (v4 != v2)
  {
    if (v2 == &gGlobalMemChunkRegion)
    {
      pthread_setspecific(MemChunkRegion::smTlsID, 0);
    }

    else
    {
      *(v2 + 1288) = v2;
      pthread_setspecific(MemChunkRegion::smTlsID, (v2 + 1288));
    }
  }

  *a1 = 0;
  return a1;
}

uint64_t MovingArrayWindow<DgnPrimArray<unsigned char>,DgnArray<DgnPrimArray<unsigned char>>>::~MovingArrayWindow(uint64_t a1)
{
  *(a1 + 16) = 0;
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(a1);
  return a1;
}

uint64_t MovingArrayWindow<DgnPrimArray<double>,DgnArray<DgnPrimArray<double>>>::~MovingArrayWindow(uint64_t a1)
{
  *(a1 + 16) = 0;
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(a1);
  return a1;
}

uint64_t SynchronizedArray<DgnPrimArray<unsigned char>>::SynchronizedArray(uint64_t a1)
{
  *(a1 + 4) = -16;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  SynchronizedArray<DgnPrimArray<unsigned char>>::reset(a1);
  return a1;
}

uint64_t *TResultRelativePosition::TResultRelativePosition(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5 == -1)
  {
    result[1] = 0;
    result[2] = 0;
    *result = (a4 - a3) >> 3;
  }

  else
  {
    result[1] = 0;
    result[2] = a5;
    v5 = 0;
    if (a4 != a3)
    {
      v6 = (a4 - a3) >> 3;
      if (v6 <= 1)
      {
        v6 = 1;
      }

      while (a5)
      {
        v7 = *(*(a2 + 40) + 8 * *(a3 + 8 * v5) - 8);
        v8 = v7[3];
        v9 = a5 >= v8;
        v10 = a5 - v8;
        if (!v9)
        {
          v11 = v7[13];
          v12 = v7[14];
          *result = v5;
          result[1] = 0;
          if (v12 != v11)
          {
            v13 = 0;
            v14 = (v12 - v11) >> 3;
            do
            {
              if (!a5)
              {
                break;
              }

              v15 = *(v11 + 8 * v13);
              v9 = a5 >= v15;
              a5 -= v15;
              if (!v9)
              {
                break;
              }

              v13 += 2;
              result[1] = v13;
              result[2] = a5;
            }

            while (v13 < v14);
          }

          return result;
        }

        result[2] = v10;
        ++v5;
        a5 = v10;
        if (v6 == v5)
        {
          v5 = v6;
          break;
        }
      }
    }

    *result = v5;
  }

  return result;
}

void TResult::TResult(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  *(a1 + 32) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = a6;
  *(a1 + 1) = a7;
  *(a1 + 8) = a5;
  *(a1 + 16) = 0;
  v12 = a1 + 32;
  std::vector<std::wstring>::reserve((a1 + 32), (a3[1] - *a3) >> 3);
  v10 = *a3;
  if (a3[1] != *a3)
  {
    v11 = 0;
    do
    {
      std::wstring::basic_string[abi:ne200100]<0>(__p, *(v10 + 8 * v11));
      std::vector<std::wstring>::push_back[abi:ne200100](v12, __p);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }

      ++v11;
      v10 = *a3;
    }

    while (v11 < (a3[1] - *a3) >> 3);
  }

  TResult::setText(a1, a2);
}

void sub_2626B88A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void **a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  MEMORY[0x26672B1B0](a9, 0x1070C40ADD13FEBLL);
  v20 = v18[13];
  if (v20)
  {
    v18[14] = v20;
    operator delete(v20);
  }

  v21 = *a12;
  if (*a12)
  {
    v18[11] = v21;
    operator delete(v21);
  }

  v22 = v18[7];
  if (v22)
  {
    v18[8] = v22;
    operator delete(v22);
  }

  __p = a11;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void std::vector<std::wstring>::reserve(std::vector<std::wstring> *this, std::vector<std::wstring>::size_type __n)
{
  if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 3) < __n)
  {
    if (__n < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = this->__end_ - this->__begin_;
      v3.__end_cap_.__value_ = this;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::wstring>>(this, __n);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }
}

void TResult::setText(uint64_t a1, char *__s)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x26672B190](v3, 0x1000C8077774924);
  }

  strlen(__s);
  operator new[]();
}

void *std::vector<TItnControlState>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 6)
  {
    if (!(a2 >> 58))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<TItnControlState>>(result, a2);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<TItnControlState>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v10 = (v4 - *a1) >> 6;
    v11 = v10 + 1;
    if ((v10 + 1) >> 58)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v12 = v5 - *a1;
    if (v12 >> 5 > v11)
    {
      v11 = v12 >> 5;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFC0)
    {
      v13 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TItnControlState>>(a1, v13);
    }

    v14 = (v10 << 6);
    v15 = *a2;
    v16 = a2[1];
    v17 = a2[3];
    v14[2] = a2[2];
    v14[3] = v17;
    *v14 = v15;
    v14[1] = v16;
    v9 = (v10 << 6) + 64;
    v18 = *(a1 + 8) - *a1;
    v19 = v14 - v18;
    memcpy(v14 - v18, *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[3];
    v4[2] = a2[2];
    v4[3] = v8;
    *v4 = v6;
    v4[1] = v7;
    v9 = (v4 + 4);
  }

  *(a1 + 8) = v9;
}

void TResult::TResult(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  v26 = a4;
  *(a1 + 32) = 0u;
  v23 = (a1 + 32);
  *(a1 + 1) = a8;
  if (a9)
  {
    v13 = 3;
  }

  else
  {
    v13 = 1;
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = v13 * a4;
  *(a1 + 80) = 0uLL;
  v22 = (a1 + 80);
  *a1 = 0;
  *(a1 + 48) = 0uLL;
  *(a1 + 64) = 0uLL;
  *(a1 + 96) = 0uLL;
  *(a1 + 112) = 0uLL;
  *(a1 + 8) = a6;
  v14 = a4 != 0;
  if (a2)
  {
    v15 = a2 == a3;
  }

  else
  {
    v15 = 1;
  }

  v16 = 0;
  if (!v15)
  {
    v17 = a2;
    do
    {
      v18 = (v17 + 72);
      if (*(v17 + 95) < 0)
      {
        v18 = *v18;
      }

      *(a1 + 24) += (TLocaleInfo::unicodeToMultiByte(*(a1 + 8) + 240, v18, 0, 0) - 1) + *(v17 + 224) * v13;
      v19 = *(v17 + 16);
      if (v19 != -1)
      {
        ++v14;
      }

      v17 = *(v17 + 144);
      if (!v17 || v17 == a3)
      {
        v16 = v19 - *(a2 + 8);
      }
    }

    while (v17 && v17 != a3);
  }

  std::vector<std::wstring>::reserve(v23, v16);
  std::vector<TItnControlState>::reserve((a1 + 56), v16 + 1);
  std::vector<unsigned long>::reserve(v22, v16);
  if (v16)
  {
    v20 = 0;
    do
    {
      std::wstring::basic_string[abi:ne200100]<0>(__p, **(*a5 + 112 * *(a2 + 8) + v20 + 16));
      std::vector<std::wstring>::push_back[abi:ne200100](v23, __p);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }

      __p[0] = *(*a5 + 112 * *(a2 + 8) + v20 + 24);
      std::vector<unsigned long>::push_back[abi:ne200100](v22, __p);
      v20 += 112;
      --v16;
    }

    while (v16);
  }

  v21 = *(a1 + 24);
  operator new[]();
}

void sub_2626B9054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  v20 = v18[13];
  if (v20)
  {
    v18[14] = v20;
    operator delete(v20);
  }

  v21 = *a11;
  if (*a11)
  {
    v18[11] = v21;
    operator delete(v21);
  }

  v22 = v18[7];
  if (v22)
  {
    v18[8] = v22;
    operator delete(v22);
  }

  __p = a12;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void *std::vector<unsigned long>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(result, a2);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void TResult::TResult(TResult *this, const TResult *a2, const TResult *a3)
{
  *(this + 2) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  if (*a2)
  {
    v3 = 1;
  }

  else
  {
    v3 = *a3;
  }

  *this = v3 & 1;
  *(this + 1) = *(a2 + 1);
  *(this + 1) = *(a2 + 1);
  *(this + 3) = *(a3 + 3) + *(a2 + 3);
  operator new[]();
}

void sub_2626B940C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v14 = *(v10 + 72);
  if (v14)
  {
    v11[14] = v14;
    operator delete(v14);
  }

  v15 = *v12;
  if (*v12)
  {
    v11[11] = v15;
    operator delete(v15);
  }

  v16 = *(v10 + 24);
  if (v16)
  {
    v11[8] = v16;
    operator delete(v16);
  }

  a10 = v10;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void TResult::TResult(TResult *this, const TResult *a2, unint64_t a3, unint64_t a4)
{
  *(this + 2) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *this = *a2;
  v4 = *(a2 + 1);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = v4;
  v5 = *(a2 + 13);
  if ((*(a2 + 14) - v5) >> 3 >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = (*(a2 + 14) - v5) >> 3;
  }

  if (a3)
  {
    v7 = 0;
    v8 = 0;
    for (i = 0; i < a3; i += 2)
    {
      v10 = (v5 + 8 * i);
      v7 += *v10;
      v8 += v10[1];
    }
  }

  if (v6 > a3)
  {
    v11 = 0;
    v12 = 0;
    v13 = a3;
    do
    {
      v14 = (v5 + 8 * v13);
      v11 += *v14;
      v12 += v14[1];
      v13 += 2;
    }

    while (v13 < v6);
  }

  operator new[]();
}

void sub_2626B96B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = v2[13];
  if (v5)
  {
    v2[14] = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    v2[11] = v6;
    operator delete(v6);
  }

  v7 = v2[7];
  if (v7)
  {
    v2[8] = v7;
    operator delete(v7);
  }

  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void TResult::TResult(TResult *this, const char *__s1, unint64_t a3, TLexicon *a4, uint64_t a5)
{
  v140 = *MEMORY[0x277D85DE8];
  *(this + 2) = 0u;
  *(this + 5) = 0u;
  *this = 0;
  *(this + 1) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 1) = a4;
  v5 = SERIALIZE_NAME;
  if (a3 > 0x1B)
  {
    if (!strcmp(__s1, SERIALIZE_NAME))
    {
      v13 = *(__s1 + 4);
      if ((v13 - 5) > 0xFFFFFFFB)
      {
        if (v13 == 4)
        {
          if (a3 > 0x1F)
          {
            if (*(__s1 + 5) == a3)
            {
              v14 = *(__s1 + 6);
              v15 = *(a4 + 76);
              v17 = (v14 & 4) == 0 && v15 == 2;
              if ((v14 & 4) == 0 || v15 == 2)
              {
                v19 = *(a4 + 30);
                v18 = *(a4 + 31);
                v20 = *(a4 + 39);
                TCollation::TCollation(v133);
                v131 = v19;
                v136 = wcscmp(v19, "t") == 0;
                v132 = v18;
                v134 = 1;
                v135 = v20;
                if (v17)
                {
                  v25 = &v131;
                  v26 = this;
                }

                else
                {
                  v26 = this;
                  v25 = (*(this + 1) + 240);
                }

                v44 = __s1[24];
                *v26 = v44 & 1;
                *(v26 + 1) = (v44 & 2) != 0;
                v45 = *(__s1 + 5);
                if (v45 >= 0x20 && (v45 - 32) > 7)
                {
                  if (v45 - 32 >= *(__s1 + 8))
                  {
                    if (v17)
                    {
                      *v128 = &v129;
                      *&v128[8] = xmmword_26286B6F0;
                      v130 = 1;
                      *__src = v138;
                      *&__src[8] = xmmword_26286B6F0;
                      v139 = 1;
                      TLocaleInfo::multiByteToUnicode(v25, __s1 + 40, v128);
                      v46 = *(this + 1);
                      if (*&v128[16] >= *&v128[8])
                      {
                        if (v130)
                        {
                          LODWORD(__p[0]) = 0;
                          TBuffer<wchar_t>::insert(v128, *&v128[16], __p, 1uLL);
                          v47 = *v128;
                          --*&v128[16];
                        }

                        else
                        {
                          v47 = *v128;
                          if (*&v128[8])
                          {
                            *(*v128 + 4 * *&v128[8] - 4) = 0;
                          }
                        }
                      }

                      else
                      {
                        v47 = *v128;
                        *(*v128 + 4 * *&v128[16]) = 0;
                      }

                      TLocaleInfo::unicodeToMultiByte(v46 + 240, v47, __src);
                      *(this + 3) = *&__src[16];
                      operator new[]();
                    }

                    *(this + 3) = *(__s1 + 9);
                    operator new[]();
                  }

                  tknPrintf("Error: Serialization buffer too small to hold text data\n", v21, v22, v23, v24);
                  std::string::basic_string[abi:ne200100]<0>(__src, &byte_262899963);
                  *v128 = byte_287529580;
                  if ((__src[23] & 0x80000000) != 0)
                  {
                    std::string::__init_copy_ctor_external(&v128[8], *__src, *&__src[8]);
                  }

                  else
                  {
                    *&v128[8] = *__src;
                    v129 = *&__src[16];
                  }

                  *v128 = &unk_287528000;
                  if (v129 >= 0)
                  {
                    v110 = &v128[8];
                  }

                  else
                  {
                    v110 = *&v128[8];
                  }

                  conditionalAssert(v110, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/itn/resultmgr.cpp", 1233, v72, v73);
                  *v128 = byte_287529580;
                  if (SHIBYTE(v129) < 0)
                  {
                    operator delete(*&v128[8]);
                  }

                  if ((__src[23] & 0x80000000) != 0)
                  {
                    operator delete(*__src);
                  }

                  exception = __cxa_allocate_exception(0x20uLL);
                  std::string::basic_string[abi:ne200100]<0>(v128, &byte_262899963);
                  *exception = byte_287529580;
                  v112 = (exception + 1);
                  if ((v128[23] & 0x80000000) != 0)
                  {
                    std::string::__init_copy_ctor_external(v112, *v128, *&v128[8]);
                  }

                  else
                  {
                    v125 = *v128;
                    exception[3] = *&v128[16];
                    *&v112->__r_.__value_.__l.__data_ = v125;
                  }

                  *exception = &unk_287528000;
                }

                tknPrintf("Error: Serialization buffer too small to hold text data\n", v21, v22, v23, v24);
                std::string::basic_string[abi:ne200100]<0>(__src, &byte_262899963);
                *v128 = byte_287529580;
                if ((__src[23] & 0x80000000) != 0)
                {
                  std::string::__init_copy_ctor_external(&v128[8], *__src, *&__src[8]);
                }

                else
                {
                  *&v128[8] = *__src;
                  v129 = *&__src[16];
                }

                *v128 = &unk_287528000;
                if (v129 >= 0)
                {
                  v86 = &v128[8];
                }

                else
                {
                  v86 = *&v128[8];
                }

                conditionalAssert(v86, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/itn/resultmgr.cpp", 1226, v56, v57);
                *v128 = byte_287529580;
                if (SHIBYTE(v129) < 0)
                {
                  operator delete(*&v128[8]);
                }

                if ((__src[23] & 0x80000000) != 0)
                {
                  operator delete(*__src);
                }

                v87 = __cxa_allocate_exception(0x20uLL);
                std::string::basic_string[abi:ne200100]<0>(v128, &byte_262899963);
                *v87 = byte_287529580;
                v88 = (v87 + 1);
                if ((v128[23] & 0x80000000) != 0)
                {
                  std::string::__init_copy_ctor_external(v88, *v128, *&v128[8]);
                }

                else
                {
                  v117 = *v128;
                  v87[3] = *&v128[16];
                  *&v88->__r_.__value_.__l.__data_ = v117;
                }

                *v87 = &unk_287528000;
              }

              tknPrintf("Error: Encoding mismatch: deserializing UTF-8 result with non UTF-8 model\n", v9, v10, v11, v12);
              std::string::basic_string[abi:ne200100]<0>(__src, &byte_262899963);
              *v128 = byte_287529580;
              if ((__src[23] & 0x80000000) != 0)
              {
                std::string::__init_copy_ctor_external(&v128[8], *__src, *&__src[8]);
              }

              else
              {
                *&v128[8] = *__src;
                v129 = *&__src[16];
              }

              *v128 = &unk_287528000;
              if (v129 >= 0)
              {
                v101 = &v128[8];
              }

              else
              {
                v101 = *&v128[8];
              }

              conditionalAssert(v101, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/itn/resultmgr.cpp", 1196, v66, v67);
              *v128 = byte_287529580;
              if (SHIBYTE(v129) < 0)
              {
                operator delete(*&v128[8]);
              }

              if ((__src[23] & 0x80000000) != 0)
              {
                operator delete(*__src);
              }

              v102 = __cxa_allocate_exception(0x20uLL);
              std::string::basic_string[abi:ne200100]<0>(v128, &byte_262899963);
              *v102 = byte_287529580;
              v103 = (v102 + 1);
              if ((v128[23] & 0x80000000) != 0)
              {
                std::string::__init_copy_ctor_external(v103, *v128, *&v128[8]);
              }

              else
              {
                v122 = *v128;
                v102[3] = *&v128[16];
                *&v103->__r_.__value_.__l.__data_ = v122;
              }

              *v102 = &unk_287528000;
            }

            tknPrintf("Error: Buffer is corrupted, size mismatch\n", v9, v10, v11, v12);
            std::string::basic_string[abi:ne200100]<0>(__src, &byte_262899963);
            *v128 = byte_287529580;
            if ((__src[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(&v128[8], *__src, *&__src[8]);
            }

            else
            {
              *&v128[8] = *__src;
              v129 = *&__src[16];
            }

            *v128 = &unk_287528000;
            if (v129 >= 0)
            {
              v98 = &v128[8];
            }

            else
            {
              v98 = *&v128[8];
            }

            conditionalAssert(v98, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/itn/resultmgr.cpp", 1187, v64, v65);
            *v128 = byte_287529580;
            if (SHIBYTE(v129) < 0)
            {
              operator delete(*&v128[8]);
            }

            if ((__src[23] & 0x80000000) != 0)
            {
              operator delete(*__src);
            }

            v99 = __cxa_allocate_exception(0x20uLL);
            std::string::basic_string[abi:ne200100]<0>(v128, &byte_262899963);
            *v99 = byte_287529580;
            v100 = (v99 + 1);
            if ((v128[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(v100, *v128, *&v128[8]);
            }

            else
            {
              v121 = *v128;
              v99[3] = *&v128[16];
              *&v100->__r_.__value_.__l.__data_ = v121;
            }

            *v99 = &unk_287528000;
          }

          tknPrintf("Error: Serialization buffer too small to hold data of type %s\n", v9, v10, v11, v12, v5);
          std::string::basic_string[abi:ne200100]<0>(__src, &byte_262899963);
          *v128 = byte_287529580;
          if ((__src[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v128[8], *__src, *&__src[8]);
          }

          else
          {
            *&v128[8] = *__src;
            v129 = *&__src[16];
          }

          *v128 = &unk_287528000;
          if (v129 >= 0)
          {
            v89 = &v128[8];
          }

          else
          {
            v89 = *&v128[8];
          }

          conditionalAssert(v89, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/itn/resultmgr.cpp", 1179, v58, v59);
          *v128 = byte_287529580;
          if (SHIBYTE(v129) < 0)
          {
            operator delete(*&v128[8]);
          }

          if ((__src[23] & 0x80000000) != 0)
          {
            operator delete(*__src);
          }

          v90 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v128, &byte_262899963);
          *v90 = byte_287529580;
          v91 = (v90 + 1);
          if ((v128[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v91, *v128, *&v128[8]);
          }

          else
          {
            v118 = *v128;
            v90[3] = *&v128[16];
            *&v91->__r_.__value_.__l.__data_ = v118;
          }

          *v90 = &unk_287528000;
        }

        if (*(__s1 + 5) == a3)
        {
          v27 = *(__s1 + 6);
          v28 = *(a4 + 76);
          v30 = (v27 & 0x100) == 0 && v28 == 2;
          if ((v27 & 0x100) == 0 || v28 == 2)
          {
            v32 = *(a4 + 30);
            v31 = *(a4 + 31);
            v33 = *(a4 + 39);
            TCollation::TCollation(v133);
            v131 = v32;
            v136 = wcscmp(v32, "t") == 0;
            v132 = v31;
            v134 = 1;
            v135 = v33;
            if (v30)
            {
              v38 = &v131;
              v39 = this;
            }

            else
            {
              v39 = this;
              v38 = (*(this + 1) + 240);
            }

            v40 = *(__s1 + 6);
            *v39 = (v40 & 0x20) != 0;
            *(v39 + 1) = (v40 & 0x40) != 0;
            if (v40)
            {
              v41 = *(__s1 + 5);
              if (v41 >= 0x1C && (v41 - 28) > 7)
              {
                if (v41 - 28 >= *(__s1 + 7))
                {
                  if (v30)
                  {
                    *v128 = &v129;
                    *&v128[8] = xmmword_26286B6F0;
                    v130 = 1;
                    *__src = v138;
                    *&__src[8] = xmmword_26286B6F0;
                    v139 = 1;
                    TLocaleInfo::multiByteToUnicode(v38, __s1 + 36, v128);
                    v42 = *(this + 1);
                    if (*&v128[16] >= *&v128[8])
                    {
                      if (v130)
                      {
                        LODWORD(__p[0]) = 0;
                        TBuffer<wchar_t>::insert(v128, *&v128[16], __p, 1uLL);
                        v43 = *v128;
                        --*&v128[16];
                      }

                      else
                      {
                        v43 = *v128;
                        if (*&v128[8])
                        {
                          *(*v128 + 4 * *&v128[8] - 4) = 0;
                        }
                      }
                    }

                    else
                    {
                      v43 = *v128;
                      *(*v128 + 4 * *&v128[16]) = 0;
                    }

                    TLocaleInfo::unicodeToMultiByte(v42 + 240, v43, __src);
                    *(this + 3) = *&__src[16];
                    operator new[]();
                  }

                  *(this + 3) = *(__s1 + 8);
                  operator new[]();
                }

                tknPrintf("Error: Serialization buffer too small to hold text data\n", v34, v35, v36, v37);
                std::string::basic_string[abi:ne200100]<0>(__src, &byte_262899963);
                *v128 = byte_287529580;
                if ((__src[23] & 0x80000000) != 0)
                {
                  std::string::__init_copy_ctor_external(&v128[8], *__src, *&__src[8]);
                }

                else
                {
                  *&v128[8] = *__src;
                  v129 = *&__src[16];
                }

                *v128 = &unk_287528000;
                if (v129 >= 0)
                {
                  v107 = &v128[8];
                }

                else
                {
                  v107 = *&v128[8];
                }

                conditionalAssert(v107, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/itn/resultmgr.cpp", 901, v70, v71);
                *v128 = byte_287529580;
                if (SHIBYTE(v129) < 0)
                {
                  operator delete(*&v128[8]);
                }

                if ((__src[23] & 0x80000000) != 0)
                {
                  operator delete(*__src);
                }

                v108 = __cxa_allocate_exception(0x20uLL);
                std::string::basic_string[abi:ne200100]<0>(v128, &byte_262899963);
                *v108 = byte_287529580;
                v109 = (v108 + 1);
                if ((v128[23] & 0x80000000) != 0)
                {
                  std::string::__init_copy_ctor_external(v109, *v128, *&v128[8]);
                }

                else
                {
                  v124 = *v128;
                  v108[3] = *&v128[16];
                  *&v109->__r_.__value_.__l.__data_ = v124;
                }

                *v108 = &unk_287528000;
              }

              tknPrintf("Error: Serialization buffer too small to hold text data\n", v34, v35, v36, v37);
              std::string::basic_string[abi:ne200100]<0>(__src, &byte_262899963);
              *v128 = byte_287529580;
              if ((__src[23] & 0x80000000) != 0)
              {
                std::string::__init_copy_ctor_external(&v128[8], *__src, *&__src[8]);
              }

              else
              {
                *&v128[8] = *__src;
                v129 = *&__src[16];
              }

              *v128 = &unk_287528000;
              if (v129 >= 0)
              {
                v83 = &v128[8];
              }

              else
              {
                v83 = *&v128[8];
              }

              conditionalAssert(v83, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/itn/resultmgr.cpp", 894, v54, v55);
              *v128 = byte_287529580;
              if (SHIBYTE(v129) < 0)
              {
                operator delete(*&v128[8]);
              }

              if ((__src[23] & 0x80000000) != 0)
              {
                operator delete(*__src);
              }

              v84 = __cxa_allocate_exception(0x20uLL);
              std::string::basic_string[abi:ne200100]<0>(v128, &byte_262899963);
              *v84 = byte_287529580;
              v85 = (v84 + 1);
              if ((v128[23] & 0x80000000) != 0)
              {
                std::string::__init_copy_ctor_external(v85, *v128, *&v128[8]);
              }

              else
              {
                v116 = *v128;
                v84[3] = *&v128[16];
                *&v85->__r_.__value_.__l.__data_ = v116;
              }

              *v84 = &unk_287528000;
            }

            tknPrintf("Error: No text in serialization buffer\n", v34, v35, v36, v37);
            std::string::basic_string[abi:ne200100]<0>(__src, &byte_262899963);
            *v128 = byte_287529580;
            if ((__src[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(&v128[8], *__src, *&__src[8]);
            }

            else
            {
              *&v128[8] = *__src;
              v129 = *&__src[16];
            }

            *v128 = &unk_287528000;
            if (v129 >= 0)
            {
              v104 = &v128[8];
            }

            else
            {
              v104 = *&v128[8];
            }

            conditionalAssert(v104, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/itn/resultmgr.cpp", 926, v68, v69);
            *v128 = byte_287529580;
            if (SHIBYTE(v129) < 0)
            {
              operator delete(*&v128[8]);
            }

            if ((__src[23] & 0x80000000) != 0)
            {
              operator delete(*__src);
            }

            v105 = __cxa_allocate_exception(0x20uLL);
            std::string::basic_string[abi:ne200100]<0>(v128, &byte_262899963);
            *v105 = byte_287529580;
            v106 = (v105 + 1);
            if ((v128[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(v106, *v128, *&v128[8]);
            }

            else
            {
              v123 = *v128;
              v105[3] = *&v128[16];
              *&v106->__r_.__value_.__l.__data_ = v123;
            }

            *v105 = &unk_287528000;
          }

          tknPrintf("Error: Encoding mismatch: deserializing UTF-8 result with non UTF-8 model\n", v9, v10, v11, v12);
          std::string::basic_string[abi:ne200100]<0>(__src, &byte_262899963);
          *v128 = byte_287529580;
          if ((__src[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&v128[8], *__src, *&__src[8]);
          }

          else
          {
            *&v128[8] = *__src;
            v129 = *&__src[16];
          }

          *v128 = &unk_287528000;
          if (v129 >= 0)
          {
            v95 = &v128[8];
          }

          else
          {
            v95 = *&v128[8];
          }

          conditionalAssert(v95, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/itn/resultmgr.cpp", 863, v62, v63);
          *v128 = byte_287529580;
          if (SHIBYTE(v129) < 0)
          {
            operator delete(*&v128[8]);
          }

          if ((__src[23] & 0x80000000) != 0)
          {
            operator delete(*__src);
          }

          v96 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v128, &byte_262899963);
          *v96 = byte_287529580;
          v97 = (v96 + 1);
          if ((v128[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v97, *v128, *&v128[8]);
          }

          else
          {
            v120 = *v128;
            v96[3] = *&v128[16];
            *&v97->__r_.__value_.__l.__data_ = v120;
          }

          *v96 = &unk_287528000;
        }

        tknPrintf("Error: Buffer is corrupted, size mismatch\n", v9, v10, v11, v12);
        std::string::basic_string[abi:ne200100]<0>(__src, &byte_262899963);
        *v128 = byte_287529580;
        if ((__src[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(&v128[8], *__src, *&__src[8]);
        }

        else
        {
          *&v128[8] = *__src;
          v129 = *&__src[16];
        }

        *v128 = &unk_287528000;
        if (v129 >= 0)
        {
          v92 = &v128[8];
        }

        else
        {
          v92 = *&v128[8];
        }

        conditionalAssert(v92, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/itn/resultmgr.cpp", 854, v60, v61);
        *v128 = byte_287529580;
        if (SHIBYTE(v129) < 0)
        {
          operator delete(*&v128[8]);
        }

        if ((__src[23] & 0x80000000) != 0)
        {
          operator delete(*__src);
        }

        v93 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v128, &byte_262899963);
        *v93 = byte_287529580;
        v94 = (v93 + 1);
        if ((v128[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v94, *v128, *&v128[8]);
        }

        else
        {
          v119 = *v128;
          v93[3] = *&v128[16];
          *&v94->__r_.__value_.__l.__data_ = v119;
        }

        *v93 = &unk_287528000;
      }

      tknPrintf("Error: Expected version [%u,%u], found %u\n", v9, v10, v11, v12, 1, 4, *(__s1 + 4));
      std::string::basic_string[abi:ne200100]<0>(__src, &byte_262899963);
      *v128 = byte_287529580;
      if ((__src[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v128[8], *__src, *&__src[8]);
      }

      else
      {
        *&v128[8] = *__src;
        v129 = *&__src[16];
      }

      *v128 = &unk_287528000;
      if (v129 >= 0)
      {
        v80 = &v128[8];
      }

      else
      {
        v80 = *&v128[8];
      }

      conditionalAssert(v80, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/itn/resultmgr.cpp", 846, v52, v53);
      *v128 = byte_287529580;
      if (SHIBYTE(v129) < 0)
      {
        operator delete(*&v128[8]);
      }

      if ((__src[23] & 0x80000000) != 0)
      {
        operator delete(*__src);
      }

      v81 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v128, &byte_262899963);
      *v81 = byte_287529580;
      v82 = (v81 + 1);
      if ((v128[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v82, *v128, *&v128[8]);
      }

      else
      {
        v115 = *v128;
        v81[3] = *&v128[16];
        *&v82->__r_.__value_.__l.__data_ = v115;
      }

      *v81 = &unk_287528000;
    }

    tknPrintf("Error: Expected %s, found %s\n", v9, v10, v11, v12, v5, __s1);
    std::string::basic_string[abi:ne200100]<0>(__src, &byte_262899963);
    *v128 = byte_287529580;
    if ((__src[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v128[8], *__src, *&__src[8]);
    }

    else
    {
      *&v128[8] = *__src;
      v129 = *&__src[16];
    }

    *v128 = &unk_287528000;
    if (v129 >= 0)
    {
      v77 = &v128[8];
    }

    else
    {
      v77 = *&v128[8];
    }

    conditionalAssert(v77, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/itn/resultmgr.cpp", 839, v50, v51);
    *v128 = byte_287529580;
    if (SHIBYTE(v129) < 0)
    {
      operator delete(*&v128[8]);
    }

    if ((__src[23] & 0x80000000) != 0)
    {
      operator delete(*__src);
    }

    v78 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v128, &byte_262899963);
    *v78 = byte_287529580;
    v79 = (v78 + 1);
    if ((v128[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v79, *v128, *&v128[8]);
    }

    else
    {
      v114 = *v128;
      v78[3] = *&v128[16];
      *&v79->__r_.__value_.__l.__data_ = v114;
    }

    *v78 = &unk_287528000;
  }

  tknPrintf("Error: Serialization buffer too small to hold data of type %s\n", __s1, a3, a4, a5, SERIALIZE_NAME);
  std::string::basic_string[abi:ne200100]<0>(__src, &byte_262899963);
  *v128 = byte_287529580;
  if ((__src[23] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v128[8], *__src, *&__src[8]);
  }

  else
  {
    *&v128[8] = *__src;
    v129 = *&__src[16];
  }

  *v128 = &unk_287528000;
  if (v129 >= 0)
  {
    v74 = &v128[8];
  }

  else
  {
    v74 = *&v128[8];
  }

  conditionalAssert(v74, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/itn/resultmgr.cpp", 832, v48, v49);
  *v128 = byte_287529580;
  if (SHIBYTE(v129) < 0)
  {
    operator delete(*&v128[8]);
  }

  if ((__src[23] & 0x80000000) != 0)
  {
    operator delete(*__src);
  }

  v75 = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(v128, &byte_262899963);
  *v75 = byte_287529580;
  v76 = (v75 + 1);
  if ((v128[23] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(v76, *v128, *&v128[8]);
  }

  else
  {
    v113 = *v128;
    v75[3] = *&v128[16];
    *&v76->__r_.__value_.__l.__data_ = v113;
  }

  *v75 = &unk_287528000;
}

void sub_2626BE264(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, void *a15, void *a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *__p, void *a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
    if ((v34 & 1) == 0)
    {
LABEL_6:
      TAllocator::clear(&STACK[0x520]);
      if (a2 == 1)
      {
        __cxa_begin_catch(a1);
        if (*a15)
        {
          MEMORY[0x26672B190](*a15, 0x1000C8077774924);
        }

        __cxa_rethrow();
      }

      TCollation::~TCollation(&STACK[0x4D8]);
      v38 = a17[13];
      if (v38)
      {
        a17[14] = v38;
        operator delete(v38);
      }

      v39 = *a14;
      if (*a14)
      {
        a17[11] = v39;
        operator delete(v39);
      }

      v40 = a17[7];
      if (v40)
      {
        a17[8] = v40;
        operator delete(v40);
      }

      __p = a16;
      std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&__p);
      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v35);
  goto LABEL_6;
}

void sub_2626BEB0C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x2626BEB10);
  }

  _Unwind_Resume(a1);
}

void sub_2626BEBFC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  _Unwind_Resume(a1);
}

void sub_2626BEC04(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2626BEC08);
  }

  __clang_call_terminate();
}

void std::vector<TItnControlState>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + (a2 << 6);
    }
  }

  else
  {
    std::vector<TItnControlState>::__append(a1, a2 - v2);
  }
}

void TResult::~TResult(TResult *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x26672B190](v2, 0x1000C8077774924);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
    operator delete(v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    *(this + 8) = v5;
    operator delete(v5);
  }

  v6 = (this + 32);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v6);
}

unint64_t TResult::serialize(unsigned __int8 *a1, char *__dst, unint64_t a3, uint64_t a4)
{
  if (a3 >= 0x20)
  {
    strcpy(__dst, SERIALIZE_NAME);
    *(__dst + 4) = 4;
    v8 = *a1;
    *(__dst + 6) = v8;
    if (a1[1] == 1)
    {
      v8 |= 2u;
      *(__dst + 6) = v8;
    }

    if (*(a4 + 304) == 2)
    {
      *(__dst + 6) = v8 | 4;
    }

    v9 = *(a4 + 336);
    ActiveConfigHandle = TParam::getActiveConfigHandle((v9 + 144));
    *(__dst + 7) = *(v9 + 4 * TParam::getValidConfig((v9 + 144), ActiveConfigHandle) + 304);
  }

  v11 = *(a1 + 3);
  v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 44;
  if (v12 <= a3)
  {
    *(__dst + 8) = (v11 & 0xFFFFFFFC) + 12;
    *(__dst + 9) = v11;
    strcpy(__dst + 40, *(a1 + 2));
  }

  v13 = *(a1 + 4);
  v14 = *(a1 + 5);
  if (v14 == v13)
  {
    v19 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 3);
    v20 = 8;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 8;
    do
    {
      v18 = (v13 + v15);
      if (*(v13 + v15 + 23) < 0)
      {
        v18 = *v18;
      }

      v17 += TLocaleInfo::unicodeToMultiByte(a4 + 240, v18, 0, 0);
      ++v16;
      v13 = *(a1 + 4);
      v14 = *(a1 + 5);
      v19 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 3);
      v15 += 24;
    }

    while (v16 < v19);
    v20 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  }

  v21 = v20 + v12;
  if (v20 + v12 <= a3)
  {
    v22 = &__dst[v12];
    *v22 = v20;
    *(v22 + 1) = v19;
    if (v14 != v13)
    {
      v23 = 0;
      v24 = 0;
      v25 = (v22 + 8);
      do
      {
        v26 = (v13 + v23);
        if (*(v13 + v23 + 23) < 0)
        {
          v26 = *v26;
        }

        v25 = (v25 + TLocaleInfo::unicodeToMultiByte(a4 + 240, v26, v25, v20));
        ++v24;
        v13 = *(a1 + 4);
        v23 += 24;
      }

      while (v24 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 5) - v13) >> 3));
    }
  }

  v27 = *(a1 + 13);
  v28 = *(a1 + 14) - v27;
  v29 = ((v28 >> 1) + 11) & 0xFFFFFFFFFFFFFFFCLL;
  v30 = v29 + v21;
  if (v29 + v21 <= a3)
  {
    v31 = &__dst[v21];
    *v31 = v29;
    *(v31 + 1) = v28 >> 3;
    if ((v28 >> 3))
    {
      v32 = v31 + 8;
      v33 = (v28 >> 3);
      do
      {
        v34 = *v27++;
        *v32++ = v34;
        --v33;
      }

      while (v33);
    }
  }

  v36 = *(a1 + 7);
  v35 = *(a1 + 8);
  v37 = (((v35 - v36) >> 1) + 11) & 0xFFFFFFFFFFFFFFFCLL;
  v38 = v37 + v30;
  if (v37 + v30 <= a3)
  {
    v39 = &__dst[v30];
    *v39 = v37;
    *(v39 + 1) = (v35 - v36) >> 6;
    __src = 0;
    v76 = 0;
    v77 = 0;
    if (v35 != v36)
    {
      v71 = v39;
      v72 = v38;
      v40 = 0;
      v41 = 0;
      do
      {
        *&v42 = -1;
        *(&v42 + 1) = -1;
        v73 = v42;
        v74 = v42;
        v43 = v40;
        v44 = 4;
        do
        {
          v45 = *(a1 + 7);
          v46 = *(v45 + v43);
          if (v46 != -1)
          {
            *(&v73 + getItnControlCategory(*(v45 + v43))) = v46;
            v45 = *(a1 + 7);
          }

          v47 = v45 + v43;
          v48 = *(v47 + 32);
          if (v48 != -1)
          {
            *(&v74 + getItnControlCategory(*(v47 + 32))) = v48;
          }

          v43 += 8;
          --v44;
        }

        while (v44);
        v49 = v76;
        if (v76 >= v77)
        {
          v52 = __src;
          v53 = v76 - __src;
          v54 = (v76 - __src) >> 5;
          v55 = v54 + 1;
          if ((v54 + 1) >> 59)
          {
            std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
          }

          v56 = v77 - __src;
          if ((v77 - __src) >> 4 > v55)
          {
            v55 = v56 >> 4;
          }

          if (v56 >= 0x7FFFFFFFFFFFFFE0)
          {
            v55 = 0x7FFFFFFFFFFFFFFLL;
          }

          if (v55)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<TItnControlState32>>(&__src, v55);
          }

          v57 = (v76 - __src) >> 5;
          v58 = (32 * v54);
          v59 = v74;
          *v58 = v73;
          v58[1] = v59;
          v51 = (32 * v54 + 32);
          v60 = (32 * v54 - 32 * v57);
          memcpy(&v58[-2 * v57], v52, v53);
          v61 = __src;
          __src = v60;
          v76 = v51;
          v77 = 0;
          if (v61)
          {
            operator delete(v61);
          }
        }

        else
        {
          v50 = v74;
          *v76 = v73;
          *(v49 + 1) = v50;
          v51 = v49 + 32;
        }

        v76 = v51;
        ++v41;
        v40 += 64;
      }

      while (v41 < (*(a1 + 8) - *(a1 + 7)) >> 6);
      v62 = __src;
      if (v51 != __src)
      {
        memmove(v71 + 8, __src, v51 - __src);
      }

      v38 = v72;
      if (v62)
      {
        v76 = v62;
        operator delete(v62);
      }
    }
  }

  v63 = *(a1 + 10);
  v64 = *(a1 + 11) - v63;
  v65 = ((v64 >> 1) + 11) & 0xFFFFFFFFFFFFFFFCLL;
  result = v65 + v38;
  if (v65 + v38 > a3)
  {
LABEL_55:
    if (!__dst)
    {
      return result;
    }

    goto LABEL_56;
  }

  v67 = &__dst[v38];
  *v67 = v65;
  *(v67 + 1) = v64 >> 3;
  if ((v64 >> 3))
  {
    v68 = v67 + 8;
    v69 = (v64 >> 3);
    do
    {
      v70 = *v63++;
      *v68++ = v70;
      --v69;
    }

    while (v69);
    goto LABEL_55;
  }

LABEL_56:
  *(__dst + 5) = result;
  return result;
}

void sub_2626BF12C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double TResultManager::TResultManager(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *a1 = &unk_287527F58;
  *(a1 + 8) = a4;
  *(a1 + 24) = a3;
  *(a1 + 32) = a2;
  *(a1 + 16) = a5;
  *(a1 + 88) = -1;
  return result;
}

void TResultManager::~TResultManager(TResultManager *this)
{
  *this = &unk_287527F58;
  v3 = *(this + 5);
  v2 = *(this + 6);
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 8 * v4);
      if (v5)
      {
        TResult::~TResult(v5);
        MEMORY[0x26672B1B0]();
        v3 = *(this + 5);
        v2 = *(this + 6);
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v7 = (this + 64);
  std::vector<THint>::__destroy_vector::operator()[abi:ne200100](&v7);
  v6 = *(this + 5);
  if (v6)
  {
    *(this + 6) = v6;
    operator delete(v6);
  }
}

{
  TResultManager::~TResultManager(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t TResultManager::getResult(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (a2 - 1 >= ((*(a1 + 48) - v2) >> 3))
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * (a2 - 1));
  }
}

TResult *TResultManager::destroy(TResult *result, uint64_t a2)
{
  if (a2 != -1)
  {
    v2 = result;
    v3 = a2 - 1;
    v4 = *(result + 5);
    result = *(v4 + 8 * (a2 - 1));
    if (result)
    {
      TResult::~TResult(result);
      result = MEMORY[0x26672B1B0]();
      v4 = *(v2 + 5);
    }

    *(v4 + 8 * v3) = 0;
  }

  return result;
}

uint64_t TResultManager::splitAtTextIndex(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v4 = a2;
  v52 = *MEMORY[0x277D85DE8];
  v6 = a1[5];
  if (a2 - 1 >= ((a1[6] - v6) >> 3))
  {
    v7 = 0;
    goto LABEL_11;
  }

  v7 = *(v6 + 8 * (a2 - 1));
  if (!v7)
  {
LABEL_11:
    v17 = 0;
    v8 = 1;
    goto LABEL_12;
  }

  v8 = 0;
  if (!a3 || (v9 = v7[13], v10 = v7[14], v10 == v9))
  {
    v17 = 0;
LABEL_12:
    v11 = v17;
    if (!v17)
    {
      goto LABEL_20;
    }

LABEL_13:
    TResultManager::copyAlignRange(a1, v4);
  }

  v38 = v7;
  v11 = 0;
  v12 = 0;
  v13 = (v10 - v9) >> 3;
  v14 = (v9 + 8);
  v15 = 2;
  while (1)
  {
    v16 = *(v14 - 1);
    v17 = v16 + v11;
    v18 = *v14 + v12;
    if (v16 + v11 > a3)
    {
      break;
    }

    v14 += 2;
    v11 += v16;
    v12 = v18;
    v19 = v15 >= v13;
    v15 += 2;
    if (v19)
    {
      v8 = 0;
      v4 = a2;
      v7 = v38;
      goto LABEL_12;
    }
  }

  v8 = 0;
  v37 = a3 - v11;
  if (a3 > v11)
  {
    v20 = *v14 + v12;
    if (v16)
    {
      v48 = &v50;
      v49 = xmmword_26286B6F0;
      v51 = 1;
      v44 = &v46;
      v45 = xmmword_26286B6F0;
      v47 = 1;
      v40 = &v42;
      v41 = xmmword_26286B6F0;
      v43 = 1;
      v21 = v38[2];
      TBuffer<char>::resize(&v44, 0);
      TBuffer<char>::insert(&v44, 0, v21, v11);
      v22 = v38[2];
      TBuffer<char>::resize(&v48, 0);
      TBuffer<char>::insert(&v48, 0, (v22 + v11), v37);
      v23 = v38[3];
      v34 = v38[2];
      TBuffer<char>::resize(&v40, 0);
      TBuffer<char>::insert(&v40, 0, (v34 + a3), v23 - a3);
      if (*(&v49 + 1) >= v49)
      {
        if (v51)
        {
          v39[0] = 0;
          TBuffer<char>::insert(&v48, *(&v49 + 1), v39, 1uLL);
          --*(&v49 + 1);
        }

        else if (v49)
        {
          *(v48 + v49 - 1) = 0;
        }
      }

      else
      {
        *(v48 + *(&v49 + 1)) = 0;
      }

      v26 = v48;
      if (*(&v45 + 1) >= v45)
      {
        if (v47)
        {
          v39[0] = 0;
          TBuffer<char>::insert(&v44, *(&v45 + 1), v39, 1uLL);
          --*(&v45 + 1);
        }

        else if (v45)
        {
          *(v44 + v45 - 1) = 0;
        }
      }

      else
      {
        *(v44 + *(&v45 + 1)) = 0;
      }

      v27 = v44;
      if (*(&v41 + 1) >= v41)
      {
        if (v43)
        {
          v35 = v44;
          v39[0] = 0;
          TBuffer<char>::insert(&v40, *(&v41 + 1), v39, 1uLL);
          --*(&v41 + 1);
          v27 = v35;
        }

        else if (v41)
        {
          v40[v41 - 1] = 0;
        }
      }

      else
      {
        v40[*(&v41 + 1)] = 0;
      }

      v36 = TTokenizer::tokenize(a1[4], v26, v27, v40, *(*(a1[4] + 24) + 29784), 0);
      v28 = v38[2];
      TBuffer<char>::resize(&v44, 0);
      TBuffer<char>::insert(&v44, 0, v28, a3);
      v29 = v38[2];
      TBuffer<char>::resize(&v48, 0);
      TBuffer<char>::insert(&v48, 0, (v29 + a3), v16 + v11 - a3);
      v30 = v38[2];
      v31 = v38[3];
      TBuffer<char>::resize(&v40, 0);
      TBuffer<char>::insert(&v40, 0, (v30 + v17), v31 - v17);
      if (*(&v49 + 1) >= v49)
      {
        if (v51)
        {
          v39[0] = 0;
          TBuffer<char>::insert(&v48, *(&v49 + 1), v39, 1uLL);
          --*(&v49 + 1);
        }

        else if (v49)
        {
          *(v48 + v49 - 1) = 0;
        }
      }

      else
      {
        *(v48 + *(&v49 + 1)) = 0;
      }

      v32 = v48;
      if (*(&v45 + 1) >= v45)
      {
        if (v47)
        {
          v39[0] = 0;
          TBuffer<char>::insert(&v44, *(&v45 + 1), v39, 1uLL);
          --*(&v45 + 1);
        }

        else if (v45)
        {
          *(v44 + v45 - 1) = 0;
        }
      }

      else
      {
        *(v44 + *(&v45 + 1)) = 0;
      }

      v33 = v44;
      if (*(&v41 + 1) >= v41)
      {
        if (v43)
        {
          v39[0] = 0;
          TBuffer<char>::insert(&v40, *(&v41 + 1), v39, 1uLL);
          --*(&v41 + 1);
        }

        else if (v41)
        {
          v40[v41 - 1] = 0;
        }
      }

      else
      {
        v40[*(&v41 + 1)] = 0;
      }

      TTokenizer::tokenize(a1[4], v32, v33, v40, *(*(a1[4] + 24) + 29784), 0);
      TFsa::TFsa(v39);
      tokenizerResultToFsa(v36, 0, a1[3], a1[4]);
    }
  }

  v4 = a2;
  v7 = v38;
  if (v11)
  {
    goto LABEL_13;
  }

LABEL_20:
  if ((v8 & 1) == 0 && v11 != v7[3])
  {
    TResultManager::copyAlignRange(a1, v4);
  }

  v24 = *MEMORY[0x277D85DE8];
  return -1;
}

void sub_2626BFCF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, char a59)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  TFsa::~TFsa(&a28);
  if (a56)
  {
    a57 = a56;
    operator delete(a56);
  }

  TFsa::~TFsa(&a59);
  if (LOBYTE(STACK[0x398]) == 1)
  {
    v60 = STACK[0x280];
    if (STACK[0x280] != a9)
    {
      if (v60)
      {
        MEMORY[0x26672B1B0](v60, 0x1000C4077774924);
      }
    }
  }

  if (LOBYTE(STACK[0x4B8]) == 1)
  {
    v61 = STACK[0x3A0];
    if (STACK[0x3A0] != a10)
    {
      if (v61)
      {
        MEMORY[0x26672B1B0](v61, 0x1000C4077774924);
      }
    }
  }

  if (LOBYTE(STACK[0x5D8]) == 1)
  {
    v62 = STACK[0x4C0];
    if (STACK[0x4C0] != a11)
    {
      if (v62)
      {
        MEMORY[0x26672B1B0](v62, 0x1000C4077774924);
      }
    }
  }

  _Unwind_Resume(a1);
}

void TResultManager::copyAlignRange(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (a2 - 1 < ((*(a1 + 48) - v2) >> 3))
  {
    v3 = *(v2 + 8 * (a2 - 1));
  }

  operator new();
}

void sub_2626C0360(_Unwind_Exception *a1)
{
  v3 = *(v1 - 144);
  if (v3)
  {
    *(v1 - 136) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void wordsToFsa(unint64_t a1, unint64_t a2, void *a3, uint64_t **this)
{
  if (!this[25])
  {
    v8 = TFsa::newState(this, 0);
    TFsa::addExtremity(this, v8, 0);
    TFsa::addExtremity(this, v8, 1u);
  }

  v9 = this[22];
  v10 = this[23];
  if (v9 != v10)
  {
    while (!*v9)
    {
      if (++v9 == v10)
      {
        v9 = this[23];
        break;
      }
    }
  }

  v11 = *v9;
  TFsa::removeExtremity(this, *v9, 1u);
  if (a1 >= a2)
  {
    v12 = v11;
  }

  else
  {
    do
    {
      v12 = TFsa::newState(this, 0);
      v13 = a1;
      if (*(a1 + 23) < 0)
      {
        v13 = *a1;
      }

      Word = TLexicon::findWord(a3, v13);
      if (!Word)
      {
        v15 = a1;
        if (*(a1 + 23) < 0)
        {
          v15 = *a1;
        }

        Word = TLexicon::addTempWord(a3, v15, 0, 0, 0);
      }

      TFsa::newTrans(this, v11, v12, Word);
      a1 += 24;
      v11 = v12;
    }

    while (a1 < a2);
  }

  TFsa::addExtremity(this, v12, 1u);
}

void *alignFsa(TAllocator *a1, uint64_t **this, unint64_t a3, unint64_t *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = TFsa::newState(this, 0);
  v9 = this[19];
  v10 = this[20];
  if (v9 != v10)
  {
    while (!*v9)
    {
      if (++v9 == v10)
      {
        v9 = this[20];
        break;
      }
    }
  }

  v11 = *v9;
  TFsa::removeExtremity(this, *v9, 0);
  TFsa::addExtremity(this, v8, 0);
  TFsa::newTrans(this, v8, v11, -1);
  v12 = TFsa::newState(a1, 0);
  v13 = *(a1 + 19);
  v14 = *(a1 + 20);
  if (v13 != v14)
  {
    while (!*v13)
    {
      if (++v13 == v14)
      {
        v13 = *(a1 + 20);
        break;
      }
    }
  }

  v15 = *v13;
  TFsa::removeExtremity(a1, *v13, 0);
  TFsa::addExtremity(a1, v12, 0);
  TFsa::newTrans(a1, v12, v15, -1);
  v18[0] = &unk_287523E28;
  v18[1] = 1;
  v18[2] = &unk_287523E28;
  v18[3] = 1;
  v18[4] = &unk_287523E28;
  v18[5] = 1;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  TAligner<TWord const*,TCost<TWord const*,std::equal_to<TWord const*>>>::align(v18, a1, this, a3, 0, a4);
  result = TAligner<TWord const*,TCost<TWord const*,std::equal_to<TWord const*>>>::~TAligner(v18);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void create(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v39 = *MEMORY[0x277D85DE8];
  v36 = v38;
  v37 = xmmword_26286B6F0;
  v38[256] = 1;
  TBuffer<char>::resize(&v36, 0);
  TBuffer<char>::insert(&v36, 0, (a1 + a2), a3 - a2);
  memset(v35, 0, sizeof(v35));
  memset(__p, 0, sizeof(__p));
  v33 = 0;
  v11 = *a4;
  if (*a4 == a4[1])
  {
    v13 = a2;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = *a5;
    do
    {
      v18 = *(*(v11 + 8 * v12) + 8);
      if (v13 >= a2)
      {
        v19 = *(v17 + 16 * v18);
        if (v19 <= a3 && v19 != v13)
        {
          v32 = v19 - v13;
          std::vector<unsigned long>::push_back[abi:ne200100](__p, &v32);
          v32 = 0;
          std::vector<unsigned long>::push_back[abi:ne200100](__p, &v32);
          v17 = *a5;
        }
      }

      ++v33;
      v21 = (v17 + 16 * v18);
      if (*v21 != 0xFFFFFFFF)
      {
        v14 = *v21;
      }

      if (v14 >= a2)
      {
        v22 = v21[1];
        if (v22 <= a3)
        {
          v32 = v22 - v14;
          std::vector<unsigned long>::push_back[abi:ne200100](__p, &v32);
          std::vector<unsigned long>::push_back[abi:ne200100](__p, &v33);
          v17 = *a5;
        }
      }

      if (*(v17 + 16 * v18 + 8) != 0xFFFFFFFFLL)
      {
        v33 = 0;
      }

      if (v14 < a2 || v14 >= a3)
      {
        if (*(a6 + 23) >= 0)
        {
          v24 = a6;
        }

        else
        {
          v24 = *a6;
        }

        do
        {
          v25 = *(v24 + v15++);
        }

        while (v25 == 68);
      }

      else
      {
        HeadClone = **(*a4 + 8 * v12);
        if (*(a6 + 23) >= 0)
        {
          v27 = a6;
        }

        else
        {
          v27 = *a6;
        }

        do
        {
          v28 = v16;
          v29 = *(v27 + v15++);
          v16 = 1;
        }

        while (v29 == 68);
        if (v29 != 67)
        {
          HeadClone = TWord::getHeadClone(HeadClone);
          v28 = 1;
        }

        v32 = *HeadClone;
        std::vector<wchar_t const*>::push_back[abi:ne200100](v35, &v32);
        v17 = *a5;
        v16 = v28;
      }

      v13 = *(v17 + 16 * v18 + 8);
      ++v12;
      v11 = *a4;
    }

    while (v12 < (a4[1] - *a4) >> 3);
  }

  if (v13 >= a2 && a3 > v13)
  {
    v32 = a3 - v13;
    std::vector<unsigned long>::push_back[abi:ne200100](__p, &v32);
    v32 = 0;
    std::vector<unsigned long>::push_back[abi:ne200100](__p, &v32);
  }

  operator new();
}

void sub_2626C0AE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a56 == 1 && a21 != a10 && a21 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(exception_object);
}

uint64_t TResultManager::merge(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = 0;
  if (a3)
  {
    v3 = a3;
    v5 = 0;
    do
    {
      v6 = *a2 - 1;
      v7 = *(a1 + 40);
      if (v6 < (*(a1 + 48) - v7) >> 3)
      {
        v8 = *(v7 + 8 * v6);
        if (v8)
        {
          if (v5)
          {
            operator new();
          }

          v10 = *(v7 + 8 * v6);
          v5 = v8;
        }
      }

      ++a2;
      --v3;
    }

    while (v3);
    if (v5)
    {
      operator new();
    }
  }

  return -1;
}

uint64_t TResultManager::split(uint64_t result, uint64_t a2, unint64_t **a3, uint64_t a4)
{
  v7 = result;
  v8 = a3[1] - *a3;
  v9 = v8 + 1;
  if (*(a4 + 2072) == 1 && *(a4 + 8) < v9)
  {
    *(a4 + 8) = v8 + 2;
    operator new[]();
  }

  v10 = *(a4 + 16);
  if (v10 >= v9)
  {
    goto LABEL_10;
  }

  v11 = v9;
  if (*(a4 + 2072))
  {
    goto LABEL_9;
  }

  v11 = *(a4 + 8);
  if (v10 < v11)
  {
    if (v11 >= v9)
    {
      v11 = v9;
    }

LABEL_9:
    result = memset((*a4 + 8 * v10), 255, 8 * (v11 - v10));
  }

LABEL_10:
  *(a4 + 16) = v9;
  v12 = v7[5];
  if (a2 - 1 >= ((v7[6] - v12) >> 3))
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v12 + 8 * (a2 - 1));
  }

  v15 = *a3;
  v14 = a3[1];
  if (v14 == *a3)
  {
    goto LABEL_29;
  }

  v16 = 0;
  v17 = 0;
  v18 = a2;
  while (v17)
  {
    v19 = v15[v17];
    if (v19 != v15[v17 - 1])
    {
      goto LABEL_19;
    }

LABEL_23:
    if (++v17 >= (v14 - v15))
    {
      goto LABEL_28;
    }
  }

  v19 = *v15;
  if (!*v15)
  {
    goto LABEL_23;
  }

LABEL_19:
  if (v19 < *(v13 + 24))
  {
    result = TResultManager::splitAtTextIndex(v7, v18, v19 - v16);
    v20 = result;
    v22 = v21;
    v16 = (*a3)[v17];
    if (v18 != a2)
    {
      result = TResultManager::destroy(v7, v18);
    }

    *(*a4 + 8 * v17) = v20;
    v15 = *a3;
    v14 = a3[1];
    v18 = v22;
    goto LABEL_23;
  }

  if (v18 == a2)
  {
    v23 = a2;
    result = TResultManager::merge(v7, &v23, 1);
    v18 = result;
  }

  *(*a4 + 8 * v17) = v18;
  v18 = -1;
LABEL_28:
  if (v18 == a2)
  {
LABEL_29:
    v23 = a2;
    result = TResultManager::merge(v7, &v23, 1);
    v18 = result;
  }

  *(*a4 + 8 * *(a4 + 16) - 8) = v18;
  return result;
}

void TResultManager::setResultText(uint64_t a1, uint64_t a2, char *__s)
{
  v3 = *(a1 + 40);
  if (a2 - 1 >= ((*(a1 + 48) - v3) >> 3))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v3 + 8 * (a2 - 1));
  }

  TResult::setText(v4, __s);
}

void TResultManager::align(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = *MEMORY[0x277D85DE8];
  v39 = 0;
  v40 = 0;
  v41 = 0;
  if (a3)
  {
    for (i = 0; i != a3; ++i)
    {
      v12 = *(a2 + 8 * i) - 1;
      v13 = a1[5];
      if (v12 >= (a1[6] - v13) >> 3)
      {
        v14 = 0;
      }

      else
      {
        v14 = *(v13 + 8 * v12);
      }

      std::vector<TState const*>::reserve(&v39, 0xAAAAAAAAAAAAAAABLL * ((*(v14 + 40) - *(v14 + 32)) >> 3) + ((v40 - v39) >> 3));
      v15 = *(v14 + 32);
      if (*(v14 + 40) != v15)
      {
        v16 = 0;
        v17 = 0;
        do
        {
          v18 = (v15 + v16);
          if (*(v15 + v16 + 23) < 0)
          {
            v18 = *v18;
          }

          Word = TLexicon::findWord(a1[3], v18);
          if (!Word)
          {
            v20 = (*(v14 + 32) + v16);
            if (*(v20 + 23) < 0)
            {
              v20 = *v20;
            }

            Word = TLexicon::addTempWord(a1[3], v20, 0, 0, 0);
          }

          v42[0] = TWord::getHeadClone(Word);
          std::vector<TWord const*>::push_back[abi:ne200100](&v39, v42);
          ++v17;
          v15 = *(v14 + 32);
          v16 += 24;
        }

        while (v17 < 0xAAAAAAAAAAAAAAABLL * ((*(v14 + 40) - v15) >> 3));
      }
    }
  }

  v38 = 0;
  v21 = 0uLL;
  *v37 = 0u;
  if (a5)
  {
    v22 = 0;
    do
    {
      v23 = *(a4 + 8 * v22) - 1;
      v24 = a1[5];
      if (v23 >= (a1[6] - v24) >> 3)
      {
        v25 = 0;
      }

      else
      {
        v25 = *(v24 + 8 * v23);
      }

      std::vector<TState const*>::reserve(v37, 0xAAAAAAAAAAAAAAABLL * ((*(v25 + 40) - *(v25 + 32)) >> 3) + ((v37[1] - v37[0]) >> 3));
      v26 = *(v25 + 32);
      if (*(v25 + 40) != v26)
      {
        v27 = 0;
        v28 = 0;
        do
        {
          v29 = (v26 + v27);
          if (*(v26 + v27 + 23) < 0)
          {
            v29 = *v29;
          }

          v30 = TLexicon::findWord(a1[3], v29);
          if (!v30)
          {
            v31 = (*(v25 + 32) + v27);
            if (*(v31 + 23) < 0)
            {
              v31 = *v31;
            }

            v30 = TLexicon::addTempWord(a1[3], v31, 0, 0, 0);
          }

          v42[0] = TWord::getHeadClone(v30);
          std::vector<TWord const*>::push_back[abi:ne200100](v37, v42);
          ++v28;
          v26 = *(v25 + 32);
          v27 += 24;
        }

        while (v28 < 0xAAAAAAAAAAAAAAABLL * ((*(v25 + 40) - v26) >> 3));
      }

      ++v22;
    }

    while (v22 != a5);
    v21 = *v37;
  }

  __p[0] = 0;
  __p[1] = 0;
  v36 = 0;
  v42[0] = &unk_287523E28;
  v42[1] = 1;
  v42[2] = &unk_287523E28;
  v42[3] = 1;
  v42[4] = &unk_287523E28;
  v42[5] = 1;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  TAligner<TWord const*,TCost<TWord const*,std::equal_to<TWord const*>>>::align<std::__wrap_iter<TWord const**>>(v42, v39, v40, v21, *(&v21 + 1), __p);
  if (v36 >= 0)
  {
    v32 = __p;
  }

  else
  {
    v32 = __p[0];
  }

  TBuffer<char>::assign(a6, v32);
  TAligner<TWord const*,TCost<TWord const*,std::equal_to<TWord const*>>>::~TAligner(v42);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p[0]);
  }

  if (v37[0])
  {
    v37[1] = v37[0];
    operator delete(v37[0]);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  v33 = *MEMORY[0x277D85DE8];
}

void sub_2626C137C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  TAligner<TWord const*,TCost<TWord const*,std::equal_to<TWord const*>>>::~TAligner(&a22);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

uint64_t TAligner<TWord const*,TCost<TWord const*,std::equal_to<TWord const*>>>::align<std::__wrap_iter<TWord const**>>(void *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, unint64_t a6)
{
  v6 = a4;
  v7 = a2;
  v9 = ((a3 - a2) >> 3) + 1;
  v10 = ((a5 - a4) >> 3) + 1;
  if (v10 >= v9)
  {
    v72 = 73;
    v70 = 68;
    v73 = ((a5 - a4) >> 3) + 1;
    v74 = ((a3 - a2) >> 3) + 1;
  }

  else
  {
    v72 = 68;
    v70 = 73;
    v7 = a4;
    v6 = a2;
    v73 = ((a3 - a2) >> 3) + 1;
    v74 = ((a5 - a4) >> 3) + 1;
  }

  v11 = a1[13];
  v12 = a1 + 13;
  v13 = a1[14] - v11;
  if (v10 * v9 <= v13)
  {
    if (v10 * v9 < v13)
    {
      a1[14] = v11 + v10 * v9;
    }
  }

  else
  {
    std::vector<char>::__append((a1 + 13), v10 * v9 - v13);
  }

  std::vector<unsigned long>::resize(a1 + 7, 3 * v74);
  std::vector<unsigned short>::resize(a1 + 10, 2 * v74);
  v14 = a1[7];
  v14[2 * v74] = 0;
  *v14 = 0;
  *a1[10] = 0;
  *a1[13] = 0;
  if (v74 >= 2)
  {
    v15 = 0;
    v16 = 3;
    if (v10 < v9)
    {
      v16 = 5;
    }

    do
    {
      v17 = a1[v16];
      v18 = (a1[7] + 8 * v15);
      *(v18 + ((16 * v74) | 8)) = v17;
      v18[1] = *v18 + v17;
      *(a1[10] + 2 * v15 + 2) = 0;
      *(a1[13] + v15++ + 1) = v70;
    }

    while (v74 - 1 != v15);
  }

  v19 = v74;
  v20 = v74;
  if (v73 >= 2)
  {
    v21 = 0;
    v22 = 0;
    v23 = 40;
    if (v10 < v9)
    {
      v23 = 24;
    }

    v71 = v23;
    v24 = v74 + 1;
    v25 = 1;
    v26 = v74;
    v27 = (16 * v74) | 8;
    while (1)
    {
      v28 = *(a1 + v71);
      *(a1[7] + 8 * v26) = *(a1[7] + 8 * v22) + v28;
      v75 = v26;
      *(a1[10] + 2 * v26) = 0;
      *(a1[13] + v25 * v19) = v72;
      if (v19 >= 2)
      {
        break;
      }

LABEL_49:
      ++v25;
      ++v6;
      v19 = v74;
      v21 += v74;
      v24 += v74;
      v20 = v22;
      v26 = v22;
      v22 = v75;
      if (v25 == v73)
      {
        goto LABEL_50;
      }
    }

    v29 = 0;
    v30 = v26 - 1;
    v31 = 2 * v22;
    v32 = 8 * v22;
    v33 = v22 + 1;
    v34 = 2 * v26 + 2;
    v35 = 8 * v26 + 8;
    v36 = 1;
    while (1)
    {
      if (v10 >= v9)
      {
        v37 = v7[v29];
        v38 = *v6;
      }

      else
      {
        v37 = *v6;
        v38 = v7[v29];
      }

      if (v37 == v38)
      {
        v40 = 0;
        v41 = *(a1[7] + v32 + 8 * v29);
        if (*(*v12 + v21 + v29) == 67)
        {
          v42 = *(a1[10] + v31 + 2 * v29);
        }

        else
        {
          v42 = *(a1[10] + v31 + 2 * v29) + 1;
        }

        v43 = 67;
      }

      else
      {
        v39 = a1[1];
        if (v39 == -1)
        {
          v43 = 0;
          v41 = 0;
          v42 = 0;
          v40 = 1;
        }

        else
        {
          v40 = 0;
          v41 = *(a1[7] + v32 + 8 * v29) + v39;
          v42 = *(a1[10] + v31 + 2 * v29);
          v43 = 83;
        }
      }

      v44 = a1[7];
      if (v10 >= v9)
      {
        v45 = v33 + v29;
        v46 = v28;
      }

      else
      {
        v45 = v30 + v36;
        v46 = *(v44 + v27 + 8 * v29);
      }

      v47 = *(v44 + 8 * v45) + v46;
      if (v47 < v41)
      {
        v48 = 1;
      }

      else
      {
        v48 = v40;
      }

      if (v48 == 1)
      {
        LOWORD(v45) = *(a1[10] + 2 * v45);
      }

      else
      {
        if (v47 != v41)
        {
          goto LABEL_40;
        }

        LODWORD(v45) = *(a1[10] + 2 * v45);
        if (v45 >= v42)
        {
          goto LABEL_40;
        }
      }

      v43 = 73;
      v41 = v47;
      v42 = v45;
LABEL_40:
      if (v10 >= v9)
      {
        v49 = v30 + v36;
        v50 = *(v44 + v27 + 8 * v29);
      }

      else
      {
        v49 = v33 + v29;
        v50 = v28;
      }

      v51 = *(v44 + 8 * v49) + v50;
      if (v51 >= v41)
      {
        v52 = a1[10];
        if (v51 != v41)
        {
          goto LABEL_48;
        }

        LODWORD(v49) = *(v52 + 2 * v49);
        if (v49 >= v42)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v52 = a1[10];
        LOWORD(v49) = *(v52 + 2 * v49);
      }

      v43 = 68;
      v41 = v51;
      v42 = v49;
LABEL_48:
      *(v44 + v35 + 8 * v29) = v41;
      *(v52 + v34 + 2 * v29) = v42;
      *(*v12 + v24 + v29) = v43;
      ++v36;
      if (v74 - 1 == ++v29)
      {
        goto LABEL_49;
      }
    }
  }

LABEL_50:
  MEMORY[0x26672AEC0](a6, &byte_262899963);
  std::string::reserve(a6, v10 + v9);
  v53 = a1[13];
  v54 = 0;
  v55 = ~v53 + a1[14];
  if (v55)
  {
    v56 = v74;
    do
    {
      std::string::push_back(a6, *(v53 + v55));
      v53 = *v12;
      v57 = *(*v12 + v55);
      if (v57 != 67)
      {
        ++v54;
      }

      v58 = v55 + ~v74;
      if (v57 == v70)
      {
        v58 = v55 - 1;
      }

      if (v57 == v72)
      {
        v55 -= v74;
      }

      else
      {
        v55 = v58;
      }
    }

    while (v55);
  }

  else
  {
    v56 = v74;
  }

  v59 = *(a6 + 23);
  v60 = v59 < 0;
  if (v59 >= 0)
  {
    v61 = a6;
  }

  else
  {
    v61 = *a6;
  }

  if (v60)
  {
    v62 = *(a6 + 8);
  }

  else
  {
    v62 = *(a6 + 23);
  }

  v63 = (v61 + v62 - 1);
  if (v62)
  {
    v64 = v63 > v61;
  }

  else
  {
    v64 = 0;
  }

  if (v64)
  {
    v65 = v61 + 1;
    do
    {
      v66 = *(v65 - 1);
      *(v65 - 1) = *v63;
      *v63-- = v66;
    }

    while (v65++ < v63);
  }

  return *(a1[7] + 8 * v20 + 8 * v56 - 8);
}

void TResultManager::replace(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v33 = *MEMORY[0x277D85DE8];
  v29 = &v31;
  v30 = xmmword_26286B6F0;
  v32 = 1;
  if (a4)
  {
    for (i = 0; i != a4; ++i)
    {
      v12 = 0;
      v13 = *(*(a1[5] + 8 * *(a2 + 8 * i) - 8) + 16);
        ;
      }

      TBuffer<char>::insert(&v29, *(&v30 + 1), v13, v12 - 1);
    }
  }

  v25 = &v27;
  v26 = xmmword_26286B6F0;
  v28 = 1;
  for (j = a5 + a4; j < a3; ++j)
  {
    v16 = 0;
    v17 = *(*(a1[5] + 8 * *(a2 + 8 * j) - 8) + 16);
      ;
    }

    TBuffer<char>::insert(&v25, *(&v26 + 1), v17, v16 - 1);
  }

  if (*(&v30 + 1) >= v30)
  {
    v19 = a6;
    if (v32)
    {
      LOBYTE(v24) = 0;
      TBuffer<char>::insert(&v29, *(&v30 + 1), &v24, 1uLL);
      --*(&v30 + 1);
    }

    else if (v30)
    {
      *(v29 + v30 - 1) = 0;
    }
  }

  else
  {
    *(v29 + *(&v30 + 1)) = 0;
    v19 = a6;
  }

  v20 = v29;
  if (*(&v26 + 1) >= v26)
  {
    if (v28)
    {
      LOBYTE(v24) = 0;
      TBuffer<char>::insert(&v25, *(&v26 + 1), &v24, 1uLL);
      --*(&v26 + 1);
    }

    else if (v26)
    {
      v25[v26 - 1] = 0;
    }
  }

  else
  {
    v25[*(&v26 + 1)] = 0;
  }

  v21 = TTokenizer::tokenize(a1[4], v19, v20, v25, *(*(a1[4] + 24) + 29784), 0);
  TFsa::TFsa(v23);
  tokenizerResultToFsa(v21, 0, a1[3], a1[4]);
}

void sub_2626C2540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (LOBYTE(STACK[0x3C8]) == 1 && STACK[0x2B0] != v70 && STACK[0x2B0] != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0x4E8]) == 1)
  {
    v73 = STACK[0x3D0];
    if (STACK[0x3D0] != a11)
    {
      if (v73)
      {
        MEMORY[0x26672B1B0](v73, 0x1000C4077774924);
      }
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a30)
  {
    operator delete(a30);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  TFsa::~TFsa(&a39);
  if (a67)
  {
    a68 = a67;
    operator delete(a67);
  }

  TFsa::~TFsa(&a70);
  if (LOBYTE(STACK[0x608]) == 1)
  {
    v74 = STACK[0x4F0];
    if (STACK[0x4F0] != a12)
    {
      if (v74)
      {
        MEMORY[0x26672B1B0](v74, 0x1000C4077774924);
      }
    }
  }

  if (LOBYTE(STACK[0x728]) == 1)
  {
    v75 = STACK[0x610];
    if (STACK[0x610] != a13)
    {
      if (v75)
      {
        MEMORY[0x26672B1B0](v75, 0x1000C4077774924);
      }
    }
  }

  _Unwind_Resume(a1);
}

uint64_t TResultManager::getAllHints(uint64_t result, uint64_t a2)
{
  *(a2 + 16) = 0;
  if (*(result + 72) != *(result + 64))
  {
    v7[5] = v2;
    v7[6] = v3;
    v5 = result;
    v6 = 0;
    do
    {
      v7[0] = ++v6;
      result = TBuffer<TPItnRuleHandle_fake **>::insert(a2, *(a2 + 16), v7, 1uLL);
    }

    while (v6 < 0x4EC4EC4EC4EC4EC5 * ((*(v5 + 72) - *(v5 + 64)) >> 3));
  }

  return result;
}

uint64_t TResultManager::getHintDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 64) + 104 * a2;
  v4 = (v3 - 24);
  if (*(v3 - 1) < 0)
  {
    v4 = *v4;
  }

  return TLocaleInfo::multiByteToUnicode(*(a1 + 24) + 240, v4, a3);
}

uint64_t TResultManager::createHint(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v18 = 0;
  v16 = 0u;
  *__p = 0u;
  *v14 = 0u;
  *v15 = 0u;
  memset(v13, 0, sizeof(v13));
  std::vector<THint>::push_back[abi:ne200100](a1 + 8, v13);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[1]);
  }

  if (SHIBYTE(v15[0]) < 0)
  {
    operator delete(v14[0]);
  }

  v10 = a1[9];
  *(v10 - 104) = a2;
  *(v10 - 96) = a3;
  v11 = *(a1[1] + 136);
  *(v10 - 88) = a5;
  *(v10 - 80) = v11;
  if (a4)
  {
    MEMORY[0x26672AEC0](v10 - 24, a4);
    v10 = a1[9];
  }

  return v10 - 104;
}

uint64_t std::vector<THint>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<THint>::__emplace_back_slow_path<THint>(a1, a2);
  }

  else
  {
    v4 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v4;
    v5 = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(v3 + 32) = v5;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    v6 = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(v3 + 56) = v6;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 56) = 0;
    v7 = *(a2 + 80);
    *(v3 + 96) = *(a2 + 96);
    *(v3 + 80) = v7;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    result = v3 + 104;
  }

  a1[1] = result;
  return result;
}

uint64_t TResultManager::createHint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5);
  v8 = v7;
  v9 = v6;
  v11 = v10;
  v13 = v12;
  v14 = v5;
  v127 = *MEMORY[0x277D85DE8];
  v121 = v15;
  v123 = v125;
  v124 = xmmword_26286B6F0;
  v126 = 1;
  if (v6 == 1)
  {
    v28 = TParamManager::nameToParam(*(v5 + 8), v7);
    v103 = v13;
    v104 = v11;
    if (v28 || (v28 = TParamManager::nameToParam(*(v14[3] + 336), v8)) != 0)
    {
      v29 = **v28;
    }

    else
    {
      v30 = 0;
    }

    v31 = *v121;
    ActiveConfigHandle = TParam::getActiveConfigHandle(v30);
    if (((v31 != 48) ^ *(v30 + TParam::getValidConfig(v30, ActiveConfigHandle) + 152)))
    {
      v33 = v30 + 24 * (v31 != 48);
      v34 = v33 + 200;
      v35 = v33[223];
      if (v35 < 0)
      {
        if (*(v34 + 1))
        {
          v34 = *v34;
          if (v34)
          {
            goto LABEL_49;
          }
        }
      }

      else if (v35)
      {
        goto LABEL_49;
      }

      v54 = v14[1];
      v55 = TParam::getActiveConfigHandle((v54 + 19248));
      if (*(v54 + TParam::getValidConfig((v54 + 19248), v55) + 19400) == 1)
      {
        v60 = "false";
        if (v31 != 48)
        {
          v60 = "true";
        }

        tknPrintf("No description found for allowable value '%s'; hint rejected.\n", v56, v57, v58, v59, v60);
      }

      goto LABEL_121;
    }

    v37 = v14[1];
    v38 = TParam::getActiveConfigHandle((v37 + 19248));
    if (*(v37 + TParam::getValidConfig((v37 + 19248), v38) + 19400) != 1)
    {
      goto LABEL_121;
    }

    loggableUnicode(v8, &__p);
    if (v114 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

LABEL_43:
    tknPrintf("Parameter %s already set to desired value; hint rejected.\n", v39, v40, v41, v42, p_p);
    goto LABEL_44;
  }

  if (v6 == 3)
  {
    v117 = v119;
    v118 = xmmword_26286B6F0;
    v120 = 1;
    TLexicon::getWrittenForm(*(v5 + 24), v7, &v117);
    if (*(&v118 + 1))
    {
      v26 = v121;
      if (!*v121)
      {
        goto LABEL_65;
      }

      if (*(&v118 + 1) >= v118)
      {
        if (v120)
        {
          LODWORD(__p) = 0;
          TBuffer<wchar_t>::insert(&v117, *(&v118 + 1), &__p, 1uLL);
          v27 = v117;
          --*(&v118 + 1);
          v26 = v121;
        }

        else
        {
          v27 = v117;
          if (v118)
          {
            v117[v118 - 1] = 0;
          }
        }
      }

      else
      {
        v27 = v117;
        v117[*(&v118 + 1)] = 0;
      }

      if (!wcscmp(v27, v26))
      {
LABEL_65:
        v64 = 0;
        v65 = 0;
        v61 = v14[2];
        v62 = (v61 + 88);
        v63 = v61[111];
      }

      else
      {
        v61 = v14[2];
        v62 = (v61 + 112);
        v63 = v61[135];
        v64 = 1;
        v65 = 1;
      }

      if (v63 < 0)
      {
        v62 = *v62;
        v65 = v64;
      }

      if (*v62)
      {
        v103 = v13;
        v104 = v11;
        v102 = v62;
        __p = v115;
        v114 = xmmword_26286B6F0;
        v116 = 1;
        (*(*v61 + 48))(v61, v8, 0, &__p);
        v66 = *(&v114 + 1);
        if (*(&v114 + 1))
        {
          v67 = 0;
          v68 = 0;
          v69 = __p;
          v70 = v121;
          v71 = xmmword_26286B6F0;
          do
          {
            v72 = *v69;
            if (*v69 && (v73 = *(v14[2] + 32), v72 <= (*(v14[2] + 40) - v73) >> 3))
            {
              v74 = *(v73 + 8 * v72 - 8);
            }

            else
            {
              v74 = 0;
            }

            v75 = (v74 + 120);
            v76 = *(v74 + 143);
            v77 = (v74 + 120);
            if (v76 < 0)
            {
              v77 = *v75;
            }

            if (*v77)
            {
              if (*(v74 + 192) != -1)
              {
                goto LABEL_112;
              }

              if (!v65)
              {
                goto LABEL_83;
              }

              if (v76 < 0)
              {
                v75 = *v75;
              }

              v78 = wcscmp(v75, v70);
              v71 = xmmword_26286B6F0;
              if (!v78)
              {
LABEL_83:
                if (*(v74 + 144) == 1)
                {
                  if (*(v74 + 56) == *(v74 + 48) && *(v74 + 32) == *(v74 + 24))
                  {
                    v68 = 1;
                  }

                  else
                  {
                    v68 = 1;
                    v67 = 1;
                  }
                }
              }
            }

            ++v69;
            --v66;
          }

          while (v66);
        }

        else
        {
          v68 = 0;
          v67 = 0;
          v71 = xmmword_26286B6F0;
        }

        if (v67 & 1) != 0 || ((v65 ^ v68))
        {
LABEL_112:
          v108 = 0;
          v109 = v111;
          v110 = v71;
          v112 = 1;
          v106 = 0;
          v107 = 0;
          if (*(&v118 + 1) >= v118)
          {
            if (v120)
            {
              v122 = 0;
              TBuffer<wchar_t>::insert(&v117, *(&v118 + 1), &v122, 1uLL);
              v89 = v117;
              --*(&v118 + 1);
            }

            else
            {
              v89 = v117;
              if (v118)
              {
                v117[v118 - 1] = 0;
              }
            }
          }

          else
          {
            v89 = v117;
            v117[*(&v118 + 1)] = 0;
          }

          v105 = v89;
          std::vector<wchar_t const*>::push_back[abi:ne200100](&v106, &v105);
          std::vector<wchar_t const*>::push_back[abi:ne200100](&v106, &v121);
          formatString(v102, &v106, &v109);
          v98 = v14[3];
          if (*(&v110 + 1) >= v110)
          {
            if (v112)
            {
              LODWORD(v105) = 0;
              TBuffer<wchar_t>::insert(&v109, *(&v110 + 1), &v105, 1uLL);
              v99 = v109;
              --*(&v110 + 1);
            }

            else
            {
              v99 = v109;
              if (v110)
              {
                *(v109 + v110 - 1) = 0;
              }
            }
          }

          else
          {
            v99 = v109;
            *(v109 + *(&v110 + 1)) = 0;
          }

          TLocaleInfo::unicodeToMultiByte(v98 + 240, v99, &v123);
          if (v106)
          {
            v107 = v106;
            operator delete(v106);
          }

          if (v112 == 1 && v109 != v111 && v109)
          {
            MEMORY[0x26672B1B0]();
          }

          if (v116 == 1 && __p != v115 && __p)
          {
            MEMORY[0x26672B1B0]();
          }

          if (v120 == 1 && v117 != v119 && v117)
          {
            MEMORY[0x26672B1B0]();
          }

          goto LABEL_144;
        }

        v82 = v14[1];
        v83 = TParam::getActiveConfigHandle((v82 + 19248));
        if (*(v82 + TParam::getValidConfig((v82 + 19248), v83) + 19400) == 1)
        {
          loggableUnicode(v8, &v109);
          v88 = v110 >= 0 ? &v109 : v109;
          tknPrintf("Rewrite rule already defined for '%s'; hint rejected.\n", v84, v85, v86, v87, v88);
          if (SHIBYTE(v110) < 0)
          {
            operator delete(v109);
          }
        }

        if (v116 == 1 && __p != v115 && __p)
        {
          MEMORY[0x26672B1B0]();
        }

        if (v120 != 1)
        {
          goto LABEL_121;
        }

        v81 = v117;
        if (v117 == v119)
        {
          goto LABEL_121;
        }

LABEL_94:
        if (v81)
        {
          MEMORY[0x26672B1B0](v81, 0x1000C4052888210);
        }

        goto LABEL_121;
      }

      v79 = v14[1];
      v80 = TParam::getActiveConfigHandle((v79 + 19248));
      if (*(v79 + TParam::getValidConfig((v79 + 19248), v80) + 19400) == 1)
      {
        tknPrintString("Hint template not found for rule rewrite; hint rejected.\n");
      }
    }

    else
    {
      v44 = v14[1];
      v45 = TParam::getActiveConfigHandle((v44 + 19248));
      if (*(v44 + TParam::getValidConfig((v44 + 19248), v45) + 19400) == 1)
      {
        loggableUnicode(v8, &__p);
        v50 = v114 >= 0 ? &__p : __p;
        tknPrintf("Can't create hint for wordname with empty written form: '%s'; hint rejected;\n", v46, v47, v48, v49, v50);
        if (SHIBYTE(v114) < 0)
        {
          operator delete(__p);
        }
      }
    }

    if (v120 != 1)
    {
      goto LABEL_121;
    }

    v81 = v117;
    if (v117 == v119)
    {
      goto LABEL_121;
    }

    goto LABEL_94;
  }

  if (v6 != 2)
  {
    v36 = 0;
    goto LABEL_146;
  }

  v16 = TParamManager::nameToParam(*(v5 + 8), v7);
  if (v16 || (v16 = TParamManager::nameToParam(*(v14[3] + 336), v8)) != 0)
  {
    v17 = **v16;
  }

  else
  {
    v18 = 0;
  }

  v19 = TStringParam::get(v18);
  if (!wcscmp(v19, v121))
  {
    v51 = v14[1];
    v52 = TParam::getActiveConfigHandle((v51 + 19248));
    if (*(v51 + TParam::getValidConfig((v51 + 19248), v52) + 19400) != 1)
    {
      goto LABEL_121;
    }

    loggableUnicode(v8, &__p);
    if (v114 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    goto LABEL_43;
  }

  v103 = v13;
  v104 = v11;
  v20 = *(v18 + 163);
  v21 = *(v18 + 164) - v20;
  if (!v21)
  {
LABEL_144:
    v36 = *(&v124 + 1);
    if (*(&v124 + 1) >= v124)
    {
      v13 = v103;
      v11 = v104;
      if (v126)
      {
        LOBYTE(__p) = 0;
        TBuffer<char>::insert(&v123, *(&v124 + 1), &__p, 1uLL);
        --*(&v124 + 1);
      }

      else if (v124)
      {
        v123[v124 - 1] = 0;
      }

      goto LABEL_147;
    }

    v13 = v103;
    v11 = v104;
LABEL_146:
    v123[v36] = 0;
LABEL_147:
    Hint = TResultManager::createHint(v14, v13, v11, v123, v9);
    MEMORY[0x26672AF30](Hint + 32, v8);
    MEMORY[0x26672AF30](Hint + 56, v121);
    goto LABEL_148;
  }

  v22 = 0;
  v23 = 0xAAAAAAAAAAAAAAABLL * (v21 >> 3);
  if (v23 <= 1)
  {
    v24 = 1;
  }

  else
  {
    v24 = v23;
  }

  while (1)
  {
    v25 = (v20 + v22);
    if (*(v20 + v22 + 23) < 0)
    {
      v25 = *v25;
    }

    if (!wcscmp(v121, v25))
    {
      break;
    }

    v22 += 24;
    if (!--v24)
    {
      goto LABEL_144;
    }
  }

  v53 = *(v18 + 169);
  if (v53 != *(v18 + 170))
  {
    v34 = (v53 + v22);
    if ((*(v53 + v22 + 23) & 0x80000000) == 0 || (v34 = *v34) != 0)
    {
LABEL_49:
      TLocaleInfo::unicodeToMultiByte(v14[3] + 240, v34, &v123);
      goto LABEL_144;
    }
  }

  v90 = v14[1];
  v91 = TParam::getActiveConfigHandle((v90 + 19248));
  if (*(v90 + TParam::getValidConfig((v90 + 19248), v91) + 19400) == 1)
  {
    loggableUnicode(v121, &__p);
    if (v114 >= 0)
    {
      v96 = &__p;
    }

    else
    {
      v96 = __p;
    }

    tknPrintf("No description found for allowable value '%s'; hint rejected.\n", v92, v93, v94, v95, v96);
LABEL_44:
    if (SHIBYTE(v114) < 0)
    {
      operator delete(__p);
    }
  }

LABEL_121:
  Hint = 0;
LABEL_148:
  if (v126 == 1 && v123 != v125 && v123)
  {
    MEMORY[0x26672B1B0]();
  }

  v100 = *MEMORY[0x277D85DE8];
  return Hint;
}

void sub_2626C3480(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x4A7]) < 0)
  {
    operator delete(STACK[0x490]);
  }

  if (LOBYTE(STACK[0x11F8]) == 1)
  {
    v3 = STACK[0x10E0];
    if (STACK[0x10E0] != v1)
    {
      if (v3)
      {
        MEMORY[0x26672B1B0](v3, 0x1000C4077774924);
      }
    }
  }

  _Unwind_Resume(a1);
}

uint64_t TResultManager::applyHint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = MEMORY[0x28223BE20](a1, a2, a3, a4, a5);
  v6 = result;
  v8 = *(result + 64) + 104 * v7;
  v9 = *(result + 8);
  v10 = *(v9 + 136);
  *(v9 + 136) = *(v8 - 80);
  v11 = *(v8 - 88);
  if ((v11 - 1) < 2)
  {
    v12 = (v8 - 72);
    v13 = (v8 - 72);
    if (*(v8 - 49) < 0)
    {
      v13 = *v12;
    }

    v14 = TParamManager::nameToParam(v9, v13);
    if (!v14)
    {
      if (*(v8 - 49) < 0)
      {
        v12 = *v12;
      }

      v14 = TParamManager::nameToParam(*(*(v6 + 24) + 336), v12);
    }

    v15 = (v8 - 48);
    if (*(v8 - 25) < 0)
    {
      v15 = *v15;
    }

    (*(*v14 + 32))(v14, *(v8 - 80), v15);
    result = v14[18];
    if (result)
    {
      v16 = **result;
      ActiveConfigHandle = TParam::getActiveConfigHandle(v17);
      result = TParam::getValidConfig(v17, ActiveConfigHandle);
      if ((*(v17 + result + 152) & 1) == 0)
      {
        v19 = TParam::getActiveConfigHandle(v17);
        *(v17 + v19 + 176) = 1;
        *(v17 + 14) |= 1 << (v19 + 33);
        result = TParam::notifyChange(v17, v19);
      }
    }

    goto LABEL_217;
  }

  if (v11 != 3)
  {
    goto LABEL_217;
  }

  v129 = v131;
  v130 = xmmword_26286B6F0;
  v132 = 1;
  v125 = v127;
  v126 = xmmword_26286B6F0;
  v128 = 1;
  v20 = *(result + 16);
  v91 = (v8 - 72);
  if (*(v8 - 49) < 0)
  {
    v21 = *v91;
  }

  (*(*v20 + 48))(v20);
  v22 = v8 - 72;
  if (*(v8 - 49) < 0)
  {
    v22 = *v91;
  }

  (*(**(v6 + 16) + 48))(*(v6 + 16), v22, 1, &v125);
  v84 = v10;
  v23 = (v8 - 72);
  if (*(v8 - 49) < 0)
  {
    v23 = *v91;
  }

  v24 = (v8 - 48);
  v90 = v8;
  v85 = (v8 - 48);
  if (*(v8 - 25) < 0)
  {
    v24 = *v85;
  }

  result = wcscmp(v23, v24);
  v25 = result;
  v121 = v123;
  v122 = xmmword_26286B6F0;
  v26 = 1;
  v124 = 1;
  v117 = v119;
  v118 = xmmword_26286B6F0;
  v120 = 1;
  v113 = v115;
  v114 = xmmword_26286B6F0;
  v116 = 1;
  v109 = v111;
  v110 = xmmword_26286B6F0;
  v112 = 1;
  v105 = v107;
  v106 = xmmword_26286B6F0;
  v108 = 1;
  v101 = v103;
  v102 = xmmword_26286B6F0;
  v104 = 1;
  v97 = v99;
  v98 = xmmword_26286B6F0;
  v100 = 1;
  v93 = v95;
  v94 = xmmword_26286B6F0;
  v96 = 1;
  if (!*(&v130 + 1))
  {
    v80 = v8;
    if (!result)
    {
      goto LABEL_177;
    }

LABEL_170:
    if (v26)
    {
      if (*(v80 - 49) < 0)
      {
        v91 = *v91;
      }

      if (*(v80 - 25) < 0)
      {
        v81 = *v85;
      }

      else
      {
        v81 = v85;
      }

      LOBYTE(v82) = 0;
      result = (*(**(v6 + 16) + 16))(*(v6 + 16), v91, v81, 1, 0, 0, 0, 0, 0, 0, -1, v82);
    }

    goto LABEL_177;
  }

  v83 = v9;
  v27 = 0;
  v89 = -1;
  do
  {
    (*(**(v6 + 16) + 64))(*(v6 + 16), *&v129[8 * v27], &v121);
    (*(**(v6 + 16) + 72))(*(v6 + 16), *&v129[8 * v27], 0, &v113);
    (*(**(v6 + 16) + 72))(*(v6 + 16), *&v129[8 * v27], 1, &v105);
    if (v25)
    {
      if (*(&v126 + 1))
      {
        v28 = 0;
        v29 = -1;
        do
        {
          if ((*(**(v6 + 16) + 112))(*(v6 + 16), *&v125[8 * v28]))
          {
            (*(**(v6 + 16) + 64))(*(v6 + 16), *&v125[8 * v28], &v117);
            if (*(&v122 + 1) >= v122)
            {
              if (v124)
              {
                LODWORD(v133) = 0;
                TBuffer<wchar_t>::insert(&v121, *(&v122 + 1), &v133, 1uLL);
                v30 = v121;
                --*(&v122 + 1);
              }

              else
              {
                v30 = v121;
                if (v122)
                {
                  v121[v122 - 1] = 0;
                }
              }
            }

            else
            {
              v30 = v121;
              v121[*(&v122 + 1)] = 0;
            }

            if (*(&v118 + 1) >= v118)
            {
              if (v120)
              {
                LODWORD(v133) = 0;
                TBuffer<wchar_t>::insert(&v117, *(&v118 + 1), &v133, 1uLL);
                v31 = v117;
                --*(&v118 + 1);
              }

              else
              {
                v31 = v117;
                if (v118)
                {
                  v117[v118 - 1] = 0;
                }
              }
            }

            else
            {
              v31 = v117;
              v117[*(&v118 + 1)] = 0;
            }

            if (!wcscmp(v30, v31))
            {
              (*(**(v6 + 16) + 72))(*(v6 + 16), *&v125[8 * v28], 0, &v109);
              v32 = *(&v114 + 1);
              if (*(&v114 + 1) == *(&v110 + 1))
              {
                if (*(&v114 + 1))
                {
                  v33 = v113;
                  v34 = v109;
                  while (*v33 == *v34)
                  {
                    ++v33;
                    ++v34;
                    if (!--v32)
                    {
                      goto LABEL_46;
                    }
                  }
                }

                else
                {
LABEL_46:
                  (*(**(v6 + 16) + 72))(*(v6 + 16), *&v125[8 * v28], 1, &v101);
                  v35 = *(&v106 + 1);
                  if (*(&v106 + 1) == *(&v102 + 1))
                  {
                    if (*(&v106 + 1))
                    {
                      v36 = v105;
                      v37 = v101;
                      while (*v36 == *v37)
                      {
                        ++v36;
                        ++v37;
                        if (!--v35)
                        {
                          goto LABEL_51;
                        }
                      }
                    }

                    else
                    {
LABEL_51:
                      if (v29 == -1 || (*(**(v6 + 16) + 120))(*(v6 + 16), *&v125[8 * v28]) == -1)
                      {
                        v29 = *&v125[8 * v28];
                      }
                    }
                  }
                }
              }
            }
          }

          ++v28;
        }

        while (v28 < *(&v126 + 1));
        v38 = v29 == -1;
        if (v29 != -1)
        {
          (*(**(v6 + 16) + 80))(*(v6 + 16), v29, &v93);
        }

        v39 = *(&v114 + 1);
        v40 = *(&v106 + 1);
      }

      else
      {
        v39 = *(&v114 + 1);
        v40 = *(&v106 + 1);
        v38 = 1;
      }

      if (!(v39 | v40))
      {
        goto LABEL_62;
      }

      if (*(&v122 + 1) >= v122)
      {
        if ((v124 & 1) == 0)
        {
          v43 = v121;
          v45 = v85;
          if (v122)
          {
            v121[v122 - 1] = 0;
          }

          v44 = v90;
          goto LABEL_89;
        }

        LODWORD(v133) = 0;
        TBuffer<wchar_t>::insert(&v121, *(&v122 + 1), &v133, 1uLL);
        v43 = v121;
        --*(&v122 + 1);
      }

      else
      {
        v43 = v121;
        v121[*(&v122 + 1)] = 0;
      }

      v44 = v90;
      v45 = v85;
LABEL_89:
      v54 = v45;
      if (*(v44 - 25) < 0)
      {
        v54 = *v45;
      }

      v92 = wcscmp(v43, v54) == 0;
LABEL_92:
      if (v92 == (*(**(v6 + 16) + 112))(*(v6 + 16), *&v129[8 * v27]))
      {
        result = (*(**(v6 + 16) + 120))(*(v6 + 16), *&v129[8 * v27]);
        if (result == -1)
        {
          goto LABEL_166;
        }
      }

      if (v38)
      {
        (*(**(v6 + 16) + 80))(*(v6 + 16), *&v129[8 * v27], &v97);
        TBuffer<TPItnRuleControl>::resize(&v93, 0);
        v55 = *(&v98 + 1);
        if (*(&v98 + 1))
        {
          v56 = 0;
          v57 = 0;
          while (!v25)
          {
            v58 = *&v97[v56];
            if ((v58 - 4) <= 0xFFFFFFFFFFFFFFFCLL)
            {
              goto LABEL_100;
            }

LABEL_101:
            ++v57;
            v56 += 16;
            if (v57 >= v55)
            {
              goto LABEL_102;
            }
          }

          v58 = *&v97[v56];
LABEL_100:
          v59 = *&v97[v56 + 8];
          *&v133 = v58;
          *(&v133 + 1) = v59;
          TBuffer<TPItnRuleControl>::insert(&v93, *(&v94 + 1), &v133, 1uLL);
          v55 = *(&v98 + 1);
          goto LABEL_101;
        }
      }

LABEL_102:
      (*(**(v6 + 16) + 24))(*(v6 + 16), *&v129[8 * v27]);
      v60 = v91;
      if (*(v90 - 49) < 0)
      {
        v60 = *v91;
      }

      v88 = v60;
      v61 = *(v6 + 16);
      if (*(&v122 + 1) >= v122)
      {
        if (v124)
        {
          LODWORD(v133) = 0;
          TBuffer<wchar_t>::insert(&v121, *(&v122 + 1), &v133, 1uLL);
          v87 = v121;
          --*(&v122 + 1);
        }

        else
        {
          v87 = v121;
          if (v122)
          {
            v121[v122 - 1] = 0;
          }
        }
      }

      else
      {
        v87 = v121;
        v121[*(&v122 + 1)] = 0;
      }

      v62 = *(&v114 + 1);
      v63 = v114;
      if (*(&v114 + 1) >= v114)
      {
        if (v116)
        {
          *&v133 = 0;
          TBuffer<TPItnRuleHandle_fake **>::insert(&v113, *(&v114 + 1), &v133, 1uLL);
          v63 = v114;
          v62 = --*(&v114 + 1);
        }

        else
        {
          if (!v114)
          {
            v86 = v113;
            goto LABEL_125;
          }

          *&v113[8 * v114 - 8] = 0;
        }
      }

      else
      {
        *&v113[8 * *(&v114 + 1)] = 0;
      }

      v86 = v113;
      if (v62 >= v63)
      {
        if (v116)
        {
          *&v133 = 0;
          TBuffer<TPItnRuleHandle_fake **>::insert(&v113, v62, &v133, 1uLL);
          v62 = --*(&v114 + 1);
        }

        else if (v63)
        {
          *&v113[8 * v63 - 8] = 0;
        }
      }

      else
      {
        *&v113[8 * v62] = 0;
      }

LABEL_125:
      v64 = v113;
      v65 = v106;
      if (*(&v106 + 1) >= v106)
      {
        if (v108)
        {
          *&v133 = 0;
          TBuffer<TPItnRuleHandle_fake **>::insert(&v105, *(&v106 + 1), &v133, 1uLL);
          v65 = v106;
          --*(&v106 + 1);
        }

        else
        {
          v66 = v105;
          if (!v106)
          {
            goto LABEL_137;
          }

          *&v105[8 * v106 - 8] = 0;
        }
      }

      else
      {
        *&v105[8 * *(&v106 + 1)] = 0;
      }

      v66 = v105;
      if (*(&v106 + 1) >= v65)
      {
        if (v108)
        {
          *&v133 = 0;
          TBuffer<TPItnRuleHandle_fake **>::insert(&v105, *(&v106 + 1), &v133, 1uLL);
          --*(&v106 + 1);
        }

        else if (v65)
        {
          *&v105[8 * v65 - 8] = 0;
        }
      }

      else
      {
        *&v105[8 * *(&v106 + 1)] = 0;
      }

LABEL_137:
      v67 = v105;
      v68 = *(&v106 + 1);
      if (*(&v94 + 1) >= v94)
      {
        if (v96)
        {
          v133 = 0uLL;
          TBuffer<TPItnRuleControl>::insert(&v93, *(&v94 + 1), &v133, 1uLL);
          --*(&v94 + 1);
        }

        else if (v94)
        {
          v70 = &v93[16 * v94];
          *(v70 - 2) = 0;
          *(v70 - 1) = 0;
        }
      }

      else
      {
        v69 = &v93[16 * *(&v94 + 1)];
        *v69 = 0;
        v69[1] = 0;
      }

      v71 = v93;
      if (*(&v94 + 1) >= v94)
      {
        if ((v96 & 1) == 0)
        {
          v73 = v88;
          if (v94)
          {
            v74 = &v93[16 * v94];
            *(v74 - 2) = 0;
            *(v74 - 1) = 0;
          }

          goto LABEL_148;
        }

        v133 = 0uLL;
        TBuffer<TPItnRuleControl>::insert(&v93, *(&v94 + 1), &v133, 1uLL);
        --*(&v94 + 1);
      }

      else
      {
        v72 = &v93[16 * *(&v94 + 1)];
        *v72 = 0;
        v72[1] = 0;
      }

      v73 = v88;
LABEL_148:
      LOBYTE(v82) = 0;
      result = (*(*v61 + 16))(v61, v73, v87, v92, v86, &v64[8 * v62], v66, &v67[8 * v68], v71, &v93[16 * *(&v94 + 1)], -1, v82);
      goto LABEL_166;
    }

    v38 = 1;
    if (*(&v114 + 1) | *(&v106 + 1))
    {
      v92 = 0;
      goto LABEL_92;
    }

LABEL_62:
    if (v89 != -1)
    {
      v41 = (*(**(v6 + 16) + 120))(*(v6 + 16), *&v129[8 * v27]);
      v42 = *(v6 + 16);
      if (v41 != -1)
      {
        result = (*(*v42 + 24))(v42, *&v129[8 * v27]);
        goto LABEL_166;
      }

      (*(*v42 + 24))(v42, v89);
    }

    if (v38)
    {
      (*(**(v6 + 16) + 80))(*(v6 + 16), *&v129[8 * v27], &v97);
      TBuffer<TPItnRuleControl>::resize(&v93, 0);
      v46 = *(&v98 + 1);
      if (*(&v98 + 1))
      {
        v47 = 0;
        v48 = 0;
        while (!v25)
        {
          v49 = *&v97[v47];
          if ((v49 - 4) <= 0xFFFFFFFFFFFFFFFCLL)
          {
            goto LABEL_77;
          }

LABEL_78:
          ++v48;
          v47 += 16;
          if (v48 >= v46)
          {
            goto LABEL_79;
          }
        }

        v49 = *&v97[v47];
LABEL_77:
        v50 = *&v97[v47 + 8];
        *&v133 = v49;
        *(&v133 + 1) = v50;
        TBuffer<TPItnRuleControl>::insert(&v93, *(&v94 + 1), &v133, 1uLL);
        v46 = *(&v98 + 1);
        goto LABEL_78;
      }
    }

LABEL_79:
    (*(**(v6 + 16) + 24))(*(v6 + 16), *&v129[8 * v27]);
    v51 = v91;
    if (*(v90 - 49) < 0)
    {
      v51 = *v91;
    }

    v52 = *(v6 + 16);
    if (v25)
    {
      v53 = v85;
      if (*(v90 - 25) < 0)
      {
        v53 = *v85;
      }
    }

    else if (*(&v122 + 1) >= v122)
    {
      if (v124)
      {
        LODWORD(v133) = 0;
        TBuffer<wchar_t>::insert(&v121, *(&v122 + 1), &v133, 1uLL);
        v53 = v121;
        --*(&v122 + 1);
      }

      else
      {
        v53 = v121;
        if (v122)
        {
          v121[v122 - 1] = 0;
        }
      }
    }

    else
    {
      v53 = v121;
      v121[*(&v122 + 1)] = 0;
    }

    if (*(&v94 + 1) >= v94)
    {
      if (v96)
      {
        v133 = 0uLL;
        TBuffer<TPItnRuleControl>::insert(&v93, *(&v94 + 1), &v133, 1uLL);
        --*(&v94 + 1);
      }

      else if (v94)
      {
        v76 = &v93[16 * v94];
        *(v76 - 2) = 0;
        *(v76 - 1) = 0;
      }
    }

    else
    {
      v75 = &v93[16 * *(&v94 + 1)];
      *v75 = 0;
      v75[1] = 0;
    }

    v77 = v93;
    if (*(&v94 + 1) >= v94)
    {
      if (v96)
      {
        v133 = 0uLL;
        TBuffer<TPItnRuleControl>::insert(&v93, *(&v94 + 1), &v133, 1uLL);
        --*(&v94 + 1);
      }

      else if (v94)
      {
        v79 = &v93[16 * v94];
        *(v79 - 2) = 0;
        *(v79 - 1) = 0;
      }
    }

    else
    {
      v78 = &v93[16 * *(&v94 + 1)];
      *v78 = 0;
      v78[1] = 0;
    }

    LOBYTE(v82) = 0;
    result = (*(*v52 + 16))(v52, v51, v53, v25 != 0, 0, 0, 0, 0, v77, &v93[16 * *(&v94 + 1)], -1, v82);
    v89 = result;
LABEL_166:
    ++v27;
  }

  while (v27 < *(&v130 + 1));
  v80 = v90;
  v26 = v89 == -1;
  v9 = v83;
  v10 = v84;
  if (v25)
  {
    goto LABEL_170;
  }

LABEL_177:
  if (v96 == 1)
  {
    result = v93;
    if (v93 != v95)
    {
      if (v93)
      {
        result = MEMORY[0x26672B1B0]();
      }
    }
  }

  if (v100 == 1)
  {
    result = v97;
    if (v97 != v99)
    {
      if (v97)
      {
        result = MEMORY[0x26672B1B0]();
      }
    }
  }

  if (v104 == 1)
  {
    result = v101;
    if (v101 != v103)
    {
      if (v101)
      {
        result = MEMORY[0x26672B1B0]();
      }
    }
  }

  if (v108 == 1)
  {
    result = v105;
    if (v105 != v107)
    {
      if (v105)
      {
        result = MEMORY[0x26672B1B0]();
      }
    }
  }

  if (v112 == 1)
  {
    result = v109;
    if (v109 != v111)
    {
      if (v109)
      {
        result = MEMORY[0x26672B1B0]();
      }
    }
  }

  if (v116 == 1)
  {
    result = v113;
    if (v113 != v115)
    {
      if (v113)
      {
        result = MEMORY[0x26672B1B0]();
      }
    }
  }

  if (v120 == 1)
  {
    result = v117;
    if (v117 != v119)
    {
      if (v117)
      {
        result = MEMORY[0x26672B1B0]();
      }
    }
  }

  if (v124 == 1)
  {
    result = v121;
    if (v121 != v123)
    {
      if (v121)
      {
        result = MEMORY[0x26672B1B0]();
      }
    }
  }

  if (v128 == 1)
  {
    result = v125;
    if (v125 != v127)
    {
      if (v125)
      {
        result = MEMORY[0x26672B1B0]();
      }
    }
  }

  if (v132 == 1)
  {
    result = v129;
    if (v129 != v131)
    {
      if (v129)
      {
        result = MEMORY[0x26672B1B0]();
      }
    }
  }

LABEL_217:
  *(v9 + 136) = v10;
  return result;
}

void sub_2626C49AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  if (LOBYTE(STACK[0x10F0]) == 1 && a36 != a16 && a36 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  if (*(v38 + 4120) == 1 && STACK[0x10F8] != a17 && STACK[0x10F8] != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0x2930]) == 1)
  {
    v45 = STACK[0x2118];
    if (STACK[0x2118] != v36)
    {
      if (v45)
      {
        MEMORY[0x26672B1B0](v45, 0x80C40B8603338);
      }
    }
  }

  if (LOBYTE(STACK[0x3150]) == 1)
  {
    v46 = STACK[0x2938];
    if (STACK[0x2938] != a18)
    {
      if (v46)
      {
        MEMORY[0x26672B1B0](v46, 0x80C40B8603338);
      }
    }
  }

  if (LOBYTE(STACK[0x3970]) == 1)
  {
    v47 = STACK[0x3158];
    if (STACK[0x3158] != a19)
    {
      if (v47)
      {
        MEMORY[0x26672B1B0](v47, 0x80C40B8603338);
      }
    }
  }

  if (LOBYTE(STACK[0x4190]) == 1)
  {
    v48 = STACK[0x3978];
    if (STACK[0x3978] != a20)
    {
      if (v48)
      {
        MEMORY[0x26672B1B0](v48, 0x80C40B8603338);
      }
    }
  }

  if (LOBYTE(STACK[0x45B0]) == 1)
  {
    v49 = STACK[0x4198];
    if (STACK[0x4198] != a21)
    {
      if (v49)
      {
        MEMORY[0x26672B1B0](v49, 0x1000C4052888210);
      }
    }
  }

  if (*(v41 + 1048) == 1)
  {
    v50 = STACK[0x45B8];
    if (STACK[0x45B8] != a22)
    {
      if (v50)
      {
        MEMORY[0x26672B1B0](v50, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0x51F0]) == 1)
  {
    v51 = STACK[0x49D8];
    if (STACK[0x49D8] != a23)
    {
      if (v51)
      {
        MEMORY[0x26672B1B0](v51, 0x80C40B8603338);
      }
    }
  }

  if (*(v40 + 2072) == 1)
  {
    v52 = STACK[0x51F8];
    if (STACK[0x51F8] != a24)
    {
      if (v52)
      {
        MEMORY[0x26672B1B0](v52, 0x80C40B8603338);
      }
    }
  }

  *(v37 + 136) = v39;
  _Unwind_Resume(a1);
}

void TBuffer<TPItnRuleControl>::resize(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 4120) == 1 && *(a1 + 8) < a2)
  {
    *(a1 + 8) = a2 + 1;
    operator new[]();
  }

  v4 = *(a1 + 16);
  if (v4 < a2)
  {
    v5 = a2;
    if (*(a1 + 4120))
    {
LABEL_9:
      bzero((*a1 + 16 * v4), 16 * (v5 - v4));
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

uint64_t TResultManager::getHintRange(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64) + 104 * a2;
  result = *(v2 - 104);
  v4 = *(v2 - 96);
  return result;
}

BOOL TResultManager::isValidHint(uint64_t a1, unint64_t a2)
{
  if (a2 && (v2 = *(a1 + 64), 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 72) - v2) >> 3) >= a2))
  {
    return v2 + 104 * a2 != 104;
  }

  else
  {
    return 0;
  }
}

uint64_t TAligner<TWord const*,TCost<TWord const*,std::equal_to<TWord const*>>>::align(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  TFsa::topologicalSort(a2, (a1 + 152));
  TFsa::topologicalSort(a3, (a1 + 176));
  v116 = a3;
  v117 = a2;
  v9 = a2[14] - a2[13];
  v10 = v9 >> 3;
  v11 = a3[14] - a3[13];
  std::vector<unsigned long>::resize((a1 + 56), 2 * ((v9 >> 1) + (v9 >> 3)));
  std::vector<unsigned short>::resize((a1 + 80), (*(a1 + 64) - *(a1 + 56)) >> 3);
  std::vector<unsigned long>::resize((a1 + 200), 0);
  std::vector<unsigned long>::reserve((a1 + 200), 0xAuLL);
  v12 = 9;
  v13 = v10;
  do
  {
    v125 = v13;
    std::vector<unsigned long>::push_back[abi:ne200100]((a1 + 200), &v125);
    v13 += v10;
    --v12;
  }

  while (v12);
  std::vector<unsigned long>::resize((a1 + 224), v11 >> 3);
  v14 = *(a1 + 104);
  v15 = *(a1 + 112);
  v16 = (a1 + 104);
  v17 = (v11 >> 3) * v10;
  if (v17 <= v15 - v14)
  {
    if ((v11 >> 3) * v10 < v15 - v14)
    {
      v15 = v14 + v17;
      *(a1 + 112) = v14 + v17;
    }
  }

  else
  {
    std::vector<char>::__append((a1 + 104), (v11 >> 3) * v10 - (v15 - v14));
    v14 = *(a1 + 104);
    v15 = *(a1 + 112);
  }

  std::vector<unsigned long>::resize((a1 + 128), v15 - v14);
  v18 = v117[13];
  v19 = v117[14];
  if (v18 != v19)
  {
    while (!*v18)
    {
      if (++v18 == v19)
      {
        goto LABEL_17;
      }
    }
  }

  if (v18 != v19)
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 24);
LABEL_13:
    v23 = *v18;
    v22 = v18 + 1;
    *(v20 + 8 * *(v23 + 8)) = v21;
    while (v22 != v19)
    {
      if (*v22++)
      {
        v18 = v22 - 1;
        goto LABEL_13;
      }
    }
  }

LABEL_17:
  v25 = *(a1 + 176);
  if (*(a1 + 184) == v25)
  {
    goto LABEL_82;
  }

  v26 = 0;
  v121 = 10;
  do
  {
    v27 = *(v25 + 8 * v26);
    v28 = *(v27 + 24);
    if (!v28)
    {
      goto LABEL_78;
    }

    v122 = v26;
    do
    {
      if (*(a1 + 200) == *(a1 + 208))
      {
        std::vector<unsigned long>::resize((a1 + 56), 2 * v121 * v10);
        std::vector<unsigned short>::resize((a1 + 80), (*(a1 + 64) - *(a1 + 56)) >> 3);
        if (v121 >= 1)
        {
          v29 = v121;
          v30 = v10 * v121;
          do
          {
            v125 = v30;
            v31 = v29;
            std::vector<unsigned long>::push_back[abi:ne200100]((a1 + 200), &v125);
            v29 = v31 + 1;
            v30 += v10;
          }

          while (v31 + 1 < (2 * v121));
        }

        v121 *= 2;
      }

      v32 = *(a1 + 208);
      v33 = *(v32 - 8);
      *(a1 + 208) = v32 - 8;
      *(*(a1 + 224) + 8 * v28[1]) = v33;
      v35 = *(a1 + 152);
      v34 = *(a1 + 160);
      if (v34 == v35)
      {
        goto LABEL_76;
      }

      v36 = 0;
      v37 = *(a1 + 40);
      v38 = v28[1] * v10;
      v123 = v28;
      do
      {
        v39 = *(*(v35 + 8 * v36) + 24);
        if (!v39)
        {
          goto LABEL_75;
        }

        v124 = v36;
        do
        {
          v40 = *(a1 + 152);
          v41 = *v39;
          v42 = v39[1];
          v43 = *v28;
          if (*v39 == *v28)
          {
            v44 = 0;
            v45 = *(a1 + 176);
LABEL_35:
            v49 = *(*(v45 + 8 * v26) + 16);
            if (!v49)
            {
              v46 = 0;
              v47 = 0;
              LOBYTE(v48) = 0;
              v50 = -1;
              goto LABEL_63;
            }

            v48 = 0;
            v47 = 0;
            v46 = 0;
            v51 = *(*(v40 + 8 * v36) + 16);
            if (v41 == v43)
            {
              v52 = 67;
            }

            else
            {
              v52 = 83;
            }

            v50 = -1;
            v53 = v49;
            do
            {
              if (v51)
              {
                v54 = *(v53 + 8);
                v55 = *(*(a1 + 224) + 8 * v54);
                v56 = v54 * v10;
                v57 = v51;
                do
                {
                  v58 = *(v57 + 8);
                  v59 = v58 + v55;
                  v60 = *(*(a1 + 80) + 2 * (v58 + v55));
                  v61 = v58 + v56;
                  if (v41 == v43 && *(*v16 + v61) != 67)
                  {
                    ++v60;
                  }

                  v62 = *(*(a1 + 56) + 8 * v59) + v44;
                  if (!v48 || v62 < v47 || v62 == v47 && v60 < v46)
                  {
                    v46 = v60;
                    v47 = v62;
                    v48 = v52;
                    v50 = v61;
                  }

                  v57 = *(v57 + 32);
                }

                while (v57);
              }

              v53 = *(v53 + 32);
            }

            while (v53);
            v26 = v122;
            v28 = v123;
            v36 = v124;
            while (1)
            {
LABEL_53:
              v63 = *(v49 + 8);
              v64 = *(*(a1 + 224) + 8 * v63) + v42;
              v65 = *(*(a1 + 56) + 8 * v64) + v37;
              if (v50 == -1 || v65 < v47)
              {
                LOWORD(v64) = *(*(a1 + 80) + 2 * v64);
              }

              else
              {
                if (v65 != v47)
                {
                  goto LABEL_60;
                }

                LODWORD(v64) = *(*(a1 + 80) + 2 * v64);
                if (v64 >= v46)
                {
                  goto LABEL_60;
                }
              }

              v50 = v42 + v63 * v10;
              LOBYTE(v48) = 73;
              v46 = v64;
              v47 = v65;
LABEL_60:
              v49 = *(v49 + 32);
              if (!v49)
              {
                goto LABEL_63;
              }
            }
          }

          v44 = *(a1 + 8);
          v45 = *(a1 + 176);
          if (v44 != -1)
          {
            goto LABEL_35;
          }

          v46 = 0;
          v47 = 0;
          LOBYTE(v48) = 0;
          v49 = *(*(v45 + 8 * v26) + 16);
          v50 = -1;
          if (v49)
          {
            goto LABEL_53;
          }

LABEL_63:
          v66 = *(*(v40 + 8 * v36) + 16);
          if (v66)
          {
            v67 = *(a1 + 56);
            v68 = *(v67 + 8 * v42);
            do
            {
              v69 = *(v66 + 8);
              v70 = v69 + v33;
              v71 = v68 + *(v67 + 8 * (v69 + v33));
              if (v50 == -1 || v71 < v47)
              {
                LOWORD(v70) = *(*(a1 + 80) + 2 * v70);
              }

              else
              {
                if (v71 != v47)
                {
                  goto LABEL_72;
                }

                LODWORD(v70) = *(*(a1 + 80) + 2 * v70);
                if (v70 >= v46)
                {
                  goto LABEL_72;
                }
              }

              v50 = v69 + v38;
              LOBYTE(v48) = 68;
              v46 = v70;
              v47 = v68 + *(v67 + 8 * (v69 + v33));
LABEL_72:
              v66 = *(v66 + 32);
            }

            while (v66);
          }

          *(*(a1 + 128) + 8 * (v42 + v38)) = v50;
          *(*v16 + v42 + v38) = v48;
          *(*(a1 + 56) + 8 * (v42 + v33)) = v47;
          *(*(a1 + 80) + 2 * (v42 + v33)) = v46;
          v39 = v39[5];
        }

        while (v39);
        v35 = *(a1 + 152);
        v34 = *(a1 + 160);
LABEL_75:
        ++v36;
      }

      while (v36 < (v34 - v35) >> 3);
LABEL_76:
      v28 = v28[5];
    }

    while (v28);
    v25 = *(a1 + 176);
    v27 = *(v25 + 8 * v26);
LABEL_78:
    v72 = *(v27 + 16);
    if (v72)
    {
      do
      {
        v125 = *(*(a1 + 224) + 8 * *(v72 + 8));
        std::vector<unsigned long>::push_back[abi:ne200100]((a1 + 200), &v125);
        v72 = *(v72 + 32);
      }

      while (v72);
      v25 = *(a1 + 176);
    }

    ++v26;
  }

  while (v26 < (*(a1 + 184) - v25) >> 3);
LABEL_82:
  v74 = v117[22];
  v73 = v117[23];
  if (v74 != v73)
  {
    while (!*v74)
    {
      if (++v74 == v73)
      {
        goto LABEL_115;
      }
    }
  }

  if (v74 == v73)
  {
LABEL_115:
    v76 = -1;
    v75 = -1;
  }

  else
  {
    v75 = -1;
    v76 = -1;
LABEL_88:
    v77 = *(*v74 + 16);
    if (v77)
    {
      v78 = v116[23];
      do
      {
        v79 = v116[22];
        if (v79 != v78)
        {
          v79 = v116[22];
          while (!*v79)
          {
            if (++v79 == v78)
            {
              goto LABEL_110;
            }
          }
        }

        if (v79 != v78)
        {
LABEL_96:
          v80 = *(*v79 + 16);
          if (v80)
          {
            v82 = *(v77 + 8);
            do
            {
              v83 = *(v80 + 8);
              v81 = *(a1 + 224);
              v84 = v82 + *(v81 + 8 * v83);
              if (v75 == -1 || (v85 = *(a1 + 56), v86 = *(v85 + 8 * v84), v87 = *(v85 + 8 * v76), v86 < v87) || v86 == v87 && *(*(a1 + 80) + 2 * v84) < *(*(a1 + 80) + 2 * v76))
              {
                v75 = v82 + v83 * v10;
                v76 = v82 + *(v81 + 8 * v83);
              }

              v80 = *(v80 + 32);
            }

            while (v80);
          }

          v88 = v79 + 1;
          while (v88 != v78)
          {
            if (*v88++)
            {
              v79 = v88 - 1;
              goto LABEL_96;
            }
          }
        }

LABEL_110:
        v77 = *(v77 + 32);
      }

      while (v77);
    }

    v90 = v74 + 1;
    while (v90 != v73)
    {
      if (*v90++)
      {
        v74 = v90 - 1;
        goto LABEL_88;
      }
    }
  }

  if (a5)
  {
    std::vector<TWord const*>::resize(a5, 0);
    std::vector<TState const*>::reserve(a5, (*(a1 + 160) - *(a1 + 152)) >> 3);
  }

  if (a6)
  {
    std::vector<TWord const*>::resize(a6, 0);
    std::vector<TState const*>::reserve(a6, (*(a1 + 184) - *(a1 + 176)) >> 3);
  }

  MEMORY[0x26672AEC0](a4, &byte_262899963);
  std::string::reserve(a4, ((*(a1 + 160) - *(a1 + 152)) >> 3) + ((*(a1 + 184) - *(a1 + 176)) >> 3) + 1);
  if (*(*(a1 + 128) + 8 * v75) != -1)
  {
    v92 = 0;
    while (1)
    {
      v93 = *(*v16 + v75);
      std::string::push_back(a4, *(*v16 + v75));
      if (v93 == 67)
      {
        break;
      }

      ++v92;
      v94 = a5;
      if ((v93 & 0xFFFFFFEF) == 0x43)
      {
        goto LABEL_125;
      }

      if (!a5 || v93 != 68)
      {
        goto LABEL_133;
      }

      v95 = 0;
LABEL_130:
      v125 = *(v117[13] + 8 * (v75 % v10));
      std::vector<TWord const*>::push_back[abi:ne200100](v94, &v125);
      if (v95)
      {
LABEL_131:
        if (!a6)
        {
          goto LABEL_136;
        }

        goto LABEL_135;
      }

LABEL_133:
      if (!a6 || v93 != 73)
      {
        goto LABEL_136;
      }

LABEL_135:
      v125 = *(v116[13] + 8 * (v75 / v10));
      std::vector<TWord const*>::push_back[abi:ne200100](a6, &v125);
LABEL_136:
      v96 = *(a1 + 128);
      v75 = *(v96 + 8 * v75);
      if (*(v96 + 8 * v75) == -1)
      {
        goto LABEL_137;
      }
    }

    v94 = a5;
LABEL_125:
    if (!v94)
    {
      goto LABEL_131;
    }

    v95 = 1;
    goto LABEL_130;
  }

LABEL_137:
  v97 = *(a4 + 23);
  if ((v97 & 0x80u) == 0)
  {
    v98 = a4;
  }

  else
  {
    v98 = *a4;
  }

  if ((v97 & 0x80u) != 0)
  {
    v97 = *(a4 + 8);
  }

  if (v97)
  {
    v99 = (v98 + v97 - 1);
    if (v99 > v98)
    {
      v100 = v98 + 1;
      do
      {
        v101 = *(v100 - 1);
        *(v100 - 1) = *v99;
        *v99-- = v101;
        v102 = v100++ >= v99;
      }

      while (!v102);
    }
  }

  if (a5)
  {
    v103 = *a5;
    v104 = a5[1];
    v105 = (v104 - 8);
    if (*a5 != v104 && v105 > v103)
    {
      v107 = v103 + 8;
      do
      {
        v108 = *(v107 - 8);
        *(v107 - 8) = *v105;
        *v105-- = v108;
        v102 = v107 >= v105;
        v107 += 8;
      }

      while (!v102);
    }
  }

  if (a6)
  {
    v109 = *a6;
    v110 = a6[1];
    v111 = (v110 - 8);
    if (*a6 != v110 && v111 > v109)
    {
      v113 = v109 + 8;
      do
      {
        v114 = *(v113 - 8);
        *(v113 - 8) = *v111;
        *v111-- = v114;
        v102 = v113 >= v111;
        v113 += 8;
      }

      while (!v102);
    }
  }

  return *(*(a1 + 56) + 8 * v76);
}

void std::vector<char>::__append(std::vector<char> *this, std::vector<char>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (value - end >= __n)
  {
    if (__n)
    {
      bzero(this->__end_, __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = (end - this->__begin_);
    v8 = &v7[__n];
    if (&v7[__n] < 0)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = end - this->__begin_;
    bzero(v7, __n);
    memcpy(&v7[begin - end], begin, v11);
    this->__begin_ = &v7[begin - end];
    this->__end_ = &v7[__n];
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void TResult::TResult(TResult *this, const TResult *a2)
{
  *this = *a2;
  *(this + 1) = *(a2 + 1);
  *(this + 3) = *(a2 + 3);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  std::vector<std::wstring>::__init_with_size[abi:ne200100]<std::wstring*,std::wstring*>(this + 32, *(a2 + 4), *(a2 + 5), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 5) - *(a2 + 4)) >> 3));
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  std::vector<TItnControlState>::__init_with_size[abi:ne200100]<TItnControlState*,TItnControlState*>(this + 56, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 6);
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(this + 80, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 3);
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(this + 104, *(a2 + 13), *(a2 + 14), (*(a2 + 14) - *(a2 + 13)) >> 3);
  v4 = *(a2 + 3);
  operator new[]();
}

void sub_2626C590C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v7 = *v5;
  if (*v5)
  {
    v2[14] = v7;
    operator delete(v7);
  }

  v8 = *v4;
  if (*v4)
  {
    v2[11] = v8;
    operator delete(v8);
  }

  v9 = *v3;
  if (*v3)
  {
    v2[8] = v9;
    operator delete(v9);
  }

  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::wstring>::__init_with_size[abi:ne200100]<std::wstring*,std::wstring*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::wstring>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2626C59D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::vector<TItnControlState>::__init_with_size[abi:ne200100]<TItnControlState*,TItnControlState*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<TItnControlState>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2626C5A54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<TItnControlState>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TItnControlState>>(a1, a2);
  }

  std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TItnControlState>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2626C5B54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void THint::~THint(void **this)
{
  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }
}

void *TAligner<TWord const*,TCost<TWord const*,std::equal_to<TWord const*>>>::~TAligner(void *a1)
{
  v2 = a1[28];
  if (v2)
  {
    a1[29] = v2;
    operator delete(v2);
  }

  v3 = a1[25];
  if (v3)
  {
    a1[26] = v3;
    operator delete(v3);
  }

  v4 = a1[22];
  if (v4)
  {
    a1[23] = v4;
    operator delete(v4);
  }

  v5 = a1[19];
  if (v5)
  {
    a1[20] = v5;
    operator delete(v5);
  }

  v6 = a1[16];
  if (v6)
  {
    a1[17] = v6;
    operator delete(v6);
  }

  v7 = a1[13];
  if (v7)
  {
    a1[14] = v7;
    operator delete(v7);
  }

  v8 = a1[10];
  if (v8)
  {
    a1[11] = v8;
    operator delete(v8);
  }

  v9 = a1[7];
  if (v9)
  {
    a1[8] = v9;
    operator delete(v9);
  }

  return a1;
}

void *std::vector<unsigned long>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned long const*>,std::__wrap_iter<unsigned long const*>>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned long>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 8;
        *v15 = v16;
        v15 += 8;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

char *std::vector<unsigned long>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned long const*>,std::__wrap_iter<unsigned long const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v15);
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

void std::vector<std::wstring>::__assign_with_size[abi:ne200100]<std::__wrap_iter<std::wstring const*>,std::__wrap_iter<std::wstring const*>>(std::vector<std::wstring> *a1, std::wstring *__str, std::wstring *a3, unint64_t a4)
{
  v6 = __str;
  begin = a1->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) < a4)
  {
    std::vector<std::wstring>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::wstring>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }

  end = a1->__end_;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::wstring::operator=(begin++, v6++);
      }

      while (v6 != a3);
      end = a1->__end_;
    }

    while (end != begin)
    {
      v13 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v13 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    a1->__end_ = begin;
  }

  else
  {
    v12 = (__str + end - begin);
    if (end != begin)
    {
      do
      {
        std::wstring::operator=(begin++, v6++);
      }

      while (v6 != v12);
      end = a1->__end_;
    }

    a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::wstring>,std::wstring const*,std::wstring const*,std::wstring*>(a1, v12, a3, end);
  }
}

std::wstring *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::wstring>,std::wstring const*,std::wstring const*,std::wstring*>(uint64_t a1, __int128 *a2, __int128 *a3, std::wstring *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::wstring::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::wstring>,std::wstring*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

std::wstring *std::vector<std::wstring>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::wstring const*>,std::__wrap_iter<std::wstring const*>>(std::vector<std::wstring> *a1, std::vector<std::wstring>::pointer __from_s, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = __from_s;
  if (a5 >= 1)
  {
    v7 = a3;
    end = a1->__end_;
    value = a1->__end_cap_.__value_;
    if ((0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3)) >= a5)
    {
      v16 = end - __from_s;
      if ((0xAAAAAAAAAAAAAAABLL * ((end - __from_s) >> 3)) >= a5)
      {
        v19 = a5;
        std::vector<std::wstring>::__move_range(a1, __from_s, a1->__end_, &__from_s[a5]);
        v20 = &v7[v19];
        v21 = v5;
        do
        {
          std::wstring::operator=(v21++, v7++);
        }

        while (v7 != v20);
      }

      else
      {
        v17 = (a3 + v16);
        a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::wstring>,std::wstring const*,std::wstring const*,std::wstring*>(a1, (a3 + v16), a4, a1->__end_);
        if (v16 >= 1)
        {
          std::vector<std::wstring>::__move_range(a1, v5, end, &v5[a5]);
          v18 = v5;
          do
          {
            std::wstring::operator=(v18++, v7++);
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      begin = a1->__begin_;
      v12 = a5 - 0x5555555555555555 * ((end - a1->__begin_) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
      }

      v13 = __from_s - begin;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v12;
      }

      v30.__end_cap_.__value_ = a1;
      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::wstring>>(a1, v15);
      }

      v30.__first_ = 0;
      v30.__begin_ = (8 * (v13 >> 3));
      v30.__end_ = v30.__begin_;
      v30.__end_cap_.__value_ = 0;
      std::__split_buffer<std::wstring>::__construct_at_end_with_size<std::__wrap_iter<std::wstring const*>>(&v30, a3, a5);
      v22 = v30.__begin_;
      memcpy(v30.__end_, v5, a1->__end_ - v5);
      v23 = a1->__begin_;
      v24 = v30.__begin_;
      v30.__end_ = (v30.__end_ + a1->__end_ - v5);
      a1->__end_ = v5;
      v25 = v5 - v23;
      v26 = (v24 - (v5 - v23));
      memcpy(v26, v23, v25);
      v27 = a1->__begin_;
      a1->__begin_ = v26;
      v28 = a1->__end_cap_.__value_;
      *&a1->__end_ = *&v30.__end_;
      v30.__end_ = v27;
      v30.__end_cap_.__value_ = v28;
      v30.__first_ = v27;
      v30.__begin_ = v27;
      std::__split_buffer<std::wstring>::~__split_buffer(&v30);
      return v22;
    }
  }

  return v5;
}

void std::vector<std::wstring>::__move_range(std::vector<std::wstring> *this, std::vector<std::wstring>::pointer __from_s, std::vector<std::wstring>::pointer __from_e, std::vector<std::wstring>::pointer __to)
{
  end = this->__end_;
  v7 = __from_s + end - __to;
  v8 = end;
  if (v7 < __from_e)
  {
    v9 = v7;
    v8 = this->__end_;
    do
    {
      v10 = *v9;
      v8->__r_.__value_.__r.__words[2] = *(v9 + 16);
      *&v8->__r_.__value_.__l.__data_ = v10;
      ++v8;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v9 += 24;
    }

    while (v9 < __from_e);
  }

  this->__end_ = v8;
  std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::wstring *,std::wstring *,std::wstring *>(&v11, __from_s, v7, end);
}

void std::__split_buffer<std::wstring>::__construct_at_end_with_size<std::__wrap_iter<std::wstring const*>>(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (a3)
  {
    v6 = &v4[a3];
    v7 = 24 * a3;
    do
    {
      if (*(a2 + 23) < 0)
      {
        std::wstring::__init_copy_ctor_external(v4, *a2, *(a2 + 1));
      }

      else
      {
        v8 = *a2;
        v4->__r_.__value_.__r.__words[2] = *(a2 + 2);
        *&v4->__r_.__value_.__l.__data_ = v8;
      }

      ++v4;
      a2 = (a2 + 24);
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  *(a1 + 16) = v4;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::wstring *,std::wstring *,std::wstring *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(a4 - 1);
      a4 -= 24;
      if (v8 < 0)
      {
        operator delete(*a4);
      }

      v9 = *(v7 - 24);
      *(a4 + 16) = *(v7 - 8);
      *a4 = v9;
      *(v7 - 1) = 0;
      *(v7 - 24) = 0;
      v7 -= 24;
    }

    while (v7 != a2);
  }

  return a3;
}

void *std::vector<TItnControlState>::__assign_with_size[abi:ne200100]<std::__wrap_iter<TItnControlState const*>,std::__wrap_iter<TItnControlState const*>>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 6)
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

    if (!(a4 >> 58))
    {
      v9 = v7 >> 5;
      if (v7 >> 5 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFC0)
      {
        v10 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<TItnControlState>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 6)
  {
    v20 = a3 - __src;
    if (v20)
    {
      result = memmove(*result, __src, v20);
    }

    v19 = &v8[v20];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v17 = *(v13 + 1);
        v18 = *(v13 + 3);
        *(v15 + 2) = *(v13 + 2);
        *(v15 + 3) = v18;
        *v15 = v16;
        *(v15 + 1) = v17;
        v15 += 64;
        v13 += 64;
        v14 += 64;
      }

      while (v13 != a3);
    }

    v19 = v14;
  }

  v6[1] = v19;
  return result;
}

char *std::vector<TItnControlState>::__insert_with_size[abi:ne200100]<std::__wrap_iter<TItnControlState const*>,std::__wrap_iter<TItnControlState const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 6)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 6);
    if (v12 >> 58)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 5 > v12)
    {
      v12 = v14 >> 5;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFC0)
    {
      v15 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 6;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TItnControlState>>(a1, v15);
    }

    v39 = v16 << 6;
    v40 = a5 << 6;
    v41 = (v16 << 6);
    do
    {
      v42 = *v7;
      v43 = v7[1];
      v44 = v7[3];
      v41[2] = v7[2];
      v41[3] = v44;
      *v41 = v42;
      v41[1] = v43;
      v41 += 4;
      v7 += 4;
      v40 -= 64;
    }

    while (v40);
    memcpy((v39 + (a5 << 6)), v5, a1[1] - v5);
    v45 = *a1;
    v46 = v39 + (a5 << 6) + a1[1] - v5;
    a1[1] = v5;
    v47 = v5 - v45;
    v48 = (v39 - (v5 - v45));
    memcpy(v48, v45, v47);
    v49 = *a1;
    *a1 = v48;
    a1[1] = v46;
    a1[2] = 0;
    if (v49)
    {
      operator delete(v49);
    }

    return (v16 << 6);
  }

  v17 = (v10 - __dst) >> 6;
  if (v17 >= a5)
  {
    v24 = &__dst[64 * a5];
    v25 = &v10[-64 * a5];
    v26 = a1[1];
    while (v25 < v10)
    {
      v27 = *v25;
      v28 = *(v25 + 1);
      v29 = *(v25 + 3);
      v26[2] = *(v25 + 2);
      v26[3] = v29;
      *v26 = v27;
      v26[1] = v28;
      v26 += 4;
      v25 += 64;
    }

    a1[1] = v26;
    if (v10 != v24)
    {
      memmove(&__dst[64 * a5], __dst, v10 - v24);
    }

    v36 = a5 << 6;
    v37 = v5;
    v38 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v22 = *(v18 + 1);
    v23 = *(v18 + 3);
    *(v20 + 2) = *(v18 + 2);
    *(v20 + 3) = v23;
    *v20 = v21;
    *(v20 + 1) = v22;
    v20 += 64;
    v18 += 64;
    v19 += 64;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v30 = &__dst[64 * a5];
    v31 = &v19[-64 * a5];
    v32 = v19;
    while (v31 < v10)
    {
      v33 = *v31;
      v34 = *(v31 + 1);
      v35 = *(v31 + 3);
      *(v32 + 2) = *(v31 + 2);
      *(v32 + 3) = v35;
      *v32 = v33;
      *(v32 + 1) = v34;
      v32 += 64;
      v31 += 64;
    }

    a1[1] = v32;
    if (v20 != v30)
    {
      memmove(&__dst[64 * a5], __dst, v19 - v30);
    }

    if (v10 != v5)
    {
      v37 = v5;
      v38 = v7;
      v36 = v10 - v5;
LABEL_34:
      memmove(v37, v38, v36);
    }
  }

  return v5;
}

void *std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(void *a1, unsigned int *a2, unsigned int *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned long>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  v12 = v11 - result;
  if (v12 >= a4)
  {
    while (v5 != a3)
    {
      v18 = *v5++;
      *result++ = v18;
    }

    a1[1] = result;
  }

  else
  {
    v13 = &a2[v12];
    if (v11 != result)
    {
      v14 = 4 * v12;
      do
      {
        v15 = *v5++;
        *result++ = v15;
        v14 -= 4;
      }

      while (v14);
    }

    if (v13 == a3)
    {
      v16 = v11;
    }

    else
    {
      v16 = v11;
      do
      {
        v17 = *v13++;
        *v11++ = v17;
        ++v16;
      }

      while (v13 != a3);
    }

    a1[1] = v16;
  }

  return result;
}

void std::vector<TItnControlState>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 6)
  {
    if (a2)
    {
      memset(*(a1 + 8), 255, a2 << 6);
      v5 += a2 << 6;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 6);
    if (v7 >> 58)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 5 > v7)
    {
      v7 = v8 >> 5;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFC0)
    {
      v9 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TItnControlState>>(a1, v9);
    }

    v10 = (v6 >> 6 << 6);
    memset(v10, 255, a2 << 6);
    v11 = &v10[64 * a2];
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<TItnControlState32>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<THint>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<THint>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<THint>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<THint>>::destroy[abi:ne200100]<THint,0>(a1, i))
  {
    i -= 104;
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<THint>>::destroy[abi:ne200100]<THint,0>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 103) < 0)
  {
    operator delete(*(a2 + 80));
  }

  if (*(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  if (*(a2 + 55) < 0)
  {
    v3 = *(a2 + 32);

    operator delete(v3);
  }
}

uint64_t TBuffer<char>::assign(uint64_t a1, char *a2)
{
  TBuffer<char>::resize(a1, 0);
  v4 = 0;
    ;
  }

  return TBuffer<char>::insert(a1, 0, a2, v4 - 1);
}

unint64_t *std::__set_intersection[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X2>, unint64_t *a4@<X3>, unint64_t *a5@<X4>, unint64_t **a6@<X8>)
{
  if (a3 != a4)
  {
    v10 = a3;
    v11 = result;
    v12 = 0;
    while (1)
    {
      result = std::__lower_bound_onesided[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>,unsigned long,std::__identity const,std::__less<void,void>>(v11, a2, v10);
      if (v11 == result)
      {
        if (v12)
        {
          v13 = 0;
          v14 = *result++;
          *a5++ = v14;
          ++v10;
        }

        else
        {
          v13 = 1;
        }
      }

      else
      {
        v13 = 0;
      }

      v11 = result;
      if (result == a2)
      {
        goto LABEL_16;
      }

      result = std::__lower_bound_onesided[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>,unsigned long,std::__identity const,std::__less<void,void>>(v10, a4, result);
      if (v10 != result)
      {
        break;
      }

      if (!v13)
      {
        v12 = 1;
        goto LABEL_14;
      }

      v12 = 0;
      v15 = *v11++;
      *a5++ = v15;
      v10 = result + 1;
LABEL_15:
      if (v10 == a4)
      {
        goto LABEL_16;
      }
    }

    v12 = 0;
LABEL_14:
    v10 = result;
    goto LABEL_15;
  }

LABEL_16:
  *a6 = a2;
  a6[1] = a4;
  a6[2] = a5;
  return result;
}

unint64_t *std::__lower_bound_onesided[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>,unsigned long,std::__identity const,std::__less<void,void>>(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  if (a2 != a1)
  {
    v3 = *a3;
    if (*a1 >= *a3)
    {
      return a1;
    }

    v4 = a2 - a1;
    if (v4 >= 1)
    {
      v4 = 1;
    }

    v5 = &a1[v4];
    if (v5 == a2)
    {
LABEL_17:
      v7 = a2;
    }

    else
    {
      v6 = 1;
      while (1)
      {
        v7 = v5;
        if (*v5 >= v3)
        {
          break;
        }

        v4 = a2 - v5;
        v8 = v4 <= 2 * v6;
        v6 *= 2;
        if (v8)
        {
          v9 = v6;
        }

        else
        {
          v9 = a2 - v5;
        }

        if (!v8)
        {
          v4 = v6;
        }

        if (v6 < 0)
        {
          v4 = v9;
        }

        v5 = &v7[v4];
        a1 = v7;
        if (v5 == a2)
        {
          a1 = v7;
          goto LABEL_17;
        }
      }
    }

    if (v4)
    {
      if (v4 == 1)
      {
        return v7;
      }

      do
      {
        v10 = v4 >> 1;
        v11 = &a1[v4 >> 1];
        v13 = *v11;
        v12 = v11 + 1;
        v4 += ~(v4 >> 1);
        if (v13 < v3)
        {
          a1 = v12;
        }

        else
        {
          v4 = v10;
        }
      }

      while (v4);
    }

    return a1;
  }

  return a2;
}

uint64_t std::vector<THint>::__emplace_back_slow_path<THint>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x276276276276276)
  {
    std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v6 = 0x276276276276276;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<THint>>(a1, v6);
  }

  v7 = 104 * v2;
  v18 = 0;
  v19 = v7;
  *(&v20 + 1) = 0;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  v9 = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(v7 + 32) = v9;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  v10 = *(a2 + 56);
  *(v7 + 72) = *(a2 + 72);
  *(v7 + 56) = v10;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0;
  v11 = *(a2 + 80);
  *(v7 + 96) = *(a2 + 96);
  *(v7 + 80) = v11;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *&v20 = 104 * v2 + 104;
  v12 = a1[1];
  v13 = 104 * v2 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<THint>,THint*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<THint>::~__split_buffer(&v18);
  return v17;
}

void sub_2626C708C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<THint>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<THint>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<THint>,THint*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *(v7 + 16);
      *a4 = *v7;
      *(a4 + 16) = v8;
      v9 = *(v7 + 32);
      *(a4 + 48) = *(v7 + 48);
      *(a4 + 32) = v9;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 32) = 0;
      v10 = *(v7 + 56);
      *(a4 + 72) = *(v7 + 72);
      *(a4 + 56) = v10;
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      *(v7 + 56) = 0;
      v11 = *(v7 + 80);
      *(a4 + 96) = *(v7 + 96);
      *(a4 + 80) = v11;
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      *(v7 + 96) = 0;
      v7 += 104;
      a4 += 104;
    }

    while (v7 != a3);
    v16 = a4;
    v14 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<THint>>::destroy[abi:ne200100]<THint,0>(a1, v5);
      v5 += 104;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<THint>,THint*>>::~__exception_guard_exceptions[abi:ne200100](v13);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<THint>,THint*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<THint>,THint*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<THint>,THint*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 104;
      std::allocator_traits<std::allocator<THint>>::destroy[abi:ne200100]<THint,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<THint>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<THint>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<THint>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 104;
    std::allocator_traits<std::allocator<THint>>::destroy[abi:ne200100]<THint,0>(v5, v4 - 104);
  }
}

uint64_t TBuffer<TPItnRuleControl>::insert(uint64_t result, unint64_t a2, __int128 *a3, unint64_t a4)
{
  v5 = *(result + 16);
  if (v5 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = *(result + 16);
  }

  if (*(result + 4120) == 1)
  {
    v7 = v5 + a4;
    v8 = *(result + 8);
    if (v5 + a4 > v8 && v8 < 2 * v7)
    {
      *(result + 8) = (2 * v7) | 1;
      operator new[]();
    }
  }

  if (v6 < v5)
  {
    v9 = *(result + 8);
    if (v6 + a4 < v9)
    {
      if (v9 >= v5 + a4)
      {
        v9 = v5 + a4;
      }

      v10 = v9 - (v6 + a4);
      if (v10 <= 1)
      {
        v10 = 1;
      }

      v11 = 16 * v9 - 16;
      do
      {
        *(*result + v11) = *(*result + v11 - 16 * a4);
        v11 -= 16;
        --v10;
      }

      while (v10);
    }
  }

  v12 = *(result + 8);
  v13 = v12 - v6;
  if (v12 > v6)
  {
    if (v13 >= a4)
    {
      v13 = a4;
    }

    if (v13)
    {
      v14 = 16 * v6;
      do
      {
        v15 = *a3++;
        *(*result + v14) = v15;
        v14 += 16;
        --v13;
      }

      while (v13);
      v12 = *(result + 8);
    }
  }

  v16 = *(result + 16) + a4;
  *(result + 16) = v16;
  if (v16 < v12)
  {
    v17 = (*result + 16 * v16);
    *v17 = 0;
    v17[1] = 0;
  }

  return result;
}

void FileHistory::FileHistory(FileHistory *this)
{
  *this = 0u;
  *(this + 2) = vdup_n_s32(0x3E8u);
  FileHistory::addEntryWithVersionAndCurrentTime(this, "CreationTime ", 0, 0);
}

void FileHistory::FileHistory(FileHistory *this, int a2, int a3)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = a2;
  *(this + 5) = a3;
  FileHistory::addEntryWithVersionAndCurrentTime(this, "CreationTime ", 0, 0);
}

void *FileHistory::addEntryWithVersionAndCurrentTime(FileHistory *this, const char *a2, int a3, int a4)
{
  FileHistory::addOneEntry(this, a2);
  addVersionAndCurrentTime(*(*this + 8 * (*(this + 2) - 1)));
  if (a3)
  {
    if (a4)
    {
      v7 = " (text)";
    }

    else
    {
      v7 = " (binary)";
    }

    DgnString::operator+=(*(*this + 8 * (*(this + 2) - 1)), v7);
  }

  v8 = *(*this + 8 * (*(this + 2) - 1));
  if (*(v8 + 2) <= 0x4Fu)
  {
    do
    {
      DgnString::operator+=(v8, " ");
    }

    while (*(v8 + 2) < 0x50u);
  }

  return FileHistory::limitEntries(this);
}

void *DgnIOwnArray<DgnString *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<DgnString>(*(*a1 + v3));
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

void FileHistory::loadFileHistory(FileHistory *this, DFile *a2, int a3)
{
  if (DFile::subFileExists(a2, 0x1Bu))
  {
    v6 = DFile::openSubFile(a2, 0x1Bu, 3, 1);
    DgnIOwnArray<DgnString *>::releaseAll(this);
    DgnString::DgnString(&v13);
    while (((*(*v6 + 56))(v6) & 1) == 0)
    {
      DgnStream::getLine(v6, &v13, v7, v8, v9, v10, v11, v12);
      if (v14 >= 2)
      {
        FileHistory::addOneEntry(this, v13);
      }
    }

    (**v6)(v6);
    MemChunkFree(v6, 0);
    FileHistory::addEntryWithVersionAndCurrentTime(this, "LoadTime ", 1, a3);
    FileHistory::limitEntries(this);
    DgnString::~DgnString(&v13);
  }
}

DgnString *FileHistory::addOneEntry(FileHistory *this, const char *a2)
{
  v4 = MemChunkAlloc(0x10uLL, 0);
  result = DgnString::DgnString(v4, a2);
  v6 = *(this + 2);
  if (v6 == *(this + 3))
  {
    result = DgnPrimArray<unsigned long long>::reallocElts(this, 1, 1);
    v6 = *(this + 2);
  }

  *(*this + 8 * v6) = v4;
  *(this + 2) = v6 + 1;
  return result;
}

void *FileHistory::limitEntries(void *this)
{
  v1 = *(this + 2);
  v2 = *(this + 4);
  if (v1 > v2 + *(this + 5) + 1)
  {
    v3 = this;
    v14 = *this;
    v4 = *(this + 3);
    v15 = v1;
    v16 = v4;
    *this = 0;
    this[1] = 0;
    if (v2)
    {
      v5 = 0;
      for (i = 0; i < v2; *(v14 + 8 * i++) = 0)
      {
        v7 = *(v14 + 8 * i);
        if (v5 == *(v3 + 3))
        {
          DgnPrimArray<unsigned long long>::reallocElts(v3, 1, 1);
          v5 = *(v3 + 2);
          v2 = *(v3 + 4);
        }

        *(*v3 + 8 * v5++) = v7;
        *(v3 + 2) = v5;
      }
    }

    DgnString::DgnString(&v12);
    DgnString::operator=(&v12, "[ ... ClearTime ");
    addVersionAndCurrentTime(&v12);
    DgnString::operator+=(&v12, " ... ]");
    if (v13 <= 0x4F)
    {
      do
      {
        DgnString::operator+=(&v12, " ");
      }

      while (v13 < 0x50);
    }

    FileHistory::addOneEntry(v3, v12);
    v8 = *(v3 + 5);
    if (v1 - v8 < v1)
    {
      v9 = *(v3 + 2);
      v10 = 8 * (v1 - v8);
      do
      {
        v11 = *(v14 + v10);
        if (v9 == *(v3 + 3))
        {
          DgnPrimArray<unsigned long long>::reallocElts(v3, 1, 1);
          v9 = *(v3 + 2);
        }

        *(*v3 + 8 * v9++) = v11;
        *(v3 + 2) = v9;
        *(v14 + v10) = 0;
        v10 += 8;
        --v8;
      }

      while (v8);
    }

    DgnIOwnArray<DgnString *>::releaseAll(&v14);
    DgnString::~DgnString(&v12);
    return DgnIOwnArray<DgnString *>::releaseAll(&v14);
  }

  return this;
}

void sub_2626C7A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnIOwnArray<DgnString *>::releaseAll(va);
  _Unwind_Resume(a1);
}

uint64_t FileHistory::saveFileHistory(FileHistory *this, DFile *a2, int a3)
{
  v5 = DFile::openSubFile(a2, 0x1Bu, 1, 1);
  if (*(this + 2))
  {
    v6 = 0;
    do
    {
      v7 = *(*this + 8 * v6);
      v8 = *(v7 + 8);
      if (v8)
      {
        v9 = *v7;
      }

      else
      {
        v9 = &byte_262899963;
      }

      v10 = v8 != 0;
      v11 = v8 - 1;
      if (v10)
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      (*(*v5 + 80))(v5, v9, v12);
      (*(*v5 + 80))(v5, "\n", 1);
      ++v6;
    }

    while (v6 < *(this + 2));
  }

  FileHistory::addEntryWithVersionAndCurrentTime(this, "SaveTime ", 1, a3);
  v13 = *(*this + 8 * (*(this + 2) - 1));
  v14 = *(v13 + 8);
  if (v14)
  {
    v15 = *v13;
  }

  else
  {
    v15 = &byte_262899963;
  }

  v10 = v14 != 0;
  v16 = v14 - 1;
  if (v10)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  (*(*v5 + 80))(v5, v15, v17);
  (*(*v5 + 80))(v5, "\n", 1);
  (**v5)(v5);

  return MemChunkFree(v5, 0);
}

DgnString *addVersionAndCurrentTime(DgnString *a1)
{
  DgnString::preAllocate(a1, 256);
  MrecTime::appendLocalTimeToString(a1, v2);
  DgnString::operator+=(a1, " ");
  MrecName = GetMrecName();
  DgnString::operator+=(a1, MrecName);
  DgnString::operator+=(a1, " ");
  MrecVersion = GetMrecVersion();

  return DgnString::operator+=(a1, MrecVersion);
}

void *FileHistory::addEntry(FileHistory *this, const char *a2)
{
  FileHistory::addOneEntry(this, a2);

  return FileHistory::limitEntries(this);
}

void *FileHistory::addEntryWithElapsedTime(FileHistory *this, const char *a2, const SnapTime *a3)
{
  FileHistory::addOneEntry(this, a2);
  SnapTime::appendReadableTimeToString(a3, *(*this + 8 * (*(this + 2) - 1)));
  v5 = *(*this + 8 * (*(this + 2) - 1));
  if (*(v5 + 2) <= 0x4Fu)
  {
    do
    {
      DgnString::operator+=(v5, " ");
    }

    while (*(v5 + 2) < 0x50u);
  }

  return FileHistory::limitEntries(this);
}

uint64_t sizeObject<DgnString *>(uint64_t a1, int a2)
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
          v9 += sizeObject(v10);
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

DgnString *DgnDelete<DgnString>(DgnString *result)
{
  if (result)
  {
    DgnString::~DgnString(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t PrefPronCmp(unsigned int a1, unsigned int a2, const Voc *this)
{
  v13 = 0;
  v12 = 0;
  Voc::getPrefPron(this, a1, &v13, &v12);
  v11 = 0;
  v10 = 0;
  Voc::getPrefPron(this, a2, &v11, &v10);
  v6 = 0;
  while (v12 != v6)
  {
    if (v10 == v6)
    {
      return 1;
    }

    v7 = v13[v6];
    v8 = v11[v6++];
    result = (v7 - v8);
    if (v7 != v8)
    {
      return result;
    }
  }

  if (v12 == v10)
  {
    return a1 - a2;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t PrefPicModelIdPronCmp(unsigned int a1, unsigned int a2, const Voc *this)
{
  v13 = 0;
  v12 = 0;
  Voc::getPrefPicModelIdPron(this, a1, &v13, &v12);
  v11 = 0;
  v10 = 0;
  Voc::getPrefPicModelIdPron(this, a2, &v11, &v10);
  v6 = 0;
  while (v12 != v6)
  {
    if (v10 == v6)
    {
      return 1;
    }

    v7 = v13[v6];
    v8 = v11[v6++];
    result = v7 - v8;
    if (v7 != v8)
    {
      return result;
    }
  }

  if (v12 == v10)
  {
    return a1 - a2;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t PrefiltererWordIdPronCollArray::getInsertIndex(PrefiltererWordIdPronCollArray *this, int a2, uint64_t a3)
{
  v3 = a3;
  v4 = *(this + 2);
  v8 = a2;
  v9 = v4;
  if (*(v4 + 292) || (v5 = PrefWordIdPronSearchCmpFunc, *(v4 + 296)))
  {
    v5 = PrefWordIdPicModelIdPronSearchCmpFunc;
  }

  v6 = DgnPrimArray<unsigned int>::searchLastOrBefore(this, a3, *(this + 2), &v8, v5);
  if (v6 == -1)
  {
    return v3;
  }

  else
  {
    return (v6 + 1);
  }
}

uint64_t PrefWordIdPronSearchCmpFunc(unsigned int *a1, const void *a2)
{
  v4 = PrefPronCmp(*a1, *a2, *(a2 + 1));
  if (v4)
  {
    return -v4;
  }

  else
  {
    return *a1 - *a2;
  }
}

uint64_t PrefWordIdPicModelIdPronSearchCmpFunc(unsigned int *a1, const void *a2)
{
  result = PrefPicModelIdPronCmp(*a1, *a2, *(a2 + 1));
  if (!result)
  {
    return *a1 - *a2;
  }

  return result;
}

uint64_t PrefiltererWordIdPronCollArray::sortArray(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (*(v2 + 73) || *(v2 + 74))
  {
    return mrec_qsort_r<SortWordIdsByPrefPicModelIdPronScope>(*a2, *(a2 + 8), 4uLL, v2);
  }

  else
  {
    return mrec_qsort_r<SortWordIdsByPrefPronScope>(*a2, *(a2 + 8), 4uLL, v2);
  }
}

uint64_t mrec_qsort_r<SortWordIdsByPrefPronScope>(uint64_t result, unint64_t a2, unint64_t a3, const Voc *a4)
{
  v5 = a2;
  v6 = result;
  v7 = -a3;
  v167 = a3 != 8;
  if (((result | a3) & 7) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = a3 != 8;
  }

  v173 = ((result | a3) & 7) == 0;
  v174 = v8;
  v175 = -a3;
  if (a2 < 7)
  {
LABEL_161:
    if ((v5 * a3) > a3)
    {
      v171 = (v6 + v5 * a3);
      v133 = (v6 + a3);
      v134 = v6;
      do
      {
        if (v133 > v6)
        {
          v135 = v134;
          v136 = v133;
          do
          {
            v137 = v136;
            v136 = (v136 + v7);
            v138 = *v136;
            v139 = *v137;
            result = PrefPronCmp(*v136, *v137, a4);
            v140 = v138 - v139;
            v7 = v175;
            if (result)
            {
              v140 = -result;
            }

            if (v140 < 1)
            {
              break;
            }

            if (v174)
            {
              if (v173)
              {
                v141 = 0;
                v142 = v136;
                do
                {
                  v143 = *&v137[2 * v141];
                  *&v137[2 * v141] = *v142;
                  *v142 = v143;
                  v142 += 2;
                  ++v141;
                }

                while (a3 >> 3 != v141);
              }

              else
              {
                v145 = 0;
                v146 = a3;
                do
                {
                  v147 = *(v137 + v145);
                  *(v137 + v145) = *(v135 + v145);
                  *(v135 + v145++) = v147;
                  --v146;
                }

                while (v146);
              }
            }

            else
            {
              v144 = *v137;
              *v137 = *v136;
              *v136 = v144;
            }

            v135 = (v135 + v175);
          }

          while (v136 > v6);
        }

        v133 = (v133 + a3);
        v134 = (v134 + a3);
      }

      while (v133 < v171);
    }

    return result;
  }

  v9 = a3 >> 3;
  while (1)
  {
    v10 = (v6 + (v5 >> 1) * a3);
    v168 = v5;
    if (v5 != 7)
    {
      v11 = (v6 + (v5 - 1) * a3);
      if (v5 < 0x29)
      {
        v28 = v6;
LABEL_63:
        v170 = v28;
        v67 = *v28;
        v68 = *v10;
        v69 = PrefPronCmp(*v28, *v10, a4);
        if (v69)
        {
          v70 = -v69;
        }

        else
        {
          v70 = v67 - v68;
        }

        v71 = *v10;
        v72 = *v11;
        result = PrefPronCmp(*v10, *v11, a4);
        v73 = v71 - v72;
        if (result)
        {
          v73 = -result;
        }

        if (v70 < 0)
        {
          if ((v73 & 0x80000000) == 0)
          {
            v77 = *v170;
            v78 = *v11;
            result = PrefPronCmp(*v170, *v11, a4);
            v79 = v77 - v78;
            if (result)
            {
              v79 = -result;
            }

            if (v79 >= 0)
            {
              v10 = v170;
            }

            else
            {
              v10 = v11;
            }
          }
        }

        else if (v73 <= 0)
        {
          v74 = *v170;
          v75 = *v11;
          result = PrefPronCmp(*v170, *v11, a4);
          v76 = v74 - v75;
          if (result)
          {
            v76 = -result;
          }

          if (v76 >= 0)
          {
            v10 = v11;
          }

          else
          {
            v10 = v170;
          }
        }

        goto LABEL_81;
      }

      v166 = (v6 + (v5 - 1) * a3);
      v12 = (v5 >> 3) * a3;
      v13 = (v6 + v12);
      v164 = v12;
      v14 = (v6 + 2 * v12);
      v15 = *v6;
      v16 = *(v6 + v12);
      v17 = PrefPronCmp(*v6, v16, a4);
      if (v17)
      {
        v18 = -v17;
      }

      else
      {
        v18 = v15 - v16;
      }

      v169 = v13;
      v19 = *v13;
      v20 = *v14;
      v21 = PrefPronCmp(*v13, *v14, a4);
      v22 = v19 - v20;
      if (v21)
      {
        v22 = -v21;
      }

      if (v18 < 0)
      {
        if ((v22 & 0x80000000) == 0)
        {
          v29 = *v6;
          v30 = *v14;
          v31 = PrefPronCmp(*v6, *v14, a4);
          v32 = v29 - v30;
          if (v31)
          {
            v32 = -v31;
          }

          if (v32 >= 0)
          {
            v27 = v6;
          }

          else
          {
            v27 = v14;
          }

          goto LABEL_27;
        }
      }

      else if (v22 <= 0)
      {
        v23 = *v6;
        v24 = *v14;
        v25 = PrefPronCmp(*v6, *v14, a4);
        v26 = v23 - v24;
        if (v25)
        {
          v26 = -v25;
        }

        if (v26 >= 0)
        {
          v27 = v14;
        }

        else
        {
          v27 = v6;
        }

LABEL_27:
        v169 = v27;
      }

      v33 = v164;
      v34 = (v10 + v164);
      v163 = (v10 - v164);
      v35 = *(v10 - v164);
      v36 = *v10;
      v37 = PrefPronCmp(v35, *v10, a4);
      if (v37)
      {
        v38 = -v37;
      }

      else
      {
        v38 = v35 - v36;
      }

      v39 = *v10;
      v40 = *v34;
      v41 = PrefPronCmp(*v10, *v34, a4);
      v42 = v39 - v40;
      if (v41)
      {
        v42 = -v41;
      }

      if (v38 < 0)
      {
        if ((v42 & 0x80000000) == 0)
        {
          v10 = (v10 - v164);
          v47 = *v163;
          v48 = *v34;
          v49 = PrefPronCmp(*v163, *v34, a4);
          v50 = v47 - v48;
          if (v49)
          {
            v50 = -v49;
          }

          if (v50 < 0)
          {
            v10 = v34;
          }
        }
      }

      else if (v42 <= 0)
      {
        v10 = (v10 - v164);
        v43 = *v163;
        v44 = *v34;
        v45 = PrefPronCmp(*v163, *v34, a4);
        v46 = v43 - v44;
        if (v45)
        {
          v46 = -v45;
        }

        if (v46 >= 0)
        {
          v10 = v34;
        }
      }

      v11 = (v166 - v164);
      v165 = (v166 - 2 * v164);
      v51 = *v165;
      v52 = *(v166 - v33);
      v53 = PrefPronCmp(*v165, v52, a4);
      if (v53)
      {
        v54 = -v53;
      }

      else
      {
        v54 = v51 - v52;
      }

      v55 = *v11;
      v56 = *v166;
      v57 = PrefPronCmp(*v11, *v166, a4);
      v58 = v55 - v56;
      if (v57)
      {
        v58 = -v57;
      }

      if (v54 < 0)
      {
        v5 = v168;
        if ((v58 & 0x80000000) == 0)
        {
          v11 = v165;
          v63 = *v165;
          v64 = *v166;
          v65 = PrefPronCmp(*v165, *v166, a4);
          v66 = v63 - v64;
          if (v65)
          {
            v66 = -v65;
          }

          if (v66 < 0)
          {
            v11 = v166;
          }
        }
      }

      else
      {
        v5 = v168;
        if (v58 <= 0)
        {
          v11 = v165;
          v59 = *v165;
          v60 = *v166;
          v61 = PrefPronCmp(*v165, *v166, a4);
          v62 = v59 - v60;
          if (v61)
          {
            v62 = -v61;
          }

          if (v62 >= 0)
          {
            v11 = v166;
          }
        }
      }

      v28 = v169;
      goto LABEL_63;
    }

LABEL_81:
    if (v174)
    {
      if (v173)
      {
        v80 = v6;
        v81 = a3 >> 3;
        do
        {
          v82 = *v80;
          *v80 = *v10;
          v80 += 2;
          *v10 = v82;
          v10 += 2;
          --v81;
        }

        while (v81);
      }

      else
      {
        v84 = a3;
        v85 = v6;
        do
        {
          v86 = *v85;
          *v85 = *v10;
          v85 = (v85 + 1);
          *v10 = v86;
          v10 = (v10 + 1);
          --v84;
        }

        while (v84);
      }
    }

    else
    {
      v83 = *v6;
      *v6 = *v10;
      *v10 = v83;
    }

    v87 = 0;
    v88 = (v6 + a3);
    v89 = (v6 + (v5 - 1) * a3);
    v90 = v89;
    v91 = (v6 + a3);
    while (1)
    {
      while (v91 <= v90)
      {
        v92 = *v91;
        v93 = *v6;
        result = PrefPronCmp(*v91, *v6, a4);
        v94 = v92 - v93;
        if (result)
        {
          v94 = -result;
        }

        if (v94 > 0)
        {
          break;
        }

        if (!v94)
        {
          if (v174)
          {
            if (v173)
            {
              v95 = 0;
              do
              {
                v96 = v88[v95];
                v88[v95] = *&v91[2 * v95];
                *&v91[2 * v95++] = v96;
              }

              while (v9 != v95);
            }

            else
            {
              v106 = 0;
              do
              {
                v107 = *(v88 + v106);
                *(v88 + v106) = *(v91 + v106);
                *(v91 + v106++) = v107;
              }

              while (a3 != v106);
            }
          }

          else
          {
            v97 = *v88;
            *v88 = *v91;
            *v91 = v97;
          }

          v88 = (v88 + a3);
          v87 = 1;
        }

        v91 = (v91 + a3);
      }

      if (v91 > v90)
      {
        break;
      }

      while (1)
      {
        v98 = *v90;
        v99 = *v6;
        result = PrefPronCmp(*v90, *v6, a4);
        v100 = v98 - v99;
        if (result)
        {
          v100 = -result;
        }

        if (v100 < 0)
        {
          break;
        }

        if (v100)
        {
          v7 = v175;
        }

        else
        {
          v7 = v175;
          if (v174)
          {
            if (v173)
            {
              v101 = 0;
              do
              {
                v102 = *&v90[2 * v101];
                *&v90[2 * v101] = *&v89[2 * v101];
                *&v89[2 * v101++] = v102;
              }

              while (v9 != v101);
            }

            else
            {
              v104 = 0;
              do
              {
                v105 = *(v90 + v104);
                *(v90 + v104) = *(v89 + v104);
                *(v89 + v104++) = v105;
              }

              while (a3 != v104);
            }
          }

          else
          {
            v103 = *v90;
            *v90 = *v89;
            *v89 = v103;
          }

          v89 = (v89 + v175);
          v87 = 1;
        }

        v90 = (v90 + v7);
        if (v91 > v90)
        {
          goto LABEL_132;
        }
      }

      if (v174)
      {
        v108 = v175;
        if (v173)
        {
          v109 = 0;
          do
          {
            v110 = *&v91[2 * v109];
            *&v91[2 * v109] = *&v90[2 * v109];
            *&v90[2 * v109++] = v110;
          }

          while (v9 != v109);
        }

        else
        {
          v112 = 0;
          do
          {
            v113 = *(v91 + v112);
            *(v91 + v112) = *(v90 + v112);
            *(v90 + v112++) = v113;
          }

          while (a3 != v112);
        }
      }

      else
      {
        v111 = *v91;
        *v91 = *v90;
        *v90 = v111;
        v108 = v175;
      }

      v91 = (v91 + a3);
      v90 = (v90 + v108);
      v87 = 1;
    }

    v7 = v175;
LABEL_132:
    v114 = v6 + v168 * a3;
    if (!v87)
    {
      break;
    }

    v115 = v91 - v88;
    if (v88 - v6 >= v91 - v88)
    {
      v116 = v91 - v88;
    }

    else
    {
      v116 = v88 - v6;
    }

    if (v116)
    {
      if (v173)
      {
        v117 = (v91 - v116);
        v118 = v116 >> 3;
        v119 = v6;
        do
        {
          v120 = *v119;
          *v119 = *v117;
          v119 += 2;
          *v117++ = v120;
          --v118;
        }

        while (v118);
      }

      else
      {
        v121 = -v116;
        v122 = v6;
        do
        {
          v123 = *v122;
          *v122 = *(v91 + v121);
          v122 = (v122 + 1);
          *(v91 + v121) = v123;
          v124 = __CFADD__(v121++, 1);
        }

        while (!v124);
      }
    }

    v125 = v89 - v90;
    if (v89 - v90 >= v114 - (v89 + a3))
    {
      v126 = v114 - (v89 + a3);
    }

    else
    {
      v126 = v89 - v90;
    }

    if (v126)
    {
      if (v173)
      {
        v127 = &v114[-v126];
        v128 = v126 >> 3;
        do
        {
          v129 = *v91;
          *v91 = *v127;
          v91 += 2;
          *v127 = v129;
          v127 += 8;
          --v128;
        }

        while (v128);
      }

      else
      {
        v130 = -v126;
        do
        {
          v131 = *v91;
          *v91 = v114[v130];
          v91 = (v91 + 1);
          v114[v130] = v131;
          v124 = __CFADD__(v130++, 1);
        }

        while (!v124);
      }
    }

    if (v115 > a3)
    {
      result = mrec_qsort_r<SortWordIdsByPrefPronScope>(v6, v115 / a3, a3, a4);
    }

    if (v125 <= a3)
    {
      return result;
    }

    v6 = &v114[-v125];
    v5 = v125 / a3;
    v132 = v167;
    if ((((v114 - v125) | a3) & 7) != 0)
    {
      v132 = 2;
    }

    v173 = (((v114 - v125) | a3) & 7) == 0;
    v174 = v132;
    if (v5 < 7)
    {
      goto LABEL_161;
    }
  }

  v148 = (v6 + a3);
  if ((v168 * a3) > a3)
  {
    v149 = v6;
    do
    {
      v172 = v148;
      if (v148 > v6)
      {
        v150 = v149;
        v151 = v148;
        do
        {
          v152 = v151;
          v151 = (v151 + v7);
          v153 = *v151;
          v154 = *v152;
          result = PrefPronCmp(*v151, *v152, a4);
          v155 = v153 - v154;
          v7 = v175;
          if (result)
          {
            v155 = -result;
          }

          if (v155 < 1)
          {
            break;
          }

          if (v174)
          {
            if (v173)
            {
              v156 = 0;
              v157 = v151;
              do
              {
                v158 = *&v152[2 * v156];
                *&v152[2 * v156] = *v157;
                *v157 = v158;
                v157 += 2;
                ++v156;
              }

              while (v9 != v156);
            }

            else
            {
              v160 = 0;
              v161 = a3;
              do
              {
                v162 = *(v152 + v160);
                *(v152 + v160) = *(v150 + v160);
                *(v150 + v160++) = v162;
                --v161;
              }

              while (v161);
            }
          }

          else
          {
            v159 = *v152;
            *v152 = *v151;
            *v151 = v159;
          }

          v150 = (v150 + v175);
        }

        while (v151 > v6);
      }

      v148 = (v172 + a3);
      v149 = (v149 + a3);
    }

    while (v172 + a3 < v114);
  }

  return result;
}

uint64_t mrec_qsort_r<SortWordIdsByPrefPicModelIdPronScope>(uint64_t result, unint64_t a2, unint64_t a3, const Voc *a4)
{
  v5 = a2;
  v6 = result;
  v7 = -a3;
  v167 = a3 != 8;
  if (((result | a3) & 7) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = a3 != 8;
  }

  v173 = ((result | a3) & 7) == 0;
  v174 = v8;
  v175 = -a3;
  if (a2 < 7)
  {
LABEL_161:
    if ((v5 * a3) > a3)
    {
      v171 = (v6 + v5 * a3);
      v133 = (v6 + a3);
      v134 = v6;
      do
      {
        if (v133 > v6)
        {
          v135 = v134;
          v136 = v133;
          do
          {
            v137 = v136;
            v136 = (v136 + v7);
            v138 = *v136;
            v139 = *v137;
            result = PrefPicModelIdPronCmp(*v136, *v137, a4);
            v140 = v138 - v139;
            v7 = v175;
            if (result)
            {
              v140 = result;
            }

            if (v140 < 1)
            {
              break;
            }

            if (v174)
            {
              if (v173)
              {
                v141 = 0;
                v142 = v136;
                do
                {
                  v143 = *&v137[2 * v141];
                  *&v137[2 * v141] = *v142;
                  *v142 = v143;
                  v142 += 2;
                  ++v141;
                }

                while (a3 >> 3 != v141);
              }

              else
              {
                v145 = 0;
                v146 = a3;
                do
                {
                  v147 = *(v137 + v145);
                  *(v137 + v145) = *(v135 + v145);
                  *(v135 + v145++) = v147;
                  --v146;
                }

                while (v146);
              }
            }

            else
            {
              v144 = *v137;
              *v137 = *v136;
              *v136 = v144;
            }

            v135 = (v135 + v175);
          }

          while (v136 > v6);
        }

        v133 = (v133 + a3);
        v134 = (v134 + a3);
      }

      while (v133 < v171);
    }

    return result;
  }

  v9 = a3 >> 3;
  while (1)
  {
    v10 = (v6 + (v5 >> 1) * a3);
    v168 = v5;
    if (v5 != 7)
    {
      v11 = (v6 + (v5 - 1) * a3);
      if (v5 < 0x29)
      {
        v28 = v6;
LABEL_63:
        v170 = v28;
        v67 = *v28;
        v68 = *v10;
        v69 = PrefPicModelIdPronCmp(*v28, *v10, a4);
        if (v69)
        {
          v70 = v69;
        }

        else
        {
          v70 = v67 - v68;
        }

        v71 = *v10;
        v72 = *v11;
        result = PrefPicModelIdPronCmp(*v10, *v11, a4);
        v73 = v71 - v72;
        if (result)
        {
          v73 = result;
        }

        if ((v70 & 0x80000000) != 0)
        {
          if ((v73 & 0x80000000) == 0)
          {
            v77 = *v170;
            v78 = *v11;
            result = PrefPicModelIdPronCmp(*v170, *v11, a4);
            v79 = v77 - v78;
            if (result)
            {
              v79 = result;
            }

            if (v79 >= 0)
            {
              v10 = v170;
            }

            else
            {
              v10 = v11;
            }
          }
        }

        else if (v73 <= 0)
        {
          v74 = *v170;
          v75 = *v11;
          result = PrefPicModelIdPronCmp(*v170, *v11, a4);
          v76 = v74 - v75;
          if (result)
          {
            v76 = result;
          }

          if (v76 >= 0)
          {
            v10 = v11;
          }

          else
          {
            v10 = v170;
          }
        }

        goto LABEL_81;
      }

      v166 = (v6 + (v5 - 1) * a3);
      v12 = (v5 >> 3) * a3;
      v13 = (v6 + v12);
      v164 = v12;
      v14 = (v6 + 2 * v12);
      v15 = *v6;
      v16 = *(v6 + v12);
      v17 = PrefPicModelIdPronCmp(*v6, v16, a4);
      if (v17)
      {
        v18 = v17;
      }

      else
      {
        v18 = v15 - v16;
      }

      v169 = v13;
      v19 = *v13;
      v20 = *v14;
      v21 = PrefPicModelIdPronCmp(*v13, *v14, a4);
      v22 = v19 - v20;
      if (v21)
      {
        v22 = v21;
      }

      if ((v18 & 0x80000000) != 0)
      {
        if ((v22 & 0x80000000) == 0)
        {
          v29 = *v6;
          v30 = *v14;
          v31 = PrefPicModelIdPronCmp(*v6, *v14, a4);
          v32 = v29 - v30;
          if (v31)
          {
            v32 = v31;
          }

          if (v32 >= 0)
          {
            v27 = v6;
          }

          else
          {
            v27 = v14;
          }

          goto LABEL_27;
        }
      }

      else if (v22 <= 0)
      {
        v23 = *v6;
        v24 = *v14;
        v25 = PrefPicModelIdPronCmp(*v6, *v14, a4);
        v26 = v23 - v24;
        if (v25)
        {
          v26 = v25;
        }

        if (v26 >= 0)
        {
          v27 = v14;
        }

        else
        {
          v27 = v6;
        }

LABEL_27:
        v169 = v27;
      }

      v33 = v164;
      v34 = (v10 + v164);
      v163 = (v10 - v164);
      v35 = *(v10 - v164);
      v36 = *v10;
      v37 = PrefPicModelIdPronCmp(v35, *v10, a4);
      if (v37)
      {
        v38 = v37;
      }

      else
      {
        v38 = v35 - v36;
      }

      v39 = *v10;
      v40 = *v34;
      v41 = PrefPicModelIdPronCmp(*v10, *v34, a4);
      v42 = v39 - v40;
      if (v41)
      {
        v42 = v41;
      }

      if ((v38 & 0x80000000) != 0)
      {
        if ((v42 & 0x80000000) == 0)
        {
          v10 = (v10 - v164);
          v47 = *v163;
          v48 = *v34;
          v49 = PrefPicModelIdPronCmp(*v163, *v34, a4);
          v50 = v47 - v48;
          if (v49)
          {
            v50 = v49;
          }

          if (v50 < 0)
          {
            v10 = v34;
          }
        }
      }

      else if (v42 <= 0)
      {
        v10 = (v10 - v164);
        v43 = *v163;
        v44 = *v34;
        v45 = PrefPicModelIdPronCmp(*v163, *v34, a4);
        v46 = v43 - v44;
        if (v45)
        {
          v46 = v45;
        }

        if (v46 >= 0)
        {
          v10 = v34;
        }
      }

      v11 = (v166 - v164);
      v165 = (v166 - 2 * v164);
      v51 = *v165;
      v52 = *(v166 - v33);
      v53 = PrefPicModelIdPronCmp(*v165, v52, a4);
      if (v53)
      {
        v54 = v53;
      }

      else
      {
        v54 = v51 - v52;
      }

      v55 = *v11;
      v56 = *v166;
      v57 = PrefPicModelIdPronCmp(*v11, *v166, a4);
      v58 = v55 - v56;
      if (v57)
      {
        v58 = v57;
      }

      if ((v54 & 0x80000000) != 0)
      {
        v5 = v168;
        if ((v58 & 0x80000000) == 0)
        {
          v11 = v165;
          v63 = *v165;
          v64 = *v166;
          v65 = PrefPicModelIdPronCmp(*v165, *v166, a4);
          v66 = v63 - v64;
          if (v65)
          {
            v66 = v65;
          }

          if (v66 < 0)
          {
            v11 = v166;
          }
        }
      }

      else
      {
        v5 = v168;
        if (v58 <= 0)
        {
          v11 = v165;
          v59 = *v165;
          v60 = *v166;
          v61 = PrefPicModelIdPronCmp(*v165, *v166, a4);
          v62 = v59 - v60;
          if (v61)
          {
            v62 = v61;
          }

          if (v62 >= 0)
          {
            v11 = v166;
          }
        }
      }

      v28 = v169;
      goto LABEL_63;
    }

LABEL_81:
    if (v174)
    {
      if (v173)
      {
        v80 = v6;
        v81 = a3 >> 3;
        do
        {
          v82 = *v80;
          *v80 = *v10;
          v80 += 2;
          *v10 = v82;
          v10 += 2;
          --v81;
        }

        while (v81);
      }

      else
      {
        v84 = a3;
        v85 = v6;
        do
        {
          v86 = *v85;
          *v85 = *v10;
          v85 = (v85 + 1);
          *v10 = v86;
          v10 = (v10 + 1);
          --v84;
        }

        while (v84);
      }
    }

    else
    {
      v83 = *v6;
      *v6 = *v10;
      *v10 = v83;
    }

    v87 = 0;
    v88 = (v6 + a3);
    v89 = (v6 + (v5 - 1) * a3);
    v90 = v89;
    v91 = (v6 + a3);
    while (1)
    {
      while (v91 <= v90)
      {
        v92 = *v91;
        v93 = *v6;
        result = PrefPicModelIdPronCmp(*v91, *v6, a4);
        v94 = v92 - v93;
        if (result)
        {
          v94 = result;
        }

        if (v94 > 0)
        {
          break;
        }

        if (!v94)
        {
          if (v174)
          {
            if (v173)
            {
              v95 = 0;
              do
              {
                v96 = v88[v95];
                v88[v95] = *&v91[2 * v95];
                *&v91[2 * v95++] = v96;
              }

              while (v9 != v95);
            }

            else
            {
              v106 = 0;
              do
              {
                v107 = *(v88 + v106);
                *(v88 + v106) = *(v91 + v106);
                *(v91 + v106++) = v107;
              }

              while (a3 != v106);
            }
          }

          else
          {
            v97 = *v88;
            *v88 = *v91;
            *v91 = v97;
          }

          v88 = (v88 + a3);
          v87 = 1;
        }

        v91 = (v91 + a3);
      }

      if (v91 > v90)
      {
        break;
      }

      while (1)
      {
        v98 = *v90;
        v99 = *v6;
        result = PrefPicModelIdPronCmp(*v90, *v6, a4);
        v100 = v98 - v99;
        if (result)
        {
          v100 = result;
        }

        if ((v100 & 0x80000000) != 0)
        {
          break;
        }

        if (v100)
        {
          v7 = v175;
        }

        else
        {
          v7 = v175;
          if (v174)
          {
            if (v173)
            {
              v101 = 0;
              do
              {
                v102 = *&v90[2 * v101];
                *&v90[2 * v101] = *&v89[2 * v101];
                *&v89[2 * v101++] = v102;
              }

              while (v9 != v101);
            }

            else
            {
              v104 = 0;
              do
              {
                v105 = *(v90 + v104);
                *(v90 + v104) = *(v89 + v104);
                *(v89 + v104++) = v105;
              }

              while (a3 != v104);
            }
          }

          else
          {
            v103 = *v90;
            *v90 = *v89;
            *v89 = v103;
          }

          v89 = (v89 + v175);
          v87 = 1;
        }

        v90 = (v90 + v7);
        if (v91 > v90)
        {
          goto LABEL_132;
        }
      }

      if (v174)
      {
        v108 = v175;
        if (v173)
        {
          v109 = 0;
          do
          {
            v110 = *&v91[2 * v109];
            *&v91[2 * v109] = *&v90[2 * v109];
            *&v90[2 * v109++] = v110;
          }

          while (v9 != v109);
        }

        else
        {
          v112 = 0;
          do
          {
            v113 = *(v91 + v112);
            *(v91 + v112) = *(v90 + v112);
            *(v90 + v112++) = v113;
          }

          while (a3 != v112);
        }
      }

      else
      {
        v111 = *v91;
        *v91 = *v90;
        *v90 = v111;
        v108 = v175;
      }

      v91 = (v91 + a3);
      v90 = (v90 + v108);
      v87 = 1;
    }

    v7 = v175;
LABEL_132:
    v114 = v6 + v168 * a3;
    if (!v87)
    {
      break;
    }

    v115 = v91 - v88;
    if (v88 - v6 >= v91 - v88)
    {
      v116 = v91 - v88;
    }

    else
    {
      v116 = v88 - v6;
    }

    if (v116)
    {
      if (v173)
      {
        v117 = (v91 - v116);
        v118 = v116 >> 3;
        v119 = v6;
        do
        {
          v120 = *v119;
          *v119 = *v117;
          v119 += 2;
          *v117++ = v120;
          --v118;
        }

        while (v118);
      }

      else
      {
        v121 = -v116;
        v122 = v6;
        do
        {
          v123 = *v122;
          *v122 = *(v91 + v121);
          v122 = (v122 + 1);
          *(v91 + v121) = v123;
          v124 = __CFADD__(v121++, 1);
        }

        while (!v124);
      }
    }

    v125 = v89 - v90;
    if (v89 - v90 >= v114 - (v89 + a3))
    {
      v126 = v114 - (v89 + a3);
    }

    else
    {
      v126 = v89 - v90;
    }

    if (v126)
    {
      if (v173)
      {
        v127 = &v114[-v126];
        v128 = v126 >> 3;
        do
        {
          v129 = *v91;
          *v91 = *v127;
          v91 += 2;
          *v127 = v129;
          v127 += 8;
          --v128;
        }

        while (v128);
      }

      else
      {
        v130 = -v126;
        do
        {
          v131 = *v91;
          *v91 = v114[v130];
          v91 = (v91 + 1);
          v114[v130] = v131;
          v124 = __CFADD__(v130++, 1);
        }

        while (!v124);
      }
    }

    if (v115 > a3)
    {
      result = mrec_qsort_r<SortWordIdsByPrefPicModelIdPronScope>(v6, v115 / a3, a3, a4);
    }

    if (v125 <= a3)
    {
      return result;
    }

    v6 = &v114[-v125];
    v5 = v125 / a3;
    v132 = v167;
    if ((((v114 - v125) | a3) & 7) != 0)
    {
      v132 = 2;
    }

    v173 = (((v114 - v125) | a3) & 7) == 0;
    v174 = v132;
    if (v5 < 7)
    {
      goto LABEL_161;
    }
  }

  v148 = (v6 + a3);
  if ((v168 * a3) > a3)
  {
    v149 = v6;
    do
    {
      v172 = v148;
      if (v148 > v6)
      {
        v150 = v149;
        v151 = v148;
        do
        {
          v152 = v151;
          v151 = (v151 + v7);
          v153 = *v151;
          v154 = *v152;
          result = PrefPicModelIdPronCmp(*v151, *v152, a4);
          v155 = v153 - v154;
          v7 = v175;
          if (result)
          {
            v155 = result;
          }

          if (v155 < 1)
          {
            break;
          }

          if (v174)
          {
            if (v173)
            {
              v156 = 0;
              v157 = v151;
              do
              {
                v158 = *&v152[2 * v156];
                *&v152[2 * v156] = *v157;
                *v157 = v158;
                v157 += 2;
                ++v156;
              }

              while (v9 != v156);
            }

            else
            {
              v160 = 0;
              v161 = a3;
              do
              {
                v162 = *(v152 + v160);
                *(v152 + v160) = *(v150 + v160);
                *(v150 + v160++) = v162;
                --v161;
              }

              while (v161);
            }
          }

          else
          {
            v159 = *v152;
            *v152 = *v151;
            *v151 = v159;
          }

          v150 = (v150 + v175);
        }

        while (v151 > v6);
      }

      v148 = (v172 + a3);
      v149 = (v149 + a3);
    }

    while (v172 + a3 < v114);
  }

  return result;
}