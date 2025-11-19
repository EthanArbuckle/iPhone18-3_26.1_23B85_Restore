unsigned int *kaldi::nnet1::SelfAttention::SetHistoryState(uint64_t *a1, uint64_t a2, int a3)
{
  (*(*a1 + 160))(a1);
  if (a3)
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", &stru_248.segname[1], "batch_idx == 0", v6);
  }

  kaldi::CuMatrix<float>::Resize(a1[2], *(a2 + 20), *(a2 + 16), 0, 0);
  v9 = a1[2];

  return kaldi::CuMatrixBase<float>::CopyFromMat<float>(v9, a2, 111, v7, v8);
}

void kaldi::nnet1::SelfAttention::SetHistoryState(uint64_t *a1, uint64_t a2, unsigned int a3, int a4)
{
  (*(*a1 + 160))(a1);
  if (a4)
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", &stru_248.segname[8], "batch_idx == 0", v8);
  }

  if ((a3 & 0x80000000) != 0 || *(a1 + 12) <= a3)
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", &stru_248.segname[9], "sequence_idx >= 0 && sequence_idx < hopts_.num_sequences", v8);
  }

  v9 = *(a2 + 16);
  if (v9 % (*(*a1 + 88))(a1))
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", &stru_248.segname[10], "history.Dim() % HistoryStateSize() == 0", v10);
  }

  v11 = *(a2 + 16);
  v12 = a1[2];
  if (v11 < 1)
  {

    kaldi::CuMatrix<float>::Resize(v12, 0, 0, 0, 0);
  }

  else
  {
    kaldi::CuMatrix<float>::Resize(v12, *(a1 + 12), v11, 2u, 0);
    v16 = a1[2];
    if (*(v16 + 20) <= a3)
    {
      kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v15);
    }

    v17 = *(v16 + 8) + 4 * (*(v16 + 24) * a3);
    v18 = *(v16 + 16);
    v19 = *(v16 + 32);
    v20[1] = v17;
    v20[0] = &off_276FE0;
    v20[2] = v18;
    v20[3] = v19;
    kaldi::CuVectorBase<float>::CopyFromVec(v20, a2, v13, v14, v15);
  }
}

void kaldi::nnet1::AverageAttention::AverageAttention(kaldi::nnet1::AverageAttention *this, const kaldi::nnet1::AverageAttention *a2)
{
  v2 = a2 + *(*a2 - 40);
  *(this + 9) = off_279038;
  *(this + 10) = *(v2 + 1);
  *(this + 44) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = 0;
  *this = off_27B348;
  *(this + 15) = off_27B370;
  v3 = a2 + *(*a2 - 40);
  v4 = *(v3 + 2);
  v5 = *(v3 + 3);
  v6 = kaldi::nnet1::AttentionBaseInferenceComponent::AttentionBaseInferenceComponent(this, off_27E650);
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = 0;
  v6[5] = off_2829A0;
  *(v6 + 12) = 1;
  v6[9] = off_27E560;
  v6[15] = off_27E630;
  *v6 = off_27E390;
  v6[1] = off_27E448;
  v6[7] = 0;
  v6[8] = 0;
  operator new();
}

uint64_t kaldi::nnet1::AverageAttention::PropagateFnc(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, const char *a5)
{
  v5 = *(a2 + 20);
  if (v5 != *(a1 + 48))
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", &stru_248.align + 2, "batch_size == num_utts", a5);
  }

  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v62, "PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 640, 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Running forward propagation for batch size = ", 45);
    v10 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", which contains ", 17);
    v11 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " frames each from ", 18);
    v12 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v62);
  }

  (*(*a1 + 160))(a1);
  v13 = *(a1 + 16) + 48 * a4;
  v14 = *(v13 + 20);
  if (!v14)
  {
    v15 = (*(*a1 + 88))(a1);
    kaldi::CuMatrix<float>::Resize(v13, v5, v15, 0, 0);
    v14 = *(v13 + 20);
  }

  kaldi::CuSubMatrix<float>::CuSubMatrix(&v59, v13, 0, v14, 0, 1);
  kaldi::CuMatrixBase<float>::Add(&v59, 1.0);
  if (!HIDWORD(v60) || !DWORD2(v60))
  {
    kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.size + 1, "static_cast<UnsignedMatrixIndexT>(r) < static_cast<UnsignedMatrixIndexT>(num_rows_) && static_cast<UnsignedMatrixIndexT>(c) < static_cast<UnsignedMatrixIndexT>(num_cols_)", v19);
  }

  v20 = *v60;
  v21 = kaldi::nnet1::Nnet::InputDim(*(a1 + 56), v16, v17, v18, v19);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v56, v13, 0, *(v13 + 20), &dword_0 + 1, v21);
  kaldi::CuMatrixBase<float>::AddMat(&v56, a2, 111, v22, v23, 1.0, 1.0);
  kaldi::CuMatrix<float>::CuMatrix(v62, &v56, 111);
  kaldi::CuMatrixBase<float>::Scale(v62, 1.0 / v20);
  v54 = 0u;
  v53 = 0u;
  v52 = off_276F88;
  v55 = 0;
  kaldi::nnet1::Nnet::Propagate<kaldi::CuMatrixBase<float>>(*(a1 + 56), v62, &v52, a4, v24);
  if (*(a1 + 64))
  {
    kaldi::CuMatrix<float>::CuMatrix(v50, *(a2 + 20), (v63 + *(a2 + 16)), 0, 0, 0);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v46, v50, 0, v51, 0, *(a2 + 16));
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v46, a2, 111, v27, v28);
    v46 = off_276F40;
    v47 = 0u;
    v48 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v46);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v46, v50, 0, v51, *(a2 + 16), v63);
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v46, &v52, 111, v29, v30);
    v46 = off_276F40;
    v47 = 0u;
    v48 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v46);
    v47 = 0u;
    v48 = 0u;
    v46 = off_276F88;
    v49 = 0;
    kaldi::nnet1::Nnet::Propagate<kaldi::CuMatrixBase<float>>(*(a1 + 64), v50, &v46, 0, v31);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v43, &v46, 0, SHIDWORD(v47), 0, *(a2 + 16));
    kaldi::CuMatrixBase<float>::MulElements(&v43, a2, v32, v33, v34);
    v43 = off_276F40;
    v44 = 0u;
    v45 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v43);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v43, &v46, 0, SHIDWORD(v47), *(a2 + 16), v63);
    kaldi::CuMatrixBase<float>::MulElements(&v43, &v52, v35, v36, v37);
    v43 = off_276F40;
    v44 = 0u;
    v45 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v43);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v43, &v46, 0, SHIDWORD(v47), 0, *(a2 + 16));
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, &v43, 111, v38, v39);
    v43 = off_276F40;
    v44 = 0u;
    v45 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v43);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v43, &v46, 0, SHIDWORD(v47), *(a2 + 16), v63);
    kaldi::CuMatrixBase<float>::AddMat(a3, &v43, 111, v40, v41, 1.0, 1.0);
    v43 = off_276F40;
    v44 = 0u;
    v45 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v43);
    kaldi::CuMatrix<float>::~CuMatrix(&v46);
    kaldi::CuMatrix<float>::~CuMatrix(v50);
  }

  else
  {
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, &v52, 111, v25, v26);
  }

  kaldi::CuMatrix<float>::~CuMatrix(&v52);
  kaldi::CuMatrix<float>::~CuMatrix(v62);
  v56 = off_276F40;
  v57 = 0u;
  v58 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v56);
  v59 = off_276F40;
  v60 = 0u;
  v61 = 0u;
  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v59);
}

void sub_1373D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (**a9)(), __int128 a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void (**a30)(), uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void (**a35)(), uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  a9 = off_276F40;
  a10 = 0u;
  a11 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a9);
  kaldi::CuMatrix<float>::~CuMatrix(&a12);
  kaldi::CuMatrix<float>::~CuMatrix(&a18);
  kaldi::CuMatrix<float>::~CuMatrix(&a24);
  kaldi::CuMatrix<float>::~CuMatrix(&a40);
  a30 = off_276F40;
  *(v40 + 56) = 0u;
  *(v40 + 72) = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a30);
  a35 = off_276F40;
  v40[6] = 0u;
  v40[7] = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a35);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::AverageAttention::Info(kaldi::nnet1::Nnet **this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v14);
  kaldi::WriteToken(&v14, 0, "<AverageFfn>", v2, v3);
  kaldi::nnet1::Nnet::Info(&__p, this[7]);
  if ((v13 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v13 & 0x80u) == 0)
  {
    v5 = v13;
  }

  else
  {
    v5 = v12;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, p_p, v5);
  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (this[8])
  {
    kaldi::WriteToken(&v14, 0, "<Gate>", v6, v7);
    kaldi::nnet1::Nnet::Info(&__p, this[8]);
    v8 = (v13 & 0x80u) == 0 ? &__p : __p;
    v9 = (v13 & 0x80u) == 0 ? v13 : v12;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, v8, v9);
    if (v13 < 0)
    {
      operator delete(__p);
    }
  }

  std::stringbuf::str();
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  std::locale::~locale(v16);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_13776C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::AverageAttention::ReadData(uint64_t a1, uint64_t *a2, char a3)
{
  if (kaldi::g_kaldi_verbose_level >= 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 714, 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Reading AverageAttention component", 34);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
  }

  v54 = 0;
  v55 = 0;
  v56 = 0;
  if (kaldi::Peek(a2, a3) != 60)
  {
    goto LABEL_41;
  }

  kaldi::ReadToken(a2, a3, &v54, v6, v7);
  if (SHIBYTE(v56) < 0)
  {
    if (v55 != 6)
    {
      if (v55 == 12 && *v54 == 0x656761726576413CLL && *(v54 + 2) == 1047422534)
      {
        goto LABEL_12;
      }

LABEL_29:
      if (v55 != 19)
      {
        goto LABEL_62;
      }

      v14 = v54;
      goto LABEL_33;
    }

    v10 = v54;
LABEL_22:
    v11 = *v10;
    v12 = v10[2];
    if (v11 == 1952532284 && v12 == 15973)
    {
      operator new();
    }

    if ((v56 & 0x8000000000000000) == 0)
    {
LABEL_62:
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 736);
      v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Unrecognized token ", 19);
      if (v56 >= 0)
      {
        v48 = &v54;
      }

      else
      {
        v48 = v54;
      }

      if (v56 >= 0)
      {
        v49 = HIBYTE(v56);
      }

      else
      {
        v49 = v55;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, v48, v49);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
    }

    goto LABEL_29;
  }

  if (HIBYTE(v56) == 6)
  {
    v10 = &v54;
    goto LABEL_22;
  }

  if (HIBYTE(v56) == 12)
  {
    if (v54 != 0x656761726576413CLL || v55 != 1047422534)
    {
      goto LABEL_62;
    }

LABEL_12:
    operator new();
  }

  if (HIBYTE(v56) != 19)
  {
    goto LABEL_62;
  }

  v14 = &v54;
LABEL_33:
  v15 = *v14;
  v16 = v14[1];
  v17 = *(v14 + 11);
  if (v15 != 0x6761726576412F3CLL || v16 != 0x69746E6574744165 || v17 != 0x3E6E6F69746E6574)
  {
    goto LABEL_62;
  }

LABEL_41:
  if (kaldi::g_kaldi_verbose_level >= 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 739, 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "done", 4);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
  }

  v20 = *(a1 + 56);
  if (!v20)
  {
    v50 = "average_ffn_";
    v51 = (&stru_298 + 77);
    goto LABEL_73;
  }

  kaldi::nnet1::Nnet::GetHistoricalComponents(v20, &__p);
  v25 = __p;
  if (__p != v58)
  {
    v26 = 1;
    if (!__p)
    {
      goto LABEL_52;
    }

LABEL_51:
    v58 = v25;
    operator delete(v25);
    goto LABEL_52;
  }

  if (*(a1 + 64))
  {
    kaldi::nnet1::Nnet::GetHistoricalComponents(*(a1 + 64), &v52);
    v26 = v52 != v53;
    if (v52)
    {
      v53 = v52;
      operator delete(v52);
    }

    v25 = __p;
    if (__p)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v26 = 0;
    if (__p)
    {
      goto LABEL_51;
    }
  }

LABEL_52:
  if (v26)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 743);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Recurrent neural networks are not supported inside the average attention component.", 83);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

  v27 = *(a1 + *(*a1 - 40) + 12);
  if (v27 != kaldi::nnet1::Nnet::OutputDim(*(a1 + 56), v21, v22, v23, v24))
  {
    v50 = "OutputDim() == average_ffn_->OutputDim()";
    v51 = &stru_2E8.sectname[2];
LABEL_73:
    kaldi::KaldiAssertFailure_("ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", v51, v50, v7);
  }

  v31 = *(a1 + 64);
  if (v31)
  {
    v32 = kaldi::nnet1::Nnet::InputDim(v31, v28, v29, v30, v7);
    v33 = *(a1 + *(*a1 - 40) + 8);
    if (v32 != kaldi::nnet1::Nnet::InputDim(*(a1 + 56), v34, v35, v36, v37) + v33 || (v41 = kaldi::nnet1::Nnet::OutputDim(*(a1 + 64), v38, v39, v40, v7), v42 = *(a1 + *(*a1 - 40) + 12), v41 != kaldi::nnet1::Nnet::OutputDim(*(a1 + 56), v43, v44, v45, v46) + v42))
    {
      v50 = "!gate_ || (gate_->InputDim() == InputDim() + average_ffn_->InputDim() && gate_->OutputDim() == OutputDim() + average_ffn_->OutputDim())";
      v51 = (&stru_2E8 + 4);
      goto LABEL_73;
    }
  }

  if (SHIBYTE(v56) < 0)
  {
    operator delete(v54);
  }
}

void sub_137F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::AverageAttention::WriteData(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  if (!*(a1 + 56))
  {
    kaldi::KaldiAssertFailure_("WriteData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", &stru_2E8.sectname[8], "average_ffn_", a5);
  }

  kaldi::WriteToken(a2, a3, "<AverageFfn>", a4, a5);
  kaldi::nnet1::Nnet::Write(*(a1 + 56), a2, a3, a4, v9);
  if (*(a1 + 64))
  {
    kaldi::WriteToken(a2, a3, "<Gate>", v10, v11);
    kaldi::nnet1::Nnet::Write(*(a1 + 64), a2, a3, a4, v12);
  }

  return kaldi::WriteToken(a2, a3, "</AverageAttention>", v10, v11);
}

uint64_t kaldi::nnet1::AverageAttention::ResetHistoryState(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  (*(*a1 + 160))(a1);
  if (a4)
  {
    kaldi::KaldiAssertFailure_("ResetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", &stru_2E8.segname[8], "batch_idx == 0", v8);
  }

  v9 = a2[1];
  if (v9 != *(a1 + 48))
  {
    kaldi::KaldiAssertFailure_("ResetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", &stru_2E8.segname[9], "sequence_idx.size() == hopts_.num_sequences", v8);
  }

  v10 = *(a1 + 16);
  *(v10 + 32) = a3;
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if (((*(*a2 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) >> i) & 1) == 0)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(&v13, "ResetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 774);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(&v13, "ResetHistoryState for AverageAttention makes only sense if all utterances get reset at the same time");
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v13);
      }
    }
  }

  v15 = 0u;
  v14 = 0u;
  v13 = off_276F88;
  v16 = 0;
  kaldi::CuMatrix<float>::operator=(v10, &v13);
  return kaldi::CuMatrix<float>::~CuMatrix(&v13);
}

uint64_t kaldi::nnet1::AverageAttention::ResetHistoryState(kaldi::nnet1::AverageAttention *this)
{
  v3 = *(this + 2);
  v2 = *(this + 3);
  if (v2 != v3)
  {
    v4 = v2 - 6;
    v5 = v2 - 6;
    v6 = v2 - 6;
    do
    {
      v7 = *v6;
      v6 -= 6;
      (*(v7 + 16))(v5);
      v4 -= 6;
      v8 = v5 == v3;
      v5 = v6;
    }

    while (!v8);
  }

  *(this + 3) = v3;
  v9 = *(*this + 160);

  return v9(this);
}

unsigned int *kaldi::nnet1::AverageAttention::GetHistoryState(uint64_t a1, unsigned int *a2, int a3, uint64_t a4, const char *a5)
{
  if (a3)
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", &stru_2E8.size + 3, "batch_idx == 0", a5);
  }

  kaldi::CuMatrix<float>::Resize(a2, *(*(a1 + 16) + 20), *(*(a1 + 16) + 16), 0, 0);
  v9 = *(a1 + 16);

  return kaldi::CuMatrixBase<float>::CopyFromMat<float>(a2, v9, 111, v7, v8);
}

void kaldi::nnet1::AverageAttention::GetHistoryState(uint64_t a1, _DWORD *a2, unsigned int a3, int a4, const char *a5)
{
  if (a4)
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", &stru_2E8.offset + 1, "batch_idx == 0", a5);
  }

  if ((a3 & 0x80000000) != 0 || *(a1 + 48) <= a3)
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", &stru_2E8.offset + 2, "sequence_idx >= 0 && sequence_idx < hopts_.num_sequences", a5);
  }

  v8 = (*(*a1 + 88))(a1);
  kaldi::CuVector<float>::Resize(a2, v8, 0, v9, v10);
  v14 = *(a1 + 16);
  v15 = *(v14 + 20);
  if (v15 >= 1)
  {
    if (v15 <= a3)
    {
      kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.segname[11], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v13);
    }

    v16 = *(v14 + 8) + 4 * (*(v14 + 24) * a3);
    v17 = *(v14 + 16);
    v18 = *(v14 + 32);
    v19[1] = v16;
    v19[0] = &off_276FE0;
    v19[2] = v17;
    v19[3] = v18;
    kaldi::CuVectorBase<float>::CopyFromVec(a2, v19, v11, v12, v13);
  }
}

unsigned int *kaldi::nnet1::AverageAttention::SetHistoryState(uint64_t *a1, uint64_t a2, int a3)
{
  (*(*a1 + 160))(a1);
  if (a3)
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", &stru_2E8.reloff + 3, "batch_idx == 0", v6);
  }

  kaldi::CuMatrix<float>::Resize(a1[2], *(a2 + 20), *(a2 + 16), 0, 0);
  v9 = a1[2];

  return kaldi::CuMatrixBase<float>::CopyFromMat<float>(v9, a2, 111, v7, v8);
}

void kaldi::nnet1::AverageAttention::SetHistoryState(uint64_t *a1, uint64_t a2, unsigned int a3, int a4)
{
  (*(*a1 + 160))(a1);
  if (a4)
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", &stru_2E8.flags + 2, "batch_idx == 0", v8);
  }

  if ((a3 & 0x80000000) != 0 || *(a1 + 12) <= a3)
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", &stru_2E8.flags + 3, "sequence_idx >= 0 && sequence_idx < hopts_.num_sequences", v8);
  }

  v9 = *(a2 + 16);
  if (v9 != (*(*a1 + 88))(a1))
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", &stru_2E8.reserved1, "history.Dim() == HistoryStateSize()", v10);
  }

  v11 = *(a2 + 16);
  v12 = a1[2];
  if (v11 < 1)
  {

    kaldi::CuMatrix<float>::Resize(v12, 0, 0, 0, 0);
  }

  else
  {
    kaldi::CuMatrix<float>::Resize(v12, *(a1 + 12), v11, 2u, 0);
    v16 = a1[2];
    if (*(v16 + 20) <= a3)
    {
      kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v15);
    }

    v17 = *(v16 + 8) + 4 * (*(v16 + 24) * a3);
    v18 = *(v16 + 16);
    v19 = *(v16 + 32);
    v20[1] = v17;
    v20[0] = &off_276FE0;
    v20[2] = v18;
    v20[3] = v19;
    kaldi::CuVectorBase<float>::CopyFromVec(v20, a2, v13, v14, v15);
  }
}

void kaldi::nnet1::ScaledDotAttention::~ScaledDotAttention(kaldi::nnet1::ScaledDotAttention *this)
{
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v2 + 192);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(this);
  kaldi::nnet1::Component::~Component((this + 144));
}

{
  kaldi::nnet1::ScaledDotAttention::~ScaledDotAttention(this);

  operator delete();
}

void virtual thunk tokaldi::nnet1::ScaledDotAttention::~ScaledDotAttention(kaldi::nnet1::ScaledDotAttention *this)
{
  kaldi::nnet1::ScaledDotAttention::~ScaledDotAttention((this + *(*this - 24)));
}

{
  kaldi::nnet1::ScaledDotAttention::~ScaledDotAttention((this + *(*this - 24)));

  operator delete();
}

void virtual thunk tokaldi::nnet1::ScaledDotAttention::~ScaledDotAttention(void *a1)
{
  kaldi::nnet1::ScaledDotAttention::~ScaledDotAttention((a1 + *(*a1 - 24)));
}

{
  kaldi::nnet1::ScaledDotAttention::~ScaledDotAttention((a1 + *(*a1 - 24)));

  operator delete();
}

void kaldi::nnet1::MultiHeadAttention::~MultiHeadAttention(kaldi::nnet1::MultiHeadAttention *this)
{
  kaldi::nnet1::ScaledDotAttention::~ScaledDotAttention(this, &off_27DD00);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v2 + 200);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(this);
  kaldi::nnet1::Component::~Component((this + 152));
}

{
  kaldi::nnet1::MultiHeadAttention::~MultiHeadAttention(this);

  operator delete();
}

void virtual thunk tokaldi::nnet1::MultiHeadAttention::~MultiHeadAttention(kaldi::nnet1::MultiHeadAttention *this)
{
  kaldi::nnet1::MultiHeadAttention::~MultiHeadAttention((this + *(*this - 24)));
}

{
  kaldi::nnet1::MultiHeadAttention::~MultiHeadAttention((this + *(*this - 24)));

  operator delete();
}

void virtual thunk tokaldi::nnet1::MultiHeadAttention::~MultiHeadAttention(void *a1)
{
  kaldi::nnet1::MultiHeadAttention::~MultiHeadAttention((a1 + *(*a1 - 24)));
}

{
  kaldi::nnet1::MultiHeadAttention::~MultiHeadAttention((a1 + *(*a1 - 24)));

  operator delete();
}

void kaldi::nnet1::SupervisedMultiHeadAttention::~SupervisedMultiHeadAttention(kaldi::nnet1::SupervisedMultiHeadAttention *this)
{
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v2 + 248);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(this);
  kaldi::nnet1::Component::~Component((this + 200));
}

{
  kaldi::nnet1::SupervisedMultiHeadAttention::~SupervisedMultiHeadAttention(this);

  operator delete();
}

void virtual thunk tokaldi::nnet1::SupervisedMultiHeadAttention::~SupervisedMultiHeadAttention(kaldi::nnet1::SupervisedMultiHeadAttention *this)
{
  kaldi::nnet1::SupervisedMultiHeadAttention::~SupervisedMultiHeadAttention((this + *(*this - 24)));
}

{
  kaldi::nnet1::SupervisedMultiHeadAttention::~SupervisedMultiHeadAttention((this + *(*this - 24)));

  operator delete();
}

void virtual thunk tokaldi::nnet1::SupervisedMultiHeadAttention::~SupervisedMultiHeadAttention(void *a1)
{
  kaldi::nnet1::SupervisedMultiHeadAttention::~SupervisedMultiHeadAttention((a1 + *(*a1 - 24)));
}

{
  kaldi::nnet1::SupervisedMultiHeadAttention::~SupervisedMultiHeadAttention((a1 + *(*a1 - 24)));

  operator delete();
}

void kaldi::nnet1::SelfAttention::~SelfAttention(kaldi::nnet1::SelfAttention *this)
{
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v2 + 128);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(this);
  kaldi::nnet1::Component::~Component((this + 80));
}

{
  kaldi::nnet1::SelfAttention::~SelfAttention(this);

  operator delete();
}

void non-virtual thunk tokaldi::nnet1::SelfAttention::~SelfAttention(kaldi::nnet1::SelfAttention *this)
{
  kaldi::nnet1::SelfAttention::~SelfAttention((this - 8));
}

{
  kaldi::nnet1::SelfAttention::~SelfAttention((this - 8));

  operator delete();
}

void virtual thunk tokaldi::nnet1::SelfAttention::~SelfAttention(kaldi::nnet1::SelfAttention *this)
{
  kaldi::nnet1::SelfAttention::~SelfAttention((this + *(*this - 24)));
}

{
  kaldi::nnet1::SelfAttention::~SelfAttention((this + *(*this - 24)));

  operator delete();
}

void virtual thunk tokaldi::nnet1::SelfAttention::~SelfAttention(void *a1)
{
  kaldi::nnet1::SelfAttention::~SelfAttention((a1 + *(*a1 - 24)));
}

{
  kaldi::nnet1::SelfAttention::~SelfAttention((a1 + *(*a1 - 24)));

  operator delete();
}

void kaldi::nnet1::AverageAttention::~AverageAttention(kaldi::nnet1::AverageAttention *this)
{
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v2 + 120);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(this);
  kaldi::nnet1::Component::~Component((this + 72));
}

{
  kaldi::nnet1::AverageAttention::~AverageAttention(this);

  operator delete();
}

void non-virtual thunk tokaldi::nnet1::AverageAttention::~AverageAttention(kaldi::nnet1::AverageAttention *this)
{
  kaldi::nnet1::AverageAttention::~AverageAttention((this - 8));
}

{
  kaldi::nnet1::AverageAttention::~AverageAttention((this - 8));

  operator delete();
}

void virtual thunk tokaldi::nnet1::AverageAttention::~AverageAttention(kaldi::nnet1::AverageAttention *this)
{
  kaldi::nnet1::AverageAttention::~AverageAttention((this + *(*this - 24)));
}

{
  kaldi::nnet1::AverageAttention::~AverageAttention((this + *(*this - 24)));

  operator delete();
}

void virtual thunk tokaldi::nnet1::AverageAttention::~AverageAttention(void *a1)
{
  kaldi::nnet1::AverageAttention::~AverageAttention((a1 + *(*a1 - 24)));
}

{
  kaldi::nnet1::AverageAttention::~AverageAttention((a1 + *(*a1 - 24)));

  operator delete();
}

double kaldi::nnet1::ScaledDotAttention::ScaledDotAttention(kaldi::nnet1::ScaledDotAttention *this, uint64_t *a2, int a3, BOOL a4, float a5, char a6)
{
  v9 = kaldi::nnet1::AttentionBaseInferenceComponent::AttentionBaseInferenceComponent(this, a2 + 1);
  v10 = *a2;
  *v9 = *a2;
  *(v9 + *(v10 - 40)) = a2[5];
  *(v9 + *(*v9 - 48)) = a2[6];
  *(v9 + *(*v9 - 56)) = a2[7];
  result = 0.0;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  v9[1] = off_276F88;
  *(v9 + 48) = 0;
  *(v9 + 4) = 0u;
  *(v9 + 5) = 0u;
  v9[7] = off_276F88;
  *(v9 + 96) = 0;
  *(v9 + 104) = a6;
  *(v9 + 27) = a5;
  *(v9 + 7) = 0u;
  *(v9 + 8) = 0u;
  return result;
}

void kaldi::nnet1::ScaledDotAttention::~ScaledDotAttention(kaldi::nnet1::ScaledDotAttention *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 40)) = a2[5];
  *(this + *(*this - 48)) = a2[6];
  *(this + *(*this - 56)) = a2[7];
  v4 = *(this + 17);
  *(this + 17) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 16);
  *(this + 16) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 15);
  *(this + 15) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 14);
  *(this + 14) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  kaldi::CuMatrix<float>::~CuMatrix(this + 56);
  kaldi::CuMatrix<float>::~CuMatrix(this + 8);

  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(this);
}

void kaldi::nnet1::MultiHeadAttention::MultiHeadAttention(kaldi::nnet1::MultiHeadAttention *this, uint64_t *a2, int a3, BOOL a4, float a5, int a6, int a7)
{
  kaldi::nnet1::ScaledDotAttention::ScaledDotAttention(this, a2 + 1, a3, a4, a5, a6 != 0);
  v9 = *a2;
  *v10 = *a2;
  *(v10 + *(v9 - 40)) = a2[9];
  *(v10 + *(*v10 - 48)) = a2[10];
  *(v10 + *(*v10 - 56)) = a2[11];
  *(v10 + 144) = a7;
}

void kaldi::nnet1::SupervisedMultiHeadAttention::~SupervisedMultiHeadAttention(kaldi::nnet1::SupervisedMultiHeadAttention *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 40)) = a2[13];
  *(this + *(*this - 48)) = a2[14];
  *(this + *(*this - 56)) = a2[15];
  kaldi::CuMatrix<float>::~CuMatrix(this + 152);

  kaldi::nnet1::ScaledDotAttention::~ScaledDotAttention(this, a2 + 2);
}

void kaldi::nnet1::SelfAttention::~SelfAttention(kaldi::nnet1::SelfAttention *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 40)) = a2[5];
  *(this + *(*this - 48)) = a2[6];
  *(this + *(*this - 56)) = a2[7];
  *(this + 1) = off_27E118;
  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 7);
  *(this + 7) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  kaldi::nnet1::HistoricalComponent::~HistoricalComponent((this + 8));

  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(this);
}

void kaldi::nnet1::AverageAttention::~AverageAttention(kaldi::nnet1::AverageAttention *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 40)) = a2[5];
  *(this + *(*this - 48)) = a2[6];
  *(this + *(*this - 56)) = a2[7];
  *(this + 1) = off_27E448;
  std::unique_ptr<kaldi::nnet1::Nnet>::reset[abi:ne200100](this + 8, 0);
  std::unique_ptr<kaldi::nnet1::Nnet>::reset[abi:ne200100](this + 7, 0);
  kaldi::nnet1::HistoricalComponent::~HistoricalComponent((this + 8));

  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(this);
}

kaldi::nnet1::RecurrentAttentionBaseComponent *kaldi::nnet1::RecurrentAttentionBaseComponent::RecurrentAttentionBaseComponent(kaldi::nnet1::RecurrentAttentionBaseComponent *this, uint64_t *a2)
{
  v4 = a2[1];
  *this = v4;
  *(this + *(v4 - 24)) = a2[2];
  *(this + 1) = -1;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent((this + 16), a2 + 3);
  v5 = *a2;
  *this = *a2;
  *(this + *(v5 - 24)) = a2[5];
  *(this + 2) = a2[6];
  return this;
}

void kaldi::nnet1::GlobalRecurrentAttention::GlobalRecurrentAttention(kaldi::nnet1::GlobalRecurrentAttention *this, int a2, int a3)
{
  *(this + 170) = a2;
  *(this + 171) = a3;
  *(this + 344) = 0;
  *(this + 87) = 0;
  *(this + 89) = 0;
  *(this + 88) = 0;
  *(this + 84) = off_27A660;
  *(this + 90) = off_282980;
  *(this + 728) = xmmword_21A620;
  *(this + 93) = 0x3BF800000;
  *(this + 188) = 1;
  *(this + 378) = 0;
  *(this + 758) = 0;
  kaldi::nnet1::RecurrentAttentionBaseComponent::RecurrentAttentionBaseComponent(this, off_27FC80);
  *this = off_27F870;
  *(this + 84) = off_27FB60;
  *(this + 2) = off_27F9B8;
  *(this + 22) = 0;
  *(this + 23) = 0;
  operator new();
}

kaldi::nnet1::GlobalRecurrentAttention *kaldi::nnet1::GlobalRecurrentAttention::GlobalRecurrentAttention(kaldi::nnet1::GlobalRecurrentAttention *this, const kaldi::nnet1::GlobalRecurrentAttention *a2)
{
  *(this + 85) = *(a2 + *(*a2 - 24) + 8);
  *(this + 344) = 0;
  *(this + 89) = 0;
  *(this + 88) = 0;
  *(this + 87) = 0;
  *(this + 84) = off_27A660;
  *(this + 90) = off_282980;
  *(this + 728) = xmmword_21A620;
  *(this + 186) = -1082130432;
  *(this + 748) = 0x100000003;
  *(this + 378) = 0;
  *(this + 758) = 0;
  v4 = a2 + *(*a2 - 24);
  v5 = *(v4 + 2);
  v6 = *(v4 + 3);
  kaldi::nnet1::RecurrentAttentionBaseComponent::RecurrentAttentionBaseComponent(this, off_27FC80);
  *this = off_27F870;
  *(this + 84) = off_27FB60;
  *(this + 2) = off_27F9B8;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 25) = off_276F88;
  *(this + 240) = 0;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 31) = off_276F88;
  *(this + 288) = 0;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 37) = off_276F88;
  *(this + 336) = 0;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 43) = off_276F88;
  *(this + 384) = 0;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 49) = off_276F88;
  *(this + 432) = 0;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 55) = off_276F88;
  *(this + 480) = 0;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 61) = off_276F88;
  *(this + 528) = 0;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  *(this + 67) = off_276F88;
  *(this + 576) = 0;
  *(this + 37) = 0u;
  *(this + 76) = 0;
  *(this + 73) = off_277020;
  *(this + 632) = 0u;
  *(this + 648) = 0u;
  *(this + 616) = 0u;
  *(this + 1) = *(a2 + 1);
  v8 = *(a2 + 22);
  if (!v8)
  {
    v13 = "src.src_dot_trans_";
    v14 = (&stru_20 + 20);
    goto LABEL_11;
  }

  if (!*(a2 + 23))
  {
    v13 = "src.tgt_dot_trans_";
    v14 = (&stru_20 + 21);
    goto LABEL_11;
  }

  if (!*(a2 + 24))
  {
    v13 = "src.recurrent_net_";
    v14 = &stru_20.segname[14];
LABEL_11:
    kaldi::KaldiAssertFailure_("GlobalRecurrentAttention", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", v14, v13, v7);
  }

  *(this + 22) = (*(*v8 + 16))(v8);
  *(this + 23) = (*(**(a2 + 23) + 16))(*(a2 + 23));
  kaldi::CuMatrix<float>::operator=(this + 200, a2 + 200);
  kaldi::CuMatrix<float>::operator=(this + 248, a2 + 248);
  kaldi::CuMatrix<float>::operator=(this + 296, a2 + 296);
  kaldi::CuMatrix<float>::operator=(this + 440, a2 + 440);
  kaldi::CuMatrix<float>::operator=(this + 488, a2 + 488);
  kaldi::CuMatrix<float>::operator=(this + 536, a2 + 536);
  kaldi::CuVector<float>::operator=(this + 584, a2 + 584, v9, v10, v11);
  if (this != a2)
  {
    std::vector<std::vector<int>>::__assign_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(this + 77, *(a2 + 77), *(a2 + 78), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 78) - *(a2 + 77)) >> 3));
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(this + 80, *(a2 + 80), *(a2 + 81), (*(a2 + 81) - *(a2 + 80)) >> 2);
  }

  *(this + 166) = *(a2 + 166);
  *(this + 668) = 0;
  if ((kaldi::nnet1::Nnet::IsRnn(*(this + 24)) & 1) == 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v15, "GlobalRecurrentAttention", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 69);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "it doesn't make sense to use a non-reccurent network here", 57);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
  }

  (*(*this + 296))(this);
  return this;
}

void sub_13A538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, kaldi::nnet1::UpdatableComponent *a12, void **a13, uint64_t a14)
{
  v23 = *a13;
  if (*a13)
  {
    *(v14 + 81) = v23;
    operator delete(v23);
  }

  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a14);
  kaldi::CuVector<float>::~CuVector(v18);
  kaldi::CuMatrix<float>::~CuMatrix(v21);
  kaldi::CuMatrix<float>::~CuMatrix(v20);
  kaldi::CuMatrix<float>::~CuMatrix(v19);
  kaldi::CuMatrix<float>::~CuMatrix(a10);
  kaldi::CuMatrix<float>::~CuMatrix(a11);
  kaldi::CuMatrix<float>::~CuMatrix(v17);
  kaldi::CuMatrix<float>::~CuMatrix(v16);
  kaldi::CuMatrix<float>::~CuMatrix(v15);
  kaldi::nnet1::RecurrentAttentionBaseComponent::~RecurrentAttentionBaseComponent(v14, off_27FC80);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a12);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::GlobalRecurrentAttention::~GlobalRecurrentAttention(kaldi::nnet1::GlobalRecurrentAttention *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[8];
  *(this + 2) = a2[9];
  v5 = *(this + 22);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 23);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 24);
  if (v7)
  {
    kaldi::nnet1::Nnet::~Nnet(v7);
    operator delete();
  }

  v8 = *(this + 80);
  if (v8)
  {
    *(this + 81) = v8;
    operator delete(v8);
  }

  v9 = (this + 616);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v9);
  kaldi::CuVector<float>::~CuVector(this + 73);
  kaldi::CuMatrix<float>::~CuMatrix(this + 536);
  kaldi::CuMatrix<float>::~CuMatrix(this + 488);
  kaldi::CuMatrix<float>::~CuMatrix(this + 440);
  kaldi::CuMatrix<float>::~CuMatrix(this + 392);
  kaldi::CuMatrix<float>::~CuMatrix(this + 344);
  kaldi::CuMatrix<float>::~CuMatrix(this + 296);
  kaldi::CuMatrix<float>::~CuMatrix(this + 248);
  kaldi::CuMatrix<float>::~CuMatrix(this + 200);
  kaldi::nnet1::RecurrentAttentionBaseComponent::~RecurrentAttentionBaseComponent(this, (a2 + 1));
}

void kaldi::nnet1::GlobalRecurrentAttention::~GlobalRecurrentAttention(kaldi::nnet1::GlobalRecurrentAttention *this)
{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 672));
}

{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 672));

  operator delete();
}

void non-virtual thunk tokaldi::nnet1::GlobalRecurrentAttention::~GlobalRecurrentAttention(kaldi::nnet1::GlobalRecurrentAttention *this)
{

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((this + 656));
}

{
  kaldi::nnet1::GlobalRecurrentAttention::~GlobalRecurrentAttention((this - 16));
}

void virtual thunk tokaldi::nnet1::GlobalRecurrentAttention::~GlobalRecurrentAttention(kaldi::nnet1::GlobalRecurrentAttention *this)
{
  v2 = (v1 + 672);

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
}

{
  kaldi::nnet1::GlobalRecurrentAttention::~GlobalRecurrentAttention((this + *(*this - 24)));
}

void kaldi::nnet1::GlobalRecurrentAttention::InitData(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v39 = 0;
  v40 = 0uLL;
  v6 = a2 + 4;
  v7 = a1 + 12;
  v8 = a1 + 8;
  while (1)
  {
    if ((*(v6 + *(*a2 - 24)) & 2) != 0)
    {
      goto LABEL_42;
    }

    kaldi::ReadToken(a2, 0, &v39, a4, a5);
    if (SHIBYTE(v40) < 0)
    {
      if (v40 != 15)
      {
        if (v40 != 22)
        {
          goto LABEL_35;
        }

        v14 = *v39 == 0x53656372756F533CLL && v39[1] == 0x656D694465746174;
        v15 = v14 && *(v39 + 14) == 0x3E6E6F69736E656DLL;
        v13 = v8;
        if (!v15)
        {
          goto LABEL_35;
        }

        goto LABEL_31;
      }

      v16 = v39;
    }

    else
    {
      if (HIBYTE(v40) != 15)
      {
        if (HIBYTE(v40) != 22)
        {
          goto LABEL_33;
        }

        v12 = v39 == 0x53656372756F533CLL && v40 == 0x656D694465746174 && *(&v40 + 6) == 0x3E6E6F69736E656DLL;
        v13 = v8;
        if (!v12)
        {
          goto LABEL_43;
        }

        goto LABEL_31;
      }

      v16 = &v39;
    }

    v17 = *v16;
    v18 = *(v16 + 7);
    v19 = v17 == 0x6574744178614D3CLL && v18 == 0x3E736E6F69746E65;
    v13 = v7;
    if (!v19)
    {
      if ((HIBYTE(v40) & 0x80) != 0)
      {
LABEL_35:
        if (v40 == 12)
        {
          v20 = v39;
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        if (HIBYTE(v40) == 12)
        {
          v20 = &v39;
LABEL_37:
          v21 = *v20;
          v22 = *(v20 + 2);
          if (v21 == 0x6E6F706D6F432F3CLL && v22 == 1047817829)
          {
LABEL_42:
            memset(v37, 0, sizeof(v37));
            v36 = 0;
            kaldi::ExpectToken(a2, 0, "<SourceDotTransform>");
            kaldi::ReadToken(a2, 0, v37, v24, v25);
            v26 = kaldi::nnet1::Component::MarkerToComponentType(v37);
            kaldi::ExpectToken(a2, 0, "<InputDim>");
            kaldi::ReadBasicType<int>(a2, 0, &v36 + 4, v27, v28);
            kaldi::ExpectToken(a2, 0, "<OutputDim>");
            kaldi::ReadBasicType<int>(a2, 0, &v36, v29, v30);
            kaldi::nnet1::Component::NewComponentOfType(v26);
          }
        }
      }

LABEL_43:
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&v38, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 131);
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "Unknown token ", 14);
      if (v40 >= 0)
      {
        v32 = &v39;
      }

      else
      {
        v32 = v39;
      }

      if (v40 >= 0)
      {
        v33 = HIBYTE(v40);
      }

      else
      {
        v33 = v40;
      }

      v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v32, v33);
      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, ", a typo in config?", 19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, " (SourceStateDimension|MaxAttentions)", 37);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v38);
    }

LABEL_31:
    kaldi::ReadBasicType<int>(a2, 0, v13, v9, v10);
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }
}

void kaldi::nnet1::GlobalRecurrentAttention::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  v39 = 0;
  v40 = 0uLL;
  v6 = a1 + 12;
  v7 = a1 + 8;
  while (1)
  {
    if (kaldi::Peek(a2, a3) != 60)
    {
      goto LABEL_42;
    }

    kaldi::ReadToken(a2, a3, &v39, v8, v9);
    if ((SHIBYTE(v40) & 0x80000000) == 0)
    {
      break;
    }

    if (v40 == 15)
    {
      v17 = v39;
      goto LABEL_26;
    }

    if (v40 != 22)
    {
      goto LABEL_35;
    }

    v15 = *v39 == 0x53656372756F533CLL && v39[1] == 0x656D694465746174;
    v16 = v15 && *(v39 + 14) == 0x3E6E6F69736E656DLL;
    v14 = v7;
    if (!v16)
    {
      goto LABEL_35;
    }

LABEL_31:
    kaldi::ReadBasicType<int>(a2, a3, v14, v10, v11);
  }

  if (HIBYTE(v40) != 15)
  {
    if (HIBYTE(v40) != 22)
    {
      goto LABEL_33;
    }

    v13 = v39 == 0x53656372756F533CLL && v40 == 0x656D694465746174 && *(&v40 + 6) == 0x3E6E6F69736E656DLL;
    v14 = v7;
    if (!v13)
    {
      goto LABEL_50;
    }

    goto LABEL_31;
  }

  v17 = &v39;
LABEL_26:
  v18 = *v17;
  v19 = *(v17 + 7);
  v20 = v18 == 0x6574744178614D3CLL && v19 == 0x3E736E6F69746E65;
  v14 = v6;
  if (v20)
  {
    goto LABEL_31;
  }

  if ((HIBYTE(v40) & 0x80) == 0)
  {
LABEL_33:
    if (HIBYTE(v40) == 12)
    {
      v21 = &v39;
      goto LABEL_37;
    }

    goto LABEL_50;
  }

LABEL_35:
  if (v40 != 12)
  {
    goto LABEL_50;
  }

  v21 = v39;
LABEL_37:
  v22 = *v21;
  v23 = *(v21 + 2);
  if (v22 != 0x6E6F706D6F432F3CLL || v23 != 1047817829)
  {
LABEL_50:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v38, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 194);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Unrecognized token ", 19);
    if (v40 >= 0)
    {
      v36 = &v39;
    }

    else
    {
      v36 = v39;
    }

    if (v40 >= 0)
    {
      v37 = HIBYTE(v40);
    }

    else
    {
      v37 = v40;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v36, v37);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v38);
  }

LABEL_42:
  kaldi::ExpectToken(a2, a3, "<SourceDotTransform>");
  v25 = kaldi::nnet1::Component::Read(a2, a3);
  if (!v25)
  {
    *(a1 + 176) = 0;
LABEL_58:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v38, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 198);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "read source dot transform failed", 32);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v38);
  }

  v26 = **v25;
  *(a1 + 176) = v27;
  if (!v27)
  {
    goto LABEL_58;
  }

  kaldi::ExpectToken(a2, a3, "</Component>");
  kaldi::ExpectToken(a2, a3, "<TargetDotTransform>");
  v28 = kaldi::nnet1::Component::Read(a2, a3);
  if (!v28)
  {
    *(a1 + 184) = 0;
LABEL_60:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v38, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 202);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "read target dot transform failed", 32);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v38);
  }

  v29 = **v28;
  *(a1 + 184) = v30;
  if (!v30)
  {
    goto LABEL_60;
  }

  kaldi::ExpectToken(a2, a3, "</Component>");
  kaldi::nnet1::Nnet::Read(*(a1 + 192), a2, a3);
  kaldi::nnet1::Nnet::ValidateNnet(*(a1 + 192), v31, v32, v33, v34);
  if ((kaldi::nnet1::Nnet::IsRnn(*(a1 + 192)) & 1) == 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v38, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 207);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "it doesn't make sense to use a non-reccurent network here", 57);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v38);
  }

  (*(*a1 + 296))(a1);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }
}

void sub_13B734(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::GlobalRecurrentAttention::WriteConfig(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<SourceStateDimension>", a4, a5);
  v8 = *(a1 + 8);
  kaldi::WriteBasicType<int>(a2, a3);
  kaldi::WriteToken(a2, a3, "<MaxAttentions>", v9, v10);
  v11 = *(a1 + 12);
  kaldi::WriteBasicType<int>(a2, a3);

  return kaldi::WriteToken(a2, a3, "</Component>", v12, v13);
}

void *kaldi::nnet1::GlobalRecurrentAttention::WriteData(uint64_t a1, void *a2, const char *a3, uint64_t a4)
{
  (*(*a1 + 96))(a1);
  kaldi::WriteToken(a2, a3, "<SourceDotTransform>", v8, v9);
  kaldi::nnet1::Component::Write(*(a1 + 176), a2, a3, a4);
  kaldi::WriteToken(a2, a3, "</Component>", v10, v11);
  kaldi::WriteToken(a2, a3, "<TargetDotTransform>", v12, v13);
  kaldi::nnet1::Component::Write(*(a1 + 184), a2, a3, a4);
  kaldi::WriteToken(a2, a3, "</Component>", v14, v15);
  v17 = *(a1 + 192);

  return kaldi::nnet1::Nnet::Write(v17, a2, a3, a4, v16);
}

uint64_t kaldi::nnet1::GlobalRecurrentAttention::NumParams(kaldi::nnet1::GlobalRecurrentAttention *this)
{
  v2 = (*(**(this + 22) + 176))(*(this + 22));
  v3 = (*(**(this + 23) + 176))(*(this + 23)) + v2;
  return v3 + kaldi::nnet1::Nnet::NumParams(*(this + 24));
}

void kaldi::nnet1::GlobalRecurrentAttention::GetParams(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 112))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 1, v5, v6);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  (*(**(a1 + 176) + 184))(*(a1 + 176), &v23);
  v21 = 0;
  v22 = 0;
  if (v24 > *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v9);
  }

  v20 = *a2;
  LODWORD(v21) = v24;
  kaldi::VectorBase<float>::CopyFromVec(&v20, &v23, v7, v8, v9);
  v10 = v24;
  (*(**(a1 + 184) + 184))(*(a1 + 184), &v23);
  v21 = 0;
  v22 = 0;
  if ((v24 + v10) > *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v13);
  }

  v20 = (*a2 + 4 * v10);
  LODWORD(v21) = v24;
  kaldi::VectorBase<float>::CopyFromVec(&v20, &v23, v11, v12, v13);
  v14 = v24;
  kaldi::nnet1::Nnet::GetParams(*(a1 + 192), &v23);
  v18 = v14 + v10;
  v21 = 0;
  v22 = 0;
  if ((v24 + v14 + v10) > *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v17);
  }

  v20 = (*a2 + 4 * v18);
  LODWORD(v21) = v24;
  kaldi::VectorBase<float>::CopyFromVec(&v20, &v23, v15, v16, v17);
  if (v24 + v18 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("GetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", &stru_B8.flags, "shift == wei_copy->Dim()", v19);
  }

  kaldi::Vector<float>::Destroy(&v23);
}

void sub_13BBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::GlobalRecurrentAttention::SetParams(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 176);
  v5 = (*(*v4 + 176))(v4);
  v16 = 0;
  v17 = 0;
  if (v5 > *(a2 + 8))
  {
    goto LABEL_6;
  }

  v15 = *a2;
  LODWORD(v16) = v5;
  (*(*v4 + 192))(v4, &v15);
  v7 = (*(**(a1 + 176) + 176))(*(a1 + 176));
  v8 = *(a1 + 184);
  v9 = (*(*v8 + 176))(v8);
  v16 = 0;
  v17 = 0;
  if ((v9 + v7) > *(a2 + 8))
  {
    goto LABEL_6;
  }

  v15 = *a2 + 4 * v7;
  LODWORD(v16) = v9;
  (*(*v8 + 192))(v8, &v15);
  v10 = (*(**(a1 + 184) + 176))(*(a1 + 184)) + v7;
  v11 = *(a1 + 192);
  v12 = kaldi::nnet1::Nnet::NumParams(v11);
  v16 = 0;
  v17 = 0;
  if ((v12 + v10) > *(a2 + 8))
  {
LABEL_6:
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v6);
  }

  v15 = *a2 + 4 * v10;
  LODWORD(v16) = v12;
  kaldi::nnet1::Nnet::SetParams(v11, &v15);
  result = kaldi::nnet1::Nnet::NumParams(*(a1 + 192));
  if (result + v10 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("SetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", &stru_B8.reserved2 + 3, "shift == wei_src.Dim()", v14);
  }

  return result;
}

float kaldi::nnet1::GlobalRecurrentAttention::SumParams(kaldi::nnet1::GlobalRecurrentAttention *this)
{
  v2 = (*(**(this + 22) + 208))(*(this + 22));
  v3 = v2 + (*(**(this + 23) + 208))(*(this + 23));
  return v3 + kaldi::nnet1::Nnet::SumParams(*(this + 24));
}

uint64_t kaldi::nnet1::GlobalRecurrentAttention::PerturbParams(kaldi::nnet1::GlobalRecurrentAttention *this, float a2)
{
  (*(**(this + 22) + 216))(*(this + 22));
  v4 = *(**(this + 23) + 216);
  v5.n128_f32[0] = a2;

  return v4(v5);
}

uint64_t virtual thunk tokaldi::nnet1::GlobalRecurrentAttention::PerturbParams(kaldi::nnet1::GlobalRecurrentAttention *this, float a2)
{
  v3 = this + *(*this - 232);
  (*(**(v3 + 22) + 216))(*(v3 + 22));
  v4 = *(**(v3 + 23) + 216);
  v5.n128_f32[0] = a2;

  return v4(v5);
}

uint64_t kaldi::nnet1::GlobalRecurrentAttention::Info(kaldi::nnet1::GlobalRecurrentAttention *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v28);
  (*(*this + 96))(this, &v28, 0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "\n## Source Dot Transform: input-dim ", 36);
  v2 = *(*(this + 22) + 8);
  v3 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, ", output-dim ", 13);
  v4 = *(*(this + 22) + 12);
  v5 = std::ostream::operator<<();
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "\n", 1);
  (*(**(this + 22) + 64))(v26);
  if ((v27 & 0x80u) == 0)
  {
    v7 = v26;
  }

  else
  {
    v7 = v26[0];
  }

  if ((v27 & 0x80u) == 0)
  {
    v8 = v27;
  }

  else
  {
    v8 = v26[1];
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "\n## Target Dot Transform: input-dim ", 36);
  v10 = *(*(this + 23) + 8);
  v11 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", output-dim ", 13);
  v12 = *(*(this + 23) + 12);
  v13 = std::ostream::operator<<();
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "\n", 1);
  (*(**(this + 23) + 64))(v24);
  if ((v25 & 0x80u) == 0)
  {
    v15 = v24;
  }

  else
  {
    v15 = v24[0];
  }

  if ((v25 & 0x80u) == 0)
  {
    v16 = v25;
  }

  else
  {
    v16 = v24[1];
  }

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "\n## Internal recurrent network info ", 36);
  kaldi::nnet1::Nnet::Info(__p, *(this + 24));
  if ((v23 & 0x80u) == 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v20 = v23;
  }

  else
  {
    v20 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, v20);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  std::stringbuf::str();
  if (v31 < 0)
  {
    operator delete(v30[7].__locale_);
  }

  std::locale::~locale(v30);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_13C370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void kaldi::nnet1::GlobalRecurrentAttention::InfoGradient(kaldi::nnet1::GlobalRecurrentAttention *this@<X0>, std::string *a2@<X8>)
{
  (*(**(this + 22) + 72))(&v21);
  (*(**(this + 23) + 72))(v19);
  if ((v20 & 0x80u) == 0)
  {
    v4 = v19;
  }

  else
  {
    v4 = v19[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v5 = v20;
  }

  else
  {
    v5 = v19[1];
  }

  v6 = std::string::append(&v21, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::Nnet::InfoGradient(*(this + 24), v17);
  if ((v18 & 0x80u) == 0)
  {
    v8 = v17;
  }

  else
  {
    v8 = v17[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v9 = v18;
  }

  else
  {
    v9 = v17[1];
  }

  v10 = std::string::append(&v22, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  boost::filesystem::path::path(__p, "\n");
  if ((v16 & 0x80u) == 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v13 = v16;
  }

  else
  {
    v13 = __p[1];
  }

  v14 = std::string::append(&v23, v12, v13);
  *a2 = *v14;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }
}

void sub_13C5C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v38 - 41) < 0)
  {
    operator delete(*(v38 - 64));
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::GlobalRecurrentAttention::SetTrainOptions(kaldi::nnet1::GlobalRecurrentAttention *this, const kaldi::nnet1::NnetTrainOptions *a2)
{
  v4 = this + *(*this - 24);
  v5 = *(a2 + 8);
  *(v4 + 71) = *(a2 + 23);
  *(v4 + 56) = v5;
  (*(**(this + 22) + 264))();
  (*(**(this + 23) + 264))();
  v8 = *(this + 24);

  kaldi::nnet1::Nnet::SetTrainOptions(v8, a2, 0, v6, v7);
}

unsigned int *kaldi::nnet1::GlobalRecurrentAttention::SetSourceStates(uint64_t a1, uint64_t a2, char **a3)
{
  (*(*a1 + 296))(a1);
  v7 = a3[1] - *a3;
  v8 = *(a2 + 20);
  v9 = v8 / (v7 >> 2);
  if (v9 * (v7 >> 2) != v8)
  {
    kaldi::KaldiAssertFailure_("SetSourceStates", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", &stru_108.addr + 3, "seq_size * num_seq == source.NumRows()", v6);
  }

  if (*(a2 + 16) != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("SetSourceStates", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", &stru_108.addr + 4, "source.NumCols() == source_vec_dim_", v6);
  }

  kaldi::CuMatrix<float>::operator=(a1 + 296, a2);
  if ((a1 + 640) != a3)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 640), *a3, a3[1], (a3[1] - *a3) >> 2);
  }

  v12 = (*a3 + 4);
  v11 = **a3;
  *(a1 + 664) = v11;
  v13 = a3[1];
  while (v12 != v13)
  {
    v14 = *v12;
    if (*v12 > v11)
    {
      *(a1 + 664) = v14;
      v11 = v14;
    }

    ++v12;
  }

  if (v11 >= *(a1 + 12))
  {
    kaldi::KaldiAssertFailure_("SetSourceStates", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", &stru_108.size + 5, "max_src_length_ < max_attentions_", v10);
  }

  if (v11 >= v9)
  {
    kaldi::KaldiAssertFailure_("SetSourceStates", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", &stru_108.size + 6, "max_src_length_ + 1 <= seq_size", v10);
  }

  kaldi::nnet1::Component::Propagate(*(a1 + 176), a1 + 296, a1 + 200, 0);
  __p = 0;
  v28 = 0uLL;
  std::vector<std::vector<int>>::assign((a1 + 616), (v7 >> 2), &__p);
  if (__p)
  {
    *&v28 = __p;
    operator delete(__p);
  }

  v19 = kaldi::nnet1::Nnet::InputDim(*(a1 + 192), v15, v16, v17, v18);
  kaldi::CuMatrix<float>::Resize(a1 + 344, v7 >> 2, v19, 0, 0);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&__p, a1 + 344, 0, *(a1 + 364), 0, *(a1 + 8));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v24, a1 + 296, 0, v7 >> 2, 0, *(a1 + 312));
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&__p, &v24, 111, v20, v21);
  v24 = off_276F40;
  v25 = 0u;
  v26 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v24);
  __p = off_276F40;
  v28 = 0u;
  v29 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&__p);
  kaldi::nnet1::Nnet::ResetHistoryStateIfExists(*(a1 + 192));
  return kaldi::nnet1::Nnet::Propagate<kaldi::CuMatrixBase<float>>(*(a1 + 192), a1 + 344, a1 + 392, 0, v22);
}

void sub_13CA30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void (**a9)(), __int128 a10, __int128 a11, void (**__p)(), __int128 a13, __int128 a14)
{
  a9 = off_276F40;
  a10 = 0u;
  a11 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a9);
  __p = off_276F40;
  a13 = 0u;
  a14 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&__p);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::GlobalRecurrentAttention::GetSourceDiffs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 296))(a1);
  if (*(a2 + 20) != *(a1 + 316))
  {
    kaldi::KaldiAssertFailure_("GetSourceDiffs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", &stru_108.nreloc + 3, "source.NumRows() == source_states_.NumRows()", v8);
  }

  if (*(a2 + 16) != *(a1 + 312))
  {
    kaldi::KaldiAssertFailure_("GetSourceDiffs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", &stru_108.flags, "source.NumCols() == source_states_.NumCols()", v8);
  }

  v9 = *(a3 + 8) - *a3;
  v10 = *(a1 + 640);
  if (v9 != *(a1 + 648) - v10 || memcmp(*a3, v10, v9))
  {
    kaldi::KaldiAssertFailure_("GetSourceDiffs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", &stru_108.flags + 1, "sequence_length == src_sequence_length_", v8);
  }

  return kaldi::CuMatrix<float>::Swap(a1 + 440, a4);
}

uint64_t kaldi::nnet1::GlobalRecurrentAttention::GetCurrentAlignment(uint64_t a1, std::vector<int> *this)
{
  v4 = -1431655765 * ((*(a1 + 624) - *(a1 + 616)) >> 3);
  std::vector<int>::resize(this, v4);
  if (v4 >= 1)
  {
    begin = this->__begin_;
    v6 = v4 & 0x7FFFFFFF;
    v7 = (*(a1 + 616) + 8);
    do
    {
      v8 = *v7;
      v7 += 3;
      *begin++ = *(v8 - 4);
      --v6;
    }

    while (v6);
  }

  return 1;
}

uint64_t kaldi::nnet1::GlobalRecurrentAttention::GetOverallAlignment(uint64_t a1, uint64_t *a2)
{
  if ((a1 + 616) != a2)
  {
    std::vector<std::vector<int>>::__assign_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(a2, *(a1 + 616), *(a1 + 624), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 624) - *(a1 + 616)) >> 3));
  }

  return 1;
}

uint64_t kaldi::nnet1::GlobalRecurrentAttention::SetSourceVectorDimension(uint64_t this, int a2)
{
  if (*(this + 8) != a2)
  {
    *(this + 8) = a2;
    *(this + 668) = 0;
  }

  return this;
}

uint64_t kaldi::nnet1::GlobalRecurrentAttention::SetMaxAttentions(uint64_t this, int a2)
{
  if (*(this + 12) != a2)
  {
    *(this + 12) = a2;
    *(this + 668) = 0;
  }

  return this;
}

void kaldi::nnet1::GlobalRecurrentAttention::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  (*(*a1 + 296))(a1);
  v79 = a2;
  if (*(a2 + 16) != *(a1 + *(*a1 - 24) + 8))
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", &stru_158.segname[6], "in.NumCols() == input_dim_", v8);
  }

  if (a4)
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", &stru_158.segname[8], "batch_idx == 0", v8);
  }

  v9 = *(a1 + 648) - *(a1 + 640);
  v10 = v9 >> 2;
  v11 = *(v79 + 20);
  v78 = v11 / (v9 >> 2);
  if (v78 * (v9 >> 2) != v11)
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", &stru_158.segname[14], "num_seq * tgt_seq_size == in.NumRows()", v8);
  }

  v12 = *(a1 + 316);
  v13 = (v12 / v10);
  kaldi::CuVector<float>::Resize(a1 + 584, v12, 0, v7, v8);
  v77 = v13;
  kaldi::CuMatrix<float>::Resize(a1 + 488, v9 >> 2, v13, 1u, 0);
  v14 = *(a1 + 316);
  v100 = 0;
  v101 = 0;
  v99 = 0;
  kaldi::Vector<float>::Resize(&v99, v14, 1, v15, v16);
  kaldi::Matrix<float>::Matrix(&v95);
  if (v78 >= 1)
  {
    v80 = 0;
    v17 = (v9 >> 2);
    v75 = "static_cast<UnsignedMatrixIndexT>(r) < static_cast<UnsignedMatrixIndexT>(num_rows_) && static_cast<UnsignedMatrixIndexT>(c) < static_cast<UnsignedMatrixIndexT>(num_cols_)";
    v74 = "../subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h";
    do
    {
      kaldi::CuMatrix<float>::operator=(a1 + 536, a1 + 200);
      kaldi::nnet1::Component::Propagate(*(a1 + 184), a1 + 392, a1 + 248, 0);
      if (*(a1 + 664) >= 1)
      {
        v21 = 0;
        v22 = 0;
        do
        {
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v92, a1 + 536, v21, v10, 0, *(a1 + 552));
          kaldi::CuMatrixBase<float>::MulElements(&v92, a1 + 248, v23, v24, v25);
          v92 = off_276F40;
          v93 = 0u;
          v94 = 0u;
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v92);
          ++v22;
          v21 += v10;
        }

        while (v22 < *(a1 + 664));
      }

      kaldi::CuVectorBase<float>::AddColSumMat(a1 + 584, (a1 + 536), 1.0, 0.0, v18, v19, v20);
      kaldi::CuVectorBase<float>::CopyToVec<float>((a1 + 584), &v99, v26, v27, v28);
      kaldi::Matrix<float>::Resize(&v95, v10, v77, 0, 0);
      if (v10 >= 1)
      {
        v31 = 0;
        do
        {
          v32 = *(*(a1 + 640) + 4 * v31);
          if (v32 < 1)
          {
            v34 = -1;
            v35 = -INFINITY;
          }

          else
          {
            v33 = 0;
            v34 = -1;
            v35 = -INFINITY;
            v36 = v31;
            do
            {
              if (v36 >= v100)
              {
                kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", stru_68.sectname, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(dim_)", v30);
              }

              if (v99[v36] > v35)
              {
                v34 = v33;
                v35 = v99[v36];
              }

              ++v33;
              v36 += v17;
            }

            while (v32 != v33);
          }

          v37 = *(a1 + 616) + 24 * v31;
          v39 = *(v37 + 8);
          v38 = *(v37 + 16);
          if (v39 >= v38)
          {
            v41 = *v37;
            v42 = v39 - *v37;
            v43 = v42 >> 2;
            v44 = (v42 >> 2) + 1;
            if (v44 >> 62)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            v45 = v38 - v41;
            if (v45 >> 1 > v44)
            {
              v44 = v45 >> 1;
            }

            v46 = v45 >= 0x7FFFFFFFFFFFFFFCLL;
            v47 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v46)
            {
              v47 = v44;
            }

            if (v47)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(*(a1 + 616) + 24 * v31, v47);
            }

            *(4 * v43) = v34;
            v40 = 4 * v43 + 4;
            memcpy(0, v41, v42);
            v48 = *v37;
            *v37 = 0;
            *(v37 + 8) = v40;
            *(v37 + 16) = 0;
            if (v48)
            {
              operator delete(v48);
            }
          }

          else
          {
            *v39 = v34;
            v40 = (v39 + 1);
          }

          *(v37 + 8) = v40;
          if (v32 >= 1)
          {
            v49 = v100;
            v50 = v99;
            v51 = 0.0;
            v52 = v32;
            v53 = v31;
            do
            {
              if (v53 >= v49)
              {
                kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", stru_68.sectname, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(dim_)", v30);
              }

              v54 = expf(v50[v53] - v35);
              v50[v53] = v54;
              v51 = v51 + v54;
              v53 += v17;
              --v52;
            }

            while (v52);
            v55 = 0;
            v56 = v100;
            v57 = v99;
            v58 = v97;
            v59 = v95 + 4 * v98 * v31;
            v60 = v31;
            while (v60 < v56)
            {
              v61 = &stru_B8 + 21;
              if (v31 >= v58 || v55 >= v96)
              {
                goto LABEL_53;
              }

              *(v59 + 4 * v55++) = (1.0 / v51) * v57[v60];
              v60 += v17;
              if (v32 == v55)
              {
                goto LABEL_39;
              }
            }

            v61 = &stru_68;
            v74 = "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h";
            v75 = "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(dim_)";
LABEL_53:
            kaldi::KaldiAssertFailure_("operator()", v74, v61->sectname, v75, v30);
          }

LABEL_39:
          ++v31;
        }

        while (v31 != v17);
      }

      kaldi::CuMatrixBase<float>::CopyFromMat(a1 + 488, &v95, 111, v29, v30);
      if (v10 >= 1)
      {
        v62 = 0;
        do
        {
          v63 = *(*(a1 + 640) + 4 * v62);
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v92, a1 + 344, 0, *(a1 + 364), 0, *(a1 + 8));
          if (v62 >= HIDWORD(v93))
          {
            kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v64);
          }

          v89 = v93 + 4 * v94 * v62;
          v88 = &off_276FE0;
          v90 = DWORD2(v93);
          v91 = *(&v94 + 1);
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v85, a1 + 296, v62, v63 * v10, 0, *(a1 + 312));
          if (v10 != 1)
          {
            kaldi::CuMatrixBase<float>::SetStride(&v85, *(a1 + 320) * v10);
          }

          if (v62 >= *(a1 + 508))
          {
            kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v65);
          }

          v66 = *(a1 + 496) + 4 * *(a1 + 512) * v62;
          v67 = *(a1 + 504);
          v68 = *(a1 + 520);
          v83 = 0;
          v84 = 0;
          v82 = 0;
          v81 = &off_276FE0;
          if (v63 > v67)
          {
            kaldi::KaldiAssertFailure_("CuSubVector", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.h", &stru_1A8.size + 4, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v65);
          }

          v82 = v66;
          LODWORD(v83) = v63;
          v84 = v68;
          kaldi::CuVectorBase<float>::AddMatVec(&v88, &v85, CblasTrans, &v81, v65, 1.0, 0.0);
          v85 = off_276F40;
          v86 = 0u;
          v87 = 0u;
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v85);
          v88 = &off_276FE0;
          v89 = 0;
          LODWORD(v90) = 0;
          v91 = 0;
          v92 = off_276F40;
          v93 = 0u;
          v94 = 0u;
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v92);
          ++v62;
        }

        while (v17 != v62);
      }

      kaldi::CuSubMatrix<float>::CuSubMatrix(&v92, a1 + 344, 0, *(a1 + 364), *(a1 + 8), *(a1 + 8 + *(*a1 - 24)));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v85, v79, v80 * v10, v10, 0, *(v79 + 16));
      kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v92, &v85, 111, v69, v70);
      v85 = off_276F40;
      v86 = 0u;
      v87 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v85);
      v92 = off_276F40;
      v93 = 0u;
      v94 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v92);
      kaldi::nnet1::Nnet::Propagate<kaldi::CuMatrixBase<float>>(*(a1 + 192), a1 + 344, a1 + 392, 0, v71);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v92, a3, v80 * v10, v10, 0, *(a3 + 16));
      kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v92, a1 + 392, 111, v72, v73);
      v92 = off_276F40;
      v93 = 0u;
      v94 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v92);
      ++v80;
    }

    while (v80 != v78);
  }

  kaldi::Matrix<float>::~Matrix(&v95);
  kaldi::Vector<float>::Destroy(&v99);
}

void kaldi::nnet1::GlobalRecurrentAttention::BackpropagateFnc()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 448);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "not implemented yet");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

char **kaldi::nnet1::GlobalRecurrentAttention::SetGradientNormalization(uint64_t a1, uint64_t a2, float a3)
{
  (*(**(a1 + 176) + 240))(*(a1 + 176));
  (*(**(a1 + 184) + 240))(*(a1 + 184), a2, a3);
  v6 = *(a1 + 192);

  return kaldi::nnet1::Nnet::SetGradientNormalization(v6, a2, 0, 0, a3);
}

void kaldi::nnet1::GlobalRecurrentAttention::AccumGradients()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 466);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "not implemented yet");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::nnet1::GlobalRecurrentAttention::UpdateWeights(kaldi::nnet1::GlobalRecurrentAttention *this, void *a2, uint64_t a3)
{
  (*(*this + 296))(this);
  (*(**(this + 22) + 256))();
  (*(**(this + 23) + 256))();
  v6 = *(this + 24);

  kaldi::nnet1::Nnet::Update(v6, a2, a3);
}

void kaldi::nnet1::GlobalRecurrentAttention::GetGradient()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "GetGradient", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 479);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "not implemented yet");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

uint64_t kaldi::nnet1::GlobalRecurrentAttention::HistoryStateSize(kaldi::nnet1::Nnet **this)
{
  (*(*this + 37))(this);
  v2 = this[24];

  return kaldi::nnet1::Nnet::HistoryStateSize(v2);
}

uint64_t non-virtual thunk tokaldi::nnet1::GlobalRecurrentAttention::HistoryStateSize(kaldi::nnet1::GlobalRecurrentAttention *this)
{
  v1 = this - 16;
  (*(*(this - 2) + 296))(this - 16);
  v2 = *(v1 + 24);

  return kaldi::nnet1::Nnet::HistoryStateSize(v2);
}

void *kaldi::nnet1::GlobalRecurrentAttention::ResetHistoryState(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 296))(a1);
  v9 = a1[24];

  return kaldi::nnet1::Nnet::ResetHistoryStateIfExists(v9, a2, a3, a4, v8);
}

void *non-virtual thunk tokaldi::nnet1::GlobalRecurrentAttention::ResetHistoryState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1 - 16;
  (*(*(a1 - 16) + 296))(a1 - 16);
  v9 = *(v7 + 192);

  return kaldi::nnet1::Nnet::ResetHistoryStateIfExists(v9, a2, a3, a4, v8);
}

uint64_t kaldi::nnet1::GlobalRecurrentAttention::ResetHistoryState(kaldi::nnet1::GlobalRecurrentAttention *this)
{
  (*(*this + 296))(this);
  v2 = *(this + 24);

  return kaldi::nnet1::Nnet::ResetHistoryStateIfExists(v2);
}

uint64_t non-virtual thunk tokaldi::nnet1::GlobalRecurrentAttention::ResetHistoryState(kaldi::nnet1::GlobalRecurrentAttention *this)
{
  v1 = this - 16;
  (*(*(this - 2) + 296))(this - 16);
  v2 = *(v1 + 24);

  return kaldi::nnet1::Nnet::ResetHistoryStateIfExists(v2);
}

uint64_t kaldi::nnet1::GlobalRecurrentAttention::GetHistoryState(void *a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 296))(a1);
  v6 = a1[24];

  return kaldi::nnet1::Nnet::GetHistoryState(v6, a2, a3);
}

uint64_t non-virtual thunk tokaldi::nnet1::GlobalRecurrentAttention::GetHistoryState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 - 16;
  (*(*(a1 - 16) + 296))(a1 - 16);
  v6 = *(v5 + 192);

  return kaldi::nnet1::Nnet::GetHistoryState(v6, a2, a3);
}

void *kaldi::nnet1::GlobalRecurrentAttention::GetHistoryState(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 296))(a1);
  v9 = a1[24];

  return kaldi::nnet1::Nnet::GetHistoryState(v9, a2, a3, a4, v8);
}

void *non-virtual thunk tokaldi::nnet1::GlobalRecurrentAttention::GetHistoryState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1 - 16;
  (*(*(a1 - 16) + 296))(a1 - 16);
  v9 = *(v7 + 192);

  return kaldi::nnet1::Nnet::GetHistoryState(v9, a2, a3, a4, v8);
}

uint64_t kaldi::nnet1::GlobalRecurrentAttention::SetHistoryState(void *a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 296))(a1);
  v8 = a1[24];

  return kaldi::nnet1::Nnet::SetHistoryState(v8, a2, a3, v6, v7);
}

uint64_t non-virtual thunk tokaldi::nnet1::GlobalRecurrentAttention::SetHistoryState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 - 16;
  (*(*(a1 - 16) + 296))(a1 - 16);
  v8 = *(v5 + 192);

  return kaldi::nnet1::Nnet::SetHistoryState(v8, a2, a3, v6, v7);
}

uint64_t kaldi::nnet1::GlobalRecurrentAttention::SetHistoryState(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 296))(a1);
  v9 = a1[24];

  return kaldi::nnet1::Nnet::SetHistoryState(v9, a2, a3, a4, v8);
}

uint64_t non-virtual thunk tokaldi::nnet1::GlobalRecurrentAttention::SetHistoryState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1 - 16;
  (*(*(a1 - 16) + 296))(a1 - 16);
  v9 = *(v7 + 192);

  return kaldi::nnet1::Nnet::SetHistoryState(v9, a2, a3, a4, v8);
}

uint64_t kaldi::nnet1::GlobalRecurrentAttention::Check(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if ((*(this + 668) & 1) == 0)
  {
    v5 = this;
    if (*(this + 12) < 1 || (v6 = *(this + 8), v6 <= 0))
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v50, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 531);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "component is not initialized, max attention is ", 47);
      v19 = *(v5 + 12);
      v20 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ", source state dimension is ", 28);
      v21 = *(v5 + 8);
      std::ostream::operator<<();
    }

    else if (v6 == *(*(this + 176) + 8))
    {
      v7 = kaldi::nnet1::Nnet::OutputDim(*(this + 192), a2, a3, a4, a5);
      v12 = *(v5 + 184);
      if (v7 == *(v12 + 8))
      {
        if (*(*(v5 + 176) + 12) == *(v12 + 12))
        {
          v13 = *(v5 + *(*v5 - 24) + 8) + *(v5 + 8);
          if (v13 == kaldi::nnet1::Nnet::InputDim(*(v5 + 192), v8, v9, v10, v11))
          {
            v18 = *(v5 + *(*v5 - 24) + 12);
            this = kaldi::nnet1::Nnet::OutputDim(*(v5 + 192), v14, v15, v16, v17);
            if (v18 == this)
            {
              *(v5 + 668) = 1;
              return this;
            }

            kaldi::KaldiErrorMessage::KaldiErrorMessage(v50, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 558);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "the internal network has output dim ", 36);
            kaldi::nnet1::Nnet::OutputDim(*(v5 + 192), v44, v45, v46, v47);
            v48 = std::ostream::operator<<();
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, " , but the component has output dim ", 36);
            v49 = *(v5 + *(*v5 - 24) + 12);
            std::ostream::operator<<();
          }

          else
          {
            kaldi::KaldiErrorMessage::KaldiErrorMessage(v50, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 551);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "the internal network takes input dimension ", 43);
            kaldi::nnet1::Nnet::InputDim(*(v5 + 192), v34, v35, v36, v37);
            v38 = std::ostream::operator<<();
            v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, " , that is not equal the sum of ", 32);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "source vector dimension ", 24);
            v40 = *(v5 + 8);
            v41 = std::ostream::operator<<();
            v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, " and ", 5);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "target input network dim ", 25);
            v43 = *(v5 + *(*v5 - 24) + 8);
            std::ostream::operator<<();
          }
        }

        else
        {
          kaldi::KaldiErrorMessage::KaldiErrorMessage(v50, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 546);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "the source and target dot transform has different output dim ", 61);
          v31 = *(*(v5 + 176) + 12);
          v32 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, " vs ", 4);
          v33 = *(*(v5 + 184) + 12);
          std::ostream::operator<<();
        }
      }

      else
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v50, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 541);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "the internal recurrent network has output dim ", 46);
        kaldi::nnet1::Nnet::OutputDim(*(v5 + 192), v25, v26, v27, v28);
        v29 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " , but the target dot transform has input dim ", 46);
        v30 = *(*(v5 + 184) + 8);
        std::ostream::operator<<();
      }
    }

    else
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v50, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 536);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "source state dimension is ", 26);
      v22 = *(v5 + 8);
      v23 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " , but the source dot transform has input dim ", 46);
      v24 = *(*(v5 + 176) + 8);
      std::ostream::operator<<();
    }

    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v50);
  }

  return this;
}

void kaldi::nnet1::GatedRecurrentUnit::InitData(unsigned int *a1, uint64_t *a2, kaldi::UniformRandomNumber *a3)
{
  *&v73 = -2.0;
  v74[0] = -1;
  v71 = 0.1;
  v72 = 2.0;
  kaldi::nnet1::Component::TypeToMarker((&dword_0 + 2), &v70);
  kaldi::nnet1::Component::TypeToMarker(a1[39], &v69);
  v67 = 0uLL;
  v68 = 0;
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_135;
    }

    kaldi::ReadToken(a2, 0, &v67, v6, v7);
    if (SHIBYTE(v68) < 0)
    {
      if (*(&v67 + 1) <= 12)
      {
        if (*(&v67 + 1) <= 10)
        {
          if (*(&v67 + 1) == 9)
          {
            v29 = *v67 == 0x6D726F4E78614D3CLL && *(v67 + 8) == 62;
            v12 = (a1 + 153);
            if (!v29)
            {
              v30 = *v67 == 0x6461724778614D3CLL && *(v67 + 8) == 62;
              v12 = (a1 + 38);
              if (!v30)
              {
                goto LABEL_128;
              }
            }

            goto LABEL_113;
          }

          if (*(&v67 + 1) != 10)
          {
            goto LABEL_128;
          }

          if (*v67 != 0x61654D736169423CLL || *(v67 + 8) != 15982)
          {
            goto LABEL_151;
          }

LABEL_22:
          v12 = &v73;
LABEL_113:
          kaldi::ReadBasicType<float>(a2, 0, v12, v8, v9);
          goto LABEL_124;
        }

        if (*(&v67 + 1) != 11)
        {
          if (*v67 != 0x536D6F646E61523CLL || *(v67 + 8) != 1046766949)
          {
            goto LABEL_128;
          }

          goto LABEL_52;
        }

        if (*v67 != 0x6E6152736169423CLL || *(v67 + 3) != 0x3E65676E61527361)
        {
          goto LABEL_151;
        }

LABEL_112:
        v12 = &v72;
        goto LABEL_113;
      }

      if (*(&v67 + 1) <= 17)
      {
        if (*(&v67 + 1) != 13)
        {
          if (*(&v67 + 1) != 15)
          {
            goto LABEL_128;
          }

          v13 = *v67 == 0x61526E7261654C3CLL && *(v67 + 7) == 0x3E66656F43657461;
LABEL_35:
          v12 = (a1 + 152);
          if (!v13)
          {
            goto LABEL_151;
          }

          goto LABEL_113;
        }

        if (*v67 != 0x74536D617261503CLL || *(v67 + 5) != 0x3E7665646474536DLL)
        {
          goto LABEL_151;
        }

LABEL_106:
        v12 = &v71;
        goto LABEL_113;
      }

      if (*(&v67 + 1) == 18)
      {
        if (*v67 != 0x6E6569646172473CLL || *(v67 + 8) != 0x7079546D726F4E74 || *(v67 + 16) != 15973)
        {
          goto LABEL_128;
        }

        goto LABEL_122;
      }

      if (*(&v67 + 1) != 19)
      {
        goto LABEL_128;
      }

      v15 = v67;
    }

    else
    {
      if (HIBYTE(v68) <= 0xCu)
      {
        if (HIBYTE(v68) <= 0xAu)
        {
          if (HIBYTE(v68) == 9)
          {
            v23 = v67 == 0x6D726F4E78614D3CLL && BYTE8(v67) == 62;
            v12 = (a1 + 153);
            if (!v23)
            {
              v24 = v67 == 0x6461724778614D3CLL && BYTE8(v67) == 62;
              v12 = (a1 + 38);
              if (!v24)
              {
                goto LABEL_151;
              }
            }

            goto LABEL_113;
          }

          if (HIBYTE(v68) != 10)
          {
            goto LABEL_151;
          }

          if (v67 != 0x61654D736169423CLL || WORD4(v67) != 15982)
          {
            goto LABEL_151;
          }

          goto LABEL_22;
        }

        if (HIBYTE(v68) != 11)
        {
          if (v67 != 0x536D6F646E61523CLL || DWORD2(v67) != 1046766949)
          {
            goto LABEL_127;
          }

LABEL_52:
          kaldi::ReadBasicType<int>(a2, 0, v74, v8, v9);
          goto LABEL_124;
        }

        if (v67 != 0x6E6152736169423CLL || *(&v67 + 3) != 0x3E65676E61527361)
        {
          goto LABEL_151;
        }

        goto LABEL_112;
      }

      if (HIBYTE(v68) <= 0x11u)
      {
        if (HIBYTE(v68) != 13)
        {
          if (HIBYTE(v68) != 15)
          {
            goto LABEL_151;
          }

          v13 = v67 == 0x61526E7261654C3CLL && *(&v67 + 7) == 0x3E66656F43657461;
          goto LABEL_35;
        }

        if (v67 != 0x74536D617261503CLL || *(&v67 + 5) != 0x3E7665646474536DLL)
        {
          goto LABEL_151;
        }

        goto LABEL_106;
      }

      if (HIBYTE(v68) == 18)
      {
        if (v67 != 0x6E6569646172473CLL || *(&v67 + 1) != 0x7079546D726F4E74 || v68 != 15973)
        {
          goto LABEL_151;
        }

LABEL_122:
        v22 = &v69;
        goto LABEL_123;
      }

      if (HIBYTE(v68) != 19)
      {
        goto LABEL_151;
      }

      v15 = &v67;
    }

    v17 = *v15;
    v18 = v15[1];
    v19 = *(v15 + 11);
    v20 = v17 == 0x61725474696E493CLL && v18 == 0x79546D726F66736ELL;
    if (!v20 || v19 != 0x3E657079546D726FLL)
    {
      break;
    }

    v22 = &v70;
LABEL_123:
    kaldi::ReadToken(a2, 0, v22, v8, v9);
LABEL_124:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if ((v68 & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v68) == 12)
    {
LABEL_127:
      v35 = &v67;
      goto LABEL_130;
    }

    goto LABEL_151;
  }

LABEL_128:
  if (*(&v67 + 1) != 12)
  {
    goto LABEL_151;
  }

  v35 = v67;
LABEL_130:
  v36 = *v35;
  v37 = *(v35 + 2);
  if (v36 != 0x6E6F706D6F432F3CLL || v37 != 1047817829)
  {
LABEL_151:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v63, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", 72);
    v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "Invalid token ", 14);
    if (v68 >= 0)
    {
      v55 = &v67;
    }

    else
    {
      v55 = v67;
    }

    if (v68 >= 0)
    {
      v56 = HIBYTE(v68);
    }

    else
    {
      v56 = *(&v67 + 1);
    }

    v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, v55, v56);
    v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, ". Allowed tokens: ", 18);
    v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, "(BiasMean|BiasRange|ParamStddev|LearnRateCoef|MaxNorm|MaxGrad|InitTransformType", 79);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, "|GradientNormType|RandomSeed)", 29);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v63);
  }

LABEL_135:
  kaldi::nnet1::GatedRecurrentUnit::AllocateParams(a1);
  inited = kaldi::nnet1::Component::MarkerToMatrixInitType(&v70);
  a1[39] = kaldi::nnet1::Component::MarkerToGradientNormType(&v69);
  if (v74[0] >= 1)
  {
    kaldi::UniformRandomNumber::SetRandomSeeds(a3, v74[0]);
  }

  kaldi::GaussRandomNumber::GaussRandomNumber(v63, a3);
  kaldi::nnet1::RandMatrix(a3, v63, inited, (a1 + 40), v71);
  kaldi::nnet1::RandMatrix(a3, v63, inited, (a1 + 52), v71);
  kaldi::nnet1::RandMatrix(a3, v63, inited, (a1 + 64), v71);
  v40 = a1[80];
  v61 = 0;
  v62 = 0;
  v60 = 0;
  kaldi::Vector<float>::Resize(&v60, v40, 0, v41, v42);
  v46 = v61;
  if (v61 >= 1)
  {
    v47 = 0;
    do
    {
      v48 = *&v73;
      v49 = kaldi::UniformRandomNumber::RandUniform(a3, 0, v43, v44, v45);
      v46 = v61;
      if (v47 >= v61)
      {
        kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", stru_68.sectname, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(dim_)", v45);
      }

      v50 = v48 + (v49 + -0.5) * v72;
      v60[v47++] = v50;
    }

    while (v47 < v46);
  }

  kaldi::CuVector<float>::Resize((a1 + 76), v46, 1u, v44, v45);
  kaldi::CuVectorBase<float>::CopyFromVec<float>(a1 + 76, &v60, v51, v52, v53);
  (*(*a1 + 128))(a1);
  kaldi::Vector<float>::Destroy(&v60);
  if (__p)
  {
    v66 = __p;
    operator delete(__p);
  }

  v60 = &v64;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v60);
  if (SHIBYTE(v68) < 0)
  {
    operator delete(v67);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }
}

void sub_13ECE0()
{
  kaldi::Vector<float>::Destroy(&v0);
  kaldi::GaussRandomNumber::~GaussRandomNumber(&v1);
  JUMPOUT(0x13ED04);
}

void sub_13ED00(_Unwind_Exception *exception_object)
{
  if (*(v1 - 169) < 0)
  {
    operator delete(*(v1 - 192));
  }

  if (*(v1 - 145) < 0)
  {
    operator delete(*(v1 - 168));
  }

  if (*(v1 - 121) < 0)
  {
    operator delete(*(v1 - 144));
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::GatedRecurrentUnit::AllocateParams(kaldi::nnet1::GatedRecurrentUnit *this)
{
  kaldi::CuMatrix<float>::Resize(this + 160, (3 * *(this + *(*this - 24) + 12)), *(this + *(*this - 24) + 8), 0, 0);
  v2 = *(this + *(*this - 24) + 12);
  kaldi::CuMatrix<float>::Resize(this + 208, (2 * v2), v2, 0, 0);
  v3 = *(this + *(*this - 24) + 12);
  kaldi::CuMatrix<float>::Resize(this + 256, v3, v3, 0, 0);
  kaldi::CuVector<float>::Resize(this + 304, (3 * *(this + *(*this - 24) + 12)), 0, v4, v5);
  if (kaldi::g_kaldi_verbose_level >= 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v11, "AllocateParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", 663, 2);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Allocated memory for the parameters: ", 37);
    (*(*this + 232))(__p, this);
    if ((v10 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    if ((v10 & 0x80u) == 0)
    {
      v8 = v10;
    }

    else
    {
      v8 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v11);
  }
}

void sub_13EEDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  kaldi::KaldiVlogMessage::~KaldiVlogMessage(&a15);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::RandMatrix(kaldi::UniformRandomNumber *a1, kaldi::GaussRandomNumber *a2, int a3, uint64_t a4, float a5)
{
  kaldi::Matrix<float>::Matrix(&v23, *(a4 + 20), *(a4 + 16), 0, 0);
  v10 = 0;
LABEL_2:
  if (v10 < kaldi::ContextDependency::CentralPosition(&v23))
  {
    for (i = 0; ; ++i)
    {
      if (i >= kaldi::ContextDependency::ContextWidth(&v23))
      {
        ++v10;
        goto LABEL_2;
      }

      if (a3)
      {
        if (a3 == 2)
        {
          kaldi::GaussRandomNumber::Rand(a2, 0, v14, v15, v16);
          if (v10 >= v25 || i >= v24)
          {
            goto LABEL_25;
          }

          v18 = v23 + 4 * v10 * v26;
          v19 = v20 * a5;
        }

        else
        {
          if (a3 != 1)
          {
            continue;
          }

          v17 = kaldi::UniformRandomNumber::RandUniform(a1, 0, v14, v15, v16);
          if (v10 >= v25 || i >= v24)
          {
            goto LABEL_25;
          }

          v18 = v23 + 4 * v10 * v26;
          v19 = (v17 + -0.5) * (a5 + a5);
        }
      }

      else
      {
        if (v10 >= v25 || i >= v24)
        {
LABEL_25:
          kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_B8.segname[5], "static_cast<UnsignedMatrixIndexT>(r) < static_cast<UnsignedMatrixIndexT>(num_rows_) && static_cast<UnsignedMatrixIndexT>(c) < static_cast<UnsignedMatrixIndexT>(num_cols_)", v16);
        }

        v18 = v23 + 4 * v10 * v26;
        if (v10 == i)
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

  kaldi::CuMatrixBase<float>::CopyFromMat(a4, &v23, 111, v11, v12);
  return kaldi::Matrix<float>::~Matrix(&v23);
}

void sub_13F0CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::GatedRecurrentUnit::ReadData(float *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  while (kaldi::Peek(a2, a3) == 60)
  {
    v34 = 0uLL;
    v35 = 0;
    kaldi::ReadToken(a2, a3, &v34, v8, v9);
    if (SHIBYTE(v35) < 0)
    {
      if (*(&v34 + 1) == 9)
      {
        v16 = *v34 == 0x6D726F4E78614D3CLL && *(v34 + 8) == 62;
        v15 = a1 + 153;
        if (!v16)
        {
LABEL_27:
          if (*(&v34 + 1) != 9)
          {
            if (*(&v34 + 1) != 18 || (*v34 == 0x6E6569646172473CLL ? (v17 = *(v34 + 8) == 0x7079546D726F4E74) : (v17 = 0), v17 ? (v18 = *(v34 + 16) == 15973) : (v18 = 0), !v18))
            {
LABEL_58:
              kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", 115);
              v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "unrecognized config token ", 26);
              if (v35 >= 0)
              {
                v30 = &v34;
              }

              else
              {
                v30 = v34;
              }

              if (v35 >= 0)
              {
                v31 = HIBYTE(v35);
              }

              else
              {
                v31 = *(&v34 + 1);
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v30, v31);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
            }

            goto LABEL_14;
          }

          v19 = v34;
          goto LABEL_48;
        }
      }

      else
      {
        if (*(&v34 + 1) != 15)
        {
          goto LABEL_27;
        }

        v14 = *v34 == 0x61526E7261654C3CLL && *(v34 + 7) == 0x3E66656F43657461;
        v15 = a1 + 152;
        if (!v14)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      switch(HIBYTE(v35))
      {
        case 9u:
          v21 = v34 == 0x6D726F4E78614D3CLL && BYTE8(v34) == 62;
          v15 = a1 + 153;
          if (!v21)
          {
            v19 = &v34;
LABEL_48:
            v22 = *v19;
            v23 = *(v19 + 8);
            v24 = v22 == 0x6461724778614D3CLL && v23 == 62;
            v15 = a1 + 38;
            if (!v24)
            {
              goto LABEL_58;
            }
          }

          break;
        case 0xFu:
          v20 = v34 == 0x61526E7261654C3CLL && *(&v34 + 7) == 0x3E66656F43657461;
          v15 = a1 + 152;
          if (!v20)
          {
            goto LABEL_58;
          }

          break;
        case 0x12u:
          v12 = v34 == 0x6E6569646172473CLL && *(&v34 + 1) == 0x7079546D726F4E74;
          if (!v12 || v35 != 15973)
          {
            goto LABEL_58;
          }

LABEL_14:
          __p[0] = 0;
          __p[1] = 0;
          v33 = 0;
          kaldi::ReadToken(a2, a3, __p, v10, v11);
          *(a1 + 39) = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
          if (SHIBYTE(v33) < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_54;
        default:
          goto LABEL_58;
      }
    }

    kaldi::ReadBasicType<float>(a2, a3, v15, v10, v11);
LABEL_54:
    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34);
    }
  }

  kaldi::CuMatrix<float>::Read((a1 + 40), a2, a3, a4);
  kaldi::CuMatrix<float>::Read((a1 + 52), a2, a3, a4);
  kaldi::CuMatrix<float>::Read((a1 + 64), a2, a3, a4);
  v27 = kaldi::CuVector<float>::Read((a1 + 76), a2, a3, v25, v26);
  return (*(*a1 + 128))(a1, v27);
}

void sub_13F4A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v14 - 89) < 0)
  {
    operator delete(*(v14 - 112));
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::GatedRecurrentUnit::WriteConfig(_DWORD *a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>", a4, a5);
  v8 = a1[152];
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<MaxNorm>", v9, v10);
  v11 = a1[153];
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>", v12, v13);
  kaldi::nnet1::Component::TypeToMarker(a1[39], &__p);
  kaldi::WriteToken(a2, a3, &__p, v14, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>", v16, v17);
  v18 = a1[38];
  return kaldi::WriteBasicType<float>(a2, a3);
}

void sub_13F5E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::GatedRecurrentUnit::WriteData(_DWORD *a1, void *a2, uint64_t a3, int a4)
{
  v8 = (a1 + 40);
  (*(*a1 + 128))(a1);
  (*(*a1 + 168))(a1, a2, a3);
  kaldi::CuMatrixBase<float>::Write(v8, a2, a3, a4);
  kaldi::CuMatrixBase<float>::Write((a1 + 52), a2, a3, a4);
  kaldi::CuMatrixBase<float>::Write((a1 + 64), a2, a3, a4);

  kaldi::CuVectorBase<float>::Write(a1 + 76, a2, a3, v9, v10);
}

_DWORD *kaldi::nnet1::GatedRecurrentUnit::GetParams(_DWORD *a1, uint64_t a2)
{
  v4 = (*(*a1 + 184))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 0, v5, v6);
  v10 = a1[44] * a1[45];
  v12 = a1[56];
  v11 = a1[57];
  v13 = a1[69];
  v14 = a1[68];
  v28 = 0;
  v29 = 0;
  if (v10 > *(a2 + 8))
  {
    goto LABEL_6;
  }

  v15 = v12 * v11;
  v27 = *a2;
  LODWORD(v28) = v10;
  kaldi::VectorBase<float>::CopyRowsFromMat(&v27, a1 + 40, v7, v8, v9);
  v28 = 0;
  v29 = 0;
  v18 = v15 + v10;
  if ((v15 + v10) > *(a2 + 8))
  {
    goto LABEL_6;
  }

  v19 = v14 * v13;
  v27 = (*a2 + 4 * v10);
  LODWORD(v28) = v15;
  kaldi::VectorBase<float>::CopyRowsFromMat(&v27, a1 + 52, v16, v17, v9);
  v28 = 0;
  v29 = 0;
  v22 = v19 + v18;
  if ((v19 + v18) > *(a2 + 8) || (v27 = (*a2 + 4 * v18), LODWORD(v28) = v19, kaldi::VectorBase<float>::CopyRowsFromMat(&v27, a1 + 64, v20, v21, v9), v25 = a1[80], v28 = 0, v29 = 0, (v25 + v22) > *(a2 + 8)))
  {
LABEL_6:
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v9);
  }

  v27 = (*a2 + 4 * v22);
  LODWORD(v28) = v25;
  return kaldi::CuVectorBase<float>::CopyToVec<float>(a1 + 76, &v27, v23, v24, v9);
}

_DWORD *kaldi::nnet1::GatedRecurrentUnit::SetParams(_DWORD *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 != (*(*a1 + 184))(a1))
  {
    kaldi::KaldiAssertFailure_("SetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", &stru_68.reserved1, "wei_src.Dim() == NumParams()", v5);
  }

  v6 = a1[44] * a1[45];
  v8 = a1[56];
  v7 = a1[57];
  v9 = a1[69];
  v10 = a1[68];
  v20 = 0;
  v21 = 0;
  if (v6 > *(a2 + 8))
  {
    goto LABEL_7;
  }

  v11 = v8 * v7;
  v19 = *a2;
  LODWORD(v20) = v6;
  kaldi::CuMatrixBase<float>::CopyRowsFromVec((a1 + 40), &v19);
  v20 = 0;
  v21 = 0;
  v12 = v11 + v6;
  if ((v11 + v6) > *(a2 + 8))
  {
    goto LABEL_7;
  }

  v13 = v10 * v9;
  v19 = (*a2 + 4 * v6);
  LODWORD(v20) = v11;
  kaldi::CuMatrixBase<float>::CopyRowsFromVec((a1 + 52), &v19);
  v20 = 0;
  v21 = 0;
  v14 = v13 + v12;
  if ((v13 + v12) > *(a2 + 8) || (v19 = (*a2 + 4 * v12), LODWORD(v20) = v13, kaldi::CuMatrixBase<float>::CopyRowsFromVec((a1 + 64), &v19), v17 = a1[80], v20 = 0, v21 = 0, (v17 + v14) > *(a2 + 8)))
  {
LABEL_7:
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v5);
  }

  v19 = (*a2 + 4 * v14);
  LODWORD(v20) = v17;
  return kaldi::CuVectorBase<float>::CopyFromVec<float>(a1 + 76, &v19, v15, v16, v5);
}

float kaldi::nnet1::GatedRecurrentUnit::SumParams(kaldi::nnet1::GatedRecurrentUnit *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = kaldi::CuMatrixBase<float>::Sum(this + 160, a2, a3, a4, a5);
  v11 = v6 + kaldi::CuMatrixBase<float>::Sum(this + 208, v7, v8, v9, v10);
  v16 = v11 + kaldi::CuMatrixBase<float>::Sum(this + 256, v12, v13, v14, v15);
  v17 = kaldi::CuVectorBase<float>::Sum(this + 304);
  return v16 + *&v17;
}

uint64_t kaldi::nnet1::GatedRecurrentUnit::GetGradient(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  (*(*v10 + 296))(v10, a2, a3, 0, 0);
  v11 = (*(*a1 + 184))(a1);
  kaldi::Vector<float>::Resize(a4, v11, 0, v12, v13);
  v16 = a1[44] * a1[45];
  v18 = a1[56];
  v17 = a1[57];
  v19 = a1[69];
  v20 = a1[68];
  v37 = 0;
  v38 = 0;
  if (v16 > *(a4 + 8))
  {
    goto LABEL_9;
  }

  v36 = *a4;
  LODWORD(v37) = v16;
  kaldi::Matrix<float>::Matrix<float>(&v33, v10[81], 111, v14, v15);
  kaldi::VectorBase<float>::CopyRowsFromMat(&v36, &v33);
  v21 = v18 * v17;
  kaldi::Matrix<float>::~Matrix(&v33);
  v34 = 0;
  v35 = 0;
  v24 = v21 + v16;
  if ((v21 + v16) > *(a4 + 8))
  {
    goto LABEL_9;
  }

  v25 = v20 * v19;
  v33 = *a4 + 4 * v16;
  LODWORD(v34) = v21;
  kaldi::VectorBase<float>::CopyRowsFromMat(&v33, v10[84], v22, v23, v15);
  v34 = 0;
  v35 = 0;
  v28 = v25 + v24;
  if ((v25 + v24) > *(a4 + 8) || (v33 = *a4 + 4 * v24, LODWORD(v34) = v25, kaldi::VectorBase<float>::CopyRowsFromMat(&v33, v10[87], v26, v27, v15), v31 = a1[80], v34 = 0, v35 = 0, (v31 + v28) > *(a4 + 8)))
  {
LABEL_9:
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v15);
  }

  v33 = *a4 + 4 * v28;
  LODWORD(v34) = v31;
  kaldi::CuVectorBase<float>::CopyToVec<float>(v10[90], &v33, v29, v30, v15);
  return (*(*v10 + 8))(v10);
}

uint64_t kaldi::nnet1::GatedRecurrentUnit::PerturbParams(kaldi::nnet1::GatedRecurrentUnit *this, float a2)
{
  kaldi::CuMatrix<float>::CuMatrix(v18, *(this + 45), *(this + 44), 1u, 0, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v18);
  kaldi::CuMatrixBase<float>::AddMat(this + 160, v18, 111, v4, v5, a2, 1.0);
  kaldi::CuMatrix<float>::Resize(v18, *(this + 57), *(this + 56), 1u, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v18);
  kaldi::CuMatrixBase<float>::AddMat(this + 208, v18, 111, v6, v7, a2, 1.0);
  kaldi::CuMatrix<float>::Resize(v18, *(this + 69), *(this + 68), 1u, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v18);
  kaldi::CuMatrixBase<float>::AddMat(this + 256, v18, 111, v8, v9, a2, 1.0);
  v10 = *(this + 80);
  v17[0] = off_277020;
  memset(&v17[1], 0, 24);
  kaldi::CuVector<float>::Resize(v17, v10, 1u, v11, v12);
  kaldi::CuVectorBase<float>::SetRandn(v17);
  kaldi::CuVectorBase<float>::AddVec(this + 304, v17, v13, v14, v15, a2, 1.0);
  kaldi::CuVector<float>::~CuVector(v17);
  return kaldi::CuMatrix<float>::~CuMatrix(v18);
}

void sub_13FF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::GatedRecurrentUnit::Info(kaldi::nnet1::GatedRecurrentUnit *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v30);
  (*(*this + 168))(this, &v30, 0);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "\n Input weights:", 16);
  kaldi::nnet1::MomentStatistics<float>(this + 160);
  if ((v29 & 0x80u) == 0)
  {
    v3 = v28;
  }

  else
  {
    v3 = v28[0];
  }

  if ((v29 & 0x80u) == 0)
  {
    v4 = v29;
  }

  else
  {
    v4 = v28[1];
  }

  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v3, v4);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "\n Gate recurrent weights:", 25);
  kaldi::nnet1::MomentStatistics<float>(this + 208);
  if ((v27 & 0x80u) == 0)
  {
    v7 = v26;
  }

  else
  {
    v7 = v26[0];
  }

  if ((v27 & 0x80u) == 0)
  {
    v8 = v27;
  }

  else
  {
    v8 = v26[1];
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "\n Activation recurrent weights:", 31);
  kaldi::nnet1::MomentStatistics<float>(this + 256);
  if ((v25 & 0x80u) == 0)
  {
    v11 = v24;
  }

  else
  {
    v11 = v24[0];
  }

  if ((v25 & 0x80u) == 0)
  {
    v12 = v25;
  }

  else
  {
    v12 = v24[1];
  }

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v11, v12);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "\n Bias:", 7);
  kaldi::nnet1::MomentStatistics<float>(this + 76, v15, v16, v17, v18);
  if ((v23 & 0x80u) == 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v20 = v23;
  }

  else
  {
    v20 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v19, v20);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  std::stringbuf::str();
  if (v33 < 0)
  {
    operator delete(v32[7].__locale_);
  }

  std::locale::~locale(v32);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_140220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  std::ostringstream::~ostringstream(&a34);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::GatedRecurrentUnit::InfoGradient(kaldi::nnet1::GatedRecurrentUnit *this@<X0>, boost::filesystem::path *a2@<X8>)
{
  if (*(this + 640))
  {
    memset(&v88, 0, sizeof(v88));
    v87 = 0;
    if (*(this + 20) >= 1)
    {
      do
      {
        boost::filesystem::path::path(&v75, "\n For batch ");
        kaldi::nnet1::ToString<int>(&v87);
        if ((v74 & 0x80u) == 0)
        {
          v3 = v73;
        }

        else
        {
          v3 = v73[0];
        }

        if ((v74 & 0x80u) == 0)
        {
          v4 = v74;
        }

        else
        {
          v4 = v73[1];
        }

        v5 = std::string::append(&v75, v3, v4);
        v6 = *&v5->__r_.__value_.__l.__data_;
        v76.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
        *&v76.__r_.__value_.__l.__data_ = v6;
        v5->__r_.__value_.__l.__size_ = 0;
        v5->__r_.__value_.__r.__words[2] = 0;
        v5->__r_.__value_.__r.__words[0] = 0;
        boost::filesystem::path::path(v71, ": ");
        if ((v72 & 0x80u) == 0)
        {
          v7 = v71;
        }

        else
        {
          v7 = v71[0];
        }

        if ((v72 & 0x80u) == 0)
        {
          v8 = v72;
        }

        else
        {
          v8 = v71[1];
        }

        v9 = std::string::append(&v76, v7, v8);
        v10 = *&v9->__r_.__value_.__l.__data_;
        v77.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
        *&v77.__r_.__value_.__l.__data_ = v10;
        v9->__r_.__value_.__l.__size_ = 0;
        v9->__r_.__value_.__r.__words[2] = 0;
        v9->__r_.__value_.__r.__words[0] = 0;
        boost::filesystem::path::path(v69, "\n  Input weights gradient: ");
        if ((v70 & 0x80u) == 0)
        {
          v11 = v69;
        }

        else
        {
          v11 = v69[0];
        }

        if ((v70 & 0x80u) == 0)
        {
          v12 = v70;
        }

        else
        {
          v12 = v69[1];
        }

        v13 = std::string::append(&v77, v11, v12);
        v14 = *&v13->__r_.__value_.__l.__data_;
        v78.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
        *&v78.__r_.__value_.__l.__data_ = v14;
        v13->__r_.__value_.__l.__size_ = 0;
        v13->__r_.__value_.__r.__words[2] = 0;
        v13->__r_.__value_.__r.__words[0] = 0;
        kaldi::nnet1::MomentStatistics<float>(*(this + 81) + 48 * v87);
        if ((v68 & 0x80u) == 0)
        {
          v15 = v67;
        }

        else
        {
          v15 = v67[0];
        }

        if ((v68 & 0x80u) == 0)
        {
          v16 = v68;
        }

        else
        {
          v16 = v67[1];
        }

        v17 = std::string::append(&v78, v15, v16);
        v18 = *&v17->__r_.__value_.__l.__data_;
        v79.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
        *&v79.__r_.__value_.__l.__data_ = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        boost::filesystem::path::path(v65, "\n  Gate recurrent weights gradient: ");
        if ((v66 & 0x80u) == 0)
        {
          v19 = v65;
        }

        else
        {
          v19 = v65[0];
        }

        if ((v66 & 0x80u) == 0)
        {
          v20 = v66;
        }

        else
        {
          v20 = v65[1];
        }

        v21 = std::string::append(&v79, v19, v20);
        v22 = *&v21->__r_.__value_.__l.__data_;
        v80.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
        *&v80.__r_.__value_.__l.__data_ = v22;
        v21->__r_.__value_.__l.__size_ = 0;
        v21->__r_.__value_.__r.__words[2] = 0;
        v21->__r_.__value_.__r.__words[0] = 0;
        kaldi::nnet1::MomentStatistics<float>(*(this + 84) + 48 * v87);
        if ((v64 & 0x80u) == 0)
        {
          v23 = v63;
        }

        else
        {
          v23 = v63[0];
        }

        if ((v64 & 0x80u) == 0)
        {
          v24 = v64;
        }

        else
        {
          v24 = v63[1];
        }

        v25 = std::string::append(&v80, v23, v24);
        v26 = *&v25->__r_.__value_.__l.__data_;
        v81.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
        *&v81.__r_.__value_.__l.__data_ = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        boost::filesystem::path::path(v61, "\n  Activation recurrent weights gradient: ");
        if ((v62 & 0x80u) == 0)
        {
          v27 = v61;
        }

        else
        {
          v27 = v61[0];
        }

        if ((v62 & 0x80u) == 0)
        {
          v28 = v62;
        }

        else
        {
          v28 = v61[1];
        }

        v29 = std::string::append(&v81, v27, v28);
        v30 = *&v29->__r_.__value_.__l.__data_;
        v82.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
        *&v82.__r_.__value_.__l.__data_ = v30;
        v29->__r_.__value_.__l.__size_ = 0;
        v29->__r_.__value_.__r.__words[2] = 0;
        v29->__r_.__value_.__r.__words[0] = 0;
        kaldi::nnet1::MomentStatistics<float>(*(this + 87) + 48 * v87);
        if ((v60 & 0x80u) == 0)
        {
          v31 = v59;
        }

        else
        {
          v31 = v59[0];
        }

        if ((v60 & 0x80u) == 0)
        {
          v32 = v60;
        }

        else
        {
          v32 = v59[1];
        }

        v33 = std::string::append(&v82, v31, v32);
        v34 = *&v33->__r_.__value_.__l.__data_;
        v83.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
        *&v83.__r_.__value_.__l.__data_ = v34;
        v33->__r_.__value_.__l.__size_ = 0;
        v33->__r_.__value_.__r.__words[2] = 0;
        v33->__r_.__value_.__r.__words[0] = 0;
        boost::filesystem::path::path(v57, "\n  Bias gradient: ");
        if ((v58 & 0x80u) == 0)
        {
          v35 = v57;
        }

        else
        {
          v35 = v57[0];
        }

        if ((v58 & 0x80u) == 0)
        {
          v36 = v58;
        }

        else
        {
          v36 = v57[1];
        }

        v37 = std::string::append(&v83, v35, v36);
        v38 = *&v37->__r_.__value_.__l.__data_;
        v84.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
        *&v84.__r_.__value_.__l.__data_ = v38;
        v37->__r_.__value_.__l.__size_ = 0;
        v37->__r_.__value_.__r.__words[2] = 0;
        v37->__r_.__value_.__r.__words[0] = 0;
        kaldi::nnet1::MomentStatistics<float>((*(this + 90) + 32 * v87), v39, v40, v41, v42);
        if ((v56 & 0x80u) == 0)
        {
          v43 = __p;
        }

        else
        {
          v43 = __p[0];
        }

        if ((v56 & 0x80u) == 0)
        {
          v44 = v56;
        }

        else
        {
          v44 = __p[1];
        }

        v45 = std::string::append(&v84, v43, v44);
        v46 = *&v45->__r_.__value_.__l.__data_;
        v86 = v45->__r_.__value_.__r.__words[2];
        v85 = v46;
        v45->__r_.__value_.__l.__size_ = 0;
        v45->__r_.__value_.__r.__words[2] = 0;
        v45->__r_.__value_.__r.__words[0] = 0;
        if (v86 >= 0)
        {
          v47 = &v85;
        }

        else
        {
          v47 = v85;
        }

        if (v86 >= 0)
        {
          v48 = HIBYTE(v86);
        }

        else
        {
          v48 = *(&v85 + 1);
        }

        std::string::append(&v88, v47, v48);
        if (SHIBYTE(v86) < 0)
        {
          operator delete(v85);
        }

        if (v56 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v84.__r_.__value_.__l.__data_);
        }

        if (v58 < 0)
        {
          operator delete(v57[0]);
        }

        if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v83.__r_.__value_.__l.__data_);
        }

        if (v60 < 0)
        {
          operator delete(v59[0]);
        }

        if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v82.__r_.__value_.__l.__data_);
        }

        if (v62 < 0)
        {
          operator delete(v61[0]);
        }

        if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v81.__r_.__value_.__l.__data_);
        }

        if (v64 < 0)
        {
          operator delete(v63[0]);
        }

        if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v80.__r_.__value_.__l.__data_);
        }

        if (v66 < 0)
        {
          operator delete(v65[0]);
        }

        if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v79.__r_.__value_.__l.__data_);
        }

        if (v68 < 0)
        {
          operator delete(v67[0]);
        }

        if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v78.__r_.__value_.__l.__data_);
        }

        if (v70 < 0)
        {
          operator delete(v69[0]);
        }

        if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v77.__r_.__value_.__l.__data_);
        }

        if (v72 < 0)
        {
          operator delete(v71[0]);
        }

        if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v76.__r_.__value_.__l.__data_);
        }

        if (v74 < 0)
        {
          operator delete(v73[0]);
        }

        if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v75.__r_.__value_.__l.__data_);
        }

        ++v87;
      }

      while (v87 < *(this + 20));
    }

    v49 = boost::filesystem::path::path(&v85, "\n");
    if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = &v88;
    }

    else
    {
      v50 = v88.__r_.__value_.__r.__words[0];
    }

    if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v88.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v88.__r_.__value_.__l.__size_;
    }

    v52 = std::string::insert(v49, 0, v50, size);
    v53 = *&v52->__r_.__value_.__l.__data_;
    *(a2 + 2) = *(&v52->__r_.__value_.__l + 2);
    *a2 = v53;
    v52->__r_.__value_.__l.__size_ = 0;
    v52->__r_.__value_.__r.__words[2] = 0;
    v52->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v86) < 0)
    {
      operator delete(v85);
    }

    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88.__r_.__value_.__l.__data_);
    }
  }

  else
  {

    boost::filesystem::path::path(a2, "\n  Gradients are uninitialized");
  }
}

void sub_140888(_Unwind_Exception *a1)
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

uint64_t kaldi::nnet1::ToString<int>(unsigned int *a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v4);
  v2 = *a1;
  std::ostream::operator<<();
  std::stringbuf::str();
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  std::locale::~locale(v6);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_140C04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::GatedRecurrentUnit::InfoPropagate(kaldi::nnet1::GatedRecurrentUnit *this@<X0>, std::string *a2@<X8>)
{
  memset(&v69, 0, sizeof(v69));
  v68 = 0;
  if (*(this + 20) >= 1)
  {
    do
    {
      boost::filesystem::path::path(&v58, "\n For batch ");
      kaldi::nnet1::ToString<int>(&v68);
      if ((v57 & 0x80u) == 0)
      {
        v3 = v56;
      }

      else
      {
        v3 = v56[0];
      }

      if ((v57 & 0x80u) == 0)
      {
        v4 = v57;
      }

      else
      {
        v4 = v56[1];
      }

      v5 = std::string::append(&v58, v3, v4);
      v6 = *&v5->__r_.__value_.__l.__data_;
      v59.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
      *&v59.__r_.__value_.__l.__data_ = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      boost::filesystem::path::path(v54, ": ");
      if ((v55 & 0x80u) == 0)
      {
        v7 = v54;
      }

      else
      {
        v7 = v54[0];
      }

      if ((v55 & 0x80u) == 0)
      {
        v8 = v55;
      }

      else
      {
        v8 = v54[1];
      }

      v9 = std::string::append(&v59, v7, v8);
      v10 = *&v9->__r_.__value_.__l.__data_;
      v60.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&v60.__r_.__value_.__l.__data_ = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      boost::filesystem::path::path(v52, "\n  Gates values: ");
      if ((v53 & 0x80u) == 0)
      {
        v11 = v52;
      }

      else
      {
        v11 = v52[0];
      }

      if ((v53 & 0x80u) == 0)
      {
        v12 = v53;
      }

      else
      {
        v12 = v52[1];
      }

      v13 = std::string::append(&v60, v11, v12);
      v14 = *&v13->__r_.__value_.__l.__data_;
      v61.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v61.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(this + 46) + 48 * v68);
      if ((v51 & 0x80u) == 0)
      {
        v15 = v50;
      }

      else
      {
        v15 = v50[0];
      }

      if ((v51 & 0x80u) == 0)
      {
        v16 = v51;
      }

      else
      {
        v16 = v50[1];
      }

      v17 = std::string::append(&v61, v15, v16);
      v18 = *&v17->__r_.__value_.__l.__data_;
      v62.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v62.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      boost::filesystem::path::path(v48, "\n  Candidate activations: ");
      if ((v49 & 0x80u) == 0)
      {
        v19 = v48;
      }

      else
      {
        v19 = v48[0];
      }

      if ((v49 & 0x80u) == 0)
      {
        v20 = v49;
      }

      else
      {
        v20 = v48[1];
      }

      v21 = std::string::append(&v62, v19, v20);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v63.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&v63.__r_.__value_.__l.__data_ = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(this + 49) + 48 * v68);
      if ((v47 & 0x80u) == 0)
      {
        v23 = v46;
      }

      else
      {
        v23 = v46[0];
      }

      if ((v47 & 0x80u) == 0)
      {
        v24 = v47;
      }

      else
      {
        v24 = v46[1];
      }

      v25 = std::string::append(&v63, v23, v24);
      v26 = *&v25->__r_.__value_.__l.__data_;
      v64.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
      *&v64.__r_.__value_.__l.__data_ = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      boost::filesystem::path::path(v44, "\n  Activations: ");
      if ((v45 & 0x80u) == 0)
      {
        v27 = v44;
      }

      else
      {
        v27 = v44[0];
      }

      if ((v45 & 0x80u) == 0)
      {
        v28 = v45;
      }

      else
      {
        v28 = v44[1];
      }

      v29 = std::string::append(&v64, v27, v28);
      v30 = *&v29->__r_.__value_.__l.__data_;
      v65.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&v65.__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(this + 61) + 48 * v68);
      if ((v43 & 0x80u) == 0)
      {
        v31 = __p;
      }

      else
      {
        v31 = __p[0];
      }

      if ((v43 & 0x80u) == 0)
      {
        v32 = v43;
      }

      else
      {
        v32 = __p[1];
      }

      v33 = std::string::append(&v65, v31, v32);
      v34 = *&v33->__r_.__value_.__l.__data_;
      v67 = v33->__r_.__value_.__r.__words[2];
      v66 = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      if (v67 >= 0)
      {
        v35 = &v66;
      }

      else
      {
        v35 = v66;
      }

      if (v67 >= 0)
      {
        v36 = HIBYTE(v67);
      }

      else
      {
        v36 = *(&v66 + 1);
      }

      std::string::append(&v69, v35, v36);
      if (SHIBYTE(v67) < 0)
      {
        operator delete(v66);
      }

      if (v43 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
      }

      if (v45 < 0)
      {
        operator delete(v44[0]);
      }

      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64.__r_.__value_.__l.__data_);
      }

      if (v47 < 0)
      {
        operator delete(v46[0]);
      }

      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v63.__r_.__value_.__l.__data_);
      }

      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
      }

      if (v51 < 0)
      {
        operator delete(v50[0]);
      }

      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

      if (v53 < 0)
      {
        operator delete(v52[0]);
      }

      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }

      if (v55 < 0)
      {
        operator delete(v54[0]);
      }

      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }

      if (v57 < 0)
      {
        operator delete(v56[0]);
      }

      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }

      ++v68;
    }

    while (v68 < *(this + 20));
  }

  v37 = boost::filesystem::path::path(&v66, "\n");
  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = &v69;
  }

  else
  {
    v38 = v69.__r_.__value_.__r.__words[0];
  }

  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v69.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v69.__r_.__value_.__l.__size_;
  }

  v40 = std::string::insert(v37, 0, v38, size);
  *a2 = *v40;
  v40->__r_.__value_.__l.__size_ = 0;
  v40->__r_.__value_.__r.__words[2] = 0;
  v40->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v67) < 0)
  {
    operator delete(v66);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }
}

void sub_1410DC(_Unwind_Exception *a1)
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

void kaldi::nnet1::GatedRecurrentUnit::InfoBackPropagate(kaldi::nnet1::GatedRecurrentUnit *this@<X0>, std::string *a2@<X8>)
{
  memset(&v69, 0, sizeof(v69));
  v68 = 0;
  if (*(this + 20) >= 1)
  {
    do
    {
      boost::filesystem::path::path(&v58, "\n For batch ");
      kaldi::nnet1::ToString<int>(&v68);
      if ((v57 & 0x80u) == 0)
      {
        v3 = v56;
      }

      else
      {
        v3 = v56[0];
      }

      if ((v57 & 0x80u) == 0)
      {
        v4 = v57;
      }

      else
      {
        v4 = v56[1];
      }

      v5 = std::string::append(&v58, v3, v4);
      v6 = *&v5->__r_.__value_.__l.__data_;
      v59.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
      *&v59.__r_.__value_.__l.__data_ = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      boost::filesystem::path::path(v54, ": ");
      if ((v55 & 0x80u) == 0)
      {
        v7 = v54;
      }

      else
      {
        v7 = v54[0];
      }

      if ((v55 & 0x80u) == 0)
      {
        v8 = v55;
      }

      else
      {
        v8 = v54[1];
      }

      v9 = std::string::append(&v59, v7, v8);
      v10 = *&v9->__r_.__value_.__l.__data_;
      v60.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&v60.__r_.__value_.__l.__data_ = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      boost::filesystem::path::path(v52, "\n  Gates diff: ");
      if ((v53 & 0x80u) == 0)
      {
        v11 = v52;
      }

      else
      {
        v11 = v52[0];
      }

      if ((v53 & 0x80u) == 0)
      {
        v12 = v53;
      }

      else
      {
        v12 = v52[1];
      }

      v13 = std::string::append(&v60, v11, v12);
      v14 = *&v13->__r_.__value_.__l.__data_;
      v61.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v61.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(this + 70) + 48 * v68);
      if ((v51 & 0x80u) == 0)
      {
        v15 = v50;
      }

      else
      {
        v15 = v50[0];
      }

      if ((v51 & 0x80u) == 0)
      {
        v16 = v51;
      }

      else
      {
        v16 = v50[1];
      }

      v17 = std::string::append(&v61, v15, v16);
      v18 = *&v17->__r_.__value_.__l.__data_;
      v62.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v62.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      boost::filesystem::path::path(v48, "\n  Candidate activation diff: ");
      if ((v49 & 0x80u) == 0)
      {
        v19 = v48;
      }

      else
      {
        v19 = v48[0];
      }

      if ((v49 & 0x80u) == 0)
      {
        v20 = v49;
      }

      else
      {
        v20 = v48[1];
      }

      v21 = std::string::append(&v62, v19, v20);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v63.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&v63.__r_.__value_.__l.__data_ = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(this + 67) + 48 * v68);
      if ((v47 & 0x80u) == 0)
      {
        v23 = v46;
      }

      else
      {
        v23 = v46[0];
      }

      if ((v47 & 0x80u) == 0)
      {
        v24 = v47;
      }

      else
      {
        v24 = v46[1];
      }

      v25 = std::string::append(&v63, v23, v24);
      v26 = *&v25->__r_.__value_.__l.__data_;
      v64.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
      *&v64.__r_.__value_.__l.__data_ = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      boost::filesystem::path::path(v44, "\n  Activation diff: ");
      if ((v45 & 0x80u) == 0)
      {
        v27 = v44;
      }

      else
      {
        v27 = v44[0];
      }

      if ((v45 & 0x80u) == 0)
      {
        v28 = v45;
      }

      else
      {
        v28 = v44[1];
      }

      v29 = std::string::append(&v64, v27, v28);
      v30 = *&v29->__r_.__value_.__l.__data_;
      v65.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&v65.__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(this + 64) + 48 * v68);
      if ((v43 & 0x80u) == 0)
      {
        v31 = __p;
      }

      else
      {
        v31 = __p[0];
      }

      if ((v43 & 0x80u) == 0)
      {
        v32 = v43;
      }

      else
      {
        v32 = __p[1];
      }

      v33 = std::string::append(&v65, v31, v32);
      v34 = *&v33->__r_.__value_.__l.__data_;
      v67 = v33->__r_.__value_.__r.__words[2];
      v66 = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      if (v67 >= 0)
      {
        v35 = &v66;
      }

      else
      {
        v35 = v66;
      }

      if (v67 >= 0)
      {
        v36 = HIBYTE(v67);
      }

      else
      {
        v36 = *(&v66 + 1);
      }

      std::string::append(&v69, v35, v36);
      if (SHIBYTE(v67) < 0)
      {
        operator delete(v66);
      }

      if (v43 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
      }

      if (v45 < 0)
      {
        operator delete(v44[0]);
      }

      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64.__r_.__value_.__l.__data_);
      }

      if (v47 < 0)
      {
        operator delete(v46[0]);
      }

      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v63.__r_.__value_.__l.__data_);
      }

      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
      }

      if (v51 < 0)
      {
        operator delete(v50[0]);
      }

      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

      if (v53 < 0)
      {
        operator delete(v52[0]);
      }

      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }

      if (v55 < 0)
      {
        operator delete(v54[0]);
      }

      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }

      if (v57 < 0)
      {
        operator delete(v56[0]);
      }

      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }

      ++v68;
    }

    while (v68 < *(this + 20));
  }

  v37 = boost::filesystem::path::path(&v66, "\n");
  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = &v69;
  }

  else
  {
    v38 = v69.__r_.__value_.__r.__words[0];
  }

  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v69.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v69.__r_.__value_.__l.__size_;
  }

  v40 = std::string::insert(v37, 0, v38, size);
  *a2 = *v40;
  v40->__r_.__value_.__l.__size_ = 0;
  v40->__r_.__value_.__r.__words[2] = 0;
  v40->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v67) < 0)
  {
    operator delete(v66);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }
}

void sub_14176C(_Unwind_Exception *a1)
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

uint64_t kaldi::nnet1::GatedRecurrentUnit::PropagateFnc(kaldi::nnet1::GatedRecurrentUnit *this, uint64_t a2, uint64_t a3, int a4, const char *a5)
{
  v5 = *(a2 + 20);
  v6 = *(this + 24);
  v73 = v5 / v6;
  if (v5 % v6)
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", &stru_108.segname[14], "batch_size % num_utts == 0", a5);
  }

  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v93, "PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", 296, 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v93, "Running forward propagation for batch size = ", 45);
    v11 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", which contains ", 17);
    v12 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " frames each from ", 18);
    v13 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v93);
  }

  v14 = *(a3 + 32);
  kaldi::nnet1::GatedRecurrentUnit::AllocateForwardBuffers(this, a4, v5, v14);
  v16 = *(this + 105);
  v17 = 3 * a4;
  v72 = a4;
  v66 = a3;
  v67 = a4;
  if (*(this + 106) == v16 || (v18 = *(v16 + 32 * a4 + 16), v18 < 1))
  {
    v68 = 0;
  }

  else
  {
    if (v18 != v5)
    {
      kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", &stru_108.addr + 7, "boundary_[batch_index].Dim() == batch_size", v15);
    }

    v19 = *(this + 108) + 48 * a4;
    *(v19 + 32) = v14;
    v68 = 1;
    kaldi::CuMatrix<float>::Resize(v19, v6, *(*(this + 1) + 48 * a4 + 16), 1u, 0);
  }

  v20 = *(this + 43) + 48 * a4;
  v21 = *(this + 46) + 48 * a4;
  v22 = *(this + 49);
  v74 = *(this + 55);
  v23 = *(this + 58);
  v24 = *(this + 61);
  kaldi::CuMatrixBase<float>::AddMatMat(v20, a2, CblasNoTrans, this + 160, &stru_68.sectname[8], 1.0, 0.0);
  kaldi::CuMatrixBase<float>::AddVecToRows(v20, this + 304, v25, v26, v27, 1.0, 1.0);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v93, v20, 0, *(v20 + 20), 0, 2 * *(this + *(*this - 24) + 12));
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v21, &v93, 111, v28, v29);
  v93.__locale_ = off_276F40;
  memset(v94, 0, sizeof(v94));
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v93);
  v30 = *(this + *(*this - 24) + 12);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v93, v20, 0, *(v20 + 20), (2 * v30), v30);
  v71 = v22 + 16 * v17;
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v71, &v93, 111, v31, v32);
  v93.__locale_ = off_276F40;
  v33 = v24 + 16 * v17;
  memset(v94, 0, sizeof(v94));
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v93);
  v70 = v23 + 16 * v17;
  kaldi::CuMatrixBase<float>::Set(v70, v34, v35, v36, v37, 1.0);
  if (v73 >= 1)
  {
    v40 = 0;
    v41 = 0;
    v42 = v74 + 16 * v17;
    v75 = this + 12;
    v43 = 0uLL;
    v69 = v42;
    while (1)
    {
      v94[1] = v43;
      v94[0] = v43;
      v93.__locale_ = off_276F40;
      *&v92[3] = v43;
      *&v92[1] = v43;
      v92[0] = off_276F40;
      if (!v41)
      {
        break;
      }

      v44 = v72;
      if (!v68)
      {
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v90, v33, v40 - v6, v6, 0, *(v33 + 16));
        goto LABEL_16;
      }

      kaldi::CuMatrixBase<float>::SetZero(*(this + 108) + 48 * v72);
      v45 = *(this + 108) + 48 * v72;
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v90, v45, 0, *(v45 + 20), 0, *&v75[*(*this - 24)]);
      *(v94 + 8) = *&v91[1];
      *&v94[0] = v91[0];
      *(&v94[1] + 1) = v91[3];
      v90 = off_276F40;
      memset(v91, 0, sizeof(v91));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v90);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v90, v33, v40 - v6, v6, 0, *(v33 + 16));
      kaldi::CuSubVector<float>::CuSubVector(&v87, *(this + 105) + 32 * v72, v40, v6, v46);
      kaldi::CuMatrixBase<float>::CopySelectedRows(&v93, &v90, &v87, 1, v47);
      v90 = off_276F40;
      memset(v91, 0, sizeof(v91));
LABEL_17:
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v90);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v90, v21, v40, v6, 0, *(v21 + 16));
      kaldi::CuMatrixBase<float>::AddMatMat(&v90, &v93, CblasNoTrans, this + 208, &stru_68.sectname[8], 1.0, 1.0);
      v90 = off_276F40;
      memset(v91, 0, sizeof(v91));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v90);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v90, v21, v40, v6, 0, *&v75[*(*this - 24)]);
      kaldi::CuMatrixBase<float>::Sigmoid(&v90, &v90, v49, v50, v51);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v87, v21, v40, v6, *&v75[*(*this - 24)], *&v75[*(*this - 24)]);
      kaldi::CuMatrixBase<float>::Sigmoid(&v87, &v87, v52, v53, v54);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v85, v69, v40, v6, 0, *(v69 + 16));
      v92[1] = v86[0];
      *&v92[2] = *&v86[1];
      v92[4] = v86[3];
      v85 = off_276F40;
      memset(v86, 0, sizeof(v86));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v85);
      kaldi::CuMatrixBase<float>::AddMatEwpMat(v92, &v87, 111, &v93, &stru_68.sectname[7], 1.0, 0.0);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v85, v71, v40, v6, 0, *(v71 + 16));
      kaldi::CuMatrixBase<float>::AddMatMat(&v85, v92, CblasNoTrans, this + 256, &stru_68.sectname[7], 1.0, 1.0);
      kaldi::CuMatrixBase<float>::Tanh(&v85, &v85, v55, v56, v57);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v82, v70, v40, v6, 0, *(v70 + 16));
      kaldi::CuMatrixBase<float>::AddMat(&v82, &v90, 111, v58, v59, -1.0, 1.0);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v79, v33, v40, v6, 0, *(v33 + 16));
      kaldi::CuMatrixBase<float>::AddMatEwpMat(&v79, &v82, 111, &v93, &stru_68.sectname[7], 1.0, 0.0);
      kaldi::CuMatrixBase<float>::AddMatEwpMat(&v79, &v90, 111, &v85, &stru_68.sectname[7], 1.0, 1.0);
      v60 = *(this + 52) + 48 * v44;
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v76, v60, v40, v6, 0, *(v60 + 16));
      kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v76, &v85, 111, v61, v62);
      kaldi::CuMatrixBase<float>::AddMat(&v76, &v93, 111, v63, v64, -1.0, 1.0);
      v76 = off_276F40;
      v77 = 0u;
      v78 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v76);
      v79 = off_276F40;
      v80 = 0u;
      v81 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v79);
      v82 = off_276F40;
      v83 = 0u;
      v84 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v82);
      v85 = off_276F40;
      memset(v86, 0, sizeof(v86));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v85);
      v87 = off_276F40;
      v88 = 0u;
      v89 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v87);
      v90 = off_276F40;
      memset(v91, 0, sizeof(v91));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v90);
      v92[0] = off_276F40;
      memset(&v92[1], 0, 32);
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v92);
      v93.__locale_ = off_276F40;
      memset(v94, 0, sizeof(v94));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v93);
      v43 = 0uLL;
      ++v41;
      v40 += v6;
      if (v73 == v41)
      {
        goto LABEL_18;
      }
    }

    v44 = v72;
    v48 = *(this + 1) + 48 * v72;
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v90, v48, 0, *(v48 + 20), 0, *&v75[*(*this - 24)]);
LABEL_16:
    *(v94 + 8) = *&v91[1];
    *&v94[0] = v91[0];
    *(&v94[1] + 1) = v91[3];
    v90 = off_276F40;
    memset(v91, 0, sizeof(v91));
    goto LABEL_17;
  }

LABEL_18:
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v66, v33, 111, v38, v39);
  return kaldi::nnet1::GatedRecurrentUnit::SaveLastState(this, v67);
}

void sub_142348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void (**a55)())
{
  a55 = off_276F40;
  *(v55 + 168) = 0u;
  *(v55 + 184) = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a55);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::GatedRecurrentUnit::AllocateForwardBuffers(kaldi::nnet1::GatedRecurrentUnit *this, int a2, uint64_t a3, void *a4)
{
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v9, "AllocateForwardBuffers", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", 744, 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Allocating forward buffers for batch ", 37);
    v8 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "; batch size = ", 15);
    std::ostream::operator<<();
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v9);
  }

  kaldi::CuMatrix<float>::Resize(*(this + 43) + 48 * a2, a3, (3 * *(this + *(*this - 24) + 12)), 0, 0);
  kaldi::CuMatrix<float>::Resize(*(this + 46) + 48 * a2, a3, (2 * *(this + *(*this - 24) + 12)), 0, 0);
  kaldi::CuMatrix<float>::Resize(*(this + 49) + 48 * a2, a3, *(this + *(*this - 24) + 12), 0, 0);
  kaldi::CuMatrix<float>::Resize(*(this + 52) + 48 * a2, a3, *(this + *(*this - 24) + 12), 0, 0);
  kaldi::CuMatrix<float>::Resize(*(this + 55) + 48 * a2, a3, *(this + *(*this - 24) + 12), 0, 0);
  kaldi::CuMatrix<float>::Resize(*(this + 58) + 48 * a2, a3, *(this + *(*this - 24) + 12), 0, 0);
  kaldi::CuMatrix<float>::Resize(*(this + 61) + 48 * a2, a3, *(this + *(*this - 24) + 12), 0, 0);
  *(*(this + 43) + 48 * a2 + 32) = a4;
  *(*(this + 46) + 48 * a2 + 32) = a4;
  *(*(this + 49) + 48 * a2 + 32) = a4;
  *(*(this + 52) + 48 * a2 + 32) = a4;
  *(*(this + 55) + 48 * a2 + 32) = a4;
  *(*(this + 58) + 48 * a2 + 32) = a4;
  *(*(this + 61) + 48 * a2 + 32) = a4;
}

void sub_1428C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::GatedRecurrentUnit::SaveLastState(kaldi::nnet1::GatedRecurrentUnit *this, int a2)
{
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v9, "SaveLastState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", 852, 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "Saving last activation batch ", 29);
    std::ostream::operator<<();
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v9);
  }

  v4 = *(this + 61) + 48 * a2;
  v5 = (*(this + 1) + 48 * a2);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v9, v4, *(v4 + 20) - *(this + 24), *(this + 24), 0, *(v4 + 16));
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v5, &v9, 111, v6, v7);
  v9.__locale_ = off_276F40;
  v10 = 0u;
  v11 = 0u;
  return fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v9);
}

void sub_1429D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (**a10)(), __int128 a11, __int128 a12)
{
  a10 = off_276F40;
  a11 = 0u;
  a12 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a10);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::GatedRecurrentUnit::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 96) != 1)
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", &stru_158.addr + 4, "ropts_.num_sequences == 1", a5);
  }

  v8 = *(a3 + 24);
  kaldi::nnet1::GatedRecurrentUnit::AllocateForwardBuffers(a1, 0, 1, v8);
  v10 = *(a1 + 840);
  if (*(a1 + 848) != v10)
  {
    v11 = *(v10 + 16);
    if (v11 >= 1)
    {
      if (v11 != 1)
      {
        kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", &stru_158.size + 1, "boundary_[0].Dim() == 1", v9);
      }

      v12 = *(a1 + 864);
      *(v12 + 32) = v8;
      kaldi::CuMatrix<float>::Resize(v12, 1, *(*(a1 + 8) + 16), 1u, 0);
    }
  }

  v13 = *(a1 + 344);
  v102 = 0;
  v103 = 0;
  v101 = 0;
  v14 = *(v13 + 8);
  v100 = &off_276FE0;
  v101 = v14;
  LODWORD(v102) = *(v13 + 16);
  v103 = *(v13 + 32);
  v15 = *(a1 + 368);
  v98 = 0;
  v99 = 0;
  v97 = 0;
  v16 = *(v15 + 8);
  v96 = &off_276FE0;
  v97 = v16;
  LODWORD(v98) = *(v15 + 16);
  v99 = *(v15 + 32);
  v17 = *(a1 + 488);
  v94 = 0;
  v95 = 0;
  v93 = 0;
  v18 = *(v17 + 8);
  v92 = &off_276FE0;
  v93 = v18;
  LODWORD(v94) = *(v17 + 16);
  v95 = *(v17 + 32);
  kaldi::CuVectorBase<float>::AddMatVec(&v100, (a1 + 160), CblasNoTrans, a2, v9, 1.0, 0.0);
  kaldi::CuVectorBase<float>::AddVec(&v100, a1 + 304, v19, v20, v21, 1.0, 1.0);
  v25 = 2 * *(a1 + *(*a1 - 24) + 12);
  v90 = 0;
  v91 = 0;
  v88 = &off_276FE0;
  v89 = 0;
  if (v25 > v102)
  {
    kaldi::KaldiAssertFailure_("CuSubVector", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.h", &stru_1A8.size + 4, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v24);
  }

  v89 = v101;
  LODWORD(v90) = v25;
  v91 = v103;
  kaldi::CuVectorBase<float>::CopyFromVec(&v96, &v88, v22, v23, v24);
  v27 = *(a1 + 8);
  if (!*(v27 + 20))
  {
    kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v26);
  }

  v28 = *(v27 + 8);
  v29 = *(v27 + 16);
  v30 = *(v27 + 32);
  v89 = v28;
  v88 = &off_276FE0;
  v90 = v29;
  v91 = v30;
  kaldi::CuVectorBase<float>::AddMatVec(&v96, (a1 + 208), CblasNoTrans, &v88, v26, 1.0, 1.0);
  v34 = *(a1 + *(*a1 - 24) + 12);
  v86 = 0;
  v87 = 0;
  v84 = &off_276FE0;
  v85 = 0;
  if (v34 > v98)
  {
    kaldi::KaldiAssertFailure_("CuSubVector", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.h", &stru_1A8.size + 4, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v33);
  }

  v85 = v97;
  LODWORD(v86) = v34;
  v87 = v99;
  kaldi::CuVectorBase<float>::Sigmoid(&v84, &v84, v31, v32, v33);
  v35 = *(a1 + *(*a1 - 24) + 12);
  kaldi::CuSubVector<float>::CuSubVector(v83, &v96, v35, v35, v36);
  kaldi::CuVectorBase<float>::Sigmoid(v83, v83, v37, v38, v39);
  v40 = *(a1 + 440);
  v81 = 0;
  v41 = *(v40 + 8);
  v80[0] = &off_276FE0;
  v80[1] = v41;
  LODWORD(v81) = *(v40 + 16);
  v82 = *(v40 + 32);
  kaldi::CuVectorBase<float>::AddVecVec(v80, v83, &v88, v42, v43, 1.0, 0.0);
  v44 = *(a1 + 392);
  v78 = 0;
  v45 = *(v44 + 8);
  v77[0] = &off_276FE0;
  v77[1] = v45;
  LODWORD(v78) = *(v44 + 16);
  v79 = *(v44 + 32);
  v46 = *(a1 + *(*a1 - 24) + 12);
  kaldi::CuSubVector<float>::CuSubVector(v74, &v100, 2 * v46, v46, v47);
  kaldi::CuVectorBase<float>::CopyFromVec(v77, v74, v48, v49, v50);
  kaldi::CuVectorBase<float>::AddMatVec(v77, (a1 + 256), CblasNoTrans, v80, v51, 1.0, 1.0);
  kaldi::CuVectorBase<float>::Tanh(v77, v77, v52, v53, v54);
  v55 = *(a1 + 464);
  v75 = 0;
  v56 = *(v55 + 8);
  v74[0] = &off_276FE0;
  v74[1] = v56;
  LODWORD(v75) = *(v55 + 16);
  v76 = *(v55 + 32);
  v57.i32[0] = 1.0;
  kaldi::CuVectorBase<float>::Set(v74, v57);
  kaldi::CuVectorBase<float>::AddVec(v74, &v84, v58, v59, v60, -1.0, 1.0);
  v61 = *(a1 + 488);
  v72 = 0;
  v62 = *(v61 + 8);
  v71[0] = &off_276FE0;
  v71[1] = v62;
  LODWORD(v72) = *(v61 + 16);
  v73 = *(v61 + 32);
  kaldi::CuVectorBase<float>::AddVecVec(v71, v74, &v88, v63, v64, 1.0, 0.0);
  kaldi::CuVectorBase<float>::AddVecVec(v71, &v84, v77, v65, v66, 1.0, 1.0);
  kaldi::CuVectorBase<float>::CopyFromVec(a3, v71, v67, v68, v69);
  return kaldi::nnet1::GatedRecurrentUnit::SaveLastState(a1, 0);
}

double kaldi::nnet1::GatedRecurrentUnit::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = *(a2 + 20);
  v11 = *(a1 + 96);
  kaldi::nnet1::GatedRecurrentUnit::EnsureTrainingBuffers(a1);
  v13 = v10 / v11;
  if (v10 % v11)
  {
    kaldi::KaldiAssertFailure_("BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", &stru_1A8.segname[8], "batch_size % num_utts == 0", v12);
  }

  if (kaldi::g_kaldi_verbose_level > 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v84, "BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", 450, 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v84, "Running backward propagation for batch size = ", 46);
    v14 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", which contains ", 17);
    v15 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " frames each from ", 18);
    v16 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v84);
  }

  if (v13 < 2)
  {
    kaldi::KaldiAssertFailure_("BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", &stru_1A8.segname[12], "frames_in_batch > 1 && GRU backprop will not work with batches of single frames.", v12);
  }

  v49 = a5;
  if (a5)
  {
    v17 = a5;
  }

  else
  {
    v17 = a4;
  }

  kaldi::nnet1::GatedRecurrentUnit::AllocateBackwardBuffers(a1, a6, v10, *(v17 + 32));
  v18 = *(a1 + 368) + 48 * a6;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v84, v18, 0, *(v18 + 20), 0, *(a1 + *(*a1 - 24) + 12));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v81, v18, 0, *(v18 + 20), *(a1 + *(*a1 - 24) + 12), *(a1 + *(*a1 - 24) + 12));
  v54 = *(a1 + 392);
  v51 = *(a1 + 464);
  v19 = *(a1 + 488);
  v20 = *(a1 + 512);
  v21 = *(a1 + 560) + 48 * a6;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v78, v21, 0, *(v21 + 20), 0, *(a1 + *(*a1 - 24) + 12));
  v53 = v21;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v75, v21, 0, *(v21 + 20), *(a1 + *(*a1 - 24) + 12), *(a1 + *(*a1 - 24) + 12));
  v22 = v20 + 48 * a6;
  v23 = *(a1 + 536);
  v56 = a1;
  v50 = *(a1 + 584);
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v22, a4, 111, v24, v25);
  v26 = v10 - v11;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v72, &v75, v11, v26, 0, SDWORD2(v76));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v69, &v81, v11, v26, 0, SDWORD2(v82));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v66, v19 + 48 * a6, 0, v26, 0, *(v19 + 48 * a6 + 16));
  kaldi::CuMatrixBase<float>::DiffSigmoid(&v72, &v69, &v66, v27, v28);
  v66 = off_276F40;
  v67 = 0u;
  v68 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v66);
  v69 = off_276F40;
  v70 = 0u;
  v71 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v69);
  v72 = off_276F40;
  v73 = 0u;
  v74 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v72);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v72, &v75, 0, v11, 0, SDWORD2(v76));
  kaldi::CuMatrixBase<float>::SetZero(&v72);
  v72 = off_276F40;
  v73 = 0u;
  v74 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v72);
  kaldi::CuMatrixBase<float>::DiffSigmoid(&v78, &v84, *(a1 + 416) + 48 * a6, v29, v30);
  v31 = v23 + 48 * a6;
  kaldi::CuMatrixBase<float>::DiffTanh(v31, v54 + 48 * a6, &v84, v32, v33);
  v55 = v13 - 1;
  v34 = v11 * (v13 - 1);
  v35 = v11 * v13;
  v52 = v51 + 48 * a6;
  v36 = v50 + 48 * a6;
  do
  {
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v72, v22, v34, v11, 0, *(v22 + 16));
    if (--v13 < v55)
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v69, v22, v35, v11, 0, *(v22 + 16));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v66, v52, v35, v11, 0, *(v52 + 16));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v63, v36, v35, v11, 0, *(v36 + 16));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v60, &v81, v35, v11, 0, SDWORD2(v82));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v57, v53, v35, v11, 0, *(v53 + 16));
      kaldi::CuMatrixBase<float>::AddMatEwpMat(&v72, &v69, 111, &v66, &stru_68.sectname[7], 1.0, 1.0);
      kaldi::CuMatrixBase<float>::AddMatEwpMat(&v72, &v63, 111, &v60, &stru_68.sectname[7], 1.0, 1.0);
      kaldi::CuMatrixBase<float>::AddMatMat(&v72, &v57, CblasNoTrans, v56 + 208, &stru_68.sectname[7], 1.0, 1.0);
      v57 = off_276F40;
      v58 = 0u;
      v59 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v57);
      v60 = off_276F40;
      v61 = 0u;
      v62 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v60);
      v63 = off_276F40;
      v64 = 0u;
      v65 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v63);
      v66 = off_276F40;
      v67 = 0u;
      v68 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v66);
      v69 = off_276F40;
      v70 = 0u;
      v71 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v69);
    }

    kaldi::CuSubMatrix<float>::CuSubMatrix(&v69, &v78, v34, v11, 0, SDWORD2(v79));
    kaldi::CuMatrixBase<float>::MulElements(&v69, &v72, v37, v38, v39);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v66, v31, v34, v11, 0, *(v31 + 16));
    kaldi::CuMatrixBase<float>::MulElements(&v66, &v72, v40, v41, v42);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v63, v36, v34, v11, 0, *(v36 + 16));
    kaldi::CuMatrixBase<float>::AddMatMat(&v63, &v66, CblasNoTrans, v56 + 256, &stru_68.sectname[7], 1.0, 0.0);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v60, &v75, v34, v11, 0, SDWORD2(v76));
    kaldi::CuMatrixBase<float>::MulElements(&v60, &v63, v43, v44, v45);
    v60 = off_276F40;
    v61 = 0u;
    v62 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v60);
    v63 = off_276F40;
    v64 = 0u;
    v65 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v63);
    v66 = off_276F40;
    v67 = 0u;
    v68 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v66);
    v69 = off_276F40;
    v70 = 0u;
    v71 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v69);
    v72 = off_276F40;
    v73 = 0u;
    v74 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v72);
    v34 -= v11;
    v35 -= v11;
  }

  while (v13 > 0);
  if (v49)
  {
    v46 = v56;
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v72, v56 + 160, 0, 2 * *(v56 + *(*v56 - 24) + 12), 0, *(v56 + 176));
    v47 = *(v46 + *(*v46 - 24) + 12);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v69, v46 + 160, 2 * v47, v47, 0, *(v46 + 176));
    kaldi::CuMatrixBase<float>::AddMatMat(v49, v53, CblasNoTrans, &v72, &stru_68.sectname[7], 1.0, 0.0);
    kaldi::CuMatrixBase<float>::AddMatMat(v49, v31, CblasNoTrans, &v69, &stru_68.sectname[7], 1.0, 1.0);
    v69 = off_276F40;
    v70 = 0u;
    v71 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v69);
    v72 = off_276F40;
    v73 = 0u;
    v74 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v72);
  }

  v75 = off_276F40;
  v76 = 0u;
  v77 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v75);
  v78 = off_276F40;
  v79 = 0u;
  v80 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v78);
  v81 = off_276F40;
  v82 = 0u;
  v83 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v81);
  v84.__locale_ = off_276F40;
  v85 = 0u;
  v86 = 0u;
  *&result = fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v84).n128_u64[0];
  return result;
}

void sub_143A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void (**a41)(), __int128 a42, __int128 a43, void (**a44)(), __int128 a45, __int128 a46, void (**a47)(), __int128 a48, __int128 a49, void (**a50)(), __int128 a51, __int128 a52, void (**a53)(), __int128 a54, __int128 a55)
{
  a41 = off_276F40;
  a42 = 0u;
  a43 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a41);
  a44 = off_276F40;
  a45 = 0u;
  a46 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a44);
  a47 = off_276F40;
  a48 = 0u;
  a49 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a47);
  a50 = off_276F40;
  a51 = 0u;
  a52 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a50);
  a53 = off_276F40;
  a54 = 0u;
  a55 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a53);
  _Unwind_Resume(a1);
}

void *kaldi::nnet1::GatedRecurrentUnit::EnsureTrainingBuffers(void *this)
{
  if ((*(this + 337) & 1) == 0)
  {
    v1 = this;
    std::vector<kaldi::CuMatrix<float>>::resize(this + 64, *(this + 20));
    std::vector<kaldi::CuMatrix<float>>::resize(v1 + 67, *(v1 + 20));
    std::vector<kaldi::CuMatrix<float>>::resize(v1 + 70, *(v1 + 20));
    this = std::vector<kaldi::CuMatrix<float>>::resize(v1 + 73, *(v1 + 20));
    *(v1 + 337) = 1;
  }

  return this;
}

void kaldi::nnet1::GatedRecurrentUnit::AllocateBackwardBuffers(kaldi::nnet1::GatedRecurrentUnit *this, int a2, uint64_t a3, void *a4)
{
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v9, "AllocateBackwardBuffers", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", 763, 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Allocating backward buffers for batch ", 38);
    v8 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "; batch size = ", 15);
    std::ostream::operator<<();
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v9);
  }

  kaldi::CuMatrix<float>::Resize(*(this + 64) + 48 * a2, a3, *(this + *(*this - 24) + 12), 0, 0);
  kaldi::CuMatrix<float>::Resize(*(this + 67) + 48 * a2, a3, *(this + *(*this - 24) + 12), 0, 0);
  kaldi::CuMatrix<float>::Resize(*(this + 70) + 48 * a2, a3, (2 * *(this + *(*this - 24) + 12)), 0, 0);
  kaldi::CuMatrix<float>::Resize(*(this + 73) + 48 * a2, a3, *(this + *(*this - 24) + 12), 0, 0);
  *(*(this + 64) + 48 * a2 + 32) = a4;
  *(*(this + 67) + 48 * a2 + 32) = a4;
  *(*(this + 70) + 48 * a2 + 32) = a4;
  *(*(this + 73) + 48 * a2 + 32) = a4;
}

void sub_144114(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::GatedRecurrentUnit::AccumGradients(kaldi::nnet1::GatedRecurrentUnit *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(this + 20) <= a5)
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", &stru_1F8.segname[6], "batch_index < ropts_.num_subbatches", a5);
  }

  v7 = *(this + 24);
  v8 = *(a2 + 20);
  if (v8 % v7)
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", &stru_1F8.segname[10], "batch_size % num_utts == 0", a5);
  }

  v9 = a5;
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v45, "AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", 532, 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v45, "Accumulating gradients for batch id = ", 38);
    v11 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", which contains ", 17);
    v12 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " frames each from ", 18);
    v13 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v45);
  }

  kaldi::nnet1::GatedRecurrentUnit::AllocateGradients(this);
  v14 = *(this + 15);
  *(*(this + 77) + 4 * v9) = v8;
  v15 = v9;
  v16 = *(this + 70);
  v17 = 3 * v9;
  v18 = *(this + 67);
  v19 = *(this + 81) + 48 * v9;
  *(v19 + 32) = a4;
  *(*(this + 84) + 48 * v9 + 32) = a4;
  *(*(this + 87) + 48 * v9 + 32) = a4;
  *(*(this + 90) + 32 * v9 + 24) = a4;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v45, v19, 0, 2 * *(this + *(*this - 24) + 12), 0, *(v19 + 16));
  v20 = *(this + 81) + 48 * v9;
  v21 = *(this + *(*this - 24) + 12);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v42, v20, 2 * v21, v21, 0, *(v20 + 16));
  v22 = (v16 + 48 * v9);
  kaldi::CuMatrixBase<float>::AddMatMat(&v45, v16 + 16 * v17, CblasTrans, a2, &stru_68.sectname[7], 1.0, v14);
  kaldi::CuMatrixBase<float>::AddMatMat(&v42, v18 + 16 * v17, CblasTrans, a2, &stru_68.sectname[7], 1.0, v14);
  v23 = *(this + 84);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v39, v22, v7, v8 - v7, 0, v22[4]);
  v24 = *(this + 61) + 48 * v15;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v36, v24, 0, v8 - v7, 0, *(v24 + 16));
  kaldi::CuMatrixBase<float>::AddMatMat(v23 + 48 * v15, &v39, CblasTrans, &v36, &stru_68.sectname[7], 1.0, v14);
  v36 = off_276F40;
  v37 = 0u;
  v38 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v36);
  v39 = off_276F40;
  v40 = 0u;
  v41 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v39);
  v25 = *(this + 87);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v39, v18 + 16 * v17, v7, v8 - v7, 0, *(v18 + 16 * v17 + 16));
  v26 = *(this + 55) + 48 * v15;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v36, v26, 0, v8 - v7, 0, *(v26 + 16));
  kaldi::CuMatrixBase<float>::AddMatMat(v25 + 48 * v15, &v39, CblasTrans, &v36, &stru_68.sectname[7], 1.0, v14);
  v36 = off_276F40;
  v37 = 0u;
  v38 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v36);
  v39 = off_276F40;
  v40 = 0u;
  v41 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v39);
  kaldi::CuSubVector<float>::CuSubVector(&v39, *(this + 90) + 32 * v15, 0, 2 * *(this + *(*this - 24) + 12), v27);
  kaldi::CuVectorBase<float>::AddRowSumMat(&v39, v22, 1.0, v14, v28, v29, v30);
  v31 = *(this + *(*this - 24) + 12);
  kaldi::CuSubVector<float>::CuSubVector(&v39, *(this + 90) + 32 * v15, 2 * v31, v31, v32);
  kaldi::CuVectorBase<float>::AddRowSumMat(&v39, (v18 + 16 * v17), 1.0, v14, v33, v34, v35);
  v42 = off_276F40;
  v43 = 0u;
  v44 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v42);
  v45.__locale_ = off_276F40;
  v46 = 0u;
  v47 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v45);
}

void sub_144634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void (**a20)(), __int128 a21, __int128 a22, void (**a23)(), __int128 a24, __int128 a25)
{
  a20 = off_276F40;
  a21 = 0u;
  a22 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a20);
  a23 = off_276F40;
  a24 = 0u;
  a25 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a23);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::GatedRecurrentUnit::AllocateGradients(kaldi::nnet1::GatedRecurrentUnit *this)
{
  if ((*(this + 640) & 1) == 0)
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

    std::vector<kaldi::CuMatrix<float>>::resize(this + 81, v4);
    std::vector<kaldi::CuMatrix<float>>::resize(this + 84, v4);
    std::vector<kaldi::CuMatrix<float>>::resize(this + 87, v4);
    std::vector<kaldi::CuVector<float>>::resize(this + 90, v4, v5, v6, v7);
    std::vector<kaldi::CuMatrix<float>>::resize(this + 93, v4);
    std::vector<kaldi::CuMatrix<float>>::resize(this + 96, v4);
    std::vector<kaldi::CuMatrix<float>>::resize(this + 99, v4);
    std::vector<kaldi::CuVector<float>>::resize(this + 102, v4, v8, v9, v10);
    if (v4 >= 1)
    {
      v11 = 0;
      v12 = this + 12;
      do
      {
        kaldi::CuMatrix<float>::Resize(*(this + 81) + 48 * v11, (3 * *(this + *(*this - 24) + 12)), *(this + *(*this - 24) + 8), 0, 0);
        v13 = *&v12[*(*this - 24)];
        kaldi::CuMatrix<float>::Resize(*(this + 84) + 48 * v11, (2 * v13), v13, 0, 0);
        v14 = *&v12[*(*this - 24)];
        kaldi::CuMatrix<float>::Resize(*(this + 87) + 48 * v11, v14, v14, 0, 0);
        kaldi::CuVector<float>::Resize(*(this + 90) + 32 * v11, (3 * *&v12[*(*this - 24)]), 0, v15, v16);
        if ((v2 & 0xFFFFFFFE) == 2)
        {
          kaldi::CuMatrix<float>::Resize(*(this + 93) + 48 * v11, (3 * *(this + *(*this - 24) + 12)), *(this + *(*this - 24) + 8), 1u, 0);
          v17 = *&v12[*(*this - 24)];
          kaldi::CuMatrix<float>::Resize(*(this + 96) + 48 * v11, (2 * v17), v17, 1u, 0);
          v18 = *&v12[*(*this - 24)];
          kaldi::CuMatrix<float>::Resize(*(this + 99) + 48 * v11, v18, v18, 1u, 0);
          kaldi::CuVector<float>::Resize(*(this + 102) + 32 * v11, (3 * *&v12[*(*this - 24)]), 1u, v19, v20);
          if (*(this + 39) == 3)
          {
            kaldi::CuMatrixBase<float>::Set(*(this + 93) + 48 * v11, v21, v22, v23, v24, 1.0);
            kaldi::CuMatrixBase<float>::Set(*(this + 96) + 48 * v11, v25, v26, v27, v28, 1.0);
            kaldi::CuMatrixBase<float>::Set(*(this + 99) + 48 * v11, v29, v30, v31, v32, 1.0);
            v33.i32[0] = 1.0;
            kaldi::CuVectorBase<float>::Set(*(this + 102) + 32 * v11, v33);
          }
        }

        ++v11;
      }

      while (v11 != v4);
    }

    *(this + 640) = 1;
    if (kaldi::g_kaldi_verbose_level > 1)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v39, "AllocateGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", 739, 2);
      v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "Allocated memory for the gradients: ", 36);
      (*(*this + 240))(__p, this);
      if ((v38 & 0x80u) == 0)
      {
        v35 = __p;
      }

      else
      {
        v35 = __p[0];
      }

      if ((v38 & 0x80u) == 0)
      {
        v36 = v38;
      }

      else
      {
        v36 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v35, v36);
      if (v38 < 0)
      {
        operator delete(__p[0]);
      }

      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v39);
    }
  }
}

void sub_144AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  kaldi::KaldiVlogMessage::~KaldiVlogMessage(&a16);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::GatedRecurrentUnit::UpdateWeights(kaldi::nnet1::GatedRecurrentUnit *this, void *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(this + 14);
  v6 = *(this + 16);
  v7 = *(this + 17);
  *(this + 24) = a2;
  *(this + 30) = a2;
  *(this + 36) = a2;
  *(this + 41) = a2;
  v8 = *this;
  v9 = *(this + *(*this - 24) + 80);
  if (a3 >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *(this + *(*this - 24) + 80);
  }

  if (v9 == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  if (v11 > v9)
  {
    kaldi::KaldiAssertFailure_("UpdateWeights", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", &stru_248.sectname[1], "batch_index <= opts_.num_subbatches", a5);
  }

  v14 = (this + 80);
  v13 = *(this + 20);
  v15 = *(this + 81) + 48 * v11;
  *(v15 + 32) = a2;
  *(v14[74] + 48 * v11 + 32) = a2;
  *(v14[77] + 48 * v11 + 32) = a2;
  *(v14[80] + 32 * v11 + 24) = a2;
  *(v14[83] + 48 * v11 + 32) = a2;
  *(v14[86] + 48 * v11 + 32) = a2;
  *(v14[89] + 48 * v11 + 32) = a2;
  *(v14[92] + 32 * v11 + 24) = a2;
  if (v11 == v13)
  {
    kaldi::CuMatrixBase<float>::SetZero(v15);
    kaldi::CuMatrixBase<float>::SetZero(*(this + 84) + 48 * v11);
    kaldi::CuMatrixBase<float>::SetZero(*(this + 87) + 48 * v11);
    kaldi::CuVectorBase<float>::SetZero(*(this + 90) + 32 * v11);
    v8 = *this;
    if (*(v14 + *(*this - 24)) >= 1)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      do
      {
        kaldi::CuMatrixBase<float>::AddMat(*(this + 81) + 48 * v11, *(this + 81) + v17, 111, a4, a5, 1.0, 1.0);
        kaldi::CuMatrixBase<float>::AddMat(*(this + 84) + 48 * v11, *(this + 84) + v17, 111, v19, v20, 1.0, 1.0);
        kaldi::CuMatrixBase<float>::AddMat(*(this + 87) + 48 * v11, *(this + 87) + v17, 111, v21, v22, 1.0, 1.0);
        kaldi::CuVectorBase<float>::AddVec(*(this + 90) + 32 * v11, *(this + 90) + v16, v23, v24, v25, 1.0, 1.0);
        ++v18;
        v8 = *this;
        v17 += 48;
        v16 += 32;
      }

      while (v18 < *(v14 + *(*this - 24)));
    }

    v26 = *(this + 77);
    v26[v11] = 0;
    if (v11 >= 1)
    {
      v27 = 0;
      v28 = v11;
      v29 = v26;
      do
      {
        v30 = *v29++;
        v27 += v30;
        v26[v11] = v27;
        --v28;
      }

      while (v28);
    }
  }

  if (*(this + 84) == 1)
  {
    v5 = v5 / *(*(this + 77) + 4 * v11);
  }

  if (*(this + 38) >= 0.0)
  {
    (*(v8 + 320))(this, v11);
  }

  if (v6 != 0.0)
  {
    v31 = -(v5 * v6);
    kaldi::CuMatrixBase<float>::AddMat(this + 160, this + 160, 111, a4, a5, v31 * *(*(this + 77) + 4 * v11), 1.0);
    kaldi::CuMatrixBase<float>::AddMat(this + 208, this + 208, 111, v32, v33, v31 * *(*(this + 77) + 4 * v11), 1.0);
    kaldi::CuMatrixBase<float>::AddMat(this + 256, this + 256, 111, v34, v35, v31 * *(*(this + 77) + 4 * v11), 1.0);
    kaldi::CuVectorBase<float>::AddVec(this + 304, this + 304, v36, v37, v38, v31, 1.0);
  }

  v39 = *(this + 81);
  if (v7 != 0.0)
  {
    kaldi::cu::RegularizeL1<float>(this + 40, v39 + 48 * v11, (v7 * v5) * *(*(this + 77) + 4 * v11), v5, a3, a4, a5);
    kaldi::cu::RegularizeL1<float>(this + 52, *(this + 84) + 48 * v11, (v7 * v5) * *(*(this + 77) + 4 * v11), v5, v40, v41, v42);
    kaldi::cu::RegularizeL1<float>(this + 64, *(this + 87) + 48 * v11, (v7 * v5) * *(*(this + 77) + 4 * v11), v5, v43, v44, v45);
    v39 = *(this + 81);
  }

  kaldi::CuMatrixBase<float>::AddMat(this + 160, v39 + 48 * v11, 111, a4, a5, -(v5 * *(this + 152)), 1.0);
  kaldi::CuMatrixBase<float>::AddMat(this + 208, *(this + 84) + 48 * v11, 111, v46, v47, -(v5 * *(this + 152)), 1.0);
  kaldi::CuMatrixBase<float>::AddMat(this + 256, *(this + 87) + 48 * v11, 111, v48, v49, -(v5 * *(this + 152)), 1.0);
  kaldi::CuVectorBase<float>::AddVec(this + 304, *(this + 90) + 32 * v11, v50, v51, v52, -(v5 * *(this + 152)), 1.0);
  v53 = *(this + 153);
  if (v53 > 0.0)
  {
    kaldi::CuMatrixBase<float>::ApplyMaxNorm(this + 160, 1, v53);
    kaldi::CuMatrixBase<float>::ApplyMaxNorm(this + 208, 1, *(this + 153));
    kaldi::CuMatrixBase<float>::ApplyMaxNorm(this + 256, 1, *(this + 153));
    kaldi::CuVectorBase<float>::ApplyMaxNorm(this + 304, *(this + 153), v54, v55, v56, v57);
  }

  v58 = *(this + 77);
  if (v11 == *(this + *(*this - 24) + 80))
  {
    v59 = *(this + 78);
    if (v58 != v59)
    {

      bzero(v58, v59 - v58);
    }
  }

  else
  {
    *&v58[4 * v11] = 0;
  }
}

void kaldi::nnet1::GatedRecurrentUnit::EnsureBuffers(kaldi::nnet1::GatedRecurrentUnit *this)
{
  if ((*(this + 336) & 1) == 0)
  {
    v2 = *(this + 20);
    std::vector<kaldi::CuMatrix<float>>::resize(this + 43, v2);
    std::vector<kaldi::CuMatrix<float>>::resize(this + 46, v2);
    std::vector<kaldi::CuMatrix<float>>::resize(this + 49, v2);
    std::vector<kaldi::CuMatrix<float>>::resize(this + 52, v2);
    std::vector<kaldi::CuMatrix<float>>::resize(this + 55, v2);
    std::vector<kaldi::CuMatrix<float>>::resize(this + 58, v2);
    std::vector<kaldi::CuMatrix<float>>::resize(this + 61, v2);
    std::vector<kaldi::CuMatrix<float>>::resize(this + 1, v2);
    if (v2 >= 1)
    {
      v3 = 0;
      do
      {
        kaldi::CuMatrix<float>::Resize(*(this + 1) + v3, *(this + 24), *(this + *(*this - 24) + 12), 0, 0);
        v3 += 48;
      }

      while (48 * v2 != v3);
    }

    std::vector<int>::resize((this + 616), v2);
    *(this + 336) = 1;
  }
}

uint64_t kaldi::nnet1::GatedRecurrentUnit::SetGradientNormalization(uint64_t result, int a2, float a3)
{
  *(result + 152) = a3;
  *(result + 156) = a2;
  *(result + 640) = 0;
  return result;
}

void *virtual thunk tokaldi::nnet1::GatedRecurrentUnit::SetGradientNormalization(void *result, int a2, float a3)
{
  v3 = (result + *(*result - 256));
  v3[38] = a3;
  *(v3 + 39) = a2;
  *(v3 + 640) = 0;
  return result;
}

void kaldi::nnet1::GatedRecurrentUnit::NormalizeGradients(kaldi::nnet1::GatedRecurrentUnit *this, float a2, unsigned int a3, uint64_t a4, uint64_t a5, const char *a6)
{
  if ((a3 & 0x80000000) != 0 || *(this + 20) <= a3)
  {
    kaldi::KaldiAssertFailure_("NormalizeGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", &stru_2E8.addr + 6, "batch_index >= 0 && batch_index < ropts_.num_subbatches", a6);
  }

  v7 = a2;
  v8 = *(this + 39);
  if (v8 == 1)
  {
    if (a2 > 0.0)
    {
      v16 = a3;
      if (*(this + 84))
      {
        v7 = *(*(this + 77) + 4 * a3) * a2;
      }

      kaldi::nnet1::UpdatableComponent::ClipGradient(*(this + 81) + 48 * a3, v7);
      kaldi::nnet1::UpdatableComponent::ClipGradient(*(this + 84) + 48 * v16, v7);
      kaldi::nnet1::UpdatableComponent::ClipGradient(*(this + 87) + 48 * v16, v7);
      v18 = *(this + 90) + 32 * v16;

      kaldi::nnet1::UpdatableComponent::ClipGradient(v18, v7);
    }
  }

  else if (v8 == 3)
  {
    if (a2 >= 0.0 && a2 <= 1.0)
    {
      v9 = a3;
      v10 = 3 * a3;
      kaldi::nnet1::UpdatableComponent::RmspropGradient(*(this + 81) + 48 * a3, *(this + 93) + 48 * a3, a2);
      kaldi::nnet1::UpdatableComponent::RmspropGradient(*(this + 84) + 16 * v10, *(this + 96) + 16 * v10, v7);
      kaldi::nnet1::UpdatableComponent::RmspropGradient(*(this + 87) + 16 * v10, *(this + 99) + 16 * v10, v7);
      v14 = *(this + 90) + 32 * v9;
      v15 = *(this + 102) + 32 * v9;

      kaldi::nnet1::UpdatableComponent::RmspropGradient(v14, v15, v7, v11, v12, v13);
    }
  }

  else if (a2 > 0.0 && v8 == 2)
  {
    v17 = a3;
    if (*(this + 84))
    {
      v7 = *(*(this + 77) + 4 * a3) * a2;
    }

    kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(*(this + 81) + 48 * a3, (*(this + 93) + 48 * a3), v7, a4, a5, a6);
    kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(*(this + 84) + 48 * v17, (*(this + 96) + 48 * v17), v7, v19, v20, v21);
    kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(*(this + 87) + 48 * v17, (*(this + 99) + 48 * v17), v7, v22, v23, v24);
    v28 = *(this + 90) + 32 * v17;
    v29 = (*(this + 102) + 32 * v17);

    kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v28, v29, v25, v26, v27, v7);
  }
}

float kaldi::nnet1::GatedRecurrentUnit::Check(kaldi::nnet1::GatedRecurrentUnit *this)
{
  v1 = *(this + 45);
  v2 = this + *(*this - 24);
  v3 = *(v2 + 3);
  if (v1 != 3 * v3)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v50, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", 812);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Input weights #rows = ", 22);
    v5 = *(this + 45);
    v6 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "; expecting ", 12);
    v7 = *(this + *(*this - 24) + 12);
    v8 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "; output dim = ", 15);
    v9 = *(this + *(*this - 24) + 12);
    std::ostream::operator<<();
    goto LABEL_22;
  }

  if (*(this + 44) != *(v2 + 2))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v50, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", 816);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Input weights #columns = ", 25);
    v10 = *(this + 44);
    v11 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "; expecting ", 12);
    v12 = *(this + *(*this - 24) + 8);
    v13 = std::ostream::operator<<();
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, " (same as input dim)");
    goto LABEL_22;
  }

  if (*(this + 57) != 2 * v3)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v50, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", 820);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Gate recurrent weights #rows = ", 31);
    v14 = *(this + 57);
    v15 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "; expecting ", 12);
    v16 = *(this + *(*this - 24) + 12);
    v17 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "; output dim = ", 15);
    v18 = *(this + *(*this - 24) + 12);
    std::ostream::operator<<();
    goto LABEL_22;
  }

  if (*(this + 56) != v3)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v50, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", 824);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Gate recurrent weights #columns = ", 34);
    v19 = *(this + 56);
    v20 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "; expecting ", 12);
    v21 = *(this + *(*this - 24) + 12);
    v22 = std::ostream::operator<<();
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v22, " (same as output dim)");
    goto LABEL_22;
  }

  if (*(this + 69) != v3)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v50, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", 828);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Activation recurrent weights #rows = ", 37);
    v23 = *(this + 69);
    v24 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "; expecting ", 12);
    v25 = *(this + *(*this - 24) + 12);
    v26 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "; output dim = ", 15);
    v27 = *(this + *(*this - 24) + 12);
    std::ostream::operator<<();
    goto LABEL_22;
  }

  if (*(this + 68) != v3)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v50, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", 832);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Activation recurrent weights #columns = ", 40);
    v28 = *(this + 68);
    v29 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "; expecting ", 12);
    v30 = *(this + *(*this - 24) + 12);
    v31 = std::ostream::operator<<();
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v31, " (same as output dim)");
    goto LABEL_22;
  }

  if (*(this + 80) != v1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v50, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", 836);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Bias dim = ", 11);
    v32 = *(this + 80);
    v33 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "; expecting ", 12);
    v34 = *(this + *(*this - 24) + 12);
    v35 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "; output dim = ", 15);
    v36 = *(this + *(*this - 24) + 12);
    std::ostream::operator<<();
    goto LABEL_22;
  }

  if (*(this + 152) < 0.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v50, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", 841);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "learn_rate_coeff_ must not be negative; found: ", 47);
    v37 = *(this + 152);
    std::ostream::operator<<();
    goto LABEL_22;
  }

  if (*(this + 153) < 0.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v50, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", 844);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "max_norm_ must not be negative; found: ", 39);
    v38 = *(this + 153);
    std::ostream::operator<<();
    goto LABEL_22;
  }

  result = *(this + 38);
  if (result < 0.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v50, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", 847);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "max_grad_ must not be negative; found: ", 39);
    v39 = *(this + 38);
    std::ostream::operator<<();
LABEL_22:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v50);
  }

  return result;
}

unsigned int *kaldi::nnet1::GatedRecurrentUnit::GetHistoryState(uint64_t a1, unsigned int *a2, unsigned int a3, uint64_t a4, const char *a5)
{
  if ((a3 & 0x80000000) != 0 || *(a1 + 80) <= a3)
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", &stru_338.addr + 2, "batch_index >= 0 && batch_index < ropts_.num_subbatches", a5);
  }

  v8 = *(a1 + 8) + 48 * a3;
  kaldi::CuMatrix<float>::Resize(a2, *(v8 + 20), *(v8 + 16), 1u, 0);
  v11 = *(a1 + 8) + 48 * a3;

  return kaldi::CuMatrixBase<float>::CopyFromMat<float>(a2, v11, 111, v9, v10);
}

_DWORD *kaldi::nnet1::GatedRecurrentUnit::GetHistoryState(uint64_t a1, _DWORD *a2, unsigned int a3, uint64_t a4, const char *a5)
{
  if ((a4 & 0x80000000) != 0 || *(a1 + 80) <= a4)
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", &stru_338.size, "batch_index >= 0 && batch_index < ropts_.num_subbatches", a5);
  }

  if ((a3 & 0x80000000) != 0 || (v7 = *(a1 + 8) + 48 * a4, *(v7 + 20) <= a3))
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", &stru_338.size + 1, "sequence_idx >= 0 && sequence_idx < history_state_[batch_index].NumRows()", a5);
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

_DWORD *kaldi::nnet1::GatedRecurrentUnit::SetInternalBoundary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = a3;
  v7 = (a1 + 840);
  v8 = *(a1 + 840);
  if (v8 == *(a1 + 848))
  {
    std::vector<kaldi::CuVector<float>>::resize((a1 + 840), *(a1 + 80), a3, a4, a5);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 864), *(a1 + 80));
    v8 = *(a1 + 840);
  }

  kaldi::CuVector<float>::Resize(v8 + 32 * v5, *(a2 + 16), 1u, a4, a5);
  v13 = (*v7 + 32 * v5);

  return kaldi::CuVectorBase<float>::CopyFromVec(v13, a2, v10, v11, v12);
}

unsigned int *kaldi::nnet1::GatedRecurrentUnit::SetHistoryState(uint64_t a1, uint64_t a2, unsigned int a3)
{
  (*(*a1 + 88))(a1);
  if ((a3 & 0x80000000) != 0 || *(a1 + 80) <= a3)
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", &stru_338.nreloc, "batch_index >= 0 && batch_index < ropts_.num_subbatches", v7);
  }

  v8 = (*(a1 + 8) + 48 * a3);
  if (*(a2 + 20) != v8[5])
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", &stru_338.nreloc + 1, "history.NumRows() == history_state_[batch_index].NumRows()", v7);
  }

  if (*(a2 + 16) != v8[4])
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", &stru_338.nreloc + 2, "history.NumCols() == history_state_[batch_index].NumCols()", v7);
  }

  return kaldi::CuMatrixBase<float>::CopyFromMat<float>(v8, a2, 111, v6, v7);
}

_DWORD *kaldi::nnet1::GatedRecurrentUnit::SetHistoryState(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  (*(*a1 + 88))(a1);
  if ((a4 & 0x80000000) != 0 || *(a1 + 80) <= a4)
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", &stru_338.reserved1 + 2, "batch_index >= 0 && batch_index < ropts_.num_subbatches", v10);
  }

  if (a3 < 0 || (v11 = *(a1 + 8) + 48 * a4, *(v11 + 20) <= a3))
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", &stru_338.reserved1 + 3, "sequence_idx >= 0 && sequence_idx < history_state_[batch_index].NumRows()", v10);
  }

  v12 = *(a2 + 16);
  if (v12 != *(v11 + 16))
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", &stru_338.reserved2, "history.Dim() == history_state_[batch_index].NumCols()", v10);
  }

  v13 = *(v11 + 8) + 4 * *(v11 + 24) * a3;
  v14 = *(v11 + 32);
  v16[1] = v13;
  v16[0] = &off_276FE0;
  v16[2] = v12;
  v16[3] = v14;
  return kaldi::CuVectorBase<float>::CopyFromVec(v16, a2, v8, v9, v10);
}

uint64_t kaldi::nnet1::GatedRecurrentUnit::ResetHistoryState(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, const char *a5)
{
  if ((a4 & 0x80000000) != 0 || *(a1 + 80) <= a4)
  {
    kaldi::KaldiAssertFailure_("ResetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", &stru_338.reserved3 + 1, "batch_index >= 0 && batch_index < ropts_.num_subbatches", a5);
  }

  if (a2[1] != *(*(a1 + 8) + 48 * a4 + 20))
  {
    kaldi::KaldiAssertFailure_("ResetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", &stru_338.reserved3 + 2, "sequence_idx.size() == history_state_[batch_index].NumRows()", a5);
  }

  (*(*a1 + 88))(a1);
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
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v22, "ResetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-gru.cc", 914, 3);
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

void sub_146268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  kaldi::KaldiVlogMessage::~KaldiVlogMessage(&a16);
  std::ostringstream::~ostringstream(&a51);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::GatedRecurrentUnit::ResetHistoryState(kaldi::nnet1::GatedRecurrentUnit *this)
{
  (*(*this + 88))(this);
  for (i = *(this + 1); i != *(this + 2); i += 48)
  {
    kaldi::CuMatrixBase<float>::SetZero(i);
  }
}

void kaldi::nnet1::GatedRecurrentUnit::~GatedRecurrentUnit(kaldi::nnet1::GatedRecurrentUnit *this)
{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 888));
}

{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 888));

  operator delete();
}

void kaldi::nnet1::GatedRecurrentUnit::GetUnitOutputFnc()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v1, "GetUnitOutputFnc", "../subproject/libquasar/libkaldi/src/nnet/nnet-gru.h", 93);
  v0 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "GetUnitOutputFnc", 16);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, " Not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

void virtual thunk tokaldi::nnet1::GatedRecurrentUnit::~GatedRecurrentUnit(kaldi::nnet1::GatedRecurrentUnit *this)
{
  v2 = (v1 + 888);

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
}

{
  kaldi::nnet1::GatedRecurrentUnit::~GatedRecurrentUnit((this + *(*this - 24)));
}

void kaldi::nnet1::GatedRecurrentUnit::~GatedRecurrentUnit(kaldi::nnet1::GatedRecurrentUnit *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[3];
  v6 = (this + 864);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 840);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 816);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 792);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 768);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 744);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 720);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 696);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 672);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 648);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v5 = *(this + 77);
  if (v5)
  {
    *(this + 78) = v5;
    operator delete(v5);
  }

  v6 = (this + 584);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 560);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 536);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 512);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 488);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 464);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 440);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 416);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 392);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 368);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 344);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  kaldi::CuVector<float>::~CuVector(this + 38);
  kaldi::CuMatrix<float>::~CuMatrix(this + 256);
  kaldi::CuMatrix<float>::~CuMatrix(this + 208);
  kaldi::CuMatrix<float>::~CuMatrix(this + 160);
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(this, a2 + 1);
}

kaldi::nnet1::GatedRecurrentUnit *kaldi::nnet1::GatedRecurrentUnit::GatedRecurrentUnit(kaldi::nnet1::GatedRecurrentUnit *this, const kaldi::nnet1::GatedRecurrentUnit *a2)
{
  v4 = a2 + *(*a2 - 24);
  *(this + 111) = off_279038;
  v5 = *(v4 + 1);
  *(this + 452) = *(v4 + 8);
  *(this + 112) = v5;
  *(this + 114) = 0;
  *(this + 116) = 0;
  *(this + 115) = 0;
  std::vector<kaldi::EventMap *>::__init_with_size[abi:ne200100]<kaldi::EventMap **,kaldi::EventMap **>(this + 912, *(v4 + 3), *(v4 + 4), (*(v4 + 4) - *(v4 + 3)) >> 3);
  *(this + 111) = off_27A660;
  *(this + 117) = off_282980;
  v6 = *(v4 + 56);
  *(this + 959) = *(v4 + 71);
  *(this + 59) = v6;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(this, off_280930, a2);
  *this = off_2805A8;
  *(this + 111) = off_280810;
  kaldi::CuMatrix<float>::CuMatrix(this + 160, a2 + 160, 111);
  kaldi::CuMatrix<float>::CuMatrix(this + 208, a2 + 208, 111);
  kaldi::CuMatrix<float>::CuMatrix(this + 256, a2 + 256, 111);
  kaldi::CuVector<float>::CuVector(this + 304, a2 + 304, v7, v8, v9);
  *(this + 168) = *(a2 + 168);
  *(this + 44) = 0;
  *(this + 45) = 0;
  *(this + 43) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 344, *(a2 + 43), *(a2 + 44), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 44) - *(a2 + 43)) >> 4));
  *(this + 46) = 0;
  *(this + 47) = 0;
  *(this + 48) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 368, *(a2 + 46), *(a2 + 47), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 47) - *(a2 + 46)) >> 4));
  *(this + 49) = 0;
  *(this + 50) = 0;
  *(this + 51) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 392, *(a2 + 49), *(a2 + 50), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 50) - *(a2 + 49)) >> 4));
  *(this + 52) = 0;
  *(this + 53) = 0;
  *(this + 54) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 416, *(a2 + 52), *(a2 + 53), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 53) - *(a2 + 52)) >> 4));
  *(this + 55) = 0;
  *(this + 56) = 0;
  *(this + 57) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 440, *(a2 + 55), *(a2 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 56) - *(a2 + 55)) >> 4));
  *(this + 58) = 0;
  *(this + 59) = 0;
  *(this + 60) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 464, *(a2 + 58), *(a2 + 59), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 59) - *(a2 + 58)) >> 4));
  *(this + 61) = 0;
  *(this + 62) = 0;
  *(this + 63) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 488, *(a2 + 61), *(a2 + 62), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 62) - *(a2 + 61)) >> 4));
  *(this + 66) = 0;
  *(this + 32) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 512, *(a2 + 64), *(a2 + 65), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 65) - *(a2 + 64)) >> 4));
  *(this + 69) = 0;
  *(this + 536) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 536, *(a2 + 67), *(a2 + 68), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 68) - *(a2 + 67)) >> 4));
  *(this + 72) = 0;
  *(this + 35) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 560, *(a2 + 70), *(a2 + 71), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 71) - *(a2 + 70)) >> 4));
  *(this + 75) = 0;
  *(this + 584) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 584, *(a2 + 73), *(a2 + 74), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 74) - *(a2 + 73)) >> 4));
  *(this + 76) = *(a2 + 76);
  *(this + 77) = 0;
  *(this + 79) = 0;
  *(this + 78) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 616, *(a2 + 77), *(a2 + 78), (*(a2 + 78) - *(a2 + 77)) >> 2);
  *(this + 640) = *(a2 + 640);
  *(this + 81) = 0;
  *(this + 83) = 0;
  *(this + 82) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 648, *(a2 + 81), *(a2 + 82), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 82) - *(a2 + 81)) >> 4));
  *(this + 86) = 0;
  *(this + 42) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 672, *(a2 + 84), *(a2 + 85), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 85) - *(a2 + 84)) >> 4));
  *(this + 89) = 0;
  *(this + 696) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 696, *(a2 + 87), *(a2 + 88), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 88) - *(a2 + 87)) >> 4));
  *(this + 92) = 0;
  *(this + 45) = 0u;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(this + 720, *(a2 + 90), *(a2 + 91), (*(a2 + 91) - *(a2 + 90)) >> 5);
  *(this + 95) = 0;
  *(this + 744) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 744, *(a2 + 93), *(a2 + 94), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 94) - *(a2 + 93)) >> 4));
  *(this + 98) = 0;
  *(this + 48) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 768, *(a2 + 96), *(a2 + 97), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 97) - *(a2 + 96)) >> 4));
  *(this + 101) = 0;
  *(this + 792) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 792, *(a2 + 99), *(a2 + 100), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 100) - *(a2 + 99)) >> 4));
  *(this + 104) = 0;
  *(this + 51) = 0u;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(this + 816, *(a2 + 102), *(a2 + 103), (*(a2 + 103) - *(a2 + 102)) >> 5);
  *(this + 107) = 0;
  *(this + 840) = 0u;
  std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(this + 840, *(a2 + 105), *(a2 + 106), (*(a2 + 106) - *(a2 + 105)) >> 5);
  *(this + 110) = 0;
  *(this + 54) = 0u;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(this + 864, *(a2 + 108), *(a2 + 109), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 109) - *(a2 + 108)) >> 4));
  return this;
}

void sub_146CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  *(v31 - 88) = v30;
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100]((v31 - 88));
  *(v31 - 88) = v25;
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100]((v31 - 88));
  *(v31 - 88) = v29;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100]((v31 - 88));
  *(v31 - 88) = v28;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100]((v31 - 88));
  *(v31 - 88) = v26;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100]((v31 - 88));
  *(v31 - 88) = v22;
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100]((v31 - 88));
  *(v31 - 88) = v24;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100]((v31 - 88));
  *(v31 - 88) = a10;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100]((v31 - 88));
  *(v31 - 88) = a11;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100]((v31 - 88));
  v33 = *a12;
  if (*a12)
  {
    *(v23 + 78) = v33;
    operator delete(v33);
  }

  *(v31 - 88) = v27;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100]((v31 - 88));
  *(v31 - 88) = a13;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100]((v31 - 88));
  *(v31 - 88) = a14;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100]((v31 - 88));
  *(v31 - 88) = a15;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100]((v31 - 88));
  *(v31 - 88) = a16;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100]((v31 - 88));
  *(v31 - 88) = a17;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100]((v31 - 88));
  *(v31 - 88) = a18;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100]((v31 - 88));
  *(v31 - 88) = a19;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100]((v31 - 88));
  *(v31 - 88) = a20;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100]((v31 - 88));
  *(v31 - 88) = a21;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100]((v31 - 88));
  *(v31 - 88) = a22;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100]((v31 - 88));
  kaldi::CuVector<float>::~CuVector(v23 + 38);
  kaldi::CuMatrix<float>::~CuMatrix(v23 + 256);
  kaldi::CuMatrix<float>::~CuMatrix(v23 + 208);
  kaldi::CuMatrix<float>::~CuMatrix(v23 + 160);
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(v23, off_280930);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(*(v31 - 96));
  _Unwind_Resume(a1);
}

void *std::vector<std::vector<double>>::vector[abi:ne200100](void *result, unint64_t a2)
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

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<int,float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1470E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void kaldi::TransitionModel::~TransitionModel(kaldi::TransitionModel *this)
{
  kaldi::Vector<float>::Destroy(this + 216);
  kaldi::Vector<float>::Destroy(this + 192);
  v2 = *(this + 21);
  if (v2)
  {
    *(this + 22) = v2;
    operator delete(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    *(this + 19) = v3;
    operator delete(v3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    *(this + 16) = v4;
    operator delete(v4);
  }

  v5 = *(this + 12);
  if (v5)
  {
    *(this + 13) = v5;
    operator delete(v5);
  }

  v6 = *(this + 9);
  if (v6)
  {
    *(this + 10) = v6;
    operator delete(v6);
  }

  v9 = (this + 48);
  std::vector<std::vector<kaldi::HmmTopology::HmmState>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v7 = *(this + 3);
  if (v7)
  {
    *(this + 4) = v7;
    operator delete(v7);
  }

  v8 = *this;
  if (*this)
  {
    *(this + 1) = v8;
    operator delete(v8);
  }
}

kaldi::nnet1::LayerNorm *kaldi::nnet1::LayerNorm::LayerNorm(kaldi::nnet1::LayerNorm *this, const kaldi::nnet1::LayerNorm *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  *(this + 1) = *(a2 + 1);
  *(this + 8) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *this = off_280C30;
  *(this + 12) = *(a2 + 12);
  *(this + 52) = *(a2 + 52);
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 7) = off_277020;
  *(this + 8) = 0;
  v7 = this + 88;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 11) = off_277020;
  *(this + 12) = 0;
  kaldi::CuVector<float>::operator=(this + 56, a2 + 56, a3, a4, a5);
  kaldi::CuVector<float>::operator=(v7, a2 + 88, v8, v9, v10);
  return this;
}

void sub_1472E8(_Unwind_Exception *a1)
{
  kaldi::CuVector<float>::~CuVector(v3);
  kaldi::CuVector<float>::~CuVector(v2);
  kaldi::nnet1::Component::~Component(v1);
  _Unwind_Resume(a1);
}

void *kaldi::nnet1::LayerNorm::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a2 + 16) != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-layer-norm-component.cc", &dword_18 + 2, "in.NumCols() == input_dim_", a5);
  }

  v8 = *(a2 + 20);
  v49 = 0;
  v50 = 0;
  v47 = off_277020;
  v48 = 0;
  kaldi::CuVector<float>::Resize(&v47, v8, 0, a4, a5);
  if (*(a2 + 20) >= 1)
  {
    v11 = 0;
    do
    {
      v12 = *(a2 + 8) + 4 * *(a2 + 24) * v11;
      v13 = *(a2 + 16);
      v14 = *(a2 + 32);
      v43 = &off_276FE0;
      v44 = v12;
      v46 = v14;
      v45 = v13;
      v15 = kaldi::CuVectorBase<float>::Sum(&v43);
      if (v11 >= v49)
      {
        kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.h", &stru_B8.reserved3 + 2, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(dim_)", v10);
      }

      *(v48 + 4 * v11++) = *&v15 / v45;
    }

    while (v11 < *(a2 + 20));
  }

  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, a2, 111, v9, v10);
  kaldi::CuMatrixBase<float>::AddVecToCols(a3, &v47, v16, v17, v18, -1.0, 1.0);
  v19 = *(a2 + 20);
  v45 = 0;
  v46 = 0;
  v43 = off_277020;
  v44 = 0;
  kaldi::CuVector<float>::Resize(&v43, v19, 0, v20, v21);
  if (*(a2 + 20) >= 1)
  {
    v25 = 0;
    do
    {
      if (v25 >= *(a3 + 20))
      {
        kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v24);
      }

      v26 = *(a3 + 16);
      v27 = *(a3 + 32);
      v42[1] = *(a3 + 8) + 4 * *(a3 + 24) * v25;
      v42[0] = &off_276FE0;
      v42[2] = v26;
      v42[3] = v27;
      kaldi::CuVector<float>::CuVector(v40);
      kaldi::CuVectorBase<float>::MulElements(v40, v42, v28, v29, v30);
      v32 = kaldi::CuVectorBase<float>::Sum(v40);
      if (v25 >= v45)
      {
        kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-vector.h", &stru_B8.reserved3 + 2, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(dim_)", v31);
      }

      *(v44 + 4 * v25) = 1.0 / (*(a1 + 48) + sqrtf(*&v32 / (v41 - *(a1 + 52))));
      kaldi::CuVector<float>::~CuVector(v40);
      ++v25;
    }

    while (v25 < *(a2 + 20));
  }

  kaldi::CuMatrixBase<float>::MulRowsVec(a3, &v43, v22, v23, v24);
  kaldi::CuMatrixBase<float>::MulColsVec(a3, a1 + 56, v33, v34, v35);
  kaldi::CuMatrixBase<float>::AddVecToRows(a3, a1 + 88, v36, v37, v38, 1.0, 1.0);
  kaldi::CuVector<float>::~CuVector(&v43);
  return kaldi::CuVector<float>::~CuVector(&v47);
}

void sub_147618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  kaldi::CuVector<float>::~CuVector(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::LayerNorm::Info(kaldi::nnet1::LayerNorm *this)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v29);
  kaldi::WriteToken(&v30, 0, "<Epsilon>", v2, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, " ", 1);
  v4 = *(this + 12);
  std::ostream::operator<<();
  kaldi::WriteToken(&v30, 0, "<UnbiasedVar>", v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, " ", 1);
  v7 = *(this + 52);
  std::ostream::operator<<();
  kaldi::WriteToken(&v30, 0, "<Gamma>", v8, v9);
  kaldi::nnet1::MomentStatistics<float>(this + 14, v10, v11, v12, v13);
  if ((v28 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v28 & 0x80u) == 0)
  {
    v15 = v28;
  }

  else
  {
    v15 = v27;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, p_p, v15);
  if (v28 < 0)
  {
    operator delete(__p);
  }

  kaldi::WriteToken(&v30, 0, "<Beta>", v16, v17);
  kaldi::nnet1::MomentStatistics<float>(this + 22, v18, v19, v20, v21);
  if ((v28 & 0x80u) == 0)
  {
    v22 = &__p;
  }

  else
  {
    v22 = __p;
  }

  if ((v28 & 0x80u) == 0)
  {
    v23 = v28;
  }

  else
  {
    v23 = v27;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, v22, v23);
  if (v28 < 0)
  {
    operator delete(__p);
  }

  std::stringbuf::str();
  v30 = v24;
  if (v33 < 0)
  {
    operator delete(v32[7].__locale_);
  }

  std::locale::~locale(v32);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1478F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LayerNorm::ReadData(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (kaldi::g_kaldi_verbose_level >= 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v33, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-layer-norm-component.cc", 64, 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "Reading LayerNorm component", 27);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v33);
  }

  __p = 0uLL;
  v32 = 0;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (kaldi::Peek(a2, a3) != 60)
        {
          goto LABEL_63;
        }

        kaldi::ReadToken(a2, a3, &__p, v6, v7);
        if ((SHIBYTE(v32) & 0x80000000) == 0)
        {
          break;
        }

        if (*(&__p + 1) == 9 && *__p == 0x6E6F6C697370453CLL && *(__p + 8) == 62)
        {
          goto LABEL_52;
        }

        if (*(&__p + 1) == 13 && *__p == 0x65736169626E553CLL && *(__p + 5) == 0x3E72615664657361)
        {
          goto LABEL_39;
        }

        if (*(&__p + 1) != 6)
        {
          if (*(&__p + 1) != 7)
          {
            goto LABEL_54;
          }

          v12 = *__p == 1835091772 && *(__p + 3) == 1046572397;
          v13 = a1 + 56;
          if (!v12)
          {
            goto LABEL_54;
          }

          goto LABEL_46;
        }

        v14 = __p;
LABEL_41:
        v16 = *v14;
        v17 = *(v14 + 2);
        v18 = v16 == 1952793148 && v17 == 15969;
        v13 = a1 + 88;
        if (!v18)
        {
          if (v32 < 0)
          {
LABEL_54:
            if (*(&__p + 1) == 12)
            {
              v20 = __p;
              goto LABEL_58;
            }
          }

LABEL_69:
          kaldi::KaldiErrorMessage::KaldiErrorMessage(v33, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-layer-norm-component.cc", 80);
          v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "Unrecognized token ", 19);
          if (v32 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if (v32 >= 0)
          {
            v28 = HIBYTE(v32);
          }

          else
          {
            v28 = *(&__p + 1);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, p_p, v28);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(v33);
        }

LABEL_46:
        kaldi::CuVector<float>::Read(v13, a2, a3, v8, v7);
      }

      if (HIBYTE(v32) <= 8u)
      {
        if (HIBYTE(v32) != 6)
        {
          if (HIBYTE(v32) != 7)
          {
            goto LABEL_69;
          }

          v15 = __p == 1835091772 && *(&__p + 3) == 1046572397;
          v13 = a1 + 56;
          if (!v15)
          {
            goto LABEL_69;
          }

          goto LABEL_46;
        }

        v14 = &__p;
        goto LABEL_41;
      }

      if (HIBYTE(v32) != 9)
      {
        break;
      }

      if (__p != 0x6E6F6C697370453CLL || BYTE8(__p) != 62)
      {
        goto LABEL_69;
      }

LABEL_52:
      kaldi::ReadBasicType<float>(a2, a3, (a1 + 48), v8, v7);
    }

    if (HIBYTE(v32) != 13)
    {
      break;
    }

    if (__p != 0x65736169626E553CLL || *(&__p + 5) != 0x3E72615664657361)
    {
      goto LABEL_69;
    }

LABEL_39:
    kaldi::ReadBasicType<BOOL>(a2, a3, (a1 + 52), v8, v7);
  }

  if (HIBYTE(v32) != 12)
  {
    goto LABEL_69;
  }

  v20 = &__p;
LABEL_58:
  v21 = *v20;
  v22 = *(v20 + 2);
  if (v21 != 0x6E6F706D6F432F3CLL || v22 != 1047817829)
  {
    goto LABEL_69;
  }

LABEL_63:
  v24 = *(a1 + 104);
  if (v24 != *(a1 + 72))
  {
    v29 = "beta_.Dim() == gamma_.Dim()";
    v30 = (&stru_20 + 52);
    goto LABEL_79;
  }

  v25 = *(a1 + 8);
  if (v25 != *(a1 + 12))
  {
    v29 = "input_dim_ == output_dim_";
    v30 = (&stru_20 + 53);
    goto LABEL_79;
  }

  if (v24 != v25)
  {
    v29 = "beta_.Dim() == output_dim_";
    v30 = &stru_20.filesize + 6;
LABEL_79:
    kaldi::KaldiAssertFailure_("ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-layer-norm-component.cc", v30, v29, v7);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p);
  }
}

void sub_147D1C(_Unwind_Exception *a1)
{
  if (v3 < 0)
  {
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

void *kaldi::nnet1::LayerNorm::WriteData(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<Epsilon>", a4, a5);
  v8 = *(a1 + 48);
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<UnbiasedVar>", v9, v10);
  kaldi::WriteBasicType<BOOL>(a2, a3, *(a1 + 52));
  kaldi::WriteToken(a2, a3, "<Gamma>", v11, v12);
  kaldi::CuVectorBase<float>::Write((a1 + 56), a2, a3, v13, v14);
  kaldi::WriteToken(a2, a3, "<Beta>", v15, v16);
  kaldi::CuVectorBase<float>::Write((a1 + 88), a2, a3, v17, v18);

  return kaldi::WriteToken(a2, a3, "</Component>", v19, v20);
}

void kaldi::nnet1::LayerNorm::~LayerNorm(kaldi::nnet1::LayerNorm *this)
{
  kaldi::nnet1::LayerNorm::~LayerNorm(this);

  operator delete();
}

{
  *this = off_280C30;
  v2 = (this + 56);
  kaldi::CuVector<float>::~CuVector(this + 11);
  kaldi::CuVector<float>::~CuVector(v2);

  kaldi::nnet1::Component::~Component(this);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(uint64_t a1, int a2)
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

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(uint64_t a1, int a2)
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

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(uint64_t a1, int a2)
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

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(uint64_t a1, int a2)
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

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(uint64_t a1, int a2)
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

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InitResidualAggregator(uint64_t a1, uint64_t *a2)
{
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::AllocateGradients(a1);
  if (*(a1 + *(*a1 - 24) + 80) == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + *(*a1 - 24) + 80);
  }

  v5 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::InputWeightsGradient(a1, v4);
  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v5);
  v6 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::RecurrentWeightsGradient(a1, v4);
  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v6);
  v7 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::BiasGradient(a1, v4);
  result = kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v7);
  if (*(a1 + 208) == 1)
  {
    v9 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::PeepholeWeightsGradient(a1, v4);
    result = kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v9);
  }

  if (*(a1 + 224) == 1)
  {
    v10 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::ProjectionWeightsGradient(a1, v4);

    return kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v10);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<signed char>>::LstmComponent<kaldi::CuMatrixBase<float>>(uint64_t a1, uint64_t a2)
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
        v15 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a2, v14);
        kaldi::NewCuSubOrMat<float>(v15, 0);
      }

      if (*(*(a2 + 560) + 8 * v14))
      {
        v16 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a2, v14);
        kaldi::NewCuSubOrMat<float>(v16, 0);
      }

      if (*(*(a2 + 608) + 8 * v14))
      {
        kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a2, v14);
        kaldi::NewCuSubOrVec<float>();
      }

      if (*(a1 + 208) == 1 && *(*(a2 + 584) + 8 * v14))
      {
        v17 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a2, v14);
        kaldi::NewCuSubOrMat<float>(v17, 0);
      }

      if (*(a1 + 224) == 1 && *(*(a2 + 632) + 8 * v14))
      {
        v18 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a2, v14);
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

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InitResidualAggregator(uint64_t a1, uint64_t *a2)
{
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::AllocateGradients(a1);
  if (*(a1 + *(*a1 - 24) + 80) == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + *(*a1 - 24) + 80);
  }

  v5 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeightsGradient(a1, v4);
  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v5);
  v6 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeightsGradient(a1, v4);
  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v6);
  v7 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::BiasGradient(a1, v4);
  result = kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v7);
  if (*(a1 + 208) == 1)
  {
    v9 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(a1, v4);
    result = kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v9);
  }

  if (*(a1 + 224) == 1)
  {
    v10 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeightsGradient(a1, v4);

    return kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v10);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::LstmComponent<kaldi::CuMatrixBase<float>>(uint64_t a1, uint64_t a2)
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
        v15 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a2, v14);
        kaldi::NewCuSubOrMat<float>(v15, 0);
      }

      if (*(*(a2 + 560) + 8 * v14))
      {
        v16 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a2, v14);
        kaldi::NewCuSubOrMat<float>(v16, 0);
      }

      if (*(*(a2 + 608) + 8 * v14))
      {
        kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a2, v14);
        kaldi::NewCuSubOrVec<float>();
      }

      if (*(a1 + 208) == 1 && *(*(a2 + 584) + 8 * v14))
      {
        v17 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a2, v14);
        kaldi::NewCuSubOrMat<float>(v17, 0);
      }

      if (*(a1 + 224) == 1 && *(*(a2 + 632) + 8 * v14))
      {
        v18 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a2, v14);
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

double kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::LstmComponent(uint64_t a1, int a2, int a3)
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
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(a1, off_2819A0);
  *v4 = off_281590;
  *(v4 + 848) = off_281880;
  *(v4 + 160) = off_281720;
  *(v4 + 168) = off_281748;
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

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InitResidualAggregator(uint64_t a1, uint64_t *a2)
{
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::AllocateGradients(a1);
  if (*(a1 + *(*a1 - 24) + 80) == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + *(*a1 - 24) + 80);
  }

  v5 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a1, v4);
  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v5);
  v6 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a1, v4);
  kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v6);
  v7 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a1, v4);
  result = kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v7);
  if (*(a1 + 208) == 1)
  {
    v9 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a1, v4);
    result = kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v9);
  }

  if (*(a1 + 224) == 1)
  {
    v10 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, v4);

    return kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, v10);
  }

  return result;
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::LstmComponent(uint64_t a1, uint64_t a2)
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
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(a1, off_2819A0, a2);
  *a1 = off_281590;
  *(a1 + 848) = off_281880;
  *(a1 + 160) = off_281720;
  *(a1 + 168) = off_281748;
  v7 = *(a2 + 176);
  *(a1 + 184) = 0;
  *(a1 + 176) = v7;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = 0;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = 0;
  LOBYTE(v7) = *(a2 + 240);
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "LstmComponent", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 151);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "deep copy constructor not implemented in the case of vectorized_weights.", 72);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v25);
  }

  v10 = *(a2 + 184);
  if (v10)
  {
    kaldi::NewCuSubOrMat<float>(v10, 0);
  }

  v11 = *(a2 + 192);
  if (v11)
  {
    kaldi::NewCuSubOrMat<float>(v11, 0);
  }

  if (*(a2 + 200))
  {
    kaldi::NewCuSubOrVec<float>();
  }

  v12 = *(a2 + 216);
  if (v12)
  {
    kaldi::NewCuSubOrMat<float>(v12, 0);
  }

  v13 = *(a2 + 232);
  if (v13)
  {
    kaldi::NewCuSubOrMat<float>(v13, 0);
  }

  v14 = *(a1 + 544);
  v15 = *(a1 + 536);
  v16 = v14 - v15;
  if (v14 - v15 != *(a1 + 568) - *(a1 + 560))
  {
    v23 = "input_weights_gradient_.size() == recurrent_weights_gradient_.size()";
    p_flags = (&stru_68 + 58);
    goto LABEL_41;
  }

  if (v16 != *(a1 + 616) - *(a1 + 608))
  {
    v23 = "input_weights_gradient_.size() == bias_gradient_.size()";
    p_flags = (&stru_68 + 59);
    goto LABEL_41;
  }

  if (*(a1 + 208) == 1 && v16 != *(a1 + 592) - *(a1 + 584))
  {
    v23 = "input_weights_gradient_.size() == peephole_weights_gradient_.size()";
    p_flags = (&stru_68 + 61);
    goto LABEL_41;
  }

  if (*(a1 + 224) == 1 && v16 != *(a1 + 640) - *(a1 + 632))
  {
    v23 = "input_weights_gradient_.size() == projection_weights_gradient_.size()";
    p_flags = &stru_68.flags;
LABEL_41:
    kaldi::KaldiAssertFailure_("LstmComponent", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", p_flags, v23, v9);
  }

  if (v14 != v15)
  {
    v17 = 0;
    do
    {
      if (*(*(a2 + 536) + 8 * v17))
      {
        v18 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a2, v17);
        kaldi::NewCuSubOrMat<float>(v18, 0);
      }

      if (*(*(a2 + 560) + 8 * v17))
      {
        v19 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a2, v17);
        kaldi::NewCuSubOrMat<float>(v19, 0);
      }

      if (*(*(a2 + 608) + 8 * v17))
      {
        kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a2, v17);
        kaldi::NewCuSubOrVec<float>();
      }

      if (*(a1 + 208) == 1 && *(*(a2 + 584) + 8 * v17))
      {
        v20 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a2, v17);
        kaldi::NewCuSubOrMat<float>(v20, 0);
      }

      if (*(a1 + 224) == 1 && *(*(a2 + 632) + 8 * v17))
      {
        v21 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a2, v17);
        kaldi::NewCuSubOrMat<float>(v21, 0);
      }

      ++v17;
    }

    while (v17 < (*(a1 + 544) - *(a1 + 536)) >> 3);
  }

  if (*(a2 + 784) != *(a2 + 776))
  {
    kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InitResidualAggregator(a1, (a1 + 776));
  }

  return a1;
}

void sub_14B070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, kaldi::nnet1::UpdatableComponent *a24, uint64_t *a25, uint64_t a26)
{
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v27);
  a26 = a9;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a10;
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a11;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a12;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a13;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a26);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a26);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a26);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a26);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a26);
  v29 = *(v26 + 63);
  if (v29)
  {
    *(v26 + 64) = v29;
    operator delete(v29);
  }

  v30 = *(v26 + 60);
  if (v30)
  {
    *(v26 + 61) = v30;
    operator delete(v30);
  }

  a26 = a14;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a15;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a16;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a17;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a18;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a19;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a20;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = a21;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a26);
  v31 = *(v26 + 29);
  *(v26 + 29) = 0;
  if (v31)
  {
    (*(*v31 + 24))(v31);
  }

  v32 = *(v26 + 27);
  *(v26 + 27) = 0;
  if (v32)
  {
    (*(*v32 + 24))(v32);
  }

  v33 = *(v26 + 25);
  *(v26 + 25) = 0;
  if (v33)
  {
    (*(*v33 + 16))(v33);
  }

  v34 = *(v26 + 24);
  *(v26 + 24) = 0;
  if (v34)
  {
    (*(*v34 + 24))(v34);
  }

  v35 = *a25;
  *a25 = 0;
  if (v35)
  {
    (*(*v35 + 24))(v35);
  }

  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a22);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a23);
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(v26, off_2819A0);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a24);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::~LstmComponent(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[3];
  *(a1 + 160) = off_281720;
  *(a1 + 168) = off_281748;
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator((a1 + 776));
  v12 = (a1 + 752);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 728);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 704);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 680);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 656);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 632);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 608);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 584);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 560);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 536);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v12);
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

  v12 = (a1 + 440);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 416);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 392);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 368);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 344);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 320);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 296);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 272);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 248);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v7 = *(a1 + 232);
  *(a1 + 232) = 0;
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  v8 = *(a1 + 216);
  *(a1 + 216) = 0;
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  v9 = *(a1 + 200);
  *(a1 + 200) = 0;
  if (v9)
  {
    (*(*v9 + 16))(v9);
  }

  v10 = *(a1 + 192);
  *(a1 + 192) = 0;
  if (v10)
  {
    (*(*v10 + 24))(v10);
  }

  v11 = *(a1 + 184);
  *(a1 + 184) = 0;
  if (v11)
  {
    (*(*v11 + 24))(v11);
  }

  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1 + 168);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a1 + 160);
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(a1, a2 + 1);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::~LstmComponent(uint64_t a1)
{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v2 + 848));
  return a1;
}

void non-virtual thunk tokaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::~LstmComponent(uint64_t a1)
{

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((a1 + 688));
}

{

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((a1 + 680));
}

{
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::~LstmComponent(a1 - 160);
}

{
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::~LstmComponent(a1 - 168);
}

void virtual thunk tokaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::~LstmComponent(void *a1)
{
  v2 = (v1 + 848);

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
}

{
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::~LstmComponent(a1 + *(*a1 - 24));
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::~LstmComponent(uint64_t a1)
{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 848));

  operator delete();
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InitData(uint64_t a1, uint64_t *a2)
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
          kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::AllocateParams(a1, v73);
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

void sub_14C718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::AllocateParams(uint64_t a1, int a2)
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

uint64_t kaldi::nnet1::RandMatrix<kaldi::CuMatrixBase<float>>(kaldi::UniformRandomNumber *a1, kaldi::GaussRandomNumber *a2, int a3, uint64_t a4, float a5)
{
  kaldi::Matrix<float>::Matrix(&v23, *(a4 + 20), *(a4 + 16), 0, 0);
  v10 = 0;
LABEL_2:
  if (v10 < kaldi::ContextDependency::CentralPosition(&v23))
  {
    for (i = 0; ; ++i)
    {
      if (i >= kaldi::ContextDependency::ContextWidth(&v23))
      {
        ++v10;
        goto LABEL_2;
      }

      if (a3)
      {
        if (a3 == 2)
        {
          kaldi::GaussRandomNumber::Rand(a2, 0, v14, v15, v16);
          if (v10 >= v25 || i >= v24)
          {
            goto LABEL_25;
          }

          v18 = v23 + 4 * v10 * v26;
          v19 = v20 * a5;
        }

        else
        {
          if (a3 != 1)
          {
            continue;
          }

          v17 = kaldi::UniformRandomNumber::RandUniform(a1, 0, v14, v15, v16);
          if (v10 >= v25 || i >= v24)
          {
            goto LABEL_25;
          }

          v18 = v23 + 4 * v10 * v26;
          v19 = (v17 + -0.5) * (a5 + a5);
        }
      }

      else
      {
        if (v10 >= v25 || i >= v24)
        {
LABEL_25:
          kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_B8.segname[5], "static_cast<UnsignedMatrixIndexT>(r) < static_cast<UnsignedMatrixIndexT>(num_rows_) && static_cast<UnsignedMatrixIndexT>(c) < static_cast<UnsignedMatrixIndexT>(num_cols_)", v16);
        }

        v18 = v23 + 4 * v10 * v26;
        if (v10 == i)
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

  kaldi::CuMatrixBase<float>::CopyFromMat(a4, &v23, 111, v11, v12);
  return kaldi::Matrix<float>::~Matrix(&v23);
}

void sub_14CF50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(uint64_t a1)
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

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(uint64_t a1)
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

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(uint64_t a1)
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

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(uint64_t a1)
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

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(uint64_t a1)
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

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ReadData(uint64_t *a1, uint64_t *a2, int a3)
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
      v45 = *(a1 + 44);
      v46 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, ") should not be less than output dim (", 38);
      v47 = *(a1 + *(*a1 - 24) + 12);
      v48 = std::ostream::operator<<();
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v48, ").");
    }

    else
    {
      *(a1 + 224) = v38 > v40;
      if (!a1[23])
      {
        v41 = a1 + *(v39 - 24);
        operator new();
      }

      kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 436);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "input_weights_ thougth to be un-initialized here");
    }

    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }

  while (1)
  {
    v51 = 0;
    v52 = 0;
    v53 = 0;
    kaldi::ReadToken(a2, a3, &v51, v6, v7);
    if (SHIBYTE(v53) < 0)
    {
      if (v52 != 10 || (*v51 == 0x6C6C65436D754E3CLL ? (v11 = *(v51 + 4) == 15987) : (v11 = 0), !v11))
      {
        if (v52 != 15)
        {
          v16 = v52;
          if (v52 == 25)
          {
            goto LABEL_33;
          }

          goto LABEL_44;
        }

        v10 = v51;
LABEL_13:
        v12 = *v10;
        v13 = *(v10 + 7);
        v14 = v12 == 0x61526E7261654C3CLL && v13 == 0x3E66656F43657461;
        v15 = (a1 + 58);
        if (v14)
        {
          goto LABEL_109;
        }

        v16 = v52;
        if (v53 < 0 && v52 == 25)
        {
LABEL_33:
          v21 = *v51 == 0x7463656A6F72503CLL && v51[1] == 0x6E7261654C6E6F69 && v51[2] == 0x66656F4365746152 && *(v51 + 24) == 62;
          v15 = a1 + 117;
          if (!v21)
          {
LABEL_116:
            kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 424);
            v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "unrecognized config token ", 26);
            if (v53 >= 0)
            {
              v43 = &v51;
            }

            else
            {
              v43 = v51;
            }

            if (v53 >= 0)
            {
              v44 = HIBYTE(v53);
            }

            else
            {
              v44 = v52;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, v43, v44);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
          }

          goto LABEL_109;
        }

        if (v53 < 0)
        {
LABEL_44:
          if (v16 == 9)
          {
            v22 = *v51 == 0x6D726F4E78614D3CLL && *(v51 + 8) == 62;
            v15 = (a1 + 59);
            if (v22)
            {
              goto LABEL_109;
            }

            if (v53 < 0)
            {
              v34 = *v51 == 0x6C6C654378614D3CLL && *(v51 + 8) == 62;
              v15 = a1 + 119;
              if (!v34)
              {
                v32 = v51;
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
            v33 = *v51;
            goto LABEL_97;
          }

          if (v16 != 18)
          {
            goto LABEL_116;
          }

          if (*v51 != 0x4374757074754F3CLL || v51[1] != 0x65756C61566C6C65 || *(v51 + 8) != 15987)
          {
            if (*v51 == 0x6E6569646172473CLL && v51[1] == 0x7079546D726F4E74 && *(v51 + 8) == 15973)
            {
              goto LABEL_73;
            }

            if (HIBYTE(v53) != 9)
            {
              goto LABEL_116;
            }

LABEL_93:
            v32 = &v51;
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
        if (HIBYTE(v53) == 9)
        {
          v18 = v51 == 0x6D726F4E78614D3CLL && v52 == 62;
          v15 = (a1 + 59);
          if (v18)
          {
            goto LABEL_109;
          }

LABEL_53:
          v23 = v51 == 0x6C6C654378614D3CLL && v52 == 62;
          v15 = a1 + 119;
          if (v23)
          {
            goto LABEL_109;
          }

          goto LABEL_93;
        }

LABEL_50:
        if (HIBYTE(v53) == 8)
        {
          v33 = v51;
LABEL_97:
          if (v33 != 0x3E706565506F4E3CLL)
          {
            goto LABEL_116;
          }

          *(a1 + 208) = 0;
          goto LABEL_110;
        }

        if (HIBYTE(v53) != 18)
        {
          if (HIBYTE(v53) != 9)
          {
            goto LABEL_116;
          }

          goto LABEL_53;
        }

        if (v51 != 0x4374757074754F3CLL || v52 != 0x65756C61566C6C65 || v53 != 15987)
        {
          if (v51 != 0x6E6569646172473CLL || v52 != 0x7079546D726F4E74 || v53 != 15973)
          {
            goto LABEL_116;
          }

LABEL_73:
          __p[0] = 0;
          __p[1] = 0;
          v50 = 0;
          kaldi::ReadToken(a2, a3, __p, v8, v9);
          *(a1 + 39) = kaldi::nnet1::Component::MarkerToGradientNormType(__p);
          if (SHIBYTE(v50) < 0)
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
      if (HIBYTE(v53) != 10)
      {
        if (HIBYTE(v53) == 15)
        {
          v10 = &v51;
          goto LABEL_13;
        }

        goto LABEL_25;
      }

      if (v51 != 0x6C6C65436D754E3CLL || v52 != 15987)
      {
        goto LABEL_25;
      }
    }

    kaldi::ReadBasicType<int>(a2, a3, (a1 + 22), v8, v9);
LABEL_110:
    if (SHIBYTE(v53) < 0)
    {
      operator delete(v51);
    }

    if (kaldi::Peek(a2, a3) != 60)
    {
      goto LABEL_113;
    }
  }
}

void *kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::WriteConfig(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
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

void sub_14DECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::WriteData(_BYTE *a1, void *a2, uint64_t a3, int a4)
{
  (*(*a1 + 128))(a1);
  (*(*a1 + 192))(a1, a2, a3);
  v8 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
  kaldi::CuMatrixBase<float>::Write(v8, a2, a3, a4);
  v9 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
  kaldi::CuMatrixBase<float>::Write(v9, a2, a3, a4);
  if (a1[208] == 1)
  {
    v10 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
    kaldi::CuMatrixBase<float>::Write(v10, a2, a3, a4);
  }

  v11 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
  kaldi::CuVectorBase<float>::Write(v11, a2, a3, v12, v13);
  if (a1[224] == 1)
  {
    v14 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);

    kaldi::CuMatrixBase<float>::Write(v14, a2, a3, a4);
  }
}