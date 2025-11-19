void sub_1C2FC6E94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
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

uint64_t kaldi::Matrix<float>::Init(uint64_t result, int a2, int a3, int a4, const char *a5)
{
  v7 = result;
  if (a3 * a2)
  {
    if (a2 < 1 || a3 <= 0)
    {
      kaldi::KaldiAssertFailure_("Init", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x2D7, "rows > 0 && cols > 0", a5);
    }

    memptr = 0;
    v8 = -a3 & 3;
    if (a4)
    {
      v8 = 0;
    }

    v9 = v8 + a3;
    result = malloc_type_posix_memalign(&memptr, 0x10uLL, 4 * a2 * (v8 + a3), 0x77C5AFA7uLL);
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
      __cxa_throw(v12, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
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
      kaldi::KaldiAssertFailure_("Init", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x2CE, "rows == 0 && cols == 0", a5);
    }

    *(result + 32) = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = 0;
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

uint64_t kaldi::MatrixBase<float>::AddMatMat<signed char>(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4, const char *a5, float a6, float a7)
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
      kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xE4, "transA == kNoTrans", a5);
    }

    if (a5 != 112)
    {
      kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xE5, "transB == kTrans", a5);
    }

    if (*(a2 + 8) != a4[1])
    {
      kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xE6, "A.num_cols_ == B.num_cols_", a5);
    }

    v17 = *(a2 + 12);
    if (v17 != *(result + 12))
    {
      kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xE7, "A.num_rows_ == num_rows_", a5);
    }

    if (*a4 != *(result + 8))
    {
      kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xE8, "B.num_rows_ == num_cols_", a5);
    }

    if (a6 != 1.0)
    {
      kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xEA, "alpha == 1.0", a5);
    }

    if (a2 == result)
    {
      kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xEB, "&A != this", a5);
    }

    if (v17)
    {

      return kaldi::QuantizedMatrixBase<signed char>::AddMatMat(a4, a2, result, a4, a5, a7);
    }
  }

  return result;
}

uint64_t kaldi::ComputeQuantizedData<signed char>(uint64_t a1, uint64_t a2, float a3)
{
  v6 = kaldi::MatrixBase<float>::NumRows(a2);
  result = kaldi::MatrixBase<float>::NumCols(a2);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (result)
      {
        v9 = 0;
        v10 = 0;
        do
        {
          *(a1 + v10++) = llroundf(*(*a2 + 4 * *(a2 + 16) * i + (v9 >> 30)) * a3);
          v9 += 0x100000000;
        }

        while (result != v10);
      }

      a1 += result;
    }
  }

  return result;
}

uint64_t *kaldi::CuMatrixBase<float>::AddVecToRows(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, float a6, float a7)
{
  if (*(a2 + 16) != *(a1 + 16))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v14, "AddVecToRows", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 1063);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Non matching dimensions: Cols:", 30);
    v12 = MEMORY[0x1C692A960](v11, *(a1 + 16));
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " VectorDim:", 11);
    MEMORY[0x1C692A960](v13, *(a2 + 16));
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
  }

  if (a7 != 1.0)
  {
    kaldi::MatrixBase<float>::Scale(a1 + 8, a7);
  }

  return kaldi::MatrixBase<float>::AddVecToRows<float>((a1 + 8), (a2 + 8), a6, a3, a4, a5);
}

uint64_t *kaldi::MatrixBase<float>::AddVecToRows<float>(uint64_t *result, uint64_t *a2, float a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v6 = *(result + 2);
  if (*(a2 + 2) != v6)
  {
    kaldi::KaldiAssertFailure_("AddVecToRows", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xCEE, "v.Dim() == num_cols", a6);
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

uint64_t kaldi::nnet1::ScaledDotAttention::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a2 + 16) != *(a1 + *(*a1 - 40) + 8))
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 0x2F, "in.NumCols() == InputDim()", a5);
  }

  result = (*(*a1 + 96))();
  if (*(a1 + 136))
  {
    kaldi::CuMatrix<float>::CuMatrix(v12, a3, 111);
    (*(**(a1 + 136) + 112))(*(a1 + 136), v12, a3, a4);
    result = kaldi::CuMatrix<float>::~CuMatrix(v12);
  }

  if (*(a1 + 104) == 1)
  {
    return kaldi::CuMatrixBase<float>::AddMat(a3, a2, 111, v10, v11, 1.0, 1.0);
  }

  return result;
}

uint64_t kaldi::nnet1::MultiHeadAttention::ComputeAttention(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a1 + 112) + 12);
  if (v5 != *(a1 + 24))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v26, "ComputeAttention", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 260);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v26, "SetKeyValueStores needs to be called in ScaledDotAttention for attention to work");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v26);
  }

  kaldi::CuMatrix<float>::CuMatrix(v26, *(a2 + 20), v5, 0, 0, 0);
  (*(**(a1 + 112) + 112))(*(a1 + 112), a2, v26, a4);
  v9 = *(a1 + 144);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = *(a2 + 16) / v9;
    do
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v23, v26, 0, v27, v10, v12);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v20, a1 + 8, 0, *(a1 + 28), v10, v12);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v17, a1 + 56, 0, *(a1 + 76), v10, v12);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v14, a3, 0, *(a3 + 20), v10, v12);
      kaldi::nnet1::ScaledDotAttention::ComputeScaledDotAttention(a1, &v23, &v20, &v17, &v14, 0);
      v14 = &unk_1F42BFE90;
      v15 = 0u;
      v16 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v14);
      v17 = &unk_1F42BFE90;
      v18 = 0u;
      v19 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v17);
      v20 = &unk_1F42BFE90;
      v21 = 0u;
      v22 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v20);
      v23 = &unk_1F42BFE90;
      v24 = 0u;
      v25 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v23);
      ++v11;
      v10 = (v10 + v12);
    }

    while (v11 < *(a1 + 144));
  }

  return kaldi::CuMatrix<float>::~CuMatrix(v26);
}

uint64_t kaldi::CuMatrixBase<float>::AddMatMat(uint64_t result, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  v6 = *(a4 + 16);
  v5 = *(a4 + 20);
  if (a5 == 112)
  {
    v7 = *(a4 + 20);
  }

  else
  {
    v7 = *(a4 + 16);
  }

  if (a5 == 112)
  {
    v5 = *(a4 + 16);
  }

  v9 = *(a2 + 16);
  v8 = *(a2 + 20);
  if (a3 == 112)
  {
    v10 = *(a2 + 20);
  }

  else
  {
    v10 = *(a2 + 16);
  }

  if (v7 != *(result + 16))
  {
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x448, "m == NumCols()", a5);
  }

  if (a3 == 112)
  {
    v8 = *(a2 + 16);
  }

  if (v8 != *(result + 20))
  {
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x449, "n == NumRows()", a5);
  }

  if (v5 != v10)
  {
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x44A, "k == k1", a5);
  }

  if (v7)
  {
    v11 = result + 8;
    v12 = (a2 + 8);
    v13 = (a4 + 8);

    return kaldi::MatrixBase<float>::AddMatMat(v11, v12, a3, v13, a5);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::AddMatMat(uint64_t result, uint64_t *a2, int a3, uint64_t *a4, const char *a5)
{
  if (a3 == 111 && a5 == 111)
  {
    if (*(a2 + 2) == *(a4 + 3))
    {
      v5 = *(a2 + 3);
      if (v5 == *(result + 12))
      {
        v6 = *(a4 + 2);
        goto LABEL_6;
      }
    }

LABEL_30:
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xB8, "(transA == kNoTrans && transB == kNoTrans && A.num_cols_ == B.num_rows_ && A.num_rows_ == num_rows_ && B.num_cols_ == num_cols_) || (transA == kTrans && transB == kNoTrans && A.num_rows_ == B.num_rows_ && A.num_cols_ == num_rows_ && B.num_cols_ == num_cols_) || (transA == kNoTrans && transB == kTrans && A.num_cols_ == B.num_cols_ && A.num_rows_ == num_rows_ && B.num_rows_ == num_cols_) || (transA == kTrans && transB == kTrans && A.num_rows_ == B.num_cols_ && A.num_cols_ == num_rows_ && B.num_rows_ == num_cols_)", a5);
  }

  if (a3 == 112 && a5 == 111)
  {
    if (*(a2 + 3) != *(a4 + 3))
    {
      goto LABEL_30;
    }

    v8 = *(a2 + 2);
    if (v8 != *(result + 12))
    {
      goto LABEL_30;
    }

    v9 = *(a4 + 2);
LABEL_23:
    if (v9 == *(result + 8))
    {
      v7 = v8;
      goto LABEL_25;
    }

    goto LABEL_30;
  }

  if (a3 != 111 || a5 != 112)
  {
    if (a5 != 112)
    {
      goto LABEL_30;
    }

    if (a3 != 112)
    {
      goto LABEL_30;
    }

    if (*(a2 + 3) != *(a4 + 2))
    {
      goto LABEL_30;
    }

    v8 = *(a2 + 2);
    if (v8 != *(result + 12))
    {
      goto LABEL_30;
    }

    v9 = *(a4 + 3);
    goto LABEL_23;
  }

  if (*(a2 + 2) != *(a4 + 2))
  {
    goto LABEL_30;
  }

  v5 = *(a2 + 3);
  if (v5 != *(result + 12))
  {
    goto LABEL_30;
  }

  v6 = *(a4 + 3);
LABEL_6:
  if (v6 != *(result + 8))
  {
    goto LABEL_30;
  }

  v7 = v5;
LABEL_25:
  if (a2 == result || a4 == result)
  {
    kaldi::KaldiAssertFailure_("AddMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xB9, "&A != this && &B != this", a5);
  }

  if (v7)
  {
    v10 = *a2;
    v11 = *(a2 + 4);
    v14 = *result;
    v15 = *(result + 16);
    v12 = *a4;
    v13 = *(a4 + 4);
    return cblas_sgemm_NEWLAPACK_ILP64();
  }

  return result;
}

uint64_t kaldi::nnet1::RectifiedLinearComponent::PropagateFnc(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, const char *a5)
{
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, a2, 111, a4, a5);

  return kaldi::CuMatrixBase<float>::ApplyFloor(a3, 0.0);
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

void kaldi::CuVector<float>::Resize(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, const char *a5)
{
  if (a3 >= 2)
  {
    if (a3 != 3)
    {
      kaldi::KaldiAssertFailure_("Resize", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", 0x351, "t == kSetZero || t == kUndefined || t == kSetZeroIfNewMemory", a5);
    }

    a3 = *(a1 + 16) >= a2;
  }

  if (*(a1 + 20) >= a2)
  {
    *(a1 + 16) = a2;
    if (a2 && !a3 && *(a1 + 8))
    {
      v11 = a1 + 8;

      kaldi::VectorBase<float>::SetZero(v11);
    }
  }

  else
  {
    if (*(a1 + 16))
    {
      v8 = (a1 + 8);
      v7 = *(a1 + 8);
      if (v7)
      {
        free(v7);
      }

      *v8 = 0;
      *(a1 + 16) = 0;
    }

    if (a2)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      kaldi::Vector<float>::Resize(&v12, a2, 0, a4, a5);
      v9 = v12;
      v12 = *(a1 + 8);
      *(a1 + 8) = v9;
      v10 = v13;
      v13 = *(a1 + 16);
      *(a1 + 16) = v10;
      kaldi::Vector<float>::Destroy(&v12);
    }
  }
}

double kaldi::VectorBase<float>::Sum(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 0.0;
  }

  v2 = *a1;
  result = 0.0;
  do
  {
    v4 = *v2++;
    result = result + v4;
    --v1;
  }

  while (v1);
  *&result = result;
  return result;
}

uint64_t *kaldi::CuMatrixBase<float>::AddVecToCols(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, float a6, float a7)
{
  if (*(a2 + 16) != *(a1 + 20))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v14, "AddVecToCols", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 1044);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Non matching dimensions: Rows:", 30);
    v12 = MEMORY[0x1C692A960](v11, *(a1 + 20));
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " VectorDim:", 11);
    MEMORY[0x1C692A960](v13, *(a2 + 16));
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
  }

  if (a7 != 1.0)
  {
    kaldi::MatrixBase<float>::Scale(a1 + 8, a7);
  }

  return kaldi::MatrixBase<float>::AddVecToCols<float>((a1 + 8), (a2 + 8), a6, a3, a4, a5);
}

uint64_t *kaldi::MatrixBase<float>::AddVecToCols<float>(uint64_t *result, uint64_t *a2, float a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v6 = *(result + 3);
  if (*(a2 + 2) != v6)
  {
    kaldi::KaldiAssertFailure_("AddVecToCols", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0xD00, "v.Dim() == num_rows", a6);
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

uint64_t kaldi::CuVector<float>::CuVector(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F42BFF70;
  *(a1 + 24) = *(a2 + 24);
  kaldi::CuVector<float>::Resize(a1, *(a2 + 16), 1u, a4, a5);
  kaldi::CuVectorBase<float>::CopyFromVec(a1, a2, v7, v8, v9);
  return a1;
}

{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F42BFF70;
  *(a1 + 24) = a3;
  kaldi::CuVector<float>::Resize(a1, *(a2 + 8), 1u, a4, a5);
  kaldi::CuVectorBase<float>::CopyFromVec<float>(a1, a2, v7, v8, v9);
  return a1;
}

_DWORD *kaldi::CuVectorBase<float>::CopyFromVec(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a2 + 16);
  if (v6 != result[4])
  {
    kaldi::KaldiAssertFailure_("CopyFromVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", 0x3A0, "src.Dim() == dim_", a5);
  }

  if (v6)
  {
    result = *(result + 1);
    if (result)
    {
      v7 = *(a2 + 8);

      return memcpy(result, v7, 4 * v6);
    }
  }

  return result;
}

float kaldi::CuVectorBase<float>::MulElements(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 16) != *(a2 + 16))
  {
    kaldi::KaldiAssertFailure_("MulElements", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-vector.cc", 0x2C7, "dim_ == v.dim_", a5);
  }

  v6 = a1 + 8;
  v7 = a2 + 8;

  return kaldi::VectorBase<float>::MulElements(v6, v7, a3, a4, a5);
}

float kaldi::VectorBase<float>::MulElements(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 8);
  if (v5 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("MulElements", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x4B1, "dim_ == v.dim_", a5);
  }

  if (v5 >= 1)
  {
    v6 = *a2;
    v7 = *a1;
    do
    {
      v8 = *v6++;
      result = v8 * *v7;
      *v7++ = result;
      --v5;
    }

    while (v5);
  }

  return result;
}

void *kaldi::CuVector<float>::~CuVector(void *a1)
{
  *a1 = &unk_1F42BFF70;
  v3 = a1 + 1;
  v2 = a1[1];
  if (v2)
  {
    free(v2);
  }

  *v3 = 0;
  v3[1] = 0;
  return a1;
}

{
  *a1 = &unk_1F42BFF70;
  v3 = a1 + 1;
  v2 = a1[1];
  if (v2)
  {
    free(v2);
  }

  *v3 = 0;
  v3[1] = 0;
  return a1;
}

uint64_t kaldi::MatrixBase<float>::MulRowsVec(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a2 + 2);
  if (v5 != *(result + 12))
  {
    kaldi::KaldiAssertFailure_("MulRowsVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x4D0, "scale.Dim() == num_rows_", a5);
  }

  if (v5 >= 1)
  {
    v6 = 0;
    v7 = *(result + 8);
    v8 = *a2;
    do
    {
      if (v7 >= 1)
      {
        v9 = *(v8 + 4 * v6);
        v10 = (*result + 4 * *(result + 16) * v6);
        v11 = v7;
        do
        {
          *v10 = v9 * *v10;
          ++v10;
          --v11;
        }

        while (v11);
      }

      ++v6;
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::MulColsVec(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a2 + 2);
  if (v5 != *(result + 8))
  {
    kaldi::KaldiAssertFailure_("MulColsVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x507, "scale.Dim() == num_cols_", a5);
  }

  v6 = *(result + 12);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *a2;
    do
    {
      if (v5 >= 1)
      {
        v9 = 0;
        v10 = *result + 4 * *(result + 16) * v7;
        do
        {
          *(v10 + 4 * v9) = *(v8 + 4 * v9) * *(v10 + 4 * v9);
          ++v9;
        }

        while (v5 != v9);
      }

      ++v7;
    }

    while (v7 != v6);
  }

  return result;
}

float kaldi::VectorBase<float>::ApplySoftMax(uint64_t a1, double a2)
{
  kaldi::VectorBase<float>::Max(a1, a2);
  v4 = v3;
  v5 = *(a1 + 8);
  v6 = *a1;
  if (v5 >= 1)
  {
    v7 = *a1;
    v8 = *(a1 + 8);
    do
    {
      *v7 = *v7 - v3;
      ++v7;
      --v8;
    }

    while (v8);
  }

  LODWORD(v14[0]) = v5;
  vvexpf(v6, v6, v14);
  v9 = *(a1 + 8);
  if (v9 < 1)
  {
    goto LABEL_9;
  }

  v10 = 0;
  v11 = 0.0;
  do
  {
    v11 = v11 + *(*a1 + v10);
    v10 += 4;
  }

  while (4 * v9 != v10);
  v12 = v11;
  if (v12 == 0.0)
  {
LABEL_9:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v14, "ApplySoftMax", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 1041);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v14, "SoftMax produced NaN on vector");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
  }

  cblas_sscal_NEWLAPACK_ILP64();
  return v4 + logf(v12);
}

uint64_t *kaldi::VectorBase<float>::Max(uint64_t *result, double a2)
{
  v2 = *(result + 2);
  if (!v2)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v9, "Max", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 652);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "Empty vector");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
  }

  v3 = *result;
  if (v2 >= 4)
  {
    LODWORD(v4) = v2 & 0x7FFFFFFC;
    LODWORD(a2) = -8388608;
    v5 = 4;
    v6 = *result;
    do
    {
      v7 = *v6;
      if (vmaxv_u16(vmovn_s32(vcgtq_f32(*v6, vdupq_lane_s32(*&a2, 0)))))
      {
        LODWORD(v8) = HIDWORD(*v6);
        if (v7.f32[0] > v7.f32[1])
        {
          LODWORD(v8) = *v6;
        }

        v7.i32[0] = HIDWORD(*v6);
        if (v7.f32[2] > v7.f32[3])
        {
          v7.i32[0] = DWORD2(*(v6 + 8));
        }

        if (v8 > *&a2)
        {
          *&a2 = v8;
        }

        if (v7.f32[0] > *&a2)
        {
          *&a2 = v7.f32[0];
        }
      }

      v5 += 4;
      v6 += 16;
    }

    while (v5 <= v2);
  }

  else
  {
    LODWORD(v4) = 0;
    LODWORD(a2) = -8388608;
  }

  if (v4 < v2)
  {
    v4 = v4;
    do
    {
      if (*(v3 + 4 * v4) > *&a2)
      {
        LODWORD(a2) = *(v3 + 4 * v4);
      }

      ++v4;
    }

    while (v2 > v4);
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuMatrix<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<kaldi::CuMatrix<float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuMatrix<float>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void *std::vector<kaldi::CuMatrix<float>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<kaldi::CuMatrix<float>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
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

float kaldi::MatrixBase<float>::AbsMax(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 12) < 1 || *(a1 + 8) <= 0)
  {
    kaldi::KaldiAssertFailure_("AbsMax", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x778, "num_rows_ > 0 && num_cols_ > 0", a5);
  }

  v6 = 0;
  v7 = *a1;
  v8 = **a1;
  v9 = *(a1 + 16);
  do
  {
    v10 = MEMORY[0x1C692B1D0](*(a1 + 8), &v7[v9 * v6], 1);
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

uint64_t kaldi::nnet1::ScaledDotAttention::ComputeScaledDotAttention(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  kaldi::CuMatrix<float>::CuMatrix(v19, *(a2 + 20), *(a3 + 20), 0, 0, 0);
  kaldi::CuMatrixBase<float>::AddMatMat(v19, a2, 111, a3, 0x70);
  v15 = *(a1 + 108);
  if (v15 != 1.0)
  {
    kaldi::CuMatrixBase<float>::Scale(v19, v15);
  }

  kaldi::CuMatrixBase<float>::ApplySoftMaxPerRow(v19, v19, v12, v13, v14);
  if (a6)
  {
    kaldi::CuMatrixBase<float>::AddMat(a6, v19, 111, v16, v17, 1.0, 0.0);
  }

  kaldi::CuMatrixBase<float>::AddMatMat(a5, v19, 111, a4, 0x6F);
  return kaldi::CuMatrix<float>::~CuMatrix(v19);
}

uint64_t kaldi::CuMatrix<float>::CuMatrix(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = &unk_1F42BFED8;
  *(a1 + 40) = 0;
  *(a1 + 32) = *(a2 + 32);
  if (a3 == 111)
  {
    v7 = *(a2 + 16);
    v6 = *(a2 + 20);
  }

  else
  {
    v6 = *(a2 + 16);
    v7 = *(a2 + 20);
  }

  kaldi::CuMatrix<float>::Resize(a1, v6, v7, 1u, 0);
  if (*(a2 + 20))
  {
    kaldi::MatrixBase<float>::CopyFromMat<float>((a1 + 8), a2 + 8, a3, v8, v9);
  }

  return a1;
}

{
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = &unk_1F42BFED8;
  *(a1 + 40) = 0;
  *(a1 + 32) = *(a2 + 32);
  if (a3 == 111)
  {
    v7 = *(a2 + 16);
    v6 = *(a2 + 20);
    v8 = *(a2 + 24) == v7;
  }

  else
  {
    v6 = *(a2 + 16);
    v7 = *(a2 + 20);
    v8 = 0;
  }

  kaldi::CuMatrix<float>::Resize(a1, v6, v7, 1u, v8);
  if (*(a2 + 20))
  {
    kaldi::MatrixBase<float>::CopyFromMat<float>((a1 + 8), a2 + 8, a3, v9, v10);
  }

  return a1;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void *kaldi::VectorBase<float>::CopyFromVec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 8);
  if (v6 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("CopyFromVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x115, "Dim() == v.Dim()", a5);
  }

  result = *a1;
  v8 = *a2;
  if (result != v8)
  {

    return memcpy(result, v8, 4 * v6);
  }

  return result;
}

uint64_t std::vector<std::vector<float>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<float>>::__emplace_back_slow_path<std::vector<float> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<int>>::__construct_one_at_end[abi:ne200100]<std::vector<int> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<std::vector<float>>::__emplace_back_slow_path<std::vector<float> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 2);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<int>>::~__split_buffer(&v14);
  return v8;
}

void sub_1C2FC8C88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<int>>::__construct_one_at_end[abi:ne200100]<std::vector<int> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v3, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

void std::vector<PhoneFeature>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        if (*(v4 - 73) < 0)
        {
          operator delete(*(v4 - 12));
        }

        if (*(v4 - 97) < 0)
        {
          operator delete(*(v4 - 15));
        }

        v6 = v4 - 27;
        v7 = v4 - 18;
        std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](&v7);
        if (*(v4 - 193) < 0)
        {
          operator delete(*v6);
        }

        v4 -= 27;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<WordFeature>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
        }

        if (*(v4 - 25) < 0)
        {
          operator delete(*(v4 - 6));
        }

        if (*(v4 - 49) < 0)
        {
          operator delete(*(v4 - 9));
        }

        if (*(v4 - 73) < 0)
        {
          operator delete(*(v4 - 12));
        }

        if (*(v4 - 97) < 0)
        {
          operator delete(*(v4 - 15));
        }

        v4 -= 17;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void InferenceEngine::DataTensor::build_from_3d_array<float>(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  __p[0] = (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  v4 = v2;
  v3 = *v2;
  __p[1] = (0xAAAAAAAAAAAAAAABLL * (v4[1] - v3));
  __p[2] = ((v3[1] - *v3) >> 2);
  memset(v5, 0, sizeof(v5));
  std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(v5, __p, &v7, 3uLL);
  InferenceEngine::DataUtils::get_type_string<float>(__p);
  std::allocate_shared[abi:ne200100]<InferenceEngine::DataTensor,std::allocator<InferenceEngine::DataTensor>,std::string const&,std::string,std::vector<unsigned long> &,0>();
}

void sub_1C2FC8FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  v20 = *(v18 + 8);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::VectorOps::flatten_3d_to_1d<float>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  memset(v8, 0, sizeof(v8));
  v3 = *a1;
  if (a1[1] != *a1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      InferenceEngine::VectorOps::flatten_2d_to_1d<float>((v3 + v5), __p);
      std::vector<std::vector<float>>::push_back[abi:ne200100](v8, __p);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      ++v6;
      v3 = *a1;
      v5 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) > v6);
  }

  InferenceEngine::VectorOps::flatten_2d_to_1d<float>(v8, a2);
  __p[0] = v8;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1C2FC90D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, uint64_t a11, char a12)
{
  __p = &a12;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

char ***InferenceEngine::VectorOps::concatenate_vectors_2d<float>@<X0>(char ***result@<X0>, uint64_t **a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v5 = result;
  if (a3 == 1)
  {
    v10 = *result;
    v11 = result[1];
    if (v11 - *result != a2[1] - *a2)
    {
      InferenceEngine::VectorOps::concatenate_vectors_2d<float>();
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    if (v11 != v10)
    {
      v12 = 0;
      v13 = 0;
      do
      {
        std::vector<std::vector<float>>::push_back[abi:ne200100](a4, &v10[v12]);
        result = std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(*a4 + v12 * 8, *(*a4 + v12 * 8 + 8), (*a2)[v12], (*a2)[v12 + 1], ((*a2)[v12 + 1] - (*a2)[v12]) >> 2);
        ++v13;
        v10 = *v5;
        v12 += 3;
      }

      while (0xAAAAAAAAAAAAAAABLL * (v5[1] - *v5) > v13);
    }
  }

  else
  {
    if (a3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      InferenceEngine::StringFormatter::StringFormatter(&v15, "dimension can only be 0 or 1 for concatenate_vectors_2d");
      MEMORY[0x1C692A510](exception, &v15);
      __cxa_throw(exception, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
    }

    v7 = *result;
    v8 = *a2;
    if ((*result)[1] - **result != (*a2)[1] - **a2)
    {
      InferenceEngine::VectorOps::concatenate_vectors_2d<float>();
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    if (a4 == result)
    {
      v9 = 0;
    }

    else
    {
      std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(a4, v7, result[1], 0xAAAAAAAAAAAAAAABLL * (result[1] - v7));
      v9 = a4[1];
      v8 = *a2;
    }

    return std::vector<std::vector<float>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::vector<float>*>,std::__wrap_iter<std::vector<float>*>>(a4, v9, v8, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - v8) >> 3));
  }

  return result;
}

void sub_1C2FC92CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void Agglomerate::ItemHolder<std::shared_ptr<FrontendFeature>>::~ItemHolder(void *a1)
{
  *a1 = &unk_1F42F3150;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1C692AE10);
}

void std::vector<Prompt>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 72;
        std::allocator<Prompt>::destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void Agglomerate::set<std::shared_ptr<AudioSegmentation>>(uint64_t a1, uint64_t *a2)
{
  if (!v3)
  {
    operator new();
  }

  v4 = *a2;
  v5 = a2[1];
  v7 = *a2;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = v7;
  }

  v6 = *(v3 + 16);
  *(v3 + 8) = v4;
  *(v3 + 16) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void WaveformRateChangeModule::process_data(uint64_t a1, uint64_t *a2)
{
  v6 = *(*v4 + 8);
  v5 = *(*v4 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*v6 == 1)
  {
    *(v6 + 13) = 0;
    (*(**(a1 + 272) + 24))(*(a1 + 272));
  }

  v7 = *a2;
  v8 = *(*a2 + 8);
  {
    __p[0] = 0;
    __p[1] = 0;
    v30 = 0;
    std::vector<RateMarker>::__init_with_size[abi:ne200100]<RateMarker*,RateMarker*>(__p, *v9, v9[1], (v9[1] - *v9) >> 3);
    (*(**(a1 + 272) + 16))(*(a1 + 272), __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    goto LABEL_43;
  }

  {
    v12 = *(*v10 + 8);
    v11 = *(*v10 + 16);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SharedObjectPool::get_if<TTSSynthesizer::VoiceDescription>(&v27, *(a1 + 168));
    if (v27)
    {
      v13 = *v12;
      if (*(v27 + 84) == 3 && 0x84BDA12F684BDA13 * ((v12[1] - v13) >> 3) >= 2)
      {
        v14 = v13[36];
        v15 = v13[37];
        if (v14 != v15)
        {
          v16 = 1.0;
          do
          {
            if (*v14 == 1)
            {
              v16 = 1.0;
            }

            else if (*v14 == 5)
            {
              v16 = v14[1] / 100.0;
            }

            v14 += 14;
          }

          while (v14 != v15);
LABEL_36:
          if (v16 > 0.0 && v16 != 1.0)
          {
            __p[0] = 0;
            __p[1] = 0;
            v30 = 0;
            operator new();
          }

          goto LABEL_39;
        }

        goto LABEL_39;
      }
    }

    else
    {
      v13 = *v12;
    }

    if (v12[1] != v13)
    {
      v19 = v13[9];
      v20 = v13[10];
      if (v19 != v20)
      {
        v16 = 1.0;
        do
        {
          if (*v19 == 1)
          {
            v16 = 1.0;
          }

          else if (*v19 == 5)
          {
            v16 = v19[1] / 100.0;
          }

          v19 += 14;
        }

        while (v19 != v20);
        goto LABEL_36;
      }
    }

LABEL_39:
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    goto LABEL_43;
  }

  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v17 = Diagnostics_GetLogObject(void)::__profile_log_default;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&dword_1C2F95000, v17, OS_LOG_TYPE_DEBUG, "No local rate change markers detected.", __p, 2u);
  }

  Diagnostics::log(7, "No local rate change markers detected.", v18);
LABEL_43:
  v21 = *v6;
  v22 = v6[1];
  (*(**(a1 + 272) + 32))(__p);
  v23 = *(v6 + 7);
  if (v23)
  {
    *(v6 + 8) = v23;
    operator delete(v23);
    *(v6 + 7) = 0;
    *(v6 + 8) = 0;
    *(v6 + 9) = 0;
  }

  *(v6 + 56) = *__p;
  *(v6 + 9) = v30;
  v24 = a2[1];
  v25 = *a2;
  v26 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 72))(a1, &v25);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1C2FC99D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(exception_object);
}

void WaveformRateChangerImpl::change_rate(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, int a4@<W3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = a2;
  v192 = *MEMORY[0x1E69E9840];
  if (*(a1 + 116) == 1.0 && (*(a1 + 112) & 1) == 0)
  {
    v12 = *a2;
LABEL_27:
    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
    v27 = v9[1];
    v28 = *MEMORY[0x1E69E9840];

    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a6, v12, v27, (v27 - v12) >> 2);
    return;
  }

  v12 = *a2;
  if (*(a1 + 113) != 1 || v9[1] == v12)
  {
    goto LABEL_27;
  }

  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  std::vector<float>::vector[abi:ne200100](&__dst, *(a1 + 136));
  if (!a3)
  {
    goto LABEL_23;
  }

  v13 = *(a1 + 8);
  if (*(a1 + 16) != v13)
  {
    v14 = *(v13 + 4);
    v15 = (LODWORD(v14) & 0x7FFFFFFFu) - 1 < 0x7FFFFF;
    v16 = ((LODWORD(v14) & 0x7FFFFFFFu) - 0x800000) >> 24 < 0x7F;
    if (v14 >= 0.0)
    {
      v16 = 0;
      v15 = 0;
    }

    if ((LODWORD(v14) & 0x7FFFFFFF) == 0)
    {
      v15 = 1;
    }

    v17 = (LODWORD(v14) & 0x7FFFFFFF) == 0x7F800000 || v15;
    if ((LODWORD(v14) & 0x7FFFFFFFu) > 0x7F800000)
    {
      v17 = 1;
    }

    if (v17 | v16)
    {
      v14 = 1.0;
    }

    if (v14 > 1.0 && v14 < 4.0)
    {
LABEL_23:
      std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(a6, *(a6 + 8), *(a1 + 80), *(a1 + 88), (*(a1 + 88) - *(a1 + 80)) >> 2);
      *a5 = (((*(a1 + 88) - *(a1 + 80)) >> 2) * 1000.0 / *(a1 + 128));
    }
  }

  v19 = (a1 + 32);
  v20 = -((*(a1 + 40) - *(a1 + 32)) >> 2);
  v21 = *(a1 + 136);
  v22 = v21 - ((*(a1 + 40) - *(a1 + 32)) >> 2);
  v23 = *v9;
  v24 = v9[1];
  v25 = (v24 - *v9) >> 2;
  v165 = v9;
  if (v22 > v25)
  {
    v26 = *(a1 + 104);
    goto LABEL_121;
  }

  do
  {
    v29 = v20;
    if ((v20 & 0x80000000) != 0)
    {
      v34 = fabs(v20);
      if (v34 >= v21)
      {
        if (v21)
        {
          v30 = __dst;
          v33 = 4 * v21;
          v23 = (*(a1 + 40) + 4 * v20);
          goto LABEL_43;
        }
      }

      else
      {
        v35 = __dst;
        v36 = *(a1 + 40);
        if (v34 >= ((v36 - *(a1 + 32)) >> 2))
        {
          v37 = (v36 - *(a1 + 32)) >> 2;
        }

        else
        {
          v37 = v34;
        }

        v38 = 4 * v37;
        if (v37)
        {
          memmove(__dst, (v36 - v38), 4 * v37);
          v23 = *v9;
          v35 = __dst;
        }

        if (v21 - v37 >= 1)
        {
          v33 = 4 * ((v21 - v37) & ~((v21 - v37) >> 31));
          v30 = &v35[v38];
          goto LABEL_43;
        }
      }
    }

    else
    {
      v30 = __dst;
      v31 = 4 * v22;
      if (v31 != 4 * v20)
      {
        v32 = 4 * v20;
        v33 = v31 - v32;
        v23 += v32;
LABEL_43:
        memmove(v30, v23, v33);
      }
    }

    v40 = *a6;
    v39 = *(a6 + 8);
    v41 = (v39 - *a6) >> 2;
    v42 = *(a1 + 136) / 4;
    v43 = *(a1 + 152);
    if (v42 - v43 / 2 <= v41 && v43 <= ((v167 - __dst) >> 3))
    {
      LODWORD(__A[0]) = 0;
      std::vector<float>::vector[abi:ne200100](buf, 2 * v43 - 1);
      __C = 0.0;
      __I = 0;
      v45 = 3 * *(a1 + 152) - 2;
      LODWORD(__F) = 0;
      std::vector<float>::vector[abi:ne200100](__A, v45);
      v46 = v43 + (v43 >> 31);
      v47 = *(a1 + 152);
      if (v47)
      {
        v48 = *a6 + 4 * (v41 - ((v46 >> 1) + v42));
        v49 = v48 + 4 * v47;
        v50 = &__A[0][v47];
        do
        {
          v51 = *(v49 - 4);
          v49 -= 4;
          *v50++ = v51;
        }

        while (v49 != v48);
      }

      std::vector<float>::vector[abi:ne200100](&__F, v47);
      v52 = v42 - (v46 >> 1);
      v53 = 4 * (*(a1 + 152) + v52);
      v54 = __F;
      if (v53 != 4 * v52)
      {
        v55 = __dst + 4 * v52;
        v56 = __dst + v53;
        v57 = __F;
        do
        {
          v58 = *(v56 - 1);
          v56 -= 4;
          *v57++ = v58;
        }

        while (v56 != v55);
      }

      vDSP_conv(__A[0], 1, v54, 1, *buf, 1, (*&buf[8] - *buf) >> 2, v169 - v54);
      vDSP_maxvi(*buf, 1, &__C, &__I, (*&buf[8] - *buf) >> 2);
      if (__C == 0.0)
      {
        v59 = fabsf(**buf);
        if (((*&buf[8] - *buf) >> 2) >= 2)
        {
          v60 = (((*&buf[8] - *buf) >> 2) & 0x7FFFFFFFLL) - 1;
          v61 = (*buf + 4);
          do
          {
            v62 = *v61++;
            v59 = v59 + fabsf(v62);
            --v60;
          }

          while (v60);
        }

        v63 = *(a1 + 152);
        if (v59 == 0.0)
        {
          __I = v63;
        }
      }

      else
      {
        v63 = *(a1 + 152);
      }

      v64 = __I;
      if (__F)
      {
        v169 = __F;
        operator delete(__F);
      }

      if (__A[0])
      {
        __A[1] = __A[0];
        operator delete(__A[0]);
      }

      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      v44 = (v64 - v63);
      v40 = *a6;
      v39 = *(a6 + 8);
    }

    else
    {
      v44 = 0;
    }

    v164 = v44;
    if (v40 == v39)
    {
      v85 = __dst + 4 * (*(a1 + 136) / 2);
      std::vector<float>::__assign_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(a6, v85, v167, (v167 - v85) >> 2);
    }

    else
    {
      v65 = (v39 - v40) >> 2;
      v66 = *(a1 + 136);
      v67 = *(a1 + 152);
      v68 = v65 - (v66 / 4 + v67 / 2);
      v69 = v66 / 4 - v67 / 2 + v44;
      if (v67 >= 1)
      {
        v70 = 0;
        v71 = __dst;
        v72 = (v69 + v29);
        v73 = v40 + 4 * v68;
        v74 = *v9 + 4 * v72;
        do
        {
          if (v70 + v69 < 0)
          {
            v75 = v74;
            if (v72 + v70 < 0)
            {
              v76 = *(a1 + 32);
              v77 = *(a1 + 40) - v76;
              v78 = v72 + v70 + (v77 >> 2);
              if ((v78 & 0x80000000) != 0)
              {
                v79 = *(a1 + 56);
                v80 = v72 + v70 + (v77 >> 2) + ((*(a1 + 64) - v79) >> 2);
                if ((v80 & 0x80000000) != 0)
                {
                  v81 = 0.0;
                  goto LABEL_78;
                }

                v75 = (v79 + 4 * v80);
              }

              else
              {
                v75 = (v76 + 4 * v78);
              }
            }
          }

          else
          {
            v75 = &v71[4 * v70 + 4 * v69];
          }

          v81 = *v75;
LABEL_78:
          *(v73 + 4 * v70) = ((v70 / (v67 - 1)) * v81) + ((1.0 - (v70 / (v67 - 1))) * *(v73 + 4 * v70));
          ++v70;
          v74 += 4;
        }

        while (v67 != v70);
      }

      v82 = v68 + v67;
      v83 = v69 + v67;
      v84 = v66 - (v69 + v67);
      std::vector<float>::resize(a6, v66 - v69 + v68);
      if (v66 != v83)
      {
        memmove((*a6 + 4 * v82), __dst + 4 * v83, 4 * v84);
      }
    }

    v87 = *(a1 + 8);
    v86 = *(a1 + 16);
    if (((v86 - v87) >> 3) < 1)
    {
      v90 = *(a1 + 120);
      v9 = v165;
    }

    else
    {
      v88 = 0;
      v89 = 0;
      v9 = v165;
      do
      {
        if (*(v87 + v88) <= v29 + *(a1 + 136) / 2)
        {
          v90 = *(v87 + v88 + 4);
          v91 = (LODWORD(v90) & 0x7FFFFFFFu) - 1 < 0x7FFFFF;
          v92 = ((LODWORD(v90) & 0x7FFFFFFFu) - 0x800000) >> 24 < 0x7F;
          if (v90 >= 0.0)
          {
            v92 = 0;
            v91 = 0;
          }

          if ((LODWORD(v90) & 0x7FFFFFFF) == 0)
          {
            v91 = 1;
          }

          v93 = (LODWORD(v90) & 0x7FFFFFFF) == 0x7F800000 || v91;
          if ((LODWORD(v90) & 0x7FFFFFFFu) > 0x7F800000)
          {
            v93 = 1;
          }

          if (v93 | v92)
          {
            v90 = 1.0;
          }

          *(a1 + 120) = v90;
        }

        else
        {
          v90 = *(a1 + 120);
        }

        if (*(a1 + 124) != v90)
        {
          if (Diagnostics_GetLogObject(void)::onceToken != -1)
          {
            dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
          }

          v94 = Diagnostics_GetLogObject(void)::__profile_log_default;
          if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v96 = *(a1 + 120);
            v97 = *(a1 + 116);
            *buf = 134218240;
            *&buf[4] = v96;
            *&buf[12] = 2048;
            *&buf[14] = v97;
            _os_log_impl(&dword_1C2F95000, v94, OS_LOG_TYPE_DEFAULT, "WaveformRateChangeModule rate update: local rate = %.2f, global rate: %.2f", buf, 0x16u);
          }

          Diagnostics::log(5, "WaveformRateChangeModule rate update: local rate = %.2f, global rate: %.2f", v95, *(a1 + 120), *(a1 + 116));
          v90 = *(a1 + 120);
          v87 = *(a1 + 8);
          v86 = *(a1 + 16);
        }

        *(a1 + 124) = v90;
        ++v89;
        v88 += 8;
      }

      while (v89 < ((v86 - v87) >> 3));
    }

    v26 = *(a1 + 104);
    v21 = *(a1 + 136);
    v98 = *(a1 + 116);
    v99 = (*(a1 + 108) + ((*(a6 + 8) - *a6) >> 2)) - ((v26 + v29 + v21) / (v98 * v90));
    v100 = v98 * *(a1 + 144);
    v101 = *(a1 + 156);
    v102 = v101 * (v90 * v100);
    if (v99 >= v102)
    {
      v103 = v101 * (v90 * v100);
    }

    else
    {
      v103 = v99;
    }

    if (v102 <= -v99)
    {
      v104 = -v102;
    }

    else
    {
      v104 = v99;
    }

    if (v99 <= 0.0)
    {
      v105 = v104;
    }

    else
    {
      v105 = v103;
    }

    v106 = (v105 + (v100 * v90));
    v20 = (v29 + v106);
    if (!v106)
    {
      if (Diagnostics_GetLogObject(void)::onceToken != -1)
      {
        dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
      }

      v153 = Diagnostics_GetLogObject(void)::__profile_log_default;
      if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C2F95000, v153, OS_LOG_TYPE_FAULT, "WaveformRateChangerImpl::change_rate() enters infinite loop. ", buf, 2u);
        if (Diagnostics_GetLogObject(void)::onceToken != -1)
        {
          dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
        }
      }

      v154 = Diagnostics_GetLogObject(void)::__profile_log_default;
      if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v156 = *(a1 + 116);
        v157 = *(a1 + 120);
        v158 = *(a1 + 156);
        v159 = *(a1 + 144);
        v160 = *(a1 + 136);
        v161 = *(a1 + 152);
        v162 = *(a1 + 104);
        v163 = *(a1 + 108);
        *buf = 134220544;
        *&buf[4] = v156;
        *&buf[12] = 2048;
        *&buf[14] = v157;
        v174 = 2048;
        v175 = v158;
        v176 = 1024;
        v177 = v20;
        v178 = 1024;
        v179 = v29;
        v180 = 1024;
        v181 = v164;
        v182 = 1024;
        v183 = v159;
        v184 = 1024;
        v185 = v160;
        v186 = 1024;
        v187 = v161;
        v188 = 1024;
        v189 = v162;
        v190 = 1024;
        v191 = v163;
        _os_log_impl(&dword_1C2F95000, v154, OS_LOG_TYPE_DEFAULT, "WaveformRateChangerImpl states: global_rate=%.4f, local_rate=%.4f, adaptive_rate_factor=%.4f, sample_ix=%d, last_sample_ix=%d, offset=%d, frame_shift=%d, frame_size=%d, correlation_frame_size=%d, accumulated_input_size=%d, accumulated_output_size=%d", buf, 0x50u);
      }

      Diagnostics::log(5, "WaveformRateChangerImpl states: global_rate=%.4f, local_rate=%.4f, adaptive_rate_factor=%.4f, sample_ix=%d, last_sample_ix=%d, offset=%d, frame_shift=%d, frame_size=%d, correlation_frame_size=%d, accumulated_input_size=%d, accumulated_output_size=%d", v155, *(a1 + 116), *(a1 + 120), *(a1 + 156), v20, v29, v164, *(a1 + 144), *(a1 + 136), *(a1 + 152), *(a1 + 104), *(a1 + 108));
      abort();
    }

    v22 = v21 + v20;
    v23 = *v9;
    v24 = v9[1];
    v25 = (v24 - *v9) >> 2;
  }

  while (v21 + v20 <= v25);
  LODWORD(v20) = v29;
  v19 = (a1 + 32);
LABEL_121:
  v107 = v21 + v20;
  v108 = v26 + v21 + v20;
  *(a1 + 104) = v108;
  if ((a3 & 1) == 0)
  {
    v108 += (*(a1 + 40) - *(a1 + 32)) >> 2;
    *(a1 + 104) = v108;
  }

  v109 = *(a1 + 108) + ((*(a6 + 8) - *a6) >> 2);
  *(a1 + 108) = v109;
  if (a4)
  {
    v110 = v108 + ((v25 - v107) & ~((v25 - v107) >> 31));
    *(a1 + 104) = v110;
    v111 = *v9;
    if (v107 < ((v24 - *v9) >> 2))
    {
      v112 = (v110 / (*(a1 + 116) * *(a1 + 120)));
      do
      {
        if (v109 < v112)
        {
          if (v107 < 0)
          {
            v113 = (*(a1 + 32) + 4 * (v107 + ((*(a1 + 40) - *(a1 + 32)) >> 2)));
          }

          else
          {
            v113 = &v111[4 * v107];
          }

          std::vector<float>::push_back[abi:ne200100](a6, v113);
          v109 = *(a1 + 108) + 1;
          *(a1 + 108) = v109;
          v111 = *v9;
          v24 = v9[1];
        }

        ++v107;
      }

      while (v107 < ((v24 - v111) >> 2));
    }
  }

  else
  {
    *(a1 + 40) = *(a1 + 32);
    v114 = v107 & ~(v107 >> 31);
    v115 = *v9;
    if (v114 < ((v9[1] - *v9) >> 2))
    {
      v116 = 4 * (v107 & ~(v107 >> 31));
      do
      {
        std::vector<float>::push_back[abi:ne200100](v19, &v115[v116]);
        v115 = *v9;
        ++v114;
        v116 += 4;
      }

      while (v114 < ((v9[1] - *v9) >> 2));
      v21 = *(a1 + 136);
      v107 = v21 + v20;
    }

    v117 = (a1 + 56);
    *(a1 + 64) = *(a1 + 56);
    v118 = v107 - *(a1 + 152);
    if (v118 < v107)
    {
      do
      {
        if (v118 < 0 || v118 >= ((v9[1] - *v9) >> 2))
        {
          v120 = *(a1 + 64);
          v119 = *(a1 + 72);
          if (v120 >= v119)
          {
            v122 = *v117;
            v123 = v120 - *v117;
            v124 = v123 >> 2;
            v125 = (v123 >> 2) + 1;
            if (v125 >> 62)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v126 = v119 - v122;
            if (v126 >> 1 > v125)
            {
              v125 = v126 >> 1;
            }

            if (v126 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v127 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v127 = v125;
            }

            if (v127)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1 + 56, v127);
            }

            *(4 * v124) = 0;
            v121 = 4 * v124 + 4;
            memcpy(0, v122, v123);
            v128 = *(a1 + 56);
            *(a1 + 56) = 0;
            *(a1 + 64) = v121;
            *(a1 + 72) = 0;
            if (v128)
            {
              operator delete(v128);
            }

            v9 = v165;
          }

          else
          {
            *v120 = 0;
            v121 = (v120 + 4);
          }

          *(a1 + 64) = v121;
        }

        else
        {
          std::vector<float>::push_back[abi:ne200100]((a1 + 56), (*v9 + 4 * v118));
        }

        ++v118;
        v21 = *(a1 + 136);
      }

      while (v118 < v21 + v20);
    }

    *(a1 + 88) = *(a1 + 80);
    if (v21 > 1)
    {
      v129 = 0;
      v130 = *(a6 + 8);
      do
      {
        if (v130 != *a6)
        {
          std::vector<float>::push_back[abi:ne200100]((a1 + 80), (v130 - 4));
          v130 = *(a6 + 8) - 4;
          *(a6 + 8) = v130;
          --*(a1 + 108);
          v21 = *(a1 + 136);
        }

        ++v129;
      }

      while (v129 < v21 / 2);
      v131 = *(a1 + 80);
      v132 = *(a1 + 88);
      v133 = (v132 - 4);
      if (v131 != v132 && v133 > v131)
      {
        v135 = v131 + 4;
        do
        {
          v136 = *(v135 - 4);
          *(v135 - 4) = *v133;
          *v133-- = v136;
          v137 = v135 >= v133;
          v135 += 4;
        }

        while (!v137);
      }
    }

    v138 = *(a1 + 8);
    v139 = (*(a1 + 16) - v138) >> 3;
    if (v139 < 1)
    {
      v140 = *(a1 + 120);
    }

    else
    {
      v140 = *(v138 + 8 * (v139 - 1) + 4);
      v141 = (LODWORD(v140) & 0x7FFFFFFFu) - 1 < 0x7FFFFF;
      v142 = ((LODWORD(v140) & 0x7FFFFFFFu) - 0x800000) >> 24 < 0x7F;
      if (v140 >= 0.0)
      {
        v142 = 0;
        v141 = 0;
      }

      if ((LODWORD(v140) & 0x7FFFFFFF) == 0)
      {
        v141 = 1;
      }

      v143 = (LODWORD(v140) & 0x7FFFFFFF) == 0x7F800000 || v141;
      if ((LODWORD(v140) & 0x7FFFFFFFu) > 0x7F800000)
      {
        v143 = 1;
      }

      if (v143 | v142)
      {
        v140 = 1.0;
      }

      *(a1 + 120) = v140;
    }

    if (*(a1 + 124) != v140)
    {
      if (Diagnostics_GetLogObject(void)::onceToken != -1)
      {
        dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
      }

      v144 = Diagnostics_GetLogObject(void)::__profile_log_default;
      if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v146 = *(a1 + 120);
        v147 = *(a1 + 116);
        *buf = 134218240;
        *&buf[4] = v146;
        *&buf[12] = 2048;
        *&buf[14] = v147;
        _os_log_impl(&dword_1C2F95000, v144, OS_LOG_TYPE_DEFAULT, "WaveformRateChangeModule rate update: local rate = %.2f, global rate: %.2f", buf, 0x16u);
      }

      Diagnostics::log(5, "WaveformRateChangeModule rate update: local rate = %.2f, global rate: %.2f", v145, *(a1 + 120), *(a1 + 116));
      v140 = *(a1 + 120);
    }

    *(a1 + 124) = v140;
  }

  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v148 = Diagnostics_GetLogObject(void)::__profile_log_default;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v150 = (v9[1] - *v9) >> 2;
    v151 = (*(a6 + 8) - *a6) >> 2;
    *buf = 134218240;
    *&buf[4] = v150;
    *&buf[12] = 2048;
    *&buf[14] = v151;
    _os_log_impl(&dword_1C2F95000, v148, OS_LOG_TYPE_DEFAULT, "WaveformRateChangeModule applied rate modification, input data size: %lu, output data size: %lu", buf, 0x16u);
  }

  Diagnostics::log(5, "WaveformRateChangeModule applied rate modification, input data size: %lu, output data size: %lu", v149, (v9[1] - *v9) >> 2, (*(a6 + 8) - *a6) >> 2);
  if (__dst)
  {
    v167 = __dst;
    operator delete(__dst);
  }

  v152 = *MEMORY[0x1E69E9840];
}

void sub_1C2FCA990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  v37 = *v35;
  if (*v35)
  {
    *(v35 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::VectorBase<float>::Scale(uint64_t *a1)
{
  v1 = *(a1 + 2);
  v2 = *a1;
  return cblas_sscal_NEWLAPACK_ILP64();
}

uint64_t kaldi::Lcm<int>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a1 < 1 || a2 <= 0)
  {
    kaldi::KaldiAssertFailure_("Lcm", "../engine/common/libquasar/libkaldi/src/base/kaldi-math.h", 0x153, "m > 0 && n > 0", a5);
  }

  v6 = a1;
  v7 = kaldi::Gcd<int>(a1, a2);
  return (v6 / v7 * v7 * (a2 / v7));
}

void kaldi::LinearResample::Resample(uint64_t a1, uint64_t a2, uint64_t a3, void **a4, const char *a5)
{
  v6 = a3;
  v9 = *(a2 + 8);
  v10 = (a1 + 72);
  v11 = *(a1 + 72) + v9;
  NumOutputSamples = kaldi::LinearResample::GetNumOutputSamples(a1, v11, a3, a4, a5);
  v15 = *(a1 + 80);
  if (NumOutputSamples < v15)
  {
    kaldi::KaldiAssertFailure_("Resample", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/feat/resample.cc", 0x8B, "tot_output_samp >= output_sample_offset_", v14);
  }

  v16 = NumOutputSamples;
  kaldi::Vector<float>::Resize(a4, (NumOutputSamples - v15), 0, v13, v14);
  v20 = *(a1 + 80);
  if (v20 < v16)
  {
    for (i = *(a1 + 80); i != v16; ++i)
    {
      v22 = *(a1 + 20);
      v23 = i / v22;
      v24 = i % v22;
      v25 = *(a1 + 48) + 24 * v24;
      v26 = *(*(a1 + 24) + 4 * v24) + v23 * *(a1 + 16) - *(a1 + 72);
      v27 = *(v25 + 8);
      if ((v26 & 0x80000000) != 0 || v27 + v26 > v9)
      {
        if (v27 >= 1)
        {
          v28 = *v25;
          v29 = v26;
          v30 = *a2 + 4 * v26;
          v31 = 0.0;
          while (v29 < 0)
          {
            v33 = v29 + *(a1 + 96);
            if (v33 >= 0)
            {
              v32 = (*(a1 + 88) + 4 * v33);
LABEL_13:
              v31 = v31 + (*v28 * *v32);
              goto LABEL_16;
            }

            if (v29 >= v9)
            {
LABEL_15:
              if ((v6 & 1) == 0)
              {
                kaldi::KaldiAssertFailure_("Resample", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/feat/resample.cc", 0xAA, "flush", v19);
              }
            }

LABEL_16:
            v30 += 4;
            ++v29;
            ++v28;
            if (!--v27)
            {
              goto LABEL_21;
            }
          }

          v32 = v30;
          if (v29 >= v9)
          {
            goto LABEL_15;
          }

          goto LABEL_13;
        }

        v31 = 0.0;
      }

      else
      {
        v34 = 0;
        v35 = 0;
        v36 = 0;
        if ((v27 + v26) > *(a2 + 8))
        {
          kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v19);
        }

        v34 = *a2 + 4 * (v26 & 0x7FFFFFFF);
        LODWORD(v35) = v27;
        kaldi::VecVec<float>(&v34, v25, v17, v18, v19);
        v20 = *(a1 + 80);
      }

LABEL_21:
      *(*a4 + i - v20) = v31;
    }
  }

  if (v6)
  {
    *v10 = 0;
    v10[1] = 0;
    kaldi::Vector<float>::Resize((a1 + 88), 0, 0, v18, v19);
  }

  else
  {
    kaldi::LinearResample::SetRemainder(a1, a2, v17, v18, v19);
    *(a1 + 72) = v11;
    *(a1 + 80) = v16;
  }
}

uint64_t kaldi::LinearResample::GetNumOutputSamples(kaldi::LinearResample *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = a3;
  v8 = kaldi::Lcm<int>(*this, *(this + 1), a3, a4, a5);
  v9 = v8 / *this * a2;
  if ((v5 & 1) == 0)
  {
    v10 = *(this + 3) / (*(this + 2) + *(this + 2));
    v9 -= vcvtms_s32_f32(v8 * v10);
  }

  if (v9 < 1)
  {
    return 0;
  }

  else
  {
    return v9 / (v8 / *(this + 1)) - (v9 / (v8 / *(this + 1)) * (v8 / *(this + 1)) == v9) + 1;
  }
}

void OverlappingPrompt::overlap_if_available(uint64_t *a1, uint64_t a2)
{
  SharedObjectPool::get_if<OverlappingPrompt>(&v38, *a1);
  v3 = v38;
  if (v38)
  {
    v4 = *a2;
    v5 = v38[4];
    v6 = v38[5];
    if ((*(a2 + 8) - *a2) >> 2 >= v6)
    {
      v7 = v38[5];
    }

    else
    {
      v7 = (*(a2 + 8) - *a2) >> 2;
    }

    v9 = v38[1];
    v8 = v38[2];
    v10 = (v9 + 8 * (v5 >> 10));
    if (v8 == v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = &(*v10)[4 * (v38[4] & 0x3FFLL)];
    }

    std::__deque_iterator<float,float *,float &,float **,long,1024l>::operator+[abi:ne200100]((v9 + 8 * (v5 >> 10)), v11, v7);
    if (v11 != v12)
    {
      v13 = *v10;
      v14 = v9 + 8 * (v5 >> 10);
      do
      {
        v15 = *v11++;
        *v4 = v15 + *v4;
        if (v11 - v13 == 4096)
        {
          v16 = *(v14 + 8);
          v14 += 8;
          v13 = v16;
          v11 = v16;
        }

        ++v4;
      }

      while (v11 != v12);
    }

    if (v8 == v9)
    {
      v17 = 0;
    }

    else
    {
      v17 = &(*v10)[4 * (v5 & 0x3FF)];
    }

    v18 = std::__deque_iterator<float,float *,float &,float **,long,1024l>::operator+[abi:ne200100]((v9 + 8 * (v5 >> 10)), v17, v7);
    if (v19 == v17)
    {
      v20 = 0;
    }

    else
    {
      v20 = ((v19 - *v18) >> 2) + ((v18 - v10) << 7) - ((v17 - *v10) >> 2);
    }

    if (v8 == v9)
    {
      v21 = 0;
    }

    else
    {
      v21 = &(*v10)[4 * (v5 & 0x3FF)];
    }

    v37 = v8;
    if (v17 == v21)
    {
      v22 = 0;
    }

    else
    {
      v22 = ((v17 - *v10) >> 2) - ((v21 - *v10) >> 2);
    }

    v23 = std::__deque_iterator<float,float *,float &,float **,long,1024l>::operator+[abi:ne200100]((v9 + 8 * (v5 >> 10)), v21, v22);
    if (v20 >= 1)
    {
      v25 = v23;
      v26 = v24;
      v27 = std::__deque_iterator<float,float *,float &,float **,long,1024l>::operator+[abi:ne200100](v23, v24, v20);
      if (v22 <= (v6 - v20) >> 1)
      {
        std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<float,float *,float &,float **,long,1024l>,std::__deque_iterator<float,float *,float &,float **,long,1024l>,0>(v40, v10, v21, v25, v26, v27, v28);
        v3[5] -= v20;
        while (1)
        {
          v32 = v3[4] + v20;
          v3[4] = v32;
          if (v32 < 0x800)
          {
            break;
          }

          operator delete(*v3[1]);
          v3[1] += 8;
          v20 = -1024;
        }
      }

      else
      {
        v29.n128_u64[0] = v25;
        v29.n128_u64[1] = v26;
        v30 = (v9 + 8 * ((v5 + v6) >> 10));
        if (v37 == v9)
        {
          v31 = 0;
        }

        else
        {
          v31 = (*v30 + 4 * ((v5 + v6) & 0x3FF));
        }

        v40[0] = v29;
        std::__for_each_segment[abi:ne200100]<std::__deque_iterator<float,float *,float &,float **,long,1024l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<float,float *,float &,float **,long,1024l>,std::__deque_iterator<float,float *,float &,float **,long,1024l>>>(v27, v28, v30, v31, v40);
        v33 = v3[5] - v20;
        v3[5] = v33;
        v34 = v3[2];
        while (1)
        {
          v35 = v3[1];
          v36 = v34 == v35 ? 0 : ((v34 - v35) << 7) - 1;
          if ((v36 - (v33 + v3[4])) < 0x800)
          {
            break;
          }

          operator delete(*(v34 - 8));
          v34 = v3[2] - 8;
          v3[2] = v34;
          v33 = v3[5];
        }
      }
    }
  }

  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }
}

void SharedObjectPool::get_if<OverlappingPrompt>(void *a1, uint64_t a2)
{
  std::recursive_mutex::lock((a2 + 56));
  {
    v5 = *(*v4 + 16);
    *a1 = *(*v4 + 8);
    a1[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }

  std::recursive_mutex::unlock((a2 + 56));
}

void AudioMarkerModule::process_data(uint64_t a1, uint64_t *a2)
{
  v4 = *(*v2 + 8);
  v3 = *(*v2 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1C2FCB4F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, std::__shared_weak_count *a26)
{
  *(v26 - 88) = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v26 - 88));
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  v28 = *(v26 - 96);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void Agglomerate::set<std::shared_ptr<std::vector<TTSSynthesizer::Marker>>>(uint64_t a1, uint64_t *a2)
{
  if (!v3)
  {
    operator new();
  }

  v4 = *a2;
  v5 = a2[1];
  v7 = *a2;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = v7;
  }

  v6 = *(v3 + 16);
  *(v3 + 8) = v4;
  *(v3 + 16) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

uint64_t std::__function::__func<TTSSynthesizerEventBus::on_audio(std::function<void ()(std::vector<float> const&)>)::$_0,std::allocator<TTSSynthesizerEventBus::on_audio(std::function<void ()(std::vector<float> const&)>)::$_0>,void ()(void const*)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v4 = *a2;
  v5 = *(*v3 + 48);

  return v5();
}

void Agglomerate::ItemHolder<std::shared_ptr<std::vector<TTSSynthesizer::Marker>>>::~ItemHolder(void *a1)
{
  *a1 = &unk_1F42EFF28;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1C692AE10);
}

void std::__shared_ptr_emplace<AudioSegmentation>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<Unit>::__destroy_vector::operator()[abi:ne200100](&v4);
}

void Agglomerate::ItemHolder<std::shared_ptr<AudioSegmentation>>::~ItemHolder(void *a1)
{
  *a1 = &unk_1F42F18A0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1C692AE10);
}

void std::vector<Unit>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v9 = (v4 - 24);
        std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](&v9);
        v6 = *(v4 - 9);
        if (v6)
        {
          *(v4 - 8) = v6;
          operator delete(v6);
        }

        v7 = *(v4 - 12);
        if (v7)
        {
          *(v4 - 11) = v7;
          operator delete(v7);
        }

        if (*(v4 - 97) < 0)
        {
          operator delete(*(v4 - 15));
        }

        if (*(v4 - 121) < 0)
        {
          operator delete(*(v4 - 18));
        }

        v8 = *(v4 - 21);
        if (v8)
        {
          *(v4 - 20) = v8;
          operator delete(v8);
        }

        v4 -= 184;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t kaldi::VecVec<float>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 2) != *(a2 + 2))
  {
    kaldi::KaldiAssertFailure_("VecVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 0x44, "adim == b.Dim()", a5);
  }

  v6 = *a2;
  v7 = *a1;

  return cblas_sdot_NEWLAPACK_ILP64();
}

void *std::vector<std::vector<float>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::vector<float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

unsigned __int8 **nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_begin(unsigned __int8 **result)
{
  v1 = *result;
  if (!*result)
  {
    __assert_rtn("set_begin", "iter_impl.hpp", 174, "m_object != nullptr");
  }

  v2 = *v1;
  if (*v1)
  {
    if (v2 == 2)
    {
      result[2] = **(v1 + 1);
    }

    else if (v2 == 1)
    {
      result[1] = **(v1 + 1);
    }

    else
    {
      result[4] = 0;
    }
  }

  else
  {
    result[4] = 1;
  }

  return result;
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C2FCBB88(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::DataUtils::convert_data_to_3d_array<float>(uint64_t a1@<X0>, unint64_t **a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  if (a2[1] - *a2 != 24)
  {
    InferenceEngine::DataUtils::convert_data_to_3d_array<float>();
  }

  v7 = *v4;
  v8 = v4[1];
  std::vector<float>::vector[abi:ne200100](__p, v4[2]);
  std::vector<std::vector<float>>::vector[abi:ne200100](v16, v8);
  std::vector<std::vector<std::vector<float>>>::vector[abi:ne200100](a3, v7);
  v17 = v16;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v17);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v9 = *a2;
  v10 = **a2;
  if (v10)
  {
    for (i = 0; i < v10; ++i)
    {
      v12 = v9[1];
      if (v12)
      {
        v13 = 0;
        v14 = 0;
        do
        {
          memcpy(*(*(*a3 + 24 * i) + v13), (a1 + 4 * v9[2] * v14++ + 4 * v12 * i * v9[2]), 4 * v9[2]);
          v9 = *a2;
          v12 = (*a2)[1];
          v13 += 24;
        }

        while (v14 < v12);
        v10 = *v9;
      }
    }
  }
}

void sub_1C2FCBCD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a16);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C2FCBD6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t InferenceEngine::DataTensor::get_size(InferenceEngine::DataTensor *this)
{
  v1 = *(this + 7);
  v2 = *(this + 8) - v1;
  if (!v2)
  {
    return 1;
  }

  v3 = v2 >> 3;
  if (v3 <= 1)
  {
    v3 = 1;
  }

  result = 1;
  do
  {
    v5 = *v1++;
    result *= v5;
    --v3;
  }

  while (v3);
  return result;
}

void *std::vector<int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1C2FCBE20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,0>@<X0>(unsigned __int8 *a1@<X0>, const void **a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v10 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    std::string::basic_string[abi:ne200100]<0>(&v13, v10);
    v11 = std::string::insert(&v13, 0, "cannot use value() with ");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v15 = v11->__r_.__value_.__r.__words[2];
    v14 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(306, &v14, exception);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::find<std::string const&>(a1, a2, &v14);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(&v13, a1);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_end(&v13);
  if (nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==(&v14, &v13))
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a4, *a3, a3[1], (a3[1] - *a3) >> 4);
  }

  else
  {
    v8 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v14);
    return nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,0>(v8, a4);
  }
}

void sub_1C2FCBF68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);
  goto LABEL_8;
}

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
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

    v18.__end_cap_.__value_ = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18.__end_ = v16;
    v18.__end_cap_.__value_ = v17;
    v18.__first_ = v16;
    v18.__begin_ = v16;
    std::__split_buffer<std::string>::~__split_buffer(&v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = v4 + 24;
  }

  *(a1 + 8) = v7;
}

void *std::vector<std::vector<std::vector<float>>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<std::string>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<kaldi::CuMatrix<float>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::vector<std::string>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<kaldi::CuMatrix<float>>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__assign_with_size[abi:ne200100]<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(uint64_t *a1, unsigned __int8 *a2, unsigned __int8 *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__vdeallocate(a1);
    if (!(a4 >> 60))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 4)
  {
    std::__copy_impl::operator()[abi:ne200100]<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>(&v16, a2, a3, v8);
    return std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__base_destruct_at_end[abi:ne200100](a1, v14);
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> *>(&v15, a2, &a2[v12], v8);
    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, &a2[v12], a3, a1[1]);
    a1[1] = result;
  }

  return result;
}

uint64_t nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,0>(uint64_t result, uint64_t *a2)
{
  v2 = result;
  if (*result != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v9 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(v2);
    std::string::basic_string[abi:ne200100]<0>(&v12, v9);
    v10 = std::string::insert(&v12, 0, "type must be array, but is ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v14 = v10->__r_.__value_.__r.__words[2];
    v13 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(302, &v13, exception);
  }

  v3 = *(result + 8);
  if (v3 != a2)
  {
    v4 = v3[1];
    v5 = &v4[-*v3] >> 4;
    v7 = *v3;

    return std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__assign_with_size[abi:ne200100]<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a2, v7, v4, v5);
  }

  return result;
}

void sub_1C2FCC544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,0>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,0>(a1, a2);
}

void sub_1C2FCC5DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__vdeallocate(uint64_t a1)
{
  if (*a1)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

std::string *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::string,std::string,0>@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(a1, a2);
}

void sub_1C2FCC664(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(uint64_t a1, std::string *this)
{
  if (*a1 != 3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v8 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    std::string::basic_string[abi:ne200100]<0>(&v11, v8);
    v9 = std::string::insert(&v11, 0, "type must be string, but is ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v13 = v9->__r_.__value_.__r.__words[2];
    v12 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(302, &v12, exception);
  }

  v3 = *(a1 + 8);
  v5 = *(a1 + 8);

  return std::string::operator=(this, v5);
}

void sub_1C2FCC760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void kaldi::quasar::Vocab::BosWord(kaldi::quasar::Vocab *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 55) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 4), *(this + 5));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 2);
    a2->__r_.__value_.__r.__words[2] = *(this + 6);
  }
}

void InferenceEngine::Mil2BnnsMilInferenceModel::set_input(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v20 = *a2;
  v21 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  InferenceEngine::MilInferenceModel::set_input(a1, &v20);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (*(a1 + 136) == 1)
  {
    kaldi::quasar::Vocab::OOvWord(*a2, &__p);
    *&v17 = &__p;
    v5 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 144), &__p.__r_.__value_.__l.__data_);
    v6 = v5[5];
    if (v6)
    {
      v7 = **v6;
      if (v8)
      {
        v9 = v5[6];
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        goto LABEL_12;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = 0;
LABEL_12:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v10 = v8[32];
    InferenceEngine::DataTensor::get_shape(v8, 0, &__p.__r_.__value_.__l.__data_);
    v18 = 0;
    v17 = 0uLL;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&v17, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 3);
    v11 = *(a1 + 288);
    v12 = v11 + 24 * v10;
    v13 = *v12;
    if (*v12)
    {
      *(v12 + 8) = v13;
      operator delete(v13);
      *v12 = 0;
      *(v12 + 8) = 0;
      *(v12 + 16) = 0;
      v11 = *(a1 + 288);
    }

    *v12 = v17;
    *(v12 + 16) = v18;
    v15 = (v11 + 24 * v10);
    v14 = *v15;
    v16 = (*(a1 + 312) + 16 * v10);
    *v16 = (v15[1] - *v15) >> 3;
    v16[1] = v14;
    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void sub_1C2FCC9B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::MilInferenceModel::set_input(uint64_t a1, kaldi::quasar::Vocab **a2)
{
  kaldi::quasar::Vocab::OOvWord(*a2, &v21);
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 144), &v21.__r_.__value_.__l.__data_);
  kaldi::quasar::Vocab::OOvWord(*a2, &v18);
  v5 = std::string::insert(&v18, 0, "The key is not found: ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v20 = v5->__r_.__value_.__r.__words[2];
  *__p = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = InferenceEngine::Utils::assert_with_log(v4 != 0, __p);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  LogObject = InferenceEngine::Diagnostics_GetLogObject(v7);
  if (os_log_type_enabled(LogObject, OS_LOG_TYPE_DEBUG))
  {
    InferenceEngine::MilInferenceModel::set_input(a2, LogObject);
  }

  kaldi::quasar::Vocab::OOvWord(*a2, &v21);
  __p[0] = &v21;
  v9 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 144), &v21.__r_.__value_.__l.__data_);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  v10 = *a2;
  rank = InferenceEngine::DataTensor::get_rank(v9[5]);
  InferenceEngine::DataTensor::set_rank(v10, rank);
  if (*(a1 + 136) == 1)
  {
    InferenceEngine::DataTensor::get_shape(*a2, 0, &v21.__r_.__value_.__l.__data_);
    InferenceEngine::DataTensor::get_shape(v9[5], 0, __p);
    InferenceEngine::DataTensor::valid_shape(&v21, __p, 0, 1);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v21.__r_.__value_.__r.__words[0])
    {
      v21.__r_.__value_.__l.__size_ = v21.__r_.__value_.__r.__words[0];
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    v12 = v9[5];
    InferenceEngine::DataTensor::get_shape(*a2, 0, v17);
    InferenceEngine::DataTensor::resize(v12, v17);
    if (v17[0])
    {
      v17[1] = v17[0];
      operator delete(v17[0]);
    }

    (*(*v9[5] + 16))(v9[5]);
  }

  else
  {
    InferenceEngine::DataTensor::get_shape(*a2, 0, &v21.__r_.__value_.__l.__data_);
    InferenceEngine::DataTensor::get_shape(v9[5], 0, __p);
    InferenceEngine::DataTensor::valid_shape(&v21, __p, 0, 0);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v21.__r_.__value_.__r.__words[0])
    {
      v21.__r_.__value_.__l.__size_ = v21.__r_.__value_.__r.__words[0];
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  v13 = *a2;
  v14 = v9[6];
  v15 = v9[5];
  v16 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  InferenceEngine::DataTensor::cast_data_to_target_tensor(v13, &v15);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

void sub_1C2FCCC94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::DataTensor::set_rank(InferenceEngine::DataTensor *this, unint64_t a2)
{
  if (!a2)
  {
    InferenceEngine::DataTensor::set_rank();
  }

  v2 = a2;
  std::vector<unsigned long>::vector[abi:ne200100](&__p, a2);
  v5 = *(this + 7);
  v4 = *(this + 8);
  v6 = (this + 56);
  v7 = (v4 - v5) >> 3;
  v8 = (v7 - 1);
  if (v7 - 1 >= 0)
  {
    v9 = __p;
    v10 = v8 + 1;
    v11 = (v5 + 8 * v8);
    v12 = v2 - 1;
    do
    {
      if (v12 < 0)
      {
        __assert_rtn("set_rank", "DataTensor.cpp", 106, "new_shape_dim >= 0");
      }

      v13 = *v11--;
      v9[v12--] = v13;
    }

    while (v10-- > 1);
  }

  if (v6 != &__p)
  {
    std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v6, __p, v16, (v16 - __p) >> 3);
  }

  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }
}

void sub_1C2FCCE34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1C2FCCF10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::DataTensor::resize(uint64_t a1, char **a2)
{
  v3 = (a1 + 56);
  if (v3 != a2)
  {
    std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v3, *a2, a2[1], (a2[1] - *a2) >> 3);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "");
  InferenceEngine::DataTensor::allocate_memory(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C2FCCFA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t InferenceEngine::Utils::assert_with_log(uint64_t result, char *a2)
{
  if ((result & 1) == 0)
  {
    InferenceEngine::Utils::assert_with_log(a2);
  }

  return result;
}

uint64_t *InferenceEngine::DataTensor::valid_shape(uint64_t *result, void *a2, int a3, char a4)
{
  v4 = *result;
  v5 = result[1];
  v6 = v5 - *result;
  if (v6 != a2[1] - *a2)
  {
    InferenceEngine::DataTensor::valid_shape();
  }

  if (v5 != v4)
  {
    v10 = result;
    v11 = 0;
    v12 = (v6 >> 3) - 1;
    do
    {
      v13 = *(v4 + 8 * v11);
      if (a3)
      {
        result = InferenceEngine::DataUtils::compare_shape(v13, *(*a2 + 8 * v12), a4);
        if ((result & 1) == 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          v15 = a2;
          v16 = exception;
          InferenceEngine::StringFormatter::StringFormatter(&v20, "Shape mismatch! src_shape[%d]=%d, dst_shape[%d]=%d", v11, *(*v10 + 8 * v11), v12, *(*v15 + 8 * v12));
          MEMORY[0x1C692A510](v16, &v20);
          __cxa_throw(v16, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
        }
      }

      else
      {
        result = InferenceEngine::DataUtils::compare_shape(v13, *(*a2 + 8 * v11), a4);
        if ((result & 1) == 0)
        {
          v17 = __cxa_allocate_exception(0x10uLL);
          v18 = a2;
          v19 = v17;
          InferenceEngine::StringFormatter::StringFormatter(&v20, "Shape mismatch! src_shape[%d]=%d, dst_shape[%d]=%d", v11, *(*v10 + 8 * v11), v11, *(*v18 + 8 * v11));
          MEMORY[0x1C692A510](v19, &v20);
          __cxa_throw(v19, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
        }
      }

      ++v11;
      v4 = *v10;
      --v12;
    }

    while (v11 < (v10[1] - *v10) >> 3);
  }

  return result;
}

void sub_1C2FCD178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (v20)
  {
    __cxa_free_exception(v19);
  }

  _Unwind_Resume(exception_object);
}

BOOL InferenceEngine::DataUtils::compare_shape(InferenceEngine::DataUtils *this, int a2, char a3)
{
  if (a3)
  {
    v4 = this == -1 || a2 == -1;
    return this == a2 || v4;
  }

  else
  {
    if ((this & 0x80000000) != 0)
    {
      InferenceEngine::DataUtils::compare_shape();
    }

    if (a2 < 0)
    {
      InferenceEngine::DataUtils::compare_shape();
    }

    return this == a2;
  }
}

float InferenceEngine::DataTensor::cast_data_to_target_tensor(uint64_t a1, uint64_t *a2)
{
  InferenceEngine::DataTensor::valid_shape((a1 + 56), (*a2 + 56), 0, 0);
  v5 = (a1 + 32);
  v6 = *a2;
  v7 = (*a2 + 32);
  v8 = *(a1 + 55);
  v9 = *(a1 + 40);
  if ((v8 & 0x80u) == 0)
  {
    v10 = *(a1 + 55);
  }

  else
  {
    v10 = *(a1 + 40);
  }

  v11 = *(v6 + 55);
  v12 = *(v6 + 40);
  if ((v11 & 0x80u) == 0)
  {
    v13 = *(v6 + 55);
  }

  else
  {
    v13 = *(v6 + 40);
  }

  if (v10 == v13)
  {
    v14 = (v8 & 0x80u) == 0 ? (a1 + 32) : *v5;
    v15 = *v7;
    v16 = ((v11 & 0x80u) == 0 ? *a2 + 32 : *v7);
    if (!memcmp(v14, v16, v10))
    {
      v22 = *(v6 + 88);
      v24 = *(a1 + 80);
      v23 = *(a1 + 88);

      memcpy(v22, v23, v24);
      return result;
    }
  }

  if ((v8 & 0x80) == 0)
  {
    if (v8 != 4)
    {
      v17 = (a1 + 32);
      if (v8 != 5)
      {
        goto LABEL_70;
      }

      goto LABEL_22;
    }

    if (*v5 != 909209702)
    {
      v21 = *v5;
      goto LABEL_37;
    }

    goto LABEL_41;
  }

  if (v9 == 4)
  {
    if (**v5 != 909209702)
    {
      v21 = **v5;
LABEL_37:
      if (v21 != 842231910)
      {
        goto LABEL_70;
      }

      if ((v11 & 0x80) != 0)
      {
        if (v12 != 4)
        {
          goto LABEL_80;
        }

        v7 = *v7;
      }

      else if (v11 != 4)
      {
        goto LABEL_80;
      }

      if (*v7 == 909209702)
      {
        v38 = *(a1 + 80);
        if (v38 >= 4)
        {
          v39 = v38 >> 2;
          v40 = *(a1 + 88);
          v41 = *(v6 + 88);
          do
          {
            v42 = *v40++;
            result = v42;
            __asm { FCVT            H0, S0 }

            *v41++ = LOWORD(result);
            --v39;
          }

          while (v39);
        }

        return result;
      }

LABEL_80:
      exception = __cxa_allocate_exception(0x10uLL);
      v58 = a1;
      v59 = exception;
      if (*(v58 + 55) < 0)
      {
        v5 = *v5;
      }

      v60 = (*a2 + 32);
      if (*(*a2 + 55) < 0)
      {
        v60 = *v60;
      }

      InferenceEngine::StringFormatter::StringFormatter(&v65, "DataTensor type cast not supported: src_dtype=%s, target_dtype=%s", v5, v60);
      MEMORY[0x1C692A510](v59, &v65);
      __cxa_throw(v59, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
    }

LABEL_41:
    if ((v11 & 0x80) != 0)
    {
      if (v12 != 4)
      {
        goto LABEL_85;
      }

      v7 = *v7;
    }

    else if (v11 != 4)
    {
      goto LABEL_85;
    }

    if (*v7 == 842231910)
    {
      v43 = *(a1 + 80);
      if (v43 >= 2)
      {
        v44 = v43 >> 1;
        v45 = *(a1 + 88);
        v46 = *(v6 + 88);
        do
        {
          v47 = *v45++;
          _H0 = v47;
          __asm { FCVT            S0, H0 }

          *v46++ = result;
          --v44;
        }

        while (v44);
      }

      return result;
    }

LABEL_85:
    v61 = __cxa_allocate_exception(0x10uLL);
    v62 = a1;
    v63 = v61;
    if (*(v62 + 55) < 0)
    {
      v5 = *v5;
    }

    v64 = (*a2 + 32);
    if (*(*a2 + 55) < 0)
    {
      v64 = *v64;
    }

    InferenceEngine::StringFormatter::StringFormatter(&v65, "DataTensor type cast not supported: src_dtype=%s, target_dtype=%s", v5, v64);
    MEMORY[0x1C692A510](v63, &v65);
    __cxa_throw(v63, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
  }

  if (v9 != 5)
  {
    goto LABEL_70;
  }

  v17 = *v5;
LABEL_22:
  v18 = *v17;
  v19 = *(v17 + 4);
  if (v18 != 863268457 || v19 != 50)
  {
LABEL_70:
    v49 = __cxa_allocate_exception(0x10uLL);
    v50 = a1;
    v51 = v49;
    if (*(v50 + 55) < 0)
    {
      v5 = *v5;
    }

    v52 = (*a2 + 32);
    if (*(*a2 + 55) < 0)
    {
      v52 = *v52;
    }

    InferenceEngine::StringFormatter::StringFormatter(&v65, "DataTensor type cast not supported: src_dtype=%s, target_dtype=%s", v5, v52);
    MEMORY[0x1C692A510](v51, &v65);
    __cxa_throw(v51, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
  }

  if ((v11 & 0x80) != 0)
  {
    if (v12 != 4)
    {
      goto LABEL_75;
    }

    v7 = *v7;
  }

  else if (v11 != 4)
  {
LABEL_75:
    v53 = __cxa_allocate_exception(0x10uLL);
    v54 = a1;
    v55 = v53;
    if (*(v54 + 55) < 0)
    {
      v5 = *v5;
    }

    v56 = (*a2 + 32);
    if (*(*a2 + 55) < 0)
    {
      v56 = *v56;
    }

    InferenceEngine::StringFormatter::StringFormatter(&v65, "DataTensor type cast not supported: src_dtype=%s, target_dtype=%s", v5, v56);
    MEMORY[0x1C692A510](v55, &v65);
    __cxa_throw(v55, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
  }

  if (*v7 == 842231910)
  {
    v33 = *(a1 + 80);
    if (v33 >= 4)
    {
      v34 = v33 >> 2;
      v35 = *(a1 + 88);
      v36 = *(v6 + 88);
      do
      {
        v37 = *v35++;
        result = v37;
        *v36++ = v37;
        --v34;
      }

      while (v34);
    }
  }

  else
  {
    if (*v7 != 909209702)
    {
      goto LABEL_75;
    }

    v25 = *(a1 + 80);
    if (v25 >= 4)
    {
      v26 = v25 >> 2;
      v27 = *(a1 + 88);
      v28 = *(v6 + 88);
      do
      {
        v29 = *v27++;
        result = v29;
        __asm { FCVT            H0, S0 }

        *v28++ = LOWORD(result);
        --v26;
      }

      while (v26);
    }
  }

  return result;
}

void sub_1C2FCD6C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (v18)
  {
    __cxa_free_exception(v17);
  }

  _Unwind_Resume(exception_object);
}

void *InferenceEngine::Mil2BnnsMilIO::set_framework_specific_buffer(InferenceEngine::Mil2BnnsMilIO *this)
{
  v2 = (this + 32);
  if (*(this + 55) < 0)
  {
    if (*(this + 5) == 4 && **v2 == 842231910)
    {
      v7 = 65568;
      goto LABEL_25;
    }

    if (*(this + 5) == 4 && **v2 == 909209702)
    {
      v7 = 65552;
      goto LABEL_25;
    }

    if (*(this + 5) != 5)
    {
      goto LABEL_19;
    }

    v3 = *v2;
  }

  else
  {
    if (*(this + 55) == 4)
    {
      v7 = 65552;
      if (*v2 == 842231910)
      {
        v7 = 65568;
      }

      else if (*v2 != 909209702)
      {
        goto LABEL_19;
      }

      goto LABEL_25;
    }

    v3 = (this + 32);
    if (*(this + 55) != 5)
    {
      goto LABEL_19;
    }
  }

  v4 = *v3;
  v5 = *(v3 + 4);
  if (v4 != 863268457 || v5 != 50)
  {
LABEL_19:
    v8 = this + 32;
    exception = __cxa_allocate_exception(0x10uLL);
    if (*(this + 55) < 0)
    {
      v8 = *v8;
    }

    InferenceEngine::StringFormatter::StringFormatter(&v16, "dtype %s not supported", v8);
    MEMORY[0x1C692A510](exception, &v16);
    __cxa_throw(exception, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
  }

  v7 = 131104;
LABEL_25:
  v10 = 163841;
  *(*(this + 17) + 144) = v7;
  result = InferenceEngine::DataTensor::get_rank(this);
  if (result == 5)
  {
    v10 = 360449;
  }

  else
  {
    result = InferenceEngine::DataTensor::get_rank(this);
    if (result == 4)
    {
      v10 = 294913;
    }

    else
    {
      result = InferenceEngine::DataTensor::get_rank(this);
      if (result == 3)
      {
        v10 = 229377;
      }

      else
      {
        result = InferenceEngine::DataTensor::get_rank(this);
        if (result != 2)
        {
          result = InferenceEngine::DataTensor::get_rank(this);
          if (result != 1)
          {
            v15 = __cxa_allocate_exception(0x10uLL);
            InferenceEngine::StringFormatter::StringFormatter(&v16, "shape rank %ld not supported", (*(this + 8) - *(this + 7)) >> 3);
            MEMORY[0x1C692A510](v15, &v16);
            __cxa_throw(v15, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
          }

          v10 = 98305;
        }
      }
    }
  }

  v12 = *(this + 17);
  *(v12 + 4) = v10;
  *(v12 + 136) = *(this + 11);
  v13 = *(this + 7);
  v14 = *(this + 8);
  if (v14 != v13)
  {

    return memmove((v12 + 8), v13, v14 - v13);
  }

  return result;
}

void sub_1C2FCD9CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t InferenceEngine::Diagnostics_GetLogObject(InferenceEngine *this)
{
  if (InferenceEngine::Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    InferenceEngine::Diagnostics_GetLogObject();
  }

  return InferenceEngine::Diagnostics_GetLogObject(void)::__profile_log_default;
}

void InferenceEngine::Mil2BnnsMilInferenceModel::clean(InferenceEngine::Mil2BnnsMilInferenceModel *this)
{
  free(*(this + 35));
  *(this + 40) = *(this + 39);
  std::vector<std::vector<int>>::clear[abi:ne200100](this + 36);
  if (*(this + 136) == 1)
  {
    for (i = *(this + 25); i; i = *i)
    {
      v3 = i[5];
      v4 = **v3;
      v6 = i[6];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v5[11] = 0;
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      else
      {
        v5[11] = 0;
      }
    }
  }

  InferenceEngine::MilInferenceModel::clean(this);
}

void InferenceEngine::Mil2BnnsMilIO::~Mil2BnnsMilIO(InferenceEngine::Mil2BnnsMilIO *this)
{
  *this = &unk_1F42CDC48;
  v2 = *(this + 18);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *this = &unk_1F42CDD28;
  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  InferenceEngine::DataTensor::~DataTensor(this);
}

{
  *this = &unk_1F42CDC48;
  v2 = *(this + 18);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *this = &unk_1F42CDD28;
  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  InferenceEngine::DataTensor::~DataTensor(this);

  JUMPOUT(0x1C692AE10);
}

void InferenceEngine::MilInferenceModel::get_all_input_names(InferenceEngine::MilInferenceModel *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "model_inputs");
  v8[0] = 0;
  v8[1] = 0;
  v9 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,0>(this + 32, &__p.__r_.__value_.__l.__data_, v8, &v11);
  v6 = v8;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = v11;
  for (i = v12; v4 != i; v4 += 16)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(&v6, v4);
    std::string::basic_string[abi:ne200100]<0>(v8, "name");
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value("", &v6, v8, &__p);
    std::vector<std::string>::push_back[abi:ne200100](a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(v8[0]);
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v6);
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v7, v6);
  }

  __p.__r_.__value_.__r.__words[0] = &v11;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1C2FCDD14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24)
{
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a24);
  _Unwind_Resume(a1);
}

double nlohmann::detail::from_json_array_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::vector<unsigned long>>(unsigned __int8 *a1, uint64_t a2)
{
  v12 = 0uLL;
  v13 = 0;
  v4 = *a1;
  if (*a1)
  {
    if (v4 == 1)
    {
      v4 = *(*(a1 + 1) + 16);
    }

    else if (v4 == 2)
    {
      v4 = (*(*(a1 + 1) + 8) - **(a1 + 1)) >> 4;
    }

    else
    {
      v4 = 1;
    }
  }

  std::vector<double>::reserve(&v12, v4);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(v11, a1);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_begin(v11);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(v10, a1);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_end(v10);
  for (i = *(&v12 + 1); !nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==(v11, v10); i = v7 + 8)
  {
    v6 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(v11);
    v14 = 0;
    nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,unsigned long,0>(v6, &v14);
    v7 = std::vector<unsigned long>::insert(&v12, i, &v14);
    nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator++(v11);
  }

  v8 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v8;
    operator delete(v8);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  result = *&v12;
  *a2 = v12;
  *(a2 + 16) = v13;
  return result;
}

void sub_1C2FCDED0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 48);
  if (v3)
  {
    *(v1 - 40) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,unsigned long,0>(unsigned __int8 *result, unint64_t *a2)
{
  v2 = result;
  v3 = *result;
  if (v3 > 5)
  {
    if (v3 == 7)
    {
      v4 = *(result + 1);
      goto LABEL_10;
    }

    if (v3 == 6)
    {
      goto LABEL_4;
    }

LABEL_7:
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(v2);
    std::string::basic_string[abi:ne200100]<0>(&v9, v6);
    v7 = std::string::insert(&v9, 0, "type must be number, but is ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v11 = v7->__r_.__value_.__r.__words[2];
    v10 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(302, &v10, exception);
  }

  if (v3 == 4)
  {
    v4 = result[8];
    goto LABEL_10;
  }

  if (v3 != 5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = *(result + 1);
LABEL_10:
  *a2 = v4;
  return result;
}

void sub_1C2FCDFF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t InferenceEngine::Mil2BnnsMilIO::Mil2BnnsMilIO(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, char **a5, int a6)
{
  v8 = InferenceEngine::MilIO::MilIO(a1, a2, a3, a4, a5);
  *v8 = &unk_1F42CDC48;
  v8[17] = 0;
  v8[18] = 0;
  if (a6)
  {
    operator new();
  }

  return a1;
}

void sub_1C2FCE144(_Unwind_Exception *a1)
{
  v3 = *(v1 + 144);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  InferenceEngine::MilIO::~MilIO(v1);
  _Unwind_Resume(a1);
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<kaldi::nnet1::Nnet>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<kaldi::nnet1::Nnet>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void InferenceEngine::MilInferenceModel::clean(InferenceEngine::MilInferenceModel *this)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::clear(this + 144);

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::clear(this + 184);
}

void InferenceEngine::MilInferenceModel::prepare(InferenceEngine::MilInferenceModel *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "model_inputs");
  v3[0] = 0;
  v3[1] = 0;
  v4 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,0>(this + 32, __p, v3, v7);
  v2[0] = v3;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](v2);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v3, "model_outputs");
  memset(v2, 0, sizeof(v2));
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,0>(this + 32, v3, v2, __p);
  v8 = v2;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(v3[0]);
  }

  InferenceEngine::MilInferenceModel::add_model_ios(this, v7, this + 18);
  InferenceEngine::MilInferenceModel::add_model_ios(this, __p, this + 23);
  v3[0] = __p;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](v3);
  __p[0] = v7;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1C2FCE3A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  *(v25 - 24) = v24;
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100]((v25 - 24));
  if (a18 < 0)
  {
    operator delete(__p);
  }

  a19 = (v25 - 48);
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

void InferenceEngine::MilInferenceModel::add_model_ios(uint64_t a1, unsigned __int8 **a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v24, v3);
      std::string::basic_string[abi:ne200100]<0>(&__p, "name");
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value("", v24, &__p.__r_.__value_.__l.__data_, &v23);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v21, "io_name");
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value("", v24, &v21.__r_.__value_.__l.__data_, &__p);
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(v19, "io_dtype");
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value("", v24, v19, &v21);
      if (v20 < 0)
      {
        operator delete(v19[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(buf, "shape");
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v7.n128_f64[0] = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<std::vector<unsigned long>,0>(v24, buf, &v16, v19);
      if (v16)
      {
        v17 = v16;
        operator delete(v16);
      }

      if (v29 < 0)
      {
        operator delete(*buf);
      }

      (*(*a1 + 80))(&v16, a1, &v23, &__p, &v21, v19, v7);
      *buf = &v23;
      v8 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, &v23.__r_.__value_.__l.__data_);
      v10 = v16;
      v9 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = v8[6];
      v8[5] = v10;
      v8[6] = v9;
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      LogObject = InferenceEngine::Diagnostics_GetLogObject(v8);
      if (os_log_type_enabled(LogObject, OS_LOG_TYPE_INFO))
      {
        if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13 = &v23;
        }

        else
        {
          v13 = v23.__r_.__value_.__r.__words[0];
        }

        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315394;
        *&buf[4] = v13;
        v27 = 2080;
        v28 = p_p;
        _os_log_impl(&dword_1C2F95000, LogObject, OS_LOG_TYPE_INFO, "Added IO: %s -> %s", buf, 0x16u);
      }

      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      if (v19[0])
      {
        v19[1] = v19[0];
        operator delete(v19[0]);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v24);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v25, v24[0]);
      v3 += 16;
    }

    while (v3 != v4);
  }

  v15 = *MEMORY[0x1E69E9840];
}

double nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::value<std::vector<unsigned long>,0>@<D0>(unsigned __int8 *a1@<X0>, const void **a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v10 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    std::string::basic_string[abi:ne200100]<0>(&v13, v10);
    v11 = std::string::insert(&v13, 0, "cannot use value() with ");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v15 = v11->__r_.__value_.__r.__words[2];
    v14 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(306, &v14, exception);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::find<std::string const&>(a1, a2, &v14);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::iter_impl(&v13, a1);
  nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::set_end(&v13);
  if (nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator==(&v14, &v13))
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a4, *a3, a3[1], (a3[1] - *a3) >> 3);
  }

  else
  {
    v8 = nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>::operator*(&v14);
    return nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<unsigned long>,std::vector<unsigned long>,0>(v8, a4);
  }

  return result;
}

void sub_1C2FCE944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);
  goto LABEL_8;
}

double nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<unsigned long>,std::vector<unsigned long>,0>@<D0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::vector<unsigned long>,0>(a1, a2);
}

void sub_1C2FCE9D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<double>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

double nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::vector<unsigned long>,0>(unsigned __int8 *a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v5 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    std::string::basic_string[abi:ne200100]<0>(&v8, v5);
    v6 = std::string::insert(&v8, 0, "type must be array, but is ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v10 = v6->__r_.__value_.__r.__words[2];
    v9 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(302, &v9, exception);
  }

  return nlohmann::detail::from_json_array_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,std::vector<unsigned long>>(a1, a2);
}

void sub_1C2FCEB68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t InferenceEngine::MilIO::MilIO(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, char **a5)
{
  v7 = InferenceEngine::DataTensor::DataTensor(a1, a2, a4, a5);
  *v7 = &unk_1F42CDD28;
  v8 = (v7 + 13);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v8, *a3, *(a3 + 1));
  }

  else
  {
    v9 = *a3;
    v8->__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&v8->__r_.__value_.__l.__data_ = v9;
  }

  return a1;
}

void *std::__shared_ptr_emplace<InferenceEngine::Mil2BnnsMilIO>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::string const&,std::string const&,std::vector<unsigned long> const&,BOOL &,std::allocator<InferenceEngine::Mil2BnnsMilIO>,0>(void *a1, __int128 *a2, __int128 *a3, __int128 *a4, char **a5, unsigned __int8 *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F42CDDA8;
  InferenceEngine::Mil2BnnsMilIO::Mil2BnnsMilIO((a1 + 3), a2, a3, a4, a5, *a6);
  return a1;
}

void InferenceEngine::MilIO::get_io_name(InferenceEngine::MilIO *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 127) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 13), *(this + 14));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 104);
    a2->__r_.__value_.__r.__words[2] = *(this + 15);
  }
}

uint64_t InferenceEngine::Mil2BnnsMilInferenceModel::execute(InferenceEngine::Mil2BnnsMilInferenceModel *this)
{
  InferenceEngine::MilInferenceModel::get_all_input_names(this, &v27);
  size = v27.__r_.__value_.__l.__size_;
  for (i = v27.__r_.__value_.__r.__words[0]; i != size; i += 24)
  {
    if (*(i + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v26, *i, *(i + 8));
    }

    else
    {
      v4 = *i;
      v26.__r_.__value_.__r.__words[2] = *(i + 16);
      *&v26.__r_.__value_.__l.__data_ = v4;
    }

    if (((*(*this + 24))(this, &v26) & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v20 = &v26;
      if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v20 = v26.__r_.__value_.__r.__words[0];
      }

      InferenceEngine::StringFormatter::StringFormatter(&v25, "Mil2BnnsMilInferenceModel execution missing input %s", v20);
      MEMORY[0x1C692A510](exception, &v25);
      __cxa_throw(exception, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }
  }

  v26.__r_.__value_.__r.__words[0] = &v27;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v26);
  if (*(this + 136))
  {
    v5 = *(this + 28);
    v6 = *(this + 29);
    v7 = *(this + 21);
    v8 = *(this + 26);
    v9 = *(this + 39);
    v10 = BNNSGraphContextSetDynamicShapes_v2();
    if (v10 < 0)
    {
      v23 = v10;
      v24 = __cxa_allocate_exception(0x10uLL);
      InferenceEngine::StringFormatter::StringFormatter(&v27, "Set dynamic shape for execution failed with return code %d", v23);
      MEMORY[0x1C692A510](v24, &v27);
      __cxa_throw(v24, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
    }
  }

  v11 = 2;
  do
  {
    v12 = *(this + 28);
    v13 = *(this + 29);
    v14 = *(this + 34);
    v15 = *(this + 35);
    v16 = *(this + 32);
    v17 = *(this + 33);
    result = BNNSGraphContextExecute_v2();
    if (v11 < 2)
    {
      break;
    }

    --v11;
  }

  while (result);
  if (result)
  {
    v21 = result;
    v22 = __cxa_allocate_exception(0x10uLL);
    InferenceEngine::StringFormatter::StringFormatter(&v27, "BNNS execution failed with return code %d", v21);
    MEMORY[0x1C692A510](v22, &v27);
    __cxa_throw(v22, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
  }

  return result;
}

void sub_1C2FCEFF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
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

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void AnetecStreamingDecoderModule::process_data(uint64_t a1, uint64_t *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *(*v3 + 8);
  v4 = *(*v3 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = 0;
  v14 = 0;
  v12 = 0;
  std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(&v12, *(v5 + 8), *(v5 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 16) - *(v5 + 8)) >> 3));
  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v6 = Diagnostics_GetLogObject(void)::__profile_log_default;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C2F95000, v6, OS_LOG_TYPE_DEFAULT, "Anetec streaming decoder module start.", buf, 2u);
  }

  Diagnostics::log(5, "Anetec streaming decoder module start.", v7);
  std::mutex::lock((a1 + 296));
  *(a1 + 288) = 1;
  std::chrono::steady_clock::now();
  *buf = 0;
  v10 = 0;
  v11 = 0;
  if (v13 - v12 != 24)
  {
    *v15 = 0;
    v16 = 0;
    v17 = 0;
    std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::vector<float>*>,std::__wrap_iter<std::vector<float>*>>(v15, v12, v12 + 48, 2uLL);
    std::string::basic_string[abi:ne200100]<0>(&__p, "code_chunk");
    InferenceEngine::DataTensor::build_from_2d_array<float>(&__p, v15);
  }

  operator new();
}

void sub_1C2FD00A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  v66 = *(v64 - 240);
  if (v66)
  {
    *(v64 - 232) = v66;
    operator delete(v66);
  }

  std::mutex::unlock((v60 + 296));
  *(v64 - 240) = v64 - 208;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v64 - 240));
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(a1);
}

void AnetecStreamingDecoderBaseInference::inference()
{
  v3 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v0 = Diagnostics_GetLogObject(void)::__profile_log_default;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C2F95000, v0, OS_LOG_TYPE_DEBUG, "Anetec streaming inference decoder begin.", buf, 2u);
  }

  Diagnostics::log(7, "Anetec streaming inference decoder begin.", v1);
  operator new();
}

void sub_1C2FD0954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16)
{
  if (a2)
  {
    if (a14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a14);
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    __cxa_begin_catch(exception_object);
    (*(**(v16 + 296) + 56))(*(v16 + 296));
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1C2FD09F8(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1C2FD0A00);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<AnetecStreamingDecoderModule::process_data(std::shared_ptr<Agglomerate>)::$_0,std::allocator<AnetecStreamingDecoderModule::process_data(std::shared_ptr<Agglomerate>)::$_0>,int ()(std::shared_ptr<AnetecStreamingDecoderBuf>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v4 = *(a1 + 8);
  if (*(v4 + 160) == 1)
  {
    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v5 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C2F95000, v5, OS_LOG_TYPE_DEFAULT, "AnetecStreamingDecoder inference cancelled.", buf, 2u);
    }

    Diagnostics::log(5, "AnetecStreamingDecoder inference cancelled.", v6);
    v7 = 1;
    if (v2)
    {
LABEL_7:
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }

  else
  {
    v10 = *(v3 + 16);
    v11 = *(v4 + 272);
    v13 = *(v11 + 16);
    v12 = *(v11 + 24);
    v73 = v13;
    v74 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    InferenceEngine::DataTensor::cast_data_to_target_tensor(v10, &v73);
    if (v74)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v74);
    }

    v14 = *(v3 + 32);
    v15 = *(v4 + 272);
    v17 = *(v15 + 32);
    v16 = *(v15 + 40);
    v71 = v17;
    v72 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    InferenceEngine::DataTensor::cast_data_to_target_tensor(v14, &v71);
    if (v72)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v72);
    }

    v18 = *(v3 + 48);
    v19 = *(v4 + 272);
    v21 = *(v19 + 48);
    v20 = *(v19 + 56);
    v69 = v21;
    v70 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    InferenceEngine::DataTensor::cast_data_to_target_tensor(v18, &v69);
    if (v70)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v70);
    }

    v22 = *(v3 + 64);
    v23 = *(v4 + 272);
    v25 = *(v23 + 64);
    v24 = *(v23 + 72);
    v67 = v25;
    v68 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    InferenceEngine::DataTensor::cast_data_to_target_tensor(v22, &v67);
    if (v68)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v68);
    }

    v26 = *(v3 + 80);
    v27 = *(v4 + 272);
    v29 = *(v27 + 80);
    v28 = *(v27 + 88);
    v65 = v29;
    v66 = v28;
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    InferenceEngine::DataTensor::cast_data_to_target_tensor(v26, &v65);
    if (v66)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v66);
    }

    v30 = *(v3 + 96);
    v31 = *(v4 + 272);
    v33 = *(v31 + 96);
    v32 = *(v31 + 104);
    v63 = v33;
    v64 = v32;
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    InferenceEngine::DataTensor::cast_data_to_target_tensor(v30, &v63);
    if (v64)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v64);
    }

    v34 = *(v3 + 112);
    v35 = *(v4 + 272);
    v37 = *(v35 + 112);
    v36 = *(v35 + 120);
    v61 = v37;
    v62 = v36;
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    InferenceEngine::DataTensor::cast_data_to_target_tensor(v34, &v61);
    if (v62)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v62);
    }

    v38 = *(v3 + 128);
    v39 = *(v4 + 272);
    v41 = *(v39 + 128);
    v40 = *(v39 + 136);
    v59 = v41;
    v60 = v40;
    if (v40)
    {
      atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    InferenceEngine::DataTensor::cast_data_to_target_tensor(v38, &v59);
    if (v60)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v60);
    }

    v42 = *(v3 + 144);
    v43 = *(v4 + 272);
    v45 = *(v43 + 144);
    v44 = *(v43 + 152);
    v57 = v45;
    v58 = v44;
    if (v44)
    {
      atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    InferenceEngine::DataTensor::cast_data_to_target_tensor(v42, &v57);
    if (v58)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v58);
    }

    v46 = *(v3 + 160);
    v47 = *(v4 + 272);
    v49 = *(v47 + 160);
    v48 = *(v47 + 168);
    v55 = v49;
    v56 = v48;
    if (v48)
    {
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    InferenceEngine::DataTensor::cast_data_to_target_tensor(v46, &v55);
    if (v56)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v56);
    }

    InferenceEngine::DataTensor::get_3d_array<float>(*v3, v51);
    v50 = *v51[0];
    v53 = 0;
    v54 = 0;
    *buf = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(buf, *v50, v50[1], (v50[1] - *v50) >> 2);
    v75 = v51;
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v75);
    std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(*(a1 + 16), *(*(a1 + 16) + 8), *buf, v53, &v53[-*buf] >> 2);
    if (*buf)
    {
      v53 = *buf;
      operator delete(*buf);
    }

    v7 = 0;
    if (v2)
    {
      goto LABEL_7;
    }
  }

  return v7;
}

void sub_1C2FD0D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(exception_object);
}

void AnetecStreamingDecoderBaseInference::prepare_inputs(uint64_t a1, uint64_t **a2)
{
  v4 = *(a1 + 296);
  v5 = (*a2)[1];
  v46 = **a2;
  v47 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (**v4)(v4, &v46);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  v6 = *(a1 + 296);
  v7 = (*a2)[3];
  v44 = (*a2)[2];
  v45 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (**v6)(v6, &v44);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  v8 = *(a1 + 296);
  v9 = (*a2)[5];
  v42 = (*a2)[4];
  v43 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (**v8)(v8, &v42);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  v10 = *(a1 + 296);
  v11 = (*a2)[7];
  v40 = (*a2)[6];
  v41 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (**v10)(v10, &v40);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  v12 = *(a1 + 296);
  v13 = (*a2)[9];
  v38 = (*a2)[8];
  v39 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (**v12)(v12, &v38);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  v14 = *(a1 + 296);
  v15 = (*a2)[11];
  v36 = (*a2)[10];
  v37 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (**v14)(v14, &v36);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  v16 = *(a1 + 296);
  v17 = (*a2)[13];
  v34 = (*a2)[12];
  v35 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (**v16)(v16, &v34);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  v18 = *(a1 + 296);
  v19 = (*a2)[15];
  v32 = (*a2)[14];
  v33 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (**v18)(v18, &v32);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  v20 = *(a1 + 296);
  v21 = (*a2)[17];
  v30 = (*a2)[16];
  v31 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (**v20)(v20, &v30);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v22 = *(a1 + 296);
  v23 = (*a2)[19];
  v28 = (*a2)[18];
  v29 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (**v22)(v22, &v28);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  v24 = *(a1 + 296);
  v25 = (*a2)[21];
  v26 = (*a2)[20];
  v27 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (**v24)(v24, &v26);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }
}

void sub_1C2FD1248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::SoundStormIOProcessor::build_pred_lens(uint64_t a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "pred_data");
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, v6);
  if (v3)
  {
    InferenceEngine::DataTensor::get_shape(v3[5], 0, __p);
    v4 = *(__p[0] + 1);
    __p[1] = __p[0];
    operator delete(__p[0]);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(v6[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "pred_lens");
    v5 = v4;
    v6[1] = 0;
    v7 = 0;
    v6[0] = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(v6, &v5, v6, 1uLL);
    InferenceEngine::DataTensor::build_from_1d_array<float>(__p, v6);
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1C2FD1474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  v24 = *(v22 + 8);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::SoundStormIOProcessor::build_k_tensor(uint64_t a1, void *a2, int a3)
{
  std::string::basic_string[abi:ne200100]<0>(&v27, "layer_q");
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, &v27);
  if (v6)
  {
    InferenceEngine::DataTensor::get_1d_array<float>(v6[5], &__p);
    v7 = *__p;
    v31 = __p;
    operator delete(__p);
    if (v29 < 0)
    {
      operator delete(v27);
    }

    std::string::basic_string[abi:ne200100]<0>(&v27, "pred_data");
    v8 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, &v27);
    if (v8)
    {
      InferenceEngine::DataTensor::get_shape(v8[5], 0, &__p);
      v9 = *(__p + 1);
      v31 = __p;
      operator delete(__p);
      if (v29 < 0)
      {
        operator delete(v27);
      }

      v10 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 24, "q_init_schedule");
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<int>,std::vector<int>,0>(v10, &__p);
      std::string::basic_string[abi:ne200100]<0>(&v27, "q_token_mask");
      v11 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, &v27);
      if (v11)
      {
        v12 = v7;
        v14 = v11[5];
        v13 = v11[6];
        if (v13)
        {
          atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
        }

        if (v29 < 0)
        {
          operator delete(v27);
        }

        v15 = *(__p + v12);
        v16 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 24, "inference_schedule");
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<int>,std::vector<int>,0>(v16, &v27);
        v17 = a3 - v15;
        v18 = v27;
        v19 = (v17 + 1.0) / *(v27 + v12);
        v20 = cos(v19 * 3.14159265 * 0.5);
        v28 = v18;
        operator delete(v18);
        InferenceEngine::DataTensor::accumulate_sum(v14);
        v22 = v21;
        InferenceEngine::DataTensor::get_shape(v14, 0, &v27);
        v23 = *v27;
        v28 = v27;
        operator delete(v27);
        std::string::basic_string[abi:ne200100]<0>(&v27, "k_tensor");
        v24 = v20;
        v25 = (v9 - v22 / v23 - (v9 * v24));
        memset(v26, 0, sizeof(v26));
        std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(v26, &v25, v26, 1uLL);
        InferenceEngine::DataTensor::build_from_1d_array<float>(&v27, v26);
      }

      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_1C2FD1828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  v23 = *(v20 + 8);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t InferenceEngine::DataTensor::accumulate_sum(InferenceEngine::DataTensor *this)
{
  v1 = *(this + 7);
  v2 = *(this + 8) - v1;
  if (v2)
  {
    v3 = v2 >> 3;
    if (v3 <= 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = v3;
    }

    v5 = 1;
    do
    {
      v6 = *v1++;
      v5 *= v6;
      --v4;
    }

    while (v4);
  }

  else
  {
    v5 = 1;
  }

  return MEMORY[0x1EEDB0E10](v5, *(this + 11), 1);
}

void InferenceEngine::P2ASoundStormIOProcessor::build_multinomial_factor(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v13, "layer_q");
  v7 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a2, &v13);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  InferenceEngine::DataTensor::get_1d_array<float>(v7[5], &__p);
  v8 = *__p;
  v17 = __p;
  operator delete(__p);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v13);
    if (v8)
    {
      goto LABEL_8;
    }
  }

  else if (v8)
  {
    goto LABEL_8;
  }

  v9 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[]<char const>(a1 + 24, "inference_schedule");
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::get<std::vector<int>,std::vector<int>,0>(v9, &__p);
  v10 = *__p - 1;
  v17 = __p;
  operator delete(__p);
  if (v10 == a3)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "multinomial_factor");
    v11 = 0;
    v14 = 0;
    v15 = 0;
    v13 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v13, &v11, &v12, 1uLL);
    InferenceEngine::DataTensor::build_from_1d_array<float>(&__p, &v13);
  }

LABEL_8:
  std::string::basic_string[abi:ne200100]<0>(&__p, "multinomial_factor");
  v11 = 1065353216;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v13, &v11, &v12, 1uLL);
  InferenceEngine::DataTensor::build_from_1d_array<float>(&__p, &v13);
}

void sub_1C2FD1B3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::vector<float>*>,std::__wrap_iter<std::vector<float>*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C2FD1C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void AnetecStreamingDecoderBaseInference::get_outputs(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 296);
  std::string::basic_string[abi:ne200100]<0>(v68, "decoder_chunk_out");
  (*(*v4 + 32))(&v70, v4, v68);
  v5 = *a2;
  v6 = v70;
  v70 = 0uLL;
  v7 = *(v5 + 8);
  *v5 = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (*(&v70 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v70 + 1));
  }

  if (v69 < 0)
  {
    operator delete(v68[0]);
  }

  v8 = *(a1 + 296);
  std::string::basic_string[abi:ne200100]<0>(v66, "obuf_0");
  (*(*v8 + 32))(&v70, v8, v66);
  v9 = *a2;
  v10 = v70;
  v70 = 0uLL;
  v11 = *(v9 + 24);
  *(v9 + 16) = v10;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    if (*(&v70 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v70 + 1));
    }
  }

  if (v67 < 0)
  {
    operator delete(v66[0]);
  }

  v12 = *(a1 + 296);
  std::string::basic_string[abi:ne200100]<0>(v64, "obuf_1_0");
  (*(*v12 + 32))(&v70, v12, v64);
  v13 = *a2;
  v14 = v70;
  v70 = 0uLL;
  v15 = *(v13 + 40);
  *(v13 + 32) = v14;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    if (*(&v70 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v70 + 1));
    }
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  v16 = *(a1 + 296);
  std::string::basic_string[abi:ne200100]<0>(v62, "obuf_1");
  (*(*v16 + 32))(&v70, v16, v62);
  v17 = *a2;
  v18 = v70;
  v70 = 0uLL;
  v19 = *(v17 + 56);
  *(v17 + 48) = v18;
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    if (*(&v70 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v70 + 1));
    }
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  v20 = *(a1 + 296);
  std::string::basic_string[abi:ne200100]<0>(__p, "obuf_2_0");
  (*(*v20 + 32))(&v70, v20, __p);
  v21 = *a2;
  v22 = v70;
  v70 = 0uLL;
  v23 = *(v21 + 72);
  *(v21 + 64) = v22;
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    if (*(&v70 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v70 + 1));
    }
  }

  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  v24 = *(a1 + 296);
  std::string::basic_string[abi:ne200100]<0>(v58, "obuf_2");
  (*(*v24 + 32))(&v70, v24, v58);
  v25 = *a2;
  v26 = v70;
  v70 = 0uLL;
  v27 = *(v25 + 88);
  *(v25 + 80) = v26;
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    if (*(&v70 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v70 + 1));
    }
  }

  if (v59 < 0)
  {
    operator delete(v58[0]);
  }

  v28 = *(a1 + 296);
  std::string::basic_string[abi:ne200100]<0>(v56, "obuf_3_0");
  (*(*v28 + 32))(&v70, v28, v56);
  v29 = *a2;
  v30 = v70;
  v70 = 0uLL;
  v31 = *(v29 + 104);
  *(v29 + 96) = v30;
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    if (*(&v70 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v70 + 1));
    }
  }

  if (v57 < 0)
  {
    operator delete(v56[0]);
  }

  v32 = *(a1 + 296);
  std::string::basic_string[abi:ne200100]<0>(v54, "obuf_3");
  (*(*v32 + 32))(&v70, v32, v54);
  v33 = *a2;
  v34 = v70;
  v70 = 0uLL;
  v35 = *(v33 + 120);
  *(v33 + 112) = v34;
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    if (*(&v70 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v70 + 1));
    }
  }

  if (v55 < 0)
  {
    operator delete(v54[0]);
  }

  v36 = *(a1 + 296);
  std::string::basic_string[abi:ne200100]<0>(v52, "obuf_4_0");
  (*(*v36 + 32))(&v70, v36, v52);
  v37 = *a2;
  v38 = v70;
  v70 = 0uLL;
  v39 = *(v37 + 136);
  *(v37 + 128) = v38;
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    if (*(&v70 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v70 + 1));
    }
  }

  if (v53 < 0)
  {
    operator delete(v52[0]);
  }

  v40 = *(a1 + 296);
  std::string::basic_string[abi:ne200100]<0>(v50, "obuf_4");
  (*(*v40 + 32))(&v70, v40, v50);
  v41 = *a2;
  v42 = v70;
  v70 = 0uLL;
  v43 = *(v41 + 152);
  *(v41 + 144) = v42;
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    if (*(&v70 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v70 + 1));
    }
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  v44 = *(a1 + 296);
  std::string::basic_string[abi:ne200100]<0>(v48, "obuf_5");
  (*(*v44 + 32))(&v70, v44, v48);
  v45 = *a2;
  v46 = v70;
  v70 = 0uLL;
  v47 = *(v45 + 168);
  *(v45 + 160) = v46;
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
    if (*(&v70 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v70 + 1));
    }
  }

  if (v49 < 0)
  {
    operator delete(v48[0]);
  }
}

void sub_1C2FD21EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<AnetecStreamingDecoderBuf>::__on_zero_shared(void *a1)
{
  v2 = a1[24];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[22];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[20];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = a1[18];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = a1[16];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = a1[14];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = a1[12];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = a1[10];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = a1[8];
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = a1[6];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = a1[4];
  if (v12)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

uint64_t std::__function::__value_func<int ()(std::shared_ptr<AnetecStreamingDecoderBuf>)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void Agglomerate::ItemHolder<std::shared_ptr<AcousticFeature>>::~ItemHolder(void *a1)
{
  *a1 = &unk_1F42F30C0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1C692AE10);
}

void WaveformChangeModule::process_data(float *a1, uint64_t *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = *(*v4 + 8);
  v5 = *(*v4 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(*v7 + 8);
  v9 = *(*v7 + 16);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v17 = v8;
    v18 = v9;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    WaveformChangeModule::set_cur_volume(a1, &v17);
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  else
  {
    v17 = *(*v7 + 8);
    v18 = 0;
    WaveformChangeModule::set_cur_volume(a1, &v17);
  }

  if (a1[68] != a1[72])
  {
    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v10 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEBUG))
    {
      v12 = a1[68];
      *buf = 134217984;
      v20 = v12;
      _os_log_impl(&dword_1C2F95000, v10, OS_LOG_TYPE_DEBUG, "Changed Volume to %f", buf, 0xCu);
    }

    Diagnostics::log(7, "Changed Volume to %f", v11, a1[68]);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    WaveformChangeModule::volume_change(a1, v6);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  v13 = a2[1];
  v15 = *a2;
  v16 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 72))(a1, &v15);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1C2FD26A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void WaveformChangeModule::set_cur_volume(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*(a1 + 296) != *a2)
  {
    v5 = *v2;
    v6 = v2[1];
    if (v6 != *v2)
    {
      WaveformChangeModule::set_volume_from_markers(a1, v5[9], v5[10]);
      v5 = *v2;
      v6 = v2[1];
    }

    if (0x84BDA12F684BDA13 * ((v6 - v5) >> 3) >= 2)
    {
      WaveformChangeModule::set_volume_from_markers(a1, v5[36], v5[37]);
    }

    v8 = *a2;
    v7 = *(a2 + 8);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = *(a1 + 304);
    *(a1 + 296) = v8;
    *(a1 + 304) = v7;
    if (v9)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void kaldi::LinearResample::SetRemainder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  kaldi::Vector<float>::Resize(&v24, *(a1 + 96), 1, a4, a5);
  kaldi::VectorBase<float>::CopyFromVec(&v24, a1 + 88, v7, v8, v9);
  LODWORD(v10) = vcvtps_s32_f32((*(a1 + 12) * *a1) / *(a1 + 8));
  kaldi::Vector<float>::Resize((a1 + 88), v10, 0, v11, v12);
  v13 = *(a1 + 96);
  if (v13 >= 1)
  {
    v14 = -v13;
    v15 = *(a2 + 8);
    v16 = v25;
    v17 = v24;
    v18 = 0;
    v19 = *a2 - 4 * v13 + 4 * v15;
    v20 = v15 - v13;
    v21 = 1 - v13;
    while (1)
    {
      v22 = v19;
      if ((v20 & 0x8000000000000000) == 0)
      {
        goto LABEL_6;
      }

      if (v16 + v20 >= 0)
      {
        break;
      }

LABEL_7:
      ++v14;
      v18 += 4;
      v19 += 4;
      ++v20;
      if (!v21++)
      {
        goto LABEL_8;
      }
    }

    v22 = &v17[4 * v14 + 4 * v15 + 4 * v16];
LABEL_6:
    *(*(a1 + 88) + v18) = *v22;
    goto LABEL_7;
  }

LABEL_8:
  kaldi::Vector<float>::Destroy(&v24);
}

void sub_1C2FD28B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<FS2S1EncoderModule::process_data(std::shared_ptr<Agglomerate>)::$_0,std::allocator<FS2S1EncoderModule::process_data(std::shared_ptr<Agglomerate>)::$_0>,int ()(std::shared_ptr<SemanticFeature>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v6 = *a2;
  *a2 = 0;
  a2[1] = 0;
  if (*(*(a1 + 8) + 160) != 1)
  {
    operator new();
  }

  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v3 = Diagnostics_GetLogObject(void)::__profile_log_default;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C2F95000, v3, OS_LOG_TYPE_DEFAULT, "FS2S1Encoder inference cancelled.", buf, 2u);
  }

  Diagnostics::log(5, "FS2S1Encoder inference cancelled.", v4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return 1;
}

void sub_1C2FD2E10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, uint64_t a18, char *a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (__p)
  {
    operator delete(__p);
  }

  v26 = *(v24 - 128);
  if (v26)
  {
    *(v24 - 120) = v26;
    operator delete(v26);
  }

  a19 = &a24;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a19);
  std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(a1);
}

void *std::vector<std::vector<float>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void FS2S1EncoderBaseInference::get_alignment_outputs(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 24);
  std::string::basic_string[abi:ne200100]<0>(__p, "alignment_support");
  parameter_value = InferenceEngine::MilInferenceModel::get_parameter_value_if<BOOL>(*(v4 + 8), __p, 0);
  v6 = parameter_value;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
    if (!v6)
    {
      return;
    }
  }

  else if (!parameter_value)
  {
    return;
  }

  v7 = *(a1 + 24);
  std::string::basic_string[abi:ne200100]<0>(v9, "duration_alignments");
  (*(*v7 + 32))(&v11, v7, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  InferenceEngine::DataTensor::get_2d_array<int>(v11, __p);
  v8 = *a2;
  std::vector<std::vector<int>>::__vdeallocate((v8 + 56));
  *(v8 + 56) = *__p;
  *(v8 + 72) = v14;
  __p[1] = 0;
  v14 = 0;
  __p[0] = 0;
  v15 = __p;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v15);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void sub_1C2FD30D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t InferenceEngine::MilInferenceModel::get_parameter_value_if<BOOL>(uint64_t a1, const void **a2, char a3)
{
  v4 = (a1 + 48);
  if (*(a1 + 48) == 1 && *(a1 + 56) + 8 != std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(*(a1 + 56), a2))
  {
    v6 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v4, a2);
    v8 = 0;
    nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(v6, &v8);
    a3 = v8;
  }

  return a3 & 1;
}

void InferenceEngine::DataUtils::convert_data_to_2d_array<int>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  if (*(a2 + 8) - *a2 != 16)
  {
    InferenceEngine::DataUtils::convert_data_to_2d_array<float>();
  }

  v7 = *v4;
  std::vector<int>::vector[abi:ne200100](__p, v4[1]);
  std::vector<std::vector<int>>::vector[abi:ne200100](a3, v7);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v8 = *a2;
  if (**a2)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      memcpy(*(*a3 + v9), (a1 + 4 * v8[1] * v10++), 4 * v8[1]);
      v8 = *a2;
      v9 += 24;
    }

    while (v10 < **a2);
  }
}

void sub_1C2FD3268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void InferenceEngine::DataTensor::get_2d_array<int>(InferenceEngine::DataTensor *this@<X0>, void *a2@<X8>)
{
  v4 = (this + 32);
  if (*(this + 55) < 0)
  {
    if (*(this + 5) != 4 || **v4 != 842231910)
    {
      if (*(this + 5) == 4 && **v4 == 909209702)
      {
        goto LABEL_22;
      }

      if (*(this + 5) != 5)
      {
        goto LABEL_20;
      }

      v4 = *v4;
      goto LABEL_11;
    }

LABEL_21:
    if (!std::type_info::operator==[abi:ne200100](MEMORY[0x1E69E5478], MEMORY[0x1E69E5468]))
    {
      InferenceEngine::DataTensor::get_2d_array<float>();
    }

    goto LABEL_22;
  }

  v5 = *(this + 55);
  if (v5 == 4)
  {
    if (*v4 != 842231910)
    {
      if (*v4 != 909209702)
      {
        goto LABEL_20;
      }

      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v5 != 5)
  {
    goto LABEL_20;
  }

LABEL_11:
  v6 = *v4;
  v7 = *(v4 + 4);
  if (v6 != 863268457 || v7 != 50)
  {
LABEL_20:
    InferenceEngine::DataTensor::get_2d_array<float>();
  }

  if (!std::type_info::operator==[abi:ne200100](MEMORY[0x1E69E5478], MEMORY[0x1E69E5478]))
  {
    InferenceEngine::DataTensor::get_2d_array<float>();
  }

LABEL_22:
  v9 = *(this + 11);
  InferenceEngine::DataTensor::get_shape(this, 0, __p);
  InferenceEngine::DataUtils::convert_data_to_2d_array<int>(v9, __p, a2);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1C2FD33E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C2FD34FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C2FD3610(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](unsigned __int8 *a1, const void **a2)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = *a1;
    if (v6 > 9)
    {
      v7 = "number";
    }

    else
    {
      v7 = off_1E81B1180[v6];
    }

    std::string::basic_string[abi:ne200100]<0>(&v10, v7);
    v8 = std::string::insert(&v10, 0, "cannot use operator[] with a string argument with ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v12 = v8->__r_.__value_.__r.__words[2];
    v11 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::type_error::create(305, &v11, exception);
  }

  v3 = *(a1 + 1);
  *&v11 = a2;
  return std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v3, a2) + 56;
}

void sub_1C2FD37C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void std::vector<std::vector<int>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::vector<int>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void *std::vector<std::vector<int>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<int>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::vector<int>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void TacotronAlignment::append_alignments(uint64_t a1, char ***a2)
{
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v4 = (a1 + 64);
  if (v5 == v6)
  {
    if (v4 != a2)
    {
      v9 = *a2;
      v10 = a2[1];
      v11 = 0xAAAAAAAAAAAAAAABLL * (v10 - *a2);

      std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v4, v9, v10, v11);
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>((v5 + v7 * 8), *(v5 + v7 * 8 + 8), (*a2)[v7], (*a2)[v7 + 1], ((*a2)[v7 + 1] - (*a2)[v7]) >> 2);
      ++v8;
      v5 = *(a1 + 64);
      v7 += 3;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 72) - v5) >> 3) > v8);
  }
}

char **std::__copy_impl::operator()[abi:ne200100]<std::vector<int> *,std::vector<int> *,std::vector<int> *>(int a1, char **a2, char **a3, char **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a4, *v5, v5[1], (v5[1] - *v5) >> 2);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t std::vector<TacotronPhoneFeature>::__init_with_size[abi:ne200100]<TacotronPhoneFeature*,TacotronPhoneFeature*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<TacotronPhoneFeature>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C2FD3B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<TacotronPhoneFeature>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TacotronPhoneFeature>>(unint64_t a1)
{
  if (a1 < 0x276276276276277)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<TacotronPhoneFeature>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TacotronPhoneFeature>>(a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<TacotronPhoneFeature>,TacotronPhoneFeature*,TacotronPhoneFeature*,TacotronPhoneFeature*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v14 = this;
  v15 = this;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      if (*(v6 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v4 + 1, *(v6 + 3), *(v6 + 4));
      }

      else
      {
        v8 = *(v6 + 24);
        v4[1].__r_.__value_.__r.__words[2] = *(v6 + 5);
        *&v4[1].__r_.__value_.__l.__data_ = v8;
      }

      v9 = v6[3];
      v10 = v6[4];
      v4[3].__r_.__value_.__l.__size_ = 0;
      *&v4[2].__r_.__value_.__l.__data_ = v9;
      *&v4[2].__r_.__value_.__r.__words[2] = v10;
      v4[3].__r_.__value_.__r.__words[2] = 0;
      v4[4].__r_.__value_.__r.__words[0] = 0;
      std::vector<MarkerRecord>::__init_with_size[abi:ne200100]<MarkerRecord*,MarkerRecord*>(&v4[3].__r_.__value_.__l.__size_, *(v6 + 10), *(v6 + 11), 0x6DB6DB6DB6DB6DB7 * ((*(v6 + 11) - *(v6 + 10)) >> 3));
      v6 = (v6 + 104);
      v4 = (v15 + 104);
      v15 = (v15 + 104);
    }

    while (v6 != a3);
  }

  v13 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TacotronPhoneFeature>,TacotronPhoneFeature*>>::~__exception_guard_exceptions[abi:ne200100](v12);
  return v4;
}

void sub_1C2FD3CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TacotronPhoneFeature>,TacotronPhoneFeature*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::vector<MarkerRecord>::__init_with_size[abi:ne200100]<MarkerRecord*,MarkerRecord*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MarkerRecord>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C2FD3DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MarkerRecord>>(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<MarkerRecord>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MarkerRecord>>(a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MarkerRecord>,MarkerRecord*,MarkerRecord*,MarkerRecord*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v15 = a4;
  v16 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  v14 = 0;
  if (a2 != a3)
  {
    v6 = (a2 + 8);
    do
    {
      v7 = v6 - 8;
      *v4 = *(v6 - 1);
      v8 = (v4 + 8);
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v6, *(v6 + 1));
        v10 = v16;
      }

      else
      {
        v9 = *v6;
        *(v4 + 24) = *(v6 + 2);
        *&v8->__r_.__value_.__l.__data_ = v9;
        v10 = v4;
      }

      v11 = *(v6 + 24);
      *(v4 + 48) = *(v6 + 20);
      *(v4 + 32) = v11;
      v4 = v10 + 56;
      v16 = v10 + 56;
      v6 = (v6 + 56);
    }

    while (v7 + 56 != a3);
  }

  v14 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MarkerRecord>,MarkerRecord*>>::~__exception_guard_exceptions[abi:ne200100](v13);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MarkerRecord>,MarkerRecord*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      if (*(v3 - 25) < 0)
      {
        operator delete(*(v3 - 48));
      }

      v3 -= 56;
    }
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TacotronPhoneFeature>,TacotronPhoneFeature*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = v2 - 3;
      do
      {
        v7 = v4;
        std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](&v7);
        if (*(v4 - 33) < 0)
        {
          operator delete(*(v4 - 7));
        }

        if (*(v4 - 57) < 0)
        {
          operator delete(*(v4 - 10));
        }

        v5 = v4 - 10;
        v4 -= 13;
      }

      while (v5 != v3);
    }
  }

  return a1;
}

double TacotronAlignment::generate_speech_rate(void *a1, uint64_t a2, uint64_t *a3, unint64_t a4, int a5, uint64_t a6)
{
  std::vector<float>::vector[abi:ne200100](__p, a4);
  v12 = *(a2 + 64);
  if (*(a2 + 72) - v12 == 24 && (a4 > 1 || a6 == (v12[1] - *v12) >> 2))
  {
    if (*(a2 + 124))
    {
      v14 = *(a2 + 160);
      v13 = (a2 + 160);
      std::vector<float>::__assign_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(__p, (*(v13 - 9) + 4 * v14), (*(v13 - 9) + 4 * (v14 + a4)), a4);
    }

    else
    {
      v16 = *(v12[1] - 4);
      if (v16 <= a4)
      {
        v17 = a4;
      }

      else
      {
        v17 = v16;
      }

      std::vector<float>::resize((a2 + 88), v17);
      v18 = **(a2 + 64);
      v19 = *(*(a2 + 64) + 8);
      v20 = *(a2 + 88);
      v21 = v19 - v18;
      if (v19 != v18)
      {
        v22 = 0;
        v23 = 0;
        v25 = *a3;
        v24 = a3[1];
        v26 = -991146299 * ((v24 - *a3) >> 3) - 1;
        v27 = v21 >> 2;
        if (v27 <= 1)
        {
          v27 = 1;
        }

        do
        {
          LODWORD(v28) = llroundf(*(v18 + 4 * v22));
          if (v23 <= v28)
          {
            v28 = v28;
          }

          else
          {
            v28 = v23;
          }

          if (v24 == v25)
          {
            v30 = 1.0;
          }

          else
          {
            if (v26 >= v22)
            {
              v29 = v22;
            }

            else
            {
              v29 = v26;
            }

            v30 = *(v25 + 104 * v29 + 64);
          }

          if (v28 > v23)
          {
            v31 = &v20[4 * v23];
            v32 = v28 - v23;
            v33 = (v32 + 3) & 0xFFFFFFFFFFFFFFFCLL;
            v34 = vdupq_n_s64(v32 - 1);
            v35 = (v31 + 8);
            v36 = 1;
            do
            {
              v37 = vdupq_n_s64(v36 - 1);
              v38 = vmovn_s64(vcgeq_u64(v34, vorrq_s8(v37, xmmword_1C378AF00)));
              if (vuzp1_s16(v38, 2).u8[0])
              {
                *(v35 - 2) = v30;
              }

              if (vuzp1_s16(v38, 2).i8[2])
              {
                *(v35 - 1) = v30;
              }

              if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v34, vorrq_s8(v37, xmmword_1C378AEF0)))).i32[1])
              {
                *v35 = v30;
                v35[1] = v30;
              }

              v36 += 4;
              v35 += 4;
              v33 -= 4;
            }

            while (v33);
          }

          ++v22;
          v23 = v28;
        }

        while (v22 != v27);
      }

      *(a2 + 124) = 1;
      std::vector<float>::__assign_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(__p, v20, &v20[4 * a4], a4);
      v13 = (a2 + 160);
    }

    *v13 += a4;
    result = *__p;
    *a1 = *__p;
    a1[2] = v41;
  }

  else
  {
    memset(v39, 0, sizeof(v39));
    std::vector<TacotronPhoneFeature>::__init_with_size[abi:ne200100]<TacotronPhoneFeature*,TacotronPhoneFeature*>(v39, *a3, a3[1], 0x4EC4EC4EC4EC4EC5 * ((a3[1] - *a3) >> 3));
    TacotronAlignment::generate_speech_rate(a1, a2, v39, a4, a5);
    v42 = v39;
    std::vector<TacotronPhoneFeature>::__destroy_vector::operator()[abi:ne200100](&v42);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  return result;
}

void sub_1C2FD42E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<TacotronPhoneFeature>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<TacotronPhoneFeature>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<TacotronPhoneFeature>::__base_destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 3;
    do
    {
      v7 = v5;
      std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](&v7);
      if (*(v5 - 33) < 0)
      {
        operator delete(*(v5 - 7));
      }

      if (*(v5 - 57) < 0)
      {
        operator delete(*(v5 - 10));
      }

      v6 = v5 - 10;
      v5 -= 13;
    }

    while (v6 != a2);
  }

  *(a1 + 8) = a2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<RateMarker>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void FS2S1EncoderModule::process_data(uint64_t a1, uint64_t *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v4 = Diagnostics_GetLogObject(void)::__profile_log_default;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C2F95000, v4, OS_LOG_TYPE_DEFAULT, "FS2S1Encoder module start.", buf, 2u);
  }

  Diagnostics::log(5, "FS2S1Encoder module start.", v5);
  std::mutex::lock((a1 + 280));
  *(a1 + 272) = 1;
  v7 = *(*v6 + 8);
  v8 = *(*v6 + 16);
  v15 = v7;
  v16 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = 0;
  v9 = *(v7 + 8);
  if (v9 != *(v7 + 16) && *(v9 + 60) == 1)
  {
    *(a1 + 344) = 0;
  }

  TacotronAlignment::alignment_reset(*(a1 + 368));
  v10 = *(a1 + 352);
  v12 = v15;
  v13 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = 0;
  operator new();
}

void sub_1C2FD473C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v32 = v29;
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    if (!v30)
    {
LABEL_3:
      if (!v28)
      {
LABEL_8:
        v34 = *(v31 - 80);
        if (v34)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v34);
        }

        std::mutex::unlock((v27 + 280));
        _Unwind_Resume(a1);
      }

LABEL_7:
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      goto LABEL_8;
    }
  }

  else if (!v30)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  if (!v28)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t std::__function::__value_func<int ()(std::shared_ptr<SemanticFeature>)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void FastSpeechUtils::emit_word_markers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void *a7)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = *a5;
  v8 = a7[1];
  v9[2] = *a7;
  v9[3] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  SharedObjectPool::get_if<TrackSubstitutions>(v9, *a6);
  TacotronAlignment::accumulate_word_markers();
}

void sub_1C2FD4C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, std::__shared_weak_count *a30)
{
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C2FD5208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  _Unwind_Resume(a1);
}

unint64_t TrackSubstitutions::lower_bound(TrackSubstitutions *this, unint64_t a2)
{
  v2 = (this + 8);
  v3 = *(this + 1);
  if (!v3)
  {
    goto LABEL_29;
  }

  do
  {
    v4 = v3[4];
    v5 = v4 > a2;
    v6 = v4 <= a2;
    if (v5)
    {
      v2 = v3;
    }

    v3 = v3[v6];
  }

  while (v3);
  v7 = *v2;
  if (*v2)
  {
    do
    {
      v8 = v7;
      v7 = *(v7 + 8);
    }

    while (v7);
  }

  else
  {
LABEL_29:
    do
    {
      v8 = v2[2];
      v9 = *v8 == v2;
      v2 = v8;
    }

    while (v9);
  }

  if (*(v8 + 48) == 1)
  {
    v10 = *(v8 + 40);
  }

  else
  {
    v10 = *(v8 + 40) + a2 - *(v8 + 32);
  }

  v11 = this + 24;
  v12 = *(this + 47);
  if ((v12 & 0x8000000000000000) != 0)
  {
    v15 = *(this + 4);
    if (v15 >= v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = *(this + 4);
    }

    if (v15 > v10)
    {
      v11 = *v11;
      v14 = v13;
      if (v11[v13] > -65)
      {
        return v14;
      }

      return utf8_back1SafeBody(v11, 0, v13);
    }
  }

  else
  {
    if (v10 >= v12)
    {
      v13 = *(this + 47);
    }

    else
    {
      v13 = v10;
    }

    if (v10 < v12)
    {
      v14 = v13;
      if (v11[v13] >= -64)
      {
        return v14;
      }

      return utf8_back1SafeBody(v11, 0, v13);
    }
  }

  return v13;
}

unint64_t TrackSubstitutions::upper_bound(TrackSubstitutions *this, unint64_t a2)
{
  v3 = *(this + 1);
  if (!v3)
  {
    goto LABEL_15;
  }

  v4 = (this + 8);
  do
  {
    v5 = v3[4];
    if (v5 <= a2)
    {
      if (v5 == a2)
      {
        if (v3[5])
        {
          v4 = v3;
        }

        v3 += v3[5] == 0;
      }

      else
      {
        ++v3;
      }
    }

    else
    {
      v4 = v3;
    }

    v3 = *v3;
  }

  while (v3);
  if (v4 == (this + 8))
  {
LABEL_15:
    result = *(this + 47);
    if ((result & 0x8000000000000000) != 0)
    {
      return *(this + 4);
    }
  }

  else
  {
    v6 = *v4;
    if (*v4)
    {
      do
      {
        v7 = v6;
        v6 = *(v6 + 8);
      }

      while (v6);
    }

    else
    {
      v9 = v4;
      do
      {
        v7 = v9[2];
        v17 = *v7 == v9;
        v9 = v7;
      }

      while (v17);
    }

    if (*(v7 + 48) == 1)
    {
      v10 = v4[5];
    }

    else
    {
      v10 = *(v7 + 40) + a2 - *(v7 + 32);
    }

    v11 = *(this + 47);
    if ((v11 & 0x8000000000000000) != 0)
    {
      v12 = *(this + 4);
      if (v12 >= v10)
      {
        result = v10;
      }

      else
      {
        result = *(this + 4);
      }
    }

    else
    {
      if (v10 >= v11)
      {
        result = *(this + 47);
      }

      else
      {
        result = v10;
      }

      v12 = *(this + 47);
    }

    if (result != v12)
    {
      v13 = result - 1;
      if (result < 1)
      {
        return result;
      }

      v14 = (this + 24);
      if ((v11 & 0x80000000) != 0)
      {
        v16 = *(this + 4);
        v17 = result >= v16 && v16 >= 0;
        if (v17)
        {
          return result;
        }

        v15 = *v14;
        if ((*v14)[v13] > -65)
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (result >= v11)
        {
          return result;
        }

        v15 = this + 24;
        if (*(v14 + v13) >= -64)
        {
          goto LABEL_42;
        }
      }

      v13 = utf8_back1SafeBody(v15, 0, v13);
      LODWORD(v11) = *(this + 47);
      if ((v11 & 0x80000000) == 0)
      {
LABEL_42:
        LODWORD(result) = v13 + 1;
        v18 = *(v14 + v13);
        if (v18 - 245 < 0xFFFFFFCD || result == v11)
        {
          return result;
        }

        v20 = 0;
        v15 = this + 24;
        goto LABEL_51;
      }

      v15 = *v14;
LABEL_48:
      LODWORD(result) = v13 + 1;
      v18 = v15[v13];
      if (v18 - 194 >= 0x33 || result == *(this + 8))
      {
        return result;
      }

      v20 = 1;
LABEL_51:
      v21 = v15[result];
      if ((v18 & 0xF0) == 0xE0)
      {
        if ((a00000000000000[v18 & 0xF] >> (v21 >> 5)))
        {
          result = v13 + 2;
          if (v20)
          {
            if (result != *(this + 8))
            {
              v14 = *v14;
LABEL_66:
              LODWORD(v21) = *(v14 + result);
              v22 = v13 + 3;
LABEL_67:
              if (v21 < -64)
              {
                LODWORD(result) = v22;
              }
            }
          }

          else if (result != v11)
          {
            goto LABEL_66;
          }
        }
      }

      else
      {
        if (v18 <= 0xDF)
        {
          LODWORD(v21) = v21;
          v22 = v13 + 2;
          goto LABEL_67;
        }

        if ((byte_1C386E2C2[v21 >> 4] >> (v18 & 7)))
        {
          v23 = v13 + 2;
          LODWORD(result) = v13 + 2;
          if (v20)
          {
            v24 = *(this + 8);
            if (result == v24)
            {
              return result;
            }

            v14 = *v14;
            if (*(v14 + v23) > -65)
            {
              return result;
            }

            v25 = v13 + 3;
            LODWORD(result) = v13 + 3;
            if (v13 + 3 == v24)
            {
              return result;
            }
          }

          else
          {
            if (result == v11)
            {
              return result;
            }

            if (*(v14 + v23) >= -64)
            {
              return result;
            }

            v25 = v13 + 3;
            LODWORD(result) = v11;
            if (v13 + 3 == v11)
            {
              return result;
            }
          }

          if (*(v14 + v25) >= -64)
          {
            LODWORD(result) = v25;
          }

          else
          {
            LODWORD(result) = v13 + 4;
          }
        }
      }

      return result;
    }
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TTSSynthesizer::Marker>>(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TTSSynthesizer::Marker>,TTSSynthesizer::Marker*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *(v6 + 16);
      *a4 = *v6;
      *(a4 + 16) = v7;
      v8 = *(v6 + 32);
      *(a4 + 48) = *(v6 + 48);
      *(a4 + 32) = v8;
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      *(v6 + 32) = 0;
      v6 += 56;
      a4 += 56;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    do
    {
      if (*(v5 + 55) < 0)
      {
        operator delete(*(v5 + 32));
      }

      v5 += 56;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TTSSynthesizer::Marker>,TTSSynthesizer::Marker*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TTSSynthesizer::Marker>,TTSSynthesizer::Marker*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 24));
      }

      v3 -= 56;
    }
  }

  return a1;
}

uint64_t std::__split_buffer<TTSSynthesizer::Marker>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 56;
      *(a1 + 16) = v2 - 56;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__func<TTSSynthesizerEventBus::on_marker(std::function<void ()(std::vector<TTSSynthesizer::Marker> const&)>)::$_0,std::allocator<TTSSynthesizerEventBus::on_marker(std::function<void ()(std::vector<TTSSynthesizer::Marker> const&)>)::$_0>,void ()(void const*)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v4 = *a2;
  v5 = *(*v3 + 48);

  return v5();
}

void std::__shared_ptr_emplace<TacotronFeature>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 544);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v17 = (a1 + 512);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v17);
  v17 = (a1 + 488);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v17);
  v3 = *(a1 + 464);
  if (v3)
  {
    *(a1 + 472) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 440);
  if (v4)
  {
    *(a1 + 448) = v4;
    operator delete(v4);
  }

  if (*(a1 + 439) < 0)
  {
    operator delete(*(a1 + 416));
  }

  v17 = (a1 + 392);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v17);
  v5 = *(a1 + 360);
  if (v5)
  {
    *(a1 + 368) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 336);
  if (v6)
  {
    *(a1 + 344) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 312);
  if (v7)
  {
    *(a1 + 320) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 288);
  if (v8)
  {
    *(a1 + 296) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 264);
  if (v9)
  {
    *(a1 + 272) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 240);
  if (v10)
  {
    *(a1 + 248) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 216);
  if (v11)
  {
    *(a1 + 224) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 192);
  if (v12)
  {
    *(a1 + 200) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 168);
  if (v13)
  {
    *(a1 + 176) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 144);
  if (v14)
  {
    *(a1 + 152) = v14;
    operator delete(v14);
  }

  v17 = (a1 + 120);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v17);
  v15 = *(a1 + 112);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v17 = (a1 + 80);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v17);
  v16 = *(a1 + 56);
  if (v16)
  {
    *(a1 + 64) = v16;
    operator delete(v16);
  }

  v17 = (a1 + 32);
  std::vector<TacotronPhoneFeature>::__destroy_vector::operator()[abi:ne200100](&v17);
}

void std::vector<TTSSynthesizer::Marker>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 56)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

void Agglomerate::ItemHolder<std::shared_ptr<TacotronFeature>>::~ItemHolder(void *a1)
{
  *a1 = &unk_1F42EF5A0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1C692AE10);
}

void AsyncContainerModule::process_data(uint64_t a1, uint64_t *a2)
{
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3802000000;
  v22[3] = __Block_byref_object_copy_;
  v4 = *a2;
  v3 = a2[1];
  v22[4] = __Block_byref_object_dispose_;
  v22[5] = v4;
  v23 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3802000000;
  v20[3] = __Block_byref_object_copy__3;
  v6 = *(a1 + 272);
  v5 = *(a1 + 280);
  v20[4] = __Block_byref_object_dispose__4;
  v20[5] = v6;
  v21 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3002000000;
  v17 = __Block_byref_object_copy__5;
  v18 = __Block_byref_object_dispose__6;
  std::promise<void>::promise(&v19);
  std::promise<void>::get_future(v15 + 5);
  state = v13.__state_;
  v13.__state_ = 0;
  v24.__state_ = *(a1 + 288);
  *(a1 + 288) = state;
  std::future<void>::~future(&v24);
  std::future<void>::~future(&v13);
  qos_class = dispatch_queue_get_qos_class(*(a1 + 496), 0);
  v9 = qos_class_self();
  queue = *(a1 + 496);
  if (qos_class != v9)
  {
    dispatch_barrier_sync(queue, &__block_literal_global_9);
    dispatch_release(*(a1 + 496));
    queue = SiriTTS::DispatchQueue::create_queue("AsyncContainerModule", v11);
    *(a1 + 496) = queue;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = ___ZN20AsyncContainerModule12process_dataENSt3__110shared_ptrI11AgglomerateEE_block_invoke_2;
  v12[3] = &unk_1E81AFD80;
  v12[4] = v20;
  v12[5] = v22;
  v12[6] = &v14;
  v12[7] = a1;
  dispatch_async(queue, v12);
  _Block_object_dispose(&v14, 8);
  MEMORY[0x1C692ACE0](&v19);
  _Block_object_dispose(v20, 8);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Block_object_dispose(v22, 8);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }
}

void sub_1C2FD5CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  _Block_object_dispose(&a18, 8);
  MEMORY[0x1C692ACE0](v30 + 40);
  _Block_object_dispose(&a24, 8);
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  _Block_object_dispose((v31 - 96), 8);
  v33 = *(v31 - 48);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__3(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

__n128 __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void Agglomerate::set<std::shared_ptr<SemanticFeature>>(uint64_t a1, uint64_t *a2)
{
  if (!v3)
  {
    operator new();
  }

  v4 = *a2;
  v5 = a2[1];
  v7 = *a2;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = v7;
  }

  v6 = *(v3 + 16);
  *(v3 + 8) = v4;
  *(v3 + 16) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
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
      std::vector<int>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v12);
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
      std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> *>>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v12);
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

void SoundStormStreamingModule::process_data(uint64_t a1, uint64_t *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = *(*v3 + 8);
  v4 = *(*v3 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v6 = Diagnostics_GetLogObject(void)::__profile_log_default;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C2F95000, v6, OS_LOG_TYPE_DEFAULT, "SoundStorm streaming module start.", buf, 2u);
  }

  Diagnostics::log(5, "SoundStorm streaming module start.", v7);
  std::mutex::lock((a1 + 400));
  *(a1 + 392) = 1;
  v8 = *(a1 + 464);
  v10 = 1065353216;
  v11 = v8;
  operator new();
}

void sub_1C2FD63F0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  std::mutex::unlock((v2 + 400));
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void sub_1C2FD647C()
{
  if (!v0)
  {
    JUMPOUT(0x1C2FD6474);
  }

  JUMPOUT(0x1C2FD646CLL);
}

void *std::deque<std::shared_ptr<Agglomerate>>::__add_back_capacity(void *a1)
{
  v2 = a1[4];
  v3 = v2 >= 0x100;
  v4 = v2 - 256;
  if (!v3)
  {
    v7 = a1[2];
    v8 = a1[3];
    v9 = v8 - *a1;
    if (v7 - a1[1] < v9)
    {
      if (v8 != v7)
      {
        operator new();
      }

      operator new();
    }

    if (v8 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v12 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<Agglomerate> *>>(v10);
  }

  a1[4] = v4;
  v5 = a1[1];
  *&v11 = *v5;
  a1[1] = v5 + 1;
  return std::__split_buffer<std::shared_ptr<Agglomerate> *,std::allocator<std::shared_ptr<Agglomerate> *>>::emplace_back<std::shared_ptr<Agglomerate> *&>(a1, &v11);
}

void sub_1C2FD65CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  operator delete(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<std::shared_ptr<Agglomerate> *,std::allocator<std::shared_ptr<Agglomerate> *>>::emplace_back<std::shared_ptr<Agglomerate> *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<Agglomerate> *>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<std::shared_ptr<Observer>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<std::shared_ptr<Observer>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::shared_ptr<Observer>>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void Module::uncancel(Module *this)
{
  std::recursive_mutex::lock((this + 208));
  *(this + 160) = 0;

  std::recursive_mutex::unlock((this + 208));
}

void Module::yield(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *a2;
  v4 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 80))(a1, &v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1C2FD67F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void Diagnostics::get_log_path(std::__fs::filesystem::path *this)
{
  v8 = "/private/var/mobile/";
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v5, &v8);
  std::__fs::filesystem::path::path[abi:ne200100]<char [8],void>(&v4.__pn_, "Library");
  std::__fs::filesystem::operator/[abi:ne200100](&v4, &v5, &v6);
  std::__fs::filesystem::path::path[abi:ne200100]<char [5],void>(&v3.__pn_, "Logs");
  std::__fs::filesystem::operator/[abi:ne200100](&v3, &v6, &v7);
  memset(&__p, 0, sizeof(__p));
  std::string::append[abi:ne200100]<char const*,0>(&__p, "SiriTTSService", "");
  std::__fs::filesystem::operator/[abi:ne200100](&__p, &v7, this);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v3.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_1C2FD6924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v33 - 49) < 0)
  {
    operator delete(*(v33 - 72));
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN20AsyncContainerModule12process_dataENSt3__110shared_ptrI11AgglomerateEE_block_invoke_2(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a1[7];
  std::mutex::lock((v2 + 296));
  v3 = *(v2 + 160);
  if ((v3 & 1) == 0)
  {
    v4 = *(*(a1[4] + 8) + 40);
    (*(*v4 + 56))(v4);
    std::mutex::unlock((v2 + 296));
    v5 = *(*(a1[4] + 8) + 40);
    v6 = *(a1[5] + 8);
    v8 = *(v6 + 40);
    v7 = *(v6 + 48);
    v11 = v8;
    v12 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v5 + 32))(v5, &v11);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    v9 = *(*(a1[4] + 8) + 40);
    (*(*v9 + 64))(v9);
  }

  std::condition_variable::notify_all((v2 + 424));
  std::promise<void>::set_value((*(a1[6] + 8) + 40));
  if (v3)
  {
    std::mutex::unlock((v2 + 296));
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1C2FD6B14(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, __int128 buf)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a2 == 1)
  {
    v14 = __cxa_begin_catch(a1);
    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v15 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_FAULT))
    {
      v16 = (*(*v14 + 16))(v14);
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v16;
      _os_log_fault_impl(&dword_1C2F95000, v15, OS_LOG_TYPE_FAULT, "Async module worker exception: %s", &buf, 0xCu);
    }

    *(v11 + 472) = 1;
    std::condition_variable::notify_all((v11 + 424));
    __cxa_end_catch();
    JUMPOUT(0x1C2FD6A8CLL);
  }

  _Unwind_Resume(a1);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(std::string *this, std::string **a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = (v3 - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);
  std::string::append[abi:ne200100]<char const*,0>(this, v3, v4);
  return this;
}

void sub_1C2FD6C60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [8],void>(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:ne200100]<char const*,0>(this, a2, v3);
  return this;
}

void sub_1C2FD6CBC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [5],void>(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:ne200100]<char const*,0>(this, a2, v3);
  return this;
}

void sub_1C2FD6D18(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AsyncContainerModule::AsyncContainerModule(std::shared_ptr<Module>)::$_0,std::allocator<AsyncContainerModule::AsyncContainerModule(std::shared_ptr<Module>)::$_0>,void ()(void const*)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::mutex::lock((v1 + 360));
  (*(**(v1 + 272) + 16))(&v2);
  (*(*v1 + 72))(v1, &v2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::condition_variable::notify_all((v1 + 424));
  std::mutex::unlock((v1 + 360));
}

void sub_1C2FD6DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::mutex::unlock((v10 + 360));
  _Unwind_Resume(a1);
}

const void **std::__split_buffer<std::shared_ptr<Agglomerate> *,std::allocator<std::shared_ptr<Agglomerate> *>>::emplace_front<std::shared_ptr<Agglomerate> *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<Agglomerate> *>>(v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_1C2FD720C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void **a11, void *a12, void *a13, void **a14, void *__p, uint64_t a16)
{
  __p = a10;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = a12;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = a13;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v18 = *a11;
  if (*a11)
  {
    v16[3].__shared_owners_ = v18;
    operator delete(v18);
  }

  v19 = v16[2].__vftable;
  if (v19)
  {
    v16[2].__shared_owners_ = v19;
    operator delete(v19);
  }

  v20 = *a14;
  if (*a14)
  {
    v16[1].__shared_owners_ = v20;
    operator delete(v20);
  }

  std::__shared_weak_count::~__shared_weak_count(v16);
  operator delete(v21);
  _Unwind_Resume(a1);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

void std::__shared_ptr_emplace<FastSpeechUtils::FeatureScaleData>::__on_zero_shared(uint64_t a1)
{
  v5 = (a1 + 144);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (a1 + 120);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (a1 + 96);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }
}

void FastSpeech2EncoderBaseInference::get_outputs(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 16);
  std::string::basic_string[abi:ne200100]<0>(v22, "graph_encoder_output_name");
  (*(*v4 + 32))(&v24, v4, v22);
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  v5 = *(a1 + 16);
  std::string::basic_string[abi:ne200100]<0>(__p, "graph_encoder_output_alignment_name");
  (*(*v5 + 32))(&v20, v5, __p);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *(a1 + 16);
  std::string::basic_string[abi:ne200100]<0>(v14, "graph_encoder_output_decoder_length_name");
  (*(*v6 + 32))(&v16, v6, v14);
  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  InferenceEngine::DataTensor::get_2d_array<int>(v20, __dst);
  v7 = *a2;
  std::vector<std::vector<int>>::__vdeallocate((*a2 + 32));
  *(v7 + 32) = *__dst;
  *(v7 + 48) = v13;
  __dst[1] = 0;
  v13 = 0;
  __dst[0] = 0;
  v26 = __dst;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v26);
  InferenceEngine::DataTensor::get_3d_array<float>(v24, __dst);
  v8 = *a2;
  std::vector<std::vector<std::vector<float>>>::__vdeallocate((*a2 + 8));
  *(v8 + 8) = *__dst;
  *(v8 + 24) = v13;
  __dst[0] = 0;
  __dst[1] = 0;
  v13 = 0;
  v26 = __dst;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v26);
  v9 = *(v16 + 11);
  LODWORD(v8) = InferenceEngine::DataTensor::get_size(v16);
  std::vector<int>::vector[abi:ne200100](__dst, v8);
  memcpy(__dst[0], v9, 4 * v8);
  v10 = *a2;
  v11 = v10[7];
  if (v11)
  {
    v10[8] = v11;
    operator delete(v11);
    v10[7] = 0;
    v10[8] = 0;
    v10[9] = 0;
  }

  *(v10 + 7) = *__dst;
  v10[9] = v13;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }
}

void sub_1C2FD763C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, std::__shared_weak_count *a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, std::__shared_weak_count *a28)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  v30 = *(v28 - 48);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<std::vector<float>>>::__vdeallocate(void ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 3;
        v5 = v3;
        std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v5);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::__function::__func<FastSpeech2EncoderModule::process_data(std::shared_ptr<Agglomerate>)::$_0,std::allocator<FastSpeech2EncoderModule::process_data(std::shared_ptr<Agglomerate>)::$_0>,int ()(std::shared_ptr<FastSpeechDecoderFeature>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v96 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v2 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v4 = *(a1 + 8);
  if (*(v4 + 160) != 1)
  {
    if (*(**(a1 + 16) + 2))
    {
      goto LABEL_8;
    }

    v10.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v11 = (v3 + 56);
    v12 = **(v3 + 56);
    v13 = ((v10.__d_.__rep_ - **(a1 + 24)) / 1000000) / 1000.0;
    v14 = v12 / v13 / (1000.0 / *(v4 + 280));
    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v15 = v14;
    v16 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v18 = **(a1 + 32) == 0;
      v19 = **v11;
      v20 = **(a1 + 40);
      LODWORD(buf.__r_.__value_.__l.__data_) = 67110400;
      HIDWORD(buf.__r_.__value_.__r.__words[0]) = v18;
      LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
      *(&buf.__r_.__value_.__r.__words[1] + 2) = v12;
      HIWORD(buf.__r_.__value_.__r.__words[1]) = 2048;
      *&buf.__r_.__value_.__r.__words[2] = v13;
      v90 = 2048;
      v91 = v19 / v13;
      v92 = 2048;
      v21 = v15;
      v93 = v21;
      v94 = 1024;
      v95 = v20;
      _os_log_impl(&dword_1C2F95000, v16, OS_LOG_TYPE_DEFAULT, "Parallel AM encoder inference first = %d, total frames = %d, Run Time : %.3f s, %.3f frames/s, rtf: %.3f, inference_idx = %d", &buf, 0x32u);
    }

    else
    {
      v21 = v15;
    }

    Diagnostics::log(5, "Parallel AM encoder inference first = %d, total frames = %d, Run Time : %.3f s, %.3f frames/s, rtf: %.3f, inference_idx = %d", v17, **(a1 + 32) == 0, v12, *&v13, **v11 / v13, *&v21, **(a1 + 40));
    if (v12)
    {
LABEL_176:
      operator new();
    }

    v22 = *(a1 + 48);
    if (*(v22 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v81, *v22, *(v22 + 1));
    }

    else
    {
      v23 = *v22;
      v81.__r_.__value_.__r.__words[2] = *(v22 + 2);
      *&v81.__r_.__value_.__l.__data_ = v23;
    }

    if (*(v4 + 311) < 0)
    {
      std::string::__init_copy_ctor_external(&v80, *(v4 + 288), *(v4 + 296));
    }

    else
    {
      v80 = *(v4 + 288);
    }

    v24 = *(a1 + 16);
    v26 = *v24;
    v25 = v24[1];
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v79 = v25;
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v27 = v25;
    if (!MGGetBoolAnswer())
    {
LABEL_168:
      if (v2)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v2);
      }

      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }

      if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v80.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v81.__r_.__value_.__l.__data_);
      }

      goto LABEL_176;
    }

    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v80.__r_.__value_.__l.__size_)
      {
        std::string::__init_copy_ctor_external(&buf, v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_);
        goto LABEL_34;
      }
    }

    else if (*(&v80.__r_.__value_.__s + 23))
    {
      buf = v80;
LABEL_34:
      if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v80.__r_.__value_.__l.__data_);
      }

      v80 = buf;
      if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v81.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v81.__r_.__value_.__l.__size_;
      }

      v30 = &v86;
      std::string::basic_string[abi:ne200100](&v86, size + 1);
      if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v30 = v86.__r_.__value_.__r.__words[0];
      }

      if (size)
      {
        if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = &v81;
        }

        else
        {
          v31 = v81.__r_.__value_.__r.__words[0];
        }

        memmove(v30, v31, size);
      }

      *(&v30->__r_.__value_.__l.__data_ + size) = 47;
      if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = &v80;
      }

      else
      {
        v32 = v80.__r_.__value_.__r.__words[0];
      }

      if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v33 = v80.__r_.__value_.__l.__size_;
      }

      v34 = std::string::append(&v86, v32, v33);
      v35 = *&v34->__r_.__value_.__l.__data_;
      buf.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
      *&buf.__r_.__value_.__l.__data_ = v35;
      v34->__r_.__value_.__l.__size_ = 0;
      v34->__r_.__value_.__r.__words[2] = 0;
      v34->__r_.__value_.__r.__words[0] = 0;
      v36 = std::string::append(&buf, "_fs2_enc_input_scale.bin");
      v37 = *&v36->__r_.__value_.__l.__data_;
      v88 = v36->__r_.__value_.__r.__words[2];
      v87 = v37;
      v36->__r_.__value_.__l.__size_ = 0;
      v36->__r_.__value_.__r.__words[2] = 0;
      v36->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v86.__r_.__value_.__l.__data_);
      }

      if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v38 = v81.__r_.__value_.__l.__size_;
      }

      v39 = &v85;
      std::string::basic_string[abi:ne200100](&v85, v38 + 1);
      if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v39 = v85.__r_.__value_.__r.__words[0];
      }

      if (v38)
      {
        if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v40 = &v81;
        }

        else
        {
          v40 = v81.__r_.__value_.__r.__words[0];
        }

        memmove(v39, v40, v38);
      }

      *(&v39->__r_.__value_.__l.__data_ + v38) = 47;
      if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = &v80;
      }

      else
      {
        v41 = v80.__r_.__value_.__r.__words[0];
      }

      if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v42 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v42 = v80.__r_.__value_.__l.__size_;
      }

      v43 = std::string::append(&v85, v41, v42);
      v44 = *&v43->__r_.__value_.__l.__data_;
      buf.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
      *&buf.__r_.__value_.__l.__data_ = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      v45 = std::string::append(&buf, "_fs2_enc_input_bias.bin");
      v46 = *&v45->__r_.__value_.__l.__data_;
      v86.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
      *&v86.__r_.__value_.__l.__data_ = v46;
      v45->__r_.__value_.__l.__size_ = 0;
      v45->__r_.__value_.__r.__words[2] = 0;
      v45->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }

      if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v47 = v81.__r_.__value_.__l.__size_;
      }

      v48 = &v84;
      std::string::basic_string[abi:ne200100](&v84, v47 + 1);
      if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v48 = v84.__r_.__value_.__r.__words[0];
      }

      if (v47)
      {
        if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v49 = &v81;
        }

        else
        {
          v49 = v81.__r_.__value_.__r.__words[0];
        }

        memmove(v48, v49, v47);
      }

      *(&v48->__r_.__value_.__l.__data_ + v47) = 47;
      if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = &v80;
      }

      else
      {
        v50 = v80.__r_.__value_.__r.__words[0];
      }

      if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v51 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v51 = v80.__r_.__value_.__l.__size_;
      }

      v52 = std::string::append(&v84, v50, v51);
      v53 = *&v52->__r_.__value_.__l.__data_;
      buf.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
      *&buf.__r_.__value_.__l.__data_ = v53;
      v52->__r_.__value_.__l.__size_ = 0;
      v52->__r_.__value_.__r.__words[2] = 0;
      v52->__r_.__value_.__r.__words[0] = 0;
      v54 = std::string::append(&buf, "_fs2_enc_input_switch.bin");
      v55 = *&v54->__r_.__value_.__l.__data_;
      v85.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
      *&v85.__r_.__value_.__l.__data_ = v55;
      v54->__r_.__value_.__l.__size_ = 0;
      v54->__r_.__value_.__r.__words[2] = 0;
      v54->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v84.__r_.__value_.__l.__data_);
      }

      if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v56 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v56 = v81.__r_.__value_.__l.__size_;
      }

      v57 = &v83;
      std::string::basic_string[abi:ne200100](&v83, v56 + 1);
      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v57 = v83.__r_.__value_.__r.__words[0];
      }

      if (v56)
      {
        if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v58 = &v81;
        }

        else
        {
          v58 = v81.__r_.__value_.__r.__words[0];
        }

        memmove(v57, v58, v56);
      }

      *(&v57->__r_.__value_.__l.__data_ + v56) = 47;
      if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = &v80;
      }

      else
      {
        v59 = v80.__r_.__value_.__r.__words[0];
      }

      if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v60 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v60 = v80.__r_.__value_.__l.__size_;
      }

      v61 = std::string::append(&v83, v59, v60);
      v62 = *&v61->__r_.__value_.__l.__data_;
      buf.__r_.__value_.__r.__words[2] = v61->__r_.__value_.__r.__words[2];
      *&buf.__r_.__value_.__l.__data_ = v62;
      v61->__r_.__value_.__l.__size_ = 0;
      v61->__r_.__value_.__r.__words[2] = 0;
      v61->__r_.__value_.__r.__words[0] = 0;
      v63 = std::string::append(&buf, "_fs2_enc_output.bin");
      v64 = *&v63->__r_.__value_.__l.__data_;
      v84.__r_.__value_.__r.__words[2] = v63->__r_.__value_.__r.__words[2];
      *&v84.__r_.__value_.__l.__data_ = v64;
      v63->__r_.__value_.__l.__size_ = 0;
      v63->__r_.__value_.__r.__words[2] = 0;
      v63->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v65 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v65 = v81.__r_.__value_.__l.__size_;
      }

      v66 = &v82;
      std::string::basic_string[abi:ne200100](&v82, v65 + 1);
      if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v66 = v82.__r_.__value_.__r.__words[0];
      }

      if (v65)
      {
        if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v67 = &v81;
        }

        else
        {
          v67 = v81.__r_.__value_.__r.__words[0];
        }

        memmove(v66, v67, v65);
      }

      *(&v66->__r_.__value_.__l.__data_ + v65) = 47;
      if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v68 = &v80;
      }

      else
      {
        v68 = v80.__r_.__value_.__r.__words[0];
      }

      if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v69 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v69 = v80.__r_.__value_.__l.__size_;
      }

      v70 = std::string::append(&v82, v68, v69);
      v71 = *&v70->__r_.__value_.__l.__data_;
      buf.__r_.__value_.__r.__words[2] = v70->__r_.__value_.__r.__words[2];
      *&buf.__r_.__value_.__l.__data_ = v71;
      v70->__r_.__value_.__l.__size_ = 0;
      v70->__r_.__value_.__r.__words[2] = 0;
      v70->__r_.__value_.__r.__words[0] = 0;
      v27 = v79;
      v72 = std::string::append(&buf, "_fs2_enc_output_length.bin");
      v73 = *&v72->__r_.__value_.__l.__data_;
      v83.__r_.__value_.__r.__words[2] = v72->__r_.__value_.__r.__words[2];
      *&v83.__r_.__value_.__l.__data_ = v73;
      v72->__r_.__value_.__l.__size_ = 0;
      v72->__r_.__value_.__r.__words[2] = 0;
      v72->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v82.__r_.__value_.__l.__data_);
      }

      if (v26 && v26[15] != v26[16] && v26[24] != v26[25] && v26[33] != v26[34] && v26[18] != v26[19] && v26[27] != v26[28] && v26[36] != v26[37] && v26[21] != v26[22] && v26[30] != v26[31] && v26[39] != v26[40])
      {
        std::allocate_shared[abi:ne200100]<FastSpeechUtils::FeatureScaleData,std::allocator<FastSpeechUtils::FeatureScaleData>,std::vector<float> &,std::vector<float> &,std::vector<float> &,std::vector<float> &,std::vector<float> &,std::vector<float> &,std::vector<float> &,std::vector<float> &,std::vector<float> &,0>();
      }

      if (Diagnostics_GetLogObject(void)::onceToken != -1)
      {
        dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
      }

      v74 = Diagnostics_GetLogObject(void)::__profile_log_default;
      if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_1C2F95000, v74, OS_LOG_TYPE_DEFAULT, "# Dumping encoder input failed - nullptr", &buf, 2u);
      }

      Diagnostics::log(5, "# Dumping encoder input failed - nullptr", v75);
      if (*(v3 + 8) != *(v3 + 16) && *(v3 + 56) != *(v3 + 64))
      {
        v76 = std::string::basic_string[abi:ne200100]<0>(&buf, "graph_decoder_input_decoder_input_name");
        InferenceEngine::DataTensor::build_from_3d_array<float>(v76, v3 + 8);
      }

      if (Diagnostics_GetLogObject(void)::onceToken != -1)
      {
        dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
      }

      v77 = Diagnostics_GetLogObject(void)::__profile_log_default;
      if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_1C2F95000, v77, OS_LOG_TYPE_DEFAULT, "# Dumping encoder output failed - nullptr", &buf, 2u);
      }

      Diagnostics::log(5, "# Dumping encoder output failed - nullptr", v78);
      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v84.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v86.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v88) < 0)
      {
        operator delete(v87);
      }

      goto LABEL_168;
    }

    v28 = time(0);
    std::to_string(&buf, v28);
    goto LABEL_34;
  }

  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v5 = Diagnostics_GetLogObject(void)::__profile_log_default;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_1C2F95000, v5, OS_LOG_TYPE_DEFAULT, "Parallel AM encoder inference cancelled.", &buf, 2u);
  }

  Diagnostics::log(5, "Parallel AM encoder inference cancelled.", v6);
LABEL_8:
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v8 = *MEMORY[0x1E69E9840];
  return 1;
}