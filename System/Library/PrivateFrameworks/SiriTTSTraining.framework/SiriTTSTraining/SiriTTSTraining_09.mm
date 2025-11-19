void kaldi::CuVector<float>::~CuVector(void *a1)
{
  *a1 = off_277020;
  v2 = a1 + 1;
  v1 = a1[1];
  if (v1)
  {
    free(v1);
  }

  *v2 = 0;
  v2[1] = 0;

  operator delete();
}

uint64_t kaldi::CuVector<float>::operator=(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (!*(a1 + 24))
  {
    *(a1 + 24) = *(a2 + 24);
  }

  kaldi::CuVector<float>::Resize(a1, *(a2 + 16), 1u, a4, a5);
  kaldi::CuVectorBase<float>::CopyFromVec(a1, a2, v7, v8, v9);
  return a1;
}

double kaldi::CuVector<float>::Read(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  kaldi::Vector<float>::Read(&v9, a2, a3, 0, a5);
  v6 = *(a1 + 8);
  if (v6)
  {
    free(v6);
  }

  *(a1 + 8) = v9;
  v7 = v10;
  v9 = 0;
  v10 = 0;
  *(a1 + 16) = v7;
  kaldi::Vector<float>::Destroy(&v9);
  return result;
}

void sub_9E90C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

void kaldi::CuVectorBase<float>::AddMatVec<signed char>()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "AddMatVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", 506);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "not implemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::CuVectorBase<float>::AddMatVec<short>()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "AddMatVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", 506);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "not implemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::CuVectorBase<float>::AddMatVec<signed char>(uint64_t a1, _DWORD *a2, int a3, uint64_t a4, const char *a5, float a6, float a7)
{
  if (a3 == 112)
  {
    if (a2[5] != *(a4 + 8))
    {
      goto LABEL_11;
    }

    v8 = a2[4];
  }

  else
  {
    if (a3 != 111 || a2[4] != *(a4 + 8))
    {
LABEL_11:
      kaldi::KaldiAssertFailure_("AddMatVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", &stru_1F8.sectname[10], "(trans == kNoTrans && M.NumCols() == v.Dim() && M.NumRows() == dim_) || (trans == kTrans && M.NumRows() == v.Dim() && M.NumCols() == dim_)", a5);
    }

    v8 = a2[5];
  }

  if (v8 != *(a1 + 16))
  {
    goto LABEL_11;
  }

  v9 = a1 + 8;
  v10 = (a2 + 2);

  kaldi::VectorBase<float>::AddMatVec<signed char>(v9, v10, a3, a4, a5, a6, a7);
}

void kaldi::CuVectorBase<float>::AddMatVec<short>(uint64_t a1, _DWORD *a2, int a3, uint64_t a4, const char *a5, float a6, float a7)
{
  if (a3 == 112)
  {
    if (a2[5] != *(a4 + 8))
    {
      goto LABEL_11;
    }

    v8 = a2[4];
  }

  else
  {
    if (a3 != 111 || a2[4] != *(a4 + 8))
    {
LABEL_11:
      kaldi::KaldiAssertFailure_("AddMatVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", &stru_1F8.sectname[10], "(trans == kNoTrans && M.NumCols() == v.Dim() && M.NumRows() == dim_) || (trans == kTrans && M.NumRows() == v.Dim() && M.NumCols() == dim_)", a5);
    }

    v8 = a2[5];
  }

  if (v8 != *(a1 + 16))
  {
    goto LABEL_11;
  }

  v9 = a1 + 8;
  v10 = (a2 + 2);

  kaldi::VectorBase<float>::AddMatVec<short>(v9, v10, a3, a4, a5, a6, a7);
}

void *kaldi::CuSubVector<float>::CuSubVector(void *result, uint64_t a2, int a3, int a4, const char *a5)
{
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  *result = &off_276FE0;
  if ((a4 + a3) > *(a2 + 16))
  {
    kaldi::KaldiAssertFailure_("CuSubVector", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.h", &stru_1A8.size + 4, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", a5);
  }

  result[1] = *(a2 + 8) + 4 * a3;
  *(result + 4) = a4;
  result[3] = *(a2 + 24);
  return result;
}

uint64_t kaldi::CuWorkspace::GetMatrix<float>@<X0>(void *a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v7 = a3 * a2;
  if (a1[8] < (4 * v7))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v14, "GetMatrix", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-workspace.cc", 62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Failed to create a ", 19);
    v10 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " by ", 4);
    v11 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " matrix with only ", 18);
    v12 = a1[8];
    v13 = std::ostream::operator<<();
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, " bytes available in the workspace");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
  }

  kaldi::CuWorkspace::GetVector<float>(a1, v7, a4, v14);
  return kaldi::CuSubMatrix<float>::CuSubMatrix(a5, v14, a2);
}

void *kaldi::CuWorkspace::GetVector<float>@<X0>(void *a1@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  v6 = 4 * a2;
  if (v6 > a1[8])
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "GetVector", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-workspace.cc", 72);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Failed to create a vector of ", 29);
    v9 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " elements with only ", 20);
    v10 = a1[8];
    v11 = std::ostream::operator<<();
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v11, " bytes available in the workspace");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  v7 = a1[1];
  a4[2] = 0;
  a4[3] = 0;
  *a4 = &off_276FE0;
  a4[1] = v7;
  *(a4 + 4) = a2;
  if (a3 == 3 || !a3)
  {
    kaldi::CuVectorBase<float>::SetZero(a4);
  }

  result = std::deque<char *>::push_back(a1 + 2, a1 + 1);
  a1[1] += v6;
  a1[8] -= v6;
  return result;
}

void sub_9ED88(_Unwind_Exception *a1)
{
  *v1 = v2;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  _Unwind_Resume(a1);
}

void kaldi::CuWorkspace::Destroy(kaldi::CuWorkspace *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(this + 9);
  if (v6)
  {
    v7 = v6[7] - 1;
    v8 = *(*(v6[3] + (((v7 + v6[6]) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v7 + v6[6]) & 0x1FF));
    if (v8 != *this)
    {
      kaldi::KaldiAssertFailure_("Destroy", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-workspace.cc", &dword_18 + 3, "parent_->used_mem_.top() == base_ptr_", a5);
    }

    v9 = v6[1] - v8 + v6[8];
    v6[1] = *this;
    v6[7] = v7;
    v6[8] = v9;
    std::deque<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> *>>::__maybe_remove_back_spare[abi:ne200100](v6 + 2, 1);
  }

  else
  {
    v10 = *this;
    if (*this)
    {
      free(v10);
    }
  }

  *this = 0;
  *(this + 1) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
}

void kaldi::CuWorkspace::GetChildWorkspace(kaldi::CuWorkspace *this, uint64_t a2)
{
  v2 = a2;
  if (a2 == -1)
  {
    v2 = *(this + 8);
  }

  if (v2 < 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v7, "GetChildWorkspace", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-workspace.cc", 123);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, "mem_size_bytes >= 0");
  }

  else
  {
    if (v2 <= *(this + 8))
    {
      operator new();
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(v7, "GetChildWorkspace", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/cudamatrix/cu-workspace.cc", 125);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Can't create a child workspace of ", 34);
    v4 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ". Only have ", 12);
    v5 = *(this + 8);
    v6 = std::ostream::operator<<();
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, " bytes");
  }

  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v7);
}

void *std::deque<char *>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = std::deque<char *>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *std::deque<char *>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **>>::emplace_back<fst::DfsState<fst::ArcTpl<fst::TropicalWeightTpl<float>>> **&>(a1, &v10);
}

void sub_9F1E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::CuSubMatrix<float>::CuSubMatrix(uint64_t result, uint64_t a2, int a3)
{
  *(result + 24) = 0u;
  *(result + 8) = 0u;
  *result = off_276F40;
  v4 = *(a2 + 16);
  v5 = v4 / a3;
  if (v4 % a3)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v8, "CuSubMatrix", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 975);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "the vector cannot be represented as a matrix with rows ", 55);
    v6 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " , while it has dimension ", 26);
    v7 = *(a2 + 16);
    std::ostream::operator<<();
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v8);
  }

  *(result + 8) = *(a2 + 8);
  *(result + 16) = v5;
  *(result + 20) = a3;
  *(result + 24) = v5;
  *(result + 28) = v4;
  *(result + 32) = *(a2 + 24);
  return result;
}

uint64_t kaldi::CompressedMatrix::CopyFromMat<float>(uint64_t a1, kaldi::ContextDependency *this)
{
  if (*a1)
  {
    if (*(a1 + 8) != 1)
    {
      operator delete[]();
    }

    *(a1 + 8) = 0;
    *a1 = 0;
  }

  result = kaldi::ContextDependency::CentralPosition(this);
  if (result)
  {
    kaldi::MatrixBase<float>::Min(this, v4, v5, v6, v7);
    v9 = v8;
    kaldi::MatrixBase<float>::Max(this, v10, v11, v12, v13);
    v16 = fabsf(v9);
    if (v15 == v9)
    {
      v15 = v16 + 1.0 + v9;
    }

    v17 = v15 - v9;
    if (v16 != INFINITY && (LODWORD(v17) & 0x7FFFFFFFu) < 0x7F800000)
    {
      v22 = kaldi::ContextDependency::CentralPosition(this);
      v23 = kaldi::ContextDependency::ContextWidth(this);
      kaldi::CompressedMatrix::AllocateData(((v22 + 8) * v23 + 16), v18, v19, v20, v21);
    }

    kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/compressed-matrix.cc", &stru_20.vmsize + 6, "KALDI_ISFINITE(global_header.min_value) && KALDI_ISFINITE(global_header.range)", v14);
  }

  return result;
}

uint64_t kaldi::CompressedMatrix::Destroy(kaldi::CompressedMatrix *this)
{
  result = *this;
  if (result)
  {
    if (*(this + 8) != 1)
    {
      operator delete[]();
    }

    *(this + 8) = 0;
    *this = 0;
  }

  return result;
}

void kaldi::CompressedMatrix::AllocateData(kaldi::CompressedMatrix *this, int a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (this > 0)
  {

    operator new[]();
  }

  kaldi::KaldiAssertFailure_("AllocateData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/compressed-matrix.cc", &stru_108.segname[1], "num_bytes > 0", a5);
}

void kaldi::CompressedMatrix::CompressColumn<float>(float *a1, float *a2, int a3, int a4, _WORD *a5, _BYTE *a6)
{
  v10 = a2;
  kaldi::CompressedMatrix::ComputeColHeader<float>(a1, a2, a3, a4, a5);
  if (a4 >= 1)
  {
    v14 = *a1;
    *&v15 = a1[1];
    v16 = 0x3EF000100010000ALL;
    v17 = *&v15 * 0.0000152590219;
    LOWORD(v15) = *a5;
    v18 = v14 + v17 * v15;
    LOWORD(v16) = a5[1];
    v19 = v14 + v17 * v16;
    LOWORD(v12) = a5[2];
    *&v12 = v14 + v17 * v12;
    LOWORD(v13) = a5[3];
    *&v14 = v14 + v17 * v13;
    v20 = *&v14 - *&v12;
    v21 = a4;
    do
    {
      v22 = *v10;
      if (*v10 >= v19)
      {
        v25 = (((v22 - *&v12) / v20) * 63.0) + 0.5;
        v24 = v25 & ~(v25 >> 31);
        if (v24 >= 63)
        {
          LOBYTE(v24) = 63;
        }

        LOBYTE(v24) = v24 | 0xC0;
        v26 = (((v22 - v19) / (*&v12 - v19)) * 128.0) + 0.5;
        v27 = v26 & ~(v26 >> 31);
        if (v27 >= 128)
        {
          LOBYTE(v27) = 0x80;
        }

        v28 = v27 + 64;
        if (v22 < *&v12)
        {
          LOBYTE(v24) = v28;
        }
      }

      else
      {
        v23 = (((v22 - v18) / (v19 - v18)) * 64.0) + 0.5;
        v24 = v23 & ~(v23 >> 31);
        if (v24 >= 64)
        {
          LOBYTE(v24) = 64;
        }
      }

      *a6++ = v24;
      v10 += a3;
      --v21;
    }

    while (v21);
  }
}

float *kaldi::CompressedMatrix::CopyToMat<float>(uint64_t *a1, kaldi::ContextDependency *this)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 + 8);
    v5 = *(v3 + 12);
    if (kaldi::ContextDependency::CentralPosition(this) != v4)
    {
      kaldi::KaldiAssertFailure_("CopyToMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/compressed-matrix.cc", &stru_1A8.addr + 6, "mat->NumRows() == num_rows", v6);
    }

    result = kaldi::ContextDependency::ContextWidth(this);
    if (result != v5)
    {
      kaldi::KaldiAssertFailure_("CopyToMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/compressed-matrix.cc", &stru_1A8.addr + 7, "mat->NumCols() == num_cols", v9);
    }

    if (v5 >= 1)
    {
      v13 = 0;
      v14 = (v3 + 16);
      v15 = (v3 + 16 + 8 * v5);
      do
      {
        if (v4 >= 1)
        {
          v16 = 0;
          v17 = 0x3EF000100010000ALL;
          v18 = *(v3 + 4) * 0.0000152590219;
          LOWORD(v17) = v14[3];
          v19 = *v3;
          *&v17 = v19 + v18 * v17;
          LOWORD(v10) = v14[2];
          v20 = v19 + v18 * v10;
          LOWORD(v11) = v14[1];
          v21 = v19 + v18 * v11;
          LOWORD(v12) = *v14;
          *&v18 = v19 + v18 * v12;
          v22 = v20;
          v23 = *&v17 - v20;
          v24 = v21;
          v25 = v20 - v21;
          v26 = *&v18;
          v27 = v21 - *&v18;
          do
          {
            v28 = *v15;
            v29 = v28 - 64;
            if (v28 > 0x40)
            {
              v31 = v28 >= 0xC0;
              v32 = v28 - 192;
              if (v32 != 0 && v31)
              {
                v30 = v22 + (v23 * v32) * 0.0158730159;
              }

              else
              {
                v30 = v24 + (v25 * v29) * 0.0078125;
              }
            }

            else
            {
              v30 = v26 + (v27 * v28) * 0.015625;
            }

            v33 = v30;
            result = kaldi::MatrixBase<float>::operator()(this, v16, v13, v8, v9);
            *result = v33;
            ++v16;
            ++v15;
          }

          while (v4 != v16);
        }

        ++v13;
        v14 += 4;
      }

      while (v13 != v5);
    }
  }

  else
  {
    if (kaldi::ContextDependency::CentralPosition(this))
    {
      kaldi::KaldiAssertFailure_("CopyToMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/compressed-matrix.cc", &stru_1A8.segname[14], "mat->NumRows() == 0", v34);
    }

    result = kaldi::ContextDependency::ContextWidth(this);
    if (result)
    {
      kaldi::KaldiAssertFailure_("CopyToMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/compressed-matrix.cc", &stru_1A8.segname[15], "mat->NumCols() == 0", v35);
    }
  }

  return result;
}

double *kaldi::CompressedMatrix::CopyToMat<double>(uint64_t *a1, kaldi::ContextDependency *this)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 + 8);
    v5 = *(v3 + 12);
    if (kaldi::ContextDependency::CentralPosition(this) != v4)
    {
      kaldi::KaldiAssertFailure_("CopyToMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/compressed-matrix.cc", &stru_1A8.addr + 6, "mat->NumRows() == num_rows", v6);
    }

    result = kaldi::ContextDependency::ContextWidth(this);
    if (result != v5)
    {
      kaldi::KaldiAssertFailure_("CopyToMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/compressed-matrix.cc", &stru_1A8.addr + 7, "mat->NumCols() == num_cols", v9);
    }

    if (v5 >= 1)
    {
      v13 = 0;
      v14 = (v3 + 16);
      v15 = (v3 + 16 + 8 * v5);
      do
      {
        if (v4 >= 1)
        {
          v16 = 0;
          v17 = 0x3EF000100010000ALL;
          v18 = *(v3 + 4) * 0.0000152590219;
          LOWORD(v17) = v14[3];
          v19 = *v3;
          *&v17 = v19 + v18 * v17;
          LOWORD(v10) = v14[2];
          v20 = v19 + v18 * v10;
          LOWORD(v11) = v14[1];
          v21 = v19 + v18 * v11;
          LOWORD(v12) = *v14;
          *&v18 = v19 + v18 * v12;
          v22 = v20;
          v23 = *&v17 - v20;
          v24 = v21;
          v25 = v20 - v21;
          v26 = *&v18;
          v27 = v21 - *&v18;
          do
          {
            v28 = *v15;
            v29 = v28 - 64;
            if (v28 > 0x40)
            {
              v31 = v28 >= 0xC0;
              v32 = v28 - 192;
              if (v32 != 0 && v31)
              {
                v30 = v22 + (v23 * v32) * 0.0158730159;
              }

              else
              {
                v30 = v24 + (v25 * v29) * 0.0078125;
              }
            }

            else
            {
              v30 = v26 + (v27 * v28) * 0.015625;
            }

            v33 = v30;
            v34 = v33;
            result = kaldi::MatrixBase<double>::operator()(this, v16, v13, v8, v9);
            *result = v34;
            ++v16;
            ++v15;
          }

          while (v4 != v16);
        }

        ++v13;
        v14 += 4;
      }

      while (v13 != v5);
    }
  }

  else
  {
    if (kaldi::ContextDependency::CentralPosition(this))
    {
      kaldi::KaldiAssertFailure_("CopyToMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/compressed-matrix.cc", &stru_1A8.segname[14], "mat->NumRows() == 0", v35);
    }

    result = kaldi::ContextDependency::ContextWidth(this);
    if (result)
    {
      kaldi::KaldiAssertFailure_("CopyToMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/compressed-matrix.cc", &stru_1A8.segname[15], "mat->NumCols() == 0", v36);
    }
  }

  return result;
}

uint64_t kaldi::CompressedMatrix::CopyRowsFromVec<float>(uint64_t *a1, char **a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 + 8);
    v6 = *(v4 + 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  kaldi::Matrix<float>::Matrix(v8, v5, v6, 0, 0);
  kaldi::MatrixBase<float>::CopyRowsFromVec(v8, a2);
  kaldi::CompressedMatrix::CopyFromMat<float>(a1, v8);
  return kaldi::Matrix<float>::~Matrix(v8);
}

void sub_9FC7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

float kaldi::CompressedMatrix::CopyColToVec<float>(uint64_t *a1, unsigned int a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, const char *a10)
{
  v10 = *a1;
  if (*a1)
  {
    v11 = *(v10 + 12);
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= a2)
  {
    kaldi::KaldiAssertFailure_("CopyColToVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/compressed-matrix.cc", &stru_1F8.addr + 4, "col < this->NumCols()", a10);
  }

  if ((a2 & 0x80000000) != 0)
  {
    kaldi::KaldiAssertFailure_("CopyColToVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/compressed-matrix.cc", &stru_1F8.addr + 5, "col >= 0", a10);
  }

  v12 = *(a3 + 8);
  if (v10)
  {
    v13 = *(v10 + 8);
  }

  else
  {
    v13 = 0;
  }

  if (v12 != v13)
  {
    kaldi::KaldiAssertFailure_("CopyColToVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/compressed-matrix.cc", &stru_1F8.addr + 6, "v->Dim() == this->NumRows()", a10);
  }

  v14 = *(v10 + 8);
  if (v14 >= 1)
  {
    v15 = 0;
    v16 = (v10 + 16 + 8 * a2);
    LOWORD(a5) = v16[3];
    LOWORD(a6) = v16[2];
    LOWORD(a7) = v16[1];
    LOWORD(a8) = *v16;
    v17 = *(v10 + 4) * 0.0000152590219;
    v18 = *v10;
    v19 = v18 + v17 * *&a5;
    v20 = v18 + v17 * *&a6;
    v21 = v18 + v17 * *&a7;
    *&v18 = v18 + v17 * *&a8;
    v22 = v10 + 16 + 8 * *(v10 + 12) + v14 * a2;
    a4 = v20;
    *&a5 = v19 - v20;
    v23 = v21;
    v24 = v20 - v21;
    v25 = *&v18;
    v26 = v21 - *&v18;
    do
    {
      v27 = *(v22 + v15);
      v28 = v27 - 64;
      if (v27 > 0x40)
      {
        v30 = v27 >= 0xC0;
        v31 = v27 - 192;
        if (v31 != 0 && v30)
        {
          v29 = a4 + (*&a5 * v31) * 0.0158730159;
        }

        else
        {
          v29 = v23 + (v24 * v28) * 0.0078125;
        }
      }

      else
      {
        v29 = v25 + (v26 * v27) * 0.015625;
      }

      if (v12 == v15)
      {
        kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", stru_68.sectname, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(dim_)", a10);
      }

      v32 = v29;
      *(*a3 + 4 * v15++) = v32;
    }

    while (v14 != v15);
  }

  return *&a4;
}

uint64_t *kaldi::CompressedMatrix::CopyRowToVec<float>(uint64_t *result, unsigned int a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, const char *a11)
{
  v11 = *result;
  if (*result)
  {
    v12 = *(v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= a2)
  {
    kaldi::KaldiAssertFailure_("CopyRowToVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/compressed-matrix.cc", &stru_1F8.sectname[14], "row < this->NumRows()", a11);
  }

  if ((a2 & 0x80000000) != 0)
  {
    kaldi::KaldiAssertFailure_("CopyRowToVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/compressed-matrix.cc", &stru_1F8.sectname[15], "row >= 0", a11);
  }

  v13 = *(a3 + 8);
  if (v11)
  {
    v14 = *(v11 + 12);
  }

  else
  {
    v14 = 0;
  }

  if (v13 != v14)
  {
    kaldi::KaldiAssertFailure_("CopyRowToVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/compressed-matrix.cc", stru_1F8.segname, "v->Dim() == this->NumCols()", a11);
  }

  v15 = *(v11 + 12);
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = (v11 + 8 * v15 + a2 + 16);
    v18 = 4 * v13;
    v19 = 4 * v15;
    v20 = (v11 + 22);
    do
    {
      v21 = *v11;
      v22 = *(v11 + 4) * 0.0000152590219;
      LOWORD(a8) = *(v20 - 2);
      v23 = v21 + v22 * *&a8;
      *&v23 = v23;
      v24 = *v17;
      v25 = v24 - 64;
      if (v24 > 0x40)
      {
        LOWORD(a9) = *(v20 - 1);
        a9 = v21 + v22 * *&a9;
        *&a9 = a9;
        v30 = v24 >= 0xC0;
        v31 = v24 - 192;
        if (v31 != 0 && v30)
        {
          LOWORD(v23) = *v20;
          a8 = *&v23;
          v34 = v21 + v22 * a8;
          *&a8 = v31;
          v29 = *&a9 + ((v34 - *&a9) * v31) * 0.0158730159;
        }

        else
        {
          v32 = *&v23;
          v33 = ((*&a9 - *&v23) * v25);
          a8 = 0.0078125;
          v29 = v32 + v33 * 0.0078125;
        }
      }

      else
      {
        LOWORD(a9) = *(v20 - 3);
        a9 = *&a9;
        v26 = v21 + v22 * a9;
        v27 = v26;
        v28 = ((*&v23 - v26) * v24);
        a8 = 0.015625;
        v29 = v27 + v28 * 0.015625;
      }

      if (v18 == v16)
      {
        kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", stru_68.sectname, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(dim_)", a11);
      }

      v20 += 4;
      v35 = v29;
      *(*a3 + v16) = v35;
      v17 += *(v11 + 8);
      v16 += 4;
    }

    while (v19 != v16);
  }

  return result;
}

uint64_t kaldi::CompressedMatrix::Write(uint64_t *a1, void *a2, int a3, uint64_t a4, const char *a5)
{
  if (a3)
  {
    v7 = a4;
    if (a4)
    {
      v8 = "CN";
    }

    else
    {
      v8 = "CM";
    }

    kaldi::WriteToken(a2, &dword_0 + 1, v8, a4, a5);
    if (v7 && (fst::AlignOutput(a2) & 1) == 0)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v14, "Write", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/compressed-matrix.cc", 295);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v14, "Could not align output");
LABEL_18:
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
    }

    if (*a1)
    {
      v9 = (*(*a1 + 8) + 8) * *(*a1 + 12) + 16;
    }

    else
    {
      v14[0] = 0;
      v14[1] = 0;
    }

    result = std::ostream::write();
  }

  else
  {
    v10 = *a1;
    if (*a1)
    {
      v11 = *(v10 + 8);
      v12 = *(v10 + 12);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    kaldi::Matrix<float>::Matrix(v14, v11, v12, 1, 0);
    kaldi::CompressedMatrix::CopyToMat<float>(a1, v14);
    kaldi::MatrixBase<float>::Write(v14, a2, 0, 0);
    result = kaldi::Matrix<float>::~Matrix(v14);
  }

  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v14, "Write", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/compressed-matrix.cc", 341);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v14, "Error writing compressed matrix to stream.");
    goto LABEL_18;
  }

  return result;
}

void kaldi::CompressedMatrix::Read(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  if (*a1)
  {
    if (*(a1 + 8) != 1)
    {
      operator delete[]();
    }

    *(a1 + 8) = 0;
    *a1 = 0;
  }

  if (!a3)
  {
    v13 = kaldi::Matrix<float>::Matrix(v36);
    kaldi::Matrix<float>::Read(v36, a2, 0, 0, 0, v13);
    kaldi::CompressedMatrix::CopyFromMat<float>(a1, v36);
LABEL_21:
    kaldi::Matrix<float>::~Matrix(v36);
LABEL_22:
    if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v36, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/compressed-matrix.cc", 448);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v36, "Failed to read data.");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v36);
    }

    return;
  }

  if (kaldi::Peek(a2, 1) != 67)
  {
    v14 = kaldi::Matrix<float>::Matrix(v36);
    kaldi::Matrix<float>::Read(v36, a2, 1, a4 != 0, 0, v14);
    kaldi::CompressedMatrix::CopyFromMat<float>(a1, v36);
    goto LABEL_21;
  }

  v35 = 2;
  if (a4)
  {
    v9 = 20035;
  }

  else
  {
    v9 = 19779;
  }

  v33 = v9;
  v34 = 0;
  __p = 0;
  v31 = 0;
  v32 = 0;
  kaldi::ReadToken(a2, 1, &__p, v7, v8);
  v10 = HIBYTE(v32);
  if (v32 < 0)
  {
    v10 = v31;
  }

  if (v10 == 2)
  {
    p_p = __p;
    if (v32 >= 0)
    {
      p_p = &__p;
    }

    if (*p_p == v33)
    {
      if (!a4)
      {
        goto LABEL_36;
      }

      goto LABEL_32;
    }
  }

  if (SHIBYTE(v32) < 0)
  {
    if (v31 != 2)
    {
      goto LABEL_44;
    }

    v12 = __p;
  }

  else
  {
    if (SHIBYTE(v32) != 2)
    {
      goto LABEL_44;
    }

    v12 = &__p;
  }

  if (*v12 != v33)
  {
    goto LABEL_44;
  }

  v15 = &__p;
  if (v32 < 0)
  {
    v15 = __p;
  }

  if (v15[1] != 78)
  {
LABEL_44:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v36, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/compressed-matrix.cc", 361);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "Expected token ", 15);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, &v33, 2);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ", got ", 6);
    if (v32 >= 0)
    {
      v25 = &__p;
    }

    else
    {
      v25 = __p;
    }

    if (v32 >= 0)
    {
      v26 = HIBYTE(v32);
    }

    else
    {
      v26 = v31;
    }

    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v25, v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, ". This could mean that you're trying to memory map an unaligned file.", 69);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v36);
  }

  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(v36, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/compressed-matrix.cc", 358);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "Reading aligned matrix as a stream", 34);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v36);
  }

LABEL_32:
  fst::AlignInput();
  if (a4)
  {
    std::istream::tellg();
    v16 = a4 + v37;
    *a1 = a4 + v37;
    *(a1 + 8) = 1;
    v17 = ((*(v16 + 8) + 8) * *(v16 + 12) + 16);
    std::istream::seekg();
    if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v36, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/compressed-matrix.cc", 379);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "Seeking for aligned data failed", 31);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v36);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p);
    }

    goto LABEL_22;
  }

LABEL_36:
  std::istream::read();
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v36, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/compressed-matrix.cc", 387);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "Failed to read header", 21);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v36);
  }

  if (v29)
  {
    kaldi::CompressedMatrix::AllocateData(((v28 + 8) * v29 + 16), v18, v19, v20, v21);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p);
  }
}

void sub_A073C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

float kaldi::CompressedMatrix::Sum(kaldi::CompressedMatrix *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*this)
  {
    v6 = *(*this + 8);
  }

  else
  {
    v6 = 0;
  }

  memset(v18, 0, sizeof(v18));
  kaldi::Vector<float>::Resize(v18, v6, 0, a4, a5);
  v14 = 0;
  v15 = 0.0;
  while (1)
  {
    v16 = *this;
    if (*this)
    {
      LODWORD(v16) = *(v16 + 12);
    }

    if (v14 >= v16)
    {
      break;
    }

    kaldi::CompressedMatrix::CopyColToVec<float>(this, v14, v18, v9, v10, v11, v12, v13, v7, v8);
    v9 = kaldi::VectorBase<float>::Sum(v18);
    v15 = v15 + *&v9;
    ++v14;
  }

  kaldi::Vector<float>::Destroy(v18);
  return v15;
}

void sub_A0814(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::CompressedMatrix::operator=(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*result)
  {
    if (*(result + 8) != 1)
    {
      operator delete[]();
    }

    *(result + 8) = 0;
    *result = 0;
  }

  if (*a2)
  {
    kaldi::CompressedMatrix::AllocateData(((*(*a2 + 8) + 8) * *(*a2 + 12) + 16), a2, a3, a4, a5);
  }

  return result;
}

uint64_t kaldi::CompressedMatrix::CompressedMatrix(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  *this = 0;
  *(this + 8) = 0;
  return kaldi::CompressedMatrix::operator=(this, a2, a3, a4, a5);
}

void kaldi::CompressedMatrix::ComputeColHeader<float>(float *a1, float *a2, int a3, int a4, uint64_t a5)
{
  if (a4 <= 0)
  {
    kaldi::KaldiAssertFailure_("ComputeColHeader", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/compressed-matrix.cc", &stru_68.size + 5, "num_rows > 0", a5);
  }

  v10 = a4;
  std::vector<float>::vector[abi:ne200100](&__p, a4);
  v12 = __p;
  v13 = v43;
  if (v43 != __p)
  {
    v14 = (v43 - __p) >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    v15 = __p;
    do
    {
      v11 = *a2;
      *v15++ = *a2;
      a2 += a3;
      --v14;
    }

    while (v14);
  }

  if (a4 <= 4)
  {
    std::__sort<std::__less<float,float> &,float *>();
    v24 = __p;
    v35 = *a1;
    v36 = a1[1];
    v37 = (*__p - *a1) / v36;
    v38 = 1.0;
    if (v37 > 1.0)
    {
      v37 = 1.0;
    }

    if (v37 >= 0.0)
    {
      v39 = v37;
    }

    else
    {
      v39 = 0.0;
    }

    v32 = ((v39 * 65535.0) + 0.499);
    *a5 = v32;
    if (a4 == 1)
    {
      LOWORD(v32) = v32 + 1;
      *(a5 + 2) = v32;
    }

    else
    {
      if (((v24[1] - v35) / v36) <= 1.0)
      {
        v38 = (v24[1] - v35) / v36;
      }

      if (v38 < 0.0)
      {
        v38 = 0.0;
      }

      v32 = (v32 + 1);
      if (v32 <= ((v38 * 65535.0) + 0.499))
      {
        LOWORD(v32) = ((v38 * 65535.0) + 0.499);
      }

      *(a5 + 2) = v32;
      if (a4 > 2)
      {
        if (((v24[2] - v35) / v36) <= 1.0)
        {
          v40 = (v24[2] - v35) / v36;
        }

        else
        {
          v40 = 1.0;
        }

        if (v40 < 0.0)
        {
          v40 = 0.0;
        }

        v32 = (v32 + 1);
        if (v32 <= ((v40 * 65535.0) + 0.499))
        {
          LOWORD(v32) = ((v40 * 65535.0) + 0.499);
        }

        *(a5 + 4) = v32;
        if (a4 == 4)
        {
          v41 = (v24[3] - v35) / v36;
          if (v41 > 1.0)
          {
            v41 = 1.0;
          }

          if (v41 < 0.0)
          {
            v41 = 0.0;
          }

          v34 = (v41 * 65535.0) + 0.499;
          goto LABEL_33;
        }

LABEL_63:
        LOWORD(v32) = v32 + 1;
        goto LABEL_64;
      }
    }

    LOWORD(v32) = v32 + 1;
    *(a5 + 4) = v32;
    goto LABEL_63;
  }

  v16 = a4 >> 2;
  v17 = v16;
  v18 = &v12[v17];
  if (&v12[v17] != v13)
  {
    std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(v12, &v12[v16], v13, v11);
    v12 = __p;
    v18 = (__p + v17 * 4);
  }

  std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(v12, v12, v18, v11);
  v20 = (3 * v16);
  v22 = __p;
  v21 = v43;
  v23 = (__p + 4 * v20);
  if (v23 != v43)
  {
    std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>((__p + v17 * 4 + 4), v23, v43, v19);
    v22 = __p;
    v21 = v43;
  }

  std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(&v22[(3 * v16) + 1], v21 - 1, v21, v19);
  v24 = __p;
  v25 = *a1;
  v26 = a1[1];
  v27 = (*__p - *a1) / v26;
  if (v27 > 1.0)
  {
    v27 = 1.0;
  }

  if (v27 < 0.0)
  {
    v27 = 0.0;
  }

  v28 = ((v27 * 65535.0) + 0.499);
  *a5 = v28;
  v29 = (v24[v16] - v25) / v26;
  if (v29 > 1.0)
  {
    v29 = 1.0;
  }

  if (v29 < 0.0)
  {
    v29 = 0.0;
  }

  v30 = (v28 + 1);
  if (v30 <= ((v29 * 65535.0) + 0.499))
  {
    LOWORD(v30) = ((v29 * 65535.0) + 0.499);
  }

  *(a5 + 2) = v30;
  v31 = (v24[v20] - v25) / v26;
  if (v31 > 1.0)
  {
    v31 = 1.0;
  }

  if (v31 < 0.0)
  {
    v31 = 0.0;
  }

  v32 = (v30 + 1);
  if (v32 <= ((v31 * 65535.0) + 0.499))
  {
    LOWORD(v32) = ((v31 * 65535.0) + 0.499);
  }

  *(a5 + 4) = v32;
  v33 = (v24[v10 - 1] - v25) / v26;
  if (v33 > 1.0)
  {
    v33 = 1.0;
  }

  if (v33 < 0.0)
  {
    v33 = 0.0;
  }

  v34 = (v33 * 65535.0) + 0.499;
LABEL_33:
  v32 = (v32 + 1);
  if (v32 <= v34)
  {
    LOWORD(v32) = v34;
  }

LABEL_64:
  *(a5 + 6) = v32;
  v43 = v24;
  operator delete(v24);
}

void sub_A0C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A0D00(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<double *>>(double *a1, double *a2, double *a3, double a4)
{
  while (a3 != a2)
  {
    v4 = a3 - a1;
    if (v4 < 2)
    {
      break;
    }

    if (v4 == 3)
    {
      v37 = a1[1];
      v38 = *(a3 - 1);
      if (v37 < v38)
      {
        v39 = *(a1 + 1);
      }

      else
      {
        v39 = *(a3 - 1);
      }

      if (v37 < v38)
      {
        v37 = *(a3 - 1);
      }

      *(a3 - 1) = v37;
      *(a1 + 1) = v39;
      v40 = *(a3 - 1);
      if (v40 < *a1)
      {
        v41 = *(a3 - 1);
      }

      else
      {
        v41 = *a1;
      }

      if (v40 < *a1)
      {
        v40 = *a1;
      }

      *(a3 - 1) = v40;
      v42 = a1[1];
      if (v41 < v42)
      {
        v41 = a1[1];
      }

      else
      {
        *a1 = v42;
      }

      a1[1] = v41;
      return;
    }

    if (v4 == 2)
    {
      v43 = *(a3 - 1);
      v44 = *a1;
      if (v43 < *a1)
      {
        *a1 = v43;
        *(a3 - 1) = v44;
      }

      return;
    }

    if (v4 <= 7)
    {
      std::__selection_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<double *>>(a1, a3, a4);
      return;
    }

    v5 = &a1[(a3 - a1) >> 4];
    v6 = a3 - 1;
    v7 = *(a3 - 1);
    v8 = *v5;
    if (*v5 < v7)
    {
      v9 = *v5;
    }

    else
    {
      v9 = *(a3 - 1);
    }

    if (*v5 < v7)
    {
      v10 = *(a3 - 1);
    }

    else
    {
      v10 = *v5;
    }

    *v6 = v10;
    *v5 = v9;
    v11 = *v6;
    v12 = *a1;
    if (*v6 < *a1)
    {
      v13 = *v6;
    }

    else
    {
      v13 = *a1;
    }

    if (*v6 < *a1)
    {
      v14 = *a1;
    }

    else
    {
      v14 = *v6;
    }

    *v6 = v14;
    v15 = *v5;
    v16 = *v5;
    if (v13 >= *v5)
    {
      *a1 = v15;
      v16 = v13;
    }

    v17 = v11 >= v12;
    if (v13 >= v15)
    {
      v17 = 1;
    }

    *v5 = v16;
    if (v8 >= v7)
    {
      v17 = 1;
    }

    a4 = *a1;
    if (*a1 >= v16)
    {
      v18 = a3 - 1;
      while (--v18 != a1)
      {
        if (*v18 < v16)
        {
          *a1 = *v18;
          *v18 = a4;
          if (v17)
          {
            v17 = 2;
          }

          else
          {
            v17 = 1;
          }

          goto LABEL_33;
        }
      }

      v28 = a1 + 1;
      if (a4 >= *v6)
      {
        while (v28 != v6)
        {
          v29 = *v28;
          if (a4 < *v28)
          {
            *v28++ = *v6;
            *v6 = v29;
            goto LABEL_65;
          }

          ++v28;
        }

        return;
      }

LABEL_65:
      if (v28 == v6)
      {
        return;
      }

      while (1)
      {
        v32 = *a1;
        do
        {
          v33 = *v28++;
          a4 = v33;
        }

        while (v32 >= v33);
        v34 = v28 - 1;
        do
        {
          v35 = *--v6;
          v36 = v35;
        }

        while (v32 < v35);
        if (v34 >= v6)
        {
          break;
        }

        *v34 = v36;
        *v6 = a4;
      }

      a1 = v28 - 1;
      if (v34 > a2)
      {
        return;
      }
    }

    else
    {
      v18 = a3 - 1;
LABEL_33:
      v19 = a1 + 1;
      if (a1 + 1 >= v18)
      {
        v23 = a1 + 1;
      }

      else
      {
        v20 = a1 + 1;
        while (1)
        {
          v21 = *v5;
          do
          {
            v22 = *v20++;
            a4 = v22;
          }

          while (v22 < v21);
          v23 = v20 - 1;
          do
          {
            v24 = *--v18;
            v25 = v24;
          }

          while (v24 >= v21);
          if (v23 >= v18)
          {
            break;
          }

          *v23 = v25;
          *v18 = a4;
          ++v17;
          if (v23 == v5)
          {
            v5 = v18;
          }
        }
      }

      if (v23 != v5)
      {
        a4 = *v5;
        v26 = *v23;
        if (*v5 < *v23)
        {
          *v23 = a4;
          *v5 = v26;
          ++v17;
        }
      }

      if (v23 == a2)
      {
        return;
      }

      if (!v17)
      {
        if (v23 <= a2)
        {
          v30 = v23 + 1;
          while (v30 != a3)
          {
            v31 = *(v30 - 1);
            a4 = *v30++;
            if (a4 < v31)
            {
              goto LABEL_49;
            }
          }
        }

        else
        {
          while (v19 != v23)
          {
            v27 = *(v19 - 1);
            a4 = *v19++;
            if (a4 < v27)
            {
              goto LABEL_49;
            }
          }
        }

        return;
      }

LABEL_49:
      if (v23 <= a2)
      {
        a1 = v23 + 1;
      }

      else
      {
        a3 = v23;
      }
    }
  }
}

double std::__selection_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<double *>>(double *a1, double *a2, double result)
{
  while (a1 != a2 - 1)
  {
    v3 = a1++;
    if (v3 != a2 && a1 != a2)
    {
      result = *v3;
      v4 = a1;
      v5 = v3;
      v6 = a1;
      do
      {
        v7 = *v6++;
        v8 = v7;
        if (v7 < result)
        {
          result = v8;
          v5 = v4;
        }

        v4 = v6;
      }

      while (v6 != a2);
      if (v5 != v3)
      {
        result = *v3;
        *v3 = *v5;
        *v5 = result;
      }
    }
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::operator()(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 12) <= a2 || *(a1 + 8) <= a3)
  {
    kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_B8.segname[5], "static_cast<UnsignedMatrixIndexT>(r) < static_cast<UnsignedMatrixIndexT>(num_rows_) && static_cast<UnsignedMatrixIndexT>(c) < static_cast<UnsignedMatrixIndexT>(num_cols_)", a5);
  }

  return *a1 + 4 * (*(a1 + 16) * a2) + 4 * a3;
}

uint64_t kaldi::MatrixBase<double>::operator()(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 12) <= a2 || *(a1 + 8) <= a3)
  {
    kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_B8.segname[5], "static_cast<UnsignedMatrixIndexT>(r) < static_cast<UnsignedMatrixIndexT>(num_rows_) && static_cast<UnsignedMatrixIndexT>(c) < static_cast<UnsignedMatrixIndexT>(num_cols_)", a5);
  }

  return *a1 + 8 * (*(a1 + 16) * a2) + 8 * a3;
}

uint64_t kaldi::Matrix<float>::Matrix<double>(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (a3 == 111)
  {
    kaldi::Matrix<float>::Resize(a1, *(a2 + 12), *(a2 + 8), 0, 0);
    v7 = 111;
  }

  else
  {
    kaldi::Matrix<float>::Resize(a1, *(a2 + 8), *(a2 + 12), 0, 0);
    v7 = 112;
  }

  kaldi::MatrixBase<float>::CopyFromMat<double>(a1, a2, v7, v5, v6);
  return a1;
}

void kaldi::Matrix<float>::Resize(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const char *a5)
{
  v5 = a5;
  v6 = a3;
  v7 = a2;
  v9 = *(a1 + 16);
  if (v9 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a1 + 20) / v9;
  }

  if (v9 == a3)
  {
    v11 = 0;
  }

  else
  {
    v11 = a5;
  }

  v12 = *a1;
  if (!a4)
  {
    v16 = 1;
    goto LABEL_35;
  }

  if (a4 != 2)
  {
    if (a4 == 3)
    {
      if (!v12)
      {
        kaldi::Matrix<float>::Init(a1, a2, a3, a5, a5);
        goto LABEL_57;
      }

      if (*(a1 + 12) == a2)
      {
        v13 = *(a1 + 8) == a3 ? v11 : 1;
        if ((v13 & 1) == 0)
        {
          return;
        }
      }

      if (v9 >= a3 && v10 >= a2)
      {
        v15 = v11;
      }

      else
      {
        v15 = 1;
      }

      if ((v15 & 1) == 0)
      {
        *(a1 + 8) = a3;
        *(a1 + 12) = a2;
        goto LABEL_57;
      }

      LOBYTE(v16) = 1;
LABEL_43:
      if ((*(a1 + 32) & 1) == 0)
      {
        free(v12);
      }

      *(a1 + 32) = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      kaldi::Matrix<float>::Init(a1, v7, v6, v5, a5);
      if ((v16 & 1) == 0)
      {
        return;
      }

LABEL_57:

      kaldi::MatrixBase<float>::SetZero(a1);
      return;
    }

    v16 = 0;
    if (!v12)
    {
LABEL_48:
      kaldi::Matrix<float>::Init(a1, a2, a3, a5, a5);
      if (!v16)
      {
        return;
      }

      goto LABEL_57;
    }

LABEL_36:
    if (v9 >= a3 && v10 >= a2)
    {
      v21 = v11;
    }

    else
    {
      v21 = 1;
    }

    if ((v21 & 1) == 0)
    {
      *(a1 + 8) = a3;
      *(a1 + 12) = a2;
      if (!v16)
      {
        return;
      }

      goto LABEL_57;
    }

    goto LABEL_43;
  }

  v16 = 1;
  if (!a2 || !v12)
  {
LABEL_35:
    if (!v12)
    {
      goto LABEL_48;
    }

    goto LABEL_36;
  }

  if (v9 < a3 || v10 < a2)
  {
    v11 = 1;
  }

  v18 = *(a1 + 12);
  if (v11)
  {
    v19 = a2 <= v18 && *(a1 + 8) >= a3;
    v42 = 0;
    memset(v41, 0, sizeof(v41));
    kaldi::Matrix<float>::Resize(v41, a2, a3, v19, a5);
    if (*(a1 + 12) >= v7)
    {
      v24 = v7;
    }

    else
    {
      v24 = *(a1 + 12);
    }

    if (*(a1 + 8) >= v6)
    {
      v25 = v6;
    }

    else
    {
      v25 = *(a1 + 8);
    }

    v40 = 0;
    if (!HIDWORD(v41[1]) || !LODWORD(v41[1]) || HIDWORD(v41[1]) < v24 || LODWORD(v41[1]) < v25)
    {
      kaldi::KaldiAssertFailure_("SubMatrix", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_748.reserved1 + 2, "static_cast<UnsignedMatrixIndexT>(ro) < static_cast<UnsignedMatrixIndexT>(M.num_rows_) && static_cast<UnsignedMatrixIndexT>(co) < static_cast<UnsignedMatrixIndexT>(M.num_cols_) && static_cast<UnsignedMatrixIndexT>(r) <= static_cast<UnsignedMatrixIndexT>(M.num_rows_ - ro) && static_cast<UnsignedMatrixIndexT>(c) <= static_cast<UnsignedMatrixIndexT>(M.num_cols_ - co)", v23);
    }

    v37 = v25;
    v38 = v24;
    v36 = v41[0];
    v39 = v41[2];
    kaldi::SubMatrix<float>::SubMatrix(v35, a1, 0, v24, 0, v25);
    kaldi::MatrixBase<float>::CopyFromMat<float>(&v36, v35, 111, v26, v27);
    v28 = v41[0];
    v41[0] = *a1;
    v29 = v41[0];
    *a1 = v28;
    v30 = *&v41[1];
    *&v41[1] = *(a1 + 8);
    *(a1 + 8) = v30;
    v31 = v42;
    v32 = *(a1 + 32);
    v42 = v32;
    *(a1 + 32) = v31;
    if (v29 && (v32 & 1) == 0)
    {
      free(v29);
    }
  }

  else
  {
    v22 = *(a1 + 8);
    *(a1 + 8) = v9;
    *(a1 + 12) = v10;
    if (a3 > v22)
    {
      kaldi::SubMatrix<float>::SubMatrix(v41, a1, 0, a2, v22, a3 - v22);
      if (LODWORD(v41[1]) == LODWORD(v41[2]))
      {
        bzero(v41[0], 4 * SLODWORD(v41[1]) * SHIDWORD(v41[1]));
      }

      else if (SHIDWORD(v41[1]) >= 1)
      {
        v33 = 0;
        do
        {
          bzero(v41[0] + 4 * LODWORD(v41[2]) * v33++, 4 * SLODWORD(v41[1]));
        }

        while (v33 < SHIDWORD(v41[1]));
      }
    }

    if (v7 > v18)
    {
      kaldi::SubMatrix<float>::SubMatrix(v41, a1, v18, v7 - v18, 0, v6);
      if (LODWORD(v41[1]) == LODWORD(v41[2]))
      {
        bzero(v41[0], 4 * SLODWORD(v41[1]) * SHIDWORD(v41[1]));
      }

      else if (SHIDWORD(v41[1]) >= 1)
      {
        v34 = 0;
        do
        {
          bzero(v41[0] + 4 * LODWORD(v41[2]) * v34++, 4 * SLODWORD(v41[1]));
        }

        while (v34 < SHIDWORD(v41[1]));
      }
    }

    *(a1 + 8) = v6;
    *(a1 + 12) = v7;
  }
}

void sub_A154C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a17)
  {
    if ((a21 & 1) == 0)
    {
      free(a17);
    }
  }

  _Unwind_Resume(exception_object);
}

void kaldi::MatrixBase<float>::CopyFromMat<double>(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  v7 = *(a2 + 12);
  if (a3 == 111)
  {
    v8 = *(a1 + 12);
    if (v8 != v7 || *(a1 + 8) != *(a2 + 8))
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_388.sectname[5], "num_rows_ == M.NumRows() && num_cols_ == M.NumCols()", a5);
    }

    if (v8 >= 1)
    {
      v9 = 0;
      do
      {
        kaldi::MatrixBase<float>::Row(a1, v9, a5, v30);
        if (*(a2 + 12) <= v9)
        {
          kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_108.size + 2, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v12);
        }

        v13 = *a2 + 8 * (*(a2 + 16) * v9);
        v14 = *(a2 + 8);
        v28 = 0;
        v29 = 0;
        v26 = v13;
        v27 = v14;
        kaldi::VectorBase<float>::CopyFromVec<double>(v30, &v26, v10, v11, v12);
        ++v9;
      }

      while (v9 < *(a1 + 12));
    }
  }

  else
  {
    v15 = *(a1 + 8);
    if (v15 != v7 || (v16 = *(a1 + 12), v16 != *(a2 + 8)))
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_388.sectname[9], "num_cols_ == M.NumRows() && num_rows_ == M.NumCols()", a5);
    }

    if (v16 >= 1)
    {
      v17 = 0;
      v18 = *a1;
      v19 = *a2;
      v20 = 4 * *(a1 + 16);
      v21 = 8 * *(a2 + 16);
      do
      {
        v22 = v15;
        v23 = v19;
        v24 = v18;
        if (v15 >= 1)
        {
          do
          {
            v25 = *v23;
            *v24++ = v25;
            v23 = (v23 + v21);
            --v22;
          }

          while (v22);
        }

        ++v17;
        v18 = (v18 + v20);
        ++v19;
      }

      while (v17 != v16);
    }
  }
}

void kaldi::Matrix<double>::Resize(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const char *a5)
{
  v5 = a5;
  v6 = a3;
  v7 = a2;
  v9 = *(a1 + 16);
  if (v9 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a1 + 20) / v9;
  }

  if (v9 == a3)
  {
    v11 = 0;
  }

  else
  {
    v11 = a5;
  }

  v12 = *a1;
  if (!a4)
  {
    v16 = 1;
    goto LABEL_35;
  }

  if (a4 != 2)
  {
    if (a4 == 3)
    {
      if (!v12)
      {
        kaldi::Matrix<double>::Init(a1, a2, a3, a5, a5);
        goto LABEL_57;
      }

      if (*(a1 + 12) == a2)
      {
        v13 = *(a1 + 8) == a3 ? v11 : 1;
        if ((v13 & 1) == 0)
        {
          return;
        }
      }

      if (v9 >= a3 && v10 >= a2)
      {
        v15 = v11;
      }

      else
      {
        v15 = 1;
      }

      if ((v15 & 1) == 0)
      {
        *(a1 + 8) = a3;
        *(a1 + 12) = a2;
        goto LABEL_57;
      }

      LOBYTE(v16) = 1;
LABEL_43:
      if ((*(a1 + 32) & 1) == 0)
      {
        free(v12);
      }

      *(a1 + 32) = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      kaldi::Matrix<double>::Init(a1, v7, v6, v5, a5);
      if ((v16 & 1) == 0)
      {
        return;
      }

LABEL_57:

      kaldi::MatrixBase<double>::SetZero(a1);
      return;
    }

    v16 = 0;
    if (!v12)
    {
LABEL_48:
      kaldi::Matrix<double>::Init(a1, a2, a3, a5, a5);
      if (!v16)
      {
        return;
      }

      goto LABEL_57;
    }

LABEL_36:
    if (v9 >= a3 && v10 >= a2)
    {
      v21 = v11;
    }

    else
    {
      v21 = 1;
    }

    if ((v21 & 1) == 0)
    {
      *(a1 + 8) = a3;
      *(a1 + 12) = a2;
      if (!v16)
      {
        return;
      }

      goto LABEL_57;
    }

    goto LABEL_43;
  }

  v16 = 1;
  if (!a2 || !v12)
  {
LABEL_35:
    if (!v12)
    {
      goto LABEL_48;
    }

    goto LABEL_36;
  }

  if (v9 < a3 || v10 < a2)
  {
    v11 = 1;
  }

  v18 = *(a1 + 12);
  if (v11)
  {
    v19 = a2 <= v18 && *(a1 + 8) >= a3;
    v42 = 0;
    memset(v41, 0, sizeof(v41));
    kaldi::Matrix<double>::Resize(v41, a2, a3, v19, a5);
    if (*(a1 + 12) >= v7)
    {
      v24 = v7;
    }

    else
    {
      v24 = *(a1 + 12);
    }

    if (*(a1 + 8) >= v6)
    {
      v25 = v6;
    }

    else
    {
      v25 = *(a1 + 8);
    }

    v40 = 0;
    if (!HIDWORD(v41[1]) || !LODWORD(v41[1]) || HIDWORD(v41[1]) < v24 || LODWORD(v41[1]) < v25)
    {
      kaldi::KaldiAssertFailure_("SubMatrix", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_748.reserved1 + 2, "static_cast<UnsignedMatrixIndexT>(ro) < static_cast<UnsignedMatrixIndexT>(M.num_rows_) && static_cast<UnsignedMatrixIndexT>(co) < static_cast<UnsignedMatrixIndexT>(M.num_cols_) && static_cast<UnsignedMatrixIndexT>(r) <= static_cast<UnsignedMatrixIndexT>(M.num_rows_ - ro) && static_cast<UnsignedMatrixIndexT>(c) <= static_cast<UnsignedMatrixIndexT>(M.num_cols_ - co)", v23);
    }

    v37 = v25;
    v38 = v24;
    v36 = v41[0];
    v39 = v41[2];
    kaldi::SubMatrix<double>::SubMatrix(v35, a1, 0, v24, 0, v25);
    kaldi::MatrixBase<double>::CopyFromMat<double>(&v36, v35, 111, v26, v27);
    v28 = v41[0];
    v41[0] = *a1;
    v29 = v41[0];
    *a1 = v28;
    v30 = *&v41[1];
    *&v41[1] = *(a1 + 8);
    *(a1 + 8) = v30;
    v31 = v42;
    v32 = *(a1 + 32);
    v42 = v32;
    *(a1 + 32) = v31;
    if (v29 && (v32 & 1) == 0)
    {
      free(v29);
    }
  }

  else
  {
    v22 = *(a1 + 8);
    *(a1 + 8) = v9;
    *(a1 + 12) = v10;
    if (a3 > v22)
    {
      kaldi::SubMatrix<double>::SubMatrix(v41, a1, 0, a2, v22, a3 - v22);
      if (LODWORD(v41[1]) == LODWORD(v41[2]))
      {
        bzero(v41[0], 8 * SLODWORD(v41[1]) * SHIDWORD(v41[1]));
      }

      else if (SHIDWORD(v41[1]) >= 1)
      {
        v33 = 0;
        do
        {
          bzero(v41[0] + 8 * LODWORD(v41[2]) * v33++, 8 * SLODWORD(v41[1]));
        }

        while (v33 < SHIDWORD(v41[1]));
      }
    }

    if (v7 > v18)
    {
      kaldi::SubMatrix<double>::SubMatrix(v41, a1, v18, v7 - v18, 0, v6);
      if (LODWORD(v41[1]) == LODWORD(v41[2]))
      {
        bzero(v41[0], 8 * SLODWORD(v41[1]) * SHIDWORD(v41[1]));
      }

      else if (SHIDWORD(v41[1]) >= 1)
      {
        v34 = 0;
        do
        {
          bzero(v41[0] + 8 * LODWORD(v41[2]) * v34++, 8 * SLODWORD(v41[1]));
        }

        while (v34 < SHIDWORD(v41[1]));
      }
    }

    *(a1 + 8) = v6;
    *(a1 + 12) = v7;
  }
}

void sub_A1ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a17)
  {
    if ((a21 & 1) == 0)
    {
      free(a17);
    }
  }

  _Unwind_Resume(exception_object);
}

void kaldi::MatrixBase<double>::CopyFromMat<float>(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  v7 = *(a2 + 12);
  if (a3 == 111)
  {
    v8 = *(a1 + 12);
    if (v8 != v7 || *(a1 + 8) != *(a2 + 8))
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_388.sectname[5], "num_rows_ == M.NumRows() && num_cols_ == M.NumCols()", a5);
    }

    if (v8 >= 1)
    {
      v9 = 0;
      do
      {
        v10 = *a1 + 8 * *(a1 + 16) * v9;
        v11 = *(a1 + 8);
        v28 = 0;
        v29 = 0;
        v26 = v10;
        v27 = v11;
        kaldi::MatrixBase<float>::Row(a2, v9, a5, v25);
        kaldi::VectorBase<double>::CopyFromVec<float>(&v26, v25, v12, v13, v14);
        ++v9;
      }

      while (v9 < *(a1 + 12));
    }
  }

  else
  {
    v15 = *(a1 + 8);
    if (v15 != v7 || (v16 = *(a1 + 12), v16 != *(a2 + 8)))
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_388.sectname[9], "num_cols_ == M.NumRows() && num_rows_ == M.NumCols()", a5);
    }

    if (v16 >= 1)
    {
      v17 = 0;
      v18 = *a1;
      v19 = *a2;
      v20 = 8 * *(a1 + 16);
      v21 = 4 * *(a2 + 16);
      do
      {
        v22 = v15;
        v23 = v19;
        v24 = v18;
        if (v15 >= 1)
        {
          do
          {
            *v24++ = *v23;
            v23 = (v23 + v21);
            --v22;
          }

          while (v22);
        }

        ++v17;
        v18 = (v18 + v20);
        ++v19;
      }

      while (v17 != v16);
    }
  }
}

uint64_t kaldi::MatrixBase<float>::Row@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, const char *a3@<X4>, uint64_t *a4@<X8>)
{
  if (*(result + 12) <= a2)
  {
    kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_108.offset + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", a3);
  }

  v4 = *result + 4 * (*(result + 16) * a2);
  v5 = *(result + 8);
  a4[1] = 0;
  a4[2] = 0;
  *a4 = v4;
  *(a4 + 2) = v5;
  return result;
}

{
  if (*(result + 12) <= a2)
  {
    kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_108.size + 2, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", a3);
  }

  v4 = *result + 4 * (*(result + 16) * a2);
  v5 = *(result + 8);
  a4[1] = 0;
  a4[2] = 0;
  *a4 = v4;
  *(a4 + 2) = v5;
  return result;
}

unsigned int *kaldi::MatrixBase<float>::CopyFromMat<float>(unsigned int *result, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  if (a2 != result)
  {
    v6 = result;
    v7 = *(a2 + 12);
    if (a3 == 111)
    {
      v8 = result[3];
      if (v8 != v7 || result[2] != *(a2 + 8))
      {
        kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_388.sectname[5], "num_rows_ == M.NumRows() && num_cols_ == M.NumCols()", a5);
      }

      if (v8 >= 1)
      {
        v9 = 0;
        do
        {
          kaldi::MatrixBase<float>::Row(v6, v9, a5, v25);
          kaldi::MatrixBase<float>::Row(a2, v9, v10, v24);
          result = kaldi::VectorBase<float>::CopyFromVec(v25, v24, v11, v12, v13);
          ++v9;
        }

        while (v9 < *(v6 + 12));
      }
    }

    else
    {
      v14 = result[2];
      if (v14 != v7 || (v15 = result[3], v15 != *(a2 + 8)))
      {
        kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_388.sectname[9], "num_cols_ == M.NumRows() && num_rows_ == M.NumCols()", a5);
      }

      if (v15 >= 1)
      {
        v16 = 0;
        v17 = *result;
        v18 = *a2;
        v19 = 4 * result[4];
        v20 = 4 * *(a2 + 16);
        do
        {
          v21 = v14;
          v22 = v18;
          v23 = v17;
          if (v14 >= 1)
          {
            do
            {
              *v23++ = *v22;
              v22 = (v22 + v20);
              --v21;
            }

            while (v21);
          }

          ++v16;
          v17 = (v17 + v19);
          ++v18;
        }

        while (v16 != v15);
      }
    }
  }

  return result;
}

unsigned int *kaldi::MatrixBase<double>::CopyFromMat<double>(unsigned int *result, unsigned int *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a2 != result)
  {
    v6 = result;
    v7 = a2[3];
    if (a3 == 111)
    {
      v8 = result[3];
      if (v8 != v7 || result[2] != a2[2])
      {
        kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_388.sectname[5], "num_rows_ == M.NumRows() && num_cols_ == M.NumCols()", a5);
      }

      if (v8 >= 1)
      {
        v9 = 0;
        do
        {
          v10 = *v6 + 8 * (v6[4] * v9);
          v11 = v6[2];
          v30 = 0;
          v31 = 0;
          v28 = v10;
          v29 = v11;
          if (a2[3] <= v9)
          {
            kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_108.size + 2, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", a5);
          }

          v12 = *a2 + 8 * (a2[4] * v9);
          v13 = a2[2];
          v26 = 0;
          v27 = 0;
          v24 = v12;
          v25 = v13;
          result = kaldi::VectorBase<double>::CopyFromVec(&v28, &v24, a3, a4, a5);
          ++v9;
        }

        while (v9 < v6[3]);
      }
    }

    else
    {
      v14 = result[2];
      if (v14 != v7 || (v15 = result[3], v15 != a2[2]))
      {
        kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_388.sectname[9], "num_cols_ == M.NumRows() && num_rows_ == M.NumCols()", a5);
      }

      if (v15 >= 1)
      {
        v16 = 0;
        v17 = *result;
        v18 = *a2;
        v19 = 8 * result[4];
        v20 = 8 * a2[4];
        do
        {
          v21 = v14;
          v22 = v18;
          v23 = v17;
          if (v14 >= 1)
          {
            do
            {
              *v23++ = *v22;
              v22 = (v22 + v20);
              --v21;
            }

            while (v21);
          }

          ++v16;
          v17 = (v17 + v19);
          ++v18;
        }

        while (v16 != v15);
      }
    }
  }

  return result;
}

void kaldi::MatrixBase<float>::SetZero(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == *(a1 + 16))
  {
    v3 = *a1;
    v4 = 4 * v2 * *(a1 + 12);

    bzero(v3, v4);
  }

  else if (*(a1 + 12) >= 1)
  {
    v5 = 0;
    do
    {
      bzero((*a1 + 4 * *(a1 + 16) * v5++), 4 * *(a1 + 8));
    }

    while (v5 < *(a1 + 12));
  }
}

void kaldi::MatrixBase<double>::SetZero(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == *(a1 + 16))
  {
    v3 = *a1;
    v4 = 8 * v2 * *(a1 + 12);

    bzero(v3, v4);
  }

  else if (*(a1 + 12) >= 1)
  {
    v5 = 0;
    do
    {
      bzero((*a1 + 8 * *(a1 + 16) * v5++), 8 * *(a1 + 8));
    }

    while (v5 < *(a1 + 12));
  }
}

uint64_t kaldi::MatrixBase<float>::CopyFromMat<signed char>(uint64_t a1, unsigned int *a2, int a3)
{
  v6 = kaldi::QuantizedMatrixBase<short>::NumCols(a2);
  if (a3 == 111)
  {
    if (v6 != *(a1 + 8))
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_970.segname[14], "qm.NumCols() == num_cols_", v7);
    }

    result = kaldi::QuantizedMatrixBase<short>::NumRows(a2);
    if (result != *(a1 + 12))
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_970.segname[15], "qm.NumRows() == num_rows_", v10);
    }

    v11 = *(a1 + 8);
    if (v11 >= 1)
    {
      for (i = 0; i < v11; ++i)
      {
        if (result >= 1)
        {
          v13 = 0;
          do
          {
            v14 = kaldi::QuantizedMatrixBase<signed char>::operator()(a2, v13, i, v9, v10);
            *kaldi::MatrixBase<float>::operator()(a1, v13++, i, v15, v16) = v14;
            result = *(a1 + 12);
          }

          while (v13 < result);
          v11 = *(a1 + 8);
        }
      }
    }
  }

  else
  {
    if (v6 != *(a1 + 12))
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_970.addr + 6, "qm.NumCols() == num_rows_", v7);
    }

    result = kaldi::QuantizedMatrixBase<short>::NumRows(a2);
    if (result != *(a1 + 8))
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_970.addr + 7, "qm.NumRows() == num_cols_", v18);
    }

    if (result >= 1)
    {
      v19 = 0;
      v20 = *(a1 + 12);
      do
      {
        if (v20 >= 1)
        {
          for (j = 0; j < v20; ++j)
          {
            v22 = kaldi::QuantizedMatrixBase<signed char>::operator()(a2, v19, j, v17, v18);
            *kaldi::MatrixBase<float>::operator()(a1, j, v19, v23, v24) = v22;
            v20 = *(a1 + 12);
          }

          result = *(a1 + 8);
        }

        ++v19;
      }

      while (v19 < result);
    }
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::CopyFromMat<short>(uint64_t a1, unsigned int *a2, int a3)
{
  v6 = kaldi::QuantizedMatrixBase<short>::NumCols(a2);
  if (a3 == 111)
  {
    if (v6 != *(a1 + 8))
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_970.segname[14], "qm.NumCols() == num_cols_", v7);
    }

    result = kaldi::QuantizedMatrixBase<short>::NumRows(a2);
    if (result != *(a1 + 12))
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_970.segname[15], "qm.NumRows() == num_rows_", v10);
    }

    v11 = *(a1 + 8);
    if (v11 >= 1)
    {
      for (i = 0; i < v11; ++i)
      {
        if (result >= 1)
        {
          v13 = 0;
          do
          {
            v14 = kaldi::QuantizedMatrixBase<short>::operator()(a2, v13, i, v9, v10);
            *kaldi::MatrixBase<float>::operator()(a1, v13++, i, v15, v16) = v14;
            result = *(a1 + 12);
          }

          while (v13 < result);
          v11 = *(a1 + 8);
        }
      }
    }
  }

  else
  {
    if (v6 != *(a1 + 12))
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_970.addr + 6, "qm.NumCols() == num_rows_", v7);
    }

    result = kaldi::QuantizedMatrixBase<short>::NumRows(a2);
    if (result != *(a1 + 8))
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_970.addr + 7, "qm.NumRows() == num_cols_", v18);
    }

    if (result >= 1)
    {
      v19 = 0;
      v20 = *(a1 + 12);
      do
      {
        if (v20 >= 1)
        {
          for (j = 0; j < v20; ++j)
          {
            v22 = kaldi::QuantizedMatrixBase<short>::operator()(a2, v19, j, v17, v18);
            *kaldi::MatrixBase<float>::operator()(a1, j, v19, v23, v24) = v22;
            v20 = *(a1 + 12);
          }

          result = *(a1 + 8);
        }

        ++v19;
      }

      while (v19 < result);
    }
  }

  return result;
}

uint64_t kaldi::Matrix<float>::Matrix(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const char *a5)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  kaldi::Matrix<float>::Resize(a1, a2, a3, a4, a5);
  return a1;
}

uint64_t kaldi::Matrix<float>::Matrix<signed char>(uint64_t a1, unsigned int *a2)
{
  v4 = kaldi::QuantizedMatrixBase<short>::NumRows(a2);
  v5 = kaldi::QuantizedMatrixBase<short>::NumCols(a2);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  kaldi::Matrix<float>::Resize(a1, v4, v5, 0, 0);
  kaldi::MatrixBase<float>::CopyFromMat<signed char>(a1, a2, 111);
  return a1;
}

void sub_A25F0(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    if ((*(v1 + 32) & 1) == 0)
    {
      free(*v1);
    }
  }

  *(v1 + 32) = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *v1 = 0;
  _Unwind_Resume(exception_object);
}

uint64_t kaldi::Matrix<float>::~Matrix(uint64_t a1)
{
  v2 = *a1;
  if (v2 && (*(a1 + 32) & 1) == 0)
  {
    free(v2);
  }

  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  return a1;
}

uint64_t kaldi::Matrix<float>::Matrix<short>(uint64_t a1, unsigned int *a2)
{
  v4 = kaldi::QuantizedMatrixBase<short>::NumRows(a2);
  v5 = kaldi::QuantizedMatrixBase<short>::NumCols(a2);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  kaldi::Matrix<float>::Resize(a1, v4, v5, 0, 0);
  kaldi::MatrixBase<float>::CopyFromMat<short>(a1, a2, 111);
  return a1;
}

void sub_A26D8(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    if ((*(v1 + 32) & 1) == 0)
    {
      free(*v1);
    }
  }

  *(v1 + 32) = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *v1 = 0;
  _Unwind_Resume(exception_object);
}

void kaldi::MatrixBase<float>::AddMatMat(uint64_t a1, uint64_t a2, CBLAS_TRANSPOSE __TransA, uint64_t a4, const char *__TransB, float a6, float a7)
{
  if (__TransA == CblasNoTrans && __TransB == 111)
  {
    v7 = *(a2 + 8);
    if (v7 == *(a4 + 12))
    {
      v8 = *(a2 + 12);
      if (v8 == *(a1 + 12))
      {
        v9 = *(a4 + 8);
        goto LABEL_6;
      }
    }

LABEL_33:
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_B8.sectname[15], "(transA == kNoTrans && transB == kNoTrans && A.num_cols_ == B.num_rows_ && A.num_rows_ == num_rows_ && B.num_cols_ == num_cols_) || (transA == kTrans && transB == kNoTrans && A.num_rows_ == B.num_rows_ && A.num_cols_ == num_rows_ && B.num_cols_ == num_cols_) || (transA == kNoTrans && transB == kTrans && A.num_cols_ == B.num_cols_ && A.num_rows_ == num_rows_ && B.num_rows_ == num_cols_) || (transA == kTrans && transB == kTrans && A.num_rows_ == B.num_cols_ && A.num_cols_ == num_rows_ && B.num_rows_ == num_cols_)", __TransB);
  }

  if (__TransA == CblasTrans && __TransB == 111)
  {
    v8 = *(a2 + 12);
    if (v8 != *(a4 + 12))
    {
      goto LABEL_33;
    }

    v7 = *(a2 + 8);
    if (v7 != *(a1 + 12))
    {
      goto LABEL_33;
    }

    v9 = *(a4 + 8);
LABEL_23:
    if (v9 == *(a1 + 8))
    {
      v10 = v7;
      goto LABEL_25;
    }

    goto LABEL_33;
  }

  if (__TransA != CblasNoTrans || __TransB != 112)
  {
    if (__TransB != 112)
    {
      goto LABEL_33;
    }

    if (__TransA != CblasTrans)
    {
      goto LABEL_33;
    }

    v8 = *(a2 + 12);
    if (v8 != *(a4 + 8))
    {
      goto LABEL_33;
    }

    v7 = *(a2 + 8);
    if (v7 != *(a1 + 12))
    {
      goto LABEL_33;
    }

    v9 = *(a4 + 12);
    goto LABEL_23;
  }

  v7 = *(a2 + 8);
  if (v7 != *(a4 + 8))
  {
    goto LABEL_33;
  }

  v8 = *(a2 + 12);
  if (v8 != *(a1 + 12))
  {
    goto LABEL_33;
  }

  v9 = *(a4 + 12);
LABEL_6:
  if (v9 != *(a1 + 8))
  {
    goto LABEL_33;
  }

  v10 = v8;
LABEL_25:
  if (a2 == a1 || a4 == a1)
  {
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", stru_B8.segname, "&A != this && &B != this", __TransB);
  }

  if (v10)
  {
    if (__TransA == CblasNoTrans)
    {
      v11 = v7;
    }

    else
    {
      v11 = v8;
    }

    cblas_sgemm(CblasRowMajor, __TransA, __TransB, v10, v9, v11, a6, *a2, *(a2 + 16), *a4, *(a4 + 16), a7, *a1, *(a1 + 16));
  }
}

uint64_t *kaldi::MatrixBase<float>::AddVecToRows<float>(uint64_t *result, uint64_t *a2, float a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v6 = *(result + 2);
  if (*(a2 + 2) != v6)
  {
    kaldi::KaldiAssertFailure_("AddVecToRows", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_D20.flags + 3, "v.Dim() == num_cols", a6);
  }

  v7 = *(result + 3);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = *a2;
    v10 = *result;
    v11 = 4 * *(result + 4);
    do
    {
      if (v6 >= 1)
      {
        v12 = 0;
        do
        {
          *(v10 + v12) = *(v10 + v12) + (a3 * *(v9 + v12));
          v12 += 4;
        }

        while (4 * v6 != v12);
      }

      ++v8;
      v10 += v11;
    }

    while (v8 != v7);
  }

  return result;
}

uint64_t *kaldi::MatrixBase<float>::AddVecToCols<float>(uint64_t *result, uint64_t *a2, float a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v6 = *(result + 3);
  if (*(a2 + 2) != v6)
  {
    kaldi::KaldiAssertFailure_("AddVecToCols", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_D70.sectname[12], "v.Dim() == num_rows", a6);
  }

  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 2);
    v9 = *a2;
    v10 = *result;
    v11 = 4 * *(result + 4);
    do
    {
      if (v8 >= 1)
      {
        v12 = 0;
        v13 = *(v9 + 4 * v7) * a3;
        do
        {
          *(v10 + v12) = v13 + *(v10 + v12);
          v12 += 4;
        }

        while (4 * v8 != v12);
      }

      ++v7;
      v10 += v11;
    }

    while (v7 != v6);
  }

  return result;
}

double kaldi::Matrix<float>::Matrix(uint64_t a1)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t kaldi::Matrix<float>::Matrix(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (a3 == 111)
  {
    kaldi::Matrix<float>::Resize(a1, *(a2 + 12), *(a2 + 8), 0, 0);
    v7 = 111;
  }

  else
  {
    kaldi::Matrix<float>::Resize(a1, *(a2 + 8), *(a2 + 12), 0, 0);
    v7 = 112;
  }

  kaldi::MatrixBase<float>::CopyFromMat<float>(a1, a2, v7, v5, v6);
  return a1;
}

uint64_t kaldi::Matrix<float>::Matrix(uint64_t a1, unsigned int *a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  kaldi::Matrix<float>::Resize(a1, a2[3], a2[2], 1, (a2[2] == a2[4]));
  kaldi::MatrixBase<float>::CopyFromMat<float>(a1, a2, 111, v4, v5);
  return a1;
}

uint64_t kaldi::Matrix<float>::Matrix(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v4 = *a2;
  if (*a2)
  {
    v5 = *(v4 + 8);
    v6 = *(v4 + 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  kaldi::Matrix<float>::Resize(a1, v5, v6, 1, 0);
  kaldi::CompressedMatrix::CopyToMat<float>(a2, a1);
  return a1;
}

void kaldi::Matrix<float>::Read(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = a3;
  if (a4)
  {
    v90 = 0;
    *v88 = 0u;
    v89 = 0u;
    kaldi::Matrix<float>::Read(v88, a2, a3, 0, a5, 0.0);
    v11 = *(a1 + 12);
    if (v11)
    {
      if (v11 != HIDWORD(v88[1]))
      {
        if (HIDWORD(v88[1]))
        {
          goto LABEL_128;
        }

        goto LABEL_16;
      }

      if (*(a1 + 8) != LODWORD(v88[1]))
      {
LABEL_128:
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v94, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1675);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v94, "Matrix::Read, size mismatch ", 28);
        v69 = *(a1 + 12);
        v70 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, ", ", 2);
        v71 = *(a1 + 8);
        v72 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, " vs. ", 5);
        v73 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, ", ", 2);
        std::ostream::operator<<();
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v94);
      }
    }

    else
    {
      kaldi::Matrix<float>::Resize(a1, HIDWORD(v88[1]), LODWORD(v88[1]), 0, 0);
    }

    kaldi::MatrixBase<float>::AddMat(a1, v88, 111, 1.0, 1.0, v9, v10);
LABEL_16:
    if (v88[0])
    {
      if ((v90 & 1) == 0)
      {
        free(v88[0]);
      }
    }

    return;
  }

  std::istream::tellg();
  std::ostringstream::basic_ostringstream[abi:ne200100](v88);
  if (!v6)
  {
    memset(&v93, 0, sizeof(v93));
    std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v93);
    if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, ": Expected [, got EOF", 23);
LABEL_91:
      v56 = 2;
      goto LABEL_92;
    }

    if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v93.__r_.__value_.__l.__size_ == 2 && *v93.__r_.__value_.__l.__data_ == 23899)
      {
        goto LABEL_114;
      }

      if (v93.__r_.__value_.__l.__size_ != 1)
      {
LABEL_84:
        v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, ": Expected [, got ", 21);
        if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v53 = &v93;
        }

        else
        {
          v53 = v93.__r_.__value_.__r.__words[0];
        }

        if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v93.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v93.__r_.__value_.__l.__size_;
        }

        v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, v53, size);
        LOBYTE(v94[0]) = 34;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, v94, 1);
        goto LABEL_91;
      }

      v33 = v93.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (HIBYTE(v93.__r_.__value_.__r.__words[2]) != 1)
      {
        if (HIBYTE(v93.__r_.__value_.__r.__words[2]) == 2 && LOWORD(v93.__r_.__value_.__l.__data_) == 23899)
        {
LABEL_114:
          kaldi::Matrix<float>::Resize(a1, 0, 0, 0, 0);
          v56 = 1;
LABEL_92:
          if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v93.__r_.__value_.__l.__data_);
          }

          if ((v56 | 2) != 2)
          {
            goto LABEL_124;
          }

          goto LABEL_95;
        }

        goto LABEL_84;
      }

      v33 = &v93;
    }

    if (v33->__r_.__value_.__s.__data_[0] == 91)
    {
      __p = 0;
      v86 = 0;
      v87 = 0;
      operator new();
    }

    goto LABEL_84;
  }

  v12 = kaldi::Peek(a2, 1);
  if (v12 == 68)
  {
    if (a5)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v94, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1704);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v94, "Can not map into the wrong matrix data type", 43);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v94);
    }

    v16 = *(a1 + 8);
    v15 = *(a1 + 12);
    *v94 = 0u;
    v95 = 0u;
    v96 = 0;
    kaldi::Matrix<double>::Resize(v94, v15, v16, 0, 0);
    kaldi::Matrix<double>::Read(v94, a2, 1, 0, 0);
    kaldi::Matrix<float>::Resize(a1, HIDWORD(v94[1]), LODWORD(v94[1]), 0, 0);
    kaldi::MatrixBase<float>::CopyFromMat<double>(a1, v94, 111, v17, v18);
    if (v94[0] && (v96 & 1) == 0)
    {
      free(v94[0]);
    }

    goto LABEL_124;
  }

  if (v12 != 67)
  {
    memset(&v93, 0, sizeof(v93));
    std::string::append(&v93, "F");
    v19 = a5 != 0;
    if (a5)
    {
      v20 = "N";
    }

    else
    {
      v20 = "M";
    }

    std::string::append(&v93, v20);
    __p = 0;
    v86 = 0;
    v87 = 0;
    kaldi::ReadToken(a2, 1, &__p, v21, v22);
    v25 = SHIBYTE(v87);
    v26 = v86;
    if (v87 >= 0)
    {
      v27 = HIBYTE(v87);
    }

    else
    {
      v27 = v86;
    }

    v28 = HIBYTE(v93.__r_.__value_.__r.__words[2]);
    v29 = SHIBYTE(v93.__r_.__value_.__r.__words[2]);
    if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v28 = v93.__r_.__value_.__l.__size_;
    }

    if (v27 == v28)
    {
      v30 = v87 >= 0 ? &__p : __p;
      v31 = (v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v93 : v93.__r_.__value_.__r.__words[0];
      if (!memcmp(v30, v31, v27))
      {
LABEL_64:
        LODWORD(v82) = 0;
        LODWORD(v83) = 0;
        v84 = 0;
        kaldi::ReadBasicType<int>(a2, 1, &v82, v23, v24);
        kaldi::ReadBasicType<int>(a2, 1, &v83, v41, v42);
        if (v19)
        {
          kaldi::ReadBasicType<int>(a2, 1, &v84, v44, v45);
          fst::AlignInput();
        }

        else
        {
          v84 = v83;
        }

        v46 = v82;
        if (a5)
        {
          *(a1 + 8) = v83;
          *(a1 + 12) = v46;
          *(a1 + 16) = v84;
          if (*a1 && (*(a1 + 32) & 1) == 0)
          {
            free(*a1);
          }

          std::istream::tellg();
          *a1 = a5 + v97;
          *(a1 + 32) = 1;
          std::istream::seekg();
          if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, ": Seeking failed", 16);
LABEL_118:
            v66 = 1;
            goto LABEL_119;
          }
        }

        else
        {
          v47 = v83;
          if (__PAIR64__(v82, v83) == *(a1 + 8))
          {
            v48 = v83;
          }

          else
          {
            kaldi::Matrix<float>::Resize(a1, v82, v83, 1, 0);
            v48 = *(a1 + 8);
            v47 = v83;
            v46 = v82;
          }

          v49 = *(a1 + 16);
          v50 = v84;
          if (v49 == v48 && v49 == v84 && v47 * v46)
          {
            v51 = *a1;
            std::istream::read();
            if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
            {
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, ": Reading whole matrix failed", 29);
              goto LABEL_118;
            }
          }

          else if (v46 >= 1)
          {
            v62 = 0;
            v63 = a2 + 4;
            v64 = 29;
            while (1)
            {
              if (*(a1 + 12) <= v62)
              {
                kaldi::KaldiAssertFailure_("RowData", "../subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_B8.sectname[4], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v45);
              }

              v65 = *a1 + 4 * (*(a1 + 16) * v62);
              std::istream::read();
              if ((*(v63 + *(*a2 - 24)) & 5) != 0)
              {
                v67 = v88;
                v68 = ": Reading a matrix row failed";
                goto LABEL_117;
              }

              if (v50 != v47)
              {
                std::istream::seekg();
                if ((*(v63 + *(*a2 - 24)) & 5) != 0)
                {
                  break;
                }
              }

              if (++v62 >= v82)
              {
                goto LABEL_111;
              }
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, ": Seek for padding ", 19);
            v67 = std::ostream::operator<<();
            v68 = " failed";
            v64 = 7;
LABEL_117:
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, v68, v64);
            goto LABEL_118;
          }
        }

LABEL_111:
        kaldi::WarnOnZeros<float>(a1, v46, v43, v44, v45);
        v66 = (*(a2 + *(*a2 - 24) + 32) & 2) == 0 && (*(a2 + *(*a2 - 24) + 32) & 5) != 0;
LABEL_119:
        if (SHIBYTE(v87) < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v93.__r_.__value_.__l.__data_);
        }

        if (!v66)
        {
          goto LABEL_124;
        }

LABEL_95:
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v94, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1912);
        v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v94, "Failed to read matrix from stream.  ", 36);
        std::stringbuf::str();
        if (v87 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if (v87 >= 0)
        {
          v59 = HIBYTE(v87);
        }

        else
        {
          v59 = v86;
        }

        v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, p_p, v59);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, " File position at start is ", 27);
        v61 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, ", currently ", 12);
        std::istream::tellg();
        std::ostream::operator<<();
        if (SHIBYTE(v87) < 0)
        {
          operator delete(__p);
        }

        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v94);
      }
    }

    if (v25 < 0)
    {
      if (v26 != 2)
      {
        goto LABEL_129;
      }

      v32 = __p;
    }

    else
    {
      if (v25 != 2)
      {
        goto LABEL_129;
      }

      v32 = &__p;
    }

    v38 = *v32;
    v39 = v93.__r_.__value_.__r.__words[0];
    if (v29 >= 0)
    {
      v39 = &v93;
    }

    if (v38 == v39->__r_.__value_.__s.__data_[0])
    {
      v40 = __p;
      if (v25 >= 0)
      {
        v40 = &__p;
      }

      if (v40[1] == 78)
      {
        if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
        {
          kaldi::KaldiLogMessage::KaldiLogMessage(v94, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1721);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v94, "Reading aligned matrix as a stream", 34);
          kaldi::KaldiLogMessage::~KaldiLogMessage(v94);
        }

        v19 = 1;
        goto LABEL_64;
      }
    }

LABEL_129:
    v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, ": Expected token ", 17);
    if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v75 = &v93;
    }

    else
    {
      v75 = v93.__r_.__value_.__r.__words[0];
    }

    if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v76 = HIBYTE(v93.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v76 = v93.__r_.__value_.__l.__size_;
    }

    v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, v75, v76);
    v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, ", got ", 6);
    if (v87 >= 0)
    {
      v79 = &__p;
    }

    else
    {
      v79 = __p;
    }

    if (v87 >= 0)
    {
      v80 = HIBYTE(v87);
    }

    else
    {
      v80 = v86;
    }

    v81 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, v79, v80);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, ". This could mean that you're trying to memory map an unaligned file.", 69);
    if (SHIBYTE(v87) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v93.__r_.__value_.__l.__data_);
    }

    goto LABEL_95;
  }

  v94[0] = 0;
  LOBYTE(v94[1]) = 0;
  kaldi::CompressedMatrix::Read(v94, a2, 1, a5);
  if (v94[0])
  {
    v13 = *(v94[0] + 2);
    v14 = *(v94[0] + 3);
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  kaldi::Matrix<float>::Resize(a1, v13, v14, 0, 0);
  kaldi::CompressedMatrix::CopyToMat<float>(v94, a1);
  kaldi::WarnOnZeros<float>(a1, v34, v35, v36, v37);
  kaldi::CompressedMatrix::Destroy(v94);
LABEL_124:
  if (v92 < 0)
  {
    operator delete(v91);
  }

  std::locale::~locale(&v89);
  std::ostream::~ostream();
  std::ios::~ios();
}

void sub_A3FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a67)
  {
    if ((a71 & 1) == 0)
    {
      free(a67);
    }
  }

  JUMPOUT(0xA4050);
}

void sub_A4000(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a58 < 0)
  {
    operator delete(a53);
  }

  std::ostringstream::~ostringstream(&a20);
  JUMPOUT(0xA407CLL);
}

void sub_A4064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a17)
  {
    if ((a21 & 1) == 0)
    {
      free(a17);
    }
  }

  _Unwind_Resume(exception_object);
}

void kaldi::MatrixBase<float>::AddMat(uint64_t a1, uint64_t a2, int a3, float a4, float a5, uint64_t a6, const char *a7)
{
  if (a2 == a1)
  {
    if (a3 == 111)
    {
      v20 = a4 + a5;

      kaldi::MatrixBase<float>::Scale(a1, v20);
    }

    else
    {
      v24 = *(a1 + 12);
      if (v24 != *(a1 + 8))
      {
        kaldi::KaldiAssertFailure_("AddMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_1A8.size, "num_rows_ == num_cols_ && AddMat: adding to self (transposed): not symmetric.", a7);
      }

      v25 = *a1;
      if (a4 == 1.0 && a5 == 1.0)
      {
        if (v24 >= 1)
        {
          v36 = 0;
          v37 = *(a1 + 16);
          v38 = 4 * v37;
          v39 = *a1;
          v40 = *a1;
          do
          {
            if (v36)
            {
              v41 = 0;
              v42 = v36 * v37;
              v43 = v40;
              do
              {
                v44 = v39[v41] + *v43;
                *v43 = v44;
                v39[v41++] = v44;
                v43 = (v43 + v38);
              }

              while (v36 != v41);
            }

            else
            {
              v42 = 0;
            }

            v25[v42 + v36] = v25[v42 + v36] + v25[v42 + v36];
            ++v36;
            ++v40;
            v39 = (v39 + v38);
          }

          while (v36 != v24);
        }
      }

      else if (v24 >= 1)
      {
        v27 = 0;
        v28 = *(a1 + 16);
        v29 = 4 * v28;
        v30 = *a1;
        v31 = *a1;
        do
        {
          if (v27)
          {
            v32 = 0;
            v33 = v27 * v28;
            v34 = v31;
            do
            {
              v35 = v30[v32];
              v30[v32] = (v35 * a5) + (a4 * *v34);
              *v34 = (*v34 * a5) + (a4 * v35);
              ++v32;
              v34 = (v34 + v29);
            }

            while (v27 != v32);
          }

          else
          {
            v33 = 0;
          }

          v25[v33 + v27] = (a4 + a5) * v25[v33 + v27];
          ++v27;
          ++v31;
          v30 = (v30 + v29);
        }

        while (v27 != v24);
      }
    }
  }

  else
  {
    if (a5 != 1.0)
    {
      kaldi::MatrixBase<float>::Scale(a1, a5);
    }

    v11 = *(a2 + 16);
    v12 = *a2;
    v13 = *a1;
    v14 = *(a1 + 12);
    v15 = *(a1 + 16);
    if (a3 == 111)
    {
      v16 = *(a2 + 12);
      if (v16 != v14 || *(a2 + 8) != *(a1 + 8))
      {
        kaldi::KaldiAssertFailure_("AddMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_1A8.reserved1 + 2, "A.num_rows_ == num_rows_ && A.num_cols_ == num_cols_", a7);
      }

      if (v16 >= 1)
      {
        v17 = 0;
        v18 = 4 * v15;
        v19 = 4 * v11;
        do
        {
          cblas_saxpy(*(a1 + 8), a4, v12, 1, v13, 1);
          ++v17;
          v13 = (v13 + v18);
          v12 = (v12 + v19);
        }

        while (v17 < *(a1 + 12));
      }
    }

    else
    {
      v21 = *(a2 + 8);
      if (v21 != v14 || *(a2 + 12) != *(a1 + 8))
      {
        kaldi::KaldiAssertFailure_("AddMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_1A8.reserved3 + 1, "A.num_cols_ == num_rows_ && A.num_rows_ == num_cols_", a7);
      }

      if (v21 >= 1)
      {
        v22 = 0;
        v23 = 4 * v15;
        do
        {
          cblas_saxpy(*(a1 + 8), a4, v12, v11, v13, 1);
          ++v22;
          ++v12;
          v13 = (v13 + v23);
        }

        while (v22 < *(a1 + 12));
      }
    }
  }
}

void kaldi::WarnOnZeros<float>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (kaldi::MatrixBase<float>::IsZero(a1, 0.0, a2, a3, a4, a5))
  {
    if (kaldi::g_kaldi_verbose_level < -1)
    {
      return;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(v11, "WarnOnZeros", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1652);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "The matrix is entirely 0. If this is unexpected, ", 49);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "this could be a sign of data corruption.", 40);
    goto LABEL_11;
  }

  if (*(a1 + 12) >= 1)
  {
    v8 = 0;
    while (1)
    {
      kaldi::MatrixBase<float>::Row(a1, v8, v6, v11);
      if (kaldi::VectorBase<float>::IsZero(v11, 0.0))
      {
        break;
      }

      if (++v8 >= *(a1 + 12))
      {
        return;
      }
    }

    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v11, "WarnOnZeros", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1658);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Row ", 4);
      v9 = std::ostream::operator<<();
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " of the matrix is entirely 0. If this is ", 41);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "unexpected, this could be a sign of data corruption.", 52);
LABEL_11:
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v11);
    }
  }
}

void kaldi::Matrix<double>::Read(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = a3;
  if (a4)
  {
    v91 = 0;
    *v89 = 0u;
    v90 = 0u;
    kaldi::Matrix<double>::Read(v89, a2, a3, 0, a5);
    v11 = *(a1 + 12);
    if (v11)
    {
      if (v11 != HIDWORD(v89[1]))
      {
        if (HIDWORD(v89[1]))
        {
          goto LABEL_128;
        }

        goto LABEL_16;
      }

      if (*(a1 + 8) != LODWORD(v89[1]))
      {
LABEL_128:
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v95, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1675);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v95, "Matrix::Read, size mismatch ", 28);
        v70 = *(a1 + 12);
        v71 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, ", ", 2);
        v72 = *(a1 + 8);
        v73 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, " vs. ", 5);
        v74 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, ", ", 2);
        std::ostream::operator<<();
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v95);
      }
    }

    else
    {
      kaldi::Matrix<double>::Resize(a1, HIDWORD(v89[1]), LODWORD(v89[1]), 0, 0);
    }

    kaldi::MatrixBase<double>::AddMat(a1, v89, 111, 1.0, 1.0, v9, v10);
LABEL_16:
    if (v89[0])
    {
      if ((v91 & 1) == 0)
      {
        free(v89[0]);
      }
    }

    return;
  }

  std::istream::tellg();
  std::ostringstream::basic_ostringstream[abi:ne200100](v89);
  if (!v6)
  {
    memset(&v94, 0, sizeof(v94));
    std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v94);
    if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, ": Expected [, got EOF", 23);
LABEL_91:
      v57 = 2;
      goto LABEL_92;
    }

    if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v94.__r_.__value_.__l.__size_ == 2 && *v94.__r_.__value_.__l.__data_ == 23899)
      {
        goto LABEL_114;
      }

      if (v94.__r_.__value_.__l.__size_ != 1)
      {
LABEL_84:
        v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, ": Expected [, got ", 21);
        if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v54 = &v94;
        }

        else
        {
          v54 = v94.__r_.__value_.__r.__words[0];
        }

        if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v94.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v94.__r_.__value_.__l.__size_;
        }

        v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, v54, size);
        LOBYTE(v95[0]) = 34;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, v95, 1);
        goto LABEL_91;
      }

      v34 = v94.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (HIBYTE(v94.__r_.__value_.__r.__words[2]) != 1)
      {
        if (HIBYTE(v94.__r_.__value_.__r.__words[2]) == 2 && LOWORD(v94.__r_.__value_.__l.__data_) == 23899)
        {
LABEL_114:
          kaldi::Matrix<double>::Resize(a1, 0, 0, 0, 0);
          v57 = 1;
LABEL_92:
          if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v94.__r_.__value_.__l.__data_);
          }

          if ((v57 | 2) != 2)
          {
            goto LABEL_124;
          }

          goto LABEL_95;
        }

        goto LABEL_84;
      }

      v34 = &v94;
    }

    if (v34->__r_.__value_.__s.__data_[0] == 91)
    {
      __p = 0;
      v87 = 0;
      v88 = 0;
      operator new();
    }

    goto LABEL_84;
  }

  v12 = kaldi::Peek(a2, 1);
  if (v12 == 70)
  {
    if (a5)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v95, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1704);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v95, "Can not map into the wrong matrix data type", 43);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v95);
    }

    v16 = *(a1 + 8);
    v15 = *(a1 + 12);
    *v95 = 0u;
    v96 = 0u;
    v97 = 0;
    kaldi::Matrix<float>::Resize(v95, v15, v16, 0, 0);
    kaldi::Matrix<float>::Read(v95, a2, 1, 0, 0, v17);
    kaldi::Matrix<double>::Resize(a1, HIDWORD(v95[1]), LODWORD(v95[1]), 0, 0);
    kaldi::MatrixBase<double>::CopyFromMat<float>(a1, v95, 111, v18, v19);
    if (v95[0] && (v97 & 1) == 0)
    {
      free(v95[0]);
    }

    goto LABEL_124;
  }

  if (v12 != 67)
  {
    memset(&v94, 0, sizeof(v94));
    std::string::append(&v94, "D");
    v20 = a5 != 0;
    if (a5)
    {
      v21 = "N";
    }

    else
    {
      v21 = "M";
    }

    std::string::append(&v94, v21);
    __p = 0;
    v87 = 0;
    v88 = 0;
    kaldi::ReadToken(a2, 1, &__p, v22, v23);
    v26 = SHIBYTE(v88);
    v27 = v87;
    if (v88 >= 0)
    {
      v28 = HIBYTE(v88);
    }

    else
    {
      v28 = v87;
    }

    v29 = HIBYTE(v94.__r_.__value_.__r.__words[2]);
    v30 = SHIBYTE(v94.__r_.__value_.__r.__words[2]);
    if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v29 = v94.__r_.__value_.__l.__size_;
    }

    if (v28 == v29)
    {
      v31 = v88 >= 0 ? &__p : __p;
      v32 = (v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v94 : v94.__r_.__value_.__r.__words[0];
      if (!memcmp(v31, v32, v28))
      {
LABEL_64:
        LODWORD(v83) = 0;
        LODWORD(v84) = 0;
        v85 = 0;
        kaldi::ReadBasicType<int>(a2, 1, &v83, v24, v25);
        kaldi::ReadBasicType<int>(a2, 1, &v84, v42, v43);
        if (v20)
        {
          kaldi::ReadBasicType<int>(a2, 1, &v85, v45, v46);
          fst::AlignInput();
        }

        else
        {
          v85 = v84;
        }

        v47 = v83;
        if (a5)
        {
          *(a1 + 8) = v84;
          *(a1 + 12) = v47;
          *(a1 + 16) = v85;
          if (*a1 && (*(a1 + 32) & 1) == 0)
          {
            free(*a1);
          }

          std::istream::tellg();
          *a1 = a5 + v98;
          *(a1 + 32) = 1;
          std::istream::seekg();
          if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, ": Seeking failed", 16);
LABEL_118:
            v67 = 1;
            goto LABEL_119;
          }
        }

        else
        {
          v48 = v84;
          if (__PAIR64__(v83, v84) == *(a1 + 8))
          {
            v49 = v84;
          }

          else
          {
            kaldi::Matrix<double>::Resize(a1, v83, v84, 1, 0);
            v49 = *(a1 + 8);
            v48 = v84;
            v47 = v83;
          }

          v50 = *(a1 + 16);
          v51 = v85;
          if (v50 == v49 && v50 == v85 && v48 * v47)
          {
            v52 = *a1;
            std::istream::read();
            if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
            {
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, ": Reading whole matrix failed", 29);
              goto LABEL_118;
            }
          }

          else if (v47 >= 1)
          {
            v63 = 0;
            v64 = a2 + 4;
            v65 = 29;
            while (1)
            {
              if (*(a1 + 12) <= v63)
              {
                kaldi::KaldiAssertFailure_("RowData", "../subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_B8.sectname[4], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v46);
              }

              v66 = *a1 + 8 * (*(a1 + 16) * v63);
              std::istream::read();
              if ((*(v64 + *(*a2 - 24)) & 5) != 0)
              {
                v68 = v89;
                v69 = ": Reading a matrix row failed";
                goto LABEL_117;
              }

              if (v51 != v48)
              {
                std::istream::seekg();
                if ((*(v64 + *(*a2 - 24)) & 5) != 0)
                {
                  break;
                }
              }

              if (++v63 >= v83)
              {
                goto LABEL_111;
              }
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, ": Seek for padding ", 19);
            v68 = std::ostream::operator<<();
            v69 = " failed";
            v65 = 7;
LABEL_117:
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, v69, v65);
            goto LABEL_118;
          }
        }

LABEL_111:
        kaldi::WarnOnZeros<double>(a1, v47, v44, v45, v46);
        v67 = (*(a2 + *(*a2 - 24) + 32) & 2) == 0 && (*(a2 + *(*a2 - 24) + 32) & 5) != 0;
LABEL_119:
        if (SHIBYTE(v88) < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v94.__r_.__value_.__l.__data_);
        }

        if (!v67)
        {
          goto LABEL_124;
        }

LABEL_95:
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v95, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1912);
        v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v95, "Failed to read matrix from stream.  ", 36);
        std::stringbuf::str();
        if (v88 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if (v88 >= 0)
        {
          v60 = HIBYTE(v88);
        }

        else
        {
          v60 = v87;
        }

        v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, p_p, v60);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, " File position at start is ", 27);
        v62 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, ", currently ", 12);
        std::istream::tellg();
        std::ostream::operator<<();
        if (SHIBYTE(v88) < 0)
        {
          operator delete(__p);
        }

        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v95);
      }
    }

    if (v26 < 0)
    {
      if (v27 != 2)
      {
        goto LABEL_129;
      }

      v33 = __p;
    }

    else
    {
      if (v26 != 2)
      {
        goto LABEL_129;
      }

      v33 = &__p;
    }

    v39 = *v33;
    v40 = v94.__r_.__value_.__r.__words[0];
    if (v30 >= 0)
    {
      v40 = &v94;
    }

    if (v39 == v40->__r_.__value_.__s.__data_[0])
    {
      v41 = __p;
      if (v26 >= 0)
      {
        v41 = &__p;
      }

      if (v41[1] == 78)
      {
        if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
        {
          kaldi::KaldiLogMessage::KaldiLogMessage(v95, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1721);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v95, "Reading aligned matrix as a stream", 34);
          kaldi::KaldiLogMessage::~KaldiLogMessage(v95);
        }

        v20 = 1;
        goto LABEL_64;
      }
    }

LABEL_129:
    v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, ": Expected token ", 17);
    if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v76 = &v94;
    }

    else
    {
      v76 = v94.__r_.__value_.__r.__words[0];
    }

    if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v77 = HIBYTE(v94.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v77 = v94.__r_.__value_.__l.__size_;
    }

    v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, v76, v77);
    v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, ", got ", 6);
    if (v88 >= 0)
    {
      v80 = &__p;
    }

    else
    {
      v80 = __p;
    }

    if (v88 >= 0)
    {
      v81 = HIBYTE(v88);
    }

    else
    {
      v81 = v87;
    }

    v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, v80, v81);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, ". This could mean that you're trying to memory map an unaligned file.", 69);
    if (SHIBYTE(v88) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v94.__r_.__value_.__l.__data_);
    }

    goto LABEL_95;
  }

  v95[0] = 0;
  LOBYTE(v95[1]) = 0;
  kaldi::CompressedMatrix::Read(v95, a2, 1, a5);
  if (v95[0])
  {
    v13 = *(v95[0] + 2);
    v14 = *(v95[0] + 3);
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  kaldi::Matrix<double>::Resize(a1, v13, v14, 0, 0);
  kaldi::CompressedMatrix::CopyToMat<double>(v95, a1);
  kaldi::WarnOnZeros<double>(a1, v35, v36, v37, v38);
  kaldi::CompressedMatrix::Destroy(v95);
LABEL_124:
  if (v93 < 0)
  {
    operator delete(v92);
  }

  std::locale::~locale(&v90);
  std::ostream::~ostream();
  std::ios::~ios();
}

void sub_A597C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a67)
  {
    if ((a71 & 1) == 0)
    {
      free(a67);
    }
  }

  JUMPOUT(0xA5A08);
}

void sub_A59B8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a58 < 0)
  {
    operator delete(a53);
  }

  std::ostringstream::~ostringstream(&a20);
  JUMPOUT(0xA5A34);
}

void sub_A5A1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a17)
  {
    if ((a21 & 1) == 0)
    {
      free(a17);
    }
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t kaldi::Matrix<float>::Init(uint64_t result, int a2, int a3, int a4, const char *a5)
{
  v7 = result;
  if (a3 * a2)
  {
    if (a2 < 1 || a3 <= 0)
    {
      kaldi::KaldiAssertFailure_("Init", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_2E8.addr + 6, "rows > 0 && cols > 0", a5);
    }

    memptr = 0;
    v8 = -a3 & 3;
    if (a4)
    {
      v8 = 0;
    }

    v9 = v8 + a3;
    result = malloc_type_posix_memalign(&memptr, 0x10uLL, 4 * a2 * (v8 + a3), 0x36EEE54FuLL);
    if (result)
    {
      v10 = 1;
    }

    else
    {
      v10 = memptr == 0;
    }

    if (v10)
    {
      exception = __cxa_allocate_exception(8uLL);
      v12 = std::bad_alloc::bad_alloc(exception);
    }

    *v7 = memptr;
    *(v7 + 32) = 0;
    *(v7 + 8) = a3;
    *(v7 + 12) = a2;
    *(v7 + 16) = v9;
    *(v7 + 20) = v9 * a2;
  }

  else
  {
    if (a3 | a2)
    {
      kaldi::KaldiAssertFailure_("Init", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_2E8.segname[13], "rows == 0 && cols == 0", a5);
    }

    *(result + 32) = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = 0;
  }

  return result;
}

uint64_t kaldi::Matrix<double>::Matrix(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const char *a5)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  kaldi::Matrix<double>::Resize(a1, a2, a3, a4, a5);
  return a1;
}

uint64_t kaldi::Matrix<double>::Matrix(uint64_t a1, unsigned int *a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  kaldi::Matrix<double>::Resize(a1, a2[3], a2[2], 1, (a2[2] == a2[4]));
  kaldi::MatrixBase<double>::CopyFromMat<double>(a1, a2, 111, v4, v5);
  return a1;
}

void kaldi::MatrixBase<double>::AddMat(uint64_t a1, uint64_t a2, int a3, double a4, double a5, uint64_t a6, const char *a7)
{
  if (a2 == a1)
  {
    if (a3 == 111)
    {
      v20 = a4 + a5;

      kaldi::MatrixBase<double>::Scale(a1, v20);
    }

    else
    {
      v24 = *(a1 + 12);
      if (v24 != *(a1 + 8))
      {
        kaldi::KaldiAssertFailure_("AddMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_1A8.size, "num_rows_ == num_cols_ && AddMat: adding to self (transposed): not symmetric.", a7);
      }

      v25 = *a1;
      if (a4 == 1.0 && a5 == 1.0)
      {
        if (v24 >= 1)
        {
          v36 = 0;
          v37 = *(a1 + 16);
          v38 = 8 * v37;
          v39 = *a1;
          v40 = *a1;
          do
          {
            if (v36)
            {
              v41 = 0;
              v42 = v36 * v37;
              v43 = v40;
              do
              {
                v44 = v39[v41] + *v43;
                *v43 = v44;
                v39[v41++] = v44;
                v43 = (v43 + v38);
              }

              while (v36 != v41);
            }

            else
            {
              v42 = 0;
            }

            v25[v42 + v36] = v25[v42 + v36] + v25[v42 + v36];
            ++v36;
            ++v40;
            v39 = (v39 + v38);
          }

          while (v36 != v24);
        }
      }

      else if (v24 >= 1)
      {
        v27 = 0;
        v28 = *(a1 + 16);
        v29 = 8 * v28;
        v30 = *a1;
        v31 = *a1;
        do
        {
          if (v27)
          {
            v32 = 0;
            v33 = v27 * v28;
            v34 = v31;
            do
            {
              v35 = v30[v32];
              v30[v32] = v35 * a5 + a4 * *v34;
              *v34 = *v34 * a5 + a4 * v35;
              ++v32;
              v34 = (v34 + v29);
            }

            while (v27 != v32);
          }

          else
          {
            v33 = 0;
          }

          v25[v33 + v27] = (a4 + a5) * v25[v33 + v27];
          ++v27;
          ++v31;
          v30 = (v30 + v29);
        }

        while (v27 != v24);
      }
    }
  }

  else
  {
    if (a5 != 1.0)
    {
      kaldi::MatrixBase<double>::Scale(a1, a5);
    }

    v11 = *(a2 + 16);
    v12 = *a2;
    v13 = *a1;
    v14 = *(a1 + 12);
    v15 = *(a1 + 16);
    if (a3 == 111)
    {
      v16 = *(a2 + 12);
      if (v16 != v14 || *(a2 + 8) != *(a1 + 8))
      {
        kaldi::KaldiAssertFailure_("AddMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_1A8.reserved1 + 2, "A.num_rows_ == num_rows_ && A.num_cols_ == num_cols_", a7);
      }

      if (v16 >= 1)
      {
        v17 = 0;
        v18 = 8 * v15;
        v19 = 8 * v11;
        do
        {
          cblas_daxpy(*(a1 + 8), a4, v12, 1, v13, 1);
          ++v17;
          v13 = (v13 + v18);
          v12 = (v12 + v19);
        }

        while (v17 < *(a1 + 12));
      }
    }

    else
    {
      v21 = *(a2 + 8);
      if (v21 != v14 || *(a2 + 12) != *(a1 + 8))
      {
        kaldi::KaldiAssertFailure_("AddMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_1A8.reserved3 + 1, "A.num_cols_ == num_rows_ && A.num_rows_ == num_cols_", a7);
      }

      if (v21 >= 1)
      {
        v22 = 0;
        v23 = 8 * v15;
        do
        {
          cblas_daxpy(*(a1 + 8), a4, v12, v11, v13, 1);
          ++v22;
          ++v12;
          v13 = (v13 + v23);
        }

        while (v22 < *(a1 + 12));
      }
    }
  }
}

void kaldi::WarnOnZeros<double>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (kaldi::MatrixBase<double>::IsZero(a1, 0.0, a2, a3, a4, a5))
  {
    if (kaldi::g_kaldi_verbose_level < -1)
    {
      return;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v12, "WarnOnZeros", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1652);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "The matrix is entirely 0. If this is unexpected, ", 49);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "this could be a sign of data corruption.", 40);
    goto LABEL_11;
  }

  if (*(a1 + 12) >= 1)
  {
    v7 = 0;
    while (1)
    {
      v8 = *a1 + 8 * *(a1 + 16) * v7;
      v9 = *(a1 + 8);
      v14 = 0;
      v15 = 0;
      v12 = v8;
      v13 = v9;
      if (kaldi::VectorBase<double>::IsZero(&v12, 0.0))
      {
        break;
      }

      if (++v7 >= *(a1 + 12))
      {
        return;
      }
    }

    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v12, "WarnOnZeros", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1658);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "Row ", 4);
      v10 = std::ostream::operator<<();
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " of the matrix is entirely 0. If this is ", 41);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "unexpected, this could be a sign of data corruption.", 52);
LABEL_11:
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v12);
    }
  }
}

void std::vector<double>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t kaldi::Matrix<double>::Init(uint64_t result, int a2, int a3, int a4, const char *a5)
{
  v7 = result;
  if (a3 * a2)
  {
    if (a2 < 1 || a3 <= 0)
    {
      kaldi::KaldiAssertFailure_("Init", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_2E8.addr + 6, "rows > 0 && cols > 0", a5);
    }

    memptr = 0;
    v8 = a3 & 1;
    if (a4)
    {
      v8 = 0;
    }

    v9 = v8 + a3;
    result = malloc_type_posix_memalign(&memptr, 0x10uLL, 8 * a2 * (v8 + a3), 0x36EEE54FuLL);
    if (result)
    {
      v10 = 1;
    }

    else
    {
      v10 = memptr == 0;
    }

    if (v10)
    {
      exception = __cxa_allocate_exception(8uLL);
      v12 = std::bad_alloc::bad_alloc(exception);
    }

    *v7 = memptr;
    *(v7 + 32) = 0;
    *(v7 + 8) = a3;
    *(v7 + 12) = a2;
    *(v7 + 16) = v9;
    *(v7 + 20) = v9 * a2;
  }

  else
  {
    if (a3 | a2)
    {
      kaldi::KaldiAssertFailure_("Init", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_2E8.segname[13], "rows == 0 && cols == 0", a5);
    }

    *(result + 32) = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = 0;
  }

  return result;
}

float kaldi::MatrixBase<float>::operator()(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 12) <= a2 || *(a1 + 8) <= a3)
  {
    kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_B8.addr + 2, "static_cast<UnsignedMatrixIndexT>(r) < static_cast<UnsignedMatrixIndexT>(num_rows_) && static_cast<UnsignedMatrixIndexT>(c) < static_cast<UnsignedMatrixIndexT>(num_cols_)", a5);
  }

  return *(*a1 + 4 * (*(a1 + 16) * a2) + 4 * a3);
}

uint64_t kaldi::MatrixBase<float>::Set(uint64_t result, float a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v6 = *(result + 12);
  if (v6 >= 1)
  {
    v8 = result;
    v9 = 0;
    v10 = *(result + 8);
    do
    {
      if (v10 >= 1)
      {
        for (i = 0; i < v10; ++i)
        {
          result = kaldi::MatrixBase<float>::operator()(v8, v9, i, a5, a6);
          *result = a2;
          v10 = *(v8 + 8);
        }

        v6 = *(v8 + 12);
      }

      ++v9;
    }

    while (v9 < v6);
  }

  return result;
}

void kaldi::MatrixBase<float>::SetRandn(uint64_t a1)
{
  v11 = kaldi::Rand(0);
  v2 = *(a1 + 12);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 8);
    do
    {
      if (v4 >= 1)
      {
        v5 = 0;
        v6 = *a1 + 4 * *(a1 + 16) * v3;
        do
        {
          v7 = (kaldi::Rand(&v11) + 1.0) / 2147483650.0;
          v8 = sqrtf(logf(v7) * -2.0);
          v9 = (kaldi::Rand(&v11) + 1.0) / 2147483650.0;
          v10 = v9 * 6.28318531;
          *(v6 + 4 * v5) = v8 * cosf(v10);
          v4 = *(a1 + 8);
          ++v5;
        }

        while (v5 < v4);
        v2 = *(a1 + 12);
      }

      ++v3;
    }

    while (v3 < v2);
  }
}

void **kaldi::MatrixBase<float>::CopyRowsFromVec(void **result, char **a2)
{
  v2 = result;
  v3 = *(a2 + 2);
  v5 = *(result + 2);
  v4 = *(result + 3);
  if (v3 == v5 * v4)
  {
    v6 = *(result + 4);
    if (v6 == v5)
    {
      v7 = *a2;
      v8 = *result;

      return memcpy(v8, v7, 4 * v4 * v5);
    }

    else if (v4 >= 1)
    {
      v11 = 0;
      v12 = *a2;
      v13 = *result;
      v14 = 4 * v6;
      do
      {
        if (v5 >= 1)
        {
          v15 = 0;
          do
          {
            *&v13[v15] = *&v12[v15];
            v15 += 4;
          }

          while (4 * v5 != v15);
        }

        ++v11;
        v13 += v14;
        v12 += 4 * v5;
      }

      while (v11 != v4);
    }
  }

  else
  {
    if (v3 != v5)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v16, "CopyRowsFromVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1054);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v16, "Wrong sized arguments");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
    }

    if (v4 >= 1)
    {
      v9 = 0;
      v10 = *a2;
      do
      {
        result = memcpy(*v2 + 4 * *(v2 + 4) * v9++, v10, 4 * *(v2 + 2));
      }

      while (v9 < *(v2 + 3));
    }
  }

  return result;
}

float *kaldi::MatrixBase<float>::ConcatenateVec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 12) != *(a3 + 12))
  {
    kaldi::KaldiAssertFailure_("ConcatenateVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_478.sectname[8], "num_rows_ == index.NumRows()", a5);
  }

  if (*(a1 + 8) != *(a2 + 8) * *(a3 + 8))
  {
    kaldi::KaldiAssertFailure_("ConcatenateVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_478.sectname[9], "num_cols_ == index.NumCols() * vec_table.NumCols()", a5);
  }

  kaldi::MatrixBase<float>::Min(a3, a2, a3, a4, a5);
  if (v12 < 0.0)
  {
    kaldi::KaldiAssertFailure_("ConcatenateVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_478.sectname[10], "index.Min() >= 0", v11);
  }

  result = kaldi::MatrixBase<float>::Max(a3, v8, v9, v10, v11);
  if (v16 >= *(a2 + 12))
  {
    kaldi::KaldiAssertFailure_("ConcatenateVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_478.sectname[11], "index.Max() < vec_table.NumRows()", v15);
  }

  v17 = *(a1 + 12);
  if (v17 >= 1)
  {
    v18 = 0;
    v19 = *(a1 + 8);
    do
    {
      if (v19 >= 1)
      {
        for (i = 0; i < v19; ++i)
        {
          v21 = i / *(a2 + 8);
          v22 = kaldi::MatrixBase<float>::operator()(a3, v18, v21, v14, v15);
          v25 = kaldi::MatrixBase<float>::operator()(a2, v22, i - *(a2 + 8) * v21, v23, v24);
          result = kaldi::MatrixBase<float>::operator()(a1, v18, i, v26, v27);
          *result = v25;
          v19 = *(a1 + 8);
        }

        v17 = *(a1 + 12);
      }

      ++v18;
    }

    while (v18 < v17);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::Min(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(result + 12);
  if (v5 < 1 || *(result + 8) <= 0)
  {
    kaldi::KaldiAssertFailure_("Min", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_7E0.sectname[7], "num_rows_ > 0 && num_cols_ > 0", a5);
  }

  v6 = 0;
  v7 = *result;
  v8 = **result;
  do
  {
    v9 = *(result + 8);
    v10 = v7;
    do
    {
      v11 = *v10++;
      v12 = v11;
      if (v11 < v8)
      {
        v8 = v12;
      }

      --v9;
    }

    while (v9);
    ++v6;
    v7 += *(result + 16);
  }

  while (v6 != v5);
  return result;
}

uint64_t kaldi::MatrixBase<float>::Max(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(result + 12);
  if (v5 < 1 || *(result + 8) <= 0)
  {
    kaldi::KaldiAssertFailure_("Max", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_798.flags, "num_rows_ > 0 && num_cols_ > 0", a5);
  }

  v6 = 0;
  v7 = *result;
  v8 = **result;
  do
  {
    v9 = *(result + 8);
    v10 = v7;
    do
    {
      v11 = *v10++;
      v12 = v11;
      if (v11 > v8)
      {
        v8 = v12;
      }

      --v9;
    }

    while (v9);
    ++v6;
    v7 += *(result + 16);
  }

  while (v6 != v5);
  return result;
}

{
  v5 = *(a2 + 12);
  if (v5 != *(result + 12) || (v6 = *(a2 + 8), v6 != *(result + 8)))
  {
    kaldi::KaldiAssertFailure_("Max", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_518.sectname[6], "A.NumRows() == NumRows() && A.NumCols() == NumCols()", a5);
  }

  if (v5 >= 1)
  {
    v7 = 0;
    v8 = *result;
    v9 = *a2;
    v10 = 4 * *(a2 + 16);
    v11 = 4 * *(result + 16);
    do
    {
      v12 = v6;
      v13 = v8;
      v14 = v9;
      if (v6 >= 1)
      {
        do
        {
          v15 = *v14++;
          v16 = v15;
          if (*v13 >= v15)
          {
            v16 = *v13;
          }

          *v13++ = v16;
          --v12;
        }

        while (v12);
      }

      ++v7;
      v9 = (v9 + v10);
      v8 = (v8 + v11);
    }

    while (v7 != v5);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::ConcatenateVec(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 12) != *(a3 + 12))
  {
    kaldi::KaldiAssertFailure_("ConcatenateVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_478.segname[8], "num_rows_ == index.NumRows()", a5);
  }

  v8 = *a2;
  if (*a2)
  {
    LODWORD(v8) = *(v8 + 12);
  }

  if (*(a1 + 8) != v8 * *(a3 + 8))
  {
    kaldi::KaldiAssertFailure_("ConcatenateVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_478.segname[9], "num_cols_ == index.NumCols() * vec_table.NumCols()", a5);
  }

  kaldi::MatrixBase<float>::Min(a3, a2, a3, a4, a5);
  if (v13 < 0.0)
  {
    kaldi::KaldiAssertFailure_("ConcatenateVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_478.segname[10], "index.Min() >= 0", v12);
  }

  result = kaldi::MatrixBase<float>::Max(a3, v9, v10, v11, v12);
  v17 = *a2;
  if (*a2)
  {
    if (v16 < *(v17 + 8))
    {
      v18 = *(v17 + 12);
      goto LABEL_11;
    }

LABEL_24:
    kaldi::KaldiAssertFailure_("ConcatenateVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_478.segname[11], "index.Max() < vec_table.NumRows()", v15);
  }

  if (v16 >= 0.0)
  {
    goto LABEL_24;
  }

  v18 = 0;
LABEL_11:
  v19 = *(a3 + 12);
  if (v19 >= 1)
  {
    v20 = 0;
    LODWORD(v21) = *(a3 + 8);
    do
    {
      if (v21 >= 1)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        do
        {
          kaldi::MatrixBase<float>::Row(a1, v20, v15, &v35);
          v38 = 0;
          v39 = 0;
          v22 += v18;
          if (v22 > v36)
          {
            kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v26);
          }

          v37 = v35 + v23;
          LODWORD(v38) = v18;
          *&v27 = kaldi::MatrixBase<float>::operator()(a3, v20, v24, v25, v26);
          result = kaldi::CompressedMatrix::CopyRowToVec<float>(a2, *&v27, &v37, v27, v30, v31, v32, v33, v34, v28, v29);
          v21 = *(a3 + 8);
          v23 += 4 * v18;
          ++v24;
        }

        while (v24 < v21);
        v19 = *(a3 + 12);
      }

      ++v20;
    }

    while (v20 < v19);
  }

  return result;
}

void kaldi::MatrixBase<float>::SummarizeVec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 12);
  if (v5 != *(a3 + 12))
  {
    kaldi::KaldiAssertFailure_("SummarizeVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_478.size + 1, "num_rows_ == index.NumRows()", a5);
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("SummarizeVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_478.size + 2, "num_cols_ == vec_table.NumCols()", a5);
  }

  if (v5 >= 1)
  {
    v9 = 0;
    v10 = *(a2 + 12);
    v11 = *(a3 + 8);
    do
    {
      if (v11 >= 1)
      {
        for (i = 0; i < v11; ++i)
        {
          v13 = kaldi::MatrixBase<float>::operator()(a3, v9, i, a4, a5);
          if ((v13 & 0x80000000) == 0)
          {
            if (v10 <= v13)
            {
              kaldi::KaldiErrorMessage::KaldiErrorMessage(v19, "SummarizeVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1195);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "index item is bigger than the voc size ", 39);
              std::ostream::operator<<();
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(v19);
            }

            if (*(a1 + 8) >= 1)
            {
              v14 = 0;
              do
              {
                v15 = kaldi::MatrixBase<float>::operator()(a2, v13, v14, a4, a5);
                v18 = kaldi::MatrixBase<float>::operator()(a1, v9, v14, v16, v17);
                *v18 = v15 + *v18;
                ++v14;
              }

              while (v14 < *(a1 + 8));
            }
          }

          v11 = *(a3 + 8);
        }

        v5 = *(a1 + 12);
      }

      ++v9;
    }

    while (v9 < v5);
  }
}

void kaldi::MatrixBase<float>::SummarizeVec(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 12);
  if (v5 != *(a3 + 12))
  {
    kaldi::KaldiAssertFailure_("SummarizeVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_478.nreloc + 1, "num_rows_ == index.NumRows()", a5);
  }

  v9 = *(a1 + 8);
  v10 = *a2;
  if (*a2)
  {
    if (v9 == *(v10 + 12))
    {
      v11 = *(v10 + 8);
      goto LABEL_7;
    }

LABEL_25:
    kaldi::KaldiAssertFailure_("SummarizeVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_478.nreloc + 2, "num_cols_ == vec_table.NumCols()", a5);
  }

  if (v9)
  {
    goto LABEL_25;
  }

  v11 = 0;
LABEL_7:
  if (v5 >= 1)
  {
    v12 = 0;
    v13 = *(a3 + 8);
    do
    {
      if (v13 >= 1)
      {
        for (i = 0; i < v13; ++i)
        {
          v15 = kaldi::MatrixBase<float>::operator()(a3, v12, i, a4, a5);
          if ((v15 & 0x80000000) == 0)
          {
            if (v11 <= v15)
            {
              kaldi::KaldiErrorMessage::KaldiErrorMessage(&v30, "SummarizeVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1215);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "index item is bigger than the voc size ", 39);
              std::ostream::operator<<();
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v30);
            }

            v16 = *(a1 + 8);
            v31 = 0;
            v32 = 0;
            v30 = 0;
            kaldi::Vector<float>::Resize(&v30, v16, 0, a4, a5);
            kaldi::CompressedMatrix::CopyRowToVec<float>(a2, v15, &v30, v19, v20, v21, v22, v23, v24, v17, v18);
            if (*(a1 + 8) >= 1)
            {
              v27 = 0;
              do
              {
                if (v27 >= v31)
                {
                  kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", stru_68.sectname, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(dim_)", v26);
                }

                v28 = v30[v27];
                v29 = kaldi::MatrixBase<float>::operator()(a1, v12, v27, v25, v26);
                *v29 = v28 + *v29;
                ++v27;
              }

              while (v27 < *(a1 + 8));
            }

            kaldi::Vector<float>::Destroy(&v30);
          }

          v13 = *(a3 + 8);
        }

        v5 = *(a1 + 12);
      }

      ++v12;
    }

    while (v12 < v5);
  }
}

uint64_t kaldi::MatrixBase<float>::CountZeros(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 12);
  if (v5 < 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v9 = *(a1 + 8);
  do
  {
    if (v9 >= 1)
    {
      for (i = 0; i < v9; ++i)
      {
        if (kaldi::MatrixBase<float>::operator()(a1, v7, i, a4, a5) == 0.0)
        {
          v8 = (v8 + 1);
        }

        else
        {
          v8 = v8;
        }

        v9 = *(a1 + 8);
      }

      v5 = *(a1 + 12);
    }

    ++v7;
  }

  while (v7 < v5);
  return v8;
}

float kaldi::MatrixBase<float>::AbsMax(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 12) < 1 || *(a1 + 8) <= 0)
  {
    kaldi::KaldiAssertFailure_("AbsMax", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_7E0.segname[2], "num_rows_ > 0 && num_cols_ > 0", a5);
  }

  v6 = 0;
  v7 = *a1;
  v8 = **a1;
  v9 = *(a1 + 16);
  do
  {
    v10 = cblas_isamax(*(a1 + 8), &v7[v9 * v6], 1);
    v7 = *a1;
    v9 = *(a1 + 16);
    v11 = fabsf(*(*a1 + 4 * (v10 + v9 * v6)));
    if (v11 > v8)
    {
      v8 = v11;
    }

    ++v6;
  }

  while (v6 < *(a1 + 12));
  return v8;
}

float32_t kaldi::MatrixBase<float>::MulElements(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a2 + 12);
  if (v5 != *(a1 + 12) || (v6 = *(a2 + 8), v6 != *(a1 + 8)))
  {
    kaldi::KaldiAssertFailure_("MulElements", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_4C8.addr + 1, "a.NumRows() == num_rows_ && a.NumCols() == num_cols_", a5);
  }

  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  if (v6 == v7 && v6 == v8)
  {
    v20 = (v6 * v5);
    v21 = *a2;
    v22 = *a1;
    if (v20 >= 4)
    {
      v24 = 4;
      v25 = *a2;
      v26 = *a1;
      do
      {
        v27 = *v25++;
        v19 = vmulq_f32(v27, *v26);
        *v26++ = v19;
        v24 += 4;
      }

      while (v24 <= v20);
      v23 = v20 & 0x7FFFFFFC;
    }

    else
    {
      v23 = 0;
    }

    if (v23 < v20)
    {
      v28 = v20 - v23;
      v29 = &v22->f32[v23];
      v30 = &v21->f32[v23];
      do
      {
        v31 = *v30++;
        v19.f32[0] = v31 * *v29;
        *v29++ = v19.f32[0];
        --v28;
      }

      while (v28);
    }
  }

  else if (v5 >= 1)
  {
    v10 = 0;
    v11 = v8;
    v12 = *a2;
    v13 = *a1;
    v14 = 4 * v7;
    v15 = 4 * v11;
    do
    {
      if (v6 >= 4)
      {
        v17 = 0;
        for (i = 4; i <= v6; i += 4)
        {
          v19 = vmulq_f32(v12[v17], v13[v17]);
          v13[v17++] = v19;
        }

        LODWORD(v16) = v6 & 0x7FFFFFFC;
      }

      else
      {
        LODWORD(v16) = 0;
      }

      if (v16 < v6)
      {
        v16 = v16;
        do
        {
          v19.f32[0] = v12->f32[v16] * v13->f32[v16];
          v13->i32[v16++] = v19.i32[0];
        }

        while (v6 != v16);
      }

      ++v10;
      v13 = (v13 + v14);
      v12 = (v12 + v15);
    }

    while (v10 != v5);
  }

  return v19.f32[0];
}

uint64_t kaldi::MatrixBase<float>::DivElements(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a2 + 12);
  if (v5 != *(result + 12) || (v7 = result, v8 = *(a2 + 8), v8 != *(result + 8)))
  {
    kaldi::KaldiAssertFailure_("DivElements", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_4C8.offset + 2, "a.NumRows() == num_rows_ && a.NumCols() == num_cols_", a5);
  }

  if (v5 >= 1)
  {
    for (i = 0; i < v5; ++i)
    {
      if (v8 >= 1)
      {
        for (j = 0; j < v8; ++j)
        {
          v11 = kaldi::MatrixBase<float>::operator()(a2, i, j, a4, a5);
          result = kaldi::MatrixBase<float>::operator()(v7, i, j, v12, v13);
          *result = *result / v11;
          v8 = *(v7 + 8);
        }

        v5 = *(v7 + 12);
      }
    }
  }

  return result;
}

void kaldi::MatrixBase<float>::Scale(uint64_t a1, float a2)
{
  if (a2 != 1.0)
  {
    v4 = *(a1 + 12);
    if (v4)
    {
      v5 = *(a1 + 8);
      if (v5 == *(a1 + 16))
      {
        v6 = *a1;

        cblas_sscal(v5 * v4, a2, v6, 1);
      }

      else if (v4 >= 1)
      {
        v7 = 0;
        v8 = *a1;
        do
        {
          cblas_sscal(*(a1 + 8), a2, v8, 1);
          ++v7;
          v8 += *(a1 + 16);
        }

        while (v7 < *(a1 + 12));
      }
    }
  }
}

uint64_t kaldi::MatrixBase<float>::MulColsVec(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  LODWORD(v5) = *(a2 + 8);
  if (v5 != *(result + 8))
  {
    kaldi::KaldiAssertFailure_("MulColsVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_568.segname[3], "scale.Dim() == num_cols_", a5);
  }

  v6 = result;
  v7 = *(result + 12);
  if (v7 >= 1)
  {
    for (i = 0; i < v7; ++i)
    {
      if (v5 >= 1)
      {
        v10 = 0;
        do
        {
          if (v10 >= *(a2 + 8))
          {
            kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_20.nsects + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(dim_)", a5);
          }

          v11 = *(*a2 + 4 * v10);
          result = kaldi::MatrixBase<float>::operator()(v6, i, v10, a4, a5);
          *result = v11 * *result;
          ++v10;
          v5 = *(v6 + 8);
        }

        while (v10 < v5);
        v7 = *(v6 + 12);
      }
    }
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::MulRowsVec(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a2 + 8);
  if (v5 != *(result + 12))
  {
    kaldi::KaldiAssertFailure_("MulRowsVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_518.addr + 3, "scale.Dim() == num_rows_", a5);
  }

  if (v5 >= 1)
  {
    v7 = result;
    v8 = 0;
    v9 = *(result + 8);
    do
    {
      if (v8 >= *(a2 + 8))
      {
        kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_20.nsects + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(dim_)", a5);
      }

      if (v9 >= 1)
      {
        v10 = 0;
        v11 = *(*a2 + 4 * v8);
        do
        {
          result = kaldi::MatrixBase<float>::operator()(v7, v8, v10, a4, a5);
          *result = v11 * *result;
          ++v10;
        }

        while (v9 != v10);
      }

      ++v8;
    }

    while (v8 != v5);
  }

  return result;
}

void kaldi::MatrixBase<float>::MulRowsGroupMat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a2 + 12);
  if (v5 != *(a1 + 12) || (v8 = *(a1 + 8), v9 = *(a2 + 8), v10 = v8 / v9, v8 % v9))
  {
    kaldi::KaldiAssertFailure_("MulRowsGroupMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_518.offset + 2, "src.NumRows() == this->NumRows() && this->NumCols() % src.NumCols() == 0", a5);
  }

  if (v5 >= 1)
  {
    v11 = 0;
    v12 = v8 / v10;
    do
    {
      if (*(a1 + 12) <= v11)
      {
        kaldi::KaldiAssertFailure_("RowData", "../subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_B8.sectname[4], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", a5);
      }

      if (v12 >= 1)
      {
        v13 = 0;
        v14 = (*a1 + 4 * (*(a1 + 16) * v11));
        do
        {
          v15 = kaldi::MatrixBase<float>::operator()(a2, v11, v13, a4, a5);
          cblas_sscal(v10, v15, v14, 1);
          ++v13;
          v14 += v10;
        }

        while (v12 != v13);
      }

      ++v11;
    }

    while (v11 != v5);
  }
}

uint64_t kaldi::MatrixBase<float>::InvertElements(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(result + 12);
  if (v5 >= 1)
  {
    v6 = result;
    v7 = 0;
    v8 = *(result + 8);
    do
    {
      if (v8 >= 1)
      {
        for (i = 0; i < v8; ++i)
        {
          v10 = 1.0 / *kaldi::MatrixBase<float>::operator()(v6, v7, i, a4, a5);
          result = kaldi::MatrixBase<float>::operator()(v6, v7, i, v11, v12);
          *result = v10;
          v8 = *(v6 + 8);
        }

        v5 = *(v6 + 12);
      }

      ++v7;
    }

    while (v7 < v5);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::CopyCols(uint64_t result, uint64_t *a2, unsigned int **a3, uint64_t a4, const char *a5)
{
  v5 = *(result + 12);
  if (v5 != *(a2 + 3))
  {
    kaldi::KaldiAssertFailure_("CopyCols", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_C38.reserved3 + 3, "NumRows() == src.NumRows()", a5);
  }

  v6 = *(result + 8);
  v7 = *a3;
  v8 = a3[1];
  if (v6 != ((v8 - *a3) >> 2))
  {
    kaldi::KaldiAssertFailure_("CopyCols", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", stru_C88.sectname, "NumCols() == static_cast<MatrixIndexT>(indices.size())", a5);
  }

  v9 = *(result + 16);
  v10 = *(a2 + 4);
  v11 = *result;
  v12 = *a2;
  if (v7 != v8)
  {
    v13 = *a3;
    do
    {
      result = *v13;
      if (result < -1 || result >= *(a2 + 2))
      {
        kaldi::KaldiAssertFailure_("CopyCols", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_C88.sectname[9], "*iter >= -1 && *iter < src_cols", a5);
      }

      ++v13;
    }

    while (v13 != v8);
  }

  if (v5 >= 1)
  {
    v15 = 0;
    v16 = 4 * v9;
    do
    {
      if (v6 >= 1)
      {
        for (i = 0; i != v6; ++i)
        {
          result = v7[i];
          if ((result & 0x80000000) != 0)
          {
            v18 = 0;
          }

          else
          {
            v18 = *(v12 + 4 * result);
          }

          *(v11 + i * 4) = v18;
        }
      }

      ++v15;
      v12 += 4 * v10;
      v11 += v16;
    }

    while (v15 != v5);
  }

  return result;
}

void kaldi::MatrixBase<float>::CopyRows(char **a1, uint64_t a2, void *a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 2);
  if (v5 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("CopyRows", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_C88.segname[10], "NumCols() == src.NumCols()", a5);
  }

  v8 = *(a1 + 3);
  if (v8 != ((a3[1] - *a3) >> 2))
  {
    kaldi::KaldiAssertFailure_("CopyRows", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_C88.segname[11], "NumRows() == static_cast<MatrixIndexT>(indices.size())", a5);
  }

  if (v8 >= 1)
  {
    v10 = 0;
    v11 = *a1;
    v12 = 4 * v8;
    v13 = 4 * *(a1 + 4);
    do
    {
      v14 = *(*a3 + v10);
      if ((v14 & 0x80000000) != 0)
      {
        bzero(v11, 4 * *(a1 + 2));
      }

      else
      {
        if (*(a2 + 12) <= v14)
        {
          kaldi::KaldiAssertFailure_("RowData", "../subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_B8.sectname[11], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", a5);
        }

        cblas_scopy(v5, (*a2 + 4 * (*(a2 + 16) * v14)), 1, v11, 1);
      }

      v10 += 4;
      v11 += v13;
    }

    while (v12 != v10);
  }
}

unint64_t kaldi::MatrixBase<float>::CopyIndexedItems(unint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5, int a6)
{
  v6 = *(result + 12);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = *a2;
    v10 = *(a2 + 4);
    v11 = v10 * *(a2 + 3);
    v12 = *(result + 8);
    v13 = *result;
    v14 = *(result + 16) - v12;
    do
    {
      v15 = v12;
      result = v7;
      if (v12 >= 1)
      {
        do
        {
          v16 = *(a4 + 4 * (result % a5)) + *(a3 + 4 * (result % a5)) * v10;
          v17 = v16 + result / a5 * a6;
          if (v17 >= v11)
          {
            kaldi::KaldiAssertFailure_("CopyIndexedItems", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_C88.flags + 2, "src_index + shift < max_index", a5);
          }

          if (v16 < 0)
          {
            v18 = 0;
          }

          else
          {
            v18 = *(v9 + 4 * v17);
          }

          *v13++ = v18;
          ++result;
          --v15;
        }

        while (v15);
      }

      ++v8;
      v13 += v14;
      v7 += v12;
    }

    while (v8 != v6);
  }

  return result;
}

void kaldi::MatrixBase<float>::CopySelectedRows(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const char *a5)
{
  v5 = *(a1 + 8);
  if (v5 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("CopySelectedRows", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_C88.reserved3 + 2, "NumCols() == src.NumCols()", a5);
  }

  v7 = *(a3 + 8);
  if (*(a1 + 12) < v7)
  {
    kaldi::KaldiAssertFailure_("CopySelectedRows", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_C88.reserved3 + 3, "NumRows() >= selection.Dim()", a5);
  }

  if (*(a2 + 12) != v7)
  {
    kaldi::KaldiAssertFailure_("CopySelectedRows", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_CD8, "src.NumRows() == selection.Dim()", a5);
  }

  if (v7 >= 1)
  {
    v10 = 0;
    v11 = *a1;
    v12 = 4 * *(a1 + 16);
    do
    {
      if (v10 >= *(a3 + 8))
      {
        kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_20.nsects + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(dim_)", a5);
      }

      if ((*(*a3 + 4 * v10) == 1) != a4)
      {
        if (v10 >= *(a2 + 12))
        {
          kaldi::KaldiAssertFailure_("RowData", "../subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_B8.sectname[11], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", a5);
        }

        cblas_scopy(v5, (*a2 + 4 * *(a2 + 16) * v10), 1, v11, 1);
      }

      ++v10;
      v11 = (v11 + v12);
    }

    while (v7 != v10);
  }
}

uint64_t kaldi::MatrixBase<float>::ApplyFloor(uint64_t a1, float a2)
{
  v2 = *(a1 + 12);
  if (v2 < 1)
  {
    return 0;
  }

  v4 = 0;
  result = 0;
  v6 = *(a1 + 8);
  v7 = *a1;
  v8 = 4 * *(a1 + 16);
  do
  {
    v9 = v6;
    v10 = v7;
    if (v6 >= 1)
    {
      do
      {
        if (*v10 < a2)
        {
          *v10 = a2;
          result = (result + 1);
        }

        ++v10;
        --v9;
      }

      while (v9);
    }

    ++v4;
    v7 = (v7 + v8);
  }

  while (v4 != v2);
  return result;
}

uint64_t kaldi::MatrixBase<float>::ApplyCeiling(uint64_t a1, float a2)
{
  v2 = *(a1 + 12);
  if (v2 < 1)
  {
    return 0;
  }

  v4 = 0;
  result = 0;
  v6 = *(a1 + 8);
  v7 = *a1;
  v8 = 4 * *(a1 + 16);
  do
  {
    v9 = v6;
    v10 = v7;
    if (v6 >= 1)
    {
      do
      {
        if (*v10 > a2)
        {
          *v10 = a2;
          result = (result + 1);
        }

        ++v10;
        --v9;
      }

      while (v9);
    }

    ++v4;
    v7 = (v7 + v8);
  }

  while (v4 != v2);
  return result;
}

void kaldi::MatrixBase<float>::ApplyLog(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 12) >= 1)
  {
    v9[5] = v5;
    v9[6] = v6;
    v8 = 0;
    do
    {
      kaldi::MatrixBase<float>::Row(a1, v8, a5, v9);
      kaldi::VectorBase<float>::ApplyLog(v9);
      ++v8;
    }

    while (v8 < *(a1 + 12));
  }
}

void kaldi::MatrixBase<float>::ApplyExp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 12) >= 1)
  {
    v9[5] = v5;
    v9[6] = v6;
    v8 = 0;
    do
    {
      kaldi::MatrixBase<float>::Row(a1, v8, a5, v9);
      kaldi::VectorBase<float>::ApplyExp(v9);
      ++v8;
    }

    while (v8 < *(a1 + 12));
  }
}

void kaldi::MatrixBase<float>::ApplyPow(uint64_t a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  if (*(a1 + 12) >= 1)
  {
    v13[3] = v9;
    v13[4] = v8;
    v13[7] = v6;
    v13[8] = v7;
    v12 = 0;
    do
    {
      kaldi::MatrixBase<float>::Row(a1, v12, a6, v13);
      kaldi::VectorBase<float>::ApplyPow(v13, a2);
      ++v12;
    }

    while (v12 < *(a1 + 12));
  }
}

uint64_t kaldi::MatrixBase<float>::ApplyHeaviside(uint64_t result)
{
  v1 = *(result + 12);
  if (v1 >= 1)
  {
    v2 = 0;
    v3 = *(result + 8);
    v4 = *result;
    v5 = 4 * *(result + 16);
    do
    {
      v6 = v3;
      v7 = v4;
      if (v3 >= 1)
      {
        do
        {
          if (*v7 <= 0.0)
          {
            v8 = 0.0;
          }

          else
          {
            v8 = 1.0;
          }

          *v7++ = v8;
          --v6;
        }

        while (v6);
      }

      ++v2;
      v4 = (v4 + v5);
    }

    while (v2 != v1);
  }

  return result;
}

BOOL kaldi::MatrixBase<float>::IsZero(uint64_t a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v7 = *(a1 + 12);
  if (v7 < 1)
  {
    v11 = 0.0;
  }

  else
  {
    v9 = 0;
    v10 = *(a1 + 8);
    v11 = 0.0;
    do
    {
      if (v10 >= 1)
      {
        for (i = 0; i != v10; ++i)
        {
          v13 = fabsf(kaldi::MatrixBase<float>::operator()(a1, v9, i, a5, a6));
          if (v11 < v13)
          {
            v11 = v13;
          }
        }
      }

      ++v9;
    }

    while (v9 != v7);
  }

  return v11 <= a2;
}

uint64_t kaldi::MatrixBase<float>::Add(uint64_t result, float a2)
{
  v2 = *(result + 12);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *result;
    v5 = *(result + 8);
    v6 = 4 * *(result + 16);
    do
    {
      v7 = v5;
      v8 = v4;
      if (v5 >= 1)
      {
        do
        {
          *v8 = *v8 + a2;
          ++v8;
          --v7;
        }

        while (v7);
      }

      ++v3;
      v4 = (v4 + v6);
    }

    while (v3 != v2);
  }

  return result;
}

void kaldi::MatrixBase<float>::Sigmoid(kaldi::ContextDependency *a1, kaldi::ContextDependency *this, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 2);
  v5 = *(a1 + 3);
  if (v5 != *(this + 3) || v6 != *(this + 2))
  {
    kaldi::KaldiAssertFailure_("Sigmoid", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_D20.sectname[13], "SameDim(*this, src)", a5);
  }

  if (v6 == *(a1 + 4) && v6 == *(this + 4))
  {
    v17 = *this;
    v21 = 0;
    v18[2] = 0;
    v19 = v17;
    v20 = (v6 * v5);
    v18[0] = *a1;
    v18[1] = v20;
    kaldi::VectorBase<float>::Sigmoid(v18, &v19, a3, a4, a5);
  }

  else if (v5 >= 1)
  {
    v11 = 0;
    do
    {
      kaldi::SubVector<float>::SubVector(&v19, this, v11, a4, a5);
      kaldi::SubVector<float>::SubVector(v18, a1, v11, v12, v13);
      kaldi::VectorBase<float>::Sigmoid(v18, &v19, v14, v15, v16);
      ++v11;
    }

    while (v11 < *(a1 + 3));
  }
}

float *kaldi::MatrixBase<float>::GroupPnorm(float *result, uint64_t a2, float a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v6 = *(a2 + 8);
  v7 = *(result + 2);
  v8 = v6 / v7;
  v25 = v7;
  if (v6 % v7 || (v10 = *(a2 + 12), v10 != *(result + 3)))
  {
    kaldi::KaldiAssertFailure_("GroupPnorm", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_C38.reserved1, "src.NumCols() % this->NumCols() == 0 && src.NumRows() == this->NumRows()", a6);
  }

  v24 = result;
  if (v10 >= 1)
  {
    v12 = 0;
    v23 = *(a2 + 12);
    do
    {
      if (v25 >= 1)
      {
        v13 = 0;
        v14 = 0;
        for (i = 0; i != v25; ++i)
        {
          kaldi::MatrixBase<float>::Row(a2, v12, a6, &v26);
          v29 = 0;
          v30 = 0;
          v13 += v8;
          if (v13 > v27)
          {
            kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v19);
          }

          v28 = v26 + v14;
          LODWORD(v29) = v8;
          v20 = kaldi::VectorBase<float>::Norm(&v28, a3, v16, v17, v18, v19);
          result = kaldi::MatrixBase<float>::operator()(v24, v12, i, v21, v22);
          *result = v20;
          v14 += 4 * v8;
        }
      }

      ++v12;
    }

    while (v12 != v23);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::GroupPnormDeriv(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, float a6)
{
  v6 = *(a2 + 8);
  if (v6 != *(result + 8) || (v8 = result, v9 = *(a2 + 12), v9 != *(result + 12)))
  {
    kaldi::KaldiAssertFailure_("GroupPnormDeriv", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_518.reserved1, "input.NumCols() == this->NumCols() && input.NumRows() == this->NumRows()", a5);
  }

  v11 = *(a3 + 8);
  v12 = v6 / v11;
  if (v6 % v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = v9 == *(a3 + 12);
  }

  if (!v13)
  {
    kaldi::KaldiAssertFailure_("GroupPnormDeriv", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_518.reserved1 + 2, "this->NumCols() % output.NumCols() == 0 && this->NumRows() == output.NumRows()", a5);
  }

  if (a6 == 1.0)
  {
    if (v9 >= 1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (v6 >= 1)
        {
          for (j = 0; j != v6; ++j)
          {
            v18 = kaldi::MatrixBase<float>::operator()(a2, i, j, a4, a5);
            v19 = v18 == 0.0;
            if (v18 <= 0.0)
            {
              v20 = -1.0;
            }

            else
            {
              v20 = 1.0;
            }

            if (v19)
            {
              v21 = 0.0;
            }

            else
            {
              v21 = v20;
            }

            result = kaldi::MatrixBase<float>::operator()(v8, i, j, v16, v17);
            *result = v21;
          }
        }
      }
    }
  }

  else if (v9 >= 1)
  {
    v22 = 0;
    v23 = a6 + -1.0;
    v24 = 1.0 - a6;
    do
    {
      if (v6 >= 1)
      {
        for (k = 0; k != v6; ++k)
        {
          v26 = kaldi::MatrixBase<float>::operator()(a3, v22, k / v12, a4, a5);
          v31 = kaldi::MatrixBase<float>::operator()(a2, v22, k, v27, v28);
          v32 = 0.0;
          if (v26 != 0.0)
          {
            v33 = v31;
            v34 = powf(fabsf(v31), v23);
            v35 = powf(v26, v24) * v34;
            if (v33 < 0.0)
            {
              v32 = -v35;
            }

            else
            {
              v32 = v35;
            }
          }

          result = kaldi::MatrixBase<float>::operator()(v8, v22, k, v29, v30);
          *result = v32;
        }
      }

      ++v22;
    }

    while (v22 != v9);
  }

  return result;
}

void kaldi::MatrixBase<float>::Tanh(kaldi::ContextDependency *a1, kaldi::ContextDependency *this, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 2);
  v5 = *(a1 + 3);
  if (v5 != *(this + 3) || v6 != *(this + 2))
  {
    kaldi::KaldiAssertFailure_("Tanh", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_C38.segname[11], "SameDim(*this, src)", a5);
  }

  if (v6 == *(a1 + 4) && v6 == *(this + 4))
  {
    v17 = *this;
    v21 = 0;
    v18[2] = 0;
    v19 = v17;
    v20 = (v6 * v5);
    v18[0] = *a1;
    v18[1] = v20;
    kaldi::VectorBase<float>::Tanh(v18, &v19, a3, a4, a5);
  }

  else if (v5 >= 1)
  {
    v11 = 0;
    do
    {
      kaldi::SubVector<float>::SubVector(&v19, this, v11, a4, a5);
      kaldi::SubVector<float>::SubVector(v18, a1, v11, v12, v13);
      kaldi::VectorBase<float>::Tanh(v18, &v19, v14, v15, v16);
      ++v11;
    }

    while (v11 < *(a1 + 3));
  }
}

void kaldi::MatrixBase<float>::ApplyTanh(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 12) >= 1)
  {
    v9[5] = v5;
    v9[6] = v6;
    v8 = 0;
    do
    {
      kaldi::MatrixBase<float>::Row(a1, v8, a5, v9);
      kaldi::VectorBase<float>::ApplyTanh(v9);
      ++v8;
    }

    while (v8 < *(a1 + 12));
  }
}

uint64_t *kaldi::MatrixBase<float>::DiffSigmoid(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t a4, const char *a5)
{
  v6 = *(result + 2);
  v5 = *(result + 3);
  v7 = v5 == *(a2 + 3) && v6 == *(a2 + 2);
  if (!v7 || (v5 == *(a3 + 3) ? (v8 = v6 == *(a3 + 2)) : (v8 = 0), !v8))
  {
    kaldi::KaldiAssertFailure_("DiffSigmoid", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_D20.segname[14], "SameDim(*this, value) && SameDim(*this, diff)", a5);
  }

  if (v5 >= 1)
  {
    v9 = 0;
    v10 = *a3;
    v11 = *a2;
    v12 = *result;
    v13 = 4 * *(result + 4);
    v14 = 4 * *(a2 + 4);
    v15 = 4 * *(a3 + 4);
    do
    {
      if (v6 >= 1)
      {
        result = 0;
        do
        {
          v16 = (1.0 - *(result + v11)) * (*(result + v10) * *(result + v11));
          *(result + v12) = v16;
          result = (result + 4);
        }

        while ((4 * v6) != result);
      }

      ++v9;
      v12 += v13;
      v11 += v14;
      v10 += v15;
    }

    while (v9 != v5);
  }

  return result;
}

uint64_t *kaldi::MatrixBase<float>::DiffTanh(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t a4, const char *a5)
{
  v6 = *(result + 2);
  v5 = *(result + 3);
  v7 = v5 == *(a2 + 3) && v6 == *(a2 + 2);
  if (!v7 || (v5 == *(a3 + 3) ? (v8 = v6 == *(a3 + 2)) : (v8 = 0), !v8))
  {
    kaldi::KaldiAssertFailure_("DiffTanh", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_D20.size + 7, "SameDim(*this, value) && SameDim(*this, diff)", a5);
  }

  if (v5 >= 1)
  {
    v9 = 0;
    v10 = *a3;
    v11 = *a2;
    v12 = *result;
    v13 = 4 * *(result + 4);
    v14 = 4 * *(a2 + 4);
    v15 = 4 * *(a3 + 4);
    do
    {
      if (v6 >= 1)
      {
        result = 0;
        do
        {
          v16 = (1.0 - (*(result + v11) * *(result + v11))) * *(result + v10);
          *(result + v12) = v16;
          result = (result + 4);
        }

        while ((4 * v6) != result);
      }

      ++v9;
      v12 += v13;
      v11 += v14;
      v10 += v15;
    }

    while (v9 != v5);
  }

  return result;
}

_DWORD *kaldi::MatrixBase<float>::MaxoutForward(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a2 + 8);
  LODWORD(v6) = result[2];
  v7 = v5 / v6;
  if (v5 % v6 || (v9 = result, v10 = *(a2 + 12), v10 != result[3]))
  {
    kaldi::KaldiAssertFailure_("MaxoutForward", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_D70.addr + 4, "input.NumCols() % this->NumCols() == 0 && input.NumRows() == this->NumRows()", a5);
  }

  if (v10 >= 1)
  {
    for (i = 0; i < v10; ++i)
    {
      if (v6 >= 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        do
        {
          kaldi::MatrixBase<float>::Row(a2, i, a5, &v21);
          v24 = 0;
          v25 = 0;
          v12 += v7;
          if (v12 > v22)
          {
            kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v15);
          }

          v23 = v21 + v13;
          LODWORD(v24) = v7;
          kaldi::VectorBase<float>::Max(&v23, v16);
          v18 = v17;
          result = kaldi::MatrixBase<float>::operator()(v9, i, v14, v19, v20);
          *result = v18;
          v6 = *(v9 + 8);
          v13 += 4 * v7;
          ++v14;
        }

        while (v14 < v6);
        v10 = *(v9 + 12);
      }
    }
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::MaxoutDerivative(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(result + 8);
  if (*(a2 + 8) % v5 || (v7 = result, v8 = *(a2 + 12), v8 != *(result + 12)))
  {
    kaldi::KaldiAssertFailure_("MaxoutDerivative", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_D70.offset, "input.NumCols() % this->NumCols() == 0 && input.NumRows() == this->NumRows()", a5);
  }

  if (v8 >= 1)
  {
    v10 = 0;
    v11 = v5 / *(a3 + 8);
    do
    {
      if (v5 >= 1)
      {
        for (i = 0; i < v5; ++i)
        {
          v13 = kaldi::MatrixBase<float>::operator()(a2, v10, i, a4, a5);
          v16 = kaldi::MatrixBase<float>::operator()(a3, v10, i / v11, v14, v15);
          result = kaldi::MatrixBase<float>::operator()(v7, v10, i, v17, v18);
          if (v13 == v16)
          {
            v19 = 1.0;
          }

          else
          {
            v19 = 0.0;
          }

          *result = v19;
          v5 = *(v7 + 8);
        }

        v8 = *(v7 + 12);
      }

      ++v10;
    }

    while (v10 < v8);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::AddToDiag(uint64_t result, float a2)
{
  LODWORD(v2) = *(result + 8);
  v3 = *(result + 12);
  if (v2 >= v3)
  {
    v2 = v3;
  }

  else
  {
    v2 = v2;
  }

  if (v2 >= 1)
  {
    v4 = *result;
    v5 = 4 * *(result + 16) + 4;
    do
    {
      *v4 = *v4 + a2;
      v4 = (v4 + v5);
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::AddToDiag(uint64_t result, uint64_t a2, float a3, float a4, uint64_t a5, uint64_t a6, const char *a7)
{
  LODWORD(v7) = *(result + 8);
  v8 = *(result + 12);
  if (v7 >= v8)
  {
    v7 = v8;
  }

  else
  {
    v7 = v7;
  }

  if (*(a2 + 8) != v7)
  {
    kaldi::KaldiAssertFailure_("AddToDiag", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_798.fileoff + 1, "src.Dim() == num_to_add", a7);
  }

  if (v7 >= 1)
  {
    v9 = *a2;
    v10 = *result;
    v11 = 4 * (*(result + 16) + 1);
    do
    {
      v12 = *v9++;
      *v10 = (*v10 * a4) + (a3 * v12);
      v10 = (v10 + v11);
      --v7;
    }

    while (v7);
  }

  return result;
}

void kaldi::MatrixBase<float>::AddIndexedRows(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, float a6)
{
  v6 = *(a2 + 8);
  if (*(a1 + 8) * v6 != *(a3 + 8))
  {
    kaldi::KaldiAssertFailure_("AddIndexedRows", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_CD8.filesize + 4, "indices.NumCols() * NumCols() == src.NumCols()", a5);
  }

  v9 = *(a2 + 12);
  if (v9 != *(a3 + 12))
  {
    kaldi::KaldiAssertFailure_("AddIndexedRows", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_CD8.filesize + 5, "indices.NumRows() == src.NumRows()", a5);
  }

  if (v9 >= 1)
  {
    for (i = 0; i < v9; ++i)
    {
      if (v6 >= 1)
      {
        for (j = 0; j < v6; ++j)
        {
          v14 = kaldi::MatrixBase<float>::operator()(a2, i, j, a4, a5);
          if ((v14 & 0x80000000) == 0)
          {
            if (*(a1 + 12) <= v14)
            {
              kaldi::KaldiErrorMessage::KaldiErrorMessage(v23, "AddIndexedRows", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 3349);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "index ", 6);
              v21 = std::ostream::operator<<();
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " is too big for matrix that has rows = ", 39);
              v22 = *(a1 + 12);
              std::ostream::operator<<();
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(v23);
            }

            v15 = *(a1 + 8);
            if (v15 >= 1)
            {
              for (k = 0; k < v15; ++k)
              {
                v17 = kaldi::MatrixBase<float>::operator()(a3, i, k + j * v15, a4, a5);
                v20 = kaldi::MatrixBase<float>::operator()(a1, v14, k, v18, v19);
                *v20 = *v20 + (a6 * v17);
                v15 = *(a1 + 8);
              }
            }
          }

          v6 = *(a2 + 8);
        }

        v9 = *(a2 + 12);
      }
    }
  }
}

void kaldi::MatrixBase<float>::AddDiagVecMat(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const char *a5, float a6, float a7)
{
  if (a7 != 1.0)
  {
    kaldi::MatrixBase<float>::Scale(a1, a7);
  }

  if (a4 == 111)
  {
    v12 = *(a1 + 8);
    v13 = *(a1 + 12);
    if (v13 != *(a3 + 12) || v12 != *(a3 + 8))
    {
      kaldi::KaldiAssertFailure_("AddDiagVecMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_1F8.size, "SameDim(*this, M)", a5);
    }
  }

  else
  {
    v12 = *(a3 + 12);
    if (v12 != *(a1 + 8) || (v13 = *(a3 + 8), v13 != *(a1 + 12)))
    {
      kaldi::KaldiAssertFailure_("AddDiagVecMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_1F8.size + 2, "M.NumRows() == NumCols() && M.NumCols() == NumRows()", a5);
    }
  }

  if (*(a2 + 8) != v13)
  {
    kaldi::KaldiAssertFailure_("AddDiagVecMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_1F8.size + 4, "v.Dim() == this->NumRows()", a5);
  }

  v15 = *(a3 + 16);
  if (a4 == 112)
  {
    v16 = *(a3 + 16);
  }

  else
  {
    v16 = 1;
  }

  if (v13 >= 1)
  {
    v17 = *a2;
    v18 = *a3;
    v19 = *a1;
    if (a4 == 112)
    {
      v15 = 1;
    }

    v20 = 4 * v15;
    v21 = 4 * *(a1 + 16);
    do
    {
      v22 = *v17++;
      cblas_saxpy(v12, v22 * a6, v18, v16, v19, 1);
      v18 = (v18 + v20);
      v19 = (v19 + v21);
      --v13;
    }

    while (v13);
  }
}

void kaldi::MatrixBase<float>::AddMatDiagVec(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5, float a6, float a7)
{
  if (a7 != 1.0)
  {
    kaldi::MatrixBase<float>::Scale(a1, a7);
  }

  if (a3 == 111)
  {
    v13 = *(a1 + 8);
    v12 = *(a1 + 12);
    if (v12 != *(a2 + 12) || v13 != *(a2 + 8))
    {
      kaldi::KaldiAssertFailure_("AddMatDiagVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_1F8.flags + 2, "SameDim(*this, M)", a5);
    }
  }

  else
  {
    v13 = *(a2 + 12);
    if (v13 != *(a1 + 8) || (v12 = *(a2 + 8), v12 != *(a1 + 12)))
    {
      kaldi::KaldiAssertFailure_("AddMatDiagVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_1F8.reserved1, "M.NumRows() == NumCols() && M.NumCols() == NumRows()", a5);
    }
  }

  if (*(a4 + 8) != v13)
  {
    kaldi::KaldiAssertFailure_("AddMatDiagVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_1F8.reserved1 + 2, "v.Dim() == this->NumCols()", a5);
  }

  v15 = *(a2 + 16);
  if (a3 == 112)
  {
    v16 = 1;
  }

  else
  {
    v16 = *(a2 + 16);
  }

  if (v12 && v13 >= 1)
  {
    v17 = *(a1 + 16);
    v18 = *a4;
    v19 = *a2;
    v20 = *a1;
    if (a3 != 112)
    {
      v15 = 1;
    }

    v21 = 4 * v15;
    do
    {
      v22 = *v18++;
      cblas_saxpy(v12, v22 * a6, v19, v16, v20++, v17);
      v19 = (v19 + v21);
      --v13;
    }

    while (v13);
  }
}

uint64_t kaldi::MatrixBase<float>::AddMatEwpMat(uint64_t result, uint64_t a2, int a3, uint64_t a4, const char *a5, float a6, float a7)
{
  v7 = *(result + 12);
  if (a3 == 111)
  {
    if (v7 != *(a2 + 12) || (v8 = *(result + 8), v8 != *(a2 + 8)))
    {
      kaldi::KaldiAssertFailure_("AddMatEwpMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_830.sectname[12], "num_rows_ == A.num_rows_ && num_cols_ == A.num_cols_", a5);
    }
  }

  else if (v7 != *(a2 + 8) || (v8 = *(result + 8), v8 != *(a2 + 12)))
  {
    kaldi::KaldiAssertFailure_("AddMatEwpMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_830.sectname[14], "num_rows_ == A.num_cols_ && num_cols_ == A.num_rows_", a5);
  }

  if (a5 == 111)
  {
    if (__PAIR64__(v7, v8) != *(a4 + 8))
    {
      kaldi::KaldiAssertFailure_("AddMatEwpMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_830.segname[2], "num_rows_ == B.num_rows_ && num_cols_ == B.num_cols_", a5);
    }
  }

  else if (__PAIR64__(v8, v7) != *(a4 + 8))
  {
    kaldi::KaldiAssertFailure_("AddMatEwpMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_830.segname[4], "num_rows_ == B.num_cols_ && num_cols_ == B.num_rows_", a5);
  }

  if (v7 >= 1)
  {
    v9 = 0;
    v10 = *(a4 + 16);
    if (a5 == 112)
    {
      v11 = 1;
    }

    else
    {
      v11 = *(a4 + 16);
    }

    v12 = *(a2 + 16);
    if (a5 == 112)
    {
      v13 = *(a4 + 16);
    }

    else
    {
      v13 = 1;
    }

    if (a3 == 112)
    {
      v14 = 1;
    }

    else
    {
      v14 = *(a2 + 16);
    }

    if (a3 == 112)
    {
      v15 = *(a2 + 16);
    }

    else
    {
      v15 = 1;
    }

    v16 = *result;
    v17 = *(result + 16);
    v18 = *a2;
    v19 = 4 * v11;
    v20 = 4 * v13;
    v21 = *a4;
    v22 = 4 * v14;
    result = 4 * v15;
    do
    {
      if (v8 >= 1)
      {
        v23 = (v16 + 4 * v9 * v17);
        v24 = v18;
        v25 = v21;
        v26 = v8;
        do
        {
          *v23 = ((*v24 * a6) * *v25) + (a7 * *v23);
          ++v23;
          v25 = (v25 + v20);
          v24 = (v24 + result);
          --v26;
        }

        while (v26);
      }

      ++v9;
      v21 = (v21 + v19);
      v18 = (v18 + v22);
    }

    while (v9 != v7);
  }

  return result;
}

void kaldi::MatrixBase<float>::Write(uint64_t a1, void *a2, int a3, int a4)
{
  if (*(a2 + *(*a2 - 24) + 32))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v28, "Write", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1567);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v28, "Failed to write matrix to stream: stream not good");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v28);
  }

  if (a3)
  {
    memset(&v27, 0, sizeof(v27));
    std::string::append(&v27, "F");
    if (a4)
    {
      v7 = "N";
    }

    else
    {
      v7 = "M";
    }

    std::string::append(&v27, v7);
    kaldi::WriteToken(a2, 1, &v27, v8, v9);
    v11 = *(a1 + 8);
    v10 = *(a1 + 12);
    kaldi::WriteBasicType<int>(a2, 1);
    kaldi::WriteBasicType<int>(a2, 1);
    v12 = *(a1 + 16);
    if (a4)
    {
      v13 = *(a1 + 16);
      kaldi::WriteBasicType<int>(a2, 1);
      if ((fst::AlignOutput(a2) & 1) == 0)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v28, "Write", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1589);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Could not align output", 22);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v28);
      }
    }

    else if (v12 != *(a1 + 8))
    {
      if (*(a1 + 12) >= 1)
      {
        v24 = 0;
        do
        {
          v25 = *a1 + 4 * *(a1 + 16) * v24;
          v26 = *(a1 + 8);
          std::ostream::write();
          ++v24;
        }

        while (v24 < *(a1 + 12));
      }

      goto LABEL_26;
    }

    v14 = *a1;
    v15 = v12 * *(a1 + 12);
    std::ostream::write();
LABEL_26:
    if (*(a2 + *(*a2 - 24) + 32))
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v28, "Write", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1604);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Failed to write matrix to stream", 32);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v28);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    return;
  }

  if (*(a1 + 8))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " [", 2);
    if (*(a1 + 12) >= 1)
    {
      v16 = 0;
      do
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n  ", 3);
        if (*(a1 + 8) >= 1)
        {
          v19 = 0;
          do
          {
            kaldi::MatrixBase<float>::operator()(a1, v16, v19, v17, v18);
            v20 = std::ostream::operator<<();
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " ", 1);
            ++v19;
          }

          while (v19 < *(a1 + 8));
        }

        ++v16;
      }

      while (v16 < *(a1 + 12));
    }

    v21 = "]\n";
    v22 = a2;
    v23 = 2;
  }

  else
  {
    v21 = " [ ]\n";
    v22 = a2;
    v23 = 5;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v21, v23);
}

void sub_A9558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double kaldi::MatrixBase<double>::operator()(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 12) <= a2 || *(a1 + 8) <= a3)
  {
    kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_B8.addr + 2, "static_cast<UnsignedMatrixIndexT>(r) < static_cast<UnsignedMatrixIndexT>(num_rows_) && static_cast<UnsignedMatrixIndexT>(c) < static_cast<UnsignedMatrixIndexT>(num_cols_)", a5);
  }

  return *(*a1 + 8 * (*(a1 + 16) * a2) + 8 * a3);
}

void kaldi::MatrixBase<double>::Scale(uint64_t a1, double a2)
{
  if (a2 != 1.0)
  {
    v4 = *(a1 + 12);
    if (v4)
    {
      v5 = *(a1 + 8);
      if (v5 == *(a1 + 16))
      {
        v6 = *a1;

        cblas_dscal(v5 * v4, a2, v6, 1);
      }

      else if (v4 >= 1)
      {
        v7 = 0;
        v8 = *a1;
        do
        {
          cblas_dscal(*(a1 + 8), a2, v8, 1);
          ++v7;
          v8 += *(a1 + 16);
        }

        while (v7 < *(a1 + 12));
      }
    }
  }
}

BOOL kaldi::MatrixBase<double>::IsZero(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v7 = *(a1 + 12);
  if (v7 < 1)
  {
    v11 = 0.0;
  }

  else
  {
    v9 = 0;
    v10 = *(a1 + 8);
    v11 = 0.0;
    do
    {
      if (v10 >= 1)
      {
        for (i = 0; i != v10; ++i)
        {
          v13 = fabs(kaldi::MatrixBase<double>::operator()(a1, v9, i, a5, a6));
          if (v11 < v13)
          {
            v11 = v13;
          }
        }
      }

      ++v9;
    }

    while (v9 != v7);
  }

  return v11 <= a2;
}

void kaldi::MatrixBase<double>::Write(uint64_t a1, void *a2, int a3, int a4)
{
  if (*(a2 + *(*a2 - 24) + 32))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v28, "Write", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1567);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v28, "Failed to write matrix to stream: stream not good");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v28);
  }

  if (a3)
  {
    memset(&v27, 0, sizeof(v27));
    std::string::append(&v27, "D");
    if (a4)
    {
      v7 = "N";
    }

    else
    {
      v7 = "M";
    }

    std::string::append(&v27, v7);
    kaldi::WriteToken(a2, 1, &v27, v8, v9);
    v11 = *(a1 + 8);
    v10 = *(a1 + 12);
    kaldi::WriteBasicType<int>(a2, 1);
    kaldi::WriteBasicType<int>(a2, 1);
    v12 = *(a1 + 16);
    if (a4)
    {
      v13 = *(a1 + 16);
      kaldi::WriteBasicType<int>(a2, 1);
      if ((fst::AlignOutput(a2) & 1) == 0)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v28, "Write", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1589);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Could not align output", 22);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v28);
      }
    }

    else if (v12 != *(a1 + 8))
    {
      if (*(a1 + 12) >= 1)
      {
        v24 = 0;
        do
        {
          v25 = *a1 + 8 * *(a1 + 16) * v24;
          v26 = *(a1 + 8);
          std::ostream::write();
          ++v24;
        }

        while (v24 < *(a1 + 12));
      }

      goto LABEL_26;
    }

    v14 = *a1;
    v15 = v12 * *(a1 + 12);
    std::ostream::write();
LABEL_26:
    if (*(a2 + *(*a2 - 24) + 32))
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v28, "Write", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 1604);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Failed to write matrix to stream", 32);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v28);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    return;
  }

  if (*(a1 + 8))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " [", 2);
    if (*(a1 + 12) >= 1)
    {
      v16 = 0;
      do
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n  ", 3);
        if (*(a1 + 8) >= 1)
        {
          v19 = 0;
          do
          {
            kaldi::MatrixBase<double>::operator()(a1, v16, v19, v17, v18);
            v20 = std::ostream::operator<<();
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " ", 1);
            ++v19;
          }

          while (v19 < *(a1 + 8));
        }

        ++v16;
      }

      while (v16 < *(a1 + 12));
    }

    v21 = "]\n";
    v22 = a2;
    v23 = 2;
  }

  else
  {
    v21 = " [ ]\n";
    v22 = a2;
    v23 = 5;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v21, v23);
}

void sub_A9AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::SubMatrix<float>::SubMatrix(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4, const char *a5, unsigned int a6)
{
  *result = 0u;
  *(result + 16) = 0u;
  v6 = *(a2 + 12);
  v10 = v6 >= a3;
  v7 = v6 - a3;
  if (v7 == 0 || !v10 || ((v8 = *(a2 + 8), v10 = v8 >= a5, v9 = v8 - a5, v9 != 0 && v10) ? (v10 = v7 >= a4) : (v10 = 0), v10 ? (v11 = v9 >= a6) : (v11 = 0), !v11))
  {
    kaldi::KaldiAssertFailure_("SubMatrix", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_748.reserved1 + 2, "static_cast<UnsignedMatrixIndexT>(ro) < static_cast<UnsignedMatrixIndexT>(M.num_rows_) && static_cast<UnsignedMatrixIndexT>(co) < static_cast<UnsignedMatrixIndexT>(M.num_cols_) && static_cast<UnsignedMatrixIndexT>(r) <= static_cast<UnsignedMatrixIndexT>(M.num_rows_ - ro) && static_cast<UnsignedMatrixIndexT>(c) <= static_cast<UnsignedMatrixIndexT>(M.num_cols_ - co)", a5);
  }

  *(result + 8) = a6;
  *(result + 12) = a4;
  v12 = *(a2 + 16);
  v13 = *(a2 + 20);
  *result = *a2 + 4 * a5 + 4 * (v12 * a3);
  *(result + 16) = v12;
  *(result + 20) = v13 - a5 - v12 * a3;
  return result;
}

uint64_t kaldi::SubMatrix<float>::SubMatrix(uint64_t result, uint64_t a2, int a3, int a4, const char *a5)
{
  *(result + 8) = a4;
  *result = a2;
  *(result + 12) = a3;
  *(result + 16) = a5;
  *(result + 20) = a5 * a3;
  *(result + 24) = 0;
  if (a2)
  {
    if (a5 < a4)
    {
      kaldi::KaldiAssertFailure_("SubMatrix", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_798.segname[5], "this->stride_ >= this->num_cols_", a5);
    }
  }

  else
  {
    if (a4 * a3)
    {
      kaldi::KaldiAssertFailure_("SubMatrix", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_798.cmdsize + 3, "num_rows * num_cols == 0", a5);
    }

    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  return result;
}

uint64_t kaldi::SubMatrix<double>::SubMatrix(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4, const char *a5, unsigned int a6)
{
  *result = 0u;
  *(result + 16) = 0u;
  v6 = *(a2 + 12);
  v10 = v6 >= a3;
  v7 = v6 - a3;
  if (v7 == 0 || !v10 || ((v8 = *(a2 + 8), v10 = v8 >= a5, v9 = v8 - a5, v9 != 0 && v10) ? (v10 = v7 >= a4) : (v10 = 0), v10 ? (v11 = v9 >= a6) : (v11 = 0), !v11))
  {
    kaldi::KaldiAssertFailure_("SubMatrix", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_748.reserved1 + 2, "static_cast<UnsignedMatrixIndexT>(ro) < static_cast<UnsignedMatrixIndexT>(M.num_rows_) && static_cast<UnsignedMatrixIndexT>(co) < static_cast<UnsignedMatrixIndexT>(M.num_cols_) && static_cast<UnsignedMatrixIndexT>(r) <= static_cast<UnsignedMatrixIndexT>(M.num_rows_ - ro) && static_cast<UnsignedMatrixIndexT>(c) <= static_cast<UnsignedMatrixIndexT>(M.num_cols_ - co)", a5);
  }

  *(result + 8) = a6;
  *(result + 12) = a4;
  v12 = *(a2 + 16);
  v13 = *(a2 + 20);
  *result = *a2 + 8 * a5 + 8 * (v12 * a3);
  *(result + 16) = v12;
  *(result + 20) = v13 - a5 - v12 * a3;
  return result;
}

float *kaldi::Quant3Levels<float>(float *result, uint64_t a2, float a3, uint64_t a4, uint64_t a5, const char *a6)
{
  if (a3 <= 0.0)
  {
    kaldi::KaldiAssertFailure_("Quant3Levels", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_D70.nreloc + 3, "value > 0.0", a6);
  }

  v6 = result;
  v7 = *(result + 3);
  if (v7 >= 1)
  {
    v10 = 0;
    v11 = -a3;
    v12 = *(result + 2);
    do
    {
      if (v12 >= 1)
      {
        for (i = 0; i < v12; ++i)
        {
          v14 = *kaldi::MatrixBase<float>::operator()(v6, v10, i, a5, a6);
          v17 = kaldi::MatrixBase<float>::operator()(v6, v10, i, v15, v16);
          v20 = *v17;
          if (v14 >= a3)
          {
            *v17 = v20 - a3;
            v21 = a3;
          }

          else
          {
            v21 = 0.0;
            if (v20 <= v11)
            {
              v22 = kaldi::MatrixBase<float>::operator()(v6, v10, i, v18, v19);
              *v22 = *v22 + a3;
              v21 = v11;
            }
          }

          result = kaldi::MatrixBase<float>::operator()(a2, v10, i, v18, v19);
          *result = v21;
          v12 = *(v6 + 8);
        }

        v7 = *(v6 + 12);
      }

      ++v10;
    }

    while (v10 < v7);
  }

  return result;
}

_DWORD *kaldi::ZeroSmallValues<float>(_DWORD *result, uint64_t a2, float a3, uint64_t a4, uint64_t a5, const char *a6)
{
  if (a3 <= 0.0)
  {
    kaldi::KaldiAssertFailure_("ZeroSmallValues", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_DC0.cmd + 1, "threshold > 0.0", a6);
  }

  v6 = result;
  v7 = result[3];
  if (v7 < 1)
  {
    return result;
  }

  v10 = 0;
  v11 = -a3;
  v12 = result[2];
  do
  {
    if (v12 < 1)
    {
      goto LABEL_12;
    }

    for (i = 0; i < v12; ++i)
    {
      v14 = *kaldi::MatrixBase<float>::operator()(v6, v10, i, a5, a6);
      v19 = *kaldi::MatrixBase<float>::operator()(v6, v10, i, v15, v16);
      if (v14 < a3)
      {
        v20 = a2;
        if (v19 > v11)
        {
          goto LABEL_10;
        }

        v19 = *kaldi::MatrixBase<float>::operator()(v6, v10, i, v17, v18);
      }

      *kaldi::MatrixBase<float>::operator()(a2, v10, i, v17, v18) = v19;
      v20 = v6;
LABEL_10:
      result = kaldi::MatrixBase<float>::operator()(v20, v10, i, v17, v18);
      *result = 0;
      v12 = *(v6 + 8);
    }

    v7 = *(v6 + 12);
LABEL_12:
    ++v10;
  }

  while (v10 < v7);
  return result;
}

kaldi::ContextDependency *kaldi::MatrixBase<float>::AddMatMat<signed char>(kaldi::ContextDependency *result, kaldi::ContextDependency *a2, uint64_t a3, unsigned int *a4, const char *a5, float a6, float a7)
{
  v12 = result;
  if (a5 == 111)
  {
    v13 = kaldi::QuantizedMatrixBase<short>::NumCols(a4);
    v14 = kaldi::QuantizedMatrixBase<short>::NumRows(a4);
    kaldi::QuantizedMatrix<signed char>::QuantizedMatrix(v18, v13, v14);
    kaldi::QuantizedMatrixBase<signed char>::CopyFromMat(v18, a4, 112, v15, v16);
    kaldi::MatrixBase<float>::AddMatMat<signed char>(v12, a2, a3, v18, 112, a6, a7);
    return kaldi::QuantizedMatrixBase<signed char>::~QuantizedMatrixBase(v18);
  }

  else
  {
    if (a3 != 111)
    {
      kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_B8.reloff + 2, "transA == kNoTrans", a5);
    }

    if (a5 != 112)
    {
      kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_B8.reloff + 3, "transB == kTrans", a5);
    }

    if (*(a2 + 2) != a4[1])
    {
      kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_B8.nreloc, "A.num_cols_ == B.num_cols_", a5);
    }

    v17 = *(a2 + 3);
    if (v17 != *(result + 3))
    {
      kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_B8.nreloc + 1, "A.num_rows_ == num_rows_", a5);
    }

    if (*a4 != *(result + 2))
    {
      kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_B8.nreloc + 2, "B.num_rows_ == num_cols_", a5);
    }

    if (a6 != 1.0)
    {
      kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_B8.flags, "alpha == 1.0", a5);
    }

    if (a2 == result)
    {
      kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_B8.flags + 1, "&A != this", a5);
    }

    if (v17)
    {

      return kaldi::QuantizedMatrixBase<signed char>::AddMatMat(a4, a2, result, a4, a5, a7);
    }
  }

  return result;
}

kaldi::ContextDependency *kaldi::MatrixBase<float>::AddMatMat<short>(kaldi::ContextDependency *result, kaldi::ContextDependency *a2, uint64_t a3, unsigned int *a4, const char *a5, float a6, float a7)
{
  v12 = result;
  if (a5 == 111)
  {
    v13 = kaldi::QuantizedMatrixBase<short>::NumCols(a4);
    v14 = kaldi::QuantizedMatrixBase<short>::NumRows(a4);
    kaldi::QuantizedMatrix<short>::QuantizedMatrix(v18, v13, v14);
    kaldi::QuantizedMatrixBase<short>::CopyFromMat(v18, a4, 112, v15, v16);
    kaldi::MatrixBase<float>::AddMatMat<short>(v12, a2, a3, v18, 112, a6, a7);
    return kaldi::QuantizedMatrixBase<short>::~QuantizedMatrixBase(v18);
  }

  else
  {
    if (a3 != 111)
    {
      kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_B8.reloff + 2, "transA == kNoTrans", a5);
    }

    if (a5 != 112)
    {
      kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_B8.reloff + 3, "transB == kTrans", a5);
    }

    if (*(a2 + 2) != a4[1])
    {
      kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_B8.nreloc, "A.num_cols_ == B.num_cols_", a5);
    }

    v17 = *(a2 + 3);
    if (v17 != *(result + 3))
    {
      kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_B8.nreloc + 1, "A.num_rows_ == num_rows_", a5);
    }

    if (*a4 != *(result + 2))
    {
      kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_B8.nreloc + 2, "B.num_rows_ == num_cols_", a5);
    }

    if (a6 != 1.0)
    {
      kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_B8.flags, "alpha == 1.0", a5);
    }

    if (a2 == result)
    {
      kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_B8.flags + 1, "&A != this", a5);
    }

    if (v17)
    {

      return kaldi::QuantizedMatrixBase<short>::AddMatMat(a4, a2, result, a4, a5, a7);
    }
  }

  return result;
}

kaldi::ContextDependency *kaldi::MatrixBase<float>::AddMatMat<signed char>(kaldi::ContextDependency *this, uint64_t a2, int a3, _DWORD *a4, const char *a5, float a6, float a7)
{
  if (a5 == 111)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v8, "AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 263);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v8, "Unimplemented");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v8);
  }

  if (a3 != 111)
  {
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_108.sectname[2], "transA == kNoTrans", a5);
  }

  if (a5 != 112)
  {
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_108.sectname[3], "transB == kTrans", a5);
  }

  if (*(a2 + 8) != a4[1])
  {
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_108.sectname[4], "A.num_cols_ == B.num_cols_", a5);
  }

  v7 = *(a2 + 12);
  if (v7 != *(this + 3))
  {
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_108.sectname[5], "A.num_rows_ == num_rows_", a5);
  }

  if (*a4 != *(this + 2))
  {
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_108.sectname[6], "B.num_rows_ == num_cols_", a5);
  }

  if (a6 != 1.0)
  {
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_108.sectname[8], "alpha == 1.0", a5);
  }

  if (a2 == this)
  {
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_108.sectname[9], "&A != this", a5);
  }

  if (v7)
  {

    return kaldi::VectorwiseQuantizedMatrix<signed char>::AddMatMat(a4, a2, this, a7);
  }

  return this;
}

kaldi::ContextDependency *kaldi::MatrixBase<float>::AddMatMat<short>(kaldi::ContextDependency *this, uint64_t a2, int a3, _DWORD *a4, const char *a5, float a6, float a7)
{
  if (a5 == 111)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v8, "AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 263);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v8, "Unimplemented");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v8);
  }

  if (a3 != 111)
  {
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_108.sectname[2], "transA == kNoTrans", a5);
  }

  if (a5 != 112)
  {
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_108.sectname[3], "transB == kTrans", a5);
  }

  if (*(a2 + 8) != a4[1])
  {
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_108.sectname[4], "A.num_cols_ == B.num_cols_", a5);
  }

  v7 = *(a2 + 12);
  if (v7 != *(this + 3))
  {
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_108.sectname[5], "A.num_rows_ == num_rows_", a5);
  }

  if (*a4 != *(this + 2))
  {
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_108.sectname[6], "B.num_rows_ == num_cols_", a5);
  }

  if (a6 != 1.0)
  {
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_108.sectname[8], "alpha == 1.0", a5);
  }

  if (a2 == this)
  {
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_108.sectname[9], "&A != this", a5);
  }

  if (v7)
  {

    return kaldi::VectorwiseQuantizedMatrix<short>::AddMatMat(a4, a2, this, a7);
  }

  return this;
}

void kaldi::MatrixBase<float>::AddVecVec<float>(uint64_t a1, uint64_t a2, uint64_t a3, float a4, uint64_t a5, const char *a6)
{
  v7 = *(a2 + 8);
  if (v7 != *(a1 + 12) || (v8 = *(a3 + 8), v8 != *(a1 + 8)))
  {
    kaldi::KaldiAssertFailure_("AddVecVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", &stru_68.addr + 5, "a.Dim() == num_rows_ && rb.Dim() == num_cols_", a6);
  }

  cblas_sger(CblasRowMajor, v7, v8, a4, *a2, 1, *a3, 1, *a1, *(a1 + 16));
}

_DWORD *std::vector<float>::emplace_back<float const&>(const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
  return v6 - 1;
}

void *std::vector<double>::emplace_back<double const&>(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
  return v6 - 1;
}

uint64_t kaldi::QuantizedMatrix<signed char>::QuantizedMatrix(uint64_t a1, int a2, int a3)
{
  kaldi::QuantizedMatrixBase<signed char>::QuantizedMatrixBase(a1, a2, a3);
  memptr = 0;
  v6 = malloc_type_posix_memalign(&memptr, 0x20uLL, a3 * a2, 0x100004077774924uLL);
  v7 = memptr;
  if (v6)
  {
    v7 = 0;
  }

  memptr = v7;
  v8 = *(a1 + 16);
  *(a1 + 16) = v7;
  if (v8)
  {
    (*(a1 + 24))();
  }

  kaldi::QuantizedMatrixBase<signed char>::UpdateFilter(a1);
  return a1;
}

void kaldi::QuantizedMatrixBase<signed char>::CopyFromMat(uint64_t a1, kaldi::ContextDependency *this)
{
  if (kaldi::ContextDependency::CentralPosition(this) != *a1)
  {
    kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", &stru_68.addr + 6, "M.NumRows() == NumRows()", v4);
  }

  if (kaldi::ContextDependency::ContextWidth(this) != *(a1 + 4))
  {
    kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", &stru_68.addr + 7, "M.NumCols() == NumCols()", v5);
  }

  v6 = kaldi::ContextDependency::CentralPosition(this);
  v7 = kaldi::ContextDependency::ContextWidth(this);
  if (v6)
  {
    v10 = v7;
    v11 = 0;
    v12 = v6;
    v13 = v7;
    v14 = -INFINITY;
    v15 = INFINITY;
    do
    {
      if (v10)
      {
        v16 = 0;
        do
        {
          v17 = kaldi::MatrixBase<float>::operator()(this, v11, v16, v8, v9);
          if (v17 < v15)
          {
            v15 = v17;
          }

          if (v14 < v17)
          {
            v14 = v17;
          }

          ++v16;
        }

        while (v13 != v16);
      }

      ++v11;
    }

    while (v11 != v12);
  }

  else
  {
    v15 = INFINITY;
    v14 = -INFINITY;
  }

  if ((*(a1 + 4) * 16129.0) > 2147500000.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v21, "CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", 170);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v21, "Too many rows*cols for 8-bit Matrix");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v21);
  }

  v18 = fabsf(v14);
  v19 = fabsf(v15);
  if (v18 < v19)
  {
    v18 = v19;
  }

  *(a1 + 8) = 1123942400;
  *(a1 + 12) = 127.0 / v18;
  v20 = kaldi::QuantizedMatrixBase<signed char>::MutableData(a1);
  kaldi::ComputeQuantizedData<signed char>(v20, this, *(a1 + 12));

  kaldi::QuantizedMatrixBase<signed char>::UpdateFilter(a1);
}

uint64_t kaldi::QuantizedMatrix<signed char>::QuantizedMatrix<short>(uint64_t a1, int *a2)
{
  kaldi::QuantizedMatrix<signed char>::QuantizedMatrix(a1, *a2, a2[1]);
  kaldi::Matrix<float>::Matrix<short>(v5, a2);
  kaldi::QuantizedMatrixBase<signed char>::CopyFromMat(a1, v5);
  kaldi::Matrix<float>::~Matrix(v5);
  return a1;
}

void sub_AAC3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  kaldi::QuantizedMatrixBase<signed char>::~QuantizedMatrixBase(v2);
  _Unwind_Resume(a1);
}

uint64_t kaldi::QuantizedMatrix<short>::QuantizedMatrix(uint64_t a1, int a2, int a3)
{
  kaldi::QuantizedMatrixBase<short>::QuantizedMatrixBase(a1, a2, a3);
  memptr = 0;
  v6 = malloc_type_posix_memalign(&memptr, 0x20uLL, 2 * a3 * a2, 0x1000040BDFB0063uLL);
  v7 = memptr;
  if (v6)
  {
    v7 = 0;
  }

  memptr = v7;
  v8 = *(a1 + 16);
  *(a1 + 16) = v7;
  if (v8)
  {
    (*(a1 + 24))();
  }

  kaldi::QuantizedMatrixBase<short>::UpdateFilter(a1);
  return a1;
}

void kaldi::QuantizedMatrixBase<short>::CopyFromMat(uint64_t a1, kaldi::ContextDependency *this)
{
  if (kaldi::ContextDependency::CentralPosition(this) != *a1)
  {
    kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", &stru_68.addr + 6, "M.NumRows() == NumRows()", v4);
  }

  if (kaldi::ContextDependency::ContextWidth(this) != *(a1 + 4))
  {
    kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", &stru_68.addr + 7, "M.NumCols() == NumCols()", v5);
  }

  v6 = kaldi::ContextDependency::CentralPosition(this);
  v9 = kaldi::ContextDependency::ContextWidth(this);
  v10 = v6;
  if (v6)
  {
    v11 = 0;
    v12 = -INFINITY;
    v13 = INFINITY;
    do
    {
      if (v9)
      {
        for (i = 0; i != v9; ++i)
        {
          v15 = kaldi::MatrixBase<float>::operator()(this, v11, i, v7, v8);
          if (v15 < v13)
          {
            v13 = v15;
          }

          if (v12 < v15)
          {
            v12 = v15;
          }
        }
      }

      ++v11;
    }

    while (v11 != v10);
  }

  else
  {
    v13 = INFINITY;
    v12 = -INFINITY;
  }

  v16 = fabsf(v12);
  v17 = fabsf(v13);
  if (v16 < v17)
  {
    v16 = v17;
  }

  v18 = 2147500000.0 / (v9 * v10);
  if (v18 > 32767.0)
  {
    v18 = 32767.0;
  }

  *(a1 + 8) = v18;
  *(a1 + 12) = v18 / v16;
  v19 = kaldi::QuantizedMatrixBase<short>::MutableData(a1);
  kaldi::ComputeQuantizedData<short>(v19, this, *(a1 + 12));

  kaldi::QuantizedMatrixBase<short>::UpdateFilter(a1);
}

uint64_t kaldi::QuantizedMatrix<short>::QuantizedMatrix<signed char>(uint64_t a1, int *a2)
{
  kaldi::QuantizedMatrix<short>::QuantizedMatrix(a1, *a2, a2[1]);
  kaldi::Matrix<float>::Matrix<signed char>(v5, a2);
  kaldi::QuantizedMatrixBase<short>::CopyFromMat(a1, v5);
  kaldi::Matrix<float>::~Matrix(v5);
  return a1;
}

void sub_AAF04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  kaldi::QuantizedMatrixBase<short>::~QuantizedMatrixBase(v2);
  _Unwind_Resume(a1);
}

uint64_t kaldi::QuantizedMatrixBase<signed char>::~QuantizedMatrixBase(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    BNNSFilterDestroy(v2);
  }

  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    (*(a1 + 24))();
  }

  return a1;
}

uint64_t kaldi::QuantizedMatrixBase<signed char>::AddMatMat(uint64_t a1, kaldi::ContextDependency *a2, kaldi::ContextDependency *a3, uint64_t a4, const char *a5, float a6)
{
  v27 = 0;
  v28 = kaldi::kaldi_memalign_free;
  v30 = 0;
  v29 = 0;
  v31 = 0;
  kaldi::QuantizedMatrixBase<signed char>::PrepareMatMat(a1, a2, &v27, a4, a5);
  v9 = kaldi::ContextDependency::CentralPosition(a3);
  v10 = kaldi::ContextDependency::ContextWidth(a3);
  v11 = 1.0 / (*(a1 + 12) * *&v29);
  if (a6 == 0.0)
  {
    v12 = *(a1 + 40);
    v13 = v27;
    v14 = *(a1 + 4);
    v15 = *a3;
    v16 = fst::StateOrderQueue<int>::Head_(a3);
    BNNSFilterApplyBatch(v12, v9, v13, v14, v15, v16);
    kaldi::MatrixBase<float>::Scale(a3, v11);
  }

  else
  {
    kaldi::Matrix<float>::Matrix(v26, v9, v10, 0, 0);
    v17 = *(a1 + 40);
    v18 = kaldi::ContextDependency::CentralPosition(v26);
    v19 = v27;
    v20 = *(a1 + 4);
    v21 = v26[0];
    v22 = fst::StateOrderQueue<int>::Head_(v26);
    BNNSFilterApplyBatch(v17, v18, v19, v20, v21, v22);
    kaldi::MatrixBase<float>::AddMat(a3, v26, 111, v11, a6, v23, v24);
    kaldi::Matrix<float>::~Matrix(v26);
  }

  result = v27;
  v27 = 0;
  if (result)
  {
    return v28();
  }

  return result;
}

void sub_AB0E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void (*a15)(void))
{
  if (a14)
  {
    a15();
  }

  _Unwind_Resume(exception_object);
}

void kaldi::QuantizedMatrixBase<signed char>::PrepareMatMat(float *a1, kaldi::ContextDependency *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v8 = kaldi::MatrixBase<float>::AbsMax(a2, a2, a3, a4, a5);
  if (v8 == 0.0)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = v8;
  }

  v10 = kaldi::ContextDependency::CentralPosition(a2);
  v11 = kaldi::ContextDependency::ContextWidth(a2);
  v12 = a1[2];
  v13 = 2147500000.0 / (v12 * v11);
  v14 = v12 / v9;
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x20uLL, v11 * v10, 0x100004077774924uLL))
  {
    v16 = 0;
  }

  else
  {
    v16 = memptr;
  }

  memptr = v16;
  v17 = *a3;
  *a3 = v16;
  if (v17)
  {
    (*(a3 + 8))(v17);
    v16 = *a3;
  }

  kaldi::ComputeQuantizedData<signed char>(v16, a2, v15);
  *(a3 + 16) = v15;
  v18 = *a1;
  v19 = *(a1 + 4);
  if (!v19)
  {
    v19 = *(a1 + 2);
  }

  v20 = *(a1 + 1);
  if (*(a3 + 20) != LODWORD(v18) || *(a3 + 24) != v20 || *(a3 + 32) != v19)
  {
    *(a3 + 20) = v18;
    *(a3 + 24) = v20;
    *(a3 + 32) = v19;
  }
}

uint64_t kaldi::QuantizedMatrixBase<signed char>::CopyRowsFromVec(unsigned int *a1, char **a2)
{
  kaldi::Matrix<float>::Matrix(v5, *a1, a1[1], 0, 0);
  kaldi::MatrixBase<float>::CopyRowsFromVec(v5, a2);
  kaldi::QuantizedMatrixBase<signed char>::CopyFromMat(a1, v5);
  return kaldi::Matrix<float>::~Matrix(v5);
}

void sub_AB2BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

void kaldi::QuantizedMatrixBase<signed char>::CopyFromMat(int *a1, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  *(a1 + 1) = *(a2 + 8);
  if (a3 == 111)
  {
    if (*a1 != *a2)
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", &stru_108.segname[2], "num_rows_ == M.NumRows()", a5);
    }

    if (a1[1] != *(a2 + 4))
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", &stru_108.segname[3], "num_cols_ == M.NumCols()", a5);
    }

    v7 = kaldi::QuantizedMatrixBase<signed char>::MutableData(a1);
    if (*(a2 + 32))
    {
      v8 = *(a2 + 32);
    }

    else
    {
      v8 = *(a2 + 16);
    }

    memmove(v7, v8, *a1 * a1[1]);
  }

  else
  {
    v9 = a1[1];
    if (v9 != *a2)
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", &stru_108.segname[6], "num_cols_ == M.NumRows()", a5);
    }

    v10 = *a1;
    if (v10 != *(a2 + 4))
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", &stru_108.segname[7], "num_rows_ == M.NumCols()", a5);
    }

    v11 = kaldi::QuantizedMatrixBase<signed char>::MutableData(a1);
    v12 = *(a2 + 32);
    if (!v12)
    {
      v12 = *(a2 + 16);
    }

    v13 = *a1;
    if (*a1 >= 1)
    {
      v14 = 0;
      LODWORD(v15) = a1[1];
      do
      {
        if (v15 >= 1)
        {
          v16 = 0;
          v17 = v12;
          do
          {
            *(v11 + v16++) = *v17;
            v15 = a1[1];
            v17 += v10;
          }

          while (v16 < v15);
          v13 = *a1;
        }

        ++v14;
        v11 += v9;
        ++v12;
      }

      while (v14 < v13);
    }
  }

  kaldi::QuantizedMatrixBase<signed char>::UpdateFilter(a1);
}

uint64_t kaldi::QuantizedMatrixBase<signed char>::MutableData(uint64_t a1)
{
  if (*(a1 + 32))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "MutableData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", 271);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "Attempt to write into immutable matrix");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return *(a1 + 16);
}

uint64_t kaldi::QuantizedMatrixBase<signed char>::Data(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result)
  {
    return *(a1 + 16);
  }

  return result;
}

void kaldi::QuantizedMatrixBase<signed char>::UpdateFilter(int *a1)
{
  v2 = *(a1 + 5);
  if (v2)
  {
    BNNSFilterDestroy(v2);
    *(a1 + 5) = 0;
  }

  v3 = *(a1 + 4);
  if (v3 || *(a1 + 2))
  {
    v5 = *a1;
    v4 = a1[1];
    *&out_desc.data_bias = 0;
    in_desc.size = v4;
    *&in_desc.data_type = 0x3F80000000020008;
    *&in_desc.data_bias = 0;
    out_desc.size = v5;
    *&out_desc.data_type = 65568;
    if (!v3)
    {
      v3 = *(a1 + 2);
    }

    *&filter_params.flags = 1;
    *&filter_params.alloc_memory = 0u;
    filter_params.n_threads = 1;
    v6.in_size = v4;
    v6.out_size = v5;
    v6.weights.data = v3;
    v6.weights.data_type = BNNSDataTypeInt8;
    v6.weights.data_scale = 1.0;
    *&v6.weights.data_bias = 0;
    v6.weights.data_table = 0;
    v6.bias = *ymmword_21A138;
    memset(&v6.activation, 0, sizeof(v6.activation));
    *(a1 + 5) = BNNSFilterCreateFullyConnectedLayer(&in_desc, &out_desc, &v6, &filter_params);
  }
}

float kaldi::QuantizedMatrixBase<signed char>::Sum(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *a1;
  if (!*a1)
  {
    return 0.0;
  }

  v7 = 0;
  LODWORD(v8) = a1[1];
  v9 = 0.0;
  do
  {
    if (v8)
    {
      v10 = 0;
      do
      {
        v9 = v9 + kaldi::QuantizedMatrixBase<signed char>::operator()(a1, v7, v10++, a4, a5);
        v8 = a1[1];
      }

      while (v10 < v8);
      v5 = *a1;
    }

    ++v7;
  }

  while (v7 < v5);
  return v9;
}

float kaldi::QuantizedMatrixBase<signed char>::operator()(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, const char *a5)
{
  if (*a1 <= a2 || (v5 = *(a1 + 4), v5 <= a3))
  {
    kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.h", &stru_20.initprot + 3, "static_cast<UnsignedMatrixIndexT>(r) < static_cast<UnsignedMatrixIndexT>(num_rows_) && static_cast<UnsignedMatrixIndexT>(c) < static_cast<UnsignedMatrixIndexT>(num_cols_)", a5);
  }

  v6 = *(a1 + 32);
  if (!v6)
  {
    v6 = *(a1 + 16);
  }

  return *(v6 + (v5 * a2) + a3) / *(a1 + 12);
}

float kaldi::QuantizedMatrixBase<signed char>::Row@<S0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 32);
  if (!v5)
  {
    v5 = *(a1 + 16);
  }

  return kaldi::QuantizedSubVector<signed char>::QuantizedSubVector(a3, v5 + *(a1 + 4) * a2, *(a1 + 4), *(a1 + 12));
}

uint64_t kaldi::QuantizedMatrixBase<signed char>::Range@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  LODWORD(v8) = a3;
  LODWORD(v9) = a2;
  result = kaldi::QuantizedMatrix<signed char>::QuantizedMatrix(a6, a3, a5);
  *(a6 + 8) = *(a1 + 8);
  if (v8)
  {
    v13 = 0;
    v8 = v8;
    v9 = v9;
    do
    {
      v14 = kaldi::QuantizedMatrixBase<signed char>::MutableData(a6);
      v15 = *(a1 + 32);
      if (!v15)
      {
        v15 = *(a1 + 16);
      }

      result = memcpy((v14 + v13), (v15 + v9 * *(a1 + 4) + a4), a5);
      ++v9;
      v13 += a5;
      --v8;
    }

    while (v8);
  }

  return result;
}

void kaldi::ComputeQuantizedData<signed char>(uint64_t a1, kaldi::ContextDependency *this, float a3)
{
  v6 = kaldi::ContextDependency::CentralPosition(this);
  v7 = kaldi::ContextDependency::ContextWidth(this);
  if (v6)
  {
    v10 = v7;
    v11 = 0;
    v12 = v6;
    v13 = v7;
    do
    {
      if (v10)
      {
        v14 = 0;
        do
        {
          *(a1 + v14) = llroundf(kaldi::MatrixBase<float>::operator()(this, v11, v14, v8, v9) * a3);
          ++v14;
        }

        while (v13 != v14);
      }

      ++v11;
      a1 += v13;
    }

    while (v11 != v12);
  }
}

uint64_t kaldi::QuantizedMatrixBase<signed char>::QuantizedMatrixBase(uint64_t a1, int a2, int a3)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = kaldi::kaldi_memalign_free;
  kaldi::QuantizedMatrixBase<signed char>::UpdateFilter(a1);
  return a1;
}

void sub_AB8B8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v3)
  {
    (*(v1 + 24))();
  }

  _Unwind_Resume(exception_object);
}

int *kaldi::QuantizedMatrixBase<signed char>::QuantizedMatrixBase(int *a1, int *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = 0;
  v5 = *(a2 + 4);
  *(a1 + 3) = kaldi::kaldi_memalign_free;
  *(a1 + 4) = v5;
  *(a1 + 5) = 0;
  if (*(a2 + 2))
  {
    memptr = 0;
    if (malloc_type_posix_memalign(&memptr, 0x20uLL, v4 * v3, 0x100004077774924uLL))
    {
      v7 = 0;
    }

    else
    {
      v7 = memptr;
    }

    memptr = v7;
    v8 = *(a1 + 2);
    *(a1 + 2) = v7;
    if (v8)
    {
      (*(a1 + 3))(v8);
      v7 = *(a1 + 2);
    }

    memcpy(v7, *(a2 + 2), a1[1] * *a1);
  }

  kaldi::QuantizedMatrixBase<signed char>::UpdateFilter(a1);
  return a1;
}

void sub_AB9B0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v3)
  {
    (*(v1 + 24))();
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::QuantizedMatrixBase<short>::~QuantizedMatrixBase(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    BNNSFilterDestroy(v2);
  }

  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    (*(a1 + 24))();
  }

  return a1;
}

uint64_t kaldi::QuantizedMatrixBase<short>::AddMatMat(uint64_t a1, kaldi::ContextDependency *a2, kaldi::ContextDependency *a3, uint64_t a4, const char *a5, float a6)
{
  v27 = 0;
  v28 = kaldi::kaldi_memalign_free;
  v30 = 0;
  v29 = 0;
  v31 = 0;
  kaldi::QuantizedMatrixBase<short>::PrepareMatMat(a1, a2, &v27, a4, a5);
  v9 = kaldi::ContextDependency::CentralPosition(a3);
  v10 = kaldi::ContextDependency::ContextWidth(a3);
  v11 = 1.0 / (*(a1 + 12) * *&v29);
  if (a6 == 0.0)
  {
    v12 = *(a1 + 40);
    v13 = v27;
    v14 = *(a1 + 4);
    v15 = *a3;
    v16 = fst::StateOrderQueue<int>::Head_(a3);
    BNNSFilterApplyBatch(v12, v9, v13, v14, v15, v16);
    kaldi::MatrixBase<float>::Scale(a3, v11);
  }

  else
  {
    kaldi::Matrix<float>::Matrix(v26, v9, v10, 0, 0);
    v17 = *(a1 + 40);
    v18 = kaldi::ContextDependency::CentralPosition(v26);
    v19 = v27;
    v20 = *(a1 + 4);
    v21 = v26[0];
    v22 = fst::StateOrderQueue<int>::Head_(v26);
    BNNSFilterApplyBatch(v17, v18, v19, v20, v21, v22);
    kaldi::MatrixBase<float>::AddMat(a3, v26, 111, v11, a6, v23, v24);
    kaldi::Matrix<float>::~Matrix(v26);
  }

  result = v27;
  v27 = 0;
  if (result)
  {
    return v28();
  }

  return result;
}

void sub_ABB90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void (*a15)(void))
{
  if (a14)
  {
    a15();
  }

  _Unwind_Resume(exception_object);
}

void kaldi::QuantizedMatrixBase<short>::PrepareMatMat(float *a1, kaldi::ContextDependency *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v8 = kaldi::MatrixBase<float>::AbsMax(a2, a2, a3, a4, a5);
  if (v8 == 0.0)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = v8;
  }

  v10 = kaldi::ContextDependency::CentralPosition(a2);
  v11 = kaldi::ContextDependency::ContextWidth(a2);
  v12 = a1[2];
  v13 = 2147500000.0 / (v12 * v11);
  v14 = v12 / v9;
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x20uLL, 2 * v11 * v10, 0x1000040BDFB0063uLL))
  {
    v16 = 0;
  }

  else
  {
    v16 = memptr;
  }

  memptr = v16;
  v17 = *a3;
  *a3 = v16;
  if (v17)
  {
    (*(a3 + 8))(v17);
    v16 = *a3;
  }

  kaldi::ComputeQuantizedData<short>(v16, a2, v15);
  *(a3 + 16) = v15;
  v18 = *a1;
  v19 = *(a1 + 4);
  if (!v19)
  {
    v19 = *(a1 + 2);
  }

  v20 = *(a1 + 1);
  if (*(a3 + 20) != LODWORD(v18) || *(a3 + 24) != v20 || *(a3 + 32) != v19)
  {
    *(a3 + 20) = v18;
    *(a3 + 24) = v20;
    *(a3 + 32) = v19;
  }
}

uint64_t kaldi::QuantizedMatrixBase<short>::CopyRowsFromVec(unsigned int *a1, char **a2)
{
  kaldi::Matrix<float>::Matrix(v5, *a1, a1[1], 0, 0);
  kaldi::MatrixBase<float>::CopyRowsFromVec(v5, a2);
  kaldi::QuantizedMatrixBase<short>::CopyFromMat(a1, v5);
  return kaldi::Matrix<float>::~Matrix(v5);
}

void sub_ABD68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

void kaldi::QuantizedMatrixBase<short>::CopyFromMat(int *a1, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  *(a1 + 1) = *(a2 + 8);
  if (a3 == 111)
  {
    if (*a1 != *a2)
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", &stru_108.segname[2], "num_rows_ == M.NumRows()", a5);
    }

    if (a1[1] != *(a2 + 4))
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", &stru_108.segname[3], "num_cols_ == M.NumCols()", a5);
    }

    v7 = kaldi::QuantizedMatrixBase<short>::MutableData(a1);
    if (*(a2 + 32))
    {
      v8 = *(a2 + 32);
    }

    else
    {
      v8 = *(a2 + 16);
    }

    memmove(v7, v8, 2 * *a1 * a1[1]);
  }

  else
  {
    v9 = a1[1];
    if (v9 != *a2)
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", &stru_108.segname[6], "num_cols_ == M.NumRows()", a5);
    }

    v10 = *a1;
    if (v10 != *(a2 + 4))
    {
      kaldi::KaldiAssertFailure_("CopyFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", &stru_108.segname[7], "num_rows_ == M.NumCols()", a5);
    }

    v11 = kaldi::QuantizedMatrixBase<short>::MutableData(a1);
    v12 = *(a2 + 32);
    if (!v12)
    {
      v12 = *(a2 + 16);
    }

    v13 = *a1;
    if (v13 >= 1)
    {
      v14 = 0;
      v15 = a1[1];
      do
      {
        v16 = v15;
        v17 = v12;
        v18 = v11;
        if (v15 >= 1)
        {
          do
          {
            *v18++ = *v17;
            v17 += v10;
            --v16;
          }

          while (v16);
        }

        ++v14;
        v11 += 2 * v9;
        ++v12;
      }

      while (v14 != v13);
    }
  }

  kaldi::QuantizedMatrixBase<short>::UpdateFilter(a1);
}

uint64_t kaldi::QuantizedMatrixBase<short>::MutableData(uint64_t a1)
{
  if (*(a1 + 32))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "MutableData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", 271);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "Attempt to write into immutable matrix");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return *(a1 + 16);
}

void kaldi::QuantizedMatrixBase<short>::UpdateFilter(int *a1)
{
  v2 = *(a1 + 5);
  if (v2)
  {
    BNNSFilterDestroy(v2);
    *(a1 + 5) = 0;
  }

  v3 = *(a1 + 4);
  if (v3 || *(a1 + 2))
  {
    v5 = *a1;
    v4 = a1[1];
    *&out_desc.data_bias = 0;
    in_desc.size = v4;
    *&in_desc.data_type = 0x3F80000000020010;
    *&in_desc.data_bias = 0;
    out_desc.size = v5;
    *&out_desc.data_type = 65568;
    if (!v3)
    {
      v3 = *(a1 + 2);
    }

    *&filter_params.flags = 1;
    *&filter_params.alloc_memory = 0u;
    filter_params.n_threads = 1;
    v6.in_size = v4;
    v6.out_size = v5;
    v6.weights.data = v3;
    v6.weights.data_type = BNNSDataTypeInt16;
    v6.weights.data_scale = 1.0;
    *&v6.weights.data_bias = 0;
    v6.weights.data_table = 0;
    v6.bias = *ymmword_21A138;
    memset(&v6.activation, 0, sizeof(v6.activation));
    *(a1 + 5) = BNNSFilterCreateFullyConnectedLayer(&in_desc, &out_desc, &v6, &filter_params);
  }
}

float kaldi::QuantizedMatrixBase<short>::Sum(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *a1;
  if (!*a1)
  {
    return 0.0;
  }

  v7 = 0;
  LODWORD(v8) = a1[1];
  v9 = 0.0;
  do
  {
    if (v8)
    {
      v10 = 0;
      do
      {
        v9 = v9 + kaldi::QuantizedMatrixBase<short>::operator()(a1, v7, v10++, a4, a5);
        v8 = a1[1];
      }

      while (v10 < v8);
      v5 = *a1;
    }

    ++v7;
  }

  while (v7 < v5);
  return v9;
}

float kaldi::QuantizedMatrixBase<short>::operator()(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, const char *a5)
{
  if (*a1 <= a2 || (v5 = *(a1 + 4), v5 <= a3))
  {
    kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.h", &stru_20.initprot + 3, "static_cast<UnsignedMatrixIndexT>(r) < static_cast<UnsignedMatrixIndexT>(num_rows_) && static_cast<UnsignedMatrixIndexT>(c) < static_cast<UnsignedMatrixIndexT>(num_cols_)", a5);
  }

  v6 = *(a1 + 32);
  if (!v6)
  {
    v6 = *(a1 + 16);
  }

  return *(v6 + 2 * (v5 * a2) + 2 * a3) / *(a1 + 12);
}

float kaldi::QuantizedMatrixBase<short>::Row@<S0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 32);
  if (!v5)
  {
    v5 = *(a1 + 16);
  }

  return kaldi::QuantizedSubVector<signed char>::QuantizedSubVector(a3, v5 + 2 * *(a1 + 4) * a2, *(a1 + 4), *(a1 + 12));
}

uint64_t kaldi::QuantizedMatrixBase<short>::Range@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  LODWORD(v8) = a3;
  LODWORD(v9) = a2;
  result = kaldi::QuantizedMatrix<short>::QuantizedMatrix(a6, a3, a5);
  *(a6 + 8) = *(a1 + 8);
  if (v8)
  {
    v13 = 0;
    v8 = v8;
    v9 = v9;
    v14 = 2 * a5;
    do
    {
      v15 = kaldi::QuantizedMatrixBase<short>::MutableData(a6);
      v16 = *(a1 + 32);
      if (!v16)
      {
        v16 = *(a1 + 16);
      }

      result = memcpy((v15 + v13), (v16 + 2 * v9 * *(a1 + 4) + 2 * a4), v14);
      ++v9;
      v13 += v14;
      --v8;
    }

    while (v8);
  }

  return result;
}

void kaldi::ComputeQuantizedData<short>(uint64_t a1, kaldi::ContextDependency *this, float a3)
{
  v6 = kaldi::ContextDependency::CentralPosition(this);
  v7 = kaldi::ContextDependency::ContextWidth(this);
  if (v6)
  {
    v10 = v7;
    v11 = 0;
    v12 = v6;
    v13 = v7;
    v14 = 2 * v7;
    do
    {
      if (v10)
      {
        v15 = 0;
        do
        {
          *(a1 + 2 * v15) = llroundf(kaldi::MatrixBase<float>::operator()(this, v11, v15, v8, v9) * a3);
          ++v15;
        }

        while (v13 != v15);
      }

      ++v11;
      a1 += v14;
    }

    while (v11 != v12);
  }
}

uint64_t kaldi::QuantizedMatrixBase<short>::QuantizedMatrixBase(uint64_t a1, int a2, int a3)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = kaldi::kaldi_memalign_free;
  kaldi::QuantizedMatrixBase<short>::UpdateFilter(a1);
  return a1;
}

void sub_AC358(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v3)
  {
    (*(v1 + 24))();
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::QuantizedMatrixBase<short>::QuantizedMatrixBase(uint64_t a1, int *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 4) = v4;
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 16) = 0;
  v5 = *(a2 + 4);
  *(a1 + 24) = kaldi::kaldi_memalign_free;
  *(a1 + 32) = v5;
  *(a1 + 40) = 0;
  if (*(a2 + 2))
  {
    memptr = 0;
    if (malloc_type_posix_memalign(&memptr, 0x20uLL, 2 * v4 * v3, 0x1000040BDFB0063uLL))
    {
      v7 = 0;
    }

    else
    {
      v7 = memptr;
    }

    memptr = v7;
    v8 = *(a1 + 16);
    *(a1 + 16) = v7;
    if (v8)
    {
      (*(a1 + 24))(v8);
      v7 = *(a1 + 16);
    }

    memcpy(v7, *(a2 + 2), 2 * *(a1 + 4) * *a1);
  }

  kaldi::QuantizedMatrixBase<short>::UpdateFilter(a1);
  return a1;
}

void sub_AC454(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v3)
  {
    (*(v1 + 24))();
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::QuantizedMatrix<signed char>::QuantizedMatrix(uint64_t a1, int *a2)
{
  v4 = kaldi::QuantizedMatrix<signed char>::QuantizedMatrix(a1, *a2, a2[1]);
  kaldi::QuantizedMatrixBase<signed char>::CopyFromMat(v4, a2, 111, v5, v6);
  return a1;
}

uint64_t kaldi::QuantizedMatrix<signed char>::QuantizedMatrix(uint64_t a1, kaldi::ContextDependency *this)
{
  v4 = kaldi::ContextDependency::CentralPosition(this);
  v5 = kaldi::ContextDependency::ContextWidth(this);
  v6 = kaldi::QuantizedMatrix<signed char>::QuantizedMatrix(a1, v4, v5);
  kaldi::QuantizedMatrixBase<signed char>::CopyFromMat(v6, this);
  return a1;
}

void kaldi::QuantizedMatrix<signed char>::Read(int *a1, void *a2, int a3, uint64_t a4, const char *a5)
{
  kaldi::ReadBasicType<float>(a2, a3, a1 + 3, a4, a5);
  a1[2] = 1123942400;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  kaldi::ReadIntegerVector<signed char>(a2, a3, &v13, a4, a1 + 32, 0, 0);
  if (*(a1 + 4))
  {
    v9 = *(a1 + 2);
    *(a1 + 2) = 0;
    if (v9)
    {
      (*(a1 + 3))();
    }
  }

  else
  {
    if (v14 - v13 != a1[1] * *a1)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(memptr, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", 498);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(memptr, "Quantized matrix improperly serialized", 38);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(memptr);
    }

    memptr[0] = 0;
    if (malloc_type_posix_memalign(memptr, 0x20uLL, v14 - v13, 0x100004077774924uLL))
    {
      v10 = 0;
    }

    else
    {
      v10 = memptr[0];
    }

    memptr[0] = v10;
    v11 = *(a1 + 2);
    *(a1 + 2) = v10;
    if (v11)
    {
      (*(a1 + 3))(v11);
      v10 = *(a1 + 2);
    }

    memcpy(v10, v13, v14 - v13);
  }

  kaldi::QuantizedMatrixBase<signed char>::UpdateFilter(a1);
  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }
}

void sub_AC6BC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 72);
  if (v3)
  {
    *(v1 - 64) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::ReadIntegerVector<signed char>(void *a1, int a2, uint64_t a3, uint64_t a4, const char *a5, void *a6, void *a7)
{
  if (!a3)
  {
    kaldi::KaldiAssertFailure_("ReadIntegerVector", "../subproject/libquasar/libkaldi/src/base/io-funcs-inl.h", &stru_108.segname[2], "v != NULL", a5);
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a2)
  {
    if (std::istream::peek() != 1)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "ReadIntegerVector", "../subproject/libquasar/libkaldi/src/base/io-funcs-inl.h", 291);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "ReadIntegerVector: expected to see type of size ", 48);
      v14 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", saw instead ", 14);
      v15 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ", at file position ", 19);
      std::istream::tellg();
      std::ostream::operator<<();
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
    }

    std::istream::get();
    std::istream::read();
    if ((*(a1 + *(*a1 - 24) + 32) & 5) == 0)
    {
      if (a7)
      {
        *a7 = 0;
      }

      if (a4 && a6)
      {
        std::istream::tellg();
        *a6 = a4 + v17[16];
        std::istream::seekg();
        *(a3 + 8) = *a3;
        std::vector<signed char>::shrink_to_fit(a3);
      }

      else if (*(a3 + 8) != *a3)
      {
        *(a3 + 8) = *a3;
      }

      goto LABEL_24;
    }

LABEL_25:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "ReadIntegerVector", "../subproject/libquasar/libkaldi/src/base/io-funcs-inl.h", 358);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "ReadIntegerVector: read failure at file position ", 49);
    std::istream::tellg();
    std::ostream::operator<<();
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

  std::ws[abi:ne200100]<char,std::char_traits<char>>(a1);
  if (std::istream::peek() != 91)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "ReadIntegerVector", "../subproject/libquasar/libkaldi/src/base/io-funcs-inl.h", 329);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "ReadIntegerVector: expected to see [, saw ", 42);
    std::istream::peek();
    v16 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ", at file position ", 19);
    std::istream::tellg();
    std::ostream::operator<<();
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

  std::istream::get();
  std::ws[abi:ne200100]<char,std::char_traits<char>>(a1);
  v12 = std::istream::peek();
  if (v12 == 93)
  {
    std::istream::get();
    std::vector<signed char>::__assign_with_size[abi:ne200100]<signed char *,signed char *>(a3, 0, 0, 0);
    if (a7)
    {
      *a7 = *(a3 + 8) - *a3;
    }
  }

  else
  {
    LOWORD(v17[0]) = 0;
    v13 = std::istream::operator>>();
    std::ws[abi:ne200100]<char,std::char_traits<char>>(v13);
    if ((*(a1 + *(*a1 - 24) + 32) & 5) == 0)
    {
      operator new();
    }
  }

  if (v12 != 93)
  {
    goto LABEL_25;
  }

LABEL_24:
  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    goto LABEL_25;
  }
}

void sub_ACC0C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}