void sub_1C30CFE68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, kaldi::nnet1::UpdatableComponent *a12, void **a13, uint64_t a14)
{
  v23 = *a13;
  if (*a13)
  {
    *(v14 + 81) = v23;
    operator delete(v23);
  }

  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a14);
  kaldi::CuVector<float>::~CuVector(v18);
  kaldi::CuMatrix<float>::~CuMatrix(v21);
  kaldi::CuMatrix<float>::~CuMatrix(v20);
  kaldi::CuMatrix<float>::~CuMatrix(v19);
  kaldi::CuMatrix<float>::~CuMatrix(a10);
  kaldi::CuMatrix<float>::~CuMatrix(a11);
  kaldi::CuMatrix<float>::~CuMatrix(v17);
  kaldi::CuMatrix<float>::~CuMatrix(v16);
  kaldi::CuMatrix<float>::~CuMatrix(v15);
  kaldi::nnet1::RecurrentAttentionBaseComponent::~RecurrentAttentionBaseComponent(v14, off_1F42C8498);
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
    MEMORY[0x1C692AE10]();
  }

  v8 = *(this + 80);
  if (v8)
  {
    *(this + 81) = v8;
    operator delete(v8);
  }

  v9 = (this + 616);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
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

  JUMPOUT(0x1C692AE10);
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
  v33 = 0;
  v34 = 0uLL;
  v6 = a2 + 4;
  v7 = a1 + 12;
  v8 = a1 + 8;
  while (1)
  {
    if ((*(v6 + *(*a2 - 24)) & 2) != 0)
    {
      goto LABEL_42;
    }

    kaldi::ReadToken(a2, 0, &v33, a4, a5);
    if (SHIBYTE(v34) < 0)
    {
      if (v34 != 15)
      {
        if (v34 != 22)
        {
          goto LABEL_35;
        }

        v12 = *v33 == 0x53656372756F533CLL && v33[1] == 0x656D694465746174;
        v13 = v12 && *(v33 + 14) == 0x3E6E6F69736E656DLL;
        v11 = v8;
        if (!v13)
        {
          goto LABEL_35;
        }

        goto LABEL_31;
      }

      v14 = v33;
    }

    else
    {
      if (HIBYTE(v34) != 15)
      {
        if (HIBYTE(v34) != 22)
        {
          goto LABEL_33;
        }

        v10 = v33 == 0x53656372756F533CLL && v34 == 0x656D694465746174 && *(&v34 + 6) == 0x3E6E6F69736E656DLL;
        v11 = v8;
        if (!v10)
        {
          goto LABEL_43;
        }

        goto LABEL_31;
      }

      v14 = &v33;
    }

    v15 = *v14;
    v16 = *(v14 + 7);
    v17 = v15 == 0x6574744178614D3CLL && v16 == 0x3E736E6F69746E65;
    v11 = v7;
    if (!v17)
    {
      if ((HIBYTE(v34) & 0x80) != 0)
      {
LABEL_35:
        if (v34 == 12)
        {
          v18 = v33;
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        if (HIBYTE(v34) == 12)
        {
          v18 = &v33;
LABEL_37:
          v19 = *v18;
          v20 = *(v18 + 2);
          if (v19 == 0x6E6F706D6F432F3CLL && v20 == 1047817829)
          {
LABEL_42:
            memset(v31, 0, sizeof(v31));
            v30 = 0;
            kaldi::ExpectToken(a2, 0, "<SourceDotTransform>");
            kaldi::ReadToken(a2, 0, v31, v22, v23);
            v24 = kaldi::nnet1::Component::MarkerToComponentType(v31);
            kaldi::ExpectToken(a2, 0, "<InputDim>");
            kaldi::ReadBasicType<int>(a2, 0, &v30 + 4);
            kaldi::ExpectToken(a2, 0, "<OutputDim>");
            kaldi::ReadBasicType<int>(a2, 0, &v30);
            kaldi::nnet1::Component::NewComponentOfType(v24);
          }
        }
      }

LABEL_43:
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&v32, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 129);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "Unknown token ", 14);
      if (v34 >= 0)
      {
        v26 = &v33;
      }

      else
      {
        v26 = v33;
      }

      if (v34 >= 0)
      {
        v27 = HIBYTE(v34);
      }

      else
      {
        v27 = v34;
      }

      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v26, v27);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ", a typo in config?", 19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " (SourceStateDimension|MaxAttentions)", 37);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v32);
    }

LABEL_31:
    kaldi::ReadBasicType<int>(a2, 0, v11);
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }
}

void kaldi::nnet1::GlobalRecurrentAttention::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  v37 = 0;
  v38 = 0uLL;
  v6 = a1 + 12;
  v7 = a1 + 8;
  while (1)
  {
    if (kaldi::Peek(a2, a3) != 60)
    {
      goto LABEL_42;
    }

    kaldi::ReadToken(a2, a3, &v37, v8, v9);
    if ((SHIBYTE(v38) & 0x80000000) == 0)
    {
      break;
    }

    if (v38 == 15)
    {
      v15 = v37;
      goto LABEL_26;
    }

    if (v38 != 22)
    {
      goto LABEL_35;
    }

    v13 = *v37 == 0x53656372756F533CLL && v37[1] == 0x656D694465746174;
    v14 = v13 && *(v37 + 14) == 0x3E6E6F69736E656DLL;
    v12 = v7;
    if (!v14)
    {
      goto LABEL_35;
    }

LABEL_31:
    kaldi::ReadBasicType<int>(a2, a3, v12);
  }

  if (HIBYTE(v38) != 15)
  {
    if (HIBYTE(v38) != 22)
    {
      goto LABEL_33;
    }

    v11 = v37 == 0x53656372756F533CLL && v38 == 0x656D694465746174 && *(&v38 + 6) == 0x3E6E6F69736E656DLL;
    v12 = v7;
    if (!v11)
    {
      goto LABEL_50;
    }

    goto LABEL_31;
  }

  v15 = &v37;
LABEL_26:
  v16 = *v15;
  v17 = *(v15 + 7);
  v18 = v16 == 0x6574744178614D3CLL && v17 == 0x3E736E6F69746E65;
  v12 = v6;
  if (v18)
  {
    goto LABEL_31;
  }

  if ((HIBYTE(v38) & 0x80) == 0)
  {
LABEL_33:
    if (HIBYTE(v38) == 12)
    {
      v19 = &v37;
      goto LABEL_37;
    }

    goto LABEL_50;
  }

LABEL_35:
  if (v38 != 12)
  {
    goto LABEL_50;
  }

  v19 = v37;
LABEL_37:
  v20 = *v19;
  v21 = *(v19 + 2);
  if (v20 != 0x6E6F706D6F432F3CLL || v21 != 1047817829)
  {
LABEL_50:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v36, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 192);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "Unrecognized token ", 19);
    if (v38 >= 0)
    {
      v34 = &v37;
    }

    else
    {
      v34 = v37;
    }

    if (v38 >= 0)
    {
      v35 = HIBYTE(v38);
    }

    else
    {
      v35 = v38;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v34, v35);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v36);
  }

LABEL_42:
  kaldi::ExpectToken(a2, a3, "<SourceDotTransform>");
  v23 = kaldi::nnet1::Component::Read(a2, a3);
  if (!v23)
  {
    *(a1 + 176) = 0;
LABEL_58:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v36, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 196);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "read source dot transform failed", 32);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v36);
  }

  v24 = **v23;
  *(a1 + 176) = v25;
  if (!v25)
  {
    goto LABEL_58;
  }

  kaldi::ExpectToken(a2, a3, "</Component>");
  kaldi::ExpectToken(a2, a3, "<TargetDotTransform>");
  v26 = kaldi::nnet1::Component::Read(a2, a3);
  if (!v26)
  {
    *(a1 + 184) = 0;
LABEL_60:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v36, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 200);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "read target dot transform failed", 32);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v36);
  }

  v27 = **v26;
  *(a1 + 184) = v28;
  if (!v28)
  {
    goto LABEL_60;
  }

  kaldi::ExpectToken(a2, a3, "</Component>");
  kaldi::nnet1::Nnet::Read(*(a1 + 192), a2, a3);
  kaldi::nnet1::Nnet::ValidateNnet(*(a1 + 192), v29, v30, v31, v32);
  if ((kaldi::nnet1::Nnet::IsRnn(*(a1 + 192)) & 1) == 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v36, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 205);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "it doesn't make sense to use a non-reccurent network here", 57);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v36);
  }

  (*(*a1 + 296))(a1);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37);
  }
}

void sub_1C30D1064(_Unwind_Exception *exception_object)
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
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 8));
  kaldi::WriteToken(a2, a3, "<MaxAttentions>", v8, v9);
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 12));

  return kaldi::WriteToken(a2, a3, "</Component>", v10, v11);
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
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v9);
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
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v13);
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
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v17);
  }

  v20 = (*a2 + 4 * v18);
  LODWORD(v21) = v24;
  kaldi::VectorBase<float>::CopyFromVec(&v20, &v23, v15, v16, v17);
  if (v24 + v18 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("GetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 0xF6, "shift == wei_copy->Dim()", v19);
  }

  kaldi::Vector<float>::Destroy(&v23);
}

void sub_1C30D1528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v6);
  }

  v15 = *a2 + 4 * v10;
  LODWORD(v16) = v12;
  kaldi::nnet1::Nnet::SetParams(v11, &v15);
  result = kaldi::nnet1::Nnet::NumParams(*(a1 + 192));
  if (result + v10 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("SetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 0x101, "shift == wei_src.Dim()", v14);
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
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "\n## Source Dot Transform: input-dim ", 36);
  v3 = MEMORY[0x1C692A960](v2, *(*(this + 22) + 8));
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, ", output-dim ", 13);
  v5 = MEMORY[0x1C692A960](v4, *(*(this + 22) + 12));
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
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "\n## Target Dot Transform: input-dim ", 36);
  v11 = MEMORY[0x1C692A960](v10, *(*(this + 23) + 8));
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", output-dim ", 13);
  v13 = MEMORY[0x1C692A960](v12, *(*(this + 23) + 12));
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
  v28 = *MEMORY[0x1E69E54E8];
  *(&v28 + *(v28 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v29 = MEMORY[0x1E69E5548] + 16;
  if (v31 < 0)
  {
    operator delete(v30[7].__locale_);
  }

  v29 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v30);
  std::ostream::~ostream();
  return MEMORY[0x1C692AD30](&v32);
}

void sub_1C30D1CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
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

  std::ostringstream::~ostringstream(&a27, MEMORY[0x1E69E54E8]);
  MEMORY[0x1C692AD30](&a41);
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
  std::string::basic_string[abi:ne200100]<0>(__p, "\n");
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

void sub_1C30D1EF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
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
    kaldi::KaldiAssertFailure_("SetSourceStates", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 0x12A, "seq_size * num_seq == source.NumRows()", v6);
  }

  if (*(a2 + 16) != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("SetSourceStates", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 0x12B, "source.NumCols() == source_vec_dim_", v6);
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
    kaldi::KaldiAssertFailure_("SetSourceStates", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 0x134, "max_src_length_ < max_attentions_", v10);
  }

  if (v11 >= v9)
  {
    kaldi::KaldiAssertFailure_("SetSourceStates", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 0x135, "max_src_length_ + 1 <= seq_size", v10);
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
  v24 = &unk_1F42BFE90;
  v25 = 0u;
  v26 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v24);
  __p = &unk_1F42BFE90;
  v28 = 0u;
  v29 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&__p);
  kaldi::nnet1::Nnet::ResetHistoryStateIfExists(*(a1 + 192));
  return kaldi::nnet1::Nnet::Propagate<kaldi::CuSubMatrix<float>>(*(a1 + 192), a1 + 344, a1 + 392, 0, v22);
}

void sub_1C30D2360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, __int128 a10, __int128 a11, void *__p, __int128 a13, __int128 a14)
{
  a9 = &unk_1F42BFE90;
  a10 = 0u;
  a11 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a9);
  __p = &unk_1F42BFE90;
  a13 = 0u;
  a14 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&__p);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::GlobalRecurrentAttention::GetSourceDiffs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 296))(a1);
  if (*(a2 + 20) != *(a1 + 316))
  {
    kaldi::KaldiAssertFailure_("GetSourceDiffs", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 0x146, "source.NumRows() == source_states_.NumRows()", v8);
  }

  if (*(a2 + 16) != *(a1 + 312))
  {
    kaldi::KaldiAssertFailure_("GetSourceDiffs", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 0x147, "source.NumCols() == source_states_.NumCols()", v8);
  }

  v9 = *(a3 + 8) - *a3;
  v10 = *(a1 + 640);
  if (v9 != *(a1 + 648) - v10 || memcmp(*a3, v10, v9))
  {
    kaldi::KaldiAssertFailure_("GetSourceDiffs", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 0x148, "sequence_length == src_sequence_length_", v8);
  }

  return kaldi::CuMatrix<float>::Swap(a1 + 440, a4);
}

uint64_t kaldi::nnet1::GlobalRecurrentAttention::GetCurrentAlignment(uint64_t a1, std::vector<int> *this)
{
  v4 = -1431655765 * ((*(a1 + 624) - *(a1 + 616)) >> 3);
  std::vector<float>::resize(this, v4);
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
  v73 = a2;
  if (*(a2 + 16) != *(a1 + *(*a1 - 24) + 8))
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 0x16D, "in.NumCols() == input_dim_", v8);
  }

  if (a4)
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 0x16F, "batch_idx == 0", v8);
  }

  v9 = *(a1 + 648) - *(a1 + 640);
  v10 = v9 >> 2;
  v11 = *(v73 + 20);
  v72 = v11 / (v9 >> 2);
  if (v72 * (v9 >> 2) != v11)
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 0x175, "num_seq * tgt_seq_size == in.NumRows()", v8);
  }

  v12 = *(a1 + 316);
  v13 = (v12 / v10);
  kaldi::CuVector<float>::Resize(a1 + 584, v12, 0, v7, v8);
  v71 = v13;
  kaldi::CuMatrix<float>::Resize(a1 + 488, v9 >> 2, v13, 1u, 0);
  v14 = *(a1 + 316);
  memset(v91, 0, 24);
  kaldi::Vector<float>::Resize(v91, v14, 1, v15, v16);
  kaldi::Matrix<float>::Matrix(v89);
  if (v72 >= 1)
  {
    v74 = 0;
    v17 = (v9 >> 2);
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
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v86, a1 + 536, v21, v10, 0, *(a1 + 552));
          kaldi::CuMatrixBase<float>::MulElements(&v86, a1 + 248, v23, v24, v25);
          v86 = &unk_1F42BFE90;
          v87 = 0u;
          v88 = 0u;
          kaldi::CuMatrixBase<float>::~CuMatrixBase(&v86);
          ++v22;
          v21 += v10;
        }

        while (v22 < *(a1 + 664));
      }

      kaldi::CuVectorBase<float>::AddColSumMat(a1 + 584, a1 + 536, v18, v19, v20);
      kaldi::CuVectorBase<float>::CopyToVec<float>((a1 + 584), v91, v26, v27, v28);
      kaldi::Matrix<float>::Resize(v89, v10, v71, 0, 0);
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
              if (*(v91[0] + v36) > v35)
              {
                v34 = v33;
                v35 = *(v91[0] + v36);
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
              std::vector<int>::__throw_length_error[abi:ne200100]();
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
              std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(*(a1 + 616) + 24 * v31, v47);
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
            v49 = 0.0;
            v50 = v91[0];
            v51 = v32;
            v52 = v31;
            do
            {
              v53 = expf(v50[v52] - v35);
              v50[v52] = v53;
              v49 = v49 + v53;
              v52 += v17;
              --v51;
            }

            while (v51);
            v54 = 0;
            v55 = v91[0];
            v56 = v89[0] + 4 * v90 * v31;
            v57 = v31;
            do
            {
              *(v56 + 4 * v54++) = (1.0 / v49) * v55[v57];
              v57 += v17;
            }

            while (v32 != v54);
          }

          ++v31;
        }

        while (v31 != v17);
      }

      kaldi::CuMatrixBase<float>::CopyFromMat(a1 + 488, v89, 111, v29, v30);
      if (v10 >= 1)
      {
        v58 = 0;
        do
        {
          v59 = *(*(a1 + 640) + 4 * v58);
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v86, a1 + 344, 0, *(a1 + 364), 0, *(a1 + 8));
          if (v58 >= HIDWORD(v87))
          {
            kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x22A, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v60);
          }

          v83 = v87 + 4 * v88 * v58;
          v82 = &unk_1F42BFF30;
          v84 = DWORD2(v87);
          v85 = *(&v88 + 1);
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v79, a1 + 296, v58, v59 * v10, 0, *(a1 + 312));
          if (v10 != 1)
          {
            kaldi::CuMatrixBase<float>::SetStride(&v79, *(a1 + 320) * v10);
          }

          if (v58 >= *(a1 + 508))
          {
            kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x22A, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v61);
          }

          v62 = *(a1 + 496) + 4 * *(a1 + 512) * v58;
          v63 = *(a1 + 504);
          v64 = *(a1 + 520);
          v77 = 0;
          v78 = 0;
          v76 = 0;
          v75 = &unk_1F42BFF30;
          if (v59 > v63)
          {
            kaldi::KaldiAssertFailure_("CuSubVector", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-vector.h", 0x1E0, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v61);
          }

          v76 = v62;
          LODWORD(v77) = v59;
          v78 = v64;
          kaldi::CuVectorBase<float>::AddMatVec(&v82, &v79, 112, &v75, v61);
          v79 = &unk_1F42BFE90;
          v80 = 0u;
          v81 = 0u;
          kaldi::CuMatrixBase<float>::~CuMatrixBase(&v79);
          v82 = &unk_1F42BFF30;
          v83 = 0;
          LODWORD(v84) = 0;
          v85 = 0;
          v86 = &unk_1F42BFE90;
          v87 = 0u;
          v88 = 0u;
          kaldi::CuMatrixBase<float>::~CuMatrixBase(&v86);
          ++v58;
        }

        while (v17 != v58);
      }

      kaldi::CuSubMatrix<float>::CuSubMatrix(&v86, a1 + 344, 0, *(a1 + 364), *(a1 + 8), *(a1 + 8 + *(*a1 - 24)));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v79, v73, v74 * v10, v10, 0, *(v73 + 16));
      kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v86, &v79, 111, v65, v66);
      v79 = &unk_1F42BFE90;
      v80 = 0u;
      v81 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v79);
      v86 = &unk_1F42BFE90;
      v87 = 0u;
      v88 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v86);
      kaldi::nnet1::Nnet::Propagate<kaldi::CuSubMatrix<float>>(*(a1 + 192), a1 + 344, a1 + 392, 0, v67);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v86, a3, v74 * v10, v10, 0, *(a3 + 16));
      kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v86, a1 + 392, 111, v68, v69);
      v86 = &unk_1F42BFE90;
      v87 = 0u;
      v88 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v86);
      ++v74;
    }

    while (v74 != v72);
  }

  kaldi::Matrix<float>::~Matrix(v89);
  kaldi::Vector<float>::Destroy(v91);
}

void kaldi::nnet1::GlobalRecurrentAttention::BackpropagateFnc()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 445);
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
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 463);
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
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "GetGradient", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 476);
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
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v56, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 528);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, "component is not initialized, max attention is ", 47);
      v20 = MEMORY[0x1C692A960](v19, *(v5 + 12));
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ", source state dimension is ", 28);
      MEMORY[0x1C692A960](v21, *(v5 + 8));
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

            kaldi::KaldiErrorMessage::KaldiErrorMessage(v56, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 555);
            v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, "the internal network has output dim ", 36);
            v53 = kaldi::nnet1::Nnet::OutputDim(*(v5 + 192), v49, v50, v51, v52);
            v54 = MEMORY[0x1C692A960](v48, v53);
            v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, " , but the component has output dim ", 36);
            MEMORY[0x1C692A960](v55, *(v5 + *(*v5 - 24) + 12));
          }

          else
          {
            kaldi::KaldiErrorMessage::KaldiErrorMessage(v56, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 548);
            v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, "the internal network takes input dimension ", 43);
            v41 = kaldi::nnet1::Nnet::InputDim(*(v5 + 192), v37, v38, v39, v40);
            v42 = MEMORY[0x1C692A960](v36, v41);
            v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, " , that is not equal the sum of ", 32);
            v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "source vector dimension ", 24);
            v45 = MEMORY[0x1C692A960](v44, *(v5 + 8));
            v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, " and ", 5);
            v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "target input network dim ", 25);
            MEMORY[0x1C692A960](v47, *(v5 + *(*v5 - 24) + 8));
          }
        }

        else
        {
          kaldi::KaldiErrorMessage::KaldiErrorMessage(v56, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 543);
          v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, "the source and target dot transform has different output dim ", 61);
          v34 = MEMORY[0x1C692A960](v33, *(*(v5 + 176) + 12));
          v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " vs ", 4);
          MEMORY[0x1C692A960](v35, *(*(v5 + 184) + 12));
        }
      }

      else
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v56, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 538);
        v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, "the internal recurrent network has output dim ", 46);
        v30 = kaldi::nnet1::Nnet::OutputDim(*(v5 + 192), v26, v27, v28, v29);
        v31 = MEMORY[0x1C692A960](v25, v30);
        v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " , but the target dot transform has input dim ", 46);
        MEMORY[0x1C692A960](v32, *(*(v5 + 184) + 8));
      }
    }

    else
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v56, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-global-recurrent-attention.cc", 533);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, "source state dimension is ", 26);
      v23 = MEMORY[0x1C692A960](v22, *(v5 + 8));
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " , but the source dot transform has input dim ", 46);
      MEMORY[0x1C692A960](v24, *(*(v5 + 176) + 8));
    }

    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v56);
  }

  return this;
}

void kaldi::nnet1::GatedRecurrentUnit::InitData(unsigned int *a1, uint64_t *a2, kaldi::UniformRandomNumber *a3)
{
  *&v73 = -2.0;
  v74[0] = -1;
  v71 = 0.1;
  v72 = 2.0;
  kaldi::nnet1::Component::TypeToMarker(2, &v70);
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
            goto LABEL_149;
          }

LABEL_22:
          v12 = &v73;
LABEL_113:
          kaldi::ReadBasicType<float>(a2, 0, v12);
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
          goto LABEL_149;
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
            goto LABEL_149;
          }

          goto LABEL_113;
        }

        if (*v67 != 0x74536D617261503CLL || *(v67 + 5) != 0x3E7665646474536DLL)
        {
          goto LABEL_149;
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
                goto LABEL_149;
              }
            }

            goto LABEL_113;
          }

          if (HIBYTE(v68) != 10)
          {
            goto LABEL_149;
          }

          if (v67 != 0x61654D736169423CLL || WORD4(v67) != 15982)
          {
            goto LABEL_149;
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
          kaldi::ReadBasicType<int>(a2, 0, v74);
          goto LABEL_124;
        }

        if (v67 != 0x6E6152736169423CLL || *(&v67 + 3) != 0x3E65676E61527361)
        {
          goto LABEL_149;
        }

        goto LABEL_112;
      }

      if (HIBYTE(v68) <= 0x11u)
      {
        if (HIBYTE(v68) != 13)
        {
          if (HIBYTE(v68) != 15)
          {
            goto LABEL_149;
          }

          v13 = v67 == 0x61526E7261654C3CLL && *(&v67 + 7) == 0x3E66656F43657461;
          goto LABEL_35;
        }

        if (v67 != 0x74536D617261503CLL || *(&v67 + 5) != 0x3E7665646474536DLL)
        {
          goto LABEL_149;
        }

        goto LABEL_106;
      }

      if (HIBYTE(v68) == 18)
      {
        if (v67 != 0x6E6569646172473CLL || *(&v67 + 1) != 0x7079546D726F4E74 || v68 != 15973)
        {
          goto LABEL_149;
        }

LABEL_122:
        v22 = &v69;
        goto LABEL_123;
      }

      if (HIBYTE(v68) != 19)
      {
        goto LABEL_149;
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

    goto LABEL_149;
  }

LABEL_128:
  if (*(&v67 + 1) != 12)
  {
    goto LABEL_149;
  }

  v35 = v67;
LABEL_130:
  v36 = *v35;
  v37 = *(v35 + 2);
  if (v36 != 0x6E6F706D6F432F3CLL || v37 != 1047817829)
  {
LABEL_149:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v63, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 71);
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
      v50 = v48 + (v49 + -0.5) * v72;
      v46 = v61;
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
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v60);
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

void sub_1C30D452C(_Unwind_Exception *exception_object)
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
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v11, "AllocateParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 661, 2);
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

void sub_1C30D4708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
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
  kaldi::Matrix<float>::Matrix(v20, *(a4 + 20), *(a4 + 16), 0, 0);
  v10 = 0;
LABEL_2:
  if (v10 < kaldi::MatrixBase<float>::NumRows(v20))
  {
    for (i = 0; ; ++i)
    {
      if (i >= kaldi::MatrixBase<float>::NumCols(v20))
      {
        ++v10;
        goto LABEL_2;
      }

      if (a3)
      {
        if (a3 == 2)
        {
          kaldi::GaussRandomNumber::Rand(a2, 0, v14, v15, v16);
          v17 = v18 * a5;
        }

        else
        {
          if (a3 != 1)
          {
            continue;
          }

          v17 = (kaldi::UniformRandomNumber::RandUniform(a1, 0, v14, v15, v16) + -0.5) * (a5 + a5);
        }
      }

      else if (v10 == i)
      {
        v17 = 1.0;
      }

      else
      {
        v17 = 0.0;
      }

      *(v20[0] + 4 * v10 * v21 + 4 * i) = v17;
    }
  }

  kaldi::CuMatrixBase<float>::CopyFromMat(a4, v20, 111, v11, v12);
  return kaldi::Matrix<float>::~Matrix(v20);
}

void sub_1C30D4874(_Unwind_Exception *a1, uint64_t a2, ...)
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
              kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 114);
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

    kaldi::ReadBasicType<float>(a2, a3, v15);
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

void sub_1C30D4C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
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

void sub_1C30D4D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
  kaldi::VectorBase<float>::CopyRowsFromMat(&v27, (a1 + 40), v7, v8, v9);
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
  kaldi::VectorBase<float>::CopyRowsFromMat(&v27, (a1 + 52), v16, v17, v9);
  v28 = 0;
  v29 = 0;
  v22 = v19 + v18;
  if ((v19 + v18) > *(a2 + 8) || (v27 = (*a2 + 4 * v18), LODWORD(v28) = v19, kaldi::VectorBase<float>::CopyRowsFromMat(&v27, (a1 + 64), v20, v21, v9), v25 = a1[80], v28 = 0, v29 = 0, (v25 + v22) > *(a2 + 8)))
  {
LABEL_6:
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v9);
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
    kaldi::KaldiAssertFailure_("SetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 0xAB, "wei_src.Dim() == NumParams()", v5);
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
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v5);
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
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v15);
  }

  v33 = *a4 + 4 * v28;
  LODWORD(v34) = v31;
  kaldi::CuVectorBase<float>::CopyToVec<float>(v10[90], &v33, v29, v30, v15);
  return (*(*v10 + 8))(v10);
}

uint64_t kaldi::nnet1::GatedRecurrentUnit::PerturbParams(kaldi::nnet1::GatedRecurrentUnit *this, float a2)
{
  kaldi::CuMatrix<float>::CuMatrix(v19, *(this + 45), *(this + 44), 1u, 0, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v19);
  kaldi::CuMatrixBase<float>::AddMat(this + 160, v19, 111, v4, v5, a2, 1.0);
  kaldi::CuMatrix<float>::Resize(v19, *(this + 57), *(this + 56), 1u, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v19);
  kaldi::CuMatrixBase<float>::AddMat(this + 208, v19, 111, v6, v7, a2, 1.0);
  kaldi::CuMatrix<float>::Resize(v19, *(this + 69), *(this + 68), 1u, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v19);
  kaldi::CuMatrixBase<float>::AddMat(this + 256, v19, 111, v8, v9, a2, 1.0);
  v10 = *(this + 80);
  v18[0] = &unk_1F42BFF70;
  memset(&v18[1], 0, 24);
  kaldi::CuVector<float>::Resize(v18, v10, 1u, v11, v12);
  kaldi::CuVectorBase<float>::SetRandn(v18);
  *&v13 = a2;
  kaldi::CuVectorBase<float>::AddVec(this + 304, v18, v14, v15, v16, v13, 1.0);
  kaldi::CuVector<float>::~CuVector(v18);
  return kaldi::CuMatrix<float>::~CuMatrix(v19);
}

void sub_1C30D56B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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
  v30 = *MEMORY[0x1E69E54E8];
  *(&v30 + *(v30 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v31 = MEMORY[0x1E69E5548] + 16;
  if (v33 < 0)
  {
    operator delete(v32[7].__locale_);
  }

  v31 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v32);
  std::ostream::~ostream();
  return MEMORY[0x1C692AD30](&v34);
}

void sub_1C30D59C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
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

void kaldi::nnet1::GatedRecurrentUnit::InfoGradient(kaldi::nnet1::GatedRecurrentUnit *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 640))
  {
    memset(&v88, 0, sizeof(v88));
    v87 = 0;
    if (*(this + 20) >= 1)
    {
      do
      {
        std::string::basic_string[abi:ne200100]<0>(&v75, "\n For batch ");
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
        std::string::basic_string[abi:ne200100]<0>(v71, ": ");
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
        std::string::basic_string[abi:ne200100]<0>(v69, "\n  Input weights gradient: ");
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
        std::string::basic_string[abi:ne200100]<0>(v65, "\n  Gate recurrent weights gradient: ");
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
        std::string::basic_string[abi:ne200100]<0>(v61, "\n  Activation recurrent weights gradient: ");
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
        std::string::basic_string[abi:ne200100]<0>(v57, "\n  Bias gradient: ");
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

    v49 = std::string::basic_string[abi:ne200100]<0>(&v85, "\n");
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
    *(a2 + 16) = *(&v52->__r_.__value_.__l + 2);
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

    std::string::basic_string[abi:ne200100]<0>(a2, "\n  Gradients are uninitialized");
  }
}

void sub_1C30D602C(_Unwind_Exception *a1)
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
  std::ostringstream::basic_ostringstream[abi:ne200100](&v3);
  MEMORY[0x1C692A960](&v3, *a1);
  std::stringbuf::str();
  v3 = *MEMORY[0x1E69E54E8];
  *(&v3 + *(v3 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v4 = MEMORY[0x1E69E5548] + 16;
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  v4 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v5);
  std::ostream::~ostream();
  return MEMORY[0x1C692AD30](&v7);
}

void sub_1C30D63A8(_Unwind_Exception *a1, uint64_t a2, ...)
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
      std::string::basic_string[abi:ne200100]<0>(&v58, "\n For batch ");
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
      std::string::basic_string[abi:ne200100]<0>(v54, ": ");
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
      std::string::basic_string[abi:ne200100]<0>(v52, "\n  Gates values: ");
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
      std::string::basic_string[abi:ne200100]<0>(v48, "\n  Candidate activations: ");
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
      std::string::basic_string[abi:ne200100]<0>(v44, "\n  Activations: ");
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

  v37 = std::string::basic_string[abi:ne200100]<0>(&v66, "\n");
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

void sub_1C30D6880(_Unwind_Exception *a1)
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
      std::string::basic_string[abi:ne200100]<0>(&v58, "\n For batch ");
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
      std::string::basic_string[abi:ne200100]<0>(v54, ": ");
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
      std::string::basic_string[abi:ne200100]<0>(v52, "\n  Gates diff: ");
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
      std::string::basic_string[abi:ne200100]<0>(v48, "\n  Candidate activation diff: ");
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
      std::string::basic_string[abi:ne200100]<0>(v44, "\n  Activation diff: ");
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

  v37 = std::string::basic_string[abi:ne200100]<0>(&v66, "\n");
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

void sub_1C30D6F10(_Unwind_Exception *a1)
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

uint64_t kaldi::nnet1::GatedRecurrentUnit::PropagateFnc(kaldi::nnet1::GatedRecurrentUnit *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a2 + 20);
  v6 = *(this + 24);
  v73 = v5 / v6;
  if (v5 % v6)
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 0x124, "batch_size % num_utts == 0", a5);
  }

  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v93, "PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 294, 3);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v93, "Running forward propagation for batch size = ", 45);
    v12 = MEMORY[0x1C692A960](v11, v5);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", which contains ", 17);
    v14 = MEMORY[0x1C692A960](v13, v73);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " frames each from ", 18);
    v16 = MEMORY[0x1C692A960](v15, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v93);
  }

  v17 = *(a3 + 32);
  kaldi::nnet1::GatedRecurrentUnit::AllocateForwardBuffers(this, a4, v5, v17);
  v19 = *(this + 105);
  v20 = 3 * a4;
  v72 = a4;
  v66 = a3;
  v67 = a4;
  if (*(this + 106) == v19 || (v21 = *(v19 + 32 * a4 + 16), v21 < 1))
  {
    v68 = 0;
  }

  else
  {
    if (v21 != v5)
    {
      kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 0x12D, "boundary_[batch_index].Dim() == batch_size", v18);
    }

    v22 = *(this + 108) + 48 * a4;
    *(v22 + 32) = v17;
    v68 = 1;
    kaldi::CuMatrix<float>::Resize(v22, v6, *(*(this + 1) + 48 * a4 + 16), 1u, 0);
  }

  v23 = *(this + 43) + 48 * a4;
  v24 = *(this + 46) + 48 * a4;
  v25 = *(this + 49);
  v74 = *(this + 55);
  v26 = *(this + 58);
  v27 = *(this + 61);
  kaldi::CuMatrixBase<float>::AddMatMat(v23, a2, 111, this + 160, 0x70);
  kaldi::CuMatrixBase<float>::AddVecToRows(v23, this + 304, v28, v29, v30, 1.0, 1.0);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v93, v23, 0, *(v23 + 20), 0, 2 * *(this + *(*this - 24) + 12));
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v24, &v93, 111, v31, v32);
  v93.__locale_ = &unk_1F42BFE90;
  memset(v94, 0, sizeof(v94));
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v93);
  v33 = *(this + *(*this - 24) + 12);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v93, v23, 0, *(v23 + 20), (2 * v33), v33);
  v71 = v25 + 16 * v20;
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v71, &v93, 111, v34, v35);
  v93.__locale_ = &unk_1F42BFE90;
  v36 = v27 + 16 * v20;
  memset(v94, 0, sizeof(v94));
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v93);
  v37.i32[0] = 1.0;
  v70 = v26 + 16 * v20;
  kaldi::CuMatrixBase<float>::Set(v70, v37);
  if (v73 >= 1)
  {
    v40 = 0;
    v41 = 0;
    v42 = v74 + 16 * v20;
    v75 = this + 12;
    v43 = 0uLL;
    v69 = v42;
    while (1)
    {
      v94[1] = v43;
      v94[0] = v43;
      v93.__locale_ = &unk_1F42BFE90;
      *&v92[3] = v43;
      *&v92[1] = v43;
      v92[0] = &unk_1F42BFE90;
      if (!v41)
      {
        break;
      }

      v44 = v72;
      if (!v68)
      {
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v90, v36, v40 - v6, v6, 0, *(v36 + 16));
        goto LABEL_16;
      }

      kaldi::CuMatrixBase<float>::SetZero(*(this + 108) + 48 * v72);
      v45 = *(this + 108) + 48 * v72;
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v90, v45, 0, *(v45 + 20), 0, *&v75[*(*this - 24)]);
      *(v94 + 8) = *&v91[1];
      *&v94[0] = v91[0];
      *(&v94[1] + 1) = v91[3];
      v90 = &unk_1F42BFE90;
      memset(v91, 0, sizeof(v91));
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v90);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v90, v36, v40 - v6, v6, 0, *(v36 + 16));
      kaldi::CuSubVector<float>::CuSubVector(&v87, *(this + 105) + 32 * v72, v40, v6, v46);
      kaldi::CuMatrixBase<float>::CopySelectedRows(&v93, &v90, &v87, 1, v47);
      v90 = &unk_1F42BFE90;
      memset(v91, 0, sizeof(v91));
LABEL_17:
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v90);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v90, v24, v40, v6, 0, *(v24 + 16));
      kaldi::CuMatrixBase<float>::AddMatMat(&v90, &v93, 111, this + 208, 0x70);
      v90 = &unk_1F42BFE90;
      memset(v91, 0, sizeof(v91));
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v90);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v90, v24, v40, v6, 0, *&v75[*(*this - 24)]);
      kaldi::CuMatrixBase<float>::Sigmoid(&v90, &v90, v49, v50, v51);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v87, v24, v40, v6, *&v75[*(*this - 24)], *&v75[*(*this - 24)]);
      kaldi::CuMatrixBase<float>::Sigmoid(&v87, &v87, v52, v53, v54);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v85, v69, v40, v6, 0, *(v69 + 16));
      v92[1] = v86[0];
      *&v92[2] = *&v86[1];
      v92[4] = v86[3];
      v85 = &unk_1F42BFE90;
      memset(v86, 0, sizeof(v86));
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v85);
      kaldi::CuMatrixBase<float>::AddMatEwpMat(v92, &v87, 111, &v93, 0x6F, 1.0, 0.0);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v85, v71, v40, v6, 0, *(v71 + 16));
      kaldi::CuMatrixBase<float>::AddMatMat(&v85, v92, 111, this + 256, 0x6F);
      kaldi::CuMatrixBase<float>::Tanh(&v85, &v85, v55, v56, v57);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v82, v70, v40, v6, 0, *(v70 + 16));
      kaldi::CuMatrixBase<float>::AddMat(&v82, &v90, 111, v58, v59, -1.0, 1.0);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v79, v36, v40, v6, 0, *(v36 + 16));
      kaldi::CuMatrixBase<float>::AddMatEwpMat(&v79, &v82, 111, &v93, 0x6F, 1.0, 0.0);
      kaldi::CuMatrixBase<float>::AddMatEwpMat(&v79, &v90, 111, &v85, 0x6F, 1.0, 1.0);
      v60 = *(this + 52) + 48 * v44;
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v76, v60, v40, v6, 0, *(v60 + 16));
      kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v76, &v85, 111, v61, v62);
      kaldi::CuMatrixBase<float>::AddMat(&v76, &v93, 111, v63, v64, -1.0, 1.0);
      v76 = &unk_1F42BFE90;
      v77 = 0u;
      v78 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v76);
      v79 = &unk_1F42BFE90;
      v80 = 0u;
      v81 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v79);
      v82 = &unk_1F42BFE90;
      v83 = 0u;
      v84 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v82);
      v85 = &unk_1F42BFE90;
      memset(v86, 0, sizeof(v86));
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v85);
      v87 = &unk_1F42BFE90;
      v88 = 0u;
      v89 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v87);
      v90 = &unk_1F42BFE90;
      memset(v91, 0, sizeof(v91));
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v90);
      v92[0] = &unk_1F42BFE90;
      memset(&v92[1], 0, 32);
      kaldi::CuMatrixBase<float>::~CuMatrixBase(v92);
      v93.__locale_ = &unk_1F42BFE90;
      memset(v94, 0, sizeof(v94));
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v93);
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
    v90 = &unk_1F42BFE90;
    memset(v91, 0, sizeof(v91));
    goto LABEL_17;
  }

LABEL_18:
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v66, v36, 111, v38, v39);
  return kaldi::nnet1::GatedRecurrentUnit::SaveLastState(this, v67);
}

void sub_1C30D7AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55)
{
  a55 = &unk_1F42BFE90;
  *(v55 + 168) = 0u;
  *(v55 + 184) = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a55);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::GatedRecurrentUnit::AllocateForwardBuffers(kaldi::nnet1::GatedRecurrentUnit *this, uint64_t a2, uint64_t a3, void *a4)
{
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v11, "AllocateForwardBuffers", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 742, 3);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Allocating forward buffers for batch ", 37);
    v9 = MEMORY[0x1C692A960](v8, a2);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "; batch size = ", 15);
    MEMORY[0x1C692A960](v10, a3);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v11);
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

void sub_1C30D806C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::GatedRecurrentUnit::SaveLastState(kaldi::nnet1::GatedRecurrentUnit *this, uint64_t a2)
{
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v10, "SaveLastState", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 850, 3);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "Saving last activation batch ", 29);
    MEMORY[0x1C692A960](v4, a2);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v10);
  }

  v5 = *(this + 61) + 48 * a2;
  v6 = (*(this + 1) + 48 * a2);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v10, v5, *(v5 + 20) - *(this + 24), *(this + 24), 0, *(v5 + 16));
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v6, &v10, 111, v7, v8);
  v10.__locale_ = &unk_1F42BFE90;
  v11 = 0u;
  v12 = 0u;
  return kaldi::CuMatrixBase<float>::~CuMatrixBase(&v10);
}

void sub_1C30D8178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, __int128 a11, __int128 a12)
{
  a10 = &unk_1F42BFE90;
  a11 = 0u;
  a12 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a10);
  _Unwind_Resume(a1);
}

uint64_t virtual thunk tokaldi::nnet1::GatedRecurrentUnit::PropagateFnc(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  return kaldi::nnet1::GatedRecurrentUnit::PropagateFnc((a1 + *(*a1 - 128)), a2, a3, a4, a5);
}

{
  return kaldi::nnet1::GatedRecurrentUnit::PropagateFnc(a1 + *(*a1 - 136), a2, a3, a4, a5);
}

uint64_t kaldi::nnet1::GatedRecurrentUnit::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 96) != 1)
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 0x17A, "ropts_.num_sequences == 1", a5);
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
        kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 0x17F, "boundary_[0].Dim() == 1", v9);
      }

      v12 = *(a1 + 864);
      *(v12 + 32) = v8;
      kaldi::CuMatrix<float>::Resize(v12, 1, *(*(a1 + 8) + 16), 1u, 0);
    }
  }

  v13 = *(a1 + 344);
  v104 = 0;
  v105 = 0;
  v103 = 0;
  v14 = *(v13 + 8);
  v102 = &unk_1F42BFF30;
  v103 = v14;
  LODWORD(v104) = *(v13 + 16);
  v105 = *(v13 + 32);
  v15 = *(a1 + 368);
  v100 = 0;
  v101 = 0;
  v99 = 0;
  v16 = *(v15 + 8);
  v98 = &unk_1F42BFF30;
  v99 = v16;
  LODWORD(v100) = *(v15 + 16);
  v101 = *(v15 + 32);
  v17 = *(a1 + 488);
  v96 = 0;
  v97 = 0;
  v95 = 0;
  v18 = *(v17 + 8);
  v94 = &unk_1F42BFF30;
  v95 = v18;
  LODWORD(v96) = *(v17 + 16);
  v97 = *(v17 + 32);
  kaldi::CuVectorBase<float>::AddMatVec(&v102, a1 + 160, 111, a2, v9);
  LODWORD(v19) = 1.0;
  kaldi::CuVectorBase<float>::AddVec(&v102, a1 + 304, v20, v21, v22, v19, 1.0);
  v26 = 2 * *(a1 + *(*a1 - 24) + 12);
  v92 = 0;
  v93 = 0;
  v90 = &unk_1F42BFF30;
  v91 = 0;
  if (v26 > v104)
  {
    kaldi::KaldiAssertFailure_("CuSubVector", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-vector.h", 0x1E0, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v25);
  }

  v91 = v103;
  LODWORD(v92) = v26;
  v93 = v105;
  kaldi::CuVectorBase<float>::CopyFromVec(&v98, &v90, v23, v24, v25);
  v28 = *(a1 + 8);
  if (!*(v28 + 20))
  {
    kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x22A, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v27);
  }

  v29 = *(v28 + 8);
  v30 = *(v28 + 16);
  v31 = *(v28 + 32);
  v91 = v29;
  v90 = &unk_1F42BFF30;
  v92 = v30;
  v93 = v31;
  kaldi::CuVectorBase<float>::AddMatVec(&v98, a1 + 208, 111, &v90, v27);
  v35 = *(a1 + *(*a1 - 24) + 12);
  v88 = 0;
  v89 = 0;
  v86 = &unk_1F42BFF30;
  v87 = 0;
  if (v35 > v100)
  {
    kaldi::KaldiAssertFailure_("CuSubVector", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-vector.h", 0x1E0, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v34);
  }

  v87 = v99;
  LODWORD(v88) = v35;
  v89 = v101;
  kaldi::CuVectorBase<float>::Sigmoid(&v86, &v86, v32, v33, v34);
  v36 = *(a1 + *(*a1 - 24) + 12);
  kaldi::CuSubVector<float>::CuSubVector(v85, &v98, v36, v36, v37);
  kaldi::CuVectorBase<float>::Sigmoid(v85, v85, v38, v39, v40);
  v41 = *(a1 + 440);
  v83 = 0;
  v42 = *(v41 + 8);
  v82[0] = &unk_1F42BFF30;
  v82[1] = v42;
  LODWORD(v83) = *(v41 + 16);
  v84 = *(v41 + 32);
  kaldi::CuVectorBase<float>::AddVecVec(v82, v85, &v90, v43, v44);
  v45 = *(a1 + 392);
  v80 = 0;
  v46 = *(v45 + 8);
  v79[0] = &unk_1F42BFF30;
  v79[1] = v46;
  LODWORD(v80) = *(v45 + 16);
  v81 = *(v45 + 32);
  v47 = *(a1 + *(*a1 - 24) + 12);
  kaldi::CuSubVector<float>::CuSubVector(v76, &v102, 2 * v47, v47, v48);
  kaldi::CuVectorBase<float>::CopyFromVec(v79, v76, v49, v50, v51);
  kaldi::CuVectorBase<float>::AddMatVec(v79, a1 + 256, 111, v82, v52);
  kaldi::CuVectorBase<float>::Tanh(v79, v79, v53, v54, v55);
  v56 = *(a1 + 464);
  v77 = 0;
  v57 = *(v56 + 8);
  v76[0] = &unk_1F42BFF30;
  v76[1] = v57;
  LODWORD(v77) = *(v56 + 16);
  v78 = *(v56 + 32);
  v58.i32[0] = 1.0;
  kaldi::CuVectorBase<float>::Set(v76, v58);
  LODWORD(v59) = -1.0;
  kaldi::CuVectorBase<float>::AddVec(v76, &v86, v60, v61, v62, v59, 1.0);
  v63 = *(a1 + 488);
  v74 = 0;
  v64 = *(v63 + 8);
  v73[0] = &unk_1F42BFF30;
  v73[1] = v64;
  LODWORD(v74) = *(v63 + 16);
  v75 = *(v63 + 32);
  kaldi::CuVectorBase<float>::AddVecVec(v73, v76, &v90, v65, v66);
  kaldi::CuVectorBase<float>::AddVecVec(v73, &v86, v79, v67, v68);
  kaldi::CuVectorBase<float>::CopyFromVec(a3, v73, v69, v70, v71);
  return kaldi::nnet1::GatedRecurrentUnit::SaveLastState(a1, 0);
}

double kaldi::nnet1::GatedRecurrentUnit::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a2 + 20);
  v11 = *(a1 + 96);
  kaldi::nnet1::GatedRecurrentUnit::EnsureTrainingBuffers(a1);
  v13 = v10 / v11;
  if (v10 % v11)
  {
    kaldi::KaldiAssertFailure_("BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 0x1BE, "batch_size % num_utts == 0", v12);
  }

  if (kaldi::g_kaldi_verbose_level > 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v87, "BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 448, 3);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, "Running backward propagation for batch size = ", 46);
    v15 = MEMORY[0x1C692A960](v14, v10);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ", which contains ", 17);
    v17 = MEMORY[0x1C692A960](v16, (v10 / v11));
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " frames each from ", 18);
    v19 = MEMORY[0x1C692A960](v18, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v87);
  }

  if (v13 < 2)
  {
    kaldi::KaldiAssertFailure_("BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 0x1C2, "frames_in_batch > 1 && GRU backprop will not work with batches of single frames.", v12);
  }

  v52 = a5;
  if (a5)
  {
    v20 = a5;
  }

  else
  {
    v20 = a4;
  }

  kaldi::nnet1::GatedRecurrentUnit::AllocateBackwardBuffers(a1, a6, v10, *(v20 + 32));
  v21 = *(a1 + 368) + 48 * a6;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v87, v21, 0, *(v21 + 20), 0, *(a1 + *(*a1 - 24) + 12));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v84, v21, 0, *(v21 + 20), *(a1 + *(*a1 - 24) + 12), *(a1 + *(*a1 - 24) + 12));
  v57 = *(a1 + 392);
  v54 = *(a1 + 464);
  v22 = *(a1 + 488);
  v23 = *(a1 + 512);
  v24 = *(a1 + 560) + 48 * a6;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v81, v24, 0, *(v24 + 20), 0, *(a1 + *(*a1 - 24) + 12));
  v56 = v24;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v78, v24, 0, *(v24 + 20), *(a1 + *(*a1 - 24) + 12), *(a1 + *(*a1 - 24) + 12));
  v25 = v23 + 48 * a6;
  v26 = *(a1 + 536);
  v59 = a1;
  v53 = *(a1 + 584);
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v25, a4, 111, v27, v28);
  v29 = v10 - v11;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v75, &v78, v11, v29, 0, SDWORD2(v79));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v72, &v84, v11, v29, 0, SDWORD2(v85));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v69, v22 + 48 * a6, 0, v29, 0, *(v22 + 48 * a6 + 16));
  kaldi::CuMatrixBase<float>::DiffSigmoid(&v75, &v72, &v69, v30, v31);
  v69 = &unk_1F42BFE90;
  v70 = 0u;
  v71 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v69);
  v72 = &unk_1F42BFE90;
  v73 = 0u;
  v74 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v72);
  v75 = &unk_1F42BFE90;
  v76 = 0u;
  v77 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v75);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v75, &v78, 0, v11, 0, SDWORD2(v79));
  kaldi::CuMatrixBase<float>::SetZero(&v75);
  v75 = &unk_1F42BFE90;
  v76 = 0u;
  v77 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v75);
  kaldi::CuMatrixBase<float>::DiffSigmoid(&v81, &v87, *(a1 + 416) + 48 * a6, v32, v33);
  v34 = v26 + 48 * a6;
  kaldi::CuMatrixBase<float>::DiffTanh(v34, v57 + 48 * a6, &v87, v35, v36);
  v58 = v13 - 1;
  v37 = v11 * (v13 - 1);
  v38 = v11 * v13;
  v55 = v54 + 48 * a6;
  v39 = v53 + 48 * a6;
  do
  {
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v75, v25, v37, v11, 0, *(v25 + 16));
    if (--v13 < v58)
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v72, v25, v38, v11, 0, *(v25 + 16));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v69, v55, v38, v11, 0, *(v55 + 16));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v66, v39, v38, v11, 0, *(v39 + 16));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v63, &v84, v38, v11, 0, SDWORD2(v85));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v60, v56, v38, v11, 0, *(v56 + 16));
      kaldi::CuMatrixBase<float>::AddMatEwpMat(&v75, &v72, 111, &v69, 0x6F, 1.0, 1.0);
      kaldi::CuMatrixBase<float>::AddMatEwpMat(&v75, &v66, 111, &v63, 0x6F, 1.0, 1.0);
      kaldi::CuMatrixBase<float>::AddMatMat(&v75, &v60, 111, v59 + 208, 0x6F);
      v60 = &unk_1F42BFE90;
      v61 = 0u;
      v62 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v60);
      v63 = &unk_1F42BFE90;
      v64 = 0u;
      v65 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v63);
      v66 = &unk_1F42BFE90;
      v67 = 0u;
      v68 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v66);
      v69 = &unk_1F42BFE90;
      v70 = 0u;
      v71 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v69);
      v72 = &unk_1F42BFE90;
      v73 = 0u;
      v74 = 0u;
      kaldi::CuMatrixBase<float>::~CuMatrixBase(&v72);
    }

    kaldi::CuSubMatrix<float>::CuSubMatrix(&v72, &v81, v37, v11, 0, SDWORD2(v82));
    kaldi::CuMatrixBase<float>::MulElements(&v72, &v75, v40, v41, v42);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v69, v34, v37, v11, 0, *(v34 + 16));
    kaldi::CuMatrixBase<float>::MulElements(&v69, &v75, v43, v44, v45);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v66, v39, v37, v11, 0, *(v39 + 16));
    kaldi::CuMatrixBase<float>::AddMatMat(&v66, &v69, 111, v59 + 256, 0x6F);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v63, &v78, v37, v11, 0, SDWORD2(v79));
    kaldi::CuMatrixBase<float>::MulElements(&v63, &v66, v46, v47, v48);
    v63 = &unk_1F42BFE90;
    v64 = 0u;
    v65 = 0u;
    kaldi::CuMatrixBase<float>::~CuMatrixBase(&v63);
    v66 = &unk_1F42BFE90;
    v67 = 0u;
    v68 = 0u;
    kaldi::CuMatrixBase<float>::~CuMatrixBase(&v66);
    v69 = &unk_1F42BFE90;
    v70 = 0u;
    v71 = 0u;
    kaldi::CuMatrixBase<float>::~CuMatrixBase(&v69);
    v72 = &unk_1F42BFE90;
    v73 = 0u;
    v74 = 0u;
    kaldi::CuMatrixBase<float>::~CuMatrixBase(&v72);
    v75 = &unk_1F42BFE90;
    v76 = 0u;
    v77 = 0u;
    kaldi::CuMatrixBase<float>::~CuMatrixBase(&v75);
    v37 -= v11;
    v38 -= v11;
  }

  while (v13 > 0);
  if (v52)
  {
    v49 = v59;
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v75, v59 + 160, 0, 2 * *(v59 + *(*v59 - 24) + 12), 0, *(v59 + 176));
    v50 = *(v49 + *(*v49 - 24) + 12);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v72, v49 + 160, 2 * v50, v50, 0, *(v49 + 176));
    kaldi::CuMatrixBase<float>::AddMatMat(v52, v56, 111, &v75, 0x6F);
    kaldi::CuMatrixBase<float>::AddMatMat(v52, v34, 111, &v72, 0x6F);
    v72 = &unk_1F42BFE90;
    v73 = 0u;
    v74 = 0u;
    kaldi::CuMatrixBase<float>::~CuMatrixBase(&v72);
    v75 = &unk_1F42BFE90;
    v76 = 0u;
    v77 = 0u;
    kaldi::CuMatrixBase<float>::~CuMatrixBase(&v75);
  }

  v78 = &unk_1F42BFE90;
  v79 = 0u;
  v80 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v78);
  v81 = &unk_1F42BFE90;
  v82 = 0u;
  v83 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v81);
  v84 = &unk_1F42BFE90;
  v85 = 0u;
  v86 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v84);
  v87.__locale_ = &unk_1F42BFE90;
  v88 = 0u;
  v89 = 0u;
  *&result = kaldi::CuMatrixBase<float>::~CuMatrixBase(&v87).n128_u64[0];
  return result;
}

void sub_1C30D91D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, __int128 a42, __int128 a43, void *a44, __int128 a45, __int128 a46, void *a47, __int128 a48, __int128 a49, void *a50, __int128 a51, __int128 a52, void *a53, __int128 a54, __int128 a55)
{
  a41 = &unk_1F42BFE90;
  a42 = 0u;
  a43 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a41);
  a44 = &unk_1F42BFE90;
  a45 = 0u;
  a46 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a44);
  a47 = &unk_1F42BFE90;
  a48 = 0u;
  a49 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a47);
  a50 = &unk_1F42BFE90;
  a51 = 0u;
  a52 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a50);
  a53 = &unk_1F42BFE90;
  a54 = 0u;
  a55 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a53);
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

void kaldi::nnet1::GatedRecurrentUnit::AllocateBackwardBuffers(kaldi::nnet1::GatedRecurrentUnit *this, uint64_t a2, uint64_t a3, void *a4)
{
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v11, "AllocateBackwardBuffers", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 761, 3);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Allocating backward buffers for batch ", 38);
    v9 = MEMORY[0x1C692A960](v8, a2);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "; batch size = ", 15);
    MEMORY[0x1C692A960](v10, a3);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v11);
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

void sub_1C30D98B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::GatedRecurrentUnit::AccumGradients(kaldi::nnet1::GatedRecurrentUnit *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(this + 20) <= a5)
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 0x20C, "batch_index < ropts_.num_subbatches", a5);
  }

  v7 = *(this + 24);
  v8 = *(a2 + 20);
  if (v8 % v7)
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 0x210, "batch_size % num_utts == 0", a5);
  }

  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v48, "AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 530, 3);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48, "Accumulating gradients for batch id = ", 38);
    v12 = MEMORY[0x1C692A960](v11, a5);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", which contains ", 17);
    v14 = MEMORY[0x1C692A960](v13, (v8 / v7));
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " frames each from ", 18);
    v16 = MEMORY[0x1C692A960](v15, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v48);
  }

  kaldi::nnet1::GatedRecurrentUnit::AllocateGradients(this);
  v17 = *(this + 15);
  *(*(this + 77) + 4 * a5) = v8;
  v18 = a5;
  v19 = *(this + 70);
  v20 = 3 * a5;
  v21 = *(this + 67);
  v22 = *(this + 81) + 48 * a5;
  *(v22 + 32) = a4;
  *(*(this + 84) + 48 * a5 + 32) = a4;
  *(*(this + 87) + 48 * a5 + 32) = a4;
  *(*(this + 90) + 32 * a5 + 24) = a4;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v48, v22, 0, 2 * *(this + *(*this - 24) + 12), 0, *(v22 + 16));
  v23 = *(this + 81) + 48 * a5;
  v24 = *(this + *(*this - 24) + 12);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v45, v23, 2 * v24, v24, 0, *(v23 + 16));
  v25 = v19 + 48 * a5;
  kaldi::CuMatrixBase<float>::AddMatMat(&v48, v19 + 16 * v20, 112, a2, 0x6F);
  kaldi::CuMatrixBase<float>::AddMatMat(&v45, v21 + 16 * v20, 112, a2, 0x6F);
  v26 = *(this + 84);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v42, v25, v7, v8 - v7, 0, *(v25 + 16));
  v27 = *(this + 61) + 48 * v18;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v39, v27, 0, v8 - v7, 0, *(v27 + 16));
  kaldi::CuMatrixBase<float>::AddMatMat(v26 + 48 * v18, &v42, 112, &v39, 0x6F);
  v39 = &unk_1F42BFE90;
  v40 = 0u;
  v41 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v39);
  v42 = &unk_1F42BFE90;
  v43 = 0u;
  v44 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v42);
  v28 = *(this + 87);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v42, v21 + 16 * v20, v7, v8 - v7, 0, *(v21 + 16 * v20 + 16));
  v29 = *(this + 55) + 48 * v18;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v39, v29, 0, v8 - v7, 0, *(v29 + 16));
  kaldi::CuMatrixBase<float>::AddMatMat(v28 + 48 * v18, &v42, 112, &v39, 0x6F);
  v39 = &unk_1F42BFE90;
  v40 = 0u;
  v41 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v39);
  v42 = &unk_1F42BFE90;
  v43 = 0u;
  v44 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v42);
  kaldi::CuSubVector<float>::CuSubVector(&v42, *(this + 90) + 32 * v18, 0, 2 * *(this + *(*this - 24) + 12), v30);
  kaldi::CuVectorBase<float>::AddRowSumMat(&v42, v25, v31, v32, v33);
  v34 = *(this + *(*this - 24) + 12);
  kaldi::CuSubVector<float>::CuSubVector(&v42, *(this + 90) + 32 * v18, 2 * v34, v34, v35);
  kaldi::CuVectorBase<float>::AddRowSumMat(&v42, v21 + 16 * v20, v36, v37, v38);
  v45 = &unk_1F42BFE90;
  v46 = 0u;
  v47 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v45);
  v48.__locale_ = &unk_1F42BFE90;
  v49 = 0u;
  v50 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&v48);
}

void sub_1C30D9DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, __int128 a21, __int128 a22, void *a23, __int128 a24, __int128 a25)
{
  a20 = &unk_1F42BFE90;
  a21 = 0u;
  a22 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a20);
  a23 = &unk_1F42BFE90;
  a24 = 0u;
  a25 = 0u;
  kaldi::CuMatrixBase<float>::~CuMatrixBase(&a23);
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
            v21.i32[0] = 1.0;
            kaldi::CuMatrixBase<float>::Set(*(this + 93) + 48 * v11, v21);
            v22.i32[0] = 1.0;
            kaldi::CuMatrixBase<float>::Set(*(this + 96) + 48 * v11, v22);
            v23.i32[0] = 1.0;
            kaldi::CuMatrixBase<float>::Set(*(this + 99) + 48 * v11, v23);
            v24.i32[0] = 1.0;
            kaldi::CuVectorBase<float>::Set(*(this + 102) + 32 * v11, v24);
          }
        }

        ++v11;
      }

      while (v11 != v4);
    }

    *(this + 640) = 1;
    if (kaldi::g_kaldi_verbose_level > 1)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v30, "AllocateGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 737, 2);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "Allocated memory for the gradients: ", 36);
      (*(*this + 240))(__p, this);
      if ((v29 & 0x80u) == 0)
      {
        v26 = __p;
      }

      else
      {
        v26 = __p[0];
      }

      if ((v29 & 0x80u) == 0)
      {
        v27 = v29;
      }

      else
      {
        v27 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v26, v27);
      if (v29 < 0)
      {
        operator delete(__p[0]);
      }

      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v30);
    }
  }
}

void sub_1C30DA298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16)
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
    kaldi::KaldiAssertFailure_("UpdateWeights", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 0x247, "batch_index <= opts_.num_subbatches", a5);
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
        LODWORD(v23) = 1.0;
        kaldi::CuVectorBase<float>::AddVec(*(this + 90) + 32 * v11, *(this + 90) + v16, v24, v25, v26, v23, 1.0);
        ++v18;
        v8 = *this;
        v17 += 48;
        v16 += 32;
      }

      while (v18 < *(v14 + *(*this - 24)));
    }

    v27 = *(this + 77);
    v27[v11] = 0;
    if (v11 >= 1)
    {
      v28 = 0;
      v29 = v11;
      v30 = v27;
      do
      {
        v31 = *v30++;
        v28 += v31;
        v27[v11] = v28;
        --v29;
      }

      while (v29);
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
    v32 = -(v5 * v6);
    kaldi::CuMatrixBase<float>::AddMat(this + 160, this + 160, 111, a4, a5, v32 * *(*(this + 77) + 4 * v11), 1.0);
    kaldi::CuMatrixBase<float>::AddMat(this + 208, this + 208, 111, v33, v34, v32 * *(*(this + 77) + 4 * v11), 1.0);
    kaldi::CuMatrixBase<float>::AddMat(this + 256, this + 256, 111, v35, v36, v32 * *(*(this + 77) + 4 * v11), 1.0);
    *&v37 = v32;
    kaldi::CuVectorBase<float>::AddVec(this + 304, this + 304, v38, v39, v40, v37, 1.0);
  }

  v41 = *(this + 81);
  if (v7 != 0.0)
  {
    kaldi::cu::RegularizeL1<float>(this + 160, v41 + 48 * v11, (v7 * v5) * *(*(this + 77) + 4 * v11), v5, a3, a4, a5);
    kaldi::cu::RegularizeL1<float>(this + 208, *(this + 84) + 48 * v11, (v7 * v5) * *(*(this + 77) + 4 * v11), v5, v42, v43, v44);
    kaldi::cu::RegularizeL1<float>(this + 256, *(this + 87) + 48 * v11, (v7 * v5) * *(*(this + 77) + 4 * v11), v5, v45, v46, v47);
    v41 = *(this + 81);
  }

  kaldi::CuMatrixBase<float>::AddMat(this + 160, v41 + 48 * v11, 111, a4, a5, -(v5 * *(this + 152)), 1.0);
  kaldi::CuMatrixBase<float>::AddMat(this + 208, *(this + 84) + 48 * v11, 111, v48, v49, -(v5 * *(this + 152)), 1.0);
  kaldi::CuMatrixBase<float>::AddMat(this + 256, *(this + 87) + 48 * v11, 111, v50, v51, -(v5 * *(this + 152)), 1.0);
  *&v52 = -(v5 * *(this + 152));
  kaldi::CuVectorBase<float>::AddVec(this + 304, *(this + 90) + 32 * v11, v53, v54, v55, v52, 1.0);
  if (*(this + 153) > 0.0)
  {
    kaldi::CuMatrixBase<float>::ApplyMaxNorm(this + 160, 1);
    v56 = *(this + 153);
    kaldi::CuMatrixBase<float>::ApplyMaxNorm(this + 208, 1);
    v57 = *(this + 153);
    kaldi::CuMatrixBase<float>::ApplyMaxNorm(this + 256, 1);
    kaldi::CuVectorBase<float>::ApplyMaxNorm(this + 304, *(this + 153), v58, v59, v60, v61);
  }

  v62 = *(this + 77);
  if (v11 == *(this + *(*this - 24) + 80))
  {
    v63 = *(this + 78);
    if (v62 != v63)
    {

      bzero(v62, v63 - v62);
    }
  }

  else
  {
    *&v62[4 * v11] = 0;
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

    std::vector<float>::resize((this + 616), v2);
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
    kaldi::KaldiAssertFailure_("NormalizeGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 0x30C, "batch_index >= 0 && batch_index < ropts_.num_subbatches", a6);
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v50, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 810);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Input weights #rows = ", 22);
    v6 = MEMORY[0x1C692A960](v5, *(this + 45));
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "; expecting ", 12);
    v8 = MEMORY[0x1C692A960](v7, (3 * *(this + *(*this - 24) + 12)));
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "; output dim = ", 15);
    MEMORY[0x1C692A960](v9, *(this + *(*this - 24) + 12));
    goto LABEL_22;
  }

  if (*(this + 44) != *(v2 + 2))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v50, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 814);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Input weights #columns = ", 25);
    v11 = MEMORY[0x1C692A960](v10, *(this + 44));
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "; expecting ", 12);
    v13 = MEMORY[0x1C692A960](v12, *(this + *(*this - 24) + 8));
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, " (same as input dim)");
    goto LABEL_22;
  }

  if (*(this + 57) != 2 * v3)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v50, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 818);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Gate recurrent weights #rows = ", 31);
    v15 = MEMORY[0x1C692A960](v14, *(this + 57));
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "; expecting ", 12);
    v17 = MEMORY[0x1C692A960](v16, (2 * *(this + *(*this - 24) + 12)));
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "; output dim = ", 15);
    MEMORY[0x1C692A960](v18, *(this + *(*this - 24) + 12));
    goto LABEL_22;
  }

  if (*(this + 56) != v3)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v50, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 822);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Gate recurrent weights #columns = ", 34);
    v20 = MEMORY[0x1C692A960](v19, *(this + 56));
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "; expecting ", 12);
    v22 = MEMORY[0x1C692A960](v21, *(this + *(*this - 24) + 12));
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v22, " (same as output dim)");
    goto LABEL_22;
  }

  if (*(this + 69) != v3)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v50, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 826);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Activation recurrent weights #rows = ", 37);
    v24 = MEMORY[0x1C692A960](v23, *(this + 69));
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "; expecting ", 12);
    v26 = MEMORY[0x1C692A960](v25, *(this + *(*this - 24) + 12));
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "; output dim = ", 15);
    MEMORY[0x1C692A960](v27, *(this + *(*this - 24) + 12));
    goto LABEL_22;
  }

  if (*(this + 68) != v3)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v50, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 830);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Activation recurrent weights #columns = ", 40);
    v29 = MEMORY[0x1C692A960](v28, *(this + 68));
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "; expecting ", 12);
    v31 = MEMORY[0x1C692A960](v30, *(this + *(*this - 24) + 12));
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v31, " (same as output dim)");
    goto LABEL_22;
  }

  if (*(this + 80) != v1)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v50, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 834);
    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Bias dim = ", 11);
    v33 = MEMORY[0x1C692A960](v32, *(this + 80));
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "; expecting ", 12);
    v35 = MEMORY[0x1C692A960](v34, (3 * *(this + *(*this - 24) + 12)));
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "; output dim = ", 15);
    MEMORY[0x1C692A960](v36, *(this + *(*this - 24) + 12));
    goto LABEL_22;
  }

  if (*(this + 152) < 0.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v50, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 839);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "learn_rate_coeff_ must not be negative; found: ", 47);
    v37 = *(this + 152);
    std::ostream::operator<<();
    goto LABEL_22;
  }

  if (*(this + 153) < 0.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v50, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 842);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "max_norm_ must not be negative; found: ", 39);
    v38 = *(this + 153);
    std::ostream::operator<<();
    goto LABEL_22;
  }

  result = *(this + 38);
  if (result < 0.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v50, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 845);
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
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 0x358, "batch_index >= 0 && batch_index < ropts_.num_subbatches", a5);
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
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 0x35E, "batch_index >= 0 && batch_index < ropts_.num_subbatches", a5);
  }

  if ((a3 & 0x80000000) != 0 || (v7 = *(a1 + 8) + 48 * a4, *(v7 + 20) <= a3))
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 0x35F, "sequence_idx >= 0 && sequence_idx < history_state_[batch_index].NumRows()", a5);
  }

  v9 = a4;
  kaldi::CuVector<float>::Resize(a2, *(v7 + 16), 1u, a4, a5);
  v13 = *(a1 + 8) + 48 * v9;
  if (*(v13 + 20) <= a3)
  {
    kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x225, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v12);
  }

  v14 = *(v13 + 8) + 4 * (*(v13 + 24) * a3);
  v15 = *(v13 + 16);
  v16 = *(v13 + 32);
  v18[1] = v14;
  v18[0] = &unk_1F42BFF30;
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
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 0x372, "batch_index >= 0 && batch_index < ropts_.num_subbatches", v7);
  }

  v8 = (*(a1 + 8) + 48 * a3);
  if (*(a2 + 20) != v8[5])
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 0x373, "history.NumRows() == history_state_[batch_index].NumRows()", v7);
  }

  if (*(a2 + 16) != v8[4])
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 0x374, "history.NumCols() == history_state_[batch_index].NumCols()", v7);
  }

  return kaldi::CuMatrixBase<float>::CopyFromMat<float>(v8, a2, 111, v6, v7);
}

_DWORD *kaldi::nnet1::GatedRecurrentUnit::SetHistoryState(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  (*(*a1 + 88))(a1);
  if ((a4 & 0x80000000) != 0 || *(a1 + 80) <= a4)
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 0x37C, "batch_index >= 0 && batch_index < ropts_.num_subbatches", v10);
  }

  if (a3 < 0 || (v11 = *(a1 + 8) + 48 * a4, *(v11 + 20) <= a3))
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 0x37D, "sequence_idx >= 0 && sequence_idx < history_state_[batch_index].NumRows()", v10);
  }

  v12 = *(a2 + 16);
  if (v12 != *(v11 + 16))
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 0x37E, "history.Dim() == history_state_[batch_index].NumCols()", v10);
  }

  v13 = *(v11 + 8) + 4 * *(v11 + 24) * a3;
  v14 = *(v11 + 32);
  v16[1] = v13;
  v16[0] = &unk_1F42BFF30;
  v16[2] = v12;
  v16[3] = v14;
  return kaldi::CuVectorBase<float>::CopyFromVec(v16, a2, v8, v9, v10);
}

uint64_t kaldi::nnet1::GatedRecurrentUnit::ResetHistoryState(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, const char *a5)
{
  if ((a4 & 0x80000000) != 0 || *(a1 + 80) <= a4)
  {
    kaldi::KaldiAssertFailure_("ResetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 0x383, "batch_index >= 0 && batch_index < ropts_.num_subbatches", a5);
  }

  if (a2[1] != *(*(a1 + 8) + 48 * a4 + 20))
  {
    kaldi::KaldiAssertFailure_("ResetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 0x384, "sequence_idx.size() == history_state_[batch_index].NumRows()", a5);
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
          kaldi::KaldiAssertFailure_("Row", "../engine/common/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", 0x22A, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v9);
        }

        v12 = (*(v11 + 8) + 4 * *(v11 + 24) * v10);
        v13 = *(v11 + 16);
        v14 = *(v11 + 32);
        v22[1].__locale_ = v12;
        v22[0].__locale_ = &unk_1F42BFF30;
        v22[2].__locale_ = v13;
        v22[3].__locale_ = v14;
        kaldi::CuVectorBase<float>::SetZero(v22);
        if (kaldi::g_kaldi_verbose_level >= 3)
        {
          v15 = MEMORY[0x1C692A960](&v23, v10);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ", ", 2);
        }
      }

      ++v10;
    }

    while (a2[1] > v10);
  }

  if (kaldi::g_kaldi_verbose_level > 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v22, "ResetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-gru.cc", 912, 3);
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

  v23 = *MEMORY[0x1E69E54E8];
  *(&v23 + *(v23 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v24 = MEMORY[0x1E69E5548] + 16;
  if (v26 < 0)
  {
    operator delete(v25[7].__locale_);
  }

  v24 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v25);
  std::ostream::~ostream();
  return MEMORY[0x1C692AD30](&v27);
}

void sub_1C30DBA0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
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

  JUMPOUT(0x1C692AE10);
}

void kaldi::nnet1::GatedRecurrentUnit::GetUnitOutputFnc()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v1, "GetUnitOutputFnc", "../engine/common/libquasar/libkaldi/src/nnet/nnet-gru.h", 95);
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
  *(this + 111) = &unk_1F42C1850;
  v5 = *(v4 + 1);
  *(this + 452) = *(v4 + 8);
  *(this + 112) = v5;
  *(this + 114) = 0;
  *(this + 116) = 0;
  *(this + 115) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(this + 912, *(v4 + 3), *(v4 + 4), (*(v4 + 4) - *(v4 + 3)) >> 3);
  *(this + 111) = &unk_1F42C2E78;
  *(this + 117) = &unk_1F42CB198;
  v6 = *(v4 + 56);
  *(this + 959) = *(v4 + 71);
  *(this + 59) = v6;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(this, off_1F42C9148, a2);
  *this = &unk_1F42C8DC0;
  *(this + 111) = &unk_1F42C9028;
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

void sub_1C30DC484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
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
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(v23, off_1F42C9148);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(*(v31 - 96));
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x1C692AD30](a1 + 128);
  return a1;
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

uint64_t std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,float>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_1C30DCF40(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

kaldi::nnet1::LayerNorm *kaldi::nnet1::LayerNorm::LayerNorm(kaldi::nnet1::LayerNorm *this, const kaldi::nnet1::LayerNorm *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  *(this + 1) = *(a2 + 1);
  *(this + 8) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *this = &unk_1F42C9448;
  *(this + 12) = *(a2 + 12);
  *(this + 52) = *(a2 + 52);
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 7) = &unk_1F42BFF70;
  *(this + 8) = 0;
  v7 = this + 88;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 11) = &unk_1F42BFF70;
  *(this + 12) = 0;
  kaldi::CuVector<float>::operator=(this + 56, a2 + 56, a3, a4, a5);
  kaldi::CuVector<float>::operator=(v7, a2 + 88, v8, v9, v10);
  return this;
}

void sub_1C30DD02C(_Unwind_Exception *a1)
{
  kaldi::CuVector<float>::~CuVector(v3);
  kaldi::CuVector<float>::~CuVector(v2);
  kaldi::nnet1::Component::~Component(v1);
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
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, " ", 1);
  MEMORY[0x1C692A930](v7, *(this + 52));
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
  v29[0] = *MEMORY[0x1E69E54D8];
  v24 = *(MEMORY[0x1E69E54D8] + 72);
  *(v29 + *(v29[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v30 = v24;
  v31 = MEMORY[0x1E69E5548] + 16;
  if (v33 < 0)
  {
    operator delete(v32[7].__locale_);
  }

  v31 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v32);
  std::iostream::~basic_iostream();
  return MEMORY[0x1C692AD30](&v34);
}

void sub_1C30DD2DC(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  if (a7 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a8, MEMORY[0x1E69E54D8]);
  MEMORY[0x1C692AD30](va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LayerNorm::ReadData(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (kaldi::g_kaldi_verbose_level >= 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v33, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-layer-norm-component.cc", 65, 2);
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
          kaldi::KaldiErrorMessage::KaldiErrorMessage(v33, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-layer-norm-component.cc", 81);
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
      kaldi::ReadBasicType<float>(a2, a3, (a1 + 48));
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
    kaldi::ReadBasicType<BOOL>(a2, a3, (a1 + 52));
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
    v30 = 85;
    goto LABEL_79;
  }

  v25 = *(a1 + 8);
  if (v25 != *(a1 + 12))
  {
    v29 = "input_dim_ == output_dim_";
    v30 = 86;
    goto LABEL_79;
  }

  if (v24 != v25)
  {
    v29 = "beta_.Dim() == output_dim_";
    v30 = 87;
LABEL_79:
    kaldi::KaldiAssertFailure_("ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-layer-norm-component.cc", v30, v29, v7);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p);
  }
}

void sub_1C30DD708(_Unwind_Exception *a1)
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

  JUMPOUT(0x1C692AE10);
}

{
  *this = &unk_1F42C9448;
  v2 = (this + 56);
  kaldi::CuVector<float>::~CuVector(this + 11);
  kaldi::CuVector<float>::~CuVector(v2);

  kaldi::nnet1::Component::~Component(this);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(uint64_t a1, int a2)
{
  v2 = *(a1 + 536);
  if (a2 >= ((*(a1 + 544) - v2) >> 3))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "InputWeightsGradient", "../engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.h", 257);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "input_weights_gradient_.size() > ib");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "InputWeightsGradient", "../engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.h", 258);
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "InputWeightsGradient", "../engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.h", 262);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "input_weights_gradient_.size() > ib");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "InputWeightsGradient", "../engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.h", 263);
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "RecurrentWeightsGradient", "../engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.h", 268);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "recurrent_weights_gradient_.size() > ib");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "RecurrentWeightsGradient", "../engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.h", 269);
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "RecurrentWeightsGradient", "../engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.h", 273);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "recurrent_weights_gradient_.size() > ib");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "RecurrentWeightsGradient", "../engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.h", 274);
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "BiasGradient", "../engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.h", 279);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "bias_gradient_.size() > ib");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "BiasGradient", "../engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.h", 280);
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "BiasGradient", "../engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.h", 284);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "bias_gradient_.size() > ib");
    goto LABEL_6;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "BiasGradient", "../engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.h", 285);
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "PeepholeWeightsGradient", "../engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.h", 290);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "has_peepholes_");
    goto LABEL_8;
  }

  v2 = *(a1 + 584);
  if (a2 >= ((*(a1 + 592) - v2) >> 3))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "PeepholeWeightsGradient", "../engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.h", 291);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "peephole_weights_gradient_.size() > ib");
    goto LABEL_8;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "PeepholeWeightsGradient", "../engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.h", 292);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "peephole_weights_gradient_[ib]");
LABEL_8:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

{
  if ((*(a1 + 208) & 1) == 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "PeepholeWeightsGradient", "../engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.h", 296);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "has_peepholes_");
    goto LABEL_8;
  }

  v2 = *(a1 + 584);
  if (a2 >= ((*(a1 + 592) - v2) >> 3))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "PeepholeWeightsGradient", "../engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.h", 297);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "peephole_weights_gradient_.size() > ib");
    goto LABEL_8;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "PeepholeWeightsGradient", "../engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.h", 298);
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "ProjectionWeightsGradient", "../engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.h", 303);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "has_projection_layer_");
    goto LABEL_8;
  }

  v2 = *(a1 + 632);
  if (a2 >= ((*(a1 + 640) - v2) >> 3))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "ProjectionWeightsGradient", "../engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.h", 304);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "projection_weights_gradient_.size() > ib");
    goto LABEL_8;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "ProjectionWeightsGradient", "../engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.h", 305);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "projection_weights_gradient_[ib]");
LABEL_8:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

{
  if ((*(a1 + 224) & 1) == 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "ProjectionWeightsGradient", "../engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.h", 309);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "has_projection_layer_");
    goto LABEL_8;
  }

  v2 = *(a1 + 632);
  if (a2 >= ((*(a1 + 640) - v2) >> 3))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "ProjectionWeightsGradient", "../engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.h", 310);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "projection_weights_gradient_.size() > ib");
    goto LABEL_8;
  }

  result = *(v2 + 8 * a2);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "ProjectionWeightsGradient", "../engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.h", 311);
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
  *(a1 + 848) = &unk_1F42C1850;
  v5 = *(v4 + 8);
  *(a1 + 864) = *(v4 + 16);
  *(a1 + 856) = v5;
  *(a1 + 872) = 0;
  *(a1 + 888) = 0;
  *(a1 + 880) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(a1 + 872, *(v4 + 24), *(v4 + 32), (*(v4 + 32) - *(v4 + 24)) >> 3);
  *(a1 + 848) = &unk_1F42C2E78;
  *(a1 + 896) = &unk_1F42CB198;
  v6 = *(v4 + 56);
  *(a1 + 919) = *(v4 + 71);
  *(a1 + 904) = v6;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(a1, off_1F42C9938, a2);
  *a1 = &unk_1F42C9528;
  *(a1 + 848) = &unk_1F42C9818;
  *(a1 + 160) = &unk_1F42C96B8;
  *(a1 + 168) = &unk_1F42C96E0;
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v22, "LstmComponent", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 247);
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
    v21 = 260;
    goto LABEL_41;
  }

  if (v13 != *(a1 + 616) - *(a1 + 608))
  {
    v20 = "input_weights_gradient_.size() == bias_gradient_.size()";
    v21 = 261;
    goto LABEL_41;
  }

  if (*(a1 + 208) == 1 && v13 != *(a1 + 592) - *(a1 + 584))
  {
    v20 = "input_weights_gradient_.size() == peephole_weights_gradient_.size()";
    v21 = 263;
    goto LABEL_41;
  }

  if (*(a1 + 224) == 1 && v13 != *(a1 + 640) - *(a1 + 632))
  {
    v20 = "input_weights_gradient_.size() == projection_weights_gradient_.size()";
    v21 = 266;
LABEL_41:
    kaldi::KaldiAssertFailure_("LstmComponent", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.cc", v21, v20, v9);
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

void sub_1C30DEAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, void **a12, void **a13, void **a14, void **a15, void **a16, void **a17, void **a18, void **a19, void **a20, void **a21, void **a22, uint64_t a23, uint64_t a24, kaldi::nnet1::UpdatableComponent *a25, void **a26, uint64_t *a27, uint64_t *a28, uint64_t *a29, void **a30)
{
  MEMORY[0x1C692AE10](v30, 0x10D0C4068EB0291);
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v32);
  a30 = a10;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a11;
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a12;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a13;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a14;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  v34 = *(v31 + 63);
  if (v34)
  {
    *(v31 + 64) = v34;
    operator delete(v34);
  }

  v35 = *(v31 + 60);
  if (v35)
  {
    *(v31 + 61) = v35;
    operator delete(v35);
  }

  a30 = a15;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a16;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a17;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a18;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a19;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a26;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a20;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a21;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a22;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100](a27, 0);
  v36 = *(v31 + 27);
  *(v31 + 27) = 0;
  if (v36)
  {
    (*(*v36 + 24))(v36);
  }

  v37 = *(v31 + 25);
  *(v31 + 25) = 0;
  if (v37)
  {
    (*(*v37 + 16))(v37);
  }

  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100](a28, 0);
  std::unique_ptr<kaldi::QuantizedMatrix<signed char>>::reset[abi:ne200100](a29, 0);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(a23);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(a24);
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(v31, off_1F42C9938);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a25);
  _Unwind_Resume(a1);
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
  *(a1 + 848) = &unk_1F42C1850;
  v5 = *(v4 + 8);
  *(a1 + 864) = *(v4 + 16);
  *(a1 + 856) = v5;
  *(a1 + 872) = 0;
  *(a1 + 888) = 0;
  *(a1 + 880) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(a1 + 872, *(v4 + 24), *(v4 + 32), (*(v4 + 32) - *(v4 + 24)) >> 3);
  *(a1 + 848) = &unk_1F42C2E78;
  *(a1 + 896) = &unk_1F42CB198;
  v6 = *(v4 + 56);
  *(a1 + 919) = *(v4 + 71);
  *(a1 + 904) = v6;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(a1, off_1F42C9D78, a2);
  *a1 = &unk_1F42C9968;
  *(a1 + 848) = &unk_1F42C9C58;
  *(a1 + 160) = &unk_1F42C9AF8;
  *(a1 + 168) = &unk_1F42C9B20;
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v22, "LstmComponent", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 247);
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
    v21 = 260;
    goto LABEL_41;
  }

  if (v13 != *(a1 + 616) - *(a1 + 608))
  {
    v20 = "input_weights_gradient_.size() == bias_gradient_.size()";
    v21 = 261;
    goto LABEL_41;
  }

  if (*(a1 + 208) == 1 && v13 != *(a1 + 592) - *(a1 + 584))
  {
    v20 = "input_weights_gradient_.size() == peephole_weights_gradient_.size()";
    v21 = 263;
    goto LABEL_41;
  }

  if (*(a1 + 224) == 1 && v13 != *(a1 + 640) - *(a1 + 632))
  {
    v20 = "input_weights_gradient_.size() == projection_weights_gradient_.size()";
    v21 = 266;
LABEL_41:
    kaldi::KaldiAssertFailure_("LstmComponent", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.cc", v21, v20, v9);
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

void sub_1C30DF9E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, void **a12, void **a13, void **a14, void **a15, void **a16, void **a17, void **a18, void **a19, void **a20, void **a21, void **a22, uint64_t a23, uint64_t a24, kaldi::nnet1::UpdatableComponent *a25, void **a26, uint64_t *a27, uint64_t *a28, uint64_t *a29, void **a30)
{
  MEMORY[0x1C692AE10](v30, 0x10D0C4068EB0291);
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(v32);
  a30 = a10;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a11;
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a12;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a13;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a14;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::__destroy_vector::operator()[abi:ne200100](&a30);
  v34 = *(v31 + 63);
  if (v34)
  {
    *(v31 + 64) = v34;
    operator delete(v34);
  }

  v35 = *(v31 + 60);
  if (v35)
  {
    *(v31 + 61) = v35;
    operator delete(v35);
  }

  a30 = a15;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a16;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a17;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a18;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a19;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a26;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a20;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a21;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  a30 = a22;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100](a27, 0);
  v36 = *(v31 + 27);
  *(v31 + 27) = 0;
  if (v36)
  {
    (*(*v36 + 24))(v36);
  }

  v37 = *(v31 + 25);
  *(v31 + 25) = 0;
  if (v37)
  {
    (*(*v37 + 16))(v37);
  }

  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100](a28, 0);
  std::unique_ptr<kaldi::QuantizedMatrix<short>>::reset[abi:ne200100](a29, 0);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(a23);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(a24);
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(v31, off_1F42C9D78);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a25);
  _Unwind_Resume(a1);
}

double kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::LstmComponent(uint64_t a1, int a2, int a3)
{
  *(a1 + 856) = a2;
  *(a1 + 860) = a3;
  *(a1 + 864) = 0;
  *(a1 + 872) = 0;
  *(a1 + 888) = 0;
  *(a1 + 880) = 0;
  *(a1 + 848) = &unk_1F42C2E78;
  *(a1 + 896) = &unk_1F42CB198;
  *(a1 + 904) = xmmword_1C378B0E0;
  *(a1 + 920) = 0x3BF800000;
  *(a1 + 928) = 1;
  *(a1 + 932) = 0;
  *(a1 + 934) = 0;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(a1, off_1F42CA1B8);
  *v4 = &unk_1F42C9DA8;
  *(v4 + 848) = &unk_1F42CA098;
  *(v4 + 160) = &unk_1F42C9F38;
  *(v4 + 168) = &unk_1F42C9F60;
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
  *(a1 + 848) = &unk_1F42C1850;
  v5 = *(v4 + 8);
  *(a1 + 864) = *(v4 + 16);
  *(a1 + 856) = v5;
  *(a1 + 872) = 0;
  *(a1 + 888) = 0;
  *(a1 + 880) = 0;
  std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(a1 + 872, *(v4 + 24), *(v4 + 32), (*(v4 + 32) - *(v4 + 24)) >> 3);
  *(a1 + 848) = &unk_1F42C2E78;
  *(a1 + 896) = &unk_1F42CB198;
  v6 = *(v4 + 56);
  *(a1 + 919) = *(v4 + 71);
  *(a1 + 904) = v6;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(a1, off_1F42CA1B8, a2);
  *a1 = &unk_1F42C9DA8;
  *(a1 + 848) = &unk_1F42CA098;
  *(a1 + 160) = &unk_1F42C9F38;
  *(a1 + 168) = &unk_1F42C9F60;
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "LstmComponent", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 150);
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
    v24 = 161;
    goto LABEL_41;
  }

  if (v16 != *(a1 + 616) - *(a1 + 608))
  {
    v23 = "input_weights_gradient_.size() == bias_gradient_.size()";
    v24 = 162;
    goto LABEL_41;
  }

  if (*(a1 + 208) == 1 && v16 != *(a1 + 592) - *(a1 + 584))
  {
    v23 = "input_weights_gradient_.size() == peephole_weights_gradient_.size()";
    v24 = 164;
    goto LABEL_41;
  }

  if (*(a1 + 224) == 1 && v16 != *(a1 + 640) - *(a1 + 632))
  {
    v23 = "input_weights_gradient_.size() == projection_weights_gradient_.size()";
    v24 = 167;
LABEL_41:
    kaldi::KaldiAssertFailure_("LstmComponent", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.cc", v24, v23, v9);
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

void sub_1C30E0BAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, kaldi::nnet1::UpdatableComponent *a24, uint64_t *a25, uint64_t a26)
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

  kaldi::CuMatrixBase<float>::~CuMatrixBase(a22);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(a23);
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(v26, off_1F42CA1B8);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a24);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::~LstmComponent(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[3];
  *(a1 + 160) = &unk_1F42C9F38;
  *(a1 + 168) = &unk_1F42C9F60;
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

  kaldi::CuMatrixBase<float>::~CuMatrixBase(a1 + 168);
  kaldi::CuMatrixBase<float>::~CuMatrixBase(a1 + 160);
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

  JUMPOUT(0x1C692AE10);
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
  kaldi::nnet1::Component::TypeToMarker(2, &v66);
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
          kaldi::ReadBasicType<float>(a2, 0, v25);
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
          kaldi::ReadBasicType<int>(a2, 0, v16);
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
            kaldi::KaldiErrorMessage::KaldiErrorMessage(v63, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 350);
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

void sub_1C30E2224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::AllocateParams(uint64_t a1, uint64_t a2)
{
  *(a1 + 176) = a2;
  if (*(a1 + *(*a1 - 24) + 12) > a2)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v8, "AllocateParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1243);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "# LSTM cells (", 14);
    v5 = MEMORY[0x1C692A960](v4, a2);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ") should not be less than output dim (", 38);
    v7 = MEMORY[0x1C692A960](v6, *(a1 + *(*a1 - 24) + 12));
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, ").");
  }

  else
  {
    if (!*(a1 + 184))
    {
      operator new();
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(v8, "AllocateParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1247);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v8, "input_weights_ thought to be un-initialized here");
  }

  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v8);
}

uint64_t kaldi::nnet1::RandMatrix<kaldi::CuMatrixBase<float>>(kaldi::UniformRandomNumber *a1, kaldi::GaussRandomNumber *a2, int a3, uint64_t a4, float a5)
{
  kaldi::Matrix<float>::Matrix(v20, *(a4 + 20), *(a4 + 16), 0, 0);
  v10 = 0;
LABEL_2:
  if (v10 < kaldi::MatrixBase<float>::NumRows(v20))
  {
    for (i = 0; ; ++i)
    {
      if (i >= kaldi::MatrixBase<float>::NumCols(v20))
      {
        ++v10;
        goto LABEL_2;
      }

      if (a3)
      {
        if (a3 == 2)
        {
          kaldi::GaussRandomNumber::Rand(a2, 0, v14, v15, v16);
          v17 = v18 * a5;
        }

        else
        {
          if (a3 != 1)
          {
            continue;
          }

          v17 = (kaldi::UniformRandomNumber::RandUniform(a1, 0, v14, v15, v16) + -0.5) * (a5 + a5);
        }
      }

      else if (v10 == i)
      {
        v17 = 1.0;
      }

      else
      {
        v17 = 0.0;
      }

      *(v20[0] + 4 * v10 * v21 + 4 * i) = v17;
    }
  }

  kaldi::CuMatrixBase<float>::CopyFromMat(a4, v20, 111, v11, v12);
  return kaldi::Matrix<float>::~Matrix(v20);
}

void sub_1C30E29D4(_Unwind_Exception *a1, uint64_t a2, ...)
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "InputWeights", "../engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.h", 214);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "input_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

{
  result = *(a1 + 184);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "InputWeights", "../engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.h", 210);
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "RecurrentWeights", "../engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.h", 223);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "recurrent_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

{
  result = *(a1 + 192);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "RecurrentWeights", "../engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.h", 219);
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.h", 232);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "bias_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

{
  result = *(a1 + 200);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "Bias", "../engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.h", 228);
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "PeepholeWeights", "../engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.h", 241);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "peephole_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

{
  result = *(a1 + 216);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "PeepholeWeights", "../engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.h", 237);
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
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "ProjectionWeights", "../engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.h", 250);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "projection_weights_");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

{
  result = *(a1 + 232);
  if (!result)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "ProjectionWeights", "../engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.h", 246);
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
      kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 429);
      v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "# LSTM cells (", 14);
      v46 = MEMORY[0x1C692A960](v45, *(a1 + 44));
      v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, ") should not be less than output dim (", 38);
      v48 = MEMORY[0x1C692A960](v47, *(a1 + *(*a1 - 24) + 12));
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

      kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 435);
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
            kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 423);
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
              kaldi::ReadBasicType<float>(a2, a3, v15);
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

    kaldi::ReadBasicType<int>(a2, a3, (a1 + 22));
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
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 176));
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>", v8, v9);
  v10 = *(a1 + 464);
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<ProjectionLearnRateCoef>", v11, v12);
  v13 = *(a1 + 468);
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<MaxNorm>", v14, v15);
  v16 = *(a1 + 472);
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>", v17, v18);
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 156), &__p);
  kaldi::WriteToken(a2, a3, &__p, v19, v20);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>", v21, v22);
  v23 = *(a1 + 152);
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<MaxCell>", v24, v25);
  v26 = *(a1 + 476);
  result = kaldi::WriteBasicType<float>(a2, a3);
  if ((*(a1 + 208) & 1) == 0)
  {
    result = kaldi::WriteToken(a2, a3, "<NoPeep>", v28, v29);
  }

  if (*(a1 + 209) == 1)
  {
    return kaldi::WriteToken(a2, a3, "<OutputCellValues>", v28, v29);
  }

  return result;
}

void sub_1C30E394C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v10);
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
    kaldi::KaldiAssertFailure_("SetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTS/engine/common/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 0x221, "wei_src.Dim() == NumParams()", v5);
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
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v11);
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
  kaldi::CuMatrix<float>::CuMatrix(v34, v4, *(v5 + 16), 1u, 0, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v34);
  v6 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
  kaldi::CuMatrixBase<float>::AddMat(v6, v34, 111, v7, v8, a2, 1.0);
  v9 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 20);
  v10 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
  kaldi::CuMatrix<float>::Resize(v34, v9, *(v10 + 16), 1u, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v34);
  v11 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
  kaldi::CuMatrixBase<float>::AddMat(v11, v34, 111, v12, v13, a2, 1.0);
  if (*(a1 + 208) == 1)
  {
    v14 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 20);
    v15 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
    kaldi::CuMatrix<float>::Resize(v34, v14, *(v15 + 16), 1u, 0);
    kaldi::CuMatrixBase<float>::SetRandn(v34);
    v16 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
    kaldi::CuMatrixBase<float>::AddMat(v16, v34, 111, v17, v18, a2, 1.0);
  }

  v19 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1) + 16);
  memset(&v33[1], 0, 24);
  v33[0] = &unk_1F42BFF70;
  kaldi::CuVector<float>::Resize(v33, v19, 1u, v20, v21);
  kaldi::CuVectorBase<float>::SetRandn(v33);
  v22 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
  *&v23 = a2;
  kaldi::CuVectorBase<float>::AddVec(v22, v33, v24, v25, v26, v23, 1.0);
  if (*(a1 + 224) == 1)
  {
    v27 = *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 20);
    v28 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
    kaldi::CuMatrix<float>::Resize(v34, v27, *(v28 + 16), 1u, 0);
    kaldi::CuMatrixBase<float>::SetRandn(v34);
    v29 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
    kaldi::CuMatrixBase<float>::AddMat(v29, v34, 111, v30, v31, a2, 1.0);
  }

  kaldi::CuVector<float>::~CuVector(v33);
  return kaldi::CuMatrix<float>::~CuMatrix(v34);
}

void sub_1C30E4554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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
    kaldi::KaldiAssertFailure_("SubVector", "../engine/common/libquasar/libkaldi/src/matrix/kaldi-vector.h", 0x264, "static_cast<UnsignedMatrixIndexT>(origin) + static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v17);
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
  v50 = *MEMORY[0x1E69E54E8];
  *(&v50 + *(v50 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v51 = MEMORY[0x1E69E5548] + 16;
  if (v53 < 0)
  {
    operator delete(v52[7].__locale_);
  }

  v51 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v52);
  std::ostream::~ostream();
  return MEMORY[0x1C692AD30](&v54);
}

void sub_1C30E5188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a41);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InfoGradient(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 528))
  {
    memset(&v105, 0, sizeof(v105));
    v104 = 0;
    if (*(a1 + 80) >= 1)
    {
      do
      {
        std::string::basic_string[abi:ne200100]<0>(&v92, "\n For batch ");
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
        std::string::basic_string[abi:ne200100]<0>(v88, ": ");
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
        std::string::basic_string[abi:ne200100]<0>(v86, "\n  Number of cells : ");
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
        std::string::basic_string[abi:ne200100]<0>(v82, "\n  Input weights gradient: ");
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
        std::string::basic_string[abi:ne200100]<0>(v78, "\n  Recurrent weights gradient: ");
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
        std::string::basic_string[abi:ne200100]<0>(v74, "\n  Bias gradient: ");
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
          std::string::basic_string[abi:ne200100]<0>(&v101, "\n  Peephole weights gradient: ");
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
          std::string::basic_string[abi:ne200100]<0>(&v101, "\n  Projection weights gradient: ");
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

    v66 = std::string::basic_string[abi:ne200100]<0>(&v102, "\n");
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
    *(a2 + 16) = *(&v69->__r_.__value_.__l + 2);
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

    std::string::basic_string[abi:ne200100]<0>(a2, "\n  Gradients are uninitialized");
  }
}