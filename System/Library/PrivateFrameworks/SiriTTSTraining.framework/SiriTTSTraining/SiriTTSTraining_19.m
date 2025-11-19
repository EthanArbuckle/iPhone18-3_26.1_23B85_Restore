uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::CountZeroCorr(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::AllocateGradients(a1);
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

  v8 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeightsGradient(a1, v7);
  v13 = kaldi::CuMatrixBase<float>::CountZeros(v8, v9, v10, v11, v12);
  v14 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeightsGradient(a1, v7);
  v19 = kaldi::CuMatrixBase<float>::CountZeros(v14, v15, v16, v17, v18) + v13;
  v20 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::BiasGradient(a1, v7);
  result = kaldi::CuVectorBase<float>::CountZeros(v20);
  *a2 = v19 + result;
  if (*(a1 + 208) == 1)
  {
    v21 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeightsGradient(a1, v7);
    result = kaldi::CuMatrixBase<float>::CountZeros(v21, v22, v23, v24, v25);
    *a2 += result;
  }

  if (*(a1 + 224) == 1)
  {
    v26 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeightsGradient(a1, v7);
    result = kaldi::CuMatrixBase<float>::CountZeros(v26, v27, v28, v29, v30);
    v31 = *a2 + result;
LABEL_11:
    *a2 = v31;
  }

  return result;
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::VectorizeWeightsCorrs()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1532);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented except for BaseFloat weights");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::EnsureBuffers(uint64_t a1)
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

float kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Check(uint64_t a1)
{
  v2 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  if (kaldi::QuantizedMatrixBase<short>::NumRows(v2) != 4 * *(a1 + 176))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v51, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1642);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "Input weights #rows = ", 22);
    v9 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
    kaldi::QuantizedMatrixBase<short>::NumRows(v9);
    v10 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "; expecting ", 12);
    v11 = *(a1 + 176);
    v12 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "; #cells = ", 11);
    v13 = *(a1 + 176);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  v3 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
  if (kaldi::QuantizedMatrixBase<short>::NumCols(v3) != *(a1 + *(*a1 - 24) + 8))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v51, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1646);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "Input weights #columns = ", 25);
    v14 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeights(a1);
    kaldi::QuantizedMatrixBase<short>::NumCols(v14);
    v15 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "; expecting ", 12);
    v16 = *(a1 + *(*a1 - 24) + 8);
    v17 = std::ostream::operator<<();
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v17, " (same as input dim)");
    goto LABEL_28;
  }

  v4 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(a1);
  if (kaldi::QuantizedMatrixBase<short>::NumRows(v4) != 4 * *(a1 + 176))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v51, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1650);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "Recurrent weights #rows = ", 26);
    v18 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(a1);
    kaldi::QuantizedMatrixBase<short>::NumRows(v18);
    v19 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "; expecting ", 12);
    v20 = *(a1 + 176);
    v21 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "; #cells = ", 11);
    v22 = *(a1 + 176);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  v5 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(a1);
  if (kaldi::QuantizedMatrixBase<short>::NumCols(v5) != *(a1 + *(*a1 - 24) + 12))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v51, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1654);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "Recurrent weights #columns = ", 29);
    v23 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeights(a1);
    kaldi::QuantizedMatrixBase<short>::NumCols(v23);
    v24 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "; expecting ", 12);
    v25 = *(a1 + *(*a1 - 24) + 12);
    v26 = std::ostream::operator<<();
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v26, " (same as output dim)");
    goto LABEL_28;
  }

  if (*(a1 + 208) == 1)
  {
    if (*(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1) + 20) != 3)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v51, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1659);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "Peephole weights #rows = ", 25);
      v37 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1) + 20);
      v38 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "; expecting ", 12);
      std::ostream::operator<<();
      goto LABEL_28;
    }

    if (*(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1) + 16) != *(a1 + 176))
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v51, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1662);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "Peephole weights #columns = ", 28);
      v39 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeights(a1) + 16);
      v40 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "; expecting ", 12);
      v41 = *(a1 + 176);
      v42 = std::ostream::operator<<();
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v42, " (same as #cells)");
      goto LABEL_28;
    }
  }

  if (*(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Bias(a1) + 16) != 4 * *(a1 + 176))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v51, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1667);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "Bias dim = ", 11);
    v27 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::Bias(a1) + 16);
    v28 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "; expecting ", 12);
    v29 = *(a1 + 176);
    v30 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "; #cells = ", 11);
    v31 = *(a1 + 176);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  if (*(a1 + 224) == 1)
  {
    v6 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(a1);
    if (kaldi::QuantizedMatrixBase<short>::NumRows(v6) == *(a1 + *(*a1 - 24) + 12))
    {
      v7 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(a1);
      if (kaldi::QuantizedMatrixBase<short>::NumCols(v7) == *(a1 + 176))
      {
        goto LABEL_12;
      }

      kaldi::KaldiErrorMessage::KaldiErrorMessage(v51, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1675);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "Projection weights #columns = ", 30);
      v47 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(a1);
      kaldi::QuantizedMatrixBase<short>::NumCols(v47);
      v48 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "; expecting ", 12);
      v49 = *(a1 + 176);
      v50 = std::ostream::operator<<();
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v50, " (same as #cells)");
    }

    else
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v51, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1671);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "Projection weights #rows = ", 27);
      v43 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeights(a1);
      kaldi::QuantizedMatrixBase<short>::NumRows(v43);
      v44 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "; expecting ", 12);
      v45 = *(a1 + *(*a1 - 24) + 12);
      v46 = std::ostream::operator<<();
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v46, " (same as output dim)");
    }

LABEL_28:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v51);
  }

LABEL_12:
  if (*(a1 + 464) < 0.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v51, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1681);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "learn_rate_coeff_ must not be negative; found: ", 47);
    v32 = *(a1 + 464);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  if (*(a1 + 468) < 0.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v51, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1684);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "projection_learn_rate_coeff_ must not be negative; found: ", 58);
    v33 = *(a1 + 468);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  if (*(a1 + 472) < 0.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v51, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1688);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "max_norm_ must not be negative; found: ", 39);
    v34 = *(a1 + 472);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  if (*(a1 + 152) < 0.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v51, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1691);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "max_grad_ must not be negative; found: ", 39);
    v35 = *(a1 + 152);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  result = *(a1 + 476);
  if (result < 0.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v51, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1694);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "max_cell_values_ must not be negative; found: ", 46);
    v36 = *(a1 + 476);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  return result;
}

double kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::LstmComponent(uint64_t a1, int a2, int a3)
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
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(a1, off_281560);
  *v4 = off_281150;
  *(v4 + 848) = off_281440;
  *(v4 + 160) = off_2812E0;
  *(v4 + 168) = off_281308;
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

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeightsGradient(uint64_t a1, int a2)
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

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeightsGradient(uint64_t a1, int a2)
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

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::BiasGradient(uint64_t a1, int a2)
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

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(uint64_t a1, int a2)
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

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeightsGradient(uint64_t a1, int a2)
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

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::LstmComponent(uint64_t a1, uint64_t a2)
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v22, "LstmComponent", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 151);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v22);
  }

  if (*(a2 + 184))
  {
    kaldi::NewCuSubOrMat<short>();
  }

  if (*(a2 + 192))
  {
    kaldi::NewCuSubOrMat<short>();
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
    kaldi::NewCuSubOrMat<short>();
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
        v15 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeightsGradient(a2, v14);
        kaldi::NewCuSubOrMat<float>(v15, 0);
      }

      if (*(*(a2 + 560) + 8 * v14))
      {
        v16 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeightsGradient(a2, v14);
        kaldi::NewCuSubOrMat<float>(v16, 0);
      }

      if (*(*(a2 + 608) + 8 * v14))
      {
        kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::BiasGradient(a2, v14);
        kaldi::NewCuSubOrVec<float>();
      }

      if (*(a1 + 208) == 1 && *(*(a2 + 584) + 8 * v14))
      {
        v17 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(a2, v14);
        kaldi::NewCuSubOrMat<float>(v17, 0);
      }

      if (*(a1 + 224) == 1 && *(*(a2 + 632) + 8 * v14))
      {
        v18 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeightsGradient(a2, v14);
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

void sub_16675C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, kaldi::nnet1::UpdatableComponent *a24, uint64_t *a25, uint64_t *a26, uint64_t *a27, uint64_t a28)
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
  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100](a25, 0);
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

  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100](a26, 0);
  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100](a27, 0);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a22);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a23);
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(v28, off_281560);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a24);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::~LstmComponent(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[3];
  *(a1 + 160) = off_2812E0;
  *(a1 + 168) = off_281308;
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
  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100]((a1 + 232), 0);
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

  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100]((a1 + 192), 0);
  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100]((a1 + 184), 0);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1 + 168);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1 + 160);
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(a1, a2 + 1);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::~LstmComponent(uint64_t a1)
{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v2 + 848));
  return a1;
}

void non-virtual thunk tokaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::~LstmComponent(uint64_t a1)
{

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((a1 + 688));
}

{

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((a1 + 680));
}

{
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::~LstmComponent(a1 - 160);
}

{
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::~LstmComponent(a1 - 168);
}

void virtual thunk tokaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::~LstmComponent(void *a1)
{
  v2 = (v1 + 848);

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
}

{
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::~LstmComponent(a1 + *(*a1 - 24));
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::~LstmComponent(uint64_t a1)
{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 848));

  operator delete();
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::LstmComponent<kaldi::QuantizedMatrix<short>>(uint64_t a1, uint64_t a2)
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
        v15 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeightsGradient(a2, v14);
        kaldi::NewCuSubOrMat<float>(v15, 0);
      }

      if (*(*(a2 + 560) + 8 * v14))
      {
        v16 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeightsGradient(a2, v14);
        kaldi::NewCuSubOrMat<float>(v16, 0);
      }

      if (*(*(a2 + 608) + 8 * v14))
      {
        kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::BiasGradient(a2, v14);
        kaldi::NewCuSubOrVec<float>();
      }

      if (*(a1 + 208) == 1 && *(*(a2 + 584) + 8 * v14))
      {
        v17 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(a2, v14);
        kaldi::NewCuSubOrMat<float>(v17, 0);
      }

      if (*(a1 + 224) == 1 && *(*(a2 + 632) + 8 * v14))
      {
        v18 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeightsGradient(a2, v14);
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

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InitData(uint64_t a1, uint64_t *a2)
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
          kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::AllocateParams(a1, v73);
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

void sub_168B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::AllocateParams(uint64_t a1, int a2)
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

uint64_t kaldi::nnet1::RandMatrix<kaldi::QuantizedMatrix<short>>(kaldi::UniformRandomNumber *a1, kaldi::GaussRandomNumber *a2, int a3, unsigned int *a4, float a5)
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

  kaldi::QuantizedMatrixBase<short>::CopyFromMat(a4, &v23);
  return kaldi::Matrix<float>::~Matrix(&v23);
}

void sub_169334(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(uint64_t a1)
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

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(uint64_t a1)
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

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(uint64_t a1)
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

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(uint64_t a1)
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

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(uint64_t a1)
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

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ReadData(uint64_t *a1, uint64_t *a2, int a3)
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

void *kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::WriteConfig(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
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

void sub_16A1DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::WriteData(_BYTE *a1, void *a2, uint64_t a3, int a4)
{
  (*(*a1 + 128))(a1);
  (*(*a1 + 192))(a1, a2, a3);
  v8 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  kaldi::QuantizedMatrix<short>::Write(v8, a2, a3, a4);
  v9 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  kaldi::QuantizedMatrix<short>::Write(v9, a2, a3, a4);
  if (a1[208] == 1)
  {
    v10 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1);
    kaldi::CuMatrixBase<float>::Write(v10, a2, a3, a4);
  }

  v11 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1);
  kaldi::CuVectorBase<float>::Write(v11, a2, a3, v12, v13);
  if (a1[224] == 1)
  {
    v14 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);

    kaldi::QuantizedMatrix<short>::Write(v14, a2, a3, a4);
  }
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::NumParams(uint64_t a1)
{
  v2 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v3 = kaldi::QuantizedMatrixBase<short>::NumRows(v2);
  v4 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v5 = kaldi::QuantizedMatrixBase<short>::NumCols(v4) * v3;
  v6 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  v7 = kaldi::QuantizedMatrixBase<short>::NumRows(v6);
  v8 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  v9 = v5 + kaldi::QuantizedMatrixBase<short>::NumCols(v8) * v7;
  v10 = (v9 + *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1) + 16));
  if (*(a1 + 208) == 1)
  {
    v11 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1) + 20);
    v10 = (v10 + *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1) + 16) * v11);
  }

  if (*(a1 + 224) == 1)
  {
    v12 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
    v13 = kaldi::QuantizedMatrixBase<short>::NumRows(v12);
    v14 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
    return v10 + kaldi::QuantizedMatrixBase<short>::NumCols(v14) * v13;
  }

  return v10;
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::GetParams(_BYTE *a1, uint64_t a2)
{
  v4 = (*(*a1 + 208))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 0, v5, v6);
  v7 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v8 = kaldi::QuantizedMatrixBase<short>::NumRows(v7);
  v9 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v10 = kaldi::QuantizedMatrixBase<short>::NumCols(v9) * v8;
  v11 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  v12 = kaldi::QuantizedMatrixBase<short>::NumRows(v11);
  v13 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
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
  v17 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  kaldi::VectorBase<float>::CopyRowsFromMat<short>(&v38, v17);
  v39 = 0;
  v40 = 0;
  v18 = v16 + v10;
  if (v16 + v10 > *(a2 + 8))
  {
    goto LABEL_11;
  }

  v38 = (*a2 + 4 * v10);
  LODWORD(v39) = v16;
  v19 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  kaldi::VectorBase<float>::CopyRowsFromMat<short>(&v38, v19);
  if (a1[208] == 1)
  {
    v20 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1) + 20);
    v21 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1) + 16) * v20;
    v39 = 0;
    v40 = 0;
    v22 = v21 + v18;
    if (v21 + v18 > *(a2 + 8))
    {
      goto LABEL_11;
    }

    v38 = (*a2 + 4 * v18);
    LODWORD(v39) = v21;
    v23 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1);
    kaldi::VectorBase<float>::CopyRowsFromMat(&v38, v23, v24, v25, v26);
    v18 = v22;
  }

  v27 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1) + 16);
  v39 = 0;
  v40 = 0;
  if (v27 + v18 > *(a2 + 8))
  {
    goto LABEL_11;
  }

  v38 = (*a2 + 4 * v18);
  LODWORD(v39) = v27;
  v28 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1);
  kaldi::CuVectorBase<float>::CopyToVec<float>(v28, &v38, v29, v30, v31);
  if (a1[224] != 1)
  {
    return;
  }

  v32 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1) + 16) + v18;
  v33 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
  v34 = kaldi::QuantizedMatrixBase<short>::NumRows(v33);
  v35 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
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
  v37 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
  kaldi::VectorBase<float>::CopyRowsFromMat<short>(&v38, v37);
}

_DWORD *kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::SetParams(_BYTE *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 != (*(*a1 + 208))(a1))
  {
    kaldi::KaldiAssertFailure_("SetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_1F8.size + 2, "wei_src.Dim() == NumParams()", v5);
  }

  v6 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v7 = kaldi::QuantizedMatrixBase<short>::NumRows(v6);
  v8 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v9 = kaldi::QuantizedMatrixBase<short>::NumCols(v8) * v7;
  v10 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  v11 = kaldi::QuantizedMatrixBase<short>::NumRows(v10);
  v12 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  v13 = kaldi::QuantizedMatrixBase<short>::NumCols(v12);
  v14 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v34 = 0;
  v35 = 0;
  if (v9 > *(a2 + 8))
  {
    goto LABEL_12;
  }

  v16 = v13 * v11;
  v33 = *a2;
  LODWORD(v34) = v9;
  kaldi::QuantizedMatrixBase<short>::CopyRowsFromVec(v14, &v33);
  v17 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  v34 = 0;
  v35 = 0;
  v18 = v16 + v9;
  if (v16 + v9 > *(a2 + 8))
  {
    goto LABEL_12;
  }

  v33 = (*a2 + 4 * v9);
  LODWORD(v34) = v16;
  kaldi::QuantizedMatrixBase<short>::CopyRowsFromVec(v17, &v33);
  if (a1[208] == 1)
  {
    v19 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1) + 20);
    v20 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1) + 16) * v19;
    v21 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1);
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

  v22 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1);
  v25 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1) + 16);
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

  v27 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1) + 16) + v18;
  v28 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
  v29 = kaldi::QuantizedMatrixBase<short>::NumRows(v28);
  v30 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
  v31 = kaldi::QuantizedMatrixBase<short>::NumCols(v30) * v29;
  v32 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
  v34 = 0;
  v35 = 0;
  if (v31 + v27 > *(a2 + 8))
  {
LABEL_12:
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v15);
  }

  v33 = (*a2 + 4 * v27);
  LODWORD(v34) = v31;
  return kaldi::QuantizedMatrixBase<short>::CopyRowsFromVec(v32, &v33);
}

float kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::SumParams(uint64_t a1)
{
  v2 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v7 = kaldi::QuantizedMatrixBase<short>::Sum(v2, v3, v4, v5, v6);
  v8 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  v13 = v7 + kaldi::QuantizedMatrixBase<short>::Sum(v8, v9, v10, v11, v12);
  if (*(a1 + 208) == 1)
  {
    v14 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1);
    v13 = v13 + kaldi::CuMatrixBase<float>::Sum(v14, v15, v16, v17, v18);
  }

  if (*(a1 + 224) == 1)
  {
    v19 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
    v13 = v13 + kaldi::QuantizedMatrixBase<short>::Sum(v19, v20, v21, v22, v23);
  }

  v24 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1);
  v25 = kaldi::CuVectorBase<float>::Sum(v24);
  return v13 + *&v25;
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PerturbParams(uint64_t a1)
{
  v2 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v3 = kaldi::QuantizedMatrixBase<short>::NumRows(v2);
  v4 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v5 = kaldi::QuantizedMatrixBase<short>::NumCols(v4);
  kaldi::CuMatrix<float>::CuMatrix(v6, v3, v5, 1u, 0, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v6);
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  kaldi::QuantizedMatrixBase<short>::AddMat();
}

void sub_16AC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v5 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(v4);
  v6 = kaldi::QuantizedMatrixBase<short>::NumRows(v5);
  v7 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(v4);
  v8 = kaldi::QuantizedMatrixBase<short>::NumCols(v7);
  kaldi::CuMatrix<float>::Resize(va, v6, v8, 1u, 0);
  kaldi::CuMatrixBase<float>::SetRandn(va);
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(v4);
  kaldi::QuantizedMatrixBase<short>::AddMat();
}

void sub_16AE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::GetGradient(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v15 = kaldi::QuantizedMatrixBase<short>::NumRows(v14);
  v16 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v17 = kaldi::QuantizedMatrixBase<short>::NumCols(v16) * v15;
  v18 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  v19 = kaldi::QuantizedMatrixBase<short>::NumRows(v18);
  v20 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
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
  v24 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeightsGradient(v10, 0);
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
  v29 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeightsGradient(v10, 0);
  kaldi::VectorBase<float>::CopyRowsFromMat(&v55, v29, v30, v31, v32);
  if (a1[208] == 1)
  {
    v33 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1) + 20);
    v34 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1) + 16) * v33;
    v56 = 0;
    v57 = 0;
    v35 = v34 + v28;
    if (v34 + v28 > *(a4 + 8))
    {
      goto LABEL_14;
    }

    v55 = *a4 + 4 * v28;
    LODWORD(v56) = v34;
    v36 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(v10, 0);
    kaldi::VectorBase<float>::CopyRowsFromMat(&v55, v36, v37, v38, v39);
    v28 = v35;
  }

  v40 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1) + 16);
  v56 = 0;
  v57 = 0;
  if (v40 + v28 > *(a4 + 8))
  {
LABEL_14:
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v22);
  }

  v55 = *a4 + 4 * v28;
  LODWORD(v56) = v40;
  v41 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::BiasGradient(v10, 0);
  kaldi::CuVectorBase<float>::CopyToVec<float>(v41, &v55, v42, v43, v44);
  if (a1[224] == 1)
  {
    v45 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1) + 16) + v28;
    v46 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
    v47 = kaldi::QuantizedMatrixBase<short>::NumRows(v46);
    v48 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
    v49 = kaldi::QuantizedMatrixBase<short>::NumCols(v48);
    v56 = 0;
    v57 = 0;
    if (v49 * v47 + v45 <= *(a4 + 8))
    {
      v55 = *a4 + 4 * v45;
      LODWORD(v56) = v49 * v47;
      v50 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeightsGradient(v10, 0);
      kaldi::VectorBase<float>::CopyRowsFromMat(&v55, v50, v51, v52, v53);
      return (*(*v10 + 8))(v10);
    }

    goto LABEL_14;
  }

  return (*(*v10 + 8))(v10);
}

float kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::GetNormalizedLearningRate(void *a1, int a2)
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

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Info(uint64_t a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v50);
  (*(*a1 + 192))(a1, &v50, 0);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v50, "\n Input weights:", 16);
  v3 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  kaldi::nnet1::MomentStatistics<short>(v3);
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
  v8 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  kaldi::nnet1::MomentStatistics<short>(v8);
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
  v13 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1);
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
  v22 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1);
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
    v31 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1);
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
    v35 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
    kaldi::nnet1::MomentStatistics<short>(v35);
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

void sub_16BA68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a41);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InfoGradient(uint64_t a1@<X0>, boost::filesystem::path *a2@<X8>)
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
        v23 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeightsGradient(a1, v104);
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
        v32 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeightsGradient(a1, v104);
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
        v41 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::BiasGradient(a1, v104);
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
          v52 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(a1, v104);
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
          v59 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeightsGradient(a1, v104);
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

void sub_16C260(_Unwind_Exception *a1)
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

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InfoPropagate(uint64_t a1@<X0>, std::string *a2@<X8>)
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

void sub_16CB44(_Unwind_Exception *a1)
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

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InfoBackPropagate(uint64_t a1@<X0>, std::string *a2@<X8>)
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

void sub_16D338(_Unwind_Exception *a1)
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

double kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const char *a5)
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
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::AllocateForwardBuffers(a1, a4, v5, v14);
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
  v21 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  kaldi::CuMatrixBase<float>::AddMatMat<short>(v20, a2, 111, v21, &stru_68.sectname[8], 1.0, 0.0);
  v22 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1);
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
      v42 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
      kaldi::CuMatrixBase<float>::AddMatMat<short>(&v93, &v97, 111, v42, &stru_68.sectname[8], 1.0, 1.0);
      v93 = off_276F40;
      memset(v94, 0, sizeof(v94));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v93);
      if (*(a1 + 208) == 1)
      {
        v46 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1);
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
        v50 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1);
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
        v65 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1);
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
        v74 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
        kaldi::CuMatrixBase<float>::AddMatMat<short>(&v84, &v87, 111, v74, &stru_68.sectname[8], 1.0, 0.0);
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
  return kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::SaveLastState(a1, v79);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::AllocateForwardBuffers(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
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

void sub_16E76C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

double kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::SaveLastState(uint64_t a1, int a2)
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

void sub_16E9B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (**a9)(), __int128 a10, __int128 a11, void (**a12)(), __int128 a13, __int128 a14)
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

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 88))(a1);
  if (*(a1 + 96) == 1)
  {
    v6 = *(a3 + 24);
    kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::AllocateForwardBuffers(a1, 0, 1, v6);
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
    kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
    kaldi::CuVectorBase<float>::AddMatVec<short>();
  }

  kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_2E8.reloff, "ropts_.num_sequences == 1", v5);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::GetUnitOutputFnc()
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

void virtual thunk tokaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::GetUnitOutputFnc(void *a1)
{
  v1 = *(*a1 - 160);
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::GetUnitOutputFnc();
}

{
  v1 = *(*a1 - 168);
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::GetUnitOutputFnc();
}

double kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
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
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::AllocateBackwardBuffers(a1, a6, v10, v18);
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
      v56 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
      kaldi::CuMatrixBase<float>::AddMatMat<short>(&v128, &v131, 111, v56, &stru_68.sectname[7], 1.0, 0.0);
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
      v63 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1);
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

        v79 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1);
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
        v83 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1);
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
      v99 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
      kaldi::CuMatrixBase<float>::AddMatMat<short>(&v118, &v120, 111, v99, &stru_68.sectname[7], 1.0, 1.0);
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
    v101 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
    kaldi::CuMatrixBase<float>::AddMatMat<short>(v104, v107, 111, v101, &stru_68.sectname[7], 1.0, 0.0);
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

void sub_17050C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void (**a63)())
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

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::AllocateBackwardBuffers(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
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

void sub_170D54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
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

  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::AllocateGradients(a1);
  v38 = *(a1 + 272);
  v14 = (*(a1 + 440) + 48 * v9);
  v15 = *(a1 + 60);
  *(*(a1 + 480) + 4 * v9) = v8;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v55, v14, 0, v14[5], 0, *(a1 + 176));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v52, v14, 0, v14[5], *(a1 + 176), *(a1 + 176));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v49, v14, 0, v14[5], (2 * *(a1 + 176)), *(a1 + 176));
  *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeightsGradient(a1, v9) + 32) = a4;
  *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeightsGradient(a1, v9) + 32) = a4;
  *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::BiasGradient(a1, v9) + 24) = a4;
  if (*(a1 + 208) == 1)
  {
    *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(a1, v9) + 32) = a4;
  }

  if (*(a1 + 224) == 1)
  {
    *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeightsGradient(a1, v9) + 32) = a4;
  }

  v16 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeightsGradient(a1, v9);
  kaldi::CuMatrixBase<float>::AddMatMat(v16, v14, CblasTrans, a2, &stru_68.sectname[7], 1.0, v15);
  v17 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeightsGradient(a1, v9);
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
  v20 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::BiasGradient(a1, v9);
  kaldi::CuVectorBase<float>::AddRowSumMat(v20, v14, 1.0, v15, v21, v22, v23);
  if (*(a1 + 208) == 1)
  {
    v24 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(a1, v9);
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
    v29 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(a1, v9);
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
    v33 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(a1, v9);
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
    v37 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeightsGradient(a1, v9);
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

void sub_1714D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void (**a25)(), __int128 a26, __int128 a27, void (**a28)(), __int128 a29, __int128 a30, void (**a31)(), __int128 a32, __int128 a33)
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

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::AllocateGradients(uint64_t a1)
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

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::UpdateWeights()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "UpdateWeights", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1116);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented except for BaseFloat weights");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

_DWORD *kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::SetInternalBoundary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
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

void virtual thunk tokaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::SetTrainOptions(void *a1, char **a2)
{
  v2 = (a1 + *(*a1 - 280));
  kaldi::nnet1::RecurrentBaseComponent::SetTrainOptions(v2, a2);
  *(v2 + 120) = 0;
}

unsigned int *kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::GetHistoryState(uint64_t a1, unsigned int *a2, unsigned int a3, uint64_t a4, const char *a5)
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

_DWORD *kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::GetHistoryState(uint64_t a1, _DWORD *a2, unsigned int a3, uint64_t a4, const char *a5)
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

unsigned int *kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::SetHistoryState(uint64_t a1, uint64_t a2, unsigned int a3)
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

_DWORD *kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::SetHistoryState(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
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

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ResetHistoryState(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
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

void sub_172844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  kaldi::KaldiVlogMessage::~KaldiVlogMessage(&a16);
  std::ostringstream::~ostringstream(&a51);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ResetHistoryState(void *a1)
{
  (*(*a1 + 88))(a1);
  for (i = a1[1]; i != a1[2]; i += 48)
  {
    kaldi::CuMatrixBase<float>::SetZero(i);
  }
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::SetGradientNormalization(uint64_t result, int a2, float a3)
{
  *(result + 152) = a3;
  *(result + 156) = a2;
  *(result + 528) = 0;
  return result;
}

void *virtual thunk tokaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::SetGradientNormalization(void *result, int a2, float a3)
{
  v3 = (result + *(*result - 256));
  v3[38] = a3;
  *(v3 + 39) = a2;
  *(v3 + 528) = 0;
  return result;
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::NormalizeGradients(uint64_t a1, unsigned int a2, float a3, uint64_t a4, uint64_t a5, const char *a6)
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

      v19 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeightsGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::ClipGradient(v19, v8);
      v20 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeightsGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::ClipGradient(v20, v8);
      v21 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::BiasGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::ClipGradient(v21, v8);
      if (*(a1 + 208) == 1)
      {
        v22 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(a1, a2);
        kaldi::nnet1::UpdatableComponent::ClipGradient(v22, v8);
      }

      if (*(a1 + 224) == 1)
      {
        v23 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeightsGradient(a1, a2);

        kaldi::nnet1::UpdatableComponent::ClipGradient(v23, v8);
      }
    }
  }

  else if (v9 == 3)
  {
    if (a3 >= 0.0 && a3 <= 1.0)
    {
      v10 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeightsGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::RmspropGradient(v10, *(a1 + 656) + 48 * a2, v8);
      v11 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeightsGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::RmspropGradient(v11, *(a1 + 680) + 48 * a2, v8);
      v12 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::BiasGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::RmspropGradient(v12, *(a1 + 728) + 32 * a2, v8, v13, v14, v15);
      if (*(a1 + 208) == 1)
      {
        v16 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(a1, a2);
        kaldi::nnet1::UpdatableComponent::RmspropGradient(v16, *(a1 + 704) + 48 * a2, v8);
      }

      if (*(a1 + 224) == 1)
      {
        v17 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeightsGradient(a1, a2);
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

    v25 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeightsGradient(a1, a2);
    kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v25, (*(a1 + 656) + 48 * v24), v8, v26, v27, v28);
    v29 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeightsGradient(a1, a2);
    kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v29, (*(a1 + 680) + 48 * v24), v8, v30, v31, v32);
    v33 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::BiasGradient(a1, a2);
    kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v33, (*(a1 + 728) + 32 * v24), v34, v35, v36, v8);
    if (*(a1 + 208) == 1)
    {
      v37 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v37, (*(a1 + 704) + 48 * v24), v8, v38, v39, v40);
    }

    if (*(a1 + 224) == 1)
    {
      v41 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeightsGradient(a1, a2);
      v45 = (*(a1 + 752) + 48 * v24);

      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v41, v45, v8, v42, v43, v44);
    }
  }
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::CountZeroCorr(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::AllocateGradients(a1);
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

  v8 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeightsGradient(a1, v7);
  v13 = kaldi::CuMatrixBase<float>::CountZeros(v8, v9, v10, v11, v12);
  v14 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeightsGradient(a1, v7);
  v19 = kaldi::CuMatrixBase<float>::CountZeros(v14, v15, v16, v17, v18) + v13;
  v20 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::BiasGradient(a1, v7);
  result = kaldi::CuVectorBase<float>::CountZeros(v20);
  *a2 = v19 + result;
  if (*(a1 + 208) == 1)
  {
    v21 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(a1, v7);
    result = kaldi::CuMatrixBase<float>::CountZeros(v21, v22, v23, v24, v25);
    *a2 += result;
  }

  if (*(a1 + 224) == 1)
  {
    v26 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeightsGradient(a1, v7);
    result = kaldi::CuMatrixBase<float>::CountZeros(v26, v27, v28, v29, v30);
    v31 = *a2 + result;
LABEL_11:
    *a2 = v31;
  }

  return result;
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::VectorizeWeightsCorrs()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1532);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented except for BaseFloat weights");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::EnsureBuffers(uint64_t a1)
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

float kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Check(uint64_t a1)
{
  v2 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  if (kaldi::QuantizedMatrixBase<short>::NumRows(v2) != 4 * *(a1 + 176))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v51, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1642);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "Input weights #rows = ", 22);
    v9 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
    kaldi::QuantizedMatrixBase<short>::NumRows(v9);
    v10 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "; expecting ", 12);
    v11 = *(a1 + 176);
    v12 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "; #cells = ", 11);
    v13 = *(a1 + 176);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  v3 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  if (kaldi::QuantizedMatrixBase<short>::NumCols(v3) != *(a1 + *(*a1 - 24) + 8))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v51, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1646);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "Input weights #columns = ", 25);
    v14 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
    kaldi::QuantizedMatrixBase<short>::NumCols(v14);
    v15 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "; expecting ", 12);
    v16 = *(a1 + *(*a1 - 24) + 8);
    v17 = std::ostream::operator<<();
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v17, " (same as input dim)");
    goto LABEL_28;
  }

  v4 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  if (kaldi::QuantizedMatrixBase<short>::NumRows(v4) != 4 * *(a1 + 176))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v51, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1650);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "Recurrent weights #rows = ", 26);
    v18 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
    kaldi::QuantizedMatrixBase<short>::NumRows(v18);
    v19 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "; expecting ", 12);
    v20 = *(a1 + 176);
    v21 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "; #cells = ", 11);
    v22 = *(a1 + 176);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  v5 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  if (kaldi::QuantizedMatrixBase<short>::NumCols(v5) != *(a1 + *(*a1 - 24) + 12))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v51, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1654);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "Recurrent weights #columns = ", 29);
    v23 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
    kaldi::QuantizedMatrixBase<short>::NumCols(v23);
    v24 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "; expecting ", 12);
    v25 = *(a1 + *(*a1 - 24) + 12);
    v26 = std::ostream::operator<<();
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v26, " (same as output dim)");
    goto LABEL_28;
  }

  if (*(a1 + 208) == 1)
  {
    if (*(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1) + 20) != 3)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v51, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1659);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "Peephole weights #rows = ", 25);
      v37 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1) + 20);
      v38 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "; expecting ", 12);
      std::ostream::operator<<();
      goto LABEL_28;
    }

    if (*(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1) + 16) != *(a1 + 176))
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v51, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1662);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "Peephole weights #columns = ", 28);
      v39 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1) + 16);
      v40 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "; expecting ", 12);
      v41 = *(a1 + 176);
      v42 = std::ostream::operator<<();
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v42, " (same as #cells)");
      goto LABEL_28;
    }
  }

  if (*(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1) + 16) != 4 * *(a1 + 176))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v51, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1667);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "Bias dim = ", 11);
    v27 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1) + 16);
    v28 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "; expecting ", 12);
    v29 = *(a1 + 176);
    v30 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "; #cells = ", 11);
    v31 = *(a1 + 176);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  if (*(a1 + 224) == 1)
  {
    v6 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
    if (kaldi::QuantizedMatrixBase<short>::NumRows(v6) == *(a1 + *(*a1 - 24) + 12))
    {
      v7 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
      if (kaldi::QuantizedMatrixBase<short>::NumCols(v7) == *(a1 + 176))
      {
        goto LABEL_12;
      }

      kaldi::KaldiErrorMessage::KaldiErrorMessage(v51, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1675);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "Projection weights #columns = ", 30);
      v47 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
      kaldi::QuantizedMatrixBase<short>::NumCols(v47);
      v48 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "; expecting ", 12);
      v49 = *(a1 + 176);
      v50 = std::ostream::operator<<();
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v50, " (same as #cells)");
    }

    else
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v51, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1671);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "Projection weights #rows = ", 27);
      v43 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
      kaldi::QuantizedMatrixBase<short>::NumRows(v43);
      v44 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "; expecting ", 12);
      v45 = *(a1 + *(*a1 - 24) + 12);
      v46 = std::ostream::operator<<();
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v46, " (same as output dim)");
    }

LABEL_28:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v51);
  }

LABEL_12:
  if (*(a1 + 464) < 0.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v51, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1681);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "learn_rate_coeff_ must not be negative; found: ", 47);
    v32 = *(a1 + 464);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  if (*(a1 + 468) < 0.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v51, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1684);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "projection_learn_rate_coeff_ must not be negative; found: ", 58);
    v33 = *(a1 + 468);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  if (*(a1 + 472) < 0.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v51, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1688);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "max_norm_ must not be negative; found: ", 39);
    v34 = *(a1 + 472);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  if (*(a1 + 152) < 0.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v51, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1691);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "max_grad_ must not be negative; found: ", 39);
    v35 = *(a1 + 152);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  result = *(a1 + 476);
  if (result < 0.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v51, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1694);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, "max_cell_values_ must not be negative; found: ", 46);
    v36 = *(a1 + 476);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  return result;
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::UpdateWeights(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 64);
  v7 = *(a1 + 68);
  v8 = a1 + *(*a1 - 24);
  v9 = *(v8 + 72);
  v10 = *(v8 + 76);
  *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1) + 32) = a2;
  *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 32) = a2;
  if (*(a1 + 208) == 1)
  {
    *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 32) = a2;
  }

  *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1) + 24) = a2;
  if (*(a1 + 224) == 1)
  {
    *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 32) = a2;
  }

  v12 = *(a1 + *(*a1 - 24) + 80);
  if (a3 >= 0)
  {
    v13 = a3;
  }

  else
  {
    v13 = *(a1 + *(*a1 - 24) + 80);
  }

  if (v12 == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  if (v14 > v12)
  {
    kaldi::KaldiAssertFailure_("UpdateWeights", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_428.reserved3 + 2, "batch_index <= opts_.num_subbatches", v11);
  }

  *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a1, v14) + 32) = a2;
  *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a1, v14) + 32) = a2;
  *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a1, v14) + 24) = a2;
  *(*(a1 + 656) + 48 * v14 + 32) = a2;
  *(*(a1 + 680) + 48 * v14 + 32) = a2;
  *(*(a1 + 728) + 32 * v14 + 24) = a2;
  if (*(a1 + 208) == 1)
  {
    *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a1, v14) + 32) = a2;
    *(*(a1 + 704) + 48 * v14 + 32) = a2;
  }

  if (*(a1 + 224) == 1)
  {
    *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, v14) + 32) = a2;
    *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, v14) + 32) = a2;
  }

  v19 = a1 + 80;
  if (v14 == *(a1 + 80))
  {
    v20 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a1, v14);
    kaldi::CuMatrixBase<float>::SetZero(v20);
    v21 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a1, v14);
    kaldi::CuMatrixBase<float>::SetZero(v21);
    v22 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a1, v14);
    kaldi::CuVectorBase<float>::SetZero(v22);
    if (*(a1 + 208) == 1)
    {
      v23 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a1, v14);
      kaldi::CuMatrixBase<float>::SetZero(v23);
    }

    if (*(a1 + 224) == 1)
    {
      v24 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, v14);
      kaldi::CuMatrixBase<float>::SetZero(v24);
    }

    v25 = *a1;
    if (*(v19 + *(*a1 - 24)) >= 1)
    {
      v26 = 0;
      do
      {
        v27 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a1, v14);
        v28 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a1, v26);
        kaldi::CuMatrixBase<float>::AddMat(v27, v28, 111, v29, v30, 1.0, 1.0);
        v31 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a1, v14);
        v32 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a1, v26);
        kaldi::CuMatrixBase<float>::AddMat(v31, v32, 111, v33, v34, 1.0, 1.0);
        v35 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a1, v14);
        v36 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a1, v26);
        kaldi::CuVectorBase<float>::AddVec(v35, v36, v37, v38, v39, 1.0, 1.0);
        if (*(a1 + 208) == 1)
        {
          v40 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a1, v14);
          v41 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a1, v26);
          kaldi::CuMatrixBase<float>::AddMat(v40, v41, 111, v42, v43, 1.0, 1.0);
        }

        if (*(a1 + 224) == 1)
        {
          v44 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, v14);
          v45 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, v26);
          kaldi::CuMatrixBase<float>::AddMat(v44, v45, 111, v46, v47, 1.0, 1.0);
        }

        ++v26;
        v25 = *a1;
      }

      while (v26 < *(v19 + *(*a1 - 24)));
    }

    v48 = *(a1 + 480);
    v48[v14] = 0;
    if (v14 >= 1)
    {
      v49 = 0;
      v50 = v14;
      v51 = v48;
      do
      {
        v52 = *v51++;
        v49 += v52;
        v48[v14] = v49;
        --v50;
      }

      while (v50);
    }
  }

  else
  {
    v25 = *a1;
  }

  v53 = a1 + *(v25 - 24);
  v54 = *(v53 + 56);
  if (*(v53 + 84) == 1)
  {
    *v18.i32 = *(*(a1 + 480) + 4 * v14);
    v54 = v54 / *v18.i32;
  }

  v55 = *(a1 + 504);
  if (v14 >= ((*(a1 + 512) - v55) >> 2))
  {
    LODWORD(v108[0]) = 2143289344;
    std::vector<float>::resize((a1 + 504), v14 + 1, v108, v18);
    v55 = *(a1 + 504);
  }

  *(v55 + 4 * v14) = v54;
  if (*(a1 + 152) >= 0.0)
  {
    (*(*a1 + 360))(a1, v14);
  }

  if (v6 != 0.0)
  {
    v56 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
    v57 = -(v54 * v6);
    v58 = v57 * *(*(a1 + 480) + 4 * v14);
    v59 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
    kaldi::CuMatrixBase<float>::AddMat(v56, v59, 111, v60, v61, v58, 1.0);
    v62 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
    v63 = v57 * *(*(a1 + 480) + 4 * v14);
    v64 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
    kaldi::CuMatrixBase<float>::AddMat(v62, v64, 111, v65, v66, v63, 1.0);
    v67 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
    v68 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
    kaldi::CuVectorBase<float>::AddVec(v67, v68, v69, v70, v71, v57, 1.0);
    if (*(a1 + 208) == 1)
    {
      v72 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
      v73 = v57 * *(*(a1 + 480) + 4 * v14);
      v74 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
      kaldi::CuMatrixBase<float>::AddMat(v72, v74, 111, v75, v76, v73, 1.0);
    }

    if (*(a1 + 224) == 1)
    {
      v77 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
      v78 = v57 * *(*(a1 + 480) + 4 * v14);
      v79 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
      kaldi::CuMatrixBase<float>::AddMat(v77, v79, 111, v80, v81, v78, 1.0);
    }
  }

  if (v7 != 0.0)
  {
    v82 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
    v83 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a1, v14);
    kaldi::cu::RegularizeL1<float>(v82, v83, (v7 * v54) * *(*(a1 + 480) + 4 * v14), v54, v84, v85, v86);
    v87 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
    v88 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a1, v14);
    kaldi::cu::RegularizeL1<float>(v87, v88, (v7 * v54) * *(*(a1 + 480) + 4 * v14), v54, v89, v90, v91);
    if (*(a1 + 224) == 1)
    {
      v92 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
      v93 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, v14);
      kaldi::cu::RegularizeL1<float>(v92, v93, (v7 * v54) * *(*(a1 + 480) + 4 * v14), v54, v94, v95, v96);
    }
  }

  if (v9 > 0.0)
  {
    if (*(a1 + *(*a1 - 24) + 80) >= 2)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v108, "UpdateWeights", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1208);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v108, "the multi batch gradient quantization does not work yet");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v108);
    }

    if (*(a1 + 784) == *(a1 + 776))
    {
      kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InitResidualAggregator(a1, (a1 + 776));
    }

    kaldi::nnet1::QuantizerResidualAggregator::Quantize((a1 + 776), v10, v9, v15, v16, v17);
  }

  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ApplyCorr(a1, v14, v54);
  if (*(a1 + 472) > 0.0)
  {
    v97 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
    kaldi::CuMatrixBase<float>::ApplyMaxNorm(v97, 1, *(a1 + 472));
    v98 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
    kaldi::CuMatrixBase<float>::ApplyMaxNorm(v98, 1, *(a1 + 472));
    v99 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
    kaldi::CuVectorBase<float>::ApplyMaxNorm(v99, *(a1 + 472), v100, v101, v102, v103);
    if (*(a1 + 208) == 1)
    {
      v104 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
      kaldi::CuMatrixBase<float>::ApplyMaxNorm(v104, 1, *(a1 + 472));
    }

    if (*(a1 + 224) == 1)
    {
      v105 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
      kaldi::CuMatrixBase<float>::ApplyMaxNorm(v105, 1, *(a1 + 472));
    }
  }

  v106 = *(a1 + 480);
  if (v14 == *(a1 + *(*a1 - 24) + 80))
  {
    v107 = *(a1 + 488);
    if (v106 != v107)
    {
      bzero(v106, v107 - v106);
    }
  }

  else
  {
    *&v106[4 * v14] = 0;
  }
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::VectorizeWeightsCorrs(void *a1)
{
  if (*(a1 + *(*a1 - 24) + 16) != 1)
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiLogMessage::KaldiLogMessage(v2, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1545);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "Performing  vectorization of lstm component", 43);
      kaldi::KaldiLogMessage::~KaldiLogMessage(v2);
    }

    kaldi::CuSubMatrix<float>::CopyDataAndReplaceWithCuSub(a1 + 23);
  }

  kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1542);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "Weights are already vectorized");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
}

double kaldi::nnet1::MovingAttentionComponent::MovingAttentionComponent(kaldi::nnet1::MovingAttentionComponent *this, int a2, int a3)
{
  *(this + 108) = a2;
  *(this + 109) = a3;
  *(this + 220) = 0;
  *(this + 57) = 0;
  *(this + 58) = 0;
  *(this + 56) = 0;
  *(this + 59) = off_282980;
  *(this + 30) = xmmword_21A620;
  *(this + 62) = 0x3BF800000;
  *(this + 126) = 1;
  *(this + 254) = 0;
  *(this + 510) = 0;
  *(this + 1) = -1;
  *this = off_282330;
  *(this + 53) = off_282538;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 2) = 0;
  *(this + 3) = off_276F88;
  *(this + 64) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 9) = off_276F88;
  *(this + 112) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 15) = off_276F88;
  *(this + 160) = 0;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 21) = off_276F88;
  *(this + 208) = 0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 27) = off_276F88;
  *(this + 256) = 0;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 41) = 0;
  *(this + 42) = off_276F88;
  *(this + 376) = 0;
  *(this + 49) = 0;
  *(this + 50) = 0;
  *(this + 48) = 0;
  *&result = 257;
  *(this + 104) = 257;
  *(this + 420) = 0;
  return result;
}

int *kaldi::CuArray<int>::operator=(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a1 != a2)
  {
    if (!*(a1 + 2))
    {
      *(a1 + 2) = *(a2 + 16);
    }

    kaldi::CuArray<int>::Resize(a1, *a2, 1u, a4, a5);
    v7 = *a1;
    if (v7)
    {
      memcpy(*(a1 + 1), *(a2 + 8), 4 * v7);
    }
  }

  return a1;
}

kaldi::nnet1::MovingAttentionComponent *kaldi::nnet1::MovingAttentionComponent::MovingAttentionComponent(kaldi::nnet1::MovingAttentionComponent *this, const kaldi::nnet1::MovingAttentionComponent *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  *(this + 54) = *(a2 + *(*a2 - 24) + 8);
  *(this + 220) = 0;
  *(this + 57) = 0;
  *(this + 58) = 0;
  *(this + 56) = 0;
  *(this + 59) = off_282980;
  *(this + 30) = xmmword_21A620;
  *(this + 124) = -1082130432;
  *(this + 500) = 0x100000003;
  *(this + 254) = 0;
  *(this + 510) = 0;
  *(this + 1) = -1;
  *this = off_282330;
  *(this + 53) = off_282538;
  v6 = this + 24;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 3) = off_276F88;
  *(this + 64) = 0;
  v7 = this + 72;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 9) = off_276F88;
  *(this + 112) = 0;
  v8 = this + 120;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 15) = off_276F88;
  *(this + 160) = 0;
  v9 = this + 168;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 21) = off_276F88;
  *(this + 208) = 0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 27) = off_276F88;
  *(this + 256) = 0;
  v10 = (this + 264);
  v18 = (this + 288);
  v11 = this + 336;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 41) = 0;
  *(this + 42) = off_276F88;
  *(this + 376) = 0;
  *(this + 48) = 0;
  *(this + 49) = 0;
  *(this + 50) = 0;
  v12 = *(a2 + 2);
  if (!v12)
  {
    kaldi::KaldiAssertFailure_("MovingAttentionComponent", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_20.segname[11], "src.component_", a5);
  }

  *(this + 1) = *(a2 + 1);
  *(this + 51) = *(a2 + 51);
  *(this + 2) = (*(*v12 + 16))(v12);
  kaldi::CuMatrix<float>::operator=(v6, a2 + 24);
  kaldi::CuMatrix<float>::operator=(v7, a2 + 72);
  kaldi::CuMatrix<float>::operator=(v8, a2 + 120);
  kaldi::CuMatrix<float>::operator=(v9, a2 + 168);
  if (this != a2)
  {
    std::vector<std::vector<int>>::__assign_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(v10, *(a2 + 33), *(a2 + 34), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 34) - *(a2 + 33)) >> 3));
    std::vector<std::vector<int>>::__assign_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(v18, *(a2 + 36), *(a2 + 37), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 37) - *(a2 + 36)) >> 3));
  }

  kaldi::CuArray<int>::operator=(this + 78, a2 + 312, v14, v15, v16);
  kaldi::CuMatrix<float>::operator=(v11, a2 + 336);
  if (this != a2)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(this + 48, *(a2 + 48), *(a2 + 49), (*(a2 + 49) - *(a2 + 48)) >> 2);
  }

  *(this + 104) = *(a2 + 104);
  *(this + 420) = *(a2 + 420);
  return this;
}

void sub_174FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, kaldi::nnet1::UpdatableComponent *a10, uint64_t a11, uint64_t a12)
{
  v20 = v12[48];
  if (v20)
  {
    v12[49] = v20;
    operator delete(v20);
  }

  kaldi::CuMatrix<float>::~CuMatrix(v13);
  v21 = v12[40];
  if (v21)
  {
    free(v21);
  }

  v12[39] = 0;
  v12[40] = 0;
  v12[41] = 0;
  a12 = a11;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a12);
  kaldi::CuMatrix<float>::~CuMatrix(v18);
  kaldi::CuMatrix<float>::~CuMatrix(v17);
  kaldi::CuMatrix<float>::~CuMatrix(v16);
  kaldi::CuMatrix<float>::~CuMatrix(v15);
  kaldi::CuMatrix<float>::~CuMatrix(v14);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v12);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a10);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::MovingAttentionComponent::~MovingAttentionComponent(kaldi::nnet1::MovingAttentionComponent *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 24)) = a2[3];
  v4 = *(this + 2);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 2) = 0;
  v5 = *(this + 48);
  if (v5)
  {
    *(this + 49) = v5;
    operator delete(v5);
  }

  kaldi::CuMatrix<float>::~CuMatrix(this + 336);
  v6 = *(this + 40);
  if (v6)
  {
    free(v6);
  }

  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 41) = 0;
  v7 = (this + 288);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (this + 264);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v7);
  kaldi::CuMatrix<float>::~CuMatrix(this + 216);
  kaldi::CuMatrix<float>::~CuMatrix(this + 168);
  kaldi::CuMatrix<float>::~CuMatrix(this + 120);
  kaldi::CuMatrix<float>::~CuMatrix(this + 72);
  kaldi::CuMatrix<float>::~CuMatrix(this + 24);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(this);
}

void kaldi::nnet1::MovingAttentionComponent::~MovingAttentionComponent(kaldi::nnet1::MovingAttentionComponent *this)
{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 424));
}

{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 424));

  operator delete();
}

void virtual thunk tokaldi::nnet1::MovingAttentionComponent::~MovingAttentionComponent(kaldi::nnet1::MovingAttentionComponent *this)
{
  v2 = (v1 + 424);

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
}

{
  kaldi::nnet1::MovingAttentionComponent::~MovingAttentionComponent((this + *(*this - 24)));
}

void kaldi::nnet1::MovingAttentionComponent::InitData(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  memset(v55, 0, 24);
  v7 = a2 + 4;
  v8 = a1 + 412;
  v9 = a1 + 408;
  v10 = a1 + 12;
  v11 = a1 + 8;
  while (1)
  {
    if ((*(v7 + *(*a2 - 24)) & 2) != 0)
    {
      goto LABEL_109;
    }

    kaldi::ReadToken(a2, 0, v55, a4, a5);
    if (SHIBYTE(v55[2]) < 0)
    {
      v13 = v55[1];
      if (v55[1] <= 15)
      {
        if (v55[1] != 13)
        {
          if (v55[1] != 14)
          {
            if (v55[1] != 15)
            {
              goto LABEL_102;
            }

            v12 = *v55[0] == 0x6574744178614D3CLL && *(v55[0] + 7) == 0x3E736E6F69746E65;
LABEL_17:
            v14 = v10;
            if (!v12)
            {
              goto LABEL_120;
            }

            goto LABEL_84;
          }

          v22 = *v55[0] == 0x6F4374686769523CLL && *(v55[0] + 6) == 0x3E747865746E6F43;
LABEL_82:
          v14 = v8;
          if (!v22)
          {
            goto LABEL_120;
          }

          goto LABEL_84;
        }

        v18 = *v55[0] == 0x6E6F437466654C3CLL && *(v55[0] + 5) == 0x3E747865746E6F43;
LABEL_63:
        v14 = v9;
        if (!v18)
        {
          goto LABEL_120;
        }

        goto LABEL_84;
      }

      if (v55[1] == 16)
      {
        if (*v55[0] == 0x52656372756F533CLL && *(v55[0] + 8) == 0x3E64657372657665)
        {
LABEL_96:
          *(a1 + 416) = 0;
          goto LABEL_85;
        }

        if (*v55[0] != 0x65677261546F4E3CLL || *(v55[0] + 8) != 0x3E7461636E6F4374)
        {
          if (*v55[0] != 0x636174746165523CLL || *(v55[0] + 8) != 0x3E74656772615468)
          {
            goto LABEL_101;
          }

          goto LABEL_78;
        }

        goto LABEL_97;
      }

      if (v55[1] != 20)
      {
        if (v55[1] != 22)
        {
          goto LABEL_102;
        }

        v16 = *v55[0] == 0x53656372756F533CLL && *(v55[0] + 8) == 0x656D694465746174 && *(v55[0] + 14) == 0x3E6E6F69736E656DLL;
        goto LABEL_37;
      }

      v23 = v55[0];
    }

    else
    {
      if (HIBYTE(v55[2]) <= 0xFu)
      {
        if (HIBYTE(v55[2]) > 0xDu)
        {
          if (HIBYTE(v55[2]) != 14)
          {
            v12 = v55[0] == 0x6574744178614D3CLL && *(v55 + 7) == 0x3E736E6F69746E65;
            goto LABEL_17;
          }

          v22 = v55[0] == 0x6F4374686769523CLL && *(v55 + 6) == 0x3E747865746E6F43;
          goto LABEL_82;
        }

        if (HIBYTE(v55[2]) != 13)
        {
          goto LABEL_99;
        }

        v18 = v55[0] == 0x6E6F437466654C3CLL && *(v55 + 5) == 0x3E747865746E6F43;
        goto LABEL_63;
      }

      if (HIBYTE(v55[2]) == 16)
      {
        if (v55[0] == 0x52656372756F533CLL && v55[1] == 0x3E64657372657665)
        {
          goto LABEL_96;
        }

        if (v55[0] != 0x65677261546F4E3CLL || v55[1] != 0x3E7461636E6F4374)
        {
          if (v55[0] != 0x636174746165523CLL || v55[1] != 0x3E74656772615468)
          {
            goto LABEL_120;
          }

LABEL_78:
          *(a1 + 418) = 1;
          goto LABEL_85;
        }

LABEL_97:
        *(a1 + 417) = 0;
        goto LABEL_85;
      }

      if (HIBYTE(v55[2]) != 20)
      {
        if (HIBYTE(v55[2]) != 22)
        {
          goto LABEL_120;
        }

        v16 = v55[0] == 0x53656372756F533CLL && v55[1] == 0x656D694465746174 && *(&v55[1] + 6) == 0x3E6E6F69736E656DLL;
LABEL_37:
        v14 = v11;
        if (!v16)
        {
          goto LABEL_120;
        }

LABEL_84:
        kaldi::ReadBasicType<int>(a2, 0, v14, a4, a5);
        goto LABEL_85;
      }

      v23 = v55;
    }

    v27 = *v23;
    v28 = v23[1];
    v29 = *(v23 + 4);
    if (v27 != 0x646F7250746F443CLL || v28 != 0x74616C6552746375 || v29 != 1047424873)
    {
      if ((v55[2] & 0x8000000000000000) != 0)
      {
LABEL_101:
        v13 = v55[1];
LABEL_102:
        if (v13 == 12)
        {
          v32 = v55[0];
          goto LABEL_104;
        }
      }

      else
      {
LABEL_99:
        if (HIBYTE(v55[2]) == 12)
        {
          v32 = v55;
LABEL_104:
          v33 = *v32;
          v34 = *(v32 + 2);
          if (v33 == 0x6E6F706D6F432F3CLL && v34 == 1047817829)
          {
LABEL_109:
            v36 = *(a1 + 16);
            if (v36)
            {
              (*(*v36 + 8))(v36);
            }

            v52 = 0;
            v53 = 0;
            v54 = 0;
            kaldi::ReadToken(a2, 0, &v52, a4, a5);
            v37 = kaldi::nnet1::Component::MarkerToComponentType(&v52);
            v51 = 0;
            if (kaldi::g_kaldi_verbose_level >= 3)
            {
              kaldi::KaldiVlogMessage::KaldiVlogMessage(v50, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", 143, 3);
              v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Initializing component of type ", 31);
              if (v54 >= 0)
              {
                v39 = &v52;
              }

              else
              {
                v39 = v52;
              }

              if (v54 >= 0)
              {
                v40 = HIBYTE(v54);
              }

              else
              {
                v40 = v53;
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, v39, v40);
              kaldi::KaldiVlogMessage::~KaldiVlogMessage(v50);
            }

            kaldi::ExpectToken(a2, 0, "<InputDim>");
            kaldi::ReadBasicType<int>(a2, 0, &v51 + 4, v41, v42);
            kaldi::ExpectToken(a2, 0, "<OutputDim>");
            kaldi::ReadBasicType<int>(a2, 0, &v51, v43, v44);
            kaldi::nnet1::Component::NewComponentOfType(v37);
          }
        }
      }

LABEL_120:
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v50, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", 133);
      v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Unknown token ", 14);
      if (v55[2] >= 0)
      {
        v46 = v55;
      }

      else
      {
        v46 = v55[0];
      }

      if (v55[2] >= 0)
      {
        v47 = HIBYTE(v55[2]);
      }

      else
      {
        v47 = v55[1];
      }

      v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, v46, v47);
      v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, ", a typo in config?", 19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, " (SourceStateDimension|MaxAttentions|LeftContext|RightContext)", 62);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v50);
    }

    *(a1 + 419) = 1;
LABEL_85:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }
}

void *kaldi::nnet1::MovingAttentionComponent::Check(void *this)
{
  if ((*(this + 420) & 1) == 0)
  {
    v1 = this;
    v2 = this[2];
    if (v2)
    {
      v3 = *v2;
      v4 = **v2;
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v48, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", 594);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v48, "this is a non-recurrent version, cannot have a recurrent internal component");
        goto LABEL_33;
      }

      v5 = *v3;
      if (this)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v48, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", 597);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v48, "no recursive inclusion");
        goto LABEL_33;
      }
    }

    v6 = *(v1 + 12);
    if (v6 < 1 || (v7 = *(v1 + 8), v7 <= 0))
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v48, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", 600);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "component is not initialized, max attention is ", 47);
      v27 = *(v1 + 12);
      v28 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ", source state dimension is ", 28);
      v29 = *(v1 + 8);
      std::ostream::operator<<();
      goto LABEL_33;
    }

    v8 = *(v1 + 408);
    if (v8 < 1 || (v9 = *(v1 + 412), v9 <= 0))
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v48, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", 605);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "component is not initialized, left and right context is ", 56);
      v30 = *(v1 + 408);
      v31 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " ", 1);
      v32 = *(v1 + 412);
      std::ostream::operator<<();
      goto LABEL_33;
    }

    v10 = *(v1 + 417);
    if (v10 == 1)
    {
      if (*(v1 + *(*v1 - 24) + 8) + v7 * v6 != v2[2])
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v48, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", 610);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "The target input is concatenated. component has input dim ", 58);
        v11 = *(v1 + *(*v1 - 24) + 8);
        v12 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", attentions ", 13);
        v13 = *(v1 + 12);
        v14 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", source state dimension ", 25);
        v15 = *(v1 + 8);
        v16 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ", however, the internal training component has input dim ", 57);
        v17 = *(*(v1 + 16) + 8);
        std::ostream::operator<<();
        goto LABEL_33;
      }
    }

    else if (v7 * v6 != v2[2])
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v48, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", 616);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "The target input is not concatenated. component has input dim ", 62);
      v38 = *(v1 + *(*v1 - 24) + 8);
      v39 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ", attentions ", 13);
      v40 = *(v1 + 12);
      v41 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ", source state dimension ", 25);
      v42 = *(v1 + 8);
      v43 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, ", however, the internal training component has input dim ", 57);
      v44 = *(*(v1 + 16) + 8);
      std::ostream::operator<<();
      goto LABEL_33;
    }

    v18 = *(v1 + 418);
    v19 = v1 + *(*v1 - 24);
    v20 = *(v19 + 12);
    if (v18 == 1)
    {
      if (v20 != v2[3] + *(v19 + 8))
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v48, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", 624);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "component has input dim ", 24);
        v21 = *(v1 + *(*v1 - 24) + 8);
        v22 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " , and output dim ", 18);
        v23 = *(v1 + *(*v1 - 24) + 12);
        v24 = std::ostream::operator<<();
        v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ", and you requested to reattch the target, however, ", 52);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "the internal component has output dim ", 38);
        v26 = *(*(v1 + 16) + 12);
        std::ostream::operator<<();
        goto LABEL_33;
      }
    }

    else if (v20 != v2[3])
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v48, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", 629);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "component has output dim ", 25);
      v45 = *(v1 + *(*v1 - 24) + 12);
      v46 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, " does not match the internal component's output dim ", 52);
      v47 = *(*(v1 + 16) + 12);
      std::ostream::operator<<();
      goto LABEL_33;
    }

    if (v6 == v8 + v9 + 1)
    {
      if (*(v1 + 419) == 1)
      {
        if (*(v1 + *(*v1 - 24) + 8) != v7)
        {
          kaldi::KaldiErrorMessage::KaldiErrorMessage(v48, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", 641);
          std::operator<<[abi:ne200100]<std::char_traits<char>>(v48, "the source state must have the same dimension as the input dimension of the component if want to take the dot product between them");
          goto LABEL_33;
        }

        goto LABEL_23;
      }

      if (v10 & 1) != 0 || (v18)
      {
LABEL_23:
        *(v1 + 420) = 1;
        return this;
      }

      kaldi::KaldiErrorMessage::KaldiErrorMessage(v48, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", 646);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v48, "if not taking the dot production relation from the source and target, you must at least concatenate or reattach the target");
    }

    else
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v48, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", 634);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "the maximum attention is ", 25);
      v33 = *(v1 + 12);
      v34 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " , that does not match the left_context + 1 + right_context, you defined left/right context as ", 95);
      v35 = *(v1 + 408);
      v36 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, " ", 1);
      v37 = *(v1 + 412);
      std::ostream::operator<<();
    }

LABEL_33:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v48);
  }

  return this;
}

void kaldi::nnet1::MovingAttentionComponent::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  memset(v45, 0, 24);
  v6 = a1 + 412;
  v7 = a1 + 408;
  v8 = a1 + 12;
  v9 = a1 + 8;
  while (kaldi::Peek(a2, a3) == 60)
  {
    kaldi::ReadToken(a2, a3, v45, v10, v11);
    if (SHIBYTE(v45[2]) < 0)
    {
      if (v45[1] == &dword_C + 3)
      {
        v18 = *v45[0] == 0x6574744178614D3CLL && *(v45[0] + 7) == 0x3E736E6F69746E65;
        v15 = v8;
        if (v18)
        {
          goto LABEL_80;
        }
      }

      else if (v45[1] == &dword_14 + 2)
      {
        v16 = *v45[0] == 0x53656372756F533CLL && *(v45[0] + 1) == 0x656D694465746174;
        v17 = v16 && *(v45[0] + 14) == 0x3E6E6F69736E656DLL;
        v15 = v9;
        if (v17)
        {
          goto LABEL_80;
        }
      }

      if (v45[1] == &dword_C + 2)
      {
        v20 = *v45[0] == 0x6F4374686769523CLL && *(v45[0] + 6) == 0x3E747865746E6F43;
        v15 = v6;
        if (v20)
        {
          goto LABEL_80;
        }
      }

      else if (v45[1] == &dword_C + 1)
      {
        v19 = *v45[0] == 0x6E6F437466654C3CLL && *(v45[0] + 5) == 0x3E747865746E6F43;
        v15 = v7;
        if (v19)
        {
          goto LABEL_80;
        }
      }

      v21 = v45[1];
      if (v45[1] != dword_10)
      {
        goto LABEL_88;
      }

      if (*v45[0] == 0x52656372756F533CLL && *(v45[0] + 1) == 0x3E64657372657665)
      {
LABEL_81:
        *(a1 + 416) = 0;
      }

      else if (*v45[0] == 0x65677261546F4E3CLL && *(v45[0] + 1) == 0x3E7461636E6F4374)
      {
LABEL_99:
        *(a1 + 417) = 0;
      }

      else
      {
        v21 = v45[1];
        if (*v45[0] == 0x636174746165523CLL && *(v45[0] + 1) == 0x3E74656772615468)
        {
          goto LABEL_105;
        }

        if ((HIBYTE(v45[2]) & 0x80) == 0)
        {
          goto LABEL_106;
        }

LABEL_88:
        if (v21 != &dword_14)
        {
          goto LABEL_106;
        }

        v29 = v45[0];
LABEL_90:
        v32 = *v29;
        v33 = v29[1];
        v34 = *(v29 + 4);
        if (v32 != 0x646F7250746F443CLL || v33 != 0x74616C6552746375 || v34 != 1047424873)
        {
          goto LABEL_106;
        }

        *(a1 + 419) = 1;
      }
    }

    else
    {
      if (HIBYTE(v45[2]) <= 0xFu)
      {
        switch(HIBYTE(v45[2]))
        {
          case 0xDu:
            v26 = v45[0] == 0x6E6F437466654C3CLL && *(v45 + 5) == 0x3E747865746E6F43;
            v15 = v7;
            if (!v26)
            {
              goto LABEL_106;
            }

            break;
          case 0xEu:
            v30 = v45[0] == 0x6F4374686769523CLL && *(v45 + 6) == 0x3E747865746E6F43;
            v15 = v6;
            if (!v30)
            {
              goto LABEL_106;
            }

            break;
          case 0xFu:
            v14 = v45[0] == 0x6574744178614D3CLL && *(v45 + 7) == 0x3E736E6F69746E65;
            v15 = v8;
            if (!v14)
            {
              goto LABEL_106;
            }

            break;
          default:
            goto LABEL_106;
        }

        goto LABEL_80;
      }

      switch(HIBYTE(v45[2]))
      {
        case 0x10u:
          if (v45[0] == 0x52656372756F533CLL && v45[1] == 0x3E64657372657665)
          {
            goto LABEL_81;
          }

          if (v45[0] == 0x65677261546F4E3CLL && v45[1] == 0x3E7461636E6F4374)
          {
            goto LABEL_99;
          }

          if (v45[0] != 0x636174746165523CLL || v45[1] != 0x3E74656772615468)
          {
LABEL_106:
            if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v45, "</Component>"))
            {
              kaldi::KaldiErrorMessage::KaldiErrorMessage(v44, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", 176);
              v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "Unrecognized token ", 19);
              if (SHIBYTE(v45[2]) >= 0)
              {
                v42 = v45;
              }

              else
              {
                v42 = v45[0];
              }

              if (SHIBYTE(v45[2]) >= 0)
              {
                v43 = HIBYTE(v45[2]);
              }

              else
              {
                v43 = v45[1];
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, v42, v43);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(v44);
            }

            goto LABEL_107;
          }

LABEL_105:
          *(a1 + 418) = 1;
          break;
        case 0x14u:
          v29 = v45;
          goto LABEL_90;
        case 0x16u:
          v24 = v45[0] == 0x53656372756F533CLL && v45[1] == 0x656D694465746174;
          v25 = v24 && *(&v45[1] + 6) == 0x3E6E6F69736E656DLL;
          v15 = v9;
          if (!v25)
          {
            goto LABEL_106;
          }

LABEL_80:
          kaldi::ReadBasicType<int>(a2, a3, v15, v12, v13);
          break;
        default:
          goto LABEL_106;
      }
    }
  }

LABEL_107:
  v38 = *(a1 + 16);
  if (v38)
  {
    (*(*v38 + 8))(v38);
  }

  v39 = kaldi::nnet1::Component::Read(a2, a3);
  if (v39)
  {
    v40 = **v39;
  }

  *(a1 + 16) = v39;
  kaldi::nnet1::MovingAttentionComponent::Check(a1);
  if (SHIBYTE(v45[2]) < 0)
  {
    operator delete(v45[0]);
  }
}

void sub_176718(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::MovingAttentionComponent::WriteConfig(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<SourceStateDimension>", a4, a5);
  v8 = *(a1 + 8);
  kaldi::WriteBasicType<int>(a2, a3);
  kaldi::WriteToken(a2, a3, "<MaxAttentions>", v9, v10);
  v11 = *(a1 + 12);
  kaldi::WriteBasicType<int>(a2, a3);
  kaldi::WriteToken(a2, a3, "<LeftContext>", v12, v13);
  v14 = *(a1 + 408);
  kaldi::WriteBasicType<int>(a2, a3);
  kaldi::WriteToken(a2, a3, "<RightContext>", v15, v16);
  v17 = *(a1 + 412);
  kaldi::WriteBasicType<int>(a2, a3);
  if ((*(a1 + 416) & 1) == 0)
  {
    kaldi::WriteToken(a2, a3, "<SourceReversed>", v18, v19);
  }

  if ((*(a1 + 417) & 1) == 0)
  {
    kaldi::WriteToken(a2, a3, "<NoTargetConcat>", v18, v19);
  }

  if (*(a1 + 418) == 1)
  {
    kaldi::WriteToken(a2, a3, "<ReattachTarget>", v18, v19);
  }

  if (*(a1 + 419) == 1)
  {
    kaldi::WriteToken(a2, a3, "<DotProductRelation>", v18, v19);
  }

  kaldi::WriteToken(a2, a3, "</Component>", v18, v19);
  v20 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  kaldi::nnet1::Component::TypeToMarker(v20, &__p);
  kaldi::WriteToken(a2, a3, &__p, v21, v22);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v23 = *(*(a1 + 16) + 12);
  kaldi::WriteBasicType<int>(a2, a3);
  v24 = *(*(a1 + 16) + 8);
  return kaldi::WriteBasicType<int>(a2, a3);
}

void sub_176924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::MovingAttentionComponent::WriteData(void **a1)
{
  ((*a1)[12])(a1);
  v2 = *(*a1[2] + 104);

  return v2();
}

uint64_t virtual thunk tokaldi::nnet1::MovingAttentionComponent::WriteData(void *a1)
{
  v1 = (a1 + *(*a1 - 120));
  ((*v1)[12])(v1);
  v2 = *(*v1[2] + 104);

  return v2();
}

uint64_t kaldi::nnet1::MovingAttentionComponent::Info(kaldi::nnet1::MovingAttentionComponent *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v7);
  (*(*this + 96))(this, &v7, 0);
  (*(**(this + 2) + 64))(__p);
  if ((v6 & 0x80u) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if ((v6 & 0x80u) == 0)
  {
    v3 = v6;
  }

  else
  {
    v3 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, v2, v3);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  std::locale::~locale(v9);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_176E80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::MovingAttentionComponent::SetTrainOptions(uint64_t a1, uint64_t a2)
{
  v2 = a1 + *(*a1 - 24);
  v3 = *(a2 + 8);
  *(v2 + 71) = *(a2 + 23);
  *(v2 + 56) = v3;
  return (*(**(a1 + 16) + 264))();
}

uint64_t virtual thunk tokaldi::nnet1::MovingAttentionComponent::SetTrainOptions(void *a1, uint64_t a2)
{
  v2 = a1 + *(*a1 - 280);
  v3 = &v2[*(*v2 - 24)];
  v4 = *(a2 + 8);
  *(v3 + 71) = *(a2 + 23);
  *(v3 + 56) = v4;
  return (*(**(v2 + 2) + 264))();
}

void kaldi::nnet1::MovingAttentionComponent::SetSourceStates(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  kaldi::nnet1::MovingAttentionComponent::Check(a1);
  v29 = a3[1] - *a3;
  v7 = v29 >> 2;
  v8 = *(a2 + 20);
  v9 = v8 / (v29 >> 2);
  if (v9 * (v29 >> 2) != v8)
  {
    kaldi::KaldiAssertFailure_("SetSourceStates", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_B8.align + 1, "seq_size * num_seq == source.NumRows()", v6);
  }

  v10 = *(a2 + 16);
  if (v10 != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("SetSourceStates", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_B8.align + 2, "source.NumCols() == source_vec_dim_", v6);
  }

  v11 = (a1 + 408);
  kaldi::CuMatrix<float>::Resize(a1 + 24, v29 >> 2, ((*(a1 + 408) + *(a1 + 412) + v9) * v10), 0, 0);
  if (v7 >= 1)
  {
    v12 = 0;
    v13 = *(a1 + 8);
    v14 = *a3;
    do
    {
      if (*(v14 + 4 * v12) >= 1)
      {
        v15 = 0;
        v16 = (v13 * *v11);
        v17 = v12;
        do
        {
          kaldi::CuSubMatrix<float>::CuSubMatrix(&__p, a1 + 24, 0, *(a1 + 44), v16, v13);
          if (v12 >= HIDWORD(v32))
          {
            kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v20);
          }

          v35 = v32 + 4 * v33 * v12;
          v34 = &off_276FE0;
          v36 = DWORD2(v32);
          v37 = *(&v33 + 1);
          if (*(a2 + 20) <= v17)
          {
            kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.segname[11], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v20);
          }

          v21 = *(a2 + 16);
          v22 = *(a2 + 32);
          v30[1] = *(a2 + 8) + 4 * (*(a2 + 24) * v17);
          v30[0] = &off_276FE0;
          v30[2] = v21;
          v30[3] = v22;
          kaldi::CuVectorBase<float>::CopyFromVec(&v34, v30, v18, v19, v20);
          v34 = &off_276FE0;
          v35 = 0;
          LODWORD(v36) = 0;
          v37 = 0;
          __p = off_276F40;
          v32 = 0u;
          v33 = 0u;
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&__p);
          v13 = *(a1 + 8);
          v16 = (v13 + v16);
          ++v15;
          v14 = *a3;
          v17 += v7;
        }

        while (v15 < *(*a3 + 4 * v12));
        v11 = (a1 + 408);
      }

      ++v12;
    }

    while (v12 != ((v29 >> 2) & 0x7FFFFFFF));
  }

  v23 = (v29 >> 2);
  __p = 0;
  v32 = 0uLL;
  std::vector<std::vector<int>>::assign((a1 + 264), v23, &__p);
  if (__p)
  {
    *&v32 = __p;
    operator delete(__p);
  }

  __p = 0;
  v32 = 0uLL;
  std::vector<std::vector<int>>::assign((a1 + 288), v23, &__p);
  if (__p)
  {
    *&v32 = __p;
    operator delete(__p);
  }

  if (*(a1 + 416))
  {
    std::vector<int>::resize((a1 + 384), v23);
    if (v7 >= 1)
    {
      v24 = 0;
      v25 = 0;
      do
      {
        *(*(a1 + 384) + 4 * v25) = *(*a3 + 4 * v25) + *v11 - 1;
        std::vector<int>::push_back[abi:ne200100]((*(a1 + 288) + v24), v11);
        ++v25;
        v24 += 24;
      }

      while (((v29 >> 2) & 0x7FFFFFFF) != v25);
    }
  }

  else if (v7 >= 1)
  {
    v26 = 0;
    v27 = 0;
    do
    {
      v28 = *(a1 + 288);
      LODWORD(__p) = *(*a3 + 4 * v27) + *v11 - 1;
      std::vector<int>::push_back[abi:ne200100]((v28 + v26), &__p);
      ++v27;
      v26 += 24;
    }

    while (((v29 >> 2) & 0x7FFFFFFF) != v27);
  }
}

void sub_1773FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double kaldi::nnet1::MovingAttentionComponent::GetSourceDiffs(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  kaldi::nnet1::MovingAttentionComponent::Check(a1);
  v27 = a3;
  v9 = a3[1] - *a3;
  v10 = v9 >> 2;
  v11 = *(a2 + 20);
  v12 = v11 / (v9 >> 2);
  if (v12 * (v9 >> 2) != v11)
  {
    kaldi::KaldiAssertFailure_("GetSourceDiffs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_108.sectname[10], "seq_size * num_seq == source.NumRows()", v8);
  }

  v13 = *(a2 + 16);
  if (v13 != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("GetSourceDiffs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_108.sectname[11], "source.NumCols() == source_vec_dim_", v8);
  }

  if (*(a1 + 140) != v10)
  {
    kaldi::KaldiAssertFailure_("GetSourceDiffs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_108.sectname[12], "accumed_source_states_diff_.NumRows() == num_seq", v8);
  }

  v14 = *(a1 + 408);
  if (*(a1 + 136) != (v14 + *(a1 + 412) + v12) * v13)
  {
    kaldi::KaldiAssertFailure_("GetSourceDiffs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_108.sectname[13], "accumed_source_states_diff_.NumCols() == (left_context_ + seq_size + right_context_) * source_vec_dim_", v8);
  }

  kaldi::CuSubMatrix<float>::CuSubMatrix(&v36, a1 + 120, 0, v10, (v14 * v13), v13 * v12);
  kaldi::CuMatrix<float>::Resize(a4, *(a2 + 20), *(a2 + 16), 0, 0);
  if (v10 >= 1)
  {
    v16 = 0;
    v26 = (v9 >> 2) & 0x7FFFFFFF;
    do
    {
      if (v16 >= (v27[1] - *v27) >> 2)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      v17 = *(*v27 + 4 * v16);
      if (v17 >= 1)
      {
        v18 = 0;
        v19 = v16;
        do
        {
          if (*(a4 + 20) <= v19)
          {
            kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v15);
          }

          v20 = *(a4 + 16);
          v21 = *(a4 + 32);
          v35[1] = *(a4 + 8) + 4 * (*(a4 + 24) * v19);
          v35[0] = &off_276FE0;
          v35[2] = v20;
          v35[3] = v21;
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v28, &v36, 0, SHIDWORD(v37), (*(a1 + 8) * v18), *(a1 + 8));
          if (v16 >= HIDWORD(v29))
          {
            kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v24);
          }

          v32 = v29 + 4 * v30 * v16;
          v31 = &off_276FE0;
          v33 = DWORD2(v29);
          v34 = *(&v30 + 1);
          kaldi::CuVectorBase<float>::CopyFromVec(v35, &v31, v22, v23, v24);
          v31 = &off_276FE0;
          v32 = 0;
          LODWORD(v33) = 0;
          v34 = 0;
          v28 = off_276F40;
          v29 = 0u;
          v30 = 0u;
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v28);
          ++v18;
          v19 += v10;
        }

        while (v17 != v18);
      }

      ++v16;
    }

    while (v16 != v26);
  }

  v36 = off_276F40;
  v37 = 0u;
  v38 = 0u;
  *&result = fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v36).n128_u64[0];
  return result;
}

void sub_1777C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void (**a25)(), __int128 a26, __int128 a27)
{
  a25 = off_276F40;
  a26 = 0u;
  a27 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a25);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::MovingAttentionComponent::GetCurrentAlignment(uint64_t a1, std::vector<int> *this)
{
  v4 = -1431655765 * ((*(a1 + 272) - *(a1 + 264)) >> 3);
  std::vector<int>::resize(this, v4);
  if (v4 >= 1)
  {
    begin = this->__begin_;
    v6 = v4 & 0x7FFFFFFF;
    v7 = (*(a1 + 264) + 8);
    do
    {
      v8 = *v7;
      v7 += 3;
      *begin++ = *(v8 - 4) - *(a1 + 408);
      --v6;
    }

    while (v6);
  }

  return 1;
}

uint64_t kaldi::nnet1::MovingAttentionComponent::GetOverallAlignment(uint64_t a1, void *a2)
{
  v4 = -1431655765 * ((*(a1 + 272) - *(a1 + 264)) >> 3);
  std::vector<std::vector<int>>::resize(a2, v4);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = v4 & 0x7FFFFFFF;
    v7 = *(a1 + 264);
    do
    {
      v8 = (v7 + 24 * v5);
      v9 = *v8;
      while (v9 != v8[1])
      {
        v10 = (*a2 + 24 * v5);
        v11 = *v9++;
        v13 = v11 - *(a1 + 408);
        std::vector<int>::push_back[abi:ne200100](v10, &v13);
        v7 = *(a1 + 264);
        v8 = (v7 + 24 * v5);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return 1;
}

uint64_t kaldi::nnet1::MovingAttentionComponent::SetSourceVectorDimension(uint64_t this, int a2)
{
  if (*(this + 8) != a2)
  {
    *(this + 8) = a2;
    *(this + 420) = 0;
  }

  return this;
}

uint64_t kaldi::nnet1::MovingAttentionComponent::SetMaxAttentions(uint64_t this, int a2)
{
  if (*(this + 12) != a2)
  {
    *(this + 12) = a2;
    *(this + 420) = 0;
  }

  return this;
}

double kaldi::nnet1::MovingAttentionComponent::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  kaldi::nnet1::MovingAttentionComponent::Check(a1);
  v40 = a2;
  v8 = *a1;
  if (*(a2 + 16) != *(a1 + *(*a1 - 24) + 8))
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_108.flags + 2, "in.NumCols() == input_dim_", v7);
  }

  if (a4)
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_108.reserved1, "batch_idx == 0", v7);
  }

  v9 = *(a1 + 44);
  v10 = *(a2 + 20);
  v38 = v10 / v9;
  if (v10 / v9 * v9 != v10)
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_108.reserved1 + 3, "num_seq * seq_size == in.NumRows()", v7);
  }

  v11 = (*(a1 + 8) * *(a1 + 12));
  *(a1 + 104) = *(a3 + 32);
  if (*(a1 + 417) == 1)
  {
    v12 = *(a1 + *(v8 - 24) + 8);
  }

  else
  {
    v12 = 0;
  }

  kaldi::CuMatrix<float>::Resize(a1 + 72, v9, (v12 + v11), 1u, 0);
  if (v38 >= 1)
  {
    v14 = 0;
    v13 = 0uLL;
    do
    {
      v50[1] = v13;
      v50[0] = v13;
      v49 = off_276F40;
      v41 = v14;
      if (*(a1 + 417) == 1)
      {
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v47, a1 + 72, 0, *(a1 + 92), v11, *(a1 + 8 + *(*a1 - 24)));
        *&v50[0] = v48[0];
        *(v50 + 8) = *&v48[1];
        *(&v50[1] + 1) = v48[3];
        v47 = off_276F40;
        memset(v48, 0, sizeof(v48));
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v47);
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v47, v40, v14 * v9, v9, 0, *(v40 + 16));
        kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v49, &v47, 111, v15, v16);
      }

      else
      {
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v47, v40, v14 * v9, v9, 0, *(v40 + 16));
        *&v50[0] = v48[0];
        *(v50 + 8) = *&v48[1];
        *(&v50[1] + 1) = v48[3];
      }

      v47 = off_276F40;
      memset(v48, 0, sizeof(v48));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v47);
      if (v9 >= 1)
      {
        v18 = 0;
        v19 = 8;
        do
        {
          v20 = *(*(*(a1 + 288) + v19) - 4) - *(a1 + 408);
          if (v20 < 0)
          {
            kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_158.sectname[9], "begin >= 0", v17);
          }

          kaldi::CuSubMatrix<float>::CuSubMatrix(&v47, a1 + 72, 0, *(a1 + 92), 0, v11);
          if (v18 >= HIDWORD(v48[1]))
          {
            kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v21);
          }

          *&v43 = v48[0] + 4 * LODWORD(v48[2]) * v18;
          v42 = &off_276FE0;
          *(&v43 + 1) = LODWORD(v48[1]);
          *&v44 = v48[3];
          if (v18 >= *(a1 + 44))
          {
            kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v21);
          }

          v22 = *(a1 + 40);
          v23 = *(a1 + 56);
          v45[1] = *(a1 + 32) + 4 * *(a1 + 48) * v18;
          v45[0] = &off_276FE0;
          v45[2] = v22;
          v45[3] = v23;
          kaldi::CuSubVector<float>::CuSubVector(v46, v45, *(a1 + 8) * v20, v11, v21);
          kaldi::CuVectorBase<float>::CopyFromVec(&v42, v46, v24, v25, v26);
          v42 = &off_276FE0;
          *&v43 = 0;
          DWORD2(v43) = 0;
          *&v44 = 0;
          v47 = off_276F40;
          memset(v48, 0, sizeof(v48));
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v47);
          ++v18;
          v19 += 24;
        }

        while (v9 != v18);
      }

      if (*(a1 + 419) == 1 && *(a1 + 12) >= 1)
      {
        v27 = 0;
        do
        {
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v47, a1 + 72, 0, *(a1 + 92), (*(a1 + 8) * v27), *(a1 + 8));
          kaldi::CuMatrixBase<float>::MulElements(&v47, &v49, v28, v29, v30);
          v47 = off_276F40;
          memset(v48, 0, sizeof(v48));
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v47);
          ++v27;
        }

        while (v27 < *(a1 + 12));
      }

      kaldi::CuSubMatrix<float>::CuSubMatrix(&v42, a3, v41 * v9, v9, 0, *(a3 + 16));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v47, &v42, 0, SHIDWORD(v43), 0, *(*(a1 + 16) + 12));
      v42 = off_276F40;
      v43 = 0u;
      v44 = 0u;
      v31 = fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v42);
      (*(**(a1 + 16) + 112))(*(a1 + 16), a1 + 72, &v47, 0, v31);
      kaldi::nnet1::MovingAttentionComponent::ComputeAlignments(a1, a1 + 72, &v47, v32, v33);
      v47 = off_276F40;
      memset(v48, 0, sizeof(v48));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v47);
      v49 = off_276F40;
      memset(v50, 0, sizeof(v50));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v49);
      v13 = 0uLL;
      v14 = v41 + 1;
    }

    while (v41 + 1 != v38);
  }

  if (*(a1 + 418))
  {
    v34 = kaldi::CuSubMatrix<float>::CuSubMatrix(&v49, a3, 0, *(a3 + 20), *(*(a1 + 16) + 12), *(a1 + *(*a1 - 24) + 8));
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(v34, v40, 111, v35, v36);
    v49 = off_276F40;
    memset(v50, 0, sizeof(v50));
    *&v13 = fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v49).n128_u64[0];
  }

  return *&v13;
}

void sub_1780EC(_Unwind_Exception *a1)
{
  *(v2 - 128) = off_276F40;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v2 - 128);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::MovingAttentionComponent::ComputeAlignments(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a2 + 20);
  v6 = *(a1 + 272) - *(a1 + 264);
  if (0xAAAAAAAAAAAAAAABLL * (v6 >> 3) != v5)
  {
    kaldi::KaldiAssertFailure_("ComputeAlignments", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_158.segname[15], "alignments_.size() == num_seq", a5);
  }

  if (*(a1 + 296) - *(a1 + 288) != v6)
  {
    kaldi::KaldiAssertFailure_("ComputeAlignments", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_158.addr, "current_focal_points_.size() == num_seq", a5);
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    v11 = *v8;
    v12 = **v8;
    if (v13)
    {
      v15 = v13[13];
      if (!v15)
      {
        kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved3 + 3, "linearity_", v14);
      }

LABEL_9:
      kaldi::CuMatrix<float>::Resize(a1 + 216, (v5 + v5 * *(a1 + 12)), v8[3], 1u, 0);
      v19 = *(a1 + 12);
      if (v19 >= 1)
      {
        v20 = 0;
        v21 = 0;
        do
        {
          v22 = (*(a1 + 8) * v21);
          kaldi::CuSubMatrix<float>::CuSubMatrix(&__p, a1 + 216, v20, v5, 0, *(a1 + 232));
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v55, a2, 0, *(a2 + 20), v22, *(a1 + 8));
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v52, v15, 0, *(v15 + 20), v22, *(a1 + 8));
          kaldi::CuMatrixBase<float>::AddMatMat(&__p, &v55, CblasNoTrans, &v52, &stru_68.sectname[8], 1.0, 0.0);
          v52 = off_276F40;
          v53 = 0u;
          v54 = 0u;
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v52);
          v55 = off_276F40;
          v56 = 0u;
          v57 = 0u;
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v55);
          __p.__begin_ = off_276F40;
          *&__p.__end_ = 0u;
          v59 = 0u;
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&__p);
          ++v21;
          v19 = *(a1 + 12);
          v20 += v5;
        }

        while (v21 < v19);
      }

      kaldi::CuMatrix<float>::Resize(a1 + 336, v5, v19, 1u, 0);
      if (v5 >= 1)
      {
        v26 = 0;
        do
        {
          kaldi::CuSubMatrix<float>::CuSubMatrix(&__p, a1 + 216, v26, *(a1 + 12) * v5, 0, *(a1 + 232));
          if (v5 != 1)
          {
            kaldi::CuMatrixBase<float>::SetStride(&__p, *(a1 + 240) * v5);
          }

          if (*(a1 + 356) <= v26)
          {
            kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v27);
          }

          v28 = *(a1 + 352);
          v29 = *(a1 + 368);
          *&v56 = *(a1 + 344) + 4 * (*(a1 + 360) * v26);
          v55 = &off_276FE0;
          *(&v56 + 1) = v28;
          *&v57 = v29;
          if (*(a3 + 20) <= v26)
          {
            kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.segname[11], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v27);
          }

          v30 = *(a3 + 16);
          v31 = *(a3 + 32);
          *&v53 = *(a3 + 8) + 4 * (*(a3 + 24) * v26);
          v52 = &off_276FE0;
          *(&v53 + 1) = v30;
          *&v54 = v31;
          kaldi::CuVectorBase<float>::AddMatVec(&v55, &__p, CblasNoTrans, &v52, v27, 1.0, 0.0);
          __p.__begin_ = off_276F40;
          *&__p.__end_ = 0u;
          v59 = 0u;
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&__p);
          ++v26;
        }

        while (v5 != v26);
      }

      kaldi::CuMatrixBase<float>::FindRowMaxId(a1 + 336, (a1 + 312), v23, v24, v25);
      memset(&__p, 0, sizeof(__p));
      kaldi::CuArray<int>::CopyToVec((a1 + 312), &__p);
      if (v5 >= 1)
      {
        v32 = 0;
        v33 = 4 * v5;
        v34 = 8;
        do
        {
          v35 = *(*(*(a1 + 288) + v34) - 4);
          v36 = (*(a1 + 264) + v34 - 8);
          LODWORD(v55) = __p.__begin_[v32 / 4] + v35 - *(a1 + 408);
          std::vector<int>::push_back[abi:ne200100](v36, &v55);
          if (*(a1 + 416) == 1)
          {
            v37 = *(*(*(a1 + 264) + v34) - 4);
            LODWORD(v55) = v37;
            v38 = *(a1 + 288);
            if (v37 == v35)
            {
              if (*(v38 + v34) - *(v38 + v34 - 8) < 5uLL)
              {
                v37 = v35;
              }

              else
              {
                v37 = v35;
                if (*(*(v38 + v34) - 8) == v35)
                {
                  v37 = v35 + 1;
                  LODWORD(v55) = v35 + 1;
                }
              }
            }

            v41 = (v38 + v34 - 8);
            v46 = (*(a1 + 384) + v32);
            if (*v46 >= v37)
            {
              v46 = &v55;
            }

            if (*v46 >= *(a1 + 408))
            {
              v45 = v46;
            }

            else
            {
              v45 = (a1 + 408);
            }
          }

          else
          {
            v39 = *(*(*(a1 + 264) + v34) - 4);
            LODWORD(v55) = v39;
            v40 = *(a1 + 288);
            v41 = (v40 + v34 - 8);
            if (v39 == v35)
            {
              v42 = *(v40 + v34);
              v43 = *v41;
              v44 = v42 - *v41;
              if (v44 >= 5 && *(v43 + v44 - 8) == v35)
              {
                LODWORD(v55) = --v35;
              }
            }

            else
            {
              v43 = *v41;
              v35 = v39;
            }

            if (*v43 >= v35)
            {
              v43 = &v55;
            }

            if (*v43 >= *(a1 + 408))
            {
              v45 = v43;
            }

            else
            {
              v45 = (a1 + 408);
            }
          }

          std::vector<int>::push_back[abi:ne200100](v41, v45);
          v32 += 4;
          v34 += 24;
        }

        while (v33 != v32);
      }

      if (__p.__begin_)
      {
        __p.__end_ = __p.__begin_;
        operator delete(__p.__begin_);
      }

      return;
    }

    v16 = *v11;
    if (v17)
    {
      v15 = v17[14];
      if (!v15)
      {
        kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", &stru_248.sectname[9], "linearity_", v18);
      }

      goto LABEL_9;
    }
  }

  if (v5 >= 1)
  {
    v47 = 0;
    v48 = 4 * v5;
    v49 = 8;
    do
    {
      LODWORD(__p.__begin_) = *(*(*(a1 + 288) + v49) - 4);
      std::vector<int>::push_back[abi:ne200100]((*(a1 + 264) + v49 - 8), &__p);
      v50 = (*(a1 + 288) + v49 - 8);
      if (*(a1 + 416) == 1)
      {
        LODWORD(v55) = LODWORD(__p.__begin_) + 1;
        if (*(*(a1 + 384) + v47) <= SLODWORD(__p.__begin_))
        {
          v51 = (*(a1 + 384) + v47);
        }

        else
        {
          v51 = &v55;
        }
      }

      else
      {
        LODWORD(v55) = LODWORD(__p.__begin_) - 1;
        if (SLODWORD(__p.__begin_) <= *(a1 + 408))
        {
          v51 = (a1 + 408);
        }

        else
        {
          v51 = &v55;
        }
      }

      std::vector<int>::push_back[abi:ne200100](v50, v51);
      v49 += 24;
      v47 += 4;
    }

    while (v48 != v47);
  }
}

void sub_1788D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double kaldi::nnet1::MovingAttentionComponent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  kaldi::nnet1::MovingAttentionComponent::Check(a1);
  v51 = a2;
  if (*(a2 + 16) != *(a1 + *(*a1 - 24) + 8))
  {
    kaldi::KaldiAssertFailure_("BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_1A8.addr + 3, "in.NumCols() == input_dim_", v9);
  }

  if (a6)
  {
    kaldi::KaldiAssertFailure_("BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_1A8.addr + 4, "batch_idx == 0", v9);
  }

  v10 = *(a1 + 44);
  v11 = *(a2 + 20);
  v12 = (v11 / v10);
  if (v12 * v10 != v11)
  {
    kaldi::KaldiAssertFailure_("BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_1A8.addr + 7, "num_seq * seq_size == in.NumRows()", v9);
  }

  v13 = *(a1 + 8);
  v14 = *(a1 + 12);
  v15 = *(a5 + 32);
  *(a1 + 152) = v15;
  *(a1 + 200) = v15;
  kaldi::CuMatrix<float>::Resize(a1 + 120, v10, *(a1 + 40), 0, 0);
  kaldi::CuMatrix<float>::Resize(a1 + 168, v10, *(*(a1 + 16) + 8), 0, 0);
  if (v12 >= 1)
  {
    v17 = 0;
    v53 = v13 * v14;
    v48 = v12;
    do
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v74, v51, v10 * v17, v10, 0, *(v51 + 16));
      v18 = *(a1 + 16);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v68, a3, v10 * v17, v10, 0, *(a3 + 16));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v71, &v68, 0, SHIDWORD(v69), 0, *(*(a1 + 16) + 12));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v62, a4, v10 * v17, v10, 0, *(a4 + 16));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v65, &v62, 0, SHIDWORD(v63), 0, *(*(a1 + 16) + 12));
      (*(*v18 + 128))(v18, &v74, &v71, &v65, a1 + 168, 0);
      v65 = off_276F40;
      v66 = 0u;
      v67 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v65);
      v62 = off_276F40;
      v63 = 0u;
      v64 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v62);
      v71 = off_276F40;
      v72 = 0u;
      v73 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v71);
      v68 = off_276F40;
      v69 = 0u;
      v70 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v68);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v71, a5, v10 * v17, v10, 0, *(a5 + 16));
      if (v10 >= 1 && (*(a1 + 419) & 1) != 0)
      {
        for (i = 0; i != v10; ++i)
        {
          v21 = (*(*(*(a1 + 288) + 24 * i) + 4 * v17) - *(a1 + 408)) * *(a1 + 8);
          if (v21 < 0)
          {
            kaldi::KaldiAssertFailure_("BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_1A8.flags + 1, "begin >= 0", v19);
          }

          if (*(a1 + 12) >= 1)
          {
            v22 = 0;
            do
            {
              if (i >= HIDWORD(v72))
              {
                kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v19);
              }

              *&v69 = v72 + 4 * v73 * i;
              v68 = &off_276FE0;
              *(&v69 + 1) = DWORD2(v72);
              *&v70 = *(&v73 + 1);
              if (i >= *(a1 + 44))
              {
                kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v19);
              }

              v23 = *(a1 + 40);
              v24 = *(a1 + 56);
              *&v63 = *(a1 + 32) + 4 * *(a1 + 48) * i;
              v62 = &off_276FE0;
              *(&v63 + 1) = v23;
              *&v64 = v24;
              kaldi::CuSubVector<float>::CuSubVector(&v65, &v62, v21 + *(a1 + 8) * v22, *(a1 + 8), v19);
              if (i >= *(a1 + 188))
              {
                kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v25);
              }

              v26 = *(a1 + 184);
              v27 = *(a1 + 200);
              v55 = *(a1 + 176) + 4 * *(a1 + 192) * i;
              v54 = &off_276FE0;
              v56 = v26;
              v57 = v27;
              kaldi::CuSubVector<float>::CuSubVector(&v58, &v54, *(a1 + 8) * v22, *(a1 + 8), v25);
              kaldi::CuVectorBase<float>::AddVecVec(&v68, &v65, &v58, v28, v29, 1.0, 1.0);
              ++v22;
            }

            while (v22 < *(a1 + 12));
          }
        }
      }

      if (*(a1 + 417) == 1)
      {
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v68, a1 + 168, 0, *(a1 + 188), v53, *(a1 + 8 + *(*a1 - 24)));
        kaldi::CuMatrixBase<float>::AddMat(&v71, &v68, 111, v30, v31, 1.0, 1.0);
        v68 = off_276F40;
        v69 = 0u;
        v70 = 0u;
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v68);
      }

      if (v10 >= 1)
      {
        for (j = 0; j != v10; ++j)
        {
          v33 = (*(*(*(a1 + 288) + 24 * j) + 4 * v17) - *(a1 + 408)) * *(a1 + 8);
          if (*(a1 + 419) == 1)
          {
            if (*(a1 + 12) >= 1)
            {
              v34 = 0;
              do
              {
                if (j >= *(a1 + 140))
                {
                  kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v19);
                }

                v35 = *(a1 + 136);
                v36 = *(a1 + 152);
                *&v66 = *(a1 + 128) + 4 * *(a1 + 144) * j;
                v65 = &off_276FE0;
                *(&v66 + 1) = v35;
                *&v67 = v36;
                kaldi::CuSubVector<float>::CuSubVector(&v68, &v65, v33 + *(a1 + 8) * v34, *(a1 + 8), v19);
                if (j >= HIDWORD(v75))
                {
                  kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v37);
                }

                *&v63 = v75 + 4 * v76 * j;
                v62 = &off_276FE0;
                *(&v63 + 1) = DWORD2(v75);
                *&v64 = *(&v76 + 1);
                if (j >= *(a1 + 188))
                {
                  kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v37);
                }

                v38 = *(a1 + 184);
                v39 = *(a1 + 200);
                v55 = *(a1 + 176) + 4 * *(a1 + 192) * j;
                v54 = &off_276FE0;
                v56 = v38;
                v57 = v39;
                kaldi::CuSubVector<float>::CuSubVector(&v58, &v54, *(a1 + 8) * v34, *(a1 + 8), v37);
                kaldi::CuVectorBase<float>::AddVecVec(&v68, &v62, &v58, v40, v41, 1.0, 1.0);
                ++v34;
              }

              while (v34 < *(a1 + 12));
            }
          }

          else
          {
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v68, a1 + 120, 0, *(a1 + 140), ((*(*(*(a1 + 288) + 24 * j) + 4 * v17) - *(a1 + 408)) * *(a1 + 8)), v53);
            if (j >= HIDWORD(v69))
            {
              kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v42);
            }

            *&v63 = v69 + 4 * v70 * j;
            v62 = &off_276FE0;
            *(&v63 + 1) = DWORD2(v69);
            *&v64 = *(&v70 + 1);
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v65, a1 + 168, 0, *(a1 + 188), 0, v53);
            if (j >= HIDWORD(v66))
            {
              kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v45);
            }

            v59 = v66 + 4 * v67 * j;
            v58 = &off_276FE0;
            v60 = DWORD2(v66);
            v61 = *(&v67 + 1);
            kaldi::CuVectorBase<float>::AddVec(&v62, &v58, v43, v44, v45, 1.0, 1.0);
            v58 = &off_276FE0;
            v59 = 0;
            LODWORD(v60) = 0;
            v61 = 0;
            v65 = off_276F40;
            v66 = 0u;
            v67 = 0u;
            fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v65);
            v62 = &off_276FE0;
            *&v63 = 0;
            DWORD2(v63) = 0;
            *&v64 = 0;
            v68 = off_276F40;
            v69 = 0u;
            v70 = 0u;
            fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v68);
          }
        }
      }

      v71 = off_276F40;
      v72 = 0u;
      v73 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v71);
      v74 = off_276F40;
      v75 = 0u;
      v76 = 0u;
      *&result = fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v74).n128_u64[0];
      ++v17;
    }

    while (v17 != v48);
  }

  if (*(a1 + 418))
  {
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v74, a4, 0, *(a4 + 20), *(*(a1 + 16) + 12), *(a1 + *(*a1 - 24) + 8));
    kaldi::CuMatrixBase<float>::AddMat(a5, &v74, 111, v46, v47, 1.0, 1.0);
    v74 = off_276F40;
    v75 = 0u;
    v76 = 0u;
    *&result = fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v74).n128_u64[0];
  }

  return result;
}

void sub_1794A8(_Unwind_Exception *a1)
{
  *(v2 - 128) = off_276F40;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v2 - 128);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::MovingAttentionComponent::AccumGradients(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  kaldi::nnet1::MovingAttentionComponent::Check(a1);
  v40 = a2;
  v10 = *a1;
  if (*(a2 + 16) != *(a1 + *(*a1 - 24) + 8))
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_1F8.addr, "input.NumCols() == input_dim_", v9);
  }

  if (a5)
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_1F8.addr + 1, "batch_idx == 0", v9);
  }

  v11 = *(a1 + 11);
  v12 = *(a2 + 20);
  v13 = (v12 / v11);
  if (v13 * v11 != v12)
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_1F8.addr + 4, "num_seq * seq_size == input.NumRows()", v9);
  }

  v14 = (*(a1 + 2) * *(a1 + 3));
  a1[13] = a4;
  if (*(a1 + 417) == 1)
  {
    v15 = *(a1 + *(v10 - 24) + 8);
  }

  else
  {
    v15 = 0;
  }

  kaldi::CuMatrix<float>::Resize((a1 + 9), v11, (v15 + v14), 1u, 0);
  v16 = (*(*a1[2] + 272))();
  v50 = off_282980;
  v17 = *(v16 + 23);
  *v51 = *(v16 + 8);
  *(&v51[3] + 3) = v17;
  v18 = v51[0];
  v51[0] = v51[0] / v13;
  (*(*a1[2] + 264))();
  v38 = v13;
  if (v13 >= 1)
  {
    v19 = 0;
    v37 = a4;
    do
    {
      memset(v49, 0, sizeof(v49));
      v48 = off_276F40;
      if (*(a1 + 417) == 1)
      {
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v46, (a1 + 9), 0, *(a1 + 23), v14, *(a1 + *(*a1 - 24) + 8));
        v49[0] = v47[0];
        *&v49[1] = *&v47[1];
        v49[3] = v47[3];
        v46 = off_276F40;
        memset(v47, 0, sizeof(v47));
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v46);
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v46, v40, v11 * v19, v11, 0, *(v40 + 16));
        kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v48, &v46, 111, v20, v21);
      }

      else
      {
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v46, v40, v11 * v19, v11, 0, *(v40 + 16));
        v49[0] = v47[0];
        *&v49[1] = *&v47[1];
        v49[3] = v47[3];
      }

      v46 = off_276F40;
      memset(v47, 0, sizeof(v47));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v46);
      if (v11 >= 1)
      {
        for (i = 0; i != v11; ++i)
        {
          v24 = *(*(a1[36] + 24 * i) + 4 * v19) - *(a1 + 102);
          if (v24 < 0)
          {
            kaldi::KaldiAssertFailure_("AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_1F8.reloff + 1, "begin >= 0", v22);
          }

          kaldi::CuSubMatrix<float>::CuSubMatrix(&v46, (a1 + 9), 0, *(a1 + 23), 0, v14);
          if (i >= HIDWORD(v47[1]))
          {
            kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v25);
          }

          *&v42 = v47[0] + 4 * LODWORD(v47[2]) * i;
          v41 = &off_276FE0;
          *(&v42 + 1) = LODWORD(v47[1]);
          *&v43 = v47[3];
          if (i >= *(a1 + 11))
          {
            kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v25);
          }

          v26 = *(a1 + 10);
          v27 = a1[7];
          v44[1] = a1[4] + 4 * *(a1 + 12) * i;
          v44[0] = &off_276FE0;
          v44[2] = v26;
          v44[3] = v27;
          kaldi::CuSubVector<float>::CuSubVector(v45, v44, *(a1 + 2) * v24, v14, v25);
          kaldi::CuVectorBase<float>::CopyFromVec(&v41, v45, v28, v29, v30);
          v41 = &off_276FE0;
          *&v42 = 0;
          DWORD2(v42) = 0;
          *&v43 = 0;
          v46 = off_276F40;
          memset(v47, 0, sizeof(v47));
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v46);
        }
      }

      if (*(a1 + 419) == 1 && *(a1 + 3) >= 1)
      {
        v31 = 0;
        do
        {
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v46, (a1 + 9), 0, *(a1 + 23), (*(a1 + 2) * v31), *(a1 + 2));
          kaldi::CuMatrixBase<float>::MulElements(&v46, &v48, v32, v33, v34);
          v46 = off_276F40;
          memset(v47, 0, sizeof(v47));
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v46);
          ++v31;
        }

        while (v31 < *(a1 + 3));
      }

      v35 = a1[2];
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v41, a3, v11 * v19, v11, 0, *(a3 + 16));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v46, &v41, 0, SHIDWORD(v42), 0, *(a1[2] + 12));
      (*(*v35 + 232))(v35, a1 + 9, &v46, v37, 0);
      v46 = off_276F40;
      memset(v47, 0, sizeof(v47));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v46);
      v41 = off_276F40;
      v42 = 0u;
      v43 = 0u;
      v36 = fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v41);
      (*(*a1[2] + 256))(v36);
      v48 = off_276F40;
      memset(v49, 0, sizeof(v49));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v48);
      ++v19;
    }

    while (v19 != v38);
  }

  v51[0] = v18;
  (*(*a1[2] + 264))(a1[2], &v50);
  kaldi::nnet1::NnetTrainOptions::~NnetTrainOptions(&v50);
}

uint64_t *kaldi::nnet1::Nnet::QuantizeComponents<kaldi::nnet1::Quantizable8BitComponentItf>(char ****this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  for (i = *this; i != this[1]; ++i)
  {
    v7 = *i;
    if (*i)
    {
      v8 = **v7;
      if (v9)
      {
        v10 = v9;
        v11 = kaldi::nnet1::Quantizable8BitComponentItf::CopyQuantized(v9);
        if (v11)
        {
          v12 = v11;
          v13 = **v10;
          kaldi::nnet1::Component::Delete(v14, (&dword_0 + 1));
          *i = v12;
        }
      }
    }
  }

  return kaldi::nnet1::Nnet::CheckDimensions(this, a2, a3, a4, a5);
}

uint64_t *kaldi::nnet1::Nnet::CheckDimensions(uint64_t *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *this;
  v5 = this[1];
  if ((v5 - *this) >= 9)
  {
    v7 = this;
    v8 = 0;
    while (1)
    {
      this = *(v6 + 8 * v8);
      if (!this)
      {
        kaldi::KaldiAssertFailure_("CheckDimensions", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_568.segname[2], "components_[i] != NULL", a5);
      }

      if (*(this + 3) != *(*(v6 + 8 * v8 + 8) + 8))
      {
        break;
      }

      if (v8)
      {
        this = (*(*this + 24))(this);
        switch(this)
        {
          case 0x10C:
            kaldi::KaldiErrorMessage::KaldiErrorMessage(v27, "CheckDimensions", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 1414);
            std::operator<<[abi:ne200100]<std::char_traits<char>>(v27, "The word vec component can only be the first component");
            goto LABEL_33;
          case 0x10E:
            kaldi::KaldiErrorMessage::KaldiErrorMessage(v27, "CheckDimensions", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 1416);
            std::operator<<[abi:ne200100]<std::char_traits<char>>(v27, "The word multivec component can only be the first component");
            goto LABEL_33;
          case 0x10F:
            kaldi::KaldiErrorMessage::KaldiErrorMessage(v27, "CheckDimensions", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 1418);
            std::operator<<[abi:ne200100]<std::char_traits<char>>(v27, "The compressed word vec component can only be the first component");
            goto LABEL_33;
        }

        v6 = *v7;
        v5 = v7[1];
      }

      v9 = v8 + 2;
      ++v8;
      if (v9 >= (v5 - v6) >> 3)
      {
        if (((v5 - v6) >> 3) <= 1)
        {
          return this;
        }

        this = (*(**(v5 - 8) + 24))(*(v5 - 8));
        switch(this)
        {
          case 0x10F:
            kaldi::KaldiErrorMessage::KaldiErrorMessage(v27, "CheckDimensions", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 1429);
            std::operator<<[abi:ne200100]<std::char_traits<char>>(v27, "The compressed word vec component can only be the first component");
            break;
          case 0x10E:
            kaldi::KaldiErrorMessage::KaldiErrorMessage(v27, "CheckDimensions", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 1427);
            std::operator<<[abi:ne200100]<std::char_traits<char>>(v27, "The word multivec component can only be the first component");
            break;
          case 0x10C:
            kaldi::KaldiErrorMessage::KaldiErrorMessage(v27, "CheckDimensions", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 1425);
            std::operator<<[abi:ne200100]<std::char_traits<char>>(v27, "The word vec component can only be the first component");
            break;
          default:
            return this;
        }

LABEL_33:
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v27);
      }
    }

    v24 = v8;
    v22 = *(*(v6 + 8 * v8 + 8) + 8);
    v23 = *(this + 3);
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v27, "CheckDimensions", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 1406);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Dimension mismatch between output/input of components ", 54);
    v11 = (*(**(*v7 + 8 * v24) + 24))(*(*v7 + 8 * v24));
    kaldi::nnet1::Component::TypeToMarker(v11, &v26);
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v26;
    }

    else
    {
      v12 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v26.__r_.__value_.__l.__size_;
    }

    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, size);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " and ", 5);
    v16 = *(*v7 + 8 * v24 + 8);
    v17 = (*(*v16 + 24))(v16);
    kaldi::nnet1::Component::TypeToMarker(v17, &v25);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v25;
    }

    else
    {
      v18 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v19 = v25.__r_.__value_.__l.__size_;
    }

    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v18, v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ", ", 2);
    v21 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " <--> ", 6);
    std::ostream::operator<<();
    std::string::~string(&v25);
    std::string::~string(&v26);
    goto LABEL_33;
  }

  return this;
}

void sub_17A608(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  kaldi::KaldiErrorMessage::~KaldiErrorMessage(&a23);
}

uint64_t *kaldi::nnet1::Nnet::QuantizeComponents<kaldi::nnet1::Quantizable16BitComponentItf>(char ****this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  for (i = *this; i != this[1]; ++i)
  {
    v7 = *i;
    if (*i)
    {
      v8 = **v7;
      if (v9)
      {
        v10 = v9;
        v11 = kaldi::nnet1::Quantizable16BitComponentItf::CopyQuantized(v9);
        if (v11)
        {
          v12 = v11;
          v13 = **v10;
          kaldi::nnet1::Component::Delete(v14, (&dword_0 + 1));
          *i = v12;
        }
      }
    }
  }

  return kaldi::nnet1::Nnet::CheckDimensions(this, a2, a3, a4, a5);
}

double kaldi::nnet1::NnetCorrPacker::NnetCorrPacker(kaldi::nnet1::NnetCorrPacker *this)
{
  *this = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = -1082130432;
  return result;
}

uint64_t kaldi::nnet1::Nnet::GetComponent(kaldi::nnet1::Nnet *this, int a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a2 >= ((*(this + 1) - *this) >> 3))
  {
    kaldi::KaldiAssertFailure_("GetComponent", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_338.reserved3, "static_cast<size_t>(component) < components_.size()", a5);
  }

  return *(*this + 8 * a2);
}

{
  if (a2 >= ((*(this + 1) - *this) >> 3))
  {
    kaldi::KaldiAssertFailure_("GetComponent", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_338.reserved1 + 3, "static_cast<size_t>(component) < components_.size()", a5);
  }

  return *(*this + 8 * a2);
}

void kaldi::nnet1::Nnet::Nnet(kaldi::nnet1::Nnet *this, const kaldi::nnet1::Nnet *a2)
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

void sub_17AA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 120);
  std::vector<std::vector<kaldi::CuMatrix<float>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = (v10 + 72);
  std::vector<std::vector<kaldi::CuMatrix<float>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v12 = *(v10 + 48);
  if (v12)
  {
    *(v10 + 56) = v12;
    operator delete(v12);
  }

  v13 = *(v10 + 24);
  if (v13)
  {
    *(v10 + 32) = v13;
    operator delete(v13);
  }

  v14 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::Nnet::SetTrainOptions(kaldi::nnet1::Nnet *this, char **lpsrc, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = a3;
  if (((*(this + 1) - *this) >> 3) >= 1)
  {
    v8 = 0;
    do
    {
      Component = kaldi::nnet1::Nnet::GetComponent(this, v8, a3, a4, a5);
      if ((*(*Component + 32))(Component))
      {
        v10 = kaldi::nnet1::Nnet::GetComponent(this, v8, a3, a4, a5);
        (*(*v10 + 264))(v10, lpsrc);
      }

      ++v8;
    }

    while (v8 < ((*(this + 1) - *this) >> 3));
  }

  v11 = **lpsrc;
  v17 = *(this + 18);
  if (v16)
  {
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    operator new();
  }

  v18 = *(lpsrc + 1);
  *(v17 + 23) = *(lpsrc + 23);
  *(v17 + 8) = v18;
  if (v5 && kaldi::g_kaldi_verbose_level >= 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v20, "SetTrainOptions", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 1536, 2);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "a regular trainer option. ", 26);
    kaldi::nnet1::operator<<(v19, *(this + 18));
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v20);
  }

  if (v5)
  {
    kaldi::nnet1::Nnet::ResetInternalBuffers(this, v12, v13, v14, v15);
    kaldi::nnet1::Nnet::ResetRecurrentFlag(this);
  }
}

void sub_17AE08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Nnet::ResetBuffersAndStates(kaldi::nnet1::Nnet *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  kaldi::nnet1::Nnet::ResetInternalBuffers(this, a2, a3, a4, a5);

  kaldi::nnet1::Nnet::ResetRecurrentFlag(this);
}

void kaldi::nnet1::Nnet::Read(kaldi::nnet1::Nnet *a1, uint64_t a2)
{
  v14 = 0;
  v4 = kaldi::Input::Input(v13, a2, &v14);
  v5 = kaldi::Input::Stream(v4);
  kaldi::nnet1::Nnet::Read(a1, v5, v14);
  kaldi::Input::Close(v13);
  if (((*(a1 + 1) - *a1) & 0x7FFFFFFF8) == 0 && kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 1241);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "The network '", 13);
    v8 = *(a2 + 23);
    if (v8 >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    if (v8 >= 0)
    {
      v10 = *(a2 + 23);
    }

    else
    {
      v10 = *(a2 + 8);
    }

    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "' is empty.", 11);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v12);
  }

  kaldi::Input::~Input(v13);
}

char **kaldi::nnet1::Nnet::SetGradientNormalization(char **result, uint64_t a2, int a3, int a4, float a5)
{
  v7 = result;
  if (a3)
  {
    v8 = result[3];
    if (v8 != result[4])
    {
      do
      {
        v9 = *v8;
        v10 = **v8;
        v11 = *v10;
        if (v12)
        {
          result = kaldi::nnet1::ParallelComponent::SetGradientNormalization(v12, a2, 1, a5);
        }

        else
        {
          result = (*(*&v9[*(v10 - 3)] + 240))(&v9[*(v10 - 3)], a2, a5);
        }

        ++v8;
      }

      while (v8 != v7[4]);
    }
  }

  else
  {
    if (a4)
    {
      v13 = -2;
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 + ((result[1] - *result) >> 3);
    if (v14 >= 0)
    {
      v15 = 0;
      v16 = (v14 + 1);
      do
      {
        result = *&(*v7)[8 * v15];
        if (result)
        {
          v17 = **result;
          if (result)
          {
            result = (*(*result + 30))(result, a2, a5);
          }
        }

        ++v15;
      }

      while (v16 != v15);
    }
  }

  return result;
}

uint64_t kaldi::nnet1::Nnet::Destroy(kaldi::nnet1::Nnet *this)
{
  v2 = *this;
  if (((*(this + 1) - *this) >> 3) >= 1)
  {
    v3 = 0;
    do
    {
      kaldi::nnet1::Component::Delete(*(v2 + 8 * v3++), (&dword_0 + 1));
      v2 = *this;
    }

    while (v3 < ((*(this + 1) - *this) >> 3));
  }

  v4 = *(this + 44);
  for (i = *(this + 45); v4 != i; ++v4)
  {
    if (*v4)
    {
      kaldi::CuWorkspace::~CuWorkspace(*v4);
      operator delete();
    }
  }

  std::vector<fst::QueueBase<int> *,std::allocator<fst::QueueBase<int> *>>::resize(this, 0);
  std::vector<std::vector<kaldi::CuMatrix<float>>>::resize(this + 72, 0);
  std::vector<std::vector<kaldi::CuMatrix<float>>>::resize(this + 120, 0);
  std::vector<fst::QueueBase<int> *,std::allocator<fst::QueueBase<int> *>>::resize(this + 44, 0);
  result = *(this + 20);
  if (result)
  {
    result = (*(*result + 8))(result);
    *(this + 20) = 0;
  }

  return result;
}

void kaldi::nnet1::Nnet::~Nnet(kaldi::nnet1::Nnet *this)
{
  kaldi::nnet1::Nnet::Destroy(this);
  v2 = *(this + 18);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 44);
  if (v3)
  {
    *(this + 45) = v3;
    operator delete(v3);
  }

  v4 = *(this + 40);
  if (v4)
  {
    free(v4);
  }

  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 41) = 0;
  v5 = *(this + 35);
  if (v5)
  {
    *(this + 36) = v5;
    operator delete(v5);
  }

  v10 = (this + 256);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v10);
  kaldi::CuVector<float>::~CuVector(this + 28);
  kaldi::CuVector<float>::~CuVector(this + 24);
  v6 = *(this + 21);
  if (v6)
  {
    operator delete(v6);
  }

  v10 = (this + 120);
  std::vector<std::vector<kaldi::CuMatrix<float>>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v10 = (this + 96);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v10 = (this + 72);
  std::vector<std::vector<kaldi::CuMatrix<float>>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v7 = *(this + 6);
  if (v7)
  {
    *(this + 7) = v7;
    operator delete(v7);
  }

  v8 = *(this + 3);
  if (v8)
  {
    *(this + 4) = v8;
    operator delete(v8);
  }

  v9 = *this;
  if (*this)
  {
    *(this + 1) = v9;
    operator delete(v9);
  }
}

void *kaldi::nnet1::Nnet::ResetHistoryStateIfExists(void *result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if ((a4 & 0x80000000) != 0 || (v6 = result, *(result[18] + 32) <= a4))
  {
    kaldi::KaldiAssertFailure_("ResetHistoryStateIfExists", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_158.flags + 3, "batch_idx >= 0 && batch_idx < opts_->num_subbatches", a5);
  }

  v7 = result[6];
  if (v7 != result[7])
  {
    do
    {
      v10 = *v7++;
      result = (*(*v10 + 24))(v10, a2, a3, a4);
    }

    while (v7 != v6[7]);
  }

  return result;
}

uint64_t kaldi::nnet1::Nnet::ResetHistoryStateIfExists(uint64_t this)
{
  v1 = *(this + 48);
  if (v1 != *(this + 56))
  {
    v2 = this;
    do
    {
      v3 = *v1++;
      this = (*(*v3 + 32))(v3);
    }

    while (v1 != *(v2 + 56));
  }

  return this;
}

uint64_t kaldi::nnet1::Nnet::HistoryStateSize(kaldi::nnet1::Nnet *this)
{
  v1 = *(this + 6);
  if (v1 == *(this + 7))
  {
    return 0;
  }

  LODWORD(v3) = 0;
  do
  {
    v4 = *v1++;
    v3 = (*(*v4 + 16))(v4) + v3;
  }

  while (v1 != *(this + 7));
  return v3;
}

uint64_t kaldi::nnet1::Nnet::GetHistoryState(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 48);
  v4 = *(result + 56);
  v5 = *(result + 48);
  if (v5 != v4)
  {
    if (v4 - v5 == 8)
    {
      v8 = *(**v5 + 40);

      return v8();
    }

    else
    {
      v9 = result;
      v10 = *(result + 144);
      v11 = **v10;
      LODWORD(v12) = 0;
      do
      {
        v14 = *v5++;
        v12 = (*(*v14 + 16))(v14) + v12;
      }

      while (v5 != *(v9 + 56));
      kaldi::CuMatrix<float>::Resize(a2, v13, v12, 1u, 0);
      v26 = 0u;
      v25 = 0u;
      v24 = off_276F88;
      v27 = 0;
      v16 = *(v9 + 48);
      if (v16 == *(v9 + 56))
      {
        LODWORD(v17) = 0;
      }

      else
      {
        v17 = 0;
        do
        {
          (*(**v16 + 40))(*v16, &v24, a3);
          if (HIDWORD(v25) != v13)
          {
            kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_1A8.segname[13], "comp_history.NumRows() == num_seq", v18);
          }

          kaldi::CuSubMatrix<float>::CuSubMatrix(&v21, a2, 0, *(a2 + 20), v17, SDWORD2(v25));
          kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v21, &v24, 111, v19, v20);
          v21 = off_276F40;
          v22 = 0u;
          v23 = 0u;
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v21);
          v17 = (DWORD2(v25) + v17);
          ++v16;
        }

        while (v16 != *(v9 + 56));
      }

      if (v17 != v12)
      {
        kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_1A8.addr + 1, "count == history_size", v15);
      }

      return kaldi::CuMatrix<float>::~CuMatrix(&v24);
    }
  }

  return result;
}

void sub_17B7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

void *kaldi::nnet1::Nnet::GetHistoryState(void *result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = result[6];
  v5 = result[7];
  v7 = v5 - v6;
  if (v7)
  {
    if (v7 == 1)
    {
      v11 = *(**v6 + 48);

      return v11();
    }

    else
    {
      v12 = result;
      if (v6 == v5)
      {
        v13 = 0;
      }

      else
      {
        LODWORD(v13) = 0;
        do
        {
          v14 = *v6++;
          v13 = (*(*v14 + 16))(v14) + v13;
        }

        while (v6 != v12[7]);
      }

      kaldi::CuVector<float>::Resize(a2, v13, 1u, a4, a5);
      v23[1] = 0;
      v24 = 0;
      v25 = 0;
      v23[0] = off_277020;
      v16 = v12[6];
      if (v16 == v12[7])
      {
        v17 = 0;
      }

      else
      {
        v17 = 0;
        do
        {
          (*(**v16 + 48))(*v16, v23, a3, a4);
          kaldi::CuSubVector<float>::CuSubVector(v22, a2, v17, v24, v18);
          kaldi::CuVectorBase<float>::CopyFromVec(v22, v23, v19, v20, v21);
          v17 += v24;
          ++v16;
        }

        while (v16 != v12[7]);
      }

      if (v17 != v13)
      {
        kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_1A8.align + 2, "count == history_size", v15);
      }

      return kaldi::CuVector<float>::~CuVector(v23);
    }
  }

  return result;
}

void sub_17BA04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuVector<float>::~CuVector(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::Nnet::SetHistoryState(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(result + 48);
  v5 = *(result + 56);
  v7 = v5 - v6;
  if (v7)
  {
    if (v7 == 1)
    {
      v10 = *(**v6 + 56);

      return v10();
    }

    else
    {
      v11 = result;
      if (v6 == v5)
      {
        v12 = 0;
      }

      else
      {
        v12 = 0;
        do
        {
          v13 = *v6++;
          result = (*(*v13 + 16))(v13);
          v12 += result;
          v5 = *(v11 + 56);
        }

        while (v6 != v5);
      }

      if (*(a2 + 16) != v12)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(&v20, "SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 490);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "the network has history size ", 29);
        v18 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " , but the input history data has dimension ", 44);
        v19 = *(a2 + 16);
        std::ostream::operator<<();
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v20);
      }

      v14 = *(v11 + 48);
      if (v14 == v5)
      {
        LODWORD(v15) = 0;
      }

      else
      {
        v15 = 0;
        do
        {
          v16 = (*(**v14 + 16))();
          v17 = *v14;
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v20, a2, 0, *(a2 + 20), v15, v16);
          (*(*v17 + 56))(v17, &v20, a3);
          v20 = off_276F40;
          v21 = 0u;
          v22 = 0u;
          result = fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v20);
          v15 = (v16 + v15);
          ++v14;
        }

        while (v14 != *(v11 + 56));
      }

      if (v15 != v12)
      {
        kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_1A8.reserved3 + 2, "count == history_size", a5);
      }
    }
  }

  return result;
}

{
  v6 = *(result + 48);
  v5 = *(result + 56);
  v7 = v5 - v6;
  if (v7)
  {
    if (v7 == 1)
    {
      v11 = *(**v6 + 64);

      return v11();
    }

    else
    {
      v12 = result;
      if (v6 == v5)
      {
        v13 = 0;
      }

      else
      {
        v13 = 0;
        do
        {
          v14 = *v6++;
          result = (*(*v14 + 16))(v14);
          v13 += result;
          v5 = *(v12 + 56);
        }

        while (v6 != v5);
      }

      if (*(a2 + 16) != v13)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v22, "SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 514);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "the network has history size ", 29);
        v20 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " , but the input history data has dimension ", 44);
        v21 = *(a2 + 16);
        std::ostream::operator<<();
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v22);
      }

      v15 = *(v12 + 48);
      if (v15 == v5)
      {
        v16 = 0;
      }

      else
      {
        v16 = 0;
        do
        {
          v17 = (*(**v15 + 16))();
          v18 = *v15++;
          kaldi::CuSubVector<float>::CuSubVector(v22, a2, v16, v17, v19);
          result = (*(*v18 + 64))(v18, v22, a3, a4);
          v16 += v17;
        }

        while (v15 != *(v12 + 56));
      }

      if (v16 != v13)
      {
        kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_1F8.segname[6], "count == history_size", a5);
      }
    }
  }

  return result;
}

void sub_17BCAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (**a9)())
{
  a9 = off_276F40;
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a9);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::Nnet::SetInternalBoundary(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 24);
  if (v3 != *(result + 32))
  {
    v6 = result;
    do
    {
      v7 = *v3++;
      result = (*(*v7 + 96))(v7, a2, a3);
    }

    while (v3 != *(v6 + 32));
  }

  return result;
}