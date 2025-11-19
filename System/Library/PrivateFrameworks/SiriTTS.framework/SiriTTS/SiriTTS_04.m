void sub_1C2FD8748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, std::__shared_weak_count *a33, uint64_t a34, std::__shared_weak_count *a35, uint64_t a36, std::__shared_weak_count *a37, uint64_t a38, std::__shared_weak_count *a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a33);
  }

  if (a35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a35);
  }

  if (a37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a37);
  }

  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a39);
  }

  if (a49 < 0)
  {
    operator delete(__p);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  if (*(v64 - 217) < 0)
  {
    operator delete(*(v64 - 240));
  }

  if (*(v64 - 185) < 0)
  {
    operator delete(*(v64 - 208));
  }

  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  _Unwind_Resume(exception_object);
}

void Agglomerate::set<std::shared_ptr<FastSpeechDecoderFeature>>(uint64_t a1, uint64_t *a2)
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

void Agglomerate::set<std::shared_ptr<TacotronFeature>>(uint64_t a1, uint64_t *a2)
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

void SoundStormInference::inference()
{
  v5 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v0 = Diagnostics_GetLogObject(void)::__profile_log_default;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_1C2F95000, v0, OS_LOG_TYPE_INFO, "SoundStorm inference begin.", &buf, 2u);
  }

  Diagnostics::log(6, "SoundStorm inference begin.", v1);
  std::chrono::steady_clock::now();
  v2 = std::string::basic_string[abi:ne200100]<0>(&buf, "disableInferenceRetry");
  InternalSettings::get_BOOL_for_key(v2);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  Diagnostics::get_log_path(&v4);
  if (SHIBYTE(v4.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&buf, v4.__pn_.__r_.__value_.__l.__data_, v4.__pn_.__r_.__value_.__l.__size_);
    if (SHIBYTE(v4.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v4.__pn_.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    buf = v4.__pn_;
  }

  operator new();
}

void sub_1C2FD954C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (*(v32 - 137) < 0)
  {
    operator delete(*(v32 - 160));
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  _Unwind_Resume(a1);
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

uint64_t std::__function::__value_func<int ()(std::shared_ptr<AcousticFeature>,BOOL)>::~__value_func[abi:ne200100](uint64_t a1)
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

void __Block_byref_object_dispose__4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void __Block_byref_object_dispose_(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void Agglomerate::ItemHolder<std::shared_ptr<SemanticFeature>>::~ItemHolder(void *a1)
{
  *a1 = &unk_1F42F2320;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1C692AE10);
}

void kaldi::quasar::TorchEncoderDecoder::EncFeedforward(uint64_t a1, uint64_t a2, int a3)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  v6 = kaldi::quasar::TimeBlock::TimeBlock(v100, (a1 + 4056), a1 + 4104, &__p);
  if (SHIBYTE(v93) < 0)
  {
    operator delete(__p);
  }

  v7 = *(a1 + 3408);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 3416) - v7) >> 4) <= a3)
  {
    v6 = std::vector<kaldi::CuMatrix<float>>::resize((a1 + 3408), a3 + 1);
    v7 = *(a1 + 3408);
  }

  *(a1 + 3512) = a3;
  v8 = *(v7 + 48 * a3 + 20);
  if (*(a1 + 3915))
  {
    v94 = 0u;
    v93 = 0u;
    __p = &unk_1F42BFED8;
    v95 = 0;
    kaldi::quasar::TorchEncoderDecoder::AddPositionEmbedding(v6, v8, a2, &__p, 1);
    kaldi::nnet1::Nnet::Feedforward((a1 + 8), &__p, a1 + 3120, 0xFFFFFFFF, 0);
    kaldi::CuMatrix<float>::~CuMatrix(&__p);
  }

  else
  {
    kaldi::nnet1::Nnet::Feedforward((a1 + 8), a2, a1 + 3120, 0xFFFFFFFF, 0);
  }

  kaldi::nnet1::Nnet::GetHistoricalComponents((a1 + 8), &v98);
  kaldi::nnet1::Nnet::GetHistoricalComponents(*(a1 + 1136), &v96);
  if (*(a1 + 3504) == 1)
  {
    if (v8 >= 1)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "EncFeedforward", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 416);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Handover is not supported for stream input.", 43);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
    }

    if (*(a1 + 3506) == 1)
    {
      if (*(a1 + 3548) == 3)
      {
        if (*(a1 + 3505))
        {
          kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "EncFeedforward", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 420);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Model type requires full handover.", 34);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
        }

        v9 = v98;
        if (v99 != v98)
        {
          v10 = 0;
          do
          {
            v94 = 0u;
            v93 = 0u;
            __p = &unk_1F42BFED8;
            v95 = 0;
            (*(*v9[v10] + 40))(v9[v10], &__p, 0);
            kaldi::CuMatrix<float>::CuMatrix(&v88, 1, (2 * *(a1 + 3976)), 0, 0, 0);
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v85, &v88, 0, SHIDWORD(v89), 0, *(a1 + 3976));
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v81, &__p, 0, SHIDWORD(v93), 0, *(a1 + 3976));
            kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v85, &v81, 111, v11, v12);
            v81 = &unk_1F42BFE90;
            v82 = 0u;
            v83 = 0u;
            kaldi::CuMatrixBase<float>::~CuMatrixBase(&v81);
            v85 = &unk_1F42BFE90;
            v86 = 0u;
            v87 = 0u;
            kaldi::CuMatrixBase<float>::~CuMatrixBase(&v85);
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v85, &v88, 0, SHIDWORD(v89), *(a1 + 3976), *(a1 + 3976));
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v81, &__p, 0, SHIDWORD(v93), (2 * *(a1 + 3976)), *(a1 + 3976));
            kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v85, &v81, 111, v13, v14);
            v81 = &unk_1F42BFE90;
            v82 = 0u;
            v83 = 0u;
            kaldi::CuMatrixBase<float>::~CuMatrixBase(&v81);
            v85 = &unk_1F42BFE90;
            v86 = 0u;
            v87 = 0u;
            kaldi::CuMatrixBase<float>::~CuMatrixBase(&v85);
            kaldi::CuMatrix<float>::CuMatrix(&v85, 1, (2 * *(a1 + 3976)), 0, 0, 0);
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v81, &v85, 0, SHIDWORD(v86), 0, *(a1 + 3976));
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v77, &__p, 0, SHIDWORD(v93), *(a1 + 3976), *(a1 + 3976));
            kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v81, &v77, 111, v15, v16);
            v77 = &unk_1F42BFE90;
            v78 = 0u;
            v79 = 0u;
            kaldi::CuMatrixBase<float>::~CuMatrixBase(&v77);
            v81 = &unk_1F42BFE90;
            v82 = 0u;
            v83 = 0u;
            kaldi::CuMatrixBase<float>::~CuMatrixBase(&v81);
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v81, &v85, 0, SHIDWORD(v86), *(a1 + 3976), *(a1 + 3976));
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v77, &__p, 0, SHIDWORD(v93), (3 * *(a1 + 3976)), *(a1 + 3976));
            kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v81, &v77, 111, v17, v18);
            v77 = &unk_1F42BFE90;
            v78 = 0u;
            v79 = 0u;
            kaldi::CuMatrixBase<float>::~CuMatrixBase(&v77);
            v81 = &unk_1F42BFE90;
            v82 = 0u;
            v83 = 0u;
            kaldi::CuMatrixBase<float>::~CuMatrixBase(&v81);
            v83 = 0u;
            v82 = 0u;
            v81 = &unk_1F42BFED8;
            v84 = 0;
            kaldi::nnet1::Nnet::Feedforward((a1 + 1552), &v88, &v81, 0xFFFFFFFF, 0);
            v79 = 0u;
            v78 = 0u;
            v77 = &unk_1F42BFED8;
            v80 = 0;
            kaldi::nnet1::Nnet::Feedforward((a1 + 1176), &v85, &v77, 0xFFFFFFFF, 0);
            kaldi::CuMatrix<float>::CuMatrix(v75, 1, (2 * *(a1 + 3976)), 0, 0, 0);
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v72, v75, 0, v76, 0, *(a1 + 3976));
            kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v72, &v81, 111, v19, v20);
            v72 = &unk_1F42BFE90;
            v73 = 0u;
            v74 = 0u;
            kaldi::CuMatrixBase<float>::~CuMatrixBase(&v72);
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v72, v75, 0, v76, *(a1 + 3976), *(a1 + 3976));
            kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v72, &v77, 111, v21, v22);
            v72 = &unk_1F42BFE90;
            v73 = 0u;
            v74 = 0u;
            kaldi::CuMatrixBase<float>::~CuMatrixBase(&v72);
            (*(*v96[v10] + 56))(v96[v10], v75, 0);
            kaldi::CuMatrix<float>::~CuMatrix(v75);
            kaldi::CuMatrix<float>::~CuMatrix(&v77);
            kaldi::CuMatrix<float>::~CuMatrix(&v81);
            kaldi::CuMatrix<float>::~CuMatrix(&v85);
            kaldi::CuMatrix<float>::~CuMatrix(&v88);
            kaldi::CuMatrix<float>::~CuMatrix(&__p);
            ++v10;
            v9 = v98;
          }

          while (v10 != (v99 - v98) >> 3);
        }

        goto LABEL_39;
      }

      v94 = 0u;
      v93 = 0u;
      __p = &unk_1F42BFED8;
      v95 = 0;
      v27 = *(a1 + 3976) << (*(a1 + 3505) ^ 1);
      kaldi::CuMatrix<float>::Resize(&__p, 1, v27 * ((v99 - v98) >> 3), 0, 0);
      v28 = v98;
      if (v99 != v98)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0uLL;
        do
        {
          v90 = v31;
          v89 = v31;
          v88 = &unk_1F42BFED8;
          v91 = 0;
          (*(*v28[v30] + 40))(v28[v30], &v88, 0);
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v85, &__p, 0, SHIDWORD(v93), v29, v27);
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v81, &v88, 0, SHIDWORD(v89), 0, v27);
          kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v85, &v81, 111, v32, v33);
          v81 = &unk_1F42BFE90;
          v82 = 0u;
          v83 = 0u;
          kaldi::CuMatrixBase<float>::~CuMatrixBase(&v81);
          v85 = &unk_1F42BFE90;
          v86 = 0u;
          v87 = 0u;
          kaldi::CuMatrixBase<float>::~CuMatrixBase(&v85);
          kaldi::CuMatrix<float>::~CuMatrix(&v88);
          v31 = 0uLL;
          ++v30;
          v28 = v98;
          v29 = (v29 + v27);
        }

        while (v30 != (v99 - v98) >> 3);
      }

      v90 = 0u;
      v89 = 0u;
      v88 = &unk_1F42BFED8;
      v91 = 0;
      kaldi::nnet1::Nnet::Feedforward((a1 + 1176), &__p, &v88, 0xFFFFFFFF, 0);
      v34 = v96;
      if (v97 != v96)
      {
        v35 = 0;
        v36 = 0;
        do
        {
          if (*(a1 + 3505) == 1)
          {
            kaldi::CuMatrix<float>::CuMatrix(&v85, 1, (2 * *(a1 + 3976)), 0, 0, 0);
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v81, &v85, 0, SHIDWORD(v86), 0, *(a1 + 3976));
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v77, &v88, 0, SHIDWORD(v89), v35, v27);
            kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v81, &v77, 111, v37, v38);
            v77 = &unk_1F42BFE90;
            v78 = 0u;
            v79 = 0u;
            kaldi::CuMatrixBase<float>::~CuMatrixBase(&v77);
            v81 = &unk_1F42BFE90;
            v82 = 0u;
            v83 = 0u;
            kaldi::CuMatrixBase<float>::~CuMatrixBase(&v81);
            (*(*v96[v36] + 56))(v96[v36], &v85, 0);
            kaldi::CuMatrix<float>::~CuMatrix(&v85);
          }

          else
          {
            v39 = v34[v36];
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v85, &v88, 0, SHIDWORD(v89), v35, v27);
            (*(*v39 + 56))(v39, &v85, 0);
            v85 = &unk_1F42BFE90;
            v86 = 0u;
            v87 = 0u;
            kaldi::CuMatrixBase<float>::~CuMatrixBase(&v85);
          }

          ++v36;
          v34 = v96;
          v35 = (v35 + v27);
        }

        while (v36 != (v97 - v96) >> 3);
      }

      kaldi::CuMatrix<float>::~CuMatrix(&v88);
LABEL_32:
      kaldi::CuMatrix<float>::~CuMatrix(&__p);
      goto LABEL_39;
    }

    if (*(a1 + 3505))
    {
      kaldi::CuMatrix<float>::CuMatrix(&__p, 1, *(a1 + 3976), 0, 0, 0);
      v23 = v98;
      if (v99 != v98)
      {
        v24 = 0;
        do
        {
          v90 = 0u;
          v89 = 0u;
          v88 = &unk_1F42BFED8;
          v91 = 0;
          (*(*v23[v24] + 40))(v23[v24], &v88, 0);
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v85, &v88, 0, SHIDWORD(v89), *(a1 + 3976), *(a1 + 3976));
          kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v85, &__p, 111, v25, v26);
          v85 = &unk_1F42BFE90;
          v86 = 0u;
          v87 = 0u;
          kaldi::CuMatrixBase<float>::~CuMatrixBase(&v85);
          (*(*v96[v24] + 56))(v96[v24], &v88, 0);
          kaldi::CuMatrix<float>::~CuMatrix(&v88);
          ++v24;
          v23 = v98;
        }

        while (v24 != (v99 - v98) >> 3);
      }

      goto LABEL_32;
    }

    v40 = v98;
    if (v99 != v98)
    {
      v41 = 0;
      v42 = 0uLL;
      do
      {
        v94 = v42;
        v93 = v42;
        __p = &unk_1F42BFED8;
        v95 = 0;
        (*(*v40[v41] + 40))(v40[v41], &__p, 0);
        v43 = v96[v41];
        v44 = 2 * *(a1 + 3976);
        if (*(a1 + 3919))
        {
          v45 = v44;
        }

        else
        {
          v45 = 0;
        }

        kaldi::CuSubMatrix<float>::CuSubMatrix(&v88, &__p, 0, SHIDWORD(v93), v45, v44);
        (*(*v43 + 56))(v43, &v88, 0);
        v88 = &unk_1F42BFE90;
        v89 = 0u;
        v90 = 0u;
        kaldi::CuMatrixBase<float>::~CuMatrixBase(&v88);
        kaldi::CuMatrix<float>::~CuMatrix(&__p);
        v42 = 0uLL;
        ++v41;
        v40 = v98;
      }

      while (v41 != (v99 - v98) >> 3);
    }
  }

LABEL_39:
  if (kaldi::nnet1::Nnet::IsBidirectionalRnn((a1 + 8)) && *(a1 + 3548) != 3)
  {
    if (v8 >= 1)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "EncFeedforward", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 500);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "BidirectionalEncoder is not supported for stream input.", 55);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
    }

    kaldi::CuMatrix<float>::Resize(*(a1 + 3408) + 48 * *(a1 + 3512), *(a1 + 3140), (*(a1 + 3136) / 2), 0, 0);
    v49 = *(a1 + 3512);
    v50 = *(a1 + 3408);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&__p, a1 + 3120, 0, *(a1 + 3140), 0, *(a1 + 3136) / 2);
    kaldi::CuMatrixBase<float>::CopyFromMat<float>((v50 + 48 * v49), &__p, 111, v51, v52);
    __p = &unk_1F42BFE90;
    v93 = 0u;
    v94 = 0u;
    kaldi::CuMatrixBase<float>::~CuMatrixBase(&__p);
    v53 = *(a1 + 3512);
    v54 = *(a1 + 3408);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&__p, a1 + 3120, 0, *(a1 + 3140), (*(a1 + 3136) / 2), *(a1 + 3136) / 2);
    kaldi::CuMatrixBase<float>::AddMat(v54 + 48 * v53, &__p, 111, v55, v56, 1.0, 1.0);
  }

  else
  {
    kaldi::CuMatrix<float>::Resize(*(a1 + 3408) + 48 * *(a1 + 3512), (*(a1 + 3140) + v8), *(a1 + 3136), 2u, 0);
    v46 = *(a1 + 3408) + 48 * *(a1 + 3512);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&__p, v46, v8, *(a1 + 3140), 0, *(v46 + 16));
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(&__p, a1 + 3120, 111, v47, v48);
  }

  __p = &unk_1F42BFE90;
  v93 = 0u;
  v94 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&__p);
  v57 = *(a1 + 3408) + 48 * *(a1 + 3512);
  kaldi::quasar::TorchEncoderDecoder::SetAttentionKeyAndValues(a1, v57, v57, *(a1 + 1136), v58);
  if (*(a1 + 3919))
  {
    v63 = 0;
    if (v8)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v63 = *(a1 + 3140) - 1;
    if (v8)
    {
      goto LABEL_49;
    }
  }

  v64 = kaldi::nnet1::Nnet::OutputDim(*(a1 + 1136), v59, v60, v61, v62);
  kaldi::CuMatrix<float>::Resize(a1 + 3312, 1, v64, 0, 0);
LABEL_49:
  if (*(a1 + 3504) != 1)
  {
    goto LABEL_59;
  }

  if (kaldi::nnet1::Nnet::IsBidirectionalRnn((a1 + 8)))
  {
    if (*(a1 + 3548) == 3)
    {
      kaldi::CuMatrixBase<float>::SetZero(a1 + 3312);
      goto LABEL_59;
    }

    kaldi::CuSubMatrix<float>::CuSubMatrix(&v88, a1 + 3120, v63, 1, 0, *(a1 + 3136));
    v68 = *(a1 + 3136) / 2;
    if (*(a1 + 3919))
    {
      v69 = v68;
    }

    else
    {
      v69 = 0;
    }

    kaldi::CuSubMatrix<float>::CuSubMatrix(&__p, &v88, 0, SHIDWORD(v89), v69, v68);
    kaldi::CuMatrixBase<float>::CopyFromMat<float>((a1 + 3312), &__p, 111, v70, v71);
    __p = &unk_1F42BFE90;
    v93 = 0u;
    v94 = 0u;
    kaldi::CuMatrixBase<float>::~CuMatrixBase(&__p);
    v88 = &unk_1F42BFE90;
    v89 = 0u;
    v90 = 0u;
    p_p = &v88;
  }

  else
  {
    kaldi::CuSubMatrix<float>::CuSubMatrix(&__p, a1 + 3120, v63, 1, 0, *(a1 + 3136));
    kaldi::CuMatrixBase<float>::CopyFromMat<float>((a1 + 3312), &__p, 111, v65, v66);
    __p = &unk_1F42BFE90;
    v93 = 0u;
    v94 = 0u;
    p_p = &__p;
  }

  kaldi::CuMatrixBase<float>::~CuMatrixBase(p_p);
LABEL_59:
  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }

  kaldi::quasar::TimeBlock::~TimeBlock(v100, v59);
}

void sub_1C2FDAA60()
{
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  JUMPOUT(0x1C2FDAAD0);
}

void sub_1C2FDAAFC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a49 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1C2FDAEACLL);
}

void sub_1C2FDAB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32)
{
  a32 = &unk_1F42BFE90;
  *(v32 + 8) = 0u;
  *(v32 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a32);
  JUMPOUT(0x1C2FDAE74);
}

void sub_1C2FDAE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38)
{
  a38 = &unk_1F42BFE90;
  *(v38 + 8) = 0u;
  *(v38 + 24) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a38);
  JUMPOUT(0x1C2FDAE7CLL);
}

void sub_1C2FDAE68(_Unwind_Exception *a1, clockid_t a2)
{
  v4 = *(v2 - 184);
  if (v4)
  {
    *(v2 - 176) = v4;
    operator delete(v4);
  }

  v5 = *(v2 - 160);
  if (v5)
  {
    *(v2 - 152) = v5;
    operator delete(v5);
  }

  kaldi::quasar::TimeBlock::~TimeBlock((v2 - 136), a2);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::Nnet::GetHistoricalComponents@<X0>(kaldi::nnet1::Nnet *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(a2, *(this + 6), *(this + 7), (*(this + 7) - *(this + 6)) >> 3);
}

uint64_t std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C2FDAF30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float> *>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
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
    kaldi::KaldiAssertFailure_("SubMatrix", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x71A, "static_cast<UnsignedMatrixIndexT>(ro) < static_cast<UnsignedMatrixIndexT>(M.num_rows_) && static_cast<UnsignedMatrixIndexT>(co) < static_cast<UnsignedMatrixIndexT>(M.num_cols_) && static_cast<UnsignedMatrixIndexT>(r) <= static_cast<UnsignedMatrixIndexT>(M.num_rows_ - ro) && static_cast<UnsignedMatrixIndexT>(c) <= static_cast<UnsignedMatrixIndexT>(M.num_cols_ - co)", a5);
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

uint64_t kaldi::quasar::TorchEncoderDecoder::StartFeedforward(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a4)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "StartFeedforward", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 369);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "Custom embedding is not supported for TorchEncoderDecoder");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
  }

  v7 = *(a1 + 3408);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 3416) - v7) >> 4) <= a3)
  {
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 3408), a3 + 1);
  }

  else
  {
    kaldi::CuMatrix<float>::Resize(v7 + 48 * a3, 0, 0, 0, 0);
  }

  kaldi::CuMatrix<float>::CuMatrix(v13, a2, 111);
  if (*(a1 + 3917) == 1)
  {
    v11 = 0u;
    v10 = 0u;
    v9 = &unk_1F42BFED8;
    v12 = 0;
    kaldi::quasar::TorchEncoderDecoder::AddTag(a1, a2, *(a1 + 3516) - 1, &v9, 0);
    kaldi::CuMatrix<float>::operator=(v13, &v9);
    kaldi::CuMatrix<float>::~CuMatrix(&v9);
  }

  if (*(a1 + 3918) == 1)
  {
    v11 = 0u;
    v10 = 0u;
    v9 = &unk_1F42BFED8;
    v12 = 0;
    kaldi::quasar::TorchEncoderDecoder::AddTag(a1, v13, *(a1 + 3520) - 1, &v9, 1);
    kaldi::CuMatrix<float>::operator=(v13, &v9);
    kaldi::CuMatrix<float>::~CuMatrix(&v9);
  }

  kaldi::quasar::TorchEncoderDecoder::EncFeedforward(a1, v13, a3);
  return kaldi::CuMatrix<float>::~CuMatrix(v13);
}

void sub_1C2FDB1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

void *kaldi::quasar::TorchEncoderDecoder::SetAttentionKeyAndValues(void *result, uint64_t a2, uint64_t a3, kaldi::nnet1::Nnet *a4, const char *a5)
{
  if (((*(a4 + 1) - *a4) >> 3) >= 1)
  {
    v8 = result;
    v9 = 0;
    do
    {
      Component = kaldi::nnet1::Nnet::GetComponent(a4, v9, a3, a4, a5);
      v11 = **Component;
      if (v12)
      {
        result = (*(*v12 + 24))(v12, a2, a3, 0);
      }

      else
      {
        v16 = kaldi::nnet1::Nnet::GetComponent(a4, v9, v13, v14, v15);
        v17 = **v16;
        if (result)
        {
          v18 = result;
          v19 = result[23];
          if ((1736263375 * ((result[24] - v19) >> 3)) >= 1)
          {
            v20 = 0;
            v21 = 0;
            do
            {
              result = kaldi::quasar::TorchEncoderDecoder::SetAttentionKeyAndValues(v8, a2, a3, v19 + v20);
              ++v21;
              v19 = v18[23];
              v20 += 376;
            }

            while (v21 < (1736263375 * ((v18[24] - v19) >> 3)));
          }
        }
      }

      ++v9;
    }

    while (v9 < ((*(a4 + 1) - *a4) >> 3));
  }

  return result;
}

uint64_t kaldi::nnet1::Nnet::GetComponent(kaldi::nnet1::Nnet *this, int a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a2 >= ((*(this + 1) - *this) >> 3))
  {
    kaldi::KaldiAssertFailure_("GetComponent", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 0x375, "static_cast<size_t>(component) < components_.size()", a5);
  }

  return *(*this + 8 * a2);
}

{
  if (a2 >= ((*(this + 1) - *this) >> 3))
  {
    kaldi::KaldiAssertFailure_("GetComponent", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 0x370, "static_cast<size_t>(component) < components_.size()", a5);
  }

  return *(*this + 8 * a2);
}

void kaldi::quasar::TimeBlock::~TimeBlock(kaldi::quasar::TimeBlock *this, clockid_t a2)
{
  v3 = *this;
  **(this + 1) = kaldi::Timer::GetSeconds(5, a2) - *v3 - *(this + 2) + **(this + 1);
  v4 = *(this + 47);
  if (v4 < 0)
  {
    v5 = *(this + 4);
  }

  else
  {
    v5 = *(this + 47);
  }

  if (v5 && (kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(v21, "~TimeBlock", "../engine/common/libquasar/libkaldi/src/nnmt/torch-translator.h", 63);
    v6 = *(this + 47);
    if (v6 >= 0)
    {
      v7 = this + 24;
    }

    else
    {
      v7 = *(this + 3);
    }

    if (v6 >= 0)
    {
      v8 = *(this + 47);
    }

    else
    {
      v8 = *(this + 4);
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v7, v8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " ", 1);
    v11 = *this;
    Seconds = kaldi::Timer::GetSeconds(5, v12);
    v14 = MEMORY[0x1C692A940](v10, Seconds - *v11);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " ", 1);
    v16 = MEMORY[0x1C692A940](v15, *(this + 2));
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " diff ", 6);
    v18 = *this;
    v20 = kaldi::Timer::GetSeconds(5, v19);
    MEMORY[0x1C692A940](v17, v20 - *v18 - *(this + 2));
    kaldi::KaldiLogMessage::~KaldiLogMessage(v21);
    LOBYTE(v4) = *(this + 47);
  }

  if ((v4 & 0x80) != 0)
  {
    operator delete(*(this + 3));
  }
}

float kaldi::quasar::TMTools::GreedyDecode<kaldi::quasar::TorchEncoderDecoder>(kaldi::quasar::TorchEncoderDecoder *a1, uint64_t *a2, const void **a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v56 = 0u;
  v55 = 0u;
  v54 = &unk_1F42BFED8;
  v57 = 0;
  kaldi::CuMatrix<float>::Resize(&v54, (a2[1] - *a2) >> 2, 1, 0, 0);
  v14 = *a2;
  v15 = a2[1];
  v16 = v15 - *a2;
  if (v15 != *a2)
  {
    v17 = 0;
    v18 = v16 >> 2;
    v19 = v55;
    if (v18 <= 1)
    {
      v18 = 1;
    }

    v20 = 4 * v56;
    do
    {
      *v19 = *(v14 + 4 * v17++);
      v19 = (v19 + v20);
    }

    while (v18 != v17);
  }

  kaldi::quasar::TorchEncoderDecoder::ResetHistoryState(a1, 1);
  kaldi::quasar::TorchEncoderDecoder::Start(a1, 1u, a4);
  kaldi::quasar::TorchEncoderDecoder::StartFeedforward(a1, &v54, 0, 0);
  v86 = 0u;
  v85 = 0u;
  v84 = &unk_1F42BFED8;
  v87 = 0;
  kaldi::CuMatrix<float>::CuMatrix(v82, 1, 1, 0, 0, 0);
  v21 = kaldi::quasar::TorchEncoderDecoder::BosTargetId(a1);
  *v83 = (v21 - 1);
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v22 = 0;
  if ((a7 & 0x80000000) != 0)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = 0.0;
    while (1)
    {
      kaldi::quasar::TorchEncoderDecoder::Feedforward(a1, v82, &v84, 0);
      kaldi::Matrix<float>::Matrix(&v65, HIDWORD(v85), DWORD2(v85), 0, 0);
      kaldi::CuMatrixBase<float>::CopyToMat<float>(&v84, &v65, 111, v24, v25);
      IsUpdatable = kaldi::nnet1::UpdatableComponent::IsUpdatable(a1);
      v27 = -3.4028e38;
      if (IsUpdatable)
      {
        v27 = 0.0;
      }

      *&v58 = v27;
      if (v22 == a7)
      {
        SoftmaxEosId = kaldi::quasar::TorchEncoderDecoder::GetSoftmaxEosId(a1);
        LODWORD(v58) = *(v65.__locale_ + SoftmaxEosId);
        v29 = kaldi::quasar::TorchEncoderDecoder::EosTargetId(a1) - 1;
      }

      else
      {
        v34 = 0;
        v29 = 0;
        while (v34 != kaldi::MatrixBase<float>::NumCols(&v65))
        {
          VocabWordIdx = kaldi::quasar::TorchEncoderDecoder::GetVocabWordIdx(a1, v34);
          if ((v22 >= a6 || VocabWordIdx != kaldi::quasar::TorchEncoderDecoder::EosTargetId(a1) - 1) && (!kaldi::quasar::TorchEncoderDecoder::HasBpeModel(a1) || VocabWordIdx != kaldi::quasar::TorchEncoderDecoder::UnkTargetId(a1) - 1) && *(v65.__locale_ + v34) > *&v58)
          {
            LODWORD(v58) = *(v65.__locale_ + v34);
            v29 = VocabWordIdx;
          }

          ++v34;
        }
      }

      if (kaldi::nnet1::UpdatableComponent::IsUpdatable(a1))
      {
        LODWORD(v58) = logf(*&v58);
      }

      *v83 = v29;
      v30 = *&v58;
      std::vector<float>::push_back[abi:ne200100](&v73, &v58);
      BestAlignment = kaldi::quasar::TorchEncoderDecoder::GetBestAlignment(a1, 0);
      __p = 0;
      v62 = 0;
      v63 = 0;
      kaldi::quasar::TorchEncoderDecoder::GetAlignmentProbabilities(a1, &__p, 0, v31, v32);
      v33 = kaldi::quasar::TorchEncoderDecoder::EosTargetId(a1) - 1;
      if (v29 == v33)
      {
        if (*(a1 + 3922) == 1 && *(a1 + 3923) == 1)
        {
          std::vector<int>::push_back[abi:ne200100](&v79, &BestAlignment);
          std::vector<std::vector<float>>::push_back[abi:ne200100](&v76, &__p);
          v71 = v29 + 1;
          std::vector<int>::push_back[abi:ne200100](a3, &v71);
          v71 = 0;
          std::vector<float>::push_back[abi:ne200100](&v73, &v71);
        }
      }

      else
      {
        std::vector<int>::push_back[abi:ne200100](&v79, &BestAlignment);
        std::vector<std::vector<float>>::push_back[abi:ne200100](&v76, &__p);
        v71 = v29 + 1;
        std::vector<int>::push_back[abi:ne200100](a3, &v71);
      }

      if (__p)
      {
        v62 = __p;
        operator delete(__p);
      }

      v23 = v23 + v30;
      kaldi::Matrix<float>::~Matrix(&v65);
      if (v29 == v33)
      {
        break;
      }

      if (v22++ == a7)
      {
        goto LABEL_38;
      }
    }
  }

  if (v22 == a7 && (kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(&v65, "GreedyDecode", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/translation-model-tools.h", 211);
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, "Decoder hit max sentence length : ", 34);
    v38 = MEMORY[0x1C692A960](v37, a7);
    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, " ", 1);
    MEMORY[0x1C692A960](v39, a7);
    kaldi::KaldiLogMessage::~KaldiLogMessage(&v65);
  }

LABEL_38:
  if (kaldi::quasar::TorchEncoderDecoder::Reverse(a1) && v79 != v80)
  {
    v40 = v80 - 4;
    if (v80 - 4 > v79)
    {
      v41 = (v79 + 1);
      do
      {
        v42 = *(v41 - 1);
        *(v41 - 1) = *v40;
        *v40 = v42;
        v40 -= 4;
        v43 = v41 >= v40;
        v41 += 4;
      }

      while (!v43);
    }
  }

  v44 = (*(*a5 + 200))(a5);
  (*(*a5 + 176))(a5, v44);
  if (a3[1] == *a3)
  {
    v46 = 0;
  }

  else
  {
    v45 = 0;
    v46 = 0;
    v47 = v44;
    do
    {
      v48 = (*(*a5 + 200))(a5);
      if (v46 >= (v80 - v79) >> 2 || v46 >= (a3[1] - *a3) >> 2)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v77 - v76) >> 3) <= v46)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      v44 = v48;
      v49 = v79[v46];
      v50 = *(*a3 + v46);
      v51 = *(v73 + v46);
      v58 = 0;
      v59 = 0;
      v60 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v58, *(v76 + v45), *(v76 + v45 + 8), (*(v76 + v45 + 8) - *(v76 + v45)) >> 2);
      LODWORD(__p) = 0;
      *(&__p + 1) = -v51;
      v63 = 0;
      v64 = 0;
      v62 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v62, v58, v59, (v59 - v58) >> 2);
      v65.__locale_ = __PAIR64__(v50, v49);
      v66 = __p;
      v68 = 0;
      v69 = 0;
      v67 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v67, v62, v63, (v63 - v62) >> 2);
      v70 = v44;
      (*(*a5 + 208))(a5, v47, &v65);
      if (v67)
      {
        v68 = v67;
        operator delete(v67);
      }

      if (v62)
      {
        v63 = v62;
        operator delete(v62);
      }

      if (v58)
      {
        v59 = v58;
        operator delete(v58);
      }

      ++v46;
      v45 += 24;
      v47 = v44;
    }

    while (v46 != (a3[1] - *a3) >> 2);
  }

  v52 = -*(v73 + v46);
  LODWORD(v65.__locale_) = 0;
  *(&v65.__locale_ + 1) = v52;
  v67 = 0;
  v68 = 0;
  v66 = 0;
  (*(*a5 + 184))(a5, v44, &v65);
  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }

  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }

  __p = &v76;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  kaldi::CuMatrix<float>::~CuMatrix(v82);
  kaldi::CuMatrix<float>::~CuMatrix(&v84);
  kaldi::CuMatrix<float>::~CuMatrix(&v54);
  return -v23;
}

void sub_1C2FDBCDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char *a18, void *a19, uint64_t a20, uint64_t a21, char a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, uint64_t a59, char a60)
{
  if (__p)
  {
    a58 = __p;
    operator delete(__p);
  }

  a18 = &a60;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a18);
  v62 = *(v60 - 240);
  if (v62)
  {
    *(v60 - 232) = v62;
    operator delete(v62);
  }

  kaldi::CuMatrix<float>::~CuMatrix(v60 - 216);
  kaldi::CuMatrix<float>::~CuMatrix(v60 - 168);
  kaldi::CuMatrix<float>::~CuMatrix(&a9);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::TorchEncoderDecoder::Feedforward(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v13 = 0u;
  v12 = 0u;
  v11 = &unk_1F42BFED8;
  v14 = 0;
  if (*(a1 + 3916))
  {
    kaldi::quasar::TorchEncoderDecoder::AddPositionEmbedding(a1, *(a1 + 3508), a2, &v11, 0);
  }

  else
  {
    kaldi::CuMatrix<float>::operator=(&v11, a2);
  }

  v7 = *(a1 + 3548);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      kaldi::quasar::TorchEncoderDecoder::FeedforwardModelT(a1, &v11, a3, a4);
      goto LABEL_13;
    }

    if (v7 == 3)
    {
      kaldi::quasar::TorchEncoderDecoder::FeedforwardModelF(a1, &v11, a3, a4);
      goto LABEL_13;
    }

LABEL_14:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v10, "Feedforward", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 581);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Un-supported model type : ", 26);
    MEMORY[0x1C692A960](v9, *(a1 + 3548));
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
  }

  if (!v7)
  {
    kaldi::quasar::TorchEncoderDecoder::FeedforwardModelN(a1, &v11, a3, a4);
    goto LABEL_13;
  }

  if (v7 != 1)
  {
    goto LABEL_14;
  }

  kaldi::quasar::TorchEncoderDecoder::FeedforwardModelM(a1, &v11, a3, a4);
LABEL_13:
  ++*(a1 + 3508);
  return kaldi::CuMatrix<float>::~CuMatrix(&v11);
}

uint64_t kaldi::nnet1::AverageAttention::PropagateFnc(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, const char *a5)
{
  v5 = *(a2 + 20);
  if (v5 != *(a1 + 48))
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 0x27B, "batch_size == num_utts", a5);
  }

  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v65, "PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-attention-component.cc", 637, 3);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, "Running forward propagation for batch size = ", 45);
    v11 = MEMORY[0x1C692A960](v10, v5);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", which contains ", 17);
    v13 = MEMORY[0x1C692A960](v12, 1);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " frames each from ", 18);
    v15 = MEMORY[0x1C692A960](v14, v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v65);
  }

  (*(*a1 + 160))(a1);
  v16 = *(a1 + 16) + 48 * a4;
  v17 = *(v16 + 20);
  if (!v17)
  {
    v18 = (*(*a1 + 88))(a1);
    kaldi::CuMatrix<float>::Resize(v16, v5, v18, 0, 0);
    v17 = *(v16 + 20);
  }

  kaldi::CuSubMatrix<float>::CuSubMatrix(&v62, v16, 0, v17, 0, 1);
  kaldi::CuMatrixBase<float>::Add(&v62, 1.0);
  v19 = *v63;
  v24 = kaldi::nnet1::Nnet::InputDim(*(a1 + 56), v20, v21, v22, v23);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v59, v16, 0, *(v16 + 20), 1, v24);
  kaldi::CuMatrixBase<float>::AddMat(&v59, a2, 111, v25, v26, 1.0, 1.0);
  kaldi::CuMatrix<float>::CuMatrix(v65, &v59, 111);
  kaldi::CuMatrixBase<float>::Scale(v65, 1.0 / v19);
  v57 = 0u;
  v56 = 0u;
  v55 = &unk_1F42BFED8;
  v58 = 0;
  kaldi::nnet1::Nnet::Propagate<kaldi::CuSubMatrix<float>>(*(a1 + 56), v65, &v55, a4, v27);
  if (*(a1 + 64))
  {
    kaldi::CuMatrix<float>::CuMatrix(v53, *(a2 + 20), (v66 + *(a2 + 16)), 0, 0, 0);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v49, v53, 0, v54, 0, *(a2 + 16));
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v49, a2, 111, v30, v31);
    v49 = &unk_1F42BFE90;
    v50 = 0u;
    v51 = 0u;
    kaldi::CuMatrixBase<float>::~CuMatrixBase(&v49);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v49, v53, 0, v54, *(a2 + 16), v66);
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v49, &v55, 111, v32, v33);
    v49 = &unk_1F42BFE90;
    v50 = 0u;
    v51 = 0u;
    kaldi::CuMatrixBase<float>::~CuMatrixBase(&v49);
    v50 = 0u;
    v51 = 0u;
    v49 = &unk_1F42BFED8;
    v52 = 0;
    kaldi::nnet1::Nnet::Propagate<kaldi::CuSubMatrix<float>>(*(a1 + 64), v53, &v49, 0, v34);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v46, &v49, 0, SHIDWORD(v50), 0, *(a2 + 16));
    kaldi::CuMatrixBase<float>::MulElements(&v46, a2, v35, v36, v37);
    v46 = &unk_1F42BFE90;
    v47 = 0u;
    v48 = 0u;
    kaldi::CuMatrixBase<float>::~CuMatrixBase(&v46);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v46, &v49, 0, SHIDWORD(v50), *(a2 + 16), v66);
    kaldi::CuMatrixBase<float>::MulElements(&v46, &v55, v38, v39, v40);
    v46 = &unk_1F42BFE90;
    v47 = 0u;
    v48 = 0u;
    kaldi::CuMatrixBase<float>::~CuMatrixBase(&v46);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v46, &v49, 0, SHIDWORD(v50), 0, *(a2 + 16));
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, &v46, 111, v41, v42);
    v46 = &unk_1F42BFE90;
    v47 = 0u;
    v48 = 0u;
    kaldi::CuMatrixBase<float>::~CuMatrixBase(&v46);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v46, &v49, 0, SHIDWORD(v50), *(a2 + 16), v66);
    kaldi::CuMatrixBase<float>::AddMat(a3, &v46, 111, v43, v44, 1.0, 1.0);
    v46 = &unk_1F42BFE90;
    v47 = 0u;
    v48 = 0u;
    kaldi::CuMatrixBase<float>::~CuMatrixBase(&v46);
    kaldi::CuMatrix<float>::~CuMatrix(&v49);
    kaldi::CuMatrix<float>::~CuMatrix(v53);
  }

  else
  {
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, &v55, 111, v28, v29);
  }

  kaldi::CuMatrix<float>::~CuMatrix(&v55);
  kaldi::CuMatrix<float>::~CuMatrix(v65);
  v59 = &unk_1F42BFE90;
  v60 = 0u;
  v61 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v59);
  v62 = &unk_1F42BFE90;
  v63 = 0u;
  v64 = 0u;
  return kaldi::CuMatrixBase<float>::~CuMatrixBase(&v62);
}

void sub_1C2FDC558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, __int128 a10, __int128 a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  a9 = &unk_1F42BFE90;
  a10 = 0u;
  a11 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a9);
  kaldi::CuMatrix<float>::~CuMatrix(&a12);
  kaldi::CuMatrix<float>::~CuMatrix(&a18);
  kaldi::CuMatrix<float>::~CuMatrix(&a24);
  kaldi::CuMatrix<float>::~CuMatrix(&a40);
  a30 = &unk_1F42BFE90;
  *(v40 + 56) = 0u;
  *(v40 + 72) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a30);
  a35 = &unk_1F42BFE90;
  v40[6] = 0u;
  v40[7] = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a35);
  _Unwind_Resume(a1);
}

void sub_1C2FDC658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, __int128 a15, __int128 a16)
{
  a14 = &unk_1F42BFE90;
  a15 = 0u;
  a16 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a14);
  JUMPOUT(0x1C2FDC5D4);
}

void std::vector<std::shared_ptr<TacotronFeature>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  *(a1 + 8) = v6;
}

unint64_t kaldi::nnet1::CompressedWordVecComponent::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a2 + 16) != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "../engine/common/libquasar/libkaldi/src/nnet/nnet-compressed-word-vec-component.h", 0x2C, "in.NumCols() == this->input_dim_", a5);
  }

  return kaldi::CuMatrixBase<float>::ConcatenateVec(a3, (a1 + 48), a2, a4, a5);
}

unint64_t kaldi::CuMatrixBase<float>::ConcatenateVec(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 20) != *(a3 + 20))
  {
    kaldi::KaldiAssertFailure_("ConcatenateVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x338, "num_rows_ == index.NumRows()", a5);
  }

  v5 = *a2;
  if (*a2)
  {
    LODWORD(v5) = *(v5 + 12);
  }

  if (*(a1 + 16) != v5 * *(a3 + 16))
  {
    kaldi::KaldiAssertFailure_("ConcatenateVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.cc", 0x339, "num_cols_ == index.NumCols() * vec_table.NumCols()", a5);
  }

  v6 = a1 + 8;
  v7 = a3 + 8;

  return kaldi::MatrixBase<float>::ConcatenateVec(v6, a2, v7, a4, a5);
}

uint64_t kaldi::MatrixBase<float>::Min(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(result + 12);
  if (v5 < 1 || *(result + 8) <= 0)
  {
    kaldi::KaldiAssertFailure_("Min", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x76E, "num_rows_ > 0 && num_cols_ > 0", a5);
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
    kaldi::KaldiAssertFailure_("Max", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x764, "num_rows_ > 0 && num_cols_ > 0", a5);
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
    kaldi::KaldiAssertFailure_("Max", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x4B5, "A.NumRows() == NumRows() && A.NumCols() == NumCols()", a5);
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

uint64_t kaldi::quasar::TorchEncoderDecoder::AddPositionEmbedding(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  kaldi::CuMatrix<float>::Resize(a4, *(a3 + 20), (*(a3 + 16) + 1), 0, 0);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v33, a4, 0, *(a4 + 20), 0, *(a3 + 16));
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v33, a3, 111, v9, v10);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v30, a4, 0, *(a4 + 20), *(a3 + 16), 1);
  v11 = *(a3 + 20);
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = v31;
    v14 = v32;
    v15 = vdupq_n_s64(v11 - 1);
    v16 = (v11 + 3) & 0xFFFFFFFC;
    v17 = 3 * v32;
    v18 = 16 * v32;
    v19 = xmmword_1C378AEF0;
    v20 = xmmword_1C378AF00;
    v21 = vdupq_n_s64(4uLL);
    v22 = 2 * v32;
    do
    {
      v23 = vmovn_s64(vcgeq_u64(v15, v20));
      if (vuzp1_s16(v23, *v15.i8).u8[0])
      {
        if (a5)
        {
          v24 = v12;
        }

        else
        {
          v24 = 0;
        }

        *v13 = (v24 + a2);
      }

      if (vuzp1_s16(v23, *&v15).i8[2])
      {
        if (a5)
        {
          v25 = v12 + 1;
        }

        else
        {
          v25 = 0;
        }

        v13[v14] = (v25 + a2);
      }

      v26 = vmovn_s64(vcgeq_u64(v15, v19));
      if (vuzp1_s16(*&v15, v26).i32[1])
      {
        v27 = v12 + 2;
        if (!a5)
        {
          v27 = 0;
        }

        v13[v22] = (v27 + a2);
      }

      if (vuzp1_s16(*&v15, v26).i8[6])
      {
        v28 = v12 + 3;
        if (!a5)
        {
          v28 = 0;
        }

        v13[v17] = (v28 + a2);
      }

      v12 += 4;
      v19 = vaddq_s64(v19, v21);
      v20 = vaddq_s64(v20, v21);
      v13 = (v13 + v18);
    }

    while (v16 != v12);
  }

  v30 = &unk_1F42BFE90;
  v31 = 0u;
  v32 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v30);
  v33 = &unk_1F42BFE90;
  v34 = 0u;
  v35 = 0u;
  return kaldi::CuMatrixBase<float>::~CuMatrixBase(&v33);
}

void sub_1C2FDCC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, __int128 a15, __int128 a16)
{
  a14 = &unk_1F42BFE90;
  a15 = 0u;
  a16 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a14);
  _Unwind_Resume(a1);
}

unint64_t kaldi::CompressedMatrix::CopyRowToVec<float>(unint64_t result, unsigned int a2, uint64_t *a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, const char *a11)
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
    kaldi::KaldiAssertFailure_("CopyRowToVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/compressed-matrix.cc", 0x1D2, "row < this->NumRows()", a11);
  }

  if ((a2 & 0x80000000) != 0)
  {
    kaldi::KaldiAssertFailure_("CopyRowToVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/compressed-matrix.cc", 0x1D3, "row >= 0", a11);
  }

  if (v11)
  {
    v13 = *(v11 + 12);
  }

  else
  {
    v13 = 0;
  }

  if (*(a3 + 2) != v13)
  {
    kaldi::KaldiAssertFailure_("CopyRowToVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/compressed-matrix.cc", 0x1D4, "v->Dim() == this->NumCols()", a11);
  }

  v14 = *(v11 + 12);
  if (v14 >= 1)
  {
    v15 = 0;
    v16 = *a3;
    v17 = *(v11 + 8);
    v18 = (v11 + 22);
    v19 = 8 * v14 + a2;
    do
    {
      v20 = *v11;
      v21 = *(v11 + 4) * 0.0000152590219;
      LOWORD(a8) = *(v18 - 2);
      v22 = v20 + v21 * *&a8;
      *&v22 = v22;
      result = *(v11 + 16 + v19);
      v23 = result - 64;
      if (result > 0x40)
      {
        LOWORD(a9) = *(v18 - 1);
        a9 = v20 + v21 * *&a9;
        *&a9 = a9;
        v28 = result >= 0xC0;
        result = (result - 192);
        if (result != 0 && v28)
        {
          LOWORD(v22) = *v18;
          a8 = *&v22;
          v31 = v20 + v21 * a8;
          *&a8 = result;
          v27 = *&a9 + ((v31 - *&a9) * result) * 0.0158730159;
        }

        else
        {
          v29 = *&v22;
          v30 = ((*&a9 - *&v22) * v23);
          a8 = 0.0078125;
          v27 = v29 + v30 * 0.0078125;
        }
      }

      else
      {
        LOWORD(a9) = *(v18 - 3);
        a9 = *&a9;
        v24 = v20 + v21 * a9;
        v25 = v24;
        v26 = ((*&v22 - v24) * result);
        a8 = 0.015625;
        v27 = v25 + v26 * 0.015625;
      }

      v18 += 4;
      v32 = v27;
      *(v16 + 4 * v15++) = v32;
      v19 += v17;
    }

    while (v14 != v15);
  }

  return result;
}

uint64_t kaldi::nnet1::Nnet::Propagate<kaldi::CuSubMatrix<float>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = (a1[1] - *a1) >> 3;
  if (v5 <= 0)
  {
    kaldi::KaldiAssertFailure_("Propagate", "../engine/common/libquasar/libkaldi/src/nnet/nnet-nnet.h", 0xB0, "NumComponents() > 0", a5);
  }

  if ((a3 & 0x80000000) != 0 || *(a1[18] + 32) <= a3)
  {
    kaldi::KaldiAssertFailure_("Propagate", "../engine/common/libquasar/libkaldi/src/nnet/nnet-nnet.h", 0xB1, "batch_idx >= 0 && batch_idx < opts_->num_subbatches", a5);
  }

  v8 = (a1[9] + 24 * a3);
  if (v5 >= (-1431655765 * ((v8[1] - *v8) >> 4)))
  {
    kaldi::KaldiAssertFailure_("Propagate", "../engine/common/libquasar/libkaldi/src/nnet/nnet-nnet.h", 0xB4, "(int32)propagate_buf_[batch_idx].size() >= NumComponents() + 1", a5);
  }

  v10 = a3;
  kaldi::CuMatrix<float>::Resize(*v8, *(a2 + 20), *(a2 + 16), 1u, 0);
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(*(a1[9] + 24 * v10), a2, 111, v11, v12);
  v13 = *a1;
  v14 = (a1[1] - *a1) >> 3;
  if (v14 >= 1)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = *(v13 + 8 * v16++);
      v18 = *(a1[9] + 24 * v10) + v15;
      kaldi::nnet1::Component::Propagate(v17, v18, v18 + 48, a3);
      v13 = *a1;
      v19 = a1[1] - *a1;
      v15 += 48;
    }

    while (v16 < (v19 >> 3));
    v14 = v19 >> 3;
  }

  return *(a1[9] + 24 * v10) + 48 * v14;
}

unsigned int *kaldi::nnet1::Nnet::Propagate<kaldi::CuSubMatrix<float>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (!a3)
  {
    kaldi::KaldiAssertFailure_("Propagate", "../engine/common/libquasar/libkaldi/src/nnet/nnet-nnet.h", 0x99, "NULL != out", a5);
  }

  if (((a1[1] - *a1) & 0x7FFFFFFF8) != 0)
  {
    v6 = (a1[9] + 24 * a4);
    v8 = *v6;
    v7 = v6[1];
    if (*v6 != v7)
    {
      v9 = 0;
      v10 = *(a3 + 32);
      v11 = v7 - v8 - 48;
      v12 = vdupq_n_s64(v11 / 0x30);
      v13 = (v8 + 80);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v9), xmmword_1C378AF00)));
        if (v14.i8[0])
        {
          *(v13 - 6) = v10;
        }

        if (v14.i8[4])
        {
          *v13 = v10;
        }

        v9 += 2;
        v13 += 12;
      }

      while (((v11 / 0x30 + 2) & 0xFFFFFFFFFFFFFFELL) != v9);
    }

    v15 = kaldi::nnet1::Nnet::Propagate<kaldi::CuSubMatrix<float>>(a1, a2, a4, a4, a5);
    kaldi::CuMatrix<float>::Resize(a3, *(v15 + 20), *(v15 + 16), 1u, 0);

    return kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, v15, 111, v16, v17);
  }

  else
  {

    return kaldi::CuMatrix<float>::operator=(a3, a2);
  }
}

void kaldi::quasar::TorchEncoderDecoder::FeedforwardModelN(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  kaldi::quasar::TimeBlock::TimeBlock(v50, (a1 + 4056), a1 + 4128, __p);
  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(&v42, "");
  kaldi::quasar::TimeBlock::TimeBlock(__p, (a1 + 4056), a1 + 4160, &v42);
  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42);
  }

  v12 = *(a2 + 20);
  if (!v12)
  {
    kaldi::KaldiAssertFailure_("FeedforwardModelN", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 0x27D, "target_in.NumRows() != 0", v11);
  }

  v13 = kaldi::nnet1::Nnet::OutputDim((a1 + 760), v8, v9, v10, v11);
  kaldi::CuMatrix<float>::Resize(a1 + 3264, v12, v13, 0, 0);
  kaldi::nnet1::Nnet::Propagate<kaldi::CuSubMatrix<float>>((a1 + 760), a2, a1 + 3264, 0, v14);
  kaldi::quasar::TimeBlock::~TimeBlock(__p, v15);
  std::string::basic_string[abi:ne200100]<0>(&v42, "");
  kaldi::quasar::TimeBlock::TimeBlock(__p, (a1 + 4056), a1 + 4136, &v42);
  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42);
  }

  v20 = *(a1 + 3284);
  v21 = kaldi::nnet1::Nnet::OutputDim(*(a1 + 1136), v16, v17, v18, v19);
  kaldi::CuMatrix<float>::Resize(a1 + 3312, v20, v21, 0, 0);
  kaldi::nnet1::Nnet::Propagate<kaldi::CuSubMatrix<float>>(*(a1 + 1136), a1 + 3264, a1 + 3312, 0, v22);
  kaldi::CuMatrix<float>::operator=(a1 + 3216, a1 + 3312);
  kaldi::quasar::TimeBlock::~TimeBlock(__p, v23);
  std::string::basic_string[abi:ne200100]<0>(&v42, "");
  kaldi::quasar::TimeBlock::TimeBlock(__p, (a1 + 4056), a1 + 4144, &v42);
  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42);
  }

  if (*(a1 + 3922) == 1)
  {
    Component = kaldi::nnet1::Nnet::GetComponent(*(a1 + 1136), *(a1 + 3540), v25, v26, v27);
    v29 = **Component;
    if (!v30)
    {
      kaldi::KaldiAssertFailure_("FeedforwardModelN", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnmt/torch-translator.cc", 0x28F, "attn_component", v31);
    }

    __sz = 0;
    __src = 0;
    v47 = 0;
    AttnProbabilities = kaldi::nnet1::SupervisedMultiHeadAttention::GetAttnProbabilities(v30);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v42, AttnProbabilities, 0, *(AttnProbabilities + 20), *(a1 + 3917), *(AttnProbabilities + 16) - *(a1 + 3918));
    kaldi::CuMatrix<float>::operator=(a1 + 4008, &v42);
    v42 = &unk_1F42BFE90;
    v43 = 0u;
    v44 = 0u;
    kaldi::CuMatrixBase<float>::~CuMatrixBase(&v42);
    kaldi::CuMatrixBase<float>::FindRowMaxId(a1 + 4008, &__sz, v33, v34, v35);
    v36 = *(a1 + 3984);
    v37 = (*(a1 + 3992) - v36) >> 2;
    if (__sz != v37)
    {
      std::vector<float>::resize((a1 + 3984), __sz);
      v36 = *(a1 + 3984);
      LODWORD(v37) = __sz;
    }

    memcpy(v36, __src, 4 * v37);
    if (__src)
    {
      free(__src);
    }
  }

  kaldi::quasar::TimeBlock::~TimeBlock(__p, v24);
  std::string::basic_string[abi:ne200100]<0>(&v42, "");
  kaldi::quasar::TimeBlock::TimeBlock(__p, (a1 + 4056), a1 + 4152, &v42);
  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42);
    if (a4)
    {
      goto LABEL_18;
    }
  }

  else if (a4)
  {
LABEL_18:
    v38 = ((*(a1 + 392) - *(a1 + 384)) >> 3) - 1;
    goto LABEL_21;
  }

  v38 = -1;
LABEL_21:
  if (*(a1 + 3664))
  {
    v39 = *(a1 + 3664);
  }

  else
  {
    v39 = (a1 + 384);
  }

  kaldi::nnet1::Nnet::Feedforward(v39, a1 + 3216, a3, v38, 0);
  kaldi::quasar::TimeBlock::~TimeBlock(__p, v40);
  kaldi::quasar::TimeBlock::~TimeBlock(v50, v41);
}

void sub_1C2FDD4B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, __int128 a10, __int128 a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __p = &unk_1F42BFE90;
  a10 = 0u;
  a11 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&__p);
  kaldi::quasar::TimeBlock::~TimeBlock(&a15, v22);
  kaldi::quasar::TimeBlock::~TimeBlock((v20 - 96), v23);
  _Unwind_Resume(a1);
}

double kaldi::Timer::GetSeconds(kaldi::Timer *this, clockid_t a2)
{
  if (clock_gettime(this, &__tp) && kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10, "GetSeconds", "../engine/common/libquasar/libkaldi/src/base/timer.h", 103);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Could not read clock ", 21);
    v4 = MEMORY[0x1C692A960](v3, this);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ": ", 2);
    v6 = __error();
    v7 = strerror(*v6);
    v8 = strlen(v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, v8);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v10);
  }

  return __tp.tv_nsec / 1000000000.0 + __tp.tv_sec;
}

void TacotronAlignment::alignment_reset(TacotronAlignment *this)
{
  std::vector<std::vector<int>>::clear[abi:ne200100](this + 8);
  std::vector<TTSSynthesizer::Marker>::clear[abi:ne200100](this + 5);
  *(this + 28) = 0;
  *(this + 30) = 0;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 32) = 1065353216;
  *(this + 62) = 0;
  *(this + 126) = 0;
  *(this + 156) = 0;
  *(this + 148) = 0;
  *(this + 41) = 0;
}

void FastSpeech2DecoderModule::process_data(uint64_t a1, uint64_t *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v4 = Diagnostics_GetLogObject(void)::__profile_log_default;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1C2F95000, v4, OS_LOG_TYPE_DEFAULT, "Parallel AM decoder module start.", buf, 2u);
  }

  Diagnostics::log(5, "Parallel AM decoder module start.", v5);
  std::mutex::lock((a1 + 320));
  *(a1 + 312) = 1;
  v7 = *(*v6 + 16);
  v43 = *(*v6 + 8);
  v44 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(*v8 + 16);
  v41 = *(*v8 + 8);
  v42 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(*v10 + 16);
  v39 = *(*v10 + 8);
  v40 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(v43 + 8);
  if (v12 != *(v43 + 16) && *(v12 + 60) == 1)
  {
    *(a1 + 304) = 0;
  }

  TacotronAlignment::alignment_reset(*(a1 + 384));
  v13.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  rep = std::chrono::steady_clock::now().__d_.__rep_;
  v37 = 0;
  v36 = 0;
  v14 = *(a1 + 400);
  v33 = v41;
  v34 = v42;
  if (v42)
  {
    atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *(v43 + 2);
  (*(*v14 + 8))(v35);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (v35[1] != v35[0])
  {
    v16 = *(a1 + 400);
    v17 = *v35[0];
    v32 = v17;
    if (*(&v17 + 1))
    {
      atomic_fetch_add_explicit((*(&v17 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v50 = 0;
    operator new();
  }

  v18 = ((std::chrono::steady_clock::now().__d_.__rep_ - v13.__d_.__rep_) * 0x431BDE82D7B634DBLL) >> 64;
  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v19 = (v18 >> 18) + (v18 >> 63);
  v20 = Diagnostics_GetLogObject(void)::__profile_log_default;
  v22 = v19 / 1000.0;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 134218496;
    *&buf[1] = v36 + v37;
    v46 = 2048;
    v47 = v19 / 1000.0;
    v48 = 2048;
    v49 = *&buf[1] / v22;
    _os_log_impl(&dword_1C2F95000, v20, OS_LOG_TYPE_DEFAULT, "Parallel AM decoder module, total frames = %lu, Run Time : %.3f s, %.3f frames/s", buf, 0x20u);
  }

  Diagnostics::log(5, "Parallel AM decoder module, total frames = %lu, Run Time : %.3f s, %.3f frames/s", v21, v36 + v37, *&v22, (v36 + v37) / v22);
  v23 = *(a1 + 276);
  v24 = *(a1 + 272);
  v25 = *(a1 + 304);
  v26 = v37;
  v27 = *(a1 + 392);
  v31[0] = *(a1 + 384);
  v31[1] = v27;
  if (v27)
  {
    atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
  }

  v28 = *(a1 + 176);
  v30[0] = *(a1 + 168);
  v30[1] = v28;
  if (v28)
  {
    atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
  }

  v29[0] = v43;
  v29[1] = v44;
  if (v44)
  {
    atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
  }

  FastSpeechUtils::emit_word_markers(v23, v24, v25, v26, v31, v30, v29);
}

void sub_1C2FDDC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, std::__shared_weak_count *a34)
{
  v39 = v35;
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    if (!v37)
    {
LABEL_3:
      if (!v36)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v37)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  if (!v36)
  {
LABEL_5:
    *(v38 - 192) = &a23;
    std::vector<std::shared_ptr<TacotronFeature>>::__destroy_vector::operator()[abi:ne200100]((v38 - 192));
    if (a30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a30);
    }

    if (a32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a32);
    }

    if (a34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a34);
    }

    std::mutex::unlock(v34 + 5);
    _Unwind_Resume(a1);
  }

LABEL_4:
  std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  goto LABEL_5;
}

void sub_1C2FDDC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  JUMPOUT(0x1C2FDDC40);
}

void sub_1C2FDDCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (!a20)
  {
    JUMPOUT(0x1C2FDDC30);
  }

  JUMPOUT(0x1C2FDDC28);
}

void FastSpeech2DecoderBaseInference::inference()
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
    _os_log_impl(&dword_1C2F95000, v0, OS_LOG_TYPE_DEBUG, "Parallel AM inference decoder begin.", buf, 2u);
  }

  Diagnostics::log(7, "Parallel AM inference decoder begin.", v1);
  operator new();
}

void sub_1C2FDE3DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  v23 = *(v21 - 24);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(exception_object);
}

void FastSpeech2DecoderBaseInference::split_features(uint64_t a1@<X0>, __int128 *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a3 || **(*a2 + 56) <= *(a1 + 8))
  {
    std::vector<std::shared_ptr<TacotronFeature>>::push_back[abi:ne200100](a4, a2);
  }

  else if (*(*(*a2 + 8) + 8) != **(*a2 + 8))
  {
    operator new();
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1C2FDE7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, void **a13)
{
  a13 = a12;
  std::vector<std::shared_ptr<TacotronFeature>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

unint64_t kaldi::MatrixBase<float>::ConcatenateVec(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 12) != *(a3 + 12))
  {
    kaldi::KaldiAssertFailure_("ConcatenateVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x42A, "num_rows_ == index.NumRows()", a5);
  }

  v8 = *a2;
  if (*a2)
  {
    LODWORD(v8) = *(v8 + 12);
  }

  if (*(a1 + 8) != v8 * *(a3 + 8))
  {
    kaldi::KaldiAssertFailure_("ConcatenateVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x42B, "num_cols_ == index.NumCols() * vec_table.NumCols()", a5);
  }

  kaldi::MatrixBase<float>::Min(a3, a2, a3, a4, a5);
  if (v13 < 0.0)
  {
    kaldi::KaldiAssertFailure_("ConcatenateVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x42C, "index.Min() >= 0", v12);
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
    kaldi::KaldiAssertFailure_("ConcatenateVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/matrix/kaldi-matrix.cc", 0x42D, "index.Max() < vec_table.NumRows()", v15);
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
          kaldi::MatrixBase<float>::Row(a1, v20, v15, &v33);
          v36 = 0;
          v37 = 0;
          v22 += v18;
          if (v22 > v34)
          {
            kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v26);
          }

          v35 = v33 + v23;
          LODWORD(v36) = v18;
          LODWORD(v27) = *(*a3 + 4 * v20 * *(a3 + 16) + 4 * v24);
          result = kaldi::CompressedMatrix::CopyRowToVec<float>(a2, *&v27, &v35, v27, v28, v29, v30, v31, v32, v25, v26);
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

uint64_t kaldi::quasar::TimeBlock::TimeBlock(uint64_t a1, double *a2, uint64_t a3, __int128 *a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *a4, *(a4 + 1));
  }

  else
  {
    v6 = *a4;
    *(a1 + 40) = *(a4 + 2);
    *(a1 + 24) = v6;
  }

  *(a1 + 16) = kaldi::Timer::GetSeconds(5, a2) - *a2;
  return a1;
}

void sub_1C2FDEB08(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
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

uint64_t kaldi::quasar::TorchEncoderDecoder::GetVocabWordIdx(kaldi::quasar::TorchEncoderDecoder *this, uint64_t a2)
{
  if (*(this + 458))
  {
    return *(**(this + 457) + 4 * a2);
  }

  return a2;
}

uint64_t FrontendNNModule::check_valid_space(std::string *this, std::string::size_type __n, std::string::size_type a3)
{
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (size > __n && __n < a3)
  {
    v6 = __n;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = MEMORY[0x1E69E9830];
    while ((v9 & 1) == 0)
    {
      v12 = *std::string::at(this, v6);
      if ((v12 & 0x80000000) != 0)
      {
        if (!__maskrune(v12, 0x4000uLL))
        {
          break;
        }
      }

      else if ((*(v11 + 4 * v12 + 60) & 0x4000) == 0)
      {
        break;
      }

      v9 = 0;
      ++v10;
LABEL_18:
      ++v6;
      v13 = HIBYTE(this->__r_.__value_.__r.__words[2]);
      if ((v13 & 0x80u) != 0)
      {
        v13 = this->__r_.__value_.__l.__size_;
      }

      if (v6 >= a3 || v6 >= v13)
      {
        return v10;
      }
    }

    if (*std::string::at(this, v6) == 27)
    {
      v9 = 1;
    }

    else if (*std::string::at(this, v6) == 92)
    {
      v9 &= v8 ^ 1;
      v8 ^= 1u;
    }

    goto LABEL_18;
  }

  return 0;
}

std::string *UTFString::remove_invalid_utf8_codes(std::string *this, uint8_t *s)
{
  v2 = s;
  v3 = this;
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v4 = s[23];
  if (v4 < 0)
  {
    v4 = *(s + 1);
    if (!v4)
    {
      return this;
    }

    v2 = *s;
LABEL_6:
    if (v4 < 1)
    {
      return this;
    }

    while (1)
    {
      v5 = v4 - 1;
      pi = v4 - 1;
      if ((v2[(v4 - 1)] & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      this = utf8_prevCharSafeBody(v2, 0, &pi, v2[(v4 - 1)], -1);
      if ((this & 0x80000000) == 0)
      {
        break;
      }

LABEL_11:
      LODWORD(v4) = pi;
      if (pi <= 0)
      {
        return this;
      }
    }

    v5 = pi;
LABEL_10:
    this = std::string::insert(v3, 0, &v2[v5], v4 - v5);
    goto LABEL_11;
  }

  if (s[23])
  {
    goto LABEL_6;
  }

  return this;
}

void sub_1C2FDED9C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void FrontendFeatureLogModuleInternal::phoneme_by_words_hydra(FrontendFeatureLogModuleInternal *this, const FrontendFeature *a2, uint64_t a3)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  std::vector<PhoneFeature>::__init_with_size[abi:ne200100]<PhoneFeature*,PhoneFeature*>(&v28, a2, a3, 0x84BDA12F684BDA13 * ((a3 - a2) >> 3));
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v4 = v28;
  v5 = v29;
  if (v28 == v29)
  {
    goto LABEL_46;
  }

  do
  {
    v6 = *(v4 + 119);
    if (v6 < 0)
    {
      if (*(v4 + 104) != 1)
      {
        goto LABEL_14;
      }

      v7 = **(v4 + 96);
    }

    else
    {
      if (v6 != 1)
      {
        goto LABEL_14;
      }

      v7 = *(v4 + 96);
    }

    if (v7 == 35 || v7 == 95)
    {
      v8 = v25;
      v9 = v26;
      if (v25 == v26)
      {
        goto LABEL_39;
      }

      v10 = v26 - 3;
      v11 = *(v26 - 1);
      if (v11 < 0)
      {
        if (*(v26 - 2) != 1 || **v10 != 46)
        {
          goto LABEL_33;
        }

        operator delete(*v10);
        v8 = v25;
      }

      else if (v11 != 1 || *v10 != 46)
      {
        goto LABEL_33;
      }

      v26 = v10;
      v9 = v10;
LABEL_33:
      if (v8 == v9)
      {
        goto LABEL_39;
      }

      std::vector<std::vector<std::string>>::push_back[abi:ne200100](this, &v25);
      v15 = v25;
      v18 = v26;
      while (v18 != v15)
      {
        v19 = *(v18 - 1);
        v18 -= 3;
        if (v19 < 0)
        {
          operator delete(*v18);
        }
      }

      goto LABEL_38;
    }

LABEL_14:
    if (*(v4 + 156) == 1 && v25 != v26)
    {
      std::vector<std::vector<std::string>>::push_back[abi:ne200100](this, &v25);
      v12 = v25;
      v13 = v26;
      while (v13 != v12)
      {
        v14 = *(v13 - 1);
        v13 -= 3;
        if (v14 < 0)
        {
          operator delete(*v13);
        }
      }

      v26 = v12;
    }

    std::vector<std::string>::push_back[abi:ne200100](&v25, (v4 + 96));
    if (*(v4 + 160) == 1)
    {
      std::vector<std::vector<std::string>>::push_back[abi:ne200100](this, &v25);
      v15 = v25;
      v16 = v26;
      while (v16 != v15)
      {
        v17 = *(v16 - 1);
        v16 -= 3;
        if (v17 < 0)
        {
          operator delete(*v16);
        }
      }

LABEL_38:
      v26 = v15;
      goto LABEL_39;
    }

    if (*(v4 + 172) == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, ".");
      std::vector<std::string>::push_back[abi:ne200100](&v25, __p);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }
    }

LABEL_39:
    v4 += 216;
  }

  while (v4 != v5);
  if (v25 != v26)
  {
    std::vector<std::vector<std::string>>::push_back[abi:ne200100](this, &v25);
    v20 = v25;
    v21 = v26;
    while (v21 != v20)
    {
      v22 = *(v21 - 1);
      v21 -= 3;
      if (v22 < 0)
      {
        operator delete(*v21);
      }
    }

    v26 = v20;
  }

LABEL_46:
  __p[0] = &v25;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  v25 = &v28;
  std::vector<PhoneFeature>::__destroy_vector::operator()[abi:ne200100](&v25);
}

void sub_1C2FDF058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char **__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char *a16, uint64_t a17, uint64_t a18, char a19)
{
  __p = &a16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a16);
  a16 = &a19;
  std::vector<PhoneFeature>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<std::string>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    v21 = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<kaldi::CuMatrix<float>>>>(a1, v11);
    }

    v12 = 24 * v8;
    v17 = 0;
    v18 = v12;
    v19 = 24 * v8;
    v20 = 0;
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(24 * v8, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
    v7 = (v19 + 24);
    v13 = *(a1 + 8) - *a1;
    v14 = &v18[-v13];
    memcpy(&v18[-v13], *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v7;
    v16 = *(a1 + 16);
    *(a1 + 16) = v20;
    v19 = v15;
    v20 = v16;
    v17 = v15;
    v18 = v15;
    result = std::__split_buffer<std::vector<std::string>>::~__split_buffer(&v17);
  }

  else
  {
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    result = std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v5, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
    v7 = v5 + 3;
    *(a1 + 8) = v7;
  }

  *(a1 + 8) = v7;
  return result;
}

void sub_1C2FDF214(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<std::string>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t GeneratedPromptDB::find_prompt_by_text(uint64_t a1, std::string *__str, uint64_t a3)
{
  v6 = *(a1 + 32);
  if (!v6)
  {
    goto LABEL_20;
  }

  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    size = __str->__r_.__value_.__l.__size_;
    if (size != 4)
    {
      if (size != 8)
      {
        goto LABEL_20;
      }

      v7 = __str->__r_.__value_.__r.__words[0];
      goto LABEL_9;
    }

    data = *__str->__r_.__value_.__l.__data_;
  }

  else
  {
    if (*(&__str->__r_.__value_.__s + 23) != 4)
    {
      v7 = __str;
      if (*(&__str->__r_.__value_.__s + 23) != 8)
      {
        goto LABEL_20;
      }

LABEL_9:
      if (v7->__r_.__value_.__r.__words[0] != 0x7661772E70656562)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }

    data = __str->__r_.__value_.__l.__data_;
  }

  if (data != 1885693282)
  {
    goto LABEL_20;
  }

LABEL_14:
  v10 = *(a3 + 23);
  if (v10 < 0)
  {
    if (*(a3 + 8) != 4)
    {
      goto LABEL_20;
    }

    v11 = *a3;
  }

  else
  {
    v11 = a3;
    if (v10 != 4)
    {
      goto LABEL_20;
    }
  }

  if (*v11 == -1415208976)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "beep");
    v19 = (*(*v6 + 16))(v6, &__p, a3);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v19 != -1)
    {
      return *(a1 + 8) | v19;
    }
  }

LABEL_20:
  v12 = *(a1 + 24);
  if (v12)
  {
    v13 = (*(*v12 + 16))(v12, __str, a3);
    if (v13 != -1)
    {
      return *(a1 + 12) | v13;
    }
  }

  v15 = *(a1 + 16);
  if (!v15 || (result = (*(*v15 + 16))(v15, __str, a3), result == -1))
  {
    v16 = *(a1 + 32);
    if (v16)
    {
      if ((SHIBYTE(__str->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        v17 = __str;
        if (!*(&__str->__r_.__value_.__s + 23))
        {
          return 0xFFFFFFFFLL;
        }

LABEL_31:
        if (v17->__r_.__value_.__s.__data_[0] == 47)
        {
          std::string::basic_string(&__p, __str, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v21);
          v18 = (*(*v16 + 16))(v16, &__p, a3);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v18 != -1)
          {
            return *(a1 + 8) | v18;
          }
        }

        return 0xFFFFFFFFLL;
      }

      if (__str->__r_.__value_.__l.__size_)
      {
        v17 = __str->__r_.__value_.__r.__words[0];
        goto LABEL_31;
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

void sub_1C2FDF4C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NeuralPromptModule::process_data(uint64_t a1, uint64_t *a2)
{
  v191[0] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  {
    goto LABEL_343;
  }

  v6 = *(*v5 + 16);
  v181 = *(*v5 + 8);
  v182 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SharedObjectPool::get_if<TTSSynthesizerEventBusInternal>(&v179, *(a1 + 168));
  SharedObjectPool::get_if<TTSSynthesizer::VoiceDescription>(&v177, *(a1 + 168));
  if (v177)
  {
    v7 = *(v177 + 84) == 3;
  }

  else
  {
    v7 = 0;
  }

  SharedObjectPool::get_if<FrontendEnvironment>(&v175, *(a1 + 168));
  if (v175)
  {
    v8 = v175 + 216;
    {
      __str.__first_ = &v190;
      operator new();
    }

    if (v8 == v9)
    {
      first = 0;
    }

    else
    {
      first = (*(v9 + 40) + 8);
    }
  }

  else
  {
    SharedObjectPool::get_if<PromptConfig>(&__str, *(a1 + 168));
    first = __str.__first_;
    if (__str.__begin_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__str.__begin_);
    }
  }

  SharedObjectPool::get<GeneratedPromptDB>(&v173, *(a1 + 168));
  v11 = v173;
  if (!(*(*v173 + 80))(v173) || first && (first->__r_.__value_.__s.__data_[0] & 1) != 0)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v13 = (*(*v11 + 64))(v11);
    v12 = 1;
  }

  v14 = v181;
  v15 = *v181;
  if (*v181 == v181[1])
  {
    v16 = *v181;
  }

  else
  {
    NeuralPromptModule::process_prosodic_markers(a1, v15[9], v15[10]);
    v14 = v181;
    v15 = *v181;
    v16 = v181[1];
  }

  if (0x84BDA12F684BDA13 * ((v16 - v15) >> 3) >= 2)
  {
    NeuralPromptModule::process_prosodic_markers(a1, v15[36], v15[37]);
    v14 = v181;
  }

  v165 = a2;
  v17 = v182;
  if (v182)
  {
    atomic_fetch_add_explicit(&v182->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v172[0] = a1;
  v172[1] = &v181;
  v172[2] = &v179;
  memset(&v171, 0, sizeof(v171));
  v18 = *v14;
  v19 = v14;
  if (v14[1] - *v14 != 216)
  {
    goto LABEL_53;
  }

  v19 = v14;
  if (*(v18 + 24) != 1)
  {
    goto LABEL_53;
  }

  v21 = *(v18 + 72);
  v20 = *(v18 + 80);
  v19 = v14;
  if (v21 == v20)
  {
    goto LABEL_53;
  }

  while (*v21 != 9)
  {
    v21 += 56;
    if (v21 == v20)
    {
      v19 = v14;
      goto LABEL_53;
    }
  }

  if (*(v21 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *(v21 + 8), *(v21 + 16));
  }

  else
  {
    v22 = *(v21 + 8);
    __str.__end_ = *(v21 + 24);
    *&__str.__first_ = v22;
  }

  PromptStream::normalize_audio_prompt_name(&__str.__first_);
  std::string::operator=(&v171, &__str);
  if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v171.__r_.__value_.__l.__size_ == 7)
    {
      v23 = v171.__r_.__value_.__r.__words[0];
LABEL_41:
      v24 = 1196446287;
      v25 = bswap32(*v23);
      if (v25 == 1196446287 && (v24 = 1330466900, v25 = bswap32(*(v23 + 3)), v25 == 1330466900))
      {
        v26 = v12;
        v27 = 0;
      }

      else
      {
        v26 = v12;
        if (v25 < v24)
        {
          v27 = -1;
        }

        else
        {
          v27 = 1;
        }
      }

      v28 = v27 == 0;
      goto LABEL_49;
    }
  }

  else if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) == 7)
  {
    v23 = &v171;
    goto LABEL_41;
  }

  v26 = v12;
  v28 = 0;
LABEL_49:
  if (SHIBYTE(__str.__end_) < 0)
  {
    operator delete(__str.__first_);
  }

  if (!v28)
  {
    v140 = *(v21 + 48);
    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v141 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_INFO))
    {
      v143 = &v171;
      if ((v171.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v143 = v171.__r_.__value_.__r.__words[0];
      }

      LODWORD(__str.__first_) = 136315138;
      *(&__str.__first_ + 4) = v143;
      _os_log_impl(&dword_1C2F95000, v141, OS_LOG_TYPE_INFO, "FrontendFeature contains only audio '%s'", &__str, 0xCu);
    }

    v144 = &v171;
    if ((v171.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v144 = v171.__r_.__value_.__r.__words[0];
    }

    Diagnostics::log(6, "FrontendFeature contains only audio '%s'", v142, v144);
    SharedObjectPool::get<GeneratedPromptDB>(&v190, *(a1 + 168));
    SharedObjectPool::get<SynthesizerConfig>(&v184, *(a1 + 168));
    v145 = v184;
    if (SHIBYTE(v184[2].__end_cap_.__value_) >= 0)
    {
      value_high = HIBYTE(v184[2].__end_cap_.__value_);
    }

    else
    {
      value_high = v184[2].__end_cap_.__value_;
    }

    p_str = &__str;
    std::string::basic_string[abi:ne200100](&__str, value_high + 4);
    if (SHIBYTE(__str.__end_) < 0)
    {
      p_str = __str.__first_;
    }

    if (value_high)
    {
      if (SHIBYTE(v145[2].__end_cap_.__value_) >= 0)
      {
        p_end = &v145[2].__end_;
      }

      else
      {
        p_end = v145[2].__end_;
      }

      memmove(p_str, p_end, value_high);
    }

    v149 = &p_str[value_high];
    *v149 = -1415208976;
    v149[4] = 0;
    v150 = v190.__r_.__value_.__r.__words[0];
    v151 = (*(*v190.__r_.__value_.__l.__data_ + 16))(v190.__r_.__value_.__r.__words[0], &v171, &__str);
    v152 = v151;
    if (v151 == -1)
    {
      if (Diagnostics_GetLogObject(void)::onceToken != -1)
      {
        dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
      }

      v154 = Diagnostics_GetLogObject(void)::__profile_log_default;
      if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_ERROR))
      {
        v156 = &v171;
        if ((v171.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v156 = v171.__r_.__value_.__r.__words[0];
        }

        buf = 136315138;
        *buf_4 = v156;
        _os_log_impl(&dword_1C2F95000, v154, OS_LOG_TYPE_ERROR, "Prompt audio for canned audio '%s' is not found.", &buf, 0xCu);
      }

      v157 = &v171;
      if ((v171.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v157 = v171.__r_.__value_.__r.__words[0];
      }

      Diagnostics::log(3, "Prompt audio for canned audio '%s' is not found.", v155, v157);
      *&v183.__r_.__value_.__l.__data_ = 0uLL;
    }

    else
    {
      if ((*(v150 + 8) & v151) != 0)
      {
        size = HIBYTE(v171.__r_.__value_.__r.__words[2]);
        if ((v171.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v171.__r_.__value_.__l.__size_;
        }

        if (size >= 0xE)
        {
          std::string::compare(&v171, size - 13, 0xDuLL, "SonicResponse");
        }
      }

      NeuralPromptModule::generate_prompt(&v183, a1, v152);
    }

    if (SHIBYTE(__str.__end_) < 0)
    {
      operator delete(__str.__first_);
    }

    if (v185)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v185);
    }

    if (v190.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v190.__r_.__value_.__l.__size_);
    }

    if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v190, v171.__r_.__value_.__l.__data_, v171.__r_.__value_.__l.__size_);
    }

    else
    {
      v190 = v171;
    }

    memset(&__str, 0, 24);
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&__str, &v190, v191, 1uLL);
    NeuralPromptModule::process_data(std::shared_ptr<Agglomerate>)::$_1::operator()(v172, &v183);
    v184 = &__str;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v184);
    if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v190.__r_.__value_.__l.__data_);
    }

    v158 = *v14;
    v159 = v14[1];
    if (0x84BDA12F684BDA13 * ((v159 - *v14) >> 3) >= 3)
    {
      for (i = v158 + 432; i != v159; i += 216)
      {
        NeuralPromptModule::process_prosodic_markers(a1, *(i + 72), *(i + 80));
      }
    }

    if (v183.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v183.__r_.__value_.__l.__size_);
    }

    goto LABEL_329;
  }

  v19 = v181;
  v12 = v26;
LABEL_53:
  v168 = 0;
  v169 = 0;
  v170 = 0;
  if (!v13)
  {
    goto LABEL_155;
  }

  v163 = v14;
  v169 = 0;
  v29 = *v19;
  v30 = v19[1];
  if (*v19 == v30 || (v32 = *(v29 + 72), v31 = *(v29 + 80), v32 == v31))
  {
LABEL_154:
    v14 = v163;
    goto LABEL_155;
  }

  v33 = 0;
  v34 = v32 + 16;
  do
  {
    v35 = v34 - 16;
    if (*(v34 - 16) == 11 && *(v34 + 24) != 0)
    {
      v37 = (v34 - 8);
      v38 = *(v34 + 15);
      if (v38 < 0)
      {
        if (*v34 != 5)
        {
          goto LABEL_73;
        }

        v37 = *v37;
      }

      else if (v38 != 5)
      {
        goto LABEL_73;
      }

      v39 = *v37;
      v40 = *(v37 + 4);
      v42 = v39 == 1818587251 && v40 == 108;
      v33 |= v42;
    }

LABEL_73:
    v34 += 56;
  }

  while (v35 + 56 != v31);
  if ((v33 & 1) == 0)
  {
    goto LABEL_154;
  }

  memset(&v190, 0, sizeof(v190));
  v184 = 0;
  v185 = 0;
  v186 = 0;
  do
  {
    v43 = *(v29 + 72);
    v44 = *(v29 + 80);
    while (v43 != v44)
    {
      v45 = *v43;
      v46 = *(v43 + 40);
      if (*v43 != 11 || v46 == 0)
      {
        goto LABEL_92;
      }

      v48 = v43 + 8;
      v49 = *(v43 + 31);
      if (v49 < 0)
      {
        if (*(v43 + 16) != 5)
        {
          goto LABEL_91;
        }

        v48 = *v48;
      }

      else if (v49 != 5)
      {
        goto LABEL_91;
      }

      v50 = *v48;
      v51 = *(v48 + 4);
      if (v50 != 1818587251 || v51 != 108)
      {
LABEL_91:
        v45 = 11;
        goto LABEL_92;
      }

      if (v190.__r_.__value_.__r.__words[0] != v190.__r_.__value_.__l.__size_)
      {
        v62 = v190.__r_.__value_.__l.__size_ - 48;
        v63 = *(v190.__r_.__value_.__l.__size_ - 25);
        if (v63 < 0)
        {
          if (*(v190.__r_.__value_.__l.__size_ - 40) == 5)
          {
            v62 = *v62;
LABEL_135:
            v68 = *v62;
            v69 = *(v62 + 4);
            if (v68 == 1818587251 && v69 == 108)
            {
              goto LABEL_115;
            }
          }
        }

        else if (v63 == 5)
        {
          goto LABEL_135;
        }
      }

      std::vector<MarkerRecord>::push_back[abi:ne200100](&v190, v43);
      v71 = *(v29 + 80);
      v72 = *(v71 - 24);
      if (*(v71 - 56) != 3)
      {
        v72 += *(v71 - 16);
      }

      *(v190.__r_.__value_.__l.__size_ - 24) = v72;
      v45 = *v43;
      v46 = *(v43 + 40);
LABEL_92:
      if (v45 != 11 || v46 == 0)
      {
        goto LABEL_97;
      }

      v57 = v43 + 8;
      v58 = *(v43 + 31);
      if (v58 < 0)
      {
        if (*(v43 + 16) != 6)
        {
          goto LABEL_115;
        }

        v57 = *v57;
      }

      else if (v58 != 6)
      {
        goto LABEL_115;
      }

      v59 = *v57;
      v60 = *(v57 + 4);
      v61 = v59 == 1836216174 && v60 == 27745;
      if (v61 && v190.__r_.__value_.__r.__words[0] != v190.__r_.__value_.__l.__size_ && *(v190.__r_.__value_.__l.__size_ - 24) <= *(v43 + 32))
      {
        std::vector<MarkerRecord>::push_back[abi:ne200100](&v190, v43);
        v64 = v190.__r_.__value_.__l.__size_;
        if (v29 == v19[1] - 216)
        {
          *(v190.__r_.__value_.__l.__size_ - 24) = *(*(v29 + 72) + 32);
        }

        *(v64 - 16) = 0;
        v45 = *v43;
        v46 = *(v43 + 40);
LABEL_97:
        v54 = v45 != 3 || v46 == 0;
        if (!v54 && v190.__r_.__value_.__l.__size_ != v190.__r_.__value_.__r.__words[0] && *(v190.__r_.__value_.__l.__size_ - 56) == 11)
        {
          v55 = v190.__r_.__value_.__l.__size_ - 48;
          v56 = *(v190.__r_.__value_.__l.__size_ - 25);
          if (v56 < 0)
          {
            if (*(v190.__r_.__value_.__l.__size_ - 40) != 5)
            {
              goto LABEL_115;
            }

            v55 = *v55;
          }

          else if (v56 != 5)
          {
            goto LABEL_115;
          }

          v65 = *v55;
          v66 = *(v55 + 4);
          if (v65 == 1818587251 && v66 == 108)
          {
            std::vector<MarkerRecord>::push_back[abi:ne200100](&v184, v43);
          }
        }
      }

LABEL_115:
      v43 += 56;
    }

    v29 += 216;
  }

  while (v29 != v30);
  v14 = v163;
  if ((0x6DB6DB6DB6DB6DB7 * ((v190.__r_.__value_.__l.__size_ - v190.__r_.__value_.__r.__words[0]) >> 3)) > 1)
  {
    value = *(v190.__r_.__value_.__r.__words[0] + 32);
    v74 = *(v19 + 119);
    if ((v74 & 0x8000000000000000) != 0)
    {
      v74 = v19[13];
    }

    if (value < v74)
    {
      v75 = *(v190.__r_.__value_.__l.__size_ - 24);
      if (v75 <= v74)
      {
        if (v184 == v185)
        {
          v161 = (v75 - value);
        }

        else
        {
          value = v184->__end_cap_.__value_;
          v161 = (v185[-1].__vftable - value + v185[-1].__shared_owners_);
        }

        std::string::basic_string(&v183, v19 + 4, value, v161, &buf);
        operator new();
      }
    }

    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v76 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_INFO))
    {
      LOWORD(__str.__first_) = 0;
      _os_log_impl(&dword_1C2F95000, v76, OS_LOG_TYPE_INFO, "Fetch spell text failed, ignore!", &__str, 2u);
    }

    Diagnostics::log(6, "Fetch spell text failed, ignore!", v77);
  }

  __str.__first_ = &v184;
  std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](&__str);
  __str.__first_ = &v190;
  std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](&__str);
  v19 = v181;
LABEL_155:
  v78 = *v19;
  if (v19[1] == *v19 || (v80 = *(v78 + 72), v79 = *(v78 + 80), v80 == v79))
  {
    v83 = 0;
  }

  else
  {
    v81 = v80 + 56;
    do
    {
      v82 = *(v81 - 56);
      v83 = v82 == 1;
      v84 = v82 == 1 || v81 == v79;
      v81 += 56;
    }

    while (!v84);
  }

  v85 = v19[6];
  if (v19[7] - v85 == 72)
  {
    v86 = *(v85 + 8);
    if (v86 != -1 && !*v85)
    {
      v120 = *(v85 + 40);
      v121 = *(v85 + 41);
      v122 = v14;
      if (Diagnostics_GetLogObject(void)::onceToken != -1)
      {
        dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
      }

      v123 = Diagnostics_GetLogObject(void)::__profile_log_default;
      if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_INFO))
      {
        LOWORD(__str.__first_) = 0;
        _os_log_impl(&dword_1C2F95000, v123, OS_LOG_TYPE_INFO, "FrontendFeature contains preset prompt id.", &__str, 2u);
      }

      Diagnostics::log(6, "FrontendFeature contains preset prompt id.", v124);
      NeuralPromptModule::generate_prompt(&v184, a1, v86);
      v125 = v122;
      std::to_string(&v190, v86);
      memset(&__str, 0, 24);
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&__str, &v190, v191, 1uLL);
      NeuralPromptModule::process_data(std::shared_ptr<Agglomerate>)::$_1::operator()(v172, &v184);
      v183.__r_.__value_.__r.__words[0] = &__str;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v183);
      if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v190.__r_.__value_.__l.__data_);
      }

      v126 = *v122;
      v127 = v122[1];
      if (0x84BDA12F684BDA13 * ((v127 - *v125) >> 3) >= 3)
      {
        for (j = v126 + 432; j != v127; j += 216)
        {
          NeuralPromptModule::process_prosodic_markers(a1, *(j + 72), *(j + 80));
        }
      }

      goto LABEL_239;
    }
  }

  if (v7 || (v12 & 1) == 0)
  {
    goto LABEL_192;
  }

  v87 = *(a1 + 168);
  v88 = *(a1 + 176);
  if (v88)
  {
    atomic_fetch_add_explicit(&v88->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SharedObjectPool::get<GeneratedPromptDB>(&v190, v87);
  SharedObjectPool::get<SynthesizerConfig>(&v184, v87);
  if (SHIBYTE(v184[2].__end_cap_.__value_) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, v184[2].__end_, v184[2].__end_cap_.__value_);
  }

  else
  {
    *&__str.__first_ = *&v184[2].__end_;
    __str.__end_ = v184[2].__end_cap_.__value_;
  }

  v89 = (*(*v190.__r_.__value_.__l.__data_ + 16))(v190.__r_.__value_.__r.__words[0], v19 + 12, &__str);
  if (SHIBYTE(__str.__end_) < 0)
  {
    operator delete(__str.__first_);
  }

  if (v185)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v185);
  }

  if (v190.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v190.__r_.__value_.__l.__size_);
  }

  if (v88)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v88);
  }

  if (v89 == -1)
  {
LABEL_192:
    if (v12 && *(a1 + 280) == 1)
    {
      memset(&v190, 0, sizeof(v190));
      v184 = 0;
      v185 = 0;
      v186 = 0;
      v92 = v181;
      v93 = *(a1 + 168);
      v94 = *(a1 + 176);
      if (v94)
      {
        atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      is_partial_prompts_only = NeuralPromptModule::is_partial_prompts_only(a1, v92, &v190, v93);
      if (v94)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v94);
      }

      if (is_partial_prompts_only)
      {
        if (Diagnostics_GetLogObject(void)::onceToken != -1)
        {
          dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
        }

        v96 = Diagnostics_GetLogObject(void)::__profile_log_default;
        if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_INFO))
        {
          LOWORD(__str.__first_) = 0;
          _os_log_impl(&dword_1C2F95000, v96, OS_LOG_TYPE_INFO, "FrontendFeature matches partial prompts.", &__str, 2u);
        }

        Diagnostics::log(6, "FrontendFeature matches partial prompts.", v97);
        v99 = v190.__r_.__value_.__l.__size_;
        for (k = v190.__r_.__value_.__r.__words[0]; k != v99; ++k)
        {
          std::to_string(&v183, *k);
          v100 = v185;
          if (v185 >= v186)
          {
            v102 = 0xAAAAAAAAAAAAAAABLL * ((v185 - v184) >> 3);
            v103 = v102 + 1;
            if (v102 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            if (0x5555555555555556 * ((v186 - v184) >> 3) > v103)
            {
              v103 = 0x5555555555555556 * ((v186 - v184) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v186 - v184) >> 3) >= 0x555555555555555)
            {
              v104 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v104 = v103;
            }

            __str.__end_cap_.__value_ = &v184;
            if (v104)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v184, v104);
            }

            v105 = 8 * ((v185 - v184) >> 3);
            v106 = *&v183.__r_.__value_.__l.__data_;
            *(v105 + 16) = *(&v183.__r_.__value_.__l + 2);
            *v105 = v106;
            memset(&v183, 0, sizeof(v183));
            v107 = (24 * v102 + 24);
            v108 = (24 * v102 - (v185 - v184));
            memcpy((v105 - (v185 - v184)), v184, v185 - v184);
            v109 = v184;
            v110 = v186;
            v184 = v108;
            v185 = v107;
            v186 = 0;
            __str.__end_ = v109;
            __str.__end_cap_.__value_ = v110;
            __str.__first_ = v109;
            __str.__begin_ = v109;
            std::__split_buffer<std::string>::~__split_buffer(&__str);
            v185 = v107;
            if (SHIBYTE(v183.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v183.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v101 = *&v183.__r_.__value_.__l.__data_;
            v185->__shared_weak_owners_ = v183.__r_.__value_.__r.__words[2];
            v100->std::__shared_count = v101;
            v185 = v100 + 1;
          }
        }
      }

      *&__str.__first_ = 0uLL;
      v111 = v190.__r_.__value_.__r.__words[0];
      if (v190.__r_.__value_.__l.__size_ == v190.__r_.__value_.__r.__words[0])
      {
        v116 = 1;
      }

      else
      {
        v112 = 0;
        v113 = 0;
        do
        {
          if (v113)
          {
            NeuralPromptModule::generate_prompt(&v183, a1, v111[v113]);
            std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(v112 + 56, *(v112 + 64), *(v183.__r_.__value_.__r.__words[0] + 56), *(v183.__r_.__value_.__r.__words[0] + 64), (*(v183.__r_.__value_.__r.__words[0] + 64) - *(v183.__r_.__value_.__r.__words[0] + 56)) >> 2);
            if (v183.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v183.__r_.__value_.__l.__size_);
            }
          }

          else
          {
            NeuralPromptModule::generate_prompt(&v183, a1, *v111);
            begin = __str.__begin_;
            v115 = v183.__r_.__value_.__r.__words[0];
            *&__str.__first_ = *&v183.__r_.__value_.__l.__data_;
            if (begin)
            {
              v164 = v183.__r_.__value_.__r.__words[0];
              std::__shared_weak_count::__release_shared[abi:ne200100](begin);
              v115 = v164;
            }

            v112 = v115;
          }

          ++v113;
          v111 = v190.__r_.__value_.__r.__words[0];
        }

        while (v113 < (v190.__r_.__value_.__l.__size_ - v190.__r_.__value_.__r.__words[0]) >> 2);
        v116 = v112 == 0;
      }

      NeuralPromptModule::process_data(std::shared_ptr<Agglomerate>)::$_1::operator()(v172, &__str);
      if (!v116)
      {
        NeuralPromptModule::process_data(std::shared_ptr<Agglomerate>)::$_0::operator()(*v14, v14[1], a1);
        if (__str.__begin_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](__str.__begin_);
        }

        __str.__first_ = &v184;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
        if (v190.__r_.__value_.__r.__words[0])
        {
          v190.__r_.__value_.__l.__size_ = v190.__r_.__value_.__r.__words[0];
          operator delete(v190.__r_.__value_.__l.__data_);
        }

        goto LABEL_328;
      }

      if (__str.__begin_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__str.__begin_);
      }

      __str.__first_ = &v184;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
      if (v190.__r_.__value_.__r.__words[0])
      {
        v190.__r_.__value_.__l.__size_ = v190.__r_.__value_.__r.__words[0];
        operator delete(v190.__r_.__value_.__l.__data_);
      }
    }

    v130 = *v181;
    if (v181[1] - *v181 == 216 && *(v130 + 24) == 1)
    {
      v131 = *(v130 + 72);
      v132 = *(v130 + 80);
      while (v131 != v132)
      {
        if (*v131 == 7)
        {
          NeuralPromptModule::generate_silence(&v190, a1, v131[1]);
          memset(&__str, 0, 24);
          NeuralPromptModule::process_data(std::shared_ptr<Agglomerate>)::$_1::operator()(v172, &v190);
          v184 = &__str;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v184);
          v137 = v14[1];
          v138 = *v14 + 432;
          if (0x84BDA12F684BDA13 * ((v137 - *v14) >> 3) >= 3 && v137 != v138)
          {
            do
            {
              NeuralPromptModule::process_prosodic_markers(a1, *(v138 + 72), *(v138 + 80));
              v138 += 216;
            }

            while (v138 != v137);
          }

          v129 = v190.__r_.__value_.__l.__size_;
          if (v190.__r_.__value_.__l.__size_)
          {
            goto LABEL_240;
          }

          goto LABEL_328;
        }

        v131 += 14;
      }
    }

    v133 = v165[1];
    v166 = *v165;
    v167 = v133;
    if (v133)
    {
      atomic_fetch_add_explicit(&v133->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*a1 + 72))(a1, &v166);
    if (v167)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v167);
    }

    v134 = v14[1];
    v135 = *v14 + 432;
    if (0x84BDA12F684BDA13 * ((v134 - *v14) >> 3) >= 3 && v134 != v135)
    {
      do
      {
        NeuralPromptModule::process_prosodic_markers(a1, *(v135 + 72), *(v135 + 80));
        v135 += 216;
      }

      while (v135 != v134);
    }
  }

  else if (v83)
  {
    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v90 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_INFO))
    {
      LOWORD(__str.__first_) = 0;
      _os_log_impl(&dword_1C2F95000, v90, OS_LOG_TYPE_INFO, "FrontendFeature matches full input prompt.", &__str, 2u);
    }

    Diagnostics::log(6, "FrontendFeature matches full input prompt.", v91);
    NeuralPromptModule::generate_prompt(&v184, a1, v89);
    std::to_string(&v190, v89);
    memset(&__str, 0, 24);
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&__str, &v190, v191, 1uLL);
    NeuralPromptModule::process_data(std::shared_ptr<Agglomerate>)::$_1::operator()(v172, &v184);
    v183.__r_.__value_.__r.__words[0] = &__str;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v183);
    if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v190.__r_.__value_.__l.__data_);
    }

    NeuralPromptModule::process_data(std::shared_ptr<Agglomerate>)::$_0::operator()(*v14, v14[1], a1);
LABEL_239:
    v129 = v185;
    if (v185)
    {
LABEL_240:
      std::__shared_weak_count::__release_shared[abi:ne200100](v129);
    }
  }

  else
  {
    v117 = *v14;
    v118 = v14[1];
    if (0x84BDA12F684BDA13 * ((v118 - *v14) >> 3) >= 3)
    {
      for (m = v117 + 432; m != v118; m += 216)
      {
        NeuralPromptModule::process_prosodic_markers(a1, *(m + 72), *(m + 80));
      }
    }
  }

LABEL_328:
  __str.__first_ = &v168;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
LABEL_329:
  if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v171.__r_.__value_.__l.__data_);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v174)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v174);
  }

  if (v176)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v176);
  }

  if (v178)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v178);
  }

  if (v180)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v180);
  }

  if (v182)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v182);
  }

LABEL_343:
  v162 = *MEMORY[0x1E69E9840];
}

void sub_1C2FE10D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t buf, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, uint64_t a59, void *__p, uint64_t a61, int a62, __int16 a63)
{
  if (v66)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v66);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  if (a65 < 0)
  {
    operator delete(__p);
  }

  if (a45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a45);
  }

  if (a49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a49);
  }

  a44 = &a20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a44);
  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a33);
  }

  if (a35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a35);
  }

  if (a37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a37);
  }

  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a39);
  }

  if (a41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a41);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<FrontendFeature>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v2 = (a1 + 72);
  std::vector<Prompt>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (a1 + 48);
  std::vector<WordFeature>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (a1 + 24);
  std::vector<PhoneFeature>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void NeuralAdapterModule::process_data(uint64_t a1, uint64_t *a2)
{
  v314 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  {
    goto LABEL_755;
  }

  v5 = *(*v4 + 16);
  v291[0] = *(*v4 + 8);
  v291[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    NeuralAdapterModule::setup_features(a1, v291);
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    NeuralAdapterModule::setup_features(a1, v291);
  }

  SharedObjectPool::get_if<TTSSynthesizer::VoiceDescription>(&v289, *(a1 + 168));
  if (v289)
  {
    v6 = *(v289 + 84) == 3;
  }

  else
  {
    v6 = 0;
  }

  NeuralAdapterModule::process_markers(a1, *(**(a1 + 840) + 72), *(**(a1 + 840) + 80));
  v7 = *(a1 + 840);
  if (v6 && 0x84BDA12F684BDA13 * ((v7[1] - *v7) >> 3) >= 2)
  {
    NeuralAdapterModule::process_markers(a1, *(*v7 + 288), *(*v7 + 296));
    v7 = *(a1 + 840);
  }

  if (v7[1] == *v7)
  {
    v9 = 0;
    v267 = 0;
    goto LABEL_747;
  }

  v275 = 0;
  v8 = 0;
  v9 = 0;
  v267 = 0;
  v10 = a1 + 856;
  v288 = (a1 + 400);
  __str = (a1 + 616);
  v286 = (a1 + 928);
  v282 = (a1 + 952);
  v262 = a1 + 544;
  v260 = a1 + 512;
  v274 = (a1 + 976);
  v266 = a1 + 280;
  v271 = a1 + 432;
  v268 = a1 + 456;
  v264 = a1 + 480;
  v11 = *(a1 + 840);
  v12 = *v11;
  v287 = (a1 + 856);
  do
  {
    v278 = v8;
    v13 = v12 + 216 * v8;
    if ((*(v13 + 24) & 1) == 0)
    {
      v137 = v11 + 3;
      v136 = v11[3];
      if (0xF0F0F0F0F0F0F0F1 * ((v137[1] - v136) >> 3) <= v267)
      {
        __p.__r_.__value_.__r.__words[0] = 0x8000000080000000;
        *&__p.__r_.__value_.__r.__words[1] = 0u;
        v302 = 0u;
        v303 = 0u;
        v304 = 0u;
        v305 = 0u;
        v306 = 0u;
        v307 = 0u;
        data = 0x7FFFFFFF;
        v308 = 0u;
      }

      else
      {
        WordFeature::WordFeature(&__p, v136 + 136 * v267);
        data = __p.__r_.__value_.__l.__data_;
      }

      v141 = v8;
      if (v8 != data)
      {
        if (Diagnostics_GetLogObject(void)::onceToken != -1)
        {
          dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
        }

        v142 = Diagnostics_GetLogObject(void)::__profile_log_default;
        if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          *&buf[4] = v8;
          *&buf[8] = 1024;
          *&buf[10] = __p.__r_.__value_.__l.__data_;
          _os_log_impl(&dword_1C2F95000, v142, OS_LOG_TYPE_ERROR, "Phoneme index %d != word phoneme offset %d", buf, 0xEu);
        }

        Diagnostics::log(3, "Phoneme index %d != word phoneme offset %d", v143, v8, LODWORD(__p.__r_.__value_.__l.__data_));
        v141 = __p.__r_.__value_.__l.__data_;
      }

      v144 = (HIDWORD(__p.__r_.__value_.__r.__words[0]) + v141);
      v145 = 1749801491 * ((*(*(a1 + 840) + 8) - **(a1 + 840)) >> 3);
      if ((v144 & 0x80000000) != 0 || v144 > v145)
      {
        if (Diagnostics_GetLogObject(void)::onceToken != -1)
        {
          dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
        }

        v146 = Diagnostics_GetLogObject(void)::__profile_log_default;
        if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          *&buf[4] = v144;
          *&buf[8] = 1024;
          *&buf[10] = v145;
          _os_log_impl(&dword_1C2F95000, v146, OS_LOG_TYPE_ERROR, "word phoneme end %d > limit %d", buf, 0xEu);
        }

        Diagnostics::log(3, "word phoneme end %d > limit %d", v147, v144, v145);
        LODWORD(v144) = v145;
      }

      if (v8 < v144)
      {
        v277 = -1;
        v140 = v8;
        v270 = v144;
        while (1)
        {
          v279 = v140;
          v148 = **(a1 + 840) + 216 * v140;
          v149 = v277;
          if (*(v148 + 148) != v277)
          {
            if (v277 < 0)
            {
              v149 = *(v148 + 148);
            }

            else
            {
              std::vector<std::string>::push_back[abi:ne200100](v10, v288);
              std::vector<std::string>::push_back[abi:ne200100](a1 + 880, (*(a1 + 888) - 24));
              std::vector<std::string>::push_back[abi:ne200100](v10 + 48, (*(a1 + 912) - 24));
              if (*(a1 + 423) < 0)
              {
                std::string::__init_copy_ctor_external(&v296, *(a1 + 400), *(a1 + 408));
              }

              else
              {
                *&v296.__r_.__value_.__l.__data_ = *v288;
                v296.__r_.__value_.__r.__words[2] = *(a1 + 416);
              }

              if (SBYTE7(v304) < 0)
              {
                std::string::__init_copy_ctor_external(&v295, v303, *(&v303 + 1));
              }

              else
              {
                *&v295.__r_.__value_.__l.__data_ = v303;
                v295.__r_.__value_.__r.__words[2] = v304;
              }

              TacotronPhoneFeature::TacotronPhoneFeature(buf, &v296, &v295, __p.__r_.__value_.__r.__words[1], SHIDWORD(__p.__r_.__value_.__r.__words[1]), 1, 0, 0, *(a1 + 296), *(a1 + 300));
              std::vector<TacotronPhoneFeature>::push_back[abi:ne200100](v286, buf);
              v313.__r_.__value_.__r.__words[0] = v312;
              std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](&v313);
              if (v311 < 0)
              {
                operator delete(*&buf[24]);
              }

              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }

              if (SHIBYTE(v295.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v295.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v296.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v296.__r_.__value_.__l.__data_);
              }

              if (*(a1 + 423) >= 0)
              {
                v150 = *(a1 + 423);
              }

              else
              {
                v150 = *(a1 + 408);
              }

              std::string::basic_string[abi:ne200100](buf, v150 + 1);
              if (buf[23] >= 0)
              {
                v151 = buf;
              }

              else
              {
                v151 = *buf;
              }

              if (v150)
              {
                if (*(a1 + 423) >= 0)
                {
                  v152 = (a1 + 400);
                }

                else
                {
                  v152 = *(a1 + 400);
                }

                memmove(v151, v152, v150);
              }

              *&v151[v150] = 32;
              if (buf[23] >= 0)
              {
                v153 = buf;
              }

              else
              {
                v153 = *buf;
              }

              if (buf[23] >= 0)
              {
                v154 = buf[23];
              }

              else
              {
                v154 = *&buf[8];
              }

              std::string::append(v282, v153, v154);
              v10 = a1 + 856;
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }

              v149 = *(v148 + 148);
            }
          }

          if (*(v148 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v294, *v148, *(v148 + 8));
          }

          else
          {
            v155 = *v148;
            v294.__r_.__value_.__r.__words[2] = *(v148 + 16);
            *&v294.__r_.__value_.__l.__data_ = v155;
          }

          if ((*(a1 + 615) & 0x8000000000000000) != 0)
          {
            if (!*(a1 + 600))
            {
              goto LABEL_413;
            }
          }

          else if (!*(a1 + 615))
          {
            goto LABEL_413;
          }

          if (!*(v148 + 152))
          {
            goto LABEL_413;
          }

          if (*(a1 + 644) == 1)
          {
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 592), &v294.__r_.__value_.__l.__data_, buf);
            v156 = std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::find<std::string>(a1 + 272, buf);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            if (v266 != v156)
            {
              std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 592), &v294.__r_.__value_.__l.__data_, buf);
LABEL_410:
              if (SHIBYTE(v294.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v294.__r_.__value_.__l.__data_);
              }

              v294 = *buf;
            }
          }

          else
          {
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v294.__r_.__value_.__l.__data_, (a1 + 592), buf);
            v157 = std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::find<std::string>(a1 + 272, buf);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            if (v266 != v157)
            {
              std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v294.__r_.__value_.__l.__data_, (a1 + 592), buf);
              goto LABEL_410;
            }
          }

LABEL_413:
          v277 = v149;
          v158 = *(a1 + 1000);
          NeuralAdapterModule::process_markers(a1, *(v148 + 72), *(v148 + 80));
          *(a1 + 1000) = v158;
          std::vector<std::string>::push_back[abi:ne200100](v10, &v294);
          std::vector<std::string>::push_back[abi:ne200100](a1 + 880, (v148 + 120));
          std::vector<std::string>::push_back[abi:ne200100](v10 + 48, (a1 + 304));
          if (SHIBYTE(v294.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v293, v294.__r_.__value_.__l.__data_, v294.__r_.__value_.__l.__size_);
          }

          else
          {
            v293 = v294;
          }

          if (SBYTE7(v304) < 0)
          {
            std::string::__init_copy_ctor_external(&v292, v303, *(&v303 + 1));
          }

          else
          {
            *&v292.__r_.__value_.__l.__data_ = v303;
            v292.__r_.__value_.__r.__words[2] = v304;
          }

          TacotronPhoneFeature::TacotronPhoneFeature(buf, &v293, &v292, __p.__r_.__value_.__r.__words[1], SHIDWORD(__p.__r_.__value_.__r.__words[1]), 0, 0, *(a1 + 1000), *(a1 + 296), *(a1 + 300));
          std::vector<TacotronPhoneFeature>::push_back[abi:ne200100](v286, buf);
          v313.__r_.__value_.__r.__words[0] = v312;
          std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](&v313);
          if (v311 < 0)
          {
            operator delete(*&buf[24]);
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          if (SHIBYTE(v292.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v292.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v293.__r_.__value_.__l.__data_);
          }

          v159 = *(v148 + 28);
          if (!v159)
          {
            v159 = 200;
          }

          v160 = *(v10 + 80);
          *(v160 - 48) = v159;
          if (v160 - 24 != v148 + 72)
          {
            std::vector<MarkerRecord>::__assign_with_size[abi:ne200100]<MarkerRecord*,MarkerRecord*>((v160 - 24), *(v148 + 72), *(v148 + 80), 0x6DB6DB6DB6DB6DB7 * ((*(v148 + 80) - *(v148 + 72)) >> 3));
          }

          v161 = *v274;
          v162 = *(a1 + 984);
          if (*v274 != v162)
          {
            std::vector<MarkerRecord>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MarkerRecord*>,std::__wrap_iter<MarkerRecord*>>((*(v10 + 80) - 24), *(*(v10 + 80) - 16), *v274, v162, 0x6DB6DB6DB6DB6DB7 * ((v162 - *v274) >> 3));
            std::vector<MarkerRecord>::clear[abi:ne200100](v274);
          }

          if (*(a1 + 1000) == 1)
          {
            *(a1 + 1000) = 0;
          }

          if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v294.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v294.__r_.__value_.__l.__size_;
          }

          std::string::basic_string[abi:ne200100](buf, size + 1);
          if (buf[23] >= 0)
          {
            v164 = buf;
          }

          else
          {
            v164 = *buf;
          }

          if (size)
          {
            if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v165 = &v294;
            }

            else
            {
              v165 = v294.__r_.__value_.__r.__words[0];
            }

            memmove(v164, v165, size);
          }

          *&v164[size] = 32;
          if (buf[23] >= 0)
          {
            v166 = buf;
          }

          else
          {
            v166 = *buf;
          }

          if (buf[23] >= 0)
          {
            v167 = buf[23];
          }

          else
          {
            v167 = *&buf[8];
          }

          std::string::append(v282, v166, v167);
          v10 = a1 + 856;
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          if (v271 != std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(a1 + 424, &v294.__r_.__value_.__l.__data_))
          {
            if (v268 == std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(a1 + 448, &v294.__r_.__value_.__l.__data_))
            {
              if (v264 == std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(a1 + 472, &v294.__r_.__value_.__l.__data_))
              {
                if (Diagnostics_GetLogObject(void)::onceToken != -1)
                {
                  dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
                }

                v170 = Diagnostics_GetLogObject(void)::__profile_log_default;
                if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_ERROR))
                {
                  v172 = &v294;
                  if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v172 = v294.__r_.__value_.__r.__words[0];
                  }

                  *buf = 136315138;
                  *&buf[4] = v172;
                }

                v173 = &v294;
                if ((v294.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v173 = v294.__r_.__value_.__r.__words[0];
                }
              }

              v168 = 44;
            }

            else
            {
              v168 = 46;
            }

            goto LABEL_475;
          }

          if (SHIBYTE(v294.__r_.__value_.__r.__words[2]) < 0)
          {
            if (v294.__r_.__value_.__l.__size_ != 1)
            {
              goto LABEL_476;
            }

            v169 = v294.__r_.__value_.__r.__words[0];
          }

          else
          {
            if (SHIBYTE(v294.__r_.__value_.__r.__words[2]) != 1)
            {
              goto LABEL_476;
            }

            v169 = &v294;
          }

          if (v169->__r_.__value_.__s.__data_[0] == 35)
          {
            v168 = 35;
LABEL_475:
            NeuralAdapterModule::save_break(a1, v168, v275, v9);
          }

LABEL_476:
          v174 = (v275 - v9);
          if (v174 >= *(a1 + 560))
          {
            if (Diagnostics_GetLogObject(void)::onceToken != -1)
            {
              dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
            }

            v180 = Diagnostics_GetLogObject(void)::__profile_log_default;
            if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_INFO))
            {
              *buf = 67109120;
              *&buf[4] = v275 - v9;
              _os_log_impl(&dword_1C2F95000, v180, OS_LOG_TYPE_INFO, "Max word limit reached. word count = %d", buf, 8u);
            }

            Diagnostics::log(6, "Max word limit reached. word count = %d", v181, v174);
LABEL_493:
            v182 = *(a1 + 1008);
            v183 = *(v182 + 8);
            v285 = *v182;
            __na = *(v182 + 16);
            v273 = *(v182 + 24);
            v184 = *(a1 + 1016);
            v185 = v184 - (v182 + 32);
            if (v184 != v182 + 32)
            {
              memmove(v182, (v182 + 32), v185 - 7);
            }

            *(a1 + 1016) = v182 + v185;
            v186 = *(a1 + 864);
            v187 = *(a1 + 856);
            v188 = 0xAAAAAAAAAAAAAAABLL * ((v186 - v187) >> 3);
            v189 = v183;
            if (v183 < v188)
            {
              v190 = *(a1 + 423);
              if (v190 >= 0)
              {
                v191 = *(a1 + 423);
              }

              else
              {
                v191 = *(a1 + 408);
              }

              v192 = v187 + 24 * v183;
              v189 = v183;
              do
              {
                v193 = *(v192 + 23);
                v194 = v193;
                if ((v193 & 0x80u) != 0)
                {
                  v193 = *(v192 + 8);
                }

                if (v193 != v191)
                {
                  goto LABEL_512;
                }

                v195 = v194 >= 0 ? v192 : *v192;
                v196 = *v288;
                v197 = v190 >= 0 ? (a1 + 400) : *v288;
                if (memcmp(v195, v197, v191))
                {
                  goto LABEL_512;
                }

                ++v189;
                v192 += 24;
              }

              while (v188 != v189);
              v189 = 0xAAAAAAAAAAAAAAABLL * ((v186 - v187) >> 3);
            }

LABEL_512:
            memset(&v313, 0, sizeof(v313));
            std::vector<std::string>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>>(&v313, v187 + 24 * v189, v186, 0xAAAAAAAAAAAAAAABLL * ((v186 - (v187 + 24 * v189)) >> 3));
            std::vector<std::string>::resize(v287, v183);
            v198 = 24 * v189 + *(a1 + 880);
            v199 = *(a1 + 888);
            memset(&v300, 0, sizeof(v300));
            std::vector<std::string>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>>(&v300, v198, v199, 0xAAAAAAAAAAAAAAABLL * ((v199 - v198) >> 3));
            std::vector<std::string>::resize((a1 + 880), v183);
            v200 = 24 * v189 + *(a1 + 904);
            v201 = *(a1 + 912);
            memset(&v299, 0, sizeof(v299));
            std::vector<std::string>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>>(&v299, v200, v201, 0xAAAAAAAAAAAAAAABLL * ((v201 - v200) >> 3));
            std::vector<std::string>::resize((a1 + 904), v183);
            v202 = *v286;
            v203 = *(a1 + 936);
            v204 = *v286 + 104 * v189;
            memset(&v298, 0, sizeof(v298));
            *buf = &v298;
            buf[8] = 0;
            if (v203 != v204)
            {
              v205 = 0x4EC4EC4EC4EC4EC5 * ((v203 - v204) >> 3);
              if (v205 <= 0x276276276276276)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<TacotronPhoneFeature>>(v205);
              }

              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v206 = 0x4EC4EC4EC4EC4EC5 * ((v203 - v202) >> 3);
            v207 = v183 >= v206;
            v208 = v183 - v206;
            if (v208 != 0 && v207)
            {
              v209 = *(a1 + 944);
              if (0x4EC4EC4EC4EC4EC5 * ((v209 - v203) >> 3) < v208)
              {
                if (v183 <= 0x276276276276276)
                {
                  v310 = a1 + 928;
                  v210 = 0x4EC4EC4EC4EC4EC5 * ((v209 - v202) >> 3);
                  v211 = 2 * v210;
                  if (2 * v210 <= v183)
                  {
                    v211 = v183;
                  }

                  if (v210 >= 0x13B13B13B13B13BLL)
                  {
                    v212 = 0x276276276276276;
                  }

                  else
                  {
                    v212 = v211;
                  }

                  std::__allocate_at_least[abi:ne200100]<std::allocator<TacotronPhoneFeature>>(v212);
                }

                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v213 = v203 + 104 * v208;
              do
              {
                *(v203 + 16) = 0uLL;
                *(v203 + 32) = 0uLL;
                *v203 = 0uLL;
                *(v203 + 48) = 0x8000000080000000;
                *(v203 + 56) = 0;
                *(v203 + 59) = 0;
                *(v203 + 64) = xmmword_1C3844BC0;
                *(v203 + 88) = 0;
                *(v203 + 96) = 0;
                *(v203 + 80) = 0;
                v203 += 104;
              }

              while (v203 != v213);
              *(a1 + 936) = v213;
            }

            else if (!v207)
            {
              std::vector<TacotronPhoneFeature>::__base_destruct_at_end[abi:ne200100](v286, (v202 + 104 * v183));
            }

            v214 = *(a1 + 975);
            for (i = __na; ; ++i)
            {
              v216 = v214;
              if ((v214 & 0x80) != 0)
              {
                v216 = *(a1 + 960);
              }

              if (i >= v216)
              {
                goto LABEL_541;
              }

              v217 = *std::string::at(v282, i);
              if (v217 != *std::string::at(v288, 0) && *std::string::at(v282, i) != 32)
              {
                break;
              }

              v214 = *(a1 + 975);
              v218 = v214;
              if (*(a1 + 975) < 0)
              {
                v218 = *(a1 + 960);
              }

              if (i >= v218 - 1)
              {
                goto LABEL_541;
              }
            }

            v214 = *(a1 + 975);
LABEL_541:
            v219 = a1 + 952;
            if ((v214 & 0x80) != 0)
            {
              v219 = *(a1 + 952);
              v214 = *(a1 + 960);
            }

            std::string::__init_with_size[abi:ne200100]<char const*,char const*>(&__dst, (i + v219), (v219 + v214), v214 - i);
            std::string::resize(v282, __na, 0);
            UTFString::rstrip(v282);
            if (Diagnostics_GetLogObject(void)::onceToken != -1)
            {
              dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
            }

            v220 = Diagnostics_GetLogObject(void)::__profile_log_default;
            if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_INFO))
            {
              *buf = 67109632;
              *&buf[4] = v273;
              *&buf[8] = 2048;
              *&buf[10] = v285->__r_.__value_.__r.__words + 1;
              *&buf[18] = 2048;
              *&buf[20] = v183;
              _os_log_impl(&dword_1C2F95000, v220, OS_LOG_TYPE_INFO, "Break [%c] %zu words %zu phones", buf, 0x1Cu);
            }

            Diagnostics::log(6, "Break [%c] %zu words %zu phones", v221, v273, &v285->__r_.__value_.__l.__data_ + 1, v183);
            NeuralAdapterModule::dump_features(a1);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 864) - *(a1 + 856)) >> 3) >= *(a1 + 564))
          {
            if (Diagnostics_GetLogObject(void)::onceToken != -1)
            {
              dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
            }

            v175 = Diagnostics_GetLogObject(void)::__profile_log_default;
            if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_INFO))
            {
              v177 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 864) - *(a1 + 856)) >> 3);
              *buf = 134217984;
              *&buf[4] = v177;
              _os_log_impl(&dword_1C2F95000, v175, OS_LOG_TYPE_INFO, "Max phone limit reached. phone count = %ld", buf, 0xCu);
            }

            Diagnostics::log(6, "Max phone limit reached. phone count = %ld", v176, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 864) - *(a1 + 856)) >> 3));
            if (*(a1 + 1008) == *(a1 + 1016))
            {
              if (Diagnostics_GetLogObject(void)::onceToken != -1)
              {
                dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
              }

              v178 = Diagnostics_GetLogObject(void)::__profile_log_default;
              if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_1C2F95000, v178, OS_LOG_TYPE_INFO, "No proper stop position found in phone vector, do hard split", buf, 2u);
              }

              Diagnostics::log(6, "No proper stop position found in phone vector, do hard split", v179);
              NeuralAdapterModule::save_break(a1, 35, v275, v9);
            }

            goto LABEL_493;
          }

          if (SHIBYTE(v294.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v294.__r_.__value_.__l.__data_);
          }

          v140 = v279 + 1;
          if (v270 == v279 + 1)
          {
            goto LABEL_553;
          }
        }
      }

      v140 = v8;
LABEL_553:
      v222 = *(a1 + 645);
      if (*(a1 + 1008) == *(a1 + 1016) || (*(a1 + 645) & 1) != 0)
      {
        if (*(a1 + 645))
        {
          NeuralAdapterModule::save_break(a1, 35, v267, v9);
LABEL_583:
          std::vector<std::string>::push_back[abi:ne200100](v10, v288);
          v230 = *(a1 + 888);
          if (v230 == *(a1 + 880))
          {
            std::string::basic_string[abi:ne200100]<0>(&v313, "-");
          }

          else if (*(v230 - 1) < 0)
          {
            std::string::__init_copy_ctor_external(&v313, *(v230 - 24), *(v230 - 16));
          }

          else
          {
            v231 = *(v230 - 24);
            v313.__r_.__value_.__r.__words[2] = *(v230 - 8);
            *&v313.__r_.__value_.__l.__data_ = v231;
          }

          std::vector<std::string>::push_back[abi:ne200100](a1 + 880, &v313);
          v232 = *(a1 + 912);
          if (v232 == *(a1 + 904))
          {
            std::string::basic_string[abi:ne200100]<0>(&v299, "narrator");
          }

          else if (*(v232 - 1) < 0)
          {
            std::string::__init_copy_ctor_external(&v299, *(v232 - 24), *(v232 - 16));
          }

          else
          {
            v233 = *(v232 - 24);
            v299.__r_.__value_.__r.__words[2] = *(v232 - 8);
            *&v299.__r_.__value_.__l.__data_ = v233;
          }

          std::vector<std::string>::push_back[abi:ne200100](v10 + 48, &v299);
          if (*(a1 + 423) >= 0)
          {
            v234 = *(a1 + 423);
          }

          else
          {
            v234 = *(a1 + 408);
          }

          std::string::basic_string[abi:ne200100](buf, v234 + 1);
          if (buf[23] >= 0)
          {
            v235 = buf;
          }

          else
          {
            v235 = *buf;
          }

          if (v234)
          {
            if (*(a1 + 423) >= 0)
            {
              v236 = (a1 + 400);
            }

            else
            {
              v236 = *(a1 + 400);
            }

            memmove(v235, v236, v234);
          }

          *&v235[v234] = 32;
          if (buf[23] >= 0)
          {
            v237 = buf;
          }

          else
          {
            v237 = *buf;
          }

          if (buf[23] >= 0)
          {
            v238 = buf[23];
          }

          else
          {
            v238 = *&buf[8];
          }

          std::string::append(v282, v237, v238);
          v10 = a1 + 856;
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          if (*(a1 + 423) < 0)
          {
            std::string::__init_copy_ctor_external(&v298, *(a1 + 400), *(a1 + 408));
          }

          else
          {
            *&v298.__r_.__value_.__l.__data_ = *v288;
            v298.__r_.__value_.__r.__words[2] = *(a1 + 416);
          }

          if (SBYTE7(v304) < 0)
          {
            std::string::__init_copy_ctor_external(&__dst, v303, *(&v303 + 1));
          }

          else
          {
            *&__dst.__r_.__value_.__l.__data_ = v303;
            __dst.__r_.__value_.__r.__words[2] = v304;
          }

          TacotronPhoneFeature::TacotronPhoneFeature(buf, &v298, &__dst, __p.__r_.__value_.__r.__words[1], SHIDWORD(__p.__r_.__value_.__r.__words[1]), 1, 0, 0, *(a1 + 296), *(a1 + 300));
          std::vector<TacotronPhoneFeature>::push_back[abi:ne200100](v286, buf);
          v296.__r_.__value_.__r.__words[0] = v312;
          std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](&v296);
          if (v311 < 0)
          {
            operator delete(*&buf[24]);
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v298.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v298.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v299.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v313.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v313.__r_.__value_.__l.__data_);
          }

          v223 = *(*(a1 + 840) + 24);
          v224 = 0xF0F0F0F0F0F0F0F1 * ((*(*(a1 + 840) + 32) - v223) >> 3);
          goto LABEL_631;
        }
      }

      else
      {
        v223 = *(*(a1 + 840) + 24);
        v224 = 0xF0F0F0F0F0F0F0F1 * ((*(*(a1 + 840) + 32) - v223) >> 3);
        if (v224 - 1 <= v267)
        {
LABEL_631:
          if (v224 > v267)
          {
            if (*(a1 + 645) == 1)
            {
              NeuralAdapterModule::find_last_char(&v313, v223 + 136 * v267 + 40, 0);
              if ((-1 - 0xF0F0F0F0F0F0F0FLL * ((*(*(a1 + 840) + 32) - *(*(a1 + 840) + 24)) >> 3) == v267 || *(a1 + 1008) == *(a1 + 1016) && (v267 - v9 + 1 == *(a1 + 560) || 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 864) - *(a1 + 856)) >> 3) >= *(a1 + 564))) && v271 == std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(a1 + 424, &v313.__r_.__value_.__l.__data_))
              {
                if (Diagnostics_GetLogObject(void)::onceToken != -1)
                {
                  dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
                }

                v239 = Diagnostics_GetLogObject(void)::__profile_log_default;
                if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1C2F95000, v239, OS_LOG_TYPE_DEBUG, "Append period in the end of utterance.", buf, 2u);
                }

                Diagnostics::log(7, "Append period in the end of utterance.", v240);
                std::string::operator=(&v313, (a1 + 568));
              }

              if (v271 != std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(a1 + 424, &v313.__r_.__value_.__l.__data_))
              {
                std::vector<std::string>::push_back[abi:ne200100](v10, &v313);
                std::vector<std::string>::push_back[abi:ne200100](a1 + 880, (*(a1 + 888) - 24));
                std::vector<std::string>::push_back[abi:ne200100](v10 + 48, (*(a1 + 912) - 24));
                if (SHIBYTE(v313.__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external(&v300, v313.__r_.__value_.__l.__data_, v313.__r_.__value_.__l.__size_);
                }

                else
                {
                  v300 = v313;
                }

                if (SBYTE7(v304) < 0)
                {
                  std::string::__init_copy_ctor_external(&v299, v303, *(&v303 + 1));
                }

                else
                {
                  *&v299.__r_.__value_.__l.__data_ = v303;
                  v299.__r_.__value_.__r.__words[2] = v304;
                }

                TacotronPhoneFeature::TacotronPhoneFeature(buf, &v300, &v299, __p.__r_.__value_.__r.__words[1], SHIDWORD(__p.__r_.__value_.__r.__words[1]), 0, 1, 0, *(a1 + 296), *(a1 + 300));
                std::vector<TacotronPhoneFeature>::push_back[abi:ne200100](v286, buf);
                v298.__r_.__value_.__r.__words[0] = v312;
                std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](&v298);
                if (v311 < 0)
                {
                  operator delete(*&buf[24]);
                }

                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }

                if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v299.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v300.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v300.__r_.__value_.__l.__data_);
                }

                *(*(v10 + 80) - 48) = 200;
                if ((v313.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v241 = HIBYTE(v313.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v241 = v313.__r_.__value_.__l.__size_;
                }

                std::string::basic_string[abi:ne200100](buf, v241 + 1);
                if (buf[23] >= 0)
                {
                  v242 = buf;
                }

                else
                {
                  v242 = *buf;
                }

                if (v241)
                {
                  if ((v313.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v243 = &v313;
                  }

                  else
                  {
                    v243 = v313.__r_.__value_.__r.__words[0];
                  }

                  memmove(v242, v243, v241);
                }

                *&v242[v241] = 32;
                if (buf[23] >= 0)
                {
                  v244 = buf;
                }

                else
                {
                  v244 = *buf;
                }

                if (buf[23] >= 0)
                {
                  v245 = buf[23];
                }

                else
                {
                  v245 = *&buf[8];
                }

                std::string::append(v282, v244, v245);
                v10 = a1 + 856;
                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }

                if (-1 - 0xF0F0F0F0F0F0F0FLL * ((*(*(a1 + 840) + 32) - *(*(a1 + 840) + 24)) >> 3) > v267 && (*(a1 + 1008) != *(a1 + 1016) || v267 - v9 + 1 != *(a1 + 560) && 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 864) - *(a1 + 856)) >> 3) < *(a1 + 564)))
                {
                  std::vector<std::string>::push_back[abi:ne200100](v287, v288);
                  std::vector<std::string>::push_back[abi:ne200100](a1 + 880, (*(a1 + 888) - 24));
                  std::vector<std::string>::push_back[abi:ne200100](a1 + 904, (*(a1 + 912) - 24));
                  if (*(a1 + 423) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v298, *(a1 + 400), *(a1 + 408));
                  }

                  else
                  {
                    *&v298.__r_.__value_.__l.__data_ = *v288;
                    v298.__r_.__value_.__r.__words[2] = *(a1 + 416);
                  }

                  if (SBYTE7(v304) < 0)
                  {
                    std::string::__init_copy_ctor_external(&__dst, v303, *(&v303 + 1));
                  }

                  else
                  {
                    *&__dst.__r_.__value_.__l.__data_ = v303;
                    __dst.__r_.__value_.__r.__words[2] = v304;
                  }

                  TacotronPhoneFeature::TacotronPhoneFeature(buf, &v298, &__dst, __p.__r_.__value_.__r.__words[1], SHIDWORD(__p.__r_.__value_.__r.__words[1]), 0, 0, 0, *(a1 + 296), *(a1 + 300));
                  std::vector<TacotronPhoneFeature>::push_back[abi:ne200100](v286, buf);
                  v296.__r_.__value_.__r.__words[0] = v312;
                  std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](&v296);
                  if (v311 < 0)
                  {
                    operator delete(*&buf[24]);
                  }

                  if ((buf[23] & 0x80000000) != 0)
                  {
                    operator delete(*buf);
                  }

                  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__dst.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v298.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v298.__r_.__value_.__l.__data_);
                  }

                  if (*(a1 + 423) >= 0)
                  {
                    v246 = *(a1 + 423);
                  }

                  else
                  {
                    v246 = *(a1 + 408);
                  }

                  std::string::basic_string[abi:ne200100](buf, v246 + 1);
                  if (buf[23] >= 0)
                  {
                    v247 = buf;
                  }

                  else
                  {
                    v247 = *buf;
                  }

                  if (v246)
                  {
                    if (*(a1 + 423) >= 0)
                    {
                      v248 = (a1 + 400);
                    }

                    else
                    {
                      v248 = *(a1 + 400);
                    }

                    memmove(v247, v248, v246);
                  }

                  *&v247[v246] = 32;
                  if (buf[23] >= 0)
                  {
                    v249 = buf;
                  }

                  else
                  {
                    v249 = *buf;
                  }

                  if (buf[23] >= 0)
                  {
                    v250 = buf[23];
                  }

                  else
                  {
                    v250 = *&buf[8];
                  }

                  std::string::append(v282, v249, v250);
                  v10 = a1 + 856;
                  if ((buf[23] & 0x80000000) != 0)
                  {
                    operator delete(*buf);
                  }
                }

                if (v268 == std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(a1 + 448, &v313.__r_.__value_.__l.__data_))
                {
                  if (v264 == std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(a1 + 472, &v313.__r_.__value_.__l.__data_))
                  {
                    if (Diagnostics_GetLogObject(void)::onceToken != -1)
                    {
                      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
                    }

                    v252 = Diagnostics_GetLogObject(void)::__profile_log_default;
                    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_ERROR))
                    {
                      v254 = &v313;
                      if ((v313.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                      {
                        v254 = v313.__r_.__value_.__r.__words[0];
                      }

                      *buf = 136315138;
                      *&buf[4] = v254;
                    }

                    v255 = &v313;
                    if ((v313.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v255 = v313.__r_.__value_.__r.__words[0];
                    }
                  }

                  v251 = 44;
                }

                else
                {
                  v251 = 46;
                }

                NeuralAdapterModule::save_break(a1, v251, v267, v9);
              }

              if (SHIBYTE(v313.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v313.__r_.__value_.__l.__data_);
              }
            }

            v275 = ++v267;
          }

          if (SHIBYTE(v308) < 0)
          {
            operator delete(*(&v307 + 1));
          }

          if (SBYTE7(v307) < 0)
          {
            operator delete(v306);
          }

          if (SHIBYTE(v305) < 0)
          {
            operator delete(*(&v304 + 1));
          }

          if (SBYTE7(v304) < 0)
          {
            operator delete(v303);
          }

          if (SHIBYTE(v302) < 0)
          {
            operator delete(__p.__r_.__value_.__r.__words[2]);
          }

          v11 = *(a1 + 840);
          goto LABEL_744;
        }
      }

      if (*(a1 + 975) < 0)
      {
        std::string::__init_copy_ctor_external(&v300, *(a1 + 952), *(a1 + 960));
      }

      else
      {
        *&v300.__r_.__value_.__l.__data_ = *&v282->__r_.__value_.__l.__data_;
        v300.__r_.__value_.__r.__words[2] = *(a1 + 968);
      }

      UTFString::rstrip(&v300);
      v313 = v300;
      memset(&v300, 0, sizeof(v300));
      NeuralAdapterModule::find_last_char(buf, &v313, 1);
      if (SHIBYTE(v313.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v313.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v300.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v300.__r_.__value_.__l.__data_);
      }

      if (v271 == std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(a1 + 424, buf))
      {
        v225 = 35;
      }

      else if (v268 == std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(a1 + 448, buf))
      {
        if (v264 == std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(a1 + 472, buf))
        {
          if (Diagnostics_GetLogObject(void)::onceToken != -1)
          {
            dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
          }

          v226 = Diagnostics_GetLogObject(void)::__profile_log_default;
          if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_ERROR))
          {
            v228 = buf;
            if (buf[23] < 0)
            {
              v228 = *buf;
            }

            LODWORD(v313.__r_.__value_.__l.__data_) = 136315138;
            *(v313.__r_.__value_.__r.__words + 4) = v228;
          }

          v229 = buf;
          if (buf[23] < 0)
          {
            v229 = *buf;
          }
        }

        v225 = 44;
      }

      else
      {
        v225 = 46;
      }

      NeuralAdapterModule::save_break(a1, v225, v267, v9);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      goto LABEL_583;
    }

    v272 = v8;
    v14 = *(v13 + 72);
    v15 = *(v13 + 80);
    if (v14 == v15)
    {
      goto LABEL_337;
    }

    __n = v9;
    v276 = *(v13 + 80);
    do
    {
      v16 = *(a1 + 639);
      if (v16 < 0)
      {
        if (!*(a1 + 624))
        {
LABEL_74:
          v20 = *v14;
LABEL_75:
          if (v20 == 10)
          {
            NeuralAdapterModule::process_bookmark(a1, v14);
          }

          goto LABEL_77;
        }
      }

      else if (!*(a1 + 639))
      {
        goto LABEL_74;
      }

      v17 = *(a1 + 840);
      v18 = *(v17 + 24);
      v19 = *(v17 + 32);
      v20 = *v14;
      v21 = v18 != v19 && v20 == 7;
      if (!v21)
      {
        goto LABEL_75;
      }

      if ((-1 - 252645135 * ((v19 - v18) >> 3)) >= v267)
      {
        v22 = v267;
      }

      else
      {
        v22 = -1 - 252645135 * ((v19 - v18) >> 3);
      }

      v23 = v14[1];
      if (v23 < 2)
      {
        goto LABEL_77;
      }

      v24 = v23;
      if (*(a1 + 640) == 2)
      {
        v25 = *(a1 + 864);
        v26 = *(a1 + 856);
        v27 = 0xAAAAAAAAAAAAAAABLL * ((v25 - v26) >> 3);
        v28 = (v25 - 48);
        v29 = v27 - 1;
        if (v27 <= 1)
        {
          v28 = buf;
        }

        if (v25 == v26)
        {
          v28 = buf;
        }

        v283 = v28;
        if (v25 == v26)
        {
          v30 = buf;
        }

        else
        {
          v30 = (v25 - 24);
        }

        if (*(a1 + 496) > v24)
        {
          v24 = *(a1 + 496);
        }

        v31 = v27 - 2;
        memset(buf, 0, 24);
        v32 = SHIBYTE(v30->__r_.__value_.__r.__words[2]);
        if (v32 >= 0)
        {
          v33 = HIBYTE(v30->__r_.__value_.__r.__words[2]);
        }

        else
        {
          v33 = v30->__r_.__value_.__l.__size_;
        }

        v34 = *(a1 + 423);
        v35 = v34;
        if ((v34 & 0x80u) != 0)
        {
          v34 = *(a1 + 408);
        }

        if (v33 == v34)
        {
          v36 = v32 >= 0 ? v30 : v30->__r_.__value_.__r.__words[0];
          v37 = *v288;
          v38 = v35 >= 0 ? (a1 + 400) : *v288;
          if (!memcmp(v36, v38, v33) && v262 != std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(a1 + 536, &v283->__r_.__value_.__l.__data_))
          {
            std::operator+<char>();
            v95 = std::string::append(&v299, "->");
            v96 = *&v95->__r_.__value_.__l.__data_;
            v300.__r_.__value_.__r.__words[2] = v95->__r_.__value_.__r.__words[2];
            *&v300.__r_.__value_.__l.__data_ = v96;
            v95->__r_.__value_.__l.__size_ = 0;
            v95->__r_.__value_.__r.__words[2] = 0;
            v95->__r_.__value_.__r.__words[0] = 0;
            v97 = *(a1 + 639);
            if (v97 >= 0)
            {
              v98 = (a1 + 616);
            }

            else
            {
              v98 = *(a1 + 616);
            }

            if (v97 >= 0)
            {
              v99 = *(a1 + 639);
            }

            else
            {
              v99 = *(a1 + 624);
            }

            v100 = std::string::append(&v300, v98, v99);
            v101 = *&v100->__r_.__value_.__l.__data_;
            v313.__r_.__value_.__r.__words[2] = v100->__r_.__value_.__r.__words[2];
            *&v313.__r_.__value_.__l.__data_ = v101;
            v100->__r_.__value_.__l.__size_ = 0;
            v100->__r_.__value_.__r.__words[2] = 0;
            v100->__r_.__value_.__r.__words[0] = 0;
            v102 = std::string::append(&v313, ") ");
            v103 = *&v102->__r_.__value_.__l.__data_;
            __p.__r_.__value_.__r.__words[2] = v102->__r_.__value_.__r.__words[2];
            *&__p.__r_.__value_.__l.__data_ = v103;
            v102->__r_.__value_.__l.__size_ = 0;
            v102->__r_.__value_.__r.__words[2] = 0;
            v102->__r_.__value_.__r.__words[0] = 0;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v105 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v105 = __p.__r_.__value_.__l.__size_;
            }

            std::string::append(v282, p_p, v105);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v313.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v313.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v300.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v300.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v299.__r_.__value_.__l.__data_);
            }

            std::string::operator=(v283, __str);
            v50 = *v286 + 104 * v31;
            std::string::operator=(v50, __str);
            goto LABEL_72;
          }
        }

        if (v262 == std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(a1 + 536, &v30->__r_.__value_.__l.__data_))
        {
          v85 = SHIBYTE(v30->__r_.__value_.__r.__words[2]);
          if (v85 >= 0)
          {
            v86 = HIBYTE(v30->__r_.__value_.__r.__words[2]);
          }

          else
          {
            v86 = v30->__r_.__value_.__l.__size_;
          }

          v87 = *(a1 + 423);
          v88 = v87;
          if ((v87 & 0x80u) != 0)
          {
            v87 = *(a1 + 408);
          }

          if (v86 == v87 && (v85 >= 0 ? (v89 = v30) : (v89 = v30->__r_.__value_.__r.__words[0]), (v90 = *v288, v88 >= 0) ? (v91 = (a1 + 400)) : (v91 = *v288), !memcmp(v89, v91, v86) && v260 != std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(a1 + 504, &v283->__r_.__value_.__l.__data_)))
          {
            v92 = *(a1 + 528);
            v93 = *(a1 + 928) + 104 * v31;
          }

          else
          {
            if (v260 == std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(a1 + 504, &v30->__r_.__value_.__l.__data_))
            {
              if (*(a1 + 856) != *(a1 + 864))
              {
                std::vector<std::string>::push_back[abi:ne200100](v10, __str);
                std::string::basic_string[abi:ne200100]<0>(&__p, "-");
                std::vector<std::string>::push_back[abi:ne200100](a1 + 880, &__p);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                v120 = *(a1 + 912);
                if (v120 == *(a1 + 904))
                {
                  std::string::basic_string[abi:ne200100]<0>(&v313, "narrator");
                }

                else if (*(v120 - 1) < 0)
                {
                  std::string::__init_copy_ctor_external(&v313, *(v120 - 24), *(v120 - 16));
                }

                else
                {
                  v121 = *(v120 - 24);
                  v313.__r_.__value_.__r.__words[2] = *(v120 - 8);
                  *&v313.__r_.__value_.__l.__data_ = v121;
                }

                std::vector<std::string>::push_back[abi:ne200100](v10 + 48, &v313);
                v122 = *(*(a1 + 840) + 24);
                if (*(a1 + 639) < 0)
                {
                  std::string::__init_copy_ctor_external(&v300, *(a1 + 616), *(a1 + 624));
                }

                else
                {
                  *&v300.__r_.__value_.__l.__data_ = *&__str->__r_.__value_.__l.__data_;
                  v300.__r_.__value_.__r.__words[2] = *(a1 + 632);
                }

                v123 = v122 + 136 * v22;
                if (*(v123 + 63) < 0)
                {
                  std::string::__init_copy_ctor_external(&v299, *(v123 + 40), *(v123 + 48));
                }

                else
                {
                  v124 = *(v123 + 40);
                  v299.__r_.__value_.__r.__words[2] = *(v123 + 56);
                  *&v299.__r_.__value_.__l.__data_ = v124;
                }

                TacotronPhoneFeature::TacotronPhoneFeature(&__p, &v300, &v299, *(v123 + 8), *(v123 + 12), v24, *(a1 + 296), *(a1 + 300));
                std::vector<TacotronPhoneFeature>::push_back[abi:ne200100](v286, &__p);
                v298.__r_.__value_.__r.__words[0] = &v305 + 8;
                std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](&v298);
                if (SBYTE7(v303) < 0)
                {
                  operator delete(v302);
                }

                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v299.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v300.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v300.__r_.__value_.__l.__data_);
                }

                *(*(a1 + 936) - 28) = *(a1 + 500);
                if (*(a1 + 639) >= 0)
                {
                  v125 = *(a1 + 639);
                }

                else
                {
                  v125 = *(a1 + 624);
                }

                std::string::basic_string[abi:ne200100](&__p, v125 + 1);
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v126 = &__p;
                }

                else
                {
                  v126 = __p.__r_.__value_.__r.__words[0];
                }

                if (v125)
                {
                  if (*(a1 + 639) >= 0)
                  {
                    v127 = (a1 + 616);
                  }

                  else
                  {
                    v127 = *(a1 + 616);
                  }

                  memmove(v126, v127, v125);
                }

                *(&v126->__r_.__value_.__l.__data_ + v125) = 32;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v128 = &__p;
                }

                else
                {
                  v128 = __p.__r_.__value_.__r.__words[0];
                }

                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v129 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v129 = __p.__r_.__value_.__l.__size_;
                }

                std::string::append(v282, v128, v129);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                std::vector<std::string>::push_back[abi:ne200100](v287, v288);
                std::string::basic_string[abi:ne200100]<0>(&__p, "-");
                std::vector<std::string>::push_back[abi:ne200100](a1 + 880, &__p);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                std::vector<std::string>::push_back[abi:ne200100](a1 + 904, &v313);
                if (*(a1 + 423) < 0)
                {
                  std::string::__init_copy_ctor_external(&v298, *(a1 + 400), *(a1 + 408));
                }

                else
                {
                  *&v298.__r_.__value_.__l.__data_ = *v288;
                  v298.__r_.__value_.__r.__words[2] = *(a1 + 416);
                }

                if (*(v123 + 63) < 0)
                {
                  std::string::__init_copy_ctor_external(&__dst, *(v123 + 40), *(v123 + 48));
                }

                else
                {
                  v130 = *(v123 + 40);
                  __dst.__r_.__value_.__r.__words[2] = *(v123 + 56);
                  *&__dst.__r_.__value_.__l.__data_ = v130;
                }

                TacotronPhoneFeature::TacotronPhoneFeature(&__p, &v298, &__dst, *(v123 + 8), *(v123 + 12), 1, 0, 0, *(a1 + 296), *(a1 + 300));
                std::vector<TacotronPhoneFeature>::push_back[abi:ne200100](v286, &__p);
                v296.__r_.__value_.__r.__words[0] = &v305 + 8;
                std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](&v296);
                if (SBYTE7(v303) < 0)
                {
                  operator delete(v302);
                }

                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__dst.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v298.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v298.__r_.__value_.__l.__data_);
                }

                if (*(a1 + 423) >= 0)
                {
                  v131 = *(a1 + 423);
                }

                else
                {
                  v131 = *(a1 + 408);
                }

                std::string::basic_string[abi:ne200100](&__p, v131 + 1);
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v132 = &__p;
                }

                else
                {
                  v132 = __p.__r_.__value_.__r.__words[0];
                }

                if (v131)
                {
                  if (*(a1 + 423) >= 0)
                  {
                    v133 = (a1 + 400);
                  }

                  else
                  {
                    v133 = *(a1 + 400);
                  }

                  memmove(v132, v133, v131);
                }

                *(&v132->__r_.__value_.__l.__data_ + v131) = 32;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v134 = &__p;
                }

                else
                {
                  v134 = __p.__r_.__value_.__r.__words[0];
                }

                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v135 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v135 = __p.__r_.__value_.__l.__size_;
                }

                std::string::append(v282, v134, v135);
                v10 = a1 + 856;
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v313.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v313.__r_.__value_.__l.__data_);
                }
              }

              goto LABEL_156;
            }

            v92 = *(a1 + 528);
            v93 = *(a1 + 928) + 104 * v29;
          }

          *(v93 + 72) = v92;
        }

        else
        {
          std::operator+<char>();
          v39 = std::string::append(&v299, "->");
          v40 = *&v39->__r_.__value_.__l.__data_;
          v300.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
          *&v300.__r_.__value_.__l.__data_ = v40;
          v39->__r_.__value_.__l.__size_ = 0;
          v39->__r_.__value_.__r.__words[2] = 0;
          v39->__r_.__value_.__r.__words[0] = 0;
          v41 = *(a1 + 639);
          if (v41 >= 0)
          {
            v42 = (a1 + 616);
          }

          else
          {
            v42 = *(a1 + 616);
          }

          if (v41 >= 0)
          {
            v43 = *(a1 + 639);
          }

          else
          {
            v43 = *(a1 + 624);
          }

          v44 = std::string::append(&v300, v42, v43);
          v45 = *&v44->__r_.__value_.__l.__data_;
          v313.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
          *&v313.__r_.__value_.__l.__data_ = v45;
          v44->__r_.__value_.__l.__size_ = 0;
          v44->__r_.__value_.__r.__words[2] = 0;
          v44->__r_.__value_.__r.__words[0] = 0;
          v46 = std::string::append(&v313, ") ");
          v47 = *&v46->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v47;
          v46->__r_.__value_.__l.__size_ = 0;
          v46->__r_.__value_.__r.__words[2] = 0;
          v46->__r_.__value_.__r.__words[0] = 0;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v48 = &__p;
          }

          else
          {
            v48 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v49 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v49 = __p.__r_.__value_.__l.__size_;
          }

          std::string::append(v282, v48, v49);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v313.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v313.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v300.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v300.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v299.__r_.__value_.__l.__data_);
          }

          std::string::operator=(v30, __str);
          v50 = *v286 + 104 * v29;
          std::string::operator=(v50, __str);
LABEL_72:
          v51 = *(a1 + 500);
          *(v50 + 72) = v24;
          *(v50 + 76) = v51;
        }

LABEL_156:
        if ((buf[23] & 0x80000000) == 0)
        {
          goto LABEL_77;
        }

        v94 = *buf;
        goto LABEL_254;
      }

      v52 = v22;
      v53 = *(a1 + 864);
      v54 = *(a1 + 856);
      v55 = 0xAAAAAAAAAAAAAAABLL * ((v53 - v54) >> 3);
      v284 = (v55 - 1);
      if (v55 <= 1)
      {
        v56 = buf;
      }

      else
      {
        v56 = (v53 - 48);
      }

      if (v53 == v54)
      {
        v57 = buf;
      }

      else
      {
        v57 = v56;
      }

      if (v53 == v54)
      {
        v58 = buf;
      }

      else
      {
        v58 = (v53 - 24);
      }

      memset(buf, 0, 24);
      v59 = v58[23];
      if (v59 >= 0)
      {
        v60 = v58[23];
      }

      else
      {
        v60 = *(v58 + 1);
      }

      v61 = *(a1 + 423);
      v62 = v61;
      if ((v61 & 0x80u) != 0)
      {
        v61 = *(a1 + 408);
      }

      if (v60 == v61)
      {
        v261 = v57;
        v263 = 0xAAAAAAAAAAAAAAABLL * ((v53 - v54) >> 3);
        v269 = v58[23];
        if (v59 >= 0)
        {
          v63 = v58;
        }

        else
        {
          v63 = *v58;
        }

        if (v62 >= 0)
        {
          v64 = (a1 + 400);
        }

        else
        {
          v64 = *(a1 + 400);
        }

        v65 = memcmp(v63, v64, v60);
        v66 = *(a1 + 624);
        if (v65)
        {
          goto LABEL_122;
        }

        v67 = buf;
        if (v263 <= 1)
        {
          v68 = buf;
        }

        else
        {
          v68 = (v53 - 48);
        }

        if (v53 != v54)
        {
          v67 = v68;
        }

        v69 = v67[23];
        v70 = *(v67 + 1);
        v71 = (v69 & 0x80u) == 0 ? v69 : v70;
        v72 = v16 >= 0 ? v16 : *(a1 + 624);
        if (v71 != v72)
        {
LABEL_122:
          v59 = v269;
        }

        else
        {
          if ((v69 & 0x80u) == 0)
          {
            v73 = v261;
          }

          else
          {
            v73 = *v261;
          }

          v74 = __str->__r_.__value_.__r.__words[0];
          if (v16 >= 0)
          {
            v75 = (a1 + 616);
          }

          else
          {
            v75 = __str->__r_.__value_.__r.__words[0];
          }

          v76 = *(a1 + 624);
          v77 = memcmp(v73, v75, v71);
          v66 = v76;
          v22 = v52;
          v59 = v269;
          if (!v77)
          {
            v78 = *v286 + 104 * (v263 - 2);
LABEL_182:
            *(v78 + 72) = v24;
            v10 = a1 + 856;
            v15 = v276;
            v9 = __n;
            goto LABEL_77;
          }
        }
      }

      else
      {
        v66 = *(a1 + 624);
      }

      if (v16 >= 0)
      {
        v79 = v16;
      }

      else
      {
        v79 = v66;
      }

      if (v60 == v79)
      {
        v80 = v59 >= 0 ? v58 : *v58;
        v81 = __str->__r_.__value_.__r.__words[0];
        v82 = (v16 >= 0 ? a1 + 616 : __str->__r_.__value_.__r.__words[0]);
        if (!memcmp(v80, v82, v60))
        {
          v78 = *v286 + 104 * v284;
          goto LABEL_182;
        }
      }

      v21 = v53 == v54;
      v10 = a1 + 856;
      v15 = v276;
      v9 = __n;
      if (!v21)
      {
        std::vector<std::string>::push_back[abi:ne200100](v287, __str);
        std::string::basic_string[abi:ne200100]<0>(&__p, "-");
        std::vector<std::string>::push_back[abi:ne200100](a1 + 880, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v83 = *(a1 + 912);
        if (v83 == *(a1 + 904))
        {
          std::string::basic_string[abi:ne200100]<0>(&v313, "narrator");
        }

        else if (*(v83 - 1) < 0)
        {
          std::string::__init_copy_ctor_external(&v313, *(v83 - 24), *(v83 - 16));
        }

        else
        {
          v84 = *(v83 - 24);
          v313.__r_.__value_.__r.__words[2] = *(v83 - 8);
          *&v313.__r_.__value_.__l.__data_ = v84;
        }

        std::vector<std::string>::push_back[abi:ne200100](a1 + 904, &v313);
        v106 = *(*(a1 + 840) + 24);
        if (*(a1 + 639) < 0)
        {
          std::string::__init_copy_ctor_external(&v300, *(a1 + 616), *(a1 + 624));
        }

        else
        {
          *&v300.__r_.__value_.__l.__data_ = *&__str->__r_.__value_.__l.__data_;
          v300.__r_.__value_.__r.__words[2] = *(a1 + 632);
        }

        v107 = v106 + 136 * v22;
        if (*(v107 + 63) < 0)
        {
          std::string::__init_copy_ctor_external(&v299, *(v107 + 40), *(v107 + 48));
        }

        else
        {
          v108 = *(v107 + 40);
          v299.__r_.__value_.__r.__words[2] = *(v107 + 56);
          *&v299.__r_.__value_.__l.__data_ = v108;
        }

        TacotronPhoneFeature::TacotronPhoneFeature(&__p, &v300, &v299, *(v107 + 8), *(v107 + 12), v24, *(a1 + 296), *(a1 + 300));
        std::vector<TacotronPhoneFeature>::push_back[abi:ne200100](v286, &__p);
        v298.__r_.__value_.__r.__words[0] = &v305 + 8;
        std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](&v298);
        if (SBYTE7(v303) < 0)
        {
          operator delete(v302);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v299.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v300.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v300.__r_.__value_.__l.__data_);
        }

        if (*(a1 + 639) >= 0)
        {
          v109 = *(a1 + 639);
        }

        else
        {
          v109 = *(a1 + 624);
        }

        std::string::basic_string[abi:ne200100](&__p, v109 + 1);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v110 = &__p;
        }

        else
        {
          v110 = __p.__r_.__value_.__r.__words[0];
        }

        if (v109)
        {
          if (*(a1 + 639) >= 0)
          {
            v111 = (a1 + 616);
          }

          else
          {
            v111 = *(a1 + 616);
          }

          memmove(v110, v111, v109);
        }

        *(&v110->__r_.__value_.__l.__data_ + v109) = 32;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v112 = &__p;
        }

        else
        {
          v112 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v113 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v113 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(v282, v112, v113);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        std::vector<std::string>::push_back[abi:ne200100](v287, v288);
        std::string::basic_string[abi:ne200100]<0>(&__p, "-");
        std::vector<std::string>::push_back[abi:ne200100](a1 + 880, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        std::vector<std::string>::push_back[abi:ne200100](a1 + 904, &v313);
        if (*(a1 + 423) < 0)
        {
          std::string::__init_copy_ctor_external(&v298, *(a1 + 400), *(a1 + 408));
        }

        else
        {
          *&v298.__r_.__value_.__l.__data_ = *v288;
          v298.__r_.__value_.__r.__words[2] = *(a1 + 416);
        }

        if (*(v107 + 63) < 0)
        {
          std::string::__init_copy_ctor_external(&__dst, *(v107 + 40), *(v107 + 48));
        }

        else
        {
          v114 = *(v107 + 40);
          __dst.__r_.__value_.__r.__words[2] = *(v107 + 56);
          *&__dst.__r_.__value_.__l.__data_ = v114;
        }

        TacotronPhoneFeature::TacotronPhoneFeature(&__p, &v298, &__dst, *(v107 + 8), *(v107 + 12), 1, 0, 0, *(a1 + 296), *(a1 + 300));
        std::vector<TacotronPhoneFeature>::push_back[abi:ne200100](v286, &__p);
        v296.__r_.__value_.__r.__words[0] = &v305 + 8;
        std::vector<MarkerRecord>::__destroy_vector::operator()[abi:ne200100](&v296);
        if (SBYTE7(v303) < 0)
        {
          operator delete(v302);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v298.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v298.__r_.__value_.__l.__data_);
        }

        if (*(a1 + 423) >= 0)
        {
          v115 = *(a1 + 423);
        }

        else
        {
          v115 = *(a1 + 408);
        }

        std::string::basic_string[abi:ne200100](&__p, v115 + 1);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v116 = &__p;
        }

        else
        {
          v116 = __p.__r_.__value_.__r.__words[0];
        }

        if (v115)
        {
          if (*(a1 + 423) >= 0)
          {
            v117 = (a1 + 400);
          }

          else
          {
            v117 = *(a1 + 400);
          }

          memmove(v116, v117, v115);
        }

        *(&v116->__r_.__value_.__l.__data_ + v115) = 32;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v118 = &__p;
        }

        else
        {
          v118 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v119 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v119 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(v282, v118, v119);
        v10 = a1 + 856;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v313.__r_.__value_.__r.__words[2]) < 0)
        {
          v94 = v313.__r_.__value_.__r.__words[0];
LABEL_254:
          operator delete(v94);
        }
      }

LABEL_77:
      v14 += 14;
    }

    while (v14 != v15);
    v11 = *(a1 + 840);
    v12 = *v11;
LABEL_337:
    v139 = (v12 + 216 * v278 + 72);
    if (v274 != v139)
    {
      std::vector<MarkerRecord>::__assign_with_size[abi:ne200100]<MarkerRecord*,MarkerRecord*>(v274, *v139, v139[1], 0x6DB6DB6DB6DB6DB7 * ((v139[1] - *v139) >> 3));
      v11 = *(a1 + 840);
    }

    v140 = (v272 + 1);
LABEL_744:
    v12 = *v11;
    v8 = v140;
  }

  while (0x84BDA12F684BDA13 * ((v11[1] - *v11) >> 3) > v140);
LABEL_747:
  if (*(a1 + 856) != *(a1 + 864))
  {
    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v256 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_INFO))
    {
      v258 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 864) - *(a1 + 856)) >> 3);
      LODWORD(__p.__r_.__value_.__l.__data_) = 67109376;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v267 - v9;
      LOWORD(__p.__r_.__value_.__r.__words[1]) = 2048;
      *(&__p.__r_.__value_.__r.__words[1] + 2) = v258;
      _os_log_impl(&dword_1C2F95000, v256, OS_LOG_TYPE_INFO, "Remainder %d words %zu phones", &__p, 0x12u);
    }

    Diagnostics::log(6, "Remainder %d words %zu phones", v257, (v267 - v9), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 864) - *(a1 + 856)) >> 3));
    NeuralAdapterModule::dump_features(a1);
  }

  if (v290)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v290);
  }

LABEL_755:
  v259 = *MEMORY[0x1E69E9840];
}

void sub_1C2FE46D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, std::__shared_weak_count *a54)
{
  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  if (*(v54 - 121) < 0)
  {
    operator delete(*(v54 - 144));
  }

  WordFeature::~WordFeature(&STACK[0x2A0]);
  if (a54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a54);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::vector<TacotronPhoneFeature>::push_back[abi:ne200100](uint64_t *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v9 = 0x4EC4EC4EC4EC4EC5 * ((v3 - *result) >> 3);
    v10 = v9 + 1;
    if ((v9 + 1) > 0x276276276276276)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0x4EC4EC4EC4EC4EC5 * ((v4 - *result) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x13B13B13B13B13BLL)
    {
      v12 = 0x276276276276276;
    }

    else
    {
      v12 = v10;
    }

    v25 = v2;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TacotronPhoneFeature>>(v12);
    }

    v13 = 104 * v9;
    v22 = 0;
    v23 = v13;
    *(&v24 + 1) = 0;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v15 = *(a2 + 24);
    *(v13 + 40) = *(a2 + 5);
    *(v13 + 24) = v15;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v16 = a2[4];
    *(v13 + 48) = a2[3];
    *(v13 + 64) = v16;
    *(v13 + 88) = 0;
    *(v13 + 96) = 0;
    *(v13 + 80) = 0;
    *(v13 + 80) = a2[5];
    *(v13 + 96) = *(a2 + 12);
    *(a2 + 10) = 0;
    *(a2 + 11) = 0;
    *(a2 + 12) = 0;
    *&v24 = 104 * v9 + 104;
    v17 = v2[1];
    v18 = 104 * v9 + *v2 - v17;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TacotronPhoneFeature>,TacotronPhoneFeature*>(v2, *v2, v17, v18);
    v19 = *v2;
    *v2 = v18;
    v20 = v2[2];
    v21 = v24;
    *(v2 + 1) = v24;
    *&v24 = v19;
    *(&v24 + 1) = v20;
    v22 = v19;
    v23 = v19;
    result = std::__split_buffer<TacotronPhoneFeature>::~__split_buffer(&v22);
    v8 = v21;
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 40) = *(a2 + 5);
    *(v3 + 24) = v6;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v7 = a2[4];
    *(v3 + 48) = a2[3];
    *(v3 + 64) = v7;
    *(v3 + 88) = 0;
    *(v3 + 96) = 0;
    *(v3 + 80) = 0;
    *(v3 + 80) = a2[5];
    *(v3 + 96) = *(a2 + 12);
    *(a2 + 10) = 0;
    *(a2 + 11) = 0;
    *(a2 + 12) = 0;
    v8 = v3 + 104;
  }

  v2[1] = v8;
  return result;
}

void FastSpeech2EncoderModule::process_data(uint64_t a1, uint64_t *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v3 = Diagnostics_GetLogObject(void)::__profile_log_default;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C2F95000, v3, OS_LOG_TYPE_DEFAULT, "Parallel AM encoder module start.", buf, 2u);
  }

  Diagnostics::log(5, "Parallel AM encoder module start.", v4);
  std::mutex::lock((a1 + 312));
  Diagnostics::get_log_path(buf);
  if ((buf[23] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v40, *buf, *&buf[8]);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    v40 = *buf;
  }

  *(a1 + 284) = 1;
  v6 = *(*v5 + 16);
  *&v39 = *(*v5 + 8);
  *(&v39 + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(*v7 + 16);
  v37 = *(*v7 + 8);
  v38 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(v39 + 8);
  if (v9 != *(v39 + 16) && *(v9 + 60) == 1)
  {
    *(a1 + 272) = 0;
  }

  v10.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v35 = 0;
  rep = std::chrono::steady_clock::now().__d_.__rep_;
  v11 = *(a1 + 392);
  v34 = v39;
  if (*(&v39 + 1))
  {
    atomic_fetch_add_explicit((*(&v39 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  (*(*v11 + 8))(v11, &v34, *(a1 + 280));
  if (*(&v34 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v34 + 1));
  }

  v12 = v39;
  v30 = v39;
  if (*(&v39 + 1))
  {
    atomic_fetch_add_explicit((*(&v39 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(*(a1 + 392) + 8);
  v32 = 0;
  v33 = 0;
  v31 = 0;
  if (v13 < 1 || (v15 = *(v12 + 32), v14 = *(v12 + 40), v13 >= (v14 - v15) >> 2))
  {
    std::vector<std::shared_ptr<TacotronFeature>>::push_back[abi:ne200100](&v31, &v30);
  }

  else if (v14 != v15)
  {
    operator new();
  }

  if (*(&v12 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v12 + 1));
  }

  v29 = 0;
  if (v32 != v31)
  {
    v16 = *(*(a1 + 392) + 12);
    if (v16 < 1 || v16 >= (*(v39 + 40) - *(v39 + 32)) >> 2)
    {
      if (*(v31 + 8))
      {
        atomic_fetch_add_explicit(((*(v31 + 8) >> 64) + 8), 1uLL, memory_order_relaxed);
      }

      v41 = 0;
      operator new();
    }

    SharedObjectPool::get_if<TTSSynthesizerEventBusInternal>(&v28, *(a1 + 168));
    StringFormatter::StringFormatter(buf, "Input exceeds maximum input phone length %d", v16);
    v27[0] = *&buf[16];
    *(v27 + 3) = *&buf[19];
    v25 = 201;
    if ((buf[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v26, *buf, *&buf[8]);
      v22 = v25;
    }

    else
    {
      *&v26.__r_.__value_.__l.__data_ = *buf;
      LODWORD(v26.__r_.__value_.__r.__words[2]) = v27[0];
      *(&v26.__r_.__value_.__r.__words[2] + 3) = *(v27 + 3);
      *(&v26.__r_.__value_.__s + 23) = buf[23];
      v22 = 201;
    }

    *buf = v22;
    *&buf[8] = v26;
    if (v28)
    {
      Observable::emit(v28, "tts.errors", buf);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    StringFormatter::StringFormatter(&v25, "Inputs too long! Exceeds maximum input phone length %d", v16);
    MEMORY[0x1C692A510](exception, &v25);
    __cxa_throw(exception, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
  }

  v17 = ((std::chrono::steady_clock::now().__d_.__rep_ - v10.__d_.__rep_) * 0x431BDE82D7B634DBLL) >> 64;
  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v18 = Diagnostics_GetLogObject(void)::__profile_log_default;
  v20 = ((v17 >> 18) + (v17 >> 63)) / 1000.0;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    *&buf[4] = v35;
    *&buf[12] = 2048;
    *&buf[14] = ((v17 >> 18) + (v17 >> 63)) / 1000.0;
    *&buf[22] = 2048;
    *&buf[24] = v35 / v20;
    _os_log_impl(&dword_1C2F95000, v18, OS_LOG_TYPE_DEFAULT, "Parallel AM encoder module, total frames = %lu, Run Time : %.3f s, %.3f frames/s", buf, 0x20u);
  }

  Diagnostics::log(5, "Parallel AM encoder module, total frames = %lu, Run Time : %.3f s, %.3f frames/s", v19, v35, *&v20, v35 / v20);
  *buf = &v31;
  std::vector<std::shared_ptr<TacotronFeature>>::__destroy_vector::operator()[abi:ne200100](buf);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  if (*(&v39 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v39 + 1));
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  std::mutex::unlock((a1 + 312));
  v21 = *MEMORY[0x1E69E9840];
}

void sub_1C2FE5ACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  if (*(v43 - 137) < 0)
  {
    operator delete(*(v43 - 160));
  }

  std::mutex::unlock((a18 + 312));
  _Unwind_Resume(a1);
}

void FastSpeech2EncoderFeaturesInference::align_feature_inputs(_BYTE *a1, uint64_t *a2, int a3)
{
  std::vector<float>::vector[abi:ne200100](&v52, (*(*a2 + 40) - *(*a2 + 32)) >> 2);
  v49 = 0;
  v50 = 0;
  v51 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v49, v52, v53, (v53 - v52) >> 2);
  v46 = 0;
  v47 = 0;
  v48 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v46, v52, v53, (v53 - v52) >> 2);
  v43 = 0;
  v44 = 0;
  v45 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v43, v52, v53, (v53 - v52) >> 2);
  v6 = *a2;
  v7 = *(*a2 + 120);
  v8 = *(*a2 + 128);
  if (v7 != v8)
  {
    memmove(v49, v7, v8 - v7);
    v6 = *a2;
  }

  v9 = v6[18];
  v10 = v6[19];
  if (v9 != v10)
  {
    memmove(v46, v9, v10 - v9);
    v6 = *a2;
  }

  v11 = v6[21];
  v12 = v6[22];
  if (v11 != v12)
  {
    memmove(v43, v11, v12 - v11);
    v6 = *a2;
  }

  if (v6 + 15 != &v49)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v6 + 15, v49, v50, (v50 - v49) >> 2);
    v6 = *a2;
  }

  if (v6 + 18 != &v46)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v6 + 18, v46, v47, (v47 - v46) >> 2);
    v6 = *a2;
  }

  if (v6 + 21 != &v43)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v6 + 21, v43, v44, (v44 - v43) >> 2);
    v6 = *a2;
  }

  std::vector<float>::vector[abi:ne200100](&v41, (v6[5] - v6[4]) >> 2);
  __dst = 0;
  v39 = 0;
  v40 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__dst, v41, v42, (v42 - v41) >> 2);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v35, v41, v42, (v42 - v41) >> 2);
  __p = 0;
  v33 = 0;
  v34 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v41, v42, (v42 - v41) >> 2);
  v13 = *(*a2 + 192);
  v14 = *(*a2 + 200);
  if (v13 != v14)
  {
    memmove(__dst, v13, v14 - v13);
    v15 = __dst;
    v16 = v39;
    if (__dst != v39)
    {
      do
      {
        *v15 = *v15 / a3;
        ++v15;
      }

      while (v15 != v16);
    }
  }

  v17 = *a2;
  v18 = *(*a2 + 216);
  v19 = *(*a2 + 224);
  if (v18 != v19)
  {
    memmove(v35, v18, v19 - v18);
    v17 = *a2;
  }

  v20 = v17[30];
  v21 = v17[31];
  if (v20 != v21)
  {
    memmove(__p, v20, v21 - v20);
    v17 = *a2;
  }

  if (v17 + 24 != &__dst)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v17 + 24, __dst, v39, (v39 - __dst) >> 2);
    v17 = *a2;
  }

  if (v17 + 27 != &v35)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v17 + 27, v35, v36, (v36 - v35) >> 2);
    v17 = *a2;
  }

  if (v17 + 30 != &__p)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v17 + 30, __p, v33, (v33 - __p) >> 2);
  }

  a1[32];
  std::vector<float>::vector[abi:ne200100](&v30, (*(*a2 + 40) - *(*a2 + 32)) >> 2);
  v22 = *a2;
  v23 = *a2 + 264;
  v24 = *v23;
  if (*v23)
  {
    *(v22 + 272) = v24;
    operator delete(v24);
    *v23 = 0;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
  }

  *v23 = v30;
  *(v22 + 280) = v31;
  a1[33];
  std::vector<float>::vector[abi:ne200100](&v30, (*(*a2 + 40) - *(*a2 + 32)) >> 2);
  v25 = *a2;
  v26 = *(*a2 + 288);
  if (v26)
  {
    v25[37] = v26;
    operator delete(v26);
    v25[36] = 0;
    v25[37] = 0;
    v25[38] = 0;
  }

  *(v25 + 18) = v30;
  v25[38] = v31;
  a1[34];
  std::vector<float>::vector[abi:ne200100](&v30, (*(*a2 + 40) - *(*a2 + 32)) >> 2);
  v27 = *a2;
  v28 = v27 + 39;
  v29 = v27[39];
  if (v29)
  {
    v27[40] = v29;
    operator delete(v29);
    *v28 = 0;
    v27[40] = 0;
    v27[41] = 0;
  }

  *v28 = v30;
  v27[41] = v31;
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (__dst)
  {
    v39 = __dst;
    operator delete(__dst);
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }
}

void sub_1C2FE615C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  v27 = *v25;
  if (*v25)
  {
    *(v25 + 8) = v27;
    operator delete(v27);
  }

  v28 = *(v25 + 24);
  if (v28)
  {
    *(v25 + 32) = v28;
    operator delete(v28);
  }

  v29 = *(v25 + 48);
  if (v29)
  {
    *(v25 + 56) = v29;
    operator delete(v29);
  }

  v30 = *(v25 + 72);
  if (v30)
  {
    *(v25 + 80) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(exception_object);
}

void FastSpeech2EncoderFeaturesInference::inference()
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
    _os_log_impl(&dword_1C2F95000, v0, OS_LOG_TYPE_DEBUG, "Parallel AM inference encoder begin.", buf, 2u);
  }

  Diagnostics::log(7, "Parallel AM inference encoder begin.", v1);
  operator new();
}

void sub_1C2FE6AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  v21 = *(v19 - 24);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C2FE6B20()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x1C2FE6B18);
}

void FastSpeech2EncoderFeaturesInference::prepare_inputs(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v3[0] = *a2;
  v3[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  FastSpeech2EncoderBaseInference::prepare_inputs(a1, v3);
}

void sub_1C2FE6D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  v29 = *(v27 - 72);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  v30 = *(v27 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C2FE6E4C()
{
  if (v0)
  {
    JUMPOUT(0x1C2FE6E40);
  }

  JUMPOUT(0x1C2FE6E44);
}

void InferenceEngine::DataTensor::build_from_1d_array<int>(uint64_t a1, void *a2)
{
  v4[2] = *MEMORY[0x1E69E9840];
  __p = ((a2[1] - *a2) >> 2);
  memset(v2, 0, sizeof(v2));
  std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(v2, &__p, v4, 1uLL);
  InferenceEngine::DataUtils::get_type_string<int>(&__p);
  std::allocate_shared[abi:ne200100]<InferenceEngine::DataTensor,std::allocator<InferenceEngine::DataTensor>,std::string const&,std::string,std::vector<unsigned long> &,0>();
}

void sub_1C2FE6F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *InferenceEngine::DataUtils::get_type_string<int>@<X0>(_BYTE *a1@<X8>)
{
  if (std::type_info::operator==[abi:ne200100](MEMORY[0x1E69E5478], MEMORY[0x1E69E5468]))
  {
    v2 = "fp32";
  }

  else
  {
    if (!std::type_info::operator==[abi:ne200100](MEMORY[0x1E69E5478], MEMORY[0x1E69E5478]))
    {
      InferenceEngine::DataUtils::get_type_string<float>();
    }

    v2 = "int32";
  }

  return std::string::basic_string[abi:ne200100]<0>(a1, v2);
}

void fst::ShortestPath<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4[3];
  if (!v4)
  {
    return;
  }

  v6 = a3;
  if (v4 != 1 || (*(a4 + 35) & 1) != 0)
  {
    if ((*(a4 + 33) & 1) != 0 || (fst::ShortestDistance<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(a1, a3, a4), *(v6 + 8) - *v6 != 32) || fst::LatticeWeightTpl<float>::Member(*v6))
    {
      operator new();
    }

    v13 = *(*a2 + 192);

    v13();
    return;
  }

  memset(v75, 0, 24);
  if ((*(*a1 + 24))(a1) == -1)
  {
    v14 = 0xFFFFFFFFLL;
    goto LABEL_33;
  }

  memset(v76, 0, 24);
  v8 = *a4;
  v9 = *(a4 + 3);
  if (v9 == -1)
  {
    v9 = (*(*a1 + 24))(a1);
  }

  v93 = vneg_f32(0x7F0000007FLL);
  v95 = 0;
  v96 = 0;
  v94 = 0;
  std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::clear[abi:ne200100](v6);
  (*(**(v8 + 16) + 56))(*(v8 + 16));
  if (a4[3] != 1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&v84, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v84, "ERROR");
    }

    v15 = fst::LogMessage::LogMessage(&v77, &v84);
    v16 = fst::cerr(v15);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "SingleShortestPath: for nshortest > 1, use ShortestPath", 55);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " instead", 8);
    goto LABEL_25;
  }

  v10 = *(a4 + 11);
  *__str = *(a4 + 10);
  v87.i32[0] = v10;
  LODWORD(v84) = 2139095040;
  v77.i32[0] = 2139095040;
  if (*__str != INFINITY || v87.f32[0] != v77.f32[0] || *(a4 + 18) != -1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&v84, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v84, "ERROR");
    }

    v11 = fst::LogMessage::LogMessage(&v77, &v84);
    v12 = fst::cerr(v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "SingleShortestPath: weight and state thresholds not applicable", 62);
LABEL_25:
    fst::LogMessage::~LogMessage(&v77);
    if (SHIBYTE(v85) < 0)
    {
      operator delete(v84);
    }

    v18 = 0;
    v14 = 0xFFFFFFFFLL;
    goto LABEL_28;
  }

  v72 = a4;
  if (v9 > ((*(v6 + 8) - *v6) >> 5))
  {
    v30 = vneg_f32(0x7F0000007FLL);
    do
    {
      *__str = v30;
      memset(&__str[8], 0, 24);
      std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::push_back[abi:ne200100](v6, __str);
      __str[0] = 0;
      std::vector<BOOL>::push_back(v76, __str);
      *__str = -1;
      *&__str[8] = -1;
      std::vector<std::pair<int,unsigned long>>::push_back[abi:ne200100](v75, __str);
    }

    while (v9 > ((*(v6 + 8) - *v6) >> 5));
  }

  memset(__str, 0, sizeof(__str));
  std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::push_back[abi:ne200100](v6, __str);
  *__str = -1;
  *&__str[8] = -1;
  std::vector<std::pair<int,unsigned long>>::push_back[abi:ne200100](v75, __str);
  v31 = v8;
  (*(**(v8 + 16) + 24))(*(v8 + 16), v9);
  __str[0] = 1;
  std::vector<BOOL>::push_back(v76, __str);
  v32 = vneg_f32(0x7F0000007FLL);
  v70 = -1;
  do
  {
    if ((*(**(v31 + 16) + 48))(*(v31 + 16)))
    {
      goto LABEL_167;
    }

    v33 = (*(**(v31 + 16) + 16))(*(v31 + 16));
    (*(**(v31 + 16) + 32))(*(v31 + 16));
    *(v76[0] + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v33);
    v34 = *v6 + 32 * v33;
    v87 = *v34;
    v89 = 0;
    v90 = 0;
    v88 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v88, *(v34 + 8), *(v34 + 16), (*(v34 + 16) - *(v34 + 8)) >> 2);
    (*(*a1 + 32))(__str, a1, v33);
    v77.i32[0] = *&__str[4];
    LODWORD(v84) = *__str;
    LODWORD(v91) = 2139095040;
    v35.n128_u32[0] = *__str;
    if (*__str == INFINITY)
    {
      v35.n128_u32[0] = v77.i32[0];
      v36 = v77.f32[0] != INFINITY;
    }

    else
    {
      v36 = 1;
    }

    if (*&__str[8])
    {
      *&__str[16] = *&__str[8];
      operator delete(*&__str[8]);
    }

    if (!v36)
    {
      goto LABEL_103;
    }

    (*(*a1 + 32))(__str, a1, v33, v35);
    v37 = v87;
    v38 = *__str;
    *&v84 = 0;
    v77 = 0;
    if (*&__str[8])
    {
      *&__str[16] = *&__str[8];
      operator delete(*&__str[8]);
    }

    v39 = vadd_f32(v37, v38);
    v40 = v93;
    v41 = vadd_f32(vzip1_s32(v93, v39), vzip2_s32(v93, v39));
    v42 = v41.f32[1];
    if (v41.f32[0] >= v41.f32[1])
    {
      if (v41.f32[0] > v41.f32[1])
      {
        goto LABEL_78;
      }

      if ((vcgt_f32(v39, v93).u8[0] & 1) == 0)
      {
        v44 = &v95;
        v43 = &v94;
        if ((vcgt_f32(v93, v39).u8[0] & 1) == 0)
        {
          goto LABEL_79;
        }

LABEL_78:
        v44 = &v77;
        v43 = &v84;
        v40 = v39;
        goto LABEL_79;
      }
    }

    v44 = &v95;
    v43 = &v94;
LABEL_79:
    v71 = v39;
    *__str = v40;
    memset(&__str[8], 0, 24);
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__str[8], *v43, *v44, (*v44 - *v43) >> 2);
    v35.n128_u32[0] = v93;
    LODWORD(v91) = v93;
    v92 = *__str;
    v45 = *&v93 != *__str || *(&v93 + 1) != *&__str[4];
    if (*&__str[8])
    {
      *&__str[16] = *&__str[8];
      operator delete(*&__str[8]);
      v35.n128_u32[0] = v93;
    }

    if (!v45)
    {
      goto LABEL_95;
    }

    v46 = __PAIR64__(HIDWORD(v93), v35.n128_u32[0]);
    if ((v35.n128_f32[0] + *(&v93 + 1)) >= v42)
    {
      if ((v35.n128_f32[0] + *(&v93 + 1)) > v42)
      {
        goto LABEL_91;
      }

      if (v35.n128_f32[0] >= *&v71)
      {
        v48 = &v95;
        v47 = &v94;
        if (v35.n128_f32[0] <= *&v71)
        {
          goto LABEL_92;
        }

LABEL_91:
        v48 = &v77;
        v47 = &v84;
        v46 = v71;
        goto LABEL_92;
      }
    }

    v48 = &v95;
    v47 = &v94;
LABEL_92:
    *__str = v46;
    memset(&__str[8], 0, 24);
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__str[8], *v47, *v48, (*v48 - *v47) >> 2);
    v93 = *__str;
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v94, *&__str[8], *&__str[16], (*&__str[16] - *&__str[8]) >> 2);
    if (*&__str[8])
    {
      *&__str[16] = *&__str[8];
      operator delete(*&__str[8]);
    }

    v35.n128_u32[0] = v93;
    v70 = v33;
LABEL_95:
    if (*(&v93 + 1) == -INFINITY || v35.n128_f32[0] == -INFINITY || (v35.n128_f32[0] == INFINITY || *(&v93 + 1) == INFINITY) && (v35.n128_f32[0] != INFINITY || (v35.n128_u32[0] = 2139095040, *(&v93 + 1) != INFINITY)))
    {
      v49 = 1;
      goto LABEL_159;
    }

    if (*(v72 + 34))
    {
      v49 = 5;
      goto LABEL_159;
    }

LABEL_103:
    v82 = 0;
    (*(*a1 + 136))(a1, v33, __str, v35);
    while (1)
    {
      if (*__str)
      {
        if ((*(**__str + 24))(*__str))
        {
          goto LABEL_150;
        }

        if (*__str)
        {
          v50 = (*(**__str + 32))(*__str);
          goto LABEL_112;
        }

        v51 = v82;
      }

      else
      {
        v51 = v82;
        if (v82 >= *&__str[16])
        {
LABEL_150:
          v49 = 0;
          goto LABEL_155;
        }
      }

      v50 = (*&__str[8] + 48 * v51);
LABEL_112:
      while (1)
      {
        v53 = v50[5].i32[0];
        if (v53 < (*(v6 + 8) - *v6) >> 5)
        {
          break;
        }

        v84 = v32;
        v85 = 0;
        v86 = 0;
        std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::push_back[abi:ne200100](v6, &v84);
        LOBYTE(v84) = 0;
        std::vector<BOOL>::push_back(v76, &v84);
        LODWORD(v84) = -1;
        *(&v84 + 1) = -1;
        std::vector<std::pair<int,unsigned long>>::push_back[abi:ne200100](v75, &v84);
      }

      v52 = *v6;
      v54 = *v6 + 32 * v53;
      v55 = vadd_f32(v87, v50[1]);
      v84 = v55;
      v85 = 0;
      v86 = 0;
      v56 = *v54;
      v57 = vadd_f32(vzip1_s32(*v54, v55), vzip2_s32(*v54, v55));
      v58 = v57.f32[1];
      if (v57.f32[0] < v57.f32[1])
      {
LABEL_115:
        v59 = &v52[8 * v53];
        goto LABEL_118;
      }

      if (v57.f32[0] > v57.f32[1])
      {
        goto LABEL_117;
      }

      if (vcgt_f32(v55, v56).u8[0])
      {
        goto LABEL_115;
      }

      v59 = &v52[8 * v53];
      if (vcgt_f32(v56, v55).u8[0])
      {
LABEL_117:
        v59 = &v84;
        v56 = v55;
      }

LABEL_118:
      v77 = v56;
      v79 = 0;
      v80 = 0;
      __p = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(v59 + 1), *(v59 + 2), (*(v59 + 2) - *(v59 + 1)) >> 2);
      v60 = *(v54 + 4);
      LODWORD(v91) = *v54;
      v92 = v77.i32[0];
      v61.n128_u32[0] = v91;
      if (*&v91 == v77.f32[0])
      {
        v61.n128_f32[0] = v60;
        v62 = v60 != v77.f32[1];
      }

      else
      {
        v62 = 1;
      }

      if (__p)
      {
        v79 = __p;
        operator delete(__p);
      }

      if (v62)
      {
        break;
      }

LABEL_142:
      if (*(&v84 + 1))
      {
        operator delete(*(&v84 + 1));
      }

      v6 = a3;
      if (*__str)
      {
        (*(**__str + 40))(*__str, v61);
      }

      else
      {
        ++v82;
      }
    }

    v63 = *v54;
    v64 = vaddv_f32(*v54);
    if (v64 < v58)
    {
      goto LABEL_125;
    }

    if (v64 <= v58)
    {
      if (vcgt_f32(v55, v63).u8[0])
      {
LABEL_125:
        v65 = v54;
      }

      else
      {
        v65 = v54;
        if (vcgt_f32(v63, v55).u8[0])
        {
          goto LABEL_130;
        }
      }
    }

    else
    {
LABEL_130:
      v65 = &v84;
      v63 = v55;
    }

    v77 = v63;
    v79 = 0;
    v80 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(v65 + 1), *(v65 + 2), (*(v65 + 2) - *(v65 + 1)) >> 2);
    *v54 = v77;
    if (v54 != &v77)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v54 + 8), __p, v79, (v79 - __p) >> 2);
    }

    if (__p)
    {
      v79 = __p;
      operator delete(__p);
    }

    if (fst::LatticeWeightTpl<float>::Member(v54))
    {
      if (*__str)
      {
        v66 = (*(**__str + 48))(*__str);
      }

      else
      {
        v66 = v82;
      }

      v67 = v50[5].i32[0];
      v68 = v75[0] + 16 * v67;
      *v68 = v33;
      *(v68 + 1) = v66;
      v69 = **(v31 + 16);
      if ((*(v76[0] + ((v67 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v67))
      {
        (*(v69 + 40))();
      }

      else
      {
        (*(v69 + 24))();
        *(v76[0] + ((v50[5].i32[0] >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50[5].i32[0];
      }

      goto LABEL_142;
    }

    v6 = a3;
    if (*(&v84 + 1))
    {
      operator delete(*(&v84 + 1));
    }

    v49 = 1;
LABEL_155:
    if (*__str)
    {
      (*(**__str + 8))(*__str);
    }

    else if (*&__str[24])
    {
      --**&__str[24];
    }

LABEL_159:
    if (v88)
    {
      v89 = v88;
      operator delete(v88);
    }
  }

  while (!v49);
  if (v49 == 5)
  {
LABEL_167:
    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  v14 = v70;
LABEL_28:
  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }

  if (v76[0])
  {
    operator delete(v76[0]);
  }

  if (v18)
  {
LABEL_33:
    (*(*a2 + 224))(a2);
    v19 = (*(*a1 + 112))(a1);
    (*(*a2 + 280))(a2, v19);
    v20 = (*(*a1 + 120))(a1);
    (*(*a2 + 288))(a2, v20);
    if (v14 != -1)
    {
      v21 = -1;
      v22 = v75[0];
      v23 = v14;
      LODWORD(v24) = -1;
      while (1)
      {
        v25 = v24;
        v24 = (*(*a2 + 200))(a2);
        if (v21 == -1)
        {
          (*(*a1 + 32))(&v87, a1, v14);
          (*(*a2 + 184))(a2, v24, &v87);
          if (v88)
          {
            v89 = v88;
            operator delete(v88);
          }

          goto LABEL_50;
        }

        v97 = 0;
        (*(*a1 + 136))(a1, v23, &v93);
        v26 = v22[2 * v21 + 1];
        if (!v93)
        {
          break;
        }

        (*(*v93 + 64))(v93, v26);
        if (!v93)
        {
          v26 = v97;
          goto LABEL_43;
        }

        v27 = (*(*v93 + 32))(v93);
LABEL_44:
        *__str = *v27;
        *&__str[8] = *(v27 + 1);
        *&__str[24] = 0;
        v82 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__str[16], *(v27 + 2), *(v27 + 3), (*(v27 + 3) - *(v27 + 2)) >> 2);
        v83 = v25;
        (*(*a2 + 208))(a2, v24, __str);
        if (*&__str[16])
        {
          *&__str[24] = *&__str[16];
          operator delete(*&__str[16]);
        }

        if (v93)
        {
          (*(*v93 + 8))(v93);
        }

        else if (v96)
        {
          --*v96;
        }

LABEL_50:
        v21 = v23;
        v23 = LODWORD(v22[2 * v23]);
        if (v23 == -1)
        {
          goto LABEL_54;
        }
      }

      v97 = v22[2 * v21 + 1];
LABEL_43:
      v27 = &v94[48 * v26];
      goto LABEL_44;
    }

    v24 = 0xFFFFFFFFLL;
LABEL_54:
    (*(*a2 + 176))(a2, v24);
    if ((*(*a1 + 64))(a1, 4, 0))
    {
      (*(*a2 + 192))(a2, 4, 4);
    }

    v28 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
    v29 = fst::ShortestPathProperties(v28, 0);
    (*(*a2 + 192))(a2, v29, 0x3FFFFFFF0007);
  }

  else
  {
    (*(*a2 + 192))(a2, 4, 4);
  }

  if (v75[0])
  {
    operator delete(v75[0]);
  }
}

void sub_1C2FE9474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, void *a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, void *a48, int a49, __int16 a50, char a51, char a52)
{
  v54 = *(v52 - 168);
  if (v54)
  {
    *(v52 - 160) = v54;
    operator delete(v54);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

void *fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>::operator=(void *a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a1 + 1, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  return a1;
}

void sub_1C2FEA7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::map<unsigned long,std::pair<unsigned long,unsigned long>>::at(void *a1, unint64_t a2)
{
  if (!a1)
  {
LABEL_7:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v2 = a1[4];
      if (v2 <= a2)
      {
        break;
      }

      a1 = *a1;
      if (!a1)
      {
        goto LABEL_7;
      }
    }

    if (v2 >= a2)
    {
      return a1 + 5;
    }

    a1 = a1[1];
    if (!a1)
    {
      goto LABEL_7;
    }
  }
}

uint64_t FrontendNNModule::reconstruct_from_tokens(uint64_t a1, uint64_t a2, uint64_t **a3, unsigned int a4, int a5)
{
  v180 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(&v173, "");
  std::string::basic_string[abi:ne200100]<0>(&v175, "");
  v172[0] = a4;
  v7 = **a3;
  if ((*a3)[1] == v7)
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  v155 = *(v7 + 24);
  v8 = *(a1 + 128);
  if (v8)
  {
    SharedObjectPool::get_if<TTSSynthesizerEventBusInternal>(&v170, v8);
  }

  else
  {
    v170 = 0;
    v171 = 0;
  }

  v161 = a1;
  if (v155 != -1)
  {
    memset(&v169, 0, sizeof(v169));
    FrontendNNModule::passdown_leading_empty_token(a1);
    memset(&v168, 0, sizeof(v168));
    memset(&__s, 0, sizeof(__s));
    v9 = a3[1];
    v160 = *a3;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = *(a1 + 439);
    if (v10 < 0)
    {
      v10 = *(a1 + 424);
    }

    v158 = (a1 + 416);
    if (!v10 || (v11 = *v160, v12 = v160[1], v12 == *v160))
    {
      v30 = 1;
      if (!v9)
      {
LABEL_49:
        if (!v30)
        {
          if (Diagnostics_GetLogObject(void)::onceToken != -1)
          {
            dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
          }

          v37 = Diagnostics_GetLogObject(void)::__profile_log_default;
          if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v165.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&dword_1C2F95000, v37, OS_LOG_TYPE_ERROR, "Unchunking G2P failed at sanity check", &v165, 2u);
          }

          Diagnostics::log(3, "Unchunking G2P failed at sanity check", v38);
LABEL_136:
          v64 = *(a1 + 40);
          v65 = *(a1 + 48);
          if (v65 == v64)
          {
            v66 = (a1 + 72);
            v65 = *(a1 + 40);
          }

          else
          {
            v66 = (a1 + 72);
            v67 = *(a1 + 64);
            v68 = &v64[v67 >> 8];
            v69 = *v68;
            v70 = *v68 + 16 * v67;
            v71 = *(v64 + (((*(a1 + 72) + v67) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 72) + v67);
            if (v70 != v71)
            {
              do
              {
                v72 = *(v70 + 8);
                if (v72)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v72);
                  v69 = *v68;
                }

                v70 += 16;
                if (v70 - v69 == 4096)
                {
                  v73 = v68[1];
                  ++v68;
                  v69 = v73;
                  v70 = v73;
                }
              }

              while (v70 != v71);
              v64 = *(a1 + 40);
              v65 = *(a1 + 48);
            }
          }

          *v66 = 0;
          v77 = v65 - v64;
          if (v77 >= 3)
          {
            do
            {
              operator delete(*v64);
              v78 = *(a1 + 48);
              v64 = (*(a1 + 40) + 8);
              *(a1 + 40) = v64;
              v77 = (v78 - v64) >> 3;
            }

            while (v77 > 2);
          }

          if (v77 == 1)
          {
            v79 = 128;
          }

          else
          {
            if (v77 != 2)
            {
LABEL_154:
              v80 = 1;
              goto LABEL_228;
            }

            v79 = 256;
          }

          *(a1 + 64) = v79;
          goto LABEL_154;
        }

        if ((*a3)[1] != **a3)
        {
          operator new();
        }

        v39 = 0;
        size = HIBYTE(v168.__r_.__value_.__r.__words[2]);
        if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v168.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          v41 = *(*(*(a1 + 40) + (((*(a1 + 72) + *(a1 + 64) - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 72) + *(a1 + 64) - 1));
          if (v41 + 8 != v42)
          {
            v43 = *(v42 + 40) + 8;
          }

          UTFString::rstrip(&v168);
          if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
          {
            if (__s.__r_.__value_.__l.__size_)
            {
              std::string::__init_copy_ctor_external(&v165, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
              goto LABEL_80;
            }
          }

          else if (*(&__s.__r_.__value_.__s + 23))
          {
            v165 = __s;
            goto LABEL_80;
          }

          (*(*a1 + 136))(&v165, a1, &v168);
LABEL_80:
          v44 = *(a1 + 439);
          if (v44 < 0)
          {
            v45 = *(a1 + 424);
          }

          else
          {
            v45 = *(a1 + 439);
          }

          v46 = HIBYTE(v165.__r_.__value_.__r.__words[2]);
          if (v45)
          {
            v47 = v165.__r_.__value_.__l.__size_;
            if ((v165.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v48 = &v165;
            }

            else
            {
              v48 = v165.__r_.__value_.__r.__words[0];
            }

            if ((v165.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v49 = HIBYTE(v165.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v49 = v165.__r_.__value_.__l.__size_;
            }

            if (v44 >= 0)
            {
              v50 = v158;
            }

            else
            {
              v50 = *(a1 + 416);
            }

            if (v44 >= 0)
            {
              v51 = *(a1 + 439);
            }

            else
            {
              v51 = *(a1 + 424);
            }

            if (!v51)
            {
LABEL_134:
              if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v165.__r_.__value_.__l.__data_);
              }

              goto LABEL_136;
            }

            if (v49 >= v51)
            {
              v52 = v48 + v49;
              v53 = *v50;
              v54 = v48;
              while (1)
              {
                if (v49 - v51 == -1)
                {
                  goto LABEL_109;
                }

                v55 = memchr(v54, v53, v49 - v51 + 1);
                if (!v55)
                {
                  goto LABEL_109;
                }

                v56 = v55;
                if (!memcmp(v55, v50, v51))
                {
                  break;
                }

                v54 = (v56 + 1);
                v49 = v52 - (v56 + 1);
                if (v49 < v51)
                {
                  goto LABEL_109;
                }
              }

              if (v56 == v52)
              {
LABEL_109:
                a1 = v161;
              }

              else
              {
                a1 = v161;
                if (v56 - v48 != -1)
                {
                  goto LABEL_134;
                }
              }
            }
          }

          else
          {
            v47 = v165.__r_.__value_.__l.__size_;
          }

          if ((v46 & 0x80u) == 0)
          {
            v57 = v46;
          }

          else
          {
            v57 = v47;
          }

          std::string::basic_string[abi:ne200100](&__str, v57 + 3);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_str = &__str;
          }

          else
          {
            p_str = __str.__r_.__value_.__r.__words[0];
          }

          if (v57)
          {
            if ((v165.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v59 = &v165;
            }

            else
            {
              v59 = v165.__r_.__value_.__r.__words[0];
            }

            memmove(p_str, v59, v57);
          }

          *(&p_str->__r_.__value_.__l.__data_ + v57) = 2121504;
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v60 = &__str;
          }

          else
          {
            v60 = __str.__r_.__value_.__r.__words[0];
          }

          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v61 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v61 = __str.__r_.__value_.__l.__size_;
          }

          std::string::append(&v169, v60, v61);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v63 = *(v62 + 64);
          v164[0] = *(v62 + 56);
          v164[1] = v63;
          if (v63)
          {
            atomic_fetch_add_explicit((v63 + 8), 1uLL, memory_order_relaxed);
          }

          FrontendNNModule::update_embedded_lang(v172, v164);
          if (v63)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v63);
          }

          create_pronunciation_with_phone_sequence(&__str);
        }

        v74 = *(a1 + 72);
        if (v74)
        {
          v76 = *(*(v75 + 40) + 24) + *(*(v75 + 40) + 16);
        }

        else
        {
          v76 = 0;
        }

        v81 = *(a1 + 352);
        v82 = *(a1 + 360);
        if (!((v82 - v81) >> 4))
        {
          goto LABEL_173;
        }

        v83 = 0;
        v84 = 0;
        {
LABEL_165:
          ++v39;
          v84 += 16;
          if (v39 >= (v82 - v81) >> 4)
          {
            if (v83)
            {
              v166 = 0u;
              *&v165.__r_.__value_.__r.__words[1] = 0u;
              v86 = (*(*a1 + 88))(a1);
              FrontendNNModule::update_phrasing_item(a1, &v165, 0, v86);
              Agglomerate::set<TokenPhrasingItem>(*(*(*(a1 + 40) + (((*(a1 + 72) + *(a1 + 64) - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 72) + *(a1 + 64) - 1)), &v165);
              if (*(&v166 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v166 + 1));
              }

              if (v165.__r_.__value_.__r.__words[2])
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v165.__r_.__value_.__r.__words[2]);
              }
            }

LABEL_173:
            v87 = *(a1 + 72);
            if (!v87)
            {
LABEL_214:
              if (Diagnostics_GetLogObject(void)::onceToken != -1)
              {
                dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
              }

              v111 = Diagnostics_GetLogObject(void)::__profile_log_default;
              if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEBUG))
              {
                Censor::global_plaintext(&v165, &v169);
                v112 = (v165.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v165 : v165.__r_.__value_.__r.__words[0];
                LODWORD(__str.__r_.__value_.__l.__data_) = 136315138;
                *(__str.__r_.__value_.__r.__words + 4) = v112;
                _os_log_impl(&dword_1C2F95000, v111, OS_LOG_TYPE_DEBUG, "#Formatted - %s", &__str, 0xCu);
                if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v165.__r_.__value_.__l.__data_);
                }
              }

              Censor::global_plaintext(&v165, &v169);
              if ((v165.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v114 = &v165;
              }

              else
              {
                v114 = v165.__r_.__value_.__r.__words[0];
              }

              Diagnostics::log(7, "#Formatted - %s", v113, v114);
              if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v165.__r_.__value_.__l.__data_);
              }

              v80 = 0;
LABEL_228:
              if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__s.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v168.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v169.__r_.__value_.__l.__data_);
              }

              if (v80 & a5)
              {
                goto LABEL_235;
              }

              if (!v80)
              {
                goto LABEL_330;
              }

              goto LABEL_260;
            }

            v88 = 0;
            v89 = 0;
            v90 = MEMORY[0x1E69E9830];
            while (2)
            {
              v91 = *(*(*(a1 + 40) + (((*(a1 + 64) + v88) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 64) + v88));
              if (v91 + 8 == v92)
              {
                v93 = 0;
              }

              else
              {
                v93 = (*(v92 + 40) + 8);
              }

              if (v87 <= v88)
              {
                std::__throw_out_of_range[abi:ne200100]("deque");
              }

              {
                v94 = *(v93[6] + 16);
                if (*(v94 + 23) < 0)
                {
                  std::string::__init_copy_ctor_external(&v165, *v94, *(v94 + 1));
                }

                else
                {
                  v95 = *v94;
                  v165.__r_.__value_.__r.__words[2] = *(v94 + 2);
                  *&v165.__r_.__value_.__l.__data_ = v95;
                }

                v96 = v93[1];
                v97 = v93[2] + v96;
                v98 = HIBYTE(v165.__r_.__value_.__r.__words[2]);
                if ((v165.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v98 = v165.__r_.__value_.__l.__size_;
                }

                if (v97 < v98)
                {
                  v99 = 0;
                  do
                  {
                    v100 = *std::string::at(&v165, v97);
                    if ((v100 & 0x80000000) != 0)
                    {
                      v101 = __maskrune(v100, 0x4000uLL);
                    }

                    else
                    {
                      v101 = *(v90 + 4 * v100 + 60) & 0x4000;
                    }

                    if (v101)
                    {
                      break;
                    }

                    ++v99;
                    ++v97;
                    v102 = HIBYTE(v165.__r_.__value_.__r.__words[2]);
                    if ((v165.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v102 = v165.__r_.__value_.__l.__size_;
                    }
                  }

                  while (v97 < v102);
                  if (v99)
                  {
                    if (*(v161 + 72) <= v88 + 1)
                    {
                      v105 = v93[1];
                      v104 = v93[2];
                    }

                    else
                    {
                      v105 = v93[1];
                      v104 = v93[2];
                      v106 = *(*(v103 + 40) + 16) - (v105 + v104);
                      if (v99 > (v106 & ~(v106 >> 31)))
                      {
                        v93[1] = v105 + v89;
                        v99 = v106 & ~(v106 >> 31);
                        if (v106 < 1)
                        {
                          v99 = 0;
                          goto LABEL_202;
                        }

LABEL_205:
                        v107 = 0;
                        v93[2] = v104 + v99;
LABEL_206:
                        a1 = v161;
                        if (*(v161 + 72) <= v88)
                        {
                          std::__throw_out_of_range[abi:ne200100]("deque");
                        }

                        v108 = *(*(*(v161 + 40) + (((*(v161 + 64) + v88) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v161 + 64) + v88));
                        if (v108 + 8 != v109)
                        {
                          v110 = *(v109 + 40);
                          *(v110 + 56) += v89;
                          if ((v107 & 1) == 0)
                          {
                            *(v110 + 64) += v99;
                          }
                        }

                        if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v165.__r_.__value_.__l.__data_);
                        }

                        v89 += v99;
                        v87 = *(v161 + 72);
LABEL_213:
                        if (v87 <= ++v88)
                        {
                          goto LABEL_214;
                        }

                        continue;
                      }
                    }

                    v93[1] = v105 + v89;
                    goto LABEL_205;
                  }

                  v96 = v93[1];
                }

                v99 = 0;
                v93[1] = v96 + v89;
LABEL_202:
                v107 = 1;
                goto LABEL_206;
              }

              break;
            }

            a1 = v161;
            goto LABEL_213;
          }
        }

        if ((v83 & 1) == 0)
        {
          v85 = *(a1 + 72);
          if (!v85)
          {
            v83 = 0;
            goto LABEL_163;
          }
        }

        v83 = 1;
LABEL_163:
        if (v39 >= (v82 - v81) >> 4)
        {
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        std::deque<std::shared_ptr<Agglomerate>>::push_back((a1 + 32), (v81 + v84));
        v81 = *(a1 + 352);
        v82 = *(a1 + 360);
        goto LABEL_165;
      }
    }

    else
    {
      v159 = v9;
      v13 = 0;
      v14 = 0;
      do
      {
        if (0xCCCCCCCCCCCCCCCDLL * ((v12 - v11) >> 3) <= v13)
        {
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        v15 = (v11 + 40 * v13);
        if (*(v15 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v165, *v15, *(v15 + 1));
        }

        else
        {
          v16 = *v15;
          v165.__r_.__value_.__r.__words[2] = *(v15 + 2);
          *&v165.__r_.__value_.__l.__data_ = v16;
        }

        v17 = 0;
        v18 = SHIBYTE(v165.__r_.__value_.__r.__words[2]);
        __p = v165.__r_.__value_.__r.__words[0];
        if ((v165.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v19 = &v165;
        }

        else
        {
          v19 = v165.__r_.__value_.__r.__words[0];
        }

        if ((v165.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = HIBYTE(v165.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v20 = v165.__r_.__value_.__l.__size_;
        }

        v21 = *(v161 + 439);
        if (v21 >= 0)
        {
          v22 = v158;
        }

        else
        {
          v22 = *(v161 + 416);
        }

        if (v21 >= 0)
        {
          v23 = *(v161 + 439);
        }

        else
        {
          v23 = *(v161 + 424);
        }

        v24 = v19 + v20;
        while (!v23)
        {
LABEL_40:
          if (v17 != -1)
          {
            ++v14;
            v17 += v23;
            if (v20 >= v17)
            {
              continue;
            }
          }

          goto LABEL_42;
        }

        v25 = v20 - v17;
        if ((v20 - v17) >= v23)
        {
          v26 = v19 + v17;
          v27 = *v22;
          do
          {
            if (v25 - v23 == -1)
            {
              break;
            }

            v28 = memchr(v26, v27, v25 - v23 + 1);
            if (!v28)
            {
              break;
            }

            v29 = v28;
            if (!memcmp(v28, v22, v23))
            {
              if (v29 == v24)
              {
                break;
              }

              v17 = v29 - v19;
              goto LABEL_40;
            }

            v26 = v29 + 1;
            v25 = v24 - (v29 + 1);
          }

          while (v25 >= v23);
        }

LABEL_42:
        if (v18 < 0)
        {
          operator delete(__p);
        }

        ++v13;
        v11 = *v160;
        v12 = v160[1];
      }

      while (0xCCCCCCCCCCCCCCCDLL * ((v12 - *v160) >> 3) > v13);
      v30 = (v14 & 1) == 0;
      a1 = v161;
      v9 = v159;
      if (!v159)
      {
        goto LABEL_49;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    goto LABEL_49;
  }

  if (!a5)
  {
    goto LABEL_260;
  }

  v31 = *(a1 + 440);
  LODWORD(__str.__r_.__value_.__l.__data_) = 0;
  LODWORD(v165.__r_.__value_.__l.__data_) = 0;
  v32 = *(a2 + 23);
  v33 = v32 >= 0 ? a2 : *a2;
  v34 = v32 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v35 = utext_openUTF8(0, v33, v34, &v165);
  v36 = SLODWORD(v165.__r_.__value_.__l.__data_) <= 0 ? v35 : 0;
  UTFRegex::set_text(v31, v36, 1);
  if (!uregex_find(*v31, -1, &__str))
  {
LABEL_260:
    FrontendNNModule::passdown_leading_empty_token(a1);
    memset(&v165, 0, sizeof(v165));
    v132 = **a3;
    v133 = (*a3)[1];
    while (v132 != v133)
    {
      if (*(v132 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, *v132, *(v132 + 1));
      }

      else
      {
        v134 = *v132;
        __str.__r_.__value_.__r.__words[2] = *(v132 + 2);
        *&__str.__r_.__value_.__l.__data_ = v134;
      }

      if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v135 = __str.__r_.__value_.__l.__size_;
        if (!__str.__r_.__value_.__l.__size_)
        {
          goto LABEL_305;
        }

        if (*__str.__r_.__value_.__l.__data_ == 32)
        {
          std::string::__init_copy_ctor_external(&v163, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
LABEL_271:
          UTFString::lstrip(&v163);
          status = v163;
          memset(&v163, 0, sizeof(v163));
          v136 = std::string::append(&status, " ");
          v137 = *&v136->__r_.__value_.__l.__data_;
          v177.__r_.__value_.__r.__words[2] = v136->__r_.__value_.__r.__words[2];
          *&v177.__r_.__value_.__l.__data_ = v137;
          v136->__r_.__value_.__l.__size_ = 0;
          v136->__r_.__value_.__r.__words[2] = 0;
          v136->__r_.__value_.__r.__words[0] = 0;
          if ((v177.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v138 = &v177;
          }

          else
          {
            v138 = v177.__r_.__value_.__r.__words[0];
          }

          if ((v177.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v139 = HIBYTE(v177.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v139 = v177.__r_.__value_.__l.__size_;
          }

          std::string::append(&v165, v138, v139);
          if (SHIBYTE(v177.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v177.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(status.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(status.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v163.__r_.__value_.__r.__words[2]) < 0)
          {
            v140 = v163.__r_.__value_.__r.__words[0];
LABEL_303:
            operator delete(v140);
            goto LABEL_304;
          }

          goto LABEL_304;
        }
      }

      else
      {
        if (!*(&__str.__r_.__value_.__s + 23))
        {
          goto LABEL_306;
        }

        if (__str.__r_.__value_.__s.__data_[0] == 32)
        {
          v163 = __str;
          goto LABEL_271;
        }

        v135 = __str.__r_.__value_.__l.__size_;
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v141 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v141 = v135;
      }

      std::string::basic_string[abi:ne200100](&v177, v141 + 1);
      if ((v177.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v142 = &v177;
      }

      else
      {
        v142 = v177.__r_.__value_.__r.__words[0];
      }

      if (v141)
      {
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v143 = &__str;
        }

        else
        {
          v143 = __str.__r_.__value_.__r.__words[0];
        }

        memmove(v142, v143, v141);
      }

      *(&v142->__r_.__value_.__l.__data_ + v141) = 32;
      if ((v177.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v144 = &v177;
      }

      else
      {
        v144 = v177.__r_.__value_.__r.__words[0];
      }

      if ((v177.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v145 = HIBYTE(v177.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v145 = v177.__r_.__value_.__l.__size_;
      }

      std::string::append(&v165, v144, v145);
      if (SHIBYTE(v177.__r_.__value_.__r.__words[2]) < 0)
      {
        v140 = v177.__r_.__value_.__r.__words[0];
        goto LABEL_303;
      }

LABEL_304:
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_305:
        operator delete(__str.__r_.__value_.__l.__data_);
      }

LABEL_306:
      v132 = (v132 + 40);
    }

    UTFString::rstrip(&v165);
    (*(*v161 + 136))(&__str, v161, &v165);
    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v146 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEBUG))
    {
      Censor::global_plaintext(&v177, &__str);
      v147 = (v177.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v177 : v177.__r_.__value_.__r.__words[0];
      LODWORD(status.__r_.__value_.__l.__data_) = 136315138;
      *(status.__r_.__value_.__r.__words + 4) = v147;
      _os_log_impl(&dword_1C2F95000, v146, OS_LOG_TYPE_DEBUG, "#Formatted - %s", &status, 0xCu);
      if (SHIBYTE(v177.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v177.__r_.__value_.__l.__data_);
      }
    }

    Censor::global_plaintext(&v177, &__str);
    if ((v177.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v149 = &v177;
    }

    else
    {
      v149 = v177.__r_.__value_.__r.__words[0];
    }

    Diagnostics::log(7, "#Formatted - %s", v148, v149);
    if (SHIBYTE(v177.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v177.__r_.__value_.__l.__data_);
    }

    (*(*v161 + 176))(v161, &__str, 0, a4);
    v150 = v170;
    if (v170)
    {
      v151 = v155 == -1 ? "G2PAlignmentFailure" : "ReconstructionFailure";
      std::string::basic_string[abi:ne200100]<0>(&v177, v151);
      Observable::emit(v150, "tts.errors.word_alignment_failure", &v177);
      if (SHIBYTE(v177.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v177.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v165.__r_.__value_.__l.__data_);
    }

LABEL_330:
    v131 = 1;
    goto LABEL_331;
  }

LABEL_235:
  v116 = *(a1 + 352);
  for (i = *(a1 + 360); v116 != i; v116 += 2)
  {
    v118 = *v116;
    v117 = v116[1];
    if (v117)
    {
      atomic_fetch_add_explicit(&v117->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v118 + 8 != v119)
    {
      v120 = *(v119 + 40);
      if (*(v120 + 8) != 1952807028)
      {
        v121 = *(v161 + 440);
        LODWORD(v177.__r_.__value_.__l.__data_) = 0;
        v124 = *(v120 + 32);
        v123 = v120 + 32;
        v122 = v124;
        LODWORD(__str.__r_.__value_.__l.__data_) = 0;
        v125 = *(v123 + 23);
        v126 = (v125 >= 0 ? v123 : v122);
        v127 = v125 >= 0 ? *(v123 + 23) : *(v123 + 8);
        v128 = utext_openUTF8(0, v126, v127, &__str);
        v129 = SLODWORD(__str.__r_.__value_.__l.__data_) <= 0 ? v128 : 0;
        UTFRegex::set_text(v121, v129, 1);
        if (uregex_find(*v121, -1, &v177))
        {
          MEMORY[0x1C692A640](v123, "");
        }
      }
    }

    __str.__r_.__value_.__r.__words[0] = &v177;
    a1 = v161;
    {
      operator new();
    }

    v130 = *(v161 + 16);
    v165.__r_.__value_.__r.__words[0] = v118;
    v165.__r_.__value_.__l.__size_ = v117;
    if (v117)
    {
      atomic_fetch_add_explicit(&v117->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::deque<std::shared_ptr<Agglomerate>>::push_back((v130 + 32), &v165);
    if (v117)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v117);
      std::__shared_weak_count::__release_shared[abi:ne200100](v117);
    }
  }

  std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>>::clear[abi:ne200100]((a1 + 352));
  v131 = 0;
LABEL_331:
  if (v171)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v171);
  }

  if (v176 < 0)
  {
    operator delete(v175);
  }

  if (v174 < 0)
  {
    operator delete(v173);
  }

  v152 = *MEMORY[0x1E69E9840];
  return v131;
}

void sub_1C2FEDC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60, void *a61, uint64_t a62, int a63)
{
  if (v74)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v74);
  }

  TokenBasicItem::~TokenBasicItem(&a45);
  if (a54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a54);
  }

  if (a60 < 0)
  {
    operator delete(__p);
  }

  if (a66 < 0)
  {
    operator delete(a61);
  }

  if (a72 < 0)
  {
    operator delete(a67);
  }

  if (a73)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a73);
  }

  fst::FstHeader::~FstHeader(&a74);
  _Unwind_Resume(a1);
}

std::string *FrontendNNModule::update_embedded_lang(uint64_t a1, uint64_t ***a2)
{
  v3 = *a2;
  v4 = **a2;
  if (v4)
  {
    v6 = v3[1];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = *v4;
    if (*v4)
    {
      do
      {
        v8 = v4[1];
        v4 = v7;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v7 = *v4;
        v6 = v8;
      }

      while (*v4);
    }

    else
    {
      v8 = v6;
    }

    std::string::operator=((a1 + 8), (v4 + 5));
    std::string::operator=((a1 + 32), (*a2 + 5));
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  else
  {
    std::string::operator=((a1 + 8), (v3 + 5));
    if (*(a1 + 55) < 0)
    {
      **(a1 + 32) = 0;
      *(a1 + 40) = 0;
    }

    else
    {
      *(a1 + 32) = 0;
      *(a1 + 55) = 0;
    }
  }

  FrontendNNModule::lang_string_cleanup((a1 + 8));

  return FrontendNNModule::lang_string_cleanup((a1 + 32));
}

void sub_1C2FEE1AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *FrontendNNModule::lang_string_cleanup(std::string *result)
{
  size = HIBYTE(result->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v2 = result;
  }

  else
  {
    v2 = result->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = result->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v3 = (v2 + size);
    for (i = v2; *i != 45; ++i)
    {
      if (!--size)
      {
        return result;
      }
    }

    if (i != v3 && &i[-v2] != -1)
    {
      return std::string::erase(result, &i[-v2], 1uLL);
    }
  }

  return result;
}

void *std::__list_imp<char *>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void *std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
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

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<int>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}