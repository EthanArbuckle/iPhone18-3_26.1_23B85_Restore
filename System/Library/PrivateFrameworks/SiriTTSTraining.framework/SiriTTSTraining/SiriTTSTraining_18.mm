uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::NumParams(uint64_t a1)
{
  v2 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1) + 20);
  v3 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1) + 16) * v2;
  v4 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 20);
  v5 = v3 + *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 16) * v4;
  v6 = (v5 + *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1) + 16));
  if (*(a1 + 208) == 1)
  {
    v7 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 20);
    v6 = (v6 + *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 16) * v7);
  }

  if (*(a1 + 224) == 1)
  {
    v8 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 20);
    return (v6 + *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 16) * v8);
  }

  return v6;
}

_DWORD *kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::GetParams(_BYTE *a1, uint64_t a2)
{
  v4 = (*(*a1 + 208))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 0, v5, v6);
  v7 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1) + 20);
  v8 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1) + 16) * v7;
  v9 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 20);
  v11 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 16);
  v43 = 0;
  v44 = 0;
  if (v8 > *(a2 + 8))
  {
    goto LABEL_11;
  }

  v12 = v11 * v9;
  v42 = *a2;
  LODWORD(v43) = v8;
  v13 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
  kaldi::VectorBase<float>::CopyRowsFromMat(&v42, v13, v14, v15, v16);
  v43 = 0;
  v44 = 0;
  v17 = v12 + v8;
  if ((v12 + v8) > *(a2 + 8))
  {
    goto LABEL_11;
  }

  v42 = (*a2 + 4 * v8);
  LODWORD(v43) = v12;
  v18 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
  kaldi::VectorBase<float>::CopyRowsFromMat(&v42, v18, v19, v20, v21);
  if (a1[208] == 1)
  {
    v22 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 20);
    v23 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 16) * v22;
    v43 = 0;
    v44 = 0;
    v24 = v23 + v17;
    if ((v23 + v17) > *(a2 + 8))
    {
      goto LABEL_11;
    }

    v42 = (*a2 + 4 * v17);
    LODWORD(v43) = v23;
    v25 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
    kaldi::VectorBase<float>::CopyRowsFromMat(&v42, v25, v26, v27, v28);
    v17 = v24;
  }

  v29 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1) + 16);
  v43 = 0;
  v44 = 0;
  if ((v29 + v17) > *(a2 + 8))
  {
    goto LABEL_11;
  }

  v42 = (*a2 + 4 * v17);
  LODWORD(v43) = v29;
  v30 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
  result = kaldi::CuVectorBase<float>::CopyToVec<float>(v30, &v42, v31, v32, v33);
  if (a1[224] != 1)
  {
    return result;
  }

  v35 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1) + 16) + v17;
  v36 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 20);
  v37 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 16) * v36;
  v43 = 0;
  v44 = 0;
  if ((v37 + v35) > *(a2 + 8))
  {
LABEL_11:
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v10);
  }

  v42 = (*a2 + 4 * v35);
  LODWORD(v43) = v37;
  v38 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
  return kaldi::VectorBase<float>::CopyRowsFromMat(&v42, v38, v39, v40, v41);
}

void **kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::SetParams(_BYTE *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 != (*(*a1 + 208))(a1))
  {
    kaldi::KaldiAssertFailure_("SetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_1F8.size + 2, "wei_src.Dim() == NumParams()", v5);
  }

  v6 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1) + 20);
  v7 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1) + 16) * v6;
  v8 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 20);
  v9 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 16);
  v10 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
  v28 = 0;
  v29 = 0;
  if (v7 > *(a2 + 8))
  {
    goto LABEL_12;
  }

  v12 = v9 * v8;
  v27 = *a2;
  LODWORD(v28) = v7;
  kaldi::CuMatrixBase<float>::CopyRowsFromVec(v10, &v27);
  v13 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
  v28 = 0;
  v29 = 0;
  v14 = v12 + v7;
  if ((v12 + v7) > *(a2 + 8))
  {
    goto LABEL_12;
  }

  v27 = (*a2 + 4 * v7);
  LODWORD(v28) = v12;
  kaldi::CuMatrixBase<float>::CopyRowsFromVec(v13, &v27);
  if (a1[208] == 1)
  {
    v15 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 20);
    v16 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 16) * v15;
    v17 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
    v28 = 0;
    v29 = 0;
    if ((v16 + v14) > *(a2 + 8))
    {
      goto LABEL_12;
    }

    v27 = (*a2 + 4 * v14);
    LODWORD(v28) = v16;
    kaldi::CuMatrixBase<float>::CopyRowsFromVec(v17, &v27);
    v14 += v16;
  }

  v18 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
  v21 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1) + 16);
  v28 = 0;
  v29 = 0;
  if ((v21 + v14) > *(a2 + 8))
  {
    goto LABEL_12;
  }

  v27 = (*a2 + 4 * v14);
  LODWORD(v28) = v21;
  result = kaldi::CuVectorBase<float>::CopyFromVec<float>(v18, &v27, v19, v20, v11);
  if (a1[224] != 1)
  {
    return result;
  }

  v23 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1) + 16) + v14;
  v24 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 20);
  v25 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 16) * v24;
  v26 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
  v28 = 0;
  v29 = 0;
  if ((v25 + v23) > *(a2 + 8))
  {
LABEL_12:
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v11);
  }

  v27 = (*a2 + 4 * v23);
  LODWORD(v28) = v25;
  return kaldi::CuMatrixBase<float>::CopyRowsFromVec(v26, &v27);
}

float kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::SumParams(uint64_t a1)
{
  v2 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
  v7 = kaldi::CuMatrixBase<float>::Sum(v2, v3, v4, v5, v6);
  v8 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
  v13 = v7 + kaldi::CuMatrixBase<float>::Sum(v8, v9, v10, v11, v12);
  if (*(a1 + 208) == 1)
  {
    v14 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
    v13 = v13 + kaldi::CuMatrixBase<float>::Sum(v14, v15, v16, v17, v18);
  }

  if (*(a1 + 224) == 1)
  {
    v19 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
    v13 = v13 + kaldi::CuMatrixBase<float>::Sum(v19, v20, v21, v22, v23);
  }

  v24 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
  v25 = kaldi::CuVectorBase<float>::Sum(v24);
  return v13 + *&v25;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PerturbParams(uint64_t a1, float a2)
{
  v4 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1) + 20);
  v5 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
  kaldi::CuMatrix<float>::CuMatrix(v33, v4, *(v5 + 16), 1u, 0, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v33);
  v6 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
  kaldi::CuMatrixBase<float>::AddMat(v6, v33, 111, v7, v8, a2, 1.0);
  v9 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 20);
  v10 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
  kaldi::CuMatrix<float>::Resize(v33, v9, *(v10 + 16), 1u, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v33);
  v11 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
  kaldi::CuMatrixBase<float>::AddMat(v11, v33, 111, v12, v13, a2, 1.0);
  if (*(a1 + 208) == 1)
  {
    v14 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 20);
    v15 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
    kaldi::CuMatrix<float>::Resize(v33, v14, *(v15 + 16), 1u, 0);
    kaldi::CuMatrixBase<float>::SetRandn(v33);
    v16 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
    kaldi::CuMatrixBase<float>::AddMat(v16, v33, 111, v17, v18, a2, 1.0);
  }

  v19 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1) + 16);
  memset(&v32[1], 0, 24);
  v32[0] = off_277020;
  kaldi::CuVector<float>::Resize(v32, v19, 1u, v20, v21);
  kaldi::CuVectorBase<float>::SetRandn(v32);
  v22 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
  kaldi::CuVectorBase<float>::AddVec(v22, v32, v23, v24, v25, a2, 1.0);
  if (*(a1 + 224) == 1)
  {
    v26 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 20);
    v27 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
    kaldi::CuMatrix<float>::Resize(v33, v26, *(v27 + 16), 1u, 0);
    kaldi::CuMatrixBase<float>::SetRandn(v33);
    v28 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
    kaldi::CuMatrixBase<float>::AddMat(v28, v33, 111, v29, v30, a2, 1.0);
  }

  kaldi::CuVector<float>::~CuVector(v32);
  return kaldi::CuMatrix<float>::~CuMatrix(v33);
}

void sub_14EAD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::GetGradient(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(*a1 + 136))(a1);
  if (v8)
  {
    v9 = **v8;
  }

  else
  {
    v10 = 0;
  }

  (*(*v10 + 336))(v10, a2, a3, 0, 0);
  v11 = (*(*a1 + 208))(a1);
  kaldi::Vector<float>::Resize(a4, v11, 0, v12, v13);
  v14 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1) + 20);
  v15 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1) + 16) * v14;
  v16 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 20);
  v18 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 16);
  v52 = 0;
  v53 = 0;
  if (v15 > *(a4 + 8))
  {
    goto LABEL_14;
  }

  v51 = *a4;
  LODWORD(v52) = v15;
  v19 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(v10, 0);
  kaldi::Matrix<float>::Matrix<float>(&v48, v19, 111, v20, v21);
  kaldi::VectorBase<float>::CopyRowsFromMat(&v51, &v48);
  v22 = v18 * v16;
  kaldi::Matrix<float>::~Matrix(&v48);
  v49 = 0;
  v50 = 0;
  v23 = v22 + v15;
  if ((v22 + v15) > *(a4 + 8))
  {
    goto LABEL_14;
  }

  v48 = *a4 + 4 * v15;
  LODWORD(v49) = v22;
  v24 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(v10, 0);
  kaldi::VectorBase<float>::CopyRowsFromMat(&v48, v24, v25, v26, v27);
  if (a1[208] == 1)
  {
    v28 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 20);
    v29 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 16) * v28;
    v49 = 0;
    v50 = 0;
    v30 = v29 + v23;
    if ((v29 + v23) > *(a4 + 8))
    {
      goto LABEL_14;
    }

    v48 = *a4 + 4 * v23;
    LODWORD(v49) = v29;
    v31 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(v10, 0);
    kaldi::VectorBase<float>::CopyRowsFromMat(&v48, v31, v32, v33, v34);
    v23 = v30;
  }

  v35 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1) + 16);
  v49 = 0;
  v50 = 0;
  if ((v35 + v23) > *(a4 + 8))
  {
LABEL_14:
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v17);
  }

  v48 = *a4 + 4 * v23;
  LODWORD(v49) = v35;
  v36 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(v10, 0);
  kaldi::CuVectorBase<float>::CopyToVec<float>(v36, &v48, v37, v38, v39);
  if (a1[224] == 1)
  {
    v40 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1) + 16) + v23;
    v41 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 20);
    v42 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 16) * v41;
    v49 = 0;
    v50 = 0;
    if ((v42 + v40) <= *(a4 + 8))
    {
      v48 = *a4 + 4 * v40;
      LODWORD(v49) = v42;
      v43 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(v10, 0);
      kaldi::VectorBase<float>::CopyRowsFromMat(&v48, v43, v44, v45, v46);
      return (*(*v10 + 8))(v10);
    }

    goto LABEL_14;
  }

  return (*(*v10 + 8))(v10);
}

float kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::GetNormalizedLearningRate(void *a1, int a2)
{
  v2 = (a1 + *(*a1 - 24));
  if ((v2[21] & 1) == 0)
  {
    return v2[14];
  }

  v3 = a1[63];
  v4 = a1[64] - v3;
  if (!v4)
  {
    return NAN;
  }

  v5 = v4 >> 2;
  if (v5 <= a2)
  {
    return NAN;
  }

  v6 = v5 - 1;
  if (a2 >= 0)
  {
    v6 = a2;
  }

  return *(v3 + 4 * v6);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Info(uint64_t a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v50);
  (*(*a1 + 192))(a1, &v50, 0);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v50, "\n Input weights:", 16);
  v3 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
  kaldi::nnet1::MomentStatistics<float>(v3);
  if ((v49 & 0x80u) == 0)
  {
    v4 = v48;
  }

  else
  {
    v4 = v48[0];
  }

  if ((v49 & 0x80u) == 0)
  {
    v5 = v49;
  }

  else
  {
    v5 = v48[1];
  }

  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v4, v5);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "\n Recurrent weights:", 20);
  v8 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
  kaldi::nnet1::MomentStatistics<float>(v8);
  if ((v47 & 0x80u) == 0)
  {
    v9 = v46;
  }

  else
  {
    v9 = v46[0];
  }

  if ((v47 & 0x80u) == 0)
  {
    v10 = v47;
  }

  else
  {
    v10 = v46[1];
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "\n Bias:", 7);
  v13 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
  kaldi::nnet1::MomentStatistics<float>(v13, v14, v15, v16, v17);
  if ((v45 & 0x80u) == 0)
  {
    v18 = v44;
  }

  else
  {
    v18 = v44[0];
  }

  if ((v45 & 0x80u) == 0)
  {
    v19 = v45;
  }

  else
  {
    v19 = v44[1];
  }

  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v18, v19);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "\n Forget gate bias:", 19);
  v22 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
  kaldi::CuSubVector<float>::CuSubVector(&v39, v22, *(a1 + 176), *(a1 + 176), v23);
  kaldi::nnet1::MomentStatistics<float>(&v39, v24, v25, v26, v27);
  if ((v43 & 0x80u) == 0)
  {
    v28 = __p;
  }

  else
  {
    v28 = __p[0];
  }

  if ((v43 & 0x80u) == 0)
  {
    v29 = v43;
  }

  else
  {
    v29 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v28, v29);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  if (v47 < 0)
  {
    operator delete(v46[0]);
  }

  if (v49 < 0)
  {
    operator delete(v48[0]);
  }

  if (*(a1 + 208) == 1)
  {
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v50, "\n Peephole weights:", 19);
    v31 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
    kaldi::nnet1::MomentStatistics<float>(v31);
    v32 = (v41 & 0x80u) == 0 ? &v39 : v39;
    v33 = (v41 & 0x80u) == 0 ? v41 : v40;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v32, v33);
    if (v41 < 0)
    {
      operator delete(v39);
    }
  }

  if (*(a1 + 224) == 1)
  {
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v50, "\n Projection weights:", 21);
    v35 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
    kaldi::nnet1::MomentStatistics<float>(v35);
    v36 = (v41 & 0x80u) == 0 ? &v39 : v39;
    v37 = (v41 & 0x80u) == 0 ? v41 : v40;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v36, v37);
    if (v41 < 0)
    {
      operator delete(v39);
    }
  }

  std::stringbuf::str();
  if (v53 < 0)
  {
    operator delete(v52[7].__locale_);
  }

  std::locale::~locale(v52);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_14F708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a41);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InfoGradient(uint64_t a1@<X0>, boost::filesystem::path *a2@<X8>)
{
  if (*(a1 + 528))
  {
    memset(&v105, 0, sizeof(v105));
    v104 = 0;
    if (*(a1 + 80) >= 1)
    {
      do
      {
        boost::filesystem::path::path(&v92, "\n For batch ");
        kaldi::nnet1::ToString<int>(&v104);
        if ((v91 & 0x80u) == 0)
        {
          v3 = v90;
        }

        else
        {
          v3 = v90[0];
        }

        if ((v91 & 0x80u) == 0)
        {
          v4 = v91;
        }

        else
        {
          v4 = v90[1];
        }

        v5 = std::string::append(&v92, v3, v4);
        v6 = *&v5->__r_.__value_.__l.__data_;
        v93.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
        *&v93.__r_.__value_.__l.__data_ = v6;
        v5->__r_.__value_.__l.__size_ = 0;
        v5->__r_.__value_.__r.__words[2] = 0;
        v5->__r_.__value_.__r.__words[0] = 0;
        boost::filesystem::path::path(v88, ": ");
        if ((v89 & 0x80u) == 0)
        {
          v7 = v88;
        }

        else
        {
          v7 = v88[0];
        }

        if ((v89 & 0x80u) == 0)
        {
          v8 = v89;
        }

        else
        {
          v8 = v88[1];
        }

        v9 = std::string::append(&v93, v7, v8);
        v10 = *&v9->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v10;
        v9->__r_.__value_.__l.__size_ = 0;
        v9->__r_.__value_.__r.__words[2] = 0;
        v9->__r_.__value_.__r.__words[0] = 0;
        boost::filesystem::path::path(v86, "\n  Number of cells : ");
        if ((v87 & 0x80u) == 0)
        {
          v11 = v86;
        }

        else
        {
          v11 = v86[0];
        }

        if ((v87 & 0x80u) == 0)
        {
          v12 = v87;
        }

        else
        {
          v12 = v86[1];
        }

        v13 = std::string::append(&v94, v11, v12);
        v14 = *&v13->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v14;
        v13->__r_.__value_.__l.__size_ = 0;
        v13->__r_.__value_.__r.__words[2] = 0;
        v13->__r_.__value_.__r.__words[0] = 0;
        kaldi::nnet1::ToString<int>((a1 + 176));
        if ((v85 & 0x80u) == 0)
        {
          v15 = v84;
        }

        else
        {
          v15 = v84[0];
        }

        if ((v85 & 0x80u) == 0)
        {
          v16 = v85;
        }

        else
        {
          v16 = v84[1];
        }

        v17 = std::string::append(&v95, v15, v16);
        v18 = *&v17->__r_.__value_.__l.__data_;
        v96.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
        *&v96.__r_.__value_.__l.__data_ = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        boost::filesystem::path::path(v82, "\n  Input weights gradient: ");
        if ((v83 & 0x80u) == 0)
        {
          v19 = v82;
        }

        else
        {
          v19 = v82[0];
        }

        if ((v83 & 0x80u) == 0)
        {
          v20 = v83;
        }

        else
        {
          v20 = v82[1];
        }

        v21 = std::string::append(&v96, v19, v20);
        v22 = *&v21->__r_.__value_.__l.__data_;
        v97.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
        *&v97.__r_.__value_.__l.__data_ = v22;
        v21->__r_.__value_.__l.__size_ = 0;
        v21->__r_.__value_.__r.__words[2] = 0;
        v21->__r_.__value_.__r.__words[0] = 0;
        v23 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a1, v104);
        kaldi::nnet1::MomentStatistics<float>(v23);
        if ((v81 & 0x80u) == 0)
        {
          v24 = v80;
        }

        else
        {
          v24 = v80[0];
        }

        if ((v81 & 0x80u) == 0)
        {
          v25 = v81;
        }

        else
        {
          v25 = v80[1];
        }

        v26 = std::string::append(&v97, v24, v25);
        v27 = *&v26->__r_.__value_.__l.__data_;
        v98.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
        *&v98.__r_.__value_.__l.__data_ = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        boost::filesystem::path::path(v78, "\n  Recurrent weights gradient: ");
        if ((v79 & 0x80u) == 0)
        {
          v28 = v78;
        }

        else
        {
          v28 = v78[0];
        }

        if ((v79 & 0x80u) == 0)
        {
          v29 = v79;
        }

        else
        {
          v29 = v78[1];
        }

        v30 = std::string::append(&v98, v28, v29);
        v31 = *&v30->__r_.__value_.__l.__data_;
        v99.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
        *&v99.__r_.__value_.__l.__data_ = v31;
        v30->__r_.__value_.__l.__size_ = 0;
        v30->__r_.__value_.__r.__words[2] = 0;
        v30->__r_.__value_.__r.__words[0] = 0;
        v32 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a1, v104);
        kaldi::nnet1::MomentStatistics<float>(v32);
        if ((v77 & 0x80u) == 0)
        {
          v33 = v76;
        }

        else
        {
          v33 = v76[0];
        }

        if ((v77 & 0x80u) == 0)
        {
          v34 = v77;
        }

        else
        {
          v34 = v76[1];
        }

        v35 = std::string::append(&v99, v33, v34);
        v36 = *&v35->__r_.__value_.__l.__data_;
        v100.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
        *&v100.__r_.__value_.__l.__data_ = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        boost::filesystem::path::path(v74, "\n  Bias gradient: ");
        if ((v75 & 0x80u) == 0)
        {
          v37 = v74;
        }

        else
        {
          v37 = v74[0];
        }

        if ((v75 & 0x80u) == 0)
        {
          v38 = v75;
        }

        else
        {
          v38 = v74[1];
        }

        v39 = std::string::append(&v100, v37, v38);
        v40 = *&v39->__r_.__value_.__l.__data_;
        v101.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
        *&v101.__r_.__value_.__l.__data_ = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        v41 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a1, v104);
        kaldi::nnet1::MomentStatistics<float>(v41, v42, v43, v44, v45);
        if ((v73 & 0x80u) == 0)
        {
          v46 = __p;
        }

        else
        {
          v46 = __p[0];
        }

        if ((v73 & 0x80u) == 0)
        {
          v47 = v73;
        }

        else
        {
          v47 = __p[1];
        }

        v48 = std::string::append(&v101, v46, v47);
        v49 = *&v48->__r_.__value_.__l.__data_;
        v103 = v48->__r_.__value_.__r.__words[2];
        v102 = v49;
        v48->__r_.__value_.__l.__size_ = 0;
        v48->__r_.__value_.__r.__words[2] = 0;
        v48->__r_.__value_.__r.__words[0] = 0;
        if (v103 >= 0)
        {
          v50 = &v102;
        }

        else
        {
          v50 = v102;
        }

        if (v103 >= 0)
        {
          v51 = HIBYTE(v103);
        }

        else
        {
          v51 = *(&v102 + 1);
        }

        std::string::append(&v105, v50, v51);
        if (SHIBYTE(v103) < 0)
        {
          operator delete(v102);
        }

        if (v73 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v101.__r_.__value_.__l.__data_);
        }

        if (v75 < 0)
        {
          operator delete(v74[0]);
        }

        if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v100.__r_.__value_.__l.__data_);
        }

        if (v77 < 0)
        {
          operator delete(v76[0]);
        }

        if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v99.__r_.__value_.__l.__data_);
        }

        if (v79 < 0)
        {
          operator delete(v78[0]);
        }

        if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v98.__r_.__value_.__l.__data_);
        }

        if (v81 < 0)
        {
          operator delete(v80[0]);
        }

        if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v97.__r_.__value_.__l.__data_);
        }

        if (v83 < 0)
        {
          operator delete(v82[0]);
        }

        if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v96.__r_.__value_.__l.__data_);
        }

        if (v85 < 0)
        {
          operator delete(v84[0]);
        }

        if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v95.__r_.__value_.__l.__data_);
        }

        if (v87 < 0)
        {
          operator delete(v86[0]);
        }

        if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v94.__r_.__value_.__l.__data_);
        }

        if (v89 < 0)
        {
          operator delete(v88[0]);
        }

        if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v93.__r_.__value_.__l.__data_);
        }

        if (v91 < 0)
        {
          operator delete(v90[0]);
        }

        if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v92.__r_.__value_.__l.__data_);
        }

        if (*(a1 + 208) == 1)
        {
          boost::filesystem::path::path(&v101, "\n  Peephole weights gradient: ");
          v52 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a1, v104);
          kaldi::nnet1::MomentStatistics<float>(v52);
          if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v53 = &v100;
          }

          else
          {
            v53 = v100.__r_.__value_.__r.__words[0];
          }

          if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v100.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v100.__r_.__value_.__l.__size_;
          }

          v55 = std::string::append(&v101, v53, size);
          v56 = *&v55->__r_.__value_.__l.__data_;
          v103 = v55->__r_.__value_.__r.__words[2];
          v102 = v56;
          v55->__r_.__value_.__l.__size_ = 0;
          v55->__r_.__value_.__r.__words[2] = 0;
          v55->__r_.__value_.__r.__words[0] = 0;
          if (v103 >= 0)
          {
            v57 = &v102;
          }

          else
          {
            v57 = v102;
          }

          if (v103 >= 0)
          {
            v58 = HIBYTE(v103);
          }

          else
          {
            v58 = *(&v102 + 1);
          }

          std::string::append(&v105, v57, v58);
          if (SHIBYTE(v103) < 0)
          {
            operator delete(v102);
          }

          if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v100.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v101.__r_.__value_.__l.__data_);
          }
        }

        if (*(a1 + 224) == 1)
        {
          boost::filesystem::path::path(&v101, "\n  Projection weights gradient: ");
          v59 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, v104);
          kaldi::nnet1::MomentStatistics<float>(v59);
          if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v60 = &v100;
          }

          else
          {
            v60 = v100.__r_.__value_.__r.__words[0];
          }

          if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v61 = HIBYTE(v100.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v61 = v100.__r_.__value_.__l.__size_;
          }

          v62 = std::string::append(&v101, v60, v61);
          v63 = *&v62->__r_.__value_.__l.__data_;
          v103 = v62->__r_.__value_.__r.__words[2];
          v102 = v63;
          v62->__r_.__value_.__l.__size_ = 0;
          v62->__r_.__value_.__r.__words[2] = 0;
          v62->__r_.__value_.__r.__words[0] = 0;
          if (v103 >= 0)
          {
            v64 = &v102;
          }

          else
          {
            v64 = v102;
          }

          if (v103 >= 0)
          {
            v65 = HIBYTE(v103);
          }

          else
          {
            v65 = *(&v102 + 1);
          }

          std::string::append(&v105, v64, v65);
          if (SHIBYTE(v103) < 0)
          {
            operator delete(v102);
          }

          if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v100.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v101.__r_.__value_.__l.__data_);
          }
        }

        ++v104;
      }

      while (v104 < *(a1 + 80));
    }

    v66 = boost::filesystem::path::path(&v102, "\n");
    if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v67 = &v105;
    }

    else
    {
      v67 = v105.__r_.__value_.__r.__words[0];
    }

    if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v68 = HIBYTE(v105.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v68 = v105.__r_.__value_.__l.__size_;
    }

    v69 = std::string::insert(v66, 0, v67, v68);
    v70 = *&v69->__r_.__value_.__l.__data_;
    *(a2 + 2) = *(&v69->__r_.__value_.__l + 2);
    *a2 = v70;
    v69->__r_.__value_.__l.__size_ = 0;
    v69->__r_.__value_.__r.__words[2] = 0;
    v69->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v103) < 0)
    {
      operator delete(v102);
    }

    if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v105.__r_.__value_.__l.__data_);
    }
  }

  else
  {

    boost::filesystem::path::path(a2, "\n  Gradients are uninitialized");
  }
}

void sub_14FF00(_Unwind_Exception *a1)
{
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InfoPropagate(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  memset(&v89, 0, sizeof(v89));
  v88 = 0;
  if (*(a1 + 80) >= 1)
  {
    do
    {
      boost::filesystem::path::path(&v76, "\n For batch ");
      kaldi::nnet1::ToString<int>(&v88);
      if ((v75 & 0x80u) == 0)
      {
        v3 = v74;
      }

      else
      {
        v3 = v74[0];
      }

      if ((v75 & 0x80u) == 0)
      {
        v4 = v75;
      }

      else
      {
        v4 = v74[1];
      }

      v5 = std::string::append(&v76, v3, v4);
      v6 = *&v5->__r_.__value_.__l.__data_;
      v77.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
      *&v77.__r_.__value_.__l.__data_ = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      boost::filesystem::path::path(v72, ": ");
      if ((v73 & 0x80u) == 0)
      {
        v7 = v72;
      }

      else
      {
        v7 = v72[0];
      }

      if ((v73 & 0x80u) == 0)
      {
        v8 = v73;
      }

      else
      {
        v8 = v72[1];
      }

      v9 = std::string::append(&v77, v7, v8);
      v10 = *&v9->__r_.__value_.__l.__data_;
      v78.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&v78.__r_.__value_.__l.__data_ = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      boost::filesystem::path::path(v70, "\n  Gates values: ");
      if ((v71 & 0x80u) == 0)
      {
        v11 = v70;
      }

      else
      {
        v11 = v70[0];
      }

      if ((v71 & 0x80u) == 0)
      {
        v12 = v71;
      }

      else
      {
        v12 = v70[1];
      }

      v13 = std::string::append(&v78, v11, v12);
      v14 = *&v13->__r_.__value_.__l.__data_;
      v79.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v79.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 248) + 48 * v88);
      if ((v69 & 0x80u) == 0)
      {
        v15 = v68;
      }

      else
      {
        v15 = v68[0];
      }

      if ((v69 & 0x80u) == 0)
      {
        v16 = v69;
      }

      else
      {
        v16 = v68[1];
      }

      v17 = std::string::append(&v79, v15, v16);
      v18 = *&v17->__r_.__value_.__l.__data_;
      v80.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v80.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      boost::filesystem::path::path(v66, "\n  Cell values: ");
      if ((v67 & 0x80u) == 0)
      {
        v19 = v66;
      }

      else
      {
        v19 = v66[0];
      }

      if ((v67 & 0x80u) == 0)
      {
        v20 = v67;
      }

      else
      {
        v20 = v66[1];
      }

      v21 = std::string::append(&v80, v19, v20);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v81.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&v81.__r_.__value_.__l.__data_ = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 272) + 48 * v88);
      if ((v65 & 0x80u) == 0)
      {
        v23 = v64;
      }

      else
      {
        v23 = v64[0];
      }

      if ((v65 & 0x80u) == 0)
      {
        v24 = v65;
      }

      else
      {
        v24 = v64[1];
      }

      v25 = std::string::append(&v81, v23, v24);
      v26 = *&v25->__r_.__value_.__l.__data_;
      v82.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
      *&v82.__r_.__value_.__l.__data_ = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      boost::filesystem::path::path(v62, "\n  Cell outputs: ");
      if ((v63 & 0x80u) == 0)
      {
        v27 = v62;
      }

      else
      {
        v27 = v62[0];
      }

      if ((v63 & 0x80u) == 0)
      {
        v28 = v63;
      }

      else
      {
        v28 = v62[1];
      }

      v29 = std::string::append(&v82, v27, v28);
      v30 = *&v29->__r_.__value_.__l.__data_;
      v83.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&v83.__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 296) + 48 * v88);
      if ((v61 & 0x80u) == 0)
      {
        v31 = v60;
      }

      else
      {
        v31 = v60[0];
      }

      if ((v61 & 0x80u) == 0)
      {
        v32 = v61;
      }

      else
      {
        v32 = v60[1];
      }

      v33 = std::string::append(&v83, v31, v32);
      v34 = *&v33->__r_.__value_.__l.__data_;
      v84.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
      *&v84.__r_.__value_.__l.__data_ = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      boost::filesystem::path::path(v58, "\n  Cell outputs gated: ");
      if ((v59 & 0x80u) == 0)
      {
        v35 = v58;
      }

      else
      {
        v35 = v58[0];
      }

      if ((v59 & 0x80u) == 0)
      {
        v36 = v59;
      }

      else
      {
        v36 = v58[1];
      }

      v37 = std::string::append(&v84, v35, v36);
      v38 = *&v37->__r_.__value_.__l.__data_;
      v85.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
      *&v85.__r_.__value_.__l.__data_ = v38;
      v37->__r_.__value_.__l.__size_ = 0;
      v37->__r_.__value_.__r.__words[2] = 0;
      v37->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 320) + 48 * v88);
      if ((v57 & 0x80u) == 0)
      {
        v39 = __p;
      }

      else
      {
        v39 = __p[0];
      }

      if ((v57 & 0x80u) == 0)
      {
        v40 = v57;
      }

      else
      {
        v40 = __p[1];
      }

      v41 = std::string::append(&v85, v39, v40);
      v42 = *&v41->__r_.__value_.__l.__data_;
      v87 = v41->__r_.__value_.__r.__words[2];
      v86 = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      if (v87 >= 0)
      {
        v43 = &v86;
      }

      else
      {
        v43 = v86;
      }

      if (v87 >= 0)
      {
        v44 = HIBYTE(v87);
      }

      else
      {
        v44 = *(&v86 + 1);
      }

      std::string::append(&v89, v43, v44);
      if (SHIBYTE(v87) < 0)
      {
        operator delete(v86);
      }

      if (v57 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }

      if (v59 < 0)
      {
        operator delete(v58[0]);
      }

      if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v84.__r_.__value_.__l.__data_);
      }

      if (v61 < 0)
      {
        operator delete(v60[0]);
      }

      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      if (v63 < 0)
      {
        operator delete(v62[0]);
      }

      if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v82.__r_.__value_.__l.__data_);
      }

      if (v65 < 0)
      {
        operator delete(v64[0]);
      }

      if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v81.__r_.__value_.__l.__data_);
      }

      if (v67 < 0)
      {
        operator delete(v66[0]);
      }

      if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v80.__r_.__value_.__l.__data_);
      }

      if (v69 < 0)
      {
        operator delete(v68[0]);
      }

      if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v79.__r_.__value_.__l.__data_);
      }

      if (v71 < 0)
      {
        operator delete(v70[0]);
      }

      if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v78.__r_.__value_.__l.__data_);
      }

      if (v73 < 0)
      {
        operator delete(v72[0]);
      }

      if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v77.__r_.__value_.__l.__data_);
      }

      if (v75 < 0)
      {
        operator delete(v74[0]);
      }

      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v76.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 224) == 1)
      {
        boost::filesystem::path::path(&v85, "\n  Output values: ");
        kaldi::nnet1::MomentStatistics<float>(*(a1 + 344) + 48 * v88);
        if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v45 = &v84;
        }

        else
        {
          v45 = v84.__r_.__value_.__r.__words[0];
        }

        if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v84.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v84.__r_.__value_.__l.__size_;
        }

        v47 = std::string::append(&v85, v45, size);
        v48 = *&v47->__r_.__value_.__l.__data_;
        v87 = v47->__r_.__value_.__r.__words[2];
        v86 = v48;
        v47->__r_.__value_.__l.__size_ = 0;
        v47->__r_.__value_.__r.__words[2] = 0;
        v47->__r_.__value_.__r.__words[0] = 0;
        if (v87 >= 0)
        {
          v49 = &v86;
        }

        else
        {
          v49 = v86;
        }

        if (v87 >= 0)
        {
          v50 = HIBYTE(v87);
        }

        else
        {
          v50 = *(&v86 + 1);
        }

        std::string::append(&v89, v49, v50);
        if (SHIBYTE(v87) < 0)
        {
          operator delete(v86);
        }

        if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v84.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v85.__r_.__value_.__l.__data_);
        }
      }

      ++v88;
    }

    while (v88 < *(a1 + 80));
  }

  v51 = boost::filesystem::path::path(&v86, "\n");
  if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v52 = &v89;
  }

  else
  {
    v52 = v89.__r_.__value_.__r.__words[0];
  }

  if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v53 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v53 = v89.__r_.__value_.__l.__size_;
  }

  v54 = std::string::insert(v51, 0, v52, v53);
  *a2 = *v54;
  v54->__r_.__value_.__l.__size_ = 0;
  v54->__r_.__value_.__r.__words[2] = 0;
  v54->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v87) < 0)
  {
    operator delete(v86);
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }
}

void sub_1507E4(_Unwind_Exception *a1)
{
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InfoBackPropagate(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  memset(&v75, 0, sizeof(v75));
  v74 = 0;
  if (*(a1 + 80) >= 1)
  {
    do
    {
      boost::filesystem::path::path(&v64, "\n For batch ");
      kaldi::nnet1::ToString<int>(&v74);
      if ((v63 & 0x80u) == 0)
      {
        v3 = v62;
      }

      else
      {
        v3 = v62[0];
      }

      if ((v63 & 0x80u) == 0)
      {
        v4 = v63;
      }

      else
      {
        v4 = v62[1];
      }

      v5 = std::string::append(&v64, v3, v4);
      v6 = *&v5->__r_.__value_.__l.__data_;
      v65.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
      *&v65.__r_.__value_.__l.__data_ = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      boost::filesystem::path::path(v60, ": ");
      if ((v61 & 0x80u) == 0)
      {
        v7 = v60;
      }

      else
      {
        v7 = v60[0];
      }

      if ((v61 & 0x80u) == 0)
      {
        v8 = v61;
      }

      else
      {
        v8 = v60[1];
      }

      v9 = std::string::append(&v65, v7, v8);
      v10 = *&v9->__r_.__value_.__l.__data_;
      v66.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&v66.__r_.__value_.__l.__data_ = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      boost::filesystem::path::path(v58, "\n  Gates diff: ");
      if ((v59 & 0x80u) == 0)
      {
        v11 = v58;
      }

      else
      {
        v11 = v58[0];
      }

      if ((v59 & 0x80u) == 0)
      {
        v12 = v59;
      }

      else
      {
        v12 = v58[1];
      }

      v13 = std::string::append(&v66, v11, v12);
      v14 = *&v13->__r_.__value_.__l.__data_;
      v67.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v67.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 440) + 48 * v74);
      if ((v57 & 0x80u) == 0)
      {
        v15 = v56;
      }

      else
      {
        v15 = v56[0];
      }

      if ((v57 & 0x80u) == 0)
      {
        v16 = v57;
      }

      else
      {
        v16 = v56[1];
      }

      v17 = std::string::append(&v67, v15, v16);
      v18 = *&v17->__r_.__value_.__l.__data_;
      v68.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v68.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      boost::filesystem::path::path(v54, "\n  Cell diff: ");
      if ((v55 & 0x80u) == 0)
      {
        v19 = v54;
      }

      else
      {
        v19 = v54[0];
      }

      if ((v55 & 0x80u) == 0)
      {
        v20 = v55;
      }

      else
      {
        v20 = v54[1];
      }

      v21 = std::string::append(&v68, v19, v20);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v69.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&v69.__r_.__value_.__l.__data_ = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 416) + 48 * v74);
      if ((v53 & 0x80u) == 0)
      {
        v23 = v52;
      }

      else
      {
        v23 = v52[0];
      }

      if ((v53 & 0x80u) == 0)
      {
        v24 = v53;
      }

      else
      {
        v24 = v52[1];
      }

      v25 = std::string::append(&v69, v23, v24);
      v26 = *&v25->__r_.__value_.__l.__data_;
      v70.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
      *&v70.__r_.__value_.__l.__data_ = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      boost::filesystem::path::path(v50, "\n  Cell out gated diff: ");
      if ((v51 & 0x80u) == 0)
      {
        v27 = v50;
      }

      else
      {
        v27 = v50[0];
      }

      if ((v51 & 0x80u) == 0)
      {
        v28 = v51;
      }

      else
      {
        v28 = v50[1];
      }

      v29 = std::string::append(&v70, v27, v28);
      v30 = *&v29->__r_.__value_.__l.__data_;
      v71.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&v71.__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 392) + 48 * v74);
      if ((v49 & 0x80u) == 0)
      {
        v31 = __p;
      }

      else
      {
        v31 = __p[0];
      }

      if ((v49 & 0x80u) == 0)
      {
        v32 = v49;
      }

      else
      {
        v32 = __p[1];
      }

      v33 = std::string::append(&v71, v31, v32);
      v34 = *&v33->__r_.__value_.__l.__data_;
      v73 = v33->__r_.__value_.__r.__words[2];
      v72 = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      if (v73 >= 0)
      {
        v35 = &v72;
      }

      else
      {
        v35 = v72;
      }

      if (v73 >= 0)
      {
        v36 = HIBYTE(v73);
      }

      else
      {
        v36 = *(&v72 + 1);
      }

      std::string::append(&v75, v35, v36);
      if (SHIBYTE(v73) < 0)
      {
        operator delete(v72);
      }

      if (v49 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v71.__r_.__value_.__l.__data_);
      }

      if (v51 < 0)
      {
        operator delete(v50[0]);
      }

      if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v70.__r_.__value_.__l.__data_);
      }

      if (v53 < 0)
      {
        operator delete(v52[0]);
      }

      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v69.__r_.__value_.__l.__data_);
      }

      if (v55 < 0)
      {
        operator delete(v54[0]);
      }

      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
      }

      if (v57 < 0)
      {
        operator delete(v56[0]);
      }

      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__r_.__value_.__l.__data_);
      }

      if (v59 < 0)
      {
        operator delete(v58[0]);
      }

      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      if (v61 < 0)
      {
        operator delete(v60[0]);
      }

      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
      }

      if (v63 < 0)
      {
        operator delete(v62[0]);
      }

      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 224) == 1)
      {
        boost::filesystem::path::path(&v71, "\n  Output diff: ");
        kaldi::nnet1::MomentStatistics<float>(*(a1 + 368) + 48 * v74);
        if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v37 = &v70;
        }

        else
        {
          v37 = v70.__r_.__value_.__r.__words[0];
        }

        if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v70.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v70.__r_.__value_.__l.__size_;
        }

        v39 = std::string::append(&v71, v37, size);
        v40 = *&v39->__r_.__value_.__l.__data_;
        v73 = v39->__r_.__value_.__r.__words[2];
        v72 = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        if (v73 >= 0)
        {
          v41 = &v72;
        }

        else
        {
          v41 = v72;
        }

        if (v73 >= 0)
        {
          v42 = HIBYTE(v73);
        }

        else
        {
          v42 = *(&v72 + 1);
        }

        std::string::append(&v75, v41, v42);
        if (SHIBYTE(v73) < 0)
        {
          operator delete(v72);
        }

        if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v70.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v71.__r_.__value_.__l.__data_);
        }
      }

      ++v74;
    }

    while (v74 < *(a1 + 80));
  }

  v43 = boost::filesystem::path::path(&v72, "\n");
  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = &v75;
  }

  else
  {
    v44 = v75.__r_.__value_.__r.__words[0];
  }

  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v45 = HIBYTE(v75.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v45 = v75.__r_.__value_.__l.__size_;
  }

  v46 = std::string::insert(v43, 0, v44, v45);
  *a2 = *v46;
  v46->__r_.__value_.__l.__size_ = 0;
  v46->__r_.__value_.__r.__words[2] = 0;
  v46->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v73) < 0)
  {
    operator delete(v72);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }
}

void sub_150FD8(_Unwind_Exception *a1)
{
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(a1);
}

double kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const char *a5)
{
  v5 = *(a2 + 20);
  v6 = *(a1 + 96);
  v82 = v5 / v6;
  if (v5 % v6)
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_298.addr + 3, "batch_size % num_utts == 0", a5);
  }

  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v108, "PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 701, 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v108, "Running forward propagation for batch size = ", 45);
    v11 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", which contains ", 17);
    v12 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " frames each from ", 18);
    v13 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v108);
  }

  v14 = *(a3 + 32);
  (*(*a1 + 88))(a1);
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::AllocateForwardBuffers(a1, a4, v5, v14);
  v16 = *(a1 + 104);
  v17 = a4;
  v78 = a3;
  v79 = a4;
  if (*(a1 + 112) == v16 || (v18 = *(v16 + 32 * a4 + 16), v18 < 1))
  {
    v80 = 0;
  }

  else
  {
    if (v18 != v5)
    {
      kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_298.size + 5, "boundary_[batch_index].Dim() == batch_size", v15);
    }

    v19 = *(a1 + 128) + 48 * a4;
    *(v19 + 32) = v14;
    v80 = 1;
    kaldi::CuMatrix<float>::Resize(v19, v6, *(*(a1 + 8) + 48 * a4 + 16), 1u, 0);
  }

  v20 = *(a1 + 248) + 48 * a4;
  v83 = *(a1 + 344) + 48 * a4;
  v21 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
  kaldi::CuMatrixBase<float>::AddMatMat(v20, a2, CblasNoTrans, v21, &stru_68.sectname[8], 1.0, 0.0);
  v22 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
  kaldi::CuMatrixBase<float>::AddVecToRows(v20, v22, v23, v24, v25, 1.0, 1.0);
  if (v82 >= 1)
  {
    v28 = 0;
    v29 = 0;
    v81 = a1 + 12;
    v30 = -v6;
    do
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v108, v20, v28, v6, 0, *(a1 + 176));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v105, v20, v28, v6, *(a1 + 176), *(a1 + 176));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v102, v20, v28, v6, (3 * *(a1 + 176)), *(a1 + 176));
      v31 = *(a1 + 272) + 48 * v17;
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v99, v31, v28, v6, 0, *(v31 + 16));
      memset(v98, 0, sizeof(v98));
      v97 = off_276F40;
      memset(v96, 0, sizeof(v96));
      v95 = off_276F40;
      if (v29)
      {
        if (v80)
        {
          kaldi::CuMatrixBase<float>::SetZero(*(a1 + 128) + 48 * v17);
          v32 = *(a1 + 128) + 48 * v17;
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v93, v32, 0, *(v32 + 20), 0, *(a1 + 176));
          v96[0] = v94[0];
          *&v96[1] = *&v94[1];
          v96[3] = v94[3];
          v93 = off_276F40;
          memset(v94, 0, sizeof(v94));
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v93);
          v33 = *(a1 + 272) + 48 * v17;
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v93, v33, v30 + v28, v6, 0, *(v33 + 16));
          kaldi::CuSubVector<float>::CuSubVector(&v90, *(a1 + 104) + 32 * v17, v28, v6, v34);
          kaldi::CuMatrixBase<float>::CopySelectedRows(&v95, &v93, &v90, 1, v35);
          v93 = off_276F40;
          memset(v94, 0, sizeof(v94));
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v93);
          v36 = *(a1 + 128) + 48 * v17;
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v93, v36, 0, *(v36 + 20), *(a1 + 176), *(v81 + *(*a1 - 24)));
          *&v98[1] = *&v94[1];
          v98[0] = v94[0];
          v98[3] = v94[3];
          v93 = off_276F40;
          memset(v94, 0, sizeof(v94));
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v93);
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v93, v83, v30 + v28, v6, 0, *(v83 + 16));
          kaldi::CuSubVector<float>::CuSubVector(&v90, *(a1 + 104) + 32 * v17, v28, v6, v37);
          kaldi::CuMatrixBase<float>::CopySelectedRows(&v97, &v93, &v90, 1, v38);
          v93 = off_276F40;
          memset(v94, 0, sizeof(v94));
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v93);
        }

        else
        {
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v93, v83, v30 + v28, v6, 0, *(v83 + 16));
          *&v98[1] = *&v94[1];
          v98[0] = v94[0];
          v98[3] = v94[3];
          v93 = off_276F40;
          memset(v94, 0, sizeof(v94));
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v93);
          v41 = *(a1 + 272) + 48 * v17;
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v93, v41, v30 + v28, v6, 0, *(v41 + 16));
          v96[0] = v94[0];
          *&v96[1] = *&v94[1];
          v96[3] = v94[3];
          v93 = off_276F40;
          memset(v94, 0, sizeof(v94));
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v93);
          v30 = -v6;
        }
      }

      else
      {
        v39 = *(a1 + 8) + 48 * v17;
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v93, v39, 0, *(v39 + 20), *(a1 + 176), *(v81 + *(*a1 - 24)));
        *&v98[1] = *&v94[1];
        v98[0] = v94[0];
        v98[3] = v94[3];
        v93 = off_276F40;
        memset(v94, 0, sizeof(v94));
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v93);
        v40 = *(a1 + 8) + 48 * v17;
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v93, v40, 0, *(v40 + 20), 0, *(a1 + 176));
        v96[0] = v94[0];
        *&v96[1] = *&v94[1];
        v96[3] = v94[3];
        v93 = off_276F40;
        memset(v94, 0, sizeof(v94));
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v93);
        v30 = -v6;
      }

      kaldi::CuSubMatrix<float>::CuSubMatrix(&v93, v20, v28, v6, 0, *(v20 + 16));
      v42 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
      kaldi::CuMatrixBase<float>::AddMatMat(&v93, &v97, CblasNoTrans, v42, &stru_68.sectname[8], 1.0, 1.0);
      v93 = off_276F40;
      memset(v94, 0, sizeof(v94));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v93);
      if (*(a1 + 208) == 1)
      {
        v46 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
        if (!*(v46 + 20))
        {
          kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v47);
        }

        v48 = *(v46 + 16);
        v49 = *(v46 + 32);
        v94[0] = *(v46 + 8);
        v93 = &off_276FE0;
        v94[1] = v48;
        v94[2] = v49;
        kaldi::CuMatrixBase<float>::AddMatDiagVec(&v108, &v95, 111, &v93, v47, 1.0, 1.0);
        v50 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
        if (*(v50 + 20) <= 1u)
        {
          kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v51);
        }

        v52 = *(v50 + 16);
        v53 = *(v50 + 32);
        v94[0] = *(v50 + 8) + 4 * *(v50 + 24);
        v93 = &off_276FE0;
        v94[1] = v52;
        v94[2] = v53;
        kaldi::CuMatrixBase<float>::AddMatDiagVec(&v105, &v95, 111, &v93, v51, 1.0, 1.0);
      }

      kaldi::CuMatrixBase<float>::Sigmoid(&v108, &v108, v43, v44, v45);
      kaldi::CuMatrixBase<float>::Sigmoid(&v105, &v105, v54, v55, v56);
      kaldi::CuMatrixBase<float>::ApplyTanh(&v102, v57, v58, v59, v60);
      kaldi::CuMatrixBase<float>::AddMatEwpMat(&v99, &v108, 111, &v102, &stru_68.sectname[7], 1.0, 0.0);
      kaldi::CuMatrixBase<float>::AddMatEwpMat(&v99, &v105, 111, &v95, &stru_68.sectname[7], 1.0, 1.0);
      v61 = *(a1 + 476);
      if (v61 > 0.0)
      {
        kaldi::CuMatrixBase<float>::ApplyCeiling(&v99, v61);
        kaldi::CuMatrixBase<float>::ApplyFloor(&v99, -*(a1 + 476));
      }

      kaldi::CuSubMatrix<float>::CuSubMatrix(&v93, v20, v28, v6, (2 * *(a1 + 176)), *(a1 + 176));
      if (*(a1 + 208) == 1)
      {
        v65 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
        if (*(v65 + 20) <= 2u)
        {
          kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v66);
        }

        v67 = *(v65 + 16);
        v68 = *(v65 + 32);
        *&v91 = *(v65 + 8) + 8 * *(v65 + 24);
        v90 = &off_276FE0;
        *(&v91 + 1) = v67;
        *&v92 = v68;
        kaldi::CuMatrixBase<float>::AddMatDiagVec(&v93, &v99, 111, &v90, v66, 1.0, 1.0);
      }

      kaldi::CuMatrixBase<float>::Sigmoid(&v93, &v93, v62, v63, v64);
      v69 = *(a1 + 296) + 48 * v17;
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v90, v69, v28, v6, 0, *(v69 + 16));
      kaldi::CuMatrixBase<float>::Tanh(&v90, &v99, v70, v71, v72);
      v73 = *(a1 + 320) + 48 * v17;
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v87, v73, v28, v6, 0, *(v73 + 16));
      kaldi::CuMatrixBase<float>::AddMatEwpMat(&v87, &v93, 111, &v90, &stru_68.sectname[7], 1.0, 0.0);
      if (*(a1 + 224) == 1)
      {
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v84, v83, v28, v6, 0, *(v83 + 16));
        v74 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
        kaldi::CuMatrixBase<float>::AddMatMat(&v84, &v87, CblasNoTrans, v74, &stru_68.sectname[8], 1.0, 0.0);
      }

      else
      {
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v84, v83, v28, v6, 0, *(v83 + 16));
        kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v84, &v87, 111, v75, v76);
      }

      v84 = off_276F40;
      v85 = 0u;
      v86 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v84);
      v87 = off_276F40;
      v88 = 0u;
      v89 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v87);
      v90 = off_276F40;
      v91 = 0u;
      v92 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v90);
      v93 = off_276F40;
      memset(v94, 0, sizeof(v94));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v93);
      v95 = off_276F40;
      memset(v96, 0, sizeof(v96));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v95);
      v97 = off_276F40;
      memset(v98, 0, sizeof(v98));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v97);
      v99 = off_276F40;
      v100 = 0u;
      v101 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v99);
      v102 = off_276F40;
      v103 = 0u;
      v104 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v102);
      v105 = off_276F40;
      v106 = 0u;
      v107 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v105);
      v108.__locale_ = off_276F40;
      v109 = 0u;
      v110 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v108);
      ++v29;
      v28 += v6;
    }

    while (v82 != v29);
  }

  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v78, v83, 111, v26, v27);
  return kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::SaveLastState(a1, v79);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::AllocateForwardBuffers(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v9, "AllocateForwardBuffers", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1397, 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Allocating forward buffers for batch ", 37);
    v8 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "; batch size = ", 15);
    std::ostream::operator<<();
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v9);
  }

  kaldi::CuMatrix<float>::Resize(*(a1 + 248) + 48 * a2, a3, (4 * *(a1 + 176)), 0, 0);
  kaldi::CuMatrix<float>::Resize(*(a1 + 272) + 48 * a2, a3, *(a1 + 176), 0, 0);
  kaldi::CuMatrix<float>::Resize(*(a1 + 296) + 48 * a2, a3, *(a1 + 176), 0, 0);
  kaldi::CuMatrix<float>::Resize(*(a1 + 320) + 48 * a2, a3, *(a1 + 176), 0, 0);
  kaldi::CuMatrix<float>::Resize(*(a1 + 344) + 48 * a2, a3, *(a1 + *(*a1 - 24) + 12), 0, 0);
  *(*(a1 + 248) + 48 * a2 + 32) = a4;
  *(*(a1 + 272) + 48 * a2 + 32) = a4;
  *(*(a1 + 296) + 48 * a2 + 32) = a4;
  *(*(a1 + 320) + 48 * a2 + 32) = a4;
  *(*(a1 + 344) + 48 * a2 + 32) = a4;
}

void sub_15240C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

double kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::SaveLastState(uint64_t a1, int a2)
{
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v16, "SaveLastState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1700, 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "Saving last output and cell state for batch ", 44);
    std::ostream::operator<<();
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v16);
  }

  v4 = *(*(a1 + 272) + 48 * a2 + 20) - *(a1 + 96);
  v5 = *(a1 + 8) + 48 * a2;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v16, v5, 0, *(v5 + 20), 0, *(a1 + 176));
  v6 = *(a1 + 272) + 48 * a2;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v13, v6, v4, *(a1 + 96), 0, *(v6 + 16));
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v16, &v13, 111, v7, v8);
  v13 = off_276F40;
  v14 = 0u;
  v15 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v13);
  v16.__locale_ = off_276F40;
  v17 = 0u;
  v18 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v16);
  v9 = 3 * a2;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v16, *(a1 + 8) + 16 * v9, 0, *(*(a1 + 8) + 16 * v9 + 20), *(a1 + 176), *(a1 + *(*a1 - 24) + 12));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v13, *(a1 + 344) + 16 * v9, v4, *(a1 + 96), 0, *(*(a1 + 344) + 16 * v9 + 16));
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v16, &v13, 111, v10, v11);
  v13 = off_276F40;
  v14 = 0u;
  v15 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v13);
  v16.__locale_ = off_276F40;
  v17 = 0u;
  v18 = 0u;
  *&result = fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v16).n128_u64[0];
  return result;
}

void sub_152654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (**a9)(), __int128 a10, __int128 a11, void (**a12)(), __int128 a13, __int128 a14)
{
  a9 = off_276F40;
  a10 = 0u;
  a11 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a9);
  a12 = off_276F40;
  a13 = 0u;
  a14 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a12);
  _Unwind_Resume(a1);
}

double kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 88))(a1);
  if (*(a1 + 96) != 1)
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_2E8.reloff, "ropts_.num_sequences == 1", v6);
  }

  v7 = *(a3 + 24);
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::AllocateForwardBuffers(a1, 0, 1, v7);
  v9 = *(a1 + 104);
  if (*(a1 + 112) != v9)
  {
    v10 = *(v9 + 16);
    if (v10 >= 1)
    {
      if (v10 != 1)
      {
        kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_2E8.nreloc + 1, "boundary_[0].Dim() == 1", v8);
      }

      v11 = *(a1 + 128);
      *(v11 + 32) = v7;
      kaldi::CuMatrix<float>::Resize(v11, 1, *(*(a1 + 8) + 16), 1u, 0);
    }
  }

  v12 = *(a1 + 248);
  v120 = 0;
  v121 = 0;
  v119 = 0;
  v13 = *(v12 + 8);
  v118 = &off_276FE0;
  v119 = v13;
  LODWORD(v120) = *(v12 + 16);
  v121 = *(v12 + 32);
  v14 = *(a1 + 344);
  v116 = 0;
  v117 = 0;
  v115 = 0;
  v15 = *(v14 + 8);
  v114 = &off_276FE0;
  v115 = v15;
  LODWORD(v116) = *(v14 + 16);
  v117 = *(v14 + 32);
  v16 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
  kaldi::CuVectorBase<float>::AddMatVec(&v118, v16, CblasNoTrans, a2, v17, 1.0, 0.0);
  v18 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
  kaldi::CuVectorBase<float>::AddVec(&v118, v18, v19, v20, v21, 1.0, 1.0);
  v23 = *(a1 + 176);
  v112 = 0;
  v113 = 0;
  v110 = &off_276FE0;
  v111 = 0;
  if (v23 > v120)
  {
    kaldi::KaldiAssertFailure_("CuSubVector", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.h", &stru_1A8.size + 4, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v22);
  }

  v111 = v119;
  LODWORD(v112) = v23;
  v113 = v121;
  kaldi::CuSubVector<float>::CuSubVector(v109, &v118, v23, v23, v22);
  kaldi::CuSubVector<float>::CuSubVector(v108, &v118, 3 * *(a1 + 176), *(a1 + 176), v24);
  v26 = *(a1 + 272);
  v106 = 0;
  v107 = 0;
  v105 = 0;
  v27 = *(v26 + 8);
  v104 = &off_276FE0;
  v105 = v27;
  LODWORD(v106) = *(v26 + 16);
  v107 = *(v26 + 32);
  v28 = *(a1 + 8);
  if (!*(v28 + 20))
  {
    kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v25);
  }

  v29 = *(v28 + 8);
  v30 = *(v28 + 16);
  v31 = *(v28 + 32);
  v100 = v29;
  v99 = &off_276FE0;
  v101 = v30;
  v102 = v31;
  kaldi::CuSubVector<float>::CuSubVector(v103, &v99, *(a1 + 176), *(a1 + *(*a1 - 24) + 12), v25);
  v33 = *(a1 + 8);
  if (!*(v33 + 20))
  {
    kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v32);
  }

  v34 = *(v33 + 8);
  v35 = *(v33 + 16);
  v36 = *(v33 + 32);
  v96 = v34;
  v95 = &off_276FE0;
  v97 = v35;
  v37 = *(a1 + 176);
  v101 = 0;
  v102 = 0;
  v100 = 0;
  v98 = v36;
  v99 = &off_276FE0;
  if (v37 > v35)
  {
    kaldi::KaldiAssertFailure_("CuSubVector", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.h", &stru_1A8.size + 4, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v32);
  }

  v100 = v34;
  LODWORD(v101) = v37;
  v102 = v36;
  v38 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
  kaldi::CuVectorBase<float>::AddMatVec(&v118, v38, CblasNoTrans, v103, v39, 1.0, 1.0);
  if (*(a1 + 208) == 1)
  {
    v43 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
    if (!*(v43 + 20))
    {
      kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v45);
    }

    v46 = *(v43 + 16);
    v47 = *(v43 + 32);
    v96 = *(v43 + 8);
    v95 = &off_276FE0;
    v97 = v46;
    v98 = v47;
    kaldi::CuVectorBase<float>::AddVecVec(&v110, &v99, &v95, v44, v45, 1.0, 1.0);
    v48 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
    if (*(v48 + 20) <= 1u)
    {
      kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v50);
    }

    v51 = *(v48 + 16);
    v52 = *(v48 + 32);
    v96 = *(v48 + 8) + 4 * *(v48 + 24);
    v95 = &off_276FE0;
    v97 = v51;
    v98 = v52;
    kaldi::CuVectorBase<float>::AddVecVec(v109, &v99, &v95, v49, v50, 1.0, 1.0);
  }

  kaldi::CuVectorBase<float>::Sigmoid(&v110, &v110, v40, v41, v42);
  kaldi::CuVectorBase<float>::Sigmoid(v109, v109, v53, v54, v55);
  kaldi::CuVectorBase<float>::ApplyTanh(v108);
  kaldi::CuVectorBase<float>::AddVecVec(&v104, &v110, v108, v56, v57, 1.0, 0.0);
  kaldi::CuVectorBase<float>::AddVecVec(&v104, &v99, v109, v58, v59, 1.0, 1.0);
  v61 = *(a1 + 476);
  if (v61 > 0.0)
  {
    kaldi::CuVectorBase<float>::ApplyCeiling(&v104, v61);
    kaldi::CuVectorBase<float>::ApplyFloor(&v104, -*(a1 + 476));
  }

  kaldi::CuSubVector<float>::CuSubVector(&v95, &v118, 2 * *(a1 + 176), *(a1 + 176), v60);
  if (*(a1 + 208) == 1)
  {
    v65 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
    if (*(v65 + 20) <= 2u)
    {
      kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v67);
    }

    v68 = *(v65 + 16);
    v69 = *(v65 + 32);
    v92 = *(v65 + 8) + 8 * *(v65 + 24);
    v91 = &off_276FE0;
    v93 = v68;
    v94 = v69;
    kaldi::CuVectorBase<float>::AddVecVec(&v95, &v104, &v91, v66, v67, 1.0, 1.0);
  }

  kaldi::CuVectorBase<float>::Sigmoid(&v95, &v95, v62, v63, v64);
  v70 = *(a1 + 296);
  v93 = 0;
  v71 = *(v70 + 8);
  v91 = &off_276FE0;
  v92 = v71;
  LODWORD(v93) = *(v70 + 16);
  v94 = *(v70 + 32);
  kaldi::CuVectorBase<float>::Tanh(&v91, &v104, v72, v73, v74);
  v75 = *(a1 + 320);
  v89 = 0;
  v76 = *(v75 + 8);
  v88[0] = &off_276FE0;
  v88[1] = v76;
  LODWORD(v89) = *(v75 + 16);
  v90 = *(v75 + 32);
  kaldi::CuVectorBase<float>::AddVecVec(v88, &v95, &v91, v77, v78, 1.0, 0.0);
  if (*(a1 + 224) == 1)
  {
    v82 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
    kaldi::CuVectorBase<float>::AddMatVec(&v114, v82, CblasNoTrans, v88, v83, 1.0, 0.0);
  }

  else
  {
    kaldi::CuVectorBase<float>::CopyFromVec(&v114, v88, v79, v80, v81);
  }

  kaldi::CuVectorBase<float>::CopyFromVec(a3, &v114, v84, v85, v86);
  return kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::SaveLastState(a1, 0);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::GetUnitOutputFnc()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v1, "GetUnitOutputFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 876);
  v0 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "GetUnitOutputFnc", 16);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, " Not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v1, "GetUnitOutputFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 881);
  v0 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "GetUnitOutputFnc", 16);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, " Not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

void virtual thunk tokaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::GetUnitOutputFnc(void *a1)
{
  v1 = *(*a1 - 160);
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::GetUnitOutputFnc();
}

{
  v1 = *(*a1 - 168);
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::GetUnitOutputFnc();
}

double kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = *(a2 + 20);
  v11 = *(a1 + 96);
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::EnsureTrainingBuffers(a1);
  v13 = v10 / v11;
  if (v10 % v11)
  {
    kaldi::KaldiAssertFailure_("BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_338.reserved2, "batch_size % num_utts == 0", v12);
  }

  if (kaldi::g_kaldi_verbose_level > 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v155, "BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 898, 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v155, "Running backward propagation for batch size = ", 46);
    v14 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", which contains ", 17);
    v15 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " frames each from ", 18);
    v16 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v155);
  }

  v108 = v10 / v11;
  v105 = v13 - 2;
  if (v13 < 2)
  {
    kaldi::KaldiAssertFailure_("BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_338.reserved3, "frames_in_batch > 1 && LSTM backprop will not work with batches of single frames.", v12);
  }

  v104 = a5;
  if (a5)
  {
    v17 = a5;
  }

  else
  {
    v17 = a4;
  }

  v18 = *(v17 + 32);
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::AllocateBackwardBuffers(a1, a6, v10, v18);
  v21 = a6;
  v22 = *(a1 + 248);
  v23 = *(a1 + 440) + 48 * a6;
  v24 = *(a1 + 368);
  v103 = *(a1 + 416);
  v25 = *(a1 + 104);
  v107 = v23;
  if (*(a1 + 112) == v25 || (v26 = *(v25 + 32 * a6 + 16), v26 < 1))
  {
    v110 = 0;
  }

  else
  {
    if (v26 != v10)
    {
      kaldi::KaldiAssertFailure_("BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_388.sectname[8], "boundary_[batch_index].Dim() == batch_size", v20);
    }

    v27 = *(a1 + 128) + 48 * a6;
    *(v27 + 32) = v18;
    v110 = 1;
    kaldi::CuMatrix<float>::Resize(v27, v11, *(v23 + 16), 1u, 0);
  }

  v28 = v22 + 48 * a6;
  v29 = v24 + 48 * a6;
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v29, a4, 111, v19, v20);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v155, v28, 0, *(v28 + 20), 0, *(a1 + 176));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v152, v28, 0, *(v28 + 20), *(a1 + 176), *(a1 + 176));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v149, v28, 0, *(v28 + 20), (2 * *(a1 + 176)), *(a1 + 176));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v146, v28, 0, *(v28 + 20), (3 * *(a1 + 176)), *(a1 + 176));
  v30 = v107;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v143, v107, 0, *(v107 + 20), 0, *(a1 + 176));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v140, v30, 0, *(v30 + 20), *(a1 + 176), *(a1 + 176));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v137, v30, 0, *(v30 + 20), (2 * *(a1 + 176)), *(a1 + 176));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v134, v30, 0, *(v30 + 20), (3 * *(a1 + 176)), *(a1 + 176));
  kaldi::CuMatrixBase<float>::DiffSigmoid(&v143, &v155, &v146, v31, v32);
  v33 = v10 - v11;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v131, &v140, v11, v33, 0, SDWORD2(v141));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v128, &v152, v11, v33, 0, SDWORD2(v153));
  v34 = *(a1 + 272) + 48 * a6;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v125, v34, 0, v33, 0, *(v34 + 16));
  kaldi::CuMatrixBase<float>::DiffSigmoid(&v131, &v128, &v125, v35, v36);
  v125 = off_276F40;
  v126 = 0u;
  v127 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v125);
  v128 = off_276F40;
  v129 = 0u;
  v130 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v128);
  v131 = off_276F40;
  v132 = 0u;
  v133 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v131);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v131, &v140, 0, v11, 0, SDWORD2(v141));
  kaldi::CuMatrixBase<float>::SetZero(&v131);
  v131 = off_276F40;
  v132 = 0u;
  v133 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v131);
  if (v110)
  {
    v39 = *(a1 + 128) + 48 * a6;
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v131, v39, 0, *(v39 + 20), 0, *(a1 + 176));
    kaldi::CuMatrixBase<float>::SetZero(&v131);
    v40 = v108 - 1;
    v41 = v11;
    do
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v128, &v140, v41, v11, 0, SDWORD2(v141));
      kaldi::CuSubVector<float>::CuSubVector(&v125, *(a1 + 104) + 32 * a6, v41, v11, v42);
      kaldi::CuMatrixBase<float>::CopySelectedRows(&v128, &v131, &v125, 0, v43);
      v128 = off_276F40;
      v129 = 0u;
      v130 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v128);
      v41 += v11;
      --v40;
    }

    while (v40);
    v131 = off_276F40;
    v132 = 0u;
    v133 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v131);
  }

  kaldi::CuMatrixBase<float>::DiffSigmoid(&v137, &v149, *(a1 + 296) + 48 * a6, v37, v38);
  kaldi::CuMatrixBase<float>::DiffTanh(&v134, &v146, &v155, v44, v45);
  v46 = v103 + 48 * a6;
  kaldi::CuMatrixBase<float>::DiffTanh(v46, *(a1 + 296) + 48 * a6, &v149, v47, v48);
  v49 = 0;
  v50 = v108 - 1;
  v51 = v11 * (v108 - 1);
  v52 = v11 * v108;
  v106 = v11 * v105;
  v109 = v108 - 1;
  do
  {
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v131, v29, v51 + v49, v11, 0, *(v29 + 16));
    v53 = *(a1 + 392) + 48 * v21;
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v128, v53, v51 + v49, v11, 0, *(v53 + 16));
    if (*(a1 + 224) == 1)
    {
      v56 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
      kaldi::CuMatrixBase<float>::AddMatMat(&v128, &v131, CblasNoTrans, v56, &stru_68.sectname[7], 1.0, 0.0);
    }

    else
    {
      kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v128, &v131, 111, v54, v55);
    }

    kaldi::CuSubMatrix<float>::CuSubMatrix(&v125, &v137, v51 + v49, v11, 0, SDWORD2(v138));
    kaldi::CuMatrixBase<float>::MulElements(&v125, &v128, v57, v58, v59);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v122, v46, v51 + v49, v11, 0, *(v46 + 16));
    kaldi::CuMatrixBase<float>::MulElements(&v122, &v128, v60, v61, v62);
    if (*(a1 + 208) == 1)
    {
      v63 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
      if (*(v63 + 20) <= 2u)
      {
        kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v64);
      }

      v65 = *(v63 + 16);
      v66 = *(v63 + 32);
      v121[0] = *(v63 + 8) + 8 * *(v63 + 24);
      v120 = &off_276FE0;
      v121[1] = v65;
      v121[2] = v66;
      kaldi::CuMatrixBase<float>::AddMatDiagVec(&v122, &v125, 111, &v120, v64, 1.0, 1.0);
    }

    if (v50 < v109)
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v120, v46, v52 + v49, v11, 0, *(v46 + 16));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v118, &v152, v52 + v49, v11, 0, SDWORD2(v153));
      if (v110)
      {
        v67 = *(a1 + 128) + 48 * v21;
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v116, v67, 0, *(v67 + 20), 0, *(a1 + 176));
        kaldi::CuMatrixBase<float>::SetZero(&v116);
        kaldi::CuSubVector<float>::CuSubVector(&v114, *(a1 + 104) + 32 * v21, v52 + v49, v11, v68);
        kaldi::CuMatrixBase<float>::CopySelectedRows(&v116, &v120, &v114, 1, v69);
        *&v121[1] = *&v117[1];
        v121[0] = v117[0];
        v121[3] = v117[3];
        v70 = *(a1 + 128) + 48 * v21;
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v114, v70, 0, *(v70 + 20), *(a1 + 176), *(a1 + 176));
        kaldi::CuMatrixBase<float>::SetZero(&v114);
        kaldi::CuSubVector<float>::CuSubVector(v113, *(a1 + 104) + 32 * v21, v52 + v49, v11, v71);
        kaldi::CuMatrixBase<float>::CopySelectedRows(&v114, &v118, v113, 1, v72);
        v119[0] = v115[0];
        *&v119[1] = *&v115[1];
        v119[3] = v115[3];
        v114 = off_276F40;
        memset(v115, 0, sizeof(v115));
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v114);
        v116 = off_276F40;
        memset(v117, 0, sizeof(v117));
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v116);
      }

      if (*(a1 + 208) == 1)
      {
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v116, &v140, v52 + v49, v11, 0, SDWORD2(v141));
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v114, &v143, v52 + v49, v11, 0, SDWORD2(v144));
        if (v110)
        {
          v73 = *(a1 + 128) + 48 * v21;
          kaldi::CuSubMatrix<float>::CuSubMatrix(v113, v73, 0, *(v73 + 20), (2 * *(a1 + 176)), *(a1 + 176));
          kaldi::CuMatrixBase<float>::SetZero(v113);
          kaldi::CuSubVector<float>::CuSubVector(v112, *(a1 + 104) + 32 * v21, v52 + v49, v11, v74);
          kaldi::CuMatrixBase<float>::CopySelectedRows(v113, &v116, v112, 1, v75);
          *&v117[1] = *&v113[2];
          v117[0] = v113[1];
          v117[3] = v113[4];
          v76 = *(a1 + 128) + 48 * v21;
          kaldi::CuSubMatrix<float>::CuSubMatrix(v112, v76, 0, *(v76 + 20), (3 * *(a1 + 176)), *(a1 + 176));
          kaldi::CuMatrixBase<float>::SetZero(v112);
          kaldi::CuSubVector<float>::CuSubVector(v111, *(a1 + 104) + 32 * v21, v52 + v49, v11, v77);
          kaldi::CuMatrixBase<float>::CopySelectedRows(v112, &v114, v111, 1, v78);
          v115[0] = v112[1];
          *&v115[1] = *&v112[2];
          v115[3] = v112[4];
          v112[0] = off_276F40;
          memset(&v112[1], 0, 32);
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v112);
          v113[0] = off_276F40;
          memset(&v113[1], 0, 32);
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v113);
        }

        v79 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
        if (*(v79 + 20) <= 1u)
        {
          kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v80);
        }

        v81 = *(v79 + 16);
        v82 = *(v79 + 32);
        v113[1] = *(v79 + 8) + 4 * *(v79 + 24);
        v113[0] = &off_276FE0;
        v113[2] = v81;
        v113[3] = v82;
        kaldi::CuMatrixBase<float>::AddMatDiagVec(&v122, &v116, 111, v113, v80, 1.0, 1.0);
        v83 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
        if (!*(v83 + 20))
        {
          kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v84);
        }

        v85 = *(v83 + 16);
        v86 = *(v83 + 32);
        v113[1] = *(v83 + 8);
        v113[0] = &off_276FE0;
        v113[2] = v85;
        v113[3] = v86;
        kaldi::CuMatrixBase<float>::AddMatDiagVec(&v122, &v114, 111, v113, v84, 1.0, 1.0);
        v114 = off_276F40;
        memset(v115, 0, sizeof(v115));
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v114);
        v116 = off_276F40;
        memset(v117, 0, sizeof(v117));
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v116);
      }

      kaldi::CuMatrixBase<float>::AddMatEwpMat(&v122, &v120, 111, &v118, &stru_68.sectname[7], 1.0, 1.0);
      v118 = off_276F40;
      memset(v119, 0, sizeof(v119));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v118);
      v120 = off_276F40;
      memset(v121, 0, sizeof(v121));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v120);
    }

    kaldi::CuSubMatrix<float>::CuSubMatrix(&v120, &v143, v51 + v49, v11, 0, SDWORD2(v144));
    kaldi::CuMatrixBase<float>::MulElements(&v120, &v122, v87, v88, v89);
    v120 = off_276F40;
    memset(v121, 0, sizeof(v121));
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v120);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v120, &v134, v51 + v49, v11, 0, SDWORD2(v135));
    kaldi::CuMatrixBase<float>::MulElements(&v120, &v122, v90, v91, v92);
    v120 = off_276F40;
    memset(v121, 0, sizeof(v121));
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v120);
    if (v50)
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v120, &v140, v51 + v49, v11, 0, SDWORD2(v141));
      kaldi::CuMatrixBase<float>::MulElements(&v120, &v122, v93, v94, v95);
      v120 = off_276F40;
      memset(v121, 0, sizeof(v121));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v120);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v120, v107, v51 + v49, v11, 0, *(v107 + 16));
      if (v110)
      {
        v96 = *(a1 + 128) + 48 * v21;
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v118, v96, 0, *(v96 + 20), 0, v121[1]);
        kaldi::CuMatrixBase<float>::SetZero(&v118);
        kaldi::CuSubVector<float>::CuSubVector(&v116, *(a1 + 104) + 32 * v21, v51 + v49, v11, v97);
        kaldi::CuMatrixBase<float>::CopySelectedRows(&v118, &v120, &v116, 1, v98);
        *&v121[1] = *&v119[1];
        v121[0] = v119[0];
        v121[3] = v119[3];
        v118 = off_276F40;
        memset(v119, 0, sizeof(v119));
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v118);
      }

      kaldi::CuSubMatrix<float>::CuSubMatrix(&v118, v29, v106 + v49, v11, 0, *(v29 + 16));
      v99 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
      kaldi::CuMatrixBase<float>::AddMatMat(&v118, &v120, CblasNoTrans, v99, &stru_68.sectname[7], 1.0, 1.0);
      v118 = off_276F40;
      memset(v119, 0, sizeof(v119));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v118);
      v120 = off_276F40;
      memset(v121, 0, sizeof(v121));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v120);
    }

    v122 = off_276F40;
    v123 = 0u;
    v124 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v122);
    v125 = off_276F40;
    v126 = 0u;
    v127 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v125);
    v128 = off_276F40;
    v129 = 0u;
    v130 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v128);
    v131 = off_276F40;
    v132 = 0u;
    v133 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v131);
    v49 -= v11;
  }

  while (v50-- > 0);
  if (v104)
  {
    v101 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
    kaldi::CuMatrixBase<float>::AddMatMat(v104, v107, CblasNoTrans, v101, &stru_68.sectname[7], 1.0, 0.0);
  }

  v134 = off_276F40;
  v135 = 0u;
  v136 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v134);
  v137 = off_276F40;
  v138 = 0u;
  v139 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v137);
  v140 = off_276F40;
  v141 = 0u;
  v142 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v140);
  v143 = off_276F40;
  v144 = 0u;
  v145 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v143);
  v146 = off_276F40;
  v147 = 0u;
  v148 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v146);
  v149 = off_276F40;
  v150 = 0u;
  v151 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v149);
  v152 = off_276F40;
  v153 = 0u;
  v154 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v152);
  v155.__locale_ = off_276F40;
  v156 = 0u;
  v157 = 0u;
  *&result = fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v155).n128_u64[0];
  return result;
}

void sub_1541AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void (**a63)())
{
  a63 = off_276F40;
  a64 = 0u;
  a65 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a63);
  a66 = off_276F40;
  a67 = 0u;
  a68 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a66);
  STACK[0x200] = off_276F40;
  *&STACK[0x208] = 0u;
  *&STACK[0x218] = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&STACK[0x200]);
  STACK[0x228] = off_276F40;
  *&STACK[0x230] = 0u;
  *&STACK[0x240] = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&STACK[0x228]);
  STACK[0x250] = off_276F40;
  *&STACK[0x258] = 0u;
  *&STACK[0x268] = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&STACK[0x250]);
  STACK[0x278] = off_276F40;
  *&STACK[0x280] = 0u;
  *&STACK[0x290] = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&STACK[0x278]);
  STACK[0x2A0] = off_276F40;
  *&STACK[0x2A8] = 0u;
  *&STACK[0x2B8] = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&STACK[0x2A0]);
  STACK[0x2C8] = off_276F40;
  *&STACK[0x2D0] = 0u;
  *&STACK[0x2E0] = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&STACK[0x2C8]);
  STACK[0x2F0] = off_276F40;
  *&STACK[0x2F8] = 0u;
  *&STACK[0x308] = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&STACK[0x2F0]);
  _Unwind_Resume(a1);
}

void *kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::EnsureTrainingBuffers(void *result)
{
  if ((*(result + 241) & 1) == 0)
  {
    v1 = result;
    std::vector<kaldi::CuMatrix<float>>::resize(result + 46, *(result + 20));
    std::vector<kaldi::CuMatrix<float>>::resize(v1 + 49, *(v1 + 20));
    std::vector<kaldi::CuMatrix<float>>::resize(v1 + 52, *(v1 + 20));
    result = std::vector<kaldi::CuMatrix<float>>::resize(v1 + 55, *(v1 + 20));
    *(v1 + 241) = 1;
  }

  return result;
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::AllocateBackwardBuffers(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v9, "AllocateBackwardBuffers", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1413, 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Allocating backward buffers for batch ", 38);
    v8 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "; batch size = ", 15);
    std::ostream::operator<<();
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v9);
  }

  kaldi::CuMatrix<float>::Resize(*(a1 + 368) + 48 * a2, a3, *(a1 + *(*a1 - 24) + 12), 0, 0);
  kaldi::CuMatrix<float>::Resize(*(a1 + 392) + 48 * a2, a3, *(a1 + 176), 0, 0);
  kaldi::CuMatrix<float>::Resize(*(a1 + 416) + 48 * a2, a3, *(a1 + 176), 0, 0);
  kaldi::CuMatrix<float>::Resize(*(a1 + 440) + 48 * a2, a3, (4 * *(a1 + 176)), 0, 0);
  *(*(a1 + 368) + 48 * a2 + 32) = a4;
  *(*(a1 + 392) + 48 * a2 + 32) = a4;
  *(*(a1 + 416) + 48 * a2 + 32) = a4;
  *(*(a1 + 440) + 48 * a2 + 32) = a4;
}

void sub_154A58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 80) <= a5)
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_3D8.align + 1, "batch_index < ropts_.num_subbatches", a5);
  }

  v7 = *(a1 + 96);
  v8 = *(a2 + 20);
  if (v8 % v7)
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_3D8.reloff + 1, "batch_size % num_utts == 0", a5);
  }

  v9 = a5;
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v55, "AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1043, 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "Accumulating gradients for batch id = ", 38);
    v11 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", which contains ", 17);
    v12 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " frames each from ", 18);
    v13 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v55);
  }

  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::AllocateGradients(a1);
  v38 = *(a1 + 272);
  v14 = (*(a1 + 440) + 48 * v9);
  v15 = *(a1 + 60);
  *(*(a1 + 480) + 4 * v9) = v8;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v55, v14, 0, v14[5], 0, *(a1 + 176));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v52, v14, 0, v14[5], *(a1 + 176), *(a1 + 176));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v49, v14, 0, v14[5], (2 * *(a1 + 176)), *(a1 + 176));
  *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a1, v9) + 32) = a4;
  *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a1, v9) + 32) = a4;
  *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a1, v9) + 24) = a4;
  if (*(a1 + 208) == 1)
  {
    *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a1, v9) + 32) = a4;
  }

  if (*(a1 + 224) == 1)
  {
    *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, v9) + 32) = a4;
  }

  v16 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a1, v9);
  kaldi::CuMatrixBase<float>::AddMatMat(v16, v14, CblasTrans, a2, &stru_68.sectname[7], 1.0, v15);
  v17 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a1, v9);
  v18 = v8 - v7;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v46, v14, v7, v8 - v7, 0, v14[4]);
  v19 = *(a1 + 344) + 48 * v9;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v43, v19, 0, v8 - v7, 0, *(v19 + 16));
  kaldi::CuMatrixBase<float>::AddMatMat(v17, &v46, CblasTrans, &v43, &stru_68.sectname[7], 1.0, v15);
  v43 = off_276F40;
  v44 = 0u;
  v45 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v43);
  v46 = off_276F40;
  v47 = 0u;
  v48 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v46);
  v20 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a1, v9);
  kaldi::CuVectorBase<float>::AddRowSumMat(v20, v14, 1.0, v15, v21, v22, v23);
  if (*(a1 + 208) == 1)
  {
    v24 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a1, v9);
    if (!*(v24 + 20))
    {
      kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v25);
    }

    v26 = *(v24 + 16);
    v27 = *(v24 + 32);
    v40 = *(v24 + 8);
    v39 = &off_276FE0;
    v41 = v26;
    v42 = v27;
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v46, &v55, v7, v18, 0, SDWORD2(v56));
    v28 = v38 + 48 * v9;
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v43, v28, 0, v18, 0, *(v28 + 16));
    kaldi::CuVectorBase<float>::AddDiagMatMat(&v39, &v46, 112, &v43, 111, 1.0, v15);
    v43 = off_276F40;
    v44 = 0u;
    v45 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v43);
    v46 = off_276F40;
    v47 = 0u;
    v48 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v46);
    v29 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a1, v9);
    if (*(v29 + 20) <= 1u)
    {
      kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v30);
    }

    v31 = *(v29 + 16);
    v32 = *(v29 + 32);
    v40 = *(v29 + 8) + 4 * *(v29 + 24);
    v39 = &off_276FE0;
    v41 = v31;
    v42 = v32;
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v46, &v52, v7, v18, 0, SDWORD2(v53));
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v43, v28, 0, v18, 0, *(v28 + 16));
    kaldi::CuVectorBase<float>::AddDiagMatMat(&v39, &v46, 112, &v43, 111, 1.0, v15);
    v43 = off_276F40;
    v44 = 0u;
    v45 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v43);
    v46 = off_276F40;
    v47 = 0u;
    v48 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v46);
    v33 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a1, v9);
    if (*(v33 + 20) <= 2u)
    {
      kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v34);
    }

    v35 = *(v33 + 16);
    v36 = *(v33 + 32);
    *&v47 = *(v33 + 8) + 8 * *(v33 + 24);
    v46 = &off_276FE0;
    *(&v47 + 1) = v35;
    *&v48 = v36;
    kaldi::CuVectorBase<float>::AddDiagMatMat(&v46, &v49, 112, v28, 111, 1.0, v15);
  }

  if (*(a1 + 224) == 1)
  {
    v37 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, v9);
    kaldi::CuMatrixBase<float>::AddMatMat(v37, *(a1 + 368) + 48 * v9, CblasTrans, *(a1 + 320) + 48 * v9, &stru_68.sectname[7], 1.0, v15);
  }

  v49 = off_276F40;
  v50 = 0u;
  v51 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v49);
  v52 = off_276F40;
  v53 = 0u;
  v54 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v52);
  v55.__locale_ = off_276F40;
  v56 = 0u;
  v57 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v55);
}

void sub_1551DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void (**a25)(), __int128 a26, __int128 a27, void (**a28)(), __int128 a29, __int128 a30, void (**a31)(), __int128 a32, __int128 a33)
{
  a25 = off_276F40;
  a26 = 0u;
  a27 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a25);
  a28 = off_276F40;
  a29 = 0u;
  a30 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a28);
  a31 = off_276F40;
  a32 = 0u;
  a33 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a31);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::AllocateGradients(uint64_t a1)
{
  if (*(a1 + 528))
  {
    return;
  }

  v2 = *(a1 + 80);
  if (v2 > 1)
  {
    v3 = (v2 + 1);
  }

  else
  {
    v3 = 1;
  }

  if (*(a1 + 544) != *(a1 + 536))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "AllocateGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1332);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "input_weights_gradient_.size() == 0");
    goto LABEL_34;
  }

  if (*(a1 + 568) != *(a1 + 560))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "AllocateGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1333);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "recurrent_weights_gradient_.size() == 0");
    goto LABEL_34;
  }

  if (*(a1 + 616) != *(a1 + 608))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "AllocateGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1334);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "bias_gradient_.size() == 0");
    goto LABEL_34;
  }

  v10 = *(a1 + 156);
  if (*(a1 + 208) == 1 && *(a1 + 592) != *(a1 + 584))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "AllocateGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1335);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "peephole_weights_gradient_.size() == 0");
    goto LABEL_34;
  }

  if (*(a1 + 224) == 1 && *(a1 + 640) != *(a1 + 632))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "AllocateGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1336);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "projection_weights_gradient_.size() == 0");
LABEL_34:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
  }

  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 536), v3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 560), v3);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::resize((a1 + 608), v3);
  std::vector<kaldi::CuMatrix<float>>::resize((a1 + 656), v3);
  std::vector<kaldi::CuMatrix<float>>::resize((a1 + 680), v3);
  std::vector<kaldi::CuVector<float>>::resize((a1 + 728), v3, v4, v5, v6);
  if (v3 >= 1)
  {
    operator new();
  }

  if (*(a1 + 208))
  {
    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 584), v3);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 704), v3);
  }

  if (*(a1 + 224) == 1)
  {
    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 632), v3);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 752), v3);
  }

  *(a1 + 528) = 1;
  if (kaldi::g_kaldi_verbose_level > 1)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v13, "AllocateGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1391, 2);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Allocated memory for the gradients: ", 36);
    (*(*a1 + 272))(__p, a1);
    if ((v12 & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    if ((v12 & 0x80u) == 0)
    {
      v9 = v12;
    }

    else
    {
      v9 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v13);
  }
}

_DWORD *kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::SetInternalBoundary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = a3;
  v7 = *(a1 + 104);
  v8 = (a1 + 104);
  if (v7 == *(a1 + 112))
  {
    std::vector<kaldi::CuVector<float>>::resize((a1 + 104), *(a1 + 80), a3, a4, a5);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 128), *(a1 + 80));
    v7 = *(a1 + 104);
  }

  kaldi::CuVector<float>::Resize(v7 + 32 * v5, *(a2 + 16), 1u, a4, a5);
  v13 = (*v8 + 32 * v5);

  return kaldi::CuVectorBase<float>::CopyFromVec(v13, a2, v10, v11, v12);
}

void virtual thunk tokaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::SetTrainOptions(void *a1, char **a2)
{
  v2 = (a1 + *(*a1 - 280));
  kaldi::nnet1::RecurrentBaseComponent::SetTrainOptions(v2, a2);
  *(v2 + 120) = 0;
}

unsigned int *kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::GetHistoryState(uint64_t a1, unsigned int *a2, unsigned int a3, uint64_t a4, const char *a5)
{
  if ((a3 & 0x80000000) != 0 || *(a1 + 80) <= a3)
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_6A8.sectname[6], "batch_index >= 0 && batch_index < ropts_.num_subbatches", a5);
  }

  v8 = *(a1 + 8) + 48 * a3;
  kaldi::CuMatrix<float>::Resize(a2, *(v8 + 20), *(v8 + 16), 1u, 0);
  v11 = *(a1 + 8) + 48 * a3;

  return kaldi::CuMatrixBase<float>::CopyFromMat<float>(a2, v11, 111, v9, v10);
}

_DWORD *kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::GetHistoryState(uint64_t a1, _DWORD *a2, unsigned int a3, uint64_t a4, const char *a5)
{
  if ((a4 & 0x80000000) != 0 || *(a1 + 80) <= a4)
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_6A8.sectname[13], "batch_index >= 0 && batch_index < ropts_.num_subbatches", a5);
  }

  if ((a3 & 0x80000000) != 0 || (v7 = *(a1 + 8) + 48 * a4, *(v7 + 20) <= a3))
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_6A8.sectname[14], "sequence_idx >= 0 && sequence_idx < history_state_[batch_index].NumRows()", a5);
  }

  v9 = a4;
  kaldi::CuVector<float>::Resize(a2, *(v7 + 16), 1u, a4, a5);
  v13 = *(a1 + 8) + 48 * v9;
  if (*(v13 + 20) <= a3)
  {
    kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.segname[11], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v12);
  }

  v14 = *(v13 + 8) + 4 * (*(v13 + 24) * a3);
  v15 = *(v13 + 16);
  v16 = *(v13 + 32);
  v18[1] = v14;
  v18[0] = &off_276FE0;
  v18[2] = v15;
  v18[3] = v16;
  return kaldi::CuVectorBase<float>::CopyFromVec(a2, v18, v10, v11, v12);
}

unsigned int *kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::SetHistoryState(uint64_t a1, uint64_t a2, unsigned int a3)
{
  (*(*a1 + 88))(a1);
  if ((a3 & 0x80000000) != 0 || *(a1 + 80) <= a3)
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_6A8.size + 5, "batch_index >= 0 && batch_index < ropts_.num_subbatches", v7);
  }

  v8 = (*(a1 + 8) + 48 * a3);
  if (*(a2 + 20) != v8[5])
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_6A8.size + 6, "history.NumRows() == history_state_[batch_index].NumRows()", v7);
  }

  if (*(a2 + 16) != v8[4])
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_6A8.size + 7, "history.NumCols() == history_state_[batch_index].NumCols()", v7);
  }

  return kaldi::CuMatrixBase<float>::CopyFromMat<float>(v8, a2, 111, v6, v7);
}

_DWORD *kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::SetHistoryState(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  (*(*a1 + 88))(a1);
  if ((a4 & 0x80000000) != 0 || *(a1 + 80) <= a4)
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_6A8.align + 2, "batch_index >= 0 && batch_index < ropts_.num_subbatches", v10);
  }

  if (a3 < 0 || (v11 = *(a1 + 8) + 48 * a4, *(v11 + 20) <= a3))
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_6A8.align + 3, "sequence_idx >= 0 && sequence_idx < history_state_[batch_index].NumRows()", v10);
  }

  v12 = *(a2 + 16);
  if (v12 != *(v11 + 16))
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_6A8.reloff, "history.Dim() == history_state_[batch_index].NumCols()", v10);
  }

  v13 = *(v11 + 8) + 4 * *(v11 + 24) * a3;
  v14 = *(v11 + 32);
  v16[1] = v13;
  v16[0] = &off_276FE0;
  v16[2] = v12;
  v16[3] = v14;
  return kaldi::CuVectorBase<float>::CopyFromVec(v16, a2, v8, v9, v10);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ResetHistoryState(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  (*(*a1 + 88))(a1);
  if ((a4 & 0x80000000) != 0 || *(a1 + 80) <= a4)
  {
    kaldi::KaldiAssertFailure_("ResetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_6A8.nreloc + 3, "batch_index >= 0 && batch_index < ropts_.num_subbatches", v8);
  }

  if (a2[1] != *(*(a1 + 8) + 48 * a4 + 20))
  {
    kaldi::KaldiAssertFailure_("ResetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_6A8.flags, "sequence_idx.size() == history_state_[batch_index].NumRows()", v8);
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v23);
  *(*(a1 + 8) + 48 * a4 + 32) = a3;
  if (a2[1])
  {
    v10 = 0;
    do
    {
      if ((*(*a2 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v10))
      {
        v11 = *(a1 + 8) + 48 * a4;
        if (v10 >= *(v11 + 20))
        {
          kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v9);
        }

        v12 = (*(v11 + 8) + 4 * *(v11 + 24) * v10);
        v13 = *(v11 + 16);
        v14 = *(v11 + 32);
        v22[1].__locale_ = v12;
        v22[0].__locale_ = &off_276FE0;
        v22[2].__locale_ = v13;
        v22[3].__locale_ = v14;
        kaldi::CuVectorBase<float>::SetZero(v22);
        if (kaldi::g_kaldi_verbose_level >= 3)
        {
          v15 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ", ", 2);
        }
      }

      ++v10;
    }

    while (a2[1] > v10);
  }

  if (kaldi::g_kaldi_verbose_level > 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v22, "ResetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1779, 3);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Reset previous states for utts ", 31);
    std::stringbuf::str();
    if ((v21 & 0x80u) == 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    if ((v21 & 0x80u) == 0)
    {
      v18 = v21;
    }

    else
    {
      v18 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v17, v18);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v22);
  }

  if (v26 < 0)
  {
    operator delete(v25[7].__locale_);
  }

  std::locale::~locale(v25);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1564D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  kaldi::KaldiVlogMessage::~KaldiVlogMessage(&a16);
  std::ostringstream::~ostringstream(&a51);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ResetHistoryState(void *a1)
{
  (*(*a1 + 88))(a1);
  for (i = a1[1]; i != a1[2]; i += 48)
  {
    kaldi::CuMatrixBase<float>::SetZero(i);
  }
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::SetGradientNormalization(uint64_t result, int a2, float a3)
{
  *(result + 152) = a3;
  *(result + 156) = a2;
  *(result + 528) = 0;
  return result;
}

void *virtual thunk tokaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::SetGradientNormalization(void *result, int a2, float a3)
{
  v3 = (result + *(*result - 256));
  v3[38] = a3;
  *(v3 + 39) = a2;
  *(v3 + 528) = 0;
  return result;
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::NormalizeGradients(uint64_t a1, unsigned int a2, float a3, uint64_t a4, uint64_t a5, const char *a6)
{
  if ((a2 & 0x80000000) != 0 || *(a1 + 80) <= a2)
  {
    kaldi::KaldiAssertFailure_("NormalizeGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_568.offset + 2, "batch_index >= 0 && batch_index < ropts_.num_subbatches", a6);
  }

  v8 = a3;
  v9 = *(a1 + 156);
  if (v9 == 1)
  {
    if (a3 > 0.0)
    {
      if (*(a1 + 84) == 1)
      {
        v8 = *(*(a1 + 480) + 4 * a2) * a3;
      }

      v19 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::ClipGradient(v19, v8);
      v20 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::ClipGradient(v20, v8);
      v21 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::ClipGradient(v21, v8);
      if (*(a1 + 208) == 1)
      {
        v22 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a1, a2);
        kaldi::nnet1::UpdatableComponent::ClipGradient(v22, v8);
      }

      if (*(a1 + 224) == 1)
      {
        v23 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, a2);

        kaldi::nnet1::UpdatableComponent::ClipGradient(v23, v8);
      }
    }
  }

  else if (v9 == 3)
  {
    if (a3 >= 0.0 && a3 <= 1.0)
    {
      v10 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::RmspropGradient(v10, *(a1 + 656) + 48 * a2, v8);
      v11 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::RmspropGradient(v11, *(a1 + 680) + 48 * a2, v8);
      v12 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::RmspropGradient(v12, *(a1 + 728) + 32 * a2, v8, v13, v14, v15);
      if (*(a1 + 208) == 1)
      {
        v16 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a1, a2);
        kaldi::nnet1::UpdatableComponent::RmspropGradient(v16, *(a1 + 704) + 48 * a2, v8);
      }

      if (*(a1 + 224) == 1)
      {
        v17 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, a2);
        v18 = *(a1 + 752) + 48 * a2;

        kaldi::nnet1::UpdatableComponent::RmspropGradient(v17, v18, v8);
      }
    }
  }

  else if (a3 > 0.0 && v9 == 2)
  {
    v24 = a2;
    if (*(a1 + 84))
    {
      v8 = *(*(a1 + 480) + 4 * a2) * a3;
    }

    v25 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a1, a2);
    kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v25, (*(a1 + 656) + 48 * v24), v8, v26, v27, v28);
    v29 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a1, a2);
    kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v29, (*(a1 + 680) + 48 * v24), v8, v30, v31, v32);
    v33 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a1, a2);
    kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v33, (*(a1 + 728) + 32 * v24), v34, v35, v36, v8);
    if (*(a1 + 208) == 1)
    {
      v37 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v37, (*(a1 + 704) + 48 * v24), v8, v38, v39, v40);
    }

    if (*(a1 + 224) == 1)
    {
      v41 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, a2);
      v45 = (*(a1 + 752) + 48 * v24);

      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v41, v45, v8, v42, v43, v44);
    }
  }
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::CountZeroCorr(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::AllocateGradients(a1);
  result = (*(*a1 + 208))(a1);
  *a3 = result;
  if (*(a1 + 544) == *(a1 + 536) || *(a1 + 568) == *(a1 + 560))
  {
    v31 = 0;
    goto LABEL_11;
  }

  if (*(a1 + *(*a1 - 24) + 80) == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a1 + *(*a1 - 24) + 80);
  }

  v8 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a1, v7);
  v13 = kaldi::CuMatrixBase<float>::CountZeros(v8, v9, v10, v11, v12);
  v14 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a1, v7);
  v19 = kaldi::CuMatrixBase<float>::CountZeros(v14, v15, v16, v17, v18) + v13;
  v20 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a1, v7);
  result = kaldi::CuVectorBase<float>::CountZeros(v20);
  *a2 = v19 + result;
  if (*(a1 + 208) == 1)
  {
    v21 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a1, v7);
    result = kaldi::CuMatrixBase<float>::CountZeros(v21, v22, v23, v24, v25);
    *a2 += result;
  }

  if (*(a1 + 224) == 1)
  {
    v26 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, v7);
    result = kaldi::CuMatrixBase<float>::CountZeros(v26, v27, v28, v29, v30);
    v31 = *a2 + result;
LABEL_11:
    *a2 = v31;
  }

  return result;
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ApplyCorr(uint64_t a1, int a2, float a3)
{
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::AllocateGradients(a1);
  v6 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
  v7 = -a3;
  v8 = -(a3 * *(a1 + 464));
  v9 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a1, a2);
  kaldi::CuMatrixBase<float>::AddMat(v6, v9, 111, v10, v11, v8, 1.0);
  v12 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
  v13 = -(a3 * *(a1 + 464));
  v14 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a1, a2);
  kaldi::CuMatrixBase<float>::AddMat(v12, v14, 111, v15, v16, v13, 1.0);
  v17 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
  v18 = -(a3 * *(a1 + 464));
  v19 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a1, a2);
  kaldi::CuVectorBase<float>::AddVec(v17, v19, v20, v21, v22, v18, 1.0);
  if (*(a1 + 208) == 1)
  {
    v23 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
    v24 = *(a1 + 464) * v7;
    v25 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a1, a2);
    kaldi::CuMatrixBase<float>::AddMat(v23, v25, 111, v26, v27, v24, 1.0);
  }

  if (*(a1 + 224) == 1)
  {
    v28 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
    v29 = *(a1 + 468) * v7;
    v30 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, a2);

    kaldi::CuMatrixBase<float>::AddMat(v28, v30, 111, v31, v32, v29, 1.0);
  }
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::EnsureBuffers(uint64_t a1)
{
  if ((*(a1 + 240) & 1) == 0)
  {
    v2 = *(a1 + 80);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 8), v2);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 248), v2);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 272), v2);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 296), v2);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 320), v2);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 344), v2);
    if (v2 >= 1)
    {
      v3 = 0;
      do
      {
        kaldi::CuMatrix<float>::Resize(*(a1 + 8) + v3, *(a1 + 96), (*(a1 + 12 + *(*a1 - 24)) + *(a1 + 176)), 0, 0);
        v3 += 48;
      }

      while (48 * v2 != v3);
    }

    std::vector<int>::resize((a1 + 480), v2);
    *(a1 + 240) = 1;
  }
}

float kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Check(uint64_t a1)
{
  if (*(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1) + 20) != 4 * *(a1 + 176))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1642);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "Input weights #rows = ", 22);
    v3 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1) + 20);
    v4 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "; expecting ", 12);
    v5 = *(a1 + 176);
    v6 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "; #cells = ", 11);
    v7 = *(a1 + 176);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  if (*(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1) + 16) != *(a1 + *(*a1 - 24) + 8))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1646);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "Input weights #columns = ", 25);
    v8 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1) + 16);
    v9 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "; expecting ", 12);
    v10 = *(a1 + *(*a1 - 24) + 8);
    v11 = std::ostream::operator<<();
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v11, " (same as input dim)");
    goto LABEL_28;
  }

  if (*(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 20) != 4 * *(a1 + 176))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1650);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "Recurrent weights #rows = ", 26);
    v12 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 20);
    v13 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "; expecting ", 12);
    v14 = *(a1 + 176);
    v15 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "; #cells = ", 11);
    v16 = *(a1 + 176);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  if (*(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 16) != *(a1 + *(*a1 - 24) + 12))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1654);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "Recurrent weights #columns = ", 29);
    v17 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 16);
    v18 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "; expecting ", 12);
    v19 = *(a1 + *(*a1 - 24) + 12);
    v20 = std::ostream::operator<<();
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v20, " (same as output dim)");
    goto LABEL_28;
  }

  if (*(a1 + 208) == 1)
  {
    if (*(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 20) != 3)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1659);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "Peephole weights #rows = ", 25);
      v31 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 20);
      v32 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "; expecting ", 12);
      std::ostream::operator<<();
      goto LABEL_28;
    }

    if (*(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 16) != *(a1 + 176))
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1662);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "Peephole weights #columns = ", 28);
      v33 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 16);
      v34 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "; expecting ", 12);
      v35 = *(a1 + 176);
      v36 = std::ostream::operator<<();
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v36, " (same as #cells)");
      goto LABEL_28;
    }
  }

  if (*(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1) + 16) != 4 * *(a1 + 176))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1667);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "Bias dim = ", 11);
    v21 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1) + 16);
    v22 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "; expecting ", 12);
    v23 = *(a1 + 176);
    v24 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "; #cells = ", 11);
    v25 = *(a1 + 176);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  if (*(a1 + 224) == 1)
  {
    if (*(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 20) == *(a1 + *(*a1 - 24) + 12))
    {
      if (*(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 16) == *(a1 + 176))
      {
        goto LABEL_12;
      }

      kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1675);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "Projection weights #columns = ", 30);
      v41 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 16);
      v42 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "; expecting ", 12);
      v43 = *(a1 + 176);
      v44 = std::ostream::operator<<();
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v44, " (same as #cells)");
    }

    else
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1671);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "Projection weights #rows = ", 27);
      v37 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 20);
      v38 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "; expecting ", 12);
      v39 = *(a1 + *(*a1 - 24) + 12);
      v40 = std::ostream::operator<<();
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v40, " (same as output dim)");
    }

LABEL_28:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v45);
  }

LABEL_12:
  if (*(a1 + 464) < 0.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1681);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "learn_rate_coeff_ must not be negative; found: ", 47);
    v26 = *(a1 + 464);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  if (*(a1 + 468) < 0.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1684);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "projection_learn_rate_coeff_ must not be negative; found: ", 58);
    v27 = *(a1 + 468);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  if (*(a1 + 472) < 0.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1688);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "max_norm_ must not be negative; found: ", 39);
    v28 = *(a1 + 472);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  if (*(a1 + 152) < 0.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1691);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "max_grad_ must not be negative; found: ", 39);
    v29 = *(a1 + 152);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  result = *(a1 + 476);
  if (result < 0.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1694);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "max_cell_values_ must not be negative; found: ", 46);
    v30 = *(a1 + 476);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  return result;
}

double kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::LstmComponent(uint64_t a1, int a2, int a3)
{
  *(a1 + 856) = a2;
  *(a1 + 860) = a3;
  *(a1 + 864) = 0;
  *(a1 + 872) = 0;
  *(a1 + 888) = 0;
  *(a1 + 880) = 0;
  *(a1 + 848) = off_27A660;
  *(a1 + 896) = off_282980;
  *(a1 + 904) = xmmword_21A620;
  *(a1 + 920) = 0x3BF800000;
  *(a1 + 928) = 1;
  *(a1 + 932) = 0;
  *(a1 + 934) = 0;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(a1, off_281120);
  *v4 = off_280D10;
  *(v4 + 848) = off_281000;
  *(v4 + 160) = off_280EA0;
  *(v4 + 168) = off_280EC8;
  *(v4 + 176) = a3;
  *(v4 + 192) = 0;
  *(v4 + 200) = 0;
  *(v4 + 184) = 0;
  *(v4 + 208) = 1;
  *(v4 + 216) = 0;
  *(v4 + 224) = 0;
  *(v4 + 232) = 0;
  *(v4 + 240) = 0;
  *(v4 + 456) = 0;
  result = 0.0;
  *(v4 + 248) = 0u;
  *(v4 + 264) = 0u;
  *(v4 + 280) = 0u;
  *(v4 + 296) = 0u;
  *(v4 + 312) = 0u;
  *(v4 + 328) = 0u;
  *(v4 + 344) = 0u;
  *(v4 + 360) = 0u;
  *(v4 + 376) = 0u;
  *(v4 + 392) = 0u;
  *(v4 + 408) = 0u;
  *(v4 + 424) = 0u;
  *(v4 + 440) = 0u;
  *(v4 + 464) = 0x3DCCCCCD3F800000;
  *(v4 + 472) = 0u;
  *(v4 + 488) = 0u;
  *(v4 + 504) = 0u;
  *(v4 + 513) = 0u;
  *(v4 + 536) = 0u;
  *(v4 + 552) = 0u;
  *(v4 + 568) = 0u;
  *(v4 + 584) = 0u;
  *(v4 + 600) = 0u;
  *(v4 + 616) = 0u;
  *(v4 + 632) = 0u;
  *(v4 + 648) = 0u;
  *(v4 + 664) = 0u;
  *(v4 + 680) = 0u;
  *(v4 + 696) = 0u;
  *(v4 + 712) = 0u;
  *(v4 + 728) = 0u;
  *(v4 + 744) = 0u;
  *(v4 + 760) = 0u;
  *(v4 + 776) = 0u;
  *(v4 + 792) = 0u;
  *(v4 + 808) = 0u;
  *(v4 + 824) = 0u;
  *(v4 + 840) = 0;
  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeightsGradient(uint64_t a1, int a2)
{
  v2 = *(a1 + 536);
  if (a2 >= ((*(a1 + 544) - v2) >> 3))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "InputWeightsGradient", "../subproject/libquasar/libkaldi/src/nnet/nnet-lstm.h", 257);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "input_weights_gradient_.size() > ib");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "InputWeightsGradient", "../subproject/libquasar/libkaldi/src/nnet/nnet-lstm.h", 258);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "input_weights_gradient_[ib]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

{
  v2 = *(a1 + 536);
  if (a2 >= ((*(a1 + 544) - v2) >> 3))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "InputWeightsGradient", "../subproject/libquasar/libkaldi/src/nnet/nnet-lstm.h", 262);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "input_weights_gradient_.size() > ib");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "InputWeightsGradient", "../subproject/libquasar/libkaldi/src/nnet/nnet-lstm.h", 263);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "input_weights_gradient_[ib]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeightsGradient(uint64_t a1, int a2)
{
  v2 = *(a1 + 560);
  if (a2 >= ((*(a1 + 568) - v2) >> 3))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "RecurrentWeightsGradient", "../subproject/libquasar/libkaldi/src/nnet/nnet-lstm.h", 268);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "recurrent_weights_gradient_.size() > ib");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "RecurrentWeightsGradient", "../subproject/libquasar/libkaldi/src/nnet/nnet-lstm.h", 269);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "recurrent_weights_gradient_[ib]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

{
  v2 = *(a1 + 560);
  if (a2 >= ((*(a1 + 568) - v2) >> 3))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "RecurrentWeightsGradient", "../subproject/libquasar/libkaldi/src/nnet/nnet-lstm.h", 273);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "recurrent_weights_gradient_.size() > ib");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "RecurrentWeightsGradient", "../subproject/libquasar/libkaldi/src/nnet/nnet-lstm.h", 274);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "recurrent_weights_gradient_[ib]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::BiasGradient(uint64_t a1, int a2)
{
  v2 = *(a1 + 608);
  if (a2 >= ((*(a1 + 616) - v2) >> 3))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "BiasGradient", "../subproject/libquasar/libkaldi/src/nnet/nnet-lstm.h", 279);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "bias_gradient_.size() > ib");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "BiasGradient", "../subproject/libquasar/libkaldi/src/nnet/nnet-lstm.h", 280);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "bias_gradient_[ib]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

{
  v2 = *(a1 + 608);
  if (a2 >= ((*(a1 + 616) - v2) >> 3))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "BiasGradient", "../subproject/libquasar/libkaldi/src/nnet/nnet-lstm.h", 284);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "bias_gradient_.size() > ib");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "BiasGradient", "../subproject/libquasar/libkaldi/src/nnet/nnet-lstm.h", 285);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "bias_gradient_[ib]");
LABEL_6:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeightsGradient(uint64_t a1, int a2)
{
  if ((*(a1 + 208) & 1) == 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "PeepholeWeightsGradient", "../subproject/libquasar/libkaldi/src/nnet/nnet-lstm.h", 290);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "has_peepholes_");
    goto LABEL_8;
  }

  v2 = *(a1 + 584);
  if (a2 >= ((*(a1 + 592) - v2) >> 3))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "PeepholeWeightsGradient", "../subproject/libquasar/libkaldi/src/nnet/nnet-lstm.h", 291);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "peephole_weights_gradient_.size() > ib");
    goto LABEL_8;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "PeepholeWeightsGradient", "../subproject/libquasar/libkaldi/src/nnet/nnet-lstm.h", 292);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "peephole_weights_gradient_[ib]");
LABEL_8:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

{
  if ((*(a1 + 208) & 1) == 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "PeepholeWeightsGradient", "../subproject/libquasar/libkaldi/src/nnet/nnet-lstm.h", 296);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "has_peepholes_");
    goto LABEL_8;
  }

  v2 = *(a1 + 584);
  if (a2 >= ((*(a1 + 592) - v2) >> 3))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "PeepholeWeightsGradient", "../subproject/libquasar/libkaldi/src/nnet/nnet-lstm.h", 297);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "peephole_weights_gradient_.size() > ib");
    goto LABEL_8;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "PeepholeWeightsGradient", "../subproject/libquasar/libkaldi/src/nnet/nnet-lstm.h", 298);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "peephole_weights_gradient_[ib]");
LABEL_8:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeightsGradient(uint64_t a1, int a2)
{
  if ((*(a1 + 224) & 1) == 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "ProjectionWeightsGradient", "../subproject/libquasar/libkaldi/src/nnet/nnet-lstm.h", 303);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "has_projection_layer_");
    goto LABEL_8;
  }

  v2 = *(a1 + 632);
  if (a2 >= ((*(a1 + 640) - v2) >> 3))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "ProjectionWeightsGradient", "../subproject/libquasar/libkaldi/src/nnet/nnet-lstm.h", 304);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "projection_weights_gradient_.size() > ib");
    goto LABEL_8;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "ProjectionWeightsGradient", "../subproject/libquasar/libkaldi/src/nnet/nnet-lstm.h", 305);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "projection_weights_gradient_[ib]");
LABEL_8:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

{
  if ((*(a1 + 224) & 1) == 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "ProjectionWeightsGradient", "../subproject/libquasar/libkaldi/src/nnet/nnet-lstm.h", 309);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "has_projection_layer_");
    goto LABEL_8;
  }

  v2 = *(a1 + 632);
  if (a2 >= ((*(a1 + 640) - v2) >> 3))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "ProjectionWeightsGradient", "../subproject/libquasar/libkaldi/src/nnet/nnet-lstm.h", 310);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "projection_weights_gradient_.size() > ib");
    goto LABEL_8;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "ProjectionWeightsGradient", "../subproject/libquasar/libkaldi/src/nnet/nnet-lstm.h", 311);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "projection_weights_gradient_[ib]");
LABEL_8:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::LstmComponent(uint64_t a1, uint64_t a2)
{
  v4 = a2 + *(*a2 - 24);
  *(a1 + 848) = off_279038;
  v5 = *(v4 + 8);
  *(a1 + 864) = *(v4 + 16);
  *(a1 + 856) = v5;
  *(a1 + 872) = 0;
  *(a1 + 888) = 0;
  *(a1 + 880) = 0;
  std::vector<kaldi::EventMap *>::__init_with_size[abi:ne200100]<kaldi::EventMap **,kaldi::EventMap **>(a1 + 872, *(v4 + 24), *(v4 + 32), (*(v4 + 32) - *(v4 + 24)) >> 3);
  *(a1 + 848) = off_27A660;
  *(a1 + 896) = off_282980;
  v6 = *(v4 + 56);
  *(a1 + 919) = *(v4 + 71);
  *(a1 + 904) = v6;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(a1, off_281120, a2);
  *a1 = off_280D10;
  *(a1 + 848) = off_281000;
  *(a1 + 160) = off_280EA0;
  *(a1 + 168) = off_280EC8;
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = 0;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = 0;
  v7 = *(a2 + 240);
  v8 = *(a2 + 241);
  *(a1 + 248) = 0;
  *(a1 + 240) = v7;
  *(a1 + 241) = v8;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 248, *(a2 + 248), *(a2 + 256), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 256) - *(a2 + 248)) >> 4));
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 272, *(a2 + 272), *(a2 + 280), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 280) - *(a2 + 272)) >> 4));
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 296, *(a2 + 296), *(a2 + 304), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 304) - *(a2 + 296)) >> 4));
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 320, *(a2 + 320), *(a2 + 328), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 328) - *(a2 + 320)) >> 4));
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 344, *(a2 + 344), *(a2 + 352), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 352) - *(a2 + 344)) >> 4));
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 368, *(a2 + 368), *(a2 + 376), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 376) - *(a2 + 368)) >> 4));
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 392, *(a2 + 392), *(a2 + 400), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 400) - *(a2 + 392)) >> 4));
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 416, *(a2 + 416), *(a2 + 424), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 424) - *(a2 + 416)) >> 4));
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 440, *(a2 + 440), *(a2 + 448), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 448) - *(a2 + 440)) >> 4));
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 480) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 480, *(a2 + 480), *(a2 + 488), (*(a2 + 488) - *(a2 + 480)) >> 2);
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 504, *(a2 + 504), *(a2 + 512), (*(a2 + 512) - *(a2 + 504)) >> 2);
  *(a1 + 528) = *(a2 + 528);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 536), (*(a2 + 544) - *(a2 + 536)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 560), (*(a2 + 568) - *(a2 + 560)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 584), (*(a2 + 592) - *(a2 + 584)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::vector[abi:ne200100]((a1 + 608), (*(a2 + 616) - *(a2 + 608)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 632), (*(a2 + 640) - *(a2 + 632)) >> 3);
  *(a1 + 672) = 0;
  *(a1 + 656) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 656, *(a2 + 656), *(a2 + 664), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 664) - *(a2 + 656)) >> 4));
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 680, *(a2 + 680), *(a2 + 688), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 688) - *(a2 + 680)) >> 4));
  *(a1 + 720) = 0;
  *(a1 + 704) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 704, *(a2 + 704), *(a2 + 712), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 712) - *(a2 + 704)) >> 4));
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(a1 + 728, *(a2 + 728), *(a2 + 736), (*(a2 + 736) - *(a2 + 728)) >> 5);
  *(a1 + 768) = 0;
  *(a1 + 752) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 752, *(a2 + 752), *(a2 + 760), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 760) - *(a2 + 752)) >> 4));
  *(a1 + 840) = 0;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  if (*(a1 + *(*a1 - 24) + 16) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v22, "LstmComponent", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 151);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v22);
  }

  if (*(a2 + 184))
  {
    kaldi::NewCuSubOrMat<signed char>();
  }

  if (*(a2 + 192))
  {
    kaldi::NewCuSubOrMat<signed char>();
  }

  if (*(a2 + 200))
  {
    kaldi::NewCuSubOrVec<float>();
  }

  v10 = *(a2 + 216);
  if (v10)
  {
    kaldi::NewCuSubOrMat<float>(v10, 0);
  }

  if (*(a2 + 232))
  {
    kaldi::NewCuSubOrMat<signed char>();
  }

  v11 = *(a1 + 544);
  v12 = *(a1 + 536);
  v13 = v11 - v12;
  if (v11 - v12 != *(a1 + 568) - *(a1 + 560))
  {
    v20 = "input_weights_gradient_.size() == recurrent_weights_gradient_.size()";
    p_flags = (&stru_68 + 58);
    goto LABEL_41;
  }

  if (v13 != *(a1 + 616) - *(a1 + 608))
  {
    v20 = "input_weights_gradient_.size() == bias_gradient_.size()";
    p_flags = (&stru_68 + 59);
    goto LABEL_41;
  }

  if (*(a1 + 208) == 1 && v13 != *(a1 + 592) - *(a1 + 584))
  {
    v20 = "input_weights_gradient_.size() == peephole_weights_gradient_.size()";
    p_flags = (&stru_68 + 61);
    goto LABEL_41;
  }

  if (*(a1 + 224) == 1 && v13 != *(a1 + 640) - *(a1 + 632))
  {
    v20 = "input_weights_gradient_.size() == projection_weights_gradient_.size()";
    p_flags = &stru_68.flags;
LABEL_41:
    kaldi::KaldiAssertFailure_("LstmComponent", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", p_flags, v20, v9);
  }

  if (v11 != v12)
  {
    v14 = 0;
    do
    {
      if (*(*(a2 + 536) + 8 * v14))
      {
        v15 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeightsGradient(a2, v14);
        kaldi::NewCuSubOrMat<float>(v15, 0);
      }

      if (*(*(a2 + 560) + 8 * v14))
      {
        v16 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeightsGradient(a2, v14);
        kaldi::NewCuSubOrMat<float>(v16, 0);
      }

      if (*(*(a2 + 608) + 8 * v14))
      {
        kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::BiasGradient(a2, v14);
        kaldi::NewCuSubOrVec<float>();
      }

      if (*(a1 + 208) == 1 && *(*(a2 + 584) + 8 * v14))
      {
        v17 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeightsGradient(a2, v14);
        kaldi::NewCuSubOrMat<float>(v17, 0);
      }

      if (*(a1 + 224) == 1 && *(*(a2 + 632) + 8 * v14))
      {
        v18 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeightsGradient(a2, v14);
        kaldi::NewCuSubOrMat<float>(v18, 0);
      }

      ++v14;
    }

    while (v14 < (*(a1 + 544) - *(a1 + 536)) >> 3);
  }

  if (*(a2 + 784) != *(a2 + 776))
  {
    kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InitResidualAggregator(a1, (a1 + 776));
  }

  return a1;
}

void sub_158628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, kaldi::nnet1::UpdatableComponent *a24, uint64_t *a25, uint64_t *a26, uint64_t *a27, uint64_t a28)
{
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v29);
  a28 = a9;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = a10;
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = a11;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = a12;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = a13;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a28);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a28);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a28);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a28);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a28);
  v31 = *(v28 + 63);
  if (v31)
  {
    *(v28 + 64) = v31;
    operator delete(v31);
  }

  v32 = *(v28 + 60);
  if (v32)
  {
    *(v28 + 61) = v32;
    operator delete(v32);
  }

  a28 = a14;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = a15;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = a16;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = a17;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = a18;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = a19;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = a20;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = a21;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a28);
  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100](a25, 0);
  v33 = *(v28 + 27);
  *(v28 + 27) = 0;
  if (v33)
  {
    (*(*v33 + 24))(v33);
  }

  v34 = *(v28 + 25);
  *(v28 + 25) = 0;
  if (v34)
  {
    (*(*v34 + 16))(v34);
  }

  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100](a26, 0);
  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100](a27, 0);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a22);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a23);
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(v28, off_281120);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a24);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::~LstmComponent(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[3];
  *(a1 + 160) = off_280EA0;
  *(a1 + 168) = off_280EC8;
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator((a1 + 776));
  v9 = (a1 + 752);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 728);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 704);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 680);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 656);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 632);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 608);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 584);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 560);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 536);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v5 = *(a1 + 504);
  if (v5)
  {
    *(a1 + 512) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 480);
  if (v6)
  {
    *(a1 + 488) = v6;
    operator delete(v6);
  }

  v9 = (a1 + 440);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 416);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 392);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 368);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 344);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 320);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 296);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 272);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = (a1 + 248);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100]((a1 + 232), 0);
  v7 = *(a1 + 216);
  *(a1 + 216) = 0;
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  v8 = *(a1 + 200);
  *(a1 + 200) = 0;
  if (v8)
  {
    (*(*v8 + 16))(v8);
  }

  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100]((a1 + 192), 0);
  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100]((a1 + 184), 0);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1 + 168);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1 + 160);
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(a1, a2 + 1);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::~LstmComponent(uint64_t a1)
{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v2 + 848));
  return a1;
}

void non-virtual thunk tokaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::~LstmComponent(uint64_t a1)
{

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((a1 + 688));
}

{

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((a1 + 680));
}

{
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::~LstmComponent(a1 - 160);
}

{
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::~LstmComponent(a1 - 168);
}

void virtual thunk tokaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::~LstmComponent(void *a1)
{
  v2 = (v1 + 848);

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
}

{
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::~LstmComponent(a1 + *(*a1 - 24));
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::~LstmComponent(uint64_t a1)
{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 848));

  operator delete();
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::LstmComponent<kaldi::QuantizedMatrix<signed char>>(uint64_t a1, uint64_t a2)
{
  v4 = a2 + *(*a2 - 24);
  *(a1 + 848) = off_279038;
  v5 = *(v4 + 8);
  *(a1 + 864) = *(v4 + 16);
  *(a1 + 856) = v5;
  *(a1 + 872) = 0;
  *(a1 + 888) = 0;
  *(a1 + 880) = 0;
  std::vector<kaldi::EventMap *>::__init_with_size[abi:ne200100]<kaldi::EventMap **,kaldi::EventMap **>(a1 + 872, *(v4 + 24), *(v4 + 32), (*(v4 + 32) - *(v4 + 24)) >> 3);
  *(a1 + 848) = off_27A660;
  *(a1 + 896) = off_282980;
  v6 = *(v4 + 56);
  *(a1 + 919) = *(v4 + 71);
  *(a1 + 904) = v6;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(a1, off_281560, a2);
  *a1 = off_281150;
  *(a1 + 848) = off_281440;
  *(a1 + 160) = off_2812E0;
  *(a1 + 168) = off_281308;
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = 0;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = 0;
  v7 = *(a2 + 240);
  v8 = *(a2 + 241);
  *(a1 + 248) = 0;
  *(a1 + 240) = v7;
  *(a1 + 241) = v8;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 248, *(a2 + 248), *(a2 + 256), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 256) - *(a2 + 248)) >> 4));
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 272, *(a2 + 272), *(a2 + 280), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 280) - *(a2 + 272)) >> 4));
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 296, *(a2 + 296), *(a2 + 304), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 304) - *(a2 + 296)) >> 4));
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 320, *(a2 + 320), *(a2 + 328), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 328) - *(a2 + 320)) >> 4));
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 344, *(a2 + 344), *(a2 + 352), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 352) - *(a2 + 344)) >> 4));
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 368, *(a2 + 368), *(a2 + 376), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 376) - *(a2 + 368)) >> 4));
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 392, *(a2 + 392), *(a2 + 400), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 400) - *(a2 + 392)) >> 4));
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 416, *(a2 + 416), *(a2 + 424), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 424) - *(a2 + 416)) >> 4));
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 440, *(a2 + 440), *(a2 + 448), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 448) - *(a2 + 440)) >> 4));
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 480) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 480, *(a2 + 480), *(a2 + 488), (*(a2 + 488) - *(a2 + 480)) >> 2);
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 504, *(a2 + 504), *(a2 + 512), (*(a2 + 512) - *(a2 + 504)) >> 2);
  *(a1 + 528) = *(a2 + 528);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 536), (*(a2 + 544) - *(a2 + 536)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 560), (*(a2 + 568) - *(a2 + 560)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 584), (*(a2 + 592) - *(a2 + 584)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::vector[abi:ne200100]((a1 + 608), (*(a2 + 616) - *(a2 + 608)) >> 3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::vector[abi:ne200100]((a1 + 632), (*(a2 + 640) - *(a2 + 632)) >> 3);
  *(a1 + 672) = 0;
  *(a1 + 656) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 656, *(a2 + 656), *(a2 + 664), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 664) - *(a2 + 656)) >> 4));
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 680, *(a2 + 680), *(a2 + 688), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 688) - *(a2 + 680)) >> 4));
  *(a1 + 720) = 0;
  *(a1 + 704) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 704, *(a2 + 704), *(a2 + 712), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 712) - *(a2 + 704)) >> 4));
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(a1 + 728, *(a2 + 728), *(a2 + 736), (*(a2 + 736) - *(a2 + 728)) >> 5);
  *(a1 + 768) = 0;
  *(a1 + 752) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 752, *(a2 + 752), *(a2 + 760), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 760) - *(a2 + 752)) >> 4));
  *(a1 + 840) = 0;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  if (*(a1 + *(*a1 - 24) + 16) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v22, "LstmComponent", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 248);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v22);
  }

  if (*(a2 + 184))
  {
    operator new();
  }

  if (*(a2 + 192))
  {
    operator new();
  }

  if (*(a2 + 200))
  {
    kaldi::NewCuSubOrVec<float>();
  }

  v10 = *(a2 + 216);
  if (v10)
  {
    kaldi::NewCuSubOrMat<float>(v10, 0);
  }

  if (*(a2 + 232))
  {
    operator new();
  }

  v11 = *(a1 + 544);
  v12 = *(a1 + 536);
  v13 = v11 - v12;
  if (v11 - v12 != *(a1 + 568) - *(a1 + 560))
  {
    v20 = "input_weights_gradient_.size() == recurrent_weights_gradient_.size()";
    v21 = (&stru_B8 + 75);
    goto LABEL_41;
  }

  if (v13 != *(a1 + 616) - *(a1 + 608))
  {
    v20 = "input_weights_gradient_.size() == bias_gradient_.size()";
    v21 = (&stru_B8 + 76);
    goto LABEL_41;
  }

  if (*(a1 + 208) == 1 && v13 != *(a1 + 592) - *(a1 + 584))
  {
    v20 = "input_weights_gradient_.size() == peephole_weights_gradient_.size()";
    v21 = (&stru_B8 + 78);
    goto LABEL_41;
  }

  if (*(a1 + 224) == 1 && v13 != *(a1 + 640) - *(a1 + 632))
  {
    v20 = "input_weights_gradient_.size() == projection_weights_gradient_.size()";
    v21 = &stru_108.sectname[1];
LABEL_41:
    kaldi::KaldiAssertFailure_("LstmComponent", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", v21, v20, v9);
  }

  if (v11 != v12)
  {
    v14 = 0;
    do
    {
      if (*(*(a2 + 536) + 8 * v14))
      {
        v15 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeightsGradient(a2, v14);
        kaldi::NewCuSubOrMat<float>(v15, 0);
      }

      if (*(*(a2 + 560) + 8 * v14))
      {
        v16 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeightsGradient(a2, v14);
        kaldi::NewCuSubOrMat<float>(v16, 0);
      }

      if (*(*(a2 + 608) + 8 * v14))
      {
        kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::BiasGradient(a2, v14);
        kaldi::NewCuSubOrVec<float>();
      }

      if (*(a1 + 208) == 1 && *(*(a2 + 584) + 8 * v14))
      {
        v17 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeightsGradient(a2, v14);
        kaldi::NewCuSubOrMat<float>(v17, 0);
      }

      if (*(a1 + 224) == 1 && *(*(a2 + 632) + 8 * v14))
      {
        v18 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeightsGradient(a2, v14);
        kaldi::NewCuSubOrMat<float>(v18, 0);
      }

      ++v14;
    }

    while (v14 < (*(a1 + 544) - *(a1 + 536)) >> 3);
  }

  if (*(a2 + 784) != *(a2 + 776))
  {
    kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InitResidualAggregator(a1, (a1 + 776));
  }

  return a1;
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InitData(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + *(*a1 - 24) + 12);
  v72 = -1;
  v73 = v4;
  v70 = 0x40000000;
  v71 = -1073741824;
  v68 = -1073741824;
  v69 = 1036831949;
  v67 = 0x40000000;
  kaldi::nnet1::Component::TypeToMarker((&dword_0 + 2), &v66);
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 156), &v65);
  memset(v64, 0, sizeof(v64));
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_227;
    }

    kaldi::ReadToken(a2, 0, v64, v5, v6);
    if ((SHIBYTE(v64[2]) & 0x80000000) == 0)
    {
      break;
    }

    v12 = v64[1];
    if (v64[1] > 14)
    {
      if (v64[1] > 20)
      {
        if (v64[1] == 21)
        {
          if (*v64[0] != 0x47746567726F463CLL || *(v64[0] + 8) != 0x5273616942657461 || *(v64[0] + 13) != 0x3E65676E61527361)
          {
            goto LABEL_226;
          }

LABEL_126:
          v25 = &v67;
LABEL_213:
          kaldi::ReadBasicType<float>(a2, 0, v25, v7, v8);
          goto LABEL_214;
        }

        if (v64[1] == 25)
        {
LABEL_106:
          v34 = *v64[0] == 0x7463656A6F72503CLL && *(v64[0] + 8) == 0x6E7261654C6E6F69 && *(v64[0] + 16) == 0x66656F4365746152 && *(v64[0] + 24) == 62;
          v25 = (a1 + 468);
          if (v34)
          {
            goto LABEL_213;
          }

          goto LABEL_173;
        }

        goto LABEL_154;
      }

      if (v64[1] != 15)
      {
        if (v64[1] == 20)
        {
          if (*v64[0] != 0x47746567726F463CLL || *(v64[0] + 8) != 0x4D73616942657461 || *(v64[0] + 16) != 1047421285)
          {
            goto LABEL_226;
          }

LABEL_82:
          v25 = &v68;
          goto LABEL_213;
        }

        goto LABEL_154;
      }

      v9 = v64[0];
LABEL_100:
      v29 = *v9;
      v30 = *(v9 + 7);
      v31 = v29 == 0x61526E7261654C3CLL && v30 == 0x3E66656F43657461;
      v25 = (a1 + 464);
      if (v31)
      {
        goto LABEL_213;
      }

      v12 = v64[1];
      if ((v64[2] & 0x8000000000000000) != 0 && v64[1] == 25)
      {
        goto LABEL_106;
      }

      if ((v64[2] & 0x8000000000000000) == 0)
      {
        if (HIBYTE(v64[2]) <= 0xBu)
        {
          goto LABEL_139;
        }

LABEL_137:
        if (HIBYTE(v64[2]) == 12)
        {
LABEL_32:
          if (v64[0] != 0x536D6F646E61523CLL || LODWORD(v64[1]) != 1046766949)
          {
            goto LABEL_226;
          }

LABEL_37:
          v16 = &v72;
LABEL_134:
          kaldi::ReadBasicType<int>(a2, 0, v16, v7, v8);
          goto LABEL_214;
        }

LABEL_200:
        if (HIBYTE(v64[2]) != 18)
        {
          if (HIBYTE(v64[2]) != 19)
          {
            goto LABEL_226;
          }

          v9 = v64;
          goto LABEL_203;
        }

        if (v64[0] != 0x4374757074754F3CLL || v64[1] != 0x65756C61566C6C65 || LOWORD(v64[2]) != 15987)
        {
          goto LABEL_226;
        }

        goto LABEL_225;
      }

      goto LABEL_154;
    }

    if (v64[1] != 10)
    {
      if (v64[1] == 11)
      {
        if (*v64[0] != 0x6E6152736169423CLL || *(v64[0] + 3) != 0x3E65676E61527361)
        {
LABEL_226:
          if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v64, "</Component>"))
          {
            kaldi::KaldiErrorMessage::KaldiErrorMessage(v63, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 351);
            v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "Invalid token ", 14);
            if (v64[2] >= 0)
            {
              v58 = v64;
            }

            else
            {
              v58 = v64[0];
            }

            if (v64[2] >= 0)
            {
              v59 = HIBYTE(v64[2]);
            }

            else
            {
              v59 = v64[1];
            }

            v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, v58, v59);
            v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, ". Allowed tokens: ", 18);
            v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, "(NumCells|BiasMean|BiasRange|ForgetGateBiasMean|ForgetGateBiasRange|ParamStddev|LearnRateCoef|ProjectionLearnRateCoef|MaxNorm|", 126);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "MaxGrad|MaxCell|NoPeep|InitTransformType|GradientNormType|RandomSeed)", 69);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(v63);
          }

LABEL_227:
          kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::AllocateParams(a1, v73);
        }

        goto LABEL_132;
      }

      if (v64[1] == 13)
      {
        if (*v64[0] != 0x74536D617261503CLL || *(v64[0] + 5) != 0x3E7665646474536DLL)
        {
          goto LABEL_226;
        }

        goto LABEL_88;
      }

LABEL_154:
      if (v12 == 9)
      {
        v44 = *v64[0] == 0x6D726F4E78614D3CLL && *(v64[0] + 8) == 62;
        v25 = (a1 + 472);
        if (v44)
        {
          goto LABEL_213;
        }

        v45 = *v64[0] == 0x6461724778614D3CLL && *(v64[0] + 8) == 62;
        v25 = (a1 + 152);
        if (v45)
        {
          goto LABEL_213;
        }
      }

      else if (v12 == 18)
      {
        v41 = *v64[0] == 0x6E6569646172473CLL && *(v64[0] + 8) == 0x7079546D726F4E74;
        if (v41 && *(v64[0] + 16) == 15973)
        {
          goto LABEL_164;
        }
      }

      goto LABEL_173;
    }

    if (*v64[0] == 0x6C6C65436D754E3CLL && *(v64[0] + 8) == 15987)
    {
LABEL_133:
      v16 = &v73;
      goto LABEL_134;
    }

    if (*v64[0] == 0x61654D736169423CLL && *(v64[0] + 8) == 15982)
    {
      goto LABEL_98;
    }

LABEL_173:
    if (v64[1] == 9)
    {
      v49 = *v64[0] == 0x6C6C654378614D3CLL && *(v64[0] + 8) == 62;
      v25 = (a1 + 476);
      if (v49)
      {
        goto LABEL_213;
      }

      if ((v64[2] & 0x8000000000000000) == 0)
      {
        goto LABEL_199;
      }
    }

    if (v64[1] == 12)
    {
      if (*v64[0] == 0x536D6F646E61523CLL && *(v64[0] + 8) == 1046766949)
      {
        goto LABEL_37;
      }

      if ((v64[2] & 0x8000000000000000) == 0)
      {
LABEL_199:
        if (HIBYTE(v64[2]) == 8)
        {
          goto LABEL_215;
        }

        goto LABEL_200;
      }
    }

    if (v64[1] == 8)
    {
      if (*v64[0] == 0x3E706565506F4E3CLL)
      {
        goto LABEL_216;
      }

      if ((v64[2] & 0x8000000000000000) == 0)
      {
        goto LABEL_226;
      }
    }

    if (v64[1] != 18)
    {
      goto LABEL_192;
    }

    if (*v64[0] != 0x4374757074754F3CLL || *(v64[0] + 8) != 0x65756C61566C6C65 || *(v64[0] + 16) != 15987)
    {
      if ((v64[2] & 0x8000000000000000) == 0)
      {
        goto LABEL_226;
      }

LABEL_192:
      if (v64[1] != 19)
      {
        goto LABEL_226;
      }

      v9 = v64[0];
LABEL_203:
      v50 = *v9;
      v51 = v9[1];
      v52 = *(v9 + 11);
      if (v50 != 0x61725474696E493CLL || v51 != 0x79546D726F66736ELL || v52 != 0x3E657079546D726FLL)
      {
        goto LABEL_226;
      }

      v43 = &v66;
LABEL_212:
      kaldi::ReadToken(a2, 0, v43, v7, v8);
      goto LABEL_214;
    }

LABEL_225:
    *(a1 + 209) = 1;
LABEL_214:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (HIBYTE(v64[2]) <= 0xCu)
  {
    if (HIBYTE(v64[2]) > 9u)
    {
      if (HIBYTE(v64[2]) == 10)
      {
        if (v64[0] == 0x6C6C65436D754E3CLL && LOWORD(v64[1]) == 15987)
        {
          goto LABEL_133;
        }

        if (v64[0] != 0x61654D736169423CLL || LOWORD(v64[1]) != 15982)
        {
          goto LABEL_226;
        }

LABEL_98:
        v25 = &v71;
        goto LABEL_213;
      }

      if (HIBYTE(v64[2]) != 11)
      {
        goto LABEL_32;
      }

      if (v64[0] != 0x6E6152736169423CLL || *(v64 + 3) != 0x3E65676E61527361)
      {
        goto LABEL_226;
      }

LABEL_132:
      v25 = &v70;
      goto LABEL_213;
    }

LABEL_139:
    if (HIBYTE(v64[2]) != 8)
    {
      if (HIBYTE(v64[2]) != 9)
      {
        goto LABEL_226;
      }

      v38 = v64[0] == 0x6D726F4E78614D3CLL && LOBYTE(v64[1]) == 62;
      v25 = (a1 + 472);
      if (!v38)
      {
        v39 = v64[0] == 0x6461724778614D3CLL && LOBYTE(v64[1]) == 62;
        v25 = (a1 + 152);
        if (!v39)
        {
          v40 = v64[0] == 0x6C6C654378614D3CLL && LOBYTE(v64[1]) == 62;
          v25 = (a1 + 476);
          if (!v40)
          {
            goto LABEL_226;
          }
        }
      }

      goto LABEL_213;
    }

LABEL_215:
    if (v64[0] != 0x3E706565506F4E3CLL)
    {
      goto LABEL_226;
    }

LABEL_216:
    *(a1 + 208) = 0;
    goto LABEL_214;
  }

  v9 = v64;
  if (HIBYTE(v64[2]) > 0x12u)
  {
    if (HIBYTE(v64[2]) == 19)
    {
      goto LABEL_203;
    }

    if (HIBYTE(v64[2]) != 20)
    {
      if (HIBYTE(v64[2]) != 21)
      {
        goto LABEL_226;
      }

      v17 = v64[0] == 0x47746567726F463CLL && v64[1] == 0x5273616942657461;
      if (!v17 || *(&v64[1] + 5) != 0x3E65676E61527361)
      {
        goto LABEL_226;
      }

      goto LABEL_126;
    }

    if (v64[0] != 0x47746567726F463CLL || v64[1] != 0x4D73616942657461 || LODWORD(v64[2]) != 1047421285)
    {
      goto LABEL_226;
    }

    goto LABEL_82;
  }

  if (HIBYTE(v64[2]) == 13)
  {
    if (v64[0] != 0x74536D617261503CLL || *(v64 + 5) != 0x3E7665646474536DLL)
    {
      goto LABEL_226;
    }

LABEL_88:
    v25 = &v69;
    goto LABEL_213;
  }

  if (HIBYTE(v64[2]) != 15)
  {
    if (HIBYTE(v64[2]) != 18)
    {
      goto LABEL_226;
    }

    if (v64[0] == 0x6E6569646172473CLL && v64[1] == 0x7079546D726F4E74 && LOWORD(v64[2]) == 15973)
    {
LABEL_164:
      v43 = &v65;
      goto LABEL_212;
    }

    goto LABEL_137;
  }

  goto LABEL_100;
}

void sub_15AA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  kaldi::Vector<float>::Destroy(va);
  kaldi::GaussRandomNumber::~GaussRandomNumber(va1);
  if (*(v3 - 185) < 0)
  {
    operator delete(*(v3 - 208));
  }

  if (*(v3 - 161) < 0)
  {
    operator delete(*(v3 - 184));
  }

  if (*(v3 - 137) < 0)
  {
    operator delete(*(v3 - 160));
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::AllocateParams(uint64_t a1, int a2)
{
  *(a1 + 176) = a2;
  if (*(a1 + *(*a1 - 24) + 12) > a2)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v6, "AllocateParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1249);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "# LSTM cells (", 14);
    v3 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, ") should not be less than output dim (", 38);
    v4 = *(a1 + *(*a1 - 24) + 12);
    v5 = std::ostream::operator<<();
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, ").");
  }

  else
  {
    if (!*(a1 + 184))
    {
      operator new();
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(v6, "AllocateParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1253);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, "input_weights_ thought to be un-initialized here");
  }

  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v6);
}

uint64_t kaldi::nnet1::RandMatrix<kaldi::QuantizedMatrix<signed char>>(kaldi::UniformRandomNumber *a1, kaldi::GaussRandomNumber *a2, int a3, unsigned int *a4, float a5)
{
  v10 = kaldi::QuantizedMatrixBase<short>::NumRows(a4);
  v11 = kaldi::QuantizedMatrixBase<short>::NumCols(a4);
  kaldi::Matrix<float>::Matrix(&v23, v10, v11, 0, 0);
  v12 = 0;
LABEL_2:
  if (v12 < kaldi::ContextDependency::CentralPosition(&v23))
  {
    for (i = 0; ; ++i)
    {
      if (i >= kaldi::ContextDependency::ContextWidth(&v23))
      {
        ++v12;
        goto LABEL_2;
      }

      if (a3)
      {
        if (a3 == 2)
        {
          kaldi::GaussRandomNumber::Rand(a2, 0, v14, v15, v16);
          if (v12 >= v25 || i >= v24)
          {
            goto LABEL_25;
          }

          v18 = v23 + 4 * v12 * v26;
          v19 = v20 * a5;
        }

        else
        {
          if (a3 != 1)
          {
            continue;
          }

          v17 = kaldi::UniformRandomNumber::RandUniform(a1, 0, v14, v15, v16);
          if (v12 >= v25 || i >= v24)
          {
            goto LABEL_25;
          }

          v18 = v23 + 4 * v12 * v26;
          v19 = (v17 + -0.5) * (a5 + a5);
        }
      }

      else
      {
        if (v12 >= v25 || i >= v24)
        {
LABEL_25:
          kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_B8.segname[5], "static_cast<UnsignedMatrixIndexT>(r) < static_cast<UnsignedMatrixIndexT>(num_rows_) && static_cast<UnsignedMatrixIndexT>(c) < static_cast<UnsignedMatrixIndexT>(num_cols_)", v16);
        }

        v18 = v23 + 4 * v12 * v26;
        if (v12 == i)
        {
          v19 = 1.0;
        }

        else
        {
          v19 = 0.0;
        }
      }

      *(v18 + 4 * i) = v19;
    }
  }

  kaldi::QuantizedMatrixBase<signed char>::CopyFromMat(a4, &v23);
  return kaldi::Matrix<float>::~Matrix(&v23);
}

void sub_15B200(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(uint64_t a1)
{
  result = *(a1 + 184);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "InputWeights", "../subproject/libquasar/libkaldi/src/nnet/nnet-lstm.h", 214);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "input_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

{
  result = *(a1 + 184);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "InputWeights", "../subproject/libquasar/libkaldi/src/nnet/nnet-lstm.h", 210);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "input_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(uint64_t a1)
{
  result = *(a1 + 192);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "RecurrentWeights", "../subproject/libquasar/libkaldi/src/nnet/nnet-lstm.h", 223);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "recurrent_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

{
  result = *(a1 + 192);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "RecurrentWeights", "../subproject/libquasar/libkaldi/src/nnet/nnet-lstm.h", 219);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "recurrent_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Bias(uint64_t a1)
{
  result = *(a1 + 200);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "Bias", "../subproject/libquasar/libkaldi/src/nnet/nnet-lstm.h", 232);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "bias_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

{
  result = *(a1 + 200);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "Bias", "../subproject/libquasar/libkaldi/src/nnet/nnet-lstm.h", 228);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "bias_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(uint64_t a1)
{
  result = *(a1 + 216);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "PeepholeWeights", "../subproject/libquasar/libkaldi/src/nnet/nnet-lstm.h", 241);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "peephole_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

{
  result = *(a1 + 216);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "PeepholeWeights", "../subproject/libquasar/libkaldi/src/nnet/nnet-lstm.h", 237);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "peephole_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(uint64_t a1)
{
  result = *(a1 + 232);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "ProjectionWeights", "../subproject/libquasar/libkaldi/src/nnet/nnet-lstm.h", 250);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "projection_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

{
  result = *(a1 + 232);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "ProjectionWeights", "../subproject/libquasar/libkaldi/src/nnet/nnet-lstm.h", 246);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "projection_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ReadData(uint64_t *a1, uint64_t *a2, int a3)
{
  if (kaldi::Peek(a2, a3) != 60)
  {
LABEL_113:
    v38 = *(a1 + 44);
    v39 = *a1;
    v40 = *(a1 + *(*a1 - 24) + 12);
    if (v38 < v40)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 430);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "# LSTM cells (", 14);
      v46 = *(a1 + 44);
      v47 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, ") should not be less than output dim (", 38);
      v48 = *(a1 + *(*a1 - 24) + 12);
      v49 = std::ostream::operator<<();
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v49, ").");
    }

    else
    {
      v41 = a1[23];
      *(a1 + 224) = v38 > v40;
      if (!v41)
      {
        v42 = a1 + *(v39 - 24);
        operator new();
      }

      kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 436);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "input_weights_ thougth to be un-initialized here");
    }

    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }

  while (1)
  {
    v52 = 0;
    v53 = 0;
    v54 = 0;
    kaldi::ReadToken(a2, a3, &v52, v6, v7);
    if (SHIBYTE(v54) < 0)
    {
      if (v53 != 10 || (*v52 == 0x6C6C65436D754E3CLL ? (v11 = *(v52 + 4) == 15987) : (v11 = 0), !v11))
      {
        if (v53 != 15)
        {
          v16 = v53;
          if (v53 == 25)
          {
            goto LABEL_33;
          }

          goto LABEL_44;
        }

        v10 = v52;
LABEL_13:
        v12 = *v10;
        v13 = *(v10 + 7);
        v14 = v12 == 0x61526E7261654C3CLL && v13 == 0x3E66656F43657461;
        v15 = (a1 + 58);
        if (v14)
        {
          goto LABEL_109;
        }

        v16 = v53;
        if (v54 < 0 && v53 == 25)
        {
LABEL_33:
          v21 = *v52 == 0x7463656A6F72503CLL && v52[1] == 0x6E7261654C6E6F69 && v52[2] == 0x66656F4365746152 && *(v52 + 24) == 62;
          v15 = a1 + 117;
          if (!v21)
          {
LABEL_116:
            kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 424);
            v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "unrecognized config token ", 26);
            if (v54 >= 0)
            {
              v44 = &v52;
            }

            else
            {
              v44 = v52;
            }

            if (v54 >= 0)
            {
              v45 = HIBYTE(v54);
            }

            else
            {
              v45 = v53;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, v44, v45);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
          }

          goto LABEL_109;
        }

        if (v54 < 0)
        {
LABEL_44:
          if (v16 == 9)
          {
            v22 = *v52 == 0x6D726F4E78614D3CLL && *(v52 + 8) == 62;
            v15 = (a1 + 59);
            if (v22)
            {
              goto LABEL_109;
            }

            if (v54 < 0)
            {
              v34 = *v52 == 0x6C6C654378614D3CLL && *(v52 + 8) == 62;
              v15 = a1 + 119;
              if (!v34)
              {
                v32 = v52;
                goto LABEL_104;
              }

LABEL_109:
              kaldi::ReadBasicType<float>(a2, a3, v15, v8, v9);
              goto LABEL_110;
            }

            goto LABEL_50;
          }

          if (v16 == 8)
          {
            v33 = *v52;
            goto LABEL_97;
          }

          if (v16 != 18)
          {
            goto LABEL_116;
          }

          if (*v52 != 0x4374757074754F3CLL || v52[1] != 0x65756C61566C6C65 || *(v52 + 8) != 15987)
          {
            if (*v52 == 0x6E6569646172473CLL && v52[1] == 0x7079546D726F4E74 && *(v52 + 8) == 15973)
            {
              goto LABEL_73;
            }

            if (HIBYTE(v54) != 9)
            {
              goto LABEL_116;
            }

LABEL_93:
            v32 = &v52;
LABEL_104:
            v35 = *v32;
            v36 = *(v32 + 8);
            v37 = v35 == 0x6461724778614D3CLL && v36 == 62;
            v15 = (a1 + 19);
            if (!v37)
            {
              goto LABEL_116;
            }

            goto LABEL_109;
          }

LABEL_95:
          *(a1 + 209) = 1;
          goto LABEL_110;
        }

LABEL_25:
        if (HIBYTE(v54) == 9)
        {
          v18 = v52 == 0x6D726F4E78614D3CLL && v53 == 62;
          v15 = (a1 + 59);
          if (v18)
          {
            goto LABEL_109;
          }

LABEL_53:
          v23 = v52 == 0x6C6C654378614D3CLL && v53 == 62;
          v15 = a1 + 119;
          if (v23)
          {
            goto LABEL_109;
          }

          goto LABEL_93;
        }

LABEL_50:
        if (HIBYTE(v54) == 8)
        {
          v33 = v52;
LABEL_97:
          if (v33 != 0x3E706565506F4E3CLL)
          {
            goto LABEL_116;
          }

          *(a1 + 208) = 0;
          goto LABEL_110;
        }

        if (HIBYTE(v54) != 18)
        {
          if (HIBYTE(v54) != 9)
          {
            goto LABEL_116;
          }

          goto LABEL_53;
        }

        if (v52 != 0x4374757074754F3CLL || v53 != 0x65756C61566C6C65 || v54 != 15987)
        {
          if (v52 != 0x6E6569646172473CLL || v53 != 0x7079546D726F4E74 || v54 != 15973)
          {
            goto LABEL_116;
          }

LABEL_73:
          __p[0] = 0;
          __p[1] = 0;
          v51 = 0;
          kaldi::ReadToken(a2, a3, __p, v8, v9);
          *(a1 + 39) = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
          if (SHIBYTE(v51) < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_110;
        }

        goto LABEL_95;
      }
    }

    else
    {
      if (HIBYTE(v54) != 10)
      {
        if (HIBYTE(v54) == 15)
        {
          v10 = &v52;
          goto LABEL_13;
        }

        goto LABEL_25;
      }

      if (v52 != 0x6C6C65436D754E3CLL || v53 != 15987)
      {
        goto LABEL_25;
      }
    }

    kaldi::ReadBasicType<int>(a2, a3, (a1 + 22), v8, v9);
LABEL_110:
    if (SHIBYTE(v54) < 0)
    {
      operator delete(v52);
    }

    if (kaldi::Peek(a2, a3) != 60)
    {
      goto LABEL_113;
    }
  }
}

void *kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::WriteConfig(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<NumCells>", a4, a5);
  v8 = *(a1 + 176);
  kaldi::WriteBasicType<int>(a2, a3);
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>", v9, v10);
  v11 = *(a1 + 464);
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<ProjectionLearnRateCoef>", v12, v13);
  v14 = *(a1 + 468);
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<MaxNorm>", v15, v16);
  v17 = *(a1 + 472);
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>", v18, v19);
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 156), &__p);
  kaldi::WriteToken(a2, a3, &__p, v20, v21);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>", v22, v23);
  v24 = *(a1 + 152);
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<MaxCell>", v25, v26);
  v27 = *(a1 + 476);
  result = kaldi::WriteBasicType<float>(a2, a3);
  if ((*(a1 + 208) & 1) == 0)
  {
    result = kaldi::WriteToken(a2, a3, "<NoPeep>", v29, v30);
  }

  if (*(a1 + 209) == 1)
  {
    return kaldi::WriteToken(a2, a3, "<OutputCellValues>", v29, v30);
  }

  return result;
}

void sub_15C0A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::WriteData(_BYTE *a1, void *a2, uint64_t a3, int a4)
{
  (*(*a1 + 128))(a1);
  (*(*a1 + 192))(a1, a2, a3);
  v8 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  kaldi::QuantizedMatrix<signed char>::Write(v8, a2, a3, a4);
  v9 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(a1);
  kaldi::QuantizedMatrix<signed char>::Write(v9, a2, a3, a4);
  if (a1[208] == 1)
  {
    v10 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1);
    kaldi::CuMatrixBase<float>::Write(v10, a2, a3, a4);
  }

  v11 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Bias(a1);
  kaldi::CuVectorBase<float>::Write(v11, a2, a3, v12, v13);
  if (a1[224] == 1)
  {
    v14 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(a1);

    kaldi::QuantizedMatrix<signed char>::Write(v14, a2, a3, a4);
  }
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::NumParams(uint64_t a1)
{
  v2 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  v3 = kaldi::QuantizedMatrixBase<short>::NumRows(v2);
  v4 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  v5 = kaldi::QuantizedMatrixBase<short>::NumCols(v4) * v3;
  v6 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(a1);
  v7 = kaldi::QuantizedMatrixBase<short>::NumRows(v6);
  v8 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(a1);
  v9 = v5 + kaldi::QuantizedMatrixBase<short>::NumCols(v8) * v7;
  v10 = (v9 + *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Bias(a1) + 16));
  if (*(a1 + 208) == 1)
  {
    v11 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1) + 20);
    v10 = (v10 + *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1) + 16) * v11);
  }

  if (*(a1 + 224) == 1)
  {
    v12 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(a1);
    v13 = kaldi::QuantizedMatrixBase<short>::NumRows(v12);
    v14 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(a1);
    return v10 + kaldi::QuantizedMatrixBase<short>::NumCols(v14) * v13;
  }

  return v10;
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::GetParams(_BYTE *a1, uint64_t a2)
{
  v4 = (*(*a1 + 208))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 0, v5, v6);
  v7 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  v8 = kaldi::QuantizedMatrixBase<short>::NumRows(v7);
  v9 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  v10 = kaldi::QuantizedMatrixBase<short>::NumCols(v9) * v8;
  v11 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(a1);
  v12 = kaldi::QuantizedMatrixBase<short>::NumRows(v11);
  v13 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(a1);
  v14 = kaldi::QuantizedMatrixBase<short>::NumCols(v13);
  v39 = 0;
  v40 = 0;
  if (v10 > *(a2 + 8))
  {
    goto LABEL_11;
  }

  v16 = v14 * v12;
  v38 = *a2;
  LODWORD(v39) = v10;
  v17 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  kaldi::VectorBase<float>::CopyRowsFromMat<signed char>(&v38, v17);
  v39 = 0;
  v40 = 0;
  v18 = v16 + v10;
  if (v16 + v10 > *(a2 + 8))
  {
    goto LABEL_11;
  }

  v38 = (*a2 + 4 * v10);
  LODWORD(v39) = v16;
  v19 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(a1);
  kaldi::VectorBase<float>::CopyRowsFromMat<signed char>(&v38, v19);
  if (a1[208] == 1)
  {
    v20 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1) + 20);
    v21 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1) + 16) * v20;
    v39 = 0;
    v40 = 0;
    v22 = v21 + v18;
    if (v21 + v18 > *(a2 + 8))
    {
      goto LABEL_11;
    }

    v38 = (*a2 + 4 * v18);
    LODWORD(v39) = v21;
    v23 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1);
    kaldi::VectorBase<float>::CopyRowsFromMat(&v38, v23, v24, v25, v26);
    v18 = v22;
  }

  v27 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Bias(a1) + 16);
  v39 = 0;
  v40 = 0;
  if (v27 + v18 > *(a2 + 8))
  {
    goto LABEL_11;
  }

  v38 = (*a2 + 4 * v18);
  LODWORD(v39) = v27;
  v28 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Bias(a1);
  kaldi::CuVectorBase<float>::CopyToVec<float>(v28, &v38, v29, v30, v31);
  if (a1[224] != 1)
  {
    return;
  }

  v32 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Bias(a1) + 16) + v18;
  v33 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(a1);
  v34 = kaldi::QuantizedMatrixBase<short>::NumRows(v33);
  v35 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(a1);
  v36 = kaldi::QuantizedMatrixBase<short>::NumCols(v35);
  v39 = 0;
  v40 = 0;
  if (v36 * v34 + v32 > *(a2 + 8))
  {
LABEL_11:
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v15);
  }

  v38 = (*a2 + 4 * v32);
  LODWORD(v39) = v36 * v34;
  v37 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(a1);
  kaldi::VectorBase<float>::CopyRowsFromMat<signed char>(&v38, v37);
}

_DWORD *kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::SetParams(_BYTE *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 != (*(*a1 + 208))(a1))
  {
    kaldi::KaldiAssertFailure_("SetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_1F8.size + 2, "wei_src.Dim() == NumParams()", v5);
  }

  v6 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  v7 = kaldi::QuantizedMatrixBase<short>::NumRows(v6);
  v8 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  v9 = kaldi::QuantizedMatrixBase<short>::NumCols(v8) * v7;
  v10 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(a1);
  v11 = kaldi::QuantizedMatrixBase<short>::NumRows(v10);
  v12 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(a1);
  v13 = kaldi::QuantizedMatrixBase<short>::NumCols(v12);
  v14 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  v34 = 0;
  v35 = 0;
  if (v9 > *(a2 + 8))
  {
    goto LABEL_12;
  }

  v16 = v13 * v11;
  v33 = *a2;
  LODWORD(v34) = v9;
  kaldi::QuantizedMatrixBase<signed char>::CopyRowsFromVec(v14, &v33);
  v17 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(a1);
  v34 = 0;
  v35 = 0;
  v18 = v16 + v9;
  if (v16 + v9 > *(a2 + 8))
  {
    goto LABEL_12;
  }

  v33 = (*a2 + 4 * v9);
  LODWORD(v34) = v16;
  kaldi::QuantizedMatrixBase<signed char>::CopyRowsFromVec(v17, &v33);
  if (a1[208] == 1)
  {
    v19 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1) + 20);
    v20 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1) + 16) * v19;
    v21 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1);
    v34 = 0;
    v35 = 0;
    if (v20 + v18 > *(a2 + 8))
    {
      goto LABEL_12;
    }

    v33 = (*a2 + 4 * v18);
    LODWORD(v34) = v20;
    kaldi::CuMatrixBase<float>::CopyRowsFromVec(v21, &v33);
    v18 += v20;
  }

  v22 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Bias(a1);
  v25 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Bias(a1) + 16);
  v34 = 0;
  v35 = 0;
  if (v25 + v18 > *(a2 + 8))
  {
    goto LABEL_12;
  }

  v33 = (*a2 + 4 * v18);
  LODWORD(v34) = v25;
  result = kaldi::CuVectorBase<float>::CopyFromVec<float>(v22, &v33, v23, v24, v15);
  if (a1[224] != 1)
  {
    return result;
  }

  v27 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Bias(a1) + 16) + v18;
  v28 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(a1);
  v29 = kaldi::QuantizedMatrixBase<short>::NumRows(v28);
  v30 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(a1);
  v31 = kaldi::QuantizedMatrixBase<short>::NumCols(v30) * v29;
  v32 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(a1);
  v34 = 0;
  v35 = 0;
  if (v31 + v27 > *(a2 + 8))
  {
LABEL_12:
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v15);
  }

  v33 = (*a2 + 4 * v27);
  LODWORD(v34) = v31;
  return kaldi::QuantizedMatrixBase<signed char>::CopyRowsFromVec(v32, &v33);
}

float kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::SumParams(uint64_t a1)
{
  v2 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  v7 = kaldi::QuantizedMatrixBase<signed char>::Sum(v2, v3, v4, v5, v6);
  v8 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(a1);
  v13 = v7 + kaldi::QuantizedMatrixBase<signed char>::Sum(v8, v9, v10, v11, v12);
  if (*(a1 + 208) == 1)
  {
    v14 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1);
    v13 = v13 + kaldi::CuMatrixBase<float>::Sum(v14, v15, v16, v17, v18);
  }

  if (*(a1 + 224) == 1)
  {
    v19 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(a1);
    v13 = v13 + kaldi::QuantizedMatrixBase<signed char>::Sum(v19, v20, v21, v22, v23);
  }

  v24 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Bias(a1);
  v25 = kaldi::CuVectorBase<float>::Sum(v24);
  return v13 + *&v25;
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PerturbParams(uint64_t a1)
{
  v2 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  v3 = kaldi::QuantizedMatrixBase<short>::NumRows(v2);
  v4 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  v5 = kaldi::QuantizedMatrixBase<short>::NumCols(v4);
  kaldi::CuMatrix<float>::CuMatrix(v6, v3, v5, 1u, 0, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v6);
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  kaldi::QuantizedMatrixBase<signed char>::AddMat();
}

void sub_15CB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v5 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(v4);
  v6 = kaldi::QuantizedMatrixBase<short>::NumRows(v5);
  v7 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(v4);
  v8 = kaldi::QuantizedMatrixBase<short>::NumCols(v7);
  kaldi::CuMatrix<float>::Resize(va, v6, v8, 1u, 0);
  kaldi::CuMatrixBase<float>::SetRandn(va);
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(v4);
  kaldi::QuantizedMatrixBase<signed char>::AddMat();
}

void sub_15CCF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::GetGradient(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(*a1 + 136))(a1);
  if (v8)
  {
    v9 = **v8;
  }

  else
  {
    v10 = 0;
  }

  (*(*v10 + 336))(v10, a2, a3, 0, 0);
  v11 = (*(*a1 + 208))(a1);
  kaldi::Vector<float>::Resize(a4, v11, 0, v12, v13);
  v14 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  v15 = kaldi::QuantizedMatrixBase<short>::NumRows(v14);
  v16 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  v17 = kaldi::QuantizedMatrixBase<short>::NumCols(v16) * v15;
  v18 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(a1);
  v19 = kaldi::QuantizedMatrixBase<short>::NumRows(v18);
  v20 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(a1);
  v21 = kaldi::QuantizedMatrixBase<short>::NumCols(v20);
  v59 = 0;
  v60 = 0;
  if (v17 > *(a4 + 8))
  {
    goto LABEL_14;
  }

  v23 = v21;
  v58 = *a4;
  LODWORD(v59) = v17;
  v24 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeightsGradient(v10, 0);
  kaldi::Matrix<float>::Matrix<float>(&v55, v24, 111, v25, v26);
  kaldi::VectorBase<float>::CopyRowsFromMat(&v58, &v55);
  v27 = v23 * v19;
  kaldi::Matrix<float>::~Matrix(&v55);
  v56 = 0;
  v57 = 0;
  v28 = v27 + v17;
  if (v27 + v17 > *(a4 + 8))
  {
    goto LABEL_14;
  }

  v55 = *a4 + 4 * v17;
  LODWORD(v56) = v27;
  v29 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeightsGradient(v10, 0);
  kaldi::VectorBase<float>::CopyRowsFromMat(&v55, v29, v30, v31, v32);
  if (a1[208] == 1)
  {
    v33 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1) + 20);
    v34 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1) + 16) * v33;
    v56 = 0;
    v57 = 0;
    v35 = v34 + v28;
    if (v34 + v28 > *(a4 + 8))
    {
      goto LABEL_14;
    }

    v55 = *a4 + 4 * v28;
    LODWORD(v56) = v34;
    v36 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeightsGradient(v10, 0);
    kaldi::VectorBase<float>::CopyRowsFromMat(&v55, v36, v37, v38, v39);
    v28 = v35;
  }

  v40 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Bias(a1) + 16);
  v56 = 0;
  v57 = 0;
  if (v40 + v28 > *(a4 + 8))
  {
LABEL_14:
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v22);
  }

  v55 = *a4 + 4 * v28;
  LODWORD(v56) = v40;
  v41 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::BiasGradient(v10, 0);
  kaldi::CuVectorBase<float>::CopyToVec<float>(v41, &v55, v42, v43, v44);
  if (a1[224] == 1)
  {
    v45 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Bias(a1) + 16) + v28;
    v46 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(a1);
    v47 = kaldi::QuantizedMatrixBase<short>::NumRows(v46);
    v48 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(a1);
    v49 = kaldi::QuantizedMatrixBase<short>::NumCols(v48);
    v56 = 0;
    v57 = 0;
    if (v49 * v47 + v45 <= *(a4 + 8))
    {
      v55 = *a4 + 4 * v45;
      LODWORD(v56) = v49 * v47;
      v50 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeightsGradient(v10, 0);
      kaldi::VectorBase<float>::CopyRowsFromMat(&v55, v50, v51, v52, v53);
      return (*(*v10 + 8))(v10);
    }

    goto LABEL_14;
  }

  return (*(*v10 + 8))(v10);
}

float kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::GetNormalizedLearningRate(void *a1, int a2)
{
  v2 = (a1 + *(*a1 - 24));
  if ((v2[21] & 1) == 0)
  {
    return v2[14];
  }

  v3 = a1[63];
  v4 = a1[64] - v3;
  if (!v4)
  {
    return NAN;
  }

  v5 = v4 >> 2;
  if (v5 <= a2)
  {
    return NAN;
  }

  v6 = v5 - 1;
  if (a2 >= 0)
  {
    v6 = a2;
  }

  return *(v3 + 4 * v6);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Info(uint64_t a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v50);
  (*(*a1 + 192))(a1, &v50, 0);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v50, "\n Input weights:", 16);
  v3 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  kaldi::nnet1::MomentStatistics<signed char>(v3);
  if ((v49 & 0x80u) == 0)
  {
    v4 = v48;
  }

  else
  {
    v4 = v48[0];
  }

  if ((v49 & 0x80u) == 0)
  {
    v5 = v49;
  }

  else
  {
    v5 = v48[1];
  }

  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v4, v5);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "\n Recurrent weights:", 20);
  v8 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(a1);
  kaldi::nnet1::MomentStatistics<signed char>(v8);
  if ((v47 & 0x80u) == 0)
  {
    v9 = v46;
  }

  else
  {
    v9 = v46[0];
  }

  if ((v47 & 0x80u) == 0)
  {
    v10 = v47;
  }

  else
  {
    v10 = v46[1];
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "\n Bias:", 7);
  v13 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Bias(a1);
  kaldi::nnet1::MomentStatistics<float>(v13, v14, v15, v16, v17);
  if ((v45 & 0x80u) == 0)
  {
    v18 = v44;
  }

  else
  {
    v18 = v44[0];
  }

  if ((v45 & 0x80u) == 0)
  {
    v19 = v45;
  }

  else
  {
    v19 = v44[1];
  }

  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v18, v19);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "\n Forget gate bias:", 19);
  v22 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Bias(a1);
  kaldi::CuSubVector<float>::CuSubVector(&v39, v22, *(a1 + 176), *(a1 + 176), v23);
  kaldi::nnet1::MomentStatistics<float>(&v39, v24, v25, v26, v27);
  if ((v43 & 0x80u) == 0)
  {
    v28 = __p;
  }

  else
  {
    v28 = __p[0];
  }

  if ((v43 & 0x80u) == 0)
  {
    v29 = v43;
  }

  else
  {
    v29 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v28, v29);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  if (v47 < 0)
  {
    operator delete(v46[0]);
  }

  if (v49 < 0)
  {
    operator delete(v48[0]);
  }

  if (*(a1 + 208) == 1)
  {
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v50, "\n Peephole weights:", 19);
    v31 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1);
    kaldi::nnet1::MomentStatistics<float>(v31);
    v32 = (v41 & 0x80u) == 0 ? &v39 : v39;
    v33 = (v41 & 0x80u) == 0 ? v41 : v40;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v32, v33);
    if (v41 < 0)
    {
      operator delete(v39);
    }
  }

  if (*(a1 + 224) == 1)
  {
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v50, "\n Projection weights:", 21);
    v35 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(a1);
    kaldi::nnet1::MomentStatistics<signed char>(v35);
    v36 = (v41 & 0x80u) == 0 ? &v39 : v39;
    v37 = (v41 & 0x80u) == 0 ? v41 : v40;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v36, v37);
    if (v41 < 0)
    {
      operator delete(v39);
    }
  }

  std::stringbuf::str();
  if (v53 < 0)
  {
    operator delete(v52[7].__locale_);
  }

  std::locale::~locale(v52);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_15D934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a41);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InfoGradient(uint64_t a1@<X0>, boost::filesystem::path *a2@<X8>)
{
  if (*(a1 + 528))
  {
    memset(&v105, 0, sizeof(v105));
    v104 = 0;
    if (*(a1 + 80) >= 1)
    {
      do
      {
        boost::filesystem::path::path(&v92, "\n For batch ");
        kaldi::nnet1::ToString<int>(&v104);
        if ((v91 & 0x80u) == 0)
        {
          v3 = v90;
        }

        else
        {
          v3 = v90[0];
        }

        if ((v91 & 0x80u) == 0)
        {
          v4 = v91;
        }

        else
        {
          v4 = v90[1];
        }

        v5 = std::string::append(&v92, v3, v4);
        v6 = *&v5->__r_.__value_.__l.__data_;
        v93.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
        *&v93.__r_.__value_.__l.__data_ = v6;
        v5->__r_.__value_.__l.__size_ = 0;
        v5->__r_.__value_.__r.__words[2] = 0;
        v5->__r_.__value_.__r.__words[0] = 0;
        boost::filesystem::path::path(v88, ": ");
        if ((v89 & 0x80u) == 0)
        {
          v7 = v88;
        }

        else
        {
          v7 = v88[0];
        }

        if ((v89 & 0x80u) == 0)
        {
          v8 = v89;
        }

        else
        {
          v8 = v88[1];
        }

        v9 = std::string::append(&v93, v7, v8);
        v10 = *&v9->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v10;
        v9->__r_.__value_.__l.__size_ = 0;
        v9->__r_.__value_.__r.__words[2] = 0;
        v9->__r_.__value_.__r.__words[0] = 0;
        boost::filesystem::path::path(v86, "\n  Number of cells : ");
        if ((v87 & 0x80u) == 0)
        {
          v11 = v86;
        }

        else
        {
          v11 = v86[0];
        }

        if ((v87 & 0x80u) == 0)
        {
          v12 = v87;
        }

        else
        {
          v12 = v86[1];
        }

        v13 = std::string::append(&v94, v11, v12);
        v14 = *&v13->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v14;
        v13->__r_.__value_.__l.__size_ = 0;
        v13->__r_.__value_.__r.__words[2] = 0;
        v13->__r_.__value_.__r.__words[0] = 0;
        kaldi::nnet1::ToString<int>((a1 + 176));
        if ((v85 & 0x80u) == 0)
        {
          v15 = v84;
        }

        else
        {
          v15 = v84[0];
        }

        if ((v85 & 0x80u) == 0)
        {
          v16 = v85;
        }

        else
        {
          v16 = v84[1];
        }

        v17 = std::string::append(&v95, v15, v16);
        v18 = *&v17->__r_.__value_.__l.__data_;
        v96.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
        *&v96.__r_.__value_.__l.__data_ = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        boost::filesystem::path::path(v82, "\n  Input weights gradient: ");
        if ((v83 & 0x80u) == 0)
        {
          v19 = v82;
        }

        else
        {
          v19 = v82[0];
        }

        if ((v83 & 0x80u) == 0)
        {
          v20 = v83;
        }

        else
        {
          v20 = v82[1];
        }

        v21 = std::string::append(&v96, v19, v20);
        v22 = *&v21->__r_.__value_.__l.__data_;
        v97.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
        *&v97.__r_.__value_.__l.__data_ = v22;
        v21->__r_.__value_.__l.__size_ = 0;
        v21->__r_.__value_.__r.__words[2] = 0;
        v21->__r_.__value_.__r.__words[0] = 0;
        v23 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeightsGradient(a1, v104);
        kaldi::nnet1::MomentStatistics<float>(v23);
        if ((v81 & 0x80u) == 0)
        {
          v24 = v80;
        }

        else
        {
          v24 = v80[0];
        }

        if ((v81 & 0x80u) == 0)
        {
          v25 = v81;
        }

        else
        {
          v25 = v80[1];
        }

        v26 = std::string::append(&v97, v24, v25);
        v27 = *&v26->__r_.__value_.__l.__data_;
        v98.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
        *&v98.__r_.__value_.__l.__data_ = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        boost::filesystem::path::path(v78, "\n  Recurrent weights gradient: ");
        if ((v79 & 0x80u) == 0)
        {
          v28 = v78;
        }

        else
        {
          v28 = v78[0];
        }

        if ((v79 & 0x80u) == 0)
        {
          v29 = v79;
        }

        else
        {
          v29 = v78[1];
        }

        v30 = std::string::append(&v98, v28, v29);
        v31 = *&v30->__r_.__value_.__l.__data_;
        v99.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
        *&v99.__r_.__value_.__l.__data_ = v31;
        v30->__r_.__value_.__l.__size_ = 0;
        v30->__r_.__value_.__r.__words[2] = 0;
        v30->__r_.__value_.__r.__words[0] = 0;
        v32 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeightsGradient(a1, v104);
        kaldi::nnet1::MomentStatistics<float>(v32);
        if ((v77 & 0x80u) == 0)
        {
          v33 = v76;
        }

        else
        {
          v33 = v76[0];
        }

        if ((v77 & 0x80u) == 0)
        {
          v34 = v77;
        }

        else
        {
          v34 = v76[1];
        }

        v35 = std::string::append(&v99, v33, v34);
        v36 = *&v35->__r_.__value_.__l.__data_;
        v100.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
        *&v100.__r_.__value_.__l.__data_ = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        boost::filesystem::path::path(v74, "\n  Bias gradient: ");
        if ((v75 & 0x80u) == 0)
        {
          v37 = v74;
        }

        else
        {
          v37 = v74[0];
        }

        if ((v75 & 0x80u) == 0)
        {
          v38 = v75;
        }

        else
        {
          v38 = v74[1];
        }

        v39 = std::string::append(&v100, v37, v38);
        v40 = *&v39->__r_.__value_.__l.__data_;
        v101.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
        *&v101.__r_.__value_.__l.__data_ = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        v41 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::BiasGradient(a1, v104);
        kaldi::nnet1::MomentStatistics<float>(v41, v42, v43, v44, v45);
        if ((v73 & 0x80u) == 0)
        {
          v46 = __p;
        }

        else
        {
          v46 = __p[0];
        }

        if ((v73 & 0x80u) == 0)
        {
          v47 = v73;
        }

        else
        {
          v47 = __p[1];
        }

        v48 = std::string::append(&v101, v46, v47);
        v49 = *&v48->__r_.__value_.__l.__data_;
        v103 = v48->__r_.__value_.__r.__words[2];
        v102 = v49;
        v48->__r_.__value_.__l.__size_ = 0;
        v48->__r_.__value_.__r.__words[2] = 0;
        v48->__r_.__value_.__r.__words[0] = 0;
        if (v103 >= 0)
        {
          v50 = &v102;
        }

        else
        {
          v50 = v102;
        }

        if (v103 >= 0)
        {
          v51 = HIBYTE(v103);
        }

        else
        {
          v51 = *(&v102 + 1);
        }

        std::string::append(&v105, v50, v51);
        if (SHIBYTE(v103) < 0)
        {
          operator delete(v102);
        }

        if (v73 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v101.__r_.__value_.__l.__data_);
        }

        if (v75 < 0)
        {
          operator delete(v74[0]);
        }

        if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v100.__r_.__value_.__l.__data_);
        }

        if (v77 < 0)
        {
          operator delete(v76[0]);
        }

        if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v99.__r_.__value_.__l.__data_);
        }

        if (v79 < 0)
        {
          operator delete(v78[0]);
        }

        if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v98.__r_.__value_.__l.__data_);
        }

        if (v81 < 0)
        {
          operator delete(v80[0]);
        }

        if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v97.__r_.__value_.__l.__data_);
        }

        if (v83 < 0)
        {
          operator delete(v82[0]);
        }

        if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v96.__r_.__value_.__l.__data_);
        }

        if (v85 < 0)
        {
          operator delete(v84[0]);
        }

        if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v95.__r_.__value_.__l.__data_);
        }

        if (v87 < 0)
        {
          operator delete(v86[0]);
        }

        if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v94.__r_.__value_.__l.__data_);
        }

        if (v89 < 0)
        {
          operator delete(v88[0]);
        }

        if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v93.__r_.__value_.__l.__data_);
        }

        if (v91 < 0)
        {
          operator delete(v90[0]);
        }

        if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v92.__r_.__value_.__l.__data_);
        }

        if (*(a1 + 208) == 1)
        {
          boost::filesystem::path::path(&v101, "\n  Peephole weights gradient: ");
          v52 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeightsGradient(a1, v104);
          kaldi::nnet1::MomentStatistics<float>(v52);
          if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v53 = &v100;
          }

          else
          {
            v53 = v100.__r_.__value_.__r.__words[0];
          }

          if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v100.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v100.__r_.__value_.__l.__size_;
          }

          v55 = std::string::append(&v101, v53, size);
          v56 = *&v55->__r_.__value_.__l.__data_;
          v103 = v55->__r_.__value_.__r.__words[2];
          v102 = v56;
          v55->__r_.__value_.__l.__size_ = 0;
          v55->__r_.__value_.__r.__words[2] = 0;
          v55->__r_.__value_.__r.__words[0] = 0;
          if (v103 >= 0)
          {
            v57 = &v102;
          }

          else
          {
            v57 = v102;
          }

          if (v103 >= 0)
          {
            v58 = HIBYTE(v103);
          }

          else
          {
            v58 = *(&v102 + 1);
          }

          std::string::append(&v105, v57, v58);
          if (SHIBYTE(v103) < 0)
          {
            operator delete(v102);
          }

          if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v100.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v101.__r_.__value_.__l.__data_);
          }
        }

        if (*(a1 + 224) == 1)
        {
          boost::filesystem::path::path(&v101, "\n  Projection weights gradient: ");
          v59 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeightsGradient(a1, v104);
          kaldi::nnet1::MomentStatistics<float>(v59);
          if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v60 = &v100;
          }

          else
          {
            v60 = v100.__r_.__value_.__r.__words[0];
          }

          if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v61 = HIBYTE(v100.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v61 = v100.__r_.__value_.__l.__size_;
          }

          v62 = std::string::append(&v101, v60, v61);
          v63 = *&v62->__r_.__value_.__l.__data_;
          v103 = v62->__r_.__value_.__r.__words[2];
          v102 = v63;
          v62->__r_.__value_.__l.__size_ = 0;
          v62->__r_.__value_.__r.__words[2] = 0;
          v62->__r_.__value_.__r.__words[0] = 0;
          if (v103 >= 0)
          {
            v64 = &v102;
          }

          else
          {
            v64 = v102;
          }

          if (v103 >= 0)
          {
            v65 = HIBYTE(v103);
          }

          else
          {
            v65 = *(&v102 + 1);
          }

          std::string::append(&v105, v64, v65);
          if (SHIBYTE(v103) < 0)
          {
            operator delete(v102);
          }

          if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v100.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v101.__r_.__value_.__l.__data_);
          }
        }

        ++v104;
      }

      while (v104 < *(a1 + 80));
    }

    v66 = boost::filesystem::path::path(&v102, "\n");
    if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v67 = &v105;
    }

    else
    {
      v67 = v105.__r_.__value_.__r.__words[0];
    }

    if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v68 = HIBYTE(v105.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v68 = v105.__r_.__value_.__l.__size_;
    }

    v69 = std::string::insert(v66, 0, v67, v68);
    v70 = *&v69->__r_.__value_.__l.__data_;
    *(a2 + 2) = *(&v69->__r_.__value_.__l + 2);
    *a2 = v70;
    v69->__r_.__value_.__l.__size_ = 0;
    v69->__r_.__value_.__r.__words[2] = 0;
    v69->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v103) < 0)
    {
      operator delete(v102);
    }

    if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v105.__r_.__value_.__l.__data_);
    }
  }

  else
  {

    boost::filesystem::path::path(a2, "\n  Gradients are uninitialized");
  }
}

void sub_15E12C(_Unwind_Exception *a1)
{
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InfoPropagate(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  memset(&v89, 0, sizeof(v89));
  v88 = 0;
  if (*(a1 + 80) >= 1)
  {
    do
    {
      boost::filesystem::path::path(&v76, "\n For batch ");
      kaldi::nnet1::ToString<int>(&v88);
      if ((v75 & 0x80u) == 0)
      {
        v3 = v74;
      }

      else
      {
        v3 = v74[0];
      }

      if ((v75 & 0x80u) == 0)
      {
        v4 = v75;
      }

      else
      {
        v4 = v74[1];
      }

      v5 = std::string::append(&v76, v3, v4);
      v6 = *&v5->__r_.__value_.__l.__data_;
      v77.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
      *&v77.__r_.__value_.__l.__data_ = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      boost::filesystem::path::path(v72, ": ");
      if ((v73 & 0x80u) == 0)
      {
        v7 = v72;
      }

      else
      {
        v7 = v72[0];
      }

      if ((v73 & 0x80u) == 0)
      {
        v8 = v73;
      }

      else
      {
        v8 = v72[1];
      }

      v9 = std::string::append(&v77, v7, v8);
      v10 = *&v9->__r_.__value_.__l.__data_;
      v78.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&v78.__r_.__value_.__l.__data_ = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      boost::filesystem::path::path(v70, "\n  Gates values: ");
      if ((v71 & 0x80u) == 0)
      {
        v11 = v70;
      }

      else
      {
        v11 = v70[0];
      }

      if ((v71 & 0x80u) == 0)
      {
        v12 = v71;
      }

      else
      {
        v12 = v70[1];
      }

      v13 = std::string::append(&v78, v11, v12);
      v14 = *&v13->__r_.__value_.__l.__data_;
      v79.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v79.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 248) + 48 * v88);
      if ((v69 & 0x80u) == 0)
      {
        v15 = v68;
      }

      else
      {
        v15 = v68[0];
      }

      if ((v69 & 0x80u) == 0)
      {
        v16 = v69;
      }

      else
      {
        v16 = v68[1];
      }

      v17 = std::string::append(&v79, v15, v16);
      v18 = *&v17->__r_.__value_.__l.__data_;
      v80.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v80.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      boost::filesystem::path::path(v66, "\n  Cell values: ");
      if ((v67 & 0x80u) == 0)
      {
        v19 = v66;
      }

      else
      {
        v19 = v66[0];
      }

      if ((v67 & 0x80u) == 0)
      {
        v20 = v67;
      }

      else
      {
        v20 = v66[1];
      }

      v21 = std::string::append(&v80, v19, v20);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v81.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&v81.__r_.__value_.__l.__data_ = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 272) + 48 * v88);
      if ((v65 & 0x80u) == 0)
      {
        v23 = v64;
      }

      else
      {
        v23 = v64[0];
      }

      if ((v65 & 0x80u) == 0)
      {
        v24 = v65;
      }

      else
      {
        v24 = v64[1];
      }

      v25 = std::string::append(&v81, v23, v24);
      v26 = *&v25->__r_.__value_.__l.__data_;
      v82.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
      *&v82.__r_.__value_.__l.__data_ = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      boost::filesystem::path::path(v62, "\n  Cell outputs: ");
      if ((v63 & 0x80u) == 0)
      {
        v27 = v62;
      }

      else
      {
        v27 = v62[0];
      }

      if ((v63 & 0x80u) == 0)
      {
        v28 = v63;
      }

      else
      {
        v28 = v62[1];
      }

      v29 = std::string::append(&v82, v27, v28);
      v30 = *&v29->__r_.__value_.__l.__data_;
      v83.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&v83.__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 296) + 48 * v88);
      if ((v61 & 0x80u) == 0)
      {
        v31 = v60;
      }

      else
      {
        v31 = v60[0];
      }

      if ((v61 & 0x80u) == 0)
      {
        v32 = v61;
      }

      else
      {
        v32 = v60[1];
      }

      v33 = std::string::append(&v83, v31, v32);
      v34 = *&v33->__r_.__value_.__l.__data_;
      v84.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
      *&v84.__r_.__value_.__l.__data_ = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      boost::filesystem::path::path(v58, "\n  Cell outputs gated: ");
      if ((v59 & 0x80u) == 0)
      {
        v35 = v58;
      }

      else
      {
        v35 = v58[0];
      }

      if ((v59 & 0x80u) == 0)
      {
        v36 = v59;
      }

      else
      {
        v36 = v58[1];
      }

      v37 = std::string::append(&v84, v35, v36);
      v38 = *&v37->__r_.__value_.__l.__data_;
      v85.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
      *&v85.__r_.__value_.__l.__data_ = v38;
      v37->__r_.__value_.__l.__size_ = 0;
      v37->__r_.__value_.__r.__words[2] = 0;
      v37->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 320) + 48 * v88);
      if ((v57 & 0x80u) == 0)
      {
        v39 = __p;
      }

      else
      {
        v39 = __p[0];
      }

      if ((v57 & 0x80u) == 0)
      {
        v40 = v57;
      }

      else
      {
        v40 = __p[1];
      }

      v41 = std::string::append(&v85, v39, v40);
      v42 = *&v41->__r_.__value_.__l.__data_;
      v87 = v41->__r_.__value_.__r.__words[2];
      v86 = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      if (v87 >= 0)
      {
        v43 = &v86;
      }

      else
      {
        v43 = v86;
      }

      if (v87 >= 0)
      {
        v44 = HIBYTE(v87);
      }

      else
      {
        v44 = *(&v86 + 1);
      }

      std::string::append(&v89, v43, v44);
      if (SHIBYTE(v87) < 0)
      {
        operator delete(v86);
      }

      if (v57 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }

      if (v59 < 0)
      {
        operator delete(v58[0]);
      }

      if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v84.__r_.__value_.__l.__data_);
      }

      if (v61 < 0)
      {
        operator delete(v60[0]);
      }

      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      if (v63 < 0)
      {
        operator delete(v62[0]);
      }

      if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v82.__r_.__value_.__l.__data_);
      }

      if (v65 < 0)
      {
        operator delete(v64[0]);
      }

      if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v81.__r_.__value_.__l.__data_);
      }

      if (v67 < 0)
      {
        operator delete(v66[0]);
      }

      if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v80.__r_.__value_.__l.__data_);
      }

      if (v69 < 0)
      {
        operator delete(v68[0]);
      }

      if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v79.__r_.__value_.__l.__data_);
      }

      if (v71 < 0)
      {
        operator delete(v70[0]);
      }

      if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v78.__r_.__value_.__l.__data_);
      }

      if (v73 < 0)
      {
        operator delete(v72[0]);
      }

      if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v77.__r_.__value_.__l.__data_);
      }

      if (v75 < 0)
      {
        operator delete(v74[0]);
      }

      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v76.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 224) == 1)
      {
        boost::filesystem::path::path(&v85, "\n  Output values: ");
        kaldi::nnet1::MomentStatistics<float>(*(a1 + 344) + 48 * v88);
        if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v45 = &v84;
        }

        else
        {
          v45 = v84.__r_.__value_.__r.__words[0];
        }

        if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v84.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v84.__r_.__value_.__l.__size_;
        }

        v47 = std::string::append(&v85, v45, size);
        v48 = *&v47->__r_.__value_.__l.__data_;
        v87 = v47->__r_.__value_.__r.__words[2];
        v86 = v48;
        v47->__r_.__value_.__l.__size_ = 0;
        v47->__r_.__value_.__r.__words[2] = 0;
        v47->__r_.__value_.__r.__words[0] = 0;
        if (v87 >= 0)
        {
          v49 = &v86;
        }

        else
        {
          v49 = v86;
        }

        if (v87 >= 0)
        {
          v50 = HIBYTE(v87);
        }

        else
        {
          v50 = *(&v86 + 1);
        }

        std::string::append(&v89, v49, v50);
        if (SHIBYTE(v87) < 0)
        {
          operator delete(v86);
        }

        if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v84.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v85.__r_.__value_.__l.__data_);
        }
      }

      ++v88;
    }

    while (v88 < *(a1 + 80));
  }

  v51 = boost::filesystem::path::path(&v86, "\n");
  if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v52 = &v89;
  }

  else
  {
    v52 = v89.__r_.__value_.__r.__words[0];
  }

  if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v53 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v53 = v89.__r_.__value_.__l.__size_;
  }

  v54 = std::string::insert(v51, 0, v52, v53);
  *a2 = *v54;
  v54->__r_.__value_.__l.__size_ = 0;
  v54->__r_.__value_.__r.__words[2] = 0;
  v54->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v87) < 0)
  {
    operator delete(v86);
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }
}

void sub_15EA10(_Unwind_Exception *a1)
{
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InfoBackPropagate(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  memset(&v75, 0, sizeof(v75));
  v74 = 0;
  if (*(a1 + 80) >= 1)
  {
    do
    {
      boost::filesystem::path::path(&v64, "\n For batch ");
      kaldi::nnet1::ToString<int>(&v74);
      if ((v63 & 0x80u) == 0)
      {
        v3 = v62;
      }

      else
      {
        v3 = v62[0];
      }

      if ((v63 & 0x80u) == 0)
      {
        v4 = v63;
      }

      else
      {
        v4 = v62[1];
      }

      v5 = std::string::append(&v64, v3, v4);
      v6 = *&v5->__r_.__value_.__l.__data_;
      v65.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
      *&v65.__r_.__value_.__l.__data_ = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      boost::filesystem::path::path(v60, ": ");
      if ((v61 & 0x80u) == 0)
      {
        v7 = v60;
      }

      else
      {
        v7 = v60[0];
      }

      if ((v61 & 0x80u) == 0)
      {
        v8 = v61;
      }

      else
      {
        v8 = v60[1];
      }

      v9 = std::string::append(&v65, v7, v8);
      v10 = *&v9->__r_.__value_.__l.__data_;
      v66.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&v66.__r_.__value_.__l.__data_ = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      boost::filesystem::path::path(v58, "\n  Gates diff: ");
      if ((v59 & 0x80u) == 0)
      {
        v11 = v58;
      }

      else
      {
        v11 = v58[0];
      }

      if ((v59 & 0x80u) == 0)
      {
        v12 = v59;
      }

      else
      {
        v12 = v58[1];
      }

      v13 = std::string::append(&v66, v11, v12);
      v14 = *&v13->__r_.__value_.__l.__data_;
      v67.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v67.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 440) + 48 * v74);
      if ((v57 & 0x80u) == 0)
      {
        v15 = v56;
      }

      else
      {
        v15 = v56[0];
      }

      if ((v57 & 0x80u) == 0)
      {
        v16 = v57;
      }

      else
      {
        v16 = v56[1];
      }

      v17 = std::string::append(&v67, v15, v16);
      v18 = *&v17->__r_.__value_.__l.__data_;
      v68.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v68.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      boost::filesystem::path::path(v54, "\n  Cell diff: ");
      if ((v55 & 0x80u) == 0)
      {
        v19 = v54;
      }

      else
      {
        v19 = v54[0];
      }

      if ((v55 & 0x80u) == 0)
      {
        v20 = v55;
      }

      else
      {
        v20 = v54[1];
      }

      v21 = std::string::append(&v68, v19, v20);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v69.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&v69.__r_.__value_.__l.__data_ = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 416) + 48 * v74);
      if ((v53 & 0x80u) == 0)
      {
        v23 = v52;
      }

      else
      {
        v23 = v52[0];
      }

      if ((v53 & 0x80u) == 0)
      {
        v24 = v53;
      }

      else
      {
        v24 = v52[1];
      }

      v25 = std::string::append(&v69, v23, v24);
      v26 = *&v25->__r_.__value_.__l.__data_;
      v70.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
      *&v70.__r_.__value_.__l.__data_ = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      boost::filesystem::path::path(v50, "\n  Cell out gated diff: ");
      if ((v51 & 0x80u) == 0)
      {
        v27 = v50;
      }

      else
      {
        v27 = v50[0];
      }

      if ((v51 & 0x80u) == 0)
      {
        v28 = v51;
      }

      else
      {
        v28 = v50[1];
      }

      v29 = std::string::append(&v70, v27, v28);
      v30 = *&v29->__r_.__value_.__l.__data_;
      v71.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&v71.__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 392) + 48 * v74);
      if ((v49 & 0x80u) == 0)
      {
        v31 = __p;
      }

      else
      {
        v31 = __p[0];
      }

      if ((v49 & 0x80u) == 0)
      {
        v32 = v49;
      }

      else
      {
        v32 = __p[1];
      }

      v33 = std::string::append(&v71, v31, v32);
      v34 = *&v33->__r_.__value_.__l.__data_;
      v73 = v33->__r_.__value_.__r.__words[2];
      v72 = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      if (v73 >= 0)
      {
        v35 = &v72;
      }

      else
      {
        v35 = v72;
      }

      if (v73 >= 0)
      {
        v36 = HIBYTE(v73);
      }

      else
      {
        v36 = *(&v72 + 1);
      }

      std::string::append(&v75, v35, v36);
      if (SHIBYTE(v73) < 0)
      {
        operator delete(v72);
      }

      if (v49 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v71.__r_.__value_.__l.__data_);
      }

      if (v51 < 0)
      {
        operator delete(v50[0]);
      }

      if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v70.__r_.__value_.__l.__data_);
      }

      if (v53 < 0)
      {
        operator delete(v52[0]);
      }

      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v69.__r_.__value_.__l.__data_);
      }

      if (v55 < 0)
      {
        operator delete(v54[0]);
      }

      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
      }

      if (v57 < 0)
      {
        operator delete(v56[0]);
      }

      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__r_.__value_.__l.__data_);
      }

      if (v59 < 0)
      {
        operator delete(v58[0]);
      }

      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      if (v61 < 0)
      {
        operator delete(v60[0]);
      }

      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
      }

      if (v63 < 0)
      {
        operator delete(v62[0]);
      }

      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 224) == 1)
      {
        boost::filesystem::path::path(&v71, "\n  Output diff: ");
        kaldi::nnet1::MomentStatistics<float>(*(a1 + 368) + 48 * v74);
        if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v37 = &v70;
        }

        else
        {
          v37 = v70.__r_.__value_.__r.__words[0];
        }

        if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v70.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v70.__r_.__value_.__l.__size_;
        }

        v39 = std::string::append(&v71, v37, size);
        v40 = *&v39->__r_.__value_.__l.__data_;
        v73 = v39->__r_.__value_.__r.__words[2];
        v72 = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        if (v73 >= 0)
        {
          v41 = &v72;
        }

        else
        {
          v41 = v72;
        }

        if (v73 >= 0)
        {
          v42 = HIBYTE(v73);
        }

        else
        {
          v42 = *(&v72 + 1);
        }

        std::string::append(&v75, v41, v42);
        if (SHIBYTE(v73) < 0)
        {
          operator delete(v72);
        }

        if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v70.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v71.__r_.__value_.__l.__data_);
        }
      }

      ++v74;
    }

    while (v74 < *(a1 + 80));
  }

  v43 = boost::filesystem::path::path(&v72, "\n");
  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = &v75;
  }

  else
  {
    v44 = v75.__r_.__value_.__r.__words[0];
  }

  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v45 = HIBYTE(v75.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v45 = v75.__r_.__value_.__l.__size_;
  }

  v46 = std::string::insert(v43, 0, v44, v45);
  *a2 = *v46;
  v46->__r_.__value_.__l.__size_ = 0;
  v46->__r_.__value_.__r.__words[2] = 0;
  v46->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v73) < 0)
  {
    operator delete(v72);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }
}

void sub_15F204(_Unwind_Exception *a1)
{
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(a1);
}

double kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const char *a5)
{
  v5 = *(a2 + 20);
  v6 = *(a1 + 96);
  v82 = v5 / v6;
  if (v5 % v6)
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_298.addr + 3, "batch_size % num_utts == 0", a5);
  }

  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v108, "PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 701, 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v108, "Running forward propagation for batch size = ", 45);
    v11 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", which contains ", 17);
    v12 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " frames each from ", 18);
    v13 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v108);
  }

  v14 = *(a3 + 32);
  (*(*a1 + 88))(a1);
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::AllocateForwardBuffers(a1, a4, v5, v14);
  v16 = *(a1 + 104);
  v17 = a4;
  v78 = a3;
  v79 = a4;
  if (*(a1 + 112) == v16 || (v18 = *(v16 + 32 * a4 + 16), v18 < 1))
  {
    v80 = 0;
  }

  else
  {
    if (v18 != v5)
    {
      kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_298.size + 5, "boundary_[batch_index].Dim() == batch_size", v15);
    }

    v19 = *(a1 + 128) + 48 * a4;
    *(v19 + 32) = v14;
    v80 = 1;
    kaldi::CuMatrix<float>::Resize(v19, v6, *(*(a1 + 8) + 48 * a4 + 16), 1u, 0);
  }

  v20 = *(a1 + 248) + 48 * a4;
  v83 = *(a1 + 344) + 48 * a4;
  v21 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  kaldi::CuMatrixBase<float>::AddMatMat<signed char>(v20, a2, 111, v21, &stru_68.sectname[8], 1.0, 0.0);
  v22 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Bias(a1);
  kaldi::CuMatrixBase<float>::AddVecToRows(v20, v22, v23, v24, v25, 1.0, 1.0);
  if (v82 >= 1)
  {
    v28 = 0;
    v29 = 0;
    v81 = a1 + 12;
    v30 = -v6;
    do
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v108, v20, v28, v6, 0, *(a1 + 176));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v105, v20, v28, v6, *(a1 + 176), *(a1 + 176));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v102, v20, v28, v6, (3 * *(a1 + 176)), *(a1 + 176));
      v31 = *(a1 + 272) + 48 * v17;
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v99, v31, v28, v6, 0, *(v31 + 16));
      memset(v98, 0, sizeof(v98));
      v97 = off_276F40;
      memset(v96, 0, sizeof(v96));
      v95 = off_276F40;
      if (v29)
      {
        if (v80)
        {
          kaldi::CuMatrixBase<float>::SetZero(*(a1 + 128) + 48 * v17);
          v32 = *(a1 + 128) + 48 * v17;
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v93, v32, 0, *(v32 + 20), 0, *(a1 + 176));
          v96[0] = v94[0];
          *&v96[1] = *&v94[1];
          v96[3] = v94[3];
          v93 = off_276F40;
          memset(v94, 0, sizeof(v94));
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v93);
          v33 = *(a1 + 272) + 48 * v17;
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v93, v33, v30 + v28, v6, 0, *(v33 + 16));
          kaldi::CuSubVector<float>::CuSubVector(&v90, *(a1 + 104) + 32 * v17, v28, v6, v34);
          kaldi::CuMatrixBase<float>::CopySelectedRows(&v95, &v93, &v90, 1, v35);
          v93 = off_276F40;
          memset(v94, 0, sizeof(v94));
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v93);
          v36 = *(a1 + 128) + 48 * v17;
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v93, v36, 0, *(v36 + 20), *(a1 + 176), *(v81 + *(*a1 - 24)));
          *&v98[1] = *&v94[1];
          v98[0] = v94[0];
          v98[3] = v94[3];
          v93 = off_276F40;
          memset(v94, 0, sizeof(v94));
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v93);
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v93, v83, v30 + v28, v6, 0, *(v83 + 16));
          kaldi::CuSubVector<float>::CuSubVector(&v90, *(a1 + 104) + 32 * v17, v28, v6, v37);
          kaldi::CuMatrixBase<float>::CopySelectedRows(&v97, &v93, &v90, 1, v38);
          v93 = off_276F40;
          memset(v94, 0, sizeof(v94));
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v93);
        }

        else
        {
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v93, v83, v30 + v28, v6, 0, *(v83 + 16));
          *&v98[1] = *&v94[1];
          v98[0] = v94[0];
          v98[3] = v94[3];
          v93 = off_276F40;
          memset(v94, 0, sizeof(v94));
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v93);
          v41 = *(a1 + 272) + 48 * v17;
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v93, v41, v30 + v28, v6, 0, *(v41 + 16));
          v96[0] = v94[0];
          *&v96[1] = *&v94[1];
          v96[3] = v94[3];
          v93 = off_276F40;
          memset(v94, 0, sizeof(v94));
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v93);
          v30 = -v6;
        }
      }

      else
      {
        v39 = *(a1 + 8) + 48 * v17;
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v93, v39, 0, *(v39 + 20), *(a1 + 176), *(v81 + *(*a1 - 24)));
        *&v98[1] = *&v94[1];
        v98[0] = v94[0];
        v98[3] = v94[3];
        v93 = off_276F40;
        memset(v94, 0, sizeof(v94));
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v93);
        v40 = *(a1 + 8) + 48 * v17;
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v93, v40, 0, *(v40 + 20), 0, *(a1 + 176));
        v96[0] = v94[0];
        *&v96[1] = *&v94[1];
        v96[3] = v94[3];
        v93 = off_276F40;
        memset(v94, 0, sizeof(v94));
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v93);
        v30 = -v6;
      }

      kaldi::CuSubMatrix<float>::CuSubMatrix(&v93, v20, v28, v6, 0, *(v20 + 16));
      v42 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(a1);
      kaldi::CuMatrixBase<float>::AddMatMat<signed char>(&v93, &v97, 111, v42, &stru_68.sectname[8], 1.0, 1.0);
      v93 = off_276F40;
      memset(v94, 0, sizeof(v94));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v93);
      if (*(a1 + 208) == 1)
      {
        v46 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1);
        if (!*(v46 + 20))
        {
          kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v47);
        }

        v48 = *(v46 + 16);
        v49 = *(v46 + 32);
        v94[0] = *(v46 + 8);
        v93 = &off_276FE0;
        v94[1] = v48;
        v94[2] = v49;
        kaldi::CuMatrixBase<float>::AddMatDiagVec(&v108, &v95, 111, &v93, v47, 1.0, 1.0);
        v50 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1);
        if (*(v50 + 20) <= 1u)
        {
          kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v51);
        }

        v52 = *(v50 + 16);
        v53 = *(v50 + 32);
        v94[0] = *(v50 + 8) + 4 * *(v50 + 24);
        v93 = &off_276FE0;
        v94[1] = v52;
        v94[2] = v53;
        kaldi::CuMatrixBase<float>::AddMatDiagVec(&v105, &v95, 111, &v93, v51, 1.0, 1.0);
      }

      kaldi::CuMatrixBase<float>::Sigmoid(&v108, &v108, v43, v44, v45);
      kaldi::CuMatrixBase<float>::Sigmoid(&v105, &v105, v54, v55, v56);
      kaldi::CuMatrixBase<float>::ApplyTanh(&v102, v57, v58, v59, v60);
      kaldi::CuMatrixBase<float>::AddMatEwpMat(&v99, &v108, 111, &v102, &stru_68.sectname[7], 1.0, 0.0);
      kaldi::CuMatrixBase<float>::AddMatEwpMat(&v99, &v105, 111, &v95, &stru_68.sectname[7], 1.0, 1.0);
      v61 = *(a1 + 476);
      if (v61 > 0.0)
      {
        kaldi::CuMatrixBase<float>::ApplyCeiling(&v99, v61);
        kaldi::CuMatrixBase<float>::ApplyFloor(&v99, -*(a1 + 476));
      }

      kaldi::CuSubMatrix<float>::CuSubMatrix(&v93, v20, v28, v6, (2 * *(a1 + 176)), *(a1 + 176));
      if (*(a1 + 208) == 1)
      {
        v65 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1);
        if (*(v65 + 20) <= 2u)
        {
          kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v66);
        }

        v67 = *(v65 + 16);
        v68 = *(v65 + 32);
        *&v91 = *(v65 + 8) + 8 * *(v65 + 24);
        v90 = &off_276FE0;
        *(&v91 + 1) = v67;
        *&v92 = v68;
        kaldi::CuMatrixBase<float>::AddMatDiagVec(&v93, &v99, 111, &v90, v66, 1.0, 1.0);
      }

      kaldi::CuMatrixBase<float>::Sigmoid(&v93, &v93, v62, v63, v64);
      v69 = *(a1 + 296) + 48 * v17;
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v90, v69, v28, v6, 0, *(v69 + 16));
      kaldi::CuMatrixBase<float>::Tanh(&v90, &v99, v70, v71, v72);
      v73 = *(a1 + 320) + 48 * v17;
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v87, v73, v28, v6, 0, *(v73 + 16));
      kaldi::CuMatrixBase<float>::AddMatEwpMat(&v87, &v93, 111, &v90, &stru_68.sectname[7], 1.0, 0.0);
      if (*(a1 + 224) == 1)
      {
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v84, v83, v28, v6, 0, *(v83 + 16));
        v74 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(a1);
        kaldi::CuMatrixBase<float>::AddMatMat<signed char>(&v84, &v87, 111, v74, &stru_68.sectname[8], 1.0, 0.0);
      }

      else
      {
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v84, v83, v28, v6, 0, *(v83 + 16));
        kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v84, &v87, 111, v75, v76);
      }

      v84 = off_276F40;
      v85 = 0u;
      v86 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v84);
      v87 = off_276F40;
      v88 = 0u;
      v89 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v87);
      v90 = off_276F40;
      v91 = 0u;
      v92 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v90);
      v93 = off_276F40;
      memset(v94, 0, sizeof(v94));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v93);
      v95 = off_276F40;
      memset(v96, 0, sizeof(v96));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v95);
      v97 = off_276F40;
      memset(v98, 0, sizeof(v98));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v97);
      v99 = off_276F40;
      v100 = 0u;
      v101 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v99);
      v102 = off_276F40;
      v103 = 0u;
      v104 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v102);
      v105 = off_276F40;
      v106 = 0u;
      v107 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v105);
      v108.__locale_ = off_276F40;
      v109 = 0u;
      v110 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v108);
      ++v29;
      v28 += v6;
    }

    while (v82 != v29);
  }

  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v78, v83, 111, v26, v27);
  return kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::SaveLastState(a1, v79);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::AllocateForwardBuffers(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v9, "AllocateForwardBuffers", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1397, 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Allocating forward buffers for batch ", 37);
    v8 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "; batch size = ", 15);
    std::ostream::operator<<();
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v9);
  }

  kaldi::CuMatrix<float>::Resize(*(a1 + 248) + 48 * a2, a3, (4 * *(a1 + 176)), 0, 0);
  kaldi::CuMatrix<float>::Resize(*(a1 + 272) + 48 * a2, a3, *(a1 + 176), 0, 0);
  kaldi::CuMatrix<float>::Resize(*(a1 + 296) + 48 * a2, a3, *(a1 + 176), 0, 0);
  kaldi::CuMatrix<float>::Resize(*(a1 + 320) + 48 * a2, a3, *(a1 + 176), 0, 0);
  kaldi::CuMatrix<float>::Resize(*(a1 + 344) + 48 * a2, a3, *(a1 + *(*a1 - 24) + 12), 0, 0);
  *(*(a1 + 248) + 48 * a2 + 32) = a4;
  *(*(a1 + 272) + 48 * a2 + 32) = a4;
  *(*(a1 + 296) + 48 * a2 + 32) = a4;
  *(*(a1 + 320) + 48 * a2 + 32) = a4;
  *(*(a1 + 344) + 48 * a2 + 32) = a4;
}

void sub_160638(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

double kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::SaveLastState(uint64_t a1, int a2)
{
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v16, "SaveLastState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1700, 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "Saving last output and cell state for batch ", 44);
    std::ostream::operator<<();
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v16);
  }

  v4 = *(*(a1 + 272) + 48 * a2 + 20) - *(a1 + 96);
  v5 = *(a1 + 8) + 48 * a2;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v16, v5, 0, *(v5 + 20), 0, *(a1 + 176));
  v6 = *(a1 + 272) + 48 * a2;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v13, v6, v4, *(a1 + 96), 0, *(v6 + 16));
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v16, &v13, 111, v7, v8);
  v13 = off_276F40;
  v14 = 0u;
  v15 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v13);
  v16.__locale_ = off_276F40;
  v17 = 0u;
  v18 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v16);
  v9 = 3 * a2;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v16, *(a1 + 8) + 16 * v9, 0, *(*(a1 + 8) + 16 * v9 + 20), *(a1 + 176), *(a1 + *(*a1 - 24) + 12));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v13, *(a1 + 344) + 16 * v9, v4, *(a1 + 96), 0, *(*(a1 + 344) + 16 * v9 + 16));
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v16, &v13, 111, v10, v11);
  v13 = off_276F40;
  v14 = 0u;
  v15 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v13);
  v16.__locale_ = off_276F40;
  v17 = 0u;
  v18 = 0u;
  *&result = fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v16).n128_u64[0];
  return result;
}

void sub_160880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (**a9)(), __int128 a10, __int128 a11, void (**a12)(), __int128 a13, __int128 a14)
{
  a9 = off_276F40;
  a10 = 0u;
  a11 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a9);
  a12 = off_276F40;
  a13 = 0u;
  a14 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a12);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 88))(a1);
  if (*(a1 + 96) == 1)
  {
    v6 = *(a3 + 24);
    kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::AllocateForwardBuffers(a1, 0, 1, v6);
    v8 = *(a1 + 104);
    if (*(a1 + 112) != v8)
    {
      v9 = *(v8 + 16);
      if (v9 >= 1)
      {
        if (v9 != 1)
        {
          kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_2E8.nreloc + 1, "boundary_[0].Dim() == 1", v7);
        }

        v10 = *(a1 + 128);
        *(v10 + 32) = v6;
        kaldi::CuMatrix<float>::Resize(v10, 1, *(*(a1 + 8) + 16), 1u, 0);
      }
    }

    v11 = *(a1 + 248);
    v16 = *(v11 + 8);
    v17 = *(v11 + 16);
    v18 = *(v11 + 32);
    v12 = *(a1 + 344);
    v13 = *(v12 + 8);
    v14 = *(v12 + 16);
    v15 = *(v12 + 32);
    kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
    kaldi::CuVectorBase<float>::AddMatVec<signed char>();
  }

  kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_2E8.reloff, "ropts_.num_sequences == 1", v5);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::GetUnitOutputFnc()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v1, "GetUnitOutputFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 876);
  v0 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "GetUnitOutputFnc", 16);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, " Not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v1, "GetUnitOutputFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 881);
  v0 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "GetUnitOutputFnc", 16);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, " Not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

void virtual thunk tokaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::GetUnitOutputFnc(void *a1)
{
  v1 = *(*a1 - 160);
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::GetUnitOutputFnc();
}

{
  v1 = *(*a1 - 168);
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::GetUnitOutputFnc();
}

double kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = *(a2 + 20);
  v11 = *(a1 + 96);
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::EnsureTrainingBuffers(a1);
  v13 = v10 / v11;
  if (v10 % v11)
  {
    kaldi::KaldiAssertFailure_("BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_338.reserved2, "batch_size % num_utts == 0", v12);
  }

  if (kaldi::g_kaldi_verbose_level > 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v155, "BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 898, 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v155, "Running backward propagation for batch size = ", 46);
    v14 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", which contains ", 17);
    v15 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " frames each from ", 18);
    v16 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v155);
  }

  v108 = v10 / v11;
  v105 = v13 - 2;
  if (v13 < 2)
  {
    kaldi::KaldiAssertFailure_("BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_338.reserved3, "frames_in_batch > 1 && LSTM backprop will not work with batches of single frames.", v12);
  }

  v104 = a5;
  if (a5)
  {
    v17 = a5;
  }

  else
  {
    v17 = a4;
  }

  v18 = *(v17 + 32);
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::AllocateBackwardBuffers(a1, a6, v10, v18);
  v21 = a6;
  v22 = *(a1 + 248);
  v23 = *(a1 + 440) + 48 * a6;
  v24 = *(a1 + 368);
  v103 = *(a1 + 416);
  v25 = *(a1 + 104);
  v107 = v23;
  if (*(a1 + 112) == v25 || (v26 = *(v25 + 32 * a6 + 16), v26 < 1))
  {
    v110 = 0;
  }

  else
  {
    if (v26 != v10)
    {
      kaldi::KaldiAssertFailure_("BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_388.sectname[8], "boundary_[batch_index].Dim() == batch_size", v20);
    }

    v27 = *(a1 + 128) + 48 * a6;
    *(v27 + 32) = v18;
    v110 = 1;
    kaldi::CuMatrix<float>::Resize(v27, v11, *(v23 + 16), 1u, 0);
  }

  v28 = v22 + 48 * a6;
  v29 = v24 + 48 * a6;
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v29, a4, 111, v19, v20);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v155, v28, 0, *(v28 + 20), 0, *(a1 + 176));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v152, v28, 0, *(v28 + 20), *(a1 + 176), *(a1 + 176));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v149, v28, 0, *(v28 + 20), (2 * *(a1 + 176)), *(a1 + 176));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v146, v28, 0, *(v28 + 20), (3 * *(a1 + 176)), *(a1 + 176));
  v30 = v107;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v143, v107, 0, *(v107 + 20), 0, *(a1 + 176));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v140, v30, 0, *(v30 + 20), *(a1 + 176), *(a1 + 176));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v137, v30, 0, *(v30 + 20), (2 * *(a1 + 176)), *(a1 + 176));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v134, v30, 0, *(v30 + 20), (3 * *(a1 + 176)), *(a1 + 176));
  kaldi::CuMatrixBase<float>::DiffSigmoid(&v143, &v155, &v146, v31, v32);
  v33 = v10 - v11;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v131, &v140, v11, v33, 0, SDWORD2(v141));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v128, &v152, v11, v33, 0, SDWORD2(v153));
  v34 = *(a1 + 272) + 48 * a6;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v125, v34, 0, v33, 0, *(v34 + 16));
  kaldi::CuMatrixBase<float>::DiffSigmoid(&v131, &v128, &v125, v35, v36);
  v125 = off_276F40;
  v126 = 0u;
  v127 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v125);
  v128 = off_276F40;
  v129 = 0u;
  v130 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v128);
  v131 = off_276F40;
  v132 = 0u;
  v133 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v131);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v131, &v140, 0, v11, 0, SDWORD2(v141));
  kaldi::CuMatrixBase<float>::SetZero(&v131);
  v131 = off_276F40;
  v132 = 0u;
  v133 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v131);
  if (v110)
  {
    v39 = *(a1 + 128) + 48 * a6;
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v131, v39, 0, *(v39 + 20), 0, *(a1 + 176));
    kaldi::CuMatrixBase<float>::SetZero(&v131);
    v40 = v108 - 1;
    v41 = v11;
    do
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v128, &v140, v41, v11, 0, SDWORD2(v141));
      kaldi::CuSubVector<float>::CuSubVector(&v125, *(a1 + 104) + 32 * a6, v41, v11, v42);
      kaldi::CuMatrixBase<float>::CopySelectedRows(&v128, &v131, &v125, 0, v43);
      v128 = off_276F40;
      v129 = 0u;
      v130 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v128);
      v41 += v11;
      --v40;
    }

    while (v40);
    v131 = off_276F40;
    v132 = 0u;
    v133 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v131);
  }

  kaldi::CuMatrixBase<float>::DiffSigmoid(&v137, &v149, *(a1 + 296) + 48 * a6, v37, v38);
  kaldi::CuMatrixBase<float>::DiffTanh(&v134, &v146, &v155, v44, v45);
  v46 = v103 + 48 * a6;
  kaldi::CuMatrixBase<float>::DiffTanh(v46, *(a1 + 296) + 48 * a6, &v149, v47, v48);
  v49 = 0;
  v50 = v108 - 1;
  v51 = v11 * (v108 - 1);
  v52 = v11 * v108;
  v106 = v11 * v105;
  v109 = v108 - 1;
  do
  {
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v131, v29, v51 + v49, v11, 0, *(v29 + 16));
    v53 = *(a1 + 392) + 48 * v21;
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v128, v53, v51 + v49, v11, 0, *(v53 + 16));
    if (*(a1 + 224) == 1)
    {
      v56 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(a1);
      kaldi::CuMatrixBase<float>::AddMatMat<signed char>(&v128, &v131, 111, v56, &stru_68.sectname[7], 1.0, 0.0);
    }

    else
    {
      kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v128, &v131, 111, v54, v55);
    }

    kaldi::CuSubMatrix<float>::CuSubMatrix(&v125, &v137, v51 + v49, v11, 0, SDWORD2(v138));
    kaldi::CuMatrixBase<float>::MulElements(&v125, &v128, v57, v58, v59);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v122, v46, v51 + v49, v11, 0, *(v46 + 16));
    kaldi::CuMatrixBase<float>::MulElements(&v122, &v128, v60, v61, v62);
    if (*(a1 + 208) == 1)
    {
      v63 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1);
      if (*(v63 + 20) <= 2u)
      {
        kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v64);
      }

      v65 = *(v63 + 16);
      v66 = *(v63 + 32);
      v121[0] = *(v63 + 8) + 8 * *(v63 + 24);
      v120 = &off_276FE0;
      v121[1] = v65;
      v121[2] = v66;
      kaldi::CuMatrixBase<float>::AddMatDiagVec(&v122, &v125, 111, &v120, v64, 1.0, 1.0);
    }

    if (v50 < v109)
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v120, v46, v52 + v49, v11, 0, *(v46 + 16));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v118, &v152, v52 + v49, v11, 0, SDWORD2(v153));
      if (v110)
      {
        v67 = *(a1 + 128) + 48 * v21;
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v116, v67, 0, *(v67 + 20), 0, *(a1 + 176));
        kaldi::CuMatrixBase<float>::SetZero(&v116);
        kaldi::CuSubVector<float>::CuSubVector(&v114, *(a1 + 104) + 32 * v21, v52 + v49, v11, v68);
        kaldi::CuMatrixBase<float>::CopySelectedRows(&v116, &v120, &v114, 1, v69);
        *&v121[1] = *&v117[1];
        v121[0] = v117[0];
        v121[3] = v117[3];
        v70 = *(a1 + 128) + 48 * v21;
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v114, v70, 0, *(v70 + 20), *(a1 + 176), *(a1 + 176));
        kaldi::CuMatrixBase<float>::SetZero(&v114);
        kaldi::CuSubVector<float>::CuSubVector(v113, *(a1 + 104) + 32 * v21, v52 + v49, v11, v71);
        kaldi::CuMatrixBase<float>::CopySelectedRows(&v114, &v118, v113, 1, v72);
        v119[0] = v115[0];
        *&v119[1] = *&v115[1];
        v119[3] = v115[3];
        v114 = off_276F40;
        memset(v115, 0, sizeof(v115));
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v114);
        v116 = off_276F40;
        memset(v117, 0, sizeof(v117));
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v116);
      }

      if (*(a1 + 208) == 1)
      {
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v116, &v140, v52 + v49, v11, 0, SDWORD2(v141));
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v114, &v143, v52 + v49, v11, 0, SDWORD2(v144));
        if (v110)
        {
          v73 = *(a1 + 128) + 48 * v21;
          kaldi::CuSubMatrix<float>::CuSubMatrix(v113, v73, 0, *(v73 + 20), (2 * *(a1 + 176)), *(a1 + 176));
          kaldi::CuMatrixBase<float>::SetZero(v113);
          kaldi::CuSubVector<float>::CuSubVector(v112, *(a1 + 104) + 32 * v21, v52 + v49, v11, v74);
          kaldi::CuMatrixBase<float>::CopySelectedRows(v113, &v116, v112, 1, v75);
          *&v117[1] = *&v113[2];
          v117[0] = v113[1];
          v117[3] = v113[4];
          v76 = *(a1 + 128) + 48 * v21;
          kaldi::CuSubMatrix<float>::CuSubMatrix(v112, v76, 0, *(v76 + 20), (3 * *(a1 + 176)), *(a1 + 176));
          kaldi::CuMatrixBase<float>::SetZero(v112);
          kaldi::CuSubVector<float>::CuSubVector(v111, *(a1 + 104) + 32 * v21, v52 + v49, v11, v77);
          kaldi::CuMatrixBase<float>::CopySelectedRows(v112, &v114, v111, 1, v78);
          v115[0] = v112[1];
          *&v115[1] = *&v112[2];
          v115[3] = v112[4];
          v112[0] = off_276F40;
          memset(&v112[1], 0, 32);
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v112);
          v113[0] = off_276F40;
          memset(&v113[1], 0, 32);
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v113);
        }

        v79 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1);
        if (*(v79 + 20) <= 1u)
        {
          kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v80);
        }

        v81 = *(v79 + 16);
        v82 = *(v79 + 32);
        v113[1] = *(v79 + 8) + 4 * *(v79 + 24);
        v113[0] = &off_276FE0;
        v113[2] = v81;
        v113[3] = v82;
        kaldi::CuMatrixBase<float>::AddMatDiagVec(&v122, &v116, 111, v113, v80, 1.0, 1.0);
        v83 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1);
        if (!*(v83 + 20))
        {
          kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v84);
        }

        v85 = *(v83 + 16);
        v86 = *(v83 + 32);
        v113[1] = *(v83 + 8);
        v113[0] = &off_276FE0;
        v113[2] = v85;
        v113[3] = v86;
        kaldi::CuMatrixBase<float>::AddMatDiagVec(&v122, &v114, 111, v113, v84, 1.0, 1.0);
        v114 = off_276F40;
        memset(v115, 0, sizeof(v115));
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v114);
        v116 = off_276F40;
        memset(v117, 0, sizeof(v117));
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v116);
      }

      kaldi::CuMatrixBase<float>::AddMatEwpMat(&v122, &v120, 111, &v118, &stru_68.sectname[7], 1.0, 1.0);
      v118 = off_276F40;
      memset(v119, 0, sizeof(v119));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v118);
      v120 = off_276F40;
      memset(v121, 0, sizeof(v121));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v120);
    }

    kaldi::CuSubMatrix<float>::CuSubMatrix(&v120, &v143, v51 + v49, v11, 0, SDWORD2(v144));
    kaldi::CuMatrixBase<float>::MulElements(&v120, &v122, v87, v88, v89);
    v120 = off_276F40;
    memset(v121, 0, sizeof(v121));
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v120);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v120, &v134, v51 + v49, v11, 0, SDWORD2(v135));
    kaldi::CuMatrixBase<float>::MulElements(&v120, &v122, v90, v91, v92);
    v120 = off_276F40;
    memset(v121, 0, sizeof(v121));
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v120);
    if (v50)
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v120, &v140, v51 + v49, v11, 0, SDWORD2(v141));
      kaldi::CuMatrixBase<float>::MulElements(&v120, &v122, v93, v94, v95);
      v120 = off_276F40;
      memset(v121, 0, sizeof(v121));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v120);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v120, v107, v51 + v49, v11, 0, *(v107 + 16));
      if (v110)
      {
        v96 = *(a1 + 128) + 48 * v21;
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v118, v96, 0, *(v96 + 20), 0, v121[1]);
        kaldi::CuMatrixBase<float>::SetZero(&v118);
        kaldi::CuSubVector<float>::CuSubVector(&v116, *(a1 + 104) + 32 * v21, v51 + v49, v11, v97);
        kaldi::CuMatrixBase<float>::CopySelectedRows(&v118, &v120, &v116, 1, v98);
        *&v121[1] = *&v119[1];
        v121[0] = v119[0];
        v121[3] = v119[3];
        v118 = off_276F40;
        memset(v119, 0, sizeof(v119));
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v118);
      }

      kaldi::CuSubMatrix<float>::CuSubMatrix(&v118, v29, v106 + v49, v11, 0, *(v29 + 16));
      v99 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(a1);
      kaldi::CuMatrixBase<float>::AddMatMat<signed char>(&v118, &v120, 111, v99, &stru_68.sectname[7], 1.0, 1.0);
      v118 = off_276F40;
      memset(v119, 0, sizeof(v119));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v118);
      v120 = off_276F40;
      memset(v121, 0, sizeof(v121));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v120);
    }

    v122 = off_276F40;
    v123 = 0u;
    v124 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v122);
    v125 = off_276F40;
    v126 = 0u;
    v127 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v125);
    v128 = off_276F40;
    v129 = 0u;
    v130 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v128);
    v131 = off_276F40;
    v132 = 0u;
    v133 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v131);
    v49 -= v11;
  }

  while (v50-- > 0);
  if (v104)
  {
    v101 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
    kaldi::CuMatrixBase<float>::AddMatMat<signed char>(v104, v107, 111, v101, &stru_68.sectname[7], 1.0, 0.0);
  }

  v134 = off_276F40;
  v135 = 0u;
  v136 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v134);
  v137 = off_276F40;
  v138 = 0u;
  v139 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v137);
  v140 = off_276F40;
  v141 = 0u;
  v142 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v140);
  v143 = off_276F40;
  v144 = 0u;
  v145 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v143);
  v146 = off_276F40;
  v147 = 0u;
  v148 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v146);
  v149 = off_276F40;
  v150 = 0u;
  v151 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v149);
  v152 = off_276F40;
  v153 = 0u;
  v154 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v152);
  v155.__locale_ = off_276F40;
  v156 = 0u;
  v157 = 0u;
  *&result = fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v155).n128_u64[0];
  return result;
}

void sub_1623D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void (**a63)())
{
  a63 = off_276F40;
  a64 = 0u;
  a65 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a63);
  a66 = off_276F40;
  a67 = 0u;
  a68 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a66);
  STACK[0x200] = off_276F40;
  *&STACK[0x208] = 0u;
  *&STACK[0x218] = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&STACK[0x200]);
  STACK[0x228] = off_276F40;
  *&STACK[0x230] = 0u;
  *&STACK[0x240] = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&STACK[0x228]);
  STACK[0x250] = off_276F40;
  *&STACK[0x258] = 0u;
  *&STACK[0x268] = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&STACK[0x250]);
  STACK[0x278] = off_276F40;
  *&STACK[0x280] = 0u;
  *&STACK[0x290] = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&STACK[0x278]);
  STACK[0x2A0] = off_276F40;
  *&STACK[0x2A8] = 0u;
  *&STACK[0x2B8] = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&STACK[0x2A0]);
  STACK[0x2C8] = off_276F40;
  *&STACK[0x2D0] = 0u;
  *&STACK[0x2E0] = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&STACK[0x2C8]);
  STACK[0x2F0] = off_276F40;
  *&STACK[0x2F8] = 0u;
  *&STACK[0x308] = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&STACK[0x2F0]);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::AllocateBackwardBuffers(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v9, "AllocateBackwardBuffers", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1413, 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Allocating backward buffers for batch ", 38);
    v8 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "; batch size = ", 15);
    std::ostream::operator<<();
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v9);
  }

  kaldi::CuMatrix<float>::Resize(*(a1 + 368) + 48 * a2, a3, *(a1 + *(*a1 - 24) + 12), 0, 0);
  kaldi::CuMatrix<float>::Resize(*(a1 + 392) + 48 * a2, a3, *(a1 + 176), 0, 0);
  kaldi::CuMatrix<float>::Resize(*(a1 + 416) + 48 * a2, a3, *(a1 + 176), 0, 0);
  kaldi::CuMatrix<float>::Resize(*(a1 + 440) + 48 * a2, a3, (4 * *(a1 + 176)), 0, 0);
  *(*(a1 + 368) + 48 * a2 + 32) = a4;
  *(*(a1 + 392) + 48 * a2 + 32) = a4;
  *(*(a1 + 416) + 48 * a2 + 32) = a4;
  *(*(a1 + 440) + 48 * a2 + 32) = a4;
}

void sub_162C20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 80) <= a5)
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_3D8.align + 1, "batch_index < ropts_.num_subbatches", a5);
  }

  v7 = *(a1 + 96);
  v8 = *(a2 + 20);
  if (v8 % v7)
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_3D8.reloff + 1, "batch_size % num_utts == 0", a5);
  }

  v9 = a5;
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v55, "AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1043, 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "Accumulating gradients for batch id = ", 38);
    v11 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", which contains ", 17);
    v12 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " frames each from ", 18);
    v13 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v55);
  }

  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::AllocateGradients(a1);
  v38 = *(a1 + 272);
  v14 = (*(a1 + 440) + 48 * v9);
  v15 = *(a1 + 60);
  *(*(a1 + 480) + 4 * v9) = v8;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v55, v14, 0, v14[5], 0, *(a1 + 176));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v52, v14, 0, v14[5], *(a1 + 176), *(a1 + 176));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v49, v14, 0, v14[5], (2 * *(a1 + 176)), *(a1 + 176));
  *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeightsGradient(a1, v9) + 32) = a4;
  *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeightsGradient(a1, v9) + 32) = a4;
  *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::BiasGradient(a1, v9) + 24) = a4;
  if (*(a1 + 208) == 1)
  {
    *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeightsGradient(a1, v9) + 32) = a4;
  }

  if (*(a1 + 224) == 1)
  {
    *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeightsGradient(a1, v9) + 32) = a4;
  }

  v16 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeightsGradient(a1, v9);
  kaldi::CuMatrixBase<float>::AddMatMat(v16, v14, CblasTrans, a2, &stru_68.sectname[7], 1.0, v15);
  v17 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeightsGradient(a1, v9);
  v18 = v8 - v7;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v46, v14, v7, v8 - v7, 0, v14[4]);
  v19 = *(a1 + 344) + 48 * v9;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v43, v19, 0, v8 - v7, 0, *(v19 + 16));
  kaldi::CuMatrixBase<float>::AddMatMat(v17, &v46, CblasTrans, &v43, &stru_68.sectname[7], 1.0, v15);
  v43 = off_276F40;
  v44 = 0u;
  v45 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v43);
  v46 = off_276F40;
  v47 = 0u;
  v48 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v46);
  v20 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::BiasGradient(a1, v9);
  kaldi::CuVectorBase<float>::AddRowSumMat(v20, v14, 1.0, v15, v21, v22, v23);
  if (*(a1 + 208) == 1)
  {
    v24 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeightsGradient(a1, v9);
    if (!*(v24 + 20))
    {
      kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v25);
    }

    v26 = *(v24 + 16);
    v27 = *(v24 + 32);
    v40 = *(v24 + 8);
    v39 = &off_276FE0;
    v41 = v26;
    v42 = v27;
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v46, &v55, v7, v18, 0, SDWORD2(v56));
    v28 = v38 + 48 * v9;
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v43, v28, 0, v18, 0, *(v28 + 16));
    kaldi::CuVectorBase<float>::AddDiagMatMat(&v39, &v46, 112, &v43, 111, 1.0, v15);
    v43 = off_276F40;
    v44 = 0u;
    v45 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v43);
    v46 = off_276F40;
    v47 = 0u;
    v48 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v46);
    v29 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeightsGradient(a1, v9);
    if (*(v29 + 20) <= 1u)
    {
      kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v30);
    }

    v31 = *(v29 + 16);
    v32 = *(v29 + 32);
    v40 = *(v29 + 8) + 4 * *(v29 + 24);
    v39 = &off_276FE0;
    v41 = v31;
    v42 = v32;
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v46, &v52, v7, v18, 0, SDWORD2(v53));
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v43, v28, 0, v18, 0, *(v28 + 16));
    kaldi::CuVectorBase<float>::AddDiagMatMat(&v39, &v46, 112, &v43, 111, 1.0, v15);
    v43 = off_276F40;
    v44 = 0u;
    v45 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v43);
    v46 = off_276F40;
    v47 = 0u;
    v48 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v46);
    v33 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeightsGradient(a1, v9);
    if (*(v33 + 20) <= 2u)
    {
      kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v34);
    }

    v35 = *(v33 + 16);
    v36 = *(v33 + 32);
    *&v47 = *(v33 + 8) + 8 * *(v33 + 24);
    v46 = &off_276FE0;
    *(&v47 + 1) = v35;
    *&v48 = v36;
    kaldi::CuVectorBase<float>::AddDiagMatMat(&v46, &v49, 112, v28, 111, 1.0, v15);
  }

  if (*(a1 + 224) == 1)
  {
    v37 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeightsGradient(a1, v9);
    kaldi::CuMatrixBase<float>::AddMatMat(v37, *(a1 + 368) + 48 * v9, CblasTrans, *(a1 + 320) + 48 * v9, &stru_68.sectname[7], 1.0, v15);
  }

  v49 = off_276F40;
  v50 = 0u;
  v51 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v49);
  v52 = off_276F40;
  v53 = 0u;
  v54 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v52);
  v55.__locale_ = off_276F40;
  v56 = 0u;
  v57 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v55);
}

void sub_1633A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void (**a25)(), __int128 a26, __int128 a27, void (**a28)(), __int128 a29, __int128 a30, void (**a31)(), __int128 a32, __int128 a33)
{
  a25 = off_276F40;
  a26 = 0u;
  a27 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a25);
  a28 = off_276F40;
  a29 = 0u;
  a30 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a28);
  a31 = off_276F40;
  a32 = 0u;
  a33 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a31);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::AllocateGradients(uint64_t a1)
{
  if (*(a1 + 528))
  {
    return;
  }

  v2 = *(a1 + 80);
  if (v2 > 1)
  {
    v3 = (v2 + 1);
  }

  else
  {
    v3 = 1;
  }

  if (*(a1 + 544) != *(a1 + 536))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "AllocateGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1332);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "input_weights_gradient_.size() == 0");
    goto LABEL_34;
  }

  if (*(a1 + 568) != *(a1 + 560))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "AllocateGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1333);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "recurrent_weights_gradient_.size() == 0");
    goto LABEL_34;
  }

  if (*(a1 + 616) != *(a1 + 608))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "AllocateGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1334);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "bias_gradient_.size() == 0");
    goto LABEL_34;
  }

  v10 = *(a1 + 156);
  if (*(a1 + 208) == 1 && *(a1 + 592) != *(a1 + 584))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "AllocateGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1335);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "peephole_weights_gradient_.size() == 0");
    goto LABEL_34;
  }

  if (*(a1 + 224) == 1 && *(a1 + 640) != *(a1 + 632))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "AllocateGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1336);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "projection_weights_gradient_.size() == 0");
LABEL_34:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
  }

  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 536), v3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 560), v3);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::resize((a1 + 608), v3);
  std::vector<kaldi::CuMatrix<float>>::resize((a1 + 656), v3);
  std::vector<kaldi::CuMatrix<float>>::resize((a1 + 680), v3);
  std::vector<kaldi::CuVector<float>>::resize((a1 + 728), v3, v4, v5, v6);
  if (v3 >= 1)
  {
    operator new();
  }

  if (*(a1 + 208))
  {
    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 584), v3);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 704), v3);
  }

  if (*(a1 + 224) == 1)
  {
    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 632), v3);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 752), v3);
  }

  *(a1 + 528) = 1;
  if (kaldi::g_kaldi_verbose_level > 1)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v13, "AllocateGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1391, 2);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Allocated memory for the gradients: ", 36);
    (*(*a1 + 272))(__p, a1);
    if ((v12 & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    if ((v12 & 0x80u) == 0)
    {
      v9 = v12;
    }

    else
    {
      v9 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v13);
  }
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::UpdateWeights()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "UpdateWeights", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1116);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented except for BaseFloat weights");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

_DWORD *kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::SetInternalBoundary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = a3;
  v7 = *(a1 + 104);
  v8 = (a1 + 104);
  if (v7 == *(a1 + 112))
  {
    std::vector<kaldi::CuVector<float>>::resize((a1 + 104), *(a1 + 80), a3, a4, a5);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 128), *(a1 + 80));
    v7 = *(a1 + 104);
  }

  kaldi::CuVector<float>::Resize(v7 + 32 * v5, *(a2 + 16), 1u, a4, a5);
  v13 = (*v8 + 32 * v5);

  return kaldi::CuVectorBase<float>::CopyFromVec(v13, a2, v10, v11, v12);
}

void virtual thunk tokaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::SetTrainOptions(void *a1, char **a2)
{
  v2 = (a1 + *(*a1 - 280));
  kaldi::nnet1::RecurrentBaseComponent::SetTrainOptions(v2, a2);
  *(v2 + 120) = 0;
}

unsigned int *kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::GetHistoryState(uint64_t a1, unsigned int *a2, unsigned int a3, uint64_t a4, const char *a5)
{
  if ((a3 & 0x80000000) != 0 || *(a1 + 80) <= a3)
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_6A8.sectname[6], "batch_index >= 0 && batch_index < ropts_.num_subbatches", a5);
  }

  v8 = *(a1 + 8) + 48 * a3;
  kaldi::CuMatrix<float>::Resize(a2, *(v8 + 20), *(v8 + 16), 1u, 0);
  v11 = *(a1 + 8) + 48 * a3;

  return kaldi::CuMatrixBase<float>::CopyFromMat<float>(a2, v11, 111, v9, v10);
}

_DWORD *kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::GetHistoryState(uint64_t a1, _DWORD *a2, unsigned int a3, uint64_t a4, const char *a5)
{
  if ((a4 & 0x80000000) != 0 || *(a1 + 80) <= a4)
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_6A8.sectname[13], "batch_index >= 0 && batch_index < ropts_.num_subbatches", a5);
  }

  if ((a3 & 0x80000000) != 0 || (v7 = *(a1 + 8) + 48 * a4, *(v7 + 20) <= a3))
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_6A8.sectname[14], "sequence_idx >= 0 && sequence_idx < history_state_[batch_index].NumRows()", a5);
  }

  v9 = a4;
  kaldi::CuVector<float>::Resize(a2, *(v7 + 16), 1u, a4, a5);
  v13 = *(a1 + 8) + 48 * v9;
  if (*(v13 + 20) <= a3)
  {
    kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.segname[11], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v12);
  }

  v14 = *(v13 + 8) + 4 * (*(v13 + 24) * a3);
  v15 = *(v13 + 16);
  v16 = *(v13 + 32);
  v18[1] = v14;
  v18[0] = &off_276FE0;
  v18[2] = v15;
  v18[3] = v16;
  return kaldi::CuVectorBase<float>::CopyFromVec(a2, v18, v10, v11, v12);
}

unsigned int *kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::SetHistoryState(uint64_t a1, uint64_t a2, unsigned int a3)
{
  (*(*a1 + 88))(a1);
  if ((a3 & 0x80000000) != 0 || *(a1 + 80) <= a3)
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_6A8.size + 5, "batch_index >= 0 && batch_index < ropts_.num_subbatches", v7);
  }

  v8 = (*(a1 + 8) + 48 * a3);
  if (*(a2 + 20) != v8[5])
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_6A8.size + 6, "history.NumRows() == history_state_[batch_index].NumRows()", v7);
  }

  if (*(a2 + 16) != v8[4])
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_6A8.size + 7, "history.NumCols() == history_state_[batch_index].NumCols()", v7);
  }

  return kaldi::CuMatrixBase<float>::CopyFromMat<float>(v8, a2, 111, v6, v7);
}

_DWORD *kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::SetHistoryState(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  (*(*a1 + 88))(a1);
  if ((a4 & 0x80000000) != 0 || *(a1 + 80) <= a4)
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_6A8.align + 2, "batch_index >= 0 && batch_index < ropts_.num_subbatches", v10);
  }

  if (a3 < 0 || (v11 = *(a1 + 8) + 48 * a4, *(v11 + 20) <= a3))
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_6A8.align + 3, "sequence_idx >= 0 && sequence_idx < history_state_[batch_index].NumRows()", v10);
  }

  v12 = *(a2 + 16);
  if (v12 != *(v11 + 16))
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_6A8.reloff, "history.Dim() == history_state_[batch_index].NumCols()", v10);
  }

  v13 = *(v11 + 8) + 4 * *(v11 + 24) * a3;
  v14 = *(v11 + 32);
  v16[1] = v13;
  v16[0] = &off_276FE0;
  v16[2] = v12;
  v16[3] = v14;
  return kaldi::CuVectorBase<float>::CopyFromVec(v16, a2, v8, v9, v10);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ResetHistoryState(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  (*(*a1 + 88))(a1);
  if ((a4 & 0x80000000) != 0 || *(a1 + 80) <= a4)
  {
    kaldi::KaldiAssertFailure_("ResetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_6A8.nreloc + 3, "batch_index >= 0 && batch_index < ropts_.num_subbatches", v8);
  }

  if (a2[1] != *(*(a1 + 8) + 48 * a4 + 20))
  {
    kaldi::KaldiAssertFailure_("ResetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_6A8.flags, "sequence_idx.size() == history_state_[batch_index].NumRows()", v8);
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v23);
  *(*(a1 + 8) + 48 * a4 + 32) = a3;
  if (a2[1])
  {
    v10 = 0;
    do
    {
      if ((*(*a2 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v10))
      {
        v11 = *(a1 + 8) + 48 * a4;
        if (v10 >= *(v11 + 20))
        {
          kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v9);
        }

        v12 = (*(v11 + 8) + 4 * *(v11 + 24) * v10);
        v13 = *(v11 + 16);
        v14 = *(v11 + 32);
        v22[1].__locale_ = v12;
        v22[0].__locale_ = &off_276FE0;
        v22[2].__locale_ = v13;
        v22[3].__locale_ = v14;
        kaldi::CuVectorBase<float>::SetZero(v22);
        if (kaldi::g_kaldi_verbose_level >= 3)
        {
          v15 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ", ", 2);
        }
      }

      ++v10;
    }

    while (a2[1] > v10);
  }

  if (kaldi::g_kaldi_verbose_level > 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v22, "ResetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1779, 3);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Reset previous states for utts ", 31);
    std::stringbuf::str();
    if ((v21 & 0x80u) == 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    if ((v21 & 0x80u) == 0)
    {
      v18 = v21;
    }

    else
    {
      v18 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v17, v18);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v22);
  }

  if (v26 < 0)
  {
    operator delete(v25[7].__locale_);
  }

  std::locale::~locale(v25);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_164710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  kaldi::KaldiVlogMessage::~KaldiVlogMessage(&a16);
  std::ostringstream::~ostringstream(&a51);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ResetHistoryState(void *a1)
{
  (*(*a1 + 88))(a1);
  for (i = a1[1]; i != a1[2]; i += 48)
  {
    kaldi::CuMatrixBase<float>::SetZero(i);
  }
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::SetGradientNormalization(uint64_t result, int a2, float a3)
{
  *(result + 152) = a3;
  *(result + 156) = a2;
  *(result + 528) = 0;
  return result;
}

void *virtual thunk tokaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::SetGradientNormalization(void *result, int a2, float a3)
{
  v3 = (result + *(*result - 256));
  v3[38] = a3;
  *(v3 + 39) = a2;
  *(v3 + 528) = 0;
  return result;
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::NormalizeGradients(uint64_t a1, unsigned int a2, float a3, uint64_t a4, uint64_t a5, const char *a6)
{
  if ((a2 & 0x80000000) != 0 || *(a1 + 80) <= a2)
  {
    kaldi::KaldiAssertFailure_("NormalizeGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_568.offset + 2, "batch_index >= 0 && batch_index < ropts_.num_subbatches", a6);
  }

  v8 = a3;
  v9 = *(a1 + 156);
  if (v9 == 1)
  {
    if (a3 > 0.0)
    {
      if (*(a1 + 84) == 1)
      {
        v8 = *(*(a1 + 480) + 4 * a2) * a3;
      }

      v19 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeightsGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::ClipGradient(v19, v8);
      v20 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeightsGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::ClipGradient(v20, v8);
      v21 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::BiasGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::ClipGradient(v21, v8);
      if (*(a1 + 208) == 1)
      {
        v22 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeightsGradient(a1, a2);
        kaldi::nnet1::UpdatableComponent::ClipGradient(v22, v8);
      }

      if (*(a1 + 224) == 1)
      {
        v23 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeightsGradient(a1, a2);

        kaldi::nnet1::UpdatableComponent::ClipGradient(v23, v8);
      }
    }
  }

  else if (v9 == 3)
  {
    if (a3 >= 0.0 && a3 <= 1.0)
    {
      v10 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeightsGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::RmspropGradient(v10, *(a1 + 656) + 48 * a2, v8);
      v11 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeightsGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::RmspropGradient(v11, *(a1 + 680) + 48 * a2, v8);
      v12 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::BiasGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::RmspropGradient(v12, *(a1 + 728) + 32 * a2, v8, v13, v14, v15);
      if (*(a1 + 208) == 1)
      {
        v16 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeightsGradient(a1, a2);
        kaldi::nnet1::UpdatableComponent::RmspropGradient(v16, *(a1 + 704) + 48 * a2, v8);
      }

      if (*(a1 + 224) == 1)
      {
        v17 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeightsGradient(a1, a2);
        v18 = *(a1 + 752) + 48 * a2;

        kaldi::nnet1::UpdatableComponent::RmspropGradient(v17, v18, v8);
      }
    }
  }

  else if (a3 > 0.0 && v9 == 2)
  {
    v24 = a2;
    if (*(a1 + 84))
    {
      v8 = *(*(a1 + 480) + 4 * a2) * a3;
    }

    v25 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeightsGradient(a1, a2);
    kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v25, (*(a1 + 656) + 48 * v24), v8, v26, v27, v28);
    v29 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeightsGradient(a1, a2);
    kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v29, (*(a1 + 680) + 48 * v24), v8, v30, v31, v32);
    v33 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::BiasGradient(a1, a2);
    kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v33, (*(a1 + 728) + 32 * v24), v34, v35, v36, v8);
    if (*(a1 + 208) == 1)
    {
      v37 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeightsGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v37, (*(a1 + 704) + 48 * v24), v8, v38, v39, v40);
    }

    if (*(a1 + 224) == 1)
    {
      v41 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeightsGradient(a1, a2);
      v45 = (*(a1 + 752) + 48 * v24);

      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v41, v45, v8, v42, v43, v44);
    }
  }
}