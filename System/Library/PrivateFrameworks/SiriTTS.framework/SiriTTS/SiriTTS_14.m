void sub_1C308FE00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (*(v18 - 193) < 0)
  {
    operator delete(*(v18 - 216));
  }

  if (*(v18 - 161) < 0)
  {
    operator delete(*(v18 - 184));
  }

  if (*(v18 - 137) < 0)
  {
    operator delete(*(v18 - 160));
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::SharedNceComponent::WriteData(_DWORD *a1, void *a2, int a3, int a4)
{
  v8 = a1 + 34;
  (*(*a1 + 168))(a1);
  kaldi::CuMatrixBase<float>::Write((a1 + 22), a2, a3, a4);

  kaldi::CuVectorBase<float>::Write(v8, a2, a3, v9, v10);
}

uint64_t kaldi::nnet1::SharedNceComponent::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v8 = *(a1 + 424);
  if (v8 && (v9 = *(v8 + 16), v9 >= 1))
  {
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v14, a3, 0, *(a3 + 20), 0, v9);
    kaldi::CuMatrixBase<float>::AddVecToRows(&v14, a1 + 312, v10, v11, v12, 1.0, 0.0);
    kaldi::CuMatrixBase<float>::AddMatMat(&v14, a2, 111, a1 + 168, 0x70);
    v14 = &unk_1F42BFE90;
    v15 = 0u;
    v16 = 0u;
    return kaldi::CuMatrixBase<float>::~CuMatrixBase(&v14);
  }

  else
  {
    kaldi::CuMatrixBase<float>::AddVecToRows(a3, a1 + 136, a3, a4, a5, 1.0, 0.0);

    return kaldi::CuMatrixBase<float>::AddMatMat(a3, a2, 111, a1 + 88, 0x70);
  }
}

void sub_1C3090008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, __int128 a11, __int128 a12)
{
  a10 = &unk_1F42BFE90;
  a11 = 0u;
  a12 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a10);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::SharedNceComponent::PropagateFnc(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, const char *a5)
{
  kaldi::CuVectorBase<float>::CopyFromVec(a3, a1 + 136, a3, a4, a5);

  return kaldi::CuVectorBase<float>::AddMatVec(a3, a1 + 88, 111, a2, v8);
}

uint64_t kaldi::nnet1::SharedNceComponent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 424);
  if (v7 && (v8 = *(v7 + 16), v8 >= 1))
  {
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v10, a4, 0, *(a4 + 20), 0, v8);
    kaldi::CuMatrixBase<float>::AddMatMat(a5, &v10, 111, a1 + 168, 0x6F);
    v10 = &unk_1F42BFE90;
    v11 = 0u;
    v12 = 0u;
    return kaldi::CuMatrixBase<float>::~CuMatrixBase(&v10);
  }

  else
  {

    return kaldi::CuMatrixBase<float>::AddMatMat(a5, a4, 111, a1 + 88, 0x6F);
  }
}

void sub_1C3090190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, __int128 a11, __int128 a12)
{
  a10 = &unk_1F42BFE90;
  a11 = 0u;
  a12 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a10);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::SharedNceComponent::GetUnitOutputFnc(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int16x4_t a5)
{
  a5.i32[0] = *(*(a1 + 144) + 4 * a3);
  kaldi::CuVectorBase<float>::Set(a4, a5);
  if (*(a1 + 108) <= a3)
  {
    kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x225, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v9);
  }

  v10 = *(a1 + 104);
  v11 = *(a1 + 120);
  v13[1] = *(a1 + 96) + 4 * (*(a1 + 112) * a3);
  v13[0] = &unk_1F42BFF30;
  v13[2] = v10;
  v13[3] = v11;
  return kaldi::CuVectorBase<float>::AddMatVec(a4, a2, 111, v13, v9);
}

float kaldi::nnet1::SharedNceComponent::GetUnitOutputFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 108) <= a3)
  {
    kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x225, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", a5);
  }

  v5 = *(*(a1 + 144) + 4 * a3);
  v6 = *(a1 + 104);
  v7 = *(a1 + 120);
  v10[1] = *(a1 + 96) + 4 * *(a1 + 112) * a3;
  v10[0] = &unk_1F42BFF30;
  v10[2] = v6;
  v10[3] = v7;
  kaldi::VecVec<float>(a2, v10, a3, a4, a5);
  return v5 + v8;
}

void kaldi::nnet1::SharedNceComponent::ReadData(float *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  while (kaldi::Peek(a2, a3) == 60)
  {
    memset(v36, 0, 24);
    kaldi::ReadToken(a2, a3, v36, v7, v8);
    if (SHIBYTE(v36[2]) < 0)
    {
      if (v36[1] != 15 || (*v36[0] == 0x61526E7261654C3CLL ? (v13 = *(v36[0] + 7) == 0x3E66656F43657461) : (v13 = 0), v12 = a1 + 102, !v13))
      {
        if (v36[1] != 19 || (*v36[0] == 0x61654C736169423CLL ? (v14 = *(v36[0] + 1) == 0x6F43657461526E72) : (v14 = 0), v14 ? (v15 = *(v36[0] + 11) == 0x3E66656F43657461) : (v15 = 0), v12 = a1 + 103, !v15))
        {
          if (v36[1] != 9)
          {
            if (v36[1] != 18 || (*v36[0] == 0x6E6569646172473CLL ? (v16 = *(v36[0] + 1) == 0x7079546D726F4E74) : (v16 = 0), v16 ? (v17 = *(v36[0] + 8) == 15973) : (v17 = 0), !v17))
            {
LABEL_70:
              kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-shared-nce-component.h", 131);
              v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "unrecognized config token ", 26);
              if (SHIBYTE(v36[2]) >= 0)
              {
                v31 = v36;
              }

              else
              {
                v31 = v36[0];
              }

              if (SHIBYTE(v36[2]) >= 0)
              {
                v32 = HIBYTE(v36[2]);
              }

              else
              {
                v32 = v36[1];
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v31, v32);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
            }

            goto LABEL_64;
          }

          v18 = v36[0];
          goto LABEL_46;
        }
      }
    }

    else if (HIBYTE(v36[2]) > 0x11u)
    {
      if (HIBYTE(v36[2]) == 18)
      {
        if (v36[0] != 0x6E6569646172473CLL || v36[1] != 0x7079546D726F4E74 || LOWORD(v36[2]) != 15973)
        {
          goto LABEL_70;
        }

LABEL_64:
        __p[0] = 0;
        __p[1] = 0;
        v35 = 0;
        kaldi::ReadToken(a2, a3, __p, v9, v10);
        *(a1 + 104) = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
        if (SHIBYTE(v35) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_52;
      }

      if (HIBYTE(v36[2]) != 19)
      {
        goto LABEL_70;
      }

      v19 = v36[0] == 0x61654C736169423CLL && v36[1] == 0x6F43657461526E72;
      v20 = v19 && *(&v36[1] + 3) == 0x3E66656F43657461;
      v12 = a1 + 103;
      if (!v20)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (HIBYTE(v36[2]) == 9)
      {
        v18 = v36;
LABEL_46:
        v21 = *v18;
        v22 = *(v18 + 8);
        v23 = v21 == 0x6461724778614D3CLL && v22 == 62;
        v12 = a1 + 105;
        if (!v23)
        {
          goto LABEL_70;
        }

        goto LABEL_51;
      }

      if (HIBYTE(v36[2]) != 15)
      {
        goto LABEL_70;
      }

      v11 = v36[0] == 0x61526E7261654C3CLL && *(v36 + 7) == 0x3E66656F43657461;
      v12 = a1 + 102;
      if (!v11)
      {
        goto LABEL_70;
      }
    }

LABEL_51:
    kaldi::ReadBasicType<float>(a2, a3, v12);
LABEL_52:
    if (SHIBYTE(v36[2]) < 0)
    {
      operator delete(v36[0]);
    }
  }

  kaldi::CuMatrix<float>::Read((a1 + 22), a2, a3, a4);
  kaldi::CuVector<float>::Read((a1 + 34), a2, a3, v26, v27);
  v29 = *(a1 + 27);
  if (v29 != *(a1 + 3))
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-shared-nce-component.h", 0x8B, "linearity_.NumRows() == output_dim_", v28);
  }

  if (*(a1 + 26) != *(a1 + 2))
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-shared-nce-component.h", 0x8C, "linearity_.NumCols() == input_dim_", v28);
  }

  if (*(a1 + 38) != v29)
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-shared-nce-component.h", 0x8D, "bias_.Dim() == output_dim_", v28);
  }
}

void *kaldi::nnet1::SharedNceComponent::WriteConfig(_DWORD *a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>", a4, a5);
  v8 = a1[102];
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<BiasLearnRateCoef>", v9, v10);
  v11 = a1[103];
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>", v12, v13);
  kaldi::nnet1::Component::TypeToMarker(a1[104], &__p);
  kaldi::WriteToken(a2, a3, &__p, v14, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>", v16, v17);
  v18 = a1[105];
  return kaldi::WriteBasicType<float>(a2, a3);
}

void sub_1C3090878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *kaldi::nnet1::SharedNceComponent::GetParams(_DWORD *a1, uint64_t a2)
{
  v4 = a1[26] * a1[27];
  v5 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a2, v5, 0, v6, v7);
  v16 = 0;
  v17 = 0;
  if (v4 > *(a2 + 8) || (v15 = *a2, LODWORD(v16) = v4, kaldi::VectorBase<float>::CopyRowsFromMat(&v15, (a1 + 22), v8, v9, v10), v13 = a1[38], v16 = 0, v17 = 0, (v13 + v4) > *(a2 + 8)))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v10);
  }

  v15 = (*a2 + 4 * v4);
  LODWORD(v16) = v13;
  return kaldi::CuVectorBase<float>::CopyToVec<float>(a1 + 34, &v15, v11, v12, v10);
}

_DWORD *kaldi::nnet1::SharedNceComponent::SetParams(_DWORD *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 != (*(*a1 + 176))(a1))
  {
    kaldi::KaldiAssertFailure_("SetParams", "../engine/common/libquasar/libkaldi/src/nnet/nnet-shared-nce-component.h", 0xBE, "wei_src.Dim() == NumParams()", v5);
  }

  v6 = a1[26] * a1[27];
  v12 = 0;
  v13 = 0;
  if (v6 > *(a2 + 8) || (v11 = *a2, LODWORD(v12) = v6, kaldi::CuMatrixBase<float>::CopyRowsFromVec((a1 + 22), &v11), v9 = a1[38], v12 = 0, v13 = 0, (v9 + v6) > *(a2 + 8)))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v5);
  }

  v11 = (*a2 + 4 * v6);
  LODWORD(v12) = v9;
  return kaldi::CuVectorBase<float>::CopyFromVec<float>(a1 + 34, &v11, v7, v8, v5);
}

float kaldi::nnet1::SharedNceComponent::SumParams(kaldi::nnet1::SharedNceComponent *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = kaldi::CuMatrixBase<float>::Sum(this + 88, a2, a3, a4, a5);
  v7 = kaldi::CuVectorBase<float>::Sum(this + 136);
  return v6 + *&v7;
}

uint64_t kaldi::nnet1::SharedNceComponent::PerturbParams(kaldi::nnet1::SharedNceComponent *this, float a2)
{
  kaldi::CuMatrix<float>::CuMatrix(v15, *(this + 27), *(this + 26), 1u, 0, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v15);
  kaldi::CuMatrixBase<float>::AddMat(this + 88, v15, 111, v4, v5, a2, 1.0);
  v6 = *(this + 38);
  v14[0] = &unk_1F42BFF70;
  memset(&v14[1], 0, 24);
  kaldi::CuVector<float>::Resize(v14, v6, 1u, v7, v8);
  kaldi::CuVectorBase<float>::SetRandn(v14);
  *&v9 = a2;
  kaldi::CuVectorBase<float>::AddVec(this + 136, v14, v10, v11, v12, v9, 1.0);
  kaldi::CuVector<float>::~CuVector(v14);
  return kaldi::CuMatrix<float>::~CuMatrix(v15);
}

void sub_1C3090BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

void *kaldi::nnet1::SharedNceComponent::GetGradient(uint64_t a1, uint64_t a2, uint64_t a3, void **a4, const char *a5)
{
  kaldi::Vector<float>::Resize(a4, (*(a1 + 232) * *(a1 + 236)), 0, a4, a5);

  return kaldi::VectorBase<float>::CopyRowsFromMat(a4, a1 + 216, v7, v8, v9);
}

uint64_t kaldi::nnet1::SharedNceComponent::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 424);
  if (!v5)
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "../engine/common/libquasar/libkaldi/src/nnet/nnet-shared-nce-component.h", 0x116, "active_output_", a5);
  }

  v6 = *(v5 + 16);
  if (v6 <= 0)
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "../engine/common/libquasar/libkaldi/src/nnet/nnet-shared-nce-component.h", 0x118, "num_samples > 0", a5);
  }

  if (*(a2 + 16) != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "../engine/common/libquasar/libkaldi/src/nnet/nnet-shared-nce-component.h", 0x11B, "input.NumCols() == input_dim_", a5);
  }

  v10 = *(a2 + 20);
  if (*(a3 + 20) != v10)
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "../engine/common/libquasar/libkaldi/src/nnet/nnet-shared-nce-component.h", 0x11C, "diff.NumRows() == batch_size", a5);
  }

  *(a1 + 248) = a4;
  kaldi::CuMatrix<float>::Resize(a1 + 216, *(a1 + 188), *(a1 + 184), 3u, 0);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v45, a3, 0, *(a3 + 20), 0, v6);
  kaldi::CuMatrixBase<float>::AddMatMat(a1 + 216, &v45, 112, a2, 0x6F);
  *(a1 + 368) = a4;
  kaldi::CuVector<float>::Resize(a1 + 344, *(a1 + 328), 3u, v12, v13);
  kaldi::CuVectorBase<float>::AddRowSumMat(a1 + 344, &v45, v14, v15, v16);
  *(a1 + 120) = a4;
  *(a1 + 160) = a4;
  v17 = *(a1 + 56);
  if (*(a1 + 84) == 1)
  {
    v17 = v17 / v10;
  }

  v18 = *(a1 + 420);
  if (v18 > 0.0)
  {
    v19 = v10;
    if (!*(a1 + 84))
    {
      v19 = 1.0;
    }

    v20 = v19 * v18;
    v21 = *(a1 + 416);
    if (v21 == 1)
    {
      kaldi::nnet1::UpdatableComponent::ClipGradient(a1 + 216, v19 * v18);
      kaldi::nnet1::UpdatableComponent::ClipGradient(a1 + 344, v20);
    }

    else if (v21 == 2)
    {
      *(a1 + 296) = a4;
      kaldi::CuMatrix<float>::Resize(a1 + 264, *(a1 + 236), *(a1 + 232), 1u, 0);
      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(a1 + 216, (a1 + 264), v20, v22, v23, v24);
      *(a1 + 400) = a4;
      kaldi::CuVector<float>::Resize(a1 + 376, *(a1 + 360), 1u, v25, v26);
      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(a1 + 344, (a1 + 376), v27, v28, v29, v20);
    }
  }

  kaldi::CuSubMatrix<float>::CuSubMatrix(&v42, *(a1 + 424), v6);
  kaldi::CuMatrixBase<float>::AddIndexedRows(a1 + 88, &v42, a1 + 216, v30, v31, -(v17 * *(a1 + 408)));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v39, a1 + 136, *(a1 + 12));
  v32 = *(a1 + 412);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v36, a1 + 344, v6);
  kaldi::CuMatrixBase<float>::AddIndexedRows(&v39, &v42, &v36, v33, v34, v32 * -v17);
  v36 = &unk_1F42BFE90;
  v37 = 0u;
  v38 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v36);
  *(a1 + 424) = 0;
  v39 = &unk_1F42BFE90;
  v40 = 0u;
  v41 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v39);
  v42 = &unk_1F42BFE90;
  v43 = 0u;
  v44 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v42);
  v45 = &unk_1F42BFE90;
  v46 = 0u;
  v47 = 0u;
  return kaldi::CuMatrixBase<float>::~CuMatrixBase(&v45);
}

void sub_1C3090F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, __int128 a10, __int128 a11, void *a12, __int128 a13, __int128 a14, void *a15, __int128 a16, __int128 a17, void *a18)
{
  a9 = &unk_1F42BFE90;
  a10 = 0u;
  a11 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a9);
  a12 = &unk_1F42BFE90;
  a13 = 0u;
  a14 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a12);
  a15 = &unk_1F42BFE90;
  a16 = 0u;
  a17 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a15);
  a18 = &unk_1F42BFE90;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a18);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::SharedNceComponent::SetGradientNormalization(uint64_t result, int a2, float a3)
{
  if (a2 == 3)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v3, "SetGradientNormalization", "../engine/common/libquasar/libkaldi/src/nnet/nnet-shared-nce-component.h", 261);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "it does not make sense to do RMSPROP in this component");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v3);
  }

  *(result + 420) = a3;
  *(result + 416) = a2;
  return result;
}

uint64_t kaldi::nnet1::WordVecComponent::CountZeroCorr(kaldi::nnet1::WordVecComponent *this, int *a2, int *a3)
{
  result = (*(*this + 176))(this);
  *a3 = result;
  *a2 = 0;
  if (*(this + 71))
  {
    result = kaldi::CuMatrixBase<float>::CountZeros(this + 264);
    *a2 = result;
  }

  return result;
}

uint64_t kaldi::nnet1::WordVecComponent::Info(kaldi::nnet1::WordVecComponent *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  (*(*this + 168))(this, &v8, 0);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "\n WordVec table", 15);
  kaldi::nnet1::MomentStatistics<float>(this + 96);
  if ((v7 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v4 = v7;
  }

  else
  {
    v4 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v3, v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  v8 = *MEMORY[0x1E69E54E8];
  *(&v8 + *(v8 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v9 = MEMORY[0x1E69E5548] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v10);
  std::ostream::~ostream();
  return MEMORY[0x1C692AD30](&v12);
}

void sub_1C30913BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::WordVecComponent::InitData(unsigned int *a1, uint64_t *a2, kaldi::UniformRandomNumber *a3)
{
  v67 = 1036831949;
  kaldi::nnet1::Component::TypeToMarker(2, &v66);
  kaldi::nnet1::Component::TypeToMarker(a1[60], &v65);
  v64 = -1;
  memset(v63, 0, sizeof(v63));
  v8 = (a1 + 62);
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_127;
    }

    kaldi::ReadToken(a2, 0, v63, v6, v7);
    if ((SHIBYTE(v63[2]) & 0x80000000) == 0)
    {
      if (HIBYTE(v63[2]) <= 0xEu)
      {
        if (HIBYTE(v63[2]) <= 0xBu)
        {
          if (HIBYTE(v63[2]) != 9)
          {
            if (HIBYTE(v63[2]) != 11)
            {
              goto LABEL_155;
            }

            v11 = v63[0] == 0x69536261636F563CLL && *(v63 + 3) == 0x3E657A6953626163;
            goto LABEL_18;
          }

          v25 = v63[0] == 0x6461724778614D3CLL && LOBYTE(v63[1]) == 62;
LABEL_91:
          v21 = (a1 + 61);
          if (!v25)
          {
            goto LABEL_155;
          }

          goto LABEL_98;
        }

        if (HIBYTE(v63[2]) != 12)
        {
          if (HIBYTE(v63[2]) != 13)
          {
            goto LABEL_155;
          }

          if (v63[0] != 0x74536D617261503CLL || *(v63 + 5) != 0x3E7665646474536DLL)
          {
            goto LABEL_155;
          }

LABEL_57:
          v21 = &v67;
LABEL_98:
          kaldi::ReadBasicType<float>(a2, 0, v21);
          goto LABEL_116;
        }

        if (v63[0] != 0x536D6F646E61523CLL || LODWORD(v63[1]) != 1046766949)
        {
          goto LABEL_119;
        }

LABEL_104:
        v12 = &v64;
        goto LABEL_105;
      }

      if (HIBYTE(v63[2]) <= 0x11u)
      {
        if (HIBYTE(v63[2]) != 15)
        {
          if (HIBYTE(v63[2]) != 16)
          {
            goto LABEL_155;
          }

          v13 = v63;
          goto LABEL_28;
        }

        v26 = v63[0] == 0x61526E7261654C3CLL && *(v63 + 7) == 0x3E66656F43657461;
        goto LABEL_96;
      }

      if (HIBYTE(v63[2]) == 18)
      {
        if (v63[0] != 0x6E6569646172473CLL || v63[1] != 0x7079546D726F4E74 || LOWORD(v63[2]) != 15973)
        {
          goto LABEL_155;
        }

LABEL_114:
        v24 = &v65;
        goto LABEL_115;
      }

      if (HIBYTE(v63[2]) != 19)
      {
        goto LABEL_155;
      }

      v18 = v63[0] == 0x61725474696E493CLL && v63[1] == 0x79546D726F66736ELL;
      if (!v18 || *(&v63[1] + 3) != 0x3E657079546D726FLL)
      {
        goto LABEL_155;
      }

      goto LABEL_68;
    }

    if (v63[1] <= 14)
    {
      if (v63[1] <= 11)
      {
        if (v63[1] != 9)
        {
          if (v63[1] != 11)
          {
            goto LABEL_155;
          }

          v11 = *v63[0] == 0x69536261636F563CLL && *(v63[0] + 3) == 0x3E657A6953626163;
LABEL_18:
          v12 = (a1 + 62);
          if (!v11)
          {
            goto LABEL_155;
          }

          goto LABEL_105;
        }

        v25 = *v63[0] == 0x6461724778614D3CLL && *(v63[0] + 8) == 62;
        goto LABEL_91;
      }

      if (v63[1] != 12)
      {
        if (v63[1] != 13)
        {
          goto LABEL_155;
        }

        if (*v63[0] != 0x74536D617261503CLL || *(v63[0] + 5) != 0x3E7665646474536DLL)
        {
          goto LABEL_155;
        }

        goto LABEL_57;
      }

      if (*v63[0] != 0x536D6F646E61523CLL || *(v63[0] + 2) != 1046766949)
      {
        goto LABEL_121;
      }

      goto LABEL_104;
    }

    if (v63[1] <= 17)
    {
      break;
    }

    if (v63[1] == 18)
    {
      if (*v63[0] != 0x6E6569646172473CLL || *(v63[0] + 1) != 0x7079546D726F4E74 || *(v63[0] + 8) != 15973)
      {
        goto LABEL_155;
      }

      goto LABEL_114;
    }

    if (v63[1] != 19)
    {
      goto LABEL_155;
    }

    v22 = *v63[0] == 0x61725474696E493CLL && *(v63[0] + 1) == 0x79546D726F66736ELL;
    if (!v22 || *(v63[0] + 11) != 0x3E657079546D726FLL)
    {
      goto LABEL_155;
    }

LABEL_68:
    v24 = &v66;
LABEL_115:
    kaldi::ReadToken(a2, 0, v24, v9, v10);
LABEL_116:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (v63[1] == 15)
  {
    v26 = *v63[0] == 0x61526E7261654C3CLL && *(v63[0] + 7) == 0x3E66656F43657461;
LABEL_96:
    v21 = (a1 + 65);
    if (!v26)
    {
      goto LABEL_155;
    }

    goto LABEL_98;
  }

  if (v63[1] != 16)
  {
    goto LABEL_155;
  }

  v13 = v63[0];
LABEL_28:
  v15 = *v13;
  v14 = v13[1];
  v16 = v15 == 0x5372656C6C69463CLL && v14 == 0x3E64496C6F626D79;
  v12 = (a1 + 63);
  if (v16)
  {
LABEL_105:
    kaldi::ReadBasicType<int>(a2, 0, v12);
    goto LABEL_116;
  }

  if ((HIBYTE(v63[2]) & 0x80) == 0)
  {
    if (HIBYTE(v63[2]) == 12)
    {
LABEL_119:
      v33 = v63;
      goto LABEL_122;
    }

    goto LABEL_155;
  }

  if (v63[1] != 12)
  {
    goto LABEL_155;
  }

LABEL_121:
  v33 = v63[0];
LABEL_122:
  v34 = *v33;
  v35 = *(v33 + 2);
  if (v34 != 0x6E6F706D6F432F3CLL || v35 != 1047817829)
  {
LABEL_155:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v59, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-word-vec-component.h", 90);
    v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, "Unknown token ", 14);
    if (SHIBYTE(v63[2]) >= 0)
    {
      v51 = v63;
    }

    else
    {
      v51 = v63[0];
    }

    if (SHIBYTE(v63[2]) >= 0)
    {
      v52 = HIBYTE(v63[2]);
    }

    else
    {
      v52 = v63[1];
    }

    v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, v51, v52);
    v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, " (ParamStddev|LearnRateCoef|VocabSize|RandomSeed|InitTransformType|GradientNormType|MaxGrad)", 92);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v59);
  }

LABEL_127:
  if (*v8 <= 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v59, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-word-vec-component.h", 96);
    v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, "invalid vocabulary size ", 24);
    MEMORY[0x1C692A960](v55, *v8);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v59);
  }

  inited = kaldi::nnet1::Component::MarkerToMatrixInitType(&v66);
  a1[60] = kaldi::nnet1::Component::MarkerToGradientNormType(&v65);
  if (!inited)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v59, "InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-word-vec-component.h", 104);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, "it doesn't make sense to initialize the word vec as an identify matrix", 70);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v59);
  }

  if (v64 >= 1)
  {
    kaldi::UniformRandomNumber::SetRandomSeeds(a3, v64);
  }

  kaldi::GaussRandomNumber::GaussRandomNumber(v59, a3);
  kaldi::CuMatrix<float>::Resize((a1 + 24), a1[62], a1[64], 1u, 0);
  kaldi::Matrix<float>::Matrix(v57, a1[62], a1[64], 0, 0);
  v41 = *v8;
  if (*v8 < 1)
  {
    goto LABEL_143;
  }

  v42 = 0;
  v43 = a1[64];
  while (2)
  {
    if (v43 < 1)
    {
      goto LABEL_142;
    }

    v44 = 0;
    while (2)
    {
      if (inited == 2)
      {
        v47 = *&v67;
        kaldi::GaussRandomNumber::Rand(v59, 0, v38, v39, v40);
        v46 = v47 * v48;
LABEL_139:
        *(v57[0] + v42 * v58 + v44) = v46;
        v43 = a1[64];
      }

      else if (inited == 1)
      {
        v45 = *&v67;
        v46 = (kaldi::UniformRandomNumber::RandUniform(a3, 0, v38, v39, v40) + -0.5) * (v45 + v45);
        goto LABEL_139;
      }

      if (++v44 < v43)
      {
        continue;
      }

      break;
    }

    v41 = *v8;
LABEL_142:
    if (++v42 < v41)
    {
      continue;
    }

    break;
  }

LABEL_143:
  v49 = a1[63];
  if ((v49 & 0x80000000) == 0)
  {
    if (v49 >= v41)
    {
      kaldi::KaldiAssertFailure_("InitData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-word-vec-component.h", 0x78, "filler_id_ < voc_size_", v40);
    }

    kaldi::MatrixBase<float>::Row(v57, v49, v40, v56);
    kaldi::VectorBase<float>::SetZero(v56);
  }

  kaldi::CuMatrix<float>::operator=((a1 + 24), v57);
  kaldi::Matrix<float>::~Matrix(v57);
  if (__p)
  {
    v62 = __p;
    operator delete(__p);
  }

  v57[0] = &v60;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v57);
  if (SHIBYTE(v63[2]) < 0)
  {
    operator delete(v63[0]);
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }
}

void sub_1C3091CAC(_Unwind_Exception *a1)
{
  if (*(v1 - 169) < 0)
  {
    operator delete(*(v1 - 192));
  }

  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  if (*(v1 - 113) < 0)
  {
    operator delete(*(v1 - 136));
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::WordVecComponent::WriteData(uint64_t a1, void *a2, int a3, int a4)
{
  v7 = a1 + 96;
  (*(*a1 + 168))(a1);

  return kaldi::CuMatrixBase<float>::Write(v7, a2, a3, a4);
}

uint64_t kaldi::nnet1::WordVecComponent::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a2 + 16) != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "../engine/common/libquasar/libkaldi/src/nnet/nnet-word-vec-component.h", 0xD1, "in.NumCols() == this->input_dim_", a5);
  }

  return kaldi::CuMatrixBase<float>::ConcatenateVec(a3, a1 + 96, a2, a4, a5);
}

uint64_t kaldi::nnet1::WordVecComponent::ReadData(_DWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  while (kaldi::Peek(a2, a3) == 60)
  {
    v36 = 0uLL;
    v37 = 0;
    kaldi::ReadToken(a2, a3, &v36, v7, v8);
    if (SHIBYTE(v37) < 0)
    {
      if (*(&v36 + 1) != 11 || (*v36 == 0x69536261636F563CLL ? (v13 = *(v36 + 3) == 0x3E657A6953626163) : (v13 = 0), v14 = (a1 + 62), !v13))
      {
        if (*(&v36 + 1) == 15)
        {
          v15 = *v36 == 0x61526E7261654C3CLL && *(v36 + 7) == 0x3E66656F43657461;
          v16 = (a1 + 65);
          if (v15)
          {
            goto LABEL_67;
          }
        }

        if (*(&v36 + 1) == 9)
        {
          v19 = *v36 == 0x6461724778614D3CLL && *(v36 + 8) == 62;
          v16 = (a1 + 61);
          if (v19)
          {
            goto LABEL_67;
          }
        }

        else if (*(&v36 + 1) == 18)
        {
          v17 = *v36 == 0x6E6569646172473CLL && *(v36 + 8) == 0x7079546D726F4E74;
          if (v17 && *(v36 + 16) == 15973)
          {
            goto LABEL_48;
          }
        }

        if (*(&v36 + 1) != 16)
        {
          goto LABEL_75;
        }

        v20 = v36;
LABEL_56:
        v24 = *v20;
        v23 = v20[1];
        v25 = v24 == 0x5372656C6C69463CLL && v23 == 0x3E64496C6F626D79;
        v14 = (a1 + 63);
        if (!v25)
        {
          goto LABEL_75;
        }
      }
    }

    else
    {
      if (HIBYTE(v37) > 0xEu)
      {
        if (HIBYTE(v37) == 15)
        {
          v22 = v36 == 0x61526E7261654C3CLL && *(&v36 + 7) == 0x3E66656F43657461;
          v16 = (a1 + 65);
          if (!v22)
          {
            goto LABEL_75;
          }

LABEL_67:
          kaldi::ReadBasicType<float>(a2, a3, v16);
          goto LABEL_68;
        }

        if (HIBYTE(v37) != 16)
        {
          if (HIBYTE(v37) != 18)
          {
            goto LABEL_75;
          }

          v11 = v36 == 0x6E6569646172473CLL && *(&v36 + 1) == 0x7079546D726F4E74;
          if (!v11 || v37 != 15973)
          {
            goto LABEL_75;
          }

LABEL_48:
          __p[0] = 0;
          __p[1] = 0;
          v35 = 0;
          kaldi::ReadToken(a2, a3, __p, v9, v10);
          a1[60] = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
          if (SHIBYTE(v35) < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_68;
        }

        v20 = &v36;
        goto LABEL_56;
      }

      if (HIBYTE(v37) == 9)
      {
        v26 = v36 == 0x6461724778614D3CLL && BYTE8(v36) == 62;
        v16 = (a1 + 61);
        if (!v26)
        {
LABEL_75:
          kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-word-vec-component.h", 146);
          v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "unrecognized config token ", 26);
          if (v37 >= 0)
          {
            v30 = &v36;
          }

          else
          {
            v30 = v36;
          }

          if (v37 >= 0)
          {
            v31 = HIBYTE(v37);
          }

          else
          {
            v31 = *(&v36 + 1);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v30, v31);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
        }

        goto LABEL_67;
      }

      if (HIBYTE(v37) != 11)
      {
        goto LABEL_75;
      }

      v21 = v36 == 0x69536261636F563CLL && *(&v36 + 3) == 0x3E657A6953626163;
      v14 = (a1 + 62);
      if (!v21)
      {
        goto LABEL_75;
      }
    }

    kaldi::ReadBasicType<int>(a2, a3, v14);
LABEL_68:
    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36);
    }
  }

  if (a1[62] <= 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-word-vec-component.h", 151);
    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "invalid vocabulary size ", 24);
    MEMORY[0x1C692A960](v32, a1[62]);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }

  result = kaldi::CuMatrix<float>::Read((a1 + 24), a2, a3, a4);
  if (a1[29] != a1[62])
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-word-vec-component.h", 0x9B, "vec_table_.NumRows() == voc_size_", v28);
  }

  if (a1[28] != a1[64])
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-word-vec-component.h", 0x9C, "vec_table_.NumCols() == embed_dim_", v28);
  }

  return result;
}

uint64_t kaldi::nnet1::WordVecComponent::WriteConfig(unsigned int *a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<VocabSize>", a4, a5);
  kaldi::WriteBasicType<int>(a2, a3, a1[62]);
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>", v8, v9);
  v10 = a1[65];
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>", v11, v12);
  kaldi::nnet1::Component::TypeToMarker(a1[60], &__p);
  kaldi::WriteToken(a2, a3, &__p, v13, v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>", v15, v16);
  v17 = a1[61];
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<FillerSymbolId>", v18, v19);
  return kaldi::WriteBasicType<int>(a2, a3, a1[63]);
}

void sub_1C30923CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::WordVecComponent::GetParams(uint64_t a1, void **a2)
{
  v3 = a1 + 96;
  v4 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 1, v5, v6);

  return kaldi::VectorBase<float>::CopyRowsFromMat(a2, v3, v7, v8, v9);
}

void **kaldi::nnet1::WordVecComponent::SetParams(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 != (*(*a1 + 176))(a1))
  {
    kaldi::KaldiAssertFailure_("SetParams", "../engine/common/libquasar/libkaldi/src/nnet/nnet-word-vec-component.h", 0xBB, "wei_src.Dim() == NumParams()", v5);
  }

  return kaldi::CuMatrixBase<float>::CopyRowsFromVec(a1 + 96, a2);
}

uint64_t kaldi::nnet1::WordVecComponent::PerturbParams(kaldi::nnet1::WordVecComponent *this, float a2)
{
  kaldi::CuMatrix<float>::CuMatrix(v7, *(this + 29), *(this + 28), 1u, 0, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v7);
  kaldi::CuMatrixBase<float>::AddMat(this + 96, v7, 111, v4, v5, a2, 1.0);
  return kaldi::CuMatrix<float>::~CuMatrix(v7);
}

void *kaldi::nnet1::WordVecComponent::GetGradient(uint64_t a1, uint64_t a2, uint64_t a3, void **a4, const char *a5)
{
  kaldi::Vector<float>::Resize(a4, (*(a3 + 16) * *(a3 + 20)), 1, a4, a5);

  return kaldi::VectorBase<float>::CopyRowsFromMat(a4, a3, v7, v8, v9);
}

void kaldi::nnet1::WordVecComponent::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a2 + 16) != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "../engine/common/libquasar/libkaldi/src/nnet/nnet-word-vec-component.h", 0xF1, "input.NumCols() == this->input_dim_", a5);
  }

  v6 = *(a2 + 20);
  if (*(a3 + 20) != v6)
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "../engine/common/libquasar/libkaldi/src/nnet/nnet-word-vec-component.h", 0xF2, "diff.NumRows() == batch_size", a5);
  }

  if (*(a3 + 16) != *(a1 + 12))
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "../engine/common/libquasar/libkaldi/src/nnet/nnet-word-vec-component.h", 0xF3, "diff.NumCols() == this->output_dim_", a5);
  }

  v9 = *(a1 + 56);
  if (*(a1 + 84) == 1)
  {
    v9 = v9 / v6;
  }

  v10 = *(a1 + 244);
  if (v10 <= 0.0)
  {
    v11 = a3;
  }

  else
  {
    v11 = a1 + 144;
    *(a1 + 176) = a4;
    kaldi::CuMatrix<float>::operator=(a1 + 144, a3);
    v12 = *(a1 + 240);
    if (v12 == 2)
    {
      v14 = v6;
      if (!*(a1 + 84))
      {
        v14 = 1.0;
      }

      v15 = v10 * v14;
      *(a1 + 224) = a4;
      kaldi::CuMatrix<float>::Resize(a1 + 192, *(a1 + 164), *(a1 + 160), 1u, 0);
      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(a1 + 144, (a1 + 192), v15, v16, v17, v18);
    }

    else if (v12 == 1)
    {
      v13 = v6;
      if (!*(a1 + 84))
      {
        v13 = 1.0;
      }

      kaldi::nnet1::UpdatableComponent::ClipGradient(a1 + 144, v10 * v13);
    }
  }

  v19 = *(a1 + 72);
  if (v19 <= 0.0)
  {
    *(a1 + 128) = a4;
    kaldi::CuMatrixBase<float>::AddIndexedRows(a1 + 96, a2, v11, a4, a5, -(v9 * *(a1 + 260)));
  }

  else
  {
    if (*(a1 + 320) == *(a1 + 312))
    {
      kaldi::CuMatrix<float>::Resize(a1 + 264, *(a1 + 116), *(a1 + 112), 0, 0);
      kaldi::nnet1::QuantizerResidualAggregator::PushSetup((a1 + 312), a1 + 264);
    }

    *(a1 + 296) = a4;
    kaldi::CuMatrixBase<float>::SetZero(a1 + 264);
    kaldi::CuMatrixBase<float>::AddIndexedRows(a1 + 264, a2, v11, v20, v21, 1.0);
    kaldi::nnet1::QuantizerResidualAggregator::Quantize((a1 + 312), *(a1 + 76), v19, v22, v23, v24);
    *(a1 + 128) = a4;
    kaldi::CuMatrixBase<float>::AddMat(a1 + 96, a1 + 264, 111, v25, v26, -(v9 * *(a1 + 260)), 1.0);
  }

  v28 = *(a1 + 252);
  if ((v28 & 0x80000000) == 0)
  {
    if (v28 >= *(a1 + 248))
    {
      kaldi::KaldiAssertFailure_("AccumGradients", "../engine/common/libquasar/libkaldi/src/nnet/nnet-word-vec-component.h", 0x125, "filler_id_ < voc_size_", v27);
    }

    if (*(a1 + 116) <= v28)
    {
      kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x22A, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v27);
    }

    v29 = *(a1 + 112);
    v30 = *(a1 + 128);
    v31[1] = *(a1 + 104) + 4 * (*(a1 + 120) * v28);
    v31[0] = &unk_1F42BFF30;
    v31[2] = v29;
    v31[3] = v30;
    kaldi::CuVectorBase<float>::SetZero(v31);
  }
}

void kaldi::nnet1::WordVecComponent::SetGradientNormalization(uint64_t a1, int a2, float a3)
{
  if (a2 == 3)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v3, "SetGradientNormalization", "../engine/common/libquasar/libkaldi/src/nnet/nnet-word-vec-component.h", 223);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "RMSPROP is not implemented in word embedding yet", 48);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v3);
    }
  }

  else
  {
    *(a1 + 244) = a3;
    *(a1 + 240) = a2;
  }
}

void sub_1C30929D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_1C3092AC0(_Unwind_Exception *a1)
{
  kaldi::CuMatrix<float>::~CuMatrix(v2 + 392);
  kaldi::nnet1::WordVecComponent::~WordVecComponent(v2);
  MEMORY[0x1C692AE10](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::FofeWordVecComponent::PropagateFnc(kaldi::nnet1::FofeWordVecComponent *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 20);
  kaldi::nnet1::FofeWordVecComponent::Prepare(a1, v8);
  kaldi::nnet1::WordVecComponent::PropagateFnc(a1, a2, a1 + 440, a4, v9);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v11, a1 + 392, 0, 1, (*(a1 + 102) - v8), v8);
  kaldi::CuMatrixBase<float>::AddMatMat(a3, &v11, 111, a1 + 440, 0x6F);
  v11 = &unk_1F42BFE90;
  v12 = 0u;
  v13 = 0u;
  return kaldi::CuMatrixBase<float>::~CuMatrixBase(&v11);
}

void sub_1C3092BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, __int128 a11, __int128 a12)
{
  a10 = &unk_1F42BFE90;
  a11 = 0u;
  a12 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a10);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::FofeWordVecComponent::AccumGradients()
{
  if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v0, "AccumGradients", "../engine/common/libquasar/libkaldi/src/nnet/nnet-word-vec-component.h", 432);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v0, "not implemented", 15);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v0);
  }
}

void kaldi::nnet1::AffineTransform::AffineTransform(kaldi::nnet1::AffineTransform *this, int a2, int a3)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 8) = 0;
  *(this + 3) = 0;
  *(this + 2) = 0u;
  *(this + 6) = &unk_1F42CB198;
  *(this + 56) = xmmword_1C378B0E0;
  *(this + 18) = -1082130432;
  *(this + 76) = 0x100000003;
  *(this + 42) = 0;
  *(this + 86) = 0;
  *this = &unk_1F42BFFC0;
  *(this + 11) = &unk_1F42C0100;
  *(this + 12) = &unk_1F42C0128;
  *(this + 13) = &unk_1F42C0150;
  operator new();
}

void sub_1C3092EA0(_Unwind_Exception *a1)
{
  MEMORY[0x1C692AE10](v2, 0x1081C4072235B19);
  v4 = *(v1 + 14);
  *(v1 + 14) = 0;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v1);
  _Unwind_Resume(a1);
}

double kaldi::nnet1::ConvolutionalComponent::ConvolutionalComponent(kaldi::nnet1::ConvolutionalComponent *this, int a2, int a3)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 8) = 0;
  *(this + 3) = 0;
  *(this + 2) = 0u;
  *(this + 6) = &unk_1F42CB198;
  *(this + 56) = xmmword_1C378B0E0;
  *(this + 18) = -1082130432;
  *(this + 76) = 0x100000003;
  *(this + 42) = 0;
  *(this + 86) = 0;
  *this = &unk_1F42C19D0;
  *(this + 11) = 0;
  *(this + 24) = 0;
  result = 0.0;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 13) = &unk_1F42BFED8;
  *(this + 144) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 19) = &unk_1F42BFF70;
  *(this + 20) = 0;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 35) = 0;
  __asm { FMOV            V1.2S, #1.0 }

  *(this + 36) = _D1;
  *(this + 74) = 0;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 184) = 0u;
  *(this + 264) = 0u;
  *(this + 361) = 0u;
  return result;
}

double kaldi::nnet1::WordVecComponent::WordVecComponent(kaldi::nnet1::WordVecComponent *this, int a2, int a3, uint64_t a4, const char *a5)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 8) = 0;
  *(this + 3) = 0;
  *(this + 2) = 0u;
  *(this + 6) = &unk_1F42CB198;
  *(this + 56) = xmmword_1C378B0E0;
  *(this + 18) = -1082130432;
  *(this + 76) = 0x100000003;
  *(this + 42) = 0;
  *(this + 86) = 0;
  *this = &unk_1F42C2FA0;
  *(this + 11) = &unk_1F42C30D0;
  result = 0.0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 12) = &unk_1F42BFED8;
  *(this + 136) = 0;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  *(this + 18) = &unk_1F42BFED8;
  *(this + 184) = 0;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 24) = &unk_1F42BFED8;
  *(this + 232) = 0;
  *(this + 30) = 0;
  *(this + 31) = 0xFFFFFFFF00000000;
  *(this + 64) = a3 / a2;
  *(this + 65) = 1065353216;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 33) = &unk_1F42BFED8;
  *(this + 304) = 0;
  *(this + 47) = 0;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  if (a3 % a2)
  {
    kaldi::KaldiAssertFailure_("WordVecComponent", "../engine/common/libquasar/libkaldi/src/nnet/nnet-word-vec-component.h", 0x2C, "dim_out % dim_in == 0", a5);
  }

  return result;
}

void sub_1C3093220(_Unwind_Exception *a1)
{
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v6);
  kaldi::CuMatrix<float>::~CuMatrix(v5);
  kaldi::CuMatrix<float>::~CuMatrix(v4);
  kaldi::CuMatrix<float>::~CuMatrix(v3);
  kaldi::CuMatrix<float>::~CuMatrix(v2);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v1);
  _Unwind_Resume(a1);
}

double kaldi::nnet1::FofeWordVecComponent::FofeWordVecComponent(kaldi::nnet1::FofeWordVecComponent *this, int a2, int a3, uint64_t a4, const char *a5)
{
  kaldi::nnet1::WordVecComponent::WordVecComponent(this, a2, a3, a4, a5);
  *v5 = &unk_1F42C1D38;
  *(v5 + 88) = &unk_1F42C1E68;
  *(v5 + 384) = 1060320051;
  result = 0.0;
  *(v5 + 400) = 0u;
  *(v5 + 416) = 0u;
  *(v5 + 392) = &unk_1F42BFED8;
  *(v5 + 432) = 0;
  *(v5 + 448) = 0u;
  *(v5 + 464) = 0u;
  *(v5 + 440) = &unk_1F42BFED8;
  *(v5 + 480) = 0;
  return result;
}

uint64_t kaldi::nnet1::CompressedWordVecComponent::CompressedWordVecComponent(uint64_t this, int a2, int a3, uint64_t a4, const char *a5)
{
  *(this + 8) = a2;
  *(this + 12) = a3;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *this = &unk_1F42C1910;
  *(this + 56) = 0;
  if (a3 % a2)
  {
    kaldi::KaldiAssertFailure_("CompressedWordVecComponent", "../engine/common/libquasar/libkaldi/src/nnet/nnet-compressed-word-vec-component.h", 0x15, "dim_out % dim_in == 0", a5);
  }

  return this;
}

void sub_1C30933C0(_Unwind_Exception *a1)
{
  kaldi::CompressedMatrix::Destroy(v3);
  *v1 = v2;
  v5 = v1[3];
  if (v5)
  {
    v1[4] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

double kaldi::nnet1::Dropout::Dropout(kaldi::nnet1::Dropout *this, int a2, int a3)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 8) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *this = &unk_1F42C1C78;
  result = 0.0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 0;
  *(this + 11) = &unk_1F42BFED8;
  *(this + 128) = 0;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 17) = 0;
  *(this + 18) = &unk_1F42BFED8;
  *(this + 184) = 0;
  *(this + 48) = 1056964608;
  return result;
}

double kaldi::nnet1::Rbm::Rbm(kaldi::nnet1::Rbm *this, int a2, int a3)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 8) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 6) = 0x3F0000003ECCCCCDLL;
  *(this + 14) = 1063675494;
  *(this + 60) = 0x7A12000000028;
  *(this + 17) = 961656599;
  *this = &unk_1F42C25B8;
  result = 0.0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 9) = &unk_1F42BFED8;
  *(this + 112) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 15) = &unk_1F42BFF70;
  *(this + 16) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 19) = &unk_1F42BFF70;
  *(this + 20) = 0;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 23) = &unk_1F42BFED8;
  *(this + 224) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 29) = &unk_1F42BFF70;
  *(this + 30) = 0;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 33) = &unk_1F42BFF70;
  *(this + 34) = 0;
  return result;
}

double kaldi::nnet1::CnnRearrangeComponent::CnnRearrangeComponent(kaldi::nnet1::CnnRearrangeComponent *this, int a2, int a3, uint64_t a4, const char *a5)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 8) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *this = &unk_1F42C50E0;
  result = 0.0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  if (a2 != a3)
  {
    kaldi::KaldiAssertFailure_("CnnRearrangeComponent", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-maxpooling-component.h", 0x12E, "dim_in == dim_out", a5);
  }

  return result;
}

void sub_1C3093678(_Unwind_Exception *exception_object)
{
  v5 = v1[10];
  if (v5)
  {
    free(v5);
  }

  v1[9] = 0;
  v1[10] = 0;
  v1[11] = 0;
  v6 = v1[7];
  if (v6)
  {
    free(v6);
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  *v1 = v2;
  v7 = v1[3];
  if (v7)
  {
    v1[4] = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

kaldi::nnet1::Padding2DComponent *kaldi::nnet1::Padding2DComponent::Padding2DComponent(kaldi::nnet1::Padding2DComponent *this, int a2, int a3)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 8) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *this = &unk_1F42C5290;
  kaldi::nnet1::Padding2DComponent::Init(this);
  return this;
}

void sub_1C3093714(_Unwind_Exception *exception_object)
{
  *v1 = &unk_1F42C1850;
  v3 = v1[3];
  if (v3)
  {
    v1[4] = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

kaldi::nnet1::AddShift *kaldi::nnet1::AddShift::AddShift(kaldi::nnet1::AddShift *this, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 8) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 6) = &unk_1F42CB198;
  *(this + 56) = xmmword_1C378B0E0;
  *(this + 18) = -1082130432;
  *(this + 76) = 0x100000003;
  *(this + 42) = 0;
  *(this + 86) = 0;
  *this = &unk_1F42C1668;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 11) = &unk_1F42BFF70;
  *(this + 14) = 0;
  kaldi::CuVector<float>::Resize(this + 88, a2, 1u, a4, a5);
  *(this + 21) = 0;
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 44) = 1065353216;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 23) = 0;
  *(this + 208) = 0;
  return this;
}

kaldi::nnet1::Rescale *kaldi::nnet1::Rescale::Rescale(kaldi::nnet1::Rescale *this, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 8) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 6) = &unk_1F42CB198;
  *(this + 56) = xmmword_1C378B0E0;
  *(this + 18) = -1082130432;
  *(this + 76) = 0x100000003;
  *(this + 42) = 0;
  *(this + 86) = 0;
  *this = &unk_1F42C2A40;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 11) = &unk_1F42BFF70;
  *(this + 14) = 0;
  kaldi::CuVector<float>::Resize(this + 88, a2, 1u, a4, a5);
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 21) = &unk_1F42BFED8;
  *(this + 208) = 0;
  *(this + 54) = 0;
  *(this + 220) = 0x3F80000000000000;
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 29) = 0;
  *(this + 256) = 0;
  return this;
}

kaldi::nnet1::KlHmm *kaldi::nnet1::KlHmm::KlHmm(kaldi::nnet1::KlHmm *this, uint64_t a2, uint64_t a3)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 8) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *this = &unk_1F42C20F0;
  kaldi::Matrix<double>::Matrix(this + 48, a3, a2, 0, 0);
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 11) = &unk_1F42BFED8;
  *(this + 128) = 0;
  return this;
}

void sub_1C3093A0C(_Unwind_Exception *exception_object)
{
  *v1 = &unk_1F42C1850;
  v3 = v1[3];
  if (v3)
  {
    v1[4] = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::SentenceAveragingComponent::SentenceAveragingComponent(kaldi::nnet1::SentenceAveragingComponent *this, int a2, int a3, float a4)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 8) = 0;
  *(this + 3) = 0;
  *(this + 2) = 0u;
  *(this + 6) = &unk_1F42CB198;
  *(this + 56) = xmmword_1C378B0E0;
  *(this + 18) = -1082130432;
  *(this + 76) = 0x100000003;
  *(this + 42) = 0;
  *(this + 86) = 0;
  *this = &unk_1F42C2B68;
  kaldi::nnet1::Nnet::Nnet((this + 88));
}

void kaldi::nnet1::Nnet::Nnet(kaldi::nnet1::Nnet *this)
{
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  operator new();
}

void sub_1C3093C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v14 = *(v10 + 352);
  if (v14)
  {
    *(v10 + 360) = v14;
    operator delete(v14);
  }

  kaldi::nnet1::Nnet::Nnet(v10);
  v15 = *(v10 + 280);
  if (v15)
  {
    *(v10 + 288) = v15;
    operator delete(v15);
  }

  a10 = (v10 + 256);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  kaldi::CuVector<float>::~CuVector(v12);
  kaldi::CuVector<float>::~CuVector(v11);
  v16 = *(v10 + 168);
  if (v16)
  {
    operator delete(v16);
  }

  a10 = (v10 + 120);
  std::vector<std::vector<kaldi::CuMatrix<float>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = (v10 + 72);
  std::vector<std::vector<kaldi::CuMatrix<float>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v17 = *(v10 + 48);
  if (v17)
  {
    *(v10 + 56) = v17;
    operator delete(v17);
  }

  v18 = *(v10 + 24);
  if (v18)
  {
    *(v10 + 32) = v18;
    operator delete(v18);
  }

  v19 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::vector<kaldi::CuMatrix<float>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

double kaldi::nnet1::FramePoolingComponent::FramePoolingComponent(kaldi::nnet1::FramePoolingComponent *this, int a2, int a3)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 8) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 6) = &unk_1F42CB198;
  *(this + 56) = xmmword_1C378B0E0;
  *(this + 18) = -1082130432;
  *(this + 76) = 0x100000003;
  *(this + 42) = 0;
  *(this + 86) = 0;
  *this = &unk_1F42C1E90;
  *(this + 22) = 0;
  result = 0.0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 20) = 0;
  *(this + 42) = 1008981770;
  *(this + 172) = 0;
  return result;
}

uint64_t kaldi::nnet1::DuplicateComponent::DuplicateComponent(uint64_t this, int a2, int a3, uint64_t a4, const char *a5)
{
  *(this + 8) = a2;
  *(this + 12) = a3;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 24) = 0;
  *this = &unk_1F42C3AA0;
  if (a2 > a3)
  {
    kaldi::KaldiAssertFailure_("DuplicateComponent", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 0x232, "dim_in <= dim_out", a5);
  }

  *(this + 48) = 0;
  *(this + 56) = 0;
  return this;
}

void sub_1C3093EBC(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    v1[4] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::IdentityComponent::IdentityComponent(uint64_t this, int a2, int a3, uint64_t a4, const char *a5)
{
  *(this + 8) = a2;
  *(this + 12) = a3;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 24) = 0;
  *this = &unk_1F42C39E0;
  if (a2 != a3)
  {
    kaldi::KaldiAssertFailure_("IdentityComponent", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 0x200, "dim_in == dim_out", a5);
  }

  return this;
}

void sub_1C3093F7C(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    v1[4] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

kaldi::nnet1::SharedNceComponent *kaldi::nnet1::SharedNceComponent::SharedNceComponent(kaldi::nnet1::SharedNceComponent *this, uint64_t a2, uint64_t a3)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 8) = 0;
  *(this + 3) = 0;
  *(this + 2) = 0u;
  *(this + 6) = &unk_1F42CB198;
  *(this + 56) = xmmword_1C378B0E0;
  *(this + 18) = -1082130432;
  *(this + 76) = 0x100000003;
  *(this + 42) = 0;
  *(this + 86) = 0;
  *this = &unk_1F42C2C90;
  kaldi::CuMatrix<float>::CuMatrix(this + 88, a3, a2, 0, 0, 0);
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 17) = &unk_1F42BFF70;
  *(this + 20) = 0;
  kaldi::CuVector<float>::Resize(this + 136, a3, 0, v5, v6);
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 21) = &unk_1F42BFED8;
  *(this + 208) = 0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 27) = &unk_1F42BFED8;
  *(this + 256) = 0;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 33) = &unk_1F42BFED8;
  *(this + 304) = 0;
  *(this + 41) = 0;
  *(this + 42) = 0;
  *(this + 39) = &unk_1F42BFF70;
  *(this + 40) = 0;
  *(this + 44) = 0;
  *(this + 45) = 0;
  *(this + 43) = &unk_1F42BFF70;
  *(this + 49) = 0;
  *(this + 50) = 0;
  *(this + 48) = 0;
  *(this + 46) = 0;
  *(this + 47) = &unk_1F42BFF70;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 51) = _D0;
  *(this + 52) = 0;
  *(this + 53) = 0;
  return this;
}

void sub_1C3094184(_Unwind_Exception *a1)
{
  kaldi::CuMatrix<float>::~CuMatrix(v1 + 88);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::TemporalMaxPoolingComponent::TemporalMaxPoolingComponent(uint64_t this, int a2, int a3, uint64_t a4, const char *a5)
{
  *(this + 8) = a2;
  *(this + 12) = a3;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 24) = 0;
  *this = &unk_1F42C41C0;
  if (a2 != a3)
  {
    kaldi::KaldiAssertFailure_("TemporalMaxPoolingComponent", "../engine/common/libquasar/libkaldi/src/nnet/nnet-temporal-max-pooling-component.h", 0x28, "dim_in == dim_out", a5);
  }

  return this;
}

void sub_1C3094248(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    v1[4] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

kaldi::nnet1::InterpolationComponent *kaldi::nnet1::InterpolationComponent::InterpolationComponent(kaldi::nnet1::InterpolationComponent *this, int a2, int a3)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 8) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  v4 = (this + 48);
  *this = &unk_1F42C2028;
  v5 = a2 / a3;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (a2 % a3)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "InterpolationComponent", "../engine/common/libquasar/libkaldi/src/nnet/nnet-interpolation-component.h", 27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "The input dimension is not divisible by the output dimension", 60);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

  if (v5 >= 1)
  {
    v6 = 0;
    v7 = 1.0 / v5;
    do
    {
      v8 = *(this + 8);
      if (v6 >= v8)
      {
        v9 = *v4;
        v10 = v6 - *v4;
        v11 = v10 >> 2;
        v12 = (v10 >> 2) + 1;
        if (v12 >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v13 = v8 - v9;
        if (v13 >> 1 > v12)
        {
          v12 = v13 >> 1;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v14 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(v4, v14);
        }

        *(4 * v11) = v7;
        v6 = (4 * v11 + 4);
        memcpy(0, v9, v10);
        v15 = *(this + 6);
        *(this + 6) = 0;
        *(this + 7) = v6;
        *(this + 8) = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v6++ = v7;
      }

      *(this + 7) = v6;
      --v5;
    }

    while (v5);
  }

  return this;
}

void sub_1C309443C(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    v1[7] = v5;
    operator delete(v5);
  }

  *v1 = v2;
  v6 = v1[3];
  if (v6)
  {
    v1[4] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

kaldi::nnet1::CompressedWordTransComponent *kaldi::nnet1::CompressedWordTransComponent::CompressedWordTransComponent(kaldi::nnet1::CompressedWordTransComponent *this, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 8) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *this = &unk_1F42C30F8;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 6) = &unk_1F42BFF70;
  *(this + 7) = 0;
  kaldi::CuVector<float>::Resize(this + 48, a2, 0, a4, a5);
  *(this + 10) = 0;
  *(this + 88) = 0;
  *(this + 24) = -1;
  return this;
}

void sub_1C30944FC(_Unwind_Exception *exception_object)
{
  *v1 = &unk_1F42C1850;
  v3 = v1[3];
  if (v3)
  {
    v1[4] = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *kaldi::nnet1::AttentionBaseInferenceComponent::AttentionBaseInferenceComponent(uint64_t *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 40)) = a2[1];
  *(this + *(*this - 48)) = a2[2];
  *(this + *(*this - 56)) = a2[3];
  return this;
}

double kaldi::nnet1::ScaledDotAttention::ScaledDotAttention(kaldi::nnet1::ScaledDotAttention *this, uint64_t *a2)
{
  v3 = kaldi::nnet1::AttentionBaseInferenceComponent::AttentionBaseInferenceComponent(this, a2 + 1);
  v4 = *a2;
  *v3 = *a2;
  *(v3 + *(v4 - 40)) = a2[5];
  *(v3 + *(*v3 - 48)) = a2[6];
  *(v3 + *(*v3 - 56)) = a2[7];
  result = 0.0;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  v3[1] = &unk_1F42BFED8;
  *(v3 + 48) = 0;
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  v3[7] = &unk_1F42BFED8;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 27) = 1065353216;
  *(v3 + 7) = 0u;
  *(v3 + 8) = 0u;
  return result;
}

void kaldi::nnet1::MultiHeadAttention::MultiHeadAttention(kaldi::nnet1::MultiHeadAttention *this, uint64_t *a2)
{
  kaldi::nnet1::ScaledDotAttention::ScaledDotAttention(this, a2 + 1);
  v3 = *a2;
  *v4 = *a2;
  *(v4 + *(v3 - 40)) = a2[9];
  *(v4 + *(*v4 - 48)) = a2[10];
  *(v4 + *(*v4 - 56)) = a2[11];
  *(v4 + 144) = -1;
}

uint64_t std::istringstream::~istringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 16) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

uint64_t kaldi::nnet1::RelaxedSoftmax::RelaxedSoftmax(uint64_t this, int a2, int a3, float a4)
{
  v4 = this;
  *(this + 8) = a2;
  *(this + 12) = a3;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 24) = 0;
  *this = &unk_1F42C3260;
  *(this + 48) = a4;
  if (a4 <= 0.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v6, "RelaxedSoftmax", "../engine/common/libquasar/libkaldi/src/nnet/nnet-activation.h", 56);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Relaxation factor must be positive; found: ", 43);
    v5 = *(v4 + 48);
    std::ostream::operator<<();
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v6);
  }

  return this;
}

void sub_1C3094B40(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    v1[4] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

kaldi::nnet1::BlockSoftmax *kaldi::nnet1::BlockSoftmax::BlockSoftmax(kaldi::nnet1::BlockSoftmax *this, const kaldi::nnet1::BlockSoftmax *a2)
{
  *this = &unk_1F42C1850;
  v4 = *(a2 + 1);
  *(this + 8) = *(a2 + 8);
  *(this + 1) = v4;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(this + 24, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 3);
  *this = &unk_1F42C1790;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 48, *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 2);
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 72, *(a2 + 9), *(a2 + 10), (*(a2 + 10) - *(a2 + 9)) >> 2);
  return this;
}

void sub_1C3094C34(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    v1[7] = v5;
    operator delete(v5);
  }

  *v1 = v2;
  v6 = v1[3];
  if (v6)
  {
    v1[4] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::ReadIntegerVector<int>(void *a1, int a2, std::vector<int> *a3, uint64_t a4, char *a5, void *a6, void *a7)
{
  v40 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    kaldi::KaldiAssertFailure_("ReadIntegerVector", "../engine/common/libquasar/libkaldi/src/base/io-funcs-inl.h", 0x109, "v != NULL", a5);
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a2)
  {
    v13 = std::istream::peek();
    if (v13 != 4)
    {
      v23 = v13;
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v38, "ReadIntegerVector", "../engine/common/libquasar/libkaldi/src/base/io-funcs-inl.h", 274);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "ReadIntegerVector: expected to see type of size ", 48);
      v25 = MEMORY[0x1C692A980](v24, 4);
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ", saw instead ", 14);
      v27 = MEMORY[0x1C692A960](v26, v23);
      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, ", at file position ", 19);
      std::istream::tellg();
      MEMORY[0x1C692A9A0](v28, v37);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v38);
    }

    std::istream::get();
    LODWORD(__sz) = 0;
    std::istream::read();
    if ((*(a1 + *(*a1 - 24) + 32) & 5) == 0)
    {
      v14 = __sz;
      v15 = __sz;
      if (a7)
      {
        *a7 = __sz;
      }

      if (a4 && (a5 ? (v16 = v14 < 0) : (v16 = 0), !v16 ? (v17 = 0) : (v17 = 1), a6 || v17))
      {
        if (v17)
        {
          std::istream::tellg();
          *a5 = a4 + v39;
        }

        else if (a6)
        {
          std::istream::tellg();
          *a6 = a4 + v39;
        }

        std::istream::seekg();
        a3->__end_ = a3->__begin_;
        std::vector<int>::shrink_to_fit(a3);
      }

      else
      {
        std::vector<float>::resize(a3, v15);
        if (__sz >= 1)
        {
          begin = a3->__begin_;
          std::istream::read();
        }
      }

      goto LABEL_38;
    }

LABEL_40:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v38, "ReadIntegerVector", "../engine/common/libquasar/libkaldi/src/base/io-funcs-inl.h", 341);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "ReadIntegerVector: read failure at file position ", 49);
    std::istream::tellg();
    MEMORY[0x1C692A9A0](v22, v37);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v38);
  }

  __p = 0;
  v34 = 0;
  v35 = 0;
  std::ws[abi:ne200100]<char,std::char_traits<char>>(a1);
  if (std::istream::peek() != 91)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v38, "ReadIntegerVector", "../engine/common/libquasar/libkaldi/src/base/io-funcs-inl.h", 311);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "ReadIntegerVector: expected to see [, saw ", 42);
    v30 = std::istream::peek();
    v31 = MEMORY[0x1C692A960](v29, v30);
    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, ", at file position ", 19);
    std::istream::tellg();
    MEMORY[0x1C692A9A0](v32, v37);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v38);
  }

  std::istream::get();
  std::ws[abi:ne200100]<char,std::char_traits<char>>(a1);
  while (1)
  {
    v19 = std::istream::peek();
    if (v19 == 93)
    {
      break;
    }

    LODWORD(v38[0]) = 0;
    v20 = MEMORY[0x1C692A880](a1, v38);
    std::ws[abi:ne200100]<char,std::char_traits<char>>(v20);
    if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
    {
      goto LABEL_29;
    }

    std::vector<int>::push_back[abi:ne200100](&__p, v38);
  }

  std::istream::get();
  if (&__p != a3)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a3, __p, v34, (v34 - __p) >> 2);
  }

  if (a7)
  {
    *a7 = a3->__end_ - a3->__begin_;
  }

LABEL_29:
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  if (v19 != 93)
  {
    goto LABEL_40;
  }

LABEL_38:
  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    goto LABEL_40;
  }

  v21 = *MEMORY[0x1E69E9840];
}

void sub_1C30950DC(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1C3095110);
}

void sub_1C30950FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::BlockSoftmax::InitOffset(std::vector<int> *this)
{
  v2 = this[2].__end_ - this[2].__begin_;
  LODWORD(v12[0]) = 0;
  std::vector<int>::resize(this + 3, v2 + 1, v12);
  begin = this[2].__begin_;
  end = this[2].__end_;
  v5 = end - begin;
  if (end != begin)
  {
    v6 = this[3].__begin_;
    v7 = v5 >> 2;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v10 = *v6;
    v8 = v6 + 1;
    v9 = v10;
    do
    {
      v11 = *begin++;
      v9 += v11;
      *v8++ = v9;
      --v7;
    }

    while (v7);
  }

  if (HIDWORD(this->__end_) != *(this[3].__end_ - 1))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "InitOffset", "../engine/common/libquasar/libkaldi/src/nnet/nnet-activation.h", 262);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "Total block dimensions and output dimension mismatch");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }
}

void std::vector<int>::shrink_to_fit(std::vector<int> *this)
{
  end = this->__end_;
  begin = this->__begin_;
  v3 = this->__end_cap_.__value_ - this->__begin_;
  v4 = end - this->__begin_;
  if (v3 > v4)
  {
    if (end != begin)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v4 >> 2);
    }

    v6 = 0;
    if (v3 >> 2)
    {
      v7 = (4 * (v4 >> 2));
      v8 = (this->__end_ - begin);
      v9 = (v7 - v8);
      memcpy((v7 - v8), begin, v8);
      v6 = this->__begin_;
      this->__begin_ = v9;
      this->__end_ = v7;
      this->__end_cap_.__value_ = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t kaldi::WriteIntegerByteArray<int>(void *a1, int a2, int a3, uint64_t a4, unsigned int *a5)
{
  if (a2)
  {
    v17 = 4;
    std::ostream::write();
    if (a4 != a4)
    {
      kaldi::KaldiAssertFailure_("WriteIntegerByteArray", "../engine/common/libquasar/libkaldi/src/base/io-funcs-inl.h", 0xD0, "static_cast<size_t>(vecsz) == count", v9);
    }

    if (a3)
    {
      v10 = -a4;
    }

    else
    {
      v10 = a4;
    }

    v16 = v10;
    result = std::ostream::write();
    if (a4)
    {
      if (a3 && !fst::AlignOutput(a1))
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v15, "WriteIntegerByteArray", "../engine/common/libquasar/libkaldi/src/base/io-funcs-inl.h", 214);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v15, "Could not align output");
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
      }

      result = std::ostream::write();
    }
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[ ", 2);
    for (; a4; --a4)
    {
      v12 = *a5++;
      v13 = MEMORY[0x1C692A960](a1, v12);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " ", 1);
    }

    result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]\n", 2);
  }

  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Write failure in WriteIntegerType.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

int *kaldi::CuArray<int>::CuArray(int *a1, unsigned int *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = *(a2 + 2);
  kaldi::CuArray<int>::Resize(a1, *a2, 1u, a4, a5);
  v7 = *a1;
  if (v7)
  {
    memcpy(*(a1 + 1), *(a2 + 1), 4 * v7);
  }

  return a1;
}

void *kaldi::operator<<<int>(void *a1, int *a2)
{
  memset(&__p, 0, sizeof(__p));
  kaldi::CuArray<int>::CopyToVec(a2, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[", 1);
  if (__p.__end_ != __p.__begin_)
  {
    v3 = 0;
    do
    {
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " ", 1);
      MEMORY[0x1C692A960](v4, __p.__begin_[v3++]);
    }

    while (v3 < __p.__end_ - __p.__begin_);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " ]\n", 3);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  return a1;
}

void sub_1C30955C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::SplitStringToIntegers<int>(uint64_t a1, const char *a2, int a3, std::vector<int> *a4, const char *a5)
{
  if (!a4)
  {
    kaldi::KaldiAssertFailure_("SplitStringToIntegers", "../engine/common/libquasar/libkaldi/src/util/text-utils.h", 0x6A, "out != NULL", a5);
  }

  if (*(a1 + 23) >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (*v6)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    kaldi::SplitStringToVector(a1, a2, a3, &v15);
    std::vector<float>::resize(a4, 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 3));
    v7 = v15;
    if (v16 == v15)
    {
LABEL_14:
      v13 = 1;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v10 = (v7 + v8);
        if (*(v7 + v8 + 23) < 0)
        {
          v10 = *v10;
        }

        __endptr = 0;
        v11 = strtoll(v10, &__endptr, 10);
        if (__endptr == v10 || *__endptr)
        {
          v13 = 0;
          begin = a4->__begin_;
          goto LABEL_18;
        }

        begin = a4->__begin_;
        if (v11 != v11)
        {
          break;
        }

        begin[v9++] = v11;
        v7 = v15;
        v8 += 24;
        if (v9 >= 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 3))
        {
          goto LABEL_14;
        }
      }

      v13 = 0;
LABEL_18:
      a4->__end_ = begin;
    }

    __endptr = &v15;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__endptr);
  }

  else
  {
    a4->__end_ = a4->__begin_;
    return 1;
  }

  return v13;
}

void sub_1C309574C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

kaldi::nnet1::AddShift *kaldi::nnet1::AddShift::AddShift(kaldi::nnet1::AddShift *this, const kaldi::nnet1::AddShift *a2)
{
  *this = &unk_1F42C1850;
  v4 = *(a2 + 1);
  *(this + 8) = *(a2 + 8);
  *(this + 1) = v4;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(this + 24, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 3);
  *this = &unk_1F42C2E78;
  *(this + 6) = &unk_1F42CB198;
  v5 = *(a2 + 56);
  *(this + 71) = *(a2 + 71);
  *(this + 56) = v5;
  *this = &unk_1F42C1668;
  kaldi::CuVector<float>::CuVector(this + 88, a2 + 88, v6, v7, v8);
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(this + 120, *(a2 + 15), *(a2 + 16), (*(a2 + 16) - *(a2 + 15)) >> 5);
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(this + 144, *(a2 + 18), *(a2 + 19), (*(a2 + 19) - *(a2 + 18)) >> 5);
  v9 = *(a2 + 21);
  v10 = *(a2 + 44);
  *(this + 23) = 0;
  *(this + 44) = v10;
  *(this + 21) = v9;
  *(this + 24) = 0;
  *(this + 25) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 184, *(a2 + 23), *(a2 + 24), (*(a2 + 24) - *(a2 + 23)) >> 2);
  *(this + 208) = *(a2 + 208);
  return this;
}

void sub_1C30958CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  kaldi::CuVector<float>::~CuVector(v2 + 11);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
  _Unwind_Resume(a1);
}

void sub_1C3095A64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  kaldi::Vector<float>::Destroy(va);
  kaldi::CuVector<float>::~CuVector(va1);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::AddShift::EnsureCorrs(kaldi::nnet1::AddShift *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if ((*(this + 208) & 1) == 0)
  {
    v6 = *(this + 42);
    v7 = *(this + 20);
    if (v7 > 1)
    {
      v8 = (v7 + 1);
    }

    else
    {
      v8 = 1;
    }

    std::vector<kaldi::CuVector<float>>::resize(this + 15, v8, a3, a4, a5);
    std::vector<kaldi::CuVector<float>>::resize(this + 18, v8, v9, v10, v11);
    if (v8 >= 1)
    {
      v14 = 0;
      v15 = v6 & 0xFFFFFFFE;
      do
      {
        kaldi::CuVector<float>::Resize(*(this + 15) + v14, *(this + 26), 0, v12, v13);
        if (v15 == 2)
        {
          kaldi::CuVector<float>::Resize(*(this + 18) + v14, *(this + 26), 1u, v12, v13);
          if (*(this + 42) == 3)
          {
            v16.i32[0] = 1.0;
            kaldi::CuVectorBase<float>::Set(*(this + 18) + v14, v16);
          }
        }

        v14 += 32;
      }

      while (32 * v8 != v14);
    }

    std::vector<float>::resize((this + 184), v8);
    *(this + 208) = 1;
  }
}

kaldi::nnet1::Rescale *kaldi::nnet1::Rescale::Rescale(kaldi::nnet1::Rescale *this, const kaldi::nnet1::Rescale *a2)
{
  *this = &unk_1F42C1850;
  v4 = *(a2 + 1);
  *(this + 8) = *(a2 + 8);
  *(this + 1) = v4;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(this + 24, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 3);
  *this = &unk_1F42C2E78;
  *(this + 6) = &unk_1F42CB198;
  v5 = *(a2 + 56);
  *(this + 71) = *(a2 + 71);
  *(this + 56) = v5;
  *this = &unk_1F42C2A40;
  kaldi::CuVector<float>::CuVector(this + 88, a2 + 88, v6, v7, v8);
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(this + 120, *(a2 + 15), *(a2 + 16), (*(a2 + 16) - *(a2 + 15)) >> 5);
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(this + 144, *(a2 + 18), *(a2 + 19), (*(a2 + 19) - *(a2 + 18)) >> 5);
  kaldi::CuMatrix<float>::CuMatrix(this + 168, a2 + 168, 111);
  v9 = *(a2 + 27);
  v10 = *(a2 + 56);
  *(this + 29) = 0;
  *(this + 56) = v10;
  *(this + 27) = v9;
  *(this + 30) = 0;
  *(this + 31) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 232, *(a2 + 29), *(a2 + 30), (*(a2 + 30) - *(a2 + 29)) >> 2);
  *(this + 256) = *(a2 + 256);
  return this;
}

void sub_1C3095CF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::CuMatrix<float>::~CuMatrix(v2 + 168);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  kaldi::CuVector<float>::~CuVector(v2 + 11);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Rescale::EnsureCorrs(kaldi::nnet1::Rescale *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if ((*(this + 256) & 1) == 0)
  {
    v6 = *(this + 54);
    v7 = *(this + 20);
    if (v7 > 1)
    {
      v8 = (v7 + 1);
    }

    else
    {
      v8 = 1;
    }

    std::vector<kaldi::CuVector<float>>::resize(this + 15, v8, a3, a4, a5);
    std::vector<kaldi::CuVector<float>>::resize(this + 18, v8, v9, v10, v11);
    if (v8 >= 1)
    {
      v14 = 0;
      v15 = v6 & 0xFFFFFFFE;
      do
      {
        kaldi::CuVector<float>::Resize(*(this + 15) + v14, *(this + 26), 0, v12, v13);
        if (v15 == 2)
        {
          kaldi::CuVector<float>::Resize(*(this + 18) + v14, *(this + 26), 1u, v12, v13);
          if (*(this + 54) == 3)
          {
            v16.i32[0] = 1.0;
            kaldi::CuVectorBase<float>::Set(*(this + 18) + v14, v16);
          }
        }

        v14 += 32;
      }

      while (32 * v8 != v14);
    }

    std::vector<float>::resize((this + 232), v8);
    *(this + 256) = 1;
  }
}

kaldi::nnet1::Rbm *kaldi::nnet1::Rbm::Rbm(kaldi::nnet1::Rbm *this, const kaldi::nnet1::Rbm *a2)
{
  *this = &unk_1F42C1850;
  v4 = *(a2 + 1);
  *(this + 8) = *(a2 + 8);
  *(this + 1) = v4;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(this + 24, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 3);
  *this = &unk_1F42C3BC0;
  v5 = *(a2 + 3);
  *(this + 8) = *(a2 + 8);
  *(this + 3) = v5;
  *this = &unk_1F42C25B8;
  kaldi::CuMatrix<float>::CuMatrix(this + 72, a2 + 72, 111);
  kaldi::CuVector<float>::CuVector(this + 120, a2 + 120, v6, v7, v8);
  kaldi::CuVector<float>::CuVector(this + 152, a2 + 152, v9, v10, v11);
  kaldi::CuMatrix<float>::CuMatrix(this + 184, a2 + 184, 111);
  kaldi::CuVector<float>::CuVector(this + 232, a2 + 232, v12, v13, v14);
  kaldi::CuVector<float>::CuVector(this + 264, a2 + 264, v15, v16, v17);
  *(this + 37) = *(a2 + 37);
  return this;
}

void sub_1C3095F4C(_Unwind_Exception *a1)
{
  kaldi::CuVector<float>::~CuVector(v1 + 29);
  kaldi::CuMatrix<float>::~CuMatrix((v1 + 23));
  kaldi::CuVector<float>::~CuVector(v1 + 19);
  kaldi::CuVector<float>::~CuVector(v1 + 15);
  kaldi::CuMatrix<float>::~CuMatrix((v1 + 9));
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    v1[4] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

float kaldi::nnet1::CheckNanInf<float>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  result = kaldi::CuMatrixBase<float>::Sum(a1, a2, a3, a4, a5);
  if (fabsf(result) == INFINITY)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v8, "CheckNanInf", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 227);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "'inf' in ", 9);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, a2);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v8);
  }

  return result;
}

float kaldi::nnet1::ComputeStdDev<float>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v7 = *(a1 + 16);
  v6 = *(a1 + 20);
  v8 = kaldi::CuMatrixBase<float>::Sum(a1, a2, a3, a4, a5);
  v9 = kaldi::CuMatrix<float>::CuMatrix(v25, a1, 111);
  kaldi::CuMatrixBase<float>::MulElements(v9, a1, v10, v11, v12);
  v17 = kaldi::CuMatrixBase<float>::Sum(v25, v13, v14, v15, v16);
  v18 = (v7 * v6);
  v19 = v8 / v18;
  v20 = v17 / v18;
  if ((v20 - (v19 * v19)) >= 0.0)
  {
    v21 = v20 - (v19 * v19);
  }

  else
  {
    v21 = 0.0;
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v24, "ComputeStdDev", "../engine/common/libquasar/libkaldi/src/nnet/nnet-various.h", 245);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Forcing the variance to be non-negative! ", 41);
      v22 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "->0.0", 5);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v24);
    }
  }

  kaldi::CuMatrix<float>::~CuMatrix(v25);
  return sqrtf(v21);
}

kaldi::nnet1::Recurrent *kaldi::nnet1::Recurrent::Recurrent(kaldi::nnet1::Recurrent *this, const kaldi::nnet1::Recurrent *a2)
{
  v4 = a2 + *(*a2 - 24);
  *(this + 66) = &unk_1F42C1850;
  v5 = *(v4 + 1);
  *(this + 272) = *(v4 + 8);
  *(this + 67) = v5;
  *(this + 69) = 0;
  *(this + 71) = 0;
  *(this + 70) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(this + 552, *(v4 + 3), *(v4 + 4), (*(v4 + 4) - *(v4 + 3)) >> 3);
  *(this + 66) = &unk_1F42C2E78;
  *(this + 72) = &unk_1F42CB198;
  v6 = *(v4 + 56);
  *(this + 599) = *(v4 + 71);
  *(this + 584) = v6;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(this, off_1F42C2A18, a2);
  *this = &unk_1F42C26A8;
  *(this + 66) = &unk_1F42C28F8;
  kaldi::CuMatrix<float>::CuMatrix(this + 160, a2 + 160, 111);
  kaldi::CuVector<float>::CuVector(this + 208, a2 + 208, v7, v8, v9);
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 240, *(a2 + 30), *(a2 + 31), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 31) - *(a2 + 30)) >> 4));
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 35) = 0;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(this + 264, *(a2 + 33), *(a2 + 34), (*(a2 + 34) - *(a2 + 33)) >> 5);
  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 38) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 288, *(a2 + 36), *(a2 + 37), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 37) - *(a2 + 36)) >> 4));
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 41) = 0;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(this + 312, *(a2 + 39), *(a2 + 40), (*(a2 + 40) - *(a2 + 39)) >> 5);
  *(this + 42) = 0;
  *(this + 43) = 0;
  *(this + 44) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 336, *(a2 + 42), *(a2 + 43), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 43) - *(a2 + 42)) >> 4));
  *(this + 45) = 0;
  *(this + 46) = 0;
  *(this + 47) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 360, *(a2 + 45), *(a2 + 46), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 46) - *(a2 + 45)) >> 4));
  v10 = *(a2 + 24);
  *(this + 100) = *(a2 + 100);
  *(this + 24) = v10;
  *(this + 52) = 0;
  *(this + 53) = 0;
  *(this + 51) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 408, *(a2 + 51), *(a2 + 52), (*(a2 + 52) - *(a2 + 51)) >> 2);
  kaldi::CuMatrix<float>::CuMatrix(this + 432, a2 + 432, 111);
  *(this + 60) = 0;
  *(this + 61) = 0;
  *(this + 62) = 0;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(this + 480, *(a2 + 60), *(a2 + 61), (*(a2 + 61) - *(a2 + 60)) >> 5);
  *(this + 63) = 0;
  *(this + 64) = 0;
  *(this + 65) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 504, *(a2 + 63), *(a2 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 64) - *(a2 + 63)) >> 4));
  return this;
}

void sub_1C30964A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  kaldi::CuMatrix<float>::~CuMatrix(v3 + 432);
  v5 = *(v3 + 51);
  if (v5)
  {
    *(v3 + 52) = v5;
    operator delete(v5);
  }

  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](va);
  kaldi::CuVector<float>::~CuVector(v3 + 26);
  kaldi::CuMatrix<float>::~CuMatrix(v3 + 160);
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(v3, off_1F42C2A18);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
  _Unwind_Resume(a1);
}

kaldi::nnet1::RecurrentBaseComponent *kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(kaldi::nnet1::RecurrentBaseComponent *this, const kaldi::nnet1::RecurrentBaseComponent *a2, uint64_t a3)
{
  *this = &unk_1F42C1FB8;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 8, *(a3 + 8), *(a3 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 16) - *(a3 + 8)) >> 4));
  *(this + 4) = &unk_1F42CB1B8;
  *(this + 10) = *(a3 + 40);
  v6 = *a2;
  *this = *a2;
  *(this + *(v6 - 24)) = *(a2 + 1);
  *(this + 6) = &unk_1F42CB198;
  v7 = *(a3 + 56);
  *(this + 71) = *(a3 + 71);
  *(this + 56) = v7;
  *&v7 = *(a3 + 96);
  *(this + 13) = 0;
  *(this + 6) = &unk_1F42CB1D8;
  *(this + 11) = &unk_1F42CB1F8;
  *(this + 12) = v7;
  *(this + 14) = 0;
  *(this + 15) = 0;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(this + 104, *(a3 + 104), *(a3 + 112), (*(a3 + 112) - *(a3 + 104)) >> 5);
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 128, *(a3 + 128), *(a3 + 136), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 136) - *(a3 + 128)) >> 4));
  *(this + 19) = *(a3 + 152);
  return this;
}

void sub_1C309678C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  kaldi::nnet1::RecurrentNnetTrainOptions::~RecurrentNnetTrainOptions(v3);
  kaldi::nnet1::HistoricalComponent::~HistoricalComponent(v2);
  _Unwind_Resume(a1);
}

void sub_1C3096900(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  kaldi::Matrix<float>::~Matrix(va);
  kaldi::CuMatrix<float>::~CuMatrix(va1);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Recurrent::EnsureTrainingBuffers(kaldi::nnet1::Recurrent *this)
{
  if ((*(this + 389) & 1) == 0)
  {
    v2 = *(this + 39);
    v3 = *(this + 20);
    if (v3 > 1)
    {
      v4 = (v3 + 1);
    }

    else
    {
      v4 = 1;
    }

    std::vector<kaldi::CuMatrix<float>>::resize(this + 30, v4);
    std::vector<kaldi::CuVector<float>>::resize(this + 33, v4, v5, v6, v7);
    std::vector<kaldi::CuMatrix<float>>::resize(this + 45, v4);
    std::vector<kaldi::CuMatrix<float>>::resize(this + 36, v4);
    std::vector<kaldi::CuVector<float>>::resize(this + 39, v4, v8, v9, v10);
    if (v4 >= 1)
    {
      v11 = 0;
      v12 = (*(this + 24) + *(this + 24) * *(this + 25));
      v13 = v2 & 0xFFFFFFFE;
      do
      {
        kaldi::CuMatrix<float>::Resize(*(this + 30) + 48 * v11, *(this + 45), *(this + 44), 0, 0);
        kaldi::CuVector<float>::Resize(*(this + 33) + 32 * v11, *(this + 56), 0, v14, v15);
        kaldi::CuMatrix<float>::Resize(*(this + 45) + 48 * v11, v12, *(this + *(*this - 24) + 12), 0, 0);
        if (v13 == 2)
        {
          kaldi::CuMatrix<float>::Resize(*(this + 36) + 48 * v11, *(this + 45), *(this + 44), 1u, 0);
          kaldi::CuVector<float>::Resize(*(this + 39) + 32 * v11, *(this + 56), 1u, v16, v17);
          if (*(this + 39) == 3)
          {
            v18.i32[0] = 1.0;
            kaldi::CuMatrixBase<float>::Set(*(this + 36) + 48 * v11, v18);
            v19.i32[0] = 1.0;
            kaldi::CuVectorBase<float>::Set(*(this + 39) + 32 * v11, v19);
          }
        }

        ++v11;
      }

      while (v11 != v4);
    }

    if (*(this + 100) > 0.0)
    {
      kaldi::CuMatrix<float>::Resize(this + 432, *(this + 45), *(this + 44), 1u, 0);
    }

    *(this + 389) = 1;
  }
}

kaldi::nnet1::ConvolutionalComponent *kaldi::nnet1::ConvolutionalComponent::ConvolutionalComponent(kaldi::nnet1::ConvolutionalComponent *this, const kaldi::nnet1::ConvolutionalComponent *a2)
{
  *this = &unk_1F42C1850;
  v4 = *(a2 + 1);
  *(this + 8) = *(a2 + 8);
  *(this + 1) = v4;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(this + 24, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 3);
  *this = &unk_1F42C2E78;
  *(this + 6) = &unk_1F42CB198;
  v5 = *(a2 + 56);
  *(this + 71) = *(a2 + 71);
  *(this + 56) = v5;
  *this = &unk_1F42C19D0;
  v6 = *(a2 + 11);
  *(this + 24) = *(a2 + 24);
  *(this + 11) = v6;
  kaldi::CuMatrix<float>::CuMatrix(this + 104, a2 + 104, 111);
  kaldi::CuVector<float>::CuVector(this + 152, a2 + 152, v7, v8, v9);
  v10 = *(a2 + 23);
  *(this + 24) = 0;
  *(this + 23) = v10;
  *(this + 25) = 0;
  *(this + 26) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 192, *(a2 + 24), *(a2 + 25), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 25) - *(a2 + 24)) >> 4));
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 29) = 0;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(this + 216, *(a2 + 27), *(a2 + 28), (*(a2 + 28) - *(a2 + 27)) >> 5);
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 240, *(a2 + 30), *(a2 + 31), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 31) - *(a2 + 30)) >> 4));
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 35) = 0;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(this + 264, *(a2 + 33), *(a2 + 34), (*(a2 + 34) - *(a2 + 33)) >> 5);
  v11 = *(a2 + 36);
  *(this + 74) = *(a2 + 74);
  *(this + 36) = v11;
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 38) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 304, *(a2 + 38), *(a2 + 39), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 39) - *(a2 + 38)) >> 4));
  *(this + 41) = 0;
  *(this + 42) = 0;
  *(this + 43) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 328, *(a2 + 41), *(a2 + 42), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 42) - *(a2 + 41)) >> 4));
  *(this + 44) = 0;
  *(this + 45) = 0;
  *(this + 46) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 352, *(a2 + 44), *(a2 + 45), (*(a2 + 45) - *(a2 + 44)) >> 2);
  *(this + 376) = *(a2 + 376);
  return this;
}

void sub_1C3096D24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](va);
  kaldi::CuVector<float>::~CuVector(v2 + 19);
  kaldi::CuMatrix<float>::~CuMatrix(v2 + 104);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ConvolutionalComponent::EnsureCorrs(kaldi::nnet1::ConvolutionalComponent *this)
{
  if ((*(this + 376) & 1) == 0)
  {
    v2 = *(this + 46);
    v3 = *(this + 20);
    if (v3 > 1)
    {
      v4 = (v3 + 1);
    }

    else
    {
      v4 = 1;
    }

    std::vector<kaldi::CuMatrix<float>>::resize(this + 24, v4);
    std::vector<kaldi::CuVector<float>>::resize(this + 27, v4, v5, v6, v7);
    std::vector<kaldi::CuMatrix<float>>::resize(this + 30, v4);
    std::vector<kaldi::CuVector<float>>::resize(this + 33, v4, v8, v9, v10);
    if (v4 >= 1)
    {
      v11 = 0;
      v12 = v2 & 0xFFFFFFFE;
      do
      {
        kaldi::CuMatrix<float>::Resize(*(this + 24) + 48 * v11, *(this + 31), *(this + 30), 0, 0);
        kaldi::CuVector<float>::Resize(*(this + 27) + 32 * v11, *(this + 31), 0, v13, v14);
        if (v12 == 2)
        {
          kaldi::CuMatrix<float>::Resize(*(this + 30) + 48 * v11, *(this + 31), *(this + 30), 1u, 0);
          kaldi::CuVector<float>::Resize(*(this + 33) + 32 * v11, *(this + 31), 1u, v15, v16);
          if (*(this + 46) == 3)
          {
            v17.i32[0] = 1.0;
            kaldi::CuMatrixBase<float>::Set(*(this + 30) + 48 * v11, v17);
            v18.i32[0] = 1.0;
            kaldi::CuVectorBase<float>::Set(*(this + 33) + 32 * v11, v18);
          }
        }

        ++v11;
      }

      while (v11 != v4);
    }

    std::vector<float>::resize((this + 352), v4);
    *(this + 376) = 1;
  }
}

kaldi::nnet1::MaxPooling2DComponent *kaldi::nnet1::MaxPooling2DComponent::MaxPooling2DComponent(kaldi::nnet1::MaxPooling2DComponent *this, const kaldi::nnet1::MaxPooling2DComponent *a2)
{
  *this = &unk_1F42C1850;
  v4 = *(a2 + 1);
  *(this + 8) = *(a2 + 8);
  *(this + 1) = v4;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(this + 24, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 3);
  *this = &unk_1F42C15A8;
  *(this + 3) = *(a2 + 3);
  *(this + 8) = *(a2 + 8);
  return this;
}

kaldi::nnet1::Desplice *kaldi::nnet1::Desplice::Desplice(kaldi::nnet1::Desplice *this, const kaldi::nnet1::Desplice *a2)
{
  *this = &unk_1F42C1850;
  v4 = *(a2 + 1);
  *(this + 8) = *(a2 + 8);
  *(this + 1) = v4;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(this + 24, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 3);
  *this = &unk_1F42C1BB8;
  v5 = *(a2 + 6);
  *(this + 14) = *(a2 + 14);
  *(this + 6) = v5;
  kaldi::CuArray<int>::CuArray(this + 16, a2 + 16, v6, v7, v8);
  kaldi::CuArray<int>::CuArray(this + 22, a2 + 22, v9, v10, v11);
  kaldi::CuArray<int>::CuArray(this + 28, a2 + 28, v12, v13, v14);
  kaldi::CuArray<int>::CuArray(this + 34, a2 + 34, v15, v16, v17);
  return this;
}

void sub_1C3097080(_Unwind_Exception *exception_object)
{
  v4 = v1[15];
  if (v4)
  {
    free(v4);
  }

  v1[14] = 0;
  v1[15] = 0;
  v1[16] = 0;
  v5 = v1[12];
  if (v5)
  {
    free(v5);
  }

  v1[11] = 0;
  v1[12] = 0;
  v1[13] = 0;
  v6 = v1[9];
  if (v6)
  {
    free(v6);
  }

  v1[8] = 0;
  v1[9] = 0;
  v1[10] = 0;
  *v1 = v2;
  v7 = v1[3];
  if (v7)
  {
    v1[4] = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::Desplice::Init(kaldi::nnet1::Desplice *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(this + 2);
  v6 = *(this + 14);
  v7 = v5 / v6;
  if (v5 % v6)
  {
    kaldi::KaldiAssertFailure_("Init", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolution-splicer.h", 0x77, "input_dim_ % time_length_ == 0", a5);
  }

  v9 = *(this + 12);
  v10 = v6 / v9;
  v11 = *(this + 3);
  if (v11 != v10 * v7)
  {
    kaldi::KaldiAssertFailure_("Init", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolution-splicer.h", 0x7A, "output_dim_ == out_time_length * other_dim", a5);
  }

  v12 = *(this + 13) * v9;
  std::vector<int>::vector[abi:ne200100](&v47, v11 * v12);
  std::vector<int>::vector[abi:ne200100](&v45, *(this + 3) * v12);
  v13 = *(this + 13) * *(this + 2);
  LODWORD(__p) = -1;
  std::vector<int>::vector[abi:ne200100](&v43, v13);
  std::vector<int>::vector[abi:ne200100](&__p, *(this + 13) * *(this + 2));
  if (v12 >= 1)
  {
    v16 = 0;
    v14 = "n >= 0 && n < output_dim_";
    do
    {
      if (v7 >= 1)
      {
        v17 = 0;
        for (i = 0; i != v7; ++i)
        {
          if (v10 >= 1)
          {
            v19 = 0;
            v20 = v47;
            v21 = (v48 - v47) >> 2;
            v22 = v43;
            v23 = (v44 - v43) >> 2;
            v15 = v45;
            v24 = __p;
            v25 = v17;
            while (1)
            {
              if (v17 < 0 || (v26 = *(this + 3), v25 >= v26))
              {
                v40 = 137;
                goto LABEL_35;
              }

              v27 = v17 + v19 + v16 * v26;
              if (v21 <= v27)
              {
                break;
              }

              v28 = *(this + 13);
              if (v28 < 0)
              {
                v40 = 139;
                v14 = "r >= 0 && r < row_stride_";
                goto LABEL_35;
              }

              v29 = v16 / v28 + *(this + 12) * v19;
              v30 = *(this + 14);
              v31 = v29 + v30 * i;
              if (v31 < 0 || (v32 = *(this + 2), v31 >= v32))
              {
                v40 = 140;
                v14 = "c >= 0 && c < input_dim_";
                goto LABEL_35;
              }

              if (v29 >= v30)
              {
                v40 = 141;
                v14 = "src_frame < time_length_";
                goto LABEL_35;
              }

              v33 = v16 % v28;
              if (v23 <= v31 + v32 * v33)
              {
                v40 = 142;
                v14 = "r * input_dim_ + c < backward_r_h.size()";
                goto LABEL_35;
              }

              v20[v27] = v33;
              *&v15[4 * v25 + 4 * *(this + 3) * v16] = v31;
              v22[v31 + *(this + 2) * v33] = v16;
              v24[v31 + *(this + 2) * v33] = v25;
              ++v19;
              ++v25;
              if (v10 == v19)
              {
                goto LABEL_18;
              }
            }

            v40 = 138;
            v14 = "m * output_dim_ + n < forward_r_h.size()";
LABEL_35:
            kaldi::KaldiAssertFailure_("Init", "../engine/common/libquasar/libkaldi/src/nnet/nnet-convolution-splicer.h", v40, v14, v15);
          }

LABEL_18:
          v17 += v10;
        }
      }

      ++v16;
    }

    while (v16 != v12);
  }

  kaldi::CuArray<int>::Resize(this + 64, (v48 - v47) >> 2, 1u, v14, v15);
  memcpy(*(this + 9), v47, v48 - v47);
  kaldi::CuArray<int>::Resize(this + 88, (v46 - v45) >> 2, 1u, v34, v35);
  memcpy(*(this + 12), v45, v46 - v45);
  kaldi::CuArray<int>::Resize(this + 112, (v44 - v43) >> 2, 1u, v36, v37);
  memcpy(*(this + 15), v43, v44 - v43);
  kaldi::CuArray<int>::Resize(this + 136, (v42 - __p) >> 2, 1u, v38, v39);
  memcpy(*(this + 18), __p, v42 - __p);
  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }
}

void sub_1C309747C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

kaldi::nnet1::FramePoolingComponent *kaldi::nnet1::FramePoolingComponent::FramePoolingComponent(kaldi::nnet1::FramePoolingComponent *this, const kaldi::nnet1::FramePoolingComponent *a2)
{
  *this = &unk_1F42C1850;
  v4 = *(a2 + 1);
  *(this + 8) = *(a2 + 8);
  *(this + 1) = v4;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(this + 24, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 3);
  *this = &unk_1F42C2E78;
  *(this + 6) = &unk_1F42CB198;
  v5 = *(a2 + 56);
  *(this + 71) = *(a2 + 71);
  *(this + 56) = v5;
  *this = &unk_1F42C1E90;
  *(this + 22) = *(a2 + 22);
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 96, *(a2 + 12), *(a2 + 13), (*(a2 + 13) - *(a2 + 12)) >> 2);
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  std::vector<kaldi::Vector<float>>::__init_with_size[abi:ne200100]<kaldi::Vector<float>*,kaldi::Vector<float>*>(this + 120, *(a2 + 15), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 15)) >> 3));
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  std::vector<kaldi::Vector<float>>::__init_with_size[abi:ne200100]<kaldi::Vector<float>*,kaldi::Vector<float>*>(this + 144, *(a2 + 18), *(a2 + 19), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 19) - *(a2 + 18)) >> 3));
  v6 = *(a2 + 42);
  *(this + 172) = *(a2 + 172);
  *(this + 42) = v6;
  return this;
}

void sub_1C3097658(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<kaldi::Vector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 13) = v5;
    operator delete(v5);
  }

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
  _Unwind_Resume(a1);
}

uint64_t std::vector<kaldi::Vector<float>>::__init_with_size[abi:ne200100]<kaldi::Vector<float>*,kaldi::Vector<float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::Vector<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C3097700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<kaldi::Vector<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<kaldi::Vector<float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::Vector<float>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::Vector<float>>,kaldi::Vector<float>*,kaldi::Vector<float>*,kaldi::Vector<float>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = a4;
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 != a3)
  {
    v7 = a2;
    do
    {
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      kaldi::Vector<float>::Resize(v5, *(v7 + 8), 1, a4, a5);
      kaldi::VectorBase<float>::CopyFromVec(v5, v7, v8, v9, v10);
      v7 += 24;
      v5 = v15 + 24;
      v15 += 24;
    }

    while (v7 != a3);
  }

  v13 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::Vector<float>>,kaldi::Vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](v12);
  return v5;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::Vector<float>>,kaldi::Vector<float>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 24;
    kaldi::Vector<float>::Destroy(v1);
  }
}

kaldi::nnet1::ParallelComponent *kaldi::nnet1::ParallelComponent::ParallelComponent(kaldi::nnet1::ParallelComponent *this, const kaldi::nnet1::ParallelComponent *a2)
{
  v4 = a2 + *(*a2 - 24);
  *(this + 26) = &unk_1F42C1850;
  v5 = *(v4 + 1);
  *(this + 112) = *(v4 + 8);
  *(this + 27) = v5;
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 29) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(this + 232, *(v4 + 3), *(v4 + 4), (*(v4 + 4) - *(v4 + 3)) >> 3);
  *(this + 26) = &unk_1F42C2E78;
  *(this + 32) = &unk_1F42CB198;
  v6 = *(v4 + 56);
  *(this + 279) = *(v4 + 71);
  *(this + 264) = v6;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(this, off_1F42C2590, a2);
  *this = &unk_1F42C21B8;
  *(this + 26) = &unk_1F42C2470;
  *(this + 20) = &unk_1F42C2310;
  *(this + 21) = &unk_1F42C2338;
  v7 = *(a2 + 88);
  v8 = *(a2 + 178);
  *(this + 23) = 0;
  *(this + 178) = v8;
  *(this + 88) = v7;
  *(this + 24) = 0;
  *(this + 25) = 0;
  std::vector<kaldi::nnet1::Nnet>::__init_with_size[abi:ne200100]<kaldi::nnet1::Nnet*,kaldi::nnet1::Nnet*>(this + 184, *(a2 + 23), *(a2 + 24), 0x51B3BEA3677D46CFLL * ((*(a2 + 24) - *(a2 + 23)) >> 3));
  return this;
}

void sub_1C3097A18(_Unwind_Exception *a1)
{
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(v2, off_1F42C2590);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v1);
  _Unwind_Resume(a1);
}

uint64_t std::vector<kaldi::nnet1::Nnet>::__init_with_size[abi:ne200100]<kaldi::nnet1::Nnet*,kaldi::nnet1::Nnet*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::nnet1::Nnet>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C3097AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<kaldi::nnet1::Nnet>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<kaldi::nnet1::Nnet>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAE4C415C9882BALL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::nnet1::Nnet>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::nnet1::Nnet>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAE4C415C9882BALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

kaldi::nnet1::Nnet *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::nnet1::Nnet>,kaldi::nnet1::Nnet*,kaldi::nnet1::Nnet*,kaldi::nnet1::Nnet*>(int a1, kaldi::nnet1::Nnet *a2, kaldi::nnet1::Nnet *a3, kaldi::nnet1::Nnet *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      kaldi::nnet1::Nnet::Nnet(this, v6);
      v6 = (v6 + 376);
      this = (this + 376);
      v7 -= 376;
    }

    while (v6 != a3);
  }

  return this;
}

void sub_1C3097BD8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 376);
    do
    {
      kaldi::nnet1::Nnet::~Nnet(v4);
      v4 = (v5 - 376);
      v2 += 376;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<kaldi::nnet1::Nnet>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        kaldi::nnet1::Nnet::~Nnet((v4 - 376));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<kaldi::nnet1::Nnet>::push_back[abi:ne200100](uint64_t a1, const kaldi::nnet1::Nnet *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<kaldi::nnet1::Nnet>::__emplace_back_slow_path<kaldi::nnet1::Nnet const&>(a1, a2);
  }

  else
  {
    kaldi::nnet1::Nnet::Nnet(*(a1 + 8), a2);
    result = v3 + 376;
    *(a1 + 8) = v3 + 376;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t *kaldi::nnet1::ParallelComponent::CheckNetworkDimensions(uint64_t *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = this;
  *(this + 177) = 1;
  v6 = this[23];
  v7 = this[24];
  if (v6 == v7)
  {
    v9 = 0;
    v8 = 0;
    v20 = *this;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = kaldi::nnet1::Nnet::InputDim(v6, a2, a3, a4, a5);
      v15 = kaldi::nnet1::Nnet::OutputDim(v6, v11, v12, v13, v14);
      this = kaldi::nnet1::Nnet::OutputDim(v6, v16, v17, v18, v19);
      v20 = *v5;
      if (this != *(v5 + 12 + *(*v5 - 24)))
      {
        *(v5 + 177) = 0;
      }

      v8 += v10;
      v9 += v15;
      v6 = (v6 + 376);
    }

    while (v6 != v7);
  }

  *(v5 + 176) = 1;
  v21 = v20;
  v22 = *(v5 + *(v20 - 24) + 8);
  if (v22 != v8)
  {
    if (v8 / (0x51B3BEA3677D46CFLL * ((*(v5 + 192) - *(v5 + 184)) >> 3)) != v22)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v23, "CheckNetworkDimensions", "../engine/common/libquasar/libkaldi/src/nnet/nnet-parallel-component.h", 579);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v23, "Input dimension of parallel component and input dimensions of nested networks do not match.");
      goto LABEL_16;
    }

    *(v5 + 176) = 0;
  }

  if ((*(v5 + 177) & 1) == 0 && *(v5 + *(v21 - 24) + 12) != v9)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v23, "CheckNetworkDimensions", "../engine/common/libquasar/libkaldi/src/nnet/nnet-parallel-component.h", 584);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v23, "Output dimension of parallel component and output dimensions of nested networks do not match.");
LABEL_16:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v23);
  }

  return this;
}

uint64_t std::vector<kaldi::nnet1::Nnet>::__emplace_back_slow_path<kaldi::nnet1::Nnet const&>(uint64_t a1, const kaldi::nnet1::Nnet *a2)
{
  v2 = 0x51B3BEA3677D46CFLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xAE4C415C9882B9)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0xA3677D46CEFA8D9ELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xA3677D46CEFA8D9ELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x51B3BEA3677D46CFLL * ((*(a1 + 16) - *a1) >> 3)) >= 0x572620AE4C415CLL)
  {
    v6 = 0xAE4C415C9882B9;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::nnet1::Nnet>>(a1, v6);
  }

  v13 = 0;
  v14 = 376 * v2;
  kaldi::nnet1::Nnet::Nnet((376 * v2), a2);
  v15 = (376 * v2 + 376);
  v7 = *(a1 + 8);
  v8 = (376 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::nnet1::Nnet>,kaldi::nnet1::Nnet*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<kaldi::nnet1::Nnet>::~__split_buffer(&v13);
  return v12;
}

void sub_1C3097FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<kaldi::nnet1::Nnet>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::nnet1::Nnet>,kaldi::nnet1::Nnet*>(int a1, kaldi::nnet1::Nnet *a2, kaldi::nnet1::Nnet *a3, kaldi::nnet1::Nnet *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      kaldi::nnet1::Nnet::Nnet(this, v8);
      v8 = (v8 + 376);
      this = (this + 376);
      v7 -= 376;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      kaldi::nnet1::Nnet::~Nnet(v6);
      v6 = (v6 + 376);
    }
  }
}

void sub_1C3098090(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 376);
    do
    {
      kaldi::nnet1::Nnet::~Nnet(v4);
      v4 = (v5 - 376);
      v2 += 376;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<kaldi::nnet1::Nnet>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 376;
    kaldi::nnet1::Nnet::~Nnet((i - 376));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<kaldi::nnet1::Nnet>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0x51B3BEA3677D46CFLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<kaldi::nnet1::Nnet>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 376 * a2;
    while (v3 != v7)
    {
      kaldi::nnet1::Nnet::~Nnet((v3 - 376));
    }

    a1[1] = v7;
  }
}

void *std::vector<kaldi::nnet1::Nnet>::__append(void *result, unint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  if (0x51B3BEA3677D46CFLL * ((v2 - v3) >> 3) < a2)
  {
    v4 = 0x51B3BEA3677D46CFLL * ((v3 - *result) >> 3);
    if (v4 + a2 <= 0xAE4C415C9882B9)
    {
      v5 = 0x51B3BEA3677D46CFLL * ((v2 - *result) >> 3);
      v6 = 2 * v5;
      if (2 * v5 <= v4 + a2)
      {
        v6 = v4 + a2;
      }

      if (v5 >= 0x572620AE4C415CLL)
      {
        v7 = 0xAE4C415C9882B9;
      }

      else
      {
        v7 = v6;
      }

      if (v7)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::nnet1::Nnet>>(result, v7);
      }

      kaldi::nnet1::Nnet::Nnet((376 * v4));
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (a2)
  {
    kaldi::nnet1::Nnet::Nnet(v3);
  }

  result[1] = v3;
  return result;
}

void sub_1C3098314(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<kaldi::nnet1::Nnet>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::CompressedWordTransComponent::SetVecTable(kaldi::nnet1::CompressedWordTransComponent *this, const kaldi::CompressedMatrix *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *a2;
  if (!*a2)
  {
    v6 = *(this + 3);
    if (!v6)
    {
      v7 = *(this + 2);
      goto LABEL_7;
    }

LABEL_19:
    kaldi::KaldiAssertFailure_("SetVecTable", "../engine/common/libquasar/libkaldi/src/nnet/nnet-compressed-word-trans-component.h", 0x58, "src.NumCols() == output_dim_", a5);
  }

  if (*(v5 + 12) != *(this + 3))
  {
    goto LABEL_19;
  }

  v6 = *(v5 + 8);
  v7 = *(this + 2);
  if (v6 % v7)
  {
    kaldi::KaldiAssertFailure_("SetVecTable", "../engine/common/libquasar/libkaldi/src/nnet/nnet-compressed-word-trans-component.h", 0x59, "src.NumRows() % input_dim_ == 0", a5);
  }

LABEL_7:
  v8 = v6 / v7;
  *(this + 24) = v8;
  if (v7 >= 1)
  {
    v9 = 0;
    v10 = vdupq_n_s64(v7 - 1);
    v11 = (v7 + 3) & 0xFFFFFFFC;
    v12 = (*(this + 7) + 8);
    v13 = xmmword_1C378AEF0;
    v14 = xmmword_1C378AF00;
    v15 = vdupq_n_s64(4uLL);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v10, v14));
      if (vuzp1_s16(v16, *v10.i8).u8[0])
      {
        *(v12 - 2) = v9;
      }

      if (vuzp1_s16(v16, *&v10).i8[2])
      {
        *(v12 - 1) = (v8 + v9);
      }

      if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v13))).i32[1])
      {
        *v12 = (2 * v8 + v9);
        v12[1] = (3 * v8 + v9);
      }

      v13 = vaddq_s64(v13, v15);
      v14 = vaddq_s64(v14, v15);
      v9 += 4 * v8;
      v12 += 4;
      v11 -= 4;
    }

    while (v11);
  }

  v17 = this + 80;

  return kaldi::CompressedMatrix::operator=(v17, a2, a3, a4, a5);
}

kaldi::nnet1::SharedNceComponent *kaldi::nnet1::SharedNceComponent::SharedNceComponent(kaldi::nnet1::SharedNceComponent *this, const kaldi::nnet1::SharedNceComponent *a2)
{
  *this = &unk_1F42C1850;
  v4 = *(a2 + 1);
  *(this + 8) = *(a2 + 8);
  *(this + 1) = v4;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(this + 24, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 3);
  *this = &unk_1F42C2E78;
  *(this + 6) = &unk_1F42CB198;
  v5 = *(a2 + 56);
  *(this + 71) = *(a2 + 71);
  *(this + 56) = v5;
  *this = &unk_1F42C2C90;
  kaldi::CuMatrix<float>::CuMatrix(this + 88, a2 + 88, 111);
  kaldi::CuVector<float>::CuVector(this + 136, a2 + 136, v6, v7, v8);
  kaldi::CuMatrix<float>::CuMatrix(this + 168, a2 + 168, 111);
  kaldi::CuMatrix<float>::CuMatrix(this + 216, a2 + 216, 111);
  kaldi::CuMatrix<float>::CuMatrix(this + 264, a2 + 264, 111);
  kaldi::CuVector<float>::CuVector(this + 312, a2 + 312, v9, v10, v11);
  kaldi::CuVector<float>::CuVector(this + 344, a2 + 344, v12, v13, v14);
  kaldi::CuVector<float>::CuVector(this + 376, a2 + 376, v15, v16, v17);
  v18 = *(a2 + 408);
  *(this + 53) = *(a2 + 53);
  *(this + 408) = v18;
  return this;
}

void sub_1C3098618(_Unwind_Exception *a1)
{
  kaldi::CuVector<float>::~CuVector(v1 + 43);
  kaldi::CuVector<float>::~CuVector(v1 + 39);
  kaldi::CuMatrix<float>::~CuMatrix(v1 + 264);
  kaldi::CuMatrix<float>::~CuMatrix(v1 + 216);
  kaldi::CuMatrix<float>::~CuMatrix(v1 + 168);
  kaldi::CuVector<float>::~CuVector(v1 + 17);
  kaldi::CuMatrix<float>::~CuMatrix(v1 + 88);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v1);
  _Unwind_Resume(a1);
}

kaldi::nnet1::WordVecComponent *kaldi::nnet1::WordVecComponent::WordVecComponent(kaldi::nnet1::WordVecComponent *this, const kaldi::nnet1::WordVecComponent *a2)
{
  *this = &unk_1F42C1850;
  v4 = *(a2 + 1);
  *(this + 8) = *(a2 + 8);
  *(this + 1) = v4;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(this + 24, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 3);
  *this = &unk_1F42C2E78;
  *(this + 6) = &unk_1F42CB198;
  v5 = *(a2 + 56);
  *(this + 71) = *(a2 + 71);
  *(this + 56) = v5;
  *this = &unk_1F42C2FA0;
  *(this + 11) = &unk_1F42C30D0;
  kaldi::CuMatrix<float>::CuMatrix(this + 96, a2 + 96, 111);
  kaldi::CuMatrix<float>::CuMatrix(this + 144, a2 + 144, 111);
  kaldi::CuMatrix<float>::CuMatrix(this + 192, a2 + 192, 111);
  v6 = *(a2 + 15);
  *(this + 32) = *(a2 + 32);
  *(this + 15) = v6;
  kaldi::CuMatrix<float>::CuMatrix(this + 264, a2 + 264, 111);
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 41) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 312, *(a2 + 39), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 39)) >> 4));
  *(this + 42) = 0;
  *(this + 43) = 0;
  *(this + 44) = 0;
  std::vector<kaldi::CuSubMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuSubMatrix<float>*,kaldi::CuSubMatrix<float>*>(this + 336, *(a2 + 42), *(a2 + 43), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 43) - *(a2 + 42)) >> 3));
  *(this + 45) = 0;
  *(this + 46) = 0;
  *(this + 47) = 0;
  std::vector<kaldi::CuSubMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuSubMatrix<float>*,kaldi::CuSubMatrix<float>*>(this + 360, *(a2 + 45), *(a2 + 46), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 46) - *(a2 + 45)) >> 3));
  return this;
}

void sub_1C3098874(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<kaldi::CuSubMatrix<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](va);
  kaldi::CuMatrix<float>::~CuMatrix(v2 + 264);
  kaldi::CuMatrix<float>::~CuMatrix(v2 + 192);
  kaldi::CuMatrix<float>::~CuMatrix(v2 + 144);
  kaldi::CuMatrix<float>::~CuMatrix(v2 + 96);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
  _Unwind_Resume(a1);
}

uint64_t std::vector<kaldi::CuSubMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuSubMatrix<float>*,kaldi::CuSubMatrix<float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::CuSubMatrix<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C3098958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<kaldi::CuSubMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<kaldi::CuSubMatrix<float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuSubMatrix<float>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy[abi:ne200100]<std::allocator<kaldi::CuSubMatrix<float>>,kaldi::CuSubMatrix<float>*,kaldi::CuSubMatrix<float>*,kaldi::CuSubMatrix<float>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a4;
  if (a2 != a3)
  {
    v5 = a4;
    do
    {
      v6 = *(a2 + 32);
      *(result + 8) = *(a2 + 8);
      *(result + 16) = *(a2 + 16);
      *(result + 32) = v6;
      *result = &unk_1F42BFE90;
      result += 40;
      a2 += 40;
      v5 += 40;
    }

    while (a2 != a3);
  }

  return result;
}

void kaldi::nnet1::FofeWordVecComponent::Prepare(kaldi::nnet1::FofeWordVecComponent *this, uint64_t a2)
{
  if (*(this + 102) < a2)
  {
    kaldi::CuMatrix<float>::Resize(this + 392, 1, a2, 1u, 0);
    v4 = *(this + 50);
    *(v4 + 4 * a2 - 4) = 1065353216;
    v5 = (a2 - 2);
    if (a2 >= 2)
    {
      v6 = *(v4 + 4 * v5 + 4);
      do
      {
        v6 = v6 * *(this + 96);
        *(v4 + 4 * v5--) = v6;
      }

      while (v5 != -1);
    }
  }

  v7 = *(this + 3);

  kaldi::CuMatrix<float>::Resize(this + 440, a2, v7, 1u, 0);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1C692AC50](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_1C3098B6C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_1C309A1E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1C309A558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C309A6B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::QuantizedAffineTransform<signed char>::QuantizedAffineTransform(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F42C01D0;
  kaldi::QuantizedMatrix<signed char>::QuantizedMatrix(a1 + 48, a3, a2);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = &unk_1F42BFF70;
  *(a1 + 120) = 0;
  kaldi::CuVector<float>::Resize(a1 + 96, a3, 0, v5, v6);
  return a1;
}

void sub_1C309A794(_Unwind_Exception *a1)
{
  kaldi::QuantizedMatrixBase<signed char>::~QuantizedMatrixBase((v1 + 6));
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    v1[4] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::QuantizedAffineTransform<short>::QuantizedAffineTransform(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F42C02A8;
  kaldi::QuantizedMatrix<short>::QuantizedMatrix(a1 + 48, a3, a2);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = &unk_1F42BFF70;
  *(a1 + 120) = 0;
  kaldi::CuVector<float>::Resize(a1 + 96, a3, 0, v5, v6);
  return a1;
}

void sub_1C309A87C(_Unwind_Exception *a1)
{
  kaldi::QuantizedMatrixBase<short>::~QuantizedMatrixBase((v1 + 6));
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    v1[4] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::VectorwiseQuantizedAffineTransform<signed char>::VectorwiseQuantizedAffineTransform(uint64_t a1, int a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F42C0380;
  kaldi::VectorwiseQuantizedMatrix<signed char>::VectorwiseQuantizedMatrix(a1 + 48, a3, a2);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = &unk_1F42BFF70;
  *(a1 + 112) = 0;
  kaldi::CuVector<float>::Resize(a1 + 88, a3, 0, v5, v6);
  return a1;
}

void sub_1C309A964(_Unwind_Exception *a1)
{
  kaldi::VectorwiseQuantizedMatrix<signed char>::~VectorwiseQuantizedMatrix((v1 + 6));
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    v1[4] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::VectorwiseQuantizedAffineTransform<short>::VectorwiseQuantizedAffineTransform(uint64_t a1, int a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F42C4618;
  kaldi::VectorwiseQuantizedMatrix<signed char>::VectorwiseQuantizedMatrix(a1 + 48, a3, a2);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = &unk_1F42BFF70;
  *(a1 + 112) = 0;
  kaldi::CuVector<float>::Resize(a1 + 88, a3, 0, v5, v6);
  return a1;
}

void sub_1C309AA4C(_Unwind_Exception *a1)
{
  kaldi::VectorwiseQuantizedMatrix<short>::~VectorwiseQuantizedMatrix((v1 + 6));
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    v1[4] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::VectorwiseQuantizedMatrix<short>::~VectorwiseQuantizedMatrix(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    MEMORY[0x1C692AE10](v2, 0x1000C40BDFB0063);
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    MEMORY[0x1C692AE10](v3, 0x1000C4052888210);
  }

  return a1;
}

void kaldi::nnet1::VectorwiseQuantizedAffineTransform<short>::~VectorwiseQuantizedAffineTransform(void *a1)
{
  kaldi::nnet1::VectorwiseQuantizedAffineTransform<short>::~VectorwiseQuantizedAffineTransform(a1);

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::VectorwiseQuantizedAffineTransform<short>::WriteData(uint64_t a1, void *a2, int a3)
{
  kaldi::VectorwiseQuantizedMatrix<short>::Write((a1 + 48), a2, a3);

  kaldi::CuVectorBase<float>::Write((a1 + 88), a2, a3, v6, v7);
}

uint64_t *kaldi::nnet1::VectorwiseQuantizedAffineTransform<short>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  kaldi::CuMatrixBase<float>::AddMatMat<short>(a3, a2, 111, (a1 + 48), 0x70, 1.0, 0.0);

  return kaldi::CuMatrixBase<float>::AddVecToRows(a3, a1 + 88, v5, v6, v7, 1.0, 1.0);
}

void kaldi::nnet1::VectorwiseQuantizedAffineTransform<short>::GetUnitOutputFnc(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int16x4_t a5)
{
  a5.i32[0] = *(*(a1 + 96) + 4 * a3);
  kaldi::CuVectorBase<float>::Set(a4, a5);
  kaldi::VectorwiseQuantizedMatrix<short>::Row(a1 + 48, a3, v11);
  kaldi::QuantizedVectorBase<short>::AddMatVec(v11, a2 + 8, a4 + 8, 1.0, v9, v10);
}

float kaldi::nnet1::VectorwiseQuantizedAffineTransform<short>::GetUnitOutputFnc(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(*(a1 + 96) + 4 * a3);
  kaldi::VectorwiseQuantizedMatrix<short>::Row(a1 + 48, a3, v9);
  return v4 + kaldi::VecVec<float,short>(a2, v9, v5, v6, v7);
}

double kaldi::nnet1::VectorwiseQuantizedAffineTransform<short>::ReadData(_DWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  kaldi::VectorwiseQuantizedMatrix<short>::Read(a1 + 12, a2, a3, a4);
  result = kaldi::CuVector<float>::Read((a1 + 22), a2, a3, v7, v8);
  if (a1[26] != a1[3])
  {
    kaldi::KaldiAssertFailure_("ReadData", "../engine/common/libquasar/libkaldi/src/nnet/nnet-vectorwise-quantized-affine-transform.h", 0x2A, "bias_.Dim() == output_dim_", v9);
  }

  return result;
}

void *kaldi::nnet1::VectorwiseQuantizedAffineTransform<short>::~VectorwiseQuantizedAffineTransform(void *a1)
{
  *a1 = &unk_1F42C4618;
  kaldi::CuVector<float>::~CuVector(a1 + 11);
  v2 = a1[9];
  a1[9] = 0;
  if (v2)
  {
    MEMORY[0x1C692AE10](v2, 0x1000C40BDFB0063);
  }

  v3 = a1[7];
  a1[7] = 0;
  if (v3)
  {
    MEMORY[0x1C692AE10](v3, 0x1000C4052888210);
  }

  *a1 = &unk_1F42C1850;
  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t kaldi::nnet1::VectorwiseQuantizedAffineTransform<short>::VectorwiseQuantizedAffineTransform(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F42C1850;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(a1 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
  *a1 = &unk_1F42C4618;
  kaldi::VectorwiseQuantizedMatrix<short>::VectorwiseQuantizedMatrix(a1 + 48, a2 + 48);
  kaldi::CuVector<float>::CuVector(a1 + 88, a2 + 88, v5, v6, v7);
  return a1;
}

void sub_1C309AEE4(_Unwind_Exception *a1)
{
  kaldi::VectorwiseQuantizedMatrix<short>::~VectorwiseQuantizedMatrix((v1 + 6));
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    v1[4] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::FramePoolingComponent::InitData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v4;
    operator delete(v4);
  }

  v5 = *a3;
  if (*a3)
  {
    *(a3 + 8) = v5;
    operator delete(v5);
  }
}

void kaldi::nnet1::Nnet::Nnet(void *a1)
{
  v2 = a1[40];
  if (v2)
  {
    free(v2);
  }

  a1[39] = 0;
  a1[40] = 0;
  a1[41] = 0;
}

double kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::Convolutional2DComponent(uint64_t a1, int a2, int a3)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = &unk_1F42CB198;
  *(a1 + 56) = xmmword_1C378B0E0;
  *(a1 + 72) = -1082130432;
  *(a1 + 76) = 0x100000003;
  *(a1 + 84) = 0;
  *(a1 + 86) = 0;
  *a1 = &unk_1F42C46D8;
  *(a1 + 88) = &unk_1F42C4810;
  *(a1 + 96) = &unk_1F42C4838;
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  __asm { FMOV            V1.2S, #1.0 }

  *(a1 + 136) = _D1;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 329) = 0u;
  return result;
}

uint64_t kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::Convolutional2DComponent(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F42C1850;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(a1 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
  *a1 = &unk_1F42C2E78;
  *(a1 + 48) = &unk_1F42CB198;
  v5 = *(a2 + 56);
  *(a1 + 71) = *(a2 + 71);
  *(a1 + 56) = v5;
  *a1 = &unk_1F42C46D8;
  *(a1 + 88) = &unk_1F42C4810;
  *(a1 + 96) = &unk_1F42C4838;
  *(a1 + 200) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::AssignMembers<kaldi::CuMatrixBase<float>>(a1, a2, v6, v7, v8);
  return a1;
}

void sub_1C309B22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator((v10 + 376));
  v14 = *(v10 + 352);
  if (v14)
  {
    *(v10 + 360) = v14;
    operator delete(v14);
  }

  v15 = *(v10 + 320);
  if (v15)
  {
    *(v10 + 328) = v15;
    operator delete(v15);
  }

  std::vector<std::vector<kaldi::CuMatrix<float>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v16 = *(v10 + 192);
  *(v10 + 192) = 0;
  if (v16)
  {
    (*(*v16 + 16))(v16);
  }

  v17 = *(v10 + 184);
  *(v10 + 184) = 0;
  if (v17)
  {
    (*(*v17 + 24))(v17);
  }

  a10 = (v10 + 160);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v12);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v11);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v10);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::AssignMembers<kaldi::CuMatrixBase<float>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  *(a1 + 104) = *(a2 + 104);
  v7 = *(a2 + 120);
  *(a1 + 120) = v7;
  v7.n128_u64[0] = *(a2 + 136);
  *(a1 + 136) = v7.n128_u64[0];
  *(a1 + 144) = *(a2 + 144);
  v7.n128_u32[0] = *(a2 + 148);
  *(a1 + 148) = v7.n128_u32[0];
  if (a1 == a2)
  {
    *(a1 + 344) = 0;
  }

  else
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 320), *(a2 + 320), *(a2 + 328), (*(a2 + 328) - *(a2 + 320)) >> 2);
    *(a1 + 344) = 0;
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 352), *(a2 + 352), *(a2 + 360), (*(a2 + 360) - *(a2 + 352)) >> 2);
  }

  if (*(a2 + 184))
  {
    operator new();
  }

  v8 = *(a1 + 184);
  *(a1 + 184) = 0;
  if (v8)
  {
    (*(*v8 + 24))(v8, v7);
  }

  if (*(a2 + 192))
  {
    operator new();
  }

  v9 = *(a1 + 192);
  *(a1 + 192) = 0;
  if (v9)
  {
    (*(*v9 + 16))(v9, v7);
  }

  kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::UpdateBNNSFilter(a1, a2, a3, a4, a5);
  if (*(a2 + 384) != *(a2 + 376))
  {
    kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::InitResidualAggregator(a1, (a1 + 376));
  }

  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(v11, "AssignMembers", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 1465);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "After assign, Convolution filter has padding? ", 46);
    MEMORY[0x1C692A930](v10, *(*(a1 + 184) + 24) == *(*(a1 + 184) + 16));
    kaldi::KaldiLogMessage::~KaldiLogMessage(v11);
  }
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::~Convolutional2DComponent(uint64_t a1)
{
  *a1 = &unk_1F42C46D8;
  v2 = a1 + 88;
  *(a1 + 88) = &unk_1F42C4810;
  v3 = a1 + 96;
  *(a1 + 96) = &unk_1F42C4838;
  v4 = *(a1 + 152);
  if (v4)
  {
    BNNSFilterDestroy(v4);
    *(a1 + 152) = 0;
  }

  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator((a1 + 376));
  v5 = *(a1 + 352);
  if (v5)
  {
    *(a1 + 360) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 320);
  if (v6)
  {
    *(a1 + 328) = v6;
    operator delete(v6);
  }

  v9 = (a1 + 296);
  std::vector<std::vector<kaldi::CuMatrix<float>>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 272);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 248);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 224);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 200);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v7 = *(a1 + 192);
  *(a1 + 192) = 0;
  if (v7)
  {
    (*(*v7 + 16))(v7);
  }

  v8 = *(a1 + 184);
  *(a1 + 184) = 0;
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  v9 = (a1 + 160);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v3);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v2);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a1);
}

{
  kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::~Convolutional2DComponent(a1);

  JUMPOUT(0x1C692AE10);
}

void non-virtual thunk tokaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::~Convolutional2DComponent(uint64_t a1)
{
  kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::~Convolutional2DComponent(a1 - 88);
}

{
  kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::~Convolutional2DComponent(a1 - 96);
}

{
  kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::~Convolutional2DComponent(a1 - 88);

  JUMPOUT(0x1C692AE10);
}

{
  kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::~Convolutional2DComponent(a1 - 96);

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::InitData(int *a1, uint64_t *a2, kaldi::UniformRandomNumber *a3)
{
  v87 = 0x40000000;
  v88 = -1073741824;
  v86 = 1036831949;
  kaldi::nnet1::Component::TypeToMarker(a1[36], &v85);
  v84 = -1;
  memset(v83, 0, sizeof(v83));
  v8 = a1 + 29;
  v9 = a1 + 28;
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_197;
    }

    kaldi::ReadToken(a2, 0, v83, v6, v7);
    if (SHIBYTE(v83[2]) < 0)
    {
      break;
    }

    if (HIBYTE(v83[2]) <= 0xBu)
    {
      if (HIBYTE(v83[2]) <= 9u)
      {
        if (HIBYTE(v83[2]) == 6)
        {
          v43 = LODWORD(v83[0]) == 1684099132 && WORD2(v83[0]) == 15960;
          v18 = a1 + 32;
          if (!v43)
          {
            v44 = LODWORD(v83[0]) == 1684099132 && WORD2(v83[0]) == 15961;
            v18 = a1 + 33;
            if (!v44)
            {
              goto LABEL_210;
            }
          }

          goto LABEL_169;
        }

        if (HIBYTE(v83[2]) != 9)
        {
          goto LABEL_210;
        }

        v22 = v83;
LABEL_128:
        v40 = *v22;
        v41 = *(v22 + 8);
        v42 = v40 == 0x6461724778614D3CLL && v41 == 62;
        v14 = a1 + 37;
        if (!v42)
        {
          if ((v83[2] & 0x8000000000000000) != 0)
          {
            v39 = v83[1];
LABEL_190:
            if (v39 == 12)
            {
              v54 = v83[0];
              goto LABEL_192;
            }
          }

LABEL_210:
          kaldi::KaldiErrorMessage::KaldiErrorMessage(v82, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 334);
          v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, "Unknown token ", 14);
          if (v83[2] >= 0)
          {
            v76 = v83;
          }

          else
          {
            v76 = v83[0];
          }

          if (v83[2] >= 0)
          {
            v77 = HIBYTE(v83[2]);
          }

          else
          {
            v77 = v83[1];
          }

          v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, v76, v77);
          v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, ", a typo in config?", 19);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, " (ParamStddev|BiasMean|BiasRange|FmapXLen|FmapYLen|FiltXLen|FiltYLen|FiltXStep|FiltYStep|ConnectFmap|LearnRateCoef|BiasLearnRateCoef|RandomSeed|GradientNormType|MaxGrad)", 169);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(v82);
        }

        goto LABEL_186;
      }

      if (HIBYTE(v83[2]) != 10)
      {
        if (v83[0] != 0x6E6152736169423CLL || *(v83 + 3) != 0x3E65676E61527361)
        {
          v25 = v83[0] == 0x745358746C69463CLL && *(v83 + 3) == 0x3E7065745358746CLL;
          v18 = a1 + 30;
          if (!v25)
          {
            v26 = v83[0] == 0x745359746C69463CLL && *(v83 + 3) == 0x3E7065745359746CLL;
            v18 = a1 + 31;
            if (!v26)
            {
              goto LABEL_210;
            }
          }

          goto LABEL_169;
        }

LABEL_185:
        v14 = &v87;
        goto LABEL_186;
      }

      if (v83[0] != 0x61654D736169423CLL || LOWORD(v83[1]) != 15982)
      {
        v46 = v83[0] == 0x654C5870616D463CLL && LOWORD(v83[1]) == 15982;
        v18 = a1 + 26;
        if (!v46)
        {
          v47 = v83[0] == 0x654C5970616D463CLL && LOWORD(v83[1]) == 15982;
          v18 = a1 + 27;
          if (!v47)
          {
            v48 = v83[0] == 0x654C58746C69463CLL && LOWORD(v83[1]) == 15982;
            v18 = a1 + 28;
            if (!v48)
            {
              v49 = v83[0] == 0x654C59746C69463CLL && LOWORD(v83[1]) == 15982;
              v18 = a1 + 29;
              if (!v49)
              {
                goto LABEL_210;
              }
            }
          }
        }

        goto LABEL_169;
      }

LABEL_184:
      v14 = &v88;
      goto LABEL_186;
    }

    if (HIBYTE(v83[2]) <= 0xEu)
    {
      if (HIBYTE(v83[2]) == 12)
      {
        if (v83[0] != 0x536D6F646E61523CLL || LODWORD(v83[1]) != 1046766949)
        {
          v54 = v83;
LABEL_192:
          v55 = *v54;
          v56 = *(v54 + 2);
          if (v55 == 0x6E6F706D6F432F3CLL && v56 == 1047817829)
          {
LABEL_197:
            a1[36] = kaldi::nnet1::Component::MarkerToGradientNormType(&v85);
            v58 = a1[2];
            v60 = a1[26];
            v59 = a1[27];
            v61 = v58 / (v59 * v60);
            if (!(v58 % (v59 * v60)))
            {
              v62 = (v60 + 2 * a1[32] - a1[28]) / a1[30] + 1;
              v63 = a1[3];
              v64 = v62 + v62 * ((v59 + 2 * a1[33] - a1[29]) / a1[31]);
              v65 = (v63 / v64);
              if (!(v63 % v64))
              {
                if (v84 >= 1)
                {
                  kaldi::UniformRandomNumber::SetRandomSeeds(a3, v84);
                }

                kaldi::GaussRandomNumber::GaussRandomNumber(v82, a3);
                kaldi::Matrix<float>::Matrix(v80, v65, (*v9 * v61 * *v8), 0, 0);
                if (v65 >= 1)
                {
                  v69 = 0;
                  v70 = *v9;
                  v71 = *v8;
                  do
                  {
                    if (v71 * v61 * v70 >= 1)
                    {
                      v72 = 0;
                      do
                      {
                        v73 = *&v86;
                        kaldi::GaussRandomNumber::Rand(v82, 0, v66, v67, v68);
                        *(v80[0] + 4 * v69 * v81 + 4 * v72++) = v73 * v74;
                        v70 = *v9;
                        v71 = *v8;
                      }

                      while (v72 < *v9 * v61 * *v8);
                    }

                    ++v69;
                  }

                  while (v69 != v65);
                }

                kaldi::MatrixBase<float>::NumRows(v80);
                kaldi::MatrixBase<float>::NumCols(v80);
                kaldi::nnet1::NewMatrix<kaldi::CuMatrixBase<float>>();
              }

              kaldi::KaldiErrorMessage::KaldiErrorMessage(v82, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 352);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, "output_dim_ % (out_fmap_x_len * out_fmap_y_len) == 0", 52);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(v82);
            }

            kaldi::KaldiErrorMessage::KaldiErrorMessage(v82, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 346);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, "input_dim_ % (fmap_x_len_ * fmap_y_len_) == 0", 45);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(v82);
          }

          goto LABEL_210;
        }

LABEL_168:
        v18 = &v84;
LABEL_169:
        kaldi::ReadBasicType<int>(a2, 0, v18);
        goto LABEL_187;
      }

      if (HIBYTE(v83[2]) != 13)
      {
        goto LABEL_210;
      }

      if (v83[0] != 0x74536D617261503CLL || *(v83 + 5) != 0x3E7665646474536DLL)
      {
        goto LABEL_210;
      }

      goto LABEL_74;
    }

    switch(HIBYTE(v83[2]))
    {
      case 0xFu:
        v51 = v83[0] == 0x61526E7261654C3CLL && *(v83 + 7) == 0x3E66656F43657461;
        v14 = a1 + 34;
        if (!v51)
        {
          goto LABEL_210;
        }

        break;
      case 0x12u:
        if (v83[0] != 0x6E6569646172473CLL || v83[1] != 0x7079546D726F4E74 || LOWORD(v83[2]) != 15973)
        {
          goto LABEL_210;
        }

LABEL_183:
        kaldi::ReadToken(a2, 0, &v85, v10, v11);
        goto LABEL_187;
      case 0x13u:
        v12 = v83[0] == 0x61654C736169423CLL && v83[1] == 0x6F43657461526E72;
        v13 = v12 && *(&v83[1] + 3) == 0x3E66656F43657461;
        v14 = a1 + 35;
        if (!v13)
        {
          goto LABEL_210;
        }

        break;
      default:
        goto LABEL_210;
    }

LABEL_186:
    kaldi::ReadBasicType<float>(a2, 0, v14);
LABEL_187:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  v15 = v83[1];
  if (v83[1] > 10)
  {
    if (v83[1] != 11)
    {
      if (v83[1] == 13)
      {
        if (*v83[0] != 0x74536D617261503CLL || *(v83[0] + 5) != 0x3E7665646474536DLL)
        {
          goto LABEL_210;
        }

LABEL_74:
        v14 = &v86;
        goto LABEL_186;
      }

      goto LABEL_98;
    }

    if (*v83[0] == 0x6E6152736169423CLL && *(v83[0] + 3) == 0x3E65676E61527361)
    {
      goto LABEL_185;
    }

    v31 = *v83[0] == 0x745358746C69463CLL && *(v83[0] + 3) == 0x3E7065745358746CLL;
    v18 = a1 + 30;
    if (v31)
    {
      goto LABEL_169;
    }

    v32 = *v83[0] == 0x745359746C69463CLL && *(v83[0] + 3) == 0x3E7065745359746CLL;
    v18 = a1 + 31;
    if (v32)
    {
      goto LABEL_169;
    }
  }

  else if (v83[1] == 6)
  {
    v28 = *v83[0] == 1684099132 && *(v83[0] + 4) == 15960;
    v18 = a1 + 32;
    if (v28)
    {
      goto LABEL_169;
    }

    v29 = *v83[0] == 1684099132 && *(v83[0] + 4) == 15961;
    v18 = a1 + 33;
    if (v29)
    {
      goto LABEL_169;
    }
  }

  else
  {
    if (v83[1] != 10)
    {
LABEL_98:
      if (v15 == 15)
      {
        v33 = *v83[0] == 0x61526E7261654C3CLL && *(v83[0] + 7) == 0x3E66656F43657461;
        v14 = a1 + 34;
        if (v33)
        {
          goto LABEL_186;
        }

        v15 = v83[1];
      }

      if (v15 != 19 || (*v83[0] == 0x61654C736169423CLL ? (v34 = *(v83[0] + 8) == 0x6F43657461526E72) : (v34 = 0), v34 ? (v35 = *(v83[0] + 11) == 0x3E66656F43657461) : (v35 = 0), v14 = a1 + 35, !v35))
      {
        if (v83[1] == 18)
        {
          if (*v83[0] == 0x6E6569646172473CLL && *(v83[0] + 8) == 0x7079546D726F4E74 && *(v83[0] + 16) == 15973)
          {
            goto LABEL_183;
          }
        }

        else if (v83[1] == 12 && *v83[0] == 0x536D6F646E61523CLL && *(v83[0] + 8) == 1046766949)
        {
          goto LABEL_168;
        }

        v39 = v83[1];
        if (v83[1] != 9)
        {
          goto LABEL_190;
        }

        v22 = v83[0];
        goto LABEL_128;
      }

      goto LABEL_186;
    }

    if (*v83[0] == 0x61654D736169423CLL && *(v83[0] + 8) == 15982)
    {
      goto LABEL_184;
    }

    v17 = *v83[0] == 0x654C5870616D463CLL && *(v83[0] + 8) == 15982;
    v18 = a1 + 26;
    if (v17)
    {
      goto LABEL_169;
    }

    v19 = *v83[0] == 0x654C5970616D463CLL && *(v83[0] + 8) == 15982;
    v18 = a1 + 27;
    if (v19)
    {
      goto LABEL_169;
    }

    v20 = *v83[0] == 0x654C58746C69463CLL && *(v83[0] + 8) == 15982;
    v18 = a1 + 28;
    if (v20)
    {
      goto LABEL_169;
    }

    v21 = *v83[0] == 0x654C59746C69463CLL && *(v83[0] + 8) == 15982;
    v18 = a1 + 29;
    if (v21)
    {
      goto LABEL_169;
    }
  }

  v15 = v83[1];
  goto LABEL_98;
}

void sub_1C309C568(_Unwind_Exception *a1)
{
  if (*(v1 - 153) < 0)
  {
    operator delete(*(v1 - 176));
  }

  if (*(v1 - 121) < 0)
  {
    operator delete(*(v1 - 144));
  }

  _Unwind_Resume(a1);
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void *kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::UpdateBNNSFilter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 152);
  if (v6)
  {
    BNNSFilterDestroy(v6);
    *(a1 + 152) = 0;
  }

  v7 = *(a1 + 104);
  v8 = *(a1 + 108);
  v9 = *(a1 + 8) / (v8 * v7);
  v10 = *(a1 + 128);
  v11 = *(a1 + 132);
  v12 = *(a1 + 112);
  v13 = *(a1 + 116);
  v14 = *(a1 + 120);
  v15 = *(a1 + 124);
  v16 = (v7 + 2 * v10 - v12) / v14 + 1;
  v17 = (v8 + 2 * v11 - v13) / v15 + 1;
  v18 = *(a1 + 12) / (v17 * v16);
  in_desc.width = v7;
  in_desc.height = v8;
  in_desc.channels = v9;
  in_desc.row_stride = v7;
  in_desc.image_stride = v8 * v7;
  in_desc.data_type = BNNSDataTypeFloat32;
  *&in_desc.data_scale = 1065353216;
  out_desc.width = v16;
  out_desc.height = v17;
  out_desc.channels = v18;
  out_desc.row_stride = v16;
  out_desc.image_stride = v17 * v16;
  out_desc.data_type = BNNSDataTypeFloat32;
  *&out_desc.data_scale = 1065353216;
  memset(&layer_params.weights.data_bias, 0, 96);
  layer_params.x_stride = v14;
  layer_params.y_stride = v15;
  layer_params.x_padding = v10;
  layer_params.y_padding = v11;
  layer_params.k_width = v12;
  layer_params.k_height = v13;
  layer_params.in_channels = v9;
  layer_params.out_channels = v18;
  *&layer_params.weights.data_type = 0x3F80000000010020;
  v19 = *(a1 + 184);
  v20 = *(a1 + 192);
  layer_params.weights.data = *(v19 + 8);
  layer_params.weights.data_table = 0;
  layer_params.bias.data_type = BNNSDataTypeFloat32;
  layer_params.bias.data = *(v20 + 8);
  layer_params.bias.data_scale = 1.0;
  layer_params.bias.data_table = 0;
  v22 = *(v19 + 16);
  v21 = *(v19 + 20);
  if (v12 * v9 * v13 * v18 != v21 * v22)
  {
    kaldi::KaldiAssertFailure_("UpdateBNNSFilter", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 0x452, "filters_->NumCols() * filters_->NumRows() == (bp.k_width * bp.k_height * bp.in_channels * bp.out_channels)", a5);
  }

  if (v22 == *(v19 + 24))
  {
    filter_params = *ymmword_1C378B920;
    result = BNNSFilterCreateConvolutionLayer(&in_desc, &out_desc, &layer_params, &filter_params);
    *(a1 + 152) = result;
  }

  else
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiLogMessage::KaldiLogMessage(&filter_params, "UpdateBNNSFilter", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 1109);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&filter_params, "Unsupported BNNS filter weight arrangement", 42);
      kaldi::KaldiLogMessage::~KaldiLogMessage(&filter_params);
      v25 = *(a1 + 184);
      v22 = *(v25 + 16);
      v21 = *(v25 + 20);
    }

    memset(&v30, 0, sizeof(v30));
    kaldi::Matrix<float>::Matrix(v29, v21, v22, 1, 1);
    kaldi::CuMatrixBase<float>::CopyToMat<float>(*(a1 + 184), v29, 111, v26, v27);
    v28 = kaldi::MatrixBase<float>::NumCols(v29);
    if (v28 != kaldi::MatrixBase<float>::Stride(v29) && (kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiLogMessage::KaldiLogMessage(&filter_params, "UpdateBNNSFilter", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 1115);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&filter_params, "It did not work", 15);
      kaldi::KaldiLogMessage::~KaldiLogMessage(&filter_params);
    }

    layer_params.weights.data = *v29;
    *(a1 + 152) = BNNSFilterCreateConvolutionLayer(&in_desc, &out_desc, &layer_params, &v30);
    kaldi::Matrix<float>::~Matrix(v29);
    result = *(a1 + 152);
  }

  if (!result)
  {
    kaldi::KaldiAssertFailure_("UpdateBNNSFilter", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 0x46B, "bnns_filter_", v24);
  }

  return result;
}

void sub_1C309C988(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  kaldi::KaldiLogMessage::~KaldiLogMessage(va1);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::ReadData(float *a1, uint64_t *a2, int a3)
{
  if (kaldi::Peek(a2, a3) != 60)
  {
LABEL_148:
    v42 = *(a1 + 26);
    v41 = *(a1 + 27);
    if (*(a1 + 2) % (v41 * v42))
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 431);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "input_dim_ % (fmap_x_len_ * fmap_y_len_) == 0");
    }

    else
    {
      v43 = (v42 + 2 * *(a1 + 32) - *(a1 + 28)) / *(a1 + 30) + 1;
      if (!(*(a1 + 3) % (v43 + v43 * ((v41 + 2 * *(a1 + 33) - *(a1 + 29)) / *(a1 + 31)))))
      {
        kaldi::nnet1::NewMatrix<kaldi::CuMatrixBase<float>>();
      }

      kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 433);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "output_dim_ % (out_fmap_x_len * out_fmap_y_len) == 0");
    }

    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }

  while (1)
  {
    memset(v49, 0, 24);
    kaldi::ReadToken(a2, a3, v49, v6, v7);
    if (SHIBYTE(v49[2]) < 0)
    {
      if (v49[1] != 15 || (*v49[0] == 0x61526E7261654C3CLL ? (v12 = *(v49[0] + 7) == 0x3E66656F43657461) : (v12 = 0), v11 = a1 + 34, !v12))
      {
        if (v49[1] != 19 || (*v49[0] == 0x61654C736169423CLL ? (v13 = *(v49[0] + 1) == 0x6F43657461526E72) : (v13 = 0), v13 ? (v14 = *(v49[0] + 11) == 0x3E66656F43657461) : (v14 = 0), v11 = a1 + 35, !v14))
        {
          if (v49[1] != 9)
          {
            if (v49[1] == 18)
            {
              v15 = *v49[0] == 0x6E6569646172473CLL && *(v49[0] + 1) == 0x7079546D726F4E74;
              if (v15 && *(v49[0] + 8) == 15973)
              {
LABEL_82:
                __p[0] = 0;
                __p[1] = 0;
                v48 = 0;
                kaldi::ReadToken(a2, a3, __p, v8, v9);
                *(a1 + 36) = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
                if (SHIBYTE(v48) < 0)
                {
                  operator delete(__p[0]);
                }

                goto LABEL_145;
              }
            }

LABEL_40:
            if (v49[1] == 10)
            {
              v18 = *v49[0] == 0x654C5870616D463CLL && *(v49[0] + 4) == 15982;
              v19 = (a1 + 26);
              if (v18)
              {
                goto LABEL_144;
              }

              v20 = *v49[0] == 0x654C5970616D463CLL && *(v49[0] + 4) == 15982;
              v19 = (a1 + 27);
              if (v20)
              {
                goto LABEL_144;
              }

              v28 = *v49[0] == 0x654C58746C69463CLL && *(v49[0] + 4) == 15982;
              v19 = (a1 + 28);
              if (v28)
              {
                goto LABEL_144;
              }

              if ((HIBYTE(v49[2]) & 0x80) == 0)
              {
                if (HIBYTE(v49[2]) != 6)
                {
                  if (HIBYTE(v49[2]) != 11)
                  {
                    if (HIBYTE(v49[2]) == 10)
                    {
                      goto LABEL_118;
                    }

                    goto LABEL_143;
                  }

LABEL_99:
                  v29 = v49[0] == 0x745358746C69463CLL && *(v49 + 3) == 0x3E7065745358746CLL;
                  v19 = (a1 + 30);
                  if (v29)
                  {
                    goto LABEL_144;
                  }

LABEL_103:
                  v30 = v49[0] == 0x745359746C69463CLL && *(v49 + 3) == 0x3E7065745359746CLL;
                  v19 = (a1 + 31);
                  if (v30)
                  {
                    goto LABEL_144;
                  }

                  goto LABEL_143;
                }

                goto LABEL_132;
              }

              v31 = *v49[0] == 0x654C59746C69463CLL && *(v49[0] + 4) == 15982;
              v19 = (a1 + 29);
              if (v31)
              {
                goto LABEL_144;
              }
            }

            if (v49[1] == 11)
            {
              v34 = *v49[0] == 0x745358746C69463CLL && *(v49[0] + 3) == 0x3E7065745358746CLL;
              v19 = (a1 + 30);
              if (v34)
              {
                goto LABEL_144;
              }

              if ((HIBYTE(v49[2]) & 0x80) == 0)
              {
                if (HIBYTE(v49[2]) != 6)
                {
                  if (HIBYTE(v49[2]) != 11)
                  {
                    goto LABEL_143;
                  }

                  goto LABEL_103;
                }

LABEL_132:
                v35 = v49;
LABEL_139:
                v37 = *v35;
                v38 = *(v35 + 2);
                v39 = v37 == 1684099132 && v38 == 15960;
                v19 = (a1 + 32);
                if (!v39)
                {
                  goto LABEL_143;
                }

                goto LABEL_144;
              }

              v36 = *v49[0] == 0x745359746C69463CLL && *(v49[0] + 3) == 0x3E7065745359746CLL;
              v19 = (a1 + 31);
              if (v36)
              {
                goto LABEL_144;
              }
            }

            if (v49[1] != 6)
            {
              goto LABEL_143;
            }

            v35 = v49[0];
            goto LABEL_139;
          }

          v17 = *v49[0] == 0x6461724778614D3CLL && *(v49[0] + 8) == 62;
          v11 = a1 + 37;
          if (!v17)
          {
            goto LABEL_40;
          }
        }
      }
    }

    else if (HIBYTE(v49[2]) <= 0xAu)
    {
      if (HIBYTE(v49[2]) == 6)
      {
        goto LABEL_132;
      }

      if (HIBYTE(v49[2]) != 9)
      {
        if (HIBYTE(v49[2]) == 10)
        {
          v21 = v49[0] == 0x654C5870616D463CLL && LOWORD(v49[1]) == 15982;
          v19 = (a1 + 26);
          if (!v21)
          {
            v22 = v49[0] == 0x654C5970616D463CLL && LOWORD(v49[1]) == 15982;
            v19 = (a1 + 27);
            if (!v22)
            {
              v32 = v49[0] == 0x654C58746C69463CLL && LOWORD(v49[1]) == 15982;
              v19 = (a1 + 28);
              if (!v32)
              {
LABEL_118:
                v33 = v49[0] == 0x654C59746C69463CLL && LOWORD(v49[1]) == 15982;
                v19 = (a1 + 29);
                if (!v33)
                {
                  goto LABEL_143;
                }
              }
            }
          }

LABEL_144:
          kaldi::ReadBasicType<int>(a2, a3, v19);
          goto LABEL_145;
        }

LABEL_143:
        v40 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v49, "<PadY>");
        v19 = (a1 + 33);
        if (!v40)
        {
          kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 417);
          v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "unrecognized config token ", 26);
          if (SHIBYTE(v49[2]) >= 0)
          {
            v45 = v49;
          }

          else
          {
            v45 = v49[0];
          }

          if (SHIBYTE(v49[2]) >= 0)
          {
            v46 = HIBYTE(v49[2]);
          }

          else
          {
            v46 = v49[1];
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, v45, v46);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
        }

        goto LABEL_144;
      }

      v27 = v49[0] == 0x6461724778614D3CLL && LOBYTE(v49[1]) == 62;
      v11 = a1 + 37;
      if (!v27)
      {
        goto LABEL_143;
      }
    }

    else if (HIBYTE(v49[2]) > 0x11u)
    {
      if (HIBYTE(v49[2]) == 18)
      {
        if (v49[0] == 0x6E6569646172473CLL && v49[1] == 0x7079546D726F4E74 && LOWORD(v49[2]) == 15973)
        {
          goto LABEL_82;
        }

        goto LABEL_143;
      }

      if (HIBYTE(v49[2]) != 19)
      {
        goto LABEL_143;
      }

      v23 = v49[0] == 0x61654C736169423CLL && v49[1] == 0x6F43657461526E72;
      v24 = v23 && *(&v49[1] + 3) == 0x3E66656F43657461;
      v11 = a1 + 35;
      if (!v24)
      {
        goto LABEL_143;
      }
    }

    else
    {
      if (HIBYTE(v49[2]) == 11)
      {
        goto LABEL_99;
      }

      if (HIBYTE(v49[2]) != 15)
      {
        goto LABEL_143;
      }

      v10 = v49[0] == 0x61526E7261654C3CLL && *(v49 + 7) == 0x3E66656F43657461;
      v11 = a1 + 34;
      if (!v10)
      {
        goto LABEL_143;
      }
    }

    kaldi::ReadBasicType<float>(a2, a3, v11);
LABEL_145:
    if (SHIBYTE(v49[2]) < 0)
    {
      operator delete(v49[0]);
    }

    if (kaldi::Peek(a2, a3) != 60)
    {
      goto LABEL_148;
    }
  }
}

uint64_t kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::WriteConfig(unsigned int *a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>", a4, a5);
  v8 = a1[34];
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<BiasLearnRateCoef>", v9, v10);
  v11 = a1[35];
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>", v12, v13);
  kaldi::nnet1::Component::TypeToMarker(a1[36], &__p);
  kaldi::WriteToken(a2, a3, &__p, v14, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>", v16, v17);
  v18 = a1[37];
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<FmapXLen>", v19, v20);
  kaldi::WriteBasicType<int>(a2, a3, a1[26]);
  kaldi::WriteToken(a2, a3, "<FmapYLen>", v21, v22);
  kaldi::WriteBasicType<int>(a2, a3, a1[27]);
  kaldi::WriteToken(a2, a3, "<FiltXLen>", v23, v24);
  kaldi::WriteBasicType<int>(a2, a3, a1[28]);
  kaldi::WriteToken(a2, a3, "<FiltYLen>", v25, v26);
  kaldi::WriteBasicType<int>(a2, a3, a1[29]);
  kaldi::WriteToken(a2, a3, "<FiltXStep>", v27, v28);
  kaldi::WriteBasicType<int>(a2, a3, a1[30]);
  kaldi::WriteToken(a2, a3, "<FiltYStep>", v29, v30);
  kaldi::WriteBasicType<int>(a2, a3, a1[31]);
  kaldi::WriteToken(a2, a3, "<PadX>", v31, v32);
  kaldi::WriteBasicType<int>(a2, a3, a1[32]);
  kaldi::WriteToken(a2, a3, "<PadY>", v33, v34);
  return kaldi::WriteBasicType<int>(a2, a3, a1[33]);
}

void sub_1C309D59C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::WriteData(uint64_t *a1, void *a2, int a3, int a4)
{
  (*(*a1 + 168))(a1);
  kaldi::CuMatrixBase<float>::Write(a1[23], a2, a3, a4);
  v10 = a1[24];

  kaldi::CuVectorBase<float>::Write(v10, a2, a3, v8, v9);
}

_DWORD *kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::GetParams(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 0, v5, v6);
  v10 = a1[23];
  v11 = *(v10 + 16) * *(v10 + 20);
  v18 = 0;
  v19 = 0;
  if (v11 > *(a2 + 8) || (v17 = *a2, LODWORD(v18) = v11, kaldi::VectorBase<float>::CopyRowsFromMat(&v17, v10, v7, v8, v9), v14 = a1[24], v15 = v14[4], v18 = 0, v19 = 0, (v15 + v11) > *(a2 + 8)))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v9);
  }

  v17 = (*a2 + 4 * v11);
  LODWORD(v18) = v15;
  return kaldi::CuVectorBase<float>::CopyToVec<float>(v14, &v17, v12, v13, v9);
}

_DWORD *kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::SetParams(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 != (*(*a1 + 176))(a1))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v13, "SetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 524);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v13, "wei_src.Dim() == NumParams()");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v13);
  }

  v6 = a1[23];
  v7 = *(v6 + 16) * *(v6 + 20);
  v14 = 0;
  v15 = 0;
  if (v7 > *(a2 + 8) || (v13 = *a2, LODWORD(v14) = v7, kaldi::CuMatrixBase<float>::CopyRowsFromVec(v6, &v13), v10 = a1[24], v11 = v10[4], v14 = 0, v15 = 0, (v11 + v7) > *(a2 + 8)))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v5);
  }

  v13 = (*a2 + 4 * v7);
  LODWORD(v14) = v11;
  return kaldi::CuVectorBase<float>::CopyFromVec<float>(v10, &v13, v8, v9, v5);
}

float kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::SumParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = kaldi::CuMatrixBase<float>::Sum(*(a1 + 184), a2, a3, a4, a5);
  v7 = kaldi::CuVectorBase<float>::Sum(*(a1 + 192));
  return v6 + *&v7;
}

uint64_t kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::PerturbParams(uint64_t a1, float a2)
{
  kaldi::CuMatrix<float>::CuMatrix(v15, *(*(a1 + 184) + 20), *(*(a1 + 184) + 16), 1u, 0, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v15);
  kaldi::CuMatrixBase<float>::AddMat(*(a1 + 184), v15, 111, v4, v5, a2, 1.0);
  v6 = *(*(a1 + 192) + 16);
  v14[0] = &unk_1F42BFF70;
  memset(&v14[1], 0, 24);
  kaldi::CuVector<float>::Resize(v14, v6, 1u, v7, v8);
  kaldi::CuVectorBase<float>::SetRandn(v14);
  *&v9 = a2;
  kaldi::CuVectorBase<float>::AddVec(*(a1 + 192), v14, v10, v11, v12, v9, 1.0);
  kaldi::CuVector<float>::~CuVector(v14);
  return kaldi::CuMatrix<float>::~CuMatrix(v15);
}

void sub_1C309D980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::Info(uint64_t a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v37);
  (*(*a1 + 168))(a1, &v37, 0);
  v2 = *(a1 + 104);
  v3 = *(a1 + 108);
  v4 = *(a1 + 128);
  v5 = *(a1 + 132);
  v6 = *(a1 + 112);
  v7 = *(a1 + 116);
  v8 = *(a1 + 120);
  v9 = *(a1 + 124);
  v10 = *(a1 + 8);
  v32 = *(a1 + 12);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, " OutSizeX:", 10);
  v12 = (v2 + 2 * v4 - v6) / v8 + 1;
  v13 = MEMORY[0x1C692A960](v11, v12);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " OutSizeY:", 10);
  v15 = (v3 + 2 * v5 - v7) / v9 + 1;
  v16 = MEMORY[0x1C692A960](v14, v15);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " InFmaps:", 9);
  v18 = MEMORY[0x1C692A960](v17, (v10 / (v3 * v2)));
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " OutFmaps:", 10);
  MEMORY[0x1C692A960](v19, (v32 / (v15 * v12)));
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "\n filters: ", 11);
  kaldi::nnet1::MomentStatistics<float>(*(a1 + 184));
  if ((v36 & 0x80u) == 0)
  {
    v21 = v35;
  }

  else
  {
    v21 = v35[0];
  }

  if ((v36 & 0x80u) == 0)
  {
    v22 = v36;
  }

  else
  {
    v22 = v35[1];
  }

  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v21, v22);
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "\n bias: ", 8);
  kaldi::nnet1::MomentStatistics<float>(*(a1 + 192), v25, v26, v27, v28);
  if ((v34 & 0x80u) == 0)
  {
    v29 = __p;
  }

  else
  {
    v29 = __p[0];
  }

  if ((v34 & 0x80u) == 0)
  {
    v30 = v34;
  }

  else
  {
    v30 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v29, v30);
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  std::stringbuf::str();
  v37 = *MEMORY[0x1E69E54E8];
  *(&v37 + *(v37 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v38 = MEMORY[0x1E69E5548] + 16;
  if (v40 < 0)
  {
    operator delete(v39[7].__locale_);
  }

  v38 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v39);
  std::ostream::~ostream();
  return MEMORY[0x1C692AD30](&v41);
}

void sub_1C309DC88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  std::ostringstream::~ostringstream(&a23);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::InfoGradient(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v41, "\n  ");
  kaldi::nnet1::MomentStatistics<float>((a1 + 200), v4, v5, v6, v7);
  if ((v40 & 0x80u) == 0)
  {
    v8 = v39;
  }

  else
  {
    v8 = v39[0];
  }

  if ((v40 & 0x80u) == 0)
  {
    v9 = v40;
  }

  else
  {
    v9 = v39[1];
  }

  v10 = std::string::append(&v41, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v42, ", lr-coef ");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::ToString<float>((a1 + 136));
  if ((v38 & 0x80u) == 0)
  {
    v14 = v37;
  }

  else
  {
    v14 = v37[0];
  }

  if ((v38 & 0x80u) == 0)
  {
    v15 = v38;
  }

  else
  {
    v15 = v37[1];
  }

  v16 = std::string::append(&v43, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v44, "\n  bias_grad");
  v19 = *&v18->__r_.__value_.__l.__data_;
  v45.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v45.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::MomentStatistics<float>((a1 + 224), v20, v21, v22, v23);
  if ((v36 & 0x80u) == 0)
  {
    v24 = v35;
  }

  else
  {
    v24 = v35[0];
  }

  if ((v36 & 0x80u) == 0)
  {
    v25 = v36;
  }

  else
  {
    v25 = v35[1];
  }

  v26 = std::string::append(&v45, v24, v25);
  v27 = *&v26->__r_.__value_.__l.__data_;
  v46.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v46.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  v28 = std::string::append(&v46, ", lr-coef ");
  v29 = *&v28->__r_.__value_.__l.__data_;
  v47.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v47.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::ToString<float>((a1 + 140));
  if ((v34 & 0x80u) == 0)
  {
    v30 = __p;
  }

  else
  {
    v30 = __p[0];
  }

  if ((v34 & 0x80u) == 0)
  {
    v31 = v34;
  }

  else
  {
    v31 = __p[1];
  }

  v32 = std::string::append(&v47, v30, v31);
  *a2 = *v32;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (v38 < 0)
  {
    operator delete(v37[0]);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }
}

void sub_1C309DF70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v52 - 57) < 0)
  {
    operator delete(*(v52 - 80));
  }

  if (*(v52 - 89) < 0)
  {
    operator delete(*(v52 - 112));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v52 - 121) < 0)
  {
    operator delete(*(v52 - 144));
  }

  if (*(v52 - 153) < 0)
  {
    operator delete(*(v52 - 176));
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a4 || (*(a1 + 17) & 1) == 0)
  {
    kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::PropagateCpu(a1, a2, a3, a4, a5);
  }

  else
  {
    kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::PropagateBNNS(a1, a2, a3, 0, a5);
  }
}

uint64_t kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::PropagateBNNS(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const char *a5)
{
  v5 = *(a1 + 152);
  if (!v5)
  {
    kaldi::KaldiAssertFailure_("PropagateBNNS", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 0x472, "bnns_filter_", a5);
  }

  if (a4)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v8, "PropagateBNNS", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 1141);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v8, "BNNS only supports one batch");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v8);
  }

  result = BNNSFilterApplyBatch(v5, *(a2 + 20), *(a2 + 8), *(a2 + 24), *(a3 + 8), *(a3 + 24));
  if (result)
  {
    kaldi::KaldiAssertFailure_("PropagateBNNS", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 0x479, "ret == 0", v7);
  }

  return result;
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::PropagateCpu(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 104);
  v6 = *(a1 + 108);
  v7 = (v5 + 2 * *(a1 + 128) - *(a1 + 112)) / *(a1 + 120);
  v8 = (v6 + 2 * *(a1 + 132) - *(a1 + 116)) / *(a1 + 124);
  v63 = (v8 + 1);
  v60 = (v7 + 1);
  v9 = v63 * v60;
  v64 = (*(a1 + 12) / (v63 * v60));
  if (*(*(a1 + 184) + 20) != v64)
  {
    kaldi::KaldiAssertFailure_("PropagateCpu", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 0x490, "num_filters == num_output_fmaps", a5);
  }

  v10 = a4;
  v13 = *(a1 + 8);
  v14 = *(a2 + 20);
  v15 = *(a1 + 296);
  v16 = *(a1 + 80);
  v67 = v63 * v60;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 304) - v15) >> 3) < v16)
  {
    std::vector<std::vector<kaldi::CuMatrix<float>>>::resize(a1 + 296, v16);
    v9 = v63 * v60;
    v15 = *(a1 + 296);
  }

  v62 = v7;
  v69 = v10;
  v17 = (v15 + 24 * v10);
  if (0xAAAAAAAAAAAAAAABLL * ((v17[1] - *v17) >> 4) < v9)
  {
    std::vector<kaldi::CuMatrix<float>>::resize(v17, v9);
    v9 = v63 * v60;
  }

  if (v9 >= 1)
  {
    v18 = 0;
    v19 = 24 * v10;
    do
    {
      kaldi::CuMatrix<float>::Resize(*(*(a1 + 296) + v19) + v18, v14, *(*(a1 + 184) + 16), 0, 0);
      v18 += 48;
    }

    while (48 * v67 != v18);
  }

  v61 = v8;
  v66 = (a1 + 160);
  v20 = *(a1 + 80);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 168) - *(a1 + 160)) >> 4) < v20)
  {
    std::vector<kaldi::CuMatrix<float>>::resize(v66, v20);
  }

  v21 = *(a1 + 132);
  v22 = -v21;
  v23 = *(a1 + 108);
  v24 = *(a1 + 116);
  if (v21 + v23 - v24 >= -v21)
  {
    v44 = 0;
    v45 = *(a1 + 128);
    v46 = *(a1 + 104);
    v47 = *(a1 + 112);
    v48 = v13 / (v6 * v5);
    v68 = a2;
    do
    {
      v49 = -v45;
      if (v45 + v46 - v47 >= -v45)
      {
        v50 = v44;
        do
        {
          v70 = v50;
          __p = 0;
          v72 = 0uLL;
          if (v48 >= 1)
          {
            v51 = 0;
            v52 = v46 * v22;
            v53 = *(a1 + 116);
            v54 = v49 + v52;
            do
            {
              if (v53 >= 1)
              {
                for (i = 0; i < v53; ++i)
                {
                  if (v47 >= 1)
                  {
                    v56 = 0;
                    v57 = i + v22;
                    do
                    {
                      v58 = *(a1 + 104);
                      v59 = *(a1 + 108);
                      v75 = v54 + v56 + v58 * (i + v51 * v59);
                      if (v57 < 0 || v57 >= v59 || v49 + v56 < 0 || v49 + v56 >= v58)
                      {
                        v74 = -1;
                        std::vector<int>::push_back[abi:ne200100](&__p, &v74);
                      }

                      else
                      {
                        std::vector<int>::push_back[abi:ne200100](&__p, &v75);
                      }

                      ++v56;
                      v47 = *(a1 + 112);
                    }

                    while (v56 < v47);
                    v53 = *(a1 + 116);
                  }
                }
              }

              ++v51;
            }

            while (v51 != v48);
          }

          kaldi::CuMatrixBase<float>::CopyCols(*(*(a1 + 296) + 24 * v69) + 48 * v70, v68, &__p, a4, a5);
          if (__p)
          {
            *&v72 = __p;
            operator delete(__p);
          }

          v50 = v70 + 1;
          v49 += *(a1 + 120);
          v46 = *(a1 + 104);
          v45 = *(a1 + 128);
          v47 = *(a1 + 112);
        }

        while (v49 <= v45 + v46 - v47);
        v23 = *(a1 + 108);
        v21 = *(a1 + 132);
        v44 = v70 + 1;
        v24 = *(a1 + 116);
      }

      v22 += *(a1 + 124);
    }

    while (v22 <= v21 + v23 - v24);
  }

  kaldi::CuMatrix<float>::Resize(*v66 + 48 * v69, *(a3 + 20), *(a3 + 16), 3u, 0);
  if (v67 >= 1)
  {
    v25 = 0;
    v26 = 0;
    do
    {
      v27 = *(a1 + 160) + 48 * v69;
      kaldi::CuSubMatrix<float>::CuSubMatrix(&__p, v27, 0, *(v27 + 20), v26, v64);
      kaldi::CuMatrixBase<float>::AddVecToRows(&__p, *(a1 + 192), v28, v29, v30, 1.0, 0.0);
      kaldi::CuMatrixBase<float>::AddMatMat(&__p, *(*(a1 + 296) + 24 * v69) + v25, 111, *(a1 + 184), 0x70);
      __p = &unk_1F42BFE90;
      v72 = 0u;
      v73 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&__p);
      v26 = (v26 + v64);
      v25 += 48;
    }

    while (48 * v67 != v25);
  }

  std::vector<int>::vector[abi:ne200100](&__p, *(a1 + 12));
  if (v64 >= 1)
  {
    v33 = 0;
    v34 = vdupq_n_s64(v60 - 1);
    v35 = vdupq_n_s64(4uLL);
    v36 = 8;
    do
    {
      if ((v61 & 0x80000000) == 0)
      {
        v37 = 0;
        v38 = __p + v36;
        v39 = v33;
        do
        {
          if ((v62 & 0x80000000) == 0)
          {
            v40 = v38;
            v31 = (v60 + 3) & 0xFFFFFFFC;
            LODWORD(v32) = v39;
            v41 = xmmword_1C378AF00;
            v42 = xmmword_1C378AEF0;
            do
            {
              v43 = vmovn_s64(vcgeq_u64(v34, v41));
              if (vuzp1_s16(v43, *v34.i8).u8[0])
              {
                *(v40 - 2) = v32;
              }

              if (vuzp1_s16(v43, *&v34).i8[2])
              {
                *(v40 - 1) = v64 + v32;
              }

              if (vuzp1_s16(*&v34, vmovn_s64(vcgeq_u64(v34, *&v42))).i32[1])
              {
                *v40 = 2 * v64 + v32;
                v40[1] = 3 * v64 + v32;
              }

              v42 = vaddq_s64(v42, v35);
              v41 = vaddq_s64(v41, v35);
              v32 = (v32 + 4 * v64);
              v40 += 4;
              v31 -= 4;
            }

            while (v31);
          }

          ++v37;
          v39 += v64 * v60;
          v38 += 4 * v60;
        }

        while (v37 != v63);
      }

      ++v33;
      v36 += 4 * v63 * v60;
    }

    while (v33 != v64);
  }

  kaldi::CuMatrixBase<float>::CopyCols(a3, *v66 + 48 * v69, &__p, v31, v32);
  if (__p)
  {
    *&v72 = __p;
    operator delete(__p);
  }
}

void sub_1C309E720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::BackpropagateCpu(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, int a6)
{
  v6 = (*(a1 + 104) + 2 * *(a1 + 128) - *(a1 + 112)) / *(a1 + 120);
  v7 = (v6 + 1);
  v8 = (*(a1 + 108) + 2 * *(a1 + 132) - *(a1 + 116)) / *(a1 + 124);
  v9 = (v8 + 1);
  v10 = v9 * v7;
  v11 = (*(a1 + 12) / (v9 * v7));
  if (*(*(a1 + 184) + 20) == v11)
  {
    v33 = *(a1 + 8);
    v14 = *(a2 + 20);
    v15 = a6;
    kaldi::CuMatrix<float>::Resize(*(a1 + 160) + 48 * a6, *(a4 + 20), *(a4 + 16), 3u, 0);
    std::vector<int>::vector[abi:ne200100](&v36, *(a1 + 12));
    if (v11 >= 1)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = vdupq_n_s64(v7 - 1);
      v22 = 12 * v11;
      v23 = 8 * v11;
      v24 = vdupq_n_s64(4uLL);
      v25 = 4 * v11;
      do
      {
        if ((v8 & 0x80000000) == 0)
        {
          v26 = 0;
          v27 = v36;
          v28 = v19;
          do
          {
            if ((v6 & 0x80000000) == 0)
            {
              v16 = 0;
              v17 = v27;
              v29 = xmmword_1C378AF00;
              v30 = xmmword_1C378AEF0;
              do
              {
                v31 = vmovn_s64(vcgeq_u64(v21, v29));
                if (vuzp1_s16(v31, *v21.i8).u8[0])
                {
                  *&v17[v18] = v28 + v16;
                }

                if (vuzp1_s16(v31, *&v21).i8[2])
                {
                  *&v17[v25] = v28 + v16 + 1;
                }

                if (vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, *&v30))).i32[1])
                {
                  *&v17[v23] = v28 + v16 + 2;
                  *&v17[v22] = v28 + v16 + 3;
                }

                v16 += 4;
                v30 = vaddq_s64(v30, v24);
                v29 = vaddq_s64(v29, v24);
                v17 += 16 * v11;
              }

              while (((v6 + 4) & 0xFFFFFFFC) != v16);
            }

            ++v26;
            v27 += 4 * v11 * v7;
            v28 += v6 + 1;
          }

          while (v26 != v9);
        }

        ++v20;
        v22 += 4;
        v19 += v10;
        v23 += 4;
        v25 += 4;
        v18 += 4;
      }

      while (v20 != v11);
    }

    kaldi::CuMatrixBase<float>::CopyCols(*(a1 + 160) + 48 * v15, a4, &v36, v16, v17);
    std::vector<kaldi::CuSubMatrix<float>>::vector[abi:ne200100](v35, v10);
    v32 = *(a1 + 24);
    if (v15 < (*(a1 + 32) - v32) >> 3)
    {
      kaldi::CuWorkspace::GetChildWorkspace(*(v32 + 8 * v15), -1);
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v34, "BackpropagateCpu", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 1348);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "Convolutional2DComponent needs workspace set to perform back-propagation", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v34);
  }

  kaldi::KaldiAssertFailure_("BackpropagateCpu", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 0x533, "num_filters == num_output_fmaps", a5);
}

void sub_1C309EDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20)
{
  a20 = (v20 - 136);
  std::vector<kaldi::CuSubMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a20);
  v22 = *(v20 - 112);
  if (v22)
  {
    *(v20 - 104) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::SetGradientNormalization(uint64_t result, int a2, float a3)
{
  *(result + 148) = a3;
  *(result + 144) = a2;
  *(result + 344) = 0;
  return result;
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::NormalizeGradients(uint64_t a1, int a2, uint64_t a3, uint64_t a4, const char *a5, float a6)
{
  v7 = a6;
  v9 = *(a1 + 144);
  if (v9 == 3)
  {
    if (a6 >= 0.0 && a6 <= 1.0)
    {
      kaldi::nnet1::UpdatableComponent::RmspropGradient(*(*(a1 + 200) + 8 * a2), *(a1 + 248) + 48 * a2, a6);
      v16 = *(*(a1 + 224) + 8 * a2);
      v17 = *(a1 + 272) + 32 * a2;

      kaldi::nnet1::UpdatableComponent::RmspropGradient(v16, v17, v7, v13, v14, v15);
    }
  }

  else if (v9 == 2)
  {
    if (a6 > 0.0)
    {
      v11 = a2;
      if (*(a1 + 84))
      {
        v7 = *(*(a1 + 320) + 4 * a2) * a6;
      }

      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(*(*(a1 + 200) + 8 * a2), (*(a1 + 248) + 48 * a2), v7, a3, a4, a5);
      v21 = *(*(a1 + 224) + 8 * v11);
      v22 = (*(a1 + 272) + 32 * v11);

      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v21, v22, v18, v19, v20, v7);
    }
  }

  else if (v9 == 1 && a6 > 0.0)
  {
    v10 = a2;
    if (*(a1 + 84))
    {
      v7 = *(*(a1 + 320) + 4 * a2) * a6;
    }

    kaldi::nnet1::UpdatableComponent::ClipGradient(*(*(a1 + 200) + 8 * a2), v7);
    v23 = *(*(a1 + 224) + 8 * v10);

    kaldi::nnet1::UpdatableComponent::ClipGradient(v23, v7);
  }
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);

  kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::AccumGradientsCpu(a1, a2, a3, a4, a5);
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(uint64_t a1)
{
  if ((*(a1 + 344) & 1) == 0)
  {
    v2 = *(a1 + 144);
    v3 = *(a1 + 80);
    if (v3 > 1)
    {
      v4 = (v3 + 1);
    }

    else
    {
      v4 = 1;
    }

    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 200), v4);
    std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::resize((a1 + 224), v4);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 248), v4);
    std::vector<kaldi::CuVector<float>>::resize((a1 + 272), v4, v5, v6, v7);
    if (v4 >= 1)
    {
      v8 = *(a1 + 184);
      v10 = *(v8 + 16);
      v9 = *(v8 + 20);
      operator new();
    }

    std::vector<float>::resize((a1 + 320), v4);
    *(a1 + 344) = 1;
  }
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::AccumGradientsCpu(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = (*(a1 + 104) + 2 * *(a1 + 128) - *(a1 + 112)) / *(a1 + 120) + 1;
  v6 = v5 + v5 * ((*(a1 + 108) + 2 * *(a1 + 132) - *(a1 + 116)) / *(a1 + 124));
  v7 = *(a1 + 12) / v6;
  if (*(*(a1 + 184) + 20) != v7)
  {
    kaldi::KaldiAssertFailure_("AccumGradientsCpu", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 0x2D6, "num_filters == num_output_fmaps", a5);
  }

  v8 = a5;
  *(*(a1 + 320) + 4 * a5) = *(a2 + 20);
  v10 = *(*(a1 + 200) + 8 * a5);
  *(v10 + 32) = a4;
  *(*(*(a1 + 224) + 8 * a5) + 24) = a4;
  kaldi::CuMatrixBase<float>::SetZero(v10);
  kaldi::CuVectorBase<float>::SetZero(*(*(a1 + 224) + 8 * v8));
  if (v6 >= 1)
  {
    v11 = 0;
    v12 = 0;
    v13 = 48 * v6;
    do
    {
      v14 = *(a1 + 160) + 48 * v8;
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v18, v14, 0, *(v14 + 20), v12, v7);
      kaldi::CuMatrixBase<float>::AddMatMat(*(*(a1 + 200) + 8 * v8), &v18, 112, *(*(a1 + 296) + 24 * v8) + v11, 0x6F);
      kaldi::CuVectorBase<float>::AddRowSumMat(*(*(a1 + 224) + 8 * v8), &v18, v15, v16, v17);
      v18 = &unk_1F42BFE90;
      v19 = 0u;
      v20 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v18);
      v12 = (v12 + v7);
      v11 += 48;
    }

    while (v13 != v11);
  }
}

void sub_1C309F4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  a10 = &unk_1F42BFE90;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a10);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::GetGradient(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(*a1 + 16))(a1);
  kaldi::CuMatrix<float>::CuMatrix(v24, *(a3 + 20), *(a3 + 16), 0, 0, 0);
  kaldi::CuMatrix<float>::CuMatrix(v23, *(a2 + 20), *(a2 + 16), 0, 0, 0);
  (*(*v8 + 112))(v8, a2, v24, 0);
  (*(*v8 + 128))(v8, a2, v24, a3, v23, 0);
  (*(*v8 + 232))(v8, a2, a3, 0, 0);
  v9 = *(a1[23] + 16) * *(a1[23] + 20);
  kaldi::Vector<float>::Resize(a4, (*(a1[24] + 16) + v9), 0, v10, v11);
  v21 = 0;
  v22 = 0;
  if (v9 > *(a4 + 8))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v14);
  }

  v20 = *a4;
  LODWORD(v21) = v9;
  kaldi::VectorBase<float>::CopyRowsFromMat(&v20, **(v8 + 200), v12, v13, v14);
  v18 = *(a1[24] + 16);
  v21 = 0;
  v22 = 0;
  if ((v18 + v9) > *(a4 + 8))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v17);
  }

  v20 = (*a4 + 4 * v9);
  LODWORD(v21) = v18;
  kaldi::CuVectorBase<float>::CopyToVec<float>(**(v8 + 224), &v20, v15, v16, v17);
  (*(*v8 + 8))(v8);
  kaldi::CuMatrix<float>::~CuMatrix(v23);
  return kaldi::CuMatrix<float>::~CuMatrix(v24);
}

void sub_1C309F778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  kaldi::CuMatrix<float>::~CuMatrix(va1);
  _Unwind_Resume(a1);
}

float kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::GetNormalizedLearningRate(uint64_t a1, int a2)
{
  if ((*(a1 + 84) & 1) == 0)
  {
    return *(a1 + 56);
  }

  v2 = *(a1 + 352);
  v3 = *(a1 + 360) - v2;
  if (!v3)
  {
    return NAN;
  }

  v4 = v3 >> 2;
  if (v4 <= a2)
  {
    return NAN;
  }

  v5 = v4 - 1;
  if (a2 >= 0)
  {
    v5 = a2;
  }

  return *(v2 + 4 * v5);
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::CountZeroCorr(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  *a3 = *(*(a1 + 192) + 16) + *(*(a1 + 184) + 16) * *(*(a1 + 184) + 20);
  v6 = *(a1 + 200);
  v7 = *(a1 + 208) - v6;
  if (v7 && (v8 = *(a1 + 232) - *(a1 + 224)) != 0)
  {
    v9 = v7 >> 3;
    v10 = v8 >> 3;
    v11 = *(a1 + 80);
    if (v11 == 1)
    {
      v11 = 0;
    }

    v12 = v11;
    v13 = v10 - 1;
    if (v9 - 1 != v11 || v13 != v11)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v22, "CountZeroCorr", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 218);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Unexpected mismatch in indexes: ", 32);
      v18 = MEMORY[0x1C692A960](v17, v12);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "  ", 2);
      v20 = MEMORY[0x1C692A980](v19, ((*(a1 + 208) - *(a1 + 200)) >> 3) - 1);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "  ", 2);
      MEMORY[0x1C692A980](v21, ((*(a1 + 232) - *(a1 + 224)) >> 3) - 1);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v22);
    }

    v15 = kaldi::CuMatrixBase<float>::CountZeros(*(v6 + 8 * v11));
    v16 = kaldi::CuVectorBase<float>::CountZeros(*(*(a1 + 224) + 8 * v12)) + v15;
  }

  else
  {
    v16 = 0;
  }

  *a2 = v16;
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::VectorizeWeightsCorrs(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v5, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 238);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, "Weights are already vectorized");
  }

  else
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiLogMessage::KaldiLogMessage(v5, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 241);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Performing vectorization of convolutional 2d component", 54);
      kaldi::KaldiLogMessage::~KaldiLogMessage(v5);
    }

    v4 = *(*(a1 + 192) + 16) + *(*(a1 + 184) + 16) * *(*(a1 + 184) + 20);
    if (v4 == (*(*a1 + 176))(a1))
    {
      kaldi::NewCuSubOrMat<float>(*(a1 + 184), a2 != 0);
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(v5, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 244);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, "(nlinparams + bias_->Dim()) == NumParams()");
  }

  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v5);
}

uint64_t kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::InitResidualAggregator(uint64_t a1, uint64_t *a2)
{
  kaldi::nnet1::Convolutional2DComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, *(*(a1 + 208) - 8));
  v4 = *(*(a1 + 232) - 8);

  return kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v4);
}

void std::vector<std::vector<kaldi::CuMatrix<float>>>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<kaldi::CuMatrix<float>>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    while (v3 != v7)
    {
      v3 -= 3;
      v8 = v3;
      std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
    }

    *(a1 + 8) = v7;
  }
}

kaldi::CuWorkspace **std::unique_ptr<kaldi::CuWorkspace>::~unique_ptr[abi:ne200100](kaldi::CuWorkspace **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    kaldi::CuWorkspace::~CuWorkspace(v2);
    MEMORY[0x1C692AE10]();
  }

  return a1;
}

double kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::Convolutional2DComponent(uint64_t a1, int a2, int a3)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = &unk_1F42CB198;
  *(a1 + 56) = xmmword_1C378B0E0;
  *(a1 + 72) = -1082130432;
  *(a1 + 76) = 0x100000003;
  *(a1 + 84) = 0;
  *(a1 + 86) = 0;
  *a1 = &unk_1F42C4860;
  *(a1 + 88) = &unk_1F42C4998;
  *(a1 + 96) = &unk_1F42C49C0;
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  __asm { FMOV            V1.2S, #1.0 }

  *(a1 + 136) = _D1;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 329) = 0u;
  return result;
}

uint64_t kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::Convolutional2DComponent(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F42C1850;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(a1 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
  *a1 = &unk_1F42C2E78;
  *(a1 + 48) = &unk_1F42CB198;
  v5 = *(a2 + 56);
  *(a1 + 71) = *(a2 + 71);
  *(a1 + 56) = v5;
  *a1 = &unk_1F42C4860;
  *(a1 + 88) = &unk_1F42C4998;
  *(a1 + 96) = &unk_1F42C49C0;
  *(a1 + 200) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::AssignMembers<kaldi::QuantizedMatrix<signed char>>(a1, a2);
  return a1;
}

void sub_1C30A039C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator((v10 + 376));
  v14 = *(v10 + 352);
  if (v14)
  {
    *(v10 + 360) = v14;
    operator delete(v14);
  }

  v15 = *(v10 + 320);
  if (v15)
  {
    *(v10 + 328) = v15;
    operator delete(v15);
  }

  std::vector<std::vector<kaldi::CuMatrix<float>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v16 = *(v10 + 192);
  *(v10 + 192) = 0;
  if (v16)
  {
    (*(*v16 + 16))(v16);
  }

  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100]((v10 + 184), 0);
  a10 = (v10 + 160);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v12);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v11);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v10);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::AssignMembers<kaldi::QuantizedMatrix<signed char>>(uint64_t a1, uint64_t a2)
{
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 148) = *(a2 + 148);
  if (a1 == a2)
  {
    *(a1 + 344) = 0;
  }

  else
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 320), *(a2 + 320), *(a2 + 328), (*(a2 + 328) - *(a2 + 320)) >> 2);
    *(a1 + 344) = 0;
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 352), *(a2 + 352), *(a2 + 360), (*(a2 + 360) - *(a2 + 352)) >> 2);
  }

  if (*(a2 + 184))
  {
    operator new();
  }

  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100]((a1 + 184), 0);
  if (*(a2 + 192))
  {
    operator new();
  }

  v4 = *(a1 + 192);
  *(a1 + 192) = 0;
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::UpdateBNNSFilter(a1);
  if (*(a2 + 384) != *(a2 + 376))
  {
    kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::InitResidualAggregator(a1, (a1 + 376));
  }

  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(v8, "AssignMembers", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 1465);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "After assign, Convolution filter has padding? ", 46);
    v6 = kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 184));
    v7 = v6 == kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 184));
    MEMORY[0x1C692A930](v5, v7);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v8);
  }
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::~Convolutional2DComponent(uint64_t a1)
{
  *a1 = &unk_1F42C4860;
  v2 = a1 + 88;
  *(a1 + 88) = &unk_1F42C4998;
  v3 = a1 + 96;
  *(a1 + 96) = &unk_1F42C49C0;
  v4 = *(a1 + 152);
  if (v4)
  {
    BNNSFilterDestroy(v4);
    *(a1 + 152) = 0;
  }

  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator((a1 + 376));
  v5 = *(a1 + 352);
  if (v5)
  {
    *(a1 + 360) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 320);
  if (v6)
  {
    *(a1 + 328) = v6;
    operator delete(v6);
  }

  v8 = (a1 + 296);
  std::vector<std::vector<kaldi::CuMatrix<float>>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (a1 + 272);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (a1 + 248);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (a1 + 224);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (a1 + 200);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v7 = *(a1 + 192);
  *(a1 + 192) = 0;
  if (v7)
  {
    (*(*v7 + 16))(v7);
  }

  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100]((a1 + 184), 0);
  v8 = (a1 + 160);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v3);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v2);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a1);
}

{
  kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::~Convolutional2DComponent(a1);

  JUMPOUT(0x1C692AE10);
}

void non-virtual thunk tokaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::~Convolutional2DComponent(uint64_t a1)
{
  kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::~Convolutional2DComponent(a1 - 88);
}

{
  kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::~Convolutional2DComponent(a1 - 96);
}

{
  kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::~Convolutional2DComponent(a1 - 88);

  JUMPOUT(0x1C692AE10);
}

{
  kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::~Convolutional2DComponent(a1 - 96);

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::InitData(int *a1, uint64_t *a2, kaldi::UniformRandomNumber *a3)
{
  v87 = 0x40000000;
  v88 = -1073741824;
  v86 = 1036831949;
  kaldi::nnet1::Component::TypeToMarker(a1[36], &v85);
  v84 = -1;
  memset(v83, 0, sizeof(v83));
  v8 = a1 + 29;
  v9 = a1 + 28;
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_197;
    }

    kaldi::ReadToken(a2, 0, v83, v6, v7);
    if (SHIBYTE(v83[2]) < 0)
    {
      break;
    }

    if (HIBYTE(v83[2]) <= 0xBu)
    {
      if (HIBYTE(v83[2]) <= 9u)
      {
        if (HIBYTE(v83[2]) == 6)
        {
          v43 = LODWORD(v83[0]) == 1684099132 && WORD2(v83[0]) == 15960;
          v18 = a1 + 32;
          if (!v43)
          {
            v44 = LODWORD(v83[0]) == 1684099132 && WORD2(v83[0]) == 15961;
            v18 = a1 + 33;
            if (!v44)
            {
              goto LABEL_210;
            }
          }

          goto LABEL_169;
        }

        if (HIBYTE(v83[2]) != 9)
        {
          goto LABEL_210;
        }

        v22 = v83;
LABEL_128:
        v40 = *v22;
        v41 = *(v22 + 8);
        v42 = v40 == 0x6461724778614D3CLL && v41 == 62;
        v14 = a1 + 37;
        if (!v42)
        {
          if ((v83[2] & 0x8000000000000000) != 0)
          {
            v39 = v83[1];
LABEL_190:
            if (v39 == 12)
            {
              v54 = v83[0];
              goto LABEL_192;
            }
          }

LABEL_210:
          kaldi::KaldiErrorMessage::KaldiErrorMessage(v82, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 334);
          v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, "Unknown token ", 14);
          if (v83[2] >= 0)
          {
            v76 = v83;
          }

          else
          {
            v76 = v83[0];
          }

          if (v83[2] >= 0)
          {
            v77 = HIBYTE(v83[2]);
          }

          else
          {
            v77 = v83[1];
          }

          v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, v76, v77);
          v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, ", a typo in config?", 19);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, " (ParamStddev|BiasMean|BiasRange|FmapXLen|FmapYLen|FiltXLen|FiltYLen|FiltXStep|FiltYStep|ConnectFmap|LearnRateCoef|BiasLearnRateCoef|RandomSeed|GradientNormType|MaxGrad)", 169);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(v82);
        }

        goto LABEL_186;
      }

      if (HIBYTE(v83[2]) != 10)
      {
        if (v83[0] != 0x6E6152736169423CLL || *(v83 + 3) != 0x3E65676E61527361)
        {
          v25 = v83[0] == 0x745358746C69463CLL && *(v83 + 3) == 0x3E7065745358746CLL;
          v18 = a1 + 30;
          if (!v25)
          {
            v26 = v83[0] == 0x745359746C69463CLL && *(v83 + 3) == 0x3E7065745359746CLL;
            v18 = a1 + 31;
            if (!v26)
            {
              goto LABEL_210;
            }
          }

          goto LABEL_169;
        }

LABEL_185:
        v14 = &v87;
        goto LABEL_186;
      }

      if (v83[0] != 0x61654D736169423CLL || LOWORD(v83[1]) != 15982)
      {
        v46 = v83[0] == 0x654C5870616D463CLL && LOWORD(v83[1]) == 15982;
        v18 = a1 + 26;
        if (!v46)
        {
          v47 = v83[0] == 0x654C5970616D463CLL && LOWORD(v83[1]) == 15982;
          v18 = a1 + 27;
          if (!v47)
          {
            v48 = v83[0] == 0x654C58746C69463CLL && LOWORD(v83[1]) == 15982;
            v18 = a1 + 28;
            if (!v48)
            {
              v49 = v83[0] == 0x654C59746C69463CLL && LOWORD(v83[1]) == 15982;
              v18 = a1 + 29;
              if (!v49)
              {
                goto LABEL_210;
              }
            }
          }
        }

        goto LABEL_169;
      }

LABEL_184:
      v14 = &v88;
      goto LABEL_186;
    }

    if (HIBYTE(v83[2]) <= 0xEu)
    {
      if (HIBYTE(v83[2]) == 12)
      {
        if (v83[0] != 0x536D6F646E61523CLL || LODWORD(v83[1]) != 1046766949)
        {
          v54 = v83;
LABEL_192:
          v55 = *v54;
          v56 = *(v54 + 2);
          if (v55 == 0x6E6F706D6F432F3CLL && v56 == 1047817829)
          {
LABEL_197:
            a1[36] = kaldi::nnet1::Component::MarkerToGradientNormType(&v85);
            v58 = a1[2];
            v60 = a1[26];
            v59 = a1[27];
            v61 = v58 / (v59 * v60);
            if (!(v58 % (v59 * v60)))
            {
              v62 = (v60 + 2 * a1[32] - a1[28]) / a1[30] + 1;
              v63 = a1[3];
              v64 = v62 + v62 * ((v59 + 2 * a1[33] - a1[29]) / a1[31]);
              v65 = (v63 / v64);
              if (!(v63 % v64))
              {
                if (v84 >= 1)
                {
                  kaldi::UniformRandomNumber::SetRandomSeeds(a3, v84);
                }

                kaldi::GaussRandomNumber::GaussRandomNumber(v82, a3);
                kaldi::Matrix<float>::Matrix(v80, v65, (*v9 * v61 * *v8), 0, 0);
                if (v65 >= 1)
                {
                  v69 = 0;
                  v70 = *v9;
                  v71 = *v8;
                  do
                  {
                    if (v71 * v61 * v70 >= 1)
                    {
                      v72 = 0;
                      do
                      {
                        v73 = *&v86;
                        kaldi::GaussRandomNumber::Rand(v82, 0, v66, v67, v68);
                        *(v80[0] + 4 * v69 * v81 + 4 * v72++) = v73 * v74;
                        v70 = *v9;
                        v71 = *v8;
                      }

                      while (v72 < *v9 * v61 * *v8);
                    }

                    ++v69;
                  }

                  while (v69 != v65);
                }

                kaldi::MatrixBase<float>::NumRows(v80);
                kaldi::MatrixBase<float>::NumCols(v80);
                operator new();
              }

              kaldi::KaldiErrorMessage::KaldiErrorMessage(v82, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 352);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, "output_dim_ % (out_fmap_x_len * out_fmap_y_len) == 0", 52);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(v82);
            }

            kaldi::KaldiErrorMessage::KaldiErrorMessage(v82, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 346);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, "input_dim_ % (fmap_x_len_ * fmap_y_len_) == 0", 45);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(v82);
          }

          goto LABEL_210;
        }

LABEL_168:
        v18 = &v84;
LABEL_169:
        kaldi::ReadBasicType<int>(a2, 0, v18);
        goto LABEL_187;
      }

      if (HIBYTE(v83[2]) != 13)
      {
        goto LABEL_210;
      }

      if (v83[0] != 0x74536D617261503CLL || *(v83 + 5) != 0x3E7665646474536DLL)
      {
        goto LABEL_210;
      }

      goto LABEL_74;
    }

    switch(HIBYTE(v83[2]))
    {
      case 0xFu:
        v51 = v83[0] == 0x61526E7261654C3CLL && *(v83 + 7) == 0x3E66656F43657461;
        v14 = a1 + 34;
        if (!v51)
        {
          goto LABEL_210;
        }

        break;
      case 0x12u:
        if (v83[0] != 0x6E6569646172473CLL || v83[1] != 0x7079546D726F4E74 || LOWORD(v83[2]) != 15973)
        {
          goto LABEL_210;
        }

LABEL_183:
        kaldi::ReadToken(a2, 0, &v85, v10, v11);
        goto LABEL_187;
      case 0x13u:
        v12 = v83[0] == 0x61654C736169423CLL && v83[1] == 0x6F43657461526E72;
        v13 = v12 && *(&v83[1] + 3) == 0x3E66656F43657461;
        v14 = a1 + 35;
        if (!v13)
        {
          goto LABEL_210;
        }

        break;
      default:
        goto LABEL_210;
    }

LABEL_186:
    kaldi::ReadBasicType<float>(a2, 0, v14);
LABEL_187:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  v15 = v83[1];
  if (v83[1] > 10)
  {
    if (v83[1] != 11)
    {
      if (v83[1] == 13)
      {
        if (*v83[0] != 0x74536D617261503CLL || *(v83[0] + 5) != 0x3E7665646474536DLL)
        {
          goto LABEL_210;
        }

LABEL_74:
        v14 = &v86;
        goto LABEL_186;
      }

      goto LABEL_98;
    }

    if (*v83[0] == 0x6E6152736169423CLL && *(v83[0] + 3) == 0x3E65676E61527361)
    {
      goto LABEL_185;
    }

    v31 = *v83[0] == 0x745358746C69463CLL && *(v83[0] + 3) == 0x3E7065745358746CLL;
    v18 = a1 + 30;
    if (v31)
    {
      goto LABEL_169;
    }

    v32 = *v83[0] == 0x745359746C69463CLL && *(v83[0] + 3) == 0x3E7065745359746CLL;
    v18 = a1 + 31;
    if (v32)
    {
      goto LABEL_169;
    }
  }

  else if (v83[1] == 6)
  {
    v28 = *v83[0] == 1684099132 && *(v83[0] + 4) == 15960;
    v18 = a1 + 32;
    if (v28)
    {
      goto LABEL_169;
    }

    v29 = *v83[0] == 1684099132 && *(v83[0] + 4) == 15961;
    v18 = a1 + 33;
    if (v29)
    {
      goto LABEL_169;
    }
  }

  else
  {
    if (v83[1] != 10)
    {
LABEL_98:
      if (v15 == 15)
      {
        v33 = *v83[0] == 0x61526E7261654C3CLL && *(v83[0] + 7) == 0x3E66656F43657461;
        v14 = a1 + 34;
        if (v33)
        {
          goto LABEL_186;
        }

        v15 = v83[1];
      }

      if (v15 != 19 || (*v83[0] == 0x61654C736169423CLL ? (v34 = *(v83[0] + 8) == 0x6F43657461526E72) : (v34 = 0), v34 ? (v35 = *(v83[0] + 11) == 0x3E66656F43657461) : (v35 = 0), v14 = a1 + 35, !v35))
      {
        if (v83[1] == 18)
        {
          if (*v83[0] == 0x6E6569646172473CLL && *(v83[0] + 8) == 0x7079546D726F4E74 && *(v83[0] + 16) == 15973)
          {
            goto LABEL_183;
          }
        }

        else if (v83[1] == 12 && *v83[0] == 0x536D6F646E61523CLL && *(v83[0] + 8) == 1046766949)
        {
          goto LABEL_168;
        }

        v39 = v83[1];
        if (v83[1] != 9)
        {
          goto LABEL_190;
        }

        v22 = v83[0];
        goto LABEL_128;
      }

      goto LABEL_186;
    }

    if (*v83[0] == 0x61654D736169423CLL && *(v83[0] + 8) == 15982)
    {
      goto LABEL_184;
    }

    v17 = *v83[0] == 0x654C5870616D463CLL && *(v83[0] + 8) == 15982;
    v18 = a1 + 26;
    if (v17)
    {
      goto LABEL_169;
    }

    v19 = *v83[0] == 0x654C5970616D463CLL && *(v83[0] + 8) == 15982;
    v18 = a1 + 27;
    if (v19)
    {
      goto LABEL_169;
    }

    v20 = *v83[0] == 0x654C58746C69463CLL && *(v83[0] + 8) == 15982;
    v18 = a1 + 28;
    if (v20)
    {
      goto LABEL_169;
    }

    v21 = *v83[0] == 0x654C59746C69463CLL && *(v83[0] + 8) == 15982;
    v18 = a1 + 29;
    if (v21)
    {
      goto LABEL_169;
    }
  }

  v15 = v83[1];
  goto LABEL_98;
}

void sub_1C30A1680(_Unwind_Exception *a1)
{
  if (*(v1 - 153) < 0)
  {
    operator delete(*(v1 - 176));
  }

  if (*(v1 - 121) < 0)
  {
    operator delete(*(v1 - 144));
  }

  _Unwind_Resume(a1);
}

void *kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::UpdateBNNSFilter(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    BNNSFilterDestroy(v2);
    *(a1 + 152) = 0;
  }

  v3 = *(a1 + 104);
  v4 = *(a1 + 108);
  v5 = *(a1 + 12);
  v6 = *(a1 + 8) / (v4 * v3);
  v7 = *(a1 + 128);
  v8 = *(a1 + 132);
  v9 = *(a1 + 112);
  v10 = *(a1 + 116);
  v11 = *(a1 + 120);
  v12 = *(a1 + 124);
  v13 = (v3 + 2 * v7 - v9) / v11 + 1;
  v14 = (v4 + 2 * v8 - v10) / v12 + 1;
  in_desc.width = v3;
  in_desc.height = v4;
  v15 = v6;
  in_desc.channels = v6;
  in_desc.row_stride = v3;
  in_desc.image_stride = v4 * v3;
  in_desc.data_type = BNNSDataTypeFloat32;
  *&in_desc.data_scale = 1065353216;
  out_desc.width = v13;
  out_desc.height = v14;
  v16 = v5 / (v14 * v13);
  v17 = v16;
  out_desc.channels = v16;
  out_desc.row_stride = v13;
  out_desc.image_stride = v14 * v13;
  out_desc.data_type = BNNSDataTypeFloat32;
  *&out_desc.data_scale = 1065353216;
  memset(&layer_params.weights.data_bias, 0, 96);
  layer_params.x_stride = v11;
  layer_params.y_stride = v12;
  layer_params.x_padding = v7;
  layer_params.y_padding = v8;
  layer_params.k_width = v9;
  layer_params.k_height = v10;
  layer_params.in_channels = v6;
  layer_params.out_channels = v16;
  layer_params.weights.data_type = BNNSDataTypeInt8;
  layer_params.weights.data = kaldi::QuantizedMatrixBase<signed char>::Data(*(a1 + 184));
  v18 = *(a1 + 184);
  v19 = *(a1 + 192);
  v20 = *(v18 + 12);
  layer_params.bias.data_type = BNNSDataTypeFloat32;
  layer_params.weights.data_scale = 1.0 / v20;
  layer_params.weights.data_bias = 0.0;
  layer_params.weights.data_table = 0;
  v21 = *(v19 + 8);
  *&layer_params.bias.data_scale = 1065353216;
  layer_params.bias.data = v21;
  layer_params.bias.data_table = 0;
  layer_params.activation.function = BNNSActivationFunctionIdentity;
  v22 = kaldi::QuantizedMatrixBase<short>::NumCols(v18);
  if (v10 * v9 * v15 * v17 != kaldi::QuantizedMatrixBase<short>::NumRows(*(a1 + 184)) * v22)
  {
    kaldi::KaldiAssertFailure_("UpdateBNNSFilter", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 0x452, "filters_->NumCols() * filters_->NumRows() == (bp.k_width * bp.k_height * bp.in_channels * bp.out_channels)", v23);
  }

  v24 = kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 184));
  if (v24 == kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 184)))
  {
    filter_params = *ymmword_1C378B920;
    result = BNNSFilterCreateConvolutionLayer(&in_desc, &out_desc, &layer_params, &filter_params);
    *(a1 + 152) = result;
  }

  else
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiLogMessage::KaldiLogMessage(&filter_params, "UpdateBNNSFilter", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 1109);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&filter_params, "Unsupported BNNS filter weight arrangement", 42);
      kaldi::KaldiLogMessage::~KaldiLogMessage(&filter_params);
    }

    memset(&v30, 0, sizeof(v30));
    v27 = kaldi::QuantizedMatrixBase<short>::NumRows(*(a1 + 184));
    v28 = kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 184));
    kaldi::Matrix<float>::Matrix(v29, v27, v28, 1, 1);
    kaldi::MatrixBase<float>::CopyFromMat<signed char>(v29, *(a1 + 184), 111);
    LODWORD(v27) = kaldi::MatrixBase<float>::NumCols(v29);
    if (v27 != kaldi::MatrixBase<float>::Stride(v29) && (kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiLogMessage::KaldiLogMessage(&filter_params, "UpdateBNNSFilter", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 1115);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&filter_params, "It did not work", 15);
      kaldi::KaldiLogMessage::~KaldiLogMessage(&filter_params);
    }

    layer_params.weights.data = v29[0];
    *(a1 + 152) = BNNSFilterCreateConvolutionLayer(&in_desc, &out_desc, &layer_params, &v30);
    kaldi::Matrix<float>::~Matrix(v29);
    result = *(a1 + 152);
  }

  if (!result)
  {
    kaldi::KaldiAssertFailure_("UpdateBNNSFilter", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 0x46B, "bnns_filter_", v26);
  }

  return result;
}

void sub_1C30A19EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  kaldi::KaldiLogMessage::~KaldiLogMessage(va1);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::ReadData(float *a1, uint64_t *a2, int a3)
{
  if (kaldi::Peek(a2, a3) != 60)
  {
LABEL_148:
    v42 = *(a1 + 26);
    v41 = *(a1 + 27);
    if (*(a1 + 2) % (v41 * v42))
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 431);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "input_dim_ % (fmap_x_len_ * fmap_y_len_) == 0");
    }

    else
    {
      v43 = (v42 + 2 * *(a1 + 32) - *(a1 + 28)) / *(a1 + 30) + 1;
      if (!(*(a1 + 3) % (v43 + v43 * ((v41 + 2 * *(a1 + 33) - *(a1 + 29)) / *(a1 + 31)))))
      {
        operator new();
      }

      kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 433);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "output_dim_ % (out_fmap_x_len * out_fmap_y_len) == 0");
    }

    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }

  while (1)
  {
    memset(v49, 0, 24);
    kaldi::ReadToken(a2, a3, v49, v6, v7);
    if (SHIBYTE(v49[2]) < 0)
    {
      if (v49[1] != 15 || (*v49[0] == 0x61526E7261654C3CLL ? (v12 = *(v49[0] + 7) == 0x3E66656F43657461) : (v12 = 0), v11 = a1 + 34, !v12))
      {
        if (v49[1] != 19 || (*v49[0] == 0x61654C736169423CLL ? (v13 = *(v49[0] + 1) == 0x6F43657461526E72) : (v13 = 0), v13 ? (v14 = *(v49[0] + 11) == 0x3E66656F43657461) : (v14 = 0), v11 = a1 + 35, !v14))
        {
          if (v49[1] != 9)
          {
            if (v49[1] == 18)
            {
              v15 = *v49[0] == 0x6E6569646172473CLL && *(v49[0] + 1) == 0x7079546D726F4E74;
              if (v15 && *(v49[0] + 8) == 15973)
              {
LABEL_82:
                __p[0] = 0;
                __p[1] = 0;
                v48 = 0;
                kaldi::ReadToken(a2, a3, __p, v8, v9);
                *(a1 + 36) = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
                if (SHIBYTE(v48) < 0)
                {
                  operator delete(__p[0]);
                }

                goto LABEL_145;
              }
            }

LABEL_40:
            if (v49[1] == 10)
            {
              v18 = *v49[0] == 0x654C5870616D463CLL && *(v49[0] + 4) == 15982;
              v19 = (a1 + 26);
              if (v18)
              {
                goto LABEL_144;
              }

              v20 = *v49[0] == 0x654C5970616D463CLL && *(v49[0] + 4) == 15982;
              v19 = (a1 + 27);
              if (v20)
              {
                goto LABEL_144;
              }

              v28 = *v49[0] == 0x654C58746C69463CLL && *(v49[0] + 4) == 15982;
              v19 = (a1 + 28);
              if (v28)
              {
                goto LABEL_144;
              }

              if ((HIBYTE(v49[2]) & 0x80) == 0)
              {
                if (HIBYTE(v49[2]) != 6)
                {
                  if (HIBYTE(v49[2]) != 11)
                  {
                    if (HIBYTE(v49[2]) == 10)
                    {
                      goto LABEL_118;
                    }

                    goto LABEL_143;
                  }

LABEL_99:
                  v29 = v49[0] == 0x745358746C69463CLL && *(v49 + 3) == 0x3E7065745358746CLL;
                  v19 = (a1 + 30);
                  if (v29)
                  {
                    goto LABEL_144;
                  }

LABEL_103:
                  v30 = v49[0] == 0x745359746C69463CLL && *(v49 + 3) == 0x3E7065745359746CLL;
                  v19 = (a1 + 31);
                  if (v30)
                  {
                    goto LABEL_144;
                  }

                  goto LABEL_143;
                }

                goto LABEL_132;
              }

              v31 = *v49[0] == 0x654C59746C69463CLL && *(v49[0] + 4) == 15982;
              v19 = (a1 + 29);
              if (v31)
              {
                goto LABEL_144;
              }
            }

            if (v49[1] == 11)
            {
              v34 = *v49[0] == 0x745358746C69463CLL && *(v49[0] + 3) == 0x3E7065745358746CLL;
              v19 = (a1 + 30);
              if (v34)
              {
                goto LABEL_144;
              }

              if ((HIBYTE(v49[2]) & 0x80) == 0)
              {
                if (HIBYTE(v49[2]) != 6)
                {
                  if (HIBYTE(v49[2]) != 11)
                  {
                    goto LABEL_143;
                  }

                  goto LABEL_103;
                }

LABEL_132:
                v35 = v49;
LABEL_139:
                v37 = *v35;
                v38 = *(v35 + 2);
                v39 = v37 == 1684099132 && v38 == 15960;
                v19 = (a1 + 32);
                if (!v39)
                {
                  goto LABEL_143;
                }

                goto LABEL_144;
              }

              v36 = *v49[0] == 0x745359746C69463CLL && *(v49[0] + 3) == 0x3E7065745359746CLL;
              v19 = (a1 + 31);
              if (v36)
              {
                goto LABEL_144;
              }
            }

            if (v49[1] != 6)
            {
              goto LABEL_143;
            }

            v35 = v49[0];
            goto LABEL_139;
          }

          v17 = *v49[0] == 0x6461724778614D3CLL && *(v49[0] + 8) == 62;
          v11 = a1 + 37;
          if (!v17)
          {
            goto LABEL_40;
          }
        }
      }
    }

    else if (HIBYTE(v49[2]) <= 0xAu)
    {
      if (HIBYTE(v49[2]) == 6)
      {
        goto LABEL_132;
      }

      if (HIBYTE(v49[2]) != 9)
      {
        if (HIBYTE(v49[2]) == 10)
        {
          v21 = v49[0] == 0x654C5870616D463CLL && LOWORD(v49[1]) == 15982;
          v19 = (a1 + 26);
          if (!v21)
          {
            v22 = v49[0] == 0x654C5970616D463CLL && LOWORD(v49[1]) == 15982;
            v19 = (a1 + 27);
            if (!v22)
            {
              v32 = v49[0] == 0x654C58746C69463CLL && LOWORD(v49[1]) == 15982;
              v19 = (a1 + 28);
              if (!v32)
              {
LABEL_118:
                v33 = v49[0] == 0x654C59746C69463CLL && LOWORD(v49[1]) == 15982;
                v19 = (a1 + 29);
                if (!v33)
                {
                  goto LABEL_143;
                }
              }
            }
          }

LABEL_144:
          kaldi::ReadBasicType<int>(a2, a3, v19);
          goto LABEL_145;
        }

LABEL_143:
        v40 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v49, "<PadY>");
        v19 = (a1 + 33);
        if (!v40)
        {
          kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 417);
          v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "unrecognized config token ", 26);
          if (SHIBYTE(v49[2]) >= 0)
          {
            v45 = v49;
          }

          else
          {
            v45 = v49[0];
          }

          if (SHIBYTE(v49[2]) >= 0)
          {
            v46 = HIBYTE(v49[2]);
          }

          else
          {
            v46 = v49[1];
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, v45, v46);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
        }

        goto LABEL_144;
      }

      v27 = v49[0] == 0x6461724778614D3CLL && LOBYTE(v49[1]) == 62;
      v11 = a1 + 37;
      if (!v27)
      {
        goto LABEL_143;
      }
    }

    else if (HIBYTE(v49[2]) > 0x11u)
    {
      if (HIBYTE(v49[2]) == 18)
      {
        if (v49[0] == 0x6E6569646172473CLL && v49[1] == 0x7079546D726F4E74 && LOWORD(v49[2]) == 15973)
        {
          goto LABEL_82;
        }

        goto LABEL_143;
      }

      if (HIBYTE(v49[2]) != 19)
      {
        goto LABEL_143;
      }

      v23 = v49[0] == 0x61654C736169423CLL && v49[1] == 0x6F43657461526E72;
      v24 = v23 && *(&v49[1] + 3) == 0x3E66656F43657461;
      v11 = a1 + 35;
      if (!v24)
      {
        goto LABEL_143;
      }
    }

    else
    {
      if (HIBYTE(v49[2]) == 11)
      {
        goto LABEL_99;
      }

      if (HIBYTE(v49[2]) != 15)
      {
        goto LABEL_143;
      }

      v10 = v49[0] == 0x61526E7261654C3CLL && *(v49 + 7) == 0x3E66656F43657461;
      v11 = a1 + 34;
      if (!v10)
      {
        goto LABEL_143;
      }
    }

    kaldi::ReadBasicType<float>(a2, a3, v11);
LABEL_145:
    if (SHIBYTE(v49[2]) < 0)
    {
      operator delete(v49[0]);
    }

    if (kaldi::Peek(a2, a3) != 60)
    {
      goto LABEL_148;
    }
  }
}

uint64_t kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::WriteConfig(unsigned int *a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>", a4, a5);
  v8 = a1[34];
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<BiasLearnRateCoef>", v9, v10);
  v11 = a1[35];
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>", v12, v13);
  kaldi::nnet1::Component::TypeToMarker(a1[36], &__p);
  kaldi::WriteToken(a2, a3, &__p, v14, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>", v16, v17);
  v18 = a1[37];
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<FmapXLen>", v19, v20);
  kaldi::WriteBasicType<int>(a2, a3, a1[26]);
  kaldi::WriteToken(a2, a3, "<FmapYLen>", v21, v22);
  kaldi::WriteBasicType<int>(a2, a3, a1[27]);
  kaldi::WriteToken(a2, a3, "<FiltXLen>", v23, v24);
  kaldi::WriteBasicType<int>(a2, a3, a1[28]);
  kaldi::WriteToken(a2, a3, "<FiltYLen>", v25, v26);
  kaldi::WriteBasicType<int>(a2, a3, a1[29]);
  kaldi::WriteToken(a2, a3, "<FiltXStep>", v27, v28);
  kaldi::WriteBasicType<int>(a2, a3, a1[30]);
  kaldi::WriteToken(a2, a3, "<FiltYStep>", v29, v30);
  kaldi::WriteBasicType<int>(a2, a3, a1[31]);
  kaldi::WriteToken(a2, a3, "<PadX>", v31, v32);
  kaldi::WriteBasicType<int>(a2, a3, a1[32]);
  kaldi::WriteToken(a2, a3, "<PadY>", v33, v34);
  return kaldi::WriteBasicType<int>(a2, a3, a1[33]);
}

void sub_1C30A25E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::WriteData(uint64_t a1, void *a2, int a3, int a4)
{
  (*(*a1 + 168))(a1);
  kaldi::QuantizedMatrix<signed char>::Write(*(a1 + 184), a2, a3, a4);
  v10 = *(a1 + 192);

  kaldi::CuVectorBase<float>::Write(v10, a2, a3, v8, v9);
}

_DWORD *kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::GetParams(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 0, v5, v6);
  v7 = kaldi::QuantizedMatrixBase<short>::NumRows(*(a1 + 184));
  v9 = kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 184)) * v7;
  v16 = 0;
  v17 = 0;
  if (v9 > *(a2 + 8) || (v15 = *a2, LODWORD(v16) = v9, kaldi::VectorBase<float>::CopyRowsFromMat<signed char>(&v15, *(a1 + 184)), v12 = *(a1 + 192), v13 = v12[4], v16 = 0, v17 = 0, v13 + v9 > *(a2 + 8)))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v8);
  }

  v15 = (*a2 + 4 * v9);
  LODWORD(v16) = v13;
  return kaldi::CuVectorBase<float>::CopyToVec<float>(v12, &v15, v10, v11, v8);
}

_DWORD *kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::SetParams(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 != (*(*a1 + 176))(a1))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v14, "SetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 524);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v14, "wei_src.Dim() == NumParams()");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v14);
  }

  v5 = kaldi::QuantizedMatrixBase<short>::NumRows(*(a1 + 184));
  v7 = kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 184)) * v5;
  v8 = *(a1 + 184);
  v15 = 0;
  v16 = 0;
  if (v7 > *(a2 + 8) || (v14 = *a2, LODWORD(v15) = v7, kaldi::QuantizedMatrixBase<signed char>::CopyRowsFromVec(v8, &v14), v11 = *(a1 + 192), v12 = v11[4], v15 = 0, v16 = 0, v12 + v7 > *(a2 + 8)))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v6);
  }

  v14 = (*a2 + 4 * v7);
  LODWORD(v15) = v12;
  return kaldi::CuVectorBase<float>::CopyFromVec<float>(v11, &v14, v9, v10, v6);
}

float kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::SumParams(uint64_t a1)
{
  v2 = kaldi::QuantizedMatrixBase<signed char>::Sum(*(a1 + 184));
  v3 = *&v2;
  v4 = kaldi::CuVectorBase<float>::Sum(*(a1 + 192));
  return v3 + *&v4;
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::PerturbParams(uint64_t a1)
{
  v2 = kaldi::QuantizedMatrixBase<short>::NumRows(*(a1 + 184));
  v3 = kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 184));
  kaldi::CuMatrix<float>::CuMatrix(v5, v2, v3, 1u, 0, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v5);
  v4 = *(a1 + 184);
  kaldi::QuantizedMatrixBase<signed char>::AddMat();
}

uint64_t sub_1C30A29B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v7 = *(*(v5 + 192) + 16);
  v13[0] = &unk_1F42BFF70;
  memset(&v13[1], 0, 24);
  kaldi::CuVector<float>::Resize(v13, v7, 1u, a4, a5);
  kaldi::CuVectorBase<float>::SetRandn(v13);
  LODWORD(v8) = v6;
  kaldi::CuVectorBase<float>::AddVec(*(v5 + 192), v13, v9, v10, v11, v8, 1.0);
  kaldi::CuVector<float>::~CuVector(v13);
  return kaldi::CuMatrix<float>::~CuMatrix(&v14);
}

void sub_1C30A2A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::Info(uint64_t a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v37);
  (*(*a1 + 168))(a1, &v37, 0);
  v2 = *(a1 + 104);
  v3 = *(a1 + 108);
  v4 = *(a1 + 128);
  v5 = *(a1 + 132);
  v6 = *(a1 + 112);
  v7 = *(a1 + 116);
  v8 = *(a1 + 120);
  v9 = *(a1 + 124);
  v10 = *(a1 + 8);
  v32 = *(a1 + 12);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, " OutSizeX:", 10);
  v12 = (v2 + 2 * v4 - v6) / v8 + 1;
  v13 = MEMORY[0x1C692A960](v11, v12);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " OutSizeY:", 10);
  v15 = (v3 + 2 * v5 - v7) / v9 + 1;
  v16 = MEMORY[0x1C692A960](v14, v15);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " InFmaps:", 9);
  v18 = MEMORY[0x1C692A960](v17, (v10 / (v3 * v2)));
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " OutFmaps:", 10);
  MEMORY[0x1C692A960](v19, (v32 / (v15 * v12)));
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "\n filters: ", 11);
  kaldi::nnet1::MomentStatistics<signed char>(*(a1 + 184));
  if ((v36 & 0x80u) == 0)
  {
    v21 = v35;
  }

  else
  {
    v21 = v35[0];
  }

  if ((v36 & 0x80u) == 0)
  {
    v22 = v36;
  }

  else
  {
    v22 = v35[1];
  }

  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v21, v22);
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "\n bias: ", 8);
  kaldi::nnet1::MomentStatistics<float>(*(a1 + 192), v25, v26, v27, v28);
  if ((v34 & 0x80u) == 0)
  {
    v29 = __p;
  }

  else
  {
    v29 = __p[0];
  }

  if ((v34 & 0x80u) == 0)
  {
    v30 = v34;
  }

  else
  {
    v30 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v29, v30);
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  std::stringbuf::str();
  v37 = *MEMORY[0x1E69E54E8];
  *(&v37 + *(v37 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v38 = MEMORY[0x1E69E5548] + 16;
  if (v40 < 0)
  {
    operator delete(v39[7].__locale_);
  }

  v38 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v39);
  std::ostream::~ostream();
  return MEMORY[0x1C692AD30](&v41);
}

void sub_1C30A2D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  std::ostringstream::~ostringstream(&a23);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::InfoGradient(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v41, "\n  ");
  kaldi::nnet1::MomentStatistics<float>((a1 + 200), v4, v5, v6, v7);
  if ((v40 & 0x80u) == 0)
  {
    v8 = v39;
  }

  else
  {
    v8 = v39[0];
  }

  if ((v40 & 0x80u) == 0)
  {
    v9 = v40;
  }

  else
  {
    v9 = v39[1];
  }

  v10 = std::string::append(&v41, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v42, ", lr-coef ");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::ToString<float>((a1 + 136));
  if ((v38 & 0x80u) == 0)
  {
    v14 = v37;
  }

  else
  {
    v14 = v37[0];
  }

  if ((v38 & 0x80u) == 0)
  {
    v15 = v38;
  }

  else
  {
    v15 = v37[1];
  }

  v16 = std::string::append(&v43, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v44, "\n  bias_grad");
  v19 = *&v18->__r_.__value_.__l.__data_;
  v45.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v45.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::MomentStatistics<float>((a1 + 224), v20, v21, v22, v23);
  if ((v36 & 0x80u) == 0)
  {
    v24 = v35;
  }

  else
  {
    v24 = v35[0];
  }

  if ((v36 & 0x80u) == 0)
  {
    v25 = v36;
  }

  else
  {
    v25 = v35[1];
  }

  v26 = std::string::append(&v45, v24, v25);
  v27 = *&v26->__r_.__value_.__l.__data_;
  v46.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v46.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  v28 = std::string::append(&v46, ", lr-coef ");
  v29 = *&v28->__r_.__value_.__l.__data_;
  v47.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v47.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::ToString<float>((a1 + 140));
  if ((v34 & 0x80u) == 0)
  {
    v30 = __p;
  }

  else
  {
    v30 = __p[0];
  }

  if ((v34 & 0x80u) == 0)
  {
    v31 = v34;
  }

  else
  {
    v31 = __p[1];
  }

  v32 = std::string::append(&v47, v30, v31);
  *a2 = *v32;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (v38 < 0)
  {
    operator delete(v37[0]);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }
}

void sub_1C30A3018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v52 - 57) < 0)
  {
    operator delete(*(v52 - 80));
  }

  if (*(v52 - 89) < 0)
  {
    operator delete(*(v52 - 112));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v52 - 121) < 0)
  {
    operator delete(*(v52 - 144));
  }

  if (*(v52 - 153) < 0)
  {
    operator delete(*(v52 - 176));
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const char *a5)
{
  if (a4 || (*(a1 + 17) & 1) == 0)
  {
    kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::PropagateCpu(a1, a2, a3, a4);
  }

  else
  {
    kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::PropagateBNNS(a1, a2, a3, 0, a5);
  }
}

uint64_t kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::PropagateBNNS(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const char *a5)
{
  v5 = *(a1 + 152);
  if (!v5)
  {
    kaldi::KaldiAssertFailure_("PropagateBNNS", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 0x472, "bnns_filter_", a5);
  }

  if (a4)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v8, "PropagateBNNS", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 1141);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v8, "BNNS only supports one batch");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v8);
  }

  result = BNNSFilterApplyBatch(v5, *(a2 + 20), *(a2 + 8), *(a2 + 24), *(a3 + 8), *(a3 + 24));
  if (result)
  {
    kaldi::KaldiAssertFailure_("PropagateBNNS", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 0x479, "ret == 0", v7);
  }

  return result;
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::PropagateCpu(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *(a1 + 104);
  v8 = *(a1 + 108);
  v9 = (v7 + 2 * *(a1 + 128) - *(a1 + 112)) / *(a1 + 120);
  v10 = (v8 + 2 * *(a1 + 132) - *(a1 + 116)) / *(a1 + 124);
  v65 = (v10 + 1);
  v62 = (v9 + 1);
  v11 = *(a1 + 8);
  v69 = v65 * v62;
  v66 = (*(a1 + 12) / (v65 * v62));
  if (kaldi::QuantizedMatrixBase<short>::NumRows(*(a1 + 184)) != v66)
  {
    kaldi::KaldiAssertFailure_("PropagateCpu", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 0x490, "num_filters == num_output_fmaps", v13);
  }

  v14 = *(a2 + 20);
  v15 = *(a1 + 296);
  v16 = *(a1 + 80);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 304) - v15) >> 3) < v16)
  {
    std::vector<std::vector<kaldi::CuMatrix<float>>>::resize(a1 + 296, v16);
    v15 = *(a1 + 296);
  }

  v63 = v10;
  v64 = v9;
  v71 = a4;
  v17 = (v15 + 24 * a4);
  if (0xAAAAAAAAAAAAAAABLL * ((v17[1] - *v17) >> 4) < v69)
  {
    std::vector<kaldi::CuMatrix<float>>::resize(v17, v69);
  }

  if (v69 >= 1)
  {
    v18 = 0;
    v19 = 24 * a4;
    do
    {
      v20 = *(*(a1 + 296) + v19);
      v21 = kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 184));
      kaldi::CuMatrix<float>::Resize(v20 + v18, v14, v21, 0, 0);
      v18 += 48;
    }

    while (48 * v69 != v18);
  }

  v68 = (a1 + 160);
  v22 = *(a1 + 80);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 168) - *(a1 + 160)) >> 4) < v22)
  {
    std::vector<kaldi::CuMatrix<float>>::resize(v68, v22);
  }

  v23 = *(a1 + 132);
  v24 = -v23;
  v25 = *(a1 + 108);
  v26 = *(a1 + 116);
  if (v23 + v25 - v26 >= -v23)
  {
    v46 = 0;
    v47 = *(a1 + 128);
    v48 = *(a1 + 104);
    v49 = *(a1 + 112);
    v50 = v11 / (v8 * v7);
    v70 = a2;
    do
    {
      v51 = -v47;
      if (v47 + v48 - v49 >= -v47)
      {
        v52 = v46;
        do
        {
          v72 = v52;
          __p = 0;
          v74 = 0uLL;
          if (v50 >= 1)
          {
            v53 = 0;
            v54 = v48 * v24;
            v55 = *(a1 + 116);
            v56 = v51 + v54;
            do
            {
              if (v55 >= 1)
              {
                for (i = 0; i < v55; ++i)
                {
                  if (v49 >= 1)
                  {
                    v58 = 0;
                    v59 = i + v24;
                    do
                    {
                      v60 = *(a1 + 104);
                      v61 = *(a1 + 108);
                      v77 = v56 + v58 + v60 * (i + v53 * v61);
                      if (v59 < 0 || v59 >= v61 || v51 + v58 < 0 || v51 + v58 >= v60)
                      {
                        v76 = -1;
                        std::vector<int>::push_back[abi:ne200100](&__p, &v76);
                      }

                      else
                      {
                        std::vector<int>::push_back[abi:ne200100](&__p, &v77);
                      }

                      ++v58;
                      v49 = *(a1 + 112);
                    }

                    while (v58 < v49);
                    v55 = *(a1 + 116);
                  }
                }
              }

              ++v53;
            }

            while (v53 != v50);
          }

          kaldi::CuMatrixBase<float>::CopyCols(*(*(a1 + 296) + 24 * v71) + 48 * v72, v70, &__p, v12, v13);
          if (__p)
          {
            *&v74 = __p;
            operator delete(__p);
          }

          v52 = v72 + 1;
          v51 += *(a1 + 120);
          v48 = *(a1 + 104);
          v47 = *(a1 + 128);
          v49 = *(a1 + 112);
        }

        while (v51 <= v47 + v48 - v49);
        v25 = *(a1 + 108);
        v23 = *(a1 + 132);
        v46 = v72 + 1;
        v26 = *(a1 + 116);
      }

      v24 += *(a1 + 124);
    }

    while (v24 <= v23 + v25 - v26);
  }

  kaldi::CuMatrix<float>::Resize(*v68 + 48 * v71, *(a3 + 20), *(a3 + 16), 3u, 0);
  if (v69 >= 1)
  {
    v27 = 0;
    v28 = 0;
    do
    {
      v29 = *(a1 + 160) + 48 * v71;
      kaldi::CuSubMatrix<float>::CuSubMatrix(&__p, v29, 0, *(v29 + 20), v28, v66);
      kaldi::CuMatrixBase<float>::AddVecToRows(&__p, *(a1 + 192), v30, v31, v32, 1.0, 0.0);
      kaldi::CuMatrixBase<float>::AddMatMat<signed char>(&__p, *(*(a1 + 296) + 24 * v71) + v27, 111, *(a1 + 184), 0x70, 1.0, 1.0);
      __p = &unk_1F42BFE90;
      v74 = 0u;
      v75 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&__p);
      v28 = (v28 + v66);
      v27 += 48;
    }

    while (48 * v69 != v27);
  }

  std::vector<int>::vector[abi:ne200100](&__p, *(a1 + 12));
  if (v66 >= 1)
  {
    v35 = 0;
    v36 = vdupq_n_s64(v62 - 1);
    v37 = vdupq_n_s64(4uLL);
    v38 = 8;
    do
    {
      if ((v63 & 0x80000000) == 0)
      {
        v39 = 0;
        v40 = __p + v38;
        v41 = v35;
        do
        {
          if ((v64 & 0x80000000) == 0)
          {
            v42 = v40;
            v33 = (v62 + 3) & 0xFFFFFFFC;
            LODWORD(v34) = v41;
            v43 = xmmword_1C378AF00;
            v44 = xmmword_1C378AEF0;
            do
            {
              v45 = vmovn_s64(vcgeq_u64(v36, v43));
              if (vuzp1_s16(v45, *v36.i8).u8[0])
              {
                *(v42 - 2) = v34;
              }

              if (vuzp1_s16(v45, *&v36).i8[2])
              {
                *(v42 - 1) = v66 + v34;
              }

              if (vuzp1_s16(*&v36, vmovn_s64(vcgeq_u64(v36, *&v44))).i32[1])
              {
                *v42 = 2 * v66 + v34;
                v42[1] = 3 * v66 + v34;
              }

              v44 = vaddq_s64(v44, v37);
              v43 = vaddq_s64(v43, v37);
              v34 = (v34 + 4 * v66);
              v42 += 4;
              v33 -= 4;
            }

            while (v33);
          }

          ++v39;
          v41 += v66 * v62;
          v40 += 4 * v62;
        }

        while (v39 != v65);
      }

      ++v35;
      v38 += 4 * v65 * v62;
    }

    while (v35 != v66);
  }

  kaldi::CuMatrixBase<float>::CopyCols(a3, *v68 + 48 * v71, &__p, v33, v34);
  if (__p)
  {
    *&v74 = __p;
    operator delete(__p);
  }
}

void sub_1C30A37C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::BackpropagateCpu(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = (*(a1 + 104) + 2 * *(a1 + 128) - *(a1 + 112)) / *(a1 + 120);
  v11 = (v10 + 1);
  v12 = (*(a1 + 108) + 2 * *(a1 + 132) - *(a1 + 116)) / *(a1 + 124);
  v13 = (v12 + 1);
  v14 = v13 * v11;
  v35 = *(a1 + 8);
  v15 = (*(a1 + 12) / (v13 * v11));
  if (kaldi::QuantizedMatrixBase<short>::NumRows(*(a1 + 184)) == v15)
  {
    v17 = *(a2 + 20);
    kaldi::CuMatrix<float>::Resize(*(a1 + 160) + 48 * a6, *(a4 + 20), *(a4 + 16), 3u, 0);
    std::vector<int>::vector[abi:ne200100](&v38, *(a1 + 12));
    if (v15 >= 1)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = vdupq_n_s64(v11 - 1);
      v24 = 12 * v15;
      v25 = 8 * v15;
      v26 = vdupq_n_s64(4uLL);
      v27 = 4 * v15;
      do
      {
        if ((v12 & 0x80000000) == 0)
        {
          v28 = 0;
          v29 = v38;
          v30 = v21;
          do
          {
            if ((v10 & 0x80000000) == 0)
            {
              v18 = 0;
              v19 = v29;
              v31 = xmmword_1C378AF00;
              v32 = xmmword_1C378AEF0;
              do
              {
                v33 = vmovn_s64(vcgeq_u64(v23, v31));
                if (vuzp1_s16(v33, *v23.i8).u8[0])
                {
                  *&v19[v20] = v30 + v18;
                }

                if (vuzp1_s16(v33, *&v23).i8[2])
                {
                  *&v19[v27] = v30 + v18 + 1;
                }

                if (vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v23, *&v32))).i32[1])
                {
                  *&v19[v25] = v30 + v18 + 2;
                  *&v19[v24] = v30 + v18 + 3;
                }

                v18 += 4;
                v32 = vaddq_s64(v32, v26);
                v31 = vaddq_s64(v31, v26);
                v19 += 16 * v15;
              }

              while (((v10 + 4) & 0xFFFFFFFC) != v18);
            }

            ++v28;
            v29 += 4 * v15 * v11;
            v30 += v10 + 1;
          }

          while (v28 != v13);
        }

        ++v22;
        v24 += 4;
        v21 += v14;
        v25 += 4;
        v27 += 4;
        v20 += 4;
      }

      while (v22 != v15);
    }

    kaldi::CuMatrixBase<float>::CopyCols(*(a1 + 160) + 48 * a6, a4, &v38, v18, v19);
    std::vector<kaldi::CuSubMatrix<float>>::vector[abi:ne200100](v37, v14);
    v34 = *(a1 + 24);
    if (a6 < ((*(a1 + 32) - v34) >> 3))
    {
      kaldi::CuWorkspace::GetChildWorkspace(*(v34 + 8 * a6), -1);
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v36, "BackpropagateCpu", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 1348);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, "Convolutional2DComponent needs workspace set to perform back-propagation", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v36);
  }

  kaldi::KaldiAssertFailure_("BackpropagateCpu", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 0x533, "num_filters == num_output_fmaps", v16);
}

void sub_1C30A3E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20)
{
  a20 = (v20 - 136);
  std::vector<kaldi::CuSubMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a20);
  v22 = *(v20 - 112);
  if (v22)
  {
    *(v20 - 104) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::SetGradientNormalization(uint64_t result, int a2, float a3)
{
  *(result + 148) = a3;
  *(result + 144) = a2;
  *(result + 344) = 0;
  return result;
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::NormalizeGradients(uint64_t a1, int a2, uint64_t a3, uint64_t a4, const char *a5, float a6)
{
  v7 = a6;
  v9 = *(a1 + 144);
  if (v9 == 3)
  {
    if (a6 >= 0.0 && a6 <= 1.0)
    {
      kaldi::nnet1::UpdatableComponent::RmspropGradient(*(*(a1 + 200) + 8 * a2), *(a1 + 248) + 48 * a2, a6);
      v16 = *(*(a1 + 224) + 8 * a2);
      v17 = *(a1 + 272) + 32 * a2;

      kaldi::nnet1::UpdatableComponent::RmspropGradient(v16, v17, v7, v13, v14, v15);
    }
  }

  else if (v9 == 2)
  {
    if (a6 > 0.0)
    {
      v11 = a2;
      if (*(a1 + 84))
      {
        v7 = *(*(a1 + 320) + 4 * a2) * a6;
      }

      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(*(*(a1 + 200) + 8 * a2), (*(a1 + 248) + 48 * a2), v7, a3, a4, a5);
      v21 = *(*(a1 + 224) + 8 * v11);
      v22 = (*(a1 + 272) + 32 * v11);

      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v21, v22, v18, v19, v20, v7);
    }
  }

  else if (v9 == 1 && a6 > 0.0)
  {
    v10 = a2;
    if (*(a1 + 84))
    {
      v7 = *(*(a1 + 320) + 4 * a2) * a6;
    }

    kaldi::nnet1::UpdatableComponent::ClipGradient(*(*(a1 + 200) + 8 * a2), v7);
    v23 = *(*(a1 + 224) + 8 * v10);

    kaldi::nnet1::UpdatableComponent::ClipGradient(v23, v7);
  }
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::EnsureCorrs(a1);

  kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::AccumGradientsCpu(a1, a2, a3, a4, a5);
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::EnsureCorrs(uint64_t a1)
{
  if ((*(a1 + 344) & 1) == 0)
  {
    v2 = *(a1 + 144);
    v3 = *(a1 + 80);
    if (v3 > 1)
    {
      v4 = (v3 + 1);
    }

    else
    {
      v4 = 1;
    }

    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 200), v4);
    std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::resize((a1 + 224), v4);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 248), v4);
    std::vector<kaldi::CuVector<float>>::resize((a1 + 272), v4, v5, v6, v7);
    if (v4 >= 1)
    {
      kaldi::QuantizedMatrixBase<short>::NumRows(*(a1 + 184));
      kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 184));
      operator new();
    }

    std::vector<float>::resize((a1 + 320), v4);
    *(a1 + 344) = 1;
  }
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::AccumGradientsCpu(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = (*(a1 + 104) + 2 * *(a1 + 128) - *(a1 + 112)) / *(a1 + 120) + 1;
  v10 = v9 + v9 * ((*(a1 + 108) + 2 * *(a1 + 132) - *(a1 + 116)) / *(a1 + 124));
  v11 = *(a1 + 12) / v10;
  if (kaldi::QuantizedMatrixBase<short>::NumRows(*(a1 + 184)) != v11)
  {
    kaldi::KaldiAssertFailure_("AccumGradientsCpu", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 0x2D6, "num_filters == num_output_fmaps", v12);
  }

  *(*(a1 + 320) + 4 * a5) = *(a2 + 20);
  v13 = *(*(a1 + 200) + 8 * a5);
  *(v13 + 32) = a4;
  *(*(*(a1 + 224) + 8 * a5) + 24) = a4;
  kaldi::CuMatrixBase<float>::SetZero(v13);
  kaldi::CuVectorBase<float>::SetZero(*(*(a1 + 224) + 8 * a5));
  if (v10 >= 1)
  {
    v14 = 0;
    v15 = 0;
    v16 = 48 * v10;
    do
    {
      v17 = *(a1 + 160) + 48 * a5;
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v21, v17, 0, *(v17 + 20), v15, v11);
      kaldi::CuMatrixBase<float>::AddMatMat(*(*(a1 + 200) + 8 * a5), &v21, 112, *(*(a1 + 296) + 24 * a5) + v14, 0x6F);
      kaldi::CuVectorBase<float>::AddRowSumMat(*(*(a1 + 224) + 8 * a5), &v21, v18, v19, v20);
      v21 = &unk_1F42BFE90;
      v22 = 0u;
      v23 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v21);
      v15 = (v15 + v11);
      v14 += 48;
    }

    while (v16 != v14);
  }
}

void sub_1C30A45D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  a10 = &unk_1F42BFE90;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a10);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::UpdateWeights()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "UpdateWeights", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 767);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unsupported");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

uint64_t kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::GetGradient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(*a1 + 16))(a1);
  kaldi::CuMatrix<float>::CuMatrix(v24, *(a3 + 20), *(a3 + 16), 0, 0, 0);
  kaldi::CuMatrix<float>::CuMatrix(v23, *(a2 + 20), *(a2 + 16), 0, 0, 0);
  (*(*v8 + 112))(v8, a2, v24, 0);
  (*(*v8 + 128))(v8, a2, v24, a3, v23, 0);
  (*(*v8 + 232))(v8, a2, a3, 0, 0);
  LODWORD(a3) = kaldi::QuantizedMatrixBase<short>::NumRows(*(a1 + 184));
  v9 = kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 184)) * a3;
  kaldi::Vector<float>::Resize(a4, *(*(a1 + 192) + 16) + v9, 0, v10, v11);
  v21 = 0;
  v22 = 0;
  if (v9 > *(a4 + 8))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v14);
  }

  v20 = *a4;
  LODWORD(v21) = v9;
  kaldi::VectorBase<float>::CopyRowsFromMat(&v20, **(v8 + 200), v12, v13, v14);
  v18 = *(*(a1 + 192) + 16);
  v21 = 0;
  v22 = 0;
  if (v18 + v9 > *(a4 + 8))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v17);
  }

  v20 = (*a4 + 4 * v9);
  LODWORD(v21) = v18;
  kaldi::CuVectorBase<float>::CopyToVec<float>(**(v8 + 224), &v20, v15, v16, v17);
  (*(*v8 + 8))(v8);
  kaldi::CuMatrix<float>::~CuMatrix(v23);
  return kaldi::CuMatrix<float>::~CuMatrix(v24);
}

void sub_1C30A48C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  kaldi::CuMatrix<float>::~CuMatrix(va1);
  _Unwind_Resume(a1);
}

float kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::GetNormalizedLearningRate(uint64_t a1, int a2)
{
  if ((*(a1 + 84) & 1) == 0)
  {
    return *(a1 + 56);
  }

  v2 = *(a1 + 352);
  v3 = *(a1 + 360) - v2;
  if (!v3)
  {
    return NAN;
  }

  v4 = v3 >> 2;
  if (v4 <= a2)
  {
    return NAN;
  }

  v5 = v4 - 1;
  if (a2 >= 0)
  {
    v5 = a2;
  }

  return *(v2 + 4 * v5);
}

uint64_t kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::CountZeroCorr(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::EnsureCorrs(a1);
  v6 = *(*(a1 + 192) + 16);
  v7 = kaldi::QuantizedMatrixBase<short>::NumRows(*(a1 + 184));
  result = kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 184));
  *a3 = v6 + result * v7;
  v9 = *(a1 + 200);
  v10 = *(a1 + 208) - v9;
  if (v10 && (v11 = *(a1 + 232) - *(a1 + 224)) != 0)
  {
    v12 = v10 >> 3;
    v13 = v11 >> 3;
    v14 = *(a1 + 80);
    if (v14 == 1)
    {
      v14 = 0;
    }

    v15 = v14;
    v16 = v13 - 1;
    if (v12 - 1 != v14 || v16 != v14)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "CountZeroCorr", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 218);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Unexpected mismatch in indexes: ", 32);
      v21 = MEMORY[0x1C692A960](v20, v15);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "  ", 2);
      v23 = MEMORY[0x1C692A980](v22, ((*(a1 + 208) - *(a1 + 200)) >> 3) - 1);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "  ", 2);
      MEMORY[0x1C692A980](v24, ((*(a1 + 232) - *(a1 + 224)) >> 3) - 1);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v25);
    }

    v18 = kaldi::CuMatrixBase<float>::CountZeros(*(v9 + 8 * v14));
    result = kaldi::CuVectorBase<float>::CountZeros(*(*(a1 + 224) + 8 * v15));
    v19 = result + v18;
  }

  else
  {
    v19 = 0;
  }

  *a2 = v19;
  return result;
}

void kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::VectorizeWeightsCorrs(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v5, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 238);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, "Weights are already vectorized");
  }

  else
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiLogMessage::KaldiLogMessage(v5, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 241);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Performing vectorization of convolutional 2d component", 54);
      kaldi::KaldiLogMessage::~KaldiLogMessage(v5);
    }

    v2 = kaldi::QuantizedMatrixBase<short>::NumRows(*(a1 + 184));
    v3 = *(*(a1 + 192) + 16) + kaldi::QuantizedMatrixBase<short>::NumCols(*(a1 + 184)) * v2;
    if (v3 == (*(*a1 + 176))(a1))
    {
      v4 = *(a1 + 184);
      operator new();
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(v5, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-convolutional-2d-component.cc", 244);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, "(nlinparams + bias_->Dim()) == NumParams()");
  }

  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v5);
}

uint64_t kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::InitResidualAggregator(uint64_t a1, uint64_t *a2)
{
  kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<signed char>>::EnsureCorrs(a1);
  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, *(*(a1 + 208) - 8));
  v4 = *(*(a1 + 232) - 8);

  return kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v4);
}

double kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::Convolutional2DComponent(uint64_t a1, int a2, int a3)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = &unk_1F42CB198;
  *(a1 + 56) = xmmword_1C378B0E0;
  *(a1 + 72) = -1082130432;
  *(a1 + 76) = 0x100000003;
  *(a1 + 84) = 0;
  *(a1 + 86) = 0;
  *a1 = &unk_1F42C49E8;
  *(a1 + 88) = &unk_1F42C4B20;
  *(a1 + 96) = &unk_1F42C4B48;
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  __asm { FMOV            V1.2S, #1.0 }

  *(a1 + 136) = _D1;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 329) = 0u;
  return result;
}

uint64_t kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::Convolutional2DComponent(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F42C1850;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(a1 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
  *a1 = &unk_1F42C2E78;
  *(a1 + 48) = &unk_1F42CB198;
  v5 = *(a2 + 56);
  *(a1 + 71) = *(a2 + 71);
  *(a1 + 56) = v5;
  *a1 = &unk_1F42C49E8;
  *(a1 + 88) = &unk_1F42C4B20;
  *(a1 + 96) = &unk_1F42C4B48;
  *(a1 + 200) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  kaldi::nnet1::Convolutional2DComponent<kaldi::QuantizedMatrix<short>>::AssignMembers<kaldi::QuantizedMatrix<short>>(a1, a2);
  return a1;
}

void sub_1C30A53F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator((v10 + 376));
  v14 = *(v10 + 352);
  if (v14)
  {
    *(v10 + 360) = v14;
    operator delete(v14);
  }

  v15 = *(v10 + 320);
  if (v15)
  {
    *(v10 + 328) = v15;
    operator delete(v15);
  }

  std::vector<std::vector<kaldi::CuMatrix<float>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v16 = *(v10 + 192);
  *(v10 + 192) = 0;
  if (v16)
  {
    (*(*v16 + 16))(v16);
  }

  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100]((v10 + 184), 0);
  a10 = (v10 + 160);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v12);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(v11);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v10);
  _Unwind_Resume(a1);
}