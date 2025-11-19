uint64_t kaldi::nnet1::ParallelComponent::SetGradientNormalization(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  v4 = *(result + 184);
  if (v4 != *(result + 192))
  {
    v8 = result;
    do
    {
      result = kaldi::nnet1::Nnet::SetGradientNormalization(v4, a2, a3, 0, a4);
      v4 += 376;
    }

    while (v4 != *(v8 + 192));
  }

  return result;
}

char ****kaldi::nnet1::Nnet::Backpropagate(char ****result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if ((a4 & 0x80000000) != 0 || (v6 = result, *(result[18] + 8) <= a4))
  {
    kaldi::KaldiAssertFailure_("Backpropagate", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_1F8.reloff + 3, "batch_idx >= 0 && batch_idx < opts_->num_subbatches", a5);
  }

  v10 = *result;
  v9 = result[1];
  v11 = v9 - *result;
  v12 = v11 >> 3;
  if ((v11 >> 3))
  {
    if (a3)
    {
      v13 = a3;
    }

    else
    {
      v13 = a2;
    }

    v14 = *(v13 + 32);
    v15 = a4;
    v16 = &result[9][3 * a4];
    v17 = *v16;
    v18 = v16[1];
    if (v17 != v18)
    {
      v19 = 0;
      v20 = (v18 - v17 - 48) / 0x30uLL;
      v21 = (v20 + 2) & 0xFFFFFFFFFFFFFFELL;
      v22 = vdupq_n_s64(v20);
      v23 = (v17 + 80);
      do
      {
        v24 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v19), xmmword_212100)));
        if (v24.i8[0])
        {
          *(v23 - 6) = v14;
        }

        if (v24.i8[4])
        {
          *v23 = v14;
        }

        v19 += 2;
        v23 += 12;
      }

      while (v21 != v19);
    }

    v25 = &result[15][3 * a4];
    v26 = *v25;
    v27 = v25[1];
    if (v26 != v27)
    {
      v28 = 0;
      v29 = (v27 - v26 - 48) / 0x30uLL;
      v30 = (v29 + 2) & 0xFFFFFFFFFFFFFFELL;
      v31 = vdupq_n_s64(v29);
      v32 = (v26 + 80);
      do
      {
        v33 = vmovn_s64(vcgeq_u64(v31, vorrq_s8(vdupq_n_s64(v28), xmmword_212100)));
        if (v33.i8[0])
        {
          *(v32 - 6) = v14;
        }

        if (v33.i8[4])
        {
          *v32 = v14;
        }

        v28 += 2;
        v32 += 12;
      }

      while (v30 != v28);
    }

    if (v12 >= (-1431655765 * ((v18 - v17) >> 4)))
    {
      kaldi::KaldiAssertFailure_("Backpropagate", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_248.sectname[7], "(int32)propagate_buf_[batch_idx].size() >= NumComponents() + 1", a5);
    }

    if (v12 - 1 > (-1431655765 * ((v27 - v26) >> 4)))
    {
      kaldi::KaldiAssertFailure_("Backpropagate", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_248.sectname[9], "(int32)backpropagate_buf_[batch_idx].size() >= NumComponents() - 1", a5);
    }

    if (v12 == 1)
    {
      kaldi::nnet1::Component::Backpropagate(*v10, v17, v17 + 48, a2, a3, a4);
      result = (*(***v6 + 4))(**v6);
      if (!result)
      {
        return result;
      }

      v34 = **v6;
      if (v34)
      {
        v35 = **v34;
      }

      v36 = v6[9][3 * v15];
      v37 = *(*v34 + 29);
      goto LABEL_47;
    }

    v38 = (v11 << 29) - 0x100000000;
    kaldi::nnet1::Component::Backpropagate(*(v9 - 1), v17 + 48 * SHIDWORD(v38), v17 + 48 * v12, a2, v26 + 48 * (((v11 << 29) - 0x200000000) >> 32), a4);
    if ((**(*v6 + (v38 >> 29)))[4](*(*v6 + (v38 >> 29))))
    {
      v39 = (*v6)[v38 >> 32];
      if (v39)
      {
        v40 = **v39;
      }

      (*(*v39 + 29))(v39, &v6[9][3 * v15][6 * SHIDWORD(v38)], a2, v14, a4);
    }

    v41 = (v12 - 2);
    if (v41 >= 1)
    {
      v42 = 48 * v41 + 48;
      do
      {
        v43 = v6[9][3 * a4] + v42;
        v44 = v6[15][3 * a4] + v42;
        kaldi::nnet1::Component::Backpropagate((*v6)[v41], v43 - 48, v43, v44 - 48, v44 - 96, a4);
        if ((*(*(*v6)[v41] + 4))((*v6)[v41]))
        {
          v45 = (*v6)[v41];
          if (v45)
          {
            v46 = **v45;
          }

          (*(*v45 + 29))(v45, v6[9][3 * a4] + v42 - 48, v6[15][3 * a4] + v42 - 48, v14, a4);
        }

        --v41;
        v42 -= 48;
      }

      while ((v41 + 1) > 1);
    }

    v47 = v6[9][3 * a4];
    kaldi::nnet1::Component::Backpropagate(**v6, v47, v47 + 48, v6[15][3 * a4], a3, a4);
    result = (*(***v6 + 4))(**v6);
    if (result)
    {
      v48 = **v6;
      if (v48)
      {
        v49 = **v48;
      }

      v50 = v6[9][3 * a4];
      v51 = v6[15][3 * a4];
      v37 = *(*v48 + 29);
LABEL_47:

      return v37();
    }
  }

  else if (a3)
  {

    return kaldi::CuMatrix<float>::operator=(a3, a2);
  }

  return result;
}

void kaldi::nnet1::Nnet::Update(char ****this, void *a2, uint64_t a3)
{
  v4 = *this;
  v3 = this[1];
  if (*this != v3)
  {
    v8 = 0;
    do
    {
      if (this[22] == (v3 - *this) && ((*(this[21] + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8) & 1) != 0)
      {
        if (kaldi::g_kaldi_verbose_level >= 2)
        {
          kaldi::KaldiVlogMessage::KaldiVlogMessage(v12, "Update", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 652, 2);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "freezing component ", 19);
          v9 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " (1-based) in this Update", 25);
          kaldi::KaldiVlogMessage::~KaldiVlogMessage(v12);
        }
      }

      else if ((*(**v4 + 4))())
      {
        v10 = *v4;
        if (*v4)
        {
          v11 = **v10;
        }

        (*(*v10 + 32))(v10, a2, a3);
      }

      ++v4;
      ++v8;
      v3 = this[1];
    }

    while (v4 != v3);
  }
}

void kaldi::nnet1::Nnet::Feedforward(void *a1, uint64_t a2, uint64_t a3, int a4, const char *a5)
{
  if (!a3)
  {
    kaldi::KaldiAssertFailure_("Feedforward", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_2E8.nreloc + 2, "NULL != out", a5);
  }

  if (*(a1[18] + 32) != 1)
  {
    kaldi::KaldiAssertFailure_("Feedforward", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_2E8.nreloc + 3, "opts_->num_subbatches == 1", a5);
  }

  v6 = a5;
  v7 = (a1[1] - *a1) >> 3;
  if (a4 == -1)
  {
    v8 = (a1[1] - *a1) >> 3;
  }

  else
  {
    v8 = a4;
  }

  v9 = v8 + a5;
  if (v8 + a5 > v7)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v31, "Feedforward", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 812);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "Components to propagate (startCompIdx=", 38);
    v26 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ", num_comps=", 12);
    v27 = std::ostream::operator<<();
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, ") must not be greater than ", 27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "#components in the network (", 28);
    v29 = a1[1] - *a1;
    v30 = std::ostream::operator<<();
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v30, ").");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v31);
  }

  if (v8)
  {
    v12 = v7 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    kaldi::CuMatrix<float>::Resize(a3, *(a2 + 20), *(a2 + 16), 1u, 0);

    kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, a2, 111, v13, v14);
  }

  else if (v8 == 1)
  {
    v15 = *(*a1 + 8 * a5);

    kaldi::nnet1::Component::Propagate(v15, a2, a3, 0);
  }

  else
  {
    std::vector<kaldi::CuMatrix<float>>::vector[abi:ne200100](v31, 2uLL);
    v16 = *(a3 + 32);
    v17 = v31[0];
    *(v31[0] + 32) = v16;
    *(v17 + 80) = v16;
    kaldi::nnet1::Component::Propagate(*(*a1 + 8 * v6), a2, v17, 0);
    v18 = 0;
    v19 = v6;
    v20 = v9 - 2;
    if (v6 > v9 - 2)
    {
      v20 = v6;
    }

    v21 = v20 - v6;
    v22 = (v19 << 32) + 0x100000000;
    for (i = 8 * v19 + 8; ; i += 8)
    {
      v24 = v31[0] + 48 * v18;
      if (!v21)
      {
        break;
      }

      v18 = !v18;
      v25 = *(*a1 + i);
      --v21;
      v22 += 0x100000000;
      kaldi::nnet1::Component::Propagate(v25, v24, v31[0] + 48 * v18, 0);
    }

    kaldi::nnet1::Component::Propagate(*(*a1 + (v22 >> 29)), v24, a3, 0);
    v32 = v31;
    std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v32);
  }
}

uint64_t kaldi::nnet1::Nnet::OutputDim(kaldi::nnet1::Nnet *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(this + 1);
  if (*this == v5)
  {
    kaldi::KaldiAssertFailure_("OutputDim", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_338.reloff + 1, "!components_.empty()", a5);
  }

  return *(*(v5 - 8) + 12);
}

uint64_t kaldi::nnet1::Nnet::InputDim(kaldi::nnet1::Nnet *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*this == *(this + 1))
  {
    kaldi::KaldiAssertFailure_("InputDim", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_338.nreloc + 2, "!components_.empty()", a5);
  }

  return *(**this + 8);
}

uint64_t kaldi::nnet1::Nnet::GetHistoricalComponents@<X0>(kaldi::nnet1::Nnet *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<kaldi::EventMap *>::__init_with_size[abi:ne200100]<kaldi::EventMap **,kaldi::EventMap **>(a2, *(this + 6), *(this + 7), (*(this + 7) - *(this + 6)) >> 3);
}

void kaldi::nnet1::Nnet::AppendComponent(kaldi::nnet1::Nnet *this, kaldi::nnet1::Component *a2)
{
  v8 = a2;
  if (*(this + 22) == (*(this + 1) - *this) >> 3)
  {
    v7 = 0;
    std::vector<BOOL>::push_back(this + 168, &v7);
  }

  std::vector<kaldi::EventMap *>::push_back[abi:ne200100](this, &v8);
  kaldi::nnet1::Nnet::ResetInternalBuffers(this, v3, v4, v5, v6);
  kaldi::nnet1::Nnet::ResetRecurrentFlag(this);
}

uint64_t kaldi::nnet1::Nnet::GetParams(kaldi::nnet1::Nnet *a1, uint64_t a2)
{
  v4 = kaldi::nnet1::Nnet::NumParams(a1);
  kaldi::Vector<float>::Resize(a2, v4, 0, v5, v6);
  v7 = *a1;
  if (*(a1 + 1) == *a1)
  {
    v9 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    do
    {
      if ((*(**(v7 + 8 * v8) + 32))(*(v7 + 8 * v8)))
      {
        v10 = *(*a1 + 8 * v8);
        v11 = **v10;
        if (!v12)
        {
          __cxa_bad_cast();
        }

        v22 = 0;
        v23 = 0;
        v24 = 0;
        (*(*v12 + 184))(v12, &v22);
        v20 = 0;
        v21 = 0;
        if ((v23 + v9) > *(a2 + 8))
        {
          kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v15);
        }

        v19 = *a2 + 4 * v9;
        LODWORD(v20) = v23;
        kaldi::VectorBase<float>::CopyFromVec(&v19, &v22, v13, v14, v15);
        v16 = v23;
        kaldi::Vector<float>::Destroy(&v22);
        v9 += v16;
      }

      ++v8;
      v7 = *a1;
    }

    while (v8 < (*(a1 + 1) - *a1) >> 3);
  }

  result = kaldi::nnet1::Nnet::NumParams(a1);
  if (v9 != result)
  {
    kaldi::KaldiAssertFailure_("GetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_3D8.offset + 3, "pos == NumParams()", v18);
  }

  return result;
}

void sub_17CE38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::Nnet::NumParams(kaldi::nnet1::Nnet *this)
{
  v1 = *this;
  if (*(this + 1) == *this)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    if ((*(**(v1 + 8 * v3) + 32))(*(v1 + 8 * v3)))
    {
      v5 = *(*this + 8 * v3);
      if (v5)
      {
        v6 = **v5;
      }

      v4 = (*(*v5 + 22))(v5) + v4;
    }

    ++v3;
    v1 = *this;
  }

  while (v3 < (*(this + 1) - *this) >> 3);
  return v4;
}

uint64_t kaldi::nnet1::Nnet::SetParams(kaldi::nnet1::Nnet *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 != kaldi::nnet1::Nnet::NumParams(a1))
  {
    kaldi::KaldiAssertFailure_("SetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_3D8.align + 3, "wei_src.Dim() == NumParams()", v5);
  }

  v6 = *a1;
  if (*(a1 + 1) == *a1)
  {
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if ((*(**(v6 + 8 * v7) + 32))(*(v6 + 8 * v7)))
      {
        v9 = *(*a1 + 8 * v7);
        v10 = **v9;
        if (!v11)
        {
          __cxa_bad_cast();
        }

        v12 = v11;
        v13 = (*(*v11 + 176))(v11);
        v19 = 0;
        v20 = 0;
        v15 = v13 + v8;
        if ((v13 + v8) > *(a2 + 8))
        {
          kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v14);
        }

        v18 = *a2 + 4 * v8;
        LODWORD(v19) = v13;
        (*(*v12 + 192))(v12, &v18);
        v8 = v15;
      }

      ++v7;
      v6 = *a1;
    }

    while (v7 < (*(a1 + 1) - *a1) >> 3);
  }

  result = kaldi::nnet1::Nnet::NumParams(a1);
  if (v8 != result)
  {
    kaldi::KaldiAssertFailure_("SetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_3D8.flags + 1, "pos == NumParams()", v17);
  }

  return result;
}

float kaldi::nnet1::Nnet::SumParams(kaldi::nnet1::Nnet *this)
{
  v1 = *this;
  if (*(this + 1) == *this)
  {
    return 0.0;
  }

  v3 = 0;
  v4 = 0.0;
  do
  {
    if ((*(**(v1 + 8 * v3) + 32))(*(v1 + 8 * v3)))
    {
      v5 = *(*this + 8 * v3);
      v6 = **v5;
      if (!v7)
      {
        __cxa_bad_cast();
      }

      v4 = v4 + (*(*v7 + 208))(v7);
    }

    ++v3;
    v1 = *this;
  }

  while (v3 < (*(this + 1) - *this) >> 3);
  return v4;
}

void kaldi::nnet1::Nnet::ResetInternalBuffers(kaldi::nnet1::Nnet *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(*(this + 18) + 32);
  if (v5 <= 0)
  {
    kaldi::KaldiAssertFailure_("ResetInternalBuffers", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_428.sectname[12], "opts_->num_subbatches > 0", a5);
  }

  std::vector<std::vector<kaldi::CuMatrix<float>>>::resize(this + 72, v5);
  std::vector<std::vector<kaldi::CuMatrix<float>>>::resize(this + 120, *(*(this + 18) + 32));
  v10 = *(this + 1) - *this;
  v11 = *(*(this + 18) + 32);
  if ((v10 >> 3) <= 0)
  {
    if (v11 >= 1)
    {
      v28 = 0;
      do
      {
        v29 = (*(this + 9) + 24 * v28);
        v31 = *v29;
        v30 = v29[1];
        if (v30 != *v29)
        {
          v32 = v30 - 48;
          v33 = (v30 - 48);
          v34 = (v30 - 48);
          do
          {
            v35 = *v34;
            v34 -= 6;
            (*(v35 + 16))(v33);
            v32 -= 48;
            v20 = v33 == v31;
            v33 = v34;
          }

          while (!v20);
        }

        v29[1] = v31;
        v36 = (*(this + 15) + 24 * v28);
        v38 = *v36;
        v37 = v36[1];
        if (v37 != *v36)
        {
          v39 = v37 - 48;
          v40 = (v37 - 48);
          v41 = (v37 - 48);
          do
          {
            v42 = *v41;
            v41 -= 6;
            (*(v42 + 16))(v40);
            v39 -= 48;
            v20 = v40 == v38;
            v40 = v41;
          }

          while (!v20);
        }

        v36[1] = v38;
        ++v28;
      }

      while (v28 < *(*(this + 18) + 32));
    }

    v44 = *(this + 12);
    v43 = *(this + 13);
    if (v43 != v44)
    {
      v45 = v43 - 4;
      v46 = v43 - 4;
      v47 = v43 - 4;
      do
      {
        v48 = *v47;
        v47 -= 4;
        (*(v48 + 8))(v46);
        v45 -= 4;
        v20 = v46 == v44;
        v46 = v47;
      }

      while (!v20);
    }

    *(this + 13) = v44;
  }

  else
  {
    if (v11 >= 1)
    {
      v12 = 0;
      do
      {
        v13 = (*(this + 9) + 24 * v12);
        v15 = *v13;
        v14 = v13[1];
        if (v14 != *v13)
        {
          v16 = v14 - 48;
          v17 = (v14 - 48);
          v18 = (v14 - 48);
          do
          {
            v19 = *v18;
            v18 -= 6;
            (*(v19 + 16))(v17);
            v16 -= 48;
            v20 = v17 == v15;
            v17 = v18;
          }

          while (!v20);
        }

        v13[1] = v15;
        v21 = (*(this + 15) + 24 * v12);
        v23 = *v21;
        v22 = v21[1];
        if (v22 != *v21)
        {
          v24 = v22 - 48;
          v25 = (v22 - 48);
          v26 = (v22 - 48);
          do
          {
            v27 = *v26;
            v26 -= 6;
            (*(v27 + 16))(v25);
            v24 -= 48;
            v20 = v25 == v23;
            v25 = v26;
          }

          while (!v20);
        }

        v21[1] = v23;
        std::vector<kaldi::CuMatrix<float>>::resize((*(this + 9) + 24 * v12), (((*(this + 1) - *this) << 29) + 0x100000000) >> 32);
        std::vector<kaldi::CuMatrix<float>>::resize((*(this + 15) + 24 * v12++), (((*(this + 1) - *this) << 29) - 0x100000000) >> 32);
      }

      while (v12 < *(*(this + 18) + 32));
      v10 = *(this + 1) - *this;
    }

    std::vector<kaldi::CuVector<float>>::resize(this + 12, ((v10 << 29) + 0x100000000) >> 32, v7, v8, v9);
  }
}

void *kaldi::nnet1::Nnet::CheckInternalBuffers(void *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(this[18] + 32);
  if (v5 <= 0)
  {
    kaldi::KaldiAssertFailure_("CheckInternalBuffers", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_428.addr + 4, "opts_->num_subbatches > 0", a5);
  }

  v6 = this[9];
  v7 = this[10] - v6;
  v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
  if (v8 != v5)
  {
    kaldi::KaldiAssertFailure_("CheckInternalBuffers", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_428.addr + 5, "propagate_buf_.size() == opts_->num_subbatches", a5);
  }

  v9 = this[15];
  if (this[16] - v9 != v7)
  {
    kaldi::KaldiAssertFailure_("CheckInternalBuffers", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_428.addr + 6, "backpropagate_buf_.size() == opts_->num_subbatches", a5);
  }

  v10 = this[1] - *this;
  if ((v10 >> 3) <= 0)
  {
    v15 = (v6 + 8);
    v16 = (v9 + 8);
    do
    {
      if (*v15 != *(v15 - 1))
      {
        kaldi::KaldiAssertFailure_("CheckInternalBuffers", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_428.size + 7, "propagate_buf_[i].size() == 0", a5);
      }

      if (*v16 != *(v16 - 1))
      {
        kaldi::KaldiAssertFailure_("CheckInternalBuffers", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_428.offset, "backpropagate_buf_[i].size() == 0", a5);
      }

      v15 += 3;
      v16 += 3;
      --v8;
    }

    while (v8);
    if (this[13] != this[12])
    {
      kaldi::KaldiAssertFailure_("CheckInternalBuffers", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_428.offset + 2, "propagate_vec_buf_.size() == 0", a5);
    }
  }

  else
  {
    v11 = (v10 >> 3) + 1;
    v12 = ((v10 << 29) - 0x100000000) >> 32;
    v13 = (v6 + 8);
    v14 = (v9 + 8);
    do
    {
      if (0xAAAAAAAAAAAAAAABLL * ((*v13 - *(v13 - 1)) >> 4) != v11)
      {
        kaldi::KaldiAssertFailure_("CheckInternalBuffers", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_428.size + 1, "propagate_buf_[i].size() == NumComponents() + 1", a5);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*v14 - *(v14 - 1)) >> 4) != v12)
      {
        kaldi::KaldiAssertFailure_("CheckInternalBuffers", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_428.size + 2, "backpropagate_buf_[i].size() == NumComponents() - 1", a5);
      }

      v13 += 3;
      v14 += 3;
      --v8;
    }

    while (v8);
    if (v11 != (this[13] - this[12]) >> 5)
    {
      kaldi::KaldiAssertFailure_("CheckInternalBuffers", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_428.size + 4, "propagate_vec_buf_.size() == NumComponents() + 1", a5);
    }
  }

  return this;
}

uint64_t kaldi::nnet1::Nnet::IsComponentFrozen(kaldi::nnet1::Nnet *this, int a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (((*(this + 1) - *this) >> 3) <= a2)
  {
    kaldi::KaldiAssertFailure_("IsComponentFrozen", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_478.sectname[1], "index < NumComponents()", a5);
  }

  if (*(this + 22) <= a2)
  {
    return 0;
  }

  else
  {
    return (*(*(this + 21) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2) & 1;
  }
}

void kaldi::nnet1::Nnet::SetDropoutRetention(kaldi::nnet1::Nnet *this, float a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  if (((*(this + 1) - *this) >> 3) >= 1)
  {
    v8 = 0;
    v9 = a2 > 1.0 || a2 <= 0.0;
    do
    {
      Component = kaldi::nnet1::Nnet::GetComponent(this, v8, a4, a5, a6);
      if ((*(*Component + 24))(Component) == 518)
      {
        v11 = kaldi::nnet1::Nnet::GetComponent(this, v8, a4, a5, a6);
        v12 = **v11;
        if (!v13)
        {
          __cxa_bad_cast();
        }

        v14 = *(v13 + 48);
        v13[48] = a2;
        if (v9)
        {
          kaldi::KaldiAssertFailure_("SetDropoutRetention", "../subproject/libquasar/libkaldi/src/nnet/nnet-activation.h", &stru_158.nreloc + 2, "dropout_retention_ > 0.0 && dropout_retention_ <= 1.0", a6);
        }

        if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
        {
          kaldi::KaldiLogMessage::KaldiLogMessage(v17, "SetDropoutRetention", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 1203);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Setting dropout-retention in component ", 39);
          v15 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " from ", 6);
          v16 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " to ", 4);
          std::ostream::operator<<();
          kaldi::KaldiLogMessage::~KaldiLogMessage(v17);
        }
      }

      ++v8;
    }

    while (v8 < ((*(this + 1) - *this) >> 3));
  }
}

void sub_17DA40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiLogMessage::~KaldiLogMessage(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Nnet::Init(kaldi::nnet1::Nnet *a1, uint64_t a2)
{
  kaldi::Input::Input(v4, a2, 0);
  v3 = kaldi::Input::Stream(v4);
  kaldi::nnet1::Nnet::Init(a1, v3);
  kaldi::Input::Close(v4);
  kaldi::Input::~Input(v4);
}

void sub_17DAB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Input::~Input(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Nnet::Init(kaldi::nnet1::Nnet *a1, uint64_t *a2)
{
  kaldi::ExpectToken(a2, 0, "<NnetProto>");
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v5 = *(a2 + *(*a2 - 24) + 32);
  if ((v5 & 2) != 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "Init", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 1221);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Missing </NnetProto> at the end.", 32);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }

  if (v5)
  {
    kaldi::KaldiAssertFailure_("Init", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_478.reserved3 + 2, "is.good()", v4);
  }

  if (kaldi::PeekToken(a2, 0) != 47)
  {
    std::ios_base::getloc((a2 + *(*a2 - 24)));
    v6 = std::locale::use_facet(__p, &std::ctype<char>::id);
    v7 = (v6->__vftable[2].~facet_0)(v6, 10);
    std::locale::~locale(__p);
    std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v18, v7);
    if (kaldi::g_kaldi_verbose_level >= 1)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, "Init", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 1228, 1);
      if (v20 >= 0)
      {
        v8 = &v18;
      }

      else
      {
        v8 = v18;
      }

      if (v20 >= 0)
      {
        v9 = HIBYTE(v20);
      }

      else
      {
        v9 = v19;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, v8, v9);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
    }

    if (v20 >= 0)
    {
      v10 = HIBYTE(v20);
    }

    else
    {
      v10 = v19;
    }

    std::string::basic_string[abi:ne200100](__p, v10 + 1);
    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0].__r_.__value_.__r.__words[0];
    }

    if (v10)
    {
      if (v20 >= 0)
      {
        v12 = &v18;
      }

      else
      {
        v12 = v18;
      }

      memmove(v11, v12, v10);
    }

    *(&v11->__r_.__value_.__l.__data_ + v10) = 10;
    kaldi::nnet1::Component::Init(__p);
  }

  kaldi::ExpectToken(a2, 0, "</NnetProto>");
  kaldi::nnet1::Nnet::ResetInternalBuffers(a1, v13, v14, v15, v16);
  kaldi::nnet1::Nnet::ResetRecurrentFlag(a1);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v18);
  }
}

void sub_17DD8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 - 97) < 0)
  {
    operator delete(*(v14 - 120));
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::Nnet::Read(kaldi::nnet1::Nnet *a1, uint64_t *a2, int a3)
{
  v6 = a2;
  for (i = a3; ; i = a3)
  {
    v8 = kaldi::nnet1::Component::Read(v6, i);
    v19 = v8;
    if (!v8)
    {
      break;
    }

    v13 = *(a1 + 1);
    if (((v13 - *a1) >> 3) >= 1 && *(*(v13 - 8) + 12) != *(v8 + 8))
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v18, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 1260);
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Dimensionality mismatch!", 24);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " Previous layer output:", 23);
      v15 = *(*(*(a1 + 1) - 8) + 12);
      v16 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " Current layer input:", 21);
      v17 = *(v19 + 8);
      std::ostream::operator<<();
      goto LABEL_10;
    }

    std::vector<kaldi::EventMap *>::push_back[abi:ne200100](a1, &v19);
    v6 = a2;
  }

  if (((*(a1 + 1) - *a1) >> 3) <= 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v18, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 1267);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v18, "Could not read any components");
LABEL_10:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v18);
  }

  *(*(a1 + 18) + 8) = 0;
  kaldi::nnet1::Nnet::ResetInternalBuffers(a1, v9, v10, v11, v12);
  kaldi::nnet1::Nnet::ResetRecurrentFlag(a1);
}

void *kaldi::nnet1::Nnet::Write(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  kaldi::nnet1::Nnet::CheckDimensions(a1, a2, a3, a4, a5);
  kaldi::WriteToken(a2, a3, "<Nnet>", v9, v10);
  if ((a3 & 1) == 0)
  {
    std::ios_base::getloc((a2 + *(*a2 - 24)));
    v13 = std::locale::use_facet(&v18, &std::ctype<char>::id);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(&v18);
    std::ostream::put();
    std::ostream::flush();
  }

  v14 = *a1;
  if (((a1[1] - *a1) >> 3) >= 1)
  {
    v15 = 0;
    do
    {
      kaldi::nnet1::Component::Write(*(v14 + 8 * v15++), a2, a3, a4);
      v14 = *a1;
    }

    while (v15 < ((a1[1] - *a1) >> 3));
  }

  result = kaldi::WriteToken(a2, a3, "</Nnet>", v11, v12);
  if ((a3 & 1) == 0)
  {
    std::ios_base::getloc((a2 + *(*a2 - 24)));
    v17 = std::locale::use_facet(&v18, &std::ctype<char>::id);
    (v17->__vftable[2].~facet_0)(v17, 10);
    std::locale::~locale(&v18);
    std::ostream::put();
    return std::ostream::flush();
  }

  return result;
}

uint64_t kaldi::nnet1::Nnet::Info(kaldi::nnet1::Nnet *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v39);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "num-components ", 15);
  v2 = *(this + 1) - *this;
  v3 = std::ostream::operator<<();
  std::ios_base::getloc((v3 + *(*v3 - 24)));
  v4 = std::locale::use_facet(&v38, &std::ctype<char>::id);
  (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v38);
  std::ostream::put();
  std::ostream::flush();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "input-dim ", 10);
  if (*this == *(this + 1))
  {
    v34 = (&stru_338 + 62);
    v35 = "InputDim";
    goto LABEL_27;
  }

  v6 = *(**this + 8);
  v7 = std::ostream::operator<<();
  std::ios_base::getloc((v7 + *(*v7 - 24)));
  v8 = std::locale::use_facet(&v38, &std::ctype<char>::id);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v38);
  std::ostream::put();
  std::ostream::flush();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "output-dim ", 11);
  v9 = *(this + 1);
  if (*this == v9)
  {
    v34 = &stru_338.reloff + 1;
    v35 = "OutputDim";
LABEL_27:
    kaldi::KaldiAssertFailure_(v35, "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", v34, "!components_.empty()", v5);
  }

  v10 = *(*(v9 - 8) + 12);
  v11 = std::ostream::operator<<();
  std::ios_base::getloc((v11 + *(*v11 - 24)));
  v12 = std::locale::use_facet(&v38, &std::ctype<char>::id);
  (v12->__vftable[2].~facet_0)(v12, 10);
  std::locale::~locale(&v38);
  std::ostream::put();
  std::ostream::flush();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "number-of-parameters ", 21);
  kaldi::nnet1::Nnet::NumParams(this);
  v13 = std::ostream::operator<<();
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " millions", 9);
  std::ios_base::getloc((v14 + *(*v14 - 24)));
  v15 = std::locale::use_facet(&v38, &std::ctype<char>::id);
  (v15->__vftable[2].~facet_0)(v15, 10);
  std::locale::~locale(&v38);
  std::ostream::put();
  std::ostream::flush();
  if (((*(this + 1) - *this) >> 3) >= 1)
  {
    v16 = 0;
    do
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "component ", 10);
      v17 = v16 + 1;
      v18 = std::ostream::operator<<();
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " : ", 3);
      v20 = (*(**(*this + 8 * v16) + 24))(*(*this + 8 * v16));
      kaldi::nnet1::Component::TypeToMarker(v20, &v38);
      if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &v38;
      }

      else
      {
        v21 = v38.__r_.__value_.__r.__words[0];
      }

      if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v38.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v38.__r_.__value_.__l.__size_;
      }

      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v21, size);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ", input-dim ", 12);
      v24 = *(*(*this + 8 * v16) + 8);
      v25 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ", output-dim ", 13);
      v26 = *(*(*this + 8 * v16) + 12);
      v27 = std::ostream::operator<<();
      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, ", ", 2);
      (*(**(*this + 8 * v16) + 64))(__p);
      if ((v37 & 0x80u) == 0)
      {
        v29 = __p;
      }

      else
      {
        v29 = __p[0];
      }

      if ((v37 & 0x80u) == 0)
      {
        v30 = v37;
      }

      else
      {
        v30 = __p[1];
      }

      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v29, v30);
      std::ios_base::getloc((v31 + *(*v31 - 24)));
      v32 = std::locale::use_facet(&v43, &std::ctype<char>::id);
      (v32->__vftable[2].~facet_0)(v32, 10);
      std::locale::~locale(&v43);
      std::ostream::put();
      std::ostream::flush();
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      ++v16;
    }

    while (v17 < ((*(this + 1) - *this) >> 3));
  }

  std::stringbuf::str();
  if (v42 < 0)
  {
    operator delete(v41[7].__locale_);
  }

  std::locale::~locale(v41);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_17E790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::locale::~locale(&a16);
  std::ostringstream::~ostringstream(&a22);
  _Unwind_Resume(a1);
}

boost::filesystem::path *kaldi::nnet1::Nnet::InfoGradient@<X0>(kaldi::nnet1::Nnet *this@<X0>, boost::filesystem::path *a2@<X8>)
{
  v3 = *(this + 15);
  if (*(this + 16) == v3 || (v4 = *v3, *(*(this + 15) + 8) == v4) || !(4 * *(v4 + 20) * *(v4 + 24)))
  {

    return boost::filesystem::path::path(a2, "### No gradient info");
  }

  else
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "### Gradient stats :\n", 21);
    if (((*(this + 1) - *this) >> 3) >= 1)
    {
      v6 = 0;
      do
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "Component ", 10);
        v7 = v6 + 1;
        v8 = std::ostream::operator<<();
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " : ", 3);
        v10 = (*(**(*this + 8 * v6) + 24))(*(*this + 8 * v6));
        kaldi::nnet1::Component::TypeToMarker(v10, &v22);
        if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v11 = &v22;
        }

        else
        {
          v11 = v22.__r_.__value_.__r.__words[0];
        }

        if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v22.__r_.__value_.__l.__size_;
        }

        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, size);
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ", ", 2);
        (*(**(*this + 8 * v6) + 72))(__p);
        if ((v21 & 0x80u) == 0)
        {
          v15 = __p;
        }

        else
        {
          v15 = __p[0];
        }

        if ((v21 & 0x80u) == 0)
        {
          v16 = v21;
        }

        else
        {
          v16 = __p[1];
        }

        v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
        std::ios_base::getloc((v17 + *(*v17 - 24)));
        v18 = std::locale::use_facet(&v27, &std::ctype<char>::id);
        (v18->__vftable[2].~facet_0)(v18, 10);
        std::locale::~locale(&v27);
        std::ostream::put();
        std::ostream::flush();
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }

        ++v6;
      }

      while (v7 < ((*(this + 1) - *this) >> 3));
    }

    std::stringbuf::str();
    if (v26 < 0)
    {
      operator delete(v25[7].__locale_);
    }

    std::locale::~locale(v25);
    std::ostream::~ostream();
    return std::ios::~ios();
  }
}

boost::filesystem::path *kaldi::nnet1::Nnet::InfoPropagate@<X0>(kaldi::nnet1::Nnet *this@<X0>, boost::filesystem::path *a2@<X8>)
{
  v2 = *(this + 9);
  if (*(this + 10) == v2 || (v3 = *v2, *(*(this + 9) + 8) == v3) || !(4 * *(v3 + 20) * *(v3 + 24)))
  {

    return boost::filesystem::path::path(a2, "### Forward propagation buffers not initialized");
  }

  else
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v37);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "### Forward propagation buffer content, note in the parallel GPU training, this only includes the first subbatch content :\n", 123);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "[0] output of <Input> ", 22);
    kaldi::nnet1::MomentStatistics<float>(**(this + 9));
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
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, p_p, size);
    std::ios_base::getloc((v8 + *(*v8 - 24)));
    v9 = std::locale::use_facet(&v33, &std::ctype<char>::id);
    (v9->__vftable[2].~facet_0)(v9, 10);
    std::locale::~locale(&v33);
    std::ostream::put();
    std::ostream::flush();
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (((*(this + 1) - *this) >> 3) >= 1)
    {
      v10 = 0;
      v11 = 48;
      do
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "[", 1);
        v12 = v10 + 1;
        v13 = std::ostream::operator<<();
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "] output of ", 12);
        v15 = (*(**(*this + 8 * v10) + 24))(*(*this + 8 * v10));
        kaldi::nnet1::Component::TypeToMarker(v15, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = &__p;
        }

        else
        {
          v16 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v17 = __p.__r_.__value_.__l.__size_;
        }

        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
        kaldi::nnet1::MomentStatistics<float>(**(this + 9) + v11);
        if ((v35 & 0x80u) == 0)
        {
          locale = &v33;
        }

        else
        {
          locale = v33.__locale_;
        }

        if ((v35 & 0x80u) == 0)
        {
          v20 = v35;
        }

        else
        {
          v20 = v34;
        }

        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, locale, v20);
        std::ios_base::getloc((v21 + *(*v21 - 24)));
        v22 = std::locale::use_facet(&v41, &std::ctype<char>::id);
        (v22->__vftable[2].~facet_0)(v22, 10);
        std::locale::~locale(&v41);
        std::ostream::put();
        std::ostream::flush();
        if (v35 < 0)
        {
          operator delete(v33.__locale_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if ((*(**(*this + 8 * v10) + 24))(*(*this + 8 * v10)) == 2055)
        {
          v23 = *(*this + 8 * v10);
          if (v23)
          {
            v24 = **v23;
          }

          (*v23)[31](&__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v25 = &__p;
          }

          else
          {
            v25 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v26 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v26 = __p.__r_.__value_.__l.__size_;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, v25, v26);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        if ((*(**(*this + 8 * v10) + 24))(*(*this + 8 * v10)) == 274)
        {
          v27 = *(*this + 8 * v10);
          if (v27)
          {
            v28 = **v27;
          }

          (*v27)[35](&__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v29 = &__p;
          }

          else
          {
            v29 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v30 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v30 = __p.__r_.__value_.__l.__size_;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, v29, v30);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v11 += 48;
        ++v10;
      }

      while (v12 < ((*(this + 1) - *this) >> 3));
    }

    std::stringbuf::str();
    if (v40 < 0)
    {
      operator delete(v39[7].__locale_);
    }

    std::locale::~locale(v39);
    std::ostream::~ostream();
    return std::ios::~ios();
  }
}

boost::filesystem::path *kaldi::nnet1::Nnet::InfoBackPropagate@<X0>(kaldi::nnet1::Nnet *this@<X0>, boost::filesystem::path *a2@<X8>)
{
  v2 = *(this + 15);
  if (*(this + 16) == v2 || (v3 = *v2, *(*(this + 15) + 8) == v3) || !(4 * *(v3 + 20) * *(v3 + 24)))
  {

    return boost::filesystem::path::path(a2, "### Backward propagation buffers not initialized");
  }

  else
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "### Backward propagation buffer content, Note in multi subbatch case, only the first subbatch is reported :\n", 108);
    if (*(*(this + 15) + 8) != **(this + 15))
    {
      v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "[0] diff of <Input> ", 20);
      kaldi::nnet1::MomentStatistics<float>(**(this + 15));
      v6 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v7 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v6, v7);
      std::ios_base::getloc((v8 + *(*v8 - 24)));
      v9 = std::locale::use_facet(&v36, &std::ctype<char>::id);
      (v9->__vftable[2].~facet_0)(v9, 10);
      std::locale::~locale(&v36);
      std::ostream::put();
      std::ostream::flush();
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (((*(this + 1) - *this) >> 3) >= 1)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "[", 1);
        v12 = v11 + 1;
        v13 = std::ostream::operator<<();
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "] diff-output of ", 17);
        v15 = (*(**(*this + 8 * v11) + 24))(*(*this + 8 * v11));
        kaldi::nnet1::Component::TypeToMarker(v15, &__p);
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
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v11 < (((*(this + 1) - *this) << 29) - 0x100000000) >> 32)
        {
          kaldi::nnet1::MomentStatistics<float>(**(this + 15) + v10);
          v18 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          v19 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, v18, v19);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        std::ios_base::getloc((&v32 + *(v32 - 3)));
        v20 = std::locale::use_facet(&__p, &std::ctype<char>::id);
        (v20->__vftable[2].~facet_0)(v20, 10);
        std::locale::~locale(&__p);
        std::ostream::put();
        std::ostream::flush();
        if ((*(**(*this + 8 * v11) + 24))(*(*this + 8 * v11)) == 2055)
        {
          v21 = *(*this + 8 * v11);
          if (v21)
          {
            v22 = **v21;
          }

          (*v21)[32](&__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = &__p;
          }

          else
          {
            v23 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v24 = __p.__r_.__value_.__l.__size_;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, v23, v24);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        if ((*(**(*this + 8 * v11) + 24))(*(*this + 8 * v11)) == 274)
        {
          v25 = *(*this + 8 * v11);
          if (v25)
          {
            v26 = **v25;
          }

          (*v25)[36](&__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v27 = &__p;
          }

          else
          {
            v27 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v28 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v28 = __p.__r_.__value_.__l.__size_;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, v27, v28);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v10 += 48;
        ++v11;
      }

      while (v12 < ((*(this + 1) - *this) >> 3));
    }

    std::stringbuf::str();
    if (v35 < 0)
    {
      operator delete(v34[7].__locale_);
    }

    std::locale::~locale(v34);
    std::ostream::~ostream();
    return std::ios::~ios();
  }
}

void kaldi::nnet1::Nnet::CheckWeights(kaldi::nnet1::Nnet *this)
{
  v1 = *this;
  if (*(this + 1) - *this >= 9uLL)
  {
    v3 = 0;
    do
    {
      if ((*(**(v1 + 8 * v3) + 32))(*(v1 + 8 * v3)))
      {
        kaldi::nnet1::UpdatableComponent::CheckParams(*(*this + 8 * v3));
      }

      v1 = *this;
      v4 = v3 + 2;
      ++v3;
    }

    while (v4 < (*(this + 1) - *this) >> 3);
  }
}

float kaldi::nnet1::UpdatableComponent::CheckParams(kaldi::nnet1::UpdatableComponent *this)
{
  result = (*(*this + 208))(this);
  if (fabsf(result) == INFINITY)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "CheckParams", "../subproject/libquasar/libkaldi/src/nnet/nnet-component.h", 427);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "'inf' in component parameters (weight explosion, try lower learning rate?)");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

void kaldi::nnet1::Nnet::ResetRecurrentFlag(kaldi::nnet1::Nnet *this)
{
  v1 = (this + 24);
  v3 = (this + 48);
  v2 = *(this + 6);
  *(this + 4) = *(this + 3);
  *(this + 7) = v2;
  *(this + 76) = 0;
  v4 = *this;
  if (*(this + 1) != *this)
  {
    v6 = 0;
    while (1)
    {
      v7 = *(v4 + 8 * v6);
      if (!v7)
      {
        goto LABEL_34;
      }

      v8 = *v7;
      v9 = **v7;
      if (!v10)
      {
        break;
      }

      v11 = v10;
      kaldi::nnet1::ParallelComponent::GetHistoricalComponents(v10, &v47);
      std::vector<kaldi::nnet1::RecurrentBaseComponent *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>,std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>>(v3, *(this + 7), v47, v48, (v48 - v47) >> 3);
      if (*(this + 153))
      {
        v12 = 1;
      }

      else
      {
        v19 = *(v11 + 23);
        v20 = *(v11 + 24);
        if (v19 == v20)
        {
          v12 = 0;
        }

        else
        {
          v12 = 0;
          do
          {
            if (v12)
            {
              v12 = 1;
            }

            else
            {
              v12 = *(v19 + 153);
            }

            v19 += 376;
          }

          while (v19 != v20);
        }
      }

      *(this + 153) = v12 & 1;
      kaldi::nnet1::ParallelComponent::GetRecurrentComponents(v11, &__p);
      std::vector<kaldi::nnet1::RecurrentBaseComponent *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>,std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>>(v1, *(this + 4), __p, v46, (v46 - __p) >> 3);
      if (__p)
      {
        v46 = __p;
        operator delete(__p);
      }

      if (v47)
      {
        v48 = v47;
        operator delete(v47);
      }

LABEL_51:
      ++v6;
      v4 = *this;
      if (v6 >= (*(this + 1) - *this) >> 3)
      {
        if (*(this + 3) != *(this + 4))
        {
          *(this + 152) = 1;
        }

        return;
      }
    }

    v13 = *v8;
    if (v14)
    {
      v15 = v14;
      if ((*(*v14 + 16))(v14) >= 1)
      {
        v17 = *(this + 7);
        v16 = *(this + 8);
        if (v17 >= v16)
        {
          v21 = (v17 - *v3) >> 3;
          if ((v21 + 1) >> 61)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v22 = v16 - *v3;
          v23 = v22 >> 2;
          if (v22 >> 2 <= (v21 + 1))
          {
            v23 = v21 + 1;
          }

          if (v22 >= 0x7FFFFFFFFFFFFFF8)
          {
            v24 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = v23;
          }

          if (v24)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>(v3, v24);
          }

          *(8 * v21) = v15;
          v18 = 8 * v21 + 8;
          v25 = *(this + 6);
          v26 = *(this + 7) - v25;
          v27 = (8 * v21 - v26);
          memcpy(v27, v25, v26);
          v28 = *(this + 6);
          *(this + 6) = v27;
          *(this + 7) = v18;
          *(this + 8) = 0;
          if (v28)
          {
            operator delete(v28);
          }
        }

        else
        {
          *v17 = v15;
          v18 = (v17 + 1);
        }

        *(this + 7) = v18;
      }
    }

LABEL_34:
    v29 = *(*this + 8 * v6);
    if (v29)
    {
      v30 = **v29;
      if (v31)
      {
        v32 = v31;
        if ((*(*v31 + 2))(v31) >= 1)
        {
          v34 = *(this + 4);
          v33 = *(this + 5);
          if (v34 >= v33)
          {
            v36 = (v34 - *v1) >> 3;
            if ((v36 + 1) >> 61)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            v37 = v33 - *v1;
            v38 = v37 >> 2;
            if (v37 >> 2 <= (v36 + 1))
            {
              v38 = v36 + 1;
            }

            if (v37 >= 0x7FFFFFFFFFFFFFF8)
            {
              v39 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v39 = v38;
            }

            if (v39)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>(v1, v39);
            }

            *(8 * v36) = v32;
            v35 = 8 * v36 + 8;
            v40 = *(this + 3);
            v41 = *(this + 4) - v40;
            v42 = (8 * v36 - v41);
            memcpy(v42, v40, v41);
            v43 = *(this + 3);
            *(this + 3) = v42;
            *(this + 4) = v35;
            *(this + 5) = 0;
            if (v43)
            {
              operator delete(v43);
            }
          }

          else
          {
            *v34 = v32;
            v35 = (v34 + 1);
          }

          *(this + 4) = v35;
          v44 = **v32;
          {
            *(this + 153) = 1;
          }
        }
      }
    }

    goto LABEL_51;
  }
}

void sub_17FED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::ParallelComponent::GetHistoricalComponents(kaldi::nnet1::ParallelComponent *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = *(this + 23);
  for (i = *(this + 24); v2 != i; v2 += 376)
  {
    __p = 0;
    v6 = 0;
    v7 = 0;
    std::vector<kaldi::EventMap *>::__init_with_size[abi:ne200100]<kaldi::EventMap **,kaldi::EventMap **>(&__p, *(v2 + 48), *(v2 + 56), (*(v2 + 56) - *(v2 + 48)) >> 3);
    std::vector<kaldi::nnet1::RecurrentBaseComponent *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>,std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>>(a2, *(a2 + 8), __p, v6, (v6 - __p) >> 3);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }
}

void sub_17FF9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::ParallelComponent::GetRecurrentComponents(kaldi::nnet1::ParallelComponent *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = *(this + 23);
  for (i = *(this + 24); v2 != i; v2 += 376)
  {
    __p = 0;
    v6 = 0;
    v7 = 0;
    std::vector<kaldi::EventMap *>::__init_with_size[abi:ne200100]<kaldi::EventMap **,kaldi::EventMap **>(&__p, *(v2 + 24), *(v2 + 32), (*(v2 + 32) - *(v2 + 24)) >> 3);
    std::vector<kaldi::nnet1::RecurrentBaseComponent *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>,std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>>(a2, *(a2 + 8), __p, v6, (v6 - __p) >> 3);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }
}

void sub_180064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::Nnet::ValidateNnet(kaldi::nnet1::Nnet *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  kaldi::nnet1::Nnet::CheckDimensions(this, a2, a3, a4, a5);
  kaldi::nnet1::Nnet::CheckWeights(this);

  return kaldi::nnet1::Nnet::CheckInternalBuffers(this, v6, v7, v8, v9);
}

void kaldi::nnet1::Nnet::SetHistoryOptions(kaldi::nnet1::Nnet *this, const kaldi::nnet1::HistoryOptions *a2, uint64_t a3)
{
  v6 = *(this + 6);
  v7 = *(this + 7);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 80))(v8, a2);
  }

  v9 = *(this + 18);
  v10 = **v9;
  if (v11)
  {
    v14 = *(v11 + 8);
    *&v17[15] = *(v11 + 23);
    *v17 = v14;
    v16 = off_2829C0;
    v18 = off_2829E0;
    v15 = *(v11 + 13);
    v19 = *(a2 + 2);
    v20 = v15;
    kaldi::nnet1::Nnet::SetTrainOptions(this, &v16, a3, v12, v13);
  }

  else if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v16, "SetHistoryOptions", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 1509);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "Inconsistent return type: RecurrentBaseComponent::GetTrainOptions() can not be cast to RecurrentNnetTrainOptions", 112);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v16);
  }
}

void *kaldi::nnet1::operator<<(void *a1, uint64_t a2)
{
  v4 = kaldi::nnet1::operator<<(a1, a2);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ", and Recurrent style components have additional configurations ", 64);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "num_sequences ", 14);
  v6 = *(a2 + 48);
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "bptt_steps ", 11);
  v7 = *(a2 + 52);
  v8 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", ", 2);
  return a1;
}

{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "NnetTrainOptions : ", 19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "learn_rate ", 11);
  v5 = *(a2 + 8);
  v6 = std::ostream::operator<<();
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ", ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "momentum ", 9);
  v8 = *(a2 + 12);
  v9 = std::ostream::operator<<();
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "l2_penalty ", 11);
  v11 = *(a2 + 16);
  v12 = std::ostream::operator<<();
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "l1_penalty ", 11);
  v14 = *(a2 + 20);
  v15 = std::ostream::operator<<();
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ", ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "qtype_compact_grad ", 19);
  v17 = *(a2 + 28);
  v18 = std::ostream::operator<<();
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ", ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "step_compact_grad ", 18);
  v20 = *(a2 + 24);
  v21 = std::ostream::operator<<();
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ", ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "num_subbatches ", 15);
  v23 = *(a2 + 32);
  v24 = std::ostream::operator<<();
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ", ", 2);
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "average_gradients ", 18);
  if (*(a2 + 36))
  {
    v27 = "true";
  }

  else
  {
    v27 = "false";
  }

  if (*(a2 + 36))
  {
    v28 = 4;
  }

  else
  {
    v28 = 5;
  }

  v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v27, v28);
  v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ", ", 2);
  v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "vectorize_weights ", 18);
  if (*(a2 + 37))
  {
    v32 = "true";
  }

  else
  {
    v32 = "false";
  }

  if (*(a2 + 37))
  {
    v33 = 4;
  }

  else
  {
    v33 = 5;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v32, v33);
  return a1;
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

char *std::vector<kaldi::nnet1::RecurrentBaseComponent *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>,std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>(a1, v15);
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
    memcpy((v33 + 8 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 3;
  if (v18 >= a5)
  {
    v29 = &__dst[8 * a5];
    v30 = (v10 - 8 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v29);
    }

    v28 = 8 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[8 * a5];
    v23 = v10 + v20;
    if (&v21[-8 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -8 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 8;
        v24 += 8;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[8 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
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

uint64_t std::vector<std::vector<float>>::__emplace_back_slow_path<std::vector<float> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
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
  std::__split_buffer<std::vector<std::pair<int,int>>>::~__split_buffer(&v14);
  return v8;
}

void sub_1808EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<std::pair<int,int>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::PdfPrior::PdfPrior(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 24);
  v4 = (a1 + 8);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 8) = off_277020;
  *(a1 + 16) = 0;
  if (*(a2 + 23) < 0)
  {
    if (!*(a2 + 8))
    {
      return a1;
    }
  }

  else if (!*(a2 + 23))
  {
    return a1;
  }

  v51 = 0;
  v52 = 0;
  v53 = 0;
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(v50, "PdfPrior", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-pdf-prior.cc", 53);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Computing pdf-priors from : ", 28);
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (v6 >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, v8);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v50);
  }

  v50[0].__locale_ = 0;
  kaldi::Input::OpenInternal(v50, a2, 0, 0);
  v9 = kaldi::Input::Stream(v50);
  kaldi::Vector<double>::Read(&v51, v9, 0, 0, v10);
  kaldi::Input::Close(v50);
  kaldi::Input::~Input(v50);
  v11 = v52;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  kaldi::Vector<float>::Resize(&v47, v52, 0, v12, v13);
  if (v11 >= 1)
  {
    v15 = 0;
    v16 = 0;
    v17 = v52;
    v18 = v51;
    v19 = v48;
    v20 = v47;
    do
    {
      if (v17 == v15)
      {
LABEL_30:
        kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", stru_68.sectname, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(dim_)", v14);
      }

      v21 = *(a2 + 28);
      if (v18[v15] < v21)
      {
        v18[v15] = v21;
        if (v15 >= v19)
        {
          goto LABEL_30;
        }

        v20[v15] = 2130706431;
        ++v16;
      }

      ++v15;
    }

    while (v11 != v15);
    if (v16 >= 1 && kaldi::g_kaldi_verbose_level > -2)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v50, "PdfPrior", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-pdf-prior.cc", 73);
      v22 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " out of ", 8);
      v23 = std::ostream::operator<<();
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " classes have counts", 20);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " lower than ", 12);
      v25 = *(a2 + 28);
      std::ostream::operator<<();
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v50);
    }
  }

  v26 = kaldi::VectorBase<double>::Sum(&v51);
  kaldi::VectorBase<double>::Scale(&v51, 1.0 / v26);
  kaldi::VectorBase<double>::ApplyLog(&v51);
  if (v11 >= 1)
  {
    v27 = "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(dim_)";
    v29 = "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h";
    v30 = "operator()";
    v31 = v51;
    v32 = v11;
    v33 = v52;
    while (v33)
    {
      if (*v31 == -INFINITY)
      {
        v46 = &stru_20.filesize + 1;
        v30 = "PdfPrior";
        v29 = "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-pdf-prior.cc";
        v27 = "tmp_priors(i) != kLogZeroDouble";
LABEL_33:
        kaldi::KaldiAssertFailure_(v30, v29, v46, v27, v28);
      }

      --v33;
      ++v31;
      if (!--v32)
      {
        goto LABEL_28;
      }
    }

    v46 = &stru_68;
    goto LABEL_33;
  }

LABEL_28:
  memset(v50, 0, 24);
  kaldi::Vector<float>::Resize(&v50[0].__locale_, v52, 1, v27, v28);
  kaldi::VectorBase<float>::CopyFromVec<double>(v50, &v51, v34, v35, v36);
  kaldi::VectorBase<float>::AddVec<float>(v50, &v47, 1.0, v37, v38, v39);
  kaldi::CuVector<float>::Resize(v4, v11, 1u, v40, v41);
  kaldi::CuVectorBase<float>::CopyFromVec<float>(v4, v50, v42, v43, v44);
  kaldi::Vector<float>::Destroy(v50);
  kaldi::Vector<float>::Destroy(&v47);
  kaldi::Vector<float>::Destroy(&v51);
  return a1;
}

void sub_180C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  kaldi::Vector<float>::Destroy(&a9);
  kaldi::Vector<float>::Destroy(v10 - 88);
  kaldi::CuVector<float>::~CuVector(v9);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::PdfPrior::SubtractOnLogpost(uint64_t a1, kaldi::ContextDependency *this)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "SubtractOnLogpost", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-pdf-prior.cc", 111);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "--class-frame-counts is empty: Cannot initialize priors ", 56);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "without the counts.");
    goto LABEL_5;
  }

  if (v2 != kaldi::ContextDependency::ContextWidth(this))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "SubtractOnLogpost", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-pdf-prior.cc", 115);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Dimensionality mismatch,", 24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " class_frame_counts ", 20);
    v15 = *(a1 + 24);
    v16 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " pdf_output_llk ", 16);
    kaldi::ContextDependency::ContextWidth(this);
    std::ostream::operator<<();
LABEL_5:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

  memset(v17, 0, 24);
  kaldi::Vector<float>::Resize(v17, *(a1 + 24), 1, v5, v6);
  kaldi::CuVectorBase<float>::CopyToVec<float>((a1 + 8), v17, v7, v8, v9);
  kaldi::MatrixBase<float>::AddVecToRows<float>(this, v17, -*a1, v10, v11, v12);
  kaldi::Vector<float>::Destroy(v17);
}

uint64_t std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

void sub_1810C8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,int>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::find<std::string>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
}

void *kaldi::nnet1::NormalizeComponent::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, a2, 111, a4, a5);
  v7 = *(a2 + 20);
  v15[2] = 0;
  v16 = 0;
  v15[0] = off_277020;
  v15[1] = 0;
  kaldi::CuVector<float>::Resize(v15, v7, 0, v8, v9);
  v16 = *(a3 + 32);
  v10 = 1.0 / *(a2 + 16);
  kaldi::CuVectorBase<float>::AddDiagMat2(v15, a2, 111, v10, 0.0);
  kaldi::CuVectorBase<float>::ApplyFloor(v15, 1.3553e-20);
  kaldi::CuVectorBase<float>::ApplyPow(v15, -0.5);
  kaldi::CuMatrixBase<float>::MulRowsVec(a3, v15, v11, v12, v13);
  return kaldi::CuVector<float>::~CuVector(v15);
}

void *kaldi::nnet1::NormalizeComponent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + 20);
  v23[2] = 0;
  v24 = 0;
  v23[0] = off_277020;
  v23[1] = 0;
  kaldi::CuVector<float>::Resize(v23, v8, 0, a4, a5);
  v24 = *(a5 + 32);
  v9 = v24;
  v10 = 1.0 / *(a2 + 16);
  kaldi::CuVectorBase<float>::AddDiagMat2(v23, a2, 111, v10, 0.0);
  kaldi::CuVectorBase<float>::ApplyFloor(v23, 1.3553e-20);
  kaldi::CuVectorBase<float>::ApplyPow(v23, -0.5);
  kaldi::CuMatrixBase<float>::AddDiagVecMat(a5, v23, a4, 111, v11, 1.0, 0.0);
  kaldi::CuVectorBase<float>::ReplaceValue(v23, 8589900000.0, 0.0);
  kaldi::CuVectorBase<float>::ApplyPow(v23, 3.0);
  v12 = *(a5 + 20);
  v21[2] = 0;
  v22 = 0;
  v21[0] = off_277020;
  v21[1] = 0;
  kaldi::CuVector<float>::Resize(v21, v12, 0, v13, v14);
  v22 = v9;
  kaldi::CuVectorBase<float>::AddDiagMatMat(v21, a4, 111, a2, 112, 1.0, 0.0);
  kaldi::CuVectorBase<float>::MulElements(v21, v23, v15, v16, v17);
  v18 = -1.0 / *(a2 + 16);
  kaldi::CuMatrixBase<float>::AddDiagVecMat(a5, v21, a2, 111, v19, v18, 1.0);
  kaldi::CuVector<float>::~CuVector(v21);
  return kaldi::CuVector<float>::~CuVector(v23);
}

void sub_1814CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuVector<float>::~CuVector(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::NormalizeComponent::~NormalizeComponent(kaldi::nnet1::NormalizeComponent *this)
{
  kaldi::nnet1::Component::~Component(this);

  operator delete();
}

double kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::WordMultiVecComponent(uint64_t a1, int a2, int a3)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = off_282980;
  *(a1 + 56) = xmmword_21A620;
  *(a1 + 72) = -1082130432;
  *(a1 + 76) = 0x100000003;
  *(a1 + 84) = 0;
  *(a1 + 86) = 0;
  *a1 = off_282AD8;
  *(a1 + 88) = off_282C08;
  *(a1 + 96) = 1;
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 1;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = off_276F88;
  *(a1 + 392) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 400) = off_276F88;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 1065353216;
  *(a1 + 460) = 0;
  *(a1 + 464) = 0;
  *(a1 + 529) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  return result;
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::WordMultiVecComponent(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = off_282980;
  *(a1 + 56) = xmmword_21A620;
  *(a1 + 72) = -1082130432;
  *(a1 + 76) = 0x100000003;
  *(a1 + 84) = 0;
  *(a1 + 86) = 0;
  *a1 = off_282AD8;
  *(a1 + 88) = off_282C08;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 104, *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 2);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 128, *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 2);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 152, *(a2 + 152), *(a2 + 160), (*(a2 + 160) - *(a2 + 152)) >> 2);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 176, *(a2 + 176), *(a2 + 184), (*(a2 + 184) - *(a2 + 176)) >> 2);
  v4 = *(a2 + 200);
  *(a1 + 208) = 0u;
  *(a1 + 200) = v4;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = off_276F88;
  *(a1 + 392) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 400) = off_276F88;
  *(a1 + 440) = 0;
  *(a1 + 536) = 0;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  v5 = *(a2 + 460);
  *(a1 + 460) = v5;
  if (v5 == 1 && *(a1 + 96) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(a2 + 256) + 8 * v6);
      v10 = (*(*v7 + 16))(v7);
      std::vector<kaldi::EventMap *>::push_back[abi:ne200100](a1 + 256, &v10);
      ++v6;
    }

    while (v6 < *(a1 + 96));
  }

  if (a1 != a2)
  {
    std::vector<kaldi::CuMatrix<float>>::__assign_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 280, *(a2 + 280), *(a2 + 288), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 288) - *(a2 + 280)) >> 4));
    std::vector<kaldi::CuMatrix<float>>::__assign_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 304, *(a2 + 304), *(a2 + 312), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 312) - *(a2 + 304)) >> 4));
    std::vector<kaldi::CuMatrix<float>>::__assign_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 328, *(a2 + 328), *(a2 + 336), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 336) - *(a2 + 328)) >> 4));
  }

  kaldi::CuMatrix<float>::operator=(a1 + 352, a2 + 352);
  kaldi::CuMatrix<float>::operator=(a1 + 400, a2 + 400);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 452) = *(a2 + 452);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 464) = *(a2 + 464);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 208), (*(a2 + 216) - *(a2 + 208)) >> 3);
  if (*(a1 + 216) != *(a1 + 208))
  {
    v8 = **(a2 + 208);
    kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::ConstructMatrixObject<kaldi::CuMatrixBase<float>>();
  }

  if (*(a2 + 480) != *(a2 + 472))
  {
    kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::InitResidualAggregator(a1, (a1 + 472));
  }

  *(a1 + 544) = *(a2 + 544);
  return a1;
}

void sub_181AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10)
{
  v14 = *v12;
  if (*v12)
  {
    *(v10 + 20) = v14;
    operator delete(v14);
  }

  v15 = *v11;
  if (*v11)
  {
    *(v10 + 17) = v15;
    operator delete(v15);
  }

  v16 = *a9;
  if (*a9)
  {
    *(v10 + 14) = v16;
    operator delete(v16);
  }

  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a10);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v10);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::InitResidualAggregator(uint64_t a1, uint64_t *a2)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  if (*(a1 + 460))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v5, "InitResidualAggregator", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 939);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, "Not implemented yet when transforms are used");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v5);
  }

  if (*(a1 + 216) != *(a1 + 208))
  {
    v4 = 0;
    do
    {
      kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, *(*(a1 + 232) + 8 * v4++));
    }

    while (v4 < (*(a1 + 216) - *(a1 + 208)) >> 3);
  }
}

void *kaldi::DeletePointers<kaldi::nnet1::UpdatableComponent>(void *result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (!result)
  {
    kaldi::KaldiAssertFailure_("DeletePointers", "../subproject/libquasar/libkaldi/src/util/stl-utils.h", stru_B8.sectname, "v != NULL", a5);
  }

  v5 = *result;
  v6 = result[1];
  while (v5 != v6)
  {
    result = *v5;
    if (*v5)
    {
      result = (*(*result + 8))(result);
      *v5 = 0;
    }

    ++v5;
  }

  return result;
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::~WordMultiVecComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  *a1 = off_282AD8;
  v6 = a1 + 88;
  *(a1 + 88) = off_282C08;
  kaldi::DeletePointers<kaldi::nnet1::UpdatableComponent>((a1 + 256), a2, a3, a4, a5);
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator((a1 + 472));
  kaldi::CuMatrix<float>::~CuMatrix(a1 + 400);
  kaldi::CuMatrix<float>::~CuMatrix(a1 + 352);
  v12 = (a1 + 328);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 304);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 280);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v7 = *(a1 + 256);
  if (v7)
  {
    *(a1 + 264) = v7;
    operator delete(v7);
  }

  v12 = (a1 + 232);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 208);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v8 = *(a1 + 176);
  if (v8)
  {
    *(a1 + 184) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 152);
  if (v9)
  {
    *(a1 + 160) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 128);
  if (v10)
  {
    *(a1 + 136) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 104);
  if (v11)
  {
    *(a1 + 112) = v11;
    operator delete(v11);
  }

  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v6);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a1);
}

{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::~WordMultiVecComponent(a1, a2, a3, a4, a5);

  operator delete();
}

void non-virtual thunk tokaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::~WordMultiVecComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::~WordMultiVecComponent(a1 - 88, a2, a3, a4, a5);
}

{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::~WordMultiVecComponent(a1 - 88, a2, a3, a4, a5);

  operator delete();
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::InitData(uint64_t a1, uint64_t *a2, kaldi::UniformRandomNumber *a3)
{
  v134 = 1036831949;
  kaldi::nnet1::Component::TypeToMarker((&dword_0 + 2), &v133);
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 448), &v132);
  v116 = 0;
  v131 = -1;
  *(a1 + 460) = 1;
  memset(v130, 0, sizeof(v130));
  v10 = (a1 + 200);
  v117 = (a1 + 96);
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_215;
    }

    kaldi::ReadToken(a2, 0, v130, v8, v9);
    if ((SHIBYTE(v130[2]) & 0x80000000) == 0)
    {
      if (HIBYTE(v130[2]) > 0xDu)
      {
        if (HIBYTE(v130[2]) <= 0x11u)
        {
          if (HIBYTE(v130[2]) == 14)
          {
            v35 = v130;
            goto LABEL_174;
          }

          if (HIBYTE(v130[2]) != 15)
          {
            if (HIBYTE(v130[2]) != 17)
            {
              goto LABEL_278;
            }

            v11 = v130[0] == 0x69446465626D453CLL && v130[1] == 0x736E6F69736E656DLL;
            if (!v11 || LOBYTE(v130[2]) != 62)
            {
              goto LABEL_278;
            }

LABEL_17:
            __p = 0;
            v126 = 0;
            v127 = 0;
            kaldi::ReadToken(a2, 0, &__p, v8, v9);
            kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 152), v13);
            goto LABEL_182;
          }

          v26 = v130[0] == 0x61526E7261654C3CLL && *(v130 + 7) == 0x3E66656F43657461;
          v7 = (a1 + 456);
          if (v26)
          {
            goto LABEL_190;
          }

          if (v130[0] != 0x656E67697373413CLL || *(v130 + 7) != 0x3E656C6261546465)
          {
            goto LABEL_278;
          }

          goto LABEL_181;
        }

        if (HIBYTE(v130[2]) != 18)
        {
          if (HIBYTE(v130[2]) != 19)
          {
            if (HIBYTE(v130[2]) != 20)
            {
              goto LABEL_278;
            }

            v18 = v130[0] == 0x6C616974696E493CLL && v130[1] == 0x6E6F436F54657A69;
            if (!v18 || LODWORD(v130[2]) != 1047814499)
            {
              goto LABEL_278;
            }

            goto LABEL_180;
          }

          if (v130[0] != 0x61725474696E493CLL || v130[1] != 0x79546D726F66736ELL || *(&v130[1] + 3) != 0x3E657079546D726FLL)
          {
            goto LABEL_278;
          }

          goto LABEL_103;
        }

        if (v130[0] != 0x6E6569646172473CLL || v130[1] != 0x7079546D726F4E74 || LOWORD(v130[2]) != 15973)
        {
          goto LABEL_278;
        }

LABEL_199:
        v30 = &v132;
        goto LABEL_200;
      }

      if (HIBYTE(v130[2]) > 0xAu)
      {
        if (HIBYTE(v130[2]) == 11)
        {
          v38 = v130[0] == 0x756F72476D754E3CLL && *(v130 + 3) == 0x3E7370756F72476DLL;
          v7 = (a1 + 96);
          if (!v38)
          {
            v39 = v130[0] == 0x6C6261546D754E3CLL && *(v130 + 3) == 0x3E73656C6261546DLL;
            v7 = (a1 + 200);
            if (!v39)
            {
              goto LABEL_278;
            }
          }

          goto LABEL_202;
        }

        if (HIBYTE(v130[2]) != 12)
        {
          if (v130[0] != 0x74536D617261503CLL || *(v130 + 5) != 0x3E7665646474536DLL)
          {
            goto LABEL_278;
          }

          goto LABEL_189;
        }

        if (v130[0] == 0x536D6F646E61523CLL && LODWORD(v130[1]) == 1046766949)
        {
          goto LABEL_201;
        }

        if (v130[0] != 0x69536261636F563CLL || LODWORD(v130[1]) != 1047750010)
        {
          goto LABEL_206;
        }

LABEL_113:
        __p = 0;
        v126 = 0;
        v127 = 0;
        kaldi::ReadToken(a2, 0, &__p, v8, v9);
        kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 104), v33);
        goto LABEL_182;
      }

      if (HIBYTE(v130[2]) != 9)
      {
        if (HIBYTE(v130[2]) != 10)
        {
          goto LABEL_278;
        }

        if (v130[0] != 0x6D65744978614D3CLL || LOWORD(v130[1]) != 15987)
        {
          goto LABEL_278;
        }

LABEL_66:
        __p = 0;
        v126 = 0;
        v127 = 0;
        kaldi::ReadToken(a2, 0, &__p, v8, v9);
        kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 128), v22);
        goto LABEL_182;
      }

      v34 = v130[0] == 0x6461724778614D3CLL && LOBYTE(v130[1]) == 62;
      goto LABEL_138;
    }

    v14 = v130[1];
    if (v130[1] <= 12)
    {
      if (v130[1] > 10)
      {
        if (v130[1] == &dword_8 + 3)
        {
          v40 = *v130[0] == 0x756F72476D754E3CLL && *(v130[0] + 3) == 0x3E7370756F72476DLL;
          v7 = (a1 + 96);
          if (v40)
          {
            goto LABEL_202;
          }

          v41 = *v130[0] == 0x6C6261546D754E3CLL && *(v130[0] + 3) == 0x3E73656C6261546DLL;
          v7 = (a1 + 200);
          if (v41)
          {
            goto LABEL_202;
          }
        }

        else
        {
          if (*v130[0] == 0x536D6F646E61523CLL && *(v130[0] + 2) == 1046766949)
          {
LABEL_201:
            v7 = &v131;
LABEL_202:
            kaldi::ReadBasicType<int>(a2, 0, v7, v8, v9);
            goto LABEL_203;
          }

          if (*v130[0] == 0x69536261636F563CLL && *(v130[0] + 2) == 1047750010)
          {
            goto LABEL_113;
          }
        }
      }

      else
      {
        if (v130[1] == &dword_8 + 1)
        {
          v34 = *v130[0] == 0x6461724778614D3CLL && *(v130[0] + 8) == 62;
LABEL_138:
          v7 = (a1 + 452);
          if (!v34)
          {
            goto LABEL_278;
          }

          goto LABEL_190;
        }

        if (v130[1] != &dword_8 + 2)
        {
          goto LABEL_158;
        }

        if (*v130[0] == 0x6D65744978614D3CLL && *(v130[0] + 4) == 15987)
        {
          goto LABEL_66;
        }
      }

      goto LABEL_157;
    }

    if (v130[1] > 16)
    {
      if (v130[1] != dword_10 + 1)
      {
        if (v130[1] == dword_10 + 2)
        {
          if (*v130[0] != 0x6E6569646172473CLL || *(v130[0] + 1) != 0x7079546D726F4E74 || *(v130[0] + 8) != 15973)
          {
            goto LABEL_278;
          }

          goto LABEL_199;
        }

        if (v130[1] == dword_10 + 3)
        {
          if (*v130[0] != 0x61725474696E493CLL || *(v130[0] + 1) != 0x79546D726F66736ELL || *(v130[0] + 11) != 0x3E657079546D726FLL)
          {
            goto LABEL_278;
          }

LABEL_103:
          v30 = &v133;
LABEL_200:
          kaldi::ReadToken(a2, 0, v30, v8, v9);
          goto LABEL_203;
        }

        goto LABEL_158;
      }

      if (*v130[0] == 0x69446465626D453CLL && *(v130[0] + 1) == 0x736E6F69736E656DLL && *(v130[0] + 16) == 62)
      {
        goto LABEL_17;
      }

LABEL_157:
      v14 = v130[1];
LABEL_158:
      if (v14 != (&dword_C + 3))
      {
        goto LABEL_164;
      }

      goto LABEL_159;
    }

    if (v130[1] == &dword_C + 1)
    {
      if (*v130[0] != 0x74536D617261503CLL || *(v130[0] + 5) != 0x3E7665646474536DLL)
      {
        goto LABEL_278;
      }

LABEL_189:
      v7 = &v134;
LABEL_190:
      kaldi::ReadBasicType<float>(a2, 0, v7, v8, v9);
      goto LABEL_203;
    }

    if (v130[1] != &dword_C + 3)
    {
      goto LABEL_158;
    }

    v25 = *v130[0] == 0x61526E7261654C3CLL && *(v130[0] + 7) == 0x3E66656F43657461;
    v7 = (a1 + 456);
    if (v25)
    {
      goto LABEL_190;
    }

LABEL_159:
    if (*v130[0] != 0x656E67697373413CLL || *(v130[0] + 7) != 0x3E656C6261546465)
    {
      break;
    }

LABEL_181:
    __p = 0;
    v126 = 0;
    v127 = 0;
    kaldi::ReadToken(a2, 0, &__p, v8, v9);
    kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 176), v51);
LABEL_182:
    if (SHIBYTE(v127) < 0)
    {
      operator delete(__p);
    }

LABEL_203:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  v14 = v130[1];
LABEL_164:
  if (v14 == &dword_14)
  {
    v45 = *v130[0] == 0x6C616974696E493CLL && *(v130[0] + 1) == 0x6E6F436F54657A69;
    if (v45 && *(v130[0] + 4) == 1047814499)
    {
LABEL_180:
      v116 = 1;
      goto LABEL_203;
    }
  }

  v47 = v130[1];
  if (v130[1] != &dword_C + 2)
  {
    goto LABEL_208;
  }

  v35 = v130[0];
LABEL_174:
  v48 = *v35;
  v49 = *(v35 + 6);
  if (v48 == 0x6E6172546573553CLL && v49 == 0x3E6D726F66736E61)
  {
    kaldi::ReadBasicType<BOOL>(a2, 0, (a1 + 460), v8, v9);
    goto LABEL_203;
  }

  if ((HIBYTE(v130[2]) & 0x80) == 0)
  {
    if (HIBYTE(v130[2]) == 12)
    {
LABEL_206:
      v55 = v130;
      goto LABEL_210;
    }

    goto LABEL_278;
  }

  v47 = v130[1];
LABEL_208:
  if (v47 != &dword_C)
  {
    goto LABEL_278;
  }

  v55 = v130[0];
LABEL_210:
  v56 = *v55;
  v57 = *(v55 + 2);
  if (v56 != 0x6E6F706D6F432F3CLL || v57 != 1047817829)
  {
LABEL_278:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 271);
    v109 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Unknown token ", 14);
    if (SHIBYTE(v130[2]) >= 0)
    {
      v110 = v130;
    }

    else
    {
      v110 = v130[0];
    }

    if (SHIBYTE(v130[2]) >= 0)
    {
      v111 = HIBYTE(v130[2]);
    }

    else
    {
      v111 = v130[1];
    }

    v112 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v109, v110, v111);
    v113 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v112, ", a typo in config? ", 20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v113, "(NumGroups|VocabSizes|MaxDimensions|EmbedDimensions|LearnRateCoef|ParamStddev|RandomSeed|InitTransformType|GradientNormType|MaxGrad)", 132);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

LABEL_215:
  kaldi::DeletePointers<kaldi::nnet1::UpdatableComponent>((a1 + 256), v6, v7, v8, v9);
  if (*(a1 + 460) != 1)
  {
    goto LABEL_235;
  }

  if (*v117 >= 1)
  {
    v118 = 0;
    v119 = 0;
    v120 = 0;
    LODWORD(v135) = 0;
    v124 = 0;
    kaldi::ExpectToken(a2, 0, "<FeatureTransform>");
    kaldi::ReadToken(a2, 0, &v118, v59, v60);
    v61 = kaldi::nnet1::Component::MarkerToComponentType(&v118);
    kaldi::ExpectToken(a2, 0, "<InputDim>");
    kaldi::ReadBasicType<int>(a2, 0, &v135, v62, v63);
    kaldi::ExpectToken(a2, 0, "<OutputDim>");
    kaldi::ReadBasicType<int>(a2, 0, &v124, v64, v65);
    kaldi::nnet1::Component::NewComponentOfType(v61);
  }

  if ((v116 & 1) == 0)
  {
    goto LABEL_235;
  }

  v67 = *(a1 + 256);
  v66 = *(a1 + 264);
  if (v67 == v66)
  {
    if (!*(*v67 + 12))
    {
      goto LABEL_233;
    }

LABEL_288:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 304);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "dimension mismatch, cannot initialize to concatenation, expected dim is ", 72);
    v114 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v114, " actual dim is ", 15);
    v115 = *(**(a1 + 256) + 12);
    std::ostream::operator<<();
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

  v68 = 0;
  v69 = *(a1 + 256);
  do
  {
    v70 = *v69++;
    v68 += *(v70 + 8);
  }

  while (v69 != v66);
  if (v68 != *(*v67 + 12))
  {
    goto LABEL_288;
  }

  v71 = 0;
  do
  {
    v72 = *v67;
    if (!*v67)
    {
LABEL_285:
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 326);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "cannot initialize to concatenation for this transform", 53);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
    }

    v73 = *v72;
    v74 = **v72;
    if (v75)
    {
      v76 = v75;
      kaldi::Matrix<float>::Matrix(&__p, v75[3], v75[2], 0, 0);
      v77 = v76[3];
      v121 = 0;
      v122 = 0;
      v123 = 0;
      kaldi::Vector<float>::Resize(&v121, v77, 0, v78, v79);
      kaldi::SubMatrix<float>::SubMatrix(&v118, &__p, v71, v76[2], 0, v126);
      kaldi::MatrixBase<float>::AddToDiag(&v118, 1.0);
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v118);
      kaldi::nnet1::AffineTransform::SetLinearity(v76, &__p);
      kaldi::nnet1::AffineTransform::SetBias(v76, &v121);
      v80 = v76[2];
      kaldi::Vector<float>::Destroy(&v121);
    }

    else
    {
      v81 = *v73;
      if (!v82)
      {
        goto LABEL_285;
      }

      v83 = v82;
      kaldi::Matrix<float>::Matrix(&__p, v82[3], v82[2], 0, 0);
      kaldi::SubMatrix<float>::SubMatrix(&v118, &__p, v71, *(v83 + 8), 0, v126);
      kaldi::MatrixBase<float>::AddToDiag(&v118, 1.0);
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v118);
      kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::SetLinearity(v83, &__p);
      v80 = *(v83 + 8);
    }

    kaldi::Matrix<float>::~Matrix(&__p);
    v71 = v80 + v71;
    ++v67;
  }

  while (v67 != v66);
  v10 = (a1 + 200);
  if (v71 != v68)
  {
    kaldi::KaldiAssertFailure_("InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_108.flags + 3, "shift == total_dim", v84);
  }

LABEL_233:
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(&__p, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 332);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "initialized the transform for concatenation", 43);
    kaldi::KaldiLogMessage::~KaldiLogMessage(&__p);
  }

LABEL_235:
  inited = kaldi::nnet1::Component::MarkerToMatrixInitType(&v133);
  *(a1 + 448) = kaldi::nnet1::Component::MarkerToGradientNormType(&v132);
  if (!inited)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 339);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "it doesn't make sense to initialize the embedding table as an identify matrix", 77);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

  v122 = 0;
  v123 = 0;
  v121 = &v122;
  if (*v117 < 1)
  {
    v92 = 0;
  }

  else
  {
    v87 = 0;
    do
    {
      v88 = *(*(a1 + 176) + 4 * v87);
      LODWORD(v118) = v88;
      if (v88 < 0 || v88 >= *v10)
      {
        kaldi::KaldiAssertFailure_("InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_158.sectname[1], "table_idx >= 0 && table_idx < num_tables_", v86);
      }

      v89 = *(*(a1 + 104) + 4 * v87);
      v90 = *(*(a1 + 152) + 4 * v87);
      __p = &v118;
      v91 = std::__tree<std::__value_type<int,std::pair<int,int>>,std::__map_value_compare<int,std::__value_type<int,std::pair<int,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::pair<int,int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v121, &v118);
      *(v91 + 8) = v89;
      *(v91 + 9) = v90;
      ++v87;
    }

    while (v87 < *v117);
    v92 = v123;
  }

  if (v92 != *v10)
  {
    kaldi::KaldiAssertFailure_("InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_158.sectname[4], "table_dims.size() == num_tables_", v86);
  }

  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 208), v92);
  if (v131 >= 1)
  {
    kaldi::UniformRandomNumber::SetRandomSeeds(a3, v131);
  }

  kaldi::GaussRandomNumber::GaussRandomNumber(&__p, a3);
  v124 = 0;
  if (*v10 >= 1)
  {
    v135 = &v124;
    v93 = std::__tree<std::__value_type<int,std::pair<int,int>>,std::__map_value_compare<int,std::__value_type<int,std::pair<int,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::pair<int,int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v121, &v124);
    v94 = *(v93 + 8);
    v95 = *(v93 + 9);
    kaldi::Matrix<float>::Matrix(&v118, v94, v95, 0, 0);
    if (v94 < 1)
    {
LABEL_266:
      kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::ConstructMatrixObject<kaldi::Matrix<float>>();
    }

    v99 = 0;
    while (v95 < 1)
    {
LABEL_265:
      if (++v99 == v94)
      {
        goto LABEL_266;
      }
    }

    v100 = 0;
    while (2)
    {
      if (inited == 2)
      {
        v106 = *&v134;
        kaldi::GaussRandomNumber::Rand(&__p, 0, v96, v97, v98);
        if (HIDWORD(v119) <= v99 || v100 >= v119)
        {
LABEL_276:
          kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_B8.segname[5], "static_cast<UnsignedMatrixIndexT>(r) < static_cast<UnsignedMatrixIndexT>(num_rows_) && static_cast<UnsignedMatrixIndexT>(c) < static_cast<UnsignedMatrixIndexT>(num_cols_)", v98);
        }

        v104 = v118 + 4 * (v99 * v120);
        v105 = v106 * v107;
LABEL_263:
        *&v104[4 * v100] = v105;
      }

      else if (inited == 1)
      {
        v101 = *&v134;
        v102 = kaldi::UniformRandomNumber::RandUniform(a3, 0, v96, v97, v98);
        if (HIDWORD(v119) <= v99 || v100 >= v119)
        {
          goto LABEL_276;
        }

        v104 = v118 + 4 * (v99 * v120);
        v105 = (v102 + -0.5) * (v101 + v101);
        goto LABEL_263;
      }

      if (v95 == ++v100)
      {
        goto LABEL_265;
      }

      continue;
    }
  }

  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::Check(a1);
  if (v128)
  {
    v129 = v128;
    operator delete(v128);
  }

  v118 = &v127;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v118);
  std::__tree<std::__value_type<float,kaldi::MelBanks *>,std::__map_value_compare<float,std::__value_type<float,kaldi::MelBanks *>,std::less<float>,true>,std::allocator<std::__value_type<float,kaldi::MelBanks *>>>::destroy(&v121, v122);
  if (SHIBYTE(v130[2]) < 0)
  {
    operator delete(v130[0]);
  }

  if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v132.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v133.__r_.__value_.__l.__data_);
  }
}

void sub_183394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, void *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    a26 = __p;
    operator delete(__p);
  }

  a11 = &a22;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a11);
  std::__tree<std::__value_type<float,kaldi::MelBanks *>,std::__map_value_compare<float,std::__value_type<float,kaldi::MelBanks *>,std::less<float>,true>,std::allocator<std::__value_type<float,kaldi::MelBanks *>>>::destroy(&a16, a17);
  if (*(v26 - 177) < 0)
  {
    operator delete(*(v26 - 200));
  }

  if (*(v26 - 145) < 0)
  {
    operator delete(*(v26 - 168));
  }

  if (*(v26 - 121) < 0)
  {
    operator delete(*(v26 - 144));
  }

  _Unwind_Resume(a1);
}

void sub_1833B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    JUMPOUT(0x1833C4);
  }

  JUMPOUT(0x183414);
}

void sub_1833D8(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  JUMPOUT(0x1833E4);
}

unsigned int *kaldi::nnet1::AffineTransform::SetLinearity(kaldi::nnet1::AffineTransform *a1, kaldi::ContextDependency *this)
{
  v4 = kaldi::ContextDependency::CentralPosition(this);
  if (v4 != *(kaldi::nnet1::AffineTransform::Linearity(a1) + 20))
  {
    kaldi::KaldiAssertFailure_("SetLinearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", &stru_248.addr + 2, "linearity.NumRows() == Linearity().NumRows()", v5);
  }

  v6 = kaldi::ContextDependency::ContextWidth(this);
  if (v6 != *(kaldi::nnet1::AffineTransform::Linearity(a1) + 16))
  {
    kaldi::KaldiAssertFailure_("SetLinearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", &stru_248.addr + 3, "linearity.NumCols() == Linearity().NumCols()", v7);
  }

  v8 = kaldi::nnet1::AffineTransform::Linearity(a1);

  return kaldi::CuMatrixBase<float>::CopyFromMat(v8, this, 111, v9, v10);
}

_DWORD *kaldi::nnet1::AffineTransform::SetBias(kaldi::nnet1::AffineTransform *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 != *(kaldi::nnet1::AffineTransform::Bias(a1) + 16))
  {
    kaldi::KaldiAssertFailure_("SetBias", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", &stru_248.segname[7], "bias.Dim() == Bias().Dim()", v5);
  }

  v6 = kaldi::nnet1::AffineTransform::Bias(a1);

  return kaldi::CuVectorBase<float>::CopyFromVec<float>(v6, a2, v7, v8, v9);
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::Check(uint64_t result)
{
  if ((*(result + 544) & 1) == 0)
  {
    v1 = *(result + 96);
    if (v1 <= 0)
    {
      v86 = result;
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v104, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 503);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, "must have at least one group, you used ", 39);
      v45 = *(v86 + 96);
      std::ostream::operator<<();
    }

    else
    {
      v2 = *(result + 200);
      if (v2 <= 0)
      {
        v87 = result;
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v104, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 506);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, "must have at least one embedding table, you used ", 49);
        v46 = *(v87 + 200);
        std::ostream::operator<<();
      }

      else if (v1 < v2)
      {
        v88 = result;
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v104, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 509);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, "there are only ", 15);
        v47 = *(v88 + 96);
        v48 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, " groups, but you set ", 21);
        v49 = *(v88 + 200);
        v50 = std::ostream::operator<<();
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v50, " embedding tables");
      }

      else
      {
        v3 = *(result + 104);
        v4 = *(result + 112) - v3;
        v5 = v4 >> 2;
        if (v4 >> 2 == v1)
        {
          v6 = *(result + 128);
          if (*(result + 136) - v6 == v4)
          {
            v7 = *(result + 152);
            if (*(result + 160) - v7 == v4)
            {
              v8 = *(result + 176);
              if (*(result + 184) - v8 == v4)
              {
                v9 = *(result + 208);
                if (v2 == (*(result + 216) - v9) >> 3)
                {
                  v10 = *(result + 460);
                  if (v10 == 1 && v5 != (*(result + 264) - *(result + 256)) >> 3)
                  {
                    v95 = result;
                    kaldi::KaldiErrorMessage::KaldiErrorMessage(v104, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 528);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, "there are ", 10);
                    v69 = *(v95 + 96);
                    v70 = std::ostream::operator<<();
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, " groups, but the number of feature transforms is ", 49);
                    v71 = *(v95 + 264) - *(v95 + 256);
                    std::ostream::operator<<();
                  }

                  else
                  {
                    v11 = 0;
                    v12 = 0;
                    v13 = 0;
                    do
                    {
                      v14 = *(v8 + 4 * v11);
                      if ((v14 & 0x80000000) != 0 || v14 >= v2)
                      {
                        v77 = *(v8 + 4 * v11);
                        v83 = result;
                        kaldi::KaldiErrorMessage::KaldiErrorMessage(v104, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 537);
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, "the ", 4);
                        v34 = std::ostream::operator<<();
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "-th group has assigned table index ", 35);
                        v35 = std::ostream::operator<<();
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, " , the number of tables is ", 27);
                        v36 = *(v83 + 200);
                        std::ostream::operator<<();
                        goto LABEL_32;
                      }

                      v15 = *(v3 + 4 * v11);
                      if (v15 <= 0)
                      {
                        v79 = result;
                        v98 = v11;
                        kaldi::KaldiErrorMessage::KaldiErrorMessage(v104, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 542);
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, "the ", 4);
                        v22 = std::ostream::operator<<();
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "-th group has invalid vocab size ", 33);
                        v23 = *(*(v79 + 104) + 4 * v98);
                        std::ostream::operator<<();
                        goto LABEL_32;
                      }

                      v16 = *(v6 + 4 * v11);
                      if (v16 <= 0)
                      {
                        v80 = result;
                        v99 = v11;
                        kaldi::KaldiErrorMessage::KaldiErrorMessage(v104, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 545);
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, "the ", 4);
                        v24 = std::ostream::operator<<();
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "-th group has invalid max item value ", 37);
                        v25 = *(*(v80 + 128) + 4 * v99);
                        std::ostream::operator<<();
                        goto LABEL_32;
                      }

                      v17 = *(v7 + 4 * v11);
                      if (v17 <= 0)
                      {
                        v78 = result;
                        v97 = v11;
                        kaldi::KaldiErrorMessage::KaldiErrorMessage(v104, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 548);
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, "the ", 4);
                        v20 = std::ostream::operator<<();
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "-th group has invalid embedding dimension value ", 48);
                        v21 = *(*(v78 + 152) + 4 * v97);
                        std::ostream::operator<<();
                        goto LABEL_32;
                      }

                      v18 = *(v9 + 8 * v14);
                      if (*(v18 + 20) != v15)
                      {
                        v76 = *(v8 + 4 * v11);
                        v82 = result;
                        v101 = v11;
                        kaldi::KaldiErrorMessage::KaldiErrorMessage(v104, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 553);
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, "the ", 4);
                        v30 = std::ostream::operator<<();
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "-th group has mismatched embedding table and vocab size ", 56);
                        v31 = *(*(*(v82 + 208) + 8 * v76) + 20);
                        v32 = std::ostream::operator<<();
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, " vs ", 4);
                        v33 = *(*(v82 + 104) + 4 * v101);
                        std::ostream::operator<<();
                        goto LABEL_32;
                      }

                      if (*(v18 + 16) != v17)
                      {
                        v75 = *(v8 + 4 * v11);
                        v81 = result;
                        v100 = v11;
                        kaldi::KaldiErrorMessage::KaldiErrorMessage(v104, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 557);
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, "the ", 4);
                        v26 = std::ostream::operator<<();
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "-th group has mismatched embedding table and embedding dim ", 59);
                        v27 = *(*(*(v81 + 208) + 8 * v75) + 16);
                        v28 = std::ostream::operator<<();
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " vs ", 4);
                        v29 = *(*(v81 + 152) + 4 * v100);
                        std::ostream::operator<<();
                        goto LABEL_32;
                      }

                      if (*(result + 460))
                      {
                        v19 = *(*(result + 256) + 8 * v11);
                        if (v17 != *(v19 + 8))
                        {
                          v85 = result;
                          v103 = v11;
                          kaldi::KaldiErrorMessage::KaldiErrorMessage(v104, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 561);
                          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, "the ", 4);
                          v41 = std::ostream::operator<<();
                          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "-th group has mismatched embedding table and feature transform ", 63);
                          v42 = *(*(v85 + 152) + 4 * v103);
                          v43 = std::ostream::operator<<();
                          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, " vs ", 4);
                          v44 = *(*(*(v85 + 256) + 8 * v103) + 8);
                          std::ostream::operator<<();
                          goto LABEL_32;
                        }

                        if (*(result + 12) != *(v19 + 12))
                        {
                          v84 = result;
                          v102 = v11;
                          kaldi::KaldiErrorMessage::KaldiErrorMessage(v104, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 565);
                          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, "the ", 4);
                          v37 = std::ostream::operator<<();
                          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "-th group has feature transform output dim ", 43);
                          v38 = *(*(*(v84 + 256) + 8 * v102) + 12);
                          v39 = std::ostream::operator<<();
                          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, " does not match component output dim ", 37);
                          v40 = *(v84 + 12);
                          std::ostream::operator<<();
                          goto LABEL_32;
                        }
                      }

                      v12 += v17;
                      v13 += v16;
                      ++v11;
                    }

                    while (v1 != v11);
                    if (*(result + 8) == v13)
                    {
                      if ((v10 & 1) != 0 || v12 == *(result + 12))
                      {
                        *(result + 544) = 1;
                        return result;
                      }

                      v96 = result;
                      kaldi::KaldiErrorMessage::KaldiErrorMessage(v104, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 575);
                      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, "Total embedding size of ", 24);
                      v72 = std::ostream::operator<<();
                      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, " doesn't match the component output size of ", 44);
                      v73 = *(v96 + 12);
                      v74 = std::ostream::operator<<();
                      std::operator<<[abi:ne200100]<std::char_traits<char>>(v74, " when transforms are not used");
                    }

                    else
                    {
                      v94 = result;
                      kaldi::KaldiErrorMessage::KaldiErrorMessage(v104, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 571);
                      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, "input dim of the component is ", 30);
                      v67 = *(v94 + 8);
                      v68 = std::ostream::operator<<();
                      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, " , while the input dim defined in max items is ", 47);
                      std::ostream::operator<<();
                    }
                  }
                }

                else
                {
                  v93 = result;
                  kaldi::KaldiErrorMessage::KaldiErrorMessage(v104, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 524);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, "the actual number of embedding tables is ", 41);
                  v64 = *(v93 + 216) - *(v93 + 208);
                  v65 = std::ostream::operator<<();
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, " and different than ", 20);
                  v66 = *(v93 + 200);
                  std::ostream::operator<<();
                }
              }

              else
              {
                v92 = result;
                kaldi::KaldiErrorMessage::KaldiErrorMessage(v104, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 521);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, "there are ", 10);
                v60 = *(v92 + 96);
                v61 = std::ostream::operator<<();
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, " groups, but ", 13);
                v62 = *(v92 + 184) - *(v92 + 176);
                v63 = std::ostream::operator<<();
                std::operator<<[abi:ne200100]<std::char_traits<char>>(v63, " groups have assigned tables");
              }
            }

            else
            {
              v91 = result;
              kaldi::KaldiErrorMessage::KaldiErrorMessage(v104, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 518);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, "there are ", 10);
              v57 = *(v91 + 96);
              v58 = std::ostream::operator<<();
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, " groups, but the embedding dim list size is ", 44);
              v59 = *(v91 + 160) - *(v91 + 152);
              std::ostream::operator<<();
            }
          }

          else
          {
            v90 = result;
            kaldi::KaldiErrorMessage::KaldiErrorMessage(v104, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 515);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, "there are ", 10);
            v54 = *(v90 + 96);
            v55 = std::ostream::operator<<();
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, " groups, but the max item list size is ", 39);
            v56 = *(v90 + 136) - *(v90 + 128);
            std::ostream::operator<<();
          }
        }

        else
        {
          v89 = result;
          kaldi::KaldiErrorMessage::KaldiErrorMessage(v104, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 512);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, "there are ", 10);
          v51 = *(v89 + 96);
          v52 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, " groups, but the number vocab list size is ", 43);
          v53 = *(v89 + 112) - *(v89 + 104);
          std::ostream::operator<<();
        }
      }
    }

LABEL_32:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v104);
  }

  return result;
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  v62 = 0uLL;
  v63 = 0;
  *(a1 + 460) = 1;
  v57 = (a1 + 456);
  v6 = (a1 + 452);
  v7 = (a1 + 200);
  v8 = (a1 + 96);
  while (kaldi::Peek(a2, a3) == 60)
  {
    kaldi::ReadToken(a2, a3, &v62, v9, v10);
    if (SHIBYTE(v63) < 0)
    {
      v14 = *(&v62 + 1);
      if (*(&v62 + 1) == 11)
      {
        v31 = *v62 == 0x756F72476D754E3CLL && *(v62 + 3) == 0x3E7370756F72476DLL;
        v32 = v8;
        if (v31)
        {
          goto LABEL_108;
        }

        v33 = *v62 == 0x6C6261546D754E3CLL && *(v62 + 3) == 0x3E73656C6261546DLL;
        v32 = v7;
        if (v33)
        {
          goto LABEL_108;
        }
      }

      if (*(&v62 + 1) != 12)
      {
        goto LABEL_20;
      }

      if (*v62 != 0x69536261636F563CLL || *(v62 + 8) != 1047750010)
      {
        v14 = *(&v62 + 1);
LABEL_20:
        if (v14 == 10 && *v62 == 0x6D65744978614D3CLL && *(v62 + 8) == 15987)
        {
          goto LABEL_81;
        }

        if (*(&v62 + 1) == 15)
        {
          if (*v62 == 0x656E67697373413CLL && *(v62 + 7) == 0x3E656C6261546465)
          {
            goto LABEL_115;
          }
        }

        else if (*(&v62 + 1) == 17)
        {
          v17 = *v62 == 0x69446465626D453CLL && *(v62 + 8) == 0x736E6F69736E656DLL;
          if (v17 && *(v62 + 16) == 62)
          {
            goto LABEL_135;
          }
        }

        if (*(&v62 + 1) == 9)
        {
          v22 = *v62 == 0x6461724778614D3CLL && *(v62 + 8) == 62;
          v23 = v6;
          if (v22)
          {
            goto LABEL_114;
          }
        }

        else if (*(&v62 + 1) == 18)
        {
          v20 = *v62 == 0x6E6569646172473CLL && *(v62 + 8) == 0x7079546D726F4E74;
          if (v20 && *(v62 + 16) == 15973)
          {
            goto LABEL_126;
          }
        }

        if (*(&v62 + 1) != 14)
        {
          if (*(&v62 + 1) != 15 || (*v62 == 0x61526E7261654C3CLL ? (v24 = *(v62 + 7) == 0x3E66656F43657461) : (v24 = 0), v23 = v57, !v24))
          {
LABEL_149:
            kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 408);
            v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Unknown token ", 14);
            if (v63 >= 0)
            {
              v54 = &v62;
            }

            else
            {
              v54 = v62;
            }

            if (v63 >= 0)
            {
              v55 = HIBYTE(v63);
            }

            else
            {
              v55 = *(&v62 + 1);
            }

            v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, v54, v55);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, ", a typo in config? (NumGroups|VocabSizes|MaxDimensions|EmbedDimensions|LearnRateCoef)", 86);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
          }

          goto LABEL_114;
        }

        v25 = v62;
        goto LABEL_102;
      }

LABEL_80:
      __p = 0;
      v60 = 0;
      v61 = 0;
      kaldi::ReadToken(a2, a3, &__p, v11, v12);
      kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 104), v29);
LABEL_136:
      if (SHIBYTE(v61) < 0)
      {
        operator delete(__p);
      }
    }

    else if (HIBYTE(v63) > 0xDu)
    {
      if (HIBYTE(v63) > 0x10u)
      {
        if (HIBYTE(v63) == 17)
        {
          if (v62 != 0x69446465626D453CLL || *(&v62 + 1) != 0x736E6F69736E656DLL || v63 != 62)
          {
            goto LABEL_149;
          }

LABEL_135:
          __p = 0;
          v60 = 0;
          v61 = 0;
          kaldi::ReadToken(a2, a3, &__p, v11, v12);
          kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 152), v45);
          goto LABEL_136;
        }

        if (HIBYTE(v63) != 18)
        {
          goto LABEL_149;
        }

        v41 = v62 == 0x6E6569646172473CLL && *(&v62 + 1) == 0x7079546D726F4E74;
        if (!v41 || v63 != 15973)
        {
          goto LABEL_149;
        }

LABEL_126:
        __p = 0;
        v60 = 0;
        v61 = 0;
        kaldi::ReadToken(a2, a3, &__p, v11, v12);
        *(a1 + 448) = kaldi::nnet1::Component::MarkerToGradientNormType(&__p);
        goto LABEL_136;
      }

      if (HIBYTE(v63) != 14)
      {
        if (HIBYTE(v63) != 15)
        {
          goto LABEL_149;
        }

        if (v62 == 0x656E67697373413CLL && *(&v62 + 7) == 0x3E656C6261546465)
        {
LABEL_115:
          __p = 0;
          v60 = 0;
          v61 = 0;
          kaldi::ReadToken(a2, a3, &__p, v11, v12);
          kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 176), v40);
          goto LABEL_136;
        }

        v27 = v62 == 0x61526E7261654C3CLL && *(&v62 + 7) == 0x3E66656F43657461;
        v23 = v57;
        if (!v27)
        {
          goto LABEL_149;
        }

        goto LABEL_114;
      }

      v25 = &v62;
LABEL_102:
      v36 = *v25;
      v37 = *(v25 + 6);
      if (v36 != 0x6E6172546573553CLL || v37 != 0x3E6D726F66736E61)
      {
        goto LABEL_149;
      }

      kaldi::ReadBasicType<BOOL>(a2, a3, (a1 + 460), v11, v12);
    }

    else if (HIBYTE(v63) > 0xAu)
    {
      if (HIBYTE(v63) != 11)
      {
        if (HIBYTE(v63) != 12)
        {
          goto LABEL_149;
        }

        if (v62 != 0x69536261636F563CLL || DWORD2(v62) != 1047750010)
        {
          goto LABEL_149;
        }

        goto LABEL_80;
      }

      v34 = v62 == 0x756F72476D754E3CLL && *(&v62 + 3) == 0x3E7370756F72476DLL;
      v32 = v8;
      if (!v34)
      {
        v35 = v62 == 0x6C6261546D754E3CLL && *(&v62 + 3) == 0x3E73656C6261546DLL;
        v32 = v7;
        if (!v35)
        {
          goto LABEL_149;
        }
      }

LABEL_108:
      kaldi::ReadBasicType<int>(a2, a3, v32, v11, v12);
    }

    else
    {
      if (HIBYTE(v63) != 9)
      {
        if (HIBYTE(v63) != 10)
        {
          goto LABEL_149;
        }

        if (v62 != 0x6D65744978614D3CLL || WORD4(v62) != 15987)
        {
          goto LABEL_149;
        }

LABEL_81:
        __p = 0;
        v60 = 0;
        v61 = 0;
        kaldi::ReadToken(a2, a3, &__p, v11, v12);
        kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 128), v30);
        goto LABEL_136;
      }

      v39 = v62 == 0x6461724778614D3CLL && BYTE8(v62) == 62;
      v23 = v6;
      if (!v39)
      {
        goto LABEL_149;
      }

LABEL_114:
      kaldi::ReadBasicType<float>(a2, a3, v23, v11, v12);
    }
  }

  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 208), *(a1 + 200));
  if (*v7 >= 1)
  {
    operator new();
  }

  kaldi::ExpectToken(a2, a3, "</Component>");
  kaldi::DeletePointers<kaldi::nnet1::UpdatableComponent>((a1 + 256), v46, v47, v48, v49);
  if (*(a1 + 460) == 1 && *v8 >= 1)
  {
    v50 = 0;
    do
    {
      kaldi::ExpectToken(a2, a3, "<FeatureTransform>");
      v51 = kaldi::nnet1::Component::Read(a2, a3);
      if (!v51)
      {
        v58 = 0;
LABEL_157:
        kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 425);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "failed to read feature transform", 32);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
      }

      v52 = **v51;
      if (!v58)
      {
        goto LABEL_157;
      }

      kaldi::ExpectToken(a2, a3, "</Component>");
      std::vector<kaldi::EventMap *>::push_back[abi:ne200100](a1 + 256, &v58);
      ++v50;
    }

    while (v50 < *v8);
  }

  *(a1 + 16) = 0;
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::Check(a1);
  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62);
  }
}

void sub_184990(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::WriteConfig(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  v41[0] = 0;
  v41[1] = 0;
  v42 = 0;
  kaldi::WriteToken(a2, a3, "<NumGroups>", a4, a5);
  v8 = *(a1 + 96);
  kaldi::WriteBasicType<int>(a2, a3);
  kaldi::WriteToken(a2, a3, "<NumTables>", v9, v10);
  v11 = *(a1 + 200);
  kaldi::WriteBasicType<int>(a2, a3);
  kaldi::WriteToken(a2, a3, "<VocabSizes>", v12, v13);
  kaldi::JoinVectorToString<int>((a1 + 104), ",", v41);
  kaldi::WriteToken(a2, a3, v41, v14, v15);
  kaldi::WriteToken(a2, a3, "<MaxItems>", v16, v17);
  kaldi::JoinVectorToString<int>((a1 + 128), ",", v41);
  kaldi::WriteToken(a2, a3, v41, v18, v19);
  kaldi::WriteToken(a2, a3, "<EmbedDimensions>", v20, v21);
  kaldi::JoinVectorToString<int>((a1 + 152), ",", v41);
  kaldi::WriteToken(a2, a3, v41, v22, v23);
  kaldi::WriteToken(a2, a3, "<AssignedTable>", v24, v25);
  kaldi::JoinVectorToString<int>((a1 + 176), ",", v41);
  kaldi::WriteToken(a2, a3, v41, v26, v27);
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>", v28, v29);
  v30 = *(a1 + 456);
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>", v31, v32);
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 448), &__p);
  kaldi::WriteToken(a2, a3, &__p, v33, v34);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>", v35, v36);
  v37 = *(a1 + 452);
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<UseTransform>", v38, v39);
  kaldi::WriteBasicType<BOOL>(a2, a3, *(a1 + 460));
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41[0]);
  }
}

void sub_184BD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::JoinVectorToString<int>(uint64_t *a1, const char *a2, uint64_t a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
  v6 = *a1;
  if (a1[1] != *a1)
  {
    v7 = 0;
    do
    {
      v8 = *(v6 + 4 * v7);
      std::ostream::operator<<();
      ++v7;
      v6 = *a1;
      v9 = a1[1] - *a1;
      if (v7 < v9 >> 2)
      {
        v10 = strlen(a2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, a2, v10);
        v6 = *a1;
        v9 = a1[1] - *a1;
      }
    }

    while (v7 < v9 >> 2);
  }

  std::stringbuf::str();
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v13;
  *(a3 + 16) = v14;
  v16 = v11;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_184E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::WriteData(uint64_t a1, void *a2, const char *a3, uint64_t a4)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::Check(a1);
  (*(*a1 + 168))(a1, a2, a3);
  v10 = *(a1 + 208);
  v11 = *(a1 + 216);
  while (v10 != v11)
  {
    v12 = *v10++;
    kaldi::CuMatrixBase<float>::Write(v12, a2, a3, a4);
  }

  result = kaldi::WriteToken(a2, a3, "</Component>", v8, v9);
  if (*(a1 + 460))
  {
    v16 = *(a1 + 256);
    for (i = *(a1 + 264); v16 != i; result = kaldi::WriteToken(a2, a3, "</Component>", v19, v20))
    {
      kaldi::WriteToken(a2, a3, "<FeatureTransform>", v14, v15);
      v18 = *v16++;
      kaldi::nnet1::Component::Write(v18, a2, a3, a4);
    }
  }

  return result;
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::NumParams(void *a1)
{
  v1 = a1[26];
  v2 = a1[27];
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    LODWORD(v3) = 0;
    do
    {
      v4 = *v1++;
      v3 = (v3 + *(v4 + 16) * *(v4 + 20));
    }

    while (v1 != v2);
  }

  v5 = a1[32];
  v6 = a1[33];
  while (v5 != v6)
  {
    v7 = *v5++;
    v3 = (*(*v7 + 176))(v7) + v3;
  }

  return v3;
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::GetParams(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 1, v5, v6);
  v10 = a1[26];
  v11 = a1[27];
  if (v10 == v11)
  {
    v15 = 0;
  }

  else
  {
    v12 = 0;
    do
    {
      v13 = *v10;
      v14 = *(*v10 + 16) * *(*v10 + 20);
      v25 = 0;
      v26 = 0;
      v15 = v14 + v12;
      if ((v14 + v12) > *(a2 + 8))
      {
        kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v9);
      }

      v24 = *a2 + 4 * v12;
      LODWORD(v25) = v14;
      kaldi::VectorBase<float>::CopyRowsFromMat(&v24, v13, v7, v8, v9);
      v10 += 8;
      v12 = v15;
    }

    while (v10 != v11);
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  v17 = a1[32];
  for (i = a1[33]; v17 != i; ++v17)
  {
    (*(**v17 + 184))(*v17, &v24);
    v22 = 0;
    v23 = 0;
    if ((v25 + v15) > *(a2 + 8))
    {
      kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v20);
    }

    v21 = *a2 + 4 * v15;
    LODWORD(v22) = v25;
    kaldi::VectorBase<float>::CopyFromVec(&v21, &v24, v18, v19, v20);
    v15 += v25;
  }

  if (v15 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("GetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_248.align + 2, "shift == wei_copy->Dim()", v9);
  }

  kaldi::Vector<float>::Destroy(&v24);
}

void sub_1851B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

void **kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::SetParams(void *a1, uint64_t a2)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::Check(a1);
  v4 = *(a2 + 8);
  result = (*(*a1 + 176))(a1);
  if (v4 != result)
  {
    kaldi::KaldiAssertFailure_("SetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_248.nreloc, "wei_src.Dim() == NumParams()", v6);
  }

  v7 = a1[26];
  v8 = a1[27];
  if (v7 != v8)
  {
    v9 = 0;
    while (1)
    {
      v10 = *v7;
      v11 = *(*v7 + 16) * *(*v7 + 20);
      v19 = 0;
      v20 = 0;
      v12 = v11 + v9;
      if ((v11 + v9) > *(a2 + 8))
      {
        break;
      }

      v18 = (*a2 + 4 * v9);
      LODWORD(v19) = v11;
      result = kaldi::CuMatrixBase<float>::CopyRowsFromVec(v10, &v18);
      ++v7;
      v9 = v12;
      if (v7 == v8)
      {
        goto LABEL_8;
      }
    }

LABEL_15:
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v6);
  }

  v12 = 0;
LABEL_8:
  v14 = a1[32];
  v13 = a1[33];
  if (v14 != v13)
  {
    while (1)
    {
      v15 = (*(**v14 + 176))();
      v16 = *v14;
      v19 = 0;
      v20 = 0;
      v17 = v15 + v12;
      if ((v15 + v12) > *(a2 + 8))
      {
        goto LABEL_15;
      }

      v18 = (*a2 + 4 * v12);
      LODWORD(v19) = v15;
      result = (*(*v16 + 192))(v16, &v18);
      ++v14;
      v12 = v17;
      if (v14 == v13)
      {
        goto LABEL_13;
      }
    }
  }

  v17 = v12;
LABEL_13:
  if (v17 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("SetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_248.reserved2, "shift == wei_src.Dim()", v6);
  }

  return result;
}

float kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::SumParams(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = a1[26];
  v7 = a1[27];
  v8 = 0.0;
  while (v6 != v7)
  {
    v9 = *v6++;
    v8 = v8 + kaldi::CuMatrixBase<float>::Sum(v9, a2, a3, a4, a5);
  }

  v11 = a1[32];
  v10 = a1[33];
  while (v11 != v10)
  {
    v12 = *v11++;
    v8 = v8 + (*(*v12 + 208))(v12);
  }

  return v8;
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::Info(void *a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v20);
  (*(*a1 + 168))(a1, &v20, 0);
  v2 = a1[26];
  for (i = a1[27]; v2 != i; ++v2)
  {
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "\n## Embedding Table: ", 21);
    kaldi::nnet1::MomentStatistics<float>(*v2);
    if ((v19 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v19 & 0x80u) == 0)
    {
      v6 = v19;
    }

    else
    {
      v6 = v18;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, p_p, v6);
    if (v19 < 0)
    {
      operator delete(__p);
    }
  }

  v7 = a1[32];
  for (j = a1[33]; v7 != j; v7 += 8)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "\n## Feature Transform: input-dim ", 33);
    v9 = *(*v7 + 8);
    v10 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", output-dim ", 13);
    v11 = *(*v7 + 12);
    v12 = std::ostream::operator<<();
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "\n", 1);
    (*(**v7 + 64))(&__p);
    if ((v19 & 0x80u) == 0)
    {
      v14 = &__p;
    }

    else
    {
      v14 = __p;
    }

    if ((v19 & 0x80u) == 0)
    {
      v15 = v19;
    }

    else
    {
      v15 = v18;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v14, v15);
    if (v19 < 0)
    {
      operator delete(__p);
    }
  }

  std::stringbuf::str();
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  std::locale::~locale(v22);
  std::ostream::~ostream();
  return std::ios::~ios();
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::InfoGradient(uint64_t a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "No intermediate gradients for embedding tables, here is the gradient info for the transforms: ", 94);
  v2 = *(a1 + 256);
  for (i = *(a1 + 264); v2 != i; v2 += 8)
  {
    (*(**v2 + 72))(__p);
    if ((v9 & 0x80u) == 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    if ((v9 & 0x80u) == 0)
    {
      v5 = v9;
    }

    else
    {
      v5 = __p[1];
    }

    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v4, v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "\n", 1);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  std::stringbuf::str();
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  std::locale::~locale(v12);
  std::ostream::~ostream();
  return std::ios::~ios();
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::SetTrainOptions(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  *(result + 71) = *(a2 + 23);
  *(result + 56) = v2;
  v3 = *(result + 256);
  for (i = *(result + 264); v3 != i; result = (*(*v6 + 264))(v6, a2))
  {
    v6 = *v3++;
  }

  return result;
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::Check(a1);
  if (*(a2 + 16) != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_298.segname[4], "in.NumCols() == input_dim_", v8);
  }

  if (a4)
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_298.segname[6], "batch_idx == 0", v8);
  }

  v9 = *(a3 + 32);
  v32 = *(a2 + 20);
  kaldi::CuMatrixBase<float>::SetZero(a3);
  if (*(a1 + 460))
  {
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 280), *(a1 + 96));
    LODWORD(v11) = *(a1 + 96);
    if (v11 < 1)
    {
      LODWORD(v14) = 0;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = *(a1 + 280) + v12;
        *(v15 + 32) = v9;
        kaldi::CuMatrix<float>::Resize(v15, v32, *(*(a1 + 152) + 4 * v13), 0, 0);
        v16 = *(a1 + 280);
        v17 = *(*(a1 + 208) + 8 * *(*(a1 + 176) + 4 * v13));
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v36, a2, 0, *(a2 + 20), v14, *(*(a1 + 128) + 4 * v13));
        kaldi::CuMatrixBase<float>::SummarizeVec(v16 + v12, v17, &v36, v18, v19);
        v36 = off_276F40;
        v37 = 0u;
        v38 = 0u;
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v36);
        v14 = (*(*(a1 + 128) + 4 * v13++) + v14);
        v11 = *(a1 + 96);
        v12 += 48;
      }

      while (v13 < v11);
    }

    if (v14 != *(a1 + 8))
    {
      kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_298.addr + 4, "shift == input_dim_", v10);
    }

    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 304), v11);
    if (*(a1 + 96) >= 1)
    {
      v27 = 0;
      v28 = 0;
      do
      {
        v29 = *(a1 + 304) + v27;
        *(v29 + 32) = v9;
        kaldi::nnet1::Component::Propagate(*(*(a1 + 256) + 8 * v28), *(a1 + 280) + v27, v29, 0);
        kaldi::CuMatrixBase<float>::AddMat(a3, *(a1 + 304) + v27, 111, v30, v31, 1.0, 1.0);
        ++v28;
        v27 += 48;
      }

      while (v28 < *(a1 + 96));
    }
  }

  else if (*(a1 + 96) >= 1)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = *(a1 + 152);
    do
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v36, a3, 0, *(a3 + 20), v21, *(v23 + 4 * v20));
      v24 = *(*(a1 + 208) + 8 * *(*(a1 + 176) + 4 * v20));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v33, a2, 0, *(a2 + 20), v22, *(*(a1 + 128) + 4 * v20));
      kaldi::CuMatrixBase<float>::SummarizeVec(&v36, v24, &v33, v25, v26);
      v33 = off_276F40;
      v34 = 0u;
      v35 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v33);
      v36 = off_276F40;
      v37 = 0u;
      v38 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v36);
      v23 = *(a1 + 152);
      v21 = (*(v23 + 4 * v20) + v21);
      v22 = (*(*(a1 + 128) + 4 * v20++) + v22);
    }

    while (v20 < *(a1 + 96));
  }
}

void sub_185D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void (**a16)())
{
  a16 = off_276F40;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a16);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::SetGradientNormalization(uint64_t a1, uint64_t a2, float a3)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::Check(a1);
  v6 = *(a1 + 256);
  v7 = *(a1 + 264);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 240))(v8, a2, a3);
  }

  if (a2 == 3)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v9, "SetGradientNormalization", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 735);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "RMSPROP is not implemented in word multi embedding yet", 54);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v9);
    }
  }

  else
  {
    *(a1 + 452) = a3;
    *(a1 + 448) = a2;
  }
}

float kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::GetNormalizedLearningRate(uint64_t a1)
{
  if ((*(a1 + 84) & 1) == 0)
  {
    return *(a1 + 56);
  }

  v1 = *(a1 + 464);
  if (v1 < 1)
  {
    return NAN;
  }

  else
  {
    return *(a1 + 56) / v1;
  }
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::GetGradient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::Check(a1);
  v8 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a4, v8, 1, v9, v10);
  v11 = (*(*a1 + 16))(a1);
  v37 = 0u;
  v36 = 0u;
  v35 = off_276F88;
  v38 = 0;
  kaldi::nnet1::Component::Propagate(v11, a2, &v35, 0);
  (*(*v11 + 232))(v11, a2, a3, 0, 0);
  v15 = *(v11 + 232);
  v16 = *(v11 + 240);
  if (v15 == v16)
  {
    v19 = 0;
  }

  else
  {
    v17 = 0;
    do
    {
      v18 = (*v15)[4] * (*v15)[5];
      v33 = 0;
      v34 = 0;
      v19 = v18 + v17;
      if ((v18 + v17) > *(a4 + 8))
      {
        kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v14);
      }

      v32 = *a4 + 4 * v17;
      LODWORD(v33) = v18;
      kaldi::VectorBase<float>::CopyRowsFromMat(&v32, *v15++, v12, v13, v14);
      v17 = v19;
    }

    while (v15 != v16);
  }

  (*(*v11 + 8))(v11);
  if (*(a1 + 460))
  {
    v21 = (*(*a1 + 16))(a1);
    kaldi::nnet1::Component::Propagate(v21, a2, &v35, 0);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    if (*(a1 + 96) < 1)
    {
      if (!v21)
      {
LABEL_15:
        kaldi::Vector<float>::Destroy(&v32);
        goto LABEL_16;
      }
    }

    else
    {
      v22 = 0;
      v23 = 0;
      do
      {
        v24 = *(*(v21 + 256) + 8 * v23);
        (*(*v24 + 224))(v24, *(v21 + 280) + v22, a3, &v32);
        v30 = 0;
        v31 = 0;
        if ((v33 + v19) > *(a4 + 8))
        {
          kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v27);
        }

        v29 = *a4 + 4 * v19;
        LODWORD(v30) = v33;
        kaldi::VectorBase<float>::CopyFromVec(&v29, &v32, v25, v26, v27);
        v19 += v33;
        ++v23;
        v22 += 48;
      }

      while (v23 < *(a1 + 96));
    }

    (*(*v21 + 8))(v21);
    goto LABEL_15;
  }

LABEL_16:
  if (v19 != *(a4 + 8))
  {
    kaldi::KaldiAssertFailure_("GetGradient", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_388.sectname[10], "shift == gradient_out->Dim()", v20);
  }

  return kaldi::CuMatrix<float>::~CuMatrix(&v35);
}

void sub_1862C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::CountZeroCorr(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  if (*(a1 + 460) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v19, "CountZeroCorr", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 920);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v19, "Not implemented yet when transforms are used");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v19);
  }

  *a3 = 0;
  v10 = *(a1 + 208);
  v11 = *(a1 + 216);
  v12 = v11 - v10;
  if (v11 != v10)
  {
    v13 = 0;
    v14 = v12 >> 3;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    do
    {
      v15 = *v10;
      v10 += 8;
      v13 += *(v15 + 16) * *(v15 + 20);
      *a3 = v13;
      --v14;
    }

    while (v14);
  }

  v16 = *(a1 + 232);
  v17 = *(a1 + 240);
  *a2 = 0;
  if (v17 != v16)
  {
    v18 = 0;
    do
    {
      *a3 += kaldi::CuMatrixBase<float>::CountZeros(*(v16 + 8 * v18++), v6, v7, v8, v9);
      v16 = *(a1 + 232);
    }

    while (v18 < (*(a1 + 240) - v16) >> 3);
  }
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(void *a1)
{
  v1 = a1[27] - a1[26];
  if (a1[30] - a1[29] != v1)
  {
    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize(a1 + 29, v1 >> 3);
    if (a1[27] != a1[26])
    {
      operator new();
    }
  }
}

double kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::WordMultiVecComponent(uint64_t a1, int a2, int a3)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = off_282980;
  *(a1 + 56) = xmmword_21A620;
  *(a1 + 72) = -1082130432;
  *(a1 + 76) = 0x100000003;
  *(a1 + 84) = 0;
  *(a1 + 86) = 0;
  *a1 = off_282C30;
  *(a1 + 88) = off_282D60;
  *(a1 + 96) = 1;
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 1;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = off_276F88;
  *(a1 + 392) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 400) = off_276F88;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 1065353216;
  *(a1 + 460) = 0;
  *(a1 + 464) = 0;
  *(a1 + 529) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  return result;
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::WordMultiVecComponent(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = off_282980;
  *(a1 + 56) = xmmword_21A620;
  *(a1 + 72) = -1082130432;
  *(a1 + 76) = 0x100000003;
  *(a1 + 84) = 0;
  *(a1 + 86) = 0;
  *a1 = off_282C30;
  *(a1 + 88) = off_282D60;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 104, *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 2);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 128, *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 2);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 152, *(a2 + 152), *(a2 + 160), (*(a2 + 160) - *(a2 + 152)) >> 2);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 176, *(a2 + 176), *(a2 + 184), (*(a2 + 184) - *(a2 + 176)) >> 2);
  v4 = *(a2 + 200);
  *(a1 + 208) = 0u;
  *(a1 + 200) = v4;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = off_276F88;
  *(a1 + 392) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 400) = off_276F88;
  *(a1 + 440) = 0;
  *(a1 + 536) = 0;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  v5 = *(a2 + 460);
  *(a1 + 460) = v5;
  if (v5 == 1 && *(a1 + 96) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(a2 + 256) + 8 * v6);
      v10 = (*(*v7 + 16))(v7);
      std::vector<kaldi::EventMap *>::push_back[abi:ne200100](a1 + 256, &v10);
      ++v6;
    }

    while (v6 < *(a1 + 96));
  }

  if (a1 != a2)
  {
    std::vector<kaldi::CuMatrix<float>>::__assign_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 280, *(a2 + 280), *(a2 + 288), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 288) - *(a2 + 280)) >> 4));
    std::vector<kaldi::CuMatrix<float>>::__assign_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 304, *(a2 + 304), *(a2 + 312), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 312) - *(a2 + 304)) >> 4));
    std::vector<kaldi::CuMatrix<float>>::__assign_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 328, *(a2 + 328), *(a2 + 336), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 336) - *(a2 + 328)) >> 4));
  }

  kaldi::CuMatrix<float>::operator=(a1 + 352, a2 + 352);
  kaldi::CuMatrix<float>::operator=(a1 + 400, a2 + 400);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 452) = *(a2 + 452);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 464) = *(a2 + 464);
  std::vector<std::unique_ptr<kaldi::CompressedMatrix>>::resize((a1 + 208), (*(a2 + 216) - *(a2 + 208)) >> 3);
  if (*(a1 + 216) != *(a1 + 208))
  {
    v8 = **(a2 + 208);
    operator new();
  }

  if (*(a2 + 480) != *(a2 + 472))
  {
    kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::InitResidualAggregator(a1, (a1 + 472));
  }

  *(a1 + 544) = *(a2 + 544);
  return a1;
}

void sub_186A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10, void **a11, uint64_t a12)
{
  v14 = *a9;
  if (*a9)
  {
    *(v12 + 20) = v14;
    operator delete(v14);
  }

  v15 = *a10;
  if (*a10)
  {
    *(v12 + 17) = v15;
    operator delete(v15);
  }

  v16 = *a11;
  if (*a11)
  {
    *(v12 + 14) = v16;
    operator delete(v16);
  }

  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a12);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v12);
  _Unwind_Resume(a1);
}

void std::vector<std::unique_ptr<kaldi::CompressedMatrix>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      std::vector<std::unique_ptr<kaldi::CompressedMatrix>>::__base_destruct_at_end[abi:ne200100](a1, (*a1 + 8 * a2));
    }
  }

  else
  {
    std::vector<std::unique_ptr<kaldi::CompressedMatrix>>::__append(a1, a2 - v2);
  }
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::InitResidualAggregator(uint64_t a1, uint64_t *a2)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::EnsureCorrs(a1);
  if (*(a1 + 460))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v5, "InitResidualAggregator", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 939);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, "Not implemented yet when transforms are used");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v5);
  }

  if (*(a1 + 216) != *(a1 + 208))
  {
    v4 = 0;
    do
    {
      kaldi::nnet1::QuantizerResidualAggregator::PushSetup(a2, *(*(a1 + 232) + 8 * v4++));
    }

    while (v4 < (*(a1 + 216) - *(a1 + 208)) >> 3);
  }
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::~WordMultiVecComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  *a1 = off_282C30;
  v6 = a1 + 88;
  *(a1 + 88) = off_282D60;
  kaldi::DeletePointers<kaldi::nnet1::UpdatableComponent>((a1 + 256), a2, a3, a4, a5);
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator((a1 + 472));
  kaldi::CuMatrix<float>::~CuMatrix(a1 + 400);
  kaldi::CuMatrix<float>::~CuMatrix(a1 + 352);
  v12 = (a1 + 328);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 304);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 280);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v7 = *(a1 + 256);
  if (v7)
  {
    *(a1 + 264) = v7;
    operator delete(v7);
  }

  v12 = (a1 + 232);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 208);
  std::vector<std::unique_ptr<kaldi::CompressedMatrix>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v8 = *(a1 + 176);
  if (v8)
  {
    *(a1 + 184) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 152);
  if (v9)
  {
    *(a1 + 160) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 128);
  if (v10)
  {
    *(a1 + 136) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 104);
  if (v11)
  {
    *(a1 + 112) = v11;
    operator delete(v11);
  }

  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(v6);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a1);
}

{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::~WordMultiVecComponent(a1, a2, a3, a4, a5);

  operator delete();
}

void non-virtual thunk tokaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::~WordMultiVecComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::~WordMultiVecComponent(a1 - 88, a2, a3, a4, a5);
}

{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::~WordMultiVecComponent(a1 - 88, a2, a3, a4, a5);

  operator delete();
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::InitData(uint64_t a1, uint64_t *a2, kaldi::UniformRandomNumber *a3)
{
  v134 = 1036831949;
  kaldi::nnet1::Component::TypeToMarker((&dword_0 + 2), &v133);
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 448), &v132);
  v116 = 0;
  v131 = -1;
  *(a1 + 460) = 1;
  memset(v130, 0, sizeof(v130));
  v117 = (a1 + 200);
  v10 = (a1 + 96);
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_215;
    }

    kaldi::ReadToken(a2, 0, v130, v8, v9);
    if ((SHIBYTE(v130[2]) & 0x80000000) == 0)
    {
      if (HIBYTE(v130[2]) > 0xDu)
      {
        if (HIBYTE(v130[2]) <= 0x11u)
        {
          if (HIBYTE(v130[2]) == 14)
          {
            v35 = v130;
            goto LABEL_174;
          }

          if (HIBYTE(v130[2]) != 15)
          {
            if (HIBYTE(v130[2]) != 17)
            {
              goto LABEL_278;
            }

            v11 = v130[0] == 0x69446465626D453CLL && v130[1] == 0x736E6F69736E656DLL;
            if (!v11 || LOBYTE(v130[2]) != 62)
            {
              goto LABEL_278;
            }

LABEL_17:
            __p = 0;
            v126 = 0;
            v127 = 0;
            kaldi::ReadToken(a2, 0, &__p, v8, v9);
            kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 152), v13);
            goto LABEL_182;
          }

          v26 = v130[0] == 0x61526E7261654C3CLL && *(v130 + 7) == 0x3E66656F43657461;
          v7 = (a1 + 456);
          if (v26)
          {
            goto LABEL_190;
          }

          if (v130[0] != 0x656E67697373413CLL || *(v130 + 7) != 0x3E656C6261546465)
          {
            goto LABEL_278;
          }

          goto LABEL_181;
        }

        if (HIBYTE(v130[2]) != 18)
        {
          if (HIBYTE(v130[2]) != 19)
          {
            if (HIBYTE(v130[2]) != 20)
            {
              goto LABEL_278;
            }

            v18 = v130[0] == 0x6C616974696E493CLL && v130[1] == 0x6E6F436F54657A69;
            if (!v18 || LODWORD(v130[2]) != 1047814499)
            {
              goto LABEL_278;
            }

            goto LABEL_180;
          }

          if (v130[0] != 0x61725474696E493CLL || v130[1] != 0x79546D726F66736ELL || *(&v130[1] + 3) != 0x3E657079546D726FLL)
          {
            goto LABEL_278;
          }

          goto LABEL_103;
        }

        if (v130[0] != 0x6E6569646172473CLL || v130[1] != 0x7079546D726F4E74 || LOWORD(v130[2]) != 15973)
        {
          goto LABEL_278;
        }

LABEL_199:
        v30 = &v132;
        goto LABEL_200;
      }

      if (HIBYTE(v130[2]) > 0xAu)
      {
        if (HIBYTE(v130[2]) == 11)
        {
          v38 = v130[0] == 0x756F72476D754E3CLL && *(v130 + 3) == 0x3E7370756F72476DLL;
          v7 = (a1 + 96);
          if (!v38)
          {
            v39 = v130[0] == 0x6C6261546D754E3CLL && *(v130 + 3) == 0x3E73656C6261546DLL;
            v7 = (a1 + 200);
            if (!v39)
            {
              goto LABEL_278;
            }
          }

          goto LABEL_202;
        }

        if (HIBYTE(v130[2]) != 12)
        {
          if (v130[0] != 0x74536D617261503CLL || *(v130 + 5) != 0x3E7665646474536DLL)
          {
            goto LABEL_278;
          }

          goto LABEL_189;
        }

        if (v130[0] == 0x536D6F646E61523CLL && LODWORD(v130[1]) == 1046766949)
        {
          goto LABEL_201;
        }

        if (v130[0] != 0x69536261636F563CLL || LODWORD(v130[1]) != 1047750010)
        {
          goto LABEL_206;
        }

LABEL_113:
        __p = 0;
        v126 = 0;
        v127 = 0;
        kaldi::ReadToken(a2, 0, &__p, v8, v9);
        kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 104), v33);
        goto LABEL_182;
      }

      if (HIBYTE(v130[2]) != 9)
      {
        if (HIBYTE(v130[2]) != 10)
        {
          goto LABEL_278;
        }

        if (v130[0] != 0x6D65744978614D3CLL || LOWORD(v130[1]) != 15987)
        {
          goto LABEL_278;
        }

LABEL_66:
        __p = 0;
        v126 = 0;
        v127 = 0;
        kaldi::ReadToken(a2, 0, &__p, v8, v9);
        kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 128), v22);
        goto LABEL_182;
      }

      v34 = v130[0] == 0x6461724778614D3CLL && LOBYTE(v130[1]) == 62;
      goto LABEL_138;
    }

    v14 = v130[1];
    if (v130[1] <= 12)
    {
      if (v130[1] > 10)
      {
        if (v130[1] == &dword_8 + 3)
        {
          v40 = *v130[0] == 0x756F72476D754E3CLL && *(v130[0] + 3) == 0x3E7370756F72476DLL;
          v7 = (a1 + 96);
          if (v40)
          {
            goto LABEL_202;
          }

          v41 = *v130[0] == 0x6C6261546D754E3CLL && *(v130[0] + 3) == 0x3E73656C6261546DLL;
          v7 = (a1 + 200);
          if (v41)
          {
            goto LABEL_202;
          }
        }

        else
        {
          if (*v130[0] == 0x536D6F646E61523CLL && *(v130[0] + 2) == 1046766949)
          {
LABEL_201:
            v7 = &v131;
LABEL_202:
            kaldi::ReadBasicType<int>(a2, 0, v7, v8, v9);
            goto LABEL_203;
          }

          if (*v130[0] == 0x69536261636F563CLL && *(v130[0] + 2) == 1047750010)
          {
            goto LABEL_113;
          }
        }
      }

      else
      {
        if (v130[1] == &dword_8 + 1)
        {
          v34 = *v130[0] == 0x6461724778614D3CLL && *(v130[0] + 8) == 62;
LABEL_138:
          v7 = (a1 + 452);
          if (!v34)
          {
            goto LABEL_278;
          }

          goto LABEL_190;
        }

        if (v130[1] != &dword_8 + 2)
        {
          goto LABEL_158;
        }

        if (*v130[0] == 0x6D65744978614D3CLL && *(v130[0] + 4) == 15987)
        {
          goto LABEL_66;
        }
      }

      goto LABEL_157;
    }

    if (v130[1] > 16)
    {
      if (v130[1] != dword_10 + 1)
      {
        if (v130[1] == dword_10 + 2)
        {
          if (*v130[0] != 0x6E6569646172473CLL || *(v130[0] + 1) != 0x7079546D726F4E74 || *(v130[0] + 8) != 15973)
          {
            goto LABEL_278;
          }

          goto LABEL_199;
        }

        if (v130[1] == dword_10 + 3)
        {
          if (*v130[0] != 0x61725474696E493CLL || *(v130[0] + 1) != 0x79546D726F66736ELL || *(v130[0] + 11) != 0x3E657079546D726FLL)
          {
            goto LABEL_278;
          }

LABEL_103:
          v30 = &v133;
LABEL_200:
          kaldi::ReadToken(a2, 0, v30, v8, v9);
          goto LABEL_203;
        }

        goto LABEL_158;
      }

      if (*v130[0] == 0x69446465626D453CLL && *(v130[0] + 1) == 0x736E6F69736E656DLL && *(v130[0] + 16) == 62)
      {
        goto LABEL_17;
      }

LABEL_157:
      v14 = v130[1];
LABEL_158:
      if (v14 != (&dword_C + 3))
      {
        goto LABEL_164;
      }

      goto LABEL_159;
    }

    if (v130[1] == &dword_C + 1)
    {
      if (*v130[0] != 0x74536D617261503CLL || *(v130[0] + 5) != 0x3E7665646474536DLL)
      {
        goto LABEL_278;
      }

LABEL_189:
      v7 = &v134;
LABEL_190:
      kaldi::ReadBasicType<float>(a2, 0, v7, v8, v9);
      goto LABEL_203;
    }

    if (v130[1] != &dword_C + 3)
    {
      goto LABEL_158;
    }

    v25 = *v130[0] == 0x61526E7261654C3CLL && *(v130[0] + 7) == 0x3E66656F43657461;
    v7 = (a1 + 456);
    if (v25)
    {
      goto LABEL_190;
    }

LABEL_159:
    if (*v130[0] != 0x656E67697373413CLL || *(v130[0] + 7) != 0x3E656C6261546465)
    {
      break;
    }

LABEL_181:
    __p = 0;
    v126 = 0;
    v127 = 0;
    kaldi::ReadToken(a2, 0, &__p, v8, v9);
    kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 176), v51);
LABEL_182:
    if (SHIBYTE(v127) < 0)
    {
      operator delete(__p);
    }

LABEL_203:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  v14 = v130[1];
LABEL_164:
  if (v14 == &dword_14)
  {
    v45 = *v130[0] == 0x6C616974696E493CLL && *(v130[0] + 1) == 0x6E6F436F54657A69;
    if (v45 && *(v130[0] + 4) == 1047814499)
    {
LABEL_180:
      v116 = 1;
      goto LABEL_203;
    }
  }

  v47 = v130[1];
  if (v130[1] != &dword_C + 2)
  {
    goto LABEL_208;
  }

  v35 = v130[0];
LABEL_174:
  v48 = *v35;
  v49 = *(v35 + 6);
  if (v48 == 0x6E6172546573553CLL && v49 == 0x3E6D726F66736E61)
  {
    kaldi::ReadBasicType<BOOL>(a2, 0, (a1 + 460), v8, v9);
    goto LABEL_203;
  }

  if ((HIBYTE(v130[2]) & 0x80) == 0)
  {
    if (HIBYTE(v130[2]) == 12)
    {
LABEL_206:
      v55 = v130;
      goto LABEL_210;
    }

    goto LABEL_278;
  }

  v47 = v130[1];
LABEL_208:
  if (v47 != &dword_C)
  {
    goto LABEL_278;
  }

  v55 = v130[0];
LABEL_210:
  v56 = *v55;
  v57 = *(v55 + 2);
  if (v56 != 0x6E6F706D6F432F3CLL || v57 != 1047817829)
  {
LABEL_278:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 271);
    v109 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Unknown token ", 14);
    if (SHIBYTE(v130[2]) >= 0)
    {
      v110 = v130;
    }

    else
    {
      v110 = v130[0];
    }

    if (SHIBYTE(v130[2]) >= 0)
    {
      v111 = HIBYTE(v130[2]);
    }

    else
    {
      v111 = v130[1];
    }

    v112 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v109, v110, v111);
    v113 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v112, ", a typo in config? ", 20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v113, "(NumGroups|VocabSizes|MaxDimensions|EmbedDimensions|LearnRateCoef|ParamStddev|RandomSeed|InitTransformType|GradientNormType|MaxGrad)", 132);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

LABEL_215:
  kaldi::DeletePointers<kaldi::nnet1::UpdatableComponent>((a1 + 256), v6, v7, v8, v9);
  if (*(a1 + 460) != 1)
  {
    goto LABEL_235;
  }

  if (*v10 >= 1)
  {
    v118 = 0;
    v119 = 0;
    v120 = 0;
    LODWORD(v135) = 0;
    v124 = 0;
    kaldi::ExpectToken(a2, 0, "<FeatureTransform>");
    kaldi::ReadToken(a2, 0, &v118, v59, v60);
    v61 = kaldi::nnet1::Component::MarkerToComponentType(&v118);
    kaldi::ExpectToken(a2, 0, "<InputDim>");
    kaldi::ReadBasicType<int>(a2, 0, &v135, v62, v63);
    kaldi::ExpectToken(a2, 0, "<OutputDim>");
    kaldi::ReadBasicType<int>(a2, 0, &v124, v64, v65);
    kaldi::nnet1::Component::NewComponentOfType(v61);
  }

  v10 = (a1 + 96);
  if ((v116 & 1) == 0)
  {
    goto LABEL_235;
  }

  v67 = *(a1 + 256);
  v66 = *(a1 + 264);
  if (v67 == v66)
  {
    if (!*(*v67 + 12))
    {
      goto LABEL_233;
    }

LABEL_288:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 304);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "dimension mismatch, cannot initialize to concatenation, expected dim is ", 72);
    v114 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v114, " actual dim is ", 15);
    v115 = *(**(a1 + 256) + 12);
    std::ostream::operator<<();
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

  v68 = 0;
  v69 = *(a1 + 256);
  do
  {
    v70 = *v69++;
    v68 += *(v70 + 8);
  }

  while (v69 != v66);
  if (v68 != *(*v67 + 12))
  {
    goto LABEL_288;
  }

  v71 = 0;
  do
  {
    v72 = *v67;
    if (!*v67)
    {
LABEL_285:
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 326);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "cannot initialize to concatenation for this transform", 53);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
    }

    v73 = *v72;
    v74 = **v72;
    if (v75)
    {
      v76 = v75;
      kaldi::Matrix<float>::Matrix(&__p, v75[3], v75[2], 0, 0);
      v77 = v76[3];
      v121 = 0;
      v122 = 0;
      v123 = 0;
      kaldi::Vector<float>::Resize(&v121, v77, 0, v78, v79);
      v10 = (a1 + 96);
      kaldi::SubMatrix<float>::SubMatrix(&v118, &__p, v71, v76[2], 0, v126);
      kaldi::MatrixBase<float>::AddToDiag(&v118, 1.0);
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v118);
      kaldi::nnet1::AffineTransform::SetLinearity(v76, &__p);
      kaldi::nnet1::AffineTransform::SetBias(v76, &v121);
      v80 = v76[2];
      kaldi::Vector<float>::Destroy(&v121);
    }

    else
    {
      v81 = *v73;
      if (!v82)
      {
        goto LABEL_285;
      }

      v83 = v82;
      kaldi::Matrix<float>::Matrix(&__p, v82[3], v82[2], 0, 0);
      v10 = (a1 + 96);
      kaldi::SubMatrix<float>::SubMatrix(&v118, &__p, v71, *(v83 + 8), 0, v126);
      kaldi::MatrixBase<float>::AddToDiag(&v118, 1.0);
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v118);
      kaldi::nnet1::LinearTransform<kaldi::CuMatrixBase<float>>::SetLinearity(v83, &__p);
      v80 = *(v83 + 8);
    }

    kaldi::Matrix<float>::~Matrix(&__p);
    v71 = v80 + v71;
    ++v67;
  }

  while (v67 != v66);
  if (v71 != v68)
  {
    kaldi::KaldiAssertFailure_("InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_108.flags + 3, "shift == total_dim", v84);
  }

LABEL_233:
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(&__p, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 332);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "initialized the transform for concatenation", 43);
    kaldi::KaldiLogMessage::~KaldiLogMessage(&__p);
  }

LABEL_235:
  inited = kaldi::nnet1::Component::MarkerToMatrixInitType(&v133);
  *(a1 + 448) = kaldi::nnet1::Component::MarkerToGradientNormType(&v132);
  if (!inited)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 339);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "it doesn't make sense to initialize the embedding table as an identify matrix", 77);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

  v122 = 0;
  v123 = 0;
  v121 = &v122;
  if (*v10 < 1)
  {
    v92 = 0;
  }

  else
  {
    v87 = 0;
    do
    {
      v88 = *(*(a1 + 176) + 4 * v87);
      LODWORD(v118) = v88;
      if (v88 < 0 || v88 >= *v117)
      {
        kaldi::KaldiAssertFailure_("InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_158.sectname[1], "table_idx >= 0 && table_idx < num_tables_", v86);
      }

      v89 = *(*(a1 + 104) + 4 * v87);
      v90 = *(*(a1 + 152) + 4 * v87);
      __p = &v118;
      v91 = std::__tree<std::__value_type<int,std::pair<int,int>>,std::__map_value_compare<int,std::__value_type<int,std::pair<int,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::pair<int,int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v121, &v118);
      *(v91 + 8) = v89;
      *(v91 + 9) = v90;
      ++v87;
    }

    while (v87 < *v10);
    v92 = v123;
  }

  if (v92 != *v117)
  {
    kaldi::KaldiAssertFailure_("InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_158.sectname[4], "table_dims.size() == num_tables_", v86);
  }

  std::vector<std::unique_ptr<kaldi::CompressedMatrix>>::resize((a1 + 208), v92);
  if (v131 >= 1)
  {
    kaldi::UniformRandomNumber::SetRandomSeeds(a3, v131);
  }

  kaldi::GaussRandomNumber::GaussRandomNumber(&__p, a3);
  v124 = 0;
  if (*v117 >= 1)
  {
    v135 = &v124;
    v93 = std::__tree<std::__value_type<int,std::pair<int,int>>,std::__map_value_compare<int,std::__value_type<int,std::pair<int,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::pair<int,int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v121, &v124);
    v94 = *(v93 + 8);
    v95 = *(v93 + 9);
    kaldi::Matrix<float>::Matrix(&v118, v94, v95, 0, 0);
    if (v94 < 1)
    {
LABEL_266:
      operator new();
    }

    v99 = 0;
    while (v95 < 1)
    {
LABEL_265:
      if (++v99 == v94)
      {
        goto LABEL_266;
      }
    }

    v100 = 0;
    while (2)
    {
      if (inited == 2)
      {
        v106 = *&v134;
        kaldi::GaussRandomNumber::Rand(&__p, 0, v96, v97, v98);
        if (HIDWORD(v119) <= v99 || v100 >= v119)
        {
LABEL_276:
          kaldi::KaldiAssertFailure_("operator()", "../subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_B8.segname[5], "static_cast<UnsignedMatrixIndexT>(r) < static_cast<UnsignedMatrixIndexT>(num_rows_) && static_cast<UnsignedMatrixIndexT>(c) < static_cast<UnsignedMatrixIndexT>(num_cols_)", v98);
        }

        v104 = v118 + 4 * (v99 * v120);
        v105 = v106 * v107;
LABEL_263:
        *&v104[4 * v100] = v105;
      }

      else if (inited == 1)
      {
        v101 = *&v134;
        v102 = kaldi::UniformRandomNumber::RandUniform(a3, 0, v96, v97, v98);
        if (HIDWORD(v119) <= v99 || v100 >= v119)
        {
          goto LABEL_276;
        }

        v104 = v118 + 4 * (v99 * v120);
        v105 = (v102 + -0.5) * (v101 + v101);
        goto LABEL_263;
      }

      if (v95 == ++v100)
      {
        goto LABEL_265;
      }

      continue;
    }
  }

  kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::Check(a1);
  if (v128)
  {
    v129 = v128;
    operator delete(v128);
  }

  v118 = &v127;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v118);
  std::__tree<std::__value_type<float,kaldi::MelBanks *>,std::__map_value_compare<float,std::__value_type<float,kaldi::MelBanks *>,std::less<float>,true>,std::allocator<std::__value_type<float,kaldi::MelBanks *>>>::destroy(&v121, v122);
  if (SHIBYTE(v130[2]) < 0)
  {
    operator delete(v130[0]);
  }

  if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v132.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v133.__r_.__value_.__l.__data_);
  }
}

void sub_188264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, void *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  a13 = &a24;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a13);
  std::__tree<std::__value_type<float,kaldi::MelBanks *>,std::__map_value_compare<float,std::__value_type<float,kaldi::MelBanks *>,std::less<float>,true>,std::allocator<std::__value_type<float,kaldi::MelBanks *>>>::destroy(&a18, a19);
  if (*(v28 - 177) < 0)
  {
    operator delete(*(v28 - 200));
  }

  if (*(v28 - 145) < 0)
  {
    operator delete(*(v28 - 168));
  }

  if (*(v28 - 121) < 0)
  {
    operator delete(*(v28 - 144));
  }

  _Unwind_Resume(a1);
}

void sub_188284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    JUMPOUT(0x188294);
  }

  JUMPOUT(0x1882E4);
}

void sub_1882A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::Matrix<float>::~Matrix(va);
  JUMPOUT(0x1882B4);
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::Check(uint64_t result)
{
  if ((*(result + 544) & 1) == 0)
  {
    v1 = *(result + 96);
    if (v1 <= 0)
    {
      v88 = result;
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v106, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 503);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v106, "must have at least one group, you used ", 39);
      v47 = *(v88 + 96);
      std::ostream::operator<<();
      goto LABEL_46;
    }

    v2 = *(result + 200);
    if (v2 <= 0)
    {
      v89 = result;
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v106, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 506);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v106, "must have at least one embedding table, you used ", 49);
      v48 = *(v89 + 200);
      std::ostream::operator<<();
      goto LABEL_46;
    }

    if (v1 < v2)
    {
      v90 = result;
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v106, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 509);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v106, "there are only ", 15);
      v49 = *(v90 + 96);
      v50 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, " groups, but you set ", 21);
      v51 = *(v90 + 200);
      v52 = std::ostream::operator<<();
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v52, " embedding tables");
      goto LABEL_46;
    }

    v3 = *(result + 104);
    v4 = *(result + 112) - v3;
    v5 = v4 >> 2;
    if (v4 >> 2 != v1)
    {
      v91 = result;
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v106, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 512);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v106, "there are ", 10);
      v53 = *(v91 + 96);
      v54 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, " groups, but the number vocab list size is ", 43);
      v55 = *(v91 + 112) - *(v91 + 104);
      std::ostream::operator<<();
      goto LABEL_46;
    }

    v6 = *(result + 128);
    if (*(result + 136) - v6 != v4)
    {
      v92 = result;
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v106, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 515);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v106, "there are ", 10);
      v56 = *(v92 + 96);
      v57 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, " groups, but the max item list size is ", 39);
      v58 = *(v92 + 136) - *(v92 + 128);
      std::ostream::operator<<();
      goto LABEL_46;
    }

    v7 = *(result + 152);
    if (*(result + 160) - v7 != v4)
    {
      v93 = result;
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v106, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 518);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v106, "there are ", 10);
      v59 = *(v93 + 96);
      v60 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, " groups, but the embedding dim list size is ", 44);
      v61 = *(v93 + 160) - *(v93 + 152);
      std::ostream::operator<<();
      goto LABEL_46;
    }

    v8 = *(result + 176);
    if (*(result + 184) - v8 != v4)
    {
      v94 = result;
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v106, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 521);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v106, "there are ", 10);
      v62 = *(v94 + 96);
      v63 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, " groups, but ", 13);
      v64 = *(v94 + 184) - *(v94 + 176);
      v65 = std::ostream::operator<<();
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v65, " groups have assigned tables");
      goto LABEL_46;
    }

    v9 = *(result + 208);
    if (v2 != (*(result + 216) - v9) >> 3)
    {
      v95 = result;
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v106, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 524);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v106, "the actual number of embedding tables is ", 41);
      v66 = *(v95 + 216) - *(v95 + 208);
      v67 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, " and different than ", 20);
      v68 = *(v95 + 200);
      std::ostream::operator<<();
      goto LABEL_46;
    }

    v10 = *(result + 460);
    if (v10 == 1 && v5 != (*(result + 264) - *(result + 256)) >> 3)
    {
      v97 = result;
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v106, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 528);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v106, "there are ", 10);
      v71 = *(v97 + 96);
      v72 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, " groups, but the number of feature transforms is ", 49);
      v73 = *(v97 + 264) - *(v97 + 256);
      std::ostream::operator<<();
      goto LABEL_46;
    }

    v11 = 0;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = *(v8 + 4 * v11);
      if ((v14 & 0x80000000) != 0 || v14 >= v2)
      {
        v79 = *(v8 + 4 * v11);
        v82 = result;
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v106, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 537);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v106, "the ", 4);
        v24 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "-th group has assigned table index ", 35);
        v25 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " , the number of tables is ", 27);
        v26 = *(v82 + 200);
        std::ostream::operator<<();
        goto LABEL_46;
      }

      v15 = *(v3 + 4 * v11);
      if (v15 <= 0)
      {
        v84 = result;
        v102 = v11;
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v106, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 542);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v106, "the ", 4);
        v29 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "-th group has invalid vocab size ", 33);
        v30 = *(*(v84 + 104) + 4 * v102);
        std::ostream::operator<<();
        goto LABEL_46;
      }

      v16 = *(v6 + 4 * v11);
      if (v16 <= 0)
      {
        v85 = result;
        v103 = v11;
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v106, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 545);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v106, "the ", 4);
        v31 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "-th group has invalid max item value ", 37);
        v32 = *(*(v85 + 128) + 4 * v103);
        std::ostream::operator<<();
        goto LABEL_46;
      }

      v17 = *(v7 + 4 * v11);
      if (v17 <= 0)
      {
        v83 = result;
        v101 = v11;
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v106, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 548);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v106, "the ", 4);
        v27 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "-th group has invalid embedding dimension value ", 48);
        v28 = *(*(v83 + 152) + 4 * v101);
        std::ostream::operator<<();
        goto LABEL_46;
      }

      v18 = **(v9 + 8 * v14);
      if (!v18 || *(v18 + 8) != v15)
      {
        break;
      }

      if (*(v18 + 12) != v17)
      {
        v78 = *(v8 + 4 * v11);
        v81 = result;
        v100 = v11;
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v106, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 557);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v106, "the ", 4);
        v22 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "-th group has mismatched embedding table and embedding dim ", 59);
        v23 = **(*(v81 + 208) + 8 * v78);
        if (v23)
        {
          v44 = *(v23 + 12);
        }

        v45 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, " vs ", 4);
        v46 = *(*(v81 + 152) + 4 * v100);
        std::ostream::operator<<();
        goto LABEL_46;
      }

      if (*(result + 460))
      {
        v19 = *(*(result + 256) + 8 * v11);
        if (v17 != *(v19 + 8))
        {
          v87 = result;
          v105 = v11;
          kaldi::KaldiErrorMessage::KaldiErrorMessage(v106, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 561);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v106, "the ", 4);
          v37 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "-th group has mismatched embedding table and feature transform ", 63);
          v38 = *(*(v87 + 152) + 4 * v105);
          v39 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, " vs ", 4);
          v40 = *(*(*(v87 + 256) + 8 * v105) + 8);
          std::ostream::operator<<();
          goto LABEL_46;
        }

        if (*(result + 12) != *(v19 + 12))
        {
          v86 = result;
          v104 = v11;
          kaldi::KaldiErrorMessage::KaldiErrorMessage(v106, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 565);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v106, "the ", 4);
          v33 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "-th group has feature transform output dim ", 43);
          v34 = *(*(*(v86 + 256) + 8 * v104) + 12);
          v35 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, " does not match component output dim ", 37);
          v36 = *(v86 + 12);
          std::ostream::operator<<();
          goto LABEL_46;
        }
      }

      v12 += v17;
      v13 += v16;
      if (v1 == ++v11)
      {
        if (*(result + 8) == v13)
        {
          if ((v10 & 1) != 0 || v12 == *(result + 12))
          {
            *(result + 544) = 1;
            return result;
          }

          v98 = result;
          kaldi::KaldiErrorMessage::KaldiErrorMessage(v106, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 575);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v106, "Total embedding size of ", 24);
          v74 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, " doesn't match the component output size of ", 44);
          v75 = *(v98 + 12);
          v76 = std::ostream::operator<<();
          std::operator<<[abi:ne200100]<std::char_traits<char>>(v76, " when transforms are not used");
        }

        else
        {
          v96 = result;
          kaldi::KaldiErrorMessage::KaldiErrorMessage(v106, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 571);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v106, "input dim of the component is ", 30);
          v69 = *(v96 + 8);
          v70 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, " , while the input dim defined in max items is ", 47);
          std::ostream::operator<<();
        }

LABEL_46:
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v106);
      }
    }

    v77 = *(v8 + 4 * v11);
    v80 = result;
    v99 = v11;
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v106, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 553);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v106, "the ", 4);
    v20 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "-th group has mismatched embedding table and vocab size ", 56);
    v21 = **(*(v80 + 208) + 8 * v77);
    if (v21)
    {
      v41 = *(v21 + 8);
    }

    v42 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, " vs ", 4);
    v43 = *(*(v80 + 104) + 4 * v99);
    std::ostream::operator<<();
    goto LABEL_46;
  }

  return result;
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  v62 = 0uLL;
  v63 = 0;
  *(a1 + 460) = 1;
  v57 = (a1 + 456);
  v6 = (a1 + 452);
  v7 = (a1 + 200);
  v8 = (a1 + 96);
  while (kaldi::Peek(a2, a3) == 60)
  {
    kaldi::ReadToken(a2, a3, &v62, v9, v10);
    if (SHIBYTE(v63) < 0)
    {
      v14 = *(&v62 + 1);
      if (*(&v62 + 1) == 11)
      {
        v31 = *v62 == 0x756F72476D754E3CLL && *(v62 + 3) == 0x3E7370756F72476DLL;
        v32 = v8;
        if (v31)
        {
          goto LABEL_108;
        }

        v33 = *v62 == 0x6C6261546D754E3CLL && *(v62 + 3) == 0x3E73656C6261546DLL;
        v32 = v7;
        if (v33)
        {
          goto LABEL_108;
        }
      }

      if (*(&v62 + 1) != 12)
      {
        goto LABEL_20;
      }

      if (*v62 != 0x69536261636F563CLL || *(v62 + 8) != 1047750010)
      {
        v14 = *(&v62 + 1);
LABEL_20:
        if (v14 == 10 && *v62 == 0x6D65744978614D3CLL && *(v62 + 8) == 15987)
        {
          goto LABEL_81;
        }

        if (*(&v62 + 1) == 15)
        {
          if (*v62 == 0x656E67697373413CLL && *(v62 + 7) == 0x3E656C6261546465)
          {
            goto LABEL_115;
          }
        }

        else if (*(&v62 + 1) == 17)
        {
          v17 = *v62 == 0x69446465626D453CLL && *(v62 + 8) == 0x736E6F69736E656DLL;
          if (v17 && *(v62 + 16) == 62)
          {
            goto LABEL_135;
          }
        }

        if (*(&v62 + 1) == 9)
        {
          v22 = *v62 == 0x6461724778614D3CLL && *(v62 + 8) == 62;
          v23 = v6;
          if (v22)
          {
            goto LABEL_114;
          }
        }

        else if (*(&v62 + 1) == 18)
        {
          v20 = *v62 == 0x6E6569646172473CLL && *(v62 + 8) == 0x7079546D726F4E74;
          if (v20 && *(v62 + 16) == 15973)
          {
            goto LABEL_126;
          }
        }

        if (*(&v62 + 1) != 14)
        {
          if (*(&v62 + 1) != 15 || (*v62 == 0x61526E7261654C3CLL ? (v24 = *(v62 + 7) == 0x3E66656F43657461) : (v24 = 0), v23 = v57, !v24))
          {
LABEL_149:
            kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 408);
            v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Unknown token ", 14);
            if (v63 >= 0)
            {
              v54 = &v62;
            }

            else
            {
              v54 = v62;
            }

            if (v63 >= 0)
            {
              v55 = HIBYTE(v63);
            }

            else
            {
              v55 = *(&v62 + 1);
            }

            v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, v54, v55);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, ", a typo in config? (NumGroups|VocabSizes|MaxDimensions|EmbedDimensions|LearnRateCoef)", 86);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
          }

          goto LABEL_114;
        }

        v25 = v62;
        goto LABEL_102;
      }

LABEL_80:
      __p = 0;
      v60 = 0;
      v61 = 0;
      kaldi::ReadToken(a2, a3, &__p, v11, v12);
      kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 104), v29);
LABEL_136:
      if (SHIBYTE(v61) < 0)
      {
        operator delete(__p);
      }
    }

    else if (HIBYTE(v63) > 0xDu)
    {
      if (HIBYTE(v63) > 0x10u)
      {
        if (HIBYTE(v63) == 17)
        {
          if (v62 != 0x69446465626D453CLL || *(&v62 + 1) != 0x736E6F69736E656DLL || v63 != 62)
          {
            goto LABEL_149;
          }

LABEL_135:
          __p = 0;
          v60 = 0;
          v61 = 0;
          kaldi::ReadToken(a2, a3, &__p, v11, v12);
          kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 152), v45);
          goto LABEL_136;
        }

        if (HIBYTE(v63) != 18)
        {
          goto LABEL_149;
        }

        v41 = v62 == 0x6E6569646172473CLL && *(&v62 + 1) == 0x7079546D726F4E74;
        if (!v41 || v63 != 15973)
        {
          goto LABEL_149;
        }

LABEL_126:
        __p = 0;
        v60 = 0;
        v61 = 0;
        kaldi::ReadToken(a2, a3, &__p, v11, v12);
        *(a1 + 448) = kaldi::nnet1::Component::MarkerToGradientNormType(&__p);
        goto LABEL_136;
      }

      if (HIBYTE(v63) != 14)
      {
        if (HIBYTE(v63) != 15)
        {
          goto LABEL_149;
        }

        if (v62 == 0x656E67697373413CLL && *(&v62 + 7) == 0x3E656C6261546465)
        {
LABEL_115:
          __p = 0;
          v60 = 0;
          v61 = 0;
          kaldi::ReadToken(a2, a3, &__p, v11, v12);
          kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 176), v40);
          goto LABEL_136;
        }

        v27 = v62 == 0x61526E7261654C3CLL && *(&v62 + 7) == 0x3E66656F43657461;
        v23 = v57;
        if (!v27)
        {
          goto LABEL_149;
        }

        goto LABEL_114;
      }

      v25 = &v62;
LABEL_102:
      v36 = *v25;
      v37 = *(v25 + 6);
      if (v36 != 0x6E6172546573553CLL || v37 != 0x3E6D726F66736E61)
      {
        goto LABEL_149;
      }

      kaldi::ReadBasicType<BOOL>(a2, a3, (a1 + 460), v11, v12);
    }

    else if (HIBYTE(v63) > 0xAu)
    {
      if (HIBYTE(v63) != 11)
      {
        if (HIBYTE(v63) != 12)
        {
          goto LABEL_149;
        }

        if (v62 != 0x69536261636F563CLL || DWORD2(v62) != 1047750010)
        {
          goto LABEL_149;
        }

        goto LABEL_80;
      }

      v34 = v62 == 0x756F72476D754E3CLL && *(&v62 + 3) == 0x3E7370756F72476DLL;
      v32 = v8;
      if (!v34)
      {
        v35 = v62 == 0x6C6261546D754E3CLL && *(&v62 + 3) == 0x3E73656C6261546DLL;
        v32 = v7;
        if (!v35)
        {
          goto LABEL_149;
        }
      }

LABEL_108:
      kaldi::ReadBasicType<int>(a2, a3, v32, v11, v12);
    }

    else
    {
      if (HIBYTE(v63) != 9)
      {
        if (HIBYTE(v63) != 10)
        {
          goto LABEL_149;
        }

        if (v62 != 0x6D65744978614D3CLL || WORD4(v62) != 15987)
        {
          goto LABEL_149;
        }

LABEL_81:
        __p = 0;
        v60 = 0;
        v61 = 0;
        kaldi::ReadToken(a2, a3, &__p, v11, v12);
        kaldi::SplitStringToIntegers<int>(&__p, ",", 1, (a1 + 128), v30);
        goto LABEL_136;
      }

      v39 = v62 == 0x6461724778614D3CLL && BYTE8(v62) == 62;
      v23 = v6;
      if (!v39)
      {
        goto LABEL_149;
      }

LABEL_114:
      kaldi::ReadBasicType<float>(a2, a3, v23, v11, v12);
    }
  }

  std::vector<std::unique_ptr<kaldi::CompressedMatrix>>::resize((a1 + 208), *(a1 + 200));
  if (*v7 >= 1)
  {
    operator new();
  }

  kaldi::ExpectToken(a2, a3, "</Component>");
  kaldi::DeletePointers<kaldi::nnet1::UpdatableComponent>((a1 + 256), v46, v47, v48, v49);
  if (*(a1 + 460) == 1 && *v8 >= 1)
  {
    v50 = 0;
    do
    {
      kaldi::ExpectToken(a2, a3, "<FeatureTransform>");
      v51 = kaldi::nnet1::Component::Read(a2, a3);
      if (!v51)
      {
        v58 = 0;
LABEL_157:
        kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 425);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "failed to read feature transform", 32);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
      }

      v52 = **v51;
      if (!v58)
      {
        goto LABEL_157;
      }

      kaldi::ExpectToken(a2, a3, "</Component>");
      std::vector<kaldi::EventMap *>::push_back[abi:ne200100](a1 + 256, &v58);
      ++v50;
    }

    while (v50 < *v8);
  }

  *(a1 + 16) = 0;
  kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::Check(a1);
  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62);
  }
}

void sub_189684(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::WriteConfig(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  v41[0] = 0;
  v41[1] = 0;
  v42 = 0;
  kaldi::WriteToken(a2, a3, "<NumGroups>", a4, a5);
  v8 = *(a1 + 96);
  kaldi::WriteBasicType<int>(a2, a3);
  kaldi::WriteToken(a2, a3, "<NumTables>", v9, v10);
  v11 = *(a1 + 200);
  kaldi::WriteBasicType<int>(a2, a3);
  kaldi::WriteToken(a2, a3, "<VocabSizes>", v12, v13);
  kaldi::JoinVectorToString<int>((a1 + 104), ",", v41);
  kaldi::WriteToken(a2, a3, v41, v14, v15);
  kaldi::WriteToken(a2, a3, "<MaxItems>", v16, v17);
  kaldi::JoinVectorToString<int>((a1 + 128), ",", v41);
  kaldi::WriteToken(a2, a3, v41, v18, v19);
  kaldi::WriteToken(a2, a3, "<EmbedDimensions>", v20, v21);
  kaldi::JoinVectorToString<int>((a1 + 152), ",", v41);
  kaldi::WriteToken(a2, a3, v41, v22, v23);
  kaldi::WriteToken(a2, a3, "<AssignedTable>", v24, v25);
  kaldi::JoinVectorToString<int>((a1 + 176), ",", v41);
  kaldi::WriteToken(a2, a3, v41, v26, v27);
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>", v28, v29);
  v30 = *(a1 + 456);
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>", v31, v32);
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 448), &__p);
  kaldi::WriteToken(a2, a3, &__p, v33, v34);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>", v35, v36);
  v37 = *(a1 + 452);
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<UseTransform>", v38, v39);
  kaldi::WriteBasicType<BOOL>(a2, a3, *(a1 + 460));
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41[0]);
  }
}

void sub_1898C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::WriteData(uint64_t a1, void *a2, const char *a3, uint64_t a4)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::Check(a1);
  (*(*a1 + 168))(a1, a2, a3);
  v10 = *(a1 + 208);
  v11 = *(a1 + 216);
  while (v10 != v11)
  {
    v12 = *v10++;
    kaldi::CompressedMatrix::Write(v12, a2, a3, a4, v9);
  }

  result = kaldi::WriteToken(a2, a3, "</Component>", v8, v9);
  if (*(a1 + 460))
  {
    v16 = *(a1 + 256);
    for (i = *(a1 + 264); v16 != i; result = kaldi::WriteToken(a2, a3, "</Component>", v19, v20))
    {
      kaldi::WriteToken(a2, a3, "<FeatureTransform>", v14, v15);
      v18 = *v16++;
      kaldi::nnet1::Component::Write(v18, a2, a3, a4);
    }
  }

  return result;
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::NumParams(void *a1)
{
  v1 = a1[26];
  v2 = a1[27];
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    LODWORD(v3) = 0;
    do
    {
      v4 = **v1;
      if (v4)
      {
        LODWORD(v4) = *(v4 + 12) * *(v4 + 8);
      }

      v3 = (v4 + v3);
      ++v1;
    }

    while (v1 != v2);
  }

  v5 = a1[32];
  v6 = a1[33];
  while (v5 != v6)
  {
    v7 = *v5++;
    v3 = (*(*v7 + 176))(v7) + v3;
  }

  return v3;
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::GetParams(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 1, v5, v6);
  v11 = a1[26];
  v12 = a1[27];
  if (v11 == v12)
  {
    v16 = 0;
  }

  else
  {
    v13 = 0;
    do
    {
      v14 = *v11;
      v15 = **v11;
      if (v15)
      {
        LODWORD(v15) = *(v15 + 12) * *(v15 + 8);
      }

      v26 = 0;
      v27 = 0;
      v16 = v15 + v13;
      if ((v15 + v13) > *(a2 + 8))
      {
        kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v9);
      }

      v25 = *a2 + 4 * v13;
      LODWORD(v26) = v15;
      v10.n128_f64[0] = kaldi::VectorBase<float>::CopyRowsFromMat(&v25, v14, v7, v8, v9);
      ++v11;
      v13 = v16;
    }

    while (v11 != v12);
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  v18 = a1[32];
  for (i = a1[33]; v18 != i; ++v18)
  {
    (*(**v18 + 184))(*v18, &v25, v10);
    v23 = 0;
    v24 = 0;
    if ((v26 + v16) > *(a2 + 8))
    {
      kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v21);
    }

    v22 = *a2 + 4 * v16;
    LODWORD(v23) = v26;
    kaldi::VectorBase<float>::CopyFromVec(&v22, &v25, v19, v20, v21);
    v16 += v26;
  }

  if (v16 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("GetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_248.align + 2, "shift == wei_copy->Dim()", v9);
  }

  kaldi::Vector<float>::Destroy(&v25);
}

void sub_189C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::SetParams(void *a1, uint64_t a2)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::Check(a1);
  v4 = *(a2 + 8);
  result = (*(*a1 + 176))(a1);
  if (v4 != result)
  {
    kaldi::KaldiAssertFailure_("SetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_248.nreloc, "wei_src.Dim() == NumParams()", v6);
  }

  v7 = a1[26];
  v8 = a1[27];
  if (v7 != v8)
  {
    v9 = 0;
    while (1)
    {
      v10 = *v7;
      v11 = **v7;
      if (v11)
      {
        LODWORD(v11) = *(v11 + 12) * *(v11 + 8);
      }

      v19 = 0;
      v20 = 0;
      v12 = v11 + v9;
      if ((v11 + v9) > *(a2 + 8))
      {
        break;
      }

      v18 = (*a2 + 4 * v9);
      LODWORD(v19) = v11;
      result = kaldi::CompressedMatrix::CopyRowsFromVec<float>(v10, &v18);
      ++v7;
      v9 = v12;
      if (v7 == v8)
      {
        goto LABEL_10;
      }
    }

LABEL_17:
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v6);
  }

  v12 = 0;
LABEL_10:
  v14 = a1[32];
  v13 = a1[33];
  if (v14 != v13)
  {
    while (1)
    {
      v15 = (*(**v14 + 176))();
      v16 = *v14;
      v19 = 0;
      v20 = 0;
      v17 = v15 + v12;
      if ((v15 + v12) > *(a2 + 8))
      {
        goto LABEL_17;
      }

      v18 = (*a2 + 4 * v12);
      LODWORD(v19) = v15;
      result = (*(*v16 + 192))(v16, &v18);
      ++v14;
      v12 = v17;
      if (v14 == v13)
      {
        goto LABEL_15;
      }
    }
  }

  v17 = v12;
LABEL_15:
  if (v17 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("SetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_248.reserved2, "shift == wei_src.Dim()", v6);
  }

  return result;
}

float kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::SumParams(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = a1[26];
  v7 = a1[27];
  v8 = 0.0;
  while (v6 != v7)
  {
    v9 = *v6++;
    v8 = v8 + kaldi::CompressedMatrix::Sum(v9, a2, a3, a4, a5);
  }

  v11 = a1[32];
  v10 = a1[33];
  while (v11 != v10)
  {
    v12 = *v11++;
    v8 = v8 + (*(*v12 + 208))(v12);
  }

  return v8;
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::PerturbParams()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "PerturbParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 661);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::Info(void *a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v21);
  (*(*a1 + 168))(a1, &v21, 0);
  v2 = a1[26];
  for (i = a1[27]; v2 != i; ++v2)
  {
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "\n## Embedding Table: ", 21);
    kaldi::nnet1::MomentStatistics(&__p, *v2, v5);
    if ((v20 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v20 & 0x80u) == 0)
    {
      v7 = v20;
    }

    else
    {
      v7 = v19;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, p_p, v7);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  v8 = a1[32];
  for (j = a1[33]; v8 != j; v8 += 8)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "\n## Feature Transform: input-dim ", 33);
    v10 = *(*v8 + 8);
    v11 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", output-dim ", 13);
    v12 = *(*v8 + 12);
    v13 = std::ostream::operator<<();
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "\n", 1);
    (*(**v8 + 64))(&__p);
    if ((v20 & 0x80u) == 0)
    {
      v15 = &__p;
    }

    else
    {
      v15 = __p;
    }

    if ((v20 & 0x80u) == 0)
    {
      v16 = v20;
    }

    else
    {
      v16 = v19;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  std::stringbuf::str();
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  std::locale::~locale(v23);
  std::ostream::~ostream();
  return std::ios::~ios();
}

uint64_t kaldi::nnet1::MomentStatistics(kaldi::nnet1 *this, const kaldi::CompressedMatrix *a2)
{
  kaldi::Matrix<float>::Matrix(v12, this);
  v2 = kaldi::ContextDependency::CentralPosition(v12);
  v3 = kaldi::ContextDependency::ContextWidth(v12);
  memset(v11, 0, sizeof(v11));
  kaldi::Vector<float>::Resize(v11, (v3 * v2), 0, v4, v5);
  kaldi::VectorBase<float>::CopyRowsFromMat(v11, v12);
  kaldi::nnet1::MomentStatistics<float>(v11, v6, v7, v8, v9);
  kaldi::Vector<float>::Destroy(v11);
  return kaldi::Matrix<float>::~Matrix(v12);
}

void sub_18A330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  kaldi::Vector<float>::Destroy(&a9);
  kaldi::Matrix<float>::~Matrix(&a12);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::InfoGradient(uint64_t a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "No intermediate gradients for embedding tables, here is the gradient info for the transforms: ", 94);
  v2 = *(a1 + 256);
  for (i = *(a1 + 264); v2 != i; v2 += 8)
  {
    (*(**v2 + 72))(__p);
    if ((v9 & 0x80u) == 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    if ((v9 & 0x80u) == 0)
    {
      v5 = v9;
    }

    else
    {
      v5 = __p[1];
    }

    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v4, v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "\n", 1);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  std::stringbuf::str();
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  std::locale::~locale(v12);
  std::ostream::~ostream();
  return std::ios::~ios();
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::SetTrainOptions(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  *(result + 71) = *(a2 + 23);
  *(result + 56) = v2;
  v3 = *(result + 256);
  for (i = *(result + 264); v3 != i; result = (*(*v6 + 264))(v6, a2))
  {
    v6 = *v3++;
  }

  return result;
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::Check(a1);
  if (*(a2 + 16) != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_298.segname[4], "in.NumCols() == input_dim_", v8);
  }

  if (a4)
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_298.segname[6], "batch_idx == 0", v8);
  }

  v9 = *(a3 + 32);
  v32 = *(a2 + 20);
  kaldi::CuMatrixBase<float>::SetZero(a3);
  if (*(a1 + 460))
  {
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 280), *(a1 + 96));
    LODWORD(v11) = *(a1 + 96);
    if (v11 < 1)
    {
      LODWORD(v14) = 0;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = *(a1 + 280) + v12;
        *(v15 + 32) = v9;
        kaldi::CuMatrix<float>::Resize(v15, v32, *(*(a1 + 152) + 4 * v13), 0, 0);
        v16 = *(a1 + 280);
        v17 = *(*(a1 + 208) + 8 * *(*(a1 + 176) + 4 * v13));
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v36, a2, 0, *(a2 + 20), v14, *(*(a1 + 128) + 4 * v13));
        kaldi::CuMatrixBase<float>::SummarizeVec(v16 + v12, v17, &v36, v18, v19);
        v36 = off_276F40;
        v37 = 0u;
        v38 = 0u;
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v36);
        v14 = (*(*(a1 + 128) + 4 * v13++) + v14);
        v11 = *(a1 + 96);
        v12 += 48;
      }

      while (v13 < v11);
    }

    if (v14 != *(a1 + 8))
    {
      kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_298.addr + 4, "shift == input_dim_", v10);
    }

    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 304), v11);
    if (*(a1 + 96) >= 1)
    {
      v27 = 0;
      v28 = 0;
      do
      {
        v29 = *(a1 + 304) + v27;
        *(v29 + 32) = v9;
        kaldi::nnet1::Component::Propagate(*(*(a1 + 256) + 8 * v28), *(a1 + 280) + v27, v29, 0);
        kaldi::CuMatrixBase<float>::AddMat(a3, *(a1 + 304) + v27, 111, v30, v31, 1.0, 1.0);
        ++v28;
        v27 += 48;
      }

      while (v28 < *(a1 + 96));
    }
  }

  else if (*(a1 + 96) >= 1)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = *(a1 + 152);
    do
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v36, a3, 0, *(a3 + 20), v21, *(v23 + 4 * v20));
      v24 = *(*(a1 + 208) + 8 * *(*(a1 + 176) + 4 * v20));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v33, a2, 0, *(a2 + 20), v22, *(*(a1 + 128) + 4 * v20));
      kaldi::CuMatrixBase<float>::SummarizeVec(&v36, v24, &v33, v25, v26);
      v33 = off_276F40;
      v34 = 0u;
      v35 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v33);
      v36 = off_276F40;
      v37 = 0u;
      v38 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v36);
      v23 = *(a1 + 152);
      v21 = (*(v23 + 4 * v20) + v21);
      v22 = (*(*(a1 + 128) + 4 * v20++) + v22);
    }

    while (v20 < *(a1 + 96));
  }
}

void sub_18A950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void (**a16)())
{
  a16 = off_276F40;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a16);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::SetGradientNormalization(uint64_t a1, uint64_t a2, float a3)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::Check(a1);
  v6 = *(a1 + 256);
  v7 = *(a1 + 264);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 240))(v8, a2, a3);
  }

  if (a2 == 3)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v9, "SetGradientNormalization", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 735);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "RMSPROP is not implemented in word multi embedding yet", 54);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v9);
    }
  }

  else
  {
    *(a1 + 452) = a3;
    *(a1 + 448) = a2;
  }
}

float kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::GetNormalizedLearningRate(uint64_t a1)
{
  if ((*(a1 + 84) & 1) == 0)
  {
    return *(a1 + 56);
  }

  v1 = *(a1 + 464);
  if (v1 < 1)
  {
    return NAN;
  }

  else
  {
    return *(a1 + 56) / v1;
  }
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::AccumGradients()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 762);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::UpdateWeights()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "UpdateWeights", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 846);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Not implemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::GetGradient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::Check(a1);
  v8 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a4, v8, 1, v9, v10);
  v11 = (*(*a1 + 16))(a1);
  v37 = 0u;
  v36 = 0u;
  v35 = off_276F88;
  v38 = 0;
  kaldi::nnet1::Component::Propagate(v11, a2, &v35, 0);
  (*(*v11 + 232))(v11, a2, a3, 0, 0);
  v15 = *(v11 + 232);
  v16 = *(v11 + 240);
  if (v15 == v16)
  {
    v19 = 0;
  }

  else
  {
    v17 = 0;
    do
    {
      v18 = (*v15)[4] * (*v15)[5];
      v33 = 0;
      v34 = 0;
      v19 = v18 + v17;
      if ((v18 + v17) > *(a4 + 8))
      {
        kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v14);
      }

      v32 = *a4 + 4 * v17;
      LODWORD(v33) = v18;
      kaldi::VectorBase<float>::CopyRowsFromMat(&v32, *v15++, v12, v13, v14);
      v17 = v19;
    }

    while (v15 != v16);
  }

  (*(*v11 + 8))(v11);
  if (*(a1 + 460))
  {
    v21 = (*(*a1 + 16))(a1);
    kaldi::nnet1::Component::Propagate(v21, a2, &v35, 0);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    if (*(a1 + 96) < 1)
    {
      if (!v21)
      {
LABEL_15:
        kaldi::Vector<float>::Destroy(&v32);
        goto LABEL_16;
      }
    }

    else
    {
      v22 = 0;
      v23 = 0;
      do
      {
        v24 = *(*(v21 + 256) + 8 * v23);
        (*(*v24 + 224))(v24, *(v21 + 280) + v22, a3, &v32);
        v30 = 0;
        v31 = 0;
        if ((v33 + v19) > *(a4 + 8))
        {
          kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v27);
        }

        v29 = *a4 + 4 * v19;
        LODWORD(v30) = v33;
        kaldi::VectorBase<float>::CopyFromVec(&v29, &v32, v25, v26, v27);
        v19 += v33;
        ++v23;
        v22 += 48;
      }

      while (v23 < *(a1 + 96));
    }

    (*(*v21 + 8))(v21);
    goto LABEL_15;
  }

LABEL_16:
  if (v19 != *(a4 + 8))
  {
    kaldi::KaldiAssertFailure_("GetGradient", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_388.sectname[10], "shift == gradient_out->Dim()", v20);
  }

  return kaldi::CuMatrix<float>::~CuMatrix(&v35);
}

void sub_18AF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::CountZeroCorr(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::EnsureCorrs(a1);
  if (*(a1 + 460) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v19, "CountZeroCorr", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 920);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v19, "Not implemented yet when transforms are used");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v19);
  }

  *a3 = 0;
  v10 = *(a1 + 208);
  v11 = *(a1 + 216);
  v12 = v11 - v10;
  if (v11 != v10)
  {
    v13 = 0;
    v14 = v12 >> 3;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    do
    {
      v15 = **v10;
      if (v15)
      {
        LODWORD(v15) = *(v15 + 12) * *(v15 + 8);
      }

      v13 += v15;
      *a3 = v13;
      v10 += 8;
      --v14;
    }

    while (v14);
  }

  v16 = *(a1 + 232);
  v17 = *(a1 + 240);
  *a2 = 0;
  if (v17 != v16)
  {
    v18 = 0;
    do
    {
      *a3 += kaldi::CuMatrixBase<float>::CountZeros(*(v16 + 8 * v18++), v6, v7, v8, v9);
      v16 = *(a1 + 232);
    }

    while (v18 < (*(a1 + 240) - v16) >> 3);
  }
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::EnsureCorrs(void *a1)
{
  v1 = a1[27] - a1[26];
  if (a1[30] - a1[29] != v1)
  {
    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize(a1 + 29, v1 >> 3);
    if (a1[27] != a1[26])
    {
      operator new();
    }
  }
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::VectorizeWeightsCorrs()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 949);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void *kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::PerturbParams(void *a1, float a2)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::Check(a1);
  memset(&v25[1], 0, 24);
  v25[0] = off_277020;
  v21 = 1729;
  v6 = 5489;
  v22 = 0;
  v23 = 5489;
  v7 = 1;
  for (i = 3; i != 626; ++i)
  {
    v9 = 1812433253 * (v6 ^ (v6 >> 30));
    v6 = v9 + v7;
    *(&v21 + i) = i + v9 - 2;
    ++v7;
  }

  v24 = 0;
  v10 = a1[26];
  for (j = a1[27]; v10 != j; ++v10)
  {
    kaldi::CuVector<float>::Resize(v25, (*(*v10 + 16) * *(*v10 + 20)), 1u, v4, v5);
    kaldi::CuRandom::RandGauss<float>(&v21, v25, 0.0, 1.0);
    v12 = *v10;
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v18, v25, *(*v10 + 20));
    kaldi::CuMatrixBase<float>::AddMat(v12, &v18, 111, v13, v14, a2, 1.0);
    v18 = off_276F40;
    v19 = 0u;
    v20 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v18);
  }

  v16 = a1[32];
  v15 = a1[33];
  while (v16 != v15)
  {
    (*(**v16 + 216))(a2);
    v16 += 8;
  }

  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v21);
  return kaldi::CuVector<float>::~CuVector(v25);
}

void sub_18B3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(va);
  kaldi::CuVector<float>::~CuVector((v7 - 96));
  _Unwind_Resume(a1);
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::Check(a1);
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  v11 = *(a2 + 20);
  *(a1 + 464) = v11;
  if (*(a2 + 16) != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_2E8.segname[14], "input.NumCols() == input_dim_", v10);
  }

  if (*(a3 + 20) != v11)
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_2E8.segname[15], "diff.NumRows() == batch_size", v10);
  }

  if (*(a3 + 16) != *(a1 + 12))
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_2E8.addr, "diff.NumCols() == output_dim_", v10);
  }

  std::vector<kaldi::CuMatrix<float>>::resize((a1 + 328), *(a1 + 96));
  if (*(a1 + 460) == 1 && *(a1 + 96) >= 1)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *(a1 + 328) + v13;
      *(v15 + 32) = a4;
      kaldi::nnet1::Component::Backpropagate(*(*(a1 + 256) + 8 * v14), *(a1 + 280) + v13, *(a1 + 304) + v13, a3, v15, a5);
      v16 = *(*(a1 + 256) + 8 * v14);
      (*(*v16 + 232))(v16, *(a1 + 280) + v13, a3, a4, a5);
      ++v14;
      v13 += 48;
    }

    while (v14 < *(a1 + 96));
  }

  if (*(a1 + 80) > 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(&v43, "AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 787);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v43, "WordMultiVecComponent doesn't support multi-batches yet");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v43);
  }

  memset(v44, 0, sizeof(v44));
  v43 = off_276F40;
  v17 = *(a1 + 232);
  if (*(a1 + 240) != v17)
  {
    v18 = 0;
    do
    {
      kaldi::CuMatrixBase<float>::SetZero(*(v17 + 8 * v18++));
      v17 = *(a1 + 232);
    }

    while (v18 < (*(a1 + 240) - v17) >> 3);
  }

  if (*(a1 + 96) < 1)
  {
    v20 = 0;
  }

  else
  {
    v38 = a3;
    v39 = a4;
    v19 = 0;
    v20 = 0;
    v21 = v11;
    v22 = 0;
    v40 = a1 + 352;
    do
    {
      if (*(a1 + 460) == 1)
      {
        v23 = (*(a1 + 328) + 48 * v19);
      }

      else
      {
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v41, v38, 0, *(v38 + 20), v22, *(*(a1 + 152) + 4 * v19));
        *&v44[0] = v42[0];
        *(v44 + 8) = *&v42[1];
        *(&v44[1] + 1) = v42[3];
        v41 = off_276F40;
        memset(v42, 0, sizeof(v42));
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v41);
        v22 = (*(*(a1 + 152) + 4 * v19) + v22);
        v23 = &v43;
      }

      v24 = *(a1 + 452);
      if (v24 > 0.0)
      {
        *(a1 + 384) = a4;
        kaldi::CuMatrix<float>::operator=(v40, v23);
        v25 = *(a1 + 448);
        if (v25 == 2)
        {
          v27 = *(a1 + 84);
          *(a1 + 432) = a4;
          kaldi::CuMatrix<float>::Resize(a1 + 400, *(a1 + 372), *(a1 + 368), 1u, 0);
          if (v27)
          {
            v31 = v21;
          }

          else
          {
            v31 = 1.0;
          }

          v23 = (a1 + 352);
          kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v40, (a1 + 400), v24 * v31, v28, v29, v30);
        }

        else
        {
          v23 = (a1 + 352);
          if (v25 == 1)
          {
            if (*(a1 + 84))
            {
              v26 = v21;
            }

            else
            {
              v26 = 1.0;
            }

            v23 = (a1 + 352);
            kaldi::nnet1::UpdatableComponent::ClipGradient(v40, v24 * v26);
          }
        }
      }

      v32 = *(*(a1 + 176) + 4 * v19);
      *(*(*(a1 + 232) + 8 * v32) + 32) = a4;
      if (*(*(a1 + 128) + 4 * v19) >= 1)
      {
        v33 = v22;
        v34 = 0;
        do
        {
          v35 = *(*(a1 + 232) + 8 * v32);
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v41, a2, 0, *(a2 + 20), (v20 + v34), 1);
          kaldi::CuMatrixBase<float>::AddIndexedRows(v35, &v41, v23, v36, v37, 1.0);
          v41 = off_276F40;
          memset(v42, 0, sizeof(v42));
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v41);
          ++v34;
        }

        while (v34 < *(*(a1 + 128) + 4 * v19));
        v20 += v34;
        v22 = v33;
        a4 = v39;
      }

      ++v19;
    }

    while (v19 < *(a1 + 96));
  }

  if (v20 != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", &stru_338.sectname[6], "shift == input_dim_", v12);
  }

  v43 = off_276F40;
  memset(v44, 0, sizeof(v44));
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&v43);
}

void sub_18B928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, __int128 a20)
{
  a18 = a9;
  a19 = 0u;
  a20 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(&a18);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::UpdateWeights(uint64_t a1, uint64_t a2, uint64_t a3)
{
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  v9 = *(a1 + 72);
  v10 = *(a1 + 76);
  if (v9 > 0.0 && *(a1 + 460) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "UpdateWeights", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 857);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v17, "Using transform with gradient compression is not supported yet");
    goto LABEL_19;
  }

  v11 = *(a1 + 256);
  v12 = *(a1 + 264);
  while (v11 != v12)
  {
    v13 = *v11++;
    (*(*v13 + 256))(v13, a2, a3);
  }

  v14 = *(a1 + 56);
  if (*(a1 + 84))
  {
    v14 = v14 / *(a1 + 464);
  }

  if (v9 > 0.0)
  {
    if (*(a1 + 80) < 2)
    {
      if (*(a1 + 480) == *(a1 + 472))
      {
        kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::InitResidualAggregator(a1, (a1 + 472));
      }

      kaldi::nnet1::QuantizerResidualAggregator::Quantize((a1 + 472), v10, v9, v6, v7, v8);
      goto LABEL_13;
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(v17, "UpdateWeights", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 868);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v17, "the multi batch gradient quantization does not work yet");
LABEL_19:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

LABEL_13:
  v15 = *(a1 + 208);
  if (*(a1 + 216) != v15)
  {
    v16 = 0;
    do
    {
      kaldi::CuMatrixBase<float>::AddMat(*(v15 + 8 * v16), *(*(a1 + 232) + 8 * v16), 111, v7, v8, *(a1 + 456) * -v14, 1.0);
      ++v16;
      v15 = *(a1 + 208);
    }

    while (v16 < (*(a1 + 216) - v15) >> 3);
  }
}

void kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::VectorizeWeightsCorrs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(a1 + 460) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 957);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "Not implemented yet when transforms are used");
    goto LABEL_14;
  }

  if (*(a1 + 16) == 1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 960);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "Weights are already vectorized");
LABEL_14:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
  }

  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(v13, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 963);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Performing vectorization of WordMultiVecComponent", 49);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v13);
  }

  v7 = *(a1 + 208);
  if (*(a1 + 216) != v7)
  {
    kaldi::CuSubMatrix<float>::CopyDataAndReplaceWithCuSub(v7);
  }

  v8 = (*(*a1 + 176))(a1);
  kaldi::CuSubVector<float>::CuSubVector(v13, a3, 0, v8, v9);
  v10.i32[0] = *(a1 + 456);
  kaldi::CuVectorBase<float>::Set(v13, v10);
  v11 = *(a3 + 16) - v8;
  *(a3 + 8) += 4 * v8;
  *(a3 + 16) = v11;
  *(a3 + 24) = 0;
  kaldi::nnet1::WordMultiVecComponent<kaldi::CuMatrixBase<float>>::EnsureCorrs(a1);
  if (a4[1] - *a4 != 32)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 983);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "veccorrs->size() == 1");
    goto LABEL_14;
  }

  if (*(a1 + 216) != *(a1 + 208))
  {
    v12 = *a4;
    kaldi::CuSubMatrix<float>::CopyDataAndReplaceWithCuSub(*(a1 + 232));
  }

  *(a1 + 16) = 1;
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiLogMessage::KaldiLogMessage(v13, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-word-multivec-component.cc", 994);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Done  vectorization of WordMultiVecComponent", 44);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v13);
  }
}

uint64_t std::vector<kaldi::CuMatrix<float>>::__assign_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((*(result + 16) - *result) >> 4) < a4)
  {
    std::vector<kaldi::CuMatrix<float>>::__vdeallocate(result);
    if (a4 <= 0x555555555555555)
    {
      v9 = 0x5555555555555556 * ((v7[2] - *v7) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v7[2] - *v7) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v10 = 0x555555555555555;
      }

      else
      {
        v10 = v9;
      }

      std::vector<kaldi::CuMatrix<float>>::__vallocate[abi:ne200100](v7, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(result + 8);
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = kaldi::CuMatrix<float>::operator=(v8, v6);
        v6 += 48;
        v8 += 48;
      }

      while (v6 != a3);
      v11 = v7[1];
    }

    if (v11 != v8)
    {
      v15 = v11 - 48;
      v16 = (v11 - 48);
      v17 = (v11 - 48);
      do
      {
        v18 = *v17;
        v17 -= 48;
        result = (*(v18 + 16))(v16);
        v15 -= 48;
        v19 = v16 == v8;
        v16 = v17;
      }

      while (!v19);
    }

    v7[1] = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = a2;
      do
      {
        kaldi::CuMatrix<float>::operator=(v8, v14);
        v14 += 48;
        v8 += 48;
        v13 -= 48;
      }

      while (v13);
      v11 = v7[1];
    }

    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::CuMatrix<float>>,kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(v7, v6 + v12, a3, v11);
    v7[1] = result;
  }

  return result;
}

void std::vector<kaldi::CuMatrix<float>>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      v5 = v3 - 48;
      v6 = v3 - 48;
      v7 = v3 - 48;
      do
      {
        v8 = *v7;
        v7 -= 48;
        (*(v8 + 16))(v6);
        v5 -= 48;
        v9 = v6 == v1;
        v6 = v7;
      }

      while (!v9);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::WordMultiVecComponent<kaldi::CuMatrixBase<float>>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = off_282980;
  *(a1 + 56) = xmmword_21A620;
  *(a1 + 72) = -1082130432;
  *(a1 + 76) = 0x100000003;
  *(a1 + 84) = 0;
  *(a1 + 86) = 0;
  *a1 = off_282C30;
  *(a1 + 88) = off_282D60;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 104, *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 2);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 128, *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 2);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 152, *(a2 + 152), *(a2 + 160), (*(a2 + 160) - *(a2 + 152)) >> 2);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 176, *(a2 + 176), *(a2 + 184), (*(a2 + 184) - *(a2 + 176)) >> 2);
  v4 = *(a2 + 200);
  *(a1 + 208) = 0u;
  *(a1 + 200) = v4;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = off_276F88;
  *(a1 + 392) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 400) = off_276F88;
  *(a1 + 440) = 0;
  *(a1 + 536) = 0;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  v5 = *(a2 + 460);
  *(a1 + 460) = v5;
  if (v5 == 1 && *(a1 + 96) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(a2 + 256) + 8 * v6);
      v10 = (*(*v7 + 16))(v7);
      std::vector<kaldi::EventMap *>::push_back[abi:ne200100](a1 + 256, &v10);
      ++v6;
    }

    while (v6 < *(a1 + 96));
  }

  if (a1 != a2)
  {
    std::vector<kaldi::CuMatrix<float>>::__assign_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 280, *(a2 + 280), *(a2 + 288), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 288) - *(a2 + 280)) >> 4));
    std::vector<kaldi::CuMatrix<float>>::__assign_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 304, *(a2 + 304), *(a2 + 312), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 312) - *(a2 + 304)) >> 4));
    std::vector<kaldi::CuMatrix<float>>::__assign_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 328, *(a2 + 328), *(a2 + 336), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 336) - *(a2 + 328)) >> 4));
  }

  kaldi::CuMatrix<float>::operator=(a1 + 352, a2 + 352);
  kaldi::CuMatrix<float>::operator=(a1 + 400, a2 + 400);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 452) = *(a2 + 452);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 464) = *(a2 + 464);
  std::vector<std::unique_ptr<kaldi::CompressedMatrix>>::resize((a1 + 208), (*(a2 + 216) - *(a2 + 208)) >> 3);
  if (*(a1 + 216) != *(a1 + 208))
  {
    v8 = **(a2 + 208);
    operator new();
  }

  if (*(a2 + 480) != *(a2 + 472))
  {
    kaldi::nnet1::WordMultiVecComponent<kaldi::CompressedMatrix>::InitResidualAggregator(a1, (a1 + 472));
  }

  *(a1 + 544) = *(a2 + 544);
  return a1;
}

void sub_18C564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10, void **a11, uint64_t a12)
{
  v14 = *a9;
  if (*a9)
  {
    *(v12 + 20) = v14;
    operator delete(v14);
  }

  v15 = *a10;
  if (*a10)
  {
    *(v12 + 17) = v15;
    operator delete(v15);
  }

  v16 = *a11;
  if (*a11)
  {
    *(v12 + 14) = v16;
    operator delete(v16);
  }

  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator(a12);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v12);
  _Unwind_Resume(a1);
}

uint64_t kaldi::CompressedMatrix::CompressedMatrix<float>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  kaldi::Matrix<float>::Matrix<float>(v7, a2, 111, a4, a5);
  kaldi::CompressedMatrix::CopyFromMat<float>(a1, v7);
  kaldi::Matrix<float>::~Matrix(v7);
  return a1;
}

void sub_18C6DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<int,std::pair<int,int>>,std::__map_value_compare<int,std::__value_type<int,std::pair<int,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::pair<int,int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void std::vector<std::unique_ptr<kaldi::CompressedMatrix>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<kaldi::CompressedMatrix>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::unique_ptr<kaldi::CompressedMatrix>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, kaldi::CompressedMatrix **a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 1;
    do
    {
      v6 = *v5;
      *v5 = 0;
      if (v6)
      {
        std::default_delete<kaldi::CompressedMatrix>::operator()[abi:ne200100](v5, v6);
      }
    }

    while (v5-- != a2);
  }

  *(a1 + 8) = a2;
}

void std::vector<std::unique_ptr<kaldi::CompressedMatrix>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v14[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    std::__split_buffer<std::unique_ptr<kaldi::CompressedMatrix>>::~__split_buffer(v14);
  }
}

uint64_t std::__split_buffer<std::unique_ptr<kaldi::CompressedMatrix>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<kaldi::CompressedMatrix>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<kaldi::CompressedMatrix>>::__destruct_at_end[abi:ne200100](uint64_t a1, void *a2)
{
  result = *(a1 + 16);
  while (result != a2)
  {
    v6 = *--result;
    v5 = v6;
    *(a1 + 16) = result;
    *result = 0;
    if (v6)
    {
      std::default_delete<kaldi::CompressedMatrix>::operator()[abi:ne200100](result, v5);
      result = *(a1 + 16);
    }
  }

  return result;
}

void std::default_delete<kaldi::CompressedMatrix>::operator()[abi:ne200100](int a1, kaldi::CompressedMatrix *this)
{
  if (this)
  {
    kaldi::CompressedMatrix::Destroy(this);

    operator delete();
  }
}

void DSP::LP(uint64_t *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  std::vector<double>::vector[abi:ne200100](&__p, a2 + 1);
  if (v15 != __p)
  {
    v7 = 0;
    v8 = 0;
    v9 = (v5 - v6) >> 3;
    do
    {
      v10 = *a1;
      cblas_ddot_NEWLAPACK();
      v11 = __p;
      v12 = v15;
      *(__p + v7) = v13;
      ++v8;
      v7 += 8;
      LODWORD(v9) = v9 - 1;
    }

    while (v8 < (v12 - v11) >> 3);
  }

  DSP::levinson_durbin(&__p, a3);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }
}

void sub_18CB48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DSP::levinson_durbin(double **a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1] - *a1;
  if (**a1 == 0.0)
  {
    __p[0] = 0;
    std::vector<double>::vector[abi:ne200100](a2, v3 >> 3);
    **a2 = 0x3FF0000000000000;
  }

  else
  {
    std::vector<double>::vector[abi:ne200100](a2, (v3 >> 3));
    std::vector<double>::vector[abi:ne200100](__p, (v3 >> 3));
    v5 = *a2;
    **a2 = 0x3FF0000000000000;
    v6 = __p[0];
    *__p[0] = 0x3FF0000000000000;
    if (((v3 >> 3) - 1) >= 1)
    {
      v7 = 0;
      v8 = *a1;
      v9 = **a1;
      v10 = (v3 >> 3);
      v11 = 1;
      do
      {
        if (v11 < 2)
        {
          v16 = v8[v11] / v9;
          *&v5[v11] = v16;
          v17 = -v16;
        }

        else
        {
          v12 = 0.0;
          v13 = v6 + 1;
          v14 = v7;
          do
          {
            v15 = *v13++;
            v12 = v12 + v15 * v8[v14--];
          }

          while (v14);
          v16 = (v8[v11] - v12) / v9;
          *&v5[v11] = v16;
          v17 = -v16;
          v18 = 1;
          v19 = v7;
          do
          {
            *&v5[v18] = v6[v18] + v17 * v6[v19];
            ++v18;
            --v19;
          }

          while (v19);
        }

        v9 = v9 * (v17 * v16 + 1.0);
        v20 = (v3 >> 3);
        v21 = v6;
        v22 = v5;
        do
        {
          v23 = *v22++;
          *v21++ = v23;
          --v20;
        }

        while (v20);
        ++v11;
        ++v7;
      }

      while (v11 != v10);
      v24 = (v5 + 1);
      v25 = v10 - 1;
      do
      {
        *v24 = -*v24;
        ++v24;
        --v25;
      }

      while (v25);
    }

    *v5 = 0x3FF0000000000000;
    __p[1] = v6;
    operator delete(v6);
  }
}

void sub_18CD08(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<float>::insert(void *a1, char *__src, float *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 2) + 1;
    if (v11 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v27 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v14);
    }

    v24 = 0;
    v25 = 4 * v15;
    v26 = (4 * v15);
    std::__split_buffer<float>::emplace_back<float>(&v24, a3);
    v16 = v25;
    memcpy(v26, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v25;
    *&v26 = v26 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 4;
  }

  else
  {
    v8 = __src + 4;
    if (v6 < 4)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 4;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 4, __src, v6 - v8);
    }

    *v4 = *a3;
  }

  return v4;
}

void sub_18CEAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DSP::firfilter(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = (v6 - *a1) >> 3;
  __p = 0;
  v17 = 0;
  v18 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, v5, v6, v7);
  v8 = v17 - 8;
  if (__p != v17 && v8 > __p)
  {
    v10 = __p + 8;
    do
    {
      v11 = *(v10 - 1);
      *(v10 - 1) = *v8;
      *v8 = v11;
      v8 -= 8;
      v12 = v10 >= v8;
      v10 += 8;
    }

    while (!v12);
  }

  std::vector<double>::vector[abi:ne200100](a3, (a2[1] - *a2) >> 3);
  if (a2[1] != *a2)
  {
    v13 = 0;
    v14 = 1;
    do
    {
      cblas_ddot_NEWLAPACK();
      *(*a3 + 8 * v13) = v15;
      ++v14;
      ++v13;
    }

    while (v13 < (a2[1] - *a2) >> 3);
  }

  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }
}

void sub_18D010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DSP::fft(DSP *this, unint64_t a2, int a3)
{
  v3 = 2 * a2;
  if (2 * a2)
  {
    v5 = 1;
    v6 = 1;
    do
    {
      if (v6 > v5)
      {
        v7 = (this + 4 * v6);
        v8 = *v7;
        v9 = (this + 4 * v5);
        *v7 = *v9;
        *v9 = v8;
        v10 = v7[1];
        v7[1] = v9[1];
        v9[1] = v10;
      }

      if (a2 < 2 || v6 <= a2)
      {
        v11 = a2;
      }

      else
      {
        v11 = a2;
        do
        {
          v12 = v11;
          v6 -= v11;
          v11 >>= 1;
        }

        while (v12 >= 4 && v6 > v11);
      }

      v6 += v11;
      v5 += 2;
    }

    while (v5 < v3);
    if (v3 >= 3)
    {
      v13 = a3;
      v14 = 2;
      do
      {
        v15 = 2 * v14;
        v16 = sin(6.28318531 / v14 * v13 * 0.5);
        v17 = sin(6.28318531 / v14 * v13);
        if (v14)
        {
          v18 = v16 * (v16 * -2.0);
          v19 = 4 * v14;
          v20 = 1.0;
          v21 = 0.0;
          v22 = this;
          v23 = 2;
          v24 = 1;
          do
          {
            v25 = -v21;
            if (v24 <= v3)
            {
              v26 = v22;
              v27 = v23;
              do
              {
                v28 = (v26 + v19);
                v29 = *(v26 + v19 + 4);
                v30 = *(v26 + v19 + 8);
                v31 = v25 * v30 + v20 * v29;
                *&v29 = v21 * v29 + v20 * v30;
                v28[1] = *(v26 + 1) - v31;
                LODWORD(v30) = *(v26 + 2);
                v28[2] = *&v30 - *&v29;
                *(v26 + 1) = *(v26 + 1) + v31;
                *(v26 + 2) = *&v30 + *&v29;
                v27 += v15;
                v26 = (v26 + 8 * v14);
              }

              while (v27 - 1 <= v3);
            }

            v32 = v17 * v20;
            v20 = v20 + v17 * v25 + v20 * v18;
            v24 += 2;
            v21 = v21 + v32 + v21 * v18;
            v23 += 2;
            v22 = (v22 + 8);
          }

          while (v24 < v14);
        }

        v14 *= 2;
      }

      while (v3 > v15);
    }
  }
}

void *std::endl[abi:ne200100]<char,std::char_traits<char>>(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, &std::ctype<char>::id);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void DSP::high_pass_filter(unint64_t *a1@<X0>, char **a2@<X1>, char **a3@<X8>)
{
  std::vector<double>::resize(a2, (((a1[1] - *a1) >> 3) >> 1) + ((a2[1] - *a2) >> 3), a2[1] - 1);
  v6 = *a2;
  std::vector<double>::vector[abi:ne200100](&__p, (a1[1] - *a1) >> 3);
  std::vector<double>::__insert_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(a2, *a2, __p, v24, (v24 - __p) >> 3);
  std::vector<double>::vector[abi:ne200100](a3, (a2[1] - *a2) >> 3);
  v8 = *a1;
  v7 = a1[1];
  v9 = v7 - *a1;
  if (v7 != *a1)
  {
    v10 = (v7 - 8);
    if (v10 > v8)
    {
      v11 = v8 + 8;
      do
      {
        v12 = *(v11 - 8);
        *(v11 - 8) = *v10;
        *v10-- = v12;
        v13 = v11 >= v10;
        v11 += 8;
      }

      while (!v13);
    }
  }

  if (a2[1] == *a2)
  {
    v17 = *a3;
  }

  else
  {
    v14 = 0;
    v15 = 1;
    do
    {
      v16 = *a1;
      cblas_ddot_NEWLAPACK();
      v17 = *a3;
      *&(*a3)[8 * v14] = v18;
      ++v15;
      ++v14;
    }

    while (v14 < (a2[1] - *a2) >> 3);
    v9 = a1[1] - *a1;
  }

  v19 = ((v9 >> 3) * 1.5);
  if (v19)
  {
    v20 = &v17[8 * v19];
    v21 = a3[1];
    v22 = v21 - v20;
    if (v21 != v20)
    {
      memmove(v17, v20, v21 - v20);
    }

    a3[1] = &v17[v22];
  }

  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }
}

void sub_18D49C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DSP::high_pass_filter(unint64_t *a1@<X0>, uint64_t *a2@<X1>, char **a3@<X8>)
{
  std::vector<short>::resize(a2, (((a1[1] - *a1) >> 3) >> 1) + ((a2[1] - *a2) >> 1), (a2[1] - 2));
  v6 = (a1[1] - *a1) >> 3;
  *&__p = **a2;
  std::vector<double>::vector[abi:ne200100](&v35, v6);
  std::vector<short>::__insert_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(a2, *a2, v35, v36, (v36 - v35) >> 3);
  v7 = *a2;
  v8 = a2[1];
  v9 = (v8 - *a2) >> 1;
  v33 = 0;
  v34 = 0;
  *&__p = 0.0;
  std::vector<double>::__init_with_size[abi:ne200100]<std::__wrap_iter<short *>,std::__wrap_iter<short *>>(&__p, v7, v8, v9);
  std::vector<short>::vector[abi:ne200100](a3, (a2[1] - *a2) >> 1);
  v12 = *a1;
  v11 = a1[1];
  v13 = v11 - *a1;
  if (v11 != *a1)
  {
    v14 = (v11 - 8);
    if (v14 > v12)
    {
      v15 = v12 + 8;
      do
      {
        v10.i64[0] = *(v15 - 8);
        *(v15 - 8) = *v14;
        *v14-- = v10.i64[0];
        v16 = v15 >= v14;
        v15 += 8;
      }

      while (!v16);
    }
  }

  v17 = __p;
  if (v33 == __p)
  {
    v26 = *a3;
  }

  else
  {
    v18 = 0;
    v19 = 1;
    v10.i32[0] = 1191181824;
    v31 = v10;
    do
    {
      v20 = v18 + 1;
      v21 = *a1;
      cblas_ddot_NEWLAPACK();
      *v23.i32 = v22;
      v24.i64[0] = 0x8000000080000000;
      v24.i64[1] = 0x8000000080000000;
      v25 = *vbslq_s8(v24, v31, v23).i32;
      if (fabs(v22) > 32767.0)
      {
        v22 = v25;
      }

      v26 = *a3;
      *&(*a3)[2 * v18] = v22;
      v17 = __p;
      ++v19;
      ++v18;
    }

    while (v20 < (v33 - __p) >> 3);
    v13 = a1[1] - *a1;
  }

  v27 = ((v13 >> 3) * 1.5);
  if (v27)
  {
    v28 = &v26[2 * v27];
    v29 = a3[1];
    v30 = v29 - v28;
    if (v29 != v28)
    {
      memmove(v26, v28, v29 - v28);
      v17 = __p;
    }

    a3[1] = &v26[v30];
  }

  if (v17)
  {
    v33 = v17;
    operator delete(v17);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }
}

void sub_18D710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<short>::resize(void *a1, unint64_t a2, __int16 *a3)
{
  v3 = (a1[1] - *a1) >> 1;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    std::vector<short>::__append(a1, a2 - v3, a3);
  }
}

void DSP::resample(void *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a2 == a3)
  {
    *a4 = *a1;
    *(a4 + 16) = a1[2];
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
  }

  else
  {
    v102 = 0;
    v103 = 0;
    v104 = 0;
    v99 = 0;
    v100 = 0;
    v101 = 0;
    DSP::get_resampling_highpass_iir_filter_coefficients(a2, a3, &v102, &v99);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    if (a2 <= a3)
    {
      v35 = *a1;
      if (a1[1] - *a1 < 3uLL)
      {
        v41 = 0;
      }

      else
      {
        *v8.i64 = a2;
        v36 = 0.0;
        v8.i32[0] = 1191181824;
        v91 = v8;
        do
        {
          v37 = vcvtmd_s64_f64(v36);
          v38 = (v35 + 2 * v37);
          *v9.i64 = v38[1];
          v39 = (v36 - v37) * *v9.i64 + (1.0 - (v36 - v37)) * *v38;
          *v9.i32 = v39;
          v40.i64[0] = 0x8000000080000000;
          v40.i64[1] = 0x8000000080000000;
          *v9.i64 = *vbslq_s8(v40, v91, v9).i32;
          if (fabs(v39) > 32767.0)
          {
            v39 = *v9.i64;
          }

          LOWORD(__dst) = v39;
          std::vector<short>::push_back[abi:ne200100](a4, &__dst);
          v36 = a2 / a3 + v36;
          v35 = *a1;
        }

        while (v36 + 1.0 < ((a1[1] - *a1) >> 1));
        v41 = (*(a4 + 8) - *a4) >> 1;
      }

      v47 = v103 - v102;
      v48 = ((v103 - v102) << 28) + 0x100000000;
      LOWORD(__dst) = 0;
      std::vector<short>::resize(a4, v41 + (v48 >> 32), &__dst);
      std::vector<double>::vector[abi:ne200100](&__dst, (*(a4 + 8) - *a4) >> 1);
      __p = 0;
      v95 = 0;
      v96 = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, v99, v100, (v100 - v99) >> 3);
      if (__p != v95)
      {
        v49 = v95 - 8;
        if (v95 - 8 > __p)
        {
          v50 = __p + 8;
          do
          {
            v51 = *(v50 - 1);
            *(v50 - 1) = *v49;
            *v49 = v51;
            v49 -= 8;
            v21 = v50 >= v49;
            v50 += 8;
          }

          while (!v21);
        }
      }

      v53 = __dst;
      v52 = v98;
      if (v98 != __dst)
      {
        v54 = 0;
        v55 = 0;
        v56 = (v103 - v102) >> 3;
        do
        {
          v57 = v55 + 1;
          if (v56 < 1)
          {
            v61 = 0.0;
          }

          else
          {
            v58 = 0;
            if (v57 >= v56)
            {
              v59 = v56;
            }

            else
            {
              v59 = v55 + 1;
            }

            v60 = (*a4 + v54);
            v61 = 0.0;
            do
            {
              v62 = *v60--;
              v61 = v61 + v62 * *(v102 + v58++);
            }

            while (v58 < v59);
          }

          cblas_ddot_NEWLAPACK();
          v53 = __dst;
          *(__dst + v55) = v61 - v63;
          v52 = v98;
          v54 += 2;
          ++v55;
        }

        while (v57 < (v98 - v53) >> 3);
      }

      v64 = v48 >> 32;
      if ((v47 << 28) <= 0xFFFFFFFEFFFFFFFFLL)
      {
        v65 = &v53[8 * v64];
        v66 = v52 - v65;
        if (v52 != v65)
        {
          memmove(v53, v65, v52 - v65);
        }

        v98 = &v53[v66];
      }

      std::vector<short>::resize(a4, ((*(a4 + 8) - *a4) >> 1) - v64);
      v69 = __dst;
      if (v98 != __dst)
      {
        v70 = (v98 - __dst) >> 3;
        v71 = *a4;
        if (v70 <= 1)
        {
          v70 = 1;
        }

        v67.i32[0] = 1191181824;
        v72.i64[0] = 0x8000000080000000;
        v72.i64[1] = 0x8000000080000000;
        v73 = __dst;
        do
        {
          v74 = *v73++;
          v75 = v74;
          *v68.i32 = v74;
          v68 = vbslq_s8(v72, v67, v68);
          *v68.i64 = *v68.i32;
          if (fabs(v74) > 32767.0)
          {
            v75 = *v68.i64;
          }

          *v71++ = v75;
          --v70;
        }

        while (v70);
      }

      if (__p)
      {
        v95 = __p;
        operator delete(__p);
        v69 = __dst;
      }
    }

    else
    {
      v10 = (a1[1] - *a1) >> 1;
      __p = 0;
      std::vector<double>::vector[abi:ne200100](&__dst, v10);
      if (v102 == v103 || v99 == v100)
      {
        v42 = *a1;
        v43 = a1[1] - *a1;
        if (v43)
        {
          v44 = v43 >> 1;
          v45 = __dst;
          if (v44 <= 1)
          {
            v44 = 1;
          }

          do
          {
            v46 = *v42++;
            *v45++ = v46;
            --v44;
          }

          while (v44);
        }
      }

      else
      {
        v14 = v103 - v102;
        v15 = ((v103 - v102) << 28) + 0x100000000;
        v16 = ((a1[1] - *a1) >> 1) + (v15 >> 32);
        LOWORD(__p) = 0;
        std::vector<short>::resize(a1, v16, &__p);
        v17 = v15 >> 32;
        __p = 0;
        std::vector<double>::resize(&__dst, (v15 >> 32) + ((v98 - __dst) >> 3), &__p);
        __p = 0;
        v95 = 0;
        v96 = 0;
        std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, v99, v100, (v100 - v99) >> 3);
        if (__p != v95)
        {
          v18 = v95 - 8;
          if (v95 - 8 > __p)
          {
            v19 = __p + 8;
            do
            {
              v20 = *(v19 - 1);
              *(v19 - 1) = *v18;
              *v18 = v20;
              v18 -= 8;
              v21 = v19 >= v18;
              v19 += 8;
            }

            while (!v21);
          }
        }

        v22 = a1[1];
        if (v22 == *a1)
        {
          v33 = __dst;
          v34 = a1[1];
        }

        else
        {
          v89 = v14;
          v90 = v15 >> 32;
          v23 = 0;
          v24 = 0;
          v25 = (v103 - v102) >> 3;
          v22 = *a1;
          do
          {
            v26 = v24 + 1;
            if (v25 < 1)
            {
              v30 = 0.0;
            }

            else
            {
              v27 = 0;
              if (v26 >= v25)
              {
                v28 = v25;
              }

              else
              {
                v28 = v24 + 1;
              }

              v29 = (v22 + v23);
              v30 = 0.0;
              do
              {
                v31 = *v29--;
                v30 = v30 + v31 * *(v102 + v27++);
              }

              while (v27 < v28);
            }

            cblas_ddot_NEWLAPACK();
            v33 = __dst;
            *(__dst + v24) = v30 - v32;
            v22 = *a1;
            v34 = a1[1];
            v23 += 2;
            ++v24;
          }

          while (v26 < (v34 - *a1) >> 1);
          v14 = v89;
          v17 = v90;
        }

        if ((v14 << 28) <= 0xFFFFFFFEFFFFFFFFLL)
        {
          v76 = &v33[8 * v17];
          v77 = v98 - v76;
          if (v98 != v76)
          {
            memmove(v33, v76, v98 - v76);
            v22 = *a1;
            v34 = a1[1];
          }

          v98 = &v33[v77];
        }

        std::vector<short>::resize(a1, ((v34 - v22) >> 1) - v17);
        if (__p)
        {
          v95 = __p;
          operator delete(__p);
        }
      }

      *v12.i64 = a3;
      v78 = a2 / a3;
      *v11.i64 = v78;
      v69 = __dst;
      if (v78 == *v11.i64)
      {
        if (v98 != __dst)
        {
          v79 = 0.0;
          v12.i32[0] = 1191181824;
          v92 = v12;
          v80 = 0.0;
          do
          {
            v81 = v69[v79];
            *v13.i32 = v81;
            v82.i64[0] = 0x8000000080000000;
            v82.i64[1] = 0x8000000080000000;
            *v13.i64 = *vbslq_s8(v82, v92, v13).i32;
            if (fabs(v81) > 32767.0)
            {
              v81 = *v13.i64;
            }

            LOWORD(__p) = v81;
            std::vector<short>::push_back[abi:ne200100](a4, &__p);
            v80 = v78 + v80;
            v79 = round(v80);
            v69 = __dst;
          }

          while (v79 < ((v98 - __dst) >> 3));
        }
      }

      else if ((v98 - __dst) >= 9)
      {
        v83 = 0.0;
        v11.i32[0] = 1191181824;
        v93 = v11;
        do
        {
          v84 = vcvtmd_s64_f64(v83);
          v85 = v83 - v84;
          v86 = &v69[v84];
          v13.i64[0] = *v86;
          v87 = v85 * v86[1] + (1.0 - v85) * *v86;
          *v13.i32 = v87;
          v88.i64[0] = 0x8000000080000000;
          v88.i64[1] = 0x8000000080000000;
          *v13.i64 = *vbslq_s8(v88, v93, v13).i32;
          if (fabs(v87) > 32767.0)
          {
            v87 = *v13.i64;
          }

          LOWORD(__p) = v87;
          std::vector<short>::push_back[abi:ne200100](a4, &__p);
          v83 = v78 + v83;
          v69 = __dst;
        }

        while (v83 + 1.0 < ((v98 - __dst) >> 3));
      }
    }

    if (v69)
    {
      v98 = v69;
      operator delete(v69);
    }

    if (v99)
    {
      v100 = v99;
      operator delete(v99);
    }

    if (v102)
    {
      v103 = v102;
      operator delete(v102);
    }
  }
}